import hashlib
import os
from pathlib import Path
import subprocess
import sys
import tempfile
import tomllib
import unittest
import zipfile

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "scripts"))
from build_release import build


class ReleaseTests(unittest.TestCase):
    def test_hierarchy_compiles_from_release(self):
        with tempfile.TemporaryDirectory(prefix="vietphys-hierarchy-test-") as folder:
            root = Path(folder)
            manifest = tomllib.loads((ROOT / "typst.toml").read_text(encoding="utf-8"))["package"]
            package = root / "packages/local" / manifest["name"] / manifest["version"]
            with zipfile.ZipFile(build(root)) as archive:
                archive.extractall(package)
            for example in ("hierarchy.typ", "modern.typ", "widgets.typ", "academic.typ", "manual-hierarchy.typ", "workbook.typ"):
                with self.subTest(example=example):
                    source = (ROOT / "examples" / example).read_text(encoding="utf-8")
                    source = source.replace('"../vietphys.typ"', f'"@local/vietphys:{manifest["version"]}"')
                    document = root / "main.typ"
                    document.write_text(source, encoding="utf-8")
                    result = subprocess.run(
                        [os.getenv("TYPST_BINARY", "typst"), "compile", str(document), str(root / "main.pdf"),
                         "--root", str(root), "--package-path", str(root / "packages")],
                        capture_output=True, text=True, encoding="utf-8", timeout=30,
                    )
                    self.assertEqual(result.returncode, 0, result.stderr)

    def test_archive_is_reproducible_and_contains_only_runtime(self):
        with tempfile.TemporaryDirectory(prefix="vietphys-release-test-") as folder:
            root = Path(folder)
            first, second = build(root / "a"), build(root / "b")
            self.assertEqual(first.read_bytes(), second.read_bytes())
            self.assertTrue(first.with_suffix(".zip.sha256").read_text().startswith(hashlib.sha256(first.read_bytes()).hexdigest()))
            with zipfile.ZipFile(first) as archive:
                names = archive.namelist()
            self.assertIn("layout/kunai.svg", names)
            self.assertIn("layout/workbook.typ", names)
            self.assertIn("layout/design-assets/atom.svg", names)
            root_files = {"typst.toml", "vietphys.typ", "README.md", "CHANGELOG.md", "LICENSE"}
            self.assertTrue(all(name in root_files or name.startswith(("components/", "layout/", "themes/"))
                                for name in names))
            self.assertEqual("LICENSE" in names, (ROOT / "LICENSE").is_file())

    def test_all_question_types_compile_from_release(self):
        with tempfile.TemporaryDirectory(prefix="vietphys-release-test-") as folder:
            root = Path(folder)
            manifest = tomllib.loads((ROOT / "typst.toml").read_text(encoding="utf-8"))["package"]
            package = root / "packages/local" / manifest["name"] / manifest["version"]
            with zipfile.ZipFile(build(root)) as archive:
                archive.extractall(package)
            document = root / "main.typ"
            document.write_text(f'''#import "@local/vietphys:{manifest['version']}": *
#show: doc => vp-page-setup(doc)
#vp-set-theme(preset: "ocean")
#vp-set-question-style(num-style: "I", lines: 0)
#set page(footer: vp-footer-kage())
#vp-show-ans.update(true)
#vp-lesson(num: "1", title: "Smoke test")
#vp-knowledge-box(title: "Note", content: [Keep this content.])
#vp-question([MCQ], options: ([A], [B], [C], [D]), ans: "B", sol: [Solution])
#vp-question([TF], type: "tf", statements: ([a], [b], [c], [d]), ans-tf: ("Đ", "S", "Đ", "S"))
#vp-question([Short], type: "short", ans: "42")
#vp-question([Essay], type: "essay", ans: "done", lines: 2)
#vp-question([Subquestions], type: "essay", listEs: ([First], [Second]))
#vp-qty("3.4e7", "N/m^2")
$#vp-qty("1.3e-10", "s") + 1 #vp-unit("m.s^-1")$
#context {{
  assert(vp-unit("kg*m/s^2") == vp-unit("kg.m/s^2"))
  assert(vp-unit("m.s^-1") == vp-unit("m.s^(-1)"))
  assert(vp-theme-color.get() == vp-theme-presets.ocean)
  assert(vp-sol-store.get().last().num == 5)
  assert(vp-sol-store.get().last().display-num == "V")
}}
#vp-print-keys()
#vp-print-solutions()
#pagebreak()
#show: doc => vp-page-setup(
  header: context vp-header-theme-04(date: "2026-2027"),
  footer: context vp-footer-shuriken(),
  doc,
)
#vp-lesson(tab-text: "Exam", num: "1", title: "Title", subtitle: "180 minutes")
''', encoding="utf-8")
            output = root / "document.pdf"
            result = subprocess.run([os.getenv("TYPST_BINARY", "typst"), "compile", str(document), str(output),
                                     "--root", str(root), "--package-path", str(root / "packages")],
                                    capture_output=True, text=True, encoding="utf-8", timeout=30)
            self.assertEqual(result.returncode, 0, result.stderr)
            self.assertTrue(output.read_bytes().startswith(b"%PDF"))


if __name__ == "__main__":
    unittest.main()

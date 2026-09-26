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
    def test_archive_is_reproducible_and_contains_only_runtime(self):
        with tempfile.TemporaryDirectory(prefix="vietphys-release-test-") as folder:
            root = Path(folder)
            first, second = build(root / "a"), build(root / "b")
            self.assertEqual(first.read_bytes(), second.read_bytes())
            self.assertTrue(first.with_suffix(".zip.sha256").read_text().startswith(hashlib.sha256(first.read_bytes()).hexdigest()))
            with zipfile.ZipFile(first) as archive:
                names = archive.namelist()
            self.assertIn("layout/kunai.svg", names)
            self.assertFalse(any(name.startswith(("examples/", "legacy/", "img/", "backend/")) for name in names))

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
#set page(footer: vp-footer-kage())
#vp-show-ans.update(true)
#vp-lesson(num: "1", title: "Smoke test")
#vp-knowledge-box(title: "Note", content: [Keep this content.])
#vp-question([MCQ], options: ([A], [B], [C], [D]), ans: "B", sol: [Solution])
#vp-question([TF], type: "tf", statements: ([a], [b], [c], [d]), ans-tf: ("Đ", "S", "Đ", "S"))
#vp-question([Short], type: "short", ans: "42")
#vp-question([Essay], type: "essay", ans: "done", lines: 2)
#vp-print-keys()
#vp-print-solutions()
''', encoding="utf-8")
            output = root / "document.pdf"
            result = subprocess.run([os.getenv("TYPST_BINARY", "typst"), "compile", str(document), str(output),
                                     "--root", str(root), "--package-path", str(root / "packages")],
                                    capture_output=True, text=True, encoding="utf-8", timeout=30)
            self.assertEqual(result.returncode, 0, result.stderr)
            self.assertTrue(output.read_bytes().startswith(b"%PDF"))


if __name__ == "__main__":
    unittest.main()

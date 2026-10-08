"""Exercise semantic nesting, local numbering, styles and structural references."""
import os
from pathlib import Path
import subprocess
import tempfile
import unittest

ROOT = Path(__file__).resolve().parent.parent


class HierarchyTests(unittest.TestCase):
    def compile_case(self, source):
        with tempfile.TemporaryDirectory(prefix="vietphys-tree-", dir=ROOT) as folder:
            path = Path(folder) / "main.typ"
            path.write_text('#import "../vietphys.typ": *\n' + source, encoding="utf-8")
            result = subprocess.run(
                [os.getenv("TYPST_BINARY", "typst"), "compile", str(path),
                 str(path.with_suffix(".pdf")), "--root", str(ROOT)],
                capture_output=True, text=True, encoding="utf-8", timeout=30)
            self.assertEqual(result.returncode, 0, result.stderr)

    def test_book_all_styles_preserve_structure_and_restart_sections(self):
        self.compile_case('''
#show: vp-page-setup.with(heading-theme: vp-heading-theme-01)
#outline(depth: 5)
#vp-chapter(title: "First", style: "default", label: <chapter-one>)
#vp-lesson(title: "First lesson", style: "less_ribbon", label: <lesson-one>)
= First <one>
== Child <child>
=== Grandchild <grandchild>
#heading(depth: 1, numbering: none)[Unnumbered]
= Second <two>
Text referring to @chapter-one, @lesson-one and @child.
#vp-lesson(title: "Second lesson", style: "less_star", label: <lesson-two>)
= Restart <restart>
#vp-chapter(title: "Second", style: "chap_hexagon", label: <chapter-two>)
#vp-lesson(title: "Default", style: "less_default", label: <lesson-three>)
= Restart again <restart-again>
#vp-chapter(title: "Third", style: "chap_modern", label: <chapter-three>)
#vp-lesson(num: 12, title: "Modern", label: <lesson-twelve>)
= First <twelve-first>
#vp-lesson(title: "Next", new-page: false, label: <lesson-thirteen>)
= First <thirteen-first>
#context {
  let h = query(heading)
  let at = tag => query(tag).first()
  let value = tag => {
    let el = at(tag)
    numbering(el.numbering, ..counter(heading).at(el.location()))
  }
  assert(h.filter(el => el.outlined).len() == 17)
  assert(at(<chapter-one>).level == 1)
  assert(at(<lesson-one>).level == 2)
  assert(at(<one>).level == 3)
  assert(at(<child>).level == 4)
  assert(at(<grandchild>).level == 5)
  assert(value(<one>) == "1.")
  assert(value(<child>) == "1.1")
  assert(value(<grandchild>) == "1.1.1")
  assert(value(<two>) == "2.")
  assert(value(<restart>) == "1.")
  assert(value(<restart-again>) == "1.")
  assert(value(<chapter-two>) == "2")
  assert(value(<chapter-three>) == "3")
  assert(value(<lesson-two>) == "2")
  assert(value(<lesson-three>) == "1")
  assert(value(<lesson-twelve>) == "12")
  assert(value(<lesson-thirteen>) == "13")
}
''')

    def test_single_lesson_and_standalone_numbering_in_every_theme(self):
        for theme in ("vp-heading-theme-modern", "vp-heading-theme-01",
                      "vp-heading-theme-native", "vp-heading-theme-academic",
                      'vp-heading-theme-academic.with(variant: "thesis")'):
            for single in (True, False):
                with self.subTest(theme=theme, single=single):
                    configured = theme + '.with(numbering: "I.1.1")'
                    self.compile_case(f'''
#show: vp-page-setup.with(heading-theme: {configured})
#outline(depth: 4)
{'#vp-lesson(title: "Single lesson", label: <lesson>)' if single else ''}
= First <first>
Text.
== Child <child>
Text.
=== Grandchild <grandchild>
Text.
#heading(depth: 1, numbering: none)[Unnumbered]
= Second <second>
See @first and @child.
#context {{
  let at = tag => query(tag).first()
  let value = tag => {{
    let el = at(tag)
    numbering(el.numbering, ..counter(heading).at(el.location()))
  }}
  assert(at(<first>).level == {2 if single else 1})
  assert(at(<child>).level == {3 if single else 2})
  assert(at(<grandchild>).level == {4 if single else 3})
  assert(value(<first>) == "I.")
  assert(value(<child>) == "I.1")
  assert(value(<grandchild>) == "I.1.1")
  assert(value(<second>) == "II.")
}}
''')

"""Check input validation, scoped styles, labels, custom types and scoped answer keys."""
import os
from pathlib import Path
import subprocess
import tempfile
import unittest

ROOT = Path(__file__).resolve().parent.parent


def compile_source(source):
    with tempfile.TemporaryDirectory(prefix="vietphys-robust-", dir=ROOT) as folder:
        path = Path(folder) / "main.typ"
        path.write_text('#import "../vietphys.typ": *\n' + source, encoding="utf-8")
        return subprocess.run(
            [os.getenv("TYPST_BINARY", "typst"), "compile", str(path),
             str(path.with_suffix(".pdf")), "--root", str(ROOT)],
            capture_output=True, text=True, encoding="utf-8", timeout=45,
        )


class RobustnessTests(unittest.TestCase):
    def compile_ok(self, source):
        result = compile_source(source)
        self.assertEqual(result.returncode, 0, result.stderr)

    def compile_error(self, source, message):
        result = compile_source(source)
        self.assertNotEqual(result.returncode, 0, "expected a compile error")
        self.assertIn(message, result.stderr)

    def test_more_than_four_options_and_statements(self):
        self.compile_ok('''
#vp-show-ans.update(true)
#vp-question([Q], options: ([1], [2], [3], [4], [5], [6]), ans: "e")
#vp-question([Q], options: ([1], [2], [3]), ans: 3)
#vp-question([Q], type: "tf", statements: range(6).map(i => [S#i]),
  ans-tf: (true, false, "Đ", "S", "d", "s"))
#vp-question([Q], type: "tf", tf-style: "list", statements: range(5).map(i => [S#i]),
  ans-tf: (true, false, true, false, true))
#vp-print-keys()
#context {
  let store = vp-sol-store.final()
  assert.eq(store.at(0).ans, "E")
  assert.eq(store.at(1).ans, "C")
  assert.eq(store.at(2).ans-tf, ("Đ", "S", "Đ", "S", "Đ", "S"))
}
''')

    def test_invalid_input_reports_clear_errors(self):
        cases = (
            ('#vp-question([Q], type: "mcqq", options: ([1], [2]))', "chưa được hỗ trợ"),
            ('#vp-question([Q], options: ([1], [2], [3], [4]), ans: "E")', "không khớp phương án"),
            ('#vp-question([Q], type: "tf", statements: ([a],), ans-tf: ("X",))', "ans-tf"),
            ('#vp-set-theme(preset: "ocaen")', "không tồn tại"),
            ('#vp-set-labels(soluton: "x")', "soluton"),
            ('#vp-question-style(prefx: "x")[]', "prefx"),
            ('#vp-print-keys(scope: "page")', "scope"),
        )
        for source, message in cases:
            with self.subTest(source=source):
                self.compile_error(source, message)

    def test_question_can_clear_global_style(self):
        self.compile_ok('''
#vp-set-question-style(opt-bg: yellow, lbl-bg: yellow)
#show box: it => { assert(it.fill != yellow, message: "global fill leaked"); it }
#vp-question([Q], options: ([1], [2], [3], [4]), opt-bg: none, lbl-bg: none)
''')

    def test_scoped_question_style_restores_previous_values(self):
        self.compile_ok('''
#vp-set-question-style(lbl-color: red)
#vp-question-style(prefix: "Bài", lbl-color: blue)[
  #vp-question([Inner], options: ([1], [2]))
  #context { assert.eq(vp-q-prefix.get(), "Bài"); assert.eq(vp-q-lbl-color.get(), blue) }
]
#vp-question([Outer], options: ([1], [2]))
#context {
  assert.eq(vp-q-prefix.get(), "Câu")
  assert.eq(vp-q-lbl-color.get(), red)
  assert.eq(vp-sol-store.final().map(x => x.prefix), ("Bài", "Câu"))
}
''')

    def test_labels_change_visible_text(self):
        self.compile_ok('''
#vp-set-labels(statement: "Statement", tf-true: "T", solution: "Solution:")
#show "Statement": it => [#metadata(none) <statement>#it]
#show "Solution:": it => [#metadata(none) <solution>#it]
#vp-show-sol.update(true)
#vp-question([Q], type: "tf", statements: ([a],), sol: [Because.])
#context {
  assert.eq(query(<statement>).len(), 1)
  assert.eq(query(<solution>).len(), 1)
  assert.eq(vp-labels.get().tf-false, "S")
}
''')

    def test_custom_question_type_renders_and_reaches_keys(self):
        self.compile_ok('''
#vp-register-question-type("fill", q => [#metadata(q.data) <fill>])
#vp-register-question-type("match", q => [], keys: "mcq")
#vp-question([Q], type: "fill", data: ("N", "J"), ans: "N; J")
#vp-question([Q], type: "match", ans: "B")
#show table: it => [#metadata(it.columns.len()) <keys-table> #it]
#vp-print-keys()
#context {
  assert.eq(query(<fill>).first().value, ("N", "J"))
  assert.eq(query(<keys-table>).map(m => m.value), (5, 4))
}
''')

    def test_scoped_and_grouped_answer_keys(self):
        self.compile_ok(r'''
#show table: it => [#metadata(repr(it)) <keys-table> #it]
#vp-chapter(title: "One")
#vp-question([Q], options: ([1], [2]), ans: "A")
#vp-chapter(title: "Two")
#vp-question([Q], options: ([1], [2]), ans: "B")
#vp-instructions(reset: true)[Part 2]
#vp-question([Q], options: ([1], [2]), ans: "A")
#vp-print-keys(scope: "chapter", groups: true)
#vp-print-keys(scope: q => q.chapter == 1)
#vp-print-keys(scope: "batch")
#vp-question([Q], options: ([1], [2]), ans: "B")
#vp-print-keys(scope: "batch")
#context {
  let tables = query(<keys-table>).map(m => m.value)
  assert.eq(tables.len(), 4)
  assert(tables.at(0).contains("I.2") and tables.at(0).contains("II.1"), message: tables.at(0))
  let answers(t) = t.matches(regex("child: \\[[A-D]\\]")).len()
  assert.eq(tables.map(answers), (2, 1, 3, 1))
}
''')

    def test_default_answer_keys_add_no_layout_markers(self):
        self.compile_ok('''
#vp-question([Q], options: ([1], [2]), ans: "A", sol: [S])
#vp-print-keys()
#vp-print-solutions()
#context {
  assert.eq(counter("vp-keys-batch").final(), (0,))
  assert.eq(counter("vp-sol-batch").final(), (0,))
}
''')

    def test_units_rewrite_whole_words_only(self):
        self.compile_ok('''
#let plain(u) = repr(vp-unit(u))
#assert(plain("lumen").contains("lumen"))
#assert(plain("bus").contains("bus"))
#assert(plain("uF").contains("μF"))
#assert(plain("kohm").contains("kΩ"))
#assert(plain("microF").contains("μF"))
#assert(plain("degC").contains("°C"))
#assert(plain("Angstrom").contains("Å"))
''')

    def test_set_theme_without_arguments_returns_to_default(self):
        self.compile_ok('''
#vp-set-theme(preset: "violet")
#vp-set-theme()
#context assert.eq(vp-theme-color.get(), vp-theme-presets.ocean)
''')


if __name__ == "__main__":
    unittest.main()

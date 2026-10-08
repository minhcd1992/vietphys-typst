"""Check scoped exercise settings, actual spacing and pagination in compiled output."""
import os
from pathlib import Path
import subprocess
import tempfile
import unittest

ROOT = Path(__file__).resolve().parent.parent


class WorkbookTests(unittest.TestCase):
    def test_workbook_tf_flows_between_intact_rows_with_repeating_header(self):
        self.compile_case('''
#show: vp-workbook.with(header: none, footer: none)
#set page(width: 150mm, height: 160mm, margin: 15mm)
#show table: it => {
  let headers = it.children.filter(c => c.func() == table.header)
  assert(headers.len() == 1 and headers.first().repeat)
  it
}
#for (i, gap, whole) in ((0, 190pt, false), (1, 300pt, false), (2, 190pt, true)) [
  #pagebreak(weak: true)
  #block[Start #box(width: 0pt, height: 0pt)[#metadata(i) <start>]]
  #v(gap)
  #vp-question([True or false. #metadata(i) <stem>], type: "tf",
    breakable: if whole { false } else { auto },
    statements: range(4).map(j => [
      #box(width: 0pt, height: 0pt)[#metadata((i, j)) <row-start>]
      A longer statement with enough text to occupy several lines in this narrow table cell.
      #box(width: 0pt, height: 0pt)[#metadata((i, j)) <row-end>]
    ]))
]
#context {
  let starts = query(<start>)
  let stems = query(<stem>)
  let rows = query(<row-start>)
  let ends = query(<row-end>)
  assert(stems.len() == 3 and rows.len() == 12)
  for i in range(3) {
    assert(stems.at(i).location().page() == rows.at(4 * i).location().page())
  }
  for i in range(12) {
    assert(rows.at(i).location().page() == ends.at(i).location().page())
  }
  assert(stems.at(0).location().page() == starts.at(0).location().page())
  assert(rows.at(3).location().page() > stems.at(0).location().page())
  assert(stems.at(1).location().page() > starts.at(1).location().page())
  assert(stems.at(2).location().page() > starts.at(2).location().page())
  assert(rows.at(11).location().page() == stems.at(2).location().page())
}
''')

    def test_workbook_mcq_flows_between_rows_and_keeps_stem_with_first_option(self):
        self.compile_case('''
#show: vp-workbook.with(header: none, footer: none)
#set page(width: 150mm, height: 130mm, margin: 15mm)
#for (i, gap, whole) in ((0, 110pt, false), (1, 245pt, false), (2, 110pt, true)) [
  #pagebreak(weak: true)
  #block[Start #box(width: 0pt, height: 0pt)[#metadata(i) <start>]]
  #v(gap)
  #vp-question([Question. #metadata(i) <stem>],
    breakable: if whole { false } else { auto },
    options: range(4).map(j => [
      #metadata((i, j)) <option-start>
      A longer answer which wraps onto a second line in the available column.
      #metadata((i, j)) <option-end>
    ]))
]
#context {
  let starts = query(<start>)
  let stems = query(<stem>)
  let options = query(<option-start>)
  let ends = query(<option-end>)
  assert(stems.len() == 3 and options.len() == 12)
  for i in range(3) {
    assert(stems.at(i).location().page() == options.at(4 * i).location().page())
  }
  for i in range(12) {
    assert(options.at(i).location().page() == ends.at(i).location().page())
  }
  assert(stems.at(0).location().page() == starts.at(0).location().page())
  assert(options.at(3).location().page() > stems.at(0).location().page())
  assert(stems.at(1).location().page() > starts.at(1).location().page())
  assert(stems.at(2).location().page() > starts.at(2).location().page())
  assert(options.at(11).location().page() == stems.at(2).location().page())
}
''')

    def test_mcq_labels_share_baseline_with_tall_fraction_in_same_row(self):
        self.compile_case('''
#show: vp-workbook.with(header: none, footer: none)
#show text: it => {
  if it.text in ("A", "B", "C", "D", "A.", "B.", "C.", "D.") {
    box(width: 0pt, height: 0pt)[#metadata(it.text) <option-marker>]
  }
  it
}
#for answers in (false, true) [
  #vp-show-ans.update(answers)
  #vp-question([Fractions], options: (
    [$δ ρ = "1,2"% + "0,8"% = "2,0"%$.],
    [$δ ρ = "1,2"% + 3 × "0,8"% = "3,6"%$.],
    [$δ ρ = "1,2"% + ("0,8"%)^3 = "1,712"%$.],
    [$δ ρ = frac("1,2"%, 3 × "0,8"%) = "0,5"%$.],
  ), ans: "D")
]
#context {
  let markers = query(<option-marker>).map(m => m.location().position())
  assert(markers.len() == 8)
  for row in markers.chunks(2) {
    assert(row.at(0).page == row.at(1).page)
    assert(calc.abs(row.at(0).y - row.at(1).y) < 0.1pt, message: repr(markers))
    assert(row.at(0).x < row.at(1).x)
  }
  assert(markers.at(2).y > markers.at(0).y)
}
''')

    def test_short_fields_keep_all_digits_and_hide_student_answers(self):
        self.compile_case('''
#show: vp-page-setup
#show box: it => [
  #if it.width == 1.8em and it.height == 1.8em [#metadata(it.body) <answer-box>]
  #it
]
#let content-text(body) = {
  if body.has("text") { body.text }
  else if body.has("children") { body.children.map(content-text).join() }
  else if body.has("body") { content-text(body.body) }
  else if body.has("child") { content-text(body.child) }
  else { "" }
}
#vp-question([Hidden], type: "short", ans: "0,037", short-boxes: 5)
#vp-exercise-layout(show-answers: true)[
  #vp-question([Visible], type: "short", ans: "25,37", short-boxes: 5)
  #vp-question([Two results], type: "short", ans: "9,79; 0,70",
    short-fields: (
      (label: [First], ans: "9,79", boxes: 4),
      (label: [Second], ans: "0,70", boxes: 4),
    ))
]
#context {
  let boxes = query(<answer-box>).map(m => content-text(m.value).trim())
  assert(boxes.len() == 18)
  assert(boxes.slice(0, 5).all(c => c == ""))
  assert(boxes.slice(5, 10).join() == "25,37")
  assert(boxes.slice(10).join() == "9,790,70")
}
''')

    def compile_case(self, source, extra=None):
        with tempfile.TemporaryDirectory(prefix="vietphys-workbook-", dir=ROOT) as folder:
            path = Path(folder) / "main.typ"
            path.write_text('#import "../vietphys.typ": *\n' + source, encoding="utf-8")
            for name, content in (extra or {}).items():
                (path.parent / name).write_text(content, encoding="utf-8")
            result = subprocess.run(
                [os.getenv("TYPST_BINARY", "typst"), "compile", str(path),
                 str(path.with_suffix(".pdf")), "--root", str(ROOT)],
                capture_output=True, text=True, encoding="utf-8", timeout=45,
            )
            self.assertEqual(result.returncode, 0, result.stderr)

    def test_included_questions_inherit_overrides_and_nested_visibility_restores(self):
        self.compile_case('''
#show: vp-page-setup
#set table(inset: 3pt)
#show table: it => [#metadata(it.inset) <inset> #it]
#vp-exercise-layout(tf-inset: 7pt, show-answers: true, show-solutions: false)[
  #include "question.typ"
  #vp-exercise-layout(tf-inset: 9pt, show-answers: false, show-solutions: true)[
    #include "question.typ"
    #context { assert(not vp-show-ans.get()); assert(vp-show-sol.get()) }
    #vp-question([Explicit override], type: "tf", tf-inset: 11pt, statements: ([a],))
  ]
  #context { assert(vp-show-ans.get()); assert(not vp-show-sol.get()) }
  #include "question.typ"
]
#context { assert(not vp-show-ans.get()); assert(not vp-show-sol.get()) }
#include "question.typ"
#context {
  assert(query(<inset>).map(m => m.value) == (7pt, 9pt, 11pt, 7pt, 3pt))
  assert(vp-sol-store.get().len() == 5)
}
''', {"question.typ": '''#import "../vietphys.typ": *
#vp-question([Imported question], type: "tf", statements: ([a], [b]),
  ans-tf: ("Đ", "S"), sol: [Solution.])
'''})

    def test_instruction_gap_is_measurable_and_resets_with_scope(self):
        self.compile_case('''
#show: vp-page-setup
#vp-exercise-layout(instruction-gap: 30pt)[
  #vp-instructions[Instruction #metadata(0) <i1>]
  #vp-question([Question #metadata(0) <q1>])
  #vp-instructions(gap: 7pt)[Instruction #metadata(0) <i2>]
  #vp-question([Question #metadata(0) <q2>])
]
#vp-instructions[Instruction #metadata(0) <i3>]
#vp-question([Question #metadata(0) <q3>])
#vp-instructions(reset: true)[New part]
#vp-question([Restart numbering])
#context {
  let y(tag) = query(tag).first().location().position().y
  let gap1 = y(<q1>) - y(<i1>)
  let gap2 = y(<q2>) - y(<i2>)
  let gap3 = y(<q3>) - y(<i3>)
  assert(calc.abs(gap1 - gap3 - 18pt) < 0.1pt)
  assert(gap2 < gap1)
  assert(vp-sol-store.get().last().num == 1)
}
''')

    def test_writing_lines_spacing_and_top_gap(self):
        self.compile_case('''
#show: vp-page-setup
#show line: it => [#metadata(0) <writing-line> #it]
#vp-exercise-layout(line-spacing: 10pt, lines-above: 8pt)[
  #vp-question([Stem #metadata(0) <stem1>], type: "essay", lines: 2)
  #vp-question([Stem #metadata(0) <stem2>], type: "essay", lines: 2,
    line-spacing: 20pt, lines-above: 18pt)
]
#context {
  let lines = query(<writing-line>).map(m => m.location().position().y)
  let y(tag) = query(tag).first().location().position().y
  assert(lines.len() == 4)
  assert(calc.abs((lines.at(3) - lines.at(2)) - (lines.at(1) - lines.at(0)) - 10pt) < 0.1pt)
  assert(calc.abs((lines.at(2) - y(<stem2>)) - (lines.at(0) - y(<stem1>)) - 10pt) < 0.1pt)
}
''')

    def test_essay_keeps_first_line_and_multiple_choice_stays_together(self):
        self.compile_case('''
#show: vp-page-setup
#set page(width: 150mm, height: 100mm, margin: 15mm, header: none, footer: none)
#show line: it => [#metadata(0) <writing-line> #it]
#vp-exercise-layout(q-spacing: 6pt, keep-first-line: true, keep-together: ("mcq",))[
  #for gap in range(70, 141, step: 10) [
    #pagebreak(weak: true)
    #v(gap * 1pt)
    #vp-question([Question. #parbreak() Final request. #metadata(0) <stem>],
      type: "essay", lines: 5)
  ]
  #pagebreak()
  #v(125pt)
  #vp-question([Stem #metadata(0) <mcq-stem>],
    options: ([Option #metadata(0) <mcq-option>], [B], [C], [D]))
]
#context {
  let stems = query(<stem>)
  let lines = query(<writing-line>)
  assert(stems.len() == 8 and lines.len() == 40)
  for (i, stem) in stems.enumerate() {
    assert(stem.location().page() == lines.at(i * 5).location().page())
  }
  assert(query(<mcq-stem>).first().location().page() == query(<mcq-option>).first().location().page())
}
''')

    def test_contents_links_follow_headings_and_nine_lessons_fit_on_chapter_page(self):
        self.compile_case('''
#show: vp-workbook.with(header: none, footer: none)
#show link: it => [#metadata(it.dest) <destination> #it]
#vp-book-outline()
#vp-workbook-chapter(num: "II", title: "Động lực học", label: <chapter>)
#vp-chapter-outline(summary: [Nội dung luyện tập.])
#metadata(0) <contents-end>
#for i in range(8, 17) [
  #vp-workbook-lesson(num: i, title: "Tổng hợp, Phân tích lực và Thực hành tổng hợp lực",
    label: label("lesson-" + str(i)))
  = Phần I
  #vp-instructions(reset: true)[Chọn đáp án đúng.]
  #vp-question([Một câu hỏi.], options: ([A], [B], [C], [D]))
]
#context {
  let chapter = query(<chapter>).first()
  assert(query(<contents-end>).first().location().page() == chapter.location().page())
  let links = query(<destination>).map(m => m.value.page())
  assert(links.len() == 19) // Main contents: 1 + 9; chapter contents: 9.
  for i in range(8, 17) {
    let lesson-page = query(label("lesson-" + str(i))).first().location().page()
    assert(links.filter(p => p == lesson-page).len() == 2)
    assert(lesson-page > chapter.location().page())
  }
}
''')

    def test_chapter_labels_and_first_lesson_start_a_new_page(self):
        self.compile_case('''
#show: vp-workbook.with(
  header: vp-manual-header-fancy(icon: "atom", compact: true, title-size: 9pt,
    subtitle-size: 6pt, chapter-size: 7pt, bottom-padding: 2pt, title-gap: 1pt),
  footer: vp-footer-shuriken(compact: true, title-size: 8pt, slogan-size: 7pt,
    page-size: 7pt, badge-size: 22pt, page-radius: 6pt, divider-gap: -4pt),
)
#vp-workbook-chapter(num: "IV", title: "Chapter", label: <chapter>)
Chapter contents.
#vp-workbook-lesson(num: 23, title: "Lesson", label: <lesson>)
= Part
#vp-instructions[Instructions]
#vp-question([Sample], options: ([A], [B], [C], [D]))
#context {
  assert(query(<chapter>).first().location().page() < query(<lesson>).first().location().page())
  assert(query(<vp-chapter-info>).first().value.num == "IV")
  assert(not vp-show-ans.get() and not vp-show-sol.get())
}
''')


if __name__ == "__main__":
    unittest.main()

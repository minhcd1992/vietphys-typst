#import "page_setup.typ": vp-page-setup
#import "headers.typ": vp-manual-header-fancy
#import "footers.typ": vp-footer-shuriken
#import "../themes/modern_headings.typ": vp-heading-theme-modern
#import "../components/question_bank.typ": vp-exercise-layout
#import "../components/hierarchy.typ": vp-chapter, vp-lesson

// Named dictionaries make a preset easy to extend without copying its renderer.
#let vp-workbook-defaults = (
  page: (
    paper: "a4", margin: (x: 2cm, top: 2cm, bottom: 1.6cm),
    font: "Times New Roman", font-size: 14pt, leading: 0.55em,
    header-ascent: 23pt, footer-descent: 6pt,
    theme-preset: "ocean", hierarchy: "book",
    heading-theme: vp-heading-theme-modern.with(font: "Arial", paragraph-indent: 0pt,
      numbering: (..nums) => numbering("I", nums.pos().first())),
  ),
  questions: (
    q-spacing: 6pt, stem-spacing: 7pt, line-spacing: 1.8em, lines-above: 16pt,
    instruction-gap: 14pt, tf-inset: (x: 5pt, y: 7pt),
    keep-first-line: true, keep-together: ("short",),
    show-answers: false, show-solutions: false, show-levels: false, show-sources: false,
  ),
)

#let vp-workbook(
  body, title: "SÁCH BÀI TẬP", subtitle: "LUYỆN TẬP THEO CHỦ ĐỀ",
  page: (:), questions: (:), header: auto, footer: auto,
) = {
  set document(title: title)
  let page-options = vp-workbook-defaults.page + (
    header: vp-manual-header-fancy(title: title, subtitle: subtitle, icon: "atom", compact: true),
    footer: vp-footer-shuriken(title: "Học Kage", slogan: "Level up your knowledge", compact: true),
  ) + page
  if header != auto { page-options.insert("header", header) }
  if footer != auto { page-options.insert("footer", footer) }
  vp-page-setup(..page-options,
    vp-exercise-layout(..(vp-workbook-defaults.questions + questions), body))
}

#let vp-workbook-chapter = vp-chapter.with(style: "chap_hexagon", font: ("Rounded Mplus 1c", "Arial"))
#let vp-workbook-lesson = vp-lesson.with(style: "less_modern", font: ("Rounded Mplus 1c", "Arial"),
  new-page: true, tab-text: "BÀI")

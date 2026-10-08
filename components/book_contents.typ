#import "../themes/theme_colors.typ": vp-resolve-palette

#let _vp-book-number(item) = context {
  numbering(item.numbering, ..counter(heading).at(item.location()))
}
#let _vp-book-page(item) = context { counter(page).at(item.location()).first() }
#let _vp-book-entries() = query(heading).filter(h => h.outlined and h.offset == 0 and h.level <= 2)

// Dedicated contents pages; original headings still own PDF bookmarks and references.
#let vp-book-outline(
  title: [MỤC LỤC], subtitle: none, intro: none, break-before: (),
  color: auto, font: "Arial", title-font: ("Rounded Mplus 1c", "Arial"),
  lesson-size: 11pt, row-padding: 6pt,
) = context {
  let pal = vp-resolve-palette(custom-color: color)
  set text(font: font, size: lesson-size)
  set par(first-line-indent: 0pt, justify: false, leading: 4pt)
  let page-title(continued: false) = block(below: 18pt, sticky: true)[
    #if subtitle != none {
      text(size: 9pt, weight: "bold", fill: pal.dark, tracking: 0.6pt, subtitle)
      v(7pt)
    }
    #text(font: title-font, size: 28pt, weight: "bold", fill: pal.dark, title)
    #if continued { h(10pt); text(size: 10pt, fill: gray)[(tiếp theo)] }
    #v(8pt)
    #line(length: 40pt, stroke: 3pt + pal.primary)
    #if intro != none and not continued { v(9pt); text(size: 9pt, fill: rgb("#64748B"), intro) }
  ]
  page-title()
  let chapter-index = 0
  for item in _vp-book-entries() {
    if item.level == 1 {
      chapter-index += 1
      if break-before.contains(chapter-index) {
        pagebreak()
        page-title(continued: true)
      }
      block(above: 15pt, below: 5pt, sticky: true, breakable: false,
        fill: pal.bg, radius: 5pt, inset: (x: 10pt, y: 9pt))[
        #link(item.location(), grid(columns: (34pt, 1fr, 28pt), column-gutter: 9pt, align: horizon,
          box(width: 30pt, height: 30pt, fill: pal.primary, radius: 5pt,
            align(center + horizon, text(size: 13pt, weight: "bold", fill: white, _vp-book-number(item)))),
          text(size: 11pt, weight: "bold", fill: pal.dark, item.body),
          align(right, text(size: 10pt, weight: "bold", fill: pal.dark, _vp-book-page(item))),
        ))
      ]
    } else {
      block(above: 0pt, below: 0pt, breakable: false,
        inset: (x: 5pt, y: row-padding), stroke: (bottom: 0.4pt + rgb("#E2E8F0")))[
        #link(item.location(), grid(columns: (42pt, 1fr, 28pt), column-gutter: 10pt, align: top,
          text(size: 9pt, weight: "bold", fill: pal.primary)[Bài #_vp-book-number(item)],
          item.body,
          align(right, text(size: 10pt, fill: rgb("#64748B"), _vp-book-page(item))),
        ))
      ]
    }
  }
}

// Derive lesson titles, numbers and links from headings in the current chapter.
#let vp-chapter-outline(
  title: [NỘI DUNG CHƯƠNG], summary: none, color: auto,
  font: "Arial", title-font: ("Rounded Mplus 1c", "Arial"),
  lesson-size: 12pt, row-padding: 8pt,
) = context {
  let pal = vp-resolve-palette(custom-color: color)
  let chapters = query(<vp-chapter-info>)
  let current-page = here().page()
  let current = chapters.filter(c => c.location().page() <= current-page).at(-1, default: none)
  let next = chapters.filter(c => c.location().page() > current-page).at(0, default: none)
  let start = if current == none { 0 } else { current.location().page() }
  let end = if next == none { calc.inf } else { next.location().page() }
  let lessons = _vp-book-entries().filter(h => h.level == 2 and
    h.location().page() >= start and h.location().page() < end)
  set text(font: font, size: lesson-size)
  set par(first-line-indent: 0pt, justify: false, leading: 5pt, spacing: 0pt)
  v(18pt)
  block(sticky: true, below: 16pt)[
    #text(size: 9pt, weight: "bold", fill: pal.primary, tracking: 1pt)[#lessons.len() BÀI HỌC]
    #v(6pt)
    #text(font: title-font, size: 22pt, weight: "bold", fill: pal.dark, title)
    #v(8pt)
    #line(length: 36pt, stroke: 3pt + pal.primary)
  ]
  for (index, item) in lessons.enumerate() {
    block(above: 0pt, below: 8pt, breakable: false, radius: 6pt,
      fill: if calc.even(index) { pal.bg } else { rgb("#F8FAFC") },
      inset: (x: 12pt, y: row-padding))[
      #link(item.location(), grid(columns: (34pt, 1fr, 34pt), column-gutter: 12pt, align: horizon,
        box(width: 32pt, height: 32pt, fill: white, stroke: 0.7pt + pal.subtle, radius: 6pt,
          align(center + horizon, text(font: title-font, size: 15pt, weight: "bold",
            fill: pal.primary, _vp-book-number(item)))),
        text(weight: "medium", fill: pal.dark, item.body),
        align(right, stack(dir: ttb, spacing: 3pt,
          text(size: 6.5pt, fill: rgb("#64748B"))[TRANG],
          text(size: 11pt, weight: "bold", fill: pal.dark, _vp-book-page(item)),
        )),
      ))
    ]
  }
  if summary != none {
    v(16pt)
    block(inset: (left: 12pt, y: 4pt), stroke: (left: 2pt + pal.primary))[
      #text(size: 10pt, fill: rgb("#64748B"), summary)
    ]
  }
}

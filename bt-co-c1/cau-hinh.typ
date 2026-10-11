#import "images/hinh-cetz.typ": ve-hinh

#let hinh(number, caption, width: 100%) = block[
  #align(center)[
    #block(width: width)[
      #layout(size => {
        let drawing = ve-hinh(number)
        let factor = size.width / measure(drawing).width * 100%
        scale(x: factor, y: factor, reflow: true, drawing)
      })
    ]
    #v(3pt)
    #text(size: 9pt)[*Hình #number.* #caption]
  ]
]

#let bai(number, body, kind: "Bài tập", fig: none, fig-width: 43mm) = block(
  width: 100%, breakable: false, above: 10pt, below: 5pt,
)[
  #if fig == none [
    *#kind #number.* #body
  ] else {
    grid(
      columns: (1fr, fig-width), gutter: 5mm,
      [*#kind #number.* #body], fig,
    )
  }
]

#let y(body) = block(above: 6pt, below: 0pt, inset: (left: 10pt), body)

#let layout(body) = {
  set document(title: "Chương 1 — Động học chất điểm")
  set page(
    paper: "a4", margin: (x: 18mm, top: 19mm, bottom: 18mm),
    header: text(size: 9pt, fill: rgb("666666"))[CHƯƠNG 1 · ĐỘNG HỌC CHẤT ĐIỂM],
    numbering: "1", number-align: center,
  )
  set text(font: "Times New Roman", size: 12pt, lang: "vi")
  set par(justify: true, leading: 0.5em)
  set heading(numbering: none)
  show heading.where(level: 1): set text(size: 19pt)
  show heading.where(level: 2): set text(size: 15pt)
  body
}

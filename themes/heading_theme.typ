#import "../components/hierarchy_rules.typ": _vp-heading-numbering, _vp-heading-depth
#import "theme_colors.typ": vp-resolve-color

#let vp-heading-theme-01(
  color: auto,
  bg-color: auto,
  numbering: "1.1.1.1",
  paragraph-indent: 1.5em,
  body
) = {
  set par(first-line-indent: (amount: paragraph-indent, all: true))
  show figure.caption: set par(first-line-indent: 0pt)
  show raw: set par(first-line-indent: 0pt)
  show table: set par(first-line-indent: 0pt)
  context {
    set heading(numbering: _vp-heading-numbering(numbering, offset: heading.offset), supplement: [Mục])
    show heading: set block(breakable: false, sticky: true)

    show heading: it => context {
      let level = _vp-heading-depth(it)
      set par(first-line-indent: 0pt, hanging-indent: 0pt, justify: false, leading: 0.55em)
      let c-dark = vp-resolve-color(color)
      let c-light = if bg-color == auto { c-dark.lighten(85%) } else { bg-color }

      let num-content = if it.numbering != none {
        counter(heading).display(it.numbering)
      } else {
        ""
      }

      if it.numbering == none and level <= 4 {
        block(width: 100%, breakable: false, sticky: true,
          stroke: (left: 2pt + c-dark), inset: (left: 9pt, y: 4pt))[
          #text(fill: if level == 1 { black } else { c-dark.darken(25%) }, weight: "bold",
            size: (13pt, 12pt, 11pt, 10pt).at(level - 1))[#it.body]
        ]
      } else if level == 1 {
        block(width: 100%, breakable: false, sticky: true,
          inset: (y: 7pt))[
          #grid(
            columns: (auto, 1fr), column-gutter: 10pt, align: horizon,
            block(fill: c-dark, radius: 4pt, width: 30pt, height: 30pt,
              inset: 0pt, above: 0pt, below: 0pt)[
              #align(center + horizon)[#text(fill: white, weight: "bold", size: 13pt)[#num-content]]
            ],
            stack(dir: ttb, spacing: 6pt,
              text(fill: black, weight: "bold", size: 14pt)[#it.body],
              line(length: 100%, stroke: 1.2pt + c-dark)),
          )
        ]
      }
      else if level == 2 {
        v(0pt) // Đã giảm từ 16pt
        grid(
          columns: (auto, 1fr), gutter: 12pt, align: (left + horizon, left + horizon),
          circle(radius: 14pt, stroke: 1.2pt + c-dark, align(center + horizon)[#text(fill: c-dark, weight: "bold", size: 11pt)[#num-content]]),
          stack(dir: ttb, spacing: 6pt, text(weight: "bold", size: 13pt, fill: rgb("#333"))[#it.body], line(length: 100%, stroke: 1.2pt + c-dark))
        )
        v(4pt) // Đã giảm từ 10pt
      }
      else if level == 3 {
        v(-6pt) // Đã giảm từ 14pt
        stack(
          dir: ttb, spacing: 8pt,
          grid(
            columns: (auto, 1fr), gutter: 10pt, align: (left + horizon, left + horizon),
            rect(fill: c-light, radius: 4pt, inset: (x: 8pt, y: 6pt), stroke: none, text(fill: c-dark, weight: "bold", size: 11pt)[#num-content]),
            text(weight: "bold", size: 12pt, fill: rgb("#333"))[#it.body]
          ),
          line(length: 100%, stroke: (paint: c-dark, thickness: 1pt, dash: "dashed"))
        )
        v(4pt) // Đã giảm từ 8pt
      }
      else if level == 4 {
        v(0pt) // Đã giảm từ 12pt
        stack(
          dir: ttb, spacing: 6pt,
          grid(
            columns: (auto, 1fr), gutter: 10pt, align: (left + horizon, left + horizon),
            text(fill: c-dark, weight: "bold", size: 11pt)[#num-content],
            text(weight: "bold", size: 11pt, fill: rgb("#333"))[#it.body]
          ),
          line(length: 100%, stroke: 0.8pt + c-dark)
        )
        v(4pt) // Đã giảm từ 8pt
      }
      else {
        it
      }
      if level <= 3 { v(6pt, weak: false) }
    }

    body
  }
}

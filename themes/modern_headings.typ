#import "../components/hierarchy_rules.typ": _vp-heading-numbering, _vp-heading-depth
#import "theme_colors.typ": vp-resolve-palette
#let _vp-modern-numbering = numbering

#let vp-heading-theme-modern(color: auto, font: ("Rounded Mplus 1c", "Arial"), paragraph-indent: 1.5em, numbering: "1.1.1.1", body) = {
  set par(first-line-indent: (amount: paragraph-indent, all: true))
  show figure.caption: set par(first-line-indent: 0pt)
  show raw: set par(first-line-indent: 0pt)
  show table: set par(first-line-indent: 0pt)
  context {
    set heading(numbering: _vp-heading-numbering(numbering, offset: heading.offset), supplement: [Mục])
    show heading: set block(breakable: false, sticky: true)
    show heading: it => context {
        let level = _vp-heading-depth(it)
        set par(first-line-indent: 0pt, hanging-indent: 0pt, justify: false)
        let pal = vp-resolve-palette(custom-color: color)
        let c = pal.primary
        let c-dark = pal.dark
        let nums = counter(heading).at(it.location())
        let index = if it.numbering == none { none } else { _vp-modern-numbering(it.numbering, ..nums) }

        if level <= 3 and it.numbering == none {
          block(width: 100%, inset: (y: 3pt))[
            #grid(columns: (auto, 1fr), column-gutter: 8pt, align: horizon,
              circle(radius: 2.5pt, fill: c, stroke: none),
              text(fill: c, font: font, size: if level == 1 { 11pt } else { 10pt },
                weight: "bold")[#it.body],
            )
          ]
        } else if level == 1 {
          v(0pt)

          let num-str = index

          let box-size = 25pt
          let num-size = 14pt

          let shadow-box = box(width: box-size, height: box-size)[
            #place(dx: 2pt, dy: 2pt)[#rect(width: box-size, height: box-size, fill: c.lighten(70%), radius: 0pt)]
            #place()[#rect(width: box-size, height: box-size, fill: c, radius: 0pt)[
              #align(center + horizon)[#text(fill: white, weight: "bold", size: num-size, font: "Arial")[#num-str]]
            ]]
          ]

          block(width: 100%, inset: (bottom: 5pt), stroke: (bottom: 0.5pt + c))[
            #set par(leading: 5pt)
            #show emph: e => text(fill: luma(100), size: 7pt,
              weight: "regular", style: "italic", e.body)
            #box(baseline: 7pt)[#shadow-box]#h(12pt)
            #text(fill: c, font: font, size: 11pt, weight: "bold")[#it.body]
          ]
          v(2pt)
        } else if level == 2 {
          block(width: 100%, inset: (y: 3pt))[
            #set par(leading: 3pt, justify: false)
            #box(fill: c.lighten(93%), radius: 3pt, inset: (x: 6pt, y: 3pt))[
                #text(fill: c, font: font, size: 9.5pt, weight: "bold")[#index]
            ]#h(8pt)
            #text(fill: c-dark, font: font, size: 10.5pt, weight: "bold")[#it.body]
          ]
        } else if level == 3 {
          block(width: 100%, stroke: (left: 2pt + c), inset: (left: 8pt, y: 3pt))[
            #set par(leading: 3pt, justify: false)
            #box(stroke: 0.7pt + c.lighten(35%), radius: 3pt, inset: (x: 5pt, y: 3pt))[
                #text(fill: c, font: font, size: 9pt, weight: "bold")[#index]
            ]#h(7pt)
            #text(fill: c-dark, font: font, size: 10pt, weight: "bold")[#it.body]
          ]
        } else {
          it
        }

        if level <= 3 { v(6pt, weak: false) }
    }
    body
  }
}

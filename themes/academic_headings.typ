#import "../components/hierarchy_rules.typ": _vp-heading-numbering, _vp-heading-depth
// Academic headings: serif typography without decorative badges or backgrounds.
#let _vp-academic-numbering = numbering
#let vp-heading-theme-academic(
  variant: "paper", // "paper" or "thesis"
  font: "Times New Roman",
  color: rgb("#222222"),
  numbering: "1.1.1.1",
  chapter-pagebreak: false,
  heading-leading: 0.55em,
  heading-before: auto,
  heading-after: auto,
  body-size: auto,
  body-leading: auto,
  paragraph-indent: 1.5em,
  body,
) = {
  assert(("paper", "thesis").contains(variant), message: "Unknown academic heading variant")
  set text(font: font, size: if body-size == auto {
    if variant == "paper" { 11pt } else { 12pt }
  } else { body-size })
  set par(leading: if body-leading == auto {
    if variant == "paper" { 0.55em } else { 0.8em }
  } else { body-leading }, spacing: 0.6em,
    first-line-indent: (amount: paragraph-indent, all: true))
  show figure.caption: set par(first-line-indent: 0pt)
  show raw: set par(first-line-indent: 0pt)
  show table: set par(first-line-indent: 0pt)
  context {
    set heading(numbering: _vp-heading-numbering(numbering, offset: heading.offset), supplement: [Mục])
    show heading: set block(above: 0pt, below: 0pt, breakable: false, sticky: true)
    show heading: it => context {
      let level = _vp-heading-depth(it)
      let thesis-chapter = variant == "thesis" and level == 1 and it.offset == 0
      let sizes = if variant == "thesis" { (14pt, 12pt, 12pt, 12pt) } else { (12pt, 11pt, 11pt, 11pt) }
      let size = sizes.at(calc.min(level, 4) - 1)
      let gaps = if variant == "thesis" { (24pt, 18pt, 14pt, 12pt) } else { (18pt, 14pt, 12pt, 10pt) }
      let before = if heading-before == auto { gaps.at(calc.min(level, 4) - 1) } else { heading-before }
      let after = if heading-after == auto {
        if variant == "thesis" { 10pt } else { 8pt }
      } else { heading-after }
      let index = if it.numbering == none { none } else {
        _vp-academic-numbering(it.numbering, ..counter(heading).at(it.location()))
      }
      let title = if thesis-chapter { upper(it.body) } else { it.body }
      if thesis-chapter and chapter-pagebreak { pagebreak(weak: true) }
      block(width: 100%, above: before, below: after,
        breakable: false, sticky: true)[
        #set text(font: font, fill: color, size: size,
          weight: "bold", style: "normal", top-edge: "ascender", bottom-edge: "descender")
        #set par(justify: false, leading: heading-leading, spacing: 0pt,
          first-line-indent: 0pt, hanging-indent: 0pt)
        #if thesis-chapter [
          #align(center)[
            #if index != none [#index #h(6pt)]#title
          ]
        ] else if index == none [
          #title
        ] else [
          #index #h(7pt) #title
        ]
      ]
    }
    body
  }
}

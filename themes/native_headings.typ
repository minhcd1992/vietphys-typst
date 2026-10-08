#import "../components/hierarchy_rules.typ": _vp-heading-numbering, _vp-heading-depth
// Native-looking headings with flush-left continuation lines.
#let _vp-native-numbering = numbering
#let vp-heading-theme-native(paragraph-indent: 1.5em, heading-leading: 0.55em, numbering: "1.1.1.1", body) = {
  set par(first-line-indent: (amount: paragraph-indent, all: true))
  show figure.caption: set par(first-line-indent: 0pt)
  show raw: set par(first-line-indent: 0pt)
  show table: set par(first-line-indent: 0pt)
  context {
    // Capture body size before Typst applies its own heading text styles.
    let body-size = text.size
    set heading(numbering: _vp-heading-numbering(numbering, offset: heading.offset), supplement: [Mục])
    show heading: it => context {
      let level = _vp-heading-depth(it)
      if level <= 3 {
        block(width: 100%, above: 1.4em, below: 0.7em, sticky: true, breakable: false)[
          #set par(first-line-indent: 0pt, hanging-indent: 0pt, justify: false,
            leading: heading-leading, spacing: 0pt)
          #set text(weight: "bold", size: body-size * (1.4, 1.2, 1).at(level - 1))
          #set text(top-edge: "ascender", bottom-edge: "descender")
          #if it.numbering != none [
            #_vp-native-numbering(it.numbering, ..counter(heading).at(it.location()))#h(0.5em)
          ]#it.body
        ]
      } else { it }
    }
    body
  }
}

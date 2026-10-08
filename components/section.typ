// Visual section label; intentionally does not create a semantic heading.
#let vp-section(title, size: 16pt, color: rgb("#174B78"), font: auto,
  before: 16pt, after: 9pt) = block(above: before, below: after,
  sticky: true, breakable: false)[
  #set par(first-line-indent: 0pt, hanging-indent: 0pt, justify: false, leading: 0.55em)
  #if font == auto {
    text(size: size, weight: "bold", fill: color, title)
  } else {
    text(font: font, size: size, weight: "bold", fill: color, title)
  }
]

#import "../../themes/theme_colors.typ": vp-resolve-color
#let _vp-chapter-basic(
  num: "1",
  title: "TÊN CHƯƠNG",
  style: "chap_hexagon",
  color: auto,
  font: "Arial"
) = context {
  set par(first-line-indent: 0pt)
  let color = vp-resolve-color(color)
  {
    let margins = page.margin
    let mx = if type(margins) == dictionary {
      margins.at("left", default: margins.at("x", default: 2cm))
    } else { margins }
    let my = if type(margins) == dictionary {
      margins.at("top", default: margins.at("y", default: 2.5cm))
    } else { margins }
    let mx = if type(mx) == relative { mx.length + mx.ratio * page.width } else { mx }
    let my = if type(my) == relative { my.length + my.ratio * page.height } else { my }
    layout(size => {
      let wrapper = block(width: size.width + mx * 2, breakable: false,
        fill: color.lighten(96%), stroke: (bottom: 1.5pt + color.lighten(55%)),
        inset: (left: mx, right: mx, top: 12pt, bottom: 10pt))[
      #set align(left + top)
      #if style == "chap_hexagon" [
      #grid(columns: (64pt, 1fr), column-gutter: 10pt, align: horizon,
        box(width: 64pt, height: 56pt)[
          // Regular hexagon, with a separate shadow.
          #let hw = 60pt
          #let hh = hw * calc.sqrt(3) / 2
          #let points = ((hw / 4, 0pt), (3 * hw / 4, 0pt),
            (hw, hh / 2), (3 * hw / 4, hh), (hw / 4, hh), (0pt, hh / 2))
          #place(top + left, dx: 3pt, dy: 4pt)[
            #polygon(fill: color.darken(35%), ..points)
          ]
          #place(top + left)[
            #polygon(fill: color.lighten(94%), stroke: 2pt + color, ..points)
          ]
          #box(width: hw, height: hh)[
            #align(center + horizon)[
              #stack(dir: ttb, spacing: 3pt,
                text(fill: color, font: font, size: 8pt, weight: "bold")[CHƯƠNG],
                line(length: 30pt, stroke: 0.8pt + color.lighten(35%)),
                text(fill: color.darken(20%), font: font, size: 20pt, weight: "black")[#num],
              )
            ]
          ]
        ],
        block(width: 100%)[
          #set block(above: 0pt, below: 0pt)
          #block(width: 100%, fill: color.lighten(75%), radius: 7pt,
            inset: (right: 3pt, bottom: 3pt))[
            #block(width: 100%, fill: color.lighten(95%),
              stroke: 1.2pt + color, radius: 6pt, inset: (x: 14pt, y: 9pt))[
              #set par(leading: 4pt, justify: false)
              #align(center)[
                #text(fill: color.darken(25%), font: font,
                  size: 18pt, weight: "black")[#upper(title)]
              ]
            ]
          ]
          #v(2pt, weak: false)
          #align(center)[
            #box(height: 3pt)[
              #stack(dir: ltr, spacing: 4pt,
                line(length: 32pt, stroke: (paint: color, thickness: 2pt, cap: "round")),
                line(length: 12pt, stroke: (paint: color.lighten(45%), thickness: 2pt, cap: "round")),
              )
            ]
          ]
        ],
      )
      ] else [
        #set block(above: 0pt, below: 0pt)
        #set par(leading: 4pt, justify: false)
        #align(center)[
          #box(fill: color, radius: 20pt, inset: (x: 12pt, y: 4pt))[
            #text(fill: white, font: font, size: 9pt, weight: "bold")[CHƯƠNG #num]
          ]
        ]
        #v(6pt, weak: false)
        #block(width: 100%, fill: color.lighten(75%), radius: 7pt,
          inset: (right: 3pt, bottom: 3pt))[
          #block(width: 100%, fill: color.lighten(95%), stroke: 1.2pt + color,
            radius: 6pt, inset: (x: 14pt, y: 9pt))[
            #align(center)[
              #text(fill: color.darken(25%), font: font, size: 18pt,
                weight: "black")[#upper(title)]
            ]
          ]
        ]
        #v(2pt, weak: false)
        #align(center)[
          #box(height: 3pt)[
            #stack(dir: ltr, spacing: 4pt,
              line(length: 32pt, stroke: (paint: color, thickness: 2pt, cap: "round")),
              line(length: 12pt, stroke: (paint: color.lighten(45%), thickness: 2pt, cap: "round")),
            )
          ]
        ]
      ]
      ]
      let wrapper-height = measure(wrapper, width: size.width + mx * 2, height: 1000pt).height
      block(width: size.width, height: calc.max(0pt, wrapper-height - my) + 12pt,
        above: 0pt, below: 0pt)[
        #place(top + left, dx: -mx, dy: -my)[
          #box(width: size.width + mx * 2, height: wrapper-height)[#wrapper]
        ]
      ]
    })
  }
  v(15pt)
}

#let _vp-lesson-basic(
  num: "1", title: "TÊN BÀI HỌC", style: "less_ribbon",
  tab-text: "BÀI", subtitle: none, color: auto,
  font: ("Rounded Mplus 1c", "Arial"),
) = context {
  let color = vp-resolve-color(color)
  let ribbon = style == "less_ribbon"
  set par(first-line-indent: 0pt)
  let title-content = [
    #set block(above: 0pt, below: 0pt)
    #set par(leading: 3pt, spacing: 0pt, justify: false)
    #text(font: font, fill: color.darken(25%),
      size: 14pt, weight: "black")[#upper(title)]
    #if subtitle != none and subtitle != "" [
      #v(4pt, weak: false)
      #text(font: font, fill: color.darken(10%),
        size: 9pt)[#subtitle]
    ]
  ]
  let badge = block(width: 48pt, fill: if ribbon { white } else { color },
    radius: 5pt, inset: (x: 4pt, y: 7pt))[
    #set par(leading: 2pt, justify: false)
    #align(center)[
      #stack(dir: ttb, spacing: 3pt,
        text(font: font, size: 7pt, weight: "bold",
          fill: if ribbon { color } else { color.lighten(85%) })[#upper(tab-text)],
        text(font: font, size: 21pt, weight: "black",
          fill: if ribbon { color.darken(20%) } else { white })[#num],
      )
    ]
  ]
  v(8pt)
  if ribbon {
    block(width: 100%, breakable: false)[
      #layout(size => {
        let row = block(width: size.width,
          inset: (left: 88pt, right: 16pt, top: 14pt, bottom: 14pt))[
          #title-content
        ]
        let h = calc.max(72pt, measure(row, width: size.width, height: 1000pt).height)
        let ribbon-height = h + 4pt
        let points = ((0pt, 0pt), (56pt, 0pt), (56pt, ribbon-height),
          (28pt, ribbon-height - 12pt), (0pt, ribbon-height))
        block(width: size.width, height: h + 8pt)[
          #place(top + left)[
            #rect(width: size.width, height: h, fill: color.lighten(97%),
              stroke: (paint: color.lighten(20%), thickness: 1pt, dash: "dashed"))
          ]
          #place(top + left)[
            #box(width: size.width, height: h)[#align(left + horizon)[#row]]
          ]
          // Fold behind the top edge, then a shadow and a notched ribbon face.
          #place(top + left, dx: 16pt, dy: -8pt)[
            #polygon(fill: color.darken(45%),
              (0pt, 8pt), (8pt, 0pt), (64pt, 0pt), (64pt, 8pt))
          ]
          #place(top + left, dx: 27pt, dy: -5pt)[
            #polygon(fill: color.lighten(65%), ..points)
          ]
          #place(top + left, dx: 24pt, dy: -8pt)[
            #polygon(fill: color, ..points)
          ]
          #place(top + left, dx: 24pt, dy: -8pt)[
            #line(start: (3pt, 2pt), end: (3pt, ribbon-height - 5pt),
              stroke: 1pt + color.lighten(45%))
          ]
          #place(top + left, dx: 24pt, dy: -8pt)[
            #box(width: 56pt, height: ribbon-height - 12pt)[
              #align(center + horizon)[
                #stack(dir: ttb, spacing: 6pt,
                  text(font: font, size: 7pt, fill: white, weight: "bold")[#upper(tab-text)],
                  box(fill: white, radius: 4pt, inset: (x: 8pt, y: 4pt))[
                    #text(font: font, size: 21pt, fill: color.darken(20%), weight: "black")[#num]
                  ],
                )
              ]
            ]
          ]
        ]
      })
    ]
  } else {
    block(width: 100%, breakable: false, fill: color.lighten(96%),
      stroke: (left: 3pt + color, rest: 0.7pt + color.lighten(65%)),
      radius: 7pt, inset: (x: 12pt, y: 10pt))[
      #grid(columns: (48pt, 1fr), column-gutter: 12pt, align: horizon,
        badge, title-content)
    ]
  }
  v(5pt)
}

// Outline-only lesson style; the old name remains a compatibility alias.
#let vp-lesson-star(
  num: "1", title: "Tên bài học", subtitle: none,
  color: auto, font: ("Rounded Mplus 1c", "Arial"), tab-text: "BÀI HỌC",
) = context {
  let c = vp-resolve-color(color)
  set par(first-line-indent: 0pt)
  v(8pt)
  block(width: 100%, breakable: false)[
    #grid(columns: (78pt, 1fr), column-gutter: 12pt, align: horizon,
      box(width: 78pt, height: 78pt)[
        #let points = range(16).map(i => {
          let angle = -90deg + i * 22.5deg
          let r = if calc.rem(i, 2) == 0 { 37pt } else { 28pt }
          (39pt + r * calc.cos(angle), 39pt + r * calc.sin(angle))
        })
        #place(top + left)[
          #polygon(fill: none, stroke: (paint: c, thickness: 1.5pt, join: "round"), ..points)
        ]
        #place(center + horizon)[
          #stack(dir: ttb, spacing: 3pt,
            text(font: font, fill: c, size: 7pt, weight: "bold")[#upper(tab-text)],
            line(length: 27pt, stroke: 0.7pt + c.lighten(35%)),
            text(font: font, fill: c.darken(20%), size: 21pt, weight: "black")[#num],
          )
        ]
      ],
      block(width: 100%, stroke: (top: 0.8pt + c.lighten(45%), bottom: 1.2pt + c),
        inset: (x: 8pt, y: 10pt))[
        #set block(above: 0pt, below: 0pt)
        #set par(leading: 3pt, spacing: 0pt, justify: false)
        #text(font: font, fill: c.darken(25%), size: 14pt, weight: "black")[#upper(title)]
        #if subtitle != none and subtitle != "" [
          #v(4pt, weak: false)
          #text(font: font, fill: c.darken(10%), size: 9pt)[#subtitle]
        ]
      ],
    )
  ]
  v(5pt)
}

#let vp-lesson-title = vp-lesson-star

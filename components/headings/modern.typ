#import "../document_state.typ": *
#import "../../themes/theme_colors.typ": *

#let vp-chapter-modern(
  num: "1",
  title: "TÊN CHƯƠNG",
  style: "chap_hexagon", // Keep parameter for backward compatibility
  color: auto,
  font: "Arial",
) = [
  #set par(first-line-indent: 0pt)
  #block[
    #context {
      let pal = vp-resolve-palette(custom-color: color)
      let c = pal.primary
      let c-dark = pal.dark

      let m = page.margin
      let margin-x = if type(m) == dictionary and "x" in m { m.x } else if type(m) == dictionary and "left" in m {
        m.left
      } else if type(m) == length or type(m) == relative { m } else { 2cm }
      let margin-y = if type(m) == dictionary and "top" in m { m.top } else if type(m) == dictionary and "y" in m {
        m.y
      } else if type(m) == length or type(m) == relative { m } else { 2.5cm }

      layout(size => {
        let w = size.width.pt()
        let mx = if type(margin-x) == relative { margin-x.length.pt() } else { margin-x.pt() }
        let Wf = w + mx * 2

        let raw-svg = read("../../layout/design-assets/chapter-bg.svg")
        let colored-svg = raw-svg
          .replace("#657f76", c.darken(20%).to-hex())
          .replace("#aab0c4", c.to-hex())
          .replace("#ededf4", c.lighten(60%).to-hex())

        let title-width = w * 1pt - 110pt
        let title-size = 18pt
        let make-title(width, font-size) = block(
          width: width,
          breakable: false,
          fill: rgb(255, 255, 255, 85%),
          stroke: 2pt + c, radius: 6pt, inset: (x: 15pt, y: 6pt),
        )[
          #set par(leading: 4pt, justify: false)
          #align(center + horizon)[
            #text(font: font, fill: c-dark,
              size: font-size, weight: "black")[#upper(title)]
          ]
        ]
        // The wrapper spans from the page top to the bottom of the chapter.
        // Reserve an illustration as tall as this entire wrapper.
        // Long titles can use a smaller font instead of overlapping the image.
        let title-height = 0pt
        let fitted = false
        for font-size in range(18, 7, step: -1) {
          title-size = font-size * 1pt
          for width in range(calc.floor(w - 110), 159, step: -4) {
            title-width = width * 1pt
            title-height = measure(make-title(title-width, title-size), width: title-width).height
            let wrapper-height = calc.max(80pt, title-height + 24pt)
            if title-width + wrapper-height * 5834 / 4084 + 80pt <= w * 1pt + mx * 1pt {
              fitted = true
              break
            }
          }
          if fitted { break }
        }
        let title-box = make-title(title-width, title-size)
        title-height = measure(title-box, width: title-width).height
        let row-height = calc.max(80pt, title-height + 24pt)
        let banner = box(width: w * 1pt, height: calc.max(0pt, row-height - margin-y) + 12pt)[

          #place(top + left, dx: 0pt, dy: -margin-y)[
            #box(width: w * 1pt, height: row-height)[
              #place(top + left, dx: -margin-x)[
                #box(width: Wf * 1pt, height: row-height)[
                  #scale(x: -100%, y: -100%, origin: center)[
                    #image(bytes(colored-svg), format: "svg", width: Wf * 1pt,
                      height: row-height, fit: "stretch")
                  ]
                ]
              ]
              #place(top + left, dx: 0pt, dy: (row-height - 52pt) / 2)[
                #box(width: 60pt, height: 52pt)[
                  #let hw = 60pt
                  #let hh = 52pt
                  #let hex-points = (
                    (hw * 0.25, 0pt),
                    (hw * 0.75, 0pt),
                    (hw, hh * 0.5),
                    (hw * 0.75, hh),
                    (hw * 0.25, hh),
                    (0pt, hh * 0.5),
                  )

                  #place(top + left, dx: 3pt, dy: 3pt)[
                    #polygon(fill: c.darken(60%), ..hex-points)
                  ]
                  #place(top + left)[
                    #polygon(fill: white, stroke: (paint: c, thickness: 2pt), ..hex-points)
                  ]
                  #place(center + horizon)[
                    #set text(font: font, fill: c-dark, weight: "bold")
                    #stack(dir: ttb, spacing: 3pt,
                      text(size: 8pt)[CHƯƠNG],
                      line(length: 35pt, stroke: (paint: c, thickness: 1pt)),
                      text(size: 20pt)[#num],
                    )
                  ]
                ]
              ]

              #place(top + left, dx: 70pt, dy: (row-height - title-height) / 2)[
                #title-box
              ]

              #let fuji-svg = read("../../layout/design-assets/fujitori.svg")
              #let colored-fuji = (
                fuji-svg
                  .replace("#e6564b", c.to-hex())
                  .replace("#af3e38", c.darken(30%).to-hex())
                  .replace("#f9e1d7", c.lighten(80%).to-hex())
                  .replace("#e2cbc3", c.lighten(60%).to-hex())
              )

              #place(top + right, dx: margin-x)[
                #image(bytes(colored-fuji), format: "svg", height: row-height)
              ]
            ]
          ]
        ]

        banner
      })
    }
  ]
]

#let vp-lesson-modern(
  num: "1",
  title: "TÊN BÀI HỌC",
  subtitle: none,
  style: "less_modern",
  color: auto,
  font: "Rounded Mplus 1c",
  tab-text: "BÀI HỌC",
) = [
  #set par(first-line-indent: 0pt)
  #v(15pt)
  #context [
    #let pal = vp-resolve-palette(custom-color: color)
    #let c = pal.primary
    #let c-dark = pal.dark

    #layout(size => [
      #let w = size.width
      #let offset = 15pt

      #let text-content = block(
        width: w,
        inset: (left: 71pt, right: 15pt + offset, top: 11pt, bottom: 11pt),
      )[
        #set par(leading: 6pt)
        #let kunai-svg-raw = read("../../layout/design-assets/HocKage_Icon_Kunai.svg")
        #let kunai-colorized = (
          kunai-svg-raw
            .replace("#d6d6d6", c.lighten(40%).to-hex())
            .replace("#c9c9c9", c.lighten(20%).to-hex())
            .replace("#bdbdbd", c.to-hex())
            .replace("#aa9d9d", c.darken(20%).to-hex())
            .replace("#6b6b6b", c.darken(50%).to-hex())
        )

        #let kunai-img = box(baseline: 1.5pt)[#image(bytes(kunai-colorized), format: "svg", height: 6.75pt)]

        #let kunai-line = box(width: 1fr, inset: (x: 6pt), baseline: -1pt)[
          #line(length: 100%, stroke: (paint: c, thickness: 1.1pt))
        ]

        #if subtitle != none and subtitle != "" [
          #text(fill: c-dark, font: font, size: 13.5pt, weight: "black")[#upper(title)]
          #linebreak()
          #v(3pt)
          #text(fill: c, font: font, size: 8.5pt, weight: "bold", style: "italic")[
            #upper(subtitle)
            #kunai-line
            #kunai-img
          ]
        ] else [
          #text(fill: c-dark, font: font, size: 13.5pt, weight: "black")[
            #upper(title)
            #kunai-line
            #kunai-img
          ]
        ]
      ]

      #let h = measure(text-content).height

      #let s-dx = 3pt
      #let s-dy = 3pt
      #place(top + left, dx: s-dx, dy: s-dy)[
        #line(start: ((w - offset) * 0.25, h), end: (w - offset, h), stroke: (
          paint: c.darken(25%),
          thickness: 3.75pt,
          cap: "round",
        ))
      ]
      #place(top + left, dx: s-dx, dy: s-dy)[
        #line(start: (w - offset, h), end: (w - 0.25 * offset, 0.25 * h), stroke: (
          paint: c.darken(25%),
          thickness: 3.75pt,
          cap: "round",
        ))
      ]

      #place(top + left)[
        #polygon(
          fill: white,
          stroke: (paint: c, thickness: 1.1pt),
          (offset, 0pt),
          (w, 0pt),
          (w - offset, h),
          (0pt, h),
        )
      ]

      #text-content

      #let badge-h = h + 12pt
      #let badge-w = 64pt
      #let b-offset = 13.5pt

      #place(left + top, dx: -7.5pt, dy: -6pt)[
        #box(width: badge-w, height: badge-h)[
          #place(top + left, dx: 3pt, dy: 3pt)[
            #polygon(
              fill: c.darken(40%),
              stroke: (paint: c.darken(40%), thickness: 4.5pt, join: "round"),
              (b-offset, 0pt),
              (badge-w, 0pt),
              (badge-w - b-offset, badge-h),
              (0pt, badge-h),
            )
          ]
          #place(top + left)[
            #polygon(
              fill: c,
              stroke: (paint: c, thickness: 4.5pt, join: "round"),
              (b-offset, 0pt),
              (badge-w, 0pt),
              (badge-w - b-offset, badge-h),
              (0pt, badge-h),
            )
          ]
          #place(center + horizon)[#text(fill: white, size: 27pt, weight: "black", font: font)[#num]]
        ]
      ]

      #let tab-w = if tab-text == "BÀI HỌC" { 49pt } else { 65pt }
      #let tab-h = 12pt
      #let tab-offset = (tab-h / badge-h) * b-offset
      #let tab-dy = -4.5pt
      #let tab-dx = 61.5pt

      #place(top + left, dx: tab-dx, dy: tab-dy)[
        #box(width: tab-w, height: tab-h)[
          #place(top + left)[
            #polygon(
              fill: c.darken(60%),
              (tab-w, 0pt),
              (tab-w + 4.5pt, 4.5pt),
              (tab-w - (4.5pt / tab-h) * tab-offset, 4.5pt),
            )
          ]

          #place(top + left)[
            #polygon(
              fill: c,
              (tab-offset, 0pt),
              (tab-w, 0pt),
              (tab-w - tab-offset, tab-h),
              (0pt, tab-h),
            )
          ]

          #place(center + horizon)[
            #text(fill: white, weight: "bold", size: 6.75pt, font: font)[#upper(tab-text)]
          ]
        ]
      ]

    ])
  ]
  #v(10pt)
]



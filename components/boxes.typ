#import "media.typ": *
#import "@preview/fontawesome:0.6.2": *

#let vp-note(
  title: "Ghi nhớ",
  icon: "logo",
  color: rgb("#5F9E31"),
  bg-color: rgb("#FEE57E"),
  body
) = context layout(size => {
  let fold-size = 20pt

  let content-block = block(
    width: 100%,
    inset: (top: 35pt, left: 20pt, right: 20pt, bottom: 20pt),
    [
      #set text(size: 11pt)
      #set par(leading: 8pt)
      #show math.equation.where(block: false): it => box(inset: (y: 6pt), it)
      #block(
        width: 100%,
        inset: (bottom: 6pt),
        stroke: (bottom: (dash: "dashed", paint: bg-color.darken(30%), thickness: 0.5pt)),
        body,
      )
    ]
  )

  let m = measure(content-block, width: size.width)
  let box-w = m.width
  let box-h = m.height

  let fold-color = bg-color.darken(15%)
  let shadow-color = color.darken(15%) // Bóng màu xanh đậm (nếu color là xanh)

  block(width: box-w, height: box-h, breakable: false)[
    #box(width: box-w, height: box-h)[

      #place(dx: 4pt, dy: 4pt)[
        #polygon(
          fill: shadow-color,
          (0pt, 0pt), (box-w, 0pt), (box-w, box-h), (0pt, box-h)
        )
      ]

      #place(dx: 0pt, dy: 0pt)[
        #polygon(
          fill: bg-color,
          (0pt, 0pt),
          (box-w, 0pt),
          (box-w, box-h - fold-size),
          (box-w - fold-size, box-h),
          (0pt, box-h)
        )
      ]

      #place(dx: box-w - fold-size, dy: box-h - fold-size)[
        #polygon(
          fill: fold-color,
          (0pt, 0pt),
          (fold-size, 0pt),
          (0pt, fold-size)
        )
      ]

      #place(dx: 0pt, dy: 0pt)[#content-block]

      #let badge-icon = if icon == "logo" {
        vp-logo(color: color, color2: bg-color.darken(40%), height: 16pt)
      } else if icon != none { fa-icon(icon) } else { [] }
      #let badge-content = grid(
        columns: (auto, auto, auto, auto),
        column-gutter: 8pt,
        align: horizon,
        circle(radius: 3pt, fill: color),
        badge-icon,
        text(fill: color, font: ("Rounded Mplus 1c", "Arial"), weight: "bold", size: 14pt)[#title],
        circle(radius: 3pt, fill: color),
      )
      #let badge-m = measure(badge-content)
      #let bw = badge-m.width + 30pt
      #let bh = badge-m.height + 12pt
      #let cut = 10pt // Kích thước vạt góc của huy hiệu

      #place(top + center, dy: -bh / 2)[
        #box(width: bw, height: bh)[
          #place()[
            #polygon(
              fill: white,
              stroke: (dash: "dashed", paint: color, thickness: 1pt),
              (cut, 0pt),
              (bw - cut, 0pt),
              (bw, bh / 2),
              (bw - cut, bh),
              (cut, bh),
              (0pt, bh / 2)
            )
          ]
          #place(center + horizon)[#badge-content]
        ]
      ]
    ]
  ]
})

// Footer templates and manual presets.
#import "@preview/fontawesome:0.6.2": *
#import "../themes/theme_colors.typ": *
#import "graphics.typ": *
#import "header_widgets.typ": *
#let vp-footer(
  left-text: "",
  center-text: "",
  right-text: "",
  color: rgb("#000000"),
  line-width: 1pt,
) = {
  block(width: 100%, stroke: (top: line-width + color), inset: (top: 5pt))[
    #grid(
      columns: (1fr, auto, 1fr),
      align(left)[#text(fill: color, size: 10pt)[#left-text]],
      align(center)[#text(fill: color, size: 10pt)[#center-text]],
      align(right)[#text(fill: color, size: 10pt)[#right-text]],
    )
  ]
}

// ==========================================
// MẪU FOOTER: HỌC KAGE (NINJA THEME)
// ==========================================
#let vp-footer-kage(
  color: rgb("#FF3D00"),
  kunai-path: "kunai.svg",
  slogan: "Level Up Your Knowledge",
) = context {
  let page-num = counter(page).display()

  block(width: 100%)[
    // 1. Đường gạch ngang phân cách tài liệu (màu xám nhạt, nét mảnh)
    #line(length: 100%, stroke: 0.5pt + rgb("#a0a0a0"))

    // Tạo một chút khoảng trống
    #v(-10pt)

    // 2. Nội dung Footer
    #grid(
      columns: (1fr, auto),
      align: (left + horizon, right + horizon),

      // CỘT TRÁI: Dùng một GRID con gồm 3 cột tự động (auto)
      grid(
        columns: (auto, auto, auto),
        // 3 phần tử -> 3 cột
        column-gutter: 8pt,
        // Khoảng cách giữa các cột
        align: horizon,
        // Canh giữa theo chiều dọc chuẩn xác!

        text(fill: color, weight: "bold", size: 12pt)[Học Kage],
        if kunai-path == auto { image("kunai.svg", height: 8pt) } else if kunai-path != none {
          image(kunai-path, height: 8pt)
        },
        text(weight: "bold", size: 12pt)[#slogan],
      ),

      // CỘT PHẢI: KHỐI SHURIKEN MỚI
      box(width: 32pt, height: 32pt)[
        #place(top + left)[
          // Lệnh xoay toàn bộ phi tiêu 30 độ sang trái
          #rotate(-30deg)[
            #polygon(
              fill: color,
              // Tọa độ mới: Các góc lõm được đẩy ra xa tâm giúp cánh mập hơn
              (16pt, 0pt),
              (22pt, 10pt),
              (32pt, 16pt),
              (22pt, 22pt),
              (16pt, 32pt),
              (10pt, 22pt),
              (0pt, 16pt),
              (10pt, 10pt),
            )
          ]
        ]
        #place(center + horizon)[
          #circle(radius: 8.5pt, fill: white, stroke: none)
        ]
        #place(center + horizon)[
          #text(fill: color, weight: "bold", size: 9pt)[#page-num]
        ]
      ],
    )
  ]
}
#let vp-footer-shuriken(
  title: "Học Kage",
  slogan: "Level Up Your Knowledge",
  color: auto,
  accent-color: auto,
  icon: "kunai", // "kunai", "shuriken", "logo", or custom content / none
  divider: "line", // "line", "brush", "none"
  page-format: "1", // "1" or "1 / total"
  compact: false,
  font: auto,
  title-size: auto, slogan-size: auto, page-size: auto,
  badge-size: auto, page-radius: auto, icon-size: auto, column-gap: auto,
  divider-gap: auto,
) = context {
  set text(font: font) if font != auto
  let main-c = if color == auto { vp-theme-color.get() } else { _vp-brush-color(color) }
  let acc-c = if accent-color == auto { rgb("#B08D57") } else { _vp-brush-color(accent-color) }
  let page-num = if page-format == "1 / total" {
    let cur = counter(page).display("1")
    let tot = counter(page).final().first()
    [#cur / #tot]
  } else {
    counter(page).display("1")
  }

  let badge-size = if badge-size != auto { badge-size } else if compact { 27pt } else { 36pt }
  block(width: 100%)[
    #if divider == "line" [
      #line(length: 100%, stroke: 0.5pt + rgb("#CBD5E1"))
      #v(if divider-gap == auto { -8pt } else { divider-gap })
    ] else if divider == "brush" [
      #vp-brush("banner-ribbon-02", color: main-c.lighten(50%), width: 100%, height: 3pt)
      #v(if divider-gap == auto { -6pt } else { divider-gap })
    ] else [
      #v(if divider-gap == auto { 2pt } else { divider-gap })
    ]

    #grid(
      columns: (1fr, auto),
      align: (left + horizon, right + horizon),

      grid(
        columns: (auto, auto, auto),
        column-gutter: if column-gap != auto { column-gap } else if compact { 5pt } else { 8pt },
        align: horizon,

        text(fill: main-c, weight: "bold", size: if title-size != auto { title-size } else if compact { 12pt } else { 14pt })[#title],

        if icon == "kunai" {
          _vp-modern-icon-kunai(color: main-c, width: if icon-size == auto { 24pt } else { icon-size }, angle: 0deg)
        } else if icon == "shuriken" {
          _vp-modern-icon-shuriken(color: main-c, size: if icon-size == auto { 9.5pt } else { icon-size })
        } else if icon == "logo" {
          _vp-logo-badge(primary: main-c, size: if icon-size == auto { 13pt } else { icon-size })
        } else if icon != none {
          icon
        } else {
          none
        },

        if slogan != none and slogan != "" {
          text(fill: rgb("#475569"), weight: "medium", size: if slogan-size != auto { slogan-size } else if compact { 10pt } else { 12pt })[#slogan]
        },
      ),

      box(width: badge-size, height: badge-size)[
        #place(center + horizon)[
          #_vp-modern-icon-shuriken(color: main-c, size: badge-size)
        ]
        #place(center + horizon)[
          #circle(radius: if page-radius != auto { page-radius } else if compact { 6pt } else { 7pt }, fill: white)
        ]
        #place(center + horizon)[
          #text(fill: main-c, weight: "bold", size: if page-size != auto { page-size } else if compact { 9pt } else { 11pt })[#page-num]
        ]
      ],
    )
  ]
}
#let vp-footer-kage-enso(
  title: "Học Kage",
  slogan: "Level Up Your Knowledge",
  color: auto,
  accent-color: auto,
  icon: "kunai", // "kunai", "shuriken", "logo", or custom content / none
  enso-style: "zen", // "zen", "grunge", "ring-09", "ring-01", "ring-10"
  divider: "line", // "line", "brush", "none"
  page-format: "1", // "1" or "1 / total"
) = context {
  let main-c = if color == auto { vp-theme-color.get() } else { _vp-brush-color(color) }
  let acc-c = if accent-color == auto { rgb("#B08D57") } else { _vp-brush-color(accent-color) }
  let page-num = if page-format == "1 / total" {
    let cur = counter(page).display("1")
    let tot = counter(page).final().first()
    [#cur / #tot]
  } else {
    counter(page).display("1")
  }

  block(width: 100%)[
    #if divider == "line" [
      #line(length: 100%, stroke: 0.5pt + rgb("#CBD5E1"))
      #v(-8pt)
    ] else if divider == "brush" [
      #vp-brush("banner-ribbon-02", color: main-c.lighten(50%), width: 100%, height: 3pt)
      #v(-6pt)
    ] else [
      #v(2pt)
    ]

    #grid(
      columns: (1fr, auto),
      align: (left + horizon, right + horizon),

      grid(
        columns: (auto, auto, auto),
        column-gutter: 8pt,
        align: horizon,

        text(fill: main-c, weight: "bold", size: 11pt)[#title],

        if icon == "kunai" {
          _vp-modern-icon-kunai(color: main-c, width: 24pt, angle: 0deg)
        } else if icon == "shuriken" {
          _vp-modern-icon-shuriken(color: main-c, size: 9.5pt)
        } else if icon == "logo" {
          _vp-logo-badge(primary: main-c, size: 13pt)
        } else if icon != none {
          icon
        } else {
          none
        },

        if slogan != none and slogan != "" {
          text(fill: rgb("#475569"), weight: "medium", size: 10pt)[#slogan]
        },
      ),

      box(width: 28pt, height: 28pt)[
        #place(center + horizon)[
          #if enso-style == "grunge" {
            vp-brush("enso-grunge", color: main-c, width: 28pt, height: 28pt)
          } else if enso-style == "ring-09" {
            vp-brush("enso-ring-09", color: main-c, width: 28pt, height: 28pt)
          } else if enso-style == "ring-01" {
            vp-brush("enso-ring-01", color: main-c, width: 28pt, height: 28pt)
          } else if enso-style == "ring-10" {
            vp-brush("enso-ring-10", color: main-c, width: 28pt, height: 28pt)
          } else {
            let svg = (
              "<svg viewBox=\"0 0 100 100\" xmlns=\"http://www.w3.org/2000/svg\"><path d=\"M50 8 C68 8, 86 20, 91 38 C95 52, 91 69, 81 80 C70 92, 53 95, 38 93 C22 91, 9 78, 6 62 C3 46, 11 29, 24 18 C32 11, 42 7, 52 7 C55 7, 57 8, 56 10 C55 12, 52 13, 49 13 C38 14, 27 20, 20 28 C11 38, 8 52, 12 65 C16 78, 28 87, 41 89 C55 91, 69 85, 78 75 C87 64, 90 49, 86 36 C82 22, 69 13, 54 13 C47 13, 41 15, 36 18 C33 20, 31 18, 33 16 C37 12, 44 9, 50 8 Z\" fill=\""
                + main-c.to-hex()
                + "\"/><path d=\"M88 32 C91 42, 90 55, 84 64 C83 66, 81 65, 82 63 C86 54, 87 43, 84 34 C83 31, 85 30, 88 32 Z\" fill=\""
                + acc-c.to-hex()
                + "\" opacity=\"0.85\"/><path d=\"M14 68 C11 58, 12 46, 17 37 C18 35, 20 36, 19 38 C15 47, 14 57, 17 66 C18 69, 16 70, 14 68 Z\" fill=\""
                + main-c.to-hex()
                + "\" opacity=\"0.6\"/></svg>"
            )
            image(bytes(svg), width: 28pt, height: 28pt)
          }
        ]
        #place(center + horizon)[
          #circle(radius: 8.5pt, fill: white.transparentize(15%))
        ]
        #place(center + horizon)[
          #text(fill: main-c, weight: "bold", size: 8.5pt)[#page-num]
        ]
      ],
    )
  ]
}

#let vp-footer-kage-brush = vp-footer-kage-enso

#let vp-footer-ninja-enso = vp-footer-kage-enso

#let vp-manual-footer-standard() = vp-footer-kage(
  color: rgb("#1D3B7A"),
  kunai-path: auto,
  slogan: "Vietphys Typst Engine • Sách & Đề Thi Chuẩn Quốc Gia",
)

#let vp-manual-footer-fancy(
  slogan: "Vietphys Typst Engine • Sách & Đề Thi Chuẩn Quốc Gia",
  color: rgb("#1D3B7A"),
) = context {
  let pal = vp-resolve-palette(custom-color: color)
  let c = pal.primary
  let page-num = counter(page).display()

  block(width: 100%)[
    #line(length: 100%, stroke: 0.5pt + rgb("#a0a0a0"))
    #v(-10pt)

    #grid(
      columns: (1fr, auto),
      align: (left + horizon, right + horizon),

      grid(
        columns: (auto, auto, auto),
        column-gutter: 8pt,
        align: horizon,

        text(fill: c, weight: "bold", size: 12pt)[Học Kage],
        _vp-modern-icon-kunai(color: c, width: 26pt, angle: 0deg),
        text(fill: pal.dark, weight: "bold", size: 12pt)[#slogan],
      ),

      box(width: 32pt, height: 32pt)[
        #place(top + left)[
          #rotate(0deg)[
            #polygon(
              fill: c.darken(20%),
              (16pt, 16pt),
              (16pt, 0pt),
              (22pt, 10pt),
              (16pt, 16pt),
              (32pt, 16pt),
              (22pt, 22pt),
              (16pt, 16pt),
              (16pt, 32pt),
              (10pt, 22pt),
              (16pt, 16pt),
              (0pt, 16pt),
              (10pt, 10pt),
            )
            #polygon(
              fill: c,
              (16pt, 16pt),
              (16pt, 0pt),
              (10pt, 10pt),
              (16pt, 16pt),
              (0pt, 16pt),
              (10pt, 22pt),
              (16pt, 16pt),
              (16pt, 32pt),
              (22pt, 22pt),
              (16pt, 16pt),
              (32pt, 16pt),
              (22pt, 10pt),
            )
          ]
        ]
        #place(center + horizon)[
          #circle(radius: 8.5pt, fill: white, stroke: none)
        ]
        #place(center + horizon)[
          #text(fill: c, weight: "bold", size: 9pt)[#page-num]
        ]
      ],
    )
  ]
}

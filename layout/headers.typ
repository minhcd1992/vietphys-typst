// Header templates. Theme numbers and public signatures remain stable.
#import "@preview/fontawesome:0.6.2": *
#import "../themes/theme_colors.typ": *
#import "graphics.typ": *
#import "header_widgets.typ": *
#let _vp-render-right-text(right-content, date, color, font: "Times New Roman") = {
  let content = if right-content != none { right-content } else { date }
  if content != none { text(fill: color, font: font, size: 9pt, weight: "bold")[#content] }
}
#let _vp-render-right-info(right-content, date, color, font: "Times New Roman") = {
  if right-content != none {
    if type(right-content) == str {
      vp-widget-pill(right-content, color: color, font: font)
    } else {
      right-content
    }
  } else if date != none and date != "" {
    vp-widget-date(date: date, color: color, font: font)
  } else {
    vp-widget-part(color: color, font: font)
  }
}

// Lề trái của trang hiện tại; header tràn viền dời sang trái đúng bằng lề này.
#let _vp-margin-left() = {
  let m = page.margin
  let d = calc.min(page.width, page.height) * 2.5 / 21
  let v = if m == auto { d } else if type(m) == dictionary {
    m.at("left", default: m.at("x", default: m.at("inside", default: m.at("rest", default: d))))
  } else { m }
  if type(v) == length { v } else { d }
}
// Khung tràn viền: rộng đúng bề ngang trang, bắt đầu ở mép giấy trái, với mọi khổ giấy và lề.
#let _vp-bleed(dy: 0pt, body) = context place(top + left, dx: -_vp-margin-left(), dy: dy, block(width: page.width, body))

#let vp-header(
  left-text: "",
  center-text: "",
  right-text: "",
  color: rgb("#000000"),
  line-width: 1pt,
) = {
  block(width: 100%, stroke: (bottom: line-width + color), inset: (bottom: 5pt))[
    #grid(
      columns: (1fr, auto, 1fr),
      align(left)[#text(fill: color, size: 10pt)[#left-text]],
      align(center)[#text(fill: color, size: 10pt, weight: "bold")[#center-text]],
      align(right)[#text(fill: color, size: 10pt)[#right-text]],
    )
  ]
}

// ==========================================
// HEADER HIỆN ĐẠI: THANH ỨNG DỤNG GỌN, TỰ HIỆN CHƯƠNG / BÀI
// ==========================================
// style: "line" — đường kẻ mảnh tô gradient nhạt dần, vạch nhấn ngắn dưới huy hiệu;
//        "card" — thẻ nổi bo góc nền nhạt.
// icon: tên Font Awesome, content, hoặc none (dùng chữ cái đầu của title làm monogram).
// info: auto hiện chip CHƯƠNG n + tên bài hiện tại (từ vp-chapter / vp-lesson); chuỗi hoặc content hiện nguyên; none để trống.
#let vp-header-modern(
  title: "VẬT LÍ 12",
  subtitle: none,
  color: auto,
  icon: "atom",
  info: auto,
  style: "line",
  font: auto,
  title-size: 11pt,
  badge-size: 24pt,
) = context {
  let c = vp-resolve-color(color)
  let dam = c.darken(35%)
  let diu = luma(45%)
  set text(font: font) if font != auto
  set par(justify: false, leading: 0.3em)

  let ky-hieu = if icon == none {
    let s = if type(title) == str { title.trim() } else { "" }
    text(fill: white, weight: "bold", size: badge-size * 0.5, if s.len() > 0 { upper(s.clusters().first()) } else { [V] })
  } else if type(icon) == str { text(fill: white, size: badge-size * 0.52, fa-icon(icon)) } else { icon }
  let huy-hieu = box(width: badge-size, height: badge-size, radius: badge-size * 0.3,
    fill: gradient.linear(c.lighten(18%), c.darken(22%), angle: 45deg), align(center + horizon, ky-hieu))

  let ten = stack(dir: ttb, spacing: 3pt,
    text(fill: dam, weight: "bold", size: title-size, tracking: 0.2pt, title),
    if subtitle != none { text(fill: diu, size: title-size * 0.66, tracking: 0.9pt, upper(subtitle)) })

  let duong-dan = if info == auto {
    let pg = here().page()
    let ch = query(<vp-chapter-info>).filter(x => x.location().page() <= pg).at(-1, default: none)
    let bai = query(<vp-lesson-title>).filter(x => x.location().page() <= pg
      and (ch == none or x.location().page() >= ch.location().page())).at(-1, default: none)
    let chip = if ch != none {
      box(fill: c, radius: 20pt, inset: (x: 7pt, y: 3.5pt),
        text(fill: white, weight: "bold", size: 7pt, tracking: 0.6pt)[CHƯƠNG #ch.value.num])
    }
    let ten-bai = if bai != none { text(fill: diu, size: 8pt, bai.value) }
    if chip != none or ten-bai != none {
      grid(columns: (auto, auto), column-gutter: 7pt, align: horizon, ..(chip, ten-bai).map(x => if x == none { [] } else { x }))
    }
  } else if info == none { none } else if type(info) == str { text(fill: diu, size: 8pt, info) } else { info }

  let hang = grid(columns: (auto, auto, 1fr, auto), column-gutter: 9pt, align: horizon,
    huy-hieu, ten, [], if duong-dan == none { [] } else { duong-dan })

  if style == "card" {
    block(width: 100%, fill: c.lighten(93%), stroke: 0.5pt + c.lighten(75%), radius: 8pt, inset: (x: 10pt, y: 7pt), hang)
  } else {
    block(width: 100%, inset: (bottom: 7pt), {
      hang
      place(bottom + left, dy: 7pt, rect(width: 100%, height: 0.8pt, stroke: none,
        fill: gradient.linear(c.lighten(20%), c.lighten(85%), white)))
      place(bottom + left, dy: 7.6pt, rect(width: badge-size, height: 2.4pt, radius: 1.2pt, stroke: none, fill: c))
    })
  }
}

#let vp-manual-header-standard() = vp-header-modern(
  title: "VIETPHYS PACKAGE",
  subtitle: "Cẩm nang hướng dẫn sử dụng",
  color: rgb("#1D3B7A"),
  icon: "book-open",
)

#let vp-manual-header-logo(
  title: "VIETPHYS PACKAGE",
  subtitle: "CẨM NANG HƯỚNG DẪN SỬ DỤNG",
  date: none,
  right-content: none,
  color: auto,
) = context {
  let pal = vp-resolve-palette(custom-color: color)
  let c = pal.primary

  _vp-bleed(dy: 5pt)[
    #block(width: 100%, height: 30pt)[
      #place(bottom)[#line(length: 100%, stroke: 0.5pt + c)]

      #grid(
        columns: (60pt, auto, 1fr, auto, 60pt),
        align: (left + horizon, left + horizon, center + horizon, right + horizon, right + horizon),

        [],

        grid(
          columns: (auto, auto),
          align: horizon,
          column-gutter: 10pt,
          vp-logo-colored(color: c, width: 30pt),
          align(left)[
            #text(fill: c, weight: "bold", size: 10pt)[#title]\
            #v(-4pt)
            #text(fill: c.lighten(20%), weight: "bold", size: 7pt)[#subtitle]
          ],
        ),

        [],

        align(right)[
          #_vp-render-right-info(right-content, date, c)
        ],

        [],
      )
    ]
  ]
}

#let vp-manual-header-fancy(
  title: "VIETPHYS PACKAGE",
  subtitle: "CẨM NANG HƯỚNG DẪN SỬ DỤNG",
  color: rgb("#1D3B7A"),
  icon: auto, // auto: logo V; content: custom icon
  compact: false,
  font: auto,
  title-size: auto, subtitle-size: auto, chapter-size: auto,
  icon-size: auto, title-gap: auto, column-gap: auto,
  bottom-padding: auto, chapter-inset: auto, divider-thickness: auto,
  chapter-label: auto, // auto: current chapter number; none: hide badge
) = context {
  set text(font: font) if font != auto
  let pal = vp-resolve-palette(custom-color: color)
  let c = pal.primary
  let title-size = if title-size != auto { title-size } else if compact { 12pt } else { 14pt }
  let subtitle-size = if subtitle-size != auto { subtitle-size } else if compact { 8pt } else { 9pt }
  let chapter-size = if chapter-size != auto { chapter-size } else if compact { 10pt } else { 12pt }
  let icon-size = if icon-size != auto { icon-size } else if compact { 18pt } else { 24pt }
  let bottom-padding = if bottom-padding != auto { bottom-padding } else if compact { 4pt } else { 8pt }
  let divider-thickness = if divider-thickness != auto { divider-thickness } else if compact { 0.7pt } else { 1.5pt }
  block(
    width: 100%,
    stroke: (bottom: divider-thickness + c),
    inset: (bottom: bottom-padding),
  )[
    #grid(
      columns: (auto, 1fr, auto),
      align: (left + horizon, left + horizon, right + horizon),

      grid(
        columns: (auto, auto),
        align: horizon,
        column-gutter: if icon == none { 0pt } else if column-gap != auto { column-gap } else if compact { 6pt } else { 10pt },
        if icon == auto or icon == "logo" { _vp-logo-badge(primary: c, size: icon-size) }
        else if icon == "atom" { vp-icon-atom(color: c, size: icon-size) } else { icon },
        if compact or title-gap != auto {
          stack(dir: ttb, spacing: if title-gap == auto { 4pt } else { title-gap }, text(fill: c, weight: "bold", size: title-size)[#title], text(
            fill: c.lighten(20%),
            size: subtitle-size,
          )[#subtitle])
        } else {
          align(left)[
            #text(fill: c, weight: "bold", size: title-size)[#title]\
            #v(-4pt)
            #text(fill: c.lighten(20%), weight: "bold", size: subtitle-size)[#subtitle]
          ]
        },
      ),

      [],

      align(right)[
        #let chaps = query(<vp-chapter-info>).filter(m => m.location().page() <= here().page())
        #let chapter-num = chaps.at(-1, default: (value: (num: ""))).value.num
        #let cur-chap = if chapter-label != auto {
          chapter-label
        } else if chapter-num != "" { [CHƯƠNG #chapter-num] } else { none }
        #if cur-chap != none and cur-chap != "" [
          #box(
            fill: c.transparentize(85%),
            inset: if chapter-inset != auto { chapter-inset } else if compact { (x: 6pt, y: 3pt) } else { (x: 10pt, y: 6pt) },
            radius: 4pt,
          )[
            #text(fill: c, weight: "bold", size: chapter-size)[#cur-chap]
          ]
        ]
      ],
    )
  ]
}


#import "../vietphys.typ": *
#import "../vietphys.typ" as vm

// ============================================================================
// CẨM NANG VIETPHYS — xây dựng lại theo từng phần.
// Phần 1: khai báo tài liệu và danh mục mọi mẫu header, footer của gói.
// ============================================================================

#let mau-chinh = rgb("#184C99")
#show: vp-page-setup.with(
  margin: (x: 2cm, top: 2.6cm, bottom: 2.4cm),
  theme-color: mau-chinh,
  font: "Arial", font-size: 10pt, leading: 0.75em,
  heading-theme: vp-heading-theme-modern.with(font: "Arial"),
  header: vp-header-modern(title: "VIETPHYS 0.1.0", subtitle: "Cẩm nang hướng dẫn sử dụng",
    icon: "book-open", color: mau-chinh),
  footer: vp-footer-kage-enso(title: "VIETPHYS", slogan: "Soạn tài liệu Vật lí bằng Typst",
    color: mau-chinh, icon: "shuriken", divider: "line", page-format: "1 / total"),
)
#set text(lang: "vi")
#set par(justify: true)
#show raw.where(block: false): it => box(fill: rgb("#EEF2F8"), inset: (x: 2pt), outset: (y: 2pt), radius: 2pt, text(size: 0.92em, it))

// ---- Bộ dựng trình bày ----------------------------------------------------------
#let vien = rgb("#CAD5E2")
#let nen-ma = rgb("#F4F6FA")
#let pham-vi = dictionary(vm)
#let _ma(src, size: 7.8pt) = { set par(justify: false); text(size: size, raw(src, lang: "typst", block: true)) }
// Thẻ ví dụ: code bên trái, sản phẩm (eval từ đúng đoạn code) bên phải; stack: true đặt sản phẩm dưới.
#let ex(src, code: 46%, stack: false, align-out: center + horizon, prelude: "") = {
  let ket-qua = eval(prelude + src, mode: "markup", scope: pham-vi)
  block(width: 100%, stroke: 0.6pt + vien, radius: 5pt, clip: true, breakable: stack, above: 8pt, below: 10pt,
    if stack {
      grid(columns: 1, fill: (_, y) => if y == 0 { nen-ma }, inset: (8pt, 10pt), _ma(src), ket-qua)
    } else {
      grid(columns: (code, 1fr), fill: (x, _) => if x == 0 { nen-ma }, inset: 8pt,
        align: (left + top, align-out), _ma(src), ket-qua)
    })
}
#let bang(..cells, columns: (32%, 68%)) = block({
  set par(justify: false)
  set text(size: 9pt)
  table(columns: columns, inset: 5pt, stroke: 0.4pt + vien, fill: (_, y) => if y == 0 { rgb("#EEF5FC") }, ..cells)
})
#let meo(body) = block(breakable: false, vp-knowledge-box(type: "theorem", title: "Mẹo", content: body))

// Dải trang A4 thu nhỏ, giữ đúng lề 60pt như trang thật; có vài dòng chữ mờ để thấy vị trí nội dung.
// vi-tri: "top" đặt mẫu như page.header, "bottom" đặt như page.footer.
#let _dong-mo = range(3).map(i => block(width: (92%, 100%, 70%).at(i), height: 4pt, fill: luma(90%), radius: 2pt, above: 7pt))
#let dai-trang(mau, vi-tri: "top", height: 92pt) = layout(size => {
  let s = size.width / 210mm
  scale(s * 100%, reflow: true, origin: top + left,
    block(width: 210mm, height: height, fill: white, clip: true, {
      if vi-tri == "top" {
        place(top + left, dx: 60pt, dy: 20pt, block(width: 210mm - 120pt, mau))
        place(top + left, dx: 60pt, dy: height - 30pt, block(width: 210mm - 120pt, stack(.._dong-mo)))
      } else {
        place(top + left, dx: 60pt, dy: 8pt, block(width: 210mm - 120pt, stack(.._dong-mo)))
        place(bottom + left, dx: 60pt, dy: -12pt, block(width: 210mm - 120pt, mau))
      }
    }))
})
// Thẻ một mẫu đầu/chân trang: tên, code khai báo, hình gần cỡ thật.
#let the-mau(ten, code, mau, vi-tri: "top", height: 92pt, ghi: none) = block(width: 100%, breakable: false,
  stroke: 0.6pt + vien, radius: 5pt, clip: true, above: 6pt, below: 8pt,
  grid(columns: 1,
    block(width: 100%, fill: nen-ma, inset: (x: 8pt, y: 6pt), grid(columns: (auto, 1fr), column-gutter: 10pt, align: horizon,
      box(fill: mau-chinh, radius: 3pt, inset: (x: 6pt, y: 3pt), text(fill: white, weight: "bold", size: 8pt, ten)),
      _ma(code))),
    dai-trang(mau, vi-tri: vi-tri, height: height),
    if ghi != none { block(width: 100%, inset: (x: 8pt, y: 5pt), stroke: (top: 0.4pt + vien), text(size: 8.5pt, ghi)) },
  ))
#let mo-chuong(title, style, summary) = {
  vp-chapter(title: title, style: style, color: mau-chinh, font: "Arial")
  vp-chapter-outline(summary: summary, color: mau-chinh)
}
#let bai(title, subtitle: none, first: false, style: "less_modern") = vp-lesson(title: title, subtitle: subtitle,
  style: style, color: mau-chinh, font: "Arial", new-page: if first { true } else { auto })

// ============================================================================
// BÌA VÀ MỤC LỤC
// ============================================================================
#page(header: none, footer: none, margin: 0pt, {
  place(top + left, rect(width: 100%, height: 62%, fill: gradient.linear(mau-chinh, mau-chinh.darken(35%), angle: 60deg)))
  place(top + left, dx: 2cm, dy: 3cm, {
    box(fill: white, radius: 50%, inset: 8pt, vp-logo-colored(color: mau-chinh, width: 62pt))
    v(18pt)
    text(fill: white, size: 34pt, weight: "bold", font: "Arial")[VIETPHYS]
    v(-6pt)
    text(fill: white.darken(10%), size: 15pt, font: "Arial")[Cẩm nang hướng dẫn sử dụng · phiên bản 0.1.0]
    v(26pt)
    block(width: 14cm, text(fill: white, size: 11pt, font: "Arial")[
      Gói Typst soạn bài học, đề kiểm tra và sách bài tập Vật lí. Cẩm nang được dựng bằng chính các mẫu
      chương, bài, đầu trang và chân trang của gói.])
  })
  place(top + right, dx: -1.2cm, dy: 1.2cm, vp-brush("enso-ring-09", color: white, width: 6cm))
})

#vp-book-outline(subtitle: [CẨM NANG VIETPHYS 0.1.0], color: mau-chinh,
  intro: [Nhấn vào tên chương hoặc bài để chuyển nhanh đến trang tương ứng.])

// ============================================================================
// PHẦN 1. KHAI BÁO, ĐẦU TRANG VÀ CHÂN TRANG
// ============================================================================
#mo-chuong("KHAI BÁO VÀ TRANG TRÍ TRANG", "chap_modern",
  [Cách khai báo một tài liệu Vietphys và danh mục đầy đủ các mẫu đầu trang, chân trang có trong gói.])

#bai("Khai báo tài liệu", subtitle: "import, vp-page-setup và các tham số", first: true)

= Ba dòng khai báo
Mọi tài liệu Vietphys bắt đầu bằng hai bước: nạp gói, rồi áp dụng `vp-page-setup` cho toàn bộ nội dung bằng một show rule.
```typst
#import "@local/vietphys:0.1.0": *          // gói đã cài
#show: vp-page-setup.with(theme-preset: "ocean")
#vp-question([Đơn vị của lực là gì?], options: ("N", "J", "W", "Pa"), ans: "A")
```
Trong repo, tệp ở thư mục `examples/` dùng `#import "../vietphys.typ": *` thay cho dòng đầu.

= Cài gói local
```text
python scripts/build_release.py
python -m zipfile -e dist/vietphys-0.1.0.zip .typst-packages/local/vietphys/0.1.0
typst compile tai-lieu.typ --package-path .typst-packages
```
Giải nén vào thư mục package mặc định của Typst thì không cần `--package-path`. Bản cài là bản sao: cập nhật repo xong cần cài lại.

= Tham số của vp-page-setup
#bang(columns: (26%, 30%, 44%),
  [*Tham số*], [*Mặc định*], [*Ý nghĩa*],
  [`paper`], [`"a4"`], [Khổ giấy.],
  [`margin`], [`(x: 2cm, y: 2.5cm)`], [Lề trang.],
  [`font`, `font-size`], [Times New Roman, 13pt], [Font và cỡ chữ nội dung.],
  [`leading`], [`1.2em`], [Khoảng cách dòng.],
  [`theme-preset`], [`none` (ocean)], [`ocean`, `konoha`, `minato`, `uchiha`, `wind`, `shadow`, `violet`, `emerald`.],
  [`theme-color`], [`auto`], [Màu chủ đạo tùy ý, ví dụ `rgb("#184C99")`.],
  [`header`, `footer`], [`auto`], [Mẫu đầu/chân trang (hai bài sau), ví dụ `vp-header-modern(title: "VẬT LÍ 12")`; `none` để bỏ.],
  [`header-ascent`, `footer-descent`], [`auto`], [Khoảng cách từ header/footer đến nội dung.],
  [`heading-theme`], [`vp-heading-theme-modern`], [Kiểu `=`, `==`, `===`; `none` dùng kiểu native tối giản.],
  [`hierarchy`], [`auto`], [Cây phân cấp: `"book"`, `"lesson"`, `"standalone"` hoặc tự nhận diện.],
)

= Một khai báo đầy đủ
```typst
#show: vp-page-setup.with(
  paper: "a4", margin: (x: 2cm, top: 2.6cm, bottom: 2.4cm),
  font: "Times New Roman", font-size: 12pt,
  theme-color: rgb("#184C99"),
  header: vp-header-modern(title: "VẬT LÍ 12", subtitle: "Dao động cơ"),
  footer: vp-footer-shuriken(title: "VẬT LÍ 12", page-format: "1 / total"),
)
```
Header tự ẩn ở trang có banner chương (`vp-chapter`) để không chồng lên banner.
#meo[Cẩm nang này khai báo `header: vp-header-modern(...)` và `footer: vp-footer-kage-enso(...)` — đầu và chân mỗi trang bạn đang đọc chính là hai mẫu đó.]

= Màu chủ đạo
#ex("#for p in (\"ocean\", \"konoha\", \"violet\") {
  vp-set-theme(preset: p)
  vp-knowledge-box(title: p, content: [$F = m a$])
}
#vp-set-theme(color: \"#184C99\")", code: 52%)
Các mẫu có `color: auto` lấy màu theme hiện tại; truyền `color` để dùng màu riêng.

// ----------------------------------------------------------------------------
// Trang mẫu: chính trang này dùng mẫu đầu/chân trang đang giới thiệu.
#let _noi-dung-mau = {
  set par(first-line-indent: 0pt)
  text(weight: "bold", fill: mau-chinh)[Ví dụ nội dung trên trang]
  v(4pt)
  [Một vật dao động điều hòa với phương trình $x = 5 cos(4 pi t + pi / 3)$ cm. Biên độ, tần số góc và pha ban đầu của dao động lần lượt là bao nhiêu? Đoạn nội dung này chỉ để thấy đầu trang và chân trang nằm cùng một trang tài liệu thật.]
  v(6pt)
  vp-question([Chu kì của dao động trên là], options: ("0,5 s", "1 s", "2 s", "4 s"), ans: "A")
}
#let trang-mau(ten, code, mo-ta, header: auto, footer: auto, tham-so: none) = {
  let args = (:)
  if header != auto { args.insert("header", header) }
  if footer != auto { args.insert("footer", footer) }
  let vi-tri = if header != auto { [▲ ĐẦU TRANG CỦA TRANG NÀY] } else { [▼ CHÂN TRANG CỦA TRANG NÀY] }
  page(..args, {
    block(width: 100%, fill: rgb("#EEF5FC"), radius: 6pt, inset: 10pt, breakable: false, {
      text(size: 7.5pt, weight: "bold", fill: mau-chinh, tracking: 0.8pt, vi-tri)
      v(2pt)
      text(size: 14pt, weight: "bold", fill: mau-chinh, ten)
      v(2pt)
      mo-ta
      v(4pt)
      block(width: 100%, fill: white, radius: 4pt, inset: 8pt, _ma(code, size: 8.5pt))
    })
    if tham-so != none { tham-so }
    v(10pt)
    _noi-dung-mau
  })
}

#bai("Các mẫu đầu trang", subtitle: "Mỗi mẫu được dùng làm đầu trang của một trang")

Bài này không vẽ lại header trong khung: *mỗi trang sau là một trang thật dùng chính mẫu đang giới thiệu*, nhìn lên đầu trang để thấy kết quả. Khai báo cho cả tài liệu bằng tham số `header` của `vp-page-setup`; chỉ đổi riêng một trang bằng `#page(header: ...)[...]`.
#bang(columns: (34%, 66%),
  [*Mẫu*], [*Đặc điểm*],
  [`vp-header-modern`], [Thanh hiện đại: huy hiệu gradient, tiêu đề, phụ đề, tự hiện chương và bài. Hai kiểu `"line"`, `"card"`.],
  [`vp-header`], [Ba vùng chữ trái – giữa – phải, đường kẻ mảnh.],
  [`vp-manual-header-fancy`], [Kiểu cẩm nang có logo V và huy hiệu “CHƯƠNG n”.],
  [`vp-manual-header-logo`], [Logo và dải tiêu đề tràn hai mép giấy.],
  [`vp-manual-header-standard`], [`vp-header-modern` với tiêu đề Vietphys.],
)
#bang(columns: (24%, 22%, 54%),
  [*Tham số vp-header-modern*], [*Mặc định*], [*Ý nghĩa*],
  [`title`, `subtitle`], [`"VẬT LÍ 12"`, `none`], [Tiêu đề và phụ đề (phụ đề tự in hoa).],
  [`style`], [`"line"`], [`"line"`: kẻ mảnh nhạt dần; `"card"`: thẻ bo góc nền nhạt.],
  [`icon`], [`"atom"`], [Tên icon Font Awesome, content, hoặc `none` (monogram chữ cái đầu).],
  [`info`], [`auto`], [`auto`: chip CHƯƠNG n + tên bài hiện tại; chuỗi, widget, content; `none` để trống.],
  [`color`], [`auto`], [Màu chủ đạo (theo theme).],
  [`font`, `title-size`, `badge-size`], [`auto`, 11pt, 24pt], [Font, cỡ tiêu đề, cỡ huy hiệu.],
)

#trang-mau("vp-header-modern — kiểu line",
  "#show: vp-page-setup.with(header: vp-header-modern(\n  title: \"VẬT LÍ 12\", subtitle: \"Ôn thi tốt nghiệp\"))",
  [Kiểu mặc định. Bên phải tự hiện chương và bài đang đọc.],
  header: vp-header-modern(title: "VẬT LÍ 12", subtitle: "Ôn thi tốt nghiệp", color: mau-chinh))
#trang-mau("vp-header-modern — kiểu card",
  "header: vp-header-modern(title: \"VẬT LÍ 12\",\n  subtitle: \"Ôn thi tốt nghiệp\", style: \"card\")",
  [Thẻ nổi bo góc, nền nhạt cùng tông.],
  header: vp-header-modern(title: "VẬT LÍ 12", subtitle: "Ôn thi tốt nghiệp", style: "card", color: mau-chinh))
#trang-mau("vp-header-modern — monogram, màu riêng",
  "header: vp-header-modern(title: \"Hóa học 11\", subtitle: \"Đề cương\",\n  icon: none, color: rgb(\"#0F766E\"), style: \"card\")",
  [`icon: none` dùng chữ cái đầu của tiêu đề làm monogram; `color` đổi màu riêng cho header.],
  header: vp-header-modern(title: "Hóa học 11", subtitle: "Đề cương", icon: none, color: rgb("#0F766E"), style: "card"))
#trang-mau("vp-header-modern — thông tin tùy ý",
  "header: vp-header-modern(title: \"ĐỀ KIỂM TRA\", subtitle: \"Học kì I\",\n  icon: \"pen-ruler\", color: rgb(\"#B91C1C\"),\n  info: vp-widget-exam(code: \"ĐỀ 101\", time: \"50 phút\"))",
  [`info` thay đường dẫn chương/bài bằng widget, chuỗi hoặc content.],
  header: vp-header-modern(title: "ĐỀ KIỂM TRA", subtitle: "Học kì I", icon: "pen-ruler", color: rgb("#B91C1C"),
    info: vp-widget-exam(code: "ĐỀ 101", time: "50 phút")))
#trang-mau("vp-header",
  "header: vp-header(left-text: \"VẬT LÍ 12\",\n  center-text: \"Dao động cơ\", right-text: \"Đề 01\")",
  [Header chữ tối giản; tham số `left-text`, `center-text`, `right-text`, `color`, `line-width`.],
  header: vp-header(left-text: "VẬT LÍ 12", center-text: "Dao động cơ", right-text: "Đề 01"))
#trang-mau("vp-manual-header-fancy",
  "header: vp-manual-header-fancy(title: \"VẬT LÍ 12\",\n  subtitle: \"Ôn thi\", compact: true)",
  [Tham số: `title`, `subtitle`, `color`, `icon`, `compact`, `font`, `chapter-label` (`auto` hiện “CHƯƠNG n”) và các cỡ chữ, khoảng đệm.],
  header: vp-manual-header-fancy(title: "VẬT LÍ 12", subtitle: "Ôn thi", compact: true))
#trang-mau("vp-manual-header-logo",
  "header: vp-manual-header-logo(title: \"VẬT LÍ 12\")",
  [Tham số: `title`, `subtitle`, `date`, `right-content`, `color`. Dải tiêu đề tràn hai mép giấy.],
  header: vp-manual-header-logo(title: "VẬT LÍ 12"))

// ----------------------------------------------------------------------------
#bai("Các mẫu chân trang", subtitle: "Mỗi mẫu được dùng làm chân trang của một trang")

Tương tự bài trước, mỗi trang sau dùng chính mẫu chân trang đang giới thiệu — nhìn xuống cuối trang để thấy kết quả. Khai báo bằng tham số `footer` của `vp-page-setup`.
#bang(columns: (34%, 66%),
  [*Mẫu*], [*Tham số*],
  [`vp-footer`], [`left-text`, `center-text`, `right-text`, `color`, `line-width`.],
  [`vp-footer-kage`], [`color`, `slogan`, `kunai-path` (`none` để bỏ hình kunai).],
  [`vp-footer-shuriken`], [`title`, `slogan`, `color`, `accent-color`, `icon` (`"kunai"`, `"shuriken"`, `"logo"`, content, `none`), `divider` (`"line"`, `"brush"`, `none`), `page-format` (`"1"`, `"1 / total"`), `compact`, `font`, các cỡ chữ và khoảng đệm.],
  [`vp-footer-kage-enso`], [Như Shuriken, thêm `enso-style`: `"zen"`, `"grunge"`, `"ring-01"`, `"ring-09"`, `"ring-10"`. Tên khác: `vp-footer-kage-brush`, `vp-footer-ninja-enso`.],
  [`vp-manual-footer-standard`], [Không tham số.],
  [`vp-manual-footer-fancy`], [`slogan`, `color`.],
)

#trang-mau("vp-footer", "footer: vp-footer(left-text: \"VẬT LÍ 12\",\n  center-text: context counter(page).display(), right-text: \"Vietphys\")",
  [Chân trang chữ tối giản ba vùng.],
  footer: vp-footer(left-text: "VẬT LÍ 12", center-text: context counter(page).display(), right-text: "Vietphys"))
#trang-mau("vp-footer-kage", "footer: vp-footer-kage()", [Tên, hình kunai, khẩu hiệu và số trang trong huy hiệu.],
  footer: vp-footer-kage())
#trang-mau("vp-footer-shuriken", "footer: vp-footer-shuriken(title: \"VẬT LÍ 12\")", [Số trang trong huy hiệu shuriken.],
  footer: vp-footer-shuriken(title: "VẬT LÍ 12"))
#trang-mau("vp-footer-shuriken — tùy chỉnh",
  "footer: vp-footer-shuriken(title: \"VẬT LÍ 12\", icon: \"shuriken\",\n  divider: \"brush\", page-format: \"1 / total\")",
  [Đường phân cách nét cọ, số trang dạng “trang / tổng”.],
  footer: vp-footer-shuriken(title: "VẬT LÍ 12", icon: "shuriken", divider: "brush", page-format: "1 / total"))
#trang-mau("vp-footer-kage-enso — zen", "footer: vp-footer-kage-enso(title: \"VẬT LÍ 12\")", [Số trang trong vòng enso.],
  footer: vp-footer-kage-enso(title: "VẬT LÍ 12"))
#trang-mau("vp-footer-kage-enso — grunge",
  "footer: vp-footer-kage-enso(title: \"VẬT LÍ 12\",\n  enso-style: \"grunge\", icon: \"shuriken\")", [Vòng enso kiểu nét cọ thô.],
  footer: vp-footer-kage-enso(title: "VẬT LÍ 12", enso-style: "grunge", icon: "shuriken"))
#trang-mau("vp-footer-kage-enso — ring-09",
  "footer: vp-footer-kage-enso(title: \"VẬT LÍ 12\",\n  enso-style: \"ring-09\", divider: \"brush\")", [Chân trang của chính cẩm nang dùng mẫu này với `page-format: \"1 / total\"`.],
  footer: vp-footer-kage-enso(title: "VẬT LÍ 12", enso-style: "ring-09", divider: "brush"))
#trang-mau("vp-manual-footer-standard", "footer: vp-manual-footer-standard()", [`vp-footer-kage` màu xanh với khẩu hiệu Vietphys.],
  footer: vp-manual-footer-standard())
#trang-mau("vp-manual-footer-fancy", "footer: vp-manual-footer-fancy(slogan: \"Vật lí 12\")", [Tham số `slogan`, `color`.],
  footer: vp-manual-footer-fancy(slogan: "Vật lí 12"))

#import "../vietphys.typ": *
#show: vp-page-setup.with(heading-theme: none, margin: (x: 2cm, y: 2cm))
#set text(font: "Arial", size: 10pt, lang: "vi")
#set heading(numbering: "1.1")
#set page(header: vp-header(left-text: "VIETPHYS 0.1.0", right-text: "HƯỚNG DẪN SỬ DỤNG"), footer: vp-footer(center-text: context counter(page).display("1")))
#show raw.where(block: true): it => block(width: 100%, fill: rgb("#F4F6FA"), inset: 8pt, radius: 4pt, breakable: true, text(size: 8pt, it))
#let product(body) = block(width: 100%, stroke: 0.5pt + rgb("#CAD5E2"), inset: 12pt, radius: 4pt, breakable: true, body)
#align(center)[#text(size: 25pt, weight: "bold", fill: rgb("#184C99"))[CẨM NANG VIETPHYS]
#v(8pt)
Code mẫu • Sản phẩm thực tế • Tra cứu đầy đủ tham số]
#outline(title: [Mục lục], depth: 1)

#pagebreak()
= Bắt đầu và cấu hình trang

Tài liệu cho Vietphys 0.1.0 trong repo này. Mỗi ví dụ có code và sản phẩm dựng từ đoạn code đó. Thêm import khi chép code sang tài liệu mới. File đặt trong examples dùng `#import "../vietphys.typ": *`; file đặt cạnh entry point dùng `#import "vietphys.typ": *`. Import từ Universe chỉ dùng sau khi gói được phát hành.

`vp-page-setup` mặc định dùng A4, Arial 11pt, căn đều và heading modern. `heading-theme: none` giữ heading Typst. `header: none`/`footer: none` bỏ đầu/chân trang. Màu dùng `rgb("#RRGGBB")`, viền dùng `1pt + rgb("#RRGGBB")`; none không vẽ, auto lấy cấu hình. `[Nội dung]` chứa định dạng/công thức/ảnh; `(a, b)` là mảng, mảng một phần tử cần dấu phẩy cuối.


```typst
#import "../vietphys.typ": *
#show: vp-page-setup.with(
  paper: "a4", margin: (x: 2cm, y: 2.5cm),
  theme-preset: "ocean",
  header: vp-header(left-text: "VẬT LÍ 12", right-text: "Minh họa"),
  footer: vp-footer(center-text: context counter(page).display()),
)
#set text(font: "Times New Roman", size: 12pt)
#vp-question([Nội dung minh họa.], options: ("N", "J", "W", "Pa"), ans: "A")
```

```text
typst compile examples/huong-dan-day-du.typ dist/huong-dan-day-du.pdf --root .
```
*Sản phẩm mẫu khởi đầu:*
#product[
#vp-question([Đơn vị của lực là gì?], options: ("N", "J", "W", "Pa"), ans: "A")
]

= Câu hỏi và đáp án
Dùng type: "mcq", "tf", "short" hoặc "essay". MCQ/TF nhận tối đa bốn phương án/phát biểu. Bộ đếm tự tăng; `#vp-q-counter.update(0)` làm câu tiếp theo bắt đầu từ 1. MCQ tự chia 4, 2 hoặc 1 cột theo độ dài phương án và chiều rộng vùng chứa; không có option ép số cột.

== Trắc nghiệm, mức độ và nguồn
`ans` nhận chữ hoa A/B/C/D. `level` và `source` là nhãn tùy chọn. Dùng `vp-show-level.update(false)` và `vp-show-source.update(false)` để ẩn; dùng `level-color` và `source-color` để đổi màu.

*Code:*
```typst
#vp-question([Đơn vị của gia tốc là gì?], type: "mcq",
  options: ([#vp-unit("m/s^2")], [#vp-unit("m/s")], [#vp-unit("N")], [#vp-unit("J")]),
  ans: "A", level: "Nhận biết", source: "Minh họa",
  sol: [Gia tốc là độ biến thiên vận tốc trong một đơn vị thời gian, đơn vị m/s².])
```

*Sản phẩm thực tế:*
#product[
#vp-question([Đơn vị của gia tốc là gì?], type: "mcq",
  options: ([#vp-unit("m/s^2")], [#vp-unit("m/s")], [#vp-unit("N")], [#vp-unit("J")]),
  ans: "A", level: "Nhận biết", source: "Minh họa",
  sol: [Gia tốc là độ biến thiên vận tốc trong một đơn vị thời gian, đơn vị m/s².])
]

== Đổi màu chữ Câu và khung câu hỏi
`lbl-color` đổi màu chữ Câu và số; `lbl-bg/border/radius/padding` trang trí nhãn. `q-bg/border/radius/padding` trang trí toàn câu. `q-margin` mở rộng khung ra ngoài khi có nền hoặc viền. `prefix`, `num-style`, `icon-before/after` đổi tên, kiểu số và icon.

*Code:*
```typst
#vp-question([Tính lực khi khối lượng 2 kg và gia tốc 3 m/s².],
  prefix: "Bài", num-style: "01", icon-before: [★], icon-after: [◆],
  lbl-color: rgb("#9D174D"), lbl-bg: rgb("#FCE7F3"),
  lbl-border: 0.7pt + rgb("#DB2777"), lbl-radius: 4pt, lbl-padding: (x: 7pt, y: 3pt),
  q-bg: rgb("#F8FAFC"), q-border: 0.7pt + rgb("#94A3B8"),
  q-radius: 6pt, q-padding: 12pt, q-margin: 0pt,
  options: ("6 N", "3 N", "2 N", "1 N"), ans: "A")
```

*Sản phẩm thực tế:*
#product[
#vp-question([Tính lực khi khối lượng 2 kg và gia tốc 3 m/s².],
  prefix: "Bài", num-style: "01", icon-before: [★], icon-after: [◆],
  lbl-color: rgb("#9D174D"), lbl-bg: rgb("#FCE7F3"),
  lbl-border: 0.7pt + rgb("#DB2777"), lbl-radius: 4pt, lbl-padding: (x: 7pt, y: 3pt),
  q-bg: rgb("#F8FAFC"), q-border: 0.7pt + rgb("#94A3B8"),
  q-radius: 6pt, q-padding: 12pt, q-margin: 0pt,
  options: ("6 N", "3 N", "2 N", "1 N"), ans: "A")
]

== Đổi màu A, B, C, D và đáp án đúng
`opt-color/bg/border/radius` đổi nhãn A–D, không đổi nền hay màu chữ toàn phương án. `ans-text-color` đổi nhãn và nội dung phương án đúng khi bật đáp án. `ans-mark-bg/border/width` đổi nền, viền và độ dày dấu khoanh. `ans-color` dùng cho short/essay, không đổi chữ đáp án MCQ.

*Code:*
```typst
#vp-show-ans.update(true)
#vp-question([Đơn vị của lực là gì?], options: ("N", "J", "W", "Pa"), ans: "A",
  opt-color: rgb("#6D28D9"), opt-bg: rgb("#EDE9FE"),
  opt-border: 0.7pt + rgb("#A78BFA"), opt-radius: 3pt,
  ans-shape: "square", ans-mark-bg: rgb("#DCFCE7"),
  ans-mark-border: rgb("#15803D"), ans-mark-width: 1.2pt,
  ans-text-color: rgb("#166534"))
#vp-show-ans.update(false)
```

*Sản phẩm thực tế:*
#product[
#vp-show-ans.update(true)
#vp-question([Đơn vị của lực là gì?], options: ("N", "J", "W", "Pa"), ans: "A",
  opt-color: rgb("#6D28D9"), opt-bg: rgb("#EDE9FE"),
  opt-border: 0.7pt + rgb("#A78BFA"), opt-radius: 3pt,
  ans-shape: "square", ans-mark-bg: rgb("#DCFCE7"),
  ans-mark-border: rgb("#15803D"), ans-mark-width: 1.2pt,
  ans-text-color: rgb("#166534"))
#vp-show-ans.update(false)
]

== Các hình đánh dấu đáp án
`ans-shape` nhận circle, square, round-rect (alias rounded), none. Khi chọn none, chữ đáp án đúng vẫn được tô màu nếu bật đáp án.

*Code:*
```typst
#vp-show-ans.update(true)
#for shape in ("circle", "square", "round-rect", "none") [
  #vp-question([Nội dung minh họa.], options: ("N", "J", "W", "Pa"), ans: "B",
    ans-shape: shape, ans-text-color: rgb("#DC2626"))
]
#vp-show-ans.update(false)
```

*Sản phẩm thực tế:*
#product[
#vp-show-ans.update(true)
#for shape in ("circle", "square", "round-rect", "none") [
  #vp-question([Nội dung minh họa.], options: ("N", "J", "W", "Pa"), ans: "B",
    ans-shape: shape, ans-text-color: rgb("#DC2626"))
]
#vp-show-ans.update(false)
]

== Đổi màu toàn bảng đúng/sai
`tf-header-bg/color`: nền/chữ tiêu đề; `tf-row-bg`: nền thân bảng; `tf-border`: viền bảng; `tf-correct-color/wrong-color`: màu dấu Đ/S và nền nhạt của ô được đánh dấu. `ans-mark-...` trang trí ô trống. `ans-tf` dùng đúng ký tự "Đ" hoặc "S".

*Code:*
```typst
#vp-show-ans.update(true)
#vp-question([Xét các phát biểu về chuyển động thẳng đều.], type: "tf", tf-style: "table",
  statements: ([Xét các phát biểu về chuyển động thẳng đều.], [Xét các phát biểu về chuyển động thẳng đều.],
    [Xét các phát biểu về chuyển động thẳng đều.], [Xét các phát biểu về chuyển động thẳng đều.]),
  ans-tf: ("Đ", "Đ", "Đ", "S"),
  tf-header-bg: rgb("#6D28D9"), tf-header-color: white,
  tf-row-bg: rgb("#FAF5FF"), tf-border: 0.8pt + rgb("#C4B5FD"),
  tf-correct-color: rgb("#15803D"), tf-wrong-color: rgb("#DC2626"),
  ans-mark-bg: rgb("#FFF7ED"), ans-mark-border: rgb("#EA580C"), ans-mark-width: 1pt)
#vp-show-ans.update(false)
```

*Sản phẩm thực tế:*
#product[
#vp-show-ans.update(true)
#vp-question([Xét các phát biểu về chuyển động thẳng đều.], type: "tf", tf-style: "table",
  statements: ([Xét các phát biểu về chuyển động thẳng đều.], [Xét các phát biểu về chuyển động thẳng đều.],
    [Xét các phát biểu về chuyển động thẳng đều.], [Xét các phát biểu về chuyển động thẳng đều.]),
  ans-tf: ("Đ", "Đ", "Đ", "S"),
  tf-header-bg: rgb("#6D28D9"), tf-header-color: white,
  tf-row-bg: rgb("#FAF5FF"), tf-border: 0.8pt + rgb("#C4B5FD"),
  tf-correct-color: rgb("#15803D"), tf-wrong-color: rgb("#DC2626"),
  ans-mark-bg: rgb("#FFF7ED"), ans-mark-border: rgb("#EA580C"), ans-mark-width: 1pt)
#vp-show-ans.update(false)
]

== Đúng/sai dạng danh sách và đề học sinh
`tf-style` nhận table hoặc list. Khi tắt đáp án, list chỉ còn a), b)…; table vẫn có ô trống cho học sinh đánh dấu.

*Code:*
```typst
#vp-show-ans.update(true)
#vp-question([Nội dung minh họa.], type: "tf", tf-style: "list",
  statements: ([Lực có đơn vị N.], [Công có đơn vị W.]), ans-tf: ("Đ", "S"),
  tf-correct-color: rgb("#15803D"), tf-wrong-color: rgb("#BE123C"))
#vp-show-ans.update(false)
#vp-question([Nội dung minh họa.], type: "tf", tf-style: "table",
  statements: ([Lực có đơn vị N.], [Công có đơn vị W.]), ans-tf: ("Đ", "S"))
```

*Sản phẩm thực tế:*
#product[
#vp-show-ans.update(true)
#vp-question([Nội dung minh họa.], type: "tf", tf-style: "list",
  statements: ([Lực có đơn vị N.], [Công có đơn vị W.]), ans-tf: ("Đ", "S"),
  tf-correct-color: rgb("#15803D"), tf-wrong-color: rgb("#BE123C"))
#vp-show-ans.update(false)
#vp-question([Nội dung minh họa.], type: "tf", tf-style: "table",
  statements: ([Lực có đơn vị N.], [Công có đơn vị W.]), ans-tf: ("Đ", "S"))
]

== Trả lời ngắn và tự luận
Short luôn có bốn ô; chuỗi dài hơn bốn ký tự bị cắt trong phần ô hiển thị. Essay nhận `listEs` để đánh số a), b)… và `points` để thêm điểm. Hiện points chỉ hiển thị ở nhánh nhãn cùng dòng đề bài, khi không có level/source đang hiện.

*Code:*
```typst
#vp-show-ans.update(true)
#vp-question([Ghi đáp án và trình bày cách giải.], type: "short", ans: "-1,5",
  short-bg: rgb("#FEF3C7"), short-border: rgb("#D97706"), ans-color: rgb("#B45309"))
#vp-question([Ghi đáp án và trình bày cách giải.], type: "essay", points: "2 điểm", lines: 2,
  listEs: ([Ghi đáp án và trình bày cách giải.], [Ghi đáp án và trình bày cách giải.]), ans: [$s = 24$ m])
#vp-show-ans.update(false)
```

*Sản phẩm thực tế:*
#product[
#vp-show-ans.update(true)
#vp-question([Ghi đáp án và trình bày cách giải.], type: "short", ans: "-1,5",
  short-bg: rgb("#FEF3C7"), short-border: rgb("#D97706"), ans-color: rgb("#B45309"))
#vp-question([Ghi đáp án và trình bày cách giải.], type: "essay", points: "2 điểm", lines: 2,
  listEs: ([Ghi đáp án và trình bày cách giải.], [Ghi đáp án và trình bày cách giải.]), ans: [$s = 24$ m])
#vp-show-ans.update(false)
]

== Lời giải và dòng viết
`vp-show-ans` và `vp-show-sol` bật/tắt độc lập. `lines` là số dòng viết; khi có lời giải trực tiếp, dòng viết bị ẩn. `vp-print-solutions` chỉ in lời giải chưa hiện trực tiếp. Gọi lệnh tổng hợp sau các câu.

*Code:*
```typst
#vp-show-sol.update(true)
#vp-question([Nội dung minh họa.], type: "essay",
  ans: "6 J", sol: [$A = F s = 6$ J.], lines: 3)
#vp-show-sol.update(false)
#vp-question([Nội dung minh họa.], type: "essay", lines: 2,
  sol: [$P = A / t$.])
```

*Sản phẩm thực tế:*
#product[
#vp-show-sol.update(true)
#vp-question([Nội dung minh họa.], type: "essay",
  ans: "6 J", sol: [$A = F s = 6$ J.], lines: 3)
#vp-show-sol.update(false)
#vp-question([Nội dung minh họa.], type: "essay", lines: 2,
  sol: [$P = A / t$.])
]

== Thiết lập chung cho những câu sau
State có hiệu lực theo vị trí tài liệu và không tự khôi phục khi đóng block. Setter chỉ cập nhật tham số khác auto; muốn trả về auto, dùng state.update(auto). Một số giá trị none/0pt trên từng câu được hiểu là kế thừa, nên không dùng để xóa kiểu chung. `vp-sol-store.update(())` xóa kho đáp án; reset bộ đếm không xóa kho.

*Code:*
```typst
#vp-set-question-style(prefix: "Ví dụ", lbl-color: rgb("#0369A1"),
  opt-color: rgb("#7C3AED"), num-style: "1")
#vp-set-ans-style(shape: "round-rect", bg: rgb("#DCFCE7"),
  border: rgb("#15803D"), text-color: rgb("#166534"))
#vp-show-ans.update(true)
#vp-question([Nội dung minh họa.], options: ("N", "J", "W", "Pa"), ans: "A")
#vp-show-ans.update(false)
#vp-q-prefix.update("Câu")
#vp-q-lbl-color.update(auto)
#vp-opt-color.update(auto)
#vp-ans-shape.update(auto)
#vp-ans-mark-bg.update(auto)
#vp-ans-mark-border.update(auto)
#vp-ans-text-color.update(auto)
```

*Sản phẩm thực tế:*
#product[
#vp-set-question-style(prefix: "Ví dụ", lbl-color: rgb("#0369A1"),
  opt-color: rgb("#7C3AED"), num-style: "1")
#vp-set-ans-style(shape: "round-rect", bg: rgb("#DCFCE7"),
  border: rgb("#15803D"), text-color: rgb("#166534"))
#vp-show-ans.update(true)
#vp-question([Nội dung minh họa.], options: ("N", "J", "W", "Pa"), ans: "A")
#vp-show-ans.update(false)
#vp-q-prefix.update("Câu")
#vp-q-lbl-color.update(auto)
#vp-opt-color.update(auto)
#vp-ans-shape.update(auto)
#vp-ans-mark-bg.update(auto)
#vp-ans-mark-border.update(auto)
#vp-ans-text-color.update(auto)
]


= Hình ảnh, công thức và đơn vị

== Ảnh cạnh câu hỏi
`image` nhận content ảnh. `image-side`: left/right/bottom; `image-scope`: stem/full. `image-ratio` là trọng số cột ảnh so với cột chữ: 0.65 tương ứng khoảng 0.65/(1+0.65) chiều rộng còn lại, không phải 65% trang. `stem2` nằm dưới hình khi scope là stem; `image-gap/valign` chỉnh khoảng cách và căn dọc.

*Code:*
```typst
#vp-question([Quan sát đồ thị vận tốc theo thời gian và tính gia tốc.],
  stem2: [Quan sát đồ thị vận tốc theo thời gian và tính gia tốc.], image: image("assets/motion.svg", width: 100%),
  image-side: "right", image-scope: "stem", image-ratio: 0.65,
  image-gap: 10pt, image-valign: top,
  options: ("2 m/s²", "4 m/s²", "6 m/s²", "8 m/s²"), ans: "A")
```

*Sản phẩm thực tế:*
#product[
#vp-question([Quan sát đồ thị vận tốc theo thời gian và tính gia tốc.],
  stem2: [Quan sát đồ thị vận tốc theo thời gian và tính gia tốc.], image: image("assets/motion.svg", width: 100%),
  image-side: "right", image-scope: "stem", image-ratio: 0.65,
  image-gap: 10pt, image-valign: top,
  options: ("2 m/s²", "4 m/s²", "6 m/s²", "8 m/s²"), ans: "A")
]

== Hình có chú thích và công thức đánh số
Truyền `path(...)` tại file tài liệu để đường dẫn thuộc tài liệu. `vp-formula` nhận chuỗi toán Typst, không phải LaTeX. `vp-unit` hỗ trợ tích, chia, mũ, micro, ohm, độ và Angstrom; `vp-qty` đổi dấu chấm thập phân thành dấu phẩy, e/E thành ký hiệu khoa học.

*Code:*
```typst
#vp-image(path("assets/motion.svg"), width: 45%, caption: [Nội dung minh họa.], align-pos: center)
#vp-formula(eq: "F = m a", numbered: true)
#vp-qty("3.14", "m") ; #vp-qty("6.02e23", "mol^-1")
#vp-unit("kg/m^3") ; #vp-unit("uF") ; #vp-unit("ohm") ; #vp-unit("degC")
```

*Sản phẩm thực tế:*
#product[
#vp-image(path("assets/motion.svg"), width: 45%, caption: [Nội dung minh họa.], align-pos: center)
#vp-formula(eq: "F = m a", numbered: true)
#vp-qty("3.14", "m") ; #vp-qty("6.02e23", "mol^-1")
#vp-unit("kg/m^3") ; #vp-unit("uF") ; #vp-unit("ohm") ; #vp-unit("degC")
]

= Theme và hộp kiến thức
Preset: konoha, minato, uchiha, ocean, wind, shadow, violet, emerald. Có thể dùng `vp-set-theme(color: "#0369A1")`. Thành phần hỗ trợ `color: auto` lấy theme chung. Mặc định màu câu hỏi còn có cấu hình riêng, nên đổi theme trang trí không thay mọi màu MCQ/TF.

== Theme và bốn hộp kiến thức
Definition: viền đầy đủ; theorem: nền và chữ nghiêng; note: viền trái. Warning dùng màu cảnh báo đỏ cố định. Dùng `color` để đổi màu các kiểu còn lại; `title/content` là tiêu đề và nội dung.

*Code:*
```typst
#vp-set-theme(preset: "violet")
#for kind in ("definition", "theorem", "warning", "note") [
  #vp-knowledge-box(type: kind, title: "Minh họa" + kind, content: [Định luật II Newton: $F = m a$.])
  #v(8pt)
]
#vp-set-theme(color: "#0369A1")
#vp-knowledge-box(title: "Minh họa", color: rgb("#15803D"), content: [Nội dung minh họa.])
#vp-set-theme(preset: "ocean")
```

*Sản phẩm thực tế:*
#product[
#vp-set-theme(preset: "violet")
#for kind in ("definition", "theorem", "warning", "note") [
  #vp-knowledge-box(type: kind, title: "Minh họa" + kind, content: [Định luật II Newton: $F = m a$.])
  #v(8pt)
]
#vp-set-theme(color: "#0369A1")
#vp-knowledge-box(title: "Minh họa", color: rgb("#15803D"), content: [Nội dung minh họa.])
#vp-set-theme(preset: "ocean")
]

== Ghi chú gấp góc
`vp-note` nhận title/icon/color/bg-color. Icon là tên Font Awesome, logo hoặc none. Hộp không tách trang, nên dùng cho ghi chú ngắn.

*Code:*
```typst
#v(15pt)
#vp-note(title: "Ghi nhớ", icon: "lightbulb", color: rgb("#92400E"), bg-color: rgb("#FEF3C7"))[
  Công suất: $P = A / t$. Luôn kiểm tra đơn vị trước khi thay số.
]
```

*Sản phẩm thực tế:*
#product[
#v(15pt)
#vp-note(title: "Ghi nhớ", icon: "lightbulb", color: rgb("#92400E"), bg-color: rgb("#FEF3C7"))[
  Công suất: $P = A / t$. Luôn kiểm tra đơn vị trước khi thay số.
]
]

= Chương, bài học và heading
Chapter hỗ trợ chap_modern (mặc định), chap_hexagon, default; lesson hỗ trợ less_modern (mặc định), less_ribbon, default. Chapter bắt đầu trang mới; lesson modern từ bài thứ hai bắt đầu trang mới. `num/title/subtitle/color/font` tùy chỉnh nội dung và giao diện theo chữ ký hàm.

== Chương default

*Code:*
```typst
#vp-chapter(num: "2", title: "ĐỘNG LỰC HỌC", style: "default", color: rgb("#184C99"), font: "Arial")
```

*Sản phẩm thực tế:*
#vp-chapter(num: "2", title: "ĐỘNG LỰC HỌC", style: "default", color: rgb("#184C99"), font: "Arial")

== Chương chap_hexagon

*Code:*
```typst
#vp-chapter(num: "2", title: "ĐỘNG LỰC HỌC", style: "chap_hexagon", color: rgb("#184C99"), font: "Arial")
```

*Sản phẩm thực tế:*
#vp-chapter(num: "2", title: "ĐỘNG LỰC HỌC", style: "chap_hexagon", color: rgb("#184C99"), font: "Arial")

== Chương chap_modern

*Code:*
```typst
#vp-chapter(num: "2", title: "ĐỘNG LỰC HỌC", style: "chap_modern", color: rgb("#184C99"), font: "Arial")
```

*Sản phẩm thực tế:*
#vp-chapter(num: "2", title: "ĐỘNG LỰC HỌC", style: "chap_modern", color: rgb("#184C99"), font: "Arial")

== Bài default

*Code:*
```typst
#vp-lesson(num: "1", title: "Định luật Newton", subtitle: "Kiến thức và bài tập", style: "default", color: rgb("#7C3AED"), font: "Arial")
```

*Sản phẩm thực tế:*
#vp-lesson(num: "1", title: "Định luật Newton", subtitle: "Kiến thức và bài tập", style: "default", color: rgb("#7C3AED"), font: "Arial")

== Bài less_ribbon

*Code:*
```typst
#vp-lesson(num: "1", title: "Định luật Newton", subtitle: "Kiến thức và bài tập", style: "less_ribbon", color: rgb("#7C3AED"), font: "Arial")
```

*Sản phẩm thực tế:*
#vp-lesson(num: "1", title: "Định luật Newton", subtitle: "Kiến thức và bài tập", style: "less_ribbon", color: rgb("#7C3AED"), font: "Arial")

== Bài less_modern

*Code:*
```typst
#vp-lesson(num: "1", title: "Định luật Newton", subtitle: "Kiến thức và bài tập", style: "less_modern", color: rgb("#7C3AED"), font: "Arial")
```

*Sản phẩm thực tế:*
#vp-lesson(num: "1", title: "Định luật Newton", subtitle: "Kiến thức và bài tập", style: "less_modern", color: rgb("#7C3AED"), font: "Arial")

== Mục và tiêu đề bài

*Code:*
```typst
=== KIẾN THỨC CẦN NHỚ
#vp-lesson-title(num: "3", title: "CÔNG VÀ CÔNG SUẤT", color: rgb("#15803D"))
```

*Sản phẩm thực tế:*
#product[
=== KIẾN THỨC CẦN NHỚ
#vp-lesson-title(num: "3", title: "CÔNG VÀ CÔNG SUẤT", color: rgb("#15803D"), new-page: false)
]

== Heading vp-heading-theme-modern

*Code:*
```typst
#[
  #show: vp-heading-theme-modern.with(font: "Arial")
  = Kiến thức trọng tâm
  Nội dung cấp một.
  == Định luật
  Nội dung cấp hai.
  === Công thức
  Nội dung cấp ba.
]
```

*Sản phẩm thực tế:*
#product[
#[
  #show: vp-heading-theme-modern.with(font: "Arial")
  = Kiến thức trọng tâm
  Nội dung cấp một.
  == Định luật
  Nội dung cấp hai.
  === Công thức
  Nội dung cấp ba.
]
]

== Heading vp-heading-theme-01

*Code:*
```typst
#[
  #show: vp-heading-theme-01
  = Kiến thức trọng tâm
  Nội dung cấp một.
  == Định luật
  Nội dung cấp hai.
  === Công thức
  Nội dung cấp ba.
]
```

*Sản phẩm thực tế:*
#product[
#[
  #show: vp-heading-theme-01
  = Kiến thức trọng tâm
  Nội dung cấp một.
  == Định luật
  Nội dung cấp hai.
  === Công thức
  Nội dung cấp ba.
]
]

= Header, footer và widget
Có 15 mẫu header. Sản phẩm ở đầu từng trang mẫu bên dưới; code dùng set page. Các mẫu tràn viền thiết kế cho A4, cần chừa đủ lề và xem lại khi đổi khổ giấy. Dùng page setup để tự ẩn header ở trang có banner chương.

#pagebreak()
#[
#set page(margin: (x: 60pt, y: 80pt), header: vp-header-theme-01(title: "VẬT LÍ 12", subtitle: "Chuyên đề ôn tập", color: rgb("#184C99")))
== Header 01
*Code:*
```typst
#set page(margin: (x: 60pt, y: 80pt), header: vp-header-theme-01(title: "VẬT LÍ 12", subtitle: "Chuyên đề ôn tập", color: rgb("#184C99")))
```
*Sản phẩm:* mẫu header thực tế ở đầu trang này. Các tham số riêng của mẫu có trong phụ lục.

]

#pagebreak()
#[
#set page(margin: (x: 60pt, y: 80pt), header: vp-header-theme-02(title: "VẬT LÍ 12", subtitle: "Chuyên đề ôn tập", color: rgb("#184C99")))
== Header 02
*Code:*
```typst
#set page(margin: (x: 60pt, y: 80pt), header: vp-header-theme-02(title: "VẬT LÍ 12", subtitle: "Chuyên đề ôn tập", color: rgb("#184C99")))
```
*Sản phẩm:* mẫu header thực tế ở đầu trang này. Các tham số riêng của mẫu có trong phụ lục.

]

#pagebreak()
#[
#set page(margin: (x: 60pt, y: 80pt), header: vp-header-theme-03(title: "VẬT LÍ 12", subtitle: "Chuyên đề ôn tập", color: rgb("#184C99")))
== Header 03
*Code:*
```typst
#set page(margin: (x: 60pt, y: 80pt), header: vp-header-theme-03(title: "VẬT LÍ 12", subtitle: "Chuyên đề ôn tập", color: rgb("#184C99")))
```
*Sản phẩm:* mẫu header thực tế ở đầu trang này. Các tham số riêng của mẫu có trong phụ lục.

]

#pagebreak()
#[
#set page(margin: (x: 60pt, y: 80pt), header: vp-header-theme-04(title: "VẬT LÍ 12", subtitle: "Chuyên đề ôn tập", color: rgb("#184C99")))
== Header 04
*Code:*
```typst
#set page(margin: (x: 60pt, y: 80pt), header: vp-header-theme-04(title: "VẬT LÍ 12", subtitle: "Chuyên đề ôn tập", color: rgb("#184C99")))
```
*Sản phẩm:* mẫu header thực tế ở đầu trang này. Các tham số riêng của mẫu có trong phụ lục.

]

#pagebreak()
#[
#set page(margin: (x: 60pt, y: 80pt), header: vp-header-theme-05(title: "VẬT LÍ 12", subtitle: "Chuyên đề ôn tập", color: rgb("#184C99")))
== Header 05
*Code:*
```typst
#set page(margin: (x: 60pt, y: 80pt), header: vp-header-theme-05(title: "VẬT LÍ 12", subtitle: "Chuyên đề ôn tập", color: rgb("#184C99")))
```
*Sản phẩm:* mẫu header thực tế ở đầu trang này. Các tham số riêng của mẫu có trong phụ lục.

]

#pagebreak()
#[
#set page(margin: (x: 60pt, y: 80pt), header: vp-header-theme-06(title: "VẬT LÍ 12", subtitle: "Chuyên đề ôn tập", color: rgb("#184C99")))
== Header 06
*Code:*
```typst
#set page(margin: (x: 60pt, y: 80pt), header: vp-header-theme-06(title: "VẬT LÍ 12", subtitle: "Chuyên đề ôn tập", color: rgb("#184C99")))
```
*Sản phẩm:* mẫu header thực tế ở đầu trang này. Các tham số riêng của mẫu có trong phụ lục.

]

#pagebreak()
#[
#set page(margin: (x: 60pt, y: 80pt), header: vp-header-theme-07(title: "VẬT LÍ 12", subtitle: "Chuyên đề ôn tập", color: rgb("#184C99")))
== Header 07
*Code:*
```typst
#set page(margin: (x: 60pt, y: 80pt), header: vp-header-theme-07(title: "VẬT LÍ 12", subtitle: "Chuyên đề ôn tập", color: rgb("#184C99")))
```
*Sản phẩm:* mẫu header thực tế ở đầu trang này. Các tham số riêng của mẫu có trong phụ lục.

]

#pagebreak()
#[
#set page(margin: (x: 60pt, y: 80pt), header: vp-header-theme-08(title: "VẬT LÍ 12", subtitle: "Chuyên đề ôn tập", color: rgb("#184C99")))
== Header 08
*Code:*
```typst
#set page(margin: (x: 60pt, y: 80pt), header: vp-header-theme-08(title: "VẬT LÍ 12", subtitle: "Chuyên đề ôn tập", color: rgb("#184C99")))
```
*Sản phẩm:* mẫu header thực tế ở đầu trang này. Các tham số riêng của mẫu có trong phụ lục.

]

#pagebreak()
#[
#set page(margin: (x: 60pt, y: 80pt), header: vp-header-theme-09(title: "VẬT LÍ 12", subtitle: "Chuyên đề ôn tập", color: rgb("#184C99")))
== Header 09
*Code:*
```typst
#set page(margin: (x: 60pt, y: 80pt), header: vp-header-theme-09(title: "VẬT LÍ 12", subtitle: "Chuyên đề ôn tập", color: rgb("#184C99")))
```
*Sản phẩm:* mẫu header thực tế ở đầu trang này. Các tham số riêng của mẫu có trong phụ lục.

]

#pagebreak()
#[
#set page(margin: (x: 60pt, y: 80pt), header: vp-header-theme-10(title: "VẬT LÍ 12", subtitle: "Chuyên đề ôn tập", color: rgb("#184C99")))
== Header 10
*Code:*
```typst
#set page(margin: (x: 60pt, y: 80pt), header: vp-header-theme-10(title: "VẬT LÍ 12", subtitle: "Chuyên đề ôn tập", color: rgb("#184C99")))
```
*Sản phẩm:* mẫu header thực tế ở đầu trang này. Các tham số riêng của mẫu có trong phụ lục.

]

#pagebreak()
#[
#set page(margin: (x: 60pt, y: 80pt), header: vp-header-theme-11(title: "VẬT LÍ 12", subtitle: "Chuyên đề ôn tập", color: rgb("#184C99")))
== Header 11
*Code:*
```typst
#set page(margin: (x: 60pt, y: 80pt), header: vp-header-theme-11(title: "VẬT LÍ 12", subtitle: "Chuyên đề ôn tập", color: rgb("#184C99")))
```
*Sản phẩm:* mẫu header thực tế ở đầu trang này. Các tham số riêng của mẫu có trong phụ lục.

]

#pagebreak()
#[
#set page(margin: (x: 60pt, y: 80pt), header: vp-header-theme-12(title: "VẬT LÍ 12", subtitle: "Chuyên đề ôn tập", color: rgb("#184C99")))
== Header 12
*Code:*
```typst
#set page(margin: (x: 60pt, y: 80pt), header: vp-header-theme-12(title: "VẬT LÍ 12", subtitle: "Chuyên đề ôn tập", color: rgb("#184C99")))
```
*Sản phẩm:* mẫu header thực tế ở đầu trang này. Các tham số riêng của mẫu có trong phụ lục.

]

#pagebreak()
#[
#set page(margin: (x: 60pt, y: 80pt), header: vp-header-theme-13(title: "VẬT LÍ 12", subtitle: "Chuyên đề ôn tập", color: rgb("#184C99")))
== Header 13
*Code:*
```typst
#set page(margin: (x: 60pt, y: 80pt), header: vp-header-theme-13(title: "VẬT LÍ 12", subtitle: "Chuyên đề ôn tập", color: rgb("#184C99")))
```
*Sản phẩm:* mẫu header thực tế ở đầu trang này. Các tham số riêng của mẫu có trong phụ lục.

]

#pagebreak()
#[
#set page(margin: (x: 60pt, y: 80pt), header: vp-header-theme-14(title: "VẬT LÍ 12", subtitle: "Chuyên đề ôn tập", color: rgb("#184C99")))
== Header 14
*Code:*
```typst
#set page(margin: (x: 60pt, y: 80pt), header: vp-header-theme-14(title: "VẬT LÍ 12", subtitle: "Chuyên đề ôn tập", color: rgb("#184C99")))
```
*Sản phẩm:* mẫu header thực tế ở đầu trang này. Các tham số riêng của mẫu có trong phụ lục.

]

#pagebreak()
#[
#set page(margin: (x: 60pt, y: 80pt), header: vp-header-theme-15(title: "VẬT LÍ 12", subtitle: "Chuyên đề ôn tập", color: rgb("#184C99")))
== Header 15
*Code:*
```typst
#set page(margin: (x: 60pt, y: 80pt), header: vp-header-theme-15(title: "VẬT LÍ 12", subtitle: "Chuyên đề ôn tập", color: rgb("#184C99")))
```
*Sản phẩm:* mẫu header thực tế ở đầu trang này. Các tham số riêng của mẫu có trong phụ lục.

]

#pagebreak()
#[
#set page(footer: vp-footer())
== Footer vp-footer
*Code:*
```typst
#set page(footer: vp-footer())
```
*Sản phẩm:* mẫu footer thực tế ở cuối trang này.

]

#pagebreak()
#[
#set page(footer: vp-footer-kage())
== Footer vp-footer-kage
*Code:*
```typst
#set page(footer: vp-footer-kage())
```
*Sản phẩm:* mẫu footer thực tế ở cuối trang này.

]

#pagebreak()
#[
#set page(footer: vp-footer-shuriken())
== Footer vp-footer-shuriken
*Code:*
```typst
#set page(footer: vp-footer-shuriken())
```
*Sản phẩm:* mẫu footer thực tế ở cuối trang này.

]

#pagebreak()
#[
#set page(footer: vp-footer-kage-enso())
== Footer vp-footer-kage-enso
*Code:*
```typst
#set page(footer: vp-footer-kage-enso())
```
*Sản phẩm:* mẫu footer thực tế ở cuối trang này.

]

#pagebreak()
#[
#set page(footer: vp-manual-footer-standard())
== Footer vp-manual-footer-standard
*Code:*
```typst
#set page(footer: vp-manual-footer-standard())
```
*Sản phẩm:* mẫu footer thực tế ở cuối trang này.

]

#pagebreak()
#[
#set page(footer: vp-manual-footer-fancy())
== Footer vp-manual-footer-fancy
*Code:*
```typst
#set page(footer: vp-manual-footer-fancy())
```
*Sản phẩm:* mẫu footer thực tế ở cuối trang này.

]

== Footer tùy chỉnh sâu
Footer Shuriken/Enso nhận title, slogan, color, accent-color, icon (kunai/shuriken/logo/content/none), divider (line/brush/none), page-format (1 hoặc 1 / total). Enso thêm enso-style: zen, grunge, ring-09, ring-01, ring-10. kage-brush và ninja-enso là alias của kage-enso.

*Code:*
```typst
#vp-footer-kage-enso(title: "VIETPHYS", slogan: "Học và thực hành",
  color: rgb("#184C99"), accent-color: rgb("#B08D57"),
  icon: "shuriken", enso-style: "grunge", divider: "brush", page-format: "1 / total")
```

*Sản phẩm thực tế:*
#product[
#vp-footer-kage-enso(title: "VIETPHYS", slogan: "Học và thực hành",
  color: rgb("#184C99"), accent-color: rgb("#B08D57"),
  icon: "shuriken", enso-style: "grunge", divider: "brush", page-format: "1 / total")
]

#pagebreak()
#[
#set page(margin: (x: 60pt, y: 80pt), header: vp-manual-header-standard())
== vp-manual-header-standard
```typst
#set page(header: vp-manual-header-standard())
```
]

#pagebreak()
#[
#set page(margin: (x: 60pt, y: 80pt), header: vp-manual-header-logo())
== vp-manual-header-logo
```typst
#set page(header: vp-manual-header-logo())
```
]

#pagebreak()
#[
#set page(margin: (x: 60pt, y: 80pt), header: vp-manual-header-fancy())
== vp-manual-header-fancy
```typst
#set page(header: vp-manual-header-fancy())
```
]

== Widget thông tin
Widget nhận tên tác giả, trường/lớp, ngày, mã đề/thời gian, mục tiêu hoặc content. Ngày là chuỗi bạn nhập. `vp-set-part`/`vp-part` cập nhật phần hiện tại; `vp-part-marker` chèn marker. Trong header dùng `right-content: vp-widget-part()` hoặc `vp-widget-smart-heading()`. Các widget có bộ tham số riêng ở phụ lục.

*Code:*
```typst
#vp-widget-stack(vp-widget-author(name: "Nguyễn Minh", role: "GV"),
  vp-widget-school(school: "THPT", class-name: "12A"))
#vp-widget-stack(vp-widget-date(date: "03/10/2026"), vp-widget-exam(code: "ĐỀ 101", time: "50 phút"))
#vp-widget-target(target: "9+", slogan: "Luyện tập mỗi ngày")
#vp-widget-pill([Nội dung minh họa.], icon: "bolt", color: rgb("#7C3AED"))
#vp-set-part("Phần I: Trắc nghiệm")
#vp-widget-part()
#vp-widget-heading(level: 1)
#vp-widget-smart-heading()
```

*Sản phẩm thực tế:*
#product[
#vp-widget-stack(vp-widget-author(name: "Nguyễn Minh", role: "GV"),
  vp-widget-school(school: "THPT", class-name: "12A"))
#vp-widget-stack(vp-widget-date(date: "03/10/2026"), vp-widget-exam(code: "ĐỀ 101", time: "50 phút"))
#vp-widget-target(target: "9+", slogan: "Luyện tập mỗi ngày")
#vp-widget-pill([Nội dung minh họa.], icon: "bolt", color: rgb("#7C3AED"))
#vp-set-part("Phần I: Trắc nghiệm")
#vp-widget-part()
#vp-widget-heading(level: 1)
#vp-widget-smart-heading()
]

= Logo, icon và nét cọ
Các mẫu logo/icon và toàn bộ 35 preset nét cọ dưới đây có code và sản phẩm thực tế. Dùng `color`, kích thước và các tham số riêng trong phụ lục. Brush hỗ trợ width/height/flip-x/flip-y.

== vp-logo

*Code:*
```typst
#vp-logo()
```

*Sản phẩm thực tế:*
#product[
#vp-logo()
]

== vp-logo-colored

*Code:*
```typst
#vp-logo-colored()
```

*Sản phẩm thực tế:*
#product[
#vp-logo-colored()
]

== vp-hockage-logo

*Code:*
```typst
#vp-hockage-logo()
```

*Sản phẩm thực tế:*
#product[
#vp-hockage-logo()
]

== vp-ninja-scholar-logo

*Code:*
```typst
#vp-ninja-scholar-logo()
```

*Sản phẩm thực tế:*
#product[
#vp-ninja-scholar-logo()
]

== vp-icon-shuriken

*Code:*
```typst
#vp-icon-shuriken()
```

*Sản phẩm thực tế:*
#product[
#vp-icon-shuriken()
]

== vp-icon-kunai

*Code:*
```typst
#vp-icon-kunai()
```

*Sản phẩm thực tế:*
#product[
#vp-icon-kunai()
]

== vp-icon-cloud

*Code:*
```typst
#vp-icon-cloud()
```

*Sản phẩm thực tế:*
#product[
#vp-icon-cloud()
]

== vp-icon-ninja-silhouette

*Code:*
```typst
#vp-icon-ninja-silhouette()
```

*Sản phẩm thực tế:*
#product[
#vp-icon-ninja-silhouette()
]

== vp-physics-enso-icon

*Code:*
```typst
#vp-physics-enso-icon()[Vật lí]
```

*Sản phẩm thực tế:*
#product[
#vp-physics-enso-icon()[Vật lí]
]

== Nét cọ enso-badge

*Code:*
```typst
#vp-brush("enso-badge", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
```

*Sản phẩm thực tế:*
#product[
#vp-brush("enso-badge", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
]

== Nét cọ enso-grunge

*Code:*
```typst
#vp-brush("enso-grunge", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
```

*Sản phẩm thực tế:*
#product[
#vp-brush("enso-grunge", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
]

== Nét cọ enso-ring-01

*Code:*
```typst
#vp-brush("enso-ring-01", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
```

*Sản phẩm thực tế:*
#product[
#vp-brush("enso-ring-01", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
]

== Nét cọ enso-ring-06

*Code:*
```typst
#vp-brush("enso-ring-06", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
```

*Sản phẩm thực tế:*
#product[
#vp-brush("enso-ring-06", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
]

== Nét cọ enso-ring-09

*Code:*
```typst
#vp-brush("enso-ring-09", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
```

*Sản phẩm thực tế:*
#product[
#vp-brush("enso-ring-09", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
]

== Nét cọ enso-ring-10

*Code:*
```typst
#vp-brush("enso-ring-10", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
```

*Sản phẩm thực tế:*
#product[
#vp-brush("enso-ring-10", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
]

== Nét cọ enso-ring-11

*Code:*
```typst
#vp-brush("enso-ring-11", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
```

*Sản phẩm thực tế:*
#product[
#vp-brush("enso-ring-11", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
]

== Nét cọ banner-horizontal

*Code:*
```typst
#vp-brush("banner-horizontal", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
```

*Sản phẩm thực tế:*
#product[
#vp-brush("banner-horizontal", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
]

== Nét cọ banner-calligraphy-01

*Code:*
```typst
#vp-brush("banner-calligraphy-01", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
```

*Sản phẩm thực tế:*
#product[
#vp-brush("banner-calligraphy-01", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
]

== Nét cọ banner-calligraphy-02

*Code:*
```typst
#vp-brush("banner-calligraphy-02", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
```

*Sản phẩm thực tế:*
#product[
#vp-brush("banner-calligraphy-02", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
]

== Nét cọ banner-calligraphy-03

*Code:*
```typst
#vp-brush("banner-calligraphy-03", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
```

*Sản phẩm thực tế:*
#product[
#vp-brush("banner-calligraphy-03", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
]

== Nét cọ banner-calligraphy-04

*Code:*
```typst
#vp-brush("banner-calligraphy-04", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
```

*Sản phẩm thực tế:*
#product[
#vp-brush("banner-calligraphy-04", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
]

== Nét cọ banner-calligraphy-05

*Code:*
```typst
#vp-brush("banner-calligraphy-05", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
```

*Sản phẩm thực tế:*
#product[
#vp-brush("banner-calligraphy-05", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
]

== Nét cọ banner-calligraphy-06

*Code:*
```typst
#vp-brush("banner-calligraphy-06", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
```

*Sản phẩm thực tế:*
#product[
#vp-brush("banner-calligraphy-06", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
]

== Nét cọ banner-grunge-01

*Code:*
```typst
#vp-brush("banner-grunge-01", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
```

*Sản phẩm thực tế:*
#product[
#vp-brush("banner-grunge-01", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
]

== Nét cọ banner-grunge-02

*Code:*
```typst
#vp-brush("banner-grunge-02", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
```

*Sản phẩm thực tế:*
#product[
#vp-brush("banner-grunge-02", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
]

== Nét cọ banner-grunge-03

*Code:*
```typst
#vp-brush("banner-grunge-03", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
```

*Sản phẩm thực tế:*
#product[
#vp-brush("banner-grunge-03", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
]

== Nét cọ banner-grunge-04

*Code:*
```typst
#vp-brush("banner-grunge-04", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
```

*Sản phẩm thực tế:*
#product[
#vp-brush("banner-grunge-04", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
]

== Nét cọ banner-grunge-05

*Code:*
```typst
#vp-brush("banner-grunge-05", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
```

*Sản phẩm thực tế:*
#product[
#vp-brush("banner-grunge-05", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
]

== Nét cọ banner-ribbon-01

*Code:*
```typst
#vp-brush("banner-ribbon-01", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
```

*Sản phẩm thực tế:*
#product[
#vp-brush("banner-ribbon-01", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
]

== Nét cọ banner-ribbon-02

*Code:*
```typst
#vp-brush("banner-ribbon-02", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
```

*Sản phẩm thực tế:*
#product[
#vp-brush("banner-ribbon-02", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
]

== Nét cọ banner-ribbon-03

*Code:*
```typst
#vp-brush("banner-ribbon-03", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
```

*Sản phẩm thực tế:*
#product[
#vp-brush("banner-ribbon-03", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
]

== Nét cọ banner-ribbon-04

*Code:*
```typst
#vp-brush("banner-ribbon-04", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
```

*Sản phẩm thực tế:*
#product[
#vp-brush("banner-ribbon-04", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
]

== Nét cọ banner-ribbon-05

*Code:*
```typst
#vp-brush("banner-ribbon-05", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
```

*Sản phẩm thực tế:*
#product[
#vp-brush("banner-ribbon-05", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
]

== Nét cọ stroke-dynamic-01

*Code:*
```typst
#vp-brush("stroke-dynamic-01", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
```

*Sản phẩm thực tế:*
#product[
#vp-brush("stroke-dynamic-01", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
]

== Nét cọ stroke-dynamic-02

*Code:*
```typst
#vp-brush("stroke-dynamic-02", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
```

*Sản phẩm thực tế:*
#product[
#vp-brush("stroke-dynamic-02", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
]

== Nét cọ stroke-curve-01

*Code:*
```typst
#vp-brush("stroke-curve-01", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
```

*Sản phẩm thực tế:*
#product[
#vp-brush("stroke-curve-01", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
]

== Nét cọ stroke-curve-02

*Code:*
```typst
#vp-brush("stroke-curve-02", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
```

*Sản phẩm thực tế:*
#product[
#vp-brush("stroke-curve-02", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
]

== Nét cọ splatter-01

*Code:*
```typst
#vp-brush("splatter-01", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
```

*Sản phẩm thực tế:*
#product[
#vp-brush("splatter-01", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
]

== Nét cọ splatter-02

*Code:*
```typst
#vp-brush("splatter-02", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
```

*Sản phẩm thực tế:*
#product[
#vp-brush("splatter-02", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
]

== Nét cọ splatter-05

*Code:*
```typst
#vp-brush("splatter-05", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
```

*Sản phẩm thực tế:*
#product[
#vp-brush("splatter-05", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
]

== Nét cọ splatter-09

*Code:*
```typst
#vp-brush("splatter-09", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
```

*Sản phẩm thực tế:*
#product[
#vp-brush("splatter-09", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
]

== Nét cọ splatter-10

*Code:*
```typst
#vp-brush("splatter-10", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
```

*Sản phẩm thực tế:*
#product[
#vp-brush("splatter-10", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
]

== Nét cọ splatter-19

*Code:*
```typst
#vp-brush("splatter-19", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
```

*Sản phẩm thực tế:*
#product[
#vp-brush("splatter-19", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
]

== Nét cọ splatter-20

*Code:*
```typst
#vp-brush("splatter-20", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
```

*Sản phẩm thực tế:*
#product[
#vp-brush("splatter-20", color: rgb("#184C99"), width: 6cm, height: 1.3cm)
]

= Đáp án và lời giải của các ví dụ
Bảng tổng hợp chứa các câu trước vị trí gọi lệnh, kể cả câu đã hiện đáp án trực tiếp. Phần lời giải chỉ chứa lời giải chưa hiện trực tiếp. Reset số giữa đề có thể làm bảng có số trùng.

== Lệnh tổng hợp cuối tài liệu
`vp-print-keys` và `vp-print-solutions` nhận title. Màu bảng đáp án tổng hợp dùng vp-colors, không lấy option tf-... của từng câu.

*Code:*
```typst
#vp-print-keys(title: "ĐÁP ÁN CÁC VÍ DỤ")
#vp-print-solutions(title: "LỜI GIẢI CHƯA HIỆN TRỰC TIẾP")
```

*Sản phẩm thực tế:*
#product[
#vp-print-keys(title: "ĐÁP ÁN CÁC VÍ DỤ")
#vp-print-solutions(title: "LỜI GIẢI CHƯA HIỆN TRỰC TIẾP")
]

#pagebreak()
= Tra cứu toàn bộ API công khai
Chữ ký dưới đây lấy trực tiếp từ mã nguồn hiện tại, gồm tham số và mặc định. Tham số không có dấu hai chấm là tham số vị trí. Hàm bắt đầu bằng gạch dưới là nội bộ. Alias, state và counter được liệt kê theo module.

== Theme câu hỏi nâng cao
`vp-theme-state` chứa dictionary mcq/tf/short/essay. Giữ các khóa còn lại khi sửa dictionary. `vp-set-theme` quản lý palette trang trí; `vp-theme-state` quản lý mặc định theo dạng câu. Các giá trị mặc định đầy đủ có ở phần dữ liệu cuối phụ lục.
```typst
#context {
  let theme = vp-theme-state.get()
  theme.tf.tf-header = rgb("#6D28D9")
  theme.tf.tf-correct-color = rgb("#15803D")
  vp-theme-state.update(theme)
}
```

== themes/heading_theme.typ

```typst
#let vp-lesson-title(
  num: "1",
  title: "Tên bài học",
  color: auto // Màu mặc định theo ảnh mẫu
```

```typst
#let vp-heading-theme-01(
  color: auto,
  bg-color: auto,
  numbering: "1.1.1.1",
  body
```

```typst
```

== themes/modern_headings.typ

```typst
```

== themes/theme_colors.typ

```typst
```

```typst
```

```typst
```

```typst
```

```typst
vp-theme-color = state("vp-theme-color", vp-theme-presets.ocean)
```

== layout/additional_styles.typ

```typst
```

```typst
#let vp-header-theme-03(
  title: "TÀI LIỆU HỌC TẬP",
  subtitle: "Chinh phục tri thức",
  color: rgb("#E67E22"),
  icon: none,
  date: "Ngày: 24/07/2026",
  right-content: none,
  font: "Times New Roman",
```

```typst
#let vp-header-theme-05(
  title: "TÀI LIỆU HỌC TẬP",
  subtitle: "Học để hiểu – Hiểu để hành động",
  color: rgb("#722ED1"),
  icon: "book-open",
  date: "Ngày: 24/07/2026",
  right-content: none,
  font: "Times New Roman",
```

```typst
#let vp-header-theme-06(
  title: "TÀI LIỆU HỌC TẬP",
  subtitle: "Đơn giản – Hiệu quả – Bền vững",
  color: rgb("#1E3A8A"),
  icon: none,
  date: "Ngày: 24/07/2026",
  right-content: none,
  font: "Times New Roman",
```

```typst
#let vp-header-theme-07(
  title: "TÀI LIỆU HỌC TẬP",
  subtitle: "Tập trung – Tư duy – Bứt phá",
  color: rgb("#D32F2F"),
  icon: "bullseye",
  date: "Ngày: 24/07/2026",
  right-content: none,
  font: "Times New Roman",
```

```typst
#let vp-header-theme-08(
  title: "TÀI LIỆU HỌC TẬP",
  subtitle: "Tri thức xanh – Tương lai xanh",
  color: rgb("#5F9E31"),
  icon: "seedling",
  date: "Ngày: 24/07/2026",
  right-content: none,
  font: "Times New Roman",
```

```typst
#let vp-header-theme-09(
  title: "TÀI LIỆU HỌC TẬP",
  subtitle: "Ước mơ – Nỗ lực – Thành công",
  color: rgb("#1D3B7A"),
  icon: "star",
  date: "Ngày: 24/07/2026",
  right-content: none,
  font: "Times New Roman",
```

```typst
#let vp-header-theme-10(
  title: "TÀI LIỆU HỌC TẬP",
  subtitle: "Nền tảng vững chắc – Tương lai rộng mở",
  color: rgb("#795548"),
  icon: "landmark",
  date: "Ngày: 24/07/2026",
  right-content: none,
  font: "Times New Roman",
```

```typst
#let vp-header-theme-11(
  title: "TÀI LIỆU HỌC TẬP",
  subtitle: "Tư duy khác biệt – Kết quả khác biệt",
  color: rgb("#008080"),
  icon: none,
  date: "Ngày: 24/07/2026",
  right-content: none,
  font: "Times New Roman",
```

```typst
#let vp-header-theme-12(
  title: "TÀI LIỆU HỌC TẬP",
  subtitle: "Kiến tạo giá trị – Dẫn lối thành công",
  color: rgb("#D35400"),
  icon: none,
  date: "Ngày: 24/07/2026",
  right-content: none,
  font: "Times New Roman",
```

```typst
#let vp-header-theme-13(
  title: "TÀI LIỆU HỌC TẬP",
  subtitle: "Công nghệ – Kết nối – Phát triển",
  color: rgb("#0288D1"),
  icon: none,
  date: "Ngày: 24/07/2026",
  right-content: none,
  font: "Times New Roman",
```

```typst
#let vp-header-theme-14(
  title: "TÀI LIỆU HỌC TẬP",
  subtitle: "Sáng tạo không giới hạn",
  color: rgb("#8E44AD"),
  icon: none,
  date: "Ngày: 24/07/2026",
  right-content: none,
  font: "Times New Roman",
```

```typst
#let vp-header-theme-15(
  title: "TÀI LIỆU HỌC TẬP",
  subtitle: "Hành trình học tập – Hành trình trưởng thành",
  color: rgb("#2E7D32"),
  icon: none,
  date: "Ngày: 24/07/2026",
  right-content: none,
  font: "Times New Roman",
```

```typst
#let vp-footer-kage-enso(
  title: "Học Kage",
  slogan: "Level Up Your Knowledge",
  color: auto,
  accent-color: auto,
  icon: "kunai", // "kunai", "shuriken", "logo", or custom content / none
  enso-style: "zen", // "zen", "grunge", "ring-09", "ring-01", "ring-10"
  divider: "line", // "line", "brush", "none"
  page-format: "1", // "1" or "1 / total"
```

```typst
```

```typst
#let vp-manual-header-logo(
  title: "VIETPHYS PACKAGE",
  subtitle: "CẨM NANG HƯỚNG DẪN SỬ DỤNG",
  date: none,
  right-content: none,
  color: auto,
```

```typst
```

```typst
#let vp-manual-header-fancy(
  title: "VIETPHYS PACKAGE",
  subtitle: "CẨM NANG HƯỚNG DẪN SỬ DỤNG",
  color: rgb("#1D3B7A"),
  icon: auto, compact: false, font: auto,
  title-size: auto, subtitle-size: auto, chapter-size: auto,
  icon-size: auto, title-gap: auto, column-gap: auto,
  bottom-padding: auto, chapter-inset: auto, divider-thickness: auto,
  chapter-label: auto,
```

```typst
#let vp-manual-footer-fancy(
  slogan: "Vietphys Typst Engine • Sách & Đề Thi Chuẩn Quốc Gia",
  color: rgb("#1D3B7A"),
```

Alias:
```typst
vp-footer-kage-brush = vp-footer-kage-enso
vp-footer-ninja-enso = vp-footer-kage-enso
```

== layout/header_footer.typ

```typst
#let vp-header(
  left-text: "",
  center-text: "",
  right-text: "",
  color: rgb("#000000"),
  line-width: 1pt
```

```typst
#let vp-header-theme-01(
  title: "TÀI LIỆU VẬT LÍ 12",
  subtitle: "Chuyên đề: Động lực học - Vượt chướng ngại vật",
  color: auto,
  icon: "bolt",
  date: none,
  right-content: none
```

```typst
#let vp-header-theme-02(
  title: "TÀI LIỆU HỌC TẬP",
  subtitle: "Học hôm nay - Thành công ngày mai",
  color: auto,
  icon: "book-open",
  right-content: none
```

```typst
#let vp-footer(
  left-text: "",
  center-text: "",
  right-text: "",
  color: rgb("#000000"),
  line-width: 1pt
```

```typst
#let vp-footer-kage(
  color: rgb("#FF3D00"),
  kunai-path: "kunai.svg",
  slogan: "Level Up Your Knowledge"
```

== layout/header_widgets.typ

```typst
```

```typst
```

```typst
#let vp-widget-smart-heading(
  title: none,
  icon: "hashtag",
  color: rgb("#1890FF"),
  bg: none,
  font: "Times New Roman",
```

```typst
#let vp-widget-part(
  title: none,
  icon: "bookmark",
  color: rgb("#1890FF"),
  bg: none,
  font: "Times New Roman",
```

```typst
#let vp-widget-heading(
  level: 1,
  icon: "hashtag",
  color: rgb("#1890FF"),
  bg: none,
  font: "Times New Roman",
```

```typst
#let vp-widget-date(
  date: "24/07/2026",
  icon: "calendar-days",
  color: rgb("#1890FF"),
  bg: none,
  font: "Times New Roman",
```

```typst
#let vp-widget-author(
  name: "Thầy Minh",
  role: "GV",
  icon: "chalkboard-user",
  color: rgb("#1890FF"),
  bg: none,
  font: "Times New Roman",
```

```typst
#let vp-widget-school(
  school: "THPT Chuyên",
  class-name: "Lớp 12",
  icon: "school",
  color: rgb("#1890FF"),
  bg: none,
  font: "Times New Roman",
```

```typst
#let vp-widget-exam(
  code: "MÃ ĐỀ 101",
  time: "50 phút",
  color: rgb("#D32F2F"),
  font: "Times New Roman",
```

```typst
#let vp-widget-target(
  target: "9+",
  slogan: "Chinh phục điểm 10",
  icon: "bullseye",
  color: rgb("#D35400"),
  font: "Times New Roman",
```

```typst
#let vp-widget-pill(
  content,
  icon: none,
  color: rgb("#1890FF"),
  bg: none,
  radius: 4pt,
  font: "Times New Roman",
```

```typst
#let vp-widget-stack(
  ..widgets,
  spacing: 5pt,
```

Alias:
```typst
vp-part = vp-set-part // Alias tiện dụng
```

```typst
vp-current-part = state("vp-current-part", "")
```

== layout/heading_widgets.typ

```typst
#let vp-brush(
  name,
  color: auto,
  width: auto,
  height: auto,
  flip-x: false,
  flip-y: false,
```

```typst
```

```typst
#let vp-icon-kunai(
  color: auto,
  accent: none,
  size: auto,
  width: auto,
  height: auto,
  angle: 0deg
```

```typst
```

```typst
```

```typst
#let vp-physics-enso-icon(
  body,
  num: "1",
  title: "ĐỘNG HỌC",
  desc: "Chuyển động thẳng, cong, vận tốc, gia tốc",
  color: auto,
  size: 65pt,
```

```typst
#let vp-logo-hockage(
  primary: auto,
  accent: auto,
  size: 60pt,
  width: auto,
  height: auto,
```

```typst
#let vp-ninja-scholar-logo(
  primary: auto,
  accent: auto,
  size: 60pt,
  width: auto,
  height: auto,
```

Alias:
```typst
vp-hockage-logo = vp-logo-hockage
```

== layout/modern_layout.typ

```typst
#let vp-header-theme-04(
  title: "TÀI LIỆU HỌC TẬP",
  subtitle: "Khoa học – Logic – Sáng tạo",
  color: rgb("#259697"),
  icon: none,
  date: "Ngày: 24/07/2026",
  right-content: none,
  font: "Times New Roman",
```

```typst
#let vp-footer-shuriken(
  title: "Học Kage",
  slogan: "Level Up Your Knowledge",
  color: auto,
  accent-color: auto,
  icon: "kunai", // "kunai", "shuriken", "logo", or custom content / none
  divider: "line", // "line", "brush", "none"
  page-format: "1", // "1" or "1 / total"
  compact: false, font: auto,
  title-size: auto, slogan-size: auto, page-size: auto,
  badge-size: auto, page-radius: auto, icon-size: auto, column-gap: auto,
  divider-gap: auto,
```

== layout/page_setup.typ

```typst
#let vp-page-setup(
  paper: "a4",
  margin: (x: 2cm, y: 2.5cm),
  theme-color: auto,
  theme-preset: none,
  header: auto,
  footer: auto,
  header-ascent: auto, footer-descent: auto, leading: 1.2em,
  font: vp-settings.base-font, font-size: vp-settings.base-size,
  heading-theme: vp-heading-theme-modern,
  body
```

== components/boxes.typ

```typst
#let vp-note(
  title: "Ghi nhớ",
  icon: "logo",
  color: rgb("#5F9E31"),
  bg-color: rgb("#FEE57E"),
  body
```

== components/hierarchy.typ

```typst
```

```typst
#let vp-lesson(num: "1", title: "TÊN BÀI HỌC", subtitle: none, style: "less_modern",
  color: auto, font: auto, tab-text: "BÀI HỌC") = { /* nội dung hàm */ }
```

== components/knowledge_box.typ

```typst
#let vp-knowledge-box(
  title: "",
  content: [],
  type: "definition", // Hỗ trợ: definition, theorem, warning, note
  color: auto
```

== components/media.typ

```typst
#let vp-image(
  path, // Đổi src: "" thành tham số vị trí bắt buộc
  caption: "",
  width: 80%,
  align-pos: center
```

```typst
#let vp-formula(
  eq: "",
  numbered: false
```

```typst
#let vp-logo(
  color: rgb("#1D3B7A"),
  color2: rgb("#C09153"), // Màu vàng đất mặc định
  height: 2cm
```

== components/modern_hierarchy.typ

```typst
#let vp-chapter-modern(
  num: "1",
  title: "TÊN CHƯƠNG",
  style: "chap_hexagon", // Keep parameter for backward compatibility
  color: auto,
  font: "Arial",
```

```typst
#let vp-lesson-modern(
  num: "1",
  title: "TÊN BÀI HỌC",
  subtitle: none,
  style: "less_modern",
  color: auto,
  font: "Rounded Mplus 1c",
  tab-text: "BÀI HỌC",
```

```typst
vp-is-first-lesson = state("vp-is-first-lesson", true)
```

== components/quantities.typ

```typst
```

```typst
```

== components/question_bank.typ

```typst
#let vp-set-ans-style(
  shape: auto,
  border: auto,
  bg: auto,
  width: auto,
  text-color: auto,
```

```typst
#let vp-set-question-style(
  num-style: auto,
  lines: auto,
  prefix: auto,
  icon-before: auto,
  icon-after: auto,
  lbl-color: auto,
  lbl-bg: auto,
  lbl-border: auto,
  lbl-radius: auto,
  lbl-padding: auto,
  opt-color: auto,
  opt-bg: auto,
  opt-border: auto,
  opt-radius: auto,
  ans-shape: auto,
  ans-mark-border: auto,
  ans-mark-bg: auto,
  ans-mark-width: auto,
  ans-text-color: auto,
  q-bg: auto,
  q-border: auto,
  q-radius: auto,
  q-padding: auto,
```

```typst
#let vp-question(
  stem, listEs: (), num-style: auto, type: "mcq", options: (), statements: (), ans: none, ans-tf: (), sol: none, level: none, source: none, stem2: none, image-scope: "stem",
  prefix: auto, points: none,

  lines: auto, q-bg: auto, q-border: auto, tf-header-bg: auto, ans-color: auto, tf-correct-color: auto, tf-wrong-color: auto, ans-shape: auto, ans-mark-bg: auto, ans-mark-border: auto, ans-mark-width: auto, ans-text-color: auto, level-color: auto, source-color: auto,
  q-radius: auto, q-padding: auto, q-margin: 6pt, lbl-color: auto, lbl-bg: none, lbl-border: none, lbl-radius: 0pt, lbl-padding: 0pt, icon-before: none, icon-after: none, opt-color: auto, opt-bg: none, opt-border: none, opt-radius: 0pt, opt-padding: 0pt, tf-style: "table", tf-header-color: white, tf-border: rgb("#E8E8E8"), tf-row-bg: none, short-border: rgb("#333333"), short-bg: none, image: none, image-ratio: 0.65, image-gap: 4%, image-side: "right", image-valign: top,
```

```typst
```

```typst
```

```typst
vp-q-counter = counter("vp-question")
vp-show-ans = state("vp-show-ans", false)
vp-show-sol = state("vp-show-sol", false)
vp-show-level = state("vp-show-level", true)
vp-show-source = state("vp-show-source", true)
vp-sol-store = state("vp-sol-store", ())
vp-ans-shape = state("vp-ans-shape", auto)
vp-ans-mark-border = state("vp-ans-mark-border", auto)
vp-ans-mark-bg = state("vp-ans-mark-bg", auto)
vp-ans-mark-width = state("vp-ans-mark-width", auto)
vp-ans-text-color = state("vp-ans-text-color", auto)
vp-opt-color = state("vp-opt-color", auto)
vp-opt-bg = state("vp-opt-bg", auto)
vp-opt-border = state("vp-opt-border", auto)
vp-opt-radius = state("vp-opt-radius", auto)
vp-q-prefix = state("vp-q-prefix", "Câu")
vp-q-icon-before = state("vp-q-icon-before", none)
vp-q-icon-after = state("vp-q-icon-after", none)
vp-q-lbl-color = state("vp-q-lbl-color", auto)
vp-q-lbl-bg = state("vp-q-lbl-bg", auto)
vp-q-lbl-border = state("vp-q-lbl-border", auto)
vp-q-lbl-radius = state("vp-q-lbl-radius", auto)
vp-q-lbl-padding = state("vp-q-lbl-padding", auto)
vp-q-bg = state("vp-q-bg", auto)
vp-q-border = state("vp-q-border", auto)
vp-q-radius = state("vp-q-radius", auto)
vp-q-padding = state("vp-q-padding", auto)
vp-q-num-style = state("vp-q-num-style", "1")
vp-q-lines = state("vp-q-lines", auto)
vp-theme-state = state("vp-theme-state", vp-question-theme)
```

== Dữ liệu vp-theme-presets
```typst
#let vp-theme-presets = (
  konoha: rgb("#5F9E31"),    // Làng Lá (Xanh lục Ninja / Mộc Độn)
  minato: rgb("#F59E0B"),    // Tia Chớp Vàng (Vàng Cam Phi Lôi Thần)
  uchiha: rgb("#E53E3E"),    // Lửa Uchiha (Đỏ Hỏa Độn)
  ocean: rgb("#1890FF"),     // Đại Dương (Xanh dương Thủy Độn / Tiêu chuẩn)
  wind: rgb("#0EA5E9"),      // Phong Độn (Xanh da trời Rasengan)
  shadow: rgb("#2D3748"),    // Ám Bộ (Xám đen / Huyền bí)
  violet: rgb("#8B5CF6"),    // Rinnegan (Tím Luân Hồi)
  emerald: rgb("#10B981"),   // Ngọc Lục Bảo
)
```

== Dữ liệu vp-colors
```typst
#let vp-colors = (
  primary: rgb("#1890FF"),
  success: rgb("#52C41A"),
  warning: rgb("#FAAD14"),
  danger: rgb("#FF4D4F"),
  text-main: rgb("#333333"),
  text-muted: rgb("#888888"),
  bg-light: rgb("#F5F5F5")
)
```

== Dữ liệu vp-settings
```typst
#let vp-settings = (
  base-font: "Times New Roman",
  base-size: 12pt,
  line-height: 1.2
)
```

== Dữ liệu vp-question-theme
```typst
#let vp-question-theme = (
  mcq: (bg: none, border: none, lines: 0, ans-color: vp-colors.danger, ans-shape: "circle", ans-mark-bg: none, ans-mark-border: rgb("#333"), ans-mark-width: 0.8pt, ans-text-color: rgb("#333"), level-color: vp-colors.primary, source-color: vp-colors.text-muted),
  tf: (bg: none, border: none, lines: 0, tf-header: rgb("#1A73E8"), tf-correct-color: vp-colors.success, tf-wrong-color: vp-colors.danger, ans-mark-bg: none, ans-mark-border: rgb("#333"), ans-mark-width: 0.8pt, level-color: vp-colors.primary, source-color: vp-colors.text-muted),
  short: (bg: none, border: none, lines: 0, ans-color: vp-colors.danger, level-color: vp-colors.primary, source-color: vp-colors.text-muted),
  essay: (bg: none, border: none, lines: 5, ans-color: vp-colors.danger, level-color: vp-colors.primary, source-color: vp-colors.text-muted),
)
```

= Sách bài tập và cấu hình tái sử dụng

Mẫu `vp-workbook` tích hợp các tùy chỉnh trang và bài tập. Tệp
`examples/workbook.typ` là ví dụ độc lập, đủ bốn dạng câu hỏi; chỉ cần import gói.
Các tùy chỉnh trong `page` và `questions` ghi đè mặc định theo từng khóa.
Dictionary con như `margin` được thay toàn bộ.

```typst
#import "@local/vietphys:0.1.0": *
#show: vp-workbook.with(
  title: "BÀI TẬP VẬT LÍ 10",
  page: (font-size: 14pt, header-ascent: 23pt, footer-descent: 6pt),
  questions: (
    q-spacing: 6pt, stem-spacing: 7pt,
    line-spacing: 1.8em, lines-above: 16pt,
    instruction-gap: 14pt, tf-inset: (x: 5pt, y: 7pt),
  ),
)
#vp-workbook-chapter(num: "I", title: "Động học")
Nội dung chương.
#vp-workbook-lesson(num: 1, title: "Quãng đường và độ dịch chuyển")
= Phần I. Trắc nghiệm khách quan
#vp-instructions(reset: true)[Chọn một phương án đúng.]
#vp-question([Tốc độ có đơn vị nào?],
  options: ([$"m/s"$], [$"m"$], [$"s"$], [$"kg"$]), ans: "A")
```

`vp-workbook-chapter` dùng chap_hexagon; `vp-workbook-lesson` dùng less_modern
và bắt đầu trang mới kể cả bài đầu chương. Hai hàm nhận mọi tham số của
`vp-chapter` và `vp-lesson`, gồm `font`, `style`, `num`, `title`, `label`.
Font tiêu đề mặc định là Rounded Mplus 1c, dự phòng Arial nếu máy thiếu font.
`vp-workbook-defaults` công khai hai dictionary `page`, `questions`.

== Mục lục và nội dung chương tự động

```typst
#vp-book-outline(subtitle: [SÁCH BÀI TẬP VẬT LÍ 10], break-before: (3,))
#vp-workbook-chapter(num: "I", title: "Động học")
#vp-chapter-outline(summary: [Mỗi bài gồm bốn phần luyện tập.])
```

Hai hàm lấy tên bài, số thứ tự và số trang trực tiếp từ heading của tài liệu,
và tạo liên kết đến từng bài. Mục lục giữ đầy đủ tiêu đề dài; trang nội dung
chương chỉ liệt kê các bài thuộc chương hiện tại. Tùy chỉnh `color`, `font`,
`title-font`, `lesson-size`, `row-padding`. `break-before` là mảng thứ tự
chương cần bắt đầu ở trang mục lục mới. Đặt các lệnh trước những bài được liệt kê.

== Cấu hình câu hỏi và câu hướng dẫn

`vp-exercise-layout` có thể dùng dưới dạng show rule hoặc bọc một đoạn.
Cấu hình kế thừa vào các tệp include, khôi phục khi hết đoạn, và hỗ trợ lồng nhau.
Tham số truyền trực tiếp vào từng câu được ưu tiên cao nhất.

#table(
  columns: (1fr, 2fr), inset: 6pt,
  [*Tham số*], [*Tác dụng*],
  [`q-spacing`], [Khoảng cách câu và các block trong câu.],
  [`stem-spacing`], [Khoảng cách block đề câu hỏi.],
  [`line-spacing`], [Đệm sau mỗi dòng kẻ; không phải chiều cao hàng cố định.],
  [`lines-above`], [Khoảng trống trước dòng kẻ đầu.],
  [`instruction-gap`], [Khoảng cách hướng dẫn đến Câu 1.],
  [`tf-inset`], [Đệm ô bảng đúng/sai; tăng y để hàng cao hơn.],
  [`keep-first-line`], [Giữ cuối đề cùng dòng làm bài đầu tiên.],
  [`keep-together`], [Mảng các loại câu giữ trên cùng trang.],
  [`show-answers`, `show-solutions`], [Hiện đáp án và lời giải trực tiếp.],
  [`show-levels`, `show-sources`], [Hiện mức độ và nguồn.],
)

Preset workbook ẩn đáp án/lời giải; câu mcq được ngắt giữa các hàng phương án,
giữ cuối đề cùng hàng đầu tiên. Mỗi phương án giữ nguyên, các nhãn cùng hàng thẳng nhau.
Câu đúng/sai được ngắt giữa các phát biểu, giữ cuối đề cùng hàng đầu tiên và lặp
tiêu đề bảng ở trang sau. Mỗi phát biểu cùng hai ô Đ/S giữ nguyên trên một trang.
Câu short được giữ trên một trang; câu tự luận được phép ngắt trang.
Từng câu có thể ghi đè `breakable: false` để giữ nguyên hoặc `breakable: true` để cho phép ngắt.
Không gọi lệnh in bảng đáp án nếu chỉ cần bản học sinh.

```typst
// Chỉ cấu hình câu hỏi, dùng cùng bố cục trang hiện có:
#show: vp-exercise-layout.with(q-spacing: 6pt, instruction-gap: 14pt)

// Câu hướng dẫn: áp dụng cho cả bốn phần, reset số câu tùy chọn.
#vp-instructions(gap: 16pt, reset: true)[Trình bày lời giải.]

// Ghi đè riêng một câu:
#vp-question([Đề bài...], type: "essay", lines: 5,
  lines-above: 20pt, line-spacing: 2em, breakable: true)

// Đoạn giáo viên; ra ngoài đoạn sẽ trở lại cấu hình trước đó:
#vp-exercise-layout(show-answers: true, show-solutions: true)[
  #vp-question([Đề bài...], type: "short", ans: "20", sol: [Lời giải.])
]
```

Ví dụ hiển thị với khoảng cách 14pt sau hướng dẫn và 16pt trước dòng kẻ:
#vp-exercise-layout(q-spacing: 6pt, instruction-gap: 14pt,
  line-spacing: 1.8em, lines-above: 16pt, keep-first-line: true,
  show-answers: false, show-solutions: false)[
  #vp-instructions[Trình bày lập luận, công thức và kết luận.]
  #vp-question([Một người đi thẳng 30 m rồi quay lại 10 m.
    Tính quãng đường và độ lớn độ dịch chuyển.], type: "essay", lines: 3)
]

== Tinh chỉnh header và footer qua tham số

`vp-page-setup` nhận `header-ascent`, `footer-descent`, `leading`.
Tăng header-ascent để header xa vùng nội dung hơn; tăng footer-descent để footer
xuống thấp hơn. Cần chừa đủ lề trên/dưới bằng `margin`.

```typst
#vp-manual-header-fancy(
  title: "BÀI TẬP VẬT LÍ", subtitle: "LUYỆN TẬP", icon: "atom", compact: true,
  title-size: 12pt, subtitle-size: 8pt, chapter-size: 10pt,
  icon-size: 18pt, title-gap: 4pt, bottom-padding: 4pt,
)
#vp-footer-shuriken(
  title: "Học Kage", slogan: "Level up your knowledge", compact: true,
  title-size: 12pt, slogan-size: 10pt, page-size: 9pt, badge-size: 27pt,
)
```

Các kích thước truyền tường minh ghi đè preset compact. Header nhận
`chapter-label: auto` để hiện đúng số chương, hoặc `none` để ẩn nhãn.
Icon `"atom"` nằm trong gói; có thể dùng riêng `vp-icon-atom(size: 18pt)`.
Header còn nhận `font`, `column-gap`, `chapter-inset`, `divider-thickness`;
footer còn nhận `font`, `icon-size`, `column-gap`, `page-radius`, `divider-gap`.
Không cần sửa tệp thư viện để chỉnh cỡ chữ hoặc khoảng đệm của tài liệu.

= Các lưu ý khi sử dụng

- `opt-padding` có trong API nhưng hiện chưa được dùng để dựng giao diện.
- Không có option màu riêng từng nhãn A/B/C/D. Có thể tô nội dung từng phương án bằng `text(fill: rgb("#7C3AED"))[...]` trong options.
- Đường dẫn ảnh tính tại tài liệu: tạo image/path ở nơi gọi rồi truyền vào gói.
- Chọn font có trên máy; thiếu font có thể làm bố cục thay đổi.
- Kiểm tra trực quan sau khi đổi font, lề hoặc khổ giấy, nhất là header tràn viền và hộp không tách trang.



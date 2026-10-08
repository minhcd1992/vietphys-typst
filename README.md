# Vietphys 0.1.0

Thư viện dàn trang bài học, câu hỏi và đáp án Vật lí tiếng Việt.
Entry point: `vietphys.typ`. Yêu cầu Typst 0.15.1 trở lên.

Cẩm nang đầy đủ có code và sản phẩm minh họa: [huong-dan-day-du.typ](examples/huong-dan-day-du.typ).
Biên dịch bằng `typst compile examples/huong-dan-day-du.typ dist/huong-dan-day-du.pdf --root .`.
Tài liệu gồm tùy chỉnh màu Câu, A–D, bảng đúng/sai, các kiểu câu hỏi,
header/footer, heading, widget, logo, 35 preset nét cọ và phụ lục API.

```typst
#import "@local/vietphys:0.1.0": *
#show: doc => vp-page-setup(doc)

#vp-lesson(num: "1", title: "Động học")
#vp-knowledge-box(title: "Ghi nhớ", content: [Vận tốc $v = s / t$.])
#vp-question(
  [Một vật đi được $10 m$ trong $2 s$. Vận tốc là bao nhiêu?],
  type: "mcq",
  options: ([$2 m/s$], [$5 m/s$], [$10 m/s$], [$20 m/s$]),
  ans: "B",
  sol: [$v = 10 / 2 = 5 m/s$.],
)
#vp-print-keys()
```

## Mẫu sách bài tập tái sử dụng

`vp-workbook` gom cấu hình trang, câu hỏi và câu hướng dẫn. Ví dụ đầy đủ bốn
dạng câu hỏi: [examples/workbook.typ](examples/workbook.typ).

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
Danh sách các bài trong chương.
#vp-workbook-lesson(num: 1, title: "Quãng đường và độ dịch chuyển")
= Phần I. Trắc nghiệm khách quan
#vp-instructions(reset: true)[Chọn một phương án đúng.]
#vp-question([Tốc độ có đơn vị nào?],
  options: ([$"m/s"$], [$"m"$], [$"s"$], [$"kg"$]), ans: "A")
```

Mặc định của mẫu: A4, Times New Roman 14pt; header nguyên tử; footer Học Kage;
heading modern có số I–IV; ẩn đáp án, lời giải, mức độ và nguồn. Mẫu không tự
in bảng đáp án, không tự sinh chương/bài/câu hỏi. `vp-workbook-chapter` dùng
`chap_hexagon`, `vp-workbook-lesson` dùng `less_modern` và bắt đầu trang mới,
kể cả bài đầu chương. Hai hàm nhận toàn bộ tham số của `vp-chapter`/`vp-lesson`;
dùng `.with(font: "Rounded Mplus 1c")` hoặc `.with(style: ...)` để tùy chỉnh.
Font này cần có trên máy biên dịch; preset có Arial làm font dự phòng.

`page` nhận tham số của `vp-page-setup`. `questions` nhận tham số của
`vp-exercise-layout`. Hai dictionary chỉ ghi đè các khóa bạn cung cấp;
dictionary con như `margin` hoặc `tf-inset` được thay toàn bộ, không trộn từng cạnh.
`vp-workbook-defaults.page` và `.questions` công khai các giá trị gốc.
`header`/`footer` của `vp-workbook` nhận content hoặc `none`; tham số này có
ưu tiên cao hơn khóa tương ứng trong `page`.

### Mục lục và trang nội dung chương

```typst
// Đặt trước các chương. break-before là thứ tự chương bắt đầu trang mục lục mới.
#vp-book-outline(subtitle: [SÁCH BÀI TẬP VẬT LÍ 10], break-before: (3,))
#vp-workbook-chapter(num: "I", title: "Động học")
#vp-chapter-outline(summary: [Mỗi bài gồm bốn phần luyện tập.])
// Các lesson hoặc #include tệp bài đặt tiếp theo.
```

Hai hàm tự lấy tên, số bài và số trang từ heading chương/bài, tạo liên kết đến
đúng vị trí, không cần chép lại danh sách bài. Tên dài tự xuống dòng; mục lục
không cắt ngắn tiêu đề. `vp-chapter-outline` chỉ liệt kê bài trong chương hiện tại.
Có thể chỉnh `color`, `font`, `title-font`, `lesson-size`, `row-padding`;
`vp-book-outline` còn nhận `title`, `subtitle`, `intro`, `break-before`,
`vp-chapter-outline` nhận `title`, `summary`.
Các heading gốc vẫn giữ bookmark và tham chiếu của tài liệu.

### Khoảng cách và ngắt trang câu hỏi

Nếu chỉ cần cấu hình câu hỏi trong một tài liệu đang có, dùng:

```typst
#show: vp-page-setup
#show: vp-exercise-layout.with(
  q-spacing: 6pt, stem-spacing: 7pt,
  line-spacing: 1.8em, lines-above: 16pt,
  instruction-gap: 14pt, tf-inset: (x: 5pt, y: 7pt),
  keep-first-line: true, keep-together: ("short",),
)
```

| Tham số | Ý nghĩa | Mẫu workbook |
| --- | --- | --- |
| `q-spacing` | Khoảng đệm giữa câu hỏi, đồng thời đặt spacing các block trong câu | `6pt` |
| `stem-spacing` | Khoảng cách block đề câu hỏi | `7pt` |
| `line-spacing` | Khoảng đệm sau mỗi dòng kẻ, không phải chiều cao hàng cố định | `1.8em` |
| `lines-above` | Khoảng trống trước dòng kẻ đầu tiên | `16pt` |
| `instruction-gap` | Khoảng trống sau câu hướng dẫn | `14pt` |
| `tf-inset` | Đệm ô bảng đúng/sai; tăng `y` để hàng cao hơn | `(x: 5pt, y: 7pt)` |
| `keep-first-line` | Giữ cuối đề tự luận cùng dòng làm bài đầu tiên | `true` |
| `keep-together` | Những loại câu được giữ nguyên trên một trang | `("short",)` |
| `show-answers`, `show-solutions` | Hiện đáp án, lời giải trực tiếp | `false` |
| `show-levels`, `show-sources` | Hiện mức độ, nguồn câu hỏi | `false` |

`vp-instructions(body, gap: auto, sticky: true, reset: false)` đặt câu hướng dẫn
sau heading `=`. `reset: true` bắt đầu số câu lại từ 1, không đổi số phần.
`gap` ghi đè `instruction-gap` riêng cho câu hướng dẫn đó.

Có thể gọi `vp-exercise-layout(...)[nội dung]` cho một đoạn, kể cả đoạn dùng
`#include`; cấu hình lồng nhau kế thừa và khôi phục khi hết đoạn. Ưu tiên:
**tham số từng câu → cấu hình đoạn trong → cấu hình đoạn ngoài → mặc định gói**.
Ngoài `instruction-gap`, `keep-together` và các cờ `show-*`, các tham số bố cục
trong bảng có thể truyền trực tiếp vào `vp-question`. `breakable: true/false`
ghi đè việc ngắt trang từng câu. Workbook mặc định cho phép câu A–D và đúng/sai nối sang
trang sau giữa các hàng, giữ cuối đề cùng hàng đầu tiên.
Với bảng đúng/sai, mỗi phát biểu và hai ô Đ/S giữ nguyên trên một trang;
tiêu đề “Phát biểu – Đ – S” tự lặp lại khi bảng nối sang trang sau.
Các nhãn cùng hàng vẫn thẳng nhau khi có phân số; mỗi phương án giữ nguyên khối.
Dùng `breakable: false` để giữ riêng một câu trên cùng trang, hoặc thêm `"mcq"`
vào `keep-together` để giữ toàn bộ câu A–D; thêm `"tf"` để giữ toàn bộ câu đúng/sai.
Dùng `breakable: true` cho câu dài
thuộc loại đang giữ nguyên trang. Khoảng trống vẫn có thể xuất hiện nếu cuối trang
không đủ chứa cuối đề và hàng phương án đầu tiên.
`tf-inset` chỉ áp dụng bảng đúng/sai, không làm thay đổi các bảng khác trong đề.

```typst
#vp-question([Đề dài...], type: "essay", lines: 8,
  lines-above: 20pt, line-spacing: 2em, breakable: true)
#vp-exercise-layout(show-answers: true, show-solutions: true)[
  // Bản giáo viên của riêng đoạn này.
  #vp-question([Một câu hỏi], options: ([A], [B], [C], [D]),
    ans: "A", sol: [Lời giải.])
]
```

### Header, footer và khoảng cách trang

`vp-page-setup` nhận `header-ascent`, `footer-descent`, `leading`.
`header-ascent` tăng thì header xa vùng nội dung hơn; `footer-descent` tăng thì
footer xuống thấp hơn. Dùng cùng `margin` để còn đủ chỗ ở mép giấy.

```typst
#show: vp-workbook.with(
  header: vp-manual-header-fancy(
    title: "BÀI TẬP VẬT LÍ", subtitle: "LUYỆN TẬP",
    icon: "atom", compact: true,
    title-size: 12pt, subtitle-size: 8pt, chapter-size: 10pt,
    icon-size: 18pt, title-gap: 4pt, bottom-padding: 4pt,
  ),
  footer: vp-footer-shuriken(
    title: "Học Kage", slogan: "Level up your knowledge", compact: true,
    title-size: 12pt, slogan-size: 10pt, page-size: 9pt, badge-size: 27pt,
  ),
)
```

`compact` chọn bộ kích thước mặc định; các tham số cụ thể luôn có ưu tiên cao hơn.
Header còn nhận `font`, `column-gap`, `chapter-inset`, `divider-thickness`,
`chapter-label` (`auto`: số chương thực tế, `none`: ẩn, hoặc content tùy ý).
`icon` nhận `"atom"`, `"logo"`/`auto`, `none`, hoặc content; `icon-size` chỉ đổi
kích thước icon có sẵn. Icon nguyên tử cũng dùng độc lập qua
`vp-icon-atom(color: ..., size: ...)`, tài nguyên SVG nằm trong gói.
Footer còn nhận `font`, `icon-size`, `column-gap`, `page-radius`, `divider-gap`;
`divider-gap` là khoảng cách có dấu sau đường phân cách (âm làm gần hơn).
Các cách gọi cũ vẫn hợp lệ; `vp-exercise-layout` chỉ tác động trong phần được bọc.

## Cài đặt local

Yêu cầu Python 3.11+ cho script đóng gói. Từ thư mục gốc repo:

```powershell
python scripts/build_release.py
python -m zipfile -e dist/vietphys-0.1.0.zip .typst-packages/local/vietphys/0.1.0
typst compile my-document.typ --package-path .typst-packages
```

File ZIP chứa manifest, entry point, module và tài nguyên runtime. Thư mục cài đặt:

```text
<package-path>/local/vietphys/0.1.0/
```

Ví dụ và công cụ phát triển được loại khỏi gói phát hành.

## Ví dụ

- [Cẩm nang API](examples/manual.typ).
- [Tùy biến câu hỏi và bố cục](examples/demo-full.typ).
- [Đề cương ôn tập](examples/demo-on-tap.typ).
- [Chapter, lesson và các cấp heading](examples/hierarchy.typ).
- [Mẫu khung nghiêng và heading của đề ôn tập](examples/modern.typ).

Các ví dụ dùng import tương đối để chạy trực tiếp trong repo.

## API được hỗ trợ

| Nhóm | API |
| --- | --- |
| Trang | `vp-page-setup` |
| Phân cấp | `vp-chapter`, `vp-lesson`, heading `=`, `==`, `===` |
| Heading | `vp-lesson-title`, `vp-heading-theme-modern`, `vp-heading-theme-01`, `vp-heading-theme-academic` |
| Nội dung | `vp-knowledge-box`, `vp-image`, `vp-formula`, `vp-qty`, `vp-unit` |
| Câu hỏi | `vp-question`, `vp-set-question-style`, `vp-set-ans-style`, `vp-print-keys`, `vp-print-solutions` |
| Header/footer | `vp-header`, `vp-header-theme-01`, `vp-header-theme-02`, `vp-header-theme-04`, `vp-footer`, `vp-footer-kage`, `vp-footer-shuriken` |
| Theme | `vp-set-theme`, `vp-theme-presets`, `vp-theme-color`, `vp-make-palette`, `vp-resolve-color`, `vp-resolve-palette`, `vp-colors`, `vp-settings`, `vp-question-theme`, `vp-theme-state` |
| Trạng thái | `vp-show-ans`, `vp-show-sol`, `vp-show-level`, `vp-show-source`, `vp-q-counter`, `vp-sol-store` |

Các hàm `_render-*` và helper khác là chi tiết nội bộ.

### Theme và tài liệu đề thi

```typst
#show: doc => vp-page-setup(
  header: context vp-header-theme-01(date: "NĂM HỌC 2026–2027"),
  footer: context vp-footer-shuriken(),
  doc,
)
#vp-set-theme(preset: "ocean")
#vp-set-question-style(num-style: "I", lines: 0)
#vp-lesson(tab-text: "ĐỀ THI", num: "1", title: "Vật lí", subtitle: "180 phút")
#vp-question([Đề bài], type: "essay", listEs: ([Ý thứ nhất], [Ý thứ hai]))
#vp-qty("3.4e7", "N/m^2")
```

Preset: `konoha`, `minato`, `uchiha`, `ocean`, `wind`, `shadow`, `violet`,
`emerald`. Hoặc dùng `vp-set-theme(color: "#1890FF")`. Các thành phần hỗ trợ
theme lấy màu toàn cục khi `color: auto`; màu truyền riêng có ưu tiên cao hơn.
`vp-footer-shuriken` dùng mẫu footer gốc của đề ôn tập, hỗ trợ `title`, `slogan`,
`icon`, `divider` và `page-format`.

`vp-unit` nhận chuỗi đơn vị như `kg/m^3`, `m.s^-1`, `ohm`, `°C` và hỗ trợ
các tiền tố `um`, `uC`, `uF`, `us`. `vp-qty` đổi dấu thập phân sang dấu phẩy
và hiển thị dạng khoa học cho giá trị có `e`/`E`.

### Chapter, lesson và heading

`vp-section[Tiêu đề phần hướng dẫn]` tạo tiêu đề chữ đậm giống các phần trong
manual hierarchy; nhận `size`, `color`, `font`, `before`, `after`. Đây là nhãn
trình bày, không tạo heading, không tăng bộ đếm và không xuất hiện trong mục
lục/bookmark. Các mục nội dung có phân cấp vẫn dùng `=`, `==`, `===`.

Nội dung qua `vp-page-setup` mặc định dùng `Times New Roman`, 13pt. Đổi bằng
`vp-page-setup.with(font: "Arial", font-size: 13pt)`.
Import thư viện chỉ cung cấp hàm; cần áp dụng `#show: vp-page-setup` để dùng
cấu hình mặc định. Heading modern vẫn dùng font Rounded Mplus riêng.

Theme học thuật `vp-heading-theme-academic` có hai biến thể, dùng serif,
đánh số phân cấp và không trang trí badge/nền:

```typst
// Bài báo nghiên cứu:
#show: vp-page-setup.with(heading-theme: vp-heading-theme-academic)

// Luận văn: cấp 1 in hoa, căn giữa; tùy chọn ngắt trang chương.
#show: vp-page-setup.with(
  heading-theme: vp-heading-theme-academic.with(
    variant: "thesis", chapter-pagebreak: true,
  ),
)
```

Chỉ chọn một show rule ở trên. Theme nhận `font`, `color`, `numbering`;
heading không đánh số dùng `#heading(numbering: none)[Tóm tắt]`.
Xem `examples/academic.typ` và hai biến thể trong `examples/review-hierarchy.typ`.
Đây là bố cục học thuật chung, có thể tùy chỉnh theo quy định của nơi nộp.

Preset một cột tham khảo cách phân cấp của Springer LNCS, không phải bản sao
template nộp bài của nhà xuất bản. LNCS dùng heading cấp 1 là 12pt, cấp 2
là 10pt và cấp 3 dạng run-in không đánh số; Vietphys giữ nội dung 11pt,
heading cấp 1/2/3 là 12/11/11pt và đánh số ba cấp để phù hợp tài liệu hiện có.
Tham khảo: [Springer author instructions](https://link.springer.com/series/558/information-for-authors-and-editors)
và [IEEE Editorial Style Manual](https://journals.ieeeauthorcenter.ieee.org/wp-content/uploads/sites/7/IEEE-Editorial-Style-Manual-for-Authors.pdf).

Paper dùng khoảng cách trước heading 18/14/12pt, sau heading 8pt.
Thesis dùng nội dung 12pt, heading 14/12/12pt, khoảng cách trước 24/18/14pt,
sau 10pt. Các cấp 1–3 đều đậm, không nghiêng. Giãn dòng tiêu đề là `0.55em`;
giãn dòng nội dung là `0.55em` (paper), `0.8em` (thesis).
Trong Typst, `par.leading` là khoảng trống giữa các dòng, không phải hệ số
giãn dòng của Word. Tùy chỉnh bằng `body-size`, `body-leading`,
`heading-leading`, `heading-before`, `heading-after` trong theme.

Heading học thuật xuống dòng từ lề trái của chỉ số, không thụt theo phần chữ.
Đoạn nội dung thụt đầu dòng `1.5em`, kể cả đoạn ngay sau heading;
đổi bằng `paragraph-indent` (dùng `0pt` để bỏ thụt).
Heading, caption, code và bảng không nhận thụt đầu dòng này.

`vp-chapter` mặc định dùng `style: "chap_modern"`: banner toàn trang, badge
lục giác và minh họa Fujitori của mẫu gốc. Có thể chọn `"chap_hexagon"` hoặc
`"default"` cho các mẫu đơn giản.
`vp-lesson` mặc định dùng `style: "less_modern"`: khung nghiêng hai lớp,
badge số, tab nhãn và kunai. Còn hỗ trợ `"less_ribbon"` (ruy băng đuôi nhọn)
và `"default"` (khung bo góc, viền trái), `"less_star"` (ngôi sao viền nét,
không nền). `vp-lesson-title` là alias tương thích của `vp-lesson(style: "less_star")`;
có thể dùng `vp-lesson(style: "less_star", num: "1", title: "Tên bài",
subtitle: "Kiến thức trọng tâm")` để chọn mẫu qua API chung.

`vp-page-setup` tự áp dụng `vp-heading-theme-modern`: `=` là badge số vuông
1., 2.… kèm đường gạch chân; `==` dùng badge nhỏ; `===` có nét nhấn dọc.
Các cấp cao hơn giữ heading Typst. Dùng `heading-theme: none` trong page setup
để giữ giao diện Typst, hoặc truyền một hàm theme khác vào `heading-theme`.
Trong Vietphys, lựa chọn `none` dùng `vp-heading-theme-native`: giữ giao diện
đơn giản, dòng tiêu đề tiếp theo căn từ lề chỉ số và nội dung thụt đầu dòng
`1.5em`. Modern cũng áp dụng hai hành vi này; cả hai theme nhận
`paragraph-indent` để thay đổi mức thụt. Heading và badge không thụt đầu dòng.
Chapter bắt đầu trang mới; bài đầu ở cùng trang với chapter, bài sau bắt đầu
trang mới cho mọi style. Dùng `new-page: false` / `true` để điều khiển lesson.
Header được ẩn trên trang có chapter banner để tránh chồng lên banner.

Mẫu gốc dùng font `Rounded Mplus 1c`; nếu máy chưa cài, Typst dùng Arial
thay thế. Có thể truyền `font: "Arial"` vào chapter/lesson và dùng
`heading-theme: vp-heading-theme-modern.with(font: "Arial")` để chọn font rõ ràng.

Heading Typst `=`, `==`, `===`… được tùy biến bằng một show rule:

```typst
#show: vp-heading-theme-01.with(numbering: "I.1.a")
= Mục cấp một
== Mục cấp hai
=== Mục cấp ba
==== Mục cấp bốn
```

Theme tiêu chuẩn trang trí cấp 1–4, modern trang trí cấp 1–3.
Các cấp cao hơn giữ kiểu heading Typst. Để bỏ số, dùng
`#heading(numbering: none)[Tiêu đề]`. Các theme heading Ninja đã được loại bỏ.

`vp-question` nhận `stem` dạng content; `type` là `mcq`, `tf`, `short`, `essay`.
Với câu trả lời ngắn, `short-boxes: 4` điều chỉnh số ô (kể cả dấu phẩy/dấu âm).
Nếu cần nhiều kết quả, truyền `short-fields` gồm các dictionary `label`, `ans`,
`boxes`; các ô vẫn tuân theo trạng thái ẩn/hiện đáp án. `ans` ở cấp câu hỏi
lưu chuỗi kết quả tổng hợp để dùng trong bảng đáp án.

```typst
#vp-question([Điền hai kết quả.], type: "short", ans: "9,79; 0,70",
  short-fields: (
    (label: [$g$ (m/s²)], ans: "9,79", boxes: 4),
    (label: [Sai số (%)], ans: "0,70", boxes: 4),
  ))
```

MCQ/TF dùng tối đa bốn lựa chọn/phát biểu. Trường `image` nhận **content ảnh**:

```typst
#vp-question([Quan sát hình.], type: "essay", image: image("images/example.jpg"))
```

Ảnh của tài liệu được tạo ở phía tài liệu rồi truyền vào thư viện. Với `vp-image`,
dùng `path("images/example.jpg")` tại nơi gọi để giữ đường dẫn gắn với tài liệu,
hoặc dùng `figure(image(...))` trực tiếp. Không truyền chuỗi đường dẫn tài liệu
vào hàm thư viện rồi kỳ vọng nó được resolve ngoài package.

Bật/tắt đáp án và lời giải bằng state:

```typst
#vp-show-ans.update(true)
#vp-show-sol.update(false)
#vp-q-counter.update(0)
```

## Các thành phần bổ sung từ dự án cũ

Demo tổng hợp chi tiết: [demo-complete.typ](examples/demo-complete.typ).
Chạy `typst compile examples/demo-complete.typ dist/demo-complete.pdf --root .`.
Demo gồm 31 câu chính, đáp án cuối đề, công thức cao, bố cục hẹp, hình SVG,
đơn vị, box và các bộ sưu tập header/footer, chapter/lesson, heading, widget.

- Header: `vp-header-theme-01` đến `vp-header-theme-15`.
- Footer: `vp-footer-kage-enso`, hai alias `vp-footer-kage-brush`,
  `vp-footer-ninja-enso` và các mẫu `vp-manual-header-*`, `vp-manual-footer-*`.
- Widget: `vp-widget-part`, `vp-widget-heading`, `vp-widget-smart-heading`,
  `vp-widget-date`, `vp-widget-author`, `vp-widget-school`, `vp-widget-exam`,
  `vp-widget-target`, `vp-widget-pill`, `vp-widget-stack`.
  Dùng `#vp-set-part("Tên phần")` hoặc `#vp-part("Tên phần")` để cập nhật tên phần.
- Ghi chú: `#vp-note(title: "Ghi nhớ")[Nội dung]`.
- Logo/icon: `vp-logo`, `vp-logo-colored`, `vp-hockage-logo`,
  `vp-ninja-scholar-logo`, `vp-icon-ninja-silhouette`, `vp-physics-enso-icon`.
- `vp-brush` hỗ trợ toàn bộ preset brush có trong mã nguồn cũ;
  các SVG tương ứng được đóng gói với thư viện.
- `vp-unit` hỗ trợ dấu chia ngang, ký hiệu micro, độ, ohm, angstrom
  và nhận trực tiếp nội dung Typst. Ý tự luận `listEs` đánh số `a)`, `b)`, …

Xem [ví dụ widget và các mẫu header/footer](examples/widgets.typ).
Việc khôi phục sử dụng mã package trong Git của dự án Documents vì thư mục package
đã bị xóa ở working tree. Các SVG brush và logo còn thiếu được lấy từ bản cũ ở
`E:\vietphys`; chỉ những tài nguyên có API sử dụng được đưa vào gói.

## Bảo trì và phát hành

1. Thay đổi API/layout trong các module tương ứng, giữ entry point ổn định.
2. Chạy từ repo này:

   ```powershell
   python scripts/check_typst.py
   python -m unittest discover -s tests -v
   ```

   CI chạy 7 ví dụ và kiểm thử bản đóng gói. Các phụ thuộc Typst
   `fontawesome`, `droplet` có thể cần tải mạng lần đầu. Ví dụ dùng Arial/Times
   New Roman; máy thiếu font sẽ dùng font thay thế.
3. Với thay đổi dàn trang, xem PDF của các ví dụ: compile thành công không bảo đảm
   ngắt trang, độ rộng đáp án hoặc vị trí hình đã đúng.
4. Ghi `CHANGELOG.md`, tăng phiên bản trong `typst.toml`, commit và tạo tag phiên bản.
   Không thay nội dung của phiên bản đã phát hành.
5. Chạy `python scripts/build_release.py`. ZIP và checksum SHA-256 được tạo trong
   `dist/`, kèm giấy phép MIT.

## Chuẩn bị đăng Typst Universe

- Giấy phép MIT đã được khai báo trong `typst.toml` và [LICENSE](LICENSE).
- Gửi package vào `packages/preview/vietphys/0.1.0` của repo
  [typst/packages](https://github.com/typst/packages).
- Dùng nội dung ZIP cho mã runtime. Chép thêm `examples/` đã liên kết ở trên để
  có tài liệu trên Universe; manifest loại chúng khỏi bundle tải về.
- Giữ script, tests và CI trong repo phát triển này.
- Sau khi được phát hành, dùng `#import "@preview/vietphys:0.1.0": *`.

Tham khảo [quy định manifest](https://github.com/typst/packages/blob/main/docs/manifest.md),
[giấy phép](https://github.com/typst/packages/blob/main/docs/licensing.md) và
[các file cần gửi](https://github.com/typst/packages/blob/main/docs/tips.md#what-to-commit-what-to-exclude).

### Tổ chức mã nguồn template

| Thành phần | File triển khai |
| --- | --- |
| API chọn style chapter/lesson | `components/hierarchy.typ` |
| Chapter/lesson cơ bản và lesson ngôi sao | `components/headings/basic.typ` |
| Chapter/lesson modern | `components/headings/modern.typ` |
| Show rule và đánh số heading theme 01 | `themes/heading_theme.typ` |
| Show rule heading modern mặc định | `themes/modern_headings.typ` |
| Heading học thuật paper/thesis | `themes/academic_headings.typ` |
| Header và các theme | `layout/headers.typ` |
| Footer và các theme | `layout/footers.typ` |
| Widget thông tin trên header | `layout/header_widgets.typ` |
| Brush, icon, logo và vector helper | `layout/graphics.typ` |
| State và truy vấn tiêu đề hiện tại | `components/document_state.typ` |
| Khổ giấy, lề, font nội dung và chọn theme | `layout/page_setup.typ` |
| Palette và màu dùng chung | `themes/theme_colors.typ` |

`vietphys.typ` là entry point công khai. Các file `header_footer.typ`,
`modern_layout.typ`, `additional_styles.typ`, `heading_widgets.typ`,
`modern_hierarchy.typ` là các file chuyển tiếp tương thích.
Chỉnh renderer trong các file triển khai ở bảng trên.

Mọi style dùng cùng cây **chapter → lesson → `=`, `==`, `===`**. Không cần
viết `===` làm mục lớn trong bài nữa. `vp-page-setup(hierarchy: auto)` tự đặt
offset: có chapter là 2, chỉ có lesson là 1, không có cả hai là 0. Có thể chỉ
định `hierarchy: "book"`, `"lesson"`, `"standalone"` nếu cần.

Số chương và bài tự tăng khi bỏ `num`; bài reset về 1 khi sang chương mới.
Số nhập tay như `num: 12` hoặc `"12"` đặt lại mốc, lần tiếp theo tự tăng 13.
Mỗi lesson reset số mục nội dung: `=` vẫn là `1.`, `2.`; `==` là `1.1`;
`===` là `1.1.1`. Không thêm số chương/bài vào trước số mục. Cả bốn bộ heading
nhận `numbering`; dùng `.with(numbering: "I.1.1")` để có `I.`, `I.1`, `I.1.1`.

`outline()` và bookmark PDF giữ đúng cấp ngữ nghĩa; số trong mục lục và tham
chiếu khớp nội dung. Độ sâu tới `===` là 5 (có chương), 4 (bài lẻ), 3 (heading
độc lập). Chapter/lesson nhận `label: <ten>` để tham chiếu bằng `@ten`.
Heading tạo bằng hàm nên dùng `depth: 1/2/3` thay vì `level` tuyệt đối.
Widget heading dùng cấp nội dung 1/2/3 tương ứng `=`/`==`/`===`.

Xem [manual có mã và sản phẩm](examples/manual-hierarchy.typ), biên dịch bằng:

```sh
typst compile examples/manual-hierarchy.typ examples/manual-hierarchy.pdf --root .
```

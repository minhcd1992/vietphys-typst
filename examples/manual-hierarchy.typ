#import "../vietphys.typ": *
#show: vp-page-setup.with(hierarchy: "standalone", heading-theme: none,
  margin: (x: 2cm, y: 2cm))
#set page(footer: context align(center)[#counter(page).display("1")])
#show raw: set text(font: ("Consolas", "Courier New"), size: 9pt)
#show raw.where(block: true): it => block(width: 100%, fill: rgb("#F3F5F7"),
  radius: 5pt, inset: 10pt, it)
#let note(body) = block(width: 100%, fill: rgb("#EEF5FC"), inset: 10pt,
  radius: 5pt)[
  #set par(first-line-indent: 0pt)
  #body
]

#align(center)[
  #text(size: 25pt, weight: "bold")[MANUAL HIERARCHY]
  #v(6pt)
  #text(size: 14pt)[Vietphys — phân cấp, đánh số và mục lục]
]

#vp-section[1. Quy tắc sử dụng]
Vietphys tự nhận diện tài liệu: có chapter thì dùng cây chương → bài → mục;
chỉ có lesson thì dùng cây bài → mục; không có cả hai thì dùng heading độc lập.
Trong mọi trường hợp, nội dung bài bắt đầu bằng một dấu bằng.

#table(columns: (1fr, 1fr, 1fr), inset: 7pt,
  [*Bạn viết*], [*Tài liệu có chương*], [*Bài lẻ*],
  [`vp-chapter(...)`], [Cấp 1: Chương], [Không dùng],
  [`vp-lesson(...)`], [Cấp 2: Bài], [Cấp 1: Bài],
  [`= Tiêu đề`], [Cấp 3: Mục], [Cấp 2: Mục],
  [`== Tiêu đề`], [Cấp 4: Mục con], [Cấp 3: Mục con],
  [`=== Tiêu đề`], [Cấp 5: Mục nhỏ], [Cấp 4: Mục nhỏ],
)

Số chương và số bài có bộ đếm riêng. Chương tăng tự động; bài bắt đầu lại từ 1
khi sang chương mới. Mỗi bài mới reset toàn bộ số heading nội dung. Khi tăng
mục lớn, số mục con tự bắt đầu lại theo cơ chế heading của Typst.

#note[
  *Số hiển thị và cấp mục lục là hai việc riêng.* Mục lớn vẫn là *1.*, *2.*,
  hoặc *I.*, *II.*; mục con là *1.1*, *1.1.1* hoặc *I.1*, *I.1.1*.
  Không ghép số chương hay số bài vào số mục. Mục lục và tham chiếu dùng
  cùng cách đánh số với tiêu đề trong nội dung.
]

#vp-section[2. Thiết lập chung]
```typst
#import "../vietphys.typ": *
#show: vp-page-setup.with(
  font: "Times New Roman",
  font-size: 13pt,
  heading-theme: vp-heading-theme-01,
)
#outline(title: [Mục lục], depth: 5)
```
Đường dẫn import trên dùng cho file đặt trong thư mục examples của repo.
Trong dự án riêng, thay đường dẫn bằng đường dẫn tới vietphys.typ hoặc import
package đã cài. Không cần thêm offset hoặc reset bộ đếm thủ công.

#pagebreak()
#vp-section[3. Tài liệu nhiều chương — mã đầy đủ]
```typst
#import "../vietphys.typ": *
#show: vp-page-setup.with(heading-theme: vp-heading-theme-01)
#outline(title: [Mục lục], depth: 5)

#vp-chapter(title: "Động học", label: <chuong-dong-hoc>)
#vp-lesson(title: "Chuyển động thẳng", label: <bai-thang>)
= Kiến thức trọng tâm <kien-thuc>
Nội dung lý thuyết.
== Vận tốc và gia tốc
Nội dung mục con.
=== Vận tốc tức thời
Nội dung mục nhỏ.
= Vận dụng
Xem @kien-thuc và @bai-thang.
#heading(depth: 1, numbering: none)[Ghi nhớ]
Tiêu đề này không tăng số mục.

#vp-lesson(title: "Chuyển động biến đổi", style: "less_ribbon")
= Kiến thức trọng tâm
Mục lớn trở lại 1., dù đây là bài 2.

#vp-chapter(title: "Động lực học", style: "chap_hexagon")
#vp-lesson(title: "Định luật Newton", style: "less_star")
= Các định luật
Chương 2, bài 1; mục nội dung vẫn bắt đầu từ 1.
```
Sản phẩm ở các trang tiếp theo dùng chính cấu trúc trên. Mục lục được giới hạn
vào mẫu này để không trộn với những mẫu khác trong manual.

#[
  #show: vp-hierarchy.with(mode: "book")
  #show: vp-heading-theme-01
  #set par(leading: 0.55em)
  #vp-chapter-counter.update(0)
  #vp-lesson-counter.update(0)
  #counter(heading).update(0)
  #metadata("book-start")<manual-book-start>
  #pagebreak()
  #vp-section[Demo mục lục — mã sử dụng]
  ```typst
  #show: vp-page-setup.with(heading-theme: vp-heading-theme-01)
  #outline(title: [Mục lục], depth: 5)
  // Đặt trước các chapter/lesson trong mã đầy đủ ở phần 3.
  ```
  #outline(title: [Sản phẩm: mục lục tài liệu nhiều chương], depth: 5,
    target: selector(heading).after(<manual-book-start>).before(<manual-book-end>))
  #vp-chapter(title: "Động học", label: <chuong-dong-hoc>)
  #vp-lesson(title: "Chuyển động thẳng", label: <bai-thang>)
  ```typst
  #vp-chapter(title: "Động học", label: <chuong-dong-hoc>)
  #vp-lesson(title: "Chuyển động thẳng", label: <bai-thang>)
  = Kiến thức trọng tâm <kien-thuc>
  Nội dung lý thuyết.
  == Vận tốc và gia tốc
  Nội dung mục con.
  === Vận tốc tức thời
  Nội dung mục nhỏ.
  = Vận dụng
  Xem @kien-thuc, @bai-thang và @chuong-dong-hoc.
  #heading(depth: 1, numbering: none)[Ghi nhớ]
  Tiêu đề này không tăng số mục.
  ```
  = Kiến thức trọng tâm <kien-thuc>
  Nội dung lý thuyết. Vận tốc mô tả sự thay đổi vị trí theo thời gian.
  == Vận tốc và gia tốc
  Nội dung mục con. Gia tốc mô tả sự thay đổi vận tốc theo thời gian.
  === Vận tốc tức thời
  Nội dung mục nhỏ. Xét chuyển động tại một thời điểm xác định.
  = Vận dụng
  Xem @kien-thuc và @bai-thang. Tham chiếu chương: @chuong-dong-hoc.
  #heading(depth: 1, numbering: none)[Ghi nhớ]
  Tiêu đề này không tăng số mục.
  #vp-lesson(title: "Chuyển động biến đổi", style: "less_ribbon")
  ```typst
  // Tiếp nối bài 1 trong cùng chương.
  #vp-lesson(title: "Chuyển động biến đổi", style: "less_ribbon")
  = Kiến thức trọng tâm
  Mục lớn trở lại 1., dù đây là bài 2.
  ```
  = Kiến thức trọng tâm
  Mục lớn trở lại 1., dù đây là bài 2.
  #vp-chapter(title: "Động lực học", style: "chap_hexagon")
  #vp-lesson(title: "Định luật Newton", style: "less_star")
  ```typst
  // Tiếp nối chương 1: số chương tăng, số bài trở lại 1.
  #vp-chapter(title: "Động lực học", style: "chap_hexagon")
  #vp-lesson(title: "Định luật Newton", style: "less_star")
  = Các định luật
  Chương 2, bài 1; mục nội dung vẫn bắt đầu từ 1.
  ```
  = Các định luật
  Chương 2, bài 1; mục nội dung vẫn bắt đầu từ 1.
  #metadata("book-end")<manual-book-end>
]

#pagebreak()
#vp-section[4. Bài lẻ và số La Mã — mã đầy đủ]
```typst
#import "../vietphys.typ": *
#show: vp-page-setup.with(
  heading-theme: vp-heading-theme-modern.with(numbering: "I.1.1"),
)
#outline(title: [Mục lục], depth: 4)
#vp-lesson(title: "Dao động điều hòa", label: <bai-dao-dong>)
= Kiến thức nền tảng <nen-tang>
Nội dung lý thuyết.
== Phương trình dao động
Nội dung mục con.
=== Ý nghĩa các đại lượng
Nội dung mục nhỏ.
= Bài tập
Xem @nen-tang và @bai-dao-dong.
```
File thật chỉ có một lesson nên hệ thống tự nhận diện chế độ bài lẻ.
Trong manual chứa nhiều mẫu, sản phẩm dưới đây đặt chế độ lesson riêng
để mô phỏng chính xác một file độc lập.

#pagebreak()
#[
  #show: vp-hierarchy.with(mode: "lesson")
  #show: vp-heading-theme-modern.with(numbering: "I.1.1")
  #set par(leading: 0.55em)
  #vp-lesson-counter.update(0)
  #vp-is-first-lesson.update(true)
  #counter(heading).update(0)
  #metadata("single-start")<manual-single-start>
  #vp-section[Demo mục lục bài lẻ — mã sử dụng]
  ```typst
  #show: vp-page-setup.with(
    heading-theme: vp-heading-theme-modern.with(numbering: "I.1.1"),
  )
  #outline(title: [Mục lục], depth: 4)
  // Đặt trước lesson và các mục trong mã đầy đủ ở phần 4.
  ```
  #outline(title: [Sản phẩm: mục lục bài lẻ], depth: 4,
    target: selector(heading).after(<manual-single-start>).before(<manual-single-end>))
  #pagebreak()
  #vp-lesson(title: "Dao động điều hòa", label: <bai-dao-dong>)
  ```typst
  // Theme modern, numbering: "I.1.1"; không dùng chapter.
  #vp-lesson(title: "Dao động điều hòa", label: <bai-dao-dong>)
  = Kiến thức nền tảng <nen-tang>
  Nội dung lý thuyết.
  == Phương trình dao động
  Nội dung mục con.
  === Ý nghĩa các đại lượng
  Nội dung mục nhỏ.
  = Bài tập
  Xem @nen-tang và @bai-dao-dong.
  ```
  = Kiến thức nền tảng <nen-tang>
  Nội dung lý thuyết. Dao động điều hòa có li độ biến thiên theo hàm sin hoặc cos.
  == Phương trình dao động
  Nội dung mục con. Phương trình thường viết dưới dạng $x = A cos(omega t + phi)$.
  === Ý nghĩa các đại lượng
  Nội dung mục nhỏ. Biên độ, tần số góc và pha ban đầu mô tả trạng thái dao động.
  = Bài tập
  Xem @nen-tang và @bai-dao-dong.
  #metadata("single-end")<manual-single-end>
]

#pagebreak()
#vp-section[5. Tài liệu chỉ có heading — mã và sản phẩm]
```typst
#import "../vietphys.typ": *
#show: vp-page-setup.with(heading-theme: vp-heading-theme-academic)
= Giới thiệu
Nội dung nghiên cứu.
== Mục tiêu
Nội dung mục tiêu.
=== Phạm vi
Nội dung phạm vi.
```
Không dùng chapter hoặc lesson, heading giữ cấp 1, 2, 3. Paper/thesis có cỡ chữ
nội dung riêng (11pt/12pt). Muốn nội dung học thuật 13pt, truyền body-size: 13pt
vào theme; font-size của page setup là mặc định chung, theme học thuật có thể
ghi đè nó.

#[
  #show: vp-hierarchy.with(mode: "standalone")
  #show: vp-heading-theme-academic
  #counter(heading).update(0)
  = Giới thiệu
  Nội dung nghiên cứu. Trình bày vấn đề và phương pháp khảo sát.
  == Mục tiêu
  Nội dung mục tiêu. Xác định các đại lượng cần đo và mối quan hệ giữa chúng.
  === Phạm vi
  Nội dung phạm vi. Nghiên cứu chuyển động thẳng trong điều kiện xác định.
]

#pagebreak()
#vp-section[6. Chọn mẫu và thay đổi cách đánh số]
#table(columns: (28%, 72%), inset: 6pt,
  [*Thành phần*], [*Các lựa chọn*],
  [Chapter], [chap_modern; chap_hexagon; default],
  [Lesson], [less_modern; less_ribbon; less_star; less_default / default],
  [Heading], [modern, theme 01, native, academic paper/thesis],
  [Preset SBT], [vp-workbook-chapter (chap_hexagon); vp-workbook-lesson (less_modern, new-page: true, tab-text: "BÀI")],
)
Đổi mẫu chỉ đổi hình thức. Cấp heading, bộ đếm, mục lục và tham chiếu giữ
cùng quy tắc. vp-lesson-star và vp-lesson-title là tên tương thích của vp-lesson(style: "less_star").

#table(columns: (27%, 33%, 40%), inset: 6pt,
  [*Hàm*], [*Tham số chính*], [*Mặc định & Ghi chú*],
  [vp-chapter], [num, title, style, color, font, label], [num: auto, style: "chap_modern", color: auto, font: auto (Rounded Mplus 1c, Arial)],
  [vp-lesson], [num, title, subtitle, style, color, font, tab-text, new-page, label], [num: auto, style: "less_modern", tab-text: "BÀI HỌC", new-page: auto],
  [vp-heading-theme-modern], [color, font, paragraph-indent, numbering], [paragraph-indent: 1.5em, numbering: "1.1.1.1", trang trí cấp 1–3],
  [vp-heading-theme-01], [color, bg-color, numbering, paragraph-indent], [paragraph-indent: 1.5em, numbering: "1.1.1.1", trang trí cấp 1–4],
  [vp-heading-theme-native], [paragraph-indent, heading-leading, numbering], [paragraph-indent: 1.5em, heading-leading: 0.55em, dùng khi heading-theme: none],
  [vp-heading-theme-academic], [variant, font, color, numbering, chapter-pagebreak, body-size, body-leading, heading-before, heading-after, paragraph-indent], [variant: "paper" (11pt) hoặc "thesis" (12pt, cấp 1 in hoa căn giữa)],
)

```typst
// Mục lớn 1., mục con 1.1, mục nhỏ 1.1.1
#show: vp-page-setup.with(
  heading-theme: vp-heading-theme-01.with(numbering: "1.1.1"),
)
// Mục lớn I., mục con I.1, mục nhỏ I.1.1
#show: vp-page-setup.with(
  heading-theme: vp-heading-theme-modern.with(numbering: "I.1.1"),
)
// Times New Roman, bộ học thuật thesis
#show: vp-page-setup.with(
  heading-theme: vp-heading-theme-academic.with(
    variant: "thesis", body-size: 13pt, chapter-pagebreak: false,
  ),
)
// Không đánh số toàn bộ nội dung
#show: vp-page-setup.with(
  heading-theme: vp-heading-theme-native.with(numbering: none),
)
```

#pagebreak()
#vp-section[7. Số chương/bài, chuyển trang và tham chiếu]
```typst
// Bỏ num: tự tăng; sang chương mới số bài về 1.
#vp-chapter(title: "Động học")
#vp-lesson(title: "Chuyển động thẳng")

// Số nhập tay là mốc mới: bài tiếp theo tự động là 13.
#vp-lesson(num: 12, title: "Bài bắt đầu từ số 12")
#vp-lesson(title: "Bài tiếp theo")

// Nhãn không phải số được giữ nguyên để hiển thị.
#vp-lesson(num: "A", title: "Phụ lục bài học", new-page: false)

// Chủ động điều khiển ngắt trang.
#vp-lesson(title: "Bài cùng trang", new-page: false)
#vp-lesson(title: "Bài trang mới", new-page: true)

// Label gắn đúng vào heading ngữ nghĩa, không gắn vào khung vẽ.
#vp-chapter(title: "Động học", label: <ch-dong-hoc>)
#vp-lesson(title: "Vận tốc", label: <b-van-toc>)
= Khái niệm <khai-niem>
Xem @ch-dong-hoc, @b-van-toc và @khai-niem.
```
Chapter luôn bắt đầu trang mới. Mặc định bài đầu tiên nằm cùng trang với
chapter, các bài sau bắt đầu trang mới. Khi đặt lesson trong box, block hoặc
grid để làm mẫu, dùng new-page: false vì Typst không cho ngắt trang trong
những vùng chứa này. Với nhãn chữ như A, bộ đếm nội bộ vẫn tiến một bước;
chỉ nhãn số nguyên mới đặt lại mốc bộ đếm.

#vp-section[8. Mục lục và tiêu đề không đánh số]
```typst
#outline(title: [Mục lục], depth: 5) // Có chương: tới ===
#outline(title: [Mục lục], depth: 4) // Bài lẻ: tới ===
#outline(title: [Mục lục], depth: 3) // Không chapter/lesson: tới ===

// depth là cấp nội dung; không dùng level: 1 trong một bài.
#heading(depth: 1, numbering: none)[Ghi nhớ]
#heading(depth: 2, numbering: none)[Lưu ý nhỏ]

// Không xuất hiện trong mục lục và bookmark.
#heading(depth: 1, numbering: none,
  outlined: false, bookmarked: false)[Ghi chú nội bộ]
```
Tiêu đề không đánh số không tăng bộ đếm nhưng vẫn vào mục lục nếu không tắt
outlined. Không thêm mục lục bằng cú pháp = vì như vậy sẽ tạo một mục nội dung;
dùng tham số title của outline. Các số mục trùng giữa hai bài là có chủ đích:
label tham chiếu phải là duy nhất trong toàn tài liệu để phân biệt chúng.

#vp-section[9. Chế độ rõ ràng và chuyển tài liệu cũ]
```typst
// Bình thường để auto. Khi muốn chỉ định cấu trúc toàn file:
#show: vp-page-setup.with(hierarchy: "book")
#show: vp-page-setup.with(hierarchy: "lesson")
#show: vp-page-setup.with(hierarchy: "standalone")
```
Chọn đúng một dòng cấu hình phù hợp. Với tài liệu ghép nhiều mẫu như manual,
vp-hierarchy(mode: "book" / "lesson" / "standalone") có thể áp dụng trong một
scope riêng, trước show rule theme. Đây là trường hợp nâng cao.

Tài liệu cũ từng dùng === làm mục lớn bên trong lesson cần đổi thành =;
==== đổi thành ==, ===== đổi thành ===. Bỏ các lệnh offset và reset heading
thủ công cũ để tránh reset hai lần. Các widget heading dùng cấp nội dung:
level: 1 tương ứng =, level: 2 tương ứng ==. Ưu tiên không bỏ qua cấp giữa:
sau = nên là == rồi mới đến ===.

#vp-section[10. Vị trí chỉnh sửa và kiểm tra]
Các tiêu đề phần hướng dẫn trong manual dùng hàm vp-section của gói.
Hàm này không tạo heading, bộ đếm, mục lục hoặc bookmark. Bạn có thể dùng
nó cho nhãn hướng dẫn, phần nhận xét hoặc tiêu đề nhóm trình bày.

```typst
#vp-section[Hướng dẫn làm bài]
#vp-section(size: 14pt, color: rgb("#174B78"),
  before: 12pt, after: 6pt)[Lưu ý]
```

#table(columns: (1fr, 1.5fr), inset: 6pt,
  [*Mục đích*], [*File*],
  [API, số chương/bài, chuyển trang], [components/hierarchy.typ],
  [Phân cấp ngữ nghĩa và số mục], [components/hierarchy_rules.typ],
  [Khung chapter/lesson], [components/headings/basic.typ, modern.typ],
  [Heading theme 01 / modern], [themes/heading_theme.typ, modern_headings.typ],
  [Heading native / học thuật], [themes/native_headings.typ, academic_headings.typ],
  [Font và cấu hình trang], [layout/page_setup.typ],
  [Mục lục sách và nội dung chương], [components/book_contents.typ],
  [Nhãn phần trình bày vp-section], [components/section.typ],
  [Preset chương/bài sách bài tập], [layout/workbook.typ],
  [State phân cấp và truy vấn tiêu đề], [components/document_state.typ],
)

```sh
typst compile examples/manual-hierarchy.typ examples/manual-hierarchy.pdf --root .
python scripts/check_typst.py
python -m unittest discover -s tests
```
Kiểm tra mục lục và bookmark có đúng cây chương → bài → mục; số lớn bắt đầu
lại ở mỗi bài; label liên kết đúng trang; đổi style không làm mất mục lục;
tiêu đề dài xuống dòng ổn và không bị tách khỏi đoạn đầu.

Thiết kế sử dụng heading offset, depth, numbering và outline chính thức của
Typst. Tài liệu tham khảo:
#link("https://typst.app/docs/reference/model/heading/")[Heading] và
#link("https://typst.app/docs/reference/model/outline/")[Outline].

#pagebreak()
#vp-section[11. vp-section — mã và sản phẩm]
vp-section là hàm của Vietphys, dùng cho tiêu đề trình bày như các phần hướng
dẫn trong manual này. Hàm không tạo heading, không tăng số và không thêm mục
lục hay bookmark. Dùng =, ==, === cho các mục cần phân cấp.

#table(columns: (1fr, 1fr, 1.5fr), inset: 6pt,
  [*Tham số*], [*Mặc định*], [*Ý nghĩa*],
  [title], [Bắt buộc], [Nội dung tiêu đề; có thể truyền bằng ngoặc vuông],
  [size], [16pt], [Cỡ chữ],
  [color], [\#174B78], [Màu chữ],
  [font], [auto], [Kế thừa font nội dung],
  [before / after], [16pt / 9pt], [Khoảng cách trước / sau],
)

*Mã sử dụng:*
```typst
#vp-section[Hướng dẫn làm bài]
Đọc kỹ câu hỏi và ghi rõ đơn vị của các đại lượng.

#vp-section(size: 14pt, color: rgb("#19876B"),
  before: 12pt, after: 6pt)[Lưu ý]
Kết quả làm tròn đến hai chữ số thập phân.

#vp-section(font: "Arial", size: 15pt,
  color: rgb("#174B78"))[Nhận xét của giáo viên]
Trình bày lập luận trước khi thay số.
```

*Sản phẩm:*
#[
  #set par(leading: 0.55em)
  #vp-section[Hướng dẫn làm bài]
  Đọc kỹ câu hỏi và ghi rõ đơn vị của các đại lượng.
  #vp-section(size: 14pt, color: rgb("#19876B"),
    before: 12pt, after: 6pt)[Lưu ý]
  Kết quả làm tròn đến hai chữ số thập phân.
  #vp-section(font: "Arial", size: 15pt,
    color: rgb("#174B78"))[Nhận xét của giáo viên]
  Trình bày lập luận trước khi thay số.
]

#pagebreak()
#set par(leading: 0.55em)
#vp-section[12. Subtitle của theme modern — mã và sản phẩm]
Heading = có đánh số trong vp-heading-theme-modern trình bày chữ nhấn mạnh
bằng cỡ nhỏ, màu xám và kiểu nghiêng. Để dùng như subtitle, đặt dấu xuống dòng
sau title, rồi viết phụ đề giữa hai dấu gạch dưới.

Đây là quy ước trình bày của mẫu modern, chưa phải tham số subtitle: của
heading. Quy ước này không áp dụng riêng cho ==, === hoặc heading không đánh
số. Với vp-lesson, subtitle: là tham số chính thức và độc lập với phụ đề của =.

*Mã sử dụng:*
```typst
#import "../vietphys.typ": *
#show: vp-page-setup.with(heading-theme: vp-heading-theme-modern)
#vp-lesson(title: "Chuyển động thẳng",
  subtitle: "Bài học: kiến thức và phương pháp giải")
= Kiến thức trọng tâm \ _Mục: đọc lý thuyết trước khi làm bài tập_
Vận tốc mô tả sự thay đổi vị trí theo thời gian.
== Công thức cần nhớ
Chuyển động đều có vận tốc không đổi.
= Vận dụng \ _Mục: trình bày lời giải và kiểm tra đơn vị_
Tính quãng đường từ vận tốc và thời gian.
```

*Sản phẩm:*
#[
  #show: vp-hierarchy.with(mode: "lesson")
  #show: vp-heading-theme-modern
  #set par(leading: 0.55em)
  #vp-lesson-counter.update(0)
  #vp-lesson(title: "Chuyển động thẳng", new-page: false,
    subtitle: "Bài học: kiến thức và phương pháp giải")
  = Kiến thức trọng tâm \ _Mục: đọc lý thuyết trước khi làm bài tập_
  Vận tốc mô tả sự thay đổi vị trí theo thời gian.
  == Công thức cần nhớ
  Chuyển động đều có vận tốc không đổi.
  = Vận dụng \ _Mục: trình bày lời giải và kiểm tra đơn vị_
  Tính quãng đường từ vận tốc và thời gian.
]

Phụ đề của = vẫn thuộc nội dung heading, nên cũng có thể xuất hiện trong mục
lục. Trong file thật chỉ có bài lẻ, không cần các lệnh reset và vp-hierarchy
của scope demo; chúng chỉ giúp các ví dụ trong manual không ảnh hưởng nhau.

#pagebreak()
#vp-section[13. Mục lục sách bài tập (vp-book-outline, vp-chapter-outline) — mã và sản phẩm]
Bên cạnh outline() chuẩn của Typst, Vietphys cung cấp hai hàm mục lục chuyên dụng
cho sách nhiều chương/bài: vp-book-outline (mục lục tổng hợp toàn sách) và
vp-chapter-outline (trang tổng quan các bài trong chương hiện tại). Hai hàm tự
động truy vấn tên, số thứ tự và số trang từ heading chương/bài, tạo liên kết đến
đúng trang đích mà vẫn giữ nguyên cây bookmark PDF gốc.

Khi dùng mẫu sách bài tập vp-workbook, gói cung cấp sẵn hai preset:
- vp-workbook-chapter: tương đương vp-chapter.with(style: "chap_hexagon", font: ("Rounded Mplus 1c", "Arial")).
- vp-workbook-lesson: tương đương vp-lesson.with(style: "less_modern", font: ("Rounded Mplus 1c", "Arial"), new-page: true, tab-text: "BÀI") (luôn sang trang mới kể cả bài đầu chương để dành trang mở đầu chương cho vp-chapter-outline).

#table(columns: (24%, 26%, 50%), inset: 6pt,
  [*Hàm / Tham số*], [*Mặc định*], [*Ý nghĩa*],
  [vp-book-outline], [], [Đặt ở đầu sách, trước các chương],
  [title / subtitle], [\[MỤC LỤC\] / none], [Tiêu đề chính và tiêu đề phụ phía trên],
  [intro], [none], [Đoạn giới thiệu ngắn ở trang mục lục đầu tiên],
  [break-before], [()], [Mảng số thứ tự chương bắt đầu trang mục lục mới, ví dụ (3, 5)],
  [vp-chapter-outline], [], [Đặt ngay sau vp-chapter / vp-workbook-chapter],
  [title / summary], [\[NỘI DUNG CHƯƠNG\] / none], [Tiêu đề khối và ghi chú tóm tắt cuối danh sách bài],
  [color / font], [auto / "Arial"], [Màu chủ đạo (theo theme) và font danh sách bài],
  [title-font], [("Rounded Mplus 1c", "Arial")], [Font của tiêu đề lớn và số bài],
  [lesson-size / row-padding], [11pt–12pt / 6pt–8pt], [Cỡ chữ tên bài và khoảng đệm dọc mỗi dòng],
)

*Mã sử dụng:*
```typst
#import "../vietphys.typ": *
#show: vp-workbook.with(title: "BÀI TẬP VẬT LÍ 10")

// 1. Mục lục tổng hợp đầu sách (tự động lấy mọi chương và bài):
#vp-book-outline(
  subtitle: [SÁCH BÀI TẬP VẬT LÍ 10],
  intro: [Nhấn vào tên chương hoặc bài để chuyển nhanh đến trang tương ứng.],
  break-before: (4,),
)

// 2. Mở đầu chương kèm bảng nội dung chương tự động:
#vp-workbook-chapter(num: "III", title: "Năng lượng, Công, Công suất")
#vp-chapter-outline(summary: [Mỗi bài gồm bốn phần luyện tập từ cơ bản đến vận dụng cao.])

// 3. Các bài học trong chương:
#vp-workbook-lesson(num: 17, title: "Công và công suất")
= Phần I. Trắc nghiệm khách quan
#vp-workbook-lesson(num: 18, title: "Động năng và thế năng. Định luật bảo toàn cơ năng")
= Phần I. Trắc nghiệm khách quan
```

*Sản phẩm (vp-workbook-chapter + vp-chapter-outline + các bài trong chương):*
#[
  #show: vp-hierarchy.with(mode: "book")
  #show: vp-heading-theme-modern
  #set par(leading: 0.55em)
  #vp-workbook-chapter(num: "III", title: "Năng lượng, Công, Công suất")
  #vp-chapter-outline(summary: [Mỗi bài gồm bốn phần luyện tập từ cơ bản đến vận dụng cao.])
  #vp-workbook-lesson(num: 17, title: "Công và công suất", new-page: false)
  = Phần I. Trắc nghiệm khách quan
  Nội dung luyện tập của Bài 17.
  #vp-workbook-lesson(num: 18, title: "Động năng và thế năng. Định luật bảo toàn cơ năng", new-page: false)
  = Phần I. Trắc nghiệm khách quan
  Nội dung luyện tập của Bài 18.
]

#pagebreak()
#vp-section[14. Truy vấn phân cấp trên Header và Widget tiêu đề]
Hệ thống phân cấp tự động phát metadata \<vp-chapter-mark\>, \<vp-chapter-info\>
và \<vp-lesson-title\> để đồng bộ với đầu trang (header):
- vp-page-setup tự động ẩn header trên trang có banner chương (vp-chapter / vp-workbook-chapter) để tránh chồng lên banner.
- vp-manual-header-fancy tự động đọc số chương hiện tại để hiển thị huy hiệu CHƯƠNG ... ở góc phải (chapter-label: auto); có thể tắt bằng chapter-label: none hoặc thay bằng nội dung tùy ý.
- Các widget header truy vấn tiêu đề theo cấp nội dung độc lập với offset:
  - vp-widget-heading(level: 1): lấy tiêu đề = hiện hành trên trang (hoặc gần nhất trước đó), tự bỏ qua heading Chương/Bài.
  - vp-widget-smart-heading(): tự lấy tiêu đề mục gần nhất trên trang.
  - vp-set-part("Tên phần") (alias vp-part) kết hợp vp-widget-part(): đánh dấu và hiển thị tên phần trên header.

```typst
// Header tự động hiển thị số chương từ vp-chapter / vp-workbook-chapter:
#show: vp-page-setup.with(
  header: vp-manual-header-fancy(
    title: "BÀI TẬP VẬT LÍ", subtitle: "LUYỆN TẬP",
    icon: "atom", compact: true, chapter-label: auto,
  ),
)

// Hoặc gắn widget tiêu đề mục = vào các mẫu header 01–15:
#show: vp-page-setup.with(
  header: vp-header-theme-01(
    title: "VẬT LÍ 12", subtitle: "Dao động cơ",
    right-content: vp-widget-heading(level: 1),
  ),
)
```

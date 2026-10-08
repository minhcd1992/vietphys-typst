// Review chapter/lesson templates. Compile from the repository root:
// typst watch examples/review-hierarchy.typ --root .
#import "../vietphys.typ": *
#show: vp-page-setup.with(
  heading-theme: none,
  header: vp-header(left-text: "VIETPHYS", right-text: "Review hierarchy"),
  footer: context align(right)[#counter(page).display()],
)
#vp-set-theme(preset: "ocean")
// Review controls page breaks explicitly so short/long variants stay together.
#let vp-lesson = vp-lesson.with(new-page: false)
#let vp-lesson-title = vp-lesson.with(style: "less_star")

#let review-note(name, detail) = block(
  width: 100%,
  fill: rgb("#F1F5F9"),
  inset: 10pt,
  radius: 4pt,
)[
  *Mẫu: #name* \
  #detail \
  Đánh giá: [ ] Giữ  [ ] Chỉnh sửa  [ ] Bỏ \
  Ghi chú: ............................................................
]
#let sample-body() = [
  Nội dung mẫu ngay sau tiêu đề để kiểm tra khoảng cách và độ dễ đọc.
  Một chất điểm chuyển động thẳng với vận tốc $v = 5 "m/s"$.
  Trong khoảng thời gian $t = 10 "s"$, quãng đường đi được là $s = v t$.
]

*REVIEW CHAPTER / LESSON / SECTION / HEADING*

Tài liệu này lần lượt thử ba mẫu chapter, ba mẫu lesson và mẫu
#raw("vp-lesson-title") riêng. Mỗi mẫu có tiêu đề ngắn và dài.
Cùng một màu được dùng để dễ so sánh hình dáng.

Với lesson modern, hai bài liên tiếp giữ nguyên cơ chế ngắt trang thực tế.
Header trên trang chapter modern được ẩn theo cấu hình của thư viện.

Phần cuối file, sau các mẫu lesson, có mục REVIEW SECTION / HEADING
để kiểm tra các cấp heading #raw("="), #raw("=="), #raw("===").


#pagebreak(weak: true)
#vp-chapter(num: "12", title: "Động học", style: "chap_modern")
#review-note("vp-chapter / chap_modern", "Tiêu đề ngắn; kiểm tra banner, badge số và khoảng cách với nội dung.")
#sample-body()

#pagebreak(weak: true)
#vp-chapter(num: "12", title: "Chuyển động của chất điểm và các phương pháp khảo sát vận tốc", style: "chap_modern")
#review-note("vp-chapter / chap_modern", "Tiêu đề dài; kiểm tra banner, badge số và khoảng cách với nội dung.")
#sample-body()

#pagebreak(weak: true)
#vp-chapter(num: "12", title: "Động học", style: "chap_hexagon")
#review-note("vp-chapter / chap_hexagon", "Tiêu đề ngắn; kiểm tra banner, badge số và khoảng cách với nội dung.")
#sample-body()

#pagebreak(weak: true)
#vp-chapter(
  num: "12",
  title: "Chuyển động của chất điểm và các phương pháp khảo sát vận tốc, gia tốc trong những tình huống thực tế",
  style: "chap_hexagon",
)
#review-note("vp-chapter / chap_hexagon", "Tiêu đề dài; kiểm tra banner, badge số và khoảng cách với nội dung.")
#sample-body()

#pagebreak(weak: true)
#vp-chapter(num: "12", title: "Động học", style: "default")
#review-note("vp-chapter / default", "Tiêu đề ngắn; kiểm tra banner, badge số và khoảng cách với nội dung.")
#sample-body()

#pagebreak(weak: true)
#vp-chapter(
  num: "12",
  title: "Chuyển động của chất điểm và các phương pháp khảo sát vận tốc, gia tốc trong những tình huống thực tế",
  style: "default",
)
#review-note("vp-chapter / default", "Tiêu đề dài; kiểm tra banner, badge số và khoảng cách với nội dung.")
#sample-body()

#pagebreak(weak: true)
#vp-is-first-lesson.update(true)
#vp-lesson(num: "1", title: "Chuyển động thẳng", style: "less_modern")
#review-note("vp-lesson / less_modern", "Tiêu đề ngắn, không có subtitle.")
#sample-body()
#v(12pt)
#vp-lesson(
  num: "2",
  title: "Chuyển động thẳng biến đổi đều và ứng dụng các phương trình vận tốc, quãng đường trong bài toán thực tế",
  style: "less_modern",
  subtitle: "Kiến thức trọng tâm và phương pháp giải bài tập vận dụng",
)
#review-note("vp-lesson / less_modern", "Tiêu đề dài, có subtitle.")
#sample-body()
#v(12pt)

#pagebreak(weak: true)
#vp-lesson(num: "1", title: "Chuyển động thẳng", style: "less_ribbon")
#review-note("vp-lesson / less_ribbon", "Tiêu đề ngắn, không có subtitle.")
#sample-body()
#v(12pt)
#vp-lesson(
  num: "2",
  title: "Chuyển động thẳng biến đổi đều và ứng dụng các phương trình vận tốc, quãng đường trong bài toán thực tế",
  style: "less_ribbon",
  subtitle: "Kiến thức trọng tâm và phương pháp giải bài tập vận dụng",
)
#review-note("vp-lesson / less_ribbon", "Tiêu đề dài, có subtitle.")
#sample-body()
#v(12pt)

#pagebreak(weak: true)
#vp-lesson(num: "1", title: "Chuyển động thẳng", style: "default")
#review-note("vp-lesson / default", "Tiêu đề ngắn, không có subtitle.")
#sample-body()
#v(12pt)
#vp-lesson(
  num: "2",
  title: "Chuyển động thẳng biến đổi đều và ứng dụng các phương trình vận tốc, quãng đường trong bài toán thực tế",
  style: "default",
  subtitle: "Kiến thức trọng tâm và phương pháp giải bài tập vận dụng",
)
#review-note("vp-lesson / default", "Tiêu đề dài, có subtitle.")
#sample-body()
#v(12pt)

#pagebreak(weak: true)
#vp-lesson-title(num: "12", title: "Chuyển động thẳng")
#review-note("vp-lesson-title / less_star", "Mẫu ngôi sao viền; alias của vp-lesson(style: less_star).")
#sample-body()
#v(12pt)
#vp-lesson-title(
  num: "12",
  title: "Chuyển động thẳng biến đổi đều và phương pháp giải các bài toán vận tốc, gia tốc trong thực tế",
)
#review-note("vp-lesson-title / less_star", "Tiêu đề dài; mẫu có hỗ trợ subtitle.")
#sample-body()
#v(12pt)

// ============================================================
// REVIEW SECTION / HEADING — các mẫu mới bắt đầu tại đây
// ============================================================
#pagebreak(weak: true)
*REVIEW SECTION / HEADING*

// Show rule chỉ có hiệu lực bên trong từng nhóm review.
#let review-heading-theme(name, theme, long: false) = [
  #pagebreak(weak: true)
  #review-note(name, if long {
    "Heading =, ==, === với tiêu đề dài: kiểm tra xuống dòng và khoảng cách."
  } else {
    "Heading =, ==, === với tiêu đề ngắn; thêm mẫu cấp 1 không đánh số."
  })
  #[
    #show: vp-hierarchy.with(mode: "standalone")
    #counter(heading).update(0)
    #show: theme

    = #if long [Kiến thức trọng tâm về chuyển động của chất điểm và các phương pháp khảo sát vận tốc, gia tốc trong những tình huống thực tế] else [Kiến thức trọng tâm]
    #sample-body()

    == #if long [Phân tích các đại lượng đặc trưng của chuyển động và lựa chọn phương trình phù hợp để giải bài toán] else [Vận tốc và gia tốc]
    #sample-body()

    === #if long [Ứng dụng phương trình chuyển động thẳng biến đổi đều để xác định quãng đường và thời gian trong thực tế] else [Phương trình chuyển động]
    #sample-body()

    #if not long [
      #heading(depth: 1, numbering: none)[Tiêu đề không đánh số]
      #sample-body()
      #if name == "vp-heading-theme-modern" [
        #heading(depth: 2, numbering: none)[Mục cấp hai không đánh số]
        #heading(depth: 3, numbering: none)[Mục cấp ba không đánh số]
      ]
    ]
  ]
]

#let review-native-headings(body) = {
  set heading(numbering: "1.1.1")
  vp-heading-theme-native(body)
}

#for (name, theme) in (
  ("Typst mặc định", review-native-headings),
  ("vp-heading-theme-modern", vp-heading-theme-modern),
  ("Academic / paper", vp-heading-theme-academic),
  ("Academic / thesis", vp-heading-theme-academic.with(variant: "thesis")),
  ("vp-heading-theme-01", vp-heading-theme-01),
) {
  review-heading-theme(name, theme)
  review-heading-theme(name, theme, long: true)
}

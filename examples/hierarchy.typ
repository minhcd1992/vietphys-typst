#import "../vietphys.typ": *
#show: vp-page-setup.with(margin: 2cm)
#vp-set-theme(preset: "ocean")

#vp-chapter(num: "1", title: "Động học chất điểm và các phương pháp giải bài toán chuyển động có tiêu đề dài")
#vp-chapter(num: "2", title: "Động lực học", style: "default")
#vp-lesson(num: "1", title: "Quãng đường và độ dịch chuyển", style: "less_ribbon")
#vp-lesson(num: "2", title: "Định luật bảo toàn động lượng và ứng dụng thực tế trong các bài toán va chạm có tiêu đề dài", subtitle: "Tiêu đề tự xuống dòng, không đè lên nội dung.")
#vp-lesson(num: "3", title: "Tốc độ, vận tốc và gia tốc", style: "default")
#vp-lesson-title(num: "4", title: "Dao động điều hòa và các đại lượng đặc trưng")
= Tóm tắt lý thuyết

#pagebreak()
#[
#counter(heading).update(0)
#show: vp-heading-theme-01
= Bộ heading tiêu chuẩn với tiêu đề dài cần xuống dòng để kiểm tra chiều rộng và khoảng cách với nội dung
Nội dung ngay sau heading.
== Mục cấp hai
Nội dung ngay sau heading.
=== Mục cấp ba
Nội dung ngay sau heading.
==== Mục cấp bốn
Nội dung ngay sau heading.
===== Mục cấp năm
Nội dung ngay sau heading.
====== Mục cấp sáu
Nội dung ngay sau heading.
#heading(numbering: none)[Tiêu đề không đánh số]
]


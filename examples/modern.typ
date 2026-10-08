#import "../vietphys.typ": *
#show: vp-page-setup.with(margin: 2cm)
#vp-set-theme(preset: "ocean")
#vp-lesson(num: "1", tab-text: "ĐỀ ÔN TẬP", title: "ĐỘNG HỌC CHẤT ĐIỂM",
  subtitle: "Thời gian làm bài: 90 phút – Không kể thời gian phát đề",
  color: rgb("#1D3B7A"), font: "Arial")

= PHẦN I. TRẮC NGHIỆM NHIỀU LỰA CHỌN \ _Thí sinh chọn duy nhất một phương án đúng trong mỗi câu hỏi_ <first-section>
#vp-question([Một chất điểm chuyển động thẳng dọc theo trục $O x$. Trong khoảng thời gian $Delta t$, gọi $s$ là quãng đường đi được và $d$ là độ dịch chuyển. Kết luận nào sau đây luôn luôn đúng?],
  options: ([$s >= |d|$.], [$s = d$.], [Tốc độ bằng vận tốc.], [Quãng đường có thể âm.]))

== Tiêu đề cấp hai: khung nghiêng có sọc trang trí
Nội dung ngay sau tiêu đề.
=== Tiêu đề cấp ba: khung góc
Nội dung ngay sau tiêu đề.
==== Tiêu đề cấp bốn
Nội dung ngay sau tiêu đề.
===== Tiêu đề cấp năm
Nội dung ngay sau tiêu đề.
====== Tiêu đề cấp sáu
Nội dung ngay sau tiêu đề.

= PHẦN II. CÂU HỎI TỰ LUẬN <second-section>
Các phần phải được đánh số 1., 2., không ghép số bài và không tăng hai lần.
#context {
  assert(counter(heading).at(<first-section>).at(1) == 1)
  assert(counter(heading).at(<second-section>).at(1) == 2)
}
#heading(numbering: none)[Tiêu đề không đánh số]

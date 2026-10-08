// Compile with --root .; this demo also includes the maintained catalogs.
#import "../vietphys.typ": *
#show: vp-page-setup.with(margin: (x: 2cm, y: 2.5cm))
#set text(font: "Times New Roman", size: 12pt, lang: "vi")
#set page(header: vp-header(left-text: "VIETPHYS", center-text: "DEMO TOÀN DIỆN", right-text: "0.1.0"), footer: vp-footer(center-text: context counter(page).display()))
#vp-set-theme(preset: "ocean")
#vp-show-level.update(true)
#vp-show-source.update(true)
#vp-show-ans.update(false)
#vp-show-sol.update(false)
#align(center)[#text(size: 26pt, weight: "bold", fill: rgb("#184C99"))[VIETPHYS — DEMO TOÀN DIỆN]]
#vp-knowledge-box(title: "Cách đọc bản thử", type: "note", content: [Mỗi trường hợp có mô tả mục đích kiểm tra. Phần đầu không hiện đáp án hay lời giải. Phần giáo viên bật đáp án và lời giải trực tiếp. Sau đó là bảng đáp án và lời giải cuối đề. Phụ lục có header, footer, chapter, lesson, heading và widget.])
#outline(title: [Mục lục], depth: 1)
#pagebreak()

= Đề học sinh — dàn hàng A, B, C, D
== Đáp án ngắn, trung bình và dài
#vp-question([Bốn đáp án ngắn: dự kiến cùng một hàng. Gia tốc có đơn vị nào?], options: ([#vp-unit("m/s^2")], [#vp-unit("m/s")], [#vp-unit("kg")], [#vp-unit("N")]), ans: "A", sol: [Gia tốc là biến thiên vận tốc chia cho thời gian.], level: "Nhận biết", source: "Demo")
#vp-question([Đáp án trung bình: kiểm tra tự chia hai cột. Chọn phát biểu đúng.], options: ([Vận tốc có hướng và độ lớn.], [Tốc độ luôn có hướng xác định.], [Quãng đường luôn bằng độ dịch chuyển.], [Gia tốc luôn cùng hướng vận tốc.]), ans: "A", sol: [Vận tốc là đại lượng vectơ.])
#vp-question([Đáp án dài: kiểm tra một cột và xuống dòng trong cùng đáp án.], options: (
  [Trong chuyển động thẳng biến đổi đều, vận tốc thay đổi tuyến tính theo thời gian còn gia tốc không đổi trong suốt quá trình khảo sát.],
  [Quãng đường luôn bằng độ lớn độ dịch chuyển dù vật đổi chiều nhiều lần trong khoảng thời gian được xét.],
  [Độ lớn vận tốc trung bình luôn bằng tốc độ trung bình bất kể hình dạng quỹ đạo và chiều chuyển động của vật.],
  [Vật có vận tốc bằng không tại một thời điểm thì gia tốc chắc chắn bằng không tại thời điểm ấy.]
), ans: "A", sol: [Các phát biểu còn lại không đúng trong mọi trường hợp.])
== Công thức có chiều cao lớn
#let tall = $frac(sqrt(a^2 + b^2 + 2 a b), sqrt(c^2 + d^2))$
#vp-question([Căn ở cả tử và mẫu: kiểm tra nhãn A–D và khoảng cách giữa các hàng.], options: (
  [$frac(sqrt(1+x^2),sqrt(1-x^2))$], [$frac(sqrt(1-x^2),sqrt(1+x^2))$],
  [$frac(sqrt(1+2 x^2),sqrt(1+x^2))$], [$frac(sqrt(1+x^2),sqrt(1+2 x^2))$]
), ans: "B", sol: [Đáp án quy ước B; đây là mẫu kiểm tra bố cục.])
#vp-question([Công thức khác chiều cao trên cùng một hàng: kiểm tra đường cơ sở.], options: ([$x$], [#tall], [$sqrt(x^2+y^2)$], [$frac(1,frac(1,x)+frac(1,y))$]), ans: "C", sol: [Mẫu kiểm tra bố cục.])
#vp-question([Công thức dài và nhiều tầng: kiểm tra tự chia hai cột hoặc một cột.], options: (
  [$frac(sqrt(v_0^2+2 a s)+sqrt(v_0^2-2 a s),sqrt(1+sin(theta)^2)+sqrt(1+cos(theta)^2))$],
  [$frac(sqrt(v_0^2+2 a s)-sqrt(v_0^2-2 a s),sqrt(1+sin(theta)^2)-sqrt(1+cos(theta)^2))$],
  [$frac(sqrt(v_0^2+4 a s),sqrt(1+tan(theta)^2))$], [$frac(sqrt(v_0^2-4 a s),sqrt(1+cot(theta)^2))$]
), ans: "A", sol: [Mẫu kiểm tra chiều rộng và chiều cao.])
== Vùng hẹp và tài liệu hai cột
#block(width: 9cm, stroke: 0.5pt + gray, inset: 8pt)[
  #vp-question([Vùng chứa rộng 9 cm: đáp án phải dựa trên chiều rộng thực tế.], options: ([Vận tốc không đổi], [Gia tốc không đổi], [Quãng đường tăng], [Độ dịch chuyển giảm]), ans: "B", sol: [Kiểm tra vùng hẹp.])
]
#columns(2, gutter: 18pt)[
  #vp-question([Câu hỏi trong tài liệu hai cột.], options: ([Chuyển động đều], [Chậm dần đều], [Nhanh dần đều], [Chuyển động tròn]), ans: "C", sol: [Kiểm tra cột hẹp.])
  #vp-question([Công thức cao trong cột hẹp.], options: ([#tall], [$sqrt(a^2+b^2)$], [$frac(sqrt(a),sqrt(b))$], [$a+b$]), ans: "D", sol: [Kiểm tra công thức trong cột hẹp.])
]
#pagebreak()

= Câu hỏi có hình minh họa
#let graph = image("assets/motion.svg", width: 100%)
#for side in ("left", "right", "bottom") [
  #vp-question([Đồ thị vận tốc–thời gian. Hình đặt ở *#side*, chỉ bao quanh đề bài. Tính gia tốc.], image: graph, image-side: side, image-ratio: 0.65,
    options: ([#vp-qty("2","m/s^2")], [#vp-qty("4","m/s^2")], [#vp-qty("6","m/s^2")], [#vp-qty("8","m/s^2")]), ans: "A", sol: [$a=(10-2)/4=2$ #vp-unit("m/s^2")])
]
#vp-question([Hình đặt cạnh toàn bộ câu hỏi: kiểm tra chiều rộng cột đáp án.], image: graph, image-side: "right", image-scope: "full", image-ratio: 0.8,
  options: ([Vận tốc tăng tuyến tính.], [Vận tốc giảm tuyến tính.], [Vật đứng yên liên tục.], [Gia tốc biến thiên theo thời gian.]), ans: "A", sol: [Đồ thị là đoạn thẳng dốc lên.])
#vp-question([Đề có đoạn bổ sung sau hình.], stem2: [Biết khối lượng là #vp-qty("2","kg"). Chọn hợp lực.], image: graph, image-side: "left",
  options: ([#vp-qty("4","N")], [#vp-qty("8","N")], [#vp-qty("12","N")], [#vp-qty("16","N")]), ans: "A", sol: [$F=m a=4$ #vp-unit("N")])
#pagebreak()

= Đúng/sai, trả lời ngắn và tự luận
#let statements = ([Vận tốc đầu là #vp-qty("2","m/s").], [Gia tốc là #vp-qty("2","m/s^2").], [Quãng đường trong #vp-qty("4","s") đầu là #vp-qty("24","m").], [Công thức đối chiếu có dạng #tall.])
#for style in ("table", "list") [
  #vp-question([Đúng/sai dạng *#style*, không hiện đáp án. Có ô chứa công thức cao.], type: "tf", tf-style: style, statements: statements, ans-tf: ("Đ","Đ","Đ","S"), sol: [Diện tích dưới đồ thị: $(2+10)/2 dot 4=24$.])
]
#for answer in ("2", "-1,5", "0,25", "1234") [
  #vp-question([Trả lời ngắn: kiểm tra ô viết với đáp án *#answer*, chưa bật đáp án.], type: "short", ans: answer, sol: [Đáp án mẫu: #answer.])
]
#vp-question([Tự luận: sáu dòng viết, chưa hiện lời giải.], type: "essay", lines: 6, listEs: ([Viết công thức gia tốc.], [Tính quãng đường và độ dịch chuyển.]), ans: "24 m", sol: [$s=v_0 t+frac(1,2)a t^2=24$ #vp-unit("m")])
#pagebreak()

= Bản giáo viên — có đáp án và lời giải
#vp-show-ans.update(true)
#vp-show-sol.update(true)
#for shape in ("circle", "square") [
  #vp-question([Dấu đáp án *#shape*, nền câu hỏi và lời giải trực tiếp.], options: ([$frac(sqrt(1+x^2),sqrt(1-x^2))$], [$x^2$], [$sqrt(x)$], [$frac(1,x)$]), ans: "A", sol: [Kiểm tra dấu khoanh cạnh phân thức cao.], ans-shape: shape,
    q-bg: rgb("#F0F7FF"), q-border: 0.6pt + rgb("#91CAFF"), q-padding: 10pt, q-radius: 5pt, ans-mark-bg: rgb("#D6E4FF"), level: "Vận dụng", source: "Demo")
]
#for style in ("table", "list") [
  #vp-question([Đúng/sai dạng *#style* có đáp án.], type: "tf", tf-style: style, statements: statements, ans-tf: ("Đ","Đ","Đ","S"), sol: [Ba ý đúng, một ý sai.])
]
#for answer in ("2", "-1,5", "0,25", "1234") [
  #vp-question([Trả lời ngắn có đáp án *#answer*.], type: "short", ans: answer, short-bg: rgb("#FFFBE6"), short-border: rgb("#D48806"), sol: [Kiểm tra dấu âm và dấu phẩy thập phân.])
]
#vp-question([Tự luận có lời giải: phải ẩn dòng viết.], type: "essay", lines: 6, listEs: ([Thiết lập biểu thức.], [Thay số và đơn vị.]), ans: "24 m", sol: [$s=2 dot 4+frac(1,2) dot 2 dot 4^2=24$ #vp-unit("m")])
#vp-question([Chưa có lời giải: giữ dòng viết dù bật lời giải toàn cục.], type: "essay", lines: 3)
#pagebreak()

= Bảng đáp án và lời giải cuối đề
#context {
  let stored = vp-sol-store.get()
  assert(stored.len() == 31, message: "Demo must collect all 31 questions")
  assert(stored.filter(q => q.sol != none and not q.shown_inline).len() == 21,
    message: "Only the 21 hidden solutions belong at the end")
}
#vp-print-keys()
#pagebreak()
#vp-print-solutions()
#pagebreak()

= Đại lượng và đơn vị
#table(columns: (1fr,1fr), inset: 8pt, stroke: 0.5pt + gray,
  table.header([*Chuỗi đầu vào*],[*Kết quả*]),
  ..("m/s","m/s^2","kg*m/s^2","N.m","m.s^-1","ohm","Omega","microF","uC","um","degC","degF","Angstrom","m^0.5").map(u => ([#raw(u)],[#vp-unit(u)])).flatten(),
)
== Thập phân và ký hiệu khoa học
#for (value, unit) in (("3.14","m"),("3,14","m"),("1.3e-10","s"),("6.02E23","mol^-1"),("-2.5e3","N"),("0","m/s")) [
  #raw(value + " / " + unit) → #vp-qty(value, unit) \
]
=== Đơn vị trong công thức
$F = #vp-qty("2","kg") dot #vp-qty("3.5","m/s^2") = #vp-qty("7","N")$
#vp-formula(eq: "E = m c^2", numbered: true)
#pagebreak()

= Box và ghi chú
#for kind in ("definition","theorem","warning","note") [
  #vp-knowledge-box(type: kind, title: "Mẫu " + kind, content: [Văn bản kèm công thức cao: #tall. Kiểm tra khoảng cách với viền hộp.])
  #v(10pt)
]
#v(15pt)
#vp-note(title: "Ghi nhớ có công thức")[Gia tốc không đổi: $s=v_0 t+frac(1,2)a t^2$. Công thức cao: #tall.]
#pagebreak()

= Chapter, lesson và heading
#include "hierarchy.typ"
#pagebreak()
#[
  #vp-chapter(num: "3", title: "Chương dạng lục giác", style: "chap_hexagon")
  #vp-lesson(num: "1", title: "Bài học dạng ribbon", style: "less_ribbon", subtitle: "Phụ đề minh họa")
  = Heading mặc định cấp một
  Văn bản ngay sau dấu `=`.
  == Heading mặc định cấp hai
  Văn bản ngay sau dấu `==`.
  === Heading mặc định cấp ba
  Văn bản ngay sau dấu `===`.
]
#pagebreak()
= Bộ sưu tập header, footer và widget
#[
  #set page(footer: vp-footer-kage())
  == Footer Kage
  Footer dùng biểu tượng kunai và số trang.
  #pagebreak()
  #set page(footer: vp-footer-shuriken())
  == Footer Shuriken
  Footer dùng phi tiêu và số trang.
  #pagebreak()
]
#include "widgets.typ"

#import "../cau-hinh.typ": *
#import "images/hinh-kiem-tra-gk-i.typ": *

// Chế độ hiển thị: giáo viên (có đáp án/lời giải) hoặc học sinh
#let co-loi-giai = (
  sys.inputs.at("teacher", default: "false") == "true"
    or sys.inputs.at("mode", default: "student") == "teacher"
    or sys.inputs.at("loi-giai", default: "khong") == "co"
)

#vp-show-ans.update(co-loi-giai)
#vp-show-sol.update(co-loi-giai)

#let de-kt-header = vp-manual-header-fancy(
  title: "ĐỀ KIỂM TRA VẬT LÍ 10",
  subtitle: "KIỂM TRA GIỮA HỌC KỲ I",
  icon: "atom",
  compact: true,
  title-size: 12pt,
  subtitle-size: 8pt,
  chapter-size: 10pt,
  icon-size: 18pt,
  title-gap: 4pt,
  bottom-padding: 4pt,
)

#show: vp-workbook.with(
  title: "ĐỀ KIỂM TRA GIỮA HỌC KỲ I - VẬT LÍ 10",
  header: de-kt-header,
  footer: sbt-footer,
  page: (
    font: "Times New Roman",
    font-size: 14pt,
    margin: (x: 2cm, top: 2cm, bottom: 1.6cm),
    header-ascent: sbt-header-gap,
    footer-descent: 6pt,
    leading: 0.55em,
  ),
  questions: (
    show-solutions: co-loi-giai,
    show-answers: co-loi-giai,
    q-spacing: sbt-question-gap,
    stem-spacing: sbt-stem-gap,
    line-spacing: sbt-writing-line-gap,
    lines-above: sbt-writing-top-gap,
    instruction-gap: sbt-instruction-gap,
    tf-inset: (x: 5pt, y: sbt-tf-row-padding),
  ),
)

#let de-kiem-tra = vp-lesson.with(
  style: "less_modern",
  font: sbt-title-font,
  tab-text: "ĐỀ",
  new-page: true,
)

// =========================================================================
// ĐỀ SỐ 1
// =========================================================================

#de-kiem-tra(
  num: "1",
  title: "KIỂM TRA GIỮA HỌC KỲ I",
  subtitle: [Thời gian làm bài: 45 phút (Không kể thời gian phát đề)],
  label: <de-kt-01>,
)

= PHẦN I. CÂU TRẮC NGHIỆM 4 PHƯƠNG ÁN (12 CÂU - 3,0 ĐIỂM)
#sbt-instructions(reset: true)[Thí sinh chọn 01 phương án đúng nhất cho mỗi câu hỏi.]

// Câu 1
#vp-question(
  [Thiết bị bảo vệ rơ-le hoặc cầu chì trong phòng thí nghiệm Vật lí có chức năng chính là gì?],
  type: "mcq",
  options: (
    [Tăng điện áp cho nguồn điện.],
    [Tự động ngắt mạch khi xảy ra quá tải hoặc ngắn mạch để bảo vệ an toàn.],
    [Đo dung lượng điện năng tiêu thụ.],
    [Chuyển đổi dòng điện một chiều thành dòng điện xoay chiều.],
  ),
  ans: "B",
  sol: [Rơ-le và cầu chì là các thiết bị đóng cắt bảo vệ trong mạch điện, có tác dụng tự động ngắt mạch điện khi cường độ dòng điện tăng quá mức cho phép (quá tải hoặc ngắn mạch) nhằm phòng chống cháy nổ và bảo vệ thiết bị thí nghiệm.],
)

// Câu 2
#vp-question(
  [Khi ghi kết quả đo trực tiếp một đại lượng $A$, công thức biểu diễn chuẩn là $A = overline(A) plus.minus Delta A$. Đại lượng $Delta A$ được gọi là:],
  type: "mcq",
  options: (
    [Giá trị trung bình của phép đo.],
    [Sai số tỉ đối của phép đo.],
    [Sai số tuyệt đối của phép đo.],
    [Độ chia nhỏ nhất của dụng cụ đo.],
  ),
  ans: "C",
  sol: [Trong công thức biểu diễn kết quả phép đo $A = overline(A) plus.minus Delta A$, $overline(A)$ là giá trị trung bình và $Delta A$ là sai số tuyệt đối của phép đo.],
)

// Câu 3
#vp-question(
  [Trường hợp nào sau đây thì độ lớn của độ dịch chuyển $bold(d)$ bằng quãng đường đi được $s$?],
  type: "mcq",
  options: (
    [Vật chuyển động thẳng và không đổi chiều.],
    [Vật chuyển động tròn đều.],
    [Vật chuyển động thẳng đi rồi lùi lại vị trí xuất phát.],
    [Vật chuyển động cong bất kỳ.],
  ),
  ans: "A",
  sol: [Độ lớn của độ dịch chuyển bằng quãng đường đi được ($abs(d) = s$) khi và chỉ khi vật chuyển động thẳng và theo một chiều duy nhất (không đổi chiều).],
)

// Câu 4
#vp-question(
  [Vận tốc trung bình $bold(v)_("tb")$ của một vật chuyển động trong khoảng thời gian $Delta t$ được xác định bởi biểu thức:],
  type: "mcq",
  options: (
    [$v_("tb") = frac(s, Delta t)$.],
    [$bold(v)_("tb") = frac(Delta bold(d), Delta t)$.],
    [$v_("tb") = frac(v_1 + v_2, 2)$.],
    [$v_("tb") = sqrt(v_1 dot v_2)$.],
  ),
  ans: "B",
  sol: [Vận tốc trung bình là đại lượng vectơ xác định bằng thương số giữa vectơ độ dịch chuyển và khoảng thời gian thực hiện độ dịch chuyển đó: $bold(v)_("tb") = frac(Delta bold(d), Delta t)$.],
)

// Câu 5
#vp-question(
  [Đồ thị độ dịch chuyển – thời gian ($d - t$) của một vật chuyển động thẳng là một đường thẳng song song với trục thời gian $O t$ (như hình bên). Điều này chứng tỏ vật đang:
    #align(center, hinh-de1-mcq-05())
  ],
  type: "mcq",
  options: (
    [Chuyển động thẳng đều với vận tốc không đổi khác 0.],
    [Chuyển động nhanh dần đều.],
    [Đứng yên tại một vị trí xác định.],
    [Chuyển động chậm dần đều.],
  ),
  ans: "C",
  sol: [Đồ thị $d - t$ song song với trục $O t$ cho thấy tọa độ/độ dịch chuyển không đổi theo thời gian ($d = "const"$), do đó vận tốc $v = frac(Delta d, Delta t) = 0$, nghĩa là vật đang đứng yên.],
)

// Câu 6
#vp-question(
  [Gia tốc $bold(a)$ là đại lượng vật lí đặc trưng cho:],
  type: "mcq",
  options: (
    [Mức độ nhanh hay chậm của chuyển động.],
    [Sự biến thiên nhanh hay chậm của vận tốc theo thời gian.],
    [Quãng đường vật đi được trong một đơn vị thời gian.],
    [Độ biến thiên vị trí của vật trong không gian.],
  ),
  ans: "B",
  sol: [Gia tốc là đại lượng đặc trưng cho độ biến thiên của vận tốc nhanh hay chậm theo thời gian: $bold(a) = frac(Delta bold(v), Delta t)$.],
)

// Câu 7
#vp-question(
  [Trong chuyển động thẳng chậm dần đều, mối quan hệ về hướng giữa vectơ gia tốc $bold(a)$ và vectơ vận tốc $bold(v)$ là:],
  type: "mcq",
  options: (
    [Vectơ gia tốc cùng chiều với vectơ vận tốc ($bold(a) dot bold(v) > 0$).],
    [Vectơ gia tốc ngược chiều với vectơ vận tốc ($bold(a) dot bold(v) < 0$).],
    [Gia tốc luôn có giá trị dương ($a > 0$).],
    [Vectơ gia tốc vuông góc với vectơ vận tốc.],
  ),
  ans: "B",
  sol: [Trong chuyển động thẳng chậm dần đều, vectơ gia tốc luôn ngược chiều với vectơ vận tốc, nghĩa là $a dot v < 0$.],
)

// Câu 8
#vp-question(
  [Công thức liên hệ giữa vận tốc $v$, gia tốc $a$ và độ dịch chuyển $d$ trong chuyển động thẳng biến đổi đều là:],
  type: "mcq",
  options: (
    [$v - v_0 = 2 a d$.],
    [$v^2 - v_0^2 = 2 a d$.],
    [$v^2 + v_0^2 = 2 a d$.],
    [$v^2 - v_0^2 = a d$.],
  ),
  ans: "B",
  sol: [Công thức độc lập với thời gian liên hệ giữa $v, v_0, a$ và $d$ là $v^2 - v_0^2 = 2 a d$.],
)

// Câu 9
#vp-question(
  [Tại cùng một vị trí địa lí trên Trái Đất, mọi vật rơi tự do (bỏ qua sức cản không khí) đều:],
  type: "mcq",
  options: (
    [Rơi với cùng một gia tốc trọng trường $g$.],
    [Có vận tốc chạm đất tỉ lệ thuận với khối lượng của vật.],
    [Có quãng đường rơi tỉ lệ thuận với thời gian $t$.],
    [Chịu tác dụng của các trọng lực có độ lớn bằng nhau.],
  ),
  ans: "A",
  sol: [Tại cùng một nơi trên Trái Đất và ở gần mặt đất, mọi vật rơi tự do đều rơi với cùng một gia tốc trọng trường $g$ không phụ thuộc vào khối lượng của vật.],
)

// Câu 10
#vp-question(
  [Chuyển động nào dưới đây được coi gần đúng nhất là sự rơi tự do?],
  type: "mcq",
  options: (
    [Tờ giấy A4 phẳng được thả rơi từ trên cao.],
    [Chiếc lá cây trôi nhẹ trong gió.],
    [Quả cầu thép nhỏ được thả rơi từ trên cao xuống.],
    [Vận động viên nhảy dù đang xòe dù hạ cánh.],
  ),
  ans: "C",
  sol: [Quả cầu thép nhỏ đặc có khối lượng riêng lớn, lực cản không khí tác dụng lên nó rất nhỏ so với trọng lực nên chuyển động rơi của nó được coi gần đúng là rơi tự do.],
)

// Câu 11
#vp-question(
  [Một học sinh đi bộ từ nhà A đến siêu thị B cách nhau $3 thin "km"$ theo một đường thẳng hết $45 thin "phút"$, sau đó quay trở lại nhà A hết $15 thin "phút"$. Tốc độ trung bình $v_("tb")$ và độ lớn vận tốc trung bình $abs(overline(v))$ của học sinh trong toàn bộ chuyến đi lần lượt là:],
  type: "mcq",
  options: (
    [$6 thin "km/h"$ và $0 thin "km/h"$.],
    [$6 thin "km/h"$ và $6 thin "km/h"$.],
    [$3 thin "km/h"$ và $0 thin "km/h"$.],
    [$0 thin "km/h"$ và $6 thin "km/h"$.],
  ),
  ans: "A",
  sol: [
    Tổng thời gian chuyến đi: $Delta t = 45 + 15 = 60 thin "phút" = 1 thin "h"$.
    - Tổng quãng đường đi được: $s = 3 + 3 = 6 thin "km"$. Do đó tốc độ trung bình: $v_("tb") = frac(s, Delta t) = frac(6, 1) = 6 thin "km/h"$.
    - Do học sinh quay trở lại điểm xuất phát nên độ dịch chuyển tổng cộng $d = 0 thin "km"$. Do đó độ lớn vận tốc trung bình: $abs(overline(v)) = frac(abs(d), Delta t) = 0 thin "km/h"$.
  ],
)

// Câu 12
#vp-question(
  [Ô tô VinFast VF8 đang chạy với tốc độ $18 thin "m/s"$ ($"64,8" thin "km/h"$) trên đường thẳng thì tài xế hãm phanh chuyển động chậm dần đều với gia tốc $a = -2 thin "m/s"^2$. Quãng đường ô tô đi được từ lúc hãm phanh đến khi dừng hẳn là:],
  type: "mcq",
  options: (
    [$81 thin "m"$.],
    [$162 thin "m"$.],
    [$36 thin "m"$.],
    [$"40,5" thin "m"$.],
  ),
  ans: "A",
  sol: [
    Khi xe dừng hẳn thì vận tốc $v = 0$.
    Áp dụng công thức liên hệ: $v^2 - v_0^2 = 2 a d$
    $arrow.r 0^2 - 18^2 = 2 dot (-2) dot d arrow.r -324 = -4 d arrow.r d = 81 thin "m"$.
    Vì xe chạy thẳng theo một chiều nên quãng đường $s = d = 81 thin "m"$.
  ],
)

= PHẦN II. CÂU TRẮC NGHIỆM ĐÚNG/SAI (2 CÂU - 4,0 ĐIỂM)
#sbt-instructions(reset: true)[Thí sinh xét tính Đúng/Sai cho từng ý a), b), c), d) trong mỗi câu.]

// Câu 1 - Đúng/Sai
#vp-question(
  [Hình vẽ bên dưới mô tả đồ thị độ dịch chuyển – thời gian ($d - t$) của một xe máy điện VinFast Feliz S chuyển động thẳng theo chiều dương dọc theo trục $O x$:
    - Giai đoạn 1 ($0 arrow.r 4 thin "s"$): Đường thẳng đi từ $d = 0 thin "m"$ đến $d = 20 thin "m"$.
    - Giai đoạn 2 ($4 thin "s" arrow.r 10 thin "s"$): Đường thẳng nằm ngang tại vị trí $d = 20 thin "m"$.
    - Giai đoạn 3 ($10 thin "s" arrow.r 15 thin "s"$): Đường thẳng đi từ $d = 20 thin "m"$ về lại $d = 0 thin "m"$.
    #align(center, hinh-de1-tf-01())
  ],
  type: "tf",
  statements: (
    [Trong $4 thin "s"$ đầu tiên, xe chuyển động thẳng đều với vận tốc $v = +5 thin "m/s"$.],
    [Từ giây thứ 4 đến giây thứ 10, xe chuyển động chậm dần đều và dừng lại ở cuối giai đoạn.],
    [Trong giai đoạn từ $10 thin "s"$ đến $15 thin "s"$, xe chuyển động thẳng đều ngược chiều dương với vận tốc $v = -4 thin "m/s"$.],
    [Tổng độ dịch chuyển của xe trong cả quá trình $15 thin "s"$ bằng $0 thin "m"$, và tổng quãng đường xe đi được là $40 thin "m"$.],
  ),
  ans-tf: ("Đ", "S", "Đ", "Đ"),
  sol: [
    - a) *Đúng:* $v_1 = frac(20 - 0, 4 - 0) = +5 thin "m/s"$, đồ thị là đường thẳng nghiêng lên nên xe chuyển động thẳng đều theo chiều dương.
    - b) *Sai:* Trong giai đoạn từ $4 thin "s"$ đến $10 thin "s"$, $d = 20 thin "m"$ không đổi, vận tốc $v_2 = 0$, xe đứng yên chứ không phải chuyển động chậm dần đều.
    - c) *Đúng:* Vận tốc giai đoạn 3: $v_3 = frac(0 - 20, 15 - 10) = frac(-20, 5) = -4 thin "m/s"$, xe chuyển động thẳng đều ngược chiều dương (theo chiều âm).
    - d) *Đúng:* Độ dịch chuyển tổng hợp: $Delta d = d_(15) - d_0 = 0 - 0 = 0 thin "m"$. Tổng quãng đường đi được: $s = s_1 + s_2 + s_3 = 20 + 0 + 20 = 40 thin "m"$.
  ],
)

// Câu 2 - Đúng/Sai
#vp-question(
  [Một học sinh thực hành thả rơi tự do một viên bi thép nhỏ từ độ cao $h = 45 thin "m"$ so với mặt đất tại nơi có gia tốc trọng trường $g = 10 thin "m/s"^2$. Bỏ qua lực cản không khí.],
  type: "tf",
  statements: (
    [Thời gian viên bi rơi chạm mặt đất là $t = "3,0" thin "s"$.],
    [Vận tốc của viên bi ngay trước khi chạm đất có độ lớn là $v = 30 thin "m/s"$.],
    [Quãng đường viên bi rơi được trong giây cuối cùng trước khi chạm đất là $15 thin "m"$.],
    [Nếu thả một viên bi gỗ có cùng kích thước nhưng khối lượng chỉ bằng một nửa viên bi thép từ độ cao $h = 45 thin "m"$, viên bi gỗ sẽ chạm đất muộn hơn viên bi thép $"1,5" thin "s"$.],
  ),
  ans-tf: ("Đ", "Đ", "S", "S"),
  sol: [
    - a) *Đúng:* $h = frac{1}{2} g t^2 arrow.r t = sqrt(frac(2 h, g)) = sqrt(frac(2 dot 45, 10)) = 3 thin "s"$.
    - b) *Đúng:* $v = g t = 10 dot 3 = 30 thin "m/s"$ (hoặc $v = sqrt(2 g h) = sqrt(2 dot 10 dot 45) = 30 thin "m/s"$).
    - c) *Sai:* Quãng đường rơi trong 2 giây đầu: $s_2 = frac{1}{2} g t_2^2 = frac{1}{2} dot 10 dot 2^2 = 20 thin "m"$. Quãng đường rơi trong giây thứ 3 (giây cuối cùng): $Delta s = h - s_2 = 45 - 20 = 25 thin "m"$ (không phải $15 thin "m"$).
    - d) *Sai:* Trong chuyển động rơi tự do (bỏ qua sức cản không khí), gia tốc rơi tự do của mọi vật đều bằng $g$, không phụ thuộc vào khối lượng nên hai viên bi chạm đất cùng lúc.
  ],
)

= PHẦN III. CÂU TRẢ LỜI NGẮN (4 CÂU - 2,0 ĐIỂM)
#sbt-instructions(reset: true)[Thí sinh tính toán và điền đáp số dạng số.]

// Câu 1 - Trả lời ngắn
#vp-question(
  [Học sinh đo thời gian rơi tự do của một vật thu được giá trị trung bình $overline(t) = "0,80" thin "s"$ và sai số tuyệt đối $Delta t = "0,02" thin "s"$. Tính sai số tỉ đối $delta t$ của phép đo thời gian này (theo đơn vị phần trăm $\%$).],
  type: "short",
  ans: "2,5",
  short-boxes: 3,
  sol: [
    Sai số tỉ đối của phép đo:
    $delta t = frac(Delta t, overline(t)) dot 100% = frac{"0,02", "0,80"} dot 100% = "2,5"%$.
  ],
)

// Câu 2 - Trả lời ngắn
#vp-question(
  [Một tàu hỏa bắt đầu rời ga chuyển động thẳng nhanh dần đều. Sau $20 thin "s"$, tàu đạt tốc độ $10 thin "m/s"$. Tính gia tốc $a$ của tàu hỏa (theo đơn vị $"m/s"^2$).],
  type: "short",
  ans: "0,5",
  short-boxes: 3,
  sol: [
    Tàu bắt đầu rời ga nên $v_0 = 0$.
    Gia tốc của tàu hỏa: $a = frac(v - v_0, t) = frac(10 - 0, 20) = "0,5" thin "m/s"^2$.
  ],
)

// Câu 3 - Trả lời ngắn
#vp-question(
  [Một ô tô đang chạy với tốc độ $10 thin "m/s"$ thì nhấn ga chuyển động thẳng nhanh dần đều. Sau khi đi được quãng đường $s = 75 thin "m"$, tốc độ của xe đạt $20 thin "m/s"$. Tính khoảng thời gian $t$ (theo đơn vị giây $"s"$) để xe đi hết quãng đường $75 thin "m"$ đó.],
  type: "short",
  ans: "5",
  short-boxes: 2,
  sol: [
    Gia tốc của ô tô: $a = frac(v^2 - v_0^2, 2 s) = frac(20^2 - 10^2, 2 dot 75) = frac(300, 150) = 2 thin "m/s"^2$.
    Thời gian chuyển động: $t = frac(v - v_0, a) = frac(20 - 10, 2) = 5 thin "s"$.
    (Hoặc tính qua $s = frac(v_0 + v, 2) dot t arrow.r 75 = frac(10 + 20, 2) dot t = 15 t arrow.r t = 5 thin "s"$).
  ],
)

// Câu 4 - Trả lời ngắn
#vp-question(
  [Một vật được thả rơi tự do từ đỉnh một tòa nhà cao $H$ so với mặt đất. Biết rằng trong $2 thin "s"$ cuối cùng trước khi chạm đất, vật rơi được quãng đường $60 thin "m"$. Lấy $g = 10 thin "m/s"^2$. Tính độ cao $H$ ban đầu của tòa nhà (theo đơn vị mét $"m"$).],
  type: "short",
  ans: "80",
  short-boxes: 2,
  sol: [
    Gọi $t$ là tổng thời gian vật rơi chạm đất ($t > 2 thin "s"$).
    Độ cao của tòa nhà: $H = frac{1}{2} g t^2 = 5 t^2$.
    Quãng đường vật rơi được trong $t - 2$ giây đầu: $s_(t-2) = frac{1}{2} g (t - 2)^2 = 5 (t - 2)^2$.
    Quãng đường rơi trong 2 giây cuối:
    $Delta s = H - s_(t-2) = 5 [t^2 - (t - 2)^2] = 5 (4 t - 4) = 20 t - 20 = 60 thin "m"$.
    $arrow.r 20 t = 80 arrow.r t = 4 thin "s"$.
    Độ cao ban đầu của tòa nhà: $H = 5 dot 4^2 = 80 thin "m"$.
  ],
)

= PHẦN IV. CÂU TỰ LUẬN (2 CÂU - 1,0 ĐIỂM)
#sbt-essay-instructions(reset: true)[Thí sinh trình bày chi tiết các bước lập luận vật lý và tính toán.]

// Câu 1 - Tự luận
#vp-question(
  [Một người đi xe máy đang chuyển động thẳng đều với tốc độ $36 thin "km/h"$ thì bất ngờ phát hiện một chướng ngại vật nằm cách xe $25 thin "m"$. Người đó hãm phanh ngay lập tức khiến xe chuyển động chậm dần đều với gia tốc $a = -2 thin "m/s"^2$.
    #parbreak() a) Xe máy có bị va chạm vào chướng ngại vật hay không? Tính khoảng cách từ xe đến chướng ngại vật khi xe dừng hẳn.
    #parbreak() b) Tính thời gian từ lúc bắt đầu hãm phanh đến khi xe dừng hẳn.
  ],
  type: "essay",
  lines: 6,
  sol: [
    Đổi vận tốc ban đầu: $v_0 = 36 thin "km/h" = 10 thin "m/s"$.
    Khi xe dừng hẳn thì vận tốc đạt $v = 0$.

    a) Quãng đường xe máy đi được kể từ lúc hãm phanh đến khi dừng hẳn:
    $v^2 - v_0^2 = 2 a s arrow.r s = frac(v^2 - v_0^2, 2 a) = frac(0^2 - 10^2, 2 dot (-2)) = frac(-100, -4) = 25 thin "m"$.
    Khoảng cách ban đầu từ xe đến chướng ngại vật là $L = 25 thin "m"$.
    Vì $s = L = 25 thin "m"$ nên xe dừng lại ngay sát trước chướng ngại vật, xe không bị đâm va vào chướng ngại vật.
    Khoảng cách từ xe đến chướng ngại vật khi xe dừng hẳn là $Delta x = L - s = 25 - 25 = 0 thin "m"$.

    b) Thời gian từ lúc bắt đầu hãm phanh đến khi xe dừng lại:
    $v = v_0 + a t arrow.r t = frac(v - v_0, a) = frac(0 - 10, -2) = 5 thin "s"$.
  ],
)

// Câu 2 - Tự luận
#vp-question(
  [Từ đỉnh một vách đá cao $h_0 = 80 thin "m"$ so với mặt đất, vật A được thả rơi tự do thẳng đứng xuống dưới. Cùng lúc đó ($t = 0$), từ mặt đất ngay bên dưới, vật B được ném thẳng đứng lên trên với tốc độ ban đầu $v_0 = 40 thin "m/s"$. Lấy $g = 10 thin "m/s"^2$, bỏ qua lực cản không khí.
    #parbreak() a) Viết phương trình độ dịch chuyển/tọa độ $y_A (t)$ và $y_B (t)$ của hai vật (chọn gốc tọa độ tại mặt đất, chiều dương hướng thẳng đứng lên trên).
    #parbreak() b) Xác định thời điểm $t$ và độ cao $y$ mà hai vật gặp nhau trong không trung.
  ],
  type: "essay",
  lines: 6,
  sol: [
    Chọn trục tọa độ $O y$ thẳng đứng hướng lên, gốc $O$ tại mặt đất, gốc thời gian $t = 0$ là lúc thả vật A và ném vật B.
    Gia tốc của hai vật: $a = -g = -10 thin "m/s"^2$.

    a) Phương trình tọa độ của hai vật:
    - Vật A thả rơi tự do từ độ cao $80 thin "m"$ không vận tốc đầu ($y_(0 A) = 80 thin "m"$, $v_(0 A) = 0$):
      $y_A (t) = y_(0 A) + v_(0 A) t + frac{1}{2} a t^2 = 80 - 5 t^2 thin ("m")$.
    - Vật B ném từ mặt đất lên với tốc độ ban đầu $40 thin "m/s"$ ($y_(0 B) = 0$, $v_(0 B) = +40 thin "m/s"$):
      $y_B (t) = y_(0 B) + v_(0 B) t + frac{1}{2} a t^2 = 40 t - 5 t^2 thin ("m")$.

    b) Hai vật gặp nhau khi tọa độ của chúng bằng nhau:
    $y_A (t) = y_B (t) arrow.r 80 - 5 t^2 = 40 t - 5 t^2 arrow.r 40 t = 80 arrow.r t = 2 thin "s"$.
    Độ cao hai vật gặp nhau so với mặt đất:
    $y = 80 - 5 dot 2^2 = 80 - 20 = 60 thin "m"$.
    Kiểm tra: Tại $t = 2 thin "s"$, vận tốc vật B là $v_B = 40 - 10 dot 2 = 20 thin "m/s" > 0$ (vật B vẫn đang đi lên), nên hai vật gặp nhau trong không trung là hoàn toàn thỏa mãn.
  ],
)

// =========================================================================
// ĐỀ SỐ 2
// =========================================================================

#de-kiem-tra(
  num: "2",
  title: "KIỂM TRA GIỮA HỌC KỲ I",
  subtitle: [Thời gian làm bài: 45 phút (Không kể thời gian phát đề)],
  label: <de-kt-02>,
)

= PHẦN I. CÂU TRẮC NGHIỆM 4 PHƯƠNG ÁN (12 CÂU - 3,0 ĐIỂM)
#sbt-instructions(reset: true)[Thí sinh chọn 01 phương án đúng nhất cho mỗi câu hỏi.]

// Câu 1
#vp-question(
  [Biển báo có hình tam giác đều, viền đỏ, nền vàng, ở giữa có hình vẽ màu đen thuộc nhóm biển báo nào trong phòng thí nghiệm?],
  type: "mcq",
  options: (
    [Biển báo cấm.],
    [Biển báo cảnh báo nguy hiểm.],
    [Biển báo lệnh thực hiện.],
    [Biển báo chỉ dẫn khu vực an toàn.],
  ),
  ans: "B",
  sol: [Biển báo cảnh báo nguy hiểm trong phòng thí nghiệm có hình tam giác đều, viền đỏ hoặc viền đen, nền màu vàng và hình vẽ cảnh báo màu đen bên trong.],
)

// Câu 2
#vp-question(
  [Phép đo trực tiếp một đại lượng vật lí là:],
  type: "mcq",
  options: (
    [Phép đo thông qua công thức liên hệ với các đại lượng khác.],
    [Phép so sánh trực tiếp đại lượng cần đo với đại lượng cùng loại làm đơn vị bằng dụng cụ đo.],
    [Phép tính toán giá trị dựa trên phần mềm mô phỏng.],
    [Phép đo thu được kết quả sau khi giải hệ phương trình.],
  ),
  ans: "B",
  sol: [Phép đo trực tiếp là phép so sánh trực tiếp đại lượng cần đo với đại lượng cùng loại được quy ước làm đơn vị bằng cách sử dụng dụng cụ đo chuyên dụng.],
)

// Câu 3
#vp-question(
  [Vectơ độ dịch chuyển $bold(d)$ là đại lượng vectơ:],
  type: "mcq",
  options: (
    [Nối từ vị trí đầu đến vị trí cuối của chuyển động.],
    [Có độ lớn luôn luôn bằng quãng đường đi được $s$.],
    [Tỉ lệ thuận với thời gian chuyển động của vật.],
    [Không phụ thuộc vào vị trí đầu và vị trí cuối của vật.],
  ),
  ans: "A",
  sol: [Độ dịch chuyển là một đại lượng vectơ nối từ vị trí đầu đến vị trí cuối của chuyển động, biểu diễn sự thay đổi vị trí của vật.],
)

// Câu 4
#vp-question(
  [Phát biểu nào sau đây chính xác nhất khi nói về vectơ vận tốc tức thời $bold(v)$?],
  type: "mcq",
  options: (
    [Có độ lớn luôn bằng tốc độ trung bình trong toàn bộ chuyến đi.],
    [Đặc trưng cho chiều và mức độ nhanh chậm của chuyển động tại một thời điểm xác định.],
    [Là thương số giữa tổng quãng đường đi được và tổng thời gian.],
    [Luôn có phương vuông góc với quỹ đạo chuyển động.],
  ),
  ans: "B",
  sol: [Vectơ vận tốc tức thời $bold(v)$ đặc trưng cho phương, chiều và độ nhanh chậm của chuyển động tại một thời điểm nhất định trên quỹ đạo.],
)

// Câu 5
#vp-question(
  [Trên đồ thị độ dịch chuyển – thời gian ($d - t$), độ dốc (hệ số góc) của đường biểu diễn cho biết đại lượng nào?],
  type: "mcq",
  options: (
    [Gia tốc của chuyển động.],
    [Vận tốc của chuyển động.],
    [Quãng đường vật đi được.],
    [Thời gian vật chuyển động.],
  ),
  ans: "B",
  sol: [Độ dốc của đường biểu diễn trên đồ thị $d - t$ bằng $frac(Delta d, Delta t)$, cho biết giá trị vận tốc của chuyển động.],
)

// Câu 6
#vp-question(
  [Đơn vị chuẩn của gia tốc trong hệ đơn vị SI là:],
  type: "mcq",
  options: (
    [$"m/s"$.],
    [$"m" dot "s"$.],
    [$"m/s"^2$.],
    [$"km/h"^2$.],
  ),
  ans: "C",
  sol: [Trong hệ SI, đơn vị của gia tốc là mét trên giây bình phương ($"m/s"^2$).],
)

// Câu 7
#vp-question(
  [Trong chuyển động thẳng nhanh dần đều, vectơ gia tốc $bold(a)$:],
  type: "mcq",
  options: (
    [Luôn cùng chiều với vectơ vận tốc $bold(v)$.],
    [Luôn ngược chiều với vectơ vận tốc $bold(v)$.],
    [Có độ lớn giảm dần đều theo thời gian.],
    [Bằng 0 khi vận tốc đạt giá trị lớn nhất.],
  ),
  ans: "A",
  sol: [Trong chuyển động nhanh dần đều, vectơ gia tốc luôn cùng hướng với vectơ vận tốc, nghĩa là $bold(a) dot bold(v) > 0$.],
)

// Câu 8
#vp-question(
  [Phương trình độ dịch chuyển theo thời gian $t$ của chuyển động thẳng biến đổi đều là:],
  type: "mcq",
  options: (
    [$d = v_0 + a t$.],
    [$d = v_0 t + frac{1}{2} a t^2$.],
    [$d = frac{1}{2} a t^2$.],
    [$d = v_0 t + a t^2$.],
  ),
  ans: "B",
  sol: [Phương trình độ dịch chuyển của chuyển động thẳng biến đổi đều: $d = v_0 t + frac{1}{2} a t^2$.],
)

// Câu 9
#vp-question(
  [Đặc điểm nào sau đây KHÔNG phải của sự rơi tự do?],
  type: "mcq",
  options: (
    [Phương chuyển động là phương thẳng đứng.],
    [Chiều chuyển động hướng từ trên xuống dưới.],
    [Là chuyển động thẳng nhanh dần đều.],
    [Gia tốc rơi phụ thuộc nhiều vào khối lượng của vật.],
  ),
  ans: "D",
  sol: [Tại cùng một nơi trên Trái Đất, gia tốc rơi tự do $g$ có giá trị như nhau đối với mọi vật, không phụ thuộc vào khối lượng của vật.],
)

// Câu 10
#vp-question(
  [Công thức tính vận tốc $v$ của vật rơi tự do từ trạng thái nghỉ theo quãng đường rơi $h$ tại nơi có gia tốc trọng trường $g$ là:],
  type: "mcq",
  options: (
    [$v = sqrt(g h)$.],
    [$v = sqrt(2 g h)$.],
    [$v = 2 g h$.],
    [$v = frac{1}{2} g t^2$.],
  ),
  ans: "B",
  sol: [Vật rơi tự do không vận tốc đầu ($v_0 = 0$): $v^2 - v_0^2 = 2 g h arrow.r v = sqrt(2 g h)$.],
)

// Câu 11
#vp-question(
  [Một chiếc thuyền máy chạy trên dòng sông chảy thẳng. Khi chạy xuôi dòng từ A đến B hết $1 thin "giờ"$, khi chạy ngược dòng từ B về A hết $"1,5" thin "giờ"$. Biết tốc độ của thuyền so với nước không đổi là $15 thin "km/h"$. Tốc độ chảy của dòng nước so với bờ sông là:],
  type: "mcq",
  options: (
    [$3 thin "km/h"$.],
    [$"2,5" thin "km/h"$.],
    [$5 thin "km/h"$.],
    [$"1,5" thin "km/h"$.],
  ),
  ans: "A",
  sol: [
    Gọi $v_n$ là tốc độ của dòng nước đối với bờ.
    - Vận tốc xuôi dòng: $v_x = 15 + v_n thin ("km/h")$.
    - Vận tốc ngược dòng: $v_("ngược") = 15 - v_n thin ("km/h")$.
    Vì quãng đường $A B$ không đổi:
    $(15 + v_n) dot 1 = (15 - v_n) dot "1,5" arrow.r 15 + v_n = "22,5" - "1,5" v_n$
    $arrow.r "2,5" v_n = "7,5" arrow.r v_n = 3 thin "km/h"$.
  ],
)

// Câu 12
#vp-question(
  [Xe máy điện VinFast Feliz S xuất phát từ trạng thái nghỉ, tăng tốc thẳng nhanh dần đều với gia tốc $a = "1,5" thin "m/s"^2$. Tốc độ của xe sau khi đi được quãng đường $48 thin "m"$ là:],
  type: "mcq",
  options: (
    [$12 thin "m/s"$.],
    [$144 thin "m/s"$.],
    [$24 thin "m/s"$.],
    [$8 thin "m/s"$.],
  ),
  ans: "A",
  sol: [
    Xe xuất phát từ trạng thái nghỉ nên $v_0 = 0$.
    Áp dụng công thức độc lập thời gian:
    $v^2 - v_0^2 = 2 a s arrow.r v = sqrt(2 a s) = sqrt(2 dot "1,5" dot 48) = sqrt(144) = 12 thin "m/s"$.
  ],
)
= PHẦN II. CÂU TRẮC NGHIỆM ĐÚNG/SAI (2 CÂU - 4,0 ĐIỂM)
#sbt-instructions(reset: true)[Thí sinh xét tính Đúng/Sai cho từng ý a), b), c), d) trong mỗi câu.]

// Câu 1 - Đúng/Sai
#vp-question(
  [Một rô-bốt tự hành thăm dò di chuyển trên mặt phẳng tọa độ $O x y$ (như hình vẽ bên dưới). Rô-bốt xuất phát từ gốc tọa độ A$(0; 0)$, di chuyển thẳng đến B$(4 thin "m"; 0)$ hết thời gian $2 thin "s"$, sau đó rẽ vuông góc di chuyển thẳng đến C$(4 thin "m"; 3 thin "m")$ hết $2 thin "s"$ nữa.
    #align(center, hinh-de2-tf-01())
  ],
  type: "tf",
  statements: (
    [Tổng quãng đường rô-bốt đi được từ A đến C là $s = 7 thin "m"$.],
    [Độ lớn độ dịch chuyển tổng hợp của rô-bốt từ A đến C là $abs(bold(d)_(A C)) = 5 thin "m"$.],
    [Tốc độ trung bình của rô-bốt trên toàn bộ quãng đường AC là $"1,75" thin "m/s"$.],
    [Độ lớn vận tốc trung bình của rô-bốt trên toàn bộ quá trình AC là $"1,25" thin "m/s"$.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "Đ"),
  sol: [
    - a) *Đúng:* Tổng quãng đường đi được: $s = A B + B C = 4 + 3 = 7 thin "m"$.
    - b) *Đúng:* Vectơ độ dịch chuyển tổng hợp $bold(d)_(A C) = arrow(A C) = (4; 3)$. Độ lớn: $abs(bold(d)_(A C)) = sqrt(4^2 + 3^2) = 5 thin "m"$.
    - c) *Đúng:* Tổng thời gian chuyển động: $t = 2 + 2 = 4 thin "s"$. Tốc độ trung bình: $v_("tb") = frac(s, t) = frac(7, 4) = "1,75" thin "m/s"$.
    - d) *Đúng:* Độ lớn vận tốc trung bình: $abs(overline(v)) = frac(abs(bold(d)_(A C)), t) = frac(5, 4) = "1,25" thin "m/s"$.
  ],
)

// Câu 2 - Đúng/Sai
#vp-question(
  [Một xe tải chở hàng chạy thẳng trên đường cao tốc với vận tốc $v_0 = 20 thin "m/s"$ thì người lái xe phát hiện chướng ngại vật và hãm phanh chuyển động chậm dần đều với gia tốc có độ lớn $a = 4 thin "m/s"^2$.],
  type: "tf",
  statements: (
    [Thời gian từ lúc hãm phanh đến khi xe dừng hẳn là $t = "5,0" thin "s"$.],
    [Quãng đường xe đi được trong $2 thin "s"$ đầu tiên kể từ lúc hãm phanh là $32 thin "m"$.],
    [Tốc độ của xe sau khi hãm phanh được $3 thin "s"$ là $8 thin "m/s"$.],
    [Quãng đường xe đi được trong riêng giây cuối cùng trước khi dừng hẳn là $4 thin "m"$.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [
    Chọn chiều dương là chiều chuyển động của xe tải: $v_0 = +20 thin "m/s"$, gia tốc hãm phanh $a = -4 thin "m/s"^2$.
    - a) *Đúng:* Khi dừng hẳn $v = 0 arrow.r t = frac(v - v_0, a) = frac(0 - 20, -4) = 5 thin "s"$.
    - b) *Đúng:* Quãng đường đi trong 2 s đầu: $s_2 = v_0 t_1 + frac{1}{2} a t_1^2 = 20 dot 2 + frac{1}{2} dot (-4) dot 2^2 = 40 - 8 = 32 thin "m"$.
    - c) *Đúng:* Vận tốc sau 3 s: $v_3 = v_0 + a t = 20 + (-4) dot 3 = 8 thin "m/s"$.
    - d) *Sai:* Tổng quãng đường đi được trong cả 5 s đến khi dừng lại: $s_5 = frac{v^2 - v_0^2}{2 a} = frac{-400}{-8} = 50 thin "m"$. Quãng đường đi trong 4 s đầu: $s_4 = 20 dot 4 - frac{1}{2} dot 4 dot 4^2 = 80 - 32 = 48 thin "m"$. Quãng đường đi riêng trong giây thứ 5 (giây cuối cùng): $Delta s = s_5 - s_4 = 50 - 48 = 2 thin "m"$ (hoặc xét chuyển động ngược chiều từ nghỉ với gia tốc $4 thin "m/s"^2$ trong 1 s: $Delta s = frac{1}{2} dot 4 dot 1^2 = 2 thin "m"$, không phải $4 thin "m"$).
  ],
)
= PHẦN III. CÂU TRẢ LỜI NGẮN (4 CÂU - 2,0 ĐIỂM)
#sbt-instructions(reset: true)[Thí sinh tính toán và điền đáp số dạng số.]

// Câu 1 - Trả lời ngắn
#vp-question(
  [Dùng thước kẹp có độ chia nhỏ nhất $"0,1" thin "mm"$ để đo đường kính một viên bi thép thu được các giá trị lần lượt là: $"12,2" thin "mm"$; $"12,4" thin "mm"$; $"12,3" thin "mm"$; $"12,3" thin "mm"$. Tính giá trị trung bình $overline(d)$ của đường kính viên bi (theo đơn vị $"mm"$).],
  type: "short",
  ans: "12,3",
  short-boxes: 4,
  sol: [
    Giá trị trung bình của đường kính viên bi:
    $overline(d) = frac{"12,2" + "12,4" + "12,3" + "12,3", 4} = frac{"49,2", 4} = "12,3" thin "mm"$.
  ],
)

// Câu 2 - Trả lời ngắn
#vp-question(
  [Đồ thị độ dịch chuyển – thời gian ($d - t$) của một người đi xe đạp cho thấy: trong $10 thin "s"$ đầu tiên độ dịch chuyển tăng đều từ $0$ đến $50 thin "m"$, trong $10 thin "s"$ tiếp theo độ dịch chuyển không đổi tại $50 thin "m"$ (như hình bên). Tính vận tốc trung bình của xe đạp trong toàn bộ khoảng thời gian $20 thin "s"$ đó (theo đơn vị $"m/s"$).
    #align(center, hinh-de2-short-02())
  ],
  type: "short",
  ans: "2,5",
  short-boxes: 3,
  sol: [
    Độ dịch chuyển tổng cộng sau $Delta t = 20 thin "s"$ là $Delta d = 50 - 0 = 50 thin "m"$.
    Vận tốc trung bình trong cả quá trình $20 thin "s"$:
    $v_("tb") = frac(Delta d, Delta t) = frac(50, 20) = "2,5" thin "m/s"$.
  ],
)

// Câu 3 - Trả lời ngắn
#vp-question(
  [Một đoàn tàu hỏa bắt đầu xuất phát từ ga chuyển động thẳng nhanh dần đều với gia tốc không đổi. Toa xe thứ nhất đi qua trước mặt một người quan sát đứng sát đường tàu trong thời gian $t_1 = "4,0" thin "s"$. Tính khoảng thời gian (theo đơn vị giây $"s"$) để toa xe thứ 4 đi qua trước mặt người đó (làm tròn đến 2 chữ số thập phân).],
  type: "short",
  ans: "1,07",
  short-boxes: 4,
  sol: [
    Gọi $L$ là chiều dài mỗi toa xe và $a$ là gia tốc của tàu hỏa ($v_0 = 0$).
    Thời gian $n$ toa đầu tiên đi qua người quan sát:
    $n L = frac{1}{2} a t_n^2 arrow.r t_n = sqrt(frac(2 n L, a)) = t_1 sqrt(n) = 4 sqrt(n) thin ("s")$.
    - Thời gian 3 toa đầu đi qua: $t_3 = 4 sqrt(3) thin "s"$.
    - Thời gian 4 toa đầu đi qua: $t_4 = 4 sqrt(4) = 8 thin "s"$.
    Thời gian để riêng toa thứ 4 đi qua trước mặt người đó:
    $Delta t_4 = t_4 - t_3 = 8 - 4 sqrt(3) approx 8 - 4 dot "1,73205" = "1,0718" thin "s" approx "1,07" thin "s"$.
  ],
)

// Câu 4 - Trả lời ngắn
#vp-question(
  [Thả rơi tự do một hòn đá từ miệng một vực sâu thẳng đứng. Sau $"4,0" thin "s"$ kể từ lúc thả, người ta nghe thấy tiếng hòn đá chạm đáy vực vọng lên. Biết gia tốc trọng trường $g = 10 thin "m/s"^2$ và tốc độ truyền âm trong không khí là $v_("âm") = 340 thin "m/s"$. Tính độ sâu $h$ của vực (theo đơn vị mét $"m"$, làm tròn đến số nguyên).],
  type: "short",
  ans: "72",
  short-boxes: 2,
  sol: [
    Gọi $h$ là độ sâu của vực.
    - Thời gian hòn đá rơi tự do từ miệng vực xuống đáy: $t_1 = sqrt(frac(2 h, g)) = sqrt(frac(2 h, 10)) = sqrt(frac(h, 5))$.
    - Thời gian âm thanh truyền từ đáy vực ngược lên miệng: $t_2 = frac(h, v_("âm")) = frac(h, 340)$.
    Tổng thời gian từ khi thả đến khi nghe thấy tiếng vang:
    $t_1 + t_2 = 4 arrow.r sqrt(frac(h, 5)) + frac(h, 340) = 4$.
    Đặt $u = sqrt(h) > 0$, ta có phương trình:
    $frac{u^2}{340} + frac{u}{sqrt(5)} - 4 = 0 arrow.r u^2 + 68 sqrt(5) u - 1360 = 0$.
    Giải phương trình bậc hai nhận nghiệm dương:
    $u = -34 sqrt(5) + sqrt((34 sqrt(5))^2 + 1360) = -34 sqrt(5) + sqrt(7140) approx "8,4722"$.
    Độ sâu của vực:
    $h = u^2 = ("8,4722")^2 approx "71,78" thin "m"$.
    Làm tròn đến hàng đơn vị (số nguyên): $72 thin "m"$.
  ],
)
= PHẦN IV. CÂU TỰ LUẬN (2 CÂU - 1,0 ĐIỂM)
#sbt-essay-instructions(reset: true)[Thí sinh trình bày chi tiết các bước lập luận vật lý và tính toán.]

// Câu 1 - Tự luận
#vp-question(
  [Một ô tô đang chạy với tốc độ $v_0 = 12 thin "m/s"$ thì tăng tốc chuyển động thẳng nhanh dần đều. Sau khi đi được quãng đường $s_1 = 100 thin "m"$, tốc độ của xe tăng lên $v_1 = 20 thin "m/s"$.
    #parbreak() a) Tính gia tốc $a$ của ô tô.
    #parbreak() b) Tính quãng đường $s_2$ ô tô đi được trong $5 thin "s"$ kể từ lúc bắt đầu tăng tốc.
  ],
  type: "essay",
  lines: 6,
  sol: [
    a) Áp dụng công thức độc lập với thời gian cho đoạn tăng tốc đầu tiên:
    $v_1^2 - v_0^2 = 2 a s_1 arrow.r a = frac(v_1^2 - v_0^2, 2 s_1) = frac(20^2 - 12^2, 2 dot 100) = frac(400 - 144, 200) = "1,28" thin "m/s"^2$.

    b) Quãng đường ô tô đi được trong $t_2 = 5 thin "s"$ kể từ lúc bắt đầu tăng tốc:
    $s_2 = v_0 t_2 + frac{1}{2} a t_2^2 = 12 dot 5 + frac{1}{2} dot "1,28" dot 5^2 = 60 + "0,64" dot 25 = 60 + 16 = 76 thin "m"$.
  ],
)

// Câu 2 - Tự luận
#vp-question(
  [Hai điểm A và B cách nhau $120 thin "m"$ trên một đường thẳng. Cùng một lúc ($t = 0$), xe 1 xuất phát từ A chuyển động thẳng nhanh dần đều về B với vận tốc ban đầu bằng 0 và gia tốc $a_1 = 2 thin "m/s"^2$. Cùng lúc đó, xe 2 chuyển động thẳng đều từ B về A với tốc độ không đổi $v_2 = 10 thin "m/s"$.
    #parbreak() a) Viết phương trình độ dịch chuyển/tọa độ $x_1 (t)$ và $x_2 (t)$ của hai xe (chọn A làm gốc tọa độ, chiều dương từ A đến B).
    #parbreak() b) Xác định thời điểm $t$ và vị trí $x$ hai xe gặp nhau.
  ],
  type: "essay",
  lines: 6,
  sol: [
    Chọn trục tọa độ $O x$ trùng với đường thẳng quỹ đạo, gốc $O$ tại điểm A, chiều dương hướng từ A đến B. Gốc thời gian $t = 0$ lúc hai xe bắt đầu chuyển động.

    a) Phương trình tọa độ của hai xe:
    - Xe 1: $x_(01) = 0$, $v_(01) = 0$, gia tốc $a_1 = +2 thin "m/s"^2$:
      $x_1 (t) = x_(01) + v_(01) t + frac{1}{2} a_1 t^2 = t^2 thin ("m") quad (t >= 0)$.
    - Xe 2: $x_(02) = 120 thin "m"$, chuyển động ngược chiều dương với vận tốc $v_2 = -10 thin "m/s"$:
      $x_2 (t) = x_(02) + v_2 t = 120 - 10 t thin ("m") quad (0 <= t <= 12 thin "s")$.

    b) Hai xe gặp nhau khi có cùng tọa độ:
    $x_1 (t) = x_2 (t) arrow.r t^2 = 120 - 10 t arrow.r t^2 + 10 t - 120 = 0$.
    Giải phương trình bậc hai:
    $Delta' = 5^2 - 1 dot (-120) = 25 + 120 = 145 > 0$.
    Vì $t > 0$ nên thời điểm hai xe gặp nhau là:
    $t = -5 + sqrt(145) approx -5 + "12,04" = "7,04" thin "s"$.
    Vị trí hai xe gặp nhau cách gốc A:
    $x = x_1 ("7,04") = ("7,04")^2 approx "49,6" thin "m"$.
  ],
)

// =========================================================================
// ĐỀ SỐ 3
// =========================================================================

#de-kiem-tra(
  num: "3",
  title: "KIỂM TRA GIỮA HỌC KỲ I",
  subtitle: [Thời gian làm bài: 45 phút (Không kể thời gian phát đề)],
  label: <de-kt-03>,
)

= PHẦN I. CÂU TRẮC NGHIỆM 4 PHƯƠNG ÁN (12 CÂU - 3,0 ĐIỂM)
#sbt-instructions(reset: true)[Thí sinh chọn 01 phương án đúng nhất cho mỗi câu hỏi.]

// Câu 1
#vp-question(
  [Quy tắc an toàn nào sau đây là đúng khi sử dụng các thiết bị điện trong phòng thí nghiệm Vật lí?],
  type: "mcq",
  options: (
    [Tháo dây cắm điện bằng cách giật mạnh dây dẫn.],
    [Cắm thiết bị điện vào nguồn khi tay đang ướt.],
    [Tắt nguồn điện trước khi cắm hoặc tháo các dây nối mạch điện.],
    [Tự ý thay đổi thông số cầu chì bằng dây đồng dày.],
  ),
  ans: "C",
  sol: [Để đảm bảo an toàn điện và tránh bị điện giật hoặc chập cháy, luôn phải tắt nguồn điện trước khi tiến hành cắm, tháo lắp hoặc đấu nối các linh kiện trong mạch điện.],
)

// Câu 2
#vp-question(
  [Nguyên nhân chính dẫn đến sai số hệ thống trong phép đo các đại lượng vật lí là:],
  type: "mcq",
  options: (
    [Thao tác đo thiếu cẩn thận hoặc mắt nhìn lệch.],
    [Dụng cụ đo chưa được hiệu chỉnh chuẩn (ví dụ vạch số 0 bị lệch).],
    [Các yếu tố ngẫu nhiên từ môi trường như nhiệt độ, độ ẩm thay đổi.],
    [Do đọc kết quả vào các thời điểm khác nhau.],
  ),
  ans: "B",
  sol: [Sai số hệ thống xuất phát từ nguyên nhân có tính quy luật, lặp lại qua các lần đo, chủ yếu do dụng cụ đo chưa được hiệu chỉnh chính xác (như lệch điểm 0) hoặc do cấu tạo của dụng cụ đo.],
)

// Câu 3
#vp-question(
  [Vectơ vận tốc tức thời $bold(v)$ của một vật chuyển động sẽ thay đổi khi:],
  type: "mcq",
  options: (
    [Chỉ có độ lớn của vận tốc thay đổi.],
    [Chỉ có hướng chuyển động của vật thay đổi.],
    [Cả độ lớn và hướng của vận tốc đều thay đổi.],
    [Cả A, B và C đều đúng.],
  ),
  ans: "D",
  sol: [Vectơ vận tốc tức thời được xác định bởi cả hướng (phương, chiều) và độ lớn (tốc độ). Chỉ cần hướng thay đổi, hoặc độ lớn thay đổi, hoặc cả hai thay đổi thì vectơ vận tốc tức thời đều bị thay đổi.],
)

// Câu 4
#vp-question(
  [Một rô-bốt di chuyển trên mặt sàn nằm ngang: đầu tiên đi $8 thin "m"$ về phía Đông, sau đó rẽ trái đi $6 thin "m"$ về phía Bắc. Độ lớn độ dịch chuyển tổng hợp $abs(bold(d))$ của rô-bốt là:],
  type: "mcq",
  options: (
    [$14 thin "m"$.],
    [$2 thin "m"$.],
    [$10 thin "m"$.],
    [$48 thin "m"$.],
  ),
  ans: "C",
  sol: [
    Hai hướng Đông và Bắc vuông góc với nhau. Áp dụng định lí Pythagore:
    $d = sqrt(d_1^2 + d_2^2) = sqrt(8^2 + 6^2) = sqrt(64 + 36) = 10 thin "m"$.
  ],
)

// Câu 5
#vp-question(
  [Trên đồ thị độ dịch chuyển – thời gian ($d - t$), nếu đường biểu diễn là một đường thẳng dốc xuống từ trái sang phải (như hình bên), điều này chứng tỏ vật đang:
    #align(center, hinh-de3-mcq-05())
  ],
  type: "mcq",
  options: (
    [Chuyển động thẳng đều theo chiều dương.],
    [Chuyển động thẳng đều ngược chiều dương (theo chiều âm).],
    [Đứng yên tại vị trí gốc tọa độ.],
    [Chuyển động nhanh dần đều.],
  ),
  ans: "B",
  sol: [Đường biểu diễn thẳng nghĩa là vận tốc không đổi (chuyển động thẳng đều). Độ dốc nghiêng xuống từ trái sang phải ứng với $frac(Delta d, Delta t) < 0$, nên vật chuyển động thẳng đều ngược chiều dương (theo chiều âm).],
)

// Câu 6
#vp-question(
  [Chuyển động thẳng biến đổi đều là chuyển động thẳng có:],
  type: "mcq",
  options: (
    [Quãng đường đi được tăng đều theo thời gian.],
    [Vectơ gia tốc $bold(a)$ không đổi cả về độ lớn và hướng.],
    [Vận tốc biến thiên theo hàm bậc hai của thời gian.],
    [Gia tốc tăng đều theo thời gian.],
  ),
  ans: "B",
  sol: [Theo định nghĩa, chuyển động thẳng biến đổi đều là chuyển động thẳng có vectơ gia tốc không đổi theo thời gian ($bold(a) = "const"$), tức không đổi cả về hướng lẫn độ lớn.],
)

// Câu 7
#vp-question(
  [Chọn phát biểu đúng về mối quan hệ giữa vectơ gia tốc $bold(a)$ và vectơ vận tốc $bold(v)$ trong chuyển động thẳng nhanh dần đều:],
  type: "mcq",
  options: (
    [$bold(a)$ cùng chiều với $bold(v)$ (tích $a dot v > 0$).],
    [$bold(a)$ ngược chiều với $bold(v)$ (tích $a dot v < 0$).],
    [$a$ luôn mang giá trị âm.],
    [$bold(a)$ vuông góc với $bold(v)$.],
  ),
  ans: "A",
  sol: [Trong chuyển động thẳng nhanh dần đều, vectơ gia tốc luôn cùng chiều với vectơ vận tốc, do đó tích $a dot v > 0$.],
)

// Câu 8
#vp-question(
  [Một vật chuyển động thẳng với gia tốc $a$ không đổi. Nếu tại thời điểm $t = 0$ vật có vận tốc $v_0$ thì độ dịch chuyển $d$ của vật sau thời gian $t$ được tính bằng công thức:],
  type: "mcq",
  options: (
    [$d = v_0 t + 2 a t^2$.],
    [$d = v_0 t + frac{1}{2} a t^2$.],
    [$d = v_0 + frac{1}{2} a t$.],
    [$d = frac{1}{2} a t^2$.],
  ),
  ans: "B",
  sol: [Công thức tính độ dịch chuyển của chuyển động thẳng biến đổi đều là $d = v_0 t + frac{1}{2} a t^2$.],
)

// Câu 9
#vp-question(
  [Bỏ qua sức cản không khí, quãng đường rơi tự do $h$ của một vật từ trạng thái nghỉ tỉ lệ thuận với:],
  type: "mcq",
  options: (
    [Thời gian rơi $t$.],
    [Bình phương thời gian rơi $t^2$.],
    [Căn bậc hai của thời gian rơi $sqrt(t)$.],
    [Khối lượng $m$ của vật rơi.],
  ),
  ans: "B",
  sol: [Vật rơi tự do không vận tốc đầu: $h = frac{1}{2} g t^2$. Vì $g$ không đổi nên quãng đường rơi $h$ tỉ lệ thuận với bình phương thời gian rơi $t^2$.],
)

// Câu 10
#vp-question(
  [Thí nghiệm ống Newton rút hết không khí chứa một chiếc lông chim và một viên bi thép cho thấy:],
  type: "mcq",
  options: (
    [Viên bi thép rơi nhanh hơn chiếc lông chim.],
    [Chiếc lông chim rơi nhanh hơn viên bi thép.],
    [Cả hai vật rơi nhanh như nhau và chạm đáy cùng một lúc.],
    [Chiếc lông chim lơ lửng không rơi.],
  ),
  ans: "C",
  sol: [Khi đã hút hết không khí bên trong ống Newton, lực cản không khí bị triệt tiêu hoàn toàn. Cả hai vật chỉ chịu tác dụng của trọng lực nên rơi tự do với cùng gia tốc $g$, do đó rơi nhanh như nhau và chạm đáy cùng lúc.],
)

// Câu 11
#vp-question(
  [Một chiếc ô tô di chuyển trên đoạn đường thẳng AB. Trong nửa quãng đường đầu xe chạy với tốc độ $v_1 = 40 thin "km/h"$, trong nửa quãng đường còn lại xe chạy với tốc độ $v_2 = 60 thin "km/h"$. Tốc độ trung bình $v_("tb")$ của ô tô trên toàn bộ quãng đường AB là:],
  type: "mcq",
  options: (
    [$50 thin "km/h"$.],
    [$48 thin "km/h"$.],
    [$45 thin "km/h"$.],
    [$52 thin "km/h"$.],
  ),
  ans: "B",
  sol: [
    Gọi tổng chiều dài quãng đường là $s$.
    Thời gian đi nửa quãng đường đầu: $t_1 = frac(s / 2, v_1) = frac(s, 80)$.
    Thời gian đi nửa quãng đường sau: $t_2 = frac(s / 2, v_2) = frac(s, 120)$.
    Tốc độ trung bình trên toàn bộ quãng đường:
    $v_("tb") = frac(s, t_1 + t_2) = frac(s, frac(s, 80) + frac(s, 120)) = frac(2 v_1 v_2, v_1 + v_2) = frac(2 dot 40 dot 60, 40 + 60) = frac(4800, 100) = 48 thin "km/h"$.
  ],
)

// Câu 12
#vp-question(
  [Xe máy điện VinFast Feliz S đang chạy với tốc độ $10 thin "m/s"$ thì người lái xe nhấn ga tăng tốc thẳng nhanh dần đều. Sau khi đi được quãng đường $150 thin "m"$, tốc độ của xe đạt $20 thin "m/s"$. Gia tốc $a$ của xe máy là:],
  type: "mcq",
  options: (
    [$"1,0" thin "m/s"^2$.],
    [$"2,0" thin "m/s"^2$.],
    [$"0,5" thin "m/s"^2$.],
    [$"1,5" thin "m/s"^2$.],
  ),
  ans: "A",
  sol: [
    Áp dụng công thức độc lập với thời gian:
    $v^2 - v_0^2 = 2 a s arrow.r a = frac(v^2 - v_0^2, 2 s) = frac(20^2 - 10^2, 2 dot 150) = frac(300, 300) = 1 thin "m/s"^2$.
  ],
)
= PHẦN II. CÂU TRẮC NGHIỆM ĐÚNG/SAI (2 CÂU - 4,0 ĐIỂM)
#sbt-instructions(reset: true)[Thí sinh xét tính Đúng/Sai cho từng ý a), b), c), d) trong mỗi câu.]

// Câu 1 - Đúng/Sai
#vp-question(
  [Đồ thị vận tốc – thời gian ($v - t$) của một ô tô thử nghiệm gồm hai giai đoạn như hình vẽ (từ $0$ đến $5 thin "s"$ vận tốc tăng từ $0$ lên $+10 thin "m/s"$; từ $5 thin "s"$ đến $15 thin "s"$ vận tốc giảm từ $+10 thin "m/s"$ về $0$):
    #align(center, hinh-de3-tf-01())
  ],
  type: "tf",
  statements: (
    [Trong $5 thin "s"$ đầu tiên, ô tô chuyển động thẳng nhanh dần đều với gia tốc $a_1 = +"2,0" thin "m/s"^2$.],
    [Trong giai đoạn từ $5 thin "s"$ đến $15 thin "s"$, gia tốc của ô tô là $a_2 = -"1,0" thin "m/s"^2$.],
    [Tại thời điểm $t = 5 thin "s"$, ô tô đổi chiều chuyển động.],
    [Tổng quãng đường ô tô đi được trong toàn bộ khoảng thời gian $15 thin "s"$ bằng $75 thin "m"$.],
  ),
  ans-tf: ("Đ", "Đ", "S", "Đ"),
  sol: [
    - a) *Đúng:* Gia tốc giai đoạn 1: $a_1 = frac(10 - 0, 5 - 0) = +2 thin "m/s"^2$.
    - b) *Đúng:* Gia tốc giai đoạn 2: $a_2 = frac(0 - 10, 15 - 5) = frac(-10, 10) = -1 thin "m/s"^2$.
    - c) *Sai:* Vận tốc $v$ trong toàn bộ 15 giây luôn không âm ($v >= 0$), xe luôn chuyển động theo chiều dương. Tại $t = 5 thin "s"$ xe chuyển từ nhanh dần đều sang chậm dần đều chứ không đổi chiều chuyển động.
    - d) *Đúng:* Quãng đường đi được bằng diện tích hình giới hạn bởi đồ thị $v - t$ và trục thời gian (hình tam giác có đáy $15 thin "s"$ và chiều cao $10 thin "m/s"$):
      $s = frac{1}{2} dot 15 dot 10 = 75 thin "m"$.
  ],
)

// Câu 2 - Đúng/Sai
#vp-question(
  [Tại một vị trí trên Trái Đất có $g = 10 thin "m/s"^2$, từ độ cao $h = 80 thin "m"$ so với mặt đất, người ta thả rơi tự do vật 1 từ trạng thái nghỉ. Đúng $"1,0" thin "s"$ sau, người ta thả rơi tự do vật 2 từ cùng độ cao $h = 80 thin "m"$. Bỏ qua lực cản không khí.],
  type: "tf",
  statements: (
    [Thời gian vật 1 rơi chạm đất là $t_1 = "4,0" thin "s"$.],
    [Vận tốc chạm đất của vật 1 có độ lớn bằng $40 thin "m/s"$.],
    [Tại thời điểm $t = "2,0" thin "s"$ kể từ khi thả vật 1, khoảng cách thẳng đứng giữa hai vật là $15 thin "m"$.],
    [Khi vật 1 chạm đất, vật 2 đang ở độ cao cách mặt đất $25 thin "m"$.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [
    - a) *Đúng:* Thời gian vật 1 rơi chạm đất: $t_1 = sqrt(frac(2 h, g)) = sqrt(frac(2 dot 80, 10)) = 4 thin "s"$.
    - b) *Đúng:* Vận tốc chạm đất của vật 1: $v_1 = g t_1 = 10 dot 4 = 40 thin "m/s"$.
    - c) *Đúng:* Tại $t = 2 thin "s"$, vật 1 rơi được $s_1 = frac{1}{2} g t^2 = frac{1}{2} dot 10 dot 2^2 = 20 thin "m"$. Vật 2 mới rơi được $t_2 = 2 - 1 = 1 thin "s"$, quãng đường rơi: $s_2 = frac{1}{2} dot 10 dot 1^2 = 5 thin "m"$. Khoảng cách giữa hai vật: $Delta h = s_1 - s_2 = 20 - 5 = 15 thin "m"$.
    - d) *Sai:* Vật 1 chạm đất lúc $t = 4 thin "s"$. Lúc này vật 2 đã rơi được thời gian $t_2 = 4 - 1 = 3 thin "s"$, quãng đường rơi được của vật 2 là: $s_2 = frac{1}{2} dot 10 dot 3^2 = 45 thin "m"$. Do đó độ cao của vật 2 so với mặt đất là $y_2 = h - s_2 = 80 - 45 = 35 thin "m"$ (không phải $25 thin "m"$).
  ],
)
= PHẦN III. CÂU TRẢ LỜI NGẮN (4 CÂU - 2,0 ĐIỂM)
#sbt-instructions(reset: true)[Thí sinh tính toán và điền đáp số dạng số.]

// Câu 1 - Trả lời ngắn
#vp-question(
  [Học sinh đo gia tốc trọng trường bằng công thức gián tiếp $g = frac(2 h, t^2)$. Biết sai số tỉ đối của phép đo độ cao $delta h = "1,0"%$ và sai số tỉ đối của phép đo thời gian $delta t = "2,0"%$. Tính sai số tỉ đối $delta g$ của phép đo gia tốc trọng trường (theo đơn vị phần trăm $\%$).],
  type: "short",
  ans: "5",
  short-boxes: 2,
  sol: [
    Từ công thức $g = frac(2 h, t^2)$, sai số tỉ đối được xác định bởi:
    $delta g = delta h + 2 delta t = "1,0"% + 2 dot "2,0"% = "5,0"%$.
  ],
)

// Câu 2 - Trả lời ngắn
#vp-question(
  [Một người đi bộ di chuyển từ A đi $60 thin "m"$ về phía Đông, sau đó đi $80 thin "m"$ về phía Bắc, rồi tiếp tục đi $60 thin "m"$ về phía Tây. Tính độ lớn độ dịch chuyển tổng hợp $abs(bold(d))$ của người đó (theo đơn vị mét $"m"$).],
  type: "short",
  ans: "80",
  short-boxes: 2,
  sol: [
    Độ dịch chuyển theo phương Đông - Tây: $d_x = 60 - 60 = 0 thin "m"$.
    Độ dịch chuyển theo phương Bắc: $d_y = 80 thin "m"$.
    Độ lớn độ dịch chuyển tổng hợp: $d = sqrt(d_x^2 + d_y^2) = sqrt(0^2 + 80^2) = 80 thin "m"$.
  ],
)

// Câu 3 - Trả lời ngắn
#vp-question(
  [Một xe ô tô đang chạy với tốc độ $20 thin "m/s"$ thì hãm phanh chuyển động chậm dần đều với gia tốc $a = -"2,0" thin "m/s"^2$ cho đến khi dừng hẳn. Tính quãng đường xe đi được trong riêng giây cuối cùng trước khi dừng lại (theo đơn vị mét $"m"$).],
  type: "short",
  ans: "1",
  short-boxes: 2,
  sol: [
    Thời gian hãm phanh đến khi dừng hẳn ($v = 0$): $t = frac(0 - 20, -2) = 10 thin "s"$.
    Chuyển động chậm dần đều đến khi dừng hẳn có tính đối xứng thời gian với chuyển động nhanh dần đều không vận tốc đầu cùng độ lớn gia tốc $a = 2 thin "m/s"^2$.
    Quãng đường đi trong 1 giây cuối cùng:
    $Delta s = frac{1}{2} a dot 1^2 = frac{1}{2} dot 2 dot 1^2 = 1 thin "m"$.
  ],
)

// Câu 4 - Trả lời ngắn
#vp-question(
  [Thả rơi tự do vật 1 từ độ cao $h_1 = 45 thin "m"$ và vật 2 từ độ cao $h_2 = 80 thin "m"$ so với mặt đất tại nơi có $g = 10 thin "m/s"^2$. Tính khoảng thời gian chênh lệch $Delta t$ giữa thời điểm chạm đất của vật 2 và vật 1 (theo đơn vị giây $"s"$).],
  type: "short",
  ans: "1",
  short-boxes: 2,
  sol: [
    Thời gian rơi của vật 1: $t_1 = sqrt(frac(2 h_1, g)) = sqrt(frac(2 dot 45, 10)) = 3 thin "s"$.
    Thời gian rơi của vật 2: $t_2 = sqrt(frac(2 h_2, g)) = sqrt(frac(2 dot 80, 10)) = 4 thin "s"$.
    Khoảng thời gian chênh lệch: $Delta t = t_2 - t_1 = 4 - 3 = 1 thin "s"$.
  ],
)
= PHẦN IV. CÂU TỰ LUẬN (2 CÂU - 1,0 ĐIỂM)
#sbt-essay-instructions(reset: true)[Thí sinh trình bày chi tiết các bước lập luận vật lý và tính toán.]

// Câu 1 - Tự luận
#vp-question(
  [Một người đi xe máy điện VinFast Feliz S đang chạy thẳng đều với tốc độ $54 thin "km/h"$ thì bất ngờ phát hiện chướng ngại vật nằm phía trước cách xe $40 thin "m"$. Người đó hãm phanh ngay lập tức làm xe chuyển động chậm dần đều với gia tốc $a = -"3,0" thin "m/s"^2$.
    #parbreak() a) Xe máy điện có dừng lại an toàn trước chướng ngại vật hay không? Tính khoảng cách từ xe đến chướng ngại vật khi xe dừng hẳn.
    #parbreak() b) Tính thời gian hãm phanh từ lúc bắt đầu đạp phanh đến khi xe dừng hẳn.
  ],
  type: "essay",
  lines: 6,
  sol: [
    Đổi vận tốc ban đầu: $v_0 = 54 thin "km/h" = 15 thin "m/s"$. Khi dừng hẳn thì $v = 0$.

    a) Quãng đường hãm phanh đến khi xe dừng lại:
    $v^2 - v_0^2 = 2 a s arrow.r s = frac(v^2 - v_0^2, 2 a) = frac(0^2 - 15^2, 2 dot (-3)) = frac(-225, -6) = "37,5" thin "m"$.
    Vì quãng đường hãm phanh $s = "37,5" thin "m" < 40 thin "m"$ nên xe dừng lại an toàn trước chướng ngại vật (không xảy ra va chạm).
    Khoảng cách từ xe đến chướng ngại vật khi dừng hẳn:
    $Delta x = 40 - "37,5" = "2,5" thin "m"$.

    b) Thời gian từ khi hãm phanh đến khi dừng lại:
    $t = frac(v - v_0, a) = frac(0 - 15, -3) = 5 thin "s"$.
  ],
)

// Câu 2 - Tự luận
#vp-question(
  [Một xe tải đang chạy thẳng đều với tốc độ không đổi $v_2 = 12 thin "m/s"$ thì vượt qua một xe con VinFast VF8 đang đứng yên tại đèn đỏ. Đúng thời điểm xe tải vượt qua, đèn xanh bật sáng và xe con bắt đầu khởi hành chuyển động thẳng nhanh dần đều với gia tốc $a_1 = "2,0" thin "m/s"^2$ đuổi theo xe tải.
    #parbreak() a) Viết phương trình tọa độ $x_1 (t)$ và $x_2 (t)$ của hai xe (chọn gốc tọa độ tại vạch đèn đỏ, chiều dương là chiều chuyển động).
    #parbreak() b) Tìm khoảng cách lớn nhất $d_("max")$ giữa hai xe trước khi xe con đuổi kịp xe tải.
    #parbreak() c) Xác định thời điểm $t$ và vị trí $x$ mà xe con đuổi kịp xe tải.
  ],
  type: "essay",
  lines: 6,
  sol: [
    Chọn gốc tọa độ $O$ tại vị trí đèn đỏ, chiều dương là chiều chuyển động của hai xe. Gốc thời gian $t = 0$ lúc xe tải vượt qua xe con và xe con bắt đầu chuyển động.

    a) Phương trình tọa độ của hai xe:
    - Xe con: $x_(01) = 0$, $v_(01) = 0$, $a_1 = 2 thin "m/s"^2$:
      $x_1 (t) = frac{1}{2} a_1 t^2 = t^2 thin ("m") quad (t >= 0)$.
    - Xe tải: $x_(02) = 0$, $v_2 = 12 thin "m/s"$:
      $x_2 (t) = v_2 t = 12 t thin ("m") quad (t >= 0)$.

    b) Khoảng cách giữa hai xe:
    $d(t) = x_2 (t) - x_1 (t) = 12 t - t^2 thin ("m")$.
    Khoảng cách lớn nhất đạt được khi vận tốc hai xe bằng nhau: $v_1 (t) = v_2 arrow.r 2 t = 12 arrow.r t = 6 thin "s"$.
    $d_("max") = 12 dot 6 - 6^2 = 72 - 36 = 36 thin "m"$.

    c) Xe con đuổi kịp xe tải khi có cùng tọa độ ($x_1 = x_2$):
    $t^2 = 12 t arrow.r t (t - 12) = 0 arrow.r t = 12 thin "s"$ (do $t > 0$).
    Vị trí xe con đuổi kịp xe tải cách vị trí đèn đỏ:
    $x = 12^2 = 144 thin "m"$.
  ],
)

// =========================================================================
// ĐỀ SỐ 4
// =========================================================================

#de-kiem-tra(
  num: "4",
  title: "KIỂM TRA GIỮA HỌC KỲ I",
  subtitle: [Thời gian làm bài: 45 phút (Không kể thời gian phát đề)],
  label: <de-kt-04>,
)

= PHẦN I. CÂU TRẮC NGHIỆM 4 PHƯƠNG ÁN (12 CÂU - 3,0 ĐIỂM)
#sbt-instructions(reset: true)[Thí sinh chọn 01 phương án đúng nhất cho mỗi câu hỏi.]

// Câu 1
#vp-question(
  [Kí hiệu cảnh báo hình tam giác viền đen, nền vàng, bên trong có hình tia sét màu đen đại diện cho nguy hiểm nào?],
  type: "mcq",
  options: (
    [Nguy hiểm chất phóng xạ.],
    [Nguy hiểm về điện cao áp.],
    [Nguy hiểm chất độc hóa học.],
    [Nguy hiểm vật nóng, nhiệt độ cao.],
  ),
  ans: "B",
  sol: [Kí hiệu hình tam giác nền vàng có hình tia sét màu đen là biển cảnh báo nguy hiểm về điện cao áp (nguy cơ điện giật nguy hiểm tính mạng).],
)

// Câu 2
#vp-question(
  [Phép đo gián tiếp một đại lượng vật lí là phép đo:],
  type: "mcq",
  options: (
    [Đọc trực tiếp số chỉ trên dụng cụ đo.],
    [Được xác định thông qua công thức toán học nối các đại lượng đo trực tiếp.],
    [Dùng thước dây đo chiều dài trực tiếp.],
    [Dùng đồng hồ bấm giây đo thời gian trực tiếp.],
  ),
  ans: "B",
  sol: [Phép đo gián tiếp là phép đo giá trị của đại lượng cần đo thông qua công thức toán học liên hệ với các đại lượng đo trực tiếp khác (ví dụ tính vận tốc $v = frac(s, t)$ thông qua đo $s$ và đo $t$).],
)

// Câu 3
#vp-question(
  [Độ dịch chuyển của một vật bằng $0$ ($d = 0$) trong trường hợp nào sau đây?],
  type: "mcq",
  options: (
    [Vật chuyển động thẳng đều từ A đến B.],
    [Vật chuyển động đi theo một đường cong rồi quay trở lại đúng vị trí ban đầu.],
    [Vật rơi tự do từ trên cao xuống đất.],
    [Vật chuyển động chậm dần đều rồi dừng hẳn.],
  ),
  ans: "B",
  sol: [Độ dịch chuyển bằng 0 khi vị trí điểm cuối trùng với vị trí điểm đầu của chuyển động (quỹ đạo khép kín hoặc quay về điểm xuất phát).],
)

// Câu 4
#vp-question(
  [Một vật chuyển động trong mặt phẳng $O x y$: xuất phát từ vị trí $A(0; 0)$ đến vị trí $B(3 thin "m"; 4 thin "m")$ hết thời gian $2 thin "s"$. Độ lớn vận tốc trung bình $abs(overline(v))$ của vật là:],
  type: "mcq",
  options: (
    [$"3,5" thin "m/s"$.],
    [$"2,5" thin "m/s"$.],
    [$"1,5" thin "m/s"$.],
    [$"5,0" thin "m/s"$.],
  ),
  ans: "B",
  sol: [
    Độ lớn độ dịch chuyển của vật: $d = sqrt(3^2 + 4^2) = 5 thin "m"$.
    Độ lớn vận tốc trung bình: $abs(overline(v)) = frac(d, Delta t) = frac(5, 2) = "2,5" thin "m/s"$.
  ],
)

// Câu 5
#vp-question(
  [Đồ thị độ dịch chuyển – thời gian ($d - t$) của một xe ô tô gồm hai giai đoạn: đoạn 1 có độ dốc $k_1$, đoạn 2 có độ dốc $k_2 = 2 k_1$. Kết luận nào sau đây đúng về tốc độ của xe?],
  type: "mcq",
  options: (
    [Tốc độ giai đoạn 2 gấp 2 lần tốc độ giai đoạn 1.],
    [Tốc độ giai đoạn 1 gấp 2 lần tốc độ giai đoạn 2.],
    [Tốc độ hai giai đoạn bằng nhau.],
    [Tốc độ giai đoạn 2 bằng 0.],
  ),
  ans: "A",
  sol: [Độ dốc của đồ thị độ dịch chuyển – thời gian cho biết vận tốc của chuyển động: $v = k$. Vì $k_2 = 2 k_1$ nên tốc độ ở giai đoạn 2 gấp 2 lần tốc độ ở giai đoạn 1.],
)

// Câu 6
#vp-question(
  [Công thức tính vận tốc $v$ theo thời gian $t$ của chuyển động thẳng biến đổi đều là:],
  type: "mcq",
  options: (
    [$v = v_0 + a t$.],
    [$v = v_0 t + 1/2 a t^2$.],
    [$v = a dot t^2$.],
    [$v = v_0 - a t^2$.],
  ),
  ans: "A",
  sol: [Phương trình vận tốc theo thời gian của chuyển động thẳng biến đổi đều là $v = v_0 + a t$.],
)

// Câu 7
#vp-question(
  [Một vật chuyển động thẳng có phương trình độ dịch chuyển $d = -4 t + 2 t^2$ (với $d$ tính bằng mét, $t$ tính bằng giây). Phát biểu nào sau đây đúng về tính chất chuyển động của vật lúc $t = 0$?],
  type: "mcq",
  options: (
    [Chuyển động thẳng nhanh dần đều theo chiều dương.],
    [Chuyển động thẳng chậm dần đều ngược chiều dương (theo chiều âm).],
    [Chuyển động thẳng đều với vận tốc $v = 2 thin "m/s"$.],
    [Vật đang đứng yên tại gốc tọa độ.],
  ),
  ans: "B",
  sol: [
    So sánh với $d = v_0 t + frac{1}{2} a t^2$, ta có: $v_0 = -4 thin "m/s"$ và $frac{1}{2} a = 2 arrow.r a = +4 thin "m/s"^2$.
    Vì $v_0 < 0$ nên vật chuyển động ngược chiều dương. Tích $a dot v_0 = 4 dot (-4) = -16 < 0$ nên lúc đầu vật chuyển động thẳng chậm dần đều.
  ],
)

// Câu 8
#vp-question(
  [Quãng đường đi được trong giây thứ $n$ ($Delta s_n$) của một vật chuyển động thẳng nhanh dần đều không vận tốc đầu ($v_0 = 0$) tỉ lệ với:],
  type: "mcq",
  options: (
    [$n$.],
    [$n^2$.],
    [$(2 n - 1)$.],
    [$sqrt(n)$.],
  ),
  ans: "C",
  sol: [
    Quãng đường đi trong $n$ giây: $s_n = frac{1}{2} a n^2$.
    Quãng đường đi trong $(n - 1)$ giây: $s_(n-1) = frac{1}{2} a (n - 1)^2$.
    Quãng đường đi riêng trong giây thứ $n$:
    $Delta s_n = s_n - s_(n-1) = frac{1}{2} a [n^2 - (n-1)^2] = frac{1}{2} a (2 n - 1)$.
    Do đó $Delta s_n$ tỉ lệ thuận với $(2 n - 1)$.
  ],
)

// Câu 9
#vp-question(
  [So sánh gia tốc rơi tự do $g$ tại hai địa điểm khác nhau trên Trái Đất:],
  type: "mcq",
  options: (
    [Gia tốc $g$ ở Bắc Cực lớn hơn gia tốc $g$ ở Xích Đạo.],
    [Gia tốc $g$ ở Xích Đạo lớn hơn gia tốc $g$ ở Bắc Cực.],
    [Gia tốc $g$ tại mọi điểm trên bề mặt Trái Đất là hoàn toàn bằng nhau.],
    [Gia tốc $g$ tăng dần khi lên cao.],
  ),
  ans: "A",
  sol: [Do Trái Đất dẹt ở hai cực và phình ra ở xích đạo nên bán kính Trái Đất ở hai cực nhỏ hơn bán kính ở xích đạo. Do đó gia tốc trọng trường ở các cực ($g approx "9,83" thin "m/s"^2$) lớn hơn ở xích đạo ($g approx "9,78" thin "m/s"^2$).],
)

// Câu 10
#vp-question(
  [Một vật rơi tự do từ trạng thái nghỉ. Tỉ số quãng đường vật rơi được sau $1 thin "s"$, $2 thin "s"$, và $3 thin "s"$ kể từ lúc thả là:],
  type: "mcq",
  options: (
    [$1 : 2 : 3$.],
    [$1 : 3 : 5$.],
    [$1 : 4 : 9$.],
    [$1 : 8 : 27$.],
  ),
  ans: "C",
  sol: [
    Quãng đường rơi tự do: $h = frac{1}{2} g t^2$.
    Tỉ số quãng đường sau các khoảng thời gian:
    $h_1 : h_2 : h_3 = 1^2 : 2^2 : 3^2 = 1 : 4 : 9$.
  ],
)

// Câu 11
#vp-question(
  [Xe ô tô điện VinFast VF8 đang chạy với tốc độ $10 thin "m/s"$ thì đạp ga tăng tốc thẳng nhanh dần đều đạt $25 thin "m/s"$ trong thời gian $"5,0" thin "s"$. Gia tốc $a$ của xe là:],
  type: "mcq",
  options: (
    [$"3,0" thin "m/s"^2$.],
    [$"5,0" thin "m/s"^2$.],
    [$"7,0" thin "m/s"^2$.],
    [$"2,0" thin "m/s"^2$.],
  ),
  ans: "A",
  sol: [
    Gia tốc của ô tô điện:
    $a = frac(v - v_0, t) = frac(25 - 10, 5) = frac(15, 5) = 3 thin "m/s"^2$.
  ],
)

// Câu 12
#vp-question(
  [Từ mái nhà cao $h = 5 thin "m"$ so với mặt đất, các giọt nước mưa rơi tự do xuất phát nối tiếp nhau sau những khoảng thời gian bằng nhau $Delta t = "0,2" thin "s"$. Lấy $g = 10 thin "m/s"^2$. Đúng thời điểm giọt thứ nhất chạm đất, giọt thứ hai đang ở độ cao cách mái nhà một khoảng là:],
  type: "mcq",
  options: (
    [$"3,2" thin "m"$.],
    [$"1,8" thin "m"$.],
    [$"0,8" thin "m"$.],
    [$"4,2" thin "m"$.],
  ),
  ans: "A",
  sol: [
    Thời gian giọt thứ nhất rơi chạm đất:
    $t_1 = sqrt(frac(2 h, g)) = sqrt(frac(2 dot 5, 10)) = 1 thin "s"$.
    Khi giọt thứ nhất chạm đất, giọt thứ hai đã rơi được thời gian:
    $t_2 = t_1 - Delta t = 1 - "0,2" = "0,8" thin "s"$.
    Khoảng cách từ mái nhà đến giọt thứ hai:
    $h_2 = frac{1}{2} g t_2^2 = frac{1}{2} dot 10 dot "0,8"^2 = 5 dot "0,64" = "3,2" thin "m"$.
  ],
)
= PHẦN II. CÂU TRẮC NGHIỆM ĐÚNG/SAI (2 CÂU - 4,0 ĐIỂM)
#sbt-instructions(reset: true)[Thí sinh xét tính Đúng/Sai cho từng ý a), b), c), d) trong mỗi câu.]

// Câu 1 - Đúng/Sai
#vp-question(
  [Một xe buýt di chuyển giữa hai bến đỗ A và B cách nhau $300 thin "m"$ theo một đường thẳng gồm 3 giai đoạn như đồ thị $v - t$ hình bên (giai đoạn 1 tăng tốc với gia tốc $a_1 = +"2,0" thin "m/s"^2$ đạt $12 thin "m/s"$; giai đoạn 2 chạy đều với $12 thin "m/s"$ trong $20 thin "s"$; giai đoạn 3 hãm phanh dừng hẳn sau $"4,0" thin "s"$):
    #align(center, hinh-de4-tf-01())
  ],
  type: "tf",
  statements: (
    [Quãng đường xe buýt đi được trong giai đoạn 1 tăng tốc là $36 thin "m"$.],
    [Độ lớn gia tốc hãm phanh ở giai đoạn 3 là $a_3 = -"3,0" thin "m/s"^2$.],
    [Quãng đường xe buýt đi được trong giai đoạn 3 hãm phanh là $24 thin "m"$.],
    [Tổng thời gian xe buýt di chuyển từ bến A đến bến B là $30 thin "s"$.],
  ),
  ans-tf: ("Đ", "S", "Đ", "Đ"),
  sol: [
    - a) *Đúng:* Thời gian giai đoạn 1: $t_1 = frac(12 - 0, 2) = 6 thin "s"$. Quãng đường giai đoạn 1: $s_1 = frac{1}{2} a_1 t_1^2 = frac{1}{2} dot 2 dot 6^2 = 36 thin "m"$.
    - b) *Sai:* Gia tốc của xe buýt ở giai đoạn 3 là $a_3 = frac(0 - 12, 4) = -3 thin "m/s"^2$. Tuy nhiên đề bài ghi "độ lớn gia tốc là $-3,0 thin "m/s"^2$". Độ lớn là đại lượng không âm: $abs(a_3) = 3 thin "m/s"^2$.
    - c) *Đúng:* Quãng đường hãm phanh ở giai đoạn 3: $s_3 = frac(v_1 + 0, 2) dot t_3 = frac{12}{2} dot 4 = 24 thin "m"$.
    - d) *Đúng:* Tổng thời gian chuyển động: $T = t_1 + t_2 + t_3 = 6 + 20 + 4 = 30 thin "s"$. (Tổng quãng đường: $s = 36 + 12 dot 20 + 24 = 36 + 240 + 24 = 300 thin "m"$, khớp chính xác với đề).
  ],
)

// Câu 2 - Đúng/Sai
#vp-question(
  [Tại nơi có gia tốc trọng trường $g = 10 thin "m/s"^2$, từ độ cao $h = 45 thin "m"$ so với mặt đất, vật 1 được thả rơi tự do từ trạng thái nghỉ. Đúng $"1,0" thin "s"$ sau, vật 2 được ném thẳng đứng xuống dưới từ cùng độ cao $h = 45 thin "m"$ với tốc độ ban đầu $v_0 = "12,5" thin "m/s"$. Bỏ qua lực cản không khí.],
  type: "tf",
  statements: (
    [Thời gian từ lúc thả đến khi vật 1 rơi chạm đất là $t_1 = "3,0" thin "s"$.],
    [Phương trình quãng đường rơi $s_2 (t_2)$ của vật 2 theo thời gian bay $t_2$ kể từ lúc ném là $s_2 = "12,5" t_2 + 5 t_2^2$.],
    [Vật 2 rơi chạm đất sau khoảng thời gian $t_2 = "2,0" thin "s"$ kể từ lúc ném.],
    [Cả hai vật 1 và 2 chạm mặt đất hoàn toàn đồng thời tại cùng một thời điểm.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "Đ"),
  sol: [
    - a) *Đúng:* Thời gian rơi của vật 1: $t_1 = sqrt(frac(2 h, g)) = sqrt(frac(2 dot 45, 10)) = 3 thin "s"$.
    - b) *Đúng:* Quãng đường rơi của vật 2 ném thẳng đứng xuống: $s_2 = v_0 t_2 + frac{1}{2} g t_2^2 = "12,5" t_2 + 5 t_2^2$.
    - c) *Đúng:* Vật 2 chạm đất khi $s_2 = 45 thin "m" arrow.r 5 t_2^2 + "12,5" t_2 - 45 = 0 arrow.r 2 t_2^2 + 5 t_2 - 18 = 0 arrow.r (t_2 - 2)(2 t_2 + 9) = 0 arrow.r t_2 = 2 thin "s"$.
    - d) *Đúng:* Vật 1 chạm đất tại thời điểm $t = 3 thin "s"$. Vật 2 được ném lúc $t = 1 thin "s"$ và mất $2 thin "s"$ để chạm đất, tức cũng chạm đất tại thời điểm $t = 1 + 2 = 3 thin "s"$. Vậy hai vật chạm đất hoàn toàn đồng thời.
  ],
)
= PHẦN III. CÂU TRẢ LỜI NGẮN (4 CÂU - 2,0 ĐIỂM)
#sbt-instructions(reset: true)[Thí sinh tính toán và điền đáp số dạng số.]

// Câu 1 - Trả lời ngắn
#vp-question(
  [Trong thí nghiệm đo gia tốc rơi tự do, học sinh đo độ cao $h = ("1,250" plus.minus "0,005") thin "m"$ và thời gian rơi $t = ("0,500" plus.minus "0,010") thin "s"$. Tính sai số tỉ đối $delta g$ của phép đo gia tốc trọng trường $g = frac(2 h, t^2)$ (theo đơn vị phần trăm $\%$).],
  type: "short",
  ans: "4,4",
  short-boxes: 3,
  sol: [
    Sai số tỉ đối của phép đo độ cao: $delta h = frac{"0,005", "1,250"} dot 100% = "0,4"%$.
    Sai số tỉ đối của phép đo thời gian: $delta t = frac{"0,010", "0,500"} dot 100% = "2,0"%$.
    Sai số tỉ đối của phép đo gia tốc rơi tự do:
    $delta g = delta h + 2 delta t = "0,4"% + 2 dot "2,0"% = "4,4"%$.
  ],
)

// Câu 2 - Trả lời ngắn
#vp-question(
  [Một rô-bốt thăm dò chuyển động dọc theo cạnh tam giác vuông ABC (vuông tại B): từ A đến B ($A B = "3,0" thin "m"$) hết $"2,0" thin "s"$, sau đó từ B đến C ($B C = "4,0" thin "m"$) hết $"2,0" thin "s"$ nữa. Tính độ lớn vận tốc trung bình $abs(overline(v))$ của rô-bốt trên toàn bộ hành trình AC (theo đơn vị $"m/s"$).],
  type: "short",
  ans: "1,25",
  short-boxes: 4,
  sol: [
    Độ lớn độ dịch chuyển tổng hợp: $d_(A C) = sqrt(A B^2 + B C^2) = sqrt(3^2 + 4^2) = 5 thin "m"$.
    Tổng thời gian chuyển động: $Delta t = 2 + 2 = 4 thin "s"$.
    Độ lớn vận tốc trung bình: $abs(overline(v)) = frac(d_(A C), Delta t) = frac(5, 4) = "1,25" thin "m/s"$.
  ],
)

// Câu 3 - Trả lời ngắn
#vp-question(
  [Một xe ô tô đang chạy với tốc độ $20 thin "m/s"$ thì hãm phanh chuyển động chậm dần đều dừng hẳn trên quãng đường $S = 100 thin "m"$. Tính tốc độ của ô tô (theo đơn vị $"m/s"$) sau khi nó đi được một nửa quãng đường hãm phanh ($s = 50 thin "m"$) (làm tròn đến 2 chữ số thập phân).],
  type: "short",
  ans: "14,14",
  short-boxes: 5,
  sol: [
    Gia tốc hãm phanh: $v^2 - v_0^2 = 2 a S arrow.r a = frac(0^2 - 20^2, 2 dot 100) = -"2,0" thin "m/s"^2$.
    Tốc độ của xe sau khi đi được nửa quãng đường $s = 50 thin "m"$:
    $v_1^2 - v_0^2 = 2 a s arrow.r v_1^2 = 20^2 + 2 dot (-2) dot 50 = 400 - 200 = 200$.
    $arrow.r v_1 = sqrt(200) = 10 sqrt(2) approx "14,14" thin "m/s"$.
  ],
)

// Câu 4 - Trả lời ngắn
#vp-question(
  [Từ đỉnh một tòa nhà cao $H = 40 thin "m"$ so với mặt đất, vật A được thả rơi tự do thẳng đứng. Cùng một lúc, từ mặt đất ngay bên dưới, vật B được ném thẳng đứng lên trên với tốc độ ban đầu $v_0$. Lấy $g = 10 thin "m/s"^2$. Tìm tốc độ ban đầu $v_0$ (theo đơn vị $"m/s"$) để hai vật A và B gặp nhau ở độ cao chính giữa tòa nhà ($h = 20 thin "m"$).],
  type: "short",
  ans: "20",
  short-boxes: 2,
  sol: [
    Chọn trục $O y$ thẳng đứng hướng lên, gốc $O$ tại mặt đất.
    Phương trình của vật A: $y_A (t) = 40 - 5 t^2 thin ("m")$.
    Phương trình của vật B: $y_B (t) = v_0 t - 5 t^2 thin ("m")$.
    Hai vật gặp nhau ở chính giữa tòa nhà tại độ cao $y = 20 thin "m"$:
    $y_A = 20 arrow.r 40 - 5 t^2 = 20 arrow.r 5 t^2 = 20 arrow.r t = 2 thin "s"$.
    Tại $t = 2 thin "s"$, vật B cũng ở độ cao $20 thin "m"$:
    $y_B (2) = v_0 dot 2 - 5 dot 2^2 = 20 arrow.r 2 v_0 - 20 = 20 arrow.r 2 v_0 = 40 arrow.r v_0 = 20 thin "m/s"$.
  ],
)
= PHẦN IV. CÂU TỰ LUẬN (2 CÂU - 1,0 ĐIỂM)
#sbt-essay-instructions(reset: true)[Thí sinh trình bày chi tiết các bước lập luận vật lý và tính toán.]

// Câu 1 - Tự luận
#vp-question(
  [Một ô tô điện VinFast VF8 bắt đầu chuyển động thẳng nhanh dần đều từ tốc độ $v_0 = 10 thin "m/s"$ đến $v_1 = 20 thin "m/s"$ trên quãng đường $s_1 = 150 thin "m"$. Sau đó, xe hãm phanh chuyển động chậm dần đều đi thêm quãng đường $s_2 = 100 thin "m"$ nữa thì dừng hẳn.
    #parbreak() a) Tính gia tốc tăng tốc $a_1$ và gia tốc hãm phanh $a_2$ của ô tô.
    #parbreak() b) Tính tổng thời gian chuyển động $T$ của ô tô trên cả hai giai đoạn.
  ],
  type: "essay",
  lines: 6,
  sol: [
    a) Gia tốc trong từng giai đoạn:
    - Giai đoạn 1 (tăng tốc):
      $v_1^2 - v_0^2 = 2 a_1 s_1 arrow.r a_1 = frac(v_1^2 - v_0^2, 2 s_1) = frac(20^2 - 10^2, 2 dot 150) = frac(300, 300) = 1 thin "m/s"^2$.
    - Giai đoạn 2 (hãm phanh đến khi dừng hẳn $v_2 = 0$):
      $v_2^2 - v_1^2 = 2 a_2 s_2 arrow.r a_2 = frac(v_2^2 - v_1^2, 2 s_2) = frac(0^2 - 20^2, 2 dot 100) = frac(-400, 200) = -2 thin "m/s"^2$.

    b) Thời gian chuyển động trong từng giai đoạn:
    - Giai đoạn 1: $t_1 = frac(v_1 - v_0, a_1) = frac(20 - 10, 1) = 10 thin "s"$.
    - Giai đoạn 2: $t_2 = frac(v_2 - v_1, a_2) = frac(0 - 20, -2) = 10 thin "s"$.
    Tổng thời gian chuyển động của ô tô:
    $T = t_1 + t_2 = 10 + 10 = 20 thin "s"$.
  ],
)

// Câu 2 - Tự luận
#vp-question(
  [Một xe máy xuất phát từ trạng thái nghỉ tại gốc tọa độ $O$ ($t = 0$), chuyển động thẳng nhanh dần đều với gia tốc $a_1 = "2,0" thin "m/s"^2$. Cùng lúc đó, một xe tải nằm phía trước gốc $O$ một khoảng $D = 80 thin "m"$ đang chạy thẳng đều cùng chiều với tốc độ không đổi $v_2 = 12 thin "m/s"$.
    #parbreak() a) Viết phương trình tọa độ $x_1 (t)$ và $x_2 (t)$ của hai xe.
    #parbreak() b) Tìm khoảng cách lớn nhất $d_("max")$ giữa hai xe trước khi xe máy vượt qua xe tải.
    #parbreak() c) Xác định thời điểm $t$ và vị trí $x$ mà xe máy đuổi kịp xe tải.
  ],
  type: "essay",
  lines: 6,
  sol: [
    Chọn trục tọa độ $O x$ trùng đường chuyển động, gốc $O$ tại vị trí xuất phát của xe máy, chiều dương là chiều chuyển động. Gốc thời gian $t = 0$ lúc xe máy bắt đầu khởi hành.

    a) Phương trình tọa độ của hai xe:
    - Xe máy: $x_(01) = 0$, $v_(01) = 0$, gia tốc $a_1 = 2 thin "m/s"^2$:
      $x_1 (t) = frac{1}{2} a_1 t^2 = t^2 thin ("m") quad (t >= 0)$.
    - Xe tải: $x_(02) = 80 thin "m"$, vận tốc $v_2 = 12 thin "m/s"$:
      $x_2 (t) = 80 + 12 t thin ("m") quad (t >= 0)$.

    b) Khoảng cách giữa hai xe khi xe tải ở phía trước xe máy:
    $d(t) = x_2 (t) - x_1 (t) = 80 + 12 t - t^2 thin ("m")$.
    Khoảng cách này đạt giá trị lớn nhất khi hai xe có cùng vận tốc:
    $v_1 (t) = v_2 arrow.r 2 t = 12 arrow.r t = 6 thin "s"$.
    Khoảng cách lớn nhất:
    $d_("max") = 80 + 12 dot 6 - 6^2 = 80 + 72 - 36 = 116 thin "m"$.

    c) Xe máy đuổi kịp xe tải khi có cùng tọa độ ($x_1 = x_2$):
    $t^2 = 80 + 12 t arrow.r t^2 - 12 t - 80 = 0$.
    Giải phương trình bậc hai:
    $Delta' = (-6)^2 - 1 dot (-80) = 36 + 80 = 116 > 0$.
    Thời điểm hai xe gặp nhau ($t > 0$):
    $t = 6 + sqrt(116) approx 6 + "10,77" = "16,77" thin "s"$.
    Vị trí xe máy đuổi kịp xe tải cách gốc tọa độ:
    $x = t^2 = ("16,77")^2 approx "281,2" thin "m"$.
  ],
)

// =========================================================================
// ĐỀ SỐ 5
// =========================================================================

#de-kiem-tra(
  num: "5",
  title: "KIỂM TRA GIỮA HỌC KỲ I",
  subtitle: [Thời gian làm bài: 45 phút (Không kể thời gian phát đề)],
  label: <de-kt-05>,
)

= PHẦN I. CÂU TRẮC NGHIỆM 4 PHƯƠNG ÁN (12 CÂU - 3,0 ĐIỂM)
#sbt-instructions(reset: true)[Thí sinh chọn 01 phương án đúng nhất cho mỗi câu hỏi.]

// Câu 1
#vp-question(
  [Biển báo có dạng hình tròn, viền đỏ, nền trắng, bên trong có hình vẽ hoặc chữ số màu đen thuộc nhóm biển báo nào trong phòng thí nghiệm?],
  type: "mcq",
  options: (
    [Biển báo cấm.],
    [Biển báo cảnh báo nguy hiểm.],
    [Biển báo lệnh thực hiện.],
    [Biển báo chỉ dẫn an toàn.],
  ),
  ans: "A",
  sol: [Biển báo cấm trong phòng thí nghiệm có quy chuẩn hình tròn, viền đỏ, nền trắng với hình vẽ hoặc ký hiệu cấm màu đen (thường có gạch chéo đỏ).],
)

// Câu 2
#vp-question(
  [Để hạn chế sai số ngẫu nhiên trong phép đo các đại lượng vật lí, người ta thường áp dụng biện pháp nào sau đây?],
  type: "mcq",
  options: (
    [Dùng dụng cụ đo hiện đại hơn.],
    [Thực hiện phép đo nhiều lần và tính giá trị trung bình.],
    [Thay đổi người đo ở mỗi lần đo.],
    [Bỏ qua các giá trị đo lẻ.],
  ),
  ans: "B",
  sol: [Sai số ngẫu nhiên là sai số xuất phát từ các yếu tố ngẫu nhiên tác động. Biện pháp hiệu quả nhất để hạn chế sai số ngẫu nhiên là thực hiện phép đo lặp lại nhiều lần và lấy giá trị trung bình cộng.],
)

// Câu 3
#vp-question(
  [Phát biểu nào sau đây đúng khi nói về quãng đường đi được $s$ của một vật chuyển động?],
  type: "mcq",
  options: (
    [Quãng đường là đại lượng vectơ có chiều trùng với chiều chuyển động.],
    [Quãng đường là đại lượng vô hướng luôn dương hoặc bằng 0.],
    [Quãng đường luôn có độ lớn bằng độ dịch chuyển trong mọi trường hợp.],
    [Quãng đường có thể nhận giá trị âm khi vật chuyển động theo chiều âm.],
  ),
  ans: "B",
  sol: [Quãng đường là chiều dài quỹ đạo mà vật đã đi qua, luôn là đại lượng vô hướng không âm ($s >= 0$).],
)

// Câu 4
#vp-question(
  [Một ô tô di chuyển trên đường thẳng. Trong nửa thời gian đầu xe chạy với tốc độ $v_1 = 60 thin "km/h"$, trong nửa thời gian sau xe chạy với tốc độ $v_2 = 40 thin "km/h"$. Tốc độ trung bình $v_("tb")$ của ô tô trong toàn bộ thời gian di chuyển là:],
  type: "mcq",
  options: (
    [$50 thin "km/h"$.],
    [$48 thin "km/h"$.],
    [$52 thin "km/h"$.],
    [$45 thin "km/h"$.],
  ),
  ans: "A",
  sol: [
    Gọi $t$ là tổng thời gian chuyển động. Mỗi nửa thời gian là $t/2$.
    - Quãng đường đi trong nửa thời gian đầu: $s_1 = v_1 dot frac(t, 2)$.
    - Quãng đường đi trong nửa thời gian sau: $s_2 = v_2 dot frac(t, 2)$.
    Tốc độ trung bình trên toàn bộ thời gian:
    $v_("tb") = frac(s_1 + s_2, t) = frac(v_1 + v_2, 2) = frac(60 + 40, 2) = 50 thin "km/h"$.
  ],
)

// Câu 5
#vp-question(
  [Trên đồ thị độ dịch chuyển – thời gian ($d - t$) của hai vật chuyển động thẳng, điểm cắt nhau giữa hai đường biểu diễn cho ta biết:],
  type: "mcq",
  options: (
    [Hai vật có cùng gia tốc tại thời điểm đó.],
    [Hai vật có cùng vận tốc tại thời điểm đó.],
    [Hai vật gặp nhau tại thời điểm đó.],
    [Hai vật bắt đầu xuất phát cùng một lúc.],
  ),
  ans: "C",
  sol: [Giao điểm của hai đồ thị $d - t$ có cùng hoành độ thời gian $t$ và cùng tung độ độ dịch chuyển $d$, nghĩa là tại thời điểm đó hai vật có cùng tọa độ vị trí (hai vật gặp nhau).],
)

// Câu 6
#vp-question(
  [Gia tốc tức thời là gia tốc của vật:],
  type: "mcq",
  options: (
    [Tính trên toàn bộ quãng đường di chuyển.],
    [Tại một thời điểm xác định trên quỹ đạo.],
    [Được tính bằng trung bình cộng của vận tốc đầu và vận tốc cuối.],
    [Luôn có giá trị không đổi bằng gia tốc trọng trường.],
  ),
  ans: "B",
  sol: [Gia tốc tức thời là gia tốc của vật tại một thời điểm cụ thể hoặc tại một vị trí xác định trên quỹ đạo chuyển động.],
)

// Câu 7
#vp-question(
  [Ô tô đang chạy với tốc độ $20 thin "m/s"$ thì hãm phanh chuyển động thẳng chậm dần đều. Sau $5 thin "s"$, tốc độ của xe giảm xuống còn $10 thin "m/s"$. Gia tốc $a$ của ô tô là:],
  type: "mcq",
  options: (
    [$+"2,0" thin "m/s"^2$.],
    [-$"2,0" thin "m/s"^2$.],
    [-$"4,0" thin "m/s"^2$.],
    [$+"4,0" thin "m/s"^2$.],
  ),
  ans: "B",
  sol: [
    Gia tốc của ô tô:
    $a = frac(v - v_0, Delta t) = frac(10 - 20, 5) = frac(-10, 5) = -2 thin "m/s"^2$.
  ],
)

// Câu 8
#vp-question(
  [Trong chuyển động thẳng chậm dần đều với gia tốc $a < 0$, công thức tính quãng đường $s$ hãm phanh đến khi dừng hẳn ($v = 0$) từ tốc độ ban đầu $v_0$ là:],
  type: "mcq",
  options: (
    [$s = frac(v_0^2, 2 a)$.],
    [$s = -frac(v_0^2, 2 a)$.],
    [$s = frac(v_0^2, a)$.],
    [$s = -frac(v_0, 2 a)$.],
  ),
  ans: "B",
  sol: [Từ công thức độc lập với thời gian: $v^2 - v_0^2 = 2 a s$. Khi dừng hẳn $v = 0 arrow.r -v_0^2 = 2 a s arrow.r s = -frac(v_0^2, 2 a)$ (do $a < 0$ nên $s > 0$).],
)

// Câu 9
#vp-question(
  [Sự rơi tự do là sự rơi của một vật:],
  type: "mcq",
  options: (
    [Trong không khí không chịu lực cản.],
    [Chỉ dưới tác dụng của trọng lực.],
    [Dưới tác dụng của trọng lực và lực nâng của không khí.],
    [Có vận tốc ban đầu khác 0 theo phương thẳng đứng.],
  ),
  ans: "B",
  sol: [Định nghĩa: Sự rơi tự do là sự rơi của các vật chỉ chịu tác dụng duy nhất của trọng lực (hoặc bỏ qua lực cản không khí).],
)

// Câu 10
#vp-question(
  [Thả rơi tự do hai viên bi nhỏ từ các độ cao $h_1$ và $h_2 = 4 h_1$ so với mặt đất tại cùng một vị trí. Tỉ số vận tốc chạm đất $v_1 \/ v_2$ của hai viên bi là:],
  type: "mcq",
  options: (
    [$1 \/ 2$.],
    [$1 \/ 4$.],
    [$2$.],
    [$4$.],
  ),
  ans: "A",
  sol: [
    Vận tốc chạm đất của vật rơi tự do: $v = sqrt(2 g h)$.
    Tỉ số vận tốc:
    $frac(v_1, v_2) = sqrt(frac(h_1, h_2)) = sqrt(frac(1, 4)) = frac(1, 2)$.
  ],
)

// Câu 11
#vp-question(
  [Trên mặt phẳng tọa độ $O x y$, một rô-bốt thăm dò xuất phát từ vị trí $A(1 thin "m"; 2 thin "m")$ di chuyển thẳng đến vị trí $B(4 thin "m"; 6 thin "m")$ hết khoảng thời gian $t = "1,0" thin "s"$. Độ lớn vận tốc trung bình $abs(overline(v))$ của rô-bốt là:],
  type: "mcq",
  options: (
    [$"7,0" thin "m/s"$.],
    [$"5,0" thin "m/s"$.],
    [$"3,5" thin "m/s"$.],
    [$"4,0" thin "m/s"$.],
  ),
  ans: "B",
  sol: [
    Vectơ độ dịch chuyển $arrow(A B) = (4 - 1; 6 - 2) = (3; 4)$.
    Độ lớn độ dịch chuyển:
    $abs(bold(d)) = sqrt(3^2 + 4^2) = 5 thin "m"$.
    Độ lớn vận tốc trung bình:
    $abs(overline(v)) = frac(abs(bold(d)), t) = frac(5, 1) = 5 thin "m/s"$.
  ],
)

// Câu 12
#vp-question(
  [Một tàu hỏa đang chạy với tốc độ $72 thin "km/h"$ ($20 thin "m/s"$) thì hãm phanh chuyển động thẳng chậm dần đều. Sau khi đi được quãng đường $150 thin "m"$, tốc độ của tàu giảm xuống còn $36 thin "km/h"$ ($10 thin "m/s"$). Gia tốc hãm phanh $a$ của tàu hỏa là:],
  type: "mcq",
  options: (
    [-$"1,0" thin "m/s"^2$.],
    [-$"2,0" thin "m/s"^2$.],
    [-$"0,5" thin "m/s"^2$.],
    [$+"1,0" thin "m/s"^2$.],
  ),
  ans: "A",
  sol: [
    Áp dụng công thức độc lập với thời gian:
    $v^2 - v_0^2 = 2 a s arrow.r a = frac(v^2 - v_0^2, 2 s) = frac(10^2 - 20^2, 2 dot 150) = frac(100 - 400, 300) = -1 thin "m/s"^2$.
  ],
)
= PHẦN II. CÂU TRẮC NGHIỆM ĐÚNG/SAI (2 CÂU - 4,0 ĐIỂM)
#sbt-instructions(reset: true)[Thí sinh xét tính Đúng/Sai cho từng ý a), b), c), d) trong mỗi câu.]

// Câu 1 - Đúng/Sai
#vp-question(
  [Đồ thị vận tốc – thời gian ($v - t$) của một xe ô tô điện VinFast VF9 thử nghiệm chuyển động thẳng theo chiều dương gồm 3 giai đoạn như hình bên (giai đoạn 1 tăng tốc đều từ $0$ lên $20 thin "m/s"$; giai đoạn 2 chạy đều với $20 thin "m/s"$ trong $15 thin "s"$; giai đoạn 3 hãm phanh dừng hẳn sau $5 thin "s"$):
    #align(center, hinh-de5-tf-01())
  ],
  type: "tf",
  statements: (
    [Gia tốc của ô tô trong giai đoạn 1 là $a_1 = +"2,0" thin "m/s"^2$.],
    [Gia tốc của ô tô trong giai đoạn 3 hãm phanh là $a_3 = -"4,0" thin "m/s"^2$.],
    [Tổng độ dịch chuyển của ô tô trong cả 3 giai đoạn ($30 thin "s"$) bằng $400 thin "m"$.],
    [Vận tốc trung bình của ô tô trong toàn bộ khoảng thời gian $30 thin "s"$ di chuyển là $15 thin "m/s"$.],
  ),
  ans-tf: ("Đ", "Đ", "S", "Đ"),
  sol: [
    - a) *Đúng:* Gia tốc ở giai đoạn 1: $a_1 = frac(20 - 0, 10 - 0) = +2 thin "m/s"^2$.
    - b) *Đúng:* Gia tốc ở giai đoạn 3: $a_3 = frac(0 - 20, 30 - 25) = frac(-20, 5) = -4 thin "m/s"^2$.
    - c) *Sai:* Tổng độ dịch chuyển bằng diện tích hình thang giới hạn bởi đồ thị $v - t$ và trục thời gian:
      Đáy lớn $T = 30 thin "s"$, đáy nhỏ $Delta t_2 = 25 - 10 = 15 thin "s"$, chiều cao $v = 20 thin "m/s"$:
      $d = frac(30 + 15, 2) dot 20 = 45 dot 10 = 450 thin "m"$ (không phải $400 thin "m"$).
    - d) *Đúng:* Vận tốc trung bình trong cả 30 s: $v_("tb") = frac(d, T) = frac(450, 30) = 15 thin "m/s"$.
  ],
)

// Câu 2 - Đúng/Sai
#vp-question(
  [Tại nơi có gia tốc trọng trường $g = 10 thin "m/s"^2$, từ đỉnh vách đá cao $h = 20 thin "m"$ so với mặt đất, viên bi A được thả rơi tự do từ trạng thái nghỉ. Cùng một thời điểm ($t = 0$), từ mặt đất ngay bên dưới, viên bi B được ném thẳng đứng lên trên với tốc độ ban đầu $v_0 = 20 thin "m/s"$. Bỏ qua lực cản không khí.],
  type: "tf",
  statements: (
    [Thời gian viên bi A rơi từ đỉnh vách đá chạm mặt đất là $t_A = "2,0" thin "s"$.],
    [Vận tốc của viên bi A ngay trước khi chạm đất có độ lớn bằng $20 thin "m/s"$.],
    [Hai viên bi A và B gặp nhau trong không trung sau thời gian $t = "1,0" thin "s"$ kể từ lúc thả/ném.],
    [Vị trí hai viên bi A và B gặp nhau nằm ở độ cao cách mặt đất $10 thin "m"$.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [
    Chọn trục tọa độ thẳng đứng hướng lên, gốc tại mặt đất:
    - a) *Đúng:* Thời gian bi A rơi chạm đất: $t_A = sqrt(frac(2 h, g)) = sqrt(frac(2 dot 20, 10)) = 2 thin "s"$.
    - b) *Đúng:* Vận tốc bi A chạm đất: $v_A = g t_A = 10 dot 2 = 20 thin "m/s"$.
    - c) *Đúng:* Phương trình tọa độ của hai viên bi:
      $y_A (t) = 20 - 1/2 g t^2 = 20 - 5 t^2 thin ("m")$; $y_B (t) = v_0 t - 1/2 g t^2 = 20 t - 5 t^2 thin ("m")$.
      Hai bi gặp nhau khi $y_A = y_B arrow.r 20 - 5 t^2 = 20 t - 5 t^2 arrow.r 20 t = 20 arrow.r t = 1 thin "s"$.
    - d) *Sai:* Vị trí gặp nhau cách mặt đất: $y = 20 dot 1 - 5 dot 1^2 = 15 thin "m"$ (không phải $10 thin "m"$).
  ],
)
= PHẦN III. CÂU TRẢ LỜI NGẮN (4 CÂU - 2,0 ĐIỂM)
#sbt-instructions(reset: true)[Thí sinh tính toán và điền đáp số dạng số.]

// Câu 1 - Trả lời ngắn
#vp-question(
  [Dùng thước kẹp đo chiều dài một thanh kim loại thu được kết quả $L = ("1,500" plus.minus "0,003") thin "m"$. Tính sai số tỉ đối $delta L$ của phép đo chiều dài này (theo đơn vị phần trăm $\%$).],
  type: "short",
  ans: "0,2",
  short-boxes: 3,
  sol: [
    Sai số tỉ đối của phép đo chiều dài:
    $delta L = frac(Delta L, overline(L)) dot 100% = frac("0,003", "1,500") dot 100% = "0,2"%$.
  ],
)

// Câu 2 - Trả lời ngắn
#vp-question(
  [Một ô tô di chuyển quanh một bờ hồ hình tròn bán kính $R = 100 thin "m"$. Xe chạy hết nửa vòng tròn trong khoảng thời gian $t = 20 thin "s"$. Tính độ lớn vận tốc trung bình $abs(overline(v))$ của ô tô trong nửa vòng tròn đó (theo đơn vị $"m/s"$).],
  type: "short",
  ans: "10",
  short-boxes: 2,
  sol: [
    Độ dịch chuyển của xe sau khi đi nửa vòng tròn chính bằng đường kính của đường tròn:
    $d = 2 R = 2 dot 100 = 200 thin "m"$.
    Độ lớn vận tốc trung bình:
    $abs(overline(v)) = frac(d, t) = frac(200, 20) = 10 thin "m/s"$.
  ],
)

// Câu 3 - Trả lời ngắn
#vp-question(
  [Một xe ô tô đang chuyển động thẳng chậm dần đều cho đến khi dừng hẳn. Xe đi được quãng đường $24 thin "m"$ trong giây đầu tiên hãm phanh và đi được $8 thin "m"$ trong riêng giây cuối cùng trước khi dừng hẳn. Tính độ lớn gia tốc hãm $abs(a)$ của ô tô (theo đơn vị $"m/s"^2$).],
  type: "short",
  ans: "16",
  short-boxes: 2,
  sol: [
    Chuyển động chậm dần đều đến khi dừng hẳn ($v = 0$) với gia tốc có độ lớn $a$.
    Quãng đường đi được trong 1 giây cuối cùng trước khi dừng hẳn bằng quãng đường vật xuất phát từ nghỉ tăng tốc với gia tốc $a$ trong 1 giây:
    $s_("cuối") = 1/2 a dot 1^2 = 8 thin "m" arrow.r a = 16 thin "m/s"^2$.
    (Kiểm tra lại: $v_0 = a t_("dừng")$; giây đầu tiên đi được $s_1 = v_0 dot 1 - 1/2 a dot 1^2 = 24 arrow.r v_0 - 8 = 24 arrow.r v_0 = 32 thin "m/s"$. Khi đó thời gian hãm phanh là $t = 32 / 16 = 2 thin "s"$, khớp hoàn toàn với đề bài).
  ],
)

// Câu 4 - Trả lời ngắn
#vp-question(
  [Thả rơi tự do một vật nhỏ từ độ cao $h$ so với mặt đất tại nơi có $g = 10 thin "m/s"^2$. Biết rằng trong riêng $1 thin "s"$ cuối cùng trước khi chạm đất, vật rơi được quãng đường bằng $3/4$ tổng độ cao $h$ ban đầu. Tính độ cao $h$ (theo đơn vị mét $"m"$).],
  type: "short",
  ans: "20",
  short-boxes: 2,
  sol: [
    Gọi $t$ là tổng thời gian rơi tự do từ độ cao $h$: $h = 1/2 g t^2$.
    Quãng đường vật rơi trong $t - 1$ giây đầu tiên: $s_(t-1) = 1/2 g (t - 1)^2$.
    Quãng đường rơi trong 1 giây cuối cùng:
    $Delta s = h - s_(t-1) = 3/4 h arrow.r s_(t-1) = 1/4 h$.
    Do đó:
    $frac(1/2 g (t - 1)^2, 1/2 g t^2) = 1/4 arrow.r frac(t - 1, t) = 1/2 arrow.r 2 t - 2 = t arrow.r t = 2 thin "s"$.
    Độ cao thả vật:
    $h = 1/2 g t^2 = 1/2 dot 10 dot 2^2 = 20 thin "m"$.
  ],
)
= PHẦN IV. CÂU TỰ LUẬN (2 CÂU - 1,0 ĐIỂM)
#sbt-essay-instructions(reset: true)[Thí sinh trình bày chi tiết các bước lập luận vật lý và tính toán.]

// Câu 1 - Tự luận
#vp-question(
  [Một xe lửa đang chạy thẳng đều với tốc độ $54 thin "km/h"$ thì người lái xe hãm phanh chuyển động chậm dần đều với gia tốc $a = -"0,5" thin "m/s"^2$.
    #parbreak() a) Tính thời gian $t$ và quãng đường $s$ tàu đi được từ lúc bắt đầu hãm phanh đến khi dừng hẳn.
    #parbreak() b) Tính quãng đường $s_(10)$ tàu hỏa đi được trong $10 thin "s"$ đầu tiên kể từ lúc bắt đầu hãm phanh.
  ],
  type: "essay",
  lines: 6,
  sol: [
    Đổi vận tốc ban đầu của xe lửa: $v_0 = 54 thin "km/h" = 15 thin "m/s"$. Gia tốc $a = -"0,5" thin "m/s"^2$.

    a) Khi xe lửa dừng hẳn thì $v = 0$.
    Thời gian từ lúc hãm phanh đến khi dừng hẳn:
    $t = frac(v - v_0, a) = frac(0 - 15, -"0,5") = 30 thin "s"$.
    Quãng đường tàu đi được đến khi dừng hẳn:
    $s = frac(v^2 - v_0^2, 2 a) = frac(0 - 15^2, 2 dot (-"0,5")) = frac(-225, -1) = 225 thin "m"$.

    b) Quãng đường tàu đi được trong $t_1 = 10 thin "s"$ đầu tiên:
    $s_(10) = v_0 t_1 + 1/2 a t_1^2 = 15 dot 10 + 1/2 dot (-"0,5") dot 10^2 = 150 - 25 = 125 thin "m"$.
  ],
)

// Câu 2 - Tự luận
#vp-question(
  [Hai xe ô tô A và B cùng khởi hành một lúc ($t = 0$) từ hai vị trí cách nhau $D = 100 thin "m"$ trên một đường thẳng. Xe A xuất phát từ trạng thái nghỉ tăng tốc thẳng nhanh dần đều với gia tốc $a_1 = "2,0" thin "m/s"^2$ đuổi theo xe B. Xe B cũng xuất phát từ trạng thái nghỉ tăng tốc thẳng nhanh dần đều cùng chiều với gia tốc $a_2 = "1,0" thin "m/s"^2$ (chạy ra xa xe A).
    #parbreak() a) Viết phương trình tọa độ $x_A (t)$ và $x_B (t)$ của hai xe (chọn gốc tọa độ tại vị trí xuất phát của xe A, chiều dương là chiều chuyển động).
    #parbreak() b) Xác định thời điểm $t$ và vị trí $x$ mà xe A đuổi kịp xe B.
  ],
  type: "essay",
  lines: 6,
  sol: [
    Chọn trục tọa độ $O x$ trùng đường thẳng chuyển động, gốc $O$ tại vị trí xuất phát của xe A, chiều dương là chiều chuyển động từ A sang B. Gốc thời gian $t = 0$ lúc hai xe bắt đầu khởi hành.

    a) Phương trình tọa độ của hai xe ($v_(0 A) = 0$, $v_(0 B) = 0$):
    - Xe A: $x_(0 A) = 0$, gia tốc $a_1 = 2 thin "m/s"^2$:
      $x_A (t) = 1/2 a_1 t^2 = t^2 thin ("m") quad (t >= 0)$.
    - Xe B: $x_(0 B) = 100 thin "m"$, gia tốc $a_2 = 1 thin "m/s"^2$:
      $x_B (t) = 100 + 1/2 a_2 t^2 = 100 + "0,5" t^2 thin ("m") quad (t >= 0)$.

    b) Xe A đuổi kịp xe B khi chúng có cùng tọa độ ($x_A = x_B$):
    $t^2 = 100 + "0,5" t^2 arrow.r "0,5" t^2 = 100 arrow.r t^2 = 200$.
    Thời điểm xe A đuổi kịp xe B ($t > 0$):
    $t = sqrt(200) = 10 sqrt(2) approx "14,14" thin "s"$.
    Vị trí hai xe gặp nhau cách vị trí xuất phát của xe A:
    $x = t^2 = 200 thin "m"$.
  ],
)

// =========================================================================
// ĐỀ SỐ 6
// =========================================================================

#de-kiem-tra(
  num: "6",
  title: "KIỂM TRA GIỮA HỌC KỲ I",
  subtitle: [Thời gian làm bài: 45 phút (Không kể thời gian phát đề)],
  label: <de-kt-06>,
)

= PHẦN I. CÂU TRẮC NGHIỆM 4 PHƯƠNG ÁN (12 CÂU - 3,0 ĐIỂM)
#sbt-instructions(reset: true)[Thí sinh chọn 01 phương án đúng nhất cho mỗi câu hỏi.]

// Câu 1
#vp-question(
  [Biển báo có hình tròn, nền xanh lam, bên trong có hình vẽ màu trắng thuộc nhóm biển báo nào trong phòng thí nghiệm?],
  type: "mcq",
  options: (
    [Biển báo cấm.],
    [Biển báo cảnh báo nguy hiểm.],
    [Biển báo lệnh thực hiện.],
    [Biển báo chỉ dẫn khu vực an toàn.],
  ),
  ans: "C",
  sol: [Biển báo lệnh thực hiện (bắt buộc thực hiện thao tác an toàn như đeo kính, găng tay, khẩu trang) có dạng hình tròn, nền màu xanh lam và hình vẽ màu trắng.],
)

// Câu 2
#vp-question(
  [Để giảm thiểu sai số ngẫu nhiên do người đo gây ra trong các thí nghiệm Vật lí, biện pháp hiệu quả nhất là:],
  type: "mcq",
  options: (
    [Sử dụng thước đo có giới hạn đo lớn hơn.],
    [Giảm bớt số lần đo để tránh gây mệt mỏi.],
    [Đo lặp lại nhiều lần trong cùng điều kiện và tính giá trị trung bình.],
    [Làm tròn số liệu đo ngay từ lần đo đầu tiên.],
  ),
  ans: "C",
  sol: [Đo lặp lại nhiều lần trong cùng điều kiện thí nghiệm và tính giá trị trung bình cộng là phương pháp chuẩn để hạn chế tối đa sai số ngẫu nhiên.],
)

// Câu 3
#vp-question(
  [Độ dịch chuyển $bold(d)$ của một vật chuyển động:],
  type: "mcq",
  options: (
    [Luôn luôn dương trong mọi trường hợp.],
    [Có thể nhận giá trị dương, âm hoặc bằng 0 tùy thuộc vào hệ tọa độ đã chọn.],
    [Luôn luôn lớn hơn quãng đường đi được $s$.],
    [Không phụ thuộc vào vị trí đầu và vị trí cuối của vật.],
  ),
  ans: "B",
  sol: [Độ dịch chuyển là một đại lượng vectơ nối vị trí đầu với vị trí cuối. Giá trị đại số của hình chiếu độ dịch chuyển có thể dương, âm hoặc bằng 0 tùy theo chiều dương của hệ tọa độ.],
)

// Câu 4
#vp-question(
  [Một người bước đi trên thang máy cuộn đang di chuyển lên trên. Tốc độ của thang máy so với đất là $"1,0" thin "m/s"$, tốc độ của người đi cùng chiều so với thang máy là $"0,5" thin "m/s"$. Tốc độ của người đó so với mặt đất là:],
  type: "mcq",
  options: (
    [$"0,5" thin "m/s"$.],
    [$"1,5" thin "m/s"$.],
    [$"1,0" thin "m/s"$.],
    [$"2,0" thin "m/s"$.],
  ),
  ans: "B",
  sol: [
    Áp dụng công thức cộng vận tốc khi hai chuyển động cùng chiều:
    $v_("người/đất") = v_("người/thang") + v_("thang/đất") = "0,5" + "1,0" = "1,5" thin "m/s"$.
  ],
)

// Câu 5
#vp-question(
  [Đồ thị độ dịch chuyển – thời gian ($d - t$) của một vật chuyển động thẳng là một đường parabol mở bề lõm hướng lên trên. Điều này chứng tỏ vật đang:],
  type: "mcq",
  options: (
    [Chuyển động thẳng đều.],
    [Chuyển động thẳng nhanh dần đều theo chiều dương.],
    [Chuyển động thẳng chậm dần đều.],
    [Đứng yên.],
  ),
  ans: "B",
  sol: [Phương trình độ dịch chuyển $d = v_0 t + 1/2 a t^2$. Đồ thị $d - t$ có dạng parabol mở bề lõm lên trên tương ứng với hệ số gia tốc $a > 0$ và cùng hướng với vận tốc ban đầu dương nên đây là chuyển động thẳng nhanh dần đều theo chiều dương.],
)

// Câu 6
#vp-question(
  [Công thức định nghĩa gia tốc trung bình $bold(a)_("tb")$ trong khoảng thời gian $Delta t$ là:],
  type: "mcq",
  options: (
    [$bold(a)_("tb") = frac(Delta bold(v), Delta t)$.],
    [$bold(a)_("tb") = frac(Delta bold(d), Delta t)$.],
    [$bold(a)_("tb") = frac(bold(v) + bold(v)_0, 2)$.],
    [$bold(a)_("tb") = Delta bold(v) dot Delta t$.],
  ),
  ans: "A",
  sol: [Gia tốc trung bình là đại lượng vectơ đặc trưng cho sự biến thiên của vận tốc theo thời gian: $bold(a)_("tb") = frac(Delta bold(v), Delta t)$.],
)

// Câu 7
#vp-question(
  [Vectơ gia tốc $bold(a)$ của chuyển động thẳng chậm dần đều luôn:],
  type: "mcq",
  options: (
    [Cùng chiều với vectơ vận tốc $bold(v)$.],
    [Ngược chiều với vectơ vận tốc $bold(v)$.],
    [Có độ lớn tăng đều theo thời gian.],
    [Vuông góc với vectơ vận tốc $bold(v)$.],
  ),
  ans: "B",
  sol: [Trong chuyển động thẳng chậm dần đều, gia tốc luôn ngược hướng với vận tốc (tích vô hướng $bold(a) dot bold(v) < 0$).],
)

// Câu 8
#vp-question(
  [Một vật chuyển động thẳng có phương trình vận tốc $v = 5 - 2 t$ (với $v$ tính bằng $"m/s"$, $t$ tính bằng $"s"$). Phát biểu nào sau đây đúng về tính chất chuyển động của vật lúc $t = 0$?],
  type: "mcq",
  options: (
    [Chuyển động thẳng nhanh dần đều theo chiều dương.],
    [Chuyển động thẳng chậm dần đều theo chiều dương.],
    [Chuyển động thẳng đều với vận tốc $5 thin "m/s"$.],
    [Chuyển động thẳng chậm dần đều ngược chiều dương.],
  ),
  ans: "B",
  sol: [
    Tại $t = 0$, vận tốc $v_0 = +5 thin "m/s" > 0$ (vật chuyển động theo chiều dương). Gia tốc $a = -2 thin "m/s"^2$.
    Vì $a dot v_0 = (-2) dot 5 = -10 < 0$ nên vật chuyển động thẳng chậm dần đều theo chiều dương.
  ],
)

// Câu 9
#vp-question(
  [Yếu tố nào sau đây quyết định sự rơi nhanh hay chậm của các vật trong không khí thực tế?],
  type: "mcq",
  options: (
    [Chỉ do khối lượng của vật quyết định.],
    [Lực cản của không khí tác dụng lên vật so với trọng lượng của nó.],
    [Thể tích của vật rơi.],
    [Gia tốc trọng trường tại nơi thả.],
  ),
  ans: "B",
  sol: [Trong không khí thực tế, sự rơi nhanh hay chậm của các vật phụ thuộc vào độ lớn của lực cản không khí so với trọng lượng của vật đó.],
)

// Câu 10
#vp-question(
  [Thời gian rơi tự do từ trạng thái nghỉ của một vật từ độ cao $h$ tại nơi có gia tốc trọng trường $g$ là $t = sqrt(frac(2 h, g))$. Nếu tăng độ cao rơi lên $4 thin "lần"$ thì thời gian rơi chạm đất sẽ:],
  type: "mcq",
  options: (
    [Tăng lên 2 lần.],
    [Tăng lên 4 lần.],
    [Giảm đi 2 lần.],
    [Không thay đổi.],
  ),
  ans: "A",
  sol: [Vì $t = sqrt(frac(2 h, g))$ nên $t$ tỉ lệ với $sqrt(h)$. Khi độ cao $h$ tăng 4 lần thì thời gian rơi tăng $sqrt(4) = 2$ lần.],
)

// Câu 11
#vp-question(
  [Một ca-nô chạy trên dòng sông thẳng dài $60 thin "km"$. Khi chạy xuôi dòng từ A đến B hết $2 thin "giờ"$, khi chạy ngược dòng từ B về A hết $3 thin "giờ"$. Tốc độ của ca-nô so với nước $v_c$ và tốc độ dòng nước so với bờ $v_n$ lần lượt là:],
  type: "mcq",
  options: (
    [$v_c = 25 thin "km/h"; v_n = 5 thin "km/h"$.],
    [$v_c = 30 thin "km/h"; v_n = 10 thin "km/h"$.],
    [$v_c = 20 thin "km/h"; v_n = 5 thin "km/h"$.],
    [$v_c = 25 thin "km/h"; v_n = 10 thin "km/h"$.],
  ),
  ans: "A",
  sol: [
    - Tốc độ xuôi dòng: $v_x = v_c + v_n = frac(60, 2) = 30 thin "km/h"$.
    - Tốc độ ngược dòng: $v_("ngược") = v_c - v_n = frac(60, 3) = 20 thin "km/h"$.
    Giải hệ phương trình:
    $v_c = frac(30 + 20, 2) = 25 thin "km/h"$; $v_n = frac(30 - 20, 2) = 5 thin "km/h"$.
  ],
)

// Câu 12
#vp-question(
  [Một đoàn tàu hỏa đang chạy với tốc độ $36 thin "km/h"$ ($10 thin "m/s"$) thì hãm phanh chuyển động thẳng chậm dần đều với gia tốc $a = -"0,5" thin "m/s"^2$. Tốc độ của tàu sau khi đi được quãng đường $36 thin "m"$ kể từ lúc hãm phanh là:],
  type: "mcq",
  options: (
    [$"8,0" thin "m/s"$.],
    [$"6,0" thin "m/s"$.],
    [$"4,0" thin "m/s"$.],
    [$"5,0" thin "m/s"$.],
  ),
  ans: "A",
  sol: [
    Áp dụng công thức độc lập với thời gian:
    $v^2 - v_0^2 = 2 a s arrow.r v = sqrt(v_0^2 + 2 a s) = sqrt(10^2 + 2 dot (-"0,5") dot 36) = sqrt(100 - 36) = sqrt(64) = 8 thin "m/s"$.
  ],
)
= PHẦN II. CÂU TRẮC NGHIỆM ĐÚNG/SAI (2 CÂU - 4,0 ĐIỂM)
#sbt-instructions(reset: true)[Thí sinh xét tính Đúng/Sai cho từng ý a), b), c), d) trong mỗi câu.]

// Câu 1 - Đúng/Sai
#vp-question(
  [Một rô-bốt tự hành di chuyển dọc theo trục $O x$ có đồ thị độ dịch chuyển – thời gian ($x - t$) gồm 3 giai đoạn như hình vẽ (từ $0$ đến $2 thin "s"$ đi từ $0$ đến $+6 thin "m"$; từ $2 thin "s"$ đến $5 thin "s"$ đứng yên tại $+6 thin "m"$; từ $5 thin "s"$ đến $8 thin "s"$ đi từ $+6 thin "m"$ về $-3 thin "m"$):
    #align(center, hinh-de6-tf-01())
  ],
  type: "tf",
  statements: (
    [Trong $2 thin "s"$ đầu tiên, rô-bốt chuyển động thẳng đều theo chiều dương với vận tốc $v_1 = +"3,0" thin "m/s"$.],
    [Trong khoảng thời gian từ $2 thin "s"$ đến $5 thin "s"$, rô-bốt đứng yên không di chuyển.],
    [Trong giai đoạn từ $5 thin "s"$ đến $8 thin "s"$, vận tốc của rô-bốt là $v_3 = -"3,0" thin "m/s"$.],
    [Tổng độ dịch chuyển của rô-bốt trong cả $8 thin "s"$ là $+3,0 thin "m"$, và tổng quãng đường đi được là $"15,0" thin "m"$.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [
    - a) *Đúng:* Giai đoạn 1 ($0 arrow.r 2 thin "s"$): $v_1 = frac(6 - 0, 2 - 0) = +3 thin "m/s"$.
    - b) *Đúng:* Giai đoạn 2 ($2 arrow.r 5 thin "s"$): đồ thị là đoạn thẳng nằm ngang song song trục thời gian, tọa độ không đổi $x = 6 thin "m"$ nên rô-bốt đứng yên ($v_2 = 0$).
    - c) *Đúng:* Giai đoạn 3 ($5 arrow.r 8 thin "s"$): $v_3 = frac(-3 - 6, 8 - 5) = frac(-9, 3) = -3 thin "m/s"$.
    - d) *Sai:*
      - Độ dịch chuyển tổng hợp: $d = x_("cuối") - x_("đầu") = -3 - 0 = -3 thin "m"$ (không phải $+3 thin "m"$).
      - Tổng quãng đường đi được: $s = abs(6 - 0) + 0 + abs(-3 - 6) = 6 + 9 = 15 thin "m"$.
  ],
)

// Câu 2 - Đúng/Sai
#vp-question(
  [Tại nơi có $g = 10 thin "m/s"^2$, các giọt nước mưa rơi tự do xuất phát từ mái nhà cao $h = 20 thin "m"$ so với mặt đất từ trạng thái nghỉ. Bỏ qua sức cản của không khí.],
  type: "tf",
  statements: (
    [Thời gian rơi chạm đất của giọt nước thứ nhất là $t_1 = "2,0" thin "s"$.],
    [Vận tốc của giọt nước thứ nhất khi chạm đất có độ lớn là $v = 20 thin "m/s"$.],
    [Giọt nước thứ hai bắt đầu rơi đúng thời điểm giọt thứ nhất chạm đất. Khi giọt thứ hai rơi được nửa thời gian ($"1,0" thin "s"$), quãng đường giọt thứ nhất đã rơi gấp 4 lần quãng đường giọt thứ hai rơi.],
    [Trong quá trình rơi tự do của hai giọt nước nối tiếp nhau, khoảng cách thẳng đứng giữa hai giọt nước luôn giữ không đổi theo thời gian.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [
    - a) *Đúng:* Thời gian rơi chạm đất của giọt 1: $t_1 = sqrt(frac(2 h, g)) = sqrt(frac(2 dot 20, 10)) = 2 thin "s"$.
    - b) *Đúng:* Vận tốc chạm đất của giọt 1: $v = g t_1 = 10 dot 2 = 20 thin "m/s"$.
    - c) *Đúng:* Quãng đường giọt 1 đã rơi chạm đất là $s_1 = 20 thin "m"$. Khi giọt 2 rơi được nửa thời gian ($t_2 = 1 thin "s"$), quãng đường giọt 2 rơi là $s_2 = 1/2 g t_2^2 = 1/2 dot 10 dot 1^2 = 5 thin "m"$. Tỉ số: $frac(s_1, s_2) = frac(20, 5) = 4$ lần.
    - d) *Sai:* Hai giọt rơi cách nhau một khoảng thời gian $Delta t$. Khoảng cách thẳng đứng giữa hai giọt tại thời điểm $t$:
      $Delta y = 1/2 g t^2 - 1/2 g (t - Delta t)^2 = g Delta t dot t - 1/2 g (Delta t)^2$. Khoảng cách này tăng tuyến tính theo thời gian $t$, không giữ không đổi.
  ],
)
= PHẦN III. CÂU TRẢ LỜI NGẮN (4 CÂU - 2,0 ĐIỂM)
#sbt-instructions(reset: true)[Thí sinh tính toán và điền đáp số dạng số.]

// Câu 1 - Trả lời ngắn
#vp-question(
  [Đo bán kính một hình tròn thu được kết quả $R = ("5,0" plus.minus "0,1") thin "cm"$. Biết công thức diện tích hình tròn là $S = pi R^2$. Tính sai số tỉ đối $delta S$ của phép đo diện tích hình tròn này (theo đơn vị phần trăm $\%$).],
  type: "short",
  ans: "4",
  short-boxes: 2,
  sol: [
    Sai số tỉ đối của bán kính: $delta R = frac(Delta R, overline(R)) dot 100% = frac("0,1", "5,0") dot 100% = 2%$.
    Vì $S = pi R^2$ nên:
    $delta S = 2 dot delta R = 2 dot 2% = 4%$.
  ],
)

// Câu 2 - Trả lời ngắn
#vp-question(
  [Một xe đạp di chuyển đều hết một vòng tròn bán kính $R = 50 thin "m"$ trong thời gian $t = 10 thin "s"$. Lấy $pi = "3,1416"$. Tính tốc độ trung bình $v_("tb")$ của xe đạp (theo đơn vị $"m/s"$, làm tròn đến 1 chữ số thập phân).],
  type: "short",
  ans: "31,4",
  short-boxes: 4,
  sol: [
    Quãng đường đi được trong 1 vòng tròn:
    $s = 2 pi R = 2 dot "3,1416" dot 50 = "314,16" thin "m"$.
    Tốc độ trung bình:
    $v_("tb") = frac(s, t) = frac("314,16", 10) = "31,416" thin "m/s" approx "31,4" thin "m/s"$.
  ],
)

// Câu 3 - Trả lời ngắn
#vp-question(
  [Một tàu hỏa bắt đầu xuất phát tăng tốc thẳng nhanh dần đều từ trạng thái nghỉ với gia tốc $a = "0,5" thin "m/s"^2$. Tính quãng đường $Delta s_5$ tàu hỏa đi được trong riêng giây thứ 5 (theo đơn vị mét $"m"$).],
  type: "short",
  ans: "2,25",
  short-boxes: 4,
  sol: [
    Tàu xuất phát từ trạng thái nghỉ ($v_0 = 0$).
    - Quãng đường đi trong 5 giây đầu: $s_5 = 1/2 a dot 5^2 = 1/2 dot "0,5" dot 25 = "6,25" thin "m"$.
    - Quãng đường đi trong 4 giây đầu: $s_4 = 1/2 a dot 4^2 = 1/2 dot "0,5" dot 16 = "4,0" thin "m"$.
    Quãng đường đi riêng trong giây thứ 5:
    $Delta s_5 = s_5 - s_4 = "6,25" - "4,0" = "2,25" thin "m"$.
  ],
)

// Câu 4 - Trả lời ngắn
#vp-question(
  [Thả rơi tự do một vật nhỏ từ đỉnh một tháp cao tại nơi có gia tốc trọng trường $g = 10 thin "m/s"^2$. Biết rằng trong riêng $1 thin "s"$ cuối cùng trước khi chạm đất, vật rơi được quãng đường $35 thin "m"$. Tính độ cao $H$ ban đầu của tháp (theo đơn vị mét $"m"$).],
  type: "short",
  ans: "80",
  short-boxes: 2,
  sol: [
    Gọi $t$ là tổng thời gian rơi tự do từ đỉnh tháp:
    Quãng đường rơi trong 1 giây cuối cùng:
    $Delta s = 1/2 g t^2 - 1/2 g (t - 1)^2 = g t - 1/2 g = 10 t - 5$.
    Theo bài ra: $10 t - 5 = 35 arrow.r 10 t = 40 arrow.r t = 4 thin "s"$.
    Độ cao của tháp:
    $H = 1/2 g t^2 = 1/2 dot 10 dot 4^2 = 5 dot 16 = 80 thin "m"$.
  ],
)
= PHẦN IV. CÂU TỰ LUẬN (2 CÂU - 1,0 ĐIỂM)
#sbt-essay-instructions(reset: true)[Thí sinh trình bày chi tiết các bước lập luận vật lý và tính toán.]

// Câu 1 - Tự luận
#vp-question(
  [Một người đi xe máy điện VinFast Feliz S bắt đầu tăng tốc thẳng nhanh dần đều từ tốc độ $v_0 = 12 thin "m/s"$ với gia tốc $a_1 = "1,5" thin "m/s"^2$ trong thời gian $t_1 = "8,0" thin "s"$. Sau đó, xe duy trì chuyển động thẳng đều trong $t_2 = "10,0" thin "s"$, rồi hãm phanh chậm dần đều với gia tốc $a_3 = -"3,0" thin "m/s"^2$ cho đến khi dừng hẳn.
    #parbreak() a) Tính tốc độ cực đại $v_("max")$ xe đạt được và quãng đường $s_1$ xe đi được trong giai đoạn tăng tốc.
    #parbreak() b) Tính tổng quãng đường $S$ xe máy điện đi được trong toàn bộ hành trình.
  ],
  type: "essay",
  lines: 6,
  sol: [
    a) Tốc độ cực đại xe đạt được ở cuối giai đoạn tăng tốc:
    $v_("max") = v_0 + a_1 t_1 = 12 + "1,5" dot 8 = 12 + 12 = 24 thin "m/s"$.
    Quãng đường xe đi được trong giai đoạn tăng tốc:
    $s_1 = v_0 t_1 + 1/2 a_1 t_1^2 = 12 dot 8 + 1/2 dot "1,5" dot 8^2 = 96 + 48 = 144 thin "m"$.

    b) Quãng đường xe đi được trong các giai đoạn tiếp theo:
    - Giai đoạn 2 (thẳng đều với $v_("max") = 24 thin "m/s"$ trong $t_2 = 10 thin "s"$):
      $s_2 = v_("max") dot t_2 = 24 dot 10 = 240 thin "m"$.
    - Giai đoạn 3 (chậm dần đều đến khi dừng hẳn $v = 0$ với $a_3 = -3 thin "m/s"^2$):
      $s_3 = frac(0 - v_("max")^2, 2 a_3) = frac(-24^2, 2 dot (-3)) = frac(-576, -6) = 96 thin "m"$.
    Tổng quãng đường xe đi được trong toàn bộ hành trình:
    $S = s_1 + s_2 + s_3 = 144 + 240 + 96 = 480 thin "m"$.
  ],
)

// Câu 2 - Tự luận
#vp-question(
  [Từ độ cao $H = 100 thin "m"$ so với mặt đất, vật A được thả rơi tự do từ trạng thái nghỉ. Cùng một lúc ($t = 0$), từ độ cao $h_0 = 60 thin "m"$ ngay bên dưới vật A, vật B được ném thẳng đứng xuống dưới với tốc độ ban đầu $v_0 = 10 thin "m/s"$. Lấy $g = 10 thin "m/s"^2$, bỏ qua lực cản không khí.
    #parbreak() a) Viết phương trình độ dịch chuyển/tọa độ $y_A (t)$ và $y_B (t)$ của hai vật (chọn gốc tọa độ tại mặt đất, chiều dương hướng thẳng đứng lên trên).
    #parbreak() b) Xác định thời điểm $t$ và vị trí độ cao $y$ mà vật A đuổi kịp vật B.
  ],
  type: "essay",
  lines: 6,
  sol: [
    Chọn trục tọa độ thẳng đứng $O y$, gốc $O$ tại mặt đất, chiều dương hướng thẳng đứng lên trên. Gốc thời gian $t = 0$ lúc bắt đầu thả/ném. Khi đó gia tốc của hai vật là $a = -g = -10 thin "m/s"^2$.

    a) Phương trình tọa độ của hai vật:
    - Vật A: $y_(0 A) = 100 thin "m"$, thả rơi tự do ($v_(0 A) = 0$):
      $y_A (t) = y_(0 A) + v_(0 A) t - 1/2 g t^2 = 100 - 5 t^2 thin ("m") quad (0 <= t <= 2 sqrt(5) thin "s")$.
    - Vật B: $y_(0 B) = 60 thin "m"$, ném thẳng đứng xuống dưới nên $v_(0 B) = -10 thin "m/s"$:
      $y_B (t) = y_(0 B) + v_(0 B) t - 1/2 g t^2 = 60 - 10 t - 5 t^2 thin ("m") quad (0 <= t <= -1 + sqrt(13) thin "s")$.

    b) Xét điều kiện hai vật gặp nhau trong không trung:
    $y_A (t) = y_B (t) arrow.r 100 - 5 t^2 = 60 - 10 t - 5 t^2 arrow.r 40 + 10 t = 0 arrow.r t = -4 thin "s"$ (loại vì $t > 0$).
    Khoảng cách thẳng đứng giữa hai vật: $Delta y (t) = y_A (t) - y_B (t) = 40 + 10 t > 0$ tăng dần theo thời gian. Do vật B ở phía dưới và luôn có vận tốc hướng xuống lớn hơn vật A ($v_B = 10 + 10 t > v_A = 10 t$) nên vật A không thể đuổi kịp vật B trước khi chạm đất.

    *(Ghi chú hiệu đính: Nếu đề bài là vật B được ném thẳng đứng lên trên với $v_(0 B) = +10 thin "m/s"$, phương trình $y_B (t) = 60 + 10 t - 5 t^2$. Khi đó hai vật gặp nhau tại $t = 4 thin "s"$ ở độ cao $y = 100 - 5 dot 4^2 = 20 thin "m"$).*
  ],
)

// =========================================================================
// ĐỀ SỐ 7
// =========================================================================

#de-kiem-tra(
  num: "7",
  title: "KIỂM TRA GIỮA HỌC KỲ I",
  subtitle: [Thời gian làm bài: 45 phút (Không kể thời gian phát đề)],
  label: <de-kt-07>,
)

= PHẦN I. CÂU TRẮC NGHIỆM 4 PHƯƠNG ÁN (12 CÂU - 3,0 ĐIỂM)
#sbt-instructions(reset: true)[Thí sinh chọn 01 phương án đúng nhất cho mỗi câu hỏi.]

// Câu 1
#vp-question(
  [Khi làm việc với các hóa chất dễ cháy nổ trong phòng thí nghiệm Vật lí, quy tắc nào sau đây là bắt buộc?],
  type: "mcq",
  options: (
    [Đun nóng hóa chất trực tiếp trên lửa mà không đeo kính bảo hộ.],
    [Để hóa chất dễ cháy gần nguồn nhiệt hoặc cầu chì đang hoạt động.],
    [Để dụng cụ chữa cháy ở nơi dễ thấy, dễ lấy và không dùng ngọn lửa hở gần chất dễ bay hơi.],
    [Đổ trực tiếp hóa chất thừa xuống cống thoát nước của phòng thí nghiệm.],
  ),
  ans: "C",
  sol: [Quy tắc an toàn phòng thí nghiệm: Các chất dễ cháy nổ phải để xa nguồn nhiệt, tuyệt đối không dùng ngọn lửa hở trực tiếp và phải bố trí sẵn bình chữa cháy ở nơi dễ thấy, dễ thao tác.],
)

// Câu 2
#vp-question(
  [Sai số tuyệt đối của phép đo trực tiếp đại lượng $A$ được xác định bằng:],
  type: "mcq",
  options: (
    [Tổng sai số ngẫu nhiên $overline(Delta A)$ và sai số dụng cụ $Delta A_("dc")$.],
    [Tích sai số ngẫu nhiên $overline(Delta A)$ và sai số dụng cụ $Delta A_("dc")$.],
    [Thương số giữa sai số ngẫu nhiên và giá trị trung bình.],
    [Hiệu giữa giá trị lớn nhất và giá trị nhỏ nhất của các lần đo.],
  ),
  ans: "A",
  sol: [Sai số tuyệt đối của phép đo trực tiếp gồm sai số ngẫu nhiên và sai số dụng cụ: $Delta A = overline(Delta A) + Delta A_("dc")$.],
)

// Câu 3
#vp-question(
  [Trong chuyển động ném ngang (bỏ qua lực cản không khí), gia tốc của vật trong suốt quá trình bay có đặc điểm là:],
  type: "mcq",
  options: (
    [Bằng 0 theo cả hai phương.],
    [Bằng gia tốc trọng trường $bold(g)$, có phương thẳng đứng và hướng xuống dưới.],
    [Biến thiên tăng dần theo thời gian.],
    [Có phương nằm ngang trùng với hướng ném ban đầu.],
  ),
  ans: "B",
  sol: [Bỏ qua lực cản của không khí, vật ném ngang chỉ chịu tác dụng duy nhất của trọng lực, do đó gia tốc của vật luôn bằng gia tốc rơi tự do $bold(g)$ (phương thẳng đứng, hướng xuống dưới).],
)

// Câu 4
#vp-question(
  [Một ca-nô chèo lái vuông góc với bờ sông với tốc độ $v_1 = 4 thin "m/s"$ so với nước. Do nước chảy, dòng sông đẩy ca-nô trôi dọc bờ với tốc độ $v_2 = 3 thin "m/s"$. Tốc độ thực tế của ca-nô so với bờ sông là:],
  type: "mcq",
  options: (
    [$7 thin "m/s"$.],
    [$1 thin "m/s"$.],
    [$5 thin "m/s"$.],
    [$"2,5" thin "m/s"$.],
  ),
  ans: "C",
  sol: [
    Vì hai vận tốc vuông góc với nhau nên tốc độ tổng hợp của ca-nô so với bờ là:
    $v = sqrt(v_1^2 + v_2^2) = sqrt(4^2 + 3^2) = 5 thin "m/s"$.
  ],
)

// Câu 5
#vp-question(
  [Đồ thị vận tốc – thời gian ($v - t$) của một vật chuyển động thẳng là đường thẳng đi qua gốc tọa độ $O$ và dốc lên. Diện tích hình tam giác giới hạn bởi đồ thị và trục thời gian $O t$ biểu diễn đại lượng nào?],
  type: "mcq",
  options: (
    [Gia tốc của vật.],
    [Tốc độ trung bình.],
    [Độ dịch chuyển của vật.],
    [Thời gian chuyển động.],
  ),
  ans: "C",
  sol: [Trong đồ thị vận tốc -- thời gian ($v - t$), diện tích hình phẳng giới hạn bởi đường biểu diễn $v(t)$ và trục hoành $O t$ có độ lớn bằng độ dịch chuyển của vật trong khoảng thời gian tương ứng.],
)

// Câu 6
#vp-question(
  [Trong chuyển động ném xiên từ mặt đất với góc ném $alpha$ ($0 < alpha < 90 degree$), tại điểm cao nhất của quỹ đạo, vận tốc của vật có giá trị là:],
  type: "mcq",
  options: (
    [$v = 0$.],
    [$v = v_0 cos alpha$.],
    [$v = v_0 sin alpha$.],
    [$v = v_0$.],
  ),
  ans: "B",
  sol: [Tại điểm cao nhất của quỹ đạo, thành phần vận tốc thẳng đứng triệt tiêu ($v_y = 0$). Vận tốc của vật khi đó chỉ còn thành phần nằm ngang: $v = v_x = v_0 cos alpha$.],
)

// Câu 7
#vp-question(
  [Công thức tính tầm xa $L$ của một vật được ném ngang từ độ cao $h$ với tốc độ ban đầu $v_0$ tại nơi có gia tốc trọng trường $g$ là:],
  type: "mcq",
  options: (
    [$L = v_0 sqrt(frac(h, 2 g))$.],
    [$L = v_0 sqrt(frac(2 h, g))$.],
    [$L = frac(v_0^2, 2 g)$.],
    [$L = v_0 dot frac(h, g)$.],
  ),
  ans: "B",
  sol: [Thời gian chuyển động ném ngang: $t = sqrt(frac(2 h, g))$. Tầm xa: $L = v_0 t = v_0 sqrt(frac(2 h, g))$.],
)

// Câu 8
#vp-question(
  [Một hòn đá được ném xiên từ mặt đất với cùng tốc độ ban đầu $v_0$. Tầm xa $L$ trên mặt đất đạt giá trị lớn nhất $L_("max")$ khi góc ném $alpha$ bằng:],
  type: "mcq",
  options: (
    [$30 degree$.],
    [$45 degree$.],
    [$60 degree$.],
    [$90 degree$.],
  ),
  ans: "B",
  sol: [Công thức tầm xa ném xiên từ mặt đất: $L = frac(v_0^2 sin(2 alpha), g)$. Tầm xa đạt cực đại khi $sin(2 alpha) = 1 arrow.r 2 alpha = 90 degree arrow.r alpha = 45 degree$.],
)

// Câu 9
#vp-question(
  [Chuyển động thẳng biến đổi đều có độ dịch chuyển $d$ phụ thuộc vào thời gian $t$ theo dạng hàm số:],
  type: "mcq",
  options: (
    [Bậc nhất theo $t$.],
    [Bậc hai theo $t$.],
    [Bậc ba theo $t$.],
    [Căn bậc hai theo $t$.],
  ),
  ans: "B",
  sol: [Phương trình độ dịch chuyển: $d = v_0 t + 1/2 a t^2$ là hàm số bậc hai theo biến thời gian $t$.],
)

// Câu 10
#vp-question(
  [Vận tốc chạm đất $v$ của một vật ném ngang từ độ cao $h$ với tốc độ ban đầu $v_0$ được tính bằng công thức:],
  type: "mcq",
  options: (
    [$v = v_0 + g t$.],
    [$v = sqrt(v_0^2 + 2 g h)$.],
    [$v = sqrt(v_0^2 + g h)$.],
    [$v = sqrt(2 g h)$.],
  ),
  ans: "B",
  sol: [Thành phần vận tốc chạm đất: $v_x = v_0$ và $v_y = sqrt(2 g h)$. Vận tốc chạm đất: $v = sqrt(v_x^2 + v_y^2) = sqrt(v_0^2 + 2 g h)$.],
)

// Câu 11
#vp-question(
  [Một máy bay cứu trợ bay theo phương ngang ở độ cao $h = 500 thin "m"$ với tốc độ không đổi $v_0 = 80 thin "m/s"$. Máy bay cần thả gói hàng cứu trợ xuống một vị trí cố định trên mặt đất. Lấy $g = 10 thin "m/s"^2$, bỏ qua lực cản không khí. Khoảng cách nằm ngang $x$ từ điểm thả đến mục tiêu là:],
  type: "mcq",
  options: (
    [$800 thin "m"$.],
    [$400 thin "m"$.],
    [$1600 thin "m"$.],
    [$1000 thin "m"$.],
  ),
  ans: "A",
  sol: [
    Thời gian rơi của gói hàng: $t = sqrt(frac(2 h, g)) = sqrt(frac(2 dot 500, 10)) = 10 thin "s"$.
    Khoảng cách nằm ngang từ điểm thả đến mục tiêu:
    $x = v_0 t = 80 dot 10 = 800 thin "m"$.
  ],
)

// Câu 12
#vp-question(
  [Xe máy điện VinFast Feliz S phanh gấp làm xe chuyển động thẳng chậm dần đều từ tốc độ $15 thin "m/s"$ dừng hẳn sau quãng đường $"22,5" thin "m"$. Độ lớn gia tốc hãm phanh của xe là:],
  type: "mcq",
  options: (
    [$"5,0" thin "m/s"^2$.],
    [$"3,0" thin "m/s"^2$.],
    [$"2,0" thin "m/s"^2$.],
    [$"10,0" thin "m/s"^2$.],
  ),
  ans: "A",
  sol: [
    Áp dụng công thức độc lập với thời gian:
    $v^2 - v_0^2 = 2 a s arrow.r a = frac(0 - 15^2, 2 dot "22,5") = frac(-225, 45) = -5 thin "m/s"^2$.
    Độ lớn gia tốc hãm phanh là $5 thin "m/s"^2$.
  ],
)
= PHẦN II. CÂU TRẮC NGHIỆM ĐÚNG/SAI (2 CÂU - 4,0 ĐIỂM)
#sbt-instructions(reset: true)[Thí sinh xét tính Đúng/Sai cho từng ý a), b), c), d) trong mỗi câu.]

// Câu 1 - Đúng/Sai
#vp-question(
  [Từ một vách đá cao $h = 45 thin "m"$ so với mặt biển, một hòn đá được ném theo phương ngang với tốc độ ban đầu $v_0 = 20 thin "m/s"$ (như hình bên). Lấy $g = 10 thin "m/s"^2$, bỏ qua lực cản của không khí.
    #align(center, hinh-de7-tf-01())
  ],
  type: "tf",
  statements: (
    [Thành phần vận tốc nằm ngang $v_x$ của hòn đá duy trì không đổi $v_x = 20 thin "m/s"$ trong suốt quá trình rơi.],
    [Thời gian hòn đá rơi từ lúc ném đến khi chạm mặt nước biển là $t = "3,0" thin "s"$.],
    [Tầm xa của hòn đá thu được trên mặt nước biển là $L = 90 thin "m"$.],
    [Ngay trước khi chạm mặt nước, vận tốc của hòn đá có độ lớn bằng $"36,1" thin "m/s"$ (làm tròn đến 1 chữ số thập phân).],
  ),
  ans-tf: ("Đ", "Đ", "S", "Đ"),
  sol: [
    - a) *Đúng:* Theo phương ngang không có lực tác dụng nên $a_x = 0$, thành phần vận tốc $v_x = v_0 = 20 thin "m/s"$ không đổi.
    - b) *Đúng:* Thời gian rơi: $t = sqrt(frac(2 h, g)) = sqrt(frac(2 dot 45, 10)) = 3 thin "s"$.
    - c) *Sai:* Tầm xa của hòn đá: $L = v_0 t = 20 dot 3 = 60 thin "m"$ (không phải $90 thin "m"$).
    - d) *Đúng:* Vận tốc thành phần thẳng đứng khi chạm nước: $v_y = g t = 10 dot 3 = 30 thin "m/s"$.
      Vận tốc tổng hợp chạm nước: $v = sqrt(v_x^2 + v_y^2) = sqrt(20^2 + 30^2) = sqrt(1300) approx "36,0555" thin "m/s" approx "36,1" thin "m/s"$.
  ],
)

// Câu 2 - Đúng/Sai
#vp-question(
  [Một chiếc ô tô điện VinFast VF8 bắt đầu khởi hành từ trạng thái nghỉ ($v_0 = 0$), tăng tốc thẳng nhanh dần đều với gia tốc $a = "2,0" thin "m/s"^2$ trên đường thử nghiệm.],
  type: "tf",
  statements: (
    [Sau thời gian $t = "5,0" thin "s"$, tốc độ của ô tô đạt $"10,0" thin "m/s"$.],
    [Quãng đường ô tô đi được trong $"5,0" thin "s"$ đầu tiên là $"25,0" thin "m"$.],
    [Tốc độ trung bình của ô tô trong khoảng thời gian $"5,0" thin "s"$ đầu tiên bằng $"10,0" thin "m/s"$.],
    [Quãng đường ô tô đi được trong riêng giây thứ 5 (từ $t = 4 thin "s"$ đến $t = 5 thin "s"$) bằng $"9,0" thin "m"$.],
  ),
  ans-tf: ("Đ", "Đ", "S", "Đ"),
  sol: [
    - a) *Đúng:* Sau 5 s: $v = a t = 2 dot 5 = 10 thin "m/s"$.
    - b) *Đúng:* Quãng đường đi trong 5 s: $s_5 = 1/2 a t^2 = 1/2 dot 2 dot 5^2 = 25 thin "m"$.
    - c) *Sai:* Tốc độ trung bình trong 5 s: $v_("tb") = frac(s_5, t) = frac(25, 5) = 5 thin "m/s"$ (không phải $10 thin "m/s"$).
    - d) *Đúng:* Quãng đường đi trong 4 s đầu: $s_4 = 1/2 dot 2 dot 4^2 = 16 thin "m"$. Quãng đường đi riêng trong giây thứ 5: $Delta s_5 = s_5 - s_4 = 25 - 16 = 9 thin "m"$.
  ],
)
= PHẦN III. CÂU TRẢ LỜI NGẮN (4 CÂU - 2,0 ĐIỂM)
#sbt-instructions(reset: true)[Thí sinh tính toán và điền đáp số dạng số.]

// Câu 1 - Trả lời ngắn
#vp-question(
  [Học sinh dùng thước kẹp đo đường kính một viên bi thép thu được giá trị trung bình $overline(d) = "20,0" thin "mm"$ và sai số tuyệt đối $Delta d = "0,2" thin "mm"$. Tính sai số tỉ đối $delta d$ của phép đo này (theo đơn vị phần trăm $\%$).],
  type: "short",
  ans: "1",
  short-boxes: 1,
  sol: [
    Sai số tỉ đối của phép đo:
    $delta d = frac(Delta d, overline(d)) dot 100% = frac("0,2", "20,0") dot 100% = 1%$.
  ],
)

// Câu 2 - Trả lời ngắn
#vp-question(
  [Một cầu thủ bóng đá sút quả bóng từ mặt sân bằng phẳng với tốc độ ban đầu $v_0 = 20 thin "m/s"$ hợp góc $alpha = 30 degree$ so với phương ngang. Lấy $g = 10 thin "m/s"^2$, bỏ qua lực cản không khí. Tính thời gian bay tổng cộng $t_("tot")$ của quả bóng từ lúc sút đến khi chạm lại mặt sân (theo đơn vị giây $"s"$).],
  type: "short",
  ans: "2",
  short-boxes: 1,
  sol: [
    Thời gian bay tổng cộng của vật ném xiên từ mặt đất:
    $t_("tot") = frac(2 v_0 sin alpha, g) = frac(2 dot 20 dot sin 30 degree, 10) = frac(40 dot "0,5", 10) = 2 thin "s"$.
  ],
)

// Câu 3 - Trả lời ngắn
#vp-question(
  [Một vòi nước công viên phun ra tia nước với tốc độ ban đầu $v_0 = 10 thin "m/s"$ dưới góc ném $alpha = 45 degree$ so với mặt đất bằng phẳng. Lấy $g = 10 thin "m/s"^2$. Tính tầm cao cực đại $H_("max")$ mà tia nước đạt được (theo đơn vị mét $"m"$).],
  type: "short",
  ans: "2,5",
  short-boxes: 3,
  sol: [
    Tầm cao cực đại của chuyển động ném xiên:
    $H_("max") = frac(v_0^2 sin^2 alpha, 2 g) = frac(10^2 dot (sin 45 degree)^2, 2 dot 10) = frac(100 dot "0,5", 20) = "2,5" thin "m"$.
  ],
)

// Câu 4 - Trả lời ngắn
#vp-question(
  [Thả rơi tự do một vật từ độ cao $H$ so với mặt đất tại nơi có $g = 10 thin "m/s"^2$. Biết vận tốc của vật ngay trước khi chạm đất là $v = 30 thin "m/s"$. Tính quãng đường vật rơi được trong $1 thin "s"$ cuối cùng trước khi chạm đất (theo đơn vị mét $"m"$).],
  type: "short",
  ans: "25",
  short-boxes: 2,
  sol: [
    Thời gian rơi tự do đến khi chạm đất: $t = frac(v, g) = frac(30, 10) = 3 thin "s"$.
    Quãng đường rơi trong cả 3 giây: $s_3 = 1/2 g t^2 = 1/2 dot 10 dot 3^2 = 45 thin "m"$.
    Quãng đường rơi trong 2 giây đầu: $s_2 = 1/2 g t_2^2 = 1/2 dot 10 dot 2^2 = 20 thin "m"$.
    Quãng đường rơi trong 1 giây cuối cùng:
    $Delta s = s_3 - s_2 = 45 - 20 = 25 thin "m"$.
  ],
)
= PHẦN IV. CÂU TỰ LUẬN (2 CÂU - 1,0 ĐIỂM)
#sbt-essay-instructions(reset: true)[Thí sinh trình bày chi tiết các bước lập luận vật lý và tính toán.]

// Câu 1 - Tự luận
#vp-question(
  [Một ô tô đang chạy thẳng đều với tốc độ $54 thin "km/h"$ thì gặp chướng ngại vật phía trước. Người lái xe phản xạ trong $"0,6" thin "s"$ (xe vẫn chạy thẳng đều), sau đó đạp phanh làm xe chuyển động chậm dần đều với gia tốc $a = -"4,0" thin "m/s"^2$ cho đến khi dừng hẳn.
    #parbreak() a) Tính tổng quãng đường ô tô đi được từ lúc phát hiện chướng ngại vật đến khi dừng lại hẳn.
    #parbreak() b) Tính tổng thời gian từ lúc phát hiện chướng ngại vật đến khi xe dừng lại hẳn.
  ],
  type: "essay",
  lines: 6,
  sol: [
    Đổi vận tốc ban đầu của ô tô: $v_0 = 54 thin "km/h" = 15 thin "m/s"$.

    a) Quãng đường ô tô đi được gồm hai giai đoạn:
    - Giai đoạn phản xạ ($t_1 = "0,6" thin "s"$ chạy đều):
      $s_1 = v_0 t_1 = 15 dot "0,6" = 9 thin "m"$.
    - Giai đoạn hãm phanh chậm dần đều đến khi dừng ($v = 0$):
      $s_2 = frac(v^2 - v_0^2, 2 a) = frac(0 - 15^2, 2 dot (-4)) = frac(-225, -8) = "28,125" thin "m"$.
    Tổng quãng đường xe đi được:
    $S = s_1 + s_2 = 9 + "28,125" = "37,125" thin "m"$.

    b) Thời gian hãm phanh ở giai đoạn hai:
    $t_2 = frac(v - v_0, a) = frac(0 - 15, -4) = "3,75" thin "s"$.
    Tổng thời gian từ lúc phát hiện chướng ngại vật đến khi dừng hẳn:
    $T = t_1 + t_2 = "0,6" + "3,75" = "4,35" thin "s"$.
  ],
)

// Câu 2 - Tự luận
#vp-question(
  [Tại hội thao quốc phòng, một khẩu pháo đặt trên gờ đá cao $h = 20 thin "m"$ so với mặt nước biển bắn một quả đạn theo phương ngang với tốc độ $v_0 = 150 thin "m/s"$ hướng ra mục tiêu là một chiếc tàu địch đang nổi cố định trên mặt biển. Lấy $g = 10 thin "m/s"^2$, bỏ qua lực cản không khí.
    #parbreak() a) Lập phương trình quỹ đạo $y(x)$ của quả đạn pháo trong hệ tọa độ $O x y$ (gốc $O$ tại vị trí bắn, trục $O x$ hướng ngang, trục $O y$ thẳng đứng hướng xuống).
    #parbreak() b) Để quả đạn bắn trúng tàu địch, tàu địch phải nằm cách chân gờ đá thẳng đứng một khoảng nằm ngang $D$ bằng bao nhiêu? Tính tốc độ chạm mặt nước biển của quả đạn.
  ],
  type: "essay",
  lines: 6,
  sol: [
    a) Chọn hệ trục tọa độ $O x y$ có gốc $O$ tại vị trí bắn, trục $O x$ nằm ngang theo hướng ném, trục $O y$ thẳng đứng hướng xuống.
    - Phương trình chuyển động: $x = v_0 t = 150 t arrow.r t = frac(x, 150)$.
    - Phương trình tọa độ thẳng đứng: $y = 1/2 g t^2 = 5 t^2$.
    Phương trình quỹ đạo của quả đạn pháo:
    $y(x) = 5 dot (frac(x, 150))^2 = frac(x^2, 4500) thin ("m") quad (0 <= x <= D)$.

    b) Quả đạn chạm mặt biển khi $y = h = 20 thin "m"$:
    $20 = frac(x^2, 4500) arrow.r x^2 = 90000 arrow.r x = D = 300 thin "m"$.
    Vậy tàu địch phải cách chân gờ đá khoảng $D = 300 thin "m"$.
    Vận tốc chạm mặt nước biển:
    - Vận tốc ngang: $v_x = v_0 = 150 thin "m/s"$.
    - Vận tốc thẳng đứng: $v_y = sqrt(2 g h) = sqrt(2 dot 10 dot 20) = 20 thin "m/s"$.
    Tốc độ chạm mặt biển:
    $v = sqrt(v_x^2 + v_y^2) = sqrt(150^2 + 20^2) = sqrt(22500 + 400) = sqrt(22900) approx "151,3" thin "m/s"$.
  ],
)

// =========================================================================
// ĐỀ SỐ 8
// =========================================================================

#de-kiem-tra(
  num: "8",
  title: "KIỂM TRA GIỮA HỌC KỲ I",
  subtitle: [Thời gian làm bài: 45 phút (Không kể thời gian phát đề)],
  label: <de-kt-08>,
)

= PHẦN I. CÂU TRẮC NGHIỆM 4 PHƯƠNG ÁN (12 CÂU - 3,0 ĐIỂM)
#sbt-instructions(reset: true)[Thí sinh chọn 01 phương án đúng nhất cho mỗi câu hỏi.]

// Câu 1
#vp-question(
  [Kí hiệu hình tròn màu đỏ có đường gạch chéo màu đỏ đè lên biểu tượng đen trong phòng thí nghiệm Vật lí có ý nghĩa là:],
  type: "mcq",
  options: (
    [Bắt buộc phải thực hiện.],
    [Cấm thực hiện hành vi ghi trên hình.],
    [Cảnh báo khu vực nguy hiểm.],
    [Hướng dẫn sử dụng thiết bị.],
  ),
  ans: "B",
  sol: [Hình tròn viền đỏ có đường gạch chéo đỏ đè lên hình vẽ màu đen là biển báo cấm, mang ý nghĩa cấm thực hiện hành vi được mô tả.],
)

// Câu 2
#vp-question(
  [Kết quả đo trực tiếp thời gian rơi $t$ được ghi là $t = ("0,450" plus.minus "0,005") thin "s"$. Giá trị $"0,005" thin "s"$ là:],
  type: "mcq",
  options: (
    [Giá trị trung bình.],
    [Sai số tuyệt đối của phép đo.],
    [Sai số tỉ đối của phép đo.],
    [Độ chia nhỏ nhất của đồng hồ.],
  ),
  ans: "B",
  sol: [Kết quả đo đại lượng $A$ được viết dưới dạng $A = overline(A) plus.minus Delta A$, do đó giá trị $"0,005" thin "s"$ là sai số tuyệt đối $Delta t$ của phép đo.],
)

// Câu 3
#vp-question(
  [Trong chuyển động ném xiên bỏ qua lực cản không khí, quỹ đạo chuyển động của vật có dạng là:],
  type: "mcq",
  options: (
    [Đường thẳng đứng.],
    [Một nhánh parabol có bề lõm hướng xuống dưới.],
    [Đường tròn bán kính không đổi.],
    [Đường xoắn ốc.],
  ),
  ans: "B",
  sol: [Phương trình quỹ đạo của vật ném xiên có dạng $y = (tan alpha) x - frac(g, 2 v_0^2 cos^2 alpha) x^2$ là phương trình parabol có bề lõm hướng xuống dưới.],
)

// Câu 4
#vp-question(
  [Hai lực kéo $bold(F)_1$ và $bold(F)_2$ cùng tác dụng vào một vật. Hợp lực của hai lực có độ lớn cực đại khi hai lực:],
  type: "mcq",
  options: (
    [Cùng phương, ngược chiều.],
    [Cùng phương, cùng chiều.],
    [Vuông góc với nhau.],
    [Hợp với nhau góc $120 degree$.],
  ),
  ans: "B",
  sol: [Hợp lực $F = sqrt(F_1^2 + F_2^2 + 2 F_1 F_2 cos alpha)$ đạt cực đại $F_("max") = F_1 + F_2$ khi hai lực cùng phương, cùng chiều ($alpha = 0 degree$).],
)

// Câu 5
#vp-question(
  [Một vật ném xiên từ mặt đất với cùng tốc độ đầu $v_0 = 20 thin "m/s"$ ở hai góc ném khác nhau $alpha_1 = 30 degree$ và $alpha_2 = 60 degree$. Tầm xa $L_1$ và $L_2$ của vật trên mặt đất bằng phẳng thỏa mãn:],
  type: "mcq",
  options: (
    [$L_1 = L_2$.],
    [$L_1 > L_2$.],
    [$L_1 < L_2$.],
    [$L_1 = 2 L_2$.],
  ),
  ans: "A",
  sol: [
    Tầm xa trên mặt đất: $L = frac(v_0^2 sin(2 alpha), g)$.
    - Với $alpha_1 = 30 degree$: $sin(2 alpha_1) = sin 60 degree = frac(sqrt(3), 2)$.
    - Với $alpha_2 = 60 degree$: $sin(2 alpha_2) = sin 120 degree = frac(sqrt(3), 2)$.
    Vì $alpha_1 + alpha_2 = 90 degree$ nên tầm xa của vật trong hai trường hợp là bằng nhau: $L_1 = L_2$.
  ],
)

// Câu 6
#vp-question(
  [Khi một vật được ném ngang từ độ cao $h$, thời gian rơi $t$ của vật chạm đất không phụ thuộc vào:],
  type: "mcq",
  options: (
    [Gia tốc trọng trường $g$.],
    [Độ cao $h$ thả vật.],
    [Tốc độ ném ban đầu $v_0$.],
    [Phương thẳng đứng.],
  ),
  ans: "C",
  sol: [Thời gian rơi của vật ném ngang $t = sqrt(frac(2 h, g))$ chỉ phụ thuộc vào độ cao $h$ và gia tốc trọng trường $g$, hoàn toàn không phụ thuộc vào tốc độ ném ban đầu $v_0$.],
)

// Câu 7
#vp-question(
  [Vận tốc trung bình $overline(v)$ của một chuyển động được tính bằng tỉ số giữa:],
  type: "mcq",
  options: (
    [Quãng đường đi được và thời gian.],
    [Độ dịch chuyển và khoảng thời gian thực hiện độ dịch chuyển đó.],
    [Tổng vận tốc đầu và vận tốc cuối.],
    [Độ dịch chuyển và bình phương thời gian.],
  ),
  ans: "B",
  sol: [Định nghĩa: Vận tốc trung bình là thương số giữa độ dịch chuyển và khoảng thời gian thực hiện độ dịch chuyển: $overline(v) = frac(Delta bold(d), Delta t)$.],
)

// Câu 8
#vp-question(
  [Trong bài toán ném xiên, nếu lực cản của không khí đáng kể thì so với khi không có lực cản, tầm cao $H_("max")$ và tầm xa $L$ của vật sẽ:],
  type: "mcq",
  options: (
    [Cả tầm cao và tầm xa đều tăng.],
    [Cả tầm cao và tầm xa đều giảm.],
    [Tầm cao tăng nhưng tầm xa giảm.],
    [Không bị thay đổi.],
  ),
  ans: "B",
  sol: [Lực cản không khí luôn cản trở chuyển động và tiêu hao cơ năng của vật, làm cho cả tầm bay cao cực đại $H_("max")$ và tầm xa $L$ đều bị giảm đi.],
)

// Câu 9
#vp-question(
  [Chuyển động rơi tự do có bản chất là:],
  type: "mcq",
  options: (
    [Chuyển động thẳng đều.],
    [Chuyển động thẳng nhanh dần đều với gia tốc $g$.],
    [Chuyển động thẳng chậm dần đều.],
    [Chuyển động cong biến đổi đều.],
  ),
  ans: "B",
  sol: [Chuyển động rơi tự do là chuyển động thẳng nhanh dần đều theo phương thẳng đứng với gia tốc không đổi bằng gia tốc trọng trường $g$.],
)

// Câu 10
#vp-question(
  [Phương trình chuyển động của một vật thẳng chậm dần đều có dạng $d = 20 t - t^2$ ($"m"; "s"$). Vận tốc ban đầu $v_0$ và gia tốc $a$ của vật là:],
  type: "mcq",
  options: (
    [$v_0 = 20 thin "m/s"; a = -1 thin "m/s"^2$.],
    [$v_0 = 20 thin "m/s"; a = -2 thin "m/s"^2$.],
    [$v_0 = 10 thin "m/s"; a = -2 thin "m/s"^2$.],
    [$v_0 = 20 thin "m/s"; a = +"2" thin "m/s"^2$.],
  ),
  ans: "B",
  sol: [So sánh $d = 20 t - t^2$ với phương trình $d = v_0 t + 1/2 a t^2$, ta được: $v_0 = 20 thin "m/s"$ và $1/2 a = -1 arrow.r a = -2 thin "m/s"^2$.],
)

// Câu 11
#vp-question(
  [Một hòn đá được ném ngang từ độ cao $h = 20 thin "m"$ với tốc độ ban đầu $v_0 = 15 thin "m/s"$. Lấy $g = 10 thin "m/s"^2$. Vận tốc của hòn đá theo phương thẳng đứng $v_y$ ngay trước khi chạm đất có độ lớn là:],
  type: "mcq",
  options: (
    [$15 thin "m/s"$.],
    [$20 thin "m/s"$.],
    [$25 thin "m/s"$.],
    [$30 thin "m/s"$.],
  ),
  ans: "B",
  sol: [
    Vận tốc theo phương thẳng đứng ngay trước khi chạm đất:
    $v_y = sqrt(2 g h) = sqrt(2 dot 10 dot 20) = sqrt(400) = 20 thin "m/s"$.
  ],
)

// Câu 12
#vp-question(
  [Một vận động viên nhảy xa giậm nhảy với tốc độ ban đầu $v_0 = 10 thin "m/s"$ hợp góc $alpha = 45 degree$ so với phương ngang. Lấy $g = 10 thin "m/s"^2$, bỏ qua lực cản không khí. Thành tích tầm xa $L$ của vận động viên đó trên mặt đất là:],
  type: "mcq",
  options: (
    [$10 thin "m"$.],
    [$5 thin "m"$.],
    [$"7,07" thin "m"$.],
    [$"14,14" thin "m"$.],
  ),
  ans: "A",
  sol: [
    Tầm xa đạt được của vận động viên:
    $L = frac(v_0^2 sin(2 alpha), g) = frac(10^2 dot sin(2 dot 45 degree), 10) = frac(100 dot 1, 10) = 10 thin "m"$.
  ],
)
= PHẦN II. CÂU TRẮC NGHIỆM ĐÚNG/SAI (2 CÂU - 4,0 ĐIỂM)
#sbt-instructions(reset: true)[Thí sinh xét tính Đúng/Sai cho từng ý a), b), c), d) trong mỗi câu.]

// Câu 1 - Đúng/Sai
#vp-question(
  [Trong một trận thi đấu bóng đá, cầu thủ thực hiện cú sút phạt trực tiếp từ mặt sân cỏ bằng phẳng với tốc độ ban đầu $v_0 = 25 thin "m/s"$ hợp góc $alpha = 37 degree$ ($sin 37 degree = "0,6"; cos 37 degree = "0,8"$) so với phương ngang (như hình bên). Lấy $g = 10 thin "m/s"^2$, bỏ qua lực cản không khí.
    #align(center, hinh-de8-tf-01())
  ],
  type: "tf",
  statements: (
    [Thành phần vận tốc ban đầu nằm ngang là $v_(0 x) = 20 thin "m/s"$ và thẳng đứng là $v_(0 y) = 15 thin "m/s"$.],
    [Thời gian quả bóng đạt độ cao cực đại kể từ lúc sút là $t_("đỉnh") = "1,5" thin "s"$.],
    [Độ cao cực đại mà quả bóng đạt được là $H_("max") = "11,25" thin "m"$.],
    [Tầm xa quả bóng đạt được trên mặt sân cỏ là $L = 60 thin "m"$.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "Đ"),
  sol: [
    - a) *Đúng:* $v_(0 x) = v_0 cos alpha = 25 dot "0,8" = 20 thin "m/s"$; $v_(0 y) = v_0 sin alpha = 25 dot "0,6" = 15 thin "m/s"$.
    - b) *Đúng:* Thời gian lên đến đỉnh cực đại: $t_("đỉnh") = frac(v_(0 y), g) = frac(15, 10) = "1,5" thin "s"$.
    - c) *Đúng:* Độ cao cực đại: $H_("max") = frac(v_(0 y)^2, 2 g) = frac(15^2, 2 dot 10) = frac(225, 20) = "11,25" thin "m"$.
    - d) *Đúng:* Tầm xa của quả bóng: $L = v_(0 x) dot t_("tot") = v_(0 x) dot (2 t_("đỉnh")) = 20 dot (2 dot "1,5") = 20 dot 3 = 60 thin "m"$.
  ],
)

// Câu 2 - Đúng/Sai
#vp-question(
  [Hai xe ô tô A và B xuất phát cùng lúc ($t = 0$) từ vạch xuất phát trên một làn đường thẳng: Xe A khởi hành nhanh dần đều từ trạng thái nghỉ với gia tốc $a_A = "4,0" thin "m/s"^2$; Xe B chạy thẳng đều với tốc độ không đổi $v_B = 20 thin "m/s"$.],
  type: "tf",
  statements: (
    [Sau $"5,0" thin "s"$ kể từ lúc xuất phát, hai xe A và B có tốc độ bằng nhau ($v_A = v_B = 20 thin "m/s"$).],
    [Tại thời điểm $t = "5,0" thin "s"$, khoảng cách giữa hai xe A và B đạt giá trị cực đại bằng $50 thin "m"$.],
    [Xe A sẽ bắt kịp xe B sau khoảng thời gian $t = "10,0" thin "s"$ kể từ lúc xuất phát.],
    [Vị trí hai xe gặp nhau cách vạch xuất phát một khoảng là $150 thin "m"$.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [
    Chọn gốc tọa độ tại vạch xuất phát, chiều dương là chiều chuyển động:
    - Xe A: $x_A (t) = 1/2 a_A t^2 = 2 t^2 thin ("m")$; $v_A (t) = 4 t thin ("m/s")$.
    - Xe B: $x_B (t) = v_B t = 20 t thin ("m")$; $v_B = 20 thin "m/s"$.
    - a) *Đúng:* Khi $t = 5 thin "s" arrow.r v_A = 4 dot 5 = 20 thin "m/s" = v_B$.
    - b) *Đúng:* Khoảng cách giữa hai xe: $d(t) = x_B (t) - x_A (t) = 20 t - 2 t^2$. Khoảng cách này cực đại khi $v_A = v_B arrow.r t = 5 thin "s"$, khi đó $d_("max") = 20 dot 5 - 2 dot 5^2 = 100 - 50 = 50 thin "m"$.
    - c) *Đúng:* Xe A bắt kịp xe B khi $x_A = x_B arrow.r 2 t^2 = 20 t arrow.r t = 10 thin "s"$.
    - d) *Sai:* Vị trí hai xe gặp nhau: $x = 20 dot 10 = 200 thin "m"$ (không phải $150 thin "m"$).
  ],
)
= PHẦN III. CÂU TRẢ LỜI NGẮN (4 CÂU - 2,0 ĐIỂM)
#sbt-instructions(reset: true)[Thí sinh tính toán và điền đáp số dạng số.]

// Câu 1 - Trả lời ngắn
#vp-question(
  [Dùng kính hiển vi đo đường kính một tế bào sinh học thu được kết quả $overline(d) = 50 thin mu "m"$ với sai số tuyệt đối $Delta d = 1 thin mu "m"$. Tính sai số tỉ đối $delta d$ của phép đo này (theo đơn vị phần trăm $\%$).],
  type: "short",
  ans: "2",
  short-boxes: 1,
  sol: [
    Sai số tỉ đối của phép đo đường kính tế bào:
    $delta d = frac(Delta d, overline(d)) dot 100% = frac(1, 50) dot 100% = 2%$.
  ],
)

// Câu 2 - Trả lời ngắn
#vp-question(
  [Một vật nhỏ được ném ngang từ độ cao $h = 45 thin "m"$ tại nơi có $g = 10 thin "m/s"^2$. Biết khi chạm đất, vectơ vận tốc của vật hợp với phương ngang một góc $theta = 45 degree$. Tính tốc độ ném ban đầu $v_0$ của vật (theo đơn vị $"m/s"$).],
  type: "short",
  ans: "30",
  short-boxes: 2,
  sol: [
    Vận tốc theo phương thẳng đứng khi chạm đất:
    $v_y = sqrt(2 g h) = sqrt(2 dot 10 dot 45) = sqrt(900) = 30 thin "m/s"$.
    Vì vectơ vận tốc hợp với phương ngang góc $45 degree$:
    $tan 45 degree = frac(v_y, v_x) = 1 arrow.r v_x = v_y = 30 thin "m/s"$.
    Do đó tốc độ ném ban đầu là $v_0 = v_x = 30 thin "m/s"$.
  ],
)

// Câu 3 - Trả lời ngắn
#vp-question(
  [Một vòi nước công viên xoay tròn $360 degree$ phun các tia nước ra với cùng tốc độ đầu $v_0 = 12 thin "m/s"$ hợp góc $alpha = 30 degree$ so với mặt cỏ bằng phẳng. Lấy $g = "9,8" thin "m/s"^2$. Tính bán kính $R$ của vùng đất hình tròn trên mặt cỏ được tưới nước tối đa (theo đơn vị mét $"m"$, làm tròn đến 1 chữ số thập phân).],
  type: "short",
  ans: "12,7",
  short-boxes: 4,
  sol: [
    Bán kính của vùng đất được tưới nước chính là tầm xa của tia nước:
    $R = L = frac(v_0^2 sin(2 alpha), g) = frac(12^2 dot sin(2 dot 30 degree), "9,8") = frac(144 dot sin 60 degree, "9,8") = frac(144 dot (sqrt(3)/2), "9,8") = frac(72 sqrt(3), "9,8") approx "12,725" thin "m" approx "12,7" thin "m"$.
  ],
)

// Câu 4 - Trả lời ngắn
#vp-question(
  [Một chiếc thuyền chèo qua sông rộng $d = 120 thin "m"$. Nước sông chảy với tốc độ $v_n = 2 thin "m/s"$ so với bờ. Người chèo thuyền hướng mũi thuyền vuông góc với bờ sông và chèo với tốc độ $v_t = 3 thin "m/s"$ so với nước. Tính khoảng cách trôi bị dạt dọc theo bờ sông $Delta x$ khi thuyền sang đến bờ bên kia (theo đơn vị mét $"m"$).],
  type: "short",
  ans: "80",
  short-boxes: 2,
  sol: [
    Thời gian thuyền chèo sang bờ bên kia:
    $t = frac(d, v_t) = frac(120, 3) = 40 thin "s"$.
    Khoảng cách trôi dạt dọc theo bờ sông do dòng nước đẩy:
    $Delta x = v_n dot t = 2 dot 40 = 80 thin "m"$.
  ],
)
= PHẦN IV. CÂU TỰ LUẬN (2 CÂU - 1,0 ĐIỂM)
#sbt-essay-instructions(reset: true)[Thí sinh trình bày chi tiết các bước lập luận vật lý và tính toán.]

// Câu 1 - Tự luận
#vp-question(
  [Một xe điện VinFast Feliz S di chuyển giữa hai trạm sạc A và B cách nhau $400 thin "m"$ gồm 3 giai đoạn: (1) Tăng tốc nhanh dần đều từ nghỉ tại A với gia tốc $a_1 = "1,5" thin "m/s"^2$ đạt tốc độ $15 thin "m/s"$; (2) Chuyển động thẳng đều với tốc độ $15 thin "m/s"$; (3) Hãm phanh chậm dần đều với gia tốc $a_3 = -"2,5" thin "m/s"^2$ dừng hẳn tại trạm B.
    #parbreak() a) Tính quãng đường $s_1$ tăng tốc và $s_3$ hãm phanh của xe điện.
    #parbreak() b) Tính tổng thời gian $T$ xe điện di chuyển từ trạm sạc A đến trạm sạc B.
  ],
  type: "essay",
  lines: 5,
  sol: [
    a) Quãng đường tăng tốc và hãm phanh:
    - Giai đoạn 1: $s_1 = frac(v_1^2 - 0, 2 a_1) = frac(15^2, 2 dot "1,5") = frac(225, 3) = 75 thin "m"$.
      Thời gian tăng tốc: $t_1 = frac(v_1, a_1) = frac(15, "1,5") = 10 thin "s"$.
    - Giai đoạn 3: $s_3 = frac(0 - v_1^2, 2 a_3) = frac(-15^2, 2 dot (-"2,5")) = frac(-225, -5) = 45 thin "m"$.
      Thời gian hãm phanh: $t_3 = frac(0 - v_1, a_3) = frac(-15, -"2,5") = 6 thin "s"$.

    b) Quãng đường và thời gian giai đoạn chạy đều:
    - Quãng đường giai đoạn 2: $s_2 = S_(A B) - s_1 - s_3 = 400 - 75 - 45 = 280 thin "m"$.
    - Thời gian giai đoạn 2: $t_2 = frac(s_2, v_1) = frac(280, 15) = frac(56, 3) approx "18,67" thin "s"$.
    Tổng thời gian chuyển động từ trạm A đến trạm B:
    $T = t_1 + t_2 + t_3 = 10 + "18,67" + 6 = "34,67" thin "s"$ (hoặc $frac(104, 3) thin "s" approx "34,7" thin "s"$).
  ],
)

// Câu 2 - Tự luận
#vp-question(
  [Trong một bài thi môn thể thao, một cầu thủ sút phạt quả bóng từ khoảng cách $D = 20 thin "m"$ so với hàng rào phòng ngự cao $h_r = "2,0" thin "m"$. Bóng rời chân cầu thủ với tốc độ $v_0 = 20 thin "m/s"$ hợp góc $alpha = 45 degree$ so với mặt sân bằng phẳng. Lấy $g = 10 thin "m/s"^2$, bỏ qua lực cản không khí.
    #parbreak() a) Lập phương trình quỹ đạo $y(x)$ của quả bóng trong hệ tọa độ $O x y$ (gốc $O$ tại điểm sút bóng trên mặt sân, trục $O x$ nằm ngang, $O y$ thẳng đứng hướng lên).
    #parbreak() b) Quả bóng có bay vượt qua phía trên hàng rào phòng ngự hay không? Nếu có, khoảng cách an toàn thẳng đứng giữa quả bóng và đỉnh hàng rào khi nó bay qua là bao nhiêu?
  ],
  type: "essay",
  lines: 5,
  sol: [
    a) Chọn hệ tọa độ $O x y$ có gốc $O$ tại điểm sút bóng trên mặt sân, trục $O x$ nằm ngang theo hướng sút, trục $O y$ thẳng đứng hướng lên:
    - Tọa độ theo phương ngang: $x = (v_0 cos alpha) t = 20 dot (sqrt(2)/2) t = 10 sqrt(2) t arrow.r t = frac(x, 10 sqrt(2))$.
    - Tọa độ theo phương thẳng đứng: $y = (v_0 sin alpha) t - 1/2 g t^2 = 10 sqrt(2) t - 5 t^2$.
    Phương trình quỹ đạo của quả bóng:
    $y(x) = x - 5 dot (frac(x, 10 sqrt(2)))^2 = x - frac(5 x^2, 200) = x - frac(x^2, 40) thin ("m")$.

    b) Tại vị trí hàng rào phòng ngự ($x = D = 20 thin "m"$):
    Độ cao của quả bóng khi đó:
    $y(20) = 20 - frac(20^2, 40) = 20 - frac(400, 40) = 20 - 10 = 10 thin "m"$.
    Vì $y(20) = 10 thin "m" > h_r = 2 thin "m"$ nên quả bóng bay vượt qua hàng rào phòng ngự.
    Khoảng cách thẳng đứng giữa bóng và đỉnh hàng rào:
    $Delta h = y(20) - h_r = 10 - 2 = 8 thin "m"$.
  ],
)
// =========================================================================
// ĐỀ SỐ 9
// =========================================================================

#de-kiem-tra(
  num: "9",
  title: "KIỂM TRA GIỮA HỌC KỲ I",
  subtitle: [Thời gian làm bài: 45 phút (Không kể thời gian phát đề)],
  label: <de-kt-09>,
)

= PHẦN I. CÂU TRẮC NGHIỆM 4 PHƯƠNG ÁN (12 CÂU - 3,0 ĐIỂM)
#sbt-instructions(reset: true)[Thí sinh chọn 01 phương án đúng nhất cho mỗi câu hỏi.]

// Câu 1
#vp-question(
  [Để đảm bảo an toàn khi sử dụng đồng hồ đo điện đa năng (Multimeter) trong phòng thí nghiệm Vật lí, thao tác nào sau đây là đúng?],
  type: "mcq",
  options: (
    [Chọn thang đo dòng điện một chiều (DCmA) để đo điện áp xoay chiều $220 thin "V"$.],
    [Luôn chọn thang đo có giới hạn lớn nhất trước, sau đó mới hạ dần thang đo cho phù hợp.],
    [Cắm hai đầu que đo vào ổ điện trước rồi mới xoay núm chọn thang đo.],
    [Rút que đo ra khỏi mạch khi đồng hồ đang ở chế độ đo điện trở mà mạch vẫn đang bật nguồn.],
  ),
  ans: "B",
  sol: [Quy tắc an toàn khi sử dụng đồng hồ vạn năng: Để tránh hỏng đồng hồ hoặc cháy cầu chì bảo vệ, người đo luôn phải chọn thang đo có giới hạn đo lớn nhất trước, sau đó mới giảm dần từng nấc cho phù hợp với đại lượng cần đo.],
)

// Câu 2
#vp-question(
  [Sai số dụng cụ $Delta A_("dc")$ của một thước đo thông thường không ghi thông số sai số riêng thường được lấy bằng:],
  type: "mcq",
  options: (
    [Đúng giá trị trung bình của phép đo.],
    [Bằng một nửa độ chia nhỏ nhất hoặc một độ chia nhỏ nhất của thước.],
    [Bằng 0 trong mọi trường hợp.],
    [Tích giữa số lần đo và độ chia nhỏ nhất.],
  ),
  ans: "B",
  sol: [Quy ước xác định sai số dụng cụ: Nếu trên dụng cụ không ghi sai số riêng, sai số dụng cụ thông thường được lấy bằng một nửa độ chia nhỏ nhất (hoặc một độ chia nhỏ nhất tùy theo quy chuẩn quy định).],
)

// Câu 3
#vp-question(
  [Một người lái xe ô tô chạy thẳng từ vị trí A đến vị trí B cách nhau $10 thin "km"$, sau đó quay đầu xe chạy lùi lại vị trí C nằm giữa A và B cách B một khoảng $4 thin "km"$. Độ dịch chuyển tổng hợp $d$ của ô tô tính từ A đến C là:],
  type: "mcq",
  options: (
    [$14 thin "km"$.],
    [$6 thin "km"$.],
    [$4 thin "km"$.],
    [$10 thin "km"$.],
  ),
  ans: "B",
  sol: [Độ dịch chuyển là vectơ nối từ vị trí đầu A đến vị trí cuối C: $d = x_C - x_A = "AB" - "BC" = 10 - 4 = 6 thin "km"$.],
)

// Câu 4
#vp-question(
  [Một người chèo thuyền muốn qua một sông rộng $d$. Để thuyền cập bờ bên kia tại đúng điểm đối diện với điểm xuất phát (đi theo đường thẳng vuông góc với bờ), người đó phải chèo thuyền hướng về phía nào?],
  type: "mcq",
  options: (
    [Chèo thuyền vuông góc hoàn toàn với dòng nước.],
    [Chèo thuyền chếch về phía thượng nguồn (ngược dòng) một góc thích hợp.],
    [Chèo thuyền chếch về phía hạ lưu (xuôi dòng) một góc thích hợp.],
    [Chèo thuyền song song với bờ sông.],
  ),
  ans: "B",
  sol: [Theo định lý cộng vận tốc: $bold(v)_(t b) = bold(v)_(t n) + bold(v)_(n b)$. Để vận tốc của thuyền so với bờ $bold(v)_(t b)$ vuông góc với bờ sông, thành phần vận tốc của thuyền so với nước ngược dòng phải triệt tiêu vận tốc dòng chảy, do đó mũi thuyền phải hướng chếch về phía thượng lưu (ngược dòng) một góc nhọn thích hợp.],
)

// Câu 5
#vp-question(
  [Đồ thị vận tốc – thời gian ($v - t$) của một vật chuyển động thẳng là một đường thẳng song song với trục thời gian $O t$ và nằm trên trục hoành ($v > 0$). Gia tốc $a$ của vật có giá trị bằng:],
  type: "mcq",
  options: (
    [$a > 0$.],
    [$a = 0$.],
    [$a < 0$.],
    [Không xác định được.],
  ),
  ans: "B",
  sol: [Đồ thị $v - t$ song song với trục thời gian biểu diễn chuyển động thẳng đều, vận tốc không thay đổi theo thời gian ($v = "const"$) nên gia tốc của vật bằng 0 ($a = 0$).],
)

// Câu 6
#vp-question(
  [Trong chuyển động ném xiên của một quả bóng đá (bỏ qua lực cản không khí), theo phương nằm ngang (trục $O x$), quả bóng chuyển động theo tính chất nào?],
  type: "mcq",
  options: (
    [Chuyển động thẳng nhanh dần đều với gia tốc $g$.],
    [Chuyển động thẳng đều với vận tốc không đổi $v_x = v_0 cos alpha$.],
    [Chuyển động thẳng chậm dần đều.],
    [Đứng yên.],
  ),
  ans: "B",
  sol: [Bỏ qua lực cản không khí, theo phương nằm ngang không có lực tác dụng ($F_x = 0 arrow.r a_x = 0$), do đó vật chuyển động thẳng đều với vận tốc không đổi $v_x = v_(0 x) = v_0 cos alpha$.],
)

// Câu 7
#vp-question(
  [Một hòn đá được ném xiên từ mặt đất với tốc độ ban đầu $v_0$ dưới góc ném $alpha$ so với phương ngang. Thời gian $t_("đỉnh")$ để hòn đá đạt tới độ cao cực đại là:],
  type: "mcq",
  options: (
    [$t_("đỉnh") = frac(v_0 sin alpha, g)$.],
    [$t_("đỉnh") = frac(v_0 cos alpha, g)$.],
    [$t_("đỉnh") = frac(2 v_0 sin alpha, g)$.],
    [$t_("đỉnh") = frac(v_0^2 sin^2 alpha, 2 g)$.],
  ),
  ans: "A",
  sol: [Tại điểm cao nhất của quỹ đạo, thành phần vận tốc thẳng đứng bằng 0 ($v_y = v_(0 y) - g t = 0$), do đó: $t_("đỉnh") = frac(v_(0 y), g) = frac(v_0 sin alpha, g)$.],
)

// Câu 8
#vp-question(
  [Một viên bi thép được ném ngang từ độ cao $h = 5 thin "m"$ với tốc độ ném ban đầu $v_0 = 10 thin "m/s"$. Lấy $g = 10 thin "m/s"^2$. Tốc độ của viên bi sau khi ném được $t = "0,6" thin "s"$ là:],
  type: "mcq",
  options: (
    [$10 thin "m/s"$.],
    [$6 thin "m/s"$.],
    [$"11,66" thin "m/s"$.],
    [$16 thin "m/s"$.],
  ),
  ans: "C",
  sol: [
    Thời gian rơi chạm đất: $t_("cđ") = sqrt(frac(2 h, g)) = sqrt(frac(2 dot 5, 10)) = 1 thin "s" > "0,6" thin "s"$.
    Tại thời điểm $t = "0,6" thin "s"$:
    - $v_x = v_0 = 10 thin "m/s"$.
    - $v_y = g t = 10 dot "0,6" = 6 thin "m/s"$.
    Tốc độ của viên bi: $v = sqrt(v_x^2 + v_y^2) = sqrt(10^2 + 6^2) = sqrt(136) approx "11,66" thin "m/s"$.
  ],
)

// Câu 9
#vp-question(
  [Một vật chuyển động thẳng chậm dần đều theo chiều dương có gia tốc $a$ và vận tốc ban đầu $v_0$. Dấu của gia tốc $a$ và vận tốc $v_0$ thỏa mãn:],
  type: "mcq",
  options: (
    [$a > 0$ và $v_0 > 0$.],
    [$a < 0$ và $v_0 > 0$.],
    [$a < 0$ và $v_0 < 0$.],
    [$a > 0$ và $v_0 < 0$.],
  ),
  ans: "B",
  sol: [Vật chuyển động theo chiều dương nên $v_0 > 0$. Chuyển động chậm dần đều thì vectơ gia tốc ngược chiều với vectơ vận tốc ($a dot v < 0$), do đó $a < 0$.],
)

// Câu 10
#vp-question(
  [Một vật thả rơi tự do từ trạng thái nghỉ không vận tốc đầu. Tỉ số quãng đường vật rơi được trong giây thứ 1, giây thứ 2 và giây thứ 3 liên tiếp là:],
  type: "mcq",
  options: (
    [$1 : 2 : 3$.],
    [$1 : 3 : 5$.],
    [$1 : 4 : 9$.],
    [$1 : 8 : 27$.],
  ),
  ans: "B",
  sol: [
    Quãng đường rơi trong giây thứ $n$: $Delta s_n = 1/2 g (2 n - 1)$.
    - Giây thứ 1 ($n = 1$): $Delta s_1 = 1/2 g (1) = 5 thin "m"$.
    - Giây thứ 2 ($n = 2$): $Delta s_2 = 1/2 g (3) = 15 thin "m"$.
    - Giây thứ 3 ($n = 3$): $Delta s_3 = 1/2 g (5) = 25 thin "m"$.
    Tỉ số quãng đường là: $1 : 3 : 5$.
  ],
)

// Câu 11
#vp-question(
  [Xe máy điện VinFast Feliz S đang chạy thẳng với tốc độ $36 thin "km/h"$ ($10 thin "m/s"$). Người lái xe phát hiện chướng ngại vật phía trước. Thời gian phản xạ của người lái xe là $t_("rx") = "0,5" thin "s"$ (xe vẫn chạy thẳng đều). Sau đó xe hãm phanh chuyển động chậm dần đều với gia tốc $a = -2 thin "m/s"^2$. Tổng quãng đường xe đi được từ lúc nhìn thấy chướng ngại vật đến khi dừng hẳn là:],
  type: "mcq",
  options: (
    [$25 thin "m"$.],
    [$30 thin "m"$.],
    [$20 thin "m"$.],
    [$35 thin "m"$.],
  ),
  ans: "B",
  sol: [
    - Quãng đường xe đi trong thời gian phản xạ: $s_1 = v_0 t_("rx") = 10 dot "0,5" = 5 thin "m"$.
    - Quãng đường hãm phanh đến khi dừng hẳn ($v = 0$):
      $s_2 = frac(v^2 - v_0^2, 2 a) = frac(0 - 10^2, 2 dot (-2)) = frac(-100, -4) = 25 thin "m"$.
    Tổng quãng đường xe đi được: $s = s_1 + s_2 = 5 + 25 = 30 thin "m"$.
  ],
)

// Câu 12
#vp-question(
  [VĐV quần vợt thực hiện cú đánh bóng ném ngang từ độ cao $h = "2,45" thin "m"$ so với mặt sân bằng phẳng. Để quả bóng bay qua phía trên lưới cao $h_("lưới") = "0,95" thin "m"$ nằm cách vị trí đánh bóng khoảng nằm ngang $D = 12 thin "m"$, tốc độ ném ban đầu $v_0$ tối thiểu của quả bóng phải là (lấy $g = 10 thin "m/s"^2$, bỏ qua lực cản không khí):],
  type: "mcq",
  options: (
    [$"12,0" thin "m/s"$.],
    [$"21,9" thin "m/s"$.],
    [$"15,5" thin "m/s"$.],
    [$"24,0" thin "m/s"$.],
  ),
  ans: "B",
  sol: [
    Thời gian để bóng hạ độ cao từ $h$ xuống mép trên lưới $h_("lưới")$:
    $Delta h = h - h_("lưới") = "2,45" - "0,95" = "1,5" thin "m"$.
    $t = sqrt(frac(2 Delta h, g)) = sqrt(frac(2 dot "1,5", 10)) = sqrt("0,3") approx "0,5477" thin "s"$.
    Để bóng vượt qua lưới cách $D = 12 thin "m"$, tốc độ ban đầu tối thiểu là:
    $v_0 = frac(D, t) = frac(12, sqrt("0,3")) approx "21,9" thin "m/s"$.
  ],
)
= PHẦN II. CÂU TRẮC NGHIỆM ĐÚNG/SAI (2 CÂU - 4,0 ĐIỂM)
#sbt-instructions(reset: true)[Thí sinh xét tính Đúng/Sai cho từng ý a), b), c), d) trong mỗi câu.]

// Câu 1 - Đúng/Sai
#vp-question(
  [Một đoàn tàu điện ngầm Metro di chuyển thẳng giữa hai ga A và B cách nhau $D = 1200 thin "m"$ gồm 3 giai đoạn: (1) Khởi hành từ ga A tăng tốc thẳng nhanh dần đều với gia tốc $a_1 = +"1,0" thin "m/s"^2$ đạt tốc độ tối đa $v_("max") = 20 thin "m/s"$; (2) Chuyển động thẳng đều với $v_("max") = 20 thin "m/s"$; (3) Hãm phanh chậm dần đều với gia tốc $a_3 = -"2,0" thin "m/s"^2$ dừng hẳn tại ga B.],
  type: "tf",
  statements: (
    [Quãng đường đoàn tàu đi được trong giai đoạn tăng tốc là $s_1 = 200 thin "m"$.],
    [Quãng đường đoàn tàu đi được trong giai đoạn hãm phanh là $s_3 = 100 thin "m"$.],
    [Quãng đường đoàn tàu di chuyển ở giai đoạn chạy đều là $s_2 = 900 thin "m"$.],
    [Tổng thời gian đoàn tàu di chuyển từ ga A đến ga B là $T = 75 thin "s"$.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "Đ"),
  sol: [
    - a) *Đúng:* $s_1 = frac(v_("max")^2 - 0, 2 a_1) = frac(20^2, 2 dot 1) = 200 thin "m"$. Thời gian tăng tốc: $t_1 = 20/1 = 20 thin "s"$.
    - b) *Đúng:* $s_3 = frac(0 - v_("max")^2, 2 a_3) = frac(-400, 2 dot (-2)) = 100 thin "m"$. Thời gian hãm phanh: $t_3 = 20/2 = 10 thin "s"$.
    - c) *Đúng:* Quãng đường chạy đều: $s_2 = D - s_1 - s_3 = 1200 - 200 - 100 = 900 thin "m"$.
    - d) *Đúng:* Thời gian chạy đều: $t_2 = frac(s_2, v_("max")) = 900/20 = 45 thin "s"$. Tổng thời gian: $T = t_1 + t_2 + t_3 = 20 + 45 + 10 = 75 thin "s"$.
  ],
)

// Câu 2 - Đúng/Sai
#vp-question(
  [Trong buổi thực hành Vật lí, học sinh đặt lò xo bắn viên bi thép theo phương ngang từ mép bàn thí nghiệm cao $h = "1,25" thin "m"$ so với sàn nhà bằng phẳng (như hình bên). Lấy $g = 10 thin "m/s"^2$, bỏ qua lực cản không khí.
    #align(center, hinh-de9-tf-02())
  ],
  type: "tf",
  statements: (
    [Thời gian rơi của viên bi thép từ mép bàn chạm sàn nhà là $t = "0,5" thin "s"$.],
    [Tầm xa $L$ của viên bi tỉ lệ thuận với tốc độ ném ban đầu $v_0$.],
    [Nếu điều chỉnh lò xo để viên bi được ném ra với tốc độ $v_0 = "4,0" thin "m/s"$, viên bi sẽ rơi chạm sàn tại điểm cách mép bàn thẳng đứng một khoảng nằm ngang $L = "2,0" thin "m"$.],
    [Ngay trước khi va chạm sàn nhà, vectơ vận tốc của viên bi hợp với phương nằm ngang một góc $theta = 45 degree$.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [
    - a) *Đúng:* Thời gian rơi chạm sàn: $t = sqrt(frac(2 h, g)) = sqrt(frac(2 dot "1,25", 10)) = sqrt("0,25") = "0,5" thin "s"$.
    - b) *Đúng:* Tầm xa $L = v_0 t = "0,5" v_0$ tỉ lệ thuận với tốc độ ném ban đầu $v_0$.
    - c) *Đúng:* Khi $v_0 = 4 thin "m/s"$, tầm xa là $L = 4 dot "0,5" = 2 thin "m"$.
    - d) *Sai:* Vận tốc thành phần thẳng đứng: $v_y = g t = 10 dot "0,5" = 5 thin "m/s"$.
      Góc chạm sàn thỏa mãn: $tan theta = frac(v_y, v_x) = 5/4 = "1,25" arrow.r theta approx "51,34"^degree eq.not 45 degree$.
  ],
)
= PHẦN III. CÂU TRẢ LỜI NGẮN (4 CÂU - 2,0 ĐIỂM)
#sbt-instructions(reset: true)[Thí sinh tính toán và điền đáp số dạng số.]

// Câu 1 - Trả lời ngắn
#vp-question(
  [Để xác định thể tích một quả cầu kim loại nhỏ, học sinh đo bán kính $R = ("2,00" plus.minus "0,02") thin "cm"$. Công thức tính thể tích quả cầu là $V = 4/3 pi R^3$. Tính sai số tỉ đối $delta V$ của phép đo thể tích này (theo đơn vị phần trăm $\%$).],
  type: "short",
  ans: "3",
  short-boxes: 1,
  sol: [
    Sai số tỉ đối của bán kính: $delta R = frac(Delta R, overline(R)) dot 100% = frac("0,02", "2,00") dot 100% = 1%$.
    Vì $V = 4/3 pi R^3$, sai số tỉ đối của thể tích: $delta V = 3 dot delta R = 3 dot 1% = 3%$.
  ],
)

// Câu 2 - Trả lời ngắn
#vp-question(
  [Một hòn đá được ném xiên từ mặt đất với tốc độ ban đầu $v_0$ hợp góc $alpha = 60 degree$ so với phương ngang. Biết tầm xa thu được trên mặt đất là $L = 40 sqrt(3) thin "m" approx "69,28" thin "m"$. Lấy $g = 10 thin "m/s"^2$, bỏ qua lực cản không khí. Tính tốc độ ném ban đầu $v_0$ của hòn đá (theo đơn vị $"m/s"$, làm tròn đến 1 chữ số thập phân).],
  type: "short",
  ans: "28,3",
  short-boxes: 4,
  sol: [
    Công thức tầm xa ném xiên từ mặt đất:
    $L = frac(v_0^2 sin(2 alpha), g) arrow.r 40 sqrt(3) = frac(v_0^2 sin(120 degree), 10) = frac(v_0^2 dot frac(sqrt(3), 2), 10) = frac(v_0^2 sqrt(3), 20)$.
    Suy ra: $v_0^2 = 40 dot 20 = 800 arrow.r v_0 = sqrt(800) = 20 sqrt(2) approx "28,28" thin "m/s" approx "28,3" thin "m/s"$.
  ],
)

// Câu 3 - Trả lời ngắn
#vp-question(
  [Ô tô điện VinFast VF8 đang chạy với tốc độ $v_1 = 10 thin "m/s"$ thì đạp ga tăng tốc thẳng nhanh dần đều. Sau khi đi được quãng đường $s_1 = 40 thin "m"$, tốc độ xe tăng lên $v_2 = 20 thin "m/s"$. Nếu xe tiếp tục giữ nguyên gia tốc đó và đi thêm quãng đường $s_2 = 50 thin "m"$ nữa thì tốc độ $v_3$ của xe đạt bao nhiêu (theo đơn vị $"m/s"$, làm tròn đến 1 chữ số thập phân)?],
  type: "short",
  ans: "27,8",
  short-boxes: 4,
  sol: [
    Gia tốc của xe:
    $a = frac(v_2^2 - v_1^2, 2 s_1) = frac(20^2 - 10^2, 2 dot 40) = frac(300, 80) = "3,75" thin "m/s"^2$.
    Khi xe đi thêm quãng đường $s_2 = 50 thin "m"$:
    $v_3^2 - v_2^2 = 2 a s_2 arrow.r v_3^2 = 20^2 + 2 dot "3,75" dot 50 = 400 + 375 = 775$.
    Suy ra: $v_3 = sqrt(775) approx "27,8388" thin "m/s" approx "27,8" thin "m/s"$.
  ],
)

// Câu 4 - Trả lời ngắn
#vp-question(
  [Thả rơi tự do một viên bi thép từ đỉnh một tháp cao tại nơi có gia tốc trọng trường $g = 10 thin "m/s"^2$. Biết rằng trong riêng $1 thin "s"$ cuối cùng trước khi chạm đất, viên bi rơi được quãng đường $h_("cuối") = 35 thin "m"$. Tính tổng độ cao $H$ ban đầu của tháp (theo đơn vị mét $"m"$).],
  type: "short",
  ans: "80",
  short-boxes: 2,
  sol: [
    Gọi $t$ là tổng thời gian viên bi rơi tự do đến khi chạm đất ($t > 1 thin "s"$).
    Quãng đường rơi trong 1 s cuối cùng:
    $h_("cuối") = 1/2 g t^2 - 1/2 g (t - 1)^2 = g (t - "0,5")$.
    Thay số: $35 = 10 dot (t - "0,5") arrow.r t - "0,5" = "3,5" arrow.r t = 4 thin "s"$.
    Tổng độ cao của tháp: $H = 1/2 g t^2 = 1/2 dot 10 dot 4^2 = 80 thin "m"$.
  ],
)
= PHẦN IV. CÂU TỰ LUẬN (2 CÂU - 1,0 ĐIỂM)
#sbt-essay-instructions(reset: true)[Thí sinh trình bày chi tiết các bước lập luận vật lý và tính toán.]

// Câu 1 - Tự luận
#vp-question(
  [Một ô tô đang di chuyển thẳng với tốc độ $v_0 = 72 thin "km/h"$ ($20 thin "m/s"$). Khi gặp đường trơn ướt mưa, gia tốc hãm phanh cực đại của xe giảm xuống chỉ còn $a_("ướt") = -"2,5" thin "m/s"^2$ (trong khi trên đường khô gia tốc hãm là $a_("khô") = -"5,0" thin "m/s"^2$).
    #parbreak() a) Tính quãng đường hãm phanh $s_("khô")$ và $s_("ướt")$ từ lúc đạp phanh đến khi xe dừng hẳn trong hai trường hợp đường khô và đường ướt.
    #parbreak() b) Rút ra nhận xét về tầm quan trọng của việc giữ khoảng cách an toàn và giảm tốc độ khi di chuyển trong điều kiện thời tiết mưa gió.
  ],
  type: "essay",
  lines: 5,
  sol: [
    a) Quãng đường hãm phanh của ô tô đến khi dừng hẳn ($v = 0$):
    - Trên đường khô: $s_("khô") = frac(v^2 - v_0^2, 2 a_("khô")) = frac(0 - 20^2, 2 dot (-5)) = frac(-400, -10) = 40 thin "m"$.
    - Trên đường ướt: $s_("ướt") = frac(v^2 - v_0^2, 2 a_("ướt")) = frac(0 - 20^2, 2 dot (-"2,5")) = frac(-400, -5) = 80 thin "m"$.

    b) Nhận xét an toàn giao thông:
    Quãng đường phanh trên đường trơn ướt dài gấp đôi so với đường khô (80 m so với 40 m) do hệ số ma sát giữa bánh xe và mặt đường bị giảm mạnh. Vì vậy, người điều khiển phương tiện khi trời mưa phải chủ động giảm tốc độ và gia tăng khoảng cách an toàn tối thiểu với xe phía trước lên ít nhất gấp đôi để phòng tránh va chạm nguy hiểm.
  ],
)

// Câu 2 - Tự luận
#vp-question(
  [Trong một trận thi đấu bóng đá trên sân Mỹ Đình, một tiền vệ thực hiện cú sút phạt trực tiếp từ khoảng cách $D = 25 thin "m"$ so với khung thành. Xà ngang khung thành có chiều cao $h_x = "2,44" thin "m"$. Quả bóng rời chân cầu thủ từ mặt sân với tốc độ $v_0 = 20 thin "m/s"$ hợp góc $alpha = 30 degree$ so với mặt sân bằng phẳng. Lấy $g = "9,8" thin "m/s"^2$, bỏ qua lực cản không khí.
    #parbreak() a) Viết phương trình quỹ đạo $y(x)$ của quả bóng trong hệ tọa độ $O x y$ (gốc $O$ tại điểm sút bóng, trục $O x$ nằm ngang, $O y$ thẳng đứng hướng lên).
    #parbreak() b) Hỏi quả bóng khi bay đến vị trí khung thành ($x = 25 thin "m"$) có bị vọt qua phía trên xà ngang hay chui vào dưới xà ngang? Tính khoảng cách thẳng đứng giữa quả bóng và xà ngang tại thời điểm đó.
  ],
  type: "essay",
  lines: 5,
  sol: [
    a) Chọn hệ tọa độ $O x y$ có gốc $O$ tại vị trí sút bóng trên mặt sân, trục $O x$ nằm ngang hướng về khung thành, trục $O y$ thẳng đứng hướng lên:
    - Theo phương ngang: $x = (v_0 cos 30 degree) t = 20 dot (sqrt(3)/2) t = 10 sqrt(3) t arrow.r t = frac(x, 10 sqrt(3))$.
    - Theo phương thẳng đứng: $y = (v_0 sin 30 degree) t - 1/2 g t^2 = 10 t - "4,9" t^2$.
    Phương trình quỹ đạo của quả bóng:
    $y(x) = frac(x, sqrt(3)) - "4,9" dot (frac(x, 10 sqrt(3)))^2 = frac(x, sqrt(3)) - frac("4,9" x^2, 300) thin ("m")$.

    b) Tại vị trí khung thành ($x = D = 25 thin "m"$):
    Độ cao của quả bóng khi đó:
    $y(25) = frac(25, sqrt(3)) - frac("4,9" dot 25^2, 300) = "14,43" - frac("3062,5", 300) = "14,43" - "10,21" = "4,22" thin "m"$.
    Vì $y(25) = "4,22" thin "m" > h_x = "2,44" thin "m"$ nên quả bóng bay vọt qua phía trên xà ngang khung thành.
    Khoảng cách thẳng đứng giữa bóng và xà ngang:
    $Delta h = y(25) - h_x = "4,22" - "2,44" = "1,78" thin "m" approx "1,8" thin "m"$.
  ],
)
// =========================================================================
// ĐỀ SỐ 10
// =========================================================================

#de-kiem-tra(
  num: "10",
  title: "KIỂM TRA GIỮA HỌC KỲ I",
  subtitle: [Thời gian làm bài: 45 phút (Không kể thời gian phát đề)],
  label: <de-kt-10>,
)

= PHẦN I. CÂU TRẮC NGHIỆM 4 PHƯƠNG ÁN (12 CÂU - 3,0 ĐIỂM)
#sbt-instructions(reset: true)[Thí sinh chọn 01 phương án đúng nhất cho mỗi câu hỏi.]

// Câu 1
#vp-question(
  [Kí hiệu cảnh báo có hình đầu lâu xương chéo màu đen trong hình tam giác viền đỏ, nền vàng biểu thị mối nguy hiểm nào trong phòng thí nghiệm?],
  type: "mcq",
  options: (
    [Nguy hiểm chất độc hóa học.],
    [Nguy hiểm nguồn điện cao áp.],
    [Nguy hiểm chất phóng xạ.],
    [Nguy hiểm nhiệt độ cao.],
  ),
  ans: "A",
  sol: [Biểu tượng hình đầu lâu xương chéo là kí hiệu cảnh báo nguy hiểm độc chất (chất độc hại, có thể gây ngộ độc hoặc tử vong khi hít, nuốt hoặc tiếp xúc).],
)

// Câu 2
#vp-question(
  [Khi ghi kết quả đo đường kính viên bi thu được $overline(d) = "12,345" thin "mm"$ và sai số tuyệt đối $Delta d = "0,023" thin "mm"$. Cách viết kết quả đo chuẩn theo quy tắc làm tròn số là:],
  type: "mcq",
  options: (
    [$d = ("12,345" plus.minus "0,023") thin "mm"$.],
    [$d = ("12,35" plus.minus "0,02") thin "mm"$.],
    [$d = ("12,345" plus.minus "0,02") thin "mm"$.],
    [$d = ("12,3" plus.minus "0,02") thin "mm"$.],
  ),
  ans: "B",
  sol: [Theo quy tắc làm tròn sai số trong Vật lí: Sai số tuyệt đối thường được làm tròn đến 1 chữ số có nghĩa ($Delta d = "0,02" thin "mm"$), và giá trị trung bình được làm tròn đến bậc thập phân tương ứng với sai số tuyệt đối ($overline(d) = "12,35" thin "mm"$). Kết quả chuẩn là $d = ("12,35" plus.minus "0,02") thin "mm"$.],
)

// Câu 3
#vp-question(
  [Công thức cộng vận tốc của Galileo/Newton giữa 3 hệ quy chiếu (1: vật chuyển động, 2: hệ quy chiếu chuyển động, 3: hệ quy chiếu đứng yên) được viết dưới dạng vectơ là:],
  type: "mcq",
  options: (
    [$bold(v)_(13) = bold(v)_(12) + bold(v)_(23)$.],
    [$bold(v)_(13) = bold(v)_(12) - bold(v)_(23)$.],
    [$bold(v)_(12) = bold(v)_(13) + bold(v)_(23)$.],
    [$v_(13) = v_(12) + v_(23)$.],
  ),
  ans: "A",
  sol: [Định lý cộng vận tốc: Vận tốc tuyệt đối bằng tổng vectơ của vận tốc tương đối và vận tốc kéo theo: $bold(v)_(13) = bold(v)_(12) + bold(v)_(23)$.],
)

// Câu 4
#vp-question(
  [Một rô-bốt di chuyển dọc theo đường thẳng: từ A đến B ($"AB" = 10 thin "m"$) theo chiều dương hết $4 thin "s"$, sau đó quay ngược lại từ B về C ($"BC" = 6 thin "m"$) hết $2 thin "s"$. Vận tốc trung bình $v_("tb")$ của rô-bốt trong toàn bộ chuyến đi là:],
  type: "mcq",
  options: (
    [$+"0,67" thin "m/s"$.],
    [$+"2,67" thin "m/s"$.],
    [$+"1,00" thin "m/s"$.],
    [$- "0,67" thin "m/s"$.],
  ),
  ans: "A",
  sol: [
    Độ dịch chuyển tổng hợp của rô-bốt: $d = x_C - x_A = 10 - 6 = +4 thin "m"$.
    Tổng thời gian chuyển động: $Delta t = 4 + 2 = 6 thin "s"$.
    Vận tốc trung bình: $v_("tb") = frac(d, Delta t) = frac(+4, 6) approx +"0,67" thin "m/s"$.
  ],
)

// Câu 5
#vp-question(
  [Phương trình độ dịch chuyển của một vật chuyển động thẳng có dạng $d = -6 t + t^2$ (với $d$ tính bằng mét, $t$ tính bằng giây). Vận tốc ban đầu $v_0$ và gia tốc $a$ của vật là:],
  type: "mcq",
  options: (
    [$v_0 = -6 thin "m/s"; a = +2 thin "m/s"^2$.],
    [$v_0 = -6 thin "m/s"; a = +1 thin "m/s"^2$.],
    [$v_0 = +6 thin "m/s"; a = -2 thin "m/s"^2$.],
    [$v_0 = -3 thin "m/s"; a = +2 thin "m/s"^2$.],
  ),
  ans: "A",
  sol: [So sánh phương trình $d = -6 t + t^2$ với phương trình chuẩn $d = v_0 t + 1/2 a t^2$, ta được: $v_0 = -6 thin "m/s"$ và $1/2 a = 1 arrow.r a = +2 thin "m/s"^2$.],
)

// Câu 6
#vp-question(
  [Phương trình quỹ đạo $y(x)$ của một vật được ném ngang từ độ cao $h$ với tốc độ ban đầu $v_0$ (gốc $O$ tại điểm ném, trục $O x$ nằm ngang, $O y$ thẳng đứng hướng xuống) có dạng:],
  type: "mcq",
  options: (
    [$y = frac(g, 2 v_0^2) x^2$.],
    [$y = frac(2 g, v_0^2) x^2$.],
    [$y = frac(v_0, 2 g) x$.],
    [$y = v_0 x - 1/2 g x^2$.],
  ),
  ans: "A",
  sol: [Từ $x = v_0 t arrow.r t = x / v_0$. Thay vào tọa độ rơi $y = 1/2 g t^2$, ta được phương trình quỹ đạo parabol: $y = frac(g, 2 v_0^2) x^2$.],
)

// Câu 7
#vp-question(
  [Tầm xa $L$ của một vật ném xiên từ mặt đất với tốc độ ban đầu $v_0$ góc $alpha$ bằng 4 lần độ cao cực đại $H_("max")$ ($L = 4 H_("max")$) khi góc ném $alpha$ bằng:],
  type: "mcq",
  options: (
    [$30 degree$.],
    [$45 degree$.],
    [$60 degree$.],
    [$75 degree$.],
  ),
  ans: "B",
  sol: [
    Ta có $L = frac(2 v_0^2 sin alpha cos alpha, g)$ và $H_("max") = frac(v_0^2 sin^2 alpha, 2 g)$.
    Theo đề bài: $L = 4 H_("max") arrow.r frac(2 v_0^2 sin alpha cos alpha, g) = 4 dot frac(v_0^2 sin^2 alpha, 2 g) arrow.r 2 sin alpha cos alpha = 2 sin^2 alpha arrow.r tan alpha = 1 arrow.r alpha = 45 degree$.
  ],
)

// Câu 8
#vp-question(
  [Thả một quả cầu thép nặng $1 thin "kg"$ và một quả cầu gỗ nhẹ $"0,1" thin "kg"$ có cùng kích thước hình học từ cùng độ cao $h = 20 thin "m"$ trong không khí thực tế. Phát biểu nào sau đây chính xác nhất?],
  type: "mcq",
  options: (
    [Quả cầu thép chạm đất trước quả cầu gỗ vì lực cản không khí so với trọng lượng của quả cầu thép nhỏ hơn.],
    [Cả hai quả cầu chạm đất hoàn toàn cùng lúc vì gia tốc rơi tự do không phụ thuộc khối lượng.],
    [Quả cầu gỗ chạm đất trước vì nhẹ hơn nên bị hút ít hơn.],
    [Quả cầu thép rơi chậm hơn vì nặng hơn.],
  ),
  ans: "A",
  sol: [Trong môi trường không khí thực tế, hai vật có cùng hình dạng kích thước chịu lực cản $F_c$ như nhau ở cùng vận tốc. Tuy nhiên, quả cầu thép có khối lượng lớn hơn nhiều nên gia tốc rơi $a = g - frac(F_c, m)$ của quả cầu thép lớn hơn, làm cho quả cầu thép rơi nhanh hơn và chạm đất trước.],
)

// Câu 9
#vp-question(
  [Đơn vị đo nào sau đây là đơn vị đo gia tốc trong hệ SI?],
  type: "mcq",
  options: (
    [$"m/s"$.],
    [$"m/s"^2$.],
    [$"kg" dot "m/s"$.],
    [$"N" dot "m"$.],
  ),
  ans: "B",
  sol: [Trong hệ đo lường quốc tế SI, đơn vị của gia tốc là mét trên giây bình phương ($"m/s"^2$).],
)

// Câu 10
#vp-question(
  [Một vật ném ngang từ độ cao $h = 20 thin "m"$ với tốc độ $v_0 = 10 thin "m/s"$. Lấy $g = 10 thin "m/s"^2$. Ngay trước khi chạm đất, góc $theta$ mà vectơ vận tốc $bold(v)$ hợp với phương nằm ngang là:],
  type: "mcq",
  options: (
    [$30 degree$.],
    [$45 degree$.],
    [$60 degree$.],
    [$75 degree$.],
  ),
  ans: "C",
  sol: [
    Thành phần vận tốc thẳng đứng chạm đất: $v_y = sqrt(2 g h) = sqrt(2 dot 10 dot 20) = 20 thin "m/s"$.
    Thành phần vận tốc ngang: $v_x = v_0 = 10 thin "m/s"$.
    Góc lệch: $tan theta = frac(v_y, v_x) = 20/10 = 2 arrow.r theta = arctan(2) approx "63,4"^degree approx 60 degree$.
  ],
)
// Câu 11
#vp-question(
  [Xe máy điện VinFast Feliz S tăng tốc thẳng nhanh dần đều từ trạng thái nghỉ, sau khi đi được quãng đường $s_1 = 25 thin "m"$ xe đạt tốc độ $v_1 = 10 thin "m/s"$. Gia tốc $a$ của xe máy điện là:],
  type: "mcq",
  options: (
    [$"2,0" thin "m/s"^2$.],
    [$"4,0" thin "m/s"^2$.],
    [$"1,0" thin "m/s"^2$.],
    [$"0,5" thin "m/s"^2$.],
  ),
  ans: "A",
  sol: [
    Áp dụng công thức độc lập với thời gian:
    $v_1^2 - v_0^2 = 2 a s_1 arrow.r a = frac(10^2 - 0, 2 dot 25) = frac(100, 50) = 2 thin "m/s"^2$.
  ],
)

// Câu 12
#vp-question(
  [Máy bay cứu trợ đang bay theo phương ngang với tốc độ $v_0 = 50 thin "m/s"$ ở độ cao $h = 180 thin "m"$ so với mặt đất. Để gói hàng rơi trúng một ô tô đang đứng yên trên đường, máy bay phải thả gói hàng khi khoảng cách nằm ngang $x$ đến ô tô bằng (lấy $g = 10 thin "m/s"^2$, bỏ qua lực cản không khí):],
  type: "mcq",
  options: (
    [$300 thin "m"$.],
    [$150 thin "m"$.],
    [$450 thin "m"$.],
    [$600 thin "m"$.],
  ),
  ans: "A",
  sol: [
    Thời gian rơi của gói hàng: $t = sqrt(frac(2 h, g)) = sqrt(frac(2 dot 180, 10)) = sqrt(36) = 6 thin "s"$.
    Khoảng cách nằm ngang từ điểm thả đến mục tiêu:
    $x = v_0 t = 50 dot 6 = 300 thin "m"$.
  ],
)
= PHẦN II. CÂU TRẮC NGHIỆM ĐÚNG/SAI (2 CÂU - 4,0 ĐIỂM)
#sbt-instructions(reset: true)[Thí sinh xét tính Đúng/Sai cho từng ý a), b), c), d) trong mỗi câu.]

// Câu 1 - Đúng/Sai
#vp-question(
  [Một xe vi phạm tốc độ chạy thẳng đều qua bốt cảnh sát giao thông với tốc độ không đổi $v_1 = 20 thin "m/s"$ ($72 thin "km/h"$). Đúng lúc đó ($t = 0$), xe cảnh sát từ trạng thái nghỉ tại bốt bắt đầu tăng tốc thẳng nhanh dần đều với gia tốc $a_2 = "4,0" thin "m/s"^2$ đuổi theo.],
  type: "tf",
  statements: (
    [Phương trình tọa độ của xe vi phạm là $x_1 = 20 t thin ("m; s")$.],
    [Phương trình tọa độ của xe cảnh sát là $x_2 = "2,0" t^2$.],
    [Sau thời gian $t = "5,0" thin "s"$, khoảng cách giữa hai xe đạt giá trị cực đại bằng $50 thin "m"$.],
    [Xe cảnh sát sẽ đuổi kịp xe vi phạm sau khoảng thời gian $t = "10,0" thin "s"$ kể từ khi bắt đầu xuất phát.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "Đ"),
  sol: [
    Chọn gốc tọa độ $O$ tại bốt cảnh sát, chiều dương là chiều chuyển động, gốc thời gian $t = 0$ lúc xe vi phạm qua bốt:
    - a) *Đúng:* Xe vi phạm chuyển động thẳng đều: $x_1 (t) = v_1 t = 20 t thin ("m")$.
    - b) *Đúng:* Xe cảnh sát khởi hành từ nghỉ: $x_2 (t) = 1/2 a_2 t^2 = 1/2 dot 4 dot t^2 = 2 t^2 thin ("m")$.
    - c) *Đúng:* Khoảng cách giữa hai xe: $d(t) = x_1 - x_2 = 20 t - 2 t^2$. Khoảng cách này đạt cực đại khi vận tốc hai xe bằng nhau ($v_2 = v_1 arrow.r 4 t = 20 arrow.r t = 5 thin "s"$). Khi đó $d_("max") = 20 dot 5 - 2 dot 5^2 = 100 - 50 = 50 thin "m"$.
    - d) *Đúng:* Hai xe gặp nhau khi $x_1 = x_2 arrow.r 20 t = 2 t^2 arrow.r t = 10 thin "s"$ (loại nghiệm $t = 0$).
  ],
)

// Câu 2 - Đúng/Sai
#vp-question(
  [Một quả cầu nhỏ được ném xiên từ độ cao $h_0 = "1,5" thin "m"$ so với mặt đất với tốc độ ban đầu $v_0 = 10 sqrt(2) thin "m/s"$ hợp góc $alpha = 45 degree$ so với phương ngang (như hình bên). Lấy $g = 10 thin "m/s"^2$, bỏ qua lực cản không khí.
    #align(center, hinh-de10-tf-02())
  ],
  type: "tf",
  statements: (
    [Thành phần vận tốc ban đầu nằm ngang là $v_(0 x) = 10 thin "m/s"$ và thẳng đứng là $v_(0 y) = 10 thin "m/s"$.],
    [Thời gian để quả cầu đạt đến độ cao cực đại kể từ lúc ném là $t_("đỉnh") = "1,0" thin "s"$.],
    [Độ cao cực đại $H_("max")$ của quả cầu so với mặt đất bằng $"5,0" thin "m"$.],
    [Thời gian từ lúc ném đến khi quả cầu rơi chạm mặt đất là $t_("tot") = "2,14" thin "s"$ (làm tròn 2 chữ số thập phân).],
  ),
  ans-tf: ("Đ", "Đ", "S", "Đ"),
  sol: [
    - a) *Đúng:* $v_(0 x) = v_0 cos 45 degree = 10 sqrt(2) dot frac(sqrt(2), 2) = 10 thin "m/s"$; $v_(0 y) = v_0 sin 45 degree = 10 thin "m/s"$.
    - b) *Đúng:* Thời gian lên đến đỉnh cao nhất: $t_("đỉnh") = frac(v_(0 y), g) = 10/10 = 1 thin "s"$.
    - c) *Sai:* Độ cao cực đại so với mặt đất gồm độ cao ném $h_0$ cộng thêm độ cao lên đỉnh:
      $H_("max") = h_0 + frac(v_(0 y)^2, 2 g) = "1,5" + frac(100, 20) = "1,5" + 5 = "6,5" thin "m"$ (không phải $"5,0" thin "m"$).
    - d) *Đúng:* Quả cầu chạm đất khi $y = 0 arrow.r "1,5" + 10 t - 5 t^2 = 0 arrow.r 5 t^2 - 10 t - "1,5" = 0$.
      Giải phương trình bậc hai nhận nghiệm dương: $t = frac(10 + sqrt(100 - 4 dot 5 dot (-"1,5")), 10) = frac(10 + sqrt(130), 10) approx frac(10 + "11,402", 10) approx "2,14" thin "s"$.
  ],
)
= PHẦN III. CÂU TRẢ LỜI NGẮN (4 CÂU - 2,0 ĐIỂM)
#sbt-instructions(reset: true)[Thí sinh tính toán và điền đáp số dạng số.]

// Câu 1 - Trả lời ngắn
#vp-question(
  [Trong bài thực hành xác định tốc độ trung bình, học sinh đo quãng đường $s = ("1,00" plus.minus "0,01") thin "m"$ và thời gian $t = ("0,20" plus.minus "0,01") thin "s"$. Công thức tính tốc độ là $v = s / t$. Tính sai số tỉ đối $delta v$ của phép đo tốc độ này (theo đơn vị phần trăm $\%$).],
  type: "short",
  ans: "6",
  short-boxes: 1,
  sol: [
    Sai số tỉ đối của quãng đường: $delta s = frac(Delta s, overline(s)) dot 100% = frac("0,01", "1,00") dot 100% = 1%$.
    Sai số tỉ đối của thời gian: $delta t = frac(Delta t, overline(t)) dot 100% = frac("0,01", "0,20") dot 100% = 5%$.
    Sai số tỉ đối của tốc độ: $delta v = delta s + delta t = 1% + 5% = 6%$.
  ],
)

// Câu 2 - Trả lời ngắn
#vp-question(
  [Một hòn đá được ném ngang từ độ cao $h = 20 thin "m"$ so với mặt đất tại nơi có $g = 10 thin "m/s"^2$. Biết khi rơi chạm đất, vectơ vận tốc $bold(v)$ hợp với phương ngang một góc $theta = 45 degree$. Tính tốc độ ném ban đầu $v_0$ của hòn đá (theo đơn vị $"m/s"$).],
  type: "short",
  ans: "20",
  short-boxes: 2,
  sol: [
    Vận tốc theo phương thẳng đứng khi chạm đất:
    $v_y = sqrt(2 g h) = sqrt(2 dot 10 dot 20) = 20 thin "m/s"$.
    Vì vectơ vận tốc hợp với phương ngang góc $45 degree$:
    $tan 45 degree = frac(v_y, v_x) = 1 arrow.r v_0 = v_x = v_y = 20 thin "m/s"$.
  ],
)

// Câu 3 - Trả lời ngắn
#vp-question(
  [Một đoàn tàu hỏa gồm 9 toa xe dài như nhau bắt đầu khởi hành tăng tốc thẳng nhanh dần đều từ trạng thái nghỉ ($v_0 = 0$). Toa xe thứ nhất đi qua trước mặt người quan sát đứng sát đường tàu trong khoảng thời gian $t_1 = "3,0" thin "s"$. Tính thời gian $Delta t_9$ để riêng toa xe thứ 9 đi qua trước mặt người quan sát (theo đơn vị giây $"s"$, làm tròn đến 2 chữ số thập phân).],
  type: "short",
  ans: "0,51",
  short-boxes: 4,
  sol: [
    Gọi $L$ là chiều dài mỗi toa xe.
    Toa 1 đi qua trong $t_1 = 3 thin "s"$: $L = 1/2 a t_1^2 arrow.r a = frac(2 L, t_1^2)$.
    Thời gian để 8 toa đầu đi qua: $8 L = 1/2 a t_8^2 arrow.r t_8 = t_1 sqrt(8) = 3 dot 2 sqrt(2) = 6 sqrt(2) approx "8,485" thin "s"$.
    Thời gian để cả 9 toa đi qua: $9 L = 1/2 a t_9^2 arrow.r t_9 = t_1 sqrt(9) = 3 dot 3 = 9 thin "s"$.
    Thời gian để riêng toa thứ 9 đi qua:
    $Delta t_9 = t_9 - t_8 = 9 - 6 sqrt(2) approx 9 - "8,4853" = "0,5147" thin "s" approx "0,51" thin "s"$.
  ],
)

// Câu 4 - Trả lời ngắn
#vp-question(
  [Tại cùng một vị trí thả ở độ cao lớn tại nơi có $g = 10 thin "m/s"^2$, vật 1 được thả rơi tự do không vận tốc đầu. Đúng $1 thin "s"$ sau, vật 2 cũng được thả rơi tự do không vận tốc đầu từ cùng vị trí đó. Tính khoảng cách thẳng đứng $Delta h$ giữa hai vật (theo đơn vị mét $"m"$) tại thời điểm sau khi vật 2 thả được $2 thin "s"$.],
  type: "short",
  ans: "25",
  short-boxes: 2,
  sol: [
    Khi vật 2 rơi được $t_2 = 2 thin "s"$, vật 1 đã rơi được $t_1 = t_2 + 1 = 3 thin "s"$.
    Quãng đường rơi của vật 1: $s_1 = 1/2 g t_1^2 = 1/2 dot 10 dot 3^2 = 45 thin "m"$.
    Quãng đường rơi của vật 2: $s_2 = 1/2 g t_2^2 = 1/2 dot 10 dot 2^2 = 20 thin "m"$.
    Khoảng cách thẳng đứng giữa hai vật: $Delta h = s_1 - s_2 = 45 - 20 = 25 thin "m"$.
  ],
)
= PHẦN IV. CÂU TỰ LUẬN (2 CÂU - 1,0 ĐIỂM)
#sbt-essay-instructions(reset: true)[Thí sinh trình bày chi tiết các bước lập luận vật lý và tính toán.]

// Câu 1 - Tự luận
#vp-question(
  [Một ô tô điện VinFast VF8 đang tiến về phía ngã tư với tốc độ không đổi $v_0 = 15 thin "m/s"$ ($54 thin "km/h"$). Khi xe còn cách vạch dừng ngã tư một khoảng $D = 40 thin "m"$, đèn tín hiệu chuyển sang vàng kéo dài $t_v = "2,0" thin "s"$ trước khi sang đỏ. Gia tốc hãm phanh cực đại của xe là $a_h = -"4,0" thin "m/s"^2$.
    #parbreak() a) Nếu tài xế quyết định hãm phanh ngay lập tức, xe có dừng lại an toàn trước vạch dừng ngã tư hay không?
    #parbreak() b) Nếu tài xế quyết định giữ nguyên tốc độ $v_0 = 15 thin "m/s"$, xe có kịp vượt qua vạch dừng ngã tư trước khi đèn chuyển sang đỏ hay không? Từ đó đưa ra lời khuyên an toàn cho người lái xe.
  ],
  type: "essay",
  lines: 5,
  sol: [
    a) Quãng đường hãm phanh đến khi xe dừng hẳn ($v = 0$):
    $s_h = frac(v^2 - v_0^2, 2 a_h) = frac(0 - 15^2, 2 dot (-4)) = frac(-225, -8) = "28,125" thin "m"$.
    Vì $s_h = "28,125" thin "m" < D = 40 thin "m"$, xe dừng lại an toàn cách vạch dừng một khoảng $Delta s = 40 - "28,125" = "11,875" thin "m"$.

    b) Nếu tài xế giữ nguyên tốc độ, quãng đường xe đi được trong thời gian đèn vàng $t_v = 2 thin "s"$ là:
    $s = v_0 t_v = 15 dot 2 = 30 thin "m"$.
    Vì $s = 30 thin "m" < D = 40 thin "m"$, khi đèn chuyển sang đỏ xe vẫn còn cách vạch dừng ngã tư $10 thin "m"$ (sẽ phạm lỗi vượt đèn đỏ).
    *Lời khuyên an toàn:* Tài xế nên đạp phanh ngay khi thấy đèn vàng để dừng xe an toàn trước vạch dừng, tuyệt đối không cố tăng ga hoặc duy trì tốc độ để vượt qua ngã tư.
  ],
)

// Câu 2 - Tự luận
#vp-question(
  [Một vận động viên bóng rổ thực hiện cú ném bóng vào rổ từ khoảng cách nằm ngang $D = "4,5" thin "m"$ so với vành rổ. Vành rổ ở độ cao $h_r = "3,05" thin "m"$, điểm ném bóng rời tay ở độ cao $h_0 = "2,05" thin "m"$ so với mặt sân bằng phẳng. Bóng được ném với góc $alpha = 45 degree$ so với phương ngang hướng về vành rổ. Lấy $g = 10 thin "m/s"^2$, bỏ qua lực cản không khí.
    #parbreak() a) Viết phương trình quỹ đạo $y(x)$ của quả bóng rổ theo tốc độ ném ban đầu $v_0$ (chọn gốc $O$ tại điểm ném bóng lúc $t = 0$, trục $O x$ nằm ngang, $O y$ thẳng đứng hướng lên).
    #parbreak() b) Tính tốc độ ném ban đầu $v_0$ cần thiết để quả bóng lọt chính xác vào vành rổ.
  ],
  type: "essay",
  lines: 5,
  sol: [
    a) Chọn hệ tọa độ $O x y$ có gốc $O$ tại vị trí bóng rời tay, trục $O x$ nằm ngang hướng về vành rổ, trục $O y$ thẳng đứng hướng lên:
    - Phương trình tọa độ theo phương ngang: $x = (v_0 cos 45 degree) t = frac(v_0 sqrt(2), 2) t arrow.r t = frac(x sqrt(2), v_0)$.
    - Phương trình tọa độ theo phương thẳng đứng: $y = (v_0 sin 45 degree) t - 1/2 g t^2 = frac(v_0 sqrt(2), 2) t - 5 t^2$.
    Phương trình quỹ đạo của quả bóng rổ:
    $y(x) = x - 5 dot (frac(x sqrt(2), v_0))^2 = x - frac(10 x^2, v_0^2) thin ("m")$.

    b) Tọa độ của vành rổ trong hệ quy chiếu đã chọn:
    - $x_r = D = "4,5" thin "m"$.
    - $y_r = h_r - h_0 = "3,05" - "2,05" = 1 thin "m"$.
    Để bóng lọt vào vành rổ, tọa độ $(x_r, y_r)$ phải thỏa mãn phương trình quỹ đạo:
    $1 = "4,5" - frac(10 dot ("4,5")^2, v_0^2) arrow.r frac(10 dot "20,25", v_0^2) = "3,5" arrow.r frac("202,5", v_0^2) = "3,5"$.
    Suy ra: $v_0^2 = frac("202,5", "3,5") = frac(405, 7) approx "57,857" arrow.r v_0 approx "7,61" thin "m/s"$.
  ],
)


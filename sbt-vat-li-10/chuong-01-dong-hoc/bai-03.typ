#import "../cau-hinh.typ": *

// Nguồn nguyên văn: nguon/bai-03-goc.txt; hiệu đính: nguon/bai-03-ghi-chu.md.
// Mỗi câu là một vp-question độc lập; đáp án và lời giải ẩn trên bản học sinh.
#sbt-bai(num: "3", title: "Tốc độ, Vận tốc và Thực hành đo tốc độ", label: <bai-03>)

= Phần I. Trắc nghiệm khách quan
#sbt-instructions(reset: true)[Chọn một phương án đúng trong mỗi câu.]

// MCQ-01 — Vận tốc của mưa đối với xe
#vp-question(
  [Một ô tô chạy thẳng đều về Đông với tốc độ $108 thin "km/h"$. Mưa rơi thẳng đứng với tốc độ $15 thin "m/s"$ so với mặt đất. Trong hệ quy chiếu gắn với xe, tốc độ của giọt mưa và góc giữa vectơ vận tốc của nó với phương thẳng đứng hướng xuống lần lượt là bao nhiêu?],
  type: "mcq",
  options: (
    [$"33,54" thin "m/s"$ và $"63,4"^°$.],
    [$"33,54" thin "m/s"$ và $"26,6"^°$.],
    [$"45,00" thin "m/s"$ và $"63,4"^°$.],
    [$"30,00" thin "m/s"$ và $"45,0"^°$.],
  ),
  ans: "A",
  sol: [Đổi $108 thin "km/h" = 30 thin "m/s"$. Vận tốc mưa so với xe có thành phần ngang $30 thin "m/s"$ về Tây và thành phần đứng $15 thin "m/s"$ hướng xuống. Do đó $v = sqrt(30^2 + 15^2) approx "33,54" thin "m/s"$; $tan theta = 30/15 = 2$, nên $theta approx "63,4"^°$.],
)

// MCQ-02 — Tốc độ trung bình và vận tốc trung bình
#vp-question(
  [Một ô tô chuyển động trên đường thẳng. Trong một phần ba tổng quãng đường, xe đi theo chiều dương với tốc độ $60 thin "km/h"$; sau đó quay đầu và đi hai phần ba tổng quãng đường theo chiều âm với tốc độ $40 thin "km/h"$. Bỏ qua thời gian quay đầu. Tốc độ trung bình và vận tốc trung bình của cả hành trình lần lượt là bao nhiêu?],
  type: "mcq",
  options: (
    [$45 thin "km/h"$ và $-15 thin "km/h"$.],
    [$45 thin "km/h"$ và $+15 thin "km/h"$.],
    [$48 thin "km/h"$ và $-16 thin "km/h"$.],
    [$50 thin "km/h"$ và $0 thin "km/h"$.],
  ),
  ans: "A",
  sol: [Gọi tổng quãng đường là $S$ (km). Tổng thời gian $T = (S/3)/60 + (2 S/3)/40 = S/45$ (giờ). Độ dịch chuyển $d = S/3 - 2 S/3 = -S/3$. Vậy tốc độ trung bình $S/T = 45 thin "km/h"$, còn vận tốc trung bình $d/T = -15 thin "km/h"$.],
)

// MCQ-03 — Tọa độ biến thiên theo hàm bậc hai
#vp-question(
  [Một vật trên trục $O x$ có tọa độ $x(t) = 2 t^2 - 8 t + 6$, với $x$ tính bằng mét, $t$ bằng giây. Phát biểu nào *sai*?],
  type: "mcq",
  options: (
    [Vận tốc tại $t = 0$ bằng $-8 thin "m/s"$.],
    [Vận tốc tại $t = 2 thin "s"$ bằng không.],
    [Vận tốc trung bình từ $t = 0$ đến $t = 4 thin "s"$ bằng không.],
    [Tốc độ trung bình từ $t = 0$ đến $t = 4 thin "s"$ bằng không.],
  ),
  ans: "D",
  sol: [Vận tốc là độ dốc của đồ thị tọa độ–thời gian: $v(t) = 4 t - 8$ (m/s). Do đó $v(0) = -8 thin "m/s"$, $v(2) = 0$. Tọa độ $x(0) = 6$, $x(2) = -2$, $x(4) = 6$ (m). Trong 4 giây, độ dịch chuyển bằng không nhưng quãng đường $s = 8 + 8 = 16 thin "m"$, nên tốc độ trung bình là $4 thin "m/s"$, không phải bằng không.],
)

// MCQ-04 — Hướng mũi thuyền để sang đúng bến
#vp-question(
  [Hai bến A, B ở hai bờ đối diện của một con sông thẳng, AB vuông góc với bờ. Dòng nước chảy song song với bờ với tốc độ $9 thin "km/h"$. Thuyền có tốc độ $15 thin "km/h"$ so với nước. Để đi thẳng từ A đến B, mũi thuyền phải lệch góc nào so với AB?],
  type: "mcq",
  options: (
    [$"36,87"^°$ về thượng lưu.],
    [$"53,13"^°$ về hạ lưu.],
    [$"30,00"^°$ về thượng lưu.],
    [$"36,87"^°$ về hạ lưu.],
  ),
  ans: "A",
  sol: [Thành phần vận tốc của thuyền hướng ngược dòng phải triệt tiêu vận tốc nước: $15 sin alpha = 9$. Suy ra $alpha approx "36,87"^°$, lệch về thượng lưu.],
)

// MCQ-05 — Bề rộng hữu hiệu của tấm chắn sáng
#vp-question(
  [Một xe lăn mang tấm chắn sáng mỏng có bề rộng $s = "10,0" thin "mm"$, chuyển động vuông góc với tia của cổng quang điện. Trong mô hình đang xét, khi tấm chắn đặt nghiêng, quãng đường xe đi trong thời gian chắn sáng $t$ là $s_("hiệu dụng") = s sin 75^°$. Coi tốc độ không đổi trong khoảng này. Nếu vẫn tính $v_("đo") = s/t$, kết quả sẽ như thế nào so với tốc độ thực?],
  type: "mcq",
  options: (
    [Lớn hơn khoảng $"3,5"%$.],
    [Nhỏ hơn khoảng $"3,5"%$.],
    [Lớn hơn khoảng $"25,9"%$.],
    [Nhỏ hơn khoảng $"25,9"%$.],
  ),
  ans: "A",
  sol: [Ta có $t = frac(s sin 75^°, v_("thực"))$, nên $v_("đo")/v_("thực") = frac(1, sin 75^°) approx "1,0353"$. Kết quả lớn hơn tốc độ thực khoảng $"3,5"%$. Công thức bề rộng hữu hiệu ở đây là giả thiết riêng của mô hình đã cho.],
)

// MCQ-06 — Độ biến thiên vectơ vận tốc
#vp-question(
  [Kim giây dài $10 thin "cm"$ quay đều, mỗi vòng hết $60 thin "s"$. Tại số 12, vận tốc đầu kim hướng sang phải; tại số 3, vận tốc hướng xuống. Độ lớn độ biến thiên vectơ vận tốc giữa hai thời điểm đó xấp xỉ bằng bao nhiêu?],
  type: "mcq",
  options: (
    [$0 thin "cm/s"$.],
    [$"1,05" thin "cm/s"$.],
    [$"1,48" thin "cm/s"$.],
    [$"2,09" thin "cm/s"$.],
  ),
  ans: "C",
  sol: [Tốc độ đầu kim $v = frac(2 pi R, T) = pi/3 thin "cm/s"$. Hai vectơ vận tốc vuông góc, cùng độ lớn, nên $abs(Delta arrow(v)) = sqrt(v^2 + v^2) = pi sqrt(2)/3 approx "1,48" thin "cm/s"$.],
)

// MCQ-07 — Đồ thị có góc gãy
#vp-question(
  [Trong một mô hình lí tưởng, đồ thị độ dịch chuyển–thời gian gồm hai đoạn thẳng nối $(0; 0)$ với $(3; 12)$ rồi với $(7; 4)$; thời gian tính bằng giây, độ dịch chuyển bằng mét. Đồ thị có góc gãy tại $t = 3 thin "s"$. Nhận định nào đúng về vận tốc tức thời tại chính thời điểm này?],
  type: "mcq",
  options: (
    [$v = +4 thin "m/s"$.],
    [$v = -2 thin "m/s"$.],
    [$v = 0$ vì vật đổi chiều.],
    [Không có vận tốc tức thời xác định tại góc gãy của mô hình.],
  ),
  ans: "D",
  sol: [Độ dốc trước góc gãy là $12/3 = 4 thin "m/s"$; sau góc gãy là $(4 - 12)/(7 - 3) = -2 thin "m/s"$. Hai độ dốc khác nhau nên mô hình không xác định một vận tốc tức thời duy nhất tại góc gãy. Chuyển động thực cần một khoảng chuyển tiếp để đổi vận tốc.],
)

// MCQ-08 — Trung bình theo thời gian
#vp-question(
  [Một xe máy đi từ A đến B, chạy với tốc độ $30 thin "km/h"$ trong một phần tư tổng thời gian và $50 thin "km/h"$ trong thời gian còn lại. Tốc độ trung bình là bao nhiêu?],
  type: "mcq",
  options: (
    [$40 thin "km/h"$.],
    [$45 thin "km/h"$.],
    [$"42,5" thin "km/h"$.],
    [$"43,3" thin "km/h"$.],
  ),
  ans: "B",
  sol: [Gọi tổng thời gian là $T$. Tốc độ trung bình $v_("tb") = (30 dot T/4 + 50 dot 3 T/4)/T = 45 thin "km/h"$.],
)

// MCQ-09 — Đường kính bánh xe và số chỉ tốc kế
#vp-question(
  [Một tốc kế tính tốc độ từ số vòng quay của bánh xe, được hiệu chuẩn cho đường kính $50 thin "cm"$. Thay bánh có đường kính $"52,5" thin "cm"$ nhưng không hiệu chuẩn lại. Giả sử bánh lăn không trượt. Khi tốc kế chỉ $"60,0" thin "km/h"$, tốc độ thực là bao nhiêu?],
  type: "mcq",
  options: (
    [$"57,0" thin "km/h"$.],
    [$"60,0" thin "km/h"$.],
    [$"63,0" thin "km/h"$.],
    [$"65,5" thin "km/h"$.],
  ),
  ans: "C",
  sol: [Với cùng số vòng quay trong một giây, tốc độ tỉ lệ với đường kính bánh: $v_("thực") = v_("chỉ") D/D_0 = "60,0" dot "52,5"/50 = "63,0" thin "km/h"$.],
)

// MCQ-10 — Các thành phần vận tốc
#vp-question(
  [Một vật có tọa độ $x(t) = 6 t$, $y(t) = 8 t - 2 t^2$, với tọa độ tính bằng mét, $t >= 0$ tính bằng giây. Tốc độ tức thời tại $t = 2 thin "s"$ bằng bao nhiêu?],
  type: "mcq",
  options: (
    [$"6,0" thin "m/s"$.],
    [$"4,0" thin "m/s"$.],
    [$"7,21" thin "m/s"$.],
    [$"10,0" thin "m/s"$.],
  ),
  ans: "A",
  sol: [Các thành phần vận tốc là độ dốc của đồ thị tọa độ tương ứng: $v_x = 6$, $v_y = 8 - 4 t$ (m/s). Tại $t = 2 thin "s"$, $v_y = 0$, nên $v = sqrt(6^2 + 0^2) = "6,0" thin "m/s"$.],
)

// MCQ-11 — Gia tốc trung bình khi bóng bật lại
#vp-question(
  [Một quả bóng bay về Đông với tốc độ $20 thin "m/s"$, va vào cột rồi bật về Tây với tốc độ $15 thin "m/s"$. Va chạm kéo dài $"0,05" thin "s"$. Dùng định nghĩa $arrow(a)_("tb") = frac(Delta arrow(v), Delta t)$, xác định độ lớn và hướng của gia tốc trung bình.],
  type: "mcq",
  options: (
    [$700 thin "m/s"^2$, hướng Tây.],
    [$100 thin "m/s"^2$, hướng Tây.],
    [$700 thin "m/s"^2$, hướng Đông.],
    [$100 thin "m/s"^2$, hướng Đông.],
  ),
  ans: "A",
  sol: [Chọn chiều dương hướng Đông: $v_1 = +20$, $v_2 = -15$ (m/s). Suy ra $a_("tb") = (-15 - 20)/"0,05" = -700 thin "m/s"^2$, tức độ lớn $700 thin "m/s"^2$, hướng Tây.],
)

// MCQ-12 — Đo thành phần vận tốc
#vp-question(
  [Một thiết bị chỉ đo độ lớn thành phần vận tốc dọc theo chùm sóng, không hiệu chỉnh góc. Chùm sóng tạo với phương chuyển động của ô tô góc $25^°$. Nếu xe chạy $90 thin "km/h"$, thiết bị chỉ giá trị nào?],
  type: "mcq",
  options: (
    [$"90,0" thin "km/h"$.],
    [$"81,6" thin "km/h"$.],
    [$"99,3" thin "km/h"$.],
    [$"38,0" thin "km/h"$.],
  ),
  ans: "B",
  sol: [Độ lớn thành phần dọc chùm sóng là $v_("đo") = 90 cos 25^° approx "81,6" thin "km/h"$.],
)

// MCQ-13 — Diện tích trên đồ thị vận tốc
#vp-question(
  [Đồ thị vận tốc–thời gian gồm các đoạn thẳng nối lần lượt $(0; 0)$, $(2; 6)$, $(4; 0)$, $(6; -4)$, $(8; 0)$; thời gian tính bằng giây, vận tốc bằng mét trên giây. Độ dịch chuyển $d$ và quãng đường $s$ trong $8$ giây lần lượt là bao nhiêu?],
  type: "mcq",
  options: (
    [$20 thin "m"$ và $20 thin "m"$.],
    [$4 thin "m"$ và $20 thin "m"$.],
    [$12 thin "m"$ và $8 thin "m"$.],
    [$4 thin "m"$ và $4 thin "m"$.],
  ),
  ans: "B",
  sol: [Diện tích tam giác phía trên trục thời gian là $4 dot 6/2 = 12 thin "m"$; độ lớn diện tích tam giác phía dưới là $4 dot 4/2 = 8 thin "m"$. Vậy $d = 12 - 8 = 4 thin "m"$, $s = 12 + 8 = 20 thin "m"$.],
)

// MCQ-14 — Xử lí lần đo có lỗi thao tác
#vp-question(
  [Đo thời gian tấm chắn rộng $"20,0" thin "mm"$ đi qua cổng quang điện, thu được $"0,201"$; $"0,198"$; $"0,202"$; $"0,350"$; $"0,199"$ (s). Nhật kí thí nghiệm xác nhận lần 4 bị tác động vào xe khi thả nên không cùng điều kiện với các lần còn lại. Loại lần đó và dùng thời gian trung bình của các lần hợp lệ, tốc độ ước lượng là bao nhiêu?],
  type: "mcq",
  options: (
    [$"0,087" thin "m/s"$.],
    [$"0,100" thin "m/s"$.],
    [$"0,095" thin "m/s"$.],
    [$"0,080" thin "m/s"$.],
  ),
  ans: "B",
  sol: [Chỉ loại lần 4 vì đã xác nhận lỗi thao tác. Thời gian trung bình $overline(t) = ("0,201" + "0,198" + "0,202" + "0,199")/4 = "0,200" thin "s"$. Tốc độ ước lượng $v = "0,0200"/"0,200" = "0,100" thin "m/s"$.],
)

// MCQ-15 — Máy bay giữ hướng trong gió ngang
#vp-question(
  [Một máy bay có tốc độ $500 thin "km/h"$ so với không khí, cần bay thẳng về Nam so với mặt đất. Gió thổi về Tây với tốc độ $100 thin "km/h"$. Máy bay phải hướng đầu lệch bao nhiêu so với hướng Nam?],
  type: "mcq",
  options: (
    [$"11,5"^°$ về Đông.],
    [$"11,5"^°$ về Tây.],
    [$"11,3"^°$ về Đông.],
    [$"11,3"^°$ về Tây.],
  ),
  ans: "A",
  sol: [Thành phần vận tốc của máy bay về Đông phải bằng tốc độ gió về Tây: $500 sin alpha = 100$. Suy ra $alpha approx "11,5"^°$ về Đông.],
)

// MCQ-16 — Vận tốc tương đối giữa hai xe
#vp-question(
  [Hai ô tô A, B chạy cùng chiều trên đường thẳng với tốc độ lần lượt $90 thin "km/h"$ và $70 thin "km/h"$. So với A, xe B chuyển động thế nào?],
  type: "mcq",
  options: (
    [Lùi về phía sau với tốc độ $20 thin "km/h"$.],
    [Tiến về phía trước với tốc độ $20 thin "km/h"$.],
    [Đứng yên.],
    [Lùi về phía sau với tốc độ $160 thin "km/h"$.],
  ),
  ans: "A",
  sol: [Chọn chiều dương cùng chiều xe chạy: $v_("B/A") = 70 - 90 = -20 thin "km/h"$. Vì vậy B lùi về phía sau so với A với tốc độ $20 thin "km/h"$.],
)

// MCQ-17 — Một vòng chạy khép kín
#vp-question(
  [Một vận động viên chạy hết một vòng đường chạy dài $400 thin "m"$ trong $50 thin "s"$. Kết luận nào đúng?],
  type: "mcq",
  options: (
    [Tốc độ trung bình và độ lớn vận tốc trung bình đều bằng $8 thin "m/s"$.],
    [Tốc độ trung bình bằng $8 thin "m/s"$, vận tốc trung bình bằng không.],
    [Tốc độ tức thời luôn bằng $8 thin "m/s"$.],
    [Vectơ vận tốc tức thời không đổi suốt vòng chạy.],
  ),
  ans: "B",
  sol: [Tốc độ trung bình $v_("tb") = 400/50 = 8 thin "m/s"$. Điểm cuối trùng điểm đầu nên độ dịch chuyển và vận tốc trung bình đều bằng không.],
)

// MCQ-18 — Sai số tỉ đối của phép đo tốc độ
#vp-question(
  [Hai cổng quang điện cách nhau $S = ("50,0" plus.minus "0,5") thin "cm"$. Thời gian xe đi giữa hai cổng là $t = ("2,00" plus.minus "0,02") thin "s"$. Theo quy tắc cộng sai số tỉ đối của thương, sai số tỉ đối của $v = S/t$ là bao nhiêu?],
  type: "mcq",
  options: (
    [$"1,0"%$.],
    [$"2,0"%$.],
    [$"3,0"%$.],
    [$"0,5"%$.],
  ),
  ans: "B",
  sol: [Sai số tỉ đối $delta v = frac(Delta S, S) + frac(Delta t, t) = "0,5"/"50,0" + "0,02"/"2,00" = "0,02" = "2,0"%$.],
)

// MCQ-19 — Vận tốc trong hai hệ quy chiếu
#vp-question(
  [Một toa tàu chạy thẳng đều theo phương ngang với tốc độ $10 thin "m/s"$. Hành khách thả viên sỏi từ trạng thái nghỉ so với toa, ở độ cao $"1,25" thin "m"$ trên sàn. Bỏ qua lực cản, lấy $g = 10 thin "m/s"^2$. Trong hệ quy chiếu mặt đất, quỹ đạo và tốc độ ngay trước khi sỏi chạm sàn là gì?],
  type: "mcq",
  options: (
    [Đường thẳng đứng; $5 thin "m/s"$.],
    [Nhánh parabol; $5 sqrt(5) thin "m/s" approx "11,18" thin "m/s"$.],
    [Nhánh parabol; $10 thin "m/s"$.],
    [Đường nằm ngang; $10 thin "m/s"$.],
  ),
  ans: "B",
  sol: [Thời gian rơi $t = sqrt(2 h/g) = "0,5" thin "s"$. Trong hệ mặt đất, $v_x = 10 thin "m/s"$, độ lớn thành phần đứng $abs(v_y) = g t = 5 thin "m/s"$. Tốc độ $v = sqrt(10^2 + 5^2) = 5 sqrt(5) approx "11,18" thin "m/s"$. Kết hợp chuyển động ngang đều với rơi thẳng đứng cho quỹ đạo parabol.],
)

// MCQ-20 — Tính cả thời gian dừng
#vp-question(
  [Một người giao hàng đi $400 thin "m"$ về Bắc trong $2$ phút, rẽ đi $300 thin "m"$ về Đông trong $1$ phút rồi dừng $1$ phút. Tốc độ trung bình và độ lớn vận tốc trung bình trong cả $4$ phút lần lượt là bao nhiêu?],
  type: "mcq",
  options: (
    [$"2,92" thin "m/s"$ và $"2,08" thin "m/s"$.],
    [$"3,89" thin "m/s"$ và $"2,78" thin "m/s"$.],
    [$"2,08" thin "m/s"$ và $"2,92" thin "m/s"$.],
    [$"1,75" thin "m/s"$ và $"1,25" thin "m/s"$.],
  ),
  ans: "A",
  sol: [Tổng thời gian $T = 240 thin "s"$, quãng đường $s = 700 thin "m"$, độ lớn độ dịch chuyển $abs(arrow(d)) = sqrt(400^2 + 300^2) = 500 thin "m"$. Hai giá trị cần tìm là $700/240 approx "2,92" thin "m/s"$ và $500/240 approx "2,08" thin "m/s"$.],
)

= Phần II. Trắc nghiệm Đúng/Sai
#sbt-instructions(reset: true)[Xác định mỗi phát biểu a), b), c), d) là đúng hay sai.]

// TF-01 — Hai ca nô gặp nhau
#vp-question(
  [Hai ca nô chuyển động trên cùng một đường thẳng. Đồ thị tọa độ–thời gian của A là đường thẳng qua $(0; 0)$ và $(2; 60)$; của B là đường thẳng qua $(0; 100)$ và $(2; 40)$. Thời gian tính bằng giờ, tọa độ bằng kilômét.],
  type: "tf",
  statements: (
    [Ca nô A chuyển động thẳng đều với vận tốc $+30 thin "km/h"$.],
    [Ca nô B chuyển động thẳng đều với vận tốc $-30 thin "km/h"$.],
    [Tốc độ của A so với B bằng $60 thin "km/h"$.],
    [Hai ca nô gặp nhau lúc $t = "1,25"$ giờ tại tọa độ $"37,5" thin "km"$.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [a) $v_A = (60 - 0)/2 = +30 thin "km/h"$.
    #parbreak()
    b) $v_B = (40 - 100)/2 = -30 thin "km/h"$.
    #parbreak()
    c) Tốc độ tương đối là $abs(v_A - v_B) = 60 thin "km/h"$.
    #parbreak()
    d) Phương trình tọa độ là $x_A = 30 t$, $x_B = 100 - 30 t$. Gặp nhau khi $30 t = 100 - 30 t$, tức $t = 5/3$ giờ = 1 giờ 40 phút; vị trí gặp có tọa độ $50 thin "km"$.],
)

// TF-02 — Nguyên lí và giới hạn của phép đo bằng cổng quang điện
#vp-question(
  [Một xe lăn mang tấm chắn sáng có bề rộng $s$ theo phương chuyển động, đi qua cổng quang điện trong thời gian chắn sáng $t$. Tốc độ tại cổng được ước lượng bằng $v = s/t$. Gọi $Delta s$, $Delta t$ là sai số tuyệt đối của bề rộng và thời gian.],
  type: "tf",
  statements: (
    [Có thể coi $s/t$ xấp xỉ tốc độ tức thời nếu khoảng chắn sáng đủ ngắn và tốc độ biến đổi ít.],
    [Giữ nguyên sai số dụng cụ, giảm bề rộng tấm chắn luôn làm phép đo chính xác hơn.],
    [Theo quy tắc sai số của thương, $delta v = frac(Delta s, s) - frac(Delta t, t)$.],
    [Với cùng tấm chắn, nếu tốc độ xe qua cổng lớn hơn thì thời gian chắn sáng cũng lớn hơn.],
  ),
  ans-tf: ("Đ", "S", "S", "S"),
  sol: [a) $s/t$ là tốc độ trung bình trong thời gian chắn sáng; có thể xấp xỉ tốc độ tức thời nếu tốc độ biến đổi ít trong khoảng đó.
    #parbreak()
    b) Tấm chắn ngắn làm khoảng lấy trung bình ngắn hơn, nhưng với sai số dụng cụ cố định, các tỉ số $frac(Delta s, s)$ và $frac(Delta t, t)$ có thể tăng. Vì vậy độ chính xác tổng thể không luôn tăng.
    #parbreak()
    c) Theo quy tắc ước lượng ở phổ thông, $delta v = frac(Delta s, s) + frac(Delta t, t)$, không phải hiệu.
    #parbreak()
    d) Với cùng tấm chắn, tốc độ lớn hơn cho thời gian chắn sáng nhỏ hơn.],
)

// TF-03 — Trực thăng trong gió ngang
#vp-question(
  [Một trực thăng bay ngang với vận tốc $180 thin "km/h"$ về Đông so với không khí. Gió thổi đều về Nam với tốc độ $50 thin "km/h"$ so với mặt đất. Các vận tốc giữ không đổi.],
  type: "tf",
  statements: (
    [Vận tốc trực thăng so với đất bằng tổng vectơ vận tốc trực thăng so với không khí và vận tốc gió so với đất.],
    [Tốc độ so với mặt đất xấp xỉ $"186,8" thin "km/h"$ ($"51,89" thin "m/s"$).],
    [Hướng chuyển động so với đất lệch về Nam khoảng $"15,5"^°$ so với hướng Đông.],
    [Sau $30$ phút, trực thăng đi được $90 thin "km"$ so với mặt đất.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [a) Công thức cộng vận tốc: $arrow(v)_("trực thăng/đất") = arrow(v)_("trực thăng/khí") + arrow(v)_("khí/đất")$.
    #parbreak()
    b) $v = sqrt(180^2 + 50^2) approx "186,8" thin "km/h" approx "51,89" thin "m/s"$.
    #parbreak()
    c) $tan theta = 50/180$, nên $theta approx "15,5"^°$ về Nam so với hướng Đông.
    #parbreak()
    d) Sau $"0,5"$ giờ, quãng đường theo mặt đất là $sqrt(180^2 + 50^2) dot "0,5" approx "93,4" thin "km"$, không phải $90 thin "km"$.],
)

// TF-04 — Cùng vận tốc và cùng vị trí
#vp-question(
  [Hai xe xuất phát cùng lúc, cùng vị trí trên đường thẳng. Trong $10$ giây đầu, xe 1 có vận tốc không đổi $v_1 = 15 thin "m/s"$; vận tốc xe 2 tăng đều từ $0$ lên $30 thin "m/s"$. Chọn chiều dương cùng chiều chuyển động.],
  type: "tf",
  statements: (
    [Xe 1 chuyển động thẳng đều; xe 2 có gia tốc $3 thin "m/s"^2$.],
    [Tại $t = 5 thin "s"$, hai xe có cùng vận tốc $15 thin "m/s"$.],
    [Xe 2 đuổi kịp xe 1 tại $t = 5 thin "s"$.],
    [Xe 2 đuổi kịp xe 1 tại $t = 10 thin "s"$, cách vị trí xuất phát $150 thin "m"$.],
  ),
  ans-tf: ("Đ", "Đ", "S", "Đ"),
  sol: [a) Độ dốc đồ thị của xe 2 là $a_2 = (30 - 0)/10 = 3 thin "m/s"^2$.
    #parbreak()
    b) $v_2 = 3 t$, nên $v_2(5) = 15 thin "m/s" = v_1$.
    #parbreak()
    c) Tại $t = 5 thin "s"$, $d_1 = 15 dot 5 = 75 thin "m"$, $d_2 = 5 dot 15/2 = "37,5" thin "m"$, nên chưa gặp nhau.
    #parbreak()
    d) $d_1 = 15 t$, $d_2 = "1,5" t^2$; nghiệm gặp lại sau khi xuất phát là $t = 10 thin "s"$, khi đó $d_1 = d_2 = 150 thin "m"$.],
)

// TF-05 — Hướng vận tốc tương đối của mưa
#vp-question(
  [Một ô tô chạy thẳng đều với tốc độ $20 thin "m/s"$. Mưa rơi thẳng đứng với tốc độ $10 thin "m/s"$ so với mặt đất. Xét chuyển động của giọt mưa trước khi chạm xe; phía trước xe là chiều xe chuyển động.],
  type: "tf",
  statements: (
    [Người đứng bên đường thấy giọt mưa rơi thẳng đứng.],
    [Trong hệ quy chiếu của xe, thành phần ngang của vận tốc giọt mưa hướng về phía sau xe.],
    [Tốc độ của mưa so với xe bằng $10 sqrt(5) thin "m/s" approx "22,36" thin "m/s"$.],
    [Góc $theta$ giữa vận tốc mưa so với xe và phương thẳng đứng hướng xuống thỏa mãn $tan theta = "0,5"$.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [a) Trong hệ mặt đất, vận tốc mưa chỉ có thành phần thẳng đứng hướng xuống.
    #parbreak()
    b) Chọn trục ngang dương về phía trước xe, trục đứng dương hướng lên. Vận tốc mưa so với xe có thành phần $(-20; -10) thin "m/s"$, nên thành phần ngang hướng về phía sau xe. Không đồng nhất hướng vận tốc này với phía mà mưa bay tới hoặc vệt nước đã chảy trên kính.
    #parbreak()
    c) $v_("mưa/xe") = sqrt(20^2 + 10^2) = 10 sqrt(5) approx "22,36" thin "m/s"$.
    #parbreak()
    d) Góc với phương thẳng đứng hướng xuống thỏa mãn $tan theta = 20/10 = 2$.],
)

= Phần III. Trắc nghiệm trả lời ngắn
#sbt-instructions(reset: true)[Tính và điền kết quả theo yêu cầu của từng câu.]

// SHORT-01 — Tốc độ trung bình trên ba chặng
#vp-question(
  [Một xe buýt chạy một phần tư tổng quãng đường với tốc độ $30 thin "km/h"$, một nửa tổng quãng đường tiếp theo với tốc độ $60 thin "km/h"$, và phần còn lại với tốc độ $20 thin "km/h"$. Xe không dừng dọc đường. Tính tốc độ trung bình theo kilômét trên giờ, làm tròn đến một chữ số thập phân.],
  type: "short",
  ans: "34,3",
  sol: [Gọi tổng quãng đường là $S$ (km). Tổng thời gian $T = S/120 + S/120 + S/80 = 7 S/240$ (giờ). Tốc độ trung bình $v_("tb") = S/T = 240/7 approx "34,3" thin "km/h"$.],
)

// SHORT-02 — Độ dịch chuyển khi thuyền bị trôi
#vp-question(
  [Một con sông thẳng rộng $300 thin "m"$, nước chảy song song với bờ với tốc độ $3 thin "m/s"$. Thuyền có vận tốc không đổi so với nước, độ lớn $4 thin "m/s"$, luôn hướng vuông góc với bờ. Tính độ lớn độ dịch chuyển từ lúc xuất phát đến khi thuyền sang bờ bên kia, theo mét.],
  type: "short",
  ans: "375",
  sol: [Thời gian qua sông $t = 300/4 = 75 thin "s"$. Độ trôi dọc bờ $d_x = 3 dot 75 = 225 thin "m"$. Độ lớn độ dịch chuyển $abs(arrow(d)) = sqrt(300^2 + 225^2) = 375 thin "m"$.],
)

// SHORT-03 — Sai số thời gian từ các lần đo
#vp-question(
  [Một tấm chắn trên xe lăn có bề rộng $overline(s) = "10,0" thin "mm"$, sai số tuyệt đối $Delta s = "0,1" thin "mm"$. Năm lần đo thời gian chắn sáng cho kết quả:
    #align(center, table(columns: 5, inset: 5pt,
      table.header([Lần 1], [Lần 2], [Lần 3], [Lần 4], [Lần 5]),
      [$"0,0201"$], [$"0,0198"$], [$"0,0202"$], [$"0,0199"$], [$"0,0200"$],
    ))
    Đơn vị thời gian là giây. Bỏ qua sai số dụng cụ của đồng hồ; lấy sai số thời gian bằng độ lệch tuyệt đối trung bình. Dùng quy tắc cộng sai số tỉ đối cho $v = overline(s)/overline(t)$. Tính sai số tỉ đối của tốc độ theo phần trăm, làm tròn đến một chữ số thập phân.],
  type: "short",
  ans: "1,6",
  sol: [Thời gian trung bình $overline(t) = "0,0200" thin "s"$. Sai số $Delta t = ("0,0001" + "0,0002" + "0,0002" + "0,0001" + 0)/5 = "0,00012" thin "s"$. Do đó $delta v = "0,1"/"10,0" + "0,00012"/"0,0200" = "0,016" = "1,6"%$.],
)

// SHORT-04 — Chim bay giữa hai xe
#vp-question(
  [Hai xe xuất phát cùng lúc từ A và B cách nhau $120 thin "km"$, đi thẳng về phía nhau với tốc độ $50 thin "km/h"$ và $30 thin "km/h"$. Cùng lúc, một con chim từ xe 1 bay qua lại giữa hai xe với tốc độ $70 thin "km/h"$ so với đất cho đến khi hai xe gặp nhau. Bỏ qua thời gian quay đầu của chim. Tổng quãng đường chim bay được là bao nhiêu kilômét?],
  type: "short",
  ans: "105",
  sol: [Hai xe gặp nhau sau $t = 120/(50 + 30) = "1,5"$ giờ. Chim bay liên tục trong thời gian đó nên $s = 70 dot "1,5" = 105 thin "km"$.],
)

// SHORT-05 — Điều kiện để sang đúng bến đối diện
#vp-question(
  [Một con sông thẳng rộng $200 thin "m"$, nước chảy song song với bờ với tốc độ $3 thin "m/s"$. Người chèo giữ vận tốc thuyền so với nước không đổi và chọn hướng mũi thuyền để đến đúng bến đối diện. Nếu độ lớn vận tốc thuyền so với nước được chọn là một số nguyên theo đơn vị mét trên giây, giá trị nhỏ nhất để qua sông trong thời gian hữu hạn là bao nhiêu?],
  type: "short",
  ans: "4",
  sol: [Muốn triệt tiêu độ trôi, thành phần vận tốc ngược dòng phải bằng $3 thin "m/s"$. Thành phần vuông góc bờ là $sqrt(v^2 - 3^2)$ và phải dương, nên $v > 3 thin "m/s"$. Với điều kiện $v$ là số nguyên theo m/s, giá trị nhỏ nhất là $4 thin "m/s"$. Nếu không có điều kiện số nguyên thì không tồn tại tốc độ nhỏ nhất; $3 thin "m/s"$ chỉ là cận dưới, tại đó thuyền không tiến sang bờ kia.],
)

= Phần IV. Tự luận
#sbt-instructions(reset: true)[Trình bày lập luận, công thức và các bước tính.]

// ESSAY-01 — Tàu giữ hướng trong hải lưu
#vp-question(
  [Một tàu đi từ cảng A đến B cách $120 thin "km"$ về Đông Nam, theo hướng từ Nam lệch $45^°$ về Đông. Tàu chạy với tốc độ không đổi $40 thin "km/h"$ so với nước; hải lưu chảy về Đông với tốc độ $10 thin "km/h"$. Coi chuyển động nằm trong một mặt phẳng.
    #parbreak()
    a) Để đi thẳng từ A đến B, tàu phải hướng mũi lệch bao nhiêu so với hướng Nam?
    #parbreak()
    b) Tính tốc độ so với bờ và thời gian hành trình.],
  type: "essay",
  lines: 14,
  sol: [a) Chọn trục ngang hướng Đông và trục đứng trong mặt phẳng bản đồ hướng Nam. Gọi $beta$ là góc mũi tàu lệch về Đông so với hướng Nam. Hai thành phần vận tốc so với bờ là $40 sin beta + 10$ và $40 cos beta$ (km/h). Để hướng Đông Nam, chúng phải bằng nhau:
    $ 40 sin beta + 10 = 40 cos beta. $
    Suy ra $sqrt(2) cos(beta + 45^°) = "0,25"$, nên $beta approx "34,82"^°$ về Đông so với hướng Nam.
    #parbreak()
    b) Gọi mỗi thành phần vận tốc so với bờ là $q > 0$. Vận tốc so với nước có thành phần $(q - 10; q)$, nên
    $ (q - 10)^2 + q^2 = 40^2, quad q = (10 + sqrt(3100))/2. $
    Tốc độ so với bờ $v = sqrt(2) q approx "46,44" thin "km/h"$. Thời gian $T = 120/v approx "2,584"$ giờ, xấp xỉ 2 giờ 35 phút. Không cộng các thành phần vuông góc để tính độ lớn vận tốc.],
)

// ESSAY-02 — Đánh giá sự nhất quán của số liệu cổng quang điện
#vp-question(
  [Một xe lăn mang tấm chắn sáng có bề rộng $s = ("15,0" plus.minus "0,1") thin "mm"$ đi qua hai cổng quang điện. Dùng quy tắc cộng sai số tỉ đối để ước lượng sai số của thương.
    #parbreak()
    a) Thời gian chắn sáng tại hai cổng là $t_A = ("0,050" plus.minus "0,001") thin "s"$ và $t_B = ("0,025" plus.minus "0,001") thin "s"$. Ước lượng tốc độ tức thời $v_1$, $v_2$ kèm sai số tuyệt đối. Giữ hai chữ số có nghĩa của sai số nếu chữ số đầu là 2.
    #parbreak()
    b) Hai cổng cách nhau $S = ("60,0" plus.minus "0,2") thin "cm"$; thời gian xe đi giữa hai cổng là $T = ("1,00" plus.minus "0,01") thin "s"$. Tính tốc độ trung bình kèm sai số, so sánh với $(v_1 + v_2)/2$. Bộ số liệu có phù hợp với mô hình chuyển động nhanh dần đều không? Nêu cách kiểm tra.],
  type: "essay",
  lines: 16,
  sol: [a) Tại cổng thứ nhất:
    $ v_1 = "0,0150"/"0,050" = "0,300" thin "m/s", $
    $ Delta v_1 = "0,300" ("0,1"/"15,0" + "0,001"/"0,050") = "0,008" thin "m/s". $
    Do đó $v_1 = ("0,300" plus.minus "0,008") thin "m/s"$.
    Tương tự $v_2 = "0,0150"/"0,025" = "0,600" thin "m/s"$ và
    $ Delta v_2 = "0,600" ("0,1"/"15,0" + "0,001"/"0,025") = "0,028" thin "m/s". $
    Suy ra $v_2 = ("0,600" plus.minus "0,028") thin "m/s"$.
    #parbreak()
    b) Tốc độ trung bình từ khoảng cách và thời gian:
    $ v_("tb") = "0,600"/"1,00" = "0,600" thin "m/s", $
    $ Delta v_("tb") = "0,600" ("0,2"/"60,0" + "0,01"/"1,00") = "0,008" thin "m/s". $
    Vậy $v_("tb") = ("0,600" plus.minus "0,008") thin "m/s"$. Trung bình cộng hai tốc độ đầu–cuối là $w = "0,450" thin "m/s"$, với sai số ước lượng $Delta w = ("0,008" + "0,028")/2 = "0,018" thin "m/s"$.
    #parbreak()
    Hai khoảng $["0,592"; "0,608"]$ và $["0,432"; "0,468"]$ (m/s) không giao nhau. Vì chuyển động thẳng nhanh dần đều phải có $v_("tb") = (v_1 + v_2)/2$, bộ số liệu không phù hợp với mô hình này trong phạm vi sai số đã ước lượng. Chưa đủ căn cứ kết luận xe có dạng gia tốc nào. Cần kiểm tra khoảng cách, chế độ đo và mốc kích hoạt thời gian, bề rộng hữu hiệu của tấm chắn, rồi đo lại.],
)

// ESSAY-03 — Đo tốc độ bằng thời gian truyền xung
#vp-question(
  [Một thiết bị đo khoảng cách phát hai xung ánh sáng cách nhau $Delta T = "0,100" thin "s"$ đến một ô tô đang chuyển động thẳng đều ra xa, dọc theo phương chùm sáng. Thời gian khứ hồi lần lượt là $tau_1 = "1,200" times 10^(-6) thin "s"$ và $tau_2 = "1,202" times 10^(-6) thin "s"$. Lấy $c = "3,00" times 10^8 thin "m/s"$. Bỏ qua chuyển động của xe trong thời gian mỗi xung truyền đi và về, cũng như sai số phép đo.
    #parbreak()
    a) Tính khoảng cách đến xe ở hai lần đo.
    #parbreak()
    b) Tính tốc độ theo mét trên giây và kilômét trên giờ. So sánh với ngưỡng $90 thin "km/h"$ cho trước.],
  type: "essay",
  lines: 12,
  sol: [a) Vì xung đi và về, $d = c tau/2$. Suy ra
    $ d_1 = frac("3,00" times 10^8 dot "1,200" times 10^(-6), 2) = "180,00" thin "m", $
    $ d_2 = frac("3,00" times 10^8 dot "1,202" times 10^(-6), 2) = "180,30" thin "m". $
    b) Theo các giả thiết đã cho,
    $ v = frac(d_2 - d_1, Delta T) = "0,30"/"0,100" = "3,00" thin "m/s" = "10,8" thin "km/h". $
    Tốc độ nhỏ hơn ngưỡng $90 thin "km/h"$. Các số liệu thời gian được coi là giá trị cho trước để tính toán, không suy ra độ chính xác thực tế của một thiết bị từ số chữ số này.],
)

// ESSAY-04 — Tối ưu thời gian chạy và bơi
#vp-question(
  [Bờ biển được coi là đường thẳng. Nhân viên cứu hộ ở A trên bãi cát; người cần cứu ở B dưới nước. Hình chiếu vuông góc của A và B lên bờ là C và D, với $A C = 30 thin "m"$, $B D = 40 thin "m"$, $C D = 100 thin "m"$. Người cứu hộ chạy thẳng từ A đến M trên đoạn CD với tốc độ $6 thin "m/s"$, rồi bơi thẳng từ M đến B với tốc độ $2 thin "m/s"$. Bỏ qua sóng và dòng chảy.
    #parbreak()
    a) Lập biểu thức thời gian $T(x)$ theo $x = C M$, với $0 <= x <= 100$ (m).
    #parbreak()
    b) Gọi $theta_1$, $theta_2$ là các góc của AM và MB với phương vuông góc bờ. Chứng minh đường đi tối ưu thỏa mãn $frac(sin theta_1, sin theta_2) = 6/2$. Tính vị trí M và thời gian nhỏ nhất. Có thể dùng bất đẳng thức Cauchy–Schwarz và máy tính để giải phương trình.],
  type: "essay",
  lines: 18,
  sol: [a) Theo định lí Pythagore,
    $ T(x) = frac(sqrt(30^2 + x^2), 6) + frac(sqrt(40^2 + (100 - x)^2), 2). $
    Trong biểu thức này, $x$ tính bằng mét và $T$ bằng giây.
    #parbreak()
    b) Tìm $x_0$ thỏa mãn
    $ frac(x_0, 6 sqrt(30^2 + x_0^2)) = frac(100 - x_0, 2 sqrt(40^2 + (100 - x_0)^2)). $
    Vế trái tăng, vế phải giảm trên đoạn $[0; 100]$; tại hai đầu đoạn chúng đổi thứ tự, nên có một nghiệm duy nhất bên trong. Vì $sin theta_1 = x_0/sqrt(30^2 + x_0^2)$ và $sin theta_2 = (100 - x_0)/sqrt(40^2 + (100 - x_0)^2)$, phương trình tương đương $frac(sin theta_1, sin theta_2) = 3$.
    #parbreak()
    Để chứng minh đó là điểm cực tiểu, đặt $p = sqrt(30^2 + x_0^2)$, $q = sqrt(40^2 + (100 - x_0)^2)$. Bất đẳng thức Cauchy–Schwarz cho
    $ sqrt(30^2 + x^2) >= p + frac(x_0 (x - x_0), p), $
    $ sqrt(40^2 + (100 - x)^2) >= q - frac((100 - x_0)(x - x_0), q). $
    Chia bất đẳng thức thứ nhất cho 6, thứ hai cho 2 rồi cộng; hệ số của $x - x_0$ bằng không theo phương trình trên. Vậy $T(x) >= p/6 + q/2 = T(x_0)$; dấu bằng chỉ xảy ra tại $x = x_0$.
    #parbreak()
    Giải bằng máy tính được $x_0 approx "86,72" thin "m"$. Thay giá trị chưa làm tròn vào $T(x)$ cho $T_("min") approx "36,37" thin "s"$. Người cứu hộ nên chạy phần lớn khoảng cách dọc bờ trước khi xuống nước.],
)

// ESSAY-05 — Hai đoàn tàu với vận tốc thay đổi theo giai đoạn
#vp-question(
  [Hai tàu chuyển động cùng chiều trên hai đường ray thẳng song song. Xét vị trí của đầu mỗi tàu; lúc $t = 0$ hai đầu tàu ngang nhau.
    #parbreak()
    Tàu 1: từ $0$ đến $10 thin "s"$, vận tốc tăng đều từ $0$ đến $20 thin "m/s"$; từ $10$ đến $30 thin "s"$, vận tốc giữ ở $20 thin "m/s"$.
    #parbreak()
    Tàu 2: từ $0$ đến $20 thin "s"$, vận tốc tăng đều từ $0$ đến $30 thin "m/s"$; từ $20$ đến $30 thin "s"$, vận tốc giảm đều về không.
    #parbreak()
    a) Viết $v_1(t)$, $v_2(t)$ cho từng giai đoạn.
    #parbreak()
    b) Tìm tất cả thời điểm hai tàu có cùng vận tốc trong $0 <= t <= 30 thin "s"$. Tính khoảng cách lớn nhất giữa hai đầu tàu trước lần vượt nhau đầu tiên sau khi xuất phát.
    #parbreak()
    c) Xác định thời điểm và vị trí lần vượt nhau đầu tiên đó.],
  type: "essay",
  lines: 16,
  sol: [a) Với $t$ tính bằng giây và vận tốc bằng m/s:
    $ v_1(t) = cases(2 t & "khi" 0 <= t <= 10, 20 & "khi" 10 < t <= 30), $
    $ v_2(t) = cases("1,5" t & "khi" 0 <= t <= 20, 90 - 3 t & "khi" 20 < t <= 30). $
    b) Giải trên từng giai đoạn, hai vận tốc bằng nhau tại
    $ t = 0, quad t = 40/3 thin "s", quad t = 70/3 thin "s". $
    Trước lần vượt đầu tiên, tàu 1 ở trước. Từ $0$ đến $10 thin "s"$, khoảng cách tăng vì $v_1 > v_2$. Từ $10$ đến $20 thin "s"$, khoảng cách là
    $ D(t) = (20 t - 100) - "0,75" t^2 = 100/3 - "0,75" (t - 40/3)^2. $
    Vì vậy $D_("max") = 100/3 approx "33,33" thin "m"$, tại $t = 40/3 approx "13,33" thin "s"$.
    #parbreak()
    c) Từ $0 < t <= 10 thin "s"$, $x_1 = t^2 > x_2 = "0,75" t^2$. Với $10 <= t <= 20 thin "s"$, giải $20 t - 100 = "0,75" t^2$ được $t = 20 thin "s"$ và $t = 20/3 thin "s"$; nghiệm sau không thuộc giai đoạn đang xét. Vậy lần vượt đầu tiên sau lúc xuất phát là $t = 20 thin "s"$, tại $x = 300 thin "m"$. Khi đó $v_2 = 30 thin "m/s" > v_1 = 20 thin "m/s"$, nên đầu tàu 2 vượt đầu tàu 1.],
)

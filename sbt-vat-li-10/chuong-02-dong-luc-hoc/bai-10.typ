#import "../cau-hinh.typ": *
#import "images/bai-10-hinh.typ": bai-10-hinh

#sbt-bai(num: "10", title: "Định luật 2 Newton", label: <bai-10>)

= Phần I. Trắc nghiệm khách quan
#sbt-instructions(reset: true)[Chọn một phương án đúng trong mỗi câu. Xét trong hệ quy chiếu quán tính; coi vật là chất điểm nếu không nêu khác.]

// MCQ-01
#vp-question(
  [Biểu thức Định luật 2 Newton $bold(a) = frac(bold(F), m)$ khẳng định mối quan hệ giữa vectơ gia tốc $bold(a)$ và vectơ hợp lực $bold(F)$ tác dụng lên vật. Phát biểu nào sau đây ĐÚNG?],
  type: "mcq",
  options: (
    [Vectơ gia tốc $bold(a)$ luôn cùng phương, cùng chiều với vectơ vận tốc $bold(v)$ của vật.],
    [Vectơ gia tốc $bold(a)$ luôn cùng phương, cùng chiều với vectơ hợp lực $bold(F)$ tác dụng lên vật.],
    [Độ lớn gia tốc $a$ tỉ lệ thuận với khối lượng $m$ và tỉ lệ nghịch với độ lớn hợp lực $F$.],
    [Khi hợp lực $bold(F)$ không đổi, vật chắc chắn chuyển động thẳng đều với vận tốc không đổi.],
  ),
  ans: "B",
  sol: [Từ biểu thức $bold(a) = bold(F)/m$, vì $m > 0$ nên $bold(a)$ luôn cùng phương, cùng chiều với hợp lực $bold(F)$. Vectơ $bold(v)$ có thể ngược chiều (khi hãm phanh). Độ lớn $a$ tỉ lệ thuận với $F$ và tỉ lệ nghịch với $m$.],
)

// MCQ-02
#vp-question(
  [Vật khối lượng $m$ đang trượt trên mặt đường ngang, được kéo chếch lên bằng lực $bold(F)_k$ hợp phương ngang góc $alpha$ ($0 degree < alpha < 90 degree$). Vật vẫn tiếp xúc mặt đường, $F_k sin alpha < m g$; hệ số ma sát trượt là $mu$. Chọn chiều dương theo chiều trượt và thành phần ngang lực kéo. Gia tốc đại số của vật là],
  type: "mcq",
  options: (
    [$a = frac(F_k cos alpha - mu m g, m)$.],
    [$a = frac(F_k cos alpha - mu(m g - F_k sin alpha), m)$.],
    [$a = frac(F_k cos alpha - mu(m g + F_k sin alpha), m)$.],
    [$a = frac(F_k - mu m g, m)$.],
  ),
  ans: "B",
  sol: [Phân tích lực theo phương đứng: $N + F_k sin alpha = m g => N = m g - F_k sin alpha$.
    Lực ma sát: $F_("ms") = mu N = mu(m g - F_k sin alpha)$.
    Phương trình động lực học theo phương ngang: $F_k cos alpha - F_("ms") = m a$.
    Suy ra: $a = frac(F_k cos alpha - mu(m g - F_k sin alpha), m)$.],
)

// MCQ-03
#vp-question(
  [Tác dụng lần lượt các hợp lực có độ lớn $F_1$ và $F_2$ vào cùng một vật khối lượng $m$ thì thu được gia tốc có độ lớn lần lượt là $a_1 = 2 thin "m/s"^2$ và $a_2 = 6 thin "m/s"^2$. Nếu tác dụng hợp lực $F_3 = 2 F_1 + F_2$ vào vật $m$ đó thì gia tốc $a_3$ thu được bằng],
  type: "mcq",
  options: ([$8 thin "m/s"^2$.], [$10 thin "m/s"^2$.], [$12 thin "m/s"^2$.], [$4 thin "m/s"^2$.]),
  ans: "B",
  sol: [$F_1 = m a_1 = 2 m$; $F_2 = m a_2 = 6 m$.
    Khi $F_3 = 2 F_1 + F_2 = 2(2 m) + 6 m = 10 m => a_3 = F_3 / m = 10 thin "m/s"^2$.],
)

// MCQ-04
#vp-question(
  [Hai kiện hàng có khối lượng $m_1 = 2 thin "kg"$ và $m_2 = 3 thin "kg"$ đặt trên mặt sàn nằm ngang không ma sát, được nối với nhau bằng một sợi dây nhẹ không giãn. Tác dụng lực kéo $F = 10 thin "N"$ theo phương ngang vào vật $m_2$. Lực căng $T$ của sợi dây nối hai vật bằng],
  type: "mcq",
  options: ([$10 thin "N"$.], [$6 thin "N"$.], [$4 thin "N"$.], [$2 thin "N"$.]),
  ans: "C",
  sol: [Gia tốc của hệ: $a = frac(F, m_1 + m_2) = frac(10, 2 + 3) = 2 thin "m/s"^2$.
    Lực căng dây đóng vai trò là lực kéo vật $m_1$: $T = m_1 a = 2 times 2 = 4 thin "N"$.],
)

// MCQ-05
#vp-question(
  [Giữ khối lượng $m$ không đổi và vẽ đồ thị gia tốc $a$ (m/s²) theo độ lớn hợp lực $F$ (N). Đồ thị là đường thẳng qua gốc. Hệ số góc theo các giá trị trên trục $k = frac(Delta a, Delta F)$ bằng đại lượng nào?],
  type: "mcq",
  options: (
    [Khối lượng $m$ của vật.],
    [Nghịch đảo khối lượng $1/m$ của vật.],
    [Trọng lượng $P = m g$ của vật.],
    [Động lượng $p = m v$ của vật.],
  ),
  ans: "B",
  sol: [Từ định luật 2 Newton: $a = frac(1, m) F$. Hệ số góc theo giá trị và đơn vị trên trục là $k = frac(Delta a, Delta F) = 1/m$, có đơn vị $"kg"^(-1)$. Góc hình học trên trang còn phụ thuộc tỉ lệ vẽ hai trục.],
)

// MCQ-06
#vp-question(
  [Một chiếc xe tải chở hàng $5 thin "tấn"$ và một chiếc xe con $1 thin "tấn"$ đang chạy cùng tốc độ $72 thin "km/h"$ ($20 thin "m/s"$) trên đường ngang thì cùng phanh gấp khóa chặt bánh (trượt lê). Biết hệ số ma sát trượt giữa lốp xe và mặt đường của cả hai xe đều bằng $mu = "0,5"$. Bỏ qua lực cản không khí, lấy $g = 10 thin "m/s"^2$. Quãng đường trượt hãm phanh đến khi dừng hẳn của hai xe thỏa mãn],
  type: "mcq",
  options: (
    [Xe tải có khối lượng lớn hơn nên quãng đường phanh dài gấp 5 lần xe con.],
    [Xe con nhẹ hơn nên quãng đường phanh ngắn hơn xe tải 5 lần.],
    [Quãng đường phanh của hai xe bằng nhau và bằng $40 thin "m"$.],
    [Quãng đường phanh của hai xe bằng nhau và bằng $20 thin "m"$.],
  ),
  ans: "C",
  sol: [Gia tốc hãm của xe khi phanh trượt lê là $a = -frac(F_("ms"), m) = -frac(mu m g, m) = -mu g = -"0,5" times 10 = -5 thin "m/s"^2$.
    Quãng đường phanh $s = frac(0 - v_0^2, 2 a) = frac(-20^2, 2 times (-5)) = 40 thin "m"$.
    Gia tốc và quãng đường hãm phanh độc lập với khối lượng xe.],
)

// MCQ-07
#vp-question(
  [Một người khối lượng $m = 60 thin "kg"$ đứng trên một chiếc cân bàn đặt trong cabin thang máy. Lấy $g = "9,8" thin "m/s"^2$. Khi thang máy chuyển động đi xuống chậm dần đều với gia tốc $a = "2,0" thin "m/s"^2$, số chỉ của cân bàn bằng bao nhiêu?],
  type: "mcq",
  options: ([$468 thin "N"$.], [$588 thin "N"$.], [$708 thin "N"$.], [$120 thin "N"$.]),
  ans: "C",
  sol: [Thang máy đi xuống chậm dần đều nên vectơ gia tốc $bold(a)$ hướng lên.
    Định luật 2 Newton (chiều dương hướng lên): $N - P = m a => N = m(g + a) = 60 times ("9,8" + "2,0") = 708 thin "N"$.],
)

// MCQ-08
#vp-question(
  [Một khối gỗ trượt xuống một mặt phẳng nghiêng góc $alpha = 30 degree$ so với phương ngang. Biết hệ số ma sát trượt giữa khối gỗ và mặt nghiêng là $mu = "0,2"$. Lấy $g = 10 thin "m/s"^2$. Gia tốc trượt của khối gỗ bằng],
  type: "mcq",
  options: ([$"3,27" thin "m/s"^2$.], [$"5,00" thin "m/s"^2$.], [$"6,73" thin "m/s"^2$.], [$"1,73" thin "m/s"^2$.]),
  ans: "A",
  sol: [Lực kéo xuống dốc $P_x = m g sin alpha$. Lực ma sát $F_("ms") = mu m g cos alpha$.
    $a = g(sin alpha - mu cos alpha) = 10 times (sin 30 degree - "0,2" cos 30 degree) = 10 times ("0,5" - "0,2" times frac(sqrt(3), 2)) approx "3,268" thin "m/s"^2$.],
)

// MCQ-09
#vp-question(
  [Một quả bóng đá khối lượng $m = "0,4" thin "kg"$ bay theo phương ngang đến đập vuông góc vào cột dọc khung thành với tốc độ $v_1 = 15 thin "m/s"$ và bật ngược trở lại theo phương cũ với tốc độ $v_2 = 10 thin "m/s"$. Biết thời gian va chạm giữa bóng và cột dọc là $Delta t = "0,02" thin "s"$. Bỏ qua xung lượng của trọng lực trong thời gian va chạm. Độ lớn lực trung bình do cột dọc tác dụng lên bóng bằng],
  type: "mcq",
  options: ([$100 thin "N"$.], [$500 thin "N"$.], [$300 thin "N"$.], [$1000 thin "N"$.]),
  ans: "B",
  sol: [Chọn chiều dương là chiều bóng bật ra: $v_1 = -15 thin "m/s"$, $v_2 = 10 thin "m/s"$.
    Độ lớn lực trung bình $F_("tb") = abs(frac(m(v_2 - v_1), Delta t)) = frac("0,4" times (10 - (-15)), "0,02") = frac("0,4" times 25, "0,02") = 500 thin "N"$.],
)

// MCQ-10
#vp-question(
  [Xe máy điện có khối lượng tổng cộng (cả người lái) là $m = 200 thin "kg"$. Khi người lái vặn ga, động cơ tạo lực phát động $F_k = 300 thin "N"$. Lực cản tổng cộng tác dụng lên xe là $F_c = 100 thin "N"$. Thời gian để xe tăng tốc từ $0$ lên $36 thin "km/h"$ ($10 thin "m/s"$) là],
  type: "mcq",
  options: ([$5 thin "s"$.], [$10 thin "s"$.], [$20 thin "s"$.], [$15 thin "s"$.]),
  ans: "B",
  sol: [Hợp lực $F_("hl") = F_k - F_c = 300 - 100 = 200 thin "N"$.
    Gia tốc $a = F_("hl")/m = 200/200 = 1 thin "m/s"^2$. Thời gian $t = v/a = 10/1 = 10 thin "s"$.],
)

// MCQ-11
#vp-question(
  [Trong thí nghiệm dùng quả nặng khối lượng $m_("treo")$ treo qua ròng rọc nhẹ không ma sát bằng dây nhẹ không giãn để kéo xe lăn khối lượng $M$ trên mặt bàn ngang không ma sát. Lực kéo $F$ tác dụng lên xe lăn $M$ bằng],
  type: "mcq",
  options: (
    [đúng bằng trọng lượng quả nặng $m_("treo") g$.],
    [$F = frac(M times m_("treo"), M + m_("treo")) g < m_("treo") g$.],
    [$F = (M + m_("treo")) g$.],
    [$F = frac(M, m_("treo")) g$.],
  ),
  ans: "B",
  sol: [Gia tốc của hệ $a = frac(m_("treo") g, M + m_("treo"))$.
    Lực kéo tác dụng vào $M$ chính là lực căng dây: $F = M a = frac(M m_("treo"), M + m_("treo")) g$. Do đó $F < m_("treo") g$.],
)

// MCQ-12
#vp-question(
  [Đơn vị Niutơn (N) trong hệ đo lường SI được định nghĩa và phân tích theo các đơn vị cơ bản là],
  type: "mcq",
  options: ([$"kg" dot "m" / "s"$.], [$"kg" dot "m" / "s"^2$.], [$"kg" dot "m"^2 / "s"^2$.], [$"g" dot "cm" / "s"^2$.]),
  ans: "B",
  sol: [Theo định luật 2 Newton, $F = m a$, nên $1 thin "N" = 1 thin "kg" dot 1 thin "m/s"^2 = 1 thin "kg" dot "m/s"^2$.],
)

// MCQ-13
#vp-question(
  [Đồ thị vận tốc – thời gian ($v - t$) của một vật khối lượng $m = 2 thin "kg"$ chuyển động thẳng trên trục $O x$ cho ở hình bên. Độ lớn hợp lực tác dụng lên vật trong giai đoạn hãm tốc (từ $t = 4 thin "s"$ đến $t = 10 thin "s"$) bằng
    #align(center, bai-10-hinh("mcq-13-do-thi"))
  ],
  type: "mcq",
  options: ([$"4,0" thin "N"$.], [$"2,67" thin "N"$.], [$"1,60" thin "N"$.], [$"8,0" thin "N"$.]),
  ans: "B",
  sol: [Gia tốc giai đoạn hãm $a = frac(v - v_0, Delta t) = frac(0 - 8, 10 - 4) = -frac(4, 3) thin "m/s"^2$.
    Độ lớn hợp lực $F = m abs(a) = 2 times frac(4, 3) = frac(8, 3) approx "2,67" thin "N"$.],
)

// MCQ-14
#vp-question(
  [Hai vật $A$ và $B$ có khối lượng $m_A = 3 m_B$. Khi tác dụng cùng một hợp lực $F$ không đổi lên lần lượt vật $A$ và vật $B$ thì tỉ số gia tốc $a_A / a_B$ bằng],
  type: "mcq",
  options: ([$3$.], [$1/3$.], [$9$.], [$1/9$.]),
  ans: "B",
  sol: [$a = F/m$. Với cùng lực $F$, gia tốc tỉ lệ nghịch với khối lượng.
    $a_A / a_B = m_B / m_A = 1/3$.],
)

// MCQ-15
#vp-question(
  [Một giọt nước khối lượng $m$ được thả từ nghỉ. Chọn chiều dương hướng xuống, lực cản có thành phần $F_(c,y) = -k v$ với $k > 0$ không đổi. Giọt nước chỉ chịu trọng lực và lực cản. Gia tốc khi rơi sẽ],
  type: "mcq",
  options: (
    [tăng dần từ $0$ lên $g$.],
    [giảm dần từ $g$ và tiến tới $0$.],
    [không đổi và luôn bằng $g$.],
    [giảm dần từ $g$ xuống giá trị âm.],
  ),
  ans: "B",
  sol: [$m g - k v = m a$ nên $a = g - frac(k, m) v$. Từ nghỉ, $a = g exp(-k t/m)$ giảm và tiến tới 0; tốc độ tiến tới $m g/k$. Trong mô hình này, giá trị giới hạn được tiệm cận chứ không đạt chính xác sau một thời gian hữu hạn.],
)

// MCQ-16
#vp-question(
  [Đầu xe tải khối lượng $m_1 = 2 thin "tấn"$ kéo rơ-móc $m_2 = 4 thin "tấn"$ trên đường ngang, gia tốc $"1,5" thin "m/s"^2$. Bỏ qua lực cản chuyển động của rơ-móc; đầu xe có đủ lực bám để tăng tốc. Lực kéo $T$ ở móc nối bằng],
  type: "mcq",
  options: ([$3000 thin "N"$.], [$6000 thin "N"$.], [$9000 thin "N"$.], [$12000 thin "N"$.]),
  ans: "B",
  sol: [Lực căng $T$ tác dụng lên rơ-móc để tạo ra gia tốc $a$ cho nó.
    $T = m_2 a = 4000 times "1,5" = 6000 thin "N"$.],
)

// MCQ-17
#vp-question(
  [Ô tô và hàng có tổng khối lượng $3 thin "tấn"$ đi thẳng đều lên dốc $10 degree$. Bỏ qua lực cản. Lấy $g = "9,8" thin "m/s"^2$ và dùng $sin 10 degree approx "0,1736"$ khi tính. Lực kéo dọc dốc cân bằng thành phần trọng lực bằng bao nhiêu?],
  type: "mcq",
  options: ([$5104 thin "N"$.], [$28954 thin "N"$.], [$"510,4" thin "N"$.], [$29400 thin "N"$.]),
  ans: "A",
  sol: [Thành phần trọng lực dọc theo đèo là $P_x = m g sin alpha$.
    $F_k = P_x = 3000 times "9,8" times "0,1736" = "5103,84" approx 5104 thin "N"$ theo giá trị sin được cho.],
)

// MCQ-18
#vp-question(
  [Trong mô hình va chạm một chiều, vật có tốc độ ban đầu $40 thin "km/h"$ và dừng hẳn sau $"0,005" thin "s"$. Độ lớn gia tốc hãm trung bình gần bằng bao nhiêu? Khi so sánh với $g$, lấy $g = "9,8" thin "m/s"^2$.],
  type: "mcq",
  options: (
    [$2222 thin "m/s"^2$ ($approx 227 g$).],
    [$222 thin "m/s"^2$.],
    [$"9,8" thin "m/s"^2$.],
    [$40 thin "m/s"^2$.],
  ),
  ans: "A",
  sol: [Độ lớn gia tốc hãm trung bình: $abs(a_("tb")) = frac(abs(Delta v), Delta t) = frac(40, "3,6" times "0,005") approx 2222 thin "m/s"^2 approx 227 g$.],
)

// MCQ-19
#vp-question(
  [Một hòm gỗ khối lượng $m = 50 thin "kg"$ đặt trên sàn nhà nằm ngang. Hệ số ma sát nghỉ giữa hòm và sàn là $mu_n = "0,4"$; hệ số ma sát trượt là $mu_t = "0,3"$. Lấy $g = 10 thin "m/s"^2$. Người ta tác dụng một lực kéo nằm ngang $F = 150 thin "N"$ vào hòm. Gia tốc của hòm gỗ bằng],
  type: "mcq",
  options: ([$0 thin "m/s"^2$.], [$"0,6" thin "m/s"^2$.], [$"1,0" thin "m/s"^2$.], [$"3,0" thin "m/s"^2$.]),
  ans: "A",
  sol: [Lực ma sát nghỉ cực đại $F_("msn,max") = mu_n m g = "0,4" times 50 times 10 = 200 thin "N"$.
    Vì lực kéo $F = 150 thin "N" < F_("msn,max")$ nên hòm gỗ chưa bị trượt. Gia tốc $a = 0$.],
)

// MCQ-20
#vp-question(
  [Máy bay khối lượng $20 thin "tấn"$ hạ cánh, chỉ chịu lực cản ngang của dù hãm có độ lớn $40 thin "kN"$. Chọn chiều dương theo chiều chuyển động. Gia tốc đại số bằng],
  type: "mcq",
  options: ([$"-2,0" thin "m/s"^2$.], [$-"0,5" thin "m/s"^2$.], [$-"4,0" thin "m/s"^2$.], [$-"1,0" thin "m/s"^2$.]),
  ans: "A",
  sol: [Chọn chiều dương là chiều chuyển động. Gia tốc $a = frac(-F_c, m) = -frac(40000, 20000) = -"2,0" thin "m/s"^2$.],
)


= Phần II. Trắc nghiệm Đúng/Sai
#sbt-instructions(reset: true)[Thí sinh xét tính Đúng hoặc Sai cho mỗi ý a), b), c), d) trong từng câu.]

// TF-01
#vp-question(
  [Xét mô hình ô tô khối lượng $m = 2600 thin "kg"$ trên đường ngang thẳng. Các tình huống sau được xét độc lập:],
  type: "tf",
  statements: (
    [Vectơ gia tốc $bold(a)$ của ô tô luôn cùng chiều với vectơ hợp lực $sum bold(F)$ tác dụng lên ô tô.],
    [Nếu lực kéo phát động của động cơ là $F_k = 5200 thin "N"$ và lực cản tổng cộng là $F_c = 1300 thin "N"$, gia tốc của xe bằng $"1,5" thin "m/s"^2$.],
    [Nếu xe được kéo bởi một lực ngoài chếch lên góc $alpha = 30 degree$ và vẫn tiếp xúc mặt đường, lực pháp tuyến $N$ sẽ tăng so với khi kéo ngang bằng lực cùng độ lớn.],
    [Khi xe duy trì tốc độ giới hạn không đổi trên đường thẳng, hợp lực bằng không và gia tốc bằng không.],
  ),
  ans-tf: ("Đ", "Đ", "S", "Đ"),
  sol: [a) Đúng theo Định luật 2 Newton.
    #parbreak() b) $F_("hl") = 5200 - 1300 = 3900 thin "N" => a = 3900/2600 = "1,5" thin "m/s"^2$. (Đúng)
    #parbreak() c) Kéo xiên lên sẽ tạo thành phần lực nâng, làm giảm áp lực lên mặt đường ($N = m g - F_y$), nên lực pháp tuyến $N$ giảm đi. (Sai)
    #parbreak() d) Duy trì vận tốc không đổi trên đường thẳng cho $a = 0$, tương ứng hợp lực bằng không. (Đúng)],
)

// TF-02
#vp-question(
  [Xe lăn khối lượng $M$ trên ray ngang không ma sát nối với quả treo $m_("treo")$ bằng dây nhẹ không giãn qua ròng rọc nhẹ không ma sát. Gọi $M_("hệ") = M + m_("treo")$; lực gây chuyển động cho toàn hệ có độ lớn $m_("treo") g$.],
  type: "tf",
  statements: (
    [Giữ nguyên $M$ và thay đổi $m_("treo")$ vẫn giữ nguyên khối lượng toàn hệ, nên kiểm chứng được $a ∝ F$ với khối lượng hệ không đổi.],
    [Gia tốc chính xác của hệ luôn bằng $a = frac(m_("treo") g, M)$.],
    [Giữ $m_("treo")$ không đổi và thêm tải lên xe giữ nguyên lực gây chuyển động cho toàn hệ, cho phép khảo sát $a ∝ 1/M_("hệ")$.],
    [Khi giữ $m_("treo")$ không đổi, đồ thị $a$ theo $M_("hệ")$ là đường thẳng qua gốc.],
  ),
  ans-tf: ("S", "S", "Đ", "S"),
  sol: [a) Sai: thay khối lượng treo làm đổi tổng $M + m_("treo")$. Muốn giữ tổng khối lượng, có thể chuyển các quả cân từ xe sang móc treo.
    #parbreak() b) $a = frac(m_("treo") g, M + m_("treo"))$.
    #parbreak() c) Đúng với hệ gồm xe và quả treo: lực gây chuyển động $m_("treo") g$ không đổi. Lực căng kéo riêng xe là $T = M a$, không được đồng nhất với trọng lượng quả treo.
    #parbreak() d) $a = frac(m_("treo") g, M_("hệ"))$ là quan hệ nghịch đảo; đồ thị thẳng qua gốc là $a$ theo $1/M_("hệ")$.],
)

// TF-03
#vp-question(
  [Một hòn đá khối lượng $m = 2 thin "kg"$ trượt trên mặt phẳng nghiêng góc $alpha = 30 degree$ so với phương ngang. Hệ số ma sát trượt giữa hòn đá và mặt nghiêng là $mu = "0,2"$. Lấy $g = "9,8" thin "m/s"^2$, $cos 30 degree approx "0,866":$],
  type: "tf",
  statements: (
    [Độ lớn lực ma sát trượt tác dụng lên hòn đá là $F_("ms") = mu m g cos alpha approx "3,395" thin "N"$.],
    [Khi hòn đá trượt xuống dốc, gia tốc của nó bằng $a_("xuống") = g(sin alpha - mu cos alpha) approx "3,20" thin "m/s"^2$.],
    [Nếu truyền cho hòn đá một vận tốc ban đầu để nó trượt ngược lên dốc, gia tốc hãm của nó có độ lớn bằng $a_("lên") = g(sin alpha + mu cos alpha) approx "6,60" thin "m/s"^2$.],
    [Độ lớn gia tốc khi hòn đá trượt lên dốc luôn bằng độ lớn gia tốc khi hòn đá trượt xuống dốc.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [a) $F_("ms") = "0,2" times 2 times "9,8" times "0,866" approx "3,395" thin "N"$. (Đúng)
    #parbreak() b) $a_("xuống") = "9,8" times ("0,5" - "0,2" times "0,866") = "3,20" thin "m/s"^2$. (Đúng)
    #parbreak() c) Khi trượt lên, cả lực thành phần dọc dốc và ma sát đều hướng xuống, $a_("lên") = "9,8" times ("0,5" + "0,1732") = "6,60" thin "m/s"^2$. (Đúng)
    #parbreak() d) Khác nhau rõ ràng do chiều của lực ma sát thay đổi. (Sai)],
)

// TF-04
#vp-question(
  [Đồ thị vận tốc – thời gian ($v - t$) của một ô tô mô hình khối lượng $m = "1,5" thin "kg"$ chạy trên trục $O x$ thẳng gồm 3 giai đoạn như hình.
    #align(center, bai-10-hinh("tf-04-do-thi"))
  ],
  type: "tf",
  statements: (
    [Trong giai đoạn 1 ($0 -> 2 thin "s"$), hợp lực tác dụng lên ô tô có độ lớn $F_1 = "4,5" thin "N"$.],
    [Trong giai đoạn 2 ($2 -> 6 thin "s"$), hợp lực tác dụng lên ô tô bằng $0 thin "N"$.],
    [Trong giai đoạn 3 ($6 -> 8 thin "s"$), hợp lực tác dụng lên ô tô có giá trị đại số $F_3 = -"4,5" thin "N"$ (ngược chiều chuyển động).],
    [Quãng đường tổng cộng ô tô đi được trong $8 thin "s"$ bằng $36 thin "m"$.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "Đ"),
  sol: [a) $a_1 = (6 - 0) / 2 = 3 thin "m/s"^2 => F_1 = "1,5" times 3 = "4,5" thin "N"$. (Đúng)
    #parbreak() b) Vận tốc không đổi nên gia tốc $a = 0 => F_2 = 0$. (Đúng)
    #parbreak() c) $a_3 = (0 - 6) / (8 - 6) = -3 thin "m/s"^2 => F_3 = "1,5" times (-3) = -"4,5" thin "N"$. (Đúng)
    #parbreak() d) Quãng đường là diện tích hình thang: $S = frac((4 + 8) times 6, 2) = 36 thin "m"$. (Đúng)],
)

// TF-05
#vp-question(
  [Xét các mô hình va chạm một chiều có cùng độ biến thiên động lượng. Lực tổng hợp trung bình thỏa mãn $bold(F)_("tb") = frac(Delta bold(p), Delta t)$.],
  type: "tf",
  statements: (
    [Vùng hấp thụ xung lực ở đầu xe có thể biến dạng khi va chạm nhằm kéo dài thời gian giảm tốc $Delta t$.],
    [Với cùng độ biến thiên động lượng, tăng thời gian hãm làm giảm độ lớn lực hãm trung bình.],
    [Với cùng biến thiên vận tốc, đệm túi khí kéo dài thời gian giảm tốc làm giảm độ lớn gia tốc hãm trung bình.],
    [Dây an toàn có tính đàn hồi nhẹ giúp kéo dài thời gian dừng của cơ thể hành khách, làm tăng lực tác dụng lên lồng ngực.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [a), b) Với cùng biến thiên động lượng, tăng $Delta t$ làm giảm độ lớn lực hãm trung bình. (Đúng)
    #parbreak() c) Với cùng biến thiên vận tốc, kéo dài thời gian giảm tốc làm giảm độ lớn gia tốc hãm trung bình. (Đúng)
    #parbreak() d) Trong mô hình đang xét, kéo dài thời gian dừng làm giảm lực hãm trung bình. (Sai)],
)


= Phần III. Trắc nghiệm trả lời ngắn
#sbt-instructions(reset: true)[Thí sinh tính toán và điền kết quả số.]

// SHORT-01
#vp-question(
  [Ô tô khối lượng $m = 2800 thin "kg"$ đang đứng yên trên đường ngang. Lực phát động $F_k$ không đổi; lực cản tổng cộng $F_c = 400 thin "N"$. Sau $"4,5" thin "s"$, xe đạt tốc độ $100 thin "km/h"$. Tính $F_k$ theo đơn vị N, làm tròn đến hàng đơn vị.],
  type: "short",
  ans: "17684",
  short-boxes: 5,
  sol: [$v = frac(100, "3,6") thin "m/s"$. Không làm tròn tốc độ trước khi tính lực:
    $F_k = m frac(v, t) + F_c = frac(2800 times 100, "3,6" times "4,5") + 400 approx "17683,95" thin "N"$.
    Làm tròn đến hàng đơn vị: $17684 thin "N"$.],
)

// SHORT-02
#vp-question(
  [Vật $m = "5,0" thin "kg"$ đang trượt trên sàn ngang theo chiều thành phần ngang của lực kéo $F = 20 thin "N"$. Lực kéo hợp phương ngang góc $60 degree$ hướng lên; hệ số ma sát trượt $mu = "0,1"$. Lấy $g = "9,8" thin "m/s"^2$. Tính gia tốc theo chiều trượt, đơn vị m/s², làm tròn hai chữ số thập phân.],
  type: "short",
  ans: "1,37",
  sol: [Áp lực: $N = m g - F sin 60 degree = "5,0" times "9,8" - 20 times frac(sqrt(3), 2) = 49 - "17,3205" = "31,6795" thin "N"$.
    Lực ma sát: $F_("ms") = mu N = "0,1" times "31,6795" = "3,168" thin "N"$.
    Gia tốc: $a = frac(F cos 60 degree - F_("ms"), m) = frac(20 times "0,5" - "3,168", "5,0") = frac(10 - "3,168", "5,0") = "1,3664" approx "1,37" thin "m/s"^2$.],
)

// SHORT-03
#vp-question(
  [Hai kiện hàng $m_1 = 10 thin "kg"$ và $m_2 = 20 thin "kg"$ nối với nhau bằng dây nhẹ đặt trên sàn nằm ngang không ma sát. Tác dụng lực kéo nằm ngang $F = 60 thin "N"$ vào vật $m_2$. Lực căng $T$ của dây nối giữa hai vật bằng bao nhiêu Newton?],
  type: "short",
  ans: "20",
  sol: [Gia tốc của hệ hai vật: $a = frac(F, m_1 + m_2) = frac(60, 10 + 20) = 2 thin "m/s"^2$.
    Lực căng dây $T$ đóng vai trò lực kéo kiện hàng $m_1$: $T = m_1 a = 10 times 2 = 20 thin "N"$.],
)

// SHORT-04
#vp-question(
  [Một chiếc ô tô chạy với tốc độ $72 thin "km/h"$ ($20 thin "m/s"$) thì tài xế đạp phanh trượt lê trên mặt đường. Coi đường nằm ngang, bỏ qua lực cản không khí. Quãng đường phanh trượt đến khi dừng hẳn là $s = 40 thin "m"$. Lấy $g = 10 thin "m/s"^2$. Hệ số ma sát trượt $mu$ giữa lốp xe và mặt đường bằng bao nhiêu? (Kết quả điền số thập phân).],
  type: "short",
  ans: "0,5",
  short-boxes: 3,
  sol: [Gia tốc hãm: $v^2 - v_0^2 = 2 a s => 0 - 20^2 = 2 a(40) => a = -5 thin "m/s"^2$.
    Độ lớn lực ma sát: $F_("ms") = mu m g = m abs(a) => mu = frac(abs(a), g) = frac(5, 10) = "0,5"$.],
)

// SHORT-05
#vp-question(
  [Một cầu thủ bóng đá dùng chân sút vào quả bóng khối lượng $m = "0,40" thin "kg"$ đang nằm yên trên mặt cỏ. Thời gian chân tiếp xúc với bóng là $Delta t = "0,020" thin "s"$. Ngay sau va chạm, bóng bay đi với tốc độ $25 thin "m/s"$. Bỏ qua xung lượng của các lực khác trong thời gian tiếp xúc. Độ lớn lực trung bình do chân tác dụng lên bóng bằng bao nhiêu Newton?],
  type: "short",
  ans: "500",
  short-boxes: 3,
  sol: [Độ biến thiên động lượng của bóng: $Delta p = m Delta v = "0,40" times (25 - 0) = 10 thin "kg" dot "m/s"$.
    Độ lớn lực trung bình: $F_("tb") = frac(Delta p, Delta t) = frac(10, "0,020") = 500 thin "N"$.],
)


= Phần IV. Tự luận
#sbt-essay-instructions(reset: true)[Thí sinh trình bày chi tiết lời giải, lập luận vật lý và tính toán.]

// ESSAY-01
#vp-question(
  [Xét mô hình xe được kéo bằng lực ngang $F_k$, chịu lực cản không đổi $F_c = mu m g$ trên đường ngang. $mu$ là hệ số cản hiệu dụng, không phải hệ số bám lốp. Lấy $g = "9,8" thin "m/s"^2$.
    #parbreak() a) Viết biểu thức lực kéo $F_k$ theo $m, a, mu, g$.
    #parbreak() b) Xe $m = 2600 thin "kg"$ tăng tốc đều từ nghỉ lên $100 thin "km/h"$ trong $"5,0" thin "s"$. Tính $F_k$ khi $mu = "0,05"$.
    #parbreak() c) Khi hệ số cản hiệu dụng tăng lên $mu' = "0,15"$, tính lực kéo để duy trì gia tốc như trên. Có thể từ hai hệ số này suy ra khả năng bám và quãng đường phanh của xe thực không?
  ],
  type: "essay",
  lines: 12,
  sol: [a) Áp dụng định luật 2 Newton: $F_k - F_c = m a$. Với $F_c = mu m g$, suy ra $F_k = m a + mu m g = m(a + mu g)$.
    #parbreak() b) $a = frac(100, "3,6" times 5) approx "5,5556" thin "m/s"^2$.
    $F_k = 2600 (frac(100, 18) + "0,05" times "9,8") approx "15718,44" thin "N" approx "15,7" thin "kN"$.
    #parbreak() c) $F_k' = 2600 (frac(100, 18) + "0,15" times "9,8") approx "18266,44" thin "N" approx "18,3" thin "kN"$. Lực kéo tăng vì lực cản tăng. Hệ số cản hiệu dụng không xác định giới hạn bám lốp, nên chưa đủ dữ kiện kết luận về khả năng phanh của xe thực.],
)

// ESSAY-02
#vp-question(
  [Một hệ máy Atwood gồm hai vật $m_1 = "3,0" thin "kg"$ và $m_2 = "5,0" thin "kg"$ được nối với nhau bằng một sợi dây nhẹ không giãn qua một ròng rọc cố định nhẹ (bỏ qua khối lượng và ma sát của ròng rọc). Lấy $g = "9,8" thin "m/s"^2$.
    #align(center, bai-10-hinh("essay-02-atwood"))
    a) Vẽ sơ đồ lực tác dụng lên từng vật và viết hệ phương trình Định luật 2 Newton.
    #parbreak() b) Thiết lập công thức tổng quát tính gia tốc $a$ của hệ và lực căng $T$ của sợi dây theo $m_1, m_2, g$.
    #parbreak() c) Tính giá trị bằng số của gia tốc $a$ và lực căng $T$.
  ],
  type: "essay",
  lines: 13,
  sol: [a) Vật $m_1$ chịu trọng lực $P_1$ hướng xuống, lực căng $T$ hướng lên. Vật $m_2$ chịu $P_2$ hướng xuống, $T$ hướng lên.
    Chọn chiều dương theo chiều chuyển động (lên cho $m_1$, xuống cho $m_2$).
    Vật $m_1$: $T - m_1 g = m_1 a$
    Vật $m_2$: $m_2 g - T = m_2 a$
    #parbreak() b) Cộng vế với vế hai phương trình:
    $(m_2 - m_1)g = (m_1 + m_2)a => a = frac(m_2 - m_1, m_1 + m_2) g$.
    Thế gia tốc $a$ vào phương trình đầu:
    $T = m_1(g + a) = m_1(g + frac(m_2 - m_1, m_1 + m_2)g) = frac(2 m_1 m_2, m_1 + m_2) g$.
    #parbreak() c) Thay số:
    $a = frac("5,0" - "3,0", "3,0" + "5,0") times "9,8" = frac(2, 8) times "9,8" = "2,45" thin "m/s"^2$.
    $T = frac(2 times "3,0" times "5,0", "3,0" + "5,0") times "9,8" = frac(30, 8) times "9,8" = "36,75" thin "N"$.],
)

// ESSAY-03
#vp-question(
  [Một vật khối lượng $m = "2,0" thin "kg"$ thả trượt không vận tốc ban đầu từ đỉnh một mặt phẳng nghiêng cao $h = "5,0" thin "m"$, góc nghiêng $alpha = 30 degree$ so với phương ngang. Hệ số ma sát trượt trên mặt nghiêng là $mu_1 = "0,10"$. Sau khi xuống hết chân dốc nghiêng, vật tiếp tục trượt trên mặt phẳng ngang có hệ số ma sát trượt $mu_2 = "0,20"$ cho đến khi dừng hẳn. Coi đoạn nối rất ngắn và không làm mất tốc độ khi đổi hướng, vật bắt đầu trượt ngay khi thả. Lấy $g = "9,8" thin "m/s"^2$.
    #align(center, bai-10-hinh("essay-03-doc"))
    a) Tính gia tốc $a_1$ của vật trên mặt phẳng nghiêng và vận tốc $v_B$ của vật khi đến chân dốc.
    #parbreak() b) Tính gia tốc $a_2$ của vật trên mặt phẳng ngang và quãng đường $s_2$ vật trượt được trên mặt ngang trước khi dừng lại.
  ],
  type: "essay",
  lines: 10,
  sol: [a) Trên mặt phẳng nghiêng:
    Gia tốc: $a_1 = g(sin 30 degree - mu_1 cos 30 degree) = "9,8" times ("0,5" - "0,10" times "0,866") = "9,8" times "0,4134" = "4,051" thin "m/s"^2$.
    Chiều dài dốc: $s_1 = frac(h, sin 30 degree) = frac("5,0", "0,5") = "10,0" thin "m"$.
    Vận tốc chân dốc: $v_B^2 - 0 = 2 a_1 s_1 => v_B = sqrt(2 times "4,051" times "10,0") = sqrt("81,02") approx "9,00" thin "m/s"$.
    #parbreak() b) Trên mặt phẳng ngang:
    Gia tốc hãm: $a_2 = -mu_2 g = -"0,20" times "9,8" = -"1,96" thin "m/s"^2$.
    Quãng đường trượt: $0 - v_B^2 = 2 a_2 s_2 => s_2 = frac(-v_B^2, 2 a_2) = frac(-"81,02", 2 times (-"1,96")) = frac("81,02", "3,92") approx "20,67" thin "m"$.],
)

// ESSAY-04
#vp-question(
  [Xe lăn $M = "0,500" thin "kg"$ được kéo bởi quả treo $m = "0,050" thin "kg"$ qua ròng rọc. Hai cổng quang cách nhau $s = "0,500" thin "m"$. Năm thời gian đi từ cổng A đến B là $"0,821"$; $"0,818"$; $"0,825"$; $"0,820"$; $"0,822"$ s. Lấy $g = "9,80" thin "m/s"^2$. Chưa đo vận tốc tại A; chưa cho sai số dụng cụ đo thời gian và khoảng cách.
    #parbreak() a) Tính thời gian trung bình. Có đủ dữ kiện suy ra gia tốc bằng $2 s/overline(t)^2$ không? Tính giá trị quy ước $a^* = 2 s/overline(t)^2$ nếu giả sử xe bắt đầu từ nghỉ tại A.
    #parbreak() b) Tính gia tốc lí thuyết của hệ với dây/ròng rọc lí tưởng, ray ngang không ma sát. So sánh với $a^*$; vì sao chưa thể chỉ từ độ chênh lệch mà kết luận ray bị nghiêng? Nếu gia tốc thực bằng lí thuyết, ước tính vận tốc tại A cần có để đi hết đoạn trong thời gian trung bình.
    #parbreak() c) Tính độ lệch tuyệt đối trung bình của các lần đo thời gian. Có thể xác định sai số tổng cộng và ghi kết quả gia tốc kèm sai số đầy đủ từ dữ kiện hiện có không?
  ],
  type: "essay",
  lines: 13,
  sol: [a) $overline(t) = frac("0,821" + "0,818" + "0,825" + "0,820" + "0,822", 5) = "0,8212" thin "s"$.
    Công thức đúng là $s = v_A t + frac(1, 2) a t^2$. Chưa biết $v_A$ nên chưa xác định được $a$. Nếu giả sử $v_A = 0$ thì $a^* = frac(1, "0,8212"^2) approx "1,483" thin "m/s"^2$; đây không phải gia tốc thực nghiệm đã được xác lập.
    #parbreak() b) $a_("lt") = frac("0,050" times "9,80", "0,550") approx "0,891" thin "m/s"^2$. Sự chênh lệch có thể xuất phát từ việc xe đã có vận tốc khi qua A, không nhất thiết do ray nghiêng. Nếu $a = a_("lt")$, $v_A = frac(s, overline(t)) - frac(1, 2) a_("lt") overline(t) approx "0,243" thin "m/s"$.
    #parbreak() c) Các độ lệch tuyệt đối là $"0,0002"$; $"0,0032"$; $"0,0038"$; $"0,0012"$; $"0,0008"$ s. Trung bình $overline(Delta t) = "0,00184" thin "s"$. Đây chỉ là độ phân tán theo quy ước độ lệch tuyệt đối trung bình. Thiếu sai số dụng cụ và vận tốc tại A nên không thể báo sai số tổng cộng của gia tốc. Không tự đặt sai số khoảng cách bằng $"0,001" thin "m"$.],
)

// ESSAY-05
#vp-question(
  [Với một hệ vật chất xác định, tổng ngoại lực bằng tốc độ biến thiên tổng động lượng: $bold(F)_("ngoại") = frac(d bold(p), d t)$.
    #parbreak() a) Hãy chứng minh rằng khi khối lượng $m$ không đổi, công thức này trở về dạng quen thuộc $bold(F) = m bold(a)$.
    #parbreak() b) Tên lửa khối lượng ban đầu $M_0 = 100 thin "tấn"$ phụt khí xuống dưới với tốc độ $u = 2000 thin "m/s"$ so với tên lửa. Tốc độ mất khối lượng dương là $q = -frac(d M, d t) = 500 thin "kg/s"$. Bỏ qua lực cản và hiệu ứng chênh lệch áp suất ở miệng phụt; cho lực đẩy $F_("đẩy") = u q$. Tính lực đẩy và gia tốc ban đầu khi phóng thẳng đứng, lấy $g = "9,8" thin "m/s"^2$.
  ],
  type: "essay",
  lines: 10,
  sol: [a) $bold(F) = frac(d bold(p), d t) = frac(d(m bold(v)), d t) = m frac(d bold(v), d t) + bold(v) frac(d m, d t)$.
    Khi khối lượng $m = "const"$ thì $frac(d m, d t) = 0$.
    Do đó $bold(F) = m frac(d bold(v), d t) = m bold(a)$ (đpcm).
    #parbreak() b) Tên lửa riêng là hệ trao đổi khối lượng; không áp dụng máy móc đạo hàm $M bold(v)$ như một hệ vật chất kín. Theo công thức lực đẩy được cho: $F_("đẩy") = u q = 2000 times 500 = 1000000 thin "N" = "1,0" thin "MN"$.
    Khối lượng ban đầu: $M_0 = 100 thin "tấn" = 100000 thin "kg"$.
    Phương trình chuyển động lúc cất cánh: $F_("đẩy") - M_0 g = M_0 a_0$.
    $a_0 = frac(F_("đẩy") - M_0 g, M_0) = frac(1000000 - 100000 times "9,8", 100000) = frac(1000000 - 980000, 100000) = frac(20000, 100000) = "0,20" thin "m/s"^2$.],
)

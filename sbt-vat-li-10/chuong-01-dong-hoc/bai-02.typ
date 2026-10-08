#import "../cau-hinh.typ": *

// Nguồn: nguon/bai-02-goc.txt; hiệu đính: nguon/bai-02-ghi-chu.md.
// Mỗi câu là một vp-question độc lập; đáp án và lời giải ẩn trên bản học sinh.
#sbt-bai(num: "2", title: "Quãng đường và Độ dịch chuyển", label: <bai-02>)

= Phần I. Trắc nghiệm khách quan
#sbt-instructions(reset: true)[Chọn một phương án đúng trong mỗi câu.]

// MCQ-01 — Hành trình trên đường thẳng
#vp-question(
  [Một ô tô đi trên đường thẳng từ A đến B, cách A $105 thin "km"$, rồi quay lại đi thêm $45 thin "km"$. Tỉ số giữa độ lớn độ dịch chuyển và quãng đường đi được trong cả hành trình là bao nhiêu?],
  type: "mcq",
  options: (
    [$"0,40"$.],
    [$"0,70"$.],
    [$"1,00"$.],
    [$"0,25"$.],
  ),
  ans: "A",
  sol: [Quãng đường $s = 105 + 45 = 150 thin "km"$. Độ lớn độ dịch chuyển $abs(d) = 105 - 45 = 60 thin "km"$. Do đó $abs(d)/s = 60/150 = "0,40"$.],
)

// MCQ-02 — Bất đẳng thức tam giác
#vp-question(
  [Một vật có hai độ dịch chuyển liên tiếp với độ lớn $6 thin "m"$ và $8 thin "m"$. Độ lớn độ dịch chuyển tổng cộng không thể nhận giá trị nào sau đây?],
  type: "mcq",
  options: (
    [$2 thin "m"$.],
    [$10 thin "m"$.],
    [$14 thin "m"$.],
    [$15 thin "m"$.],
  ),
  ans: "D",
  sol: [Theo bất đẳng thức tam giác, $abs(8 - 6) <= abs(arrow(d)) <= 8 + 6$. Độ lớn độ dịch chuyển tổng cộng nằm trong khoảng từ $2 thin "m"$ đến $14 thin "m"$.],
)

// MCQ-03 — Cung tròn và dây cung
#vp-question(
  [Một vật đi theo cung nhỏ AB của đường tròn bán kính $100 thin "m"$, với góc ở tâm $angle A O B = 120^°$. Độ lớn độ dịch chuyển và quãng đường lần lượt là bao nhiêu?],
  type: "mcq",
  options: (
    [$"173,21" thin "m"$ và $"209,44" thin "m"$.],
    [$"209,44" thin "m"$ và $"173,21" thin "m"$.],
    [$200 thin "m"$ và $"314,16" thin "m"$.],
    [$100 thin "m"$ và $"209,44" thin "m"$.],
  ),
  ans: "A",
  sol: [Độ lớn độ dịch chuyển bằng dây cung: $abs(arrow(d)) = 2 R sin 60^° = 100 sqrt(3) approx "173,21" thin "m"$. Quãng đường bằng độ dài cung: $s = frac(120, 360) dot 2 pi R approx "209,44" thin "m"$.],
)

// MCQ-04 — Góc của vectơ độ dịch chuyển
#vp-question(
  [Một rô-bốt đi từ O lần lượt $4 thin "m"$ về Đông, $3 thin "m"$ về Bắc và $8 thin "m"$ về Tây. Góc của vectơ độ dịch chuyển tổng cộng, đo ngược chiều kim đồng hồ từ hướng Đông, xấp xỉ bằng bao nhiêu?],
  type: "mcq",
  options: (
    [$"143,13"^°$.],
    [$"36,87"^°$.],
    [$"126,87"^°$.],
    [$"216,87"^°$.],
  ),
  ans: "A",
  sol: [Chọn chiều dương của $O x$ hướng Đông, $O y$ hướng Bắc. Điểm cuối có tọa độ $(-4; 3) thin "m"$. Vectơ lệch về Bắc so với hướng Tây một góc $alpha$ với $tan alpha = 3/4$. Góc cần tìm là $180^° - alpha approx "143,13"^°$.],
)

// MCQ-05 — Tọa độ, độ dịch chuyển và quãng đường
#vp-question(
  [Một vật chuyển động trên trục $O x$. Gọi $x$ là tọa độ, $d$ là độ dịch chuyển và $s$ là quãng đường tính từ cùng một thời điểm ban đầu. Phát biểu nào đúng?],
  type: "mcq",
  options: (
    [Tọa độ $x$ luôn bằng độ dịch chuyển $d$, bất kể cách chọn gốc tọa độ.],
    [Quãng đường $s$ không giảm theo thời gian, còn $x$ và $d$ có thể tăng hoặc giảm.],
    [Trong mọi chuyển động thẳng, $abs(d) = s$.],
    [Khi vật đổi chiều, $d$ luôn tăng còn $s$ giảm.],
  ),
  ans: "B",
  sol: [Quãng đường là độ dài đường đi tích lũy nên không giảm. Tọa độ và độ dịch chuyển có dấu; $d = x - x_0$ nên chỉ có $d = x$ khi $x_0 = 0$.],
)

// MCQ-06 — Hai chặng vuông góc
#vp-question(
  [Một tàu ngầm lặn thẳng đứng xuống $120 thin "m"$, sau đó đi ngang $160 thin "m"$ về Đông. Độ lớn độ dịch chuyển tổng cộng là bao nhiêu?],
  type: "mcq",
  options: (
    [$280 thin "m"$.],
    [$200 thin "m"$.],
    [$160 thin "m"$.],
    [$40 thin "m"$.],
  ),
  ans: "B",
  sol: [Hai chặng vuông góc nên $abs(arrow(d)) = sqrt(120^2 + 160^2) = 200 thin "m"$.],
)

// MCQ-07 — Độ dịch chuyển qua vòng xuyến
#vp-question(
  [Một xe đi trên vòng xuyến hình tròn đường kính $40 thin "m"$, từ điểm phía Nam đến điểm phía Tây của vòng xuyến. Độ dịch chuyển có độ lớn và hướng nào?],
  type: "mcq",
  options: (
    [$"28,28" thin "m"$, hướng Tây Bắc.],
    [$"31,42" thin "m"$, hướng Tây Nam.],
    [$"28,28" thin "m"$, hướng Đông Bắc.],
    [$40 thin "m"$, hướng Tây.],
  ),
  ans: "A",
  sol: [Lấy tâm vòng xuyến làm gốc, trục $O x$ hướng Đông, $O y$ hướng Bắc. Điểm đầu $(0; -20)$, điểm cuối $(-20; 0)$ nên $arrow(d) = (-20; 20) thin "m"$. Độ lớn bằng $20 sqrt(2) approx "28,28" thin "m"$, hướng Tây Bắc.],
)

// MCQ-08 — Đồ thị tọa độ giảm đều
#vp-question(
  [Đồ thị tọa độ–thời gian của một vật là đoạn thẳng nối điểm $(0; x_0)$ với điểm $(t_1; 0)$, trong đó $x_0 > 0$ và $t_1 > 0$. Trong khoảng thời gian này, độ dịch chuyển $d$ và quãng đường $s$ thỏa mãn hệ thức nào?],
  type: "mcq",
  options: (
    [$d > 0$, $s = d$.],
    [$d < 0$, $s = abs(d)$.],
    [$d < 0$, $s = 0$.],
    [$d = 0$, $s > 0$.],
  ),
  ans: "B",
  sol: [Vật chuyển động theo chiều âm, không đổi chiều. Vì vậy $d = -x_0 < 0$ và $s = x_0 = abs(d)$.],
)

// MCQ-09 — Hành trình khép kín
#vp-question(
  [Một người từ A đi $3 thin "km"$ về Đông đến B, rồi đi $4 thin "km"$ về Bắc đến C và trở về A theo đoạn thẳng CA. Độ lớn độ dịch chuyển của cả hành trình là bao nhiêu?],
  type: "mcq",
  options: (
    [$10 thin "km"$.],
    [$5 thin "km"$.],
    [$0 thin "km"$.],
    [$7 thin "km"$.],
  ),
  ans: "C",
  sol: [Điểm đầu và điểm cuối trùng nhau nên độ dịch chuyển bằng không, dù quãng đường là $3 + 4 + 5 = 12 thin "km"$.],
)

// MCQ-10 — Thay đổi gốc tọa độ
#vp-question(
  [Khi tịnh tiến gốc tọa độ trên một trục, giữ nguyên chiều dương và đơn vị đo, tọa độ và độ dịch chuyển của một vật giữa hai vị trí xác định thay đổi thế nào?],
  type: "mcq",
  options: (
    [Cả tọa độ và độ dịch chuyển đều không đổi.],
    [Tọa độ thay đổi, độ dịch chuyển không đổi.],
    [Tọa độ không đổi, độ dịch chuyển thay đổi.],
    [Cả tọa độ và độ dịch chuyển đều thay đổi.],
  ),
  ans: "B",
  sol: [Nếu gốc mới có tọa độ $a$ trong hệ cũ thì $x' = x - a$. Hiệu tọa độ không đổi: $d' = (x_2 - a) - (x_1 - a) = x_2 - x_1 = d$.],
)

// MCQ-11 — Hai hướng vuông góc
#vp-question(
  [Một người đi $5 thin "km"$ theo hướng từ Bắc lệch $30^°$ về Đông, rồi đi $5 thin "km"$ theo hướng từ Nam lệch $60^°$ về Đông. Độ lớn độ dịch chuyển tổng cộng xấp xỉ bằng bao nhiêu?],
  type: "mcq",
  options: (
    [$10 thin "km"$.],
    [$"7,07" thin "km"$.],
    [$5 thin "km"$.],
    [$"8,66" thin "km"$.],
  ),
  ans: "B",
  sol: [Hai hướng lần lượt tạo với hướng Đông các góc $+60^°$ và $-30^°$, nên vuông góc. Do đó $abs(arrow(d)) = sqrt(5^2 + 5^2) approx "7,07" thin "km"$.],
)

// MCQ-12 — Độ dịch chuyển từ phương trình tọa độ
#vp-question(
  [Một vật trên trục $O x$ có tọa độ $x = 10 - 4 t + t^2$, với $x$ tính bằng mét và $t$ bằng giây. Độ dịch chuyển từ $t = 1 thin "s"$ đến $t = 3 thin "s"$ bằng bao nhiêu?],
  type: "mcq",
  options: (
    [$0 thin "m"$.],
    [$4 thin "m"$.],
    [$-4 thin "m"$.],
    [$8 thin "m"$.],
  ),
  ans: "A",
  sol: [Tại hai thời điểm, $x(1) = 7 thin "m"$ và $x(3) = 7 thin "m"$. Vậy $d = x(3) - x(1) = 0$.],
)

// MCQ-13 — Quãng đường khi vật đổi chiều
#vp-question(
  [Một vật trên trục $O x$ có tọa độ $x = 10 - 4 t + t^2$, với $x$ tính bằng mét và $t$ bằng giây. Quãng đường từ $t = 1 thin "s"$ đến $t = 3 thin "s"$ bằng bao nhiêu?],
  type: "mcq",
  options: (
    [$0 thin "m"$.],
    [$2 thin "m"$.],
    [$4 thin "m"$.],
    [$1 thin "m"$.],
  ),
  ans: "B",
  sol: [Viết $x = (t - 2)^2 + 6$. Từ $t = 1$ đến $t = 2$, tọa độ giảm từ $7$ xuống $6 thin "m"$; từ $t = 2$ đến $t = 3$, tọa độ tăng trở lại $7 thin "m"$. Quãng đường $s = (7 - 6) + (7 - 6) = 2 thin "m"$.],
)

// MCQ-14 — Nhiều vòng trên đường tròn
#vp-question(
  [Một vận động viên chạy theo một chiều trên đường tròn chu vi $400 thin "m"$, hết $"2,5"$ vòng. Quãng đường và độ lớn độ dịch chuyển lần lượt là bao nhiêu?],
  type: "mcq",
  options: (
    [$1000 thin "m"$ và $"127,3" thin "m"$.],
    [$1000 thin "m"$ và $0 thin "m"$.],
    [$1000 thin "m"$ và $200 thin "m"$.],
    [$500 thin "m"$ và $"127,3" thin "m"$.],
  ),
  ans: "A",
  sol: [Quãng đường $s = "2,5" dot 400 = 1000 thin "m"$. Điểm cuối đối diện điểm đầu qua tâm, nên độ lớn độ dịch chuyển bằng đường kính: $abs(arrow(d)) = 400/pi approx "127,3" thin "m"$.],
)

// MCQ-15 — Chiều chuyển động từ đồ thị
#vp-question(
  [Hai vật A và B chuyển động trên cùng một trục tọa độ. Đồ thị độ dịch chuyển–thời gian của mỗi vật là một đường thẳng; đường của A có hệ số góc dương, đường của B có hệ số góc âm. Nhận định nào đúng?],
  type: "mcq",
  options: (
    [Hai vật chuyển động cùng chiều.],
    [A chuyển động theo chiều dương, B chuyển động theo chiều âm.],
    [Cả hai vật đều chuyển động chậm dần.],
    [Quãng đường vật B đi được giảm theo thời gian.],
  ),
  ans: "B",
  sol: [Hệ số góc của đồ thị độ dịch chuyển–thời gian là vận tốc. Vì vậy $v_A > 0$ và $v_B < 0$; hai vật chuyển động ngược chiều nhau.],
)

// MCQ-16 — Độ dịch chuyển có dấu
#vp-question(
  [Một con thỏ chạy trên trục $O x$ từ vị trí $x = 2 thin "m"$ đến $x = 10 thin "m"$ trong $4 thin "s"$, rồi quay lại vị trí $x = 4 thin "m"$ trong $2 thin "s"$. Độ dịch chuyển trong cả $6 thin "s"$ là bao nhiêu?],
  type: "mcq",
  options: (
    [$+2 thin "m"$.],
    [$+8 thin "m"$.],
    [$-6 thin "m"$.],
    [$+14 thin "m"$.],
  ),
  ans: "A",
  sol: [Độ dịch chuyển chỉ phụ thuộc vị trí đầu và cuối: $d = 4 - 2 = +2 thin "m"$.],
)

// MCQ-17 — Các thành phần đối xứng
#vp-question(
  [Một tàu đi $20$ hải lí theo hướng từ Đông lệch $30^°$ về Nam, rồi đi $20$ hải lí theo hướng từ Đông lệch $30^°$ về Bắc. Độ dịch chuyển tổng cộng có độ lớn và hướng nào?],
  type: "mcq",
  options: (
    [$"34,64"$ hải lí, hướng Đông.],
    [$40$ hải lí, hướng Đông.],
    [$20$ hải lí, từ Đông lệch $30^°$ về Bắc.],
    [$"34,64"$ hải lí, hướng Bắc.],
  ),
  ans: "A",
  sol: [Hai thành phần theo phương Bắc–Nam triệt tiêu. Thành phần hướng Đông là $2 dot 20 cos 30^° = 20 sqrt(3) approx "34,64"$ hải lí.],
)

// MCQ-18 — Phân biệt quãng đường và độ dịch chuyển
#vp-question(
  [Phát biểu nào sau đây *sai*?],
  type: "mcq",
  options: (
    [Vectơ độ dịch chuyển biểu thị sự thay đổi vị trí của vật.],
    [Khi vật chuyển động thẳng không đổi chiều, độ lớn độ dịch chuyển bằng quãng đường.],
    [Độ dịch chuyển có thể bằng không dù vật đã đi được một quãng đường lớn.],
    [Độ lớn độ dịch chuyển luôn bằng quãng đường, với mọi dạng quỹ đạo.],
  ),
  ans: "D",
  sol: [Luôn có $abs(arrow(d)) <= s$. Với hành trình khép kín có chuyển động, $arrow(d) = 0$ nhưng $s > 0$, nên phát biểu D sai.],
)

// MCQ-19 — Độ dịch chuyển khi rơi lệch
#vp-question(
  [Một chiếc lá rơi từ độ cao $5 thin "m"$ xuống mặt đất nằm ngang. Điểm chạm đất cách hình chiếu thẳng đứng của điểm rơi ban đầu $3 thin "m"$. Độ lớn độ dịch chuyển xấp xỉ bằng bao nhiêu?],
  type: "mcq",
  options: (
    [$"5,83" thin "m"$.],
    [$8 thin "m"$.],
    [$5 thin "m"$.],
    [$2 thin "m"$.],
  ),
  ans: "A",
  sol: [Độ lớn độ dịch chuyển bằng khoảng cách giữa hai vị trí: $abs(arrow(d)) = sqrt(5^2 + 3^2) = sqrt(34) approx "5,83" thin "m"$.],
)

// MCQ-20 — Chuyển động của thang máy
#vp-question(
  [Một thang máy đi từ tầng 1 lên tầng 10 rồi xuống tầng 4. Khoảng cách giữa hai tầng liên tiếp là $"3,5" thin "m"$. Chọn gốc tọa độ tại tầng 1, chiều dương hướng lên. Độ dịch chuyển và quãng đường lần lượt là bao nhiêu?],
  type: "mcq",
  options: (
    [$+"10,5" thin "m"$ và $"52,5" thin "m"$.],
    [$+"31,5" thin "m"$ và $"52,5" thin "m"$.],
    [$-"10,5" thin "m"$ và $"31,5" thin "m"$.],
    [$+"52,5" thin "m"$ và $"52,5" thin "m"$.],
  ),
  ans: "A",
  sol: [Độ dịch chuyển $d = (4 - 1) dot "3,5" = +"10,5" thin "m"$. Quãng đường $s = ((10 - 1) + (10 - 4)) dot "3,5" = "52,5" thin "m"$.],
)

= Phần II. Trắc nghiệm Đúng/Sai
#sbt-instructions(reset: true)[Xác định mỗi phát biểu a), b), c), d) là đúng hay sai.]

// TF-01 — Hành trình ba chặng
#vp-question(
  [Một xe máy từ A đi thẳng $4 thin "km"$ về Đông đến B, rồi $3 thin "km"$ về Bắc đến C và $8 thin "km"$ về Tây đến D. Chọn gốc tọa độ tại A, chiều dương $O x$ hướng Đông, $O y$ hướng Bắc.],
  type: "tf",
  statements: (
    [Tổng quãng đường xe đi được là $15 thin "km"$.],
    [Tọa độ D là $(-4; +3) thin "km"$.],
    [Độ lớn độ dịch chuyển từ A đến D bằng $5 thin "km"$.],
    [Vectơ độ dịch chuyển từ A đến D lệch về Bắc so với hướng Tây một góc xấp xỉ $"36,87"^°$.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "Đ"),
  sol: [a) $s = 4 + 3 + 8 = 15 thin "km"$.
    #parbreak()
    b) $d_x = 4 - 8 = -4 thin "km"$, $d_y = 3 thin "km"$.
    #parbreak()
    c) $abs(arrow(d)) = sqrt((-4)^2 + 3^2) = 5 thin "km"$.
    #parbreak()
    d) Góc lệch $alpha$ thỏa mãn $tan alpha = 3/4$, nên $alpha approx "36,87"^°$.],
)

// TF-02 — Đi qua gốc tọa độ không đồng nghĩa với đổi chiều
#vp-question(
  [Một vật xuất phát từ gốc O, chuyển động dọc trục $O x$. Đồ thị độ dịch chuyển–thời gian gồm ba đoạn thẳng nối lần lượt các điểm $(0; 0)$, $(2; 6)$, $(5; 6)$ và $(8; -3)$, với thời gian tính bằng giây, độ dịch chuyển tính bằng mét.],
  type: "tf",
  statements: (
    [Trong $2$ giây đầu, vật chuyển động thẳng đều theo chiều dương với tốc độ $3 thin "m/s"$.],
    [Từ $t = 2 thin "s"$ đến $t = 5 thin "s"$, vật đứng yên cách O $6 thin "m"$.],
    [Trong giai đoạn từ $5 thin "s"$ đến $8 thin "s"$, vật đổi chiều khi đi qua O và đi được quãng đường $9 thin "m"$.],
    [Trong cả $8 thin "s"$, tổng quãng đường là $9 thin "m"$ và độ dịch chuyển là $-3 thin "m"$.],
  ),
  ans-tf: ("Đ", "Đ", "S", "S"),
  sol: [a) $v = (6 - 0)/(2 - 0) = 3 thin "m/s"$.
    #parbreak()
    b) Độ dịch chuyển không đổi, nên vật đứng yên tại $x = 6 thin "m"$.
    #parbreak()
    c) Trong chặng cuối, $v = (-3 - 6)/(8 - 5) = -3 thin "m/s"$ không đổi. Vật đi qua O tại $t = 7 thin "s"$ nhưng không đổi chiều tại đó; quãng đường của chặng này là $9 thin "m"$.
    #parbreak()
    d) $s = 6 + 0 + 9 = 15 thin "m"$, còn $d = -3 thin "m"$.],
)

// TF-03 — Tính chất của vectơ độ dịch chuyển
#vp-question(
  [Xét một vật chuyển động trong mặt phẳng. Gọi $arrow(d)$ là độ dịch chuyển tổng cộng và $s$ là quãng đường vật đi được.],
  type: "tf",
  statements: (
    [Độ lớn độ dịch chuyển tổng cộng luôn bằng tổng độ lớn các độ dịch chuyển thành phần.],
    [Trong mọi trường hợp, $abs(arrow(d)) <= s$.],
    [Với $s > 0$, dấu bằng $abs(arrow(d)) = s$ xảy ra khi và chỉ khi vật chuyển động thẳng, không đổi chiều.],
    [Nếu $arrow(d) = 0$ thì bắt buộc $s = 0$.],
  ),
  ans-tf: ("S", "Đ", "Đ", "S"),
  sol: [a) Phải cộng các vectơ độ dịch chuyển; không thể luôn cộng độ lớn của chúng.
    #parbreak()
    b) Đường thẳng nối điểm đầu và điểm cuối không dài hơn đường đi.
    #parbreak()
    c) Dấu bằng xảy ra khi các phần chuyển động đều cùng phương, cùng chiều; vật có thể dừng nghỉ giữa chặng.
    #parbreak()
    d) Một vật đi rồi quay về điểm xuất phát có độ dịch chuyển bằng không nhưng quãng đường khác không.],
)

// TF-04 — Các thành phần độ dịch chuyển trên biển
#vp-question(
  [Một tàu từ cảng đi $50$ hải lí về Đông, $30$ hải lí về Nam rồi $10$ hải lí về Tây. Chọn gốc tọa độ tại cảng, chiều dương $O x$ hướng Đông, $O y$ hướng Bắc. Coi hành trình nằm trong một mặt phẳng.],
  type: "tf",
  statements: (
    [Tổng quãng đường là $90$ hải lí.],
    [Các thành phần độ dịch chuyển là $d_x = +40$ hải lí và $d_y = -30$ hải lí.],
    [Khoảng cách theo đường thẳng từ điểm cuối về cảng là $50$ hải lí.],
    [Vectơ độ dịch chuyển từ cảng đến điểm cuối lệch về Nam so với hướng Đông một góc xấp xỉ $"36,87"^°$.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "Đ"),
  sol: [a) $s = 50 + 30 + 10 = 90$ hải lí.
    #parbreak()
    b) $d_x = 50 - 10 = 40$, $d_y = -30$ (hải lí).
    #parbreak()
    c) $abs(arrow(d)) = sqrt(40^2 + 30^2) = 50$ hải lí.
    #parbreak()
    d) $tan alpha = 30/40$, nên $alpha approx "36,87"^°$ về phía Nam so với hướng Đông.],
)

// TF-05 — Hai hệ quy chiếu
#vp-question(
  [Một toa tàu chạy thẳng đều về Bắc với tốc độ $15 thin "m/s"$ so với mặt đất. Trong $10 thin "s"$, hành khách A ngồi yên trên ghế, còn B đi dọc toa về Nam với tốc độ $"1,5" thin "m/s"$ so với toa tàu.],
  type: "tf",
  statements: (
    [Độ dịch chuyển của A so với toa tàu bằng không.],
    [Độ dịch chuyển của B so với toa tàu có độ lớn $15 thin "m"$, hướng Nam.],
    [Độ dịch chuyển của B so với mặt đất có độ lớn $135 thin "m"$, hướng Bắc.],
    [Độ dịch chuyển của A so với mặt đất có độ lớn $150 thin "m"$, hướng Bắc.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "Đ"),
  sol: [Chọn chiều dương hướng Bắc. Trong $10 thin "s"$, toa tàu dịch chuyển $d_("tàu/đất") = 15 dot 10 = 150 thin "m"$.
    #parbreak()
    a) A đứng yên so với toa nên $d_("A/tàu") = 0$.
    #parbreak()
    b) $d_("B/tàu") = -"1,5" dot 10 = -15 thin "m"$.
    #parbreak()
    c) $d_("B/đất") = -15 + 150 = 135 thin "m"$.
    #parbreak()
    d) $d_("A/đất") = 0 + 150 = 150 thin "m"$.],
)

= Phần III. Trắc nghiệm trả lời ngắn
#sbt-instructions(reset: true)[Tính và điền kết quả theo yêu cầu của từng câu.]

// SHORT-01 — Điểm đầu và điểm cuối
#vp-question(
  [Một phòng hình vuông ABCD có cạnh $6 thin "m"$. Rô-bốt đi từ A theo cạnh AB đến B, theo cạnh BC đến C, rồi theo đoạn thẳng CM đến trung điểm M của AB. Tính độ lớn độ dịch chuyển từ A đến M theo mét, làm tròn đến hai chữ số thập phân.],
  type: "short",
  ans: "3,00",
  sol: [Độ lớn độ dịch chuyển là khoảng cách giữa điểm đầu A và điểm cuối M: $abs(arrow(d)) = A M = A B/2 = 3 thin "m"$. Kết quả: $"3,00" thin "m"$. Độ dài CM không phải độ lớn độ dịch chuyển của cả hành trình.],
)

// SHORT-02 — Đường chạy với hai nửa đường tròn
#vp-question(
  [Một đường chạy gồm hai đoạn thẳng song song dài $"84,39" thin "m"$, nối với nhau bằng hai nửa đường tròn bán kính $"36,50" thin "m"$. Một người xuất phát từ đầu đoạn thẳng thứ nhất, chạy hết đoạn đó, qua nửa đường tròn thứ nhất, rồi chạy hết đoạn thẳng thứ hai. Tính tỉ số giữa quãng đường và độ lớn độ dịch chuyển, làm tròn đến hai chữ số thập phân.],
  type: "short",
  ans: "3,88",
  sol: [Điểm đầu và điểm cuối là hai đầu đường kính của nửa đường tròn còn lại, nên $abs(arrow(d)) = 2 R = 73 thin "m"$. Quãng đường $s = 2 dot "84,39" + pi dot "36,50" approx "283,448" thin "m"$. Suy ra $s/abs(arrow(d)) approx "3,88"$.],
)

// SHORT-03 — Hai hướng vuông góc
#vp-question(
  [Một tàu từ cảng đi $12 thin "km"$ theo hướng từ Đông lệch $30^°$ về Bắc, rồi đi $16 thin "km"$ theo hướng từ Đông lệch $60^°$ về Nam. Coi hành trình nằm trong một mặt phẳng. Tính khoảng cách theo đường thẳng từ điểm cuối về cảng theo kilômét, làm tròn đến một chữ số thập phân.],
  type: "short",
  ans: "20,0",
  sol: [Hai hướng chuyển động vuông góc vì $30^° + 60^° = 90^°$. Khoảng cách cần tìm là $sqrt(12^2 + 16^2) = 20 thin "km"$. Kết quả: $"20,0" thin "km"$.],
)

// SHORT-04 — Quãng đường khi quay đầu
#vp-question(
  [Một ô tô chuyển động trên trục $O x$, từ $x_0 = +5 thin "km"$ sang trái đến $x_1 = -12 thin "km"$, rồi quay đầu đến $x_2 = +8 thin "km"$. Tính tỉ số giữa tổng quãng đường và độ lớn độ dịch chuyển, làm tròn đến hai chữ số thập phân.],
  type: "short",
  ans: "12,33",
  short-boxes: 5,
  sol: [Quãng đường $s = abs(-12 - 5) + abs(8 - (-12)) = 17 + 20 = 37 thin "km"$. Độ lớn độ dịch chuyển $abs(d) = abs(8 - 5) = 3 thin "km"$. Tỉ số $s/abs(d) = 37/3 approx "12,33"$.],
)

// SHORT-05 — Độ dịch chuyển trong không gian
#vp-question(
  [Một thiết bị lặn từ A đi thẳng đứng xuống $80 thin "m"$, đi ngang $60 thin "m"$ về Nam, rồi đi ngang $60 thin "m"$ về Đông đến B. Tính độ lớn độ dịch chuyển từ A đến B theo mét, làm tròn đến số nguyên gần nhất.],
  type: "short",
  ans: "117",
  sol: [Ba chặng vuông góc đôi một nên $abs(arrow(d)) = sqrt(80^2 + 60^2 + 60^2) = sqrt(13600) approx "116,62" thin "m"$. Làm tròn đến mét: $117 thin "m"$.],
)

= Phần IV. Tự luận
#sbt-instructions(reset: true)[Trình bày lập luận, công thức và các bước tính.]

// ESSAY-01 — Bất đẳng thức giữa độ dịch chuyển và quãng đường
#vp-question(
  [Một vật lần lượt đi qua $N$ điểm trong mặt phẳng, theo đoạn thẳng nối mỗi cặp điểm liên tiếp. Gọi $arrow(d)_1, arrow(d)_2, ..., arrow(d)_(N-1)$ là các độ dịch chuyển thành phần và $s > 0$ là tổng quãng đường.
    #parbreak()
    a) Dùng quy tắc cộng vectơ và bất đẳng thức tam giác để chứng minh $abs(arrow(d)) <= s$, với $arrow(d)$ là độ dịch chuyển tổng cộng.
    #parbreak()
    b) Nêu điều kiện để dấu bằng xảy ra. Vì sao điều kiện này thường khó đạt được với một hành trình qua nhiều tuyến phố?],
  type: "essay",
  lines: 10,
  sol: [a) Theo quy tắc cộng vectơ,
    $ arrow(d) = sum_(i=1)^(N-1) arrow(d)_i. $
    Áp dụng liên tiếp bất đẳng thức tam giác:
    $ abs(arrow(d)) = abs(sum_(i=1)^(N-1) arrow(d)_i) <= sum_(i=1)^(N-1) abs(arrow(d)_i) = s. $
    Đẳng thức cuối đúng vì vật đi theo đoạn thẳng giữa mỗi cặp điểm liên tiếp.
    #parbreak()
    b) Dấu bằng xảy ra khi tất cả các vectơ thành phần khác không cùng phương, cùng chiều. Khi đó vật chuyển động thẳng, không đổi chiều; có thể dừng nghỉ. Hành trình qua nhiều tuyến phố thường có chỗ rẽ nên các vectơ thành phần không cùng hướng, dẫn đến $abs(arrow(d)) < s$.],
)

// ESSAY-02 — Tổng hợp độ dịch chuyển theo hai trục
#vp-question(
  [Một xe buýt đi theo ba đoạn thẳng: $"3,5" thin "km"$ từ Tây lệch $30^°$ về Nam; $"5,5" thin "km"$ từ Tây lệch $45^°$ về Nam; $"5,0" thin "km"$ từ Tây lệch $20^°$ về Nam. Chọn gốc O tại điểm xuất phát, chiều dương $O x$ hướng Đông, $O y$ hướng Bắc.
    #parbreak()
    a) Xác định tọa độ điểm cuối.
    #parbreak()
    b) Tính độ lớn và hướng của độ dịch chuyển tổng cộng.
    #parbreak()
    c) So sánh độ lớn độ dịch chuyển với tổng quãng đường. Nếu có thể nối hai đầu hành trình bằng một tuyến thẳng, quãng đường giảm bao nhiêu?],
  type: "essay",
  lines: 14,
  sol: [a) Cả ba đoạn đều hướng về Tây và Nam, nên các thành phần đều âm:
    $ d_x = -("3,5" cos 30^° + "5,5" cos 45^° + "5,0" cos 20^°) approx -"11,62" thin "km", $
    $ d_y = -("3,5" sin 30^° + "5,5" sin 45^° + "5,0" sin 20^°) approx -"7,35" thin "km". $
    Điểm cuối có tọa độ xấp xỉ $(-"11,62"; -"7,35") thin "km"$.
    #parbreak()
    b) Dùng các giá trị chưa làm tròn, $abs(arrow(d)) = sqrt(d_x^2 + d_y^2) approx "13,75" thin "km"$. Góc lệch về Nam so với hướng Tây thỏa mãn $tan alpha = abs(d_y)/abs(d_x)$, suy ra $alpha approx "32,3"^°$.
    #parbreak()
    c) $s = "3,5" + "5,5" + "5,0" = 14 thin "km" > abs(arrow(d))$. Tuyến thẳng ngắn hơn khoảng $"0,25" thin "km"$. Việc xây tuyến thẳng thực tế còn phụ thuộc địa hình và các công trình trên đường.],
)

// ESSAY-03 — Hải trình và hướng trở về
#vp-question(
  [Một tàu xuất phát từ O, đi $60$ hải lí về Đông Bắc, $80$ hải lí về Đông Nam rồi $50$ hải lí về Tây Nam. Mỗi hướng tạo với hai hướng chính kề nó một góc $45^°$. Coi hành trình nằm trong một mặt phẳng; chọn chiều dương $O x$ hướng Đông, $O y$ hướng Bắc.
    #parbreak()
    a) Vẽ sơ đồ các vectơ độ dịch chuyển theo quy tắc nối đuôi.
    #parbreak()
    b) Tính các thành phần $d_x$, $d_y$ của độ dịch chuyển tổng cộng.
    #parbreak()
    c) Tính độ lớn độ dịch chuyển và xác định hướng để tàu đi thẳng từ điểm cuối về O.],
  type: "essay",
  lines: 14,
  sol: [a) Gọi A, B, C là điểm cuối của ba chặng. Vẽ liên tiếp $arrow(O A)$ theo hướng Đông Bắc, $arrow(A B)$ theo hướng Đông Nam, $arrow(B C)$ theo hướng Tây Nam. Vectơ tổng là $arrow(O C)$; vectơ trở về là $arrow(C O)$. Tọa độ để dựng sơ đồ (hải lí):
    $ O(0; 0), quad A(30 sqrt(2); 30 sqrt(2)), $
    $ B(70 sqrt(2); -10 sqrt(2)), quad C(45 sqrt(2); -35 sqrt(2)). $
    #parbreak()
    b) $d_x = (60 + 80 - 50)/sqrt(2) = 45 sqrt(2) approx "63,64"$ hải lí;
    $d_y = (60 - 80 - 50)/sqrt(2) = -35 sqrt(2) approx -"49,50"$ hải lí.
    #parbreak()
    c) $abs(arrow(d)) = sqrt((45 sqrt(2))^2 + (-35 sqrt(2))^2) = sqrt(6500) approx "80,62"$ hải lí. Vectơ trở về có thành phần $(-45 sqrt(2); 35 sqrt(2))$ hải lí, hướng Tây lệch về Bắc một góc $alpha$ với $tan alpha = 35/45$, tức $alpha approx "37,9"^°$.],
)

// ESSAY-04 — Dữ liệu tọa độ và sai số GPS
#vp-question(
  [Thiết bị GPS ghi tọa độ của một ô tô trong mặt phẳng $O x y$ tại bốn thời điểm như bảng dưới. Đơn vị tọa độ là kilômét.
    #align(center, table(
      columns: (auto, auto, auto), inset: 6pt,
      table.header([Thời gian (phút)], [Vị trí], [Tọa độ $(x; y)$]),
      [0], [A], [$(0; 0)$], [30], [B], [$(30; 10)$],
      [60], [C], [$(65; 15)$], [90], [D], [$(95; 20)$],
    ))
    a) Tính các vectơ độ dịch chuyển $arrow(d)_("AB")$, $arrow(d)_("BC")$, $arrow(d)_("CD")$ và $arrow(d)_("AD")$.
    #parbreak()
    b) So sánh tổng độ lớn các độ dịch chuyển thành phần với $abs(arrow(d)_("AD"))$. Nhận xét đường gấp khúc ABCD. Các điểm đo này có đủ để xác định quãng đường thực tế của xe không?
    #parbreak()
    c) Giả sử vị trí thực tại mỗi thời điểm nằm trong hình tròn bán kính $"0,5" thin "km"$ quanh vị trí GPS ghi nhận. Tính sai số cực đại của độ lớn độ dịch chuyển AD.],
  type: "essay",
  lines: 16,
  sol: [a) Lấy tọa độ điểm cuối trừ tọa độ điểm đầu:
    $ arrow(d)_("AB") = (30; 10) thin "km", quad arrow(d)_("BC") = (35; 5) thin "km", $
    $ arrow(d)_("CD") = (30; 5) thin "km", quad arrow(d)_("AD") = (95; 20) thin "km". $
    #parbreak()
    b) Tổng độ dài ba đoạn nối là
    $ L = sqrt(30^2 + 10^2) + sqrt(35^2 + 5^2) + sqrt(30^2 + 5^2) approx "97,39" thin "km". $
    Trong khi đó $abs(arrow(d)_("AD")) = sqrt(95^2 + 20^2) approx "97,08" thin "km"$. Đường gấp khúc dài hơn đoạn AD khoảng $"0,31" thin "km"$, nên khá gần một đường thẳng xét theo độ dài. Tuy nhiên, không biết đường đi giữa các lần ghi nhận nên chưa thể xác định quãng đường thực tế; tổng độ dài các đoạn nối không nhất thiết bằng quãng đường xe đã đi.
    #parbreak()
    c) Gọi $arrow(e)_A$, $arrow(e)_D$ là sai lệch vị trí hai đầu, mỗi vectơ có độ lớn không quá $"0,5" thin "km"$. Sai lệch của vectơ độ dịch chuyển là $arrow(e)_D - arrow(e)_A$, có độ lớn không quá $"1,0" thin "km"$. Vì vậy sai số của độ lớn độ dịch chuyển cũng không quá $"1,0" thin "km"$. Giới hạn này đạt được khi hai sai lệch cùng phương AD, ngược chiều nhau. Khoảng giá trị có thể của độ lớn thực là từ khoảng $"96,08" thin "km"$ đến $"98,08" thin "km"$.],
)

// ESSAY-05 — Tọa độ và độ dịch chuyển trong không gian
#vp-question(
  [Một đoàn khảo sát từ cửa hang O đi ngang $400 thin "m"$ về Bắc, đi ngang $300 thin "m"$ về Đông, rồi xuống thẳng đứng $150 thin "m"$ đến P.
    #parbreak()
    a) Chọn hệ tọa độ vuông góc $O x y z$ với chiều dương $O x$ hướng Đông, $O y$ hướng Bắc, $O z$ hướng lên. Xác định tọa độ P.
    #parbreak()
    b) Tính độ lớn độ dịch chuyển từ O đến P.
    #parbreak()
    c) Nếu có thể căng một sợi cáp thẳng từ O đến P, không có vật cản và bỏ qua độ võng, chiều dài cáp tối thiểu là bao nhiêu? So sánh với tổng quãng đường đoàn đã đi.],
  type: "essay",
  lines: 12,
  sol: [a) $P(300; 400; -150) thin "m"$.
    #parbreak()
    b) $abs(arrow(d)_("OP")) = sqrt(300^2 + 400^2 + (-150)^2) = sqrt(272500) approx "522,02" thin "m"$.
    #parbreak()
    c) Với các giả thiết đã cho, chiều dài cáp tối thiểu bằng khoảng cách OP, xấp xỉ $"522,02" thin "m"$. Tổng quãng đường đoàn đi là $s = 400 + 300 + 150 = 850 thin "m"$. Cáp đi thẳng giữa hai đầu, còn đoàn đi theo ba đoạn vuông góc, nên chiều dài cáp nhỏ hơn quãng đường khoảng $"327,98" thin "m"$.],
)

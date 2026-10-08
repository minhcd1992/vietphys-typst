#import "../cau-hinh.typ": *
#import "images/bai-05-do-thi.typ": bai-05-hinh

// Nguồn: nguon/bai-05-goc.txt; hiệu đính: nguon/bai-05-ghi-chu.md.
// Đáp án, lời giải và hình trong lời giải ẩn trên bản học sinh.
#sbt-bai(num: "5", title: "Gia tốc và Chuyển động thẳng biến đổi đều", label: <bai-05>)

= Phần I. Trắc nghiệm khách quan
#sbt-instructions(reset: true)[Chọn một phương án đúng trong mỗi câu.]

// MCQ-01
#vp-question(
  [Một chất điểm chuyển động thẳng biến đổi đều trên trục $O x$. Tại thời điểm đang xét, $v < 0$ và $a > 0$. Chất điểm đang chuyển động như thế nào?],
  type: "mcq",
  options: ([Nhanh dần đều theo chiều dương.], [Chậm dần đều theo chiều âm.],
    [Nhanh dần đều theo chiều âm.], [Chậm dần đều theo chiều dương.]),
  ans: "B", sol: [$a v < 0$ nên tốc độ giảm; $v < 0$ nên vật đi theo chiều âm. Gia tốc không đổi nên chuyển động chậm dần đều.],
)

// MCQ-02
#vp-question(
  [Một xe trượt lên dốc thẳng rồi trượt ngược xuống, với gia tốc không đổi có độ lớn $"2,0" thin "m/s"^2$ hướng xuống dốc. Chọn chiều dương hướng lên dốc. Tại vị trí cao nhất, vận tốc và gia tốc của xe lần lượt là bao nhiêu?],
  type: "mcq",
  options: ([$v = 0$; $a = 0$.], [$v = 0$; $a = -"2,0" thin "m/s"^2$.],
    [$v = 0$; $a = +"2,0" thin "m/s"^2$.], [$v = -"2,0" thin "m/s"$; $a = -"2,0" thin "m/s"^2$.]),
  ans: "B", sol: [Tại điểm đổi chiều, $v = 0$ nhưng gia tốc vẫn hướng xuống dốc: $a = -"2,0" thin "m/s"^2$.],
)

// MCQ-03
#vp-question(
  [Đồ thị vận tốc–thời gian của một vật là đoạn thẳng từ $(0; 6)$ đến $(6; -6)$, cắt trục thời gian tại $t = 3 thin "s"$. Thời gian tính bằng giây, vận tốc bằng m/s. Nhận xét nào đúng?
    #align(center, bai-05-hinh("mcq-03"))
  ],
  type: "mcq",
  options: ([Gia tốc đổi từ $-2$ thành $+2 thin "m/s"^2$ tại $t = 3 thin "s"$.],
    [Trong cả 6 giây, gia tốc không đổi và bằng $-2 thin "m/s"^2$.],
    [Vật nhanh dần đều trong 3 giây đầu, chậm dần đều trong 3 giây sau.],
    [Tại $t = 3 thin "s"$, gia tốc bằng không vì vận tốc bằng không.]),
  ans: "B", sol: [$a = frac(-6 - 6, 6 - 0) = -2 thin "m/s"^2$. Ba giây đầu vật chậm dần theo chiều dương; ba giây sau nhanh dần theo chiều âm.],
)

// MCQ-04
#vp-question(
  [Một hòn đá trượt từ nghỉ xuống máng nghiêng thẳng với gia tốc không đổi. Gọi $s_1$, $s_2$ là quãng đường đi được trong giây thứ nhất và giây thứ hai. Tỉ số $s_2/s_1$ bằng bao nhiêu?],
  type: "mcq", options: ([$2$.], [$3$.], [$4$.], [$sqrt(2)$.]), ans: "B",
  sol: [Với $tau = 1 thin "s"$, $s_1 = a tau^2/2$, $s_2 = a (2 tau)^2/2 - a tau^2/2 = 3 a tau^2/2$. Do đó $s_2/s_1 = 3$.],
)

// MCQ-05
#vp-question(
  [Đồ thị gia tốc–thời gian của một vật có $a = +"1,5" thin "m/s"^2$ từ $t = 0$ đến $t = 8 thin "s"$. Diện tích hình chữ nhật tô màu biểu diễn đại lượng nào?
    #align(center, bai-05-hinh("mcq-05"))
  ],
  type: "mcq",
  options: ([Quãng đường $s = 12 thin "m"$.], [Độ biến thiên vận tốc $Delta v = 12 thin "m/s"$.],
    [Độ dịch chuyển $d = 12 thin "m"$.], [Vận tốc trung bình $overline(v) = "1,5" thin "m/s"$.]),
  ans: "B", sol: [$Delta v = a Delta t = "1,5" times 8 = 12 thin "m/s"$.],
)

// MCQ-06
#vp-question(
  [Một đoàn tàu đang chạy với tốc độ $72 thin "km/h"$ thì hãm phanh chậm dần đều, đi thêm $200 thin "m"$ rồi dừng hẳn. Độ lớn gia tốc phanh bằng bao nhiêu?],
  type: "mcq",
  options: ([$"1,0" thin "m/s"^2$.], [$"2,0" thin "m/s"^2$.], [$"0,5" thin "m/s"^2$.], [$"4,0" thin "m/s"^2$.]),
  ans: "A", sol: [$v_0 = 20 thin "m/s"$; $abs(a) = v_0^2/(2 s) = 20^2/(2 times 200) = "1,0" thin "m/s"^2$.],
)

// MCQ-07
#vp-question(
  [Một ô tô tăng tốc thẳng nhanh dần đều từ nghỉ lên $100 thin "km/h"$ trong $"4,4" thin "s"$. Quãng đường xe đi được gần nhất với giá trị nào?],
  type: "mcq", options: ([$"61,1" thin "m"$.], [$"122,2" thin "m"$.], [$"440,0" thin "m"$.], [$"30,6" thin "m"$.]),
  ans: "A", sol: [$v = 250/9 thin "m/s"$; $s = frac(v_0 + v, 2) t = 1/2 times 250/9 times "4,4" approx "61,1" thin "m"$.],
)

// MCQ-08
#vp-question(
  [Một vật chuyển động thẳng có $x(t) = 12 t - 2 t^2$, với $x$ tính bằng mét, $t >= 0$ tính bằng giây. Quãng đường vật đi được từ $t = 0$ đến $t = 4 thin "s"$ bằng bao nhiêu?],
  type: "mcq", options: ([$16 thin "m"$.], [$20 thin "m"$.], [$18 thin "m"$.], [$24 thin "m"$.]),
  ans: "B", sol: [$v = 12 - 4 t$ đổi dấu tại $t = 3 thin "s"$. Các tọa độ $x(0) = 0$, $x(3) = 18 thin "m"$, $x(4) = 16 thin "m"$ cho $s = abs(18 - 0) + abs(16 - 18) = 20 thin "m"$.],
)

// MCQ-09
#vp-question(
  [Đồ thị độ dịch chuyển–thời gian là parabol lõm xuống, đi qua gốc tọa độ, có đỉnh tại $(4 thin "s"; 16 thin "m")$. Dấu của vận tốc ban đầu và gia tốc là gì?
    #align(center, bai-05-hinh("mcq-09"))
  ],
  type: "mcq",
  options: ([$v_0 > 0$ và $a > 0$.], [$v_0 > 0$ và $a < 0$.], [$v_0 < 0$ và $a > 0$.], [$v_0 < 0$ và $a < 0$.]),
  ans: "B", sol: [Parabol có phương trình $d = 8 t - t^2$, nên $v_0 = 8 thin "m/s" > 0$ và $a = -2 thin "m/s"^2 < 0$.],
)

// MCQ-10
#vp-question(
  [Một xe tải phanh từ tốc độ $v_0$ với độ lớn gia tốc không đổi $a$. Trong mô hình giữ nguyên lực phanh, khi tổng khối lượng xe giảm một nửa thì độ lớn gia tốc tăng thành $2 a$. Với cùng tốc độ ban đầu, quãng đường phanh đến khi dừng hẳn thay đổi thế nào?],
  type: "mcq", options: ([Tăng gấp 2 lần.], [Giảm còn một nửa.], [Giảm còn một phần tư.], [Không đổi.]),
  ans: "B", sol: [$s = v_0^2/(2 a)$ với $a > 0$ là độ lớn gia tốc. Tăng $a$ gấp đôi làm $s$ giảm một nửa.],
)

// MCQ-11
#vp-question(
  [Xe A xuất phát từ nghỉ với gia tốc không đổi $"2,0" thin "m/s"^2$. Cùng lúc, xe B đi thẳng đều cùng chiều với tốc độ $10 thin "m/s"$ qua vị trí xuất phát của A. Từ lúc xuất phát đến khi A đuổi kịp B, khoảng cách giữa hai xe lớn nhất tại thời điểm nào?],
  type: "mcq", options: ([$"2,5" thin "s"$.], [$"5,0" thin "s"$.], [$"10,0" thin "s"$.], [$"7,5" thin "s"$.]),
  ans: "B", sol: [Trước lúc đuổi kịp, $D = 10 t - t^2 = 25 - (t - 5)^2$, với $0 <= t <= 10$. Khoảng cách lớn nhất tại $t = 5 thin "s"$, khi hai xe có cùng vận tốc.],
)

// MCQ-12
#vp-question(
  [Một ô tô đang chạy với tốc độ $72 thin "km/h"$. Sau khi thấy vật cản, tài xế phản ứng trong $"0,6" thin "s"$, xe vẫn giữ nguyên tốc độ. Sau đó xe phanh chậm dần đều với gia tốc $-"5,0" thin "m/s"^2$ theo chiều chuyển động ban đầu. Tổng quãng đường từ lúc thấy vật cản đến khi dừng hẳn bằng bao nhiêu?],
  type: "mcq", options: ([$"40,0" thin "m"$.], [$"52,0" thin "m"$.], [$"28,0" thin "m"$.], [$"32,0" thin "m"$.]),
  ans: "B", sol: [$v_0 = 20 thin "m/s"$; $D = v_0 t_r + v_0^2/(2 abs(a)) = 20 times "0,6" + 400/10 = 52 thin "m"$.],
)

// MCQ-13
#vp-question(
  [Một vật chuyển động thẳng nhanh dần đều từ nghỉ trong thời gian $T$. Gọi $v_1$, $v_2$ là vận tốc trung bình trong nửa thời gian đầu và nửa thời gian sau. Tỉ số $v_1/v_2$ bằng bao nhiêu?],
  type: "mcq", options: ([$1/2$.], [$1/3$.], [$1/4$.], [$2/3$.]), ans: "B",
  sol: [$v_1 = frac(0 + a T/2, 2) = a T/4$; $v_2 = frac(a T/2 + a T, 2) = 3 a T/4$. Vậy $v_1/v_2 = 1/3$.],
)

// MCQ-14
#vp-question(
  [Một chất điểm chuyển động thẳng có $x(t) = -2 t^2 + 8 t + 10$, với $x$ tính bằng mét, $t >= 0$ tính bằng giây. Chất điểm đổi chiều tại thời điểm nào?],
  type: "mcq", options: ([$"1,0" thin "s"$.], [$"2,0" thin "s"$.], [$"4,0" thin "s"$.], [$0 thin "s"$.]),
  ans: "B", sol: [$v(t) = -4 t + 8$ đổi dấu từ dương sang âm tại $t = 2 thin "s"$.],
)

// MCQ-15
#vp-question(
  [Một ô tô hãm phanh chậm dần đều đến khi dừng hẳn. Gọi $s_1$, $s_2$ là quãng đường đi trong nửa thời gian đầu và nửa thời gian sau của quá trình phanh. Tỉ số $s_1/s_2$ bằng bao nhiêu?],
  type: "mcq", options: ([$2$.], [$3$.], [$4$.], [$"1,5"$.]), ans: "B",
  sol: [Gọi tổng thời gian phanh là $T$. Giữa quá trình, vận tốc bằng $v_0/2$. Do đó $s_1 = frac(v_0 + v_0/2, 2) T/2 = 3 v_0 T/8$, $s_2 = v_0 T/8$, suy ra $s_1/s_2 = 3$.],
)

// MCQ-16
#vp-question(
  [Xe lăn nhanh dần đều qua hai cổng quang điện A, B cách nhau $"0,60" thin "m"$. Tấm chắn rộng $20 thin "mm"$ chắn sáng trong $"0,040" thin "s"$ tại A và $"0,020" thin "s"$ tại B. Coi tấm chắn đủ hẹp để lấy $v approx d/t$ là vận tốc tại mỗi cổng. Gia tốc của xe xấp xỉ bằng bao nhiêu?
    #align(center, bai-05-hinh("cong-quang"))
  ],
  type: "mcq", options: ([$"0,625" thin "m/s"^2$.], [$"1,250" thin "m/s"^2$.], [$"0,3125" thin "m/s"^2$.], [$"2,500" thin "m/s"^2$.]),
  ans: "A", sol: [$v_A approx "0,020"/"0,040" = "0,50" thin "m/s"$; $v_B approx "1,00" thin "m/s"$. Vì gia tốc không đổi, $a = frac(v_B^2 - v_A^2, 2 s) approx frac(1 - "0,25", "1,20") = "0,625" thin "m/s"^2$.],
)

// MCQ-17
#vp-question(
  [Xe 1 phanh từ tốc độ $v_0$ với gia tốc $-a$ đến khi dừng, đi được $s_1$. Xe 2 phanh từ tốc độ $2 v_0$ với gia tốc $-2 a$ đến khi dừng, đi được $s_2$. Biết $a > 0$, tỉ số $s_2/s_1$ bằng bao nhiêu?],
  type: "mcq", options: ([$1$.], [$2$.], [$4$.], [$"0,5"$.]), ans: "B",
  sol: [$s_1 = v_0^2/(2 a)$; $s_2 = (2 v_0)^2/(4 a) = 2 s_1$.],
)

// MCQ-18
#vp-question(
  [Khẳng định nào luôn đúng trong chuyển động thẳng biến đổi đều với gia tốc khác không?],
  type: "mcq",
  options: ([Vectơ gia tốc luôn cùng chiều với vectơ vận tốc.], [Vectơ gia tốc có hướng không đổi.],
    [Độ lớn gia tốc tăng khi vật nhanh dần đều.], [Gia tốc luôn cùng dấu với độ dịch chuyển.]),
  ans: "B", sol: [Gia tốc không đổi cả về độ lớn và hướng. Vận tốc có thể ngược chiều gia tốc khi vật chậm dần.],
)

// MCQ-19
#vp-question(
  [Một xe buýt xuất phát từ nghỉ, nhanh dần đều với gia tốc $"1,0" thin "m/s"^2$ trong $10 thin "s"$, chạy thẳng đều trong $20 thin "s"$, rồi phanh với gia tốc $-"2,0" thin "m/s"^2$ đến khi dừng hẳn. Tổng quãng đường xe đi được bằng bao nhiêu?],
  type: "mcq", options: ([$225 thin "m"$.], [$275 thin "m"$.], [$300 thin "m"$.], [$250 thin "m"$.]),
  ans: "B", sol: [Vận tốc sau tăng tốc là $10 thin "m/s"$. Ba chặng có quãng đường $50 thin "m"$, $200 thin "m"$, $25 thin "m"$. Tổng bằng $275 thin "m"$.],
)

// MCQ-20
#vp-question(
  [Một xe đua tăng tốc từ nghỉ lên $100 thin "km/h"$ trong $"2,5" thin "s"$. Một viên đạn tăng tốc từ nghỉ lên $800 thin "m/s"$ trong nòng dài $"0,8" thin "m"$. Coi cả hai chuyển động thẳng nhanh dần đều. Nhận xét nào đúng?],
  type: "mcq",
  options: ([Gia tốc xe đua lớn hơn gia tốc viên đạn.],
    [Gia tốc viên đạn khoảng $400 thin "km/s"^2$, gấp khoảng $36 000$ lần gia tốc xe đua.],
    [Xe đua có độ biến thiên vận tốc lớn hơn nên gia tốc lớn hơn.],
    [Hai gia tốc bằng nhau vì đều xuất phát từ nghỉ.]),
  ans: "B", sol: [$a_1 = (250/9)/"2,5" approx "11,11" thin "m/s"^2$; $a_2 = 800^2/(2 times "0,8") = 400 000 thin "m/s"^2$. Tỉ số $a_2/a_1 = 36 000$.],
)

= Phần II. Trắc nghiệm Đúng/Sai
#sbt-instructions(reset: true)[Xác định mỗi phát biểu a), b), c), d) là đúng hay sai.]

// TF-01
#vp-question(
  [Một chất điểm chuyển động thẳng có $x(t) = -t^2 + 6 t - 5$, với $x$ tính bằng mét, $t >= 0$ tính bằng giây.],
  type: "tf",
  statements: (
    [Vận tốc ban đầu $v_0 = +6 thin "m/s"$, gia tốc $a = -2 thin "m/s"^2$.],
    [Trong $0 <= t < 3 thin "s"$, vật chậm dần đều theo chiều dương.],
    [Tại $t = 3 thin "s"$, vật dừng tức thời rồi đổi chiều, đạt tọa độ cực đại $4 thin "m"$.],
    [Quãng đường đi được từ $t = 0$ đến $t = 5 thin "s"$ là $13 thin "m"$.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "Đ"),
  sol: [a) $v = 6 - 2 t$, $a = -2 thin "m/s"^2$.
    #parbreak() b) Trước $t = 3 thin "s"$, $v > 0$ và $a < 0$.
    #parbreak() c) $v$ đổi dấu tại $t = 3 thin "s"$, $x(3) = 4 thin "m"$.
    #parbreak() d) $x(0) = -5 thin "m"$, $x(5) = 0$ nên $s = abs(4 + 5) + abs(0 - 4) = 13 thin "m"$.],
)

// TF-02
#vp-question(
  [Xe lăn nhanh dần đều qua hai cổng quang điện A, B. Tấm chắn rộng $d = ("20,0" plus.minus "0,1") thin "mm"$; thời gian chắn sáng $t_A = ("0,050" plus.minus "0,001") thin "s"$, $t_B = ("0,025" plus.minus "0,001") thin "s"$. Thời gian đi giữa hai cổng là $t_(A B) = ("1,000" plus.minus "0,002") thin "s"$. Dùng gần đúng tấm chắn hẹp: $v_A approx d/t_A$, $v_B approx d/t_B$; coi $t_(A B)$ ứng với hai thời điểm ước lượng vận tốc.],
  type: "tf",
  statements: (
    [Vận tốc ước lượng tại A là $"0,40" thin "m/s"$, tại B là $"0,80" thin "m/s"$.],
    [Gia tốc ước lượng bằng $"0,40" thin "m/s"^2$.],
    [Khoảng cách hai cổng ước lượng bằng $"0,60" thin "m"$.],
    [Theo quy tắc cộng sai số tương đối của thương, sai số tương đối của $v_A$ bằng $"2,5"%$.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "Đ"),
  sol: [a) $v_A approx "0,020"/"0,050" = "0,40" thin "m/s"$, $v_B approx "0,80" thin "m/s"$.
    #parbreak() b) $a approx frac("0,80" - "0,40", "1,000") = "0,40" thin "m/s"^2$.
    #parbreak() c) $s approx frac(v_A + v_B, 2) t_(A B) = "0,60" thin "m"$ nhờ giả thiết gia tốc không đổi.
    #parbreak() d) $delta v_A = frac("0,1", "20,0") + frac("0,001", "0,050") = "0,025" = "2,5"%$.],
)

// TF-03
#vp-question(
  [Hai xe cùng chạy thẳng với tốc độ $30 thin "m/s"$, xe 1 ở trước. Tại $t = 0$, xe 1 phanh với gia tốc $-"6,0" thin "m/s"^2$. Xe 2 giữ nguyên tốc độ trong $"0,8" thin "s"$ rồi phanh với cùng gia tốc. Mỗi xe đứng yên sau khi dừng. Gọi $D_0$ là khoảng hở ban đầu từ đầu xe 2 đến đuôi xe 1; xét mô hình phanh lí tưởng này.],
  type: "tf",
  statements: (
    [Quãng đường phanh của xe 1 là $75 thin "m"$.],
    [Xe 2 đi được $24 thin "m"$ trong thời gian phản ứng.],
    [Từ $t = 0$ đến khi dừng, xe 2 đi được $99 thin "m"$.],
    [Để hai xe còn khoảng hở dương sau khi dừng, cần $D_0 > 24 thin "m"$.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "Đ"),
  sol: [a) $s_1 = 30^2/(2 times 6) = 75 thin "m"$.
    #parbreak() b) $s_r = 30 times "0,8" = 24 thin "m"$.
    #parbreak() c) Xe 2 phanh thêm $75 thin "m"$, tổng $99 thin "m"$.
    #parbreak() d) Trong quá trình, $v_2 >= v_1$ nên khoảng hở giảm đơn điệu, tổng cộng $99 - 75 = 24 thin "m"$. Khoảng hở cuối là $D_0 - 24$; nếu $D_0 = 24 thin "m"$, hai xe vừa chạm nhau khi dừng.],
)

// TF-04
#vp-question(
  [Một tàu đi thẳng từ ga A đến ga B có đồ thị vận tốc–thời gian gồm ba đoạn nối các điểm $(0; 0)$, $(20; 15)$, $(80; 15)$, $(100; 0)$; thời gian tính bằng giây, vận tốc bằng m/s.
    #align(center, bai-05-hinh("tf-04"))
  ],
  type: "tf",
  statements: (
    [Gia tốc trong 20 giây đầu là $+"0,75" thin "m/s"^2$.],
    [Từ giây 20 đến giây 80, gia tốc bằng không.],
    [Khoảng cách hai ga bằng $1200 thin "m"$.],
    [Vận tốc trung bình cả hành trình bằng $"13,5" thin "m/s"$.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [a) $a_1 = 15/20 = "0,75" thin "m/s"^2$.
    #parbreak() b) Đoạn ngang có vận tốc không đổi.
    #parbreak() c) Diện tích hình thang $s = frac(60 + 100, 2) times 15 = 1200 thin "m"$.
    #parbreak() d) $overline(v) = 1200/100 = 12 thin "m/s"$.],
)

// TF-05
#vp-question(
  [Xét gia tốc trong chuyển động thẳng. Ở những thời điểm các đạo hàm tồn tại, $a(t) = v'(t) = x''(t)$.],
  type: "tf",
  statements: (
    [Gia tốc là đạo hàm bậc nhất của vận tốc và đạo hàm bậc hai của tọa độ theo thời gian.],
    [Chỉ cần $a < 0$ là có thể kết luận vật chậm dần đều.],
    [Khi vật nhanh dần đều và $v != 0$, gia tốc và vận tốc cùng dấu: $a v > 0$.],
    [Vật ném thẳng đứng lên, bỏ qua lực cản, có gia tốc bằng không tại vị trí cao nhất.],
  ),
  ans-tf: ("Đ", "S", "Đ", "S"),
  sol: [a) Đúng theo quan hệ giữa tọa độ, vận tốc và gia tốc.
    #parbreak() b) Dấu âm chỉ cho biết chiều gia tốc; nếu $v < 0$ thì tốc độ tăng. Ngoài ra, chưa biết gia tốc có không đổi hay không.
    #parbreak() c) $a v > 0$ khi tốc độ tăng và $v != 0$.
    #parbreak() d) Tại đỉnh, $v = 0$ nhưng gia tốc trọng trường vẫn hướng xuống, có độ lớn $g$.],
)

= Phần III. Trắc nghiệm trả lời ngắn
#sbt-instructions(reset: true)[Tính và điền kết quả theo đơn vị, yêu cầu làm tròn của từng câu.]

// SHORT-01
#vp-question(
  [Một ô tô tăng tốc thẳng nhanh dần đều từ nghỉ lên $100 thin "km/h"$ trong $"4,5" thin "s"$. Tính quãng đường xe đi được, theo mét, làm tròn đến một chữ số thập phân.],
  type: "short", ans: "62,5", sol: [$s = frac(v_0 + v, 2) t = 1/2 times 250/9 times "4,5" = "62,5" thin "m"$.],
)

// SHORT-02
#vp-question(
  [Một xe máy đang chạy thẳng với tốc độ $36 thin "km/h"$ thì phanh chậm dần đều với độ lớn gia tốc $"2,0" thin "m/s"^2$. Tính quãng đường xe đi được trong giây cuối cùng trước khi dừng hẳn, theo mét.],
  type: "short", ans: "1", sol: [Thời gian phanh là $10/2 = 5 thin "s"$. Đầu giây cuối, tốc độ còn $2 thin "m/s"$ nên $s = frac(2 + 0, 2) times 1 = 1 thin "m"$.],
)

// SHORT-03
#vp-question(
  [Một đoàn tàu đang chạy với tốc độ $54 thin "km/h"$ thì hãm phanh chậm dần đều. Trong 5 giây đầu, tàu đi được $"62,5" thin "m"$. Tính tổng thời gian từ lúc phanh đến khi dừng hẳn, theo giây.],
  type: "short", ans: "15", sol: [$v_0 = 15 thin "m/s"$. Từ $"62,5" = 15 times 5 + 1/2 a times 5^2$ suy ra $a = -1 thin "m/s"^2$. Do đó $T = (0 - 15)/(-1) = 15 thin "s"$.],
)

// SHORT-04
#vp-question(
  [Một vật chuyển động thẳng có $x(t) = 2 t^2 - 8 t + 3$, với $x$ tính bằng mét, $t >= 0$ tính bằng giây. Tính tổng quãng đường đi được từ $t = 0$ đến $t = 3 thin "s"$, theo mét.],
  type: "short", ans: "10", sol: [$v = 4 t - 8$ đổi dấu tại $t = 2 thin "s"$. Với $x(0) = 3$, $x(2) = -5$, $x(3) = -3$ (m), $s = abs(-5 - 3) + abs(-3 + 5) = 10 thin "m"$.],
)

// SHORT-05
#vp-question(
  [Xe lăn nhanh dần đều qua hai cổng quang điện cách nhau $"0,500" thin "m"$. Tấm chắn rộng $"20,0" thin "mm"$ chắn sáng trong $"0,050" thin "s"$ tại A và $"0,020" thin "s"$ tại B. Dùng gần đúng tấm chắn hẹp $v approx d/t$. Tính gia tốc theo m/s², làm tròn đến một chữ số thập phân.],
  type: "short", ans: "0,8", sol: [$v_A approx "0,40" thin "m/s"$, $v_B approx "1,00" thin "m/s"$. Gia tốc $a approx frac(1^2 - "0,4"^2, 2 times "0,500") = "0,84" thin "m/s"^2 approx "0,8" thin "m/s"^2$.],
)

= Phần IV. Tự luận
#sbt-essay-instructions(reset: true)[Trình bày lập luận, công thức, phép tính và kết luận phù hợp với yêu cầu của bài.]

// ESSAY-01
#vp-question(
  [Một ô tô phát hiện vật cản cố định cách đầu xe $70 thin "m"$. Xe giữ tốc độ $v_0$ trong thời gian phản ứng $t_r$, sau đó phanh với độ lớn gia tốc không đổi $a > 0$ đến khi dừng. Xét mô hình lí tưởng, không tính thêm khoảng dự phòng.
    #parbreak() a) Lập công thức tổng quãng đường dừng $D(v_0, t_r, a)$.
    #parbreak() b) Với $v_0 = 90 thin "km/h"$, $t_r = "0,7" thin "s"$, $a = "6,0" thin "m/s"^2$, tính $D$ và khoảng cách còn lại tới vật cản khi xe dừng.
    #parbreak() c) Khi độ lớn gia tốc phanh giảm còn $"3,5" thin "m/s"^2$, giữ nguyên $t_r$, tìm tốc độ ban đầu giới hạn để $D <= 70 thin "m"$.],
  type: "essay", lines: 12,
  sol: [a) $s_r = v_0 t_r$; $s_p = v_0^2/(2 a)$. Vậy $D = v_0 t_r + v_0^2/(2 a)$.
    #parbreak() b) $v_0 = 25 thin "m/s"$, $D = 25 times "0,7" + 625/12 approx "69,58" thin "m"$. Khoảng cách còn lại khoảng $"0,42" thin "m"$ trong mô hình.
    #parbreak() c) $"0,7" v_0 + v_0^2/7 <= 70$, hay $v_0^2 + "4,9" v_0 - 490 <= 0$. Nghiệm dương giới hạn là $v_("gh") = frac(-"4,9" + sqrt("4,9"^2 + 1960), 2) approx "19,82" thin "m/s" approx "71,36" thin "km/h"$. Đây là giới hạn của mô hình, không phải tốc độ được phép theo quy định giao thông.],
)

// ESSAY-02
#vp-question(
  [Xe 1 chạy thẳng đều với tốc độ $72 thin "km/h"$ qua O lúc $t = 0$. Xe 2 chờ ở O đến $t = 2 thin "s"$ rồi xuất phát từ nghỉ, đuổi theo cùng chiều với gia tốc không đổi $"2,5" thin "m/s"^2$. Chọn gốc tọa độ tại O, chiều dương cùng chiều chuyển động.
    #parbreak() a) Lập $x_1(t)$, $x_2(t)$, kể cả thời gian xe 2 chưa xuất phát.
    #parbreak() b) Tìm thời điểm và vị trí xe 2 đuổi kịp xe 1.
    #parbreak() c) Từ $t = 0$ đến lúc đuổi kịp, tìm khoảng cách lớn nhất giữa hai xe và thời điểm xảy ra.],
  type: "essay", lines: 14,
  sol: [a) Với đơn vị m, s: $x_1 = 20 t$ ($t >= 0$); $x_2 = 0$ khi $0 <= t < 2$, $x_2 = "1,25" (t - 2)^2$ khi $t >= 2$.
    #parbreak() b) $20 t = "1,25" (t - 2)^2$ cho $t = 10 plus.minus 4 sqrt(6)$. Chỉ nghiệm $t >= 2$ phù hợp: $t = 10 + 4 sqrt(6) approx "19,798" thin "s"$, $x approx "395,96" thin "m"$.
    #parbreak() c) Trước $t = 2 thin "s"$, khoảng cách tăng từ 0 đến $40 thin "m"$. Sau đó, $D = 20 t - "1,25" (t - 2)^2$ đạt cực đại khi $20 = "2,5" (t - 2)$, tức $t = 10 thin "s"$. Khi ấy $D_(max) = 200 - 80 = 120 thin "m"$.],
)

// ESSAY-03
#vp-question(
  [Một đoàn tàu xuất phát từ nghỉ ở ga A, nhanh dần đều với gia tốc $"0,4" thin "m/s"^2$ trong $50 thin "s"$, rồi chạy thẳng đều trong 3 phút. Sau đó tàu phanh chậm dần đều với gia tốc $-"0,8" thin "m/s"^2$ đến khi dừng ở ga B.
    #parbreak() a) Tính vận tốc lớn nhất và thời gian phanh.
    #parbreak() b) Vẽ đồ thị vận tốc–thời gian của cả hành trình.
    #parbreak() c) Dùng diện tích dưới đồ thị để tính khoảng cách hai ga và vận tốc trung bình cả hành trình.],
  type: "essay", lines: 14,
  sol: [a) $v_(max) = "0,4" times 50 = 20 thin "m/s"$. Thời gian phanh $Delta t_3 = 20/"0,8" = 25 thin "s"$.
    #parbreak() b) Đồ thị nối các điểm $(0; 0)$, $(50; 20)$, $(230; 20)$, $(255; 0)$, theo đơn vị s và m/s.
    #align(center, bai-05-hinh("essay-03"))
    c) $s = frac(180 + 255, 2) times 20 = 4350 thin "m" = "4,35" thin "km"$.
    $overline(v) = 4350/255 approx "17,06" thin "m/s" approx "61,41" thin "km/h"$.],
)

// ESSAY-04
#vp-question(
  [Xe lăn nhanh dần đều qua hai cổng quang điện, cách nhau $S = ("0,800" plus.minus "0,002") thin "m"$. Tấm chắn rộng $d = ("20,0" plus.minus "0,1") thin "mm"$. Sai số dụng cụ của mỗi phép đo thời gian là $"0,001" thin "s"$. Năm lần đo thu được:
    #align(center, table(
      columns: (auto, 1fr, 1fr), inset: (x: 10pt, y: 6pt), stroke: 0.5pt + luma(65%),
      table.header([*Lần đo*], [$t_A$ (s)], [$t_B$ (s)]),
      [1], [0,051], [0,026], [2], [0,049], [0,025], [3], [0,050], [0,024],
      [4], [0,052], [0,025], [5], [0,048], [0,025],
    ))
    Dùng gần đúng tấm chắn hẹp. Với mỗi dãy thời gian, lấy sai số ngẫu nhiên bằng độ lệch tuyệt đối trung bình; cộng sai số dụng cụ để được sai số tuyệt đối. Dùng quy tắc truyền sai số tuyến tính theo giới hạn trên, bỏ qua sai số của mô hình.
    #parbreak() a) Tính $overline(t)_A$, $overline(t)_B$, rồi ước lượng $v_A = d/overline(t)_A$, $v_B = d/overline(t)_B$ và $a = frac(v_B^2 - v_A^2, 2 S)$.
    #parbreak() b) Tính $Delta t_A$, $Delta t_B$ và $Delta a$. Gợi ý: coi $d$ là một đại lượng đo chung trong công thức
    $ a = frac(d^2, 2 S) (frac(1, overline(t)_B^2) - frac(1, overline(t)_A^2)). $
    #parbreak() c) Viết kết quả đo, làm tròn $Delta a$ đến một chữ số có nghĩa và giá trị $a$ đến cùng hàng thập phân.],
  type: "essay", lines: 16,
  sol: [a) $overline(t)_A = "0,0500" thin "s"$, $overline(t)_B = "0,0250" thin "s"$. Suy ra $v_A approx "0,400" thin "m/s"$, $v_B approx "0,800" thin "m/s"$, $a approx "0,300" thin "m/s"^2$.
    #parbreak() b) Độ lệch tuyệt đối trung bình của hai dãy là $"0,0012" thin "s"$ và $"0,0004" thin "s"$. Cộng sai số dụng cụ: $Delta t_A = "0,0022" thin "s"$, $Delta t_B = "0,0014" thin "s"$.
    #parbreak() Đặt $F = frac(1, overline(t)_B^2) - frac(1, overline(t)_A^2) = 1200 thin "s"^(-2)$. Theo quy tắc truyền sai số đã chọn,
    $ Delta a approx a (2 frac(Delta d, d) + frac(Delta S, S)) + frac(d^2, S) (frac(Delta t_B, overline(t)_B^3) + frac(Delta t_A, overline(t)_A^3)). $
    Phần do $d$, $S$ bằng $"0,00375" thin "m/s"^2$; phần do hai thời gian bằng $"0,05360" thin "m/s"^2$. Vậy $Delta a approx "0,05735" thin "m/s"^2$.
    #parbreak() c) Làm tròn: $a = ("0,30" plus.minus "0,06") thin "m/s"^2$. Đây là ước lượng giới hạn sai số theo quy ước của đề, không phải độ không đảm bảo chuẩn.],
)

// ESSAY-05
#vp-question(
  [So sánh hai mô hình phanh trên cùng mặt đường: bánh xe khóa cứng có độ lớn gia tốc $a_1 = mu_k g$ với $mu_k = "0,60"$; phanh ABS hoạt động tối ưu được lí tưởng hóa bằng $a_2 = mu_s g$ với $mu_s = "0,80"$. Coi hai gia tốc không đổi, lấy $g = "9,8" thin "m/s"^2$.
    #parbreak() a) Với tốc độ ban đầu $108 thin "km/h"$, tính quãng đường phanh $s_1$, $s_2$, không tính thời gian phản ứng.
    #parbreak() b) Tính phần trăm quãng đường phanh rút ngắn trong mô hình: $frac(s_1 - s_2, s_1) times 100%$.
    #parbreak() c) Ngoài quãng đường phanh, ABS giúp duy trì khả năng điều khiển hướng của xe như thế nào?],
  type: "essay", lines: 12,
  sol: [a) $v_0 = 30 thin "m/s"$. Độ lớn gia tốc $a_1 = "5,88" thin "m/s"^2$, $a_2 = "7,84" thin "m/s"^2$.
    $s_1 = 900/"11,76" approx "76,53" thin "m"$; $s_2 = 900/"15,68" approx "57,40" thin "m"$.
    #parbreak() b) $frac(s_1 - s_2, s_1) = 1 - frac(mu_k, mu_s) = "0,25"$, tức $25%$.
    #parbreak() c) ABS điều chỉnh áp suất phanh để hạn chế khóa bánh kéo dài, giúp duy trì lực bám ngang và khả năng điều khiển hướng khi phanh. Mức giảm 25% chỉ thuộc mô hình đã cho; hiệu quả thực tế còn tùy lốp và mặt đường.],
)

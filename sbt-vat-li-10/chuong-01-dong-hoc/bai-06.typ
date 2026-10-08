#import "../cau-hinh.typ": *
#import "images/bai-06-do-thi.typ": bai-06-hinh

// Nguồn nguyên văn: nguon/bai-06-goc.txt; hiệu đính: nguon/bai-06-ghi-chu.md.
// Đáp án, lời giải và hình trong lời giải ẩn trên bản học sinh.
#sbt-bai(num: "6", title: "Sự rơi tự do và Thực hành đo gia tốc rơi tự do", label: <bai-06>)

= Phần I. Trắc nghiệm khách quan
#sbt-instructions(reset: true)[Chọn một phương án đúng trong mỗi câu.]

// MCQ-01
#vp-question(
  [Hai viên bi A, B có khối lượng lần lượt $50 thin "g"$, $200 thin "g"$ được thả đồng thời từ nghỉ ở cùng độ cao $20 thin "m"$ trong chân không. Coi gia tốc trọng trường không đổi. Nhận xét nào đúng?],
  type: "mcq",
  options: ([B chạm đất trước vì trọng lực tác dụng lên B lớn gấp bốn lần.],
    [Hai bi chạm đất đồng thời, với cùng vận tốc vì có cùng gia tốc rơi.],
    [A chạm đất trước vì chịu lực cản không khí nhỏ hơn.],
    [Thời gian rơi của B ngắn hơn của A một lượng $sqrt(2 h/g) (1 - m_A/m_B)$.]),
  ans: "B", sol: [Trong chân không, hai bi đều có $t = sqrt(2 h/g)$ và tốc độ chạm đất $v = sqrt(2 g h)$, không phụ thuộc khối lượng.],
)

// MCQ-02
#vp-question(
  [Một vật rơi tự do từ nghỉ. Gọi $s_1$, $s_k$ là quãng đường trong giây thứ nhất và giây thứ $k$, với $k$ nguyên dương và vật chưa chạm đất trong các khoảng này. Tỉ số $s_k/s_1$ bằng bao nhiêu?],
  type: "mcq", options: ([$k^2$.], [$2 k - 1$.], [$2 k + 1$.], [$k^2 - (k - 1)^2 + 1$.]),
  ans: "B", sol: [Với $tau = 1 thin "s"$, $s_k = g tau^2/2 (k^2 - (k - 1)^2) = g tau^2/2 (2 k - 1)$. Do đó $s_k/s_1 = 2 k - 1$.],
)

// MCQ-03
#vp-question(
  [Một hòn đá được thả rơi tự do từ độ cao $H$. Trong giây cuối trước khi chạm đất, đá rơi được $3/4$ tổng độ cao. Lấy $g = 10 thin "m/s"^2$. Tổng thời gian rơi $T$ và độ cao $H$ bằng bao nhiêu?],
  type: "mcq",
  options: ([$T = "2,0" thin "s"$; $H = "20,0" thin "m"$.], [$T = "3,0" thin "s"$; $H = "45,0" thin "m"$.],
    [$T = "4,0" thin "s"$; $H = "80,0" thin "m"$.], [$T = "1,5" thin "s"$; $H = "11,25" thin "m"$.]),
  ans: "A", sol: [Với $T$ tính bằng giây và $T >= 1$, $frac((T - 1)^2, T^2) = 1/4$, nên $(T - 1)/T = 1/2$ và $T = 2 thin "s"$. Suy ra $H = 1/2 times 10 times 2^2 = 20 thin "m"$.],
)

// MCQ-04
#vp-question(
  [Thả một vật rơi tự do từ độ cao $h$. Chia quãng đường rơi thành hai đoạn liên tiếp $h_1$, $h_2$ sao cho thời gian đi trên hai đoạn bằng nhau. Tỉ số $h_1/h_2$ bằng bao nhiêu?],
  type: "mcq", options: ([$1$.], [$1/2$.], [$1/3$.], [$1/4$.]), ans: "C",
  sol: [Gọi thời gian mỗi đoạn là $tau$. Khi đó $h_1 = g tau^2/2$, $h = g (2 tau)^2/2 = 4 h_1$, nên $h_2 = 3 h_1$ và $h_1/h_2 = 1/3$.],
)

// MCQ-05
#vp-question(
  [Một giọt nước rơi thẳng đứng trong không khí, chịu trọng lực $m g$ và lực cản hướng lên có độ lớn $k v^2$, với $m$, $g$, $k$ không đổi. Nếu tốc độ đã bằng $sqrt(m g/k)$, giọt nước tiếp tục chuyển động thế nào?],
  type: "mcq", options: ([Tiếp tục tăng tốc với gia tốc giảm dần.], [Giảm tốc nhanh về không.],
    [Thẳng đều với tốc độ tới hạn.], [Dừng trên không rồi rơi tiếp.]),
  ans: "C", sol: [Khi $k v^2 = m g$, hợp lực bằng không nên gia tốc bằng không. Với các điều kiện không đổi, giọt nước duy trì tốc độ tới hạn. Nếu thả từ nghỉ, tốc độ tiến dần tới giá trị này.],
)

// MCQ-06
#vp-question(
  [Từ cùng độ cao, đồng thời thả bóng A từ nghỉ và ném bóng B thẳng đứng xuống với tốc độ $v_0 = 5 thin "m/s"$. Bỏ qua lực cản, coi $g$ không đổi. Khi cả hai còn ở trên không, khoảng cách giữa chúng biến thiên thế nào?],
  type: "mcq", options: ([Tăng theo $Delta y = v_0 t$.], [Tăng theo $Delta y = g t^2/2$.],
    [Không đổi.], [Tăng trong nửa thời gian đầu rồi giảm trong nửa thời gian sau.]),
  ans: "A", sol: [Chọn chiều dương xuống dưới: $y_A = g t^2/2$, $y_B = v_0 t + g t^2/2$. Hiệu tọa độ bằng $v_0 t$.],
)

// MCQ-07
#vp-question(
  [Xét xu hướng chung của gia tốc trọng trường trên Trái Đất, bỏ qua bất thường địa chất. Khi đi từ Xích đạo về cực Bắc ở cùng độ cao so với mực nước biển, và khi lên cao tại cùng một khu vực, $g$ biến đổi thế nào?],
  type: "mcq",
  options: ([Về cực: giảm; lên cao: tăng.], [Về cực: tăng; lên cao: giảm.],
    [Cả hai trường hợp đều tăng.], [Cả hai trường hợp đều giảm.]),
  ans: "B", sol: [Ở gần cực, bán kính Trái Đất nhỏ hơn và ảnh hưởng của sự quay lên gia tốc trọng trường nhỏ hơn nên $g$ thường lớn hơn. Khi lên cao, khoảng cách tới tâm Trái Đất tăng nên $g$ giảm.],
)

// MCQ-08
#vp-question(
  [Một viên bi rơi qua hai cổng quang điện A, B cách nhau $s$. Thời gian chắn sáng là $tau_A$, $tau_B$; thời gian đi giữa hai cổng là $T$. Đường kính bi là $d$. Dùng gần đúng bi nhỏ, tia sáng qua tâm: $v_A approx d/tau_A$, $v_B approx d/tau_B$; $T$ ứng với hai thời điểm ước lượng vận tốc. Bi đã có vận tốc khác không khi qua A. Công thức nào dùng được để ước lượng $g$?
    #align(center, bai-06-hinh("hai-cong"))
  ],
  type: "mcq",
  options: ([$g approx frac(d^2, 2 s) (frac(1, tau_B^2) - frac(1, tau_A^2))$.],
    [$g = frac(2 s, T^2)$.],
    [$g approx d/T (frac(1, tau_B) - frac(1, tau_A))$.],
    [Cả A và C.]),
  ans: "D", sol: [A dùng $v_B^2 - v_A^2 = 2 g s$; C dùng $v_B - v_A = g T$. Cả hai đúng trong gần đúng đã nêu. B sai vì $s = v_A T + g T^2/2$ với $v_A != 0$.],
)

// MCQ-09
#vp-question(
  [Đo thời gian $t$ của một viên bi rơi từ nghỉ giữa hai mức ngang. Thước đo nghiêng góc $alpha = 3 degree$ so với phương thẳng đứng; đoạn thước giữa hai mức dài $L$. Học sinh dùng nhầm $L$ làm độ cao rơi để tính $g_("đo") = 2 L/t^2$. Bỏ qua các sai số khác. Kết quả so với $g$ thực tại nơi đo thế nào?
    #align(center, bai-06-hinh("thuoc-nghieng"))
  ],
  type: "mcq", options: ([$g_("đo") > g$.], [$g_("đo") < g$.], [$g_("đo") = g$.], [Lúc lớn hơn, lúc nhỏ hơn một cách ngẫu nhiên.]),
  ans: "A", sol: [Độ cao thẳng đứng là $h = L cos alpha$. Vì $t^2 = 2 h/g$, $g_("đo") = 2 L/t^2 = g/(cos alpha) > g$. Viên bi vẫn rơi thẳng đứng với gia tốc $g$, không rơi dọc thước với gia tốc $g cos alpha$.],
)

// MCQ-10
#vp-question(
  [Các giọt nước rời vòi từ nghỉ, cách nhau $"0,5" thin "s"$. Vòi cao $5 thin "m"$ so với đất. Bỏ qua lực cản, lấy $g = 10 thin "m/s"^2$. Khi giọt thứ nhất vừa chạm đất, giọt thứ hai ở độ cao nào?],
  type: "mcq", options: ([$"1,25" thin "m"$.], [$"3,75" thin "m"$.], [$"2,50" thin "m"$.], [$"4,00" thin "m"$.]),
  ans: "B", sol: [Giọt thứ nhất rơi trong $sqrt(2 times 5/10) = 1 thin "s"$. Giọt thứ hai đã rơi $"0,5" thin "s"$, được $"1,25" thin "m"$, nên còn cao $5 - "1,25" = "3,75" thin "m"$.],
)

// MCQ-11
#vp-question(
  [Thả bi từ nghỉ ở độ cao $"1,00" thin "m"$, đồng thời bắt đầu tính giờ đúng lúc bi rời tay. Người đo bấm dừng đồng hồ trễ $"0,15" thin "s"$ so với lúc bi chạm khay. Bỏ qua thời gian truyền âm và sai số khác. Giá trị tính từ $g_("đo") = 2 h/t_("đo")^2$ sẽ thế nào?],
  type: "mcq", options: ([Lớn hơn giá trị thực.], [Nhỏ hơn giá trị thực.],
    [Bằng giá trị thực vì độ trễ luôn triệt tiêu.], [Không xác định được chiều sai lệch.]),
  ans: "B", sol: [$t_("đo") = t_("rơi") + "0,15" thin "s" > t_("rơi")$, nên $g_("đo") < g$. Không có độ trễ lúc bắt đầu theo giả thiết.],
)

// MCQ-12
#vp-question(
  [Chọn chiều dương hướng xuống, gốc thời gian lúc thả vật rơi tự do từ nghỉ. Đồ thị vận tốc–thời gian có dạng nào trong bốn hình sau?
    #align(center, bai-06-hinh("mcq-12"))
  ],
  type: "mcq",
  options: ([Đường thẳng qua O, có độ dốc bằng $g$.], [Parabol đỉnh O, lõm lên.],
    [Đường thẳng song song với trục thời gian.], [Nhánh hypebol.]),
  ans: "A", sol: [$v = g t$ nên đồ thị là đường thẳng đi qua gốc tọa độ, dốc lên với hệ số góc $g$.],
)

// MCQ-13
#vp-question(
  [Coi gia tốc trọng trường trên Mặt Trăng bằng $1/6$ giá trị trên Trái Đất. Thả cùng một vật từ nghỉ ở độ cao $18 thin "m"$ tại mỗi nơi, bỏ qua lực cản. Tỉ số thời gian rơi $t_("MT")/t_("TĐ")$ bằng bao nhiêu?],
  type: "mcq", options: ([$6$.], [$1/6$.], [$sqrt(6) approx "2,45"$.], [$sqrt(1/6) approx "0,41"$.]),
  ans: "C", sol: [$t = sqrt(2 h/g)$, nên $frac(t_("MT"), t_("TĐ")) = sqrt(frac(g_("TĐ"), g_("MT"))) = sqrt(6)$.],
)

// MCQ-14
#vp-question(
  [Đo $g = 2 h/t^2$, biết sai số tương đối của độ cao là $"1,0"%$, của thời gian là $"1,5"%$. Theo quy tắc cộng sai số tương đối, sai số tương đối của $g$ bằng bao nhiêu?],
  type: "mcq", options: ([$"2,5"%$.], [$"4,0"%$.], [$"3,0"%$.], [$"5,5"%$.]),
  ans: "B", sol: [$delta g approx delta h + 2 delta t = "1,0"% + 2 times "1,5"% = "4,0"%$.],
)

// MCQ-15
#vp-question(
  [Thả một viên sỏi từ nghỉ ở miệng giếng. Sau $"3,10" thin "s"$, người ở miệng giếng nghe tiếng sỏi chạm nước. Bỏ qua lực cản; lấy tốc độ âm $340 thin "m/s"$, $g = "9,80" thin "m/s"^2$. Độ sâu mặt nước xấp xỉ bằng bao nhiêu?],
  type: "mcq", options: ([$"47,1" thin "m"$.], [$"43,3" thin "m"$.], [$"52,3" thin "m"$.], [$"38,2" thin "m"$.]),
  ans: "B", sol: [Gọi thời gian rơi là $tau$, $h = "4,9" tau^2$. Tổng thời gian $tau + h/340 = "3,10"$ cho $tau approx "2,97265" thin "s"$, $h approx "43,30" thin "m"$. Giá trị $"47,1" thin "m"$ là kết quả khi bỏ nhầm thời gian truyền âm.],
)

// MCQ-16
#vp-question(
  [Một vật rơi tự do từ nghỉ, đi được quãng đường $s$ và có tốc độ $v$. Hệ thức nào đúng?],
  type: "mcq", options: ([$v = sqrt(g s)$.], [$v^2 = 2 g s$.], [$s = 2 g v^2$.], [$v = 2 g s$.]),
  ans: "B", sol: [Từ $v = g t$ và $s = g t^2/2$, khử $t$ được $v^2 = 2 g s$.],
)

// MCQ-17
#vp-question(
  [Một vật rơi tự do từ nghỉ ở độ cao $h$. Gọi $t_1$, $t_2$ là thời gian đi trong nửa quãng đường đầu và nửa quãng đường sau. Tỉ số $t_1/t_2$ bằng bao nhiêu?],
  type: "mcq", options: ([$1$.], [$sqrt(2)$.], [$sqrt(2) + 1$.], [$sqrt(2) - 1$.]),
  ans: "C", sol: [$t_1 = sqrt(h/g)$; tổng thời gian $T = sqrt(2 h/g)$. Do đó $t_2 = (sqrt(2) - 1) sqrt(h/g)$ và $t_1/t_2 = 1/(sqrt(2) - 1) = sqrt(2) + 1$.],
)

// MCQ-18
#vp-question(
  [Đồ thị độ dịch chuyển–thời gian của vật rơi tự do từ nghỉ được vẽ dưới đây, chọn chiều dương hướng xuống và gốc tọa độ tại vị trí thả. Nhận xét nào đúng?
    #align(center, bai-06-hinh("mcq-18"))
  ],
  type: "mcq",
  options: ([Đồ thị là nhánh parabol đỉnh O, lõm lên, ứng với $t >= 0$.],
    [Độ dốc tiếp tuyến tại mọi điểm đều bằng $g$.], [Đồ thị là đường thẳng có hệ số góc $g/2$.],
    [Đồ thị chính là hình dạng quỹ đạo của vật trong không gian.]),
  ans: "A", sol: [$d = g t^2/2$ nên đồ thị là nhánh parabol. Độ dốc tiếp tuyến bằng $v = g t$, tăng theo thời gian. Quỹ đạo thực là đường thẳng đứng.],
)

// MCQ-19
#vp-question(
  [Trong ống Newton đã hút hết không khí, một chiếc lông chim và viên bi thép được thả đồng thời từ nghỉ, cùng độ cao và rơi như nhau. Kết luận nào phù hợp?],
  type: "mcq",
  options: ([Trái Đất không hút lông chim trong chân không.], [Trọng lực tác dụng lên hai vật bằng nhau.],
    [Lực cản không khí làm hai vật rơi khác nhau trong không khí; trong chân không chúng có cùng gia tốc rơi.],
    [Khối lượng hai vật bằng không trong chân không.]),
  ans: "C", sol: [Hút không khí loại bỏ lực cản. Hai vật có thể chịu trọng lực khác nhau nhưng cùng gia tốc $g$, vì $P/m = g$.],
)

// MCQ-20
#vp-question(
  [Thả một vật rơi tự do từ nghỉ ở độ cao $400 thin "m"$. Coi $g = "9,81" thin "m/s"^2$ không đổi. Tốc độ ngay trước khi chạm đất bằng bao nhiêu?],
  type: "mcq", options: ([$"88,6" thin "m/s"$.], [$"62,6" thin "m/s"$.], [$"78,4" thin "m/s"$.], [$"45,2" thin "m/s"$.]),
  ans: "A", sol: [$v = sqrt(2 g h) = sqrt(2 times "9,81" times 400) approx "88,59" thin "m/s"$.],
)

= Phần II. Trắc nghiệm Đúng/Sai
#sbt-instructions(reset: true)[Xác định mỗi phát biểu a), b), c), d) là đúng hay sai.]

// TF-01
#vp-question(
  [Từ mép vách đá, một hòn đá được ném thẳng đứng lên với vận tốc ban đầu $"14,7" thin "m/s"$. Chọn gốc tọa độ tại điểm ném, chiều dương hướng lên, $t = 0$ lúc ném. Lấy $g = "9,8" thin "m/s"^2$, bỏ qua lực cản. Vách đá đủ cao để đá chưa chạm nước tại $t = 4 thin "s"$.],
  type: "tf",
  statements: (
    [Gia tốc luôn bằng $-"9,8" thin "m/s"^2$, kể cả tại đỉnh.],
    [Đá đạt đỉnh sau $"1,5" thin "s"$, cao hơn điểm ném $"11,025" thin "m"$.],
    [Tại đỉnh, vận tốc bằng không nên gia tốc bằng không.],
    [Tại $t = 4 thin "s"$, độ dịch chuyển âm và tốc độ bằng $"24,5" thin "m/s"$.],
  ), ans-tf: ("Đ", "Đ", "S", "Đ"),
  sol: [a) $a = -g$ trong suốt thời gian bay.
    #parbreak() b) $t_(max) = "14,7"/"9,8" = "1,5" thin "s"$; $h_(max) = "14,7"^2/(2 times "9,8") = "11,025" thin "m"$.
    #parbreak() c) Vận tốc bằng không tại đỉnh nhưng trọng lực vẫn tác dụng.
    #parbreak() d) $d(4) = "14,7" times 4 - "4,9" times 4^2 = -"19,6" thin "m"$; $v(4) = "14,7" - "9,8" times 4 = -"24,5" thin "m/s"$.],
)

// TF-02
#vp-question(
  [Thả bi từ nghỉ bằng nam châm điện. Đồng hồ bắt đầu đo đúng khi bi rời nam châm và dừng khi bi qua cổng quang điện, sau khi rơi $h = ("0,600" plus.minus "0,001") thin "m"$. Năm thời gian đo được như bảng. Bỏ qua lực cản và sai số dụng cụ của đồng hồ; lấy sai số thời gian bằng độ lệch tuyệt đối trung bình, truyền sai số theo quy tắc cộng.
    #align(center, table(columns: (auto, 1fr), inset: (x: 10pt, y: 6pt), stroke: 0.5pt + luma(65%),
      table.header([*Lần đo*], [*Thời gian (s)*]),
      [1], [0,351], [2], [0,349], [3], [0,350], [4], [0,352], [5], [0,348],
    ))
  ], type: "tf",
  statements: (
    [Thời gian trung bình là $"0,350" thin "s"$.],
    [Gia tốc ước lượng từ $2 h/overline(t)^2$ xấp xỉ $"9,80" thin "m/s"^2$.],
    [Độ lệch tuyệt đối trung bình của thời gian là $"0,002" thin "s"$.],
    [Sai số tương đối của phép đo $g$ nhỏ hơn $"1,5"%$.],
  ), ans-tf: ("Đ", "Đ", "S", "Đ"),
  sol: [a) $overline(t) = "0,350" thin "s"$.
    #parbreak() b) $g_("ước lượng") = frac(2 times "0,600", "0,350"^2) approx "9,796" thin "m/s"^2$.
    #parbreak() c) $Delta t = frac("0,001" + "0,001" + 0 + "0,002" + "0,002", 5) = "0,0012" thin "s"$.
    #parbreak() d) $delta g approx frac("0,001", "0,600") + 2 frac("0,0012", "0,350") approx "0,00852"$, tương ứng $"0,852"% < "1,5"%$.],
)

// TF-03
#vp-question(
  [Xét mô hình giọt nước hình cầu, khối lượng $m$, bán kính $R$, rơi từ nghỉ trong không khí đứng yên. Chọn chiều dương hướng xuống. Lực cản hướng lên có độ lớn $k v$, với $k = c R$, $c$ không đổi; bỏ qua lực đẩy của không khí. Các giọt có cùng khối lượng riêng.],
  type: "tf",
  statements: (
    [Gia tốc giảm dần từ $g$ và tiến tới không.],
    [Tốc độ tới hạn là $v_("th") = m g/k$; nếu đã có tốc độ này thì hợp lực bằng không.],
    [Hai giọt có bán kính khác nhau luôn có cùng tốc độ tới hạn vì cùng chịu gia tốc trọng trường $g$.],
    [Đồ thị $v$–$t$ tăng dần và có tiệm cận ngang $v = v_("th")$.],
  ), ans-tf: ("Đ", "Đ", "S", "Đ"),
  sol: [a) $a = g - k v/m$ giảm khi $v$ tăng; từ nghỉ, $a(0) = g$.
    #parbreak() b) $m g = k v_("th")$ nên $v_("th") = m g/k$.
    #parbreak() c) Với cùng khối lượng riêng, $m prop R^3$; đề cho $k prop R$ nên $v_("th") prop R^2$. Hai bán kính khác nhau cho tốc độ tới hạn khác nhau.
    #parbreak() d) Đường cong tăng và thoải dần, tiến tới đường $v = v_("th")$; trong mô hình lí tưởng, không đạt đúng tốc độ tới hạn ở thời gian hữu hạn nếu xuất phát từ nghỉ.
    #align(center, bai-06-hinh("can-tuyen-tinh"))
  ],
)

// TF-04
#vp-question(
  [Ba đồ thị dưới đây mô tả cùng chuyển động rơi tự do từ nghỉ, chọn gốc tọa độ tại vị trí thả, chiều dương hướng xuống. Coi $g$ không đổi. Vật chưa chạm đất tại $t_0$.
    #align(center, bai-06-hinh("tf-04"))
  ], type: "tf",
  statements: (
    [Diện tích dưới đồ thị (1) từ 0 đến $t_0$ bằng vận tốc $v(t_0)$.],
    [Diện tích dưới đồ thị (2) từ 0 đến $t_0$ bằng độ dịch chuyển $d(t_0)$.],
    [Độ dốc tiếp tuyến của đồ thị (3) tại $t_0$ bằng $v(t_0)$.],
    [Cả ba đồ thị cho thấy gia tốc tăng dần khi vật gần mặt đất hơn.],
  ), ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [a) Diện tích bằng $g t_0 = v(t_0)$ vì vận tốc ban đầu bằng không.
    #parbreak() b) Diện tích tam giác bằng $v(t_0) t_0/2 = g t_0^2/2 = d(t_0)$.
    #parbreak() c) $d'(t_0) = g t_0 = v(t_0)$.
    #parbreak() d) Cả ba đồ thị phù hợp với gia tốc không đổi $g$ trong mô hình.],
)

// TF-05
#vp-question(
  [Bộ thí nghiệm thả bi từ nghỉ dùng đồng hồ bắt đầu đếm khi phát lệnh ngắt nam châm và dừng khi bi qua cổng quang điện. Gia tốc được tính bằng $g_("đo") = 2 h/t^2$, với $h$ là độ cao rơi. Xét riêng từng yếu tố dưới đây, coi các yếu tố khác lí tưởng.],
  type: "tf",
  statements: (
    [Lực cản không khí hướng lên làm kết quả tính $g$ nhỏ hơn giá trị khi bỏ qua lực cản.],
    [Nếu bi rời nam châm chậm do từ dư, thời gian đo tăng và kết quả tính $g$ giảm.],
    [Với sai số tuyệt đối của thước và đồng hồ không đổi, giảm độ cao rơi càng nhỏ càng tốt sẽ làm giảm sai số tương đối của $g$.],
    [Căn chỉnh để bi đi đúng giữa khe cổng quang điện loại bỏ hoàn toàn sai số ngẫu nhiên.],
  ), ans-tf: ("Đ", "Đ", "S", "S"),
  sol: [a) Lực cản làm thời gian rơi dài hơn, nên thương $2 h/t^2$ nhỏ hơn.
    #parbreak() b) Đồng hồ đã đếm khi bi chưa rơi, gây độ trễ dương trong thời gian đo. Nếu chỉ đo giữa hai cổng sau khi bi đã rời nam châm thì lập luận này không áp dụng.
    #parbreak() c) Giảm $h$ cũng giảm $t$; với sai số tuyệt đối giữ nguyên, $Delta h/h$ và $Delta t/t$ tăng.
    #parbreak() d) Căn chỉnh giảm sai lệch hình học và giúp ghi nhận đúng sự kiện, không loại bỏ mọi nguồn sai số.],
)

= Phần III. Trắc nghiệm trả lời ngắn
#sbt-instructions(reset: true)[Tính và điền kết quả theo đơn vị, yêu cầu làm tròn của từng câu.]

// SHORT-01
#vp-question(
  [Thả vật rơi tự do từ nghỉ ở độ cao $45 thin "m"$, lấy $g = 10 thin "m/s"^2$. Tính quãng đường vật rơi trong giây cuối trước khi chạm đất, theo mét.],
  type: "short", ans: "25", sol: [$T = sqrt(2 times 45/10) = 3 thin "s"$. Quãng đường giây cuối $s = 45 - 1/2 times 10 times 2^2 = 25 thin "m"$.],
)

// SHORT-02
#vp-question(
  [Một giọt nước rơi tự do từ nghỉ ở độ cao $16 thin "m"$. Gọi $t_1$, $t_2$ là thời gian rơi trong 8 mét đầu và 8 mét cuối. Tính $t_1/t_2$, làm tròn đến hai chữ số thập phân.],
  type: "short", ans: "2,41", sol: [$t_1 = sqrt(16/g)$; $t_2 = sqrt(32/g) - sqrt(16/g)$. Tỉ số $t_1/t_2 = 1/(sqrt(2) - 1) = sqrt(2) + 1 approx "2,41"$, không phụ thuộc $g$.],
)

// SHORT-03
#vp-question(
  [Một nhóm ghi số liệu đo bi rơi qua hai cổng quang điện: khoảng cách $s = ("0,500" plus.minus "0,001") thin "m"$, đường kính bi $d = "20,0" thin "mm"$, thời gian chắn sáng $tau_A = "0,020" thin "s"$, $tau_B = "0,010" thin "s"$. Theo gần đúng bi nhỏ, tia sáng qua tâm, tính giá trị gia tốc suy ra từ số liệu theo m/s², làm tròn đến một chữ số thập phân.],
  type: "short", ans: "3,0",
  sol: [$v_A approx d/tau_A = "1,0" thin "m/s"$, $v_B approx "2,0" thin "m/s"$. Suy ra $g_("đo") approx frac(v_B^2 - v_A^2, 2 s) = frac(4 - 1, 1) = "3,0" thin "m/s"^2$. Đây là kết quả của bộ số liệu; sai lệch lớn so với khoảng $"9,8" thin "m/s"^2$ cho thấy cần kiểm tra cách ghi số, bố trí và mô hình đo.],
)

// SHORT-04
#vp-question(
  [Các giọt nước rời vòi từ nghỉ, cách nhau những khoảng thời gian bằng nhau. Giọt thứ nhất chạm đất sau $"0,60" thin "s"$, đúng lúc giọt thứ ba rời vòi. Bỏ qua lực cản, lấy $g = 10 thin "m/s"^2$. Tính khoảng cách giữa giọt thứ nhất và thứ hai khi giọt thứ nhất vừa chạm đất, theo mét.],
  type: "short", ans: "1,35", sol: [Khoảng cách thời gian giữa hai lần thả là $"0,60"/2 = "0,30" thin "s"$. Độ cao vòi $H = 5 times "0,60"^2 = "1,80" thin "m"$. Giọt thứ hai đã rơi $5 times "0,30"^2 = "0,45" thin "m"$, nên khoảng cách là $"1,80" - "0,45" = "1,35" thin "m"$.],
)

// SHORT-05
#vp-question(
  [Đo $g = 2 h/t^2$ với $h = ("0,800" plus.minus "0,002") thin "m"$, $t = ("0,404" plus.minus "0,004") thin "s"$. Theo quy tắc cộng sai số tương đối, tính $delta g$ theo phần trăm, làm tròn đến một chữ số thập phân.],
  type: "short", ans: "2,2", sol: [$delta g approx frac("0,002", "0,800") + 2 frac("0,004", "0,404") approx "0,02230"$, tức $"2,230"% approx "2,2"%$.],
)

= Phần IV. Tự luận
#sbt-essay-instructions(reset: true)[Trình bày lập luận, công thức, phép tính và kết luận phù hợp với yêu cầu của bài.]

// ESSAY-01
#vp-question(
  [Trong một mô hình, thả vật xốp khối lượng $"0,20" thin "kg"$ từ nghỉ ở độ cao $400 thin "m"$. Coi $g = "9,80" thin "m/s"^2$ không đổi.
    #parbreak() a) Bỏ qua lực cản: tính thời gian rơi và tốc độ ngay trước khi chạm đất.
    #parbreak() b) Nếu lực cản hướng lên có độ lớn $F_c = k v^2$, với $k = "0,008" thin "kg/m"$, hãy tính tốc độ tới hạn.
    #parbreak() c) Giải thích vì sao tốc độ chạm đất có lực cản nhỏ hơn nhiều so với kết quả câu a. Phác thảo đồ thị $v$–$t$ so sánh hai trường hợp trong thời gian vật còn ở trên không.],
  type: "essay", lines: 14,
  sol: [a) $T = sqrt(2 times 400/"9,80") approx "9,04" thin "s"$; $v = sqrt(2 times "9,80" times 400) approx "88,54" thin "m/s"$.
    #parbreak() b) $k v_("th")^2 = m g$ cho $v_("th") = sqrt(frac("0,20" times "9,80", "0,008")) approx "15,65" thin "m/s"$.
    #parbreak() c) $a = g - k v^2/m$ giảm khi tốc độ tăng. Từ nghỉ, tốc độ luôn nhỏ hơn và tiến dần tới $v_("th")$, nên không thể đạt mức $"88,54" thin "m/s"$. Với độ cao đã cho, tốc độ chạm đất rất gần $"15,65" thin "m/s"$.
    #align(center, bai-06-hinh("essay-01"))
    Hình so sánh trong 9 giây đầu, khi cả hai mô hình đều chưa chạm đất. Đường không cản là $v = g t$; đường có cản thoải dần và tiến tới đường ngang $v_("th")$.],
)

// ESSAY-02
#vp-question(
  [Một vật rơi tự do từ nghỉ, được chụp ảnh hoạt nghiệm: các chớp sáng cách nhau những khoảng thời gian bằng nhau.
    #parbreak() a) Chứng minh quãng đường trong khoảng thời gian $Delta t$ thứ $n$ là
    $ s_n = 1/2 g (2 n - 1) (Delta t)^2. $
    #parbreak() b) Chớp thứ nhất trùng lúc thả vật ($t = 0$); chớp thứ $j$ ứng với $t = (j - 1) Delta t$. Biết $Delta t = "0,10" thin "s"$, khoảng cách giữa vị trí ở chớp thứ 4 và thứ 5 là $35 thin "cm"$. Tính $g$ từ số liệu.
    #align(center, bai-06-hinh("anh-hoat-nghiem"))
  ], type: "essay", lines: 12,
  sol: [a) $s_n = 1/2 g (n Delta t)^2 - 1/2 g ((n - 1) Delta t)^2 = 1/2 g (2 n - 1) (Delta t)^2$.
    #parbreak() b) Chớp 4 tại $"0,30" thin "s"$, chớp 5 tại $"0,40" thin "s"$, nên đây là khoảng thứ 4, không phải thứ 5. $"0,35" = 1/2 g times 7 times "0,10"^2$, suy ra $g = 10 thin "m/s"^2$.],
)

// ESSAY-03
#vp-question(
  [Từ vị trí cao $50 thin "m"$ so với mặt nước, thả vật A từ nghỉ. Sau $1 thin "s"$, thả vật B từ nghỉ ở cùng độ cao. Bỏ qua lực cản, lấy $g = "9,8" thin "m/s"^2$.
    #parbreak() a) Tính khoảng cách giữa hai vật khi A vừa chạm nước.
    #parbreak() b) Trong một lần thử khác, vẫn thả A như trên nhưng ném B thẳng đứng xuống sau 1 giây. Tính tốc độ ban đầu của B để hai vật chạm nước đồng thời.],
  type: "essay", lines: 12,
  sol: [a) $T = sqrt(2 times 50/"9,8") approx "3,19438" thin "s"$. B đã rơi trong $tau = T - 1 thin "s" approx "2,19438" thin "s"$. Khoảng cách $D = 50 - "4,9" tau^2 approx "26,40" thin "m"$.
    #parbreak() b) $50 = v_(0 B) tau + "4,9" tau^2$, nên $v_(0 B) = frac(50 - "4,9" tau^2, tau) approx "12,03" thin "m/s"$, hướng xuống. Các biểu thức số dùng $tau$ tính bằng giây.],
)

// ESSAY-04
#vp-question(
  [Thả bi từ nghỉ; đồng hồ đo từ lúc bi thực sự rời nam châm tới khi qua cổng quang điện sau quãng rơi $h = ("0,750" plus.minus "0,001") thin "m"$. Sai số dụng cụ của đồng hồ là $"0,001" thin "s"$. Năm thời gian đo được:
    #align(center, table(columns: (auto, 1fr), inset: (x: 10pt, y: 6pt), stroke: 0.5pt + luma(65%),
      table.header([*Lần đo*], [*Thời gian (s)*]),
      [1], [0,391], [2], [0,389], [3], [0,390], [4], [0,392], [5], [0,388],
    ))
    Lấy sai số ngẫu nhiên của thời gian bằng độ lệch tuyệt đối trung bình; cộng sai số dụng cụ để được $Delta t$. Dùng quy tắc cộng sai số tương đối.
    #parbreak() a) Tính $overline(t)$ và giá trị ước lượng $g_("đo") = 2 h/overline(t)^2$.
    #parbreak() b) Tính $Delta t$, $delta g$ và $Delta g$.
    #parbreak() c) Viết kết quả đo với $Delta g$ có hai chữ số có nghĩa, $g_("đo")$ làm tròn đến cùng hàng thập phân. So sánh với giá trị tham chiếu cho trước $"9,808" thin "m/s"^2$.],
  type: "essay", lines: 14,
  sol: [a) $overline(t) = "0,390" thin "s"$; $g_("đo") = "1,500"/"0,390"^2 approx "9,86193" thin "m/s"^2$.
    #parbreak() b) Độ lệch tuyệt đối trung bình $"0,0012" thin "s"$; $Delta t = "0,0012" + "0,001" = "0,0022" thin "s"$.
    $ delta g approx frac("0,001", "0,750") + 2 frac("0,0022", "0,390") approx "0,012615" = "1,2615"%. $
    $Delta g approx "9,86193" times "0,012615" approx "0,12441" thin "m/s"^2$.
    #parbreak() c) $g = ("9,86" plus.minus "0,12") thin "m/s"^2$. Giá trị tham chiếu nằm trong khoảng $["9,74"; "9,98"] thin "m/s"^2$, nên phù hợp với kết quả trong phạm vi sai số ước lượng. Khoảng này không phải khoảng tin cậy thống kê với mức xác suất xác định; chưa đủ căn cứ kết luận thí nghiệm có độ chính xác cao.],
)

// ESSAY-05
#vp-question(
  [Một quả cầu được buông từ độ cao $h_0 = "1,80" thin "m"$ so với sàn thang máy. Ngay trước lúc buông, cầu đứng yên so với cabin. Bỏ qua lực cản và các tác động khác; lấy $g = "9,80" thin "m/s"^2$ không đổi, cabin không quay.
    #align(center, bai-06-hinh("thang-may"))
    a) Khi cabin đứng yên hoặc chuyển động thẳng đều, tính thời gian cầu chạm sàn.
    #parbreak() b) Khi cabin đi xuống nhanh dần đều với gia tốc $"2,00" thin "m/s"^2$, tính gia tốc của cầu đối với cabin và thời gian chạm sàn.
    #parbreak() c) Trong mô hình cabin rơi tự do với gia tốc $g$ ngay từ lúc buông cầu, mô tả chuyển động của cầu so với cabin. Giải thích trạng thái mất trọng lượng.],
  type: "essay", lines: 12,
  sol: [a) Vận tốc tương đối ban đầu bằng không, gia tốc tương đối bằng $g$. Do đó $t_0 = sqrt(2 h_0/g) approx "0,606" thin "s"$.
    #parbreak() b) Chọn chiều dương xuống: $a_("tương đối") = g - a_0 = "7,80" thin "m/s"^2$. Thời gian $t_1 = sqrt(frac(2 times "1,80", "7,80")) approx "0,679" thin "s"$. Vận tốc ban đầu chung của cầu và cabin triệt tiêu khi xét chuyển động tương đối.
    #parbreak() c) Khi $a_0 = g$, gia tốc tương đối bằng không. Cầu không có vận tốc ban đầu đối với cabin nên giữ nguyên vị trí tương đối, chưa chạm sàn trong mô hình. Cầu và người cùng rơi tự do; lực đỡ bằng không gây mất trọng lượng biểu kiến, dù trọng lực vẫn tác dụng.],
)

#import "../cau-hinh.typ": *
#import "images/bai-07-do-thi.typ": bai-07-hinh

// Nguồn: nguon/bai-07-goc.txt; hiệu đính: nguon/bai-07-ghi-chu.md.
// Mỗi câu chỉnh sửa độc lập. Đáp án, lời giải ẩn trên bản học sinh.
#sbt-bai(num: "7", title: "Chuyển động ném", label: <bai-07>)

= Phần I. Trắc nghiệm khách quan
#sbt-instructions(reset: true)[Chọn một phương án đúng trong mỗi câu. Trong bài này, nếu không nêu khác, lấy $g = "9,8" thin "m/s"^2$, bỏ qua lực cản và coi vật là chất điểm.]

// MCQ-01
#vp-question(
  [Một quả bóng được ném xiên lên với góc $0 degree < alpha < 90 degree$. Tại điểm cao nhất, vận tốc và gia tốc của bóng có đặc điểm nào?],
  type: "mcq", options: ([Cả vận tốc và gia tốc đều bằng không.],
    [Vận tốc nằm ngang, khác không; gia tốc hướng xuống và vuông góc với vận tốc.],
    [Vận tốc bằng không, gia tốc bằng gia tốc trọng trường.],
    [Vận tốc khác không, gia tốc bằng không vì không còn lực đẩy.]),
  ans: "B", sol: [Ở đỉnh, $v_y = 0$ nhưng $v_x = v_0 cos alpha != 0$. Gia tốc vẫn hướng thẳng đứng xuống, có độ lớn $g$.],
)

// MCQ-02
#vp-question(
  [Ném xiên một hòn đá từ mặt đất với tốc độ $20 thin "m/s"$, góc ném $60 degree$ so với phương ngang. Tốc độ tại điểm cao nhất bằng bao nhiêu?],
  type: "mcq", options: ([$0 thin "m/s"$.], [$10 thin "m/s"$.], [$"17,3" thin "m/s"$.], [$20 thin "m/s"$.]),
  ans: "B", sol: [$v_("đỉnh") = v_0 cos 60 degree = 10 thin "m/s"$.],
)

// MCQ-03
#vp-question(
  [Từ cùng độ cao $45 thin "m"$, đồng thời thả bi A từ nghỉ và ném ngang bi B với tốc độ $15 thin "m/s"$. Mặt đất nằm ngang. Nhận xét nào đúng?],
  type: "mcq", options: ([A chạm đất trước vì đi quãng đường ngắn hơn.],
    [B chạm đất trước vì còn chịu lực ném sau khi rời tay.],
    [Hai bi chạm đất đồng thời sau khoảng $"3,03" thin "s"$.],
    [Thời gian rơi của B phụ thuộc tốc độ ném ngang.]),
  ans: "C", sol: [Hai bi có cùng chuyển động theo phương đứng: $T = sqrt(2 h/g) = sqrt(90/"9,8") approx "3,03" thin "s"$.],
)

// MCQ-04
#vp-question(
  [Trong chuyển động ném xiên, chọn $O x$ nằm ngang, $O y$ hướng lên. Cặp đồ thị gia tốc thành phần nào đúng? Đường xanh biểu diễn $a_x$, đường cam biểu diễn $a_y$.
    #align(center, bai-07-hinh("mcq-04"))
  ], type: "mcq",
  options: ([$a_x = 0$, $a_y = -g$.], [Cả $a_x$ và $a_y$ đều không đổi, dương.],
    [$a_x$ tăng đều, $a_y$ giảm đều.], [$a_x = g$, $a_y = 0$.]),
  ans: "A", sol: [Chỉ có trọng lực hướng xuống: thành phần gia tốc theo phương ngang bằng không, theo chiều dương hướng lên bằng $-g$.],
)

// MCQ-05
#vp-question(
  [Một quả bóng được ném từ mặt đất với cùng tốc độ $25 thin "m/s"$ trong hai lần, góc ném lần lượt $30 degree$ và $60 degree$. Gọi $L_1$, $L_2$ là tầm xa; $H_1$, $H_2$ là tầm cao so với điểm ném. Các tỉ số bằng bao nhiêu?],
  type: "mcq",
  options: ([$L_1/L_2 = 1$; $H_1/H_2 = 1/3$.], [$L_1/L_2 = 1/3$; $H_1/H_2 = 1$.],
    [$L_1/L_2 = 1$; $H_1/H_2 = 3$.], [$L_1/L_2 = 1/sqrt(3)$; $H_1/H_2 = 1/3$.]),
  ans: "A", sol: [$L = frac(v_0^2 sin(2 alpha), g)$, $H = frac(v_0^2 sin^2 alpha, 2 g)$. Hai góc phụ nhau cho cùng tầm xa; tỉ số tầm cao bằng $(1/2)^2/(sqrt(3)/2)^2 = 1/3$.],
)

// MCQ-06
#vp-question(
  [Máy bay chuyển động thẳng đều theo phương ngang ở độ cao $500 thin "m"$, tốc độ $100 thin "m/s"$, rồi thả gói hàng. Chọn O tại điểm thả, $O x$ theo chiều bay, $O y$ hướng xuống. Với $x$, $y$ tính bằng mét, phương trình quỹ đạo là gì?
    #align(center, bai-07-hinh("nem-ngang"))
  ], type: "mcq",
  options: ([$y = "0,00049" x^2$.], [$y = "0,098" x^2$.], [$y = "4,9" x^2$.], [$y = 100 x - "4,9" x^2$.]),
  ans: "A", sol: [$x = 100 t$, $y = "4,9" t^2$. Khử $t$: $y = frac("9,8", 2 times 100^2) x^2 = "0,00049" x^2$.],
)

// MCQ-07
#vp-question(
  [Gói hàng trong câu 6 chạm đất với vectơ vận tốc hợp phương ngang một góc hướng xuống bằng bao nhiêu, làm tròn đến một chữ số thập phân?],
  type: "mcq", options: ([$"26,1" degree$.], [$"44,7" degree$.], [$"63,9" degree$.], [$"45,0" degree$.]),
  ans: "B", sol: [$v_x = 100 thin "m/s"$, $v_y = sqrt(2 g h) = sqrt(9800) thin "m/s"$. Do đó $theta = arctan(frac(sqrt(9800), 100)) approx "44,7106" degree$, làm tròn thành $"44,7" degree$.],
)

// MCQ-08
#vp-question(
  [Ném ngang một hòn đá từ đỉnh dốc với tốc độ $10 thin "m/s"$. Mặt dốc hạ xuống theo chiều ném, nghiêng $30 degree$ so với phương ngang và đủ dài. Khoảng cách dọc dốc từ điểm ném đến điểm chạm bằng bao nhiêu?
    #align(center, bai-07-hinh("doc-xuong"))
  ], type: "mcq", options: ([$"13,6" thin "m"$.], [$"6,8" thin "m"$.], [$"20,4" thin "m"$.], [$"11,8" thin "m"$.]),
  ans: "A", sol: [Chọn $y$ hướng xuống: dốc có $y = x tan 30 degree$, quỹ đạo $y = g x^2/(2 v_0^2)$. Giao điểm khác O có $x = frac(2 v_0^2 tan 30 degree, g) approx "11,78" thin "m"$. Khoảng cách dọc dốc $R = x/(cos 30 degree) approx "13,61" thin "m"$.],
)

// MCQ-09
#vp-question(
  [Hai quả cầu cùng kích thước có khối lượng $m_A = "1,0" thin "kg"$, $m_B = "0,10" thin "kg"$, chuyển động trong không khí. Giả sử chúng có cùng quy luật lực cản theo vận tốc. Tại hai thời điểm mà hai quả cầu có cùng vectơ vận tốc, nhận xét nào đúng về độ lớn gia tốc do lực cản gây ra?],
  type: "mcq", options: ([Hai gia tốc cản bằng nhau vì kích thước bằng nhau.],
    [Gia tốc cản của A bằng một phần mười của B.], [Gia tốc cản của A gấp mười lần của B.],
    [Cả hai gia tốc cản đều bằng không.]),
  ans: "B", sol: [Tại cùng vận tốc, lực cản có cùng độ lớn theo giả thiết. Vì $a_c = F_c/m$, $a_(c A)/a_(c B) = m_B/m_A = "0,1"$. Không được coi lực cản của hai vật luôn bằng nhau khi vận tốc của chúng khác nhau.],
)

// MCQ-10
#vp-question(
  [Một quả bóng rời tay ở độ cao $"2,00" thin "m"$, góc $45 degree$ so với phương ngang. Tâm rổ cao $"3,05" thin "m"$, cách điểm ném theo phương ngang $"4,50" thin "m"$. Coi bóng là chất điểm. Tốc độ ném để bóng đi qua tâm rổ bằng bao nhiêu?
    #align(center, bai-07-hinh("bong-ro"))
  ], type: "mcq", options: ([$"6,85" thin "m/s"$.], [$"7,58" thin "m/s"$.], [$"8,12" thin "m/s"$.], [$"9,50" thin "m/s"$.]),
  ans: "B", sol: [Độ tăng độ cao là $"1,05" thin "m"$. Từ $"1,05" = "4,5" tan 45 degree - frac(g times "4,5"^2, 2 v_0^2 cos^2 45 degree)$, suy ra $v_0 = sqrt("198,45"/"3,45") approx "7,5843" thin "m/s"$. Với góc cố định, đây là tốc độ xác định, không phải bài tối ưu tốc độ theo góc.],
)

// MCQ-11
#vp-question(
  [Tại đỉnh quỹ đạo ném xiên, gia tốc vuông góc với vận tốc. Biết gia tốc pháp tuyến có độ lớn $a_n = v^2/R$, với $R$ là bán kính cong. Với $0 degree < alpha < 90 degree$, bán kính cong ở đỉnh bằng bao nhiêu?],
  type: "mcq",
  options: ([$R = v_0^2/g$.], [$R = frac(v_0^2 cos^2 alpha, g)$.],
    [$R = frac(v_0^2 sin^2 alpha, g)$.], [$R = frac(v_0^2 cos alpha, g)$.]),
  ans: "B", sol: [Tại đỉnh, $v = v_0 cos alpha$, $a_n = g$, nên $R = v^2/g = frac(v_0^2 cos^2 alpha, g)$.],
)

// MCQ-12
#vp-question(
  [Một vật ném xiên lên từ mặt đất, chọn $O y$ hướng lên, $t = 0$ lúc ném. Đồ thị thành phần vận tốc $v_y$ theo thời gian là hình nào?
    #align(center, bai-07-hinh("mcq-12"))
  ], type: "mcq",
  options: ([Đường thẳng dốc xuống, hệ số góc $-g$, tung độ đầu $v_0 sin alpha$.],
    [Parabol lõm xuống.], [Đường thẳng nằm ngang.], [Đường thẳng từ O dốc lên.]),
  ans: "A", sol: [$v_y = v_0 sin alpha - g t$. Đồ thị cắt trục thời gian khi vật đạt đỉnh.],
)

// MCQ-13
#vp-question(
  [Một vật được ném ngang từ độ cao $80 thin "m"$ với tốc độ $30 thin "m/s"$. Lấy $g = 10 thin "m/s"^2$. Độ lớn độ dịch chuyển từ điểm ném đến điểm chạm đất bằng bao nhiêu?],
  type: "mcq", options: ([$120 thin "m"$.], [$80 thin "m"$.], [$"144,2" thin "m"$.], [$200 thin "m"$.]),
  ans: "C", sol: [$T = 4 thin "s"$, $L = 30 times 4 = 120 thin "m"$. Độ lớn độ dịch chuyển $d = sqrt(120^2 + 80^2) approx "144,2" thin "m"$; đây không phải độ dài quỹ đạo.],
)

// MCQ-14
#vp-question(
  [Một hòn đá được ném xiên từ mặt đất với tốc độ $20 thin "m/s"$, góc $"53,13" degree$, cho $sin alpha = "0,8"$, $cos alpha = "0,6"$. Lấy $g = 10 thin "m/s"^2$. Đá có thể tới một mặt phẳng ngang cao $15 thin "m"$ so với điểm ném hay không?],
  type: "mcq", options: ([Không thể, vì tầm cao nhỏ hơn 15 m.], [Có, tại khoảng cách ngang 18 m.],
    [Có, tại khoảng cách ngang 24 m.], [Có, tại khoảng cách ngang 36 m.]),
  ans: "A", sol: [$v_(0 y) = 16 thin "m/s"$ nên $H_(max) = 16^2/(2 times 10) = "12,8" thin "m" < 15 thin "m"$. Phương trình $16 t - 5 t^2 = 15$ không có nghiệm thực.],
)

// MCQ-15
#vp-question(
  [Ném một vật từ độ cao $h_0 = "2,0" thin "m"$ xuống mặt đất nằm ngang với tốc độ ban đầu cố định $v_0 = 12 thin "m/s"$. Góc ném để tầm xa lớn nhất thỏa mãn điều kiện nào?],
  type: "mcq", options: ([$alpha = 45 degree$.], [$alpha > 45 degree$.],
    [$alpha < 45 degree$, với $sin alpha = frac(1, sqrt(2 + 2 g h_0/v_0^2))$.], [$alpha = 60 degree$.]),
  ans: "C", sol: [Tối ưu tầm xa cho $tan alpha = frac(v_0, sqrt(v_0^2 + 2 g h_0)) < 1$. Công thức sin trong C tương đương điều kiện này.],
)

// MCQ-16
#vp-question(
  [Một bóng khối lượng $"0,4" thin "kg"$ được ném từ mặt đất với tốc độ $15 thin "m/s"$, góc $30 degree$. Biết động lượng là $bold(p) = m bold(v)$. Từ lúc ném đến ngay trước khi trở lại mặt đất, độ biến thiên động lượng có độ lớn và hướng nào? Lấy $g = 10 thin "m/s"^2$.],
  type: "mcq", options: ([$"6,0" thin "kg·m/s"$, hướng xuống.], [$"12,0" thin "kg·m/s"$, nằm ngang.],
    [$0 thin "kg·m/s"$.], [$"10,4" thin "kg·m/s"$, hướng lên.]),
  ans: "A", sol: [Thành phần vận tốc ngang không đổi; thành phần đứng đổi từ $+"7,5"$ thành $-"7,5" thin "m/s"$. Vậy $Delta p_y = "0,4" times (-15) = -6 thin "kg·m/s"$, hướng xuống.],
)

// MCQ-17
#vp-question(
  [Từ cùng một điểm cao $45 thin "m"$, đồng thời ném hai viên sỏi trong cùng mặt phẳng thẳng đứng: A ném ngang với tốc độ $10 thin "m/s"$; B ném xiên lên $30 degree$ với cùng tốc độ. Hai thành phần vận tốc ngang cùng chiều. Lấy $g = 10 thin "m/s"^2$. Sau 1 giây, hai viên sỏi cách nhau bao nhiêu?],
  type: "mcq", options: ([$"10,00" thin "m"$.], [$"5,00" thin "m"$.], [$"14,10" thin "m"$.], [$"5,18" thin "m"$.]),
  ans: "D", sol: [Gia tốc hai vật bằng nhau nên triệt tiêu trong chuyển động tương đối. Sau 1 giây, $Delta x = 10 - 10 cos 30 degree$, $Delta y = 10 sin 30 degree = 5$ (m). Khoảng cách $d = sqrt((10 - 5 sqrt(3))^2 + 5^2) approx "5,1764" thin "m"$.],
)

// MCQ-18
#vp-question(
  [Một vật được phóng ngang với tốc độ $200 thin "m/s"$ từ vị trí cao $20 thin "m"$. Một điểm M trên mặt đất chuyển động thẳng đều cùng chiều ném, ra xa chân đường thẳng đứng qua điểm phóng với tốc độ $10 thin "m/s"$. Lấy $g = 10 thin "m/s"^2$. Để vật chạm đất đúng tại M, khoảng cách ngang ban đầu từ chân đường thẳng đứng đến M phải bằng bao nhiêu?],
  type: "mcq", options: ([$400 thin "m"$.], [$420 thin "m"$.], [$380 thin "m"$.], [$440 thin "m"$.]),
  ans: "C", sol: [$T = sqrt(2 times 20/10) = 2 thin "s"$. Điều kiện gặp nhau: $200 T = D + 10 T$, nên $D = 190 times 2 = 380 thin "m"$.],
)

// MCQ-19
#vp-question(
  [Vật khối lượng $m$ ném xiên từ mặt đất với góc $0 degree < alpha < 90 degree$. Chọn mốc thế năng tại mặt đất. Biết $E_t = m g y$, $E_đ = m v^2/2$. Trong thời gian bay tới khi trở lại mặt đất, các đồ thị năng lượng theo thời gian có đặc điểm nào?],
  type: "mcq",
  options: ([$E_t$ là parabol lõm xuống, $E_đ$ là parabol lõm lên; cực trị cùng lúc vật đạt đỉnh.],
    [Cả hai là đường thẳng biến thiên theo thời gian.], [Thế năng tăng đều, động năng giảm đều trong toàn bộ thời gian bay.],
    [Động năng bằng không tại điểm cao nhất.]),
  ans: "A", sol: [$E_t = m g (v_0 sin alpha t - g t^2/2)$ là parabol lõm xuống. Cơ năng không đổi nên $E_đ = m v_0^2/2 - E_t$ là parabol lõm lên, có cực tiểu dương ở đỉnh.
    #align(center, bai-07-hinh("nang-luong"))
  ],
)

// MCQ-20
#vp-question(
  [Ném ngang bi từ bàn cao $h = ("0,800" plus.minus "0,002") thin "m"$, đo được tầm xa $L = ("1,200" plus.minus "0,006") thin "m"$. Bỏ qua sai số $g$. Dùng quy tắc cộng sai số tương đối; làm tròn sai số tuyệt đối đến một chữ số có nghĩa. Kết quả nào đúng? Sai số tương đối ghi trong phương án được tính trước khi làm tròn sai số tuyệt đối.],
  type: "mcq",
  options: ([$v_0 = ("2,97" plus.minus "0,02") thin "m/s"$; $delta v_0 approx "0,63"%$.],
    [$v_0 = ("2,97" plus.minus "0,03") thin "m/s"$; $delta v_0 approx "1,0"%$.],
    [$v_0 = ("3,00" plus.minus "0,05") thin "m/s"$; $delta v_0 approx "1,67"%$.],
    [$v_0 = ("2,97" plus.minus "0,01") thin "m/s"$; $delta v_0 approx "0,38"%$.]),
  ans: "A", sol: [$v_0 = L sqrt(g/(2 h)) approx "2,96985" thin "m/s"$. $delta v_0 approx frac("0,006", "1,200") + 1/2 frac("0,002", "0,800") = "0,00625" = "0,625"%$. Sai số tuyệt đối $Delta v_0 approx "0,01856" thin "m/s"$, làm tròn thành $"0,02" thin "m/s"$.],
)

= Phần II. Trắc nghiệm Đúng/Sai
#sbt-instructions(reset: true)[Xác định mỗi phát biểu a), b), c), d) là đúng hay sai.]

// TF-01
#vp-question(
  [Một quả bóng được sút từ mặt sân nằm ngang với tốc độ $20 thin "m/s"$, góc $30 degree$.],
  type: "tf", statements: (
    [Vận tốc ngang không đổi: $v_x = 10 sqrt(3) thin "m/s" approx "17,32" thin "m/s"$.],
    [Tốc độ của bóng bằng không tại đỉnh quỹ đạo.],
    [Tổng thời gian bay xấp xỉ $"2,04" thin "s"$.],
    [Tầm xa xấp xỉ $"35,35" thin "m"$.]),
  ans-tf: ("Đ", "S", "Đ", "Đ"),
  sol: [a) $v_x = 20 cos 30 degree = 10 sqrt(3) thin "m/s"$.
    #parbreak() b) Ở đỉnh, $v = v_x != 0$.
    #parbreak() c) $T = frac(2 times 20 sin 30 degree, "9,8") approx "2,04082" thin "s"$.
    #parbreak() d) $L = frac(20^2 sin 60 degree, "9,8") approx "35,34798" thin "m"$.],
)

// TF-02
#vp-question(
  [Ném ngang một hòn đá với tốc độ $15 thin "m/s"$ từ vách cao $40 thin "m"$ so với mặt nước. Chọn O tại điểm ném, $O x$ hướng ngang theo chiều ném, $O y$ hướng xuống. Lấy $g = 10 thin "m/s"^2$.],
  type: "tf", statements: (
    [Phương trình quỹ đạo là $y = x^2/45$, với $x$, $y$ tính bằng mét.],
    [Thời gian chạm nước xấp xỉ $"2,83" thin "s"$.],
    [Tốc độ chạm nước xấp xỉ $"32,0" thin "m/s"$.],
    [Vectơ vận tốc chạm nước hợp phương ngang một góc hướng xuống xấp xỉ $"62,06" degree$.]),
  ans-tf: ("Đ", "Đ", "Đ", "Đ"),
  sol: [a) $y = g x^2/(2 v_0^2) = x^2/45$.
    #parbreak() b) $T = sqrt(8) thin "s" approx "2,82843" thin "s"$.
    #parbreak() c) $v = sqrt(15^2 + 2 times 10 times 40) = sqrt(1025) thin "m/s" approx "32,0156" thin "m/s"$.
    #parbreak() d) $theta = arctan(sqrt(800)/15) approx "62,06165" degree$.],
)

// TF-03
#vp-question(
  [So sánh hai lần ném cùng quả cầu từ mặt đất với cùng tốc độ, góc $45 degree$: I trong chân không; II có lực cản $bold(F)_c = -k bold(v)$, $k > 0$ không đổi, không khí đứng yên. Hai lần đều kết thúc ở độ cao điểm ném. Hình minh họa hai quỹ đạo trong cùng hệ trục.
    #align(center, bai-07-hinh("luc-can"))
  ], type: "tf", statements: (
    [Trong I, thời gian đi lên bằng thời gian đi xuống.],
    [Trong II, $a_x = 0$ nên vận tốc ngang không đổi.],
    [Trong II, thời gian đi lên ngắn hơn thời gian đi xuống.],
    [Lực cản trong mô hình II làm giảm cả tầm cao và tầm xa so với I.]),
  ans-tf: ("Đ", "S", "Đ", "Đ"),
  sol: [a) Không có lực cản, chuyển động đứng đối xứng theo thời gian quanh đỉnh khi trở lại cùng độ cao.
    #parbreak() b) $a_x = -k v_x/m$, nên $v_x$ giảm.
    #parbreak() c) Khi lên, lực cản đứng cùng chiều trọng lực; khi xuống, nó ngược chiều trọng lực. Trên cùng độ chênh cao tới đỉnh, tốc độ đi xuống nhỏ hơn tốc độ đi lên tương ứng, nên thời gian xuống dài hơn.
    #parbreak() d) Lực cản làm giảm độ cao đạt được và vận tốc ngang. Trong mô hình lực cản tuyến tính với các điều kiện đã cho, tầm xa cũng giảm. Trục đối xứng của quỹ đạo I là đường thẳng đứng qua đỉnh, không phải trục tung qua điểm ném.],
)

// TF-04
#vp-question(
  [Trực thăng bay thẳng đều theo phương ngang với tốc độ $50 thin "m/s"$ ở độ cao $180 thin "m"$, thả một thùng hàng tới vị trí cố định trên mặt đất. Lấy $g = 10 thin "m/s"^2$; trực thăng tiếp tục giữ vận tốc sau khi thả.],
  type: "tf", statements: (
    [Đối với người đứng dưới đất, thùng hàng rơi theo đường thẳng đứng.],
    [Thời gian thùng hàng chạm đất là $6 thin "s"$.],
    [Phải thả khi còn cách vị trí nhận hàng $300 thin "m"$ theo phương ngang.],
    [Trong hệ quy chiếu gắn với trực thăng, thùng hàng luôn ở ngay phía dưới điểm thả trên trực thăng.]),
  ans-tf: ("S", "Đ", "Đ", "Đ"),
  sol: [a) Thùng hàng có vận tốc ngang lúc rời trực thăng nên quỹ đạo đối với mặt đất là parabol.
    #parbreak() b) $T = sqrt(2 times 180/10) = 6 thin "s"$.
    #parbreak() c) $L = 50 times 6 = 300 thin "m"$.
    #parbreak() d) Trực thăng và hàng có cùng vận tốc ngang không đổi nên vị trí ngang tương đối không đổi.],
)

// TF-05
#vp-question(
  [Mô hình hóa trọng tâm vận động viên nhảy xa như chất điểm ném xiên với tốc độ $"9,5" thin "m/s"$, góc $35 degree$. Trọng tâm cao $"1,1" thin "m"$ khi giậm nhảy và $"0,3" thin "m"$ khi tiếp đất. Chỉ xét chuyển động trọng tâm, không suy ra vị trí bàn chân.],
  type: "tf", statements: (
    [Với tốc độ giậm nhảy cố định, góc tối ưu luôn là $45 degree$, kể cả khi trọng tâm tiếp đất thấp hơn lúc giậm nhảy.],
    [Thành phần vận tốc đứng ban đầu xấp xỉ $"5,45" thin "m/s"$.],
    [Việc trọng tâm hạ thấp $"0,8" thin "m"$ làm thời gian bay dài hơn so với trở về cùng độ cao, với cùng vận tốc ban đầu.],
    [Độ dịch chuyển ngang của trọng tâm trong thời gian bay lớn hơn $9 thin "m"$.]),
  ans-tf: ("S", "Đ", "Đ", "Đ"),
  sol: [a) Khi điểm cuối thấp hơn, góc tối ưu nhỏ hơn $45 degree$; với số liệu này xấp xỉ $"42,71" degree$.
    #parbreak() b) $v_(0 y) = "9,5" sin 35 degree approx "5,44898" thin "m/s"$.
    #parbreak() c) Nghiệm dương của $-"0,8" = v_(0 y) T - "4,9" T^2$ lớn hơn $2 v_(0 y)/g$.
    #parbreak() d) $T approx "1,24335" thin "s"$, $L = "9,5" cos 35 degree T approx "9,67566" thin "m" > 9 thin "m"$. Đây là chuyển dời trọng tâm, không phải thành tích đo từ ván giậm tới dấu chạm cát.],
)

= Phần III. Trắc nghiệm trả lời ngắn
#sbt-instructions(reset: true)[Tính và điền kết quả theo đơn vị, yêu cầu làm tròn của từng câu.]

// SHORT-01
#vp-question(
  [Một vòi nước đặt ngang mức mặt cỏ phun với tốc độ $12 thin "m/s"$, góc cố định $30 degree$ so với phương ngang. Khi xoay vòi quanh trục đứng, các điểm chạm đất tạo thành một đường tròn. Tính diện tích hình tròn được đường này bao quanh, theo m², làm tròn đến một chữ số thập phân.],
  type: "short", ans: "508,7", short-boxes: 5,
  sol: [Bán kính $R = frac(12^2 sin 60 degree, "9,8") approx "12,72527" thin "m"$. $S = pi R^2 approx "508,72604" thin "m"^2$, làm tròn thành $"508,7" thin "m"^2$. Mô hình một tia với góc cố định chỉ cho các điểm rơi trên đường tròn, không khẳng định tưới đều toàn bộ hình tròn.],
)

// SHORT-02
#vp-question(
  [Ném ngang một hòn đá từ độ cao $45 thin "m"$. Vận tốc khi chạm đất hợp phương thẳng đứng một góc $37 degree$, cho $tan 37 degree approx "0,75"$. Lấy $g = 10 thin "m/s"^2$. Tính tốc độ ném, theo m/s, làm tròn đến số nguyên.],
  type: "short", ans: "23", sol: [$abs(v_y) = sqrt(2 g h) = 30 thin "m/s"$. Vì góc đo với phương đứng, $v_0 = abs(v_y) tan 37 degree = "22,5" thin "m/s"$, làm tròn thành $23 thin "m/s"$.],
)

// SHORT-03
#vp-question(
  [Một vật được ném xiên từ mặt đất với góc $60 degree$, đạt tầm cao $180 thin "m"$ so với điểm ném. Lấy $g = 10 thin "m/s"^2$. Tính tầm xa khi vật trở lại mặt đất, theo mét, làm tròn đến số nguyên.],
  type: "short", ans: "416", sol: [$v_0^2 = frac(2 g H, sin^2 60 degree) = 4800 thin "m"^2/"s"^2$. $L = frac(v_0^2 sin 120 degree, g) = 240 sqrt(3) thin "m" approx "415,69" thin "m"$, làm tròn thành $416 thin "m"$.],
)

// SHORT-04
#vp-question(
  [Máy bay chuyển động thẳng đều theo phương ngang với tốc độ $180 thin "m/s"$ ở độ cao $2000 thin "m"$, thả một kiện hàng tới điểm nhận cố định trên mặt biển. Lấy $g = 10 thin "m/s"^2$. Tại lúc thả, đường nối máy bay với điểm nhận hợp phương thẳng đứng một góc $beta$ bằng bao nhiêu độ? Làm tròn đến một chữ số thập phân.],
  type: "short", ans: "60,9", sol: [$T = sqrt(2 times 2000/10) = 20 thin "s"$, khoảng cách ngang $X = 180 times 20 = 3600 thin "m"$. $beta = arctan(X/2000) = arctan("1,8") approx "60,9" degree$.],
)

// SHORT-05
#vp-question(
  [Một bi được ném ngang với tốc độ $"2,50" thin "m/s"$ từ mép bàn cao $"0,900" thin "m"$ so với O ở ngay phía dưới. Mặt phẳng nghiêng bắt đầu tại O và đi lên theo chiều ném, góc $45 degree$ so với phương ngang. Tính khoảng cách dọc dốc $O M$ đến điểm bi chạm dốc, theo mét, làm tròn đến hai chữ số thập phân.
    #align(center, bai-07-hinh("ban-doc"))
  ], type: "short", ans: "0,86",
  sol: [Chọn O làm gốc, $x$ hướng ngang, $y$ hướng lên. Bi có $y = "0,900" - "0,784" x^2$; dốc có $y = x$. Nghiệm dương $x approx "0,609117" thin "m"$. Suy ra $O M = x/(cos 45 degree) approx "0,861422" thin "m"$, làm tròn thành $"0,86" thin "m"$.],
)

= Phần IV. Tự luận
#sbt-essay-instructions(reset: true)[Trình bày lập luận, công thức, phép tính và kết luận phù hợp với yêu cầu của bài.]

// ESSAY-01
#vp-question(
  [Một vật được ném từ vị trí cao $25 thin "m"$ so với mặt đất nằm ngang, với tốc độ $30 thin "m/s"$, góc $37 degree$; cho $sin 37 degree = "0,6"$, $cos 37 degree = "0,8"$. Một bức tường cao $15 thin "m"$ cách điểm ném theo phương ngang $80 thin "m"$. Lấy $g = 10 thin "m/s"^2$.
    #align(center, bai-07-hinh("tuong"))
    a) Chọn O tại điểm ném, $O x$ ngang về phía tường, $O y$ hướng lên. Lập phương trình quỹ đạo.
    #parbreak() b) Vật có vượt tường không? Tính chênh lệch độ cao giữa vật và đỉnh tường khi vật tới vị trí tường.
    #parbreak() c) Tính tốc độ và góc hợp phương ngang của vận tốc khi vật chạm mặt đất phía sau tường.],
  type: "essay", lines: 14,
  sol: [a) $x = 24 t$, $y = 18 t - 5 t^2$. Quỹ đạo $y = 3/4 x - 5/576 x^2$, với $x$, $y$ tính bằng mét.
    #parbreak() b) Tại $x = 80 thin "m"$, $y = 40/9 thin "m"$. Độ cao so với đất là $25 + 40/9 approx "29,44" thin "m"$, lớn hơn $15 thin "m"$. Chênh lệch độ cao $130/9 approx "14,44" thin "m"$.
    #parbreak() c) Chạm đất khi $y = -25 thin "m"$: $5 t^2 - 18 t - 25 = 0$, cho $T = frac(18 + sqrt(824), 10) approx "4,67054" thin "s"$. Khi đó $v_x = 24 thin "m/s"$, $v_y = -sqrt(824) thin "m/s"$.
    $v = sqrt(24^2 + 824) = sqrt(1400) thin "m/s" approx "37,42" thin "m/s"$; góc hướng xuống $theta = arctan(sqrt(824)/24) approx "50,10" degree$. Vị trí chạm đất $x approx "112,09" thin "m" > 80 thin "m"$.],
)

// ESSAY-02
#vp-question(
  [Một quả bóng được sút từ mặt sân nằm ngang với tốc độ $20 thin "m/s"$. Khung thành cách điểm sút $28 thin "m"$, xà ngang cao $"2,44" thin "m"$. Xét bóng đi qua mặt phẳng khung thành ở độ cao $"2,00" thin "m"$.
    #parbreak() a) Tìm hai góc sút $alpha_1 < alpha_2$ so với phương ngang.
    #parbreak() b) Với góc nhỏ hơn, tính thời gian tới khung thành và tốc độ lúc qua khung thành.
    #parbreak() c) So sánh thời gian bay tới khung thành của hai góc sút. Nêu một lợi thế của quỹ đạo thấp trong mô hình này.],
  type: "essay", lines: 14,
  sol: [a) Đặt $u = tan alpha$. Tại khung thành, $2 = 28 u - "9,604" (1 + u^2)$, hay $"9,604" u^2 - 28 u + "11,604" = 0$.
    Hai nghiệm cho $alpha_1 approx "26,57751" degree$, $alpha_2 approx "67,50811" degree$.
    #parbreak() b) $t_1 = frac(28, 20 cos alpha_1) approx "1,56542" thin "s"$. Tốc độ tại độ cao 2 m: $v = sqrt(20^2 - 2 times "9,8" times 2) approx "18,99474" thin "m/s"$.
    #parbreak() c) $t_2 approx "3,65963" thin "s"$. Quỹ đạo thấp tới khung thành sớm hơn, để lại ít thời gian phản ứng hơn cho thủ môn; không bảo đảm chắc chắn ghi bàn.
    #align(center, bai-07-hinh("hai-goc"))
  ],
)

// ESSAY-03
#vp-question(
  [Từ vị trí trên bờ cao $10 thin "m"$ so với mặt nước, đội cứu hộ ném phao với tốc độ $20 thin "m/s"$. Người cần nhận phao ban đầu cách bờ $24 thin "m"$ theo phương ngang vuông góc bờ. Trong mô hình lí tưởng, phao là chất điểm, không chịu lực cản hoặc lực căng dây; lấy $g = 10 thin "m/s"^2$.
    Chọn O tại điểm ném: $O x$ ngang ra sông, $O y$ hướng lên, $O z$ xuôi dòng. Góc $alpha$ đo từ phương ngang, dương khi ném lên, âm khi ném xuống; $phi$ là góc xoay trong mặt phẳng ngang từ $+O x$ về $+O z$.
    #align(center, bai-07-hinh("cuu-ho"))
    a) Nếu người đứng yên so với bờ, tìm các góc $alpha$ để phao tới vị trí người.
    #parbreak() b) Nếu người trôi đều xuôi dòng với tốc độ $"1,5" thin "m/s"$, lập hệ phương trình và tìm các bộ $(t, alpha, phi)$ để phao tới người. Chỉ ra nghiệm có thời gian bay ngắn hơn.],
  type: "essay", lines: 16,
  sol: [a) Điểm đến có $(x, y, z) = (24, -10, 0)$ m. Với $u = tan alpha$, $-10 = 24 u - "7,2" (1 + u^2)$, tức $"7,2" u^2 - 24 u - "2,8" = 0$.
    Hai góc: $alpha approx -"6,43838" degree$ và $"73,81852" degree$, có thời gian bay lần lượt $"1,20762" thin "s"$, $"4,30600" thin "s"$.
    #parbreak() b) Điều kiện gặp nhau:
    $ 20 cos alpha cos phi t = 24, quad 20 cos alpha sin phi t = "1,5" t, $
    $ 20 sin alpha t - 5 t^2 = -10. $
    Do đó $v_(0 x) = 24/t$, $v_(0 z) = "1,5"$, $v_(0 y) = 5 t - 10/t$ (m/s khi t tính bằng s). Bình phương rồi cộng:
    $ (24/t)^2 + "1,5"^2 + (5 t - 10/t)^2 = 400. $
    Đặt $q = t^2$, thu được $25 q^2 - "497,75" q + 676 = 0$.
    #parbreak() Nghiệm nhanh: $t approx "1,21081" thin "s"$, $alpha approx -"6,32934" degree$, $phi approx "4,32765" degree$.
    #parbreak() Nghiệm cao: $t approx "4,29464" thin "s"$, $alpha approx "73,18343" degree$, $phi approx "15,02490" degree$.
    Với mỗi nghiệm, xác định các góc bằng
    $ phi = arctan(frac("1,5" t, 24)), quad alpha = arcsin(frac(5 t - 10/t, 20)). $
    Không được bỏ thời gian trong tỉ số xác định góc xoay.],
)

// ESSAY-04
#vp-question(
  [Một bi ném ngang từ độ cao $h = ("1,250" plus.minus "0,005") thin "m"$. Chọn gốc tọa độ tại điểm ném, $x$ ngang theo chiều ném, $y$ hướng xuống. Tại $t = 0$, $x_0 = y_0 = 0$. Máy quay ghi số liệu mỗi $Delta t = "0,050" thin "s"$:
    #align(center, table(columns: (auto, 1fr, 1fr, 1fr), inset: (x: 7pt, y: 6pt), stroke: 0.5pt + luma(65%),
      table.header([*$i$*], [*$t_i$ (s)*], [*$x_i$ (m)*], [*$y_i$ (m)*]),
      [1], [0,050], [0,162], [0,012], [2], [0,100], [0,325], [0,049],
      [3], [0,150], [0,487], [0,110], [4], [0,200], [0,650], [0,196],
      [5], [0,250], [0,812], [0,306],
    ))
    a) Lập bảng $v_(x i) = frac(x_i - x_(i - 1), Delta t)$ và các giá trị ước lượng $g_i = 2 y_i/t_i^2$.
    #parbreak() b) Tính trung bình số học $overline(v)_0$ của năm giá trị $v_(x i)$ và $overline(g)$ của năm giá trị $g_i$.
    #parbreak() c) Trong bài này chỉ xét độ phân tán của các $v_(x i)$, bỏ qua sai số thiết bị đo tọa độ và thời gian. Lấy $Delta v_0$ bằng độ lệch tuyệt đối trung bình. Viết $v_0 = overline(v)_0 plus.minus Delta v_0$, làm tròn sai số đến một chữ số có nghĩa.],
  type: "essay", lines: 14,
  sol: [a) Bảng tính:
    #align(center, table(columns: (auto, 1fr, 1fr), inset: 6pt, stroke: 0.5pt + luma(65%),
      table.header([*$i$*], [*$v_(x i)$ (m/s)*], [*$g_i$ (m/s²)*]),
      [1], [3,24], [9,60000], [2], [3,26], [9,80000], [3], [3,24], [9,77778],
      [4], [3,26], [9,80000], [5], [3,24], [9,79200],
    ))
    b) $overline(v)_0 = "3,248" thin "m/s"$; $overline(g) approx "9,75396" thin "m/s"^2$.
    #parbreak() c) Các độ lệch tuyệt đối là $"0,008"$; $"0,012"$; $"0,008"$; $"0,012"$; $"0,008" thin "m/s"$, trung bình bằng $"0,0096" thin "m/s"$.
    Theo quy ước đề bài, $v_0 = ("3,25" plus.minus "0,01") thin "m/s"$. Đây chỉ là ước lượng từ độ phân tán, không phải tổng sai số đo. Sai số của h không đi vào công thức vận tốc từ tọa độ ngang và thời gian.],
)

// ESSAY-05
#vp-question(
  [Một vật được ném từ O ở chân mặt dốc đi lên, nghiêng góc $beta = 15 degree$ so với phương ngang. Tốc độ ban đầu $v_0 = 40 thin "m/s"$, góc ném $beta < alpha < 90 degree$. Mặt dốc đủ dài.
    #align(center, bai-07-hinh("doc-len"))
    a) Thiết lập công thức tầm xa $R(alpha)$ đo dọc mặt dốc.
    #parbreak() b) Chứng minh tầm xa lớn nhất khi $alpha = (90 degree + beta)/2$.
    #parbreak() c) Tính góc ném tối ưu và tầm xa lớn nhất.],
  type: "essay", lines: 8,
  sol: [a) Với $y$ hướng lên, dốc có $y = x tan beta$; quỹ đạo có $y = x tan alpha - frac(g x^2, 2 v_0^2 cos^2 alpha)$. Giao điểm khác O cho
    $ R = frac(x, cos beta) = frac(2 v_0^2 cos alpha sin(alpha - beta), g cos^2 beta). $
    b) Dùng $2 cos alpha sin(alpha - beta) = sin(2 alpha - beta) - sin beta$:
    $ R = frac(v_0^2 (sin(2 alpha - beta) - sin beta), g cos^2 beta). $
    Cực đại khi $2 alpha - beta = 90 degree$, tức $alpha_("opt") = (90 degree + beta)/2$.
    #parbreak() c) $alpha_("opt") = "52,5" degree$,
    $ R_(max) = frac(v_0^2, g (1 + sin beta)) = frac(1600, "9,8" (1 + sin 15 degree)) approx "129,70" thin "m". $
  ],
)

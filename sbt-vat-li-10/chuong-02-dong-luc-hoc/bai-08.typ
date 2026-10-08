#import "../cau-hinh.typ": *
#import "images/bai-08-hinh.typ": bai-08-hinh

// Nguồn: nguon/bai-08-goc.txt; hiệu đính: nguon/bai-08-ghi-chu.md.
// Mỗi câu độc lập; đáp án và lời giải ẩn trên bản học sinh.
#sbt-bai(num: "8", title: "Tổng hợp, Phân tích lực và Thực hành tổng hợp lực", label: <bai-08>)

= Phần I. Trắc nghiệm khách quan
#sbt-instructions(reset: true)[Chọn một phương án đúng trong mỗi câu. Dây và thanh được coi là nhẹ nếu không nêu khác; các hình là sơ đồ mô hình.]

// MCQ-01
#vp-question(
  [Hai lực đồng quy có độ lớn $F_1 = 30 thin "N"$, $F_2 = 40 thin "N"$. Góc giữa chúng có thể thay đổi từ $0 degree$ đến $180 degree$. Giá trị nào không thể là độ lớn hợp lực?],
  type: "mcq", options: ([$10 thin "N"$.], [$50 thin "N"$.], [$70 thin "N"$.], [$80 thin "N"$.]),
  ans: "D", sol: [$abs(F_1 - F_2) <= F <= F_1 + F_2$, tức $10 thin "N" <= F <= 70 thin "N"$.],
)

// MCQ-02
#vp-question(
  [Một ô tô đỗ trên đường dốc nghiêng góc $alpha$ so với phương ngang. Trọng lực $bold(P)$ được phân tích thành $bold(P)_x$ song song mặt dốc, hướng xuống dốc và $bold(P)_y$ vuông góc mặt dốc, hướng vào mặt đường. Độ lớn hai thành phần là gì?
    #align(center, bai-08-hinh("mat-doc"))
  ], type: "mcq", options: ([$P_x = P cos alpha$; $P_y = P sin alpha$.],
    [$P_x = P sin alpha$; $P_y = P cos alpha$.], [$P_x = P tan alpha$; $P_y = P cos alpha$.],
    [$P_x = P sin alpha$; $P_y = P tan alpha$.]),
  ans: "B", sol: [Góc giữa $bold(P)$ và phương pháp tuyến hướng vào mặt dốc bằng $alpha$, nên $P_y = P cos alpha$, $P_x = P sin alpha$.],
)

// MCQ-03
#vp-question(
  [Trong một mô hình nâng dầm, dầm khối lượng $100 thin "tấn"$ được giữ cân bằng bằng hai dây đối xứng. Mỗi dây hợp với phương thẳng đứng góc $theta = 60 degree$. Lấy $g = "9,8" thin "m/s"^2$. Lực căng mỗi dây bằng bao nhiêu?
    #align(center, bai-08-hinh("hai-day"))
  ], type: "mcq", options: ([$490 thin "kN"$.], [$980 thin "kN"$.], [$"565,8" thin "kN"$.], [$1960 thin "kN"$.]),
  ans: "B", sol: [Các thành phần ngang triệt tiêu. $2 T cos theta = m g$, do đó $T = frac(100000 times "9,8", 2 cos 60 degree) = 980 thin "kN"$.],
)

// MCQ-04
#vp-question(
  [Đèn khối lượng $"3,0" thin "kg"$ treo tại trung điểm O của dây AOB. Hai đầu A, B cùng độ cao, cách nhau $"6,0" thin "m"$; O thấp hơn AB một đoạn $"0,8" thin "m"$. Lấy $g = 10 thin "m/s"^2$. Lực căng mỗi nhánh dây gần nhất với giá trị nào?
    #align(center, bai-08-hinh("den-vong"))
  ], type: "mcq", options: ([$"58,2" thin "N"$.], [$"28,9" thin "N"$.], [$"15,0" thin "N"$.], [$"30,0" thin "N"$.]),
  ans: "A", sol: [Gọi $theta$ là góc dây với phương ngang. $sin theta = frac("0,8", sqrt(3^2 + "0,8"^2))$. Từ $2 T sin theta = 30 thin "N"$, suy ra $T approx "58,2" thin "N"$.],
)

// MCQ-05
#vp-question(
  [Trong thí nghiệm tổng hợp lực, $F_1 = "3,0" thin "N"$, $F_2 = "4,0" thin "N"$ và góc đọc trên đĩa chia độ là $90 degree$. Giá trị hợp lực đo được là $"5,4" thin "N"$, khác giá trị lí thuyết $"5,0" thin "N"$. Yếu tố nào sau đây không phải nguyên nhân gây ra sự chênh lệch?],
  type: "mcq", options: ([Lực kế chưa được chỉnh về số 0.], [Dây kéo lệch khỏi mặt phẳng đĩa chia độ.],
    [Vòng nối còn tì vào chốt, chịu thêm lực tiếp xúc.], [Phép cộng vectơ khác phép cộng đại số các độ lớn.]),
  ans: "D", sol: [Quy tắc vectơ đã được dùng để tính $F = sqrt(3^2 + 4^2) = 5 thin "N"$. Sự khác nhau giữa cộng vectơ và cộng độ lớn không phải sai số đo.],
)

// MCQ-06
#vp-question(
  [Một vật chịu ba lực đồng phẳng: $F_1 = 10 thin "N"$ hướng Đông, $F_2 = 10 thin "N"$ hướng Bắc, $F_3 = 10 sqrt(2) thin "N"$ hướng Tây Nam, tạo góc $45 degree$ với hướng Tây và hướng Nam. Hợp lực có độ lớn bao nhiêu?
    #align(center, bai-08-hinh("ba-luc"))
  ], type: "mcq", options: ([$0 thin "N"$.], [$10 thin "N"$.], [$20 thin "N"$.], [$10 sqrt(2) thin "N"$.]),
  ans: "A", sol: [Hợp lực của hai lực đầu có độ lớn $10 sqrt(2) thin "N"$, hướng Đông Bắc, trực đối với lực thứ ba. Tổng ba vectơ lực bằng không.],
)

// MCQ-07
#vp-question(
  [Một vật có trọng lượng khác không treo giữa dây mềm AB. Khi cân bằng, mỗi nhánh dây hợp với phương ngang góc $theta$. Có thể dùng lực kéo hữu hạn để dây hoàn toàn thẳng ngang ($theta = 0 degree$) không?
    #align(center, bai-08-hinh("day-goc"))
  ], type: "mcq", options: ([Có, chỉ cần lực kéo đủ lớn.],
    [Không, vì $T = frac(m g, 2 sin theta)$ tăng không giới hạn khi $theta$ tiến tới $0 degree$.],
    [Có, vì ma sát ở hai đầu dây triệt tiêu trọng lực.], [Có, nếu thay dây thép bằng dây cao su.]),
  ans: "B", sol: [Cân bằng phương đứng đòi hỏi $2 T sin theta = m g$. Với dây nằm ngang và $T$ hữu hạn, thành phần lực đứng bằng không nên không thể đỡ vật.],
)

// MCQ-08
#vp-question(
  [Hai lực đồng quy có độ lớn không đổi $F_1 = 12 thin "N"$, $F_2 = 5 thin "N"$. Khi góc $alpha$ giữa chúng tăng từ $0 degree$ đến $180 degree$, độ lớn hợp lực thay đổi thế nào?],
  type: "mcq", options: ([Tăng liên tục từ $7 thin "N"$ lên $17 thin "N"$.],
    [Tăng đến cực đại ở $90 degree$ rồi giảm.], [Giảm liên tục từ $17 thin "N"$ xuống $7 thin "N"$.], [Không đổi.]),
  ans: "C", sol: [$F = sqrt(169 + 120 cos alpha)$. Khi $alpha$ tăng trong khoảng đã cho, $cos alpha$ giảm từ 1 xuống $-1$ nên $F$ giảm từ 17 N xuống 7 N.
    #align(center, bai-08-hinh("do-thi-hop-luc"))
  ],
)

// MCQ-09
#vp-question(
  [Phát biểu nào mô tả đúng hai lực cân bằng tác dụng lên một vật?],
  type: "mcq", options: ([Hai lực cùng giá, cùng độ lớn, ngược chiều và tác dụng lên cùng một vật.],
    [Hai lực cùng độ lớn, tác dụng lên hai vật khác nhau trong một cặp lực tương tác.],
    [Hai lực khác không, vuông góc nhau và có hợp lực bằng không.], [Hai lực làm vật chuyển động nhanh dần đều.]),
  ans: "A", sol: [Hai lực cân bằng phải cùng giá, ngược chiều, cùng độ lớn và cùng tác dụng lên một vật. Hai lực trong cặp tương tác tác dụng lên hai vật khác nhau.],
)

// MCQ-10
#vp-question(
  [Trong mô hình cabin chuyển động trên tuyến cáp thẳng nghiêng $30 degree$, khối lượng cabin và tải là $2000 thin "kg"$. Cabin đi lên thẳng đều; lực cản dọc tuyến, ngược chiều chuyển động có độ lớn $1000 thin "N"$. Hệ cáp còn đỡ cabin theo phương vuông góc tuyến. Với $g = "9,8" thin "m/s"^2$, lực kéo dọc tuyến có độ lớn bao nhiêu?
    #align(center, bai-08-hinh("cabin-doc"))
  ], type: "mcq", options: ([$9800 thin "N"$.], [$10800 thin "N"$.], [$17978 thin "N"$.], [$18978 thin "N"$.]),
  ans: "B", sol: [Chiếu lên chiều đi lên: $F_k - M g sin 30 degree - F_c = 0$. Suy ra $F_k = 9800 + 1000 = 10800 thin "N"$. Đây là thành phần kéo dọc tuyến, không phải độ lớn tổng lực của cả hệ cáp.],
)

// MCQ-11
#vp-question(
  [Hai lực song song cùng chiều, vuông góc với thanh AB, đặt tại A và B; $A B = 60 thin "cm"$, $F_1 = 20 thin "N"$, $F_2 = 40 thin "N"$. Giá của hợp lực cắt AB tại O. Khoảng cách AO bằng bao nhiêu?
    #align(center, bai-08-hinh("song-song-cung"))
  ], type: "mcq", options: ([$40 thin "cm"$.], [$20 thin "cm"$.], [$30 thin "cm"$.], [$15 thin "cm"$.]),
  ans: "A", sol: [$F = F_1 + F_2 = 60 thin "N"$. Lấy mômen đối với A: $F times A O = F_2 times A B$, nên $A O = 40 thin "cm"$.],
)

// MCQ-12
#vp-question(
  [Hai tàu kéo một xà lan đi thẳng đều. Hai lực kéo có cùng độ lớn $F_0$, đối xứng qua hướng chuyển động và hợp với nhau góc $60 degree$. Lực cản nước là $1732 thin "N"$. Mỗi lực kéo có độ lớn gần bằng bao nhiêu?
    #align(center, bai-08-hinh("xa-lan"))
  ], type: "mcq", options: ([$1000 thin "N"$.], [$866 thin "N"$.], [$1732 thin "N"$.], [$2000 thin "N"$.]),
  ans: "A", sol: [$2 F_0 cos 30 degree = F_c$, suy ra $F_0 = frac(1732, 2 cos 30 degree) approx 1000 thin "N"$. Cần điều kiện thẳng đều để cân bằng lực kéo với lực cản.],
)

// MCQ-13
#vp-question(
  [Phân tích lực $F = ("10,0" plus.minus "0,1") thin "N"$ theo hai phương vuông góc. Góc giữa $bold(F)$ và chiều dương Ox là $alpha = (30 plus.minus 1) degree$. Dùng $Delta F_x approx abs(cos alpha) Delta F + abs(F sin alpha) Delta alpha$ với $Delta alpha$ tính bằng radian. Nếu làm tròn sai số đến một chữ số có nghĩa, kết quả $F_x$ là gì?
    #align(center, bai-08-hinh("phan-tich"))
  ], type: "mcq", options: ([$("8,66" plus.minus "0,24") thin "N"$.],
    [$("8,7" plus.minus "0,2") thin "N"$.], [$("5,0" plus.minus "0,1") thin "N"$.], [$("8,660" plus.minus "0,100") thin "N"$.]),
  ans: "B", sol: [$F_x = 10 cos 30 degree approx "8,6603" thin "N"$. $Delta F_x approx "0,1" cos 30 degree + 10 sin 30 degree times pi/180 approx "0,1739" thin "N"$. Làm tròn theo yêu cầu được $("8,7" plus.minus "0,2") thin "N"$.],
)

// MCQ-14
#vp-question(
  [Biển báo khối lượng $10 thin "kg"$ treo tại B của thanh nhẹ AB nằm ngang, dài $"1,2" thin "m"$, khớp với tường tại A. Dây BC nối B với C phía trên A, hợp với AB góc $30 degree$. Lấy $g = 10 thin "m/s"^2$. Lực nén dọc thanh $N$ và lực căng dây $T$ lần lượt bằng bao nhiêu?
    #align(center, bai-08-hinh("gia-30"))
  ], type: "mcq", options: ([$N = "173,2" thin "N"$; $T = 200 thin "N"$.],
    [$N = 200 thin "N"$; $T = "173,2" thin "N"$.], [$N = 100 thin "N"$; $T = 100 sqrt(3) thin "N"$.],
    [$N = 50 thin "N"$; $T = 100 thin "N"$.]),
  ans: "A", sol: [Thanh nhẹ khớp ở hai đầu chỉ truyền lực dọc thanh. Tại B: $T sin 30 degree = m g$, $N = T cos 30 degree$. Suy ra $T = 200 thin "N"$, $N approx "173,2" thin "N"$.],
)

// MCQ-15
#vp-question(
  [Hai lực đồng quy có cùng độ lớn $F > 0$. Góc giữa chúng bằng bao nhiêu để hợp lực cũng có độ lớn $F$?],
  type: "mcq", options: ([$0 degree$.], [$60 degree$.], [$90 degree$.], [$120 degree$.]),
  ans: "D", sol: [$F = 2 F cos(alpha/2)$ nên $cos(alpha/2) = 1/2$, suy ra $alpha = 120 degree$.],
)

// MCQ-16
#vp-question(
  [Hai lực vuông góc $F_1 = 6 thin "N"$, $F_2 = 8 thin "N"$ lần lượt theo chiều dương Ox, Oy. Góc $phi$ giữa hợp lực và chiều dương Ox thỏa mãn hệ thức nào?
    #align(center, bai-08-hinh("vuong-goc"))
  ], type: "mcq", options: ([$tan phi = "0,75"$, $phi approx "36,87" degree$.],
    [$tan phi = 4/3$, $phi approx "53,13" degree$.], [$cos phi = "0,8"$, $phi approx "36,87" degree$.], [Cả B và C đều đúng.]),
  ans: "B", sol: [$tan phi = F_2/F_1 = 8/6 = 4/3$ nên $phi approx "53,13" degree$. Đồng thời $cos phi = 6/10 = "0,6"$, vì vậy C sai.],
)

// MCQ-17
#vp-question(
  [Thùng hàng khối lượng $50 thin "kg"$ nằm trên sàn ngang đứng yên, có hệ số ma sát nghỉ $mu_n = "0,4"$. Tăng dần lực kéo ngang. Lấy $g = 10 thin "m/s"^2$. Giá trị giới hạn của lực kéo khi thùng sắp trượt là bao nhiêu?],
  type: "mcq", options: ([$200 thin "N"$.], [$500 thin "N"$.], [$125 thin "N"$.], [$20 thin "N"$.]),
  ans: "A", sol: [$F_("giới hạn") = F_("msn,max") = mu_n m g = 200 thin "N"$. Vượt giới hạn này, ma sát nghỉ không còn giữ thùng đứng yên.],
)

// MCQ-18
#vp-question(
  [Hai lực song song ngược chiều, vuông góc với AB, có độ lớn $F_1 = 10 thin "N"$, $F_2 = 30 thin "N"$, đặt lần lượt tại A và B; $A B = 20 thin "cm"$. Giá của hợp lực cắt đường thẳng AB tại đâu?
    #align(center, bai-08-hinh("song-song-nguoc"))
  ], type: "mcq", options: ([Trong AB, cách A $15 thin "cm"$.], [Ngoài AB về phía B, cách B $10 thin "cm"$.],
    [Ngoài AB về phía A, cách A $30 thin "cm"$.], [Ngoài AB về phía B, cách B $30 thin "cm"$.]),
  ans: "B", sol: [Hợp lực $F = 30 - 10 = 20 thin "N"$, cùng chiều $bold(F)_2$. Từ mômen đối với A: $20 times A O = 30 times 20$, được $A O = 30 thin "cm"$, $B O = 10 thin "cm"$.],
)

// MCQ-19
#vp-question(
  [Người và võng có tổng trọng lượng $600 thin "N"$, nằm cân bằng. Hai dây treo đối xứng, mỗi dây hợp với phương ngang góc $20 degree$. Lực căng mỗi dây gần bằng bao nhiêu?
    #align(center, bai-08-hinh("vong"))
  ], type: "mcq", options: ([$300 thin "N"$.], [$"877,1" thin "N"$.], [$"1754,3" thin "N"$.], [$600 thin "N"$.]),
  ans: "B", sol: [$2 T sin 20 degree = 600 thin "N"$ nên $T approx "877,1" thin "N"$.],
)

// MCQ-20
#vp-question(
  [Ba lực đồng quy cân bằng: $bold(F)_1 + bold(F)_2 + bold(F)_3 = bold(0)$. Khẳng định nào luôn đúng?],
  type: "mcq", options: ([$F_1 + F_2 = F_3$.], [$bold(F)_3$ là hợp lực của $bold(F)_1$ và $bold(F)_2$.],
    [$bold(F)_3$ trực đối với $bold(F)_1 + bold(F)_2$.], [Ba lực phải đôi một vuông góc.]),
  ans: "C", sol: [$bold(F)_3 = -(bold(F)_1 + bold(F)_2)$. Cân bằng vectơ không có nghĩa là tổng hai độ lớn luôn bằng độ lớn thứ ba.],
)

= Phần II. Trắc nghiệm Đúng/Sai
#sbt-instructions(reset: true)[Xác định mỗi phát biểu a), b), c), d) là đúng hay sai.]

// TF-01
#vp-question(
  [Ô tô khối lượng $2000 thin "kg"$ đỗ cân bằng trên dốc $15 degree$. Lấy $g = "9,8" thin "m/s"^2$; xe chỉ chịu trọng lực, phản lực pháp tuyến và ma sát nghỉ của mặt đường. Phân tích trọng lực theo phương song song và vuông góc mặt dốc như hình.
    #align(center, bai-08-hinh("mat-doc"))
  ], type: "tf", statements: (
    [$P_y = P cos 15 degree approx 18932 thin "N"$.],
    [Ma sát nghỉ hướng lên dốc, có độ lớn $P_x = P sin 15 degree approx 5073 thin "N"$.],
    [Phản lực pháp tuyến có độ lớn bằng toàn bộ trọng lượng $19600 thin "N"$.],
    [Nếu góc dốc tăng từ $15 degree$ lên $30 degree$, $P_x$ tăng đúng gấp đôi.],
  ), ans-tf: ("Đ", "Đ", "S", "S"),
  sol: [a) $P_y = 19600 cos 15 degree approx 18932 thin "N"$.
    #parbreak() b) Cân bằng dọc dốc cho $F_("msn") = 19600 sin 15 degree approx 5073 thin "N"$, hướng lên dốc.
    #parbreak() c) $N = P_y < P$.
    #parbreak() d) Tỉ số là $frac(sin 30 degree, sin 15 degree) approx "1,93"$, không phải 2.],
)

// TF-02
#vp-question(
  [Thí nghiệm tổng hợp lực dùng ba dây nhẹ nối vào vòng O trên đĩa chia độ thẳng đứng. Hai dây qua các ròng rọc nhẹ, bỏ qua ma sát, nối với lực kế $L_1$, $L_2$; dây thứ ba treo vật $M = "0,5" thin "kg"$. Vòng O cân bằng, không tì vào chốt hay mặt đĩa. Lấy $g = "9,8" thin "m/s"^2$.
    #align(center, bai-08-hinh("thi-nghiem"))
  ], type: "tf", statements: (
    [Hợp lực của $bold(F)_1$, $bold(F)_2$ trực đối với lực căng do dây treo vật tác dụng lên vòng O.],
    [Nếu $bold(F)_1 perp bold(F)_2$ và $F_1 = "2,94" thin "N"$ thì $F_2 = "3,92" thin "N"$.],
    [Nếu dây lệch khỏi mặt phẳng đĩa thì góc đọc có thể sai; chỉ từ thông tin này chưa xác định được dấu của sai lệch hợp lực.],
    [Độ lớn hợp lực luôn bằng $F_1 + F_2$, bất kể góc giữa hai dây.],
  ), ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [a) Vòng cân bằng dưới ba lực căng. Trọng lực của vật tác dụng lên vật, không trực tiếp lên vòng; dây truyền lực có độ lớn $M g = "4,9" thin "N"$ tới vòng.
    #parbreak() b) $F_2 = sqrt("4,9"^2 - "2,94"^2) = "3,92" thin "N"$.
    #parbreak() c) Góc trên đĩa có thể chỉ là góc giữa hình chiếu của các dây. Dấu sai lệch còn phụ thuộc hướng lệch và cách đo, không thể khẳng định luôn lớn hơn hay luôn nhỏ hơn.
    #parbreak() d) $F = sqrt(F_1^2 + F_2^2 + 2 F_1 F_2 cos alpha)$; bằng tổng hai độ lớn chỉ khi cùng chiều.],
)

// TF-03
#vp-question(
  [Hai dây AC, BC kéo một nút C theo hai phía: $T_1 = 400 thin "kN"$, góc với phương ngang $alpha = 30 degree$; dây BC tạo góc $beta = 45 degree$. Chọn $T_2$ để tổng thành phần lực ngang bằng không.
    #align(center, bai-08-hinh("hai-day-lech"))
  ], type: "tf", statements: (
    [Thành phần ngang của $bold(T)_1$ hướng trái, độ lớn khoảng $"346,4" thin "kN"$.],
    [Lực căng dây BC bằng khoảng $"489,9" thin "kN"$.],
    [Tổng thành phần lực nâng thẳng đứng của hai dây bằng khoảng $"546,4" thin "kN"$.],
    [Nếu giảm $beta$ xuống $30 degree$, giữ $T_1$, $alpha$ và điều chỉnh $T_2$ để tiếp tục cân bằng ngang, lực nâng của dây BC tăng.],
  ), ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [a) $T_(1x) = 400 cos 30 degree approx "346,4" thin "kN"$.
    #parbreak() b) $T_2 = frac(400 cos 30 degree, cos 45 degree) approx "489,9" thin "kN"$.
    #parbreak() c) $F_y = 400 sin 30 degree + T_2 sin 45 degree approx "546,4" thin "kN"$.
    #parbreak() d) $T_(2y) = T_1 cos alpha tan beta$ giảm từ $"346,4" thin "kN"$ xuống $200 thin "kN"$.],
)

// TF-04
#vp-question(
  [Khung treo đèn gồm hai thanh nhẹ AB, BC nối bằng khớp. A và C cố định trên tường, C ở trên A; AB nằm ngang, dài $"1,0" thin "m"$; BC hợp với AB góc $45 degree$. Đèn $20 thin "kg"$ treo tại B. Bỏ qua biến dạng của khung, lấy $g = 10 thin "m/s"^2$.
    #align(center, bai-08-hinh("gia-45"))
  ], type: "tf", statements: (
    [Thanh BC chịu nén, thanh AB chịu kéo.],
    [Độ lớn lực dọc thanh BC là $200 sqrt(2) thin "N" approx "282,8" thin "N"$.],
    [Thanh AB chịu lực kéo có độ lớn $200 thin "N"$.],
    [Nếu khối lượng đèn tăng gấp đôi thì góc giữa BC và tường giảm một nửa.],
  ), ans-tf: ("S", "Đ", "S", "S"),
  sol: [a) BC phải kéo B lên về phía C nên chịu kéo; AB đẩy B ra khỏi tường nên chịu nén.
    #parbreak() b) $T_(B C) sin 45 degree = 200 thin "N"$ nên $T_(B C) = 200 sqrt(2) thin "N"$.
    #parbreak() c) Độ lớn $N_(A B) = T_(B C) cos 45 degree = 200 thin "N"$ nhưng là lực nén.
    #parbreak() d) Các điểm nối và chiều dài thanh cố định; khi bỏ qua biến dạng, góc không đổi, các lực tăng gấp đôi.],
)

// TF-05
#vp-question(
  [Xét tính chất vectơ của lực và điều kiện cân bằng.], type: "tf", statements: (
    [Các lực cùng tác dụng lên một chất điểm có thể thay bằng một hợp lực bằng tổng vectơ của chúng.],
    [Nếu không cho trước phương phân tích, một lực có thể được phân tích thành vô số cặp lực thành phần.],
    [Vật chuyển động thẳng đều thì không chịu lực nào.],
    [Hai lực song song ngược chiều, cùng độ lớn khác không, có hai giá khác nhau trên một vật rắn tạo thành ngẫu lực, không thể thay bằng một lực duy nhất.],
  ), ans-tf: ("Đ", "Đ", "S", "Đ"),
  sol: [a) Đúng đối với chất điểm: $bold(F) = sum_i bold(F)_i$.
    #parbreak() b) Có vô số cặp vectơ có cùng tổng nếu chưa ấn định các phương.
    #parbreak() c) Chuyển động thẳng đều cho biết hợp lực bằng không, không buộc từng lực bằng không.
    #parbreak() d) Ngẫu lực có tổng vectơ lực bằng không nhưng mômen khác không; hai giá phải khác nhau.],
)

= Phần III. Trắc nghiệm trả lời ngắn
#sbt-instructions(reset: true)[Tính và ghi kết quả theo đơn vị, cách làm tròn nêu trong mỗi câu.]

// SHORT-01
#vp-question(
  [Hai lực đồng quy vuông góc có độ lớn $60 thin "N"$, $80 thin "N"$. Tính độ lớn hợp lực theo đơn vị N.],
  type: "short", ans: "100", sol: [$F = sqrt(60^2 + 80^2) = 100 thin "N"$.],
)

// SHORT-02
#vp-question(
  [Đèn khối lượng $"4,0" thin "kg"$ treo tại trung điểm của dây. Hai nhánh dây đối xứng, mỗi nhánh tạo góc $15 degree$ với phương ngang. Lấy $g = "9,8" thin "m/s"^2$. Tính lực căng mỗi nhánh theo đơn vị N, làm tròn đến một chữ số thập phân.
    #align(center, bai-08-hinh("day-15"))
  ], type: "short", ans: "75,7", sol: [$T = frac(m g, 2 sin 15 degree) = frac("39,2", 2 sin 15 degree) approx "75,7286" thin "N" approx "75,7" thin "N"$.],
)

// SHORT-03
#vp-question(
  [Hai lực song song cùng chiều $F_1 = 40 thin "N"$, $F_2 = 60 thin "N"$ đặt tại A và B, vuông góc với thanh AB dài $"1,0" thin "m"$. Giá hợp lực cắt AB tại O. Tính AO theo đơn vị m.],
  type: "short", ans: "0,6", sol: [$A O = frac(F_2 times A B, F_1 + F_2) = frac(60 times 1, 100) = "0,6" thin "m"$.],
)

// SHORT-04
#vp-question(
  [Hai lực đồng quy có cùng độ lớn $50 thin "N"$. Tính góc giữa hai lực theo đơn vị độ để hợp lực có độ lớn $50 sqrt(3) thin "N"$.],
  type: "short", ans: "60", sol: [$50 sqrt(3) = 100 cos(alpha/2)$ nên $alpha = 60 degree$.],
)

// SHORT-05
#vp-question(
  [Hệ người và dù khối lượng $80 thin "kg"$ rơi thẳng đều với tốc độ $"5,0" thin "m/s"$. Coi hệ chỉ chịu trọng lực và lực cản không khí. Lấy $g = "9,8" thin "m/s"^2$. Tính tổng lực cản không khí tác dụng lên hệ theo đơn vị N.],
  type: "short", ans: "784", sol: [Hệ rơi thẳng đều nên $F_c = M g = 80 times "9,8" = 784 thin "N"$.],
)

= Phần IV. Tự luận
#sbt-essay-instructions(reset: true)[Trình bày lập luận, công thức, phép tính và kết luận phù hợp với yêu cầu của bài.]

// ESSAY-01
#vp-question(
  [Dầm đồng chất AB, dài $L$, trọng lượng $P = 500 thin "kN"$, cân bằng nằm ngang. Dầm gắn khớp tại A; đầu B được giữ bởi dây BC nối lên điểm C phía trên A. Dây hợp với dầm góc $alpha = 30 degree$.
    #align(center, bai-08-hinh("dam-cau"))
    a) Viết các phương trình cân bằng lực theo phương ngang và phương đứng. Gọi $Q_x$, $Q_y$ là các thành phần phản lực tại A.
    #parbreak() b) Dùng thêm điều kiện cân bằng mômen đối với A để tính lực căng dây và độ lớn thành phần lực nén dọc dầm. Cho biết mômen bằng lực nhân cánh tay đòn và tổng mômen đối với A bằng không khi dầm cân bằng.
    #parbreak() c) Giữ dầm và tải như cũ, thay vị trí neo C để góc dây còn $15 degree$. Các lực trên thay đổi thế nào? Nhận xét khi góc dây rất nhỏ.
  ], type: "essay", lines: 12,
  sol: [a) Chọn chiều dương sang phải và lên trên: $Q_x - T cos alpha = 0$, $Q_y + T sin alpha - P = 0$.
    #parbreak() b) Trọng lực đặt tại trung điểm dầm. Cân bằng mômen: $T sin alpha times L = P times L/2$. Do đó $T = frac(P, 2 sin alpha) = 500 thin "kN"$; lực nén dọc dầm $N = T cos alpha approx "433,0" thin "kN"$. Đồng thời $Q_y = P/2 = 250 thin "kN"$.
    #parbreak() c) $T' = frac(250, sin 15 degree) approx "965,9" thin "kN"$; $N' = frac(250, tan 15 degree) approx "933,0" thin "kN"$. Cả hai tăng; trong mô hình lí tưởng, chúng tăng không giới hạn khi $alpha$ tiến tới 0. Không suy ra một góc thiết kế tối thiểu chung chỉ từ mô hình này.],
)

// ESSAY-02
#vp-question(
  [Biển quảng cáo $m = 15 thin "kg"$ treo tại B. Thanh nhẹ AB nằm ngang, dài $"1,5" thin "m"$, nối bằng khớp với tường tại A; dây BC nối B với C trên tường, $A C = "2,0" thin "m"$. Lấy $g = "9,8" thin "m/s"^2$.
    #align(center, bai-08-hinh("gia-kich-thuoc"))
    a) Vẽ các lực tác dụng lên nút B do thanh, dây và biển báo.
    #parbreak() b) Tính lực căng dây và lực nén dọc thanh.
    #parbreak() c) Dây chịu được lực căng tối đa $500 thin "N"$. Nếu treo thêm đèn $20 thin "kg"$ vào B thì riêng điều kiện giới hạn lực căng dây có được đáp ứng không? Bỏ qua tải động.
  ], type: "essay", lines: 12,
  sol: [a) Tại nút B: dây kéo lên về phía C; thanh đẩy sang phải; biển báo kéo xuống với lực có độ lớn $P = m g$.
    #align(center, bai-08-hinh("luc-tai-b"))
    b) $B C = "2,5" thin "m"$, $sin theta = "0,8"$, $cos theta = "0,6"$. Từ $T sin theta = 147 thin "N"$, $N = T cos theta$, suy ra $T = "183,75" thin "N"$, $N = "110,25" thin "N"$.
    #parbreak() c) $T' = frac((15 + 20) times "9,8", "0,8") = "428,75" thin "N" < 500 thin "N"$. Đáp ứng riêng giới hạn lực căng đã cho. Kết quả không đánh giá độ bền thanh, khớp, neo tường hay tải động.],
)

// ESSAY-03
#vp-question(
  [Hai tàu kéo một xà lan đi thẳng đều, lực cản nước không đổi $F_c = 4000 thin "N"$. Hai dây nằm về hai phía của hướng chuyển động, tạo các góc $alpha_1 = 30 degree$ và $0 degree <= alpha_2 < 90 degree$. Các lực kéo $F_1$, $F_2$ không âm; cho phép xét trạng thái giới hạn một dây không còn chịu lực.
    #align(center, bai-08-hinh("keo-toi-uu"))
    a) Lập các phương trình cân bằng lực dọc và ngang hướng chuyển động. Tìm $alpha_2$ để tổng độ lớn $F_1 + F_2$ nhỏ nhất trong miền đã cho.
    #parbreak() b) Tính $F_1$, $F_2$ ở trạng thái đó. Nếu yêu cầu cả hai dây luôn căng và cùng kéo, giá trị nhỏ nhất có đạt được không? So sánh với trường hợp đối xứng $alpha_2 = 30 degree$.
    #parbreak() c) Nhận xét về ảnh hưởng của góc kéo đến tổng độ lớn lực kéo. Chỉ từ kết quả này có thể tính phần trăm tiết kiệm nhiên liệu không?
  ], type: "essay", lines: 13,
  sol: [a) $F_1 sin 30 degree = F_2 sin alpha_2$ và $F_1 cos 30 degree + F_2 cos alpha_2 = F_c$.
    #parbreak() Suy ra $F_1 = frac(F_c sin alpha_2, sin(30 degree + alpha_2))$, $F_2 = frac(F_c sin 30 degree, sin(30 degree + alpha_2))$. Tổng độ lớn luôn lớn hơn hoặc bằng độ lớn hợp lực $F_c$. Dấu bằng đạt được tại $alpha_2 = 0 degree$, khi $F_1 = 0$, $F_2 = F_c$.
    #parbreak() b) Ở biên: $F_1 = 0$, $F_2 = 4000 thin "N"$, tổng nhỏ nhất $4000 thin "N"$. Nếu cả hai lực phải dương, tổng luôn lớn hơn $4000 thin "N"$ nhưng tiến sát giá trị này khi $alpha_2$ tiến tới 0; không có giá trị nhỏ nhất đạt được trong miền mở đó. Với hai dây đối xứng: $F_1 = F_2 = frac(4000, 2 cos 30 degree) approx "2309,4" thin "N"$, tổng $"4618,8" thin "N"$.
    #parbreak() c) Góc kéo làm tăng tổng độ lớn lực cần để tạo cùng hợp lực dọc. Tuy nhiên, công suất cơ học truyền cho xà lan vẫn bằng $F_c v$ khi tốc độ $v$ không đổi; mức tiêu thụ nhiên liệu còn phụ thuộc lực cản của tàu kéo và hiệu suất động cơ. Không đủ dữ kiện để tính phần trăm tiết kiệm.],
)

// ESSAY-04
#vp-question(
  [Thực hành tổng hợp hai lực đồng quy: giữ $F_1 = "3,0" thin "N"$, $F_2 = "4,0" thin "N"$, góc giữa chúng $60 degree$. Dùng lực kế thứ ba tạo lực cân bằng với hợp lực; số chỉ lực kế là $F_("đo")$. Năm lần đo thu được:
    #align(center, table(columns: (auto, 1fr, 1fr, 1fr, 1fr, 1fr), inset: (x: 7pt, y: 6pt), stroke: 0.5pt + luma(65%),
      table.header([*Lần đo*], [*1*], [*2*], [*3*], [*4*], [*5*]),
      [$F_("đo")$ (N)], [6,0], [6,2], [6,1], [5,9], [6,1],
    ))
    a) Tính hợp lực lí thuyết. Trong phép so sánh này, bỏ qua sai số của $F_1$, $F_2$ và góc.
    #parbreak() b) Tính giá trị trung bình và độ lệch tuyệt đối trung bình của các lần đo. Sai số dụng cụ là $"0,05" thin "N"$; quy ước sai số tuyệt đối bằng tổng độ lệch tuyệt đối trung bình và sai số dụng cụ.
    #parbreak() c) Ghi kết quả đo, làm tròn sai số đến hai chữ số có nghĩa và giá trị trung bình đến cùng hàng thập phân. So sánh với lí thuyết, nêu hai nguồn sai số có thể gặp.
  ], type: "essay", lines: 12,
  sol: [a) $F_("lt") = sqrt(3^2 + 4^2 + 2 times 3 times 4 cos 60 degree) = sqrt(37) approx "6,0828" thin "N"$.
    #parbreak() b) $overline(F) = "6,06" thin "N"$. Các độ lệch tuyệt đối: $"0,06"$; $"0,14"$; $"0,04"$; $"0,16"$; $"0,04"$ N. Trung bình $overline(Delta F) = "0,088" thin "N"$; $Delta F = "0,088" + "0,05" = "0,138" thin "N"$.
    #parbreak() c) $F_("đo") = ("6,06" plus.minus "0,14") thin "N"$. Giá trị lí thuyết nằm trong khoảng $["5,92"; "6,20"] thin "N"$, nên phù hợp với phép đo theo quy ước sai số đã cho. Hai nguồn sai số: lực kế lệch mốc 0; đọc vạch khi mắt nhìn xiên. Khoảng sai số này không phải khoảng tin cậy thống kê được xác định từ một mức xác suất.],
)

// ESSAY-05
#vp-question(
  [Mô hình cabin khối lượng $M = 1500 thin "kg"$ treo bằng dây nhẹ từ cụm treo cố định trên tuyến cáp. Dây xoay tự do, cabin đứng cân bằng. Tuyến cáp nằm trong mặt phẳng đứng Oyz, nghiêng $theta = 30 degree$ so với phương ngang; trục Ox nằm ngang, vuông góc với mặt phẳng này. Gió tạo lực ngang $F_g = 3000 thin "N"$ theo chiều dương Ox. Cabin chỉ chịu trọng lực, lực gió và lực căng dây. Lấy $g = "9,8" thin "m/s"^2$.
    #align(center, bai-08-hinh("cabin-gio"))
    a) Tính góc lệch $phi$ của dây so với mặt phẳng Oyz.
    #parbreak() b) Tính lực căng dây. Góc nghiêng tuyến cáp có làm phát sinh thêm một lực độc lập tác dụng lên cabin trong mô hình này không?
    #parbreak() c) Đề xuất đại lượng cần theo dõi và nguyên tắc cảnh báo cho một mô hình giám sát khi gió tăng. Không cần nêu ngưỡng vận hành cụ thể.
  ], type: "essay", lines: 10,
  sol: [a) Dây lệch trong mặt phẳng Oxz. Tại cabin: $T sin phi = F_g$, $T cos phi = M g$. Góc của dây với hình chiếu thẳng đứng trong Oyz cũng là góc với mặt phẳng ấy. $tan phi = frac(3000, 14700)$ nên $phi approx "11,53" degree$.
    #parbreak() b) $T = sqrt((M g)^2 + F_g^2) = sqrt(14700^2 + 3000^2) approx 15003 thin "N" = "15,00" thin "kN"$. $M g sin theta$ chỉ là một thành phần của trọng lực khi đổi hệ trục, không phải lực mới để cộng thêm vào tổng. Phân tích lực tại cụm bánh xe là bài toán khác.
    #parbreak() c) Có thể theo dõi tốc độ gió và góc lệch bằng cảm biến; phát cảnh báo khi đại lượng đo vượt giới hạn do thiết kế mô hình quy định. Bài toán tĩnh này không đủ để xác định ngưỡng hay quy trình vận hành của một hệ cáp thực tế.],
)

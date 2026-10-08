# Vietphys: mã nguồn tham chiếu Bài 8–9, ngày 2026-10-06

Đọc cùng KIEN-THUC-VIETPHYS.md và PROMPT-GEM.md. Dưới đây là nguyên mã Bài 8, Bài 9 và các module hình. Học API và phong cách trình bày; không chép nội dung câu hỏi sang bài mới. Các bài đã được biên dịch trong dự án cục bộ bằng Typst 0.15.1 và CeTZ 0.3.3. Đây là snapshot tham chiếu, không phải quyền truy cập trực tiếp vào hệ thống tệp hiện tại của người dùng.


### `sbt-vat-li-10/chuong-02-dong-luc-hoc/bai-08.typ`

SHA-256: `a0ce5baf15ca3cf152b5b409da0d44fecff3631834d43fccd9df7d568952443d`

```typst
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
```


### `sbt-vat-li-10/chuong-02-dong-luc-hoc/images/bai-08-hinh.typ`

SHA-256: `166eca86e5ee538b3c9672b83406ef518c3538d3c56b12f00bd85ba547e02cb4`

```typst
// Hình CeTZ Bài 8. Chỉ các hình được gọi trong sol mới hiện ở bản lời giải.
#import "@preview/cetz:0.3.3": canvas, draw
#let blue = rgb("1976d2")
#let orange = rgb("b45309")
#let dash = (paint: luma(55%), thickness: 0.6pt, dash: "dashed")
#let arrow(a, b, label: none, at: none, anchor: "south", color: blue) = {
  draw.line(a, b, stroke: 1.1pt + color, mark: (end: ">"))
  if label != none { draw.content(if at == none { b } else { at }, label, anchor: anchor) }
}
#let arc-at(o, r, a, b, label: none, at: none) = {
  draw.line(..range(31).map(i => {
    let angle = a + (b - a)*i/30
    (o.at(0) + r*calc.cos(angle), o.at(1) + r*calc.sin(angle))
  }), stroke: 0.6pt)
  if label != none { draw.content(at, label) }
}
#let pin(p, name, offset: (0, -0.22)) = {
  draw.circle(p, radius: 0.045, fill: black, stroke: none)
  draw.content((p.at(0) + offset.at(0), p.at(1) + offset.at(1)), name)
}
#let hanging(angle: 20deg, angle-label: [$theta$], dimensions: false, vertical-angle: false) = {
  let h = 2.5*calc.tan(angle)
  draw.line((-2.7, h), (2.7, h), stroke: dash)
  draw.line((-2.5, h), (0, 0), (2.5, h), stroke: 1.1pt + blue)
  pin((-2.5,h), [A], offset: (-0.2,0.12))
  pin((2.5,h), [B], offset: (0.2,0.12))
  pin((0,0), [O], offset: (-0.18,-0.12))
  draw.line((0,0), (0,-0.32))
  draw.rect((-0.38,-0.32), (0.38,-0.86), fill: luma(94%), stroke: 0.7pt)
  draw.content((0,-0.59), [$m$])
  if dimensions {
    draw.line((-2.5,h+0.38),(2.5,h+0.38), mark: (start: "<", end: ">"), stroke: 0.5pt)
    draw.content((0,h+0.56), [6,0 m], anchor: "south")
    draw.line((0,0.08),(0,h), stroke: dash)
    draw.content((0.12,h/2), [0,8 m], anchor: "west")
  } else if vertical-angle {
    draw.line((0,0),(0,h+0.3), stroke: dash)
    arc-at((0,0),0.7,angle,90deg,label: angle-label,at: (0.72,0.79))
    arc-at((0,0),0.7,90deg,180deg - angle,label: angle-label,at: (-0.72,0.79))
  } else {
    draw.line((-1.7,0),(1.7,0),stroke: dash)
    arc-at((0,0),1.2,0deg,angle,label: angle-label,at: (1.58,0.22))
  }
}
#let bracket(angle: 30deg, label: [$30 degree$], dimensions: false, beam: false) = {
  let w = if dimensions { 2.1 } else { 3.6 }
  let h = w*calc.tan(angle)
  draw.line((0,-0.65),(0,h+0.3),stroke: 2pt + luma(55%))
  draw.line((0,0),(w,0),stroke: 2pt + blue)
  draw.line((0,h),(w,0),stroke: 0.9pt + orange)
  pin((0,0),[A],offset: (-0.2,-0.2))
  pin((0,h),[C],offset: (-0.22,0.12))
  pin((w,0),[B],offset: (0.18,0.08))
  if not beam {
    draw.line((w,0),(w,-0.35))
    draw.rect((w - 0.4,-0.35),(w+0.4,-0.85),fill:luma(94%),stroke:0.7pt)
    draw.content((w,-0.6),[$m$])
  } else {
    arrow((w/2,0),(w/2,-1.1),label:[$bold(P)$],at:(w/2+0.18,-0.8),anchor:"west",color:orange)
    draw.line((0,-1.35),(w,-1.35),mark:(start:"<",end:">"),stroke:0.5pt)
    draw.content((w/2,-1.58),[$L$])
  }
  if dimensions {
    draw.content((w/2,-0.25),[1,5 m])
    draw.content((-0.3,h/2),[2,0 m],anchor:"east")
  } else {
    arc-at((w,0),0.85,180deg - angle,180deg,label:label,at:(w - 1.15,0.35))
  }
}
#let bai-08-hinh(id) = {
  set text(font: "Times New Roman", size: 10pt)
  canvas({
    import draw: *
    if id == "mat-doc" {
      let slope-angle = 25deg
      let p = (2.9,2.9*calc.tan(slope-angle))
      line((0,0),(5.3,0),(5.3,5.3*calc.tan(slope-angle)),close:true,fill:luma(97%),stroke:0.7pt)
      // Chất điểm và hai thành phần trọng lực có chung điểm đặt.
      circle(p,radius:0.08,fill:black)
      let length = 1.9
      let px = (-length*calc.sin(slope-angle)*calc.cos(slope-angle),-length*calc.sin(slope-angle)*calc.sin(slope-angle))
      let py = (length*calc.cos(slope-angle)*calc.sin(slope-angle),-length*calc.cos(slope-angle)*calc.cos(slope-angle))
      arrow(p,(p.at(0)+px.at(0),p.at(1)+px.at(1)),label:[$bold(P)_x$],at:(1.9,1.12))
      arrow(p,(p.at(0)+py.at(0),p.at(1)+py.at(1)),label:[$bold(P)_y$],anchor:"west")
      arrow(p,(p.at(0),p.at(1) - length),label:[$bold(P)$],anchor:"north",color:orange)
      line((p.at(0)+px.at(0),p.at(1)+px.at(1)),(p.at(0),p.at(1) - length),(p.at(0)+py.at(0),p.at(1)+py.at(1)),stroke:dash)
      arc-at((0,0),1.1,0deg,slope-angle,label:[$alpha$],at:(1.38,0.27))
      content((3.05,1.55),[Vật],anchor:"south")
    } else if id == "hai-day" {
      hanging(angle:30deg,angle-label:[$theta$],vertical-angle:true)
    } else if id == "den-vong" {
      hanging(angle:calc.atan(0.8/3),dimensions:true)
    } else if id in ("day-goc","vong","day-15") {
      hanging(angle:if id == "day-15" {15deg} else {20deg},
        angle-label:if id == "vong" {[$20 degree$]} else if id == "day-15" {[$15 degree$]} else {[$theta$]})
    } else if id == "ba-luc" {
      arrow((0,0),(2,0),label:[$bold(F)_1$],at:(1.4,0.14))
      arrow((0,0),(0,2),label:[$bold(F)_2$],anchor:"south")
      arrow((0,0),(-2,-2),label:[$bold(F)_3$],at:(-1.5,-1.1),anchor:"east",color:orange)
      content((2.25,0),[Đông],anchor:"west")
      content((0.2,1.6),[Bắc],anchor:"west")
      pin((0,0),[O],offset:(0.15,-0.23))
    } else if id == "cabin-doc" {
      let p = (2.8,1.617)
      line((0,0),(5.4,3.118),stroke:1pt+luma(55%))
      line((0,0),(2,0),stroke:dash)
      arc-at((0,0),1,0deg,30deg,label:[$30 degree$],at:(1.43,0.37))
      circle(p,radius:0.075,fill:black)
      arrow(p,(4.36,2.517),label:[$bold(F)_k$],anchor:"south")
      arrow(p,(1.76,1.017),label:[$bold(F)_c$],at:(1.55,1.2))
      arrow(p,(2.8,-0.25),label:[$bold(P)$],anchor:"north",color:orange)
      arrow(p,(2.15,2.743),label:[$bold(N)$],anchor:"south")
      content((4.5,1.35),[Đi lên dọc tuyến])
    } else if id in ("song-song-cung","song-song-nguoc") {
      let opposite = id == "song-song-nguoc"
      line((0,0),(4.2,0),stroke:1.2pt+luma(55%))
      pin((0,0),[A],offset:(-0.2,0.1))
      pin((4.2,0),[B],offset:(0.2,0.1))
      arrow((0,0),(0,if opposite {1} else {-1}),label:[$bold(F)_1$],at:(0.15,if opposite {0.7} else {-0.65}),anchor:"west")
      arrow((4.2,0),(4.2,-2),label:[$bold(F)_2$],at:(4.35,-1.2),anchor:"west",color:orange)
      line((0,0.42),(4.2,0.42),stroke:dash)
      content((2.1,0.65),if opposite {[20 cm]} else {[60 cm]})
    } else if id in ("xa-lan","keo-toi-uu") {
      let lower-angle = if id == "xa-lan" {30deg} else {40deg}
      line((-1.4,2.25),(5,2.25),stroke:0.5pt+luma(60%))
      line((-1.4,-2.5),(5,-2.5),stroke:0.5pt+luma(60%))
      rect((-0.8,-0.32),(0.2,0.32),fill:luma(94%),stroke:0.7pt)
      line((0,0),(4.7,0),stroke:dash,mark:(end:">"))
      content((4.85,0),[$bold(v)$],anchor:"west")
      arrow((0,0),(3.4,3.4*calc.tan(30deg)),label:[$bold(F)_1$],anchor:"south")
      arrow((0,0),(2.7,-2.7*calc.tan(lower-angle)),label:[$bold(F)_2$],anchor:"north")
      arrow((0,0),(-1.55,0),label:[$bold(F)_c$],at:(-1.35,0.2),color:orange)
      arc-at((0,0),1.15,0deg,30deg,label:if id == "xa-lan" {[$30 degree$]} else {[$alpha_1$]},at:(1.65,0.43))
      arc-at((0,0),1.15,-lower-angle,0deg,label:if id == "xa-lan" {[$30 degree$]} else {[$alpha_2$]},at:(1.65,-0.47))
    } else if id in ("phan-tich","vuong-goc") {
      arrow((0,0),(3.8,0),label:[$x$],anchor:"west",color:black)
      arrow((0,0),(0,2.6),label:[$y$],color:black)
      if id == "phan-tich" {
        arrow((0,0),(3.2,1.848),label:[$bold(F)$],anchor:"south")
        line((3.2,0),(3.2,1.848),(0,1.848),stroke:dash)
        arc-at((0,0),1,0deg,30deg,label:[$alpha$],at:(1.35,0.32))
      } else {
        arrow((0,0),(1.5,0),label:[$bold(F)_1 = 6 thin "N"$],at:(1,-0.2),anchor:"north")
        arrow((0,0),(0,2),label:[$bold(F)_2 = 8 thin "N"$],at:(-0.2,1.1),anchor:"east")
      }
      content((-0.16,-0.18),[O])
    } else if id == "gia-30" {
      bracket()
    } else if id == "gia-45" {
      bracket(angle:45deg,label:[$45 degree$])
    } else if id == "gia-kich-thuoc" {
      bracket(angle:calc.atan(4/3),dimensions:true)
    } else if id == "dam-cau" {
      bracket(beam:true,label:[$alpha$])
    } else if id == "luc-tai-b" {
      pin((0,0),[B],offset:(-0.18,-0.15))
      arrow((0,0),(-1.2,1.6),label:[$bold(T)$],anchor:"south")
      arrow((0,0),(1.6,0),label:[$bold(N)$],anchor:"south")
      arrow((0,0),(0,-1.6),label:[$bold(F)_("biển")$],anchor:"north",color:orange)
    } else if id == "hai-day-lech" {
      line((-3,1.732),(0,0),(2.2,2.2),stroke:1pt+blue)
      line((-2,0),(2,0),stroke:dash)
      pin((-3,1.732),[A],offset:(-0.15,0.2))
      pin((2.2,2.2),[B],offset:(0.15,0.2))
      pin((0,0),[C],offset:(0,-0.3))
      arrow((0,0),(-2.08,1.2),label:[$bold(T)_1$],anchor:"south")
      arrow((0,0),(1.5,1.5),label:[$bold(T)_2$],anchor:"south")
      arc-at((0,0),0.9,150deg,180deg,label:[$alpha$],at:(-1.3,0.3))
      arc-at((0,0),0.9,0deg,45deg,label:[$beta$],at:(1.25,0.4))
    } else if id == "thi-nghiem" {
      // Đĩa thẳng đứng; vòng O tự do, ba dây nằm trong mặt đĩa.
      circle((0,0),radius:1.65,stroke:0.6pt+luma(60%),fill:luma(98%))
      for a in range(0,360,step:15) {
        line((1.53*calc.cos(a*1deg),1.53*calc.sin(a*1deg)),(1.65*calc.cos(a*1deg),1.65*calc.sin(a*1deg)),stroke:0.5pt+luma(60%))
      }
      circle((0,0),radius:0.09,stroke:0.9pt)
      content((0.2,0),[O],anchor:"west")
      for (x, name, meter) in ((-1.9,[A],[$L_1$]),(1.9,[B],[$L_2$])) {
        circle((x,1.35),radius:0.13,stroke:0.8pt,fill:white)
        line((0,0),(x,1.48),(x+if x < 0 {-0.13} else {0.13},1.35),(x+if x < 0 {-0.13} else {0.13},0.75),stroke:0.8pt+blue)
        let sx = x+if x < 0 {-0.13} else {0.13}
        rect((sx - 0.17,-0.15),(sx+0.17,0.75),stroke:0.7pt,fill:white)
        line(..range(9).map(i=>(sx+if calc.rem(i,2)==0 {-0.07} else {0.07},0.62 - i*0.07)),stroke:0.6pt)
        line((sx,-0.15),(sx,-0.5),stroke:0.7pt)
        line((sx - 0.25,-0.5),(sx+0.25,-0.5),stroke:1.5pt)
        content((sx+if x < 0 {-0.3} else {0.3},0.3),meter,anchor:if x < 0 {"east"} else {"west"})
        content((x,1.72),name)
      }
      line((0,-0.09),(0,-1.85),stroke:0.8pt+orange)
      rect((-0.35,-2.4),(0.35,-1.85),stroke:0.8pt,fill:luma(92%))
      content((0,-2.12),[$M$])
    } else if id == "cabin-gio" {
      // Mặt cắt Oxz: vết của Oyz là đường thẳng đứng nét đứt.
      line((-1.2,2.7),(1.6,2.7),stroke:2pt+luma(55%))
      line((0,2.7),(0,-0.1),stroke:dash)
      line((0,2.7),(0.55,0),stroke:1pt+blue)
      circle((0,2.7),radius:0.06,fill:black)
      rect((0.1,-0.65),(1,-0.05),fill:luma(95%),stroke:0.8pt)
      content((0.55,-0.35),[Cabin])
      arrow((0.55,0),(2.1,0),label:[$bold(F)_g$],anchor:"south",color:orange)
      arrow((0.55,0),(0.55,-1.5),label:[$bold(P)$],at:(0.75,-1.2),anchor:"west",color:orange)
      arrow((0.55,0),(0.23,1.57),label:[$bold(T)$],at:(0.48,1.15),anchor:"west")
      arc-at((0,2.7),1.1,-90deg,-78.465deg,label:[$phi$],at:(0.18,1.28))
      content((-0.15,1.3),[Phương đứng],anchor:"east")
      content((0.45,-1.85),[Mặt cắt Oxz; gió theo chiều +Ox])
    } else if id == "do-thi-hop-luc" {
      arrow((0,0),(6.4,0),label:[$alpha$ (độ)],anchor:"west",color:black)
      arrow((0,0),(0,3.4),label:[$F$ (N)],color:black)
      for a in (0,90,180) { content((a/30,-0.22),[#a]) }
      for f in (7,13,17) { content((-0.18,f/6),[#f],anchor:"east") }
      line(..range(181).map(a=>(a/30,calc.sqrt(169+120*calc.cos(a*1deg))/6)),stroke:1.2pt+blue)
      for (a,f) in ((0,17),(90,13),(180,7)) {
        line((a/30,0),(a/30,f/6),(0,f/6),stroke:dash)
        circle((a/30,f/6),radius:0.045,fill:blue,stroke:none)
      }
    } else { panic("Chưa có hình Bài 8: " + id) }
  })
}
```


### `sbt-vat-li-10/chuong-02-dong-luc-hoc/bai-09.typ`

SHA-256: `326cbe89516ff343e4e89c3db9e973f6df498a5337593b0497df42d9886323f7`

```typst
#import "../cau-hinh.typ": *
#import "images/bai-09-hinh.typ": bai-09-hinh

// Nguồn: nguon/bai-09-goc.txt; hiệu đính: nguon/bai-09-ghi-chu.md.
// Các câu độc lập; đáp án và lời giải ẩn trên bản học sinh.
#sbt-bai(num: "9", title: "Định luật 1 Newton", label: <bai-09>)

= Phần I. Trắc nghiệm khách quan
#sbt-instructions(reset: true)[Chọn một phương án đúng trong mỗi câu. Nếu không nêu khác, xét chuyển động của chất điểm trong hệ quy chiếu mặt đất được coi gần đúng là quán tính.]

// MCQ-01
#vp-question(
  [Ô tô chuyển động thẳng đều với tốc độ $120 thin "km/h"$. Phát biểu nào đúng về quán tính của xe?],
  type: "mcq", options: ([Quán tính là lực do động cơ sinh ra để thắng lực cản.],
    [Quán tính là tính chất của xe có xu hướng giữ nguyên vận tốc hiện tại.],
    [Xe chạy càng nhanh thì mức quán tính càng lớn; khi dừng, quán tính bằng không.],
    [Quán tính chỉ xuất hiện khi xe phanh hoặc tăng tốc.]),
  ans: "B", sol: [Quán tính là tính chất duy trì trạng thái đứng yên hoặc chuyển động thẳng đều, không phải một lực. Trong cơ học Newton, khối lượng đặc trưng cho mức quán tính, không phải tốc độ.],
)

// MCQ-02
#vp-question(
  [Một cuốn sách được đẩy trượt đều trên bàn ngang. Khi buông tay, sách trượt thêm rồi dừng. Bỏ qua lực cản không khí. Giải thích nào đúng?],
  type: "mcq", options: ([Sách dừng vì vật luôn cần lực đẩy để duy trì chuyển động.],
    [Sau khi buông tay, ma sát là lực ngang làm vận tốc sách giảm về không.],
    [Quán tính của sách bị tiêu hao hết khi trượt.], [Khi sách trượt đều, lực đẩy lớn hơn lực ma sát.]),
  ans: "B", sol: [Trọng lực và phản lực cân bằng theo phương đứng. Khi buông tay, hợp lực là ma sát ngược chiều chuyển động nên sách chậm lại. Khi trượt đều, lực đẩy và ma sát cân bằng nhau.],
)

// MCQ-03
#vp-question(
  [Một chất điểm chịu ba lực đồng phẳng có tổng vectơ bằng không trong suốt khoảng thời gian xét. Chất điểm chuyển động thế nào?],
  type: "mcq", options: ([Chắc chắn đứng yên tại gốc tọa độ.], [Nhanh dần đều theo hướng lực lớn nhất.],
    [Đứng yên hoặc chuyển động thẳng đều, tùy vận tốc ban đầu.], [Chuyển động tròn đều.]),
  ans: "C", sol: [Hợp lực bằng không nên vận tốc không đổi. Vận tốc ban đầu bằng không thì vật đứng yên; khác không thì vật chuyển động thẳng đều.],
)

// MCQ-04
#vp-question(
  [Hệ quy chiếu nào sau đây không phải hệ quy chiếu quán tính? Coi hệ mặt đất là quán tính và các hệ chuyển động thẳng có trục không quay so với mặt đất.],
  type: "mcq", options: ([Hệ gắn với tòa nhà đứng yên trên mặt đất.],
    [Hệ gắn với tàu chạy thẳng đều $80 thin "km/h"$.], [Hệ gắn với xe buýt đang vào cua và hãm phanh.],
    [Hệ gắn với tàu vũ trụ chuyển động thẳng đều so với một hệ quán tính.]),
  ans: "C", sol: [Xe đang đổi độ lớn hoặc hướng vận tốc nên có gia tốc. Hệ gắn với xe lúc này không phải hệ quy chiếu quán tính.],
)

// MCQ-05
#vp-question(
  [Khi ô tô phanh gấp, hành khách không được giữ bởi dây an toàn có xu hướng chồm về phía trước so với xe. Trong hệ mặt đất, nguyên nhân là gì?
    #align(center, bai-09-hinh("phanh-xe"))
  ], type: "mcq", options: ([Một lực do quán tính của Trái Đất đẩy người về phía trước.],
    [Lực phanh truyền sang người, đẩy người về phía trước.], [Người có xu hướng duy trì vận tốc ban đầu trong khi xe giảm tốc.],
    [Trọng lực tác dụng lên người giảm đột ngột.]),
  ans: "C", sol: [Quán tính không tạo thêm lực đẩy về phía trước. Xe giảm tốc; nếu lực hãm người chưa đủ, người tiếp tục đi về phía trước so với xe.],
)

// MCQ-06
#vp-question(
  [Hai vật A, B chịu cùng một hợp lực không đổi trong cùng thời gian. Độ lớn biến thiên vận tốc lần lượt là $Delta v_A = 4 thin "m/s"$, $Delta v_B = 1 thin "m/s"$. Biết $F = m a$, tỉ số $m_A/m_B$ bằng bao nhiêu?],
  type: "mcq", options: ([$4$.], [$1/4$.], [$2$.], [$1/2$.]),
  ans: "B", sol: [Cùng $F$, $Delta t$ nên $m_A Delta v_A = m_B Delta v_B$, do đó $m_A/m_B = Delta v_B/Delta v_A = 1/4$. Vật có khối lượng lớn hơn khó thay đổi vận tốc hơn.],
)

// MCQ-07
#vp-question(
  [Trong mô hình hai mặt dốc nối êm với nhau, bi trượt không ma sát từ độ cao $h$ xuống dốc trái rồi lên dốc phải. Hạ dần độ nghiêng dốc phải, cuối cùng thay bằng mặt phẳng ngang dài vô hạn. Khi đã tới đoạn ngang, bi sẽ chuyển động thế nào?
    #align(center, bai-09-hinh("hai-mat-doc"))
  ], type: "mcq", options: ([Dừng ngay vì không còn độ dốc.], [Chuyển động đến khi quán tính bị tiêu hao hết.],
    [Chuyển động thẳng đều trên đoạn ngang.], [Chậm dần đều rồi dừng sau quãng đường bằng chiều dài dốc trái.]),
  ans: "C", sol: [Trên đoạn ngang lí tưởng, trọng lực và phản lực cân bằng, không còn lực ngang. Bi giữ vận tốc tại lúc vào đoạn ngang. Không cần lực để duy trì chuyển động này.],
)

// MCQ-08
#vp-question(
  [Một người đứng trên cân trong thang máy. Khi thang máy bắt đầu đi lên nhanh dần, số chỉ cân tăng. Coi $g$ không đổi. Phát biểu nào đúng?
    #align(center, bai-09-hinh("thang-may"))
  ], type: "mcq", options: ([Trọng lực tác dụng lên người tăng vì thang máy đi lên.],
    [Lực cân đỡ người tăng và lớn hơn trọng lực, tạo gia tốc hướng lên.], [Quán tính của người biến mất.],
    [Khối lượng người tăng theo gia tốc thang máy.]),
  ans: "B", sol: [Theo phương đứng, $N - m g = m a > 0$, nên $N > m g$. Số chỉ cân phụ thuộc lực ép lên cân, không phải do khối lượng hay trọng lực thay đổi.],
)

// MCQ-09
#vp-question(
  [Một tàu vũ trụ đang chuyển động trong một hệ quy chiếu quán tính. Từ lúc tắt động cơ, coi tổng ngoại lực tác dụng lên tàu bằng không. Tàu sẽ chuyển động thế nào?],
  type: "mcq", options: ([Dừng ngay.], [Chậm dần đều rồi dừng.], [Tiếp tục chuyển động thẳng đều với vận tốc lúc tắt động cơ.],
    [Chuyển động tròn với bán kính giảm dần.]),
  ans: "C", sol: [Theo định luật 1 Newton, khi hợp lực bằng không, vận tốc tàu không đổi. Đây là mô hình lí tưởng, không phải khẳng định mọi tàu vũ trụ thực đều không chịu hấp dẫn.],
)

// MCQ-10
#vp-question(
  [Một xe đang đi thẳng bắt đầu vào cua. Vì sao xe cần lực ngang để đi theo đường cong?
    #align(center, bai-09-hinh("vao-cua"))
  ], type: "mcq", options: ([Khối lượng xe tăng làm lực ma sát tự giảm.],
    [Xe có xu hướng giữ hướng vận tốc cũ; muốn đổi hướng phải có hợp lực khác không.],
    [Trọng lực giảm khi đường cong.], [Chỉ lực của động cơ mới có thể đổi hướng xe.]),
  ans: "B", sol: [Chuyển động theo đường cong đòi hỏi đổi hướng vận tốc. Với cùng bán kính, gia tốc cần thiết tăng khi tốc độ tăng. Không thể chỉ từ khối lượng lớn mà kết luận xe chắc chắn trượt hoặc lật.],
)

// MCQ-11
#vp-question(
  [Con trượt được đẩy nhẹ rồi thả trên ray đệm khí nằm ngang. Bỏ qua lực cản và ma sát. Chọn $t = 0$, $d = 0$ tại lúc thả, chiều dương theo vận tốc ban đầu khác không. Đồ thị độ dịch chuyển–thời gian nào đúng?
    #align(center, bai-09-hinh("chon-do-thi"))
  ], type: "mcq", options: ([Đồ thị A.], [Đồ thị B.], [Đồ thị C.], [Đồ thị D.]),
  ans: "B", sol: [Hợp lực bằng không nên $v$ không đổi và dương; $d = v t$. Đồ thị là đường thẳng đi lên qua gốc tọa độ (B).],
)

// MCQ-12
#vp-question(
  [Xe buýt đang đi thẳng thì đột ngột rẽ trái. Do quán tính, hành khách có xu hướng nghiêng về phía nào so với xe?],
  type: "mcq", options: ([Trái.], [Phải.], [Trước.], [Sau.]),
  ans: "B", sol: [Hành khách có xu hướng giữ hướng chuyển động cũ, trong khi xe đổi hướng sang trái, nên người có xu hướng nghiêng sang phải so với xe.],
)

// MCQ-13
#vp-question(
  [Giọt mưa rơi thẳng đều ở tốc độ giới hạn. Coi giọt mưa chỉ chịu trọng lực và lực cản không khí. Kết luận nào đúng?],
  type: "mcq", options: ([Lực cản đã bằng không.], [Trọng lực đã biến mất.],
    [Lực cản hướng lên và có độ lớn bằng trọng lực.], [Hợp lực có độ lớn bằng $m g$.]),
  ans: "C", sol: [Rơi thẳng đều nên tổng vectơ lực bằng không: $F_c = P = m g$. Hai lực vẫn tồn tại và cân bằng nhau.
    #align(center, bai-09-hinh("roi-deu"))
  ],
)

// MCQ-14
#vp-question(
  [Tựa đầu của ghế ô tô trực tiếp hạn chế chuyển động tương đối nào trong tình huống xe đang đứng yên bị đẩy mạnh về phía trước do va chạm từ phía sau?],
  type: "mcq", options: ([Thân người chồm về trước khi xe phanh.],
    [Đầu ngả ra sau so với thân khi ghế đẩy thân về trước.], [Xe trượt trong cát.], [Xe trượt ngang trên mặt đường.]),
  ans: "B", sol: [Ghế đẩy thân về trước; đầu có xu hướng giữ trạng thái ban đầu. Tựa đầu truyền lực cho đầu, hạn chế độ trễ của đầu so với thân.],
)

// MCQ-15
#vp-question(
  [Một giọt mực tách khỏi trần toa tàu đang chạy thẳng đều $90 thin "km/h"$ trên đường ngang. Ban đầu giọt mực đứng yên so với toa; bỏ qua lực cản không khí. Nó chạm sàn tại đâu?
    #align(center, bai-09-hinh("tha-vat"))
  ], type: "mcq", options: ([Đúng điểm O trên sàn, thẳng dưới điểm thả trong toa tàu.],
    [Phía sau O.], [Phía trước O.], [Lệch sang phải so với O.]),
  ans: "A", sol: [Giọt mực và toa có cùng vận tốc ngang ban đầu. Trong khi rơi, giọt mực không chịu lực ngang nên giữ vận tốc ngang đó; vị trí ngang của nó so với toa không đổi.],
)

// MCQ-16
#vp-question(
  [Nhận định nào sai trong cơ học Newton khi xét ở một hệ quy chiếu quán tính?],
  type: "mcq", options: ([Vật có thể chuyển động mà không chịu lực nào.],
    [Hợp lực bằng không thì gia tốc bằng không.], [Muốn vật đang đứng yên bắt đầu chuyển động phải có hợp lực khác không trong quá trình đó.],
    [Vật chuyển động càng nhanh thì hợp lực tác dụng lên nó phải càng lớn.]),
  ans: "D", sol: [Hợp lực liên quan đến biến thiên vận tốc, không quyết định trực tiếp độ lớn vận tốc. Vật có thể chuyển động thẳng đều rất nhanh với hợp lực bằng không.],
)

// MCQ-17
#vp-question(
  [Kiện hàng $50 thin "kg"$ nằm yên so với sàn ngang của xe tải chạy thẳng đều $15 thin "m/s"$. Kiện hàng chỉ chịu trọng lực và lực tiếp xúc với sàn. Độ lớn ma sát nghỉ là bao nhiêu?],
  type: "mcq", options: ([$500 thin "N"$.], [$750 thin "N"$.], [$0 thin "N"$.], [$50 thin "N"$.]),
  ans: "C", sol: [Kiện hàng không có gia tốc theo phương ngang. Không có lực ngang nào khác cần cân bằng nên ma sát nghỉ bằng không; ma sát nghỉ không luôn bằng giá trị cực đại.],
)

// MCQ-18
#vp-question(
  [Một chiếc áo đang chuyển động thì bị giữ dừng đột ngột, làm một số hạt bụi tách khỏi áo. Giải thích nào phù hợp nhất?],
  type: "mcq", options: ([Trọng lực tăng đột ngột.],
    [Bụi có xu hướng tiếp tục chuyển động; lực liên kết với vải không đủ để hãm bụi cùng áo.],
    [Ma sát giữa bụi và vải đột ngột tăng vô hạn.], [Mọi hạt bụi đều bị nhiễm điện khi áo dừng.]),
  ans: "B", sol: [Bụi có quán tính. Khi áo dừng nhanh mà lực giữ bụi không đủ làm bụi giảm tốc cùng áo, bụi tiếp tục chuyển động tương đối với áo và có thể tách ra.],
)

// MCQ-19
#vp-question(
  [Người trên thuyền đang đứng yên đạp thuyền để nhảy về phía bờ; thuyền lùi lại. Bỏ qua lực cản nước trong thời gian đạp. Giải thích nào đúng?],
  type: "mcq", options: ([Thuyền không có quán tính nên bị lùi.],
    [Người tác dụng lực đẩy thuyền về sau, còn thuyền đẩy người về trước; sau tương tác, quán tính giúp thuyền tiếp tục chuyển động.],
    [Định luật 1 Newton không áp dụng trên mặt nước.], [Lực cản nước là lực đẩy thuyền lùi.]),
  ans: "B", sol: [Thuyền bắt đầu lùi do lực người tác dụng lên thuyền. Lực thuyền tác dụng lên người là lực tương tác ngược chiều, đặt lên vật khác. Quán tính không phải nguyên nhân tự tạo gia tốc cho thuyền.],
)

// MCQ-20
#vp-question(
  [Vệ tinh chuyển động tròn đều quanh Trái Đất, chỉ chịu lực hấp dẫn. Xét trong hệ có gốc ở tâm Trái Đất, các trục không quay so với các sao xa và được coi gần đúng là quán tính. Phát biểu nào đúng?
    #align(center, bai-09-hinh("ve-tinh"))
  ], type: "mcq", options: ([Tốc độ không đổi nên hợp lực bằng không.],
    [Hấp dẫn làm đổi hướng vận tốc nên hợp lực khác không.], [Có một lực thực hướng ra ngoài cân bằng hấp dẫn.],
    [Vệ tinh phải liên tục phun khí mới duy trì được quỹ đạo tròn lí tưởng.]),
  ans: "B", sol: [Vận tốc là vectơ: tuy độ lớn không đổi, hướng liên tục thay đổi. Hấp dẫn là hợp lực hướng tâm. Trong hệ quán tính đã chọn, không thêm lực li tâm để cân bằng hấp dẫn.],
)

= Phần II. Trắc nghiệm Đúng/Sai
#sbt-instructions(reset: true)[Xác định mỗi phát biểu a), b), c), d) là đúng hay sai.]

// TF-01
#vp-question(
  [Ô tô khối lượng $"2,8" thin "tấn"$ chạy thẳng đều $90 thin "km/h"$ trên đường ngang. Xét trong hệ mặt đất.],
  type: "tf", statements: (
    [Hợp lực của các ngoại lực tác dụng lên xe bằng không.],
    [Khi ngắt lực kéo, xe lập tức dừng lại dù các lực cản đều hữu hạn.],
    [Nếu lực kéo tiếp tục cân bằng tổng lực cản, xe duy trì vận tốc hiện tại.],
    [Hành khách $70 thin "kg"$ có mức quán tính lớn hơn xe.],
  ), ans-tf: ("Đ", "S", "Đ", "S"),
  sol: [a) Xe thẳng đều nên tổng vectơ ngoại lực bằng không.
    #parbreak() b) Mất lực kéo không làm vận tốc đột ngột bằng không; lực cản làm xe giảm tốc trong một khoảng thời gian.
    #parbreak() c) Tổng lực ngang bằng không, các lực đứng cân bằng, nên vận tốc không đổi.
    #parbreak() d) $2800 thin "kg" > 70 thin "kg"$ nên xe có mức quán tính lớn hơn.],
)

// TF-02
#vp-question(
  [Xét quan niệm “vật chỉ chuyển động được khi luôn có lực đẩy” và cách giải thích bằng định luật 1 Newton.],
  type: "tf", statements: (
    [Hiện tượng vật dừng sau khi thôi đẩy trên sàn có ma sát chưa chứng minh cần hợp lực khác không để duy trì chuyển động.],
    [Trong mô hình mặt phẳng ngang không ma sát, một vật đang chuyển động có thể tiếp tục thẳng đều dù không còn lực đẩy.],
    [Hợp lực khác không làm thay đổi vận tốc; hợp lực bằng không không buộc vật phải đứng yên.],
    [Vì từ $bold(F) = m bold(a)$ có thể thay $bold(F) = bold(0)$, định luật 1 là thừa và không có vai trò xác định hệ quy chiếu quán tính.],
  ), ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [a) Sau khi thôi đẩy vẫn còn lực cản làm vật dừng lại.
    #parbreak() b) Các lực đứng cân bằng, không có lực ngang nên vận tốc được giữ nguyên.
    #parbreak() c) Điều cần phân biệt là vận tốc và sự biến thiên vận tốc.
    #parbreak() d) Định luật 1 nêu sự tồn tại và đặc trưng của hệ quy chiếu quán tính; dạng thông thường của định luật 2 áp dụng trong các hệ ấy. Không thể bỏ qua điều kiện về hệ quy chiếu khi suy luận.],
)

// TF-03
#vp-question(
  [Va li ban đầu đứng yên so với sàn ngang của toa tàu chạy thẳng đều $80 thin "km/h"$. Va li không bị buộc, chỉ chịu trọng lực và lực tiếp xúc với sàn.],
  type: "tf", statements: (
    [Khi tàu tiếp tục thẳng đều, va li giữ nguyên vị trí trên sàn và ma sát nghỉ bằng không.],
    [Nếu tàu phanh với gia tốc hãm lớn hơn mức ma sát có thể truyền cho va li, va li trượt về phía đầu toa; vận tốc của va li so với đất vẫn có thể giảm.],
    [Khi tàu rẽ phải, nếu ma sát không đủ giữ va li đi cùng, va li có xu hướng trượt sang trái so với toa.],
    [Khi tàu phanh, nếu bỏ qua ma sát thì va li có gia tốc tương đối với toa dù không chịu lực ngang; điều này chứng tỏ hệ gắn với toa là quán tính.],
  ), ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [a) Va li đã có cùng vận tốc với tàu và không cần lực ngang để duy trì vận tốc đó.
    #parbreak() b) Ma sát hãm va li nhưng có thể không đủ để nó giảm tốc nhanh bằng tàu. Va li chuyển động về trước so với toa; không được khẳng định nó luôn giữ nguyên $80 thin "km/h"$ so với đất.
    #parbreak() c) Quán tính có xu hướng giữ hướng chuyển động cũ. Phải xét khả năng của ma sát, không phải mọi lần rẽ đều làm va li trượt.
    #parbreak() d) Hệ toa đang phanh là phi quán tính; trong hệ đất, khi bỏ qua ma sát, vận tốc ngang của va li không đổi.],
)

// TF-04
#vp-question(
  [Con trượt đang chuyển động trên ray đệm khí nằm ngang. Khi bật máy, coi lực cản và ma sát không đáng kể; khi tắt máy, con trượt tiếp xúc ray và chịu ma sát trượt có độ lớn không đổi cho đến lúc dừng.],
  type: "tf", statements: (
    [Sau khi tắt máy, con trượt chậm dần đều đến khi dừng.],
    [Khi bật máy và đã thôi đẩy, con trượt chuyển động xấp xỉ thẳng đều.],
    [Khi có đệm khí, đồ thị độ dịch chuyển–thời gian là đường thẳng, có hệ số góc bằng vận tốc.],
    [Gắn thêm quả nặng làm giảm mức quán tính của con trượt.],
  ), ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [a) Ma sát không đổi, ngược chiều vận tốc, cho gia tốc hãm không đổi trong giai đoạn trượt.
    #parbreak() b) Ray ngang và lực cản không đáng kể cho hợp lực xấp xỉ bằng không.
    #parbreak() c) $d = d_0 + v t$ với $v$ không đổi; độ dốc đồ thị bằng $v$.
    #parbreak() d) Thêm khối lượng làm tăng mức quán tính.],
)

// TF-05
#vp-question(
  [Xét các mô hình cơ học về sự giảm tốc của người và hàng hóa trên xe.], type: "tf", statements: (
    [Với cùng độ biến thiên động lượng, kéo dài thời gian hãm cơ thể làm giảm độ lớn lực hãm trung bình; đây là một tác dụng của túi khí trong mô hình va chạm trực diện.],
    [Dây chằng hàng có thể tạo thêm lực giữ để hàng giảm tốc cùng xe khi xe phanh.],
    [Lớp đệm biến dạng của mũ bảo hiểm có thể kéo dài thời gian giảm tốc của đầu khi va chạm.],
    [Chỉ biết xe chạy $100 thin "km/h"$ chưa đủ để tính quãng đường dừng; còn cần thời gian phản ứng và khả năng hãm.],
  ), ans-tf: ("Đ", "Đ", "Đ", "Đ"),
  sol: [a) Với cùng $abs(Delta p)$, $F_("tb") = frac(abs(Delta p), Delta t)$ giảm khi thời gian hãm tăng. Đây là lực tương tác, không phải một lực mới sinh ra bởi quán tính.
    #parbreak() b) Chằng buộc tạo lực tương tác làm thay đổi vận tốc của hàng cùng xe, trong giới hạn chịu lực của dây và điểm neo.
    #parbreak() c) Biến dạng của lớp đệm làm quá trình giảm tốc diễn ra trên khoảng thời gian dài hơn.
    #parbreak() d) Trong mô hình phản ứng trong thời gian $t_r$, rồi hãm đều với độ lớn gia tốc $a$, quãng đường dừng là $v_0 t_r + frac(v_0^2, 2 a)$. Không suy ra một giá trị khoảng cách chung chỉ từ tốc độ.],
)

= Phần III. Trắc nghiệm trả lời ngắn
#sbt-instructions(reset: true)[Tính và ghi kết quả theo đơn vị nêu trong mỗi câu.]

// SHORT-01
#vp-question(
  [Vật $"4,0" thin "kg"$ ban đầu đứng yên trên sàn ngang. Tác dụng lực kéo ngang $12 thin "N"$; ma sát nghỉ cực đại là $15 thin "N"$. Vật không chịu lực ngang nào khác. Sau $"5,0" thin "s"$, vật đi được bao nhiêu mét?],
  type: "short", ans: "0", sol: [Lực kéo nhỏ hơn ma sát nghỉ cực đại nên ma sát nghỉ có độ lớn $12 thin "N"$ và cân bằng lực kéo. Vật tiếp tục đứng yên: $s = 0 thin "m"$.],
)

// SHORT-02
#vp-question(
  [Ô tô $1500 thin "kg"$ chạy thẳng đều $72 thin "km/h"$ trên đường ngang. Tổng lực cản có độ lớn $800 thin "N"$. Tính độ lớn lực kéo theo đơn vị N.],
  type: "short", ans: "800", sol: [Hợp lực ngang bằng không nên $F_k = F_c = 800 thin "N"$.],
)

// SHORT-03
#vp-question(
  [Hai vật A, B khối lượng $2 thin "kg"$, $6 thin "kg"$ đều ban đầu đứng yên. Cùng một hợp lực không đổi tác dụng lên mỗi vật trong cùng thời gian làm A đạt tốc độ $12 thin "m/s"$. Dùng $F = m a$, tính tốc độ B theo đơn vị m/s.],
  type: "short", ans: "4", sol: [$m_A v_A = F t = m_B v_B$, nên $v_B = frac(2 times 12, 6) = 4 thin "m/s"$.],
)

// SHORT-04
#vp-question(
  [Hệ người và dù $80 thin "kg"$ đang rơi thẳng đứng. Tại thời điểm lực cản hướng lên có độ lớn $784 thin "N"$, gia tốc của hệ bằng bao nhiêu m/s²? Coi hệ chỉ chịu trọng lực và lực cản, lấy $g = "9,8" thin "m/s"^2$.],
  type: "short", ans: "0", sol: [$P = 80 times "9,8" = 784 thin "N" = F_c$ nên hợp lực và gia tốc tại thời điểm xét đều bằng không.],
)

// SHORT-05
#vp-question(
  [Con trượt $"0,5" thin "kg"$ chuyển động thẳng đều trên ray ngang. Ở $t_1 = "1,0" thin "s"$, tọa độ là $"0,2" thin "m"$; ở $t_2 = "4,0" thin "s"$, tọa độ là $"1,4" thin "m"$. Tính độ lớn hợp lực theo đơn vị N.
    #align(center, bai-09-hinh("toa-do"))
  ], type: "short", ans: "0", sol: [Đề đã cho chuyển động thẳng đều nên $a = 0$, $F = 0 thin "N"$. Hai điểm cho $v = frac("1,4" - "0,2", 4 - 1) = "0,4" thin "m/s"$, không làm hợp lực khác không.],
)

= Phần IV. Tự luận
#sbt-essay-instructions(reset: true)[Trình bày lập luận, công thức, phép tính và kết luận phù hợp với yêu cầu của bài.]

// ESSAY-01
#vp-question(
  [Một học sinh cho rằng: “Muốn vật chuyển động liên tục thì phải liên tục tác dụng lực đẩy; khi thôi đẩy, vật tự nhiên phải dừng.”
    #parbreak() a) So sánh quan niệm này với định luật 1 Newton. Phân biệt chuyển động và sự biến đổi vận tốc.
    #parbreak() b) Vì sao quan sát các vật chuyển động trên mặt sàn thông thường dễ dẫn đến nhận xét trên?
    #parbreak() c) Xe hàng được đẩy chạy thẳng đều trên sàn ngang; khi buông tay, xe chậm dần rồi dừng. Giải thích bằng các lực tác dụng. Nếu tổng lực cản bằng không sau lúc buông tay, xe sẽ thế nào?
  ], type: "essay", lines: 12,
  sol: [a) Trong hệ quán tính, vật giữ nguyên vận tốc khi hợp lực bằng không. Hợp lực khác không làm biến đổi vận tốc; không cần hợp lực để duy trì vận tốc không đổi.
    #parbreak() b) Trên sàn thường có ma sát và lực cản. Khi thôi đẩy, các lực cản vẫn còn và làm vật chậm lại; dễ nhầm tác dụng của lực cản với việc “chuyển động tự mất đi”.
    #parbreak() c) Khi thẳng đều: lực đẩy cân bằng tổng lực cản ngang; phản lực cân bằng trọng lực. Khi buông tay: chỉ còn hợp lực cản ngược chiều vận tốc nên xe chậm lại. Nếu lực cản bằng không, xe tiếp tục thẳng đều với vận tốc tại lúc buông tay.
    #align(center, bai-09-hinh("xe-hang-luc"))
  ],
)

// ESSAY-02
#vp-question(
  [Xét hành khách ngồi trên ghế ô tô trong hai tình huống: xe đang đứng yên bị đẩy mạnh về trước do va chạm từ phía sau; xe đang chạy $80 thin "km/h"$ thì phanh gấp.
    #align(center, bai-09-hinh("hai-tinh-huong"))
    a) Trong tình huống thứ nhất, so sánh xu hướng chuyển động của đầu và thân khi lưng ghế đẩy thân về trước. Tựa đầu có vai trò gì?
    #parbreak() b) Trong tình huống thứ hai, giải thích xu hướng chuyển động của hành khách so với xe và vai trò của dây an toàn ba điểm.
    #parbreak() c) Có thể nói “quán tính là lực đẩy người về trước hoặc sau” trong hệ mặt đất không? Giải thích.
  ], type: "essay", lines: 12,
  sol: [a) Ghế truyền lực làm thân tăng vận tốc về trước. Đầu có xu hướng giữ trạng thái ban đầu nên bị trễ so với thân. Tựa đầu truyền lực cho đầu, hạn chế đầu ngả ra sau tương đối với thân.
    #parbreak() b) Khi xe giảm tốc, người có xu hướng giữ vận tốc cũ nên chuyển động về trước so với xe. Dây an toàn tác dụng lực hãm lên người, giúp giảm vận tốc của người cùng xe và hạn chế dịch chuyển tương đối.
    #parbreak() c) Không. Quán tính là tính chất của vật; trong hệ mặt đất quán tính, sự biến đổi vận tốc do các lực tương tác thực như lực của ghế, tựa đầu, dây đai. Không cần thêm một “lực do quán tính” để giải thích.],
)

// ESSAY-03
#vp-question(
  [Hành khách thả viên bi từ độ cao $h = "1,5" thin "m"$ so với sàn trong toa tàu kín. Bi ban đầu đứng yên so với toa; ray ngang, bỏ qua rung xóc và lực cản không khí. Gọi O là điểm trên sàn thẳng dưới vị trí thả, gắn với toa.
    #align(center, bai-09-hinh("tha-vat"))
    a) Bi chạm sàn ở đâu so với O khi tàu đứng yên và khi tàu chạy thẳng đều $100 thin "km/h"$?
    #parbreak() b) Nếu tàu bắt đầu phanh ngay khi thả bi và giảm tốc trong suốt thời gian bi rơi, bi chạm sàn về phía nào so với O? Giải thích trong hệ mặt đất.
    #parbreak() c) Với cùng điều kiện ban đầu tương đối trong toa và cùng môi trường ngoài, chỉ bằng các thí nghiệm cơ học bên trong, có thể phân biệt toa đứng yên với toa thẳng đều hay không? Vì sao?
  ], type: "essay", lines: 12,
  sol: [a) Cả hai trường hợp bi đều chạm O. Nếu tàu đứng yên, bi không có vận tốc ngang; nếu tàu thẳng đều, bi và O có cùng vận tốc ngang và cùng độ dịch chuyển ngang trong thời gian rơi.
    #parbreak() b) Bi giữ vận tốc ngang ban đầu do không chịu lực ngang; O trên sàn giảm vận tốc cùng tàu. Bi chạm phía trước O. Nếu hãm đều với độ lớn gia tốc $a$, độ lệch là $Delta x = frac(1,2) a t^2 = frac(a h,g)$, với $t = sqrt(2 h/g)$.
    #align(center, bai-09-hinh("roi-khi-phanh"))
    c) Không có thí nghiệm cơ học nội bộ như vậy để phân biệt hai hệ quán tính chỉ bằng chuyển động thẳng đều tương đối. Các định luật cơ học có cùng dạng trong hai hệ. Trường hợp phanh khác vì hệ toa có gia tốc.],
)

// ESSAY-04
#vp-question(
  [Thí nghiệm khảo sát định luật 1 Newton dùng ray đệm khí nằm ngang, con trượt gắn tấm chắn sáng và hai cổng quang A, B nối với đồng hồ đo thời gian. Hai cổng cách nhau $s = "0,50" thin "m"$; tấm chắn có bề rộng $d = 20 thin "mm"$ theo hướng chuyển động.
    #align(center, bai-09-hinh("cong-quang"))
    a) Mô tả cách bố trí, cân bằng ray và tác dụng của đệm khí. Vì sao cần thôi đẩy con trượt trước khi đo?
    #parbreak() b) Nêu cách ước lượng tốc độ qua mỗi cổng từ thời gian chắn sáng. Hai giá trị tốc độ bằng nhau có đủ để kết luận chắc chắn vận tốc không đổi ở mọi điểm giữa hai cổng không? Đề xuất cách kiểm tra thêm.
    #parbreak() c) Đo được $t_A = t_B = "0,040" thin "s"$. Tính $v_A$, $v_B$ và nhận xét trong mô hình ray ngang, lực cản không đáng kể. Nếu chuyển động đều, thời gian giữa hai lần mép trước tấm chắn tới A và B dự kiến bằng bao nhiêu?
  ], type: "essay", lines: 12,
  sol: [a) Dùng thước thủy và vít chỉnh để ray nằm ngang, bật máy tạo lớp khí giảm tiếp xúc giữa ray và con trượt; không coi mọi ma sát thực tế bị triệt tiêu tuyệt đối. Gắn tấm chắn, đặt hai cổng và nối đồng hồ. Thôi đẩy trước khi đo để không còn lực tay làm thay đổi vận tốc.
    #parbreak() b) $v_A approx d/t_A$, $v_B approx d/t_B$ là tốc độ trung bình trong quãng ngắn chắn sáng, gần tốc độ tại cổng khi vận tốc biến đổi ít. Hai số bằng nhau chỉ là bằng chứng phù hợp, chưa chứng minh vận tốc không đổi tại mọi thời điểm. Có thể đổi vị trí cổng, dùng thêm cổng hoặc ghi vị trí theo thời gian ở nhiều điểm.
    #parbreak() c) $d = "0,020" thin "m"$ nên $v_A = v_B = frac("0,020","0,040") = "0,50" thin "m/s"$. Cùng với giả thiết hợp lực gần bằng không, số liệu phù hợp chuyển động thẳng đều. Thời gian dự kiến giữa hai cổng $Delta t = s/v = "1,0" thin "s"$.],
)

// ESSAY-05
#vp-question(
  [Xe tải chở thùng hàng $M = 500 thin "kg"$ trên sàn ngang; hệ số ma sát nghỉ $mu_n = "0,35"$. Xe chạy thẳng với $v_0 = 72 thin "km/h" = 20 thin "m/s"$ rồi phanh. Thùng không được chằng buộc, chỉ chịu trọng lực và lực tiếp xúc với sàn; bỏ qua lực cản không khí. Lấy $g = "9,8" thin "m/s"^2$ và dùng $F = m a$, $F_("msn,max") = mu_n N$.
    #align(center, bai-09-hinh("thung-hang"))
    a) Vẽ và phân tích các lực tác dụng lên thùng trong hệ mặt đất khi thùng giảm tốc cùng xe. Lực nào giữ thùng không trượt về phía cabin?
    #parbreak() b) Tính độ lớn gia tốc hãm lớn nhất để thùng còn đứng yên so với sàn.
    #parbreak() c) Giả sử xe có thể hãm đều ở giá trị giới hạn đó, tính quãng đường phanh ngắn nhất để thùng không trượt. Chỉ tính từ lúc bắt đầu phanh, không tính thời gian phản ứng.
  ], type: "essay", lines: 12,
  sol: [a) Trọng lực $P = M g = 4900 thin "N"$ hướng xuống; phản lực $N = P$ hướng lên; ma sát nghỉ hướng về sau xe, làm thùng giảm tốc cùng xe. Quán tính không phải lực đẩy thùng về trước.
    #align(center, bai-09-hinh("luc-thung"))
    b) Gọi $a_h$ là độ lớn gia tốc hãm: $M a_h = F_("msn") <= mu_n M g$. Suy ra $a_("max") = mu_n g = "3,43" thin "m/s"^2$; ma sát giới hạn $1715 thin "N"$.
    #parbreak() c) Chọn chiều dương theo vận tốc ban đầu, $a = -"3,43" thin "m/s"^2$. Từ $0 - v_0^2 = 2 a s$, được $s_("min") = frac(20^2, 2 times "3,43") approx "58,31" thin "m"$. Đây là giới hạn không trượt của mô hình, không phải toàn bộ khoảng cách dừng xe.
    #align(center, bai-09-hinh("do-thi-phanh"))
  ],
)
```


### `sbt-vat-li-10/chuong-02-dong-luc-hoc/images/bai-09-hinh.typ`

SHA-256: `2a2b53af6e8dcb3da9a6e71357a1f27184270d6c12d325c368717ca61c2edb36`

```typst
// Sơ đồ CeTZ Bài 9; hình giải thích đáp án chỉ gọi trong sol.
#import "@preview/cetz:0.3.3": canvas, draw
#let blue = rgb("1976d2")
#let orange = rgb("b45309")
#let dash = (paint: luma(55%), thickness: 0.6pt, dash: "dashed")
#let vec(a, b, label: none, at: none, anchor: "south", color: blue) = {
  draw.line(a,b,stroke:1.05pt+color,mark:(end:">"))
  if label != none { draw.content(if at == none {b} else {at},label,anchor:anchor) }
}
#let person(x, y) = {
  draw.circle((x,y+1.25),radius:0.15,stroke:0.8pt,fill:white)
  draw.line((x,y+1.1),(x,y+0.45),(x+0.35,y+0.45),(x+0.5,y),stroke:0.9pt)
  draw.line((x,y+0.85),(x+0.35,y+0.65),stroke:0.8pt)
}
#let car(x, y, w: 4.8) = {
  draw.line((x,y),(x+w,y),(x+w,y+0.45),(x+w - 0.65,y+1.55),(x+0.4,y+1.55),(x,y+1.1),close:true,stroke:0.8pt+luma(50%))
  for dx in (0.8,w - 0.8) { draw.circle((x+dx,y - 0.15),radius:0.23,fill:white,stroke:0.8pt) }
}
#let seat(x,y,headrest:false) = {
  draw.line((x - 0.18,y+1.1),(x - 0.18,y+0.4),(x+0.4,y+0.4),stroke:2pt+blue)
  if headrest { draw.line((x - 0.23,y+1.12),(x - 0.23,y+1.42),stroke:3pt+blue) }
  person(x,y)
}
#let plot(points,w:3.5,h:1.8,xlabel:[$t$],ylabel:[$d$]) = {
  vec((0,0),(w+0.2,0),label:xlabel,anchor:"west",color:black)
  vec((0,0),(0,h+0.25),label:ylabel,color:black)
  draw.content((-0.15,-0.15),[O])
  draw.line(..points.map(p=>(w*p.at(0),h*p.at(1))),stroke:1.1pt+blue)
}
#let bai-09-hinh(id) = {
  set text(font:"Times New Roman",size:10pt)
  if id == "chon-do-thi" {
    grid(columns:(auto,auto),column-gutter:22pt,row-gutter:12pt,
      ..("A","B","C","D").enumerate().map(((i,name))=>align(center)[
        *#name* #linebreak()
        #canvas({
          let points = if i == 0 {range(51).map(j=>(j/50,(j/50)*(j/50)))}
            else if i == 1 {((0,0),(1,1))}
            else if i == 2 {range(51).map(j=>(j/50,1 - calc.exp(-4*j/50)))}
            else {((0,0),(0.2,0.5),(0.4,0.25),(0.6,0.8),(0.8,0.55),(1,1))}
          plot(points)
        })
      ])
    )
  } else {
    canvas({
      import draw: *
      if id == "phanh-xe" {
        car(0,0)
        seat(2,0.05)
        vec((3.7,2.05),(5,2.05),label:[$bold(v)_("xe")$],at:(4.35,2.2))
        vec((1.4,-0.8),(0,-0.8),label:[$bold(a)_("xe")$],at:(0.7,-0.65),color:orange)
        content((2.4,-1.2),[Xe đi sang phải, đang giảm tốc])
      } else if id == "hai-mat-doc" {
        line((0,2),(1.75,0.25),stroke:1.2pt+blue)
        // Đoạn nối cong tiếp tuyến với dốc trái và từng phương án dốc phải.
        for (end,last,color) in (((2.25,0.25),(4,2),blue),((2.5,0.25),(6,2),blue),((2.5,0),(7.1,0),orange)) {
          let points = range(31).map(i=>{
            let t = i/30
            ((1 - t)*(1 - t)*1.75 + 2*t*(1 - t)*2 + t*t*end.at(0),
              (1 - t)*(1 - t)*0.25 + t*t*end.at(1))
          })
          line(..points,last,stroke:1pt+color)
        }
        line((0,2),(6.3,2),stroke:dash)
        circle((0,2),radius:0.08,fill:blue,stroke:none)
        line((-0.35,0),(-0.35,2),mark:(start:"<",end:">"),stroke:0.6pt)
        content((-0.5,1),[$h$],anchor:"east")
        content((5.4,-0.28),[Dốc phải khi hạ về phương ngang])
        content((0.8,2.27),[Vị trí thả])
      } else if id == "thang-may" {
        rect((0,0),(2.7,2.7),stroke:0.8pt+luma(55%))
        rect((0.8,0.08),(1.9,0.32),fill:luma(93%),stroke:0.7pt)
        circle((1.35,1.9),radius:0.15,stroke:0.8pt,fill:white)
        line((1.35,1.75),(1.35,1.0),(1.12,0.34),stroke:0.9pt)
        line((1.35,1.0),(1.6,0.34),stroke:0.9pt)
        line((1.02,1.15),(1.35,1.55),(1.68,1.15),stroke:0.8pt)
        content((1.35,-0.23),[Cân])
        vec((3.3,0.8),(3.3,2.1),label:[$bold(a)$],anchor:"south",color:orange)
      } else if id == "vao-cua" {
        line(..range(61).map(i=>{
          let a = -90deg+i*1deg
          (3.2*calc.cos(a),3.2+3.2*calc.sin(a))
        }),stroke:1.1pt+blue)
        line((-1.6,0),(0,0),stroke:1.1pt+blue)
        vec((0,0),(3.2,0),label:[Hướng vận tốc ban đầu],at:(3.2,-0.2),anchor:"north",color:orange)
        circle((0,0),radius:0.08,fill:black)
        content((2.8,1.65),[Đường cua trái],anchor:"south")
        content((-1.2,0.22),[Nhìn từ trên])
      } else if id == "roi-deu" {
        circle((0,0),radius:0.1,fill:blue,stroke:none)
        vec((0,0),(0,1.5),label:[$bold(F)_c$])
        vec((0,0),(0,-1.5),label:[$bold(P)$],anchor:"north",color:orange)
        vec((1.1,0.6),(1.1,-0.6),label:[$bold(v)$],at:(1.28,0),anchor:"west",color:black)
      } else if id == "tha-vat" {
        rect((0,0),(5.1,2.25),stroke:0.8pt+luma(55%))
        circle((1.5,1.9),radius:0.08,fill:blue,stroke:none)
        content((1.75,1.9),[Điểm thả],anchor:"west")
        line((1.5,1.75),(1.5,0),stroke:dash)
        content((1.5,-0.2),[O])
        content((3.8,-0.2),[Sàn toa])
        content((2.7,2.5),[Hình chiếu thẳng đứng trong toa])
        vec((5.45,0.9),(6.7,0.9),label:[Đầu tàu],at:(6.05,1.1))
      } else if id == "ve-tinh" {
        circle((0,0),radius:1.55,stroke:dash)
        circle((0,0),radius:0.45,fill:blue.lighten(75%),stroke:0.8pt+blue)
        content((0,0),[Trái Đất])
        rect((1.43,-0.12),(1.67,0.12),fill:orange,stroke:none)
        vec((1.55,0),(1.55,1.15),label:[$bold(v)$],anchor:"south")
        content((1.85,-0.2),[Vệ tinh],anchor:"west")
      } else if id == "toa-do" {
        vec((0,0),(5.4,0),label:[$t$ (s)],anchor:"west",color:black)
        vec((0,0),(0,2.75),label:[$x$ (m)],color:black)
        let p(t,x) = (t*1.1,x*1.6)
        line(p(1,0.2),p(4,1.4),stroke:1.1pt+blue)
        for (t,x,label) in ((1,0.2,[0,2]),(4,1.4,[1,4])) {
          line(p(t,0),p(t,x),p(0,x),stroke:dash)
          circle(p(t,x),radius:0.045,fill:blue,stroke:none)
          content((t*1.1,-0.2),[#t])
          content((-0.17,x*1.6),label,anchor:"east")
        }
        content((-0.15,-0.15),[O])
      } else if id == "xe-hang-luc" {
        rect((-0.6,-0.3),(0.6,0.3),fill:luma(95%),stroke:0.7pt)
        vec((0,0),(0,1.3),label:[$bold(N)$])
        vec((0,0),(0,-1.3),label:[$bold(P)$],anchor:"north",color:orange)
        vec((0,0),(1.6,0),label:[$bold(F)_("đẩy")$],at:(1.45,0.18))
        vec((0,0),(-1.6,0),label:[$bold(F)_c$],at:(-1.45,0.18),color:orange)
        content((0,-1.7),[Xe chạy thẳng đều khi đang được đẩy])
      } else if id == "hai-tinh-huong" {
        for (x,label) in ((0,[Xe bị đẩy về trước]),(4.3,[Xe đang phanh])) {
          seat(x+1.1,0,headrest:true)
          line((x,0),(x+3,0),stroke:0.7pt+luma(55%))
          content((x+1.5,2.2),label)
          if x == 0 {
            vec((x+0.2,1.75),(x+2,1.75),label:[$bold(a)_("xe")$],at:(x+2.25,1.75),anchor:"west",color:orange)
          } else {
            vec((x+2,1.75),(x+0.3,1.75),label:[$bold(a)_("xe")$],at:(x+2.25,1.75),anchor:"west",color:orange)
          }
          content((x+1.5,-0.3),[Đầu xe ở bên phải])
        }
      } else if id == "roi-khi-phanh" {
        rect((0,0),(4.5,2.3),stroke:0.7pt+luma(55%))
        circle((1.1,2),radius:0.07,fill:blue,stroke:none)
        line((1.1,2),(1.1,0),stroke:dash)
        // Trong hệ toa hãm đều, hai thành phần độ dịch chuyển cùng tỉ lệ t².
        line((1.1,2),(2.5,0),stroke:1.1pt+orange,mark:(end:">"))
        content((1.1,-0.2),[O])
        content((2.5,-0.2),[M])
        line((1.1,-0.55),(2.5,-0.55),stroke:0.6pt,mark:(start:"<",end:">"))
        content((1.8,-0.78),[$Delta x$])
        content((2.3,2.55),[Trong hệ toa hãm đều; phía trước ở bên phải])
      } else if id == "cong-quang" {
        rect((0,0),(7,0.25),stroke:0.8pt,fill:luma(95%))
        for x in range(1,14) {
          line((x*0.48,0.27),(x*0.48,0.43),stroke:0.45pt+blue,mark:(end:">"))
        }
        rect((0.7,0.48),(1.8,0.73),stroke:0.8pt+blue,fill:blue.lighten(85%))
        rect((1.1,0.73),(1.5,1.23),stroke:none,fill:blue)
        content((0.95,1.55),[Tấm chắn, $d$])
        for (x,label) in ((2.7,[A]),(6.1,[B])) {
          line((x - 0.28,0.25),(x - 0.28,1.25),(x+0.28,1.25),(x+0.28,0.25),stroke:1.3pt+orange)
          line((x - 0.26,0.95),(x+0.26,0.95),stroke:dash)
          content((x,1.55),label)
          line((x,0),(x,-0.85),(4.2,-0.85),stroke:0.5pt+luma(50%))
        }
        rect((3.4,-1.4),(5,-0.75),fill:white,stroke:0.7pt)
        content((4.2,-1.07),[Đồng hồ])
        line((2.7,1.9),(6.1,1.9),stroke:0.6pt,mark:(start:"<",end:">"))
        content((4.4,2.15),[$s = "0,50" thin "m"$])
        content((0.8,-0.4),[Khí nâng con trượt])
        vec((1.8,0.8),(2.25,0.8),label:[$bold(v)$],at:(2.03,0.97))
      } else if id == "thung-hang" {
        line((0,0),(5.9,0),stroke:1.3pt+luma(55%))
        rect((0.9,0),(2.7,1.3),stroke:0.8pt+blue,fill:blue.lighten(90%))
        content((1.8,0.65),[$M$])
        line((4.4,0),(4.4,1.8),(5.2,1.8),(5.9,0.7),(5.9,0),stroke:0.8pt)
        content((5.15,0.45),[Cabin])
        vec((3.6,2.15),(5.3,2.15),label:[$bold(v)_0$],at:(4.45,2.3))
        vec((2.4,-0.65),(0.7,-0.65),label:[$bold(a)_("xe")$],at:(1.55,-0.48),color:orange)
      } else if id == "luc-thung" {
        rect((-0.45,-0.35),(0.45,0.35),fill:luma(95%),stroke:0.7pt)
        vec((0,0),(0,1.3),label:[$bold(N)$])
        vec((0,0),(0,-1.3),label:[$bold(P)$],anchor:"north",color:orange)
        vec((0,0),(-1.8,0),label:[$bold(F)_("msn")$],at:(-1.4,0.2),color:orange)
        vec((1,0.6),(2.25,0.6),label:[$bold(v)$],at:(1.6,0.8))
      } else if id == "do-thi-phanh" {
        let stop = 20/3.43
        vec((0,0),(6.6,0),label:[$t$ (s)],anchor:"west",color:black)
        vec((0,0),(0,2.65),label:[$v$ (m/s)],color:black)
        line((0,2.2),(stop,0),stroke:1.2pt+blue)
        content((-0.15,2.2),[20],anchor:"east")
        content((stop,-0.23),[5,83])
        content((-0.15,-0.15),[O])
        content((2.2,0.55),[$s_("min") approx "58,31" thin "m"$])
      } else { panic("Chưa có hình Bài 9: " + id) }
    })
  }
}
```

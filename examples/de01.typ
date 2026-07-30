#import "../vietphys.typ": *
#import "@preview/droplet:0.3.1": dropcap
#import "@preview/fontawesome:0.6.2": *

#show: doc => vp-page-setup(paper: "a4", margin: (x: 2cm, y: 60pt), doc)
// Kích hoạt Theme Heading tự động cho toàn bộ tài liệu
#show: vp-heading-theme-01.with(color: rgb("#5F9E31"), bg-color: rgb("#EAF4DF"))
#set text(font: "Times New Roman", size: 12pt, lang: "vi")

#let current-part = state("current-part", "Phần I - TNKQ")
#set page(
  header: context vp-header-theme-01(
    title: "TÀI LIỆU VẬT LÍ",
    subtitle: "Chuyên đề: Từ trường",
    color: rgb("#1D3B7A"),         
    icon: "bolt",                  
    right-content: current-part.get() 
  ),
  footer: vp-footer-kage(
    color: rgb("#1D3B7A"), 
    kunai-path: "kunai.svg", 
    slogan: "Level Up Your Knowledge"
  )
)

#vp-lesson-title(num: "01", title: "ĐỀ ÔN TẬP SỐ 1", color: rgb("#259697"))

= Câu trắc nghiệm nhiều phương án lựa chọn

// --- Bắt đầu Câu 1 ---
#vp-question(
  [Cho một khung dây quay quanh trục trong vùng từ trường được tạo bởi 2 nam châm. Chọn mốc thời gian ($t = 0$) khi mặt phẳng khung dây song song với chiều của vector cảm ứng từ như hình vẽ. Khi cho khung dây quay quanh trục kể từ mốc thời gian, đồ thị biểu diễn sự biến thiên của từ thông theo thời gian ở hình nào là đúng?],
  type: "mcq",
  level: "TH",
  source: "Sở GD&ĐT Hải Dương 2025",
  image: image("images/cam-ung-dien-tu-04.jpg", width:60%),
  image-side: "bottom",
  options: ([Hình 1], [Hình 2], [Hình 3], [Hình 4]),
  ans: "B",
  sol: [
    Tại thời điểm $t = 0$, mặt phẳng khung dây song song với các đường sức từ nên từ thông qua khung dây bằng 0. Khi khung dây quay đều, từ thông biến thiên điều hòa theo thời gian dạng hình sin bắt đầu từ gốc tọa độ. Do đó đồ thị ở Hình 2 là đúng.
  ]
)

// --- Bắt đầu Câu 2 ---
#vp-question(
  [Một khung dây kín (C) chuyển động trong một vùng từ trường có cảm ứng từ $vec{B}$ như hình vẽ. Dòng điện cảm ứng xuất hiện trong khung dây có chiều ngược chiều kim đồng hồ khi khung dây chuyển động theo hướng nào?],
  type: "mcq",
  level: "TH",
  source: "THPT Nguyễn Khuyến - Lê Thánh Tông - HCM 2025",
  image: image("images/cam-ung-dien-tu-03.jpg"),
  image-side: "right",
  image-ratio: 0.35,
  options: ([Hướng 1.], [Hướng 2.], [Hướng 3 hoặc hướng 4.], [Dòng điện cảm ứng không xuất hiện trong khung dây kín (C) khi khung dây chuyển động trong vùng từ trường theo cả 4 hướng kể trên.]),
  ans: "B",
  sol: [
    Để dòng điện cảm ứng có chiều ngược chiều kim đồng hồ thì từ trường cảm ứng $vec{B}_"cu"$ phải hướng ra ngoài mặt phẳng hình vẽ (ngược chiều với $vec{B}$). Theo định luật Lenz, điều này xảy ra khi từ thông qua khung dây tăng lên. Do đó, khung dây phải dịch chuyển về phía vùng có từ trường mạnh hơn (mật độ đường sức dày hơn), tức là theo Hướng 2.
  ]
)

// --- Bắt đầu Câu 3 ---
#vp-question(
  [Hình bên là một mô hình về chuông điện. Nguyên tắc hoạt động của chuông điện là khi công tắc đóng, từ tính nam châm điện xuất hiện...(1)...thanh kim loại, từ đó búa gõ đập vào...(2)...phát ra âm thanh. Chỗ trống (1) và (2) lần lượt là],
  type: "mcq",
  level: "TH",
  source: "THPT Nguyễn Khuyến - Lê Thánh Tông - HCM 2025",
  image: image("images/chuong-dien-01.jpg"),
  image-side: "right",
  image-ratio: 0.35,
  options: (["đẩy" và "chuông".], ["hút" và "nam châm điện".], ["đẩy" và "thanh kim loại mềm".], ["hút" và "chuông".]),
  ans: "D",
  sol: [
    Khi đóng công tắc, dòng điện chạy qua cuộn dây làm nam châm điện có từ tính, nó hút thanh kim loại mềm làm búa gõ đập vào chuông phát ra âm thanh.
  ]
)

// --- Bắt đầu Câu 4 ---
#vp-question(
  [Một sóng điện từ hình sin lan truyền trong chân không. Tại điểm $M$ trên phương truyền sóng, cường độ điện trường có biểu thức $E_M = E_0 cos(omega t + pi / 6)$ và cảm ứng từ có biểu thức $B_M = B_0 sin(omega t + phi_B)$. Biết $E_0, B_0$ và $omega$ là các hằng số dương. Giá trị $phi_B$ bằng],
  type: "mcq",
  level: "TH",
  source: "THPT Nguyễn Khuyến - Lê Thánh Tông - HCM 2025",
  options: ([$-pi / 6$.], [$2pi / 3$.], [$-pi / 3$.], [$pi / 6$.]),
  ans: "B",
  sol: [
    Trong sóng điện từ, dao động của điện trường và từ trường tại một điểm luôn đồng pha với nhau. Ta có: $B_M = B_0 sin(omega t + phi_B) = B_0 cos(omega t + phi_B - pi / 2)$. Để $E_M$ và $B_M$ đồng pha thì: $phi_B - pi / 2 = pi / 6 arrow.r.double phi_B = 2pi / 3$.
  ]
)

// --- Bắt đầu Câu 5 ---
#vp-question(
  [Một đoạn dây đồng $M N$ thẳng dài $16" cm"$, nặng $80" g"$ được treo ở hai đầu bằng hai sợi dây mềm, rất nhẹ, cách điện sao cho $M N$ nằm ngang. Ban đầu hai sợi dây treo có phương thẳng đứng. Đưa đoạn dây đồng vào trong từ trường đều có cảm ứng từ $B = 0.5" T"$ và các đường sức từ là những đường thẳng đứng hướng lên. Lấy $g = 10" m" / "s"^2$. Cho dòng điện qua dây $M N$ có cường độ $I = 7.5" A"$ thì lực căng mỗi sợi dây treo có độ lớn là],
  type: "mcq",
  level: "TH",
  source: "THPT Nguyễn Khuyến - Lê Thánh Tông - HCM 2025",
  options: ([0,1 N.], [0,5 N.], [0,7 N.], [1,0 N.]),
  ans: "B",
  sol: [
    Trọng lực tác dụng lên dây: $P = m g = 0.08 times 10 = 0.8" N"$. Lực từ tác dụng lên dây: $F = B I L = 0.5 times 7.5 times 0.16 = 0.6" N"$. Vì lực từ vuông góc với trọng lực nên lực căng tổng cộng của hai sợi dây là: $T_"tổng" = sqrt(P^2 + F^2) = sqrt(0.8^2 + 0.6^2) = 1.0" N"$. Lực căng của mỗi sợi dây là: $T = T_"tổng" / 2 = 0.5" N"$.
  ]
)

// --- Bắt đầu Câu 6 ---
#vp-question(
  [Một thanh nam châm được đặt ở giữa hai vành kim loại cứng như hình bên. Hai vành được gắn vào một thanh ray nằm ngang và cách điện với thanh ray. Các vành có thể chuyển động không ma sát trên thanh ray.],
  stem2:[Biết mặt phẳng các vành song song với nhau, vuông góc với nam châm và thanh ray. Nếu dịch chuyển nam châm về bên phải thì các vành sẽ chuyển động thế nào?],
  type: "mcq",
  level: "TH",
  source: "THPT Nguyễn Khuyến - Lê Thánh Tông - HCM 2025",
  image: image("images/thi-nghiem-dien-tu-01.jpg"),
  image-side: "right",
  image-ratio: 0.35,
  options: ([Cả hai vành đứng yên.], [Cả hai vành chuyển động về bên trái.], [Cả hai vành chuyển động về bên phải.], [Vành 1 đứng yên, vành 2 chuyển động về bên phải.]),
  ans: "C",
  sol: [
    Theo định luật Lenz, dòng điện cảm ứng xuất hiện trong các vành có xu hướng chống lại nguyên nhân sinh ra nó (sự dịch chuyển của nam châm). Do đó, cả hai vành đều dịch chuyển theo chiều chuyển động của nam châm (về bên phải) để giảm sự biến thiên từ thông qua chúng.
  ]
)

// --- Bắt đầu Câu 7 ---
#vp-question(
  [Hình vẽ nào dưới đây xác định đúng hướng của vectơ cảm ứng từ tại $M$ gây ra bởi dòng điện $I$ chạy trong dây dẫn thẳng dài vô hạn?],
  type: "mcq",
  level: "TH",
  source: "Sở GD&ĐT Quảng Bình 2025",
  image: image("images/cam-ung-tu-dong-dien-thang-01.jpg"),
  image-side: "bottom",
  options: ([Hình A], [Hình B], [Hình C], [Hình D]),
  ans: "C",
  sol: [
    Sử dụng quy tắc nắm tay phải: Ngón cái chỉ chiều dòng điện (hướng lên), các ngón tay khum lại chỉ chiều của đường sức từ. Tại điểm $M$ nằm bên phải dây dẫn, vectơ cảm ứng từ hướng từ ngoài vào trong mặt phẳng hình vẽ, kí hiệu là $"circle".times$.
  ]
)

// --- Bắt đầu Câu 8 ---
#vp-question(
  [Một khung dây dẫn hình tam giác vuông cân có chiều dài mỗi cạnh góc vuông là $0.2 "m"$ được đặt trong từ trường đều sao cho mặt phẳng khung dây vuông góc với cảm ứng từ. Nếu độ lớn cảm ứng từ biến thiên đều từ $0.3 "T"$ đến $0.1 "T"$ trong thời gian $50 "ms"$ thì suất điện động cảm ứng trong khung có độ lớn bằng bao nhiêu?],
  type: "mcq",
  level: "TH",
  source: "Sở GD&ĐT Quảng Bình 2025",
  options: ([0,24 V.], [0,16 V.], [0,08 V.], [0,12 V.]),
  ans: "C",
  sol: [
    Diện tích tam giác vuông cân: $S = 1/2 times 0.2 times 0.2 = 0.02 "m"^2$. Độ lớn suất điện động cảm ứng: $e_"cu" = S |(Delta B) / (Delta t)| = 0.02 times (|0.1 - 0.3|) / (50 times 10^(-3)) = 0.08 "V"$.
  ]
)

// --- Bắt đầu Câu 9 ---
#vp-question(
  [Một khung dây dẫn hình vuông cạnh $20 "cm"$ nằm trong một từ trường đều có cảm ứng từ $arrow(B)$ sao cho mặt phẳng khung dây vuông góc với các đường sức từ. Biết cảm ứng từ có độ lớn $B = 1.2 "T"$. Từ thông qua khung dây bằng bao nhiêu?],
  type: "mcq",
  level: "TH",
  source: "Sở GD&ĐT Quảng Bình 2025",
  options: ([0 Wb.], [0,151 Wb.], [0,240 Wb.], [0,048 Wb.]),
  ans: "D",
  sol: [
    Diện tích khung dây: $S = 0.2^2 = 0.04 "m"^2$. Vì mặt phẳng khung dây vuông góc với các đường sức từ nên góc giữa pháp tuyến và cảm ứng từ là $0^degree$. Từ thông: $Phi = B S cos(0^degree) = 1.2 times 0.04 = 0.048 "Wb"$.
  ]
)

// --- Bắt đầu Câu 10 ---
#vp-question(
  [Phát biểu nào sau đây đúng về sóng điện từ?],
  type: "mcq",
  level: "NB",
  source: "Sở GD&ĐT Quảng Bình 2025",
  options: ([Là điện từ trường lan truyền trong không gian.], [Có cường độ điện trường $arrow(E)$ và cảm ứng từ $arrow(B)$ cùng chiều nhau.], [Không truyền được trong chân không.], [Là sóng dọc hoặc sóng ngang tùy thuộc vào môi trường truyền sóng.]),
  ans: "A",
  sol: [
    Sóng điện từ là điện từ trường lan truyền trong không gian.
  ]
)

// --- Bắt đầu Câu 11 ---
#vp-question(
  [Một đoạn dây dẫn thẳng dài $0.5 "m"$ mang dòng điện $10 "A"$ được đặt trong một từ trường đều, vuông góc với các đường sức từ. Biết lực từ tác dụng lên dây dẫn là $3 "N"$. Độ lớn cảm ứng từ bằng bao nhiêu?],
  type: "mcq",
  level: "TH",
  source: "Sở GD&ĐT Quảng Bình 2025",
  options: ([1,5 T.], [0,6 T.], [$6,7 dot 10^(-3) "T"$.], [$1,8 dot 10^(3) "T"$.]),
  ans: "B",
  sol: [
    Lực từ $F = I B L sin(90^degree) => B = F / (I L) = 3 / (10 times 0.5) = 0.6 "T"$.
  ]
)

// --- Bắt đầu Câu 12 ---
#vp-question(
  [Một sợi dây dẫn đồng nhất, tiết diện ngang $1 "mm"^2$ điện trở suất $rho = 2 times 10^(-8) "ohm" . "m"$ được uốn thành một vòng tròn kín (như hình vẽ), bán kính $25 "cm"$. Đặt vòng dây nói trên vào một từ trường đều sao cho các đường sức từ vuông góc với mặt phẳng vòng dây. Cảm ứng từ của từ trường biến thiên theo thời gian theo quy luật: $B = k t$, với $t$ tính bằng đơn vị giây (s) và $k = 0,1 "T/s"$. Cường độ dòng điện cảm ứng xuất hiện trong vòng dây dẫn có độ lớn gần nhất với giá trị nào sau đây?],
  type: "mcq",
  level: "VD",
  source: "Chuyên Lam Sơn Thanh Hoá 2025",
  options: ([0,20 A.], [1,25 A.], [0,86 A.], [0,62 A.]),
  ans: "D",
)

// --- Bắt đầu Câu 13 ---
#vp-question(
  [Một Điện áp tức thời giữa hai đầu đoạn mạch điện xoay chiều có biểu thức $u = 220 sqrt(2) cos(100 pi t) ("V")$. Giá trị hiệu dụng của điện áp đó là],
  type: "mcq",
  level: "NB",
  source: "Chuyên Lam Sơn Thanh Hoá 2025",
  options: ([220 sqrt(2) V.], [220 V.], [110 sqrt(2) V.], [440 V.]),
  ans: "B",
  sol: [
    Giá trị hiệu dụng của điện áp: $U = U_0 / sqrt(2) = (220 sqrt(2)) / sqrt(2) = 220 "V"$.
  ]
)

// --- Bắt đầu Câu 14 ---
#vp-question(
  [Một cuộn dây (2) có hai đầu nối vào điện kế (3). Ban đầu kim điện kế chỉ vạch số 0. Khi cho một thanh nam châm (1) tịnh tiến lại gần cuộn dây (2) thì thấy kim của điện kế (3) lệch đi. Kim điện kế đó bị lệch là do hiện tượng],
  type: "mcq",
  level: "NB",
  source: "Chuyên Lam Sơn Thanh Hoá 2025",
  image: image("images/thi-nghiem-cam-ung-dien-tu-01.jpg"),
  image-side: "right",
  image-ratio: 0.35,
  options: ([nhiễm điện do hưởng ứng.], [cảm ứng điện từ.], [siêu dẫn.], [dẫn điện tự lực.]),
  ans: "B",
  sol: [
    Khi nam châm tịnh tiến lại gần cuộn dây, từ thông qua cuộn dây biến thiên sinh ra dòng điện cảm ứng làm kim điện kế lệch. Đây là hiện tượng cảm ứng điện từ.
  ]
)

// --- Bắt đầu Câu 15 ---
#vp-question(
  [Một Rôto của máy phát điện xoay chiều một pha là một khung dây phẳng quay đều xung quanh một trục nằm trong mặt phẳng của khung dây và vuông góc với các đường sức từ trong trường của stato, khoảng thời gian giữa hai lần liên tiếp suất điện động cảm ứng trong khung dây có độ lớn cực đại đúng bằng thời gian khung quay được],
  type: "mcq",
  level: "TH",
  source: "Chuyên Lam Sơn Thanh Hoá 2025",
  image: image("images/may-phat-dien-don-gian.jpg"),
  image-side: "right",
  image-ratio: 0.35,
  options: ([một vòng.], [hai vòng.], [một nửa vòng.], [một phần tư vòng.]),
  ans: "C",
  sol: [
    Suất điện động cảm ứng biến thiên điều hòa theo thời gian. Trong một chu kỳ $T$ (khung quay một vòng), suất điện động đạt độ lớn cực đại 2 lần. Khoảng thời gian giữa hai lần liên tiếp suất điện động đạt cực đại là $T / 2$, tương ứng khung quay được một nửa vòng.
  ]
)

// --- Bắt đầu Câu 16 ---
#vp-question(
  [Một đoạn dây dẫn có dòng điện chạy qua được đặt trong một từ trường đều. Lực từ tác dụng lên dây dẫn mạnh nhất khi góc hợp giữa dây dẫn và các đường sức từ bằng],
  type: "mcq",
  level: "NB",
  source: "Chuyên Lam Sơn Thanh Hoá 2025",
  options: ([0°.], [180°.], [60°.], [90°.]),
  ans: "D",
  sol: [
    Lực từ $F = I B L sin(alpha)$ đạt cực đại khi $sin(alpha) = 1 => alpha = 90^degree$.
  ]
)

// --- Bắt đầu Câu 17 ---
#vp-question(
  [Khi chụp cộng hưởng từ, để máy ghi nhận thông tin chính xác và tránh nguy hiểm, phải bỏ trang sức kim loại khỏi cơ thể người bệnh. Giả sử có một vòng kim loại nằm trong máy sao cho mặt phẳng của vòng vuông góc với cảm ứng từ của từ trường do máy tạo ra khi chụp. Biết bán kính và điện trở của vòng này lần lượt là $3.9 "cm"$ và $0.010 Omega$. Nếu trong $0.40 "s"$, độ lớn của cảm ứng từ này giảm đều từ $1.80 "T"$ xuống $0.20 "T"$ thì cường độ dòng điện trong vòng kim loại này là],
  type: "mcq",
  level: "VD",
  source: "Đề Minh hoạ Vật Lí 2025",
  options: ([7,6 A.], [1,9 A.], [8,5 A.], [3,8 A.]),
  ans: "B",
)

// --- Bắt đầu Câu 18 ---
#vp-question(
  [Khi nói về từ trường, phát biểu nào sau đây sai?],
  type: "mcq",
  level: "NB",
  source: "Đề Minh hoạ Vật Lí 2025",
  options: ([Từ trường là trường lực gây ra bởi dòng điện hoặc nam châm.], [Cảm ứng từ tại một điểm đặc trưng cho từ trường về mặt tác dụng lực tại điểm đó.], [Từ trường tác dụng lực từ lên một dòng điện hay một nam châm đặt trong nó.], [Phương của lực từ tại một điểm trùng với phương tiếp tuyến của đường sức từ tại điểm đó.]),
  ans: "D",
  sol: [
    Phương của lực từ tác dụng lên dòng điện luôn vuông góc với phương của cảm ứng từ (phương tiếp tuyến của đường sức từ) tại điểm đó.
  ]
)

// --- Bắt đầu Câu 19 ---
#vp-question(
  [Bốn đoạn dây dẫn a, b, c, d có cùng chiều dài được đặt trong từ trường đều (hình bên). Các dòng điện chạy trong bốn đoạn dây dẫn này có cùng cường độ I. Lực từ tác dụng lên đoạn dây dẫn nào là mạnh nhất?],
  type: "mcq",
  level: "TH",
  source: "Đề Minh hoạ Vật Lí 2025",
  image: image("images/bai-tap-luc-tu-01.jpg"),
  image-side: "right",
  image-ratio: 0.35,
  options: ([Đoạn a.], [Đoạn b.], [Đoạn c.], [Đoạn d.]),
  ans: "A",
  sol: [
    Lực từ tác dụng lên đoạn dây dẫn: $F = B I ell sin alpha$. Đoạn dây a vuông góc với các đường sức từ ($alpha = 90^degree$) nên lực từ tác dụng lên nó là lớn nhất ($F_"max" = B I ell$).
  ]
)

// --- Bắt đầu Câu 20 ---
#vp-question(
  [Một khung dây dẫn phẳng có diện tích $S$, gồm $N$ vòng dây quay đều với tốc độ góc $omega$ quanh trục cố định vuông góc với cảm ứng từ $arrow(B)$ của từ trường đều (hình bên). Suất điện động cực đại xuất hiện trong khung dây nói trên là],
  type: "mcq",
  level: "NB",
  source: "Đề Minh hoạ Vật Lí 2025",
  image: image("images/may-phat-dien-don-gian.jpg"),
  image-side: "right",
  image-ratio: 0.35,
  options: ([$E_0 = N B S$], [$E_0 = (N B S) / R$], [$E_0 = N B S omega$], [$E_0 = (N B S omega) / R$]),
  ans: "C",
  sol: [
    Suất điện động cực đại xuất hiện trong khung dây quay đều trong từ trường đều là $E_0 = N B S omega$.
  ]
)

// --- Bắt đầu Câu 21 ---
#vp-question(
  [Một khung dây dẫn phẳng có diện tích $S$, gồm $N$ vòng dây quay đều với tốc độ góc $omega$ quanh trục cố định vuông góc với cảm ứng từ $arrow(B)$ của từ trường đều (hình bên). Nối hai đầu khung dây với điện trở $R$ thành một mạch kín, trong mạch sẽ],
  type: "mcq",
  level: "NB",
  source: "Đề Minh hoạ Vật Lí 2025",
  image: image("images/may-phat-dien-don-gian.jpg"),
  image-side: "right",
  image-ratio: 0.35,
  options: ([xuất hiện dòng điện không đổi.], [không xuất hiện dòng điện.], [xuất hiện dòng điện xoay chiều.], [xuất hiện dòng điện có cường độ lớn dần.]),
  ans: "C",
  sol: [
    Khi khung dây quay đều quanh trục vuông góc với từ trường đều, từ thông qua khung biến thiên điều hòa làm xuất hiện suất điện động xoay chiều và dòng điện xoay chiều trong mạch.
  ]
)

// --- Bắt đầu Câu 22 ---
#vp-question(
  [Độ lớn suất điện động cảm ứng được xác định bằng định luật nào trong các định luật sau đây?],
  type: "mcq",
  level: "NB",
  source: "Đề thi chính thức của BG&ĐT 2025",
  options: ([Định luật Ohm cho vật dẫn kim loại.], [Định luật Coulomb về tương tác điện.], [Định luật Lenz về cảm ứng điện từ.], [Định luật Faraday về cảm ứng điện từ.]),
  ans: "D",
  sol: [
    Độ lớn suất điện động cảm ứng được xác định bằng định luật Faraday về cảm ứng điện từ: $e_"cu" = |(Delta Phi) / (Delta t)|$.
  ]
)

// --- Bắt đầu Câu 23 ---
#vp-question(
  [Khi nói về từ trường, phát biểu nào sau đây là đúng?],
  type: "mcq",
  level: "NB",
  source: "Đề thi chính thức của BG&ĐT 2025",
  options: ([Từ trường tác dụng lực từ lên một điện tích đứng yên ở trong đó.], [Từ trường tác dụng lực từ lên một nam châm đặt trong đó.], [Một dòng điện tạo ra một từ trường đều xung quanh nó.], [Một kim nam châm tạo ra một từ trường đều xung quanh nó.]),
  ans: "B",
  sol: [
    Từ trường tác dụng lực từ lên nam châm hoặc dòng điện đặt trong nó. Điện tích đứng yên không chịu tác dụng của lực từ.
  ]
)

// --- Bắt đầu Câu 24 ---
#vp-question(
  [Một đoạn dây dẫn thẳng có chiều dài $ell$ mang dòng điện có cường độ $I$ được đặt trong từ trường đều với góc hợp bởi chiều dòng điện và chiều cảm ứng từ của từ trường là $alpha$. Lực từ do từ trường này tác dụng lên đoạn dây có độ lớn là $F$. Độ lớn cảm ứng từ $B$ của từ trường là],
  type: "mcq",
  level: "NB",
  source: "Đề thi chính thức của BG&ĐT 2025",
  options: ([$B = F / (I ell tan alpha)$], [$B = F / (I ell sin alpha)$], [$B = F / (I ell cot alpha)$], [$B = F / (I ell cos alpha)$]),
  ans: "B",
  sol: [
    Công thức lực từ tác dụng lên đoạn dây dẫn thẳng: $F = B I ell sin alpha$. Suy ra độ lớn cảm ứng từ là $B = F / (I ell sin alpha)$.
  ]
)

#current-part.update("Phần II - Đúng/Sai")
= Câu trắc nghiệm đúng sai

// --- Bắt đầu Câu 1 ---
#vp-question(
  [Nguyên lý Binary-Deflection là một trong các nguyên lý của máy in phun mực. Các giọt mực được tạo ra bay qua giữa hai điện cực. Tại đây, những giọt mực sẽ được tích điện hoặc không tích điện và tiếp tục bay ngang qua hai bản kim loại được nối với điện thế cao (như hình).

Những giọt mực được tích điện (loại A) sẽ bị lệch hướng bay dưới tác dụng của điện trường để đi tới máng chặn mực và theo lòng máng trở về bình chứa mực.
Những giọt mực không được tích điện (loại C) sẽ không bị tác dụng của điện trường nên bay thẳng (phương $O x$) tới bề mặt giấy.

Xét một giọt mực loại A có khối lượng $m = 3,6 dot 10^(-10) "kg"$ được tích điện có độ lớn $q = 1,8 dot 10^(-13) "C"$ đi vào vùng không gian giữa hai bản lái tia của một máy in phun mực. Ban đầu giọt mực chuyển động theo phương $O x$ (song song với các bản) với tốc độ $20 "m/s"$. Chiều dài $L$ của các bản bằng $2 "cm"$. Các bản được tích điện, điện trường giữa các bản được xem là đều và ngược hướng trục $O y$, có độ lớn $4 dot 10^6 "V/m"$. Giả sử trọng lực tác dụng lên giọt mực in và electron là không đáng kể.],
  type: "tf",
  level: "VDC",
  source: "THPT Nguyễn Khuyến - Lê Thánh Tông - HCM 2025",
  image: image("images/so-do-may-in-phun-01.jpg"),
  image-side: "bottom",
  image-ratio: 0.4,
  statements: ([Giọt mực loại A được tích điện âm.], [Quỹ đạo của giọt mực loại A trong vùng không gian giữa hai bản lái tia là một cung tròn.], [Độ dịch chuyển theo phương Oy của giọt mực loại A tính từ lúc đi vào giữa hai bản lái tia đến khi vừa ra khỏi vùng giữa hai bản bằng $0.75" m m"$.], [Giả sử trong quá trình tạo ra các giọt mực có phát ra một electron. Ban đầu electron chuyển động theo phương Ox với tốc độ $5 dot 10^6" m" / "s"$. Để quỹ đạo của electron và giọt mực loại C trùng nhau thì phải đặt thêm giữa hai bản lái tia một từ trường có độ lớn cảm ứng từ bằng $1.25" T"$. Biết trong bài toán này lực từ tác dụng lên hạt mang điện tích q chuyển động với tốc độ v trong từ trường cảm ứng từ B có độ lớn $F = |q| v B$.]),
  ans-tf: ("Đ", "S", "S", "Đ"),
)

// --- Bắt đầu Câu 2 ---
#vp-question(
  [Hình vẽ bên cho thấy đồ thị biểu diễn sự biến thiên của nhiệt độ $t$ theo thời gian $tau$ trong quá trình nung nóng một thỏi chì có khối lượng $1" kg"$. Biết nhiệt dung riêng của chì là $130" J" / ("kg" dot "K")$.],
  type: "tf",
  level: "VD",
  source: "Sở GD&ĐT Quảng Bình 2025",
  image: image("images/do-thi-nhiet-01.jpg"),
  image-side: "right",
  image-ratio: 0.35,
  statements: ([Nội năng của chì tăng $31200" J"$ trong $12$ phút đầu nung nóng.], [Tại điểm $B$ trên đồ thị chỉ ở trạng thái lỏng.], [Nhiệt độ nóng chảy của chì là $327^degree"C"$.], [Khi chì chuyển từ trạng thái $B$ sang trạng thái $C$, nội năng của chì thay đổi.]),
  ans-tf: ("S", "S", "Đ", "Đ"),
)

// --- Bắt đầu Câu 3 ---
#vp-question(
  [Trong quá trình phanh của xe ô tô điện, động cơ có thể được tự động chuyển sang chế độ phát điện. Trong khi tạo ra hiệu ứng phanh, một phần cơ năng xe được chuyển thành điện năng và được tích trữ trong thiết bị tích trữ điện năng, hạn chế sự tỏa nhiệt đồng thời tích trữ thêm điện năng.],
  stem2: [Trong hình vẽ bên, máy phát điện được đơn giản hóa thành một khung dây dẫn hình vuông một vòng $A B C D$, có điện trở không đáng kể, đặt trong từ trường đều giữa hai cực nam châm. Chiều dài cạnh của khung là $L$, cảm ứng từ $B$ trục $O O'$ của khung dây vuông góc với các đường sức từ và cách đều các cạnh $A B$ và $C D$. Khung dây được kết nối với bộ tích trữ năng lượng.],
  type: "tf",
  level: "VDC",
  source: "Sở GD&ĐT Quảng Bình 2025",
  image: image("images/cam-ung-dien-tu-02.jpg"),
  image-side: "right",
  image-ratio: 0.35,
  statements: ([Trong hình vẽ, chiều của các đường sức từ là chiều từ phải sang trái.], [Chiều quay của khung dây được thể hiện ở hình vẽ. Chiều dòng điện chạy trong cạnh $C D$ là chiều từ $D$ đến $C$.], [Nếu khung dây quay với tốc độ góc không đổi $omega$, chọn $t = 0$ tại thời điểm pháp tuyến của mặt phẳng khung dây cùng phương, ngược chiều với các đường sức từ. Suất điện động cảm ứng do cạnh $A B$ tạo ra tại thời điểm $t$ là $e = omega B L^2 cos(omega t + pi)$.], [Giả sử sự thay đổi bộ tích trữ năng lượng bằng điện trở $R$ và tốc độ quay của khung trong vòng quay đầu tiên không đổi và bằng $omega_0$, nhiệt lượng tỏa ra trên $R$ bằng $50\%$ độ giảm động năng của xe. Sau một vòng quay đầu tiên của khung, động năng của xe giảm một lượng bằng $(pi omega_0 B^2 L^4) / R$.]),
  ans-tf: ("S", "Đ", "S", "Đ"),
)

// --- Bắt đầu Câu 4 ---
#vp-question(
  [Một đoạn dây dẫn $A B$ được treo trên những sợi dây đồng mảnh, nhẹ, không dãn, và được kết nối với nguồn điện một chiều như hình vẽ bên. Ngay sát bên phải của đoạn dây dẫn là cực bắc của nam châm vĩnh cửu. Ở vị trí của đoạn dây, các đường sức từ do nam châm gây ra có phương nằm ngang. Thanh trượt biến trở được di chuyển nhẹ nhàng sang bên trái.],
  type: "tf",
  level: "VD",
  source: "Sở GD&ĐT Quảng Bình 2025",
  image: image("images/cam-ung-dien-tu-01.jpg"),
  image-side: "right",
  image-ratio: 0.35,
  statements: ([Điện trở của biến trở tăng dần.], [Cường độ dòng điện chạy qua đoạn dây dẫn $A B$ giảm dần.], [Lực từ tác dụng vào dây dẫn $A B$ có độ lớn giảm dần.], [Lực căng của các sợi dây treo dây dẫn $A B$ giảm dần.]),
  ans-tf: ("S", "S", "S", "S"),
)

// --- Bắt đầu Câu 5 ---
#vp-question(
  [Một máy khối phổ dùng để phân tích các ion trong một mẫu vật. Các ion sau khi được tạo ra ở buồng ion hóa sẽ được tăng tốc bởi hiệu điện thế $U$, sau đó đi vào vùng từ trường đều có cảm ứng từ $arrow(B)$ vuông góc với vận tốc của hạt. Lực từ tác dụng lên hạt có độ lớn $F = B v |q|$, có phương vuông góc với cảm ứng từ $arrow(B)$ và với vận tốc $arrow(v)$ của hạt. Bán kính quỹ đạo tròn của hạt trong vùng có từ trường là $r$. Dựa trên tỉ số $(|q|)/m$, có thể xác định được các chất trong mẫu.],
  type: "tf",
  level: "VD",
  source: "Đề minh hoạ Vật Lý 2025",
  image: image("images/so-do-quang-pho-khoi-01.jpg", width:60%),
  image-side: "bottom",
  statements: ([Tốc độ của hạt bị thay đổi do tác dụng của từ trường trong máy.], [Bỏ qua tốc độ ban đầu của hạt. Sau khi được tăng tốc bởi hiệu điện thế $U$, tốc độ của hạt là $v = sqrt((2 |q| U) / m)$.], [Tỉ số giữa độ lớn điện tích và khối lượng của hạt là $ (|q|) / m = (2U) / (B r^2) $.], [Biết $U = 3.00 "kV"$; $B = 3.00 "T"$; $1 "amu" = 1.66 times 10^(-27) "kg"$; $|e| = 1.60 times 10^(-19) "C"$. Bán kính quỹ đạo của ion âm $""^35 "Cl"^-$ trong vùng có từ trường là $r = 0.0156 "m"$.]),
  ans-tf: ("S", "Đ", "Đ", "Đ"),
)

// --- Bắt đầu Câu 6 ---
#vp-question(
  [Một nam châm được đặt trên cân. Một đoạn dây dẫn cứng được giữ cố định, nằm ngang, vuông góc với các đường sức từ của từ trường đều giữa hai cực của nam châm (hình bên). Cảm ứng từ $arrow(B)$ của từ trường có phương nằm ngang và có độ lớn là $B$. Chiều dài của phần dây dẫn $P Q$ nằm trong vùng từ trường đều giữa hai cực của nam châm là $ell$. Ban đầu, chưa có dòng điện chạy qua dây dẫn, cân chỉ một giá trị xác định. Sau đó, cho dòng điện không đổi với cường độ $I$ chạy trong dây dẫn theo chiều từ $P$ đến $Q$. Bỏ qua ảnh hưởng của từ trường Trái Đất.],
  type: "tf",
  level: "VD",
  source: "Đề thi chính thức của BG&ĐT 2025",
  image: image("images/thi-nghiem-luc-tu-01.jpg"),
  image-side: "right",
  image-ratio: 0.35,
  statements: ([Lực từ do từ trường tác dụng lên đoạn dây PQ hướng thẳng đứng lên trên.], [Cân chỉ giá trị lớn hơn giá trị ban đầu.], [Cảm ứng từ $arrow(B)$ có hướng từ cực N sang cực S của nam châm.], [Lực từ do từ trường tác dụng lên đoạn dây PQ có độ lớn là $B I ell$.]),
  ans-tf: ("S", "S", "Đ", "Đ"),
)
#current-part.update("Phần III - Trả lời ngắn")

// --- Bắt đầu Câu 7 ---
#vp-question(
  [Sóng điện từ được ứng dụng nhiều trong thông tin liên lạc. Xét các phát biểu sau đây về sóng điện từ:],
  type: "tf",
  level: "TH",
  source: "Đề thi chính thức của BG&ĐT 2025",
  statements: ([Giả sử tại một điểm có sóng điện từ truyền qua theo phương thẳng đứng hướng lên trên, nếu cảm ứng từ có hướng nam - bắc thì cường độ điện trường có hướng đông - tây.], [Không thể tạo ra hiện tượng giao thoa đối với sóng điện từ.], [Tại một điểm có sóng điện từ truyền qua, cường độ điện trường và cảm ứng từ luôn dao động ngược pha.], [Sóng điện từ là sóng ngang.]),
  ans-tf: ("S", "S", "S", "Đ"),
  sol: [
    - Ý a đúng: Theo quy tắc tam diện thuận, nếu phương truyền sóng hướng lên, cảm ứng từ hướng nam - bắc thì cường độ điện trường hướng tây - đông.
- Ý b sai: Sóng điện từ có đầy đủ tính chất sóng nên có thể giao thoa.
- Ý c sai: Cường độ điện trường và cảm ứng từ luôn dao động cùng pha.
- Ý d đúng: Sóng điện từ là sóng ngang.
  ]
)
= [Câu trắc nghiệm trả lời ngắn

// --- Bắt đầu Câu 1 ---
#vp-question(
  [Để đo cảm ứng từ giữa hai cực của một nam châm điện người ta đặt vào đó một cuộn dây có $N = 100$ vòng, diện tích mỗi vòng $S = 2" cm"^2$. Trục của cuộn dây song song với các đường sức từ. Cuộn dây được nối kín với một điện kế xung kích (dùng để đo điện lượng phóng qua khung dây của điện kế). Điện trở của điện kế $R = 2" k"Omega$. Bỏ qua điện trở cuộn dây. Cảm ứng từ giữa hai cực của nam châm có độ lớn bằng bao nhiêu tesla (làm tròn kết quả đến chữ số hàng phần trăm)? Biết rằng khi rút nhanh cuộn dây ra khỏi nam châm thì khung dây của điện kế lệch đi một góc $alpha$ ứng với $40$ vạch trên thước chia của điện kế. Cho biết mỗi vạch ứng với điện lượng phóng qua khung dây điện kế bằng $10" nC"$.],
  type: "short",
  level: "VD",
  source: "THPT Nguyễn Khuyến - Lê Thánh Tông - HCM 2025",
  ans: "0,04",
)

// --- Bắt đầu Câu 2 ---
#vp-question(
  [Một khung dây dẫn gồm $N$ vòng dây đặt trong từ trường. Khi tốc độ biến thiên từ thông qua diện tích giới hạn bởi một vòng dây của khung là $0.04" Wb" / "s"$ thì trong khung dây xuất hiện suất điện động cảm ứng có độ lớn $20" V"$. Tính số vòng dây (làm tròn kết quả đến chữ số hàng đơn vị).],
  type: "short",
  level: "TH",
  source: "Sở GD&ĐT Quảng Bình 2025",
  ans: "500",
  sol: [
    Suất điện động cảm ứng xuất hiện trong khung dây là: $e_"tc" = N |(d Phi) / (d t)| arrow.r.double 20 = N dot 0.04 arrow.r.double N = 500$ vòng.
  ]
)

// --- Bắt đầu Câu 3 ---
#vp-question(
  [Một đoạn dây dẫn thẳng có chiều dài $0.2" m"$ được đặt vuông góc với các đường sức của từ trường đều có cảm ứng từ $3" mT"$. Cho dòng điện có cường độ $2" mA"$ chạy qua đoạn dây dẫn này thì độ lớn lực từ tác dụng lên dây dẫn là bao nhiêu $mu"N"$? (làm tròn đến một chữ số sau dấu phẩy).],
  type: "short",
  level: "NB",
  source: "Sở GD&ĐT Quảng Bình 2025",
  ans: "1,2",
  sol: [
    Độ lớn lực từ tác dụng lên đoạn dây dẫn thẳng là: $F = B I L sin(90^degree) = 3 dot 10^{-3} dot 2 dot 10^{-3} dot 0.2 dot 1 = 1.2 dot 10^{-6}" N" = 1.2\ mu"N"$.
  ]
)

// --- Bắt đầu Câu 4 ---
#vp-question(
  [Dưới đây là mô hình loa điện động và đồ thị điện áp của tín hiệu được đưa vào loa. Nếu nối hai điểm nối tín hiệu vào loa với điện áp biểu diễn như hình bên thì âm do loa phát ra có tần số là bao nhiêu Hz? (làm tròn kết quả đến chữ số hàng phần mười)],
  type: "short",
  level: "VD",
  source: "Chuyên Lam Sơn Thanh Hoá 2025",
  image: image("images/mo-hinh-loa-01.jpg"),
  image-side: "bottom",
  image-ratio: 0.4,
  ans: "50",
)

// --- Bắt đầu Câu 5 ---
#vp-question(
  [Một đoạn dây dẫn nằm ngang được giữ cố định ở vùng từ trường đều trong khoảng không gian giữa hai cực của nam châm (hình vẽ). Nam châm này được đặt trên một cái cân. Phần nằm trong từ trường của đoạn dây có chiều dài $1.0 "cm"$. Khi không có dòng điện chạy trong đoạn dây, số chỉ cân là $500.68 "g"$. Khi có dòng điện cường độ $0.34 "A"$ chạy trong đoạn dây, số chỉ của cân là $500.12 "g"$. Lấy $g = 9.8 "m" / "s"^2$. Độ lớn cảm ứng từ giữa hai cực của nam châm là bao nhiêu T? (làm tròn kết quả đến chữ số hàng phần trăm)],
  type: "short",
  level: "VD",
  source: "Chuyên Lam Sơn Thanh Hoá 2025",
  image: image("images/thi-nghiem-luc-tu-01.jpg"),
  image-side: "right",
  image-ratio: 0.35,
  ans: "1.61",
)

// --- Bắt đầu Câu 6 ---
#vp-question(
  [Một dây dẫn thẳng nằm ngang, được dùng để truyền tải dòng điện xoay chiều đi xa. Cường độ dòng điện hiệu dụng trong dây dẫn này là $106 "A"$. Tại khu vực dây dẫn đi qua, thành phần nằm ngang của cảm ứng từ của từ trường Trái Đất (có độ lớn $B = 1.8 times 10^(-5) "T"$) tạo với dây dẫn một góc sao cho lực từ do thành phần nằm ngang này tác dụng lên mỗi mét chiều dài dây dẫn có thời điểm đạt độ lớn cực đại. Độ lớn cực đại này là bao nhiêu miliniuton (làm tròn kết quả đến chữ số hàng phần mười)?],
  type: "short",
  level: "TH",
  source: "Đề Minh hoạ Vật Lí 2025",
  ans: "2.7",
  sol: [
    Lực từ cực đại tác dụng lên mỗi mét chiều dài dây dẫn khi cường độ dòng điện đạt cực đại $I_0$ và góc giữa dây dẫn và cảm ứng từ là $90^degree$: $F_"max" = I_0 B L sin(90^degree) = (106 sqrt(2)) times (1.8 times 10^(-5)) times 1 approx 2.7 times 10^(-3) "N" = 2.7 "mN"$.
  ]
)

// --- Bắt đầu Câu 7 ---
#vp-question(
  [Một dây dẫn thẳng nằm ngang, được dùng để truyền tải dòng điện xoay chiều đi xa. Cường độ dòng điện hiệu dụng trong dây dẫn này là $106 "A"$. Cường độ dòng điện cực đại trong dây dẫn trên là bao nhiêu ampe (làm tròn kết quả đến chữ số hàng đơn vị)?],
  type: "short",
  level: "NB",
  source: "Đề Minh hoạ Vật Lí 2025",
  ans: "150",
  sol: [
    Cường độ dòng điện cực đại: $I_0 = I sqrt(2) = 106 times sqrt(2) approx 149.9 "A"$. Làm tròn đến hàng đơn vị là $150$.
  ]
)

// --- Bắt đầu Câu 8 ---
#vp-question(
  [Một khung dây dẫn phẳng, kín có diện tích $2.83 . 10^(-4) "m"^2$, gồm 22 vòng dây đặt trong từ trường đều sao cho cảm ứng từ $arrow(B)$ vuông góc với mặt phẳng khung dây. Trong $0.750 "s"$, độ lớn cảm ứng từ của từ trường tăng đều từ $0.100 "T"$ đến $0.600 "T"$. Biết điện trở của khung dây là $0.260 Omega$. Nhiệt lượng tỏa ra trên khung dây trong khoảng thời gian từ trường biến thiên là $x . 10^(-5) "J"$. Tìm $x$ (làm tròn kết quả đến chữ số hàng phần trăm).],
  type: "short",
  level: "TH",
  source: "Đề thi chính thức của BG&ĐT 2025",
  ans: "4,97",
  sol: [
    Nhiệt lượng tỏa ra trên khung dây: $Q = (e_"cu"^2 / R) . Delta t = ((4.1507 . 10^(-3))^2 / 0.260) . 0.750 approx 4.97 . 10^(-5) "J"$. Do đó $x = 4.97$.
  ]
)

// --- Bắt đầu Câu 9 ---
#vp-question(
  [Một khung dây dẫn phẳng, kín có diện tích $2.83 . 10^(-4) "m"^2$, gồm 22 vòng dây đặt trong từ trường đều sao cho cảm ứng từ $arrow(B)$ vuông góc với mặt phẳng khung dây. Trong $0.750 "s"$, độ lớn cảm ứng từ của từ trường tăng đều từ $0.100 "T"$ đến $0.600 "T"$. Độ lớn suất điện động cảm ứng trong khung dây là $x . 10^(-3) "V"$. Tìm $x$ (làm tròn kết quả đến chữ số hàng phần trăm).],
  type: "short",
  level: "TH",
  source: "Đề thi chính thức của BG&ĐT 2025",
  ans: "4,15",
  sol: [
    Suất điện động cảm ứng xuất hiện trong khung dây: $e_"cu" = N |(Delta Phi) / (Delta t)| = N S |(Delta B) / (Delta t)| = 22 . (2.83 . 10^(-4)) . (0.600 - 0.100) / 0.750 approx 4.15 . 10^(-3) "V"$. Do đó $x = 4.15$.
  ]
)
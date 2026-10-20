#import "../../vietphys.typ": *
#import "../hinh/so-do-vat-li.typ": ve




#vp-q-counter.update(0)
#vp-set-question-style(prefix: "Bài", lines: 0)

// source-id: P1/4.1; pdf: 15
#vp-question(
  [
Xem mây và mặt đất là tụ phẳng, diện tích $A=1.0 thin "km"^2$, cách nhau $d=800 thin "m"$.
  ],
  type: "essay",
  num-style: _ => "4.1",
  source: [PDF gốc, trang 15],
  listEs: (
    [Tính điện dung.],
    [Không khí đánh thủng ở $E_("max")=3.0 times 10^6 thin "V/m"$; tính điện tích tối đa.],
  ),
  sol: [
(a) Đổi $A=10^6 thin "m"^2$. $C=epsilon_0 A/d=1.11 times 10^(-8) thin "F"=11.1 thin "nF"$.

(b) $U_("max")=E_("max")d=2.4 times 10^9 thin "V"$, nên $Q_("max")=C U_("max")=epsilon_0 A E_("max")=26.6 thin "C"$. Đây là ước tính theo mô hình tụ phẳng của đề.
  ],
)

// source-id: P1/4.2; pdf: 15
#vp-question(
  [
Tụ trong chip có $C=60.0 times 10^(-15) thin "F"$, diện tích mỗi bản $A=21.0 times 10^(-12) thin "m"^2$. Tìm khoảng cách bản, biểu diễn bằng ångström ($1 thin "Å"=10^(-10) thin "m"$).
  ],
  type: "essay",
  num-style: _ => "4.2",
  source: [PDF gốc, trang 15],
  sol: [
Đề chưa cho điện môi; giả sử chân không hoặc không khí. Từ $C=epsilon_0 A/d$,
$ d=epsilon_0 A/C=3.10 times 10^(-9) thin "m"=31.0 thin "Å". $
Nếu có điện môi tương đối $kappa$, cùng $C,A$ thì $d=kappa epsilon_0 A/C$; không thể xác định số duy nhất khi chưa biết $kappa$.
  ],
)

// source-id: P1/4.3; pdf: 15
#vp-question(
  [
Các tấm lệch của dao động ký là hai bản vuông cạnh $3.0 thin "cm"$, cách $5.0 thin "mm"$ trong chân không. Tìm điện dung.
  ],
  type: "essay",
  num-style: _ => "4.3",
  source: [PDF gốc, trang 15],
  sol: [
Bỏ qua hiệu ứng mép:
$ C=epsilon_0 A/d=(8.854 times 10^(-12) times 0.030^2)/0.0050=1.59 times 10^(-12) thin "F"=1.59 thin "pF". $
  ],
)

// source-id: P1/4.4; pdf: 15
#vp-question(
  [
Màng tế bào dày $d=7.5 thin "nm"$, hằng số điện môi tương đối $kappa=10$.
  ],
  type: "essay",
  num-style: _ => "4.4",
  source: [PDF gốc, trang 15],
  listEs: (
    [Tính điện dung trên $1 thin "cm"^2$.],
    [Với hiệu điện thế $85 thin "mV"$, tìm điện trường trong màng.],
  ),
  sol: [
(a) $C/A=kappa epsilon_0/d=0.0118 thin "F/m"^2$. Trên diện tích $10^(-4) thin "m"^2$, $C=1.18 times 10^(-6) thin "F"$; điện dung riêng là $1.18 thin "μF/cm"^2$.

(b) $E=U/d=0.085/(7.5 times 10^(-9))=1.13 times 10^7 thin "V/m"$. Điện môi ảnh hưởng quan hệ giữa điện tích và điện trường, còn với $U,d$ đã biết vẫn có $E=U/d$.
  ],
)

// source-id: P1/4.5; pdf: 15–16
#vp-question(
  [
Mô hình hồng cầu hình cầu: $m=1.00 times 10^(-12) thin "kg"$, mật độ $rho=1100 thin "kg/m"^3$, màng dày $t=100 thin "nm"$, $kappa=5.00$, $U=100 thin "mV"$.
  ],
  type: "essay",
  num-style: _ => "4.5",
  source: [PDF gốc, trang 15–16],
  listEs: (
    [Tìm thể tích, diện tích mặt.],
    [Xấp xỉ màng như tụ phẳng, tính $C$.],
    [Tính độ lớn điện tích trên mỗi mặt và số điện tích nguyên tố tương đương.],
  ),
  sol: [
(a) $V=m/rho=9.09 times 10^(-16) thin "m"^3$. Với $V=4 pi r^3/3$,
$ r=(3V/(4 pi))^(1/3)=6.01 thin "μm", quad A=4 pi r^2=4.54 times 10^(-10) thin "m"^2. $
(b) Vì $t/r approx 0.0166$ nhỏ, dùng $C=kappa epsilon_0 A/t=2.01 times 10^(-13) thin "F"$.

(c) $abs(Q)=C U=2.01 times 10^(-14) thin "C"$, $N=abs(Q)/e approx 1.26 times 10^5$. Hai mặt có điện tích đối dấu; đây là số điện tích nguyên tố tương đương trên một mặt, không phải tổng điện tích thuần của cả tụ.
  ],
)

// source-id: P1/4.6; pdf: 16
#vp-question(
  [
Cầu kim loại cô lập $R=1 thin "m"$, $q=10^(-6) thin "C"$. Tìm điện dung, điện thế và năng lượng tĩnh điện.
  ],
  type: "essay",
  num-style: _ => "4.6",
  source: [PDF gốc, trang 16],
  sol: [
Lấy mốc thế ở vô cực. $V=k q/R$, do đó $C=q/V=4 pi epsilon_0 R=1.11 times 10^(-10) thin "F"$.
$ V=8.99 times 10^3 thin "V", quad W=q V/2=k q^2/(2R)=4.50 times 10^(-3) thin "J". $
Hệ số $1/2$ xuất hiện vì điện thế tăng dần từ 0 đến $V$ trong quá trình nạp điện.
  ],
)

// source-id: P1/4.7; pdf: 16
#vp-question(
  [
Điện tích $q$ phân bố đều trong thể tích cầu bán kính $R$, độ điện thẩm cả trong và ngoài bằng $epsilon_0$. Tìm năng lượng trường bên trong, bên ngoài và toàn phần.
  ],
  type: "essay",
  num-style: _ => "4.7",
  source: [PDF gốc, trang 16],
  sol: [
Trường trong $E_("in")=k q r/R^3$, ngoài $E_("out")=k q/r^2$. Mật độ năng lượng $u=epsilon_0 E^2/2$; tích phân theo các lớp cầu:
$ W_("in")=epsilon_0/2 integral_0^R (k q r/R^3)^2 4 pi r^2 dif r=k q^2/(10R), $
$ W_("out")=epsilon_0/2 integral_R^infinity (k q/r^2)^2 4 pi r^2 dif r=k q^2/(2R). $
Do đó $W=3k q^2/(5R)=3q^2/(20 pi epsilon_0 R)$. Năng lượng trong bằng $1/5$ năng lượng ngoài.
  ],
)

// source-id: P1/4.8; pdf: 16
#vp-question(
  [
Tụ phẳng không khí khoảng cách $d$, điện dung $C_0$. Chèn lớp điện môi tương đối $kappa$ dày $d/3$, phủ hết diện tích bản; phần còn lại là không khí. Chứng minh $C=3kappa C_0/(2kappa+1)$.
  ],
  type: "essay",
  num-style: _ => "4.8",
  source: [PDF gốc, trang 16],
  image: figure(ve("tu-lop"), kind: image, numbering: none, supplement: none),
  image-side: "bottom",
  sol: [
Các lớp xếp theo phương điện trường nên tương đương tụ nối tiếp. Với diện tích $A$:
$ C_1=(kappa epsilon_0 A)/(d/3)=3kappa C_0, quad C_2=(epsilon_0 A)/(2d/3)=3C_0/2. $
$ 1/C=1/C_1+1/C_2=(1+2kappa)/(3kappa C_0) => C=(3kappa)/(2kappa+1)C_0. $
Kiểm tra $kappa=1$ cho $C=C_0$; khi $kappa$ rất lớn, lớp không khí còn lại giới hạn điện dung ở $3C_0/2$.
  ],
)

// source-id: P1/4.9; pdf: 16
#vp-question(
  [
Tụ cầu có điện cực trong bán kính $a$, điện cực ngoài bán kính $c$. Điện môi $kappa_1$ chiếm $a<r<b$, điện môi $kappa_2$ chiếm $b<r<c$. Tính điện dung.
  ],
  type: "essay",
  num-style: _ => "4.9",
  source: [PDF gốc, trang 16],
  image: figure(ve("tu-cau"), kind: image, numbering: none, supplement: none),
  image-side: "bottom",
  sol: [
#vp-knowledge-box(type: "note", title: "Lưu ý về đề", content: [Lời văn nguồn gọi chung là “một quả cầu dẫn điện”; hình và yêu cầu được hiểu là hai điện cực cầu đồng tâm, giữa chúng là điện môi.])
Với điện tích tự do $+Q$ ở điện cực trong, Gauss cho $D=Q/(4 pi r^2)$, nên $E_i=Q/(4 pi epsilon_0 kappa_i r^2)$. Tích phân điện trường qua hai lớp:
$ U=Q/(4 pi epsilon_0)[1/kappa_1(1/a-1/b)+1/kappa_2(1/b-1/c)]. $
Vậy
$ C=(4 pi epsilon_0)/(1/kappa_1(1/a-1/b)+1/kappa_2(1/b-1/c)). $
Hai lớp tương đương hai tụ cầu nối tiếp. Nếu $kappa_1=kappa_2=kappa$, kết quả rút thành $4 pi epsilon_0 kappa a c/(c-a)$.
  ],
)

// source-id: P1/4.10; pdf: 16
#vp-question(
  [
Tụ phẳng diện tích $A$, khoảng cách $d$. Hai điện môi $kappa_1,kappa_2$ đặt cạnh nhau, mỗi chất phủ nửa diện tích bản và toàn bộ chiều dày. Tìm điện dung.
  ],
  type: "essay",
  num-style: _ => "4.10",
  source: [PDF gốc, trang 16],
  image: figure(ve("tu-song-song"), kind: image, numbering: none, supplement: none),
  image-side: "bottom",
  sol: [
Hai miền có cùng hiệu điện thế, điện tích tổng bằng tổng điện tích hai miền nên tương đương hai tụ song song:
$ C_1=kappa_1 epsilon_0 A/(2d), quad C_2=kappa_2 epsilon_0 A/(2d), $
$ C=C_1+C_2=epsilon_0 A/(2d)(kappa_1+kappa_2). $
Bỏ qua trường mép tại ranh giới hai điện môi theo mô hình tụ phẳng.
  ],
)


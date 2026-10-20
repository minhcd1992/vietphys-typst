#import "../../vietphys.typ": *




#vp-q-counter.update(0)
#vp-set-question-style(prefix: "Bài", lines: 0)

// source-id: P1/3.1; pdf: 12
#vp-question(
  [
Ba điện tích $-2Q,+Q,-Q$ nằm trong các mặt kín như hình. Tìm thông lượng điện qua $S_1,S_2,S_3,S_4$.
  ],
  type: "essay",
  num-style: _ => "3.1",
  source: [PDF gốc, trang 12],
  image: vp-image(path("../hinh/p1-3-1.png"), width: 58mm, caption: [Hình nguồn để đối chiếu.]),
  image-side: "bottom",
  sol: [
Định luật Gauss: $Phi_E=Q_("trong")/epsilon_0$, với pháp tuyến hướng ra ngoài. Chỉ cần tính tổng đại số điện tích được mặt kín bao quanh.

$S_1$ chứa $-2Q,+Q$ nên $Phi_1=-Q/epsilon_0$. $S_2$ chứa $+Q,-Q$ nên $Phi_2=0$. $S_3$ chứa cả ba nên $Phi_3=-2Q/epsilon_0$. $S_4$ không chứa điện tích nên $Phi_4=0$. Thông lượng bằng không không có nghĩa điện trường bằng không trên mặt.
  ],
)

// source-id: P1/3.2; pdf: 12
#vp-question(
  [
Điện tích $+Q$ ở tâm lập phương cạnh $2l$. Dùng định nghĩa điện thông để tính thông lượng qua lập phương.
  ],
  type: "essay",
  num-style: _ => "3.2",
  source: [PDF gốc, trang 12],
  sol: [
Xét mặt $x=l$, pháp tuyến theo $+x$. Tại $(l,y,z)$, $E_x=k Q l/(l^2+y^2+z^2)^(3/2)$. Vì sáu mặt tương đương:
$ Phi=6k Q integral_(-l)^l integral_(-l)^l l/(l^2+y^2+z^2)^(3/2) dif y dif z. $
Tích phân theo $y$ cho $2l^2/[(l^2+z^2)sqrt(2l^2+z^2)]$. Do đối xứng, đặt $t=z/l$, phần một mặt trở thành
$ Phi_("mat")=4k Q integral_0^1 1/((1+t^2)sqrt(2+t^2)) dif t. $
Nguyên hàm là $arctan(t/sqrt(2+t^2))$, vì vậy $Phi_("mat")=4k Q arctan(1/sqrt(3))=2 pi k Q/3=Q/(6epsilon_0)$. Tổng qua sáu mặt là $Phi=Q/epsilon_0$.
  ],
)

// source-id: P1/3.3; pdf: 12
#vp-question(
  [
Điện tích $q=5.80 thin "μC"$ tại tâm tứ diện đều. Tìm thông lượng qua toàn bộ và qua một mặt.
  ],
  type: "essay",
  num-style: _ => "3.3",
  source: [PDF gốc, trang 12],
  sol: [
Gauss cho $Phi=q/epsilon_0=6.55 times 10^5 thin "N m"^2/"C"$. Do đối xứng, bốn mặt có thông lượng bằng nhau:
$ Phi_("mat")=q/(4epsilon_0)=1.64 times 10^5 thin "N m"^2/"C". $
Thông lượng dương theo quy ước pháp tuyến ra ngoài.
  ],
)

// source-id: P1/3.4; pdf: 12
#vp-question(
  [
Tế bào thần kinh có tổng điện tích $-8.65 thin "pC"$. Tìm độ lớn và chiều điện thông qua bề mặt tế bào.
  ],
  type: "essay",
  num-style: _ => "3.4",
  source: [PDF gốc, trang 12],
  sol: [
$ Phi=q/epsilon_0=-0.977 thin "N m"^2/"C". $
Độ lớn bằng $0.977 thin "N m"^2/"C"$; thông lượng có dấu âm nghĩa là phần dòng điện trường đi vào trội hơn đi ra. Không cần biết hình dạng tế bào hay chi tiết phân bố điện tích.
  ],
)

// source-id: P1/3.5; pdf: 12
#vp-question(
  [
Tấm chữ nhật $0.400 times 0.600 thin "m"^2$ trong điện trường đều $75 thin "V/m"$ hợp với mặt tấm góc $20 degree$. Tính điện thông qua tấm.
  ],
  type: "essay",
  num-style: _ => "3.5",
  source: [PDF gốc, trang 12],
  sol: [
Góc với pháp tuyến là $70 degree$. Chọn pháp tuyến có thành phần cùng chiều điện trường:
$ Phi=E A cos 70 degree=75 times 0.400 times 0.600 times sin 20 degree=6.16 thin "N m"^2/"C". $
Đảo chiều pháp tuyến thì thông lượng đổi dấu; độ lớn không đổi.
  ],
)

// source-id: P1/3.6; pdf: 12
#vp-question(
  [
Dây thẳng vô hạn mang đều $lambda=3.00 thin "μC/m"$. Mặt trụ đồng trục có $r=0.025 thin "m"$, $l=0.400 thin "m"$.
  ],
  type: "essay",
  num-style: _ => "3.6",
  source: [PDF gốc, trang 12],
  listEs: (
    [Tính thông lượng.],
    [Đổi $r=0.500 thin "m"$.],
    [Đổi $l=0.800 thin "m"$.],
  ),
  sol: [
Trường $E=lambda/(2 pi epsilon_0 r)$ vuông góc mặt bên và song song hai đáy. Thông lượng qua hai đáy bằng không; qua mặt bên:
$ Phi=E(2 pi r l)=lambda l/epsilon_0. $
(a) $Phi=1.36 times 10^5 thin "N m"^2/"C"$. (b) Đổi bán kính không đổi điện tích bao trong nên vẫn bằng giá trị đó. (c) Chiều dài tăng gấp đôi nên $Phi=2.71 times 10^5 thin "N m"^2/"C"$.
  ],
)

// source-id: P1/3.7; pdf: 12–13
#vp-question(
  [
Trụ đặc vô hạn bán kính $R$, mật độ khối đều $rho>0$. Tìm điện trường
  ],
  type: "essay",
  num-style: _ => "3.7",
  source: [PDF gốc, trang 12–13],
  listEs: (
    [trong trụ theo $rho,r$;],
    [ngoài trụ theo mật độ dài $lambda$;],
    [so sánh ở $r=R$.],
  ),
  sol: [
Chọn mặt Gauss trụ dài $l$, đồng trục. Do đối xứng, trường xuyên tâm, $Phi=2 pi r l E$.

(a) Với $r<R$, $Q_("trong")=rho pi r^2l$, nên $E=rho r/(2epsilon_0)$.

(b) Với $r>R$, $Q_("trong")=lambda l$, $lambda=rho pi R^2$, nên $E=lambda/(2 pi epsilon_0 r)=rho R^2/(2epsilon_0 r)$.

(c) Cả hai giới hạn tại $R$ bằng $rho R/(2epsilon_0)$: trường liên tục vì không có lớp điện tích mặt bổ sung. Hướng ra ngoài với $rho>0$.
  ],
)

// source-id: P1/3.8; pdf: 13
#vp-question(
  [
Đĩa bán kính $a=8 thin "cm"$, mật độ mặt $sigma=10^(-3) thin "C/m"^2$.
  ],
  type: "essay",
  num-style: _ => "3.8",
  source: [PDF gốc, trang 13],
  listEs: (
    [Tìm trường trên trục cách tâm $b=6 thin "cm"$.],
    [Xét $b arrow.r 0$.],
    [Xét $b >>a$.],
  ),
  sol: [
Vành bán kính $s$ mang $dif q=2 pi sigma s dif s$; thành phần trường trên trục $dif E=k b dif q/(s^2+b^2)^(3/2)$. Tích phân:
$ E(b)=sigma/(2epsilon_0)(1-b/sqrt(a^2+b^2)), quad b>0. $
(a) $sqrt(a^2+b^2)=0.10 thin "m"$, nên $E=2.26 times 10^7 thin "V/m"$, hướng ra xa đĩa.

(b) $b arrow.r 0^+$ cho $E arrow.r sigma/(2epsilon_0)$, bằng trường một phía của mặt phẳng vô hạn. Ngay trên lớp điện tích lý tưởng, phải phân biệt giới hạn hai phía.

(c) $b/sqrt(a^2+b^2) approx 1-a^2/(2b^2)$, do đó $E approx sigma a^2/(4epsilon_0 b^2)=k Q/b^2$ với $Q=pi a^2sigma$.
  ],
)

// source-id: P1/3.9; pdf: 13
#vp-question(
  [
Lớp cầu không dẫn có bán kính trong $a=10 thin "cm"$, ngoài $b=20 thin "cm"$, mật độ khối $rho=10^(-6) thin "C/m"^3$. Tính và vẽ $E(r)$ từ $0$ đến $30 thin "cm"$.
  ],
  type: "essay",
  num-style: _ => "3.9",
  source: [PDF gốc, trang 13],
  sol: [
Áp dụng Gauss với mặt cầu bán kính $r$. Điện tích bên trong lần lượt là $0$, $4 pi rho(r^3-a^3)/3$, $4 pi rho(b^3-a^3)/3$. Vì thế
$ E(r)=cases(0 & 0<=r<a, rho/(3epsilon_0)(r-a^3/r^2) & a<=r<=b, rho(b^3-a^3)/(3epsilon_0 r^2) & r>b). $
Trường hướng ra ngoài, liên tục tại hai mặt. Trong lớp cầu, $E'=rho(1+2a^3/r^3)/(3epsilon_0)>0$; ngoài lớp $E$ giảm theo $r^(-2)$. Cực đại tại $b$:
$ E(b)=6.59 times 10^3 thin "V/m", quad E(0.30)=2.93 times 10^3 thin "V/m". $
#import "../hinh/ve-hinh.typ": do-thi-vo-cau
#figure(do-thi-vo-cau(), caption: [Đồ thị tính trực tiếp từ biểu thức từng miền, vẽ bằng CeTZ.], kind: image, numbering: none, supplement: none)
  ],
)

// source-id: P1/3.10; pdf: 13
#vp-question(
  [
Quả cầu bán kính $R$, mật độ $rho(r)=rho_s r/R$. Tìm tổng điện tích và trường trong, ngoài.
  ],
  type: "essay",
  num-style: _ => "3.10",
  source: [PDF gốc, trang 13],
  sol: [
Đây là bài trùng nội dung Bài 1.22, vẫn giữ theo số gốc. Tích phân lớp cầu:
$ Q(r)=integral_0^r 4 pi s^2 rho_s s/R dif s=pi rho_s r^4/R, quad Q=pi rho_s R^3. $
Gauss $E 4 pi r^2=Q_("trong")/epsilon_0$ cho $E=rho_s r^2/(4epsilon_0 R)$ trong cầu, $E=rho_s R^3/(4epsilon_0 r^2)$ ngoài cầu. Hướng xuyên tâm; dấu $rho_s$ xác định hướng ra hay vào.
  ],
)

// source-id: P1/3.11; pdf: 13
#vp-question(
  [
Quả cầu tích đều mật độ khối $rho$.
  ],
  type: "essay",
  num-style: _ => "3.11",
  source: [PDF gốc, trang 13],
  listEs: (
    [Tìm trường bên trong.],
    [Khoét một hốc cầu; chứng minh trường trong hốc là đều.],
  ),
  sol: [
(a) $Q_("trong")=4 pi rho r^3/3$, nên $arrow(E)=rho arrow(r)/(3epsilon_0)$.

(b) Gọi $arrow(a)$ từ tâm cầu lớn đến tâm hốc. Chồng chất cầu lớn mật độ $rho$ với cầu bù mật độ $-rho$ chiếm hốc:
$ arrow(E)_("hoc")=rho/(3epsilon_0)arrow(r)-rho/(3epsilon_0)(arrow(r)-arrow(a))=rho arrow(a)/(3epsilon_0). $
Không phụ thuộc điểm xét nên trường đều; hốc đồng tâm có trường bằng không. Kết quả trùng Bài 1.21.
  ],
)

// source-id: P1/3.12; pdf: 13
#vp-question(
  [
Hai vỏ trụ mỏng, dài đồng trục $R_1<R_2$, mang mật độ dài lần lượt $-lambda,+lambda$. Tìm trường trong ba miền $r<R_1$, $R_1<r<R_2$, $r>R_2$.
  ],
  type: "essay",
  num-style: _ => "3.12",
  source: [PDF gốc, trang 13],
  sol: [
Mặt trụ Gauss dài $l$ bao các điện tích lần lượt $0,-lambda l,0$. Vì vậy
$ arrow(E)=cases(0 & r<R_1, -lambda/(2 pi epsilon_0 r) arrow(e)_r & R_1<r<R_2, 0 & r>R_2). $
Trường trong khe hướng về trụ trong nếu $lambda>0$. Tại chính mỗi lớp điện tích mỏng, trường gián đoạn; biểu thức là giới hạn ở hai phía.
  ],
)

// source-id: P1/3.13; pdf: 13–14
#vp-question(
  [
Mặt phẳng vô hạn mang đều $sigma$, điểm $P$ cách mặt $b$. Vẽ vòng tròn bán kính $a$ tâm tại chân đường vuông góc từ $P$. Chọn $a$ sao cho điện trường do phần đĩa bên trong vòng gây ra bằng nửa trường toàn mặt phẳng. Tìm khoảng cách $r$ từ $P$ đến mép vòng và góc $theta.alt$ giữa $r$ với pháp tuyến.
  ],
  type: "essay",
  num-style: _ => "3.13",
  source: [PDF gốc, trang 13–14],
  sol: [
Trường toàn phần $E_("inf")=sigma/(2epsilon_0)$; phần đĩa cho $E_("dia")=E_("inf")(1-b/sqrt(a^2+b^2))$. Điều kiện $E_("dia")=E_("inf")/2$ dẫn tới
$ b/sqrt(a^2+b^2)=1/2 => a=sqrt(3)b. $
Do đó $r=sqrt(a^2+b^2)=2b$, $cos theta.alt=b/r=1/2$, nên $theta.alt=60 degree$.
  ],
)

// source-id: P1/3.14; pdf: 14
#vp-question(
  [
Phân bố cầu $rho(r)=rho_0(1-r/R)$ trong $R$, bằng không ngoài; $rho_0=3Q/(pi R^3)$.
  ],
  type: "essay",
  num-style: _ => "3.14",
  source: [PDF gốc, trang 14],
  listEs: (
    [Chứng minh tổng điện tích là $Q$.],
    [Tìm trường ngoài.],
    [Tìm trường trong.],
    [Tìm vị trí và giá trị cực đại của trường.],
  ),
  sol: [
(a) $Q_("tot")=4 pi rho_0(R^3/3-R^3/4)=pi rho_0R^3/3=Q$.

(b) Ngoài cầu, đối xứng cầu và Gauss cho $E=k Q/r^2$. (c) Trong cầu, $Q(r)=4 pi rho_0(r^3/3-r^4/(4R))$, nên
$ E(r)=rho_0/epsilon_0(r/3-r^2/(4R)). $
(d) $E'(r)=rho_0/epsilon_0(1/3-r/(2R))=0$ tại $r=2R/3$. Đạo hàm đổi từ dương sang âm; ngoài cầu trường cũng giảm, nên đây là cực đại toàn cục:
$ E_("max")=rho_0 R/(9epsilon_0)=(4k Q)/(3R^2). $
  ],
)

// source-id: P1/3.15; pdf: 14
#vp-question(
  [
Cầu cách điện bán kính $R=0.160 thin "m"$, mật độ điện khối đều $rho=7.20 times 10^(-9) thin "C/m"^3$. Điện tích điểm $q=3.40 times 10^(-6) thin "C"$ thả từ bề mặt. Tìm công lực điện khi nó đi ra rất xa.
  ],
  type: "essay",
  num-style: _ => "3.15",
  source: [PDF gốc, trang 14],
  sol: [
Tổng điện tích cầu $Q=4 pi rho R^3/3$. Bên ngoài, thế là $k Q/r$, nên
$ A=q[V(R)-V(infinity)]=k q Q/R=(q rho R^2)/(3epsilon_0) approx 2.36 times 10^(-5) thin "J". $
Công dương vì hai điện tích cùng dấu; nếu thả từ nghỉ và chỉ có lực điện, đó cũng là động năng ở vô cực.
  ],
)

// source-id: P1/3.16; pdf: 14
#vp-question(
  [
Quả cầu kim loại bán kính $R_1$, điện tích $q=-2 thin "nC"$, đồng tâm với vỏ kim loại có bán kính trong $R_2$, ngoài $R_3$, tổng điện tích $Q=3 thin "nC"$.
  ],
  type: "essay",
  num-style: _ => "3.16",
  source: [PDF gốc, trang 14],
  listEs: (
    [Tìm trường ở bốn miền.],
    [Tìm điện tích trên từng mặt.],
  ),
  sol: [
Trong kim loại cân bằng tĩnh điện $E=0$. Một mặt Gauss nằm trong vỏ kim loại phải bao tổng điện tích bằng không, nên mặt trong vỏ mang $q_2=-q=+2 thin "nC"$. Bảo toàn điện tích vỏ cho $q_3=Q-q_2=+1 thin "nC"$. Cầu trong mang $q_1=-2 thin "nC"$ trên mặt $R_1$.
$ arrow(E)=cases(0 & r<R_1, k q/r^2 arrow(e)_r & R_1<r<R_2, 0 & R_2<r<R_3, k(q+Q)/r^2 arrow(e)_r & r>R_3). $
Trong khe trường hướng vào; bên ngoài trường hướng ra. Do đồng tâm, điện tích đều trên từng mặt, $sigma_i=q_i/(4 pi R_i^2)$.
  ],
)


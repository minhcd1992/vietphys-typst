#import "../../vietphys.typ": *
#import "../hinh/so-do-vat-li.typ": ve
Quy ước hình phẳng: $+x$ sang phải, $+y$ lên trên, $+z$ hướng ra khỏi trang. Dấu chấm trong vòng tròn biểu diễn vector hướng ra, dấu nhân trong vòng tròn biểu diễn vector hướng vào. Dòng điện là dòng điện quy ước.





#vp-q-counter.update(0)
#vp-set-question-style(prefix: "Bài", lines: 0)

// source-id: P3/3.1; pdf: 21
#vp-question(
  [
Dây thẳng $A B$ dài $L$ có dòng $I$. Tìm vector cảm ứng từ tại điểm $M$ “nằm trên trục của dây, cách dây một đoạn $h$”. Xét $L arrow.r infinity$.
  ],
  type: "essay",
  num-style: _ => "3.1",
  source: [PDF gốc, trang 21],
  sol: [
Nếu hiểu đúng nghĩa *trên đường thẳng chứa dây*, ở bên ngoài đoạn dây, mọi phần tử $dif arrow(l)$ song song hoặc ngược chiều vector nối phần tử tới $M$. Theo Biot–Savart,
$ dif arrow(B)=mu_0 I/(4 pi) (dif arrow(l) times arrow(r))/r^3=0. $
Vì vậy $arrow(B)=0$ với mọi $L$; giới hạn khi kéo dài dây nhưng vẫn giữ $M$ ngoài dây cũng bằng không.

#vp-knowledge-box(type: "note", title: "Lưu ý về đề", content: [Nếu “trục” là lỗi viết và tác giả muốn nói đường trung trực, đáp án khác. Với $M$ trên trung trực, cách dây $h$, trường có độ lớn $B=mu_0 I L/(4 pi h sqrt(h^2+L^2/4))$, vuông góc mặt phẳng chứa dây và $M$, chiều theo quy tắc nắm tay phải. Khi $L arrow.r infinity$, $B=mu_0 I/(2 pi h)$. Nguồn không có hình để quyết định thay cho lời văn.])
  ],
)

// source-id: P3/3.2; pdf: 21
#vp-question(
  [
Vòng dây $I=1.00 thin "A"$, $R=100 thin "mm"$. Tìm cảm ứng từ ở tâm và trên trục cách tâm $b=100 thin "mm"$.
  ],
  type: "essay",
  num-style: _ => "3.2",
  source: [PDF gốc, trang 21],
  sol: [
Thành phần vuông góc trục triệt tiêu từng cặp; tích phân Biot–Savart cho
$ B(z)=(mu_0 I R^2)/(2(R^2+z^2)^(3/2)). $
Tại tâm $B(0)=mu_0 I/(2R)=6.28 times 10^(-6) thin "T"$. Tại $z=R$, $B(R)=B(0)/(2sqrt(2))=2.22 times 10^(-6) thin "T"$. Hướng dọc trục theo quy tắc nắm tay phải đối với dòng vòng.
  ],
)

// source-id: P3/3.3; pdf: 21
#vp-question(
  [
Hai dây vô hạn vuông góc, dòng $I_1=2 thin "A"$, $I_2=3 thin "A"$, khoảng cách ngắn nhất $A B=2 thin "cm"$, $A M_1=A M_2=1 thin "cm"$. Tìm vector cảm ứng từ tại hai điểm trong hình.
  ],
  type: "essay",
  num-style: _ => "3.3",
  source: [PDF gốc, trang 21],
  image: vp-image(path("../hinh/p3-3.png"), width: 86mm, caption: [Hình nguồn để đối chiếu.]),
  image-side: "bottom",
  sol: [
Đặt $A=(0,0,0)$, dây 1 dọc $+y$, dây 2 qua $B=(0.02,0,0)$ vuông góc trang; $M_1=(-0.01,0,0)$, $M_2=(0.01,0,0)$. Trường dây 1 có độ lớn $mu_0 I_1/(2 pi times 0.01)=4.00 times 10^(-5) thin "T"$, hướng $+z$ tại $M_1$, $-z$ tại $M_2$.

Khoảng cách đến dây 2 là $0.03$ m và $0.01$ m nên các độ lớn trường là $2.00 times 10^(-5)$ T và $6.00 times 10^(-5)$ T. Nếu $I_2$ hướng ra trang ($+z$), cả hai trường này hướng xuống:
$ arrow(B)_(M_1)=(-2.00 arrow(j)+4.00 arrow(k)) times 10^(-5) thin "T", $
$ arrow(B)_(M_2)=(-6.00 arrow(j)-4.00 arrow(k)) times 10^(-5) thin "T". $
Độ lớn lần lượt $4.47 times 10^(-5)$ T và $7.21 times 10^(-5)$ T. Nếu $I_2$ hướng vào trang thì đổi dấu thành phần $arrow(j)$, còn thành phần $arrow(k)$ và độ lớn giữ nguyên.

#vp-knowledge-box(type: "note", title: "Lưu ý về đề", content: [Ký hiệu ở dây 2 trong bản gốc là dấu cộng trong vòng tròn, không phải dấu chấm/nhân chuẩn. Hai chiều khả dĩ đã được nêu rõ; không tự thay ký hiệu nguồn bằng một chiều chắc chắn.])
  ],
)

// source-id: P3/3.4; pdf: 21
#vp-question(
  [
Hai dây vô hạn vuông góc trang: tại $A$, $I_1=20 thin "A"$ hướng ra; tại $B$, $I_2=30 thin "A"$ hướng vào. $A B=10 thin "cm"$. $M_1$ bên trái $A$, $A M_1=2 thin "cm"$; $M_2$ giữa hai dây, $A M_2=4 thin "cm"$; $M_3$ bên phải $B$, $B M_3=3 thin "cm"$. Tìm trường tổng.
  ],
  type: "essay",
  num-style: _ => "3.4",
  source: [PDF gốc, trang 21],
  image: figure(ve("hai-day"), kind: image, numbering: none, supplement: none),
  image-side: "bottom",
  sol: [
Chọn $A$ ở $x=0$, $B$ ở $x=0.10$ m. Trên trục ngang, chỉ có thành phần đứng:
$ B_y(x)=mu_0/(2 pi)(20/x-30/(x-0.10)). $
Thay từng tọa độ:
$ B_y(-0.02)=-1.50 times 10^(-4) thin "T", $
$ B_y(0.04)=+2.00 times 10^(-4) thin "T", $
$ B_y(0.13)=-1.69 times 10^(-4) thin "T". $
Tại $M_1,M_3$ trường hướng xuống, tại $M_2$ hướng lên. Giữa hai dây ngược dòng, các từ trường cùng chiều nên cộng độ lớn.
  ],
)

// source-id: P3/3.5; pdf: 21
#vp-question(
  [
Ba dây vô hạn tại $A,B,C$ thẳng hàng, $A B=B C=d=5 thin "cm"$. $I_1=I_2=I$ hướng vào trang, $I_3=2I$ hướng ra. Tìm điểm trên đoạn $A C$ có trường tổng bằng không.
  ],
  type: "essay",
  num-style: _ => "3.5",
  source: [PDF gốc, trang 21],
  image: figure(ve("ba-day"), kind: image, numbering: none, supplement: none),
  image-side: "bottom",
  sol: [
Đặt $x$ từ $A$, nên các dây ở $0,d,2d$. Dùng dấu của khoảng cách có hướng để viết đồng thời các miền:
$ B_y=mu_0 I/(2 pi)(-1/x-1/(x-d)+2/(x-2d)). $
Với $x$ khác vị trí các dây, quy đồng và cho tử số bằng không được $3 d x-2d^2=0$, tức $x=2d/3=3.33 thin "cm"$. Điểm nằm giữa $A,B$, cách $B$ $1.67 thin "cm"$. Không có nghiệm khác trong $A C$.
  ],
)

// source-id: P3/3.6; pdf: 21
#vp-question(
  [
Dây vô hạn uốn góc $56 degree$, dòng $I=30 thin "A"$ đi về đỉnh theo nhánh trên rồi ra xa theo nhánh dưới. Điểm $A$ trên phân giác phía trong góc, cách đỉnh $a=5 thin "cm"$. Tìm vector cảm ứng từ.
  ],
  type: "essay",
  num-style: _ => "3.6",
  source: [PDF gốc, trang 21],
  image: figure(ve("day-gap"), kind: image, numbering: none, supplement: none),
  image-side: "bottom",
  sol: [
Đặt $beta=28 degree$. Khoảng cách từ $A$ đến mỗi nhánh là $h=a sin beta$. Với mỗi dây bán vô hạn, công thức dây thẳng hữu hạn cho
$ B_1=mu_0 I/(4 pi h)(1+cos beta). $
Hai trường cùng hướng ra khỏi trang, do đó
$ B=2B_1=(mu_0 I)/(2 pi a sin beta)(1+cos beta)=(mu_0 I)/(2 pi a)cot(beta/2) approx 4.81 times 10^(-4) thin "T". $
Chiều đảo nếu đảo chiều dòng điện.
  ],
)

// source-id: P3/3.7; pdf: 21
#vp-question(
  [
Khung vuông cạnh $a$ mang dòng $I$. Tìm vector cảm ứng từ tại tâm.
  ],
  type: "essay",
  num-style: _ => "3.7",
  source: [PDF gốc, trang 21],
  sol: [
Tâm cách mỗi cạnh $h=a/2$, hai góc đầu dây đều $45 degree$. Mỗi cạnh gây $B_1=mu_0 I/(4 pi h)(sin 45 degree+sin 45 degree)=mu_0 I sqrt(2)/(2 pi a)$.

Bốn vector cùng vuông góc mặt phẳng khung, cộng lại:
$ B=4B_1=(2sqrt(2)mu_0 I)/(pi a). $
Hướng ra trang nếu dòng chạy ngược chiều kim đồng hồ nhìn vào hình; ngược lại hướng vào.
  ],
)

// source-id: P3/3.8; pdf: 21
#vp-question(
  [
Khung chữ nhật dài $L$, rộng $W$, mang dòng $I$. Tìm cảm ứng từ tại tâm và xét $L >>W$.
  ],
  type: "essay",
  num-style: _ => "3.8",
  source: [PDF gốc, trang 21],
  sol: [
Hai cạnh dài góp $B_L=(2mu_0 I L)/(pi W sqrt(L^2+W^2))$; hai cạnh ngắn góp $B_W=(2mu_0 I W)/(pi L sqrt(L^2+W^2))$. Chúng cùng hướng theo pháp tuyến khung, nên
$ B=(2mu_0 I)/(pi) sqrt(L^2+W^2)/(L W). $
Nếu $L >>W$, $B approx 2mu_0 I/(pi W)$: đúng bằng tổng trường của hai dây vô hạn ngược chiều, mỗi dây cách tâm $W/2$. Cho $L=W=a$ nhận lại kết quả khung vuông.
  ],
)

// source-id: P3/3.9; pdf: 22
#vp-question(
  [
Dòng $I=6.28 thin "A"$ chạy theo chu vi hình thang cân, đáy lớn gấp 2 đáy nhỏ $l=100 thin "mm"$. Hai cạnh bên kéo dài gặp tại $A$, cách đáy nhỏ $b=50.0 thin "mm"$. Dòng trên đáy nhỏ từ trái sang phải. Tìm cảm ứng từ tại $A$.
  ],
  type: "essay",
  num-style: _ => "3.9",
  source: [PDF gốc, trang 22],
  image: figure(ve("hinh-thang"), kind: image, numbering: none, supplement: none),
  image-side: "bottom",
  sol: [
Do đồng dạng, khoảng cách từ $A$ tới đáy lớn là $2b$. Các cạnh bên nằm trên đường thẳng qua $A$, nên đóng góp bằng không theo Biot–Savart. Với đáy nhỏ, $sin theta=(l/2)/sqrt(b^2+l^2/4)=l/sqrt(l^2+4b^2)$:
$ B_1=mu_0 I/(2 pi b)sin theta. $
Đáy lớn có cùng góc nhìn, cách xa gấp đôi và dòng ngược chiều, nên $B_2=B_1/2$ hướng ngược. Do đó
$ B=B_1-B_2=(mu_0 I l)/(4 pi b sqrt(l^2+4b^2))=8.88 times 10^(-6) thin "T". $
Trường tổng hướng ra khỏi trang, cùng chiều trường của đáy nhỏ.
  ],
)

// source-id: P3/3.10; pdf: 22
#vp-question(
  [

  ],
  type: "essay",
  num-style: _ => "3.10",
  source: [PDF gốc, trang 22],
  listEs: (
    [Khung vuông cạnh $a$, dòng $I$: tìm trường trên trục cách tâm $x$.],
    [Tìm trường tại $P$ của khung có phần khuyết như hình.],
  ),
  image: figure(ve("khung-khuyet"), kind: image, numbering: none, supplement: none),
  image-side: "bottom",
  sol: [
(a) Khoảng cách từ điểm xét đến đường chứa một cạnh là $h=sqrt(x^2+a^2/4)$. Mỗi cạnh gây $B_1=mu_0 I a/(4 pi h sqrt(x^2+a^2/2))$. Thành phần dọc trục là $B_1(a/2)/h$. Các thành phần ngang triệt tiêu:
$ B(x)=(mu_0 I a^2)/(2 pi (x^2+a^2/4)sqrt(x^2+a^2/2)). $
Tại $x=0$ nhận $2sqrt(2)mu_0 I/(pi a)$; hướng dọc trục theo quy tắc nắm tay phải.

(b) Chọn góc trái dưới là $(0,0)$, $P=(2a,2a)$. Hai đoạn cùng đường thẳng ngang và đứng qua $P$ gây trường bằng không. Cạnh trái và cạnh dưới dài $2a$ mỗi cạnh gây $mu_0 I sqrt(2)/(16 pi a)$ hướng ra trang. Hai cạnh phía trong chỗ khuyết dài $a$ mỗi cạnh gây $mu_0 I sqrt(2)/(8 pi a)$ hướng vào trang. Tổng đại số:
$ B_z=2(mu_0 I sqrt(2)/(16 pi a))-2(mu_0 I sqrt(2)/(8 pi a))=-(mu_0 I sqrt(2))/(8 pi a). $
Vậy trường hướng vào trang, độ lớn $mu_0 I sqrt(2)/(8 pi a)$.
  ],
)

// source-id: P3/3.11; pdf: 22
#vp-question(
  [
Hai vòng giống nhau $R=10 thin "cm"$, trục chung, cách nhau $a=20 thin "cm"$. Tìm trường ở tâm mỗi vòng và trung điểm hai tâm khi dòng có cùng độ lớn $I$:
  ],
  type: "essay",
  num-style: _ => "3.11",
  source: [PDF gốc, trang 22],
  listEs: (
    [cùng chiều;],
    [ngược chiều.],
  ),
  sol: [
Đặt tâm vòng 1 tại $z=0$, tâm vòng 2 tại $z=a$; trường riêng vòng 1 hướng $+z$. Đặt $b(z)=mu_0 I R^2/[2(R^2+z^2)^(3/2)]$.

(a) Cùng chiều: tại hai tâm, $B=b(0)+b(a)=6.85 times 10^(-6) I thin "T/A"$, đều hướng $+z$. Tại trung điểm,
$ B=2b(a/2)=mu_0 I R^2/(R^2+a^2/4)^(3/2)=4.44 times 10^(-6) I thin "T/A". $
(b) Ngược chiều: tại tâm vòng 1, $B_z=b(0)-b(a)=5.72 times 10^(-6) I thin "T/A"$; tại tâm vòng 2 là giá trị đối dấu. Tại trung điểm, hai trường bằng nhau ngược chiều nên bằng không. Đề không cho $I$ bằng số nên đáp án phải để theo $I$.
  ],
)

// source-id: P3/3.12; pdf: 22
#vp-question(
  [
Electron từ nghỉ được gia tốc bởi hiệu điện thế $U=100 thin "V"$ và $U=100 thin "kV"$. Tính tốc độ.
  ],
  type: "essay",
  num-style: _ => "3.12",
  source: [PDF gốc, trang 22],
  sol: [
Nếu động năng nhỏ so với năng lượng nghỉ, $e U=m_e v^2/2$ cho $v=sqrt(2e U/m_e)$. Với $100$ V, $v approx 5.93 times 10^6 thin "m/s"$, gần đúng phi tương đối tính rất tốt.

Với $100$ kV, cần dùng $e U=(gamma-1)m_e c^2$, $gamma=1/sqrt(1-v^2/c^2)$:
$ v=c sqrt(1-(1+(e U)/(m_e c^2))^(-2)) approx 1.64 times 10^8 thin "m/s" approx 0.548c. $
Ở đây $m_e c^2 approx 511 thin "keV"$. Công thức cổ điển cho $1.88 times 10^8$ m/s, lớn hơn kết quả tương đối tính khoảng $14%$ nên không thích hợp cho đáp số chính ở $100$ kV.
  ],
)

// source-id: P3/3.13; pdf: 22–23
#vp-question(
  [
Áp dụng quy tắc lực từ để điền đại lượng còn thiếu ở các hình (a)–(f).
  ],
  type: "essay",
  num-style: _ => "3.13",
  source: [PDF gốc, trang 22–23],
  image: vp-image(path("../hinh/p3-13.png"), width: 163mm, caption: [Hình nguồn để đối chiếu.]),
  image-side: "bottom",
  sol: [
Dùng $arrow(F)=I arrow(l) times arrow(B)$, với trường giữa hai cực nam châm hướng từ N tới S. Kết quả theo từng hình:

- (a) Dòng sang trái, lực xiên ra phía trước theo phối cảnh của hình: trường hướng xuống; cực trên N, cực dưới S.
- (b) Dòng vào trang, lực sang phải: trường hướng lên; cực trên S, cực dưới N.
- (c) Dòng ra trang, lực sang phải: trường hướng xuống; cực trên N, cực dưới S.
- (d) Dòng vào trang, lực xuống: trường sang phải; cực trái N, cực phải S.
- (e) Dòng sang trái, lực lên: trường ra khỏi trang.
- (f) Dòng sang phải, lực xuống: trường ra khỏi trang.

Ví dụ (b): $(-arrow(k)) times arrow(j)=arrow(i)$, đúng với lực sang phải. Hình (a) dùng phối cảnh không gian; mũi tên lực được đọc là hướng ra phía người quan sát, không phải thành phần nằm ngang cùng phương dây.
  ],
)

// source-id: P3/3.14; pdf: 23
#vp-question(
  [
Xác định đại lượng còn thiếu ở các hình (a)–(h), (k).
  ],
  type: "essay",
  num-style: _ => "3.14",
  source: [PDF gốc, trang 23],
  image: vp-image(path("../hinh/p3-14.png"), width: 151mm, caption: [Hình nguồn để đối chiếu.]),
  image-side: "bottom",
  sol: [
Dùng cùng hệ trục và quy tắc tích có hướng $arrow(F)=I arrow(l) times arrow(B)$:

- (a) $I$ phải, $B$ vào: $F$ lên, vì $arrow(i) times (-arrow(k))=arrow(j)$.
- (b) $I$ ra, $B$ phải: $F$ lên, vì $arrow(k) times arrow(i)=arrow(j)$.
- (c) $I$ ra, $F$ phải: $B$ xuống.
- (d) $I$ phải, $F$ vào: $B$ xuống.
- (e) $B$ vào, $F$ trái: $I$ lên.
- (f) $I$ trái, $B$ vào: $F$ xuống.
- (g) $I$ phải, $F$ lên: $B$ vào trang.
- (h) $B$ lên, $F$ phải: $I$ vào trang.
- (k) $B$ phải, $F$ lên: $I$ ra khỏi trang.

Các kết luận tìm $B$ xác định thành phần vuông góc với dây. Theo mô hình hình vẽ, chỉ xét phương vuông góc đó; thành phần song song dòng điện không sinh lực và không thể suy ra từ lực từ.
  ],
)

// source-id: P3/3.15; pdf: 23–24
#vp-question(
  [
Electron từ nghỉ được gia tốc bởi $U=1000 thin "V"$ rồi bay vuông góc với trường $B=1.19 times 10^(-3) thin "T"$. Tìm bán kính quỹ đạo, chu kỳ và moment động lượng đối với tâm.
  ],
  type: "essay",
  num-style: _ => "3.15",
  source: [PDF gốc, trang 23–24],
  sol: [
Ở năng lượng $1$ keV, dùng gần đúng phi tương đối tính: $v=sqrt(2e U/m_e)=1.88 times 10^7 thin "m/s"$. Lực Lorentz vuông góc vận tốc và làm lực hướng tâm, $e v B=m_e v^2/r$.
$ r=(m_e v)/(e B) approx 0.0896 thin "m", quad T=(2 pi r)/v=(2 pi m_e)/(e B) approx 3.00 times 10^(-8) thin "s". $
Moment động lượng có độ lớn
$ L=m_e v r=(m_e^2 v^2)/(e B)=(2m_e U)/B approx 1.53 times 10^(-24) thin "kg m"^2/"s". $
Với electron, vector moment động lượng cùng chiều $arrow(B)$; moment từ ngược chiều $arrow(B)$ do điện tích âm.
  ],
)

// source-id: P3/3.16; pdf: 24
#vp-question(
  [
Hạt alpha có $K=500 thin "eV"$, $q=+2e$, bay vuông góc $B=0.1 thin "T"$. Tìm lực từ, bán kính, chu kỳ; dùng $m_alpha=6.64 times 10^(-27) thin "kg"$.
  ],
  type: "essay",
  num-style: _ => "3.16",
  source: [PDF gốc, trang 24],
  sol: [
Đổi $K=500e=8.01 times 10^(-17) thin "J"$, tốc độ $v=sqrt(2K/m_alpha)=1.55 times 10^5 thin "m/s"$.
$ F=q v B=4.98 times 10^(-15) thin "N", $
$ r=(m_alpha v)/(q B)=0.0322 thin "m", quad T=(2 pi m_alpha)/(q B)=1.30 times 10^(-6) thin "s". $
Lực luôn vuông góc vận tốc, hướng vào tâm; vì điện tích dương, chiều quay theo $arrow(v) times arrow(B)$.
  ],
)

// source-id: P3/3.17; pdf: 24
#vp-question(
  [
Electron có động năng $W=1.64 times 10^(-16) thin "J"$, bay hợp đường sức $alpha=60 degree$ trong trường $B=5 times 10^(-3) thin "T"$. Cho $m=9.1 times 10^(-31) thin "kg"$, $abs(e)=1.6 times 10^(-19) thin "C"$. Tìm tốc độ, bán kính, chu kỳ và bước xoắn.
  ],
  type: "essay",
  num-style: _ => "3.17",
  source: [PDF gốc, trang 24],
  sol: [
Lực từ không sinh công nên tốc độ không đổi. Tách $v_(parallel)=v cos alpha$, $v_(perp)=v sin alpha$. Thành phần dọc trường chuyển động đều, thành phần ngang quay tròn:
$ v=sqrt(2W/m)=1.90 times 10^7 thin "m/s", $
$ r=(m v sin alpha)/(abs(e)B)=1.87 times 10^(-2) thin "m", quad T=(2 pi m)/(abs(e)B)=7.15 times 10^(-9) thin "s", $
$ h=v cos alpha T=6.78 times 10^(-2) thin "m". $
Năng lượng $W$ được hiểu là động năng trong mô hình phi tương đối tính.
  ],
)

// source-id: P3/3.18; pdf: 24
#vp-question(
  [
Electron từ nghỉ gia tốc bởi $U=6000 thin "V"$, bay vào trường $B=1.3 times 10^(-2) thin "T"$ với góc $alpha=30 degree$ so với đường sức. Tìm bán kính và bước xoắn.
  ],
  type: "essay",
  num-style: _ => "3.18",
  source: [PDF gốc, trang 24],
  sol: [
Theo gần đúng cổ điển, $v=sqrt(2e U/m_e)=4.59 times 10^7 thin "m/s"$, $T=2 pi m_e/(e B)=2.75 times 10^(-9) thin "s"$.
$ r=(m_e v sin alpha)/(e B)=1.00 times 10^(-2) thin "m", quad h=v cos alpha T=0.109 thin "m". $
Nếu dùng tương đối tính, $gamma=1+6000/511000$, $p=sqrt((e U)^2/c^2+2m_e e U)$; thay $m_e v$ bằng $p$ cho $r=p sin alpha/(e B)$ và $h=2 pi p cos alpha/(e B)$. Hai kích thước lớn hơn kết quả cổ điển khoảng $0.29%$.
  ],
)

// source-id: P3/3.19; pdf: 24
#vp-question(
  [
Electron trong trường $B=2 times 10^(-3) thin "T"$ có quỹ đạo xoắn bán kính $R=2 thin "cm"$, bước $h=5 thin "cm"$. Tìm tốc độ.
  ],
  type: "essay",
  num-style: _ => "3.19",
  source: [PDF gốc, trang 24],
  sol: [
Chu kỳ cyclotron $T=2 pi m_e/(e B)=1.79 times 10^(-8) thin "s"$. Từ hình học quỹ đạo:
$ v_(perp)=2 pi R/T=(e B R)/m_e=7.03 times 10^6 thin "m/s", $
$ abs(v_(parallel))=h/T=2.80 times 10^6 thin "m/s". $
Vì hai thành phần vuông góc, $v=sqrt(v_(perp)^2+v_(parallel)^2)=7.57 times 10^6 thin "m/s"$. Hướng dọc trường không được xác định chỉ bởi độ lớn bước xoắn.
  ],
)

// source-id: P3/3.20; pdf: 24
#vp-question(
  [
Electron có động năng $W=10^3 thin "eV"$ bay vuông góc điện trường $E=800 thin "V/cm"$. Cần thêm từ trường thế nào để hạt không lệch phương?
  ],
  type: "essay",
  num-style: _ => "3.20",
  source: [PDF gốc, trang 24],
  sol: [
Điều kiện lực tổng bằng không là $q(arrow(E)+arrow(v) times arrow(B))=0$. Vì vậy cần $arrow(v) times arrow(B)=-arrow(E)$.

Chọn từ trường vuông góc cả $arrow(v)$ và $arrow(E)$:
$ arrow(B)=(arrow(v) times arrow(E))/v^2, quad B=E/v. $
Với $E=8.00 times 10^4 thin "V/m"$, $v=sqrt(2W/m_e)=1.88 times 10^7 thin "m/s"$, được $B=4.27 times 10^(-3) thin "T"$. Ví dụ $arrow(v)$ sang phải, $arrow(E)$ lên trên thì $arrow(B)$ ra trang. Có thể cộng thêm thành phần $B$ song song vận tốc mà không làm đổi lực từ.
  ],
)

// source-id: P3/3.21; pdf: 24–25
#vp-question(
  [
Electron gia tốc qua $40 thin "V"$, vào dải từ trường $B=2 times 10^(-4) thin "T"$ với vận tốc vuông góc trường và vuông góc hai biên. Hai biên cách $d$. Cho $abs(e)/m=1.76 times 10^11 thin "C/kg"$. Tìm $d$ nhỏ nhất để electron “không bay ra ngoài vùng từ trường”.
  ],
  type: "essay",
  num-style: _ => "3.21",
  source: [PDF gốc, trang 24–25],
  sol: [
Tốc độ $v=sqrt(2(abs(e)/m)U)=3.75 times 10^6 thin "m/s"$, bán kính quỹ đạo
$ R=v/((abs(e)/m)B)=1/B sqrt((2U)/(abs(e)/m))=0.1066 thin "m". $
Đặt điểm vào ở $x=0$. Trong trường, $x=R sin(omega t)$ trước khi trở lại biên ban đầu, nên độ xuyên sâu cực đại bằng $R$. Để *không vượt biên đối diện* cần $d>=R$, ngưỡng $d=10.7 thin "cm"$; nếu yêu cầu không chạm biên thì $d>R$.

#vp-knowledge-box(type: "note", title: "Lưu ý về đề", content: [Một từ trường đều trong dải này không giữ electron mãi bên trong: sau nửa vòng hạt trở lại biên ban đầu và đi ra. Theo nghĩa đen “không bay ra ngoài” ở bất kỳ biên nào thì không có giá trị $d$ thỏa mãn.])
  ],
)

// source-id: P3/3.22; pdf: 25
#vp-question(
  [
Electron bay từ trái sang phải với $v_0=6 times 10^7 thin "m/s"$ vào dải từ trường $B=0.005 thin "T"$, $m=9.1 times 10^(-31) thin "kg"$, $abs(e)=1.6 times 10^(-19) thin "C"$, bề rộng $d=5.91 thin "cm"$. Vận tốc vuông góc $B$. Tìm thời gian trong trường.
  ],
  type: "essay",
  num-style: _ => "3.22",
  source: [PDF gốc, trang 25],
  sol: [
#vp-knowledge-box(type: "note", title: "Lưu ý về đề", content: [Nguồn nhắc “Hình bài 3.22” nhưng không có hình riêng trên trang. Dùng cấu hình vào vuông góc biên giống bài trước; nếu góc tới khác, cần bổ sung hình hoặc góc tới.])
Theo mô hình phi tương đối tính, $R=m v_0/(abs(e)B)=0.06825 thin "m"$, $omega=abs(e)B/m=8.79 times 10^8 thin "rad/s"$. Vì $d<R$, hạt đi ra biên đối diện trước khi quay được một phần tư vòng. Từ $d=R sin theta$,
$ theta=arcsin(d/R) approx 1.046 thin "rad", quad t=theta/omega approx 1.19 times 10^(-9) thin "s". $
Lấy nghiệm góc nhỏ vì đây là lần đầu hạt gặp biên đối diện. Với $v_0 approx 0.20c$, nếu cần hiệu chỉnh tương đối tính thì dùng $R=gamma m v_0/(abs(e)B)$, $omega=abs(e)B/(gamma m)$, thu $t approx 1.18 times 10^(-9) thin "s"$.
  ],
)


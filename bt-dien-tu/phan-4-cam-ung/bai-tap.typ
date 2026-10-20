#import "../../vietphys.typ": *
#import "../hinh/so-do-vat-li.typ": ve
Trong các bài định tính, dùng định luật Faraday–Lenz: $cal(E)=-dif Phi/dif t$ (một vòng), $cal(E)=-N dif Phi/dif t$ (cuộn $N$ vòng). Từ trường cảm ứng chống lại *sự biến thiên* từ thông. Nhìn vào một mặt vòng dây: dòng ngược chiều kim đồng hồ làm mặt đó thành cực Bắc, dòng cùng chiều kim đồng hồ làm mặt đó thành cực Nam.





#vp-q-counter.update(0)
#vp-set-question-style(prefix: "Bài", lines: 0)

// source-id: P4/4.1; pdf: 26
#vp-question(
  [
Hai ống dây cùng chiều quấn như hình; ống trái nối pin và khóa $S$, ống phải nối điện trở. Tìm chiều dòng qua điện trở
  ],
  type: "essay",
  num-style: _ => "4.1",
  source: [PDF gốc, trang 26],
  listEs: (
    [lúc đóng $S$;],
    [sau vài phút;],
    [lúc mở $S$.],
  ),
  image: vp-image(path("../hinh/p4-1.png"), width: 120mm, caption: [Hình nguồn để đối chiếu.]),
  image-side: "bottom",
  sol: [
(a) Khi đóng khóa, dòng sơ cấp tăng từ 0; từ thông qua ống thứ cấp tăng. Dòng thứ cấp phải tạo trường ngược với trường sơ cấp. Hai cuộn quấn cùng chiều, nên chiều dòng vòng thứ cấp ngược chiều dòng vòng sơ cấp. Theo các đầu dây và cực pin trên hình, dòng qua điện trở $R$ đi *từ phải sang trái*.

(b) Sau khi xác lập với nguồn một chiều, dòng và từ thông không đổi: $dif Phi/dif t=0$, nên không có dòng cảm ứng qua $R$.

(c) Khi mở khóa, từ thông sơ cấp giảm. Dòng thứ cấp tạo trường cùng chiều trường sơ cấp trước đó để chống sự giảm, nên dòng qua $R$ đi *từ trái sang phải*. Chiều dòng chỉ áp dụng trong quá trình biến thiên, không phải sau khi quá trình kết thúc.
  ],
)

// source-id: P4/4.2; pdf: 26
#vp-question(
  [
Xác định chiều dòng cảm ứng trong sáu trường hợp (a)–(f), theo chuyển động tương đối của nam châm và vòng dây.
  ],
  type: "essay",
  num-style: _ => "4.2",
  source: [PDF gốc, trang 26],
  image: vp-image(path("../hinh/p4-2.png"), width: 160mm, caption: [Hình nguồn để đối chiếu.]),
  image-side: "bottom",
  sol: [
Trong bảng, luôn *nhìn vòng dây từ phía nam châm*. Cực tiến tới làm từ thông tăng nên vòng đẩy cực đó; cực lùi xa làm từ thông giảm nên vòng hút cực đó.

#table(columns: (0.6fr,2fr,1.4fr,2.1fr), inset: 5pt,
  [Hình],[Chuyển động tương đối],[Mặt vòng gần nam châm],[Chiều dòng khi nhìn từ nam châm],
  [(a)],[N tiến tới vòng],[N],[Ngược kim đồng hồ],
  [(b)],[Vòng tiến tới N],[N],[Ngược kim đồng hồ],
  [(c)],[S tiến tới vòng],[S],[Cùng kim đồng hồ],
  [(d)],[N lùi xa vòng],[S],[Cùng kim đồng hồ],
  [(e)],[Vòng lùi xa S],[N],[Ngược kim đồng hồ],
  [(f)],[Vòng lùi xa N],[S],[Cùng kim đồng hồ],
)
Ví dụ (e): vòng cần giữ từ thông đang giảm nên hút cực S đang xa dần; mặt vòng hướng về nam châm là N, tương ứng dòng ngược chiều kim đồng hồ khi nhìn từ nam châm.
  ],
)

// source-id: P4/4.3; pdf: 26
#vp-question(
  [
Tìm chiều di chuyển nam châm để sinh ra chiều dòng cảm ứng đã vẽ ở (a)–(f). Vòng dây đứng yên.
  ],
  type: "essay",
  num-style: _ => "4.3",
  source: [PDF gốc, trang 26],
  image: vp-image(path("../hinh/p4-3.png"), width: 155mm, caption: [Hình nguồn để đối chiếu.]),
  image-side: "bottom",
  sol: [
Ở các vòng nằm ngang, mũi tên trên nửa trước hướng sang phải tương ứng trường cảm ứng *lên trên*; sang trái tương ứng trường *xuống dưới*. Từ đó suy ra:

- (a) Cực N ở phía trên vòng: nam châm đi xuống, lại gần. Trường nguồn xuống tăng, vòng tạo trường lên.
- (b) Cực S ở phía trên: nam châm đi lên, ra xa. Trường nguồn lên giảm, vòng tạo trường lên.
- (c) Cực S ở phía trên: nam châm đi xuống, lại gần. Trường nguồn lên tăng, vòng tạo trường xuống.
- (d) Cực N ở phía trên: nam châm đi lên, ra xa. Trường nguồn xuống giảm, vòng tạo trường xuống.
- (e) Cực S ở phía dưới vòng: nam châm đi xuống, ra xa. Trường nguồn xuống giảm, vòng tạo trường xuống.
- (f) Cực N ở phía dưới: nam châm đi xuống, ra xa. Trường nguồn lên giảm, vòng tạo trường lên.

Các chiều lên/xuống là theo trang giấy, không đổi góc nhìn giữa các hình.
  ],
)

// source-id: P4/4.4; pdf: 27
#vp-question(
  [
Theo chiều chuyển động nam châm và dòng cảm ứng trên hình, xác định hai cực nam châm ở (a)–(h).
  ],
  type: "essay",
  num-style: _ => "4.4",
  source: [PDF gốc, trang 27],
  image: vp-image(path("../hinh/p4-4.png"), width: 163mm, caption: [Hình nguồn để đối chiếu.]),
  image-side: "bottom",
  sol: [
Trước hết xác định cực của mặt vòng hướng về nam châm bằng quy tắc nắm tay phải. Khi tiến lại gần, cực nam châm phải cùng tên với mặt vòng (đẩy nhau); khi ra xa, phải khác tên (hút nhau).

#table(columns: (0.6fr,1.4fr,1.3fr,2fr), inset:5pt,
 [Hình],[Trạng thái],[Cực nam châm gần vòng],[Hai cực theo hình],
 [(a)],[Tiến lại gần],[N],[Trái S, phải N],
 [(b)],[Tiến lại gần],[N],[Trái N, phải S],
 [(c)],[Ra xa],[N],[Trái N, phải S],
 [(d)],[Tiến lại gần],[S],[Trái N, phải S],
 [(e)],[Tiến lại gần],[S],[Trên S, dưới N],
 [(f)],[Ra xa],[S],[Trên S, dưới N],
 [(g)],[Tiến lại gần],[S],[Trên N, dưới S],
 [(h)],[Ra xa],[S],[Trên N, dưới S],
)
Ví dụ (g), dòng ở nửa trước hướng sang trái nên trường cảm ứng xuống; mặt trên vòng là S. Nam châm đang đi xuống lại gần nên cực dưới nam châm cũng phải là S.
  ],
)

// source-id: P4/4.5; pdf: 27
#vp-question(
  [
Ống dây $N=800$ vòng có suất điện động tự cảm độ lớn $0.16 thin "V"$ khi $dif I/dif t=50 thin "A/s"$.
  ],
  type: "essay",
  num-style: _ => "4.5",
  source: [PDF gốc, trang 27],
  listEs: (
    [Tìm $L$.],
    [Từ thông qua mỗi tiết diện khi $I=2 thin "A"$.],
    [Năng lượng từ trường.],
  ),
  sol: [
(a) $abs(cal(E))=L abs(dif I/dif t)$ cho $L=0.16/50=3.2 times 10^(-3) thin "H"$.

(b) Liên kết từ thông là $N Phi=L I$, nên $Phi=L I/N=8.0 times 10^(-6) thin "Wb"$. Cần phân biệt từ thông mỗi vòng $Phi$ với liên kết từ thông $N Phi=6.4 times 10^(-3) thin "Wb"$.

(c) $W=L I^2/2=6.4 times 10^(-3) thin "J"$.
  ],
)

// source-id: P4/4.6; pdf: 27
#vp-question(
  [
Khung vuông một vòng bằng dây đồng tiết diện $S_0=1 thin "mm"^2$, diện tích khung $S=25 thin "cm"^2$, mặt khung vuông góc trường $B=B_0 sin(omega t)$; $B_0=0.01 thin "T"$, $omega=2 pi/T$, $T=0.02 thin "s"$. Tìm biểu thức và cực đại của từ thông, suất điện động, dòng điện.
  ],
  type: "essay",
  num-style: _ => "4.6",
  source: [PDF gốc, trang 27],
  sol: [
Đổi $S=2.5 times 10^(-3) thin "m"^2$, $omega=100 pi thin "rad/s"$. Chọn pháp tuyến theo chiều dương của $B$:
$ Phi(t)=B_0 S sin(omega t)=2.5 times 10^(-5)sin(100 pi t) thin "Wb", $
nên $Phi_("max")=2.5 times 10^(-5) thin "Wb"$.

Suất điện động theo chiều dương gắn với pháp tuyến:
$ cal(E)(t)=-dif Phi/dif t=-7.854 times 10^(-3)cos(100 pi t) thin "V", $
biên độ $7.854 thin "mV"$.

Chu vi khung $l=4sqrt(S)=0.20 thin "m"$. Đề chưa cho điện trở suất; nếu lấy đồng ở nhiệt độ phòng $rho_("Cu")=1.70 times 10^(-8) thin "Ω m"$, thì $R=rho_("Cu")l/S_0=3.40 times 10^(-3) thin "Ω"$. Bỏ qua tự cảm khung,
$ I(t)=cal(E)(t)/R=-2.31 cos(100 pi t) thin "A", quad I_("max")=2.31 thin "A". $
Nếu dùng giá trị điện trở suất khác, phải thay $R$ tương ứng. Khi không bỏ qua tự cảm $L$, dòng xác lập có biên độ $B_0 S omega/sqrt(R^2+(omega L)^2)$ và trễ pha so với suất điện động góc $arctan(omega L/R)$; nguồn không cung cấp $L$.
  ],
)

// source-id: P4/4.7; pdf: 27
#vp-question(
  [
Ống dây $N=500$ vòng, đường kính $d=10 thin "cm"$, trục song song đường sức. Trong $Delta t=0.1 thin "s"$, trường đổi từ 0 đến $2 thin "T"$. Tìm độ lớn suất điện động cảm ứng trung bình.
  ],
  type: "essay",
  num-style: _ => "4.7",
  source: [PDF gốc, trang 27],
  sol: [
Diện tích mỗi vòng $S=pi d^2/4=7.854 times 10^(-3) thin "m"^2$. Theo Faraday:
$ abs(cal(E)_("tb"))=N S abs(Delta B)/(Delta t)=500 times 7.854 times 10^(-3) times 2/0.1=78.5 thin "V". $
Đây là độ lớn của suất điện động trung bình có dấu. Nếu $B$ tăng đơn điệu thì cũng bằng trung bình độ lớn; suất điện động tức thời chỉ không đổi khi $B$ tăng tuyến tính theo thời gian.
  ],
)

// source-id: P4/4.8; pdf: 28
#vp-question(
  [
Cuộn $N=100$ vòng, diện tích mỗi vòng $S=100 thin "cm"^2$, quay đều $5$ vòng/giây trong trường $B=0.1 thin "T"$. Trục quay vuông góc trục cuộn và đường sức. Tìm suất điện động theo thời gian và cực đại.
  ],
  type: "essay",
  num-style: _ => "4.8",
  source: [PDF gốc, trang 28],
  sol: [
Đại lượng $5$ vòng/giây là tần số quay $f$, tương ứng $omega=2 pi f=10 pi thin "rad/s"$, không phải $5$ rad/s. Gọi góc giữa pháp tuyến cuộn và trường là $omega t+phi_0$:
$ N Phi=N B S cos(omega t+phi_0), $
$ cal(E)(t)=N B S omega sin(omega t+phi_0)=pi sin(10 pi t+phi_0) thin "V". $
Biên độ $cal(E)_("max")=pi thin "V" approx 3.14 thin "V"$. Nếu chọn $t=0$ lúc pháp tuyến cùng chiều trường thì $phi_0=0$. Đề không ấn định tư thế ban đầu nên pha phải được quy ước hoặc để tổng quát.
  ],
)

// source-id: P4/4.9; pdf: 28
#vp-question(
  [
Mạch nối tiếp pin lý tưởng, khóa, cuộn cảm thuần $L$ và điện trở $R=0.30 thin "Ω"$. Đóng khóa tại $t=0$, dòng ban đầu bằng 0; hằng số thời gian $tau=0.25 thin "s"$, dòng xác lập $8.0 thin "A"$. Tìm (a) suất điện động pin; (b) $L$; (c) dòng, điện áp trên $R,L$ ở $t=tau$.
  ],
  type: "essay",
  num-style: _ => "4.9",
  source: [PDF gốc, trang 28],
  image: figure(ve("rl"), kind: image, numbering: none, supplement: none),
  image-side: "bottom",
  sol: [
Phương trình $L dif I/dif t+R I=cal(E)$ có nghiệm $I(t)=I_(infinity)(1-exp(-t/tau))$, với $I_(infinity)=cal(E)/R$, $tau=L/R$.

(a) $cal(E)=8.0 times 0.30=2.40 thin "V"$. (b) $L=tau R=0.075 thin "H"$.

(c) Tại $t=tau$,
$ I=8.0(1-exp(-1))=5.06 thin "A", $
$ U_R=R I=1.52 thin "V", quad U_L=L dif I/dif t=cal(E)exp(-1)=0.883 thin "V". $
Điện áp $U_L$ ở đây là độ sụt áp theo chiều dòng; suất điện động tự cảm có dấu ngược. Kiểm tra $U_R+U_L=2.40 thin "V"$.
  ],
)

// source-id: P4/4.10; pdf: 28
#vp-question(
  [
Cuộn dây có $L=6 thin "H"$, điện trở dây $R=200 thin "Ω"$, mắc song song $R_1=1000 thin "Ω"$ vào nguồn $U=120 thin "V"$. Mạch đã xác lập trước khi ngắt khóa $K$. Tìm $U_(A B)$ sau khi ngắt $t=0.001 thin "s"$.
  ],
  type: "essay",
  num-style: _ => "4.10",
  source: [PDF gốc, trang 28],
  image: figure(ve("rl-ngat"), kind: image, numbering: none, supplement: none),
  image-side: "bottom",
  sol: [
Quy ước trước khi ngắt $V_A-V_B=+120$ V. Ở xác lập cuộn dây có dòng từ $A$ tới $B$, $I_0=U/R=0.600 thin "A"$.

Sau khi ngắt nguồn, cuộn dây và $R_1$ tạo vòng kín. Dòng qua cuộn không đổi đột ngột và tiếp tục theo $A arrow.r B$; qua $R_1$ theo $B arrow.r A$. Phương trình suy giảm:
$ L dif I/dif t+(R+R_1)I=0 => I(t)=I_0 exp(-(R+R_1)t/L). $
Hằng số thời gian $L/(R+R_1)=0.005$ s; tại $t=0.001$ s, $I=0.600exp(-0.2)=0.491$ A. Vì dòng trên $R_1$ đi từ $B$ sang $A$,
$ U_(A B)=-R_1 I=-491 thin "V". $
Vậy độ lớn điện áp là $491$ V, cực $B$ cao thế hơn $A$. Nếu quy ước cực nguồn ban đầu ngược lại thì dấu kết quả cũng đảo. Điện áp tức thì sau ngắt có độ lớn $600$ V rồi giảm theo hàm mũ.
  ],
)


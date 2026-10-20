#import "../../vietphys.typ": *
#import "../hinh/ve-hinh.typ": mach
Quy ước: vạch dài của nguồn là cực dương. Vôn kế lý tưởng có điện trở vô cùng lớn; ampe kế lý tưởng có điện trở bằng không. Các giá trị tụ điện xét sau khi đã đạt trạng thái xác lập.





#vp-q-counter.update(0)
#vp-set-question-style(prefix: "Bài", lines: 0)

// source-id: P2/2.1; pdf: 17
#vp-question(
  [
Mạch có $R_1=12 thin "Ω"$, $R_2=15 thin "Ω"$, $R_3=5 thin "Ω"$, dòng tổng $I=2 thin "A"$. Tìm dòng từng điện trở.
  ],
  type: "essay",
  num-style: _ => "2.1",
  source: [PDF gốc, trang 17],
  image: figure(mach(1), kind: image, numbering: none, supplement: none),
  image-side: "bottom",
  sol: [
$R_2,R_3$ nối tiếp, $R_(23)=20 thin "Ω"$, song song với $R_1$. $R_(A B)=12 times 20/(12+20)=7.5 thin "Ω"$, nên $U_(A B)=I R_(A B)=15 thin "V"$.
$ I_1=U_(A B)/R_1=1.25 thin "A", quad I_2=I_3=U_(A B)/(R_2+R_3)=0.75 thin "A". $
Kiểm tra $I_1+I_2=2 thin "A"$.
  ],
)

// source-id: P2/2.2; pdf: 17
#vp-question(
  [
$R_1=10$, $R_2=6$, $R_3=2$, $R_4=3$, $R_5=4 thin "Ω"$. Dòng qua $R_3$ là $0.5 thin "A"$. Tìm dòng từng điện trở và $U_(A B)$.
  ],
  type: "essay",
  num-style: _ => "2.2",
  source: [PDF gốc, trang 17],
  image: figure(mach(2), kind: image, numbering: none, supplement: none),
  image-side: "bottom",
  sol: [
$R_3,R_5$ nối tiếp nên $I_5=I_3=0.5 thin "A"$. Điện áp trên cụm song song là $U_(35)=0.5(2+4)=3 thin "V"$, do đó $I_4=3/3=1 thin "A"$.

Theo nút, $I_1=I_3+I_4=1.5 thin "A"$. Suy ra $U_(A B)=I_1R_1+U_(35)=15+3=18 thin "V"$, $I_2=18/6=3 thin "A"$. Dòng tổng $I=4.5 thin "A"$, theo chiều từ $A$ tới $B$ khi $U_(A B)>0$.
  ],
)

// source-id: P2/2.3; pdf: 17
#vp-question(
  [
$xi=8.2 thin "V"$, $r=0.5 thin "Ω"$, $R_1=R_2=R_3=3 thin "Ω"$, $R_4=6 thin "Ω"$.
  ],
  type: "essay",
  num-style: _ => "2.3",
  source: [PDF gốc, trang 17],
  listEs: (
    [Tìm số chỉ và chiều dòng qua ampe kế $M N$.],
    [Thay ampe kế bằng vôn kế lý tưởng: tìm số chỉ và cực dương.],
  ),
  image: figure(mach(3), kind: image, numbering: none, supplement: none),
  image-side: "bottom",
  sol: [
(a) Ampe kế nối tắt nên $V_M=V_N$. Mạch ngoài là $(R_1 parallel R_2)+(R_3 parallel R_4)=1.5+2=3.5 thin "Ω"$. Dòng nguồn $I=8.2/(3.5+0.5)=2.05 thin "A"$.

Điện áp nhóm trái $3.075 thin "V"$, nhóm phải $4.10 thin "V"$, nên $I_1=I_2=1.025 thin "A"$, $I_3=4.10/3=1.3667 thin "A"$, $I_4=4.10/6=0.6833 thin "A"$. Tại $M$, dòng đi sang phải lớn hơn dòng từ trái tới; phần thiếu đi qua ampe kế từ $N$ tới $M$:
$ I_A=I_3-I_1=0.3417 thin "A". $
(b) Vôn kế không dẫn điện. Mạch ngoài $(R_1+R_3) parallel (R_2+R_4)=6 parallel 9=3.6 thin "Ω"$. Dòng tổng $I=8.2/4.1=2 thin "A"$, $U_(A B)=7.2 thin "V"$. Chọn $V_B=0$: $V_M=(7.2/6)R_3=3.6 thin "V"$, $V_N=(7.2/9)R_4=4.8 thin "V"$. Vôn kế chỉ $1.2 thin "V"$, cực dương nối $N$.
  ],
)

// source-id: P2/2.4; pdf: 17–18
#vp-question(
  [
Hai mạch (a), (b) có hiệu điện thế đầu vào $U$ không đổi, ba điện trở bằng $r=5sqrt(3) thin "Ω"$. Tìm $R$ để ampe kế đầu vào chỉ như nhau khi $K_1$ đóng, $K_2$ mở và khi $K_1$ mở, $K_2$ đóng.
  ],
  type: "essay",
  num-style: _ => "2.4",
  source: [PDF gốc, trang 17–18],
  image: figure(scale(82%, reflow:true, mach(4)), kind: image, numbering: none, supplement: none),
  image-side: "bottom",
  sol: [
Vì $I=U/R_("eq")$, yêu cầu là hai điện trở tương đương bằng nhau. Khi $K_1$ đóng, $K_2$ mở, các điện trở $r$ không ảnh hưởng dòng đầu vào: $R_("eq")=R$ ở cả hai hình.

Hình (a), khi $K_2$ đóng: $R_("eq")=r+[r parallel (r+R)]=r+r(r+R)/(2r+R)$. Đặt bằng $R$:
$ R(2r+R)=r(2r+R)+r(r+R) => R^2=3r^2. $
Lấy nghiệm dương $R=sqrt(3)r=15 thin "Ω"$.

Hình (b), khi $K_2$ đóng: $R_("eq")=r parallel [r+(r parallel R)]$. Đặt $x=R/r>0$ thì
$ x=(2x+1)/(3x+2) => 3x^2=1 => R=r/sqrt(3)=5 thin "Ω". $
  ],
)

// source-id: P2/2.5; pdf: 18
#vp-question(
  [
$xi_1=12 thin "V"$, $xi_2=6 thin "V"$, $r_1=r_2=1 thin "Ω"$, $R_1=2$, $R_2=6$, $R_3=4 thin "Ω"$. Đèn ghi $6 thin "V"-6 thin "W"$, $R_4$ biến đổi. Tìm $R_4$ để đèn sáng bình thường, số chỉ vôn kế và ampe kế.
  ],
  type: "essay",
  num-style: _ => "2.5",
  source: [PDF gốc, trang 18],
  image: figure(mach(5), kind: image, numbering: none, supplement: none),
  image-side: "bottom",
  sol: [
Đèn sáng định mức có $I_D=P_D/U_D=1 thin "A"$, $R_D=U_D^2/P_D=6 thin "Ω"$. Đèn nối tiếp $R_2$, nên $U_(A B)=6+1 times 6=12 thin "V"$.

Hai nguồn mắc nối tiếp cùng chiều: $xi_("bo")=18 thin "V"$. Dòng chính qua $r_1+r_2+R_1=4 thin "Ω"$:
$ I=(18-12)/4=1.5 thin "A". $
Dòng nhánh dưới $I_(34)=I-I_D=0.5 thin "A"$, nên $R_3+R_4=12/0.5=24 thin "Ω"$, $R_4=20 thin "Ω"$. Vôn kế chỉ $12 thin "V"$, ampe kế chỉ $1.5 thin "A"$.
  ],
)

// source-id: P2/2.6; pdf: 18
#vp-question(
  [
$E=24 thin "V"$, $r=1 thin "Ω"$, $R_1=3 thin "Ω"$, $R_2=R_3=R_4=6 thin "Ω"$. Ampe kế nối $A D$, $R_A=0$. Tìm số chỉ.
  ],
  type: "essay",
  num-style: _ => "2.6",
  source: [PDF gốc, trang 18],
  image: figure(mach(6), kind: image, numbering: none, supplement: none),
  image-side: "bottom",
  sol: [
Vì $A,D$ cùng điện thế, $R_1 parallel R_2=2 thin "Ω"$. Nhánh qua $C$ có điện trở $2+R_4=8 thin "Ω"$, song song $R_3=6 thin "Ω"$. Mạch ngoài $R_("eq")=24/7 thin "Ω"$.

$I=24/(1+24/7)=168/31 thin "A"$, $U_(A B)=576/31 thin "V"$. Dòng nhánh qua $C$ bằng $U/8=72/31 thin "A"$, trong đó qua $R_2$ từ $D$ tới $C$ là $24/31 thin "A"$. Dòng qua $R_3$ từ $D$ tới $B$ là $96/31 thin "A"$.

Tại nút $D$, ampe kế cấp cho cả hai dòng đó: $I_A=(24+96)/31=120/31 approx 3.87 thin "A"$, chiều từ $A$ tới $D$.
  ],
)

// source-id: P2/2.7; pdf: 18–19
#vp-question(
  [
$E_1=12 thin "V"$, $r_1=r_2=3 thin "Ω"$. $R_1=6 thin "Ω"$ là bình điện phân $"CuSO"_4$ với điện cực đồng; $R_2$ là đèn $6 thin "V"-6 thin "W"$; $R_3=6 thin "Ω"$. Sau $16$ phút $5$ giây thu $0.192 thin "g"$ đồng ($A=64$, $n=2$).
  ],
  type: "essay",
  num-style: _ => "2.7",
  source: [PDF gốc, trang 18–19],
  listEs: (
    [Đồng bám cực nào?],
    [Dòng điện phân?],
    [Độ sáng đèn?],
    [Tìm $E_2$.],
    [Nối ampe kế lý tưởng giữa $M,N$, tìm số chỉ.],
  ),
  image: figure(mach(7), kind: image, numbering: none, supplement: none),
  image-side: "bottom",
  sol: [
(a) Đồng bám cathode (cực âm của bình), nơi xảy ra $"Cu"^(2+)+2e^- arrow.r "Cu"$. (b) Dùng Faraday $m=A I t/(n F)$, với $F=96500 thin "C/mol"$, $t=965 thin "s"$:
$ I_1=(0.192 times 2 times 96500)/(64 times 965)=0.600 thin "A". $
(c) Theo mô hình điện trở đèn không đổi $R_2=6^2/6=6 thin "Ω"$, dòng qua đèn cũng bằng $0.600 thin "A"$, nhỏ hơn định mức $1 thin "A"$; đèn sáng yếu, $P=I^2R_2=2.16 thin "W"$.

(d) $U_(A B)=0.6(6+6)=7.2 thin "V"$, $I_3=7.2/6=1.2 thin "A"$, dòng nguồn $I=1.8 thin "A"$. Hai nguồn cùng chiều nên $E_1+E_2=U+I(r_1+r_2)=18 thin "V"$, từ đó $E_2=6 thin "V"$.

(e) Nối tắt $M,N$ và chọn thế chung bằng 0. Gọi $V_A=x$, $V_B=y$. Định luật nút:
$ x/6+(x-y)/6+(x-12)/3=0, quad y/6+(y-x)/6+(y+6)/3=0. $
Suy ra $4x-y=24$, $4y-x=-12$, nên $x=5.6 thin "V"$, $y=-1.6 thin "V"$. Dòng từ $A$ qua bình tới $N$ là $5.6/6=14/15 thin "A"$, từ $N$ qua đèn tới $B$ là $1.6/6=4/15 thin "A"$. Phần chênh qua ampe kế từ $N$ tới $M$:
$ I_A=14/15-4/15=2/3 thin "A". $
#vp-knowledge-box(type: "note", title: "Lưu ý về đề", content: [Đèn thật có điện trở phụ thuộc nhiệt độ. Các giá trị số (c)–(e) dùng mô hình điện trở bằng giá trị định mức, thường được ngầm dùng trong bài tập loại này.])
  ],
)

// source-id: P2/2.8; pdf: 19
#vp-question(
  [
$E_1=12$, $E_2=9$, $E_3=3 thin "V"$, $r_1=r_2=r_3=1 thin "Ω"$, $R_1=R_2=R_3=2 thin "Ω"$. Nguồn 1 và 3 có cực dương phía $A$, nguồn 2 ngược lại. Tìm $U_(A B)$ và dòng từng nhánh.
  ],
  type: "essay",
  num-style: _ => "2.8",
  source: [PDF gốc, trang 19],
  image: figure(mach(8), kind: image, numbering: none, supplement: none),
  image-side: "bottom",
  sol: [
Chọn mọi dòng nhánh dương từ $A$ sang $B$, đặt $U=U_(A B)$. Theo cực nguồn:
$ I_1=(U-12)/3, quad I_2=(U+9)/3, quad I_3=(U-3)/3. $
Mạch không có nhánh ngoài nên $I_1+I_2+I_3=0$, cho $3U-6=0$, $U=2 thin "V"$.

Suy ra $I_1=-10/3 thin "A"$, $I_2=11/3 thin "A"$, $I_3=-1/3 thin "A"$. Nhánh 1 và 3 có dòng từ $B$ về $A$; nhánh 2 từ $A$ sang $B$.
  ],
)

// source-id: P2/2.9; pdf: 19
#vp-question(
  [
$E_1=24 thin "V"$, $E_2=6 thin "V"$, $r_1=r_2=1 thin "Ω"$, $R_1=5 thin "Ω"$, $R_2=2 thin "Ω"$, nguồn 2 ngược cực nguồn 1 như hình. Tìm $R$ để công suất trên $R$ cực đại và giá trị cực đại.
  ],
  type: "essay",
  num-style: _ => "2.9",
  source: [PDF gốc, trang 19],
  image: figure(mach(9), kind: image, numbering: none, supplement: none),
  image-side: "bottom",
  sol: [
Tìm tương đương Thévenin nhìn từ $A,B$. Bỏ tải $R$, tổng dòng hai nhánh bằng không:
$ (U_0-24)/6+(U_0+6)/3=0 => U_0=4 thin "V". $
Triệt tiêu suất điện động của các nguồn lý tưởng, giữ điện trở trong: $R_("th")=(R_1+r_1) parallel (R_2+r_2)=6 parallel 3=2 thin "Ω"$.

Công suất tải $P=U_0^2 R/(R+R_("th"))^2$. Đạo hàm $P'=U_0^2(R_("th")-R)/(R+R_("th"))^3$ đổi dấu ở $R=R_("th")$. Vậy $R=2 thin "Ω"$, $P_("max")=U_0^2/(4R_("th"))=2 thin "W"$.
  ],
)

// source-id: P2/2.10; pdf: 19–20
#vp-question(
  [
$xi_1=xi_2=1.5 thin "V"$, $r_1=0.2 thin "Ω"$, $r_2=0.3 thin "Ω"$, $C_1=0.3 thin "μF"$, $C_2=0.6 thin "μF"$, $R=0.5 thin "Ω"$. Tìm dòng qua $R$, điện áp và điện tích từng tụ khi khóa $K$ đóng và mở.
  ],
  type: "essay",
  num-style: _ => "2.10",
  source: [PDF gốc, trang 19–20],
  image: figure(mach(10), kind: image, numbering: none, supplement: none),
  image-side: "bottom",
  sol: [
Ở xác lập, tụ không dẫn dòng một chiều. Hai nguồn nối tiếp nên ở cả hai trạng thái $I_R=(xi_1+xi_2)/(R+r_1+r_2)=3 thin "A"$, $U_(A B)=I_R R=1.5 thin "V"$.

*Khóa đóng:* điểm giữa tụ nối với điểm giữa nguồn. Điện áp hai tụ bằng điện áp cực từng nguồn đang phát:
$ U_1=xi_1-I_R r_1=0.9 thin "V", quad U_2=xi_2-I_R r_2=0.6 thin "V". $
Độ lớn điện tích: $Q_1=C_1U_1=0.27 thin "μC"$, $Q_2=C_2U_2=0.36 thin "μC"$.

*Khóa mở, nút giữa tụ ban đầu trung hòa:* hai tụ nối tiếp, $C_("eq")=C_1C_2/(C_1+C_2)=0.2 thin "μF"$. $Q_1=Q_2=C_("eq")U_(A B)=0.30 thin "μC"$, $U_1=1.00 thin "V"$, $U_2=0.50 thin "V"$.

#vp-knowledge-box(type: "note", title: "Lưu ý về đề", content: [Đề không nêu lịch sử đóng mở hoặc điện tích ban đầu. Nếu mở khóa sau khi đã xác lập ở trạng thái đóng, nút giữa giữ điện tích thuần $-0.27+0.36=0.09$ μC. Khi đó các giá trị vẫn là $U_1=0.9$ V, $U_2=0.6$ V; không thể mặc nhiên áp dụng $Q_1=Q_2$.])
Tổng quát, chọn $V_B=0$, $V_A=1.5$ V và gọi điện tích nút giữa là $q_f$. Khi mở khóa, $V_f=(C_1V_A+C_2V_B+q_f)/(C_1+C_2)$, rồi tính $U_1=V_A-V_f$, $U_2=V_f-V_B$.
  ],
)

// source-id: P2/2.11; pdf: 20
#vp-question(
  [
$C_1=2 thin "μF"$, $C_2=3 thin "μF"$, $C_3=1 thin "μF"$, $R_1=30 thin "Ω"$, $R_2=10 thin "Ω"$, $xi=2 thin "V"$, $r=0$. Tìm điện tích mỗi tụ.
  ],
  type: "essay",
  num-style: _ => "2.11",
  source: [PDF gốc, trang 20],
  image: figure(mach(11), kind: image, numbering: none, supplement: none),
  image-side: "bottom",
  sol: [
Xét xác lập và nút nổi giữa ba tụ ban đầu trung hòa. Chọn $V_B=0$, $V_A=2 thin "V"$. Dòng qua điện trở $I=2/(30+10)=0.05 thin "A"$, nên $V_M=I R_2=0.5 thin "V"$.

Gọi điện thế nút giữa tụ là $V_N$. Tổng điện tích các bản nối vào nút nổi bằng không:
$ C_1(V_N-V_A)+C_2(V_N-V_B)+C_3(V_N-V_M)=0. $
Suy ra $V_N=(2 times 2+3 times 0+1 times 0.5)/(2+3+1)=0.75 thin "V"$.

Độ lớn $Q_1=2(2-0.75)=2.50 thin "μC"$, $Q_2=3(0.75-0)=2.25 thin "μC"$, $Q_3=1(0.75-0.5)=0.25 thin "μC"$. Các bản nối $N$ có điện tích lần lượt $-2.50,+2.25,+0.25$ μC, tổng đúng bằng không. Nếu nút nổi ban đầu có điện tích thuần khác không thì cần thêm dữ kiện đó.
  ],
)


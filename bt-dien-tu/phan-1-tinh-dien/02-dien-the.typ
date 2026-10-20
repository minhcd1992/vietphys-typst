#import "../../vietphys.typ": *
#import "../hinh/so-do-vat-li.typ": ve
#import "../hinh/hinh-02-dien-the.typ": *

#vp-q-counter.update(0)
#vp-set-question-style(prefix: "Bài", lines: 0)

// source-id: P1/2.1; pdf: 6
#vp-question(
  [
Màng tế bào có mặt trong âm, mặt ngoài dương, chênh lệch điện thế $90 thin "mV"$. Tính công để đưa ion $"Na"^+$ từ trong ra ngoài.
  ],
  type: "essay",
  num-style: _ => "2.1",
  source: [PDF gốc, trang 6],
  image: figure(scale(65%, reflow: true, ve-de-mang-te-bao-2-1), kind: image, numbering: none, supplement: none),
  image-side: "right",
  sol: [
    #grid(
      columns: (1fr, auto),
      gutter: 14pt,
      [
        Độ tăng điện thế $Delta V=0.090 thin "V"$. Nếu đưa chậm, công ngoại lực bằng độ tăng thế năng:
        $ A_("ngoai")=Delta W=e Delta V=1.44 times 10^(-20) thin "J"=0.090 thin "eV". $
        Công của lực điện có dấu ngược lại:
        $ A_("dien")=-1.44 times 10^(-20) thin "J". $
      ],
      figure(scale(70%, reflow: true, ve-giai-mang-te-bao-2-1), caption: [Lực điện và ngoại lực], kind: image, numbering: none, supplement: none),
    )
  ],
)

// source-id: P1/2.2; pdf: 6
#vp-question(
  [
$q=40.0 thin "μC"$ đi từ $A$ đến $B$ một đoạn $d=0.180 thin "m"$ cùng chiều điện trường đều $E=275 thin "V/m"$. Tìm lực điện, công lực điện và biến thiên thế năng.
  ],
  type: "essay",
  num-style: _ => "2.2",
  source: [PDF gốc, trang 6],
  image: figure(scale(65%, reflow: true, ve-de-dien-tich-d-2-2), kind: image, numbering: none, supplement: none),
  image-side: "right",
  sol: [
    #grid(
      columns: (1fr, auto),
      gutter: 14pt,
      [
        $ arrow(F)=q arrow(E), quad F=0.0110 thin "N", $
        hướng sang phải. Vì độ dời cùng chiều lực:
        $ A=q E d=1.98 times 10^(-3) thin "J", $
        $ Delta W=-A=-1.98 times 10^(-3) thin "J". $
        Điện tích dương chuyển về nơi điện thế thấp nên thế năng giảm.
      ],
      figure(scale(70%, reflow: true, ve-giai-dien-tich-d-2-2), caption: [Thế năng giảm cùng chiều $arrow(E)$], kind: image, numbering: none, supplement: none),
    )
  ],
)

// source-id: P1/2.3; pdf: 6
#vp-question(
  [
Electron bay dọc, cùng chiều đường sức điện trường đều $E=100 thin "V/m"$, tốc độ đầu $300 thin "km/s"$, $m=9.1 times 10^(-31) thin "kg"$. Tìm quãng đường đến khi dừng.
  ],
  type: "essay",
  num-style: _ => "2.3",
  source: [PDF gốc, trang 6],
  image: figure(scale(65%, reflow: true, ve-de-electron-ham-2-3), kind: image, numbering: none, supplement: none),
  image-side: "right",
  sol: [
    #grid(
      columns: (1fr, auto),
      gutter: 14pt,
      [
        Electron mang điện âm nên lực ngược vận tốc ban đầu. Áp dụng định lý động năng:
        $ 0-m v_0^2/2=-e E s => s=(m v_0^2)/(2e E) approx 2.56 times 10^(-3) thin "m". $
        Nếu electron bay ngược chiều đường sức thì nó nhanh dần và không dừng; điều kiện cùng chiều là thiết yếu.
      ],
      figure(scale(70%, reflow: true, ve-giai-electron-ham-2-3), caption: [Lực hãm $arrow(F) = -e arrow(E)$], kind: image, numbering: none, supplement: none),
    )
  ],
)

// source-id: P1/2.4; pdf: 7
#vp-question(
  [
Tam giác $A B C$ vuông ở $A$, góc $B=60 degree$, $B C=6 thin "cm"$, $U_(B C)=120 thin "V"$. Điện trường đều song song $B A$, chiều từ $B$ tới $A$.
  ],
  type: "essay",
  num-style: _ => "2.4",
  source: [PDF gốc, trang 7],
  listEs: (
    [Tìm $U_(A C)$, $U_(B A)$, $E$.],
    [Đặt thêm tại $C$ điện tích $q=9 times 10^(-10) thin "C"$; tìm trường tổng hợp tại $A$.],
  ),
  image: figure(scale(62%, reflow: true, ve-de-tam-giac-abc-2-4), kind: image, numbering: none, supplement: none),
  image-side: "right",
  sol: [
    #grid(
      columns: (1fr, auto),
      gutter: 14pt,
      [
        (a) $B A=B C cos 60 degree=0.030 thin "m"$, $A C=B C sin 60 degree=0.05196 thin "m"$. Vì $A C$ vuông góc điện trường, $V_A=V_C$, nên $U_(A C)=0$, $U_(B A)=120 thin "V"$.
        $ E=U_(B A)/(B A)=4000 thin "V/m". $
        (b) Chọn $+x$ theo $B A$, $+y$ theo $A C$. Trường do $q$ tại $A$ hướng xuống, có độ lớn $E_q=k q/(A C)^2 approx 2997 thin "V/m"$. Vì vậy:
        $ arrow(E)_("tong")=(4000 arrow(i)-2997 arrow(j)) thin "V/m", quad E_("tong") approx 5.00 times 10^3 thin "V/m". $
        Hướng lệch xuống so với $B A$ một góc $arctan(2997/4000) approx 36.8 degree$.
      ],
      figure(scale(66%, reflow: true, ve-giai-tam-giac-abc-2-4), caption: [Tổng hợp điện trường tại $A$], kind: image, numbering: none, supplement: none),
    )
  ],
)

// source-id: P1/2.5; pdf: 7
#vp-question(
  [
Hai bản trái dấu cách $d=2 thin "cm"$, $E=3000 thin "V/m"$. Hạt dương ban đầu nghỉ sát bản dương, $m=4.5 times 10^(-6) thin "g"$, $q=1.5 times 10^(-2) thin "C"$. Tìm công lực điện và vận tốc khi tới bản âm.
  ],
  type: "essay",
  num-style: _ => "2.5",
  source: [PDF gốc, trang 7],
  image: figure(scale(62%, reflow: true, ve-de-hai-ban-tang-toc-2-5), kind: image, numbering: none, supplement: none),
  image-side: "right",
  sol: [
    #grid(
      columns: (1fr, auto),
      gutter: 14pt,
      [
        Hiệu điện thế giữa hai bản $U=E d=60 thin "V"$. Công lực điện $A=q U=0.900 thin "J"$. Đổi khối lượng $m=4.5 times 10^(-9) thin "kg"$; bảo toàn năng lượng cho:
        $ m v^2/2=A => v=sqrt(2A/m)=2.00 times 10^4 thin "m/s". $
        Giữ nguyên điện tích rất lớn đã cho; mô hình coi hạt là điện tích thử và điện trường không bị biến đổi.
      ],
      figure(scale(66%, reflow: true, ve-giai-hai-ban-tang-toc-2-5), caption: [Tăng tốc giữa hai bản], kind: image, numbering: none, supplement: none),
    )
  ],
)

#pagebreak(weak: true)

// source-id: P1/2.6; pdf: 7
#vp-question(
  [
Hạt alpha có điện tích $+2e$, khối lượng $6.64 times 10^(-27) thin "kg"$, từ rất xa bay thẳng tới hạt nhân vàng $+79e$ đứng yên với $v_0=2.00 times 10^7 thin "m/s"$. Tìm khoảng cách gần nhất trước khi bật ngược.
  ],
  type: "essay",
  num-style: _ => "2.6",
  source: [PDF gốc, trang 7],
  image: figure(scale(62%, reflow: true, ve-de-rutherford-2-6), kind: image, numbering: none, supplement: none),
  image-side: "right",
  sol: [
    #grid(
      columns: (1fr, auto),
      gutter: 14pt,
      [
        Với va chạm trực diện, tại điểm gần nhất động năng bằng không. Lấy thế năng ở vô cực bằng không:
        $ m_alpha v_0^2/2=(k(2e)(79e))/r_("min") => r_("min")=(316k e^2)/(m_alpha v_0^2) approx 2.75 times 10^(-14) thin "m". $
        Đây là khoảng cách giữa hai tâm hạt nhân; đã bỏ qua độ giật lùi của hạt nhân vàng theo đề.
      ],
      figure(scale(66%, reflow: true, ve-giai-rutherford-2-6), caption: [Khoảng cách gần nhất $r_("min")$], kind: image, numbering: none, supplement: none),
    )
  ],
)

// source-id: P1/2.7; pdf: 7
#vp-question(
  [
Vành tròn bán kính $R$ mang đều mật độ dài $lambda$. Tìm điện thế trên trục tại khoảng cách $z$; xét $z >>R$.
  ],
  type: "essay",
  num-style: _ => "2.7",
  source: [PDF gốc, trang 7],
  image: figure(scale(62%, reflow: true, ve-de-vanh-tron-2-7), kind: image, numbering: none, supplement: none),
  image-side: "right",
  sol: [
    #grid(
      columns: (1fr, auto),
      gutter: 14pt,
      [
        Mọi phần tử đều cách điểm xét $sqrt(R^2+z^2)$; với $V(infinity)=0$,
        $ V(z)=k integral dif q/sqrt(R^2+z^2)=(2 pi k R lambda)/sqrt(R^2+z^2). $
        Khi $abs(z) >>R$, $V approx k Q/abs(z)$, với $Q=2 pi R lambda$, đúng dạng điện thế điện tích điểm.
      ],
      figure(scale(66%, reflow: true, ve-giai-vanh-tron-2-7), caption: [Điện thế trên trục $z$], kind: image, numbering: none, supplement: none),
    )
  ],
)

#pagebreak(weak: true)

// source-id: P1/2.8; pdf: 7
#vp-question(
  [
Đĩa tròn bán kính $R$ trong mặt phẳng $O x y$, mật độ mặt đều $sigma$. Tìm điện thế trên trục tại $z$; xét $abs(z) >>R$.
  ],
  type: "essay",
  num-style: _ => "2.8",
  source: [PDF gốc, trang 7],
  image: figure(scale(62%, reflow: true, ve-de-dia-tron-2-8), kind: image, numbering: none, supplement: none),
  image-side: "right",
  sol: [
    #grid(
      columns: (1fr, auto),
      gutter: 14pt,
      [
        Chia đĩa thành vành bán kính $s$, $dif q=2 pi sigma s dif s$:
        $ V(z)=2 pi k sigma integral_0^R s/sqrt(s^2+z^2) dif s=2 pi k sigma(sqrt(R^2+z^2)-abs(z)). $
        Chọn $V(infinity)=0$. Khi $abs(z) >>R$, $sqrt(R^2+z^2)-abs(z) approx R^2/(2 abs(z))$, nên $V approx k pi R^2 sigma/abs(z)=k Q/abs(z)$.
      ],
      figure(scale(66%, reflow: true, ve-giai-dia-tron-2-8), caption: [Vành vi phân $s, thin dif s$], kind: image, numbering: none, supplement: none),
    )
  ],
)

// source-id: P1/2.9; pdf: 7–8
#vp-question(
  [
Thanh trên trục $z$ từ $-d$ đến $d$, mang đều $Q>0$, $lambda=Q/(2d)$. Chọn điện thế ở vô cực bằng không.
  ],
  type: "essay",
  num-style: _ => "2.9",
  source: [PDF gốc, trang 7–8],
  image: figure(scale(60%, reflow: true, ve-de-thanh-truc-z-2-9), kind: image, numbering: none, supplement: none),
  image-side: "right",
  listEs: (
    [Tìm $V(z)$ với $z>d$.],
    [Tìm độ đổi thế năng khi electron đi từ $4d$ đến $3d$.],
    [Electron bắt đầu từ nghỉ tại $4d$, tìm vận tốc ở $3d$.],
  ),
  sol: [
    #grid(
      columns: (1fr, auto),
      gutter: 14pt,
      [
        (a) Khoảng cách tới phần tử ở $s$ là $z-s$, do đó
        $ V(z)=k Q/(2d) integral_(-d)^d 1/(z-s) dif s=k Q/(2d) ln((z+d)/(z-d)). $
        (b) $V(4d)=k Q/(2d)ln(5/3)$, $V(3d)=k Q/(2d)ln 2$, nên
        $ Delta W=-e[V(3d)-V(4d)]=-(k e Q)/(2d)ln(6/5)<0. $
        (c) Bảo toàn cơ năng: $m_e v^2/2=-Delta W$, vậy $v=sqrt((k e Q)/(m_e d)ln(6/5))$, hướng về phía thanh. Nếu có tốc độ đầu khác không, cộng $v_0^2$ dưới căn.
      ],
      figure(scale(65%, reflow: true, ve-giai-thanh-truc-z-2-9), caption: [Phần tử $dif s$ và dịch chuyển], kind: image, numbering: none, supplement: none),
    )
  ],
)

#pagebreak(weak: true)

// source-id: P1/2.10; pdf: 8
#vp-question(
  [
Trong mô hình bài tập, hạt nhân $"U"$ có số khối 236, điện tích $92e$, bán kính $R=7.4 times 10^(-15) thin "m"$, tách thành hai hạt nhân cầu có cùng thể tích và điện tích bằng nửa ban đầu.
  ],
  type: "essay",
  num-style: _ => "2.10",
  source: [PDF gốc, trang 8],
  image: figure(scale(62%, reflow: true, ve-de-phan-hach-u-2-10), kind: image, numbering: none, supplement: none),
  image-side: "right",
  listEs: (
    [Tìm bán kính mỗi hạt con.],
    [Hai hạt ban đầu nghỉ, tiếp xúc nhau; tìm động năng mỗi hạt khi ra rất xa.],
    [Tính tổng năng lượng theo mô hình cho $10.0 thin "kg"$, bằng J và kt TNT. Cho $1u=1.66 times 10^(-27) thin "kg"$, $1 thin "kt TNT"=4.18 times 10^12 thin "J"$.],
  ),
  sol: [
    #grid(
      columns: (1fr, auto),
      gutter: 14pt,
      [
        (a) $2(4 pi r^3/3)=4 pi R^3/3$, nên $r=R/2^(1/3)=5.87 times 10^(-15) thin "m"$.

        (b) Khoảng cách tâm ban đầu $2r$, mỗi hạt mang $46e$. Thế năng tương tác ban đầu $W=k(46e)^2/(2r)$. Do hai khối lượng bằng nhau và tổng động lượng bằng không, chúng nhận động năng bằng nhau:
        $ K_1=K_2=W/2=k(46e)^2/(4r) approx 2.08 times 10^(-11) thin "J" approx 130 thin "MeV". $
        (c) Mỗi sự kiện giải phóng *tổng* $K_1+K_2 approx 4.16 times 10^(-11) thin "J"$. Số hạt nhân trong khối lượng đã cho là $N=10/(236 times 1.66 times 10^(-27)) approx 2.55 times 10^25$.
        $ W_("tong")=N(K_1+K_2) approx 1.06 times 10^15 thin "J" approx 254 thin "kt TNT". $
      ],
      figure(scale(66%, reflow: true, ve-giai-phan-hach-u-2-10), caption: [Lực đẩy Coulomb $F_C$], kind: image, numbering: none, supplement: none),
    )
    #vp-knowledge-box(type: "note", title: "Lưu ý về đề", content: [Câu (c) của nguồn gọi động năng “mỗi hạt” ở (b) là năng lượng của cả phản ứng, thiếu hệ số 2. Kết quả ở đây sửa điểm không nhất quán đó. Đây chỉ là năng lượng tương tác Coulomb của mô hình hai quả cầu, không phải dự báo đầy đủ cho phản ứng phân hạch thực.])
  ],
)

#pagebreak(weak: true)

// source-id: P1/2.11; pdf: 8
#vp-question(
  [
Điện thế $V=a(x^2+y^2)+b z^2$, $a,b>0$.
  ],
  type: "essay",
  num-style: _ => "2.11",
  source: [PDF gốc, trang 8],
  image: figure(scale(60%, reflow: true, ve-de-ellipsoid-2-11), kind: image, numbering: none, supplement: none),
  image-side: "right",
  listEs: (
    [Tìm vector điện trường và độ lớn.],
    [Mô tả mặt đẳng thế.],
    [Mô tả mặt có $E$ không đổi.],
  ),
  sol: [
    #grid(
      columns: (1fr, auto),
      gutter: 14pt,
      [
        (a) Lấy gradient:
        $ arrow(E)=-2a x arrow(i)-2a y arrow(j)-2b z arrow(k), quad E=2sqrt(a^2(x^2+y^2)+b^2z^2). $
        (b) Với $V_0>0$, phương trình $(x^2+y^2)/(V_0/a)+z^2/(V_0/b)=1$: ellipsoid tròn xoay quanh $O z$, bán trục ngang $sqrt(V_0/a)$, dọc $sqrt(V_0/b)$. Nếu $a=b$, đó là mặt cầu.

        (c) Mặt $E=E_0>0$ thỏa $(x^2+y^2)/(E_0^2/(4a^2))+z^2/(E_0^2/(4b^2))=1$, cũng là ellipsoid tròn xoay. Với giá trị bằng không, cả hai họ suy biến thành gốc tọa độ.
      ],
      figure(scale(65%, reflow: true, ve-giai-ellipsoid-2-11), caption: [Mặt đẳng thế và $arrow(E)$], kind: image, numbering: none, supplement: none),
    )
  ],
)

// source-id: P1/2.12; pdf: 8
#vp-question(
  [
Hai bản vuông cạnh $3.0 thin "cm"$, cách $5.0 thin "mm"$, mang điện trái dấu, $U=25.0 thin "V"$; bỏ qua mép. Tìm
  ],
  type: "essay",
  num-style: _ => "2.12",
  source: [PDF gốc, trang 8],
  image: figure(scale(62%, reflow: true, ve-de-hai-ban-vuong-2-12), kind: image, numbering: none, supplement: none),
  image-side: "right",
  listEs: (
    [điện tích mỗi bản;],
    [điện trường;],
    [tốc độ electron đi từ nghỉ ở bản âm tới bản dương.],
  ),
  sol: [
    #grid(
      columns: (1fr, auto),
      gutter: 14pt,
      [
        (b) $E=U/d=5.00 times 10^3 thin "V/m"$, từ bản dương tới bản âm. (a) $sigma=epsilon_0 E$, $A=(0.030)^2 thin "m"^2$,
        $ abs(Q)=epsilon_0 E A=3.98 times 10^(-11) thin "C". $
        (c) Electron tăng động năng $e U$, nên $v=sqrt(2e U/m_e)=2.97 times 10^6 thin "m/s"$.
      ],
      figure(scale(66%, reflow: true, ve-giai-hai-ban-vuong-2-12), caption: [Gia tốc của electron], kind: image, numbering: none, supplement: none),
    )
  ],
)

#pagebreak(weak: true)

// source-id: P1/2.13; pdf: 9
#vp-question(
  [
Điện tích $q=1.5 times 10^(-8) thin "C"$; ba điểm $M,N,P$ cách nó lần lượt $10,5,15 thin "cm"$.
  ],
  type: "essay",
  num-style: _ => "2.13",
  source: [PDF gốc, trang 9],
  image: figure(scale(60%, reflow: true, ve-de-tam-giac-mnp-2-13), kind: image, numbering: none, supplement: none),
  image-side: "right",
  listEs: (
    [Tìm công lực điện khi chuyển $q_0=2 times 10^(-10) thin "C"$ theo $M N$, $N P$, $P M$, đường kín $M N P M$.],
    [Kết quả có đổi nếu ba điểm thẳng hàng?],
  ),
  sol: [
    #grid(
      columns: (1fr, auto),
      gutter: 14pt,
      [
        Vì $V=k q/r$, $A_(A B)=k q q_0(1/r_A-1/r_B)$. Thay lần lượt:
        $ A_(M N)=-2.70 times 10^(-7) thin "J", quad A_(N P)=3.60 times 10^(-7) thin "J", $
        $ A_(P M)=-8.99 times 10^(-8) thin "J", quad A_(M N P M)=0. $
        Lực tĩnh điện là lực thế; công chỉ phụ thuộc khoảng cách đầu cuối tới nguồn nên các kết quả không đổi khi ba điểm thẳng hàng.
      ],
      figure(scale(65%, reflow: true, ve-giai-tam-giac-mnp-2-13), caption: [Bảo toàn công trên đường kín], kind: image, numbering: none, supplement: none),
    )
  ],
)

// source-id: P1/2.14; pdf: 9
#vp-question(
  [
Lấy điện thế bằng không ở vô cực. Tính điện thế ở $P$ do điện tích $Q$:
  ],
  type: "essay",
  num-style: _ => "2.14",
  source: [PDF gốc, trang 9],
  image: figure(scale(58%, reflow: true, ve-de-ba-cau-hinh-2-14), kind: image, numbering: none, supplement: none),
  image-side: "right",
  listEs: (
    [tập trung tại một điểm cách $P$ đoạn $R$;],
    [trải đều trên cung bán kính $R$, tâm $P$, góc ở tâm $alpha$;],
    [trải đều trên cả đường tròn bán kính $R$, tâm $P$.],
  ),
  sol: [
    #grid(
      columns: (1fr, auto),
      gutter: 14pt,
      [
        Ở cả ba cấu hình, mọi phần tử điện tích đều cách $P$ cùng khoảng $R$. Do điện thế là đại lượng vô hướng,
        $ V(P)=integral k/R dif q=(k Q)/R. $
        Kết quả không phụ thuộc góc cung. Không được suy từ đó rằng các điện trường cũng bằng nhau: điện trường là vector, các thành phần có thể triệt tiêu.
      ],
      figure(scale(62%, reflow: true, ve-giai-ba-cau-hinh-2-14), caption: [Điện thế cùng bằng $(k Q)/R$], kind: image, numbering: none, supplement: none),
    )
  ],
)

#pagebreak(weak: true)

// source-id: P1/2.15; pdf: 9
#vp-question(
  [
Dây dài $l=10 thin "cm"$, mang đều $lambda=10^(-8) thin "C/m"$.
  ],
  type: "essay",
  num-style: _ => "2.15",
  source: [PDF gốc, trang 9],
  image: figure(scale(60%, reflow: true, ve-de-thanh-keo-dai-2-15), kind: image, numbering: none, supplement: none),
  image-side: "right",
  listEs: (
    [Tìm $V(r)$ trên đường kéo dài, $r$ tính từ trung điểm.],
    [Suy ra $E(r)$, tính ở $r=1.5l$.],
    [Tìm công chuyển $q=3 times 10^(-12) thin "C"$ từ $r_M=1.5l$ tới $r_N=2.5l$ cùng phía.],
  ),
  sol: [
    #grid(
      columns: (1fr, auto),
      gutter: 14pt,
      [
        (a) Với $r>l/2$ và $V(infinity)=0$,
        $ V(r)=k lambda integral_(-l/2)^(l/2) 1/(r-x) dif x=k lambda ln((r+l/2)/(r-l/2)). $
        (b) $E_r=-dif V/dif r=(k lambda l)/(r^2-l^2/4)$. Tại $r=0.15 thin "m"$, $E=449.5 thin "V/m"$, hướng ra xa dây.

        (c) $V_M=k lambda ln 2$, $V_N=k lambda ln(3/2)$, nên
        $ A=q(V_M-V_N)=q k lambda ln(4/3) approx 7.76 times 10^(-11) thin "J". $
      ],
      figure(scale(65%, reflow: true, ve-giai-thanh-keo-dai-2-15), caption: [Phần tử $dif x$ và $arrow(E)(r)$], kind: image, numbering: none, supplement: none),
    )
  ],
)

// source-id: P1/2.16; pdf: 9
#vp-question(
  [
Vòng dây bán kính $a=4 thin "cm"$ tích điện đều $q=5 times 10^(-8) thin "C"$. Tính điện thế tại
  ],
  type: "essay",
  num-style: _ => "2.16",
  source: [PDF gốc, trang 9],
  image: figure(scale(60%, reflow: true, ve-de-vong-day-2-16), kind: image, numbering: none, supplement: none),
  image-side: "right",
  listEs: (
    [điểm trên trục cách tâm $h=3 thin "cm"$;],
    [tâm vòng.],
  ),
  sol: [
    #grid(
      columns: (1fr, auto),
      gutter: 14pt,
      [
        Từ $V(h)=(k q)/sqrt(a^2+h^2)$, vì $sqrt(0.04^2+0.03^2)=0.05 thin "m"$:
        $ V_M=8.99 times 10^3 thin "V", quad V_O=(k q)/a=1.12 times 10^4 thin "V". $
        Điện trường tại tâm bằng không nhưng điện thế tại tâm khác không.
      ],
      figure(scale(65%, reflow: true, ve-giai-vong-day-2-16), caption: [Điện thế tại $O$ và $M$], kind: image, numbering: none, supplement: none),
    )
  ],
)

#pagebreak(weak: true)

// source-id: P1/2.17; pdf: 9
#vp-question(
  [
Đĩa bán kính $R$ tích đều mật độ $sigma$, cắt bỏ ba phần tư. Tìm điện thế do phần tư còn lại tại điểm trên trục của đĩa ban đầu, cách tâm $z$; lấy $V(infinity)=0$.
  ],
  type: "essay",
  num-style: _ => "2.17",
  source: [PDF gốc, trang 9],
  image: figure(scale(60%, reflow: true, ve-de-phan-tu-dia-2-17), kind: image, numbering: none, supplement: none),
  image-side: "right",
  sol: [
    #grid(
      columns: (1fr, auto),
      gutter: 14pt,
      [
        Mỗi vành bán kính $s$ chỉ còn góc $pi/2$, nên $dif q=sigma(pi/2)s dif s$. Tích phân cho
        $ V(z)=(pi k sigma)/2 integral_0^R s/sqrt(s^2+z^2) dif s=(pi k sigma)/2 (sqrt(R^2+z^2)-abs(z)). $
        Đây là một phần tư điện thế của cả đĩa. Chỉ điện thế có quy luật này; điện trường của phần tư đĩa còn có thành phần ngang trục.
      ],
      figure(scale(65%, reflow: true, ve-giai-phan-tu-dia-2-17), caption: [Vành vi phân cung tròn], kind: image, numbering: none, supplement: none),
    )
  ],
)

// source-id: P1/2.18; pdf: 10
#vp-question(
  [
Hai trụ kim loại mỏng, dài, đồng trục, bán kính $r_1=3 thin "cm"$, $r_2=10 thin "cm"$, hiệu điện thế $U=450 thin "V"$. Tìm
  ],
  type: "essay",
  num-style: _ => "2.18",
  source: [PDF gốc, trang 10],
  image: figure(scale(58%, reflow: true, ve-de-hai-tru-2-18), kind: image, numbering: none, supplement: none),
  image-side: "right",
  listEs: (
    [điện tích trên đơn vị dài;],
    [mật độ mặt;],
    [trường sát trụ trong, tại trung điểm khoảng cách hai trụ và sát trụ ngoài.],
  ),
  sol: [
    #grid(
      columns: (1fr, auto),
      gutter: 14pt,
      [
        Giả sử trụ trong dương, hai trụ mang điện đối nhau và bỏ qua mép. Gauss cho $E(r)=lambda/(2 pi epsilon_0 r)$ giữa hai trụ. Tích phân:
        $ U=integral_(r_1)^(r_2) E(r) dif r=lambda/(2 pi epsilon_0)ln(r_2/r_1). $
        (a) $lambda=(2 pi epsilon_0 U)/ln(r_2/r_1) approx 2.08 times 10^(-8) thin "C/m"$; trụ ngoài mang $-lambda$.

        (b) $sigma_1=lambda/(2 pi r_1)=1.10 times 10^(-7) thin "C/m"^2$; $sigma_2=-lambda/(2 pi r_2)=-3.31 times 10^(-8) thin "C/m"^2$.

        (c) $E(r)=U/[r ln(r_2/r_1)]$. Tại $r_1^+$, $r=0.065 thin "m"$, $r_2^-$ lần lượt được $1.25 times 10^4$, $5.75 times 10^3$, $3.74 times 10^3 thin "V/m"$. Đây là giới hạn trong khe điện môi; bên trong kim loại trường bằng không.
      ],
      figure(scale(62%, reflow: true, ve-giai-hai-tru-2-18), caption: [Trường xuyên tâm giữa hai trụ], kind: image, numbering: none, supplement: none),
    )
  ],
)

#pagebreak(weak: true)

// source-id: P1/2.19; pdf: 10
#vp-question(
  [
Ống đếm Geiger có dây trục bán kính $a=145 thin "μm"$, ống ngoài bán kính $b=1.80 thin "cm"$. Dây trục có thế cao hơn. Tại $r=1.20 thin "cm"$, $E=2.00 times 10^4 thin "V/m"$. Tìm hiệu điện thế.
  ],
  type: "essay",
  num-style: _ => "2.19",
  source: [PDF gốc, trang 10],
  image: figure(scale(58%, reflow: true, ve-de-geiger-2-19), kind: image, numbering: none, supplement: none),
  image-side: "right",
  sol: [
    #grid(
      columns: (1fr, auto),
      gutter: 14pt,
      [
        Với hệ trụ dài, $E(r)=lambda/(2 pi epsilon_0 r)$ và $U=lambda/(2 pi epsilon_0)ln(b/a)$. Khử $lambda$:
        $ U=E(r)r ln(b/a)=2.00 times 10^4 times 0.0120 times ln(0.0180/(145 times 10^(-6))) approx 1.16 times 10^3 thin "V". $
        Điện trường hướng từ dây trong ra vỏ ngoài.
      ],
      figure(scale(62%, reflow: true, ve-giai-geiger-2-19), caption: [Vùng ion hóa thác tuyết], kind: image, numbering: none, supplement: none),
    )
  ],
)

// source-id: P1/2.20; pdf: 10
#vp-question(
  [
Hai vỏ cầu mỏng đồng tâm $R_1=3.00 thin "cm"$, $R_2=5.00 thin "cm"$, tổng điện tích từng vỏ $q_1=+6.00 thin "nC"$, $q_2=-9.00 thin "nC"$. Lấy $V(infinity)=0$.
  ],
  type: "essay",
  num-style: _ => "2.20",
  source: [PDF gốc, trang 10],
  image: figure(scale(58%, reflow: true, ve-de-hai-vo-cau-2-20), kind: image, numbering: none, supplement: none),
  image-side: "right",
  listEs: (
    [Tìm thế ở $r=0,4.00,6.00 thin "cm"$.],
    [Tìm độ chênh điện thế hai vỏ và vỏ có thế lớn hơn.],
  ),
  sol: [
    #grid(
      columns: (1fr, auto),
      gutter: 14pt,
      [
        Một vỏ cầu gây thế $(k q)/R$ ở bên trong và $(k q)/r$ ở bên ngoài. Chồng chất:
        $ V(r)=cases((k q_1)/R_1+(k q_2)/R_2 & r<=R_1, (k q_1)/r+(k q_2)/R_2 & R_1<=r<=R_2, (k(q_1+q_2))/r & r>=R_2). $
        Thay số cho $V(0)=179.8 thin "V"$, $V(4 thin "cm")=-269.7 thin "V"$, $V(6 thin "cm")=-449.5 thin "V"$.

        Hiệu $V(R_1)-V(R_2)=k q_1(1/R_1-1/R_2)=719.2 thin "V">0$, nên vỏ trong có điện thế cao hơn.
      ],
      figure(scale(62%, reflow: true, ve-giai-hai-vo-cau-2-20), caption: [Đồ thị thế $V(r)$], kind: image, numbering: none, supplement: none),
    )
  ],
)

#pagebreak(weak: true)

// source-id: P1/2.21; pdf: 10
#vp-question(
  [
Hai quả cầu kim loại có cùng điện thế bề mặt, $R_A=3R_B$. Tìm $Q_B/Q_A$ và $E_B/E_A$.
  ],
  type: "essay",
  num-style: _ => "2.21",
  source: [PDF gốc, trang 10],
  image: figure(scale(50%, reflow: true, ve-de-hai-qua-cau-2-21), kind: image, numbering: none, supplement: none),
  image-side: "right",
  sol: [
    #grid(
      columns: (1fr, auto),
      gutter: 10pt,
      [
        Giả sử các quả cầu đặt đủ xa nhau để bỏ qua cảm ứng tương hỗ. Với quả cầu cô lập, $V=(k Q)/R$, nên $Q_A/R_A=Q_B/R_B$ và $Q_B/Q_A=R_B/R_A=1/3$.

        Mặt khác $E=(k Q)/R^2=V/R$, suy ra $E_B/E_A=R_A/R_B=3$. Nếu hai quả cầu đặt gần nhau, chỉ dữ kiện bán kính và điện thế chưa đủ để xác định trường bề mặt.
      ],
      figure(scale(52%, reflow: true, ve-giai-hai-qua-cau-2-21), caption: [Hiệu ứng mũi nhọn], kind: image, numbering: none, supplement: none),
    )
  ],
)

// source-id: P1/2.22; pdf: 11
#vp-question(
  [
Phân bố cầu $rho(r)=rho_0(1-r/R)$ khi $r<=R$, bằng không khi $r>=R$; $rho_0=(3Q)/(pi R^3)>0$.
  ],
  type: "essay",
  num-style: _ => "2.22",
  source: [PDF gốc, trang 11],
  image: figure(scale(48%, reflow: true, ve-de-qua-cau-bien-thien-2-22), kind: image, numbering: none, supplement: none),
  image-side: "right",
  listEs: (
    [Tìm điện trường trong và ngoài.],
    [Chứng minh thế ngoài bằng thế điện tích điểm $Q$.],
    [Tìm thế trong, lấy $V(infinity)=0$.],
  ),
  sol: [
    #grid(
      columns: (1fr, auto),
      gutter: 10pt,
      [
        (a) Điện tích trong bán kính $r<=R$:
        $ Q(r)=4 pi rho_0 integral_0^r (1-s/R)s^2 dif s=4 pi rho_0(r^3/3-r^4/(4R)). $
        Tại $R$, $Q(R)=pi rho_0 R^3/3=Q$. Từ Gauss:
        $ E(r)=cases(rho_0/epsilon_0 (r/3-r^2/(4R)) & r<=R, (k Q)/r^2 & r>=R), $
        vector hướng xuyên tâm ra ngoài.

        (b) $V(r)=integral_r^infinity (k Q)/s^2 dif s=(k Q)/r$ ở ngoài.

        (c) Dùng tính liên tục của điện thế tại mặt cầu:
        $ V(r) = (k Q)/R+integral_r^R rho_0/epsilon_0 (s/3-s^2/(4R)) dif s = (k Q)/R (2-2(r/R)^2+(r/R)^3). $
        Tại tâm $V(0)=(2k Q)/R$, tại mặt $V(R)=(k Q)/R$; đạo hàm cho lại $E=-V'$.
      ],
      figure(scale(50%, reflow: true, ve-giai-qua-cau-bien-thien-2-22), caption: [Đường cong $V(r)$ và $E(r)$], kind: image, numbering: none, supplement: none),
    )
  ],
)


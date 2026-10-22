#import "../../vietphys.typ": *
#import "../hinh/hinh-01-dien-truong.typ": *

#vp-q-counter.update(0)
#vp-set-question-style(prefix: "Bài", lines: 0)

// source-id: P1/1.1; pdf: 2
#vp-question(
  [
    Một quả cầu nhỏ có khối lượng $m = 7.5 thin "g"$ và có điện tích $q_1 = 32 thin "nC"$ nối với $1$ lò xo và treo thẳng đứng như hình. Quả cầu thứ hai có cùng khối lượng và có điện tích $q_2 = -58 thin "nC"$ nằm phía dưới cách quả cầu thứ nhất một khoảng $d = 2 thin "cm"$.
    #set enum(numbering: "a)")
    + Tìm lực kéo của lò xo.
    + Nếu lò xo chịu được lực kéo cực đại là $0.18 thin "N"$, xác định giá trị tối thiểu của $d$ để lò xo còn tuân theo định luật Hooke.
  ],
  type: "essay",
  num-style: _ => "1.1",
  source: [PDF gốc, trang 2],
  image: figure(ve-lo-xo-1-1(hien-luc: false), kind: image, numbering: none, supplement: none),
  image-side: "right",
  sol: [
    #grid(
      columns: (1fr, auto),
      gutter: 14pt,
      [
        Hai điện tích trái dấu hút nhau nên lực điện tác dụng lên quả cầu trên hướng thẳng đứng xuống dưới.

        Quả cầu trên chịu tác dụng của ba lực: trọng lực $arrow(P)$, lực điện $arrow(F)_đ$ và lực đàn hồi của lò xo $arrow(F)_("đh")$. Khi quả cầu cân bằng:
        $ arrow(F)_("đh") + arrow(P) + arrow(F)_đ = arrow(0). $
        Chiếu lên phương thẳng đứng (chiều dương hướng lên):
        $ F_("đh") - m g - k abs(q_1 q_2)/d^2 = 0 => F_("đh") = m g + k abs(q_1 q_2)/d^2. $

        (a) Với $d = 2 thin "cm" = 0.02 thin "m"$:
        $F_đ = 0.0417 thin "N"$, $P = m g = 0.0736 thin "N"$, do đó lực kéo tác dụng lên lò xo là
        $ F_("đh") = P + F_đ = 0.115 thin "N". $

        (b) Điều kiện lò xo chịu được lực kéo tối đa $F_("đh,max") = 0.18 thin "N"$:
        $ m g + k abs(q_1 q_2)/d^2 <= F_("đh,max") $
        $ => d >= sqrt((k abs(q_1 q_2))/(F_("đh,max") - m g)) = 0.0125 thin "m" = 1.25 thin "cm". $
        Vậy khoảng cách nhỏ nhất giữa hai quả cầu là $d_("min") = 1.25 thin "cm"$.
      ],
      figure(ve-lo-xo-1-1(hien-luc: true), caption: [Sơ đồ lực], kind: image, numbering: none, supplement: none),
    )
  ],
)


// source-id: P1/1.2; pdf: 2
#vp-question(
  [
    Có hai giọt nước giống nhau, mỗi giọt có thừa một electron. Cho rằng các giọt nước hình cầu và biết rằng lực đẩy tĩnh điện tác dụng lên mỗi giọt nước cân bằng với lực hấp dẫn giữa chúng. Tính bán kính $a$ của mỗi giọt nước.
  ],
  type: "essay",
  num-style: _ => "1.2",
  source: [PDF gốc, trang 2],
  sol: [
    Mỗi giọt nước tích điện $q = -e$ và có khối lượng $m$. Hai giọt nước chịu tác dụng của lực đẩy tĩnh điện $arrow(F)_đ$ và lực hút hấp dẫn $arrow(F)_("hd")$.

    #align(center, figure(
      ve-hai-giot-nuoc-1-2,
      caption: [Sơ đồ cân bằng lực giữa hai giọt nước.],
      kind: image,
      numbering: none,
      supplement: none,
    ))

    Điều kiện cân bằng giữa lực đẩy tĩnh điện và lực hấp dẫn:
    $ F_đ = F_("hd") <=> (k e^2)/r^2 = (G m^2)/r^2 => m = e sqrt(k/G). $
    Khối lượng của mỗi giọt nước hình cầu bán kính $a$ là $m = rho V = rho dot 4/3 pi a^3$. Do đó:
    $ a = ((3 m)/(4 pi rho))^(1/3) = ((3 e)/(4 pi rho) sqrt(k/G))^(1/3). $
    Với $G = 6.674 times 10^(-11) thin "N" dot "m"^2/"kg"^2$, $k approx 8.99 times 10^9 thin "N" dot "m"^2/"C"^2$, $e = 1.602 times 10^(-19) thin "C"$ và $rho = 1000 thin "kg/m"^3$:
    $ a approx 7.63 times 10^(-5) thin "m" = 76.3 thin "μm". $
    Khoảng cách $r$ giữa hai giọt nước triệt tiêu vì cả hai lực đều tỉ lệ nghịch với $r^2$.
  ],
)

// source-id: P1/1.3; pdf: 2
#vp-question(
  [
    Một electron điện tích $e$, khối lượng $m$ chuyển động đều trên một quỹ đạo tròn bán kính $r$ quanh hạt nhân nguyên tử Hidro. Xác định vận tốc chuyển động của electron trên quỹ đạo. Cho $e = -1.6 times 10^(-19) thin "C"$, $m = 9.1 times 10^(-28) thin "g"$, khoảng cách trung bình từ electron đến hạt nhân là $r = 10^(-8) thin "cm"$.
  ],
  type: "essay",
  num-style: _ => "1.3",
  source: [PDF gốc, trang 2],
  sol: [
    #grid(
      columns: (1fr, auto),
      gutter: 14pt,
      [
        Đổi đơn vị: $m = 9.1 times 10^(-31) thin "kg"$, $r = 10^(-8) thin "cm" = 10^(-10) thin "m"$.

        Đề dùng $e < 0$ cho điện tích electron; đặt $e_0 = abs(e)$ để tránh nhầm dấu. Proton mang điện tích $+e_0$, electron mang điện tích $-e_0$. Lực hút Coulomb đóng vai trò lực hướng tâm:
        $ (k e_0^2)/r^2 = (m v^2)/r. $
        Suy ra tốc độ chuyển động của electron:
        $
          v = sqrt((k e_0^2)/(m r)) = sqrt((8.99 times 10^9 times (1.6 times 10^(-19))^2)/(9.1 times 10^(-31) times 10^(-10))) approx 1.59 times 10^6 thin "m/s".
        $
        Đây là kết quả trong mô hình quỹ đạo cổ điển mà đề bài giả định.
      ],
      figure(ve-nguyen-tu-1-3, caption: [Quỹ đạo electron], kind: image, numbering: none, supplement: none),
    )
  ],
)

// source-id: P1/1.4; pdf: 2
#vp-question(
  [
    1) Một phân tử DNA (axit deoxyribonucleic) có chiều dài là $2.17 thin "μm"$. Phần đuôi của phân tử bị ion hóa đơn lẻ thành một đầu mang điện tích âm ($-e$), đầu còn lại mang điện tích dương. Phân tử xoắn ốc hoạt động như một lò xo và nén $1%$ sau khi bị tích điện. Xác định “độ cứng $k$” của phân tử.

    2) Ba điện tích điểm nằm ở ba góc của tam giác đều như hình.
    #set enum(numbering: "a.")
    + Tìm cường độ và hướng của điện trường ở điểm có điện tích $2 thin "μC"$.
    + Điện trường sẽ bị ảnh hưởng như thế nào nếu điện tích ở điểm đó tăng lên gấp đôi?
  ],
  type: "essay",
  num-style: _ => "1.4",
  source: [PDF gốc, trang 2],
  image: figure(scale(80%, reflow: true, ve-tam-giac-1-4), kind: image, numbering: none, supplement: none),
  image-side: "right",
  sol: [
    (1) Độ co $Delta L=0.01L$, khoảng cách hai điện tích sau co là $0.99L$. Cân bằng lực đàn hồi và lực hút tĩnh điện giữa hai đầu:
    $ k_s Delta L=(k e^2)/(0.99L)^2 => k_s approx 2.30 times 10^(-9) thin "N/m". $
    Nếu lấy khoảng cách gần đúng bằng $L$, được $2.26 times 10^(-9) thin "N/m"$.

    #align(center, figure(
      ve-dna-1-4,
      caption: [Sơ đồ cân bằng lực trên phân tử DNA.],
      kind: image,
      numbering: none,
      supplement: none,
    ))

    #grid(
      columns: (1fr, auto),
      gutter: 12pt,
      [
        (2a) Chọn $+x$ sang phải, $+y$ lên trên.
        Lực do $q_2 = -4 thin mu"C"$ hút $q_1 = 2 thin mu"C"$ hướng theo chiều $+x$:
        $ F_(2 1) = k (abs(q_1 q_2))/a^2 = 0.288 thin "N". $
        Lực do $q_3 = 7 thin mu"C"$ đẩy $q_1 = 2 thin mu"C"$ hướng chếch xuống dưới (góc $240 degree$ so với $+x$):
        $ F_(3 1) = k (abs(q_1 q_3))/a^2 = 0.503 thin "N". $
        Tổng hợp lực tác dụng lên $q_1$: $arrow(F) = arrow(F)_(2 1) + arrow(F)_(3 1) = q_1 arrow(E)$.
        Chiếu lên các trục:
        $ F_x = F_(2 1) - F_(3 1) cos 60 degree = 0.036 thin "N" => E_x = F_x / q_1 = 1.80 times 10^4 thin "N/C", $
        $ F_y = -F_(3 1) sin 60 degree = -0.436 thin "N" => E_y = F_y / q_1 = -2.18 times 10^5 thin "N/C". $
        Độ lớn điện trường $E = sqrt(E_x^2 + E_y^2) approx 2.19 times 10^5 thin "N/C"$, hợp với chiều $+x$ một góc $85.3 degree$ hướng xuống dưới.

        (2b) Điện trường ngoài không phụ thuộc vào điện tích thử $q_1$ nên $arrow(E)$ giữ nguyên; lực tác dụng lên điện tích thử $arrow(F) = q_1 arrow(E)$ tăng gấp đôi.
      ],
      figure(
        ve-luc-tam-giac-1-4,
        caption: [Sơ đồ lực tác dụng lên $q_1$],
        kind: image,
        numbering: none,
        supplement: none,
      ),
    )
  ],
)

// source-id: P1/1.5; pdf: 2
#vp-question(
  [
    Đường sức điện của hai điện tích điểm $q_1$, $q_2$ được biểu diễn như hình sau.
    #set enum(numbering: "a)")
    + Xác định dấu của $q_1$ và $q_2$.
    + Xác định tỉ lệ $q_1 / q_2$.
  ],
  type: "essay",
  num-style: _ => "1.5",
  source: [PDF gốc, trang 2],
  image: figure(ve-duong-suc-1-5, kind: image, numbering: none, supplement: none),
  image-side: "right",
  sol: [
    Đường sức đi ra khỏi điện tích dương và đi vào điện tích âm. Các mũi tên đi từ $q_2$ đến $q_1$, nên $q_1<0$, $q_2>0$. Đếm hình: có 6 đường đi vào $q_1$, tổng cộng 18 đường đi ra từ $q_2$ (12 đường đi ra vô cực). Số đường tỉ lệ với độ lớn điện tích, do đó $q_1/q_2=-6/18=-1/3$.
  ],
)

// source-id: P1/1.6; pdf: 3
#vp-question(
  [
    Trong thí nghiệm giọt dầu Millikan được minh họa như hình, một máy phun được sử dụng để bắn nhiều giọt nhỏ của dầu giữa hai đĩa kim loại song song tích điện trái dấu nhau. Một vài giọt bắn có thể chứa các electron thừa. Sự tích điện trên hai đĩa được điều chỉnh để lực điện tác dụng lên những điện tử thừa cân bằng với trọng lực của giọt dầu. Ý tưởng được đề ra là để tìm kiếm một giọt dầu chịu lực điện nhỏ nhất (giả sử nó chỉ chứa một electron). Biết độ lớn cường độ điện trường giữa hai đĩa $3 times 10^4 thin "V/m"$, độ lớn điện tích của một electron là $1.6 times 10^(-19) thin "C"$. Hãy ước tính bán kính của một giọt dầu có khối lượng riêng $858 thin "kg/m"^3$ mà trọng lực của nó cân bằng với lực điện.
  ],
  type: "essay",
  num-style: _ => "1.6",
  source: [PDF gốc, trang 3],
  image: figure(scale(85%, reflow: true, ve-thi-nghiem-millikan-1-6), kind: image, numbering: none, supplement: none),
  image-side: "right",
  sol: [
    #grid(
      columns: (1fr, auto),
      gutter: 14pt,
      [
        Bỏ qua lực đẩy của không khí theo mô hình đề, giọt dầu tích điện âm ($q = -e$) chịu tác dụng của hai lực: trọng lực $arrow(P) = m arrow(g)$ hướng thẳng đứng xuống dưới và lực điện $arrow(F)_đ = q arrow(E) = -e arrow(E)$ hướng thẳng đứng lên trên.

        Vì lực điện hướng lên mà giọt dầu mang điện âm nên cường độ điện trường $arrow(E)$ giữa hai bản kim loại phải hướng thẳng đứng xuống dưới.

        Điều kiện cân bằng lực:
        $ F_đ = P <=> e E = m g = rho (4/3 pi a^3) g. $
        Suy ra bán kính giọt dầu:
        $ a = ((3 e E)/(4 pi rho g))^(1/3) approx 5.15 times 10^(-7) thin "m" = 0.515 thin "μm". $
      ],
      figure(ve-can-bang-millikan-1-6, caption: [Sơ đồ lực], kind: image, numbering: none, supplement: none),
    )
  ],
)

// source-id: P1/1.7; pdf: 3
#vp-question(
  [
    Trên quả cầu tích điện của máy phát điện Van de Graaff, người ta đặt một proton. Proton này được tăng tốc với gia tốc $a = 1.52 times 10^12 thin "m/s"^2$.
    #set enum(numbering: "a)")
    + Tìm độ lớn lực điện lên proton ngay lúc đó.
    + Tìm cường độ và hướng của điện trường ở bề mặt quả cầu.
  ],
  type: "essay",
  num-style: _ => "1.7",
  source: [PDF gốc, trang 3],
  image: figure(scale(85%, reflow: true, ve-van-de-graaff-1-7(hien-luc: false)), kind: image, numbering: none, supplement: none),
  image-side: "right",
  sol: [
    #grid(
      columns: (1fr, auto),
      gutter: 14pt,
      [
        (a) Trọng lực tác dụng lên proton $P = m_p g approx 1.64 times 10^(-26) thin "N"$ rất nhỏ so với lực điện, nên có thể bỏ qua.
        Theo định luật II Newton, độ lớn lực điện tác dụng lên proton:
        $ F = m_p a = (1.673 times 10^(-27)) times (1.52 times 10^12) approx 2.54 times 10^(-15) thin "N". $

        (b) Proton mang điện tích dương $q = +e = 1.602 times 10^(-19) thin "C"$. Cường độ điện trường tại bề mặt quả cầu:
        $ E = F / e = (2.54 times 10^(-15)) / (1.602 times 10^(-19)) approx 1.59 times 10^4 thin "V/m". $
        Vì proton mang điện dương, $arrow(E)$ cùng chiều gia tốc $arrow(a)$. Đề chỉ cho độ lớn $a$, nên chưa đủ để kết luận chiều điện trường. Nếu proton bị đẩy ra như hình minh họa, $arrow(E)$ hướng theo bán kính ra ngoài; nếu proton bị hút vào, $arrow(E)$ hướng vào tâm.
      ],
      figure(scale(85%, reflow: true, ve-van-de-graaff-1-7(hien-luc: true)), caption: [Sơ đồ lực], kind: image, numbering: none, supplement: none),
    )
  ],
)

// source-id: P1/1.8; pdf: 3
#vp-question(
  [
    Một chùm proton chuyển động với tốc độ ban đầu $v_0 = 9550 thin "m/s"$ được chiếu tới một vùng điện trường đều có độ lớn $E = 720 thin "N/C"$, vecto vận tốc hợp với phương ngang góc $theta$. Chùm proton đập vào mục tiêu cách vị trí ban đầu $1.27 thin "mm"$. Hãy xác định:
  ],
  type: "essay",
  num-style: _ => "1.8",
  source: [PDF gốc, trang 3],
  image: figure(scale(85%, reflow: true, ve-nem-proton-1-8), kind: image, numbering: none, supplement: none),
  image-side: "right",
  listEs: (
    [Các góc $theta$ sao cho chùm proton đến điểm mục tiêu nói trên.],
    [Thời gian chuyển động đối với từng góc chiếu nói trên.],
  ),
  sol: [
    #grid(
      columns: (1fr, auto),
      gutter: 14pt,
      [
        Gia tốc xuống là $a=e E/m_p=6.89 times 10^10 thin "m/s"^2$. Phương trình chuyển động:
        $ x=v_0 cos theta t, quad y=v_0 sin theta t-a t^2/2. $
        Cho $y=0$ ở lần trở lại: $t=2v_0 sin theta/a$, nên $D=v_0^2 sin(2theta)/a$.
        $ sin(2theta)=a D/v_0^2 approx 0.960, quad theta_1 approx 36.9 degree, quad theta_2 approx 53.1 degree. $
        Từ $t=D/(v_0 cos theta)$, được $t_1 approx 1.66 times 10^(-7) thin "s"$ và $t_2 approx 2.22 times 10^(-7) thin "s"$. Chữ “photon” trong ý (a) của nguồn được hiểu là proton theo toàn bộ dữ kiện.
      ],
      figure(scale(85%, reflow: true, ve-giai-nem-proton-1-8), caption: [Hai quỹ đạo tới mục tiêu], kind: image, numbering: none, supplement: none),
    )
  ],
)

// source-id: P1/1.9; pdf: 3
#vp-question(
  [
    Một electron chuyển động với tốc độ ban đầu là $v_0 = 1.6 times 10^6 thin "m/s"$ bay vào hai tấm bảng, ở giữa là điện trường hướng từ trên xuống (như hình) và bên ngoài tấm bảng điện trường bằng $0$. Electron xuất phát tại vị trí chính giữa hai tấm bảng.
  ],
  type: "essay",
  num-style: _ => "1.9",
  source: [PDF gốc, trang 3],
  image: figure(scale(82%, reflow: true, ve-hai-ban-1-9), kind: image, numbering: none, supplement: none),
  image-side: "right",
  listEs: (
    [Nếu electron di chuyển đến vị trí mép ngoài của tấm bảng phía trên, hãy tính độ lớn cường độ điện trường.],
    [Giả sử thay thế electron bằng proton với cùng tốc độ ban đầu là $v_0$. Proton có va chạm với một trong hai tấm bảng hay không? Nếu proton không va chạm với tấm bảng, hãy xác định quãng đường dịch chuyển và hướng chuyển động trên phương thẳng đứng của proton trước khi ra khỏi tấm bảng.],
    [So sánh quỹ đạo chuyển động của electron và proton sau đó giải thích sự khác biệt đó.],
    [Trong trường hợp này, ta có thể bỏ qua sự ảnh hưởng của trọng lực tác dụng lên từng hạt hay không?],
  ),
  sol: [
    #grid(
      columns: (1fr, auto),
      gutter: 14pt,
      [
        (a) Thời gian trong bản $t=L/v_0=1.25 times 10^(-8) thin "s"$. Electron gia tốc lên; $d/2=e E t^2/(2m_e)$, nên
        $ E=(m_e d v_0^2)/(e L^2) approx 364 thin "V/m". $

        (b) Proton gia tốc xuống. Độ lệch khi ra khỏi bản:
        $ abs(y_p)=e E t^2/(2m_p)=(m_e/m_p)d/2 approx 2.72 thin "μm"<d/2. $
        Proton không chạm bản. $v_(y,p)=-e E t/m_p approx -436 thin "m/s"$, góc lệch xuống $arctan(abs(v_(y,p))/v_0) approx 0.0156 degree$.

        (c) Trong điện trường, cả hai quỹ đạo là parabol: $y = (q E_y)/(2 m v_0^2) x^2$. Electron lệch lên, proton lệch xuống; tại cùng $x$, độ lệch của proton nhỏ hơn $m_p/m_e approx 1837$ lần. Sau khi ra khỏi vùng trường, chúng chuyển động thẳng theo tiếp tuyến nếu bỏ qua trọng lực; electron lý tưởng đi sát mép bản.

        (d) $a_e=6.40 times 10^13 thin "m/s"^2$, $a_p approx 3.49 times 10^10 thin "m/s"^2$, đều lớn hơn $g$ rất nhiều. Bỏ qua trọng lực trong thời gian xét là phù hợp.
      ],
      figure(scale(82%, reflow: true, ve-giai-hai-ban-1-9), caption: [So sánh quỹ đạo], kind: image, numbering: none, supplement: none),
    )
  ],
)

// source-id: P1/1.10; pdf: 4
#vp-question(
  [
    Xét hai điện tích có độ lớn lần lượt là $2.50 thin "μC"$ và $-3.50 thin "μC"$, chúng lần lượt được đặt cố định tại gốc tọa độ và $x = 0.600 thin "m"$ như hình vẽ. Xác định vị trí trên trục $x$ sao cho lực tác dụng lên điện tích $+q$ bằng không.
  ],
  type: "essay",
  num-style: _ => "1.10",
  source: [PDF gốc, trang 4],
  image: figure(scale(82%, reflow: true, ve-dien-tich-truc-x-1-10), kind: image, numbering: none, supplement: none),
  image-side: "right",
  sol: [
    Giữa hai điện tích, hai điện trường cùng chiều nên không triệt tiêu. Phía phải điện tích âm, trường của điện tích âm vừa gần hơn vừa mạnh hơn nên cũng không thể triệt tiêu. Đặt điểm cần tìm ở $x=-s$, $s>0$:
    $ k 2.50/s^2=k 3.50/(s+0.600)^2 => s=0.600/(sqrt(3.50/2.50)-1)=3.27 thin "m". $
    Vậy $x=-3.27 thin "m"$.

    #align(center, figure(
      scale(80%, reflow: true, ve-giai-dien-tich-truc-x-1-10),
      caption: [Sơ đồ vị trí cân bằng và các vecto điện trường trên trục $x$.],
      kind: image,
      numbering: none,
      supplement: none,
    ))
  ],
)

// source-id: P1/1.11; pdf: 4
#vp-question(
  [
    Một dây dẫn bằng nhựa có độ dài $8.5 thin "cm"$ có mật độ điện dài là $+175 thin "nC/m"$ phân bố đều trên sợi dây. Sợi dây được đặt trên một mặt phẳng nằm ngang.
  ],
  type: "essay",
  num-style: _ => "1.11",
  source: [PDF gốc, trang 4],
  image: figure(scale(80%, reflow: true, ve-de-day-dan-1-11), kind: image, numbering: none, supplement: none),
  image-side: "right",
  listEs: (
    [Xác định vecto điện trường tại điểm nằm trên đường trung trực của dây cách dây $6 thin "cm"$.],
    [Nếu sợi dây bị uốn thành vòng tròn, hãy tính độ lớn cường độ điện tại một điểm nằm trên trục của vòng dây cách tâm một đoạn $6 thin "cm"$.],
  ),
  sol: [
    #grid(
      columns: (1fr, auto),
      gutter: 12pt,
      [
        (a) Với $d q=lambda d x$, hai phần tử đối xứng triệt tiêu thành phần song song dây. Thành phần vuông góc:
        $
          E_y=k lambda integral_(-L/2)^(L/2) y/(x^2+y^2)^(3/2) dif x=(k lambda L)/(y sqrt(y^2+(L/2)^2)) approx 3.03 times 10^4 thin "N/C".
        $
        Vector hướng từ trung điểm dây tới điểm xét.
      ],
      figure(scale(80%, reflow: true, ve-giai-day-thang-1-11), caption: [Điện trường của dây thẳng], kind: image, numbering: none, supplement: none),
    )

    #grid(
      columns: (1fr, auto),
      gutter: 12pt,
      [
        (b) $Q=lambda L=1.4875 times 10^(-8) thin "C"$, $R=L/(2 pi)$. Các thành phần ngang trục triệt tiêu:
        $ E_z=(k Q z)/(R^2+z^2)^(3/2) approx 3.45 times 10^4 thin "N/C". $
        Trường hướng dọc trục ra xa vòng tích điện dương.
      ],
      figure(scale(80%, reflow: true, ve-giai-vong-day-1-11), caption: [Điện trường của vòng dây], kind: image, numbering: none, supplement: none),
    )
  ],
)

// source-id: P1/1.12; pdf: 4
#vp-question(
  [
    Một thanh tích điện đều dương $Q$ nằm dọc theo chiều dương của trục $O y$ ở giữa hai điểm $y = 0$ và $y = a$. Một điện tích âm $-q$ nằm trên chiều dương của trục $O x$, cách $O$ một đoạn là $x$.
  ],
  type: "essay",
  num-style: _ => "1.12",
  source: [PDF gốc, trang 4],
  listEs: (
    [Tìm vector cường độ điện trường tạo bởi thanh $Q$ tại các điểm nằm trên chiều dương của trục $O x$.],
    [Tìm vecto lực do thanh $Q$ tác dụng lên $q$.],
    [Chứng minh rằng khi $x >> a$, $F_x approx - (Q q)/(4 pi epsilon_0 x^2)$ và $F_y approx + (Q q a)/(8 pi epsilon_0 x^3)$. Giải thích tại sao lại thu được kết quả trên.],
  ),
  image: figure(scale(82%, reflow: true, ve-de-thanh-1-12), kind: image, numbering: none, supplement: none),
  image-side: "right",
  sol: [
    #grid(
      columns: (1fr, auto),
      gutter: 14pt,
      [
        Phần tử tại $(0, y)$ mang điện tích $dif q = (Q/a) dif y$ gây trường $dif arrow(E) = k (Q/a) dif y (x arrow(i) - y arrow(j))/(x^2 + y^2)^(3/2)$. Lấy tích phân $0$ đến $a$:
        $ E_x = (k Q)/(x sqrt(x^2 + a^2)), quad E_y = (k Q)/a (1/sqrt(x^2 + a^2) - 1/x). $
        Vậy $F_x = -q E_x < 0$, $F_y = -q E_y > 0$: vector lực $arrow(F) = -q arrow(E)$ hướng về phía thanh.

        Khi $a/x$ nhỏ, $(1 + a^2/x^2)^(-1/2) approx 1 - a^2/(2 x^2)$, nên
        $ F_x approx - (k Q q)/x^2, quad F_y approx (k Q q a)/(2 x^3). $
        Ở xa, thanh gần tương đương điện tích $Q$ tại trung điểm $(0, a/2)$; thành phần ngang là bậc $x^(-2)$, thành phần đứng nhỏ hơn một thừa số $a/(2 x)$.
      ],
      figure(scale(76%, reflow: true, ve-giai-thanh-1-12), caption: [Phân tích trường và lực], kind: image, numbering: none, supplement: none),
    )
  ],
)

// source-id: P1/1.13; pdf: 4
#vp-question(
  [
    Một hình bán nguyệt có bán kính $a$, nằm trong góc phần tư thứ nhất và thứ hai, với gốc tọa độ đặt tại tâm. Điện tích dương $Q$ được phân bố đều ở nửa bên trái của hình, và điện tích âm $-Q$ được phân bố đều ở nửa còn lại. Xác định vector cường độ điện trường tại tâm của hình do các phân bố điện tích gây ra.
  ],
  type: "essay",
  num-style: _ => "1.13",
  source: [PDF gốc, trang 4],
  image: figure(scale(76%, reflow: true, ve-de-ban-nguyet-1-13), kind: image, numbering: none, supplement: none),
  image-side: "right",
  sol: [
    #grid(
      columns: (1fr, auto),
      gutter: 12pt,
      [
        Hiểu “hình bán nguyệt” là dây mảnh uốn thành nửa đường tròn; mỗi nửa cung dài $pi a / 2$, nên $abs(lambda) = (2 Q)/(pi a)$.

        Hai phần tử vi phân đối xứng qua trục $O y$ gây các thành phần đứng đối nhau nên triệt tiêu ($E_y = 0$), còn các thành phần ngang cùng hướng sang phải ($+x$).

        Với góc $theta$ tính từ chiều dương trục $O x$:
        $ E_x = 2 integral_0^(pi/2) k/a^2 (2 Q / pi) cos theta dif theta = (4 k Q)/(pi a^2). $
        Vector điện trường tổng hợp tại tâm $O$: $arrow(E) = (4 k Q)/(pi a^2) arrow(i)$.
      ],
      figure(scale(76%, reflow: true, ve-giai-ban-nguyet-1-13), caption: [Đối xứng triệt tiêu và tổng hợp], kind: image, numbering: none, supplement: none),
    )
  ],
)

// source-id: P1/1.14; pdf: 4
#vp-question(
  [
    Một thanh không dẫn điện dài $L$ có điện tích $-q$ phân bố đều theo chiều dài.
  ],
  type: "essay",
  num-style: _ => "1.14",
  source: [PDF gốc, trang 4],
  listEs: (
    [Tính mật độ điện tích dài của thanh.],
    [Tính điện trường ở điểm $P$ cách một đầu của thanh một khoảng $a$.],
    [Chứng minh rằng, nếu $P$ ở rất xa thanh so với $L$, tác dụng của thanh có thể xem như của một điện tích điểm.],
  ),
  image: figure(scale(82%, reflow: true, ve-de-thanh-1-14), kind: image, numbering: none, supplement: none),
  image-side: "right",
  sol: [
    #vp-knowledge-box(
      type: "note",
      title: "Lưu ý về đề",
      content: [Đề không nêu hướng từ đầu thanh đến $P$. Lời giải dưới dùng cấu hình thông dụng: $P$ nằm trên đường kéo dài, ngoài thanh.],
    )
    #grid(
      columns: (1fr, auto),
      gutter: 14pt,
      [
        (a) $lambda = - q / L$.

        (b) Chọn chiều $+x$ dọc thanh, từ đầu gần hướng tới $P$. Gọi $s in [0, L]$ là khoảng cách từ đầu gần đến phần tử nằm về phía trong thanh; phần tử này cách $P$ một đoạn $a + s$:
        $ E_x = - (k q)/L integral_0^L 1/(a + s)^2 dif s = - (k q)/(a (a + L)). $
        Dấu âm cho thấy điện trường $arrow(E)$ hướng dọc theo trục về phía thanh (hút vì thanh tích điện âm).

        (c) Với $a >> L$, $a (a + L) approx a^2$, do đó độ lớn $E approx (k q)/a^2$, bằng trường của điện tích điểm $-q$ đến bậc gần đúng đầu tiên.
      ],
      figure(scale(80%, reflow: true, ve-giai-thanh-1-14), caption: [Điện trường trên trục thanh], kind: image, numbering: none, supplement: none),
    )
  ],
)

// source-id: P1/1.15; pdf: 4–5
#vp-question(
  [
    Điện tích $q_1 = 3.5 times 10^(-8) thin "C"$ phân bố đều trên một thanh kim loại mảnh dài $l = 8 thin "cm"$, tác dụng một lực $F = 1.2 times 10^(-4) thin "N"$ lên một điện tích điểm $q_2$. Điện tích $q_2$ đặt trên đường thẳng kéo dài của thanh kim loại, cách trung điểm của thanh một đoạn $r = 6 thin "cm"$.
  ],
  type: "essay",
  num-style: _ => "1.15",
  source: [PDF gốc, trang 4–5],
  listEs: (
    [Xác định độ lớn của điện tích điểm $q_2$.],
    [Hỏi với khoảng cách $r$ bằng bao nhiêu thì bắt đầu xem $q_1$ như điện tích điểm, cách $q_2$ một khoảng $r$ mà sai số không vượt quá $1%$.],
  ),
  image: figure(scale(82%, reflow: true, ve-de-thanh-1-15), kind: image, numbering: none, supplement: none),
  image-side: "right",
  sol: [
    #grid(
      columns: (1fr, auto),
      gutter: 14pt,
      [
        (a) Dùng giả thiết điện tích phân bố đều mà đề đã cho, bỏ qua sự phân bố lại điện tích trên thanh kim loại. Khoảng cách từ điểm xét đến hai đầu thanh lần lượt là $r - l/2$ và $r + l/2$. Điện trường do thanh $q_1$ gây ra tại vị trí đặt $q_2$:
        $ E = integral_(-l/2)^(l/2) (k dif q_1)/(r - x)^2 = (k q_1)/(r^2 - l^2/4). $
        #block(breakable: false)[
          Từ $F = abs(q_2) E$, độ lớn của điện tích điểm $q_2$:
          $ abs(q_2) = (F (r^2 - l^2/4))/(k q_1) approx 7.63 times 10^(-10) thin "C". $
          Chỉ từ độ lớn lực $F$ chưa thể xác định dấu của $q_2$.
        ]

        (b) Khi xem thanh như điện tích điểm đặt tại trung điểm ($E_0 = (k q_1)/r^2$), sai số tương đối so với $E$:
        $ (E - E_0)/E = l^2/(4 r^2) <= 0.01 => r >= 5 l = 40 thin "cm". $
        (Nếu so với $E_0$, điều kiện là $r >= sqrt(101) l / 2 approx 40.2 thin "cm"$).
      ],
      figure(scale(80%, reflow: true, ve-giai-thanh-1-15), caption: [Phân tích khoảng cách đến hai đầu], kind: image, numbering: none, supplement: none),
    )
  ],
)

// source-id: P1/1.16; pdf: 5
#vp-question(
  [
    Một bán cầu kim loại, bán kính $R$, tích điện đều với mật độ điện mặt $sigma > 0$. Tại đỉnh của bán cầu treo một sợi dây tơ mảnh, chiều dài $R$. Đầu dưới của sợi dây treo một quả cầu nhỏ khối lượng $m$, tích điện $Q > 0$. Biết rằng điện tích của quả cầu không làm ảnh hưởng đến sự phân bố điện tích trên bề mặt bán cầu, bỏ qua tác dụng của trọng lực.
  ],
  type: "essay",
  num-style: _ => "1.16",
  source: [PDF gốc, trang 5],
  listEs: (
    [Tìm độ lớn lực căng dây khi quả cầu ở vị trí cân bằng.],
    [Cho quả cầu dao động với biên độ nhỏ, khi đó xem như lực mà bán cầu tác dụng lên quả cầu không thay đổi phương, chiều và độ lớn. Tìm chu kì dao động của quả cầu.],
  ),
  image: figure(scale(80%, reflow: true, ve-de-ban-cau-1-16), kind: image, numbering: none, supplement: none),
  image-side: "right",
  sol: [
    #grid(
      columns: (1fr, auto),
      gutter: 14pt,
      [
        Dùng mô hình lớp mặt bán cầu có mật độ $sigma$ cố định theo đề, bỏ qua sự phân bố lại điện tích trên kim loại. Ở vị trí cân bằng, quả cầu nằm tại tâm bán cầu. Do đối xứng trục quanh phương đứng, các thành phần điện trường nằm ngang triệt tiêu.

        Chia bán cầu thành các vành vi phân ở góc cực $theta$. Diện tích vành: $dif S = 2 pi R^2 sin theta dif theta$, điện tích $dif q = sigma dif S$. Điện trường thẳng đứng:
        $ E = integral_0^(pi/2) (k dif q cos theta)/R^2 = 2 pi k sigma integral_0^(pi/2) sin theta cos theta dif theta = pi k sigma = sigma/(4 epsilon_0). $

        (a) Cân bằng lực điện $arrow(F)_e$ (hướng xuống) và lực căng dây $arrow(T)$ (hướng lên):
        $ T = F_e = Q E = (Q sigma)/(4 epsilon_0). $

        (b) Theo giả thiết của câu hỏi, coi $arrow(F)_e$ không đổi khi quả cầu lệch khỏi vị trí cân bằng. Gọi $phi$ là góc lệch của dây; lực điện đóng vai trò trọng lực hiệu dụng $m g_("eff") = Q E$. Phương trình tiếp tuyến $m R phi'' = - Q E sin phi approx - Q E phi$ cho chu kì:
        $ T_("dao") = 2 pi sqrt((m R)/(Q E)) = 4 pi sqrt((epsilon_0 m R)/(Q sigma)). $
      ],
      figure(scale(72%, reflow: true, ve-giai-ban-cau-1-16), caption: [Vành vi phân và cân bằng lực], kind: image, numbering: none, supplement: none),
    )
  ],
)

// source-id: P1/1.17; pdf: 5
#vp-question(
  [
    Một thanh thẳng chiều dài $l$ tích điện đều với mật độ điện dài $lambda$ và điện tích tổng cộng $Q$, nằm dọc theo trục $x$ như hình. Xác định cường độ điện trường tại điểm $P$ nằm ngoài trục của thanh và cách thanh một khoảng $y$.
  ],
  type: "essay",
  num-style: _ => "1.17",
  source: [PDF gốc, trang 5],
  image: figure(scale(65%, reflow: true, ve-de-thanh-1-17), kind: image, numbering: none, supplement: none),
  image-side: "right",
  sol: [
    #grid(
      columns: (1fr, auto),
      gutter: 14pt,
      [
        Phần tử vi phân $dif q = lambda dif x$ tại tọa độ $x$ trên thanh gây ra tại điểm $P(0, y)$ cường độ điện trường vi phân:
        $ dif arrow(E) = (k lambda dif x)/(x^2 + y^2)^(3/2) (- x arrow(i) + y arrow(j)). $
        Tích phân dọc theo thanh từ $x_1$ đến $x_2$:
        $ E_x = - k lambda integral_(x_1)^(x_2) x/(x^2 + y^2)^(3/2) dif x = k lambda (1/sqrt(x_2^2 + y^2) - 1/sqrt(x_1^2 + y^2)), \
          E_y = k lambda y integral_(x_1)^(x_2) 1/(x^2 + y^2)^(3/2) dif x = (k lambda)/y (x_2/sqrt(x_2^2 + y^2) - x_1/sqrt(x_1^2 + y^2)). $
        Vector cường độ điện trường tổng hợp tại $P$: $arrow(E) = E_x arrow(i) + E_y arrow(j)$.

        _Trường hợp riêng:_ Nếu thanh đặt đối xứng qua trục $y$ ($x_1 = - l/2, x_2 = l/2$), ta nhận lại $E_x = 0$ và $E_y$ đúng bằng kết quả trên đường trung trực ở Bài 1.11.
      ],
      figure(scale(68%, reflow: true, ve-giai-thanh-1-17), caption: [Phân tích trường vi phân tại $P$], kind: image, numbering: none, supplement: none),
    )
  ],
)

// source-id: P1/1.18; pdf: 5
#vp-question(
  [
    Hai quả cầu nhỏ có khối lượng $m = 15.0 thin "g"$ được treo bởi hai sợi tơ có chiều dài $L = 1.20 thin "m"$ tại một điểm chung (Hình vẽ). Khi hai quả cầu được tích cùng một lượng điện tích âm $q_1 = q_2 = q$, mỗi sợi tơ tạo một góc $theta = 25.0 degree$ so với phương thẳng đứng.
  ],
  type: "essay",
  num-style: _ => "1.18",
  source: [PDF gốc, trang 5],
  listEs: (
    [Vẽ hình vẽ miêu tả lực tác dụng trên mỗi quả cầu, xem quả cầu như là điện tích điểm.],
    [Xác định độ lớn của $q$.],
    [Mỗi sợi tơ được cắt ngắn còn lại $L = 0.600 thin "m"$, trong khi đó điện tích trên hai quả cầu không đổi. Góc tạo bởi mỗi sợi tơ so với phương thẳng đứng mới là bao nhiêu?],
  ),
  image: figure(scale(65%, reflow: true, ve-de-hai-cau-1-18), kind: image, numbering: none, supplement: none),
  image-side: "right",
  sol: [
    (a) Sơ đồ lực lên mỗi quả cầu (đối xứng): trọng lực $m arrow(g)$ (hướng xuống), lực đẩy tĩnh điện Coulomb $arrow(F)_e$ (nằm ngang hướng ra xa) và lực căng dây $arrow(T)$ (dọc dây về điểm treo).

    #grid(
      columns: (1fr, auto),
      gutter: 14pt,
      [
        (b) Cân bằng lực: $T cos theta = m g$ và $T sin theta = F_e => F_e = m g tan theta$. Với khoảng cách giữa hai quả $r = 2 L sin theta$:
        $ abs(q) = 2 L sin theta sqrt((m g tan theta)/k) approx 2.80 times 10^(-6) thin "C". $

        (c) Khử $q$ giữa trạng thái ban đầu ($L, theta$) và trạng thái sau khi cắt ngắn ($L', theta'$):
        $ sin^2 theta' tan theta' = (L/L')^2 sin^2 theta tan theta = 4 sin^2(25 degree) tan(25 degree). $
        Vế trái đồng biến trên $(0, 90 degree)$; giải số cho $theta' approx 39.5 degree$.
      ],
      figure(scale(66%, reflow: true, ve-giai-hai-cau-1-18), caption: [Sơ đồ hệ lực cân bằng], kind: image, numbering: none, supplement: none),
    )
  ],
)

// source-id: P1/1.19; pdf: 5–6
#vp-question(
  [
    Tại một điểm người ta treo hai quả cầu nhỏ giống nhau có khối lượng riêng $rho_1$ bằng những sợi dây mảnh có độ dài bằng nhau. Khi hai quả cầu nhiễm điện bằng nhau về độ lớn và cùng dấu chúng đẩy nhau và dây treo hợp với nhau một góc $alpha_1$. Nhúng hệ thống vào một chất lỏng đồng chất không dẫn điện có khối lượng riêng $rho_2$, hằng số điện môi $epsilon$ thì thấy góc này nhỏ đi và bằng $alpha_2$.
  ],
  type: "essay",
  num-style: _ => "1.19",
  source: [PDF gốc, trang 5–6],
  listEs: (
    [Xác định biểu thức tính hằng số điện môi $epsilon$.],
    [Tính $epsilon$ cho trường hợp chất lỏng là dầu hỏa có $rho_2 = 800 thin "kg/m"^3$, khối lượng riêng của quả cầu là $rho_1 = 2.55 times 10^3 thin "kg/m"^3$, góc $alpha_1 = 60 degree$, $alpha_2 = 54 degree$.],
    [Trong thí nghiệm tương tự, với hai quả cầu làm bằng một chất có khối lượng riêng $rho_x$ người ta thấy $alpha_1 = alpha_2$. Cho rằng đã biết $epsilon$ và $rho$ của chất lỏng, hãy xác định $rho_x$.],
  ),
  image: figure(scale(65%, reflow: true, ve-de-hai-cau-1-19), kind: image, numbering: none, supplement: none),
  image-side: "right",
  sol: [
    #grid(
      columns: (1fr, auto),
      gutter: 14pt,
      [
        Đặt $theta_i = alpha_i / 2$, thể tích mỗi quả cầu là $V$.
        - Trong không khí: $F_1 = P tan theta_1 = rho_1 V g tan theta_1$.
        - Trong chất lỏng: chịu thêm lực đẩy Archimedes $F_A = rho_2 V g$, trọng lượng biểu kiến $P' = P - F_A = (rho_1 - rho_2) V g$. Lực tĩnh điện:
        $ F_2 = (rho_1 - rho_2) V g tan theta_2. $

        (a) Vì $r_i = 2 L sin theta_i$, tỉ số lực Coulomb $F_2 / F_1 = sin^2 theta_1 / (epsilon sin^2 theta_2)$. Suy ra:
        $ epsilon = rho_1/(rho_1 - rho_2) (tan theta_1)/(tan theta_2) (sin^2 theta_1)/(sin^2 theta_2). $

        (b) Thay số $rho_1 = 2.55 times 10^3 thin "kg/m"^3$, $rho_2 = 800 thin "kg/m"^3$, $alpha_1 = 60 degree$, $alpha_2 = 54 degree$:
        $ epsilon approx 2.00. $

        (c) Khi $theta_1 = theta_2$, ta có $epsilon = rho_x / (rho_x - rho_2)$, suy ra $rho_x = (epsilon rho_2) / (epsilon - 1)$ (với điều kiện $rho_x > rho_2$ để dây chúc xuống).
      ],
      figure(scale(70%, reflow: true, ve-giai-hai-cau-1-19), caption: [Cân bằng lực trong chất lỏng], kind: image, numbering: none, supplement: none),
    )
  ],
)

// source-id: P1/1.20; pdf: 6
#vp-question(
  [
    Một không gian mang điện với mật độ điện khối $rho = rho_0 e^(-alpha r^3)$ với $rho_0$ và $alpha$ là hằng số dương. Tìm độ lớn của vecto cường độ điện trường theo $r$. Khảo sát biểu thức cường độ điện trường ứng với $alpha r^3 << 1$ và $alpha r^3 >> 1$.
  ],
  type: "essay",
  num-style: _ => "1.20",
  source: [PDF gốc, trang 6],
  image: figure(scale(65%, reflow: true, ve-de-mat-gauss-1-20), kind: image, numbering: none, supplement: none),
  image-side: "right",
  sol: [
    #grid(
      columns: (1fr, auto),
      gutter: 14pt,
      [
        Do tính đối xứng cầu quanh tâm $O$, chia không gian thành các lớp vỏ cầu mỏng đồng tâm bán kính $s$, bề dày $dif s$. Điện tích của mỗi lớp vỏ:
        $ dif q(s) = 4 pi s^2 rho(s) dif s = 4 pi rho_0 s^2 e^(-alpha s^3) dif s. $
        Theo định lý về trường của vỏ cầu đồng chất (tích phân từ định luật Coulomb):
        - Các lớp vỏ ngoài ($s > r$) có điện trường tổng hợp triệt tiêu tại điểm xét $r$.
        - Các lớp vỏ trong ($s < r$) tác dụng lên điểm xét cách tâm $r$ tương đương điện tích điểm $dif q(s)$ đặt tại tâm: $dif E = (dif q(s)) / (4 pi epsilon_0 r^2)$.

        Do đó, cường độ điện trường tại khoảng cách $r$:
        $ E(r) = 1/(4 pi epsilon_0 r^2) integral_0^r dif q(s) = rho_0/(epsilon_0 r^2) integral_0^r s^2 e^(-alpha s^3) dif s. $
        Đổi biến $u = alpha s^3$, ta được $integral_0^r s^2 e^(-alpha s^3) dif s = (1 - e^(-alpha r^3))/(3 alpha)$. Suy ra:
        $ E(r) = rho_0/(3 epsilon_0 alpha r^2) (1 - e^(-alpha r^3)). $
        Tại tâm $r = 0$, $E(0) = 0$.

        - Khi $alpha r^3 << 1$: khai triển $1 - e^(-alpha r^3) approx alpha r^3$, ta được $E approx (rho_0 r)/(3 epsilon_0)$ (tăng tuyến tính).
        - Khi $alpha r^3 >> 1$: $e^(-alpha r^3) approx 0$, ta được $E approx rho_0/(3 epsilon_0 alpha r^2) = (k Q_("tot"))/r^2$ với điện tích tổng cộng $Q_("tot") = (4 pi rho_0)/(3 alpha)$.
      ],
      figure(scale(72%, reflow: true, ve-giai-do-thi-1-20), caption: [Đồ thị hàm $E(r)$ theo $r$], kind: image, numbering: none, supplement: none),
    )
  ],
)

// source-id: P1/1.21; pdf: 6
#vp-question(
  [
    Bên trong một quả cầu mang điện với mật độ điện khối không đổi $rho$, có một hốc nhỏ hình cầu không chứa điện tích. Tâm của hốc cách tâm quả cầu một khoảng $a$. Tìm vecto cường độ điện trường $arrow(E)$ của một điểm nằm trong hốc. Xét trường hợp $a = 0$.
  ],
  type: "essay",
  num-style: _ => "1.21",
  source: [PDF gốc, trang 6],
  image: figure(scale(65%, reflow: true, ve-de-cau-hoc-1-21), kind: image, numbering: none, supplement: none),
  image-side: "right",
  sol: [
    1. _Trường bên trong quả cầu đặc đồng chất:_
    Chia quả cầu tâm $O$ thành các lớp vỏ cầu mỏng đồng tâm. Tại điểm cách tâm $r$, các lớp vỏ ngoài ($s > r$) triệt tiêu trường; phần cầu bên trong mang điện tích $q(r) = rho dot 4/3 pi r^3$ tác dụng như điện tích điểm tại tâm:
    $ arrow(E)_1 = (q(r))/(4 pi epsilon_0 r^2) arrow(r)/r = (rho arrow(r))/(3 epsilon_0). $

    #grid(
      columns: (1fr, auto),
      gutter: 14pt,
      [
        2. _Nguyên lý chồng chất áp dụng cho hốc rỗng:_
        Xem hốc rỗng như quả cầu lớn mật độ $+rho$ (tâm $O$) chồng chất với quả cầu bù mật độ $-rho$ lấp đầy hốc (tâm $O'$).
        
        Tại điểm $M$ bất kì trong hốc, gọi $arrow(r) = arrow(O M)$ và $arrow(r)' = arrow(O' M)$:
        $ arrow(E) = arrow(E)_+ + arrow(E)_- = rho/(3 epsilon_0) arrow(r) - rho/(3 epsilon_0) arrow(r)' = rho/(3 epsilon_0) (arrow(r) - arrow(r)'). $
        Vì $arrow(r) - arrow(r)' = arrow(O M) - arrow(O' M) = arrow(O O') = arrow(a)$, nên:
        $ arrow(E) = (rho arrow(a))/(3 epsilon_0). $
        Điện trường trong hốc là *điện trường đều*, cùng hướng $arrow(a)$ (khi $rho > 0$). Khi hốc đồng tâm ($a = 0$), $arrow(E) = arrow(0)$.
      ],
      figure(scale(85%, reflow: true, ve-giai-cau-hoc-1-21), caption: [Chồng chất điện trường đều trong hốc], kind: image, numbering: none, supplement: none),
    )
  ],
)

// source-id: P1/1.22; pdf: 6
#vp-question(
  [
    Một quả cầu rắn bán kính $R$ tích điện không đều với mật độ điện khối $rho = rho_s r/R$, trong đó $rho_s$ là một hằng số và $r$ là khoảng cách tính đến tâm của quả cầu. Tính:
  ],
  type: "essay",
  num-style: _ => "1.22",
  source: [PDF gốc, trang 6],
  listEs: (
    [Điện tích toàn phần trên quả cầu?],
    [Cường độ điện trường bên trong và bên ngoài quả cầu?],
  ),
  image: figure(scale(65%, reflow: true, ve-de-qua-cau-1-22), kind: image, numbering: none, supplement: none),
  image-side: "right",
  sol: [
    #grid(
      columns: (1fr, auto),
      gutter: 14pt,
      [
        (a) Lấy lớp vỏ cầu vi phân bán kính $s$, bề dày $dif s$: $dif q = rho_s (s/R) 4 pi s^2 dif s = (4 pi rho_s)/R s^3 dif s$. Điện tích toàn phần:
        $ Q = (4 pi rho_s)/R integral_0^R s^3 dif s = pi rho_s R^3. $

        (b) Đề không quy định dấu của $rho_s$. Gọi $E_r$ là thành phần điện trường theo chiều bán kính ra ngoài, $arrow(E) = E_r arrow(e)_r$ với $r > 0$. Dùng định lý vỏ cầu:
        - Với $r <= R$: các lớp vỏ $s > r$ không gây trường tại $r$; chỉ các lớp vỏ $s in [0, r]$ đóng góp tương đương điện tích tập trung tại tâm:
        $ E_r(r) = 1/(4 pi epsilon_0 r^2) integral_0^r dif q(s) = (rho_s)/(epsilon_0 R r^2) integral_0^r s^3 dif s = (rho_s r^2)/(4 epsilon_0 R). $
        - Với $r >= R$: toàn bộ quả cầu ($s in [0, R]$) nằm trong khoảng cách $r$, tương đương điện tích toàn phần $Q$ đặt tại tâm:
        $ E_r(r) = Q/(4 pi epsilon_0 r^2) = (rho_s R^3)/(4 epsilon_0 r^2). $
        
        Hai biểu thức liên tục tại $r = R$. Độ lớn $E = abs(E_r)$; trường hướng ra ngoài khi $rho_s > 0$, hướng vào tâm khi $rho_s < 0$. Tại tâm $arrow(E)(0) = arrow(0)$. Nếu $rho_s = 0$, điện trường bằng không ở mọi điểm.
      ],
      figure(scale(70%, reflow: true, ve-giai-do-thi-1-22), caption: [Đồ thị hàm $E(r)$ theo $r$], kind: image, numbering: none, supplement: none),
    )
  ],
)




COURSE.chapters.push({
  id: 4, short: 'Kì vọng & phương sai', title: 'Các đặc trưng số: kì vọng, phương sai, hiệp phương sai', when: 'Ngày 2 · Buổi sáng · ~3,5 giờ',
  intro: 'Kì vọng (giá trị trung bình), phương sai (mức độ phân tán = rủi ro), hiệp phương sai và hệ số tương quan. Dạng bài “chọn phương án đầu tư / máy / giống” rất hay ra thi.',
  goals: [
    'Tính \\(E(X), E(X^2), V(X), \\sigma(X)\\) từ bảng phân phối hoặc hàm mật độ.',
    'Dùng tính chất tuyến tính: \\(E(aX+b)\\), \\(V(aX+b)\\), \\(V(\\alpha X+\\beta Y)\\).',
    'Tính \\(E(XY)\\), \\(\\mathrm{Cov}(X,Y)\\), \\(\\rho_{XY}\\) từ bảng đồng thời.',
    'Giải bài toán so sánh rủi ro và tối ưu danh mục đầu tư.'
  ],
  theory: String.raw`
<h3>1. Kì vọng</h3>
<div class="box">\[E(X)=\sum x_ip_i\quad\text{hoặc}\quad E(X)=\int x f(x)\,dx,\qquad E[g(X)]=\sum g(x_i)p_i=\int g(x)f(x)\,dx\]
<p>\(E(aX+b)=aE(X)+b\); \(E(X+Y)=E(X)+E(Y)\); X, Y độc lập ⇒ \(E(XY)=E(X)E(Y)\).</p></div>
<h3>2. Phương sai, độ lệch chuẩn</h3>
<div class="box">\[V(X)=E(X^2)-[E(X)]^2,\qquad \sigma(X)=\sqrt{V(X)}\]
<p>\(V(aX+b)=a^2V(X)\); X, Y độc lập ⇒ \(V(X\pm Y)=V(X)+V(Y)\).</p></div>
<div class="key">Kinh tế/đầu tư: <b>kì vọng = lợi nhuận trung bình</b>, <b>phương sai (độ lệch chuẩn) = rủi ro</b>. Cùng kì vọng ⇒ chọn phương sai nhỏ hơn.</div>
<h3>3. Hiệp phương sai & hệ số tương quan</h3>
<div class="box">\[\mathrm{Cov}(X,Y)=E(XY)-E(X)E(Y),\qquad E(XY)=\sum_i\sum_j x_iy_jp_{ij}\]
\[\rho_{XY}=\frac{\mathrm{Cov}(X,Y)}{\sigma_X\sigma_Y},\quad -1\le\rho\le1\]
<p>Độc lập ⇒ \(\rho=0\) (chiều ngược lại không đúng). \(|\rho|\) gần 1: tương quan tuyến tính chặt.</p></div>
<h3>4. Kì vọng có điều kiện & danh mục đầu tư</h3>
<div class="box">\[E(Y|X=x_i)=\sum_j y_j\,P(Y=y_j|X=x_i)\]
\[V(\alpha X+\beta Y)=\alpha^2V(X)+\beta^2V(Y)+2\alpha\beta\,\mathrm{Cov}(X,Y)\]
<p>Danh mục \(Z=\alpha X+(1-\alpha)Y\) rủi ro nhỏ nhất khi</p>
\[\alpha^*=\frac{V(Y)-\mathrm{Cov}(X,Y)}{V(X)+V(Y)-2\mathrm{Cov}(X,Y)}\quad(\text{độc lập: }\mathrm{Cov}=0).\]</div>
<h3>5. Đặc trưng các phân phối</h3>
<div class="box">${tbl([['Phân phối', 'E(X)', 'V(X)'], [String.raw`\(B(n,p)\)`, String.raw`\(np\)`, String.raw`\(npq\)`], [String.raw`\(P(\lambda)\)`, String.raw`\(\lambda\)`, String.raw`\(\lambda\)`], [String.raw`\(N(\mu,\sigma^2)\)`, String.raw`\(\mu\)`, String.raw`\(\sigma^2\)`], [String.raw`\(U(a,b)\)`, String.raw`\(\frac{a+b}2\)`, String.raw`\(\frac{(b-a)^2}{12}\)`], [String.raw`\(\mathrm{Exp}(\lambda)\)`, String.raw`\(\frac1\lambda\)`, String.raw`\(\frac1{\lambda^2}\)`], ['Siêu bội (N, M, n)', String.raw`\(n\frac MN\)`, String.raw`\(n\frac MN\frac{N-M}N\frac{N-n}{N-1}\)`]])}</div>`,
  recipes: [
    ['Bảng phân phối 1 chiều, hỏi kì vọng / độ lệch chuẩn', String.raw`Lập 3 dòng: \(x_i\), \(p_i\), \(x_ip_i\), \(x_i^2p_i\) ⇒ \(E\), \(E(X^2)\), \(V=E(X^2)-E^2\).`, '4.1, 4.5'],
    ['“Đầu tư dự án nào ít rủi ro hơn”, “chọn máy / giống nào”', 'So kì vọng trước (lợi nhuận/năng suất), nếu bằng nhau hoặc cùng tốt thì chọn phương sai nhỏ hơn. Nêu rõ tiêu chí trong kết luận.', '4.3, 4.6, 4.7, 4.8ab'],
    [String.raw`Hàm mật độ, hỏi \(E(X)\), \(V(X)\), \(E[g(X)]\)`, String.raw`\(E=\int xf\), \(E(X^2)=\int x^2f\), \(E[g(X)]=\int g(x)f(x)dx\).`, '4.2'],
    ['Bảng đồng thời có ẩn a, b, cho E(X)', 'Phương trình tổng = 1 và phương trình E(X) ⇒ giải hệ.', '4.4'],
    ['“Hệ số tương quan”, “mức độ phụ thuộc”', String.raw`Biên ⇒ \(E,V\) mỗi biến ⇒ \(E(XY)\) (bỏ ô có x hoặc y bằng 0) ⇒ Cov ⇒ \(\rho\).`, '4.9d, 4.10e, 4.12c'],
    ['“Trung bình của Y khi X = x”', String.raw`Phân phối điều kiện rồi \(E(Y|X=x)=\sum y_jP(y_j|x)\).`, '4.10d, 4.12a'],
    ['“Đầu tư vào cả hai theo tỉ lệ nào để rủi ro thấp nhất”', String.raw`\(\alpha^*=\frac{V(Y)-\mathrm{Cov}}{V(X)+V(Y)-2\mathrm{Cov}}\); để lãi kì vọng cao nhất: dồn 100% vào bên có E lớn hơn.`, '4.8c, 4.11']
  ],
  traps: [
    String.raw`\(V(X)=E(X^2)-[E(X)]^2\), không phải \(E(X^2)-E(X)\).`,
    String.raw`\(V(aX+b)=a^2V(X)\) – hằng số b biến mất, hệ số a bình phương; \(V(X-Y)=V(X)+V(Y)\) (dấu cộng!) khi độc lập.`,
    String.raw`Bài 4.7: \(N(8;0{,}7)\) – nếu tham số thứ hai là phương sai thì độ lệch chuẩn là \(\sqrt{0{,}7}\); kết luận chọn giống vẫn không đổi.`,
    String.raw`Danh mục đầu tư: nếu hai cổ phiếu có tương quan, phải dùng công thức có Cov (bài 4.11), không dùng công thức độc lập.`
  ],
  examples: [
    { id: '4.1', tag: 'E, σ', q: String.raw`${'<p>Số khách/chuyến:</p>' + tbl([['X', 25, 30, 35, 40, 45], ['P', '0,10', '0,20', '0,35', '0,25', '0,10']])}<p>Tìm kì vọng, độ lệch chuẩn.</p>`,
      sol: String.raw`<p>\(E=35{,}25\); \(E(X^2)=1273{,}75\); \(V=1273{,}75-35{,}25^2=31{,}1875\); \(\sigma\approx5{,}5846\).</p>` },
    { id: '4.2', tag: 'Liên tục', q: String.raw`<p>\(f(x)=2/x^2\) trên \([1,2]\). a) \(E(X), V(X)\). b) \(E(Y)\) với \(Y=X^5-2/X\).</p>`,
      sol: String.raw`<p>a) \(E=\int_1^2\frac2xdx=2\ln2\approx1{,}3863\); \(E(X^2)=\int_1^22dx=2\); \(V=2-4\ln^22\approx0{,}0782\).</p><p>b) \(\int_1^2(2x^3-4x^{-3})dx=\big[\frac{x^4}2+\frac2{x^2}\big]_1^2=8{,}5-2{,}5=6\).</p>` },
    { id: '4.3', tag: 'So sánh rủi ro', q: String.raw`${tbl([['X', -3, -1, 0, 1, 2, 3], ['P', '0,1', '0,1', '0,2', '0,2', '0,3', '0,1']]) + tbl([['Y', -2, -1, 0, 1, 3], ['P', '0,1', '0,2', '0,2', '0,2', '0,3']])}<p>Đầu tư dự án nào ít rủi ro hơn?</p>`,
      sol: String.raw`<p>\(E(X)=E(Y)=0{,}7\). \(V(X)=3{,}3-0{,}49=2{,}81\); \(V(Y)=3{,}5-0{,}49=3{,}01\). Cùng lợi nhuận kì vọng, \(V(X)<V(Y)\) ⇒ chọn dự án X.</p>` },
    { id: '4.4', tag: 'Tìm ẩn', q: String.raw`${tbl([[String.raw`X \ Y`, 1, 2, 3], [0, '0,20', '0,25', 'a'], [1, 'b', '0,15', '0,10']])}<p>Tìm phân phối của X biết \(E(X)=0{,}5\).</p>`,
      sol: String.raw`<p>\(a+b=0{,}3\); \(E(X)=P(X=1)=0{,}25+b=0{,}5\Rightarrow b=0{,}25,\ a=0{,}05\). \(P(X=0)=P(X=1)=0{,}5\).</p>` },
    { id: '4.5', tag: 'Hàm của X', q: String.raw`${tbl([['X', 1, 3, 5], ['P', '0,2', '0,5', '0,3']])}<p>Tìm \(E\), \(V\) của \(Y=X^2+1\).</p>`,
      sol: String.raw`<p>Y: 2; 10; 26 với xác suất 0,2; 0,5; 0,3. \(E(Y)=13{,}2\); \(E(Y^2)=253{,}6\); \(V(Y)=253{,}6-174{,}24=79{,}36\).</p>` },
    { id: '4.6', tag: 'Chọn máy', q: String.raw`${tbl([['X₁', 1, 2, 3, 4], ['P', '0,1', '0,2', '0,5', '0,2']]) + tbl([['X₂', 2, 3, 4], ['P', '0,4', '0,3', '0,3']]) + tbl([['X₃', 2, 3, 4, 5], ['P', '0,1', '0,4', '0,4', '0,1']])}<p>Nên mua máy nào?</p>`,
      sol: String.raw`<p>\(E\): 2,8; 2,9; 3,5. \(V\): 0,76; 0,69; 0,65. Máy 3 năng suất trung bình cao nhất và ổn định nhất ⇒ chọn máy 3.</p>` },
    { id: '4.7', tag: 'Chọn giống', q: String.raw`<p>\(X_1\sim N(8;0{,}7)\), \(X_2\sim N(10;0{,}5)\), \(X_3\sim N(10;0{,}3)\). Chọn giống lúa nào?</p>`,
      sol: String.raw`<p>Giống 2, 3 cùng năng suất kì vọng 10 > 8; giống 3 phân tán nhỏ hơn ⇒ chọn giống 3.</p>` },
    { id: '4.8', tag: 'Danh mục độc lập', q: String.raw`${tbl([['X', 4, 6, 8, 10, 12], ['P', '0,05', '0,15', '0,30', '0,35', '0,15']]) + tbl([['Y', -4, 3, 8, 10, 12, 16], ['P', '0,10', '0,20', '0,20', '0,25', '0,15', '0,10']])}<p>a) Lãi kì vọng cao hơn? b) Rủi ro ít hơn? c) Đầu tư cả hai: tỉ lệ để (i) lãi kì vọng cao nhất, (ii) rủi ro thấp nhất (giả sử độc lập).</p>`,
      sol: String.raw`<p>a) \(E(X)=8{,}8>E(Y)=7{,}7\) ⇒ A. b) \(V(X)=4{,}56<V(Y)=29{,}11\) ⇒ A.</p><p>c) (i) \(E(Z)=7{,}7+1{,}1\alpha\) lớn nhất khi \(\alpha=1\): 100% vào A. (ii) \(\alpha=\frac{29{,}11}{4{,}56+29{,}11}\approx0{,}8646\): 86,46% vào A, 13,54% vào B.</p>` },
    { id: '4.9', tag: 'Tương quan', q: String.raw`<p>Hộp 3 cầu đỏ, 4 trắng, 5 vàng; chọn 3. X = số đỏ, Y = số vàng. a) Bảng đồng thời. b) Phân phối biên. c) Phân phối X khi Y = 1. d) Hệ số tương quan.</p>`,
      sol: String.raw`<p>a) \(P(x,y)=\frac{C_3^xC_5^yC_4^{3-x-y}}{220}\):</p>${tbl([[String.raw`X \ Y`, 0, 1, 2, 3], [0, '4', '30', '40', '10'], [1, '18', '60', '30', 0], [2, '12', '15', 0, 0], [3, '1', 0, 0, 0]])}<p class="muted">(các số trên chia cho 220)</p><p>b) X: 84, 108, 27, 1 (/220). Y: 35, 105, 70, 10 (/220).</p><p>c) \(P(X|Y=1)\): \(\frac27,\frac47,\frac17\).</p><p>d) \(E(X)=0{,}75\), \(V(X)=\frac{81}{176}\); \(E(Y)=1{,}25\), \(V(Y)=\frac{105}{176}\); \(E(XY)=\frac{150}{220}=\frac{15}{22}\); \(\mathrm{Cov}=\frac{15}{22}-\frac{15}{16}=-\frac{45}{176}\); \(\rho=-\frac5{\sqrt{105}}\approx-0{,}488\).</p>` },
    { id: '4.10', tag: 'Tổng hợp', q: String.raw`${tbl([[String.raw`X \ Y`, 0, 1, 2], [100, '0,04', '0,05', '0,06'], [150, '0,05', '0,15', '0,14'], [200, '0,05', '0,20', '0,26']])}<p>X doanh thu, Y chi phí quảng cáo. a) Biên. b) Độc lập? c) E, V. d) Phân phối và trung bình doanh thu khi Y = 2. e) Cov, ρ. f) Phân phối \(Z=XY\).</p>`,
      sol: String.raw`<p>a) X: 0,15; 0,34; 0,51. Y: 0,14; 0,40; 0,46. b) \(0{,}15\cdot0{,}14=0{,}021\ne0{,}04\) ⇒ không độc lập.</p><p>c) \(E(X)=168\), \(V(X)=1326\); \(E(Y)=1{,}32\), \(V(Y)=0{,}4976\).</p><p>d) \(\frac3{23},\frac7{23},\frac{13}{23}\); \(E(X|Y=2)=\frac{3950}{23}\approx171{,}74\).</p><p>e) \(E(XY)=225{,}5\), Cov = 3,74, \(\rho\approx0{,}1456\).</p><p>f) Z: 0 (0,14); 100 (0,05); 150 (0,15); 200 (0,26); 300 (0,14); 400 (0,26).</p>` },
    { id: '4.11', tag: 'Danh mục có tương quan', q: String.raw`${tbl([[String.raw`X \ Y`, -2, 0, 5, 10], [0, 0, '0,05', '0,05', '0,1'], [4, '0,05', '0,1', '0,25', '0,15'], [6, '0,1', '0,05', '0,1', 0]])}<p>a) Đầu tư toàn bộ vào A: lãi kì vọng, rủi ro? b) Tỉ lệ để lãi kì vọng lớn nhất? c) Tỉ lệ để rủi ro thấp nhất?</p>`,
      sol: String.raw`<p>a) \(E(X)=3{,}7\), \(V(X)=4{,}11\), \(\sigma\approx2{,}03\).</p><p>b) \(E(Y)=4{,}2>3{,}7\) ⇒ 100% vào B.</p><p>c) \(V(Y)=17{,}96\), \(E(XY)=12{,}4\), Cov = −3,14. \(\alpha^*=\frac{17{,}96+3{,}14}{4{,}11+17{,}96+6{,}28}\approx0{,}7443\): 74,43% vào A.</p>` },
    { id: '4.12', tag: 'Kì vọng điều kiện, ρ', q: String.raw`${tbl([[String.raw`X \ Y`, 10, 20, 30, 40], [10, '0,2', '0,04', '0,01', 0], [20, '0,1', '0,36', '0,09', 0], [30, 0, '0,05', '0,1', 0], [40, 0, 0, 0, '0,05']])}<p>X thu nhập chồng, Y thu nhập vợ. a) Phân phối và trung bình Y khi X = 20. b) E(X), E(Y). c) Mức độ phụ thuộc.</p>`,
      sol: String.raw`<p>a) \(P(X=20)=0{,}55\): \(\frac2{11},\frac{36}{55},\frac9{55}\); \(E(Y|X=20)=\frac{218}{11}\approx19{,}82\).</p><p>b) \(E(X)=E(Y)=20\).</p><p>c) \(V(X)=60\), \(V(Y)=70\), \(E(XY)=449\), Cov = 49, \(\rho=\frac{49}{\sqrt{4200}}\approx0{,}756\): tương quan thuận khá chặt.</p>` }
  ],
  gens: [
    {
      name: 'E, V, σ từ bảng', gen() {
        const k = R.int(4, 5), x0 = R.int(-2, 3), st = R.pick([1, 2, 5, 10]), xs = Array.from({ length: k }, (_, i) => x0 * st + i * st);
        const ps = R.parts(k, 20, 1).map(v => v * 0.05);
        const E = xs.reduce((a, x, i) => a + x * ps[i], 0), E2 = xs.reduce((a, x, i) => a + x * x * ps[i], 0), V = E2 - E * E;
        return {
          q: String.raw`<p>Biến ngẫu nhiên X có bảng phân phối:</p>${tbl([['X', ...xs], ['P', ...ps.map(p => T(p, 2))]])}<p>Tính \(E(X)\), \(V(X)\) và \(\sigma(X)\).</p>`,
          fields: [{ label: 'E(X)', ans: E }, { label: 'V(X)', ans: V }, { label: 'σ(X)', ans: Math.sqrt(V) }],
          sol: String.raw`<p>\(E(X)=${xs.map((x, i) => `(${x})(${F(ps[i])})`).join('+')}=${F(E)}\).</p><p>\(E(X^2)=${xs.map((x, i) => `${x * x}(${F(ps[i])})`).join('+')}=${F(E2)}\).</p><p>\(V(X)=${F(E2)}-(${F(E)})^2=${F(V)}\); \(\sigma=\sqrt{${F(V)}}\approx${F(Math.sqrt(V))}\).</p>`
        };
      }
    },
    {
      name: 'Tính chất E, V (tuyến tính)', gen() {
        const EX = R.int(-3, 6), VX = R.int(1, 9), EY = R.int(-3, 6), VY = R.int(1, 9), a = R.pick([2, 3, -2, 4]), b = R.pick([1, -1, 2, -3]), c = R.int(-5, 5);
        const EZ = a * EX + b * EY + c, VZ = a * a * VX + b * b * VY;
        return {
          q: String.raw`<p>X, Y độc lập với \(E(X)=${EX},\ V(X)=${VX},\ E(Y)=${EY},\ V(Y)=${VY}\). Cho \(Z=${a}X${b < 0 ? '' : '+'}${b}Y${c < 0 ? '' : '+'}${c}\). Tính \(E(Z)\), \(V(Z)\) và \(E(X^2)\).</p>`,
          fields: [{ label: 'E(Z)', ans: EZ, tol: 0.001 }, { label: 'V(Z)', ans: VZ, tol: 0.001 }, { label: 'E(X²)', ans: VX + EX * EX, tol: 0.001 }],
          sol: String.raw`<p>\(E(Z)=${a}E(X)${b < 0 ? '' : '+'}${b}E(Y)${c < 0 ? '' : '+'}${c}=${a}(${EX})${b < 0 ? '' : '+'}${b}(${EY})${c < 0 ? '' : '+'}${c}=${EZ}\).</p><p>\(V(Z)=${a}^2V(X)+(${b})^2V(Y)=${a * a}\cdot${VX}+${b * b}\cdot${VY}=${VZ}\) (hằng số không ảnh hưởng, dấu luôn cộng vì độc lập).</p><p>\(E(X^2)=V(X)+[E(X)]^2=${VX}+${EX * EX}=${VX + EX * EX}\).</p>`
        };
      }
    },
    {
      name: 'Cov và hệ số tương quan', gen() {
        const xs = R.pick([[0, 1], [1, 2], [1, 3]]), ys = R.pick([[0, 1, 2], [1, 2, 3], [-1, 0, 1]]);
        let M; do { const p = R.parts(6, 20, 1).map(v => v * 0.05); M = [p.slice(0, 3), p.slice(3)]; } while (false);
        const px = M.map(r => r.reduce((a, b) => a + b, 0)), py = [0, 1, 2].map(j => M[0][j] + M[1][j]);
        const EX = xs[0] * px[0] + xs[1] * px[1], EY = ys.reduce((a, y, j) => a + y * py[j], 0);
        const VX = xs[0] ** 2 * px[0] + xs[1] ** 2 * px[1] - EX * EX, VY = ys.reduce((a, y, j) => a + y * y * py[j], 0) - EY * EY;
        let EXY = 0; xs.forEach((x, i) => ys.forEach((y, j) => EXY += x * y * M[i][j]));
        const cov = EXY - EX * EY, rho = cov / Math.sqrt(VX * VY);
        return {
          q: String.raw`<p>Cho bảng phân phối đồng thời:</p>${_jointTable(xs, ys, M, v => T(v, 2))}<p>Tính \(E(XY)\), \(\mathrm{Cov}(X,Y)\) và hệ số tương quan \(\rho_{XY}\).</p>`,
          fields: [{ label: 'E(XY)', ans: EXY, tol: 0.002 }, { label: 'Cov', ans: cov, tol: 0.003 }, { label: 'ρ', ans: rho, tol: 0.01 }],
          sol: String.raw`<p>Biên: \(P(X)\): ${px.map(v => F(v)).join('; ')}; \(P(Y)\): ${py.map(v => F(v)).join('; ')}.</p><p>\(E(X)=${F(EX)}\), \(V(X)=${F(VX)}\); \(E(Y)=${F(EY)}\), \(V(Y)=${F(VY)}\).</p><p>\(E(XY)=\sum x_iy_jp_{ij}=${F(EXY)}\).</p><p>\(\mathrm{Cov}=${F(EXY)}-${F(EX)}\cdot${F(EY)}=${F(cov)}\); \(\rho=\dfrac{${F(cov)}}{\sqrt{${F(VX)}\cdot${F(VY)}}}\approx${F(rho)}\).</p>`
        };
      }
    },
    {
      name: 'Danh mục đầu tư', gen() {
        const VX = R.int(4, 30), VY = R.int(4, 30), rho = R.pick([0, 0, -0.5, -0.3, 0.2, 0.4]);
        const cov = +(rho * Math.sqrt(VX * VY)).toFixed(2);
        const a = (VY - cov) / (VX + VY - 2 * cov), Vmin = a * a * VX + (1 - a) ** 2 * VY + 2 * a * (1 - a) * cov;
        return {
          q: String.raw`<p>Lãi suất (%) của hai cổ phiếu A, B là X, Y với \(V(X)=${VX}\), \(V(Y)=${VY}\), ${cov === 0 ? 'X và Y độc lập' : String.raw`\(\mathrm{Cov}(X,Y)=${F(cov)}\)`}. Đầu tư tỉ lệ \(\alpha\) vào A, \(1-\alpha\) vào B. Tìm \(\alpha\) để rủi ro (phương sai) nhỏ nhất và tính phương sai nhỏ nhất đó.</p>`,
          fields: [{ label: 'α*', ans: a, tol: 0.005 }, { label: 'V min', ans: Vmin, tol: Math.max(0.02, Vmin * 0.01) }],
          sol: String.raw`<p>\(V(Z)=\alpha^2V(X)+(1-\alpha)^2V(Y)+2\alpha(1-\alpha)\mathrm{Cov}\). Đạo hàm bằng 0:</p>\[\alpha^*=\frac{V(Y)-\mathrm{Cov}}{V(X)+V(Y)-2\mathrm{Cov}}=\frac{${VY}-(${F(cov)})}{${VX}+${VY}-2(${F(cov)})}\approx${F(a)}\]<p>\(V_{\min}=${F(a)}^2\cdot${VX}+${F(1 - a)}^2\cdot${VY}+2\cdot${F(a)}\cdot${F(1 - a)}\cdot(${F(cov)})\approx${F(Vmin)}\).</p>`
        };
      }
    },
    {
      name: 'E, V của biến liên tục', gen() {
        const m = R.int(1, 3), c = R.int(1, 4);
        const E = (m + 1) / (m + 2) * c, E2 = (m + 1) / (m + 3) * c * c, V = E2 - E * E;
        return {
          q: String.raw`<p>X có hàm mật độ \(f(x)=\dfrac{${m + 1}x^{${m}}}{${Math.pow(c, m + 1)}}\) trên \([0;${c}]\), bằng 0 ngoài đoạn. Tính \(E(X)\) và \(V(X)\).</p>`,
          fields: [{ label: 'E(X)', ans: E }, { label: 'V(X)', ans: V, tol: Math.max(V * 0.01, 0.001) }],
          sol: String.raw`<p>\(E(X)=\int_0^{${c}}x\cdot\frac{${m + 1}x^{${m}}}{${Math.pow(c, m + 1)}}dx=\frac{${m + 1}}{${m + 2}}\cdot${c}\approx${F(E)}\).</p><p>\(E(X^2)=\frac{${m + 1}}{${m + 3}}\cdot${c * c}\approx${F(E2)}\); \(V=${F(E2)}-${F(E)}^2\approx${F(V)}\).</p>`
        };
      }
    }
  ]
});

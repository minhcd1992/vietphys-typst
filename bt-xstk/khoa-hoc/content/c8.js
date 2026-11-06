COURSE.chapters.push({
  id: 8, short: 'Kiểm định', title: 'Kiểm định giả thuyết thống kê', when: 'Ngày 3 · Buổi chiều · ~3,5 giờ',
  intro: 'Kiểm định trung bình, tỉ lệ, phương sai – một phía và hai phía. Điểm số nằm ở việc đặt đúng H₁ theo câu chữ của đề và trình bày đủ 4 bước.',
  goals: [
    'Dịch câu hỏi thành \\(H_0, H_1\\): “có thay đổi không” (≠), “có tăng không” (>), “có giảm không” (<).',
    'Chọn đúng tiêu chuẩn: \\(U\\) (n ≥ 30), \\(T\\) Student (n < 30, chuẩn), \\(U\\) cho tỉ lệ, \\(\\chi^2\\) cho phương sai.',
    'Viết miền bác bỏ \\(W_\\alpha\\) đúng một phía / hai phía.',
    'Kết luận bằng lời theo ngữ cảnh.'
  ],
  theory: String.raw`
<h3>1. Quy trình 4 bước</h3>
<div class="box"><p>(1) Đặt \(H_0\) (dấu “=”) và \(H_1\). (2) Tính giá trị quan sát của tiêu chuẩn kiểm định. (3) Tra giá trị tới hạn, viết \(W_\alpha\). (4) Nếu giá trị quan sát \(\in W_\alpha\) ⇒ bác bỏ \(H_0\); ngược lại chưa đủ cơ sở bác bỏ \(H_0\). Kết luận theo ngữ cảnh.</p></div>
<h3>2. Giá trị tới hạn chuẩn</h3>
<div class="box">${tbl([[String.raw`Mức ý nghĩa \(\alpha\)`, '0,10', '0,05', '0,01'], [String.raw`Hai phía \(u_{\alpha/2}\)`, '1,645', '1,96', '2,575'], [String.raw`Một phía \(u_\alpha\)`, '1,28', '1,645', '2,33']])}</div>
<h3>3. Kiểm định trung bình μ</h3>
<div class="box">\[u_{qs}=\frac{\bar x-\mu_0}{s/\sqrt n}\ (n\ge30),\qquad t_{qs}=\frac{\bar x-\mu_0}{s/\sqrt n}\sim T(n-1)\ (n<30,\ \text{chuẩn})\]
${tbl([[String.raw`\(H_1\)`, 'Miền bác bỏ (chuẩn)', 'Miền bác bỏ (Student)'], [String.raw`\(\mu\ne\mu_0\)`, String.raw`\(|u|>u_{\alpha/2}\)`, String.raw`\(|t|>t_{\alpha/2}(n-1)\)`], [String.raw`\(\mu>\mu_0\)`, String.raw`\(u>u_\alpha\)`, String.raw`\(t>t_\alpha(n-1)\)`], [String.raw`\(\mu<\mu_0\)`, String.raw`\(u<-u_\alpha\)`, String.raw`\(t<-t_\alpha(n-1)\)`]])}</div>
<h3>4. Kiểm định tỉ lệ p</h3>
<div class="box">\[u_{qs}=\frac{f-p_0}{\sqrt{p_0(1-p_0)/n}}\]<p>(Mẫu số dùng \(p_0\), <b>không</b> dùng f.) Miền bác bỏ như bảng trên.</p></div>
<h3>5. Kiểm định phương sai σ² (tổng thể chuẩn)</h3>
<div class="box">\[\chi^2_{qs}=\frac{(n-1)s^2}{\sigma_0^2}\sim\chi^2(n-1)\]
${tbl([[String.raw`\(H_1\)`, 'Miền bác bỏ'], [String.raw`\(\sigma^2>\sigma_0^2\)`, String.raw`\(\chi^2>\chi^2_\alpha(n-1)\)`], [String.raw`\(\sigma^2<\sigma_0^2\)`, String.raw`\(\chi^2<\chi^2_{1-\alpha}(n-1)\)`], [String.raw`\(\sigma^2\ne\sigma_0^2\)`, String.raw`\(\chi^2<\chi^2_{1-\alpha/2}\) hoặc \(\chi^2>\chi^2_{\alpha/2}\)`]])}</div>
<div class="key">Chọn \(H_1\) theo <b>điều đề muốn chứng minh</b>: “có tăng không” ⇒ \(H_1:\mu>\mu_0\); “có cần thay đổi không / có đúng không” ⇒ \(\ne\); “nghi ngờ giảm sút” ⇒ \(<\); “hợp đồng quy định không quá” ⇒ \(H_1\): vượt quá (>).</div>`,
  recipes: [
    ['“Có cần thay đổi định mức không”, “có chấp nhận được không”, “tài liệu nói p = … có đúng không”', String.raw`Hai phía \(\ne\), so \(|u|\) với \(u_{\alpha/2}\).`, '8.1a, 8.2a, 8.5, 8.7b'],
    ['“Có tăng lên không”, “có thực sự cao hơn / tối thiểu là …”', String.raw`Phía phải \(H_1:\ >\), so \(u>u_\alpha\).`, '8.1b, 8.4, 8.8'],
    ['“Nghi ngờ giảm sút”, “có làm giảm không”', String.raw`Phía trái \(H_1:\ <\), so \(u<-u_\alpha\).`, '8.6, 8.7a'],
    ['n < 30, “có phân phối chuẩn”, chưa biết σ', String.raw`Student với \(t_\alpha(n-1)\) hoặc \(t_{\alpha/2}(n-1)\).`, '8.6'],
    ['“Độ biến động / phương sai … có tăng không”, “phương sai không quá …”', String.raw`\(\chi^2_{qs}=\frac{(n-1)s^2}{\sigma_0^2}\), phía phải \(\chi^2_\alpha(n-1)\).`, '8.2b, 8.3'],
    ['Đề cho số liệu theo năm, theo khu vực (120 triệu/năm, 14 tấn/tháng cả khu vực)', String.raw`Quy đổi \(\mu_0\) về cùng đơn vị với mẫu (theo tháng, theo hộ).`, '8.1b, 8.5']
  ],
  traps: [
    String.raw`Kiểm định tỉ lệ: mẫu số dùng \(p_0(1-p_0)\), không dùng \(f(1-f)\) (khác ước lượng!).`,
    String.raw`Một phía dùng \(u_{0{,}05}=1{,}645\) chứ không phải 1,96.`,
    String.raw`Không kết luận “chấp nhận \(H_0\) là đúng”; nói “chưa đủ cơ sở bác bỏ \(H_0\)”.`,
    String.raw`Bài 8.1b: \(\mu_0=120/12=10\) triệu/tháng; bài 8.5: \(\mu_0=14000/4000=3{,}5\) kg/hộ.`
  ],
  examples: [
    { id: '8.1', tag: 'Tỉ lệ + trung bình', q: String.raw`${tbl([['Doanh số (triệu/tháng)', 11, '11,5', 12, '12,5', 13, '13,5'], ['Số hộ', 10, 15, 20, 30, 15, 10]])}<p>a) Hộ có doanh số trên 12,5 là hộ doanh số cao; tài liệu nói tỉ lệ này là 35%. Nhận xét với α = 5%. b) Năm trước doanh số trung bình 120 triệu/năm; năm nay có tăng không (α = 1%)?</p>`,
      sol: String.raw`<p>a) \(f=\frac{25}{100}=0{,}25\); \(H_1:p\ne0{,}35\). \(u=\frac{0{,}25-0{,}35}{\sqrt{0{,}35\cdot0{,}65/100}}\approx-2{,}097\), \(|u|>1{,}96\) ⇒ bác bỏ: tỉ lệ 35% không phù hợp.</p><p>b) \(\mu_0=10\); \(\bar x=12{,}275\), \(s\approx0{,}719\). \(H_1:\mu>10\): \(u=\frac{2{,}275}{0{,}0719}\approx31{,}6>2{,}33\) ⇒ bác bỏ \(H_0\): doanh số tăng.</p><p class="muted">Giáo trình ghi \(s\approx0{,}7227\), \(u\approx31{,}48\) do cộng sai \(\sum n_ix_i^2\) (đúng là 15 118,75); kết luận không đổi.</p>` },
    { id: '8.2', tag: 'Trung bình + phương sai', q: String.raw`${tbl([['Điện tiêu thụ (kW)', '100–120', '120–140', '140–160', '160–180', '180–200'], ['Số hộ', 14, 25, 30, 20, 11]])}<p>Định mức cũ 140 kW. a) Có cần thay đổi định mức (α = 5%)? b) Trước đây độ biến động là 400 kW²; hiện nay tăng hay giảm (α = 5%)?</p>`,
      sol: String.raw`<p>\(\bar x=147{,}8\), \(\sum n_ix_i^2=2\,242\,000\), \(s^2\approx580{,}97\), \(s\approx24{,}10\).</p><p>a) \(u=\frac{7{,}8}{2{,}410}\approx3{,}24>1{,}96\) ⇒ bác bỏ: cần thay đổi định mức.</p><p>b) \(s^2>400\) nên xét \(H_1:\sigma^2>400\): \(\chi^2=\frac{99\cdot580{,}97}{400}\approx143{,}8>\chi^2_{0{,}05}(100)=124{,}3\) ⇒ độ biến động tăng.</p><p class="muted">Giáo trình ghi \(\sum n_ix_i^2=2\,241\,800\) (sai), \(s\approx24{,}06\); kết luận không đổi.</p>` },
    { id: '8.3', tag: 'Phương sai', q: String.raw`<p>Hợp đồng: phương sai khối lượng không quá 0,012 kg². Mẫu 30 trái có \(s^2=0{,}018\). Hợp đồng có bị vi phạm (α = 5%)?</p>`,
      sol: String.raw`<p>\(H_1:\sigma^2>0{,}012\). \(\chi^2=\frac{29\cdot0{,}018}{0{,}012}=43{,}5>\chi^2_{0{,}05}(29)=42{,}56\) ⇒ bác bỏ: hợp đồng bị vi phạm.</p>` },
    { id: '8.4', tag: 'Một phía phải', q: String.raw`${tbl([['Thu nhập', '2,0', '3,5', '5,0', '6,5', '9,0'], ['Số hộ', 8, 15, 38, 22, 17]])}<p>Siêu thị hiệu quả nếu thu nhập bình quân tối thiểu 5 triệu. Có nên mở (α = 5%)?</p>`,
      sol: String.raw`<p>\(\bar x=5{,}545\), \(s\approx2{,}004\). \(H_1:\mu>5\): \(u=\frac{0{,}545}{0{,}2004}\approx2{,}72>1{,}645\) ⇒ thu nhập thực sự > 5 triệu, nên mở.</p>` },
    { id: '8.5', tag: 'Quy đổi μ₀', q: String.raw`<p>Dùng số liệu bài 7.7 (400 hộ, \(\bar x=3{,}62\), \(s\approx1{,}446\)), khu vực 4000 hộ. Cho rằng nhu cầu cả khu vực là 14 tấn/tháng có chấp nhận được không (α = 1%)?</p>`,
      sol: String.raw`<p>\(\mu_0=3{,}5\) kg/hộ. \(u=\frac{0{,}12}{1{,}446/20}\approx1{,}66<2{,}575\) ⇒ chưa bác bỏ: chấp nhận được.</p>` },
    { id: '8.6', tag: 'Student một phía', q: String.raw`${tbl([['Khối lượng (g)', 480, 485, 490, 495, 500, 510], ['Số SP', 2, 3, 8, 5, 3, 4]])}<p>Khối lượng chuẩn 500 g, nghi ngờ giảm sút. Kết luận với α = 5%.</p>`,
      sol: String.raw`<p>\(n=25\), \(\bar x=494\), \(s\approx8{,}898\). \(H_1:\mu<500\): \(t=\frac{-6}{1{,}7795}\approx-3{,}37<-t_{0{,}05}(24)=-1{,}711\) ⇒ nghi ngờ đúng.</p>` },
    { id: '8.7', tag: 'Tỉ lệ', q: String.raw`<p>Tỉ lệ phế phẩm cũ 5%. Sau cải tiến, kiểm 800 sản phẩm có 24 phế phẩm. a) Biện pháp có làm giảm tỉ lệ (α = 5%)? b) Báo cáo tỉ lệ còn 2% có chấp nhận được (α = 5%)?</p>`,
      sol: String.raw`<p>\(f=0{,}03\). a) \(u=\frac{-0{,}02}{\sqrt{0{,}05\cdot0{,}95/800}}\approx-2{,}60<-1{,}645\) ⇒ có làm giảm.</p><p>b) \(u=\frac{0{,}01}{\sqrt{0{,}02\cdot0{,}98/800}}\approx2{,}02>1{,}96\) ⇒ bác bỏ: báo cáo 2% không chấp nhận được.</p>` },
    { id: '8.8', tag: 'Tỉ lệ một phía', q: String.raw`<p>Tỉ lệ loại A trước đây 45%. Sau cải tiến, 400 sản phẩm có 215 loại A. Phương pháp mới có làm tăng tỉ lệ (α = 5%)?</p>`,
      sol: String.raw`<p>\(f=0{,}5375\). \(u=\frac{0{,}0875}{\sqrt{0{,}45\cdot0{,}55/400}}\approx3{,}52>1{,}645\) ⇒ có làm tăng.</p>` }
  ],
  gens: [
    {
      name: 'Kiểm định μ – mẫu lớn', gen() {
        const kind = R.pick(['ne', 'gt', 'lt']), a = R.pick([0.05, 0.01]), n = R.pick([36, 49, 64, 100, 144, 400]);
        const mu0 = R.pick([50, 100, 140, 200, 500]), s = +(mu0 * R.step(0.05, 0.2, 0.01)).toFixed(1);
        const shift = R.step(0.5, 3.5, 0.1) * (kind === 'lt' ? -1 : kind === 'gt' ? 1 : R.pick([-1, 1])) * (Math.random() < 0.3 ? 0.4 : 1);
        const xb = +(mu0 + shift * s / Math.sqrt(n)).toFixed(2), u = (xb - mu0) / (s / Math.sqrt(n));
        const crit = kind === 'ne' ? S.uConf(1 - a) : S.uAlpha(a);
        const rej = kind === 'ne' ? Math.abs(u) > crit : kind === 'gt' ? u > crit : u < -crit;
        const ctx = { ne: 'Có cần thay đổi định mức không?', gt: 'Có thể cho rằng giá trị trung bình đã tăng lên không?', lt: 'Có thể cho rằng giá trị trung bình đã giảm xuống không?' }[kind];
        const H1 = { ne: String.raw`\mu\ne${mu0}`, gt: String.raw`\mu>${mu0}`, lt: String.raw`\mu<${mu0}` }[kind];
        const W = { ne: String.raw`|u|>${F(crit, 3)}`, gt: String.raw`u>${F(crit, 3)}`, lt: String.raw`u<-${F(crit, 3)}` }[kind];
        return {
          q: String.raw`<p>Định mức cũ của một chỉ tiêu là ${mu0}. Khảo sát ${n} đơn vị thu được \(\bar x=${F(xb)}\), \(s=${F(s)}\). ${ctx} Kết luận với mức ý nghĩa ${T(a * 100)}%.</p>`,
          fields: [{ label: 'u_qs', ans: u, tol: Math.max(Math.abs(u) * 0.015, 0.02) }, { label: 'giá trị tới hạn', ans: crit, tol: 0.006 }, { label: 'Kết luận', choices: ['Bác bỏ H₀', 'Chưa đủ cơ sở bác bỏ H₀'], ans: rej ? 0 : 1 }],
          sol: String.raw`<p>\(H_0:\mu=${mu0}\), \(H_1:${H1}\). \(n=${n}\ge30\):</p>\[u_{qs}=\frac{${F(xb)}-${mu0}}{${F(s)}/\sqrt{${n}}}=${F(u, 3)}\]<p>${kind === 'ne' ? 'Hai phía' : 'Một phía'}, \(\alpha=${F(a)}\): giá trị tới hạn ${F(crit, 3)}, \(W_\alpha:\ ${W}\).</p><p>${rej ? String.raw`\(u_{qs}\in W_\alpha\) ⇒ <b>bác bỏ \(H_0\)</b>, chấp nhận \(H_1\).` : String.raw`\(u_{qs}\notin W_\alpha\) ⇒ <b>chưa đủ cơ sở bác bỏ \(H_0\)</b>.`}</p>`
        };
      }
    },
    {
      name: 'Kiểm định μ – Student', gen() {
        const kind = R.pick(['ne', 'lt', 'gt']), a = 0.05, n = R.int(9, 26), mu0 = R.pick([20, 50, 100, 500]), s = +(mu0 * R.step(0.02, 0.1, 0.005)).toFixed(2);
        const shift = R.step(0.6, 3.5, 0.1) * (kind === 'lt' ? -1 : kind === 'gt' ? 1 : R.pick([-1, 1])) * (Math.random() < 0.3 ? 0.5 : 1);
        const xb = +(mu0 + shift * s / Math.sqrt(n)).toFixed(2), t = (xb - mu0) / (s / Math.sqrt(n));
        const crit = S.tCrit(kind === 'ne' ? 0.025 : 0.05, n - 1);
        const rej = kind === 'ne' ? Math.abs(t) > crit : kind === 'gt' ? t > crit : t < -crit;
        const ctx = { ne: 'Máy có hoạt động đúng tiêu chuẩn không?', gt: 'Có ý kiến cho rằng giá trị trung bình vượt tiêu chuẩn. Ý kiến đó có đúng không?', lt: 'Có nghi ngờ giá trị trung bình bị giảm. Nghi ngờ đó có đúng không?' }[kind];
        const H1 = { ne: String.raw`\mu\ne${mu0}`, gt: String.raw`\mu>${mu0}`, lt: String.raw`\mu<${mu0}` }[kind];
        return {
          q: String.raw`<p>Theo tiêu chuẩn, giá trị trung bình là ${mu0} (đại lượng có phân phối chuẩn). Đo ${n} sản phẩm được \(\bar x=${F(xb)}\), \(s=${F(s)}\). ${ctx} (mức ý nghĩa 5%)</p>`,
          fields: [{ label: 't_qs', ans: t, tol: Math.max(Math.abs(t) * 0.015, 0.02) }, { label: 'giá trị tới hạn', ans: crit, tol: 0.006 }, { label: 'Kết luận', choices: ['Bác bỏ H₀', 'Chưa đủ cơ sở bác bỏ H₀'], ans: rej ? 0 : 1 }],
          sol: String.raw`<p>\(H_0:\mu=${mu0}\), \(H_1:${H1}\). \(n=${n}<30\), chuẩn, chưa biết σ ⇒ Student, bậc tự do ${n - 1}.</p>\[t_{qs}=\frac{${F(xb)}-${mu0}}{${F(s)}/\sqrt{${n}}}=${F(t, 3)}\]<p>Tra \(t_{${kind === 'ne' ? '0{,}025' : '0{,}05'}}(${n - 1})=${F(crit, 3, true)}\). ${rej ? String.raw`\(t_{qs}\in W_\alpha\) ⇒ <b>bác bỏ \(H_0\)</b>.` : String.raw`\(t_{qs}\notin W_\alpha\) ⇒ <b>chưa đủ cơ sở bác bỏ \(H_0\)</b>.`}</p>`
        };
      }
    },
    {
      name: 'Kiểm định tỉ lệ', gen() {
        const kind = R.pick(['ne', 'gt', 'lt']), a = R.pick([0.05, 0.01]), n = R.pick([100, 200, 400, 500, 800]), p0 = R.pick([0.05, 0.1, 0.2, 0.3, 0.45, 0.6]);
        const sd = Math.sqrt(p0 * (1 - p0) / n), shift = R.step(0.5, 3.5, 0.1) * (kind === 'lt' ? -1 : kind === 'gt' ? 1 : R.pick([-1, 1]));
        const m = Math.max(1, Math.round(n * (p0 + shift * sd))), f = m / n, u = (f - p0) / sd;
        const crit = kind === 'ne' ? S.uConf(1 - a) : S.uAlpha(a);
        const rej = kind === 'ne' ? Math.abs(u) > crit : kind === 'gt' ? u > crit : u < -crit;
        const ctx = { ne: `Có thể cho rằng tỉ lệ vẫn là ${T(p0 * 100)}% không?`, gt: 'Tỉ lệ có thực sự tăng lên không?', lt: 'Biện pháp mới có thực sự làm giảm tỉ lệ không?' }[kind];
        const H1 = { ne: String.raw`p\ne${F(p0)}`, gt: String.raw`p>${F(p0)}`, lt: String.raw`p<${F(p0)}` }[kind];
        return {
          q: String.raw`<p>Trước đây tỉ lệ sản phẩm loại A là ${T(p0 * 100)}%. Kiểm tra ${n} sản phẩm thấy ${m} sản phẩm loại A. ${ctx} (mức ý nghĩa ${T(a * 100)}%)</p>`,
          fields: [{ label: 'u_qs', ans: u, tol: Math.max(Math.abs(u) * 0.015, 0.02) }, { label: 'Kết luận', choices: ['Bác bỏ H₀', 'Chưa đủ cơ sở bác bỏ H₀'], ans: rej ? 0 : 1 }],
          sol: String.raw`<p>\(f=\frac{${m}}{${n}}=${F(f)}\). \(H_0:p=${F(p0)}\), \(H_1:${H1}\).</p>\[u_{qs}=\frac{${F(f)}-${F(p0)}}{\sqrt{${F(p0)}\cdot${F(1 - p0)}/${n}}}=${F(u, 3)}\]<p>Giá trị tới hạn ${F(crit, 3)} (${kind === 'ne' ? 'hai phía' : 'một phía'}). ${rej ? String.raw`⇒ <b>bác bỏ \(H_0\)</b>.` : String.raw`⇒ <b>chưa đủ cơ sở bác bỏ \(H_0\)</b>.`}</p>`
        };
      }
    },
    {
      name: 'Kiểm định phương sai', gen() {
        const n = R.int(10, 31), k = n - 1, s0 = R.pick([0.01, 0.5, 4, 25, 400]), ratio = R.step(1.1, 2, 0.05), s2 = +(s0 * ratio).toPrecision(3);
        const chi = k * s2 / s0, crit = S.chi2Crit(0.05, k), rej = chi > crit;
        return {
          q: String.raw`<p>Quy định phương sai của một chỉ tiêu không vượt quá \(${F(s0)}\). Một mẫu ${n} sản phẩm (tổng thể chuẩn) có phương sai mẫu hiệu chỉnh \(s^2=${F(s2, 4)}\). Quy định có bị vi phạm không, với mức ý nghĩa 5%?</p>`,
          fields: [{ label: 'χ²_qs', ans: chi, tol: chi * 0.01 }, { label: 'giá trị tới hạn', ans: crit, tol: crit * 0.005 }, { label: 'Kết luận', choices: ['Bác bỏ H₀ (vi phạm)', 'Chưa đủ cơ sở bác bỏ H₀'], ans: rej ? 0 : 1 }],
          sol: String.raw`<p>\(H_0:\sigma^2=${F(s0)}\), \(H_1:\sigma^2>${F(s0)}\).</p>\[\chi^2_{qs}=\frac{(n-1)s^2}{\sigma_0^2}=\frac{${k}\cdot${F(s2, 4)}}{${F(s0)}}=${F(chi, 3)}\]<p>\(\chi^2_{0{,}05}(${k})=${F(crit, 3)}\). ${rej ? String.raw`\(\chi^2_{qs}>${F(crit, 3)}\) ⇒ <b>bác bỏ \(H_0\)</b>: quy định bị vi phạm.` : String.raw`\(\chi^2_{qs}\le${F(crit, 3)}\) ⇒ <b>chưa đủ cơ sở</b> kết luận vi phạm.`}</p>`
        };
      }
    }
  ]
});

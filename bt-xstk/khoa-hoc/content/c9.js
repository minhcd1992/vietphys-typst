COURSE.chapters.push({
  id: 9, short: 'Tương quan & hồi quy', title: 'Tương quan và hồi quy tuyến tính', when: 'Ngày 3 · Buổi tối · ~1,5 giờ',
  intro: 'Hệ số tương quan mẫu, kiểm định sự tương quan, đường hồi quy bình phương bé nhất và dự báo. Bài dạng “máy tính làm hết” – chỉ cần nắm công thức và trình bày.',
  goals: [
    'Tính \\(\\bar x,\\bar y,S_{xx},S_{yy},S_{xy}\\) và \\(r\\).',
    'Kiểm định \\(H_0:\\rho=0\\) bằng \\(t=\\frac{r\\sqrt{n-2}}{\\sqrt{1-r^2}}\\), bậc tự do \\(n-2\\).',
    'Lập phương trình hồi quy \\(\\hat y=ax+b\\) và dự báo.',
    'Dùng chế độ STAT (A+BX) của máy tính để kiểm tra.'
  ],
  theory: String.raw`
<h3>1. Các tổng cơ bản</h3>
<div class="box">\[S_{xx}=\sum(x_i-\bar x)^2=\sum x_i^2-n\bar x^2,\quad S_{yy}=\sum y_i^2-n\bar y^2,\quad S_{xy}=\sum x_iy_i-n\bar x\bar y\]</div>
<h3>2. Hệ số tương quan mẫu</h3>
<div class="box">\[r=\frac{S_{xy}}{\sqrt{S_{xx}S_{yy}}},\qquad -1\le r\le1\]
<p>\(r>0\): đồng biến; \(r<0\): nghịch biến; \(|r|\ge0{,}7\): tương quan chặt.</p></div>
<h3>3. Kiểm định sự tương quan</h3>
<div class="box"><p>\(H_0:\rho=0\), \(H_1:\rho\ne0\):</p>\[t_{qs}=\frac{r\sqrt{n-2}}{\sqrt{1-r^2}},\qquad W_\alpha=\{|t|>t_{\alpha/2}(n-2)\}\]</div>
<h3>4. Hồi quy tuyến tính của Y theo X</h3>
<div class="box">\[\hat y=ax+b,\qquad a=\frac{S_{xy}}{S_{xx}}=r\frac{s_y}{s_x},\qquad b=\bar y-a\bar x\]
<p>Dự báo: thay \(x_0\) vào phương trình. Hệ số xác định \(R^2=r^2\) = tỉ lệ biến thiên của Y được giải thích bởi X.</p></div>
<h3>5. Bảng tương quan (dữ liệu ghép lớp hai chiều)</h3>
<div class="box">\[S_{XY}=\frac1n\sum n_{ij}x_iy_j-\bar x\bar y,\qquad r=\frac{S_{XY}}{S_XS_Y}\]<p>(\(S_X, S_Y\) là độ lệch chuẩn chưa hiệu chỉnh, tính từ phân phối biên.)</p></div>
<div class="key">Casio: MODE STAT → A+BX, nhập cột x, y. Đọc A (= b), B (= a), r. Trong bài vẫn ghi \(\bar x,\bar y,S_{xx},S_{xy}\) để được điểm trình bày.</div>`,
  recipes: [
    ['“Kiểm định sự tương quan của X và Y với mức ý nghĩa α”', String.raw`Tính r ⇒ \(t_{qs}\) ⇒ so với \(t_{\alpha/2}(n-2)\).`, '9.1a, 9.2a, 9.5, 9.6a, 9.7a'],
    ['“Viết phương trình hồi quy tuyến tính của Y theo X”', String.raw`\(a=S_{xy}/S_{xx}\), \(b=\bar y-a\bar x\).`, '9.1b, 9.2b, 9.6b, 9.7b'],
    ['“Khi X = x₀ thì Y khoảng bao nhiêu”', String.raw`\(\hat y(x_0)=ax_0+b\).`, '9.1c, 9.2c, 9.6c, 9.7c'],
    [String.raw`Bảng tương quan (ô có tần số \(n_{ij}\), khoảng ghép lớp)`, String.raw`Lấy trung điểm, tính phân phối biên, rồi \(\sum n_{ij}x_iy_j\).`, '9.3']
  ],
  traps: [
    String.raw`Bậc tự do khi kiểm định tương quan là \(n-2\), không phải \(n-1\).`,
    String.raw`Hồi quy “của Y theo X”: \(a=S_{xy}/S_{xx}\) (chia cho tổng bình phương của X).`,
    String.raw`Làm tròn r quá sớm khi \(|r|\approx1\) làm \(t_{qs}\) sai nhiều (vì \(\sqrt{1-r^2}\) rất nhỏ) – giữ ≥ 4 chữ số.`
  ],
  examples: [
    { id: '9.1', tag: 'Đầy đủ', q: String.raw`${tbl([['Nhu cầu Y', 252, 244, 241, 234, 230, 223], ['Giá X ($)', 2, '2,2', '2,4', '2,6', '2,8', 3]])}<p>a) Kiểm định tương quan (α = 5%). b) Phương trình hồi quy Y theo X. c) Nhu cầu khi giá 2,1$.</p>`,
      sol: String.raw`<p>\(\bar x=2{,}5\), \(\bar y\approx237{,}33\); \(S_{xx}=0{,}70\), \(S_{yy}\approx543{,}33\), \(S_{xy}=-19{,}40\); \(r\approx-0{,}9948\).</p><p>a) \(t=\frac{r\sqrt4}{\sqrt{1-r^2}}\approx-19{,}46\), \(|t|>t_{0{,}025}(4)=2{,}776\) ⇒ có tương quan (nghịch, rất chặt).</p><p>b) \(a=\frac{-19{,}4}{0{,}7}\approx-27{,}714\), \(b\approx306{,}619\): \(\hat y=-27{,}714x+306{,}619\).</p><p>c) \(\hat y(2{,}1)\approx248{,}42\).</p>` },
    { id: '9.2', tag: 'Đầy đủ', q: String.raw`${tbl([['X', '11,3', '12,9', '13,6', '16,8', '18,8', '22,0', '22,2', '23,7', '26,6', '27,5'], ['Y', '13,2', '15,6', '17,2', '18,8', '20,2', '23,9', '22,4', '23,0', '24,4', '24,6']])}<p>a) Kiểm định tương quan (5%). b) Hồi quy Y theo X. c) Dự đoán Y khi X = 25.</p>`,
      sol: String.raw`<p>\(\bar x=19{,}54\), \(\bar y=20{,}33\); \(S_{xx}\approx298{,}96\), \(S_{yy}\approx144{,}32\), \(S_{xy}\approx201{,}16\); \(r\approx0{,}9684\).</p><p>a) \(t\approx10{,}99>t_{0{,}025}(8)=2{,}306\) ⇒ tương quan thuận rất mạnh.</p><p>b) \(a\approx0{,}6729\), \(b\approx7{,}1825\). c) \(\hat y(25)\approx24{,}00\).</p><p class="muted">Giáo trình ghi các tổng \(S_{xx}=328{,}82\)… chưa chính xác, nhưng r, a, b đúng.</p>` },
    { id: '9.3', tag: 'Bảng tương quan', q: String.raw`${tbl([[String.raw`X \ Y`, '25–30', '30–35', '35–40', '40–45'], ['20–25', 1, 1, '', ''], ['25–30', '', 5, 5, 2], ['30–35', '', 4, 6, 1]])}<p>Tính hệ số tương quan.</p>`,
      sol: String.raw`<p>Trung điểm X: 22,5; 27,5; 32,5; Y: 27,5; …; 42,5. \(n=25\), \(\bar x=29{,}3\), \(\bar y=35{,}7\), \(S_X^2=9{,}26\), \(S_Y^2=14{,}26\).</p><p>\(\sum n_{ij}x_iy_j=26\,231{,}25\) ⇒ \(S_{XY}=1049{,}25-1046{,}01=3{,}24\); \(r=\frac{3{,}24}{\sqrt{9{,}26\cdot14{,}26}}\approx0{,}282\) (tương quan thuận yếu).</p>` },
    { id: '9.4', tag: 'Hệ số r', q: String.raw`${tbl([['Test A', 13, 16, 12, 9, 12, 15, 11, 14, 8, 11, 7, 9], ['Test B', 10, 11, 12, 7, 9, 10, 9, 11, 5, 12, 4, 6]])}<p>Tính hệ số tương quan.</p>`,
      sol: String.raw`<p>\(\bar x\approx11{,}417\), \(\bar y\approx8{,}833\); \(S_{xx}\approx86{,}92\), \(S_{yy}\approx81{,}67\), \(S_{xy}\approx67{,}83\); \(r\approx0{,}805\): tương quan thuận khá chặt.</p>` },
    { id: '9.5', tag: 'r + kiểm định', q: String.raw`${tbl([['Toán X', 7, 6, 7, 10, 4, 5, 7, 8, 8, 9], ['Lý Y', 6, 7, 7, 9, 5, 3, 8, 9, 6, 7]])}<p>Tính r và kết luận về sự tương quan (5%).</p>`,
      sol: String.raw`<p>\(\bar x=7{,}1\), \(\bar y=6{,}7\); \(S_{xx}=28{,}9\), \(S_{yy}=30{,}1\), \(S_{xy}=21{,}3\); \(r\approx0{,}7222\).</p><p>\(t=\frac{0{,}7222\sqrt8}{\sqrt{1-0{,}7222^2}}\approx2{,}95>2{,}306\) ⇒ có tương quan thuận.</p>` },
    { id: '9.6', tag: 'Đầy đủ', q: String.raw`${tbl([['Hóa chất X (mg)', 1, 2, 3, 4, 5, 6], ['Thời gian sống Y (giờ)', 30, 20, 20, 12, 10, 5]])}<p>a) r và kiểm định (5%). b) Hồi quy Y theo X. c) Ước lượng Y khi X = 2,3.</p>`,
      sol: String.raw`<p>\(\bar x=3{,}5\), \(\bar y\approx16{,}167\); \(S_{xx}=17{,}5\), \(S_{yy}\approx400{,}83\), \(S_{xy}=-81{,}5\); \(r\approx-0{,}9731\).</p><p>a) \(t\approx-8{,}45\), \(|t|>2{,}776\) ⇒ tương quan nghịch chặt.</p><p>b) \(a\approx-4{,}6571\), \(b\approx32{,}4667\). c) \(\hat y(2{,}3)\approx21{,}76\) giờ.</p>` },
    { id: '9.7', tag: 'Đầy đủ', q: String.raw`${tbl([['Lượng mưa X', '4,3', '4,5', '5,9', '5,6', '6,1', '5,2', '3,8', '2,1', '7,5'], ['Hạt bị loại Y', 126, 121, 116, 118, 114, 118, 132, 141, 108]])}<p>a) r và kiểm định (5%). b) Hồi quy Y theo X. c) Ước lượng Y khi X = 4,8.</p>`,
      sol: String.raw`<p>\(\bar x=5\), \(\bar y\approx121{,}556\); \(S_{xx}=19{,}26\), \(S_{yy}\approx804{,}22\), \(S_{xy}=-121{,}8\); \(r\approx-0{,}9787\).</p><p>a) \(t\approx-12{,}60\), \(|t|>t_{0{,}025}(7)=2{,}365\) ⇒ tương quan nghịch rất chặt.</p><p>b) \(a\approx-6{,}3240\), \(b\approx153{,}1755\). c) \(\hat y(4{,}8)\approx122{,}82\).</p><p class="muted">Giáo trình ghi \(S_{xx}=19{,}86\), \(S_{xy}=-125{,}6\) (chưa chính xác) nhưng r, a, b gần đúng.</p>` }
  ],
  gens: [
    {
      name: 'Hồi quy & dự báo', gen() {
        const n = R.int(5, 8), x0 = R.pick([1, 2, 10, 20]), h = R.pick([1, 2, 5]);
        const xs = Array.from({ length: n }, (_, i) => x0 + i * h);
        const slope = R.pick([-3, -2, -1.5, 1.2, 2, 2.5, 4]), icp = R.int(10, 60), noise = R.pick([1, 2, 3, 5]);
        const ys = xs.map(x => Math.round(icp + slope * x + R.int(-noise, noise)));
        const r = S.regress(xs, ys);
        if (!(Math.abs(r.r) < 0.999)) return this.gen();
        const xp = +(x0 + h * R.step(0.5, n - 1.5, 0.5) + (Math.random() < 0.5 ? 0.3 * h : 0)).toFixed(2), yp = r.a * xp + r.b;
        const tc = S.tCrit(0.025, n - 2), rej = Math.abs(r.t) > tc;
        return {
          q: String.raw`<p>Số liệu quan sát:</p>${tbl([['X', ...xs], ['Y', ...ys]])}<p>a) Tính hệ số tương quan \(r\). b) Lập phương trình hồi quy tuyến tính \(\hat y=ax+b\). c) Dự báo Y khi X = ${T(xp)}. d) Kiểm định sự tương quan với mức ý nghĩa 5%.</p>`,
          fields: [{ label: 'r', ans: r.r, tol: 0.003 }, { label: 'a', ans: r.a, tol: Math.max(Math.abs(r.a) * 0.01, 0.005) }, { label: 'b', ans: r.b, tol: Math.max(Math.abs(r.b) * 0.01, 0.02) }, { label: 'ŷ', ans: yp, tol: Math.max(Math.abs(yp) * 0.01, 0.05) }, { label: 'd)', choices: ['Có tương quan (bác bỏ H₀)', 'Chưa đủ cơ sở bác bỏ H₀'], ans: rej ? 0 : 1 }],
          sol: String.raw`<p>\(n=${n}\), \(\bar x=${F(r.mx)}\), \(\bar y=${F(r.my)}\); \(S_{xx}=${F(r.sxx)}\), \(S_{yy}=${F(r.syy)}\), \(S_{xy}=${F(r.sxy)}\).</p><p>a) \(r=\frac{${F(r.sxy)}}{\sqrt{${F(r.sxx)}\cdot${F(r.syy)}}}=${F(r.r)}\).</p><p>b) \(a=\frac{${F(r.sxy)}}{${F(r.sxx)}}=${F(r.a)}\), \(b=${F(r.my)}-(${F(r.a)})(${F(r.mx)})=${F(r.b)}\).</p><p>c) \(\hat y(${F(xp)})=${F(yp)}\).</p><p>d) \(t_{qs}=\frac{r\sqrt{${n - 2}}}{\sqrt{1-r^2}}=${F(r.t, 3)}\); \(t_{0{,}025}(${n - 2})=${F(tc, 3, true)}\) ⇒ ${rej ? 'bác bỏ H₀: có tương quan tuyến tính.' : 'chưa đủ cơ sở kết luận có tương quan.'}</p>`
        };
      }
    },
    {
      name: 'Kiểm định ρ = 0', gen() {
        const n = R.int(6, 30), r = +(R.pick([-1, 1]) * R.step(0.2, 0.95, 0.01)).toFixed(2), t = r * Math.sqrt(n - 2) / Math.sqrt(1 - r * r);
        const a = R.pick([0.05, 0.01]), tc = S.tCrit(a / 2, n - 2), rej = Math.abs(t) > tc;
        return {
          q: String.raw`<p>Từ mẫu ${n} cặp quan sát tính được hệ số tương quan mẫu \(r=${F(r)}\). Với mức ý nghĩa ${T(a * 100)}%, có thể kết luận X và Y có tương quan tuyến tính không?</p>`,
          fields: [{ label: 't_qs', ans: t, tol: Math.max(Math.abs(t) * 0.01, 0.01) }, { label: 'giá trị tới hạn', ans: tc, tol: 0.006 }, { label: 'Kết luận', choices: ['Có tương quan (bác bỏ H₀)', 'Chưa đủ cơ sở bác bỏ H₀'], ans: rej ? 0 : 1 }],
          sol: String.raw`\[t_{qs}=\frac{${F(r)}\sqrt{${n - 2}}}{\sqrt{1-${F(r)}^2}}=${F(t, 3)}\]<p>\(t_{${F(a / 2, 3)}}(${n - 2})=${F(tc, 3, true)}\). ${rej ? String.raw`\(|t_{qs}|>${F(tc, 3, true)}\) ⇒ bác bỏ \(H_0\): có tương quan.` : String.raw`\(|t_{qs}|\le${F(tc, 3, true)}\) ⇒ chưa đủ cơ sở bác bỏ \(H_0\).`}</p>`
        };
      }
    },
    {
      name: 'Hồi quy từ đặc trưng mẫu', gen() {
        const mx = R.step(5, 50, 0.5), my = R.step(20, 200, 1), sx = R.step(1, 10, 0.5), sy = R.step(2, 30, 0.5), r = +(R.pick([-1, 1]) * R.step(0.5, 0.95, 0.05)).toFixed(2);
        const a = r * sy / sx, b = my - a * mx, x0 = +(mx + R.pick([-1, 1]) * R.step(0.5, 1.5, 0.5) * sx).toFixed(2);
        return {
          q: String.raw`<p>Cho \(\bar x=${F(mx)}\), \(\bar y=${F(my)}\), \(s_x=${F(sx)}\), \(s_y=${F(sy)}\), \(r=${F(r)}\). Lập đường hồi quy tuyến tính của Y theo X và dự báo Y khi X = ${T(x0)}.</p>`,
          fields: [{ label: 'a', ans: a, tol: Math.max(Math.abs(a) * 0.01, 0.005) }, { label: 'b', ans: b, tol: Math.max(Math.abs(b) * 0.01, 0.05) }, { label: 'ŷ', ans: a * x0 + b, tol: Math.max(Math.abs(a * x0 + b) * 0.01, 0.05) }],
          sol: String.raw`<p>\(a=r\frac{s_y}{s_x}=${F(r)}\cdot\frac{${F(sy)}}{${F(sx)}}=${F(a)}\); \(b=\bar y-a\bar x=${F(my)}-(${F(a)})(${F(mx)})=${F(b)}\).</p><p>\(\hat y(${F(x0)})=${F(a * x0 + b)}\).</p>`
        };
      }
    }
  ]
});

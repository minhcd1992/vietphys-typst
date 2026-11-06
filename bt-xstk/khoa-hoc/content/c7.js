COURSE.chapters.push({
  id: 7, short: 'Ước lượng', title: 'Ước lượng tham số – khoảng tin cậy', when: 'Ngày 3 · Buổi sáng · ~3,5 giờ',
  intro: 'Ước lượng khoảng cho trung bình (chuẩn hoặc Student), tỉ lệ và phương sai; bài toán ngược: tìm độ tin cậy, tìm cỡ mẫu. Gần như chắc chắn có trong đề thi.',
  goals: [
    'Chọn đúng trường hợp: \\(n\\ge30\\) dùng \\(u_{\\alpha/2}\\); \\(n<30\\), tổng thể chuẩn, chưa biết σ dùng \\(t_{\\alpha/2}(n-1)\\).',
    'Viết khoảng tin cậy cho μ, p, σ².',
    'Giải bài ngược: cho sai số ⇒ tìm độ tin cậy; cho sai số & độ tin cậy ⇒ tìm cỡ mẫu.',
    'Xử lý bài “ước lượng cho nhóm con” (chỉ lấy các quan sát thỏa điều kiện).'
  ],
  theory: String.raw`
<h3>1. Các phân vị cần thuộc</h3>
<div class="box">${tbl([[String.raw`Độ tin cậy \(\gamma=1-\alpha\)`, '90%', '95%', '96%', '98%', '99%'], [String.raw`\(u_{\alpha/2}\) (\(\Phi(u)=\gamma/2\))`, '1,645', '1,96', '2,05', '2,33', '2,575']])}</div>
<h3>2. Khoảng tin cậy cho trung bình μ</h3>
<div class="box"><p><b>Mẫu lớn \(n\ge30\)</b> (hoặc đã biết σ thì thay s bằng σ):</p>\[\varepsilon=u_{\alpha/2}\frac{s}{\sqrt n},\qquad \mu\in(\bar x-\varepsilon;\ \bar x+\varepsilon)\]
<p><b>Mẫu nhỏ \(n<30\)</b>, tổng thể chuẩn, chưa biết σ:</p>\[\varepsilon=t_{\alpha/2}(n-1)\frac{s}{\sqrt n}\quad(\text{tra bảng Student, bậc tự do } n-1)\]</div>
<h3>3. Khoảng tin cậy cho tỉ lệ p</h3>
<div class="box">\[f=\frac mn,\qquad \varepsilon=u_{\alpha/2}\sqrt{\frac{f(1-f)}n},\qquad p\in(f-\varepsilon;\ f+\varepsilon)\]</div>
<h3>4. Khoảng tin cậy cho phương sai σ² (tổng thể chuẩn)</h3>
<div class="box">\[\frac{(n-1)s^2}{\chi^2_{\alpha/2}(n-1)}<\sigma^2<\frac{(n-1)s^2}{\chi^2_{1-\alpha/2}(n-1)}\]</div>
<h3>5. Bài toán ngược</h3>
<div class="box"><p>Tìm độ tin cậy: \(u=\frac{\varepsilon\sqrt n}{s}\) (hoặc \(\frac{\varepsilon}{\sqrt{f(1-f)/n}}\)) ⇒ \(\gamma=2\Phi(u)\).</p>
<p>Tìm cỡ mẫu (làm tròn lên): trung bình \(n\ge\big(\frac{u_{\alpha/2}s}{\varepsilon_0}\big)^2\); tỉ lệ \(n\ge\frac{u_{\alpha/2}^2f(1-f)}{\varepsilon_0^2}\) (chưa có f thì lấy \(f=0{,}5\)). “Cần điều tra <b>thêm</b>” = \(n'-n\).</p></div>
<div class="key">Quy trình chuẩn 4 dòng: (1) tính \(\bar x, s\) (hoặc f); (2) chọn phân phối & tra \(u\) / \(t\); (3) tính \(\varepsilon\); (4) viết khoảng + đơn vị.</div>`,
  recipes: [
    [String.raw`“Ước lượng trung bình … độ tin cậy γ”, n ≥ 30`, String.raw`\(\varepsilon=u_{\alpha/2}\frac s{\sqrt n}\).`, '7.1a, 7.3a, 7.6a, 7.7a, 7.8a'],
    [String.raw`n < 30, “giả sử có phân phối chuẩn”`, String.raw`Student \(t_{\alpha/2}(n-1)\).`, '7.2a, 7.5a'],
    ['“Ước lượng tỉ lệ …”', String.raw`\(f=m/n\), \(\varepsilon=u\sqrt{f(1-f)/n}\).`, '7.1b, 7.4a, 7.6b'],
    ['“Ước lượng phương sai / độ biến động / rủi ro”', String.raw`Khoảng χ² với bậc tự do n − 1.`, '7.5b, 7.8b'],
    ['“Với sai số ε thì độ tin cậy là bao nhiêu”', String.raw`\(u=\varepsilon\sqrt n/s\) ⇒ \(\gamma=2\Phi(u)\).`, '7.3b, 7.4b'],
    ['“Muốn độ chính xác ε₀, độ tin cậy γ thì cần (thêm) bao nhiêu”', 'Công thức cỡ mẫu, làm tròn lên, trừ n hiện có nếu hỏi “thêm”.', '7.2b, 7.6c, 7.7b'],
    ['“Bóng loại I”, “chi tiết đạt chuẩn”: ước lượng trung bình của nhóm con', 'Tách riêng các lớp thỏa điều kiện, tính lại n, x̄, s của nhóm đó.', '7.1b, 7.6a'],
    ['Ước lượng “tổng nhu cầu cả khu vực trong năm”', String.raw`Nhân khoảng cho μ (1 hộ, 1 tháng) với hệ số quy đổi \(N\cdot12\).`, '7.7']
  ],
  traps: [
    String.raw`Dùng \(u\) cho mẫu nhỏ: n = 10, 15, 25 với tổng thể chuẩn phải dùng Student.`,
    String.raw`Tra Student nhầm bậc tự do: là \(n-1\), không phải n.`,
    String.raw`KTC phương sai: cận dưới chia cho \(\chi^2_{\alpha/2}\) (số <b>lớn</b>), cận trên chia cho \(\chi^2_{1-\alpha/2}\) (số <b>nhỏ</b>).`,
    'Cỡ mẫu: n = 61,7 ⇒ 62 (làm tròn lên, không làm tròn xuống).',
    String.raw`Dùng \(S\) (chưa hiệu chỉnh) thay vì \(s\) – sai số nhỏ khi n lớn nhưng vẫn bị trừ điểm.`
  ],
  examples: [
    { id: '7.1', tag: 'KTC μ, p (mẫu lớn)', q: String.raw`<p>Tuổi thọ 256 bóng đèn (giờ): 1000–1100: 4; 1100–1200: 10; 1200–1300: 16; 1300–1400: 20; 1400–1500: 36; 1500–1600: 48; 1600–1700: 42; 1700–1800: 32; 1800–1900: 26; 1900–2000: 14; 2000–2100: 8. a) Ước lượng tuổi thọ trung bình, độ tin cậy 95%. b) Bóng ≥ 1700 giờ là loại I: ước lượng tỉ lệ và tuổi thọ trung bình bóng loại I, độ tin cậy 99%.</p>`,
      sol: String.raw`<p>\(\bar x=1587{,}5\), \(s\approx226{,}83\).</p><p>a) \(\varepsilon=1{,}96\cdot\frac{226{,}83}{16}\approx27{,}79\) ⇒ \(\mu\in(1559{,}71;\ 1615{,}29)\).</p><p>b) \(m=80\), \(f=0{,}3125\), \(\varepsilon=2{,}575\sqrt{\frac{0{,}3125\cdot0{,}6875}{256}}\approx0{,}0746\) ⇒ \(p\in(0{,}2379;\ 0{,}3871)\).</p><p>Loại I: \(n=80\), \(\bar x=1847{,}5\), \(s\approx99{,}33\); \(\varepsilon=2{,}575\frac{99{,}33}{\sqrt{80}}\approx28{,}60\) ⇒ \((1818{,}90;\ 1876{,}10)\).</p>` },
    { id: '7.2', tag: 'Student + cỡ mẫu', q: String.raw`<p>Tuổi thọ 15 thiết bị (tháng): 114, 78, 96, 137, 78, 103, 126, 86, 99, 114, 72, 104, 73, 86, 117 (phân phối chuẩn). a) Ước lượng điểm μ, σ² và KTC 95% cho μ. b) Muốn độ tin cậy 95%, độ chính xác 5 tháng thì cần điều tra thêm bao nhiêu?</p>`,
      sol: String.raw`<p>a) \(\bar x\approx98{,}87\); \(s^2\approx401{,}55\), \(s\approx20{,}04\). \(t_{0{,}025}(14)=2{,}145\): \(\varepsilon=2{,}145\cdot\frac{20{,}04}{\sqrt{15}}\approx11{,}10\) ⇒ \(\mu\in(87{,}77;\ 109{,}96)\).</p><p>b) \(n'\ge\big(\frac{1{,}96\cdot20{,}04}5\big)^2\approx61{,}7\Rightarrow62\): thêm 47 thiết bị. (Nếu dùng t = 2,145: 74, thêm 59.)</p>` },
    { id: '7.3', tag: 'KTC μ + tìm γ', q: String.raw`<p>114 thí sinh, \(\bar x=5\), \(s=2{,}6\). a) KTC 99% cho điểm trung bình. b) Với sai số 0,35 thì độ tin cậy là bao nhiêu?</p>`,
      sol: String.raw`<p>a) \(\varepsilon=2{,}575\cdot\frac{2{,}6}{\sqrt{114}}\approx0{,}627\) ⇒ \((4{,}373;\ 5{,}627)\).</p><p>b) \(u=\frac{0{,}35\sqrt{114}}{2{,}6}\approx1{,}44\) ⇒ \(\gamma=2\Phi(1{,}44)=0{,}8502\).</p>` },
    { id: '7.4', tag: 'KTC p + tìm γ', q: String.raw`<p>Kiểm tra 100 hộp thấy 11 hộp xấu. a) KTC 99% cho tỉ lệ hộp xấu. b) Với sai số 4% thì độ tin cậy?</p>`,
      sol: String.raw`<p>a) \(f=0{,}11\), \(\varepsilon=2{,}575\sqrt{\frac{0{,}11\cdot0{,}89}{100}}\approx0{,}0806\) ⇒ \((0{,}0294;\ 0{,}1906)\).</p><p>b) \(u=\frac{0{,}04}{0{,}03129}\approx1{,}28\) ⇒ \(\gamma=2\Phi(1{,}28)\approx0{,}7994\).</p>` },
    { id: '7.5', tag: 'Student + χ²', q: String.raw`<p>Hai dự án, mỗi dự án 10 năm: Dự án 1: \(\bar x=13{,}2\), \(s^2=10{,}9\); Dự án 2: \(\bar x=14{,}6\), \(s^2=25{,}6\) (chuẩn). a) KTC 95% cho tỉ lệ thu hồi vốn trung bình. b) Ước lượng phương sai (95%).</p>`,
      sol: String.raw`<p>a) \(t_{0{,}025}(9)=2{,}262\). DA1: \(\varepsilon\approx2{,}36\) ⇒ \((10{,}84;\ 15{,}56)\). DA2: \(\varepsilon\approx3{,}62\) ⇒ \((10{,}98;\ 18{,}22)\).</p><p>b) \(\chi^2_{0{,}025}(9)=19{,}02\), \(\chi^2_{0{,}975}(9)=2{,}700\). DA1: \(\big(\frac{98{,}1}{19{,}02};\frac{98{,}1}{2{,}7}\big)=(5{,}16;\ 36{,}33)\). DA2: \((12{,}11;\ 85{,}33)\).</p>` },
    { id: '7.6', tag: 'Nhóm con + cỡ mẫu', q: String.raw`<p>Đường kính 100 chi tiết: 19,80–19,85: 3; 19,85–19,90: 5; 19,90–19,95: 16; 19,95–20,00: 28; 20,00–20,05: 23; 20,05–20,10: 14; 20,10–20,15: 7; 20,15–20,20: 4. Đạt chuẩn: 19,9 &lt; d ≤ 20,1. a) KTC 95% đường kính trung bình chi tiết đạt chuẩn. b) KTC 96% tỉ lệ đạt chuẩn. c) Muốn độ chính xác 5%, độ tin cậy 99% thì cần đo thêm bao nhiêu?</p>`,
      sol: String.raw`<p>a) Nhóm chuẩn \(n=81\), \(\bar x\approx19{,}9966\), \(s\approx0{,}05\); \(\varepsilon=1{,}96\cdot\frac{0{,}05}9\approx0{,}0109\) ⇒ \((19{,}9857;\ 20{,}0075)\).</p><p>b) \(f=0{,}81\), \(u=2{,}05\): \(\varepsilon\approx0{,}0804\) ⇒ \((0{,}7296;\ 0{,}8904)\).</p><p>c) \(n'\ge\frac{2{,}575^2\cdot0{,}81\cdot0{,}19}{0{,}05^2}\approx408{,}2\Rightarrow409\): thêm 309.</p>` },
    { id: '7.7', tag: 'Quy đổi tổng', q: String.raw`<p>Nhu cầu (kg/tháng) của 400 hộ: 0–1: 10; 1–2: 35; 2–3: 86; 3–4: 132; 4–5: 78; 5–6: 31; 6–7: 18; 7–8: 10. Khu vực có 4000 hộ. a) KTC 95% nhu cầu cả khu vực trong 1 năm. b) Muốn độ tin cậy 99%, độ chính xác 4,8 tấn thì khảo sát bao nhiêu hộ?</p>`,
      sol: String.raw`<p>\(\bar x=3{,}62\), \(s\approx1{,}446\). Hệ số \(4000\cdot12/1000=48\) (tấn).</p><p>a) \(\varepsilon_\mu=1{,}96\cdot\frac{1{,}446}{20}\approx0{,}1417\) ⇒ \(\varepsilon_T\approx6{,}80\) tấn; \(T\in(166{,}96;\ 180{,}56)\) tấn.</p><p>b) \(\varepsilon_\mu=4{,}8/48=0{,}1\) kg; \(n\ge\big(\frac{2{,}575\cdot1{,}446}{0{,}1}\big)^2\approx1386\) hộ.</p>` },
    { id: '7.8', tag: 'μ, σ², tìm ε', q: String.raw`<p>Thu nhập 100 người (triệu/tháng): 3–5: 2; 5–7: 5; 7–9: 8; 9–11: 12; 11–13: 17; 13–15: 16; 15–17: 24; 17–19: 16. a) KTC 95% cho μ. b) KTC 95% cho σ². c) Với độ tin cậy 99% thì độ chính xác bằng bao nhiêu?</p>`,
      sol: String.raw`<p>\(\bar x=13{,}22\), \(s^2\approx13{,}729\), \(s\approx3{,}705\).</p><p>a) \(\varepsilon\approx0{,}726\) ⇒ \((12{,}49;\ 13{,}95)\).</p><p>b) Bậc tự do 99 ≈ 100: \(\chi^2_{0{,}025}=129{,}6\), \(\chi^2_{0{,}975}=74{,}22\) ⇒ \((10{,}49;\ 18{,}31)\).</p><p>c) \(\varepsilon=2{,}575\cdot0{,}3705\approx0{,}954\).</p>` }
  ],
  gens: [
    {
      name: 'KTC μ – mẫu lớn', gen() {
        const n = R.pick([36, 49, 64, 100, 144, 196, 256, 400]), xb = R.step(10, 200, 0.5), s = +(xb * R.step(0.05, 0.3, 0.01)).toFixed(2), g = R.pick([0.9, 0.95, 0.96, 0.98, 0.99]);
        const u = S.uConf(g), eps = u * s / Math.sqrt(n);
        return {
          q: String.raw`<p>Điều tra ${n} sản phẩm thu được khối lượng trung bình \(\bar x=${F(xb)}\) g và độ lệch chuẩn mẫu hiệu chỉnh \(s=${F(s)}\) g. Ước lượng khối lượng trung bình của sản phẩm với độ tin cậy ${T(g * 100)}%: tính sai số \(\varepsilon\) và cận dưới, cận trên của khoảng tin cậy.</p>`,
          fields: [{ label: 'ε', ans: eps, tol: Math.max(eps * 0.01, 0.002) }, { label: 'cận dưới', ans: xb - eps, tol: Math.max(eps * 0.02, 0.003) }, { label: 'cận trên', ans: xb + eps, tol: Math.max(eps * 0.02, 0.003) }],
          sol: String.raw`<p>\(n=${n}\ge30\) ⇒ dùng phân phối chuẩn: \(\Phi(u_{\alpha/2})=${F(g / 2, 3)}\Rightarrow u_{\alpha/2}=${F(u, 3)}\).</p>\[\varepsilon=${F(u, 3)}\cdot\frac{${F(s)}}{\sqrt{${n}}}=${F(eps)}\]<p>\(\mu\in(${F(xb)}-${F(eps)};\ ${F(xb)}+${F(eps)})=(${F(xb - eps)};\ ${F(xb + eps)})\) g.</p>`
        };
      }
    },
    {
      name: 'KTC μ – Student', gen() {
        const n = R.int(8, 26), xb = R.step(20, 150, 0.1), s = +(xb * R.step(0.05, 0.25, 0.01)).toFixed(2), g = R.pick([0.95, 0.99, 0.9]);
        const a2 = { 0.95: 0.025, 0.99: 0.005, 0.9: 0.05 }[g], t = S.tCrit(a2, n - 1), eps = t * s / Math.sqrt(n);
        return {
          q: String.raw`<p>Đo ${n} mẫu vật (giả sử đại lượng đo có phân phối chuẩn) được \(\bar x=${F(xb)}\), \(s=${F(s)}\). Tìm khoảng tin cậy ${T(g * 100)}% cho giá trị trung bình: nhập giá trị tới hạn, sai số và hai cận.</p>`,
          fields: [{ label: 'giá trị tới hạn', ans: t, tol: 0.006 }, { label: 'ε', ans: eps, tol: Math.max(eps * 0.01, 0.002) }, { label: 'cận dưới', ans: xb - eps, tol: Math.max(eps * 0.02, 0.003) }, { label: 'cận trên', ans: xb + eps, tol: Math.max(eps * 0.02, 0.003) }],
          sol: String.raw`<p>\(n=${n}<30\), tổng thể chuẩn, chưa biết σ ⇒ Student, bậc tự do \(${n - 1}\): \(t_{${F(a2, 3)}}(${n - 1})=${F(t, 3, true)}\).</p>\[\varepsilon=${F(t, 3, true)}\cdot\frac{${F(s)}}{\sqrt{${n}}}=${F(eps)}\quad\Rightarrow\quad\mu\in(${F(xb - eps)};\ ${F(xb + eps)})\]`
        };
      }
    },
    {
      name: 'KTC tỉ lệ', gen() {
        const n = R.pick([100, 200, 300, 400, 500, 800]), f0 = R.step(0.05, 0.6, 0.01), m = Math.round(n * f0), f = m / n, g = R.pick([0.9, 0.95, 0.96, 0.99]);
        const u = S.uConf(g), eps = u * Math.sqrt(f * (1 - f) / n);
        return {
          q: String.raw`<p>Kiểm tra ngẫu nhiên ${n} sản phẩm thấy có ${m} phế phẩm. Ước lượng tỉ lệ phế phẩm với độ tin cậy ${T(g * 100)}%.</p>`,
          fields: [{ label: 'ε', ans: eps, tol: 0.0015 }, { label: 'cận dưới', ans: f - eps, tol: 0.002 }, { label: 'cận trên', ans: f + eps, tol: 0.002 }],
          sol: String.raw`<p>\(f=\frac{${m}}{${n}}=${F(f)}\), \(u_{\alpha/2}=${F(u, 3)}\).</p>\[\varepsilon=${F(u, 3)}\sqrt{\frac{${F(f)}\cdot${F(1 - f)}}{${n}}}=${F(eps)}\Rightarrow p\in(${F(f - eps)};\ ${F(f + eps)})\]`
        };
      }
    },
    {
      name: 'KTC phương sai (χ²)', gen() {
        const n = R.int(8, 31), s2 = R.step(2, 40, 0.1), k = n - 1;
        const cU = S.chi2Crit(0.025, k), cL = S.chi2Crit(0.975, k), lo = k * s2 / cU, hi = k * s2 / cL;
        return {
          q: String.raw`<p>Một mẫu ${n} quan sát từ tổng thể chuẩn có phương sai mẫu hiệu chỉnh \(s^2=${F(s2)}\). Tìm khoảng tin cậy 95% cho phương sai tổng thể \(\sigma^2\).</p>`,
          fields: [{ label: 'cận dưới', ans: lo, tol: lo * 0.012 }, { label: 'cận trên', ans: hi, tol: hi * 0.012 }],
          sol: String.raw`<p>Bậc tự do \(${k}\): \(\chi^2_{0{,}025}(${k})=${F(cU, 3)}\), \(\chi^2_{0{,}975}(${k})=${F(cL, 3)}\); \((n-1)s^2=${F(k * s2)}\).</p>\[\sigma^2\in\Big(\frac{${F(k * s2)}}{${F(cU, 3)}};\ \frac{${F(k * s2)}}{${F(cL, 3)}}\Big)=(${F(lo)};\ ${F(hi)})\]`
        };
      }
    },
    {
      name: 'Tìm độ tin cậy', gen() {
        const n = R.pick([64, 100, 121, 144, 225]), s = R.step(1, 10, 0.5), z = R.step(1, 2.4, 0.01), eps = +(z * s / Math.sqrt(n)).toFixed(2);
        const u = eps * Math.sqrt(n) / s, g = 2 * S.LapT(u);
        return {
          q: String.raw`<p>Mẫu ${n} quan sát có \(s=${F(s)}\). Khi ước lượng trung bình với sai số \(\varepsilon=${F(eps)}\) thì độ tin cậy bằng bao nhiêu?</p>`,
          fields: [{ label: 'u', ans: u, tol: 0.01 }, { label: 'γ', ans: g, tol: 0.003 }],
          sol: String.raw`<p>\(u_{\alpha/2}=\frac{\varepsilon\sqrt n}{s}=\frac{${F(eps)}\cdot${F(Math.sqrt(n))}}{${F(s)}}=${F(u, 3)}\approx${F(u, 2)}\).</p><p>\(\gamma=2\Phi(${F(u, 2)})=2\cdot${F(S.LapT(u), 4, true)}=${F(g)}\).</p>`
        };
      }
    },
    {
      name: 'Tìm cỡ mẫu', gen() {
        const kind = R.pick(['mu', 'p']), g = R.pick([0.95, 0.99, 0.9]), u = S.uConf(g), n0 = R.pick([50, 100]);
        if (kind === 'mu') {
          const s = R.step(2, 20, 0.5), e = +(s * R.step(0.1, 0.4, 0.05)).toFixed(2), need = Math.ceil((u * s / e) ** 2 - 1e-9);
          return {
            q: String.raw`<p>Từ một mẫu sơ bộ ${n0} quan sát có \(s=${F(s)}\). Muốn ước lượng trung bình với độ chính xác \(\varepsilon_0=${F(e)}\) và độ tin cậy ${T(g * 100)}% thì cần mẫu tối thiểu bao nhiêu quan sát? Cần điều tra thêm bao nhiêu?</p>`,
            fields: [{ label: "n'", ans: need, tol: 1 }, { label: 'thêm', ans: Math.max(0, need - n0), tol: 1 }],
            sol: String.raw`\[n'\ge\Big(\frac{u_{\alpha/2}s}{\varepsilon_0}\Big)^2=\Big(\frac{${F(u, 3)}\cdot${F(s)}}{${F(e)}}\Big)^2=${F((u * s / e) ** 2, 2)}\Rightarrow n'=${need}\]<p>Cần thêm \(${need}-${n0}=${Math.max(0, need - n0)}\) quan sát${need <= n0 ? ' (mẫu hiện có đã đủ)' : ''}.</p>`
          };
        }
        const f = R.step(0.1, 0.5, 0.05), e = R.pick([0.02, 0.03, 0.04, 0.05]), need = Math.ceil(u * u * f * (1 - f) / (e * e) - 1e-9);
        return {
          q: String.raw`<p>Mẫu sơ bộ ${n0} sản phẩm có tỉ lệ phế phẩm \(f=${F(f)}\). Muốn ước lượng tỉ lệ phế phẩm với độ chính xác ${T(e * 100)}% và độ tin cậy ${T(g * 100)}% thì cần kiểm tra tối thiểu bao nhiêu sản phẩm? Cần thêm bao nhiêu?</p>`,
          fields: [{ label: "n'", ans: need, tol: 1 }, { label: 'thêm', ans: Math.max(0, need - n0), tol: 1 }],
          sol: String.raw`\[n'\ge\frac{u_{\alpha/2}^2f(1-f)}{\varepsilon_0^2}=\frac{${F(u, 3)}^2\cdot${F(f)}\cdot${F(1 - f)}}{${F(e)}^2}=${F(u * u * f * (1 - f) / (e * e), 2)}\Rightarrow n'=${need}\]<p>Cần thêm \(${need}-${n0}=${need - n0}\).</p>`
        };
      }
    }
  ]
});

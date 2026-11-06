COURSE.chapters.push({
  id: 5, short: 'Luật số lớn & ĐLGH', title: 'Các định lý giới hạn và luật số lớn', when: 'Ngày 2 · Buổi chiều · ~3 giờ', isNew: true,
  intro: 'Chương bị thiếu trong tập bài tập – được biên soạn bổ sung (đồng thời đã thêm vào bt-xstk.typ). Đây là “cầu nối” giữa xác suất và thống kê: vì sao trung bình mẫu dần về kì vọng, vì sao ước lượng/kiểm định dùng phân phối chuẩn.',
  goals: [
    'Dùng bất đẳng thức Markov, Chebyshev để <b>đánh giá</b> xác suất khi chỉ biết E, V.',
    'Phát biểu và áp dụng luật số lớn Chebyshev, Bernoulli; tìm số phép thử cần thiết.',
    'Áp dụng định lý giới hạn trung tâm cho tổng / trung bình của nhiều biến độc lập.',
    'Xấp xỉ nhị thức bằng chuẩn (Moivre–Laplace địa phương & tích phân), biết khi nào dùng Poisson.'
  ],
  theory: String.raw`
<h3>1. Bất đẳng thức Markov</h3>
<div class="box"><p>Nếu \(X\ge0\) và \(a>0\):</p>\[P(X\ge a)\le\frac{E(X)}{a}\]</div>
<h3>2. Bất đẳng thức Chebyshev</h3>
<div class="box"><p>Với mọi \(\varepsilon>0\):</p>\[P(|X-E(X)|\ge\varepsilon)\le\frac{V(X)}{\varepsilon^2}\iff P(|X-E(X)|<\varepsilon)\ge1-\frac{V(X)}{\varepsilon^2}\]
<p>Đúng với <b>mọi</b> phân phối ⇒ cho cận “thận trọng”. Ví dụ \(\varepsilon=2\sigma\): xác suất lệch quá 2σ không vượt quá 25% (với phân phối chuẩn thực tế chỉ 4,56%).</p></div>
<h3>3. Luật số lớn</h3>
<div class="box"><p><b>Chebyshev:</b> \(X_1,\dots,X_n\) độc lập, cùng kì vọng \(\mu\), phương sai \(\sigma^2\) (hoặc bị chặn chung). Khi đó \(\overline X=\frac1n\sum X_i\xrightarrow{P}\mu\):</p>
\[P(|\overline X-\mu|<\varepsilon)\ge1-\frac{\sigma^2}{n\varepsilon^2}\xrightarrow[n\to\infty]{}1\]
<p><b>Bernoulli:</b> tần suất \(f=\frac mn\) của biến cố trong \(n\) phép thử độc lập hội tụ theo xác suất về \(p\):</p>
\[P(|f-p|<\varepsilon)\ge1-\frac{pq}{n\varepsilon^2}\ge1-\frac1{4n\varepsilon^2}\quad(\text{vì }pq\le\tfrac14)\]
<p>Ý nghĩa: cơ sở của việc <b>lấy trung bình nhiều lần đo</b> trong vật lí và dùng tần suất để ước lượng xác suất.</p></div>
<h3>4. Định lý giới hạn trung tâm (Lindeberg – Lévy)</h3>
<div class="box"><p>\(X_1,\dots,X_n\) độc lập, cùng phân phối, \(E=\mu\), \(V=\sigma^2\). Khi \(n\) đủ lớn (thường \(n\ge30\)):</p>
\[S_n=\sum X_i\approx N(n\mu,\ n\sigma^2),\qquad \overline X\approx N\Big(\mu,\ \frac{\sigma^2}n\Big)\]
\[P(a\le S_n\le b)\approx\Phi\Big(\frac{b-n\mu}{\sigma\sqrt n}\Big)-\Phi\Big(\frac{a-n\mu}{\sigma\sqrt n}\Big),\qquad P(|\overline X-\mu|<\varepsilon)\approx2\Phi\Big(\frac{\varepsilon\sqrt n}{\sigma}\Big)\]</div>
<h3>5. Định lý Moivre – Laplace</h3>
<div class="box"><p>\(X\sim B(n,p)\), \(n\) lớn, \(np\ge5\), \(nq\ge5\). Đặt \(\sigma=\sqrt{npq}\).</p>
<p><b>Địa phương:</b> \(P(X=k)\approx\dfrac1{\sqrt{npq}}\,\varphi\Big(\dfrac{k-np}{\sqrt{npq}}\Big)\), với \(\varphi(x)=\frac1{\sqrt{2\pi}}e^{-x^2/2}\) (hàm chẵn).</p>
<p><b>Tích phân:</b> \(P(k_1\le X\le k_2)\approx\Phi\Big(\dfrac{k_2-np}{\sqrt{npq}}\Big)-\Phi\Big(\dfrac{k_1-np}{\sqrt{npq}}\Big)\).</p>
<p><b>Tần suất:</b> \(P(|f-p|<\varepsilon)\approx2\Phi\Big(\varepsilon\sqrt{\dfrac n{pq}}\Big)\).</p>
<p class="muted">Hiệu chỉnh liên tục (chính xác hơn): thay \(k_1\to k_1-0{,}5\), \(k_2\to k_2+0{,}5\).</p></div>
<div class="key"><b>Chọn công cụ:</b> chỉ biết E, V và đề hỏi “đánh giá / ít nhất / không vượt quá” → Chebyshev (Markov). Tổng / trung bình nhiều biến độc lập → ĐLGH trung tâm. Nhị thức n lớn: \(np<5\) → Poisson; \(np\ge5,\ nq\ge5\) → Moivre–Laplace.</div>
<h3>6. Vài giá trị \(\varphi(x)\) hay dùng</h3>
<div class="box">${tbl([['x', '0', '0,5', '1', '1,25', '1,5', '2', '2,5', '3'], [String.raw`\(\varphi(x)\)`, '0,3989', '0,3521', '0,2420', '0,1826', '0,1295', '0,0540', '0,0175', '0,0044']])}</div>`,
  recipes: [
    ['Chỉ cho E(X) của biến không âm, hỏi “đánh giá P(X ≥ a)”', String.raw`Markov: \(P(X\ge a)\le E(X)/a\).`, '5.1'],
    ['Cho E, σ (không nói phân phối), hỏi “đánh giá xác suất X nằm trong khoảng đối xứng”', String.raw`Chebyshev: \(\ge1-\frac{\sigma^2}{\varepsilon^2}\), với \(\varepsilon\) = nửa độ dài khoảng.`, '5.2, 5.11'],
    ['“Đo n lần lấy trung bình… cần bao nhiêu lần”', String.raw`Chebyshev: \(1-\frac{\sigma^2}{n\varepsilon^2}\ge\gamma\Rightarrow n\ge\frac{\sigma^2}{(1-\gamma)\varepsilon^2}\). ĐLGH: \(n\ge\big(\frac{u\sigma}{\varepsilon}\big)^2\) với \(2\Phi(u)=\gamma\).`, '5.3'],
    ['“Tần suất lệch xác suất không quá ε … cần bao nhiêu phép thử” (p chưa biết)', String.raw`Bernoulli: \(n\ge\frac{1}{4(1-\gamma)\varepsilon^2}\). Moivre–Laplace: \(n\ge\frac{u^2}{4\varepsilon^2}\).`, '5.4, 5.10'],
    ['Nhị thức n lớn, hỏi “đúng k”', String.raw`Moivre–Laplace địa phương: \(\frac1\sigma\varphi\big(\frac{k-np}\sigma\big)\).`, '5.5'],
    ['Nhị thức n lớn, hỏi “từ k₁ đến k₂”, “ít nhất k”', String.raw`Moivre–Laplace tích phân; “từ k trở lên” \(\approx0{,}5-\Phi\big(\frac{k-np}\sigma\big)\).`, '5.6'],
    ['Tổng khối lượng / sai số / số đếm của nhiều đối tượng độc lập', String.raw`ĐLGH: \(S\approx N(n\mu,n\sigma^2)\). Đều \(U(a,b)\): \(\sigma^2=\frac{(b-a)^2}{12}\); Poisson: \(\sigma^2=\lambda\).`, '5.7, 5.8, 5.9, 5.12']
  ],
  traps: [
    String.raw`Chebyshev cho <b>cận</b> (≥ hoặc ≤), không phải giá trị gần đúng – viết đúng dấu bất đẳng thức trong kết luận.`,
    String.raw`Tổng n biến: phương sai là \(n\sigma^2\), độ lệch chuẩn là \(\sigma\sqrt n\) (<b>không</b> phải \(n\sigma\)).`,
    String.raw`Trung bình n biến: phương sai \(\sigma^2/n\), độ lệch chuẩn \(\sigma/\sqrt n\).`,
    String.raw`Moivre–Laplace địa phương có hệ số \(\frac1{\sqrt{npq}}\) đứng trước \(\varphi\) – hay bị quên.`,
    String.raw`Tìm cỡ mẫu luôn <b>làm tròn lên</b> (n = 270,6 ⇒ 271).`
  ],
  examples: [
    { id: '5.1', tag: 'Markov', q: String.raw`<p>Số hạt bụi trung bình trong 1 lít không khí là 50. Không biết phân phối, đánh giá xác suất trong 1 lít có từ 200 hạt trở lên.</p>`,
      sol: String.raw`<p>\(X\ge0\), \(E(X)=50\). Markov: \(P(X\ge200)\le\frac{50}{200}=0{,}25\).</p>` },
    { id: '5.2', tag: 'Chebyshev', q: String.raw`<p>Điện áp lưới X có \(E=220\) V, \(\sigma=4\) V. a) Dùng Chebyshev đánh giá \(P(210<X<230)\). b) Nếu X chuẩn thì xác suất đúng bằng bao nhiêu?</p>`,
      sol: String.raw`<p>a) \(\varepsilon=10\): \(P(|X-220|<10)\ge1-\frac{16}{100}=0{,}84\).</p><p>b) \(2\Phi(2{,}5)=0{,}9876\). Chebyshev thận trọng hơn vì đúng cho mọi phân phối.</p>` },
    { id: '5.3', tag: 'Số lần đo', q: String.raw`<p>Mỗi lần đo có \(\sigma=0{,}5\) mm, các lần đo độc lập; lấy trung bình n lần. Cần bao nhiêu lần để \(P(|\overline X-\mu|<0{,}2)\ge0{,}95\): a) theo Chebyshev; b) theo ĐLGH trung tâm?</p>`,
      sol: String.raw`<p>a) \(1-\frac{0{,}25}{0{,}04n}\ge0{,}95\Rightarrow n\ge125\).</p><p>b) \(2\Phi\big(\frac{0{,}2\sqrt n}{0{,}5}\big)\ge0{,}95\Rightarrow\frac{0{,}2\sqrt n}{0{,}5}\ge1{,}96\Rightarrow n\ge24{,}01\Rightarrow n=25\).</p>` },
    { id: '5.4', tag: 'Bernoulli', q: String.raw`<p>Dùng tần suất \(f\) để ước lượng xác suất ghi nhận \(p\) (chưa biết) của bộ đếm Geiger. Cần bao nhiêu hạt để \(P(|f-p|<0{,}05)\ge0{,}9\): a) theo luật số lớn Bernoulli; b) theo Moivre–Laplace?</p>`,
      sol: String.raw`<p>a) \(\frac1{4n\cdot0{,}0025}\le0{,}1\Rightarrow n\ge1000\).</p><p>b) \(2\Phi(2\cdot0{,}05\sqrt n)\ge0{,}9\Rightarrow0{,}1\sqrt n\ge1{,}645\Rightarrow n\ge270{,}6\Rightarrow n=271\).</p>` },
    { id: '5.5', tag: 'M–L địa phương', q: String.raw`<p>400 hạt nhân, mỗi hạt phân rã với xác suất 0,2 (độc lập). Tính gần đúng xác suất có a) đúng 80; b) đúng 90 hạt phân rã.</p>`,
      sol: String.raw`<p>\(np=80\), \(\sqrt{npq}=8\). a) \(\frac{\varphi(0)}8=\frac{0{,}3989}8\approx0{,}0499\). b) \(x=1{,}25\): \(\frac{0{,}1826}8\approx0{,}0228\). (Chính xác: 0,0498 và 0,0224.)</p>` },
    { id: '5.6', tag: 'M–L tích phân', q: String.raw`<p>Tỉ lệ linh kiện lỗi 10%, kiểm tra 400 linh kiện. Tính gần đúng xác suất số lỗi a) từ 30 đến 50; b) từ 50 trở lên.</p>`,
      sol: String.raw`<p>\(np=40\), \(\sigma=6\). a) \(2\Phi(1{,}67)=0{,}905\). b) \(0{,}5-\Phi(1{,}67)=0{,}0475\). (Có hiệu chỉnh liên tục: a) \(2\Phi(1{,}75)=0{,}9198\), sát giá trị đúng 0,9207.)</p>` },
    { id: '5.7', tag: 'ĐLGH – tổng', q: String.raw`<p>Thang máy tải 1000 kg; khối lượng mỗi người có kì vọng 65 kg, độ lệch chuẩn 10 kg, độc lập. 15 người vào thang, tính xác suất quá tải.</p>`,
      sol: String.raw`<p>\(E(S)=975\), \(\sigma(S)=10\sqrt{15}\approx38{,}73\). \(P(S>1000)\approx0{,}5-\Phi(0{,}65)=0{,}2578\).</p>` },
    { id: '5.8', tag: 'ĐLGH – sai số làm tròn', q: String.raw`<p>Cộng 100 số, mỗi số làm tròn đến hàng đơn vị; sai số làm tròn độc lập, đều trên \([-0{,}5;0{,}5]\). Tính xác suất sai số tổng có trị tuyệt đối nhỏ hơn 3.</p>`,
      sol: String.raw`<p>\(V(X_i)=\frac1{12}\), \(\sigma(S)=\sqrt{100/12}\approx2{,}887\). \(P(|S|<3)\approx2\Phi(1{,}04)=0{,}7016\).</p>` },
    { id: '5.9', tag: 'ĐLGH – Poisson', q: String.raw`<p>Số photon mỗi giây \(\sim P(4)\), độc lập. Tính xác suất trong 100 giây đếm được từ 380 đến 420 photon.</p>`,
      sol: String.raw`<p>\(E(S)=V(S)=400\), \(\sigma=20\). \(P\approx2\Phi(1)=0{,}6826\).</p>` },
    { id: '5.10', tag: 'Cỡ mẫu tỉ lệ', q: String.raw`<p>Cần khảo sát bao nhiêu sinh viên để \(|f-p|<0{,}03\) với xác suất ≥ 0,95 (p chưa biết): a) theo Chebyshev; b) theo Moivre–Laplace?</p>`,
      sol: String.raw`<p>a) \(n\ge\frac1{4\cdot0{,}0009\cdot0{,}05}\approx5555{,}6\Rightarrow5556\). b) \(n\ge\frac{1{,}96^2\cdot0{,}25}{0{,}0009}\approx1067{,}1\Rightarrow1068\).</p>` },
    { id: '5.11', tag: 'Chebyshev rời rạc', q: String.raw`${tbl([['X', 1, 2, 3, 4, 5], ['P', '0,1', '0,2', '0,4', '0,2', '0,1']])}<p>Dùng Chebyshev đánh giá \(P(|X-E(X)|<2)\), so sánh với giá trị đúng.</p>`,
      sol: String.raw`<p>\(E=3\), \(V=1{,}2\). Chebyshev: \(\ge1-\frac{1{,}2}4=0{,}7\). Đúng: \(P(2\le X\le4)=0{,}8\).</p>` },
    { id: '5.12*', tag: 'Bước ngẫu nhiên', q: String.raw`<p>Phân tử đi 10 000 bước ±1 nm (đồng xác suất, độc lập). Tính xác suất sau đó nó cách vị trí đầu a) không quá 100 nm; b) không quá 200 nm.</p>`,
      sol: String.raw`<p>\(E(S)=0\), \(V(S)=10\,000\), \(\sigma=100\). a) \(2\Phi(1)=0{,}6826\). b) \(2\Phi(2)=0{,}9544\). Độ dịch chuyển điển hình \(\propto\sqrt n\) – cơ sở của định luật khuếch tán \(\langle x^2\rangle\propto t\).</p>` }
  ],
  gens: [
    {
      name: 'Bất đẳng thức Chebyshev', gen() {
        const mu = R.pick([20, 50, 100, 220, 500]), sg = R.pick([2, 3, 4, 5]), k = R.step(1.5, 3, 0.5), eps = k * sg;
        const bound = 1 - 1 / (k * k), exact = 2 * S.LapT(k);
        return {
          q: String.raw`<p>Đại lượng X có \(E(X)=${mu}\), \(\sigma(X)=${sg}\). a) Dùng bất đẳng thức Chebyshev, đánh giá (cận dưới) xác suất \(P(${F(mu - eps)}<X<${F(mu + eps)})\). b) Nếu X có phân phối chuẩn thì xác suất này bằng bao nhiêu?</p>`,
          fields: [{ label: 'a) cận dưới', ans: bound, tol: 0.002 }, { label: 'b)', ans: exact, tol: 0.003 }],
          sol: String.raw`<p>a) \(\varepsilon=${F(eps)}\): \(P(|X-${mu}|<${F(eps)})\ge1-\frac{${sg * sg}}{${F(eps * eps)}}=${F(bound)}\).</p><p>b) \(2\Phi\big(\frac{${F(eps)}}{${sg}}\big)=2\Phi(${F(k)})=2\cdot${F(S.LapT(k), 4, true)}=${F(exact)}\).</p>`
        };
      }
    },
    {
      name: 'ĐLGH – tổng nhiều biến', gen() {
        const n = R.pick([16, 20, 25, 36, 49, 64, 100]), mu = R.pick([50, 60, 65, 70]), sg = R.pick([5, 8, 10, 12]);
        const ES = n * mu, sS = sg * Math.sqrt(n), z = R.step(0.3, 1.8, 0.1), cap = Math.round(ES + z * sS);
        const zz = (cap - ES) / sS, P = 0.5 - S.LapT(zz);
        return {
          q: String.raw`<p>Một xe tải chở ${n} kiện hàng. Khối lượng mỗi kiện là biến ngẫu nhiên độc lập có kì vọng ${mu} kg, độ lệch chuẩn ${sg} kg. Tải trọng cho phép là ${cap} kg. Tính gần đúng xác suất xe bị quá tải.</p>`,
          fields: [{ label: 'P(quá tải)', ans: P, tol: 0.004 }],
          sol: String.raw`<p>\(E(S)=${n}\cdot${mu}=${ES}\), \(\sigma(S)=${sg}\sqrt{${n}}=${F(sS)}\). Theo ĐLGH trung tâm \(S\approx N(${ES};\ ${F(sS)}^2)\):</p>\[P(S>${cap})\approx0{,}5-\Phi\Big(\frac{${cap}-${ES}}{${F(sS)}}\Big)=0{,}5-\Phi(${F(zz, 2)})=0{,}5-${F(S.LapT(zz), 4, true)}=${F(P)}\]`
        };
      }
    },
    {
      name: 'ĐLGH – trung bình mẫu', gen() {
        const sg = R.pick([0.5, 1, 2, 3]), n = R.pick([25, 36, 49, 64, 100]), eps = R.pick([0.1, 0.2, 0.3, 0.5]) * sg;
        const z = eps * Math.sqrt(n) / sg, P = 2 * S.LapT(z);
        return {
          q: String.raw`<p>Mỗi lần đo một đại lượng có sai số ngẫu nhiên với độ lệch chuẩn ${T(sg)} (đơn vị), các lần đo độc lập, không có sai số hệ thống. Đo ${n} lần và lấy trung bình. Tính xác suất trung bình đo lệch khỏi giá trị thật không quá ${T(eps)}.</p>`,
          fields: [{ label: 'P', ans: P, tol: 0.003 }],
          sol: String.raw`<p>\(\overline X\approx N\big(\mu,\frac{\sigma^2}n\big)\), \(\sigma(\overline X)=\frac{${F(sg)}}{\sqrt{${n}}}=${F(sg / Math.sqrt(n))}\).</p>\[P(|\overline X-\mu|\le${F(eps)})\approx2\Phi\Big(\frac{${F(eps)}\sqrt{${n}}}{${F(sg)}}\Big)=2\Phi(${F(z, 2)})=${F(P)}\]`
        };
      }
    },
    {
      name: 'Moivre–Laplace tích phân', gen() {
        const n = R.pick([100, 200, 300, 400, 500, 600]), p = R.pick([0.1, 0.2, 0.25, 0.3, 0.4, 0.5]);
        const np = n * p, sd = Math.sqrt(n * p * (1 - p)), d1 = Math.round(R.step(0.5, 1.5, 0.25) * sd), d2 = Math.round(R.step(0.5, 2, 0.25) * sd);
        const k1 = Math.round(np - d1), k2 = Math.round(np + d2), z1 = (k1 - np) / sd, z2 = (k2 - np) / sd;
        const P = S.LapT(z2) - S.LapT(z1), kk = Math.round(np + R.step(0.5, 1.5, 0.25) * sd), zk = (kk - np) / sd, Pk = 0.5 - S.LapT(zk);
        return {
          q: String.raw`<p>Tỉ lệ sản phẩm loại A là ${T(p)}. Kiểm tra ${n} sản phẩm. Tính gần đúng xác suất số sản phẩm loại A: a) từ ${k1} đến ${k2}; b) từ ${kk} trở lên.</p>`,
          fields: [{ label: 'a)', ans: P, tol: 0.004 }, { label: 'b)', ans: Pk, tol: 0.004 }],
          sol: String.raw`<p>\(X\sim B(${n};${F(p)})\), \(np=${F(np)}\), \(\sqrt{npq}=${F(sd)}\) ⇒ Moivre–Laplace.</p><p>a) \(\Phi\big(\frac{${k2}-${F(np)}}{${F(sd)}}\big)-\Phi\big(\frac{${k1}-${F(np)}}{${F(sd)}}\big)=\Phi(${F(z2, 2)})+\Phi(${F(-z1, 2)})=${F(S.LapT(z2), 4, true)}+${F(-S.LapT(z1), 4, true)}=${F(P)}\).</p><p>b) \(0{,}5-\Phi(${F(zk, 2)})=0{,}5-${F(S.LapT(zk), 4, true)}=${F(Pk)}\).</p>`
        };
      }
    },
    {
      name: 'Moivre–Laplace địa phương', gen() {
        const n = R.pick([100, 400, 900, 1600]), p = R.pick([0.2, 0.5, 0.1, 0.36]);
        const np = n * p, sd = Math.sqrt(n * p * (1 - p)), k = Math.round(np + R.pick([0, 0.5, 1, 1.5, -1]) * sd);
        const x = (k - np) / sd, xr = Math.round(x * 100) / 100, P = S.phi(xr) / sd;
        return {
          q: String.raw`<p>Xác suất một hạt nhân phân rã trong thời gian quan sát là ${T(p)}; mẫu có ${n} hạt nhân phân rã độc lập. Tính gần đúng xác suất có đúng ${k} hạt nhân phân rã.</p>`,
          fields: [{ label: 'P', ans: P, tol: Math.max(P * 0.02, 0.0005) }],
          sol: String.raw`<p>\(np=${F(np)}\), \(\sqrt{npq}=${F(sd)}\), \(x=\frac{${k}-${F(np)}}{${F(sd)}}=${F(xr, 2)}\), \(\varphi(${F(xr, 2)})\approx${F(S.phi(xr), 4, true)}\).</p>\[P(X=${k})\approx\frac{${F(S.phi(xr), 4, true)}}{${F(sd)}}\approx${F(P, 5)}\]<p class="muted">Giá trị chính xác (nhị thức): ${T(S.binom(n, p, k), 5)}.</p>`
        };
      }
    },
    {
      name: 'Số phép thử cần thiết', gen() {
        const eps = R.pick([0.02, 0.03, 0.04, 0.05]), g = R.pick([0.9, 0.95, 0.99]), u = S.uConf(g);
        const nC = Math.ceil(1 / (4 * (1 - g) * eps * eps) - 1e-9), nM = Math.ceil(u * u / (4 * eps * eps) - 1e-9);
        return {
          q: String.raw`<p>Dùng tần suất \(f\) để ước lượng xác suất \(p\) (chưa biết) sao cho \(|f-p|<${F(eps)}\) với xác suất không nhỏ hơn ${T(g)}. Tìm số phép thử tối thiểu: a) theo bất đẳng thức Chebyshev (luật số lớn Bernoulli); b) theo định lý Moivre–Laplace.</p>`,
          fields: [{ label: 'a) n', ans: nC, tol: 1 }, { label: 'b) n', ans: nM, tol: 2 }],
          sol: String.raw`<p>Dùng \(pq\le\frac14\).</p><p>a) \(1-\frac1{4n\varepsilon^2}\ge${F(g)}\Rightarrow n\ge\frac1{4\cdot${F(eps)}^2\cdot${F(1 - g)}}=${F(1 / (4 * (1 - g) * eps * eps), 2)}\Rightarrow n=${nC}\).</p><p>b) \(2\Phi(2\varepsilon\sqrt n)\ge${F(g)}\Rightarrow2\varepsilon\sqrt n\ge${F(u, 3)}\Rightarrow n\ge\frac{${F(u, 3)}^2}{4\cdot${F(eps)}^2}=${F(u * u / (4 * eps * eps), 2)}\Rightarrow n=${nM}\).</p>`
        };
      }
    }
  ]
});

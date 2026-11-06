function _jointTable(xs, ys, M, fmt) {
  fmt = fmt || (v => T(v, 4));
  const rows = [[String.raw`X \ Y`, ...ys]];
  xs.forEach((x, i) => rows.push([x, ...M[i].map(fmt)]));
  return tbl(rows);
}
function _randJoint() {
  // 2 x 3, bội của 0,05; 40% trường hợp tạo bảng độc lập
  if (Math.random() < 0.4) {
    const px = R.pick([[0.2, 0.8], [0.4, 0.6], [0.5, 0.5], [0.3, 0.7]]), py = R.pick([[0.2, 0.3, 0.5], [0.1, 0.4, 0.5], [0.2, 0.4, 0.4], [0.3, 0.3, 0.4], [0.1, 0.6, 0.3]]);
    return px.map(a => py.map(b => +(a * b).toFixed(4)));
  }
  const p = R.parts(6, 20, 1).map(v => v * 0.05);
  return [p.slice(0, 3).map(v => +v.toFixed(2)), p.slice(3).map(v => +v.toFixed(2))];
}
COURSE.chapters.push({
  id: 3, short: 'BNN hai chiều', title: 'Biến ngẫu nhiên hai chiều', when: 'Ngày 1 · Buổi tối · ~2 giờ',
  intro: 'Bảng phân phối đồng thời, phân phối biên, phân phối có điều kiện và kiểm tra tính độc lập. Chương ngắn, kỹ thuật lặp lại – là “nguyên liệu” cho Cov và hệ số tương quan ở chương 4.',
  goals: [
    'Lập bảng đồng thời cho bài “chọn 2 vật từ hộp 3 loại”.',
    'Tính phân phối biên bằng cộng hàng / cột, phân phối điều kiện bằng chia cho biên.',
    'Kết luận độc lập / không độc lập đúng quy trình.',
    'Tìm phân phối của \\(Z=g(X,Y)\\) như \\(X+Y\\), \\(XY\\).'
  ],
  theory: String.raw`
<h3>1. Bảng phân phối đồng thời</h3>
<div class="box"><p>\(p_{ij}=P(X=x_i,Y=y_j)\ge0\), \(\sum_i\sum_j p_{ij}=1\).</p>
\[P(X=x_i)=\sum_j p_{ij}\ (\text{cộng hàng}),\qquad P(Y=y_j)=\sum_i p_{ij}\ (\text{cộng cột})\]
\[P(Y=y_j|X=x_i)=\frac{p_{ij}}{P(X=x_i)}\]</div>
<h3>2. Biến liên tục hai chiều</h3>
<div class="box">\[\iint f(x,y)\,dx\,dy=1,\quad f_X(x)=\int_{-\infty}^{+\infty}f(x,y)\,dy,\quad f_Y(y)=\int_{-\infty}^{+\infty}f(x,y)\,dx\]
<p>\(P((X,Y)\in D)=\iint_D f(x,y)\,dx\,dy\).</p></div>
<h3>3. Độc lập</h3>
<div class="box"><p>Rời rạc: \(p_{ij}=P(X=x_i)P(Y=y_j)\) với <b>mọi</b> ô. Liên tục: \(f(x,y)=f_X(x)f_Y(y)\).</p></div>
<div class="key">Để chứng minh <b>không độc lập</b>, chỉ cần chỉ ra <b>một ô</b> sai đẳng thức (thường là ô có \(p_{ij}=0\)). Để chứng minh <b>độc lập</b>, phải kiểm tra <b>tất cả</b> các ô.</div>
<h3>4. Hàm của hai biến</h3>
<div class="box">\[P(Z=z_k)=\sum_{g(x_i,y_j)=z_k}p_{ij}\]<p>Tính \(g\) tại từng ô, gom các ô cùng giá trị.</p></div>`,
  recipes: [
    ['Hộp có 3 loại, chọn 2 (hoặc 3) vật; X, Y = số vật loại 1, loại 2', String.raw`\(P(X=x,Y=y)=\frac{C_{a}^{x}C_{b}^{y}C_{c}^{k-x-y}}{C_{N}^{k}}\), ô có \(x+y>k\) bằng 0.`, '3.1, 3.2, 4.9'],
    ['“Tìm phân phối biên”', 'Cộng theo hàng (cho X), theo cột (cho Y); viết thêm cột/hàng tổng vào bảng.', '3.5a, 3.6a'],
    ['“Phân phối của Y nếu biết X = x”', 'Lấy hàng X = x chia cho tổng hàng đó.', '3.1b, 4.9c'],
    ['“X, Y có độc lập không?”', String.raw`Tính biên, so \(p_{ij}\) với tích biên. Một ô sai ⇒ không độc lập.`, '3.5b, 3.6a, 3.7'],
    [String.raw`Hàm mật độ \(f(x,y)\) cho trước, tìm \(f_X\)`, String.raw`Tích phân theo \(y\) trên miền \(f\ne0\); coi \(x\) là hằng số.`, '3.3, 3.4'],
    [String.raw`“Lập bảng phân phối của \(Z=X+Y\) / \(XY\)”`, 'Tính z cho từng ô, gom các ô cùng giá trị z rồi cộng xác suất.', '3.5c, 3.6b']
  ],
  traps: [
    String.raw`Quên các ô bằng 0 (chọn 2 vật thì \(X+Y\le2\)).`,
    String.raw`Phân phối điều kiện phải chia cho <b>biên</b> \(P(X=x)\), không chia cho 1.`,
    String.raw`Bài liên tục: \(f_X(x)\) phải ghi rõ cả miền \(f_X=0\).`,
    String.raw`Kiểm tra độc lập liên tục: \(f(x,y)=x+y\) không tách được thành tích ⇒ không độc lập; chỉ ra một điểm cụ thể để thuyết phục.`
  ],
  examples: [
    { id: '3.1', tag: 'Bảng đồng thời', q: String.raw`<p>12 thùng nước mắm: 5 loại 1, 4 loại 2, 3 loại 3. Lấy 2 thùng; X, Y = số thùng loại 1, loại 2. a) Bảng phân phối của (X, Y). b) Phân phối số thùng loại 2 khi có 1 thùng loại 1.</p>`,
      sol: String.raw`<p>\(P(x,y)=\frac{C_5^xC_4^yC_3^{2-x-y}}{66}\):</p>${tbl([[String.raw`X \ Y`, 0, 1, 2, 'P(X)'], [0, '3/66', '12/66', '6/66', '21/66'], [1, '15/66', '20/66', 0, '35/66'], [2, '10/66', 0, 0, '10/66'], ['P(Y)', '28/66', '32/66', '6/66', 1]])}<p>b) \(P(Y=0|X=1)=\frac{15}{35}=\frac37\), \(P(Y=1|X=1)=\frac47\).</p>` },
    { id: '3.2', tag: 'Bảng đồng thời', q: String.raw`<p>10 hộp trà: 2 Olong, 5 trà xanh, 3 trà đen. Lấy 2 hộp; X = số hộp trà đen, Y = số hộp trà xanh. Lập bảng phân phối (X, Y).</p>`,
      sol: String.raw`<p>\(P(x,y)=\frac{C_3^xC_5^yC_2^{2-x-y}}{45}\):</p>${tbl([[String.raw`X \ Y`, 0, 1, 2], [0, '1/45', '10/45', '10/45'], [1, '6/45', '15/45', 0], [2, '3/45', 0, 0]])}` },
    { id: '3.3', tag: 'Mật độ biên', q: String.raw`<p>\(f(x,y)=xe^{-x(1+y)}\) với \(x,y>0\). Tìm \(f_X(x)\).</p>`,
      sol: String.raw`<p>Với \(x>0\): \(f_X(x)=xe^{-x}\int_0^\infty e^{-xy}dy=xe^{-x}\cdot\frac1x=e^{-x}\); \(f_X=0\) khi \(x\le0\). (Phân phối mũ \(\lambda=1\).)</p>` },
    { id: '3.4', tag: 'Độc lập (liên tục)', q: String.raw`<p>\(f(x,y)=e^{-(x+y)}\), \(x,y>0\). a) Tìm \(f_X, f_Y\). b) X, Y có độc lập?</p>`,
      sol: String.raw`<p>a) \(f_X(x)=e^{-x}\ (x>0)\), \(f_Y(y)=e^{-y}\ (y>0)\). b) \(f_Xf_Y=e^{-(x+y)}=f(x,y)\) mọi \((x,y)\) ⇒ độc lập.</p>` },
    { id: '3.5', tag: 'Biên, độc lập, Z = XY', q: String.raw`${'<p>Bảng đồng thời:</p>' + tbl([[String.raw`X \ Y`, 1, 2, 3], [1, '0,12', '0,15', '0,03'], [2, '0,28', '0,35', '0,07']])}<p>a) Phân phối biên. b) Chứng minh X, Y độc lập. c) Phân phối của \(Z=XY\).</p>`,
      sol: String.raw`<p>a) \(P(X)\): 0,3; 0,7. \(P(Y)\): 0,4; 0,5; 0,1.</p><p>b) Cả 6 ô đều bằng tích biên (vd \(0{,}12=0{,}3\cdot0{,}4\)) ⇒ độc lập.</p><p>c) \(Z\): 1 (0,12); 2 (0,15+0,28 = 0,43); 3 (0,03); 4 (0,35); 6 (0,07).</p>` },
    { id: '3.6', tag: 'Độc lập, Z = X+Y', q: String.raw`${'<p>Lãi suất X, Y (%):</p>' + tbl([[String.raw`X \ Y`, -2, 5, 10], [-1, '0,10', '0,15', '0,10'], [4, '0,05', '0,20', '0,10'], [8, '0,10', '0,15', '0,05']])}<p>a) X, Y có độc lập? b) Phân phối của \(T=X+Y\).</p>`,
      sol: String.raw`<p>a) \(P(X=-1)=0{,}35\), \(P(Y=-2)=0{,}25\); \(0{,}35\cdot0{,}25=0{,}0875\ne0{,}10\) ⇒ không độc lập.</p><p>b) T: −3 (0,10); 2 (0,05); 4 (0,15); 6 (0,10); 9 (0,10+0,20 = 0,30); 13 (0,15); 14 (0,10); 18 (0,05).</p>` },
    { id: '3.7', tag: 'Độc lập (liên tục)', q: String.raw`<p>\(f(x,y)=x+y\) trên \((0,1)^2\). X, Y có độc lập?</p>`,
      sol: String.raw`<p>\(f_X(x)=x+\frac12\), \(f_Y(y)=y+\frac12\). Tại \((0{,}2;0{,}2)\): \(f=0{,}4\) nhưng \(f_Xf_Y=0{,}49\) ⇒ không độc lập.</p>` }
  ],
  gens: [
    {
      name: 'Biên, điều kiện, độc lập', gen() {
        const xs = R.pick([[0, 1], [1, 2], [10, 20]]), ys = R.pick([[1, 2, 3], [0, 1, 2], [-1, 0, 2]]);
        const M = _randJoint(); const px = M.map(r => r.reduce((a, b) => a + b, 0)), py = [0, 1, 2].map(j => M[0][j] + M[1][j]);
        let indep = true; for (let i = 0; i < 2; i++) for (let j = 0; j < 3; j++) if (Math.abs(M[i][j] - px[i] * py[j]) > 1e-9) indep = false;
        const i = R.int(0, 1), j = R.int(0, 2), cond = M[i][j] / px[i];
        return {
          q: String.raw`<p>Cho bảng phân phối đồng thời của \((X,Y)\):</p>${_jointTable(xs, ys, M)}<p>a) Tính \(P(X=${xs[1]})\) và \(P(Y=${ys[j]})\). b) Tính \(P(Y=${ys[j]}\,|\,X=${xs[i]})\). c) X và Y có độc lập không?</p>`,
          fields: [{ label: `a) P(X=${xs[1]})`, ans: px[1], tol: 0.001 }, { label: `a) P(Y=${ys[j]})`, ans: py[j], tol: 0.001 }, { label: 'b)', ans: cond }, { label: 'c)', choices: ['Độc lập', 'Không độc lập'], ans: indep ? 0 : 1 }],
          sol: String.raw`<p>a) Cộng hàng: \(P(X=${xs[1]})=${M[1].map(v => F(v)).join('+')}=${F(px[1])}\). Cộng cột: \(P(Y=${ys[j]})=${F(M[0][j])}+${F(M[1][j])}=${F(py[j])}\).</p><p>b) \(P(Y=${ys[j]}|X=${xs[i]})=\dfrac{${F(M[i][j])}}{${F(px[i])}}\approx${F(cond)}\).</p><p>c) ${indep ? String.raw`Mọi ô đều có \(p_{ij}=P(X=x_i)P(Y=y_j)\) (vd \(${F(M[0][0])}=${F(px[0])}\cdot${F(py[0])}\)) ⇒ <b>độc lập</b>.` : (() => { let a = 0, b = 0; outer: for (a = 0; a < 2; a++) for (b = 0; b < 3; b++) if (Math.abs(M[a][b] - px[a] * py[b]) > 1e-9) break outer; return String.raw`Ô \((${xs[a]},${ys[b]})\): \(P(X=${xs[a]})P(Y=${ys[b]})=${F(px[a])}\cdot${F(py[b])}=${F(px[a] * py[b])}\ne${F(M[a][b])}\) ⇒ <b>không độc lập</b>.`; })()}</p>`
        };
      }
    },
    {
      name: 'Chọn 2 vật từ hộp 3 loại', gen() {
        const a = R.int(2, 6), b = R.int(2, 6), c = R.int(2, 5), N = a + b + c, tot = S.C(N, 2);
        const p11 = a * b / tot, p01 = b * c / tot, pX0 = S.C(b + c, 2) / tot, cond = p01 / pX0;
        return {
          q: String.raw`<p>Hộp có ${a} bi đỏ, ${b} bi xanh và ${c} bi vàng. Lấy ngẫu nhiên 2 bi. Gọi X, Y lần lượt là số bi đỏ, số bi xanh lấy được. Tính: a) \(P(X=1,Y=1)\); b) \(P(X=0)\); c) \(P(Y=1\,|\,X=0)\).</p>`,
          fields: [{ label: 'a)', ans: p11 }, { label: 'b)', ans: pX0 }, { label: 'c)', ans: cond }],
          sol: String.raw`<p>\(|\Omega|=C_{${N}}^2=${tot}\), \(P(X=x,Y=y)=\frac{C_{${a}}^xC_{${b}}^yC_{${c}}^{2-x-y}}{${tot}}\).</p><p>a) \(\frac{${a}\cdot${b}}{${tot}}\approx${F(p11)}\). b) Không có bi đỏ: \(\frac{C_{${b + c}}^2}{${tot}}=\frac{${S.C(b + c, 2)}}{${tot}}\approx${F(pX0)}\).</p><p>c) \(P(X=0,Y=1)=\frac{${b}\cdot${c}}{${tot}}\) ⇒ \(P(Y=1|X=0)=\frac{${b * c}}{${S.C(b + c, 2)}}\approx${F(cond)}\).</p>`
        };
      }
    },
    {
      name: 'Phân phối của X + Y, XY', gen() {
        const xs = R.pick([[0, 1], [1, 2]]), ys = R.pick([[0, 1, 2], [1, 2, 3]]);
        const M = _randJoint();
        const sum = {}, prod = {};
        xs.forEach((x, i) => ys.forEach((y, j) => { sum[x + y] = (sum[x + y] || 0) + M[i][j]; prod[x * y] = (prod[x * y] || 0) + M[i][j]; }));
        const cnt = {}; xs.forEach(x => ys.forEach(y => { cnt[x + y] = (cnt[x + y] || 0) + 1; }));
        const zs = Object.keys(cnt).map(Number).filter(z => cnt[z] >= 2);
        const z = R.pick(zs.length ? zs : Object.keys(sum).map(Number));
        const w = R.pick(Object.keys(prod).map(Number));
        return {
          q: String.raw`<p>Cho bảng phân phối đồng thời:</p>${_jointTable(xs, ys, M)}<p>Tính \(P(X+Y=${z})\) và \(P(XY=${w})\).</p>`,
          fields: [{ label: `P(X+Y=${z})`, ans: sum[z], tol: 0.001 }, { label: `P(XY=${w})`, ans: prod[w], tol: 0.001 }],
          sol: String.raw`<p>Gom các ô có \(x+y=${z}\): ${xs.flatMap((x, i) => ys.map((y, j) => x + y === z ? String.raw`\((${x},${y})\)` : null)).filter(Boolean).join(', ')} ⇒ \(P=${F(sum[z])}\).</p><p>Gom các ô có \(xy=${w}\): ${xs.flatMap((x, i) => ys.map((y, j) => x * y === w ? String.raw`\((${x},${y})\)` : null)).filter(Boolean).join(', ')} ⇒ \(P=${F(prod[w])}\).</p>`
        };
      }
    },
    {
      name: 'Mật độ hai chiều', gen() {
        const a = R.int(1, 3), b = R.int(1, 3), c = R.step(0.5, a, 0.5), d = R.step(0.5, b, 0.5);
        const k = 4 / (a * a * b * b), P = (c * c) / (a * a) * (d * d) / (b * b);
        return {
          q: String.raw`<p>\((X,Y)\) có hàm mật độ \(f(x,y)=k\,xy\) trên hình chữ nhật \(0\le x\le${a},\ 0\le y\le${b}\) (bằng 0 ngoài). a) Tìm \(k\). b) Tính \(P(X\le${T(c)},\ Y\le${T(d)})\). c) X, Y có độc lập không?</p>`,
          fields: [{ label: 'a) k', ans: k, tol: Math.max(k * 0.005, 0.0005) }, { label: 'b)', ans: P }, { label: 'c)', choices: ['Độc lập', 'Không độc lập'], ans: 0 }],
          sol: String.raw`<p>a) \(k\int_0^{${a}}x\,dx\int_0^{${b}}y\,dy=k\cdot\frac{${a * a}}2\cdot\frac{${b * b}}2=1\Rightarrow k=\frac4{${a * a * b * b}}\approx${F(k)}\).</p><p>b) \(k\cdot\frac{${F(c)}^2}2\cdot\frac{${F(d)}^2}2=\big(\frac{${F(c)}}{${a}}\big)^2\big(\frac{${F(d)}}{${b}}\big)^2\approx${F(P)}\).</p><p>c) \(f_X(x)=\frac{2x}{${a * a}}\), \(f_Y(y)=\frac{2y}{${b * b}}\), \(f_Xf_Y=\frac{4xy}{${a * a * b * b}}=f(x,y)\) ⇒ độc lập.</p>`
        };
      }
    }
  ]
});

// Trang công cụ: tra bảng, máy tính thống kê – dùng để tự kiểm tra kết quả khi luyện.
window.pageTools = function (main, math) {
  const TB = window.TABLES;
  const nums = s => String(s).split(/[\s;]+/).map(x => x.trim()).filter(Boolean).map(x => +x.replace(',', '.')).filter(x => isFinite(x));
  const num = s => +String(s).trim().replace(',', '.');

  main.innerHTML = `<header class="chhead"><h1>Công cụ & bảng tra</h1>
  <p class="lead">Dùng để <b>kiểm tra lại</b> kết quả sau khi đã tự tính tay – trong phòng thi bạn chỉ có máy tính cầm tay và bảng tra, nên hãy luyện tra bảng thủ công trước.</p></header>
  <div class="tools">
    <section class="card tool"><h3>Hàm Laplace \\(\\Phi(z)\\)</h3>
      <label>z = <input id="tz" value="1,96"></label><div class="out" id="oz"></div>
      <label>Tra ngược: \\(\\Phi(u)\\) = <input id="tphi" value="0,475"></label><div class="out" id="ophi"></div>
      <label>Độ tin cậy \\(\\gamma\\) = <input id="tg" value="0,95"></label><div class="out" id="og"></div></section>
    <section class="card tool"><h3>Student \\(t_\\alpha(n)\\)</h3>
      <label>Bậc tự do n = <input id="tn" value="14"></label><label>\\(\\alpha\\) (một phía) = <input id="ta" value="0,025"></label><div class="out" id="ot"></div>
      <p class="hint">Khoảng tin cậy / kiểm định hai phía mức \\(\\alpha\\) thì tra cột \\(\\alpha/2\\).</p></section>
    <section class="card tool"><h3>Chi-bình phương \\(\\chi^2_\\alpha(n)\\)</h3>
      <label>Bậc tự do n = <input id="cn" value="9"></label><label>\\(\\alpha\\) = <input id="ca" value="0,025"></label><div class="out" id="oc"></div>
      <p class="hint">\\(P(\\chi^2 > \\chi^2_\\alpha(n)) = \\alpha\\). Cận dưới KTC phương sai dùng \\(\\chi^2_{\\alpha/2}\\), cận trên dùng \\(\\chi^2_{1-\\alpha/2}\\).</p></section>
    <section class="card tool wide"><h3>Thống kê mẫu (\\(\\bar x, S^2, s^2, s\\))</h3>
      <label>Giá trị \\(x_i\\) (hoặc trung điểm lớp): <input id="dx" class="long" value="110 130 150 170 190"></label>
      <label>Tần số \\(n_i\\) (để trống nếu dữ liệu thô): <input id="dn" class="long" value="14 25 30 20 11"></label>
      <div class="out" id="od"></div></section>
    <section class="card tool wide"><h3>Tương quan & hồi quy \\(\\hat y = ax + b\\)</h3>
      <label>x: <input id="rx" class="long" value="1 2 3 4 5 6"></label>
      <label>y: <input id="ry" class="long" value="30 20 20 12 10 5"></label>
      <label>Dự báo tại x₀ = <input id="rx0" value="2,3"></label>
      <div class="out" id="or"></div></section>
    <section class="card tool wide"><h3>Xác suất phân phối</h3>
      <div class="row3">
        <div><b>Nhị thức B(n,p)</b><label>n <input id="bn" value="10"></label><label>p <input id="bp" value="0,3"></label><label>k từ <input id="bk1" value="0"></label><label>đến <input id="bk2" value="1"></label><div class="out" id="ob"></div></div>
        <div><b>Poisson P(λ)</b><label>λ <input id="pl" value="2,5"></label><label>k từ <input id="pk1" value="0"></label><label>đến <input id="pk2" value="2"></label><div class="out" id="op"></div></div>
        <div><b>Chuẩn N(μ, σ²)</b><label>μ <input id="nm" value="100"></label><label>σ <input id="ns" value="2"></label><label>a <input id="na" value="98"></label><label>b <input id="nb" value="103"></label><div class="out" id="on"></div></div>
      </div></section>
  </div>
  <h2>Bảng tra (Phụ lục giáo trình)</h2>
  <details class="card"><summary>Phụ lục 1 – Hàm Laplace \\(\\Phi(z)\\)</summary>${table(['z', ...[0, 1, 2, 3, 4, 5, 6, 7, 8, 9].map(i => '0.0' + i)], TB.laplace.map(r => [r[0].toFixed(1), ...r.slice(1).map(v => v.toFixed(4))]))}</details>
  <details class="card"><summary>Phụ lục 2 – Chi-bình phương \\(\\chi^2_\\alpha(n)\\)</summary>${table(['n \\ α', ...TB.chi2Alphas], TB.chi2)}</details>
  <details class="card"><summary>Phụ lục 3 – Student \\(t_\\alpha(n)\\)</summary>${table(['n \\ α', ...TB.tAlphas], TB.t)}</details>`;

  function table(head, rows) {
    return '<div class="tbl-wrap"><table class="data lookup"><tr>' + head.map(h => `<th>${h}</th>`).join('') + '</tr>' + rows.map(r => '<tr>' + r.map((c, i) => i ? `<td>${c}</td>` : `<th>${c}</th>`).join('') + '</tr>').join('') + '</table></div>';
  }
  const $ = id => document.getElementById(id);
  const put = (id, html) => { $(id).innerHTML = html; math($(id)); };

  function upd() {
    const z = num($('tz').value); if (isFinite(z)) put('oz', `\\(\\Phi(${F(z, 4)}) = ${F(S.Lap(z), 4, true)}\\) · \\(P(X\\le x)=0{,}5+\\Phi = ${F(S.normCdf(z), 4, true)}\\)`);
    const ph = num($('tphi').value); if (ph > -0.5 && ph < 0.5) put('ophi', `\\(u = ${F(S.invNorm(0.5 + ph), 3, true)}\\)`);
    const g = num($('tg').value); if (g > 0 && g < 1) put('og', `\\(\\Phi(u_{\\alpha/2}) = ${F(g / 2, 4)} \\Rightarrow u_{\\alpha/2} = ${F(S.uConf(g), 3, true)}\\); một phía \\(u_\\alpha = ${F(S.invNorm(g), 3, true)}\\)`);
    const n = Math.round(num($('tn').value)), a = num($('ta').value);
    if (n > 0 && a > 0 && a < 0.5) put('ot', `\\(t_{${F(a, 4)}}(${n}) = ${F(S.tCrit(a, n), 3, true)}\\)`);
    const cn = Math.round(num($('cn').value)), ca = num($('ca').value);
    if (cn > 0 && ca > 0 && ca < 1) put('oc', `\\(\\chi^2_{${F(ca, 4)}}(${cn}) = ${F(S.chi2Crit(ca, cn), 3)}\\)`);
    const xs = nums($('dx').value); let ns = nums($('dn').value);
    if (xs.length) {
      if (ns.length !== xs.length) ns = null;
      const d = S.describe(xs, ns);
      put('od', `\\(n = ${d.n}\\), \\(\\sum n_ix_i = ${F(d.sx, 4)}\\), \\(\\sum n_ix_i^2 = ${F(d.sx2, 4)}\\)<br>\\(\\bar x = ${F(d.mean, 4)}\\), \\(S^2 = ${F(d.S2, 4)}\\) (chưa hiệu chỉnh), \\(s^2 = ${F(d.s2, 4)}\\), \\(s = ${F(d.s, 4)}\\)`);
    }
    const rx = nums($('rx').value), ry = nums($('ry').value);
    if (rx.length >= 3 && rx.length === ry.length) {
      const r = S.regress(rx, ry); const x0 = num($('rx0').value);
      const tc = S.tCrit(0.025, r.n - 2);
      put('or', `\\(\\bar x = ${F(r.mx)}\\), \\(\\bar y = ${F(r.my)}\\), \\(S_{xx} = ${F(r.sxx)}\\), \\(S_{yy} = ${F(r.syy)}\\), \\(S_{xy} = ${F(r.sxy)}\\)<br>
        \\(r = ${F(r.r)}\\), \\(\\hat y = ${F(r.a)}x ${r.b < 0 ? '-' : '+'} ${F(Math.abs(r.b))}\\), \\(t_{qs} = ${F(r.t, 3)}\\) so với \\(t_{0{,}025}(${r.n - 2}) = ${F(tc, 3)}\\) ⇒ ${Math.abs(r.t) > tc ? 'bác bỏ H₀: có tương quan' : 'chưa bác bỏ H₀'}${isFinite(x0) ? `<br>\\(\\hat y(${F(x0)}) = ${F(r.a * x0 + r.b)}\\)` : ''}`);
    }
    const bn = Math.round(num($('bn').value)), bp = num($('bp').value), k1 = Math.round(num($('bk1').value)), k2 = Math.round(num($('bk2').value));
    if (bn > 0 && bp > 0 && bp < 1 && k1 <= k2) { let s = 0; for (let k = Math.max(0, k1); k <= Math.min(bn, k2); k++) s += S.binom(bn, bp, k); put('ob', `\\(P(${k1}\\le X\\le ${k2}) = ${F(s, 5)}\\)<br>\\(E=${F(bn * bp)}, V=${F(bn * bp * (1 - bp))}\\)`); }
    const l = num($('pl').value), q1 = Math.round(num($('pk1').value)), q2 = Math.round(num($('pk2').value));
    if (l > 0 && q1 <= q2) { let s = 0; for (let k = Math.max(0, q1); k <= q2; k++) s += S.pois(l, k); put('op', `\\(P(${q1}\\le X\\le ${q2}) = ${F(s, 5)}\\)`); }
    const m = num($('nm').value), sd = num($('ns').value), na = num($('na').value), nb = num($('nb').value);
    if (sd > 0 && na <= nb) { const z1 = (na - m) / sd, z2 = (nb - m) / sd; put('on', `\\(z_1=${F(z1, 3)}, z_2=${F(z2, 3)}\\)<br>\\(P = ${F(S.Lap(z2) - S.Lap(z1), 4, true)}\\)`); }
  }
  main.querySelectorAll('input').forEach(i => i.addEventListener('input', upd));
  upd(); math(main);
};

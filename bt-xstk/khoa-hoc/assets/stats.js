// Thư viện tính toán xác suất – thống kê + tiện ích dùng chung cho nội dung khóa học.
window.COURSE = window.COURSE || { chapters: [] };

(function () {
  // ---------- Hàm đặc biệt ----------
  function erf(x) {
    // Chuỗi Taylor cho |x| nhỏ, phân số liên tục (qua erfc) cho |x| lớn – sai số < 1e-12
    const s = x < 0 ? -1 : 1; x = Math.abs(x);
    if (x < 2.5) {
      let sum = x, term = x, n = 0;
      while (Math.abs(term) > 1e-16 * Math.abs(sum)) {
        n++; term *= -x * x / n; sum += term / (2 * n + 1);
        if (n > 200) break;
      }
      return s * 2 / Math.sqrt(Math.PI) * sum;
    }
    // erfc bằng phân số liên tục Lentz
    let f = x, C = x, D = 0, tiny = 1e-300;
    for (let i = 1; i < 300; i++) {
      const a = i / 2;
      D = x + a * D; if (Math.abs(D) < tiny) D = tiny;
      C = x + a / C; if (Math.abs(C) < tiny) C = tiny;
      D = 1 / D; const delta = C * D; f *= delta;
      if (Math.abs(delta - 1) < 1e-15) break;
    }
    const erfc = Math.exp(-x * x) / Math.sqrt(Math.PI) / f;
    return s * (1 - erfc);
  }
  const Lap = z => 0.5 * erf(z / Math.SQRT2);            // Φ(z) = ∫_0^z (hàm Laplace)
  const normCdf = z => 0.5 + Lap(z);
  const phi = x => Math.exp(-x * x / 2) / Math.sqrt(2 * Math.PI);

  function invNorm(p) { // Acklam
    const a = [-3.969683028665376e1, 2.209460984245205e2, -2.759285104469687e2, 1.383577518672690e2, -3.066479806614716e1, 2.506628277459239];
    const b = [-5.447609879822406e1, 1.615858368580409e2, -1.556989798598866e2, 6.680131188771972e1, -1.328068155288572e1];
    const c = [-7.784894002430293e-3, -3.223964580411365e-1, -2.400758277161838, -2.549732539343734, 4.374664141464968, 2.938163982698783];
    const d = [7.784695709041462e-3, 3.224671290700398e-1, 2.445134137142996, 3.754408661907416];
    const pl = 0.02425; let q, r;
    if (p < pl) { q = Math.sqrt(-2 * Math.log(p)); return (((((c[0] * q + c[1]) * q + c[2]) * q + c[3]) * q + c[4]) * q + c[5]) / ((((d[0] * q + d[1]) * q + d[2]) * q + d[3]) * q + 1); }
    if (p <= 1 - pl) { q = p - 0.5; r = q * q; return (((((a[0] * r + a[1]) * r + a[2]) * r + a[3]) * r + a[4]) * r + a[5]) * q / (((((b[0] * r + b[1]) * r + b[2]) * r + b[3]) * r + b[4]) * r + 1); }
    q = Math.sqrt(-2 * Math.log(1 - p)); return -(((((c[0] * q + c[1]) * q + c[2]) * q + c[3]) * q + c[4]) * q + c[5]) / ((((d[0] * q + d[1]) * q + d[2]) * q + d[3]) * q + 1);
  }

  function lgamma(x) {
    const g = 7, cf = [0.99999999999980993, 676.5203681218851, -1259.1392167224028, 771.32342877765313, -176.61502916214059, 12.507343278686905, -0.13857109526572012, 9.9843695780195716e-6, 1.5056327351493116e-7];
    if (x < 0.5) return Math.log(Math.PI / Math.abs(Math.sin(Math.PI * x))) - lgamma(1 - x);
    x -= 1; let a = cf[0]; const t = x + g + 0.5;
    for (let i = 1; i < 9; i++) a += cf[i] / (x + i);
    return 0.5 * Math.log(2 * Math.PI) + (x + 0.5) * Math.log(t) - t + Math.log(a);
  }
  function betacf(a, b, x) {
    const MAXIT = 300, EPS = 3e-14, FPMIN = 1e-300;
    let qab = a + b, qap = a + 1, qam = a - 1, c = 1, d = 1 - qab * x / qap;
    if (Math.abs(d) < FPMIN) d = FPMIN; d = 1 / d; let h = d;
    for (let m = 1; m <= MAXIT; m++) {
      const m2 = 2 * m; let aa = m * (b - m) * x / ((qam + m2) * (a + m2));
      d = 1 + aa * d; if (Math.abs(d) < FPMIN) d = FPMIN; c = 1 + aa / c; if (Math.abs(c) < FPMIN) c = FPMIN; d = 1 / d; h *= d * c;
      aa = -(a + m) * (qab + m) * x / ((a + m2) * (qap + m2));
      d = 1 + aa * d; if (Math.abs(d) < FPMIN) d = FPMIN; c = 1 + aa / c; if (Math.abs(c) < FPMIN) c = FPMIN; d = 1 / d;
      const del = d * c; h *= del; if (Math.abs(del - 1) < EPS) break;
    }
    return h;
  }
  function ibeta(a, b, x) {
    if (x <= 0) return 0; if (x >= 1) return 1;
    const bt = Math.exp(lgamma(a + b) - lgamma(a) - lgamma(b) + a * Math.log(x) + b * Math.log(1 - x));
    return x < (a + 1) / (a + b + 2) ? bt * betacf(a, b, x) / a : 1 - bt * betacf(b, a, 1 - x) / b;
  }
  function gammaP(a, x) {
    if (x <= 0) return 0;
    if (x < a + 1) { let ap = a, sum = 1 / a, del = sum; for (let n = 0; n < 500; n++) { ap++; del *= x / ap; sum += del; if (Math.abs(del) < Math.abs(sum) * 1e-15) break; } return sum * Math.exp(-x + a * Math.log(x) - lgamma(a)); }
    let b = x + 1 - a, c = 1e300, d = 1 / b, h = d;
    for (let i = 1; i < 500; i++) { const an = -i * (i - a); b += 2; d = an * d + b; if (Math.abs(d) < 1e-300) d = 1e-300; c = b + an / c; if (Math.abs(c) < 1e-300) c = 1e-300; d = 1 / d; const del = d * c; h *= del; if (Math.abs(del - 1) < 1e-15) break; }
    return 1 - Math.exp(-x + a * Math.log(x) - lgamma(a)) * h;
  }
  const tCdf = (t, n) => { const x = n / (n + t * t); const p = 0.5 * ibeta(n / 2, 0.5, x); return t > 0 ? 1 - p : p; };
  const chi2Cdf = (x, n) => gammaP(n / 2, x / 2);
  function bisect(f, lo, hi) { for (let i = 0; i < 200; i++) { const m = (lo + hi) / 2; if (f(m) > 0) hi = m; else lo = m; } return (lo + hi) / 2; }
  // Giá trị tới hạn phía phải: P(T > t) = alpha
  function tCrit(alpha, n) {
    const T = window.TABLES; if (T) { const ci = T.tAlphas.indexOf(alpha); const row = T.t.find(r => r[0] === n); if (ci >= 0 && row) return row[ci + 1]; }
    return bisect(t => (1 - tCdf(t, n)) < alpha ? 1 : -1, 0, 1000);
  }
  function chi2Crit(alpha, n) {
    const T = window.TABLES; if (T) { const ci = T.chi2Alphas.indexOf(alpha); const row = T.chi2.find(r => r[0] === n); if (ci >= 0 && row) return row[ci + 1]; }
    return bisect(x => (1 - chi2Cdf(x, n)) < alpha ? 1 : -1, 0, 5000);
  }
  // Phân vị chuẩn theo quy ước giáo trình
  const U2 = { 0.8: 1.28, 0.9: 1.645, 0.95: 1.96, 0.96: 2.05, 0.98: 2.33, 0.99: 2.575 }; // u_{α/2} theo độ tin cậy γ
  const uConf = g => U2[g] !== undefined ? U2[g] : +invNorm(0.5 + g / 2).toFixed(3);
  const U1 = { 0.1: 1.28, 0.05: 1.645, 0.025: 1.96, 0.02: 2.05, 0.01: 2.33, 0.005: 2.575 }; // u_α một phía
  const uAlpha = a => U1[a] !== undefined ? U1[a] : +invNorm(1 - a).toFixed(3);

  // Tra bảng Laplace như khi làm bài: làm tròn z tới 2 chữ số, Φ tới 4 chữ số
  const LapT = z => { const zz = Math.round(Math.abs(z) * 100) / 100; const v = zz >= 3.9 ? 0.5 : +Lap(zz).toFixed(4); return z < 0 ? -v : v; };

  // ---------- Tổ hợp, phân phối rời rạc ----------
  function C(n, k) { if (k < 0 || k > n) return 0; k = Math.min(k, n - k); let r = 1; for (let i = 1; i <= k; i++) r = r * (n - k + i) / i; return Math.round(r); }
  function A(n, k) { let r = 1; for (let i = 0; i < k; i++) r *= (n - i); return r; }
  const binom = (n, p, k) => Math.exp(lgamma(n + 1) - lgamma(k + 1) - lgamma(n - k + 1) + k * Math.log(p) + (n - k) * Math.log(1 - p));
  const pois = (l, k) => Math.exp(-l + k * Math.log(l) - lgamma(k + 1));

  // ---------- Thống kê mẫu ----------
  function describe(xs, ns) {
    ns = ns || xs.map(() => 1);
    const n = ns.reduce((a, b) => a + b, 0);
    const sx = xs.reduce((a, x, i) => a + x * ns[i], 0);
    const sx2 = xs.reduce((a, x, i) => a + x * x * ns[i], 0);
    const mean = sx / n; const S2 = sx2 / n - mean * mean; const s2 = S2 * n / (n - 1);
    return { n, sx, sx2, mean, S2, s2, s: Math.sqrt(s2), S: Math.sqrt(S2) };
  }
  function regress(xs, ys) {
    const n = xs.length, mx = xs.reduce((a, b) => a + b, 0) / n, my = ys.reduce((a, b) => a + b, 0) / n;
    let sxx = 0, syy = 0, sxy = 0;
    for (let i = 0; i < n; i++) { sxx += (xs[i] - mx) ** 2; syy += (ys[i] - my) ** 2; sxy += (xs[i] - mx) * (ys[i] - my); }
    const r = sxy / Math.sqrt(sxx * syy), a = sxy / sxx, b = my - a * mx;
    return { n, mx, my, sxx, syy, sxy, r, a, b, t: r * Math.sqrt(n - 2) / Math.sqrt(1 - r * r) };
  }

  // ---------- Ngẫu nhiên ----------
  const R = {
    int: (a, b) => a + Math.floor(Math.random() * (b - a + 1)),
    pick: arr => arr[Math.floor(Math.random() * arr.length)],
    step: (a, b, s) => +(a + s * Math.floor(Math.random() * (Math.round((b - a) / s) + 1))).toFixed(6),
    shuffle: arr => { const a = arr.slice(); for (let i = a.length - 1; i > 0; i--) { const j = Math.floor(Math.random() * (i + 1)); [a[i], a[j]] = [a[j], a[i]]; } return a; },
    // chia 'total' đơn vị thành k phần dương (dùng cho bảng xác suất bội 0,05)
    parts: (k, total, min = 1) => { let rest = total - k * min; const p = Array(k).fill(min); while (rest-- > 0) p[Math.floor(Math.random() * k)]++; return p; }
  };

  // ---------- Định dạng số kiểu Việt Nam ----------
  function trim(s) { return s.indexOf('.') >= 0 ? s.replace(/0+$/, '').replace(/\.$/, '') : s; }
  // F: dùng trong công thức KaTeX (dấu phẩy thập phân viết {,})
  function F(x, d = 4, keep = false) {
    if (!isFinite(x)) return String(x);
    let s = (+x).toFixed(d); if (!keep) s = trim(s); if (s === '-0') s = '0';
    let [i, f] = s.split('.'); const neg = i.startsWith('-'); if (neg) i = i.slice(1);
    if (i.length > 4) i = i.replace(/\B(?=(\d{3})+(?!\d))/g, '\\,');
    return (neg ? '-' : '') + i + (f ? '{,}' + f : '');
  }
  // T: dùng trong văn bản thường
  function T(x, d = 4, keep = false) {
    let s = (+x).toFixed(d); if (!keep) s = trim(s); if (s === '-0') s = '0';
    let [i, f] = s.split('.'); const neg = i.startsWith('-'); if (neg) i = i.slice(1);
    if (i.length > 4) i = i.replace(/\B(?=(\d{3})+(?!\d))/g, ' ');
    return (neg ? '-' : '') + i + (f ? ',' + f : '');
  }
  const P = (x, d = 2) => T(x * 100, d) + '%';
  // Bảng HTML nhanh: rows = mảng các hàng, hàng đầu là tiêu đề
  function tbl(rows, cls = '') {
    return '<div class="tbl-wrap"><table class="data ' + cls + '">' + rows.map((r, i) => '<tr>' + r.map((c, j) => (i === 0 || j === 0 ? '<th>' : '<td>') + c + (i === 0 || j === 0 ? '</th>' : '</td>')).join('') + '</tr>').join('') + '</table></div>';
  }

  window.S = { erf, Lap, LapT, normCdf, phi, invNorm, lgamma, ibeta, gammaP, tCdf, chi2Cdf, tCrit, chi2Crit, uConf, uAlpha, C, A, binom, pois, describe, regress };
  window.R = R; window.F = F; window.T = T; window.Pc = P; window.tbl = tbl;
})();

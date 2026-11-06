COURSE.chapters.push({
  id: 6, short: 'Mẫu & thống kê mô tả', title: 'Mẫu ngẫu nhiên và các đặc trưng mẫu', when: 'Ngày 2 · Buổi tối · ~1,5 giờ',
  intro: 'Tính trung bình mẫu, phương sai mẫu (chưa hiệu chỉnh và hiệu chỉnh) từ dữ liệu thô, bảng tần số và bảng ghép lớp. Đây là bước 1 bắt buộc của mọi bài ước lượng, kiểm định ở chương 7–8, nên phải làm nhanh và chính xác.',
  goals: [
    'Tính \\(\\bar x, S^2, s^2, s\\) bằng bảng \\(n_i, n_ix_i, n_ix_i^2\\).',
    'Ghép lớp: lấy trung điểm làm giá trị đại diện.',
    'Dùng thành thạo chế độ thống kê (STAT/SD) của máy tính cầm tay để kiểm tra.',
    'Tính tỉ lệ mẫu, thứ hạng phần trăm từ bảng tần số.'
  ],
  theory: String.raw`
<h3>1. Bảng tần số</h3>
<div class="box"><p>Giá trị \(x_1,\dots,x_k\) với tần số \(n_1,\dots,n_k\), \(n=\sum n_i\); tần suất \(f_i=\frac{n_i}n\). Ghép lớp \([a_i;b_i)\): giá trị đại diện \(x_i=\frac{a_i+b_i}2\).</p></div>
<h3>2. Trung bình mẫu</h3>
<div class="box">\[\bar x=\frac1n\sum_{i=1}^k n_ix_i\qquad(E(\overline X)=\mu,\ V(\overline X)=\tfrac{\sigma^2}n)\]</div>
<h3>3. Phương sai mẫu</h3>
<div class="box">\[S^2=\frac1n\sum n_ix_i^2-\bar x^2\ \ (\text{chưa hiệu chỉnh}),\qquad s^2=\frac n{n-1}S^2=\frac{1}{n-1}\Big(\sum n_ix_i^2-n\bar x^2\Big)\ \ (\text{hiệu chỉnh})\]
<p>\(s^2\) là ước lượng không chệch của \(\sigma^2\) ⇒ chương 7, 8 luôn dùng \(s\).</p></div>
<div class="key">Máy tính Casio: MODE STAT (1-VAR), bật cột tần số (FREQ). Kết quả \(\sigma_x\) = S (chưa hiệu chỉnh), \(s_x\) = s (hiệu chỉnh). Ghi lại \(\sum x\), \(\sum x^2\) vào bài để được điểm trình bày.</div>`,
  recipes: [
    ['Dữ liệu thô (liệt kê từng giá trị)', String.raw`Tính \(\sum x_i\), \(\sum x_i^2\) ⇒ \(\bar x\), \(S^2\), \(s^2=\frac n{n-1}S^2\).`, '6.1, 6.4a'],
    ['Bảng giá trị – tần số', String.raw`Lập cột \(n_ix_i\), \(n_ix_i^2\).`, '6.2, 6.5'],
    ['Bảng ghép lớp (khoảng)', 'Thay mỗi khoảng bằng trung điểm rồi làm như bảng tần số.', '6.3, 6.6'],
    ['“Tỉ lệ đậu / có điểm cao hơn bao nhiêu %”', 'Đếm tần số thỏa điều kiện, chia cho n.', '6.5bc'],
    ['Lập bảng ghép lớp từ dữ liệu thô', 'Đếm số giá trị rơi vào từng khoảng [a; b) (chú ý mút phải không lấy).', '6.4b, 6.6a']
  ],
  traps: [
    String.raw`Nhầm \(S^2\) (chia n) với \(s^2\) (chia n − 1). Ước lượng / kiểm định dùng \(s\).`,
    'Bảng ghép lớp: giá trị nằm đúng mút phải thuộc lớp sau.',
    String.raw`Làm tròn \(\bar x\) quá sớm rồi tính \(\bar x^2\) gây sai số lớn khi số liệu lớn (vd 1587,5² ). Giữ nguyên hoặc dùng \(\sum(x_i-\bar x)^2\).`
  ],
  examples: [
    { id: '6.1', tag: 'Dữ liệu thô', q: String.raw`${tbl([['Chiều cao', 100, 102, 105, 98, 102, 107, 104, 99, 105, 103, 102, 106], ['Đường kính', 12, 13, 14, 12, 11, 16, 11, 13, 15, 14, 12, 12]])}<p>Tính trung bình và phương sai mẫu của chiều cao và đường kính.</p>`,
      sol: String.raw`<p>Chiều cao: \(\sum x=1233\), \(\sum x^2=126\,777\); \(\bar x=102{,}75\); \(S^2=7{,}1875\); \(s^2\approx7{,}8409\).</p><p>Đường kính: \(\sum y=155\), \(\sum y^2=2029\); \(\bar y\approx12{,}9167\); \(S^2\approx2{,}2431\); \(s^2\approx2{,}4470\).</p>` },
    { id: '6.2', tag: 'Bảng tần số', q: String.raw`${tbl([['Năng suất (tạ/ha)', 41, 44, 45, 46, 48, 52, 54], ['Diện tích (ha)', 10, 20, 30, 15, 10, 10, 5]])}<p>Tính trung bình và phương sai mẫu.</p>`,
      sol: String.raw`<p>\(n=100\), \(\sum n_ix_i=4600\Rightarrow\bar x=46\); \(\sum n_ix_i^2=212\,680\Rightarrow S^2=2126{,}8-2116=10{,}8\); \(s^2=\frac{100}{99}10{,}8\approx10{,}9091\), \(s\approx3{,}303\).</p>` },
    { id: '6.3', tag: 'Ghép lớp', q: String.raw`${tbl([['Thời gian (phút)', '20–25', '25–30', '30–35', '35–40', '40–45', '45–50', '50–55'], ['Số quan sát', 2, 14, 26, 32, 14, 8, 4]])}<p>Tính trung bình và phương sai mẫu.</p>`,
      sol: String.raw`<p>Trung điểm 22,5; 27,5; …; 52,5. \(n=100\), \(\bar x=36{,}6\); \(\sum n_ix_i^2=138\,425\Rightarrow S^2=44{,}69\); \(s^2\approx45{,}1414\), \(s\approx6{,}719\).</p>` },
    { id: '6.4', tag: 'Thô vs ghép lớp', q: String.raw`<p>36 du khách có số ngày lưu lại: 41 16 6 21 10 21 5 31 20 27 17 10 3 32 2 28 8 12 21 44 1 56 5 42 3 13 15 10 8 3 1 11 14 12 64 10. a) Trung bình. b) Ghép lớp 1–7, 7–13, …, 61–67 rồi tính trung bình. c) So sánh.</p>`,
      sol: String.raw`<p>a) \(\sum=643\Rightarrow\bar x\approx17{,}86\).</p><p>b) Tần số các lớp: 9, 9, 5, 4, 2, 2, 2, 1, 0, 1, 1; \(\sum n_ix_i=666\Rightarrow\bar x=18{,}5\).</p><p>c) Chênh 0,64 ngày (≈3,6%) – ghép lớp mất chi tiết nhưng vẫn sát thực tế.</p>` },
    { id: '6.5', tag: 'So sánh hai lớp', q: String.raw`${tbl([['Điểm', 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], ['Lớp 1', 2, 2, 5, 10, 12, 20, 22, 15, 7, 5], ['Lớp 2', 1, 3, 7, 12, 33, 11, 8, 7, 15, 3]])}<p>a) Trung bình, phương sai hai lớp. b) Tỉ lệ đậu (≥ 4). c) SV lớp 1 đạt 8 điểm cao hơn bao nhiêu % lớp? SV lớp 2 đạt 5 điểm thấp hơn bao nhiêu % lớp?</p>`,
      sol: String.raw`<p>a) Lớp 1: \(\bar x=6{,}28\), \(S^2=3{,}9616\). Lớp 2: \(\bar x=5{,}84\), \(S^2=4{,}3344\). Lớp 1 tốt hơn và đồng đều hơn.</p><p>b) 91% và 89%.</p><p>c) Lớp 1: 73 bạn dưới 8 điểm ⇒ 73%. Lớp 2: 44 bạn trên 5 điểm ⇒ 44%.</p>` },
    { id: '6.6', tag: 'Lập bảng ghép lớp', q: String.raw`<p>Số tiền quyên góp (nghìn đồng) của 30 lớp: 100 145 110 140 110 125 120 120 110 125 110 115 120 120 130 135 135 130 135 130 145 120 125 120 120 105 125 125 115 100. a) Lập bảng tần số ghép lớp [100;110), …, [140;150). c) Trung bình, phương sai, độ lệch chuẩn.</p>`,
      sol: String.raw`<p>a) Tần số: 3, 6, 12, 6, 3 (tần suất 10%, 20%, 40%, 20%, 10%).</p><p>c) \(\bar x=125\); \(S^2=120\); \(s^2=\frac{3600}{29}\approx124{,}14\); \(s\approx11{,}14\).</p>` }
  ],
  gens: [
    {
      name: 'Bảng tần số', gen() {
        const k = R.int(5, 7), x0 = R.pick([10, 20, 40, 100, 2]), h = R.pick([1, 2, 5]), xs = Array.from({ length: k }, (_, i) => x0 + i * h);
        const ns = xs.map((_, i) => R.int(2, 6) + Math.round(8 * Math.exp(-((i - (k - 1) / 2) ** 2) / 3)));
        const d = S.describe(xs, ns);
        return {
          q: String.raw`<p>Khảo sát một mẫu thu được bảng tần số:</p>${tbl([['x', ...xs], ['Tần số', ...ns]])}<p>Tính trung bình mẫu \(\bar x\), phương sai mẫu hiệu chỉnh \(s^2\) và độ lệch chuẩn \(s\).</p>`,
          fields: [{ label: 'x̄', ans: d.mean, tol: Math.max(Math.abs(d.mean) * 0.001, 0.005) }, { label: 's²', ans: d.s2 }, { label: 's', ans: d.s }],
          sol: String.raw`<p>\(n=${d.n}\), \(\sum n_ix_i=${F(d.sx)}\), \(\sum n_ix_i^2=${F(d.sx2)}\).</p><p>\(\bar x=\frac{${F(d.sx)}}{${d.n}}=${F(d.mean)}\); \(S^2=\frac{${F(d.sx2)}}{${d.n}}-${F(d.mean)}^2=${F(d.S2)}\).</p><p>\(s^2=\frac{${d.n}}{${d.n - 1}}\cdot${F(d.S2)}=${F(d.s2)}\); \(s=${F(d.s)}\).</p>`
        };
      }
    },
    {
      name: 'Bảng ghép lớp', gen() {
        const k = R.int(5, 7), a0 = R.pick([0, 10, 20, 100, 1000]), h = R.pick([2, 5, 10, 20, 100]);
        const mids = Array.from({ length: k }, (_, i) => a0 + i * h + h / 2), labels = mids.map((_, i) => `${T(a0 + i * h)}–${T(a0 + (i + 1) * h)}`);
        const ctr = R.int(2, k - 2), ns = mids.map((_, i) => R.int(2, 6) + Math.round(20 * Math.exp(-((i - ctr) ** 2) / 3)));
        const d = S.describe(mids, ns);
        return {
          q: String.raw`<p>Số liệu ghép lớp:</p>${tbl([['Khoảng', ...labels], ['Tần số', ...ns]])}<p>Tính trung bình mẫu và độ lệch chuẩn mẫu hiệu chỉnh \(s\).</p>`,
          fields: [{ label: 'x̄', ans: d.mean, tol: Math.max(Math.abs(d.mean) * 0.001, 0.005) }, { label: 's', ans: d.s }],
          sol: String.raw`<p>Trung điểm: ${mids.map(m => F(m)).join('; ')}. \(n=${d.n}\), \(\sum n_ix_i=${F(d.sx)}\), \(\sum n_ix_i^2=${F(d.sx2)}\).</p><p>\(\bar x=${F(d.mean)}\); \(S^2=${F(d.S2)}\); \(s^2=${F(d.s2)}\); \(s=${F(d.s)}\).</p>`
        };
      }
    },
    {
      name: 'Dữ liệu thô', gen() {
        const n = R.int(7, 12), base = R.pick([10, 50, 100]), xs = Array.from({ length: n }, () => base + R.int(-8, 8));
        const d = S.describe(xs);
        return {
          q: String.raw`<p>Một mẫu gồm ${n} quan sát: ${xs.join('; ')}. Tính \(\bar x\), phương sai chưa hiệu chỉnh \(S^2\) và phương sai hiệu chỉnh \(s^2\).</p>`,
          fields: [{ label: 'x̄', ans: d.mean, tol: 0.005 }, { label: 'S²', ans: d.S2 }, { label: 's²', ans: d.s2 }],
          sol: String.raw`<p>\(\sum x_i=${d.sx}\), \(\sum x_i^2=${d.sx2}\). \(\bar x=${F(d.mean)}\); \(S^2=\frac{${d.sx2}}{${n}}-${F(d.mean)}^2=${F(d.S2)}\); \(s^2=\frac{${n}}{${n - 1}}S^2=${F(d.s2)}\).</p>`
        };
      }
    },
    {
      name: 'Tỉ lệ & thứ hạng', gen() {
        const ns = Array.from({ length: 10 }, (_, i) => R.int(1, 4) + Math.round(18 * Math.exp(-((i - 5.5) ** 2) / 5)));
        const n = ns.reduce((a, b) => a + b, 0), pass = R.pick([4, 5]), sc = R.int(6, 9);
        const passN = ns.slice(pass - 1).reduce((a, b) => a + b, 0), below = ns.slice(0, sc - 1).reduce((a, b) => a + b, 0);
        return {
          q: String.raw`<p>Phổ điểm của một lớp:</p>${tbl([['Điểm', 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], ['Số SV', ...ns]])}<p>a) Tỉ lệ sinh viên đậu (điểm từ ${pass} trở lên). b) Một sinh viên đạt ${sc} điểm có điểm cao hơn bao nhiêu phần trăm sinh viên của lớp?</p>`,
          fields: [{ label: 'a)', ans: passN / n, tol: 0.002 }, { label: 'b)', ans: below / n, tol: 0.002 }],
          sol: String.raw`<p>\(n=${n}\). a) Số SV đạt từ ${pass} điểm: ${passN} ⇒ \(\frac{${passN}}{${n}}\approx${F(passN / n)}\).</p><p>b) Số SV dưới ${sc} điểm: ${below} ⇒ \(\frac{${below}}{${n}}\approx${F(below / n)}\).</p>`
        };
      }
    }
  ]
});

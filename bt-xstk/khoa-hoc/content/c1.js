COURSE.chapters.push({
  id: 1, short: 'Biến cố & xác suất', title: 'Biến cố và xác suất', when: 'Ngày 1 · Buổi sáng · ~3,5 giờ',
  intro: 'Nền tảng của cả môn: đếm số khả năng, cộng – nhân xác suất, xác suất có điều kiện, công thức toàn phần và Bayes. Hầu hết đề thi có 1 câu thuộc chương này.',
  goals: [
    'Tính xác suất cổ điển bằng tổ hợp \\(C_n^k\\) cho bài “chọn ngẫu nhiên k phần tử”.',
    'Dùng thành thạo biến cố đối cho từ khóa “ít nhất một”.',
    'Phân biệt độc lập (nhân trực tiếp) và không hoàn lại (nhân xác suất có điều kiện).',
    'Lập hệ đầy đủ, áp dụng công thức xác suất toàn phần và Bayes.'
  ],
  theory: String.raw`
<h3>1. Định nghĩa cổ điển & đếm</h3>
<div class="box">\[P(A)=\frac{m}{n}=\frac{|A|}{|\Omega|},\qquad C_n^k=\frac{n!}{k!(n-k)!},\qquad A_n^k=\frac{n!}{(n-k)!}\]
<p>Chọn <b>không thứ tự</b> → tổ hợp \(C\); có thứ tự → chỉnh hợp \(A\). Hộp có \(a\) loại I, \(b\) loại II, chọn \(k\): \(P(\text{đúng } m \text{ loại I})=\dfrac{C_a^m C_b^{k-m}}{C_{a+b}^k}\).</p></div>
<h3>2. Công thức cộng & biến cố đối</h3>
<div class="box">\[P(A\cup B)=P(A)+P(B)-P(AB),\qquad P(A)=1-P(\overline A)\]
<p>\(A, B\) xung khắc (\(AB=\varnothing\)) thì \(P(A\cup B)=P(A)+P(B)\).</p></div>
<div class="key">Từ khóa <b>“ít nhất một”</b> ⇒ tính \(1-P(\text{không có cái nào})\).</div>
<h3>3. Xác suất có điều kiện, công thức nhân, độc lập</h3>
<div class="box">\[P(B|A)=\frac{P(AB)}{P(A)},\qquad P(A_1A_2\cdots A_n)=P(A_1)P(A_2|A_1)\cdots P(A_n|A_1\cdots A_{n-1})\]
<p>\(A,B\) độc lập \(\iff P(AB)=P(A)P(B)\). Các máy/xạ thủ “hoạt động độc lập” ⇒ nhân trực tiếp.</p></div>
<h3>4. Xác suất toàn phần</h3>
<div class="box"><p>\(\{A_1,\dots,A_n\}\) là <b>hệ đầy đủ</b> (xung khắc từng đôi, hợp bằng \(\Omega\)):</p>
\[P(B)=\sum_{i=1}^n P(A_i)\,P(B|A_i)\]</div>
<h3>5. Công thức Bayes</h3>
<div class="box">\[P(A_k|B)=\frac{P(A_k)P(B|A_k)}{P(B)}\]
<p>Dùng khi đề cho “biết kết quả \(B\) đã xảy ra, tính xác suất nguyên nhân \(A_k\)”.</p></div>`,
  recipes: [
    ['“Chọn ngẫu nhiên k sản phẩm / người từ hộp / nhóm”', String.raw`Cổ điển + tổ hợp: \(|\Omega|=C_N^k\), đếm số cách thuận lợi theo từng loại rồi nhân.`, '1.2, 1.4, 1.5, 1.6'],
    ['“Ít nhất một …”', String.raw`\(P=1-P(\text{không có})\). Ví dụ \(1-\prod(1-p_i)\) nếu độc lập, \(1-\frac{C_{N-M}^k}{C_N^k}\) nếu chọn từ hộp.`, '1.3, 1.6c, 1.8a, 1.9b'],
    ['“Nhiều nhất / ít nhất m” với m nhỏ', 'Liệt kê các trường hợp xung khắc rồi cộng; nếu nhiều trường hợp thì dùng biến cố đối.', '1.2c, 1.5b'],
    ['“Lần lượt … không hoàn lại”', String.raw`Công thức nhân: \(P(A_1)P(A_2|A_1)P(A_3|A_1A_2)\) – mẫu số giảm dần. (Tương đương tổ hợp.)`, '1.1'],
    [String.raw`“… hoạt động độc lập, xác suất hỏng / trúng là \(p_i\)”`,String.raw`Nhân trực tiếp. “Đúng 1” = tổng các tích kiểu \(p_1q_2q_3+q_1p_2q_3+q_1q_2p_3\).`, '1.8, 1.9'],
    ['“A hoặc B”, có cho số ngày/lượng cả hai', String.raw`\(P(A\cup B)=P(A)+P(B)-P(AB)\).`, '1.7'],
    ['Đề cho tỉ lệ các nhóm (nhà máy, loại hạt…) và tỉ lệ lỗi / dấu hiệu trong từng nhóm', String.raw`Hệ đầy đủ ⇒ <b>toàn phần</b> \(P(B)=\sum P(A_i)P(B|A_i)\).`, '1.10b, 1.11a, 1.12'],
    ['“… biết rằng sản phẩm bị lỗi / máy đã báo …, tính xác suất nó thuộc nhóm k”', String.raw`<b>Bayes</b>: \(P(A_k|B)=\frac{P(A_k)P(B|A_k)}{P(B)}\) (tính \(P(B)\) bằng toàn phần trước).`, '1.9c, 1.11b, 1.12, 1.13c']
  ],
  traps: [
    String.raw`Nhầm “có <b>đúng</b> 1” với “có <b>ít nhất</b> 1”. Đọc kỹ: “lấy ra phế phẩm” (bài 1.6c) nghĩa là ít nhất 1 phế phẩm.`,
    String.raw`Dùng công thức nhân độc lập cho bốc <b>không hoàn lại</b>: sai! Phải giảm mẫu số (hoặc dùng tổ hợp).`,
    String.raw`Quên trừ \(P(AB)\) khi cộng hai biến cố không xung khắc.`,
    String.raw`Bayes: tử số là \(P(A_k)P(B|A_k)\), <b>không phải</b> \(P(B|A_k)\). Ví dụ 1.13c: \(P(T|B)=\frac{0{,}7\cdot0{,}85}{0{,}625}\), không phải 0,85.`,
    String.raw`“Máy báo đúng” (1.13d) gồm hai trường hợp: có tội & báo có tội, vô tội & báo vô tội.`
  ],
  examples: [
    { id: '1.1', tag: 'Công thức nhân', q: String.raw`<p>100 phiếu, trong đó 20 phiếu may mắn. Ba người lần lượt bốc (không hoàn lại) mỗi người 1 phiếu. Tính xác suất cả ba đều bốc được phiếu may mắn.</p>`,
      sol: String.raw`<p>Gọi \(A_i\): người thứ \(i\) bốc được phiếu may mắn.</p>\[P(A_1A_2A_3)=\frac{20}{100}\cdot\frac{19}{99}\cdot\frac{18}{98}=\frac{19}{2695}\approx0{,}00705\]<p>Cách khác: \(\dfrac{C_{20}^3}{C_{100}^3}=\dfrac{1140}{161700}\) – cùng kết quả.</p>` },
    { id: '1.2', tag: 'Tổ hợp', q: String.raw`<p>50 con gà gồm 30 trống, 20 mái. Chọn ngẫu nhiên 4 con. Tính xác suất: a) có 2 con trống; b) có ít nhất 1 con mái; c) có nhiều nhất 2 con trống.</p>`,
      sol: String.raw`<p>\(|\Omega|=C_{50}^4=230\,300\).</p><p>a) \(\dfrac{C_{30}^2C_{20}^2}{C_{50}^4}=\dfrac{435\cdot190}{230\,300}\approx0{,}3589\).</p><p>b) Đối: cả 4 là trống: \(1-\dfrac{C_{30}^4}{C_{50}^4}=1-\dfrac{27\,405}{230\,300}\approx0{,}8810\).</p><p>c) 0, 1 hoặc 2 trống: \(\dfrac{C_{20}^4+C_{30}^1C_{20}^3+C_{30}^2C_{20}^2}{C_{50}^4}=\dfrac{4845+34\,200+82\,650}{230\,300}\approx0{,}5284\).</p>` },
    { id: '1.3', tag: 'Biến cố đối', q: String.raw`<p>5000 phiếu có 50 phiếu trúng. Một sinh viên mua 5 phiếu. Tính xác suất có ít nhất 1 phiếu trúng.</p>`,
      sol: String.raw`\[P=1-\frac{C_{4950}^5}{C_{5000}^5}=1-\frac{4950\cdot4949\cdot4948\cdot4947\cdot4946}{5000\cdot4999\cdot4998\cdot4997\cdot4996}\approx1-0{,}9510=0{,}0490\]<p>(Giáo trình ghi 0,04911; tính chính xác là 0,04903.)</p>` },
    { id: '1.4', tag: 'Tổ hợp + đối', q: String.raw`<p>Tổ 15 sinh viên: 6 nữ (có Nga), 9 nam (có Bình). Chọn nhóm 5 người. Tính xác suất: a) có ít nhất 2 nam và ít nhất 1 nữ; b) Nga và Bình không đồng thời có mặt.</p>`,
      sol: String.raw`<p>\(|\Omega|=C_{15}^5=3003\).</p><p>a) Số nam 2, 3, 4: \(C_9^2C_6^3+C_9^3C_6^2+C_9^4C_6^1=720+1260+756=2736\) ⇒ \(P=\frac{2736}{3003}\approx0{,}9111\).</p><p>b) Đối: cả hai có mặt, chọn thêm 3 từ 13: \(C_{13}^3=286\). \(P=1-\frac{286}{3003}=\frac{19}{21}\approx0{,}9048\).</p>` },
    { id: '1.5', tag: 'Tổ hợp', q: String.raw`<p>Hộp 25 sản phẩm: 15 tốt, 10 kém. Chọn 7. Tính xác suất: a) 4 tốt và 3 kém; b) ít nhất 5 tốt.</p>`,
      sol: String.raw`<p>\(|\Omega|=C_{25}^7=480\,700\).</p><p>a) \(\frac{C_{15}^4C_{10}^3}{C_{25}^7}=\frac{1365\cdot120}{480\,700}\approx0{,}3408\).</p><p>b) 5, 6, 7 tốt: \(\frac{C_{15}^5C_{10}^2+C_{15}^6C_{10}^1+C_{15}^7}{C_{25}^7}=\frac{135\,135+50\,050+6435}{480\,700}\approx0{,}3986\).</p>` },
    { id: '1.6', tag: 'Tổ hợp', q: String.raw`<p>Hộp có 7 chính phẩm, 3 phế phẩm. Lấy ngẫu nhiên 2. Tính xác suất: a) hai phế phẩm; b) đúng 1 phế phẩm; c) lấy ra phế phẩm.</p>`,
      sol: String.raw`<p>\(C_{10}^2=45\). a) \(\frac{C_3^2}{45}=\frac1{15}\). b) \(\frac{3\cdot7}{45}=\frac7{15}\). c) “có phế phẩm” = ít nhất 1: \(1-\frac{C_7^2}{45}=\frac8{15}\approx0{,}5333\).</p>` },
    { id: '1.7', tag: 'Công thức cộng', q: String.raw`<p>Năm 365 ngày: 80 ngày nóng bất thường, 50 ngày sương mù, 25 ngày có cả hai. Chọn ngẫu nhiên 1 ngày, tính xác suất có hiện tượng bất thường (nóng hoặc sương mù).</p>`,
      sol: String.raw`\[P(A\cup B)=\frac{80+50-25}{365}=\frac{105}{365}=\frac{21}{73}\approx0{,}2877\]` },
    { id: '1.8', tag: 'Độc lập', q: String.raw`<p>Hai máy độc lập, xác suất hỏng trong ngày 0,1 và 0,05. Tính xác suất: a) có máy hỏng; b) chỉ 1 máy hỏng.</p>`,
      sol: String.raw`<p>a) \(1-0{,}9\cdot0{,}95=0{,}145\).</p><p>b) \(0{,}1\cdot0{,}95+0{,}9\cdot0{,}05=0{,}095+0{,}045=0{,}14\).</p>` },
    { id: '1.9', tag: 'Độc lập + điều kiện', q: String.raw`<p>Ba xạ thủ bắn độc lập, xác suất trúng 0,5; 0,6; 0,8. a) Xác suất thú trúng 2 viên. b) Xác suất thú bị trúng đạn. c) Biết thú trúng 2 viên, tính xác suất xạ thủ 1 bắn trúng.</p>`,
      sol: String.raw`<p>a) \(P(B_2)=0{,}5\cdot0{,}6\cdot0{,}2+0{,}5\cdot0{,}4\cdot0{,}8+0{,}5\cdot0{,}6\cdot0{,}8=0{,}06+0{,}16+0{,}24=0{,}46\).</p><p>b) \(1-0{,}5\cdot0{,}4\cdot0{,}2=0{,}96\).</p><p>c) \(P(A_1|B_2)=\frac{P(A_1B_2)}{P(B_2)}=\frac{0{,}06+0{,}16}{0{,}46}=\frac{11}{23}\approx0{,}4783\).</p>` },
    { id: '1.10', tag: 'Toàn phần', q: String.raw`<p>Xác suất đậu môn 1 là 0,9. Nếu đậu môn 1 thì xác suất đậu môn 2 là 0,7; nếu trượt môn 1 thì là 0,4. Tính xác suất: a) đậu cả hai; b) đậu môn 2; c) đậu ít nhất một môn.</p>`,
      sol: String.raw`<p>a) \(0{,}9\cdot0{,}7=0{,}63\).</p><p>b) Toàn phần: \(0{,}9\cdot0{,}7+0{,}1\cdot0{,}4=0{,}67\).</p><p>c) \(0{,}9+0{,}67-0{,}63=0{,}94\) (hoặc \(1-0{,}1\cdot0{,}6\)).</p>` },
    { id: '1.11', tag: 'Toàn phần + Bayes', q: String.raw`<p>Ba nhà máy A, B, C sản xuất 50%, 30%, 20% số bo mạch; tỉ lệ lỗi 2%, 5%, 1%. a) Tỉ lệ lỗi của hãng? b) Lấy 1 bo mạch thấy lỗi, xác suất nó của nhà máy B?</p>`,
      sol: String.raw`<p>a) \(P(L)=0{,}5\cdot0{,}02+0{,}3\cdot0{,}05+0{,}2\cdot0{,}01=0{,}027\).</p><p>b) \(P(B|L)=\frac{0{,}3\cdot0{,}05}{0{,}027}=\frac59\approx0{,}5556\).</p>` },
    { id: '1.12', tag: 'Bayes', q: String.raw`<p>Chùm neutrino: 30% neutrino điện tử, 70% neutrino muon. Máy dò phát hiện dấu hiệu với xác suất 90% (điện tử) và 10% (muon). Quan sát thấy dấu hiệu, tính xác suất hạt là neutrino điện tử.</p>`,
      sol: String.raw`\[P(D)=0{,}3\cdot0{,}9+0{,}7\cdot0{,}1=0{,}34,\qquad P(E|D)=\frac{0{,}27}{0{,}34}=\frac{27}{34}\approx0{,}7941\]` },
    { id: '1.13*', tag: 'Bayes', q: String.raw`<p>10 người tình nghi thì 7 người là tội phạm. Máy báo đúng người có tội với xác suất 0,85; báo sai người vô tội (báo có tội) với xác suất 0,1. Tính xác suất: a) người này là tội phạm; b) máy báo có tội; c) thực sự có tội khi máy báo có tội; d) máy báo đúng.</p>`,
      sol: String.raw`<p>a) 0,7. b) \(P(B)=0{,}7\cdot0{,}85+0{,}3\cdot0{,}1=0{,}625\). c) \(P(T|B)=\frac{0{,}595}{0{,}625}=0{,}952\). d) \(0{,}7\cdot0{,}85+0{,}3\cdot0{,}9=0{,}865\).</p>` }
  ],
  gens: [
    {
      name: 'Chọn từ hộp (tổ hợp)', gen() {
        const a = R.int(6, 15), b = R.int(3, 10), k = R.int(3, 5), m = R.int(Math.max(1, k - b), k - 1), N = a + b;
        const tot = S.C(N, k), fav = S.C(a, m) * S.C(b, k - m), p1 = fav / tot, p0 = S.C(a, k) / tot;
        return {
          q: String.raw`<p>Một hộp có ${a} chính phẩm và ${b} phế phẩm. Lấy ngẫu nhiên ${k} sản phẩm. Tính xác suất:</p><p>a) Có đúng ${m} chính phẩm. &nbsp; b) Có ít nhất 1 phế phẩm.</p>`,
          fields: [{ label: 'a)', ans: p1 }, { label: 'b)', ans: 1 - p0 }],
          sol: String.raw`<p>\(|\Omega|=C_{${N}}^{${k}}=${tot}\).</p><p>a) \(P=\dfrac{C_{${a}}^{${m}}\cdot C_{${b}}^{${k - m}}}{C_{${N}}^{${k}}}=\dfrac{${S.C(a, m)}\cdot${S.C(b, k - m)}}{${tot}}\approx${F(p1)}\).</p><p>b) Biến cố đối: cả ${k} đều là chính phẩm: \(P=1-\dfrac{C_{${a}}^{${k}}}{C_{${N}}^{${k}}}=1-\dfrac{${S.C(a, k)}}{${tot}}\approx${F(1 - p0)}\).</p>`
        };
      }
    },
    {
      name: 'Các máy độc lập', gen() {
        const p = [R.step(0.05, 0.3, 0.05), R.step(0.05, 0.3, 0.05), R.step(0.05, 0.3, 0.05)], q = p.map(x => +(1 - x).toFixed(2));
        const none = q[0] * q[1] * q[2], one = p[0] * q[1] * q[2] + q[0] * p[1] * q[2] + q[0] * q[1] * p[2];
        return {
          q: String.raw`<p>Một xưởng có 3 máy hoạt động độc lập. Xác suất trong ngày mỗi máy bị hỏng lần lượt là ${T(p[0])}; ${T(p[1])}; ${T(p[2])}. Tính xác suất trong ngày: a) có ít nhất một máy hỏng; b) có đúng một máy hỏng.</p>`,
          fields: [{ label: 'a)', ans: 1 - none }, { label: 'b)', ans: one }],
          sol: String.raw`<p>Gọi \(A_i\): máy \(i\) hỏng, độc lập; \(P(\overline{A_i})=${F(q[0])};\ ${F(q[1])};\ ${F(q[2])}\).</p><p>a) \(P=1-P(\overline{A_1}\,\overline{A_2}\,\overline{A_3})=1-${F(q[0])}\cdot${F(q[1])}\cdot${F(q[2])}=1-${F(none)}=${F(1 - none)}\).</p><p>b) \(P=p_1q_2q_3+q_1p_2q_3+q_1q_2p_3=${F(p[0] * q[1] * q[2])}+${F(q[0] * p[1] * q[2])}+${F(q[0] * q[1] * p[2])}=${F(one)}\).</p>`
        };
      }
    },
    {
      name: 'Toàn phần + Bayes', gen() {
        const sh = R.parts(3, 20, 3).map(x => x * 5), d = [R.int(1, 6), R.int(1, 6), R.int(1, 6)], j = R.int(0, 2), names = ['A', 'B', 'C'];
        const s = sh.map(x => x / 100), dd = d.map(x => x / 100);
        const PL = s[0] * dd[0] + s[1] * dd[1] + s[2] * dd[2], post = s[j] * dd[j] / PL;
        return {
          q: String.raw`<p>Ba nhà máy A, B, C sản xuất lần lượt ${sh[0]}%, ${sh[1]}%, ${sh[2]}% tổng sản phẩm của một hãng; tỉ lệ phế phẩm tương ứng là ${d[0]}%, ${d[1]}%, ${d[2]}%. a) Tính tỉ lệ phế phẩm chung của hãng. b) Lấy ngẫu nhiên một sản phẩm thấy là phế phẩm. Tính xác suất nó do nhà máy ${names[j]} sản xuất.</p>`,
          fields: [{ label: 'a) P(L)', ans: PL, tol: 0.0003 }, { label: `b) P(${names[j]}|L)`, ans: post }],
          sol: String.raw`<p>Hệ đầy đủ \(\{A,B,C\}\). a) Toàn phần: \(P(L)=${F(s[0])}\cdot${F(dd[0])}+${F(s[1])}\cdot${F(dd[1])}+${F(s[2])}\cdot${F(dd[2])}=${F(PL, 5)}\).</p><p>b) Bayes: \(P(${names[j]}|L)=\dfrac{${F(s[j])}\cdot${F(dd[j])}}{${F(PL, 5)}}\approx${F(post)}\).</p>`
        };
      }
    },
    {
      name: 'Xác suất có điều kiện', gen() {
        const a = R.step(0.6, 0.95, 0.05), b = R.step(0.5, 0.9, 0.05), c = R.step(0.1, 0.45, 0.05);
        const p2 = a * b + (1 - a) * c, pu = a + p2 - a * b, post = a * b / p2;
        return {
          q: String.raw`<p>Xác suất một sinh viên đậu môn thứ nhất là ${T(a)}. Nếu đậu môn thứ nhất thì xác suất đậu môn thứ hai là ${T(b)}; nếu trượt môn thứ nhất thì xác suất đậu môn thứ hai là ${T(c)}. Tính: a) xác suất đậu môn thứ hai; b) xác suất đậu ít nhất một môn; c) biết sinh viên đậu môn thứ hai, xác suất sinh viên đã đậu môn thứ nhất.</p>`,
          fields: [{ label: 'a)', ans: p2 }, { label: 'b)', ans: pu }, { label: 'c)', ans: post }],
          sol: String.raw`<p>a) Toàn phần: \(P(A_2)=${F(a)}\cdot${F(b)}+${F(1 - a)}\cdot${F(c)}=${F(p2)}\).</p><p>b) \(P(A_1\cup A_2)=P(A_1)+P(A_2)-P(A_1A_2)=${F(a)}+${F(p2)}-${F(a * b)}=${F(pu)}\).</p><p>c) Bayes: \(P(A_1|A_2)=\dfrac{${F(a * b)}}{${F(p2)}}\approx${F(post)}\).</p>`
        };
      }
    },
    {
      name: 'Bốc lần lượt không hoàn lại', gen() {
        const N = R.pick([20, 30, 40, 50, 60, 100]), M = R.int(3, Math.floor(N / 3));
        const all = M / N * (M - 1) / (N - 1) * (M - 2) / (N - 2), third = (N - M) / N * (N - M - 1) / (N - 1) * M / (N - 2);
        return {
          q: String.raw`<p>Hộp có ${N} phiếu, trong đó ${M} phiếu trúng thưởng. Ba người lần lượt bốc mỗi người 1 phiếu (không hoàn lại). Tính xác suất: a) cả ba người đều trúng; b) chỉ người thứ ba trúng.</p>`,
          fields: [{ label: 'a)', ans: all, tol: Math.max(all * 0.01, 0.0002) }, { label: 'b)', ans: third }],
          sol: String.raw`<p>a) \(P=\dfrac{${M}}{${N}}\cdot\dfrac{${M - 1}}{${N - 1}}\cdot\dfrac{${M - 2}}{${N - 2}}\approx${F(all, 5)}\).</p><p>b) \(P(\overline{A_1}\,\overline{A_2}A_3)=\dfrac{${N - M}}{${N}}\cdot\dfrac{${N - M - 1}}{${N - 1}}\cdot\dfrac{${M}}{${N - 2}}\approx${F(third)}\).</p>`
        };
      }
    }
  ]
});

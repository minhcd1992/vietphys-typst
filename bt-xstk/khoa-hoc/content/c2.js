COURSE.chapters.push({
  id: 2, short: 'Biến ngẫu nhiên', title: 'Biến ngẫu nhiên và các phân phối thường gặp', when: 'Ngày 1 · Buổi chiều · ~4 giờ',
  intro: 'Biến ngẫu nhiên rời rạc (bảng phân phối) và liên tục (hàm mật độ), cùng 5 phân phối “quốc dân”: nhị thức, Poisson, chuẩn, đều, mũ. Đây là chương cho nhiều điểm nhất nếu thuộc dấu hiệu nhận dạng.',
  goals: [
    'Lập bảng phân phối xác suất của biến rời rạc, kiểm tra tổng bằng 1.',
    'Tìm hằng số trong hàm mật độ, tính xác suất bằng tích phân, tìm hàm phân phối \\(F(x)\\).',
    'Nhận ra ngay khi nào là nhị thức, Poisson (kể cả đổi đơn vị thời gian), chuẩn.',
    'Tra bảng Laplace \\(\\Phi(z)\\) thành thạo, kể cả tra ngược.'
  ],
  theory: String.raw`
<h3>1. Biến rời rạc</h3>
<div class="box"><p>Bảng phân phối \(P(X=x_i)=p_i\), \(p_i\ge0\), \(\sum p_i=1\). Hàm phân phối \(F(x)=P(X\le x)=\sum_{x_i\le x}p_i\); \(P(a<X\le b)=F(b)-F(a)\).</p></div>
<h3>2. Biến liên tục</h3>
<div class="box">\[f(x)\ge0,\quad \int_{-\infty}^{+\infty}f(x)\,dx=1,\quad P(a\le X\le b)=\int_a^b f(x)\,dx,\quad F(x)=\int_{-\infty}^{x}f(t)\,dt\]
<p>\(P(X=c)=0\) nên \(\le\) hay \(<\) như nhau. \(F'(x)=f(x)\).</p></div>
<h3>3. Nhị thức \(B(n,p)\)</h3>
<div class="box">\[P(X=k)=C_n^k p^k q^{n-k},\quad q=1-p,\qquad E=np,\ V=npq\]
<p>Dấu hiệu: \(n\) phép thử <b>độc lập</b>, mỗi lần cùng xác suất thành công \(p\), đếm số lần thành công.</p></div>
<h3>4. Poisson \(P(\lambda)\)</h3>
<div class="box">\[P(X=k)=\frac{\lambda^k e^{-\lambda}}{k!},\qquad E=V=\lambda\]
<p>Số sự kiện trong một khoảng thời gian/không gian với trung bình \(\lambda\). <b>Đổi đơn vị:</b> 150 cuộc/giờ ⇒ \(\lambda=2{,}5\) cuộc/phút. Tổng Poisson độc lập: \(\lambda\) cộng lại. Xấp xỉ: \(n\) lớn, \(p\) nhỏ (\(np<5\)) thì \(B(n,p)\approx P(np)\).</p></div>
<h3>5. Chuẩn \(N(\mu,\sigma^2)\) – hàm Laplace</h3>
<div class="box">\[\Phi(z)=\frac1{\sqrt{2\pi}}\int_0^z e^{-t^2/2}dt,\quad \Phi(-z)=-\Phi(z)\]
\[P(a\le X\le b)=\Phi\!\Big(\frac{b-\mu}{\sigma}\Big)-\Phi\!\Big(\frac{a-\mu}{\sigma}\Big),\quad P(X<x)=0{,}5+\Phi\!\Big(\frac{x-\mu}{\sigma}\Big),\quad P(|X-\mu|<\varepsilon)=2\Phi\!\Big(\frac{\varepsilon}{\sigma}\Big)\]</div>
<h3>6. Đều \(U(a,b)\) và mũ \(\mathrm{Exp}(\lambda)\)</h3>
<div class="box"><p>Đều: \(f=\frac1{b-a}\) trên \([a,b]\); \(P(c\le X\le d)=\frac{d-c}{b-a}\); \(E=\frac{a+b}2\), \(V=\frac{(b-a)^2}{12}\).</p>
<p>Mũ: \(f(t)=\lambda e^{-\lambda t}\ (t\ge0)\), \(F(t)=1-e^{-\lambda t}\), \(P(T>t)=e^{-\lambda t}\), \(E=\frac1\lambda\).</p></div>`,
  recipes: [
    ['Mỗi đối tượng có xác suất khác nhau (0,8; 0,6; 0,7), X = số thành công', 'Liệt kê từng giá trị của X, mỗi giá trị là tổng các tích (như chương 1). Kiểm tra tổng = 1.', '2.1'],
    ['“Bắn đến khi trúng hoặc hết n viên”', String.raw`\(P(X=k)=q^{k-1}p\) với \(k<n\), riêng \(P(X=n)=q^{n-1}\).`, '2.2'],
    ['“Chọn k từ hộp”, X = số loại I', String.raw`Siêu bội \(P(X=m)=\frac{C_a^mC_b^{k-m}}{C_{a+b}^k}\). Hàm tuyến tính \(Y=aX+b\) giữ nguyên xác suất.`, '2.3'],
    [String.raw`Hàm mật độ chứa tham số \(a, k\)`,String.raw`Giải \(\int f=1\) tìm tham số → \(P=\int_a^b f\) (chỉ lấy phần \(f\ne0\)) → \(F(x)\) chia khoảng.`, '2.4, 2.5'],
    ['n câu / sản phẩm / người độc lập, cùng xác suất p', String.raw`Nhị thức \(B(n,p)\). “Không quá 1” = \(P(0)+P(1)\).`, '2.6, 2.7'],
    ['“Trung bình … mỗi giờ / ngày / tháng”', String.raw`Poisson; nhớ <b>đổi \(\lambda\) theo khoảng thời gian hỏi</b>.`, '2.8, 2.9, 2.15'],
    ['n lớn (hàng trăm), p rất nhỏ', String.raw`Xấp xỉ Poisson \(\lambda=np\).`, '2.10'],
    ['Khối lượng, tuổi thọ, đường kính… “có phân phối chuẩn”', String.raw`Chuẩn hóa \(z=\frac{x-\mu}{\sigma}\), tra \(\Phi\). Tìm ngưỡng (thời gian bảo hành) ⇒ tra ngược.`, '2.11, 2.12, 2.16'],
    ['“Xuất hiện ngẫu nhiên trong khoảng…”', 'Phân phối đều: xác suất = độ dài khoảng thuận lợi / độ dài cả khoảng.', '2.13'],
    ['Thời gian hỏng / sống “phân phối mũ”', String.raw`\(P(T>t)=e^{-\lambda t}\); nhiều thiết bị độc lập ⇒ kết hợp nhị thức.`, '2.14']
  ],
  traps: [
    String.raw`Poisson: quên đổi \(\lambda\). Đề cho “2 tai nạn/tháng”, hỏi trong 3 tháng ⇒ \(\lambda=6\).`,
    String.raw`\(N(100,2)\): giáo trình thường viết tham số thứ hai là \(\sigma\) hoặc \(\sigma^2\) – đọc kỹ quy ước. Bài 2.11 giải với \(\sigma=2\).`,
    String.raw`\(\Phi\) trong bảng là \(\int_0^z\) (từ 0) nên \(P(X<x)=0{,}5+\Phi(\cdot)\), không phải \(\Phi(\cdot)\).`,
    String.raw`Tích phân mật độ: chỉ lấy trên miền \(f\ne0\). Ví dụ 2.4b: \(P(3\le X\le5)=\int_3^4\), không phải \(\int_3^5(ax-1)\).`,
    String.raw`Bài 2.2: giá trị cuối \(P(X=4)=q^3\) (bắn viên thứ 4 dù trúng hay trượt), không phải \(q^3p\).`
  ],
  examples: [
    { id: '2.1', tag: 'Bảng phân phối', q: String.raw`<p>3 sinh viên thi độc lập, xác suất đậu 0,8; 0,6; 0,7. X = số sinh viên đậu. a) Lập bảng phân phối. b) Tính \(P(X<2)\).</p>`,
      sol: String.raw`<p>\(P(0)=0{,}2\cdot0{,}4\cdot0{,}3=0{,}024\); \(P(1)=0{,}096+0{,}036+0{,}056=0{,}188\); \(P(2)=0{,}144+0{,}224+0{,}084=0{,}452\); \(P(3)=0{,}336\).</p>${tbl([['X', 0, 1, 2, 3], ['P', '0,024', '0,188', '0,452', '0,336']])}<p>b) \(P(X<2)=0{,}212\).</p>` },
    { id: '2.2', tag: 'Bắn đến khi trúng', q: String.raw`<p>Có 4 mũi tên, bắn lần lượt đến khi trúng hoặc hết tên, \(p=0{,}4\). X = số mũi tên đã bắn. a) Bảng phân phối. b) \(P(1\le X\le2)\).</p>`,
      sol: String.raw`${tbl([['X', 1, 2, 3, 4], ['P', '0,4', '0,6·0,4 = 0,24', '0,6²·0,4 = 0,144', '0,6³ = 0,216']])}<p>b) \(0{,}4+0{,}24=0{,}64\).</p>` },
    { id: '2.3', tag: 'Siêu bội', q: String.raw`<p>Hộp 8 sản phẩm loại A, 4 loại B; chọn 2. a) X = số loại A, tìm phân phối. b) Giá A 200 000đ, B 160 000đ; Y = số tiền phải trả, tìm phân phối.</p>`,
      sol: String.raw`<p>a) \(P(X=0)=\frac{C_4^2}{C_{12}^2}=\frac{6}{66}\), \(P(1)=\frac{32}{66}\), \(P(2)=\frac{28}{66}\).</p><p>b) \(Y=200X+160(2-X)=320+40X\) (nghìn đồng): Y = 320; 360; 400 với xác suất \(\frac1{11};\frac{16}{33};\frac{14}{33}\).</p>` },
    { id: '2.4', tag: 'Hàm mật độ', q: String.raw`<p>\(f(x)=ax-1\) trên \((2,4]\), bằng 0 ngoài. a) Tìm a. b) \(P(3\le X\le5)\). c) Tìm \(F(x)\).</p>`,
      sol: String.raw`<p>a) \(\int_2^4(ax-1)dx=6a-2=1\Rightarrow a=0{,}5\).</p><p>b) \(\int_3^4(0{,}5x-1)dx=\big[\frac{x^2}4-x\big]_3^4=0{,}75\).</p><p>c) \(F(x)=0\) (x ≤ 2); \(\frac{x^2}4-x+1\) (2 &lt; x ≤ 4); 1 (x &gt; 4).</p>` },
    { id: '2.5', tag: 'Hàm mật độ', q: String.raw`<p>\(f(x)=k(1-x^2)\) khi \(|x|\le1\). a) Tìm k. b) \(P(-2\le X\le0)\). c) \(F(x)\).</p>`,
      sol: String.raw`<p>a) \(k\cdot\frac43=1\Rightarrow k=\frac34\). b) \(\frac34\int_{-1}^0(1-x^2)dx=\frac12\). c) \(F(x)=\frac12+\frac{3x-x^3}4\) trên \([-1,1]\), 0 bên trái, 1 bên phải.</p>` },
    { id: '2.6', tag: 'Nhị thức', q: String.raw`<p>Đề 50 câu, mỗi câu 4 phương án (1 đúng), mỗi câu đúng 0,2 điểm. Thí sinh chắc chắn đúng 10 câu, còn lại chọn ngẫu nhiên. Tính xác suất được đúng 5 điểm.</p>`,
      sol: String.raw`<p>10 câu đúng = 2 điểm; cần thêm 3 điểm = 15 câu đúng trong 40 câu ngẫu nhiên. \(K\sim B(40;0{,}25)\):</p>\[P(K=15)=C_{40}^{15}(0{,}25)^{15}(0{,}75)^{25}\approx0{,}0282\]<p class="muted">Lưu ý: giáo trình ghi 0,0357 – tính lại chính xác: \(C_{40}^{15}=40\,225\,345\,056\), \((0{,}25)^{15}\approx9{,}313\cdot10^{-10}\), \((0{,}75)^{25}\approx7{,}525\cdot10^{-4}\) ⇒ \(\approx0{,}0282\).</p>` },
    { id: '2.7', tag: 'Nhị thức', q: String.raw`<p>Xác suất làm trái ngành là 0,3. Trong 10 sinh viên, tính xác suất không quá 1 người làm trái ngành.</p>`,
      sol: String.raw`\[P(X\le1)=0{,}7^{10}+10\cdot0{,}3\cdot0{,}7^9\approx0{,}0282+0{,}1211=0{,}1493\]` },
    { id: '2.8', tag: 'Poisson', q: String.raw`<p>Trung bình 150 cuộc gọi/giờ. Tính xác suất không quá 2 cuộc gọi trong 1 phút.</p>`,
      sol: String.raw`<p>\(\lambda=150/60=2{,}5\). \(P(X\le2)=e^{-2{,}5}(1+2{,}5+3{,}125)\approx0{,}5438\).</p>` },
    { id: '2.9', tag: 'Poisson', q: String.raw`<p>Trung bình 6 tín hiệu/giờ. a) P(đúng 4 tín hiệu trong 1 giờ). b) Có từ 2 tín hiệu trở lên phải ghi báo cáo; nhân viên ngủ 1 giờ. Xác suất bị kỷ luật?</p>`,
      sol: String.raw`<p>a) \(\frac{6^4e^{-6}}{4!}=54e^{-6}\approx0{,}1339\). b) \(P(X\ge2)=1-7e^{-6}\approx0{,}9826\).</p>` },
    { id: '2.10', tag: 'Xấp xỉ Poisson', q: String.raw`<p>Xác suất một ngày có tai nạn 0,005; xét 365 ngày. Tính xác suất a) có 1 ngày có tai nạn; b) có tối đa 3 ngày.</p>`,
      sol: String.raw`<p>\(\lambda=365\cdot0{,}005=1{,}825\). a) \(1{,}825e^{-1{,}825}\approx0{,}2942\). b) \(e^{-1{,}825}\big(1+1{,}825+\frac{1{,}825^2}2+\frac{1{,}825^3}6\big)\approx0{,}8872\).</p>` },
    { id: '2.11', tag: 'Chuẩn', q: String.raw`<p>\(X\sim N(100,2)\) (gam). Đạt kỹ thuật nếu \(98\le X\le103\). Tìm tỉ lệ không đạt.</p>`,
      sol: String.raw`<p>Với \(\sigma=2\): \(P(98\le X\le103)=\Phi(1{,}5)+\Phi(1)=0{,}4332+0{,}3413=0{,}7745\) ⇒ không đạt \(0{,}2255\).</p><p class="muted">Nếu hiểu \(\sigma^2=2\): \(\Phi(2{,}12)+\Phi(1{,}41)=0{,}9037\) ⇒ không đạt \(0{,}0963\).</p>` },
    { id: '2.12', tag: 'Chuẩn – tra ngược', q: String.raw`<p>Tuổi thọ \(N(11, 2^2)\) năm. a) Bảo hành 10 năm thì tỉ lệ bảo hành? b) Muốn tỉ lệ bảo hành 10% thì bảo hành bao lâu?</p>`,
      sol: String.raw`<p>a) \(P(X<10)=0{,}5-\Phi(0{,}5)=0{,}3085\).</p><p>b) \(0{,}5+\Phi(\frac{T-11}2)=0{,}1\Rightarrow\Phi(\frac{11-T}2)=0{,}4\Rightarrow\frac{11-T}2=1{,}28\Rightarrow T\approx8{,}44\) năm.</p>` },
    { id: '2.13', tag: 'Đều', q: String.raw`<p>Tàu chạy lúc 7h30; khách đến ngẫu nhiên đều từ 7h00 đến 7h30. Tính xác suất phải đợi a) ít hơn 5 phút; b) nhiều hơn 20 phút.</p>`,
      sol: String.raw`<p>\(X\sim U(0,30)\), thời gian đợi \(30-X\). a) \(X>25\): \(\frac5{30}=\frac16\). b) \(X<10\): \(\frac{10}{30}=\frac13\).</p>` },
    { id: '2.14*', tag: 'Mũ + nhị thức', q: String.raw`<p>Thời gian hỏng \(T\sim\mathrm{Exp}(1/5)\) (năm). 5 thành phần lắp ở 5 hệ thống khác nhau. Tính xác suất ít nhất 2 thành phần còn hoạt động sau 8 năm.</p>`,
      sol: String.raw`<p>\(p=P(T>8)=e^{-1{,}6}\approx0{,}2019\). \(X\sim B(5;p)\):</p>\[P(X\ge2)=1-(0{,}7981)^5-5(0{,}2019)(0{,}7981)^4\approx1-0{,}3238-0{,}4096=0{,}2666\]<p class="muted">Giáo trình ghi 0,2622 do tính \((0{,}7981)^5\approx0{,}3258\) chưa chính xác (đúng là 0,3238).</p>` },
    { id: '2.15*', tag: 'Poisson', q: String.raw`<p>Trung bình 2 tai nạn/tháng. a) Trong 3 tháng có nhiều nhất 3 tai nạn? b) Ba tháng liên tiếp, mỗi tháng nhiều nhất 1 tai nạn?</p>`,
      sol: String.raw`<p>a) \(\lambda=6\): \(e^{-6}(1+6+18+36)=61e^{-6}\approx0{,}1512\). b) \((3e^{-2})^3=27e^{-6}\approx0{,}0669\).</p>` },
    { id: '2.16*', tag: 'Chuẩn + nhị thức', q: String.raw`<p>Đạt kỹ thuật nếu \(|X-\mu|\le0{,}33\) mm, \(\sigma=0{,}3\) mm. a) Xác suất đạt. b) Lấy 5 trục, xác suất có 3 trục đạt.</p>`,
      sol: String.raw`<p>a) \(p=2\Phi(1{,}1)=0{,}7286\). b) \(C_5^3p^3q^2=10(0{,}7286)^3(0{,}2714)^2\approx0{,}2849\).</p>` }
  ],
  gens: [
    {
      name: 'Nhị thức', gen() {
        const n = R.int(6, 15), p = R.step(0.1, 0.6, 0.05), k = R.int(2, Math.min(5, n - 1));
        const pk = S.binom(n, p, k), p01 = S.binom(n, p, 0) + S.binom(n, p, 1);
        return {
          q: String.raw`<p>Tỉ lệ sản phẩm loại A của một máy là ${T(p)}. Lấy ngẫu nhiên ${n} sản phẩm (độc lập). Tính xác suất: a) có đúng ${k} sản phẩm loại A; b) có ít nhất 2 sản phẩm loại A.</p>`,
          fields: [{ label: 'a)', ans: pk }, { label: 'b)', ans: 1 - p01 }],
          sol: String.raw`<p>\(X\sim B(${n};\ ${F(p)})\).</p><p>a) \(P(X=${k})=C_{${n}}^{${k}}(${F(p)})^{${k}}(${F(1 - p)})^{${n - k}}=${S.C(n, k)}\cdot(${F(p)})^{${k}}(${F(1 - p)})^{${n - k}}\approx${F(pk)}\).</p><p>b) \(P(X\ge2)=1-P(0)-P(1)=1-(${F(1 - p)})^{${n}}-${n}(${F(p)})(${F(1 - p)})^{${n - 1}}\approx1-${F(p01)}=${F(1 - p01)}\).</p>`
        };
      }
    },
    {
      name: 'Poisson (đổi đơn vị)', gen() {
        const r = R.pick([60, 90, 120, 150, 180, 240]), t = R.pick([1, 2]), lam = r * t / 60;
        const p0 = Math.exp(-lam), p2 = p0 * (1 + lam + lam * lam / 2);
        return {
          q: String.raw`<p>Một tổng đài nhận trung bình ${r} cuộc gọi mỗi giờ. Tính xác suất trong ${t} phút tổng đài nhận được: a) không quá 2 cuộc gọi; b) ít nhất 1 cuộc gọi.</p>`,
          fields: [{ label: 'a)', ans: p2 }, { label: 'b)', ans: 1 - p0 }],
          sol: String.raw`<p>\(\lambda=\frac{${r}}{60}\cdot${t}=${F(lam)}\) cuộc / ${t} phút, \(X\sim P(${F(lam)})\).</p><p>a) \(P(X\le2)=e^{-${F(lam)}}\Big(1+${F(lam)}+\frac{${F(lam)}^2}{2}\Big)\approx${F(p2)}\).</p><p>b) \(P(X\ge1)=1-e^{-${F(lam)}}\approx${F(1 - p0)}\).</p>`
        };
      }
    },
    {
      name: 'Phân phối chuẩn', gen() {
        const mu = R.pick([50, 100, 200, 500, 20]), sg = R.pick([2, 4, 5, 10]), z1 = R.step(-2, -0.5, 0.25), z2 = R.step(0.5, 2.5, 0.25), zc = R.step(-1.5, -0.5, 0.25);
        const a = mu + z1 * sg, b = mu + z2 * sg, c = mu + zc * sg;
        const P1 = S.LapT(z2) - S.LapT(z1), P2 = 0.5 + S.LapT(zc);
        return {
          q: String.raw`<p>Khối lượng \(X\) (gam) của một loại sản phẩm có phân phối chuẩn với \(\mu=${F(mu)}\), \(\sigma=${F(sg)}\). a) Tính tỉ lệ sản phẩm có khối lượng từ ${T(a)} đến ${T(b)} gam. b) Sản phẩm nhẹ hơn ${T(c)} gam bị loại; tính tỉ lệ bị loại.</p>`,
          fields: [{ label: 'a)', ans: P1, tol: 0.003 }, { label: 'b)', ans: P2, tol: 0.003 }],
          sol: String.raw`<p>a) \(P=\Phi\!\big(\frac{${F(b)}-${F(mu)}}{${F(sg)}}\big)-\Phi\!\big(\frac{${F(a)}-${F(mu)}}{${F(sg)}}\big)=\Phi(${F(z2)})+\Phi(${F(-z1)})=${F(S.LapT(z2), 4, true)}+${F(-S.LapT(z1), 4, true)}=${F(P1)}\).</p><p>b) \(P(X<${F(c)})=0{,}5+\Phi(${F(zc)})=0{,}5-\Phi(${F(-zc)})=0{,}5-${F(-S.LapT(zc), 4, true)}=${F(P2)}\).</p>`
        };
      }
    },
    {
      name: 'Hàm mật độ có tham số', gen() {
        const m = R.int(1, 3), c = R.int(1, 3), d = R.step(0.5, c - 0.5 > 0.5 ? c - 0.5 : 0.5, 0.5);
        const k = (m + 1) / Math.pow(c, m + 1), P = Math.pow(d / c, m + 1), EX = (m + 1) / (m + 2) * c;
        return {
          q: String.raw`<p>Biến ngẫu nhiên \(X\) có hàm mật độ \(f(x)=k\,x^{${m}}\) khi \(0\le x\le ${c}\), \(f(x)=0\) ngoài đoạn đó. a) Tìm \(k\). b) Tính \(P(X\le ${T(d)})\). c) Tính \(E(X)\).</p>`,
          fields: [{ label: 'a) k', ans: k, tol: Math.max(k * 0.005, 0.0005) }, { label: 'b)', ans: P }, { label: 'c) E(X)', ans: EX }],
          sol: String.raw`<p>a) \(\int_0^{${c}}kx^{${m}}dx=k\frac{${c}^{${m + 1}}}{${m + 1}}=1\Rightarrow k=\frac{${m + 1}}{${Math.pow(c, m + 1)}}\approx${F(k)}\).</p><p>b) \(P(X\le${F(d)})=\int_0^{${F(d)}}kx^{${m}}dx=\big(\frac{${F(d)}}{${c}}\big)^{${m + 1}}\approx${F(P)}\).</p><p>c) \(E(X)=\int_0^{${c}}x\cdot kx^{${m}}dx=k\frac{${c}^{${m + 2}}}{${m + 2}}=\frac{${m + 1}}{${m + 2}}\cdot${c}\approx${F(EX)}\).</p>`
        };
      }
    },
    {
      name: 'Bảng phân phối (3 đối tượng)', gen() {
        const p = [R.step(0.5, 0.9, 0.1), R.step(0.4, 0.9, 0.1), R.step(0.5, 0.9, 0.1)], q = p.map(x => +(1 - x).toFixed(2));
        const P0 = q[0] * q[1] * q[2], P1 = p[0] * q[1] * q[2] + q[0] * p[1] * q[2] + q[0] * q[1] * p[2], P3 = p[0] * p[1] * p[2], P2 = 1 - P0 - P1 - P3;
        return {
          q: String.raw`<p>Ba sinh viên thi độc lập với xác suất đậu ${T(p[0])}; ${T(p[1])}; ${T(p[2])}. Gọi X là số sinh viên đậu. Tính \(P(X=1)\), \(P(X=2)\) và \(P(X\ge2)\).</p>`,
          fields: [{ label: 'P(X=1)', ans: P1 }, { label: 'P(X=2)', ans: P2 }, { label: 'P(X≥2)', ans: P2 + P3 }],
          sol: String.raw`<p>\(P(X=0)=${F(q[0])}\cdot${F(q[1])}\cdot${F(q[2])}=${F(P0)}\).</p><p>\(P(X=1)=${F(p[0])}\cdot${F(q[1])}\cdot${F(q[2])}+${F(q[0])}\cdot${F(p[1])}\cdot${F(q[2])}+${F(q[0])}\cdot${F(q[1])}\cdot${F(p[2])}=${F(P1)}\).</p><p>\(P(X=3)=${F(p[0])}\cdot${F(p[1])}\cdot${F(p[2])}=${F(P3)}\); \(P(X=2)=1-${F(P0)}-${F(P1)}-${F(P3)}=${F(P2)}\).</p><p>\(P(X\ge2)=${F(P2 + P3)}\).</p>`
        };
      }
    },
    {
      name: 'Phân phối mũ', gen() {
        const m = R.pick([4, 5, 8, 10]), t = R.pick([2, 3, 5, 6]), n = R.int(3, 5);
        const p = Math.exp(-t / m), all = 1 - Math.pow(1 - p, n);
        return {
          q: String.raw`<p>Tuổi thọ \(T\) (năm) của một linh kiện có phân phối mũ với tuổi thọ trung bình ${m} năm. a) Tính xác suất linh kiện còn hoạt động sau ${t} năm. b) Lắp ${n} linh kiện độc lập; tính xác suất sau ${t} năm còn ít nhất một linh kiện hoạt động.</p>`,
          fields: [{ label: 'a)', ans: p }, { label: 'b)', ans: all }],
          sol: String.raw`<p>\(E(T)=\frac1\lambda=${m}\Rightarrow\lambda=\frac1{${m}}\). a) \(P(T>${t})=e^{-${t}/${m}}\approx${F(p)}\).</p><p>b) \(1-(1-${F(p)})^{${n}}\approx${F(all)}\).</p>`
        };
      }
    }
  ]
});

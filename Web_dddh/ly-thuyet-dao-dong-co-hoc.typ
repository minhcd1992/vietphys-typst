// =========================================================================
// CẨM NANG LÝ THUYẾT & PHƯƠNG PHÁP GIẢI TOÁN: DAO ĐỘNG CƠ HỌC TOÀN DIỆN
// Chương trình Vật lí 11 (GDPT 2018) & Chuyên đề Nâng cao (9 - 10 điểm)
// Biên soạn trên nền tảng Vietphys & CeTZ 0.3.3
// =========================================================================

#import "../vietphys.typ": *
#import "@preview/cetz:0.3.3": canvas, draw

// -------------------------------------------------------------------------
// 1. CẤU HÌNH TRANG, HEADER, FOOTER & BẢNG MÀU
// -------------------------------------------------------------------------
#let c-primary = rgb("#1D3B7A")
#let c-orange = rgb("#C2410C")
#let c-amber = rgb("#D97706")
#let c-green = rgb("#15803D")
#let c-red = rgb("#DC2626")
#let c-purple = rgb("#6D28D9")
#let c-slate = rgb("#334155")
#let c-bg-soft = rgb("#FFFDF7")
#let c-bg-blue = rgb("#F0F7FF")
#let varphi = math.phi.alt

#let doc-header = vp-manual-header-fancy(
  title: "CẨM NANG VẬT LÍ 11 — GDPT 2018",
  subtitle: "CHUYÊN ĐỀ TOÀN DIỆN: DAO ĐỘNG CƠ HỌC",
  color: c-primary,
  icon: "atom",
  compact: true,
  title-size: 11pt,
  subtitle-size: 8pt,
  chapter-size: 9.5pt,
  icon-size: 18pt,
  title-gap: 3pt,
  bottom-padding: 4pt,
  chapter-label: [CHƯƠNG I: DAO ĐỘNG],
)

#let doc-footer = vp-footer-shuriken(
  title: "Học Kage",
  slogan: "Cẩm nang Lý thuyết & Kỹ thuật Giải nhanh Dao động cơ học",
  color: c-primary,
  compact: true,
  title-size: 11pt,
  slogan-size: 9.5pt,
  page-size: 9pt,
  badge-size: 26pt,
)

#show: doc => vp-page-setup(
  paper: "a4",
  margin: (x: 1.8cm, top: 2.1cm, bottom: 1.8cm),
  font: "Times New Roman",
  font-size: 11.5pt,
  leading: 0.58em,
  header-ascent: 20pt,
  footer-descent: 8pt,
  theme-preset: "ocean",
  hierarchy: "lesson",
  heading-theme: vp-heading-theme-modern.with(
    font: ("Rounded Mplus 1c", "Arial"),
    paragraph-indent: 0pt,
    numbering: "I.1.1",
  ),
  header: doc-header,
  footer: doc-footer,
  doc,
)

#let theory-table(columns: (), align: left + horizon, ..args) = {
  set text(size: 10.5pt)
  set par(justify: false, leading: 0.58em)
  show table.cell: set block(breakable: false)
  show table.cell.where(y: 0): set text(weight: "bold", fill: white)
  table(
    columns: columns,
    align: align,
    stroke: 0.6pt + rgb("#CBD5E1"),
    inset: (x: 7pt, y: 6pt),
    fill: (x, y) => if y == 0 { c-primary } else if calc.even(y) { rgb("#F8FAFC") } else { white },
    ..args,
  )
}

// Helper hộp công thức nổi bật
#let formula-card(title: none, color: c-orange, body) = block(
  width: 100%,
  fill: color.lighten(93%),
  stroke: (
    left: 3.5pt + color,
    top: 0.6pt + color.lighten(55%),
    right: 0.6pt + color.lighten(55%),
    bottom: 0.6pt + color.lighten(55%),
  ),
  radius: (right: 5pt),
  inset: (x: 11pt, y: 8.5pt),
  breakable: true,
)[
  #if title != none [
    #text(fill: color.darken(15%), weight: "bold", size: 11pt)[#title]
    #v(3pt)
  ]
  #body
]

// -------------------------------------------------------------------------
// TIÊU ĐỀ CHUYÊN ĐỀ & TỔNG QUAN
// -------------------------------------------------------------------------
#vp-lesson(
  num: "1",
  tab-text: "CHUYÊN ĐỀ",
  title: "DAO ĐỘNG CƠ HỌC TOÀN DIỆN",
  subtitle: "Hệ thống lý thuyết bản chất • Đồ thị & Vòng tròn đa trục • Con lắc lò xo & Con lắc đơn • Tắt dần & Cộng hưởng",
  style: "less_modern",
  color: c-primary,
  new-page: false,
  label: <chuyen-de-dao-dong>,
)

#vp-knowledge-box(
  type: "note",
  title: "Giới thiệu cấu trúc tài liệu",
  color: c-primary,
  content: [
    Tài liệu hệ thống hóa trọn vẹn chuyên đề *Dao động cơ học* theo chương trình GDPT 2018 (Vật lí 11) kết hợp mở rộng chuyên sâu phục vụ kì thi Tốt nghiệp THPT, Đánh giá năng lực và Học sinh giỏi:
    - *Phần I:* Bảng tổng hợp tra cứu nhanh toàn bộ hệ thống hơn 50 công thức cốt lõi và nâng cao.
    - *Phần II:* Lý thuyết nền tảng & Động học dao động điều hòa (phương trình, độ lệch pha, đồ thị $x-v-a$, hệ thức độc lập và lực kéo về).
    - *Phần III:* Năng lượng dao động & Khảo sát chuyên sâu hai hệ dao động điển hình (Con lắc lò xo ngang/thẳng đứng, lực đàn hồi – lực kéo về, Con lắc đơn).
    - *Phần IV:* Dao động tắt dần, dao động duy trì, dao động cưỡng bức và hiện tượng cộng hưởng cơ học.
    - *Phần V:* Kỹ thuật giải nhanh kinh điển (Vòng tròn lượng giác đa trục, trục phân bố thời gian, cực trị quãng đường $S_("max")$ và $S_("min")$, hệ thức hai thời điểm, tổng hợp dao động & khoảng cách cực đại).
    - *Phần VI & VII:* Phân dạng bài tập có lời giải từng bước và Đề kiểm tra đánh giá năng lực chuẩn 4 phần.
  ],
)

#{
  set text(size: 10.5pt)
  set par(leading: 0.42em)
  show outline.entry: set block(spacing: 0.45em)
  outline(
    title: [Mục lục chuyên đề],
    depth: 3,
    indent: 1.2em,
    target: selector(heading).before(<phu-luc-dap-an>),
  )
}
#pagebreak()

// =========================================================================
// PHẦN I. BẢNG TỔNG HỢP TRA CỨU NHANH TOÀN BỘ CÔNG THỨC
// =========================================================================
= Bảng tổng hợp tra cứu nhanh toàn bộ công thức <bang-tong-hop>

== Các phương trình động học và đại lượng đặc trưng

#theory-table(
  columns: (24%, 36%, 40%),
  align: (left + horizon, center + horizon, left + horizon),
  table.header([Đại lượng / Phương trình], [Biểu thức toán học], [Ý nghĩa vật lí & Giới hạn]),
  [*Phương trình li độ*],
  [$ x = A cos(omega t + varphi) $],
  [$x$: li độ (cm, m); $A$: biên độ ($A > 0$). Miền giá trị: $-A <= x <= +A$. Chiều dài quỹ đạo: $L = 2A$.],
  [*Phương trình vận tốc*],
  [$ v = x' = -omega A sin(omega t + varphi) \ = omega A cos(omega t + varphi + frac(pi, 2)) $],
  [Vận tốc *sớm pha $pi \/ 2$* so với li độ $x$. \ • Cực đại: $v_("max") = omega A$ (khi qua VTCB $x = 0$). \ • Tại hai biên ($x = plus.minus A$): $v = 0$.],
  [*Phương trình gia tốc*],
  [$ a = v' = x'' = -omega^2 x \ = omega^2 A cos(omega t + varphi + pi) $],
  [Gia tốc *ngược pha với li độ $x$* (lệch pha $pi$), *sớm pha $pi \/ 2$* so với vận tốc $v$. Vectơ $arrow(a)$ luôn hướng về VTCB. \ • Độ lớn cực đại: $|a|_("max") = omega^2 A$ (tại hai biên). \ • Tại VTCB ($x = 0$): $a = 0$.],
  [*Lực kéo về (hồi phục)*],
  [$ F_("kv") = m a = -m omega^2 x = -k x \ = F_("kv max") cos(omega t + varphi + pi) $],
  [Luôn hướng về VTCB, tỉ lệ với độ lớn li độ. \ • Độ lớn cực đại: $F_("kv max") = k A = m omega^2 A$ (tại biên). \ • Tại VTCB: $F_("kv") = 0$.],
  [*Chu kỳ, tần số, tần số góc*],
  [$ omega = frac(2 pi, T) = 2 pi f; quad T = frac(1, f) = frac(Delta t, N) $],
  [$T$ (#vp-unit("s")): thời gian thực hiện 1 dao động toàn phần. \ $f$ (#vp-unit("Hz")): số dao động toàn phần trong $1 thin "s"$. \ $omega$ (#vp-unit("rad/s")): tốc độ biến thiên góc pha.],
  [*Pha dao động & Pha ban đầu*],
  [$ Phi(t) = omega t + varphi; quad varphi = Phi(0) $],
  [$Phi(t)$ xác định trạng thái (vị trí và chiều chuyển động) tại thời điểm $t$. Quy ước chuẩn: $-pi < varphi <= pi$.],
)

== Hệ thức độc lập thời gian và năng lượng dao động

#theory-table(
  columns: (24%, 36%, 40%),
  align: (left + horizon, center + horizon, left + horizon),
  table.header([Nội dung], [Công thức trọng tâm], [Đặc điểm đồ thị & Lưu ý giải nhanh]),
  [*Hệ thức độc lập $(x, v)$*],
  [$ x^2 + frac(v^2, omega^2) = A^2 \ arrow.l.r.double (frac(x, A))^2 + (frac(v, v_("max")))^2 = 1 $],
  [Áp dụng cho hai đại lượng vuông pha tại cùng thời điểm $t$. Đồ thị biểu diễn $v$ theo $x$ là đường *elip*.],
  [*Hệ thức độc lập $(v, a)$*],
  [$
    frac(v^2, omega^2) + frac(a^2, omega^4) = A^2 \ arrow.l.r.double (frac(v, v_("max")))^2 + (frac(a, a_("max")))^2 = 1
  $],
  [Áp dụng khi biết vận tốc $v$ và gia tốc $a$ tức thời. Đồ thị biểu diễn $a$ theo $v$ là đường *elip*.],
  [*Hệ thức liên hệ $(a, x)$ và $(F_("kv"), x)$*],
  [$ a = -omega^2 x; quad F_("kv") = -k x $],
  [Hai đại lượng ngược pha. Đồ thị biểu diễn $a(x)$ hoặc $F_("kv")(x)$ là *đoạn thẳng* đi qua gốc tọa độ có hệ số góc âm.],
  [*Động năng & Thế năng*],
  [$ W_("đ") = frac(1, 2) m v^2 \ W_("t") = frac(1, 2) k x^2 = frac(1, 2) m omega^2 x^2 $],
  [Biến thiên tuần hoàn với tần số góc $omega' = 2 omega$, tần số $f' = 2 f$, chu kỳ $T' = T \/ 2$.],
  [*Cơ năng (Bảo toàn)*],
  [$ W = W_("đ") + W_("t") \ = frac(1, 2) k A^2 = frac(1, 2) m omega^2 A^2 $],
  [Khi bỏ qua ma sát, cơ năng bảo toàn ($W = "const"$), tỉ lệ thuận với bình phương biên độ $A^2$.],
  [*Vị trí khi $W_("đ") = n W_("t")$*],
  [$ x = plus.minus frac(A, sqrt(n + 1)) \ v = plus.minus frac(v_("max") sqrt(n), sqrt(n + 1)) $],
  [• $W_("đ") = W_("t")$ ($n = 1$): $x = plus.minus A sqrt(2) \/ 2$, $v = plus.minus v_("max") sqrt(2) \/ 2$. \ • $W_("đ") = 3 W_("t")$ ($n = 3$): $x = plus.minus A \/ 2$. \ • $W_("t") = 3 W_("đ")$ ($n = 1 \/ 3$): $x = plus.minus A sqrt(3) \/ 2$.],
)

== Hai hệ dao động điển hình: Con lắc lò xo và Con lắc đơn

#theory-table(
  columns: (24%, 38%, 38%),
  align: (left + horizon, center + horizon, left + horizon),
  table.header([Hệ dao động], [Công thức chu kỳ & Động lực học], [Các đại lượng đặc thù cần nhớ]),
  [*Con lắc lò xo nằm ngang*],
  [$ omega = sqrt(frac(k, m)); quad T = 2 pi sqrt(frac(m, k)) \ f = frac(1, 2 pi) sqrt(frac(k, m)) $],
  [Tại VTCB lò xo không biến dạng ($Delta l_0 = 0$). Lực đàn hồi trùng với lực kéo về: $F_("đh") = F_("kv") = k |x|$.],
  [*Con lắc lò xo thẳng đứng*],
  [$ Delta l_0 = frac(m g, k) ==> omega = sqrt(frac(g, Delta l_0)) \ T = 2 pi sqrt(frac(Delta l_0, g)) $],
  [• Chiều dài: $l_("cb") = l_0 + Delta l_0$; $l_("max/min") = l_("cb") plus.minus A$. \ • $F_("đh max") = k(Delta l_0 + A)$. \ • $F_("đh min") = k(Delta l_0 - A)$ nếu $Delta l_0 >= A$; bằng $0$ nếu $Delta l_0 < A$.],
  [*Con lắc đơn* \ ($alpha_0 <= 10 degree$)],
  [$ omega = sqrt(frac(g, l)); quad T = 2 pi sqrt(frac(l, g)) \ s = S_0 cos(omega t + varphi) $],
  [• Liên hệ: $s = l alpha$, $S_0 = l alpha_0$ ($alpha, alpha_0$ tính ra rad). \ • Vận tốc: $v = sqrt(2 g l (cos alpha - cos alpha_0))$ \ #v(1.5pt) #h(0.8em) $approx sqrt(g l (alpha_0^2 - alpha^2))$ (khi $alpha_0$ nhỏ). \ • Lực căng: $T_("c") = m g (3 cos alpha - 2 cos alpha_0)$.],
)

== Dao động tắt dần, cộng hưởng và kỹ thuật giải nhanh

#theory-table(
  columns: (24%, 38%, 38%),
  align: (left + horizon, center + horizon, left + horizon),
  table.header([Chuyên đề], [Công thức trọng tâm], [Ý nghĩa & Điều kiện áp dụng]),
  [*Con lắc lò xo tắt dần do ma sát trượt*],
  [$
    Delta A_("1/2") = frac(2 mu m g, k); quad Delta A_T = frac(4 mu m g, k) \ N approx frac(A_0, Delta A_T) = frac(k A_0, 4 mu m g); quad S approx frac(k A_0^2, 2 mu m g)
  $],
  [$Delta A_("1/2")$: độ giảm biên độ sau nửa chu kỳ; $Delta A_T$: sau 1 chu kỳ. Vật đạt tốc độ lớn nhất lần đầu tại vị trí cân bằng tạm $x_0 = plus.minus mu m g \/ k$ với $v_("max") = omega(A_0 - x_0)$.],
  [*Điều kiện cộng hưởng cơ học*],
  [$ f_("nl") = f_0 arrow.l.r.double omega_("nl") = omega_0 arrow.l.r.double T_("nl") = T_0 $],
  [Biên độ dao động cưỡng bức đạt cực đại $A_("max")$ khi tần số ngoại lực cưỡng bức bằng tần số riêng của hệ. Lực cản càng nhỏ, đỉnh cộng hưởng càng nhọn.],
  [*Cực trị quãng đường* \ ($Delta t < T \/ 2$)],
  [$ S_("max") = 2 A sin(frac(Delta varphi, 2)) \ S_("min") = 2 A [1 - cos(frac(Delta varphi, 2))] $],
  [Góc quét $Delta varphi = omega Delta t$. \ • $S_("max")$: cung quét đối xứng qua VTCB (tốc độ lớn nhất). \ • $S_("min")$: cung quét đối xứng qua vị trí biên (tốc độ nhỏ nhất).],
  [*Tổng hợp 2 DĐĐH & Khoảng cách cực đại*],
  [$
    A = sqrt(A_1^2 + A_2^2 + 2 A_1 A_2 cos Delta varphi) \ d_("max") = sqrt(A_1^2 + A_2^2 - 2 A_1 A_2 cos Delta varphi)
  $],
  [$Delta varphi = varphi_2 - varphi_1$. Công thức $A$ dùng cho dao động tổng hợp $x = x_1 + x_2$; công thức $d_("max")$ dùng cho khoảng cách $d = |x_1 - x_2|$.],
)

#pagebreak()
// =========================================================================
// PHẦN II. LÝ THUYẾT CỐT LÕI & ĐỘNG HỌC DAO ĐỘNG ĐIỀU HÒA
// =========================================================================
= Lý thuyết cốt lõi và động học dao động điều hòa <ly-thuyet-dong-hoc>

== Khái niệm dao động cơ, dao động tuần hoàn và dao động điều hòa

#vp-knowledge-box(
  type: "definition",
  title: "1. Phân biệt ba khái niệm nền tảng",
  color: c-primary,
  content: [
    - *Dao động cơ học:* Là chuyển động có giới hạn trong không gian của một vật qua lại quanh một vị trí đặc biệt gọi là *vị trí cân bằng* (thường là vị trí hợp lực tác dụng lên vật bằng $0$). Ví dụ: chiếc thuyền nhấp nhô trên mặt nước, dây đàn guitar rung động, quả lắc đồng hồ đung đưa.
    - *Dao động tuần hoàn:* Là dao động mà sau những khoảng thời gian bằng nhau ngắn nhất xác định gọi là *chu kỳ ($T$)*, vật trở lại đúng vị trí cũ theo đúng chiều cũ (trạng thái dao động được lặp lại hoàn toàn).
    - *Dao động điều hòa:* Là dao động tuần hoàn trong đó li độ của vật là một hàm cosin (hoặc sin) của thời gian.
  ],
)

#formula-card(title: "Phương trình chuẩn của dao động điều hòa", color: c-orange)[
  $ x = A cos(omega t + varphi) $
  Trong đó:
  - *$x$*: Li độ dao động (#vp-unit("cm") hoặc #vp-unit("m")), là tọa độ (độ dời có hướng) của chất điểm so với vị trí cân bằng $O$ tại thời điểm $t$. Li độ nhận giá trị đại số trên đoạn $[-A; +A]$, còn *khoảng cách* từ vật đến VTCB là $d = |x| >= 0$.
  - *$A$*: Biên độ dao động ($A > 0$), là độ lớn cực đại của li độ. Quỹ đạo dao động điều hòa là một đoạn thẳng đối xứng qua $O$ có chiều dài *$L = 2A$*. Trong một chu kỳ $T$, vật luôn đi được quãng đường *$S_T = 4A$* và trong nửa chu kỳ $T/2$ luôn đi được quãng đường *$S_("T/2") = 2A$* (không phụ thuộc vị trí xuất phát).
  - *$omega$*: Tần số góc (#vp-unit("rad/s"), $omega > 0$), đặc trưng cho tốc độ biến thiên của góc pha: $omega = frac(2 pi, T) = 2 pi f$.
  - *$(omega t + varphi)$*: Pha dao động tại thời điểm $t$ (#vp-unit("rad")), cho phép xác định duy nhất trạng thái dao động (gồm cả vị trí $x$ và chiều chuyển động thông qua dấu của vận tốc $v$).
  - *$varphi$*: Pha ban đầu tại thời điểm $t = 0$ (#vp-unit("rad")), phụ thuộc vào cách chọn gốc thời gian và chiều dương trục tọa độ (quy ước $-pi < varphi <= pi$).
]

#vp-knowledge-box(
  type: "theorem",
  title: "2. Mối liên hệ bản chất với chuyển động tròn đều",
  color: c-primary,
  content: [
    Một chất điểm $M$ chuyển động tròn đều trên đường tròn tâm $O$, bán kính $R = A$ với tốc độ góc $omega$ ngược chiều kim đồng hồ thì hình chiếu vuông góc $P$ của $M$ lên trục đường kính $O x$ dao động điều hòa với phương trình $x = A cos(omega t + varphi)$. Đây là cơ sở lý thuyết trực tiếp của *phương pháp vòng tròn lượng giác*.
  ],
)

== Phương trình vận tốc, gia tốc, lực kéo về và quan hệ pha

Lấy đạo hàm bậc nhất và bậc hai của li độ $x(t)$ theo thời gian $t$, đồng thời áp dụng định luật II Newton cho chất điểm khối lượng $m$:

#grid(
  columns: (1fr, 1fr),
  column-gutter: 10pt,
  formula-card(title: "1. Phương trình vận tốc v(t)", color: c-amber)[
    $ v = x' = -omega A sin(omega t + varphi) \ = omega A cos(omega t + varphi + frac(pi, 2)) $
    - Vận tốc $v$ luôn *sớm pha $pi/2$* so với li độ $x$.
    - Vectơ $arrow(v)$ luôn *cùng hướng với chiều chuyển động* ($v > 0$ khi đi theo chiều dương, $v < 0$ khi đi theo chiều âm).
    - Tốc độ cực đại $|v|_("max") = v_("max") = omega A$ khi vật qua VTCB ($x = 0$).
    - Tốc độ cực tiểu $|v|_("min") = 0$ khi vật ở hai vị trí biên ($x = plus.minus A$). Tại biên, vận tốc đổi dấu (vật đổi chiều chuyển động).
  ],
  formula-card(title: "2. Phương trình gia tốc a(t) & Lực kéo về", color: c-green)[
    $ a = v' = x'' = -omega^2 x = omega^2 A cos(omega t + varphi + pi) $
    $ F_("kv") = m a = -m omega^2 x = -k x $
    - Gia tốc $a$ và lực kéo về $F_("kv")$ luôn *ngược pha với li độ $x$* (lệch pha $pi$) và *sớm pha $pi/2$ so với vận tốc $v$*.
    - Vectơ $arrow(a)$ và $arrow(F)_("kv")$ *luôn hướng về vị trí cân bằng $O$*, đổi chiều khi vật đi qua VTCB ($x = 0$).
    - Độ lớn cực đại: $|a|_("max") = omega^2 A$, $F_("kv max") = k A$ tại hai biên ($x = plus.minus A$).
    - Độ lớn cực tiểu: $|a|_("min") = 0$, $F_("kv min") = 0$ tại VTCB ($x = 0$).
  ],
)

#v(4pt)
#vp-knowledge-box(
  type: "warning",
  title: "Bẫy nhận thức thường gặp trong đề thi Tốt nghiệp THPT & Đánh giá năng lực",
  content: [
    - *Từ VTCB ra biên:* Tốc độ giảm từ $v_("max")$ về $0$, độ lớn gia tốc tăng từ $0$ đến $a_("max")$. Đây là chuyển động *chậm dần* (tuyệt đối *không* có chữ "đều" vì gia tốc biến thiên điều hòa). Lúc này $arrow(v)$ và $arrow(a)$ ngược chiều ($v dot a < 0$, nhưng tích $x dot v > 0$).
    - *Từ biên về VTCB:* Tốc độ tăng từ $0$ đến $v_("max")$, độ lớn gia tốc giảm từ $a_("max")$ về $0$. Đây là chuyển động *nhanh dần* (*không* "đều"). Lúc này $arrow(v)$ và $arrow(a)$ cùng chiều ($v dot a > 0$, nhưng tích $x dot v < 0$).
    - *Phân biệt giá trị đại số và độ lớn (tốc độ):* Ở biên dương $x = +A$, li độ cực đại nhưng gia tốc nhận *giá trị đại số cực tiểu* $a = -omega^2 A$ (trong khi *độ lớn* gia tốc đạt cực đại $|a| = omega^2 A$). Qua VTCB theo chiều âm, vận tốc nhận giá trị cực tiểu $v = -omega A$ nhưng *tốc độ* đạt cực đại $|v| = omega A$.
  ],
)

=== Đồ thị đồng bộ theo thời gian của li độ, vận tốc và gia tốc (Hình 1.1)

Hình 1.1 biểu diễn đồng thời ba đường cong $x(t)$, $v(t)$ và $a(t)$ của cùng một dao động điều hòa với pha ban đầu $varphi = 0$ ($x = A cos omega t$) trong khoảng thời gian $2 T$.

#block(
  width: 100%,
  fill: c-bg-soft,
  stroke: 0.8pt + rgb("#E2E8F0"),
  radius: 6pt,
  inset: 10pt,
  breakable: false,
)[
  #align(center)[
    #text(
      weight: "bold",
      size: 10.5pt,
      fill: c-primary,
    )[Hình 1.1: Đồ thị so sánh pha giữa Li độ $x(t)$, Vận tốc $v(t)$ và Gia tốc $a(t)$ khi $varphi = 0$]
    #v(4pt)
    #{
      show math.frac: math.inline
      canvas(length: 0.90cm, {
        import draw: *
        let x0 = 1.6
        let w-period = 5.6 // 1 chu kỳ T = 5.6 đơn vị; 2T = 11.2 đơn vị
        let x-max = x0 + 2 * w-period + 0.8
        let amp = 0.9

        // Lưới gióng thẳng đứng tại các mốc T/4
        for k in range(0, 9) {
          let xk = x0 + k * (w-period / 4)
          line((xk, 0.35), (xk, 8.15), stroke: (paint: rgb("#CBD5E1"), thickness: 0.5pt, dash: "dashed"))
        }

        // Nhãn các mốc thời gian ở đáy
        let labels-t = ($0$, $T/4$, $T/2$, $3T/4$, $T$, $5T/4$, $3T/2$, $7T/4$, $2T$)
        for (k, lbl) in labels-t.enumerate() {
          let xk = x0 + k * (w-period / 4)
          content((xk, 0.05), text(size: 8.5pt, fill: c-slate)[#lbl])
        }

        // 1. TRỤC TRÊN: LI ĐỘ x(t) = A cos(wt) (y_center = 6.9)
        let y1 = 6.9
        line((x0 - 0.3, y1), (x-max, y1), stroke: 0.8pt + black, mark: (end: ">"))
        line((x0, y1 - 1.15), (x0, y1 + 1.25), stroke: 0.8pt + black, mark: (end: ">"))
        content((x-max + 0.25, y1), text(size: 9pt, weight: "bold")[$t$])
        content((x0 + 0.45, y1 + 1.2), text(size: 9pt, weight: "bold", fill: c-orange)[$x(t)$])
        content((x0 - 0.42, y1 + amp), text(size: 8.5pt, weight: "bold", fill: c-orange)[$+A$])
        content((x0 - 0.42, y1 - amp), text(size: 8.5pt, weight: "bold", fill: c-orange)[$-A$])
        content((x0 - 0.22, y1 - 0.22), text(size: 8pt)[$O$])

        let pts-x = range(0, 161).map(i => {
          let u = (2 * w-period) * i / 160
          let phase = 2 * calc.pi * u / w-period
          (x0 + u, y1 + amp * calc.cos(phase))
        })
        line(..pts-x, stroke: 1.6pt + c-orange)
        circle((x0, y1 + amp), radius: 0.08, fill: c-orange, stroke: 0.6pt + black)

        // 2. TRỤC GIỮA: VẬN TỐC v(t) = -v_max sin(wt) (y_center = 4.25)
        let y2 = 4.25
        line((x0 - 0.3, y2), (x-max, y2), stroke: 0.8pt + black, mark: (end: ">"))
        line((x0, y2 - 1.15), (x0, y2 + 1.25), stroke: 0.8pt + black, mark: (end: ">"))
        content((x-max + 0.25, y2), text(size: 9pt, weight: "bold")[$t$])
        content((x0 + 0.45, y2 + 1.2), text(size: 9pt, weight: "bold", fill: c-amber)[$v(t)$])
        content((x0 - 0.58, y2 + amp), text(size: 8pt, weight: "bold", fill: c-amber)[$+v_("max")$])
        content((x0 - 0.58, y2 - amp), text(size: 8pt, weight: "bold", fill: c-amber)[$-v_("max")$])
        content((x0 - 0.22, y2 - 0.22), text(size: 8pt)[$O$])

        let pts-v = range(0, 161).map(i => {
          let u = (2 * w-period) * i / 160
          let phase = 2 * calc.pi * u / w-period
          (x0 + u, y2 - amp * calc.sin(phase))
        })
        line(..pts-v, stroke: 1.6pt + c-amber)
        circle((x0, y2), radius: 0.08, fill: c-amber, stroke: 0.6pt + black)

        // 3. TRỤC DƯỚI: GIA TỐC a(t) = -a_max cos(wt) (y_center = 1.6)
        let y3 = 1.6
        line((x0 - 0.3, y3), (x-max, y3), stroke: 0.8pt + black, mark: (end: ">"))
        line((x0, y3 - 1.15), (x0, y3 + 1.25), stroke: 0.8pt + black, mark: (end: ">"))
        content((x-max + 0.25, y3), text(size: 9pt, weight: "bold")[$t$])
        content((x0 + 0.45, y3 + 1.2), text(size: 9pt, weight: "bold", fill: c-red)[$a(t)$])
        content((x0 - 0.58, y3 + amp), text(size: 8pt, weight: "bold", fill: c-red)[$+a_("max")$])
        content((x0 - 0.58, y3 - amp), text(size: 8pt, weight: "bold", fill: c-red)[$-a_("max")$])
        content((x0 - 0.22, y3 - 0.22), text(size: 8pt)[$O$])

        let pts-a = range(0, 161).map(i => {
          let u = (2 * w-period) * i / 160
          let phase = 2 * calc.pi * u / w-period
          (x0 + u, y3 - amp * calc.cos(phase))
        })
        line(..pts-a, stroke: 1.6pt + c-red)
        circle((x0, y3 - amp), radius: 0.08, fill: c-red, stroke: 0.6pt + black)

        // Chú thích độ lệch pha T/4 ở phía trên
        let x-q1 = x0 + 3 * (w-period / 4)
        let x-q2 = x0 + 4 * (w-period / 4)
        line((x-q1, 8.2), (x-q2, 8.2), stroke: 0.9pt + c-primary, mark: (start: ">", end: ">"))
        content(((x-q1 + x-q2) / 2, 8.55), text(
          size: 8pt,
          weight: "bold",
          fill: c-primary,
        )[Đỉnh $v$ sớm hơn đỉnh $x$ một khoảng $Delta t = T/4$ (sớm pha $pi/2$)])
      })
    }
  ]
  #v(2pt)
  *Nhận xét trực quan từ Hình 1.1:*
  - Khi đồ thị $x(t)$ ở cực trị (đỉnh $+A$ hoặc đáy $-A$) thì đồ thị $v(t)$ cắt trục hoành ($v = 0$) và đồ thị $a(t)$ ở cực trị ngược dấu ($-a_("max")$ hoặc $+a_("max")$).
  - Khi đồ thị $x(t)$ cắt trục hoành ($x = 0$, qua VTCB) theo chiều đi xuống ($v < 0$) tại $t = T/4$ thì $v(t)$ đạt đáy $-v_("max")$; khi $x(t)$ cắt trục hoành theo chiều đi lên ($v > 0$) tại $t = 3T/4$ thì $v(t)$ đạt đỉnh $+v_("max")$.
]

== Các hệ thức độc lập thời gian và đồ thị trong không gian pha

Quy tắc tổng quát:
- *Hai đại lượng vuông pha* ($Delta varphi = plus.minus pi/2$): luôn thỏa mãn hệ thức dạng $(frac(u, u_("max")))^2 + (frac(w, w_("max")))^2 = 1$ (đồ thị là *đường elip*).
- *Hai đại lượng cùng pha* ($Delta varphi = 0$): thỏa mãn $frac(u, u_("max")) = frac(w, w_("max"))$ (đồ thị là *đoạn thẳng* qua gốc tọa độ có hệ số góc dương).
- *Hai đại lượng ngược pha* ($Delta varphi = pi$): thỏa mãn $frac(u, u_("max")) = -frac(w, w_("max"))$ (đồ thị là *đoạn thẳng* qua gốc tọa độ có hệ số góc âm).

#theory-table(
  columns: (26%, 40%, 34%),
  align: (left + horizon, center + horizon, left + horizon),
  table.header([Cặp đại lượng khảo sát], [Phương trình độc lập thời gian], [Dạng đồ thị biểu diễn]),
  [*Li độ $x$ và Vận tốc $v$* \ (Vuông pha)],
  [$ (frac(x, A))^2 + (frac(v, omega A))^2 = 1 \ arrow.l.r.double A^2 = x^2 + frac(v^2, omega^2) $],
  [*Đường elip* có hai bán trục là $A$ và $v_("max") = omega A$.],
  [*Vận tốc $v$ và Gia tốc $a$* \ (Vuông pha)],
  [$
    (frac(v, omega A))^2 + (frac(a, omega^2 A))^2 = 1 \ arrow.l.r.double A^2 = frac(v^2, omega^2) + frac(a^2, omega^4)
  $],
  [*Đường elip* có hai bán trục là $v_("max") = omega A$ và $a_("max") = omega^2 A$.],
  [*Vận tốc $v$ và Lực kéo về $F_("kv")$* \ (Vuông pha)],
  [$ (frac(v, omega A))^2 + (frac(F_("kv"), k A))^2 = 1 $],
  [*Đường elip* có hai bán trục là $v_("max") = omega A$ và $F_("kv max") = k A$.],
  [*Gia tốc $a$ và Li độ $x$* \ (Ngược pha)],
  [$ a = -omega^2 x quad ("với " -A <= x <= +A) $],
  [*Đoạn thẳng* qua gốc tọa độ $O$, nằm ở góc phần tư thứ II và IV.],
  [*Lực kéo về $F_("kv")$ và Gia tốc $a$* \ (Cùng pha)],
  [$ F_("kv") = m a quad ("với " -a_("max") <= a <= +a_("max")) $],
  [*Đoạn thẳng* qua gốc tọa độ $O$, nằm ở góc phần tư thứ I và III.],
)

#pagebreak()
// =========================================================================
// PHẦN III. NĂNG LƯỢNG & CÁC HỆ DAO ĐỘNG ĐIỂN HÌNH
// =========================================================================
= Động lực học, năng lượng và các hệ dao động điển hình <nang-luong-he-dao-dong>

== Động năng, thế năng và sự bảo toàn cơ năng trong dao động điều hòa

Xét vật khối lượng $m$ dao động điều hòa với phương trình $x = A cos(omega t + varphi)$ và độ cứng tương đương $k = m omega^2$:

#formula-card(title: "1. Biểu thức tức thời và quy luật biến thiên của năng lượng", color: c-primary)[
  - *Thế năng* (chọn mốc thế năng tại vị trí cân bằng $x = 0$):
    $
      W_("t") = frac(1, 2) k x^2 = frac(1, 2) k A^2 cos^2(omega t + varphi) = frac(W, 2) + frac(W, 2) cos(2 omega t + 2 varphi)
    $
  - *Động năng*:
    $
      W_("đ") = frac(1, 2) m v^2 = frac(1, 2) m omega^2 A^2 sin^2(omega t + varphi) = frac(W, 2) - frac(W, 2) cos(2 omega t + 2 varphi)
    $
  - *Cơ năng toàn phần* (bảo toàn khi không có ma sát):
    $
      W = W_("đ") + W_("t") = frac(1, 2) k A^2 = frac(1, 2) m omega^2 A^2 = 2 pi^2 m f^2 A^2 = frac(2 pi^2 m A^2, T^2) = W_("đ max") = W_("t max") = "const"
    $
]

#vp-knowledge-box(
  type: "theorem",
  title: "2. Các tính chất quan trọng của Động năng và Thế năng",
  color: c-green,
  content: [
    1. *Chu kỳ và tần số biến thiên:* Nếu li độ $x$, vận tốc $v$, gia tốc $a$ biến thiên điều hòa với tần số góc $omega$, tần số $f$, chu kỳ $T$ thì động năng $W_("đ")$ và thế năng $W_("t")$ biến thiên tuần hoàn với:
      $ omega' = 2 omega, quad f' = 2 f, quad T' = frac(T, 2) $
      (Lưu ý: $W_("đ")$ và $W_("t")$ biến thiên điều hòa quanh giá trị trung bình $overline(W)_("đ") = overline(W)_("t") = W/2$ với biên độ $W/2$).
    2. *Khoảng thời gian đặc biệt:* Trong 1 chu kỳ $T$, có *4 lần* động năng bằng thế năng ($W_("đ") = W_("t") = W/2$) tại các vị trí $x = plus.minus frac(A sqrt(2), 2)$. Khoảng thời gian giữa hai lần liên tiếp động năng bằng thế năng luôn là *$Delta t = frac(T', 2) = frac(T, 4)$*.
    3. *Hiệu động năng và thế năng:* $Delta W = W_("đ") - W_("t") = -W cos(2 omega t + 2 varphi) = frac(1, 2) k (A^2 - 2 x^2)$.
    4. *Công thức giải nhanh tại vị trí $W_("đ") = n W_("t")$* (với $n > 0$):
      $
        W = W_("đ") + W_("t") = (n + 1) W_("t") = frac(n + 1, n) W_("đ") ==> cases(
          x = plus.minus frac(A, sqrt(n + 1)),
          a = plus.minus frac(a_("max"), sqrt(n + 1)),
          v = plus.minus v_("max") sqrt(frac(n, n + 1))
        )
      $
  ],
)

=== Vòng tròn tham chiếu và đồ thị parabol năng lượng theo li độ (Hình 1.2)

#block(
  width: 100%,
  fill: c-bg-soft,
  stroke: 0.8pt + rgb("#E2E8F0"),
  radius: 6pt,
  inset: 10pt,
  breakable: false,
)[
  #align(center)[
    #text(
      weight: "bold",
      size: 10.5pt,
      fill: c-primary,
    )[Hình 1.2: Liên hệ vòng tròn tham chiếu (trái) và Đồ thị chuyển hóa Động năng – Thế năng theo li độ $x$ (phải)]
    #v(4pt)
    #{
      show math.frac: math.inline
      canvas(length: 0.92cm, {
        import draw: *

        // --- KHỐI TRÁI: VÒNG TRÒN THAM CHIẾU (tâm tại (3.4, 2.5)) ---
        let cx = 3.4
        let cy = 2.5
        let rad = 2.0

        line((cx - 2.6, cy), (cx + 2.8, cy), stroke: 0.8pt + black, mark: (end: ">"))
        line((cx, cy - 2.3), (cx, cy + 2.5), stroke: 0.8pt + black, mark: (end: ">"))
        content((cx + 3.0, cy), text(size: 9pt, weight: "bold")[$x$])
        content((cx, cy + 2.75), text(size: 9pt, weight: "bold")[$y$])

        circle((cx, cy), radius: rad, fill: rgb("#FEF9EE"), stroke: 1.5pt + c-amber)
        circle((cx, cy), radius: 0.06, fill: black)
        content((cx - 0.22, cy - 0.25), text(size: 8.5pt, weight: "bold")[$O$])
        content((cx + rad + 0.25, cy - 0.28), text(size: 8.5pt, weight: "bold", fill: c-orange)[$+A$])
        content((cx - rad - 0.25, cy - 0.28), text(size: 8.5pt, weight: "bold", fill: c-orange)[$-A$])

        // Bán kính OM tại góc 45 độ (W_d = W_t)
        let mx = cx + rad * calc.cos(45deg)
        let my = cy + rad * calc.sin(45deg)
        line((cx, cy), (mx, my), stroke: 1.6pt + c-orange)
        line((mx, my), (mx, cy), stroke: (paint: c-slate, thickness: 0.7pt, dash: "dashed"))
        circle((mx, my), radius: 0.09, fill: c-orange, stroke: 0.6pt + black)
        circle((mx, cy), radius: 0.09, fill: c-amber, stroke: 0.6pt + black)
        content((mx + 0.45, my + 0.2), text(size: 8.5pt, weight: "bold", fill: c-orange)[$M(t)$])
        content((mx, cy - 0.32), text(size: 8pt, weight: "bold", fill: c-primary)[$P(x)$])

        // Cung góc quay
        arc((cx + 0.65, cy), start: 0deg, stop: 45deg, radius: 0.65, stroke: 0.8pt + c-orange)
        content((cx + 0.88, cy + 0.32), text(size: 8pt, fill: c-orange)[$Phi$])
        content((cx, -0.15), text(size: 8.5pt, weight: "bold", fill: c-slate)[A. Hình chiếu chuyển động tròn đều])

        // --- KHỐI PHẢI: ĐỒ THỊ PARABOL NĂNG LƯỢNG (gốc tại (11.2, 1.0)) ---
        let gx = 11.2
        let gy = 1.0
        let gw = 2.65 // tương ứng biên độ A
        let gh = 3.2 // tương ứng cơ năng W

        line((gx - 3.2, gy), (gx + 3.3, gy), stroke: 0.8pt + black, mark: (end: ">"))
        line((gx, gy - 0.3), (gx, gy + 3.8), stroke: 0.8pt + black, mark: (end: ">"))
        content((gx + 3.5, gy), text(size: 9pt, weight: "bold")[$x$])
        content((gx + 0.9, gy + 3.78), text(size: 9pt, weight: "bold")[$W, W_("đ"), W_("t")$])

        content((gx - 0.2, gy - 0.25), text(size: 8.5pt, weight: "bold")[$O$])
        content((gx + gw + 0.12, gy - 0.28), text(size: 8.5pt, weight: "bold", fill: c-orange)[$+A$])
        content((gx - gw - 0.12, gy - 0.28), text(size: 8.5pt, weight: "bold", fill: c-orange)[$-A$])

        // Đường cơ năng W = const
        line((gx - gw, gy + gh), (gx + gw, gy + gh), stroke: 1.6pt + c-green)
        content((gx + gw + 0.72, gy + gh), text(size: 8.5pt, weight: "bold", fill: c-green)[$W = "const"$])

        // Parabol thế năng Wt = W * (x/A)^2 (ngửa lên)
        let pts-wt = range(-50, 51).map(i => {
          let ratio = i / 50
          (gx + ratio * gw, gy + gh * ratio * ratio)
        })
        line(..pts-wt, stroke: 1.6pt + c-orange)
        content((gx - gw + 0.65, gy + gh - 0.4), text(size: 8.5pt, weight: "bold", fill: c-orange)[$W_("t")(x)$])

        // Parabol động năng Wd = W * (1 - (x/A)^2) (úp xuống)
        let pts-wd = range(-50, 51).map(i => {
          let ratio = i / 50
          (gx + ratio * gw, gy + gh * (1 - ratio * ratio))
        })
        line(..pts-wd, stroke: (paint: c-primary, thickness: 1.6pt, dash: "dashed"))
        content((gx + 1.85, gy + 2.55), text(size: 8.5pt, weight: "bold", fill: c-primary)[$W_("đ")(x)$])

        // Giao điểm Wd = Wt = W/2 tại x = +- A / sqrt(2)
        let x-int = gw * calc.cos(45deg)
        let y-int = gy + gh / 2
        line((gx - x-int, y-int), (gx - x-int, gy), stroke: (paint: c-slate, thickness: 0.6pt, dash: "dotted"))
        line((gx + x-int, y-int), (gx + x-int, gy), stroke: (paint: c-slate, thickness: 0.6pt, dash: "dotted"))
        line((gx - x-int, y-int), (gx + x-int, y-int), stroke: (paint: c-slate, thickness: 0.6pt, dash: "dotted"))
        circle((gx - x-int, y-int), radius: 0.08, fill: c-amber, stroke: 0.5pt + black)
        circle((gx + x-int, y-int), radius: 0.08, fill: c-amber, stroke: 0.5pt + black)
        content((gx + x-int - 0.12, gy - 0.32), text(size: 7.5pt, fill: c-slate)[$+A sqrt(2) \/ 2$])
        content((gx - x-int + 0.12, gy - 0.32), text(size: 7.5pt, fill: c-slate)[$-A sqrt(2) \/ 2$])
        content((gx - 0.38, y-int + 0.18), text(size: 8pt, weight: "bold", fill: c-amber)[$W \/ 2$])
        content((gx, -0.15), text(size: 8.5pt, weight: "bold", fill: c-slate)[B. Đồ thị năng lượng theo li độ $x$])
      })
    }
  ]
]

== Khảo sát chuyên sâu Con lắc lò xo (Nằm ngang & Thẳng đứng)

=== Chu kỳ, tần số và bài toán ghép lò xo – thay đổi khối lượng

Đối với mọi con lắc lò xo (nằm ngang, thẳng đứng hay đặt trên mặt phẳng nghiêng góc $beta$ không ma sát), tần số góc và chu kỳ *chỉ phụ thuộc vào độ cứng $k$ và khối lượng $m$*, không phụ thuộc biên độ $A$ hay gia tốc trọng trường $g$:
$ omega = sqrt(frac(k, m)); quad T = 2 pi sqrt(frac(m, k)); quad f = frac(1, 2 pi) sqrt(frac(k, m)) $

- *Thay đổi khối lượng vật nặng:* Cùng một lò xo độ cứng $k$, chu kỳ tỉ lệ thuận với căn bậc hai của khối lượng ($T^2 prop m$):
  - Gắn vật $m = m_1 + m_2 ==> T^2 = T_1^2 + T_2^2$.
  - Gắn vật $m = |m_1 - m_2| ==> T^2 = |T_1^2 - T_2^2|$.
- *Cắt và ghép lò xo:* Một lò xo tự nhiên có chiều dài $l_0$, độ cứng $k_0$ khi cắt thành các đoạn $l_1, l_2, ...$ thì tích độ cứng và chiều dài không đổi: *$k_0 l_0 = k_1 l_1 = k_2 l_2$*.
  #v(2pt)
  - *Ghép nối tiếp* ($k_1$ nối tiếp $k_2$): $frac(1, k_("nt")) = frac(1, k_1) + frac(1, k_2) ==> T_("nt")^2 = T_1^2 + T_2^2$.
  - *Ghép song song* ($k_1$ song song $k_2$): $k_("ss") = k_1 + k_2 ==> frac(1, T_("ss")^2) = frac(1, T_1^2) + frac(1, T_2^2)$.

=== Con lắc lò xo thẳng đứng: Chiều dài, Lực kéo về và Lực đàn hồi

Khi treo vật nặng khối lượng $m$ vào lò xo có chiều dài tự nhiên $l_0$ theo phương thẳng đứng, tại vị trí cân bằng $O$ lò xo đã giãn một đoạn $Delta l_0$ sao cho lực đàn hồi cân bằng với trọng lực:
$ k Delta l_0 = m g ==> Delta l_0 = frac(m g, k) = frac(g, omega^2) ==> T = 2 pi sqrt(frac(Delta l_0, g)) $

- *Chiều dài của lò xo trong quá trình dao động* (chọn trục $O x$ thẳng đứng hướng xuống):
  $
    l = l_("cb") + x = l_0 + Delta l_0 + x ==> cases(
      l_("max") = l_0 + Delta l_0 + A quad "(tại biên dưới " x = +A")",
      l_("min") = l_0 + Delta l_0 - A quad "(tại biên trên " x = -A")",
      l_("cb") = frac(l_("max") + l_("min"), 2) "," quad A = frac(l_("max") - l_("min"), 2)
    )
  $

#vp-knowledge-box(
  type: "warning",
  title: "Phân biệt tuyệt đối giữa Lực kéo về và Lực đàn hồi của con lắc lò xo thẳng đứng",
  content: [
    #theory-table(
      columns: (24%, 38%, 38%),
      align: (left + horizon, left + horizon, left + horizon),
      table.header([Tiêu chí], [Lực kéo về (Lực hồi phục) $F_("kv")$], [Lực đàn hồi của lò xo $F_("đh")$]),
      [*Bản chất*],
      [Là *hợp lực* của tất cả các lực tác dụng lên vật (gồm trọng lực $arrow(P)$ và lực đàn hồi $arrow(F)_("đh")$).],
      [Là lực xuất hiện khi lò xo bị biến dạng (giãn hoặc nén), tác dụng vào cả vật nặng và điểm treo $I$.],
      [*Vị trí triệt tiêu ($F = 0$)*],
      [Triệt tiêu tại *vị trí cân bằng* $O$ ($x = 0$).],
      [Triệt tiêu tại *vị trí lò xo không biến dạng* ($x = -Delta l_0$ với chiều dương hướng xuống).],
      [*Biểu thức độ lớn*],
      [$F_("kv") = k |x| = m omega^2 |x|$],
      [$F_("đh") = k |Delta l_0 + x|$ (chiều dương hướng xuống).],
      [*Giá trị cực đại*],
      [$F_("kv max") = k A$ (tại hai biên $x = plus.minus A$).],
      [$F_("đh max") = k (Delta l_0 + A)$ (tại biên dưới $x = +A$).],
      [*Giá trị cực tiểu*],
      [$F_("kv min") = 0$ (tại VTCB $x = 0$).],
      [• Nếu $Delta l_0 >= A$ (lò xo luôn giãn): $F_("đh min") = k (Delta l_0 - A)$ tại biên trên $x = -A$. \ • Nếu $Delta l_0 < A$ (lò xo có nén): $F_("đh min") = 0$ tại vị trí tự nhiên $x = -Delta l_0$.],
    )
    *Bí quyết tính thời gian lò xo nén – giãn trong 1 chu kỳ (khi $A > Delta l_0$):*
    Trên vòng tròn lượng giác bán kính $A$, vị trí lò xo không biến dạng ứng với li độ $x = -Delta l_0$ (hoặc $+Delta l_0$ nếu chọn chiều dương hướng lên). Đặt góc $alpha^*$ sao cho $cos alpha^* = Delta l_0 \/ A$ ($0 < alpha^* < pi \/ 2$):
    #v(2pt)
    - Thời gian lò xo bị *nén* trong 1 chu kỳ: $Delta t_("nén") = frac(2 alpha^*, omega) = frac(alpha^*, pi) T$.
    #v(2pt)
    - Thời gian lò xo bị *giãn* trong 1 chu kỳ: $Delta t_("giãn") = T - Delta t_("nén")$.
  ],
)

== Khảo sát chuyên sâu Con lắc đơn

Con lắc đơn gồm vật nhỏ khối lượng $m$ treo ở đầu một sợi dây mảnh, không giãn, khối lượng không đáng kể, chiều dài $l$. Khi kéo vật lệch khỏi phương thẳng đứng góc $alpha_0$ rồi thả nhẹ:
- *Điều kiện dao động điều hòa:* Bỏ qua mọi ma sát, lực cản và biên độ góc đủ nhỏ ($alpha_0 <= 10 degree approx "0,175" thin "rad"$, khi đó $sin alpha approx alpha$).
- *Phương trình dao động:*
  $
    alpha = alpha_0 cos(omega t + varphi) quad ("rad") arrow.l.r.double s = l alpha = S_0 cos(omega t + varphi) quad ("với " S_0 = l alpha_0)
  $
- *Tần số góc, chu kỳ và tần số:* Chỉ phụ thuộc chiều dài $l$ và gia tốc rơi tự do $g$ tại nơi treo con lắc, *không* phụ thuộc khối lượng $m$:
  $ omega = sqrt(frac(g, l)); quad T = 2 pi sqrt(frac(l, g)); quad f = frac(1, 2 pi) sqrt(frac(g, l)) $
  Nếu tại cùng một nơi, con lắc chiều dài $l_1$ có chu kỳ $T_1$, chiều dài $l_2$ có chu kỳ $T_2$ thì:
  - Con lắc chiều dài $l = l_1 + l_2$ có chu kỳ: $T^2 = T_1^2 + T_2^2$.
  - Con lắc chiều dài $l = |l_1 - l_2|$ có chu kỳ: $T^2 = |T_1^2 - T_2^2|$.

#formula-card(title: "Vận tốc, Lực căng dây và Cơ năng của Con lắc đơn", color: c-purple)[
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 12pt,
    [
      *1. Trường hợp tổng quát ($alpha_0$ bất kỳ):*
      - Thế năng: $W_("t") = m g l (1 - cos alpha)$.
      - Cơ năng: $W = m g l (1 - cos alpha_0)$.
      - Tốc độ tại li độ góc $alpha$:
        $ v = sqrt(2 g l (cos alpha - cos alpha_0)) $
        ($v_("max") = sqrt(2 g l (1 - cos alpha_0))$ tại VTCB $alpha = 0$).
      - Lực căng dây tại góc lệch $alpha$:
        $ T_("c") = m g (3 cos alpha - 2 cos alpha_0) $
        • $T_("c max") = m g (3 - 2 cos alpha_0)$ tại VTCB ($alpha = 0$). \
        • $T_("c min") = m g cos alpha_0$ tại hai biên ($alpha = plus.minus alpha_0$).
    ],
    [
      *2. Trường hợp dao động điều hòa ($alpha_0 <= 10 degree$ rad):*
      Sử dụng $1 - cos alpha approx frac(alpha^2, 2)$ ($alpha$ tính bằng *rad*):
      - Thế năng: $W_("t") = frac(1, 2) m g l alpha^2 = frac(1, 2) m omega^2 s^2$.
      - Cơ năng: $W = frac(1, 2) m g l alpha_0^2 = frac(1, 2) m omega^2 S_0^2$.
      - Hệ thức độc lập:
        $ s^2 + frac(v^2, omega^2) = S_0^2 arrow.l.r.double alpha^2 + frac(v^2, g l) = alpha_0^2 $
      - Lực căng dây gần đúng:
        $ T_("c") approx m g (1 + alpha_0^2 - frac(3, 2) alpha^2) $
        ($T_("c max") = m g (1 + alpha_0^2)$; $T_("c min") = m g (1 - alpha_0^2 / 2)$).
    ],
  )
]

#pagebreak()
// =========================================================================
// PHẦN IV. DAO ĐỘNG TẮT DẦN, DUY TRÌ, CƯỠNG BỨC & HIỆN TƯỢNG CỘNG HƯỞNG
// =========================================================================
= Dao động tắt dần, duy trì, cưỡng bức và hiện tượng cộng hưởng <tat-dan-cong-huong>

== Bản chất và phân loại 4 loại dao động trong thực tế

#theory-table(
  columns: (19%, 27%, 27%, 27%),
  align: (left + horizon, left + horizon, left + horizon, left + horizon),
  table.header([Tiêu chí], [Dao động tắt dần], [Dao động duy trì], [Dao động cưỡng bức]),
  [*Định nghĩa & Nguyên nhân*],
  [Là dao động có *biên độ và cơ năng giảm dần theo thời gian* do lực ma sát và lực cản của môi trường làm tiêu hao cơ năng thành nội năng (nhiệt năng).],
  [Là dao động được cấp bù năng lượng sau mỗi chu kỳ *đúng bằng phần cơ năng tiêu hao* nhờ một cơ cấu điều khiển gắn với chính hệ (như con lắc đồng hồ).],
  [Là dao động chịu tác dụng của một *ngoại lực biến thiên tuần hoàn* $F = F_0 cos(omega_("nl") t + varphi_F)$ cung cấp năng lượng liên tục cho hệ.],
  [*Biên độ dao động*],
  [Giảm dần liên tục theo thời gian cho đến khi vật dừng hẳn. Lực cản càng lớn thì tắt dần càng nhanh.],
  [Không đổi theo thời gian (bằng biên độ ban đầu của hệ).],
  [Không đổi khi đạt trạng thái ổn định. Phụ thuộc vào: biên độ ngoại lực $F_0$, lực cản môi trường và *độ lệch tần số $|f_("nl") - f_0|$*.],
  [*Tần số / Chu kỳ*],
  [Khi lực cản nhỏ, dao động gần như tuần hoàn với tần số góc xấp xỉ tần số riêng $omega_0$.],
  [Dao động với tần số *đúng bằng tần số dao động riêng $f_0$* của hệ (không làm thay đổi chu kỳ riêng).],
  [Dao động với tần số *bằng tần số của ngoại lực cưỡng bức* ($f = f_("nl")$), không phụ thuộc tần số riêng $f_0$.],
  [*Ví dụ thực tế*],
  [Cửa đóng tự động bằng thủy lực, giảm xóc (phuộc nhún) ô tô – xe máy, võng đung đưa rồi dừng lại.],
  [Đồng hồ quả lắc (dây cót hoặc pin cấp năng lượng qua cơ cấu bánh xe gai – cá ngựa), trẻ em tự nhún đu.],
  [Thân xe buýt rung khi nổ máy đứng yên tại bến, mặt trống rung theo sóng âm, tòa nhà rung khi động đất.],
)

== Hiện tượng cộng hưởng cơ học

#formula-card(title: "Định nghĩa và điều kiện xảy ra Cộng hưởng cơ học", color: c-orange)[
  *Hiện tượng cộng hưởng* là hiện tượng biên độ của dao động cưỡng bức tăng nhanh đến giá trị *cực đại ($A_("max")$)* khi tần số $f_("nl")$ của lực cưỡng bức tiến đến bằng tần số riêng $f_0$ của hệ dao động:
  $ f_("nl") = f_0 arrow.l.r.double omega_("nl") = omega_0 arrow.l.r.double T_("nl") = T_0 $
  - *Đặc điểm của đường cong cộng hưởng $A(f_("nl"))$:*
    - Khi $|f_("nl") - f_0|$ càng nhỏ (tần số ngoại lực càng gần tần số riêng) thì biên độ cưỡng bức $A$ càng lớn; ngược lại khi $|f_("nl") - f_0|$ càng tăng thì biên độ cưỡng bức càng giảm.
    - *Ảnh hưởng của lực cản môi trường:* Lực cản của môi trường càng nhỏ thì đỉnh cộng hưởng càng cao và nhọn (cộng hưởng rõ nét); lực cản càng lớn thì đỉnh cộng hưởng càng thấp và tù (bẹt).
]

=== Đồ thị sóng dao động tắt dần và đường cong cộng hưởng biên độ (Hình 2.1)

#block(
  width: 100%,
  fill: c-bg-soft,
  stroke: 0.8pt + rgb("#E2E8F0"),
  radius: 6pt,
  inset: 10pt,
  breakable: false,
)[
  #align(center)[
    #text(
      weight: "bold",
      size: 10.5pt,
      fill: c-primary,
    )[Hình 2.1: Đồ thị li độ dao động tắt dần $x(t)$ (trái) và Đường cong cộng hưởng biên độ $A(f)$ (phải)]
    #v(4pt)
    #canvas(length: 0.92cm, {
      import draw: *

      // --- KHỐI TRÁI: ĐỒ THỊ DAO ĐỘNG TẮT DẦN (gốc tại (0.8, 2.45)) ---
      let ox1 = 0.8
      let oy1 = 2.45
      let w1 = 6.2
      let a0 = 1.6
      let damp = 0.42

      line((ox1 - 0.2, oy1), (ox1 + w1 + 0.4, oy1), stroke: 0.8pt + black, mark: (end: ">"))
      line((ox1, oy1 - 1.85), (ox1, oy1 + 1.95), stroke: 0.8pt + black, mark: (end: ">"))
      content((ox1 + w1 + 0.65, oy1), text(size: 9pt, weight: "bold")[$t$])
      content((ox1, oy1 + 2.2), text(size: 9pt, weight: "bold")[$x$])
      content((ox1 - 0.42, oy1 + a0), text(size: 8pt, weight: "bold", fill: c-orange)[$+A_0$])
      content((ox1 - 0.42, oy1 - a0), text(size: 8pt, weight: "bold", fill: c-orange)[$-A_0$])
      content((ox1 - 0.22, oy1 - 0.22), text(size: 8pt)[$O$])

      // Đường bao hàm mũ +A0 exp(-beta t) và -A0 exp(-beta t)
      let pts-env-top = range(0, 101).map(i => {
        let u = w1 * i / 100
        (ox1 + u, oy1 + a0 * calc.exp(-damp * u))
      })
      let pts-env-bot = range(0, 101).map(i => {
        let u = w1 * i / 100
        (ox1 + u, oy1 - a0 * calc.exp(-damp * u))
      })
      line(..pts-env-top, stroke: (paint: c-red, thickness: 0.9pt, dash: "dashed"))
      line(..pts-env-bot, stroke: (paint: c-red, thickness: 0.9pt, dash: "dashed"))
      content((ox1 + 2.8, oy1 + 1.15), text(size: 8pt, weight: "bold", fill: c-red)[$+A_0 e^(-beta t)$])

      // Đường sóng tắt dần
      let pts-damp = range(0, 241).map(i => {
        let u = w1 * i / 240
        let y-val = a0 * calc.exp(-damp * u) * calc.cos(4.2 * u)
        (ox1 + u, oy1 + y-val)
      })
      line(..pts-damp, stroke: 1.5pt + c-orange)
      content((ox1 + w1 / 2, 0.0), text(size: 8.5pt, weight: "bold", fill: c-slate)[A. Đồ thị dao động tắt dần $x(t)$])

      // --- KHỐI PHẢI: ĐƯỜNG CONG CỘNG HƯỞNG (gốc tại (9.2, 0.9)) ---
      let ox2 = 9.2
      let oy2 = 0.9
      let w2 = 6.2
      let h2 = 3.35
      let f0-pos = 2.8 // vị trí tần số riêng f_0

      line((ox2 - 0.2, oy2), (ox2 + w2 + 0.5, oy2), stroke: 0.8pt + black, mark: (end: ">"))
      line((ox2, oy2 - 0.2), (ox2, oy2 + h2 + 0.35), stroke: 0.8pt + black, mark: (end: ">"))
      content((ox2 + w2 + 0.85, oy2), text(size: 8.5pt, weight: "bold")[$f_("nl")$])
      content((ox2, oy2 + h2 + 0.6), text(size: 9pt, weight: "bold")[$A$])
      content((ox2 - 0.22, oy2 - 0.22), text(size: 8pt)[$O$])

      // Đường gióng tại f_nl = f_0
      line((ox2 + f0-pos, oy2), (ox2 + f0-pos, oy2 + 3.1), stroke: (paint: c-slate, thickness: 0.8pt, dash: "dashed"))
      content((ox2 + f0-pos, oy2 - 0.35), text(size: 8.5pt, weight: "bold", fill: c-orange)[$f_("nl") = f_0$])

      // Đường (1): Lực cản nhỏ (đỉnh cao và nhọn)
      let pts-res1 = range(0, 121).map(i => {
        let u = w2 * i / 120
        let amp-val = 0.32 + 2.78 / (1 + 2.8 * calc.pow(u - f0-pos, 2))
        (ox2 + u, oy2 + amp-val)
      })
      line(..pts-res1, stroke: 1.6pt + c-orange)
      circle((ox2 + f0-pos, oy2 + 3.1), radius: 0.08, fill: c-orange, stroke: 0.5pt + black)
      content((ox2 + f0-pos + 2.15, oy2 + 2.95), text(
        size: 8pt,
        weight: "bold",
        fill: c-orange,
      )[(1) Lực cản nhỏ (đỉnh nhọn)])

      // Đường (2): Lực cản lớn (đỉnh thấp và tù)
      let pts-res2 = range(0, 121).map(i => {
        let u = w2 * i / 120
        let amp-val = 0.28 + 1.25 / (1 + 0.85 * calc.pow(u - f0-pos, 2))
        (ox2 + u, oy2 + amp-val)
      })
      line(..pts-res2, stroke: (paint: c-primary, thickness: 1.5pt, dash: "dashed"))
      circle((ox2 + f0-pos, oy2 + 1.53), radius: 0.08, fill: c-primary, stroke: 0.5pt + black)
      content((ox2 + f0-pos + 2.15, oy2 + 1.55), text(
        size: 8pt,
        weight: "bold",
        fill: c-primary,
      )[(2) Lực cản lớn (đỉnh tù)])
      content((ox2 + w2 / 2, 0.0), text(
        size: 8.5pt,
        weight: "bold",
        fill: c-slate,
      )[B. Đường cong cộng hưởng $A(f_("nl"))$])
    })
  ]
  #v(2pt)
  *Phân tích lợi ích và tác hại của hiện tượng cộng hưởng trong kĩ thuật và đời sống:*
  - *Cộng hưởng có lợi:* Hộp cộng hưởng của các nhạc cụ dây (đàn guitar, violin, đàn bầu) khuếch đại âm thanh; tần số kế rung đo tần số dòng điện xoay chiều; lò vi sóng sử dụng sóng điện từ có tần số trùng với tần số dao động riêng của phân tử nước ($approx #vp-qty("2,45", "GHz")$) để làm nóng thức ăn; kĩ thuật chụp cộng hưởng từ hạt nhân (MRI) trong y học.
  - *Cộng hưởng có hại:* Cầu đường, khung xe, bệ máy, tòa nhà cao tầng có tần số riêng $f_0$; nếu chịu tác dụng của ngoại lực tuần hoàn (như gió xoáy làm sập cầu treo Tacoma Narrows năm 1940, sóng địa chấn, nhịp bước chân đều của đoàn quân đi qua cầu, nhịp bước chân người gánh nước) có $f_("nl") approx f_0$ thì biên độ rung động tăng vọt gây gãy đổ hoặc văng nước. Cách khắc phục: thay đổi tần số riêng của kết cấu, lắp bộ giảm chấn hoặc thay đổi nhịp ngoại lực (đi bước không đều qua cầu, lắp phao chắn sóng trong thùng nước).
]

== Bài toán định lượng: Con lắc lò xo dao động tắt dần do ma sát trượt

Xét con lắc lò xo nằm ngang (độ cứng $k$, vật nặng khối lượng $m$) dao động trên mặt sàn có hệ số ma sát trượt $mu$ (độ lớn lực ma sát trượt không đổi $F_("ms") = mu m g$). Kéo vật ra khỏi vị trí lò xo không biến dạng $O$ một đoạn $A_0$ rồi thả nhẹ:

1. *Vị trí cân bằng tạm thời $O_1, O_2$:*
  Trong mỗi nửa chu kỳ, vật dao động điều hòa quanh vị trí mà lực đàn hồi cân bằng với lực ma sát trượt:
  $ k x_0 = F_("ms") = mu m g ==> x_0 = frac(mu m g, k) = frac(mu g, omega^2) $
  - Khi vật đi từ biên dương về biên âm, vị trí cân bằng tạm là $O_1$ có tọa độ $+x_0$.
  - Khi vật đi từ biên âm về biên dương, vị trí cân bằng tạm là $O_2$ có tọa độ $-x_0$.
  - Vị trí $O_1$ hoặc $O_2$ chính là nơi *hợp lực bằng $0$*, do đó tại đây *tốc độ của vật đạt cực đại trong nửa chu kỳ đó*. Tốc độ cực đại trong cả quá trình đạt được ngay ở nửa chu kỳ đầu tiên khi vật qua $O_1$:
    $ v_("max") = omega (A_0 - x_0) = omega (A_0 - frac(mu m g, k)) $

2. *Độ giảm biên độ:*
  - Độ giảm biên độ sau *mỗi nửa chu kỳ* ($T/2$): $Delta A_("1/2") = 2 x_0 = frac(2 mu m g, k)$.
  - Độ giảm biên độ sau *mỗi chu kỳ toàn phần* ($T$): $Delta A_T = 4 x_0 = frac(4 mu m g, k)$.
  - Biên độ còn lại sau $n$ nửa chu kỳ: $A_n = A_0 - n Delta A_("1/2") = A_0 - 2 n x_0$.
  - Phần trăm cơ năng bị mất đi sau chu kỳ đầu tiên (nếu $Delta A_T << A_0$):
    $ frac(Delta W, W_0) = 1 - (frac(A_1, A_0))^2 approx frac(2 Delta A_T, A_0) $

3. *Số nửa chu kỳ và tổng quãng đường vật đi được đến khi dừng hẳn:*
  - *Khi ma sát rất nhỏ* ($Delta A_("1/2") << A_0$, vật dừng lại rất gần $O$): Toàn bộ thế năng ban đầu chuyển hóa thành công của lực ma sát:
    $
      frac(1, 2) k A_0^2 approx F_("ms") S = mu m g S ==> S approx frac(k A_0^2, 2 mu m g) = frac(A_0^2, 2 x_0); quad N_("chu kỳ") approx frac(A_0, Delta A_T) = frac(k A_0, 4 mu m g)
    $
  - *Khi ma sát lớn (tính chính xác tuyệt đối):* Vật dừng lại hẳn tại vị trí biên tạm $A_p$ khi lực đàn hồi tại đó không thắng nổi ma sát nghỉ cực đại ($|A_p| <= x_0$). Ta lập tỉ số:
    $
      frac(A_0, Delta A_("1/2")) = frac(A_0, 2 x_0) = p + r quad ("với " p in NN^* " là phần nguyên, " 0 <= r < 1 " là phần dư")
    $
    • Nếu $r <= 0,5$: vật thực hiện đúng *$p$ nửa chu kỳ* rồi dừng tại li độ $|x_("dừng")| = A_p = A_0 - 2 p x_0$.
    • Nếu $r > 0,5$: vật đi thêm 1 nửa chu kỳ nữa, tức thực hiện *$n = p + 1$ nửa chu kỳ* rồi dừng tại $|x_("dừng")| = A_(p+1) = A_0 - 2(p+1)x_0$.
    • Tổng quãng đường chính xác sau $n$ nửa chu kỳ:
    $
      S = 2 n A_0 - 2 n^2 x_0 = n [2 A_0 - (2 n) x_0]; quad "hoặc " frac(1, 2) k A_0^2 - frac(1, 2) k x_("dừng")^2 = mu m g S
    $

#pagebreak()
// =========================================================================
// PHẦN V. KỸ THUẬT GIẢI NHANH & CÔNG THỨC NÂNG CAO (9 - 10 ĐIỂM)
// =========================================================================
= Kỹ thuật giải nhanh kinh điển và công thức nâng cao (9 – 10 điểm) <ki-thuat-giai-nhanh>

== Kỹ thuật 1: Vòng tròn lượng giác đa trục và trục phân bố thời gian

Bằng cách đặt đồng thời các trục *Li độ $O x$* (nằm ngang hướng sang phải), trục *Vận tốc $O v$* (thẳng đứng hướng xuống dưới vì $v$ sớm pha $pi/2$ so với $x$) và trục *Gia tốc $O a$ / Lực kéo về $O F_("kv")$* (nằm ngang hướng sang trái vì ngược pha với $x$) lên cùng một vòng tròn đơn vị, ta đọc được ngay trạng thái của mọi đại lượng tại bất kỳ thời điểm nào mà không cần giải phương trình lượng giác phức tạp.

#block(
  width: 100%,
  fill: c-bg-soft,
  stroke: 0.8pt + rgb("#E2E8F0"),
  radius: 6pt,
  inset: 10pt,
  breakable: false,
)[
  #align(center)[
    #text(
      weight: "bold",
      size: 10.5pt,
      fill: c-primary,
    )[Hình 3.1: Vòng tròn lượng giác đa trục $(x, v, a)$ và Trục phân bố thời gian chuẩn]
    #v(4pt)
    #canvas(length: 0.92cm, {
      import draw: *
      let cx = 8.0
      let cy = 5.0
      let rad = 2.8

      // Vòng tròn chính (vẽ nền và viền tách biệt để tránh lỗi nối đường cong)
      circle((cx, cy), radius: rad, fill: rgb("#FFFEF7"), stroke: none)
      let circle-pts = range(0, 121).map(i => (
        cx + rad * calc.cos(i * 3deg),
        cy + rad * calc.sin(i * 3deg),
      ))
      line(..circle-pts, stroke: 1.8pt + c-amber)
      circle((cx, cy), radius: 0.07, fill: black)

      // Trục x (ngang phải) và Trục a (ngang trái)
      line((cx - rad - 1.35, cy), (cx + rad + 1.35, cy), stroke: 1.1pt + black, mark: (start: ">", end: ">"))
      content((cx + rad + 2.05, cy), text(size: 9pt, weight: "bold", fill: black)[Trục $+x$])
      content((cx - rad - 2.38, cy), text(size: 9pt, weight: "bold", fill: c-red)[Trục $+a, +F_("kv")$])

      // Trục v (đứng hướng xuống)
      line((cx, cy + rad + 0.85), (cx, cy - rad - 0.95), stroke: 1.1pt + c-amber, mark: (end: ">"))
      content((cx + 1.5, cy - rad - 0.9), text(size: 9pt, weight: "bold", fill: c-amber)[Trục $+v$ (sớm $pi \/ 2$)])
      content((cx + 0.95, cy + rad + 0.65), text(size: 8.5pt, weight: "bold", fill: c-amber)[$-v_("max") (-pi \/ 2)$])
      content((cx - 1.0, cy - rad - 0.42), text(size: 8.5pt, weight: "bold", fill: c-amber)[$+v_("max") (+pi \/ 2)$])

      // Các tia góc đặc biệt ở cả 4 góc phần tư
      let special-angles = (30, 45, 60, 120, 135, 150, -30, -45, -60, -120, -135, -150)
      for ang in special-angles {
        let px = cx + rad * calc.cos(ang * 1deg)
        let py = cy + rad * calc.sin(ang * 1deg)
        line((cx, cy), (px, py), stroke: (paint: rgb("#E2D9C8"), thickness: 0.6pt, dash: "dashed"))
        circle((px, py), radius: 0.065, fill: c-orange, stroke: none)
      }

      // Gióng xuống trục Ox tại các vị trí đặc biệt
      let x-pos-ratios = (-calc.sqrt(3) / 2, -calc.sqrt(2) / 2, -0.5, 0.5, calc.sqrt(2) / 2, calc.sqrt(3) / 2)
      for r in x-pos-ratios {
        let gx = cx + r * rad
        let gy-top = cy + calc.sqrt(1 - r * r) * rad
        let gy-bot = cy - calc.sqrt(1 - r * r) * rad
        line((gx, gy-bot), (gx, gy-top), stroke: (paint: rgb("#CBD5E1"), thickness: 0.5pt, dash: "dotted"))
      }

      // Nhãn góc phần tư I & II (nửa trên: pha dương)
      let r-lbl = rad + 0.35
      content((cx + r-lbl * calc.cos(28deg) + 0.65, cy + r-lbl * calc.sin(28deg)), text(
        size: 8pt,
        weight: "bold",
        fill: c-orange,
      )[$+pi \/ 6 (A sqrt(3) \/ 2)$])
      content((cx + r-lbl * calc.cos(45deg) + 0.72, cy + r-lbl * calc.sin(45deg) + 0.05), text(
        size: 8pt,
        weight: "bold",
        fill: c-orange,
      )[$+pi \/ 4 (A sqrt(2) \/ 2)$])
      content((cx + r-lbl * calc.cos(62deg) + 0.55, cy + r-lbl * calc.sin(62deg) + 0.12), text(
        size: 8pt,
        weight: "bold",
        fill: c-orange,
      )[$+pi \/ 3 (A \/ 2)$])

      content((cx + r-lbl * calc.cos(118deg) - 0.6, cy + r-lbl * calc.sin(118deg) + 0.12), text(
        size: 8pt,
        weight: "bold",
        fill: c-orange,
      )[$+2pi \/ 3 (-A \/ 2)$])
      content((cx + r-lbl * calc.cos(135deg) - 0.78, cy + r-lbl * calc.sin(135deg) + 0.05), text(
        size: 8pt,
        weight: "bold",
        fill: c-orange,
      )[$+3pi \/ 4 (-A sqrt(2) \/ 2)$])
      content((cx + r-lbl * calc.cos(152deg) - 0.75, cy + r-lbl * calc.sin(152deg)), text(
        size: 8pt,
        weight: "bold",
        fill: c-orange,
      )[$+5pi \/ 6 (-A sqrt(3) \/ 2)$])

      // Nhãn góc phần tư III & IV (nửa dưới: pha âm)
      content((cx + r-lbl * calc.cos(-28deg) + 0.22, cy + r-lbl * calc.sin(-28deg)), text(
        size: 8pt,
        weight: "bold",
        fill: c-slate,
      )[$-pi \/ 6$])
      content((cx + r-lbl * calc.cos(-45deg) + 0.22, cy + r-lbl * calc.sin(-45deg) - 0.05), text(
        size: 8pt,
        weight: "bold",
        fill: c-slate,
      )[$-pi \/ 4$])
      content((cx + r-lbl * calc.cos(-62deg) + 0.18, cy + r-lbl * calc.sin(-62deg) - 0.1), text(
        size: 8pt,
        weight: "bold",
        fill: c-slate,
      )[$-pi \/ 3$])

      content((cx + r-lbl * calc.cos(-118deg) - 0.22, cy + r-lbl * calc.sin(-118deg) - 0.1), text(
        size: 8pt,
        weight: "bold",
        fill: c-slate,
      )[$-2pi \/ 3$])
      content((cx + r-lbl * calc.cos(-135deg) - 0.25, cy + r-lbl * calc.sin(-135deg) - 0.05), text(
        size: 8pt,
        weight: "bold",
        fill: c-slate,
      )[$-3pi \/ 4$])
      content((cx + r-lbl * calc.cos(-152deg) - 0.25, cy + r-lbl * calc.sin(-152deg)), text(
        size: 8pt,
        weight: "bold",
        fill: c-slate,
      )[$-5pi \/ 6$])

      // Nhãn biên +A, -A, O
      content((cx + rad + 0.42, cy - 0.28), text(size: 8.5pt, weight: "bold", fill: c-orange)[$+A (0)$])
      content((cx - rad - 0.45, cy - 0.28), text(size: 8.5pt, weight: "bold", fill: c-orange)[$-A (pi)$])
      content((cx - 0.22, cy - 0.25), text(size: 8.5pt, weight: "bold")[$O$])

      // Hộp ghi chú nửa trên v < 0 và nửa dưới v > 0
      rect((cx - 1.5, cy + 0.42), (cx + 1.5, cy + 0.9), fill: rgb("#FEF2F2"), stroke: 0.7pt + c-red, radius: 3pt)
      content((cx, cy + 0.66), text(size: 7.4pt, weight: "bold", fill: c-red)[Nửa trên: Chiều âm ($v < 0$)])

      rect((cx - 1.5, cy - 0.9), (cx + 1.5, cy - 0.42), fill: rgb("#F0FDF4"), stroke: 0.7pt + c-green, radius: 3pt)
      content((cx, cy - 0.66), text(size: 7.4pt, weight: "bold", fill: c-green)[Nửa dưới: Chiều dương ($v > 0$)])

      // --- SƠ ĐỒ TRỤC PHÂN BỐ THỜI GIAN CHUẨN Ở DƯỚI (y = 0.45) ---
      let ty = 0.45
      let tx-left = 1.2
      let tx-right = 14.8
      let tx-mid = (tx-left + tx-right) / 2
      let half-w = (tx-right - tx-left) / 2

      line((tx-left - 0.4, ty), (tx-right + 0.5, ty), stroke: 1.2pt + c-primary, mark: (end: ">"))
      let t-stops = (
        (-1.0, $-A$),
        (-0.76, $-A sqrt(3) \/ 2$),
        (-0.52, $-A sqrt(2) \/ 2$),
        (-0.28, $-A \/ 2$),
        (0.0, $O (0)$),
        (0.28, $+A \/ 2$),
        (0.52, $+A sqrt(2) \/ 2$),
        (0.76, $+A sqrt(3) \/ 2$),
        (1.0, $+A$),
      )
      for (pos, lbl) in t-stops {
        let px = tx-mid + pos * half-w
        line((px, ty - 0.12), (px, ty + 0.12), stroke: 1pt + c-primary)
        circle((px, ty), radius: 0.06, fill: c-orange, stroke: none)
        content((px, ty - 0.35), text(size: 7.5pt, weight: "bold", fill: c-slate)[#lbl])
      }

      // Nhãn khoảng thời gian giữa các mốc kế tiếp
      let segs = (
        ((-1.0 + -0.76) / 2, $T \/ 12$),
        ((-0.76 + -0.52) / 2, $T \/ 24$),
        ((-0.52 + -0.28) / 2, $T \/ 24$),
        ((-0.28 + 0.0) / 2, $T \/ 12$),
        ((0.0 + 0.28) / 2, $T \/ 12$),
        ((0.28 + 0.52) / 2, $T \/ 24$),
        ((0.52 + 0.76) / 2, $T \/ 24$),
        ((0.76 + 1.0) / 2, $T \/ 12$),
      )
      for (mid-r, t-lbl) in segs {
        let mx = tx-mid + mid-r * half-w
        content((mx, ty + 0.3), text(size: 7.5pt, weight: "bold", fill: c-orange)[#t-lbl])
      }
    })
  ]
  #v(2pt)
  *Bảng tra cứu nhanh thời gian đi từ VTCB ($x = 0$) và từ Biên ($x = plus.minus A$) đến các vị trí đặc biệt:*
  #theory-table(
    columns: (28%, 18%, 18%, 18%, 18%),
    align: center + horizon,
    table.header(
      [Hành trình ngắn nhất],
      [$0 arrow.l.r plus.minus frac(A, 2)$],
      [$0 arrow.l.r plus.minus frac(A sqrt(2), 2)$],
      [$0 arrow.l.r plus.minus frac(A sqrt(3), 2)$],
      [$0 arrow.l.r plus.minus A$],
    ),
    [*Thời gian đi từ VTCB ($x = 0$)*],
    [$frac(T, 12)$],
    [$frac(T, 8)$],
    [$frac(T, 6)$],
    [$frac(T, 4)$],
    [*Hành trình từ Biên ($x = plus.minus A$)*],
    [$plus.minus A arrow.l.r plus.minus frac(A sqrt(3), 2)$],
    [$plus.minus A arrow.l.r plus.minus frac(A sqrt(2), 2)$],
    [$plus.minus A arrow.l.r plus.minus frac(A, 2)$],
    [$+A arrow.l.r -A$],
    [*Thời gian đi từ Biên*],
    [$frac(T, 12)$],
    [$frac(T, 8)$],
    [$frac(T, 6)$],
    [$frac(T, 2)$],
  )
]

== Kỹ thuật 2: Bài toán quãng đường lớn nhất ($S_("max")$), nhỏ nhất ($S_("min")$) và tốc độ trung bình

Xét khoảng thời gian khảo sát $Delta t$:
1. *Trường hợp $Delta t < frac(T, 2)$ (góc quét $Delta varphi = omega Delta t < pi$):*
  - *Quãng đường lớn nhất $S_("max")$:* Vật đi được quãng đường lớn nhất khi di chuyển ở vùng lân cận *vị trí cân bằng* (nơi có tốc độ lớn nhất). Khi đó cung góc quét $Delta varphi$ chia đôi *đối xứng qua trục thẳng đứng* (trục VTCB):
    $
      S_("max") = 2 A sin(frac(Delta varphi, 2)) = 2 A sin(frac(omega Delta t, 2)) ==> v_("tb max") = frac(S_("max"), Delta t)
    $
  - *Quãng đường nhỏ nhất $S_("min")$:* Vật đi được quãng đường nhỏ nhất khi di chuyển ở vùng lân cận *vị trí biên* (nơi có tốc độ nhỏ nhất và đổi chiều tại biên). Khi đó cung góc quét $Delta varphi$ chia đôi *đối xứng qua trục nằm ngang* (trục Biên):
    $
      S_("min") = 2 A [1 - cos(frac(Delta varphi, 2))] = 2 A [1 - cos(frac(omega Delta t, 2))] ==> v_("tb min") = frac(S_("min"), Delta t)
    $

2. *Trường hợp $Delta t > frac(T, 2)$:*
  Vì cứ mỗi nửa chu kỳ $T/2$ vật *luôn luôn* đi được quãng đường cố định bằng $2A$, ta tách:
  $ Delta t = n frac(T, 2) + Delta t' quad ("với " n in NN^* " và " 0 < Delta t' < frac(T, 2)) $
  Khi đó góc quét dư là $Delta varphi' = omega Delta t' < pi$, và:
  $
    S_("max") = 2 n A + 2 A sin(frac(Delta varphi', 2)); quad S_("min") = 2 n A + 2 A [1 - cos(frac(Delta varphi', 2))]
  $

3. *Bài toán ngược — Thời gian ngắn nhất ($Delta t_("min")$) và dài nhất ($Delta t_("max")$) để đi được quãng đường $S < 2A$:*
  - Thời gian ngắn nhất $Delta t_("min")$ (đi đối xứng qua VTCB): $S = 2 A sin(frac(omega Delta t_("min"), 2)) ==> Delta t_("min") = frac(2, omega) arcsin(frac(S, 2A))$.
  - Thời gian dài nhất $Delta t_("max")$ (đi đối xứng qua Biên): $S = 2 A [1 - cos(frac(omega Delta t_("max"), 2))] ==> Delta t_("max") = frac(2, omega) arccos(1 - frac(S, 2A))$.

== Kỹ thuật 3: Hệ thức liên hệ giữa hai thời điểm $t_1$ và $t_2$

Gọi độ lệch pha giữa hai thời điểm $t_1$ và $t_2 = t_1 + Delta t$ là $Delta varphi = omega Delta t$:

#theory-table(
  columns: (26%, 37%, 37%),
  align: (left + horizon, center + horizon, center + horizon),
  table.header(
    [Quan hệ pha hai thời điểm],
    [Điều kiện thời gian $Delta t$],
    [Hệ thức liên hệ giữa $(x_1, v_1, a_1)$ và $(x_2, v_2, a_2)$],
  ),
  [*Cùng pha* \ ($Delta varphi = k 2 pi$)],
  [$ Delta t = k T quad (k in NN^*) $],
  [$ x_2 = x_1; quad v_2 = v_1; quad a_2 = a_1 $],
  [*Ngược pha* \ ($Delta varphi = (2k + 1) pi$)],
  [$ Delta t = (2k + 1) frac(T, 2) $],
  [$ x_2 = -x_1; quad v_2 = -v_1; quad a_2 = -a_1 $],
  [*Vuông pha* \ ($Delta varphi = (2k + 1) frac(pi, 2)$)],
  [$ Delta t = (2k + 1) frac(T, 4) $],
  [$ x_1^2 + x_2^2 = A^2; quad v_1^2 + v_2^2 = v_("max")^2 \ |v_1| = omega |x_2|; quad |v_2| = omega |x_1| $],
  [*Hai thời điểm bất kỳ*],
  [$t_1, t_2$ bất kỳ ($x_1 != plus.minus x_2$)],
  [$ omega = sqrt(frac(v_1^2 - v_2^2, x_2^2 - x_1^2)) = sqrt(frac(a_2^2 - a_1^2, v_1^2 - v_2^2)) $],
)

== Kỹ thuật 4: Tổng hợp hai dao động điều hòa cùng tần số & Bài toán khoảng cách

Cho hai dao động điều hòa cùng phương, cùng tần số góc $omega$: $x_1 = A_1 cos(omega t + varphi_1)$ và $x_2 = A_2 cos(omega t + varphi_2)$ với độ lệch pha $Delta varphi = varphi_2 - varphi_1$:

#grid(
  columns: (1fr, 1fr),
  column-gutter: 10pt,
  formula-card(title: "1. Dao động tổng hợp x = x₁ + x₂", color: c-primary)[
    Dao động tổng hợp có dạng $x = A cos(omega t + varphi)$ với:
    $ A = sqrt(A_1^2 + A_2^2 + 2 A_1 A_2 cos Delta varphi) $
    $ tan varphi = frac(A_1 sin varphi_1 + A_2 sin varphi_2, A_1 cos varphi_1 + A_2 cos varphi_2) $
    - *Cùng pha* ($Delta varphi = 2 k pi$): $A = A_("max") = A_1 + A_2$.
    - *Ngược pha* ($Delta varphi = (2k+1) pi$): $A = A_("min") = |A_1 - A_2|$.
    - *Vuông pha* ($Delta varphi = (2k+1) pi/2$): $A = sqrt(A_1^2 + A_2^2)$.
    - Luôn có: $|A_1 - A_2| <= A <= A_1 + A_2$.
  ],
  formula-card(title: "2. Khoảng cách giữa 2 chất điểm d = |x₁ - x₂|", color: c-orange)[
    Đặt $Delta x = x_1 - x_2 = d_("max") cos(omega t + varphi_d)$, khi đó khoảng cách cực đại giữa hai chất điểm trên trục $O x$ là:
    $ d_("max") = sqrt(A_1^2 + A_2^2 - 2 A_1 A_2 cos Delta varphi) $
    - Khi 2 vật *cùng pha* ($Delta varphi = 0$): $d_("max") = |A_1 - A_2|$.
    - Khi 2 vật *ngược pha* ($Delta varphi = pi$): $d_("max") = A_1 + A_2$.
    - Khi 2 vật *vuông pha* ($Delta varphi = pi/2$): $d_("max") = sqrt(A_1^2 + A_2^2)$.
    - Hai vật *gặp nhau* khi $x_1 = x_2 arrow.l.r.double Delta x = 0$.
  ],
)

#pagebreak()
// =========================================================================
// PHẦN VI. CÁC DẠNG BÀI TẬP TRỌNG TÂM & VÍ DỤ MINH HỌA CHI TIẾT
// =========================================================================
= Các dạng bài tập trọng tâm và ví dụ minh họa có lời giải <cac-dang-bai-tap>

// Bật hiển thị đáp án và lời giải trực tiếp cho phần Ví dụ mẫu
#vp-show-ans.update(true)
#vp-show-sol.update(true)
#vp-show-level.update(true)
#vp-show-source.update(false)
#vp-q-counter.update(0)

== Dạng 1: Xác định các đại lượng đặc trưng và viết phương trình dao động

*Phương pháp giải:*
- *Bước 1:* Tìm tần số góc $omega$ từ chu kỳ ($omega = frac(2 pi, T) = 2 pi f$), từ cấu tạo hệ ($omega = sqrt(frac(k, m)) = sqrt(frac(g, Delta l_0))$), hoặc từ hệ thức hai thời điểm $omega = sqrt(frac(v_1^2 - v_2^2, x_2^2 - x_1^2))$.
- *Bước 2:* Tìm biên độ $A$ từ chiều dài quỹ đạo ($A = L/2$), từ cơ năng ($A = sqrt(frac(2W, k))$), hoặc từ hệ thức độc lập $A = sqrt(x^2 + frac(v^2, omega^2))$.
- *Bước 3:* Tìm pha ban đầu $varphi in (-pi; pi]$ dựa vào trạng thái tại $t = 0$:
  $ cos varphi = frac(x_0, A) quad ("lấy " varphi < 0 " nếu " v_0 > 0; quad "lấy " varphi > 0 " nếu " v_0 < 0) $

#vp-question(
  [Một vật dao động điều hòa trên đoạn thẳng có chiều dài quỹ đạo $L = #vp-qty("12", "cm")$. Tại thời điểm $t = 0$, vật đi qua vị trí có li độ $x_0 = -3 sqrt(3) thin "cm"$ theo chiều dương với tốc độ $v_0 = 30 pi thin "cm/s"$. Hãy xác định tần số góc $omega$ và viết phương trình dao động của vật.],
  type: "essay",
  prefix: "Ví dụ",
  level: "Thông hiểu",
  lines: 4,
  ans: [$x = 6 cos(10 pi t - frac(5 pi, 6)) thin ("cm")$],
  sol: [
    - *Bước 1 — Tìm biên độ $A$:* Chiều dài quỹ đạo $L = 2A = #vp-qty("12", "cm") ==> A = #vp-qty("6", "cm")$.
    - *Bước 2 — Tìm tần số góc $omega$:* Áp dụng hệ thức độc lập thời gian giữa $x$ và $v$:
      $
        x_0^2 + frac(v_0^2, omega^2) = A^2 ==> omega = frac(|v_0|, sqrt(A^2 - x_0^2)) = frac(30 pi, sqrt(6^2 - (-3 sqrt(3))^2)) = frac(30 pi, sqrt(36 - 27)) = frac(30 pi, 3) = 10 pi thin "rad/s"
      $
    - *Bước 3 — Tìm pha ban đầu $varphi$:* Tại thời điểm $t = 0$:
      $
        cases(x_0 = A cos varphi = -3 sqrt(3) ==> cos varphi = -frac(sqrt(3), 2), v_0 > 0 ==> sin varphi < 0) ==> varphi = -frac(5 pi, 6) thin "rad"
      $
    - *Kết luận:* Phương trình dao động của vật là $x = 6 cos(10 pi t - frac(5 pi, 6)) thin ("cm")$.
  ],
)

== Dạng 2: Bài toán thời gian và thời điểm vật qua vị trí xác định lần thứ $N$

*Phương pháp giải:*
- *Bước 1:* Xác định điểm xuất phát $M_0$ (ứng với pha $varphi$) và các điểm đích trên vòng tròn lượng giác ứng với vị trí yêu cầu:
  - Nếu đề bài *chỉ rõ chiều chuyển động* ($v > 0$ ở nửa dưới hoặc $v < 0$ ở nửa trên): mỗi chu kỳ $T$ vật chỉ qua vị trí đó *1 lần* (trừ hai biên).
  - Nếu đề bài *không nói rõ chiều chuyển động*: mỗi chu kỳ $T$ vật qua vị trí $x != plus.minus A$ *2 lần* (một điểm ở nửa trên và một điểm ở nửa dưới đối xứng qua trục $O x$).
- *Bước 2:* Tính góc quét $Delta varphi_1$ từ $M_0$ đến lần gặp đầu tiên (hoặc lần thứ 2). Với số lần $N$ lớn, tách thành số nguyên chu kỳ để tránh đếm nhầm:
  - Khi có chiều xác định (1 lần/chu kỳ): $t_N = t_1 + (N - 1) T$.
  - Khi không quy định chiều (2 lần/chu kỳ):
    • Nếu $N = 2k + 1$ (lần lẻ): $t_N = t_1 + k T$.
    • Nếu $N = 2k$ (lần chẵn): $t_N = t_2 + (k - 1) T$.

#vp-question(
  [Một vật dao động điều hòa theo phương trình $x = 8 cos(2 pi t - frac(pi, 3)) thin ("cm")$.
    a) Tính thời điểm vật đi qua vị trí có li độ $x = -#vp-qty("4", "cm")$ theo chiều âm lần thứ nhất.
    #parbreak() b) Tính thời điểm vật đi qua vị trí có li độ $x = -#vp-qty("4", "cm")$ lần thứ 2025 (không kể chiều).],
  type: "essay",
  prefix: "Ví dụ",
  level: "Vận dụng",
  lines: 4,
  ans: [a) $t_1 = #vp-qty("0,5", "s")$; b) $t_(2025) = #vp-qty("1012,5", "s")$],
  sol: [
    - Chu kỳ dao động của vật: $T = frac(2 pi, omega) = frac(2 pi, 2 pi) = #vp-qty("1", "s")$. Tại $t = 0$, chất điểm ở vị trí trên vòng tròn ứng với pha $varphi_0 = -frac(pi, 3)$ ($x_0 = +4 thin "cm", v_0 > 0$).
    - *a) Qua vị trí $x = -#vp-qty("4", "cm") = -frac(A, 2)$ theo chiều âm lần thứ nhất:*
      Vị trí $x = -frac(A, 2)$ theo chiều âm ($v < 0$) ứng với điểm trên nửa trên vòng tròn lượng giác có pha $Phi_1 = +frac(2 pi, 3)$.
      Góc quét từ $varphi_0 = -frac(pi, 3)$ đến $Phi_1 = +frac(2 pi, 3)$ theo chiều quay ngược kim đồng hồ là:
      $
        Delta varphi_1 = frac(2 pi, 3) - (-frac(pi, 3)) = pi thin "rad" ==> t_1 = frac(Delta varphi_1, omega) = frac(pi, 2 pi) = #vp-qty("0,5", "s") = frac(T, 2)
      $
    - *b) Qua vị trí $x = -#vp-qty("4", "cm")$ lần thứ 2025 (không kể chiều):*
      Trong 1 chu kỳ, vật đi qua vị trí $x = -#vp-qty("4", "cm")$ hai lần (ứng với pha $+frac(2 pi, 3)$ và $-frac(2 pi, 3)$). Khi quay từ $varphi_0 = -frac(pi, 3)$ ngược chiều kim đồng hồ, vật gặp điểm $Phi_1 = +frac(2 pi, 3)$ trước (lần thứ 1 tại $t_1 = #vp-qty("0,5", "s")$).
      Tách $N = 2025 = 1 + 2 times 1012$, suy ra vật cần thực hiện thêm đúng $1012$ chu kỳ sau lần thứ nhất:
      $ t_(2025) = t_1 + 1012 T = "0,5" + 1012 times 1 = #vp-qty("1012,5", "s") $
  ],
)

== Dạng 3: Bài toán quãng đường, tốc độ trung bình và năng lượng dao động

*Phương pháp giải:*
- Để tính quãng đường đi được trong thời gian $Delta t$ từ thời điểm $t_1$ xác định: tách $Delta t = n frac(T, 2) + Delta t'$ ($0 <= Delta t' < T/2$). Quãng đường là $S = 2 n A + S'$, trong đó $S'$ được xác định bằng hình chiếu điểm đầu và điểm cuối trên vòng tròn lượng giác (lưu ý nếu đi qua biên thì phải cộng hai đoạn trước và sau khi đổi chiều).
- Để tìm *cực trị quãng đường* khi không cho thời điểm xuất phát: dùng công thức đối xứng $S_("max") = 2A sin(frac(Delta varphi, 2))$ và $S_("min") = 2A (1 - cos(frac(Delta varphi, 2)))$.

#vp-question(
  [Một con lắc lò xo có độ cứng $k = #vp-qty("50", "N/m")$ dao động điều hòa dọc theo trục $O x$ nằm ngang với biên độ $A = #vp-qty("6", "cm")$ và chu kỳ $T = #vp-qty("2", "s")$.
    a) Tìm li độ của vật tại vị trí động năng gấp $3$ lần thế năng và tính động năng tại đó.
    #parbreak() b) Tính tốc độ trung bình lớn nhất và nhỏ nhất của vật trong khoảng thời gian $Delta t = frac(4, 3) thin "s"$.],
  type: "essay",
  prefix: "Ví dụ",
  level: "Vận dụng",
  lines: 4,
  ans: [a) $x = plus.minus #vp-qty("3", "cm")$, $W_("đ") = #vp-qty("0,0675", "J")$; b) $v_("tb max") = #vp-qty("13,5", "cm/s")$, $v_("tb min") approx #vp-qty("10,21", "cm/s")$],
  sol: [
    - *a) Vị trí và giá trị động năng khi $W_("đ") = 3 W_("t")$ ($n = 3$):*
      Cơ năng toàn phần của con lắc:
      $ W = frac(1, 2) k A^2 = frac(1, 2) dot 50 dot ("0,06")^2 = #vp-qty("0,09", "J") $
      Khi $W_("đ") = 3 W_("t")$, ta có:
      $
        x = plus.minus frac(A, sqrt(n + 1)) = plus.minus frac(6, sqrt(3 + 1)) = plus.minus #vp-qty("3", "cm"); quad W_("đ") = frac(3, 4) W = frac(3, 4) dot "0,09" = #vp-qty("0,0675", "J") = #vp-qty("67,5", "mJ")
      $
    - *b) Tốc độ trung bình lớn nhất và nhỏ nhất trong $Delta t = frac(4, 3) thin "s"$:*
      Ta có $frac(T, 2) = #vp-qty("1", "s")$, tách $Delta t = frac(4, 3) thin "s" = 1 thin "s" + frac(1, 3) thin "s" = frac(T, 2) + frac(T, 6)$.
      Góc quét trong khoảng thời gian dư $Delta t' = frac(T, 6) = frac(1, 3) thin "s"$ là $Delta varphi' = omega Delta t' = frac(2 pi, 2) dot frac(1, 3) = frac(pi, 3) thin "rad"$.
      • Quãng đường lớn nhất và tốc độ trung bình lớn nhất:
      $
        S_("max") = 2 A + 2 A sin(frac(Delta varphi', 2)) = 2 dot 6 + 2 dot 6 dot sin(frac(pi, 6)) = 12 + 6 = #vp-qty("18", "cm")
      $
      $ ==> v_("tb max") = frac(S_("max"), Delta t) = frac(18, 4/3) = #vp-qty("13,5", "cm/s") $
      • Quãng đường nhỏ nhất và tốc độ trung bình nhỏ nhất:
      $
        S_("min") = 2 A + 2 A [1 - cos(frac(Delta varphi', 2))] = 12 + 12 dot (1 - frac(sqrt(3), 2)) = 24 - 6 sqrt(3) approx #vp-qty("13,61", "cm")
      $
      $
        ==> v_("tb min") = frac(S_("min"), Delta t) = frac(24 - 6 sqrt(3), 4/3) = 18 - frac(9 sqrt(3), 2) approx #vp-qty("10,21", "cm/s")
      $
  ],
)

== Dạng 4: Bài toán dao động tắt dần của con lắc lò xo có ma sát

#vp-question(
  [Một con lắc lò xo có độ cứng $k = #vp-qty("100", "N/m")$, vật nặng khối lượng $m = #vp-qty("100", "g")$ đặt trên mặt phẳng nằm ngang. Kéo vật dời khỏi vị trí lò xo không biến dạng một đoạn $A_0 = #vp-qty("5", "cm")$ rồi thả nhẹ không vận tốc ban đầu. Biết hệ số ma sát giữa vật và mặt sàn là $mu = "0,02"$, lấy $g = #vp-qty("10", "m/s^2")$.
    a) Tính độ giảm biên độ sau mỗi chu kỳ và tốc độ lớn nhất mà vật đạt được trong quá trình dao động.
    #parbreak() b) Tính tổng quãng đường vật đi được cho đến khi dừng lại hẳn.],
  type: "essay",
  prefix: "Ví dụ",
  level: "Vận dụng cao",
  lines: 4,
  ans: [a) $Delta A_T = #vp-qty("0,08", "cm")$, $v_("max") approx #vp-qty("1,575", "m/s")$; b) $S = #vp-qty("6,25", "m")$],
  sol: [
    - Tần số góc riêng: $omega = sqrt(frac(k, m)) = sqrt(frac(100, "0,1")) = 10 sqrt(10) approx 10 pi thin "rad/s"$.
    - Vị trí cân bằng tạm thời cách vị trí lò xo không biến dạng một đoạn:
      $ x_0 = frac(mu m g, k) = frac("0,02" dot "0,1" dot 10, 100) = 2 dot 10^(-4) thin "m" = #vp-qty("0,02", "cm") $
    - *a) Độ giảm biên độ sau mỗi chu kỳ và tốc độ cực đại:*
      $ Delta A_T = 4 x_0 = frac(4 mu m g, k) = 4 dot "0,02" = #vp-qty("0,08", "cm") $
      Tốc độ lớn nhất đạt được khi vật đi qua vị trí cân bằng tạm $O_1$ lần đầu tiên:
      $
        v_("max") = omega (A_0 - x_0) = 10 sqrt(10) dot ("0,05" - "0,0002") = 10 sqrt(10) dot "0,0498" approx #vp-qty("1,575", "m/s")
      $
    - *b) Tổng quãng đường vật đi được đến khi dừng hẳn:*
      Ta kiểm tra số nửa chu kỳ: $frac(A_0, Delta A_("1/2")) = frac(A_0, 2 x_0) = frac(5, "0,04") = 125$ (nguyên chẵn, phần dư $r = 0$, nên vật dừng lại đúng tại vị trí lò xo không biến dạng $O$ có $x_("dừng") = 0$).
      Áp dụng bảo toàn năng lượng, toàn bộ thế năng đàn hồi ban đầu chuyển thành công của lực ma sát:
      $
        frac(1, 2) k A_0^2 = mu m g S ==> S = frac(k A_0^2, 2 mu m g) = frac(100 dot ("0,05")^2, 2 dot "0,02" dot "0,1" dot 10) = frac("0,25", "0,04") = #vp-qty("6,25", "m")
      $
  ],
)

#pagebreak()
// =========================================================================
// PHẦN VII. NGÂN HÀNG CÂU HỎI ĐÁNH GIÁ NĂNG LỰC (CHUẨN GDPT 2018)
// =========================================================================
= Ngân hàng câu hỏi đánh giá năng lực (Chuẩn cấu trúc GDPT 2018) <de-kiem-tra>

// Tắt hiển thị lời giải trực tiếp để học sinh tự luyện tập; lời giải được tổng hợp ở cuối tài liệu
#vp-show-ans.update(false)
#vp-show-sol.update(false)
#vp-show-level.update(true)
#vp-show-source.update(false)
#vp-sol-store.update(())

== Phần I. Câu trắc nghiệm nhiều phương án lựa chọn (10 câu)
#vp-instructions(reset: true)[Mỗi câu hỏi thí sinh chỉ chọn một phương án đúng.]

// Câu 1 (từ web_dddh/script.js)
#vp-question(
  [Một chất điểm dao động điều hòa theo phương trình $x = A cos(omega t + varphi)$. Đại lượng $(omega t + varphi)$ được gọi là gì?],
  type: "mcq",
  level: "Nhận biết",
  options: (
    [Biên độ dao động.],
    [Pha dao động tại thời điểm $t$.],
    [Pha ban đầu của dao động.],
    [Tần số góc của dao động.],
  ),
  ans: "B",
  sol: [Đại lượng $(omega t + varphi)$ là *pha dao động tại thời điểm $t$*, cho biết trạng thái dao động (vị trí li độ và chiều chuyển động) của chất điểm ở thời điểm đó. Còn $varphi$ là pha ban đầu tại $t = 0$.],
)

// Câu 2 (từ web_dddh/script.js)
#vp-question(
  [Trong dao động điều hòa, mối liên hệ về pha giữa gia tốc $a$ và li độ $x$ là:],
  type: "mcq",
  level: "Nhận biết",
  options: (
    [Gia tốc nhanh pha hơn li độ góc $frac(pi, 2)$.],
    [Gia tốc chậm pha hơn li độ góc $frac(pi, 2)$.],
    [Gia tốc ngược pha với li độ (lệch pha góc $pi$).],
    [Gia tốc cùng pha với li độ.],
  ),
  ans: "C",
  sol: [Phương trình gia tốc $a = -omega^2 x = omega^2 A cos(omega t + varphi + pi)$. Do đó, gia tốc luôn *ngược pha với li độ* (độ lệch pha bằng $pi thin "rad"$).],
)

// Câu 3 (từ web_dddh/script.js)
#vp-question(
  [Một con lắc lò xo dao động điều hòa với chu kỳ $T$. Động năng của vật biến thiên tuần hoàn theo thời gian với chu kỳ bằng bao nhiêu?],
  type: "mcq",
  level: "Thông hiểu",
  options: (
    [$T' = T$.],
    [$T' = frac(T, 2)$.],
    [$T' = 2 T$.],
    [$T' = 4 T$.],
  ),
  ans: "B",
  sol: [Động năng biến thiên theo hàm $sin^2(omega t + varphi) = frac(1 - cos(2 omega t + 2 varphi), 2)$. Tần số góc biến thiên của động năng là $omega' = 2 omega$, do đó chu kỳ biến thiên của động năng và thế năng là $T' = frac(T, 2)$.],
)

// Câu 4 (từ web_dddh/script.js)
#vp-question(
  [Hiện tượng cộng hưởng cơ học xảy ra khi nào?],
  type: "mcq",
  level: "Thông hiểu",
  options: (
    [Biên độ của ngoại lực cưỡng bức đạt giá trị cực đại.],
    [Tần số của ngoại lực cưỡng bức bằng tần số dao động riêng của hệ ($f_("nl") = f_0$).],
    [Chu kỳ ngoại lực cưỡng bức lớn hơn rất nhiều so với chu kỳ riêng.],
    [Lực ma sát của môi trường triệt tiêu hoàn toàn.],
  ),
  ans: "B",
  sol: [Hiện tượng cộng hưởng là hiện tượng biên độ dao động cưỡng bức tăng đến giá trị cực đại khi *tần số của ngoại lực cưỡng bức bằng (hoặc xấp xỉ bằng) tần số dao động riêng của hệ* ($f_("nl") approx f_0$).],
)

// Câu 5 (từ web_dddh/script.js)
#vp-question(
  [Nguyên nhân chính gây ra hiện tượng dao động tắt dần trong cơ học là do:],
  type: "mcq",
  level: "Thông hiểu",
  options: (
    [Trọng lực tác dụng lên vật.],
    [Lực đàn hồi của lò xo giảm dần.],
    [Lực cản môi trường và lực ma sát làm tiêu hao cơ năng thành nhiệt.],
    [Khối lượng của vật nặng bị biến đổi.],
  ),
  ans: "C",
  sol: [Dao động tắt dần là dao động có biên độ và cơ năng giảm dần theo thời gian. Nguyên nhân trực tiếp là do *lực ma sát và lực cản của môi trường* làm tiêu hao cơ năng của hệ thành nội năng (nhiệt năng).],
)

// Câu 6 (từ web_dddh/script.js)
#vp-question(
  [Một vật dao động điều hòa với biên độ $A = #vp-qty("6", "cm")$ và chu kỳ $T = #vp-qty("2", "s")$. Tốc độ trung bình lớn nhất của vật trong khoảng thời gian $Delta t = frac(1, 3) thin "s"$ là:],
  type: "mcq",
  level: "Vận dụng",
  options: (
    [$#vp-qty("9", "cm/s")$.],
    [$#vp-qty("18", "cm/s")$.],
    [$#vp-qty("12", "cm/s")$.],
    [$#vp-qty("15", "cm/s")$.],
  ),
  ans: "B",
  sol: [Góc quét trong $Delta t = frac(1, 3) thin "s" = frac(T, 6)$ là $Delta varphi = frac(2 pi, T) dot frac(T, 6) = frac(pi, 3)$. Quãng đường lớn nhất $S_("max") = 2 A sin(frac(Delta varphi, 2)) = 2 dot 6 dot sin(frac(pi, 6)) = #vp-qty("6", "cm")$. Tốc độ trung bình lớn nhất: $v_("tb max") = frac(S_("max"), Delta t) = frac(6, 1/3) = #vp-qty("18", "cm/s")$.],
)

// Câu 7 (từ web_dddh/script.js)
#vp-question(
  [Tại vị trí li độ $x$ mà động năng gấp $3$ lần thế năng ($W_("đ") = 3 W_("t")$), li độ $x$ có giá trị bằng bao nhiêu theo biên độ $A$?],
  type: "mcq",
  level: "Vận dụng",
  options: (
    [$x = plus.minus frac(A, 2)$.],
    [$x = plus.minus frac(A sqrt(3), 2)$.],
    [$x = plus.minus frac(A sqrt(2), 2)$.],
    [$x = plus.minus frac(A, 4)$.],
  ),
  ans: "A",
  sol: [Khi $W_("đ") = n W_("t")$, cơ năng $W = (n + 1) W_("t") arrow.l.r.double frac(1, 2) k A^2 = (n + 1) frac(1, 2) k x^2 ==> x = plus.minus frac(A, sqrt(n + 1))$. Với $n = 3 ==> x = plus.minus frac(A, sqrt(4)) = plus.minus frac(A, 2)$.],
)

// Câu 8 (từ web_dddh/script.js)
#vp-question(
  [Một con lắc lò xo nằm ngang có $k = #vp-qty("100", "N/m")$, vật nặng $m = #vp-qty("100", "g")$. Kéo vật lệch khỏi VTCB đoạn $A_0 = #vp-qty("5", "cm")$ rồi buông nhẹ. Biết hệ số ma sát giữa vật và sàn là $mu = "0,02"$, lấy $g = #vp-qty("10", "m/s^2")$. Tổng quãng đường vật đi được đến khi dừng hẳn là:],
  type: "mcq",
  level: "Vận dụng",
  options: (
    [$#vp-qty("6,25", "m")$.],
    [$#vp-qty("12,5", "m")$.],
    [$#vp-qty("3,125", "m")$.],
    [$#vp-qty("2,5", "m")$.],
  ),
  ans: "A",
  sol: [Theo định luật bảo toàn năng lượng: $frac(1, 2) k A_0^2 = mu m g S ==> S = frac(k A_0^2, 2 mu m g) = frac(100 dot "0,05"^2, 2 dot "0,02" dot "0,1" dot 10) = frac("0,25", "0,04") = #vp-qty("6,25", "m")$.],
)

// Câu 9 (từ web_dddh/script.js)
#vp-question(
  [Một chất điểm dao động điều hòa. Tại thời điểm $t_1$, li độ và vận tốc là $x_1 = #vp-qty("3", "cm")$, $v_1 = #vp-qty("40", "cm/s")$. Tại thời điểm $t_2$, li độ và vận tốc là $x_2 = #vp-qty("4", "cm")$, $v_2 = #vp-qty("30", "cm/s")$. Tần số góc $omega$ và biên độ $A$ của dao động là:],
  type: "mcq",
  level: "Vận dụng cao",
  options: (
    [$omega = #vp-qty("10", "rad/s"); quad A = #vp-qty("5", "cm")$.],
    [$omega = #vp-qty("20", "rad/s"); quad A = #vp-qty("5", "cm")$.],
    [$omega = #vp-qty("10", "rad/s"); quad A = #vp-qty("7", "cm")$.],
    [$omega = #vp-qty("15", "rad/s"); quad A = #vp-qty("6", "cm")$.],
  ),
  ans: "A",
  sol: [Sử dụng hệ thức độc lập tại hai thời điểm: $omega = sqrt(frac(v_1^2 - v_2^2, x_2^2 - x_1^2)) = sqrt(frac(40^2 - 30^2, 4^2 - 3^2)) = sqrt(frac(700, 7)) = #vp-qty("10", "rad/s")$. Biên độ: $A = sqrt(x_1^2 + frac(v_1^2, omega^2)) = sqrt(3^2 + (frac(40, 10))^2) = #vp-qty("5", "cm")$.],
)

// Câu 10 (từ web_dddh/script.js)
#vp-question(
  [Một người xách một xô nước đi trên đường. Mỗi bước đi dài $L = #vp-qty("50", "cm")$. Nước trong xô dao động sóng sánh mạnh nhất khi người đó đi với tốc độ $v = #vp-qty("2,5", "km/h")$. Tần số dao động riêng $f_0$ của nước trong xô là:],
  type: "mcq",
  level: "Vận dụng cao",
  options: (
    [$#vp-qty("1,39", "Hz")$.],
    [$#vp-qty("0,72", "Hz")$.],
    [$#vp-qty("2,50", "Hz")$.],
    [$#vp-qty("5,00", "Hz")$.],
  ),
  ans: "A",
  sol: [Đổi $v = #vp-qty("2,5", "km/h") = frac("2,5", "3,6") = frac(25, 36) thin "m/s"$. Chu kỳ ngoại lực do mỗi bước chân gây ra là $T_("nl") = frac(L, v) = frac("0,5", 25/36) = #vp-qty("0,72", "s")$. Nước sóng sánh mạnh nhất khi xảy ra cộng hưởng: $T_0 = T_("nl") = #vp-qty("0,72", "s") ==> f_0 = frac(1, T_0) = frac(1, "0,72") approx #vp-qty("1,39", "Hz")$.],
)

== Phần II. Câu trắc nghiệm đúng/sai (3 câu)
#vp-instructions(reset: true)[Trong mỗi ý a), b), c), d) ở mỗi câu, thí sinh chọn đúng (Đ) hoặc sai (S).]

// Câu 1 TF
#vp-question(
  [Một chất điểm có khối lượng $m = #vp-qty("200", "g")$ dao động điều hòa dọc theo trục $O x$ với phương trình $x = 10 cos(4 pi t - frac(pi, 3)) thin ("cm")$ ($t$ tính bằng giây).],
  type: "tf",
  level: "Thông hiểu",
  tf-style: "table",
  statements: (
    [Chiều dài quỹ đạo dao động của chất điểm là $L = #vp-qty("20", "cm")$ và chu kỳ dao động là $T = #vp-qty("0,5", "s")$.],
    [Tại thời điểm ban đầu $t = 0$, chất điểm đang ở vị trí có li độ $x = #vp-qty("5", "cm")$ và chuyển động theo chiều âm.],
    [Tốc độ cực đại của chất điểm là $v_("max") = 40 pi thin "cm/s"$ và cơ năng của chất điểm bằng $#vp-qty("0,16", "J")$ (lấy $pi^2 = 10$).],
    [Kể từ lúc $t = 0$, chất điểm đi qua vị trí cân bằng lần đầu tiên tại thời điểm $t = frac(5, 24) thin "s"$.],
  ),
  ans-tf: ("Đ", "S", "Đ", "Đ"),
  sol: [
    a) *Đúng.* Biên độ $A = #vp-qty("10", "cm") ==> L = 2A = #vp-qty("20", "cm")$; chu kỳ $T = frac(2 pi, 4 pi) = #vp-qty("0,5", "s")$.
    #parbreak() b) *Sai.* Tại $t = 0$, $x_0 = 10 cos(-pi/3) = #vp-qty("5", "cm")$, nhưng vì $varphi = -pi/3 < 0$ nên $v_0 = -omega A sin(-pi/3) > 0$, tức vật đang chuyển động theo *chiều dương*.
    #parbreak() c) *Đúng.* $v_("max") = omega A = 40 pi thin "cm/s" = "0,4" pi thin "m/s"$. Cơ năng: $W = frac(1, 2) m v_("max")^2 = frac(1, 2) dot "0,2" dot ("0,4" pi)^2 = "0,1" dot "0,16" dot 10 = #vp-qty("0,16", "J")$.
    #parbreak() d) *Đúng.* Từ trạng thái $t = 0$ ($x = +A/2$, đi theo chiều dương), vật đi ra biên dương $+A$ hết $T/6$ rồi quay về VTCB hết $T/4$: tổng thời gian $Delta t = frac(T, 6) + frac(T, 4) = frac(5 T, 12) = frac(5 dot "0,5", 12) = frac(5, 24) thin "s"$.
  ],
)

// Câu 2 TF
#vp-question(
  [Một con lắc lò xo treo thẳng đứng gồm lò xo nhẹ có độ cứng $k = #vp-qty("100", "N/m")$ và vật nhỏ khối lượng $m = #vp-qty("400", "g")$. Chọn trục $O x$ thẳng đứng hướng xuống, gốc $O$ tại vị trí cân bằng. Kích thích cho vật dao động điều hòa với biên độ $A = #vp-qty("8", "cm")$. Lấy $g = #vp-qty("10", "m/s^2")$, $pi^2 = 10$.],
  type: "tf",
  level: "Vận dụng",
  tf-style: "table",
  statements: (
    [Tại vị trí cân bằng, lò xo giãn một đoạn $Delta l_0 = #vp-qty("4", "cm")$ và chu kỳ dao động của con lắc là $T = #vp-qty("0,4", "s")$.],
    [Độ lớn lực kéo về cực đại tác dụng lên vật trong quá trình dao động là $#vp-qty("12", "N")$.],
    [Độ lớn lực đàn hồi cực đại là $#vp-qty("12", "N")$ và độ lớn lực đàn hồi cực tiểu là $#vp-qty("4", "N")$.],
    [Trong một chu kỳ dao động, khoảng thời gian lò xo bị nén là $Delta t_("nén") = frac(2, 15) thin "s"$.],
  ),
  ans-tf: ("Đ", "S", "S", "Đ"),
  sol: [
    a) *Đúng.* Độ biến dạng tại VTCB: $Delta l_0 = frac(m g, k) = frac("0,4" dot 10, 100) = "0,04" thin "m" = #vp-qty("4", "cm")$. Chu kỳ: $T = 2 pi sqrt(frac(Delta l_0, g)) = 2 sqrt(10) sqrt(frac("0,04", 10)) = #vp-qty("0,4", "s")$.
    #parbreak() b) *Sai.* Lực kéo về cực đại là $F_("kv max") = k A = 100 dot "0,08" = #vp-qty("8", "N")$ (không phải $#vp-qty("12", "N")$).
    #parbreak() c) *Sai.* Lực đàn hồi cực đại là $F_("đh max") = k(Delta l_0 + A) = 100 dot ("0,04" + "0,08") = #vp-qty("12", "N")$. Tuy nhiên vì $A = #vp-qty("8", "cm") > Delta l_0 = #vp-qty("4", "cm")$, trong quá trình dao động vật đi qua vị trí lò xo không biến dạng ($x = -#vp-qty("4", "cm")$) nên độ lớn lực đàn hồi cực tiểu bằng *$#vp-qty("0", "N")$*.
    #parbreak() d) *Đúng.* Lò xo bị nén khi vật ở phía trên vị trí tự nhiên ($x < -Delta l_0 = -A/2$). Thời gian đi từ $-A/2$ đến biên trên $-A$ rồi quay lại $-A/2$ là $Delta t_("nén") = 2 dot frac(T, 6) = frac(T, 3) = frac("0,4", 3) = frac(2, 15) thin "s"$.
  ],
)

// Câu 3 TF
#vp-question(
  [Khảo sát sự tắt dần và hiện tượng cộng hưởng của một hệ cơ học có tần số dao động riêng $f_0 = #vp-qty("5", "Hz")$ đặt trong các môi trường có lực cản khác nhau.],
  type: "tf",
  level: "Thông hiểu",
  tf-style: "table",
  statements: (
    [Khi hệ dao động tắt dần tự do trong không khí, biên độ giảm dần nhưng cơ năng vẫn được bảo toàn.],
    [Nếu tác dụng vào hệ một ngoại lực cưỡng bức $F = 10 cos(16 pi t) thin ("N")$ thì khi ổn định, hệ sẽ dao động với tần số $f = #vp-qty("8", "Hz")$.],
    [Khi tăng tần số của ngoại lực cưỡng bức từ $#vp-qty("2", "Hz")$ đến $#vp-qty("10", "Hz")$, biên độ dao động cưỡng bức của hệ sẽ tăng dần rồi giảm dần.],
    [Nếu đưa hệ từ không khí vào trong dầu nhớt thì đỉnh của đường cong cộng hưởng sẽ trở nên cao và nhọn hơn.],
  ),
  ans-tf: ("S", "Đ", "Đ", "S"),
  sol: [
    a) *Sai.* Trong dao động tắt dần, cả biên độ và cơ năng đều giảm dần theo thời gian do chuyển hóa thành nhiệt năng.
    #parbreak() b) *Đúng.* Tần số của ngoại lực là $f_("nl") = frac(omega_("nl"), 2 pi) = frac(16 pi, 2 pi) = #vp-qty("8", "Hz")$. Dao động cưỡng bức ổn định luôn có tần số bằng tần số của ngoại lực ($f = f_("nl") = #vp-qty("8", "Hz")$).
    #parbreak() c) *Đúng.* Khi $f_("nl")$ tăng từ $#vp-qty("2", "Hz")$ đến $f_0 = #vp-qty("5", "Hz")$, độ lệch $|f_("nl") - f_0|$ giảm nên biên độ tăng đến cực đại (cộng hưởng tại $#vp-qty("5", "Hz")$); khi $f_("nl")$ tiếp tục tăng từ $#vp-qty("5", "Hz")$ lên $#vp-qty("10", "Hz")$, độ lệch $|f_("nl") - f_0|$ tăng nên biên độ giảm dần.
    #parbreak() d) *Sai.* Trong dầu nhớt lực cản môi trường rất lớn nên đỉnh cộng hưởng sẽ thấp và tù (bẹt) hơn so với trong không khí.
  ],
)

== Phần III. Câu trắc nghiệm trả lời ngắn (4 câu)
#vp-instructions(reset: true)[Ghi kết quả số vào ô trống theo đơn vị và yêu cầu làm tròn trong đề.]

// Câu 1 Short
#vp-question(
  [Một chất điểm dao động điều hòa với chu kỳ $T = #vp-qty("1,2", "s")$ và biên độ $A = #vp-qty("10", "cm")$. Quãng đường lớn nhất mà chất điểm đi được trong khoảng thời gian $Delta t = #vp-qty("0,4", "s")$ bằng bao nhiêu cm? (Làm tròn kết quả đến 1 chữ số thập phân).],
  type: "short",
  level: "Vận dụng",
  ans: "17,3",
  sol: [Ta có $Delta t = #vp-qty("0,4", "s") = frac(T, 3) < frac(T, 2)$. Góc quét: $Delta varphi = frac(2 pi, T) dot frac(T, 3) = frac(2 pi, 3) thin "rad"$. Quãng đường lớn nhất: $S_("max") = 2 A sin(frac(Delta varphi, 2)) = 2 dot 10 dot sin(frac(pi, 3)) = 10 sqrt(3) approx #vp-qty("17,3", "cm")$.],
)

// Câu 2 Short
#vp-question(
  [Một con lắc đơn có chiều dài $l = #vp-qty("1", "m")$ dao động điều hòa tại nơi có gia tốc trọng trường $g = pi^2 thin "m/s"^2$ với biên độ góc $alpha_0 = "0,1" thin "rad"$. Tốc độ cực đại của vật nhỏ bằng bao nhiêu cm/s? (Làm tròn đến hàng phần mười).],
  type: "short",
  level: "Vận dụng",
  ans: "31,4",
  sol: [Tần số góc $omega = sqrt(frac(g, l)) = sqrt(frac(pi^2, 1)) = pi thin "rad/s"$. Biên độ dài $S_0 = l alpha_0 = 1 dot "0,1" = "0,1" thin "m" = #vp-qty("10", "cm")$. Tốc độ cực đại: $v_("max") = omega S_0 = pi dot 10 approx #vp-qty("31,4", "cm/s")$.],
)

// Câu 3 Short
#vp-question(
  [Hai chất điểm dao động điều hòa cùng tần số trên cùng một trục tọa độ $O x$ quanh gốc $O$ với biên độ lần lượt là $A_1 = #vp-qty("6", "cm")$, $A_2 = #vp-qty("8", "cm")$ và lệch pha nhau góc $Delta varphi = frac(pi, 2)$. Khoảng cách lớn nhất giữa hai chất điểm trong quá trình dao động bằng bao nhiêu cm?],
  type: "short",
  level: "Vận dụng",
  ans: "10",
  sol: [Vì hai dao động vuông pha ($Delta varphi = pi/2$) nên khoảng cách cực đại giữa hai chất điểm là $d_("max") = sqrt(A_1^2 + A_2^2 - 2 A_1 A_2 cos(pi/2)) = sqrt(6^2 + 8^2) = #vp-qty("10", "cm")$.],
)

// Câu 4 Short
#vp-question(
  [Một chất điểm dao động điều hòa có vận tốc tại hai thời điểm vuông pha $t_1$ và $t_2$ ($t_2 - t_1 = frac(T, 4)$) lần lượt là $v_1 = #vp-qty("12", "cm/s")$ và $v_2 = -#vp-qty("16", "cm/s")$. Tốc độ cực đại $v_("max")$ của chất điểm bằng bao nhiêu cm/s?],
  type: "short",
  level: "Vận dụng cao",
  ans: "20",
  sol: [Do hai thời điểm $t_1$ và $t_2$ vuông pha nhau nên ta có hệ thức: $v_("max") = sqrt(v_1^2 + v_2^2) = sqrt(12^2 + (-16)^2) = #vp-qty("20", "cm/s")$.],
)

== Phần IV. Tự luận tổng hợp (2 câu)
#vp-instructions(reset: true)[Trình bày đầy đủ lập luận, công thức và kết quả tính toán.]

// Câu 1 Essay
#vp-question(
  [Một con lắc lò xo gồm vật nhỏ khối lượng $m = #vp-qty("250", "g")$ và lò xo nhẹ có độ cứng $k = #vp-qty("100", "N/m")$ dao động điều hòa trên mặt phẳng ngang không ma sát. Tại thời điểm $t = 0$, người ta kéo vật đến vị trí lò xo giãn $#vp-qty("4", "cm")$ (theo chiều dương) rồi truyền cho vật vận tốc $v_0 = #vp-qty("80", "cm/s")$ hướng ra xa vị trí cân bằng.
    a) Tính chu kỳ dao động, biên độ dao động và cơ năng của con lắc. Viết phương trình dao động của vật.
    #parbreak() b) Xác định các thời điểm trong chu kỳ đầu tiên mà tại đó độ lớn lực đàn hồi của lò xo bằng $#vp-qty("4", "N")$.],
  type: "essay",
  level: "Vận dụng",
  lines: 6,
  ans: [$A = 4 sqrt(2) thin "cm"; W = #vp-qty("0,16", "J")$],
  sol: [
    - *a) Chu kỳ, biên độ, cơ năng và phương trình dao động:*
      • Tần số góc và chu kỳ: $omega = sqrt(frac(k, m)) = sqrt(frac(100, "0,25")) = #vp-qty("20", "rad/s") ==> T = frac(2 pi, omega) = frac(pi, 10) = "0,1" pi approx #vp-qty("0,314", "s")$.
      • Biên độ dao động: tại $t = 0$, $x_0 = +#vp-qty("4", "cm")$, $v_0 = +#vp-qty("80", "cm/s")$:
      $
        A = sqrt(x_0^2 + frac(v_0^2, omega^2)) = sqrt(4^2 + (frac(80, 20))^2) = 4 sqrt(2) thin "cm" approx #vp-qty("5,66", "cm")
      $
      • Cơ năng: $W = frac(1, 2) k A^2 = frac(1, 2) dot 100 dot ("0,04" sqrt(2))^2 = #vp-qty("0,16", "J")$.
      • Pha ban đầu: $cos varphi = frac(x_0, A) = frac(4, 4 sqrt(2)) = frac(sqrt(2), 2)$ và $v_0 > 0 ==> varphi = -frac(pi, 4) thin "rad"$.
      • Phương trình dao động: $x = 4 sqrt(2) cos(20 t - frac(pi, 4)) thin ("cm")$.
    - *b) Các thời điểm trong chu kỳ đầu tiên có $|F_("đh")| = #vp-qty("4", "N")$:*
      Với con lắc lò xo nằm ngang, $|F_("đh")| = k |x| = #vp-qty("4", "N") ==> |x| = frac(4, 100) = "0,04" thin "m" = #vp-qty("4", "cm") = frac(A sqrt(2), 2)$.
      Trong một chu kỳ đầu tiên ($0 <= t < T$), bốn vị trí $|x| = frac(A sqrt(2), 2)$ cách đều nhau góc quét $Delta varphi = frac(pi, 2)$ (tức khoảng thời gian $frac(T, 4) = frac(pi, 40) thin "s"$), bắt đầu ngay từ $t_1 = 0$:
      $
        t_1 = 0; quad t_2 = frac(pi, 40) thin "s"; quad t_3 = frac(pi, 20) thin "s"; quad t_4 = frac(3 pi, 40) thin "s"
      $
  ],
)

// Câu 2 Essay
#vp-question(
  [Hai chất điểm $M_1$ và $M_2$ cùng dao động điều hòa dọc theo trục $O x$ quanh gốc tọa độ $O$ với phương trình lần lượt là $x_1 = 4 cos(5 pi t + frac(pi, 6)) thin ("cm")$ và $x_2 = 4 sqrt(3) cos(5 pi t - frac(pi, 3)) thin ("cm")$.
    a) Tìm khoảng cách lớn nhất giữa hai chất điểm và khoảng thời gian ngắn nhất giữa hai lần liên tiếp hai chất điểm gặp nhau.
    #parbreak() b) Tìm thời điểm đầu tiên kể từ $t = 0$ mà khoảng cách giữa hai chất điểm bằng $#vp-qty("4", "cm")$.],
  type: "essay",
  level: "Vận dụng cao",
  lines: 6,
  ans: [$d_("max") = #vp-qty("8", "cm"); t_1 = "1/30 s"$],
  sol: [
    - Xét hiệu hai li độ: $Delta x = x_1 - x_2 = 4 cos(5 pi t + frac(pi, 6)) - 4 sqrt(3) cos(5 pi t - frac(pi, 3))$.
      Ta thấy độ lệch pha giữa $x_1$ và $x_2$ là $Delta varphi = frac(pi, 6) - (-frac(pi, 3)) = frac(pi, 2)$ (hai dao động vuông pha).
    - *a) Khoảng cách cực đại và khoảng thời gian giữa hai lần gặp nhau liên tiếp:*
      • Khoảng cách cực đại giữa hai chất điểm là biên độ của $Delta x$:
      $ d_("max") = sqrt(A_1^2 + A_2^2) = sqrt(4^2 + (4 sqrt(3))^2) = #vp-qty("8", "cm") $
      • Tìm pha ban đầu của $Delta x = x_1 + (-x_2) = 4 cos(5 pi t + frac(pi, 6)) + 4 sqrt(3) cos(5 pi t + frac(2 pi, 3))$:
      Tại $t = 0$: $Delta x(0) = 4 cos(pi/6) - 4 sqrt(3) cos(-pi/3) = 2 sqrt(3) - 2 sqrt(3) = 0$; mặt khác $Delta v(0) = v_1(0) - v_2(0) = -20 pi sin(pi/6) + 20 pi sqrt(3) sin(-pi/3) = -10 pi - 30 pi = -40 pi < 0$.
      Do đó $Delta x = 8 cos(5 pi t + frac(pi, 2)) thin ("cm")$.
      • Hai chất điểm gặp nhau khi $Delta x = 0$: ngay tại $t = 0$ hai chất điểm đang đi qua nhau tại $x_1 = x_2 = 2 sqrt(3) thin "cm"$; khoảng thời gian ngắn nhất giữa hai lần gặp nhau liên tiếp là nửa chu kỳ:
      $ Delta t_("gặp") = frac(T, 2) = frac(1, 2) dot frac(2 pi, 5 pi) = #vp-qty("0,2", "s") $
    - *b) Thời điểm đầu tiên khoảng cách $d = |Delta x| = #vp-qty("4", "cm") = frac(d_("max"), 2)$:*
      Tại $t = 0$, $Delta x = 0$ (pha $+frac(pi, 2)$ trên vòng tròn của $Delta x$). Để đến vị trí $|Delta x| = frac(d_("max"), 2)$ gần nhất (pha $+frac(2 pi, 3)$), góc quét nhỏ nhất là:
      $
        Delta alpha = frac(2 pi, 3) - frac(pi, 2) = frac(pi, 6) thin "rad" ==> t_1 = frac(Delta alpha, omega) = frac(pi / 6, 5 pi) = frac(1, 30) thin "s"
      $
  ],
)

#pagebreak()
// =========================================================================
// PHỤ LỤC: BẢNG ĐÁP ÁN & HƯỚNG DẪN GIẢI CHI TIẾT (PHẦN VII)
// =========================================================================
#metadata("phu-luc") <phu-luc-dap-an>
#vp-print-keys(title: "BẢNG ĐÁP ÁN ĐỀ ĐÁNH GIÁ NĂNG LỰC (PHẦN VII)")
#v(14pt)
#vp-print-solutions(title: "HƯỚNG DẪN GIẢI CHI TIẾT ĐỀ ĐÁNH GIÁ NĂNG LỰC (PHẦN VII)")

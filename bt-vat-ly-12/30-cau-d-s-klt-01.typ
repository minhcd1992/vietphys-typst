#import "../vietphys.typ": *

#let co-loi-giai = (
  sys.inputs.at("teacher", default: "false") == "true"
    or sys.inputs.at("mode", default: "student") == "teacher"
    or sys.inputs.at("loi-giai", default: "khong") == "co"
)

#let sbt-question-gap = 6pt
#let sbt-stem-gap = 7pt
#let sbt-header-gap = 23pt
#let sbt-writing-line-gap = 1.8em
#let sbt-writing-top-gap = 16pt
#let sbt-instruction-gap = 14pt
#let sbt-tf-row-padding = 7pt
#let sbt-title-font = "Rounded Mplus 1c"

#let sbt-instructions = vp-instructions
#let sbt-chuong = vp-workbook-chapter.with(font: sbt-title-font)
#let sbt-bai = vp-workbook-lesson.with(font: sbt-title-font, new-page: false)

#let sbt-header = vp-manual-header-fancy(
  title: "BÀI TẬP VẬT LÍ 12",
  subtitle: "LUYỆN TẬP THEO CHỦ ĐỀ",
  icon: "atom",
  compact: true,
  title-size: 12pt,
  subtitle-size: 8pt,
  chapter-size: 10pt,
  icon-size: 18pt,
  title-gap: 4pt,
  bottom-padding: 4pt,
  chapter-label: "CHƯƠNG II",
)

#let sbt-footer = vp-footer-shuriken(
  title: "Học Kage",
  slogan: "Level up your knowledge",
  compact: true,
  title-size: 12pt,
  slogan-size: 10pt,
  page-size: 9pt,
  badge-size: 27pt,
)

#show: vp-workbook.with(
  title: "BÀI TẬP VẬT LÍ 12",
  header: sbt-header,
  footer: sbt-footer,
  page: (
    font: "Times New Roman",
    font-size: 14pt,
    margin: (x: 2cm, top: 2cm, bottom: 1.6cm),
    header-ascent: sbt-header-gap,
    footer-descent: 6pt,
    leading: 0.55em,
  ),
  questions: (
    show-solutions: co-loi-giai,
    show-answers: co-loi-giai,
    q-spacing: sbt-question-gap,
    stem-spacing: sbt-stem-gap,
    line-spacing: sbt-writing-line-gap,
    lines-above: sbt-writing-top-gap,
    instruction-gap: sbt-instruction-gap,
    tf-inset: (x: 5pt, y: sbt-tf-row-padding),
  ),
)

#set list(spacing: 0.9em)

#sbt-bai(
  num: "2",
  title: "Bài tập chuyên đề Khí lý tưởng",
  subtitle: "Trắc nghiệm Đúng / Sai (30 câu — 120 lệnh hỏi)",
)

= Chủ đề 1. Định luật Boyle và bài tập đẳng nhiệt
#sbt-instructions[Xác định mỗi phát biểu a), b), c), d) là đúng hay sai.]

// Câu 1
#vp-question(
  [
    Một học sinh tiến hành thí nghiệm kiểm chứng định luật Boyle với một khối khí lí tưởng nhốt trong xilanh kín. Ban đầu khối khí có thể tích $V_1 = "6,0" thin "lít"$ ở áp suất $p_1 = "1,0" dot 10^5 thin "Pa"$. Học sinh dịch chuyển pit-tông rất chậm để nén khí đẳng nhiệt đến thể tích $V_2 = "2,0" thin "lít"$.
  ],
  type: "tf",
  statements: (
    [Do nhiệt độ khối khí không đổi, tích của áp suất và thể tích trong suốt quá trình nén có giá trị không đổi bằng $600 thin "Pa" dot "m"^3$ (hay $600 thin "J"$).],
    [Áp suất của khối khí sau khi nén bằng $"3,0" dot 10^5 thin "Pa"$.],
    [Độ biến thiên áp suất của khối khí khi thể tích giảm đi $"4,0" thin "lít"$ là $Delta p = "2,0" dot 10^5 thin "Pa"$.],
    [Nếu trong quá trình nén, xilanh bị rò rỉ làm thoát ra ngoài $20%$ số mol khí ban đầu thì áp suất thu được ở thể tích $"2,0" thin "lít"$ bằng $"2,4" dot 10^5 thin "Pa"$.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "Đ"),
  sol: [
    - a) *Đúng:* $p_1 V_1 = "1,0" dot 10^5 thin "Pa" times "0,006" thin "m"^3 = 600 thin "J"$.
    - b) *Đúng:* $p_2 = frac(p_1 V_1, V_2) = frac(600, "0,002") = "3,0" dot 10^5 thin "Pa"$.
    - c) *Đúng:* $Delta p = p_2 - p_1 = "3,0" dot 10^5 - "1,0" dot 10^5 = "2,0" dot 10^5 thin "Pa"$.
    - d) *Đúng:* Rò rỉ $20% arrow.r.double n_2 = "0,8" n_1 arrow.r.double p'_2 = "0,8" times "3,0" dot 10^5 = "2,4" dot 10^5 thin "Pa"$.
  ],
)

// Câu 2
#vp-question(
  [
    Một nhà sinh học biển nghiên cứu sự nở của bọt khí do người thợ lặn nhả ra ở độ sâu $h = 30 thin "m"$ dưới mặt nước biển. Biết khối lượng riêng của nước biển là $rho = 1030 thin "kg/m"^3$, gia tốc trọng trường $g = "9,8" thin "m/s"^2$ và áp suất khí quyển trên mặt biển là $p_0 = "1,01" dot 10^5 thin "Pa"$. Coi nhiệt độ nước biển không đổi theo độ sâu. Thể tích bọt khí khi vừa được nhả ra tại đáy là $V_1 = "1,50" thin "cm"^3$.
  ],
  type: "tf",
  statements: (
    [Áp suất tuyệt đối tác dụng lên bọt khí ở độ sâu $30 thin "m"$ bằng $"4,038" dot 10^5 thin "Pa"$ (xấp xỉ $"4,0" thin "atm"$).],
    [Quá trình bọt khí nổi lên mặt nước là quá trình nén đẳng nhiệt.],
    [Thể tích của bọt khí ngay trước khi vỡ ra ở mặt biển xấp xỉ bằng $"6,00" thin "cm"^3$.],
    [Nếu nhiệt độ nước trên mặt biển cao hơn nhiệt độ ở độ sâu $30 thin "m"$ thì thể tích bọt khí khi nổi lên mặt nước sẽ lớn hơn $"6,00" thin "cm"^3$.],
  ),
  ans-tf: ("Đ", "S", "Đ", "Đ"),
  sol: [
    - a) *Đúng:* $p_1 = p_0 + rho g h = "1,01" dot 10^5 + 1030 times "9,8" times 30 = "4,0382" dot 10^5 thin "Pa" approx "4,038" dot 10^5 thin "Pa"$.
    - b) *Sai:* Bọt khí nổi lên thì áp suất giảm làm thể tích tăng, đây là quá trình *giãn* đẳng nhiệt, không phải nén.
    - c) *Đúng:* $V_2 = V_1 frac(p_1, p_0) = "1,50" times frac("4,0382" dot 10^5, "1,01" dot 10^5) approx "5,997" thin "cm"^3 approx "6,00" thin "cm"^3$.
    - d) *Đúng:* $V_2 = V_1 frac(p_1, p_0) frac(T_("mặt"), T_("đáy"))$, nếu $T_("mặt") > T_("đáy")$ thì $V_2 > "6,00" thin "cm"^3$.
  ],
)

// Câu 3
#vp-question(
  [
    Một thợ sửa xe dùng bơm tay có thể tích mỗi lần nén là $v = "0,15" thin "lít"$ để bơm không khí ở áp suất khí quyển $p_0 = "1,0" thin "atm"$ vào một quả bóng thể tích không đổi $V = "3,0" thin "lít"$. Ban đầu trong bóng đã có sẵn không khí ở áp suất $"1,0" thin "atm"$. Coi nhiệt độ không khí không đổi trong quá trình bơm và bỏ qua thể tích dây dẫn bơm.
  ],
  type: "tf",
  statements: (
    [Mỗi lần gạt bơm đã đưa thêm một lượng khí có tích $p dot V$ bằng $"0,15" thin "atm" dot "lít"$ vào bóng.],
    [Để áp suất trong bóng đạt $"2,2" thin "atm"$, thợ xe cần thực hiện đúng $24$ lần bơm.],
    [Sau $40$ lần bơm liên tục, áp suất không khí bên trong quả bóng đạt giá trị bằng $"3,0" thin "atm"$.],
    [Mật độ phân tử khí bên trong quả bóng sau $40$ lần bơm tăng gấp $"3,0"$ lần so với ban đầu.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "Đ"),
  sol: [
    - a) *Đúng:* $p_0 v = "1,0" times "0,15" = "0,15" thin "atm" dot "lít"$.
    - b) *Đúng:* Tích $p dot V$ cần tăng: $Delta(p V) = ("2,2" - "1,0") times "3,0" = "3,6" thin "atm" dot "lít" arrow.r.double N = frac("3,6", "0,15") = 24$ lần.
    - c) *Đúng:* $p_N dot V = p_0 V + N p_0 v = "1,0" times "3,0" + 40 times "0,15" = "9,0" arrow.r.double p_N = frac("9,0", "3,0") = "3,0" thin "atm"$.
    - d) *Đúng:* Vì nhiệt độ không đổi nên mật độ phân tử $mu = frac(p, k T) prop p$. Áp suất tăng từ $"1,0" thin "atm"$ lên $"3,0" thin "atm"$ nên mật độ phân tử tăng gấp $"3,0"$ lần so với ban đầu.
  ],
)

// Câu 4
#vp-question(
  [
    Hai bình chứa khí lí tưởng $A$ và $B$ có thể tích lần lượt là $V_A = "2,0" thin "lít"$ và $V_B = "3,0" thin "lít"$ được nối với nhau bằng một ống nhỏ có khóa $K$. Ban đầu khóa $K$ đóng; bình $A$ chứa khí ở áp suất $p_A = "3,0" dot 10^5 thin "Pa"$, bình $B$ chứa cùng loại khí ở áp suất $p_B = "1,0" dot 10^5 thin "Pa"$. Hai bình được giữ ở cùng nhiệt độ không đổi $T$. Mở khóa $K$ nhẹ nhàng để khí giữa hai bình thông nhau và đạt cân bằng.
  ],
  type: "tf",
  statements: (
    [Khí sẽ tự động truyền từ bình $B$ sang bình $A$ do bình $B$ có thể tích lớn hơn.],
    [Tổng số mol khí trong hệ hai bình trước và sau khi mở khóa $K$ được bảo toàn.],
    [Áp suất khí trong hai bình khi đạt trạng thái cân bằng bằng $"1,8" dot 10^5 thin "Pa"$.],
    [Lượng khí trong bình $A$ đã chuyển bớt sang bình $B$ một lượng tương ứng với $40%$ số mol ban đầu của bình $A$.],
  ),
  ans-tf: ("S", "Đ", "Đ", "Đ"),
  sol: [
    - a) *Sai:* Khí di chuyển từ nơi có áp suất cao ($A: "3,0" dot 10^5 thin "Pa"$) sang nơi có áp suất thấp ($B: "1,0" dot 10^5 thin "Pa"$).
    - b) *Đúng:* Bảo toàn tổng số mol $n_("tổng") = n_A + n_B$.
    - c) *Đúng:* $p = frac(p_A V_A + p_B V_B, V_A + V_B) = frac("3,0" times "2,0" + "1,0" times "3,0", "2,0" + "3,0") dot 10^5 = "1,8" dot 10^5 thin "Pa"$.
    - d) *Đúng:* Số mol ban đầu ở $A$: $n_A = frac(p_A V_A, R T) = frac("6,0" dot 10^2, R T)$. Số mol còn lại ở $A$: $n'_A = frac(p V_A, R T) = frac("3,6" dot 10^2, R T)$. Phần chuyển sang $B$: $frac("6,0" - "3,6", "6,0") = 40%$.
  ],
)

= Chủ đề 2. Định luật Charles và bài tập đẳng áp

// Câu 5
#vp-question(
  [
    Một giọt thủy ngân nhốt một cột khí lí tưởng dài $L_1 = "20,0" thin "cm"$ trong một ống thủy tinh nhỏ đặt nằm ngang ở nhiệt độ $t_1 = 27^degree"C"$. Đun nóng ống thủy tinh từ từ trong điều kiện áp suất khí quyển $p_0$ không đổi đến nhiệt độ $t_2 = 87^degree"C"$.
  ],
  type: "tf",
  statements: (
    [Áp suất của khối khí trong ống trong suốt quá trình đun nóng luôn bằng áp suất khí quyển $p_0$.],
    [Tỷ số nhiệt độ tuyệt đối giữa trạng thái 2 và trạng thái 1 là $frac(T_2, T_1) = "3,22"$.],
    [Chiều dài cột khí trong ống ở nhiệt độ $87^degree"C"$ bằng $"24,0" thin "cm"$.],
    [Quãng đường giọt thủy ngân dịch chuyển trong ống thủy tinh là $Delta L = "4,0" thin "cm"$.],
  ),
  ans-tf: ("Đ", "S", "Đ", "Đ"),
  sol: [
    - a) *Đúng:* Ống đặt nằm ngang, giọt thủy ngân dịch chuyển tự do nên $p = p_0$.
    - b) *Sai:* $T_1 = 27 + 273 = 300 thin "K"$, $T_2 = 87 + 273 = 360 thin "K" arrow.r.double frac(T_2, T_1) = frac(360, 300) = "1,20" eq.not "3,22"$.
    - c) *Đúng:* $L_2 = L_1 frac(T_2, T_1) = "20,0" times "1,20" = "24,0" thin "cm"$.
    - d) *Đúng:* $Delta L = L_2 - L_1 = "24,0" - "20,0" = "4,0" thin "cm"$.
  ],
)

// Câu 6
#vp-question(
  [
    Một khinh khí cầu du lịch có túi chứa khí với thể tích không đổi $V = 500 thin "m"^3$. Khối lượng vỏ khinh khí cầu và giỏ treo là $m_0 = 150 thin "kg"$. Ở nhiệt độ môi trường $t_0 = 27^degree"C"$, áp suất khí quyển $p_0 = "1,0" dot 10^5 thin "Pa"$, khối lượng riêng của không khí bên ngoài là $D_0 = "1,16" thin "kg/m"^3$. Bằng cách bật đầu đốt nóng không khí bên trong túi khí (có lỗ hở ở đáy), không khí nở ra thoát bớt ra ngoài. Lấy $g = 10 thin "m/s"^2$.
  ],
  type: "tf",
  statements: (
    [Quá trình nung nóng không khí trong túi khí cầu là quá trình đẳng áp vì túi khí thông với bên ngoài.],
    [Khối lượng không khí bị túi khí cầu chiếm chỗ có trọng lượng tạo nên lực đẩy Archimedes bằng $5800 thin "N"$.],
    [Để khinh khí cầu bắt đầu rời mặt đất bay lên, khối lượng riêng của không khí nóng bên trong túi khí cầu phải giảm xuống nhỏ hơn hoặc bằng $"0,86" thin "kg/m"^3$.],
    [Nhiệt độ tối thiểu của không khí bên trong túi khí để khí cầu cất cánh xấp xỉ bằng $"131,7"^degree"C"$.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "Đ"),
  sol: [
    - a) *Đúng:* Khí cầu hở đáy $arrow.r.double p = p_0 = "hằng số"$.
    - b) *Đúng:* $F_A = D_0 V g = "1,16" times 500 times 10 = 5800 thin "N"$.
    - c) *Đúng:* Điều kiện bay: $D_("trong") V + m_0 <= D_0 V arrow.r.double D_("trong") <= D_0 - frac(m_0, V) = "1,16" - frac(150, 500) = "0,86" thin "kg/m"^3$.
    - d) *Đúng:* $T_("trong") = T_0 frac(D_0, D_("trong")) = 300 times frac("1,16", "0,86") approx "404,65" thin "K" arrow.r.double t_("trong") = "404,65" - 273 approx "131,7"^degree"C"$.
  ],
)

// Câu 7
#vp-question(
  [
    Một khối khí lí tưởng thực hiện quá trình giãn nở đẳng áp ở áp suất $p = "2,0" dot 10^5 thin "Pa"$. Ban đầu khối khí có thể tích $V_1 = "4,0" thin "lít"$ ở nhiệt độ $t_1 = 27^degree"C"$. Cung cấp nhiệt lượng cho khối khí làm thể tích của nó tăng lên đến $V_2 = "10,0" thin "lít"$.
  ],
  type: "tf",
  statements: (
    [Nhiệt độ tuyệt đối của khối khí ở trạng thái 2 bằng $750 thin "K"$ (tương ứng $477^degree"C"$).],
    [Công mà khối khí sinh ra để đẩy môi trường xung quanh trong quá trình giãn nở này bằng $1200 thin "J"$.],
    [Tốc độ căn quân phương của các phân tử khí ở trạng thái 2 tăng gấp $"2,5"$ lần so với trạng thái 1.],
    [Nếu nhiệt độ tăng thêm $1 thin "K"$ thì thể tích của khối khí tăng thêm một lượng bằng $frac(1, 300)$ thể tích ban đầu $V_1$.],
  ),
  ans-tf: ("Đ", "Đ", "S", "Đ"),
  sol: [
    - a) *Đúng:* $T_2 = T_1 frac(V_2, V_1) = 300 times frac("10,0", "4,0") = 750 thin "K" = 477^degree"C"$.
    - b) *Đúng:* $A = p Delta V = "2,0" dot 10^5 times ("10,0" - "4,0") dot 10^(-3) = 1200 thin "J"$.
    - c) *Sai:* $v_("cqp") prop sqrt(T) prop sqrt(V)$, thể tích tăng $"2,5"$ lần thì $v_("cqp")$ tăng $sqrt("2,5") approx "1,58"$ lần, không phải $"2,5"$ lần.
    - d) *Đúng:* Quá trình đẳng áp $frac(Delta V, V_1) = frac(Delta T, T_1) = frac(1, 300)$.
  ],
)

= Chủ đề 3. Định luật Gay-Lussac và bài tập đẳng tích

// Câu 8
#vp-question(
  [
    Một bình chứa khí Oxygen y tế bằng thép hợp kim có thể tích $V = "15,0" thin "lít"$ chịu được áp suất tối đa $p_max = 150 thin "atm"$. Ở nhiệt độ phòng $t_1 = 27^degree"C"$, áp suất khí trong bình được đo là $p_1 = 100 thin "atm"$. Do sự cố hỏa hoạn, nhiệt độ xung quanh bình tăng cao.
  ],
  type: "tf",
  statements: (
    [Khí chứa trong bình thép kín có thể tích không đổi nên biến đổi theo quá trình đẳng tích.],
    [Tỷ số giữa áp suất $p$ và nhiệt độ Celsius $t$ của khối khí trong bình luôn là hằng số.],
    [Khi nhiệt độ trong bình tăng lên $127^degree"C"$, áp suất khí trong bình đạt giá trị $"133,3" thin "atm"$.],
    [Nhiệt độ tối đa của bình khí trước khi vỏ bình bị nổ vỡ vượt ngưỡng an toàn bằng $177^degree"C"$.],
  ),
  ans-tf: ("Đ", "S", "Đ", "Đ"),
  sol: [
    - a) *Đúng:* Bình thép kín không biến dạng $arrow.r.double V = "const"$.
    - b) *Sai:* Áp suất tỉ lệ thuận với nhiệt độ *tuyệt đối* $T$ (Kelvin), không tỉ lệ thuận với nhiệt độ Celsius $t$.
    - c) *Đúng:* $p_2 = p_1 frac(T_2, T_1) = 100 times frac(127 + 273, 300) = 100 times frac(400, 300) approx "133,3" thin "atm"$.
    - d) *Đúng:* $T_max = T_1 frac(p_max, p_1) = 300 times frac(150, 100) = 450 thin "K" = 177^degree"C"$.
  ],
)

// Câu 9
#vp-question(
  [
    Bánh xe ô tô có không khí nén ở áp suất $p_1 = "2,10" thin "atm"$ ở nhiệt độ $t_1 = 27^degree"C"$ trước khi xuất phát. Sau khi xe chạy liên tục trên đường cao tốc dưới trời nắng nóng, nhiệt độ không khí bên trong lốp tăng lên $t_2 = 67^degree"C"$. Coi sự giãn nở thể tích của lốp xe là không đáng kể ($V approx "hằng số"$).
  ],
  type: "tf",
  statements: (
    [Số mol khí bên trong lốp xe giảm đi do nhiệt độ tăng.],
    [Áp suất không khí bên trong lốp xe khi chạy đường dài bằng $"2,38" thin "atm"$.],
    [Động năng tịnh tiến trung bình của các phân tử khí trong lốp xe ở trạng thái 2 tăng xấp xỉ $"13,3"%$ so với trạng thái 1.],
    [Áp suất khí trong lốp tăng lên chủ yếu do số lượng phân tử khí trong lốp tăng lên.],
  ),
  ans-tf: ("S", "Đ", "Đ", "S"),
  sol: [
    - a) *Sai:* Lốp kín nên số mol $n$ được bảo toàn.
    - b) *Đúng:* $p_2 = p_1 frac(T_2, T_1) = "2,10" times frac(67 + 273, 27 + 273) = "2,10" times frac(340, 300) = "2,38" thin "atm"$.
    - c) *Đúng:* $overline(E)_đ prop T arrow.r.double frac(Delta overline(E)_đ, overline(E)_đ) = frac(340 - 300, 300) = frac(40, 300) approx "13,3"%$.
    - d) *Sai:* Số lượng phân tử không đổi; áp suất tăng do tốc độ chuyển động nhiệt và tần suất va chạm lên thành lốp tăng.
  ],
)

= Chủ đề 4. Phương trình trạng thái khí lý tưởng và Clapeyron

// Câu 10
#vp-question(
  [
    Một xilanh nằm ngang chứa $n = "0,20" thin "mol"$ khí lí tưởng Helium ($M = "4,0" thin "g/mol"$) ở nhiệt độ $t_1 = 27^degree"C"$ và áp suất $p_1 = "1,0" dot 10^5 thin "Pa"$. Cho hằng số khí lí tưởng $R = "8,31" thin "J/(mol" dot "K)"$.
  ],
  type: "tf",
  statements: (
    [Thể tích ban đầu của khối khí Helium trong xilanh bằng $"4,986" thin "lít"$ ($"4,986" dot 10^(-3) thin "m"^3$).],
    [Khối lượng khí Helium chứa trong xilanh bằng $"0,80" thin "g"$.],
    [Thực hiện nén khí đồng thời đun nóng làm áp suất tăng lên $p_2 = "2,5" dot 10^5 thin "Pa"$ và thể tích giảm còn $V_2 = "3,0" thin "lít"$, nhiệt độ tuyệt đối lúc này xấp xỉ $"451,3" thin "K"$ (tương ứng $"178,3"^degree"C"$).],
    [Khối lượng riêng của khí Helium ở trạng thái 2 xấp xỉ bằng $"0,267" thin "kg/m"^3$.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "Đ"),
  sol: [
    - a) *Đúng:* $V_1 = frac(n R T_1, p_1) = frac("0,20" times "8,31" times 300, "1,0" dot 10^5) = "4,986" dot 10^(-3) thin "m"^3 = "4,986" thin "lít"$.
    - b) *Đúng:* $m = n dot M = "0,20" times "4,0" = "0,80" thin "g"$.
    - c) *Đúng:* $T_2 = T_1 frac(p_2 V_2, p_1 V_1) = 300 times frac("2,5" dot 10^5 times "3,0" dot 10^(-3), "1,0" dot 10^5 times "4,986" dot 10^(-3)) = 300 times frac("0,75", "0,4986") approx "451,3" thin "K" = "178,3"^degree"C"$.
    - d) *Đúng:* $D_2 = frac(m, V_2) = frac("0,80" dot 10^(-3) thin "kg", "3,0" dot 10^(-3) thin "m"^3) approx "0,267" thin "kg/m"^3$.
  ],
)

// Câu 11
#vp-question(
  [
    Bóng thám không khí tượng chứa khí Helium bay lên tầng cao khí quyển. Ở mặt đất có áp suất $p_0 = "1,0" dot 10^5 thin "Pa"$ và nhiệt độ $T_0 = 298 thin "K"$, bóng có thể tích $V_0 = "2,0" thin "m"^3$. Khi bay lên độ cao $h$ (tính bằng km), áp suất môi trường giảm theo quy luật $p_h = p_0 dot e^(-"0,045" h)$. Vỏ bóng mỏng đàn hồi chịu được thể tích tối đa trước khi vỡ là $V_max = "10,0" thin "m"^3$; tại độ cao bóng vỡ, nhiệt độ khí quyển là $T_h = "268,2" thin "K"$.
  ],
  type: "tf",
  statements: (
    [Càng lên cao, áp suất bên ngoài giảm làm khối khí trong bóng giãn nở và làm tăng thể tích bóng.],
    [Phương trình trạng thái cho khối khí trong bóng ngay trước khi vỡ tại độ cao $h$ là $frac(p_h V_max, T_h) = frac(p_0 V_0, T_0)$.],
    [Ngay trước khi vỡ, tỷ số áp suất $frac(p_h, p_0)$ có giá trị bằng $"0,250"$.],
    [Độ cao tối đa quả bóng đạt được ngay trước khi bị nổ vỡ xấp xỉ bằng $"38,1" thin "km"$.],
  ),
  ans-tf: ("Đ", "Đ", "S", "Đ"),
  sol: [
    - a) *Đúng:* Áp suất ngoài giảm $arrow.r.double$ bóng giãn nở.
    - b) *Đúng:* Phương trình trạng thái $frac(p_0 V_0, T_0) = frac(p_h V_max, T_h)$.
    - c) *Sai:* $frac(p_h, p_0) = frac(V_0, V_max) frac(T_h, T_0) = frac("2,0", "10,0") times frac("268,2", 298) = "0,180" eq.not "0,250"$.
    - d) *Đúng:* $e^(-"0,045" h) = "0,180" arrow.r.double -"0,045" h = ln("0,180") approx -"1,7148" arrow.r.double h approx "38,1" thin "km"$.
  ],
)

// Câu 12
#vp-question(
  [
    Một máy nén khí nạp khí lí tưởng từ không khí ở nhiệt độ $t_1 = 20^degree"C"$, áp suất $p_1 = "1,0" thin "atm"$. Sau khi nén, áp suất khí tăng lên $p_2 = "8,0" thin "atm"$, nhiệt độ tăng đến $t_2 = 60^degree"C"$.
  ],
  type: "tf",
  statements: (
    [Tỷ số thể tích trước và sau khi nén $frac(V_1, V_2)$ xấp xỉ bằng $"7,04"$ lần.],
    [Mật độ phân tử khí sau khi nén tăng gấp $"7,04"$ lần so với ban đầu.],
    [Khối lượng riêng của khí tăng tỉ lệ thuận với áp suất và tỉ lệ nghịch với nhiệt độ tuyệt đối.],
    [Nếu thể tích khí sau khi nén giảm $"8,0"$ lần so với ban đầu (ở cùng nhiệt độ $60^degree"C"$) thì áp suất khí đo được xấp xỉ bằng $"9,1" thin "atm"$.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "Đ"),
  sol: [
    - a) *Đúng:* $frac(V_1, V_2) = frac(p_2, p_1) frac(T_1, T_2) = frac("8,0", "1,0") times frac(20 + 273, 60 + 273) = "8,0" times frac(293, 333) approx "7,04"$.
    - b) *Đúng:* $mu = frac(N, V) prop frac(1, V) arrow.r.double$ thể tích giảm $"7,04"$ lần nên mật độ tăng $"7,04"$ lần.
    - c) *Đúng:* $D = frac(p M, R T) prop frac(p, T)$.
    - d) *Đúng:* Nếu $frac(V_1, V_2) = "8,0"$ thì $p_2 = p_1 frac(V_1, V_2) frac(T_2, T_1) = "1,0" times "8,0" times frac(333, 293) approx "9,09" thin "atm" approx "9,1" thin "atm"$.
  ],
)

// Câu 13
#vp-question(
  [
    Một bình chứa khí nén chứa $m_1 = "10,0" thin "kg"$ khí Argon ở áp suất $p_1 = "40,0" thin "atm"$ và nhiệt độ $t = 27^degree"C"$. Người ta dùng bớt một lượng khí làm áp suất giảm xuống còn $p_2 = "12,0" thin "atm"$ ở cùng nhiệt độ $27^degree"C"$.
  ],
  type: "tf",
  statements: (
    [Vì nhiệt độ và thể tích bình giữ không đổi nên khối lượng khí trong bình tỉ lệ thuận với áp suất khí.],
    [Tỷ số khối lượng khí còn lại trong bình so với ban đầu là $frac(m_2, m_1) = "0,30"$.],
    [Khối lượng khí Argon đã lấy ra khỏi bình để sử dụng bằng $"7,0" thin "kg"$.],
    [Số phân tử khí Argon thoát ra ngoài xấp xỉ $"1,05" dot 10^26$ phân tử (cho $M_("Ar") = 40 thin "g/mol"$, $N_A = "6,02" dot 10^23 thin "hạt/mol"$).],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "Đ"),
  sol: [
    - a) *Đúng:* $p = frac(m, M V) R T arrow.r.double m prop p$.
    - b) *Đúng:* $frac(m_2, m_1) = frac(p_2, p_1) = frac("12,0", "40,0") = "0,30"$.
    - c) *Đúng:* $Delta m = m_1 - m_2 = "10,0" times (1 - "0,30") = "7,0" thin "kg"$.
    - d) *Đúng:* $Delta N = frac(Delta m, M) N_A = frac(7000, 40) times "6,02" dot 10^23 approx "1,05" dot 10^26$ phân tử.
  ],
)

= Chủ đề 5. Bài tập cơ học pit-tông - xilanh và lò xo

// Câu 14
#vp-question(
  [
    Một xilanh đặt nằm ngang kín hai đầu chứa khí lí tưởng, được chia làm hai phần bằng nhau bởi một pit-tông mỏng cách nhiệt. Ban đầu mỗi phần xilanh có chiều dài $L_0 = 30 thin "cm"$, chứa khí ở nhiệt độ $t_0 = 27^degree"C"$ ($T_0 = 300 thin "K"$) và áp suất $p_0$. Nung nóng phần bên trái thêm $Delta T = 10 thin "K"$ (lên $310 thin "K"$) và làm lạnh phần bên phải đi $Delta T = 10 thin "K"$ (xuống $290 thin "K"$). Bỏ qua ma sát giữa pit-tông và xilanh.
  ],
  type: "tf",
  statements: (
    [Pit-tông sẽ dịch chuyển sang phía bên phải (phía bị làm lạnh) do áp suất bên trái tăng lên.],
    [Khi pit-tông dừng lại cân bằng, áp suất khí ở hai phần xilanh bằng nhau.],
    [Chiều dài cột khí ở phần bên trái sau khi cân bằng bằng $"31,0" thin "cm"$.],
    [Độ dịch chuyển của pit-tông so với vị trí ban đầu bằng $Delta x = "1,0" thin "cm"$.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "Đ"),
  sol: [
    - a) *Đúng:* Khí bên trái bị nung nóng tăng áp suất đẩy pit-tông sang phải.
    - b) *Đúng:* Điều kiện cân bằng cơ học của pit-tông nằm ngang: $p_L = p_R$.
    - c) *Đúng:* $p_L = frac(n R T_L, S (L_0 + Delta x))$, $p_R = frac(n R T_R, S (L_0 - Delta x)) arrow.r.double frac(310, 30 + Delta x) = frac(290, 30 - Delta x) arrow.r.double Delta x = "1,0" thin "cm"$. Chiều dài bên trái: $30 + "1,0" = "31,0" thin "cm"$.
    - d) *Đúng:* $Delta x = "1,0" thin "cm"$.
  ],
)

// Câu 15
#vp-question(
  [
    Một xilanh đặt thẳng đứng kín hai đầu, được chia làm hai phần bằng một pit-tông nặng khối lượng $m = "2,0" thin "kg"$, diện tích tiết diện $S = 20 thin "cm"^2$ ($"2,0" dot 10^(-3) thin "m"^2$) có thể trượt không ma sát. Mỗi phần chứa $1 thin "mol"$ khí lí tưởng ở nhiệt độ $T = 300 thin "K"$. Lấy $g = 10 thin "m/s"^2$.
  ],
  type: "tf",
  statements: (
    [Khi pit-tông ở trạng thái cân bằng thẳng đứng, áp suất khí ở phần dưới lớn hơn áp suất khí ở phần trên một lượng $Delta p = 10000 thin "Pa"$.],
    [Nếu thể tích phần trên gấp $"2,0"$ lần thể tích phần dưới thì áp suất khí ở phần trên bằng $"1,0" dot 10^4 thin "Pa"$.],
    [Đun nóng cả hai phần đến cùng nhiệt độ $T' = 400 thin "K"$ thì pit-tông sẽ dịch chuyển xuống dưới.],
    [Giữ nguyên nhiệt độ và lật ngược xilanh $180^degree$ thì vị trí cân bằng mới của pit-tông thay đổi làm thể tích hai phần hoán đổi cho nhau.],
  ),
  ans-tf: ("Đ", "Đ", "S", "Đ"),
  sol: [
    - a) *Đúng:* Cân bằng pit-tông: $p_d S = p_t S + m g arrow.r.double p_d - p_t = frac(m g, S) = frac("2,0" times 10, "2,0" dot 10^(-3)) = 10000 thin "Pa"$.
    - b) *Đúng:* $V_t = 2 V_d arrow.r.double p_d = 2 p_t$. Kết hợp $p_d - p_t = 10000 thin "Pa" arrow.r.double p_t = 10000 thin "Pa" = "1,0" dot 10^4 thin "Pa"$.
    - c) *Sai:* Khi đun nóng cả hai phần lên $400 thin "K"$, nếu giữ pit-tông cố định thì hiệu áp suất $p'_d - p'_t = frac(400, 300) Delta p > Delta p$, nên pit-tông dịch chuyển *lên trên*, không phải xuống dưới.
    - d) *Đúng:* Lật ngược xilanh làm trọng lực pit-tông đổi chiều ép lên phần kia, hai ngăn có cùng số mol nên thể tích hoán đổi cho nhau.
  ],
)

// Câu 16
#vp-question(
  [
    Một xilanh đặt thẳng đứng chứa một lượng khí Helium ở nhiệt độ $T_1 = 300 thin "K"$. Pit-tông nhẹ tiết diện $S = "8,0" dot 10^(-3) thin "m"^2$ gắn với một lò xo nhẹ có độ cứng $k = 8000 thin "N/m"$ nối với đáy trên xilanh. Ban đầu pit-tông cân bằng ở thể tích $V_1 = "2,4" dot 10^(-3) thin "m"^3$ và lò xo không biến dạng. Áp suất khí quyển bên ngoài là $p_0 = "1,0" dot 10^5 thin "Pa"$. Đun nóng từ từ khối khí làm pit-tông dịch chuyển ra ngoài một đoạn $x = "0,15" thin "m"$.
  ],
  type: "tf",
  statements: (
    [Áp suất khí ban đầu trong xilanh cân bằng đúng bằng áp suất khí quyển $p_0 = "1,0" dot 10^5 thin "Pa"$.],
    [Thể tích của khối khí sau khi nung nóng bằng $V_2 = "3,6" dot 10^(-3) thin "m"^3$.],
    [Lực do lò xo bị nén tác dụng lên pit-tông ở trạng thái 2 có độ lớn $1200 thin "N"$, làm áp suất khí ở trạng thái 2 tăng lên $p_2 = "2,5" dot 10^5 thin "Pa"$.],
    [Nhiệt độ tuyệt đối của khối khí ở trạng thái 2 bằng $1125 thin "K"$ (tương ứng $852^degree"C"$).],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "Đ"),
  sol: [
    - a) *Đúng:* Ban đầu lò xo chưa biến dạng và pit-tông nhẹ nên $p_1 = p_0 = "1,0" dot 10^5 thin "Pa"$.
    - b) *Đúng:* $V_2 = V_1 + S x = "2,4" dot 10^(-3) + "8,0" dot 10^(-3) times "0,15" = "3,6" dot 10^(-3) thin "m"^3$.
    - c) *Đúng:* Lực lò xo $F_("lx") = k x = 8000 times "0,15" = 1200 thin "N" arrow.r.double p_2 = p_0 + frac(F_("lx"), S) = "1,0" dot 10^5 + frac(1200, "8,0" dot 10^(-3)) = "2,5" dot 10^5 thin "Pa"$.
    - d) *Đúng:* $T_2 = T_1 frac(p_2 V_2, p_1 V_1) = 300 times frac("2,5" dot 10^5 times "3,6" dot 10^(-3), "1,0" dot 10^5 times "2,4" dot 10^(-3)) = 300 times "3,75" = 1125 thin "K"$.
  ],
)

// Câu 17
#vp-question(
  [
    Một xilanh hình trụ chiều cao $H = 152 thin "cm"$ đặt thẳng đứng, miệng ở trên thông với khí quyển, cách nhau với cột khí bên dưới bởi một pit-tông nhẹ trượt không ma sát. Ban đầu nửa dưới xilanh chứa $n$ mol khí lí tưởng ở nhiệt độ $T_1 = 600 thin "K"$, nửa trên (trên pit-tông) chứa đầy thủy ngân tới miệng xilanh. Áp suất khí quyển bên ngoài là $p_0 = 76 thin "cmHg"$. Đun nóng khí từ từ đến nhiệt độ $T_2$ để một nửa lượng thủy ngân trong xilanh tràn ra ngoài.
  ],
  type: "tf",
  statements: (
    [Ban đầu chiều dài cột khí và chiều dài cột thủy ngân đều bằng $h_1 = 76 thin "cm"$.],
    [Áp suất khí ban đầu ở trạng thái 1 bằng $p_1 = 152 thin "cmHg"$ ($"2,0" thin "atm"$).],
    [Khi một nửa lượng thủy ngân tràn ra ngoài, chiều dài cột khí trong xilanh tăng lên $h_2 = 114 thin "cm"$ và áp suất khí lúc này là $p_2 = 114 thin "cmHg"$.],
    [Nhiệt độ tuyệt đối $T_2$ của khối khí khi thủy ngân tràn ra một nửa bằng $675 thin "K"$.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "Đ"),
  sol: [
    - a) *Đúng:* $h_1 = H / 2 = 152 / 2 = 76 thin "cm"$.
    - b) *Đúng:* $p_1 = p_0 + h_1 = 76 + 76 = 152 thin "cmHg"$.
    - c) *Đúng:* Một nửa thủy ngân tràn ra ngoài còn lại $38 thin "cm" arrow.r.double h_2 = 152 - 38 = 114 thin "cm"$. Áp suất $p_2 = p_0 + 38 = 76 + 38 = 114 thin "cmHg"$.
    - d) *Đúng:* $T_2 = T_1 frac(p_2 h_2, p_1 h_1) = 600 times frac(114 times 114, 152 times 76) = 675 thin "K"$.
  ],
)

= Chủ đề 6. Bài tập động năng, tốc độ phân tử và áp suất vi mô

// Câu 18
#vp-question(
  [
    Cho $"1,0" thin "mol"$ khí Nitrogen ($"N"_2$, khối lượng mol $M = "28,0" thin "g/mol"$) chứa trong bình kín ở nhiệt độ $t = 27^degree"C"$. Cho hằng số Boltzmann $k = "1,38" dot 10^(-23) thin "J/K"$, số Avogadro $N_A = "6,02" dot 10^23 thin "hạt/mol"$, $R = "8,31" thin "J/(mol" dot "K)"$.
  ],
  type: "tf",
  statements: (
    [Nhiệt độ tuyệt đối của khối khí Nitrogen là $T = 300 thin "K"$.],
    [Động năng tịnh tiến trung bình của mỗi phân tử khí Nitrogen bằng $"6,21" dot 10^(-21) thin "J"$.],
    [Khối lượng của một phân tử khí $"N"_2$ xấp xỉ $"4,65" dot 10^(-26) thin "kg"$.],
    [Tốc độ căn quân phương $v_("cqp") = sqrt(overline(v^2))$ của các phân tử khí Nitrogen ở $27^degree"C"$ xấp xỉ $517 thin "m/s"$.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "Đ"),
  sol: [
    - a) *Đúng:* $T = 27 + 273 = 300 thin "K"$.
    - b) *Đúng:* $overline(E)_đ = frac(3, 2) k T = "1,5" times "1,38" dot 10^(-23) times 300 = "6,21" dot 10^(-21) thin "J"$.
    - c) *Đúng:* $m = frac(M, N_A) = frac(28 dot 10^(-3), "6,02" dot 10^23) approx "4,65" dot 10^(-26) thin "kg"$.
    - d) *Đúng:* $v_("cqp") = sqrt(frac(3 R T, M)) = sqrt(frac(3 times "8,31" times 300, 28 dot 10^(-3))) approx "516,7" thin "m/s" approx 517 thin "m/s"$.
  ],
)

// Câu 19
#vp-question(
  [
    Một khối khí Helium ($M = "4,0" thin "g/mol"$) chứa trong bình kín có mật độ phân tử $mu = "2,5" dot 10^25 thin "phân tử/m"^3$ ở nhiệt độ $t = 127^degree"C"$. Cho $k = "1,38" dot 10^(-23) thin "J/K"$, $N_A = "6,02" dot 10^23 thin "hạt/mol"$.
  ],
  type: "tf",
  statements: (
    [Khối lượng của mỗi phân tử Helium xấp xỉ $m = "6,64" dot 10^(-27) thin "kg"$.],
    [Khối lượng riêng của chất khí trong bình xấp xỉ $D = "0,166" thin "kg/m"^3$.],
    [Động năng tịnh tiến trung bình của các phân tử Helium bằng $overline(E)_đ = "8,28" dot 10^(-21) thin "J"$.],
    [Áp suất do các phân tử Helium tác dụng lên thành bình bằng $"1,38" dot 10^5 thin "Pa"$.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "Đ"),
  sol: [
    - a) *Đúng:* $m = frac("4,0" dot 10^(-3), "6,02" dot 10^23) approx "6,64" dot 10^(-27) thin "kg"$.
    - b) *Đúng:* $D = mu dot m = "2,5" dot 10^25 times "6,64" dot 10^(-27) = "0,166" thin "kg/m"^3$.
    - c) *Đúng:* $overline(E)_đ = frac(3, 2) k T = "1,5" times "1,38" dot 10^(-23) times 400 = "8,28" dot 10^(-21) thin "J"$.
    - d) *Đúng:* $p = frac(2, 3) mu overline(E)_đ = frac(2, 3) times "2,5" dot 10^25 times "8,28" dot 10^(-21) = "1,38" dot 10^5 thin "Pa"$.
  ],
)

// Câu 20
#vp-question(
  [
    Xét hai bình chứa khí lí tưởng riêng biệt có cùng thể tích $V$: Bình 1 chứa khí Hydrogen ($"H"_2$, $M_1 = 2 thin "g/mol"$), Bình 2 chứa khí Oxygen ($"O"_2$, $M_2 = 32 thin "g/mol"$). Cả hai bình đều ở cùng nhiệt độ $t = 27^degree"C"$ và có cùng số phân tử $N$.
  ],
  type: "tf",
  statements: (
    [Động năng tịnh tiến trung bình của các phân tử $"H"_2$ lớn gấp $16$ lần động năng tịnh tiến trung bình của các phân tử $"O"_2$.],
    [Tốc độ căn quân phương của phân tử $"H"_2$ lớn gấp $"4,0"$ lần tốc độ căn quân phương của phân tử $"O"_2$.],
    [Áp suất chất khí tác dụng lên thành bình ở hai bình là như nhau ($p_1 = p_2$).],
    [Khối lượng riêng của khí trong Bình 2 gấp $16$ lần khối lượng riêng của khí trong Bình 1.],
  ),
  ans-tf: ("S", "Đ", "Đ", "Đ"),
  sol: [
    - a) *Sai:* $overline(E)_đ = frac(3, 2) k T$ chỉ phụ thuộc nhiệt độ $T$, nên $overline(E)_(đ 1) = overline(E)_(đ 2)$.
    - b) *Đúng:* $v_("cqp") prop frac(1, sqrt(M)) arrow.r.double frac(v_1, v_2) = sqrt(frac(M_2, M_1)) = sqrt(frac(32, 2)) = "4,0"$.
    - c) *Đúng:* $p = mu k T = frac(N, V) k T$, hai bình có cùng $N, V, T$ nên áp suất bằng nhau.
    - d) *Đúng:* $D = frac(m, V) = frac(N dot M, N_A dot V) prop M arrow.r.double frac(D_2, D_1) = frac(32, 2) = 16$.
  ],
)

= Chủ đề 7. Chu trình và đồ thị biến đổi trạng thái khí lý tưởng

// Câu 21
#vp-question(
  [
    Một lượng $n = "1,0" thin "mol"$ khí lí tưởng thực hiện chu trình biến đổi $1 arrow.r 2 arrow.r 3 arrow.r 1$ trên mặt phẳng tọa độ $(p, V)$:
    - $(1 arrow.r 2)$: Giãn đẳng áp từ $V_1 = "2,0" thin "lít"$ đến $V_2 = "6,0" thin "lít"$ ở áp suất $p_1 = p_2 = "2,0" dot 10^5 thin "Pa"$.
    - $(2 arrow.r 3)$: Giãn đẳng nhiệt đến áp suất $p_3 = "1,0" dot 10^5 thin "Pa"$.
    - $(3 arrow.r 1)$: Nén khí theo đoạn thẳng nối (3) về trạng thái (1).
    Cho $R = "8,31" thin "J/(mol" dot "K)"$.
  ],
  type: "tf",
  statements: (
    [Nhiệt độ ở trạng thái 1 xấp xỉ $T_1 = "48,1" thin "K"$.],
    [Trạng thái 2 có nhiệt độ tuyệt đối $T_2 = 3 T_1 approx "144,4" thin "K"$.],
    [Thể tích khí ở trạng thái 3 bằng $V_3 = "12,0" thin "lít"$.],
    [Nhiệt độ ở trạng thái 3 bằng nhiệt độ ở trạng thái 1 ($T_3 = T_1$).],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [
    - a) *Đúng:* $T_1 = frac(p_1 V_1, n R) = frac("2,0" dot 10^5 times "2,0" dot 10^(-3), "1,0" times "8,31") approx "48,1" thin "K"$.
    - b) *Đúng:* $T_2 = T_1 frac(V_2, V_1) = 3 T_1 approx "144,4" thin "K"$.
    - c) *Đúng:* Quá trình $(2 arrow.r 3)$ đẳng nhiệt nên $p_3 V_3 = p_2 V_2 arrow.r.double V_3 = "6,0" times frac("2,0", "1,0") = "12,0" thin "lít"$.
    - d) *Sai:* Quá trình $(2 arrow.r 3)$ đẳng nhiệt nên $T_3 = T_2 = 3 T_1 eq.not T_1$.
  ],
)

// Câu 22
#vp-question(
  [
    Xét chu trình kín $1 arrow.r 2 arrow.r 3 arrow.r 1$ của $"1,0" thin "mol"$ khí lí tưởng trên hệ tọa độ $(V, T)$:
    - Trạng thái 1: $V_1 = "1,2" thin "lít"$, $T_1 = 300 thin "K"$.
    - $(1 arrow.r 2)$: Đoạn thẳng có đường kéo dài đi qua gốc $O$ đến $V_2 = "3,6" thin "lít"$.
    - $(2 arrow.r 3)$: Đoạn thẳng vuông góc $O T$ đến $V_3 = "1,2" thin "lít"$.
    - $(3 arrow.r 1)$: Đoạn thẳng vuông góc $O V$ trở về trạng thái 1.
    Lấy $R = "0,082" thin "atm" dot "lít/(mol" dot "K)"$.
  ],
  type: "tf",
  statements: (
    [Quá trình $(1 arrow.r 2)$ là quá trình đẳng áp, nhiệt độ $T_2 = 900 thin "K"$.],
    [Áp suất ở trạng thái 1 bằng $p_1 = "20,5" thin "atm"$.],
    [Quá trình $(2 arrow.r 3)$ là quá trình đẳng nhiệt ở $900 thin "K"$, áp suất trạng thái 3 bằng $p_3 = 3 p_2 = "61,5" thin "atm"$.],
    [Quá trình $(3 arrow.r 1)$ là quá trình đẳng tích hạ nhiệt độ từ $900 thin "K"$ về $300 thin "K"$.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "Đ"),
  sol: [
    - a) *Đúng:* Đồ thị kéo dài qua gốc $O$ trong hệ $(V, T)$ là đẳng áp $arrow.r.double T_2 = T_1 frac(V_2, V_1) = 300 times 3 = 900 thin "K"$.
    - b) *Đúng:* $p_1 = frac(n R T_1, V_1) = frac("1,0" times "0,082" times 300, "1,2") = "20,5" thin "atm"$.
    - c) *Đúng:* Quá trình $(2 arrow.r 3)$ đẳng nhiệt $T = 900 thin "K" arrow.r.double p_3 = p_2 frac(V_2, V_3) = "20,5" times frac("3,6", "1,2") = "61,5" thin "atm"$.
    - d) *Đúng:* Quá trình $(3 arrow.r 1)$ có $V_3 = V_1 = "1,2" thin "lít" arrow.r.double$ đẳng tích hạ nhiệt từ $900 thin "K"$ về $300 thin "K"$.
  ],
)

// Câu 23
#vp-question(
  [
    Một lượng khí lí tưởng biến đổi trạng thái theo chu trình $1 arrow.r 2 arrow.r 3 arrow.r 1$ trên mặt phẳng $(p, T)$:
    - Trạng thái 1: $p_1 = "1,0" thin "atm"$, $T_1 = 300 thin "K"$, $V_1 = "4,0" thin "lít"$.
    - $(1 arrow.r 2)$: Nén đẳng nhiệt đến áp suất $p_2 = "3,0" thin "atm"$.
    - $(2 arrow.r 3)$: Nung nóng đẳng tích đến nhiệt độ $T_3 = 600 thin "K"$.
    - $(3 arrow.r 1)$: Giãn nở làm áp suất giảm tuyến tính theo nhiệt độ trở về trạng thái 1.
  ],
  type: "tf",
  statements: (
    [Thể tích ở trạng thái 2 xấp xỉ bằng $V_2 = "1,33" thin "lít"$.],
    [Áp suất ở trạng thái 3 bằng $p_3 = "6,0" thin "atm"$.],
    [Thể tích ở trạng thái 3 bằng thể tích ở trạng thái 2 ($V_3 = V_2 approx "1,33" thin "lít"$).],
    [Quá trình $(3 arrow.r 1)$ là quá trình đẳng áp.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [
    - a) *Đúng:* $V_2 = V_1 frac(p_1, p_2) = "4,0" times frac("1,0", "3,0") approx "1,33" thin "lít"$.
    - b) *Đúng:* Đẳng tích $V_3 = V_2 arrow.r.double p_3 = p_2 frac(T_3, T_2) = "3,0" times frac(600, 300) = "6,0" thin "atm"$.
    - c) *Đúng:* $V_3 = V_2 approx "1,33" thin "lít"$.
    - d) *Sai:* Quá trình $(3 arrow.r 1)$ có áp suất thay đổi từ $"6,0" thin "atm"$ về $"1,0" thin "atm"$ nên không phải đẳng áp.
  ],
)

// Câu 24
#vp-question(
  [
    Một khối khí lí tưởng biến đổi trạng thái từ (1) đến (2) trên đồ thị $(p, V)$ theo đường thẳng kéo dài đi qua gốc tọa độ $O$. Trạng thái 1 có $p_1 = "1,0" dot 10^5 thin "Pa"$, $V_1 = "2,0" thin "lít"$, $T_1 = 300 thin "K"$. Trạng thái 2 có thể tích $V_2 = "6,0" thin "lít"$.
  ],
  type: "tf",
  statements: (
    [Phương trình mối liên hệ giữa $p$ và $V$ trong quá trình này có dạng $p = a dot V$ với $a = "0,5" dot 10^8 thin "Pa/m"^3$.],
    [Áp suất khí ở trạng thái 2 bằng $p_2 = "3,0" dot 10^5 thin "Pa"$.],
    [Quá trình biến đổi từ $(1) arrow.r (2)$ có nhiệt độ tuyệt đối $T$ tỉ lệ thuận với bình phương thể tích $V^2$.],
    [Nhiệt độ tuyệt đối của khối khí ở trạng thái 2 bằng $T_2 = 2700 thin "K"$ (gấp $"9,0"$ lần $T_1$).],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "Đ"),
  sol: [
    - a) *Đúng:* Đường thẳng kéo dài qua gốc $O$ có dạng $p = a dot V arrow.r.double a = frac("1,0" dot 10^5, "2,0" dot 10^(-3)) = "0,5" dot 10^8 thin "Pa/m"^3$.
    - b) *Đúng:* $p_2 = a dot V_2 = "0,5" dot 10^8 times "6,0" dot 10^(-3) = "3,0" dot 10^5 thin "Pa"$.
    - c) *Đúng:* $frac(p V, T) = "const" arrow.r.double frac(a V^2, T) = "const" arrow.r.double T prop V^2$.
    - d) *Đúng:* $T_2 = T_1 (frac(V_2, V_1))^2 = 300 times 3^2 = 2700 thin "K"$.
  ],
)

= Chủ đề 8. Bài tập ứng dụng thực tế và kỹ thuật chất khí

// Câu 25
#vp-question(
  [
    Bình áp lực chứa nước tinh khiết (bình tích áp màng mềm) có tổng thể tích $V_("bình") = 20 thin "lít"$. Ban đầu bình chưa có nước, túi khí mềm chiếm toàn bộ thể tích $20 thin "lít"$ chứa không khí ở áp suất $p_1 = "1,0" dot 10^5 thin "Pa"$ và nhiệt độ $25^degree"C"$. Máy bơm hoạt động đẩy nước vào túi nước ép túi khí lại. Khi áp suất khí tăng đến $p_2 = "4,0" dot 10^5 thin "Pa"$ thì rơ-le tự ngắt bơm. Coi nhiệt độ không khí trong túi khí không đổi.
  ],
  type: "tf",
  statements: (
    [Quá trình nén túi khí khi nước được bơm vào là quá trình đẳng nhiệt.],
    [Thể tích túi khí khi máy bơm ngắt bằng $V_("khí") = "5,0" thin "lít"$.],
    [Thể tích nước tối đa được dự trữ trong bình tích áp khi máy bơm ngắt bằng $"15,0" thin "lít"$.],
    [Khi người dùng mở vòi nước làm thể tích nước trong bình giảm còn $"8,0" thin "lít"$, áp suất khí trong túi xấp xỉ bằng $"1,67" dot 10^5 thin "Pa"$.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "Đ"),
  sol: [
    - a) *Đúng:* Nhiệt độ không đổi nên là quá trình đẳng nhiệt.
    - b) *Đúng:* $V_("khí") = V_1 frac(p_1, p_2) = "20,0" times frac("1,0" dot 10^5, "4,0" dot 10^5) = "5,0" thin "lít"$.
    - c) *Đúng:* $V_("nước") = V_("bình") - V_("khí") = "20,0" - "5,0" = "15,0" thin "lít"$.
    - d) *Đúng:* $V'_("nước") = "8,0" thin "lít" arrow.r.double V'_("khí") = "12,0" thin "lít" arrow.r.double p' = p_1 frac(V_1, V'_("khí")) = "1,0" dot 10^5 times frac("20,0", "12,0") approx "1,67" dot 10^5 thin "Pa"$.
  ],
)

// Câu 26
#vp-question(
  [
    Thợ lặn lặn xuống độ sâu $h = 35 thin "m"$ dưới lòng biển để làm việc. Ở độ sâu này, không khí thợ lặn hít thở có áp suất bằng áp suất môi trường. Cho khối lượng riêng nước biển $rho = 1030 thin "kg/m"^3$, $g = 10 thin "m/s"^2$, áp suất khí quyển $p_0 = "1,0" dot 10^5 thin "Pa"$. Do áp suất lớn, khí Nitrogen hòa tan vào máu. Nếu thợ lặn ngoi lên mặt nước quá nhanh, áp suất giảm đột ngột làm Nitrogen thoát ra tạo thành các bọt khí trong mạch máu gây tắc mạch (hội chứng giảm áp).
  ],
  type: "tf",
  statements: (
    [Áp suất môi trường tác dụng lên thợ lặn ở độ sâu $35 thin "m"$ bằng $"4,605" dot 10^5 thin "Pa"$ (xấp xỉ $"4,61" thin "atm"$).],
    [Nếu một bọt khí Nitrogen được hình thành trong mạch máu ở độ sâu $35 thin "m"$ có thể tích $V_1$, khi ngoi lên mặt nước (coi nhiệt độ cơ thể không đổi), thể tích bọt khí tăng gấp $"4,61"$ lần.],
    [Bán kính của bọt khí dạng hình cầu khi lên tới mặt nước tăng gấp $"4,61"$ lần so với bán kính ban đầu.],
    [Để phòng tránh hội chứng giảm áp, thợ lặn phải ngoi lên mặt nước thật chậm kết hợp dừng giải áp để Nitrogen thoát ra từ từ qua hô hấp.],
  ),
  ans-tf: ("Đ", "Đ", "S", "Đ"),
  sol: [
    - a) *Đúng:* $p_1 = p_0 + rho g h = "1,0" dot 10^5 + 1030 times 10 times 35 = "4,605" dot 10^5 thin "Pa" approx "4,61" thin "atm"$.
    - b) *Đúng:* $V_2 = V_1 frac(p_1, p_0) approx "4,61" V_1$.
    - c) *Sai:* Thể tích hình cầu $V = frac(4, 3) pi R^3 prop R^3 arrow.r.double R_2 = R_1 root(3, "4,61") approx "1,66" R_1$ (tăng $"1,66"$ lần, không phải $"4,61"$ lần).
    - d) *Đúng:* Quy tắc an toàn lặn biển giải áp chống tắc mạch do Nitrogen.
  ],
)

// Câu 27
#vp-question(
  [
    Một ống nhún giảm xóc bằng khí nén (xilanh nén khí) của ghế tựa lái xe tải có thể tích ban đầu $V_1 = "0,80" thin "lít"$ chứa không khí ở áp suất $p_1 = "1,5" dot 10^5 thin "Pa"$. Khi xe đi qua gờ giảm tốc, tải trọng nén đột ngột làm pit-tông dịch chuyển nén thể tích khí xuống còn $V_2 = "0,50" thin "lít"$. Quá trình nén diễn ra rất nhanh làm nhiệt độ khí tăng từ $27^degree"C"$ lên $57^degree"C"$.
  ],
  type: "tf",
  statements: (
    [Áp suất không khí bên trong giảm xóc ngay sau khi bị nén bằng $"2,64" dot 10^5 thin "Pa"$.],
    [Mật độ phân tử không khí trong xilanh giảm xóc sau khi nén tăng gấp $"1,6"$ lần.],
    [Lực phản hồi do áp suất khí nén tạo ra giúp hấp thụ lực xóc hiệu quả.],
    [Độ tăng áp suất của khối khí trong xilanh bằng $"1,14" dot 10^5 thin "Pa"$.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "Đ"),
  sol: [
    - a) *Đúng:* $p_2 = p_1 frac(V_1, V_2) frac(T_2, T_1) = "1,5" dot 10^5 times frac("0,80", "0,50") times frac(330, 300) = "2,64" dot 10^5 thin "Pa"$.
    - b) *Đúng:* $mu_2 = mu_1 frac(V_1, V_2) = mu_1 frac("0,80", "0,50") = "1,6" mu_1$.
    - c) *Đúng:* Ưu điểm của giảm xóc khí nén.
    - d) *Đúng:* $Delta p = p_2 - p_1 = "2,64" dot 10^5 - "1,5" dot 10^5 = "1,14" dot 10^5 thin "Pa"$.
  ],
)

// Câu 28
#vp-question(
  [
    Một bình chứa khí nén bằng kim loại có thể tích $V = "10,0" thin "lít"$ chứa khí Hydrogen ở nhiệt độ $t_1 = 27^degree"C"$ và áp suất $p_1 = "5,0" dot 10^5 thin "Pa"$. Bơm thêm $m = "4,0" thin "g"$ khí Hydrogen ($M = "2,0" thin "g/mol"$) vào bình và đun nóng bình đến nhiệt độ $t_2 = 127^degree"C"$. Cho $R = "8,31" thin "J/(mol" dot "K)"$.
  ],
  type: "tf",
  statements: (
    [Số mol khí Hydrogen ban đầu trong bình xấp xỉ $n_1 = "0,20" thin "mol"$.],
    [Số mol khí Hydrogen được bơm thêm vào bình là $Delta n = "2,0" thin "mol"$.],
    [Tổng số mol khí Hydrogen trong bình sau khi bơm xấp xỉ bằng $n_2 = "4,0" thin "mol"$.],
    [Áp suất khí trong bình sau khi bơm và đun nóng xấp xỉ bằng $"13,3" dot 10^5 thin "Pa"$.],
  ),
  ans-tf: ("S", "Đ", "Đ", "Đ"),
  sol: [
    - a) *Sai:* $n_1 = frac(p_1 V, R T_1) = frac("5,0" dot 10^5 times "10,0" dot 10^(-3), "8,31" times 300) approx "2,0" thin "mol" eq.not "0,20" thin "mol"$.
    - b) *Đúng:* $Delta n = frac("4,0", "2,0") = "2,0" thin "mol"$.
    - c) *Đúng:* $n_2 = n_1 + Delta n approx "2,0" + "2,0" = "4,0" thin "mol"$.
    - d) *Đúng:* $p_2 = frac(n_2 R T_2, V) = frac("4,0" times "8,31" times 400, "10,0" dot 10^(-3)) approx "13,3" dot 10^5 thin "Pa"$.
  ],
)

// Câu 29
#vp-question(
  [
    Một nhiệt kế khí thể tích không đổi gồm một bình thủy tinh chứa khí nối với một ống chữ U chứa thủy ngân, nhánh ngoài để hở thông với khí quyển có áp suất $p_0 = 760 thin "mmHg"$. Ở nhiệt độ $t_1 = 0^degree"C"$, mực thủy ngân ở hai nhánh ngang nhau và áp suất khí trong bình bằng $p_1 = 760 thin "mmHg"$. Nhúng bình thủy tinh vào dung dịch cần đo nhiệt độ (và chỉnh ống chữ U để giữ thể tích khí không đổi) thì thấy mực thủy ngân ở nhánh ngoài cao hơn nhánh trong một đoạn $h = 190 thin "mmHg"$.
  ],
  type: "tf",
  statements: (
    [Vì thể tích bình giữ không đổi nên áp suất khí tỉ lệ thuận với nhiệt độ tuyệt đối $T$.],
    [Áp suất của khối khí khi nhúng vào dung dịch bằng $p_2 = 950 thin "mmHg"$.],
    [Tỷ số áp suất $frac(p_2, p_1) = "1,25"$.],
    [Nhiệt độ của dung dịch cần đo bằng $"68,25"^degree"C"$.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "Đ"),
  sol: [
    - a) *Đúng:* Thể tích không đổi $arrow.r.double p prop T$.
    - b) *Đúng:* $p_2 = p_1 + h = 760 + 190 = 950 thin "mmHg"$.
    - c) *Đúng:* $frac(p_2, p_1) = frac(950, 760) = "1,25"$.
    - d) *Đúng:* $T_2 = T_1 times "1,25" = 273 times "1,25" = "341,25" thin "K" arrow.r.double t_2 = "341,25" - 273 = "68,25"^degree"C"$.
  ],
)

// Câu 30
#vp-question(
  [
    Hai bình khí $A$ và $B$ có thể tích $V_A = "3,0" thin "lít"$ và $V_B = "1,0" thin "lít"$ được nối với nhau bằng ống nhỏ có van đóng. Ban đầu bình $A$ chứa khí lí tưởng ở nhiệt độ $t_A = 27^degree"C"$ ($300 thin "K"$) và áp suất $p_A = "2,0" thin "atm"$. Bình $B$ được rút chân không hoàn toàn ($p_B = 0$). Đặt bình $B$ vào bể điều nhiệt ở $t_B = 127^degree"C"$ ($400 thin "K"$), giữ bình $A$ ở $27^degree"C"$. Mở van nối nhẹ nhàng để khí tràn sang bình $B$ cho đến khi áp suất hai bình bằng nhau và bằng $p$.
  ],
  type: "tf",
  statements: (
    [Tổng số mol khí ban đầu trong bình $A$ được phân bố lại vào hai bình $A$ và $B$.],
    [Số mol khí ban đầu trong bình $A$ xấp xỉ $n_A = "0,244" thin "mol"$ (lấy $R = "0,082" thin "atm" dot "lít/(mol" dot "K)"$).],
    [Áp suất cân bằng chung của hệ hai bình bằng $"1,60" thin "atm"$.],
    [Số mol khí chuyển sang bình $B$ chiếm đúng $20%$ tổng số mol khí ban đầu.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "Đ"),
  sol: [
    - a) *Đúng:* Khí tràn từ $A$ sang $B$ đạt cân bằng áp suất $p$.
    - b) *Đúng:* $n_A = frac(p_A V_A, R T_A) = frac("2,0" times "3,0", "0,082" times 300) approx "0,244" thin "mol"$.
    - c) *Đúng:* Bảo toàn số mol: $frac(p_A V_A, R T_A) = frac(p V_A, R T_A) + frac(p V_B, R T_B) arrow.r.double frac("6,0", 300) = p (frac("3,0", 300) + frac("1,0", 400)) arrow.r.double "0,020" = "0,0125" p arrow.r.double p = "1,60" thin "atm"$.
    - d) *Đúng:* Tỷ lệ số mol sang $B$: $frac(n'_B, n_A) = frac(p V_B / T_B, p_A V_A / T_A) = frac("1,60" times "1,0" / 400, "2,0" times "3,0" / 300) = frac("0,004", "0,020") = 20%$.
  ],
)

#if co-loi-giai [
  #block(breakable: false)[
    #v(14pt)
    = Bảng đáp án tổng hợp (30 câu lớn — 120 lệnh hỏi)

    #align(center)[
      #text(size: 10.5pt)[
        #table(
          columns: (32pt, 18pt, 18pt, 18pt, 18pt, 8pt, 32pt, 18pt, 18pt, 18pt, 18pt, 8pt, 32pt, 18pt, 18pt, 18pt, 18pt),
          align: center + horizon,
          stroke: 0.5pt + rgb("#cbd5e1"),
          fill: (col, row) => if row == 0 { rgb("#e0f2fe") } else if col in (5, 11) { rgb("#f1f5f9") } else { none },
          [*Câu*], [*a*], [*b*], [*c*], [*d*], [], [*Câu*], [*a*], [*b*], [*c*], [*d*], [], [*Câu*], [*a*], [*b*], [*c*], [*d*],
          [*1*], [Đ], [Đ], [Đ], [Đ], [], [*11*], [Đ], [Đ], [S], [Đ], [], [*21*], [Đ], [Đ], [Đ], [S],
          [*2*], [Đ], [S], [Đ], [Đ], [], [*12*], [Đ], [Đ], [Đ], [Đ], [], [*22*], [Đ], [Đ], [Đ], [Đ],
          [*3*], [Đ], [Đ], [Đ], [Đ], [], [*13*], [Đ], [Đ], [Đ], [Đ], [], [*23*], [Đ], [Đ], [Đ], [S],
          [*4*], [S], [Đ], [Đ], [Đ], [], [*14*], [Đ], [Đ], [Đ], [Đ], [], [*24*], [Đ], [Đ], [Đ], [Đ],
          [*5*], [Đ], [S], [Đ], [Đ], [], [*15*], [Đ], [Đ], [S], [Đ], [], [*25*], [Đ], [Đ], [Đ], [Đ],
          [*6*], [Đ], [Đ], [Đ], [Đ], [], [*16*], [Đ], [Đ], [Đ], [Đ], [], [*26*], [Đ], [Đ], [S], [Đ],
          [*7*], [Đ], [Đ], [S], [Đ], [], [*17*], [Đ], [Đ], [Đ], [Đ], [], [*27*], [Đ], [Đ], [Đ], [Đ],
          [*8*], [Đ], [S], [Đ], [Đ], [], [*18*], [Đ], [Đ], [Đ], [Đ], [], [*28*], [S], [Đ], [Đ], [Đ],
          [*9*], [S], [Đ], [Đ], [S], [], [*19*], [Đ], [Đ], [Đ], [Đ], [], [*29*], [Đ], [Đ], [Đ], [Đ],
          [*10*], [Đ], [Đ], [Đ], [Đ], [], [*20*], [S], [Đ], [Đ], [Đ], [], [*30*], [Đ], [Đ], [Đ], [Đ],
        )
      ]
    ]
  ]
]

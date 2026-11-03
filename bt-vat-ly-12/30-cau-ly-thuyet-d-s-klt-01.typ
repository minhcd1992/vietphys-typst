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

#sbt-bai(
  num: "1",
  title: "Chuyên đề Khí lý tưởng",
  subtitle: "Trắc nghiệm Đúng / Sai (30 câu — 120 lệnh hỏi)",
)

= Chủ đề 1. Mô hình động học phân tử và khái niệm khí lý tưởng
#sbt-instructions[Xác định mỗi phát biểu a), b), c), d) là đúng hay sai.]

// Câu 1
#vp-question(
  [
    Xét mô hình động học phân tử chất khí về cấu tạo và tính chất chuyển động của các phân tử.
  ],
  type: "tf",
  statements: (
    [Các phân tử khí chuyển động hỗn loạn không ngừng; nhiệt độ chất khí càng cao thì tốc độ chuyển động trung bình của các phân tử càng lớn.],
    [Trong quá trình chuyển động hỗn loạn, các phân tử khí chỉ va chạm với thành bình chứa mà hoàn toàn không va chạm với nhau.],
    [Khoảng cách trung bình giữa các phân tử khí rất lớn so với kích thước của mỗi phân tử nên thể tích của các phân tử khí rất nhỏ so với thể tích bình chứa.],
    [Lực tương tác phân tử giữa các phân tử chất khí ở điều kiện nhiệt độ và áp suất thông thường là rất lớn, giữ cho các phân tử xếp sát nhau.],
  ),
  ans-tf: ("Đ", "S", "Đ", "S"),
  sol: [
    - a) *Đúng:* Mô hình động học phân tử chất khí.
    - b) *Sai:* Các phân tử chuyển động hỗn loạn va chạm với cả thành bình lẫn va chạm với nhau.
    - c) *Đúng:* Khoảng cách phân tử lớn nên thể tích phân tử rất nhỏ so với thể tích bình.
    - d) *Sai:* Lực tương tác giữa các phân tử khí rất yếu (gần như bỏ qua khi không va chạm).
  ],
)

// Câu 2
#vp-question(
  [
    Khái niệm "Khí lý tưởng" là một mô hình đơn giản hóa của chất khí thực giúp việc nghiên cứu các quy luật chất khí trở nên thuận tiện.
  ],
  type: "tf",
  statements: (
    [Khí lý tưởng là chất khí trong đó các phân tử được coi là những chất điểm có kích thước không đáng kể.],
    [Các phân tử khí lý tưởng chỉ tương tác với nhau khi va chạm; giữa hai lần va chạm liên tiếp, chúng chuyển động thẳng đều.],
    [Va chạm giữa các phân tử khí lý tưởng với nhau và với thành bình được coi là va chạm mềm (không bảo toàn động năng).],
    [Ở nhiệt độ thông thường và áp suất thấp, nhiều khí thực (như oxy, nitơ, heli...) có thể coi gần đúng là khí lý tưởng.],
  ),
  ans-tf: ("Đ", "Đ", "S", "Đ"),
  sol: [
    - a) *Đúng:* Khái niệm chất điểm trong mô hình khí lý tưởng.
    - b) *Đúng:* Bỏ qua lực tương tác khi chưa va chạm $arrow.r.double$ giữa hai va chạm liên tiếp phân tử chuyển động thẳng đều.
    - c) *Sai:* Va chạm trong khí lý tưởng là va chạm *hoàn toàn đàn hồi* (bảo toàn động năng).
    - d) *Đúng:* Khí thực ở áp suất thấp, nhiệt độ phòng coi gần đúng là khí lý tưởng.
  ],
)

// Câu 3
#vp-question(
  [
    Nguyên nhân tạo ra áp suất của chất khí lên thành bình chứa theo mô hình động học phân tử.
  ],
  type: "tf",
  statements: (
    [Áp suất chất khí tác dụng lên thành bình là do lực hút tĩnh điện giữa thành bình và các phân tử khí gây ra.],
    [Mỗi phân tử khí khi va chạm vào thành bình sẽ truyền cho thành bình một xung lượng; tổng hợp lực của vô số va chạm liên tục đó tạo nên áp suất tác dụng lên thành bình.],
    [Khi mật độ phân tử khí trong bình tăng lên và tốc độ chuyển động nhiệt của phân tử tăng thì áp suất chất khí tác dụng lên thành bình tăng lên.],
    [Áp suất chất khí tác dụng lên các điểm khác nhau trên thành bình chứa có độ lớn luôn khác nhau rõ rệt dù bình nằm cân bằng nhiệt.],
  ),
  ans-tf: ("S", "Đ", "Đ", "S"),
  sol: [
    - a) *Sai:* Áp suất tạo ra do va chạm cơ học của các phân tử truyền xung lượng lên thành bình, không phải do lực hút tĩnh điện.
    - b) *Đúng:* Cơ chế tạo nên áp suất từ vô số va chạm phân tử.
    - c) *Đúng:* $p = frac(1, 3) mu m overline(v^2)$, mật độ $mu$ và tốc độ $v$ tăng làm áp suất $p$ tăng.
    - d) *Sai:* Ở trạng thái cân bằng nhiệt (bỏ qua trọng lực), áp suất khí tác dụng đều lên mọi điểm trên thành bình.
  ],
)

// Câu 4
#vp-question(
  [
    Nhiệt độ tuyệt đối $T$ và động năng tịnh tiến trung bình $overline(E)_đ$ của các phân tử khí lý tưởng.
  ],
  type: "tf",
  statements: (
    [Nhiệt độ tuyệt đối $T$ là đại lượng đo bằng nhiệt kế Celsius và có thể nhận giá trị âm trong hệ SI.],
    [Động năng tịnh tiến trung bình của phân tử khí lý tưởng tỉ lệ thuận với nhiệt độ tuyệt đối $T$ theo hệ thức $overline(E)_đ = frac(3, 2) k T$.],
    [Ở nhiệt độ $0 thin "K"$ (Độ không tuyệt đối), theo lý thuyết cổ điển, chuyển động nhiệt của các phân tử chất khí hoàn toàn dừng lại và động năng tịnh tiến trung bình bằng 0.],
    [Hai khối khí lý tưởng khác nhau (ví dụ $"H"_2$ và $"O"_2$) ở cùng một nhiệt độ $T$ thì các phân tử của chúng có cùng động năng tịnh tiến trung bình $overline(E)_đ$.],
  ),
  ans-tf: ("S", "Đ", "Đ", "Đ"),
  sol: [
    - a) *Sai:* $T ("K") = t (degree"C") + 273$, nhiệt độ tuyệt đối $T$ luôn nhận giá trị không âm ($T >= 0 thin "K"$).
    - b) *Đúng:* Hệ thức $overline(E)_đ = frac(3, 2) k T$.
    - c) *Đúng:* Tại $0 thin "K"$, theo mô hình cổ điển động năng chuyển động nhiệt bằng 0.
    - d) *Đúng:* $overline(E)_đ$ chỉ phụ thuộc vào nhiệt độ $T$, không phụ thuộc vào bản chất hay khối lượng phân tử.
  ],
)

= Chủ đề 2. Định luật Boyle và quá trình đẳng nhiệt

// Câu 5
#vp-question(
  [
    Xét quá trình đẳng nhiệt của một lượng khí lý tưởng xác định (Định luật Boyle).
  ],
  type: "tf",
  statements: (
    [Quá trình đẳng nhiệt là quá trình biến đổi trạng thái của một lượng khí xác định trong đó nhiệt độ của khối khí được giữ không đổi.],
    [Theo định luật Boyle, trong quá trình đẳng nhiệt của một khối khí xác định, áp suất $p$ tỉ lệ nghịch với thể tích $V$, tức là $p dot V = "hằng số"$.],
    [Nếu nén đẳng nhiệt một khối khí làm thể tích giảm đi 3 lần thì áp suất của khối khí sẽ giảm đi 3 lần.],
    [Tích $p dot V$ của một lượng khí xác định ở nhiệt độ $T_1$ luôn lớn hơn tích $p dot V$ của chính lượng khí đó ở nhiệt độ $T_2$ nếu $T_1 < T_2$.],
  ),
  ans-tf: ("Đ", "Đ", "S", "S"),
  sol: [
    - a) *Đúng:* Định nghĩa quá trình đẳng nhiệt.
    - b) *Đúng:* Định luật Boyle $p prop frac(1, V) arrow.r.double p dot V = "hằng số"$.
    - c) *Sai:* Thể tích giảm 3 lần thì áp suất phải *tăng* 3 lần ($p_2 = 3 p_1$).
    - d) *Sai:* Tích $p dot V = n R T$; vì $T_1 < T_2$ nên $(p V)_1 < (p V)_2$.
  ],
)

// Câu 6
#vp-question(
  [
    Đồ thị biểu diễn đường đẳng nhiệt của một lượng khí lý tưởng trên các mặt phẳng tọa độ khác nhau.
  ],
  type: "tf",
  statements: (
    [Trên mặt phẳng tọa độ $(p, V)$, đường đẳng nhiệt là một đường hyperbol.],
    [Trên mặt phẳng tọa độ $(p, T)$, đường đẳng nhiệt là một đường thẳng vuông góc với trục nhiệt độ $O T$ (hoặc song song với trục $O p$).],
    [Trên mặt phẳng tọa độ $(V, T)$, đường đẳng nhiệt là một đường thẳng kéo dài đi qua gốc tọa độ $O$.],
    [Trong hệ tọa độ $(p, V)$, đường đẳng nhiệt ứng với nhiệt độ cao hơn sẽ nằm phía trên đường đẳng nhiệt ứng với nhiệt độ thấp hơn.],
  ),
  ans-tf: ("Đ", "Đ", "S", "Đ"),
  sol: [
    - a) *Đúng:* Đồ thị đẳng nhiệt trong hệ $(p, V)$ là nhánh hyperbol.
    - b) *Đúng:* Đồ thị trong hệ $(p, T)$ vuông góc với trục $O T$.
    - c) *Sai:* Đường thẳng kéo dài đi qua gốc $O$ trong hệ $(V, T)$ là đường *đẳng áp*, không phải đẳng nhiệt.
    - d) *Đúng:* Đường đẳng nhiệt ở nhiệt độ cao hơn nằm phía trên trong hệ $(p, V)$.
  ],
)

// Câu 7
#vp-question(
  [
    Một bọt khí có thể tích $V_1$ nổi từ đáy hồ sâu $h$ lên mặt nước. Coi nhiệt độ của nước hồ là không đổi theo độ sâu và áp suất khí quyển trên mặt hồ là $p_0 = "1,0" thin "atm"$.
  ],
  type: "tf",
  statements: (
    [Quá trình bọt khí nổi lên từ đáy hồ là quá trình đẳng nhiệt.],
    [Khi bọt khí nổi lên, áp suất nước tác dụng lên bọt khí giảm dần nên thể tích của bọt khí ngày càng tăng lên.],
    [Nếu ở đáy hồ có độ sâu $20 thin "m"$ (cho biết nước có khối lượng riêng $rho = 1000 thin "kg/m"^3$, $g = 10 thin "m/s"^2$, $1 thin "atm" approx 10^5 thin "Pa"$), áp suất tuyệt đối tại đáy hồ bằng $"3,0" thin "atm"$.],
    [Bọt khí khi lên tới sát mặt nước sẽ có thể tích gấp 2 lần thể tích của nó khi ở đáy hồ sâu $20 thin "m"$.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [
    - a) *Đúng:* Coi nhiệt độ nước hồ không đổi nên là quá trình đẳng nhiệt.
    - b) *Đúng:* Áp suất $p = p_0 + rho g h$ giảm khi nổi lên $arrow.r.double V$ tăng.
    - c) *Đúng:* $p_("đáy") = 10^5 + 1000 times 10 times 20 = 3 dot 10^5 thin "Pa" = "3,0" thin "atm"$.
    - d) *Sai:* $p_1 V_1 = p_2 V_2 arrow.r.double 3 times V_1 = 1 times V_2 arrow.r.double V_2 = 3 V_1$ (tăng 3 lần, không phải 2 lần).
  ],
)

// Câu 8
#vp-question(
  [
    Trong thí nghiệm kiểm chứng định luật Boyle, học sinh sử dụng một xilanh có pit-tông kín nối với cảm biến áp suất và thước đo thể tích.
  ],
  type: "tf",
  statements: (
    [Thao tác dịch chuyển pit-tông phải thực hiện thật chậm để nhiệt độ của khối khí trong xilanh kịp trao đổi với môi trường bên ngoài và không đổi.],
    [Nếu dịch chuyển pit-tông quá nhanh, khối khí bị nén sẽ bị nóng lên làm cho tích $p dot V$ thu được lớn hơn giá trị lý thuyết đẳng nhiệt.],
    [Đồ thị biểu diễn mối liên hệ giữa áp suất $p$ và $frac(1, V)$ thu được từ thí nghiệm có dạng một đường thẳng kéo dài đi qua gốc tọa độ.],
    [Khi làm thí nghiệm nếu xilanh bị hở làm một phần khí thoát ra ngoài thì tích $p dot V$ đo được ở các thể tích nhỏ hơn sẽ không đổi.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [
    - a) *Đúng:* Thao tác chậm đảm bảo trao đổi nhiệt với môi trường giữ $T = "hằng số"$.
    - b) *Đúng:* Nén nhanh sinh công làm khí nóng lên $arrow.r.double T$ tăng làm $p dot V = n R T$ lớn hơn lý thuyết.
    - c) *Đúng:* $p = "const" dot (frac(1, V))$ có dạng $y = a x$ đi qua gốc tọa độ.
    - d) *Sai:* Khí bị hở làm số mol $n$ giảm $arrow.r.double$ tích $p dot V = n R T$ sẽ bị giảm dần.
  ],
)

= Chủ đề 3. Định luật Charles và quá trình đẳng áp

// Câu 9
#vp-question(
  [
    Xét quá trình đẳng áp của một lượng khí lý tưởng xác định (Định luật Charles).
  ],
  type: "tf",
  statements: (
    [Quá trình đẳng áp là quá trình biến đổi trạng thái của một lượng khí xác định trong đó áp suất được giữ không đổi.],
    [Định luật Charles phát biểu rằng: Trong quá trình đẳng áp của một lượng khí xác định, thể tích $V$ tỉ lệ thuận với nhiệt độ tuyệt đối $T$, tức là $frac(V, T) = "hằng số"$.],
    [Khi đun nóng đẳng áp một khối khí từ $27^degree"C"$ lên $327^degree"C"$, nhiệt độ tuyệt đối tăng gấp 2 lần nên thể tích của khối khí sẽ tăng gấp 2 lần.],
    [Trong quá trình đẳng áp, nếu nhiệt độ Celsius $t$ tăng gấp đôi thì thể tích $V$ của khối khí cũng tăng gấp đôi.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [
    - a) *Đúng:* Định nghĩa quá trình đẳng áp.
    - b) *Đúng:* Định luật Charles $frac(V, T) = "hằng số"$.
    - c) *Đúng:* $T_1 = 27 + 273 = 300 thin "K"$, $T_2 = 327 + 273 = 600 thin "K" = 2 T_1 arrow.r.double V_2 = 2 V_1$.
    - d) *Sai:* Thể tích tỉ lệ thuận với nhiệt độ *tuyệt đối* $T$ (Kelvin), không tỉ lệ thuận với nhiệt độ Celsius $t$.
  ],
)

// Câu 10
#vp-question(
  [
    Đồ thị biểu diễn quá trình đẳng áp trên các hệ tọa độ khác nhau.
  ],
  type: "tf",
  statements: (
    [Trong hệ tọa độ $(V, T)$, đường đẳng áp là đường thẳng có phương kéo dài đi qua gốc tọa độ $O$.],
    [Trong hệ tọa độ $(p, V)$, đường đẳng áp là đường thẳng song song với trục thể tích $O V$.],
    [Trong hệ tọa độ $(V, T)$, xét hai đường đẳng áp ứng với hai áp suất $p_1$ và $p_2$, đường nằm gần trục $O T$ hơn ứng với áp suất nhỏ hơn.],
    [Trong hệ tọa độ $(p, T)$, đường đẳng áp là đường hyperbol.],
  ),
  ans-tf: ("Đ", "Đ", "S", "S"),
  sol: [
    - a) *Đúng:* Đồ thị đẳng áp trong hệ $(V, T)$ kéo dài đi qua gốc $O$.
    - b) *Đúng:* Trong hệ $(p, V)$, đường đẳng áp nằm ngang song song $O V$.
    - c) *Sai:* $frac(V, T) = frac(n R, p) arrow.r.double$ hệ số góc tỉ lệ nghịch với $p$. Đường nằm gần $O T$ hơn có hệ số góc nhỏ hơn $arrow.r.double$ áp suất *lớn hơn*.
    - d) *Sai:* Trong hệ $(p, T)$, đường đẳng áp là đường thẳng vuông góc với $O p$ (song song $O T$), không phải hyperbol.
  ],
)

// Câu 11
#vp-question(
  [
    Một nhóm học sinh làm thí nghiệm kiểm chứng định luật Charles bằng ống thủy tinh nhỏ nằm ngang ngăn bởi giọt thủy ngân.
  ],
  type: "tf",
  statements: (
    [Thể tích của lượng khí nhốt trong ống được xác định thông qua chiều dài của cột khí trong ống thủy tinh.],
    [Khi đun nóng cốc nước chứa ống thủy tinh, giọt thủy ngân dịch chuyển ra phía ngoài chứng tỏ thể tích khí tăng khi nhiệt độ tăng.],
    [Áp suất của khối khí trong ống nằm ngang trong suốt thí nghiệm bằng áp suất khí quyển $p_0$ cộng với trọng lực giọt thủy ngân.],
    [Nếu ống thủy tinh đặt nghiêng hoặc thẳng đứng thì áp suất khí trong ống vẫn luôn đúng bằng áp suất khí quyển $p_0$.],
  ),
  ans-tf: ("Đ", "Đ", "S", "S"),
  sol: [
    - a) *Đúng:* Khí trong ống hình trụ tiết diện đều có $V = S dot L prop L$.
    - b) *Đúng:* Nhiệt độ tăng làm thể tích khí nở đẩy giọt thủy ngân ra ngoài.
    - c) *Sai:* Ống nằm ngang thì áp suất khí trong ống cân bằng đúng bằng áp suất khí quyển $p_0$ (trọng lực giọt thủy ngân vuông góc thành ống).
    - d) *Sai:* Khi ống nghiêng hoặc thẳng đứng, trọng lượng giọt thủy ngân tạo thêm áp suất dọc ống làm $p eq.not p_0$.
  ],
)

// Câu 12
#vp-question(
  [
    Khí cầu không khí nóng hoạt động dựa trên nguyên lý nở vì nhiệt của chất khí ở áp suất khí quyển không đổi.
  ],
  type: "tf",
  statements: (
    [Khí cầu có lỗ hở ở đáy nên áp suất không khí bên trong khí cầu luôn bằng áp suất khí quyển bên ngoài.],
    [Khi đốt nóng không khí bên trong khí cầu, không khí nở ra, một phần không khí thoát ra ngoài làm mật độ phân tử khí bên trong giảm đi.],
    [Khối lượng riêng của không khí nóng bên trong khí cầu nhỏ hơn khối lượng riêng của không khí lạnh bên ngoài ($D prop frac(1, T)$).],
    [Khí cầu bay lên được là do lực đẩy Archimedes của không khí tác dụng lên khí cầu lớn hơn tổng trọng lượng của khí cầu và không khí nóng bên trong.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "Đ"),
  sol: [
    - a) *Đúng:* Khí cầu hở đáy nên áp suất bằng áp suất khí quyển $p_0$.
    - b) *Đúng:* Khí nở ra thoát bớt ra ngoài làm mật độ phân tử giảm.
    - c) *Đúng:* $D = frac(p M, R T) arrow.r.double D prop frac(1, T)$, khí nóng có khối lượng riêng nhỏ hơn.
    - d) *Đúng:* Điều kiện bay lên $F_A > P_("vỏ") + P_("khí nóng")$.
  ],
)

= Chủ đề 4. Định luật Gay-Lussac và quá trình đẳng tích

// Câu 13
#vp-question(
  [
    Xét quá trình đẳng tích của một lượng khí lý tưởng xác định.
  ],
  type: "tf",
  statements: (
    [Quá trình đẳng tích là quá trình biến đổi trạng thái của một lượng khí xác định trong đó thể tích của khối khí không đổi.],
    [Biểu thức của định luật đẳng tích là $frac(p, T) = "hằng số"$ hay $frac(p_1, T_1) = frac(p_2, T_2)$.],
    [Trong quá trình đẳng tích, áp suất của chất khí tỉ lệ thuận với nhiệt độ Celsius $t$ ($p prop t$).],
    [Đồ thị biểu diễn quá trình đẳng tích trong hệ tọa độ $(p, T)$ là một đường thẳng kéo dài đi qua gốc tọa độ $O$.],
  ),
  ans-tf: ("Đ", "Đ", "S", "Đ"),
  sol: [
    - a) *Đúng:* Khái niệm quá trình đẳng tích.
    - b) *Đúng:* Biểu thức đẳng tích $frac(p_1, T_1) = frac(p_2, T_2)$.
    - c) *Sai:* Áp suất tỉ lệ thuận với nhiệt độ *tuyệt đối* $T$, không tỉ lệ thuận với nhiệt độ Celsius $t$.
    - d) *Đúng:* Đồ thị trong hệ $(p, T)$ có đường kéo dài đi qua gốc $O$.
  ],
)

// Câu 14
#vp-question(
  [
    Ứng dụng thực tế: Áp suất lốp xe ô tô khi vận hành đường dài trong mùa hè nóng bức.
  ],
  type: "tf",
  statements: (
    [Khi xe ô tô chạy nhanh trên đường, sự ma sát giữa lốp và mặt đường cùng với nhiệt độ môi trường làm không khí bên trong lốp nóng lên.],
    [Thể tích lốp xe biến đổi rất ít (coi gần đúng là đẳng tích), nên nhiệt độ không khí trong lốp tăng dẫn đến áp suất khí trong lốp tăng mạnh.],
    [Các phân tử khí nóng chuyển động nhanh hơn, va chạm vào thành trong của lốp xe với tần suất dày đặc hơn và lực va chạm lớn hơn.],
    [Để tránh nguy cơ nổ lốp khi chạy xe đường dài mùa hè, người ta thường bơm lốp xe căng hơn mức khuyến cáo của nhà sản xuất.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [
    - a) *Đúng:* Ma sát và nhiệt độ mặt đường làm khí trong lốp nóng lên.
    - b) *Đúng:* $V approx "const"$, $T$ tăng làm $p$ tăng.
    - c) *Đúng:* Cơ chế vi mô gây tăng áp suất khí.
    - d) *Sai:* Bơm lốp quá căng mùa hè làm áp suất ban đầu lớn, khi nóng lên càng dễ nổ lốp.
  ],
)

// Câu 15
#vp-question(
  [
    Một bình thép kín chứa khí lý tưởng ở nhiệt độ $27^degree"C"$ có áp suất $"1,5" thin "atm"$. Nung nóng bình thép đến nhiệt độ $127^degree"C"$.
  ],
  type: "tf",
  statements: (
    [Vì bình thép cứng nên quá trình biến đổi trạng thái của khí trong bình là quá trình đẳng tích.],
    [Nhiệt độ tuyệt đối của khối khí tăng từ $300 thin "K"$ lên $400 thin "K"$.],
    [Áp suất của khối khí trong bình sau khi nung nóng bằng $"2,0" thin "atm"$.],
    [Tỷ số áp suất $frac(p_2, p_1)$ đúng bằng tỷ số nhiệt độ Celsius $frac(127, 27) approx "4,7"$.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [
    - a) *Đúng:* Bình thép cứng kín $arrow.r.double V = "const"$.
    - b) *Đúng:* $T_1 = 27 + 273 = 300 thin "K"$, $T_2 = 127 + 273 = 400 thin "K"$.
    - c) *Đúng:* $p_2 = p_1 frac(T_2, T_1) = "1,5" times frac(400, 300) = "2,0" thin "atm"$.
    - d) *Sai:* Áp suất tỉ lệ với nhiệt độ Kelvin $frac(400, 300) = frac(4, 3) approx "1,33"$, không tỉ lệ với nhiệt độ Celsius $frac(127, 27)$.
  ],
)

= Chủ đề 5. Phương trình trạng thái khí lý tưởng và phương trình Clapeyron

// Câu 16
#vp-question(
  [
    Phương trình trạng thái của khí lý tưởng liên hệ cả ba thông số trạng thái $p, V, T$ của một lượng khí xác định.
  ],
  type: "tf",
  statements: (
    [Biểu thức phương trình trạng thái của một lượng khí xác định là $frac(p_1 V_1, T_1) = frac(p_2 V_2, T_2) = "hằng số"$.],
    [Từ phương trình trạng thái, nếu giữ một trong ba thông số không đổi, ta thu được các định luật quá trình đẳng nhiệt, đẳng áp hoặc đẳng tích.],
    [Trong phương trình trạng thái, nhiệt độ $T$ bắt buộc phải tính theo thang Kelvin ($"K"$), còn áp suất và thể tích chỉ cần dùng cùng đơn vị ở hai trạng thái.],
    [Nếu một khối khí vừa tăng áp suất gấp 2 lần, vừa tăng thể tích gấp 3 lần thì nhiệt độ tuyệt đối của khối khí sẽ tăng gấp 5 lần.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [
    - a) *Đúng:* Phương trình trạng thái $frac(p_1 V_1, T_1) = frac(p_2 V_2, T_2)$.
    - b) *Đúng:* Suy ra các đẳng quá trình.
    - c) *Đúng:* $T$ phải dùng thang Kelvin, $p$ và $V$ chỉ cần đồng nhất đơn vị ở hai vế.
    - d) *Sai:* $frac(p_2 V_2, p_1 V_1) = 2 times 3 = 6 arrow.r.double T_2 = 6 T_1$ (tăng 6 lần, không phải 5 lần).
  ],
)

// Câu 17
#vp-question(
  [
    Phương trình Clapeyron - Mendeleev biểu diễn mối liên hệ giữa các thông số trạng thái với lượng chất (số mol $n$).
  ],
  type: "tf",
  statements: (
    [Dạng tổng quát của phương trình Clapeyron là $p dot V = n dot R dot T = frac(m, M) R T$.],
    [Giá trị của hằng số khí lý tưởng $R$ trong hệ SI là $R approx "8,31" thin "J/(mol" dot "K)"$.],
    [Trong phương trình $p dot V = n R T$, nếu áp suất $p$ tính bằng $"Pa"$ ($"N/m"^2$) và thể tích $V$ tính bằng $"m"^3$ thì tích $p dot V$ có đơn vị là Joule ($"J"$).],
    [Khối lượng riêng của khí lý tưởng được tính theo biểu thức $D = frac(m, V) = frac(p dot M, R dot T)$.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "Đ"),
  sol: [
    - a) *Đúng:* Phương trình Clapeyron - Mendeleev.
    - b) *Đúng:* $R approx "8,31" thin "J/(mol" dot "K)"$.
    - c) *Đúng:* $1 thin "Pa" dot 1 thin "m"^3 = 1 thin ("N/m"^2) dot "m"^3 = 1 thin "N" dot "m" = 1 thin "J"$.
    - d) *Đúng:* $D = frac(m, V) = frac(p M, R T)$.
  ],
)

// Câu 18
#vp-question(
  [
    Bài toán xả bớt khí hoặc rò rỉ khí trong bình chứa cố định thể tích.
  ],
  type: "tf",
  statements: (
    [Khi xả bớt một phần khí ra khỏi bình chứa ở nhiệt độ không đổi, số mol khí $n$ trong bình giảm làm áp suất khí trong bình giảm.],
    [Khối lượng khí trong bình tỉ lệ thuận với áp suất khí trong bình nếu thể tích và nhiệt độ của bình giữ không đổi ($m prop p$).],
    [Một bình chứa $5 thin "kg"$ khí ở áp suất $10 thin "atm"$. Sau khi dùng một thời gian, áp suất khí giảm còn $4 thin "atm"$ (nhiệt độ không đổi). Khối lượng khí đã dùng là $3 thin "kg"$.],
    [Số phân tử khí thoát ra ngoài không làm ảnh hưởng đến khối lượng riêng của lượng khí còn lại trong bình.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [
    - a) *Đúng:* $p = frac(n R T, V)$, $n$ giảm làm $p$ giảm.
    - b) *Đúng:* $p dot V = frac(m, M) R T arrow.r.double m = "const" dot p$.
    - c) *Đúng:* $frac(m_2, m_1) = frac(p_2, p_1) = frac(4, 10) arrow.r.double m_2 = 2 thin "kg" arrow.r.double Delta m = 5 - 2 = 3 thin "kg"$.
    - d) *Sai:* Xả bớt khí trong bình kín có $V = "const"$ làm $m$ giảm $arrow.r.double D = frac(m, V)$ giảm.
  ],
)

// Câu 19
#vp-question(
  [
    Hai bình chứa khí lý tưởng có thể tích $V_1$ và $V_2$ được nối với nhau bằng một ống nhỏ có van khóa.
  ],
  type: "tf",
  statements: (
    [Khi mở van khóa để hai bình thông nhau và cân bằng nhiệt độ, áp suất khí trong hai bình bằng nhau.],
    [Tổng số mol khí trong hệ hai bình sau khi mở van bằng tổng số mol khí ban đầu trong từng bình ($n_("tổng") = n_1 + n_2$).],
    [Nếu hai bình ban đầu chứa cùng một loại khí ở cùng nhiệt độ $T$ nhưng áp suất $p_1$ và $p_2$, áp suất chung $p$ khi mở van là $p = frac(p_1 V_1 + p_2 V_2, V_1 + V_2)$.],
    [Áp suất chung thu được sau khi mở van luôn lớn hơn cả hai áp suất ban đầu $p_1$ và $p_2$.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [
    - a) *Đúng:* Khí chảy từ nơi áp suất cao sang thấp đến khi áp suất cân bằng nhau.
    - b) *Đúng:* Bảo toàn số mol $n_("tổng") = n_1 + n_2$.
    - c) *Đúng:* $frac(p (V_1 + V_2), R T) = frac(p_1 V_1, R T) + frac(p_2 V_2, R T) arrow.r.double p = frac(p_1 V_1 + p_2 V_2, V_1 + V_2)$.
    - d) *Sai:* Áp suất chung $p$ là trung bình trọng số, luôn nằm trung gian giữa $p_1$ và $p_2$.
  ],
)

// Câu 20
#vp-question(
  [
    Một xilanh đặt thẳng đứng kín hai đầu được chia làm hai phần nhờ một pit-tông nặng có thể trượt không ma sát.
  ],
  type: "tf",
  statements: (
    [Khi pit-tông ở trạng thái cân bằng nằm ngang hoặc thẳng đứng, áp suất khí ở hai phần xilanh luôn bằng nhau.],
    [Nếu xilanh đặt thẳng đứng, áp suất khí ở phần dưới luôn lớn hơn áp suất khí ở phần trên một lượng đúng bằng áp suất do trọng lực pit-tông gây ra ($Delta p = frac(m_("pt") g, S)$).],
    [Khi đun nóng cả hai phần xilanh đến cùng một nhiệt độ, pit-tông sẽ dịch chuyển về phía phần có thể tích lớn hơn.],
    [Nếu giữ nguyên nhiệt độ và lật ngược xilanh $180^degree$, thể tích khí ở hai phần xilanh sẽ thay đổi.],
  ),
  ans-tf: ("S", "Đ", "S", "Đ"),
  sol: [
    - a) *Sai:* Khi đặt thẳng đứng, pit-tông có trọng lượng ép lên phần dưới nên áp suất phần dưới lớn hơn phần trên.
    - b) *Đúng:* Cân bằng pit-tông: $p_("dưới") S = p_("trên") S + m_("pt") g arrow.r.double p_("dưới") - p_("trên") = frac(m_("pt") g, S)$.
    - c) *Sai:* Khi đun nóng từ cùng nhiệt độ $T_0$ lên $T$, áp suất phần dưới tăng mạnh hơn phần trên nên pit-tông dịch chuyển lên phía trên (phía áp suất nhỏ hơn), không phụ thuộc vào phần nào có thể tích lớn hơn.
    - d) *Đúng:* Lật ngược xilanh làm chiều trọng lực pit-tông đổi ngược so với hai ngăn khí $arrow.r.double$ pit-tông dịch chuyển làm thay đổi thể tích hai bên.
  ],
)

= Chủ đề 6. Áp suất và động năng phân tử khí theo mô hình động học

// Câu 21
#vp-question(
  [
    Biểu thức áp suất chất khí tác dụng lên thành bình theo mô hình động học phân tử.
  ],
  type: "tf",
  statements: (
    [Áp suất $p$ của chất khí được xác định bởi công thức $p = frac(1, 3) mu m overline(v^2)$, trong đó $mu$ là mật độ phân tử khí, $m$ là khối lượng một phân tử và $overline(v^2)$ là trung bình bình phương tốc độ phân tử.],
    [Mối liên hệ giữa áp suất $p$, mật độ phân tử $mu$ và động năng tịnh tiến trung bình $overline(E)_đ$ của phân tử là $p = frac(2, 3) mu overline(E)_đ$.],
    [Tăng mật độ phân tử khí $mu$ lên 2 lần đồng thời tăng động năng tịnh tiến trung bình của phân tử lên 3 lần thì áp suất khí tăng lên 6 lần.],
    [Với khối lượng riêng $D = mu dot m$, áp suất chất khí còn được viết dưới dạng $p = frac(1, 3) D overline(v^2)$.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "Đ"),
  sol: [
    - a) *Đúng:* Công thức $p = frac(1, 3) mu m overline(v^2)$.
    - b) *Đúng:* Vì $overline(E)_đ = frac(1, 2) m overline(v^2) arrow.r.double p = frac(2, 3) mu overline(E)_đ$.
    - c) *Đúng:* $p prop mu dot overline(E)_đ arrow.r.double 2 times 3 = 6$ lần.
    - d) *Đúng:* Vì $D = mu dot m arrow.r.double p = frac(1, 3) D overline(v^2)$.
  ],
)

// Câu 22
#vp-question(
  [
    Hằng số Boltzmann $k$ và hệ thức động năng tịnh tiến trung bình của phân tử.
  ],
  type: "tf",
  statements: (
    [Hằng số Boltzmann $k$ liên hệ giữa hằng số khí $R$ và số Avogadro $N_A$ theo công thức $k = frac(R, N_A)$.],
    [Trong hệ SI, hằng số Boltzmann có giá trị xấp xỉ $k approx "1,38" dot 10^(-23) thin "J/K"$.],
    [Hệ thức tính động năng tịnh tiến trung bình của một phân tử khí là $overline(E)_đ = frac(3, 2) k T$.],
    [Đơn vị của động năng tịnh tiến trung bình $overline(E)_đ$ trong hệ SI là Watt ($"W"$).],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [
    - a) *Đúng:* $k = frac(R, N_A)$.
    - b) *Đúng:* $k approx "1,38" dot 10^(-23) thin "J/K"$.
    - c) *Đúng:* $overline(E)_đ = frac(3, 2) k T$.
    - d) *Sai:* Động năng có đơn vị Joule ($"J"$), còn Watt ($"W"$) là đơn vị công suất.
  ],
)

// Câu 23
#vp-question(
  [
    Tốc độ căn quân phương $v_("cqp") = sqrt(overline(v^2))$ của các phân tử khí lý tưởng.
  ],
  type: "tf",
  statements: (
    [Tốc độ căn quân phương của phân tử khí tính theo công thức $v_("cqp") = sqrt(frac(3 k T, m)) = sqrt(frac(3 R T, M))$, trong đó $M$ là khối lượng mol khí.],
    [Ở cùng một nhiệt độ $T$, khí có khối lượng mol $M$ càng nhỏ (khí nhẹ như $"H"_2, "He"$) thì tốc độ căn quân phương của phân tử càng lớn.],
    [Để tốc độ căn quân phương của các phân tử khí tăng lên 2 lần thì nhiệt độ tuyệt đối $T$ của khối khí phải tăng lên 4 lần.],
    [Tốc độ căn quân phương chính là tốc độ trung bình số học của tất cả các phân tử khí trong bình.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [
    - a) *Đúng:* Công thức $v_("cqp") = sqrt(frac(3 k T, m)) = sqrt(frac(3 R T, M))$.
    - b) *Đúng:* $v_("cqp") prop frac(1, sqrt(M))$, khí nhẹ chuyển động nhanh hơn.
    - c) *Đúng:* $v_("cqp") prop sqrt(T) arrow.r.double$ tăng $v_("cqp")$ 2 lần thì $T$ phải tăng 4 lần.
    - d) *Sai:* Tốc độ căn quân phương $v_("cqp") = sqrt(overline(v^2))$ là căn bậc hai của trung bình bình phương tốc độ, lớn hơn tốc độ trung bình số học $overline(v)$.
  ],
)

// Câu 24
#vp-question(
  [
    Mật độ phân tử khí $mu$ và số phân tử $N$ trong một thể tích $V$.
  ],
  type: "tf",
  statements: (
    [Mật độ phân tử khí $mu$ được định nghĩa là số phân tử khí có trong một đơn vị thể tích ($mu = frac(N, V)$).],
    [Số phân tử khí $N$ trong $n$ mol chất khí được tính bằng $N = n dot N_A = frac(m, M) N_A$.],
    [Ở điều kiện tiêu chuẩn ($0^degree"C", 1 thin "atm"$), $1 thin "mol"$ khí lý tưởng bất kỳ chiếm thể tích $"22,4" thin "lít"$ và chứa xấp xỉ $"6,02" dot 10^23$ phân tử.],
    [Nén đẳng nhiệt một khối khí làm thể tích giảm 2 lần thì mật độ phân tử khí $mu$ trong bình giảm đi 2 lần.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [
    - a) *Đúng:* Định nghĩa mật độ phân tử $mu = frac(N, V)$.
    - b) *Đúng:* Số phân tử $N = n dot N_A$.
    - c) *Đúng:* Thông số tiêu chuẩn ở ĐKTC.
    - d) *Sai:* Nén thể tích giảm 2 lần thì mật độ phân tử $mu = frac(N, V)$ phải *tăng* 2 lần.
  ],
)

= Chủ đề 7. Chu trình biến đổi trạng thái và đồ thị bài toán tổng hợp

// Câu 25
#vp-question(
  [
    Một lượng khí lý tưởng xác định thực hiện một chu trình biến đổi trạng thái khép kín $1 arrow.r 2 arrow.r 3 arrow.r 1$ trên hệ tọa độ $(p, V)$ gồm: $(1 arrow.r 2)$ là đoạn thẳng song song $O V$ ($V_2 > V_1$), $(2 arrow.r 3)$ là đoạn hyperbol, $(3 arrow.r 1)$ là đoạn thẳng song song $O p$.
  ],
  type: "tf",
  statements: (
    [Quá trình $(1 arrow.r 2)$ là quá trình đẳng áp, thể tích khí tăng.],
    [Quá trình $(2 arrow.r 3)$ là quá trình đẳng nhiệt, áp suất và thể tích tỉ lệ nghịch.],
    [Quá trình $(3 arrow.r 1)$ là quá trình đẳng tích, áp suất giảm.],
    [Nhiệt độ của khối khí tại trạng thái (1) và trạng thái (2) bằng nhau ($T_1 = T_2$).],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [
    - a) *Đúng:* $(1 arrow.r 2)$ song song $O V$ nên $p = "const"$, $V$ tăng.
    - b) *Đúng:* $(2 arrow.r 3)$ là đường hyperbol $arrow.r.double$ quá trình đẳng nhiệt.
    - c) *Đúng:* $(3 arrow.r 1)$ song song $O p$ nên $V = "const"$, áp suất giảm từ $p_3$ về $p_1$.
    - d) *Sai:* Quá trình $(1 arrow.r 2)$ đẳng áp có $V_2 > V_1 arrow.r.double T_2 > T_1$.
  ],
)

// Câu 26
#vp-question(
  [
    Khối khí lý tưởng thực hiện chu trình $1 arrow.r 2 arrow.r 3 arrow.r 1$ trên đồ thị $(V, T)$ gồm: $(1 arrow.r 2)$ là đoạn thẳng có đường kéo dài đi qua gốc $O$ (với $T_2 > T_1$), $(2 arrow.r 3)$ là đoạn thẳng vuông góc với trục $O T$, $(3 arrow.r 1)$ là đoạn thẳng vuông góc với trục $O V$.
  ],
  type: "tf",
  statements: (
    [Quá trình $(1 arrow.r 2)$ là quá trình đẳng áp.],
    [Quá trình $(2 arrow.r 3)$ là quá trình đẳng nhiệt.],
    [Quá trình $(3 arrow.r 1)$ là quá trình đẳng tích.],
    [Áp suất ở trạng thái (3) lớn hơn áp suất ở trạng thái (2) ($p_3 > p_2$).],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "Đ"),
  sol: [
    - a) *Đúng:* Đường thẳng kéo dài qua gốc $O$ trong hệ $(V, T)$ là đường đẳng áp.
    - b) *Đúng:* Vuông góc $O T arrow.r.double T = "const"$ (đẳng nhiệt).
    - c) *Đúng:* Vuông góc $O V arrow.r.double V = "const"$ (đẳng tích).
    - d) *Đúng:* Vì $T_2 > T_1$ nên $V_2 > V_1 = V_3$. Trong quá trình đẳng nhiệt $(2 arrow.r 3)$, do $V_3 < V_2$ nên $p_3 > p_2$.
  ],
)

// Câu 27
#vp-question(
  [
    Một lượng khí lý tưởng thực hiện chu trình biến đổi trạng thái $1 arrow.r 2 arrow.r 3 arrow.r 1$ trên hệ tọa độ $(p, T)$ gồm: $(1 arrow.r 2)$ là đoạn thẳng song song với trục $O T$ (với $T_2 > T_1$), $(2 arrow.r 3)$ là đoạn thẳng có đường kéo dài đi qua gốc $O$, $(3 arrow.r 1)$ là đoạn thẳng song song với trục $O p$.
  ],
  type: "tf",
  statements: (
    [Quá trình $(1 arrow.r 2)$ là quá trình đẳng áp.],
    [Quá trình $(2 arrow.r 3)$ là quá trình đẳng tích.],
    [Quá trình $(3 arrow.r 1)$ là quá trình đẳng nhiệt.],
    [Thể tích ở trạng thái (2) lớn hơn thể tích ở trạng thái (1) ($V_2 > V_1$).],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "Đ"),
  sol: [
    - a) *Đúng:* Đoạn thẳng song song $O T$ trong hệ $(p, T)$ có $p = "const"$ nên là quá trình đẳng áp.
    - b) *Đúng:* Đoạn thẳng có đường kéo dài đi qua gốc $O$ trong hệ $(p, T)$ là đường đẳng tích ($V = "const"$).
    - c) *Đúng:* Đoạn thẳng song song $O p$ (vuông góc $O T$) trong hệ $(p, T)$ có $T = "const"$ nên là quá trình đẳng nhiệt.
    - d) *Đúng:* Từ $(1) arrow.r (2)$ là quá trình đẳng áp với $T_2 > T_1$ nên $V_2 > V_1$.
  ],
)

= Chủ đề 8. Ứng dụng thực tế, cơ học bình chứa và an toàn chất khí

// Câu 28
#vp-question(
  [
    Thiết bị lặn Scuba dùng cho người thợ lặn dưới biển.
  ],
  type: "tf",
  statements: (
    [Khi thợ lặn lặn sâu xuống nước, áp suất do cột nước tác dụng lên người thợ lặn tăng lên theo độ sâu ($p = p_0 + rho g h$).],
    [Bọt khí do thợ lặn thở ra khi di chuyển từ độ sâu $25 thin "m"$ lên mặt nước sẽ bị thu nhỏ kích thước lại.],
    [Bình khí nén Scuba chứa không khí ở áp suất rất cao ($200 thin "atm"$); van giảm áp có nhiệm vụ hạ áp suất khí ra bằng với áp suất môi trường xung quanh để thợ lặn hít thở dễ dàng.],
    [Nếu thợ lặn nín thở khi ngoi lên mặt nước quá nhanh, không khí trong phổi nở mạnh theo định luật Boyle có thể làm tổn thương phế nang.],
  ),
  ans-tf: ("Đ", "S", "Đ", "Đ"),
  sol: [
    - a) *Đúng:* Áp suất thủy tĩnh $p = p_0 + rho g h$.
    - b) *Sai:* Khi nổi lên, áp suất giảm nên bọt khí phải *nở to ra*.
    - c) *Đúng:* Nguyên lý van giảm áp thiết bị Scuba.
    - d) *Đúng:* Tai biến lặn biển khi nín thở ngoi lên quá nhanh.
  ],
)

// Câu 29
#vp-question(
  [
    Hệ thống pit-tông - xilanh khí nén giảm xóc (nhún hơi) sử dụng trong ghế tựa ô tô hoặc xe máy.
  ],
  type: "tf",
  statements: (
    [Hoạt động của xilanh giảm xóc khí nén dựa trên tính dễ nén của chất khí.],
    [Khi người ngồi lên ghế, lực nén làm pit-tông dịch chuyển xuống, nén khối khí lại làm thể tích khí giảm và áp suất khí tăng lên cân bằng với trọng lượng người ngồi.],
    [Khối khí bị nén đóng vai trò như một lò xo có độ cứng biến đổi, giúp hấp thụ chấn động êm ái.],
    [Quá trình nén khí diễn ra rất nhanh khi đi qua gờ giảm tốc có thể coi chính xác tuyệt đối là quá trình đẳng nhiệt.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [
    - a) *Đúng:* Chất khí dễ nén nên được ứng dụng làm bộ phận giảm xóc.
    - b) *Đúng:* Nén khí làm thể tích giảm, áp suất tăng tạo lực đàn hồi cân bằng.
    - c) *Đúng:* Khí nén đóng vai trò lò xo khí có độ cứng biến thiên.
    - d) *Sai:* Nén nhanh khi qua gờ giảm tốc chưa kịp trao đổi nhiệt với môi trường nên gần với quá trình đoạn nhiệt hơn là đẳng nhiệt.
  ],
)

// Câu 30
#vp-question(
  [
    Quy tắc an toàn khi lưu trữ và sử dụng các bình chứa khí nén (bình gas LPG, bình oxy y tế, bình chữa cháy).
  ],
  type: "tf",
  statements: (
    [Không được để các bình khí nén gần nguồn nhiệt cao hoặc dưới ánh nắng gay gắt vì nhiệt độ tăng làm áp suất khí trong bình tăng vượt ngưỡng chịu lực gây nổ bình.],
    [Các bình chứa khí nén thường được chế tạo bằng thép hợp kim dày, vỏ hình trụ tròn để chịu lực nén đều từ bên trong.],
    [Van an toàn trên bình chứa hoạt động theo nguyên lý tự động mở xả bớt khí khi áp suất bên trong bình vượt quá ngưỡng cho phép.],
    [Khi sử dụng hết khí trong bình gas thông thường, áp suất khí bên trong bình hoàn toàn bằng 0 (chân không tuyệt đối).],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [
    - a) *Đúng:* Tránh nguồn nhiệt gây tăng áp suất đẳng tích làm nổ bình.
    - b) *Đúng:* Kết cấu vỏ chịu lực hình trụ giảm tập trung ứng suất.
    - c) *Đúng:* Van an toàn tự động xả áp khi quá áp.
    - d) *Sai:* Khi khí trong bình không tự phun ra được nữa thì áp suất trong bình giảm về cân bằng với áp suất khí quyển bên ngoài ($1 thin "atm"$), không phải chân không tuyệt đối.
  ],
)

#if co-loi-giai [
  #v(14pt)
  = Bảng đáp án tổng hợp (30 câu lớn — 120 lệnh hỏi)

  #align(center)[
    #text(size: 10.5pt)[
      #table(
        columns: (32pt, 18pt, 18pt, 18pt, 18pt, 8pt, 32pt, 18pt, 18pt, 18pt, 18pt, 8pt, 32pt, 18pt, 18pt, 18pt, 18pt),
        align: center + horizon,
        stroke: 0.5pt + rgb("#cbd5e1"),
        fill: (col, row) => if row == 0 { rgb("#e0f2fe") } else if col in (5, 11) { rgb("#f1f5f9") } else { none },
        [*Câu*],
        [*a*],
        [*b*],
        [*c*],
        [*d*],
        [],
        [*Câu*],
        [*a*],
        [*b*],
        [*c*],
        [*d*],
        [],
        [*Câu*],
        [*a*],
        [*b*],
        [*c*],
        [*d*],

        [*1*], [Đ], [S], [Đ], [S], [], [*11*], [Đ], [Đ], [S], [S], [], [*21*], [Đ], [Đ], [Đ], [Đ],

        [*2*], [Đ], [Đ], [S], [Đ], [], [*12*], [Đ], [Đ], [Đ], [Đ], [], [*22*], [Đ], [Đ], [Đ], [S],

        [*3*], [S], [Đ], [Đ], [S], [], [*13*], [Đ], [Đ], [S], [Đ], [], [*23*], [Đ], [Đ], [Đ], [S],

        [*4*], [S], [Đ], [Đ], [Đ], [], [*14*], [Đ], [Đ], [Đ], [S], [], [*24*], [Đ], [Đ], [Đ], [S],

        [*5*], [Đ], [Đ], [S], [S], [], [*15*], [Đ], [Đ], [Đ], [S], [], [*25*], [Đ], [Đ], [Đ], [S],

        [*6*], [Đ], [Đ], [S], [Đ], [], [*16*], [Đ], [Đ], [Đ], [S], [], [*26*], [Đ], [Đ], [Đ], [Đ],

        [*7*], [Đ], [Đ], [Đ], [S], [], [*17*], [Đ], [Đ], [Đ], [Đ], [], [*27*], [Đ], [Đ], [Đ], [Đ],

        [*8*], [Đ], [Đ], [Đ], [S], [], [*18*], [Đ], [Đ], [Đ], [S], [], [*28*], [Đ], [S], [Đ], [Đ],

        [*9*], [Đ], [Đ], [Đ], [S], [], [*19*], [Đ], [Đ], [Đ], [S], [], [*29*], [Đ], [Đ], [Đ], [S],

        [*10*], [Đ], [Đ], [S], [S], [], [*20*], [S], [Đ], [S], [Đ], [], [*30*], [Đ], [Đ], [Đ], [S],
      )
    ]
  ]
]


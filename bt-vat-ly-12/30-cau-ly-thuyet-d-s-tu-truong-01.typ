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
  chapter-label: "CHƯƠNG III",
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
  num: "2",
  title: "Chuyên đề Từ trường (Tập trung lý thuyết)",
  subtitle: "Trắc nghiệm Đúng / Sai (30 câu — 120 lệnh hỏi)",
)

= Chủ đề 1. Khái niệm từ trường và tương tác từ
#sbt-instructions[Xác định mỗi phát biểu a), b), c), d) là đúng hay sai.]

// Câu 1
#vp-question(
  [
    Từ trường là một dạng vật chất đặc biệt tồn tại trong không gian xung quanh dòng điện hoặc nam châm.
  ],
  type: "tf",
  statements: (
    [Từ trường tác dụng lực từ lên một nam châm hoặc một dòng điện khác đặt trong nó.],
    [Một điện tích đứng yên luôn sinh ra một từ trường đều xung quanh nó.],
    [Từ trường tác dụng lực từ lên mọi điện tích đặt trong lòng nó, không phụ thuộc vào trạng thái chuyển động hay đứng yên của điện tích.],
    [Môi trường vật chất tồn tại xung quanh một thanh nam châm đứng yên được gọi là từ trường.],
  ),
  ans-tf: ("Đ", "S", "S", "Đ"),
  sol: [
    - a) *Đúng:* Định nghĩa lực từ tác dụng lên nam châm hoặc dòng điện.
    - b) *Sai:* Điện tích đứng yên chỉ sinh ra điện trường tĩnh, không sinh ra từ trường.
    - c) *Sai:* Từ trường chỉ tác dụng lực Lorentz lên điện tích *chuyển động*.
    - d) *Đúng:* Khái niệm môi trường từ trường xung quanh nam châm.
  ],
)

// Câu 2
#vp-question(
  [
    Xét các hiện tượng tương tác giữa các vật mang điện và nam châm trong không gian.
  ],
  type: "tf",
  statements: (
    [Tương tác giữa hai điện tích đứng yên là tương tác từ.],
    [Tương tác giữa hai nam châm đứng yên, hoặc giữa một nam châm và một dòng điện mang bản chất là tương tác từ.],
    [Hai dòng điện thẳng không đổi đặt song song, cùng chiều thì hút nhau; ngược chiều thì đẩy nhau.],
    [Lực làm kim nam châm trong thí nghiệm Oersted bị lệch khi đóng khóa K cho dòng điện chạy qua dây dẫn là lực từ.],
  ),
  ans-tf: ("S", "Đ", "Đ", "Đ"),
  sol: [
    - a) *Sai:* Tương tác giữa 2 điện tích đứng yên là tương tác tĩnh điện (định luật Coulomb).
    - b) *Đúng:* Tương tác từ xảy ra giữa nam châm - nam châm, nam châm - dòng điện, hoặc dòng điện - dòng điện.
    - c) *Đúng:* Hai dòng điện song song cùng chiều hút nhau, ngược chiều đẩy nhau.
    - d) *Đúng:* Dòng điện tạo từ trường tác dụng lực từ làm lệch kim nam châm.
  ],
)

// Câu 3
#vp-question(
  [
    Bản chất của từ trường và tính chất đặc trưng cho tác dụng lực từ.
  ],
  type: "tf",
  statements: (
    [Cảm ứng từ $arrow(B)$ tại một điểm đặc trưng cho từ trường về mặt tác dụng lực tại điểm đó.],
    [Từ trường là trường lực chỉ tồn tại duy nhất xung quanh nam châm vĩnh cửu.],
    [Hai dòng điện mang điện tích đứng yên đặt gần nhau luôn đẩy nhau bằng lực từ.],
    [Đơn vị đo độ lớn cảm ứng từ trong hệ SI là Tesla ($"T"$).],
  ),
  ans-tf: ("Đ", "S", "S", "Đ"),
  sol: [
    - a) *Đúng:* Cảm ứng từ $arrow(B)$ đặc trưng cho tác dụng lực của từ trường tại điểm xét.
    - b) *Sai:* Từ trường còn tồn tại xung quanh dòng điện và hạt mang điện chuyển động.
    - c) *Sai:* Tương tác từ chỉ xảy ra với dòng điện (điện tích chuyển động).
    - d) *Đúng:* Đơn vị cảm ứng từ trong hệ SI là Tesla ($"T"$).
  ],
)

// Câu 4
#vp-question(
  [
    Xét bản chất từ tính của vật liệu và từ trường của các nguồn điện.
  ],
  type: "tf",
  statements: (
    [Một dây dẫn thẳng dài mang dòng điện không đổi tạo ra một từ trường đều xung quanh nó.],
    [Từ trường bên trong lòng một ống dây dẫn hình trụ dài có dòng điện chạy qua là từ trường đều.],
    [Cực Bắc của một nam châm hút thanh sắt chưa bị nhiễm từ, còn cực Nam của nam châm đó sẽ đẩy thanh sắt.],
    [Từ trường của một ống dây dài có dòng điện chạy qua có dạng tương tự từ trường của một nam châm thẳng.],
  ),
  ans-tf: ("S", "Đ", "S", "Đ"),
  sol: [
    - a) *Sai:* Dòng điện thẳng dài tạo từ trường xoáy giảm dần theo khoảng cách, không phải từ trường đều.
    - b) *Đúng:* Trong lòng ống dây dài có dòng điện, từ trường có độ lớn và hướng không đổi (từ trường đều).
    - c) *Sai:* Nam châm hút sắt chưa nhiễm từ ở *cả hai cực* (do hiện tượng nhiễm từ tạm thời).
    - d) *Đúng:* Các đường sức từ của ống dây tròn dài có dạng hệt như thanh nam châm thẳng.
  ],
)

= Chủ đề 2. Đường sức từ và vectơ cảm ứng từ

// Câu 5
#vp-question(
  [
    Đường sức từ là các đường cong mô tả trực quan từ trường trong không gian.
  ],
  type: "tf",
  statements: (
    [Tiếp tuyến tại mỗi điểm trên đường sức từ trùng với phương của vectơ cảm ứng từ $arrow(B)$ tại điểm đó.],
    [Phương của kim nam châm thử khi nằm cân bằng trong từ trường trùng với phương của vectơ cảm ứng từ $arrow(B)$ tại điểm đó.],
    [Chiều của đường sức từ tại một điểm là chiều từ cực Nam sang cực Bắc của kim nam châm thử đặt cân bằng tại điểm đó.],
    [Pháp tuyến tại mỗi điểm trên đường sức từ trùng với hướng của vectơ cảm ứng từ tại điểm đó.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [
    - a) *Đúng:* Tiếp tuyến tại mỗi điểm trên đường sức từ trùng phương với $arrow(B)$.
    - b) *Đúng:* Kim nam châm thử định hướng theo phương $arrow(B)$.
    - c) *Đúng:* Hướng đường sức từ đi từ cực Nam (S) sang cực Bắc (N) của kim nam châm thử.
    - d) *Sai:* Là *tiếp tuyến*, không phải *pháp tuyến*.
  ],
)

// Câu 6
#vp-question(
  [
    Các đặc điểm hình học và tính chất của đường sức từ.
  ],
  type: "tf",
  statements: (
    [Qua mỗi điểm trong không gian có từ trường, ta có thể vẽ được vô số đường sức từ cắt nhau.],
    [Các đường sức từ luôn là những đường cong kín hoặc vô hạn ở hai đầu.],
    [Ở ngoài thanh nam châm, các đường sức từ đi ra từ cực Bắc và đi vào cực Nam.],
    [Nơi nào từ trường mạnh hơn thì các đường sức từ ở đó được vẽ thưa hơn.],
  ),
  ans-tf: ("S", "Đ", "Đ", "S"),
  sol: [
    - a) *Sai:* Qua mỗi điểm chỉ vẽ được *một và chỉ một* đường sức từ (các đường sức không cắt nhau).
    - b) *Đúng:* Đường sức từ là các đường cong kín hoặc vô hạn ở hai đầu.
    - c) *Đúng:* Quy tắc "Vào Nam ra Bắc" ở ngoài thanh nam châm.
    - d) *Sai:* Từ trường mạnh thì đường sức từ vẽ *dày (mau)* hơn, không phải thưa hơn.
  ],
)

// Câu 7
#vp-question(
  [
    Đường sức từ của từ trường đều và từ trường dòng điện thẳng.
  ],
  type: "tf",
  statements: (
    [Các đường sức từ của một từ trường đều là các đường thẳng song song, cùng chiều và cách đều nhau.],
    [Mặt phẳng chứa các đường sức từ của dòng điện thẳng dài vuông góc với dây dẫn mang dòng điện.],
    [Chiều của các đường sức từ gây bởi dòng điện thẳng dài không phụ thuộc vào chiều của dòng điện.],
    [Để xác định chiều các đường sức từ của dòng điện thẳng dài, ta dùng quy tắc nắm bàn tay phải.],
  ),
  ans-tf: ("Đ", "Đ", "S", "Đ"),
  sol: [
    - a) *Đúng:* Định nghĩa về hình dạng đường sức từ trong từ trường đều.
    - b) *Đúng:* Mặt phẳng đường sức từ vuông góc với dây dẫn thẳng.
    - c) *Sai:* Chiều đường sức từ phụ thuộc chiều dòng điện (theo quy tắc nắm tay phải).
    - d) *Đúng:* Dùng quy tắc nắm bàn tay phải xác định chiều đường sức dòng điện thẳng.
  ],
)

// Câu 8
#vp-question(
  [
    Quy tắc xác định chiều vectơ cảm ứng từ $arrow(B)$ và các tính chất.
  ],
  type: "tf",
  statements: (
    [Khi cho hai nam châm có hai cực cùng tên đặt đối diện nhau, các đường sức từ ở khoảng giữa hai cực đẩy nhau và bị biến dạng.],
    [Độ lớn cảm ứng từ $B$ do dòng điện thẳng dài sinh ra tại một điểm trong không khí tỉ lệ nghịch với khoảng cách $r$ từ điểm đó đến dây dẫn.],
    [Vectơ cảm ứng từ $arrow(B)$ là đại lượng vô hướng, chỉ đặc trưng cho độ lớn của từ trường.],
    [Từ trường đều có độ lớn và hướng của vectơ cảm ứng từ $arrow(B)$ giống nhau tại mọi điểm trong vùng từ trường.],
  ),
  ans-tf: ("Đ", "Đ", "S", "Đ"),
  sol: [
    - a) *Đúng:* Khi hai cực cùng tên lại gần, các đường sức đẩy nhau và biến dạng.
    - b) *Đúng:* $B = 2 dot 10^(-7) frac(I, r) arrow.r.double B prop frac(1, r)$.
    - c) *Sai:* Vectơ cảm ứng từ $arrow(B)$ là đại lượng *vectơ* (có điểm đặt, phương, chiều, độ lớn).
    - d) *Đúng:* Tính chất từ trường đều.
  ],
)

= Chủ đề 3. Lực từ tác dụng lên đoạn dây dẫn (Định luật Ampere)

// Câu 9
#vp-question(
  [
    Lực từ tác dụng lên đoạn dây dẫn mang dòng điện đặt trong từ trường đều.
  ],
  type: "tf",
  statements: (
    [Phương của lực từ tác dụng lên đoạn dây dẫn mang dòng điện vuông góc với mặt phẳng chứa đoạn dây dẫn và vectơ cảm ứng từ $arrow(B)$.],
    [Quy tắc bàn tay trái dùng để xác định chiều của lực từ tác dụng lên đoạn dây dẫn mang dòng điện.],
    [Chiều từ cổ tay đến các ngón tay trong quy tắc bàn tay trái chỉ chiều của vectơ cảm ứng từ $arrow(B)$.],
    [Ngón tay cái choãi ra $90^degree$ trong quy tắc bàn tay trái chỉ chiều của lực từ tác dụng lên dây dẫn.],
  ),
  ans-tf: ("Đ", "Đ", "S", "Đ"),
  sol: [
    - a) *Đúng:* Lực từ $arrow(F) perp "mặt phẳng"("dây dẫn", arrow(B))$.
    - b) *Đúng:* Quy tắc bàn tay trái xác định chiều lực từ tác dụng lên dây mang dòng điện.
    - c) *Sai:* Chiều từ cổ tay đến ngón tay chỉ *chiều dòng điện $I$*.
    - d) *Đúng:* Ngón cái choãi ra $90^degree$ chỉ chiều lực từ $arrow(F)$.
  ],
)

// Câu 10
#vp-question(
  [
    Độ lớn của lực từ (Định luật Ampere) $F = B I L sin alpha$.
  ],
  type: "tf",
  statements: (
    [Góc $alpha$ trong công thức lực từ là góc hợp bởi chiều dòng điện $I$ và chiều của vectơ cảm ứng từ $arrow(B)$.],
    [Khi đoạn dây dẫn mang dòng điện đặt song song với các đường sức từ ($alpha = 0^degree$ hoặc $180^degree$), lực từ tác dụng lên đoạn dây có độ lớn cực đại.],
    [Khi đoạn dây dẫn mang dòng điện đặt vuông góc với các đường sức từ ($alpha = 90^degree$), lực từ tác dụng lên dây có độ lớn cực đại $F_max = B I L$.],
    [Nếu tăng cường độ dòng điện $I$ lên 2 lần thì lực từ tác dụng lên đoạn dây dẫn tăng lên 2 lần.],
  ),
  ans-tf: ("Đ", "S", "Đ", "Đ"),
  sol: [
    - a) *Đúng:* $alpha = (I, arrow(B))$.
    - b) *Sai:* Khi $alpha = 0^degree$ hoặc $180^degree$ thì $sin alpha = 0 arrow.r.double F = 0$ (không có lực từ).
    - c) *Đúng:* Khi $alpha = 90^degree arrow.r.double sin 90^degree = 1 arrow.r.double F_max = B I L$.
    - d) *Đúng:* $F prop I$ theo công thức $F = B I L sin alpha$.
  ],
)

// Câu 11
#vp-question(
  [
    Một khung dây dẫn kín mang dòng điện đặt trong từ trường đều.
  ],
  type: "tf",
  statements: (
    [Hai cạnh của khung dây nằm song song với các đường sức từ thì không chịu tác dụng của lực từ.],
    [Lực từ tác dụng lên hai cạnh đối diện của khung dây phẳng (đặt vuông góc với trục quay) tạo thành một ngẫu lực từ làm khung dây quay.],
    [Lực từ tác dụng lên khung dây luôn có xu hướng làm tăng diện tích của khung dây khi đặt khung trong từ trường.],
    [Mômen lực từ tác dụng lên khung dây tỉ lệ thuận với diện tích $S$ của khung dây và cường độ dòng điện $I$.],
  ),
  ans-tf: ("Đ", "Đ", "S", "Đ"),
  sol: [
    - a) *Đúng:* $I thin parallel thin arrow(B) arrow.r.double alpha = 0^degree arrow.r.double F = 0$.
    - b) *Đúng:* Hai cạnh vuông góc có dòng điện ngược chiều tạo ngẫu lực làm quay khung.
    - c) *Sai:* Tùy thuộc vào chiều dòng điện, lực từ có thể nén hoặc giãn khung, không phải luôn làm tăng diện tích.
    - d) *Đúng:* Mômen lực từ $M = N B I S sin theta prop I dot S$.
  ],
)

// Câu 12
#vp-question(
  [
    Định nghĩa đơn vị Tesla ($"T"$) và các tính chất lực từ.
  ],
  type: "tf",
  statements: (
    [Một Tesla ($1 thin "T"$) là độ lớn cảm ứng từ của từ trường đều tác dụng lực $1 thin "N"$ lên mỗi mét chiều dài đoạn dây mang dòng điện $1 thin "A"$ đặt vuông góc với đường sức từ.],
    [Chiều của lực từ tác dụng lên đoạn dây dẫn phụ thuộc vào chiều dòng điện và chiều của từ trường.],
    [Nếu đổi chiều dòng điện đồng thời đổi chiều từ trường thì chiều của lực từ tác dụng lên đoạn dây dẫn bị đổi chiều.],
    [Đơn vị của lực từ trong hệ SI là Newton ($"N"$).],
  ),
  ans-tf: ("Đ", "Đ", "S", "Đ"),
  sol: [
    - a) *Đúng:* Định nghĩa độ lớn cảm ứng từ $1 thin "T" = frac(1 thin "N", 1 thin "A" dot 1 thin "m")$.
    - b) *Đúng:* Theo quy tắc bàn tay trái.
    - c) *Sai:* Đổi chiều cả $I$ lẫn $arrow(B)$ thì chiều lực từ $arrow(F)$ *không đổi* (đổi chiều hai lần).
    - d) *Đúng:* Đơn vị lực từ là Newton ($"N"$).
  ],
)

= Chủ đề 4. Hạt mang điện chuyển động trong từ trường và lực Lorentz

// Câu 13
#vp-question(
  [
    Lực Lorentz là lực từ tác dụng lên một hạt mang điện chuyển động trong từ trường.
  ],
  type: "tf",
  statements: (
    [Độ lớn lực Lorentz tác dụng lên hạt điện tích $q$ chuyển động với vận tốc $arrow(v)$ trong từ trường $arrow(B)$ là $f = |q| v B sin alpha$.],
    [Phương của lực Lorentz vuông góc với vectơ vận tốc $arrow(v)$ nhưng song song với vectơ cảm ứng từ $arrow(B)$.],
    [Lực Lorentz chỉ tác dụng lên các điện tích chuyển động, không tác dụng lên điện tích đứng yên.],
    [Do lực Lorentz luôn vuông góc với vận tốc $arrow(v)$ nên công của lực Lorentz thực hiện lên hạt điện tích bằng 0.],
  ),
  ans-tf: ("Đ", "S", "Đ", "Đ"),
  sol: [
    - a) *Đúng:* Công thức độ lớn lực Lorentz.
    - b) *Sai:* Lực Lorentz vuông góc với *cả* $arrow(v)$ và $arrow(B)$.
    - c) *Đúng:* Điện tích đứng yên ($v = 0 arrow.r.double f = 0$) không chịu lực Lorentz.
    - d) *Đúng:* $arrow(f) perp arrow(v) arrow.r.double A = f dot s dot cos 90^degree = 0$.
  ],
)

// Câu 14
#vp-question(
  [
    Chuyển động của hạt mang điện trong từ trường đều khi $arrow(v) perp arrow(B)$.
  ],
  type: "tf",
  statements: (
    [Khi hạt điện tích bay vào từ trường đều theo phương vuông góc với đường sức từ, lực Lorentz đóng vai trò là lực hướng tâm.],
    [Quỹ đạo chuyển động của hạt điện tích trong từ trường đều ($arrow(v) perp arrow(B)$) là một đường parabol.],
    [Tốc độ và động năng của hạt điện tích biến đổi liên tục trong suốt quá trình chuyển động trong từ trường đều.],
    [Bán kính quỹ đạo tròn của hạt điện tích $r = frac(m v, |q| B)$ tỉ lệ thuận với khối lượng $m$ và vận tốc $v$ của hạt.],
  ),
  ans-tf: ("Đ", "S", "S", "Đ"),
  sol: [
    - a) *Đúng:* Lực Lorentz hướng về tâm quay đóng vai trò lực hướng tâm.
    - b) *Sai:* Quỹ đạo là *đường tròn*, không phải parabol.
    - c) *Sai:* Tốc độ và động năng *không đổi* vì lực Lorentz không thực hiện công.
    - d) *Đúng:* $r = frac(m v, |q| B) arrow.r.double r prop m dot v$.
  ],
)

// Câu 15
#vp-question(
  [
    Máy gia tốc Cyclotron và ứng dụng của lực Lorentz.
  ],
  type: "tf",
  statements: (
    [Máy Cyclotron kết hợp điện trường đều (để tăng tốc hạt) và từ trường đều (để bẻ cong quỹ đạo hạt).],
    [Từ trường trong máy Cyclotron thực hiện công làm tăng động năng của hạt điện tích.],
    [Chu kỳ quay của hạt điện tích trong từ trường đều $T = frac(2 pi m, |q| B)$ không phụ thuộc vào bán kính quỹ đạo $r$ và tốc độ $v$ của hạt.],
    [Khi hạt tăng tốc, bán kính quỹ đạo tròn của hạt trong lòng máy Cyclotron tăng dần theo tốc độ $v$.],
  ),
  ans-tf: ("Đ", "S", "Đ", "Đ"),
  sol: [
    - a) *Đúng:* Nguyên lý hoạt động máy Cyclotron.
    - b) *Sai:* Từ trường chỉ bẻ cong quỹ đạo; *điện trường* giữa hai hộp D mới làm tăng động năng.
    - c) *Đúng:* $T = frac(2 pi m, |q| B)$ độc lập với $v$ và $r$.
    - d) *Đúng:* $r = frac(m v, |q| B) prop v$.
  ],
)

= Chủ đề 5. Từ thông và hiện tượng cảm ứng điện từ

// Câu 16
#vp-question(
  [
    Khái niệm từ thông $Phi$ gửi qua một diện tích $S$.
  ],
  type: "tf",
  statements: (
    [Biểu thức tính từ thông qua mạch kín diện tích $S$ gồm $N$ vòng dây là $Phi = N B S cos alpha$.],
    [Góc $alpha$ trong công thức từ thông là góc hợp bởi vectơ cảm ứng từ $arrow(B)$ và mặt phẳng của khung dây.],
    [Khi mặt phẳng khung dây vuông góc với các đường sức từ ($alpha = 0^degree$ hoặc $180^degree$), từ thông qua khung dây đạt giá trị cực đại về độ lớn $|Phi|_max = N B S$.],
    [Đơn vị đo từ thông trong hệ SI là Weber ($"Wb"$).],
  ),
  ans-tf: ("Đ", "S", "Đ", "Đ"),
  sol: [
    - a) *Đúng:* Biểu thức tính từ thông qua $N$ vòng dây.
    - b) *Sai:* Góc $alpha$ là góc giữa $arrow(B)$ và *pháp tuyến* $arrow(n)$ của mặt phẳng khung dây.
    - c) *Đúng:* $arrow(B) perp "mặt phẳng khung" arrow.r.double arrow(B) thin parallel thin arrow(n) arrow.r.double alpha = 0^degree arrow.r.double cos 0^degree = 1 arrow.r.double Phi_max = N B S$.
    - d) *Đúng:* Đơn vị từ thông là Weber ($"Wb"$).
  ],
)

// Câu 17
#vp-question(
  [
    Đặc điểm và đại lượng liên quan đến từ thông.
  ],
  type: "tf",
  statements: (
    [Từ thông là một đại lượng đại số, có thể mang giá trị dương, âm hoặc bằng 0.],
    [Khi mặt phẳng khung dây song song với các đường sức từ ($alpha = 90^degree$), từ thông gửi qua khung dây bằng 0.],
    [Đơn vị $1 thin "Wb"$ tương đương với $1 thin "T" dot "m"^2$.],
    [Từ thông qua một khung dây kín tỉ lệ nghịch với diện tích $S$ của khung dây đó.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [
    - a) *Đúng:* Vì $cos alpha$ nhận giá trị trong $[-1; 1]$ nên $Phi$ có thể dương, âm hoặc bằng 0.
    - b) *Đúng:* Khung song song $arrow(B) arrow.r.double arrow(n) perp arrow(B) arrow.r.double alpha = 90^degree arrow.r.double Phi = 0$.
    - c) *Đúng:* $1 thin "Wb" = 1 thin "T" dot "m"^2$.
    - d) *Sai:* $Phi prop S$, từ thông tỉ lệ *thuận* với diện tích $S$.
  ],
)

// Câu 18
#vp-question(
  [
    Hiện tượng cảm ứng điện từ là hiện tượng xuất hiện dòng điện cảm ứng trong mạch kín.
  ],
  type: "tf",
  statements: (
    [Dòng điện cảm ứng xuất hiện trong mạch kín khi và chỉ khi từ thông qua mạch kín đó biến thiên theo thời gian.],
    [Khi cho nam châm chuyển động lại gần một cuộn dây kín, từ thông qua cuộn dây tăng làm xuất hiện dòng điện cảm ứng trong cuộn dây.],
    [Khi giữ nam châm và cuộn dây đứng yên tương đối với nhau, dòng điện cảm ứng trong cuộn dây đạt giá trị cực đại.],
    [Hiện tượng cảm ứng điện từ là cơ sở vật lí để chế tạo máy phát điện xoay chiều và máy biến áp.],
  ),
  ans-tf: ("Đ", "Đ", "S", "Đ"),
  sol: [
    - a) *Đúng:* Điều kiện xuất hiện dòng điện cảm ứng là từ thông biến thiên.
    - b) *Đúng:* Nam châm lại gần làm tăng từ trường qua cuộn dây $arrow.r.double Phi$ tăng $arrow.r.double$ xuất hiện dòng cảm ứng.
    - c) *Sai:* Khi đứng yên, từ thông không biến thiên ($frac(Delta Phi, Delta t) = 0$) nên dòng cảm ứng bằng 0.
    - d) *Đúng:* Ứng dụng hiện tượng cảm ứng điện từ.
  ],
)

// Câu 19
#vp-question(
  [
    Thí nghiệm cảm ứng điện từ của Faraday.
  ],
  type: "tf",
  statements: (
    [Đưa thanh nam châm ra xa cuộn dây kín làm từ thông qua cuộn dây giảm, trong cuộn dây xuất hiện dòng điện cảm ứng.],
    [Tốc độ dịch chuyển nam châm càng nhanh thì từ thông biến thiên càng nhanh, cường độ dòng điện cảm ứng xuất hiện càng lớn.],
    [Dòng điện cảm ứng chỉ tồn tại trong khoảng thời gian từ thông qua mạch kín biến thiên.],
    [Ngược lại với dòng điện sinh ra từ trường, từ trường biến thiên có thể sinh ra dòng điện cảm ứng.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "Đ"),
  sol: [
    - a) *Đúng:* Nam châm ra xa làm $Phi$ giảm $arrow.r.double$ sinh dòng cảm ứng.
    - b) *Đúng:* Tốc độ biến thiên từ thông càng lớn thì $e_c$ và $I_c$ càng lớn.
    - c) *Đúng:* Dòng điện cảm ứng tắt ngay khi từ thông ngừng biến thiên.
    - d) *Đúng:* Tính chất hai chiều giữa điện và từ.
  ],
)

= Chủ đề 6. Định luật Lenz và suất điện động cảm ứng (Định luật Faraday)

// Câu 20
#vp-question(
  [
    Định luật Lenz về chiều dòng điện cảm ứng.
  ],
  type: "tf",
  statements: (
    [Dòng điện cảm ứng xuất hiện trong mạch kín có chiều sao cho từ trường do nó sinh ra chống lại sự biến thiên từ thông sinh ra nó.],
    [Khi từ thông qua mạch kín tăng, từ trường cảm ứng $arrow(B)_c$ sinh ra cùng chiều với từ trường ngoài $arrow(B)$.],
    [Khi từ thông qua mạch kín giảm, từ trường cảm ứng $arrow(B)_c$ sinh ra cùng chiều với từ trường ngoài $arrow(B)$.],
    [Định luật Lenz là hệ quả của định luật bảo toàn và chuyển hóa năng lượng trong hiện tượng cảm ứng điện từ.],
  ),
  ans-tf: ("Đ", "S", "Đ", "Đ"),
  sol: [
    - a) *Đúng:* Phát biểu chuẩn định luật Lenz.
    - b) *Sai:* Khi $Phi$ tăng, $arrow(B)_c$ phải *ngược chiều* $arrow(B)$ ngoài để chống lại sự tăng.
    - c) *Đúng:* Khi $Phi$ giảm, $arrow(B)_c$ phải *cùng chiều* $arrow(B)$ ngoài để bù đắp sự giảm.
    - d) *Đúng:* Định luật Lenz phản ánh bản chất bảo toàn năng lượng.
  ],
)

// Câu 21
#vp-question(
  [
    Chiều lực từ cản trở chuyển động theo định luật Lenz.
  ],
  type: "tf",
  statements: (
    [Khi đưa cực Bắc của nam châm lại gần một vòng dây kim loại kín, vòng dây bị nam châm đẩy ra xa.],
    [Khi rút cực Bắc của nam châm ra xa vòng dây kín, lực từ tác dụng lên vòng dây có tác dụng hút vòng dây theo nam châm.],
    [Lực từ tác dụng lên mạch kín chuyển động trong từ trường luôn có tác dụng chống lại chuyển động của mạch kín đó.],
    [Khi thả rơi một khung dây kim loại kín vào vùng từ trường, lực từ tổng hợp luôn hướng thẳng đứng xuống dưới thúc đẩy khung rơi nhanh hơn.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [
    - a) *Đúng:* Nam châm lại gần $arrow.r.double$ xuất hiện lực từ cản trở lại gần (đẩy ra).
    - b) *Đúng:* Nam châm ra xa $arrow.r.double$ xuất hiện lực từ hút kéo lại để chống sự ra xa.
    - c) *Đúng:* Lực từ cảm ứng luôn có tác dụng chống lại nguyên nhân chuyển động sinh ra nó.
    - d) *Sai:* Lực từ tổng hợp có tác dụng cản trở chuyển động rơi (hướng lên trên).
  ],
)

// Câu 22
#vp-question(
  [
    Định luật Faraday về suất điện động cảm ứng.
  ],
  type: "tf",
  statements: (
    [Độ lớn suất điện động cảm ứng trong mạch kín tỉ lệ thuận với tốc độ biến thiên từ thông qua mạch kín đó.],
    [Biểu thức định luật Faraday có dạng $e_c = - frac(Delta Phi, Delta t)$, trong đó dấu trừ thể hiện định luật Lenz.],
    [Độ lớn suất điện động cảm ứng $e_c$ phụ thuộc vào điện trở $R$ của mạch kín.],
    [Đơn vị của suất điện động cảm ứng trong hệ SI là Volt ($"V"$).],
  ),
  ans-tf: ("Đ", "Đ", "S", "Đ"),
  sol: [
    - a) *Đúng:* Phát biểu định luật Faraday.
    - b) *Đúng:* Công thức $e_c = - frac(Delta Phi, Delta t)$ thể hiện chiều định luật Lenz.
    - c) *Sai:* Suất điện động cảm ứng $e_c$ do tốc độ biến thiên từ thông quyết định, không phụ thuộc $R$ của mạch.
    - d) *Đúng:* Đơn vị suất điện động là Volt ($"V"$).
  ],
)

// Câu 23
#vp-question(
  [
    Suất điện động cảm ứng trên đoạn dây dẫn chuyển động cắt các đường sức từ.
  ],
  type: "tf",
  statements: (
    [Khi một đoạn dây dẫn chiều dài $L$ chuyển động với vận tốc $arrow(v)$ cắt các đường sức từ $arrow(B)$, trong dây xuất hiện suất điện động cảm ứng $e_c = B L v sin theta$.],
    [Đoạn dây dẫn chuyển động đóng vai trò như một nguồn điện với hai đầu dây là hai cực của nguồn điện.],
    [Công suất cơ học cần thiết để kéo thanh dẫn trượt đều trên hai ray bằng công suất tỏa nhiệt $P = I^2 R$ trên mạch.],
    [Nếu thanh dẫn chuyển động song song với các đường sức từ thì suất điện động cảm ứng xuất hiện trên thanh bằng 0.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "Đ"),
  sol: [
    - a) *Đúng:* Công thức suất điện động cảm ứng trên thanh chuyển động cắt đường sức từ.
    - b) *Đúng:* Thanh dẫn trượt đóng vai trò nguồn điện sinh ra dòng $I_c$.
    - c) *Đúng:* Bảo toàn năng lượng: công cơ học của lực kéo chuyển hóa thành nhiệt lượng tỏa ra.
    - d) *Đúng:* Khi trượt song song đường sức từ thì không cắt đường sức từ $arrow.r.double theta = 0^degree arrow.r.double e_c = 0$.
  ],
)

= Chủ đề 7. Dòng điện xoay chiều, động cơ điện và máy phát điện

// Câu 24
#vp-question(
  [
    Nguyên tắc tạo ra dòng điện xoay chiều.
  ],
  type: "tf",
  statements: (
    [Khi cho một khung dây quay đều quanh một trục nằm trong mặt phẳng khung, vuông góc với các đường sức từ của từ trường đều, trong khung xuất hiện suất điện động cảm ứng biến thiên điều hòa.],
    [Từ thông qua khung dây và suất điện động cảm ứng xuất hiện trong khung dây biến thiên cùng pha với nhau.],
    [Suất điện động cảm ứng cực đại xuất hiện trong khung dây tính theo công thức $E_0 = omega N B S = omega Phi_max$.],
    [Tần số của suất điện động xoay chiều sinh ra bằng tốc độ quay của khung dây (tính theo vòng/giây).],
  ),
  ans-tf: ("Đ", "S", "Đ", "Đ"),
  sol: [
    - a) *Đúng:* Nguyên tắc tạo ra dòng điện xoay chiều nhờ khung dây quay đều trong từ trường.
    - b) *Sai:* Từ thông $Phi = Phi_0 cos(omega t)$ thì suất điện động $e = - Phi' = E_0 sin(omega t)$, hai đại lượng *vuông pha* nhau ($90^degree$).
    - c) *Đúng:* $E_0 = omega N B S = omega Phi_0$.
    - d) *Đúng:* Tần số của dòng điện $f$ đúng bằng tần số quay $n$ của khung.
  ],
)

// Câu 25
#vp-question(
  [
    Cấu tạo và nguyên tắc hoạt động của máy phát điện xoay chiều.
  ],
  type: "tf",
  statements: (
    [Máy phát điện xoay chiều hoạt động dựa trên hiện tượng cảm ứng điện từ.],
    [Phần cảm của máy phát điện là bộ phận tạo ra từ trường (nam châm hoặc cuộn dây tạo từ trường).],
    [Phần ứng của máy phát điện là bộ phận tạo ra suất điện động cảm ứng (các cuộn dây).],
    [Rôto là phần đứng yên, stato là phần quay trong máy phát điện.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [
    - a) *Đúng:* Máy phát điện dựa trên hiện tượng cảm ứng điện từ.
    - b) *Đúng:* Phần cảm tạo từ trường.
    - c) *Đúng:* Phần ứng tạo ra suất điện động.
    - d) *Sai:* Rôto là phần *quay*, stato là phần *đứng yên*.
  ],
)

// Câu 26
#vp-question(
  [
    Động cơ điện một chiều và cổ góp bán khuyên.
  ],
  type: "tf",
  statements: (
    [Động cơ điện hoạt động dựa trên tác dụng của lực từ lên khung dây mang dòng điện đặt trong từ trường.],
    [Động cơ điện biến đổi điện năng thành cơ năng.],
    [Cổ góp hình bán khuyên có tác dụng tự động đổi chiều dòng điện qua khung sau mỗi nửa vòng quay để giữ chiều mômen lực từ không đổi.],
    [Khi tăng cường độ dòng điện $I$ chạy vào động cơ thì mômen lực từ tác dụng lên khung dây giảm đi.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [
    - a) *Đúng:* Nguyên tắc động cơ điện.
    - b) *Đúng:* Động cơ điện chuyển điện năng thành cơ năng.
    - c) *Đúng:* Tác dụng của cổ góp bán khuyên.
    - d) *Sai:* Tăng dòng điện $I$ làm tăng lực từ và tăng mômen lực từ $M = N B I S sin theta$.
  ],
)

// Câu 27
#vp-question(
  [
    Dòng điện Foucault (Fu-cô) và ứng dụng nhiệt / phanh từ tính.
  ],
  type: "tf",
  statements: (
    [Dòng điện Foucault là dòng điện cảm ứng xuất hiện trong khối kim loại khi khối kim loại chuyển động trong từ trường hoặc đặt trong từ trường biến thiên.],
    [Dòng điện Foucault tỏa nhiệt theo định luật Joule - Lenz, được ứng dụng trong bếp từ và lò nấu kim loại.],
    [Tác dụng cản trở chuyển động của dòng điện Foucault được ứng dụng để làm phanh từ tính trong xe điện và đĩa cân.],
    [Để giảm hao phí do dòng điện Foucault gây ra trong lõi máy biến áp, người ta dùng các lá thép kỹ thuật điện ghép cách điện với nhau.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "Đ"),
  sol: [
    - a) *Đúng:* Bản chất dòng Foucault trong khối kim loại.
    - b) *Đúng:* Ứng dụng nhiệt của dòng Foucault.
    - c) *Đúng:* Dùng trong phanh từ tính xe điện, tàu đệm từ.
    - d) *Đúng:* Biện pháp giảm hao phí Foucault bằng lá thép kỹ thuật điện ghép cách điện.
  ],
)

= Chủ đề 8. Ứng dụng thực tế, an toàn từ trường và từ trường Trái Đất

// Câu 28
#vp-question(
  [
    An toàn từ trường và thiết bị y tế.
  ],
  type: "tf",
  statements: (
    [Nơi có từ trường mạnh thường gắn biển cảnh báo hình tam giác viền đen nền vàng mang biểu tượng hình nam châm.],
    [Máy chụp cộng hưởng từ (MRI) sử dụng từ trường siêu dẫn cực mạnh để tạo hình ảnh chẩn đoán bệnh.],
    [Bệnh nhân mang máy tạo nhịp tim hoặc mảnh kim loại sắt từ trong cơ thể tuyệt đối không được vào phòng chụp MRI vì lực từ mạnh có thể làm xê dịch thiết bị.],
    [Máy kích thích từ xuyên sọ (TMS) sử dụng từ trường biến thiên nhanh để tạo ra dòng điện cảm ứng kích thích tế bào thần kinh não.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "Đ"),
  sol: [
    - a) *Đúng:* Biển cảnh báo an toàn từ trường mạnh.
    - b) *Đúng:* Nguyên lý máy chụp cộng hưởng từ MRI.
    - c) *Đúng:* An toàn y tế MRI.
    - d) *Đúng:* Nguyên lý kỹ thuật TMS kích thích từ xuyên sọ.
  ],
)

// Câu 29
#vp-question(
  [
    Phanh tái tạo năng lượng trên xe điện và Dynamo xe đạp.
  ],
  type: "tf",
  statements: (
    [Khi xe điện thực hiện phanh tái tạo, động cơ điện chuyển sang hoạt động như một máy phát điện để nạp lại năng lượng cho pin.],
    [Lực từ tác dụng lên rôto trong chế độ phanh tái tạo có tác dụng cản trở chuyển động quay của bánh xe, tạo lực phanh.],
    [Dynamo xe đạp gồm một nam châm quay trước cuộn dây đứng yên để tạo dòng điện cảm ứng thắp sáng đèn.],
    [Khi người đi xe đạp đi chậm lại, tần số và giá trị hiệu dụng của suất điện động phát ra từ dynamo tăng lên.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [
    - a) *Đúng:* Phanh tái tạo thu hồi năng lượng cơ năng thành điện năng.
    - b) *Đúng:* Lực từ cảm ứng tạo lực hãm phanh.
    - c) *Đúng:* Cấu tạo dynamo xe đạp.
    - d) *Sai:* Đi chậm lại thì tốc độ quay $omega$ giảm $arrow.r.double$ tần số $f$ và suất điện động $E$ *giảm*.
  ],
)

// Câu 30
#vp-question(
  [
    Từ trường Trái Đất và La bàn từ tính.
  ],
  type: "tf",
  statements: (
    [Trái Đất có từ trường, cực Bắc từ địa lí nằm gần cực Nam địa lí và cực Nam từ địa lí nằm gần cực Bắc địa lí.],
    [Kim la bàn luôn chỉ hướng Bắc - Nam từ tính nhờ tác dụng của thành phần nằm ngang của từ trường Trái Đất.],
    [Đặt kim la bàn gần một dây dẫn mang dòng điện lớn, kim la bàn bị lệch khỏi hướng Bắc - Nam ban đầu do chịu thêm lực từ của dòng điện.],
    [Từ trường Trái Đất có vai trò lá chắn bảo vệ sự sống trên Trái Đất khỏi các hạt điện tích năng lượng cao từ gió Mặt Trời.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "Đ"),
  sol: [
    - a) *Đúng:* Vị trí cực từ Trái Đất so với cực địa lí.
    - b) *Đúng:* Nguyên lý hoạt động la bàn.
    - c) *Đúng:* Lực từ dòng điện làm lệch kim la bàn.
    - d) *Đúng:* Từ trường Trái Đất làm lệch các hạt tích điện nguy hiểm từ vành đai bức xạ Mặt Trời.
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

        [*1*], [Đ], [S], [S], [Đ], [], [*11*], [Đ], [Đ], [S], [Đ], [], [*21*], [Đ], [Đ], [Đ], [S],

        [*2*], [S], [Đ], [Đ], [Đ], [], [*12*], [Đ], [Đ], [S], [Đ], [], [*22*], [Đ], [Đ], [S], [Đ],

        [*3*], [Đ], [S], [S], [Đ], [], [*13*], [Đ], [S], [Đ], [Đ], [], [*23*], [Đ], [Đ], [Đ], [Đ],

        [*4*], [S], [Đ], [S], [Đ], [], [*14*], [Đ], [S], [S], [Đ], [], [*24*], [Đ], [S], [Đ], [Đ],

        [*5*], [Đ], [Đ], [Đ], [S], [], [*15*], [Đ], [S], [Đ], [Đ], [], [*25*], [Đ], [Đ], [Đ], [S],

        [*6*], [S], [Đ], [Đ], [S], [], [*16*], [Đ], [S], [Đ], [Đ], [], [*26*], [Đ], [Đ], [Đ], [S],

        [*7*], [Đ], [Đ], [S], [Đ], [], [*17*], [Đ], [Đ], [Đ], [S], [], [*27*], [Đ], [Đ], [Đ], [Đ],

        [*8*], [Đ], [Đ], [S], [Đ], [], [*18*], [Đ], [Đ], [S], [Đ], [], [*28*], [Đ], [Đ], [Đ], [Đ],

        [*9*], [Đ], [Đ], [S], [Đ], [], [*19*], [Đ], [Đ], [Đ], [Đ], [], [*29*], [Đ], [Đ], [Đ], [S],

        [*10*], [Đ], [S], [Đ], [Đ], [], [*20*], [Đ], [S], [Đ], [Đ], [], [*30*], [Đ], [Đ], [Đ], [Đ],
      )
    ]
  ]
]


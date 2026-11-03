#import "../vietphys.typ": *
#import "hinh-ve.typ": *

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
  num: "1",
  title: "Chuyên đề Từ trường và Cảm ứng điện từ",
  subtitle: "Trắc nghiệm Đúng / Sai (30 câu — 120 lệnh hỏi)",
)

= Chủ đề 1. Lực từ tác dụng lên đoạn dây dẫn và khung dây
#sbt-instructions[Xác định mỗi phát biểu a), b), c), d) là đúng hay sai.]

// Câu 1
#vp-question(
  [
    Một đoạn dây cáp thẳng dài $l = "0,05" thin "m"$ mang dòng điện không đổi $I = 2 thin "A"$ được đặt trong từ trường đều có độ lớn cảm ứng từ $B = "0,5" thin "T"$. Góc hợp bởi chiều dòng điện và vectơ cảm ứng từ $arrow(B)$ là $alpha$.
  ],
  type: "tf",
  statements: (
    [Lực từ tác dụng lên đoạn dây cáp đạt độ lớn cực đại khi đoạn dây được đặt song song với các đường sức từ.],
    [Khi đoạn dây cáp đặt vuông góc với các đường sức từ ($alpha = 90^degree$), độ lớn lực từ tác dụng lên dây là $"0,05" thin "N"$.],
    [Khi góc $alpha = 30^degree$, lực từ tác dụng lên đoạn dây có độ lớn bằng $"0,025" thin "N"$.],
    [Nếu cho đoạn dây quay sao cho góc $alpha$ tăng từ $0^degree$ đến $90^degree$ thì độ lớn lực từ tác dụng lên dây giảm dần.],
  ),
  ans-tf: ("S", "Đ", "Đ", "S"),
  sol: [
    Công thức tính lực từ tác dụng lên đoạn dòng điện: $F = B I l sin alpha$.
    - a) *Sai:* Khi dây đặt song song với các đường sức từ ($alpha = 0^degree$ hoặc $180^degree$), ta có $sin alpha = 0 arrow.r.double F = 0$. Lực từ đạt cực đại khi dây vuông góc với đường sức từ ($alpha = 90^degree$).
    - b) *Đúng:* $alpha = 90^degree arrow.r.double F = "0,5" times 2 times "0,05" times sin 90^degree = "0,05" thin "N"$.
    - c) *Đúng:* $alpha = 30^degree arrow.r.double F = "0,5" times 2 times "0,05" times sin 30^degree = "0,025" thin "N"$.
    - d) *Sai:* Khi $alpha$ tăng từ $0^degree$ đến $90^degree$ thì $sin alpha$ tăng từ 0 đến 1, do đó độ lớn lực từ $F$ tăng dần.
  ],
)

// Câu 2
#vp-question(
  [
    Một đoạn dây dẫn cứng $M N$ dài $l = 50 thin "cm"$, khối lượng $m = 100 thin "g"$ được treo nằm ngang bằng hai sợi dây nhẹ, không giãn trong từ trường đều có các đường sức từ hướng thẳng đứng từ trên xuống với $B = "0,2" thin "T"$. Lấy $g = 10 thin "m/s"^2$. Cho dòng điện $I = 10 thin "A"$ chạy qua thanh $M N$.
  ],
  type: "tf",
  image: hinh-cau-02(),
  image-side: "right",
  image-ratio: 0.35,
  statements: (
    [Lực từ tác dụng lên đoạn dây $M N$ có phương nằm ngang và có độ lớn $F = "1,0" thin "N"$.],
    [Lực căng của mỗi sợi dây treo khi thanh $M N$ ở trạng thái cân bằng có độ lớn bằng $"1,0" thin "N"$.],
    [Trọng lực $arrow(P)$ và lực từ $arrow(F)$ vuông góc với nhau, làm dây treo lệch một góc $45^degree$ so với phương thẳng đứng.],
    [Để dây treo lệch góc $60^degree$ so với phương thẳng đứng thì cường độ dòng điện chạy qua dây $M N$ phải có giá trị xấp xỉ $"17,3" thin "A"$.],
  ),
  ans-tf: ("Đ", "S", "Đ", "Đ"),
  sol: [
    - a) *Đúng:* Do dòng điện nằm ngang và $arrow(B)$ thẳng đứng nên lực từ $arrow(F) = I (arrow(l) times arrow(B))$ có phương nằm ngang, vuông góc với thanh. Độ lớn: $F = B I l = "0,2" times 10 times "0,5" = "1,0" thin "N"$.
    - b) *Sai:* Trọng lực $P = m g = "0,10" times 10 = "1,0" thin "N"$. Hợp lực của trọng lực và lực từ: $F_"hl" = sqrt(P^2 + F^2) = sqrt(1^2 + 1^2) = sqrt(2) thin "N"$. Hai dây treo chịu đều tải nên mỗi dây có lực căng $T = frac(F_"hl", 2) = frac(sqrt(2), 2) approx "0,707" thin "N" eq.not "1,0" thin "N"$.
    - c) *Đúng:* Góc lệch của dây so với phương thẳng đứng: $tan theta = frac(F, P) = frac("1,0", "1,0") = 1 arrow.r.double theta = 45^degree$.
    - d) *Đúng:* Khi $theta' = 60^degree$, ta có $tan 60^degree = frac(F', P) = sqrt(3) arrow.r.double F' = P sqrt(3) approx "1,732" thin "N"$. Cường độ dòng điện cần thiết: $I' = frac(F', B l) = frac("1,732", "0,2" times "0,5") approx "17,32" thin "A" approx "17,3" thin "A"$.
  ],
)

// Câu 3
#vp-question(
  [
    Một khung dây dẫn hình tam giác vuông tại $A$ với $A M = 8 thin "cm"$, $A N = 6 thin "cm"$ mang dòng điện $I = 5 thin "A"$ được đặt cố định trong từ trường đều $B = 3 times 10^(-3) thin "T"$.
  ],
  type: "tf",
  image: hinh-cau-03(),
  image-side: "right",
  image-ratio: 0.25,
  statements: (
    [Lực từ tác dụng lên cạnh $A N$ của khung dây bằng $0 thin "N"$.],
    [Chiều dài cạnh huyền $M N$ của tam giác là $10 thin "cm"$.],
    [Lực từ tác dụng lên cạnh $A M$ có độ lớn bằng $"2,4" thin "mN"$.],
    [Độ lớn lực từ tác dụng lên cạnh $M N$ bằng $"1,2" thin "mN"$ và có phương vuông góc với mặt phẳng tam giác $A M N$.],
  ),
  ans-tf: ("Đ", "Đ", "S", "Đ"),
  sol: [
    - a) *Đúng:* Do $arrow(B) thin parallel thin A N$ nên góc $alpha = 0^degree arrow.r.double F_(A N) = B I (A N) sin 0^degree = 0$.
    - b) *Đúng:* $M N = sqrt(A M^2 + A N^2) = sqrt(8^2 + 6^2) = 10 thin "cm" = "0,10" thin "m"$.
    - c) *Sai:* Vì $A M perp A N$ nên $A M perp arrow(B)$ ($alpha = 90^degree$). Lực từ tác dụng lên cạnh $A M$: $F_(A M) = B I (A M) = 3 times 10^(-3) times 5 times "0,08" = "1,2" times 10^(-3) thin "N" = "1,2" thin "mN" eq.not "2,4" thin "mN"$.
    - d) *Đúng:* Cạnh $M N$ hợp với $arrow(B)$ góc $alpha$, với $sin alpha = frac(A M, M N) = frac(8, 10) = "0,8"$. Do đó: $F_(M N) = B I (M N) sin alpha = 3 times 10^(-3) times 5 times "0,10" times "0,8" = "1,2" times 10^(-3) thin "N" = "1,2" thin "mN"$. Theo quy tắc bàn tay trái, lực này vuông góc với mặt phẳng tam giác $A M N$.
  ],
)

// Câu 4
#vp-question(
  [
    Một khung dây kim loại hình vuông $M N P Q$ cạnh $a = 20 thin "cm"$ có dòng điện $I = 10 thin "A"$ chạy qua theo chiều $M N P Q$. Khung được đặt trong từ trường đều $B = "0,1" thin "T"$ có đường sức từ hướng thẳng đứng từ trên xuống. Khung có thể quay quanh trục nằm ngang $O O'$ đi qua trung điểm hai cạnh $M N$ và $P Q$.
  ],
  type: "tf",
  image: hinh-cau-04(),
  image-side: "right",
  image-ratio: 0.4,
  statements: (
    [Hai cạnh $N P$ và $Q M$ không chịu tác dụng của lực từ vì song song với các đường sức từ.],
    [Lực từ tác dụng lên cạnh $M N$ và cạnh $P Q$ tạo thành một ngẫu lực từ làm khung dây quay quanh trục $O O'$.],
    [Độ lớn lực từ tác dụng lên mỗi cạnh $M N$ và $P Q$ là $"0,4" thin "N"$.],
    [Độ lớn lực từ tổng hợp tác dụng lên toàn bộ khung dây khi khung nằm ngang bằng $0 thin "N"$.],
  ),
  ans-tf: ("Đ", "Đ", "S", "Đ"),
  sol: [
    - a) *Đúng:* Cạnh $N P$ và $Q M$ song song với đường sức từ thẳng đứng nên góc $alpha = 0^degree$ hoặc $180^degree$, do đó $F_(N P) = F_(Q M) = 0$.
    - b) *Đúng:* Dòng điện trên $M N$ và $P Q$ có chiều ngược nhau và cùng vuông góc với $arrow(B)$, sinh ra hai lực từ trực đối, song song, ngược chiều, tạo thành ngẫu lực làm khung quay quanh trục $O O'$.
    - c) *Sai:* Lực từ tác dụng lên mỗi cạnh: $F = B I a = "0,1" times 10 times "0,20" = "0,2" thin "N" eq.not "0,4" thin "N"$.
    - d) *Đúng:* Hai lực từ tác dụng lên $M N$ và $P Q$ có cùng độ lớn nhưng ngược chiều: $arrow(F)_"tổng" = arrow(F)_(M N) + arrow(F)_(P Q) = arrow(0)$, hợp lực tịnh tiến bằng 0 (ngẫu lực chỉ có tác dụng làm quay).
  ],
)

= Chủ đề 2. Thí nghiệm đo cảm ứng từ B bằng cân điện tử và lực kế

// Câu 5
#vp-question(
  [
    Một học sinh bố trí thí nghiệm đo cảm ứng từ $B$ giữa hai cực nam châm chữ U đặt trên cân điện tử. Một đoạn dây dẫn thẳng $A B = 10 thin "cm"$ được giữ cố định nằm ngang giữa hai cực từ. Ban đầu chưa có dòng điện, cân chỉ $m_0 = "500,92" thin "g"$. Khi cho dòng điện $I = "0,80" thin "A"$ chạy qua dây $A B$, số chỉ của cân giảm còn $m = "499,72" thin "g"$. Lấy $g = "9,8" thin "m/s"^2$.
  ],
  type: "tf",
  image: hinh-cau-05(),
  image-side: "right",
  image-ratio: 0.6,
  statements: (
    [Số chỉ của cân giảm chứng tỏ lực từ do nam châm tác dụng lên đoạn dây $A B$ có chiều hướng xuống dưới.],
    [Theo định luật III Newton, lực từ do đoạn dây $A B$ tác dụng ngược lại nam châm có độ lớn bằng lực từ tác dụng lên dây nhưng hướng thẳng đứng lên trên.],
    [Độ lớn lực từ tương tác giữa dây $A B$ và nam châm bằng $"1,176" times 10^(-2) thin "N"$.],
    [Độ lớn cảm ứng từ trong lòng nam châm đo được xấp xỉ $"0,294" thin "T"$ (hay $294 thin "mT"$).],
  ),
  ans-tf: ("S", "Đ", "Đ", "S"),
  sol: [
    - a) *Sai:* Số chỉ cân giảm nghĩa là áp lực của nam châm lên mặt cân giảm, chứng tỏ lực từ do đoạn dây tác dụng lên nam châm hướng lên trên. Theo định luật III Newton, lực từ do nam châm tác dụng lên dây $A B$ phải hướng xuống dưới. Tuy nhiên số chỉ cân giảm là do lực tác dụng lên nam châm hướng lên.
    - b) *Đúng:* Theo định luật III Newton, hai lực tương tác giữa nam châm và dòng điện trực đối nhau: cùng độ lớn, ngược chiều.
    - c) *Đúng:* Độ giảm khối lượng biểu kiến: $Delta m = m_0 - m = "500,92" - "499,72" = "1,20" thin "g" = "1,20" times 10^(-3) thin "kg"$. Độ lớn lực từ: $F = Delta m dot g = "1,20" times 10^(-3) times "9,8" = "0,01176" thin "N" = "1,176" times 10^(-2) thin "N"$.
    - d) *Sai:* Cảm ứng từ thực tế đo được là $B = frac(F, I l) = frac("0,01176", "0,80" times "0,10") = "0,147" thin "T" = 147 thin "mT" eq.not "0,294" thin "T"$.
  ],
)

// Câu 6
#vp-question(
  [
    Để xác định độ lớn cảm ứng từ $B$, một nhóm học sinh dùng lực kế điện tử có tích hợp nút trừ bì (TARE). Một khung dây hình chữ nhật quấn $N = 4$ vòng có cạnh dưới $l = 4 thin "cm"$ nằm ngang trong lòng nam châm. Chưa có dòng điện, nhấn nút TARE để số chỉ lực kế về 0. Khi cho dòng điện $I = "4,48" thin "A"$ chạy qua khung, lực kế chỉ $F_("đo") = "68,9" thin "mN"$.
  ],
  type: "tf",
  image: hinh-cau-06(),
  image-side: "right",
  image-ratio: 0.55,
  statements: (
    [Việc nhấn nút TARE có tác dụng triệt tiêu ảnh hưởng của trọng lực khung dây lên số chỉ lực kế.],
    [Tổng chiều dài các đoạn dây nằm ngang chịu tác dụng lực từ trong lòng nam châm là $L = 16 thin "cm"$ ($"0,16" thin "m"$).],
    [Lực từ tác dụng lên cạnh dưới của khung dây có độ lớn bằng $"68,9" thin "mN"$.],
    [Độ lớn cảm ứng từ trong lòng nam châm đo được từ thí nghiệm xấp xỉ $"0,192" thin "T"$ (hay $192 thin "mT"$).],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [
    - a) *Đúng:* Nút TARE đưa giá trị hiển thị về 0 tại thời điểm ban đầu, loại trừ hoàn toàn trọng lượng khung dây và giá đỡ khỏi phép đo.
    - b) *Đúng:* Khung dây có $N = 4$ vòng, mỗi vòng có cạnh dưới dài $l = 4 thin "cm"$ nằm trong từ trường nên tổng chiều dài chịu lực từ là $L = N dot l = 4 times 4 = 16 thin "cm" = "0,16" thin "m"$.
    - c) *Đúng:* Số chỉ hiển thị trên lực kế sau khi trừ bì chính là độ lớn lực từ tác dụng lên các cạnh dưới: $F = "68,9" thin "mN"$.
    - d) *Sai:* Cảm ứng từ đo được: $B = frac(F, I L) = frac("68,9" times 10^(-3), "4,48" times "0,16") approx "0,0961" thin "T" approx "96,1" thin "mT" eq.not "0,192" thin "T"$.
  ],
)

// Câu 7
#vp-question(
  [
    Một nhóm học sinh khảo sát mối liên hệ giữa lực từ $F$ và cường độ dòng điện $I$ bằng đòn cân lực từ (cân Ampere). Đoạn dây đặt trong từ trường đều có chiều dài $l = 10 thin "cm"$. Thu được bảng số liệu:
    #align(center)[
      #table(
        columns: (60pt, 50pt, 50pt, 50pt, 50pt),
        align: center + horizon,
        stroke: 0.5pt + rgb("#94a3b8"),
        fill: (col, row) => if row == 0 { rgb("#e0f2fe") } else { none },
        [*Lần đo*], [1], [2], [3], [4],
        [$I" (A)"$], [$"0,60"$], [$"1,30"$], [$"1,80"$], [$"2,30"$],
        [$F" (N)"$], [$"0,08"$], [$"0,17"$], [$"0,24"$], [$"0,31"$],
      )
    ]
  ],
  type: "tf",
  statements: (
    [Đòn cân phải được chỉnh thăng bằng nằm ngang trước mỗi lần đọc số chỉ lực từ.],
    [Bảng số liệu cho thấy lực từ $F$ tỉ lệ thuận với cường độ dòng điện $I$.],
    [Giá trị trung bình tỷ số $frac(F, I)$ thu được từ thí nghiệm xấp xỉ $"0,266" thin "N/A"$.],
    [Độ lớn cảm ứng từ $B$ giữa hai cực nam châm đo được từ thí nghiệm có giá trị trung bình xấp xỉ $"1,33" thin "T"$.],
  ),
  ans-tf: ("Đ", "Đ", "S", "Đ"),
  sol: [
    - a) *Đúng:* Chỉnh thăng bằng trước mỗi phép đo để đảm bảo đúng chiều dài cánh tay đòn và lực từ tác dụng theo phương vuông góc.
    - b) *Đúng:* Tỉ số $frac(F, I)$ qua các lần đo: $frac("0,08", "0,60") approx "0,133"$; $frac("0,17", "1,30") approx "0,131"$; $frac("0,24", "1,80") approx "0,133"$; $frac("0,31", "2,30") approx "0,135"$. Tỉ số gần như không đổi, chứng tỏ $F$ tỉ lệ thuận với $I$.
    - c) *Sai:* Tỉ số trung bình $overline((frac(F, I))) = frac("0,133" + "0,131" + "0,133" + "0,135", 4) approx "0,133" thin "N/A" eq.not "0,266" thin "N/A"$.
    - d) *Đúng:* Cảm ứng từ trung bình: $B = frac(overline(F slash I), l) = frac("0,133", "0,10") = "1,33" thin "T"$.
  ],
)

// Câu 8
#vp-question(
  [
    Một khung dây dẫn hình vuông cạnh $a = 10 thin "cm"$ gồm $N = 200$ vòng dây được treo thẳng đứng dưới đĩa bên phải của một đòn cân thăng bằng. Cạnh dưới của khung nằm ngang trong từ trường đều $B = "0,002" thin "T"$ của nam châm chữ U. Cho dòng điện $I = "0,5" thin "A"$ chạy qua khung dây làm đòn cân bị lệch. Lấy $g = 10 thin "m/s"^2$.
  ],
  type: "tf",
  image: hinh-cau-08(),
  image-side: "right",
  image-ratio: 0.55,
  statements: (
    [Tổng chiều dài chịu lực từ của cạnh dưới khung dây bằng $L_("tổng") = 20 thin "m"$.],
    [Độ lớn lực từ tác dụng lên cạnh dưới của khung dây bằng $"0,02" thin "N"$.],
    [Để đòn cân thăng bằng trở lại, cần thêm vào đĩa cân bên trái một quả cân có khối lượng $m = 2 thin "g"$.],
    [Nếu đổi chiều dòng điện $I$ và giữ nguyên độ lớn thì đòn cân vẫn nghiêng về phía cũ.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [
    - a) *Đúng:* $L_("tổng") = N dot a = 200 times "0,10" thin "m" = 20 thin "m"$.
    - b) *Đúng:* $F = B I L_("tổng") = "0,002" times "0,5" times 20 = "0,02" thin "N"$.
    - c) *Đúng:* Lực từ kéo cạnh dưới khung xuống dưới, muốn cân thăng bằng cần đặt thêm vào đĩa cân đối diện quả cân có trọng lượng $P = F arrow.r.double m = frac(F, g) = frac("0,02", 10) = "0,002" thin "kg" = 2 thin "g"$.
    - d) *Sai:* Khi đổi chiều dòng điện thì lực từ tác dụng lên khung dây sẽ đổi chiều (từ kéo xuống thành đẩy lên), do đó đòn cân sẽ nghiêng sang phía ngược lại.
  ],
)

= Chủ đề 3. Từ thông và hiện tượng cảm ứng điện từ

// Câu 9
#vp-question(
  [
    Một khung dây tròn bán kính $r = 10 thin "cm"$ gồm $N = 10$ vòng dây đặt trong từ trường đều $B = "0,4" thin "T"$. Mặt phẳng khung dây hợp với vectơ cảm ứng từ $arrow(B)$ một góc $60^degree$.
  ],
  type: "tf",
  image: hinh-cau-09(),
  image-side: "right",
  image-ratio: 0.42,
  statements: (
    [Góc $alpha$ giữa vectơ cảm ứng từ $arrow(B)$ và vectơ pháp tuyến $arrow(n)$ của khung dây bằng $30^degree$.],
    [Diện tích của mỗi vòng dây xấp xỉ $S = "3,14" times 10^(-2) thin "m"^2$.],
    [Từ thông gửi qua khung dây có giá trị xấp xỉ $Phi = "0,218" thin "Wb"$.],
    [Nếu quay khung dây sao cho mặt phẳng khung dây vuông góc với $arrow(B)$ thì từ thông qua khung dây đạt giá trị cực đại bằng $"0,252" thin "Wb"$.],
  ),
  ans-tf: ("Đ", "Đ", "S", "S"),
  sol: [
    - a) *Đúng:* Vectơ pháp tuyến $arrow(n)$ vuông góc với mặt phẳng khung dây nên góc giữa $arrow(B)$ và $arrow(n)$ là $alpha = 90^degree - 60^degree = 30^degree$.
    - b) *Đúng:* $S = pi r^2 = pi times ("0,10")^2 approx "0,0314" thin "m"^2 = "3,14" times 10^(-2) thin "m"^2$.
    - c) *Sai:* Từ thông qua $N$ vòng dây: $Phi = N B S cos alpha = 10 times "0,4" times "0,0314" times cos 30^degree approx "0,109" thin "Wb" eq.not "0,218" thin "Wb"$.
    - d) *Sai:* Khi mặt phẳng vuông góc với $arrow(B)$ thì $alpha = 0^degree$, từ thông cực đại là $Phi_max = N B S = 10 times "0,4" times "0,0314" approx "0,126" thin "Wb" eq.not "0,252" thin "Wb"$.
  ],
)

// Câu 10
#vp-question(
  [
    Xét thí nghiệm đưa thanh nam châm lại gần hoặc ra xa một cuộn dây kín nối với điện kế nhạy $G$.
  ],
  type: "tf",
  image: hinh-cau-10(),
  image-side: "right",
  image-ratio: 0.42,
  statements: (
    [Khi đưa cực Bắc của nam châm lại gần cuộn dây, từ thông qua cuộn dây tăng.],
    [Dòng điện cảm ứng xuất hiện trong cuộn dây sinh ra từ trường cảm ứng có chiều chống lại sự tăng của từ thông.],
    [Khi giữ nam châm đứng yên tương đối so với cuộn dây, kim điện kế bị lệch một góc không đổi.],
    [Rút nam châm ra xa cuộn dây với tốc độ càng nhanh thì độ lệch của kim điện kế càng lớn, chứng tỏ suất điện động cảm ứng tỉ lệ với tốc độ biến thiên từ thông.],
  ),
  ans-tf: ("Đ", "Đ", "S", "Đ"),
  sol: [
    - a) *Đúng:* Khi đưa nam châm lại gần, từ trường tại các vòng dây mạnh lên dẫn đến từ thông qua cuộn dây tăng.
    - b) *Đúng:* Theo định luật Lenz, dòng điện cảm ứng luôn có chiều sao cho từ trường do nó sinh ra chống lại nguyên nhân sinh ra nó (chống lại sự tăng từ thông).
    - c) *Sai:* Khi nam châm đứng yên so với cuộn dây, từ thông không biến thiên ($frac(Delta Phi, Delta t) = 0$), không có dòng điện cảm ứng nên kim điện kế chỉ vạch 0.
    - d) *Đúng:* Rút càng nhanh thì $|frac(Delta Phi, Delta t)|$ càng lớn, suất điện động cảm ứng $|e_c| = |frac(Delta Phi, Delta t)|$ càng lớn, dòng điện cảm ứng càng mạnh làm kim lệch càng nhiều.
  ],
)

// Câu 11
#vp-question(
  [
    Một khung dây dẫn hình chữ nhật $M N P Q$ diện tích $S = 50 thin "cm"^2$ có điện trở $R = "0,2" thin Omega$ chuyển động tịnh tiến sang phải đi vào vùng từ trường đều $B = "0,5" thin "T"$ vuông góc với mặt phẳng khung với vận tốc không đổi $v = 2 thin "m/s"$. Cạnh $M N = 10 thin "cm"$ đi vào từ trường trước.
  ],
  type: "tf",
  image: hinh-cau-11(),
  image-side: "right",
  image-ratio: 0.45,
  statements: (
    [Trong thời gian khung dây đang đi vào vùng từ trường, từ thông qua khung dây tăng dần.],
    [Dòng điện cảm ứng xuất hiện trong khung dây có chiều $M N P Q M$ (ngược chiều kim đồng hồ).],
    [Độ lớn suất điện động cảm ứng xuất hiện trong khung dây bằng $"0,2" thin "V"$.],
    [Cường độ dòng điện cảm ứng chạy trong khung dây bằng $"0,5" thin "A"$.],
  ),
  ans-tf: ("Đ", "Đ", "S", "Đ"),
  sol: [
    - a) *Đúng:* Khi khung tiến vào từ trường, diện tích phần khung nằm trong từ trường tăng dần, do đó từ thông gửi qua khung tăng dần.
    - b) *Đúng:* Từ thông tăng nên từ trường cảm ứng $arrow(B)_c$ ngược chiều với $arrow(B)$ ngoài (hướng ra ngoài). Áp dụng quy tắc nắm tay phải, chiều dòng điện cảm ứng ngược chiều kim đồng hồ ($M N P Q M$).
    - c) *Sai:* Suất điện động cảm ứng xuất hiện do cạnh $M N$ quét từ trường: $e_c = B dot (M N) dot v = "0,5" times "0,10" times 2 = "0,1" thin "V" eq.not "0,2" thin "V"$.
    - d) *Đúng:* Cường độ dòng điện cảm ứng: $I_c = frac(e_c, R) = frac("0,1", "0,2") = "0,5" thin "A"$.
  ],
)

// Câu 12
#vp-question(
  [
    Một khung dây vuông $M N P Q$ cạnh $a = 10 thin "cm"$ rơi tự do thẳng đứng trong mặt phẳng thẳng đứng $x O y$ đi vào vùng từ trường có độ lớn cảm ứng từ biến thiên theo tọa độ $x$ thẳng đứng hướng xuống theo quy luật $B = alpha x$ với $alpha = 2 thin "T/m"$.
  ],
  type: "tf",
  image: hinh-cau-12(),
  image-side: "right",
  image-ratio: 0.42,
  statements: (
    [Khi khung rơi xuống, cảm ứng từ trung bình trên diện tích khung tăng nên từ thông qua khung tăng theo thời gian.],
    [Theo định luật Lenz, dòng điện cảm ứng trong khung dây có chiều $M Q P N M$ (ngược chiều kim đồng hồ).],
    [Lực từ tổng hợp tác dụng lên khung dây có hướng thẳng đứng xuống dưới cùng chiều chuyển động rơi.],
    [Độ lớn suất điện động cảm ứng xuất hiện trong khung dây khi khung chuyển động với tốc độ $v$ được tính theo công thức $e_c = alpha a^2 v$.],
  ),
  ans-tf: ("Đ", "Đ", "S", "Đ"),
  sol: [
    - a) *Đúng:* Càng xuống sâu, tọa độ $x$ càng lớn nên cảm ứng từ $B$ càng tăng, dẫn tới từ thông qua diện tích khung tăng theo thời gian.
    - b) *Đúng:* Từ thông hướng vào trong tăng, sinh ra từ trường cảm ứng ngược chiều hướng ra ngoài, tương ứng dòng điện cảm ứng ngược chiều kim đồng hồ.
    - c) *Sai:* Theo định luật Lenz, lực từ sinh ra phải cản trở nguyên nhân gây ra nó (cản trở chuyển động rơi), do đó lực từ tổng hợp phải hướng thẳng đứng lên trên.
    - d) *Đúng:* Suất điện động xuất hiện trên hai cạnh ngang: $e_c = e_("dưới") - e_("trên") = B(x+a) a v - B(x) a v = alpha (x+a) a v - alpha x a v = alpha a^2 v$.
  ],
)

// Câu 13
#vp-question(
  [
    Một khung dây dẫn phẳng diện tích $S = 20 thin "cm"^2$ gồm $N = 100$ vòng dây đặt vuông góc với từ trường đều. Độ lớn cảm ứng từ $B$ tăng đều từ 0 đến $"0,5" thin "T"$ trong khoảng thời gian $Delta t = "0,1" thin "s"$.
  ],
  type: "tf",
  image: hinh-cau-13(),
  image-side: "right",
  image-ratio: 0.38,
  statements: (
    [Từ thông qua khung dây tỉ lệ thuận với độ lớn cảm ứng từ $B$.],
    [Tốc độ biến thiên từ thông qua khung dây bằng $frac(Delta Phi, Delta t) = "2,0" thin "Wb/s"$.],
    [Độ lớn suất điện động cảm ứng xuất hiện trong khung dây bằng $"1,0" thin "V"$.],
    [Từ trường cảm ứng do dòng điện cảm ứng sinh ra có chiều cùng chiều với từ trường ngoài $arrow(B)$.],
  ),
  ans-tf: ("Đ", "S", "Đ", "S"),
  sol: [
    - a) *Đúng:* $Phi = N B S cos 0^degree = N B S$, với $N, S$ cố định thì $Phi$ tỉ lệ thuận với $B$.
    - b) *Sai:* Tốc độ biến thiên từ thông: $frac(Delta Phi, Delta t) = N S frac(Delta B, Delta t) = 100 times (20 times 10^(-4)) times frac("0,5" - 0, "0,1") = "1,0" thin "Wb/s" eq.not "2,0" thin "Wb/s"$.
    - c) *Đúng:* Độ lớn suất điện động cảm ứng: $|e_c| = frac(Delta Phi, Delta t) = "1,0" thin "V"$.
    - d) *Sai:* Do từ trường ngoài $B$ tăng nên từ trường cảm ứng $arrow(B)_c$ phải ngược chiều với từ trường ngoài để chống lại sự tăng đó.
  ],
)

= Chủ đề 4. Thanh dẫn chuyển động trong từ trường

// Câu 14
#vp-question(
  [
    Thanh kim loại $M N$ dài $L = 20 thin "cm"$ trượt đều với tốc độ $v = "4,5" thin "m/s"$ trên hai thanh ray dẫn điện nằm ngang song song không ma sát đặt trong từ trường đều $B = "0,85" thin "T"$ hướng vuông góc với mặt phẳng ray từ trong ra ngoài. Điện trở của thanh $M N$ là $R = "0,5" thin Omega$, bỏ qua điện trở hai ray.
  ],
  type: "tf",
  image: hinh-cau-14(),
  image-side: "right",
  image-ratio: 0.45,
  statements: (
    [Suất điện động cảm ứng xuất hiện trên thanh $M N$ có độ lớn bằng $"0,765" thin "V"$.],
    [Cường độ dòng điện cảm ứng qua thanh $M N$ bằng $"1,53" thin "A"$.],
    [Công suất tỏa nhiệt trên thanh $M N$ bằng $"2,34" thin "W"$.],
    [Lực từ tác dụng lên thanh $M N$ có chiều cùng chiều với vận tốc $arrow(v)$.],
  ),
  ans-tf: ("Đ", "Đ", "S", "S"),
  sol: [
    - a) *Đúng:* $|e_c| = B L v = "0,85" times "0,20" times "4,5" = "0,765" thin "V"$.
    - b) *Đúng:* $I = frac(|e_c|, R) = frac("0,765", "0,5") = "1,53" thin "A"$.
    - c) *Sai:* Công suất tỏa nhiệt: $P = I^2 R = ("1,53")^2 times "0,5" approx "1,17" thin "W" eq.not "2,34" thin "W"$.
    - d) *Sai:* Theo định luật Lenz, lực từ sinh ra cản trở chuyển động của thanh nên có chiều ngược chiều với vận tốc $arrow(v)$.
  ],
)

// Câu 15
#vp-question(
  [
    Một thanh kim loại $M N$ khối lượng $m = "0,10" thin "kg"$, chiều dài $L = "0,40" thin "m"$, điện trở $R = "0,25" thin Omega$ trượt không ma sát từ trạng thái nghỉ xuống theo hai thanh ray dẫn điện song song thẳng đứng trong từ trường đều $B = "0,50" thin "T"$ nằm ngang vuông góc với mặt phẳng hai ray. Hai đầu trên của ray nối bằng dây dẫn không điện trở. Lấy $g = 10 thin "m/s"^2$.
  ],
  type: "tf",
  image: hinh-cau-15(),
  image-side: "right",
  image-ratio: 0.42,
  statements: (
    [Khi thanh $M N$ trượt xuống, dòng điện cảm ứng xuất hiện trên thanh sinh ra lực từ hướng thẳng đứng lên trên cản trở chuyển động rơi.],
    [Khi thanh đạt tốc độ $v = 3 thin "m/s"$, suất điện động cảm ứng trong thanh bằng $"0,6" thin "V"$.],
    [Ban đầu thanh chuyển động nhanh dần, sau đó đạt trạng thái chuyển động thẳng đều với tốc độ cực đại $v_max$.],
    [Giá trị tốc độ cực đại $v_max$ của thanh $M N$ bằng $"12,5" thin "m/s"$.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [
    - a) *Đúng:* Theo định luật Lenz, dòng điện cảm ứng sinh ra lực từ hướng lên cản trở sự rơi của thanh.
    - b) *Đúng:* $e_c = B L v = "0,50" times "0,40" times 3 = "0,6" thin "V"$.
    - c) *Đúng:* Phương trình động lực học: $m g - F_t = m a arrow.r.double a = g - frac(B^2 L^2 v, m R)$. Khi $v$ tăng, gia tốc $a$ giảm dần về 0, thanh đạt trạng thái chuyển động đều với vận tốc cực đại $v_max$.
    - d) *Sai:* Khi chuyển động đều, lực từ cân bằng trọng lực: $m g = frac(B^2 L^2 v_max, R) arrow.r.double v_max = frac(m g R, B^2 L^2) = frac("0,10" times 10 times "0,25", ("0,50")^2 times ("0,40")^2) = frac("0,25", "0,04") = "6,25" thin "m/s" eq.not "12,5" thin "m/s"$.
  ],
)

// Câu 16
#vp-question(
  [
    Hai thanh ray kim loại thẳng đứng cách nhau $L = "0,2" thin "m"$ đặt trong từ trường đều $B = "0,5" thin "T"$ vuông góc với mặt phẳng hai ray. Nối hai đầu trên của ray với một tụ điện $C = 10 thin "mF"$ ($10^(-2) thin "F"$). Thả một thanh kim loại $M N$ khối lượng $m = 2 thin "g"$ trượt không ma sát xuống dưới dọc theo hai ray. Lấy $g = 10 thin "m/s"^2$.
  ],
  type: "tf",
  image: hinh-cau-16(),
  image-side: "right",
  image-ratio: 0.42,
  statements: (
    [Khi thanh trượt với tốc độ $v$, suất điện động cảm ứng xuất hiện trên thanh là $e_c = B L v$.],
    [Điện tích của tụ điện tại thời điểm thanh có tốc độ $v$ là $q = C B L v$.],
    [Cường độ dòng điện tích điện cho tụ bằng $I = C B L a$, trong đó $a$ là gia tốc của thanh $M N$.],
    [Gia tốc $a$ của thanh $M N$ nhỏ hơn gia tốc trọng trường $g$ và bằng $"9,52" thin "m/s"^2$.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "Đ"),
  sol: [
    - a) *Đúng:* Suất điện động sinh ra trên đoạn thanh chuyển động vuông góc từ trường là $e_c = B L v$.
    - b) *Đúng:* Tụ điện được nạp điện dưới hiệu điện thế bằng suất điện động cảm ứng: $q = C u = C e_c = C B L v$.
    - c) *Đúng:* Dòng điện trong mạch là tốc độ biến thiên điện tích: $I = frac(d q, d t) = C B L frac(d v, d t) = C B L a$.
    - d) *Đúng:* Phương trình chuyển động: $m g - F_t = m a arrow.r.double m g - B I L = m a arrow.r.double m g - B (C B L a) L = m a arrow.r.double a = frac(m g, m + C B^2 L^2) = frac(2 times 10^(-3) times 10, 2 times 10^(-3) + 10^(-2) times ("0,5")^2 times ("0,2")^2) = frac("0,02", "0,002" + "0,0001") = frac("0,02", "0,0021") approx "9,52" thin "m/s"^2 < g$.
  ],
)

// Câu 17
#vp-question(
  [
    Một khung dây dẫn góc vuông $x O y$ đặt nằm ngang. Một thanh kim loại $M N$ nằm trong mặt phẳng $x O y$ luôn vuông góc với $O x$, ban đầu cách $O$ đoạn $b = 2 thin "m"$. Khung đặt trong từ trường đều $B = "0,5" thin "T"$ vuông góc với $x O y$. Thanh $M N$ chuyển động thẳng đều về phía $O$ với tốc độ $v = "0,2" thin "m/s"$. Mạch nối với điện trở $R = 10 thin Omega$ tại $O$.
  ],
  type: "tf",
  image: hinh-cau-17(),
  image-side: "right",
  image-ratio: 0.45,
  statements: (
    [Diện tích tam giác giới hạn bởi thanh $M N$ và hai cạnh khung giảm dần theo thời gian.],
    [Suất điện động cảm ứng trong mạch có độ lớn giảm dần khi thanh $M N$ lại gần $O$.],
    [Tốc độ biến thiên diện tích tam giác tại thời điểm $t = 2 thin "s"$ có độ lớn bằng $"0,32" thin "m"^2"/s"$.],
    [Lực từ tác dụng lên thanh $M N$ tại thời điểm $t = 2 thin "s"$ có độ lớn bằng $"51,2" thin "mN"$.],
  ),
  ans-tf: ("Đ", "Đ", "S", "Đ"),
  sol: [
    - a) *Đúng:* Khi thanh tiến lại gần gốc $O$, khoảng cách $x$ giảm dần làm chiều dài thanh chắn giữa hai ray giảm, diện tích tam giác giới hạn giảm.
    - b) *Đúng:* Diện tích tam giác: $S(t) = x^2$ (hoặc $frac(1, 2) x y$), tốc độ biến thiên diện tích tỉ lệ thuận với $x$, do đó khi $x$ giảm thì $e_c = B |frac(d S, d t)|$ giảm dần.
    - c) *Sai:* Tại $t = 2 thin "s"$, toạ độ $x = b - v t = 2 - "0,2" times 2 = "1,6" thin "m"$. Tốc độ biến thiên diện tích: $|frac(d S, d t)| = 2 x v = 2 times "1,6" times "0,2" = "0,64" thin "m"^2"/s" eq.not "0,32" thin "m"^2"/s"$.
    - d) *Đúng:* Tại $t = 2 thin "s"$: $e_c = B |frac(d S, d t)| = "0,5" times "0,64" = "0,32" thin "V"$. Dòng điện cảm ứng: $I = frac(e_c, R) = frac("0,32", 10) = "0,032" thin "A"$. Chiều dài thanh giữa hai ray là $y = 2 x = "3,2" thin "m"$. Lực từ: $F = B I y = "0,5" times "0,032" times "3,2" = "0,0512" thin "N" = "51,2" thin "mN"$.
  ],
)

= Chủ đề 5. Suất điện động xoay chiều và máy phát điện

// Câu 18
#vp-question(
  [
    Một khung dây dẫn phẳng quay đều với tốc độ góc $omega$ quanh một trục cố định nằm trong mặt phẳng khung, trong từ trường đều $arrow(B)$ vuông góc với trục quay. Suất điện động cảm ứng có biểu thức $e = E_0 cos(omega t + frac(pi, 2))$ ($E_0 > 0$).
  ],
  type: "tf",
  image: hinh-cau-18(),
  image-side: "right",
  image-ratio: 0.4,
  statements: (
    [Tại thời điểm $t = 0$, từ thông qua khung dây bằng 0.],
    [Lúc $t = 0$, vectơ pháp tuyến $arrow(n)$ của khung dây hợp với vectơ cảm ứng từ $arrow(B)$ một góc bằng $0^degree$ hoặc $180^degree$.],
    [Biên độ suất điện động cực đại liên hệ với từ thông cực đại qua công thức $E_0 = omega Phi_max$.],
    [Suất điện động hiệu dụng do khung dây tạo ra là $E = frac(E_0, sqrt(2))$.],
  ),
  ans-tf: ("S", "Đ", "Đ", "Đ"),
  sol: [
    - a) *Sai:* Vì $e = - Phi'(t)$, biểu thức $e = E_0 cos(omega t + frac(pi, 2)) = - E_0 sin(omega t)$ suy ra từ thông có dạng $Phi(t) = frac(E_0, omega) cos(omega t) = Phi_max cos(omega t)$. Tại $t = 0$, $Phi(0) = Phi_max eq.not 0$.
    - b) *Đúng:* Khi từ thông đạt cực đại thì $cos(arrow(n), arrow(B)) = plus.minus 1$, tức là góc giữa $arrow(n)$ và $arrow(B)$ bằng $0^degree$ hoặc $180^degree$ (mặt phẳng khung vuông góc với đường sức từ).
    - c) *Đúng:* Mối liên hệ chuẩn giữa suất điện động cực đại và từ thông cực đại: $E_0 = omega N B S = omega Phi_max$.
    - d) *Đúng:* Giá trị hiệu dụng của dao động điều hòa hình sin: $E = frac(E_0, sqrt(2))$.
  ],
)

// Câu 19
#vp-question(
  [
    Xét mô hình máy phát điện xoay chiều đơn giản gồm khung dây gồm $N = 2000$ vòng, diện tích mỗi vòng $S = 200 thin "cm"^2$ quay đều với tốc độ $n = 50 thin "vòng/s"$ trong từ trường đều $B$. Suất điện động cực đại do máy phát ra là $E_0 = 220 sqrt(2) thin "V"$.
  ],
  type: "tf",
  image: hinh-cau-19(),
  image-side: "right",
  image-ratio: 0.42,
  statements: (
    [Tốc độ góc quay của khung dây bằng $omega = 100 pi thin "rad/s"$.],
    [Suất điện động hiệu dụng do máy phát ra là $E = 220 thin "V"$.],
    [Bộ phận tạo ra từ trường (nam châm) gọi là phần cảm, bộ phận tạo ra suất điện động (cuộn dây) gọi là phần ứng.],
    [Độ lớn cảm ứng từ $B$ của từ trường bên trong khung dây xấp xỉ $"0,025" thin "T"$.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "Đ"),
  sol: [
    - a) *Đúng:* $omega = 2 pi n = 2 pi times 50 = 100 pi thin "rad/s"$.
    - b) *Đúng:* $E = frac(E_0, sqrt(2)) = frac(220 sqrt(2), sqrt(2)) = 220 thin "V"$.
    - c) *Đúng:* Khái niệm chuẩn SGK: phần cảm tạo ra từ thông, phần ứng tạo ra suất điện động.
    - d) *Đúng:* Ta có $E_0 = omega N B S arrow.r.double B = frac(E_0, omega N S) = frac(220 sqrt(2), 100 pi times 2000 times (200 times 10^(-4))) = frac(220 sqrt(2), 4000 pi) approx "0,0248" thin "T" approx "0,025" thin "T"$.
  ],
)

// Câu 20
#vp-question(
  [
    Một khung dây dẫn phẳng diện tích $S = 50 thin "cm"^2$ gồm $N = 250$ vòng dây quay đều với tốc độ $1500 thin "vòng/phút"$ quanh trục đối xứng trong từ trường đều $B = "0,5" thin "T"$. Hai đầu khung nối với điện trở $R = 15 thin Omega$ thành mạch kín.
  ],
  type: "tf",
  image: hinh-cau-20(),
  image-side: "right",
  image-ratio: 0.4,
  statements: (
    [Tốc độ góc quay của khung dây là $omega = 50 pi thin "rad/s"$.],
    [Từ thông cực đại qua khung dây là $Phi_max = "6,25" thin "Wb"$.],
    [Suất điện động cực đại xuất hiện trong khung dây xấp xỉ $"98,17" thin "V"$.],
    [Cường độ dòng điện hiệu dụng chạy qua điện trở $R$ xấp xỉ $"4,63" thin "A"$.],
  ),
  ans-tf: ("Đ", "S", "Đ", "Đ"),
  sol: [
    - a) *Đúng:* $omega = 2 pi times frac(1500, 60) = 50 pi thin "rad/s"$.
    - b) *Sai:* $S = 50 thin "cm"^2 = 50 times 10^(-4) thin "m"^2 = "0,005" thin "m"^2$. Từ thông cực đại: $Phi_max = N B S = 250 times "0,5" times "0,005" = "0,625" thin "Wb" eq.not "6,25" thin "Wb"$.
    - c) *Đúng:* $E_0 = omega Phi_max = 50 pi times "0,625" approx "98,17" thin "V"$.
    - d) *Đúng:* Suất điện động hiệu dụng: $E = frac(E_0, sqrt(2)) approx frac("98,17", sqrt(2)) approx "69,42" thin "V"$. Cường độ hiệu dụng: $I = frac(E, R) = frac("69,42", 15) approx "4,63" thin "A"$.
  ],
)

// Câu 21
#vp-question(
  [
    Hình bên mô tả đồ thị sự biến thiên của từ thông $Phi(t)$ qua một khung dây kín theo thời gian $t$ dưới dạng các đoạn đường thẳng dốc. Trong khoảng $t = 0$ đến $t = "0,1" thin "s"$, từ thông tăng đều từ 0 đến $"0,3" thin "Wb"$.
  ],
  type: "tf",
  image: hinh-cau-21(),
  image-side: "right",
  image-ratio: 0.48,
  statements: (
    [Suất điện động cảm ứng xuất hiện trong khung dây có giá trị không đổi về độ lớn trong từng khoảng thời gian từ thông biến thiên đều.],
    [Độ lớn suất điện động cảm ứng trong khoảng $t = 0$ đến $t = "0,1" thin "s"$ bằng $3 thin "V"$.],
    [Trong khoảng $t = "0,1" thin "s"$ đến $t = "0,2" thin "s"$, từ thông giảm đều từ $"0,3" thin "Wb"$ về 0, suất điện động cảm ứng đổi dấu so với giai đoạn trước.],
    [Đồ thị biểu diễn suất điện động cảm ứng $e(t)$ theo thời gian có dạng sóng hình sin liên tục.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [
    - a) *Đúng:* Vì $Phi(t)$ là hàm bậc nhất theo thời gian trong từng đoạn nên tốc độ biến thiên $frac(Delta Phi, Delta t)$ là hằng số, dẫn đến độ lớn suất điện động cảm ứng $|e_c|$ không đổi trong từng đoạn.
    - b) *Đúng:* $|e_c| = |frac(Delta Phi, Delta t)| = frac("0,3" - 0, "0,1" - 0) = 3 thin "V"$.
    - c) *Đúng:* Khi từ thông giảm thì $frac(Delta Phi, Delta t) < 0$, suất điện động $e_c = - frac(Delta Phi, Delta t)$ đổi sang giá trị dương, ngược dấu với giai đoạn từ thông tăng.
    - d) *Sai:* Vì đạo hàm của các đoạn thẳng là các hằng số nên đồ thị $e(t)$ có dạng các đoạn hằng số gián đoạn (xung vuông), không phải sóng hình sin liên tục.
  ],
)

= Chủ đề 6. Hạt mang điện chuyển động trong từ trường và cảm biến lưu lượng

// Câu 22
#vp-question(
  [
    Một ion mang điện tích dương $q$ chuyển động với vận tốc $arrow(v)$ vào vùng từ trường đều $arrow(B)$ vuông góc với $arrow(v)$. Bỏ qua trọng lực.
  ],
  type: "tf",
  image: hinh-cau-22(),
  image-side: "right",
  image-ratio: 0.4,
  statements: (
    [Lực Lorentz tác dụng lên ion có độ lớn $F = q v B$ và có phương vuông góc với cả $arrow(v)$ và $arrow(B)$.],
    [Lực Lorentz đóng vai trò lực hướng tâm làm ion chuyển động theo quỹ đạo tròn bán kính $r = frac(m v, q B)$.],
    [Công của lực Lorentz tác dụng lên ion bằng 0 nên động năng và tốc độ của ion không bị thay đổi.],
    [Ion có khối lượng $m$ càng lớn thì bán kính quỹ đạo tròn $r$ càng nhỏ.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [
    - a) *Đúng:* $F = |q| v B sin 90^degree = q v B$, phương của lực vuông góc với mặt phẳng chứa $arrow(v)$ và $arrow(B)$.
    - b) *Đúng:* Vì lực Lorentz luôn vuông góc với vận tốc nên đóng vai trò lực hướng tâm: $q v B = frac(m v^2, r) arrow.r.double r = frac(m v, q B)$.
    - c) *Đúng:* Lực luôn vuông góc với độ dịch chuyển tức thời ($arrow(F) perp arrow(v)$) nên công $A = 0$, theo định lí động năng thì động năng và tốc độ không đổi.
    - d) *Sai:* Từ công thức $r = frac(m v, q B)$, ta thấy bán kính $r$ tỉ lệ thuận với khối lượng $m$. Hạt có khối lượng càng lớn thì quán tính càng lớn, bán kính quỹ đạo càng lớn.
  ],
)

// Câu 23
#vp-question(
  [
    Máy gia tốc Cyclotron hoạt động dựa trên việc kết hợp điện trường đều biến thiên (để tăng tốc hạt) và từ trường đều $B$ (để bẻ cong quỹ đạo hạt).
  ],
  type: "tf",
  image: hinh-cau-23(),
  image-side: "right",
  image-ratio: 0.38,
  statements: (
    [Từ trường đều trong máy Cyclotron có tác dụng làm tăng tốc độ của hạt mang điện.],
    [Thời gian hạt chuyển động nửa vòng tròn trong từ trường không phụ thuộc vào bán kính quỹ đạo và vận tốc của hạt.],
    [Chu kỳ quay của hạt trong từ trường được tính theo công thức $T = frac(2 pi m, q B)$.],
    [Khi tốc độ hạt tăng lên, bán kính quỹ đạo tròn của hạt trong lòng máy Cyclotron tăng dần.],
  ),
  ans-tf: ("S", "Đ", "Đ", "Đ"),
  sol: [
    - a) *Sai:* Lực từ không sinh công nên từ trường chỉ có tác dụng bẻ cong quỹ đạo hạt thành đường tròn, còn điện trường xoay chiều ở khe hở mới làm tăng tốc độ hạt.
    - b) *Đúng:* Thời gian đi nửa vòng tròn: $t_(1/2) = frac(pi r, v) = frac(pi, v) dot frac(m v, q B) = frac(pi m, q B)$ là hằng số không phụ thuộc vào bán kính $r$ và tốc độ $v$.
    - c) *Đúng:* Chu kì quay $T = 2 t_(1/2) = frac(2 pi m, q B)$.
    - d) *Đúng:* Bán kính quỹ đạo $r = frac(m v, q B) prop v$, khi hạt được tăng tốc ở mỗi lần qua khe hở thì $v$ tăng làm bán kính $r$ tăng dần theo đường xoắn ốc.
  ],
)

// Câu 24
#vp-question(
  [
    Thiết bị cảm biến đo lưu lượng điện từ (SUP-LDG) dùng để đo lưu lượng sữa hoặc máu chảy qua ống tròn đường kính $d$ đặt trong từ trường đều $B$. Các hạt tải điện $q$ trong chất lỏng chuyển động với tốc độ trung bình $v$ vuông góc với $arrow(B)$.
  ],
  type: "tf",
  image: hinh-cau-24(),
  image-side: "right",
  image-ratio: 0.48,
  statements: (
    [Lực Lorentz tác dụng phân tách các hạt mang điện tích dương và âm về hai điện cực $M, N$ đặt đối diện qua đường kính ống.],
    [Khi điện áp giữa hai điện cực ổn định, lực điện cân bằng với lực Lorentz tác dụng lên các hạt tải điện ($q E = q v B$).],
    [Hiệu điện thế giữa hai điện cực $U = B d v$ tỉ lệ thuận với tốc độ dòng chảy $v$ và lưu lượng $Q$.],
    [Để giảm số chỉ trên vôn kế đo hiệu điện thế $U$, người ta phải tăng tốc độ dòng chảy chất lỏng.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [
    - a) *Đúng:* Lực Lorentz $arrow(F)_L = q (arrow(v) times arrow(B))$ đẩy các ion dương về một điện cực và ion âm về điện cực đối diện, tạo nên hiệu điện thế cảm ứng.
    - b) *Đúng:* Trạng thái cân bằng động đạt được khi lực điện trường cản trở phân tách cân bằng với lực từ: $F_e = F_L arrow.r.double q E = q v B arrow.r.double E = v B$.
    - c) *Đúng:* Hiệu điện thế giữa hai cực: $U = E d = B d v$. Lưu lượng dòng chảy $Q = v S = v dot frac(pi d^2, 4)$ nên $U = frac(4 B, pi d) Q prop Q$.
    - d) *Sai:* Vì $U prop v$, muốn giảm số chỉ trên vôn kế thì phải giảm tốc độ dòng chảy chất lỏng.
  ],
)

= Chủ đề 7. Ứng dụng thực tế, động cơ điện và an toàn từ trường

// Câu 25
#vp-question(
  [
    Xét mô hình động cơ điện một chiều đơn giản gồm khung dây $A B C D$ đặt trong từ trường giữa hai cực nam châm, hai đầu khung nối với cổ góp hình bán khuyên tiếp xúc với hai chổi than.
  ],
  type: "tf",
  image: hinh-cau-25(),
  image-side: "right",
  image-ratio: 0.42,
  statements: (
    [Hoạt động của động cơ điện dựa trên tác dụng của lực từ lên khung dây mang dòng điện đặt trong từ trường.],
    [Cổ góp hình bán khuyên có tác dụng tự động đảo chiều dòng điện trong khung dây sau mỗi nửa vòng quay để giữ chiều quay của khung không đổi.],
    [Động cơ điện biến đổi cơ năng thành điện năng.],
    [Khi tăng cường độ dòng điện cấp vào khung dây thì mômen lực từ tác dụng lên khung dây tăng.],
  ),
  ans-tf: ("Đ", "Đ", "S", "Đ"),
  sol: [
    - a) *Đúng:* Đây là nguyên lí hoạt động căn bản của động cơ điện một chiều.
    - b) *Đúng:* Nhờ cổ góp và chổi than, mỗi khi khung dây vượt qua vị trí trung hòa, dòng điện trong khung tự động đảo chiều, làm chiều ngẫu lực từ không đổi và khung tiếp tục quay theo một chiều.
    - c) *Sai:* Động cơ điện là thiết bị biến đổi điện năng thành cơ năng (máy phát điện mới biến cơ năng thành điện năng).
    - d) *Đúng:* Mômen ngẫu lực từ: $M = N B I S sin theta prop I$, khi tăng $I$ thì mômen lực quay tăng.
  ],
)

// Câu 26
#vp-question(
  [
    Máy khử rung tim cấy ghép (ICD) là thiết bị y tế cấy dưới da bệnh nhân. Thiết bị có một cuộn dây diện tích $S = 3 thin "cm"^2$ đặt vuông góc với từ trường. Bệnh nhân đi qua vùng có từ trường giảm đều từ $80 thin mu"T"$ về 0 trong thời gian $Delta t = "1,5" thin "s"$.
  ],
  type: "tf",
  image: hinh-cau-26(),
  image-side: "right",
  image-ratio: 0.45,
  statements: (
    [Hiện tượng xuất hiện suất điện động trong cuộn dây ICD là hiện tượng cảm ứng điện từ.],
    [Tốc độ biến thiên cảm ứng từ có độ lớn bằng $frac(Delta B, Delta t) approx "5,33" times 10^(-5) thin "T/s"$.],
    [Độ lớn suất điện động cảm ứng xuất hiện trong cuộn dây ICD bằng $16 thin "nV"$ ($16 times 10^(-9) thin "V"$).],
    [Để đảm bảo an toàn cho bệnh nhân mang máy ICD, người ta khuyến cáo tránh lại gần các vùng có từ trường mạnh.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "Đ"),
  sol: [
    - a) *Đúng:* Từ trường ngoài biến thiên sinh ra suất điện động cảm ứng trong cuộn dây theo định luật Faraday.
    - b) *Đúng:* $frac(Delta B, Delta t) = frac(80 times 10^(-6) - 0, "1,5") approx "5,33" times 10^(-5) thin "T/s"$.
    - c) *Đúng:* $e_c = S frac(Delta B, Delta t) = (3 times 10^(-4)) times ("5,33" times 10^(-5)) approx "1,60" times 10^(-8) thin "V" = 16 thin "nV"$.
    - d) *Đúng:* Từ trường mạnh hoặc biến thiên nhanh có thể cảm ứng xung điện phá vỡ mạch điện điều khiển của máy ICD, đe dọa tính mạng người bệnh.
  ],
)

// Câu 27
#vp-question(
  [
    Trong hệ thống phanh tái tạo năng lượng của ô tô điện, khi phanh, động cơ điện tự động chuyển sang chế độ máy phát điện. Khung dây quay trong từ trường sinh ra dòng điện cảm ứng nạp lại cho bộ pin.
  ],
  type: "tf",
  image: hinh-cau-27(),
  image-side: "right",
  image-ratio: 0.45,
  statements: (
    [Lực từ tác dụng lên khung dây quay trong chế độ phanh có tác dụng cản trở chuyển động quay của bánh xe.],
    [Cơ năng của xe ô tô được chuyển hóa một phần thành điện năng trữ vào pin.],
    [Tốc độ xe càng nhanh thì lực phanh từ tính tạo ra càng nhỏ.],
    [Nguyên tắc hoạt động của phanh tái tạo dựa trên định luật Lenz về cảm ứng điện từ.],
  ),
  ans-tf: ("Đ", "Đ", "S", "Đ"),
  sol: [
    - a) *Đúng:* Theo định luật Lenz, dòng điện cảm ứng sinh ra lực từ chống lại chuyển động quay, tạo hiệu quả hãm phanh.
    - b) *Đúng:* Động năng của xe được chuyển thành năng lượng điện nạp lại vào cụm pin cao áp.
    - c) *Sai:* Tốc độ xe càng lớn thì tốc độ quay $omega$ càng cao $arrow.r.double$ suất điện động cảm ứng càng lớn $arrow.r.double$ dòng điện cảm ứng càng mạnh $arrow.r.double$ lực phanh từ tính càng lớn.
    - d) *Đúng:* Bản chất lực cản chống lại chuyển động sinh ra nó là biểu hiện cơ học của định luật Lenz.
  ],
)

// Câu 28
#vp-question(
  [
    Một máy dynamo xe đạp gồm một nam châm vĩnh cửu quay trước cuộn dây cố định gồm $N = 1250$ vòng, diện tích mỗi vòng $S = 2 thin "cm"^2$. Cảm ứng từ cực đại qua lõi cuộn dây là $B = "0,01" thin "T"$.
  ],
  type: "tf",
  image: hinh-cau-28(),
  image-side: "right",
  image-ratio: 0.42,
  statements: (
    [Dynamo xe đạp hoạt động dựa trên hiện tượng cảm ứng điện từ.],
    [Nam châm quay là phần cảm (rôto), cuộn dây cố định là phần ứng (stato).],
    [Từ thông cực đại gửi qua cuộn dây có giá trị bằng $Phi_max = "2,5" times 10^(-3) thin "Wb"$.],
    [Khi người đi xe đạp đi càng nhanh thì tần số và giá trị hiệu dụng của suất điện động phát ra từ dynamo càng giảm.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [
    - a) *Đúng:* Khi nam châm quay, từ thông gửi qua cuộn dây biến thiên tuần hoàn sinh ra dòng điện cảm ứng.
    - b) *Đúng:* Nam châm tạo ra từ trường là phần cảm, quay tròn nên là rôto; cuộn dây sinh ra suất điện động là phần ứng, đứng yên nên là stato.
    - c) *Đúng:* $Phi_max = N B S = 1250 times "0,01" times (2 times 10^(-4)) = "2,5" times 10^(-3) thin "Wb"$.
    - d) *Sai:* Đi xe đạp càng nhanh thì rôto quay càng nhanh ($omega$ tăng), tần số $f = frac(omega, 2 pi)$ và suất điện động cực đại $E_0 = omega Phi_max$ đều tăng, đèn xe sáng hơn.
  ],
)

// Câu 29
#vp-question(
  [
    Một nhóm học sinh đo thành phần nằm ngang của từ trường Trái Đất $B_T$ bằng một khung dây tròn bán kính $R$ quấn $N$ vòng dây đặt thẳng đứng trùng với mặt phẳng kinh tuyến từ. Đặt kim nam châm thử tại tâm khung. Khi cho dòng điện $I$ chạy qua khung, từ trường dòng điện $B_c = 2 pi times 10^(-7) frac(N I, R)$ vuông góc với $B_T$ làm kim nam châm lệch góc $alpha = 60^degree$.
  ],
  type: "tf",
  image: hinh-cau-29(),
  image-side: "right",
  image-ratio: 0.45,
  statements: (
    [Tại tâm khung dây, vectơ từ trường Trái Đất $arrow(B)_T$ và vectơ từ trường dòng điện $arrow(B)_c$ vuông góc với nhau.],
    [Góc lệch $alpha$ của kim nam châm thỏa mãn hệ thức $tan alpha = frac(B_c, B_T)$.],
    [Độ lớn từ trường Trái Đất được xác định bởi $B_T = frac(B_c, tan 60^degree) = frac(B_c, sqrt(3))$.],
    [Nếu tăng cường độ dòng điện $I$ qua khung dây thì góc lệch $alpha$ của kim nam châm sẽ giảm đi.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [
    - a) *Đúng:* Vì mặt phẳng khung trùng với kinh tuyến từ (hướng Nam - Bắc) nên vectơ từ trường dòng điện $arrow(B)_c$ vuông góc với mặt phẳng khung (hướng Đông - Tây), do đó $arrow(B)_c perp arrow(B)_T$.
    - b) *Đúng:* Kim nam châm định hướng theo hợp lực từ trường $arrow(B)_"hl" = arrow(B)_T + arrow(B)_c$. Do hai vectơ vuông góc nên $tan alpha = frac(B_c, B_T)$.
    - c) *Đúng:* Từ hệ thức $tan 60^degree = frac(B_c, B_T) arrow.r.double B_T = frac(B_c, tan 60^degree) = frac(B_c, sqrt(3))$.
    - d) *Sai:* Khi tăng $I$ thì $B_c prop I$ tăng, dẫn tới $tan alpha = frac(B_c, B_T)$ tăng, do đó góc lệch $alpha$ tăng dần tiến về $90^degree$.
  ],
)

// Câu 30
#vp-question(
  [
    Trong các phòng chụp cộng hưởng từ (MRI) ở bệnh viện có sử dụng từ trường siêu dẫn rất mạnh ($"1,5" thin "T" - 3 thin "T"$).
  ],
  type: "tf",
  image: hinh-cau-30(),
  image-side: "right",
  image-ratio: 0.4,
  statements: (
    [Nơi có từ trường mạnh thường được gắn biển cảnh báo hình tam giác viền đen nền vàng mang biểu tượng nam châm.],
    [Người đeo máy tạo nhịp tim hoặc mang các vật dụng kim loại sắt từ không được phép vào phòng chụp MRI vì lực từ cực lớn có thể hút và gây nguy hiểm.],
    [Khác với tia X hay tia Gamma, từ trường tĩnh mạnh trong máy MRI không gây ion hóa tế bào.],
    [Từ trường tĩnh không tác dụng lực lên các ion điện tích đang chuyển động trong cơ thể.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [
    - a) *Đúng:* Biển cảnh báo an toàn từ trường theo tiêu chuẩn quốc tế là biển tam giác viền đen nền vàng có hình vẽ nam châm móng ngựa.
    - b) *Đúng:* Từ trường cực lớn trong phòng chụp MRI hút mạnh các vật liệu sắt từ biến chúng thành các vật phóng nguy hiểm và phá hỏng mạch điện của máy tạo nhịp tim.
    - c) *Đúng:* Từ trường là trường tĩnh, không mang năng lượng photon lượng tử cao như tia phóng xạ hay tia X nên không gây đứt gãy DNA hay ion hóa phân tử.
    - d) *Sai:* Các ion điện tích đang chuyển động trong dòng máu (như $"Na"^+$, $"K"^+$, $"Cl"^-$) khi chuyển động trong từ trường đều chịu tác dụng của lực Lorentz $arrow(F) = q (arrow(v) times arrow(B))$.
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

        [*1*], [S], [Đ], [Đ], [S], [], [*11*], [Đ], [Đ], [S], [Đ], [], [*21*], [Đ], [Đ], [Đ], [S],

        [*2*], [Đ], [S], [Đ], [Đ], [], [*12*], [Đ], [Đ], [S], [Đ], [], [*22*], [Đ], [Đ], [Đ], [S],

        [*3*], [Đ], [Đ], [S], [Đ], [], [*13*], [Đ], [S], [Đ], [S], [], [*23*], [S], [Đ], [Đ], [Đ],

        [*4*], [Đ], [Đ], [S], [Đ], [], [*14*], [Đ], [Đ], [S], [S], [], [*24*], [Đ], [Đ], [Đ], [S],

        [*5*], [S], [Đ], [Đ], [S], [], [*15*], [Đ], [Đ], [Đ], [S], [], [*25*], [Đ], [Đ], [S], [Đ],

        [*6*], [Đ], [Đ], [Đ], [S], [], [*16*], [Đ], [Đ], [Đ], [Đ], [], [*26*], [Đ], [Đ], [Đ], [Đ],

        [*7*], [Đ], [Đ], [S], [Đ], [], [*17*], [Đ], [Đ], [S], [Đ], [], [*27*], [Đ], [Đ], [S], [Đ],

        [*8*], [Đ], [Đ], [Đ], [S], [], [*18*], [S], [Đ], [Đ], [Đ], [], [*28*], [Đ], [Đ], [Đ], [S],

        [*9*], [Đ], [Đ], [S], [S], [], [*19*], [Đ], [Đ], [Đ], [Đ], [], [*29*], [Đ], [Đ], [Đ], [S],

        [*10*], [Đ], [Đ], [S], [Đ], [], [*20*], [Đ], [S], [Đ], [Đ], [], [*30*], [Đ], [Đ], [Đ], [S],
      )
    ]
  ]
]

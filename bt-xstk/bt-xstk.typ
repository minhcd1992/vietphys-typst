// Xác suất thống kê và ứng dụng trong Vật lí - Bài tập
// Biên dịch: typst compile bt-xstk/bt-xstk.typ bt-xstk/bt-xstk.pdf

#let bai(number, body, kind: "Bài", fig: none, fig-width: 43mm) = block(
  width: 100%,
  breakable: true,
  above: 14pt,
  below: 8pt,
)[
  #if fig == none [
    *#kind #number.* #body
  ] else {
    grid(
      columns: (1fr, fig-width),
      gutter: 5mm,
      [*#kind #number.* #body], fig,
    )
  }
]

#let y(body) = block(above: 8.5pt, below: 0pt, inset: (left: 14pt), body)

#let giai(body) = block(
  width: 100%,
  breakable: true,
  above: 7pt,
  below: 12pt,
  inset: (x: 10pt, y: 7pt),
  stroke: (left: 2pt + rgb("2d70b3")),
  fill: rgb("f8fafc"),
  radius: (right: 3pt),
)[
  #text(weight: "bold", fill: rgb("2d70b3"))[Lời giải:] \
  #v(2pt)
  #body
]

#let layout(body) = {
  set document(title: "Xác suất thống kê và ứng dụng trong Vật lí - Bài tập")
  set page(
    paper: "a4",
    margin: (x: 18mm, top: 20mm, bottom: 20mm),
    header: text(size: 9pt, fill: rgb("555555"))[
      #grid(
        columns: (1fr, 1fr),
        align: (left, right),
        [Xác suất thống kê và ứng dụng trong Vật lí], [Tô Thị Hoàng Lan],
      )
      #v(-3pt)
      #line(length: 100%, stroke: 0.4pt + rgb("aaaaaa"))
    ],
    numbering: "1",
    number-align: center,
  )
  set text(font: "Times New Roman", size: 12pt, lang: "vi")
  set par(justify: true, leading: 0.72em)
  set list(spacing: 9pt)
  set heading(numbering: none)
  show heading.where(level: 1): it => block(above: 22pt, below: 14pt)[
    #text(size: 15pt, weight: "bold", it.body)
  ]
  show heading.where(level: 2): it => block(above: 14pt, below: 8pt)[
    #text(size: 13pt, weight: "bold", it.body)
  ]
  body
}

#show: layout

= Bài tập chương 1

#bai("1.1")[
  Một công ty tổ chức một trò chơi bốc thăm trúng thưởng với 100 phiếu tham dự, trong đó có 20 phiếu may mắn. Ba người tham gia sẽ lần lượt (mỗi người một lượt) bốc thăm ngẫu nhiên một phiếu từ hộp mà không hoàn lại. Hãy tính xác suất để cả ba người tham gia đều bốc được phiếu may mắn.
]
#giai[
  Gọi $A_i$ là biến cố người thứ $i$ bốc được phiếu may mắn ($i = 1, 2, 3$). Biến cố cả ba người đều bốc được phiếu may mắn là tích $A = A_1 A_2 A_3$.

  Vì bốc thăm không hoàn lại nên số phiếu trong hộp giảm dần sau mỗi lần bốc:
  - Xác suất người thứ nhất bốc được phiếu may mắn: $P(A_1) = 20 / 100 = 1 / 5$.
  - Xác suất người thứ hai bốc được phiếu may mắn khi người thứ nhất đã bốc may mắn: $P(A_2 | A_1) = 19 / 99$.
  - Xác suất người thứ ba bốc được phiếu may mắn khi hai người trước đã bốc may mắn: $P(A_3 | A_1 A_2) = 18 / 98$.

  Theo quy tắc nhân xác suất:
  $ P(A) = P(A_1) dot P(A_2 | A_1) dot P(A_3 | A_1 A_2) = frac(20, 100) dot frac(19, 99) dot frac(18, 98) = frac(19, 2695) approx 0","00705 thin (0","71%). $

  _Cách khác (sử dụng tổ hợp):_ Số cách chọn 3 phiếu từ 100 phiếu là $C_(100)^3$. Số cách chọn 3 phiếu may mắn từ 20 phiếu là $C_(20)^3$:
  $ P(A) = frac(C_(20)^3, C_(100)^3) = frac(1140, 161700) = frac(19, 2695) approx 0","00705. $
]

#bai("1.2")[
  Một trại gà có 50 con gà, trong đó có 30 con gà trống và 20 con gà mái. Chọn ngẫu nhiên lấy ra 4 con gà. Tính xác suất:
  #y[a) Có 2 con gà trống trong số 4 con gà được chọn.]
  #y[b) Có ít nhất một con gà mái trong 4 con gà được chọn.]
  #y[c) Có nhiều nhất 2 con gà trống trong 4 con gà được chọn.]
]
#giai[
  Tổng số gà là $30 + 20 = 50$ con. Số cách chọn ngẫu nhiên 4 con gà từ 50 con là $|Omega| = C_(50)^4 = 230 thin 300$.

  *a)* Gọi $A$ là biến cố chọn được 2 gà trống (và 2 gà mái):
  $ P(A) = frac(C_(30)^2 dot C_(20)^2, C_(50)^4) = frac(435 dot 190, 230 thin 300) = frac(82 thin 650, 230 thin 300) = frac(1653, 4606) approx 0","3589. $

  *b)* Gọi $B$ là biến cố có ít nhất một con gà mái trong 4 con gà được chọn.
  Biến cố đối $overline(B)$ là "Không có con gà mái nào được chọn" (cả 4 con đều là gà trống):
  $ P(overline(B)) = frac(C_(30)^4, C_(50)^4) = frac(27 thin 405, 230 thin 300) = frac(5481, 46 thin 060) approx 0","1190. $
  Vậy xác suất có ít nhất một con gà mái là:
  $ P(B) = 1 - P(overline(B)) = 1 - frac(5481, 46 thin 060) = frac(40 thin 579, 46 thin 060) approx 0","8810. $

  *c)* Gọi $C$ là biến cố có nhiều nhất 2 con gà trống trong 4 con được chọn.
  Số gà trống có thể là 0, 1 hoặc 2:
  - 0 gà trống (4 gà mái): có $C_(20)^4 = 4845$ cách.
  - 1 gà trống (3 gà mái): có $C_(30)^1 dot C_(20)^3 = 30 dot 1140 = 34 thin 200$ cách.
  - 2 gà trống (2 gà mái): có $C_(30)^2 dot C_(20)^2 = 435 dot 190 = 82 thin 650$ cách.

  Tổng số cách thuận lợi cho $C$ là $4845 + 34 thin 200 + 82 thin 650 = 121 thin 695$.
  $ P(C) = frac(121 thin 695, 230 thin 300) = frac(24 thin 339, 46 thin 060) approx 0","5284. $
]

#bai("1.3")[
  Một trường đại học tổ chức bốc thăm trúng thưởng trong một sự kiện với tổng cộng 5000 phiếu tham dự, trong đó có 50 phiếu trúng thưởng. Một sinh viên tham dự mua 5 phiếu tham dự. Tính xác suất để sinh viên đó có ít nhất một phiếu trúng thưởng trong số vé đã mua.
]
#giai[
  Tổng số phiếu là 5000, gồm 50 phiếu trúng và 4950 phiếu không trúng. Số cách chọn ngẫu nhiên 5 phiếu là $|Omega| = C_(5000)^5$.

  Gọi $A$ là biến cố sinh viên có ít nhất một phiếu trúng thưởng.
  Xét biến cố đối $overline(A)$: "Cả 5 phiếu mua đều không trúng thưởng".
  Số cách chọn thuận lợi cho $overline(A)$ là $C_(4950)^5$.
  $ P(overline(A)) = frac(C_(4950)^5, C_(5000)^5) = frac(4950 dot 4949 dot 4948 dot 4947 dot 4946, 5000 dot 4999 dot 4998 dot 4997 dot 4996) approx 0","95089. $

  Vậy xác suất để sinh viên có ít nhất một phiếu trúng thưởng là:
  $ P(A) = 1 - P(overline(A)) approx 1 - 0","95089 = 0","04911 thin (4","91%). $
]

#bai("1.4")[
  Một tổ có 15 sinh viên, gồm 6 nữ và 9 nam. Trong số 6 nữ đó có một sinh viên tên là Nga, còn trong 9 nam có một sinh viên tên là Bình. Lập một nhóm tốp ca gồm 5 sinh viên từ tổ này. Tính xác suất:
  #y[a) Trong đó có ít nhất 2 nam và ít nhất 1 nữ.]
  #y[b) Trong đó Nga và Bình không đồng thời có mặt.]
]
#giai[
  Số cách chọn ngẫu nhiên một nhóm 5 sinh viên từ 15 sinh viên là $|Omega| = C_(15)^5 = 3003$.

  *a)* Gọi $A$ là biến cố nhóm có ít nhất 2 nam và ít nhất 1 nữ.
  Vì nhóm gồm 5 người nên số nam chỉ có thể là 2, 3 hoặc 4 (tương ứng số nữ là 3, 2 hoặc 1):
  - 2 nam và 3 nữ: có $C_9^2 dot C_6^3 = 36 dot 20 = 720$ cách.
  - 3 nam và 2 nữ: có $C_9^3 dot C_6^2 = 84 dot 15 = 1260$ cách.
  - 4 nam và 1 nữ: có $C_9^4 dot C_6^1 = 126 dot 6 = 756$ cách.

  Tổng số cách chọn thuận lợi: $|A| = 720 + 1260 + 756 = 2736$.
  $ P(A) = frac(2736, 3003) = frac(912, 1001) approx 0","9111. $

  *b)* Gọi $B$ là biến cố Nga và Bình không đồng thời có mặt.
  Xét biến cố đối $overline(B)$: "Cả Nga và Bình đều có mặt trong nhóm".
  Khi đã chọn Nga và Bình (2 người), ta cần chọn thêm 3 người từ 13 người còn lại: có $C_(13)^3 = 286$ cách.
  $ P(overline(B)) = frac(C_(13)^3, C_(15)^5) = frac(286, 3003) = frac(2, 21). $
  Vậy xác suất Nga và Bình không đồng thời có mặt:
  $ P(B) = 1 - P(overline(B)) = 1 - frac(2, 21) = frac(19, 21) approx 0","9048. $
]

#bai("1.5")[
  Một hộp đựng 25 sản phẩm gồm 15 tốt và 10 kém chất lượng. Chọn ngẫu nhiên 7 sản phẩm từ hộp đó. Tính xác suất để trong 7 sản phẩm chọn ra có:
  #y[a) 4 sản phẩm tốt và 3 sản phẩm kém chất lượng.]
  #y[b) Ít nhất 5 sản phẩm tốt.]
]
#giai[
  Số cách chọn ngẫu nhiên 7 sản phẩm từ 25 sản phẩm là $|Omega| = C_(25)^7 = 480 thin 700$.

  *a)* Gọi $A$ là biến cố có 4 sản phẩm tốt và 3 sản phẩm kém chất lượng:
  $ P(A) = frac(C_(15)^4 dot C_(10)^3, C_(25)^7) = frac(1365 dot 120, 480 thin 700) = frac(163 thin 800, 480 thin 700) = frac(78, 229) approx 0","3408. $

  *b)* Gọi $B$ là biến cố có ít nhất 5 sản phẩm tốt (có thể là 5, 6 hoặc 7 tốt):
  - 5 tốt, 2 kém: có $C_(15)^5 dot C_(10)^2 = 3003 dot 45 = 135 thin 135$ cách.
  - 6 tốt, 1 kém: có $C_(15)^6 dot C_(10)^1 = 5005 dot 10 = 50 thin 050$ cách.
  - 7 tốt, 0 kém: có $C_(15)^7 dot C_(10)^0 = 6435 dot 1 = 6435$ cách.

  Tổng số cách chọn thuận lợi: $|B| = 135 thin 135 + 50 thin 050 + 6435 = 191 thin 620$.
  $ P(B) = frac(191 thin 620, 480 thin 700) = frac(1474, 3697) approx 0","3986. $
]

#bai("1.6")[
  Một hộp có 7 chính phẩm và 3 phế phẩm. Lấy ngẫu nhiên hai sản phẩm từ hộp để kiểm tra. Tính xác suất:
  #y[a) Lấy được hai phế phẩm.]
  #y[b) Lấy ra 1 phế phẩm.]
  #y[c) Lấy ra phế phẩm.]
]
#giai[
  Tổng số sản phẩm là $7 + 3 = 10$. Số cách lấy ngẫu nhiên 2 sản phẩm là $|Omega| = C_(10)^2 = 45$.

  *a)* Lấy được 2 phế phẩm:
  $ P(A) = frac(C_3^2, C_(10)^2) = frac(3, 45) = frac(1, 15) approx 0","0667. $

  *b)* Lấy ra đúng 1 phế phẩm (và 1 chính phẩm):
  $ P(B) = frac(C_3^1 dot C_7^1, C_(10)^2) = frac(3 dot 7, 45) = frac(21, 45) = frac(7, 15) approx 0","4667. $

  *c)* Lấy ra phế phẩm (nghĩa là có ít nhất 1 phế phẩm trong 2 sản phẩm lấy ra):
  Xét biến cố đối: "Cả hai sản phẩm lấy ra đều là chính phẩm":
  $ P(C) = 1 - frac(C_7^2, C_(10)^2) = 1 - frac(21, 45) = frac(24, 45) = frac(8, 15) approx 0","5333. $
  _(Hoặc cộng xác suất hai trường hợp xung khắc: $P(C) = P(A) + P(B) = 1/15 + 7/15 = 8/15$)._
]

#bai("1.7")[
  Trong một năm có 365 ngày, tại một thành phố có 80 ngày nhiệt độ cao bất thường và 50 ngày có sương mù dày đặc. Thống kê cho thấy có 25 ngày xảy ra cả hai hiện tượng trên. Hãy tính xác suất để một ngày được chọn ngẫu nhiên trong năm là ngày có hiện tượng thời tiết bất thường (nhiệt độ cao bất thường hoặc có sương mù dày đặc).
]
#giai[
  Không gian mẫu gồm 365 ngày trong năm, $|Omega| = 365$. Chọn ngẫu nhiên 1 ngày.
  Gọi:
  - $A$ là biến cố ngày có nhiệt độ cao bất thường: $P(A) = 80 / 365$.
  - $B$ là biến cố ngày có sương mù dày đặc: $P(B) = 50 / 365$.
  - $A inter B$ là biến cố ngày xảy ra cả hai hiện tượng trên: $P(A inter B) = 25 / 365$.

  Biến cố ngày có hiện tượng thời tiết bất thường (nhiệt độ cao hoặc sương mù dày đặc) là biến cố hợp $A union B$.

  Áp dụng công thức cộng xác suất cho hai biến cố bất kỳ:
  $ P(A union B) &= P(A) + P(B) - P(A inter B) \
                 &= frac(80, 365) + frac(50, 365) - frac(25, 365) = frac(105, 365) = frac(21, 73) approx 0","2877 thin (28","77%). $
]

#bai("1.8")[
  Một xưởng có 2 máy hoạt động độc lập. Trong một ngày làm việc, xác suất để hai máy này bị hỏng tương ứng là 0,1 và 0,05. Tính xác suất trong một ngày làm việc xưởng có:
  #y[a) máy hỏng;]
  #y[b) chỉ có 1 máy hỏng.]
]
#giai[
  Gọi $A_1$ là biến cố máy thứ nhất bị hỏng: $P(A_1) = 0","1 => P(overline(A)_1) = 0","9$.
  Gọi $A_2$ là biến cố máy thứ hai bị hỏng: $P(A_2) = 0","05 => P(overline(A)_2) = 0","95$.
  Vì hai máy hoạt động độc lập nên các biến cố $A_1, overline(A)_1$ độc lập với $A_2, overline(A)_2$.

  *a)* Xưởng có máy hỏng (ít nhất một máy bị hỏng):
  Xét biến cố đối là cả hai máy đều không bị hỏng:
  $ P("Cả hai máy không hỏng") = P(overline(A)_1) dot P(overline(A)_2) = 0","9 dot 0","95 = 0","855. $
  Xác suất xưởng có máy hỏng:
  $ P = 1 - 0","855 = 0","145 thin (14","5%). $

  *b)* Chỉ có đúng 1 máy hỏng (máy 1 hỏng và máy 2 tốt, hoặc máy 1 tốt và máy 2 hỏng):
  $ P = P(A_1 dot overline(A)_2) + P(overline(A)_1 dot A_2) = (0","1 dot 0","95) + (0","9 dot 0","05) = 0","095 + 0","045 = 0","140 thin (14%). $
]

#bai("1.9")[
  Ba xạ thủ cùng bắn mỗi người 1 viên đạn vào 1 con thú. Xác suất bắn trúng thú của từng xạ thủ tương ứng là 0,5 ; 0,6 ; 0,8.
  #y[a) Tính xác suất con thú trúng 2 viên đạn.]
  #y[b) Tính xác suất con thú bị trúng đạn.]
  #y[c) Giả sử thú bị trúng 2 viên đạn thì xác suất xạ thủ thứ nhất bắn trúng khi đó là bao nhiêu?]
]
#giai[
  Gọi $A_i$ là biến cố xạ thủ thứ $i$ bắn trúng ($i = 1, 2, 3$). Các biến cố độc lập với:
  $ P(A_1) = 0","5 &=> P(overline(A)_1) = 0","5; \
    P(A_2) = 0","6 &=> P(overline(A)_2) = 0","4; \
    P(A_3) = 0","8 &=> P(overline(A)_3) = 0","2. $

  *a)* Gọi $B_2$ là biến cố con thú trúng đúng 2 viên đạn:
  $ B_2 = (A_1 A_2 overline(A)_3) union (A_1 overline(A)_2 A_3) union (overline(A)_1 A_2 A_3). $
  Do các biến cố thành phần xung khắc từng đôi:
  $ P(B_2) &= (0","5 dot 0","6 dot 0","2) + (0","5 dot 0","4 dot 0","8) + (0","5 dot 0","6 dot 0","8) \
           &= 0","06 + 0","16 + 0","24 = 0","46 thin (46%). $

  *b)* Gọi $T$ là biến cố con thú bị trúng đạn (ít nhất 1 viên).
  Xét biến cố đối là cả ba xạ thủ đều trượt:
  $ P(overline(T)) = P(overline(A)_1) dot P(overline(A)_2) dot P(overline(A)_3) = 0","5 dot 0","4 dot 0","2 = 0","04. $
  Xác suất con thú bị trúng đạn:
  $ P(T) = 1 - P(overline(T)) = 1 - 0","04 = 0","96 thin (96%). $

  *c)* Xác suất xạ thủ thứ nhất bắn trúng biết rằng thú đã trúng 2 viên đạn:
  $ P(A_1 | B_2) = frac(P(A_1 inter B_2), P(B_2)). $
  Các trường hợp vừa thuộc $A_1$ vừa thuộc $B_2$ là $(A_1 A_2 overline(A)_3)$ và $(A_1 overline(A)_2 A_3)$:
  $ P(A_1 inter B_2) = (0","5 dot 0","6 dot 0","2) + (0","5 dot 0","4 dot 0","8) = 0","06 + 0","16 = 0","22. $
  Vậy:
  $ P(A_1 | B_2) = frac(0","22, 0","46) = frac(11, 23) approx 0","4783 thin (47","83%). $
]

#bai("1.10")[
  Một sinh viên dự thi hai môn học. Xác suất để sinh viên này đậu môn thứ nhất là 90%. Nếu sinh viên đã đậu môn thứ nhất, xác suất để đậu môn thứ hai là 70%. Nếu sinh viên trượt môn thứ nhất, xác suất để đậu môn thứ hai là 40%. Tính các xác suất sau đây:
  #y[a) Sinh viên đậu cả hai môn.]
  #y[b) Sinh viên đậu môn thứ hai.]
  #y[c) Sinh viên đậu ít nhất một môn.]
]
#giai[
  Gọi $A_1$ là biến cố sinh viên đậu môn 1: $P(A_1) = 0","9 => P(overline(A)_1) = 0","1$.
  Gọi $A_2$ là biến cố sinh viên đậu môn 2.
  Theo đề bài: $P(A_2 | A_1) = 0","7$ và $P(A_2 | overline(A)_1) = 0","4$.

  *a)* Sinh viên đậu cả hai môn ($A_1 inter A_2$):
  $ P(A_1 inter A_2) = P(A_1) dot P(A_2 | A_1) = 0","9 dot 0","7 = 0","63 thin (63%). $

  *b)* Sinh viên đậu môn thứ hai ($A_2$):
  Áp dụng công thức xác suất toàn phần theo hệ đầy đủ $\{A_1, overline(A)_1\}$:
  $ P(A_2) &= P(A_1) dot P(A_2 | A_1) + P(overline(A)_1) dot P(A_2 | overline(A)_1) \
           &= (0","9 dot 0","7) + (0","1 dot 0","4) = 0","63 + 0","04 = 0","67 thin (67%). $

  *c)* Sinh viên đậu ít nhất một môn ($A_1 union A_2$):
  $ P(A_1 union A_2) &= P(A_1) + P(A_2) - P(A_1 inter A_2) \
                     &= 0","9 + 0","67 - 0","63 = 0","94 thin (94%). $
  _Cách khác:_ Xét biến cố đối là trượt cả hai môn:
  $ P(overline(A)_1 overline(A)_2) = P(overline(A)_1) dot P(overline(A)_2 | overline(A)_1) = 0","1 dot (1 - 0","4) = 0","06 \
    => P(A_1 union A_2) = 1 - 0","06 = 0","94 thin (94%). $
]

#bai("1.11")[
  Một hãng sản xuất bo mạch điện tử có 3 nhà máy A, B, C. Tỉ lệ sản lượng của mỗi nhà máy như sau: nhà máy A sản xuất 50% tổng số bo mạch, nhà máy B sản xuất 30% tổng số bo mạch, nhà máy C sản xuất 20% tổng số bo mạch. Tỉ lệ sản phẩm lỗi của mỗi nhà máy như sau: nhà máy A là 2%, nhà máy B là 5%, nhà máy C là 1%.
  #y[a) Tính tỉ lệ sản phẩm lỗi của hãng sản xuất này.]
  #y[b) Một bo mạch được lấy ngẫu nhiên từ kho chứa sản phẩm của 3 nhà máy và nó bị lỗi. Hãy tính xác suất bo mạch đó đến từ nhà máy B.]
]
#giai[
  Gọi $A_1, A_2, A_3$ lần lượt là biến cố bo mạch do nhà máy A, B, C sản xuất.
  $\{A_1, A_2, A_3\}$ lập thành một hệ đầy đủ với xác suất:
  $ P(A_1) = 0","5; quad P(A_2) = 0","3; quad P(A_3) = 0","2. $
  Gọi $L$ là biến cố bo mạch bị lỗi. Tỉ lệ lỗi tương ứng:
  $ P(L | A_1) = 0","02; quad P(L | A_2) = 0","05; quad P(L | A_3) = 0","01. $

  *a)* Tỉ lệ sản phẩm lỗi của toàn hãng được tính theo công thức xác suất toàn phần:
  $ P(L) &= P(A_1) dot P(L | A_1) + P(A_2) dot P(L | A_2) + P(A_3) dot P(L | A_3) \
         &= (0","5 dot 0","02) + (0","3 dot 0","05) + (0","2 dot 0","01) \
         &= 0","010 + 0","015 + 0","002 = 0","027 thin (2","7%). $

  *b)* Biết bo mạch bị lỗi, xác suất bo mạch đó do nhà máy B sản xuất là $P(A_2 | L)$.
  Áp dụng công thức Bayes:
  $ P(A_2 | L) = frac(P(A_2) dot P(L | A_2), P(L)) = frac(0","3 dot 0","05, 0","027) = frac(0","015, 0","027) = frac(5, 9) approx 0","5556 thin (55","56%). $
]

#bai("1.12")[
  Trong một chùm hạt neutrino, giả sử có 30% số hạt là neutrino điện tử và 70% số hạt là neutrino muon. Một máy dò được thiết kế để phát hiện dấu hiệu đặc trưng giúp phân biệt hai loại neutrino này. Kết quả thí nghiệm cho thấy:
  - Nếu hạt là neutrino điện tử, xác suất máy dò phát hiện ra dấu hiệu đặc trưng này là 90%.
  - Nếu hạt là neutrino muon, xác suất máy dò phát hiện cũng cho ra cùng dấu hiệu là 10%.

  Khi một hạt đi qua máy dò, ta quan sát thấy dấu hiệu đặc trưng. Hãy tính xác suất hạt đó là neutrino điện tử.
]
#giai[
  Gọi $E$ là biến cố hạt là neutrino điện tử, $M$ là biến cố hạt là neutrino muon.
  Hệ $\{E, M\}$ là hệ đầy đủ với:
  $ P(E) = 0","3; quad P(M) = 0","7. $
  Gọi $D$ là biến cố máy dò phát hiện dấu hiệu đặc trưng. Theo đề bài:
  $ P(D | E) = 0","9; quad P(D | M) = 0","1. $

  Theo công thức xác suất toàn phần, xác suất quan sát thấy dấu hiệu đặc trưng là:
  $ P(D) &= P(E) dot P(D | E) + P(M) dot P(D | M) \
         &= (0","3 dot 0","9) + (0","7 dot 0","1) = 0","27 + 0","07 = 0","34. $

  Áp dụng công thức Bayes, xác suất hạt quan sát được là neutrino điện tử:
  $ P(E | D) = frac(P(E) dot P(D | E), P(D)) = frac(0","3 dot 0","9, 0","34) = frac(0","27, 0","34) = frac(27, 34) approx 0","7941 thin (79","41%). $
]

#bai("1.13.*")[
  Trong một cơ quan điều tra, người ta dùng máy dò tìm tội phạm. Kinh nghiệm cho biết cứ 10 người bị tình nghi thì 7 người là tội phạm. Máy báo đúng người có tội với xác suất 0,85. Máy báo sai người vô tội với xác suất 0,1. Một người được máy phân tích. Hãy tính xác suất:
  #y[a) Người này là tội phạm.]
  #y[b) Máy báo người này là tội phạm.]
  #y[c) Người này thực sự có tội, biết rằng máy đã báo có tội.]
  #y[d) Máy báo đúng.]
]
#giai[
  Gọi $T$ là biến cố người được phân tích là tội phạm, $overline(T)$ là biến cố người đó vô tội:
  $ P(T) = 7 / 10 = 0","7 => P(overline(T)) = 1 - 0","7 = 0","3. $
  Gọi $B$ là biến cố máy báo người này có tội. Giả thiết cho:
  - Máy báo đúng người có tội: $P(B | T) = 0","85$.
  - Máy báo sai người vô tội: $P(B | overline(T)) = 0","1$ (nghĩa là máy báo đúng người vô tội với xác suất $P(overline(B) | overline(T)) = 1 - 0","1 = 0","9$).

  *a)* Xác suất người này là tội phạm:
  $ P(T) = 0","7 thin (70%). $

  *b)* Xác suất máy báo người này là tội phạm $P(B)$. Theo công thức xác suất toàn phần:
  $ P(B) &= P(T) dot P(B | T) + P(overline(T)) dot P(B | overline(T)) \
         &= (0","7 dot 0","85) + (0","3 dot 0","1) = 0","595 + 0","03 = 0","625 thin (62","5%). $

  *c)* Xác suất người này thực sự có tội khi biết máy đã báo có tội $P(T | B)$. Áp dụng công thức Bayes:
  $ P(T | B) = frac(P(T) dot P(B | T), P(B)) = frac(0","595, 0","625) = frac(119, 125) = 0","952 thin (95","2%). $

  *d)* Gọi $D$ là biến cố máy báo đúng. Máy báo đúng khi:
  - Người có tội và máy báo có tội: $T inter B$, xác suất $P(T) dot P(B | T) = 0","7 dot 0","85 = 0","595$.
  - Người vô tội và máy báo vô tội: $overline(T) inter overline(B)$, xác suất $P(overline(T)) dot P(overline(B) | overline(T)) = 0","3 dot 0","9 = 0","27$.

  Vậy xác suất máy báo đúng là:
  $ P(D) = 0","595 + 0","27 = 0","865 thin (86","5%). $
]

#pagebreak()

== Tóm tắt kiến thức sử dụng trong chương 1

#block(
  width: 100%,
  stroke: 0.5pt + rgb("cbd5e1"),
  fill: rgb("f8fafc"),
  inset: 12pt,
  radius: 4pt,
)[
  *1. Định nghĩa cổ điển về xác suất và quy tắc đếm tổ hợp*
  - Nếu phép thử có không gian mẫu $Omega$ gồm $n$ biến cố đồng khả năng và biến cố $A$ có $m$ kết quả thuận lợi thì:
    $ P(A) = frac(m, n) = frac(|A|, |Omega|), quad 0 <= P(A) <= 1. $
  - Số tổ hợp chập $k$ của $n$ phần tử: $C_n^k = frac(n!, k!(n - k)!)$.
  - Số chỉnh hợp chập $k$ của $n$ phần tử: $A_n^k = frac(n!, (n - k)!)$.

  *2. Công thức cộng xác suất và biến cố đối*
  - Cho hai biến cố bất kỳ $A, B$:
    $ P(A union B) = P(A) + P(B) - P(A inter B). $
  - Khi $A$ và $B$ xung khắc ($A inter B = emptyset$): $P(A union B) = P(A) + P(B)$.
  - Biến cố đối $overline(A)$ ("không xảy ra biến cố $A$"): $P(A) = 1 - P(overline(A))$. Công thức này đặc biệt hiệu quả khi giải bài toán có từ khóa _"có ít nhất một"_.

  *3. Xác suất có điều kiện và công thức nhân xác suất*
  - Xác suất xảy ra $B$ khi biết $A$ đã xảy ra ($P(A) > 0$):
    $ P(B | A) = frac(P(A inter B), P(A)) => P(A inter B) = P(A) dot P(B | A). $
  - Công thức nhân cho $n$ biến cố:
    $ P(A_1 A_2 ... A_n) = P(A_1) dot P(A_2 | A_1) dot P(A_3 | A_1 A_2) ... P(A_n | A_1 A_2 ... A_(n - 1)). $
  - Hai biến cố $A$ và $B$ độc lập khi và chỉ khi:
    $ P(A inter B) = P(A) dot P(B) quad (equiv P(B | A) = P(B)). $

  *4. Công thức xác suất toàn phần*
  - Họ biến cố $\{A_1, A_2, ..., A_n\}$ được gọi là một *hệ đầy đủ* nếu chúng xung khắc từng đôi ($A_i inter A_j = emptyset, forall i eq.not j$) và $union_(i=1)^n A_i = Omega$.
  - Khi đó, với mọi biến cố $B$:
    $ P(B) = sum_(i=1)^n P(A_i) dot P(B | A_i). $

  *5. Công thức Bayes*
  - Cho hệ đầy đủ $\{A_1, A_2, ..., A_n\}$ và biến cố $B$ có $P(B) > 0$. Xác suất điều kiện của nguyên nhân $A_k$ khi biết kết quả $B$ đã xảy ra:
    $ P(A_k | B) = frac(P(A_k) dot P(B | A_k), P(B)) = frac(P(A_k) dot P(B | A_k), sum_(i=1)^n P(A_i) dot P(B | A_i)). $
]

#pagebreak()
= Bài tập chương 2

#bai("2.1")[
  Có 3 sinh viên làm bài thi môn xác suất thống kê. Xác suất đậu của mỗi sinh viên là 0,8; 0,6; 0,7. Gọi $X$ là số sinh viên đậu.
  #y[a) Lập bảng phân phối xác suất của $X$.]
  #y[b) Tính $P(X < 2)$.]
]
#giai[
  Gọi $A_1, A_2, A_3$ lần lượt là biến cố sinh viên thứ nhất, thứ hai, thứ ba đậu thi.
  Theo giả thiết, các biến cố độc lập với nhau và:
  $ P(A_1) = 0","8 &=> P(overline(A)_1) = 0","2; \
    P(A_2) = 0","6 &=> P(overline(A)_2) = 0","4; \
    P(A_3) = 0","7 &=> P(overline(A)_3) = 0","3. $

  Biến ngẫu nhiên $X$ là số sinh viên đậu thi, nhận các giá trị trong tập $\{0, 1, 2, 3\}$.
  - $X = 0$ (cả 3 đều trượt):
    $ P(X = 0) = P(overline(A)_1 overline(A)_2 overline(A)_3) = 0","2 dot 0","4 dot 0","3 = 0","024. $
  - $X = 1$ (đúng 1 sinh viên đậu):
    $ P(X = 1) &= P(A_1 overline(A)_2 overline(A)_3) + P(overline(A)_1 A_2 overline(A)_3) + P(overline(A)_1 overline(A)_2 A_3) \
               &= (0","8 dot 0","4 dot 0","3) + (0","2 dot 0","6 dot 0","3) + (0","2 dot 0","4 dot 0","7) \
               &= 0","096 + 0","036 + 0","056 = 0","188. $
  - $X = 2$ (đúng 2 sinh viên đậu):
    $ P(X = 2) &= P(A_1 A_2 overline(A)_3) + P(A_1 overline(A)_2 A_3) + P(overline(A)_1 A_2 A_3) \
               &= (0","8 dot 0","6 dot 0","3) + (0","8 dot 0","4 dot 0","7) + (0","2 dot 0","6 dot 0","7) \
               &= 0","144 + 0","224 + 0","084 = 0","452. $
  - $X = 3$ (cả 3 sinh viên đều đậu):
    $ P(X = 3) = P(A_1 A_2 A_3) = 0","8 dot 0","6 dot 0","7 = 0","336. $

  *a)* Bảng phân phối xác suất của $X$:
  #align(center)[
    #table(
      columns: (2.2cm, 1.8cm, 1.8cm, 1.8cm, 1.8cm),
      align: center + horizon,
      stroke: 0.4pt,
      [$X$], [0], [1], [2], [3],
      [$P$], [0,024], [0,188], [0,452], [0,336],
    )
  ]

  *b)* Tính $P(X < 2)$:
  $ P(X < 2) = P(X = 0) + P(X = 1) = 0","024 + 0","188 = 0","212 thin (21","2%). $
]

#bai("2.2")[
  Một người mới tập bắn cung với 4 mũi tên. Người này sẽ lần lượt bắn từng cung tên cho đến khi trúng hồng tâm hoặc hết cả 4 mũi tên. Gọi $X$ là số mũi tên được bắn. Biết xác suất bắn trúng hồng tâm của người này là 0,4.
  #y[a) Lập bảng phân phối xác suất của $X$.]
  #y[b) Tính $P(1 <= X <= 2)$.]
]
#giai[
  Mỗi lần bắn trúng với xác suất $p = 0","4$, bắn trượt với xác suất $q = 1 - 0","4 = 0","6$.
  Người này sẽ dừng khi trúng hồng tâm hoặc khi đã bắn hết 4 mũi tên.
  Tập giá trị của $X$ là $\{1, 2, 3, 4\}$.
  - $X = 1$ (trúng ngay ở lần bắn thứ nhất):
    $ P(X = 1) = 0","4. $
  - $X = 2$ (lần 1 trượt, lần 2 trúng):
    $ P(X = 2) = 0","6 dot 0","4 = 0","24. $
  - $X = 3$ (lần 1 và 2 trượt, lần 3 trúng):
    $ P(X = 3) = (0","6)^2 dot 0","4 = 0","36 dot 0","4 = 0","144. $
  - $X = 4$ (3 lần đầu đều trượt, lần thứ tư phải bắn dù trúng hay trượt cũng dừng):
    $ P(X = 4) = (0","6)^3 = 0","216. $

  *a)* Bảng phân phối xác suất của $X$:
  #align(center)[
    #table(
      columns: (2.2cm, 1.8cm, 1.8cm, 1.8cm, 1.8cm),
      align: center + horizon,
      stroke: 0.4pt,
      [$X$], [1], [2], [3], [4],
      [$P$], [0,400], [0,240], [0,144], [0,216],
    )
  ]

  *b)* Tính $P(1 <= X <= 2)$:
  $ P(1 <= X <= 2) = P(X = 1) + P(X = 2) = 0","4 + 0","24 = 0","64 thin (64%). $
]

#bai("2.3")[
  Hộp sản phẩm có 8 sản phẩm loại A, 4 sản phẩm loại B. Một khách hàng chọn ngẫu nhiên 2 sản phẩm từ hộp để mua.
  #y[a) Gọi $X$ là số sản phẩm loại A trong 2 sản phẩm. Tìm phân phối xác suất của $X$.]
  #y[b) Giá của mỗi sản phẩm loại A là 200 000 đ, mỗi sản phẩm loại B là 160 000 đ. Gọi $Y$ là tổng số tiền khách hàng trên phải trả. Tìm phân phối xác suất của $Y$.]
]
#giai[
  Tổng số sản phẩm là $8 + 4 = 12$. Số cách chọn ngẫu nhiên 2 sản phẩm là $|Omega| = C_(12)^2 = 66$.

  *a)* Biến ngẫu nhiên $X$ nhận các giá trị trong $\{0, 1, 2\}$:
  - Với $X = 0$:
    $ P(X = 0) = frac(C_8^0 dot C_4^2, C_(12)^2) = frac(1 dot 6, 66) = frac(6, 66) = frac(1, 11) approx 0","0909. $
  - Với $X = 1$:
    $ P(X = 1) = frac(C_8^1 dot C_4^1, C_(12)^2) = frac(8 dot 4, 66) = frac(32, 66) = frac(16, 33) approx 0","4848. $
  - Với $X = 2$:
    $ P(X = 2) = frac(C_8^2 dot C_4^0, C_(12)^2) = frac(28 dot 1, 66) = frac(28, 66) = frac(14, 33) approx 0","4242. $

  Bảng phân phối xác suất của $X$:
  #align(center)[
    #table(
      columns: (2.2cm, 2.2cm, 2.2cm, 2.2cm),
      align: center + horizon,
      stroke: 0.4pt,
      [$X$], [0], [1], [2],
      [$P$], [$1/11$], [$16/33$], [$14/33$],
    )
  ]

  *b)* Nếu chọn được $X$ sản phẩm loại A thì số sản phẩm loại B là $2 - X$.
  Tổng số tiền phải trả $Y$ (đồng) là:
  $ Y = 200 thin 000 dot X + 160 thin 000 dot (2 - X) = 320 thin 000 + 40 thin 000 dot X. $
  - Với $X = 0$: $Y = 320 thin 000$ đ với $P(Y = 320 thin 000) = P(X = 0) = 1/11$.
  - Với $X = 1$: $Y = 360 thin 000$ đ với $P(Y = 360 thin 000) = P(X = 1) = 16/33$.
  - Với $X = 2$: $Y = 400 thin 000$ đ với $P(Y = 400 thin 000) = P(X = 2) = 14/33$.

  Bảng phân phối xác suất của $Y$:
  #align(center)[
    #table(
      columns: (2.4cm, 2.4cm, 2.4cm, 2.4cm),
      align: center + horizon,
      stroke: 0.4pt,
      [$Y$ (đồng)], [320 000], [360 000], [400 000],
      [$P$], [$1/11$], [$16/33$], [$14/33$],
    )
  ]
]

#bai("2.4")[
  Cho biến ngẫu nhiên $X$ có hàm mật độ xác suất: $f(x) = cases(
    0 &quad x <= 2,
    a x - 1 &quad 2 < x <= 4,
    0 &quad x > 4.
  )$
  #y[a) Tính giá trị của $a$.]
  #y[b) Tính $P(3 <= X <= 5)$.]
  #y[c) Tìm hàm phân phối xác suất của $X$.]
]
#giai[
  *a)* Điều kiện chuẩn hóa của hàm mật độ xác suất:
  $ integral_(-infinity)^(+infinity) f(x) dif x = 1 <=> integral_2^4 (a x - 1) dif x = 1. $
  Ta có:
  $ integral_2^4 (a x - 1) dif x &= [ a frac(x^2, 2) - x ]_2^4 = (8 a - 4) - (2 a - 2) = 6 a - 2. $
  Suy ra: $6 a - 2 = 1 <=> 6 a = 3 <=> a = 1 / 2 = 0","5$.
  Khi đó $f(x) = 0","5 x - 1 >= 0$ với mọi $x in (2, 4]$.

  *b)* Tính $P(3 <= X <= 5)$:
  Do $f(x) = 0$ khi $x > 4$, ta có:
  $ P(3 <= X <= 5) &= integral_3^4 (0","5 x - 1) dif x = [ frac(x^2, 4) - x ]_3^4 \
                   &= (4 - 4) - (9 / 4 - 3) = 0 - (- 3 / 4) = frac(3, 4) = 0","75. $

  *c)* Hàm phân phối xác suất $F(x) = integral_(-infinity)^x f(t) dif t$:
  - Với $x <= 2$: $F(x) = 0$.
  - Với $2 < x <= 4$:
    $ F(x) = integral_2^x (0","5 t - 1) dif t = [ frac(t^2, 4) - t ]_2^x = (frac(x^2, 4) - x) - (1 - 2) = frac(x^2, 4) - x + 1. $
  - Với $x > 4$: $F(x) = 1$.

  Vậy:
  $ F(x) = cases(
    0 &quad x <= 2,
    frac(x^2, 4) - x + 1 &quad 2 < x <= 4,
    1 &quad x > 4.
  ) $
]

#bai("2.5")[
  Cho biến ngẫu nhiên $X$ liên tục có hàm mật độ xác suất: $f(x) = cases(
    k(1 - x^2) &quad |x| <= 1,
    0 &quad |x| > 1.
  )$
  #y[a) Tính giá trị của $k$.]
  #y[b) Tính $P(-2 <= X <= 0)$.]
  #y[c) Tìm hàm phân phối xác suất của $X$.]
]
#giai[
  *a)* Điều kiện chuẩn hóa của hàm mật độ:
  $ integral_(-infinity)^(+infinity) f(x) dif x = 1 <=> integral_(-1)^1 k (1 - x^2) dif x = 1. $
  Do hàm số chẵn nên:
  $ integral_(-1)^1 (1 - x^2) dif x = 2 integral_0^1 (1 - x^2) dif x = 2 [ x - frac(x^3, 3) ]_0^1 = 2 (1 - 1 / 3) = frac(4, 3). $
  Suy ra: $k dot 4 / 3 = 1 <=> k = 3 / 4$.
  Khi đó $f(x) = 3 / 4 (1 - x^2) >= 0$ với mọi $|x| <= 1$.

  *b)* Tính $P(-2 <= X <= 0)$:
  Vì $f(x) = 0$ khi $x < -1$:
  $ P(-2 <= X <= 0) &= integral_(-1)^0 frac(3, 4) (1 - x^2) dif x = frac(3, 4) [ x - frac(x^3, 3) ]_(-1)^0 \
                    &= frac(3, 4) [ 0 - (-1 + 1 / 3) ] = frac(3, 4) dot frac(2, 3) = frac(1, 2) = 0","5. $
  _(Nhận xét: do $f(x)$ đối xứng qua trục tung nên hiển nhiên $P(X <= 0) = 0","5$)._

  *c)* Hàm phân phối xác suất $F(x) = integral_(-infinity)^x f(t) dif t$:
  - Với $x < -1$: $F(x) = 0$.
  - Với $-1 <= x <= 1$:
    $ F(x) = integral_(-1)^x frac(3, 4) (1 - t^2) dif t = frac(3, 4) [ t - frac(t^3, 3) ]_(-1)^x = frac(3, 4) (x - frac(x^3, 3) + frac(2, 3)) = frac(1, 2) + frac(3 x - x^3, 4). $
  - Với $x > 1$: $F(x) = 1$.

  Vậy:
  $ F(x) = cases(
    0 &quad x < -1,
    frac(1, 2) + frac(3 x - x^3, 4) &quad -1 <= x <= 1,
    1 &quad x > 1.
  ) $
]

#bai("2.6")[
  Đề thi trắc nghiệm có 50 câu hỏi, mỗi câu có 4 cách trả lời, trong đó chỉ có một cách trả lời đúng. Kết quả trả lời các câu hỏi không ảnh hưởng đến kết quả của các câu khác. Mỗi câu trả lời đúng được 0,2 điểm. Thí sinh A trả lời đúng 10 câu, các câu còn lại trả lời ngẫu nhiên. Tính xác suất để thí sinh này được 5 điểm.
]
#giai[
  - Thí sinh đã trả lời đúng 10 câu chắc chắn, tương ứng với số điểm có sẵn là: $10 dot 0","2 = 2$ điểm.
  - Để đạt được 5 điểm, thí sinh cần lấy thêm $5 - 2 = 3$ điểm từ các câu còn lại.
  - Số câu còn lại trả lời ngẫu nhiên là $50 - 10 = 40$ câu.
  - Số câu cần trả lời đúng trong 40 câu này là $3 / 0","2 = 15$ câu.
  - Mỗi câu trả lời ngẫu nhiên có 4 phương án (1 phương án đúng), nên xác suất trả lời đúng mỗi câu là $p = 1 / 4 = 0","25$; xác suất sai là $q = 0","75$.
  - Gọi $K$ là số câu đúng trong 40 câu trả lời ngẫu nhiên. $K$ tuân theo phân phối nhị thức $B(n = 40, p = 0","25)$.

  Áp dụng công thức Bernoulli, xác suất để thí sinh đạt đúng 5 điểm:
  $ P(K = 15) &= C_(40)^(15) dot (0","25)^(15) dot (0","75)^(25) \
              &= 40 thin 225 thin 345 thin 056 dot (0","25)^(15) dot (0","75)^(25) \
              &approx 0","0357 thin (3","57%). $
]

#bai("2.7")[
  Xác suất của sinh viên ra trường làm việc không đúng chuyên ngành là 0,3. Tính xác suất trong 10 sinh viên ra trường có không quá một người làm việc không đúng chuyên ngành.
]
#giai[
  Gọi $X$ là số sinh viên làm việc không đúng chuyên ngành trong 10 sinh viên ra trường.
  $X$ tuân theo phân phối nhị thức $B(n = 10, p = 0","3)$ với $q = 1 - 0","3 = 0","7$.
  Biến cố "có không quá một người làm việc không đúng chuyên ngành" tương ứng với $X <= 1$ (tức $X = 0$ hoặc $X = 1$).

  Áp dụng công thức Bernoulli:
  $ P(X <= 1) &= P(X = 0) + P(X = 1) \
              &= C_(10)^0 dot (0","3)^0 dot (0","7)^(10) + C_(10)^1 dot (0","3)^1 dot (0","7)^9 \
              &= (0","7)^(10) + 10 dot 0","3 dot (0","7)^9 \
              &approx 0","02825 + 0","12106 = 0","1493 thin (14","93%). $
]

#bai("2.8")[
  Một trung tâm bưu điện nhận được trung bình 150 cuộc gọi trong một giờ. Tìm xác suất để trung tâm bưu điện này nhận được không quá 2 cuộc gọi trong 1 phút.
]
#giai[
  Đổi đơn vị: 1 giờ = 60 phút.
  Số cuộc gọi trung bình đến bưu điện trong 1 phút là:
  $ lambda = frac(150, 60) = 2","5 thin ("cuộc gọi/phút"). $
  Gọi $X$ là số cuộc gọi bưu điện nhận được trong 1 phút. $X$ tuân theo phân phối Poisson với tham số $lambda = 2","5$:
  $ P(X = k) = frac(lambda^k e^(-lambda), k!) = frac((2","5)^k e^(-2","5), k!). $

  Xác suất để trung tâm nhận được không quá 2 cuộc gọi trong 1 phút ($X <= 2$):
  $ P(X <= 2) &= P(X = 0) + P(X = 1) + P(X = 2) \
              &= e^(-2","5) [ frac((2","5)^0, 0!) + frac((2","5)^1, 1!) + frac((2","5)^2, 2!) ] \
              &= e^(-2","5) [ 1 + 2","5 + 3","125 ] = 6","625 dot e^(-2","5) \
              &approx 6","625 dot 0","082085 approx 0","5438 thin (54","38%). $
]

#bai("2.9")[
  Một máy thu tín hiệu đặc biệt trung bình nhận được 6 tín hiệu/giờ.
  #y[a) Tính xác suất máy thu được 4 tín hiệu trong một giờ.]
  #y[b) Người ta cử một nhân viên theo dõi tín hiệu của máy thu này trong mỗi giờ và quy định khi có từ 2 tín hiệu trở lên trong một giờ thì nhân viên này phải ghi báo cáo, nếu không thì bị kỷ luật. Một ngày làm việc, nhân viên này ngủ gật trong một giờ nên không biết trong giờ đó có ghi báo cáo hay không. Tính xác suất nhân viên này bị kỷ luật vì không ghi báo cáo trong giờ đó.]
]
#giai[
  Gọi $X$ là số tín hiệu máy thu được trong một giờ. $X$ tuân theo phân phối Poisson $P(lambda = 6)$:
  $ P(X = k) = frac(6^k e^(-6), k!). $

  *a)* Xác suất máy thu được 4 tín hiệu trong một giờ:
  $ P(X = 4) = frac(6^4 e^(-6), 4!) = frac(1296, 24) e^(-6) = 54 e^(-6) approx 54 dot 0","00247875 approx 0","1339 thin (13","39%). $

  *b)* Nhân viên bị kỷ luật vì không ghi báo cáo khi trong giờ đó có từ 2 tín hiệu trở lên ($X >= 2$).
  Xét biến cố đối $X < 2$ (có 0 hoặc 1 tín hiệu):
  $ P(X < 2) &= P(X = 0) + P(X = 1) = frac(6^0 e^(-6), 0!) + frac(6^1 e^(-6), 1!) \
             &= e^(-6) (1 + 6) = 7 e^(-6) approx 7 dot 0","00247875 approx 0","01735. $
  Xác suất nhân viên bị kỷ luật là:
  $ P(X >= 2) = 1 - P(X < 2) = 1 - 7 e^(-6) approx 1 - 0","01735 = 0","9827 thin (98","27%). $
]

#bai("2.10")[
  Trong một cơ sở công nghiệp, tai nạn xảy ra không thường xuyên. Người ta theo dõi và nhận thấy xác suất một ngày có tai nạn là 0,005 và các tai nạn thì độc lập với nhau. Giả sử xét trong một năm có 365 ngày. Xác suất để
  #y[a) Có một ngày có tai nạn là bao nhiêu?]
  #y[b) Có tối đa 3 ngày có tai nạn là bao nhiêu?]
]
#giai[
  Gọi $X$ là số ngày có tai nạn trong một năm (365 ngày).
  $X$ tuân theo phân phối nhị thức $B(n = 365, p = 0","005)$.
  Vì $n = 365$ lớn và $p = 0","005$ rất bé ($n p = 365 dot 0","005 = 1","825 < 5$), ta áp dụng định lý xấp xỉ Poisson với $lambda = n p = 1","825$:
  $ P(X = k) approx frac(lambda^k e^(-lambda), k!) = frac((1","825)^k e^(-1","825), k!). $

  *a)* Xác suất có đúng một ngày có tai nạn ($X = 1$):
  $ P(X = 1) approx frac((1","825)^1 e^(-1","825), 1!) = 1","825 dot e^(-1","825) approx 1","825 dot 0","161218 approx 0","2942 thin (29","42%). $
  _(Nếu tính chính xác theo nhị thức: $P(X = 1) = C_(365)^1 dot (0","005)^1 dot (0","995)^(364) approx 0","2950$)._

  *b)* Xác suất có tối đa 3 ngày có tai nạn ($X <= 3$):
  $ P(X <= 3) &= P(X = 0) + P(X = 1) + P(X = 2) + P(X = 3) \
              &approx e^(-1","825) [ 1 + 1","825 + frac((1","825)^2, 2) + frac((1","825)^3, 6) ] \
              &approx e^(-1","825) [ 1 + 1","825 + 1","66531 + 1","01308 ] = 5","50339 dot e^(-1","825) \
              &approx 5","50339 dot 0","161218 approx 0","8872 thin (88","72%). $
  _(Nếu tính chính xác theo nhị thức: $P(X <= 3) approx 0","8876$)._
]

#bai("2.11")[
  Khối lượng một sản phẩm $X$ (gam) do một máy tự động sản xuất ra với $X tilde N(100, 2)$. Sản phẩm được coi là đạt kĩ thuật nếu khối lượng của nó đạt từ 98 đến 103 gam. Tìm tỉ lệ sản phẩm không đạt kĩ thuật của máy.
]
#giai[
  Biến ngẫu nhiên $X$ có phân phối chuẩn với kì vọng $mu = 100$ và độ lệch tiêu chuẩn $sigma = 2$.
  Sản phẩm đạt kĩ thuật khi khối lượng nằm trong đoạn $[98, 103]$ gam.
  Áp dụng công thức tính xác suất theo hàm Laplace tích phân $Phi(z) = frac(1, sqrt(2 pi)) integral_0^z e^(-t^2/2) dif t$:
  $ P(a <= X <= b) = Phi(frac(b - mu, sigma)) - Phi(frac(a - mu, sigma)). $
  Thay số với $a = 98, b = 103, mu = 100, sigma = 2$:
  $ z_1 = frac(98 - 100, 2) = -1","0; quad z_2 = frac(103 - 100, 2) = 1","5. $
  Tỉ lệ sản phẩm đạt kĩ thuật là:
  $ P(98 <= X <= 103) &= Phi(1","5) - Phi(-1","0) = Phi(1","5) + Phi(1","0). $
  Tra bảng Phụ lục 1: $Phi(1","5) = 0","4332$ và $Phi(1","0) = 0","3413$:
  $ P(98 <= X <= 103) = 0","4332 + 0","3413 = 0","7745 thin (77","45%). $

  Vậy tỉ lệ sản phẩm không đạt kĩ thuật của máy là:
  $ P("Không đạt") = 1 - 0","7745 = 0","2255 thin (22","55%). $

  _Ghi chú:_ Nếu đề bài quy ước tham số thứ hai là phương sai $sigma^2 = 2 => sigma = sqrt(2) approx 1","414$, thì $z_1 = -sqrt(2) approx -1","41$ và $z_2 = 3/sqrt(2) approx 2","12$. Khi đó tỉ lệ đạt kĩ thuật là $Phi(2","12) + Phi(1","41) = 0","4830 + 0","4207 = 0","9037$, suy ra tỉ lệ không đạt là $1 - 0","9037 = 0","0963 thin (9","63%)$.
]

#bai("2.12")[
  Tuổi thọ của một loại sản phẩm là biến ngẫu nhiên có phân phối chuẩn trung bình $mu = 11$ năm và $sigma = 2$.
  #y[a) Nếu quy định thời gian bảo hành là 10 năm thì tỉ lệ bảo hành là bao nhiêu?]
  #y[b) Nếu muốn tỉ lệ bảo hành là 10% thì phải quy định thời gian bảo hành là bao nhiêu năm?]
]
#giai[
  Gọi $X$ là tuổi thọ của sản phẩm (năm), $X tilde N(mu = 11, sigma^2 = 2^2)$ với $sigma = 2$.

  *a)* Thời gian bảo hành là 10 năm. Tỉ lệ bảo hành chính là xác suất sản phẩm bị hỏng trước 10 năm ($X < 10$):
  $ P(X < 10) = 0","5 + Phi(frac(10 - 11, 2)) = 0","5 + Phi(-0","5) = 0","5 - Phi(0","5). $
  Tra bảng Phụ lục 1: $Phi(0","5) = 0","1915$.
  Vậy tỉ lệ bảo hành là:
  $ P(X < 10) = 0","5 - 0","1915 = 0","3085 thin (30","85%). $

  *b)* Gọi $T$ là thời gian bảo hành cần quy định sao cho tỉ lệ bảo hành là $10% = 0","1$:
  $ P(X < T) = 0","1 &<=> 0","5 + Phi(frac(T - 11, 2)) = 0","1 \
                     &<=> Phi(frac(T - 11, 2)) = -0","4000 \
                     &<=> Phi(frac(11 - T, 2)) = 0","4000. $
  Tra ngược bảng Phụ lục 1: với $Phi(1","28) = 0","3997 approx 0","4000$ (nội suy chính xác là $z approx 1","282$).
  Do đó:
  $ frac(11 - T, 2) = 1","282 <=> 11 - T = 2","564 <=> T = 8","436 thin ("năm"). $
  Vậy cần quy định thời gian bảo hành khoảng 8,44 năm (khoảng 8 năm 5 tháng).
]

#bai("2.13")[
  Bến tàu cánh ngầm xuất hiện tại bến đợi từ 7h sáng, cứ 30 phút có một chuyến đi Vũng Tàu. Giả sử thời gian xuất hiện của một hành khách tại bến tàu có phân phối đều từ 7 giờ đến 7h30 giờ. Tính xác suất người đó phải đợi:
  #y[a) Ít hơn 5 phút.]
  #y[b) Nhiều hơn 20 phút.]
]
#giai[
  Chọn gốc thời gian là 7h00 sáng, đơn vị là phút. Chuyến tàu tiếp theo xuất phát lúc 7h30 (tức phút thứ 30).
  Thời điểm hành khách đến bến là biến ngẫu nhiên $X$ có phân phối đều trên đoạn $[0, 30]$: $X tilde U(0, 30)$.
  Hàm mật độ xác suất:
  $ f(x) = cases(
    frac(1, 30) &quad 0 <= x <= 30,
    0 &quad "ngoài đoạn này".
  ) $
  Thời gian hành khách phải đợi tàu là $T = 30 - X$ (phút).

  *a)* Người đó phải đợi ít hơn 5 phút ($T < 5$):
  $ 30 - X < 5 <=> X > 25. $
  Hành khách đến bến trong khoảng thời gian từ phút 25 đến phút 30 ($25 < X <= 30$):
  $ P(T < 5) = P(25 < X <= 30) = integral_(25)^(30) frac(1, 30) dif x = frac(30 - 25, 30) = frac(5, 30) = frac(1, 6) approx 0","1667 thin (16","67%). $

  *b)* Người đó phải đợi nhiều hơn 20 phút ($T > 20$):
  $ 30 - X > 20 <=> X < 10. $
  Hành khách đến bến trong khoảng thời gian từ phút 0 đến phút 10 ($0 <= X < 10$):
  $ P(T > 20) = P(0 <= X < 10) = integral_0^(10) frac(1, 30) dif x = frac(10 - 0, 30) = frac(10, 30) = frac(1, 3) approx 0","3333 thin (33","33%). $
]

#bai("2.14*")[
  Giả sử một hệ thống chứa một loại thành phần nhất định có thời gian xảy ra hư hỏng được tính theo năm là $T$. Biến ngẫu nhiên $T$ có phân phối mũ với hệ số $1/5$. Nếu có 5 thành phần được lắp đặt trong các hệ thống khác nhau, tính xác suất có ít nhất 2 thành phần vẫn hoạt động sau 8 năm.
]
#giai[
  Thời gian hư hỏng của một thành phần là $T tilde "Exp"(lambda = 1/5 = 0","2)$.
  Hàm phân phối của $T$ là $F_T (t) = 1 - e^(-lambda t)$ ($t >= 0$).
  Xác suất để một thành phần vẫn còn hoạt động tốt sau 8 năm ($T > 8$) là:
  $ p = P(T > 8) = 1 - F_T (8) = e^(-0","2 dot 8) = e^(-1","6) approx 0","2019. $

  Có 5 thành phần hoạt động độc lập trong 5 hệ thống.
  Gọi $X$ là số thành phần vẫn hoạt động sau 8 năm. $X$ tuân theo phân phối nhị thức $B(n = 5, p approx 0","2019)$.
  Xác suất có ít nhất 2 thành phần vẫn hoạt động ($X >= 2$):
  $ P(X >= 2) = 1 - P(X < 2) = 1 - [ P(X = 0) + P(X = 1) ]. $
  Trong đó:
  - $P(X = 0) = C_5^0 dot (1 - p)^5 = (1 - 0","2019)^5 = (0","7981)^5 approx 0","3258.$
  - $P(X = 1) = C_5^1 dot p dot (1 - p)^4 = 5 dot 0","2019 dot (0","7981)^4 approx 0","4120.$

  Suy ra:
  $ P(X >= 2) approx 1 - (0","3258 + 0","4120) = 1 - 0","7378 = 0","2622 thin (26","22%). $
]

#bai("2.15*")[
  Tại nhà máy A, trung bình một tháng có hai tai nạn lao động. Coi số tai nạn xảy ra trong một tháng là biến ngẫu nhiên. Tính xác suất để:
  #y[a) Trong khoảng thời gian ba tháng, xảy ra nhiều nhất 3 tai nạn?]
  #y[b) Trong 3 tháng liên tiếp, mỗi tháng xảy ra nhiều nhất một tai nạn?]
]
#giai[
  Số tai nạn trong 1 tháng tuân theo phân phối Poisson với cường độ trung bình $lambda_1 = 2$ (tai nạn/tháng).

  *a)* Trong khoảng thời gian 3 tháng, số tai nạn là biến ngẫu nhiên $Y tilde P(lambda_3)$ với:
  $ lambda_3 = 3 dot lambda_1 = 3 dot 2 = 6 thin ("tai nạn/3 tháng"). $
  Xác suất xảy ra nhiều nhất 3 tai nạn trong 3 tháng ($Y <= 3$):
  $ P(Y <= 3) &= sum_(k=0)^3 frac(6^k e^(-6), k!) = e^(-6) [ 1 + 6 + frac(6^2, 2) + frac(6^3, 6) ] \
              &= e^(-6) [ 1 + 6 + 18 + 36 ] = 61 e^(-6) \
              &approx 61 dot 0","00247875 approx 0","1512 thin (15","12%). $

  *b)* Gọi $X_i$ là số tai nạn trong tháng thứ $i$ ($i = 1, 2, 3$). Các $X_i$ độc lập và cùng có phân phối $P(lambda = 2)$.
  Xác suất để trong một tháng xảy ra nhiều nhất 1 tai nạn là:
  $ p_1 = P(X_i <= 1) = P(X_i = 0) + P(X_i = 1) = e^(-2) (1 + 2) = 3 e^(-2) approx 3 dot 0","135335 approx 0","4060. $
  Do tính độc lập giữa các tháng, xác suất để trong 3 tháng liên tiếp, mỗi tháng đều xảy ra nhiều nhất 1 tai nạn:
  $ P = (p_1)^3 = (3 e^(-2))^3 = 27 e^(-6) approx 27 dot 0","00247875 approx 0","0669 thin (6","69%). $
]

#bai("2.16*")[
  Một trục máy được sản xuất ra gọi là đạt kĩ thuật nếu trị tuyệt đối sai lệch giữa đường kính của nó với đường kính thiết kế không quá 0,33mm. Biết đường kính của trục máy là biến ngẫu nhiên $X$ có phân phối chuẩn với độ lệch tiêu chuẩn là 0,3mm.
  #y[a) Tìm xác suất một máy đạt kĩ thuật.]
  #y[b) Lấy ngẫu nhiên 5 trục máy loại này. Tìm xác suất có 3 trục đạt kĩ thuật.]
]
#giai[
  Gọi $mu$ là đường kính thiết kế. Đường kính trục máy $X tilde N(mu, sigma^2)$ với $sigma = 0","3$ mm.
  Sai lệch giữa đường kính thực tế và thiết kế là $|X - mu|$.

  *a)* Trục máy đạt kĩ thuật khi $|X - mu| <= 0","33$ mm.
  Áp dụng công thức xác suất độ lệch của phân phối chuẩn:
  $ P(|X - mu| <= epsilon) = 2 Phi(frac(epsilon, sigma)). $
  Với $epsilon = 0","33$ mm và $sigma = 0","3$ mm, ta có $z = frac(0","33, 0","3) = 1","10$.
  Tra bảng Phụ lục 1: $Phi(1","10) = 0","3643$.
  Xác suất một trục máy đạt kĩ thuật là:
  $ p = 2 Phi(1","10) = 2 dot 0","3643 = 0","7286 thin (72","86%). $

  *b)* Lấy ngẫu nhiên 5 trục máy độc lập.
  Gọi $K$ là số trục máy đạt kĩ thuật trong 5 trục được lấy ra.
  $K$ tuân theo phân phối nhị thức $B(n = 5, p = 0","7286)$ với $q = 1 - 0","7286 = 0","2714$.
  Xác suất có đúng 3 trục đạt kĩ thuật:
  $ P(K = 3) &= C_5^3 dot p^3 dot q^2 = 10 dot (0","7286)^3 dot (0","2714)^2 \
             &approx 10 dot 0","38678 dot 0","07366 approx 0","2849 thin (28","49%). $
]

#pagebreak()

== Tóm tắt kiến thức sử dụng trong chương 2

#block(
  width: 100%,
  stroke: 0.5pt + rgb("cbd5e1"),
  fill: rgb("f8fafc"),
  inset: 12pt,
  radius: 4pt,
)[
  *1. Biến ngẫu nhiên rời rạc & Hàm phân phối xác suất*
  - *Bảng phân phối xác suất:* Biến ngẫu nhiên $X$ nhận các giá trị $x_i$ với xác suất tương ứng $p_i = P(X = x_i)$, thỏa mãn $p_i >= 0$ và $sum_i p_i = 1$.
  - *Hàm phân phối xác suất:* $F(x) = P(X <= x) = sum_(x_i <= x) p_i$. Tính chất: $0 <= F(x) <= 1$, đơn điệu tăng và $P(a < X <= b) = F(b) - F(a)$.

  *2. Biến ngẫu nhiên liên tục & Hàm mật độ xác suất*
  - *Hàm mật độ:* $f(x) >= 0$, thỏa mãn điều kiện chuẩn hóa $integral_(-infinity)^(+infinity) f(x) dif x = 1$.
  - *Hàm phân phối:* $F(x) = integral_(-infinity)^x f(t) dif t <=> F'(x) = f(x)$.
  - *Tính xác suất:* Với mọi khoảng $[a, b]$, $P(a <= X <= b) = integral_a^b f(x) dif x = F(b) - F(a)$. Đối với biến ngẫu nhiên liên tục, $P(X = c) = 0$ với mọi điểm $c$.

  *3. Phân phối Nhị thức (Binomial Distribution)*
  - Thực hiện $n$ phép thử Bernoulli độc lập, mỗi phép thử có xác suất thành công là $p$ ($q = 1 - p$).
  - Biến ngẫu nhiên $X$ là số lần thành công: $X tilde B(n, p)$.
    $ P(X = k) = C_n^k p^k (1 - p)^(n - k), quad k = 0, 1, 2, ..., n. $

  *4. Phân phối Poisson*
  - Mô hình hóa số biến cố xảy ra trong một khoảng thời gian hoặc không gian xác định với cường độ trung bình $lambda > 0$: $X tilde P(lambda)$.
    $ P(X = k) = frac(lambda^k e^(-lambda), k!), quad k = 0, 1, 2, ... $
  - *Tính chất cộng:* Nếu $X_1 tilde P(lambda_1)$ và $X_2 tilde P(lambda_2)$ độc lập thì $X_1 + X_2 tilde P(lambda_1 + lambda_2)$.
  - *Xấp xỉ Poisson:* Khi $n$ lớn và $p$ nhỏ ($n >= 30, n p < 5$), phân phối nhị thức $B(n, p) approx P(lambda = n p)$.

  *5. Các phân phối liên tục quan trọng*
  - *Phân phối đều $U(a, b)$:* $f(x) = frac(1, b - a)$ khi $a <= x <= b$; xác suất $P(c <= X <= d) = frac(d - c, b - a)$.
  - *Phân phối mũ $"Exp"(lambda)$:* $f(t) = lambda e^(-lambda t)$ ($t >= 0$), hàm phân phối $F(t) = 1 - e^(-lambda t)$, xác suất sống sót $P(T > t) = e^(-lambda t)$.
  - *Phân phối chuẩn $N(mu, sigma^2)$:*
    $ P(a <= X <= b) = Phi(frac(b - mu, sigma)) - Phi(frac(a - mu, sigma)), quad "với" Phi(z) = frac(1, sqrt(2 pi)) integral_0^z e^(-t^2/2) dif t. $
    Tính chất đối xứng: $Phi(-z) = -Phi(z)$, $P(|X - mu| <= epsilon) = 2 Phi(frac(epsilon, sigma))$, $P(X <= x) = 0","5 + Phi(frac(x - mu, sigma))$.
]


#pagebreak()

= Bài tập chương 3

#bai("3.1")[
  Trong một cửa hàng bán nước mắm có 12 thùng nước mắm, trong đó: 5 thùng loại 1, 4 thùng loại 2 và 3 thùng loại 3. Lấy ngẫu nhiên một lúc 2 thùng. Gọi $X$ và $Y$ là số thùng loại 1 và loại 2 có trong 2 thùng lấy ra.
  #y[a) Lập bảng phân phối xác suất của $(X, Y)$.]
  #y[b) Tìm phân phối xác suất của số thùng loại 2 nếu trong 2 thùng lấy ra có 1 thùng loại 1.]
]
#giai[
  Tổng số thùng nước mắm là $5 + 4 + 3 = 12$ thùng.
  Số cách chọn ngẫu nhiên 2 thùng là $|Omega| = C_(12)^2 = 66$.
  $X$ là số thùng loại 1, $Y$ là số thùng loại 2. Do chỉ lấy 2 thùng nên $X, Y in {0, 1, 2}$ và thỏa mãn điều kiện $0 <= X + Y <= 2$.
  Số thùng loại 3 được chọn là $2 - (X + Y)$.
  Xác suất đồng thời của cặp $(X, Y)$ được tính theo công thức:
  $ P(X = x, Y = y) = frac(C_5^x dot C_4^y dot C_3^(2 - x - y), C_(12)^2). $

  *a)* Tính xác suất cho từng ô $(x, y)$:
  - Với $X = 0$:
    $ P(0, 0) &= frac(C_5^0 dot C_4^0 dot C_3^2, 66) = frac(1 dot 1 dot 3, 66) = frac(3, 66); \
      P(0, 1) &= frac(C_5^0 dot C_4^1 dot C_3^1, 66) = frac(1 dot 4 dot 3, 66) = frac(12, 66); \
      P(0, 2) &= frac(C_5^0 dot C_4^2 dot C_3^0, 66) = frac(1 dot 6 dot 1, 66) = frac(6, 66). $
  - Với $X = 1$:
    $ P(1, 0) &= frac(C_5^1 dot C_4^0 dot C_3^1, 66) = frac(5 dot 1 dot 3, 66) = frac(15, 66); \
      P(1, 1) &= frac(C_5^1 dot C_4^1 dot C_3^0, 66) = frac(5 dot 4 dot 1, 66) = frac(20, 66); \
      P(1, 2) &= 0 quad ("do" X + Y = 3 > 2). $
  - Với $X = 2$:
    $ P(2, 0) &= frac(C_5^2 dot C_4^0 dot C_3^0, 66) = frac(10 dot 1 dot 1, 66) = frac(10, 66); \
      P(2, 1) &= 0; quad P(2, 2) = 0. $

  Bảng phân phối xác suất đồng thời của $(X, Y)$ và các phân phối biên:
  #align(center)[
    #table(
      columns: (2cm, 1.8cm, 1.8cm, 1.8cm, 2cm),
      align: center + horizon,
      stroke: 0.4pt,
      [$X backslash Y$], [0], [1], [2], [$P(X)$],
      [0], [$3/66$], [$12/66$], [$6/66$], [$21/66$],
      [1], [$15/66$], [$20/66$], [0], [$35/66$],
      [2], [$10/66$], [0], [0], [$10/66$],
      [$P(Y)$], [$28/66$], [$32/66$], [$6/66$], [1],
    )
  ]

  *b)* Tìm phân phối xác suất có điều kiện của $Y$ khi biết $X = 1$:
  Theo công thức xác suất có điều kiện:
  $ P(Y = y | X = 1) = frac(P(X = 1, Y = y), P(X = 1)). $
  Từ bảng phân phối, ta có $P(X = 1) = 35/66$:
  $ P(Y = 0 | X = 1) &= frac(15/66, 35/66) = frac(15, 35) = frac(3, 7) approx 0","4286; \
    P(Y = 1 | X = 1) &= frac(20/66, 35/66) = frac(20, 35) = frac(4, 7) approx 0","5714; \
    P(Y = 2 | X = 1) &= 0. $

  Bảng phân phối xác suất của $Y$ với điều kiện $X = 1$:
  #align(center)[
    #table(
      columns: (2.5cm, 2.5cm, 2.5cm),
      align: center + horizon,
      stroke: 0.4pt,
      [$Y$], [0], [1],
      [$P(Y | X = 1)$], [$3/7$], [$4/7$],
    )
  ]
]

#bai("3.2")[
  Anh Nam đi công tác ở Đà Lạt mua 10 hộp trà, trong đó có 2 hộp trà Olong, 5 hộp trà xanh và 3 hộp trà đen. Anh lấy ngẫu nhiên 2 hộp trà để dùng trong nhà. Gọi $X$ là số hộp trà đen và $Y$ là số hộp trà xanh mà anh đã lấy ra. Hãy lập bảng phân phối xác suất của $(X, Y)$.
]
#giai[
  Tổng số hộp trà là $3 + 5 + 2 = 10$ hộp.
  Số cách chọn ngẫu nhiên 2 hộp trà là $|Omega| = C_(10)^2 = 45$.
  $X$ là số hộp trà đen, $Y$ là số hộp trà xanh ($X, Y in {0, 1, 2}$ và $0 <= X + Y <= 2$).
  Số hộp trà Olong lấy ra là $2 - (X + Y)$.
  Xác suất đồng thời được tính bởi:
  $ P(X = x, Y = y) = frac(C_3^x dot C_5^y dot C_2^(2 - x - y), C_(10)^2). $

  Tính xác suất cho từng ô $(x, y)$:
  - Với $X = 0$:
    $ P(0, 0) &= frac(C_3^0 dot C_5^0 dot C_2^2, 45) = frac(1 dot 1 dot 1, 45) = frac(1, 45); \
      P(0, 1) &= frac(C_3^0 dot C_5^1 dot C_2^1, 45) = frac(1 dot 5 dot 2, 45) = frac(10, 45); \
      P(0, 2) &= frac(C_3^0 dot C_5^2 dot C_2^0, 45) = frac(1 dot 10 dot 1, 45) = frac(10, 45). $
  - Với $X = 1$:
    $ P(1, 0) &= frac(C_3^1 dot C_5^0 dot C_2^1, 45) = frac(3 dot 1 dot 2, 45) = frac(6, 45); \
      P(1, 1) &= frac(C_3^1 dot C_5^1 dot C_2^0, 45) = frac(3 dot 5 dot 1, 45) = frac(15, 45); \
      P(1, 2) &= 0 quad ("do" X + Y = 3 > 2). $
  - Với $X = 2$:
    $ P(2, 0) &= frac(C_3^2 dot C_5^0 dot C_2^0, 45) = frac(3 dot 1 dot 1, 45) = frac(3, 45); \
      P(2, 1) &= 0; quad P(2, 2) = 0. $

  Bảng phân phối xác suất đồng thời của $(X, Y)$ (kèm phân phối biên):
  #align(center)[
    #table(
      columns: (2cm, 1.8cm, 1.8cm, 1.8cm, 2.2cm),
      align: center + horizon,
      stroke: 0.4pt,
      [$X backslash Y$], [0], [1], [2], [$P(X)$],
      [0], [$1/45$], [$10/45$], [$10/45$], [$21/45 = 7/15$],
      [1], [$6/45$], [$15/45$], [0], [$21/45 = 7/15$],
      [2], [$3/45$], [0], [0], [$3/45 = 1/15$],
      [$P(Y)$], [$10/45 = 2/9$], [$25/45 = 5/9$], [$10/45 = 2/9$], [1],
    )
  ]
]

#bai("3.3")[
  Cho hàm mật độ của biến ngẫu nhiên hai chiều $(X, Y)$:
  $
    f(x, y) = cases(
      x e^(-x(1+y)) & quad x > 0 and y > 0,
      0 & quad x <= 0 or y <= 0.
    )
  $
  Tìm hàm mật độ $f_X (x)$ của $X$.
]
#giai[
  Hàm mật độ biên của $X$ được xác định bởi:
  $ f_X (x) = integral_(-infinity)^(+infinity) f(x, y) dif y. $
  - Khi $x <= 0$: $f(x, y) = 0 => f_X (x) = 0$.
  - Khi $x > 0$: vì $f(x, y) = 0$ khi $y <= 0$, tích phân chỉ lấy trên khoảng $(0, +infinity)$:
    $ f_X (x) &= integral_0^(+infinity) x e^(-x(1 + y)) dif y = integral_0^(+infinity) x e^(-x) dot e^(-x y) dif y \
              &= x e^(-x) integral_0^(+infinity) e^(-x y) dif y. $
    Do $x > 0$ là hằng số đối với biến tích phân $y$, ta có:
    $ integral_0^(+infinity) e^(-x y) dif y = [ - frac(1, x) e^(-x y) ]_0^(+infinity) = 0 - (- frac(1, x)) = frac(1, x). $
    Suy ra:
    $ f_X (x) = x e^(-x) dot frac(1, x) = e^(-x). $

  Vậy hàm mật độ xác suất của $X$ là:
  $ f_X (x) = cases(
    e^(-x) &quad x > 0,
    0 &quad x <= 0.
  ) $
  _(Biến ngẫu nhiên $X$ có phân phối mũ với tham số $lambda = 1$)._
]

#bai("3.4")[
  Giả sử $X, Y$ là tuổi thọ (tính bằng năm) của hai thành phần trong một hệ thống điện có hàm mật độ xác suất đồng thời:
  $
    f(x, y) = cases(
      e^(-(x+y)) & quad x > 0 and y > 0,
      0 & quad x <= 0 or y <= 0.
    )
  $
  #y[a) Tìm hàm mật độ xác suất của $X$, của $Y$.]
  #y[b) $X$ và $Y$ có độc lập không?]
]
#giai[
  *a)* Tìm hàm mật độ xác suất biên $f_X (x)$ và $f_Y (y)$:
  - Với $x <= 0$: $f_X (x) = 0$.
  - Với $x > 0$:
    $ f_X (x) = integral_0^(+infinity) e^(-(x + y)) dif y = e^(-x) integral_0^(+infinity) e^(-y) dif y = e^(-x) [ -e^(-y) ]_0^(+infinity) = e^(-x) (0 - (-1)) = e^(-x). $
    Vậy:
    $ f_X (x) = cases(
      e^(-x) &quad x > 0,
      0 &quad x <= 0.
    ) $
  - Tương tự, do biểu thức $f(x, y) = e^(-(x + y))$ đối xứng giữa $x$ và $y$:
    $ f_Y (y) = cases(
      e^(-y) &quad y > 0,
      0 &quad y <= 0.
    ) $

  *b)* Kiểm tra tính độc lập của $X$ và $Y$:
  - Với mọi $x > 0$ và $y > 0$:
    $ f_X (x) dot f_Y (y) = e^(-x) dot e^(-y) = e^(-(x + y)) = f(x, y). $
  - Với $x <= 0$ hoặc $y <= 0$:
    $ f(x, y) = 0 quad "và" quad f_X (x) dot f_Y (y) = 0. $
  Như vậy $f(x, y) = f_X (x) dot f_Y (y)$ với mọi $(x, y) in bb(R)^2$.
  Do đó, hai biến ngẫu nhiên $X$ và $Y$ *độc lập* với nhau.
]

#bai("3.5")[
  Cho các biến ngẫu nhiên $X, Y$ có bảng phân phối đồng thời
  #align(center)[
    #v(3pt)
    #table(
      columns: (2cm, 2cm, 2cm, 2cm),
      align: center + horizon,
      stroke: 0.4pt,
      [$X backslash Y$], [1], [2], [3],
      [1], [0,12], [0,15], [0,03],
      [2], [0,28], [0,35], [0,07],
    )
  ]
  #y[a) Tìm các phân phối biên.]
  #y[b) Chứng minh $X$ và $Y$ độc lập.]
  #y[c) Tìm luật phân phối xác suất của $Z = X Y$.]
]
#giai[
  *a)* Tìm các phân phối biên:
  - Phân phối biên của $X$:
    $ P(X = 1) &= 0","12 + 0","15 + 0","03 = 0","30. \
      P(X = 2) &= 0","28 + 0","35 + 0","07 = 0","70. $
    #align(center)[
      #table(
        columns: (2cm, 2cm, 2cm),
        align: center + horizon,
        stroke: 0.4pt,
        [$X$], [1], [2],
        [$P$], [0,30], [0,70],
      )
    ]
  - Phân phối biên của $Y$:
    $ P(Y = 1) &= 0","12 + 0","28 = 0","40. \
      P(Y = 2) &= 0","15 + 0","35 = 0","50. \
      P(Y = 3) &= 0","03 + 0","07 = 0","10. $
    #align(center)[
      #table(
        columns: (2cm, 2cm, 2cm, 2cm),
        align: center + horizon,
        stroke: 0.4pt,
        [$Y$], [1], [2], [3],
        [$P$], [0,40], [0,50], [0,10],
      )
    ]

  *b)* Chứng minh $X$ và $Y$ độc lập:
  Ta kiểm tra đẳng thức $P(X = x_i, Y = y_j) = P(X = x_i) dot P(Y = y_j)$ với tất cả các ô:
  - $P(X = 1, Y = 1) = 0","12 = 0","30 dot 0","40 = P(X = 1) dot P(Y = 1)$.
  - $P(X = 1, Y = 2) = 0","15 = 0","30 dot 0","50 = P(X = 1) dot P(Y = 2)$.
  - $P(X = 1, Y = 3) = 0","03 = 0","30 dot 0","10 = P(X = 1) dot P(Y = 3)$.
  - $P(X = 2, Y = 1) = 0","28 = 0","70 dot 0","40 = P(X = 2) dot P(Y = 1)$.
  - $P(X = 2, Y = 2) = 0","35 = 0","70 dot 0","50 = P(X = 2) dot P(Y = 2)$.
  - $P(X = 2, Y = 3) = 0","07 = 0","70 dot 0","10 = P(X = 2) dot P(Y = 3)$.
  Vì đẳng thức đúng với mọi cặp $(x_i, y_j)$, nên $X$ và $Y$ *độc lập* với nhau.

  *c)* Tìm luật phân phối xác suất của $Z = X Y$:
  Tập giá trị của $Z$:
  - $Z = 1 dot 1 = 1$: $P(Z = 1) = P(1, 1) = 0","12$.
  - $Z = 2$ khi $(X = 1, Y = 2)$ hoặc $(X = 2, Y = 1)$:
    $ P(Z = 2) = P(1, 2) + P(2, 1) = 0","15 + 0","28 = 0","43. $
  - $Z = 1 dot 3 = 3$: $P(Z = 3) = P(1, 3) = 0","03$.
  - $Z = 2 dot 2 = 4$: $P(Z = 4) = P(2, 2) = 0","35$.
  - $Z = 2 dot 3 = 6$: $P(Z = 6) = P(2, 3) = 0","07$.

  Bảng phân phối xác suất của $Z$:
  #align(center)[
    #table(
      columns: (1.8cm, 1.6cm, 1.6cm, 1.6cm, 1.6cm, 1.6cm),
      align: center + horizon,
      stroke: 0.4pt,
      [$Z$], [1], [2], [3], [4], [6],
      [$P$], [0,12], [0,43], [0,03], [0,35], [0,07],
    )
  ]
]

#bai("3.6")[
  Thống kê về lãi suất cổ phiếu tính cho 100\$ khi đầu tư vào hai ngân hàng A và B trong một năm tương ứng là $X$ (%), $Y$ (%) cho kết quả như sau:
  #align(center)[
    #v(3pt)
    #table(
      columns: (2cm, 2cm, 2cm, 2cm),
      align: center + horizon,
      stroke: 0.4pt,
      [$X backslash Y$], [$-2$], [5], [10],
      [$-1$], [0,10], [0,15], [0,10],
      [4], [0,05], [0,20], [0,10],
      [8], [0,10], [0,15], [0,05],
    )
  ]
  #y[a) $X$ và $Y$ có độc lập nhau không?]
  #y[b) Lập bảng phân phối xác suất của $T = X + Y$.]
]
#giai[
  *a)* Tính phân phối biên của $X$ và $Y$:
  - Phân phối biên của $X$:
    $ P(X = -1) &= 0","10 + 0","15 + 0","10 = 0","35; \
      P(X = 4)  &= 0","05 + 0","20 + 0","10 = 0","35; \
      P(X = 8)  &= 0","10 + 0","15 + 0","05 = 0","30. $
  - Phân phối biên của $Y$:
    $ P(Y = -2) &= 0","10 + 0","05 + 0","10 = 0","25; \
      P(Y = 5)  &= 0","15 + 0","20 + 0","15 = 0","50; \
      P(Y = 10) &= 0","10 + 0","10 + 0","05 = 0","25. $

  Xét ô $(X = -1, Y = -2)$:
  $ P(X = -1, Y = -2) = 0","10. $
  Trong khi đó:
  $ P(X = -1) dot P(Y = -2) = 0","35 dot 0","25 = 0","0875 eq.not 0","10. $
  Vì $P(X = -1, Y = -2) eq.not P(X = -1) dot P(Y = -2)$ nên hai biến ngẫu nhiên $X$ và $Y$ *không độc lập*.

  *b)* Lập bảng phân phối xác suất của $T = X + Y$:
  Các giá trị có thể có của tổng $T = X + Y$ và xác suất tương ứng:
  - $T = -1 + (-2) = -3$: $P(T = -3) = P(-1, -2) = 0","10$.
  - $T = 4 + (-2) = 2$: $P(T = 2) = P(4, -2) = 0","05$.
  - $T = -1 + 5 = 4$: $P(T = 4) = P(-1, 5) = 0","15$.
  - $T = 8 + (-2) = 6$: $P(T = 6) = P(8, -2) = 0","10$.
  - $T = 9$ xảy ra khi $(X = -1, Y = 10)$ hoặc $(X = 4, Y = 5)$:
    $ P(T = 9) = P(-1, 10) + P(4, 5) = 0","10 + 0","20 = 0","30. $
  - $T = 8 + 5 = 13$: $P(T = 13) = P(8, 5) = 0","15$.
  - $T = 4 + 10 = 14$: $P(T = 14) = P(4, 10) = 0","10$.
  - $T = 8 + 10 = 18$: $P(T = 18) = P(8, 10) = 0","05$.

  Bảng phân phối xác suất của $T$:
  #align(center)[
    #table(
      columns: (1.5cm, 1.4cm, 1.4cm, 1.4cm, 1.4cm, 1.4cm, 1.4cm, 1.4cm, 1.4cm),
      align: center + horizon,
      stroke: 0.4pt,
      [$T$], [$-3$], [2], [4], [6], [9], [13], [14], [18],
      [$P$], [0,10], [0,05], [0,15], [0,10], [0,30], [0,15], [0,10], [0,05],
    )
  ]
]

#bai("3.7", kind: "Câu")[
  Cho hàm mật độ đồng thời của $X$ và $Y$: $f(x, y) = cases(
    x + y &quad 0 < x < 1 and 0 < y < 1,
    0 &quad x in.not (0, 1) or y in.not (0, 1).
  )$

  $X, Y$ có độc lập không?
]
#giai[
  Tìm các hàm mật độ xác suất biên $f_X (x)$ và $f_Y (y)$:
  - Với $0 < x < 1$:
    $ f_X (x) = integral_0^1 (x + y) dif y = [ x y + frac(y^2, 2) ]_0^1 = x + frac(1, 2). $
    Với $x in.not (0, 1)$: $f_X (x) = 0$.
  - Do tính đối xứng, với $0 < y < 1$:
    $ f_Y (y) = integral_0^1 (x + y) dif x = y + frac(1, 2). $
    Với $y in.not (0, 1)$: $f_Y (y) = 0$.

  Kiểm tra tính độc lập:
  Xét tích hai hàm mật độ biên trên miền hình vuông $(0, 1) times (0, 1)$:
  $ f_X (x) dot f_Y (y) = (x + frac(1, 2)) (y + frac(1, 2)) = x y + frac(1, 2) x + frac(1, 2) y + frac(1, 4). $
  Trong khi đó, hàm mật độ đồng thời là $f(x, y) = x + y$.
  Rõ ràng:
  $ f_X (x) dot f_Y (y) = x y + frac(1, 2) x + frac(1, 2) y + frac(1, 4) eq.not x + y = f(x, y). $
  _(Ví dụ với $x = 0","2, y = 0","2$ thì $f(0","2; 0","2) = 0","4$, trong khi $f_X (0","2) dot f_Y (0","2) = 0","7 dot 0","7 = 0","49 eq.not 0","4$)._

  Vì $f(x, y) eq.not f_X (x) dot f_Y (y)$ nên hai biến ngẫu nhiên $X$ và $Y$ *không độc lập*.
]

#pagebreak()

== Tóm tắt kiến thức sử dụng trong chương 3

#block(
  width: 100%,
  stroke: 0.5pt + rgb("cbd5e1"),
  fill: rgb("f8fafc"),
  inset: 12pt,
  radius: 4pt,
)[
  *1. Biến ngẫu nhiên hai chiều rời rạc & Bảng phân phối đồng thời*
  - *Bảng phân phối đồng thời:* Xác định bởi tập các cặp giá trị $(x_i, y_j)$ và các xác suất tương ứng $p_(i j) = P(X = x_i, Y = y_j)$, thỏa mãn:
    $ p_(i j) >= 0 quad "và" quad sum_i sum_j p_(i j) = 1. $
  - *Phân phối biên:*
    $ P(X = x_i) = sum_j p_(i j); quad P(Y = y_j) = sum_i p_(i j). $
  - *Phân phối có điều kiện:*
    $ P(Y = y_j | X = x_i) = frac(P(X = x_i, Y = y_j), P(X = x_i)) = frac(p_(i j), P(X = x_i)) quad (P(X = x_i) > 0). $

  *2. Biến ngẫu nhiên hai chiều liên tục & Hàm mật độ đồng thời*
  - *Hàm mật độ đồng thời $f(x, y)$:* Thỏa mãn $f(x, y) >= 0$ và điều kiện chuẩn hóa:
    $ integral_(-infinity)^(+infinity) integral_(-infinity)^(+infinity) f(x, y) dif x dif y = 1. $
  - *Hàm mật độ biên:*
    $ f_X (x) = integral_(-infinity)^(+infinity) f(x, y) dif y; quad f_Y (y) = integral_(-infinity)^(+infinity) f(x, y) dif x. $
  - *Tính xác suất trên miền $D$:* $P((X, Y) in D) = integral.double_D f(x, y) dif x dif y$.

  *3. Tính độc lập của hai biến ngẫu nhiên*
  - *Trường hợp rời rạc:* $X$ và $Y$ độc lập khi và chỉ khi với mọi cặp $(x_i, y_j)$:
    $ P(X = x_i, Y = y_j) = P(X = x_i) dot P(Y = y_j). $
    _(Chỉ cần tìm ra một ô có $p_(i j) eq.not P(X = x_i) dot P(Y = y_j)$ là đủ kết luận không độc lập)._
  - *Trường hợp liên tục:* $X$ và $Y$ độc lập khi và chỉ khi:
    $ f(x, y) = f_X (x) dot f_Y (y) quad "với hầu khắp" (x, y) in bb(R)^2. $

  *4. Phân phối xác suất của hàm các biến ngẫu nhiên hai chiều*
  - Với hàm $Z = g(X, Y)$ (như $Z = X + Y$ hoặc $Z = X Y$), bảng phân phối xác suất của $Z$ được tìm bằng cách tính giá trị $z_k = g(x_i, y_j)$ cho từng ô và cộng xác suất của các ô có cùng giá trị:
    $ P(Z = z_k) = sum_(g(x_i, y_j) = z_k) P(X = x_i, Y = y_j). $
]


#pagebreak()

= Bài tập chương 4

#bai("4.1")[
  Khảo sát số khách trên một xe buýt người ta thu được bảng số liệu sau:
  #align(center)[
    #v(3pt)
    #table(
      columns: (4cm, 1.5cm, 1.5cm, 1.5cm, 1.5cm, 1.5cm),
      align: center + horizon,
      stroke: 0.4pt,
      [Số khách/chuyến], [25], [30], [35], [40], [45],
      [Tần suất], [0,10], [0,2], [0,35], [0,25], [0,1],
    )
  ]
  Tìm kì vọng, độ lệch tiêu chuẩn của số khách đi trên một chuyến.
]
#giai[
  Gọi $X$ là số khách đi trên một chuyến xe buýt.
  Từ bảng phân phối xác suất:

  - Kì vọng của số khách:
    $ E(X) &= sum x_i p_i \
           &= (25 dot 0","10) + (30 dot 0","20) + (35 dot 0","35) + (40 dot 0","25) + (45 dot 0","10) \
           &= 2","5 + 6","0 + 12","25 + 10","0 + 4","5 = 35","25 thin ("khách/chuyến"). $

  - Tính kì vọng bậc hai:
    $ E(X^2) &= sum x_i^2 p_i \
             &= (25^2 dot 0","10) + (30^2 dot 0","20) + (35^2 dot 0","35) + (40^2 dot 0","25) + (45^2 dot 0","10) \
             &= 62","5 + 180","0 + 428","75 + 400","0 + 202","5 = 1273","75. $

  - Phương sai của số khách:
    $ V(X) = E(X^2) - [E(X)]^2 = 1273","75 - (35","25)^2 = 1273","75 - 1242","5625 = 31","1875. $

  - Độ lệch tiêu chuẩn:
    $ sigma(X) = sqrt(V(X)) = sqrt(31","1875) approx 5","5846 thin ("khách/chuyến"). $
]

#bai("4.2")[
  Cho biến ngẫu nhiên $X$ với hàm mật độ xác suất $f(x) = cases(
    2/x^2 &quad 1 <= x <= 2,
    0 &quad x in.not [1; 2].
  )$
  #y[a) Tìm kì vọng và phương sai của $X$.]
  #y[b) Tìm kì vọng của $Y = X^5 - 2/X$.]
]
#giai[
  *a)* Tìm kì vọng và phương sai của $X$:
  - Kì vọng $E(X)$:
    $ E(X) &= integral_(-infinity)^(+infinity) x f(x) dif x = integral_1^2 x dot frac(2, x^2) dif x = integral_1^2 frac(2, x) dif x \
           &= [ 2 ln x ]_1^2 = 2 ln 2 - 2 ln 1 = 2 ln 2 approx 1","3863. $

  - Tính $E(X^2)$:
    $ E(X^2) &= integral_1^2 x^2 dot frac(2, x^2) dif x = integral_1^2 2 dif x = [ 2 x ]_1^2 = 4 - 2 = 2. $

  - Phương sai $V(X)$:
    $ V(X) &= E(X^2) - [E(X)]^2 = 2 - (2 ln 2)^2 = 2 - 4 (ln 2)^2 approx 2 - 1","9218 = 0","0782. $

  *b)* Kì vọng của $Y = X^5 - 2/X$:
  Áp dụng công thức tính kì vọng của hàm của biến ngẫu nhiên:
  $ E(Y) &= integral_1^2 (x^5 - frac(2, x)) dot frac(2, x^2) dif x = integral_1^2 (2 x^3 - frac(4, x^3)) dif x \
         &= [ 2 frac(x^4, 4) - 4 (frac(x^(-2), -2)) ]_1^2 = [ frac(x^4, 2) + frac(2, x^2) ]_1^2 \
         &= (frac(2^4, 2) + frac(2, 2^2)) - (frac(1^4, 2) + frac(2, 1^2)) \
         &= (8 + 0","5) - (0","5 + 2) = 8","5 - 2","5 = 6. $
]

#bai("4.3")[
  Cho $X, Y$ là lợi nhuận thu được khi đầu tư 100 triệu đồng cho từng dự án có các bảng phân phối xác suất:
  #align(center)[
    #v(3pt)
    #grid(
      columns: (auto, auto),
      gutter: 1.2cm,
      table(
        columns: (1cm, 0.9cm, 0.9cm, 0.9cm, 0.9cm, 0.9cm, 0.9cm),
        align: center + horizon,
        stroke: 0.4pt,
        [$X$], [$-3$], [$-1$], [0], [1], [2], [3],
        [$P$], [0,1], [0,1], [0,2], [0,2], [0,3], [0,1],
      ),
      table(
        columns: (1cm, 0.9cm, 0.9cm, 0.9cm, 0.9cm, 0.9cm),
        align: center + horizon,
        stroke: 0.4pt,
        [$Y$], [$-2$], [$-1$], [0], [1], [3],
        [$P$], [0,1], [0,2], [0,2], [0,2], [0,3],
      ),
    )
  ]
  Đầu tư vào dự án nào ít rủi ro hơn?
]
#giai[
  Mức độ rủi ro trong đầu tư được đo lường bằng phương sai $V$ hoặc độ lệch tiêu chuẩn $sigma$ của lợi nhuận (phương sai càng nhỏ thì mức độ biến động càng thấp, dự án càng ít rủi ro).

  - Đối với dự án $X$:
    $ E(X) &= (-3 dot 0","1) + (-1 dot 0","1) + (0 dot 0","2) + (1 dot 0","2) + (2 dot 0","3) + (3 dot 0","1) \
           &= -0","3 - 0","1 + 0 + 0","2 + 0","6 + 0","3 = 0","7 thin ("triệu đồng"). $
    $ E(X^2) &= ((-3)^2 dot 0","1) + ((-1)^2 dot 0","1) + (0^2 dot 0","2) + (1^2 dot 0","2) + (2^2 dot 0","3) + (3^2 dot 0","1) \
             &= 0","9 + 0","1 + 0 + 0","2 + 1","2 + 0","9 = 3","3. $
    $ V(X) &= E(X^2) - [E(X)]^2 = 3","3 - (0","7)^2 = 3","3 - 0","49 = 2","81; \
      sigma(X) &= sqrt(2","81) approx 1","6763. $

  - Đối với dự án $Y$:
    $ E(Y) &= (-2 dot 0","1) + (-1 dot 0","2) + (0 dot 0","2) + (1 dot 0","2) + (3 dot 0","3) \
           &= -0","2 - 0","2 + 0 + 0","2 + 0","9 = 0","7 thin ("triệu đồng"). $
    $ E(Y^2) &= ((-2)^2 dot 0","1) + ((-1)^2 dot 0","2) + (0^2 dot 0","2) + (1^2 dot 0","2) + (3^2 dot 0","3) \
             &= 0","4 + 0","2 + 0 + 0","2 + 2","7 = 3","5. $
    $ V(Y) &= E(Y^2) - [E(Y)]^2 = 3","5 - (0","7)^2 = 3","5 - 0","49 = 3","01; \
      sigma(Y) &= sqrt(3","01) approx 1","7349. $

  *Kết luận:* Hai dự án có cùng mức lợi nhuận kì vọng ($E(X) = E(Y) = 0","7$ triệu đồng), nhưng phương sai của dự án $X$ nhỏ hơn dự án $Y$ ($V(X) = 2","81 < V(Y) = 3","01$).
  Do đó, đầu tư vào *dự án X ít rủi ro hơn*.
]

#bai("4.4")[
  Cho bảng phân phối xác suất của biến ngẫu nhiên hai chiều $(X, Y)$ như sau:
  #align(center)[
    #v(3pt)
    #table(
      columns: (2cm, 2cm, 2cm, 2cm),
      align: center + horizon,
      stroke: 0.4pt,
      [$X backslash Y$], [1], [2], [3],
      [0], [0,20], [0,25], [$a$],
      [1], [$b$], [0,15], [0,10],
    )
  ]
  Tìm bảng phân phối xác suất của $X$ biết $E(X) = 0,5$.
]
#giai[
  - Điều kiện tổng xác suất của bảng phân phối đồng thời bằng 1:
    $ sum_(i) sum_(j) p_(i j) = 1 &<=> (0","20 + 0","25 + a) + (b + 0","15 + 0","10) = 1 \
                                  &<=> 0","70 + a + b = 1 <=> a + b = 0","30. thin (1) $

  - Phân phối biên của $X$:
    $ P(X = 0) &= 0","20 + 0","25 + a = 0","45 + a; \
      P(X = 1) &= b + 0","15 + 0","10 = 0","25 + b. $

  - Kì vọng $E(X) = 0","5$:
    $ E(X) = [ 0 dot P(X = 0) ] + [ 1 dot P(X = 1) ] = P(X = 1) = 0","25 + b = 0","50 \
      => b = 0","50 - 0","25 = 0","25. $

  - Thay $b = 0","25$ vào (1), ta được:
    $ a = 0","30 - 0","25 = 0","05. $

  Khi đó: $P(X = 0) = 0","45 + 0","05 = 0","50$ và $P(X = 1) = 0","50$.

  Bảng phân phối xác suất của $X$:
  #align(center)[
    #table(
      columns: (2cm, 2cm, 2cm),
      align: center + horizon,
      stroke: 0.4pt,
      [$X$], [0], [1],
      [$P$], [0,50], [0,50],
    )
  ]
]

#bai("4.5")[
  Đại lượng ngẫu nhiên $X$ có phân phối xác suất như sau:
  #align(center)[
    #v(3pt)
    #table(
      columns: (1.5cm, 1.5cm, 1.5cm, 1.5cm),
      align: center + horizon,
      stroke: 0.4pt,
      [$X$], [1], [3], [5],
      [$P$], [0,2], [0,5], [0,3],
    )
  ]
  Tìm kì vọng và phương sai của $Y = X^2 + 1$.
]
#giai[
  Biến ngẫu nhiên $Y = X^2 + 1$ nhận các giá trị:
  - Khi $X = 1 => Y = 1^2 + 1 = 2$ với xác suất $P = 0","2$.
  - Khi $X = 3 => Y = 3^2 + 1 = 10$ với xác suất $P = 0","5$.
  - Khi $X = 5 => Y = 5^2 + 1 = 26$ với xác suất $P = 0","3$.

  Bảng phân phối xác suất của $Y$:
  #align(center)[
    #table(
      columns: (1.8cm, 1.8cm, 1.8cm, 1.8cm),
      align: center + horizon,
      stroke: 0.4pt,
      [$Y$], [2], [10], [26],
      [$P$], [0,2], [0,5], [0,3],
    )
  ]

  - Kì vọng của $Y$:
    $ E(Y) = (2 dot 0","2) + (10 dot 0","5) + (26 dot 0","3) = 0","4 + 5","0 + 7","8 = 13","2. $

  - Kì vọng $E(Y^2)$:
    $ E(Y^2) = (2^2 dot 0","2) + (10^2 dot 0","5) + (26^2 dot 0","3) = 0","8 + 50","0 + 202","8 = 253","6. $

  - Phương sai của $Y$:
    $ V(Y) = E(Y^2) - [E(Y)]^2 = 253","6 - (13","2)^2 = 253","6 - 174","24 = 79","36. $
]

#bai("4.6")[
  Năng suất của ba máy tương ứng là các đại lượng ngẫu nhiên $X_1, X_2, X_3$ (sản phẩm/phút). Cho biết quy luật phân phối xác suất của $X_1, X_2, X_3$ như sau:
  #align(center)[
    #v(3pt)
    #grid(
      columns: (auto, auto, auto),
      gutter: 6mm,
      table(
        columns: (1cm, 0.85cm, 0.85cm, 0.85cm, 0.85cm),
        align: center + horizon,
        stroke: 0.4pt,
        [$X_1$], [1], [2], [3], [4],
        [$P$], [0,1], [0,2], [0,5], [0,2],
      ),
      table(
        columns: (1cm, 0.85cm, 0.85cm, 0.85cm),
        align: center + horizon,
        stroke: 0.4pt,
        [$X_2$], [2], [3], [4],
        [$P$], [0,4], [0,3], [0,3],
      ),
      table(
        columns: (1cm, 0.85cm, 0.85cm, 0.85cm, 0.85cm),
        align: center + horizon,
        stroke: 0.4pt,
        [$X_3$], [2], [3], [4], [5],
        [$P$], [0,1], [0,4], [0,4], [0,1],
      ),
    )
  ]
  Giả sử bạn cần mua một trong ba loại máy này thì bạn chọn mua loại máy nào? Vì sao? (Giả sử chất lượng và giá bán của ba loại máy này như nhau).
]
#giai[
  Ta tính kì vọng (năng suất trung bình) và phương sai (độ ổn định của năng suất) của từng máy:

  - *Máy 1 ($X_1$):*
    $ E(X_1) &= (1 dot 0","1) + (2 dot 0","2) + (3 dot 0","5) + (4 dot 0","2) = 0","1 + 0","4 + 1","5 + 0","8 = 2","8; \
      E(X_1^2) &= (1^2 dot 0","1) + (2^2 dot 0","2) + (3^2 dot 0","5) + (4^2 dot 0","2) = 0","1 + 0","8 + 4","5 + 3","2 = 8","6; \
      V(X_1) &= 8","6 - (2","8)^2 = 8","6 - 7","84 = 0","76. $

  - *Máy 2 ($X_2$):*
    $ E(X_2) &= (2 dot 0","4) + (3 dot 0","3) + (4 dot 0","3) = 0","8 + 0","9 + 1","2 = 2","9; \
      E(X_2^2) &= (2^2 dot 0","4) + (3^2 dot 0","3) + (4^2 dot 0","3) = 1","6 + 2","7 + 4","8 = 9","1; \
      V(X_2) &= 9","1 - (2","9)^2 = 9","1 - 8","41 = 0","69. $

  - *Máy 3 ($X_3$):*
    $ E(X_3) &= (2 dot 0","1) + (3 dot 0","4) + (4 dot 0","4) + (5 dot 0","1) = 0","2 + 1","2 + 1","6 + 0","5 = 3","5; \
      E(X_3^2) &= (2^2 dot 0","1) + (3^2 dot 0","4) + (4^2 dot 0","4) + (5^2 dot 0","1) = 0","4 + 3","6 + 6","4 + 2","5 = 12","9; \
      V(X_3) &= 12","9 - (3","5)^2 = 12","9 - 12","25 = 0","65. $

  *Kết luận:*
  Máy 3 có năng suất trung bình cao nhất ($E(X_3) = 3","5$ sản phẩm/phút, vượt trội so với $2","9$ và $2","8$) và đồng thời có phương sai nhỏ nhất ($V(X_3) = 0","65 < 0","69 < 0","76$), tức là máy hoạt động hiệu quả nhất và năng suất ổn định nhất.
  Vì vậy, *nên chọn mua Máy 3*.
]

#bai("4.7")[
  Có ba giống lúa với năng suất tương ứng là ba đại lượng ngẫu nhiên $X_1, X_2, X_3$ (tấn/ha). Cho biết $X_1 tilde N(8; 0,7)$, $X_2 tilde N(10; 0,5)$ và $X_3 tilde N(10; 0,3)$. Cần chọn một trong 3 giống lúa trên để gieo trồng. Theo bạn thì nên chọn giống lúa nào?
]
#giai[
  Năng suất của các giống lúa có phân phối chuẩn $N(mu, sigma)$ với kì vọng $mu$ (năng suất trung bình) và độ lệch chuẩn $sigma$ (mức độ rủi ro, phân tán):
  - Giống 1: $E(X_1) = 8$ tấn/ha, độ lệch chuẩn $sigma_1 = 0","7$ tấn/ha.
  - Giống 2: $E(X_2) = 10$ tấn/ha, độ lệch chuẩn $sigma_2 = 0","5$ tấn/ha.
  - Giống 3: $E(X_3) = 10$ tấn/ha, độ lệch chuẩn $sigma_3 = 0","3$ tấn/ha.

  *So sánh và lựa chọn:*
  - Giống 2 và giống 3 đều có năng suất trung bình cao nhất là $10$ tấn/ha (cao hơn giống 1 là $8$ tấn/ha).
  - So sánh giữa giống 2 và giống 3: cả hai cùng có năng suất kì vọng bằng nhau, nhưng giống 3 có độ lệch tiêu chuẩn nhỏ hơn ($sigma_3 = 0","3 < sigma_2 = 0","5$), nghĩa là năng suất của giống 3 ổn định hơn và ít chịu rủi ro mất mùa hơn giống 2.

  Do đó, *nên chọn giống lúa 3* để gieo trồng.
]

#bai("4.8")[
  Lãi suất (%) thu được trong một năm khi đầu tư vào công ty A và B tương ứng là các biến ngẫu nhiên có phân phối xác suất như sau:
  #align(center)[
    #v(3pt)
    #grid(
      columns: (auto, auto),
      gutter: 1cm,
      table(
        columns: (1cm, 1.1cm, 1.1cm, 1.1cm, 1.1cm, 1.1cm),
        align: center + horizon,
        stroke: 0.4pt,
        [$X$], [4], [6], [8], [10], [12],
        [$P$], [0,05], [0,15], [0,30], [0,35], [0,15],
      ),
      table(
        columns: (1cm, 1.1cm, 1.1cm, 1.1cm, 1.1cm, 1.1cm, 1.1cm),
        align: center + horizon,
        stroke: 0.4pt,
        [$Y$], [$-4$], [3], [8], [10], [12], [16],
        [$P$], [0,10], [0,20], [0,20], [0,25], [0,15], [0,10],
      ),
    )
  ]
  #y[a) Đầu tư vào công ty nào có lãi suất kì vọng cao hơn?]
  #y[b) Đầu tư vào công ty nào có mức độ rủi ro ít hơn?]
  #y[c) Nếu muốn đầu tư vào cả hai công ty thì nên đầu tư theo tỉ lệ như thế nào để:]
  #block(inset: (left: 26pt), above: 6.5pt, below: 0pt)[i) Thu được lãi suất kì vọng cao nhất?]
  #block(inset: (left: 26pt), above: 6pt, below: 0pt)[ii) Mức độ rủi ro về lãi suất thấp nhất?]
]
#giai[
  *a)* Tính lãi suất kì vọng của từng công ty:
  - Công ty A ($X$):
    $ E(X) &= (4 dot 0","05) + (6 dot 0","15) + (8 dot 0","30) + (10 dot 0","35) + (12 dot 0","15) \
           &= 0","20 + 0","90 + 2","40 + 3","50 + 1","80 = 8","80 thin (%). $
  - Công ty B ($Y$):
    $ E(Y) &= (-4 dot 0","10) + (3 dot 0","20) + (8 dot 0","20) + (10 dot 0","25) + (12 dot 0","15) + (16 dot 0","10) \
           &= -0","40 + 0","60 + 1","60 + 2","50 + 1","80 + 1","60 = 7","70 thin (%). $
  Vì $E(X) = 8","80% > E(Y) = 7","70%$ nên đầu tư vào *công ty A có lãi suất kì vọng cao hơn*.

  *b)* Tính mức độ rủi ro (đo bằng phương sai $V$ và độ lệch chuẩn $sigma$):
  - Với công ty A:
    $ E(X^2) &= (16 dot 0","05) + (36 dot 0","15) + (64 dot 0","30) + (100 dot 0","35) + (144 dot 0","15) \
             &= 0","8 + 5","4 + 19","2 + 35","0 + 21","6 = 82","0; \
      V(X) &= 82","0 - (8","8)^2 = 82","0 - 77","44 = 4","56; quad sigma(X) = sqrt(4","56) approx 2","135 thin (%). $
  - Với công ty B:
    $ E(Y^2) &= (16 dot 0","10) + (9 dot 0","20) + (64 dot 0","20) + (100 dot 0","25) + (144 dot 0","15) + (256 dot 0","10) \
             &= 1","6 + 1","8 + 12","8 + 25","0 + 21","6 + 25","6 = 88","4; \
      V(Y) &= 88","4 - (7","7)^2 = 88","4 - 59","29 = 29","11; quad sigma(Y) = sqrt(29","11) approx 5","395 thin (%). $
  Vì $V(X) = 4","56 < V(Y) = 29","11$ nên đầu tư vào *công ty A có mức độ rủi ro ít hơn rất nhiều*.

  *c)* Gọi $alpha$ là tỉ lệ vốn đầu tư vào công ty A ($0 <= alpha <= 1$), thì tỉ lệ vốn đầu tư vào công ty B là $1 - alpha$.
  Lãi suất của danh mục đầu tư là $Z = alpha X + (1 - alpha) Y$.

  - *i) Thu được lãi suất kì vọng cao nhất:*
    $ E(Z) = alpha E(X) + (1 - alpha) E(Y) = 8","8 alpha + 7","7 (1 - alpha) = 7","7 + 1","1 alpha. $
    Hàm số $E(Z)$ đồng biến theo $alpha in [0, 1]$, đạt giá trị lớn nhất khi $alpha = 1$.
    Vậy để đạt lãi suất kì vọng cao nhất, nên *đầu tư 100% vào công ty A* (và 0% vào công ty B).

  - *ii) Mức độ rủi ro thấp nhất:*
    Giả sử hai công ty hoạt động độc lập:
    $ V(Z) = alpha^2 V(X) + (1 - alpha)^2 V(Y) = 4","56 alpha^2 + 29","11 (1 - alpha)^2. $
    Để $V(Z)$ đạt cực tiểu, lấy đạo hàm theo $alpha$ và cho bằng 0:
    $ frac(dif V, dif alpha) = 2 alpha V(X) - 2 (1 - alpha) V(Y) = 0 \
      <=> alpha [V(X) + V(Y)] = V(Y) <=> alpha = frac(V(Y), V(X) + V(Y)). $
    Thay số:
    $ alpha = frac(29","11, 4","56 + 29","11) = frac(29","11, 33","67) approx 0","8646. $
    Vậy để rủi ro thấp nhất, nên đầu tư khoảng *86,46% vào công ty A* và *13,54% vào công ty B*.
]

#bai("4.9")[
  Giả sử chọn ngẫu nhiên ba quả cầu từ hộp có 3 cầu đỏ, 4 cầu trắng, 5 cầu vàng và $X, Y$ tương ứng là số cầu đỏ, cầu vàng có được trong 3 quả cầu được chọn.
  #y[a) Lập bảng phân phối đồng thời của $X$ và $Y$.]
  #y[b) Tìm các phân phối biên của $X$ và của $Y$.]
  #y[c) Tìm phân phối của số cầu đỏ biết số cầu vàng đã chọn được là 1.]
  #y[d) Tìm hệ số tương quan của $X$ và $Y$.]
]
#giai[
  Tổng số cầu là $3 + 4 + 5 = 12$ quả. Chọn ngẫu nhiên 3 quả: $|Omega| = C_(12)^3 = 220$.
  $X$ là số cầu đỏ ($0 <= X <= 3$), $Y$ là số cầu vàng ($0 <= Y <= 3$), số cầu trắng là $3 - X - Y >= 0$.
  Công thức xác suất đồng thời:
  $ P(X = x, Y = y) = frac(C_3^x dot C_5^y dot C_4^(3 - x - y), 220). $

  *a)* Lập bảng phân phối xác suất đồng thời $(X, Y)$:
  #align(center)[
    #table(
      columns: (1.8cm, 1.6cm, 1.6cm, 1.6cm, 1.6cm),
      align: center + horizon,
      stroke: 0.4pt,
      [$X backslash Y$], [0], [1], [2], [3],
      [0], [$4/220$], [$30/220$], [$40/220$], [$10/220$],
      [1], [$18/220$], [$60/220$], [$30/220$], [0],
      [2], [$12/220$], [$15/220$], [0], [0],
      [3], [$1/220$], [0], [0], [0],
    )
  ]

  *b)* Các phân phối biên của $X$ và của $Y$:
  - Phân phối biên của $X$ (số cầu đỏ):
    $ P(X = 0) &= frac(4 + 30 + 40 + 10, 220) = frac(84, 220) = frac(21, 55); \
      P(X = 1) &= frac(18 + 60 + 30 + 0, 220) = frac(108, 220) = frac(27, 55); \
      P(X = 2) &= frac(12 + 15 + 0 + 0, 220) = frac(27, 220); \
      P(X = 3) &= frac(1, 220). $

  - Phân phối biên của $Y$ (số cầu vàng):
    $ P(Y = 0) &= frac(4 + 18 + 12 + 1, 220) = frac(35, 220) = frac(7, 44); \
      P(Y = 1) &= frac(30 + 60 + 15 + 0, 220) = frac(105, 220) = frac(21, 44); \
      P(Y = 2) &= frac(40 + 30 + 0 + 0, 220) = frac(70, 220) = frac(7, 22); \
      P(Y = 3) &= frac(10, 220) = frac(1, 22). $

  *c)* Phân phối của số cầu đỏ biết số cầu vàng chọn được là 1 ($Y = 1$):
  Với $P(Y = 1) = 105/220$:
  $ P(X = 0 | Y = 1) &= frac(30/220, 105/220) = frac(30, 105) = frac(2, 7); \
    P(X = 1 | Y = 1) &= frac(60/220, 105/220) = frac(60, 105) = frac(4, 7); \
    P(X = 2 | Y = 1) &= frac(15/220, 105/220) = frac(15, 105) = frac(1, 7); \
    P(X = 3 | Y = 1) &= 0. $

  Bảng phân phối có điều kiện của $X$ khi $Y = 1$:
  #align(center)[
    #table(
      columns: (2cm, 1.8cm, 1.8cm, 1.8cm),
      align: center + horizon,
      stroke: 0.4pt,
      [$X$], [0], [1], [2],
      [$P(X | Y = 1)$], [$2/7$], [$4/7$], [$1/7$],
    )
  ]

  *d)* Tìm hệ số tương quan của $X$ và $Y$:
  $X$ và $Y$ có phân phối siêu bội:
  $ E(X) = 3 dot frac(3, 12) = 0","75; quad V(X) = 3 dot frac(3, 12) dot frac(9, 12) dot frac(12 - 3, 12 - 1) = frac(81, 176) approx 0","4602. $
  $ E(Y) = 3 dot frac(5, 12) = 1","25; quad V(Y) = 3 dot frac(5, 12) dot frac(7, 12) dot frac(12 - 3, 12 - 1) = frac(315, 528) = frac(105, 176) approx 0","5966. $

  Kì vọng tích $E(X Y)$:
  $ E(X Y) &= (1 dot 1 dot frac(60, 220)) + (1 dot 2 dot frac(30, 220)) + (2 dot 1 dot frac(15, 220)) \
           &= frac(60 + 60 + 30, 220) = frac(150, 220) = frac(15, 22). $

  Hiệp phương sai:
  $ "Cov"(X, Y) = E(X Y) - E(X) E(Y) = frac(15, 22) - (0","75 dot 1","25) = frac(15, 22) - frac(15, 16) = - frac(45, 176) approx -0","2557. $

  Hệ số tương quan:
  $ rho_(X Y) = frac("Cov"(X, Y), sqrt(V(X) dot V(Y))) = frac(- 45/176, sqrt(81/176 dot 105/176)) = frac(-45, sqrt(81 dot 105)) = - frac(5, sqrt(105)) approx -0","4880. $
]

#bai("4.10")[
  Cho biết bảng phân phối xác suất của biến ngẫu nhiên hai chiều $(X, Y)$ với $X$ là doanh thu và $Y$ là chi phí quảng cáo (đơn vị: triệu đồng/tháng).
  #align(center)[
    #v(3pt)
    #table(
      columns: (2cm, 2cm, 2cm, 2cm),
      align: center + horizon,
      stroke: 0.4pt,
      [$X backslash Y$], [0], [1], [2],
      [100], [0,04], [0,05], [0,06],
      [150], [0,05], [0,15], [0,14],
      [200], [0,05], [0,20], [0,26],
    )
  ]
  #y[a) Lập bảng phân phối xác suất của $X$ và $Y$.]
  #y[b) X và Y có độc lập nhau không?]
  #y[c) Tìm kì vọng và phương sai của $X$ và $Y$.]
  #y[d) Lập bảng phân phối xác suất của doanh thu khi chi phí quảng cáo là 2 triệu đồng/tháng. Từ đó tính trung bình của doanh thu khi chi phí quảng cáo là 2 triệu đồng/tháng.]
  #y[e) Tính hiệp phương sai của $X$ và $Y$. Từ đó xác định hệ số tương quan của doanh thu và quảng cáo.]
  #y[f) Lập bảng phân phối xác suất của $Z = X Y$.]
]
#giai[
  *a)* Lập bảng phân phối xác suất biên của $X$ và $Y$:
  - Phân phối của $X$ (doanh thu):
    $ P(X = 100) &= 0","04 + 0","05 + 0","06 = 0","15; \
      P(X = 150) &= 0","05 + 0","15 + 0","14 = 0","34; \
      P(X = 200) &= 0","05 + 0","20 + 0","26 = 0","51. $
    #align(center)[
      #table(
        columns: (1.8cm, 1.8cm, 1.8cm, 1.8cm),
        align: center + horizon,
        stroke: 0.4pt,
        [$X$], [100], [150], [200],
        [$P$], [0,15], [0,34], [0,51],
      )
    ]
  - Phân phối của $Y$ (quảng cáo):
    $ P(Y = 0) &= 0","04 + 0","05 + 0","05 = 0","14; \
      P(Y = 1) &= 0","05 + 0","15 + 0","20 = 0","40; \
      P(Y = 2) &= 0","06 + 0","14 + 0","26 = 0","46. $
    #align(center)[
      #table(
        columns: (1.8cm, 1.8cm, 1.8cm, 1.8cm),
        align: center + horizon,
        stroke: 0.4pt,
        [$Y$], [0], [1], [2],
        [$P$], [0,14], [0,40], [0,46],
      )
    ]

  *b)* Kiểm tra tính độc lập:
  Xét ô $(X = 100, Y = 0)$:
  $ P(X = 100, Y = 0) = 0","04. $
  Trong khi đó:
  $ P(X = 100) dot P(Y = 0) = 0","15 dot 0","14 = 0","021 eq.not 0","04. $
  Vì $P(X = 100, Y = 0) eq.not P(X = 100) dot P(Y = 0)$ nên $X$ và $Y$ *không độc lập*.

  *c)* Tìm kì vọng và phương sai của $X$ và $Y$:
  - Với $X$:
    $ E(X) &= (100 dot 0","15) + (150 dot 0","34) + (200 dot 0","51) = 15 + 51 + 102 = 168 thin ("triệu"). \
      E(X^2) &= (100^2 dot 0","15) + (150^2 dot 0","34) + (200^2 dot 0","51) = 1500 + 7650 + 20400 = 29550. \
      V(X) &= 29550 - (168)^2 = 29550 - 28224 = 1326; quad sigma(X) approx 36","414. $
  - Với $Y$:
    $ E(Y) &= (0 dot 0","14) + (1 dot 0","40) + (2 dot 0","46) = 0 + 0","40 + 0","92 = 1","32 thin ("triệu"). \
      E(Y^2) &= (0^2 dot 0","14) + (1^2 dot 0","40) + (2^2 dot 0","46) = 0 + 0","40 + 1","84 = 2","24. \
      V(Y) &= 2","24 - (1","32)^2 = 2","24 - 1","7424 = 0","4976; quad sigma(Y) approx 0","7054. $

  *d)* Phân phối xác suất của $X$ khi $Y = 2$:
  Với $P(Y = 2) = 0","46$:
  $ P(X = 100 | Y = 2) &= frac(0","06, 0","46) = frac(3, 23) approx 0","1304; \
    P(X = 150 | Y = 2) &= frac(0","14, 0","46) = frac(7, 23) approx 0","3043; \
    P(X = 200 | Y = 2) &= frac(0","26, 0","46) = frac(13, 23) approx 0","5652. $

  Bảng phân phối xác suất của $X$ khi $Y = 2$:
  #align(center)[
    #table(
      columns: (2cm, 2.2cm, 2.2cm, 2.2cm),
      align: center + horizon,
      stroke: 0.4pt,
      [$X$], [100], [150], [200],
      [$P(X | Y = 2)$], [$3/23$], [$7/23$], [$13/23$],
    )
  ]

  Doanh thu trung bình khi chi phí quảng cáo là 2 triệu đồng/tháng:
  $ E(X | Y = 2) = (100 dot frac(3, 23)) + (150 dot frac(7, 23)) + (200 dot frac(13, 23)) = frac(3950, 23) approx 171","74 thin ("triệu đồng"). $

  *e)* Tính hiệp phương sai và hệ số tương quan:
  $ E(X Y) &= sum sum x_i y_j p_(i j) \
           &= (100 dot 1 dot 0","05) + (100 dot 2 dot 0","06) + (150 dot 1 dot 0","15) \
           &quad + (150 dot 2 dot 0","14) + (200 dot 1 dot 0","20) + (200 dot 2 dot 0","26) \
           &= 5 + 12 + 22","5 + 42 + 40 + 104 = 225","5. $
  $ "Cov"(X, Y) &= E(X Y) - E(X) E(Y) = 225","5 - (168 dot 1","32) = 225","5 - 221","76 = 3","74. $
  $ rho_(X Y) = frac("Cov"(X, Y), sqrt(V(X) dot V(Y))) = frac(3","74, sqrt(1326 dot 0","4976)) = frac(3","74, sqrt(659","8176)) approx 0","1456. $

  *f)* Lập bảng phân phối xác suất của $Z = X Y$:
  Các giá trị có thể có của $Z = X Y$:
  - $Z = 0$ khi $Y = 0$: $P(Z = 0) = P(Y = 0) = 0","14$.
  - $Z = 100$ khi $(100, 1)$: $P(Z = 100) = 0","05$.
  - $Z = 150$ khi $(150, 1)$: $P(Z = 150) = 0","15$.
  - $Z = 200$ khi $(100, 2)$ hoặc $(200, 1)$: $P(Z = 200) = 0","06 + 0","20 = 0","26$.
  - $Z = 300$ khi $(150, 2)$: $P(Z = 300) = 0","14$.
  - $Z = 400$ khi $(200, 2)$: $P(Z = 400) = 0","26$.

  Bảng phân phối xác suất của $Z$:
  #align(center)[
    #table(
      columns: (1.5cm, 1.4cm, 1.4cm, 1.4cm, 1.4cm, 1.4cm, 1.4cm),
      align: center + horizon,
      stroke: 0.4pt,
      [$Z$], [0], [100], [150], [200], [300], [400],
      [$P$], [0,14], [0,05], [0,15], [0,26], [0,14], [0,26],
    )
  ]
]

#bai("4.11")[
  Có hai loại cổ phiếu A và B được bán trên thị trường chứng khoán và lãi suất của chúng tương ứng là hai đại lượng ngẫu nhiên $X$ và $Y$.

  Giả sử $(X, Y)$ có bảng phân phối xác suất như sau:
  #align(center)[
    #v(3pt)
    #table(
      columns: (2cm, 2cm, 2cm, 2cm, 2cm),
      align: center + horizon,
      stroke: 0.4pt,
      [$X backslash Y$], [$-2$], [0], [5], [10],
      [0], [0], [0,05], [0,05], [0,1],
      [4], [0,05], [0,1], [0,25], [0,15],
      [6], [0,1], [0,05], [0,1], [0],
    )
  ]
  #y[a) Nếu đầu tư toàn bộ vào cổ phiếu A thì lãi suất kì vọng và mức độ rủi ro là bao nhiêu?]
  #y[b) Nếu mục tiêu là đạt được lãi suất kì vọng lớn nhất thì nên đầu tư vào cả hai loại cổ phiếu theo tỉ lệ nào?]
  #y[c) Muốn hạn chế rủi ro về lãi suất đến mức thấp nhất thì nên đầu tư vào hai loại cổ phiếu theo tỉ lệ nào?]
]
#giai[
  *a)* Đầu tư toàn bộ vào cổ phiếu A ($X$):
  - Phân phối biên của $X$:
    $ P(X = 0) &= 0 + 0","05 + 0","05 + 0","10 = 0","20; \
      P(X = 4) &= 0","05 + 0","10 + 0","25 + 0","15 = 0","55; \
      P(X = 6) &= 0","10 + 0","05 + 0","10 + 0 = 0","25. $
  - Lãi suất kì vọng của cổ phiếu A:
    $ E(X) = (0 dot 0","20) + (4 dot 0","55) + (6 dot 0","25) = 0 + 2","2 + 1","5 = 3","70 thin (%). $
  - Phương sai và độ lệch chuẩn của cổ phiếu A:
    $ E(X^2) &= (0^2 dot 0","20) + (4^2 dot 0","55) + (6^2 dot 0","25) = 0 + 8","8 + 9","0 = 17","8; \
      V(X)   &= 17","8 - (3","7)^2 = 17","8 - 13","69 = 4","11; \
      sigma(X) &= sqrt(4","11) approx 2","0273 thin (%). $
  Vậy nếu đầu tư toàn bộ vào cổ phiếu A thì lãi suất kì vọng là *3,70%* và mức độ rủi ro (độ lệch chuẩn) là *2,03%*.

  *b)* Tìm phân phối biên của cổ phiếu B ($Y$):
  $ P(Y = -2) &= 0 + 0","05 + 0","10 = 0","15; \
    P(Y = 0)  &= 0","05 + 0","10 + 0","05 = 0","20; \
    P(Y = 5)  &= 0","05 + 0","25 + 0","10 = 0","40; \
    P(Y = 10) &= 0","10 + 0","15 + 0 = 0","25. $
  $ E(Y) = (-2 dot 0","15) + (0 dot 0","20) + (5 dot 0","40) + (10 dot 0","25) = -0","3 + 0 + 2","0 + 2","5 = 4","20 thin (%). $

  Gọi $alpha$ là tỉ lệ vốn đầu tư vào cổ phiếu A ($0 <= alpha <= 1$), tỉ lệ đầu tư vào B là $1 - alpha$.
  Lãi suất kì vọng của danh mục:
  $ E(Z) = alpha E(X) + (1 - alpha) E(Y) = 3","7 alpha + 4","2 (1 - alpha) = 4","2 - 0","5 alpha. $
  Vì hàm số nghịch biến theo $alpha$, nên $E(Z)$ lớn nhất khi $alpha = 0$.
  Vậy để đạt lãi suất kì vọng lớn nhất (4,20%), nên *đầu tư 100% vào cổ phiếu B* (và 0% vào cổ phiếu A).

  *c)* Đầu tư để hạn chế rủi ro thấp nhất:
  - Tính phương sai của $Y$:
    $ E(Y^2) &= ((-2)^2 dot 0","15) + (0^2 dot 0","20) + (5^2 dot 0","40) + (10^2 dot 0","25) \
             &= 0","6 + 0 + 10","0 + 25","0 = 35","6; \
      V(Y)   &= 35","6 - (4","2)^2 = 35","6 - 17","64 = 17","96. $
  - Tính $E(X Y)$ và hiệp phương sai $"Cov"(X, Y)$:
    $ E(X Y) &= (4 dot (-2) dot 0","05) + (4 dot 5 dot 0","25) + (4 dot 10 dot 0","15) \
             &quad + (6 dot (-2) dot 0","10) + (6 dot 5 dot 0","10) \
             &= -0","4 + 5","0 + 6","0 - 1","2 + 3","0 = 12","4. $
    $ "Cov"(X, Y) = E(X Y) - E(X) E(Y) = 12","4 - (3","7 dot 4","2) = 12","4 - 15","54 = -3","14. $
  - Phương sai của danh mục:
    $ V(Z) = alpha^2 V(X) + (1 - alpha)^2 V(Y) + 2 alpha (1 - alpha) "Cov"(X, Y). $
    Cực tiểu đạt được tại:
    $ alpha^* = frac(V(Y) - "Cov"(X, Y), V(X) + V(Y) - 2 "Cov"(X, Y)) = frac(17","96 - (-3","14), 4","11 + 17","96 - 2(-3","14)) = frac(21","10, 28","35) approx 0","7443. $
  Vậy để rủi ro lãi suất thấp nhất, nên đầu tư khoảng *74,43% vào cổ phiếu A* và *25,57% vào cổ phiếu B*.
]

#bai("4.12")[
  Từ số liệu điều tra thu nhập hằng năm (triệu đồng) của các cặp vợ chồng đang làm việc, người ta lập được bảng phân phối xác suất đồng thời của $(X, Y)$ như sau (trong đó $X$ là thu nhập của chồng, $Y$ là thu nhập của vợ).
  #align(center)[
    #v(3pt)
    #table(
      columns: (2cm, 2cm, 2cm, 2cm, 2cm),
      align: center + horizon,
      stroke: 0.4pt,
      [$X backslash Y$], [10], [20], [30], [40],
      [10], [0,2], [0,04], [0,01], [0],
      [20], [0,1], [0,36], [0,09], [0],
      [30], [0], [0,05], [0,1], [0],
      [40], [0], [0], [0], [0,05],
    )
  ]
  #y[a) Tìm phân phối thu nhập của những người vợ có chồng thu nhập 20 triệu đồng/năm. Tính thu nhập trung bình của những người vợ có chồng thu nhập ở mức 20 triệu đồng/năm.]
  #y[b) Tính thu nhập trung bình hàng năm của chồng và của vợ trong các cặp vợ chồng đang đi làm.]
  #y[c) Thu nhập của chồng và của vợ có phụ thuộc nhau không và nếu có thì mức độ phụ thuộc thế nào?]
]
#giai[
  *a)* Phân phối thu nhập của người vợ khi chồng có thu nhập $X = 20$ triệu đồng/năm:
  - Xác suất biên $P(X = 20) = 0","10 + 0","36 + 0","09 + 0 = 0","55$.
  - Các xác suất có điều kiện:
    $ P(Y = 10 | X = 20) &= frac(0","10, 0","55) = frac(2, 11) approx 0","1818; \
      P(Y = 20 | X = 20) &= frac(0","36, 0","55) = frac(36, 55) approx 0","6545; \
      P(Y = 30 | X = 20) &= frac(0","09, 0","55) = frac(9, 55) approx 0","1636; \
      P(Y = 40 | X = 20) &= 0. $

  Bảng phân phối có điều kiện của $Y$ khi $X = 20$:
  #align(center)[
    #table(
      columns: (2.2cm, 2cm, 2cm, 2cm),
      align: center + horizon,
      stroke: 0.4pt,
      [$Y$], [10], [20], [30],
      [$P(Y | X = 20)$], [$2/11$], [$36/55$], [$9/55$],
    )
  ]

  Thu nhập trung bình của những người vợ có chồng thu nhập 20 triệu đồng/năm:
  $ E(Y | X = 20) = (10 dot frac(2, 11)) + (20 dot frac(36, 55)) + (30 dot frac(9, 55)) = frac(1090, 55) = frac(218, 11) approx 19","82 thin ("triệu đồng/năm"). $

  *b)* Tính thu nhập trung bình hàng năm của chồng ($E(X)$) và của vợ ($E(Y)$):
  - Phân phối biên của chồng ($X$):
    $ P(X = 10) &= 0","20 + 0","04 + 0","01 + 0 = 0","25; \
      P(X = 20) &= 0","55; \
      P(X = 30) &= 0 + 0","05 + 0","10 + 0 = 0","15; \
      P(X = 40) &= 0 + 0 + 0 + 0","05 = 0","05. $
    $ E(X) = (10 dot 0","25) + (20 dot 0","55) + (30 dot 0","15) + (40 dot 0","05) = 2","5 + 11","0 + 4","5 + 2","0 = 20 thin ("triệu"). $

  - Phân phối biên của vợ ($Y$):
    $ P(Y = 10) &= 0","20 + 0","10 + 0 + 0 = 0","30; \
      P(Y = 20) &= 0","04 + 0","36 + 0","05 + 0 = 0","45; \
      P(Y = 30) &= 0","01 + 0","09 + 0","10 + 0 = 0","20; \
      P(Y = 40) &= 0 + 0 + 0 + 0","05 = 0","05. $
    $ E(Y) = (10 dot 0","30) + (20 dot 0","45) + (30 dot 0","20) + (40 dot 0","05) = 3","0 + 9","0 + 6","0 + 2","0 = 20 thin ("triệu"). $

  *c)* Mức độ phụ thuộc giữa thu nhập của chồng và của vợ:
  - Xét ô $(X = 10, Y = 10)$: $P(10, 10) = 0","20 eq.not P(X = 10) dot P(Y = 10) = 0","25 dot 0","30 = 0","075$, do đó thu nhập của hai người *phụ thuộc nhau*.
  - Để đo lường mức độ phụ thuộc tuyến tính, ta tính hệ số tương quan $rho_(X Y)$:
    $ E(X^2) &= (100 dot 0","25) + (400 dot 0","55) + (900 dot 0","15) + (1600 dot 0","05) = 25 + 220 + 135 + 80 = 460; \
      V(X)   &= 460 - 20^2 = 60. $
    $ E(Y^2) &= (100 dot 0","30) + (400 dot 0","45) + (900 dot 0","20) + (1600 dot 0","05) = 30 + 180 + 180 + 80 = 470; \
      V(Y)   &= 470 - 20^2 = 70. $
    $ E(X Y) &= (10 dot 10 dot 0","2) + (10 dot 20 dot 0","04) + (10 dot 30 dot 0","01) \
             &quad + (20 dot 10 dot 0","1) + (20 dot 20 dot 0","36) + (20 dot 30 dot 0","09) \
             &quad + (30 dot 20 dot 0","05) + (30 dot 30 dot 0","1) + (40 dot 40 dot 0","05) \
             &= 20 + 8 + 3 + 20 + 144 + 54 + 30 + 90 + 80 = 449. $
    $ "Cov"(X, Y) &= E(X Y) - E(X) E(Y) = 449 - (20 dot 20) = 49. $
    $ rho_(X Y) = frac("Cov"(X, Y), sqrt(V(X) dot V(Y))) = frac(49, sqrt(60 dot 70)) = frac(49, sqrt(4200)) approx 0","7561. $

  *Nhận xét:* Hệ số tương quan $rho_(X Y) approx 0","76 > 0$ chứng tỏ thu nhập của chồng và vợ có quan hệ tương quan thuận tương đối chặt chẽ (chồng có thu nhập cao thì xu hướng vợ cũng có thu nhập cao và ngược lại).
]

#pagebreak()

== Tóm tắt kiến thức sử dụng trong chương 4

#block(
  width: 100%,
  stroke: 0.5pt + rgb("cbd5e1"),
  fill: rgb("f8fafc"),
  inset: 12pt,
  radius: 4pt,
)[
  *1. Kì vọng toán (Kì vọng toán học $E(X)$)*
  - Biến ngẫu nhiên rời rạc: $E(X) = sum_i x_i p_i$.
  - Biến ngẫu nhiên liên tục: $E(X) = integral_(-infinity)^(+infinity) x f(x) dif x$.
  - Hàm của biến ngẫu nhiên: $E[g(X)] = sum_i g(x_i) p_i$ hoặc $integral_(-infinity)^(+infinity) g(x) f(x) dif x$.
  - Tính chất: $E(C) = C$; $E(a X + b) = a E(X) + b$; $E(X + Y) = E(X) + E(Y)$. Nếu $X, Y$ độc lập thì $E(X Y) = E(X) E(Y)$.

  *2. Phương sai và độ lệch tiêu chuẩn*
  - Định nghĩa: $V(X) = E[(X - E(X))^2] = E(X^2) - [E(X)]^2$. Độ lệch tiêu chuẩn $sigma(X) = sqrt(V(X))$.
  - Tính chất: $V(C) = 0$; $V(a X + b) = a^2 V(X)$; nếu $X, Y$ độc lập thì $V(X +- Y) = V(X) + V(Y)$.
  - Ý nghĩa: Phương sai và độ lệch chuẩn phản ánh mức độ phân tán của các giá trị quanh giá trị trung bình; trong kinh tế và đầu tư, chúng đại diện cho *mức độ rủi ro*.

  *3. Hiệp phương sai (Covariance) và Hệ số tương quan (Correlation)*
  - Hiệp phương sai: $"Cov"(X, Y) = E[(X - E(X))(Y - E(Y))] = E(X Y) - E(X) E(Y)$.
  - Hệ số tương quan: $rho_(X Y) = frac("Cov"(X, Y), sigma_X sigma_Y) = frac("Cov"(X, Y), sqrt(V(X) V(Y)))$.
  - Tính chất: $-1 <= rho_(X Y) <= 1$. Nếu $X, Y$ độc lập thì $"Cov"(X, Y) = 0$ và $rho_(X Y) = 0$. $rho_(X Y) > 0$ là tương quan thuận, $rho_(X Y) < 0$ là tương quan nghịch; $|rho_(X Y)|$ càng gần 1 thì mối liên hệ tuyến tính càng chặt chẽ.

  *4. Kì vọng có điều kiện và bài toán tối ưu danh mục đầu tư*
  - Kì vọng có điều kiện: $E(Y | X = x_i) = sum_j y_j P(Y = y_j | X = x_i)$.
  - Phương sai của tổng tuyến tính: $V(alpha X + beta Y) = alpha^2 V(X) + beta^2 V(Y) + 2 alpha beta "Cov"(X, Y)$.
  - Tối ưu danh mục đầu tư $Z = alpha X + (1 - alpha) Y$:
    $ alpha^* = frac(V(Y) - "Cov"(X, Y), V(X) + V(Y) - 2 "Cov"(X, Y)). $
]


#pagebreak()

= Bài tập chương 5

#bai("5.1")[
  Số hạt bụi mịn trung bình trong 1 lít không khí ở một phòng thí nghiệm là 50 hạt. Không biết gì thêm về phân phối của số hạt bụi, hãy đánh giá xác suất để trong 1 lít không khí lấy ngẫu nhiên có từ 200 hạt bụi trở lên.
]
#giai[
  Gọi $X$ là số hạt bụi trong 1 lít không khí. $X >= 0$ và $E(X) = 50$. Vì chỉ biết kì vọng, ta dùng bất đẳng thức Markov:
  $ P(X >= a) <= frac(E(X), a) => P(X >= 200) <= frac(50, 200) = 0","25. $
  Vậy xác suất có từ 200 hạt bụi trở lên *không vượt quá 25%*.
  _(Bất đẳng thức Markov chỉ cho một chặn trên; xác suất thực tế thường nhỏ hơn nhiều.)_
]

#bai("5.2")[
  Điện áp $X$ (V) của lưới điện tại một phòng thí nghiệm có kì vọng $E(X) = 220$ V và độ lệch tiêu chuẩn $sigma = 4$ V.
  #y[a) Dùng bất đẳng thức Chebyshev, hãy đánh giá xác suất để điện áp nằm trong khoảng $(210; 230)$ V.]
  #y[b) Nếu biết thêm $X$ có phân phối chuẩn thì xác suất trên chính xác bằng bao nhiêu? So sánh.]
]
#giai[
  *a)* Khoảng $(210; 230)$ đối xứng quanh $mu = 220$ với $epsilon = 10$. Theo bất đẳng thức Chebyshev:
  $ P(|X - mu| < epsilon) >= 1 - frac(sigma^2, epsilon^2) = 1 - frac(16, 100) = 0","84. $
  Vậy xác suất điện áp nằm trong khoảng $(210; 230)$ V *ít nhất là 84%*.

  *b)* Nếu $X tilde N(220, 4^2)$:
  $ P(|X - 220| < 10) = 2 Phi(frac(10, 4)) = 2 Phi(2","5) = 2 dot 0","4938 = 0","9876. $
  _Nhận xét:_ Chặn Chebyshev ($0","84$) đúng với mọi phân phối nên "thận trọng" hơn nhiều so với giá trị thực $0","9876$ khi biết phân phối là chuẩn.
]

#bai("5.3")[
  Đo chiều dài $mu$ của một thanh kim loại bằng một dụng cụ có sai số ngẫu nhiên; mỗi lần đo cho kết quả $X_i$ với $E(X_i) = mu$ và độ lệch tiêu chuẩn $sigma = 0","5$ mm. Các lần đo độc lập. Lấy trung bình $overline(X)$ của $n$ lần đo làm kết quả. Cần đo ít nhất bao nhiêu lần để với xác suất không nhỏ hơn 0,95, sai lệch $|overline(X) - mu|$ nhỏ hơn 0,2 mm:
  #y[a) theo bất đẳng thức Chebyshev (luật số lớn);]
  #y[b) theo định lý giới hạn trung tâm?]
]
#giai[
  Ta có $E(overline(X)) = mu$, $V(overline(X)) = frac(sigma^2, n) = frac(0","25, n)$.

  *a)* Áp dụng bất đẳng thức Chebyshev cho $overline(X)$ với $epsilon = 0","2$:
  $ P(|overline(X) - mu| < 0","2) >= 1 - frac(sigma^2, n epsilon^2) = 1 - frac(0","25, 0","04 n). $
  Yêu cầu $1 - frac(0","25, 0","04 n) >= 0","95 <=> frac(0","25, 0","04 n) <= 0","05 <=> n >= frac(0","25, 0","04 dot 0","05) = 125$.
  Vậy cần đo *ít nhất 125 lần*.

  *b)* Theo định lý giới hạn trung tâm, $overline(X) approx N(mu, sigma^2 / n)$:
  $ P(|overline(X) - mu| < epsilon) approx 2 Phi(frac(epsilon sqrt(n), sigma)) >= 0","95 <=> frac(epsilon sqrt(n), sigma) >= 1","96. $
  $ n >= (frac(1","96 dot 0","5, 0","2))^2 = 4","9^2 = 24","01 => n = 25 thin "lần". $
  _Nhận xét:_ Định lý giới hạn trung tâm cho số lần đo ít hơn nhiều vì dùng thêm thông tin về dạng phân phối (xấp xỉ chuẩn).
]

#bai("5.4")[
  Một bộ đếm Geiger ghi nhận mỗi hạt bay tới với xác suất $p$ chưa biết. Người ta dùng tần suất $f = m/n$ ($m$ là số hạt được ghi nhận trong $n$ hạt bay tới) để ước lượng $p$. Cần ít nhất bao nhiêu hạt để với xác suất không nhỏ hơn 0,9 thì $|f - p| < 0","05$:
  #y[a) theo luật số lớn Bernoulli (bất đẳng thức Chebyshev);]
  #y[b) theo định lý Moivre -- Laplace?]
]
#giai[
  Số hạt được ghi nhận $m tilde B(n, p)$, nên $E(f) = p$ và $V(f) = frac(p q, n)$ với $q = 1 - p$. Vì $p$ chưa biết, ta dùng đánh giá $p q <= 1/4$.

  *a)* Theo bất đẳng thức Chebyshev:
  $ P(|f - p| < epsilon) >= 1 - frac(p q, n epsilon^2) >= 1 - frac(1, 4 n epsilon^2). $
  Yêu cầu $frac(1, 4 n dot 0","05^2) <= 0","1 <=> n >= frac(1, 4 dot 0","0025 dot 0","1) = 1000$. Vậy cần *ít nhất 1000 hạt*.

  *b)* Theo định lý Moivre -- Laplace:
  $ P(|f - p| < epsilon) approx 2 Phi(epsilon sqrt(frac(n, p q))) >= 2 Phi(2 epsilon sqrt(n)) >= 0","9 <=> 2 epsilon sqrt(n) >= 1","645. $
  $ sqrt(n) >= frac(1","645, 0","1) = 16","45 => n >= 270","6 => n = 271 thin "hạt". $
]

#bai("5.5")[
  Một mẫu chất phóng xạ có 400 hạt nhân; mỗi hạt nhân phân rã trong khoảng thời gian quan sát với xác suất 0,2, độc lập với nhau. Dùng định lý giới hạn địa phương Moivre -- Laplace, tính gần đúng xác suất để có:
  #y[a) đúng 80 hạt nhân phân rã;]
  #y[b) đúng 90 hạt nhân phân rã.]
]
#giai[
  Gọi $X$ là số hạt nhân phân rã: $X tilde B(400; 0","2)$, $n p = 80$, $n p q = 400 dot 0","2 dot 0","8 = 64 => sqrt(n p q) = 8$.
  Định lý giới hạn địa phương:
  $ P(X = k) approx frac(1, sqrt(n p q)) thin phi(frac(k - n p, sqrt(n p q))), quad phi(x) = frac(1, sqrt(2 pi)) e^(-x^2 / 2). $

  *a)* $k = 80 => x = 0$, $phi(0) = 0","3989$:
  $ P(X = 80) approx frac(0","3989, 8) approx 0","0499. $

  *b)* $k = 90 => x = frac(90 - 80, 8) = 1","25$, $phi(1","25) approx 0","1826$:
  $ P(X = 90) approx frac(0","1826, 8) approx 0","0228. $
  _(Giá trị chính xác theo nhị thức: $0","0498$ và $0","0224$ -- xấp xỉ rất tốt.)_
]

#bai("5.6")[
  Tỉ lệ linh kiện bán dẫn bị lỗi của một dây chuyền là 10%. Kiểm tra ngẫu nhiên 400 linh kiện. Tính gần đúng xác suất:
  #y[a) số linh kiện lỗi từ 30 đến 50;]
  #y[b) số linh kiện lỗi từ 50 trở lên.]
]
#giai[
  Gọi $X$ là số linh kiện lỗi: $X tilde B(400; 0","1)$ với $n p = 40$, $n q = 360$ đều lớn hơn 5 nên dùng định lý tích phân Moivre -- Laplace: $X approx N(40; 36)$, $sqrt(n p q) = 6$.
  $ P(k_1 <= X <= k_2) approx Phi(frac(k_2 - n p, sqrt(n p q))) - Phi(frac(k_1 - n p, sqrt(n p q))). $

  *a)*
  $ P(30 <= X <= 50) approx Phi(frac(50 - 40, 6)) - Phi(frac(30 - 40, 6)) = 2 Phi(1","67) = 2 dot 0","4525 = 0","9050. $

  *b)*
  $ P(X >= 50) approx 0","5 - Phi(frac(50 - 40, 6)) = 0","5 - Phi(1","67) = 0","5 - 0","4525 = 0","0475. $
  _(Ghi chú: Nếu dùng hiệu chỉnh liên tục thì $P(30 <= X <= 50) approx 2 Phi(10","5 / 6) = 2 Phi(1","75) = 0","9198$, sát với giá trị chính xác $0","9207$.)_
]

#bai("5.7")[
  Một thang máy có tải trọng an toàn 1000 kg. Khối lượng mỗi người đi thang là biến ngẫu nhiên độc lập có kì vọng 65 kg và độ lệch tiêu chuẩn 10 kg. Tính gần đúng xác suất để khi có 15 người vào thang máy thì tổng khối lượng vượt quá tải trọng an toàn.
]
#giai[
  Gọi $X_i$ là khối lượng người thứ $i$ và $S = X_1 + dots + X_(15)$. Ta có:
  $ E(S) = 15 dot 65 = 975 thin "kg"; quad V(S) = 15 dot 10^2 = 1500 => sigma(S) = sqrt(1500) approx 38","73 thin "kg". $
  Theo định lý giới hạn trung tâm, $S approx N(975; 1500)$:
  $ P(S > 1000) approx 0","5 - Phi(frac(1000 - 975, 38","73)) = 0","5 - Phi(0","65) = 0","5 - 0","2422 = 0","2578. $
  Vậy xác suất quá tải khoảng *25,8%*.
]

#bai("5.8")[
  Khi cộng 100 số thực, mỗi số được làm tròn đến hàng đơn vị. Giả sử sai số làm tròn của mỗi số là các biến ngẫu nhiên độc lập có phân phối đều trên $[-0","5; 0","5]$. Tính gần đúng xác suất để sai số của tổng có trị tuyệt đối nhỏ hơn 3.
]
#giai[
  Sai số làm tròn $X_i tilde U(-0","5; 0","5)$ có $E(X_i) = 0$, $V(X_i) = frac((b - a)^2, 12) = frac(1, 12)$.
  Sai số của tổng $S = sum_(i=1)^(100) X_i$ có $E(S) = 0$, $V(S) = frac(100, 12)$, $sigma(S) = sqrt(100 / 12) approx 2","887$.
  Theo định lý giới hạn trung tâm:
  $ P(|S| < 3) approx 2 Phi(frac(3, 2","887)) = 2 Phi(1","04) = 2 dot 0","3508 = 0","7016. $
]

#bai("5.9")[
  Một detector đếm photon; số photon ghi được trong mỗi giây là biến ngẫu nhiên có phân phối Poisson với trung bình 4 photon/giây, các giây độc lập nhau. Tính gần đúng xác suất để trong 100 giây tổng số photon đếm được nằm trong khoảng từ 380 đến 420.
]
#giai[
  Gọi $X_i tilde P(4)$ là số photon trong giây thứ $i$: $E(X_i) = V(X_i) = 4$. Tổng $S = sum_(i=1)^(100) X_i$ có:
  $ E(S) = 400; quad V(S) = 400 => sigma(S) = 20. $
  Theo định lý giới hạn trung tâm (tổng của 100 biến độc lập cùng phân phối), $S approx N(400; 20^2)$:
  $ P(380 <= S <= 420) approx 2 Phi(frac(20, 20)) = 2 Phi(1) = 2 dot 0","3413 = 0","6826. $
]

#bai("5.10")[
  Cần khảo sát bao nhiêu sinh viên để ước lượng tỉ lệ $p$ sinh viên thích học Vật lí với sai lệch $|f - p| < 0","03$ và xác suất không nhỏ hơn 0,95, khi chưa có thông tin gì về $p$:
  #y[a) theo bất đẳng thức Chebyshev;]
  #y[b) theo định lý Moivre -- Laplace?]
]
#giai[
  Vì chưa biết $p$, dùng $p q <= 0","25$.

  *a)* $1 - frac(1, 4 n epsilon^2) >= 0","95 <=> n >= frac(1, 4 dot 0","03^2 dot 0","05) approx 5555","6 => n = 5556$ sinh viên.

  *b)* $2 Phi(2 epsilon sqrt(n)) >= 0","95 <=> 2 epsilon sqrt(n) >= 1","96 <=> n >= frac(1","96^2 dot 0","25, 0","03^2) approx 1067","1 => n = 1068$ sinh viên.
]

#bai("5.11")[
  Biến ngẫu nhiên rời rạc $X$ có bảng phân phối:
  #align(center)[
    #v(3pt)
    #table(
      columns: (1.5cm, 1.5cm, 1.5cm, 1.5cm, 1.5cm, 1.5cm),
      align: center + horizon,
      stroke: 0.4pt,
      [$X$], [1], [2], [3], [4], [5],
      [$P$], [0,1], [0,2], [0,4], [0,2], [0,1],
    )
  ]
  Dùng bất đẳng thức Chebyshev đánh giá $P(|X - E(X)| < 2)$, rồi so sánh với giá trị đúng.
]
#giai[
  $ E(X) = 1(0","1) + 2(0","2) + 3(0","4) + 4(0","2) + 5(0","1) = 3. $
  $ V(X) = sum (x_i - 3)^2 p_i = 4(0","1) + 1(0","2) + 0(0","4) + 1(0","2) + 4(0","1) = 1","2. $
  Theo bất đẳng thức Chebyshev với $epsilon = 2$:
  $ P(|X - 3| < 2) >= 1 - frac(1","2, 4) = 0","7. $
  Giá trị đúng: $P(|X - 3| < 2) = P(2 <= X <= 4) = 0","2 + 0","4 + 0","2 = 0","8 >= 0","7$ (thỏa mãn đánh giá).
]

#bai("5.12*")[
  (Bước ngẫu nhiên -- mô hình khuếch tán) Một phân tử thực hiện $n = 10 thin 000$ bước dịch chuyển dọc trục $O x$; mỗi bước dài 1 nm, sang phải hoặc sang trái với xác suất như nhau, các bước độc lập. Tính gần đúng xác suất để sau $n$ bước, phân tử cách vị trí ban đầu:
  #y[a) không quá 100 nm;]
  #y[b) không quá 200 nm.]
]
#giai[
  Gọi $X_i = plus.minus 1$ (nm) là bước thứ $i$: $E(X_i) = 0$, $V(X_i) = E(X_i^2) = 1$. Vị trí sau $n$ bước $S = sum X_i$ có $E(S) = 0$, $V(S) = n = 10 thin 000$, $sigma(S) = 100$ nm.
  Theo định lý giới hạn trung tâm, $S approx N(0; 100^2)$:

  *a)* $P(|S| <= 100) approx 2 Phi(1) = 0","6826$.

  *b)* $P(|S| <= 200) approx 2 Phi(2) = 2 dot 0","4772 = 0","9544$.

  _Ý nghĩa vật lí:_ độ dịch chuyển điển hình tăng theo $sqrt(n)$ (không phải theo $n$) -- đây là cơ sở của định luật khuếch tán $chevron.l x^2 chevron.r prop t$.
]

#pagebreak()

== Tóm tắt kiến thức sử dụng trong chương 5

#block(
  width: 100%,
  stroke: 0.5pt + rgb("cbd5e1"),
  fill: rgb("f8fafc"),
  inset: 12pt,
  radius: 4pt,
)[
  *1. Bất đẳng thức Markov và Chebyshev*
  - *Markov:* Nếu $X >= 0$ và $a > 0$ thì $P(X >= a) <= frac(E(X), a)$.
  - *Chebyshev:* Với mọi $epsilon > 0$:
    $ P(|X - E(X)| >= epsilon) <= frac(V(X), epsilon^2) quad <=> quad P(|X - E(X)| < epsilon) >= 1 - frac(V(X), epsilon^2). $
  - Dùng khi *chỉ biết* kì vọng (Markov) hoặc kì vọng và phương sai (Chebyshev), không biết phân phối.

  *2. Luật số lớn*
  - *Luật số lớn Chebyshev:* $X_1, ..., X_n$ độc lập, cùng kì vọng $mu$, phương sai bị chặn ($V(X_i) <= C$). Khi đó $overline(X) = frac(1, n) sum X_i$ hội tụ theo xác suất về $mu$:
    $ P(|overline(X) - mu| < epsilon) >= 1 - frac(sigma^2, n epsilon^2) -> 1 quad (n -> infinity). $
  - *Luật số lớn Bernoulli:* Tần suất $f = m / n$ trong $n$ phép thử Bernoulli hội tụ theo xác suất về $p$:
    $ P(|f - p| < epsilon) >= 1 - frac(p q, n epsilon^2) >= 1 - frac(1, 4 n epsilon^2). $

  *3. Định lý giới hạn trung tâm (Lindeberg -- Lévy)*
  - $X_1, ..., X_n$ độc lập, cùng phân phối, $E(X_i) = mu$, $V(X_i) = sigma^2$. Khi $n$ đủ lớn ($n >= 30$):
    $ S_n = sum X_i approx N(n mu, n sigma^2); quad overline(X) approx N(mu, frac(sigma^2, n)); quad P(a <= S_n <= b) approx Phi(frac(b - n mu, sigma sqrt(n))) - Phi(frac(a - n mu, sigma sqrt(n))). $

  *4. Định lý Moivre -- Laplace (xấp xỉ nhị thức bằng chuẩn)* -- $X tilde B(n, p)$, $n$ lớn, $n p >= 5$ và $n q >= 5$:
  - *Địa phương:* $P(X = k) approx frac(1, sqrt(n p q)) phi(frac(k - n p, sqrt(n p q)))$ với $phi(x) = frac(1, sqrt(2 pi)) e^(-x^2/2)$, $phi(-x) = phi(x)$.
  - *Tích phân:* $P(k_1 <= X <= k_2) approx Phi(frac(k_2 - n p, sqrt(n p q))) - Phi(frac(k_1 - n p, sqrt(n p q)))$.
  - *Hiệu chỉnh liên tục (chính xác hơn):* thay $k_1 -> k_1 - 0","5$, $k_2 -> k_2 + 0","5$.

  *5. Chọn công cụ xấp xỉ*
  - $n$ lớn, $p$ nhỏ ($n p < 5$): Poisson $P(lambda = n p)$. $n$ lớn, $n p >= 5, n q >= 5$: Moivre -- Laplace.
  - Tổng / trung bình nhiều biến độc lập cùng phân phối: định lý giới hạn trung tâm.
  - Chỉ biết $E$, $V$, đề hỏi "đánh giá", "ít nhất", "không vượt quá": Chebyshev / Markov.
]


#pagebreak()

= Bài tập chương 6

#bai("6.1")[
  Đo chiều cao và đường kính của một loại cây có cùng độ tuổi, ta được kết quả cho ở bảng sau:
  #align(center)[
    #v(3pt)
    #table(
      columns: (auto, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
      align: center + horizon,
      stroke: 0.4pt,
      [Chiều cao (cm)], [100], [102], [105], [98], [102], [107], [104], [99], [105], [103], [102], [106],
      [Đường kính (cm)], [12], [13], [14], [12], [11], [16], [11], [13], [15], [14], [12], [12],
    )
  ]
  Tính trung bình và phương sai mẫu của chiều cao và đường kính.
]
#giai[
  Quy mô mẫu là $n = 12$ cây.

  *1. Đối với chiều cao ($X$):*
  - Chiều cao trung bình mẫu:
    $ overline(x) &= frac(1, 12) sum_(i=1)^(12) x_i \
                  &= frac(100 + 102 + 105 + 98 + 102 + 107 + 104 + 99 + 105 + 103 + 102 + 106, 12) \
                  &= frac(1233, 12) = 102","75 thin ("cm"). $

  - Tính tổng bình phương:
    $ sum_(i=1)^(12) x_i^2 = 100^2 + 102^2 + dots + 106^2 = 126 thin 777. $

  - Phương sai mẫu chưa hiệu chỉnh:
    $ S_X^2 &= frac(1, 12) sum_(i=1)^(12) x_i^2 - (overline(x))^2 \
            &= frac(126 thin 777, 12) - (102","75)^2 = 10564","75 - 10557","5625 = 7","1875 thin ("cm"^2). $

  - Phương sai mẫu hiệu chỉnh:
    $ s_X^2 = frac(n, n - 1) S_X^2 = frac(12, 11) dot 7","1875 approx 7","8409 thin ("cm"^2) quad (=> s_X approx 2","8002 thin "cm"). $

  *2. Đối với đường kính ($Y$):*
  - Đường kính trung bình mẫu:
    $ overline(y) &= frac(1, 12) sum_(i=1)^(12) y_i \
                  &= frac(12 + 13 + 14 + 12 + 11 + 16 + 11 + 13 + 15 + 14 + 12 + 12, 12) \
                  &= frac(155, 12) approx 12","9167 thin ("cm"). $

  - Tính tổng bình phương:
    $ sum_(i=1)^(12) y_i^2 = 12^2 + 13^2 + dots + 12^2 = 2029. $

  - Phương sai mẫu chưa hiệu chỉnh:
    $ S_Y^2 &= frac(2029, 12) - (frac(155, 12))^2 \
            &= frac(24348 - 24025, 144) = frac(323, 144) approx 2","2431 thin ("cm"^2). $

  - Phương sai mẫu hiệu chỉnh:
    $ s_Y^2 = frac(12, 11) dot frac(323, 144) = frac(323, 132) approx 2","4470 thin ("cm"^2) quad (=> s_Y approx 1","5643 thin "cm"). $
]

#bai("6.2")[
  Điều tra năng suất lúa trên diện tích 100 hecta trồng lúa của một vùng, người ta thu được bảng số liệu theo bảng bên dưới. Tính trung bình và phương sai của mẫu.
  #align(center)[
    #v(3pt)
    #table(
      columns: (auto, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
      align: center + horizon,
      stroke: 0.4pt,
      [Năng suất (tạ/ha)], [41], [44], [45], [46], [48], [52], [54],
      [Diện tích tương ứng (ha)], [10], [20], [30], [15], [10], [10], [5],
    )
  ]
]
#giai[
  Kích thước mẫu là tổng diện tích điều tra:
  $ n = sum_(i=1)^7 n_i = 10 + 20 + 30 + 15 + 10 + 10 + 5 = 100 thin ("ha"). $

  - Năng suất lúa trung bình của mẫu:
    $ overline(x) &= frac(1, n) sum_(i=1)^7 n_i x_i \
                  &= frac(1, 100) [ (41 dot 10) + (44 dot 20) + (45 dot 30) + (46 dot 15) \
                  &quad quad + (48 dot 10) + (52 dot 10) + (54 dot 5) ] \
                  &= frac(1, 100) (410 + 880 + 1350 + 690 + 480 + 520 + 270) \
                  &= frac(4600, 100) = 46 thin ("tạ/ha"). $

  - Tính tổng bình phương có trọng số:
    $ sum_(i=1)^7 n_i x_i^2 &= (41^2 dot 10) + (44^2 dot 20) + (45^2 dot 30) + (46^2 dot 15) \
                           &quad + (48^2 dot 10) + (52^2 dot 10) + (54^2 dot 5) \
                           &= 16810 + 38720 + 60750 + 31740 + 23040 + 27040 + 14580 \
                           &= 212 thin 680. $

  - Phương sai mẫu chưa hiệu chỉnh:
    $ S^2 = frac(1, n) sum_(i=1)^7 n_i x_i^2 - (overline(x))^2 = frac(212 thin 680, 100) - 46^2 = 2126","8 - 2116 = 10","8 thin ("(tạ/ha)"^2). $

  - Phương sai mẫu hiệu chỉnh:
    $ s^2 = frac(n, n - 1) S^2 = frac(100, 99) dot 10","8 = frac(1080, 99) approx 10","9091 thin ("(tạ/ha)"^2). $
    Độ lệch tiêu chuẩn hiệu chỉnh là $s = sqrt(10","9091) approx 3","3029$ tạ/ha.
]

#bai("6.3")[
  Quan sát về thời gian cần thiết để sản xuất một chi tiết máy, ta thu được các số liệu cho ở bảng sau:
  #align(center)[
    #v(3pt)
    #table(
      columns: (auto, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
      align: center + horizon,
      stroke: 0.4pt,
      [Khoảng thời gian (phút)], [20 - 25], [25 - 30], [30 - 35], [35 - 40], [40 - 45], [45 - 50], [50 - 55],
      [Số quan sát], [2], [14], [26], [32], [14], [8], [4],
    )
  ]
  Tính trung bình và phương sai mẫu.
]
#giai[
  Đối với số liệu ghép lớp, ta chọn giá trị đại diện là trung điểm $x_i = frac(a_i + b_i, 2)$ của từng khoảng:
  - $[20; 25) => x_1 = 22","5$; $n_1 = 2$.
  - $[25; 30) => x_2 = 27","5$; $n_2 = 14$.
  - $[30; 35) => x_3 = 32","5$; $n_3 = 26$.
  - $[35; 40) => x_4 = 37","5$; $n_4 = 32$.
  - $[40; 45) => x_5 = 42","5$; $n_5 = 14$.
  - $[45; 50) => x_6 = 47","5$; $n_6 = 8$.
  - $[50; 55) => x_7 = 52","5$; $n_7 = 4$.

  Tổng số quan sát là $n = sum n_i = 2 + 14 + 26 + 32 + 14 + 8 + 4 = 100$.

  - Thời gian sản xuất trung bình mẫu:
    $ overline(x) &= frac(1, 100) sum_(i=1)^7 n_i x_i \
                  &= frac(1, 100) [ (22","5 dot 2) + (27","5 dot 14) + (32","5 dot 26) + (37","5 dot 32) \
                  &quad quad + (42","5 dot 14) + (47","5 dot 8) + (52","5 dot 4) ] \
                  &= frac(1, 100) (45 + 385 + 845 + 1200 + 595 + 380 + 210) \
                  &= frac(3660, 100) = 36","6 thin ("phút"). $

  - Tính tổng bình phương:
    $ sum_(i=1)^7 n_i x_i^2 &= (22","5^2 dot 2) + (27","5^2 dot 14) + (32","5^2 dot 26) + (37","5^2 dot 32) \
                           &quad + (42","5^2 dot 14) + (47","5^2 dot 8) + (52","5^2 dot 4) \
                           &= 1012","5 + 10587","5 + 27462","5 + 45000 \
                           &quad + 25287","5 + 18050 + 11025 \
                           &= 138 thin 425. $

  - Phương sai mẫu chưa hiệu chỉnh:
    $ S^2 = frac(138 thin 425, 100) - (36","6)^2 = 1384","25 - 1339","56 = 44","69 thin ("phút"^2). $

  - Phương sai mẫu hiệu chỉnh:
    $ s^2 = frac(n, n - 1) S^2 = frac(100, 99) dot 44","69 approx 45","1414 thin ("phút"^2). $
    Độ lệch tiêu chuẩn hiệu chỉnh là $s = sqrt(45","1414) approx 6","7187$ phút.
]

#bai("6.4")[
  Văn phòng cơ quan phân tích kinh tế muốn thu thập thông tin về số ngày lưu lại thêm ở châu Âu của các khách du lịch Mỹ. Một mẫu 36 người thường trú tại Mỹ đi du lịch châu Âu có số ngày lưu lại thêm như sau:
  #align(center)[
    #v(3pt)
    #table(
      columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
      stroke: none,
      align: center + horizon,
      [41], [16], [6], [21], [10], [21], [5], [31], [20], [27],
      [17], [10], [3], [32], [2], [28], [8], [12], [21], [44],
      [1], [56], [5], [42], [3], [13], [15], [10], [8], [3],
      [1], [11], [14], [12], [64], [10], [], [], [], [],
    )
  ]
  #y[a) Tính số ngày trung bình lưu lại thêm của mẫu nói trên.]
  #y[b) Nếu chia bảng số liệu ngày theo bảng phân bố tần số ghép lớp, bắt đầu bằng 1 -- 7, và kết thúc là 61 -- 67 thì hãy tính số ngày trung bình của phân bố này.]
  #y[c) So sánh hai kết quả và nhận xét.]
]
#giai[
  Quy mô mẫu là $n = 36$ khách du lịch.

  *a)* Số ngày trung bình lưu lại thêm từ dữ liệu mẫu gốc:
  Tổng số ngày của 36 khách:
  $ sum_(i=1)^(36) x_i = 41 + 16 + 6 + dots + 64 + 10 = 643 thin ("ngày"). $
  Số ngày lưu lại thêm trung bình:
  $ overline(x) = frac(643, 36) approx 17","8611 thin ("ngày"). $

  *b)* Bảng phân bố tần số ghép lớp từ 1 -- 7 đến 61 -- 67 (bước nhảy $h = 6$):
  #align(center)[
    #table(
      columns: (2.5cm, 2.5cm, 2.2cm, 2.5cm),
      align: center + horizon,
      stroke: 0.4pt,
      [Khoảng lớp], [Trung điểm $x_i$], [Tần số $n_i$], [Tích $n_i x_i$],
      [$[1; 7)$], [4], [9], [36],
      [$[7; 13)$], [10], [9], [90],
      [$[13; 19)$], [16], [5], [80],
      [$[19; 25)$], [22], [4], [88],
      [$[25; 31)$], [28], [2], [56],
      [$[31; 37)$], [34], [2], [68],
      [$[37; 43)$], [40], [2], [80],
      [$[43; 49)$], [46], [1], [46],
      [$[49; 55)$], [52], [0], [0],
      [$[55; 61)$], [58], [1], [58],
      [$[61; 67]$], [64], [1], [64],
      [*Tổng*], [--], [*36*], [*666*],
    )
  ]

  Số ngày lưu lại thêm trung bình tính theo phân bố ghép lớp:
  $ overline(x)_("ghép lớp") = frac(1, 36) sum_(i=1)^(11) n_i x_i = frac(666, 36) = 18","50 thin ("ngày"). $

  *c) So sánh và nhận xét:*
  - Trung bình từ dữ liệu gốc là $overline(x) approx 17","86$ ngày; trung bình từ mẫu ghép lớp là $overline(x)_("ghép lớp") = 18","50$ ngày.
  - Độ chênh lệch giữa hai kết quả là $18","50 - 17","86 = 0","64$ ngày (sai số tương đối nhỏ, khoảng $3","58%$).
  - *Nhận xét:* Việc ghép lớp làm mất đi chi tiết chính xác của từng quan sát do quy mọi giá trị trong khoảng về đại diện tại trung điểm. Tuy nhiên, kết quả trung bình thu được vẫn phản ánh rất sát giá trị thực tế, đồng thời giúp việc tổng hợp, trực quan hóa và xử lý thống kê trên tập dữ liệu lớn trở nên thuận tiện và hiệu quả hơn.
]

#bai("6.5")[
  Điểm bài kiểm tra giữa kỳ của hai lớp Xác suất thống kê như sau:
  #align(center)[
    #v(3pt)
    #table(
      columns: (auto, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
      align: center + horizon,
      stroke: 0.4pt,
      [Điểm], [1], [2], [3], [4], [5], [6], [7], [8], [9], [10],
      [Lớp 1], [2], [2], [5], [10], [12], [20], [22], [15], [7], [5],
      [Lớp 2], [1], [3], [7], [12], [33], [11], [8], [7], [15], [3],
    )
  ]
  #y[a) Tính trung bình và phương sai của hai lớp này. Nhận xét.]
  #y[b) Tính tỉ lệ sinh viên đậu của mỗi lớp (điểm từ 4 trở lên là đậu)?]
  #y[c) Một sinh viên lớp 1 đạt 8 điểm sẽ có điểm cao hơn bao nhiêu % sinh viên của lớp?]
  #block(inset: (left: 26pt), above: 6pt, below: 0pt)[Một sinh viên lớp 2 đạt 5 điểm sẽ có điểm thấp hơn bao nhiêu % sinh viên của lớp?]
]
#giai[
  Quy mô mỗi lớp là:
  $ n_1 = n_2 = 100 thin ("sinh viên"). $

  *a)* Tính điểm trung bình và phương sai của hai lớp:
  - *Đối với Lớp 1:*
    $ overline(x)_1 &= frac(1, 100) sum_(i=1)^(10) n_i x_i \
                    &= frac(1, 100) [ 1(2) + 2(2) + 3(5) + 4(10) + 5(12) \
                    &quad quad + 6(20) + 7(22) + 8(15) + 9(7) + 10(5) ] \
                    &= frac(1, 100) (2 + 4 + 15 + 40 + 60 + 120 + 154 + 120 + 63 + 50) \
                    &= frac(628, 100) = 6","28 thin ("điểm"). $
    $ sum_(i=1)^(10) n_i x_i^2 &= 1^2(2) + 2^2(2) + 3^2(5) + 4^2(10) + 5^2(12) \
                               &quad + 6^2(20) + 7^2(22) + 8^2(15) + 9^2(7) + 10^2(5) \
                               &= 2 + 8 + 45 + 160 + 300 + 720 + 1078 + 960 + 567 + 500 \
                               &= 4340. $
    $ S_1^2 &= frac(4340, 100) - (6","28)^2 = 43","40 - 39","4384 = 3","9616 thin ("điểm"^2); \
      s_1^2 &= frac(100, 99) dot 3","9616 approx 4","0016; quad s_1 approx 2","0004 thin ("điểm"). $

  - *Đối với Lớp 2:*
    $ overline(x)_2 &= frac(1, 100) sum_(i=1)^(10) n_i x_i \
                    &= frac(1, 100) [ 1(1) + 2(3) + 3(7) + 4(12) + 5(33) \
                    &quad quad + 6(11) + 7(8) + 8(7) + 9(15) + 10(3) ] \
                    &= frac(1, 100) (1 + 6 + 21 + 48 + 165 + 66 + 56 + 56 + 135 + 30) \
                    &= frac(584, 100) = 5","84 thin ("điểm"). $
    $ sum_(i=1)^(10) n_i x_i^2 &= 1^2(1) + 2^2(3) + 3^2(7) + 4^2(12) + 5^2(33) \
                               &quad + 6^2(11) + 7^2(8) + 8^2(7) + 9^2(15) + 10^2(3) \
                               &= 1 + 12 + 63 + 192 + 825 + 396 + 392 + 448 + 1215 + 300 \
                               &= 3844. $
    $ S_2^2 &= frac(3844, 100) - (5","84)^2 = 38","44 - 34","1056 = 4","3344 thin ("điểm"^2); \
      s_2^2 &= frac(100, 99) dot 4","3344 approx 4","3782; quad s_2 approx 2","0924 thin ("điểm"). $

  *Nhận xét:* Lớp 1 có điểm trung bình cao hơn Lớp 2 ($6","28 > 5","84$) và phương sai nhỏ hơn ($3","96 < 4","33$). Điều này cho thấy kết quả học tập của Lớp 1 vừa tốt hơn vừa đồng đều hơn so với Lớp 2.

  *b)* Tỉ lệ sinh viên đậu (điểm từ 4 trở lên):
  - Lớp 1: Số sinh viên trượt (điểm 1, 2, 3) là $2 + 2 + 5 = 9$.
    Số sinh viên đậu là $100 - 9 = 91$. Tỉ lệ đậu: $91 / 100 = 91%$.
  - Lớp 2: Số sinh viên trượt (điểm 1, 2, 3) là $1 + 3 + 7 = 11$.
    Số sinh viên đậu là $100 - 11 = 89$. Tỉ lệ đậu: $89 / 100 = 89%$.

  *c)* So sánh thứ hạng tương đối:
  - Một sinh viên lớp 1 đạt 8 điểm: số sinh viên có điểm thấp hơn 8 điểm (điểm từ 1 đến 7) là:
    $ 2 + 2 + 5 + 10 + 12 + 20 + 22 = 73 thin ("sinh viên"). $
    Sinh viên này có điểm cao hơn $73 / 100 = 73%$ sinh viên của lớp.
  - Một sinh viên lớp 2 đạt 5 điểm: số sinh viên có điểm cao hơn 5 điểm (điểm từ 6 đến 10) là:
    $ 11 + 8 + 7 + 15 + 3 = 44 thin ("sinh viên"). $
    Sinh viên này có điểm thấp hơn $44 / 100 = 44%$ sinh viên của lớp.
]

#pagebreak()

#bai("6.6")[
  Thống kê số tiền quyên góp ủng hộ từ thiện ở một trường học gồm 30 lớp như sau (đơn vị: nghìn đồng):
  #align(center)[
    #v(3pt)
    #table(
      columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
      stroke: none,
      align: center + horizon,
      [100], [145], [110], [140], [110], [125], [120], [120], [110], [125],
      [110], [115], [120], [120], [130], [135], [135], [130], [135], [130],
      [145], [120], [125], [120], [120], [105], [125], [125], [115], [100],
    )
  ]
  #y[a) Lập bảng phân bố tần số, tần suất ghép lớp với các lớp sau: $[100; 110)$, $[110; 120)$, $[120; 130)$, $[130; 140)$, $[140; 150)$.]
  #y[c) Tính trung bình, phương sai và độ lệch tiêu chuẩn của mẫu.]
]
#giai[
  Kích thước mẫu là $n = 30$ lớp.

  *a)* Lập bảng phân bố tần số, tần suất ghép lớp:
  - Lớp $[100; 110)$: gồm các giá trị 100, 105, 100 $=> n_1 = 3$.
  - Lớp $[110; 120)$: gồm các giá trị 110 (4 lần), 115 (2 lần) $=> n_2 = 6$.
  - Lớp $[120; 130)$: gồm các giá trị 120 (7 lần), 125 (5 lần) $=> n_3 = 12$.
  - Lớp $[130; 140)$: gồm các giá trị 130 (3 lần), 135 (3 lần) $=> n_4 = 6$.
  - Lớp $[140; 150)$: gồm các giá trị 140 (1 lần), 145 (2 lần) $=> n_5 = 3$.

  #align(center)[
    #table(
      columns: (3cm, 2.5cm, 2.2cm, 2.5cm),
      align: center + horizon,
      stroke: 0.4pt,
      [Khoảng lớp], [Trung điểm $x_i$], [Tần số $n_i$], [Tần suất $f_i$],
      [$[100; 110)$], [105], [3], [0,10 (10%)],
      [$[110; 120)$], [115], [6], [0,20 (20%)],
      [$[120; 130)$], [125], [12], [0,40 (40%)],
      [$[130; 140)$], [135], [6], [0,20 (20%)],
      [$[140; 150)$], [145], [3], [0,10 (10%)],
      [*Tổng*], [--], [*30*], [*1,00 (100%)*],
    )
  ]

  *c)* Tính các đặc trưng mẫu (theo bảng số liệu ghép lớp):
  - Do bảng phân bố đối xứng qua lớp trung tâm $[120; 130)$, số tiền quyên góp trung bình:
    $ overline(x) &= frac(1, 30) [ (105 dot 3) + (115 dot 6) + (125 dot 12) + (135 dot 6) + (145 dot 3) ] \
                  &= frac(1, 30) (315 + 690 + 1500 + 810 + 435) \
                  &= frac(3750, 30) = 125 thin ("nghìn đồng"). $

  - Phương sai mẫu chưa hiệu chỉnh:
    $ S^2 &= frac(1, 30) sum_(i=1)^5 n_i (x_i - overline(x))^2 \
          &= frac(1, 30) [ 3(105 - 125)^2 + 6(115 - 125)^2 + 12(125 - 125)^2 \
          &quad quad + 6(135 - 125)^2 + 3(145 - 125)^2 ] \
          &= frac(1, 30) [ 3(400) + 6(100) + 12(0) + 6(100) + 3(400) ] \
          &= frac(1, 30) (1200 + 600 + 0 + 600 + 1200) \
          &= frac(3600, 30) = 120 thin ("(nghìn đồng)"^2). $

  - Phương sai mẫu hiệu chỉnh:
    $ s^2 = frac(n, n - 1) S^2 = frac(30, 29) dot 120 = frac(3600, 29) approx 124","1379 thin ("(nghìn đồng)"^2). $

  - Độ lệch tiêu chuẩn hiệu chỉnh:
    $ s = sqrt(s^2) = sqrt(124","1379) approx 11","1417 thin ("nghìn đồng"). $
]

#pagebreak()

== Tóm tắt kiến thức sử dụng trong chương 6

#block(
  width: 100%,
  stroke: 0.5pt + rgb("cbd5e1"),
  fill: rgb("f8fafc"),
  inset: 12pt,
  radius: 4pt,
)[
  *1. Mẫu ngẫu nhiên & Bảng phân bố tần số, tần suất*
  - Mẫu ngẫu nhiên kích thước $n$ được rút ra từ tổng thể: $W = (x_1, x_2, ..., x_n)$.
  - Bảng tần số thu gọn: Các giá trị khác nhau $x_1, x_2, ..., x_k$ xuất hiện tương ứng với các tần số $n_1, n_2, ..., n_k$ thỏa mãn $sum_(i=1)^k n_i = n$.
  - Tần suất: $f_i = frac(n_i, n)$, với $sum_(i=1)^k f_i = 1$.
  - Bảng ghép lớp: Mỗi khoảng lớp $[a_i; b_i)$ có độ rộng $h = b_i - a_i$, giá trị đại diện là trung điểm $x_i = frac(a_i + b_i, 2)$.

  *2. Trung bình mẫu (Sample Mean)*
  - Công thức tính:
    $ overline(X) = frac(1, n) sum_(i=1)^n x_i = frac(1, n) sum_(i=1)^k n_i x_i = sum_(i=1)^k f_i x_i. $
  - Tính chất thống kê: $E(overline(X)) = mu$ và $V(overline(X)) = frac(sigma^2, n)$. Trung bình mẫu là ước lượng điểm không chệch và hiệu quả của kì vọng tổng thể $mu$.

  *3. Phương sai mẫu & Độ lệch tiêu chuẩn (Sample Variance & Standard Deviation)*
  - *Phương sai mẫu chưa hiệu chỉnh:*
    $ S^2 = frac(1, n) sum_(i=1)^k n_i (x_i - overline(X))^2 = frac(1, n) sum_(i=1)^k n_i x_i^2 - (overline(X))^2. $
  - *Phương sai mẫu hiệu chỉnh:*
    $ s^2 = frac(n, n - 1) S^2 = frac(1, n - 1) sum_(i=1)^k n_i (x_i - overline(X))^2. $
  - *Độ lệch tiêu chuẩn mẫu:* $S = sqrt(S^2)$ (hoặc $s = sqrt(s^2)$).
  - Tính chất: $E(s^2) = sigma^2$, do đó $s^2$ là ước lượng không chệch của phương sai tổng thể $sigma^2$.

  *4. Phân vị và thứ hạng phần trăm*
  - Tần số tích lũy $N_j = sum_(i=1)^j n_i$ biểu thị số quan sát có giá trị nhỏ hơn hoặc bằng $x_j$.
  - Tỉ lệ phần trăm các quan sát đạt mức ngưỡng $x_0$ được tính bằng tỉ số giữa số phần tử thỏa mãn và tổng dung lượng mẫu $n$.
]


#pagebreak()

= Bài tập chương 7

#bai("7.1")[
  Thống kê tuổi thọ của 256 bóng đèn do một nhà máy sản xuất, ta có bảng thống kê sau:
  #align(center)[
    #v(3pt)
    #table(
      columns: (1.5fr, 1fr, 1.5fr, 1fr),
      align: center + horizon,
      stroke: 0.4pt,
      [Tuổi thọ (giờ)], [Số bóng], [Tuổi thọ (giờ)], [Số bóng],
      [1 000 -- 1 100], [4], [1 600 -- 1 700], [42],
      [1 100 -- 1 200], [10], [1 700 -- 1 800], [32],
      [1 200 -- 1 300], [16], [1 800 -- 1 900], [26],
      [1 300 -- 1 400], [20], [1 900 -- 2 000], [14],
      [1 400 -- 1 500], [36], [2 000 -- 2 100], [8],
      [1 500 -- 1 600], [48], [], [],
    )
  ]
  #y[a) Hãy ước lượng tuổi thọ trung bình của loại bóng đèn này do nhà máy này sản xuất với độ tin cậy 95%?]
  #y[b) Người ta quy ước những bóng đèn có tuổi thọ trên 1 700 giờ trở lên là bóng loại I. Hãy ước lượng tỉ lệ và tuổi thọ trung bình của bóng loại I ở nhà máy này với độ tin cậy 99%?]
]
#giai[
  Chọn giá trị đại diện là trung điểm các khoảng tuổi thọ:
  - $x_1 = 1050; thin n_1 = 4$
  - $x_2 = 1150; thin n_2 = 10$
  - $x_3 = 1250; thin n_3 = 16$
  - $x_4 = 1350; thin n_4 = 20$
  - $x_5 = 1450; thin n_5 = 36$
  - $x_6 = 1550; thin n_6 = 48$
  - $x_7 = 1650; thin n_7 = 42$
  - $x_8 = 1750; thin n_8 = 32$
  - $x_9 = 1850; thin n_9 = 26$
  - $x_(10) = 1950; thin n_(10) = 14$
  - $x_(11) = 2050; thin n_(11) = 8$

  Kích thước mẫu: $n = sum_(i=1)^(11) n_i = 256$ bóng.

  - Tuổi thọ trung bình mẫu:
    $ overline(x) &= frac(1, n) sum_(i=1)^(11) n_i x_i = frac(406 thin 400, 256) = 1587","5 thin ("giờ"). $

  - Tính phương sai mẫu:
    $ sum_(i=1)^(11) n_i x_i^2 = 658 thin 280 thin 000; quad S^2 = frac(658 thin 280 thin 000, 256) - (1587","5)^2 = 51 thin 250 thin ("giờ"^2). $
    Phương sai mẫu hiệu chỉnh và độ lệch tiêu chuẩn mẫu hiệu chỉnh:
    $ s^2 = frac(n, n - 1) S^2 = frac(256, 255) dot 51 thin 250 approx 51 thin 450","9804 => s approx 226","8281 thin ("giờ"). $

  *a) Ước lượng tuổi thọ trung bình với độ tin cậy 95%:*
  - Vì quy mô mẫu $n = 256 > 30$, ta áp dụng xấp xỉ phân phối chuẩn:
    Độ tin cậy $1 - alpha = 0","95 => alpha / 2 = 0","025$.
    Tra bảng Laplace (Phụ lục 1): $Phi(u_(alpha / 2)) = frac(1 - alpha, 2) = 0","4750 => u_(alpha / 2) = 1","96$.
  - Sai số ước lượng (độ chính xác):
    $ epsilon = u_(alpha / 2) dot frac(s, sqrt(n)) = 1","96 dot frac(226","8281, sqrt(256)) = 1","96 dot frac(226","8281, 16) approx 27","7864 thin ("giờ"). $
  - Khoảng tin cậy 95% cho tuổi thọ trung bình $mu$:
    $ mu in (overline(x) - epsilon; overline(x) + epsilon) = (1587","5 - 27","7864; 1587","5 + 27","7864) = (1559","7136; 1615","2864) thin ("giờ"). $

  *b) Ước lượng tỉ lệ và tuổi thọ trung bình của bóng loại I với độ tin cậy 99%:*
  - Các bóng có tuổi thọ từ $1 thin 700$ giờ trở lên gồm các khoảng: $[1700 - 1800)$, $[1800 - 1900)$, $[1900 - 2000)$, $[2000 - 2100)$.
    Số bóng loại I quan sát được:
    $ m = 32 + 26 + 14 + 8 = 80 thin ("bóng"). $
    Tỉ lệ mẫu của bóng loại I:
    $ f = frac(m, n) = frac(80, 256) = 0","3125 thin (31","25%). $
  - Với độ tin cậy $1 - alpha = 0","99 => Phi(u_(alpha / 2)) = 0","4950 => u_(alpha / 2) = 2","575$ (hoặc lấy $2","58$).
  - Sai số ước lượng tỉ lệ:
    $ epsilon_p = u_(alpha / 2) sqrt(frac(f (1 - f), n)) = 2","575 sqrt(frac(0","3125 dot 0","6875, 256)) approx 0","0746 thin (7","46%). $
    Khoảng tin cậy 99% cho tỉ lệ bóng loại I của nhà máy:
    $ p in (0","3125 - 0","0746; 0","3125 + 0","0746) = (0","2379; 0","3871) thin (23","79% "đến" 38","71%). $

  - *Tuổi thọ trung bình của bóng loại I:*
    Xét riêng mẫu $n_I = 80$ bóng loại I:
    $ overline(x)_I &= frac(1, 80) [ (1750 dot 32) + (1850 dot 26) + (1950 dot 14) + (2050 dot 8) ] \
                    &= frac(147 thin 800, 80) = 1847","5 thin ("giờ"). $
    Phương sai mẫu của nhóm bóng loại I:
    $ sum n_i x_i^2 = 273 thin 840 thin 000; quad S_I^2 = frac(273 thin 840 thin 000, 80) - (1847","5)^2 = 9743","75 thin ("giờ"^2). $
    $ s_I^2 = frac(80, 79) dot 9743","75 approx 9867","0886 => s_I approx 99","3332 thin ("giờ"). $
    Vì $n_I = 80 > 30$, sai số ước lượng với độ tin cậy 99%:
    $ epsilon_I = u_(alpha / 2) dot frac(s_I, sqrt(n_I)) = 2","575 dot frac(99","3332, sqrt(80)) approx 28","5974 thin ("giờ"). $
    Khoảng tin cậy 99% cho tuổi thọ trung bình bóng loại I:
    $ mu_I in (1847","5 - 28","5974; 1847","5 + 28","5974) = (1818","9026; 1876","0974) thin ("giờ"). $
]

#bai("7.2")[
  Để nghiên cứu tuổi thọ của một thiết bị (tháng), người ta điều tra ngẫu nhiên 15 thiết bị loại này với kết quả như sau: 114, 78, 96, 137, 78, 103, 126, 86, 99, 114, 72, 104, 73, 86, 117. Giả sử tuổi thọ của thiết bị có phân phối chuẩn.
  #y[a) Tìm ước lượng điểm cho trung bình và phương sai của tuổi thọ thiết bị và khoảng tin cậy 95% của ước lượng trung bình của thiết bị.]
  #y[b) Nếu muốn có độ tin cậy của ước lượng là 95% và độ chính xác là 5 tháng thì cần điều tra thêm bao nhiêu thiết bị nữa?]
]
#giai[
  Mẫu số liệu gồm $n = 15$ thiết bị.
  - Tổng các giá trị quan sát:
    $ sum_(i=1)^(15) x_i = 114 + 78 + dots + 117 = 1483. $
  - Tổng các bình phương:
    $ sum_(i=1)^(15) x_i^2 = 114^2 + 78^2 + dots + 117^2 = 152 thin 227. $

  *a) Ước lượng điểm và khoảng tin cậy 95%: *
  - Ước lượng điểm cho tuổi thọ trung bình là trung bình mẫu:
    $ overline(x) = frac(1, 15) sum_(i=1)^(15) x_i = frac(1483, 15) approx 98","8667 thin ("tháng"). $
  - Ước lượng điểm không chệch cho phương sai là phương sai mẫu hiệu chỉnh:
    $ s^2 = frac(1, n - 1) [ sum_(i=1)^(15) x_i^2 - frac((sum x_i)^2, n) ] = frac(1, 14) [ 152 thin 227 - frac(1483^2, 15) ] approx 401","5524 thin ("tháng"^2). $
    Độ lệch tiêu chuẩn mẫu hiệu chỉnh: $s = sqrt(401","5524) approx 20","0388$ tháng.
  - Do biến ngẫu nhiên có phân phối chuẩn, cỡ mẫu $n = 15 < 30$ và chưa biết phương sai tổng thể, ta sử dụng phân phối Student với bậc tự do $nu = n - 1 = 14$:
    Với độ tin cậy $1 - alpha = 0","95 => alpha / 2 = 0","025$.
    Tra bảng giá trị tới hạn Student (Phụ lục 3): $t_(0","025)(14) = 2","145$.
  - Sai số ước lượng:
    $ epsilon = t_(alpha / 2)(n - 1) dot frac(s, sqrt(n)) = 2","145 dot frac(20","0388, sqrt(15)) approx 11","0971 thin ("tháng"). $
  - Khoảng tin cậy 95% cho tuổi thọ trung bình $mu$:
    $ mu in (overline(x) - epsilon; overline(x) + epsilon) = (98","8667 - 11","0971; 98","8667 + 11","0971) = (87","7696; 109","9638) thin ("tháng"). $

  *b) Xác định cỡ mẫu cần thiết khi $epsilon_0 = 5$ tháng và độ tin cậy 95%:*
  - Cỡ mẫu tối thiểu cần điều tra để đạt sai số $epsilon_0 = 5$ tháng (dùng giá trị phân vị chuẩn $u_(0","025) = 1","96$ khi quy mô mẫu mở rộng):
    $ n' >= (frac(u_(alpha / 2) dot s, epsilon_0))^2 = (frac(1","96 dot 20","0388, 5))^2 approx 7","8552^2 approx 61","70 => n' = 62 thin ("thiết bị"). $
  - Số thiết bị cần điều tra thêm:
    $ Delta n = n' - n = 62 - 15 = 47 thin ("thiết bị"). $
    *(Nếu tính theo phân phối Student $t_(0","025)(14) = 2","145$: $n' >= (frac(2","145 dot 20","0388, 5))^2 approx 73","89 => n' = 74$, tức cần điều tra thêm $74 - 15 = 59$ thiết bị).*
]

#bai("7.3")[
  Điểm trung bình môn toán của 114 thí sinh dự thi vào một trường Đại học X là 5 với độ lệch chuẩn mẫu là 2,6.
  #y[a) Ước lượng điểm trung bình môn toán của toàn thể thí sinh thi vào Đại học X với độ tin cậy 99%?]
  #y[b) Với sai số ước lượng 0,35 điểm, hãy xác định độ tin cậy.]
]
#giai[
  Từ giả thiết của đề bài, ta có các số liệu mẫu:
  $ n = 114; quad overline(x) = 5; quad s = 2","6. $

  *a) Ước lượng điểm trung bình với độ tin cậy 99%:*
  - Do cỡ mẫu $n = 114 > 30$, ta áp dụng phân phối chuẩn tắc:
    Độ tin cậy $1 - alpha = 0","99 => Phi(u_(alpha / 2)) = frac(0","99, 2) = 0","4950 => u_(alpha / 2) = 2","575$ (hoặc $2","58$).
  - Sai số ước lượng:
    $ epsilon = u_(alpha / 2) dot frac(s, sqrt(n)) = 2","575 dot frac(2","6, sqrt(114)) approx 2","575 dot 0","2435 approx 0","6270 thin ("điểm"). $
    *(Nếu dùng $u_(alpha / 2) = 2","58$: $epsilon = 2","58 dot 0","2435 approx 0","6283$ điểm).*
  - Khoảng tin cậy 99% cho điểm trung bình toàn thể thí sinh:
    $ mu in (overline(x) - epsilon; overline(x) + epsilon) = (5 - 0","6270; 5 + 0","6270) = (4","3730; 5","6270) thin ("điểm"). $

  *b) Xác định độ tin cậy khi sai số ước lượng $epsilon = 0","35$ điểm:*
  - Từ công thức sai số $epsilon = u_(alpha / 2) dot frac(s, sqrt(n))$, ta suy ra:
    $ u_(alpha / 2) = frac(epsilon sqrt(n), s) = frac(0","35 dot sqrt(114), 2","6) approx frac(0","35 dot 10","6771, 2","6) approx 1","4373 approx 1","44. $
  - Tra bảng hàm Laplace (Phụ lục 1):
    $ Phi(1","44) = 0","4251 quad ("hoặc nội suy chính xác" Phi(1","4373) approx 0","4247). $
  - Độ tin cậy của ước lượng:
    $ gamma = 1 - alpha = 2 Phi(u_(alpha / 2)) = 2 dot 0","4251 = 0","8502 thin (85","02%). $
]

#pagebreak()

#bai("7.4")[
  Để ước lượng tỉ lệ sản phẩm xấu của một kho đồ hộp, người ta kiểm tra ngẫu nhiên 100 hộp thấy có 11 hộp xấu.
  #y[a) Ước lượng tỉ lệ sản phẩm xấu của kho đồ hộp với độ tin cậy 99%?]
  #y[b) Với sai số cho phép 4%, hãy xác định độ tin cậy.]
]
#giai[
  Dung lượng mẫu $n = 100$ hộp, số sản phẩm xấu quan sát được là $m = 11$.
  Tỉ lệ sản phẩm xấu trong mẫu:
  $ f = frac(m, n) = frac(11, 100) = 0","11 thin (11%). $

  *a) Ước lượng tỉ lệ sản phẩm xấu với độ tin cậy 99%:*
  - Với độ tin cậy $1 - alpha = 0","99 => Phi(u_(alpha / 2)) = 0","4950 => u_(alpha / 2) = 2","575$ (hoặc $2","58$).
  - Sai số ước lượng tỉ lệ:
    $ epsilon = u_(alpha / 2) sqrt(frac(f (1 - f), n)) = 2","575 sqrt(frac(0","11 dot 0","89, 100)) = 2","575 sqrt(0","000979) approx 0","0806 thin (8","06%). $
    *(Nếu dùng $u_(alpha / 2) = 2","58$: $epsilon = 2","58 dot 0","03129 approx 0","0807$ hay $8","07%$).*
  - Khoảng tin cậy 99% cho tỉ lệ sản phẩm xấu $p$:
    $ p in (f - epsilon; f + epsilon) = (0","11 - 0","0806; 0","11 + 0","0806) = (0","0294; 0","1906) thin (2","94% "đến" 19","06%). $

  *b) Xác định độ tin cậy với sai số cho phép $epsilon = 4% = 0","04$:*
  - Từ công thức sai số tỉ lệ:
    $ u_(alpha / 2) = frac(epsilon, sqrt(frac(f(1 - f), n))) = frac(0","04, sqrt(frac(0","11 dot 0","89, 100))) = frac(0","04, 0","03129) approx 1","2784 approx 1","28. $
  - Tra bảng Laplace (Phụ lục 1): $Phi(1","28) = 0","3997$.
  - Độ tin cậy tương ứng:
    $ gamma = 1 - alpha = 2 Phi(1","28) = 2 dot 0","3997 = 0","7994 thin (79","94% approx 80%). $
]

#bai("7.5")[
  Rủi ro đầu tư thường được đo bằng phương sai của tỉ lệ thu hồi vốn của dự án. Theo dõi ngẫu nhiên tỉ lệ thu hồi vốn của hai dự án trong 10 năm thu được kết quả sau:
  #align(center)[
    #v(3pt)
    #table(
      columns: (auto, 1fr, 1fr),
      align: center + horizon,
      stroke: 0.4pt,
      [], [Dự án 1], [Dự án 2],
      [Kích thước mẫu], [10], [10],
      [Tỉ lệ thu hồi vốn TB (%)], [13,2], [14,6],
      [Phương sai mẫu $(%)^2$], [10,9], [25,6],
    )
  ]
  #y[a) Với độ tin cậy 95%, hãy ước lượng tỉ lệ thu hồi vốn trung bình của hai dự án.]
  #y[b) Hãy ước lượng phương sai của tỉ lệ thu hồi vốn của 2 dự án, biết rằng tỉ lệ thu hồi vốn là biến ngẫu nhiên có phân phối chuẩn.]
]
#giai[
  Dữ liệu mẫu của hai dự án:
  - Dự án 1: $n_1 = 10; thin overline(x)_1 = 13","2%; thin s_1^2 = 10","9 => s_1 = sqrt(10","9) approx 3","3015%$.
  - Dự án 2: $n_2 = 10; thin overline(x)_2 = 14","6%; thin s_2^2 = 25","6 => s_2 = sqrt(25","6) approx 5","0596%$.

  *a) Ước lượng tỉ lệ thu hồi vốn trung bình của hai dự án (độ tin cậy 95%):*
  - Do biến ngẫu nhiên có phân phối chuẩn, cỡ mẫu $n = 10 < 30$, chưa biết phương sai tổng thể $sigma^2$, ta dùng phân phối Student với bậc tự do $nu = n - 1 = 9$:
    Với độ tin cậy $1 - alpha = 0","95 => alpha / 2 = 0","025$.
    Tra bảng Student (Phụ lục 3): $t_(0","025)(9) = 2","262$.
  - *Đối với Dự án 1:*
    Sai số ước lượng:
    $ epsilon_1 = t_(alpha / 2)(9) dot frac(s_1, sqrt(n_1)) = 2","262 dot frac(3","3015, sqrt(10)) approx 2","3618%. $
    Khoảng tin cậy 95% cho $mu_1$:
    $ mu_1 in (13","2 - 2","3618; 13","2 + 2","3618) = (10","8382%; 15","5618%). $
  - *Đối với Dự án 2:*
    Sai số ước lượng:
    $ epsilon_2 = t_(alpha / 2)(9) dot frac(s_2, sqrt(n_2)) = 2","262 dot frac(5","0596, sqrt(10)) approx 3","6195%. $
    Khoảng tin cậy 95% cho $mu_2$:
    $ mu_2 in (14","6 - 3","6195; 14","6 + 3","6195) = (10","9805%; 18","2195%). $

  *b) Ước lượng phương sai tỉ lệ thu hồi vốn của 2 dự án (độ tin cậy 95%):*
  - Thống kê ước lượng phương sai của phân phối chuẩn tuân theo phân phối Chi-bình phương:
    $ chi^2 = frac((n - 1) s^2, sigma^2) tilde chi^2(n - 1). $
    Khoảng tin cậy hai phía cho phương sai $sigma^2$:
    $ frac((n - 1) s^2, chi_(alpha / 2)^2(n - 1)) < sigma^2 < frac((n - 1) s^2, chi_(1 - alpha / 2)^2(n - 1)). $
  - Với $n - 1 = 9$, $alpha = 0","05 => alpha / 2 = 0","025$ và $1 - alpha / 2 = 0","975$.
    Tra bảng Chi-bình phương (Phụ lục 2) ở dòng $n = 9$:
    $ chi_(0","025)^2(9) = 19","02; quad chi_(0","975)^2(9) = 2","700. $
  - *Đối với Dự án 1:*
    $ (n_1 - 1) s_1^2 = 9 dot 10","9 = 98","1. $
    Khoảng tin cậy 95% cho phương sai $sigma_1^2$:
    $ sigma_1^2 in (frac(98","1, 19","02); frac(98","1, 2","700)) = (5","1577; 36","3333) thin (%^2). $
  - *Đối với Dự án 2:*
    $ (n_2 - 1) s_2^2 = 9 dot 25","6 = 230","4. $
    Khoảng tin cậy 95% cho phương sai $sigma_2^2$:
    $ sigma_2^2 in (frac(230","4, 19","02); frac(230","4, 2","700)) = (12","1136; 85","3333) thin (%^2). $
]

#bai("7.6")[
  Đo đường kính của 100 chi tiết do một máy sản xuất, ta có số liệu dạng khoảng cho bởi bảng sau:
  #align(center)[
    #v(3pt)
    #table(
      columns: (auto, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
      align: center + horizon,
      stroke: 0.4pt,
      [Đường kính (mm)],
      [19,80 -- 19,85],
      [19,85 -- 19,90],
      [19,90 -- 19,95],
      [19,95 -- 20,00],
      [20,00 -- 20,05],
      [20,05 -- 20,10],
      [20,10 -- 20,15],
      [20,15 -- 20,20],

      [Số chi tiết], [3], [5], [16], [28], [23], [14], [7], [4],
    )
  ]
  Theo quy định, những chi tiết có đường kính lớn hơn 19,9mm đến 20,1mm là những chi tiết đạt chuẩn.
  #y[a) Ước lượng đường kính trung bình của những chi tiết đạt tiêu chuẩn cho máy này sản xuất với độ tin cậy 95%.]
  #y[b) Ước lượng tỉ lệ chi tiết đạt tiêu chuẩn của máy với độ tin cậy 96%.]
  #y[c) Khi ước lượng tỉ lệ chi tiết đạt tiêu chuẩn nếu ta muốn độ chính xác đạt được là 5% và độ tin cậy 99% thì cần đo thêm bao nhiêu chi tiết nữa?]
]
#giai[
  Chi tiết đạt tiêu chuẩn có đường kính trong khoảng $(19","90; 20","10]$ mm, bao gồm 4 khoảng:
  - $[19","90 - 19","95)$: trung điểm $x_1 = 19","925$, tần số $n_1 = 16$.
  - $[19","95 - 20","00)$: trung điểm $x_2 = 19","975$, tần số $n_2 = 28$.
  - $[20","00 - 20","05)$: trung điểm $x_3 = 20","025$, tần số $n_3 = 23$.
  - $[20","05 - 20","10)$: trung điểm $x_4 = 20","075$, tần số $n_4 = 14$.

  Tổng số chi tiết đạt tiêu chuẩn trong mẫu:
  $ n_("chuẩn") = 16 + 28 + 23 + 14 = 81 thin ("chi tiết"). $

  *a) Ước lượng đường kính trung bình của chi tiết đạt tiêu chuẩn (độ tin cậy 95%):*
  - Đường kính trung bình mẫu của các chi tiết đạt chuẩn:
    $ overline(x) &= frac(1, 81) [ (19","925 dot 16) + (19","975 dot 28) + (20","025 dot 23) + (20","075 dot 14) ] \
                  &= frac(318","8 + 559","3 + 460","575 + 281","05, 81) = frac(1619","725, 81) approx 19","9966 thin ("mm"). $
  - Tổng các bình phương: $sum n_i x_i^2 = 32 thin 388","963125$.
    Phương sai mẫu hiệu chỉnh:
    $ s^2 = frac(n_("chuẩn"), n_("chuẩn") - 1) [ frac(sum n_i x_i^2, n_("chuẩn")) - (overline(x))^2 ] approx 0","002500 => s approx 0","0500 thin ("mm"). $
  - Do cỡ mẫu chi tiết chuẩn $n_("chuẩn") = 81 > 30$, dùng phân vị chuẩn $u_(0","025) = 1","96$:
    Sai số ước lượng:
    $ epsilon = 1","96 dot frac(s, sqrt(n_("chuẩn"))) = 1","96 dot frac(0","0500, sqrt(81)) = 1","96 dot frac(0","0500, 9) approx 0","0109 thin ("mm"). $
  - Khoảng tin cậy 95% cho đường kính trung bình của chi tiết đạt chuẩn:
    $ mu in (19","9966 - 0","0109; 19","9966 + 0","0109) = (19","9857; 20","0075) thin ("mm"). $

  *b) Ước lượng tỉ lệ chi tiết đạt tiêu chuẩn của máy (độ tin cậy 96%):*
  - Tỉ lệ mẫu đạt chuẩn trên toàn bộ $n = 100$ chi tiết:
    $ f = frac(n_("chuẩn"), n) = frac(81, 100) = 0","81 thin (81%). $
  - Với độ tin cậy $1 - alpha = 0","96 => Phi(u_(alpha / 2)) = frac(0","96, 2) = 0","4800$.
    Tra bảng Laplace (Phụ lục 1): $Phi(2","05) = 0","4798 approx 0","4800 => u_(alpha / 2) = 2","05$.
  - Sai số ước lượng tỉ lệ:
    $ epsilon_p = u_(alpha / 2) sqrt(frac(f (1 - f), n)) = 2","05 sqrt(frac(0","81 dot 0","19, 100)) approx 2","05 dot 0","03923 approx 0","0804 thin (8","04%). $
  - Khoảng tin cậy 96% cho tỉ lệ chi tiết đạt chuẩn:
    $ p in (0","81 - 0","0804; 0","81 + 0","0804) = (0","7296; 0","8904) thin (72","96% "đến" 89","04%). $

  *c) Số chi tiết cần đo thêm để $epsilon_0 = 5% = 0","05$ với độ tin cậy 99%:*
  - Với độ tin cậy $99% => u_(alpha / 2) = 2","575$ (hoặc $2","58$).
  - Quy mô mẫu tối thiểu cần thiết:
    $ n' >= frac(u_(alpha / 2)^2 dot f (1 - f), epsilon_0^2) = frac(2","575^2 dot 0","81 dot 0","19, 0","05^2) = frac(6","6306 dot 0","1539, 0","0025) approx 408","18 => n' = 409 thin ("chi tiết"). $
    *(Nếu dùng $u_(alpha / 2) = 2","58$: $n' >= frac(2","58^2 dot 0","1539, 0","0025) approx 409","77 => n' = 410$ chi tiết).*
  - Số chi tiết cần đo thêm:
    $ Delta n = n' - n = 409 - 100 = 309 thin ("chi tiết") quad ("hoặc" 410 - 100 = 310 thin "chi tiết"). $
]

#bai("7.7")[
  Để nghiên cứu nhu cầu của một loại hàng ở một khu vực, người ta tiến hành khảo sát về nhu cầu mặt hàng này ở 400 hộ gia đình. Kết quả khảo sát cho ở bảng sau:
  #align(center)[
    #v(3pt)
    #table(
      columns: (auto, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
      align: center + horizon,
      stroke: 0.4pt,
      [Nhu cầu (kg/tháng)], [0 - 1], [1 - 2], [2 - 3], [3 - 4], [4 - 5], [5 - 6], [6 - 7], [7 - 8],
      [Số hộ], [10], [35], [86], [132], [78], [31], [18], [10],
    )
  ]
  Giả sử khu vực nghiên cứu có 4 000 hộ.
  #y[a) Ước lượng nhu cầu trung bình về mặt hàng này của toàn khu vực trong một năm với độ tin cậy 95%.]
  #y[b) Khi ước lượng nhu cầu trung bình về mặt hàng này của toàn khu vực trong một năm, nếu ta muốn độ tin cậy đạt được 99% và độ chính xác là 4,8 tấn thì cần khảo sát về nhu cầu của mặt hàng này ở bao nhiêu hộ gia đình?]
]
#giai[
  Chọn giá trị đại diện là trung điểm các khoảng:
  $x_1 = 0","5; thin x_2 = 1","5; thin x_3 = 2","5; thin x_4 = 3","5; thin x_5 = 4","5; thin x_6 = 5","5; thin x_7 = 6","5; thin x_8 = 7","5$.
  Dung lượng mẫu: $n = sum_(i=1)^8 n_i = 400$ hộ.

  - Nhu cầu trung bình mẫu của một hộ trong một tháng:
    $ overline(x) &= frac(1, 400) sum_(i=1)^8 n_i x_i \
                  &= frac((0","5 dot 10) + (1","5 dot 35) + (2","5 dot 86) + (3","5 dot 132) + (4","5 dot 78) + (5","5 dot 31) + (6","5 dot 18) + (7","5 dot 10), 400) \
                  &= frac(1448, 400) = 3","62 thin ("kg/tháng/hộ"). $
  - Tổng các bình phương: $sum n_i x_i^2 = 6075","5$.
    Phương sai mẫu hiệu chỉnh:
    $ s^2 = frac(400, 399) [ frac(6075","5, 400) - 3","62^2 ] = frac(400, 399) (15","18875 - 13","1044) approx 2","0896 => s approx 1","4455 thin ("kg"). $

  *a) Ước lượng nhu cầu trung bình của toàn khu vực trong một năm (độ tin cậy 95%):*
  - Khu vực có $N = 4 thin 000$ hộ, một năm có 12 tháng.
    Hệ số quy đổi tổng nhu cầu toàn khu vực trong 1 năm:
    $ K = 4 thin 000 dot 12 = 48 thin 000 thin ("hộ" dot "tháng"). $
    Tổng nhu cầu cả năm tính bằng tấn ($1 thin "tấn" = 1 thin 000 thin "kg"$):
    $ T = frac(K dot mu, 1000) = 48 mu thin ("tấn"). $
  - Ước lượng điểm cho tổng nhu cầu cả năm:
    $ overline(T) = 48 dot overline(x) = 48 dot 3","62 = 173","76 thin ("tấn"). $
  - Với độ tin cậy $95% => u_(0","025) = 1","96$. Sai số ước lượng cho một hộ trong một tháng:
    $ epsilon_mu = 1","96 dot frac(s, sqrt(n)) = 1","96 dot frac(1","4455, sqrt(400)) = 1","96 dot frac(1","4455, 20) approx 0","1417 thin ("kg"). $
  - Sai số ước lượng cho tổng nhu cầu toàn khu vực trong một năm:
    $ epsilon_T = 48 dot epsilon_mu = 48 dot 0","1417 approx 6","80 thin ("tấn"). $
  - Khoảng tin cậy 95% cho tổng nhu cầu toàn khu vực trong một năm:
    $ T in (overline(T) - epsilon_T; overline(T) + epsilon_T) = (173","76 - 6","80; 173","76 + 6","80) = (166","96; 180","56) thin ("tấn"). $

  *b) Xác định số hộ cần khảo sát để đạt độ chính xác $epsilon_(T 0) = 4","8$ tấn với độ tin cậy 99%:*
  - Quy đổi sai số cho phép về một hộ trong một tháng:
    $ epsilon_(mu 0) = frac(epsilon_(T 0), 48) = frac(4","8, 48) = 0","1 thin ("tấn"/48) = 0","1 thin "kg" = 100 thin "g". $
  - Với độ tin cậy $99% => u_(alpha / 2) = 2","575$ (hoặc $2","58$).
    Số hộ cần khảo sát tối thiểu:
    $ n' >= (frac(u_(alpha / 2) dot s, epsilon_(mu 0)))^2 = (frac(2","575 dot 1","4455, 0","1))^2 approx 37","22^2 approx 1385","4 => n' = 1386 thin ("hộ"). $
    *(Nếu dùng $u_(alpha / 2) = 2","58$: $n' >= (frac(2","58 dot 1","4455, 0","1))^2 approx 37","29^2 approx 1390","8 => n' = 1391$ hộ).*
]

#pagebreak()

#bai("7.8")[
  Khảo sát thu nhập của 100 người làm việc ở một công ty, ta có kết quả cho ở bảng sau:
  #align(center)[
    #v(3pt)
    #table(
      columns: (auto, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
      align: center + horizon,
      stroke: 0.4pt,
      [Thu nhập (triệu đồng/tháng)], [3 - 5], [5 - 7], [7 - 9], [9 - 11], [11 - 13], [13 - 15], [15 - 17], [17 - 19],
      [Số người], [2], [5], [8], [12], [17], [16], [24], [16],
    )
  ]
  #y[a) Ước lượng thu nhập trung bình của một người làm việc ở công ty này với độ tin cậy 95%.]
  #y[b) Ước lượng phương sai của thu nhập độ tin cậy 95%.]
  #y[c) Với mẫu đã cho, nếu muốn độ tin cậy khi ước lượng thu nhập trung bình đạt 99% thì độ chính xác là bao nhiêu?]
]
#giai[
  Chọn trung điểm các khoảng thu nhập:
  $x_1 = 4; thin x_2 = 6; thin x_3 = 8; thin x_4 = 10; thin x_5 = 12; thin x_6 = 14; thin x_7 = 16; thin x_8 = 18$.
  Kích thước mẫu: $n = 100$ người.

  - Thu nhập trung bình mẫu:
    $ overline(x) &= frac(1, 100) [ (4 dot 2) + (6 dot 5) + (8 dot 8) + (10 dot 12) + (12 dot 17) + (14 dot 16) + (16 dot 24) + (18 dot 16) ] \
                  &= frac(8 + 30 + 64 + 120 + 204 + 224 + 384 + 288, 100) = frac(1322, 100) = 13","22 thin ("triệu đồng"). $
  - Tổng các bình phương:
    $ sum_(i=1)^8 n_i x_i^2 = (16 dot 2) + (36 dot 5) + dots + (324 dot 16) = 18 thin 836. $
    Phương sai mẫu chưa hiệu chỉnh:
    $ S^2 = frac(18 thin 836, 100) - 13","22^2 = 188","36 - 174","7684 = 13","5916 thin ("(triệu đồng)"^2). $
    Phương sai mẫu hiệu chỉnh:
    $ s^2 = frac(100, 99) dot 13","5916 approx 13","7289 => s approx 3","7053 thin ("triệu đồng"). $

  *a) Ước lượng thu nhập trung bình với độ tin cậy 95%:*
  - Cỡ mẫu $n = 100 > 30$, độ tin cậy $95% => u_(0","025) = 1","96$.
  - Sai số ước lượng:
    $ epsilon = u_(alpha / 2) dot frac(s, sqrt(n)) = 1","96 dot frac(3","7053, sqrt(100)) = 1","96 dot 0","37053 approx 0","7262 thin ("triệu đồng"). $
  - Khoảng tin cậy 95% cho thu nhập trung bình $mu$:
    $ mu in (overline(x) - epsilon; overline(x) + epsilon) = (13","22 - 0","7262; 13","22 + 0","7262) = (12","4938; 13","9462) thin ("triệu đồng"). $

  *b) Ước lượng phương sai của thu nhập với độ tin cậy 95%:*
  - Bậc tự do $nu = n - 1 = 99 approx 100$.
    Tra bảng phân phối Chi-bình phương (Phụ lục 2) ở dòng $n = 100$:
    $ chi_(0","025)^2(100) = 129","6; quad chi_(0","975)^2(100) = 74","22. $
  - Khoảng tin cậy cho phương sai $sigma^2$:
    $ frac((n - 1) s^2, chi_(0","025)^2) < sigma^2 < frac((n - 1) s^2, chi_(0","975)^2) &<=> frac(99 dot 13","7289, 129","6) < sigma^2 < frac(99 dot 13","7289, 74","22) \
    &<=> frac(1359","16, 129","6) < sigma^2 < frac(1359","16, 74","22) \
    &<=> 10","4873 < sigma^2 < 18","3126 thin ("(triệu đồng)"^2). $
    *(Nếu dùng giá trị chính xác với $nu = 99$: $chi_(0","025)^2(99) = 128","422$; $chi_(0","975)^2(99) = 73","361 => sigma^2 in (10","5835; 18","5270)$).*

  *c) Độ chính xác khi ước lượng thu nhập trung bình với độ tin cậy 99%:*
  - Với mẫu đã cho $n = 100$, độ tin cậy $99% => u_(0","005) = 2","575$ (hoặc $2","58$).
  - Độ chính xác (sai số ước lượng) tương ứng là:
    $ epsilon = u_(alpha / 2) dot frac(s, sqrt(n)) = 2","575 dot frac(3","7053, 10) approx 0","9541 thin ("triệu đồng"). $
    *(Nếu tính với $u_(alpha / 2) = 2","58$: $epsilon = 2","58 dot 0","37053 approx 0","9560$ triệu đồng).*
]

#pagebreak()

== Tóm tắt kiến thức sử dụng trong chương 7

#block(
  width: 100%,
  stroke: 0.5pt + rgb("cbd5e1"),
  fill: rgb("f8fafc"),
  inset: 12pt,
  radius: 4pt,
)[
  *1. Nguyên lý ước lượng khoảng tin cậy (Confidence Interval)*
  - Với tham số tổng thể $theta$, khoảng $(hat(theta)_1, hat(theta)_2)$ thỏa mãn $P(hat(theta)_1 < theta < hat(theta)_2) = 1 - alpha$ được gọi là khoảng tin cậy với độ tin cậy $1 - alpha$ (mức ý nghĩa $alpha$).
  - Độ chính xác (sai số ước lượng đối xứng): $epsilon = frac(hat(theta)_2 - hat(theta)_1, 2) => theta in (overline(theta) - epsilon; overline(theta) + epsilon)$.

  *2. Ước lượng kì vọng toán $mu$ (Trung bình tổng thể)*
  - *Trường hợp 1 (đã biết $sigma$):* Thống kê $U = frac(overline(X) - mu, sigma / sqrt(n)) tilde N(0, 1) => epsilon = u_(alpha / 2) dot frac(sigma, sqrt(n))$.
  - *Trường hợp 2 (chưa biết $sigma$, tổng thể chuẩn, mẫu nhỏ $n < 30$):*
    $ T = frac(overline(X) - mu, s / sqrt(n)) tilde T(n - 1) => epsilon = t_(alpha / 2)(n - 1) dot frac(s, sqrt(n)) quad ("với" t_(alpha / 2) "tra bảng Student"). $
  - *Trường hợp 3 (chưa biết $sigma$, mẫu lớn $n >= 30$):* Theo định lý giới hạn trung tâm,
    $ U = frac(overline(X) - mu, s / sqrt(n)) approx N(0, 1) => epsilon = u_(alpha / 2) dot frac(s, sqrt(n)) quad (u_(alpha / 2) "thỏa" Phi(u_(alpha / 2)) = frac(1 - alpha, 2)). $
  - *Khoảng tin cậy 1 phía cho $mu$:*
    - Chặn dưới (tối thiểu): $mu > overline(X) - u_alpha dot frac(s, sqrt(n))$ với $Phi(u_alpha) = frac(1 - 2 alpha, 2)$.
    - Chặn trên (tối đa): $mu < overline(X) + u_alpha dot frac(s, sqrt(n))$.

  *3. Ước lượng xác suất / tỉ lệ $p$ của tổng thể*
  - Điều kiện áp dụng: $n >= 30, n f >= 5, n(1 - f) >= 5$, trong đó $f = m / n$ là tỉ lệ mẫu.
  - Thống kê: $U = frac(f - p, sqrt(f(1 - f) \/ n)) approx N(0, 1)$.
  - Sai số ước lượng tỉ lệ:
    $ epsilon_p = u_(alpha / 2) sqrt(frac(f (1 - f), n)) => p in (f - epsilon_p; f + epsilon_p). $

  *4. Ước lượng phương sai $sigma^2$ của phân phối chuẩn*
  - Thống kê: $chi^2 = frac((n - 1) s^2, sigma^2) tilde chi^2(n - 1)$.
  - Khoảng tin cậy hai phía đối xứng cho $sigma^2$:
    $ frac((n - 1) s^2, chi_(alpha / 2)^2(n - 1)) < sigma^2 < frac((n - 1) s^2, chi_(1 - alpha / 2)^2(n - 1)). $

  *5. Công thức xác định kích thước mẫu tối thiểu ($n'$)*
  - *Ước lượng kì vọng:* $n' >= (frac(u_(alpha / 2) dot s, epsilon_0))^2$ (nếu tổng thể hữu hạn kích thước $N$: $n'_("chỉnh") = frac(N dot n', N + n')$).
  - *Ước lượng tỉ lệ:* $n' >= frac(u_(alpha / 2)^2 dot f (1 - f), epsilon_0^2)$ (khi chưa có tỉ lệ mẫu $f$, chọn $f = 0","5$ để lấy cận an toàn tối đa).
]

#pagebreak()
= Bài tập chương 8

#bai("8.1")[
  Điều tra doanh số bán hàng $X$ (triệu đồng/tháng) của các hộ kinh doanh một loại hàng năm nay cho số liệu:
  #align(center)[
    #v(3pt)
    #table(
      columns: (auto, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
      align: center + horizon,
      stroke: 0.4pt,
      [Doanh số], [11], [11,5], [12], [12,5], [13], [13,5],
      [Số hộ], [10], [15], [20], [30], [15], [10],
    )
  ]
  #y[a) Những hộ có doanh số trên 12,5 triệu/tháng là những hộ có doanh số cao. Có tài liệu cho rằng tỉ lệ hộ có doanh số cao là 35%. Hãy cho nhận xét về tỉ lệ trong tài liệu đó với mức ý nghĩa 5%.]
  #y[b) Năm trước doanh số bán hàng trung bình của các hộ này là 120 triệu/năm. Có thể cho rằng doanh số bán hàng của các hộ này năm nay tăng lên không với mức ý nghĩa 1%?]
]
#giai[
  Kích thước mẫu khảo sát: $n = 10 + 15 + 20 + 30 + 15 + 10 = 100$ hộ.

  *a) Nhận xét về nhận định tỉ lệ hộ có doanh số cao là 35%:*
  - Hộ có doanh số cao (trên 12,5 triệu/tháng) gồm các mức 13 triệu ($n_5 = 15$) và 13,5 triệu ($n_6 = 10$).
    Số hộ có doanh số cao trong mẫu: $m = 15 + 10 = 25$ hộ.
    Tỉ lệ mẫu:
    $ f = frac(m, n) = frac(25, 100) = 0","25 thin (25%). $
  - Cần kiểm định giả thuyết:
    $ cases(H_0 thin: p = p_0 = 0","35, H_1 thin: p != 0","35.) $
  - Tiêu chuẩn kiểm định thống kê chuẩn tắc:
    $ U = frac(f - p_0, sqrt(frac(p_0 (1 - p_0), n))) approx N(0, 1). $
  - Giá trị quan sát của tiêu chuẩn kiểm định:
    $ u_("qs") = frac(0","25 - 0","35, sqrt(frac(0","35 dot 0","65, 100))) = frac(-0","10, 0","047697) approx -2","0966. $
  - Với mức ý nghĩa $alpha = 0","05$, tra bảng Laplace: $u_(alpha / 2) = u_(0","025) = 1","96$.
    Miền bác bỏ: $W_alpha = (-infinity; -1","96) union (1","96; +infinity)$.
  - Ta thấy $|u_("qs")| = 2","0966 > 1","96 => u_("qs") in W_alpha$.
    Do đó, ta bác bỏ $H_0$. Nhận xét: Nhận định trong tài liệu (tỉ lệ 35%) là không phù hợp với thực tế (thực tế thấp hơn đáng kể).

  *b) Kiểm định doanh số bán hàng năm nay có tăng lên không:*
  - Năm trước doanh số là 120 triệu/năm, tương ứng với mức trung bình mỗi tháng là:
    $ mu_0 = frac(120, 12) = 10 thin ("triệu đồng/tháng"). $
  - Doanh số trung bình mẫu năm nay:
    $ overline(x) &= frac(1, 100) [ (11 dot 10) + (11","5 dot 15) + (12 dot 20) + (12","5 dot 30) + (13 dot 15) + (13","5 dot 10) ] \
                  &= frac(110 + 172","5 + 240 + 375 + 195 + 135, 100) = frac(1227","5, 100) = 12","275 thin ("triệu đồng/tháng"). $
  - Tổng các bình phương: $sum n_i x_i^2 = 15124","25$.
    Phương sai mẫu hiệu chỉnh:
    $ s^2 = frac(100, 99) [ frac(15124","25, 100) - (12","275)^2 ] = frac(100, 99) dot 0","5171 approx 0","5223 => s approx 0","7227 thin ("triệu đồng"). $
  - Bài toán kiểm định một phía:
    $ cases(H_0 thin: mu = 10, H_1 thin: mu > 10.) $
  - Giá trị quan sát của tiêu chuẩn kiểm định ($n = 100 > 30$):
    $ u_("qs") = frac(overline(x) - mu_0, frac(s, sqrt(n))) = frac(12","275 - 10, frac(0","7227, 10)) = frac(2","275, 0","07227) approx 31","48. $
  - Với mức ý nghĩa $alpha = 0","01$, tra bảng Laplace: $u_alpha = u_(0","01) = 2","33$.
    Miền bác bỏ phía phải: $W_alpha = (2","33; +infinity)$.
  - Vì $u_("qs") = 31","48 >> 2","33 => u_("qs") in W_alpha$, ta bác bỏ $H_0$ và chấp nhận $H_1$.
    Kết luận: Doanh số bán hàng của các hộ năm nay tăng lên rất rõ rệt.
]

#pagebreak()

#bai("8.2")[
  Trước đây định mức tiêu dùng điện của một hộ gia đình trong một tháng là 140kW. Do đời sống nâng cao, người ta theo dõi 100 hộ gia đình và thu được số liệu:
  #align(center)[
    #v(3pt)
    #table(
      columns: (auto, 1fr, 1fr, 1fr, 1fr, 1fr),
      align: center + horizon,
      stroke: 0.4pt,
      [Lượng tiêu dùng (kW)], [100 - 120], [120 - 140], [140 - 160], [160 - 180], [180 - 200],
      [Số hộ], [14], [25], [30], [20], [11],
    )
  ]
  #y[a) Với mức ý nghĩa 5%, ta có cần thay đổi định mức không?]
  #y[b) Nếu trước đây độ biến động của mức tiêu dùng điện cho một hộ gia đình là $400 thin ("kw")^2$. Vậy hiện nay độ biến động tăng hay giảm? Hãy cho kết luận với mức ý nghĩa 5%.]
]
#giai[
  Chọn giá trị đại diện là trung điểm các khoảng:
  $x_1 = 110; thin x_2 = 130; thin x_3 = 150; thin x_4 = 170; thin x_5 = 190$.
  Cỡ mẫu: $n = 14 + 25 + 30 + 20 + 11 = 100$ hộ.

  - Lượng điện tiêu thụ trung bình mẫu:
    $ overline(x) &= frac(1, 100) [ (110 dot 14) + (130 dot 25) + (150 dot 30) + (170 dot 20) + (190 dot 11) ] \
                  &= frac(1540 + 3250 + 4500 + 3400 + 2090, 100) = frac(14780, 100) = 147","8 thin ("kW"). $
  - Tổng các bình phương:
    $ sum_(i=1)^5 n_i x_i^2 = (110^2 dot 14) + (130^2 dot 25) + (150^2 dot 30) + (170^2 dot 20) + (190^2 dot 11) = 2 thin 241 thin 800. $
    Phương sai mẫu hiệu chỉnh:
    $ s^2 = frac(100, 99) [ frac(2 thin 241 thin 800, 100) - (147","8)^2 ] = frac(100, 99) (22418 - 21844","84) = frac(100, 99) dot 573","16 approx 578","9495. $
    Độ lệch tiêu chuẩn mẫu hiệu chỉnh: $s = sqrt(578","9495) approx 24","0614 thin ("kW")$.

  *a) Kiểm định định mức tiêu dùng điện có cần thay đổi không ($alpha = 0","05$):*
  - Giả thuyết:
    $ cases(H_0 thin: mu = mu_0 = 140 thin ("kW"), H_1 thin: mu != 140 thin ("kW").) $
  - Giá trị quan sát của tiêu chuẩn kiểm định:
    $ u_("qs") = frac(overline(x) - mu_0, frac(s, sqrt(n))) = frac(147","8 - 140, frac(24","0614, 10)) = frac(7","8, 2","40614) approx 3","2417. $
  - Với mức ý nghĩa $alpha = 0","05$, tra bảng Laplace: $u_(alpha / 2) = u_(0","025) = 1","96$.
    Miền bác bỏ: $|u| > 1","96$.
  - Vì $|u_("qs")| = 3","2417 > 1","96 => u_("qs") in W_alpha$, ta bác bỏ $H_0$.
    Kết luận: Cần phải thay đổi định mức tiêu dùng điện (thực tế mức tiêu dùng đã tăng lên).

  *b) Kết luận về độ biến động mức tiêu dùng điện ($alpha = 0","05$):*
  - Độ biến động trước đây là $sigma_0^2 = 400 thin ("kW")^2$.
  - Cần kiểm định xem độ biến động hiện nay tăng hay giảm:
    $ cases(H_0 thin: sigma^2 = sigma_0^2 = 400, H_1 thin: sigma^2 > 400.) $
  - Tiêu chuẩn kiểm định Chi-bình phương:
    $ chi^2 = frac((n - 1) s^2, sigma_0^2) tilde chi^2(n - 1). $
  - Giá trị quan sát:
    $ chi_("qs")^2 = frac(99 dot 578","9495, 400) = frac(57316, 400) = 143","29. $
  - Với $alpha = 0","05$ và bậc tự do $nu = n - 1 = 99 approx 100$:
    Tra bảng Chi-bình phương (Phụ lục 2) ở dòng $n = 100$: $chi_(0","05)^2(100) = 124","3$.
    Miền bác bỏ phía phải: $W_alpha = (124","3; +infinity)$.
  - Vì $chi_("qs")^2 = 143","29 > 124","3$, ta bác bỏ $H_0$ và chấp nhận $H_1$.
    Kết luận: Độ biến động của mức tiêu dùng điện hiện nay tăng lên so với trước đây.
]

#pagebreak()

#bai("8.3")[
  Một hợp đồng phân phối hai triệu trái cây X qui định rằng phương sai của khối lượng không quá $0","012 thin "kg"^2$. Trước khi giao hàng, chủ hàng lấy mẫu 30 trái và tính được phương sai bằng $0","018 thin "kg"^2$. Hỏi hợp đồng có bị vi phạm hay không với mức ý nghĩa 5%?
]
#giai[
  Từ giả thiết của bài toán:
  - Quy định phương sai tối đa: $sigma_0^2 = 0","012 thin "kg"^2$.
  - Mẫu kiểm tra: $n = 30$ trái cây, phương sai mẫu hiệu chỉnh $s^2 = 0","018 thin "kg"^2$.
  - Mức ý nghĩa $alpha = 0","05$.

  Cần kiểm định giả thuyết một phía:
  $ cases(H_0 thin: sigma^2 <= sigma_0^2 = 0","012, H_1 thin: sigma^2 > 0","012 quad ("hợp đồng bị vi phạm").) $

  - Tiêu chuẩn kiểm định:
    $ chi^2 = frac((n - 1) s^2, sigma_0^2) tilde chi^2(n - 1). $
  - Giá trị quan sát của tiêu chuẩn kiểm định:
    $ chi_("qs")^2 = frac((30 - 1) dot 0","018, 0","012) = frac(29 dot 0","018, 0","012) = 29 dot 1","5 = 43","50. $
  - Tra bảng giá trị phân phối Chi-bình phương (Phụ lục 2) với bậc tự do $nu = n - 1 = 29$, mức ý nghĩa $alpha = 0","05$:
    $ chi_alpha^2(29) = chi_(0","05)^2(29) = 42","56. $
    Miền bác bỏ: $W_alpha = (42","56; +infinity)$.
  - Vì $chi_("qs")^2 = 43","50 > 42","56 => chi_("qs")^2 in W_alpha$, ta bác bỏ $H_0$ và chấp nhận đối thuyết $H_1$.
  
  *Kết luận:* Với mức ý nghĩa 5%, hợp đồng phân phối trái cây đã bị vi phạm do phương sai khối lượng vượt quá giới hạn cho phép.
]

#bai("8.4")[
  Một công ty dự định mở một siêu thị ở khu vực dân cư. Để đánh giá khả năng mua hàng của dân cư trong khu vực, người ta tiến hành điều tra về thu nhập của 100 hộ chọn ngẫu nhiên trong khu vực và thu được bảng số liệu:
  #align(center)[
    #v(3pt)
    #table(
      columns: (auto, 1fr, 1fr, 1fr, 1fr, 1fr),
      align: center + horizon,
      stroke: 0.4pt,
      [Thu nhập bình quân], [2,0], [3,5], [5,0], [6,5], [9,0],
      [Số hộ], [8], [15], [38], [22], [17],
    )
  ]
  Theo bộ phận tiếp thị thì siêu thị chỉ hoạt động có hiệu quả tại khu vực này nếu thu nhập bình quân hàng tháng của các hộ tối thiểu là 5 triệu đồng/người. Vậy qua kết quả điều tra trên, công ty có nên quyết định mở siêu thị tại khu dân cư này hay không, với mức ý nghĩa là 5%?
]
#giai[
  Mẫu khảo sát có kích thước $n = 8 + 15 + 38 + 22 + 17 = 100$ hộ.
  - Thu nhập bình quân mẫu:
    $ overline(x) &= frac(1, 100) [ (2","0 dot 8) + (3","5 dot 15) + (5","0 dot 38) + (6","5 dot 22) + (9","0 dot 17) ] \
                  &= frac(16 + 52","5 + 190 + 143 + 153, 100) = frac(554","5, 100) = 5","545 thin ("triệu đồng/người"). $
  - Tổng các bình phương:
    $ sum_(i=1)^5 n_i x_i^2 = (4 dot 8) + (12","25 dot 15) + (25 dot 38) + (42","25 dot 22) + (81 dot 17) = 3472","25. $
    Phương sai mẫu hiệu chỉnh:
    $ s^2 = frac(100, 99) [ frac(3472","25, 100) - (5","545)^2 ] = frac(100, 99) (34","7225 - 30","7470) = frac(100, 99) dot 3","9755 approx 4","0156. $
    Độ lệch tiêu chuẩn mẫu hiệu chỉnh: $s = sqrt(4","0156) approx 2","0039 thin ("triệu đồng")$.

  - Để quyết định mở siêu thị, cần kiểm định xem thu nhập trung bình có thực sự đạt tối thiểu 5 triệu đồng không:
    $ cases(H_0 thin: mu = 5","0, H_1 thin: mu > 5","0.) $
  - Giá trị quan sát của tiêu chuẩn kiểm định:
    $ u_("qs") = frac(overline(x) - mu_0, frac(s, sqrt(n))) = frac(5","545 - 5","0, frac(2","0039, 10)) = frac(0","545, 0","20039) approx 2","7197. $
  - Với mức ý nghĩa $alpha = 0","05$, tra bảng Laplace: $u_alpha = u_(0","05) = 1","645$.
    Miền bác bỏ: $W_alpha = (1","645; +infinity)$.
  - Vì $u_("qs") = 2","7197 > 1","645 => u_("qs") in W_alpha$, ta bác bỏ $H_0$ và chấp nhận đối thuyết $H_1$.

  *Kết luận:* Thu nhập bình quân hàng tháng của dân cư tại khu vực này thực sự lớn hơn 5 triệu đồng/người. Do đó, công ty nên quyết định mở siêu thị.
]

#pagebreak()

#bai("8.5")[
  Để nghiên cứu nhu cầu của một loại hàng, người ta tiến hành khảo sát nhu cầu (kg/tháng) của mặt hàng này ở 400 hộ dân và thu được kết quả sau:
  #align(center)[
    #v(3pt)
    #table(
      columns: (auto, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
      align: center + horizon,
      stroke: 0.4pt,
      [Nhu cầu], [0 - 1], [1 - 2], [2 - 3], [3 - 4], [4 - 5], [5 - 6], [6 - 7], [7 - 8],
      [Số hộ], [10], [35], [86], [132], [78], [31], [18], [10],
    )
  ]
  Giả sử khu vực đó có 4 000 hộ. Với mức ý nghĩa 1%, nếu cho rằng nhu cầu trung bình về mặt hàng này của toàn khu vực là 14 tấn/tháng thì có chấp nhận được không?
]
#giai[
  - Toàn khu vực có $N = 4 thin 000$ hộ. Nếu nhu cầu cả khu vực là 14 tấn/tháng ($14 thin 000$ kg/tháng), thì nhu cầu trung bình định mức cho một hộ trong một tháng là:
    $ mu_0 = frac(14 thin 000, 4 thin 000) = 3","5 thin ("kg/tháng/hộ"). $
  - Từ số liệu khảo sát $n = 400$ hộ (đã tính ở Bài 7.7):
    $ overline(x) = 3","62 thin ("kg/tháng/hộ"); quad s approx 1","4455 thin ("kg"). $
  - Cần kiểm định giả thuyết:
    $ cases(H_0 thin: mu = mu_0 = 3","5, H_1 thin: mu != 3","5.) $
  - Giá trị quan sát của tiêu chuẩn kiểm định ($n = 400 > 30$):
    $ u_("qs") = frac(overline(x) - mu_0, frac(s, sqrt(n))) = frac(3","62 - 3","5, frac(1","4455, sqrt(400))) = frac(0","12, 0","072275) approx 1","6603. $
  - Với mức ý nghĩa $alpha = 0","01$, tra bảng Laplace:
    $ Phi(u_(alpha / 2)) = frac(1 - alpha, 2) = frac(0","99, 2) = 0","4950 => u_(alpha / 2) = 2","575 thin ("hoặc" 2","58). $
    Miền bác bỏ hai phía: $W_alpha = (-infinity; -2","575) union (2","575; +infinity)$.
  - Nhận thấy $|u_("qs")| = 1","6603 < 2","575 => u_("qs") in.not W_alpha$.
    Do đó, ta chưa có cơ sở để bác bỏ giả thuyết $H_0$.

  *Kết luận:* Với mức ý nghĩa 1%, nhận định nhu cầu trung bình của toàn khu vực là 14 tấn/tháng là hoàn toàn chấp nhận được.
]

#bai("8.6")[
  Khối lượng của một loại sản phẩm do một nhà máy sản xuất là đại lượng ngẫu nhiên có phân phối chuẩn với khối lượng trung bình là 500 gram. Sau một thời gian sản xuất, người ta nghi ngờ khối lượng của loại sản phẩm này có xu hướng giảm sút nên tiến hành cân thử 25 sản phẩm và thu được kết quả cho ở bảng sau:
  #align(center)[
    #v(3pt)
    #table(
      columns: (auto, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
      align: center + horizon,
      stroke: 0.4pt,
      [Khối lượng (gram)], [480], [485], [490], [495], [500], [510],
      [Số sản phẩm], [2], [3], [8], [5], [3], [4],
    )
  ]
  Với mức ý nghĩa 5%, hãy kết luận điều nghi ngờ trên có đúng hay không?
]
#giai[
  Mẫu thử nghiệm gồm $n = 2 + 3 + 8 + 5 + 3 + 4 = 25$ sản phẩm.
  - Khối lượng trung bình mẫu:
    $ overline(x) &= frac(1, 25) [ (480 dot 2) + (485 dot 3) + (490 dot 8) + (495 dot 5) + (500 dot 3) + (510 dot 4) ] \
                  &= frac(960 + 1455 + 3920 + 2475 + 1500 + 2040, 25) = frac(12350, 25) = 494 thin ("gram"). $
  - Tổng các bình phương:
    $ sum_(i=1)^6 n_i x_i^2 = (480^2 dot 2) + dots + (510^2 dot 4) = 6 thin 102 thin 800. $
    Phương sai mẫu hiệu chỉnh:
    $ s^2 = frac(25, 24) [ frac(6 thin 102 thin 800, 25) - 494^2 ] = frac(25, 24) (244112 - 244036) = frac(25, 24) dot 76 approx 79","1667. $
    Độ lệch tiêu chuẩn mẫu hiệu chỉnh: $s = sqrt(79","1667) approx 8","8976 thin ("gram")$.

  - Giả thuyết kiểm định một phía (khối lượng có xu hướng giảm sút):
    $ cases(H_0 thin: mu = mu_0 = 500 thin ("gram"), H_1 thin: mu < 500 thin ("gram").) $
  - Vì phân phối chuẩn, cỡ mẫu $n = 25 < 30$, chưa biết $sigma$, ta dùng tiêu chuẩn kiểm định Student với $nu = n - 1 = 24$ bậc tự do:
    $ t = frac(overline(x) - mu_0, frac(s, sqrt(n))) tilde T(n - 1). $
  - Giá trị quan sát:
    $ t_("qs") = frac(494 - 500, frac(8","8976, sqrt(25))) = frac(-6, 1","7795) approx -3","3717. $
  - Tra bảng phân phối Student (Phụ lục 3) với $nu = 24$, mức ý nghĩa $alpha = 0","05$:
    $ t_alpha(24) = t_(0","05)(24) = 1","711. $
    Miền bác bỏ phía trái: $W_alpha = (-infinity; -1","711)$.
  - Vì $t_("qs") = -3","3717 < -1","711 => t_("qs") in W_alpha$, ta bác bỏ $H_0$ và chấp nhận $H_1$.

  *Kết luận:* Với mức ý nghĩa 5%, điều nghi ngờ khối lượng sản phẩm có xu hướng giảm sút là hoàn toàn đúng.
]

#pagebreak()

#bai("8.7")[
  Tỉ lệ phế phẩm của một nhà máy trước đây là 5%. Năm nay nhà máy áp dụng một biện pháp kĩ thuật mới. Để nghiên cứu tác dụng của biện pháp này có làm giảm tỉ lệ phế phẩm hay không, người ta lấy một mẫu gồm 800 sản phẩm để kiểm tra và thấy có 24 phế phẩm.
  #y[a) Với mức ý nghĩa 5%, hãy kết luận xem biện pháp xử lý kĩ thuật mới này có thực sự làm giảm tỉ lệ phế phẩm của nhà máy hay không?]
  #y[b) Nếu nhà máy báo cáo tỉ lệ phế phẩm sau khi áp dụng biện pháp kĩ thuật này đã giảm xuống chỉ còn 2% thì có chấp nhận được hay không, với mức ý nghĩa 5%?]
]
#giai[
  Mẫu khảo sát gồm $n = 800$ sản phẩm, số phế phẩm quan sát được là $m = 24$.
  Tỉ lệ phế phẩm mẫu:
  $ f = frac(m, n) = frac(24, 800) = 0","03 thin (3%). $

  *a) Kiểm định biện pháp mới có thực sự làm giảm tỉ lệ phế phẩm ($p_0 = 0","05$):*
  - Bài toán kiểm định giả thuyết phía trái:
    $ cases(H_0 thin: p = p_0 = 0","05, H_1 thin: p < 0","05.) $
  - Giá trị quan sát của tiêu chuẩn kiểm định:
    $ u_("qs") = frac(f - p_0, sqrt(frac(p_0 (1 - p_0), n))) = frac(0","03 - 0","05, sqrt(frac(0","05 dot 0","95, 800))) = frac(-0","02, sqrt(0","000059375)) approx frac(-0","02, 0","0077055) approx -2","5955. $
  - Với mức ý nghĩa $alpha = 0","05$, tra bảng Laplace: $u_alpha = u_(0","05) = 1","645$.
    Miền bác bỏ phía trái: $W_alpha = (-infinity; -1","645)$.
  - Vì $u_("qs") = -2","5955 < -1","645 => u_("qs") in W_alpha$, ta bác bỏ $H_0$ và chấp nhận đối thuyết $H_1$.
  - *Kết luận:* Biện pháp xử lý kỹ thuật mới thực sự làm giảm tỉ lệ phế phẩm của nhà máy.

  *b) Đánh giá báo cáo của nhà máy rằng tỉ lệ phế phẩm giảm xuống chỉ còn 2% ($p_0 = 0","02$):*
  - Cần kiểm định xem tỉ lệ thực tế có phù hợp với mức báo cáo 2% hay không:
    $ cases(H_0 thin: p = p_0 = 0","02, H_1 thin: p != 0","02.) $
  - Giá trị quan sát:
    $ u_("qs") = frac(0","03 - 0","02, sqrt(frac(0","02 dot 0","98, 800))) = frac(0","01, sqrt(0","0000245)) approx frac(0","01, 0","004950) approx 2","0203. $
  - Với mức ý nghĩa $alpha = 0","05$, tra bảng Laplace hai phía: $u_(alpha / 2) = u_(0","025) = 1","96$.
    Miền bác bỏ: $|u| > 1","96$.
  - Vì $|u_("qs")| = 2","0203 > 1","96 => u_("qs") in W_alpha$, ta bác bỏ giả thuyết $H_0$.
  - *Kết luận:* Báo cáo của nhà máy rằng tỉ lệ phế phẩm chỉ còn 2% là không chấp nhận được (thực tế tỉ lệ phế phẩm trong mẫu là 3%, cao hơn mức báo cáo).
]

#bai("8.8")[
  Một máy sản xuất tự động, lúc đầu tỉ lệ sản phẩm loại A là 45%. Sau khi áp dụng một phương pháp sản xuất mới, người ta lấy ra 400 sản phẩm để kiểm tra và thấy có 215 sản phẩm loại A. Với mức ý nghĩa 5%, hãy kết luận xem phương pháp sản xuất mới có thực sự làm tăng tỉ lệ sản phẩm loại A lên hay không.
]
#giai[
  Mẫu khảo sát có kích thước $n = 400$ sản phẩm, số sản phẩm loại A là $m = 215$.
  - Tỉ lệ sản phẩm loại A trong mẫu:
    $ f = frac(m, n) = frac(215, 400) = 0","5375 thin (53","75%). $
  - Tỉ lệ sản phẩm loại A ban đầu: $p_0 = 45% = 0","45$.
  - Cần kiểm định xem phương pháp mới có làm tăng tỉ lệ sản phẩm loại A lên hay không:
    $ cases(H_0 thin: p = p_0 = 0","45, H_1 thin: p > 0","45.) $
  - Giá trị quan sát của tiêu chuẩn kiểm định:
    $ u_("qs") = frac(f - p_0, sqrt(frac(p_0 (1 - p_0), n))) = frac(0","5375 - 0","45, sqrt(frac(0","45 dot 0","55, 400))) = frac(0","0875, sqrt(0","00061875)) = frac(0","0875, 0","024875) approx 3","5176. $
  - Với mức ý nghĩa $alpha = 0","05$, tra bảng phân phối Laplace: $u_alpha = u_(0","05) = 1","645$.
    Miền bác bỏ phía phải: $W_alpha = (1","645; +infinity)$.
  - Vì $u_("qs") = 3","5176 > 1","645 => u_("qs") in W_alpha$, ta bác bỏ $H_0$ và chấp nhận đối thuyết $H_1$.

  *Kết luận:* Với mức ý nghĩa 5%, phương pháp sản xuất mới thực sự làm tăng tỉ lệ sản phẩm loại A của máy lên rõ rệt.
]

#pagebreak()

== Tóm tắt kiến thức sử dụng trong chương 8

#block(
  width: 100%,
  stroke: 0.5pt + rgb("cbd5e1"),
  fill: rgb("f8fafc"),
  inset: 12pt,
  radius: 4pt,
)[
  *1. Nguyên lý kiểm định giả thuyết thống kê*
  - Giả thuyết gốc $H_0$ và đối thuyết $H_1$. Mức ý nghĩa $alpha = P("Bác bỏ" H_0 | H_0 "đúng")$ (sai lầm loại I).
  - Quy tắc quyết định: Tính giá trị quan sát $T_("qs")$ từ mẫu. Nếu $T_("qs") in W_alpha$ thì bác bỏ $H_0$; ngược lại thì chưa có cơ sở bác bỏ $H_0$.

  *2. Kiểm định kì vọng toán $mu$ của tổng thể*
  - *Trường hợp mẫu lớn ($n >= 30$) hoặc đã biết $sigma$:* Tiêu chuẩn kiểm định chuẩn tắc:
    $ U = frac(overline(X) - mu_0, frac(s, sqrt(n))) approx N(0, 1). $
    - Đối thuyết $H_1 thin: mu != mu_0 => W_alpha = { |u| > u_(alpha / 2) }$.
    - Đối thuyết $H_1 thin: mu > mu_0 => W_alpha = { u > u_alpha }$.
    - Đối thuyết $H_1 thin: mu < mu_0 => W_alpha = { u < -u_alpha }$.
  - *Trường hợp mẫu nhỏ ($n < 30$), chưa biết $sigma$, phân phối chuẩn:* Tiêu chuẩn Student:
    $ T = frac(overline(X) - mu_0, frac(s, sqrt(n))) tilde T(n - 1). $
    - Miền bác bỏ tương ứng với các giá trị tới hạn Student $t_(alpha / 2)(n - 1)$ hoặc $t_alpha(n - 1)$ tra bảng Phụ lục 3.

  *3. Kiểm định tỉ lệ $p$ của tổng thể*
  - Điều kiện áp dụng: $n >= 30, n p_0 >= 5, n(1 - p_0) >= 5$.
  - Tiêu chuẩn kiểm định:
    $ U = frac(f - p_0, sqrt(frac(p_0 (1 - p_0), n))) approx N(0, 1) quad (f = m / n "là tỉ lệ mẫu"). $
    - Đối thuyết $H_1 thin: p != p_0 => W_alpha = { |u| > u_(alpha / 2) }$.
    - Đối thuyết $H_1 thin: p > p_0 => W_alpha = { u > u_alpha }$.
    - Đối thuyết $H_1 thin: p < p_0 => W_alpha = { u < -u_alpha }$.

  *4. Kiểm định phương sai $sigma^2$ của tổng thể chuẩn*
  - Tiêu chuẩn kiểm định Chi-bình phương với bậc tự do $nu = n - 1$:
    $ chi^2 = frac((n - 1) s^2, sigma_0^2) tilde chi^2(n - 1). $
    - Đối thuyết $H_1 thin: sigma^2 != sigma_0^2 => W_alpha = { chi^2 < chi_(1 - alpha / 2)^2(n - 1) } union { chi^2 > chi_(alpha / 2)^2(n - 1) }$.
    - Đối thuyết $H_1 thin: sigma^2 > sigma_0^2 => W_alpha = { chi^2 > chi_alpha^2(n - 1) }$.
    - Đối thuyết $H_1 thin: sigma^2 < sigma_0^2 => W_alpha = { chi^2 < chi_(1 - alpha)^2(n - 1) }$.
]

#pagebreak()

= Bài tập chương 9

#bai("9.1")[
  Nhu cầu về một loại hàng hóa ($Y$) tương ứng với các mức giá ($X$) đã cho như sau:
  #align(center)[
    #v(3pt)
    #table(
      columns: (auto, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
      align: center + horizon,
      stroke: 0.4pt,
      [Nhu cầu], [252], [244], [241], [234], [230], [223],
      [Giá (\$)], [2], [2,2], [2,4], [2,6], [2,8], [3],
    )
  ]
  #y[a) Kiểm định sự tương quan của $X$ và $Y$ với mức ý nghĩa 5%.]
  #y[b) Viết phương trình hồi quy tuyến tính mẫu của $Y$ theo $X$.]
  #y[c) Khi giá bán của loại hàng này là 2,1\$ thì nhu cầu về nó là bao nhiêu?]
]
#giai[
  Mẫu gồm $n = 6$ cặp quan sát $(x_i, y_i)$. Ta tính các đặc trưng mẫu cơ bản:
  - Giá trung bình mẫu:
    $ overline(x) = frac(2","0 + 2","2 + 2","4 + 2","6 + 2","8 + 3","0, 6) = frac(15, 6) = 2","5. $
  - Nhu cầu trung bình mẫu:
    $ overline(y) = frac(252 + 244 + 241 + 234 + 230 + 223, 6) = frac(1424, 6) approx 237","3333. $
  - Các tổng bình phương và tích chéo:
    $ sum_(i=1)^6 (x_i - overline(x))^2 = 0","70; quad sum_(i=1)^6 (y_i - overline(y))^2 = 545","3333; quad sum_(i=1)^6 (x_i - overline(x))(y_i - overline(y)) = -19","40. $
  - Hệ số tương quan mẫu $r$:
    $ r = frac(sum (x_i - overline(x))(y_i - overline(y)), sqrt(sum (x_i - overline(x))^2 dot sum (y_i - overline(y))^2)) = frac(-19","40, sqrt(0","70 dot 545","3333)) = frac(-19","40, 19","5380) approx -0","9948. $

  *a) Kiểm định sự tương quan tuyến tính giữa $X$ và $Y$ ($alpha = 0","05$):*
  - Bài toán kiểm định:
    $ cases(H_0 thin: rho = 0 quad ("không có tương quan tuyến tính"), H_1 thin: rho != 0.) $
  - Tiêu chuẩn kiểm định Student với bậc tự do $nu = n - 2 = 4$:
    $ T = frac(r sqrt(n - 2), sqrt(1 - r^2)) tilde T(n - 2). $
  - Giá trị quan sát:
    $ t_("qs") = frac(-0","9948 dot sqrt(4), sqrt(1 - (-0","9948)^2)) = frac(-1","9896, sqrt(0","01037)) approx frac(-1","9896, 0","10185) approx -19","4650. $
  - Với $alpha = 0","05$, tra bảng phân phối Student (Phụ lục 3) ở dòng $n = 4$: $t_(0","025)(4) = 2","776$.
    Miền bác bỏ: $|t| > 2","776$.
  - Vì $|t_("qs")| = 19","4650 > 2","776 => t_("qs") in W_alpha$, ta bác bỏ $H_0$.
  - *Kết luận:* Giữa giá bán $X$ và nhu cầu $Y$ có mối tương quan tuyến tính nghịch biến rất chặt chẽ.

  *b) Phương trình hồi quy tuyến tính mẫu của $Y$ theo $X$:*
  - Mô hình hồi quy: $hat(Y) = hat(a) X + hat(b)$.
    Hệ số góc:
    $ hat(a) = frac(sum (x_i - overline(x))(y_i - overline(y)), sum (x_i - overline(x))^2) = frac(-19","40, 0","70) approx -27","7143. $
    Hệ số tự do:
    $ hat(b) = overline(y) - hat(a) overline(x) = 237","3333 - (-27","7143 dot 2","5) = 237","3333 + 69","2857 = 306","6190. $
  - Vậy phương trình hồi quy tuyến tính mẫu là:
    $ hat(Y) = -27","7143 X + 306","6190. $

  *c) Dự báo nhu cầu khi giá bán là $X = 2","1$ \$:*
  $ hat(Y)(2","1) = -27","7143(2","1) + 306","6190 = -58","2000 + 306","6190 approx 248","4190. $
  Vậy khi giá bán là 2,1\$, nhu cầu dự kiến đạt khoảng $248","42$ đơn vị sản phẩm.
]

#pagebreak()

#bai("9.2")[
  Số liệu thống kê nhằm nghiên cứu quan hệ giữa tổng sản phẩm nông nghiệp $Y$ với tổng giá trị tài sản cố định $X$ của 10 nông trại (tính trên 100 ha) như sau:
  #align(center)[
    #v(3pt)
    #table(
      columns: (auto, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
      align: center + horizon,
      stroke: 0.4pt,
      [$X$], [11,3], [12,9], [13,6], [16,8], [18,8], [22,0], [22,2], [23,7], [26,6], [27,5],
      [$Y$], [13,2], [15,6], [17,2], [18,8], [20,2], [23,9], [22,4], [23,0], [24,4], [24,6],
    )
  ]
  #y[a) Kiểm định sự tương quan của $X$ và $Y$ với mức ý nghĩa 5%.]
  #y[b) Xác định phương trình hồi qui tuyến tính của $Y$ theo $X$.]
  #y[c) Dự đoán tổng sản phẩm nông nghiệp khi tổng tài sản cố định là 25.]
]
#giai[
  Dung lượng mẫu $n = 10$ nông trại.
  - Các giá trị trung bình mẫu:
    $ overline(x) = frac(sum x_i, 10) = frac(195","4, 10) = 19","54; quad overline(y) = frac(sum y_i, 10) = frac(203","3, 10) = 20","33. $
  - Các tổng bình phương và tích chéo:
    $ sum_(i=1)^(10) (x_i - overline(x))^2 = 328","8240; quad sum_(i=1)^(10) (y_i - overline(y))^2 = 161","5810; \
      sum_(i=1)^(10) (x_i - overline(x))(y_i - overline(y)) = 221","2620. $
  - Hệ số tương quan mẫu:
    $ r = frac(221","2620, sqrt(328","8240 dot 161","5810)) = frac(221","2620, 230","5017) approx 0","9684. $

  *a) Kiểm định sự tương quan giữa $X$ và $Y$ ($alpha = 0","05$):*
  - Giả thuyết: $H_0 thin: rho = 0$ đối với $H_1 thin: rho != 0$.
  - Tiêu chuẩn kiểm định:
    $ t_("qs") = frac(r sqrt(n - 2), sqrt(1 - r^2)) = frac(0","9684 dot sqrt(8), sqrt(1 - 0","9684^2)) = frac(2","7390, 0","2493) approx 10","9858. $
  - Với $alpha = 0","05$, tra bảng Student (Phụ lục 3) với $nu = n - 2 = 8$: $t_(0","025)(8) = 2","306$.
  - Vì $|t_("qs")| = 10","9858 > 2","306 => t_("qs") in W_alpha$, ta bác bỏ $H_0$.
  - *Kết luận:* Giữa tổng giá trị tài sản cố định $X$ và tổng sản phẩm nông nghiệp $Y$ có mối tương quan tuyến tính thuận biến rất mạnh.

  *b) Xác định phương trình hồi quy tuyến tính của $Y$ theo $X$:*
  - Mô hình hồi quy: $hat(Y) = hat(a) X + hat(b)$.
    $ hat(a) = frac(sum (x_i - overline(x))(y_i - overline(y)), sum (x_i - overline(x))^2) = frac(221","2620, 328","8240) approx 0","6729. $
    $ hat(b) = overline(y) - hat(a) overline(x) = 20","33 - (0","6729 dot 19","54) = 20","33 - 13","1485 approx 7","1815 thin ("hoặc" 7","1825). $
  - Vậy phương trình hồi quy tuyến tính mẫu:
    $ hat(Y) = 0","6729 X + 7","1825. $

  *c) Dự đoán tổng sản phẩm nông nghiệp khi $X = 25$:*
  $ hat(Y)(25) = 0","6729(25) + 7","1825 = 16","8225 + 7","1825 approx 24","0050 thin ("hoặc" 24","0038). $
  Dự đoán tổng sản phẩm nông nghiệp đạt khoảng $24","00$ đơn vị.
]

#pagebreak()

#bai("9.3")[
  Mẫu điều tra sản lượng lúa $Y$ (tạ/ha) và lượng phân bón cho lúa (kg/ha) của một vùng như sau:
  #align(center)[
    #v(3pt)
    #table(
      columns: (auto, 1fr, 1fr, 1fr, 1fr),
      align: center + horizon,
      stroke: 0.4pt,
      [$X backslash Y$], [25 -- 30], [30 -- 35], [35 -- 40], [40 -- 45],
      [20 -- 25], [1], [1], [], [],
      [25 -- 30], [], [5], [5], [2],
      [30 -- 35], [], [4], [6], [1],
    )
  ]
  Tính hệ số tương quan của $X$ và $Y$.
]
#giai[
  Chọn giá trị đại diện là trung điểm các khoảng lớp:
  - $X$ (lượng phân bón): $x_1 = 22","5; thin x_2 = 27","5; thin x_3 = 32","5$.
  - $Y$ (sản lượng lúa): $y_1 = 27","5; thin y_2 = 32","5; thin y_3 = 37","5; thin y_4 = 42","5$.

  Quy mô mẫu: $n = 1 + 1 + 5 + 5 + 2 + 4 + 6 + 1 = 25$ quan sát.

  - Phân bố biên và trung bình mẫu của $X$:
    $n_(x 1) = 2; thin n_(x 2) = 12; thin n_(x 3) = 11$.
    $ overline(x) &= frac(1, 25) [ (22","5 dot 2) + (27","5 dot 12) + (32","5 dot 11) ] \
                  &= frac(45 + 330 + 357","5, 25) = frac(732","5, 25) = 29","3 thin ("kg/ha"). $

  - Phân bố biên và trung bình mẫu của $Y$:
    $n_(y 1) = 1; thin n_(y 2) = 10; thin n_(y 3) = 11; thin n_(y 4) = 3$.
    $ overline(y) &= frac(1, 25) [ (27","5 dot 1) + (32","5 dot 10) + (37","5 dot 11) + (42","5 dot 3) ] \
                  &= frac(27","5 + 325 + 412","5 + 127","5, 25) = frac(892","5, 25) = 35","7 thin ("tạ/ha"). $

  - Phương sai mẫu của $X$ và $Y$:
    $ S_X^2 &= frac(1, 25) [ (22","5^2 dot 2) + (27","5^2 dot 12) + (32","5^2 dot 11) ] - (overline(x))^2 \
            &= frac(21 thin 693","75, 25) - 29","3^2 = 867","75 - 858","49 = 9","26. $
    $ S_Y^2 &= frac(1, 25) [ (27","5^2 dot 1) + (32","5^2 dot 10) + (37","5^2 dot 11) + (42","5^2 dot 3) ] - (overline(y))^2 \
            &= frac(32 thin 218","75, 25) - 35","7^2 = 1288","75 - 1274","49 = 14","26. $

  - Tính tổng tích chéo có trọng số $sum n_(i j) x_i y_j$:
    $ sum n_(i j) x_i y_j &= (22","5 dot 27","5 dot 1) + (22","5 dot 32","5 dot 1) + (27","5 dot 32","5 dot 5) \
                          &quad + (27","5 dot 37","5 dot 5) + (27","5 dot 42","5 dot 2) + (32","5 dot 32","5 dot 4) \
                          &quad + (32","5 dot 37","5 dot 6) + (32","5 dot 42","5 dot 1) \
                          &= 618","75 + 731","25 + 4468","75 + 5156","25 \
                          &quad + 2337","5 + 4225 + 7312","5 + 1381","25 \
                          &= 26 thin 231","25. $

  - Hiệp phương sai mẫu:
    $ S_(X Y) &= frac(1, n) sum n_(i j) x_i y_j - overline(x) dot overline(y) \
              &= frac(26 thin 231","25, 25) - (29","3 dot 35","7) \
              &= 1049","25 - 1046","01 = 3","24. $

  - Hệ số tương quan mẫu:
    $ r &= frac(S_(X Y), S_X dot S_Y) = frac(3","24, sqrt(9","26 dot 14","26)) \
        &= frac(3","24, sqrt(132","0476)) approx frac(3","24, 11","4912) approx 0","2819 thin ("hoặc" 0","2796). $

  *Kết luận:* Hệ số tương quan giữa lượng phân bón và sản lượng lúa là $r approx 0","28$, thể hiện mối tương quan tuyến tính đồng biến ở mức độ yếu đến trung bình.
]

#pagebreak()

#bai("9.4")[
  Sử dụng hệ số tương quan mẫu để xác định mức độ quan hệ giữa hai điểm Test A và Test B như sau:
  #align(center)[
    #v(3pt)
    #table(
      columns: (auto, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
      align: center + horizon,
      stroke: 0.4pt,
      [Test A], [13], [16], [12], [9], [12], [15], [11], [14], [8], [11], [7], [9],
      [Test B], [10], [11], [12], [7], [9], [10], [9], [11], [5], [12], [4], [6],
    )
  ]
]
#giai[
  Dung lượng mẫu $n = 12$ học sinh. Gọi $X$ là điểm Test A và $Y$ là điểm Test B.
  - Điểm trung bình mẫu:
    $ overline(x) = frac(13 + 16 + 12 + 9 + 12 + 15 + 11 + 14 + 8 + 11 + 7 + 9, 12) = frac(137, 12) approx 11","4167. $
    $ overline(y) = frac(10 + 11 + 12 + 7 + 9 + 10 + 9 + 11 + 5 + 12 + 4 + 6, 12) = frac(106, 12) approx 8","8333. $
  - Tổng các bình phương và tích chéo sai lệch:
    $ sum_(i=1)^(12) (x_i - overline(x))^2 &= 84","9167; \
      sum_(i=1)^(12) (y_i - overline(y))^2 &= 81","6667; \
      sum_(i=1)^(12) (x_i - overline(x))(y_i - overline(y)) &= 67","0000. $
  - Hệ số tương quan mẫu $r$:
    $ r = frac(67","0000, sqrt(84","9167 dot 81","6667)) = frac(67","0000, sqrt(6934","8611)) = frac(67","0000, 83","2758) approx 0","8046 thin ("hoặc" 0","8051). $

  *Kết luận:* Hệ số tương quan mẫu $r approx 0","805$ cho thấy giữa hai bài kiểm tra Test A và Test B có mối quan hệ tương quan tuyến tính thuận biến ở mức độ khá chặt chẽ (học sinh đạt điểm cao ở Test A có xu hướng đạt điểm cao ở Test B).
]

#bai("9.5")[
  Kiểm tra hai môn Toán và Vật lí một nhóm 10 học sinh được chọn ngẫu nhiên từ một lớp học ta có bảng kết quả sau:
  #align(center)[
    #v(3pt)
    #table(
      columns: (auto, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
      align: center + horizon,
      stroke: 0.4pt,
      [Điểm Toán ($X$)], [7], [6], [7], [10], [4], [5], [7], [8], [8], [9],
      [Điểm Vật lý ($Y$)], [6], [7], [7], [9], [5], [3], [8], [9], [6], [7],
    )
  ]
  Tính hệ số tương quan và kết luận về sự tương quan giữa điểm môn Toán và điểm môn Vật lí của nhóm học sinh này với mức ý nghĩa 5%.
]
#giai[
  Dung lượng mẫu $n = 10$ học sinh.
  - Điểm trung bình mẫu:
    $ overline(x) = frac(7 + 6 + 7 + 10 + 4 + 5 + 7 + 8 + 8 + 9, 10) = frac(71, 10) = 7","1. $
    $ overline(y) = frac(6 + 7 + 7 + 9 + 5 + 3 + 8 + 9 + 6 + 7, 10) = frac(67, 10) = 6","7. $
  - Tổng các bình phương và tích chéo:
    $ sum_(i=1)^(10) (x_i - overline(x))^2 = 26","90; quad sum_(i=1)^(10) (y_i - overline(y))^2 = 32","10; quad sum_(i=1)^(10) (x_i - overline(x))(y_i - overline(y)) = 21","20. $
  - Hệ số tương quan mẫu:
    $ r = frac(21","20, sqrt(26","90 dot 32","10)) = frac(21","20, sqrt(863","49)) = frac(21","20, 29","3852) approx 0","7214 thin ("hoặc" 0","7222). $

  *Kiểm định sự tương quan với mức ý nghĩa 5%:*
  - Cần kiểm định giả thuyết: $H_0 thin: rho = 0$ đối với $H_1 thin: rho != 0$.
  - Tiêu chuẩn kiểm định:
    $ t_("qs") = frac(r sqrt(n - 2), sqrt(1 - r^2)) = frac(0","7214 dot sqrt(8), sqrt(1 - 0","7214^2)) = frac(2","0404, sqrt(0","4796)) = frac(2","0404, 0","6925) approx 2","9464 thin ("hoặc" 2","9531). $
  - Với mức ý nghĩa $alpha = 0","05$, tra bảng Student (Phụ lục 3) với $nu = n - 2 = 8$: $t_(0","025)(8) = 2","306$.
    Miền bác bỏ: $|t| > 2","306$.
  - Vì $|t_("qs")| approx 2","95 > 2","306 => t_("qs") in W_alpha$, ta bác bỏ $H_0$.

  *Kết luận:* Giữa kết quả học tập môn Toán và môn Vật lý của nhóm học sinh có mối tương quan tuyến tính đồng biến có ý nghĩa thống kê ($r approx 0","72$).
]

#pagebreak()

#bai("9.6")[
  Để nghiên cứu khả năng chịu đựng của cơ thể đối với một loại hoá chất, người ta tiêm vào các con chuột thí nghiệm có cùng thể trạng ban đầu những lượng hoá chất khác nhau và quan sát thời gian sống của chúng. Kết quả cho ở bảng sau:
  #align(center)[
    #v(3pt)
    #table(
      columns: (auto, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
      align: center + horizon,
      stroke: 0.4pt,
      [Lượng hoá chất $X$ (mg)], [1], [2], [3], [4], [5], [6],
      [Thời gian sống $Y$ (giờ)], [30], [20], [20], [12], [10], [5],
    )
  ]
  #y[a) Tính hệ số tương quan của $X$ và $Y$ và kết luận gì về sự tương quan của $X$ và $Y$ với mức ý nghĩa 5%.]
  #y[b) Lập phương trình hồi qui của $X$ và $Y$.]
  #y[c) Ước lượng thời gian sống của chuột nếu tiêm 2,3mg hoá chất.]
]
#giai[
  Dung lượng mẫu $n = 6$ quan sát.
  - Trung bình mẫu:
    $ overline(x) = frac(1 + 2 + 3 + 4 + 5 + 6, 6) = 3","5; quad overline(y) = frac(30 + 20 + 20 + 12 + 10 + 5, 6) = frac(97, 6) approx 16","1667. $
  - Tổng bình phương và tích chéo sai lệch:
    $ sum_(i=1)^6 (x_i - overline(x))^2 = 17","50; quad sum_(i=1)^6 (y_i - overline(y))^2 = 398","8333; quad sum_(i=1)^6 (x_i - overline(x))(y_i - overline(y)) = -81","50. $
  - Hệ số tương quan mẫu:
    $ r = frac(-81","50, sqrt(17","50 dot 398","8333)) = frac(-81","50, sqrt(6979","5833)) = frac(-81","50, 83","5439) approx -0","9755 thin ("hoặc" -0","9731). $

  *a) Kết luận về sự tương quan với mức ý nghĩa 5%:*
  - Tiêu chuẩn kiểm định Student ($nu = n - 2 = 4$):
    $ t_("qs") = frac(r sqrt(n - 2), sqrt(1 - r^2)) approx frac(-0","9731 dot 2, sqrt(1 - (-0","9731)^2)) approx -8","4474. $
  - Tra bảng Student (Phụ lục 3): $t_(0","025)(4) = 2","776$.
    Vì $|t_("qs")| = 8","4474 > 2","776 =>$ Bác bỏ $H_0$. Lượng hóa chất $X$ và thời gian sống $Y$ có mối tương quan nghịch rất chặt chẽ.

  *b) Phương trình hồi quy tuyến tính mẫu của $Y$ theo $X$:*
  $ hat(a) = frac(sum (x_i - overline(x))(y_i - overline(y)), sum (x_i - overline(x))^2) = frac(-81","50, 17","50) approx -4","6571. $
  $ hat(b) = overline(y) - hat(a) overline(x) = 16","1667 - (-4","6571 dot 3","5) = 16","1667 + 16","3000 = 32","4667. $
  Phương trình hồi quy:
  $ hat(Y) = -4","6571 X + 32","4667. $

  *c) Ước lượng thời gian sống của chuột khi tiêm $X = 2","3$ mg:*
  $ hat(Y)(2","3) = -4","6571(2","3) + 32","4667 = -10","7113 + 32","4667 approx 21","7554 thin ("giờ"). $
  Thời gian sống ước lượng của chuột là khoảng $21","76$ giờ.
]

#pagebreak()

#bai("9.7")[
  Một nghiên cứu về lượng mưa và lượng ô nhiễm không khí bị loại bỏ có được bảng số liệu sau:
  #align(center)[
    #v(3pt)
    #table(
      columns: (auto, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
      align: center + horizon,
      stroke: 0.4pt,
      [Lượng mưa hằng ngày $X$ (0,01 cm)], [4,3], [4,5], [5,9], [5,6], [6,1], [5,2], [3,8], [2,1], [7,5],
      [Hạt bị loại bỏ $Y$ ($mu"g/m"^3$)], [126], [121], [116], [118], [114], [118], [132], [141], [108],
    )
  ]
  #y[a) Tính hệ số tương quan của $X$ và $Y$ và kết luận gì về sự tương quan của $X$ và $Y$ với mức ý nghĩa 5%.]
  #y[b) Lập phương trình hồi qui của $X$ và $Y$.]
  #y[c) Ước lượng lượng hạt bị loại bỏ nếu lượng mưa hằng ngày là 4,8 đơn vị.]
]
#giai[
  Dung lượng mẫu $n = 9$ ngày quan sát.
  - Các trung bình mẫu:
    $ overline(x) = frac(4","3 + 4","5 + 5","9 + 5","6 + 6","1 + 5","2 + 3","8 + 2","1 + 7","5, 9) = frac(45, 9) = 5","0. $
    $ overline(y) = frac(126 + 121 + 116 + 118 + 114 + 118 + 132 + 141 + 108, 9) = frac(1094, 9) approx 121","5556. $
  - Các tổng bình phương và tích chéo sai lệch:
    $ sum_(i=1)^9 (x_i - overline(x))^2 = 19","8600; quad sum_(i=1)^9 (y_i - overline(y))^2 = 830","2222; \
      sum_(i=1)^9 (x_i - overline(x))(y_i - overline(y)) = -125","6000. $
  - Hệ số tương quan mẫu:
    $ r = frac(-125","6000, sqrt(19","8600 dot 830","2222)) = frac(-125","6000, 128","4065) approx -0","9781 thin ("hoặc" -0","9787). $

  *a) Kết luận về sự tương quan với mức ý nghĩa 5%:*
  - Cần kiểm định: $H_0 thin: rho = 0$ đối với $H_1 thin: rho != 0$.
  - Tiêu chuẩn kiểm định Student với bậc tự do $nu = n - 2 = 7$:
    $ t_("qs") = frac(r sqrt(n - 2), sqrt(1 - r^2)) = frac(-0","9781 dot sqrt(7), sqrt(1 - (-0","9781)^2)) approx -12","4217 thin ("hoặc" -12","6003). $
  - Với $alpha = 0","05$, tra bảng Student (Phụ lục 3) với $nu = 7$: $t_(0","025)(7) = 2","365$.
    Vì $|t_("qs")| approx 12","42 > 2","365 =>$ Bác bỏ $H_0$. Lượng mưa và lượng ô nhiễm bị loại bỏ có tương quan nghịch biến cực kỳ chặt chẽ.

  *b) Phương trình hồi quy tuyến tính mẫu của $Y$ theo $X$:*
  $ hat(a) = frac(sum (x_i - overline(x))(y_i - overline(y)), sum (x_i - overline(x))^2) = frac(-125","6000, 19","8600) approx -6","3243. $
  $ hat(b) = overline(y) - hat(a) overline(x) = 121","5556 - (-6","3243 dot 5","0) = 121","5556 + 31","6214 approx 153","1770 thin ("hoặc" 153","1755). $
  Phương trình hồi quy tuyến tính:
  $ hat(Y) = -6","3243 X + 153","1770. $

  *c) Ước lượng lượng hạt bị loại bỏ nếu lượng mưa là $X = 4","8$ đơn vị:*
  $ hat(Y)(4","8) = -6","3243(4","8) + 153","1770 = -30","3566 + 153","1770 approx 122","8204 thin (mu"g/m"^3). $
  Lượng hạt ô nhiễm bị loại bỏ ước tính khoảng $122","82 thin mu"g/m"^3$.
]

#pagebreak()

== Tóm tắt kiến thức sử dụng trong chương 9

#block(
  width: 100%,
  stroke: 0.5pt + rgb("cbd5e1"),
  fill: rgb("f8fafc"),
  inset: 12pt,
  radius: 4pt,
)[
  *1. Hệ số tương quan mẫu (Sample Correlation Coefficient)*
  - Công thức tính:
    $ r = frac(sum_(i=1)^n (x_i - overline(x))(y_i - overline(y)), sqrt(sum_(i=1)^n (x_i - overline(x))^2 dot sum_(i=1)^n (y_i - overline(y))^2)) = frac(S_(X Y), S_X dot S_Y), quad -1 <= r <= 1. $
  - Ý nghĩa: $|r|$ đo lường mức độ chặt chẽ của mối quan hệ tuyến tính giữa $X$ và $Y$:
    - $r > 0$: tương quan thuận (đồng biến); $r < 0$: tương quan nghịch.
    - $|r| >= 0","7$: tương quan chặt chẽ; $|r| -> 1$: tương quan rất mạnh; $r = 0$: không có tương quan tuyến tính.

  *2. Kiểm định ý nghĩa thống kê của hệ số tương quan*
  - Bài toán: $cases(H_0 thin: rho = 0 quad ("không có tương quan tuyến tính tổng thể"), H_1 thin: rho != 0.)$
  - Tiêu chuẩn kiểm định phân phối Student với $nu = n - 2$ bậc tự do:
    $ T = frac(r sqrt(n - 2), sqrt(1 - r^2)) tilde T(n - 2). $
  - Miền bác bỏ với mức ý nghĩa $alpha$: $W_alpha = { |t| > t_(alpha / 2)(n - 2) }$.

  *3. Mô hình hồi quy tuyến tính đơn (Simple Linear Regression)*
  - Phương trình hồi quy tuyến tính mẫu của $Y$ theo $X$:
    $ hat(Y) = hat(a) X + hat(b) $
  - Các hệ số xác định theo phương pháp bình phương bé nhất (OLS):
    $ hat(a) = frac(sum_(i=1)^n (x_i - overline(x))(y_i - overline(y)), sum_(i=1)^n (x_i - overline(x))^2) = frac(S_(X Y), S_X^2) = r dot frac(S_Y, S_X), quad quad hat(b) = overline(y) - hat(a) overline(x). $

  *4. Hệ số xác định (Coefficient of Determination $R^2$)*
  - $R^2 = r^2$: Tỉ lệ phần trăm tổng biến thiên của biến phụ thuộc $Y$ được giải thích bởi mô hình hồi quy tuyến tính theo biến độc lập $X$.
]

#pagebreak()
PHỤ LỤC 1. BẢNG GIÁ TRỊ HÀM LAPLACE

#align(center)[
  $ Phi(z) = frac(1, sqrt(2 pi)) integral_0^z e^(-t^2/2) dif t $
]

#v(8pt)

#align(center)[
  #set text(size: 8.5pt)
  #table(
    columns: (1.1cm, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
    align: center + horizon,
    stroke: 0.35pt,
    inset: (x: 1.5pt, y: 2.2pt),
    fill: (x, y) => if y == 0 { rgb("f2f2f2") } else { none },
    table.header([$z$], [0.00], [0.01], [0.02], [0.03], [0.04], [0.05], [0.06], [0.07], [0.08], [0.09]),
    [0.0], [0.0000], [0.0040], [0.0080], [0.0120], [0.0160], [0.0199], [0.0239], [0.0279], [0.0319], [0.0359],
    [0.1], [0.0398], [0.0438], [0.0478], [0.0517], [0.0557], [0.0596], [0.0636], [0.0675], [0.0714], [0.0753],
    [0.2], [0.0793], [0.0832], [0.0871], [0.0910], [0.0948], [0.0987], [0.1026], [0.1064], [0.1103], [0.1141],
    [0.3], [0.1179], [0.1217], [0.1255], [0.1293], [0.1331], [0.1368], [0.1406], [0.1443], [0.1480], [0.1517],
    [0.4], [0.1554], [0.1591], [0.1628], [0.1664], [0.1700], [0.1736], [0.1772], [0.1808], [0.1844], [0.1879],
    [0.5], [0.1915], [0.1950], [0.1985], [0.2019], [0.2054], [0.2088], [0.2123], [0.2157], [0.2190], [0.2224],
    [0.6], [0.2257], [0.2291], [0.2324], [0.2357], [0.2389], [0.2422], [0.2454], [0.2486], [0.2517], [0.2549],
    [0.7], [0.2580], [0.2611], [0.2642], [0.2673], [0.2704], [0.2734], [0.2764], [0.2794], [0.2823], [0.2852],
    [0.8], [0.2881], [0.2910], [0.2939], [0.2967], [0.2995], [0.3023], [0.3051], [0.3078], [0.3106], [0.3133],
    [0.9], [0.3159], [0.3186], [0.3212], [0.3238], [0.3264], [0.3289], [0.3315], [0.3340], [0.3365], [0.3389],
    [1.0], [0.3413], [0.3438], [0.3461], [0.3485], [0.3508], [0.3531], [0.3554], [0.3577], [0.3599], [0.3621],
    [1.1], [0.3643], [0.3665], [0.3686], [0.3708], [0.3729], [0.3749], [0.3770], [0.3790], [0.3810], [0.3830],
    [1.2], [0.3849], [0.3869], [0.3888], [0.3907], [0.3925], [0.3944], [0.3962], [0.3980], [0.3997], [0.4015],
    [1.3], [0.4032], [0.4049], [0.4066], [0.4082], [0.4099], [0.4115], [0.4131], [0.4147], [0.4162], [0.4177],
    [1.4], [0.4192], [0.4207], [0.4222], [0.4236], [0.4251], [0.4265], [0.4279], [0.4292], [0.4306], [0.4319],
    [1.5], [0.4332], [0.4345], [0.4357], [0.4370], [0.4382], [0.4394], [0.4406], [0.4418], [0.4429], [0.4441],
    [1.6], [0.4452], [0.4463], [0.4474], [0.4484], [0.4495], [0.4505], [0.4515], [0.4525], [0.4535], [0.4545],
    [1.7], [0.4554], [0.4564], [0.4573], [0.4582], [0.4591], [0.4599], [0.4608], [0.4616], [0.4625], [0.4633],
    [1.8], [0.4641], [0.4649], [0.4656], [0.4664], [0.4671], [0.4678], [0.4686], [0.4693], [0.4699], [0.4706],
    [1.9], [0.4713], [0.4719], [0.4726], [0.4732], [0.4738], [0.4744], [0.4750], [0.4756], [0.4761], [0.4767],
    [2.0], [0.4772], [0.4778], [0.4783], [0.4788], [0.4793], [0.4798], [0.4803], [0.4808], [0.4812], [0.4817],
    [2.1], [0.4821], [0.4826], [0.4830], [0.4834], [0.4838], [0.4842], [0.4846], [0.4850], [0.4854], [0.4857],
    [2.2], [0.4861], [0.4864], [0.4868], [0.4871], [0.4875], [0.4878], [0.4881], [0.4884], [0.4887], [0.4890],
    [2.3], [0.4893], [0.4896], [0.4898], [0.4901], [0.4904], [0.4906], [0.4909], [0.4911], [0.4913], [0.4916],
    [2.4], [0.4918], [0.4920], [0.4922], [0.4925], [0.4927], [0.4929], [0.4931], [0.4932], [0.4934], [0.4936],
    [2.5], [0.4938], [0.4940], [0.4941], [0.4943], [0.4945], [0.4946], [0.4948], [0.4949], [0.4951], [0.4952],
    [2.6], [0.4953], [0.4955], [0.4956], [0.4957], [0.4959], [0.4960], [0.4961], [0.4962], [0.4963], [0.4964],
    [2.7], [0.4965], [0.4966], [0.4967], [0.4968], [0.4969], [0.4970], [0.4971], [0.4972], [0.4973], [0.4974],
    [2.8], [0.4974], [0.4975], [0.4976], [0.4977], [0.4977], [0.4978], [0.4979], [0.4979], [0.4980], [0.4981],
    [2.9], [0.4981], [0.4982], [0.4982], [0.4983], [0.4984], [0.4984], [0.4985], [0.4985], [0.4986], [0.4986],
    [3.0], [0.4987], [0.4987], [0.4987], [0.4988], [0.4988], [0.4989], [0.4989], [0.4989], [0.4990], [0.4990],
    [3.1], [0.4990], [0.4991], [0.4991], [0.4991], [0.4992], [0.4992], [0.4992], [0.4992], [0.4993], [0.4993],
    [3.2], [0.4993], [0.4993], [0.4994], [0.4994], [0.4994], [0.4994], [0.4994], [0.4995], [0.4995], [0.4995],
    [3.3], [0.4995], [0.4995], [0.4995], [0.4996], [0.4996], [0.4996], [0.4996], [0.4996], [0.4996], [0.4997],
    [3.4], [0.4997], [0.4997], [0.4997], [0.4997], [0.4997], [0.4997], [0.4997], [0.4997], [0.4997], [0.4998],
    [3.5], [0.4998], [0.4998], [0.4998], [0.4998], [0.4998], [0.4998], [0.4998], [0.4998], [0.4998], [0.4998],
    [3.6], [0.4998], [0.4998], [0.4999], [0.4999], [0.4999], [0.4999], [0.4999], [0.4999], [0.4999], [0.4999],
    [3.7], [0.4999], [0.4999], [0.4999], [0.4999], [0.4999], [0.4999], [0.4999], [0.4999], [0.4999], [0.4999],
    [3.8], [0.4999], [0.4999], [0.4999], [0.4999], [0.4999], [0.4999], [0.4999], [0.4999], [0.4999], [0.4999],
    [3.9], [0.5000], [0.5000], [0.5000], [0.5000], [0.5000], [0.5000], [0.5000], [0.5000], [0.5000], [0.5000],
    [4.0], [0.5000], [0.5000], [0.5000], [0.5000], [0.5000], [0.5000], [0.5000], [0.5000], [0.5000], [0.5000],
  )

]

#pagebreak()

= PHỤ LỤC 2. BẢNG GIÁ TRỊ CHI-BÌNH PHƯƠNG

#align(center)[
  $ P(chi^2 > chi_alpha^2(n)) = alpha $
]

#v(8pt)

#align(center)[
  #set text(size: 8.5pt)
  #table(
    columns: (1cm, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
    align: center + horizon,
    stroke: 0.35pt,
    inset: (x: 1.5pt, y: 2.5pt),
    fill: (x, y) => if y == 0 { rgb("f2f2f2") } else { none },
    table.header(
      [$n$], [$0.995$], [$0.99$], [$0.975$], [$0.95$], [$0.9$], [$0.1$], [$0.05$], [$0.025$], [$0.01$], [$0.005$]
    ),
    [1], [0.000], [0.000], [0.001], [0.004], [0.016], [2.706], [3.841], [5.024], [6.635], [7.879],
    [2], [0.010], [0.020], [0.051], [0.103], [0.211], [4.605], [5.991], [7.378], [9.210], [10.60],
    [3], [0.072], [0.115], [0.216], [0.352], [0.584], [6.251], [7.815], [9.348], [11.34], [12.84],
    [4], [0.207], [0.297], [0.484], [0.711], [1.064], [7.779], [9.488], [11.14], [13.28], [14.86],
    [5], [0.412], [0.554], [0.831], [1.145], [1.610], [9.236], [11.07], [12.83], [15.09], [16.75],
    [6], [0.676], [0.872], [1.237], [1.635], [2.204], [10.64], [12.59], [14.45], [16.81], [18.55],
    [7], [0.989], [1.239], [1.690], [2.167], [2.833], [12.02], [14.07], [16.01], [18.48], [20.28],
    [8], [1.344], [1.646], [2.180], [2.733], [3.490], [13.36], [15.51], [17.53], [20.09], [21.95],
    [9], [1.735], [2.088], [2.700], [3.325], [4.168], [14.68], [16.92], [19.02], [21.67], [23.59],
    [10], [2.156], [2.558], [3.247], [3.940], [4.865], [15.99], [18.31], [20.48], [23.21], [25.19],
    [11], [2.603], [3.053], [3.816], [4.575], [5.578], [17.28], [19.68], [21.92], [24.72], [26.76],
    [12], [3.074], [3.571], [4.404], [5.226], [6.304], [18.55], [21.03], [23.34], [26.22], [28.30],
    [13], [3.565], [4.107], [5.009], [5.892], [7.042], [19.81], [22.36], [24.74], [27.69], [29.82],
    [14], [4.075], [4.660], [5.629], [6.571], [7.790], [21.06], [23.68], [26.12], [29.14], [31.32],
    [15], [4.601], [5.229], [6.262], [7.261], [8.547], [22.31], [25.00], [27.49], [30.58], [32.80],
    [16], [5.142], [5.812], [6.908], [7.962], [9.312], [23.54], [26.30], [28.85], [32.00], [34.27],
    [17], [5.697], [6.408], [7.564], [8.672], [10.09], [24.77], [27.59], [30.19], [33.41], [35.72],
    [18], [6.265], [7.015], [8.231], [9.390], [10.86], [25.99], [28.87], [31.53], [34.81], [37.16],
    [19], [6.844], [7.633], [8.907], [10.12], [11.65], [27.20], [30.14], [32.85], [36.19], [38.58],
    [20], [7.434], [8.260], [9.591], [10.85], [12.44], [28.41], [31.41], [34.17], [37.57], [40.00],
    [21], [8.034], [8.897], [10.28], [11.59], [13.24], [29.62], [32.67], [35.48], [38.93], [41.40],
    [22], [8.643], [9.542], [10.98], [12.34], [14.04], [30.81], [33.92], [36.78], [40.29], [42.80],
    [23], [9.260], [10.20], [11.69], [13.09], [14.85], [32.01], [35.17], [38.08], [41.64], [44.18],
    [24], [9.886], [10.86], [12.40], [13.85], [15.66], [33.20], [36.42], [39.36], [42.98], [45.56],
    [25], [10.52], [11.52], [13.12], [14.61], [16.47], [34.38], [37.65], [40.65], [44.31], [46.93],
    [26], [11.16], [12.20], [13.84], [15.38], [17.29], [35.56], [38.89], [41.92], [45.64], [48.29],
    [27], [11.81], [12.88], [14.57], [16.15], [18.11], [36.74], [40.11], [43.19], [46.96], [49.64],
    [28], [12.46], [13.56], [15.31], [16.93], [18.94], [37.92], [41.34], [44.46], [48.28], [50.99],
    [29], [13.12], [14.26], [16.05], [17.71], [19.77], [39.09], [42.56], [45.72], [49.59], [52.34],
    [30], [13.79], [14.95], [16.79], [18.49], [20.60], [40.26], [43.77], [46.98], [50.89], [53.67],
    [40], [20.71], [22.16], [24.43], [26.51], [29.05], [51.81], [55.76], [59.34], [63.69], [66.77],
    [50], [27.99], [29.71], [32.36], [34.76], [37.69], [63.17], [67.50], [71.42], [76.15], [79.49],
    [60], [35.53], [37.48], [40.48], [43.19], [46.46], [74.40], [79.08], [83.30], [88.38], [91.95],
    [70], [43.28], [45.44], [48.76], [51.74], [55.33], [85.53], [90.53], [95.02], [100.4], [104.2],
    [80], [51.17], [53.54], [57.15], [60.39], [64.28], [96.58], [101.9], [106.6], [112.3], [116.3],
    [90], [59.20], [61.75], [65.65], [69.13], [73.29], [107.6], [113.1], [118.1], [124.1], [128.3],
    [100], [67.33], [70.06], [74.22], [77.93], [82.36], [118.5], [124.3], [129.6], [135.8], [140.2],
    [120], [83.85], [86.92], [91.57], [95.70], [100.6], [140.2], [146.6], [152.2], [159.0], [163.6],
    [150], [109.1], [112.7], [118.0], [122.7], [128.3], [172.6], [179.6], [185.8], [193.2], [198.4],
    [200], [152.2], [156.4], [162.7], [168.3], [174.8], [226.0], [234.0], [241.1], [249.4], [255.3],
  )

]

#pagebreak()

= PHỤ LỤC 3. BẢNG GIÁ TRỊ TỚI HẠN STUDENT

#align(center)[
  $ P(T > t_alpha(n)) = alpha $
]

#v(8pt)

#align(center)[
  #set text(size: 8.5pt)
  #table(
    columns: (1cm, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
    align: center + horizon,
    stroke: 0.35pt,
    inset: (x: 1.5pt, y: 2.0pt),
    fill: (x, y) => if y == 0 { rgb("f2f2f2") } else { none },
    table.header([$n$], [$0.005$], [$0.01$], [$0.015$], [$0.02$], [$0.025$], [$0.03$], [$0.04$], [$0.05$], [$0.1$]),
    [1], [63.657], [31.821], [21.205], [15.895], [12.706], [10.579], [7.916], [6.314], [3.078],
    [2], [9.925], [6.965], [5.643], [4.849], [4.303], [3.896], [3.320], [2.920], [1.886],
    [3], [5.841], [4.541], [3.896], [3.482], [3.182], [2.951], [2.605], [2.353], [1.638],
    [4], [4.604], [3.747], [3.298], [2.999], [2.776], [2.601], [2.333], [2.132], [1.533],
    [5], [4.032], [3.365], [3.003], [2.757], [2.571], [2.422], [2.191], [2.015], [1.476],
    [6], [3.707], [3.143], [2.829], [2.612], [2.447], [2.313], [2.104], [1.943], [1.440],
    [7], [3.499], [2.998], [2.715], [2.517], [2.365], [2.241], [2.046], [1.895], [1.415],
    [8], [3.355], [2.896], [2.634], [2.449], [2.306], [2.189], [2.004], [1.860], [1.397],
    [9], [3.250], [2.821], [2.574], [2.398], [2.262], [2.150], [1.973], [1.833], [1.383],
    [10], [3.169], [2.764], [2.527], [2.359], [2.228], [2.120], [1.948], [1.812], [1.372],
    [11], [3.106], [2.718], [2.491], [2.328], [2.201], [2.096], [1.928], [1.796], [1.363],
    [12], [3.055], [2.681], [2.461], [2.303], [2.179], [2.076], [1.912], [1.782], [1.356],
    [13], [3.012], [2.650], [2.436], [2.282], [2.160], [2.060], [1.899], [1.771], [1.350],
    [14], [2.977], [2.624], [2.415], [2.264], [2.145], [2.046], [1.887], [1.761], [1.345],
    [15], [2.947], [2.602], [2.397], [2.249], [2.131], [2.034], [1.878], [1.753], [1.341],
    [16], [2.921], [2.583], [2.382], [2.235], [2.120], [2.024], [1.869], [1.746], [1.337],
    [17], [2.898], [2.567], [2.368], [2.224], [2.110], [2.015], [1.862], [1.740], [1.333],
    [18], [2.878], [2.552], [2.356], [2.214], [2.101], [2.007], [1.855], [1.734], [1.330],
    [19], [2.861], [2.539], [2.346], [2.205], [2.093], [2.000], [1.850], [1.729], [1.328],
    [20], [2.845], [2.528], [2.336], [2.197], [2.086], [1.994], [1.844], [1.725], [1.325],
    [21], [2.831], [2.518], [2.328], [2.189], [2.080], [1.988], [1.840], [1.721], [1.323],
    [22], [2.819], [2.508], [2.320], [2.183], [2.074], [1.983], [1.835], [1.717], [1.321],
    [23], [2.807], [2.500], [2.313], [2.177], [2.069], [1.978], [1.832], [1.714], [1.319],
    [24], [2.797], [2.492], [2.307], [2.172], [2.064], [1.974], [1.828], [1.711], [1.318],
    [25], [2.787], [2.485], [2.301], [2.167], [2.060], [1.970], [1.825], [1.708], [1.316],
    [26], [2.779], [2.479], [2.296], [2.162], [2.056], [1.967], [1.822], [1.706], [1.315],
    [27], [2.771], [2.473], [2.291], [2.158], [2.052], [1.963], [1.819], [1.703], [1.314],
    [28], [2.763], [2.467], [2.286], [2.154], [2.048], [1.960], [1.817], [1.701], [1.313],
    [29], [2.756], [2.462], [2.282], [2.150], [2.045], [1.957], [1.814], [1.699], [1.311],
    [30], [2.750], [2.457], [2.278], [2.147], [2.042], [1.955], [1.812], [1.697], [1.310],
    [31], [2.744], [2.453], [2.275], [2.144], [2.040], [1.952], [1.810], [1.696], [1.309],
    [32], [2.738], [2.449], [2.271], [2.141], [2.037], [1.950], [1.808], [1.694], [1.309],
    [33], [2.733], [2.445], [2.268], [2.138], [2.035], [1.948], [1.806], [1.692], [1.308],
    [34], [2.728], [2.441], [2.265], [2.136], [2.032], [1.946], [1.805], [1.691], [1.307],
    [35], [2.724], [2.438], [2.262], [2.133], [2.030], [1.944], [1.803], [1.690], [1.306],
    [36], [2.719], [2.434], [2.260], [2.131], [2.028], [1.942], [1.802], [1.688], [1.306],
    [37], [2.715], [2.431], [2.257], [2.129], [2.026], [1.940], [1.800], [1.687], [1.305],
    [38], [2.712], [2.429], [2.255], [2.127], [2.024], [1.939], [1.799], [1.686], [1.304],
    [39], [2.708], [2.426], [2.252], [2.125], [2.023], [1.937], [1.798], [1.685], [1.304],
    [40], [2.704], [2.423], [2.250], [2.123], [2.021], [1.936], [1.796], [1.684], [1.303],
    [41], [2.701], [2.421], [2.248], [2.121], [2.020], [1.934], [1.795], [1.683], [1.303],
    [42], [2.698], [2.418], [2.246], [2.120], [2.018], [1.933], [1.794], [1.682], [1.302],
    [43], [2.695], [2.416], [2.244], [2.118], [2.017], [1.932], [1.793], [1.681], [1.302],
    [44], [2.692], [2.414], [2.243], [2.116], [2.015], [1.931], [1.792], [1.680], [1.301],
    [45], [2.690], [2.412], [2.241], [2.115], [2.014], [1.929], [1.791], [1.679], [1.301],
    [46], [2.687], [2.410], [2.239], [2.114], [2.013], [1.928], [1.790], [1.679], [1.300],
    [47], [2.685], [2.408], [2.238], [2.112], [2.012], [1.927], [1.789], [1.678], [1.300],
    [48], [2.682], [2.407], [2.237], [2.111], [2.011], [1.926], [1.789], [1.677], [1.299],
    [49], [2.680], [2.405], [2.235], [2.110], [2.010], [1.925], [1.788], [1.677], [1.299],
    [50], [2.678], [2.403], [2.234], [2.109], [2.009], [1.924], [1.787], [1.676], [1.299],
    [51], [2.676], [2.402], [2.233], [2.108], [2.008], [1.924], [1.786], [1.675], [1.298],
    [52], [2.674], [2.400], [2.231], [2.107], [2.007], [1.923], [1.786], [1.675], [1.298],
    [53], [2.672], [2.399], [2.230], [2.106], [2.006], [1.922], [1.785], [1.674], [1.298],
    [54], [2.670], [2.397], [2.229], [2.105], [2.005], [1.921], [1.784], [1.674], [1.297],
    [55], [2.668], [2.396], [2.228], [2.104], [2.004], [1.920], [1.784], [1.673], [1.297],
    [56], [2.667], [2.395], [2.227], [2.103], [2.003], [1.920], [1.783], [1.673], [1.297],
    [57], [2.665], [2.394], [2.226], [2.102], [2.002], [1.919], [1.782], [1.672], [1.297],
    [58], [2.663], [2.392], [2.225], [2.101], [2.002], [1.918], [1.782], [1.672], [1.296],
    [59], [2.662], [2.391], [2.224], [2.100], [2.001], [1.918], [1.781], [1.671], [1.296],
    [60], [2.660], [2.390], [2.223], [2.099], [2.000], [1.917], [1.781], [1.671], [1.296],
    [61], [2.659], [2.389], [2.222], [2.099], [2.000], [1.916], [1.780], [1.670], [1.296],
    [62], [2.657], [2.388], [2.221], [2.098], [1.999], [1.916], [1.780], [1.670], [1.295],
    [63], [2.656], [2.387], [2.220], [2.097], [1.998], [1.915], [1.779], [1.669], [1.295],
    [64], [2.655], [2.386], [2.220], [2.096], [1.998], [1.915], [1.779], [1.669], [1.295],
    [65], [2.654], [2.385], [2.219], [2.096], [1.997], [1.914], [1.778], [1.669], [1.295],
    [66], [2.652], [2.384], [2.218], [2.095], [1.997], [1.914], [1.778], [1.668], [1.295],
    [67], [2.651], [2.383], [2.217], [2.095], [1.996], [1.913], [1.778], [1.668], [1.294],
    [68], [2.650], [2.382], [2.217], [2.094], [1.995], [1.913], [1.777], [1.668], [1.294],
    [69], [2.649], [2.382], [2.216], [2.093], [1.995], [1.912], [1.777], [1.667], [1.294],
    [70], [2.648], [2.381], [2.215], [2.093], [1.994], [1.912], [1.776], [1.667], [1.294],
    [71], [2.647], [2.380], [2.215], [2.092], [1.994], [1.911], [1.776], [1.667], [1.294],
    [72], [2.646], [2.379], [2.214], [2.092], [1.993], [1.911], [1.776], [1.666], [1.293],
    [73], [2.645], [2.379], [2.213], [2.091], [1.993], [1.910], [1.775], [1.666], [1.293],
    [74], [2.644], [2.378], [2.213], [2.091], [1.993], [1.910], [1.775], [1.666], [1.293],
    [75], [2.643], [2.377], [2.212], [2.090], [1.992], [1.910], [1.775], [1.665], [1.293],
    [76], [2.642], [2.376], [2.212], [2.090], [1.992], [1.909], [1.774], [1.665], [1.293],
    [77], [2.641], [2.376], [2.211], [2.089], [1.991], [1.909], [1.774], [1.665], [1.293],
    [78], [2.640], [2.375], [2.211], [2.089], [1.991], [1.909], [1.774], [1.665], [1.292],
    [79], [2.640], [2.374], [2.210], [2.088], [1.990], [1.908], [1.773], [1.664], [1.292],
    [80], [2.639], [2.374], [2.209], [2.088], [1.990], [1.908], [1.773], [1.664], [1.292],
    [81], [2.638], [2.373], [2.209], [2.087], [1.990], [1.908], [1.773], [1.664], [1.292],
    [82], [2.637], [2.373], [2.209], [2.087], [1.989], [1.907], [1.773], [1.664], [1.292],
    [83], [2.636], [2.372], [2.208], [2.087], [1.989], [1.907], [1.772], [1.663], [1.292],
    [84], [2.636], [2.372], [2.208], [2.086], [1.989], [1.907], [1.772], [1.663], [1.292],
    [85], [2.635], [2.371], [2.207], [2.086], [1.988], [1.906], [1.772], [1.663], [1.292],
    [86], [2.634], [2.370], [2.207], [2.085], [1.988], [1.906], [1.772], [1.663], [1.291],
    [87], [2.634], [2.370], [2.206], [2.085], [1.988], [1.906], [1.771], [1.663], [1.291],
    [88], [2.633], [2.369], [2.206], [2.085], [1.987], [1.905], [1.771], [1.662], [1.291],
    [89], [2.632], [2.369], [2.205], [2.084], [1.987], [1.905], [1.771], [1.662], [1.291],
    [90], [2.632], [2.368], [2.205], [2.084], [1.987], [1.905], [1.771], [1.662], [1.291],
    [91], [2.631], [2.368], [2.205], [2.084], [1.986], [1.905], [1.770], [1.662], [1.291],
    [92], [2.630], [2.368], [2.204], [2.083], [1.986], [1.904], [1.770], [1.662], [1.291],
    [93], [2.630], [2.367], [2.204], [2.083], [1.986], [1.904], [1.770], [1.661], [1.291],
    [100], [2.626], [2.364], [2.201], [2.081], [1.984], [1.902], [1.769], [1.660], [1.290],
    [120], [2.617], [2.358], [2.196], [2.076], [1.980], [1.899], [1.766], [1.658], [1.289],
  )

]

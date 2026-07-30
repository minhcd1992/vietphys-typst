#import "../vietphys.typ": *
#import "@preview/droplet:0.3.1": dropcap
#import "@preview/fontawesome:0.6.2": *

#show: doc => vp-page-setup(paper: "a4", margin: (x: 2cm, y: 60pt), doc)
// Kích hoạt Theme Heading tự động cho toàn bộ tài liệu
#show: vp-heading-theme-01.with(color: rgb("#5F9E31"), bg-color: rgb("#EAF4DF"))
#set text(font: "Times New Roman", size: 12pt, lang: "vi")

#let current-part = state("current-part", "Phần I - TNKQ")
#set page(
  header: context vp-header-theme-01(
    title: "TÀI LIỆU VẬT LÍ",
    subtitle: "Chuyên đề: Động học chất điểm",
    color: rgb("#1D3B7A"),         
    icon: "bolt",                  
    right-content: current-part.get() 
  ),
  footer: vp-footer-kage(
    color: rgb("#1D3B7A"), 
    kunai-path: "kunai.svg", 
    slogan: "Level Up Your Knowledge"
  )
)

#vp-lesson-title(num: "2", title: "ĐỀ KIỂM TRA ĐỘNG HỌC CHẤT ĐIỂM", color: rgb("#259697"))

#align(center)[
  Mức độ: Học sinh giỏi | Thời gian làm bài: 60 phút \
  _Quy ước: Lấy $g = 9,8 "m/s"^2$, bỏ qua lực cản không khí trừ khi có chú thích khác._
]
#v(10pt)

= PHẦN I. TRẮC NGHIỆM KHÁCH QUAN (20 CÂU)
#current-part.update("Phần I - TNKQ")
_Chọn 1 đáp án đúng duy nhất cho mỗi câu._

#vp-question(
  [Một hệ trục tọa độ $O x y$ đang được sử dụng để biểu diễn vector vận tốc $arrow(v)$ của một chiếc xe. Nếu ta giữ nguyên vector $arrow(v)$ nhưng xoay hệ trục tọa độ đi một góc $30^degree$ thì:],
  type: "mcq",
  options: (
    [Độ lớn của vector $arrow(v)$ thay đổi, các thành phần tọa độ $v_x, v_y$ không đổi.],
    [Hướng của vector $arrow(v)$ trong không gian thay đổi để khớp với hệ trục mới.],
    [Cả độ lớn vector $arrow(v)$ và các thành phần tọa độ $v_x, v_y$ đều thay đổi.],
    [Độ lớn và hướng của vector $arrow(v)$ trong không gian không đổi, chỉ có các thành phần tọa độ $v_x, v_y$ thay đổi.]
  ),
  ans: "D",
  sol: [*Giải chi tiết:* \ Bản chất: Việc xoay hệ tọa độ chỉ làm thay đổi "góc nhìn" (các thành phần $v_x, v_y$), còn vector vật lý trong không gian thực tồn tại độc lập với hệ tọa độ.]
)

#vp-question(
  [Trong môn bóng rổ, khi một cầu thủ bật nhảy thẳng đứng để ném rổ, khán giả thường có cảm giác cầu thủ đó "lơ lửng" (hang time) ở điểm cao nhất rất lâu. Giải thích vật lý nào sau đây là đúng nhất cho hiện tượng này?],
  type: "mcq",
  options: (
    [Gia tốc của cầu thủ giảm dần và bằng 0 khi ở điểm cao nhất.],
    [Cầu thủ dành khoảng 70% tổng thời gian bay chỉ để di chuyển trong nửa trên của quỹ đạo (từ $0,5 H_"max"$ đến $H_"max"$).],
    [Lực cản của không khí giữ cầu thủ lại ở điểm cao nhất.],
    [Tại điểm cao nhất, vector vận tốc và vector gia tốc vuông góc với nhau.]
  ),
  ans: "B",
  sol: [*Giải chi tiết:* \ Bẫy nhận thức: Toán học chứng minh qua phương trình Parabol rằng thời gian đi từ $0,5 H_"max"$ lên $H_"max"$ rồi rơi về $0,5 H_"max"$ chiếm $1 - 1/sqrt(2.0) approx 70,7%$ tổng thời gian bay.]
)

#vp-question(
  [Khi bạn đạp phanh gấp, cơ thể bạn bị chúi về phía trước. Trên đồ thị gia tốc - thời gian ($a - t$), quá trình phanh này được biểu diễn bằng một hình tam giác (gia tốc tăng vọt từ 0 lên đỉnh rồi giảm về 0). Diện tích của hình tam giác này mang ý nghĩa gì đối với cơ thể bạn?],
  type: "mcq",
  options: (
    [Là khoảng cách mà cơ thể bạn bị văng về phía trước.],
    [Là lực quán tính tác dụng lên cơ thể bạn.],
    [Là độ giảm vận tốc của cơ thể bạn so với mặt đường.],
    [Là tốc độ phản xạ của người lái xe.]
  ),
  ans: "C",
  sol: [*Giải chi tiết:* \ Diện tích đồ thị $a - t$ chính là $Delta v$, tức là độ giảm vận tốc do phanh.]
)

#vp-question(
  [Đang đi dưới trời mưa không có gió (mưa rơi thẳng đứng so với đất), bạn tăng tốc chiếc xe đạp của mình lên dần đều. Đối với bạn, các giọt nước mưa dường như:],
  type: "mcq",
  options: (
    [Rơi thẳng đứng nhưng với tốc độ lớn hơn.],
    [Bay nghiêng về phía bạn và góc nghiêng (so với phương thẳng đứng) ngày càng tăng.],
    [Bay nghiêng về phía bạn nhưng góc nghiêng không đổi.],
    [Bị đẩy ra phía sau bạn với gia tốc bằng gia tốc của xe.]
  ),
  ans: "B",
  sol: [*Giải chi tiết:* \ Theo công thức cộng vector $arrow(v)_"mưa/người" = arrow(v)_"mưa/đất" - arrow(v)_"người/đất"$. Xe càng nhanh, vector vận tốc người càng dài, làm góc hợp bởi $arrow(v)_"mưa/người"$ với phương thẳng đứng càng lớn.]
)

#vp-question(
  [Để kiểm tra xem hai bức tường cơi nới có thực sự vuông góc với nhau hay không, một kỹ sư đo đạc thiết lập hai vector $arrow(A)$ và $arrow(B)$ chạy dọc theo chân hai bức tường. Hai bức tường này vuông góc tuyệt đối khi và chỉ khi:],
  type: "mcq",
  options: (
    [$arrow(A) times arrow(B) = arrow(0)$],
    [$arrow(A) dot arrow(B) = 0$],
    [Độ lớn $|arrow(A) times arrow(B)| = A B$],
    [Cả B và C đều đúng.]
  ),
  ans: "D",
  sol: [*Giải chi tiết:* \ Vừa kiểm tra góc vuông $cos 90^degree = 0 -> arrow(A) dot arrow(B) = 0$, vừa kiểm tra công thức độ lớn Cross product $sin 90^degree = 1 -> |arrow(A) times arrow(B)| = A B$.]
)

#vp-question(
  [Từ một vòi nước rò rỉ, các giọt nước rơi tự do xuống đất cách nhau những khoảng thời gian bằng nhau. Trong quá trình rơi trên không trung, khoảng cách giữa hai giọt nước liên tiếp (ví dụ giọt 1 và giọt 2) sẽ:],
  type: "mcq",
  options: (
    [Luôn không đổi vì chúng có cùng gia tốc $g$.],
    [Tăng dần theo thời gian.],
    [Giảm dần vì giọt sau rơi vào vùng không khí loãng hơn.],
    [Tăng trong nửa quãng đường đầu và giảm trong nửa quãng đường sau.]
  ),
  ans: "B",
  sol: [*Giải chi tiết:* \ Khoảng cách $Delta s &= 1/2 g t^2 - 1/2 g (t - Delta t)^2 \ &= g Delta t dot t - 1/2 g Delta t^2$. \ Biểu thức là hàm bậc nhất của $t$, nên $Delta s$ tăng theo thời gian.]
)

#vp-question(
  [Đứng trên mép một vách đá cao, bạn ném hòn đá A thẳng đứng lên trên với tốc độ $v_0$, và ném hòn đá B thẳng đứng xuống dưới cũng với tốc độ $v_0$. Bỏ qua lực cản không khí. So sánh tốc độ của hai hòn đá ngay trước khi chạm đất:],
  type: "mcq",
  options: (
    [Hòn đá B chạm đất với tốc độ lớn hơn.],
    [Hòn đá A chạm đất với tốc độ lớn hơn vì rơi từ độ cao cao hơn.],
    [Cả hai chạm đất với cùng một tốc độ.],
    [Không thể so sánh nếu không biết độ cao của vách đá.]
  ),
  ans: "C",
  sol: [*Giải chi tiết:* \ Hòn đá A bay lên đỉnh rồi rớt xuống ngang vạch xuất phát thì tốc độ lại quay về $v_0$ (nhưng hướng xuống). Từ lúc này, nó trở thành bài toán giống y hệt hòn đá B.]
)

#vp-question(
  [Đồ thị vận tốc - thời gian ($v - t$) của một vật là một đường gấp khúc hình chữ V (ví dụ đi từ đỉnh tọa độ $(0, 5)$ xuống $(2, 0)$ rồi lên $(4, 5)$). Phát biểu nào sau đây mô tả đúng nhất chuyển động này?],
  type: "mcq",
  options: (
    [Vật đi xuống một cái hố sâu rồi đi lên lại.],
    [Vật chuyển động chậm dần đều, dừng lại trong chốc lát, rồi tiếp tục đi tới nhanh dần đều theo chiều cũ.],
    [Vật chuyển động chậm dần đều, đổi chiều, rồi đi nhanh dần đều về điểm xuất phát.],
    [Gia tốc của vật luôn dương trong suốt quá trình.]
  ),
  ans: "C",
  sol: [*Giải chi tiết:* \ Chữ V trên đồ thị $v - t$: đang ở $v > 0$ giảm về 0 (chậm dần), chạm trục $t$ (đổi chiều), rồi $v$ tăng về hướng âm (nhanh dần ngược chiều). Đáp án C khớp nhất với trị tuyệt đối của vận tốc.]
)

#vp-question(
  [Một người trượt patin đang lao đi với tốc độ $10 "m/s"$ trên mặt sàn phẳng ngang thì đánh rơi một chùm chìa khóa. Bỏ qua lực cản không khí. Trong khi rơi, chùm chìa khóa sẽ:],
  type: "mcq",
  options: (
    [Luôn nằm trên một đường thẳng đứng dóng từ tay người đó xuống đất.],
    [Rơi lùi lại phía sau lưng người đó.],
    [Vượt lên trước người đó do lực ném tay.],
    [Bay theo một quỹ đạo zig-zag do va chạm không khí.]
  ),
  ans: "A",
  sol: [*Giải chi tiết:* \ Tính độc lập của chuyển động: Cả người và chìa khóa đều có cùng $v_x = 10 "m/s"$ không đổi, nên chúng luôn có cùng tọa độ $x$.]
)

#vp-question(
  [Viên đạn được bắn ra theo phương ngang nhằm thẳng vào một quả táo đang treo trên cây. Ngay lúc đạn rời nòng, quả táo rụng xuống (rơi tự do). Phát biểu nào sau đây đúng?],
  type: "mcq",
  options: (
    [Đạn sẽ bay sượt qua phía trên quả táo.],
    [Đạn sẽ luôn bắn trúng quả táo bất kể vận tốc bắn là bao nhiêu (miễn là đạn tới trước khi táo chạm đất).],
    [Phải tính toán vận tốc đạn thật chính xác thì đạn mới trúng táo.],
    [Đạn sẽ bay sượt qua phía dưới quả táo do bị trọng lực kéo xuống nhanh hơn.]
  ),
  ans: "B",
  sol: [*Giải chi tiết:* \ Hiện tượng "The Monkey and Hunter" nổi tiếng. Thành phần rơi $-1/2 g t^2$ tác dụng hệt nhau lên đạn và táo, làm chúng triệt tiêu khoảng cách dọc.]
)

#vp-question(
  [Bạn chạy với tốc độ cực đại của mình là $v_1$ trong $1/3$ thời gian đầu tiên của cuộc đua, và vì kiệt sức, bạn đi bộ với tốc độ $v_2$ trong $2/3$ thời gian còn lại. Vận tốc trung bình của bạn là:],
  type: "mcq",
  options: (
    [$(v_1 + 2 v_2) / 3$],
    [$(2 v_1 + v_2) / 3$],
    [$(3 v_1 v_2) / (2 v_1 + v_2)$],
    [$(v_1 + v_2) / 2$]
  ),
  ans: "A",
  sol: [*Giải chi tiết:* \ Vận tốc trung bình tính bằng tổng quãng đường chia tổng thời gian: \ $macron(v) = (v_1 (T/3) + v_2 (2 T/3)) / T = (v_1 + 2 v_2) / 3$.]
)

#vp-question(
  [Một quả bóng rơi tự do từ đỉnh tháp. Nếu quãng đường rơi được trong giây thứ nhất là $s$, thì quãng đường rơi được trong giây thứ 3 là bao nhiêu?],
  type: "mcq",
  options: (
    [$3 s$],
    [$5 s$],
    [$7 s$],
    [$9 s$]
  ),
  ans: "B",
  sol: [*Giải chi tiết:* \ Định luật số lẻ Galileo: Giây 1 đi $1 s$, giây 2 đi $3 s$, giây 3 đi $5 s$.]
)

#vp-question(
  [Một thang máy bị đứt cáp và đang rơi tự do. Một người bên trong thang máy thả nhẹ một đồng xu từ ngang ngực. Đối với người này, đồng xu sẽ:],
  type: "mcq",
  options: (
    [Rơi xuống sàn với gia tốc $g$.],
    [Rơi xuống sàn với gia tốc lớn hơn $g$.],
    [Bay ngược lên trần thang máy.],
    [Lơ lửng ngay tại vị trí ngang ngực.]
  ),
  ans: "D",
  sol: [*Giải chi tiết:* \ Cả người, thang máy và đồng xu đều đang rơi tự do với gia tốc $g$. Hệ quy chiếu phi quán tính có gia tốc bằng $g$, lực quán tính $-m g$ triệt tiêu hoàn toàn trọng lực $m g$. Đồng xu "mất trọng lượng".]
)

#vp-question(
  [Hai bến sông A và B. Vận tốc dòng nước chảy từ A đến B là $u$. Một chiếc xuồng máy có vận tốc so với nước là $v$ ($v > u$). So với khi nước tĩnh lặng, tổng thời gian đi từ A đến B rồi quay lại A khi có nước chảy sẽ:],
  type: "mcq",
  options: (
    [Không đổi vì thời gian xuôi dòng bù đắp cho thời gian ngược dòng.],
    [Luôn tăng lên.],
    [Luôn giảm đi.],
    [Tùy thuộc vào việc $v$ lớn hơn $u$ bao nhiêu.]
  ),
  ans: "B",
  sol: [*Giải chi tiết:* \ Chứng minh đại số: $t &= L / (v - u) + L / (v + u) \ &= (2 v L) / (v^2 - u^2)$. \ Vì $v^2 - u^2 < v^2$, nên $t > (2 L) / v$ (thời gian nước lặng). Nước chảy luôn làm tốn thời gian hơn.]
)

#vp-question(
  [Hai chiếc xe đua A và B chạy trên đường thẳng. Đồ thị tọa độ - thời gian ($x - t$) của chúng cắt nhau tại hai điểm. Điều đó chứng tỏ:],
  type: "mcq",
  options: (
    [Xe A đã vượt xe B, sau đó xe B vượt lại xe A.],
    [Hai xe chạy ngược chiều nhau.],
    [Tại hai thời điểm đó, hai xe có cùng vận tốc.],
    [Gia tốc của hai xe bằng nhau.]
  ),
  ans: "A",
  sol: [*Giải chi tiết:* \ Cắt nhau nghĩa là cùng tọa độ $->$ Gặp nhau và vượt nhau. Cắt 2 lần nghĩa là có sự qua mặt lại.]
)

#vp-question(
  [Trên biển, tàu A chạy hướng Đông với $v = 24 "hải lý/h"$. Tàu B chạy hướng Tây Nam (góc $45^degree$ giữa Nam và Tây) với $v = 28 "hải lý/h"$. Vector vận tốc của tàu A đối với tàu B sẽ hướng về phía:],
  type: "mcq",
  options: (
    [Đông Nam.],
    [Tây Bắc.],
    [Đông Bắc.],
    [Nam.]
  ),
  ans: "C",
  sol: [*Giải chi tiết:* \ Vẽ vector: $arrow(v)_"AB" = arrow(v)_A - arrow(v)_B$. Vector $arrow(v)_A$ hướng Đông, vector $-arrow(v)_B$ hướng Đông Bắc. Tổng hợp lại sẽ hướng chếch Đông Bắc.]
)

#vp-question(
  [Độ dài vết phanh (quãng đường hãm phanh) của xe ô tô trên mặt đường khô phụ thuộc vào vận tốc đầu $v_0$. Nếu tài xế chạy quá tốc độ giới hạn 20% (tức là chạy bằng $1,2 v_0$), quãng đường phanh sẽ tăng lên:],
  type: "mcq",
  options: (
    [20%],
    [44%],
    [14,4%],
    [120%]
  ),
  ans: "B",
  sol: [*Giải chi tiết:* \ $s = v^2 / (2 a)$. Tốc độ tăng $1,2$ lần $->$ quãng đường tăng $1,2^2 = 1,44$ lần, tức tăng 44%.]
)

#vp-question(
  [Một quả bóng tennis đập vào tường theo phương ngang với tốc độ $20 "m/s"$ và bật ngược trở lại theo đúng phương cũ với tốc độ $15 "m/s"$. Trọng tài nói rằng độ biến thiên tốc độ là $5 "m/s"$. Sự biến thiên vận tốc $Delta arrow(v)$ thực tế có độ lớn là:],
  type: "mcq",
  options: (
    [$5 "m/s"$],
    [$35 "m/s"$],
    [$25 "m/s"$],
    [$0 "m/s"$]
  ),
  ans: "B",
  sol: [*Giải chi tiết:* \ $Delta arrow(v) = arrow(v)_"sau" - arrow(v)_"đầu" = (-15) - 20 = -35 "m/s"$. \ Độ lớn là $35 "m/s"$. Trọng tài dùng sai khái niệm tốc độ thay vì vận tốc.]
)

#vp-question(
  [Một con bọ chét đi dọc theo các cạnh của một hình lập phương cạnh $a$ từ góc $(0, 0, 0)$ đến góc đối diện $(a, a, a)$. Khoảng cách đường chim bay (độ lớn độ dịch chuyển) của con bọ là:],
  type: "mcq",
  options: (
    [$3 a$],
    [$a sqrt(2)$],
    [$a sqrt(3)$],
    [$a$]
  ),
  ans: "C",
  sol: [*Giải chi tiết:* \ Khoảng cách không gian 3D: $d = sqrt(a^2 + a^2 + a^2) = a sqrt(3)$.]
)

#vp-question(
  [Hai đoàn tàu đang chạy cùng chiều trên cùng một đường ray với vận tốc $v_1$ (đi sau) và $v_2$ (đi trước, $v_1 > v_2$). Khi thấy nhau, tàu đi sau lập tức phanh với gia tốc $a$. Điều kiện để hai tàu vừa chạm sát mũi vào nhau mà không gây tai nạn được tính từ tọa độ đỉnh của Parabol của hàm số khoảng cách $Delta x(t)$. Tọa độ đỉnh này xảy ra khi:],
  type: "mcq",
  options: (
    [Hai tàu dừng lại cùng lúc.],
    [Vận tốc của tàu đi sau giảm xuống vừa đúng bằng vận tốc tàu đi trước ($v = v_2$).],
    [Vận tốc của tàu đi sau giảm xuống bằng 0.],
    [Khoảng cách giữa hai tàu bằng 0 tại $t = 0$.]
  ),
  ans: "B",
  sol: [*Giải chi tiết:* \ Điều kiện không đâm nhau là khoảng cách $Delta x_"min" > 0$. Cực trị hàm $Delta x$ xảy ra tại đỉnh Parabol khi đạo hàm bằng 0, tức là vận tốc hai tàu bằng nhau.]
)

#pagebreak()
= PHẦN II. TRẮC NGHIỆM ĐÚNG/SAI (4 CÂU)
#current-part.update("Phần II - Đúng/Sai")
_Trong mỗi câu, xét tính ĐÚNG / SAI của các phát biểu a, b, c, d._

#vp-question(
  [Về đặc tính của phép toán Vector.],
  type: "tf",
  statements: (
    [Cho hai vector $arrow(A)$ và $arrow(B)$, biểu thức $arrow(A) dot (arrow(A) times arrow(B))$ luôn luôn bằng 0.],
    [Phép nhân vô hướng (Dot product) tuân theo tính giao hoán ($arrow(A) dot arrow(B) = arrow(B) dot arrow(A)$), nhưng phép nhân có hướng (Cross product) thì không.],
    [Nếu tổng của ba vector $arrow(a) + arrow(b) + arrow(c) = arrow(0)$, ba vector này bắt buộc phải nằm trên cùng một mặt phẳng.],
    [Có thể cộng một đại lượng vô hướng (như $5 "kg"$) với độ lớn của một đại lượng vector (như $10 "m/s"$) để tạo thành một phương trình vật lý hợp lệ.]
  ),
  ans-tf: ("Đ", "S", "Đ", "S"),
  sol: [*Giải chi tiết:* \
  - a) ĐÚNG (Tích có hướng tạo ra vector vuông góc với $arrow(A)$, nhân vô hướng lại với $arrow(A)$ sẽ ra 0). \
  - b) SAI ($arrow(A) times arrow(B) = - arrow(B) times arrow(A)$). \
  - c) ĐÚNG (Tổng 3 vector bằng 0 thì chúng tạo thành tam giác khép kín $->$ đồng phẳng). \
  - d) SAI (Chỉ cộng được khi cùng thứ nguyên vật lý).
  ]
)

#vp-question(
  [Phân tích hiện tượng Động học qua Đồ thị.],
  type: "tf",
  statements: (
    [Đồ thị tọa độ - thời gian ($x - t$) của một hạt có thể là một đường thẳng đứng nếu hạt chuyển động với vận tốc cực lớn.],
    [Trên đồ thị vận tốc - thời gian ($v - t$), nếu đường biểu diễn đi xuyên qua trục hoành (trục thời gian $t$), chứng tỏ vật đã đổi chiều chuyển động.],
    [Đối với chuyển động thẳng nhanh dần đều có $v_0 = 0$, đồ thị biểu diễn vận tốc $v$ theo bình phương thời gian ($t^2$) là một đường thẳng.],
    [Một đường cong kín không bao giờ có thể là đồ thị biểu diễn vị trí $x$ theo thời gian $t$ của một chất điểm.]
  ),
  ans-tf: ("S", "Đ", "S", "Đ"),
  sol: [*Giải chi tiết:* \
  - a) SAI (Đường thẳng đứng nghĩa là thời gian không trôi nhưng vị trí thay đổi $->$ vận tốc vô cực/không tồn tại trong thực tế). \
  - b) ĐÚNG. \
  - c) SAI (Đồ thị $v$ theo $t^2$ không phải thẳng, đồ thị $x$ theo $t^2$ mới thẳng vì $x = 1/2 a t^2$). \
  - d) ĐÚNG (Hạt không thể ở 2 vị trí khác nhau cùng 1 thời điểm).
  ]
)

#vp-question(
  [Tính tương đối của chuyển động. (Giả sử một thang cuốn đi lên dài $L$, vận tốc thang là $u$. Một người đi bộ trên thang với vận tốc $v$ so với thang).],
  type: "tf",
  statements: (
    [Nếu người đó đi bộ lên, vận tốc của người so với mặt đất là $v + u$.],
    [Thời gian người đó đi bộ lên hết thang cuốn là $t = L / (v + u)$.],
    [Nếu người đó đứng im trên thang cuốn đi lên, hoặc tự đi bộ lên trên thang cuốn đứng im, thì tổng hai khoảng thời gian này bằng thời gian khi người đó vừa bước đi vừa đi thang máy.],
    [Vận tốc của người đối với thang cuốn độc lập với việc thang máy có đang chạy hay không.]
  ),
  ans-tf: ("Đ", "Đ", "S", "Đ"),
  sol: [*Giải chi tiết:* \
  - a) ĐÚNG. \
  - b) ĐÚNG. \
  - c) SAI ($1/t_"tổng" = 1/t_1 + 1/t_2$ chứ không cộng tuyến tính thời gian). \
  - d) ĐÚNG.
  ]
)

#vp-question(
  [Các ảo giác và bẫy trong sự rơi tự do.],
  type: "tf",
  statements: (
    [Hai vật nặng nhẹ khác nhau (ví dụ tạ $10 "kg"$ và lông chim) chỉ rơi cùng một gia tốc $g$ khi và chỉ khi lực hút của Trái Đất lên chúng là bằng nhau.],
    [Khi bạn tung quả bóng lên cao trong một chiếc xe đang chạy thẳng đều, quả bóng sẽ rơi đúng vào tay bạn do nó mang theo vận tốc quán tính của xe.],
    [Nếu không có lực cản không khí, giọt nước rơi từ độ cao $5 "m"$ sẽ chạm đất với tốc độ gấp đôi giọt nước rơi từ độ cao $2,5 "m"$.],
    [Vận tốc rơi tự do của một vật tỉ lệ thuận với thời gian rơi, nhưng tỉ lệ với căn bậc hai của quãng đường rơi.]
  ),
  ans-tf: ("S", "Đ", "S", "Đ"),
  sol: [*Giải chi tiết:* \
  - a) SAI (Gia tốc $g$ bằng nhau vì lực hút tỉ lệ với khối lượng $P = m g$, khối lượng $m$ bị triệt tiêu trong định luật II Newton $a = P/m$). \
  - b) ĐÚNG. \
  - c) SAI ($v = sqrt(2 g h)$, độ cao tăng gấp đôi thì $v$ tăng $sqrt(2)$ lần). \
  - d) ĐÚNG ($v = g t$ và $v = sqrt(2 g s)$).
  ]
)

#pagebreak()
= PHẦN III. TRẢ LỜI NGẮN (ĐIỀN ĐÁP SỐ) (6 CÂU)
#current-part.update("Phần III - Trả lời ngắn")
_Học sinh chỉ điền đáp án bằng số (kèm đơn vị nếu cần, ví dụ: 10 m/s)._

#vp-question(
  [Cho hai vector $arrow(d_1) = 3 hat(i) - 2 hat(j) + 4 hat(k)$ và $arrow(d_2) = -5 hat(i) + 2 hat(j) - hat(k)$ (đơn vị mét). Tính giá trị của biểu thức tích vô hướng: $arrow(d_1) dot (arrow(d_1) + arrow(d_2))$.],
  type: "short",
  ans: "6",
  sol: [*Giải chi tiết:* \
  Tính $arrow(d_1) + arrow(d_2) = -2 hat(i) + 0 hat(j) + 3 hat(k)$. \
  Tích vô hướng: \
  $ arrow(d_1) dot (arrow(d_1) + arrow(d_2)) &= 3(-2) + (-2)(0) + 4(3) \
  &= -6 + 0 + 12 = 6 $ \
  (Lưu ý giáo viên: đề bài gốc có nhầm nhẩm, kết quả chuẩn là 6, giáo viên chỉnh lại key).
  ]
)

#vp-question(
  [Bạn lái xe với tốc độ $54 "km/h"$ ($15 "m/s"$) tiến đến một ngã tư. Gia tốc phanh tối đa của xe bạn là $-5,0 "m/s"^2$. Thời gian phản xạ của bạn (từ lúc mắt thấy đèn vàng đến lúc chân đạp phanh) là $0,8 "s"$. Tính "khoảng cách an toàn tối thiểu" (tính từ xe đến vạch dừng) để nếu đèn chuyển đỏ, bạn hãm phanh mà xe không bị lọt vạch.],
  type: "short",
  ans: "34,5",
  sol: [*Giải chi tiết:* \
  Quãng đường phản xạ: $s_1 = v t = 15 times 0,8 = 12 "m"$. \
  Quãng đường phanh: $s_2 = v^2 / (2 a) = 15^2 / (2 times 5.0) = 22,5 "m"$. \
  Tổng $D = 12 + 22,5 = 34,5 "m"$.
  ]
)

#vp-question(
  [Một khinh khí cầu đang bay thẳng đứng lên trời với tốc độ đều $12 "m/s"$. Tại độ cao $80 "m"$ so với mặt đất, một bưu kiện rớt ra khỏi rổ. Cho $g = 9,8 "m/s"^2$. Khoảng cách lớn nhất từ bưu kiện đến mặt đất trong suốt quá trình bay là bao nhiêu? (Làm tròn 1 chữ số thập phân).],
  type: "short",
  ans: "87,3",
  sol: [*Giải chi tiết:* \
  Bưu kiện rớt ra mang theo $v_0 = 12 "m/s"$ (hướng lên). \
  $ H_"max" &= 80 + v_0^2 / (2 g) \ &= 80 + 12^2 / (2 times 9,8) \ &= 80 + 7,34 = 87,34 "m" $
  ]
)

#vp-question(
  [Tên trộm chạy ngang qua viên cảnh sát với tốc độ không đổi $v = 15 "m/s"$. Do giật mình, viên cảnh sát mất $2,0 "s"$ phản ứng rồi mới bắt đầu đuổi theo bằng xe máy từ trạng thái nghỉ với gia tốc không đổi $a = 3,0 "m/s"^2$. Thời gian (tính từ lúc xe máy bắt đầu chạy) để cảnh sát đuổi kịp tên trộm là bao nhiêu?],
  type: "short",
  ans: "11,8",
  sol: [*Giải chi tiết:* \
  Chọn gốc $t = 0$ lúc xe máy bắt đầu chạy. Trộm đã đi được quãng đường trước đó: $s_0 = v times t_"trễ" = 15 times 2,0 = 30 "m"$. \
  Phương trình tọa độ Trộm: $x_1 = 30 + 15 t$. \
  Cảnh sát: $x_2 = 1,5 t^2$. \
  Gặp nhau: $1,5 t^2 - 15 t - 30 = 0 => t approx 11,77 "s" approx 11,8 "s"$.
  ]
)

#vp-question(
  [Tàu hỏa A dài $L = 150 "m"$ đang chạy thẳng đều với tốc độ $20 "m/s"$. Một người lính đứng ở cuối đuôi tàu bắn một viên đạn với tốc độ $650 "m/s"$ (so với nòng súng) nhắm thẳng về phía đầu tàu. Tính thời gian viên đạn bay trong thân tàu (từ đuôi lên đầu tàu) theo hệ quy chiếu gắn với mặt đất. (Làm tròn 3 chữ số thập phân).],
  type: "short",
  ans: "0,231",
  sol: [*Giải chi tiết:* \
  Đây là bài toán bẫy. Vận tốc đạn so với tàu là $650 "m/s"$. Quãng đường nó đi trong tàu là $150 "m"$. Dù xét theo hệ quy chiếu nào (mặt đất hay tàu), thời gian vẫn là đại lượng bất biến (tuyệt đối). \
  $ t = S_"tàu" / V_"đạn/tàu" = 150 / 650 approx 0,231 "s" $
  ]
)

#vp-question(
  [Nước nhỏ giọt từ vòi sen cách mặt sàn $200 "cm"$. Các giọt rơi cách nhau những khoảng thời gian $Delta t$ đều đặn. Biết giọt thứ nhất vừa chạm sàn thì giọt thứ tư bắt đầu rời vòi. Lấy $g = 10 "m/s"^2$. Hỏi lúc đó, giọt thứ hai cách vòi sen một khoảng bao nhiêu cm?],
  type: "short",
  ans: "88,9",
  sol: [*Giải chi tiết:* \
  Giọt 1 rơi $3 Delta t$, giọt 2 rơi $2 Delta t$. Tỉ lệ quãng đường: \
  $ h_2 / h_1 &= (2 Delta t)^2 / (3 Delta t)^2 = 4 / 9 \ h_2 &= 4/9 times 200 = 88,88... "cm" $
  ]
)

#pagebreak()
#vp-print-keys(title: "BẢNG ĐÁP ÁN")
#vp-print-solutions(title: "HƯỚNG DẪN GIẢI CHI TIẾT")
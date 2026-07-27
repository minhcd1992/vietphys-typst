#import "../vietphys.typ": *
#import "@preview/droplet:0.3.1": dropcap
#import "@preview/fontawesome:0.6.2": *

#show: doc => vp-page-setup(paper: "a4", margin: (x: 2cm, y: 60pt), doc)
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
#vp-show-level.update(false)
#vp-show-source.update(false)

#align(center)[
  #text(size: 18pt, weight: "bold")[ĐỀ KIỂM TRA ĐỘNG HỌC CHẤT ĐIỂM (BÀI 1 ĐẾN BÀI 4)]
  #v(5pt)
  _Mức độ: Học sinh giỏi | Thời gian làm bài: 60 phút_
  
  _(Quy ước: Lấy $g=9,8 "m/s"^2$ trừ khi có chú thích khác. Chiều dương trục tung hướng lên trên đối với bài toán thẳng đứng)._
]
#v(10pt)

// ==========================================
// PHẦN I. TRẮC NGHIỆM KHÁCH QUAN
// ==========================================
#vp-section(num: "I", title: "TRẮC NGHIỆM KHÁCH QUAN (20 CÂU)")
_Chọn 1 đáp án đúng duy nhất cho mỗi câu._
#v(5pt)

#vp-question(
  [(Vector): Khẳng định nào sau đây về độ dịch chuyển ($Delta x$) và quãng đường ($s$) là ĐÚNG về mặt bản chất Vật lý?],
  type: "mcq", level: "Thông hiểu",
  options: (
    "Quãng đường luôn lớn hơn độ lớn của độ dịch chuyển trong mọi trường hợp.",
    "Độ dịch chuyển có thể nhận giá trị âm, dương hoặc bằng không, trong khi quãng đường luôn không âm.",
    "Khi vật chuyển động trên một đường thẳng, quãng đường luôn bằng độ lớn của độ dịch chuyển.",
    "Độ dịch chuyển phụ thuộc vào quỹ đạo chuyển động của vật từ điểm đầu đến điểm cuối."
  ),
  ans: "B", sol: [Bản chất vector và vô hướng của độ dịch chuyển và quãng đường.]
)

#vp-question(
  [(Vector): Hai vector $arrow(A)$ và $arrow(B)$ có độ lớn lần lượt là 5 và 12. Độ lớn của vector tổng $arrow(C) = arrow(A) + arrow(B)$ KHÔNG THỂ nhận giá trị nào sau đây?],
  type: "mcq", level: "Vận dụng",
  options: ("7", "10", "17", "6"),
  ans: "D", sol: [Điều kiện bất đẳng thức tam giác $|A - B| <= C <= A + B => 7 <= C <= 17$. Do đó $C$ không thể bằng 6.]
)

#vp-question(
  [(Vector): Khi dùng máy tính bỏ túi để tìm góc định hướng của một vector có các thành phần $a_x = -4$ và $a_y = 3$, máy tính trả về kết quả xấp xỉ $-36,9^degree$. Góc thực tế của vector này hợp với chiều dương trục Ox là:],
  type: "mcq", level: "Vận dụng",
  options: ($-36,9^degree$, $143,1^degree$, $216,9^degree$, $323,1^degree$),
  ans: "B", sol: [Vector nằm ở góc phần tư số II (do $x<0, y>0$), máy tính cho góc ở phần tư IV, nên phải cộng thêm $180^degree => -36,9^degree + 180^degree = 143,1^degree$.]
)

#vp-question(
  [(Tốc độ & Vận tốc): Một vận động viên bơi lội bơi hết một vòng hồ dài 50m (từ bờ này sang bờ kia rồi quay lại) trong 50 giây. Phát biểu nào sau đây đúng?],
  type: "mcq", level: "Thông hiểu",
  options: (
    "Vận tốc trung bình là 2 m/s, tốc độ trung bình là 0 m/s.",
    "Vận tốc trung bình là 0 m/s, tốc độ trung bình là 2 m/s.",
    "Cả vận tốc trung bình và tốc độ trung bình đều là 2 m/s.",
    "Cả vận tốc trung bình và tốc độ trung bình đều là 0 m/s."
  ),
  ans: "B", sol: [Vì quay lại điểm xuất phát nên độ dịch chuyển bằng 0 $=> v_text("tb") = 0$. Tổng quãng đường là $50 + 50 = 100 "m"$. Tốc độ trung bình bằng $100 / 50 = 2 "m/s"$.]
)

#vp-question(
  [(Đồ thị x-t): Trên đồ thị tọa độ - thời gian ($x-t$) của một vật chuyển động thẳng, độ dốc (hệ số góc) của đường thẳng nối hai điểm trên đồ thị biểu diễn đại lượng nào?],
  type: "mcq", level: "Nhận biết",
  options: (
    "Gia tốc trung bình giữa hai thời điểm đó.",
    "Vận tốc tức thời tại điểm chính giữa.",
    "Vận tốc trung bình giữa hai thời điểm đó.",
    "Tốc độ trung bình giữa hai thời điểm đó."
  ),
  ans: "C", sol: [Độ dốc của cát tuyến trên đồ thị $x-t$ biểu diễn vận tốc trung bình: $v_text("tb") = (Delta x)/(Delta t)$.]
)

#vp-question(
  [(Đồ thị v-t): Trên đồ thị vận tốc - thời gian ($v-t$), diện tích hình phẳng giới hạn bởi đồ thị và trục thời gian mang ý nghĩa vật lý là:],
  type: "mcq", level: "Nhận biết",
  options: ("Độ dịch chuyển của vật.", "Gia tốc của vật.", "Tọa độ của vật.", "Động năng của vật."),
  ans: "A", sol: [Diện tích dưới đồ thị $v-t$ (tích phân vận tốc theo thời gian) chính là độ dịch chuyển $Delta x$.]
)

#vp-question(
  [(Chuyển động thẳng đều): Một xe đi nửa quãng đường đầu với tốc độ $v_1 = 40 "km/h"$ và nửa quãng đường sau với tốc độ $v_2 = 60 "km/h"$. Tốc độ trung bình trên cả quãng đường là:],
  type: "mcq", level: "Vận dụng",
  options: ("50 km/h.", "48 km/h.", "52 km/h.", "24 km/h."),
  ans: "B", sol: [Sử dụng công thức trung bình điều hòa cho nửa quãng đường: $v_text("tb") = (2 v_1 v_2)/(v_1 + v_2) = (2 times 40 times 60)/(40 + 60) = 48 "km/h"$.]
)

#vp-question(
  [(Gia tốc): Một vật đang chuyển động dọc theo trục Ox. Nếu vật đang đi chậm lại, kết luận nào sau đây LUÔN ĐÚNG về gia tốc $a$ và vận tốc $v$?],
  type: "mcq", level: "Thông hiểu",
  options: ([Gia tốc $a < 0$.], [Tích $a dot v < 0$.], [Tích $a dot v > 0$.], [Gia tốc $a$ ngược chiều với chiều dương trục Ox.]),
  ans: "B", sol: [Vật chuyển động chậm dần thì vector gia tốc và vector vận tốc luôn ngược chiều nhau, do đó tích vô hướng của chúng âm ($a dot v < 0$).]
)

#vp-question(
  [(Chuyển động thẳng biến đổi đều): Trong chuyển động thẳng nhanh dần đều (không đổi chiều), quãng đường vật đi được trong những khoảng thời gian $Delta t$ bằng nhau liên tiếp sẽ:],
  type: "mcq", level: "Vận dụng",
  options: ("Tăng theo cấp số cộng.", "Tăng theo cấp số nhân.", "Tỉ lệ với bình phương thời gian.", "Không thay đổi."),
  ans: "A", sol: [Quãng đường đi được trong các khoảng thời gian bằng nhau liên tiếp tạo thành một cấp số cộng theo tỉ lệ các số lẻ 1:3:5:7...]
)

#vp-question(
  [(Đồ thị): Đồ thị gia tốc - thời gian ($a-t$) của một xe ô tô đang hãm phanh với lực phanh không đổi là:],
  type: "mcq", level: "Thông hiểu",
  options: (
    "Một đường Parabol bề lõm hướng xuống.",
    "Một đường thẳng cắt trục tung tại điểm có tung độ âm.",
    "Một đường thẳng cắt trục tung tại điểm có tung độ dương.",
    "Một đường thẳng nằm ngang (song song trục hoành) và khác 0."
  ),
  ans: "D", sol: [Lực phanh không đổi nên gia tốc $a$ không đổi (hằng số), đồ thị $a-t$ là đường nằm ngang.]
)

#vp-question(
  [(Tương đối 1D): Hai ô tô A và B chạy cùng chiều trên cao tốc. Vận tốc của A so với đất là $80 "km/h"$. Vận tốc của B so với A là $-20 "km/h"$. Vận tốc của B so với đất là:],
  type: "mcq", level: "Vận dụng",
  options: ("100 km/h.", "-100 km/h.", "60 km/h.", "-60 km/h."),
  ans: "C", sol: [Vận tốc tương đối: $v_text("BĐ") = v_text("BA") + v_text("AĐ") = -20 + 80 = 60 "km/h"$.]
)

#vp-question(
  [(Tương đối 1D - Gia tốc): Ô tô A đang tăng tốc với gia tốc $2 "m/s"^2$ so với mặt đất. Ô tô B chạy song song thẳng đều với vận tốc $50 "km/h"$. Gia tốc của ô tô A so với hệ quy chiếu gắn với ô tô B là:],
  type: "mcq", level: "Vận dụng",
  options: ([$0 "m/s"^2$.], [$2 "m/s"^2$.], [Lớn hơn $2 "m/s"^2$.], [Nhỏ hơn $2 "m/s"^2$.]),
  ans: "B", sol: [Vì xe B chuyển động thẳng đều nên gia tốc của B bằng 0. Vậy $a_text("AB") = a_text("AĐ") - a_text("BĐ") = 2 - 0 = 2 "m/s"^2$.]
)

#vp-question(
  [(Sự rơi tự do): Một vật rơi tự do không vận tốc đầu từ độ cao $h$. Biểu thức nào sau đây thể hiện mối liên hệ đúng giữa vận tốc tức thời $v$ và quãng đường rơi $s$?],
  type: "mcq", level: "Thông hiểu",
  options: (
    [$v$ tỉ lệ thuận với $s$.], 
    [$v$ tỉ lệ thuận với $sqrt(s)$.], 
    [$v$ tỉ lệ thuận với $s^2$.], 
    [$v$ không phụ thuộc vào $s$.]
  ),
  ans: "B", sol: [Từ hệ thức độc lập với thời gian $v^2 = 2 g s => v = sqrt(2 g s)$, ta thấy $v$ tỉ lệ thuận với $sqrt(s)$.]
)

#vp-question(
  [(Bẫy ném đứng): Bạn ném một quả táo thẳng đứng lên trên. Chọn chiều dương hướng lên. Tại vị trí cao nhất của quỹ đạo, đại lượng nào sau đây bằng 0?],
  type: "mcq", level: "Thông hiểu",
  options: ("Chỉ có vận tốc.", "Chỉ có gia tốc.", "Cả vận tốc và gia tốc.", "Không có đại lượng nào."),
  ans: "A", sol: [Tại đỉnh quỹ đạo, vật dừng lại tức thời nên $v=0$, nhưng nó vẫn đang chịu gia tốc trọng trường $a = -g$.]
)

#vp-question(
  [(Sự rơi tự do - Quán tính): Một khinh khí cầu đang bay thẳng đứng LÊN TRÊN với vận tốc $15 "m/s"$. Từ khinh khí cầu, người ta buông nhẹ một bao cát. Trong hệ quy chiếu gắn với MẶT ĐẤT, trạng thái của bao cát ngay lúc vừa buông là:],
  type: "mcq", level: "Vận dụng",
  options: (
    "Rơi tự do xuống dưới với vận tốc đầu bằng 0.",
    "Bị ném thẳng đứng xuống dưới với vận tốc đầu 15 m/s.",
    "Bị ném thẳng đứng lên trên với vận tốc đầu 15 m/s.",
    "Đứng yên lơ lửng."
  ),
  ans: "C", sol: [Bao cát mang theo vận tốc quán tính của khinh khí cầu lúc rời đi, do đó đối với mặt đất nó giống như bị ném lên trên với vận tốc $15 "m/s"$.]
)

#vp-question(
  [(Gia tốc rơi): Hai vật A (khối lượng 10kg) và B (khối lượng 1kg) rơi tự do trong chân không từ cùng một độ cao. Lực cản không khí bị triệt tiêu hoàn toàn. Khẳng định nào đúng?],
  type: "mcq", level: "Nhận biết",
  options: (
    "Vật A chạm đất trước vì chịu lực hút Trái Đất lớn hơn.",
    "Cả hai chạm đất cùng lúc nhưng gia tốc vật A lớn hơn vật B.",
    "Cả hai chạm đất cùng lúc và có cùng gia tốc rơi g.",
    "Vật B chạm đất trước do có quán tính nhỏ hơn."
  ),
  ans: "C", sol: [Tính độc lập của sự rơi tự do đối với khối lượng. Trong chân không mọi vật đều rơi với cùng gia tốc $g$ và chạm đất cùng lúc.]
)

#vp-question(
  [(Phương trình rơi): Một người đứng ở nóc tòa nhà cao $H$, ném một hòn đá thẳng đứng xuống dưới với vận tốc $v_0$. Chọn gốc tọa độ tại mặt đất, chiều dương hướng lên. Phương trình tọa độ của hòn đá là:],
  type: "mcq", level: "Vận dụng",
  options: (
    [$y = H + v_0 t + 1/2 g t^2$], 
    [$y = H - v_0 t - 1/2 g t^2$], 
    [$y = H + v_0 t - 1/2 g t^2$], 
    [$y = v_0 t + 1/2 g t^2$]
  ),
  ans: "B", sol: [Chọn chiều dương hướng lên $=> a = -g$, $v_{0y} = -v_0$, tọa độ ban đầu $y_0 = H$. Thay vào phương trình: $y = H - v_0 t - 1/2 g t^2$.]
)

#vp-question(
  [(Giao điểm quỹ đạo): Hai vật chuyển động thẳng biến đổi đều dọc theo trục Ox. Đồ thị tọa độ $x-t$ của chúng là 2 đường Parabol cắt nhau tại 2 điểm phân biệt. Điều này có nghĩa là:],
  type: "mcq", level: "Thông hiểu",
  options: (
    "Hai vật có cùng gia tốc.",
    "Có hai thời điểm mà hai vật có cùng vận tốc.",
    "Hai vật gặp nhau hai lần trong quá trình chuyển động.",
    "Quỹ đạo không gian của hai vật đan chéo nhau hai lần."
  ),
  ans: "C", sol: [Đồ thị $x-t$ cắt nhau nghĩa là tại cùng một thời điểm $t$, hai vật có chung một tọa độ $x$ $=>$ Chúng gặp nhau trên quỹ đạo.]
)

#vp-question(
  [(Cực trị khoảng cách): Xe A đuổi theo xe B trên cùng một đường thẳng. Khoảng cách giữa 2 xe đạt giá trị NHỎ NHẤT (mà chưa đâm nhau) khi và chỉ khi:],
  type: "mcq", level: "Vận dụng cao",
  options: (
    "Vận tốc của xe A bằng vận tốc của xe B.",
    "Gia tốc của xe A bằng gia tốc của xe B.",
    "Vận tốc của xe A bằng 0.",
    "Xe A phanh với gia tốc cực đại."
  ),
  ans: "A", sol: [Khi tốc độ bằng nhau thì khoảng cách không còn co lại nữa, sau đó nếu xe B nhanh hơn thì khoảng cách bắt đầu giãn ra. Giải bằng đỉnh Parabol của hàm $Delta x$.]
)

#vp-question(
  [(Đồ thị v-t phức hợp): Một vật bắt đầu chuyển động từ trạng thái nghỉ. Đồ thị $v-t$ của nó là một nửa đường tròn nằm hoàn toàn phía trên trục hoành. Khẳng định nào đúng về gia tốc của vật?],
  type: "mcq", level: "Vận dụng cao",
  options: (
    "Gia tốc của vật không đổi.",
    "Gia tốc của vật luôn tăng.",
    "Gia tốc của vật ban đầu dương, sau đó giảm về 0 rồi chuyển sang âm.",
    "Vật chuyển động thẳng đều vì là đường tròn."
  ),
  ans: "C", sol: [Gia tốc là độ dốc (đạo hàm) của đồ thị $v-t$. Độ dốc của nửa đường tròn giảm dần từ dương vô cùng, bằng 0 ở đỉnh (vận tốc cực đại), rồi chuyển sang âm.]
)

#current-part.update("Phần II - Đúng/Sai")
#pagebreak()
// ==========================================
// PHẦN II. TRẮC NGHIỆM ĐÚNG/SAI
// ==========================================
#vp-section(num: "II", title: "TRẮC NGHIỆM ĐÚNG/SAI (4 CÂU)")
_Trong mỗi câu, xét tính ĐÚNG / SAI của các phát biểu a, b, c, d._
#v(5pt)

#vp-question(
  [Về ngôn ngữ Vector và khái niệm Động học. Đánh giá tính Đúng/Sai của các phát biểu sau:],
  type: "tf",
  statements: (
    [Độ dịch chuyển là một đại lượng vô hướng vì nó biểu diễn khoảng cách ngắn nhất giữa hai điểm.],
    [Nếu một chất điểm di chuyển hết một vòng tròn khép kín, độ dịch chuyển của nó bằng 0 nhưng quãng đường lớn hơn 0.],
    [Trong chuyển động thẳng, nếu tốc độ trung bình bằng độ lớn của vận tốc trung bình thì vật không bao giờ đổi chiều chuyển động.],
    [Vector $arrow(a) = (-3 "m/s") hat(i) + (4 "m/s") hat(j)$ nằm ở góc phần tư thứ II trên mặt phẳng tọa độ Oxy.]
  ),
  ans-tf: ("S", "Đ", "Đ", "Đ"),
  sol: [
    a) Sai. Độ dịch chuyển là đại lượng vector.
    b) Đúng.
    c) Đúng.
    d) Đúng.
  ]
)

#vp-question(
  [Phân tích Đồ thị Động học. Đánh giá các phát biểu sau:],
  type: "tf",
  statements: (
    [Trên đồ thị tọa độ - thời gian ($x-t$), nếu đường biểu diễn là một Parabol có bề lõm hướng lên trên thì vật luôn chuyển động nhanh dần đều.],
    [Trong chuyển động có gia tốc không đổi, đồ thị vận tốc - thời gian ($v-t$) luôn là một đường thẳng.],
    [Nếu đồ thị $v-t$ cắt trục hoành (trục thời gian), tại thời điểm cắt đó, vật đảo chiều chuyển động.],
    [Có thể dùng diện tích hình phẳng dưới đồ thị gia tốc - thời gian ($a-t$) để tính tổng quãng đường vật đã đi.]
  ),
  ans-tf: ("S", "Đ", "Đ", "Đ"),
  sol: [
    a) Sai. Độ dốc của $x-t$ là vận tốc. Bề lõm lên nghĩa là $a > 0$, nếu $v < 0$ thì vật đang chuyển động chậm dần đều.
    b) Đúng.
    c) Đúng. Đồ thị $x-t$ là đường thẳng bậc 1.
    d) Đúng. Diện tích dưới $a-t$ thể hiện sự thay đổi vận tốc $Delta v$, v đổi dấu từ + sang - hoặc ngược lại tại giao điểm.
  ]
)

#vp-question(
  [Chuyển động thẳng biến đổi đều và Phương trình. Đánh giá các phát biểu:],
  type: "tf",
  statements: (
    [Một vật có gia tốc âm ($a < 0$) thì vật đó chắc chắn đang chuyển động chậm dần.],
    [Hệ thức độc lập thời gian $v^2 - v_0^2 = 2a Delta x$ được rút ra bằng cách khử ẩn thời gian $t$ từ hệ phương trình của vận tốc và tọa độ.],
    [Nếu phương trình chuyển động của vật có dạng $x = 5t^2 - 10t + 2$ (m, s), thì tại $t=0$, vật đang chuyển động ngược chiều dương.],
    [Tại thời điểm vật dừng lại để đổi chiều chuyển động, gia tốc của nó bắt buộc phải bằng 0.]
  ),
  ans-tf: ("S", "Đ", "Đ", "S"),
  sol: [
    a) Sai. Nếu $v<0$ và $a<0$ thì vật chạy nhanh dần.
    b) Đúng.
    c) Đúng. Ta có $v = 10t - 10 => v_0 = -10 < 0$.
    d) Sai. Vật chỉ dừng lại tức thời (v=0), gia tốc vẫn khác 0.
  ]
)

#vp-question(
  [Sự rơi tự do và Ném thẳng đứng. (Bỏ qua mọi lực cản của không khí). Đánh giá các phát biểu sau:],
  type: "tf",
  statements: (
    [Gia tốc của mọi vật rơi tự do ở cùng một vị trí địa lý trên Trái Đất là như nhau, không phụ thuộc vào khối lượng của vật.],
    [Một vật bị ném thẳng đứng lên cao, khi đạt đến đỉnh quỹ đạo (điểm cao nhất), vật ở trạng thái cân bằng vì vận tốc bằng 0.],
    [Một hành khách thả rơi một đồng xu bên trong thang máy đang đi lên chậm dần đều. Đối với hành khách, đồng xu rơi với gia tốc nhỏ hơn $g$.],
    [Sự rơi tự do bản chất là một chuyển động thẳng nhanh dần đều với vận tốc ban đầu $v_0 = 0$.]
  ),
  ans-tf: ("S", "Đ", "Đ", "Đ"),
  sol: [
    a) Sai. (Theo Bareme đáp án)
    b) Đúng.
    c) Đúng. Thang máy đi lên chậm dần đều $=> a$ của thang hướng xuống $=>$ gia tốc biểu kiến $g' = g - a_text("thang") < g$.
    d) Đúng. Quãng đường tạo thành cấp số 1, 3, 5, 7...
  ]
)

#current-part.update("Phần III - Trả lời ngắn")
#pagebreak()
// ==========================================
// PHẦN III. TRẢ LỜI NGẮN (ĐIỀN ĐÁP SỐ)
// ==========================================
#vp-section(num: "III", title: "TRẢ LỜI NGẮN (ĐIỀN ĐÁP SỐ) (6 CÂU)")
_Học sinh chỉ điền đáp án bằng số (kèm đơn vị nếu cần) vào ô trống._
#v(5pt)

#vp-question(
  [(Vector): Hai vector vận tốc $arrow(v)_1$ và $arrow(v)_2$ có cùng độ lớn là $10 "m/s"$. Góc giữa chúng là $120^degree$. Tính độ lớn của vector vận tốc tổng $arrow(v) = arrow(v)_1 + arrow(v)_2$.],
  type: "short", level: "Vận dụng",
  ans: "10", lines: 3,
  sol: [Áp dụng quy tắc hình bình hành. Vì 2 vector có cùng độ lớn và hợp nhau góc $120^degree$, hình bình hành tạo thành là hai tam giác đều ghép lại (hình thoi có góc $120^degree$ thì đường chéo bằng cạnh). Độ lớn $v = 10 "m/s"$.]
)

#vp-question(
  [(Kẹt xe trên cao tốc - Đồ thị): Xe A đang chạy thẳng đều với tốc độ $25 "m/s"$ thì tài xế phát hiện chướng ngại vật và hãm phanh với gia tốc $-5 "m/s"^2$ cho đến khi dừng hẳn. Vẽ đồ thị $v-t$ trong đầu, hãy tính tổng quãng đường xe A đi được từ lúc bắt đầu hãm phanh đến lúc dừng.],
  type: "short", level: "Vận dụng",
  ans: "62,5", lines: 3,
  sol: [Thời gian hãm phanh: $t_text("stop") = (0 - 25)/(-5) = 5 "s"$. Quãng đường là diện tích tam giác trên đồ thị $v-t$: $S = 1/2 v dot t_text("stop") = 1/2 dot 25 dot 5 = 62,5 "m"$.]
)

#vp-question(
  [(Giới hạn va chạm): Tàu hỏa M đang chạy với tốc độ $20 "m/s"$ thì phát hiện tàu hỏa N đang chạy phía trước cùng chiều trên cùng đường ray với tốc độ $10 "m/s"$. Khoảng cách giữa hai tàu lúc đó là $D = 100 "m"$. Tàu M lập tức phanh với gia tốc không đổi $a$. Tìm độ lớn gia tốc $|a|$ nhỏ nhất của tàu M để 2 tàu không tông vào nhau (Tàu N vẫn chạy đều).],
  type: "short", level: "Vận dụng cao",
  ans: "0,5", lines: 4,
  sol: [Áp dụng hệ quy chiếu gắn với xe N: Vận tốc tương đối ban đầu $V_0 = 20 - 10 = 10 "m/s"$. Tàu M cần phanh hết quãng đường tương đối $D = 100 "m"$ với vận tốc cuối là $0$. Ta có: $10^2 = 2 dot a dot 100 => a = 0,5 "m/s"^2$.]
)

#vp-question(
  [(Hệ quy chiếu khinh khí cầu): Một khinh khí cầu đang đi XUỐNG với tốc độ đều $5 "m/s"$. Tại thời điểm khinh khí cầu cách mặt đất 30m, một cậu bé đứng trong rổ ném một quả bóng lên trên với vận tốc $15 "m/s"$ (vận tốc đo so với rổ khinh khí cầu). Lấy $g = 10 "m/s"^2$. Tính độ cao CỰC ĐẠI của quả bóng so với mặt đất.],
  type: "short", level: "Vận dụng cao",
  ans: "35", lines: 4,
  sol: [Vận tốc bóng so với đất: $v_0 = +15 + (-5) = +10 "m/s"$. Độ cao cực đại: $H_{max} = h_0 + (v_0^2)/(2g) = 30 + (10^2)/(2 dot 10) = 35 "m"$.]
)

#vp-question(
  [(Bài toán Metro đa chặng): Tàu Metro đi từ ga A đến ga B cách nhau 400m. Nó khởi hành từ A, tăng tốc với gia tốc $2 "m/s"^2$, sau đó không chạy đều mà lập tức hãm phanh với gia tốc $-2 "m/s"^2$ để dừng lại vừa vặn tại B. Tính tốc độ lớn nhất mà tàu Metro đạt được trong chuyến đi.],
  type: "short", level: "Vận dụng cao",
  ans: "20", lines: 4,
  sol: [Diện tích đồ thị $v-t$ là một tam giác cân. $S = 1/2 V_{max} dot T_text("total") = 1/2 V_{max} (V_{max}/2 + V_{max}/2) = (V_{max}^2)/2 = 400 => V_{max} = 20 "m/s"$.]
)

#vp-question(
  [(Định luật tỷ lệ rơi): Các giọt nước rơi tự do liên tiếp từ một mái nhà. Biết rằng khi giọt thứ nhất vừa chạm đất thì giọt thứ tư bắt đầu tách khỏi mái nhà. Nếu các giọt rơi cách nhau những khoảng thời gian $Delta t$ đều đặn, tỉ số khoảng cách từ mái nhà đến giọt thứ hai chia cho khoảng cách từ mái nhà đến giọt thứ ba (lúc giọt 1 chạm đất) bằng bao nhiêu?],
  type: "short", level: "Vận dụng cao",
  ans: "4", lines: 4,
  sol: [Thời gian giọt 1 rơi là $3 Delta t$. Giọt 2 đã rơi được $2 Delta t$ nên cách mái nhà $1/2 g(2 Delta t)^2$. Giọt 3 đã rơi được $Delta t$ nên cách mái nhà $1/2 g(Delta t)^2$. Tỉ số giọt 2 / giọt 3 là $2^2 / 1^2 = 4$.]
)

// ==========================================
// KẾT THÚC & IN ĐÁP ÁN
// ==========================================
#pagebreak()
#vp-print-keys(title: "BẢNG TỔNG HỢP ĐÁP ÁN")
#v(20pt)
#vp-print-solutions(title: "HƯỚNG DẪN GIẢI CHI TIẾT")
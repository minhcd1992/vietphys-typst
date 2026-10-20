#import "../cau-hinh.typ": *
#import "images/bai-17-hinh.typ": bai-17-hinh

#sbt-bai(num: "17", title: "Năng lượng và Công cơ học", label: <bai-17>)

= Phần I. Trắc nghiệm khách quan
#sbt-instructions(reset: true)[Chọn một phương án đúng trong mỗi câu.]

// MCQ-01
#vp-question(
  [Một kiện hàng khối lượng $m = 100 thin "kg"$ được kéo trượt thẳng đều $s = 20 thin "m"$ trên sàn ngang. Lực kéo không đổi $F = 300 thin "N"$, chếch lên và hợp với chiều chuyển động góc $alpha = 60 degree$. Công của lực kéo bằng bao nhiêu?],
  type: "mcq",
  options: ([$6000 thin "J"$.], [$3000 thin "J"$.], [$5196 thin "J"$.], [$0 thin "J"$.]),
  ans: "B",
  sol: [$A = F s cos(alpha) = 300 times 20 times cos(60 degree) = 3000 thin "J"$.
    Vật đi đều nên tổng công bằng không, nhưng công của riêng lực kéo vẫn dương.],
)

// MCQ-02
#vp-question(
  [Xét trong hệ quy chiếu mặt đất hoặc hệ có tâm tại tâm Trái Đất đối với vệ tinh, lực nào sau đây không thực hiện công trong chuyển động được mô tả?],
  type: "mcq",
  options: (
    [Ma sát trượt lên vật đang trượt trên đường đứng yên.],
    [Trọng lực lên vệ tinh chuyển động tròn đều quanh Trái Đất.],
    [Lực căng dây cáp kéo ô tô đi thẳng, cùng chiều lực căng.],
    [Lực cản không khí lên người nhảy dù rơi thẳng đều trong không khí đứng yên.],
  ),
  ans: "B",
  sol: [Trọng lực hướng vào tâm quỹ đạo, luôn vuông góc với vận tốc vệ tinh nên công bằng không. Ma sát và lực cản ở A, D sinh công âm; lực căng ở C sinh công dương.],
)

// MCQ-03
#vp-question(
  [Ô tô được mô hình hóa bằng chất điểm khối lượng $2800 thin "kg"$, đang chạy $90 thin "km/h"$ trên đường ngang thì phanh, trượt lê $40 thin "m"$ rồi dừng. Chỉ ma sát trượt sinh công cản; bỏ qua lực cản không khí. Công của ma sát trong quá trình này bằng],
  type: "mcq",
  options: ([$-875000 thin "J"$.], [$875000 thin "J"$.], [$-1750000 thin "J"$.], [$-700000 thin "J"$.]),
  ans: "A",
  sol: [$v_0 = 25 thin "m/s"$. Trọng lực và phản lực không sinh công, nên
    $ A_("ms") = Delta E_("đ") = 0 - frac(1, 2) m v_0^2 = -875000 thin "J". $],
)

// MCQ-04
#vp-question(
  [Thiết bị tiêu thụ công suất điện $1 thin "kW"$ liên tục trong $1 thin "h"$ dùng hết $1 thin "kWh"$. Năng lượng này bằng bao nhiêu joule?],
  type: "mcq",
  options: ([$1000 thin "J"$.], [$3600 thin "J"$.], [$"3,6" times 10^5 thin "J"$.], [$"3,6" times 10^6 thin "J"$.]),
  ans: "D",
  sol: [$1 thin "kWh" = 1000 thin "W" times 3600 thin "s" = "3,6" times 10^6 thin "J"$.],
)

// MCQ-05
#vp-question(
  [Một công nhân giữ thùng sơn trọng lượng $200 thin "N"$ đứng yên trong $5$ phút. Phát biểu nào đúng?],
  type: "mcq",
  options: (
    [Lực tay thực hiện công $1000 thin "J"$ lên thùng.],
    [Lực tay thực hiện công $60000 thin "J"$ lên thùng.],
    [Công của trọng lực và của lực tay tác dụng lên thùng đều bằng không.],
    [Người không tiêu hao năng lượng sinh học vì thùng không dịch chuyển.],
  ),
  ans: "C",
  sol: [Thùng đứng yên nên điểm đặt lực không dịch chuyển; các lực không sinh công cơ học lên thùng. Cơ thể vẫn tiêu hao năng lượng để duy trì hoạt động cơ.],
)

// MCQ-06
#vp-question(
  [Khối gỗ $m = "5,0" thin "kg"$ trượt từ đỉnh xuống chân dốc dài $L = 10 thin "m"$, nghiêng góc $beta = 30 degree$. Lấy $g = "9,8" thin "m/s"^2$. Công của trọng lực bằng],
  type: "mcq",
  options: ([$245 thin "J"$.], [$-245 thin "J"$.], [$"424,35" thin "J"$.], [$490 thin "J"$.]),
  ans: "A",
  sol: [$h = L sin(beta) = 5 thin "m"$, nên $A_P = m g h = 245 thin "J"$.],
)

// MCQ-07
#vp-question(
  [Trong các lực sau, lực nào có công chỉ phụ thuộc vị trí đầu và cuối, không phụ thuộc đường đi?],
  type: "mcq",
  options: ([Ma sát trượt.], [Lực cản không khí.], [Trọng lực trong trường trọng lực không đổi theo thời gian.], [Ma sát nghỉ nói chung.]),
  ans: "C",
  sol: [Trọng lực là lực bảo toàn. Gần mặt đất, $A_P = m g (h_1-h_2)$. Không thể xếp ma sát nghỉ nói chung vào loại lực bảo toàn.],
)

// MCQ-08
#vp-question(
  [Vật chuyển động dọc trục $O x$. Thành phần lực $F_x$ biến thiên theo $x$ như hình, là đoạn thẳng nối $(0 thin "m"; 10 thin "N")$ và $(4 thin "m"; 30 thin "N")$. Công của lực khi vật đi từ $x=0$ đến $x=4 thin "m"$ bằng bao nhiêu?
    #align(center, bai-17-hinh("fx-mcq"))],
  type: "mcq",
  options: ([$40 thin "J"$.], [$80 thin "J"$.], [$120 thin "J"$.], [$160 thin "J"$.]),
  ans: "B",
  sol: [Công bằng diện tích hình thang dưới đồ thị:
    $ A = frac(10+30, 2) times 4 = 80 thin "J". $],
)

// MCQ-09
#vp-question(
  [Người đẩy xe nôi bằng tay cầm với lực không đổi $F = 50 thin "N"$, chếch xuống $30 degree$ so với phương ngang và hướng về phía trước. Xe đi thẳng đều $s = 10 thin "m"$ trên đường ngang. Công của lực đẩy xấp xỉ bằng],
  type: "mcq",
  options: ([$433 thin "J"$.], [$-433 thin "J"$.], [$250 thin "J"$.], [$0 thin "J"$.]),
  ans: "A",
  sol: [$A = F s cos(30 degree) = 250 sqrt(3) thin "J" approx 433 thin "J"$.
    Thành phần ngang cùng chiều dịch chuyển nên công dương dù lực chếch xuống.],
)

// MCQ-10
#vp-question(
  [Một vật nhỏ $m$ trượt tròn đều trên mặt bàn ngang nhẵn, được giữ bằng dây nhẹ dài $R$ nối với tâm quỹ đạo cố định. Tốc độ góc là $omega$. Công của lực căng dây sau nửa vòng bằng],
  type: "mcq",
  options: ([$m omega^2 R^2 pi$.], [$2 m omega^2 R^2$.], [$0 thin "J"$.], [$m g pi R$.]),
  ans: "C",
  sol: [Dây luôn hướng theo bán kính, vuông góc với vận tốc tức thời. Công của lực căng bằng không trên từng đoạn rất nhỏ và trên cả nửa vòng. Không dùng một vectơ lực cố định nhân với dây cung.],
)

// MCQ-11
#vp-question(
  [Người khối lượng $m$ leo từ chân núi lên độ cao $H = 1000 thin "m"$, rồi theo đường khác trở về đúng điểm ban đầu. Tổng công của trọng lực trong chuyến đi bằng],
  type: "mcq",
  options: ([$2 m g H$.], [$-2 m g H$.], [$0 thin "J"$.], [$m g H$.]),
  ans: "C",
  sol: [Công khi lên là $-m g H$, khi xuống là $m g H$. Tổng bằng không vì độ cao đầu và cuối bằng nhau.],
)

// MCQ-12
#vp-question(
  [Một khối nhỏ được kéo trượt trên mặt bàn nhám đứng yên theo một đường kín có chiều dài khác không. Ma sát trượt luôn có độ lớn khác không. Xét trong hệ quy chiếu mặt bàn, tổng công của ma sát trong cả vòng là],
  type: "mcq",
  options: ([Luôn bằng không.], [Luôn âm.], [Luôn dương.], [Bằng không nếu đường đi đối xứng.]),
  ans: "B",
  sol: [Ma sát trượt ngược chiều chuyển động của khối so với mặt bàn đứng yên. Công trên mỗi đoạn là âm, nên tổng công âm dù vật trở về điểm đầu.],
)

// MCQ-13
#vp-question(
  [Dây cáp nâng thẳng đứng một thùng hàng $M = 10 thin "tấn"$ lên cao $h = 12 thin "m"$, với gia tốc không đổi hướng lên $a = "1,0" thin "m/s"^2$. Bỏ qua lực cản; lấy $g = "9,8" thin "m/s"^2$. Công của lực nâng bằng],
  type: "mcq",
  options: ([$1176 thin "kJ"$.], [$1296 thin "kJ"$.], [$1080 thin "kJ"$.], [$120 thin "kJ"$.]),
  ans: "B",
  sol: [$F = M(g+a) = 108000 thin "N"$, nên $A = F h = 1296000 thin "J" = 1296 thin "kJ"$.],
)

// MCQ-14
#vp-question(
  [Hai tàu kéo xà lan bằng hai dây đối xứng qua phương chuyển động. Mỗi lực kéo có độ lớn không đổi $5000 thin "N"$ và hợp với chiều chuyển động góc $30 degree$. Công của hai lực kéo khi xà lan đi thẳng $200 thin "m"$ xấp xỉ bằng
    #align(center, bai-17-hinh("keo-xa-lan"))],
  type: "mcq",
  options: ([$1000 thin "kJ"$.], [$1732 thin "kJ"$.], [$2000 thin "kJ"$.], [$866 thin "kJ"$.]),
  ans: "B",
  sol: [$A = 2 F s cos(30 degree) = 10^6 sqrt(3) thin "J" approx 1732 thin "kJ"$.
    Đây là công của hai lực kéo, không phải tổng công của cả lực cản.],
)

// MCQ-15
#vp-question(
  [Mô hình chất điểm của ô tô $m = 2600 thin "kg"$ nhanh dần đều từ nghỉ đến $72 thin "km/h"$ trên đoạn đường ngang dài $100 thin "m"$. Tổng công các lực trong mô hình bằng],
  type: "mcq",
  options: ([$520 thin "kJ"$.], [$1040 thin "kJ"$.], [$260 thin "kJ"$.], [$"187,2" thin "kJ"$.]),
  ans: "A",
  sol: [$v = 20 thin "m/s"$, nên $A_("hl") = frac(1, 2) m v^2 = 520000 thin "J" = 520 thin "kJ"$.],
)

// MCQ-16
#vp-question(
  [Một người đứng yên tương đối với băng tải ngang đang chuyển động nhanh dần theo một chiều. Người không trượt, không bám tay vịn. Xét trong hệ quy chiếu mặt đất, ma sát nghỉ của băng tải lên người],
  type: "mcq",
  options: (
    [Sinh công dương, làm tăng động năng của người.],
    [Không sinh công vì là ma sát nghỉ.],
    [Sinh công âm, chống lại chiều chuyển động của băng tải.],
    [Sinh công bằng công của trọng lực.],
  ),
  ans: "A",
  sol: [Ma sát nghỉ hướng theo gia tốc và vận tốc của người. Điểm tiếp xúc trên giày chuyển động cùng băng tải so với mặt đất, nên ma sát sinh công dương. “Nghỉ” chỉ nói không trượt tương đối giữa hai bề mặt.],
)

// MCQ-17
#vp-question(
  [Tàu chạy thẳng đều với tốc độ $V = 80 thin "km/h"$. Hành khách tác dụng thành phần lực tay nằm ngang không đổi $F>0$ về phía đầu tàu lên sách khối lượng $"0,5" thin "kg"$. Trong khoảng thời gian $Delta t>0$, sách dịch chuyển $1 thin "m"$ về phía đầu tàu so với toa, ở độ cao không đổi. Gọi $A_1$, $A_2$ là công của thành phần lực ngang này trong hệ toa tàu và hệ mặt đất. Kết luận nào đúng?],
  type: "mcq",
  options: ([$A_1=A_2$.], [$A_2>A_1$.], [$A_1>A_2$.], [$A_1=A_2=0$.]),
  ans: "B",
  sol: [Theo phép cộng độ dịch chuyển, $Delta x_2 = Delta x_1 + V Delta t$. Vì lực ngang không đổi:
    $ A_2-A_1 = F V Delta t > 0. $
    Kết luận dựa vào giả thiết lực cùng chiều không đổi, không chỉ dựa vào việc hai độ dịch chuyển khác nhau.],
)

// MCQ-18
#vp-question(
  [Một đầu lò xo nhẹ cố định, độ cứng $k = 100 thin "N/m"$. Tay người nén chậm đầu còn lại từ trạng thái tự nhiên đến độ nén $x = "0,10" thin "m"$. Công của lực đàn hồi tác dụng lên tay bằng],
  type: "mcq",
  options: ([$"0,5" thin "J"$.], [$-"0,5" thin "J"$.], [$"1,0" thin "J"$.], [$-"1,0" thin "J"$.]),
  ans: "B",
  sol: [Lực đàn hồi ngược chiều dịch chuyển của tay. Độ lớn lực tăng tuyến tính từ 0 đến $k x$:
    $ A_("đh") = -frac(1, 2) k x^2 = -"0,5" thin "J". $],
)

// MCQ-19
#vp-question(
  [Thùng hàng trượt xuống một dốc đứng yên, có ma sát. Trong ba lực trọng lực $bold(P)$, phản lực $bold(N)$ và ma sát trượt $bold(f)$, dấu công của từng lực là],
  type: "mcq",
  options: (
    [$A_P>0$, $A_f<0$, $A_N=0$.],
    [$A_P<0$, $A_f>0$, $A_N=0$.],
    [Cả ba công đều dương.],
    [$A_P=A_N=0$, $A_f<0$.],
  ),
  ans: "A",
  sol: [Vật hạ độ cao nên trọng lực sinh công dương; ma sát trượt ngược chiều chuyển động sinh công âm; phản lực vuông góc chuyển động không sinh công.],
)

// MCQ-20
#vp-question(
  [Một viên nhỏ được coi là chất điểm khối lượng $50 thin "g"$, chuyển động ngang với tốc độ $100 thin "m/s"$, xuyên vào bao cát cố định $10 thin "cm"$ rồi dừng. Chỉ lực cản cát sinh công trong quá trình xuyên. Độ lớn lực cản trung bình theo quãng đường bằng],
  type: "mcq",
  options: ([$2500 thin "N"$.], [$5000 thin "N"$.], [$25000 thin "N"$.], [$1250 thin "N"$.]),
  ans: "A",
  sol: [$A_("cản") = -frac(1, 2) times "0,05" times 100^2 = -250 thin "J"$.
    Do đó $overline(F)_("cản") = frac(250, "0,10") = 2500 thin "N"$.],
)

= Phần II. Trắc nghiệm Đúng/Sai
#sbt-instructions(reset: true)[Xác định mỗi phát biểu là đúng hay sai.]

// TF-01
#vp-question(
  [Xét mô hình chất điểm của xe $m = 2600 thin "kg"$ chuyển động trên đường ngang. Lực kéo hiệu dụng và lực cản được dùng để mô tả chuyển động tịnh tiến trong hệ quy chiếu mặt đất.],
  type: "tf",
  statements: (
    [Khi xe tăng tốc từ nghỉ đến $72 thin "km/h"$, nếu bỏ qua lực cản thì công của lực kéo bằng độ tăng động năng.],
    [Khi xe đi thẳng đều $90 thin "km/h"$, tổng công các lực bằng không.],
    [Trọng lực luôn sinh công dương vì xe đi được quãng đường dài.],
    [Khi xe trượt lê đến dừng, nếu chỉ có ma sát trượt sinh công cản thì công ma sát âm; động năng giảm chuyển thành nội năng của hệ xe và đường trong mô hình bỏ qua âm thanh, biến dạng vĩnh viễn.],
  ),
  ans-tf: ("Đ", "Đ", "S", "Đ"),
  sol: [a) $A_k = Delta E_("đ") = 520000 thin "J"$ khi các lực khác không sinh công.
    #parbreak() b) Vận tốc không đổi nên $Delta E_("đ")=0$.
    #parbreak() c) Trọng lực vuông góc chuyển động ngang nên $A_P=0$.
    #parbreak() d) $A_("ms")=-E_("đ,đầu")<0$. Năng lượng vẫn được bảo toàn khi kể nội năng của xe và đường.],
)

// TF-02
#vp-question(
  [Xét trọng lực không đổi theo thời gian, lò xo lý tưởng có điểm cố định và vật trượt trên mặt nhám đứng yên.],
  type: "tf",
  statements: (
    [Trọng lực và lực đàn hồi là lực bảo toàn; công của chúng trên đường kín bằng không.],
    [Công ma sát trượt phụ thuộc đường đi, nên ma sát trượt không phải lực bảo toàn.],
    [Khi vật chỉ chịu các lực bảo toàn trong các trường lực không đổi theo thời gian, tổng động năng và thế năng tương ứng được bảo toàn.],
    [Công ma sát trượt trên đường kín luôn bằng không vì điểm đầu và cuối trùng nhau.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [a) Công của lực bảo toàn bằng độ giảm thế năng; trên đường kín độ giảm này bằng không.
    #parbreak() b) Trên mặt đứng yên, $A_("ms")=-∫ f dif s$, phụ thuộc quãng đường trượt.
    #parbreak() c) $Delta E_("đ")=-Delta E_("t")$, nên cơ năng không đổi.
    #parbreak() d) Công ma sát âm khi có trượt trên quãng đường khác không và lực ma sát khác không.],
)

// TF-03
#vp-question(
  [Một con trượt $"0,5" thin "kg"$ chuyển động dọc $O x$. Xét đồ thị thành phần lực $F_(x) (x)$, với $x_2>x_1$.],
  type: "tf",
  statements: (
    [Công từ $x_1$ đến $x_2$ bằng diện tích đại số dưới đồ thị $F_(x) (x)$: phần dưới trục hoành mang dấu âm.],
    [Nếu $F_x$ không đổi thì $A=F_x times (x_2-x_1)$.],
    [Lực đàn hồi $F_x=-k x$ với $k>0$ sinh công $A=frac(1, 2)k x^2>0$ khi vật đi từ vị trí lò xo tự nhiên $x=0$ đến $x>0$.],
    [Đơn vị của diện tích trên đồ thị lực–tọa độ là N/m.],
  ),
  ans-tf: ("Đ", "Đ", "S", "S"),
  sol: [a) $A=∫_(x_1)^(x_2) F_(x) (x) dif x$ là diện tích đại số.
    #parbreak() b) Với lực không đổi, tích phân bằng $F_x times (x_2-x_1)$.
    #parbreak() c) Lực đàn hồi chống lại sự tăng biến dạng: $A_("đh")=-frac(1, 2)k x^2$. Lực kéo ngoài $F_x=k x$ mới có công dương tương ứng.
    #parbreak() d) Đơn vị là $"N" dot "m" = "J"$.],
)

// TF-04
#vp-question(
  [Xét các phát biểu về công trong hệ quy chiếu mặt đất; với vệ tinh, dùng hệ có tâm ở tâm Trái Đất.],
  type: "tf",
  statements: (
    [Trọng lực sinh công dương sau mỗi vòng của vệ tinh chuyển động tròn đều quanh Trái Đất.],
    [Một lực không đổi có công bằng không nếu độ dịch chuyển từ đầu đến cuối bằng không.],
    [Với lực không đổi và độ dịch chuyển khác không, góc giữa chúng thỏa $90 degree<alpha<=180 degree$ thì công âm.],
    [Lực đỡ thẳng đứng của vai lên đòn gánh sinh công dương khi đòn gánh đi ngang đều, không thay đổi độ cao.],
  ),
  ans-tf: ("S", "Đ", "Đ", "S"),
  sol: [a) Trọng lực vuông góc vận tốc vệ tinh nên công bằng không.
    #parbreak() b) Với lực không đổi, $A=bold(F) dot Delta bold(r)=0$. Điều này không đúng cho mọi lực biến thiên trên một đường kín.
    #parbreak() c) $cos(alpha)<0$ nên $A=F d cos(alpha)<0$.
    #parbreak() d) Lực đỡ vuông góc dịch chuyển ngang, nên công bằng không.],
)

// TF-05
#vp-question(
  [Xét định lý động năng cho chất điểm có khối lượng không đổi. Ở a), b), d), dùng hệ quy chiếu quán tính và gọi $v_1$, $v_2$ là tốc độ.],
  type: "tf",
  statements: (
    [Công hợp lực bằng $Delta E_("đ")=frac(1, 2)m v_2^2-frac(1, 2)m v_1^2$.],
    [Nếu công hợp lực dương thì $v_2>v_1$.],
    [Trong hệ quy chiếu phi quán tính, có thể áp dụng định lý động năng khi kể cả công của các lực quán tính thích hợp.],
    [Định lý động năng không dùng được khi lực biến thiên theo vị trí hoặc thời gian.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [a) Đây là định lý động năng của chất điểm.
    #parbreak() b) Khối lượng không đổi và động năng tăng nên tốc độ cuối lớn hơn đầu.
    #parbreak() c) Viết định luật II Newton trong hệ phi quán tính với các lực quán tính, rồi tính công của toàn bộ các lực trong hệ đó.
    #parbreak() d) Lực biến thiên vẫn tuân theo định lý; công được tính bằng tích phân dọc đường đi, không nhất thiết bằng một giá trị lực nhân quãng đường.],
)

= Phần III. Trắc nghiệm trả lời ngắn
#sbt-instructions(reset: true)[Ghi kết quả theo đơn vị và yêu cầu làm tròn trong đề.]

// SHORT-01
#vp-question(
  [Xe cứu hộ kéo ô tô đi thẳng $50 thin "m"$ trên đường ngang bằng dây cáp nghiêng lên $30 degree$. Lực căng không đổi $2000 thin "N"$. Tính công lực căng theo kJ, làm tròn một chữ số thập phân.],
  type: "short", ans: "86,6", short-boxes: 4,
  sol: [$A=2000 times 50 times cos(30 degree) approx "86602,54" thin "J" approx "86,6" thin "kJ"$.],
)

// SHORT-02
#vp-question(
  [Thùng hàng $20 thin "kg"$ trượt xuống dốc dài $"5,0" thin "m"$, nghiêng góc $30 degree$. Lấy $g="9,8" thin "m/s"^2$. Công trọng lực bằng bao nhiêu J?],
  type: "short", ans: "490", short-boxes: 3,
  sol: [$A_P=m g L sin(30 degree)=20 times "9,8" times 5 times "0,5"=490 thin "J"$.],
)

// SHORT-03
#vp-question(
  [Mô hình chất điểm của xe máy và người có khối lượng $180 thin "kg"$, đang chạy $54 thin "km/h"$ thì trượt lê đến dừng trên đường ngang. Hệ số ma sát trượt $mu_t="0,50"$, $g="9,8" thin "m/s"^2$; bỏ qua các lực cản khác. Độ lớn công ma sát bằng bao nhiêu J?],
  type: "short", ans: "20250", short-boxes: 5,
  sol: [$v_0=15 thin "m/s"$, $A_("ms")=-frac(1, 2) times 180 times 15^2=-20250 thin "J"$. Đề hỏi độ lớn nên điền $20250$.],
)

// SHORT-04
#vp-question(
  [Máy bơm tiêu thụ công suất điện không đổi $"1,5" thin "kW"$, hoạt động $2$ giờ $30$ phút mỗi ngày. Điện năng dùng trong $30$ ngày bằng bao nhiêu kWh? Ghi một chữ số thập phân.],
  type: "short", ans: "112,5", short-boxes: 5,
  sol: [$W="1,5" times "2,5" times 30="112,5" thin "kWh"$. Đây là điện năng tiêu thụ, không phải công có ích của máy bơm.],
)

// SHORT-05
#vp-question(
  [Lực có thành phần $F_(x) (x)=10+2x$, với $F_x$ tính bằng N, $x$ bằng m. Công khi vật đi từ $x=0$ đến $x="5,0" thin "m"$ bằng bao nhiêu J?],
  type: "short", ans: "75", short-boxes: 2,
  sol: [Đồ thị nối $(0;10)$ và $(5;20)$. Công bằng diện tích hình thang:
    $ A=frac(10+20, 2) times 5=75 thin "J". $
    #align(center, bai-17-hinh("fx-short"))],
)

= Phần IV. Tự luận
#sbt-instructions(reset: true)[Trình bày lập luận, phép tính và kết luận.]

// ESSAY-01
#vp-question(
  [Trong mô hình chất điểm, ô tô $m=2600 thin "kg"$ nhanh dần đều từ nghỉ đến $108 thin "km/h"$ trên đường ngang trong $Delta t="6,0" thin "s"$. Mô hình gồm lực kéo hiệu dụng $F_k$ hướng tới trước và lực cản không đổi $F_c=mu m g$, với $mu="0,05"$, $g="9,8" thin "m/s"^2$. Bỏ qua chuyển động quay các bộ phận của xe.
    #parbreak() a) Tính gia tốc và quãng đường trong thời gian trên.
    #parbreak() b) Tính $F_k$ và công $A_k$ của lực kéo trong mô hình.
    #parbreak() c) Tính công lực cản $A_c$; kiểm tra $A_k+A_c=Delta E_("đ")$.],
  type: "essay", lines: 12,
  sol: [a) $v=30 thin "m/s"$, $a=frac(30, 6)=5 thin "m/s"^2$, $s=frac(1, 2)a t^2=90 thin "m"$.
    #parbreak() b) $F_c="0,05" times 2600 times "9,8"=1274 thin "N"$.
    $ F_k-F_c=m a => F_k=14274 thin "N". $
    $ A_k=F_k s=1284660 thin "J". $
    c) $A_c=-F_c s=-114660 thin "J"$. Trọng lực và phản lực sinh công bằng không.
    $ A_("hl")=A_k+A_c=1170000 thin "J". $
    $ Delta E_("đ")=frac(1, 2) times 2600 times 30^2=1170000 thin "J". $
    Hai kết quả trùng nhau trong mô hình chất điểm. $mu$ ở đây là hệ số cản hiệu dụng, không phải hệ số ma sát trượt của lốp đang lăn không trượt.],
)

// ESSAY-02
#vp-question(
  [Khối gỗ $m="4,0" thin "kg"$ bắt đầu trượt từ nghỉ ở đỉnh $A$ của dốc dài $L="8,0" thin "m"$, nghiêng $beta=30 degree$, với hệ số ma sát trượt $mu_1="0,20"$. Qua chân dốc $B$, vật trượt trên mặt ngang có $mu_2="0,25"$ đến khi dừng tại $C$. Coi đoạn nối ở $B$ là một cung rất ngắn, trơn; bỏ qua công và độ thay đổi độ cao trên đoạn nối, tốc độ qua đó liên tục. Lấy $g="9,8" thin "m/s"^2$.
    #align(center, bai-17-hinh("doc-ngang"))
    a) Tính công trọng lực và ma sát trên dốc.
    #parbreak() b) Dùng định lý động năng tính tốc độ tại $B$.
    #parbreak() c) Tính công ma sát trên đoạn ngang và quãng đường $B C$.],
  type: "essay", lines: 14,
  sol: [a) $h=L sin(beta)=4 thin "m"$.
    $ A_P=m g h="156,8" thin "J". $
    $ A_("ms1")=-mu_1 m g cos(beta)L approx -"54,32" thin "J". $
    b) Phản lực dốc không sinh công:
    $ frac(1, 2)m v_B^2=m g L(sin(beta)-mu_1 cos(beta)). $
    $ v_B=sqrt(2 g L(sin(beta)-mu_1 cos(beta))) approx "7,16" thin "m/s". $
    c) Dùng các giá trị chưa làm tròn:
    $ A_("ms2")=-frac(1, 2)m v_B^2 approx -"102,48" thin "J". $
    $ f_2=mu_2 m g="9,8" thin "N". $
    $ B C=frac(L(sin(beta)-mu_1 cos(beta)), mu_2) approx "10,46" thin "m". $],
)

// ESSAY-03
#vp-question(
  [Con trượt $m="2,0" thin "kg"$ chuyển động trên đệm khí ngang không ma sát. Lực theo phương ngang có thành phần $F_(x) (x)=20-4x$, với $F_x$ bằng N, $x$ bằng m.
    #parbreak() a) Vẽ đồ thị $F_(x) (x)$ trên đoạn $0<=x<=5 thin "m"$.
    #parbreak() b) Tính công từ $x=0$ đến $x=5 thin "m"$ bằng diện tích đồ thị và bằng tích phân.
    #parbreak() c) Tại $x=0$, vận tốc $v_1="2,0" thin "m/s"$ theo chiều dương. Tính vận tốc khi vật đến $x=5 thin "m"$.],
  type: "essay", lines: 12,
  sol: [a) Đồ thị là đoạn thẳng nối $(0;20)$ và $(5;0)$:
    #align(center, bai-17-hinh("fx-essay"))
    b) Diện tích tam giác: $A=frac(1, 2) times 5 times 20=50 thin "J"$.
    $ A=∫_0^5 (20-4x) dif x=[20x-2x^2]_0^5=50 thin "J". $
    c) Trọng lực và phản lực không sinh công:
    $ A=frac(1, 2)m(v_2^2-v_1^2) => v_2=sqrt(v_1^2+frac(2A, m))=sqrt(54) approx "7,35" thin "m/s". $
    $F_x>=0$ trên đoạn xét và $v_1>0$, nên vật tiếp tục đi theo chiều dương.],
)

// ESSAY-04
#vp-question(
  [Nhóm học sinh đo công lực kéo khối gỗ trượt thẳng đều trên bàn ngang bằng lực kế và thước. Mỗi lần, lực kéo song song với chuyển động và được coi là không đổi.
    #parbreak() a) Vẽ sơ đồ, nêu dụng cụ và quy trình để kéo ngang, đọc lực khi vật đi đều.
    #parbreak() b) Xử lý số liệu:
    #align(center, table(
      columns: 3, align: center, inset: (x: 10pt, y: 5pt),
      table.header([*Lần đo*], [$F_i$ (N)], [$s_i$ (m)]),
      [1], [2,10], [0,500], [2], [2,05], [0,502], [3], [2,15], [0,498],
      [4], [2,08], [0,500], [5], [2,12], [0,500],
    ))
    Tính $overline(F)$, $overline(s)$ và giá trị đại diện của công $A_0=overline(F) overline(s)$.
    Chỉ xét độ phân tán số đo, bỏ qua sai số dụng cụ. Lấy $Delta F$, $Delta s$ bằng độ lệch tuyệt đối trung bình của từng đại lượng; ước lượng
    $ Delta A=overline(s) Delta F+overline(F) Delta s. $
    Viết kết quả $A=A_0 plus.minus Delta A$, giữ hai chữ số có nghĩa của $Delta A$ và làm tròn $A_0$ đến cùng hàng thập phân.],
  type: "essay", lines: 14,
  sol: [a) Dụng cụ: khối gỗ, lực kế, dây nhẹ, thước và mặt bàn ngang. Kiểm tra số không của lực kế; mắc dây nằm ngang qua khối gỗ, đánh dấu hai vị trí đo. Kéo để vật đạt trạng thái trượt đều trước vùng đo; đọc lực khi số chỉ ổn định, theo dõi vật đi những quãng đường bằng nhau trong các khoảng thời gian bằng nhau. Đo quãng đường và lặp lại năm lần.
    #align(center, bai-17-hinh("thi-nghiem"))
    b) $overline(F)="2,10" thin "N"$, $overline(s)="0,500" thin "m"$, $A_0="1,050" thin "J"$.
    $ Delta F=frac(0+"0,05"+"0,05"+"0,02"+"0,02", 5)="0,028" thin "N". $
    $ Delta s=frac(0+"0,002"+"0,002"+0+0, 5)="0,0008" thin "m". $
    Không làm tròn các giá trị trung gian:
    $ Delta A="0,500" times "0,028"+"2,10" times "0,0008"="0,01568" thin "J". $
    $ A=("1,050" plus.minus "0,016") thin "J". $
    Kết quả chỉ phản ánh quy ước ước lượng đã cho, chưa bao gồm sai số dụng cụ/hệ thống. Tích các giá trị trung bình $A_0$ khác về định nghĩa với trung bình các tích $overline(F_i s_i)="1,04996" thin "J"$; chúng gần nhau trong bộ số liệu này.],
)

// ESSAY-05
#vp-question(
  [Cần cẩu nâng thùng hàng $M=2000 thin "kg"$ lên cao $h=15 thin "m"$. Chỉ lực nâng cáp và trọng lực sinh công; bỏ qua lực cản, lấy $g="9,8" thin "m/s"^2$.
    #parbreak() a) Tính công nâng đều $A_0$ trên độ cao này.
    #parbreak() b) Xét cách nâng từ nghỉ gồm ba giai đoạn liên tiếp: nhanh dần với $a_1="1,2" thin "m/s"^2$ trên $h_1=3 thin "m"$; đi đều trên $h_2=9 thin "m"$; chậm dần với $a_3=-"1,2" thin "m/s"^2$ trên $h_3=3 thin "m"$ để dừng. Chiều dương hướng lên. Tính lực nâng và công của lực nâng từng giai đoạn, tổng công và so sánh với $A_0$.
    #parbreak() c) Giải thích bằng định lý động năng vì sao tổng công hai cách bằng nhau trong mô hình.],
  type: "essay", lines: 14,
  sol: [a) Nâng đều: $F=M g$, nên $A_0=M g h=294000 thin "J"=294 thin "kJ"$.
    #parbreak() b) Lực nâng ở mỗi giai đoạn là $F_i=M(g+a_i)$:
    #align(center, table(
      columns: 4, align: center, inset: (x: 9pt, y: 5pt),
      table.header([*Giai đoạn*], [$h_i$ (m)], [$F_i$ (N)], [$A_i$ (kJ)]),
      [1], [3], [22000], [66], [2], [9], [19600], [176,4], [3], [3], [17200], [51,6],
    ))
    $ A_("tổng")=66+"176,4"+"51,6"=294 thin "kJ"=A_0. $
    #align(center, bai-17-hinh("nang-ba-doan"))
    c) Sau giai đoạn 1, $v^2=2 a_1 h_1="7,2" thin "m"^2/"s"^2$. Giai đoạn 3 làm giảm $v^2$ đúng bằng $"7,2" thin "m"^2/"s"^2$, nên vận tốc cuối bằng không như đề.
    $ A_("tổng")+A_P=Delta E_("đ")=0 => A_("tổng")=-A_P=M g h. $
    Ở giai đoạn chậm dần, lực cáp vẫn hướng lên và vẫn sinh công dương; công trọng lực âm có độ lớn lớn hơn công lực cáp, làm động năng giảm. Kết quả bằng $M g h$ cần điều kiện động năng đầu và cuối bằng nhau, không có công của lực cản; không phải khẳng định công lực nâng luôn độc lập với vận tốc.],
)

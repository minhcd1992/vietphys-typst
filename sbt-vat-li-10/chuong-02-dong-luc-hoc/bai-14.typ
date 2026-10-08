#import "../cau-hinh.typ": *
#import "images/bai-14-hinh.typ": bai-14-hinh

// Nguồn: nguon/bai-14-goc.txt; hiệu đính: nguon/bai-14-ghi-chu.md.
// Các câu độc lập; đáp án và lời giải ẩn trên bản học sinh.
#sbt-bai(num: "14", title: "Lực cản và lực nâng", label: <bai-14>)

= Phần I. Trắc nghiệm khách quan
#sbt-instructions(reset: true)[Chọn một phương án đúng trong mỗi câu.]

// MCQ-01
#vp-question(
  [Một giọt chất lỏng khối lượng $m$ rơi trong không khí đứng yên. Bỏ lực đẩy Archimedes; giả sử lực cản $F_c = k v$ với $k > 0$ không đổi trong toàn bộ phạm vi xét. Kết luận nào sau đây thể hiện đúng bản chất chuyển động của giọt mưa khi nó đạt đến "tốc độ tới hạn" $v_"th"$?],
  type: "mcq",
  options: (
    [Giọt mưa lập tức dừng lại và lơ lửng giữa không trung vì lực cản bằng trọng lực.],
    [Hợp lực tác dụng lên giọt mưa bằng 0, giọt mưa tiếp tục chuyển động thẳng đều xuống đất với tốc độ không đổi $v_"th" = frac(m g, k)$.],
    [Gia tốc của giọt mưa đạt giá trị cực đại bằng $g$ khi đạt tốc độ tới hạn.],
    [Động năng của giọt mưa liên tục tăng do gia tốc không đổi.],
  ),
  ans: "B",
  sol: [Khi đạt tốc độ tới hạn, giọt mưa rơi thẳng đều, hợp lực bằng không: $F_c = P => k v_"th" = m g => v_"th" = frac(m g, k)$. Gia tốc $a = 0$.],
)

// MCQ-02
#vp-question(
  [Một khí cầu chứa khí heli có thể tích $V = 10 thin "m"^3$. Biết khối lượng riêng của không khí ở mặt đất là $rho_"kk" = "1,29" thin "kg/m"^3$ và lấy $g = "9,8" thin "m/s"^2$. Độ lớn lực nâng Archimedes do không khí tác dụng lên quả khí cầu bằng],
  type: "mcq",
  options: (
    [$"126,42" thin "N"$.],
    [$"12,90" thin "N"$.],
    [$"129,00" thin "N"$.],
    [$"98,00" thin "N"$.],
  ),
  ans: "A",
  sol: [$F_A = rho_"kk" g V = "1,29" times "9,8" times 10 = "126,42" thin "N"$.],
)

// MCQ-03
#vp-question(
  [Một máy bay đang bay hành trình nằm ngang trên không trung ở tốc độ ổn định $900 thin "km/h"$. Lực nâng khí động học xuất hiện tác dụng lên cánh máy bay có bản chất vật lý chính dựa trên],
  type: "mcq",
  options: (
    [sự chênh lệch áp suất không khí giữa mặt dưới và mặt trên của cánh do hình dạng khí động học kết hợp với phản lực đổi hướng dòng khí.],
    [lực đẩy Archimedes của khí quyển tác dụng lên thể tích thân máy bay.],
    [lực đẩy phản lực của hai động cơ phản lực hướng thẳng đứng lên trên.],
    [lực ma sát nghỉ giữa vỏ máy bay và không khí đẩy máy bay bay lên.],
  ),
  ans: "A",
  sol: [Phân bố áp suất trên bề mặt cánh tạo hợp lực có thành phần nâng; xét dòng khí, cánh làm đổi động lượng dòng. Hai cách mô tả phải nhất quán, không phải hai lực nâng độc lập để cộng lại. Hình dạng và góc tấn đều ảnh hưởng; không dùng giả thuyết các phần tử khí phải gặp lại nhau ở mép sau.],
)

// MCQ-04
#vp-question(
  [Xét mô hình lực cản $F_c = D v^2$ trong không khí đứng yên, với $D > 0$ là hệ số có đơn vị kg/m và không đổi. Bỏ lực đẩy Archimedes. Biểu thức tốc độ tới hạn $v_"th"$ của một người nhảy dù khối lượng $m$ khi rơi trước khi mở dù là],
  type: "mcq",
  options: (
    [$v_"th" = sqrt(frac(m g, D))$.],
    [$v_"th" = frac(m g, D)$.],
    [$v_"th" = frac(D, m g)$.],
    [$v_"th" = sqrt(frac(D, m g))$.],
  ),
  ans: "A",
  sol: [Khi đạt tốc độ tới hạn, lực cản cân bằng với trọng lực: $F_c = P => D v_"th"^2 = m g => v_"th" = sqrt(frac(m g, D))$.],
)

// MCQ-05
#vp-question(
  [Cánh gió phía sau một xe đua được thiết kế có dạng hình cánh máy bay nhưng đảo ngược. Mục đích kĩ thuật quan trọng nhất của thiết kế này là],
  type: "mcq",
  options: (
    [tạo ra lực nâng hướng lên giúp xe nhẹ hơn và chạy nhanh hơn.],
    [tạo ra lực ép xuống hướng thẳng đứng xuống mặt đường, giúp tăng pháp lực và tăng ma sát nghỉ cực đại để ôm cua ở tốc độ cao.],
    [triệt tiêu hoàn toàn lực cản không khí tác dụng lên xe.],
    [giảm lượng nhiên liệu tiêu thụ của động cơ.],
  ),
  ans: "B",
  sol: [Cánh gió ngược tạo lực ép xuống, làm tăng pháp lực $N = m g + F_"down"$, từ đó tăng lực ma sát nghỉ cực đại ($F_("msn,max") = mu_n N$) giúp xe bám đường tốt hơn khi ôm cua.],
)

// MCQ-06
#vp-question(
  [Một hòn đá khối lượng $m = "5,0" thin "kg"$ và thể tích $V = "2,0" thin "dm"^3$ được treo đứng yên bằng dây nhẹ, chìm hoàn toàn trong nước đứng yên và không chạm đáy. Biết khối lượng riêng của nước là $rho_n = 1000 thin "kg/m"^3$ và $g = "9,8" thin "m/s"^2$. Lực nâng Archimedes và trọng lượng biểu kiến $P'$ (lực căng dây treo) của hòn đá dưới nước lần lượt là],
  type: "mcq",
  options: (
    [$F_A = "19,6" thin "N"$ và $P' = "29,4" thin "N"$.],
    [$F_A = "20,0" thin "N"$ và $P' = "30,0" thin "N"$.],
    [$F_A = "49,0" thin "N"$ và $P' = "0,0" thin "N"$.],
    [$F_A = "19,6" thin "N"$ và $P' = "49,0" thin "N"$.],
  ),
  ans: "A",
  sol: [Đổi $V = "0,002" thin "m"^3$. Lực nâng $F_A = rho_n g V = 1000 times "9,8" times "0,002" = "19,6" thin "N"$. Trọng lực $P = m g = 5 times "9,8" = 49 thin "N"$. Trọng lượng biểu kiến $P' = P - F_A = 49 - "19,6" = "29,4" thin "N"$.],
)

// MCQ-07
#vp-question(
  [Hai vật A, B có cùng khối lượng, được thả đồng thời từ nghỉ ở cùng độ cao trong không khí đứng yên. Bỏ lực đẩy Archimedes. Lực cản có dạng $F_c = D v^2$ với các hệ số không đổi thỏa $0 < D_A < D_B$. Kết luận nào đúng?],
  type: "mcq",
  options: (
    [Hai vật chạm đất đồng thời vì trọng lực bằng nhau.],
    [A có tốc độ tới hạn lớn hơn và chạm đất trước B.],
    [B chạm đất trước vì lực cản lớn hơn.],
    [Cả hai có gia tốc $g$ không đổi suốt quá trình.],
  ),
  ans: "B",
  sol: [$v_("th") = sqrt(frac(m g, D))$ nên $v_("thA") > v_("thB")$. Với cùng điều kiện đầu, lực cản nhỏ hơn làm tốc độ A lớn hơn ở các thời điểm sau lúc thả. Không thể suy ra thứ tự hệ số cản chỉ từ nhận xét một vật nhẵn, vật kia nhám.],
)


// MCQ-08
#vp-question(
  [Xét mô hình người và dù có khối lượng không đổi, rơi trong không khí đứng yên với $F_c = D v^2$, bỏ lực nổi. Trước mở dù, người rơi đều $55 thin "m/s"$. Giả sử hệ số $D$ đổi tức thời sang giá trị có tốc độ tới hạn $5 thin "m/s"$. Ngay sau thay đổi, gia tốc hướng nào?],
  type: "mcq",
  options: (
    [Xuống dưới với độ lớn $g$.],
    [Bằng 0 vì vận tốc đang lớn nhất.],
    [Lên trên, làm tốc độ rơi giảm.],
    [Nằm ngang theo chiều gió.],
  ),
  ans: "C",
  sol: [Vận tốc không thể đổi tức thời nên lúc đó vẫn là $55 thin "m/s"$. Theo hệ số mới, $D_2 = m g/5^2$, vì vậy $F_c/(m g) = (55/5)^2 = 121 > 1$. Hợp lực hướng lên. Mô hình đổi hệ số tức thời cho gia tốc rất lớn; dù thực mở trong một khoảng thời gian.],
)


// MCQ-09
#vp-question(
  [Một tàu ngầm đứng yên lơ lửng trong nước đứng yên. Bỏ các lực thẳng đứng khác ngoài trọng lực và lực nổi. Nhận xét nào sau đây đúng về lực tác dụng lên tàu ngầm?],
  type: "mcq",
  options: (
    [Tàu ngầm không chịu tác dụng của trọng lực do đã ở sâu dưới lòng biển.],
    [Độ lớn lực đẩy Archimedes đúng bằng độ lớn trọng lực của toàn bộ tàu ngầm ($F_A = P$).],
    [Lực đẩy Archimedes nhỏ hơn trọng lực nên tàu mới lặn được xuống sâu.],
    [Động cơ tàu ngầm phải liên tục hoạt động phun nước lên trên để giữ tàu không bị chìm.],
  ),
  ans: "B",
  sol: [Khi tàu ngầm đứng yên lơ lửng, nó ở trạng thái cân bằng tĩnh theo phương thẳng đứng, do đó tổng lực tác dụng bằng 0, suy ra $F_A = P$.],
)

// MCQ-10
#vp-question(
  [Người bơi duỗi cơ thể và đưa hai tay sát nhau về phía trước trong giai đoạn lướt nước. Mục đích vật lý chính là],
  type: "mcq",
  options: (
    [tăng khối lượng riêng của cơ thể để chìm sâu hơn.],
    [giảm tối đa diện tích cản chính diện $S$ và hệ số cản thủy động học $C_d$ nhằm giảm lực cản của nước.],
    [làm tăng lực đẩy Archimedes nâng cơ thể nổi hoàn toàn trên mặt nước.],
    [tăng ma sát trượt giữa da và nước để đẩy nước về phía sau mạnh hơn.],
  ),
  ans: "B",
  sol: [Tư thế thu gọn cơ thể nhằm giảm diện tích cản chính diện $S$ và hệ số cản $C_d$, nhờ đó giảm lực cản thủy động học $F_c = frac(1, 2) C_d rho S v^2$.],
)

// MCQ-11
#vp-question(
  [Vật được thả từ nghỉ, rơi thẳng trong không khí đứng yên với lực cản $F_c = k v$, $k > 0$ không đổi. Bỏ lực nổi, chọn chiều dương xuống. Chọn đồ thị vận tốc–thời gian phù hợp.
#align(center, bai-14-hinh("chon-vt"))],
  type: "mcq",
  options: (
    [Đồ thị A.],
    [Đồ thị B.],
    [Đồ thị C.],
    [Đồ thị D.],
  ),
  ans: "B",
  sol: [$a = g - frac(k, m) v$ giảm dần về 0. Đồ thị $v(t)$ xuất phát từ 0, tăng với độ dốc giảm dần và tiệm cận $v_("th") = frac(m g, k)$.
#align(center, bai-14-hinh("do-thi-vt"))],
)


// MCQ-12
#vp-question(
  [Một khối gỗ hình hộp chữ nhật có khối lượng riêng $rho_g = 600 thin "kg/m"^3$ được thả vào một bể chứa nước ($1000 thin "kg/m"^3$). Tỉ lệ phần thể tích khối gỗ bị ngập dưới nước so với thể tích toàn bộ khi cân bằng tĩnh bằng],
  type: "mcq",
  options: (
    [$60 %$.],
    [$40 %$.],
    [$100 %$.],
    [$50 %$.],
  ),
  ans: "A",
  sol: [Khi nổi cân bằng: $F_A = P => rho_n g V_"chìm" = rho_g g V => frac(V_"chìm", V) = frac(rho_g, rho_n) = frac(600, 1000) = "0,6" = 60 %$.],
)

// MCQ-13
#vp-question(
  [Đặt cùng một vật lên cảm biến đo lực đỡ, lần lượt trong không khí đứng yên và trong chân không, ở cùng nơi có $g$ không đổi. Vật có thể tích không đổi, không có lực khác. So sánh lực vật ép lên cảm biến; không xét thuật toán quy đổi sang số chỉ khối lượng.],
  type: "mcq",
  options: (
    [Hai lực bằng nhau vì khối lượng không đổi.],
    [Lực ép trong không khí nhỏ hơn do lực nổi của không khí.],
    [Lực ép trong không khí lớn hơn do không khí luôn ép xuống.],
    [Cảm biến không thể đo lực trong chân không.],
  ),
  ans: "B",
  sol: [Trong không khí: $N = m g - rho_("kk") g V$; trong chân không: $N_0 = m g$. Khối lượng không đổi. Với cân báo khối lượng thực, còn phải xét hiệu chuẩn và bù lực nổi; đề chỉ so sánh lực đỡ.],
)


// MCQ-14
#vp-question(
  [Một viên bi thép nhỏ bán kính $r$ rơi thẳng đứng trong bình dầu nhớt. Lực cản tuân theo định luật Stokes $F_c = 6 pi eta r v$. Giả sử hai viên bi cùng vật liệu, dầu không đổi và cả hai đều trong miền áp dụng Stokes, xa thành bình. Nếu đường kính viên bi tăng lên 2 lần thì tốc độ tới hạn $v_"th"$ của viên bi sẽ tăng lên bao nhiêu lần?],
  type: "mcq",
  options: (
    [$2$ lần.],
    [$4$ lần.],
    [$8$ lần.],
    [$16$ lần.],
  ),
  ans: "B",
  sol: [Cân bằng gồm trọng lực, lực nổi và lực cản cho $v_("th") = frac(2 r^2 g (rho_("bi") - rho_("dầu")), 9 eta)$. Các đại lượng khác không đổi nên $v_("th") ∝ r^2$. Đường kính tăng 2 lần tức bán kính tăng 2 lần, $v_"th"$ tăng $2^2 = 4$ lần.],
)

// MCQ-15
#vp-question(
  [Khi chim lượn trong không khí, lực nâng khí động học được giải thích bằng],
  type: "mcq",
  options: (
    [việc đẩy chất lưu xuống phía dưới để nhận phản lực hướng lên kết hợp với chênh lệch áp suất khí động học.],
    [lực ma sát nghỉ giữa lông chim và gió.],
    [trọng lực giảm đi khi chim xòe rộng cánh.],
    [lực tĩnh điện tích tụ trên mép cánh.],
  ),
  ans: "A",
  sol: [Lực bề mặt do dòng khí tác dụng lên cánh và sự đổi động lượng của dòng khí là hai cách mô tả cùng tương tác. Không phải do trọng lực biến mất hay do ma sát nghỉ với không khí.],
)

// MCQ-16
#vp-question(
  [Một ô tô chạy trong không khí đứng yên; coi hệ số cản và diện tích cản không đổi. Khi tốc độ ô tô tăng từ $60 thin "km/h"$ lên $120 thin "km/h"$, công suất chống lực cản không khí do động cơ cung cấp phải tăng lên bao nhiêu lần? (Coi lực cản tỉ lệ với $v^2$).],
  type: "mcq",
  options: (
    [$2$ lần.],
    [$4$ lần.],
    [$8$ lần.],
    [$16$ lần.],
  ),
  ans: "C",
  sol: [Lực cản $F_c ∝ v^2$. Công suất cản $P_"cs" = F_c v ∝ v^3$. Vận tốc tăng 2 lần nên công suất tăng $2^3 = 8$ lần.],
)

// MCQ-17
#vp-question(
  [Trong môn bóng bàn, khi cầu thủ đánh xoáy, quả bóng bay theo đường cong phức tạp không phải parabol. Hiện tượng này gọi là hiệu ứng Magnus, xuất hiện do],
  type: "mcq",
  options: (
    [sự lệch tốc độ dòng không khí ở hai bên quả bóng đang xoay tròn, tạo ra chênh lệch áp suất sinh ra lực nâng vuông góc với vận tốc.],
    [lực hấp dẫn biến đổi theo chiều xoay của quả bóng.],
    [trọng tâm quả bóng bị lệch khỏi tâm hình học.],
    [lực ma sát trượt giữa bóng và không khí kéo lệch quả bóng.],
  ),
  ans: "A",
  sol: [Sự quay làm biến đổi dòng khí và phân bố áp suất quanh bóng, có thể tạo lực ngang so với dòng khí tới. Phải phân biệt áp suất tĩnh trên bề mặt với đại lượng áp suất động.],
)

// MCQ-18
#vp-question(
  [Rô-bốt lặn có $m = 800 thin "kg"$, thể tích chiếm chỗ $"0,70" thin "m"^3$, chìm hoàn toàn. Cho $rho = 1025 thin "kg/m"^3$, $g = "9,8" thin "m/s"^2$. Bỏ lực cản nước. Để rô-bốt đang đi xuống tiếp tục chuyển động thẳng đều, chân vịt phải tạo lực nào?],
  type: "mcq",
  options: (
    [$"808,5" thin "N"$ hướng lên.],
    [$"808,5" thin "N"$ hướng xuống.],
    [$"7031,5" thin "N"$ hướng lên.],
    [Không cần lực chân vịt.],
  ),
  ans: "A",
  sol: [$P = 7840 thin "N"$, $F_A = 1025 times "9,8" times "0,70" = "7031,5" thin "N"$. Cân bằng đứng đòi hỏi $F_("cv") + F_A - P = 0$, nên $F_("cv") = "808,5" thin "N"$ hướng *lên*. Vận tốc xuống không buộc hợp lực hay lực chân vịt hướng xuống.],
)


// MCQ-19
#vp-question(
  [Một tàu vỏ thép nổi cân bằng trên nước. Lý do vật lý cốt lõi là],
  type: "mcq",
  options: (
    [thép chế tạo tàu được pha trộn vật liệu siêu nhẹ nhẹ hơn nước.],
    [thiết kế vỏ tàu rỗng làm thể tích chiếm chỗ $V_"cc"$ rất lớn, tạo lực đẩy Archimedes $F_A = rho_n g V_"cc"$ cân bằng tổng trọng lượng ở trạng thái nổi.],
    [động cơ tàu liên tục đẩy nước nâng tàu nổi.],
    [muối trong nước biển làm giảm trọng lực tác dụng lên tàu.],
  ),
  ans: "B",
  sol: [Vỏ tàu làm bằng thép nhưng bên trong rỗng chứa nhiều không khí, làm khối lượng riêng trung bình của toàn bộ tàu nhỏ hơn nước, tạo thể tích chiếm chỗ đủ để $F_A$ cân bằng trọng lượng.],
)

// MCQ-20
#vp-question(
  [Vật được thả từ nghỉ và rơi thẳng trong không khí đứng yên với $F_c = k v$, $k > 0$ không đổi. Bỏ lực nổi; chọn chiều dương xuống. Chọn đồ thị gia tốc–thời gian phù hợp.
#align(center, bai-14-hinh("chon-at"))],
  type: "mcq",
  options: (
    [Đồ thị A.],
    [Đồ thị B.],
    [Đồ thị C.],
    [Đồ thị D.],
  ),
  ans: "B",
  sol: [$a = g - frac(k, m) v$. Ban đầu $v = 0$ nên $a = g$; khi tốc độ tiến tới $v_("th")$, gia tốc tiến về 0. Biểu thức $a(t) = g e^(-k t/m)$ cho đồ thị giảm tiệm cận.
#align(center, bai-14-hinh("do-thi-at"))],
)


= Phần II. Trắc nghiệm Đúng/Sai
#sbt-instructions(reset: true)[Xác định mỗi phát biểu a), b), c), d) là đúng hay sai.]

// TF-01
#vp-question(
  [Trong mô hình rơi thẳng, người cùng toàn bộ trang bị có khối lượng $m = 80 thin "kg"$, bắt đầu từ nghỉ trong không khí đứng yên. Bỏ lực nổi; coi các hệ số cản không đổi trong từng giai đoạn. Lấy $g = "9,8" thin "m/s"^2$. Lực cản không khí khi chưa mở dù là $F_"c1" = D_1 v^2$ ($D_1 = "0,25" thin "kg/m"$), và khi mở dù là $F_"c2" = D_2 v^2$ ($D_2 = "20,0" thin "kg/m"$).],
  type: "tf",
  statements: (
    [Ngay tại thời điểm bắt đầu rơi ($v = 0$), gia tốc rơi của người nhảy dù bằng $g = "9,8" thin "m/s"^2$.],
    [Tốc độ tới hạn khi chưa mở dù là $v_"th1" = "56,0" thin "m/s"$.],
    [Tốc độ tới hạn sau khi mở dù giảm xuống còn $v_"th2" approx "6,26" thin "m/s"$.],
    [Quá trình rơi từ khi nhảy ra đến khi hạ cánh hoàn toàn là một chuyển động thẳng biến đổi đều với gia tốc không đổi.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [a) Lúc thả, vận tốc bằng không, lực cản bằng không nên $a=g$.
    #parbreak() b) $v_"th1" = sqrt(frac(m g, D_1)) = sqrt(frac(80 times "9,8", "0,25")) = 56 thin "m/s"$.
    #parbreak() c) $v_"th2" = sqrt(frac(m g, D_2)) = sqrt(frac(80 times "9,8", "20,0")) = sqrt("39,2") approx "6,26" thin "m/s"$.
    #parbreak() d) Gia tốc thay đổi liên tục theo vận tốc, không phải biến đổi đều.],
)

// TF-02
#vp-question(
  [Xét mô hình tàu ngầm chìm hoàn toàn trong nước đứng yên, khối lượng riêng không đổi $rho = 1025 thin "kg/m"^3$. Thể tích chiếm chỗ bên ngoài không đổi; thay đổi lượng nước trong khoang dằn để điều chỉnh tổng khối lượng. Bỏ các lực thẳng đứng khác:],
  type: "tf",
  statements: (
    [Khi tàu ngầm muốn nổi lên, hệ thống sẽ bơm nước biển vào các khoang dằn để tăng trọng lượng.],
    [Khi muốn lặn xuống, tàu xả khí và cho nước tràn vào khoang làm trọng lượng $P$ vượt quá lực đẩy Archimedes $F_A$.],
    [Khi lơ lửng cân bằng ở độ sâu $150 thin "m"$, độ lớn lực Archimedes đúng bằng trọng lực tổng của tàu.],
    [Độ lớn lực Archimedes khi lặn $200 thin "m"$ lớn gấp đôi so với khi lặn $100 thin "m"$ vì áp suất lớn hơn.],
  ),
  ans-tf: ("S", "Đ", "Đ", "S"),
  sol: [a) Muốn nổi lên phải đẩy nước ra để giảm trọng lượng.
    #parbreak() b) Trọng lượng tăng làm $P > F_A$, tàu chìm xuống.
    #parbreak() c) Lơ lửng tức cân bằng tĩnh: $F_A = P$.
    #parbreak() d) Thể tích tàu không đổi, nước không chịu nén nên $F_A$ không phụ thuộc độ sâu.],
)

// TF-03
#vp-question(
  [Xét xe chạy thẳng trên đường ngang. Khi dùng công thức $F_c = frac(1, 2) C_d rho S v_("rel")^2$, $v_("rel")$ là tốc độ của xe so với không khí.],
  type: "tf",
  statements: (
    [Giữ $rho$, $S$, $v_("rel")$ không đổi, giảm $C_d$ làm lực cản giảm.],
    [Lực cản luôn ngược chiều vận tốc của xe so với mặt đất, kể cả khi có gió thổi từ sau nhanh hơn xe.],
    [Toàn bộ công suất động cơ ở tốc độ cao chỉ dùng thắng cản lăn; cản khí không tiêu thụ công suất.],
    [Nếu có lực nâng khí động hướng lên nhỏ hơn trọng lượng và xe không gia tốc đứng, lực nén mặt đường giảm, có thể giảm giới hạn bám.],
  ),
  ans-tf: ("Đ", "S", "S", "Đ"),
  sol: [a) Theo công thức đã cho, lực cản giảm cùng $C_d$. b) Lực cản chống chuyển động *tương đối với không khí*, không nhất thiết chống vận tốc so với đất. c) Trong không khí đứng yên, công suất thắng cản khí bằng $F_c v$, khác 0 khi xe chạy và $F_c > 0$. d) $N = m g - F_("nâng")$ nên giới hạn $mu_n N$ giảm trong mô hình bám.],
)


// TF-04
#vp-question(
  [Bảng dưới là số liệu lí tưởng hóa về các bi cùng vật liệu rơi trong cùng chất lỏng, cùng nhiệt độ. Khảo sát quan hệ giữa bán kính và tốc độ tới hạn; chưa có dữ liệu kiểm tra điều kiện áp dụng Stokes.
#align(center, table(columns: 3, inset: 6pt, stroke: 0.5pt + luma(65%), table.header([Lần], [$r$ (mm)], [$v_("th")$ (cm/s)]), [1], [1,0], [2,5], [2], [2,0], [10,0], [3], [3,0], [22,5], [4], [4,0], [40,0]))],
  type: "tf",
  statements: (
    [Tốc độ tới hạn tỉ lệ thuận với $r$.],
    [Các giá trị trong bảng thỏa $v_("th") ∝ r^2$.],
    [Tỉ số $v_("th")/r^2$ đều bằng $"2,5" thin "cm"/("s" dot "mm"^2)$.],
    [Chỉ bảng này đã đủ chứng minh lực cản chính xác bằng $6 pi eta r v$ trong mọi điều kiện.],
  ),
  ans-tf: ("S", "Đ", "Đ", "S"),
  sol: [Các tỉ số tính theo đơn vị của bảng là $"2,5"/1^2 = 10/2^2 = "22,5"/3^2 = 40/4^2 = "2,5"$. Tương đương $25000 thin "m"^(-1) "s"^(-1)$ trong SI. Kết quả phù hợp với hệ quả của mô hình Stokes khi các giả thiết thỏa mãn, nhưng không tự chứng minh định luật hay phạm vi áp dụng.],
)


// TF-05
#vp-question(
  [Xét mô hình hai vùng dòng khí trên và dưới cánh ở gần cùng độ cao, có cùng hằng số Bernoulli. Dòng ổn định, coi không nén được và bỏ tổn hao; cho $v_("trên") > v_("dưới")$. Đây là mô hình giải thích định tính, không thay thế việc xác định dòng quanh toàn bộ cánh.],
  type: "tf",
  statements: (
    [Cánh chỉ có thể tạo lực nâng nếu mặt trên cong hơn mặt dưới.],
    [Theo các giả thiết đã cho, áp suất tĩnh phía trên nhỏ hơn phía dưới.],
    [Chênh lệch áp suất giữa hai vùng đang xét đóng góp lực hướng lên trên cánh.],
    [Muốn bay lộn ngược, máy bay phải làm gia tốc trọng trường đổi chiều.],
  ),
  ans-tf: ("S", "Đ", "Đ", "S"),
  sol: [a) Sai: góc tấn và trường dòng cũng quyết định lực nâng; không có điều kiện bắt buộc về độ cong như phát biểu. b) Cùng hằng số Bernoulli, $p + frac(1, 2) rho v^2 = "hằng số"$, nên tốc độ lớn hơn tương ứng áp suất tĩnh nhỏ hơn. c) Áp suất dưới lớn hơn tạo đóng góp hướng lên; lực tổng phải lấy trên toàn bề mặt. d) Trọng lực không đổi chiều khi máy bay đổi tư thế.],
)


= Phần III. Trắc nghiệm trả lời ngắn
#sbt-instructions(reset: true)[Tính và ghi kết quả theo quy định trong câu.]

// SHORT-01
#vp-question(
  [Giọt mưa khối lượng $m = "2,0" times 10^(-5) thin "kg"$ rơi với lực cản $F_c = k v$. Hằng số $k = "4,0" times 10^(-4) thin "N s/m"$; $g = "9,8" thin "m/s"^2$. Tốc độ tới hạn $v_"th"$ của giọt mưa bằng bao nhiêu m/s? (Làm tròn đến 2 chữ số thập phân).],
  type: "short",
  ans: "0,49",
  short-boxes: 4,
  sol: [$v_"th" = frac(m g, k) = frac("2,0" times 10^(-5) times "9,8", "4,0" times 10^(-4)) = "0,49" thin "m/s"$.],
)

// SHORT-02
#vp-question(
  [Quả cầu rỗng $m = "1,5" thin "kg"$ nổi cân bằng trên bể nước ($rho_n = 1000 thin "kg/m"^3, g = "9,8" thin "m/s"^2$). Thể tích phần quả cầu bị chìm dưới nước bằng bao nhiêu dm³? (Làm tròn đến 1 chữ số thập phân).],
  type: "short",
  ans: "1,5",
  short-boxes: 3,
  sol: [Cân bằng: $F_A = P => rho_n g V_"chìm" = m g => V_"chìm" = frac(m, rho_n) = frac("1,5", 1000) = "0,0015" thin "m"^3 = "1,5" thin "dm"^3$.],
)

// SHORT-03
#vp-question(
  [Người và dù có tổng khối lượng $m = 75 thin "kg"$ rơi thẳng đều với tốc độ $"5,0" thin "m/s"$. Bỏ lực nổi. Lấy $g = "9,8" thin "m/s"^2$. Độ lớn tổng lực cản không khí lên hệ người–dù bằng bao nhiêu Newton?],
  type: "short",
  ans: "735",
  sol: [Rơi thẳng đều $a = 0$ nên $F_c = P = 75 times "9,8" = 735 thin "N"$.],
)

// SHORT-04
#vp-question(
  [Một vật chìm hoàn toàn có thể tích chiếm chỗ $V = 120 thin "m"^3$, $rho = 1025 thin "kg/m"^3$ và $g = "9,8" thin "m/s"^2$. Độ lớn lực đẩy Archimedes khi chìm hoàn toàn bằng bao nhiêu kN? (Làm tròn đến 1 chữ số thập phân).],
  type: "short",
  ans: "1205,4",
  short-boxes: 6,
  sol: [$F_A = rho g V = 1025 times "9,8" times 120 = 1205400 thin "N" = "1205,4" thin "kN"$.],
)

// SHORT-05
#vp-question(
  [Một ô tô có diện tích cản chính diện $S = "2,5" thin "m"^2$, $C_d = "0,28"$, khối lượng riêng không khí $rho = "1,20" thin "kg/m"^3$. Công thức $F_c = frac(1, 2) C_d rho S v^2$. Khi tốc độ tương đối với không khí là $v = 30 thin "m/s"$, độ lớn lực cản không khí bằng bao nhiêu Newton?],
  type: "short",
  ans: "378",
  sol: [$F_c = "0,5" times "0,28" times "1,20" times "2,5" times 30^2 = 378 thin "N"$.],
)


= Phần IV. Tự luận
#sbt-instructions(reset: true)[Trình bày lập luận, công thức, phép tính và kết luận phù hợp với yêu cầu của bài.]

// ESSAY-01
#vp-question(
  [Hạt mưa đá khối lượng $m = "0,50" thin "g"$ được thả từ nghỉ ở độ cao $h = 1000 thin "m"$. Lấy $g = "9,8" thin "m/s"^2$, không khí đứng yên, bỏ lực nổi; khối lượng và hệ số cản coi không đổi.
#parbreak() a) Tính tốc độ chạm đất nếu bỏ lực cản và động năng tương ứng.
#parbreak() b) Với $F_c = D v^2$, $D = "2,5" times 10^(-5) thin "kg/m"$, tính tốc độ tới hạn.
#parbreak() c) Lấy gần đúng tốc độ chạm đất bằng tốc độ tới hạn. Tính công của lực cản trong quãng rơi, so sánh động năng chạm đất với trường hợp a).],
  type: "essay",
  lines: 12,
  sol: [a) $v_0 = sqrt(2 g h) = 140 thin "m/s"$; $K_0 = m g h = "4,9" thin "J"$.
#parbreak() b) $D v_("th")^2 = m g$ nên $v_("th") = sqrt(frac(m g, D)) = 14 thin "m/s"$.
#parbreak() c) Tốc độ tới hạn được tiến tới tiệm cận; ở đây dùng gần đúng đề cho. Định lí động năng:
$ A_c = frac(1, 2) m v_("th")^2 - m g h = "0,049" - "4,900" = -"4,851" thin "J". $
Động năng chạm đất xấp xỉ $"0,049" thin "J"$, bằng 1% trường hợp bỏ cản. Điều này không đủ kết luận hạt không gây hại; không so sánh với đạn chỉ dựa vào tốc độ.],
)


// ESSAY-02
#vp-question(
  [Hệ người–dù có $M = 90 thin "kg"$, rơi thẳng trong không khí đứng yên. Bỏ lực nổi; $g = "9,8" thin "m/s"^2$. Khi dù mở hoàn toàn, mô hình lực cản là $F_c = D v^2$ với $D = "18,0" thin "kg/m"$.
#parbreak() a) Tính tốc độ tới hạn sau mở dù.
#parbreak() b) Trong mô hình lí tưởng hệ số cản đổi tức thời, ngay sau thay đổi vận tốc còn là $40 thin "m/s"$. Tính lực cản và gia tốc lúc đó. Nêu hạn chế của giả thiết đổi tức thời.
#parbreak() c) Xét riêng mô hình tiếp đất: khối lượng $M$ đang có vận tốc $v$ hướng xuống, dừng trong thời gian $Delta t$; chỉ có trọng lực và phản lực đất. Tìm phản lực trung bình và giải thích tác động của việc tăng thời gian dừng với cùng $v$.],
  type: "essay",
  lines: 12,
  sol: [a) $v_("th") = sqrt(frac(M g, D)) = 7 thin "m/s"$.
#parbreak() b) $F_c = 18 times 40^2 = 28800 thin "N"$ hướng lên; $P = 882 thin "N"$. Gia tốc hướng lên có độ lớn
$ a = frac(F_c - M g, M) = "310,2" thin "m/s"^2. $
#align(center, bai-14-hinh("luc-du"))
Mô hình mở tức thời tạo lực rất lớn; dù thực triển khai trong thời gian hữu hạn, hệ số cản thay đổi. Không coi kết quả là gia tốc hạ cánh thực tế.
#parbreak() c) Chọn chiều dương lên: $(overline(N) - M g) Delta t = M v$, nên
$ overline(N) = M g + frac(M v, Delta t). $
Với cùng biến thiên vận tốc, tăng thời gian dừng làm giảm phần lực trung bình vượt trọng lượng. $frac(Delta p, Delta t)$ là hợp lực trung bình, không phải riêng phản lực đất; bài không đưa hướng dẫn kĩ thuật tiếp đất.],
)


// ESSAY-03
#vp-question(
  [Trong mô hình bay thẳng đều nằm ngang, máy bay có $M = 240 thin "t"$. Lực đẩy và lực cản nằm ngang; bỏ lực nổi. Tốc độ đối với không khí là $v = 250 thin "m/s"$. Tổng diện tích cánh $S = 440 thin "m"^2$, khối lượng riêng không khí $rho = "0,41" thin "kg/m"^3$. Lấy $g = "9,8" thin "m/s"^2$.
    #parbreak() a) Tính lực nâng khí động học $F_"nâng"$ và hệ số lực nâng $C_L$ ($F_"nâng" = frac(1, 2) C_L rho S v^2$).
    #parbreak() b) Khi đi vào vùng khí loãng $rho' = "0,35" thin "kg/m"^3$, để duy trì $F_"nâng"$ không đổi (giữ $C_L$ cố định), tốc độ $v'$ phải là bao nhiêu?
  ],
  type: "essay",
  lines: 12,
  sol: [a) $F_"nâng" = M g = 240000 times "9,8" = "2,352" times 10^6 thin "N"$.
    Từ $F_"nâng" = frac(1, 2) C_L rho S v^2 => C_L = frac(2 times "2,352" times 10^6, "0,41" times 440 times 250^2) = frac("4,704" times 10^6, "1,1275" times 10^7) approx "0,417"$.
    #parbreak() b) Để $F_"nâng"$ không đổi: $rho v^2 = rho' (v')^2 => v' = v sqrt(frac(rho, rho')) = 250 sqrt(frac("0,41", "0,35")) approx "270,6" thin "m/s"$.],
)

// ESSAY-04
#vp-question(
  [Bi bán kính $r = ("2,00" plus.minus "0,05") thin "mm"$ rơi trong dầu đứng yên. Sau khi chuyển động đã ổn định, đo thời gian qua đoạn $h = ("0,400" plus.minus "0,001") thin "m"$. Năm giá trị thời gian (s): 2,02; 1,98; 2,01; 2,00; 1,99. Sai số dụng cụ thời gian là $"0,01" thin "s"$.
#parbreak() a) Tính $overline(t)$, $Delta t$. Theo quy ước bài, $Delta t$ bằng độ lệch tuyệt đối trung bình cộng sai số dụng cụ.
#parbreak() b) Tính $overline(v)_("th")$ và $Delta v_("th")$ bằng quy tắc cộng sai số tương đối của thương. Giữ số chưa làm tròn ở bước trung gian; trình bày sai số với hai chữ số có nghĩa và giá trị trung tâm đến cùng hàng thập phân.
#parbreak() c) Gọi khối lượng riêng của bi và dầu là $rho_("bi")$, $rho_("dầu")$. Giả sử miền Stokes áp dụng và bỏ ảnh hưởng thành bình. Thiết lập công thức độ nhớt $eta$, có xét lực nổi. Nêu dữ kiện còn thiếu nếu muốn tính số của $eta$.],
  type: "essay",
  lines: 14,
  sol: [a) $overline(t) = "2,000" thin "s"$. Độ lệch tuyệt đối trung bình là $"0,012" thin "s"$, nên $Delta t = "0,012" + "0,010" = "0,022" thin "s"$. Viết $t = ("2,000" plus.minus "0,022") thin "s"$.
#parbreak() b) $overline(v)_("th") = frac("0,400", "2,000") = "0,200" thin "m/s"$.
$ frac(Delta v_("th"), overline(v)_("th")) = frac("0,001", "0,400") + frac("0,022", "2,000") = "0,0135". $
$Delta v_("th") = "0,0027" thin "m/s"$, nên
$ v_("th") = ("0,2000" plus.minus "0,0027") thin "m/s". $
Đây là cách ước lượng sai số theo quy ước đề, không tự gán tên một chuẩn đo lường.
#parbreak() c) Với $V = frac(4, 3) pi r^3$, cân bằng cho $6 pi eta r v_("th") = (rho_("bi") - rho_("dầu")) V g$.
$ eta = frac(2 r^2 g (rho_("bi") - rho_("dầu")), 9 v_("th")). $
Muốn tính số cần khối lượng riêng hai môi trường và $g$; phải kiểm tra miền Stokes (số Reynolds nhỏ), nhiệt độ và ảnh hưởng thành bình. Sai số bán kính không tham gia phần b), nhưng phải xét nếu đánh giá sai số của $eta$.],
)


// ESSAY-05
#vp-question(
  [Xe đua trong mô hình chất điểm có $m = 800 thin "kg"$, ôm cua tròn nằm ngang bán kính $R = 100 thin "m"$; $mu_n = "0,75"$, $g = "9,8" thin "m/s"^2$. Chỉ xét giới hạn trượt ngang, bỏ lực cản dọc, không xét lật.
#parbreak() a) Tính tốc độ giới hạn nếu không có lực ép khí động.
#parbreak() b) Cánh gió tạo lực ép xuống $F_d = D_d v^2$ với $D_d = "1,20" thin "kg/m"$ không đổi. Lập điều kiện không trượt và tính tốc độ giới hạn mới.
#parbreak() c) Xét riêng mô hình xe chạy thẳng đều lộn ngược dưới một *trần phẳng nằm ngang*. Giả sử lực khí động hướng lên vẫn có độ lớn $D_d v^2$, bỏ lực cản dọc và không cần lực tiếp tuyến. Tìm ngưỡng tốc độ có thể duy trì tiếp xúc theo mô hình, phân biệt ngưỡng $N = 0$ với tiếp xúc có lực nén $N > 0$.],
  type: "essay",
  lines: 10,
  sol: [a) $mu_n m g = frac(m v_1^2, R)$, nên $v_1 = sqrt(mu_n g R) approx "27,11" thin "m/s"$.
#parbreak() b) $N = m g + D_d v^2$. Điều kiện $frac(m v^2, R) <= mu_n(m g + D_d v^2)$ cho
$ v^2 (frac(m, R) - mu_n D_d) <= mu_n m g. $
Hệ số trong ngoặc bằng $"7,1" thin "kg/m" > 0$; vì vậy
$ v_2 = sqrt(frac(5880, "7,1")) approx "28,78" thin "m/s". $
#align(center, bai-14-hinh("luc-cua"))
c) Lực khí động hướng lên, trọng lực và phản lực trần hướng xuống:
$ N = D_d v^2 - m g. $
#align(center, bai-14-hinh("luc-tran"))
Ngưỡng $N = 0$ là $v_* = sqrt(frac(m g, D_d)) approx "80,83" thin "m/s"$. Muốn có lực nén thực sự phải $v > v_*$. Tại ngưỡng, giới hạn ma sát cũng bằng 0. Mô hình không chứng minh xe thực chạy được trên trần: chưa xét khí động gần trần, lực kéo thắng cản, nguồn động lực và điều kiện vận hành; không áp dụng công thức trần phẳng cho trần cong.],
)


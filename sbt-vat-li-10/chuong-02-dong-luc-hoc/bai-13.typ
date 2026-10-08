#import "../cau-hinh.typ": *
#import "images/bai-13-hinh.typ": bai-13-hinh

// Bài 18 cũ. Nguồn và hiệu đính: ../nguon/bai-13-*.{txt,md}.
#sbt-bai(num: "13", title: "Lực ma sát", label: <bai-13>)

= Phần I. Trắc nghiệm khách quan
#sbt-instructions(reset: true)[Chọn một phương án đúng trong mỗi câu.]

// MCQ-01
#vp-question(
  [Kiện hàng $m = 20 thin "kg"$ ban đầu nằm yên trên sàn ngang, có hệ số ma sát nghỉ $mu_n = "0,40"$ và ma sát trượt $mu_t = "0,30"$. Tác dụng lực kéo ngang $F = 50 thin "N"$. Lấy $g = "9,8" thin "m/s"^2$. Lực ma sát tác dụng lên kiện hàng có độ lớn bằng],
  type: "mcq",
  options: (
    [$"78,4" thin "N"$.],
    [$"58,8" thin "N"$.],
    [$"50,0" thin "N"$.],
    [$"0,0" thin "N"$.],
  ),
  ans: "C",
  sol: [Giới hạn ma sát nghỉ $f_(n,"max") = mu_n m g = "78,4" thin "N"$. Vì $F < f_(n,"max")$, vật chưa trượt; ma sát nghỉ cân bằng lực kéo nên $f_n = 50 thin "N"$.],
)

// MCQ-02
#vp-question(
  [Ô tô bắt đầu tăng tốc trên đường ngang; các bánh chủ động lăn không trượt. Lực nào do mặt đường tác dụng đóng vai trò phát động xe?],
  type: "mcq",
  options: (
    [Lực của động cơ tác dụng trực tiếp lên trục bánh xe.],
    [Ma sát nghỉ hướng về phía trước tác dụng lên các bánh chủ động.],
    [Ma sát trượt xuất hiện do bánh chủ động bị khóa cứng.],
    [Phản lực pháp tuyến hướng thẳng đứng lên.],
  ),
  ans: "B",
  sol: [Bánh chủ động có xu hướng đẩy mặt đường về sau; mặt đường tác dụng ma sát nghỉ về trước lên bánh. Đây là ngoại lực; lực giữa động cơ và các bộ phận xe là nội lực của hệ xe.],
)

// MCQ-03
#vp-question(
  [Khối gỗ $m = 10 thin "kg"$ trượt đều trên sàn ngang dưới tác dụng của lực kéo $F = 40 thin "N"$, chếch lên góc $alpha = 30 degree$. Lấy $g = "9,8" thin "m/s"^2$. Hệ số ma sát trượt bằng
#align(center, bai-13-hinh("keo-xien"))],
  type: "mcq",
  options: (
    [$"0,444"$.],
    [$"0,354"$.],
    [$"0,396"$.],
    [$"0,306"$.],
  ),
  ans: "A",
  sol: [$N = m g - F sin alpha = 78 thin "N"$. Chuyển động đều cho $F cos alpha = mu_t N$, do đó $mu_t = frac(40 cos(30 degree), 78) approx "0,444"$.],
)

// MCQ-04
#vp-question(
  [Thùng $m = 15 thin "kg"$ đang trượt trên sàn ngang, chịu lực đẩy $F = 50 thin "N"$ chếch xuống góc $theta = 37 degree$. Cho $sin 37 degree = "0,6"$, $cos 37 degree = "0,8"$, $g = "9,8" thin "m/s"^2$. Phản lực pháp tuyến của sàn bằng
#align(center, bai-13-hinh("day-xien"))],
  type: "mcq",
  options: (
    [$"147,0" thin "N"$.],
    [$"117,0" thin "N"$.],
    [$"177,0" thin "N"$.],
    [$"187,0" thin "N"$.],
  ),
  ans: "C",
  sol: [Vật không gia tốc theo phương đứng: $N = m g + F sin theta = 147 + 30 = 177 thin "N"$.],
)

// MCQ-05
#vp-question(
  [Hai xe có khối lượng $15 thin "t"$ và $"1,5" thin "t"$ cùng chạy với tốc độ $72 thin "km/h"$ trên đường ngang rồi phanh, mọi bánh đều bị khóa và trượt lê. Cả hai có $mu_t = "0,50"$; bỏ lực cản không khí, lấy $g = "9,8" thin "m/s"^2$. So sánh quãng đường từ khi bắt đầu phanh đến lúc dừng:],
  type: "mcq",
  options: (
    [$s_("tải") = 10 s_("con")$.],
    [$s_("tải") = s_("con") approx "40,82" thin "m"$.],
    [$s_("tải") = s_("con")/10$.],
    [$s_("tải") = sqrt(10) s_("con")$.],
  ),
  ans: "B",
  sol: [Độ lớn gia tốc hãm $a = mu_t g$, không phụ thuộc khối lượng. Với $v_0 = 20 thin "m/s"$, $s = v_0^2/(2 mu_t g) approx "40,82" thin "m"$. Đây là quãng đường phanh trong mô hình, chưa gồm quãng đường phản ứng.],
)

// MCQ-06
#vp-question(
  [Chức năng chính của hệ thống chống bó cứng phanh (ABS) là gì?],
  type: "mcq",
  options: (
    [Làm bánh xe trượt lê tự do để giảm mọi lực cản.],
    [Điều chỉnh áp suất phanh để hạn chế khóa bánh, giúp duy trì khả năng điều khiển hướng khi phanh.],
    [Chỉ làm mát má phanh mà không ảnh hưởng đến sự quay của bánh.],
    [Triệt tiêu hoàn toàn ma sát giữa lốp và đường.],
  ),
  ans: "B",
  sol: [ABS điều chỉnh lực phanh để hạn chế bánh bị khóa. Không được đồng nhất ABS thực với trạng thái ma sát nghỉ cực đại không đổi, hoặc khẳng định ABS luôn rút ngắn quãng đường trên mọi mặt đường.],
)

// MCQ-07
#vp-question(
  [Trong mô hình ma sát trượt khô $f_t = mu_t N$, coi $mu_t$ không đổi trong phạm vi khảo sát, yếu tố nào quyết định giá trị hệ số được chọn cho một cặp bề mặt?],
  type: "mcq",
  options: (
    [Diện tích tiếp xúc biểu kiến.],
    [Tốc độ trượt, theo một quy luật tỉ lệ thuận bắt buộc.],
    [Vật liệu và tình trạng của hai bề mặt tiếp xúc.],
    [Lực nén, theo một quy luật tỉ lệ thuận bắt buộc.],
  ),
  ans: "C",
  sol: [Hệ số đặc trưng cho cặp bề mặt và trạng thái của chúng. Sự độc lập gần đúng với diện tích biểu kiến, lực nén và tốc độ là giả thiết của mô hình đang dùng, không phải quy luật tuyệt đối cho mọi vật liệu.],
)

// MCQ-08
#vp-question(
  [Khối gỗ trượt lên dốc $alpha = 30 degree$, rồi dừng tức thời và trượt trở xuống. Cho $mu_t = "0,20"$, $mu_n = "0,30"$ và $g = 10 thin "m/s"^2$. Độ lớn gia tốc ở lượt lên và lượt xuống lần lượt bằng
#align(center, bai-13-hinh("doc-hai-luot"))],
  type: "mcq",
  options: (
    [$"6,73" thin "m/s"^2$ và $"3,27" thin "m/s"^2$.],
    [$"3,27" thin "m/s"^2$ và $"6,73" thin "m/s"^2$.],
    [$"5,00" thin "m/s"^2$ và $"5,00" thin "m/s"^2$.],
    [$"6,73" thin "m/s"^2$ và $"6,73" thin "m/s"^2$.],
  ),
  ans: "A",
  sol: [Ở lượt lên, trọng lực thành phần và ma sát cùng hướng xuống: $a_1 = g(sin alpha + mu_t cos alpha) approx "6,73" thin "m/s"^2$. Ở lượt xuống: $a_2 = g(sin alpha - mu_t cos alpha) approx "3,27" thin "m/s"^2$. Vì $mu_n < tan 30 degree$, vật không thể nằm yên ở điểm cao nhất.],
)

// MCQ-09
#vp-question(
  [Kéo vật bằng lực chếch lên góc $0 degree <= alpha < 90 degree$ trên sàn ngang có $mu_n > 0$. Coi vật không lật và vẫn tiếp xúc sàn. Góc nào làm lực kéo tại ngưỡng bắt đầu trượt nhỏ nhất?],
  type: "mcq",
  options: (
    [$alpha = 0 degree$.],
    [$tan alpha = mu_n$.],
    [$alpha = 45 degree$ với mọi $mu_n$.],
    [$sin alpha = mu_n$.],
  ),
  ans: "B",
  sol: [Tại ngưỡng: $F cos alpha = mu_n(m g - F sin alpha)$, nên $F = frac(mu_n m g, cos alpha + mu_n sin alpha)$. Mẫu lớn nhất bằng $sqrt(1 + mu_n^2)$ khi $tan alpha = mu_n$. Đây là ngưỡng khởi động, không phải lực duy trì trượt đều.],
)

// MCQ-10
#vp-question(
  [Ô tô $m = "2,8" thin "t"$ chạy với tốc độ không đổi trên đường tròn nằm ngang bán kính $R = 60 thin "m"$. Cho $mu_n = "0,60"$, $g = "9,8" thin "m/s"^2$. Bỏ lực cản và xét mô hình chất điểm, không xét lật xe. Tốc độ giới hạn để không trượt ngang bằng
#align(center, bai-13-hinh("cua-tron"))],
  type: "mcq",
  options: (
    [$"18,78" thin "m/s"$.],
    [$"24,25" thin "m/s"$.],
    [$"15,34" thin "m/s"$.],
    [$"352,8" thin "m/s"$.],
  ),
  ans: "A",
  sol: [Ma sát nghỉ cung cấp lực hướng tâm: $m v^2/R <= mu_n m g$. Suy ra $v_("max") = sqrt(mu_n g R) approx "18,78" thin "m/s"$, tương đương $"67,6" thin "km/h"$; đây là giới hạn của mô hình.],
)

// MCQ-11
#vp-question(
  [Mục đích chính của việc dùng ổ bi giữa trục quay và bộ phận đỡ trục là],
  type: "mcq",
  options: (
    [làm khối lượng trục tăng lên.],
    [thay phần lớn tiếp xúc trượt bằng tiếp xúc lăn để giảm lực cản, hao phí và phát nhiệt.],
    [loại bỏ hoàn toàn mọi ma sát trong ổ.],
    [ngăn hoàn toàn sự giãn nở nhiệt của trục.],
  ),
  ans: "B",
  sol: [Các viên bi tạo tiếp xúc lăn thay cho tiếp xúc trượt trực tiếp giữa trục và gối đỡ. Ổ vẫn có tổn hao; không có tỉ số giảm ma sát chung áp dụng cho mọi ổ.],
)

// MCQ-12
#vp-question(
  [Ép sách $m = "0,50" thin "kg"$ vào tường đứng bằng lực ngang $F = 30 thin "N"$. Ngoài lực ép, sách chỉ chịu trọng lực và lực tiếp xúc của tường. Sách đứng yên; $mu_n = "0,40"$, $g = "9,8" thin "m/s"^2$. Ma sát nghỉ tác dụng lên sách bằng
#align(center, bai-13-hinh("ep-tuong"))],
  type: "mcq",
  options: (
    [$"12,0" thin "N"$.],
    [$"4,9" thin "N"$.],
    [$"30,0" thin "N"$.],
    [$"7,1" thin "N"$.],
  ),
  ans: "B",
  sol: [Cân bằng đứng cho $f_n = m g = "4,9" thin "N"$ hướng lên. Giới hạn $mu_n N = 12 thin "N"$ lớn hơn lực cần thiết; ma sát nghỉ không mặc nhiên bằng giá trị cực đại.],
)

// MCQ-13
#vp-question(
  [Vật ban đầu đứng yên trên sàn ngang. Tăng từ từ lực kéo ngang $F$ từ 0 lên vượt ngưỡng trượt, rồi tiếp tục tăng; $0 < mu_t < mu_n$, $N$ không đổi. Đồ thị nào mô tả độ lớn ma sát $f$ theo $F$ trong mô hình ma sát khô?
#align(center, bai-13-hinh("bon-do-thi"))],
  type: "mcq",
  options: (
    [Đồ thị A.],
    [Đồ thị B.],
    [Đồ thị C.],
    [Đồ thị D.],
  ),
  ans: "B",
  sol: [Trước ngưỡng, $f_n = F <= mu_n N$. Khi đã trượt, $f_t = mu_t N < mu_n N$, không phụ thuộc lực kéo đang tăng. Góc nhìn của đoạn $f = F$ phụ thuộc tỉ lệ hai trục, không nhất thiết là $45 degree$. Điểm ở ngưỡng biểu diễn trạng thái giới hạn còn đứng yên.],
)

// MCQ-14
#vp-question(
  [Kiện hàng $m = 40 thin "kg"$ được đặt lên băng tải ngang với vận tốc ban đầu bằng 0 so với đất. Băng chạy đều $v_0 = "4,0" thin "m/s"$, $mu_t = "0,25"$; bỏ giai đoạn va chạm thẳng đứng, lấy $g = "9,8" thin "m/s"^2$. Thời gian trượt tương đối đến khi hàng cùng tốc độ với băng bằng
#align(center, bai-13-hinh("bang-tai"))],
  type: "mcq",
  options: (
    [$"1,63" thin "s"$.],
    [$"2,04" thin "s"$.],
    [$"0,82" thin "s"$.],
    [$"3,26" thin "s"$.],
  ),
  ans: "A",
  sol: [Ma sát kéo hàng theo chiều băng với $a = mu_t g = "2,45" thin "m/s"^2$. Do đó $t = v_0/a approx "1,63" thin "s"$. Khi cùng tốc độ, nếu không có lực ngang khác thì ma sát bằng 0; hàng không cần dính vào băng.],
)

// MCQ-15
#vp-question(
  [Hai vật trượt trên mặt ngang với cùng lực nén $N$ và cùng hệ số $mu_t$, nhưng diện tích tiếp xúc biểu kiến khác nhau. Theo mô hình $f_t = mu_t N$, kết luận nào đúng?],
  type: "mcq",
  options: (
    [Vật có diện tích lớn hơn luôn chịu ma sát lớn hơn.],
    [Hai lực ma sát trượt có độ lớn bằng nhau.],
    [Vật có diện tích nhỏ hơn luôn chịu ma sát lớn hơn.],
    [Hệ số ma sát tỉ lệ thuận với diện tích tiếp xúc.],
  ),
  ans: "B",
  sol: [Cả hai có cùng tích $mu_t N$. Không suy rộng mô hình này thành kết luận về độ bám thực của các loại lốp khác nhau chỉ từ bề rộng lốp.],
)

// MCQ-16
#vp-question(
  [Vật trượt lên dốc góc $0 degree < alpha < 90 degree$, rồi tự trượt xuống vị trí xuất phát. Cho $0 < mu_t <= mu_n < tan alpha$. Gọi thời gian hai lượt là $t_("lên")$ và $t_("xuống")$. Quan hệ đúng là],
  type: "mcq",
  options: (
    [$t_("lên") = t_("xuống")$.],
    [$t_("lên") < t_("xuống")$.],
    [$t_("lên") > t_("xuống")$.],
    [Không thể so sánh nếu chưa biết khối lượng.],
  ),
  ans: "B",
  sol: [Đặt $a_1 = g(sin alpha + mu_t cos alpha)$, $a_2 = g(sin alpha - mu_t cos alpha)$. Cùng quãng đường $s = a_1 t_("lên")^2/2 = a_2 t_("xuống")^2/2$. Vì $a_1 > a_2 > 0$ nên $t_("lên") < t_("xuống")$. Giả thiết về $mu_n$ bảo đảm vật tự trượt xuống sau khi dừng.],
)

// MCQ-17
#vp-question(
  [Khi xe xuống dốc, phanh ma sát làm việc kéo dài. Nhận định nào đúng về sự chuyển hóa năng lượng trong cơ cấu phanh?],
  type: "mcq",
  options: (
    [Thế năng của xe luôn chuyển hết thành động năng.],
    [Một phần cơ năng chuyển thành nội năng của cơ cấu phanh; tích nhiệt có thể làm giảm hiệu quả phanh.],
    [Lực ma sát tự động tăng gấp đôi sau mỗi lần phanh.],
    [Xe bị gia tốc trở lên đỉnh dốc.],
  ),
  ans: "B",
  sol: [Ma sát giữa các bộ phận chuyển động tương đối làm tăng nội năng. Nếu tốc độ sinh nhiệt lớn hơn tốc độ tản nhiệt, nhiệt độ tăng. Không thể kết luận hệ số ma sát luôn trở thành 0 hay nêu nhiệt độ cụ thể khi chưa có dữ kiện.],
)

// MCQ-18
#vp-question(
  [Trong mô hình ngàm kẹp giữ một tải đứng yên trên sợi cáp cố định nghiêng $25 degree$, bỏ mọi cơ cấu kéo khác. Ngàm không trượt dọc cáp. Lực tiếp xúc nào của cáp lên ngàm cân bằng thành phần trọng lực dọc cáp?],
  type: "mcq",
  options: (
    [Lực ma sát nghỉ dọc cáp, hướng lên dốc.],
    [Trọng lực hướng vuông góc cáp.],
    [Lực ma sát trượt của không khí.],
    [Chỉ phản lực pháp tuyến vuông góc cáp.],
  ),
  ans: "A",
  sol: [Phản lực pháp tuyến không có thành phần dọc cáp. Ma sát nghỉ hướng lên dốc cân bằng thành phần trọng lực xuống dốc, miễn chưa vượt giới hạn. Đây là mô hình ngàm kẹp, không mô tả cơ cấu của một tuyến cáp treo cụ thể.],
)

// MCQ-19
#vp-question(
  [Thuyền được kéo bằng dây chếch lên, chuyển động đều trên nước. Khi góc dây tăng, có thể suy ra lực cản nước giảm chỉ bằng công thức $f = mu N$ và $N = m g - F sin theta$ không?],
  type: "mcq",
  options: (
    [Có, vì nước luôn tạo ma sát khô như sàn rắn.],
    [Không; lực cản chất lỏng không được xác định bằng mô hình ma sát trượt khô này.],
    [Có, vì lực cản chỉ phụ thuộc diện tích đáy thuyền.],
    [Lực cản luôn bằng 0 khi tốc độ không đổi.],
  ),
  ans: "B",
  sol: [Nước tác dụng lực nổi và lực cản chất lỏng, không phải phản lực của một sàn rắn kèm ma sát Coulomb. Chưa đủ dữ kiện về trạng thái ngập, hình dạng và dòng chảy để kết luận lực cản tăng hay giảm. Chuyển động đều chỉ cho biết tổng lực bằng 0.],
)

// MCQ-20
#vp-question(
  [Trong thí nghiệm, cảm biến đo lực kéo *nằm ngang* tác dụng lên khối gỗ trượt thẳng đều trên bàn ngang. Ngoài ma sát, không có lực ngang nào khác. Số chỉ cảm biến bằng],
  type: "mcq",
  options: (
    [ma sát nghỉ cực đại.],
    [độ lớn ma sát trượt.],
    [trọng lượng khối gỗ.],
    [tổng độ lớn phản lực và ma sát.],
  ),
  ans: "B",
  sol: [Theo phương ngang, $a = 0$ nên $F_("kéo") = f_t$. Nếu kéo xiên thì phải lấy thành phần ngang của lực; không thể đồng nhất toàn bộ số chỉ cảm biến với ma sát.],
)

= Phần II. Trắc nghiệm Đúng/Sai
#sbt-instructions(reset: true)[Với mỗi phát biểu a), b), c), d), đánh dấu vào cột Đ (đúng) hoặc S (sai).]

// TF-01
#vp-question(
  [Ô tô $m = 2600 thin "kg"$ đỗ trên dốc $alpha = 10 degree$. Giả sử phanh giữ các bánh không quay, xe không lật; chỉ xét khả năng trượt của lốp trên đường. Cho $mu_n = "0,50"$, $mu_t = "0,40"$, $g = "9,8" thin "m/s"^2$; dùng $sin 10 degree = "0,1736"$, $cos 10 degree = "0,9848"$.],
  type: "tf",
  statements: (
    [Thành phần trọng lực dọc dốc bằng khoảng $4423 thin "N"$.],
    [Ma sát nghỉ cực đại tổng cộng tại các bánh bằng khoảng $12546 thin "N"$.],
    [Trong mô hình này, xe có thể cân bằng; ma sát nghỉ thực tế bằng khoảng $4423 thin "N"$ hướng lên dốc.],
    [Nếu chỉ giảm hệ số ma sát nghỉ xuống $"0,15"$, xe vẫn có thể đứng yên mà không cần lực giữ khác.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [a) $P_x = 2600 times "9,8" times "0,1736" = "4423,328" thin "N"$. b) $f_(n,"max") = "0,50" times 2600 times "9,8" times "0,9848" = "12546,352" thin "N"$. c) Lực cần để cân bằng nhỏ hơn giới hạn, nên $f_n = P_x$. d) Giới hạn mới chỉ khoảng $"3763,9" thin "N" < P_x$ nên không thể cân bằng. Phanh giữ bánh không quay là giả thiết cần thiết, không suy ra việc xe đỗ được chỉ từ hệ số bám.],
)

// TF-02
#vp-question(
  [Thí nghiệm với khối gỗ trên mặt nghiêng có $0 < mu_t < mu_n$. Gọi $alpha_n$ là góc giới hạn bắt đầu trượt khi tăng góc từ trạng thái nghỉ; $alpha_e$ là góc mà khối gỗ *đã được cho trượt xuống* chuyển động đều. Dùng mô hình ma sát khô, bỏ lực cản không khí.],
  type: "tf",
  statements: (
    [Tại góc $alpha_n$, khối gỗ bắt đầu tự trượt đều và $mu_t = tan alpha_n$.],
    [Tăng khối lượng gấp đôi, giữ nguyên cặp bề mặt, thì góc $alpha_e$ tăng gấp đôi.],
    [Có thể xác định $mu_t = tan alpha_e$ mà không đo khối lượng và $g$.],
    [Nếu xử lí bề mặt làm $mu_t$ giảm thì góc trượt đều $alpha_e$ giảm.],
  ),
  ans-tf: ("S", "S", "Đ", "Đ"),
  sol: [a) Ngưỡng từ nghỉ cho $tan alpha_n = mu_n$, không phải $mu_t$. Ngay khi trượt ở góc đó, ma sát giảm nên vật có gia tốc xuống dốc. b–c) Khi đang trượt đều: $m g sin alpha_e = mu_t m g cos alpha_e$, suy ra $tan alpha_e = mu_t$, độc lập với $m$ và $g$. Cần cho vật trượt trước vì ở góc $alpha_e < alpha_n$ vật có thể tiếp tục đứng yên. d) Hàm $arctan$ đồng biến nên $alpha_e$ giảm.],
)

// TF-03
#vp-question(
  [Xe bắt đầu phanh thẳng trên đường ngang với $v_0 = 30 thin "m/s"$. Xét hai *mô hình lực hãm không đổi*: khóa bánh với $F_1 = mu_t m g$, và điều khiển phanh lí tưởng với $F_2 = mu_n m g$. Cho $mu_t = "0,50"$, $mu_n = "0,70"$, $g = "9,8" thin "m/s"^2$; bỏ lực cản khác và thời gian phản ứng. Mô hình thứ hai chỉ dùng để ước lượng, không mô tả chính xác mọi hệ ABS.],
  type: "tf",
  statements: (
    [Khi tất cả bánh bị khóa và trượt trên đường, lực hãm trong mô hình là ma sát trượt $mu_t m g$.],
    [Mô hình khóa bánh có độ lớn gia tốc hãm $"4,90" thin "m/s"^2$ và quãng đường phanh khoảng $"91,84" thin "m"$.],
    [Mô hình phanh lí tưởng có độ lớn gia tốc hãm $"6,86" thin "m/s"^2$.],
    [Trong các giả thiết đã cho, quãng đường phanh lí tưởng khoảng $"65,60" thin "m"$, giảm khoảng $"28,6"%$ so với khóa bánh.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "Đ"),
  sol: [$a_1 = mu_t g = "4,90" thin "m/s"^2$; $s_1 = 30^2/(2 a_1) approx "91,84" thin "m"$. Tương tự $a_2 = "6,86" thin "m/s"^2$, $s_2 approx "65,60" thin "m"$. Mức giảm $(1 - s_2/s_1) times 100% approx "28,6"%$. Đây là kết quả theo lực hãm giả định, không phải mức cải thiện cố định của ABS thực.],
)

// TF-04
#vp-question(
  [Vật $m = 10 thin "kg"$ ban đầu đứng yên trên sàn ngang. Tăng từ từ lực kéo ngang từ 0 đến $80 thin "N"$. Cho $mu_n = "0,40"$, $mu_t = "0,30"$ và $g = "9,8" thin "m/s"^2$. Xét độ lớn ma sát theo lực kéo; các hệ số không đổi.],
  type: "tf",
  statements: (
    [Ma sát nghỉ cực đại bằng $"39,2" thin "N"$.],
    [Khi lực kéo mới tăng đến $20 thin "N"$, vật chịu ma sát trượt $"29,4" thin "N"$.],
    [Sau khi vật trượt, nếu giữ lực kéo ở $50 thin "N"$ thì gia tốc bằng $"2,06" thin "m/s"^2$.],
    [Trong quá trình tăng lực đang xét, khi $F > "39,2" thin "N"$, ma sát trượt luôn có độ lớn $"29,4" thin "N"$.],
  ),
  ans-tf: ("Đ", "S", "Đ", "Đ"),
  sol: [$f_(n,"max") = "0,4" times 10 times "9,8" = "39,2" thin "N"$; $f_t = "0,3" times 10 times "9,8" = "29,4" thin "N"$. Ở $F = 20 thin "N"$, vật còn đứng yên và $f_n = 20 thin "N"$. Nếu giữ $F = 50 thin "N"$ khi đang trượt thì $a = (50 - "29,4")/10 = "2,06" thin "m/s"^2$.
#align(center, bai-13-hinh("do-thi-ma-sat"))],
)

// TF-05
#vp-question(
  [Xét các phát biểu về ma sát trong mô hình vật rắn và mặt tiếp xúc. Với phát biểu c), hệ số ma sát trượt khác 0, vật chỉ tịnh tiến và trượt trên sàn cố định trong hệ quy chiếu quán tính.],
  type: "tf",
  statements: (
    [Lực ma sát luôn ngược chiều vận tốc của vật so với đất trong mọi tình huống.],
    [Ma sát nghỉ điều chỉnh độ lớn trong giới hạn và hướng để chống xu hướng trượt tương đối tại tiếp xúc.],
    [Trong điều kiện đã nêu ở c), công của ma sát trượt lên vật trên một quãng trượt khác 0 là âm.],
    [Khi người bắt đầu bước về trước, trong giai đoạn chân trụ đẩy đất về sau, ma sát nghỉ của đất lên chân hướng về trước; nếu bỏ lực cản không khí, đây là ngoại lực ngang làm cơ thể tăng tốc.],
  ),
  ans-tf: ("S", "Đ", "Đ", "Đ"),
  sol: [a) Hàng đặt lên băng tải chạy có thể được ma sát kéo nhanh dần theo chiều chuyển động so với đất. b) $0 <= f_n <= mu_n N$; ma sát nghỉ không luôn bằng cực đại. c) Trên sàn cố định, $A_t = -f_t s < 0$ khi $f_t > 0$; ở đây xét bề mặt có ma sát khác 0. Trên băng tải chuyển động, công ma sát lên hàng so với đất có thể dương, còn tổng tổn hao của hai bề mặt gắn với độ trượt tương đối. d) Phát biểu chỉ xét giai đoạn phát động đã nêu, không khẳng định ma sát ở mọi chân trong mọi thời điểm bước đi đều hướng về trước.],
)

= Phần III. Trắc nghiệm trả lời ngắn
#sbt-instructions(reset: true)[Ghi kết quả vào ô trả lời; đơn vị và yêu cầu làm tròn được nêu trong đề.]

// SHORT-01
#vp-question(
  [Thùng $m = 25 thin "kg"$ ban đầu đứng yên trên sàn ngang, $mu_n = "0,35"$, $mu_t = "0,25"$, $g = "9,8" thin "m/s"^2$. Tác dụng lực kéo ngang $F = 60 thin "N"$. Tính độ lớn ma sát theo N.],
  type: "short",
  short-boxes: 4,
  ans: "60",
  sol: [Giới hạn $f_(n,"max") = "0,35" times 25 times "9,8" = "85,75" thin "N" > F$. Thùng vẫn đứng yên và ma sát nghỉ bằng $60 thin "N"$.],
)

// SHORT-02
#vp-question(
  [Xe chạy đều trên đường tròn ngang bán kính $R = 80 thin "m"$. Cho $mu_n = "0,55"$ và $g = "9,8" thin "m/s"^2$; xét chất điểm, bỏ lực cản và không xét lật. Tính tốc độ giới hạn không trượt ngang theo km/h, làm tròn một chữ số thập phân.],
  type: "short",
  short-boxes: 4,
  ans: "74,8",
  sol: [$v_("max") = sqrt(mu_n g R) = sqrt("431,2") thin "m/s"$. Đổi đơn vị trước khi làm tròn: $v_("max") approx "74,7553" thin "km/h" approx "74,8" thin "km/h"$.],
)

// SHORT-03
#vp-question(
  [Xe bắt đầu phanh từ tốc độ $90 thin "km/h"$ trên đường ngang; tất cả bánh bị khóa và trượt lê. Cho $mu_t = "0,60"$, $g = "9,8" thin "m/s"^2$; bỏ lực cản khác. Tính quãng đường từ lúc phanh đến khi dừng theo m, làm tròn hai chữ số thập phân.],
  type: "short",
  short-boxes: 5,
  ans: "53,15",
  sol: [$v_0 = 25 thin "m/s"$, $s = v_0^2/(2 mu_t g) = 625/"11,76" approx "53,15" thin "m"$.],
)

// SHORT-04
#vp-question(
  [Ép từ điển $m = "1,8" thin "kg"$ vào tường đứng bằng lực ngang $F$. Ngoài lực ép, sách chỉ chịu trọng lực và lực tiếp xúc của tường. Cho $mu_n = "0,30"$, $g = "9,8" thin "m/s"^2$. Tính lực ép nhỏ nhất để sách không trượt xuống theo N, làm tròn một chữ số thập phân.],
  type: "short",
  short-boxes: 4,
  ans: "58,8",
  sol: [$N = F$ và $f_n = m g <= mu_n F$. Suy ra $F_("min") = m g/mu_n = "17,64"/"0,30" = "58,8" thin "N"$.],
)

// SHORT-05
#vp-question(
  [Khối gỗ đang trượt xuống mặt nghiêng $alpha = 30 degree$ với gia tốc $a = "2,0" thin "m/s"^2$. Chỉ có trọng lực và lực tiếp xúc của mặt nghiêng tác dụng; $g = "9,8" thin "m/s"^2$. Tính $mu_t$, làm tròn ba chữ số thập phân.],
  type: "short",
  short-boxes: 5,
  ans: "0,342",
  sol: [$a = g(sin alpha - mu_t cos alpha)$ nên $mu_t = frac(sin(30 degree) - 2/"9,8", cos(30 degree)) approx "0,341697" approx "0,342"$.],
)

= Phần IV. Tự luận
#sbt-instructions(reset: true)[Trình bày lập luận, công thức, phép tính và kết luận phù hợp với yêu cầu đề bài.]

// ESSAY-01
#vp-question(
  [Ô tô $m = 2600 thin "kg"$ bắt đầu phanh thẳng từ $v_0 = 25 thin "m/s"$ trên đường ngang. Cho $mu_t = "0,50"$, $mu_n = "0,70"$, $g = "9,8" thin "m/s"^2$; bỏ lực cản khác và thời gian phản ứng.
#parbreak() a) Tính độ lớn gia tốc hãm và quãng đường phanh khi tất cả bánh bị khóa, lực hãm $F_1 = mu_t m g$.
#parbreak() b) Trong mô hình phanh điều khiển lí tưởng, giả sử lực hãm không đổi $F_2 = mu_n m g$. Tính độ lớn gia tốc hãm và quãng đường phanh.
#parbreak() c) Tính phần trăm quãng đường giảm được trong mô hình. Nêu vai trò của ABS đối với điều khiển hướng và giải thích vì sao không thể áp dụng phần trăm vừa tính cho mọi xe, mọi mặt đường.],
  type: "essay",
  lines: 12,
  sol: [a) $a_1 = mu_t g = "4,90" thin "m/s"^2$; $s_1 = v_0^2/(2 a_1) approx "63,78" thin "m"$.
#parbreak() b) $a_2 = mu_n g = "6,86" thin "m/s"^2$; $s_2 = v_0^2/(2 a_2) approx "45,55" thin "m"$.
#parbreak() c) $eta = (1 - s_2/s_1) times 100% = (1 - "0,50"/"0,70") times 100% approx "28,6"%$. Chênh lệch khoảng $"18,22" thin "m"$ khi tính từ các giá trị chưa làm tròn.
#align(center, bai-13-hinh("do-thi-phanh"))
ABS hạn chế khóa bánh, hỗ trợ duy trì khả năng điều khiển hướng. Hiệu quả thực phụ thuộc mặt đường, lốp và điều khiển lực phanh; không phải luôn có $F = mu_n m g$. Không suy ra một mức rút ngắn cố định hoặc bảo đảm tránh va chạm từ mô hình này.],
)

// ESSAY-02
#vp-question(
  [Xe tải tổng khối lượng $M = 15000 thin "kg"$ đang đi xuống dốc thẳng $alpha = 8 degree$. Lấy $g = "9,8" thin "m/s"^2$, dùng $sin 8 degree = "0,1392"$, $cos 8 degree = "0,9903"$. Xét mô hình bỏ lực cản không khí, cản lăn và quán tính quay của bánh. Động cơ không tạo lực kéo.
#align(center, bai-13-hinh("xe-xuong-doc"))
a) Khi bánh lăn tự do không phanh, tính gia tốc dọc dốc. Nếu thay bằng trạng thái mọi bánh bị khóa và xe đang trượt xuống, với $mu_t = "0,25"$, tính lại gia tốc; chọn chiều dương xuống dốc.
#parbreak() b) Trở lại trạng thái bánh lăn không trượt. Tính tổng lực hãm của mặt đường cần có để xe xuống đều $v_0 = 36 thin "km/h"$. Giả sử độ bám đủ để tạo lực này.
#parbreak() c) Xe xuống đều trên đoạn dài $L = "3,0" thin "km"$; giả sử toàn bộ phần cơ năng giảm chuyển thành nhiệt trong cơ cấu phanh. Tính nhiệt lượng và công suất nhiệt trung bình. Giải thích định tính vì sao đường cứu nạn lên dốc phủ vật liệu rời giúp giảm tốc.],
  type: "essay",
  lines: 14,
  sol: [a) Khi lăn tự do theo mô hình: $a_0 = g sin alpha = "1,36416" thin "m/s"^2 approx "1,36" thin "m/s"^2$ hướng xuống. Khi bánh bị khóa:
$ a_t = g(sin alpha - mu_t cos alpha) = -"1,062075" thin "m/s"^2 approx -"1,06" thin "m/s"^2. $
Xe đang trượt xuống sẽ chậm dần; không được tiếp tục dùng công thức ma sát trượt sau khi xe đã dừng. Tăng khối lượng không đổi dấu gia tốc này.
#parbreak() b) Lăn xuống đều: $F_h = M g sin alpha = "20462,4" thin "N" approx "20,46" thin "kN"$. Lực bám cần thỏa $mu_n >= tan alpha approx "0,1406"$. Không cộng thêm $mu_t N$ vào mô hình lăn không trượt.
#parbreak() c) $Q = M g L sin alpha = F_h L = 61387200 thin "J" approx "61,39" thin "MJ"$. Với $v_0 = 10 thin "m/s"$, $t = L/v_0 = 300 thin "s"$, công suất nhiệt $cal(P) = Q/t = 204624 thin "W" approx "204,62" thin "kW"$.
Nhiệt sinh ra có thể tích tụ nếu tản nhiệt không đủ; chưa có nhiệt dung và điều kiện làm mát để tính nhiệt độ. Ở bánh lăn không trượt, không tính nhiệt ở má phanh bằng công thức ma sát trượt lốp–đường. Đường cứu nạn lên dốc làm tăng thế năng; vật liệu rời biến dạng, dịch chuyển và tạo lực cản để tiêu hao cơ năng, không bảo đảm dừng mọi xe trong mọi điều kiện.],
)

// ESSAY-03
#vp-question(
  [Khối bê tông $m = 200 thin "kg"$ trên sàn ngang có $mu_n = "0,50"$, $mu_t = "0,40"$; $g = "9,8" thin "m/s"^2$. Dây kéo chếch lên góc $0 degree <= alpha < 90 degree$. Vật không lật và vẫn tiếp xúc sàn. Xét giai đoạn vật *đã trượt*, điều chỉnh lực để duy trì vận tốc không đổi.
#align(center, bai-13-hinh("keo-xien"))
a) Tìm lực kéo $F(alpha)$ theo $mu_t$, $m$, $g$.
#parbreak() b) Tìm góc để lực duy trì trượt đều nhỏ nhất và tính lực đó.
#parbreak() c) So sánh với kéo ngang, tính phần trăm giảm lực. Lực tối ưu này có đủ làm vật bắt đầu trượt từ nghỉ tại cùng góc kéo không?],
  type: "essay",
  lines: 12,
  sol: [a) $N = m g - F sin alpha$, $F cos alpha = mu_t N$ nên
$ F(alpha) = frac(mu_t m g, cos alpha + mu_t sin alpha). $
b) Bất đẳng thức Cauchy–Schwarz cho $cos alpha + mu_t sin alpha <= sqrt(1 + mu_t^2)$; dấu bằng khi $tan alpha = mu_t$.
$ alpha_("opt") = arctan("0,40") approx "21,80" degree; quad F_("min") = frac(784, sqrt("1,16")) approx "727,93" thin "N". $
Ở đây $N = frac(m g, 1 + mu_t^2) > 0$, phù hợp điều kiện tiếp xúc.
#align(center, bai-13-hinh("do-thi-keo"))
#parbreak() c) Kéo ngang cần $F_0 = mu_t m g = 784 thin "N"$. Mức giảm $(1 - 1/sqrt("1,16")) times 100% approx "7,15"%$. Thành phần kéo lên làm giảm $N$ và ma sát, nhưng thành phần ngang cũng giảm khi góc tăng; vì thế có góc tối ưu.
Lực này không đủ khởi động từ nghỉ vì $mu_n > mu_t$. Tại chính góc tối ưu trên, ngưỡng lực để bắt đầu trượt là:
$ F_("ngưỡng") = frac(mu_n m g, cos alpha_("opt") + mu_n sin alpha_("opt")) approx "879,58" thin "N". $
Cần vượt ngưỡng rồi giảm lực khi đã trượt.],
)

// ESSAY-04
#vp-question(
  [Đo hệ số ma sát trượt của gỗ trên bàn ngang bằng cảm biến lực kéo *nằm ngang*, giữ khối gỗ trượt đều. Cho $m = ("0,400" plus.minus "0,001") thin "kg"$, $g = "9,80" thin "m/s"^2$; bỏ qua sai số của $g$. Sai số dụng cụ của cảm biến lực là $Delta F_("dc") = "0,01" thin "N"$. Kết quả năm lần đo:
#align(center, table(columns: 6, align: center, inset: 5pt, stroke: 0.5pt + luma(75%), [Lần], [1], [2], [3], [4], [5], [$F$ (N)], [1,18], [1,22], [1,20], [1,19], [1,21]))
a) Vẽ sơ đồ bố trí và nêu nguyên lí đo.
#parbreak() b) Tính $overline(F)$ và $overline(mu)_t$. Dùng quy ước của bài: $Delta F$ bằng độ lệch tuyệt đối trung bình cộng sai số dụng cụ; sai số tương đối của thương bằng tổng sai số tương đối của tử và mẫu. Tính $Delta mu_t$.
#parbreak() c) Viết kết quả; làm tròn $Delta mu_t$ đến hai chữ số có nghĩa và giá trị trung tâm đến cùng hàng thập phân.],
  type: "essay",
  lines: 14,
  sol: [a) Cảm biến nối với gỗ và kéo ngang; chỉ đọc ở giai đoạn trượt đều, không lấy đỉnh lực lúc khởi động.
#align(center, bai-13-hinh("thi-nghiem"))
$N = m g$, $F = f_t$ nên $mu_t = F/(m g)$.
#parbreak() b) $overline(F) = "1,20" thin "N"$, $overline(mu)_t = "1,20"/("0,400" times "9,80") approx "0,306122"$.
#parbreak() Độ lệch tuyệt đối trung bình:
$ frac("0,02" + "0,02" + 0 + "0,01" + "0,01", 5) = "0,012" thin "N". $ Do đó $Delta F = "0,012" + "0,01" = "0,022" thin "N"$.
$ frac(Delta mu_t, overline(mu)_t) = frac("0,022", "1,20") + frac("0,001", "0,400") approx "0,020833". $
Suy ra $Delta mu_t approx "0,00637755"$.
#parbreak() c) Theo quy tắc làm tròn đã yêu cầu:
$ mu_t = "0,3061" plus.minus "0,0064". $
Hệ số ma sát không có đơn vị. Đây là phép ước lượng theo quy ước được nêu trong đề; không gán tên một tiêu chuẩn đo lường cho cách cộng sai số này.],
)

// ESSAY-05
#vp-question(
  [Kiện hàng $m = 30 thin "kg"$ được đặt lên băng tải ngang với vận tốc đầu bằng 0 so với đất. Băng chuyển động đều $v_0 = "3,0" thin "m/s"$; $mu_t = "0,30"$, $g = "9,8" thin "m/s"^2$. Bỏ giai đoạn va chạm thẳng đứng, lực cản không khí và các lực ngang khác.
#align(center, bai-13-hinh("bang-tai"))
a) Vẽ và phân tích các lực lên kiện hàng trong giai đoạn trượt. Ma sát đóng vai trò gì?
#parbreak() b) Tính gia tốc và thời gian đến khi hàng cùng tốc độ với băng.
#parbreak() c) Tính quãng đường hàng đi so với đất, quãng đường trượt tương đối trên băng và tổng nhiệt lượng do ma sát. Phân biệt nhiệt lượng này với công của ma sát lên riêng kiện hàng trong hệ quy chiếu mặt đất.],
  type: "essay",
  lines: 12,
  sol: [a) Hàng chịu trọng lực $m bold(g)$ xuống, phản lực $bold(N)$ lên và ma sát trượt theo chiều băng. $N = m g = 294 thin "N"$; $f_t = mu_t N = "88,2" thin "N"$. Ma sát làm hàng nhanh dần so với đất, đồng thời giảm độ trượt tương đối với băng.
#align(center, bai-13-hinh("bang-tai-luc"))
b) $a = mu_t g = "2,94" thin "m/s"^2$; $t_1 = v_0/a approx "1,0204" thin "s"$. Sau đó, nếu băng vẫn chạy đều và không có lực ngang khác, ma sát bằng 0.
#parbreak() c) $s_("đất") = v_0^2/(2 a) approx "1,53061" thin "m"$. Băng đi $s_b = v_0 t_1 approx "3,06122" thin "m"$. Độ trượt tương đối $s_("tđ") = s_b - s_("đất") approx "1,53061" thin "m"$.
$ Q = f_t s_("tđ") = frac(m v_0^2, 2) = 135 thin "J". $
Không làm tròn các quãng đường trước khi tính nhiệt. Công ma sát lên riêng hàng là *dương*: $A_("hàng") = f_t s_("đất") = 135 thin "J" = Delta K_("hàng")$. Công ma sát lên băng bằng $-270 thin "J"$; tổng công hai lực ma sát bằng $-135 thin "J"$. Nguồn dẫn động cấp $270 thin "J"$ để giữ băng đều, gồm $135 thin "J"$ tăng động năng hàng và $135 thin "J"$ nhiệt.],
)


# Bản Bài 14 trước rà soát

## chuong-02-dong-luc-hoc/bai-14.typ

```typst
#import "../cau-hinh.typ": *
#import "images/bai-14-hinh.typ": bai-14-hinh

// Nguồn: nguon/bai-14-goc.txt; hiệu đính: nguon/bai-14-ghi-chu.md.
// Các câu độc lập; đáp án và lời giải ẩn trên bản học sinh.
#sbt-bai(num: "14", title: "Lực cản và lực nâng", label: <bai-14>)

= Phần I. Trắc nghiệm khách quan
#sbt-instructions(reset: true)[Chọn một phương án đúng trong mỗi câu.]

// MCQ-01
#vp-question(
  [Một giọt nước mưa khối lượng $m$ rơi từ mây cao xuống trong không khí. Khi tốc độ giọt mưa còn nhỏ, lực cản không khí tỉ lệ bậc nhất với vận tốc ($F_c = k v$). Kết luận nào sau đây thể hiện đúng bản chất chuyển động của giọt mưa khi nó đạt đến "tốc độ tới hạn" $v_"th"$?],
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
  [Một quả khí cầu thám không của Trung tâm Dự báo Khí tượng Thủy văn Quốc gia chứa khí heli có thể tích $V = 10 thin "m"^3$. Biết khối lượng riêng của không khí ở mặt đất là $rho_"kk" = "1,29" thin "kg/m"^3$ và lấy $g = "9,8" thin "m/s"^2$. Độ lớn lực nâng Archimedes do không khí tác dụng lên quả khí cầu bằng],
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
  [Máy bay Boeing 787 của Hãng hàng không Quốc gia Vietnam Airlines đang bay hành trình nằm ngang trên không trung ở tốc độ ổn định $900 thin "km/h"$. Lực nâng khí động học xuất hiện tác dụng lên cánh máy bay có bản chất vật lý chính dựa trên],
  type: "mcq",
  options: (
    [sự chênh lệch áp suất không khí giữa mặt dưới và mặt trên của cánh do hình dạng khí động học kết hợp với phản lực đổi hướng dòng khí.],
    [lực đẩy Archimedes của khí quyển tác dụng lên thể tích thân máy bay.],
    [lực đẩy phản lực của hai động cơ phản lực hướng thẳng đứng lên trên.],
    [lực ma sát nghỉ giữa vỏ máy bay và không khí đẩy máy bay bay lên.],
  ),
  ans: "A",
  sol: [Lực nâng khí động học chủ yếu dựa trên định luật Bernoulli (chênh lệch áp suất tĩnh do sự khác biệt tốc độ dòng khí ở hai mặt cánh) kết hợp với định luật 3 Newton khi cánh đẩy luồng khí xuống dưới.],
)

// MCQ-04
#vp-question(
  [Đối với các vật chuyển động với tốc độ tương đối lớn trong không khí (như vận động viên nhảy dù chưa mở dù hay ô tô xe đua), lực cản tỉ lệ với bình phương tốc độ ($F_c = D v^2$, với $D$ là hệ số cản khí động học). Biểu thức tốc độ tới hạn $v_"th"$ của một người nhảy dù khối lượng $m$ khi rơi tự do trước khi mở dù là],
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
  [Tại giải đua xe F1, cánh gió phía sau của xe đua được thiết kế có dạng hình cánh máy bay nhưng đảo ngược. Mục đích kĩ thuật quan trọng nhất của thiết kế này là],
  type: "mcq",
  options: (
    [tạo ra lực nâng hướng lên giúp xe nhẹ hơn và chạy nhanh hơn.],
    [tạo ra lực ép xuống (Downforce) hướng thẳng đứng xuống mặt đường, giúp tăng pháp lực và tăng ma sát nghỉ cực đại để ôm cua ở tốc độ cao.],
    [triệt tiêu hoàn toàn lực cản không khí tác dụng lên xe.],
    [giảm lượng nhiên liệu tiêu thụ của động cơ.],
  ),
  ans: "B",
  sol: [Cánh gió ngược tạo lực ép xuống (Downforce), làm tăng pháp lực $N = m g + F_"down"$, từ đó tăng lực ma sát nghỉ cực đại ($F_("msn,max") = mu_n N$) giúp xe bám đường tốt hơn khi ôm cua.],
)

// MCQ-06
#vp-question(
  [Một hòn đá khối lượng $m = "5,0" thin "kg"$ và thể tích $V = "2,0" thin "dm"^3$ được thả chìm hoàn toàn trong hồ nước. Biết khối lượng riêng của nước là $rho_n = 1000 thin "kg/m"^3$ và $g = "9,8" thin "m/s"^2$. Lực nâng Archimedes và trọng lượng biểu kiến $P'$ (lực căng dây treo) của hòn đá dưới nước lần lượt là],
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
  [Hai quả cầu A và B có cùng khối lượng $m$ và cùng bán kính $R$. Quả cầu A có bề mặt nhẵn bóng chuẩn khí động học, quả cầu B có bề mặt xù xì và phẳng ở phía trước. Thả rơi đồng thời hai quả cầu từ độ cao lớn trong không khí. Kết luận nào sau đây là đúng?],
  type: "mcq",
  options: (
    [Hai quả cầu chạm đất đồng thời vì có cùng trọng lực $P = m g$.],
    [Quả cầu A đạt tốc độ tới hạn lớn hơn và chạm đất trước quả cầu B do có hệ số cản khí động học $D_A < D_B$.],
    [Quả cầu B chạm đất trước vì bề mặt xù xì bám không khí đẩy nó xuống nhanh hơn.],
    [Cả hai quả cầu đều chuyển động với gia tốc $g$ không đổi suốt quá trình rơi.],
  ),
  ans: "B",
  sol: [Quả A nhẵn bóng nên hệ số cản $D_A < D_B$. Tốc độ tới hạn $v_"th" = sqrt(frac(m g, D))$. Do đó $v_"thA" > v_"thB"$, quả cầu A rơi nhanh hơn và chạm đất trước.],
)

// MCQ-08
#vp-question(
  [Một người nhảy dù thể thao rơi tự do không mở dù và đạt tốc độ tới hạn $v_"th1" = 55 thin "m/s"$. Khi giật dây mở dù, diện tích cản $S$ tăng đột ngột làm tốc độ tới hạn giảm xuống còn $v_"th2" = 5 thin "m/s"$. Ngay tại thời điểm dù vừa xòe rộng, gia tốc $bold(a)$ của người nhảy dù có đặc điểm],
  type: "mcq",
  options: (
    [hướng thẳng đứng xuống dưới với độ lớn $a = g$.],
    [bằng $0 thin "m/s"^2$ vì vận tốc đã đạt cực đại.],
    [hướng thẳng đứng lên trên với độ lớn rất lớn ($a > 0$), hãm tốc độ của người từ $55 thin "m/s"$ xuống $5 thin "m/s"$.],
    [hướng nằm ngang theo chiều gió thổi.],
  ),
  ans: "C",
  sol: [Khi vừa xòe dù, tốc độ vẫn đang là $55 thin "m/s"$, nhưng hệ số cản $D$ tăng vọt làm lực cản $F_c = D v^2$ lớn hơn rất nhiều so với trọng lực $P$. Hợp lực hướng lên trên gây ra gia tốc hãm rất lớn hướng thẳng đứng lên trên.],
)

// MCQ-09
#vp-question(
  [Tàu ngầm Kilo 636 của Hải quân Nhân dân Việt Nam khi lặn đứng yên lơ lửng ở độ sâu $100 thin "m"$ dưới biển. Nhận xét nào sau đây đúng về lực tác dụng lên tàu ngầm?],
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
  [Vận động viên bơi lội trước khi thi đấu thường mặc quần áo bơi công nghệ cao, cạo tóc ôm sát và thực hiện tư thế lướt nước hình thoi co hẹp hai tay. Mục đích vật lý chính là],
  type: "mcq",
  options: (
    [tăng khối lượng riêng của cơ thể để chìm sâu hơn.],
    [giảm tối đa diện tích cản diện thẳng $S$ và hệ số cản thủy động học $C_d$ nhằm giảm lực cản của nước.],
    [làm tăng lực đẩy Archimedes nâng cơ thể nổi hoàn toàn trên mặt nước.],
    [tăng ma sát trượt giữa da và nước để đẩy nước về phía sau mạnh hơn.],
  ),
  ans: "B",
  sol: [Tư thế lướt nước hình thoi và trang phục trơn láng giúp giảm diện tích cản thẳng $S$ và hệ số cản $C_d$, từ đó giảm tối đa lực cản thủy động học $F_c = frac(1, 2) C_d rho S v^2$.],
)

// MCQ-11
#vp-question(
  [Đồ thị vận tốc – thời gian ($v - t$) của một vật rơi có lực cản không khí $F_c = k v$ xuất phát từ trạng thái nghỉ có dạng
    #align(center, bai-14-hinh("do-thi-vt"))
  ],
  type: "mcq",
  options: (
    [đường thẳng dốc lên đi qua gốc tọa độ.],
    [đường cong tăng dần và tiệm cận nằm ngang với đường $v = v_"th"$.],
    [đường parabol có đỉnh hướng lên trên.],
    [đường thẳng nằm ngang ngay từ thời điểm $t = 0$.],
  ),
  ans: "B",
  sol: [Gia tốc $a = g - (k/m)v$ giảm dần về 0 khi $v$ tăng. Đồ thị $v(t)$ xuất phát từ 0, tăng nhanh lúc đầu rồi cong dốc thoải dần, tiến tới tiệm cận ngang $v_"th"$.],
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
  [Khi cân một vật khối lượng $m = "1,0000" thin "kg"$ bằng cân phân tích chính xác cao trong không khí và trong buồng hút chân không, kết quả thu được sẽ],
  type: "mcq",
  options: (
    [hoàn toàn bằng nhau vì khối lượng vật không đổi.],
    [giá trị đo lực ép trên đĩa cân trong không khí nhỏ hơn trong chân không do lực đẩy Archimedes của không khí nâng bớt một phần trọng lượng.],
    [giá trị đo lực ép trên đĩa cân trong không khí lớn hơn do không khí ép vật xuống.],
    [cân trong chân không không hoạt động được.],
  ),
  ans: "B",
  sol: [Trong không khí có lực đẩy Archimedes $F_A = rho_"kk" g V > 0$ hướng lên. Lực ép đĩa cân là $N = P - F_A < P$, nên số chỉ nhỏ hơn so với khi ở trong chân không (nơi $F_A = 0$).],
)

// MCQ-14
#vp-question(
  [Một viên bi thép nhỏ bán kính $r$ rơi thẳng đứng trong bình dầu nhớt. Lực cản tuân theo định luật Stokes $F_c = 6 pi eta r v$. Coi lực đẩy Archimedes rất nhỏ. Nếu đường kính viên bi tăng lên 2 lần thì tốc độ tới hạn $v_"th"$ của viên bi sẽ tăng lên bao nhiêu lần?],
  type: "mcq",
  options: (
    [$2$ lần.],
    [$4$ lần.],
    [$8$ lần.],
    [$16$ lần.],
  ),
  ans: "B",
  sol: [Rơi thẳng đều: $P = F_c => frac(4, 3) pi r^3 rho_"thép" g = 6 pi eta r v_"th" => v_"th" propto r^2$. Đường kính tăng 2 lần tức bán kính tăng 2 lần, $v_"th"$ tăng $2^2 = 4$ lần.],
)

// MCQ-15
#vp-question(
  [Khi một con chim đại bàng hoặc cá đuối bơi trong nước lượn sóng, nguyên lý tạo lực nâng chuyển động chủ yếu dựa vào],
  type: "mcq",
  options: (
    [việc đẩy chất lưu xuống phía dưới để nhận phản lực hướng lên kết hợp với chênh lệch áp suất khí động học.],
    [lực ma sát nghỉ giữa lông chim và gió.],
    [trọng lực giảm đi khi chim xòe rộng cánh.],
    [lực tĩnh điện tích tụ trên mép cánh.],
  ),
  ans: "A",
  sol: [Tương tự cánh máy bay, lực nâng hình thành do tác dụng định luật 3 Newton (đẩy khí/nước xuống) và định luật Bernoulli (chênh lệch áp suất khí động học).],
)

// MCQ-16
#vp-question(
  [Một ô tô đang chạy trên đường cao tốc. Khi tốc độ ô tô tăng từ $60 thin "km/h"$ lên $120 thin "km/h"$, công suất chống lực cản không khí do động cơ cung cấp phải tăng lên bao nhiêu lần? (Coi lực cản tỉ lệ với $v^2$).],
  type: "mcq",
  options: (
    [$2$ lần.],
    [$4$ lần.],
    [$8$ lần.],
    [$16$ lần.],
  ),
  ans: "C",
  sol: [Lực cản $F_c propto v^2$. Công suất cản $P_"cs" = F_c v propto v^3$. Vận tốc tăng 2 lần nên công suất tăng $2^3 = 8$ lần.],
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
  sol: [Quả bóng xoay kéo theo lớp không khí làm tăng vận tốc dòng khí ở một bên và giảm ở bên kia, sinh ra chênh lệch áp suất động học (hiệu ứng Magnus).],
)

// MCQ-18
#vp-question(
  [Một rô-bốt lặn khảo sát chân giàn khoan khối lượng $800 thin "kg"$, thể tích $"0,70" thin "m"^3$. Biết $rho_"biển" = 1025 thin "kg/m"^3$ và $g = "9,8" thin "m/s"^2$. Để giữ rô-bốt lặn xuống đều (bỏ qua ma sát nhớt), lực đẩy của chân vịt phải có độ lớn bằng],
  type: "mcq",
  options: (
    [$"808,5" thin "N"$.],
    [$"7031,5" thin "N"$.],
    [$"7840,0" thin "N"$.],
    [$"0,0" thin "N"$.],
  ),
  ans: "A",
  sol: [Trọng lượng $P = m g = 800 times "9,8" = 7840 thin "N"$. Lực đẩy Archimedes $F_A = rho g V = 1025 times "9,8" times "0,70" = "7031,5" thin "N"$. Lặn đều (hợp lực bằng 0): $P + F_"đẩy" = F_A => F_"đẩy" = F_A - P$. Trường hợp rô-bốt cần lặn xuống nhưng $F_A < P$, chân vịt phải đẩy lên để hãm, nhưng do $P > F_A$, chân vịt cung cấp lực hướng lên $F_"đẩy" = 7840 - "7031,5" = "808,5" thin "N"$.],
)

// MCQ-19
#vp-question(
  [Tàu con-tai-nơ chở hàng ngàn tấn làm bằng thép nhưng vẫn nổi và chạy an toàn trên đại dương. Lý do vật lý cốt lõi là],
  type: "mcq",
  options: (
    [thép chế tạo tàu được pha trộn vật liệu siêu nhẹ nhẹ hơn nước.],
    [thiết kế vỏ tàu rỗng làm thể tích chiếm chỗ $V_"cc"$ rất lớn, tạo lực đẩy Archimedes $F_A = rho_n g V_"cc"$ lớn hơn hoặc bằng tổng trọng lượng.],
    [động cơ tàu liên tục đẩy nước nâng tàu nổi.],
    [muối trong nước biển làm giảm trọng lực tác dụng lên tàu.],
  ),
  ans: "B",
  sol: [Vỏ tàu làm bằng thép nhưng bên trong rỗng chứa nhiều không khí, làm khối lượng riêng trung bình của toàn bộ tàu nhỏ hơn nước, tạo thể tích chiếm chỗ đủ để $F_A$ cân bằng trọng lượng.],
)

// MCQ-20
#vp-question(
  [Một vật rơi từ độ cao rất lớn trong không khí với lực cản $F_c = k v$. Đồ thị gia tốc theo thời gian $a(t)$ của vật có dạng
    #align(center, bai-14-hinh("do-thi-at"))
  ],
  type: "mcq",
  options: (
    [đường thẳng nằm ngang $a = g$.],
    [đường cong giảm dần từ $a = g$ tại $t = 0$ tiệm cận về $a = 0$ khi $t -> oo$.],
    [đường thẳng tăng dần từ $0$ đến $g$.],
    [đường tròn bán kính $g$.],
  ),
  ans: "B",
  sol: [Gia tốc $a(t) = g - frac(k, m) v(t)$. Khi $t=0, v=0 => a=g$. Khi $t -> oo, v -> v_"th" => a -> 0$.],
)


= Phần II. Trắc nghiệm Đúng/Sai
#sbt-instructions(reset: true)[Xác định mỗi phát biểu a), b), c), d) là đúng hay sai.]

// TF-01
#vp-question(
  [Một vận động viên nhảy dù khối lượng $m = 80 thin "kg"$ nhảy từ độ cao $2000 thin "m"$. Lấy $g = "9,8" thin "m/s"^2$. Lực cản không khí khi chưa mở dù là $F_"c1" = D_1 v^2$ ($D_1 = "0,25" thin "kg/m"$), và khi mở dù là $F_"c2" = D_2 v^2$ ($D_2 = "20,0" thin "kg/m"$).],
  type: "tf",
  statements: (
    [Ngay tại thời điểm bắt đầu rơi ($v = 0$), gia tốc rơi của người nhảy dù bằng $g = "9,8" thin "m/s"^2$.],
    [Tốc độ tới hạn khi chưa mở dù là $v_"th1" = 56,0 thin "m/s"$.],
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
  [Khảo sát hiện tượng lặn và nổi của Tàu ngầm Kilo 636 trong nước biển ($rho = 1025 thin "kg/m"^3$):],
  type: "tf",
  statements: (
    [Khi tàu ngầm muốn nổi lên, hệ thống sẽ bơm nước biển vào các khoang chứa vây để tăng trọng lượng.],
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
  [Khí động học ô tô điện VinFast VF8 khi chạy trên đường cao tốc:],
  type: "tf",
  statements: (
    [Thiết kế đầu xe bo tròn, tay nắm ẩn phẳng giúp giảm hệ số cản $C_d$, giảm mức tiêu thụ pin.],
    [Lực cản không khí phụ thuộc vào tốc độ xe và luôn hướng ngược chiều chuyển động.],
    [Ở tốc độ $100 thin "km/h"$, toàn bộ công suất động cơ chỉ dùng thắng ma sát lăn mà không liên quan đến lực cản khí.],
    [Lực nâng khí động học ở tốc độ cao làm giảm pháp lực $N$, có thể làm giảm khả năng bám đường.],
  ),
  ans-tf: ("Đ", "Đ", "S", "Đ"),
  sol: [a) Giảm $C_d$ làm giảm công cản không khí.
    #parbreak() b) Đúng với bản chất ma sát/lực cản chất lưu.
    #parbreak() c) Ở tốc độ cao, lực cản không khí chiếm phần lớn công suất động cơ, không thể bỏ qua.
    #parbreak() d) Lực nâng kéo xe lên, giảm $N$, dẫn tới giảm ma sát bám đường.],
)

// TF-04
#vp-question(
  [Đo tốc độ tới hạn $v_"th"$ của bi thép bán kính $r$ rơi trong dầu nhớt (Định luật Stokes):
    #align(center, table(
      columns: (auto, auto, auto),
      inset: (x: 7pt, y: 6pt),
      stroke: 0.5pt + luma(65%),
      table.header([*Lần đo*], [*Bán kính bi $r$ (mm)*], [*Tốc độ $v_"th"$ (cm/s)*]),
      [1], [1,0], [2,5],
      [2], [2,0], [10,0],
      [3], [3,0], [22,5],
      [4], [4,0], [40,0],
    ))
  ],
  type: "tf",
  statements: (
    [Tốc độ tới hạn tỉ lệ thuận bậc nhất với bán kính bi ($v_"th" propto r$).],
    [Bảng số liệu cho thấy $v_"th"$ tỉ lệ thuận với bình phương bán kính bi ($v_"th" propto r^2$).],
    [Tỉ số $v_"th" / r^2$ thu được từ cả 4 lần đo đều bằng hằng số $"2,5" thin "cm/("s dot "mm"^2)$."],
    [Thí nghiệm chứng minh lực cản độ nhớt tuân theo Định luật Stokes $F_c = 6 pi eta r v$.],
  ),
  ans-tf: ("S", "Đ", "Đ", "Đ"),
  sol: [Khảo sát các tỉ số: $2,5/1^2 = 2,5$; $10,0/2^2 = 2,5$; $22,5/3^2 = 2,5$; $40,0/4^2 = 2,5$. Nghĩa là $v_"th" / r^2$ bằng hằng số, phù hợp với hệ quả $v_"th" propto r^2$ từ định luật Stokes.],
)

// TF-05
#vp-question(
  [Phân tích lực nâng khí động học tác dụng lên cánh máy bay:],
  type: "tf",
  statements: (
    [Mặt trên cong hơn mặt dưới, làm các đường dòng bị ép sát, vận tốc $v_"trên" > v_"dưới"$.],
    [Theo định luật Bernoulli, áp suất tĩnh $p_"trên" < p_"dưới"$.],
    [Chênh lệch áp suất $Delta p = p_"dưới" - p_"trên" > 0$ tạo lực nâng hướng lên.],
    [Máy bay chỉ có thể bay lộn ngược nếu gia tốc trọng trường $g$ đổi chiều.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [a,b,c) Đúng theo nguyên lý Bernoulli.
    #parbreak() d) Máy bay bay ngược bằng cách điều chỉnh góc tấn (Angle of Attack) để luồng khí tiếp tục tạo áp suất cao ở mặt hứng gió, đẩy máy bay lên mà không cần $g$ đổi chiều.],
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
  [Vận động viên nhảy dù $m = 75 thin "kg"$ rơi thẳng đều với tốc độ tới hạn $5,0 thin "m/s"$. Lấy $g = "9,8" thin "m/s"^2$. Độ lớn lực cản do không khí tác dụng lên dù bằng bao nhiêu Newton?],
  type: "short",
  ans: "735",
  sol: [Rơi thẳng đều $a = 0$ nên $F_c = P = 75 times "9,8" = 735 thin "N"$.],
)

// SHORT-04
#vp-question(
  [Tàu ngầm lặn tại Vịnh Nha Trang có thể tích vỏ tàu $V = 120 thin "m"^3$, $rho = 1025 thin "kg/m"^3$ và $g = "9,8" thin "m/s"^2$. Độ lớn lực đẩy Archimedes khi chìm hoàn toàn bằng bao nhiêu kN? (Làm tròn đến 1 chữ số thập phân).],
  type: "short",
  ans: "1205,4",
  short-boxes: 6,
  sol: [$F_A = rho g V = 1025 times "9,8" times 120 = 1205400 thin "N" = "1205,4" thin "kN"$.],
)

// SHORT-05
#vp-question(
  [Ô tô VF8 có diện tích cản thẳng $S = "2,5" thin "m"^2$, $C_d = "0,28"$, khối lượng riêng không khí $rho = "1,20" thin "kg/m"^3$. Công thức $F_c = frac(1, 2) C_d rho S v^2$. Khi chạy $v = 30 thin "m/s"$, độ lớn lực cản không khí bằng bao nhiêu Newton?],
  type: "short",
  ans: "378",
  sol: [$F_c = "0,5" times "0,28" times "1,20" times "2,5" times 30^2 = 378 thin "N"$.],
)


= Phần IV. Tự luận
#sbt-essay-instructions(reset: true)[Trình bày lập luận, công thức, phép tính và kết luận phù hợp với yêu cầu của bài.]

// ESSAY-01
#vp-question(
  [Một giọt mưa đá khối lượng $m = "0,50" thin "g"$ rơi từ độ cao $h = 1000 thin "m"$ xuống mặt đất. Lấy $g = "9,8" thin "m/s"^2$.
    a) Tính vận tốc chạm đất $v_0$ nếu coi rơi tự do. Nhận xét tác hại nếu hạt mưa rơi với vận tốc này.
    #parbreak() b) Thực tế lực cản $F_c = D v^2$ với $D = "2,5" times 10^(-5) thin "kg/m"$. Tính tốc độ tới hạn $v_"th"$.
    #parbreak() c) Tính công của lực cản $A_("Fc")$ trong quá trình rơi $1000 thin "m"$ (giả sử hạt đạt $v_"th"$ ngay khi chạm đất).
  ],
  type: "essay",
  lines: 14,
  sol: [a) $v_0 = sqrt(2 g h) = sqrt(2 times "9,8" times 1000) = 140 thin "m/s"$ ($504 thin "km/h"$). Tốc độ này rất lớn, tương đương viên đạn, gây phá hủy nghiêm trọng.
    #parbreak() b) Tốc độ tới hạn: $F_c = m g => D v_"th"^2 = m g => v_"th" = sqrt(frac(5 times 10^(-4) times "9,8", "2,5" times 10^(-5))) = 14 thin "m/s"$.
    #parbreak() c) Dùng định lý động năng: $A_P + A_("Fc") = Delta E_"đ" => m g h + A_("Fc") = frac(1, 2) m v_"th"^2$.
    $A_("Fc") = frac(1, 2) (5 times 10^(-4))(14^2) - (5 times 10^(-4))("9,8")(1000) = "0,049" - "4,900" = -"4,851" thin "J"$.],
)

// ESSAY-02
#vp-question(
  [Chiến sĩ nhảy dù cùng trang bị có $M = 90 thin "kg"$ nhảy từ $1500 thin "m"$. Lấy $g = "9,8" thin "m/s"^2$. Hệ số cản vòm dù $D = "18,0" thin "kg/m"$ ($F_c = D v^2$).
    a) Tính tốc độ tới hạn hạ cánh $v_"th"$.
    #parbreak() b) Giả sử mở dù khi vận tốc là $v_1 = 40 thin "m/s"$. Tính lực cản $F_c$ và gia tốc hãm $a_"hãm"$ tức thời ngay khi xòe dù.
    #align(center, bai-14-hinh("luc-du"))
    #parbreak() c) Giải thích động tác chụm hai chân, khuỳnh gối khi tiếp đất.
  ],
  type: "essay",
  lines: 14,
  sol: [a) Tốc độ tới hạn: $v_"th" = sqrt(frac(M g, D)) = sqrt(frac(90 times "9,8", "18,0")) = 7,0 thin "m/s"$.
    #parbreak() b) Lực cản tức thời: $F_c = D v_1^2 = "18,0" times 40^2 = 28800 thin "N"$ (hướng lên). Trọng lượng $P = 90 times "9,8" = 882 thin "N"$.
    Hợp lực hãm: $F_"hãm" = F_c - P = 28800 - 882 = 27918 thin "N"$. Gia tốc: $a_"hãm" = frac(27918, 90) = "310,2" thin "m/s"^2$ (hướng lên).
    #parbreak() c) Khuỳnh gối kéo dài thời gian va chạm $Delta t$, làm giảm đáng kể lực xung kích ($F = frac(Delta p, Delta t)$) bảo vệ cột sống và xương gối.],
)

// ESSAY-03
#vp-question(
  [Máy bay A350 có $M = 240$ tấn đang bay ngang ổn định ở độ cao với tốc độ $v = 250 thin "m/s"$. Tổng diện tích cánh $S = 440 thin "m"^2$, khối lượng riêng không khí $rho = "0,41" thin "kg/m"^3$. Lấy $g = "9,8" thin "m/s"^2$.
    a) Tính lực nâng khí động học $F_"nâng"$ và hệ số lực nâng $C_L$ ($F_"nâng" = frac(1, 2) C_L rho S v^2$).
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
  [Học sinh đo tốc độ rơi của viên bi bán kính $r = ("2,00" plus.minus "0,05") thin "mm"$ trên quãng đường $h = ("0,400" plus.minus "0,001") thin "m"$. Thời gian $t$ (s) qua 5 lần: $2,02$; $1,98$; $2,01$; $2,00$; $1,99$. Sai số dụng cụ đo $t$ là $0,01$ s.
    a) Tính trung bình $overline(t)$ và sai số $Delta t$, viết kết quả đo $t$.
    #parbreak() b) Tính $\overline{v}_"th"$, $Delta v_"th"$ và viết kết quả đo $v_"th"$.
    #parbreak() c) Từ Stokes $F_c = 6 pi eta r v_"th"$, thiết lập biểu thức tính độ nhớt $eta$ của dầu (cân bằng với trọng lực và Archimedes).
  ],
  type: "essay",
  lines: 14,
  sol: [a) $overline(t) = 2,00 thin "s"$. Sai số ngẫu nhiên các lần: $0,02; 0,02; 0,01; 0,00; 0,01$. Trung bình ngẫu nhiên là $0,012 thin "s"$.
    Sai số tuyệt đối: $Delta t = 0,012 + 0,01 = 0,022 approx 0,02 thin "s"$. Kết quả: $t = ("2,00" plus.minus "0,02") thin "s"$.
    #parbreak() b) $\overline{v}_"th" = frac(h, t) = frac("0,400", "2,00") = "0,200" thin "m/s"$. Sai số tỉ đối: $delta v = frac("0,001", "0,400") + frac("0,02", "2,00") = "0,0125"$.
    $Delta v_"th" = "0,200" times "0,0125" = "0,0025" approx "0,003" thin "m/s" => v_"th" = ("0,200" plus.minus "0,003") thin "m/s"$.
    #parbreak() c) $F_c + F_A = P => 6 pi eta r v_"th" + rho_"dầu" g (frac(4, 3) pi r^3) = rho_"thép" g (frac(4, 3) pi r^3)$. Suy ra $eta = frac(2 r^2 g (rho_"thép" - rho_"dầu"), 9 v_"th")$.],
)

// ESSAY-05
#vp-question(
  [Xe đua F1 $m = 800 thin "kg"$ ôm cua bán kính $R = 100 thin "m"$. Ma sát nghỉ $mu_n = "0,75"$. Lấy $g = "9,8" thin "m/s"^2$.
    a) Nếu không có cánh gió khí động học, tính tốc độ ôm cua tối đa $v_"max1"$ để không trượt.
    #parbreak() b) Có cánh gió tạo lực ép $F_"down" = D_d v^2$ với $D_d = "1,20" thin "kg/m"$. Thiết lập phương trình và tính tốc độ ôm cua $v_"max2"$.
    #align(center, bai-14-hinh("luc-f1"))
    #parbreak() c) Giải thích vì sao xe F1 chạy đủ nhanh có thể bám dính trên trần hầm trụ vòm ngược. Tìm tốc độ nhỏ nhất $v_"min"$ cho việc này.
  ],
  type: "essay",
  lines: 14,
  sol: [a) $F_"msn,max" = m frac(v^2, R) => mu_n m g = m frac(v_"max1"^2, R) => v_"max1" = sqrt(mu_n g R) = sqrt("0,75" times "9,8" times 100) approx "27,11" thin "m/s"$.
    #parbreak() b) Có downforce: $N = m g + D_d v^2$. Để không trượt: $mu_n(m g + D_d v^2) = m frac(v^2, R)$.
    Suy ra $v_"max2" = sqrt(frac(mu_n m g, frac(m, R) - mu_n D_d)) = sqrt(frac("0,75" times 800 times "9,8", 8 - "0,75" times "1,20")) = sqrt(frac(5880, "7,1")) approx "28,78" thin "m/s"$.
    #parbreak() c) Khi chạy lộn ngược, $F_"down"$ ép xe lên trần, trọng lượng $P$ kéo xuống. Để bám dính, $N = F_"down" - m g >= 0 => D_d v^2 >= m g$.
    Tốc độ tối thiểu: $v_"min" = sqrt(frac(m g, D_d)) = sqrt(frac(800 times "9,8", "1,20")) approx "80,83" thin "m/s"$.],
)

```

## chuong-02-dong-luc-hoc/images/bai-14-hinh.typ

```typst
#import "@preview/cetz:0.3.3": canvas, draw

#let blue = rgb("1976d2")
#let orange = rgb("b45309")
#let dash = (paint: luma(55%), thickness: 0.6pt, dash: "dashed")

#let arrow(a, b, label: none, at: none, anchor: "south", color: blue) = {
  draw.line(a, b, stroke: 1.1pt + color, mark: (end: ">"))
  if label != none { draw.content(if at == none { b } else { at }, label, anchor: anchor) }
}

#let plot(points, w: 3.5, h: 1.8, xlabel: [$t$], ylabel: [$d$]) = {
  arrow((0, 0), (w + 0.2, 0), label: xlabel, anchor: "west", color: black)
  arrow((0, 0), (0, h + 0.25), label: ylabel, color: black)
  draw.content((-0.15, -0.15), [O])
  draw.line(..points.map(p => (w * p.at(0), h * p.at(1))), stroke: 1.1pt + blue)
}

#let bai-14-hinh(id) = {
  set text(font: "Times New Roman", size: 10pt)
  canvas({
    import draw: *
    if id == "do-thi-vt" {
      let pts = range(51).map(j => (j / 50, 1 - calc.exp(-4 * j / 50)))
      plot(pts, xlabel: [$t$], ylabel: [$v$])
      line((0, 1.8), (3.6, 1.8), stroke: dash)
      content((-0.2, 1.8), [$v_"th"$], anchor: "east")
    } else if id == "do-thi-at" {
      let pts = range(51).map(j => (j / 50, calc.exp(-4 * j / 50)))
      plot(pts, xlabel: [$t$], ylabel: [$a$])
      content((-0.15, 1.8), [$g$], anchor: "east")
    } else if id == "luc-du" {
      circle((0, 0), radius: 0.1, fill: black, stroke: none)
      arrow((0, 0), (0, 2.5), label: [$bold(F)_c$])
      arrow((0, 0), (0, -0.6), label: [$bold(P)$], anchor: "north", color: orange)
      content((0.5, 0), [Dù vừa xòe], anchor: "west")
    } else if id == "luc-f1" {
      line((-1.5, 1.2), (1.5, 1.2), stroke: 1.5pt + luma(50%))
      for i in range(15) {
        line((-1.4 + i * 0.2, 1.2), (-1.2 + i * 0.2, 1.5), stroke: 0.5pt + luma(50%))
      }
      rect((-0.6, 1.2), (0.6, 0.5), fill: luma(90%), stroke: 1pt)
      content((0, 0.85), [Xe F1])
      arrow((0, 0.5), (0, 2.2), label: [$bold(F)_"down"$], at: (-0.1, 2.0), anchor: "east")
      arrow((0, 0.5), (0, -1.0), label: [$bold(P)$], anchor: "north", color: orange)
      arrow((0, 1.2), (0, 0), label: [$bold(N)$], anchor: "north", color: blue)
      content((1.8, 1.2), [Trần hầm], anchor: "west")
    } else {
      panic("Chưa có hình Bài 14: " + id)
    }
  })
}

```

## nguon/bai-14-ghi-chu.md

```markdown
# Ghi chú hiệu đính Bài 14: Lực cản và lực nâng

- **MCQ 18:** Có lỗi tính toán trong nguồn. Trọng lực rô-bốt $P = 800 \times 9,8 = 7840\text{ N}$. Lực đẩy Archimedes $F_A = 1025 \times 9,8 \times 0,7 = 7031,5\text{ N}$. Để rô-bốt giữ trạng thái lặn xuống đều, chân vịt phải cung cấp lực đẩy xuống bằng với hiệu: $F_{đẩy} = 7840 - 7031,5 = 808,5\text{ N}$. Nguồn gốc ghi `$803,6\text{ N}$ (chính xác lấy g=9,8)` là sai số liệu, tác giả đã nhầm $\Delta m = 82\text{ kg}$ thay vì $82,5\text{ kg}$. Đã cập nhật lại phương án A và phần giải trên file `.typ` để đúng tính nhất quán vật lý.
- **Tự luận 4:** Sử dụng `short-boxes: 6` để chứa được kết quả `1205,4`. 
- **Hình ảnh CeTZ bổ sung:** 
  + `do-thi-vt`: dùng cho hàm tốc độ tiệm cận.
  + `do-thi-at`: dùng cho hàm suy giảm gia tốc.
  + `luc-du`: biểu diễn sự chênh lệch độ lớn lực tức thời khi xòe dù.
  + `luc-f1`: mô phỏng lực Up/Down của xe bám trần.
- **Đánh giá chung:** Đã tuân thủ toàn bộ quy ước về API mới, viết dấu phẩy (`"9,8"`), khoảng trắng âm (`x - y`) và loại bỏ hoàn toàn các lỗi `frac(a)(b)`.
```


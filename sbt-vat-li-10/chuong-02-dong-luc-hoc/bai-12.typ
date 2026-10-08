#import "../cau-hinh.typ": *
#import "images/bai-12-hinh.typ": bai-12-hinh

// Đối chiếu: Bài 17 cũ. Nguồn và hiệu đính: ../nguon/bai-12-*.{txt,md}.
#sbt-bai(num: "12", title: "Trọng lực và Lực căng", label: <bai-12>)

= Phần I. Trắc nghiệm khách quan
#sbt-instructions(reset: true)[Chọn một phương án đúng trong mỗi câu.]

// MCQ-01
#vp-question(
  [Phát biểu nào phân biệt đúng trọng lực, trọng lượng $P = m g$ và trọng lượng biểu kiến của một vật?],
  type: "mcq",
  options: (
    [Trọng lực là đại lượng vô hướng, còn trọng lượng là một vectơ.],
    [Trọng lực là lực hấp dẫn của Trái Đất tác dụng lên vật; trọng lượng là độ lớn trọng lực; trọng lượng biểu kiến được xác định qua lực vật tác dụng lên mặt đỡ hoặc dây treo.],
    [Trọng lượng và trọng lượng biểu kiến luôn bằng nhau trong mọi chuyển động.],
    [Trọng lượng luôn bằng cùng một giá trị dù đưa vật đến những nơi có gia tốc trọng trường khác nhau.],
  ),
  ans: "B",
  sol: [Trọng lực là đại lượng vectơ; độ lớn của nó là trọng lượng $P = m g$. Lực nén mặt đỡ hoặc lực kéo dây treo dùng để xác định trọng lượng biểu kiến, có thể khác $m g$ khi hệ có gia tốc. Trong rơi tự do, trọng lượng biểu kiến bằng 0 nhưng trọng lực vẫn tồn tại.],
)

// MCQ-02
#vp-question(
  [Ở cùng độ cao so với mực nước biển, gia tốc rơi tự do đo gần mặt đất tại xích đạo và tại cực Bắc có quan hệ nào sau đây?],
  type: "mcq",
  options: (
    [Gia tốc tại xích đạo lớn hơn vì Trái Đất là hình cầu hoàn hảo.],
    [Gia tốc tại xích đạo nhỏ hơn do Trái Đất hơi dẹt ở hai cực và ảnh hưởng của sự tự quay.],
    [Hai giá trị bằng nhau vì khối lượng Trái Đất không đổi.],
    [Gia tốc tại xích đạo bằng 0 do lực hấp dẫn bị triệt tiêu hoàn toàn.],
  ),
  ans: "B",
  sol: [Bán kính xích đạo lớn hơn bán kính cực làm lực hấp dẫn trên một đơn vị khối lượng nhỏ hơn. Sự tự quay còn làm giảm gia tốc rơi tự do hiệu dụng tại xích đạo so với tại cực.],
)

// MCQ-03
#vp-question(
  [Một vật đứng yên được treo bằng dây nhẹ, căng, thẳng đứng. Coi độ dãn của dây không đáng kể. Phát biểu nào sau đây *sai*?],
  type: "mcq",
  options: (
    [Dây tác dụng lực kéo lên vật tại chỗ buộc dây.],
    [Lực căng tác dụng lên vật hướng dọc dây về phía điểm treo.],
    [Trong mô hình dây nhẹ đang xét, độ lớn lực căng ở hai đầu bằng nhau.],
    [Dây chùng vẫn có thể đẩy vật lên bằng lực căng.],
  ),
  ans: "D",
  sol: [Dây chỉ truyền lực kéo khi căng, không truyền lực đẩy khi chùng. Với dây nhẹ, thẳng và cân bằng, lực căng có cùng độ lớn dọc dây.],
)

// MCQ-04
#vp-question(
  [Người khối lượng $60 thin "kg"$ đứng trên cân đo lực trong thang máy đi xuống chậm dần đều, độ lớn gia tốc $"2,0" thin "m/s"^2$. Lấy $g = "9,8" thin "m/s"^2$. Số chỉ của cân bằng],
  type: "mcq",
  options: (
    [$468 thin "N"$.],
    [$588 thin "N"$.],
    [$708 thin "N"$.],
    [$120 thin "N"$.],
  ),
  ans: "C",
  sol: [Gia tốc hướng lên nên $N - m g = m a$. Suy ra $N = 60("9,8" + 2) = 708 thin "N"$.],
)

// MCQ-05
#vp-question(
  [Một phi hành gia ở trong tàu đang bay trên quỹ đạo quanh Trái Đất, ở độ cao khoảng $400 thin "km"$. Trong mô hình bỏ qua lực cản và chuyển động riêng trong tàu, vì sao phi hành gia có trạng thái mất trọng lượng biểu kiến?],
  type: "mcq",
  options: (
    [Ở độ cao này, lực hấp dẫn đã bằng 0.],
    [Tàu và phi hành gia cùng rơi tự do theo quỹ đạo nên không cần lực đỡ của sàn.],
    [Vỏ tàu ngăn trọng lực tác dụng lên phi hành gia.],
    [Khối lượng phi hành gia giảm về 0.],
  ),
  ans: "B",
  sol: [Trọng lực vẫn gây gia tốc hướng về Trái Đất. Khi tàu và người có cùng chuyển động rơi tự do, lực đỡ của sàn lên người bằng 0 trong mô hình lí tưởng; khối lượng và trọng lực của người không bằng 0.],
)

// MCQ-06
#vp-question(
  [Đèn khối lượng $"3,0" thin "kg"$ treo tại nút O nối với dây OA nằm ngang và dây OB nghiêng $30 degree$ so với phương ngang. Dây nhẹ, hệ cân bằng; lấy $g = 10 thin "m/s"^2$. Lực căng OB bằng
    #align(center, bai-12-hinh("den-hai-day"))],
  type: "mcq",
  options: (
    [$30 thin "N"$.],
    [$60 thin "N"$.],
    [$30 sqrt(3) thin "N"$.],
    [$15 sqrt(3) thin "N"$.],
  ),
  ans: "B",
  sol: [Cân bằng theo phương đứng: $T_(O B) sin 30 degree = m g$. Suy ra $T_(O B) = 30/"0,5" = 60 thin "N"$.],
)

// MCQ-07
#vp-question(
  [Hai vật $m_1 = "2,0" thin "kg"$ và $m_2 = "3,0" thin "kg"$ nối bằng dây nhẹ không giãn qua ròng rọc cố định nhẹ, không ma sát; hai nhánh dây thẳng đứng. Thả hệ từ nghỉ, dây luôn căng. Lấy $g = 10 thin "m/s"^2$. Lực căng dây bằng
    #align(center, bai-12-hinh("atwood"))],
  type: "mcq",
  options: (
    [$24 thin "N"$.],
    [$25 thin "N"$.],
    [$30 thin "N"$.],
    [$10 thin "N"$.],
  ),
  ans: "A",
  sol: [Gia tốc $a = frac(m_2 - m_1, m_1 + m_2) g = 2 thin "m/s"^2$. Với vật nhẹ đi lên, $T = m_1(g + a) = 2(10 + 2) = 24 thin "N"$.],
)

// MCQ-08
#vp-question(
  [Một người có khối lượng $70 thin "kg"$. Lấy gia tốc trọng trường trên Trái Đất là $"9,8" thin "m/s"^2$, trên Mặt Trăng là $"1,6" thin "m/s"^2$. Khi người đứng trên Mặt Trăng, khối lượng và trọng lượng lần lượt là],
  type: "mcq",
  options: (
    [$70 thin "kg"$ và $112 thin "N"$.],
    [$"11,4" thin "kg"$ và $112 thin "N"$.],
    [$70 thin "kg"$ và $686 thin "N"$.],
    [$"11,4" thin "kg"$ và $686 thin "N"$.],
  ),
  ans: "A",
  sol: [Khối lượng không đổi. Trọng lượng trên Mặt Trăng: $P = 70 times "1,6" = 112 thin "N"$.],
)

// MCQ-09
#vp-question(
  [Dây nhẹ có lực căng giới hạn $250 thin "N"$ kéo vật $20 thin "kg"$ thẳng đứng lên. Vật chỉ chịu trọng lực và lực căng; lấy $g = 10 thin "m/s"^2$. Gia tốc hướng lên lớn nhất theo mô hình dây chưa đứt bằng],
  type: "mcq",
  options: (
    [$"12,5" thin "m/s"^2$.],
    [$"2,5" thin "m/s"^2$.],
    [$"5,0" thin "m/s"^2$.],
    [$"1,25" thin "m/s"^2$.],
  ),
  ans: "B",
  sol: [$T = m(g + a) <= 250 thin "N"$ nên $a <= 250/20 - 10 = "2,5" thin "m/s"^2$. Đây là giới hạn của mô hình, không tính hệ số dự phòng.],
)

// MCQ-10
#vp-question(
  [Con lắc đơn dài $L$ được thả từ nghỉ ở góc lệch $45 degree$ so với phương thẳng đứng. Dây đứt khi quả cầu qua vị trí thấp nhất B. Bỏ qua lực cản và xét chuyển động trước khi chạm đất. Quỹ đạo tiếp theo là
    #align(center, bai-12-hinh("con-lac-dut"))],
  type: "mcq",
  options: (
    [Đường thẳng đứng đi xuống.],
    [Một nhánh parabol có đỉnh tại B.],
    [Đường tròn quanh điểm treo.],
    [Đường thẳng nằm ngang.],
  ),
  ans: "B",
  sol: [Tại B, vận tốc tiếp tuyến nằm ngang và khác 0. Khi dây đứt, vật chỉ chịu trọng lực, trở thành vật ném ngang; B là đỉnh của parabol.],
)

// MCQ-11
#vp-question(
  [Một xe kéo rơ-móc khối lượng $800 thin "kg"$ đi thẳng đều lên dốc $30 degree$. Dây kéo căng, song song mặt dốc. Bỏ qua lực cản của rơ-móc; xe kéo có đủ lực bám. Lấy $g = "9,8" thin "m/s"^2$. Lực căng dây bằng],
  type: "mcq",
  options: (
    [$7840 thin "N"$.],
    [$3920 thin "N"$.],
    [$6789 thin "N"$.],
    [$15680 thin "N"$.],
  ),
  ans: "B",
  sol: [Rơ-móc chuyển động đều nên hợp lực dọc dốc bằng 0. $T = m g sin 30 degree = 800 times "9,8" times "0,5" = 3920 thin "N"$.],
)

// MCQ-12
#vp-question(
  [Coi Trái Đất hình cầu bán kính $R$, bỏ qua sự tự quay. Tại độ cao $h$, gia tốc hấp dẫn bằng $g_0/4$, với $g_0$ là giá trị tại mặt đất. Độ cao $h$ bằng],
  type: "mcq",
  options: (
    [$R/2$.],
    [$R$.],
    [$2 R$.],
    [$4 R$.],
  ),
  ans: "B",
  sol: [$g/g_0 = R^2/(R + h)^2 = 1/4$. Do $R + h > 0$, suy ra $R + h = 2 R$, tức $h = R$.],
)

// MCQ-13
#vp-question(
  [Quả cầu $m = "0,5" thin "kg"$ buộc vào dây nhẹ dài $L = "1,0" thin "m"$ chuyển động tròn trong mặt phẳng đứng. Tại điểm cao nhất, tốc độ góc tức thời là $omega = "4,0" thin "rad/s"$. Vật chỉ chịu trọng lực và lực căng; lấy $g = 10 thin "m/s"^2$. Lực căng tại đây bằng
    #align(center, bai-12-hinh("dinh-vong-tron"))],
  type: "mcq",
  options: (
    [$"3,0" thin "N"$.],
    [$"13,0" thin "N"$.],
    [$"8,0" thin "N"$.],
    [$"5,0" thin "N"$.],
  ),
  ans: "A",
  sol: [Tại đỉnh, cả trọng lực và lực căng hướng vào tâm: $T + m g = m omega^2 L$. Suy ra $T = "0,5"(4^2 times 1 - 10) = 3 thin "N" > 0$, dây còn căng. Không cần giả thiết tốc độ không đổi trên cả vòng.],
)

// MCQ-14
#vp-question(
  [Vật $10 thin "kg"$ treo cân bằng ở giữa dây nhẹ nối hai điểm cùng độ cao. Hai nhánh đối xứng, mỗi nhánh hợp phương ngang góc $5 degree$. Lấy $g = "9,8" thin "m/s"^2$. Lực căng mỗi nhánh gần bằng
    #align(center, bai-12-hinh("day-vong"))],
  type: "mcq",
  options: (
    [$49 thin "N"$.],
    [$98 thin "N"$.],
    [$562 thin "N"$.],
    [$1124 thin "N"$.],
  ),
  ans: "C",
  sol: [$2 T sin 5 degree = m g$, nên $T = frac(98, 2 sin 5 degree) approx "562,2" thin "N"$.],
)

// MCQ-15
#vp-question(
  [Biển báo $12 thin "kg"$ treo tại C của giá đỡ gồm thanh AC nằm ngang và dây BC nghiêng $45 degree$. A, B cố định trên cùng tường, B cao hơn A. Thanh nhẹ nối bằng khớp ở hai đầu, chỉ chịu lực dọc trục; dây nhẹ. Lấy $g = 10 thin "m/s"^2$. Lực căng dây $T$ và lực nén thanh $N$ lần lượt là
    #align(center, bai-12-hinh("gia-do"))],
  type: "mcq",
  options: (
    [$T = 120 sqrt(2) thin "N"; N = 120 thin "N"$.],
    [$T = 120 thin "N"; N = 120 sqrt(2) thin "N"$.],
    [$T = 60 sqrt(2) thin "N"; N = 60 thin "N"$.],
    [$T = 120 thin "N"; N = 120 thin "N"$.],
  ),
  ans: "A",
  sol: [Cân bằng tại C: $T sin 45 degree = m g$, $N = T cos 45 degree$. Suy ra $T = 120 sqrt(2) thin "N"$, $N = 120 thin "N"$. Thanh đẩy C ra xa tường nên chịu nén.],
)

// MCQ-16
#vp-question(
  [Thùng $M = "8,0" thin "kg"$ nối với dây đồng chất khối lượng $m_d = "2,0" thin "kg"$, dài $"2,0" thin "m"$. Cả thùng và dây nằm trên sàn ngang nhẵn. Kéo đầu tự do của dây bằng lực ngang $50 thin "N"$; dây thẳng, căng và không giãn. Lực căng tại trung điểm K của dây bằng
    #align(center, bai-12-hinh("day-co-khoi-luong"))],
  type: "mcq",
  options: (
    [$50 thin "N"$.],
    [$40 thin "N"$.],
    [$45 thin "N"$.],
    [$10 thin "N"$.],
  ),
  ans: "C",
  sol: [Gia tốc chung $a = 50/(8 + 2) = 5 thin "m/s"^2$. Xét thùng cùng nửa dây phía sau K: $T_K = (M + m_d/2)a = (8 + 1) times 5 = 45 thin "N"$. Dây có khối lượng nên lực căng không đồng đều.],
)

// MCQ-17
#vp-question(
  [Ô tô $1500 thin "kg"$ qua đỉnh cầu lồi với tốc độ $54 thin "km/h"$. Bán kính cong tại đỉnh $R = 45 thin "m"$. Lấy $g = 10 thin "m/s"^2$, bỏ qua lực nâng khí động. Độ lớn lực ô tô ép lên mặt cầu tại đỉnh bằng
    #align(center, bai-12-hinh("cau-loi"))],
  type: "mcq",
  options: (
    [$15000 thin "N"$.],
    [$7500 thin "N"$.],
    [$22500 thin "N"$.],
    [$0 thin "N"$.],
  ),
  ans: "B",
  sol: [$v = 15 thin "m/s"$. Chiều hướng tâm hướng xuống: $m g - N = m v^2/R$, nên $N = 1500(10 - 15^2/45) = 7500 thin "N"$. Lực xe ép cầu có độ lớn bằng phản lực cầu lên xe.],
)

// MCQ-18
#vp-question(
  [Trong trọng trường đều, phát biểu nào đúng về trọng tâm của một vật có hình dạng phức tạp, chẳng hạn một vòng tròn kim loại?],
  type: "mcq",
  options: (
    [Trọng tâm bắt buộc nằm trong phần vật chất của vật.],
    [Trọng tâm là điểm đặt hợp lực các trọng lực thành phần và có thể nằm ngoài phần vật chất của vật.],
    [Trọng tâm luôn trùng tâm hình học dù vật không đồng chất.],
    [Trọng lực chỉ tác dụng lên phần thấp nhất của vật.],
  ),
  ans: "B",
  sol: [Trọng tâm của một vòng tròn đồng chất nằm tại tâm vòng, nơi không có vật chất. Không thể đồng nhất trọng tâm với điểm thấp nhất hoặc luôn với tâm hình học của vật bất kì.],
)

// MCQ-19
#vp-question(
  [Vật $"5,0" thin "kg"$ được hạ xuống bằng dây treo từ phía trên. Vật đi xuống nhanh dần đều với gia tốc $"3,0" thin "m/s"^2$, chỉ chịu trọng lực và lực căng hướng lên. Lấy $g = "9,8" thin "m/s"^2$. Lực căng bằng],
  type: "mcq",
  options: (
    [$64 thin "N"$.],
    [$34 thin "N"$.],
    [$49 thin "N"$.],
    [$15 thin "N"$.],
  ),
  ans: "B",
  sol: [Chọn chiều dương xuống: $m g - T = m a$. Suy ra $T = 5("9,8" - 3) = 34 thin "N"$. Dây đỡ vật khi hạ xuống, không đẩy vật xuống.],
)

// MCQ-20
#vp-question(
  [Con lắc đơn được thả từ nghỉ ở góc $0 degree < alpha_0 < 90 degree$. Bỏ qua lực cản, dây nhẹ và luôn căng trước khi đứt. Lực căng lớn nhất, do đó dây có nguy cơ đứt cao nhất, tại],
  type: "mcq",
  options: (
    [Vị trí biên $alpha = alpha_0$.],
    [Vị trí thấp nhất $alpha = 0 degree$.],
    [Vị trí $alpha = alpha_0/2$.],
    [Mọi vị trí như nhau.],
  ),
  ans: "B",
  sol: [$T = m g cos alpha + m v^2/L$. Trong dao động đang xét, cả $cos alpha$ và $v^2$ lớn nhất ở vị trí thấp nhất nên lực căng lớn nhất tại đó.],
)

= Phần II. Trắc nghiệm Đúng/Sai
#sbt-instructions(reset: true)[Xác định mỗi phát biểu a), b), c), d) là đúng hay sai.]

// TF-01
#vp-question(
  [Cabin thang máy khối lượng $M = 1000 thin "kg"$ chở kiện hàng $m = 200 thin "kg"$ trên sàn. Cáp nhẹ kéo cabin thẳng đứng; bỏ lực cản và các lực đỡ khác. Lấy $g = "9,8" thin "m/s"^2$.],
  type: "tf",
  statements: (
    [Khi hệ đứng yên hoặc chuyển động thẳng đều, lực căng cáp bằng $11760 thin "N"$.],
    [Khi cabin đi lên nhanh dần đều với gia tốc $"2,0" thin "m/s"^2$, hàng ép sàn bằng lực $2360 thin "N"$.],
    [Khi cabin đi lên chậm dần đều với độ lớn gia tốc $"2,0" thin "m/s"^2$, lực căng cáp bằng $9360 thin "N"$.],
    [Nếu cáp đứt và hệ rơi tự do, kiện hàng ban đầu đứng yên so với cabin sẽ bị lực nâng lớn hất lên trần.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [a) $T = (M + m)g = 1200 times "9,8" = 11760 thin "N"$. (Đúng)
    #parbreak() b) Gia tốc hướng lên: $N = m(g + a) = 200("9,8" + 2) = 2360 thin "N"$. Lực hàng ép sàn có cùng độ lớn. (Đúng)
    #parbreak() c) Gia tốc hướng xuống: $T = (M + m)(g - a) = 1200("9,8" - 2) = 9360 thin "N"$. (Đúng)
    #parbreak() d) Hàng và cabin cùng rơi tự do; nếu ban đầu không có vận tốc tương đối, chúng không tự tách xa nhau. $N = 0$, không có lực nâng hất hàng lên. (Sai)],
)

// TF-02
#vp-question(
  [Xét mô hình cabin $m = 3000 thin "kg"$ được dẫn hướng bởi dây tải thẳng nghiêng $30 degree$ so với phương ngang và được kéo bằng một dây riêng song song dây tải. Cabin đi lên thẳng đều; bỏ ma sát, lực cản và độ võng dây tải. Lấy $g = "9,8" thin "m/s"^2$.
    #align(center, bai-12-hinh("cap-treo"))],
  type: "tf",
  statements: (
    [Trọng lực tác dụng lên cabin có độ lớn $29400 thin "N"$, hướng thẳng đứng xuống.],
    [Thành phần trọng lực dọc dây tải hướng xuống dốc có độ lớn $14700 thin "N"$.],
    [Lực căng dây kéo bằng $14700 thin "N"$.],
    [Khi chỉ dây kéo đứt, cabin lập tức rơi thẳng đứng dù vẫn được dây tải dẫn hướng.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [a) $P = m g = 3000 times "9,8" = 29400 thin "N"$. (Đúng)
    #parbreak() b) $P_("dọc") = P sin 30 degree = 14700 thin "N"$. (Đúng)
    #parbreak() c) Hợp lực dọc dây tải bằng 0 nên $T = P_("dọc")$. (Đúng)
    #parbreak() d) Dây tải còn dẫn hướng, gia tốc dọc dây tải hướng xuống dốc có độ lớn $g sin 30 degree = "4,9" thin "m/s"^2$. Cabin đang đi lên sẽ chậm lại rồi mới đổi chiều nếu không bị giới hạn hành trình. (Sai)],
)

// TF-03
#vp-question(
  [Con lắc đơn có $m = "0,20" thin "kg"$, $L = "1,0" thin "m"$, được thả từ nghỉ ở góc $60 degree$ so với phương thẳng đứng. Dây nhẹ không giãn, bỏ lực cản; lấy $g = 10 thin "m/s"^2$.
    #align(center, bai-12-hinh("con-lac-60"))],
  type: "tf",
  statements: (
    [Lúc thả, độ lớn gia tốc tiếp tuyến bằng $g sin 60 degree approx "8,66" thin "m/s"^2$.],
    [Lúc thả, lực căng bằng $m g cos 60 degree = "1,0" thin "N"$.],
    [Tại vị trí thấp nhất, tốc độ lớn nhất bằng $sqrt(10) thin "m/s" approx "3,16" thin "m/s"$.],
    [Tại vị trí thấp nhất, lực căng đúng bằng trọng lượng $2 thin "N"$.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [a) Lực tiếp tuyến có độ lớn $m g sin alpha$ nên $abs(a_t) = g sin 60 degree$. (Đúng)
    #parbreak() b) Lúc thả $v = 0$, gia tốc hướng tâm bằng 0, do đó $T = m g cos 60 degree = 1 thin "N"$. (Đúng)
    #parbreak() c) Bảo toàn cơ năng: $v^2 = 2 g L(1 - cos 60 degree) = 10 thin "m"^2/"s"^2$. (Đúng)
    #parbreak() d) $T = m(g + v^2/L) = "0,20"(10 + 10) = 4 thin "N"$. (Sai)],
)

// TF-04
#vp-question(
  [Coi Trái Đất và Mặt Trăng hình cầu, bỏ qua tự quay. Trong mô hình này, dùng các tỉ lệ $M_("MT") = M_("TĐ")/81$, $R_("MT") = R_("TĐ")/"3,7"$ và $g_("TĐ") = "9,8" thin "m/s"^2$ cho mọi phép tính. $G$ là hằng số hấp dẫn.],
  type: "tf",
  statements: (
    [Gia tốc hấp dẫn tại bề mặt thiên thể khối lượng $M$, bán kính $R$ là $g = G M/R^2$.],
    [Tỉ số $g_("MT")/g_("TĐ")$ xấp xỉ $1/6$.],
    [Dây chịu tối đa $600 thin "N"$ treo đứng yên được khối lượng giới hạn $"61,2" thin "kg"$ trên Trái Đất và $"375,0" thin "kg"$ trên Mặt Trăng, làm tròn một chữ số thập phân theo mô hình trên.],
    [Đồng hồ con lắc có cùng chiều dài và biên độ nhỏ chạy nhanh hơn khi đưa từ Trái Đất lên Mặt Trăng.],
  ),
  ans-tf: ("Đ", "Đ", "S", "S"),
  sol: [a) Từ $F = G M m/R^2 = m g$, suy ra công thức đã cho. (Đúng)
    #parbreak() b) $g_("MT")/g_("TĐ") = "3,7"^2/81 approx "0,1690" approx 1/6$. (Đúng)
    #parbreak() c) Theo đúng tỉ lệ của đề: $g_("MT") = "9,8" times "3,7"^2/81 approx "1,6563" thin "m/s"^2$. Khối lượng giới hạn trên Mặt Trăng là $600/g_("MT") approx "362,2" thin "kg"$, không phải $"375,0" thin "kg"$. Trên Trái Đất là $"61,2" thin "kg"$. (Sai)
    #parbreak() d) Chu kì dao động nhỏ $tau = 2 pi sqrt(L/g)$ tăng khi $g$ giảm, nên đồng hồ chạy chậm hơn. (Sai)],
)

// TF-05
#vp-question(
  [Vật treo cân bằng tại nút C nhờ hai dây nhẹ đối xứng qua phương thẳng đứng. Góc giữa hai nhánh là $theta$, với $0 degree < theta < 180 degree$. Mỗi nhánh nối với một cảm biến lực; chưa cho cấu tạo cụ thể của cảm biến. Nút chỉ chịu hai lực căng và lực kéo thẳng đứng do vật.
    #align(center, bai-12-hinh("hai-day-theta"))],
  type: "tf",
  statements: (
    [Khi tăng $theta$ và giữ khối lượng vật không đổi, lực căng mỗi nhánh giảm.],
    [Trong mô hình dây lí tưởng, lực căng tiến tới vô hạn khi $theta$ tiến tới $180 degree$ từ phía nhỏ hơn.],
    [Mọi cảm biến lực điện tử đều bắt buộc đo trực tiếp độ dãn của một lò xo để suy ra lực.],
    [Nếu ba vectơ lực tại C thực sự không đồng phẳng, nút vẫn có thể cân bằng chỉ nhờ ba lực đó.],
  ),
  ans-tf: ("S", "Đ", "S", "S"),
  sol: [a) $2 T cos(theta/2) = m g$ nên $T = frac(m g, 2 cos(theta/2))$ tăng khi $theta$ tăng. (Sai)
    #parbreak() b) Mẫu số tiến tới 0 từ phía dương nên giới hạn lí thuyết là vô hạn. Dây thật đạt giới hạn chịu lực trước đó. (Đúng)
    #parbreak() c) Chưa có thông tin cấu tạo nên không thể khẳng định cơ chế đo ấy cho mọi cảm biến. Phải dùng thông số và quy trình hiệu chuẩn của thiết bị. (Sai)
    #parbreak() d) Ba lực khác 0 cân bằng thỏa $bold(T)_1 + bold(T)_2 + bold(P) = 0$, vì vậy một vectơ là tổ hợp của hai vectơ kia và cả ba phải đồng phẳng. Nếu không đồng phẳng, nút không cân bằng hoặc còn lực chưa xét. (Sai)],
)

= Phần III. Trắc nghiệm trả lời ngắn
#sbt-instructions(reset: true)[Ghi kết quả theo đơn vị và yêu cầu làm tròn trong đề.]

// SHORT-01
#vp-question(
  [Chậu cây $m = "8,0" thin "kg"$ được treo bằng ba dây nhẹ bố trí đối xứng quanh trục thẳng đứng qua trọng tâm. Mỗi dây hợp phương thẳng đứng góc $30 degree$; các hình chiếu ngang cách nhau góc $120 degree$. Hệ cân bằng; lấy $g = "9,8" thin "m/s"^2$. Tính lực căng mỗi dây theo N, làm tròn một chữ số thập phân.],
  type: "short",
  ans: "30,2",
  sol: [Đối xứng cho ba lực căng bằng nhau, các thành phần ngang triệt tiêu. $3 T cos 30 degree = m g$, nên $T = frac(8 times "9,8", 3 cos 30 degree) approx "30,176" thin "N"$. Điền $"30,2"$.],
)

// SHORT-02
#vp-question(
  [Vệ tinh khối lượng $500 thin "kg"$ ở độ cao bằng bán kính Trái Đất $R$. Coi Trái Đất hình cầu, bỏ tự quay; gia tốc hấp dẫn tại mặt đất $g_0 = "9,80" thin "m/s"^2$. Tính trọng lực tác dụng lên vệ tinh theo N.],
  type: "short",
  ans: "1225",
  sol: [$g = g_0 R^2/(2 R)^2 = g_0/4 = "2,45" thin "m/s"^2$. Do đó $P = 500 times "2,45" = 1225 thin "N"$.],
)

// SHORT-03
#vp-question(
  [Hai dây cáp cùng kéo lên một dầm, mỗi dây hợp phương ngang góc $45 degree$ và có lực căng $800 thin "kN"$. Tính tổng các thành phần lực thẳng đứng do hai dây tác dụng lên dầm, theo kN và làm tròn đến hàng đơn vị.],
  type: "short",
  ans: "1131",
  sol: [$F_y = 2 T sin 45 degree = 800 sqrt(2) thin "kN" approx "1131,37" thin "kN"$. Làm tròn đến hàng đơn vị: $1131 thin "kN"$.],
)

// SHORT-04
#vp-question(
  [Thang máy và người có tổng khối lượng $800 thin "kg"$ đang đi lên. Lực căng cáp $9600 thin "N"$; hệ chỉ chịu lực căng và trọng lực theo phương đứng. Lấy $g = "9,8" thin "m/s"^2$. Tính gia tốc hướng lên theo m/s².],
  type: "short",
  ans: "2,2",
  sol: [$T - M g = M a$, nên $a = frac(9600 - 800 times "9,8", 800) = "2,2" thin "m/s"^2$.],
)

// SHORT-05
#vp-question(
  [Con lắc nón gồm quả cầu $"2,0" thin "kg"$ treo bằng dây nhẹ dài $"0,8" thin "m"$, chuyển động tròn đều trong mặt phẳng ngang. Dây hợp phương thẳng đứng góc $60 degree$. Lấy $g = 10 thin "m/s"^2$. Tính lực căng dây theo N.
    #align(center, bai-12-hinh("con-lac-non"))],
  type: "short",
  ans: "40",
  sol: [Gia tốc thẳng đứng bằng 0: $T cos 60 degree = m g$. Suy ra $T = frac(2 times 10, cos 60 degree) = 40 thin "N"$. Thành phần ngang của lực căng tạo gia tốc hướng tâm.],
)

= Phần IV. Tự luận
#sbt-essay-instructions(reset: true)[Trình bày lập luận, công thức, phép tính và kết luận.]

// ESSAY-01
#vp-question(
  [Xét mô hình dầm nằm ngang khối lượng $m = 50 thin "tấn"$, được đỡ chỉ bởi hai dây nhẹ đối xứng. Các dây kéo hai đầu dầm lên và vào phía trụ giữa, mỗi dây hợp phương ngang góc $alpha$. Dầm và hệ treo cân bằng; lấy $g = "9,8" thin "m/s"^2$.
    #align(center, bai-12-hinh("dam-hai-cap"))
    a) Thiết lập lực căng mỗi dây theo $m, g, alpha$.
    #parbreak() b) Tính lực căng khi $alpha = 60 degree$ và $alpha = 20 degree$, theo kN, làm tròn một chữ số thập phân.
    #parbreak() c) Phân tích tác dụng của thành phần ngang $T_x = T cos alpha$ lên dầm và xu hướng khi góc giảm. Có thể chỉ từ mô hình này suy ra một giới hạn thiết kế chung $alpha >= 25 degree$ không?],
  type: "essay",
  lines: 12,
  sol: [a) Hai thành phần ngang đối nhau; cân bằng đứng cho
    $ 2 T sin alpha = m g => T = frac(m g, 2 sin alpha). $
    #parbreak() b) $P = 50000 times "9,8" = 490000 thin "N" = 490 thin "kN"$.
    $ T_(60 degree) = frac(245, sin 60 degree) approx "282,9" thin "kN"; quad
      T_(20 degree) = frac(245, sin 20 degree) approx "716,3" thin "kN". $
    Không làm tròn giá trị sin ở bước trung gian.
    #parbreak() c) Hai lực ngang hướng vào nhau gây nén dọc dầm:
    $ T_x = T cos alpha = frac(m g, 2 tan alpha). $
    Cả $T$ và $T_x$ tăng khi góc giảm và tiến tới vô hạn khi $alpha -> 0 degree$ trong mô hình lí tưởng. Tổng lực ngang bằng 0 không có nghĩa dầm không chịu nén. Không có một góc giới hạn chung suy ra chỉ từ đây; còn thiếu sức chịu lực, kích thước và điều kiện kết cấu.],
)

// ESSAY-02
#vp-question(
  [Trong mô hình thang máy, cabin cùng hành khách có tổng khối lượng $M = 1200 thin "kg"$ đang đi xuống với tốc độ $v_0 = "8,0" thin "m/s"$ thì cáp đứt. Trước lúc phanh, hệ chỉ chịu trọng lực; lấy $g = "9,8" thin "m/s"^2$.
    #parbreak() a) Mô tả chuyển động của cabin và trọng lượng biểu kiến của người. Giả sử người ban đầu tiếp xúc sàn, không có vận tốc tương đối với cabin.
    #parbreak() b) Sau khi cabin đi xuống thêm $h = "4,0" thin "m"$, cơ cấu hãm tác dụng lực không đổi $F_h = 18000 thin "N"$ hướng lên cho đến lúc cabin dừng. Tính gia tốc khi hãm và quãng đường hãm.
    #parbreak() c) Tính lực người khối lượng $70 thin "kg"$ ép lên sàn trong giai đoạn hãm, coi người chuyển động cùng cabin và vẫn tiếp xúc sàn.],
  type: "essay",
  lines: 14,
  sol: [a) Trước khi phanh, cabin và người cùng rơi tự do với gia tốc $g$ hướng xuống. Lực đỡ $N = 0$, người mất trọng lượng biểu kiến nhưng vẫn chịu trọng lực.
    #parbreak() b) Vận tốc ngay trước hãm:
    $ v_1^2 = v_0^2 + 2 g h = 8^2 + 2 times "9,8" times 4 = "142,4" thin "m"^2/"s"^2. $
    Suy ra $v_1 approx "11,93" thin "m/s"$ hướng xuống. Chọn chiều dương lên:
    $ a_h = frac(F_h - M g, M) = frac(18000 - 1200 times "9,8", 1200) = "5,2" thin "m/s"^2. $
    Cabin có gia tốc lên nên chậm dần khi đang đi xuống. Quãng đường hãm:
    $ s_h = frac(v_1^2, 2 a_h) = frac("142,4", "10,4") approx "13,69" thin "m". $
    #align(center, bai-12-hinh("thang-may-luc"))
    #parbreak() c) Lực sàn đỡ người: $N = m(g + a_h) = 70("9,8" + "5,2") = 1050 thin "N"$. Người ép sàn bằng lực cùng độ lớn. Kết quả áp dụng cho giai đoạn hãm của mô hình, không phải lực giữ hệ sau khi đã dừng.],
)

// ESSAY-03
#vp-question(
  [Con lắc đơn có $m = "0,50" thin "kg"$, dây nhẹ không giãn dài $L = "1,2" thin "m"$, lực căng giới hạn $T_("gh") = "12,5" thin "N"$. Kéo dây lệch góc $0 degree < alpha_0 < 90 degree$ rồi thả từ nghỉ. Bỏ lực cản; lấy $g = "9,8" thin "m/s"^2$.
    #align(center, bai-12-hinh("con-lac-alpha"))
    a) Thiết lập lực căng $T(alpha)$ theo góc lệch hiện tại $alpha$, góc ban đầu $alpha_0$, $m$ và $g$.
    #parbreak() b) Chứng minh lực căng đạt cực đại tại vị trí thấp nhất và tìm biểu thức cực đại.
    #parbreak() c) Tính góc thả lớn nhất để lực căng không vượt giới hạn, làm tròn đến hai chữ số thập phân.],
  type: "essay",
  lines: 12,
  sol: [a) Chiếu theo hướng từ quả cầu về điểm treo:
    $ T - m g cos alpha = frac(m v^2, L). $
    Bảo toàn cơ năng cho $v^2 = 2 g L(cos alpha - cos alpha_0)$. Thay vào:
    $ T(alpha) = m g(3 cos alpha - 2 cos alpha_0). $
    #parbreak() b) Trên khoảng dao động $-alpha_0 <= alpha <= alpha_0$, $cos alpha$ lớn nhất bằng 1 ở đáy. Do đó
    $ T_("max") = m g(3 - 2 cos alpha_0). $
    #parbreak() c) Điều kiện không đứt:
    $ "4,9"(3 - 2 cos alpha_0) <= "12,5"
      => cos alpha_0 >= frac(3 - "12,5"/"4,9", 2) = frac(11, 49). $
    Suy ra $alpha_(0,"max") = arccos(11/49) approx "77,03" degree$. Giá trị này nhỏ hơn $90 degree$, phù hợp giả thiết dây căng ngay từ lúc thả.],
)

// ESSAY-04
#vp-question(
  [Vật $m = "0,500" thin "kg"$ treo tại C giữa hai nhánh dây nhẹ AC và BC, đối xứng qua phương thẳng đứng. Hai cảm biến ở A, B đo lực căng; điều chỉnh vị trí A, B để thay đổi góc $theta = angle A C B$. Lấy $g = "9,80" thin "m/s"^2$.
    #align(center, bai-12-hinh("hai-day-theta"))
    a) Lập bảng lực căng lí thuyết mỗi nhánh tại $theta = 30 degree$, $60 degree$, $90 degree$, $120 degree$, $150 degree$; làm tròn hai chữ số thập phân.
    #parbreak() b) Vẽ đồ thị $T(theta)$ và nhận xét khi $theta$ tiến tới $180 degree$.
    #parbreak() c) Tại góc đặt $120 degree$, hai cảm biến chỉ $"4,98" thin "N"$ và $"5,02" thin "N"$. Lấy trung bình hai số chỉ để so sánh với lí thuyết, tính độ lệch tương đối so với giá trị lí thuyết. Nêu hai khả năng gây chênh lệch và cách kiểm tra.],
  type: "essay",
  lines: 14,
  sol: [a) Cân bằng thẳng đứng: $2 T cos(theta/2) = m g$. Suy ra $T = frac("2,45", cos(theta/2)) thin "N"$.
    #table(
      columns: 6, align: center, inset: 5pt, stroke: 0.5pt + luma(75%),
      [$theta$], [$30 degree$], [$60 degree$], [$90 degree$], [$120 degree$], [$150 degree$],
      [$T$ (N)], [2,54], [2,83], [3,46], [4,90], [9,47],
    )
    #parbreak() b) Đồ thị lí thuyết:
    #align(center, bai-12-hinh("do-thi-luc-cang"))
    $T$ tăng ngày càng nhanh khi $theta$ tăng; $theta = 180 degree$ là tiệm cận đứng. Dây thực không thể chịu lực vô hạn.
    #parbreak() c) $T_("lt") = "4,90" thin "N"$; $overline(T) = ("4,98" + "5,02")/2 = "5,00" thin "N"$.
    $ delta = frac(abs("5,00" - "4,90"), "4,90") times 100% approx "2,04"%. $
    Đây là độ lệch của trung bình so với mô hình, chưa phải đánh giá đầy đủ độ không đảm bảo của phép đo. Độ lệch của riêng hai kênh lần lượt khoảng $"1,63"%$ và $"2,45"%$.
    #parbreak() Hai khả năng: cảm biến lệch điểm không/hệ số hiệu chuẩn (kiểm tra bằng tải chuẩn); góc thực khác góc đặt hoặc hai nhánh không đối xứng (đo lại từng góc). Chưa đủ dữ liệu để kết luận chắc chắn nguyên nhân.],
)

// ESSAY-05
#vp-question(
  [Dây nhẹ không giãn vắt qua hai ròng rọc nhỏ cố định A, B cùng độ cao, cách nhau $D = "1,6" thin "m"$. Hai đầu tự do treo hai vật có cùng khối lượng $m$; vật $M = 10 thin "kg"$ gắn vào điểm giữa C của toàn dây. Bỏ qua kích thước, khối lượng và ma sát ròng rọc; lấy $g = "9,8" thin "m/s"^2$.
    #parbreak() Ở một cấu hình cân bằng đối xứng, phần dây giữa hai ròng rọc có chiều dài $S = A C + C B = "2,0" thin "m"$. Đây là chiều dài phần ACB ở cấu hình đang xét, không phải tổng chiều dài toàn sợi dây.
    #align(center, bai-12-hinh("hai-rong-roc"))
    a) Vẽ sơ đồ lực của nút C cùng vật M; gọi $theta$ là góc nhánh CA với phương ngang.
    #parbreak() b) Tính $theta$ và khối lượng $m$ để có cấu hình cân bằng trên.
    #parbreak() c) Thay hai vật đầu dây bằng hai vật $m = "6,0" thin "kg"$. Khi các vật dịch chuyển, phần ACB được phép dài thêm còn tổng chiều dài toàn dây không đổi. Giả sử dây đủ dài, các vật không chạm sàn hay ròng rọc. Có cấu hình cân bằng mới không? Tìm góc và độ hạ của C so với đường AB tại cấu hình đó, đồng thời nêu điều kiện tổng quát theo $m, M$.],
  type: "essay",
  lines: 12,
  sol: [a) Xét nút nhẹ cùng vật M: hai lực căng hướng từ C đến A và B, trọng lực $M g$ hướng xuống. Ở cân bằng, mỗi vật đầu dây đứng yên nên $T_1 = T_2 = m g$.
    #align(center, bai-12-hinh("hai-rong-roc-luc"))
    Cân bằng đứng: $2 T sin theta = M g$, tức $2 m sin theta = M$.
    #parbreak() b) Do đối xứng, $A C = C B = S/2 = 1 thin "m"$. Hình chiếu ngang mỗi nhánh dài $D/2 = "0,8" thin "m"$:
    $ cos theta = frac(D, S) = "0,8" => theta approx "36,87" degree. $
    Vì $sin theta = "0,6"$ nên $m = M/(2 sin theta) = 10/"1,2" approx "8,33" thin "kg"$. Độ hạ của C lúc này bằng $"0,60" thin "m"$.
    #parbreak() c) Với $m = 6 thin "kg"$, cấu hình cũ không cân bằng; cấu hình mới phải có
    $ sin theta' = frac(M, 2 m) = frac(5, 6) => theta' approx "56,44" degree. $
    Độ hạ:
    $ y' = frac(D, 2) tan theta' = frac(4, sqrt(11)) thin "m" approx "1,206" thin "m". $
    Phần giữa dài thêm thành $S' = D/cos theta' approx "2,895" thin "m"$; mỗi đoạn thẳng đứng đầu dây ngắn đi khoảng $"0,447" thin "m"$. Điều này phù hợp giả thiết có đủ hành trình.
    #parbreak() Với $D > 0$, cấu hình cân bằng hữu hạn có $0 < sin theta < 1$, nên điều kiện là $m > M/2$. Ở $m = M/2$, góc cần tiến tới $90 degree$ và độ hạ không hữu hạn. Có vị trí cân bằng không có nghĩa hệ thả tự do sẽ tự dừng ở đó khi không có cơ chế tiêu hao năng lượng.],
)



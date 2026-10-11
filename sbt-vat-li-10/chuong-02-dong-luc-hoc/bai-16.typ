#import "../cau-hinh.typ": *
#import "images/bai-16-hinh.typ": bai-16-hinh

// Nguồn: bài 16 nguyên văn. Cập nhật ngày 2026-10-08.
#sbt-bai(num: "16", title: "Momen lực và Cân bằng của vật rắn", label: <bai-16>)

= Phần I. Trắc nghiệm khách quan
#sbt-instructions(reset: true)[Chọn một phương án đúng cho mỗi câu.]

// MCQ-01
#vp-question(
  [Một thợ cơ khí dùng một chiếc cờ-lê dài $L = 25 thin "cm"$ để siết chặt một con ốc bánh xe ô tô. Lực tác dụng $F = 120 thin "N"$ đặt ở cuối cán cờ-lê và hợp với cán cờ-lê một góc $alpha = 60 degree$. Cánh tay đòn $d$ của lực $F$ đối với trục quay qua tâm con ốc và độ lớn momen lực $M$ lần lượt bằng bao nhiêu (làm tròn mỗi kết quả đến hai chữ số thập phân)?],
  type: "mcq",
  options: (
    [$d = "25,0" thin "cm"$; $M = "30,0" thin "N" dot "m"$.],
    [$d = "21,65" thin "cm"$; $M = "30,00" thin "N" dot "m"$.],
    [$d = "12,5" thin "cm"$; $M = "15,0" thin "N" dot "m"$.],
    [$d = "21,65" thin "cm"$; $M = "25,98" thin "N" dot "m"$.]
  ),
  ans: "D",
  sol: [$d = L sin(alpha) = "0,25" sin(60 degree) approx "21,65" thin "cm"$.
    #parbreak() Dùng giá trị chưa làm tròn: $M = F L sin(alpha) approx "25,98" thin "N" dot "m"$.],
)

// MCQ-02
#vp-question(
  [Một cánh cửa sắt nặng đang đứng yên. Tác dụng vào cánh cửa một lực $bold(F)$ có độ lớn $100 thin "N"$. Trong trường hợp nào sau đây lực $bold(F)$ không làm quay cánh cửa xung quanh bản lề (trục quay)?],
  type: "mcq",
  options: (
    [Lực $bold(F)$ vuông góc với mặt phẳng cánh cửa tại mép ngoài.],
    [Lực $bold(F)$ hướng vuông góc với cánh cửa tại vị trí tay cầm.],
    [Lực $bold(F)$ có giá đi qua hoặc song song với trục quay bản lề.],
    [Lực $bold(F)$ hợp với mặt phẳng cánh cửa một góc $45 degree$ tại điểm giữa cánh cửa.]
  ),
  ans: "C",
  sol: [Khi giá lực cắt trục bản lề, momen đối với trục đó bằng không. Khi lực song song trục bản lề, thành phần momen quanh trục cũng bằng không, dù khoảng cách giữa giá lực và trục có thể khác không.],
)

// MCQ-03
#vp-question(
  [Tài xế ô tô dùng hai tay tác dụng một ngẫu lực vào vô-lăng có đường kính $D = 38 thin "cm"$ để đánh lái ngoặt xe. Mỗi lực có độ lớn $F_1 = F_2 = 15 thin "N"$, tác dụng ở hai điểm đối diện trên vành vô-lăng theo các tiếp tuyến của vành, ngược chiều và song song với nhau. Độ lớn momen của ngẫu lực tác dụng lên vô-lăng bằng],
  type: "mcq",
  options: (
    [$"5,7" thin "N" dot "m"$.],
    [$"11,4" thin "N" dot "m"$.],
    [$"2,85" thin "N" dot "m"$.],
    [$"0,0" thin "N" dot "m"$ do hai lực ngược chiều triệt tiêu nhau.]
  ),
  ans: "A",
  sol: [Momen của ngẫu lực $M = F dot D = 15 dot "0,38" = "5,7" thin "N" dot "m"$ (không phụ thuộc vị trí trục vuông góc với mặt phẳng ngẫu lực).],
)

// MCQ-04
#vp-question(
  [Một dầm rắn ban đầu đứng yên, chịu các ngoại lực đồng phẳng. Điều kiện để dầm duy trì cân bằng là],
  type: "mcq",
  options: (
    [Tổng độ lớn các lực hướng lên bằng tổng độ lớn các lực hướng xuống.],
    [Hợp lực của tất cả các ngoại lực tác dụng lên dầm bằng 0 ($sum bold(F) = bold(0)$) và tổng momen của tất cả các lực đối với một trục quay bất kỳ bằng 0 ($sum M = 0$).],
    [Tổng momen các lực làm quay theo chiều kim đồng hồ bằng tổng momen các lực làm quay ngược chiều kim đồng hồ đối với trọng tâm dầm.],
    [Dầm cầu không chịu tác dụng của lực ma sát và lực cản môi trường.]
  ),
  ans: "B",
  sol: [Hợp lực bằng không nên khối tâm không có gia tốc; tổng momen bằng không nên vật không có gia tốc góc. Với trạng thái ban đầu đứng yên, vật duy trì cân bằng. Có thể lấy momen quanh một trục vuông góc với mặt phẳng các lực.],
)

// MCQ-05
#vp-question(
  [Một người phụ nữ quẩy đòn gánh dài $L = "1,5" thin "m"$ nằm ngang mang hai gánh hàng. Gánh rau ở đầu $A$ có trọng lượng $P_A = 120 thin "N"$, gánh hoa quả ở đầu $B$ có trọng lượng $P_B = 180 thin "N"$. Bỏ qua trọng lượng đòn gánh. Điểm đặt của vai $O$ trên đòn gánh cách đầu $A$ một khoảng $d_A$ bằng bao nhiêu để đòn gánh cân bằng nằm ngang?],
  type: "mcq",
  options: (
    [$"0,60" thin "m"$.],
    [$"0,90" thin "m"$.],
    [$"0,75" thin "m"$.],
    [$"0,50" thin "m"$.]
  ),
  ans: "B",
  sol: [Quy tắc hợp lực song song cùng chiều: $P_A dot d_A = P_B dot d_B => 120 dot d_A = 180 dot ("1,5" - d_A) => 300 d_A = 270 => d_A = "0,9" thin "m"$. Cánh tay đòn từ $A$ là $"0,90" thin "m"$.],
)

// MCQ-06
#vp-question(
  [Một mô hình xe tải đứng yên trên mặt phẳng nghiêng ngang góc $alpha$. Tăng góc nghiêng chậm, giả sử ma sát đủ lớn để xe không trượt và xe không biến dạng. Xe mất cân bằng và bắt đầu lật khi],
  type: "mcq",
  options: (
    [Trọng lượng xe vượt quá tải trọng thiết kế của bánh xe.],
    [Giá của trọng lực $bold(P)$ tác dụng lên xe đi ra ngoài mặt chân đế giới hạn bởi các điểm tiếp xúc của bánh xe với mặt đường.],
    [Lực ma sát nghỉ giữa bánh xe và mặt đường nhỏ hơn thành phần trọng lực $P sin(alpha)$.],
    [Góc nghiêng $alpha$ của mặt đường vượt quá $15 degree$.]
  ),
  ans: "B",
  sol: [Khi giá trọng lực vượt ra ngoài mặt chân đế, các phản lực tiếp xúc không thể cân bằng momen trọng lực. Ở ngưỡng lật, giá trọng lực đi qua biên mặt chân đế.],
)

// MCQ-07
#vp-question(
  [Thanh nhẹ $A B$ dài $L$ có thể quay quanh bản lề $A$. Tác dụng lực $F$ vào đầu $B$. Góc giữa vectơ lực $bold(F)$ và đường kéo dài của thanh $A B$ là $theta$. Lực nằm trong mặt phẳng vuông góc với trục bản lề. Độ lớn momen của lực $F$ đối với trục quay $A$ được tính theo công thức],
  type: "mcq",
  options: (
    [$M = F dot L dot cos(theta)$.],
    [$M = F dot L dot tan(theta)$.],
    [$M = F dot L dot sin(theta)$.],
    [$M = F dot L$.]
  ),
  ans: "C",
  sol: [$d = L dot sin(theta) => M = F dot L dot sin(theta)$.],
)

// MCQ-08
#vp-question(
  [Mô hình cần cẩu gồm thanh nhẹ nằm ngang, có thể quay trong mặt phẳng thẳng đứng quanh điểm tựa $O$. Đối trọng $M_1 = 4 thin "tấn"$ ở một phía, cách $O$ một đoạn $5 thin "m"$. Vật $M_2 = 2 thin "tấn"$ treo ở phía kia phải cách $O$ bao nhiêu để thanh cân bằng? Bỏ qua ma sát trục.],
  type: "mcq",
  options: (
    [$10 thin "m"$.],
    [$15 thin "m"$.],
    [$20 thin "m"$.],
    [$25 thin "m"$.]
  ),
  ans: "A",
  sol: [Cân bằng momen đối với trục quay: $M_1 dot d_1 = M_2 dot d_2 => 4 dot 5 = 2 dot d_2 => 20 = 2 dot d_2 => d_2 = 10 thin "m"$.],
)

// MCQ-09
#vp-question(
  [Lực có độ lớn $F$ không đổi đặt tại đầu thanh dài $L$, quay quanh đầu cố định. Lực và thanh nằm trong mặt phẳng vuông góc trục quay. Góc giữa vectơ lực và vectơ từ trục đến điểm đặt thay đổi từ $0 degree$ đến $180 degree$. Đồ thị nào biểu diễn đúng độ lớn momen $M$ theo góc $alpha$? (Trục tung chuẩn hóa theo $F L$.)],
  type: "mcq",
  options: (
    [#box(baseline: 50%, bai-16-hinh("do-thi-a"))],
    [#box(baseline: 50%, bai-16-hinh("do-thi-b"))],
    [#box(baseline: 50%, bai-16-hinh("do-thi-c"))],
    [#box(baseline: 50%, bai-16-hinh("do-thi-d"))],
  ),
  ans: "B",
  sol: [$M = F dot L dot sin(alpha)$, đồ thị phụ thuộc góc $alpha$ từ $0 degree -> 180 degree$ có dạng hình sin, cực đại tại $90 degree$.],
)

// MCQ-10
#vp-question(
  [Đặt một hình cầu đồng chất trên 3 bề mặt khác nhau: (1) Đỉnh một mặt cầu lồi; (2) Đáy một mặt cầu lõm; (3) Mặt phẳng nằm ngang. Dạng cân bằng của hình cầu trên 3 bề mặt (1), (2), (3) lần lượt là],
  type: "mcq",
  options: (
    [Bền, Không bền, Phiếm định.],
    [Không bền, Bền, Phiếm định.],
    [Phiếm định, Bền, Không bền.],
    [Không bền, Phiếm định, Bền.]
  ),
  ans: "B",
  sol: [Đỉnh cầu lồi: Không bền; Đáy cầu lõm: Bền; Mặt phẳng ngang: Phiếm định.],
)

// MCQ-11
#vp-question(
  [Mô hình ô tô là vật rắn khối lượng $2600 thin "kg"$, đứng yên trên hai gối đỡ trước và sau cách nhau $L = "3,0" thin "m"$. Trọng tâm nằm giữa hai gối, cách gối trước $"1,2" thin "m"$ theo phương ngang. Lực nén lên gối sau bằng bao nhiêu? Lấy $g = "9,8" thin "m/s"^2$.],
  type: "mcq",
  options: (
    [$15288 thin "N"$.],
    [$10192 thin "N"$.],
    [$25480 thin "N"$.],
    [$12740 thin "N"$.]
  ),
  ans: "B",
  sol: [Momen đối với gối trước: $P dot d_1 = N_"sau" dot L => 2600 dot "9,8" dot "1,2" = N_"sau" dot "3,0" => N_"sau" = 10192 thin "N"$.],
)

// MCQ-12
#vp-question(
  [Nhận định nào sau đây là ĐÚNG khi nói về tác dụng của một ngẫu lực lên một vật rắn tự do (không có trục quay cố định)?],
  type: "mcq",
  options: (
    [Ngẫu lực làm vật vừa quay vừa tịnh tiến nhanh dần đều.],
    [Hợp lực của ngẫu lực bằng không nên không làm thay đổi vận tốc khối tâm, nhưng ngẫu lực có thể làm thay đổi chuyển động quay của vật.],
    [Momen của ngẫu lực phụ thuộc vào vị trí chọn trục quay vuông góc với mặt phẳng ngẫu lực.],
    [Ngẫu lực có thể thay thế bằng một lực đơn lẻ có cùng độ lớn.]
  ),
  ans: "B",
  sol: [Ngẫu lực có hợp lực bằng không và momen khác không. Khi chỉ chịu ngẫu lực, khối tâm đứng yên hoặc chuyển động thẳng đều tùy điều kiện ban đầu. Momen ngẫu lực như nhau đối với các trục song song cùng vuông góc mặt phẳng ngẫu lực.],
)

// MCQ-13
#vp-question(
  [Một chiếc thang đồng chất trọng lượng $P = 200 thin "N"$ đứng yên, tựa vào tường nhẵn thẳng đứng (không ma sát) và sàn nhà nằm ngang có ma sát. Góc nghiêng của thang so với sàn là $alpha = 60 degree$. Độ lớn lực pháp tuyến $N_T$ do tường tác dụng lên đầu trên của thang bằng],
  type: "mcq",
  options: (
    [$"57,7" thin "N"$.],
    [$"100,0" thin "N"$.],
    [$"173,2" thin "N"$.],
    [$"115,5" thin "N"$.]
  ),
  ans: "A",
  sol: [Lấy momen quanh chân thang:
    $ N_T L sin(alpha) = P frac(L, 2) cos(alpha) => N_T = frac(P, 2 tan(alpha)) = frac(100, sqrt(3)) approx "57,7" thin "N". $],
)

// MCQ-14
#vp-question(
  [Hai lực song song cùng chiều $bold(F)_1$ và $bold(F)_2$ vuông góc với thanh, đặt tại hai đầu $A$ và $B$ của một thanh nhẹ $A B$ dài $80 thin "cm"$. Hợp lực $bold(F) = bold(F)_1 + bold(F)_2$ có độ lớn $100 thin "N"$ và điểm đặt $O$ cách $A$ một khoảng $30 thin "cm"$. Độ lớn của hai lực $F_1$ và $F_2$ lần lượt là],
  type: "mcq",
  options: (
    [$F_1 = 60 thin "N", F_2 = 40 thin "N"$.],
    [$F_1 = "62,5" thin "N", F_2 = "37,5" thin "N"$.],
    [$F_1 = "37,5" thin "N", F_2 = "62,5" thin "N"$.],
    [$F_1 = 50 thin "N", F_2 = 50 thin "N"$.]
  ),
  ans: "B",
  sol: [$F_1 + F_2 = 100$; $F_1 dot d_1 = F_2 dot d_2 => F_1 dot 30 = F_2 dot 50 => 3 F_1 = 5 F_2 => F_1 = "62,5" thin "N", F_2 = "37,5" thin "N"$.],
)

// MCQ-15
#vp-question(
  [Một đĩa tròn mỏng đồng chất bán kính $R$. Người ta khoét một lỗ tròn bán kính $r = R/2$ có tâm cách tâm đĩa tròn một khoảng $R/2$.
    #align(center, bai-16-hinh("dia-khoet"))
    Trọng tâm của phần đĩa còn lại bị dịch chuyển so với tâm đĩa ban đầu một khoảng bằng],
  type: "mcq",
  options: (
    [$R/3$.],
    [$R/6$.],
    [$R/4$.],
    [$R/2$.]
  ),
  ans: "B",
  sol: [Đĩa nguyên khối lượng $M$, phần khoét $m = M/4$, phần còn lại $M' = 3M/4$. Tọa độ trọng tâm: $0 = m dot (R/2) + M' dot x => x = - ((M/4)(R/2))/(3M/4) = - R/6$. Dịch chuyển $R/6$.],
)

// MCQ-16
#vp-question(
  [Hai em học sinh chơi bập bênh gồm một thanh gỗ đồng chất dài $"4,0" thin "m"$ có trục quay cố định tại điểm chính giữa. Em A khối lượng $m_A = 30 thin "kg"$ ngồi ở đầu thanh. Em B khối lượng $m_B = 45 thin "kg"$ phải ngồi cách trục quay bao nhiêu để thanh bập bênh cân bằng nằm ngang?],
  type: "mcq",
  options: (
    [$"1,33" thin "m"$.],
    [$"1,50" thin "m"$.],
    [$"2,00" thin "m"$.],
    [$"1,00" thin "m"$.]
  ),
  ans: "A",
  sol: [$m_A dot d_A = m_B dot d_B => 30 dot "2,0" = 45 dot d_B => d_B = 60/45 approx "1,33" thin "m"$.],
)

// MCQ-17
#vp-question(
  [Trong một bài toán lý tưởng, cần tạo momen $40 thin "N" dot "m"$ quanh trục bu-lông bằng cờ-lê dài $30 thin "cm"$. Lực vuông góc đặt ở cuối cán phải có độ lớn bao nhiêu?],
  type: "mcq",
  options: (
    [$"133,3" thin "N"$.],
    [$"12,0" thin "N"$.],
    [$"120,0" thin "N"$.],
    [$"13,3" thin "N"$.]
  ),
  ans: "A",
  sol: [$M = F dot d => 40 = F dot "0,30" => F = frac(40, "0,30") approx "133,3" thin "N"$.],
)

// MCQ-18
#vp-question(
  [Hai quả cầu nhỏ khối lượng $m_1 = "1,0" thin "kg"$ và $m_2 = "3,0" thin "kg"$ nối với nhau bằng một thanh nhẹ với khoảng cách hai tâm $L = "1,0" thin "m"$. Trọng tâm của hệ hai quả cầu cách quả cầu $m_1$ một khoảng],
  type: "mcq",
  options: (
    [$"0,25" thin "m"$.],
    [$"0,75" thin "m"$.],
    [$"0,50" thin "m"$.],
    [$"0,33" thin "m"$.]
  ),
  ans: "B",
  sol: [$x_G = (m_2 dot L)/(m_1 + m_2) = ("3,0" dot "1,0")/("1,0" + "3,0") = "0,75" thin "m"$ từ $m_1$.],
)

// MCQ-19
#vp-question(
  [Một thanh sắt đồng chất tiết diện đều chiều dài $L = "2,0" thin "m"$, khối lượng $m = 10 thin "kg"$ có một đầu gắn vào bản lề trên tường. Khi thanh hợp với phương thẳng đứng một góc $theta = 30 degree$, độ lớn momen của trọng lực tác dụng lên thanh đối với bản lề bằng (Lấy $g = "9,8" thin "m/s"^2$)],
  type: "mcq",
  options: (
    [$"49,0" thin "N" dot "m"$.],
    [$"84,87" thin "N" dot "m"$.],
    [$"98,0" thin "N" dot "m"$.],
    [$"24,5" thin "N" dot "m"$.]
  ),
  ans: "A",
  sol: [$M = P dot (L/2) dot sin(theta) = 10 dot "9,8" dot "1,0" dot sin(30 degree) = "49,0" thin "N" dot "m"$.],
)

// MCQ-20
#vp-question(
  [Mô hình xe tải cứng có vệt bánh rộng $b = "1,6" thin "m"$, trọng tâm ở mặt phẳng đối xứng giữa hai bên bánh và cao $h = "1,2" thin "m"$. Xe chuyển động tròn đều trên đường ngang bán kính $R = 40 thin "m"$. Giả sử ma sát đủ để không trượt, bỏ qua biến dạng hệ treo. Tốc độ tại ngưỡng bánh trong mất tiếp xúc là bao nhiêu? Lấy $g = "9,8" thin "m/s"^2$.],
  type: "mcq",
  options: (
    [$"16,17" thin "m/s"$ ($"58,2" thin "km/h"$).],
    [$"11,43" thin "m/s"$ ($"41,1" thin "km/h"$).],
    [$"22,86" thin "m/s"$ ($"82,3" thin "km/h"$).],
    [$"14,0" thin "m/s"$ ($"50,4" thin "km/h"$).]
  ),
  ans: "A",
  sol: [Ở ngưỡng lật, phản lực phía trong bằng không. Cân bằng momen trong mô hình cho
    $ m g frac(b, 2) = frac(m v_("max")^2, R) h => v_("max") = sqrt(frac(g R b, 2 h)) approx "16,17" thin "m/s" approx "58,2" thin "km/h". $],
)

= Phần II. Trắc nghiệm Đúng/Sai
#sbt-instructions(reset: true)[Xác định mỗi phát biểu là đúng hay sai.]

// TF-01
#vp-question(
  [Một thanh kim loại đồng chất $A B$ chiều dài $L = "2,0" thin "m"$, khối lượng $m = "6,0" thin "kg"$ có thể quay tự do quanh một trục cố định nằm ngang đi qua đầu $A$. Một lực $bold(F)$ tác dụng vào đầu $B$ để giữ thanh cân bằng nằm ngang. Lấy $g = "9,8" thin "m/s"^2$. Các lực nằm trong mặt phẳng thẳng đứng vuông góc trục quay. Xét các phát biểu sau:],
  type: "tf",
  statements: (
    [Momen của trọng lực $bold(P)$ tác dụng lên thanh đối với trục quay $A$ có độ lớn $M_P = "58,8" thin "N" dot "m"$.],
    [Nếu lực $bold(F)$ hướng thẳng đứng lên trên, độ lớn lực $F$ tối thiểu để giữ thanh nằm ngang là $"29,4" thin "N"$.],
    [Nếu lực $bold(F)$ hướng chếch lên và hợp với phương thẳng đứng một góc $30 degree$, độ lớn lực $F$ bằng $"29,4" thin "N"$.],
    [Phản lực $bold(N)$ do trục quay $A$ tác dụng lên thanh trong trường hợp lực $F$ hướng thẳng đứng lên trên có độ lớn bằng $"29,4" thin "N"$ và hướng thẳng đứng lên trên.]
  ),
  ans-tf: ("Đ", "Đ", "S", "Đ"),
  sol: [a) ĐÚNG: $M_P = P dot (L/2) = ("6,0" dot "9,8") dot "1,0" = "58,8" thin "N" dot "m"$.
    #parbreak() b) ĐÚNG: $M_F = M_P => F dot L = "58,8" => F dot "2,0" = "58,8" => F = "29,4" thin "N"$.
    #parbreak() c) SAI: Khi lực lệch $30 degree$ so với phương đứng, $F L cos(30 degree) = P L/2$, nên $F = frac("29,4", cos(30 degree)) approx "33,95" thin "N"$.
    #parbreak() d) ĐÚNG: Cân bằng lực thẳng đứng: $N + F - P = 0 => N = P - F = "58,8" - "29,4" = "29,4" thin "N"$ hướng lên.],
)

// TF-02
#vp-question(
  [Khảo sát sự cân bằng của một tấm biển quảng cáo cửa hàng nặng $P = 300 thin "N"$ treo vào tường thẳng đứng nhờ một thanh nhẹ $A B$ dài $"1,2" thin "m"$ nằm ngang và một dây cáp $B C$ hợp với thanh $A B$ một góc $alpha = 30 degree$ (đầu $A$ gắn bản lề vào tường, đầu $B$ treo biển, $C$ trên tường và cao hơn $A$):],
  type: "tf",
  statements: (
    [Momen lực của lực căng dây $T$ đối với trục quay $A$ có cánh tay đòn $d_T = "1,2" dot sin(30 degree) = "0,6" thin "m"$.],
    [Độ lớn lực căng dây cáp $T$ bằng $600 thin "N"$.],
    [Lực nén do thanh $A B$ tác dụng vào bản lề $A$ có độ lớn bằng $300 sqrt(3) thin "N" approx "519,6" thin "N"$.],
    [Nếu tăng góc nghiêng $alpha$ của dây cáp lên $45 degree$, lực căng dây $T$ sẽ tăng lên so với khi $alpha = 30 degree$.]
  ),
  ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [a) ĐÚNG: Cánh tay đòn của $T$ là $d_T = L dot sin(30 degree) = "1,2" dot "0,5" = "0,6" thin "m"$.
    #parbreak() b) ĐÚNG: Momen đối với $A$: $T dot (L sin(30 degree)) = P dot L => T dot "0,5" = 300 => T = 600 thin "N"$.
    #parbreak() c) ĐÚNG: Cân bằng nằm ngang: $N_A = T cos(30 degree) = 600 dot sqrt(3)/2 = 300 sqrt(3) thin "N"$.
    #parbreak() d) SAI: $T = P/sin(alpha)$, khi $alpha$ tăng lên $45 degree$ thì $sin(45 degree) > sin(30 degree) => T$ giảm xuống ($T = 300 sqrt(2) approx "424,3" thin "N"$).],
)

// TF-03
#vp-question(
  [Một chiếc thang đồng chất $A B$ dài $L = "4,0" thin "m"$, khối lượng $m = 20 thin "kg"$ đứng yên, tựa vào tường thẳng đứng nhẵn (không ma sát) tại $B$ và mặt sàn nằm ngang có ma sát tại $A$. Thang hợp với mặt sàn một góc $alpha = 53 degree$ (dùng gần đúng $cos(53 degree) = "0,6"$; $sin(53 degree) = "0,8"$). Lấy $g = "9,8" thin "m/s"^2$:],
  type: "tf",
  statements: (
    [Lực pháp tuyến do sàn nhà tác dụng lên chân thang $A$ có độ lớn $N_A = 196 thin "N"$.],
    [Độ lớn lực pháp tuyến $N_B$ do tường tác dụng lên đỉnh thang bằng $"73,5" thin "N"$.],
    [Độ lớn lực ma sát nghỉ $F_("msn")$ tại chân thang $A$ bằng $"73,5" thin "N"$.],
    [Hệ số ma sát nghỉ tối thiểu $mu_"min"$ giữa chân thang và mặt sàn để thang không bị trượt là $mu_"min" = "0,375"$.]
  ),
  ans-tf: ("Đ", "Đ", "Đ", "Đ"),
  sol: [a) ĐÚNG: Cân bằng lực thẳng đứng: $N_A = P = m g = 20 dot "9,8" = 196 thin "N"$.
    #parbreak() b) ĐÚNG: Momen đối với $A$: $N_B dot L sin(53 degree) = P dot (L/2) cos(53 degree) => N_B dot "0,8" = 196 dot "0,5" dot "0,6" => N_B dot "0,8" = "58,8" => N_B = "73,5" thin "N"$.
    #parbreak() c) ĐÚNG: Cân bằng lực nằm ngang: $F_("msn") = N_B = "73,5" thin "N"$.
    #parbreak() d) ĐÚNG: $mu_n >= F_("msn")/N_A = "73,5"/196 = "0,375" => mu_"min" = "0,375" = 1/(2 tan(53 degree))$.],
)

// TF-04
#vp-question(
  [Xét đĩa quay ban đầu đứng yên, có trục cố định không ma sát. Các lực nằm trong mặt phẳng đĩa:],
  type: "tf",
  statements: (
    [Đĩa quay kim loại cân bằng khi tổng các momen lực làm đĩa quay theo chiều kim đồng hồ bằng tổng các momen lực làm đĩa quay ngược chiều kim đồng hồ đối với trục quay.],
    [Cánh tay đòn $d$ của lực là khoảng cách từ trục quay đến điểm đặt của lực trên đĩa quay.],
    [Nếu tác dụng lực $bold(F)$ vuông góc với bán kính đĩa quay tại vị trí cách trục quay $r$, momen lực tính bằng $M = F dot r$.],
    [Nếu dời điểm đặt của lực $bold(F)$ trên cùng một giá của lực thì momen lực đối với trục quay không bị thay đổi.]
  ),
  ans-tf: ("Đ", "S", "Đ", "Đ"),
  sol: [a) ĐÚNG: Tổng momen bằng không nên đĩa ban đầu đứng yên tiếp tục cân bằng.
    #parbreak() b) SAI: Cánh tay đòn là khoảng cách từ trục quay đến giá của lực (đường vuông góc), không phải khoảng cách đến điểm đặt.
    #parbreak() c) ĐÚNG: Khi $bold(F) perp bold(r)$, cánh tay đòn $d = r => M = F dot r$.
    #parbreak() d) ĐÚNG: Dời điểm đặt trên cùng một giá của lực thì $d$ không đổi $=> M$ không đổi.],
)

// TF-05
#vp-question(
  [Phân tích ứng dụng Momen lực và Cân bằng vật rắn trong thực tiễn:],
  type: "tf",
  statements: (
    [Khi dùng xà beng (đòn bẩy) để bẩy một tảng đá nặng, việc đặt điểm tựa càng gần tảng đá và lực tác dụng càng xa điểm tựa sẽ giúp giảm lực kéo/đẩy cần thiết.],
    [Với cùng mặt chân đế, nâng cao trọng tâm làm giảm góc nghiêng giới hạn lật của mô hình xe đứng yên trên mặt phẳng nghiêng.],
    [Mọi cách dùng cờ-lê để siết ốc đều là tác dụng của một ngẫu lực.],
    [Một chiếc thước dẹt đồng chất đặt cân bằng trên mép bàn. Nếu đẩy thước sao cho trọng tâm vượt ra khỏi mép bàn, thước mất cân bằng và bắt đầu lật do momen của trọng lực $bold(P)$ làm quay thước.]
  ),
  ans-tf: ("Đ", "Đ", "S", "Đ"),
  sol: [a) ĐÚNG: Tăng cánh tay đòn $d_("kéo")$ làm tăng momen lực, giảm $F_("kéo")$.
    #parbreak() b) ĐÚNG: Trọng tâm $G$ cao làm góc nghiêng giới hạn $theta_max = arctan(b/(2h))$ giảm xuống, dễ lật xe.
    #parbreak() c) SAI: Một lực đặt lên cán cờ-lê không tự tạo thành ngẫu lực. Ngẫu lực phải gồm hai lực song song, ngược chiều, bằng độ lớn và khác giá.
    #parbreak() d) ĐÚNG: Trọng lực $bold(P)$ nằm ngoài mép bàn tạo momen gây quay lật thước rơi xuống.],
)

= Phần III. Trắc nghiệm trả lời ngắn
#sbt-instructions(reset: true)[Ghi kết quả theo đơn vị và cách làm tròn trong đề.]

// SHORT-01
#vp-question(
  [Một người thợ dùng cờ-lê dài $30 thin "cm"$ để tháo bu-lông. Lực tác dụng vuông góc ở đầu cờ-lê có độ lớn $80 thin "N"$. Momen lực tác dụng lên bu-lông bằng bao nhiêu $thin "N" dot "m"$?],
  type: "short",
  ans: "24",
  short-boxes: 2,
  sol: [$M = F dot d = 80 dot "0,30" = 24 thin "N" dot "m"$.],
)

// SHORT-02
#vp-question(
  [Một thanh đồng chất dài $L = "1,2" thin "m"$, khối lượng $m = "4,0" thin "kg"$, nằm ngang và có bản lề tại đầu trái. Tác dụng lực $F = 20 thin "N"$ thẳng đứng lên ở đầu phải. Lấy $g = "9,8" thin "m/s"^2$. Tính momen tổng hợp quanh bản lề theo N·m, chọn chiều ngược kim đồng hồ là dương, ghi hai chữ số thập phân.],
  type: "short",
  ans: "0,48",
  short-boxes: 4,
  sol: [Trọng lực $P = m g = "4,0" dot "9,8" = "39,2" thin "N"$, cánh tay đòn $d_P = L/2 = "0,6" thin "m" => M_P = "39,2" dot "0,6" = "23,52" thin "N" dot "m"$ (làm quay xuống).
    #parbreak() Lực kéo $F = 20 thin "N"$, cánh tay đòn $d_F = L = "1,2" thin "m" => M_F = 20 dot "1,2" = "24,0" thin "N" dot "m"$ (làm quay lên).
    #parbreak() Momen tổng hợp: $M_("th") = M_F - M_P = "24,0" - "23,52" = "0,48" thin "N" dot "m"$.],
)

// SHORT-03
#vp-question(
  [Hai người dùng một chiếc gậy nhẹ nằm ngang, mỗi người đỡ một đầu, dài $"2,0" thin "m"$ để khiêng một thùng hàng nặng $P = 600 thin "N"$. Thùng hàng được treo cách người thứ nhất một khoảng $"0,8" thin "m"$. Độ lớn lực gậy ép xuống vai người thứ nhất bằng bao nhiêu Newton?],
  type: "short",
  ans: "360",
  short-boxes: 3,
  sol: [Lấy momen đối với vị trí người thứ hai : $F_1 dot "2,0" = P dot ("2,0" - "0,8") => F_1 dot "2,0" = 600 dot "1,2" => F_1 = 360 thin "N"$.],
)

// SHORT-04
#vp-question(
  [Một bàn khối lượng $20 thin "kg"$ có bốn chân giống nhau, bố trí đối xứng ở bốn góc hình chữ nhật và tiếp xúc đều với sàn ngang. Đặt vật $40 thin "kg"$ tại tâm mặt bàn. Giả sử tổng tải trọng phân bố đều lên bốn chân. Lực nén của mỗi chân xuống sàn bằng bao nhiêu N? Lấy $g = "9,8" thin "m/s"^2$.],
  type: "short",
  ans: "147",
  short-boxes: 3,
  sol: [Tổng trọng lượng $P_("tổng") = (20 + 40) dot "9,8" = 588 thin "N"$. Vì đặt cách đều 4 chân, lực nén mỗi chân $N = 588 / 4 = 147 thin "N"$.],
)

// SHORT-05
#vp-question(
  [Một hình trụ đồng chất khối lượng $m = 50 thin "kg"$, bán kính $R = 30 thin "cm"$ nằm trên mặt sàn ngang. Để kéo hình trụ vượt qua một bậc thang cao $h = 10 thin "cm"$, người ta tác dụng lực kéo $bold(F)$ nằm ngang vào trục hình trụ. Tăng lực chậm đến ngưỡng hình trụ vừa rời sàn và quay quanh cạnh bậc. Bỏ qua biến dạng và cản lăn. Lấy $g = "9,8" thin "m/s"^2$. Tính lực tại ngưỡng theo N, làm tròn một chữ số thập phân.
    #align(center, bai-16-hinh("vuot-bac"))],
  type: "short",
  ans: "547,8",
  short-boxes: 5,
  sol: [Tại ngưỡng, phản lực sàn bằng không; lấy momen quanh cạnh bậc $C$:
    $ d_P = sqrt(R^2 - (R-h)^2), quad d_F = R - h. $
    $ F = frac(m g sqrt(R^2 - (R-h)^2), R-h) = frac(50 times "9,8" times sqrt("0,30"^2 - "0,20"^2), "0,20") approx "547,8" thin "N". $],
)

= Phần IV. Tự luận
#sbt-instructions(reset: true)[Trình bày lập luận, phép tính và kết luận.]

// ESSAY-01
#vp-question(
  [Một dầm đồng chất dài $L = "6,0" thin "m"$, khối lượng $M = "2,0" thin "tấn"$, đặt trên hai gối tựa ở hai đầu $A$, $B$. Mô hình hóa xe khối lượng $m = "2,8" thin "tấn"$ bằng tải trọng tập trung tại điểm cách $A$ một đoạn $d = "2,0" thin "m"$. Dầm nằm ngang, hệ đứng yên. Lấy $g = "9,8" thin "m/s"^2$.
    #parbreak() a) Vẽ sơ đồ lực tác dụng lên dầm.
    #parbreak() b) Lập phương trình cân bằng để tính lực nén lên hai gối.
    #parbreak() c) Khi tải dịch chuyển chậm từ $A$ đến $B$ (bỏ qua hiệu ứng động), lực nén lên $A$ biến thiên thế nào? Tìm vị trí để lực nén lên hai gối bằng nhau.],
  type: "essay", lines: 12,
  sol: [a) Dầm chịu trọng lực tại trung điểm, lực ép của tải tại vị trí $d$ và hai phản lực gối tựa.
    #align(center, bai-16-hinh("dam-luc"))
    b) Độ lớn phản lực cũng bằng độ lớn lực nén tương ứng:
    $ N_A + N_B = (M+m)g = 47040 thin "N". $
    $ N_B L = M g frac(L, 2) + m g d. $
    $ N_B = frac(2000 times "9,8" times 3 + 2800 times "9,8" times 2, 6) approx "18946,7" thin "N". $
    $ N_A = (M+m)g - N_B approx "28093,3" thin "N". $
    c) Với $0 <= d <= L$:
    $ N_A(d) = frac(M g, 2) + m g (1 - frac(d, L)), quad N_B(d) = frac(M g, 2) + frac(m g d, L). $
    $N_A$ giảm tuyến tính từ $37240 thin "N"$ đến $9800 thin "N"$.
    Hai lực bằng nhau khi $d = L/2 = 3 thin "m"$, mỗi lực bằng $23520 thin "N"$.
  ],
)

// ESSAY-02
#vp-question(
  [Một thang đồng chất $A B$ dài $L = "5,0" thin "m"$, khối lượng $m_t = 15 thin "kg"$, tựa vào tường nhẵn tại $B$ và sàn ngang tại $A$. Hệ số ma sát nghỉ ở sàn là $mu_n = "0,40"$, thang nghiêng góc $alpha = 60 degree$. Mô hình người trên thang bằng tải trọng tập trung của khối lượng $m_p = 65 thin "kg"$, ở vị trí cách chân thang một đoạn $x$ đo dọc thang. Xét cân bằng tĩnh, lấy $g = "9,8" thin "m/s"^2$.
    #parbreak() a) Thiết lập biểu thức lực ma sát nghỉ ở chân thang theo $x$.
    #parbreak() b) Tính $x_("max")$ tại ngưỡng trượt của mô hình.
    #parbreak() c) Với tải ở đầu trên ($x=L$), góc nghiêng tối thiểu để mô hình còn cân bằng là bao nhiêu?],
  type: "essay", lines: 12,
  sol: [a) Sơ đồ lực của hệ thang và tải:
    #align(center, bai-16-hinh("thang-luc"))
    $ N_A = (m_t+m_p)g = 784 thin "N", quad f = N_B. $
    Lấy momen quanh $A$:
    $ N_B L sin(alpha) = m_t g frac(L, 2) cos(alpha) + m_p g x cos(alpha). $
    $ f(x) = frac((m_t L/2 + m_p x)g, L tan(alpha)) = frac(("37,5" + 65 x)"9,8", 5 sqrt(3)). $
    Trong biểu thức số, $x$ tính bằng m và $f$ bằng N.
    #parbreak() b) Điều kiện $f <= mu_n N_A$ cho
    $ x <= frac(mu_n (m_t + m_p) L tan(alpha) - m_t L/2, m_p). $
    Suy ra $x_("max") approx "3,687" thin "m" < L$.
    #parbreak() c) Khi $x=L$:
    $ tan(alpha) >= frac(m_t/2 + m_p, mu_n (m_t+m_p)) = frac("72,5", 32). $
    $ alpha_("min") = arctan(frac("72,5", 32)) approx "66,2" degree. $
    Đây là ngưỡng cân bằng của mô hình tĩnh đã cho.
  ],
)

// ESSAY-03
#vp-question(
  [Mô hình cần cẩu là thanh nhẹ $A B$ dài $24 thin "m"$, có thể quay trong mặt phẳng thẳng đứng quanh trục nằm ngang qua $O$, với $O A = 6 thin "m"$, $O B = 18 thin "m"$. Bỏ qua ma sát trục. Đối trọng $M_1 = "3,0" thin "tấn"$ có thể dịch chuyển trên nhánh $O A$; vật cần nâng treo trên nhánh $O B$.
    #align(center, bai-16-hinh("can-cau"))
    a) Tính khối lượng lớn nhất có thể treo tại $B$ để thanh cân bằng nằm ngang bằng cách điều chỉnh đối trọng trong đoạn $O A$.
    #parbreak() b) Với vật $M_2 = 800 thin "kg"$ cách $O$ một đoạn $x$, lập hàm vị trí đối trọng $d_1(x)$. Kiểm tra miền dịch chuyển khi $0 <= x <= 18 thin "m"$.
    #parbreak() c) Giải thích tác dụng của đối trọng dịch chuyển trong mô hình.],
  type: "essay", lines: 10,
  sol: [a) Cân bằng momen: $M_1 g d_1 = M_2 g O B$. Do $d_1 <= 6 thin "m"$:
    $ M_(2,"max") = frac(3000 times 6, 18) = 1000 thin "kg". $
    b) $3000 d_1 = 800 x$, nên
    $ d_1(x) = frac(4, 15) x. $
    Khi $0 <= x <= 18 thin "m"$, có $0 <= d_1 <= "4,8" thin "m"$, nằm trong đoạn điều chỉnh cho phép.
    #parbreak() c) Dịch chuyển đối trọng thay đổi cánh tay đòn để hai momen trọng lực cân bằng khi vị trí tải thay đổi. Mô hình chỉ xét cân bằng thanh quanh $O$, không xác định tải nâng cho phép của cần cẩu thực tế.
  ],
)

// ESSAY-04
#vp-question(
  [Một đĩa đồng chất có trục cố định nằm ngang qua tâm. Treo vật $m_1 = ("0,200" plus.minus "0,001") thin "kg"$ ở phía trái, bán kính nằm ngang $r_1 = ("0,100" plus.minus "0,001") thin "m"$. Ở phía phải, lực kế đặt tại bán kính $r_2 = ("0,150" plus.minus "0,001") thin "m"$, kéo chếch lên trong mặt phẳng đĩa, hợp với bán kính góc $theta = (60 plus.minus 1) degree$, giữ đĩa cân bằng. Lấy $g = "9,8" thin "m/s"^2$, bỏ qua sai số của $g$.
    #parbreak() a) Lập biểu thức và tính giá trị lý thuyết $F_("lt")$ khi bỏ qua ma sát trục. Ước lượng sai số tuyệt đối theo quy tắc cộng các độ lớn đóng góp sai số bậc nhất; đổi sai số góc sang radian.
    #parbreak() b) Năm số chỉ lực kế lần lượt là $"1,52"$; $"1,55"$; $"1,53"$; $"1,51"$; $"1,54"$ (N). Cho sai số dụng cụ $Delta F_("dc") = "0,01" thin "N"$. Dùng độ lệch tuyệt đối trung bình của năm số đo cộng với sai số dụng cụ để tính $Delta F_("tn")$. Viết kết quả, giữ hai chữ số có nghĩa của sai số.
    #parbreak() c) So sánh lý thuyết và thực nghiệm theo các khoảng sai số trên; nêu ảnh hưởng có thể có của ma sát trục và sai số góc.],
  type: "essay", lines: 14,
  sol: [a) Cân bằng momen quanh trục:
    $ F_("lt") = frac(m_1 g r_1, r_2 sin(theta)) approx "1,508809" thin "N". $
    Theo quy tắc bậc nhất đã nêu:
    $ frac(Delta F_("lt"), F_("lt")) approx frac(Delta m_1, m_1) + frac(Delta r_1, r_1) + frac(Delta r_2, r_2) + abs(cot(theta)) Delta theta. $
    Với $Delta theta = pi/180$ rad, được $Delta F_("lt") approx "0,047895" thin "N"$.
    Kết quả làm tròn:
    $ F_("lt") = ("1,509" plus.minus "0,048") thin "N". $
    #parbreak() b) $overline(F)_("tn") = "1,530" thin "N"$.
    $ overline(Delta F) = frac("0,01" + "0,02" + 0 + "0,02" + "0,01", 5) = "0,012" thin "N". $
    $ Delta F_("tn") = "0,012" + "0,010" = "0,022" thin "N". $
    $ F_("tn") = ("1,530" plus.minus "0,022") thin "N". $
    c) Khoảng thực nghiệm theo quy ước trên là $["1,508"; "1,552"] thin "N"$, chứa giá trị lý thuyết trung tâm chưa làm tròn $"1,508809" thin "N"$. Khoảng lý thuyết xấp xỉ $["1,461"; "1,557"] thin "N"$ cũng giao với khoảng thực nghiệm.
    Hai kết quả phù hợp trong mức sai số đã xét; đây không phải khoảng tin cậy thống kê được xác định xác suất. Ma sát trục tạo thêm momen, còn sai số góc làm thay đổi cánh tay đòn của lực kế. Không thể từ các số đo này xác định riêng độ lớn từng ảnh hưởng.
  ],
)

// ESSAY-05
#vp-question(
  [Mô hình xe tải cứng khối lượng $M = 4000 thin "kg"$, vệt bánh rộng $b = "1,8" thin "m"$, trọng tâm $G$ nằm giữa hai bên bánh ở độ cao $h = "1,5" thin "m"$. Xe chuyển động tròn đều trên đường ngang bán kính $R = 50 thin "m"$. Bỏ qua biến dạng hệ treo và lực cản. Lấy $g = "9,8" thin "m/s"^2$.
    #parbreak() a) Vẽ các lực trong mặt phẳng cắt ngang qua $G$. Nếu dùng lực quán tính, nêu rõ hệ quy chiếu.
    #parbreak() b) Tính tổng phản lực thẳng đứng $N_1$, $N_2$ lên các bánh phía trong và phía ngoài theo tốc độ $v$ khi xe chưa trượt hoặc lật. Độ lớn lực nén xuống đường tương ứng bằng $N_1$, $N_2$.
    #parbreak() c) Tính ngưỡng bánh trong mất tiếp xúc, giả sử chưa trượt. So sánh với ngưỡng trượt khi $mu_n = "0,50"$; xác định giới hạn nào đạt trước trong mô hình.],
  type: "essay", lines: 12,
  sol: [a) Trong hệ quy chiếu mặt đất, xe chịu trọng lực, phản lực và ma sát ngang hướng tâm. Có thể xét mặt cắt trong hệ quy chiếu cùng quay với xe, thêm lực quán tính ly tâm tại $G$ có độ lớn $F_("qt") = M v^2/R$ hướng ra ngoài; xe đứng yên trong hệ này.
    #align(center, bai-16-hinh("xe-luc"))
    b) Cân bằng theo phương đứng và lấy momen quanh tiếp điểm phía ngoài:
    $ N_1 + N_2 = M g, quad N_1 b + F_("qt") h = M g frac(b, 2). $
    $ N_1 = M (frac(g, 2) - frac(v^2 h, R b)), quad N_2 = M (frac(g, 2) + frac(v^2 h, R b)). $
    Khi $v$ tính bằng m/s, $N_1$, $N_2$ tính bằng N:
    $ N_1 = 19600 - frac(200, 3) v^2, quad N_2 = 19600 + frac(200, 3) v^2. $
    c) Ngưỡng mất tiếp xúc là $N_1=0$:
    $ v_("lật") = sqrt(frac(g R b, 2 h)) = sqrt(294) approx "17,15" thin "m/s" approx "61,7" thin "km/h". $
    Tổng ma sát nghỉ cực đại bằng $mu_n M g$, nên
    $ v_("trượt") = sqrt(mu_n g R) = sqrt(245) approx "15,65" thin "m/s" approx "56,3" thin "km/h". $
    Vì $v_("trượt") < v_("lật")$, giới hạn trượt đạt trước. Sau đó giả thiết chuyển động tròn đều không trượt không còn đúng; không kéo dài các công thức phản lực trên để mô tả chuyển động tiếp theo.
  ],
)

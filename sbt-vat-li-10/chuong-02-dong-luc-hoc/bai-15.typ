// sbt-vat-li-10/chuong-02-dong-luc-hoc/bai-15.typ
#import "../cau-hinh.typ": *
#import "images/bai-15-hinh.typ": bai-15-hinh

#sbt-bai(num: "15", title: "Phương pháp giải các bài toán động lực học", label: <bai-15>)

= Phần I. Trắc nghiệm khách quan
#sbt-instructions(reset: true)[Chọn một phương án đúng trong mỗi câu.]

// MCQ-01
#vp-question(
  [Một vật trượt trên mặt phẳng nghiêng góc $alpha$ so với phương ngang, có gia tốc khác không. Cách chọn hệ trục tọa độ $O x y$ nào sau đây thuận tiện nhất để chiếu phương trình $sum bold(F) = m bold(a)$?],
  type: "mcq",
  options: (
    [Trục $O x$ thẳng đứng hướng xuống, trục $O y$ nằm ngang hướng theo chiều chuyển động.],
    [Trục $O x$ song song với mặt phẳng nghiêng, cùng chiều với gia tốc $bold(a)$; trục $O y$ vuông góc với mặt phẳng nghiêng, hướng lên trên.],
    [Trục $O x$ nằm ngang, trục $O y$ thẳng đứng hướng lên trên theo hệ tọa độ Đề-các truyền thống.],
    [Hai trục vuông góc với nhau và mỗi trục hợp với mặt dốc một góc $45 degree$.],
  ),
  ans: "B",
  sol: [Chọn $O x$ song song mặt dốc theo chiều $bold(a)$, $O y perp$ mặt dốc giúp đơn giản hóa các phép chiếu (hình chiếu của gia tốc lên $O y$ bằng 0).],
)

// MCQ-02
#vp-question(
  [Một vật khối lượng $m$ được kéo trượt lên một mặt phẳng nghiêng góc $beta$ so với phương ngang bởi một lực $bold(F)$ hợp với mặt phẳng nghiêng một góc $alpha$ ($0 < alpha < 90 degree$), chếch ra xa mặt dốc. Vật vẫn tiếp xúc với dốc. Hệ số ma sát trượt giữa vật và mặt dốc là $mu_t$. Biểu thức đúng của độ lớn lực ma sát trượt $F_"mst"$ tác dụng lên vật là],
  type: "mcq",
  options: (
    [$F_"mst" = mu_t m g cos(beta)$.],
    [$F_"mst" = mu_t (m g cos(beta) - F sin(alpha))$.],
    [$F_"mst" = mu_t (m g cos(beta) + F sin(alpha))$.],
    [$F_"mst" = mu_t (m g sin(beta) - F cos(alpha))$.],
  ),
  ans: "B",
  sol: [Phân tích lực theo $O y$: $N + F sin(alpha) - m g cos(beta) = 0 => N = m g cos(beta) - F sin(alpha) => F_"mst" = mu_t(m g cos(beta) - F sin(alpha))$.],
)

// MCQ-03
#vp-question(
  [Hai kiện hàng khối lượng $m_1$ và $m_2$ ($m_1 < m_2$) đặt trên mặt sàn nằm ngang không ma sát, được nối với nhau bằng một sợi dây nhẹ, không dãn. Tác dụng lực kéo $bold(F)$ nằm ngang vào kiện hàng $m_2$ làm hệ chuyển động với gia tốc $a$. Độ lớn lực căng $T$ của sợi dây nối giữa hai kiện hàng bằng],
  type: "mcq",
  options: (
    [$T = F$.],
    [$T = frac(m_1, m_1 + m_2) F$.],
    [$T = frac(m_2, m_1 + m_2) F$.],
    [$T = frac(m_1 m_2, m_1 + m_2) F$.],
  ),
  ans: "B",
  sol: [Gia tốc hệ $a = F / (m_1+m_2)$. Xét riêng $m_1$: $T = m_1 a = frac(m_1, m_1+m_2) F$.],
)

// MCQ-04
#vp-question(
  [Một khối gỗ $m_1$ đặt trên một tấm gỗ $m_2$. Tấm gỗ $m_2$ nằm trên mặt sàn nằm ngang nhẵn bóng (bỏ qua ma sát với sàn). Hệ số ma sát nghỉ giữa $m_1$ và $m_2$ là $mu_n$. Tác dụng lực kéo $bold(F)$ nằm ngang vào tấm gỗ $m_2$. Lực kéo cực đại $F_"max"$ tác dụng vào $m_2$ để khối gỗ $m_1$ không bị trượt trên $m_2$ bằng],
  type: "mcq",
  options: (
    [$F_"max" = mu_n m_1 g$.],
    [$F_"max" = mu_n m_2 g$.],
    [$F_"max" = mu_n (m_1 + m_2) g$.],
    [$F_"max" = frac(m_1 + m_2, m_1) mu_n g$.],
  ),
  ans: "C",
  sol: [Gia tốc cực đại của $m_1$ để không trượt là $a_"max" = mu_n g$. Với cả hệ, lực cực đại là: $F_"max" = (m_1+m_2) a_"max" = mu_n (m_1+m_2) g$.],
)

// MCQ-05
#vp-question(
  [Trong mô hình ô tô chuyển động tròn đều trên quỹ đạo nằm ngang bán kính $R$, mặt đường nghiêng góc $theta$ và cao dần về phía ngoài khúc cua. Bỏ qua lực cản, coi ô tô là chất điểm. Để xe chạy với tốc độ $v$ mà không cần ma sát ngang, góc $theta$ thỏa mãn],
  type: "mcq",
  options: (
    [$tan(theta) = frac(v^2, g R)$.],
    [$sin(theta) = frac(v^2, g R)$.],
    [$cos(theta) = frac(g R, v^2)$.],
    [$tan(theta) = frac(g R, v^2)$.],
  ),
  ans: "A",
  sol: [Phân tích lực không ma sát: $N cos(theta) = m g$, $N sin(theta) = (m v^2) / R => tan(theta) = v^2 / (g R)$.],
)

// MCQ-06
#vp-question(
  [Một hành khách khối lượng $m$ đứng trên một lực kế bàn đặt trong cabin thang máy. Khi thang máy chuyển động đi lên chậm dần đều với gia tốc có độ lớn $a$ ($0 < a < g$), độ lớn pháp lực $N$ do sàn cân tác dụng lên chân hành khách (số chỉ của cân) là],
  type: "mcq",
  options: (
    [$N = m(g + a)$.],
    [$N = m(g - a)$.],
    [$N = m g$.],
    [$N = m a$.],
  ),
  ans: "B",
  sol: [Thang máy đi lên chậm dần đều $-> bold(a)$ hướng xuống $-> N = m(g - a)$.],
)

// MCQ-07
#vp-question(
  [Trong hệ thống máy Atwood gồm hai vật khối lượng $m_1$ và $m_2$ ($m_1 > m_2$) nối bằng dây nhẹ, không dãn, luôn căng qua một ròng rọc cố định nhẹ, không ma sát; hai nhánh dây thẳng đứng. Độ lớn lực nén $F_p$ tác dụng lên trục treo ròng rọc khi hệ đang chuyển động tự do bằng],
  type: "mcq",
  options: (
    [$F_p = (m_1 + m_2)g$.],
    [$F_p = (m_1 - m_2)g$.],
    [$F_p = frac(2 m_1 m_2, m_1 + m_2) g$.],
    [$F_p = frac(4 m_1 m_2, m_1 + m_2) g$.],
  ),
  ans: "D",
  sol: [$a = frac(m_1-m_2, m_1+m_2) g => T = m_1(g-a) = frac(2 m_1 m_2, m_1+m_2) g$. Lực nén $F_p = 2T = frac(4 m_1 m_2, m_1+m_2) g$.],
)

// MCQ-08
#vp-question(
  [Một chiếc ô tô điện khối lượng $m$ chuyển động với tốc độ không đổi $v$ qua đỉnh một chiếc cầu vồng có bán kính cong $R$. Xe vẫn tiếp xúc với cầu, $v^2 < g R$. Lấy gia tốc trọng trường là $g$. Áp lực $N$ do ô tô tác dụng lên mặt cầu tại điểm cao nhất bằng],
  type: "mcq",
  options: (
    [$N = m(g + frac(v^2, R))$.],
    [$N = m(g - frac(v^2, R))$.],
    [$N = m frac(v^2, R)$.],
    [$N = m g$.],
  ),
  ans: "B",
  sol: [Tại đỉnh cầu vồng, hợp lực hướng tâm: $m g - N = (m v^2) / R => N = m(g - v^2/R)$.],
)

// MCQ-09
#vp-question(
  [Một vật khối lượng $m$ trượt từ đỉnh một mặt phẳng nghiêng góc $alpha$ so với phương ngang. Hệ số ma sát trượt giữa vật và mặt dốc là $mu_t$. Chọn chiều dương xuống dốc. Gia tốc đại số $a$ của vật khi đang trượt xuống dốc được xác định bởi],
  type: "mcq",
  options: (
    [$a = g(sin(alpha) + mu_t cos(alpha))$.],
    [$a = g(sin(alpha) - mu_t cos(alpha))$.],
    [$a = g(cos(alpha) - mu_t sin(alpha))$.],
    [$a = g sin(alpha)$.],
  ),
  ans: "B",
  sol: [Chiếu lên trục $O x$ dọc theo dốc: $m g sin(alpha) - F_"mst" = m a => m a = m g sin(alpha) - mu_t m g cos(alpha) => a = g(sin(alpha) - mu_t cos(alpha))$.],
)

// MCQ-10
#vp-question(
  [Khi vẽ sơ đồ lực cho một vật trong hệ quy chiếu quán tính, nguyên tắc quan trọng nhất nào sau đây bắt buộc phải tuân thủ?],
  type: "mcq",
  options: (
    [Phải vẽ tất cả các lực do vật đó tác dụng lên các vật xung quanh (phản lực).],
    [Chỉ biểu diễn các ngoại lực do môi trường bên ngoài tác dụng lên vật đang xét.],
    [Phải vẽ vectơ gia tốc $bold(a)$ như một lực thực thụ tác dụng vào tâm vật.],
    [Phải triệt tiêu ngay các cặp lực bằng nhau trước khi biểu diễn lên sơ đồ.],
  ),
  ans: "B",
  sol: [Sơ đồ lực chỉ biểu diễn ngoại lực tác dụng lên vật đang xét, không biểu diễn các lực mà vật tác dụng lên vật khác, cũng không coi gia tốc là một lực.],
)

// MCQ-11
#vp-question(
  [Một con lắc đơn gồm quả cầu nhỏ treo vào trần một chiếc xe buýt. Khi xe buýt chuyển động thẳng nhanh dần đều trên đường ngang với gia tốc $a_0$, dây treo con lắc bị lệch một góc $theta$ so với phương thẳng đứng. Biểu thức tính góc lệch $theta$ ở trạng thái cân bằng tương đối là],
  type: "mcq",
  options: (
    [$tan(theta) = frac(a_0, g)$.],
    [$sin(theta) = frac(a_0, g)$.],
    [$cos(theta) = frac(g, a_0)$.],
    [$tan(theta) = frac(g, a_0)$.],
  ),
  ans: "A",
  sol: [Trong hệ quy chiếu gắn với xe: $F_"qt" = m a_0$ nằm ngang, $P = m g$ thẳng đứng $-> tan(theta) = F_"qt" / P = a_0 / g$.],
)

// MCQ-12
#vp-question(
  [Vật $m_1$ nằm trên mặt phẳng nghiêng góc $alpha$ (hệ số ma sát trượt $mu_t$), nối với vật $m_2$ treo thẳng đứng qua một ròng rọc nhẹ ở đỉnh dốc. Dây nhẹ, không dãn, luôn căng; bỏ qua ma sát trục ròng rọc. Biết $m_2$ đang đi xuống và kéo $m_1$ trượt lên dốc. Chọn chiều dương theo chuyển động của từng vật. Gia tốc đại số $a$ được tính bằng công thức],
  type: "mcq",
  options: (
    [$a = frac(m_2 - m_1(sin(alpha) + mu_t cos(alpha)), m_1 + m_2) g$.],
    [$a = frac(m_2 - m_1(sin(alpha) - mu_t cos(alpha)), m_1 + m_2) g$.],
    [$a = frac(m_1 - m_2 sin(alpha), m_1 + m_2) g$.],
    [$a = frac(m_2 + m_1 sin(alpha), m_1 + m_2) g$.],
  ),
  ans: "A",
  sol: [Hệ phương trình: $m_2 g - T = m_2 a$; $T - m_1 g sin(alpha) - mu_t m_1 g cos(alpha) = m_1 a => a = frac(m_2 - m_1(sin(alpha) + mu_t cos(alpha)), m_1 + m_2) g$.],
)

// MCQ-13
#vp-question(
  [Một quả cầu khối lượng $m$ treo vào đầu một sợi dây nhẹ chiều dài $L$. Quả cầu chuyển động tròn trong mặt phẳng thẳng đứng. Tại vị trí thấp nhất của quỹ đạo, tốc độ của quả cầu là $v$. Độ lớn lực căng $T$ của sợi dây tại vị trí này bằng],
  type: "mcq",
  options: (
    [$T = m(g - frac(v^2, L))$.],
    [$T = m(g + frac(v^2, L))$.],
    [$T = m frac(v^2, L)$.],
    [$T = m g$.],
  ),
  ans: "B",
  sol: [Tại điểm thấp nhất, hợp lực hướng tâm: $T - m g = m v^2 / L => T = m(g + v^2/L)$.],
)

// MCQ-14
#vp-question(
  [Một tàu kéo khối lượng $M$ kéo một xà lan khối lượng $m$ trên đường thủy. Cả hệ chuyển động thẳng nhanh dần với gia tốc $a$; dây cáp nằm ngang, luôn căng. Lực cản nước tác dụng lên tàu kéo là $F_("c" M)$ và lên xà lan là $F_"cm"$. Lực căng $T$ của dây cáp nối giữa tàu kéo và xà lan bằng],
  type: "mcq",
  options: (
    [$T = m a + F_"cm"$.],
    [$T = M a + F_("c" M)$.],
    [$T = (M + m)a$.],
    [$T = m a - F_"cm"$.],
  ),
  ans: "A",
  sol: [Xét riêng xà lan $m$: ngoại lực theo phương ngang gồm lực căng dây kéo $T$ và lực cản $F_"cm"$. Theo định luật 2 Newton: $T - F_"cm" = m a => T = m a + F_"cm"$.],
)

// MCQ-15
#vp-question(
  [Ô tô điện khối lượng $m = 2600 thin "kg"$ chuyển động thẳng đều lên đèo có góc nghiêng $alpha = 12 degree$ so với phương ngang. Tổng lực cản (ma sát và cản không khí) tác dụng lên xe là $F_"cản" = 1200 thin "N"$. Lấy $g = "9,8" thin "m/s"^2$. Độ lớn lực kéo của mặt đường tác dụng lên bánh xe chủ động bằng bao nhiêu (làm tròn đến đơn vị N)?],
  type: "mcq",
  options: (
    [$5298 thin "N"$.],
    [$6498 thin "N"$.],
    [$1200 thin "N"$.],
    [$24928 thin "N"$.],
  ),
  ans: "B",
  sol: [Xe chạy đều $a = 0 => F_k = m g sin(alpha) + F_"cản" = 2600 times "9,8" times sin(12 degree) + 1200 approx 6498 thin "N"$.],
)

// MCQ-16
#vp-question(
  [Trong quá trình chiếu phương trình vectơ $sum bold(F) = m bold(a)$ lên trục $O x$ đã chọn, nếu một lực thành phần $bold(F)_i$ có hướng ngược chiều với chiều dương của trục $O x$, giá trị hình chiếu $F_(i x)$ của lực đó phải mang dấu],
  type: "mcq",
  options: (
    [Dương ($+$).],
    [Âm ($-$).],
    [Bằng $0$.],
    [Tùy thuộc vào độ lớn gia tốc $a$.],
  ),
  ans: "B",
  sol: [Quy tắc hình chiếu: Lực ngược chiều dương của trục tọa độ có giá trị hình chiếu mang dấu âm ($-$).],
)

// MCQ-17
#vp-question(
  [Một chiếc xe tải khối lượng $m$ chạy qua một chiếc cầu lõm bán kính cong $R = 40 thin "m"$ với tốc độ không đổi $v = 12 thin "m/s"$. So với khi xe đỗ yên trên mặt đường bằng, áp lực của xe tác dụng lên điểm thấp nhất của cầu lõm],
  type: "mcq",
  options: (
    [giảm đi một lượng $frac(m v^2, R)$.],
    [tăng thêm một lượng $frac(m v^2, R)$.],
    [giữ nguyên không đổi bằng $m g$.],
    [giảm về $0$.],
  ),
  ans: "B",
  sol: [Tại điểm thấp nhất cầu lõm: $N - m g = m v^2 / R => N = m g + m v^2 / R$. Vậy áp lực tăng thêm lượng $m v^2 / R$.],
)

// MCQ-18
#vp-question(
  [Mô hình hóa một cú nhảy bằng chuyển động ném xiên của chất điểm với tốc độ ban đầu $v_0$ cố định. Điểm rơi thấp hơn điểm phóng một độ cao $h > 0$; bỏ qua lực cản không khí. Góc phóng $alpha$ so với phương ngang để tầm xa lớn nhất có giá trị],
  type: "mcq",
  options: (
    [Đúng bằng $45 degree$.],
    [Nhỏ hơn $45 degree$.],
    [Lớn hơn $45 degree$.],
    [Đúng bằng $90 degree$.],
  ),
  ans: "B",
  sol: [Với $v_0$ cố định và điểm rơi thấp hơn điểm phóng $h$, tầm xa là
    $ L = frac(v_0 cos(alpha), g) (v_0 sin(alpha) + sqrt(v_0^2 sin^2(alpha) + 2 g h)). $
    Điều kiện cực đại cho $tan(alpha) = frac(v_0, sqrt(v_0^2 + 2 g h)) < 1$, nên $alpha < 45 degree$. Không thể suy ra một khoảng góc số cụ thể khi chưa biết $v_0$ và $h$.],
)

// MCQ-19
#vp-question(
  [Một hòn đá được ném xiên góc $alpha$ từ chân một con dốc nghiêng góc $beta$, với $alpha$ đo từ phương ngang và $0 < beta < alpha < 90 degree$. Để tìm tọa độ điểm chạm dốc, người ta chọn hệ trục $O x y$ có $O x$ dọc theo mặt dốc hướng lên và $O y$ vuông góc với mặt dốc hướng ra ngoài. Gia tốc trọng trường $bold(g)$ chiếu lên hai trục này lần lượt có giá trị],
  type: "mcq",
  options: (
    [$g_x = -g sin(beta)$; $g_y = -g cos(beta)$.],
    [$g_x = g cos(beta)$; $g_y = g sin(beta)$.],
    [$g_x = 0$; $g_y = -g$.],
    [$g_x = -g cos(beta)$; $g_y = -g sin(beta)$.],
  ),
  ans: "A",
  sol: [Trục $O x$ hướng lên dốc $-> g_x = -g sin(beta)$; trục $O y perp$ dốc hướng lên $-> g_y = -g cos(beta)$.],
)

// MCQ-20
#vp-question(
  [Một kiện hàng ban đầu đứng yên trên sàn nằm ngang của một xe tải đang chạy $72 thin "km/h"$. Xe tải phanh gấp với gia tốc hãm $a_0 = "4,0" thin "m/s"^2$. Hệ số ma sát nghỉ giữa kiện hàng và sàn xe là $mu_n = "0,30"$. Lấy $g = "9,8" thin "m/s"^2$. Trạng thái của kiện hàng so với sàn xe là],
  type: "mcq",
  options: (
    [Đứng yên không trượt do $mu_n g > a_0$.],
    [Bị trượt xô về phía trước cabin xe do $a_0 > mu_n g$.],
    [Bị trượt lùi về phía sau thùng xe.],
    [Bay vọt lên khỏi sàn xe.],
  ),
  ans: "B",
  sol: [Gia tốc hãm của xe $a_0 = "4,0" thin "m/s"^2$. Gia tốc lớn nhất do ma sát nghỉ tạo ra là $a_"max" = mu_n g = "0,30" times "9,8" = "2,94" thin "m/s"^2$. Vì $a_0 > mu_n g$, ma sát nghỉ không đủ giữ kiện hàng, nó bị trượt xô về phía trước theo quán tính.],
)

= Phần II. Trắc nghiệm Đúng/Sai
#sbt-instructions(reset: true)[Thí sinh xét tính Đúng hoặc Sai cho mỗi ý a), b), c), d) trong từng câu.]

// TF-01
#vp-question(
  [Xét các bước giải bài toán động lực học của một vật trong hệ quy chiếu quán tính:],
  type: "tf",
  statements: (
    [Bước 1: Chọn vật nghiên cứu và vẽ sơ đồ lực biểu diễn đầy đủ các ngoại lực tác dụng vào vật.],
    [Bước 2: Viết phương trình định luật 2 Newton dạng vectơ: $sum bold(F)_"ngoại" = m bold(a)$.],
    [Bước 3: Chọn hệ trục tọa độ $O x y$ phù hợp (ưu tiên $O x$ cùng chiều gia tốc $bold(a)$) và chiếu phương trình vectơ lên hai trục $O x, O y$ để thu được hệ phương trình đại số.],
    [Bước 4: Giải hệ phương trình đại số thu được để tìm các đại lượng cần xác định và luôn bỏ qua điều kiện nghiệm vật lý.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [a) ĐÚNG: Lập sơ đồ lực là bước nền tảng đầu tiên.
    #parbreak() b) ĐÚNG: Phát biểu đúng dạng vectơ Định luật 2 Newton.
    #parbreak() c) ĐÚNG: Chọn $O x y$ phù hợp và chiếu để chuyển từ vectơ sang đại số.
    #parbreak() d) SAI: Sau khi giải hệ phương trình đại số, bắt buộc phải kiểm tra điều kiện vật lý của nghiệm (ví dụ dấu của gia tốc, điều kiện không trượt, điều kiện dây không chùng).],
)

// TF-02
#vp-question(
  [Khảo sát hệ hai vật $m_1 = "3,0" thin "kg"$ và $m_2 = "2,0" thin "kg"$ đặt tiếp xúc nhau trên mặt phẳng nằm ngang không ma sát. Tác dụng lực đẩy $bold(F)$ nằm ngang có độ lớn $F = "10,0" thin "N"$ vào vật $m_1$ đẩy cả hai vật tiến về phía trước:],
  type: "tf",
  statements: (
    [Gia tốc của hệ hai vật thu được là $a = "2,0" thin "m/s"^2$.],
    [Độ lớn lực tương tác (lực nén) giữa hai vật $m_1$ và $m_2$ tại mặt tiếp xúc là $f_12 = f_21 = "4,0" thin "N"$.],
    [Nếu tác dụng đúng lực đẩy $F = "10,0" thin "N"$ đó theo hướng ngược lại vào vật $m_2$, độ lớn gia tốc của hệ hai vật sẽ giảm đi do $m_2 < m_1$.],
    [Độ lớn lực tương tác giữa hai vật khi đẩy từ phía $m_2$ sẽ tăng lên thành $f'_12 = "6,0" thin "N"$.],
  ),
  ans-tf: ("Đ", "Đ", "S", "Đ"),
  sol: [a) ĐÚNG: $a = F / (m_1 + m_2) = "10,0" / ("3,0" + "2,0") = "2,0" thin "m/s"^2$.
    #parbreak() b) ĐÚNG: Xét riêng $m_2$, lực làm $m_2$ tăng tốc là lực đẩy từ $m_1$: $f_12 = m_2 a = "2,0" times "2,0" = "4,0" thin "N"$.
    #parbreak() c) SAI: Khối lượng tổng không đổi nên độ lớn gia tốc hệ vẫn là $a = "2,0" thin "m/s"^2$.
    #parbreak() d) ĐÚNG: Khi đẩy từ $m_2$, lực làm $m_1$ tiến tới là $f'_12 = m_1 a = "3,0" times "2,0" = "6,0" thin "N"$.],
)

// TF-03
#vp-question(
  [Ô tô điện khối lượng $m = 2800 thin "kg"$ di chuyển qua một khúc cua tròn bán kính $R = 100 thin "m"$ trên đường đèo được thiết kế nghiêng góc $theta = 15 degree$ và cao dần về phía ngoài khúc cua. Coi xe là chất điểm, bỏ qua lực cản và xét quỹ đạo tròn nằm ngang. Lấy $g = "9,8" thin "m/s"^2$:],
  type: "tf",
  statements: (
    [Tốc độ $v_0$ để xe chuyển động tròn đều mà không cần lực ma sát giữa lốp xe và mặt đường là $v_0 approx "16,2" thin "m/s"$ ($"58,3" thin "km/h"$).],
    [Khi xe chạy đúng tốc độ lý tưởng $v_0$, hợp lực của trọng lực $bold(P)$ và phản lực pháp tuyến $bold(N)$ là lực hướng tâm.],
    [Nếu xe chạy với tốc độ $v > v_0$, lực ma sát nghỉ do mặt đường tác dụng lên lốp xe sẽ hướng lên phía trên đỉnh dốc nghiêng để giữ xe không bị trượt ngang.],
    [Nếu bề mặt đường đóng băng trượt ($mu_n approx 0$), xe chạy với tốc độ $80 thin "km/h"$ sẽ bị trượt văng ra ngoài khúc cua.],
  ),
  ans-tf: ("Đ", "Đ", "S", "Đ"),
  sol: [a) ĐÚNG: $tan(15 degree) = v_0^2 / (g R) => v_0 = sqrt("9,8" times 100 times tan(15 degree)) approx "16,2" thin "m/s"$.
    #parbreak() b) ĐÚNG: Hợp lực $bold(P) + bold(N) = bold(F)_"ht"$ hướng vào tâm đường tròn nằm ngang.
    #parbreak() c) SAI: Khi $v > v_0$, xe có xu hướng trượt văng ra ngoài, lực ma sát nghỉ do mặt đường tác dụng sẽ hướng xuống dưới dọc theo chân dốc nghiêng để níu xe lại.
    #parbreak() d) ĐÚNG: Tốc độ $80 thin "km/h" approx "22,2" thin "m/s" > v_0$, không có ma sát xe sẽ bị văng trượt ra ngoài quỹ đạo do thiếu lực hướng tâm.],
)

// TF-04
#vp-question(
  [Một chiếc xe trượt khối lượng $m = 50 thin "kg"$ đã bắt đầu trượt từ trạng thái nghỉ ở đỉnh một con dốc dài $L = 100 thin "m"$, nghiêng góc $alpha = 20 degree$ so với phương ngang. Hệ số ma sát trượt giữa xe và mặt đường là $mu_t = "0,15"$. Lấy $g = "9,8" thin "m/s"^2$:],
  type: "tf",
  statements: (
    [Thành phần trọng lực kéo xe trượt xuống dốc có độ lớn $P_x = P sin(20 degree) approx "167,6" thin "N"$.],
    [Độ lớn lực ma sát trượt tác dụng lên xe trượt là $F_"mst" = mu_t m g cos(20 degree) approx "69,1" thin "N"$.],
    [Gia tốc của xe trượt thu được khi xuống dốc là $a approx "1,97" thin "m/s"^2$.],
    [Vận tốc của xe trượt tại chân dốc đạt $v approx "19,85" thin "m/s"$ ($"71,5" thin "km/h"$).],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "Đ"),
  sol: [a) ĐÚNG: $P_x = m g sin(20 degree) = 50 times "9,8" times "0,3420" approx "167,6" thin "N"$.
    #parbreak() b) ĐÚNG: $F_"mst" = mu_t m g cos(20 degree) = "0,15" times 50 times "9,8" times "0,9397" approx "69,1" thin "N"$.
    #parbreak() c) ĐÚNG: $a = g (sin(20 degree) - mu_t cos(20 degree)) approx "1,97" thin "m/s"^2$.
    #parbreak() d) ĐÚNG: $v = sqrt(2 g (sin(20 degree) - mu_t cos(20 degree)) L) approx "19,85" thin "m/s"$.],
)

// TF-05
#vp-question(
  [Khảo sát con lắc đơn đứng yên tương đối với cabin, có quả cầu $m = "0,20" thin "kg"$ treo trong cabin thang máy đang đi lên nhanh dần đều với gia tốc $a_0 = "2,0" thin "m/s"^2$. Lấy $g = "9,8" thin "m/s"^2$:],
  type: "tf",
  statements: (
    [Quan sát từ hệ quy chiếu mặt đất (HQC quán tính), hợp lực tác dụng lên quả cầu gồm trọng lực $bold(P)$ và lực căng dây $bold(T)$, gây ra gia tốc $a_0$ hướng lên.],
    [Độ lớn lực căng dây $T$ ở trạng thái cân bằng tương đối là $T = m(g + a_0) = "2,36" thin "N"$.],
    [Quan sát từ hệ quy chiếu gắn với cabin thang máy (HQC phi quán tính), quả cầu chịu thêm lực quán tính $bold(F)_"qt" = -m bold(a)_0$ hướng xuống dưới.],
    [Gia tốc trọng trường hiệu dụng trong cabin thang máy lúc này giảm xuống còn $g_"hd" = g - a_0 = "7,8" thin "m/s"^2$.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [a) ĐÚNG: Trong HQC quán tính đất: $bold(T) + bold(P) = m bold(a)_0$.
    #parbreak() b) ĐÚNG: $T - m g = m a_0 => T = m(g + a_0) = "0,20" times ("9,8" + "2,0") = "2,36" thin "N"$.
    #parbreak() c) ĐÚNG: Trong HQC cabin (phi quán tính): xuất hiện lực quán tính $bold(F)_"qt" = -m bold(a)_0$ hướng ngược chiều $bold(a)_0$.
    #parbreak() d) SAI: Hướng của lực quán tính cùng chiều trọng lực nên gia tốc trọng trường hiệu dụng tăng lên $g_"hd" = g + a_0 = "11,8" thin "m/s"^2$.],
)

= Phần III. Trắc nghiệm trả lời ngắn
#sbt-instructions(reset: true)[Thí sinh tính toán và điền kết quả số. Ghi đúng định dạng làm tròn nếu có yêu cầu.]

// SHORT-01
#vp-question(
  [Một chiếc ô tô khối lượng $m = 1500 thin "kg"$ chuyển động qua điểm thấp nhất của một chiếc cầu lõm bán kính cong $R = 50 thin "m"$ với tốc độ không đổi $v = 54 thin "km/h"$ ($15 thin "m/s"$). Lấy $g = "9,8" thin "m/s"^2$. Độ lớn áp lực do ô tô tác dụng lên mặt cầu tại điểm thấp nhất bằng bao nhiêu N?],
  type: "short",
  ans: "21450",
  short-boxes: 5,
  sol: [Tại điểm thấp nhất cầu lõm: $N - m g = m v^2 / R => N = m(g + v^2/R)$. Thay số: $N = 1500 times ("9,8" + 15^2/50) = 1500 times ("9,8" + "4,5") = 1500 times "14,3" = 21450 thin "N"$.],
)

// SHORT-02
#vp-question(
  [Hai kiện hàng khối lượng $m_1 = "4,0" thin "kg"$ và $m_2 = "6,0" thin "kg"$ đặt trên mặt sàn nằm ngang có hệ số ma sát trượt $mu_t = "0,10"$, được nối với nhau bằng một sợi dây nhẹ không dãn. Hệ đang trượt theo chiều lực kéo, dây luôn căng. Tác dụng lực kéo $F = "30,0" thin "N"$ nằm ngang vào vật $m_2$. Lấy $g = "9,8" thin "m/s"^2$. Độ lớn lực căng $T$ của sợi dây nối giữa hai kiện hàng bằng bao nhiêu N? Ghi một chữ số thập phân.],
  type: "short",
  ans: "12,0",
  short-boxes: 4,
  sol: [Gia tốc hệ: $a = frac(F - mu_t(m_1+m_2)g, m_1+m_2) = frac("30,0" - "0,10" times 10 times "9,8", 10) = frac("30,0" - "9,8", 10) = "2,02" thin "m/s"^2$.
    #parbreak() Xét vật $m_1$: Lực căng dây $T - mu_t m_1 g = m_1 a => T = m_1(a + mu_t g) = "4,0" times ("2,02" + "0,98") = "4,0" times "3,0" = "12,0" thin "N"$.],
)

// SHORT-03
#vp-question(
  [Cho hệ thống máy Atwood gồm hai vật $m_1 = "2,0" thin "kg"$ và $m_2 = "2,8" thin "kg"$ vắt qua một ròng rọc cố định nhẹ. Dây nhẹ, không dãn, luôn căng. Bỏ qua ma sát và khối lượng ròng rọc, lấy $g = "9,8" thin "m/s"^2$. Độ lớn gia tốc $a$ của hệ vật bằng bao nhiêu $"m/s"^2$? (Làm tròn đến 2 chữ số thập phân).],
  type: "short",
  ans: "1,63",
  short-boxes: 4,
  sol: [$a = frac(m_2 - m_1, m_1 + m_2) g = frac("2,8" - "2,0", "2,0" + "2,8") times "9,8" = frac("0,8", "4,8") times "9,8" = 1/6 times "9,8" approx "1,63" thin "m/s"^2$.],
)

// SHORT-04
#vp-question(
  [Một khối gỗ khối lượng $m = 50 thin "kg"$ nằm trên mặt phẳng nghiêng góc $alpha = 30 degree$ so với phương ngang. Hệ số ma sát trượt giữa khối gỗ và mặt dốc là $mu_t = "0,20"$. Lấy $g = "9,8" thin "m/s"^2$. Độ lớn lực kéo $bold(F)$ song song với mặt dốc hướng lên để kéo khối gỗ trượt đều lên dốc bằng bao nhiêu N? (Làm tròn đến 1 chữ số thập phân).],
  type: "short",
  ans: "329,9",
  short-boxes: 5,
  sol: [Để trượt đều ($a = 0$): $F = m g sin(alpha) + mu_t m g cos(alpha) = 50 times "9,8" times (sin(30 degree) + "0,20" times cos(30 degree)) approx "329,9" thin "N"$.],
)

// SHORT-05
#vp-question(
  [Một chiếc xe buýt đang chuyển động thẳng đều thì hãm phanh chuyển động chậm dần đều với gia tốc có độ lớn $a_0 = "2,0" thin "m/s"^2$. Một con lắc đơn treo trên trần xe buýt, ở trạng thái cân bằng tương đối với xe, lệch khỏi phương thẳng đứng một góc $theta$. Lấy $g = "9,8" thin "m/s"^2$. Góc lệch $theta$ của dây treo con lắc bằng bao nhiêu độ? (Làm tròn đến 1 chữ số thập phân).],
  type: "short",
  ans: "11,5",
  short-boxes: 4,
  sol: [Trong hệ quy chiếu xe buýt, lực quán tính hướng tới trước. Góc lệch: $tan(theta) = a_0 / g = "2,0" / "9,8" approx "0,2041" => theta = arctan(frac("2,0", "9,8")) approx "11,5" degree$.],
)

= Phần IV. Tự luận
#sbt-essay-instructions(reset: true)[Thí sinh trình bày chi tiết lời giải, lập luận vật lý và tính toán.]

// ESSAY-01
#vp-question(
  [Vật $m_1 = "5,0" thin "kg"$ trên mặt phẳng nghiêng góc $alpha = 30 degree$ nối với vật $m_2 = "8,0" thin "kg"$ treo thẳng đứng qua ròng rọc ở đỉnh dốc. Dây nhẹ, không dãn, luôn căng; ròng rọc nhẹ, trục không ma sát. Nhánh dây nối với $m_1$ song song mặt dốc. Hệ số ma sát nghỉ và ma sát trượt giữa $m_1$ và dốc đều bằng $"0,20"$. Thả hệ từ trạng thái nghỉ. Lấy $g = "9,8" thin "m/s"^2$.
    #align(center, bai-15-hinh("he-doc"))
    a) Vẽ riêng sơ đồ lực của từng vật và xác định chiều chuyển động của hệ.
    #parbreak() b) Lập hệ phương trình động lực học bằng phương pháp chiếu.
    #parbreak() c) Tính gia tốc $a$, lực căng dây $T$ và độ lớn lực $F_p$ do ròng rọc tác dụng lên trục.],
  type: "essay",
  lines: 16,
  sol: [
    a) Lực ma sát nghỉ cần thiết để giữ hệ đứng yên là
    $ f_("cần") = m_2 g - m_1 g sin(30 degree) = "53,9" thin "N". $
    Trong khi đó $f_("nghỉ,max") = "0,20" m_1 g cos(30 degree) approx "8,49" thin "N"$.
    Hệ không thể đứng yên: $m_2$ đi xuống, $m_1$ đi lên dốc; ma sát lên $m_1$ hướng xuống dốc.
    #align(center, bai-15-hinh("fbd-31"))
    b) Chọn chiều dương lên dốc cho $m_1$, xuống dưới cho $m_2$:
    $ N_1 = m_1 g cos(30 degree), quad T - m_1 g sin(30 degree) - mu_t N_1 = m_1 a. $
    $ m_2 g - T = m_2 a. $
    c) Cộng hai phương trình theo chiều chuyển động:
    $ a = frac(m_2 g - m_1 g (sin(30 degree) + mu_t cos(30 degree)), m_1 + m_2)
      approx "3,49" thin "m/s"^2. $
    Dùng giá trị chưa làm tròn của $a$:
    $ T = m_2 (g - a) approx "50,45" thin "N". $
    Hai lực do dây tác dụng lên ròng rọc hợp góc $phi = 90 degree - 30 degree = 60 degree$.
    Ròng rọc nhẹ, cố định nên độ lớn lực truyền lên trục là
    $ F_p = 2 T cos(phi/2) approx "87,39" thin "N". $
  ],
)

// ESSAY-02
#vp-question(
  [Trong mô hình chất điểm, ô tô khối lượng $m = 2600 thin "kg"$ chuyển động tròn đều trên quỹ đạo nằm ngang bán kính $R = 100 thin "m"$. Mặt đường nghiêng góc $theta = 12 degree$, cao dần về phía ngoài khúc cua. Bỏ qua lực cản và xét điều kiện không trượt ngang. Lấy $g = "9,8" thin "m/s"^2$.
    #parbreak() a) Tính tốc độ $v_0$ theo m/s và km/h để xe chuyển động mà không cần lực ma sát ngang.
    #parbreak() b) Cho hệ số ma sát nghỉ $mu_n = "0,60"$. Lập phương trình động lực học và tính tốc độ lớn nhất $v_("max")$ theo km/h để xe không trượt trong mô hình này.],
  type: "essay",
  lines: 14,
  sol: [
    a) Khi không cần ma sát: $N cos(theta) = m g$, $N sin(theta) = frac(m v_0^2, R)$.
    $ v_0 = sqrt(g R tan(theta)) approx "14,43" thin "m/s" approx "52,0" thin "km/h". $
    b) Ở ngưỡng trượt ra ngoài, ma sát nghỉ đạt cực đại $f = mu_n N$ và hướng xuống dốc ngang, về phía tâm khúc cua.
    #align(center, bai-15-hinh("cua-nghieng"))
    Chiếu theo phương thẳng đứng và phương ngang hướng tâm:
    $ N cos(theta) - f sin(theta) = m g. $
    $ N sin(theta) + f cos(theta) = frac(m v_("max")^2, R). $
    Suy ra, với $cos(theta) - mu_n sin(theta) > 0$:
    $ v_("max") = sqrt(g R frac(sin(theta) + mu_n cos(theta), cos(theta) - mu_n sin(theta)))
      approx "30,21" thin "m/s" approx "108,8" thin "km/h". $
    Đây là giới hạn trượt của mô hình chất điểm đã cho; mô hình không xét lật xe.
  ],
)

// ESSAY-03
#vp-question(
  [Hai khối gỗ $m_1 = "2,0" thin "kg"$ và $m_2 = "4,0" thin "kg"$ đặt chồng lên nhau như hình. Hệ số ma sát nghỉ và trượt giữa hai khối là $mu_(n 1) = mu_(t 1) = "0,30"$; hệ số ma sát trượt giữa $m_2$ và sàn là $mu_(t 2) = "0,10"$. Tác dụng lực $bold(F)$ nằm ngang vào $m_2$. Ban đầu hai khối cùng vận tốc và đang trượt trên sàn theo chiều lực kéo. Lấy $g = "9,8" thin "m/s"^2$.
    #align(center, bai-15-hinh("he-chong"))
    a) Vẽ riêng sơ đồ lực của từng khối trong trường hợp hệ nhanh dần theo chiều lực kéo.
    #parbreak() b) Tính lực kéo cực đại $F_("max")$ để $m_1$ không trượt trên $m_2$.
    #parbreak() c) Khi $F = "40,0" thin "N"$, tính gia tốc $a_1$, $a_2$ so với sàn.],
  type: "essay",
  lines: 16,
  sol: [
    a) $N_1$ là lực đỡ của $m_2$ lên $m_1$; $N'_1$ là lực ép của $m_1$ lên $m_2$; $N_2$ là lực đỡ của sàn. $f_1$, $f'_1$ là cặp lực ma sát giữa hai khối; $f_2$ là ma sát sàn.
    #align(center, bai-15-hinh("fbd-33"))
    b) Theo phương đứng: $N_1 = m_1 g$, $N_2 = (m_1 + m_2)g$.
    Gia tốc lớn nhất mà ma sát nghỉ có thể truyền cho khối trên:
    $ a_("max") = mu_(n 1) g = "2,94" thin "m/s"^2. $
    Ma sát sàn $f_2 = mu_(t 2)(m_1 + m_2)g = "5,88" thin "N"$.
    $ F_("max") = f_2 + (m_1 + m_2) a_("max") = "23,52" thin "N". $
    c) Vì $40 > "23,52"$, hai khối trượt tương đối. Ma sát trượt giữa chúng:
    $ f_1 = mu_(t 1) m_1 g = "5,88" thin "N". $
    $ a_1 = frac(f_1, m_1) = "2,94" thin "m/s"^2. $
    $ a_2 = frac(F - f_1 - f_2, m_2) = frac(40 - "5,88" - "5,88", 4) = "7,06" thin "m/s"^2. $
    Cả hai gia tốc cùng chiều lực kéo; $a_2 > a_1$ phù hợp với chiều ma sát đã chọn.
  ],
)

// ESSAY-04
#vp-question(
  [Trong thí nghiệm với máy Atwood, hiệu khối lượng $Delta m = m_2 - m_1 = "0,200" thin "kg"$ và tổng khối lượng $M = m_1 + m_2 = "2,000" thin "kg"$. Năm lần đo gia tốc ở cùng cấu hình cho kết quả:
    #align(center, table(
      columns: (auto, auto), align: center, inset: (x: 12pt, y: 5pt),
      table.header([*Lần đo*], [*Gia tốc* $a_i$ ($"m/s"^2$)]),
      [1], [0,962], [2], [0,970], [3], [0,958], [4], [0,966], [5], [0,964],
    ))
    a) Tính gia tốc lý thuyết $a_("lt") = frac(Delta m, M) g$, với $g = "9,808" thin "m/s"^2$.
    #parbreak() b) Tính $overline(a)$ và độ lệch tuyệt đối trung bình:
    $ overline(Delta a) = frac(sum_(i=1)^5 abs(a_i - overline(a)), 5). $
    Chỉ xét độ phân tán của năm lần đo, bỏ qua sai số dụng cụ và sai số khối lượng. Làm tròn độ lệch đến một chữ số có nghĩa và viết kết quả theo dạng:
    $ a = overline(a) plus.minus overline(Delta a). $
    c) So sánh giá trị trung bình với lý thuyết; tính độ lệch tương đối:
    $ epsilon = frac(abs(overline(a) - a_("lt")), a_("lt")) times 100%. $
    Phân tích ảnh hưởng của momen quán tính ròng rọc và ma sát trục.],
  type: "essay",
  lines: 14,
  sol: [
    a) $a_("lt") = frac("0,200", "2,000") times "9,808" = "0,9808" thin "m/s"^2$.
    #parbreak() b) $overline(a) = frac("0,962" + "0,970" + "0,958" + "0,966" + "0,964", 5) = "0,964" thin "m/s"^2$.
    Các độ lệch tuyệt đối lần lượt là $"0,002"$; $"0,006"$; $"0,006"$; $"0,002"$; $0$ (m/s²).
    $ overline(Delta a) = frac("0,016", 5) = "0,0032" thin "m/s"^2. $
    Theo quy ước làm tròn đã cho:
    $ a = ("0,964" plus.minus "0,003") thin "m/s"^2. $
    Đây là cách biểu diễn độ phân tán theo quy ước của bài, chưa bao gồm sai số hệ thống.
    #parbreak() c) $overline(a) < a_("lt")$, độ lệch tương đối so với lý thuyết:
    $ epsilon = frac(abs("0,964" - "0,9808"), "0,9808") times 100% approx "1,71"%. $
    Nếu dây không trượt trên ròng rọc bán kính $r$, momen quán tính $I$, momen ma sát trục có độ lớn $tau_f$, mô hình mở rộng cho
    $ a = frac(Delta m g - tau_f/r, M + I/r^2). $
    Momen quán tính đòi hỏi chênh lệch lực căng để tạo gia tốc góc; ma sát trục cản quay. Cả hai đều làm gia tốc nhỏ hơn giá trị của mô hình ròng rọc lý tưởng khi hệ chuyển động theo chiều $m_2$ đi xuống.
  ],
)

// ESSAY-05
#vp-question(
  [Xe tải chuyển động thẳng nhanh dần đều lên dốc nghiêng góc $beta = 10 degree$ với gia tốc $a_0 = "2,5" thin "m/s"^2$. Trần và sàn thùng xe song song mặt dốc. Quả cầu $m = "0,50" thin "kg"$ treo bằng dây nhẹ, không dãn trên trần và đứng yên tương đối với xe. Lấy $g = "9,8" thin "m/s"^2$.
    #parbreak() a) Lập phương trình cân bằng trong hệ quy chiếu gắn với xe, có kể lực quán tính $bold(F)_("qt")$.
    #parbreak() b) Tính góc lệch $theta$ của dây so với phương vuông góc trần xe, chỉ rõ dây lệch về phía nào.
    #parbreak() c) Tính lực căng dây $T$.],
  type: "essay",
  lines: 16,
  sol: [
    a) Trong hệ quy chiếu gắn với xe, thêm lực quán tính $bold(F)_("qt") = -m bold(a)_0$ hướng xuống dốc:
    $ bold(T) + bold(P) + bold(F)_("qt") = bold(0). $
    #align(center, bai-15-hinh("fbd-35"))
    b) Chiếu lên phương dọc dốc và phương vuông góc dốc:
    $ T sin(theta) = m (g sin(beta) + a_0), quad T cos(theta) = m g cos(beta). $
    $ theta = arctan(frac(g sin(beta) + a_0, g cos(beta))) approx "23,5" degree. $
    Dây lệch về phía chân dốc so với pháp tuyến hướng xuống từ điểm treo.
    #parbreak() c) Bình phương rồi cộng hai phương trình:
    $ T = m sqrt((g sin(beta) + a_0)^2 + (g cos(beta))^2) approx "5,26" thin "N". $
  ],
)

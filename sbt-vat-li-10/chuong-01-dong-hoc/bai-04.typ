#import "../cau-hinh.typ": *
#import "images/bai-04-trac-nghiem.typ": bai-04-hinh

// Nguồn: nguon/bai-04-goc.txt; hiệu đính: nguon/bai-04-ghi-chu.md.
// Đáp án và lời giải ẩn trên bản học sinh. Mỗi câu chỉnh sửa độc lập.
// Hình CeTZ và SVG nằm trong images/bai-04-*.
#sbt-bai(num: "4", title: "Đồ thị độ dịch chuyển – thời gian", label: <bai-04>)

= Phần I. Trắc nghiệm khách quan
#sbt-instructions(reset: true)[Chọn một phương án đúng trong mỗi câu.]

// MCQ-01 — Dấu của độ dốc
#vp-question(
  [Đồ thị độ dịch chuyển–thời gian của một vật chuyển động thẳng là đoạn thẳng nghiêng xuống từ trái sang phải. Vật đang chuyển động như thế nào?
    #align(center, bai-04-hinh(1))
  ],
  type: "mcq",
  options: (
    [Chậm dần đều theo chiều dương.],
    [Thẳng đều theo chiều âm.],
    [Đứng yên ở phía âm của gốc tọa độ.],
    [Nhanh dần đều theo chiều âm.],
  ),
  ans: "B",
  sol: [Độ dốc $frac(Delta d, Delta t)$ không đổi và âm, nên vận tốc không đổi theo chiều âm.],
)

// MCQ-02 — Trung bình trên hành trình có đổi chiều
#vp-question(
  [Đồ thị độ dịch chuyển–thời gian của một xe gồm hai đoạn thẳng: từ $t = 0$ đến $"0,5"$ giờ, $d$ tăng từ $0$ lên $20 thin "km"$; từ $"0,5"$ đến $"1,0"$ giờ, $d$ giảm về $5 thin "km"$. Vận tốc trung bình và tốc độ trung bình trong cả giờ đó lần lượt là bao nhiêu?
    #align(center, bai-04-hinh(2))
  ],
  type: "mcq",
  options: (
    [$5 thin "km/h"$ và $35 thin "km/h"$.],
    [$35 thin "km/h"$ và $35 thin "km/h"$.],
    [$15 thin "km/h"$ và $35 thin "km/h"$.],
    [$5 thin "km/h"$ và $25 thin "km/h"$.],
  ),
  ans: "A",
  sol: [Độ dịch chuyển là $5 thin "km"$, quãng đường $s = 20 + abs(5 - 20) = 35 thin "km"$. Chia cho $1$ giờ, được vận tốc trung bình $5 thin "km/h"$ và tốc độ trung bình $35 thin "km/h"$.],
)

// MCQ-03 — Giao điểm của hai đồ thị tọa độ
#vp-question(
  [Hai xe trên cùng một đường thẳng có đồ thị tọa độ–thời gian trong cùng hệ quy chiếu. Đường của A đi qua $(0; 0)$, có độ dốc $+40 thin "km/h"$; đường của B đi qua $(0; 100)$, có độ dốc $-60 thin "km/h"$. Tọa độ tính bằng kilômét, thời gian bằng giờ. Hai xe gặp nhau khi nào, tại đâu?
    #align(center, bai-04-hinh(3))
  ],
  type: "mcq",
  options: (
    [$t = "1,0"$ giờ; $x = 40 thin "km"$.],
    [$t = "1,0"$ giờ; $x = 60 thin "km"$.],
    [$t = "2,5"$ giờ; $x = 100 thin "km"$.],
    [$t = "0,8"$ giờ; $x = 32 thin "km"$.],
  ),
  ans: "A",
  sol: [Phương trình tọa độ: $x_A = 40 t$, $x_B = 100 - 60 t$. Giải $40 t = 100 - 60 t$ được $t = 1$ giờ, $x = 40 thin "km"$.],
)

// MCQ-04 — Đồ thị khi đứng yên
#vp-question(
  [Một ô tô dừng chờ đèn đỏ trong $30 thin "s"$. Trong khoảng này, đồ thị độ dịch chuyển–thời gian có dạng nào?
    #align(center, bai-04-hinh(4))
  ],
  type: "mcq",
  options: (
    [Đoạn thẳng dốc lên.],
    [Đoạn thẳng song song hoặc trùng với trục thời gian.],
    [Nhánh parabol lõm lên.],
    [Đoạn thẳng vuông góc với trục thời gian.],
  ),
  ans: "B",
  sol: [Khi đứng yên, độ dịch chuyển không đổi, nên đồ thị là đoạn nằm ngang.],
)

// MCQ-05 — Độ dốc của đồ thị cong
#vp-question(
  [Một vật chuyển động thẳng có độ dịch chuyển $d(t) = 2 t^2$, với $d$ tính bằng mét, $t >= 0$ tính bằng giây. Phát biểu nào đúng?
    #align(center, bai-04-hinh(5))
  ],
  type: "mcq",
  options: (
    [Vật chuyển động thẳng đều với vận tốc $2 thin "m/s"$.],
    [Độ dốc tiếp tuyến tăng theo thời gian, nên vận tốc tức thời tăng.],
    [Tốc độ không đổi và bằng $4 thin "m/s"$.],
    [Vật chuyển động theo chiều âm với vận tốc giảm.],
  ),
  ans: "B",
  sol: [Độ dốc tiếp tuyến là $v(t) = 4 t$ (m/s), tăng theo thời gian. Đây không phải chuyển động thẳng đều.],
)

// MCQ-06 — Hai đường song song
#vp-question(
  [Hai vật chuyển động trên cùng một đường thẳng. Trên cùng hệ trục tọa độ–thời gian, đồ thị của chúng là hai đường thẳng phân biệt, song song và cùng dốc lên. Kết luận nào đúng?
    #align(center, bai-04-hinh(6))
  ],
  type: "mcq",
  options: (
    [Hai vật xuất phát cùng vị trí, có vận tốc khác nhau.],
    [Hai vật có cùng vận tốc dương và giữ khoảng cách không đổi.],
    [Hai vật chắc chắn gặp nhau sau một thời gian.],
    [Hai vật chuyển động ngược chiều với cùng tốc độ.],
  ),
  ans: "B",
  sol: [Hai đường có cùng độ dốc nên hai vận tốc bằng nhau. Hiệu tọa độ không đổi nên khoảng cách giữa hai vật không đổi. Không thể lấy trực tiếp tang góc nghiêng làm vận tốc nếu chưa xét tỉ lệ hai trục.],
)

// MCQ-07 — Vận tốc trên từng đoạn
#vp-question(
  [Đồ thị độ dịch chuyển–thời gian của một xe gồm ba đoạn thẳng: từ $0$ đến $2$ giờ, $d$ tăng từ $0$ lên $60 thin "km"$; từ $2$ đến $3$ giờ, $d = 60 thin "km"$; từ $3$ đến $5$ giờ, $d$ giảm về $0$. Vận tốc tại $t = 4$ giờ là bao nhiêu?
    #align(center, bai-04-hinh(7))
  ],
  type: "mcq",
  options: (
    [$+30 thin "km/h"$.],
    [$-30 thin "km/h"$.],
    [$-60 thin "km/h"$.],
    [$0 thin "km/h"$.],
  ),
  ans: "B",
  sol: [Thời điểm $4$ giờ thuộc chặng cuối có độ dốc $v = (0 - 60)/(5 - 3) = -30 thin "km/h"$.],
)

// MCQ-08 — Ý nghĩa giao điểm
#vp-question(
  [Hai vật chuyển động trên cùng một trục thẳng, dùng chung gốc tọa độ và gốc thời gian. Giao điểm của hai đồ thị tọa độ–thời gian cho biết điều gì?
    #align(center, bai-04-hinh(8))
  ],
  type: "mcq",
  options: (
    [Hai vật có cùng vận tốc tức thời.],
    [Hai vật có cùng gia tốc.],
    [Hai vật gặp nhau.],
    [Hai vật đã đi được quãng đường bằng nhau.],
  ),
  ans: "C",
  sol: [Tại giao điểm, hai vật có cùng tọa độ tại cùng thời điểm nên gặp nhau. Độ dốc và quãng đường trước đó có thể khác nhau.],
)

// MCQ-09 — Đồ thị cắt trục thời gian
#vp-question(
  [Độ dịch chuyển $d$ được tính từ vị trí ban đầu của vật. Sau khi đã rời vị trí đó, đồ thị $d$–$t$ cắt trục thời gian tại $t_0 > 0$. Điều này có nghĩa là gì?
    #align(center, bai-04-hinh(9))
  ],
  type: "mcq",
  options: (
    [Vật mới bắt đầu chuyển động tại $t_0$.],
    [Vật dừng hẳn tại $t_0$.],
    [Vật trở về vị trí ban đầu tại $t_0$.],
    [Vận tốc của vật bằng không tại $t_0$.],
  ),
  ans: "C",
  sol: [Tại điểm cắt trục thời gian, $d(t_0) = 0$, nên vật trở về vị trí ban đầu. Không suy ra vận tốc bằng không.],
)

// MCQ-10 — Góc nghiêng và tỉ lệ trục
#vp-question(
  [Một đồ thị độ dịch chuyển–thời gian được vẽ với tỉ lệ: $1 thin "cm"$ trên giấy ứng với $1 thin "s"$ trên trục ngang và $1 thin "m"$ trên trục đứng. Tiếp tuyến tại $t = 2 thin "s"$ tạo góc $135^°$ với chiều dương trục thời gian, đo ngược chiều kim đồng hồ. Vận tốc tại đó là bao nhiêu?
    #align(center, bai-04-hinh(10))
  ],
  type: "mcq",
  options: (
    [$+1 thin "m/s"$.],
    [$-1 thin "m/s"$.],
    [$+sqrt(3) thin "m/s"$.],
    [$-"0,5" thin "m/s"$.],
  ),
  ans: "B",
  sol: [Theo tỉ lệ đã cho, độ dốc vật lí bằng $tan 135^°$ nhân với $1 thin "m/s"$. Vì $tan 135^° = -1$, vận tốc bằng $-1 thin "m/s"$.],
)

// MCQ-11 — Cùng hai đầu mút của đồ thị
#vp-question(
  [Ba vật xuất phát cùng lúc từ cùng vị trí, lấy $d(0) = 0$. Đồ thị độ dịch chuyển–thời gian của chúng có hình dạng khác nhau nhưng đều đi qua $(t_1; d_1)$, với $t_1 > 0$. So sánh vận tốc trung bình trong khoảng từ $0$ đến $t_1$.
    #align(center, bai-04-hinh(11))
  ],
  type: "mcq",
  options: (
    [$overline(v)_1 > overline(v)_2 > overline(v)_3$.],
    [$overline(v)_1 < overline(v)_2 < overline(v)_3$.],
    [$overline(v)_1 = overline(v)_2 = overline(v)_3$.],
    [$overline(v)_3 > overline(v)_1 = overline(v)_2$.],
  ),
  ans: "C",
  sol: [Cả ba có cùng độ dịch chuyển và cùng khoảng thời gian, nên $overline(v)_1 = overline(v)_2 = overline(v)_3 = d_1/t_1$. Không cần các đồ thị có cùng hình dạng.],
)

// MCQ-12 — Tốc độ trung bình trên hai đoạn
#vp-question(
  [Một vật chuyển động thẳng có $d(t) = 3 t$ trong $0 <= t <= 10$ và $d(t) = 30 - 2(t - 10)$ trong $10 < t <= 20$; $d$ tính bằng mét, $t$ bằng giây. Tốc độ trung bình trong $20 thin "s"$ là bao nhiêu?
    #align(center, bai-04-hinh(12))
  ],
  type: "mcq",
  options: (
    [$"0,5" thin "m/s"$.],
    [$"2,5" thin "m/s"$.],
    [$"1,5" thin "m/s"$.],
    [$"3,0" thin "m/s"$.],
  ),
  ans: "B",
  sol: [Chặng đầu đi $30 thin "m"$, chặng sau đi ngược lại $20 thin "m"$. Tổng quãng đường $50 thin "m"$, nên tốc độ trung bình bằng $50/20 = "2,5" thin "m/s"$.],
)

// MCQ-13 — Tính đơn trị của vị trí theo thời gian
#vp-question(
  [Vì sao đồ thị độ dịch chuyển–thời gian của một vật không thể chứa một đoạn thẳng đứng có độ dài khác không?
    #align(center, bai-04-hinh(13))
  ],
  type: "mcq",
  options: (
    [Vì vận tốc khi đó bằng không.],
    [Vì một vật không thể có nhiều vị trí khác nhau tại cùng một thời điểm.],
    [Vì độ dịch chuyển không được nhận giá trị dương.],
    [Vì trục thời gian bắt buộc nằm ngang.],
  ),
  ans: "B",
  sol: [Một đoạn đứng gán nhiều giá trị độ dịch chuyển cho cùng một thời điểm, trái với việc vật chỉ có một vị trí tại mỗi thời điểm. Không diễn giải đoạn này như chuyển động với vận tốc bằng không.],
)

// MCQ-14 — Tiếp tuyến tại cực đại
#vp-question(
  [Đồ thị độ dịch chuyển–thời gian là một đường cong trơn, tăng từ $(0; 0)$ đến cực đại $(5; 5)$ rồi giảm về $(10; 0)$; thời gian tính bằng giây, độ dịch chuyển bằng mét. Vận tốc tại $t = 5 thin "s"$ là bao nhiêu?
    #align(center, bai-04-hinh(14))
  ],
  type: "mcq",
  options: (
    [$"1,0" thin "m/s"$.],
    [$0 thin "m/s"$.],
    [$"5,0" thin "m/s"$.],
    [$"3,14" thin "m/s"$.],
  ),
  ans: "B",
  sol: [Tại cực đại trơn, tiếp tuyến nằm ngang, có độ dốc bằng không. Vì vậy vận tốc tại $t = 5 thin "s"$ bằng không.],
)

// MCQ-15 — Xuất phát muộn hơn
#vp-question(
  [Xe A xuất phát lúc $t = 0$, chạy thẳng đều với tốc độ $15 thin "m/s"$. Xe B xuất phát sau $10 thin "s"$ từ cùng vị trí, cùng chiều, với tốc độ $20 thin "m/s"$. B đuổi kịp A tại thời điểm nào tính từ lúc A xuất phát?
    #align(center, bai-04-hinh(15))
  ],
  type: "mcq",
  options: (
    [$30 thin "s"$.],
    [$40 thin "s"$.],
    [$25 thin "s"$.],
    [$50 thin "s"$.],
  ),
  ans: "B",
  sol: [Với $t >= 10 thin "s"$, tọa độ là $x_A = 15 t$, $x_B = 20(t - 10)$. Giải $15 t = 20(t - 10)$ được $t = 40 thin "s"$.],
)

// MCQ-16 — Vận tốc trung bình của chuyến khứ hồi
#vp-question(
  [Một người đi thẳng từ nhà ra công viên: $d$ tăng đều từ $0$ đến $"1,2" thin "km"$ trong $15$ phút, giữ nguyên trong $10$ phút tiếp theo, rồi giảm đều về $0$ trong $15$ phút cuối. Vận tốc trung bình của cả hành trình là bao nhiêu?
    #align(center, bai-04-hinh(16))
  ],
  type: "mcq",
  options: (
    [$"3,6" thin "km/h"$.],
    [$"1,8" thin "km/h"$.],
    [$0 thin "km/h"$.],
    [$"2,4" thin "km/h"$.],
  ),
  ans: "C",
  sol: [Điểm cuối trùng điểm đầu nên độ dịch chuyển tổng cộng bằng không. Vận tốc trung bình bằng không, dù quãng đường đã đi là $"2,4" thin "km"$.],
)

// MCQ-17 — Tính cả thời gian dừng nghỉ
#vp-question(
  [Một xe đi thẳng một chiều: trong giờ đầu đi $60 thin "km"$; từ $t = 1$ đến $"1,25"$ giờ dừng nghỉ; từ $"1,25"$ đến $"1,65"$ giờ đi tiếp $40 thin "km"$. Tốc độ trung bình toàn chuyến xấp xỉ bằng bao nhiêu?
    #align(center, bai-04-hinh(17))
  ],
  type: "mcq",
  options: (
    [$"60,6" thin "km/h"$.],
    [$"100,0" thin "km/h"$.],
    [$"62,5" thin "km/h"$.],
    [$"75,0" thin "km/h"$.],
  ),
  ans: "A",
  sol: [Quãng đường $s = 60 + 40 = 100 thin "km"$. Tổng thời gian kể cả nghỉ là $"1,65"$ giờ. Tốc độ trung bình $100/"1,65" approx "60,6" thin "km/h"$.],
)

// MCQ-18 — Đổi chiều tại đỉnh parabol
#vp-question(
  [Một vật chuyển động thẳng có $d(t) = -t^2 + 6 t$, với $d$ tính bằng mét, $t >= 0$ tính bằng giây. Vật đổi chiều lúc nào?
    #align(center, bai-04-hinh(18))
  ],
  type: "mcq",
  options: (
    [$6 thin "s"$.],
    [$3 thin "s"$.],
    [$0 thin "s"$.],
    [$"1,5" thin "s"$.],
  ),
  ans: "B",
  sol: [Viết $d = 9 - (t - 3)^2$. Độ dịch chuyển tăng trước $t = 3 thin "s"$ và giảm sau đó. Tại đỉnh, vận tốc bằng không và đổi dấu; vật đổi chiều ở $t = 3 thin "s"$.],
)

// MCQ-19 — Độ chênh tọa độ giữa hai đường song song
#vp-question(
  [Hai xe chuyển động trên cùng một trục. Trên cùng hệ trục tọa độ–thời gian, đồ thị là hai đường thẳng song song; đường của xe I cao hơn đường của xe II một khoảng tương ứng $15 thin "km"$. Phát biểu nào đúng?
    #align(center, bai-04-hinh(19))
  ],
  type: "mcq",
  options: (
    [Xe I nhanh hơn xe II $15 thin "km/h"$.],
    [Khoảng cách hai xe luôn bằng $15 thin "km"$, tọa độ xe I lớn hơn.],
    [Xe II sẽ đuổi kịp xe I sau $15$ giờ.],
    [Hai xe chuyển động ngược chiều nhau.],
  ),
  ans: "B",
  sol: [Hai xe có cùng vận tốc và $x_I - x_("II") = 15 thin "km"$. Khoảng cách không đổi. Không gọi xe I luôn ở phía trước theo chiều chuyển động nếu chưa biết dấu của vận tốc.],
)

// MCQ-20 — Đồ thị độ lớn độ dịch chuyển trong mặt phẳng
#vp-question(
  [Một rô-bốt xuất phát từ O tại $t = 0$. Hai thành phần độ dịch chuyển là $d_x = "2,0" t$, $d_y = "1,5" t$, tính bằng mét với $t >= 0$ tính bằng giây. Đồ thị độ lớn $r(t) = sqrt(d_x^2 + d_y^2)$ có độ dốc bằng bao nhiêu?
    #align(center, bai-04-hinh(20))
  ],
  type: "mcq",
  options: (
    [$"3,5" thin "m/s"$.],
    [$"0,5" thin "m/s"$.],
    [$"2,5" thin "m/s"$.],
    [$"1,8" thin "m/s"$.],
  ),
  ans: "C",
  sol: [Vì $t >= 0$, $r(t) = sqrt("2,0"^2 + "1,5"^2) t = "2,5" t$. Độ dốc bằng $"2,5" thin "m/s"$. Hai thành phần độ dịch chuyển phải được tính từ cùng điểm xuất phát.],
)

= Phần II. Trắc nghiệm Đúng/Sai
#sbt-instructions(reset: true)[Xác định mỗi phát biểu a), b), c), d) là đúng hay sai.]

// TF-01 — Hành trình tăng tốc, chạy đều và hãm phanh
#vp-question(
  [Một tàu đi thẳng một chiều từ A đến B cách $"3,0" thin "km"$ trong $5$ phút, lấy $d = 0$ tại A. Trong phút đầu, đồ thị $d$–$t$ tăng với độ dốc tăng dần; từ phút 1 đến phút 4 là đoạn thẳng dốc lên; từ phút 4 đến phút 5, đồ thị tiếp tục tăng, thoải dần và có tiếp tuyến nằm ngang khi đến B.],
  type: "tf",
  statements: (
    [Trong phút đầu, tàu chuyển động nhanh dần.],
    [Từ phút 1 đến phút 4, vận tốc không đổi và bằng $"1,0" thin "km/phút"$ ($60 thin "km/h"$).],
    [Khi tàu tiếp tục dừng ở B sau phút thứ 5, đồ thị phải quay về trục thời gian.],
    [Vận tốc trung bình của cả hành trình bằng $36 thin "km/h"$.],
  ),
  ans-tf: ("Đ", "S", "S", "Đ"),
  sol: [a) Độ dốc dương và tăng nên tốc độ tăng trong phút đầu.
    #parbreak()
    b) Nếu vận tốc ở đoạn đều là $1 thin "km/phút"$ thì riêng 3 phút chạy đều đã đi $3 thin "km"$. Hai đoạn còn lại cũng có quãng đường dương, trái tổng quãng đường $3 thin "km"$. Vì vậy phát biểu sai. Chưa đủ dữ kiện để tính chính xác vận tốc đoạn đều; chỉ suy ra nó nhỏ hơn $1 thin "km/phút"$.
    #parbreak()
    c) Nếu tàu tiếp tục đứng yên tại B, đồ thị kéo dài nằm ngang ở $d = 3 thin "km"$.
    #parbreak()
    d) $overline(v) = 3/(5/60) = 36 thin "km/h"$.],
)

// TF-02 — Chiều chuyển động và gốc tọa độ
#vp-question(
  [Một ô tô chuyển động trên trục thẳng, chọn chiều dương hướng Bắc và gốc tại O. Xét đồ thị tọa độ–thời gian của xe.],
  type: "tf",
  statements: (
    [Đoạn đồ thị có độ dốc dương cho biết xe đi về Bắc.],
    [Đoạn đồ thị có độ dốc âm cho biết xe đi về Nam.],
    [Độ dốc tiếp tuyến của đồ thị cho biết gia tốc tức thời.],
    [Nếu đồ thị cắt trục thời gian tại $t = 2$ giờ thì xe ở O vào thời điểm đó.],
  ),
  ans-tf: ("Đ", "Đ", "S", "Đ"),
  sol: [a) Độ dốc dương ứng với vận tốc hướng Bắc.
    #parbreak()
    b) Độ dốc âm ứng với vận tốc hướng Nam. Chỉ biết dấu âm chưa đủ kết luận xe vừa quay đầu.
    #parbreak()
    c) Độ dốc tiếp tuyến là vận tốc tức thời, không phải gia tốc.
    #parbreak()
    d) Điểm trên trục thời gian có tọa độ $x = 0$, tức vị trí O.],
)

// TF-03 — Hai xe cùng chiều đuổi nhau
#vp-question(
  [Hai xe chuyển động trên cùng một trục thẳng. Đồ thị tọa độ–thời gian của xe 1 là đường thẳng qua $(0; 0)$ và $("0,5"; 40)$; của xe 2 qua $(0; 20)$ và $("0,5"; 40)$. Thời gian tính bằng giờ, tọa độ bằng kilômét.],
  type: "tf",
  statements: (
    [Vận tốc xe 1 là $80 thin "km/h"$, xe 2 là $40 thin "km/h"$.],
    [Xe 1 đuổi kịp xe 2 tại $t = "0,5"$ giờ, ở tọa độ $40 thin "km"$.],
    [Trong $0 <= t < "0,5"$ giờ, xe 2 luôn ở phía trước xe 1.],
    [Tại $t = "0,25"$ giờ, hai xe cách nhau $10 thin "km"$.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "Đ"),
  sol: [a) $v_1 = 40/"0,5" = 80 thin "km/h"$; $v_2 = (40 - 20)/"0,5" = 40 thin "km/h"$.
    #parbreak()
    b) Hai đồ thị cắt nhau tại $("0,5"; 40)$.
    #parbreak()
    c) Với $0 <= t < "0,5"$, hiệu tọa độ $x_2 - x_1 = 20 - 40 t > 0$. Cả hai đi theo chiều dương nên xe 2 ở trước.
    #parbreak()
    d) Tại $t = "0,25"$ giờ, $x_1 = 20 thin "km"$, $x_2 = 30 thin "km"$, nên khoảng cách là $10 thin "km"$.],
)

// TF-04 — Parabol và thời điểm đổi chiều
#vp-question(
  [Một vật chuyển động thẳng có độ dịch chuyển $d(t) = -5 t^2 + 20 t$ trong $0 <= t <= 4$, với $d$ tính bằng mét và $t$ bằng giây.],
  type: "tf",
  statements: (
    [Trong 2 giây đầu, vật đi theo chiều dương và đạt độ dịch chuyển cực đại $20 thin "m"$ tại $t = 2 thin "s"$.],
    [Vận tốc tại $t = 2 thin "s"$ bằng không.],
    [Vật đổi chiều tại $t = 2 thin "s"$; sau đó đến $t = 4 thin "s"$, vật đi theo chiều âm với tốc độ tăng.],
    [Độ dịch chuyển tổng cộng sau 4 giây là $40 thin "m"$.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [a) Viết $d(t) = 20 - 5(t - 2)^2$. Độ dịch chuyển tăng từ 0 đến cực đại $20 thin "m"$ trong 2 giây đầu.
    #parbreak()
    b) Tại đỉnh $t = 2 thin "s"$, tiếp tuyến nằm ngang nên $v = 0$.
    #parbreak()
    c) $v(t) = 20 - 10 t$ (m/s), đổi dấu từ dương sang âm ở $t = 2 thin "s"$. Với $2 < t <= 4$, vận tốc âm và độ lớn tăng.
    #parbreak()
    d) $d(4) = 0$. Quãng đường mới là $20 + 20 = 40 thin "m"$.],
)

// TF-05 — Diễn giải dữ liệu thực nghiệm
#vp-question(
  [Trong thí nghiệm khảo sát chuyển động thẳng, các điểm đo tọa độ theo thời gian phân tán nhẹ quanh một đường thẳng. Nhóm học sinh thử khớp mô hình $x = k t + b$ với dữ liệu.],
  type: "tf",
  statements: (
    [Nối mọi điểm đo bằng đường gấp khúc luôn phản ánh chính xác nhất chuyển động thực.],
    [Hệ số góc $k$ của đường khớp là một ước lượng vận tốc theo mô hình chuyển động thẳng đều.],
    [Sự phân tán quanh đường khớp có thể do sai số ngẫu nhiên.],
    [Nếu đường xu hướng cong với độ dốc thay đổi thì vật chuyển động thẳng đều.],
  ),
  ans-tf: ("S", "Đ", "Đ", "S"),
  sol: [a) Nối các điểm không loại được nhiễu và không bảo đảm phản ánh chính xác chuyển động thực.
    #parbreak()
    b) Trong mô hình chuyển động thẳng đều, hệ số góc của đường khớp cho một ước lượng vận tốc. Đây không nhất thiết là giá trị đúng tuyệt đối hoặc đúng bằng thương của hai số đo ở đầu và cuối.
    #parbreak()
    c) Phân tán có thể do sai số ngẫu nhiên, nhưng chỉ từ hình dạng đó chưa loại trừ được biến thiên chuyển động thực hoặc sai số khác.
    #parbreak()
    d) Đường xu hướng cong có độ dốc biến thiên, không phù hợp mô hình vận tốc không đổi trong khoảng đang xét.],
)

= Phần III. Trắc nghiệm trả lời ngắn
#sbt-instructions(reset: true)[Tính và điền kết quả theo yêu cầu của từng câu.]

// SHORT-01 — Vận tốc trung bình kể cả dừng
#vp-question(
  [Đồ thị độ dịch chuyển–thời gian của xe buýt gồm ba đoạn thẳng: từ $0$ đến $10$ phút, $d$ tăng từ $0$ lên $4 thin "km"$; từ $10$ đến $15$ phút giữ ở $4 thin "km"$; từ $15$ đến $25$ phút tăng lên $10 thin "km"$. Tính vận tốc trung bình toàn hành trình theo kilômét trên giờ.],
  type: "short",
  ans: "24",
  sol: [Độ dịch chuyển là $10 thin "km"$, tổng thời gian $25/60$ giờ. Vận tốc trung bình $overline(v) = 10/(25/60) = 24 thin "km/h"$.],
)

// SHORT-02 — Thời điểm giao nhau của hai đồ thị
#vp-question(
  [Hai xe trên cùng một trục thẳng có tọa độ $x_A = 50 t$, $x_B = 120 - 70 t$, với $x$ tính bằng kilômét, $t >= 0$ bằng giờ. Xác định thời điểm hai đồ thị tọa độ–thời gian giao nhau, tính bằng giờ.],
  type: "short",
  ans: "1",
  sol: [Giải $50 t = 120 - 70 t$, được $t = 1$ giờ.],
)

// SHORT-03 — Tốc độ trung bình qua đỉnh parabol
#vp-question(
  [Một vật chuyển động thẳng có đồ thị $d$–$t$ là parabol $d = 4 t - t^2$, với $d$ tính bằng mét, $t$ bằng giây. Tính tốc độ trung bình từ $t = 1 thin "s"$ đến $t = 4 thin "s"$, theo mét trên giây, làm tròn đến hai chữ số thập phân.],
  type: "short",
  ans: "1,67",
  sol: [Ta có $d(1) = 3 thin "m"$, $d(2) = 4 thin "m"$, $d(4) = 0$. Vật đổi chiều tại $t = 2 thin "s"$, nên quãng đường $s = (4 - 3) + (4 - 0) = 5 thin "m"$. Tốc độ trung bình $s/(4 - 1) = 5/3 approx "1,67" thin "m/s"$. Vận tốc trung bình là $-1 thin "m/s"$, khác đại lượng được hỏi.],
)

// SHORT-04 — Độ dốc chặng cuối
#vp-question(
  [Một người giao hàng chuyển động thẳng với đồ thị $d$–$t$ gồm ba đoạn thẳng: trong $12$ phút đầu đi từ $d = 0$ đến $6 thin "km"$, dừng $8$ phút, rồi đi từ $d = 6 thin "km"$ đến $10 thin "km"$ trong $10$ phút. Tính vận tốc trong chặng cuối theo kilômét trên giờ.],
  type: "short",
  ans: "24",
  sol: [Chặng cuối là đoạn thẳng trên đồ thị nên vận tốc không đổi: $v = (10 - 6)/(10/60) = 24 thin "km/h"$.],
)

// SHORT-05 — Khoảng cách lớn nhất trước khi đuổi kịp
#vp-question(
  [Hai vật xuất phát cùng lúc từ O, chuyển động trên cùng một trục. Vật 1 có $d_1 = 8 t$, vật 2 có $d_2 = 2 t^2$, với $d$ tính bằng mét, $t >= 0$ bằng giây. Tính khoảng cách lớn nhất trước khi vật 2 đuổi kịp vật 1, theo mét.],
  type: "short",
  ans: "8",
  sol: [Hai vật gặp lại khi $8 t = 2 t^2$, tức $t = 4 thin "s"$ ngoài nghiệm lúc xuất phát. Với $0 <= t <= 4$, khoảng cách $L = 8 t - 2 t^2 = 8 - 2(t - 2)^2$. Cực đại bằng $8 thin "m"$ tại $t = 2 thin "s"$.],
)

= Phần IV. Tự luận
#sbt-instructions(reset: true)[Trình bày lập luận, công thức và các bước tính; ghi rõ đơn vị và tỉ lệ khi vẽ đồ thị.]

// ESSAY-01 — Tàu điện qua ba ga
#vp-question(
  [Một tàu đi thẳng từ ga A qua B đến C theo đồ thị dưới đây. Các mốc $(t; d)$ là $(0; 0)$, $(1; "0,5")$, $(3; "2,0")$, $(4; "2,5")$, $(5; "2,5")$, $(8; "5,5")$, với $t$ tính bằng phút, $d$ bằng kilômét. Tàu xuất phát từ nghỉ; đoạn $0$–$1$ phút có độ dốc tăng, đoạn $3$–$4$ phút có độ dốc giảm về không. Vận tốc liên tục tại phút 1 và phút 3; các đoạn còn lại là đoạn thẳng. Coi sự chuyển tiếp ở phút 5 là lí tưởng hóa.
    #align(center, image("images/bai-04-iv-01-d.svg", width: 10.5cm))
    #text(size: 10pt)[Hai đoạn cong chỉ minh họa dạng biến thiên, không cho một phương trình duy nhất.]
    #parbreak()
    a) Phân tích chuyển động trong năm đoạn.
    #parbreak()
    b) Tính vận tốc trung bình trên AB từ phút 0 đến phút 4; trên BC từ phút 4 đến phút 8 (kể cả dừng tại B); và trên AC từ phút 0 đến phút 8.
    #parbreak()
    c) Phác thảo định tính đồ thị vận tốc–thời gian, ghi các mức vận tốc xác định được.],
  type: "essay",
  lines: 12,
  sol: [a) Từ phút 0 đến 1: nhanh dần theo chiều dương. Từ phút 1 đến 3: thẳng đều với $v = ("2,0" - "0,5")/2 = "0,75" thin "km/phút" = 45 thin "km/h"$. Từ phút 3 đến 4: chậm dần đến khi dừng tại B. Từ phút 4 đến 5: đứng yên. Từ phút 5 đến 8: thẳng đều với $v = ("5,5" - "2,5")/3 = 1 thin "km/phút" = 60 thin "km/h"$.
    #parbreak()
    b) Theo đúng các khoảng thời gian đã quy định:
    $ overline(v)_("AB") = "2,5"/(4/60) = "37,5" thin "km/h", $
    $ overline(v)_("BC") = 3/(4/60) = 45 thin "km/h", quad overline(v)_("AC") = "5,5"/(8/60) = "41,25" thin "km/h". $
    Nếu chỉ tính lúc tàu chạy từ B đến C (phút 5–8) thì giá trị là $60 thin "km/h"$.
    #parbreak()
    c) Vận tốc tăng từ 0 đến $45 thin "km/h"$ trong phút đầu, giữ $45 thin "km/h"$ đến phút 3, giảm về 0 ở phút 4, bằng 0 đến phút 5 rồi bằng $60 thin "km/h"$ trong đoạn cuối. Một phác thảo phù hợp:
    #align(center, image("images/bai-04-iv-01-v.svg", width: 11cm))
    Không đủ dữ kiện để xác định duy nhất dạng cong của hai đoạn tăng và giảm vận tốc. Không tự thay chúng bằng các đoạn thẳng: tăng đều từ 0 đến $45 thin "km/h"$ trong 1 phút chỉ cho quãng đường $"0,375" thin "km"$, khác $"0,5" thin "km"$ đã cho. Nét đứt ở phút 5 đánh dấu bước nhảy của mô hình, không phải nhiều vận tốc tại cùng thời điểm.],
)

// ESSAY-02 — Độ dốc tiếp tuyến và vận tốc tức thời
#vp-question(
  [a) Từ định nghĩa vận tốc tức thời $v(t) = lim_(Delta t -> 0) frac(d(t + Delta t) - d(t), Delta t)$, giải thích vì sao độ dốc tiếp tuyến của đồ thị $d$–$t$ tại điểm khả vi bằng vận tốc tức thời. Khi đo góc tiếp tuyến trên giấy, cần chú ý điều gì về tỉ lệ hai trục?
    #parbreak()
    b) Cho $d(t) = -2 t^2 + 12 t$, với $d$ tính bằng mét, $t >= 0$ bằng giây. Tìm thời điểm độ dốc bằng không và giải thích ý nghĩa. Tính quãng đường và độ dịch chuyển từ $t = 0$ đến $t = 5 thin "s"$.],
  type: "essay",
  lines: 12,
  sol: [a) Thương $frac(Delta d, Delta t)$ là độ dốc của cát tuyến qua hai điểm trên đồ thị. Khi $Delta t$ tiến về không, cát tuyến tiến tới tiếp tuyến nếu đạo hàm tồn tại; giới hạn của thương chính là $v(t)$. Nếu mỗi centimet trên giấy ứng với $a$ đơn vị thời gian và $b$ đơn vị độ dịch chuyển, độ dốc vật lí là $frac(b, a) tan alpha$, với đơn vị độ dịch chuyển chia thời gian; không chỉ là số $tan alpha$.
    #parbreak()
    b) Độ dốc $v(t) = -4 t + 12$ (m/s). Vậy $v = 0$ tại $t = 3 thin "s"$. Trước đó vận tốc dương, sau đó âm: vật đổi chiều ở vị trí có $d = 18 thin "m"$.
    #parbreak()
    Tại $t = 5 thin "s"$, $d(5) = 10 thin "m"$. Độ dịch chuyển trong khoảng xét là $10 - 0 = 10 thin "m"$; quãng đường $s = 18 + (18 - 10) = 26 thin "m"$.],
)

// ESSAY-03 — Hai xe gặp nhau đúng lúc xe sau khởi hành
#vp-question(
  [Hai ô tô chuyển động trên cùng đường thẳng, chiều dương từ O về phía B. Xe A xuất phát từ O lúc 7 giờ với tốc độ $90 thin "km/h"$. Xe B chờ tại vị trí cách O $15 thin "km"$ theo chiều dương, rồi khởi hành cùng chiều lúc 7 giờ 10 phút với tốc độ $110 thin "km/h"$. Bỏ qua thời gian tăng tốc.
    #parbreak()
    a) Viết phương trình tọa độ của hai xe, lấy $t = 0$ lúc 7 giờ, $t$ tính bằng giờ, $x$ bằng kilômét; tính cả thời gian B chờ.
    #parbreak()
    b) Vẽ hai đồ thị tọa độ–thời gian trên cùng hệ trục.
    #parbreak()
    c) Xác định giao điểm. Xe B có phải đuổi theo A từ phía sau trong một khoảng thời gian hay không?],
  type: "essay",
  lines: 12,
  sol: [a) $x_A(t) = 90 t$ với $t >= 0$. Xe B có
    $ x_B(t) = cases(15 & "khi" 0 <= t <= 1/6, 15 + 110(t - 1/6) & "khi" t > 1/6). $
    b) Đồ thị A đi qua $(0; 0)$ và $(1; 90)$. Đồ thị B nằm ngang ở $x = 15$ đến $t = 1/6$ giờ, rồi có độ dốc $110 thin "km/h"$. Hình dưới đổi trục thời gian sang phút để dễ đọc:
    #align(center, image("images/bai-04-iv-03-x.svg", width: 11cm))
    c) Khi A đến vị trí B đang chờ: $90 t = 15$, suy ra $t = 1/6$ giờ = 10 phút. Đây cũng là lúc B khởi hành. Hai xe gặp tại 7 giờ 10 phút, cách O $15 thin "km"$. Sau đó $x_B - x_A = 20(t - 1/6) > 0$, nên B đi trước A. Không có giai đoạn B xuất phát từ phía sau rồi đuổi kịp A; các dữ kiện cho giao điểm ngay lúc B bắt đầu chạy.],
)

// ESSAY-04 — Mô hình chuyển động từ các mẫu GPS
#vp-question(
  [Một xe chuyển động trên đường thẳng, có bảng tọa độ theo thời gian dưới đây. Để dựng mô hình, coi tọa độ biến thiên tuyến tính giữa hai lần ghi nhận liên tiếp, bỏ qua sai số đo.
    #align(center, table(columns: (auto, ..(auto,) * 7), inset: 4pt,
      [Thời gian (phút)], [0], [15], [30], [45], [60], [75], [90],
      [Tọa độ (km)], [0], [10], [25], [25], [40], [60], [60],
    ))
    a) Vẽ đồ thị tọa độ–thời gian theo mô hình.
    #parbreak()
    b) Xác định vận tốc trên từng đoạn, khoảng xe chạy nhanh nhất và các khoảng đứng yên. Có thể kết luận xe dừng do ùn tắc hay do đón trả khách chỉ từ đồ thị không?
    #parbreak()
    c) Tính tốc độ trung bình cả $90$ phút theo mô hình. Nếu bỏ giả thiết tuyến tính giữa các mẫu đo, có còn xác định chắc chắn quãng đường thực tế không?],
  type: "essay",
  lines: 12,
  sol: [a) Nối lần lượt các điểm theo bảng:
    #align(center, image("images/bai-04-iv-04-x.svg", width: 11cm))
    b) Mỗi khoảng dài $15$ phút = $"0,25"$ giờ. Các vận tốc từ đầu đến cuối lần lượt là $40$, $60$, $0$, $60$, $80$, $0$ (km/h). Đoạn nhanh nhất là phút 60–75. Xe đứng yên trong phút 30–45 và 75–90 theo mô hình. Đồ thị không cho biết nguyên nhân dừng.
    #parbreak()
    c) Mô hình không có đoạn lùi nên quãng đường $s = 60 thin "km"$. Tốc độ trung bình $v_("tb") = 60/"1,5" = 40 thin "km/h"$. Nếu chỉ có các mẫu GPS, xe có thể đã đi rồi quay lại giữa hai lần đo, nên quãng đường thực tế chưa xác định; $60 thin "km"$ chỉ là cận dưới theo các vị trí đã cho. Vận tốc trung bình vẫn xác định từ hai đầu mút: $40 thin "km/h"$.],
)

// ESSAY-05 — Độ lớn độ dịch chuyển trong hải trình hai hướng
#vp-question(
  [Một tàu xuất phát từ O, đi thẳng về Bắc với tốc độ $15$ hải lí/giờ trong $2$ giờ đầu, rồi về Đông với tốc độ $20$ hải lí/giờ trong $2$ giờ tiếp theo. Coi chuyển động nằm trong mặt phẳng và bỏ qua thời gian đổi hướng. Chọn $O x$ hướng Đông, $O y$ hướng Bắc.
    #parbreak()
    a) Viết $d_x(t)$, $d_y(t)$ trong $0 <= t <= 4$ giờ.
    #parbreak()
    b) Vẽ hai đồ thị thành phần trên cùng hệ trục thời gian–độ dịch chuyển.
    #parbreak()
    c) Viết và vẽ đồ thị độ lớn $r(t) = sqrt(d_x^2 + d_y^2)$. So sánh độ dốc trong hai giai đoạn. Tính vectơ vận tốc trung bình, độ lớn của nó và tốc độ trung bình cả hành trình.],
  type: "essay",
  lines: 16,
  sol: [a) Với $t$ tính bằng giờ, $d_x$, $d_y$ bằng hải lí:
    $ d_x(t) = cases(0 & "khi" 0 <= t <= 2, 20(t - 2) & "khi" 2 < t <= 4), $
    $ d_y(t) = cases(15 t & "khi" 0 <= t <= 2, 30 & "khi" 2 < t <= 4). $
    b) $d_x$ bằng 0 đến giờ thứ 2 rồi tăng thẳng đến 40; $d_y$ tăng thẳng đến 30 ở giờ thứ 2 rồi giữ nguyên:
    #align(center, image("images/bai-04-iv-05-thanh-phan.svg", width: 10.5cm))
    c) Độ lớn độ dịch chuyển là
    $ r(t) = cases(15 t & "khi" 0 <= t <= 2, sqrt(400(t - 2)^2 + 900) & "khi" 2 < t <= 4). $
    #align(center, image("images/bai-04-iv-05-do-lon.svg", width: 10.5cm))
    Giai đoạn đầu có độ dốc 15 hải lí/giờ. Trong giai đoạn sau,
    $ r'(t) = frac(400(t - 2), sqrt(400(t - 2)^2 + 900)), $
    tăng từ giới hạn bên phải bằng 0 đến 16 hải lí/giờ tại $t = 4$ giờ. Tại $t = 2$ giờ, hai độ dốc một phía là 15 và 0 nên $r$ không khả vi. Độ dốc của $r$ là tốc độ thay đổi khoảng cách tới O, không phải tốc độ tàu nói chung; ở chặng sau tàu vẫn chạy 20 hải lí/giờ.
    #parbreak()
    Độ dịch chuyển cuối là $(40; 30)$ hải lí. Vectơ vận tốc trung bình $overline(arrow(v)) = (10; "7,5")$ hải lí/giờ, có độ lớn $sqrt(10^2 + "7,5"^2) = "12,5"$ hải lí/giờ, hướng Đông lệch $"36,87"^°$ về Bắc. Tổng quãng đường $s = 30 + 40 = 70$ hải lí, nên tốc độ trung bình bằng $70/4 = "17,5"$ hải lí/giờ.],
)

// Chỉ chứa phần bài tập. Mở main.typ để xem cả 5 ví dụ và 45 bài tập.
#import "cau-hinh.typ": *

// Trang in 17 (trang PDF 7).
#bai("1.1")[
  Một chiếc xe đi từ tỉnh $A$ đến tỉnh $B$ với vận tốc $v_1 = 60 thin "km/h"$, sau đó quay lại từ $B$ về $A$ với vận tốc $v_2 = 50 thin "km/h"$. Hãy tính
  #y[(a) tốc độ trung bình của xe trên đoạn đường đi về $A B$, $B A$ đó;]
  #y[(b) độ lớn của vector vận tốc trung bình của xe trên đoạn đường đi về $A B$, $B A$ đó.]
]

#bai("1.2")[
  Thả rơi tự do một vật nhỏ từ độ cao $h = 22","5 thin "m"$. Lấy $g = 9","8 thin "m/s"^2$. Hãy tính
  #y[(a) quãng đường mà vật rơi được trong 0,2 giây đầu và 0,2 giây cuối của thời gian rơi;]
  #y[(b) thời gian cần thiết để vật đi hết $4","5 thin "m"$ đầu và $4","5 thin "m"$ cuối của độ cao $h$.]
]

#bai("1.3", fig: hinh("1.10", [Bài tập 1.3.]))[
  Một tàu hỏa bắt đầu chuyển động nhanh dần đều trên đường ray thẳng nằm ngang thẳng góc trước mặt người quan sát đang đứng tại điểm ngang với đầu toa đầu tiên, Hình 1.10. Biết rằng, toa tàu thứ nhất đi qua trước mặt người quan sát hết một thời gian $tau = 10 thin "s"$. Hỏi toa thứ $n$ sẽ quét qua mặt người quan sát trong bao lâu? Áp dụng cho trường hợp tàu có 9 toa.
]

#bai("1.4")[
  Một chiếc xe chuyển động không vận tốc đầu trên một đường thẳng. Ban đầu, xe chuyển động nhanh dần đều với gia tốc có độ lớn $a = 4 thin "m/s"^2$. Sau đó, xe chuyển động đều, rồi cuối cùng chuyển động chậm dần đều với cùng độ lớn gia tốc $a$ và dừng lại. Tổng thời gian chuyển động là $tau = 50 thin "s"$. Vận tốc trung bình trong suốt thời gian đó là $54 thin "km/h"$. Tính khoảng thời gian xe chuyển động đều.
]

#bai("1.5", fig-width: 51mm, fig: hinh("1.11", [Bài tập 1.5.]))[
  Một vật nhỏ chuyển động trên một đường thẳng theo một chiều xác định. Hình 1.11 biểu diễn đồ thị của đường đi $l$ của vật đó theo thời gian $t$. Từ đồ thị đó hãy xác định
  #y[(a) vận tốc trung bình của chuyển động;]
  #y[(b) vận tốc cực đại;]
  #y[(c) thời điểm $t_0$ ở đó vận tốc tức thời bằng tốc độ trung bình tính trong $t_0$ giây đầu tiên;]
  #y[(d) gia tốc trung bình trong $20 thin "s"$ và $32 thin "s"$ đầu tiên.]
]

#bai("1.6")[
  Một xe bắt đầu đi vào một đoạn đường cong hình cung tròn có bán kính $1 thin "km"$, chiều dài cung $600 thin "m"$, với vận tốc ban đầu $v_0 = 90 thin "km/h"$. Xe đi hết quãng đường đó trong thời gian $t = 30 thin "s"$. Biết chuyển động của xe là chậm dần đều. Tìm vận tốc dài, gia tốc pháp tuyến, gia tốc tiếp tuyến, gia tốc toàn phần và gia tốc góc của xe ở cuối quãng đường đó.
]

// Trang in 18 (trang PDF 8).
#bai("1.7", fig: hinh("1.12", [Bài tập 1.7.]))[
  Trong một dụng cụ như Hình 1.12, một vật dạng một phần tư trụ tròn $B$ chuyển động với gia tốc không đổi $arrow(a)_0$ có độ lớn $2 thin "m/s"^2$ so với mặt đất. Một vật nhỏ ban đầu nằm tại điểm $A$, được nối với điểm $C$ bằng một sợi dây không dãn, và được nâng lên theo bề mặt cong của vật $B$, có bán kính $R = 0","2 thin "m"$. Giả sử tại thời điểm ban đầu vật nhỏ nằm trên sàn và đứng yên. Hãy tìm độ lớn của vector vận tốc trung bình của vật này.
]

#bai("1.8")[
  Một xe lửa dài $l = 300 thin "m"$ chuyển động thẳng với gia tốc không đổi $a = 5","0 times 10^(-2) thin "m/s"^2$. Sau $60 thin "s"$, người ta bật đèn pha của đầu xe (biến cố 1). Tiếp sau đó $60 thin "s"$, người ta bật một ngọn đèn ở đuôi xe (biến cố 2).
  #y[(a) Tính khoảng cách giữa hai biến cố đó trong hai hệ quy chiếu gắn liền với xe và với Trái Đất.]
  #y[(b) Hệ quy chiếu $K$ phải chuyển động thế nào (với vận tốc không đổi so với Trái Đất) để hai biến cố xảy ra tại cùng một điểm trong hệ $K$?]
]

#bai("1.9")[
  Một thang máy có khoảng cách giữa trần và sàn bằng $2","8 thin "m"$, chuyển động thẳng hướng lên với gia tốc $a = 1","25 thin "m/s"^2$. Sau khi xuất phát được $3","0 thin "s"$, một cây đinh từ trần thang máy rơi xuống. Xác định
  #y[(a) khoảng thời gian rơi của cây đinh;]
  #y[(b) độ dời và đường đi của cây đinh trong quá trình rơi đối với hệ quy chiếu gắn liền với đất.]
]

#bai("1.10")[
  Hai chất điểm (1) và (2) chuyển động đều với các vận tốc $v_1 = 1 thin "m/s"$ và $v_2 = 2 thin "m/s"$, trên hai trục tọa độ $O x$, $O y$ vuông góc nhau và cùng hướng về giao điểm $O$. Tại thời điểm $t = 0$, chất điểm (1) cách điểm $O$ một đoạn $l_1 = 1 thin "m"$, còn chất điểm (2) cách điểm $O$ một đoạn $l_2 = 3 thin "m"$.
  #y[(a) Sau bao lâu thì khoảng cách giữa hai chất điểm là cực tiểu?]
  #y[(b) Khoảng cách cực tiểu đó bằng bao nhiêu?]
]

#bai("1.11", fig: hinh("1.13", [Bài tập 1.11.]))[
  Một chiếc xe xuất phát từ một điểm trên quốc lộ như Hình 1.13 để trong một khoảng thời gian ngắn nhất đi đến một điểm $H$ nằm trên cánh đồng. Khoảng cách từ $H$ đến quốc lộ bằng $l = 100 thin "m"$. Vận tốc của xe khi chạy trên cánh đồng nhỏ hơn $eta = 3$ lần so với vận tốc của nó khi chạy trên quốc lộ. Hỏi xe phải rời quốc lộ từ một điểm $G$ cách điểm $D$ một khoảng bằng bao nhiêu?
]

// Bài 1.12 nối từ trang in 18 sang 19.
#bai("1.12", fig: hinh("1.14", [Bài tập 1.12.]))[
  Một chất điểm được thả rơi từ một khí cầu đang bay ở độ cao $300 thin "m"$. Hỏi sau bao lâu chất điểm rơi tới mặt đất, nếu
  #y[(a) khí cầu đang đứng yên;]
  #y[(b) khí cầu đang bay lên theo phương thẳng đứng với vận tốc $5 thin "m/s"$;]
  #y[(c) khí cầu đang hạ xuống theo phương thẳng đứng với vận tốc $5 thin "m/s"$;]
  #y[(d) khí cầu đang bay theo phương ngang với vận tốc $5 thin "m/s"$;]
  #y[(e) khí cầu đang bay lên theo phương xiên hợp với phương ngang một góc $45 degree$ với vận tốc $5 thin "m/s"$.]
]

// Trang in 19 (trang PDF 9).
#bai("1.13")[
  Một vật nhỏ được ném theo phương nằm ngang với vận tốc ban đầu $v_0 = 18 thin "m/s"$. Hãy tính gia tốc pháp tuyến và gia tốc tiếp tuyến của vật sau lúc ném $2 thin "s"$. Lấy $g = 9","8 thin "m/s"^2$.
]

#bai("1.14")[
  Hai hòn đá được ném đồng thời từ cùng một điểm. Hòn đá thứ nhất được ném thẳng đứng lên trên với vận tốc $v = 20 thin "m/s"$. Hòn đá thứ hai được ném nghiêng một góc $theta = 45 degree$ so với phương nằm ngang, với cùng vận tốc $v$. Bỏ qua sức cản của không khí. Hãy xác định khoảng cách giữa hai hòn đá sau thời gian $t = 3 thin "s"$.
]

#bai("1.15", fig: hinh("1.15", [Bài tập 1.15.]))[
  Một vật nhỏ được ném từ mặt đất với vận tốc $v_0 = 15 thin "m/s"$, theo phương hợp với mặt phẳng nằm ngang một góc $alpha = 50 degree$. Lấy $g = 9","8 thin "m/s"^2$. Hãy tính
  #y[(a) độ cao lớn nhất mà vật có thể đạt được;]
  #y[(b) tầm xa của vật;]
  #y[(c) thời gian từ lúc ném bóng tới lúc bóng chạm đất.]
]

#bai("1.16")[
  Một quả bóng được ném từ mặt đất với một vận tốc ban đầu cho trước, theo phương nghiêng góc $alpha$ so với phương nằm ngang. Hãy xác định góc ném $alpha$ sao cho tầm xa là lớn nhất.
]

#bai("1.17")[
  Từ không trung, hai chất điểm xuất phát từ cùng một điểm và có vận tốc lần lượt là $v_1 = 5","0 thin "m/s"$ và $v_2 = 7","0 thin "m/s"$, đều theo phương ngang nhưng ngược chiều nhau. Hãy xác định khoảng cách giữa hai chất điểm tại thời điểm các vector vận tốc của chúng vuông góc nhau. Biết rằng trọng trường đều có gia tốc là $g$.
]

#bai("1.18")[
  Một quả bóng được ném lên xiên góc $alpha = 45 degree$ với đường nằm ngang với vận tốc ban đầu $v_0 = 15 thin "m/s"$. Bỏ qua sức cản của không khí. Hãy xác định
  #y[(a) độ dời của quả bóng theo thời gian $Delta arrow(r)(t)$;]
  #y[(b) vector vận tốc trung bình trong $t$ giây đầu tiên và trong cả quá trình chuyển động.]
]

// Bài 1.19 nối từ trang in 19 sang 20.
#bai("1.19")[
  Một hòn đá (chất điểm) được ném lên từ mặt đất với vận tốc đầu $v_0 = 15 thin "m/s"$, hợp với đường nằm ngang một góc $alpha = 45 degree$. Bỏ qua sức cản của không khí, hãy xác định
  #y[(a) thời gian rơi;]
  #y[(b) độ cao cực đại, tầm xa và góc ném $alpha$ để độ cao cực đại bằng tầm xa;]
  #y[(c) phương trình quỹ đạo $y(x)$ với $y$ và $x$ là tọa độ thẳng đứng và nằm ngang của hòn đá;]
  #y[(d) bán cong tại tại gốc và tại đỉnh quỹ đạo.]
]

// Trang in 20 (trang PDF 10).
#bai("1.20")[
  Một khẩu thần công và mục tiêu đặt ở cùng độ cao, cách nhau $6","50 thin "km"$. Hỏi sau bao lâu một viên đạn được bắn ra với vận tốc ban đầu $v_0 = 280 thin "m/s"$ sẽ bay đến mục tiêu? Bỏ qua sức cản không khí.
]

#bai("1.21")[
  Hai viên đạn lần lượt được bắn bởi cùng một khẩu súng thần công với vận tốc ban đầu $v_0 = 240 thin "m/s"$. Viên đạn thứ nhất được bắn dưới góc $theta_1 = 60 degree$. Viên đạn thứ hai được bắn dưới góc $theta_2 = 30 degree$, cùng nằm trong một mặt phẳng bắn. Hãy xác định khoảng thời gian giữa hai lần bắn để hai viên đạn gặp nhau. Bỏ qua sức cản của không khí.
]

#bai("1.22")[
  Một hạt chuyển động trên một nửa đường tròn có bán kính $R = 320 thin "cm"$ trong khoảng thời gian $tau = 20 thin "s"$, với gia tốc tiếp tuyến không đổi. Trong khoảng thời gian đó, hãy tính
  #y[(a) tốc độ trung bình;]
  #y[(b) độ lớn vector vận tốc trung bình;]
  #y[(c) độ lớn vector gia tốc trung bình.]
]

#bai("1.23")[
  Một vật nhỏ chuyển động trên một đường tròn với vận tốc $v = a_t t$, trong đó $a_t$ là gia tốc tiếp tuyến không đổi, đơn vị $"m/s"^2$. Hãy tính gia tốc toàn phần của vật tại thời điểm nó đã đi được quãng đường bằng $n$ lần chiều dài của vòng tròn kể từ khi bắt đầu chuyển động. Áp dụng cho trường hợp $n = 0","2$ và $a_t = 0","25 thin "m/s"^2$.
]

#bai("1.24")[
  Khi đi xuôi dòng sông, một chiếc thuyền đã vượt qua một chiếc bè tại điểm $A$. Sau $tau = 45$ phút, chiếc thuyền quay lại và đi ngược dòng. Sau đó, nó gặp lại chiếc bè tại một điểm cách $l = 4","5 thin "km"$ về phía hạ lưu so với điểm $A$. Biết rằng động cơ của thuyền hoạt động với cùng một chế độ ở cả hai chiều chuyển động. Hãy xác định vận tốc dòng chảy của sông.
]

#bai("1.25")[
  Một chiếc xe di chuyển dọc trên đường thẳng hướng từ Tây sang Đông với vận tốc $35 thin "km/h"$. Một luồng gió thổi đến từ hướng Đông Nam, tạo với phương đường thẳng một góc $phi = 45 degree$, với tốc độ $18 thin "km/h"$. Xét trong hệ quy chiếu gắn với xe, hãy xác định tốc độ của luồng gió đối với xe, góc giữa hướng gió và đường thẳng.
]

// Bài 1.26 nối từ trang in 20 sang 21.
#bai("1.26")[
  Hai người bơi từ một điểm $A$ trên bờ sông và cần đến điểm $B$ nằm trên bờ kia, đối diện với điểm $A$ qua dòng sông, theo phương vuông góc với bờ. Người thứ nhất bơi theo đúng đường thẳng $A B$. Người thứ hai luôn luôn bơi theo hướng vuông góc với dòng chảy, sau đó khi lên bờ thì chạy ngược lại dọc theo bờ để đến điểm $B$, với tốc độ chạy là $u$. Biết tốc độ dòng nước là $v_0 = 1","25 thin "km/h"$ và tốc độ bơi của mỗi người so với nước là $v' = 2","25 thin "km/h"$. Hãy tính giá trị của $u$ để hai người đến điểm $B$ cùng một lúc.
]

// Trang in 21 (trang PDF 11).
#bai("1.27", fig: hinh("1.16", [Bài tập 1.27.]))[
  Hai chiếc thuyền $A$ và $B$ xuất phát từ một điểm $O$ nằm giữa một con sông rộng, chuyển động theo hai đường thẳng vuông góc với nhau so với bờ. Thuyền $A$ di chuyển dọc theo dòng sông, thuyền $B$ chuyển động ngang qua sông. Sau khi đi được cùng một quãng đường $l$ (tính theo hệ quy chiếu gắn cố định), mỗi thuyền lập tức quay trở về. Biết rằng tốc độ của mỗi thuyền so với nước gấp $eta = 1","8$ lần tốc độ của dòng nước. Hãy xác định tỷ số $tau_A / tau_B$ giữa hai khoảng thời gian hành trình của hai thuyền.
]

#bai("1.28")[
  Hai chất điểm chuyển động với vận tốc không đổi lần lượt là $arrow(v)_1$ và $arrow(v)_2$. Tại thời điểm ban đầu, vị trí của chúng được xác định bởi các vector $arrow(r)_1$ và $arrow(r)_2$. Hãy tìm điều kiện liên hệ giữa các vector $arrow(r)_1$, $arrow(r)_2$, $arrow(v)_1$, $arrow(v)_2$ để hai chất điểm có thể gặp nhau trong quá trình chuyển động.
]

#bai("1.29")[
  Một hạt (coi là chất điểm) có vị trí thay đổi theo thời gian theo biểu thức $arrow(r)(t) = arrow(a) t (1 - alpha t)$, với $arrow(a) = 2 arrow(i) thin ("m/s")$ và $alpha = 0","5 thin "s"^(-1)$. Xác định
  #y[(a) vector vận tốc và gia tốc của hạt theo thời gian $t$;]
  #y[(b) khoảng thời gian $Delta t$ để hạt trở về điểm xuất phát và quãng đường đi $s$ trong khoảng thời gian ấy.]
]

#bai("1.30")[
  Lúc $t = 0$, một chất điểm xuất phát từ gốc tọa độ và chuyển động theo chiều dương của trục $O x$. Vận tốc của chất điểm biến thiên theo thời gian theo quy luật $arrow(v)(t) = arrow(v)_0 (1 - t/tau)$, trong đó $arrow(v)_0$ là vector vận tốc ban đầu, $v_0 = 24 thin "cm/s"$, $tau = 6 thin "s"$. Hãy xác định
  #y[(a) hoành độ $x$ của chất điểm tại các thời điểm $8 thin "s"$; $12 thin "s"$ và $24 thin "s"$;]
  #y[(b) các thời điểm mà tại đó chất điểm cách gốc tọa độ $20 thin "cm"$;]
  #y[(c) quãng đường $s$ mà chất điểm đã đi được sau $4 thin "s"$ và $8 thin "s"$ đầu tiên; vẽ gần đúng đồ thị của $s(t)$.]
]

#bai("1.31")[
  Một chất điểm chuyển động theo chiều dương của trục $O x$ với một vận tốc sao cho $v = alpha sqrt(x)$, trong đó $alpha = 2 thin "m"^(1/2) thin "s"^(-1)$. Biết rằng tại thời điểm $t = 0$, chất điểm ở vị trí $x = 0$. Hãy xác định
  #y[(a) vận tốc và gia tốc của hạt theo thời gian;]
  #y[(b) tốc độ trung bình của hạt trong khoảng thời gian từ vị trí $x = 0$ đến vị trí $x = 1 thin "m"$.]
]

// Bài 1.32 nối từ trang in 21 sang 22.
#bai("1.32")[
  Một hạt chuyển động chậm dần trên một đường thẳng với một gia tốc mà độ lớn $a$ phụ thuộc vận tốc $v$ theo quy luật $a = alpha sqrt(v)$, trong đó $alpha = 2 thin "m"^(1/2) thin "s"^(-3/2)$. Tại thời điểm ban đầu vận tốc của hạt bằng $v_0 = 4 thin "m/s"$. Tính quãng đường hạt đi được cho đến khi dừng lại và thời gian đi quãng đường ấy.
]

// Trang in 22 (trang PDF 12).
#bai("1.33")[
  Bán kính vector của một hạt đối với gốc tọa độ biến thiên theo thời gian $t$ bằng quy luật $arrow(r) = alpha t arrow(i) - beta t^2 arrow(j)$; trong đó $arrow(i)$ và $arrow(j)$ là các vector đơn vị trên hai trục $O x$ và $O y$; $alpha = 2 thin "m/s"$ và $beta = 1 thin "m/s"^2$. Hãy xác định
  #y[(a) phương trình quỹ đạo $y(x)$ của hạt đó;]
  #y[(b) vận tốc $arrow(v)$, gia tốc $arrow(a)$ và độ lớn của chúng theo thời gian;]
  #y[(c) góc $theta$ giữa các $arrow(v)$ và $arrow(a)$ theo thời gian;]
  #y[(d) biểu thức vector và độ lớn của vận tốc trung bình trong $t$ giây đầu tiên.]
]

#bai("1.34")[
  Chuyển động của một hạt trong mặt phẳng $O x y$ được mô tả bởi quy luật $x = alpha t$, $y = alpha t (1 - beta t)$; với $alpha = 2 thin "m/s"$ và $beta = 1 thin "s"^(-1)$; $t$ là thời gian tính bằng $"s"$. Hãy xác định
  #y[(a) phương trình quỹ đạo $y(x)$ của hạt đó;]
  #y[(b) vận tốc $v$ và gia tốc $a$ của hạt đó theo $t$;]
  #y[(c) thời điểm $t_0$ tại đó vector vận tốc hợp với vector gia tốc một góc $pi/6$.]
]

#bai("1.35")[
  Một hạt chuyển động trong mặt phẳng $O x y$ theo quy luật $x = alpha sin omega t$, $y = alpha (1 - cos omega t)$, với $alpha = 5 thin "cm"$ và $omega = 10 thin "rad/s"$. Hãy xác định
  #y[(a) quãng đường đi $s$ của hạt đó sau một thời gian $tau = 1 thin "s"$;]
  #y[(b) góc giữa vector vận tốc và gia tốc của hạt đó.]
]

#bai("1.36")[
  Một chất điểm chuyển động trong mặt phẳng $O x y$ với một vector gia tốc $arrow(a)$ không đổi, có hướng ngược với chiều dương của trục $O y$. Phương trình quỹ đạo của chất điểm có dạng $y = alpha x - beta x^2$, với $alpha = 1$ và $beta = 4 thin "m"^(-1)$. Hãy xác định vận tốc của chất điểm tại gốc tọa độ.
]

#bai("1.37")[
  Một vật bay lên từ mặt đất. Vận tốc theo phương thẳng đứng không đổi là $v_0 = 5 thin "m/s"$, vận tốc theo phương ngang $v_x = alpha y$, trong đó $alpha = 1 thin "s"^(-1)$ và $y$ là độ cao tính bằng mét. Xác định theo độ cao
  #y[(a) giá trị độ dạt của vật $x(y)$,]
  #y[(b) gia tốc toàn phần, tiếp tuyến và pháp tuyến của vật.]
]

#bai("1.38")[
  Một chất điểm chuyển động trong mặt phẳng $O x y$ với vận tốc $arrow(v) = alpha arrow(i) + beta x arrow(j)$; trong đó $arrow(i)$ và $arrow(j)$ là các vector đơn vị trên trục $O x$ và $O y$; $alpha = 6 thin "m/s"$ và $beta = 3 thin "s"^(-1)$. Ban đầu, chất điểm ở vị trí có tọa độ $x = y = 0$. Hãy xác định
  #y[(a) phương trình quỹ đạo của chất điểm $y(x)$;]
  #y[(b) bán kính cong của quỹ đạo theo $x$.]
]

// Trang in 23 (trang PDF 13).
#bai("1.39", fig: hinh("1.17", [Bài tập 1.39.]))[
  Một chất điểm $B$ vạch một quỹ đạo cho trước với một gia tốc tiếp tuyến $a_t = arrow(a) dot arrow(tau)$, trong đó $arrow(a)$ là một vector không đổi có độ lớn bằng $2 thin "m/s"^2$, có phương trùng với phương trục $O x$ như Hình 1.17, và $arrow(tau)$ là vector đơn vị, có phương trùng với vector vận tốc tại điểm đang xét. Xác định vận tốc chất điểm theo $x$, biết rằng tại gốc tọa độ $x = 0$ thì vận tốc đó bằng 0.
]

#bai("1.40")[
  Một hạt chuyển động chậm dần trên đường tròn bán kính $R = 1 thin "m"$ sao cho gia tốc tiếp tuyến và pháp tuyến của nó luôn có độ lớn bằng nhau. Tại thời điểm ban đầu $t = 0$, vận tốc của hạt đó bằng $v_0 = 5 thin "m/s"$. Hãy xác định
  #y[(a) vận tốc của hạt theo thời gian và theo quãng đường đi $l$;]
  #y[(b) gia tốc toàn phần theo quãng đường đi $l$.]
]

#bai("1.41")[
  Một điểm chuyển động theo cung tròn bán kính $R = 2 thin "m"$. Vận tốc của điểm đó phụ thuộc quãng đường đi được $l$ theo quy luật $v = alpha sqrt(l)$, trong đó $alpha = 1 thin "m"^(1/2) thin "s"^(-1)$ là một hằng số. Tính góc $theta$ giữa vector gia tốc toàn phần và vận tốc theo $l$.
]

#bai("1.42")[
  Một chất điểm chuyển động trên một cung tròn bán kính $R = 1 thin "m"$ theo quy luật $s = s_0 sin omega t$, trong đó $s$ là quãng đường đi được trên cung tròn tính từ vị trí ban đầu, $s_0 = 80 thin "cm"$ và $omega = 2","5 thin "rad/s"$. Hãy xác định
  #y[(a) gia tốc toàn phần của chất điểm tại các điểm có $s = 0$ và $s = plus.minus s_0$;]
  #y[(b) giá trị cực tiểu của gia tốc toàn phần và quãng đường tương ứng.]
]

#bai("1.43")[
  Một hạt bắt đầu chuyển động từ trạng thái nghỉ trong một mặt phẳng, với gia tốc tiếp tuyến không đổi $a_t = 2 thin "m/s"^2$ và gia tốc pháp tuyến phụ thuộc thời gian theo biểu thức $a_n = 4 t^4 thin "m/s"^2$, trong đó $t$ tính bằng giây. Hãy xác định bán kính cong của quỹ đạo và gia tốc toàn phần của hạt theo hàm của quãng đường $l$.
]

#bai("1.44")[
  Một chất điểm chuyển động trên một quỹ đạo phẳng $y(x)$ với vận tốc $arrow(v)$ có độ lớn không đổi $2 thin "m/s"$. Hãy xác định gia tốc của chất điểm và bán kính cong của quỹ đạo tại $x = 0$, nếu quỹ đạo có dạng
  #y[(a) một parabol $y = alpha x^2$;]
  #y[(b) một ellipse $(x/alpha)^2 + ((3y)/(4alpha))^2 = 1$, với $alpha = 3 thin "m"$.]
]

#bai("1.45", fig: hinh("1.18", [Bài tập 1.45.]))[
  Chất điểm $B$ chuyển động đều trên một đường tròn bán kính $R = 75 thin "cm"$, sao cho bán kính vector $arrow(r)$ quay quanh tâm $O$ với vận tốc góc không đổi $omega = 20 thin "rad/s"$. Hãy tính độ lớn vận tốc của chất điểm và xác định độ lớn cùng hướng của vector gia tốc toàn phần tại mọi thời điểm.
]

#import "../vietphys.typ": *
#import "@preview/droplet:0.3.1": dropcap
#import "@preview/fontawesome:0.6.2": *

#show: doc => vp-page-setup(paper: "a4", margin: (x: 2cm, y: 60pt), doc)
// Kích hoạt Theme Heading tự động cho toàn bộ tài liệu
#show: vp-heading-theme-01.with(color: rgb("#5F9E31"), bg-color: rgb("#EAF4DF"))
#set text(font: "Times New Roman", size: 12pt, lang: "vi")

#let current-part = state("current-part", "Động học chất điểm")
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

// Khởi tạo hình ảnh mẫu
#let mock-img = box(width: 100%, height: 100pt, fill: rgb("#E6F7FF"), radius: 4pt, stroke: 1pt + rgb("#1890FF"), align(center+horizon)[*ẢNH MINH HỌA - (Ghi chú chi tiết nội dung ảnh vào đây)*])

#vp-lesson-title(num: "1", title: "ĐỘNG HỌC CHẤT ĐIỂM", color: rgb("#259697"))

#vp-question(
  [ 
  Một chiếc ô tô thể thao đang chạy trên đường cao tốc với tốc độ không đổi $v_0$. Ngay khi chiếc ô tô này vượt qua một trạm cảnh sát giao thông, một mô tô cảnh sát đang đứng yên bắt đầu tăng tốc đuổi theo với gia tốc không đổi $a$. Hãy bỏ qua thời gian phản xạ của cảnh sát.
  
  a) Viết phương trình chuyển động (tọa độ) của ô tô và mô tô cảnh sát theo thời gian $t$.

  b) Tìm thời gian $t_c$ để cảnh sát bắt kịp ô tô. Chứng minh rằng tại thời điểm bắt kịp, tốc độ của xe cảnh sát gấp đôi tốc độ của ô tô.

  c) Trong quá trình đuổi bắt, khoảng cách giữa hai xe ban đầu tăng lên, sau đó giảm dần. Hãy tìm khoảng cách lớn nhất giữa hai xe.
  
  d) Giả sử trạm cảnh sát có một rào chắn ở khoảng cách $L$ phía trước. Tìm điều kiện của gia tốc $a$ (theo $v_0$ và $L$) để cảnh sát có thể bắt kịp ô tô trước khi ô tô chạy thoát qua rào chắn.],
  type: "essay",
  prefix: "Bài"
)

#vp-question(
  [
  Người ta thiết kế một đài phun nước trang trí trong nhà. Nước nhỏ giọt từ một vòi ở độ cao $H$ so với mặt hồ. Máy bơm được cài đặt sao cho các giọt nước rơi xuống theo những khoảng thời gian $Delta t$ đều đặn. Biết rằng ngay khi giọt thứ nhất vừa chạm mặt hồ thì giọt thứ $N$ (với $N >= 3$) bắt đầu rời vòi. Gia tốc trọng trường là $g$, bỏ qua sức cản không khí.
  
  a) Tính thời gian $T$ để một giọt nước rơi từ vòi chạm mặt hồ theo $H$ và $g$.
  
  b) Biểu diễn khoảng thời gian $Delta t$ giữa hai lần nhỏ giọt liên tiếp theo $T$ và $N$.
  
  c) Gọi $y_k$ là khoảng cách từ mặt hồ lên đến giọt thứ $k$ ($k = 1, 2, ..., N$) tại thời điểm giọt thứ nhất chạm mặt hồ. Hãy tìm biểu thức tính $y_k$ theo $H$, $N$ và $k$.
  
  d) Kiểm tra lại kết quả câu c) cho trường hợp $N = 3$. Chứng minh rằng khi giọt thứ nhất chạm mặt hồ, giọt thứ hai đang ở độ cao bằng $3 / 4$ tổng chiều cao $H$.],
  type: "essay",
  prefix: "Bài"
)

#vp-question(
  [
  Một nhân viên bảo tồn động vật hoang dã dùng súng bắn tỉa (chứa thuốc gây mê) để bắn một con khỉ đang bị thương bám trên cành cây ở độ cao $H$ so với mặt đất. Khoảng cách theo phương ngang từ mũi súng đến gốc cây là $D$. Ngay khi nghe tiếng súng nổ, con khỉ giật mình buông tay và rơi tự do xuống đất. Mũi súng được ngắm bắn thẳng vào vị trí ban đầu của con khỉ với tốc độ đầu $v_0$. Bỏ qua sức cản không khí, gia tốc trọng trường là $g$.
  
  a) Tính góc bắn $alpha$ (theo $H$ và $D$).
  
  b) Viết phương trình tọa độ $y_"đạn"(t)$ của viên đạn và $y_"khỉ"(t)$ của con khỉ theo thời gian $t$.
  
  c) Giả sử viên đạn có tốc độ rất lớn nên đạn bay đến vị trí có tọa độ ngang $x = D$ trước khi con khỉ chạm đất. Chứng minh rằng viên đạn luôn trúng con khỉ, bất kể tốc độ bắn $v_0$ là bao nhiêu. Giải thích bản chất vật lý của hiện tượng này.
  
  d) Thực tế, tốc độ $v_0$ không thể nhỏ tùy ý vì con khỉ có thể rơi chạm đất trước khi đạn tới nơi. Tìm điều kiện của $v_0$ để đạn trúng khỉ khi nó vẫn còn ở trên không.],
  type: "essay",
  prefix: "Bài"
)

#let mock-img-bai4 = box(width: 100%, height: 100pt, fill: rgb("#E6F7FF"), radius: 4pt, stroke: 1pt + rgb("#1890FF"), align(center+horizon)[*ẢNH MINH HỌA - (Mặt phẳng nghiêng góc $alpha$ so với phương ngang. Quả bóng rơi chạm mặt phẳng nghiêng)*])

#vp-question(
  [
  Một quả bóng nhỏ được thả rơi tự do từ độ cao $h$ so với một mái nhà dốc (mái nhà hợp với phương ngang một góc $alpha$). Khi va chạm với mái nhà, quả bóng nảy lên đàn hồi hoàn toàn (nghĩa là thành phần vận tốc vuông góc với mái nhà đổi chiều và giữ nguyên độ lớn, thành phần vận tốc dọc theo mái nhà không đổi).
  
  a) Tính tốc độ của quả bóng $v_0$ ngay trước khi va chạm với mái nhà.
  
  b) Hãy chọn hệ trục tọa độ $O x y$ với trục $O x$ dọc theo mái nhà hướng xuống, trục $O y$ vuông góc với mái nhà hướng lên. Phân tích gia tốc trọng trường $arrow(g)$ và vận tốc nảy ban đầu theo hệ trục này.
  
  c) Lập phương trình chuyển động của quả bóng trong hệ tọa độ $O x y$ kể từ lúc nảy lên thứ nhất đến lúc va chạm lần thứ hai vào mái nhà.
  
  d) Tìm thời gian bay của quả bóng giữa hai lần va chạm liên tiếp và tính khoảng cách dọc theo mái nhà giữa điểm va chạm thứ nhất và điểm va chạm thứ hai.],
  type: "essay",
  prefix: "Bài",
)

#vp-question(
  [
  Một trạm cứu hộ đặt tại điểm $A$ bên bờ một con sông thẳng có chiều rộng $D$. Điểm $B$ nằm trên bờ đối diện sao cho $A B$ vuông góc với bờ sông. Vận tốc dòng nước chảy là không đổi và bằng $u$. Tàu cứu hộ có tốc độ tối đa so với nước là $v$.
  
  a) Giả sử $v > u$. Thuyền trưởng muốn đưa tàu từ $A$ đến $B$ theo đường thẳng. Vẽ giản đồ véc tơ vận tốc và tính góc chếch $theta$ của mũi tàu so với đường $A B$. Thời gian sang sông lúc này là bao nhiêu?
  
  b) Giả sử $v > u$. Nếu thuyền trưởng muốn sang bờ bên kia trong thời gian ngắn nhất (không nhất thiết phải đến đúng $B$), mũi tàu phải hướng thế nào? Tính thời gian ngắn nhất đó và khoảng cách từ điểm cập bến đến $B$.
  
  c) Tình huống nguy hiểm: Dòng nước chảy rất xiết sao cho $u > v$. Mũi tàu luôn bị trôi về phía hạ lưu. Để tàu cập bờ đối diện ở vị trí gần $B$ nhất (khoảng cách bị trôi là ngắn nhất), mũi tàu phải hợp với bờ sông một góc $alpha$ bằng bao nhiêu?],
  type: "essay",
  prefix: "Bài"
)

#vp-question(
  [
  Một quả bóng được ném ngang hoặc thả rơi đập vào một mặt phẳng dốc (nghiêng góc $alpha$ so với phương ngang). Sau mỗi lần va chạm đàn hồi với mặt dốc, quả bóng lại nảy lên. Chọn hệ trục tọa độ với trục $O y$ vuông góc với mặt dốc hướng lên, trục $O x$ dọc theo mặt dốc hướng xuống. Bỏ qua lực cản của không khí.
  
  a) Hãy biểu diễn các thành phần gia tốc $g_x$ và $g_y$ của quả bóng theo $g$ và $alpha$.
  
  b) Chứng minh rằng trong hệ tọa độ này, chuyển động theo trục $O y$ hoàn toàn giống với chuyển động nảy thẳng đứng trên mặt phẳng ngang. Từ đó suy ra thời gian bay giữa các lần nảy liên tiếp luôn bằng nhau và gọi là $tau$.
  
  c) Do gia tốc $g_x$ là một hằng số, tốc độ trung bình của quả bóng theo phương $x$ giữa các lần nảy tăng dần. Hãy lập biểu thức tính khoảng cách dọc theo mặt dốc giữa điểm rơi thứ nhất và thứ hai ($L_1$), giữa điểm rơi thứ hai và thứ ba ($L_2$).
  
  d) Chứng minh rằng khoảng cách giữa hai lần nảy liên tiếp tạo thành một cấp số cộng. Tìm công sai của cấp số cộng đó.],
  type: "essay",
  prefix: "Bài"
)

#vp-question(
  [
  Một vòi nước đặt trên mặt đất phẳng phun các tia nước với cùng một tốc độ ban đầu $v_0$ nhưng theo mọi hướng (các góc phun $alpha$ khác nhau từ $0^degree$ đến $90^degree$). Một người muốn đặt một chiếc ghế nghỉ mát sao cho không bao giờ bị dính nước từ vòi phun.
  
  a) Chọn gốc tọa độ tại vòi phun. Viết phương trình quỹ đạo $y(x)$ của một tia nước theo $x$, $v_0$, $g$ và $tan alpha$.
  
  b) Coi $x$ và $y$ là tọa độ của một điểm cố định trong không gian. Hãy biến đổi phương trình quỹ đạo ở câu (a) thành một phương trình bậc hai đối với ẩn số $u = tan alpha$.
  
  c) Không sử dụng vi tích phân, hãy sử dụng điều kiện có nghiệm của phương trình bậc hai (biệt thức $Delta >= 0$) để xác định điều kiện của $x$ và $y$ sao cho luôn tồn tại ít nhất một góc phun $alpha$ đưa nước tới điểm $(x, y)$.
  
  d) Dấu bằng xảy ra trong điều kiện ở câu (c) tương ứng với giới hạn khu vực bị ướt. Lập phương trình đường cong giới hạn này (gọi là đường bao - envelope) và mô tả hình dáng của nó. Chiếc ghế phải đặt ở đâu để an toàn?],
  type: "essay",
  prefix: "Bài"
)

#let mock-img-bai8 = box(width: 100%, height: 100pt, fill: rgb("#E6F7FF"), radius: 4pt, stroke: 1pt + rgb("#1890FF"), align(center+horizon)[*ẢNH MINH HỌA - (Một khúc gỗ hình trụ tròn bán kính $R$ đặt nằm ngang. Châu chấu nhảy từ mặt đất vọt qua khúc gỗ)*])

#vp-question(
  [
  Một con châu chấu muốn nhảy vượt qua một khúc gỗ nằm ngang có bán kính $R$ mà không chạm vào nó. Coi chướng ngại vật có tiết diện là đường tròn tâm $O$.
  
  a) Thay vì tìm vận tốc đầu $v_0$ và góc nhảy, ta gọi đỉnh của quỹ đạo parabol là $B$, cách điểm cao nhất của khúc gỗ một đoạn nhỏ không đáng kể. Quỹ đạo có vận tốc tại đỉnh là $v_2$. Gọi góc tạo bởi bán kính nối tâm $O$ đến điểm tiếp tuyến của quỹ đạo và khúc gỗ là $beta$. Dựa vào định lý hình học và đặc điểm chuyển động, hãy biểu diễn $v_0$ theo $v_2$, $R$, $beta$ và gia tốc $g$.
  
  b) Sử dụng định luật bảo toàn năng lượng (động năng ban đầu chuyển thành động năng tại đỉnh và thế năng) để thiết lập một phương trình liên hệ giữa $v_0^2$ và góc $beta$.
  
  c) Biến đổi biểu thức ở câu (b) để cô lập các số hạng chứa góc $beta$. Thay vì dùng đạo hàm, hãy áp dụng bất đẳng thức trung bình cộng - trung bình nhân (AM-GM) cho các đại lượng chứa $cos beta$ để tìm giá trị nhỏ nhất của vận tốc $v_0$.
  
  d) Tính giá trị nhỏ nhất của $v_0$ theo $R$ và $g$. Tốc độ này có giúp châu chấu lướt ngay sát đỉnh khúc gỗ không hay quỹ đạo sẽ chệch đi?],
  type: "essay",
  prefix: "Bài",
)

#vp-question(
  [
  Một xe tải đang chạy với vận tốc không đổi $20 "m/s"$ thì đột ngột hãm phanh với gia tốc không đổi $a_1 = 2 "m/s"^2$. Ở phía sau nó $10 "m"$, cùng làn đường, một chiếc xe con đang chạy với vận tốc $30 "m/s"$. Ngay khi xe tải phanh, tài xế xe con cũng phản xạ và đạp phanh với gia tốc không đổi $a_2$.
  
  a) Chọn hệ quy chiếu gắn với xe tải. Tính vận tốc tương đối ban đầu và khoảng cách tương đối ban đầu của xe con đối với xe tải.
  
  b) Biểu diễn gia tốc tương đối $a_"rel"$ của xe con so với xe tải theo $a_1$ và $a_2$.
  
  c) Viết biểu thức vận tốc tương đối $v_"rel"$ và khoảng cách tương đối $d_"rel"$ theo thời gian $t$. Quỹ đạo của $d_"rel"(t)$ có dạng hình gì? (Là một parabol).
  
  d) Sử dụng đỉnh parabol để tìm điều kiện của gia tốc $a_2$ (tính bằng số cụ thể) sao cho $d_"rel"$ luôn lớn hơn $0$ (tức là xe con không đâm vào xe tải).],
  type: "essay",
  prefix: "Bài"
)

#vp-question(
  [
  Một khẩu pháo bắn liên tiếp hai viên đạn từ cùng một vị trí với cùng tốc độ ban đầu $v_0$. Viên đạn thứ nhất bắn với góc $theta_1 = 60^degree$ so với phương ngang. Sau đó một khoảng thời gian $Delta t$, khẩu pháo bắn viên đạn thứ hai với góc $theta_2 = 45^degree$ ở cùng một góc phương vị. Hai viên đạn sau đó đã va chạm nhau trên không. Bỏ qua lực cản không khí.
  
  a) Gọi $t$ là thời gian kể từ khi bắn viên đạn thứ nhất. Viết các phương trình tọa độ $x_1(t)$, $y_1(t)$ của đạn 1 và $x_2(t)$, $y_2(t)$ của đạn 2 theo $t$, $Delta t$, $v_0$, $g$, $theta_1$, $theta_2$.
  
  b) Hai viên đạn va chạm nghĩa là $x_1 = x_2$ và $y_1 = y_2$. Thiết lập hệ phương trình để giải tìm thời điểm va chạm $t$.
  
  c) Rút ra biểu thức tính khoảng thời gian trễ $Delta t$ giữa hai lần bắn sao cho chúng chắc chắn chạm nhau trên không.
  
  d) Hãy đánh giá dấu của các vận tốc theo phương dọc $v_"y1"$ và $v_"y2"$ lúc va chạm. Phân tích hiện tượng: lúc chạm nhau, hai viên đạn đang đi lên hay đi xuống?],
  type: "essay",
  prefix: "Bài"
)

#vp-question(
  [
  Một thang máy cao tốc có khoảng cách từ sàn lên trần là $H = 2,7 "m"$. Thang máy bắt đầu đi lên từ mặt đất với gia tốc không đổi $a = 1,2 "m/s"^2$. Đúng $2,0 "s"$ sau khi thang máy khởi hành, một chiếc bu-lông trên trần thang máy bị tuột và bắt đầu rơi xuống. Lấy $g = 9,8 "m/s"^2$.
  
  a) Hãy thiết lập phương trình chuyển động của sàn thang máy và của chiếc bu-lông trong hệ quy chiếu gắn với mặt đất (gốc tọa độ tại mặt đất).
  
  b) Thay vì giải phương trình ở câu a), hãy chuyển sang hệ quy chiếu gắn với thang máy. Lập luận để tìm gia tốc tương đối của bu-lông đối với sàn thang máy. Chú ý chiều của gia tốc.
  
  c) Dùng hệ quy chiếu tương đối ở câu b), hãy tính thời gian rơi tự do của bu-lông cho đến khi chạm sàn thang máy.
  
  d) Tính độ dời và tổng quãng đường thực tế mà bu-lông đã di chuyển đối với hệ quy chiếu mặt đất trong suốt thời gian rơi đó. Bàn luận về sự khác biệt giữa độ dời và quãng đường trong trường hợp này.],
  type: "essay",
  prefix: "Bài"
)

#vp-question(
  [
  Một ca nô cứu hộ đang đi xuôi dòng nước và vượt qua một chiếc phao trôi tự do tại điểm $A$. Sau khi đi qua phao được một khoảng thời gian $T = 60 "phút"$, ca nô nhận lệnh quay đầu lại để tìm chiếc phao đó. Bỏ qua thời gian quay đầu và giả sử động cơ ca nô luôn hoạt động với công suất không đổi (tức là tốc độ của ca nô so với nước luôn không đổi). Sau một thời gian, ca nô bắt kịp chiếc phao tại một điểm cách điểm $A$ ban đầu một khoảng $L = 6,0 "km"$.
  
  a) Chọn hệ quy chiếu gắn với bờ sông, gọi $u$ là vận tốc dòng nước, $v$ là vận tốc ca nô so với nước. Hãy lập phương trình quãng đường để tính thời gian từ lúc quay đầu đến lúc bắt kịp phao.
  
  b) Giải bài toán trên theo một hệ quy chiếu khác: Hãy tưởng tượng bạn đang ngồi trên chiếc phao trôi theo dòng nước. Trong hệ quy chiếu gắn với chiếc phao, dòng nước có đứng yên không? Vận tốc của bờ sông là bao nhiêu?
  
  c) Trong hệ quy chiếu gắn với phao, hãy lập luận để chứng minh ngay lập tức rằng thời gian ca nô đi xa khỏi phao đúng bằng thời gian ca nô quay lại đuổi kịp phao.
  
  d) Sử dụng kết quả suy luận từ câu c), hãy tính vận tốc dòng chảy $u$ của con sông.],
  type: "essay",
  prefix: "Bài"
)

#vp-question(
  [
  Ba thiết bị bay không người lái (drone) được lập trình ban đầu nằm ở ba đỉnh của một tam giác đều có cạnh là $a$. Chúng đồng thời xuất phát với cùng một tốc độ không đổi $v$. Drone 1 luôn hướng mũi bay về phía drone 2, drone 2 luôn hướng về phía drone 3, và drone 3 luôn hướng về phía drone 1.
  
  a) Dựa vào sự đồng nhất về vận tốc và góc, hãy lập luận hình học để chứng minh rằng tại bất kỳ thời điểm nào, 3 drone này luôn tạo thành một tam giác đều, nhưng kích thước của tam giác bị thu nhỏ dần và tam giác bị xoay đi.
  
  b) Xét drone 1 và drone 2. Hãy phân tích véc-tơ vận tốc của drone 1 và drone 2 lên phương của đoạn thẳng nối chúng. Xác định tốc độ thu hẹp khoảng cách tương đối giữa hai drone này.
  
  c) Tốc độ thu hẹp khoảng cách tìm được ở câu b) là một hằng số. Từ đó, hãy tính thời gian tính từ lúc xuất phát cho đến khi cả ba drone cùng hội tụ tại một điểm.
  
  d) Điểm hội tụ nằm ở đâu so với tam giác ban đầu? Tính tổng quãng đường mà mỗi drone đã bay được cho đến khi va chạm.],
  type: "essay",
  prefix: "Bài"
)

#vp-question(
  [
  Một sợi dây thun đàn hồi nằm ngang có một đầu gắn chặt vào tường. Chú sâu bám ở trên dây. Người ta bắt đầu kéo đầu tự do của sợi dây ra xa bức tường với tốc độ không đổi $v_0 = 1 "cm/s"$. Ngay lúc đó, chú sâu bắt đầu bò về phía bức tường với tốc độ $u = 1 "mm/s"$ đối với sợi dây.
  
  a) Hãy biểu diễn tốc độ (đối với mặt đất) của một điểm nằm trên dây cách tường một đoạn $x$. Dây bị dãn đều nên các điểm trên dây sẽ có vận tốc khác nhau.
  
  b) Vận tốc tuyệt đối của chú sâu đối với mặt đất phụ thuộc vào hai yếu tố: tốc độ chú sâu bò và tốc độ của điểm trên dây mà nó đang đứng. Hãy viết phương trình vận tốc tuyệt đối của chú sâu lúc chú đang cách tường đoạn $x$.
  
  c) Lập luận bằng đại số (so sánh các giá trị): Sâu sẽ bị kéo ra xa tường nếu vận tốc của điểm trên dây lấn át vận tốc bò của sâu. Hãy thiết lập một điều kiện bất đẳng thức cho $x$ để sâu vẫn có thể tiến lại gần tường.
  
  d) Theo lý luận ở câu c, tình cảnh của chú sâu sẽ ngày càng vô vọng hay sẽ ngày càng tiến nhanh về tường? Dựa trên lập luận đó, chú sâu có bao giờ chạm được đến tường không (giả sử dây có thể dãn dài vô hạn)?],
  type: "essay",
  prefix: "Bài"
)

#vp-question(
  [
  Một máy bắn pháo hoa bắn liên tiếp hai quả đạn từ cùng một điểm trên mặt đất. Hai quả đạn được bắn đi với cùng tốc độ ban đầu $v_0 = 250 "m/s"$. Quả thứ nhất được ném với góc $theta_1 = 60^degree$, và quả thứ hai với góc $theta_2 = 45^degree$ so với phương ngang, nằm trong cùng một mặt phẳng thẳng đứng. Bỏ qua lực cản không khí. Cần phải có một khoảng thời gian trễ $Delta t$ giữa hai lần bắn để hai quả đạn va chạm nhau trên không.
  
  a) Viết phương trình tọa độ của quả đạn 1 $(x_1, y_1)$ và quả đạn 2 $(x_2, y_2)$ theo thời gian. Gọi $t$ là thời gian bay của quả đạn thứ hai. Thời gian bay của đạn một sẽ là $t + Delta t$.
  
  b) Từ điều kiện $x_1 = x_2$, hãy biểu diễn $Delta t$ theo $t$, $theta_1$, $theta_2$.
  
  c) Thay kết quả $Delta t$ từ câu b) vào điều kiện $y_1 = y_2$. Sử dụng công thức lượng giác cơ bản để khử $t$ và giải tìm $Delta t$ chỉ theo $v_0$, $g$, $theta_1$, $theta_2$.
  
  d) Tính ra con số cụ thể cho $Delta t$ (lấy $g = 9,8 "m/s"^2$). Hai viên pháo hoa va chạm nhau khi đang ở giai đoạn đi lên hay đi xuống của quỹ đạo parabol?],
  type: "essay",
  prefix: "Bài"
)

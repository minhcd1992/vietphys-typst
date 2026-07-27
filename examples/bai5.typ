// ==========================================
// TÀI LIỆU VẬT LÍ: BÀI 5 - CHUYỂN ĐỘNG NÉM
// ==========================================
#import "../vietphys.typ": *
#import "@preview/droplet:0.3.1": dropcap
#import "@preview/fontawesome:0.6.2": *
#import "@preview/cetz:0.5.2"

#show: doc => vp-page-setup(paper: "a4", margin: (x: 2cm, y: 60pt), doc)
#set text(font: "Times New Roman", size: 12pt, lang: "vi")

#let current-part = state("current-part", "Phần I - Lý thuyết")
#set page(
  header: context vp-header-theme-01(
    title: "TÀI LIỆU VẬT LÍ",
    subtitle: "Chuyên đề: Chuyển động ném",
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

// Kích hoạt giao diện Heading Cờ Đuôi Nheo 
#show: doc => vp-heading-theme-01(doc)

#let mock-img(note: "Ghi chú nội dung ảnh vào đây") = box(width: 100%, height: 100pt, fill: rgb("#E6F7FF"), radius: 4pt, stroke: 1pt + rgb("#1890FF"), align(center+horizon)[*ẢNH MINH HỌA - #note*])

// ==========================================
// TRANG BÌA & MỤC LỤC
// ==========================================
#vp-lesson-title(
  num: "5", 
  title: "KHẢO SÁT CHUYỂN ĐỘNG BẰNG TỌA ĐỘ - CHUYỂN ĐỘNG NÉM", 
  color: rgb("#1D3B7A") // Đổi màu xanh dương đậm cho hợp tone file bài 5
)

// ==========================================
// PHẦN 1: LÝ THUYẾT
// ==========================================
#current-part.update("1. Tóm tắt lý thuyết")
= TÓM TẮT LÝ THUYẾT

== Nguyên lý Độc lập của các chuyển động (The Independence of Motions)
Trong chuyển động ném, chuyển động theo phương ngang và phương thẳng đứng hoàn toàn độc lập với nhau; chuyển động này không ảnh hưởng đến chuyển động kia.

- *Bằng chứng:* Nếu bạn thả rơi một quả bóng gôn và đồng thời bắn ngang một quả bóng gôn khác từ cùng độ cao, cả hai sẽ chạm đất cùng một lúc.

#v(10pt)
#mock-img(note: "Ảnh hoạt nghiệm 2 quả bóng gôn rơi (một thả rơi, một bắn ngang) chạm đất cùng lúc")
#v(10pt)

== Hệ phương trình Động học của Chuyển động Ném xiên
Một vật được ném lên với vận tốc ban đầu $v_0$ ở góc $theta_0$ so với phương ngang. Do bỏ qua sức cản không khí, gia tốc ngang $a_x = 0$ và gia tốc dọc $a_y = -g$.

- Thành phần vận tốc ban đầu: $v_{0x} = v_0 cos theta_0$ và $v_{0y} = v_0 sin theta_0$.

#v(12pt)
// ---------------------------------------------------------
// BẢNG SO SÁNH 2 CỘT: CHUYỂN ĐỘNG NGANG VÀ DỌC
// ---------------------------------------------------------
#grid(
  columns: (1fr, 1fr),
  gutter: 15pt,
  
  // THẺ BÀI 1: CHUYỂN ĐỘNG NGANG (MÀU XANH DƯƠNG)
  block(
    width: 100%, fill: rgb("#F0F7FF"), radius: (bottom: 4pt),
    stroke: (top: 3pt + rgb("#1890FF"), left: 0.5pt + rgb("#E6F7FF"), right: 0.5pt + rgb("#E6F7FF"), bottom: 0.5pt + rgb("#E6F7FF")),
    inset: 12pt,
  )[
    #text(fill: rgb("#1890FF"), weight: "bold", size: 13pt)[CHUYỂN ĐỘNG NGANG] \
    #text(fill: rgb("#555"), style: "italic")[Thẳng đều]
    #v(6pt)
    #line(length: 100%, stroke: 0.5pt + rgb("#1890FF").lighten(50%))
    #v(6pt)
    - Vận tốc: $v_x = v_{0x} = v_0 cos theta_0 = text("const")$
    #v(4pt)
    - Tọa độ: $x = x_0 + (v_0 cos theta_0)t$
  ],
  
  // THẺ BÀI 2: CHUYỂN ĐỘNG DỌC (MÀU ĐỎ GẠCH)
  block(
    width: 100%, fill: rgb("#FFF1F0"), radius: (bottom: 4pt),
    stroke: (top: 3pt + rgb("#FF4D4F"), left: 0.5pt + rgb("#FFF1F0"), right: 0.5pt + rgb("#FFF1F0"), bottom: 0.5pt + rgb("#FFF1F0")),
    inset: 12pt,
  )[
    #text(fill: rgb("#FF4D4F"), weight: "bold", size: 13pt)[CHUYỂN ĐỘNG DỌC] \
    #text(fill: rgb("#555"), style: "italic")[Rơi tự do / Ném thẳng đứng]
    #v(6pt)
    #line(length: 100%, stroke: 0.5pt + rgb("#FF4D4F").lighten(50%))
    #v(6pt)
    - Vận tốc: $v_y = v_0 sin theta_0 - g t$
    #v(4pt)
    - Tọa độ: $y = y_0 + (v_0 sin theta_0)t - 1/2 g t^2$
  ]
)
#v(10pt)

== Phương trình Quỹ đạo và Tầm xa
Bằng cách rút $t$ từ phương trình $x$ và thế vào $y$ (với $x_0 = 0, y_0 = 0$), ta thu được quỹ đạo không phụ thuộc thời gian là một đường Parabol.

#v(8pt)
// ---------------------------------------------------------
// KHỐI CÔNG THỨC TRỌNG TÂM
// ---------------------------------------------------------
#vp-knowledge-box(
  title: "CÔNG THỨC QUỸ ĐẠO & TẦM XA",
  type: "theorem",
  color: rgb("#D84315"), // Màu cam gạch chói lọi, hợp với cảnh báo
  content: [
    *1. Phương trình quỹ đạo:*
    $ y = (tan theta_0)x - (g)/(2 v_0^2 cos^2 theta_0) x^2 $
    
    *2. Tầm xa (Khoảng cách ngang cực đại khi $y = 0$):*
    $ R = (v_0^2 sin(2 theta_0))/(g) $
    
    #v(4pt)
    _Nhận xét:_ Tầm xa đạt cực đại ($R_"max" = v_0^2/g$) khi góc ném $theta_0 = 45^degree$ (với điều kiện điểm ném và điểm rơi cùng độ cao).
  ]
)

#v(15pt)
// ---------------------------------------------------------
// HÌNH VẼ MINH HỌA BẰNG CETZ (ĐÃ CHUẨN HÓA HÌNH HỌC)
// ---------------------------------------------------------
#align(center)[
  #cetz.canvas({
    import cetz.draw: *
    
    // 1. Hệ trục tọa độ Oxy
    line((0, -0.5), (0, 4.5), mark: (end: "stealth"), name: "y-axis", stroke: 1pt)
    line((-0.5, 0), (7.5, 0), mark: (end: "stealth"), name: "x-axis", stroke: 1pt)
    content((0, 4.8), $y$)
    content((7.7, 0), $x$)
    content((-0.3, -0.3), $O$)
    
    // 2. Quỹ đạo Parabol (Đỉnh H_max tại (3,3). Điểm neo điều khiển tại (3,6))
    bezier((0,0), (6,0), (3, 6), stroke: 1.2pt)
    
    // 3. Vector vận tốc ban đầu v0 (Tiếp tuyến 100%)
    // Hướng thẳng về điểm neo (3,6). Ta rút ngắn độ dài lại tại tọa độ (1.2, 2.4)
    line((0,0), (1.2, 2.4), mark: (end: "stealth"), stroke: (paint: rgb("#1890FF"), thickness: 1.5pt))
    content((0.6, 1.8), text(fill: rgb("#1890FF"), weight: "bold")[$v_0$])
    
    // 4. Góc ném theta_0 (Dịch điểm bắt đầu ra trục Ox)
    // Cung bắt đầu tại (1,0) trên trục Ox, quay đến góc tiếp tuyến 63.43 độ
    arc((1, 0), start: 0deg, stop: 63.43deg, radius: 1, stroke: rgb("#1890FF"))
    content((1.4, 0.6), text(fill: rgb("#1890FF"))[$theta_0$])
    
    // 5. Đường gióng và chú thích Đỉnh H_max
    line((3,0), (3,3), stroke: (paint: rgb("#888"), dash: "dotted"))
    content((3.6, 3.3), text(fill: rgb("#D84315"))[$H_"max"$])
    
    // 6. Vẽ viên bi tại đỉnh và vector vx (vì vy = 0)
    circle((3,3), radius: 0.12, fill: rgb("#FF4D4F"))
    line((3,3), (4.5, 3), mark: (end: "stealth"), stroke: (paint: rgb("#1890FF"), thickness: 1.5pt))
    content((4.5, 3.4), text(fill: rgb("#1890FF"), weight: "bold")[$v_x$])
    
    // 7. Ký hiệu Tầm xa R
    line((0, -0.8), (6, -0.8), mark: (start: "stealth", end: "stealth"), stroke: rgb("#555"))
    content((3, -1.2), text(fill: rgb("#555"))[*Tầm xa* $R$])
  })
]
#v(15pt)

// ---------------------------------------------------------
// BẪY KHÁI NIỆM
// ---------------------------------------------------------
#vp-knowledge-box(
  title: "BẪY KHÁI NIỆM CẦN TRÁNH",
  type: "warning",
  content: [
    - *Vận tốc tại đỉnh:* Tại đỉnh quỹ đạo, vật KHÔNG dừng lại. Vận tốc dọc $v_y = 0$, nhưng nó vẫn đang bay ngang với vận tốc $v_x = v_0 cos theta_0$.
    - *Góc ném tối ưu:* Tầm xa cực đại đạt được ở góc $45^degree$ CHỈ ĐÚNG khi điểm ném và điểm rơi nằm trên cùng một mặt phẳng ngang. Nếu bạn ném tạ từ độ cao vai xuống đất, góc tối ưu sẽ nhỏ hơn $45^degree$.
  ]
)
#v(15pt)
// ==========================================
// PHẦN 2: DẠNG BÀI
// ==========================================
#current-part.update("2. Phân loại dạng bài")
= PHÂN LOẠI DẠNG BÀI & PHƯƠNG PHÁP GIẢI

== Dạng 1: Ném ngang từ độ cao $h$
- *Phương pháp:* Đây là ném xiên với góc $theta_0 = 0^degree$. Phương trình rút gọn cực đẹp: $v_{0x} = v_0$ và $v_{0y} = 0$. Thời gian rơi $t = sqrt((2h)/g)$ hoàn toàn không phụ thuộc vào việc bạn ném mạnh hay nhẹ, nó chỉ phụ thuộc độ cao. Tầm xa $x_"max" = v_0 t$.

== Dạng 2: Bài toán vượt chướng ngại vật (Giao điểm quỹ đạo)
- *Tư duy:* Đề thường cho tọa độ $(x,y)$ của hàng rào, đỉnh núi, mép lưới bóng chuyền.
- *Phương pháp:* Lập ngay "Phương trình quỹ đạo" $y(x)$. Thế tọa độ $(x,y)$ của chướng ngại vật vào. Lúc này ta sẽ có một phương trình đại số theo biến là $tan theta_0$ hoặc $v_0$. Giải và biện luận bất phương trình ($y_"vật" > y_"rào"$) để tìm điều kiện an toàn.

== Dạng 3: Bắn mục tiêu đang rơi (The Monkey and Hunter)
- *Sự kỳ diệu của vật lý:* Nếu bạn nhắm thẳng súng vào một quả táo đang treo trên cây, và ngay khoảnh khắc viên đạn rời nòng, quả táo rụng xuống. Viên đạn LUÔN TRÚNG quả táo dù bạn bắn nhanh hay chậm (miễn là đủ lực để đạn bay tới trước khi táo chạm đất).
- *Phương pháp chứng minh đại số:* Lập phương trình $y_"đạn"(t)$ và $y_"táo"(t)$, cho 2 tọa độ $x$ bằng nhau để tìm thời gian $t$, sau đó thế vào $y$ để chứng minh tọa độ dọc của chúng cũng tự động bằng nhau.

#pagebreak()
// ==========================================
// PHẦN 3: VÍ DỤ MINH HỌA
// ==========================================
#current-part.update("3. Ví dụ minh họa")
= VÍ DỤ MINH HỌA

#vp-show-level.update(false)
#vp-show-source.update(false)
#vp-q-counter.update(0)

#vp-question(
  [Một máy bay cứu hộ bay ngang qua một vùng ngập lũ ở miền Trung với vận tốc không đổi $v = 198 "km/h"$ ($55,0 "m/s"$) và ở độ cao $h = 500 "m"$. Phi công muốn thả một thùng hàng cứu trợ xuống trúng một mái nhà. Lấy $g = 9,8 "m/s"^2$. Bỏ qua sức cản không khí.
  
  a) Phi công phải thả thùng hàng khi góc nhìn (góc hạ) từ máy bay đến mái nhà là bao nhiêu độ?
  
  b) Khi chạm mái nhà, thùng hàng có vận tốc bằng bao nhiêu?],
  type: "essay",
  prefix: "Ví dụ",
  sol: [
    *Phân tích/Chiến thuật:* Thùng hàng không đứng yên khi rời máy bay. Nó có vận tốc ban đầu $v_0 = 55,0 "m/s"$ theo phương ngang. Ta tách làm 2 bài toán: tìm thời gian rơi bằng phương thẳng đứng, sau đó tìm khoảng cách thả bằng phương ngang.
    
    *Giải chi tiết:*
    - *a) Tìm góc nhìn thả hàng:*
      - Phương trình dọc: Thùng hàng rơi tự do từ $v_{0y} = 0$. $Delta y = - 1/2 g t^2 => -500 = -0,5 times 9,8 times t^2 => t approx 10,1 "s"$.
      - Phương trình ngang: Thùng hàng bay ngang được một đoạn $x = v_{0x} t = 55,0 times 10,1 = 555,5 "m"$. Vậy phải thả hàng khi khoảng cách ngang là $555,5 "m"$.
      - Góc nhìn từ máy bay xuống: $tan phi = h/x = 500 / 555,5 => phi = 48,0^degree$.
    
    - *b) Vận tốc chạm đích:*
      - Thành phần ngang: $v_x = v_{0x} = 55,0 "m/s"$ (không đổi).
      - Thành phần dọc: $v_y = -g t = -9,8 times 10,1 = -99,0 "m/s"$.
      - Độ lớn vận tốc va chạm: $v = sqrt(v_x^2 + v_y^2) = sqrt(55.0^2 + (-99.0)^2) = 113 "m/s"$.
    
    *Nhận xét:* Vận tốc $113 "m/s"$ (tương đương $400 "km/h"$) sẽ phá nát thùng hàng. Thực tế, người ta phải gắn dù để giảm gia tốc thẳng đứng. Bằng chứng là phi công không bao giờ được nhắm ngay trên đỉnh đầu để thả, mà phải thả từ xa tít $555 "m"$!
  ]
)

#v(10pt)
#vp-question(
  [Tại một lễ hội trên bãi biển, người ta treo một quả cầu pháo hoa A tự do trên một cột trụ cao. Từ điểm B cách chân cột một đoạn $L$, một pháo thủ bắn quả pháo hoa B. Ngay lúc pháo B rời nòng, quả cầu A bị cắt dây và rơi tự do. Bằng phép chứng minh đại số, hãy chứng minh rằng: Chỉ cần pháo B ngắm nòng súng NHÌN THẲNG vào A lúc ban đầu, thì hai quả pháo chắc chắn sẽ đâm vào nhau trên không trung, bất kể vận tốc bắn của B mạnh hay nhẹ (chỉ cần đủ mạnh để đụng nhau trước khi A chạm đất).],
  type: "essay",
  prefix: "Ví dụ",
  sol: [
    *Phân tích/Chiến thuật:* Ta viết phương trình tọa độ $y$ của cả A và B. Điểm mấu chốt: việc "nhắm thẳng" có nghĩa là góc bắn $alpha$ có $tan alpha = L/H$ (với $H$ là độ cao của A).
    
    *Giải chi tiết (Chứng minh đại số cấp 3 không tích phân):*
    - Chọn gốc tọa độ tại B (người bắn). Trục x hướng về cột, trục y hướng lên.
    - Tọa độ vật A (Rơi tự do từ độ cao $H$): $x_A = L$ (luôn bằng $L$ vì chỉ rơi thẳng xuống); $y_A = H - 1/2 g t^2$.
    - Tọa độ pháo B (Ném xiên góc $alpha$): $x_B = (v_0 cos alpha)t$; $y_B = (v_0 sin alpha)t - 1/2 g t^2$.
    - Điều kiện gặp nhau theo phương ngang: Đạn B phải bay tới cột. Cho $x_B = x_A => v_0 cos alpha dot t = L => t = L / (v_0 cos alpha)$.
    - Chứng minh gặp nhau theo phương dọc: Thay thời gian $t$ này vào tọa độ $y_B$ của viên đạn:
      $ y_B = v_0 sin alpha dot (L / (v_0 cos alpha)) - 1/2 g t^2 = L dot tan alpha - 1/2 g t^2 $
    - Nhưng vì ta ngắm nòng súng nhìn thẳng vào A lúc ban đầu, góc bắn có $tan alpha = H/L$. Thay vào, ta được:
      $ y_B = L dot H/L - 1/2 g t^2 = H - 1/2 g t^2 $
    - So sánh kết quả, ta thấy $y_B$ chính xác bằng $y_A$. Phép chứng minh hoàn tất!
    
    *Nhận xét:* Bài toán cho thấy sức mạnh của việc chia tách tọa độ. Thành phần "rơi tự do" $-1/2 g t^2$ ảnh hưởng lên cả 2 vật giống hệt nhau, nên chúng tự động triệt tiêu cho nhau. Đây là một ảo giác vật lý rất kinh điển.
  ]
)

#pagebreak()
// ==========================================
// PHẦN 4: BÀI TẬP RÈN LUYỆN
// ==========================================
#current-part.update("4. Bài tập rèn luyện")
= BÀI TẬP RÈN LUYỆN (25 BÀI)

#vp-show-level.update(true)
#vp-show-source.update(true)
#vp-q-counter.update(0)

== Mức 1: Nắm vững hệ tọa độ và Thời gian bay
_Mục tiêu: Đạt tốc độ cao trong việc phân tách $v_x, v_y$ và tìm Tầm xa, Thời gian rơi._

#vp-question(
  [Trong giải điền kinh, VĐV nhảy xa đạt thành tích $8,95 "m"$. Giả sử vận tốc chạy đà (lúc cất cánh) của anh ta là $9,5 "m/s"$ (tương đương người chạy nước rút). Tính khoảng cách bị hao hụt so với tầm xa lý thuyết cực đại có thể đạt được với vận tốc này (Lấy $g = 9,8 "m/s"^2$).],
  type: "essay", level: "Thông hiểu", lines: 3
)

#vp-question(
  [Một viên bi lăn ngang khỏi mép bàn cao $1,20 "m"$. Nó đập xuống sàn tại điểm cách chân bàn $1,52 "m"$ theo phương ngang. 
  
  a) Bi ở trên không trong bao lâu?
  b) Vận tốc lúc rời mép bàn là bao nhiêu?],
  type: "essay", level: "Thông hiểu", lines: 4
)

#vp-question(
  [Một đạn pháo được bắn ngang từ vách đá cao $45,0 "m"$ trên mặt biển với vận tốc xuất xưởng $250 "m/s"$. 
  
  a) Đạn bay trên không bao lâu? 
  b) Nó rơi cách vách đá bao xa? 
  c) Độ lớn thành phần thẳng đứng của vận tốc lúc chạm mặt nước là bao nhiêu?],
  type: "essay", level: "Thông hiểu", lines: 5
)

#vp-question(
  [Kỷ lục thế giới mô tô bay qua dốc là $77,0 "m"$ do Jason Renie lập. Giả sử anh ta rời bệ phóng với góc $12,0^degree$ so với phương ngang và độ cao cất cánh bằng với độ cao hạ cánh. Bỏ qua lực cản, hãy tính vận tốc cất cánh của chiếc mô tô.],
  type: "essay", level: "Vận dụng", lines: 3
)

#vp-question(
  [Bạn đứng trên mặt đất ném một quả bóng với vận tốc $15,0 "m/s"$ ở góc $40^degree$ lên cao. Tính độ lớn các thành phần ngang và dọc của độ dịch chuyển sau $1,10 "s"$, sau $1,80 "s"$ và sau $5,00 "s"$. Giải thích ý nghĩa vật lý khi tọa độ $y$ bị âm ở thời điểm $5,00 "s"$.],
  type: "essay", level: "Vận dụng", lines: 4
)

#vp-question(
  [Một tàu cướp biển thả một quả đạn đại bác rơi tự do từ đỉnh cột buồm cao $20 "m"$. Cùng lúc đó, tàu đang chạy thẳng đều với vận tốc $10 "m/s"$. Đối với người đứng trên bờ biển, quả đạn đại bác chuyển động theo hình gì? Hãy viết phương trình quỹ đạo $y(x)$ của nó đối với bờ biển.],
  type: "essay", level: "Vận dụng", lines: 3
)

#vp-question(
  [Bạn ném một quả bóng lên tường với vận tốc $25,0 "m/s"$, góc $40,0^degree$. Tường cách bạn $22,0 "m"$. 
  
  a) Bóng đập vào tường ở độ cao bao nhiêu? 
  b) Khi đập tường, bóng đang ở giai đoạn bay lên hay đã qua đỉnh quỹ đạo rơi xuống?],
  type: "essay", level: "Vận dụng", lines: 4
)

#vp-question(
  [Máy bay bay bổ nhào ở góc $53,0^degree$ hướng xuống so với phương thẳng đứng, thả một quả bom ở độ cao $730 "m"$. Bom đập đất sau $5,00 "s"$. Tính vận tốc của máy bay.],
  type: "essay", level: "Vận dụng", lines: 3
)

#vp-question(
  [Trong môn bóng chuyền, một người thực hiện cú phát bóng bật nhảy (jump serve) đập bóng từ độ cao $2,30 "m"$ với vận tốc $20,0 "m/s"$ theo góc chúi xuống $18,00^degree$. Bóng sẽ chạm sân cách vị trí đập bao xa theo phương ngang? Nếu giảm góc chúi xuống còn $8,00^degree$ thì bóng bay xa thêm bao nhiêu?],
  type: "essay", level: "Vận dụng", lines: 4
)

#vp-question(
  [Tại sao trong ném tạ nam (shot put), VĐV đẩy tạ từ độ cao qua vai người ném nhưng góc ném tạo kỷ lục thế giới thường nhỏ hơn $45^degree$ (khoảng $42^degree$)? Hãy biện luận bằng phương trình tầm xa với $y_0 > 0$.],
  type: "essay", level: "Vận dụng cao", lines: 4
)

#pagebreak()
== Mức 2: Cực trị quỹ đạo, Giao điểm và Phương trình lượng giác
_Mục tiêu: Đòi hỏi giải hệ phương trình, sử dụng hàm $tan(x)$, lượng giác, cực trị Parabol._

=== Nhóm 2.1: Bài toán rào chắn và Khung thành

#vp-question(
  [(Đá phạt hàng rào): Cầu thủ sút phạt trực tiếp muốn bóng bay với vận tốc $25 "m/s"$. Anh ta cần đá bay qua xà ngang khung thành cao $3,44 "m"$ và cách đó $50 "m"$. Tìm góc đá nhỏ nhất và lớn nhất để bóng có thể lọt vào lưới. (Sử dụng phương trình quỹ đạo và công thức $1/(cos^2 alpha) = 1 + tan^2 alpha$ để đưa về phương trình bậc 2 theo ẩn $tan alpha$).],
  type: "essay", level: "Vận dụng cao", lines: 5
)

#vp-question(
  [(Bóng chày vượt rào): Quả bóng chày được đánh bổng ở độ cao $1,22 "m"$ với góc $45^degree$. Giả sử nó có tầm xa (nếu rơi chạm đất) là $107 "m"$. Tuy nhiên, cách đó $97,5 "m"$ có một hàng rào cao $7,32 "m"$. Quả bóng có bay vượt qua được hàng rào không? Nếu có, nó vượt qua với khoảng cách bao nhiêu mét?],
  type: "essay", level: "Vận dụng", lines: 4
)

#vp-question(
  [(Quỹ đạo dội ngược): Quả bóng bị ném về phía trái từ mép mái nhà cao $h$. Bóng đập đất cách chân tòa nhà $d = 25,0 "m"$ sau $1,50 "s"$ ở góc $60^degree$ so với mặt ngang. Dùng tư duy chiếu ngược thời gian (Reversing motion as on video), hãy tìm độ cao $h$ và vận tốc ném ban đầu.],
  type: "essay", level: "Vận dụng cao", lines: 5
)

#vp-question(
  [(Đánh gôn qua sườn đồi): Một tay gôn đánh bóng từ đỉnh một sườn đồi thoai thoải dốc xuống. Vận tốc đầu là $43,0 "m/s"$ ở góc $30,0^degree$ so với phương ngang. Quả bóng đập xuống fairway cách đỉnh đồi $180 "m"$ theo chiều ngang. Hỏi điểm rơi thấp hơn đỉnh đồi bao nhiêu mét?],
  type: "essay", level: "Vận dụng", lines: 3
)

#v(10pt)
=== Nhóm 2.2: Bài toán giao điểm chuyển động & Công nghệ

#vp-question(
  [(Cá mang rổ phun nước): Loài cá Archer fish (cá mang rổ) bắn những tia nước để hạ gục côn trùng. Một con cá phát hiện một con nhện đang bám trên cành cây ở góc ngẩng $phi = 36,0^degree$ và khoảng cách đường chim bay $d = 0,900 "m"$. Tuy nhiên, để đòn đánh mạnh nhất, tia nước phải chạm đỉnh parabol ngay tại vị trí con nhện. Hỏi con cá phải bắn tia nước với góc ném $theta_0$ bằng bao nhiêu?],
  type: "essay", level: "Vận dụng cao", lines: 4
)

#vp-question(
  [Hai giây sau khi được ném đi, vật đạt vị trí cách điểm ném $40 "m"$ theo phương ngang và $53 "m"$ theo phương đứng. Tính vận tốc ném và góc ném.],
  type: "essay", level: "Vận dụng", lines: 3
)

#vp-question(
  [(Cứu hỏa khẩn cấp): Một tòa nhà bốc cháy. Xe cứu hỏa đứng cách tòa nhà $20 "m"$. Vòi rồng phun nước với vận tốc $25 "m/s"$. Nước từ vòi phải xuyên qua được cửa sổ ở độ cao tối đa là bao nhiêu? (Bài toán cực trị độ cao $y$ khi $x$ không đổi).],
  type: "essay", level: "Vận dụng cao", lines: 4
)

#vp-question(
  [Một quả bóng ném ngang từ nóc cầu thang với vận tốc $1,52 "m/s"$. Mỗi bậc thang cao $20,3 "cm"$ và rộng $20,3 "cm"$. Hỏi quả bóng sẽ đập vào bậc thang thứ mấy đầu tiên? (Thiết lập phương trình $y(x)$ và so sánh với đường thẳng bậc thang $y = -x$).],
  type: "essay", level: "Vận dụng cao", lines: 4
)

#pagebreak()
=== Nhóm 2.3: Bối cảnh đặc biệt

#vp-question(
  [(Ảo giác bay lơ lửng - Hang time): Trong môn bóng rổ, huyền thoại Michael Jordan nổi tiếng với ảo giác như "lơ lửng" trên không tại đỉnh của cú bật nhảy. Giả sử anh bật thẳng đứng với $v_0 = 7,0 "m/s"$ hoặc nhảy ném bóng với góc $theta = 35^degree$. Tính phần trăm thời gian mà cầu thủ này nằm ở nửa trên của quỹ đạo cú nhảy (nghĩa là độ cao từ $0,5 H_"max"$ đến $H_"max"$). Kết quả (trên 70%) giải thích vì sao mắt người xem có cảm giác anh lơ lửng rất lâu ở trên đó.],
  type: "essay", level: "Vận dụng cao", lines: 5
)

#vp-question(
  [(Bom núi lửa bay xa): Khi núi lửa phun trào, các mảnh đá rắn bị bắn ra được gọi là bom núi lửa. Tại núi Phú Sĩ (Nhật Bản), một hòn đá văng ra ở góc $35^degree$ xuống điểm chân núi cách tâm $9,40 "km"$ theo phương ngang và sâu $3,30 "km"$ theo phương dọc. Bỏ qua lực cản, hãy tính vận tốc phụt ra của hòn đá.],
  type: "essay", level: "Vận dụng", lines: 4
)

#vp-question(
  [(Diễn viên xiếc bắn đại bác): Diễn viên xiếc Zacchini bay ra từ miệng đại bác để vượt qua 3 vòng đu quay. Nếu anh ta bay ra với tốc độ $26,5 "m/s"$ ở góc $53,0^degree$. Anh ta đụng mép vòng đu quay chính giữa ngay tại thời điểm đạt độ cao cực đại. Hỏi lưới hứng người ở cuối nên đặt cách miệng súng bao xa?],
  type: "essay", level: "Vận dụng cao", lines: 4
)

#vp-question(
  [Một chiếc máy bay tàng hình ném một thiết bị do thám vào một đoàn tàu đang chạy trốn trên đường ray song song bên dưới với vận tốc $30 "m/s"$. Máy bay bay ngang ở độ cao $80 "m"$ với vận tốc $150 "m/s"$ cùng chiều. Hỏi phải cắt thiết bị khi máy bay đang cách đoàn tàu bao xa theo phương ngang để rơi trúng?],
  type: "essay", level: "Vận dụng cao", lines: 4
)

#vp-question(
  [Cỗ máy bắn đá (Trebuchet) ném một viên đá nặng vào tường thành cách đó $x$ mét. Viên đá ném với vận tốc $28,0 "m/s"$ góc $40^degree$. Động năng (sức công phá) phụ thuộc vào bình phương vận tốc. Hãy so sánh xem viên đá sẽ có vận tốc va chạm lớn hơn bao nhiêu % nếu nó đập vào tường lúc đang ở đỉnh quỹ đạo, so với lúc nó rớt xuống chỉ còn phân nửa độ cao quỹ đạo?],
  type: "essay", level: "Vận dụng cao", lines: 5
)

#vp-question(
  [Một viên bi tuyết được ném lên dọc theo một sườn đồi nghiêng góc $beta$. Bi được ném với vận tốc $v_0$ và góc $alpha$ (so với phương ngang). Dùng hệ tọa độ Oxy xoay nghiêng theo sườn đồi (trục x song song sườn đồi, trục y vuông góc sườn đồi). Hãy phân tích gia tốc $g$ thành hai thành phần trên hệ trục mới và viết phương trình tìm tầm xa dọc theo sườn đồi.],
  type: "essay", level: "Vận dụng cao", lines: 5
)

#vp-question(
  [Trên một đĩa quay tròn nằm ngang đang quay đều, một con bọ cánh cứng bắn một hạt cát về phía tâm đĩa. Tại sao hạt cát không bao giờ đi qua tâm đĩa đối với người quan sát đứng ngoài đất, dù con bọ đã nhắm rất chuẩn? Hãy giải thích bằng nguyên lý ném ngang và vẽ phác quỹ đạo.],
  type: "essay", level: "Vận dụng", lines: 4
)

#pagebreak()
// ==========================================
// TỔNG HỢP KẾT QUẢ ĐẦU RA
// ==========================================
= BẢNG TỔNG HỢP ĐÁP ÁN
#vp-print-keys(title: "")

#v(20pt)
= HƯỚNG DẪN GIẢI CHI TIẾT
#vp-print-solutions(title: "")
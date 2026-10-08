#import "../cau-hinh.typ": *
#import "images/mau-hinh.typ": mau-hinh

// MẪU KỸ THUẬT: 5 câu minh họa API, KHÔNG phải bài đủ 35 câu.
// Không include file này vào main.typ của sách.
#sbt-bai(num: "0", title: "Mẫu kỹ thuật cho Gem", label: <bai-mau-gem>)

= Phần I. Trắc nghiệm khách quan
#sbt-instructions(reset: true)[Chọn một phương án đúng trong mỗi câu.]

// MCQ-01
#vp-question(
  [Vật chuyển động theo chiều dương với đồ thị vận tốc–thời gian như hình.
    Quãng đường đi được trong $5 thin "s"$ bằng bao nhiêu?
    #align(center, mau-hinh("van-toc"))
  ],
  type: "mcq",
  options: ([$5 thin "m"$.], [$10 thin "m"$.], [$15 thin "m"$.], [$20 thin "m"$.]),
  ans: "B",
  sol: [$s = v t = 2 times 5 = 10 thin "m"$.],
)

= Phần II. Trắc nghiệm Đúng/Sai
#sbt-instructions(reset: true)[Xác định mỗi phát biểu là đúng hay sai.]

// TF-01
#vp-question(
  [Vật chuyển động thẳng đều với vận tốc $2 thin "m/s"$ trong hệ quy chiếu quán tính.],
  type: "tf",
  statements: (
    [Gia tốc bằng không.],
    [Hợp lực có độ lớn $2 thin "N"$.],
    [Trong $3 thin "s"$, vật đi được $6 thin "m"$.],
    [Không có lực nào tác dụng lên vật.],
  ),
  ans-tf: ("Đ", "S", "Đ", "S"),
  sol: [a) Vận tốc không đổi nên $a = 0$.
    #parbreak() b) Hợp lực bằng không.
    #parbreak() c) $s = 2 times 3 = 6 thin "m"$.
    #parbreak() d) Có thể có các lực khác không cân bằng nhau.],
)

= Phần III. Trắc nghiệm trả lời ngắn
#sbt-instructions(reset: true)[Ghi kết quả theo đơn vị và cách làm tròn trong đề.]

// SHORT-01 — ví dụ chuỗi trả lời cần 5 ô, kể cả dấu phẩy.
#vp-question(
  [Vật có tọa độ ban đầu $500 thin "m"$, vận tốc không đổi $"8,7" thin "m/s"$.
    Tính tọa độ sau $1 thin "s"$ theo đơn vị m, ghi một chữ số thập phân.],
  type: "short",
  ans: "508,7",
  short-boxes: 5,
  sol: [$x = x_0 + v t = 500 + "8,7" times 1 = "508,7" thin "m"$.],
)

// SHORT-02 — ví dụ nhiều đại lượng trong cùng một câu.
#vp-question(
  [Vật đi thẳng đều được $"0,40" thin "m"$ trong $"2,0" thin "s"$.
    Tính tốc độ theo m/s và quãng đường trong $5 thin "s"$ theo m.
    Ghi hai chữ số thập phân cho mỗi kết quả.],
  type: "short",
  short-fields: (
    (label: [Tốc độ (m/s)], ans: "0,20", boxes: 4),
    (label: [Quãng đường (m)], ans: "1,00", boxes: 4),
  ),
  sol: [$v = frac("0,40", "2,0") = "0,20" thin "m/s"$.
    #parbreak() $s = v t = "0,20" times 5 = "1,00" thin "m"$.],
)

= Phần IV. Tự luận
#sbt-essay-instructions(reset: true)[Trình bày lập luận, phép tính và kết luận.]

// ESSAY-01
#vp-question(
  [Vật $2 thin "kg"$ trên mặt phẳng ngang không ma sát được kéo ngang bằng lực $6 thin "N"$.
    a) Vẽ sơ đồ lực của vật.
    #parbreak() b) Dùng $F = m a$ để tính gia tốc.],
  type: "essay",
  lines: 8,
  sol: [a) Trọng lực và phản lực cân bằng theo phương đứng; lực kéo là hợp lực theo phương ngang.
    #align(center, mau-hinh("luc"))
    b) $a = F/m = 6/2 = 3 thin "m/s"^2$.],
)

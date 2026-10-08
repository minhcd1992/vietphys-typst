# Hợp đồng API và mẫu kỹ thuật Vietphys

Snapshot đối chiếu ngày **2026-10-08**, môi trường Typst **0.15.1**, CeTZ **0.3.3**. Đây là tài liệu dùng chung, không chứa tiến độ từng bài và không chứng minh Gem có quyền đọc ổ đĩa. Nếu người dùng gửi mã hiện hành khác snapshot, lấy mã mới làm căn cứ.

Đọc cùng QUY-CHUAN-CODE.md. Chỉ dùng tập API đã xác minh dưới đây cho tác vụ biên soạn thông thường; muốn mở rộng phải đọc định nghĩa hoặc kiểm chứng riêng.

## 1. Cấu trúc dự án

| Bài | Thư mục trong sbt-vat-li-10 |
| --- | --- |
| 1–7 | chuong-01-dong-hoc |
| 8–16 | chuong-02-dong-luc-hoc |
| 17–21 | chuong-03-nang-luong-cong-cong-suat |
| 22–23 | chuong-04-dong-luong |
| 24–25 | chuong-05-chuyen-dong-tron |
| 26–27 | chuong-06-bien-dang-ap-suat |

File bài nằm ngay trong chương, import `../cau-hinh.typ`. Hình thông thường nằm tại `images/bai-NN-hinh.typ` trong chương đó. Khi sửa bài hiện có, giữ tên module thực tế nếu khác quy ước này.

Chuỗi chính: main.typ → chuong.typ → bai-NN.typ → module hình. Cấu hình import gói cục bộ ../vietphys.typ. Snapshot có sẵn include cho 27 bài; không thêm include trùng khi thay dữ liệu. Khi người dùng đã đổi cấu trúc, cần file chương hiện hành để xác nhận.

## 2. Hàm cấu hình được export

| Tên | Cách dùng |
| --- | --- |
| sbt-bai | `sbt-bai(num: "0", title: "Tên bài", label: <bai-mau>)`; num là chuỗi. Thay số, tên, label cho bài thật. |
| sbt-instructions | `#sbt-instructions(reset: true)[Hướng dẫn]`; nhận body, gap, sticky, reset qua alias vp-instructions. |
| sbt-essay-instructions | Alias cùng hàm; với bài mới ưu tiên sbt-instructions thống nhất bốn phần. |
| sbt-layout | `#show: sbt-layout` chỉ ở main/wrapper, không đặt trong file bài. |
| sbt-chuong | num, title; chỉ dùng trong file chương. |
| sbt-noi-dung-chuong | Danh sách bài tự động, chỉ gọi trong file chương. |

Preset đã xử lí chap_hexagon, less_modern, heading hiện đại, font, header/footer, trang mới đầu chương/bài. Không dựng lại chúng trong mỗi bài.

## 3. vp-question

Đề là đối số **vị trí** đầu tiên: `#vp-question([Đề...], type: "...", ...)`.

| Tham số | Hợp đồng |
| --- | --- |
| type | "mcq", "tf", "short", "essay". |
| options | Tuple 4 content: `([A], [B], [C], [D])`, không ghi sẵn nhãn A/B/C/D. |
| statements | Tuple 4 content của đúng/sai, không ghi sẵn a/b/c/d. |
| ans | Chuỗi A/B/C/D cho MCQ; chuỗi số cho câu ngắn. |
| ans-tf | Tuple 4 chuỗi "Đ" hoặc "S". |
| sol | Content lời giải `[...]`, không phải solution/explanation. |
| lines | Số dòng làm bài tự luận; thường chọn 8–14 rồi xem render. |
| short-boxes | Mặc định 4; cần đủ kí tự chuỗi đáp án, kể cả dấu âm/phẩy. |
| short-fields | Tuple dictionary `(label: [Nhãn], ans: "0,20", boxes: 4)` cho câu nhiều đại lượng. |
| image | Content hình; với CeTZ ưu tiên gọi trong stem/sol như mẫu. |
| breakable | Mặc định auto; để workbook xử lí, không đặt false đại trà. |
| q-spacing, stem-spacing, line-spacing, lines-above, tf-inset, keep-first-line | Ghi đè riêng câu khi thực sự cần; thường kế thừa cấu hình. |
| level, source | Metadata có thật nhưng không tự gán khi nguồn không cho. |

Không thay bằng tên tự đoán như question:, choices:, correct:, answer:, solution: hay explanation:. Một câu thiếu khóa/lời giải cần được giải quyết về nội dung, không được lấp bằng dữ liệu tùy ý để qua kiểm tra.

Tuple một phần tử cần dấu phẩy; tuple nhiều phần tử ngăn bằng dấu phẩy. Dictionary dùng `(key: value)`. Hàng rào Markdown chỉ để phân biệt file trong câu trả lời, không thuộc mã .typ.

## 4. Trạng thái và dàn trang

- vp-show-ans / vp-show-sol là state, bật bằng .update(true) trong wrapper riêng; không đổi main thành bản có đáp án.
- vp-q-counter là counter; reset qua sbt-instructions đầu từng phần.
- Trong context, vp-sol-store.final() trả danh sách câu đã render. Các trường dùng kiểm tra: num, display-num, type, ans, ans-tf, sol, shown_inline, prefix.
- Store không lưu options, short-boxes hoặc short-fields. Không bịa assertion truy cập các trường đó; kiểm tra bằng đọc mã/xem bản giáo viên.
- MCQ ngắt giữa các hàng phương án; TF ngắt giữa các ý và lặp tiêu đề bảng. Tự luận cho phép dòng kẻ sang trang sau; câu ngắn giữ cùng ô trả lời.
- Không bọc mọi câu bằng block(breakable: false), không chèn pagebreak cho từng câu để che khoảng trống.
- Nếu được yêu cầu chỉnh layout, vp-workbook nhận dictionary page và questions cùng header/footer/body. leading thuộc page, không phải tham số cấp ngoài. Đọc cau-hinh.typ hiện hành trước khi sửa.
- Lề và khoảng cách hiện hành thuộc cấu hình sách; không coi giá trị snapshot là giá trị người dùng chưa từng thay đổi.

## 5. Mẫu đã có trong dự án

Các file dưới đây là **mẫu kỹ thuật 5 câu**, không phải bài hoàn chỉnh. Dùng để học chữ kí hàm/cấu trúc; khi tạo bài thật thay đường dẫn, số bài, label và dữ liệu, giữ mỗi câu độc lập.


### mau-bai.typ

SHA-256: `0c0e20c8b82466677095b7925e51e619718798f50f29f5a59495c0dbca5befd3`

```typst
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
```

### images/mau-hinh.typ

SHA-256: `4d5eadfef17a011f8edb5d2718e76350560675860681e6631d60510c0e150ecd`

```typst
#import "@preview/cetz:0.3.3": canvas, draw

#let blue = rgb("1976d2")
#let orange = rgb("b45309")
#let dash = (paint: luma(55%), thickness: 0.6pt, dash: "dashed")

// Helper ở ngoài canvas: gọi draw.line, không gọi nhầm line của Typst.
#let arrow(a, b, label, anchor: "south", color: blue) = {
  draw.line(a, b, stroke: 1pt + color, mark: (end: ">"))
  draw.content(b, label, anchor: anchor)
}

#let mau-hinh(id) = {
  set text(font: "Times New Roman", size: 10pt)
  canvas({
    import draw: *
    if id == "van-toc" {
      arrow((0,0), (5.5,0), [$t$ (s)], anchor: "west", color: black)
      arrow((0,0), (0,2.8), [$v$ (m/s)], color: black)
      line((0,2), (5,2), stroke: 1.2pt + blue)
      line((5,0), (5,2), stroke: dash)
      content((-0.16,-0.18), [O])
      content((-0.15,2), [2], anchor: "east")
      content((5,-0.2), [5])
    } else if id == "luc" {
      circle((0,0), radius: 0.07, fill: black, stroke: none)
      arrow((0,0), (0,1.6), [$bold(N)$])
      arrow((0,0), (0,-1.6), [$bold(P)$], anchor: "north", color: orange)
      arrow((0,0), (1.8,0), [$bold(F)$], anchor: "west")
    } else {
      panic("Chưa có hình mẫu: " + id)
    }
  })
}
```

### kiem-tra-bai.typ

SHA-256: `e5a002c4866ef16890a489db2f827f1fdc2cf805908ef8d64c2d48f7fa0cecba`

```typst
// Wrapper chung: đường dẫn bài tính từ --root, truyền bằng --input lesson=/...
#import "../cau-hinh.typ": *
#show: sbt-layout
#let teacher = sys.inputs.at("teacher", default: "false") == "true"
#let expected = sys.inputs.at("counts", default: "20,5,5,5").split(",").map(int)
#assert.eq(expected.len(), 4)
#vp-show-ans.update(teacher)
#vp-show-sol.update(teacher)
#include sys.inputs.at("lesson")
#context {
  let qs = vp-sol-store.final()
  let types = ("mcq", "tf", "short", "essay")
  assert.eq(qs.len(), expected.sum(), message: "Sai tổng số câu")
  for (kind, count) in types.zip(expected) {
    let group = qs.filter(q => q.type == kind)
    assert.eq(group.len(), count, message: "Sai số câu " + kind)
    assert.eq(group.map(q => q.num), range(1, count + 1), message: "Sai đánh số phần " + kind)
  }
  assert(qs.all(q => q.sol != none and q.sol != []), message: "Có câu thiếu lời giải")
  assert(qs.filter(q => q.type == "mcq").all(q => ("A", "B", "C", "D").contains(q.ans)),
    message: "Khóa MCQ không hợp lệ")
  assert(qs.filter(q => q.type == "tf").all(q =>
    q.ans-tf.len() == 4 and q.ans-tf.all(x => ("Đ", "S").contains(x))),
    message: "Khóa đúng/sai không đủ bốn giá trị Đ/S")
  // short-fields không nằm trong store; xem tệp mẫu và bản có đáp án để kiểm tra.
  assert(qs.all(q => q.shown_inline == teacher))
  assert.eq(vp-show-ans.final(), teacher)
  assert.eq(vp-show-sol.final(), teacher)
}
```

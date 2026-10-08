# Sách bài tập Vật lí 10

Bộ khung dùng gói `vietphys` tại `../vietphys.typ`: 6 chương, 27 bài,
mỗi bài 20 câu A–D, 5 câu đúng/sai (mỗi câu 4 phát biểu),
5 câu trả lời ngắn và 5 câu tự luận. Tổng cộng **945 câu**, gồm 490 câu đã nhập ở Bài 1–14 và 455 câu mẫu.

**Bài 1–14 đã nhập đủ đề, đáp án và lời giải từ nội dung cung cấp; các bài còn lại vẫn là câu mẫu.**
Đáp án và lời giải được lưu trong nguồn, ẩn trên bản học sinh. Các bài đã được rút gọn
diễn đạt và sửa các lỗi đáp án; xem nhật kí hiệu đính
[Bài 1](nguon/bai-01-ghi-chu.md), [Bài 2](nguon/bai-02-ghi-chu.md), [Bài 3](nguon/bai-03-ghi-chu.md), [Bài 4](nguon/bai-04-ghi-chu.md), [Bài 5](nguon/bai-05-ghi-chu.md), [Bài 6](nguon/bai-06-ghi-chu.md), [Bài 7](nguon/bai-07-ghi-chu.md), [Bài 8](nguon/bai-08-ghi-chu.md), [Bài 9](nguon/bai-09-ghi-chu.md), [Bài 10](nguon/bai-10-ghi-chu.md), [Bài 11](nguon/bai-11-ghi-chu.md), [Bài 12](nguon/bai-12-ghi-chu.md), [Bài 13](nguon/bai-13-ghi-chu.md) và [Bài 14](nguon/bai-14-ghi-chu.md).
Các bài đã soạn SGK & SBT nhưng chưa nhập vào khung được ghi nhận trong bảng dưới.

## Các tệp cần làm việc

- `main.typ`: tệp chính, mục lục và thứ tự các chương.
- `cau-hinh.typ`: font, lề, màu, mẫu chương/bài, header/footer và chế độ ẩn đáp án.
- `chuong-XX-.../chuong.typ`: trang mở đầu chương, nội dung chương tự động và thứ tự ghép bài.
- `chuong-XX-.../bai-NN.typ`: toàn bộ câu hỏi của một bài; chỉnh sửa trực tiếp ở đây.
- `chuong-01-dong-hoc/images/bai-04-*`: hình CeTZ phần trắc nghiệm và SVG phần tự luận của Bài 4; cách chỉnh sửa ghi trong nhật kí hiệu đính Bài 4.
- `chuong-01-dong-hoc/images/bai-05-do-thi.typ`: đồ thị và sơ đồ CeTZ của Bài 5; hình lời giải tự luận 3 chỉ hiện khi bật lời giải.
- `chuong-01-dong-hoc/images/bai-06-do-thi.typ`: hình CeTZ Bài 6; gồm các sơ đồ thí nghiệm, đồ thị và hai hình chỉ dùng trong lời giải.
- `chuong-01-dong-hoc/images/bai-07-do-thi.typ`: quỹ đạo, mặt dốc, hệ trục và đồ thị CeTZ Bài 7; hai hình thuộc lời giải được ẩn.
- `chuong-02-dong-luc-hoc/images/bai-08-hinh.typ`: sơ đồ lực, dây treo, khung đỡ và thí nghiệm CeTZ Bài 8; đồ thị hợp lực theo góc và sơ đồ lực tại B chỉ hiện trong lời giải.
- `chuong-02-dong-luc-hoc/images/bai-09-hinh.typ`: sơ đồ quán tính, bốn đồ thị lựa chọn, đồ thị tọa độ, thí nghiệm đệm khí Bài 9; các hình phân tích lực và đồ thị phanh thuộc lời giải được ẩn.
- `chuong-02-dong-luc-hoc/images/bai-10-hinh.typ` và `bai-11-hinh.typ`: các sơ đồ, đồ thị CeTZ cho hai bài định luật Newton; hình thuộc lời giải được ẩn.
- `chuong-02-dong-luc-hoc/images/bai-12-hinh.typ`: 18 hình CeTZ về dây treo, con lắc, ròng rọc và lực căng; 3 hình chỉ dùng trong lời giải.
- `chuong-02-dong-luc-hoc/images/bai-13-hinh.typ`: sơ đồ kéo/đẩy xiên, dốc, băng tải và đồ thị ma sát CeTZ; 5 ID hình chỉ dùng trong lời giải.
- `chuong-02-dong-luc-hoc/images/bai-14-hinh.typ`: các đồ thị lựa chọn vận tốc/gia tốc và hình lực CeTZ; 5 ID thuộc lời giải được ẩn.
- `sbt-vat-li-10.pdf`: bản PDF được biên dịch từ khung hiện tại.

Mỗi chương và mỗi bài đều bắt đầu ở trang mới, kể cả bài đầu chương.
Trang mở đầu chương có danh sách bài, header được gói tự động ẩn ở trang này để nhường chỗ cho banner.
Các trang bài dùng `vp-manual-header-fancy`; footer dùng `vp-footer-shuriken`.
Header/footer bật `compact: true` để giảm chiều cao và cỡ chữ.
Header dùng biểu tượng nguyên tử có sẵn trong gói (`icon: "atom"`); footer ghi
“Học Kage - Level up your knowledge”. Chỉnh nội dung tại `cau-hinh.typ`.
Mẫu chương là `chap_hexagon`, mẫu bài là `less_modern`.
Tiêu đề chương và bài dùng font tròn `Rounded Mplus 1c` (đã có trên máy và đã kiểm tra đủ dấu tiếng Việt).
Có thể đổi chung tại biến `sbt-title-font` trong `cau-hinh.typ`; máy khác cần cài font này khi biên dịch.
Bốn phần dùng heading `=` và `vp-heading-theme-modern`, số La Mã I–IV bắt đầu lại ở mỗi bài.
Số câu bắt đầu lại từ 1 ở mỗi phần.
Câu A–D tự ngắt trang giữa các hàng phương án để tận dụng khoảng trống cuối trang;
cuối đề đi cùng hàng phương án đầu tiên, mỗi phương án giữ nguyên và các nhãn cùng hàng thẳng nhau.
Bảng đúng/sai tự ngắt giữa các phát biểu, giữ cuối đề cùng hàng đầu tiên và lặp
tiêu đề “Phát biểu – Đ – S” ở trang tiếp theo. Mỗi phát biểu và hai ô Đ/S giữ nguyên.
Câu trả lời ngắn vẫn đi cùng ô trả lời trên một trang.
Câu tự luận có thể ngắt trang nhưng giữ cuối đề cùng ít nhất dòng làm bài đầu tiên.
Quy tắc nằm trong `vp-workbook` của gói, không cần chỉnh `breakable` ở từng câu.
Nếu muốn giữ riêng một câu A–D hoặc đúng/sai trên một trang, đặt `breakable: false` ở câu đó.
Các khoảng cách chỉnh ở đầu `cau-hinh.typ`: `sbt-question-gap = 6pt` (giữa các câu),
`sbt-stem-gap = 7pt` (sau đề câu hỏi), `sbt-header-gap = 23pt` (header đến vùng nội dung).
Khoảng đệm giữa các dòng kẻ làm bài: `sbt-writing-line-gap = 1.8em`;
tăng giá trị này để có thêm chỗ viết tay, hoặc giảm để tiết kiệm diện tích.
Khoảng trống trước dòng kẻ đầu tiên: `sbt-writing-top-gap = 16pt`.
Khoảng trống sau hướng dẫn của cả bốn phần: `sbt-instruction-gap = 14pt`;
câu hướng dẫn trong mỗi bài được bọc bằng `#sbt-instructions[...]`.
Đệm trên/dưới mỗi hàng bảng đúng/sai: `sbt-tf-row-padding = 7pt` trong `cau-hinh.typ`.

Toàn bộ cơ chế dàn trang nằm trong gói: `sbt-layout` gọi `vp-workbook`,
`sbt-instructions` là alias của `vp-instructions`; các tệp bài dùng trực tiếp
`vp-question`. Không cần sửa mã thư viện khi đổi khoảng cách hay cỡ chữ.
Chỉnh cỡ chữ/icon/khoảng đệm đầu–chân trang tại `sbt-header` và `sbt-footer`;
chỉnh font/lề/khoảng cách trang trong dictionary `page` của `sbt-layout`.
Mẫu dùng lại cho tài liệu mới: [workbook.typ](../examples/workbook.typ).

Mục lục dùng `vp-book-outline` trong `main.typ`, chia trang trước chương III
bằng `break-before: (3,)`. Mỗi trang chương dùng `sbt-noi-dung-chuong`, một alias
của `vp-chapter-outline`. Tên bài, số bài, số trang và liên kết đều lấy tự động
từ heading nên không cần nhập lại danh sách. Chỉnh cỡ chữ, đệm hàng bằng
`lesson-size`, `row-padding`; chỉnh màu bằng `color`.

## Biên dịch

Hình trắc nghiệm Bài 4 và các hình Bài 5–14 dùng `@preview/cetz:0.3.3` trực tiếp; lần biên dịch đầu
trên máy mới cần tải gói nếu chưa có trong bộ nhớ đệm Typst.

Chạy trong `E:\vietphys-typst` (thư mục chứa `vietphys.typ`):

```powershell
typst compile sbt-vat-li-10/main.typ sbt-vat-li-10/sbt-vat-li-10.pdf --root .
typst watch sbt-vat-li-10/main.typ sbt-vat-li-10/sbt-vat-li-10.pdf --root .
```

Nếu đang đứng trong thư mục `sbt-vat-li-10`:

```powershell
typst compile main.typ sbt-vat-li-10.pdf --root ..
```

Trong IDE, mở `main.typ` để xem toàn sách; đặt project root là
`E:\vietphys-typst` nếu extension báo không cho phép import ra ngoài thư mục.
Các tệp bài là tệp thành phần, được ghép qua `main.typ`.

## Thay câu mẫu bằng câu thật

Tìm mã chú thích `MCQ-01`, `TF-01`, `SHORT-01`, `ESSAY-01` trong từng bài.
Mỗi câu được viết bằng một lệnh `#vp-question(...)` độc lập, không dùng vòng lặp tạo câu,
nên có thể sửa, sao chép, di chuyển hoặc thêm từng câu.
Để giữ chỉ tiêu ban đầu, thay lần lượt 20 / 5 / 5 / 5 câu ở bốn phần.

Ví dụ câu A–D:

```typst
#vp-question(
  [Một vật chuyển động thẳng đều với tốc độ $v = 5 "m/s"$ trong $t = 10 "s"$.
  Quãng đường vật đi được bằng bao nhiêu?],
  type: "mcq",
  options: ([$25 "m"$], [$50 "m"$], [$100 "m"$], [$2 "m"$]),
  ans: "B",
  sol: [$s = v t = 50 "m"$.],
)
```

- Đúng/sai: thay 4 phần tử trong `statements`; nếu muốn lưu khóa, dùng `ans-tf: ("Đ", "S", "Đ", "S")`.
- Trả lời ngắn: dùng `ans: "50"`; mặc định 4 ô, đổi bằng `short-boxes: 5` nếu kết quả cần 5 ký tự (kể cả dấu phẩy). Câu có nhiều kết quả dùng `short-fields: ((label: [Đại lượng], ans: "0,70", boxes: 4), ...)`, xem câu 2 phần III của Bài 1.
- Tự luận: điền đề vào đối số đầu, đổi `lines: 5` để tăng/giảm số dòng làm bài.
- Hình ảnh: có thể tạo thư mục `images` cạnh tệp bài và dùng `image: image("images/ten-hinh.png", width: 100%)`.
- `ans`, `ans-tf`, `sol` có thể lưu trong nguồn; cấu hình chung giữ `vp-show-ans` và `vp-show-sol` ở `false`.
  Không có lệnh in bảng đáp án hoặc in lời giải tổng hợp trong bộ sách.

Muốn thêm bài mới: sao chép một tệp `bai-NN.typ`, đổi `num`, `title`,
`label: <bai-NN>`, rồi thêm `#include` tương ứng trong `chuong.typ`.
Muốn thêm chương: tạo thư mục mới và thêm `#include` trong `main.typ`.
Số bài được ghi tường minh để giữ đúng thứ tự 1–27 xuyên suốt các chương.

## Đối chiếu danh mục

| Bài mới | Tên bài / tệp nội dung | Bài cũ | Trạng thái nội dung |
| --- | --- | --- | --- |
| 1 | [Phép đo các đại lượng vật lí và Sai số phép đo](chuong-01-dong-hoc/bai-01.typ) | 3 | Đã nhập và hiệu đính 35 câu cùng lời giải |
| 2 | [Quãng đường và Độ dịch chuyển](chuong-01-dong-hoc/bai-02.typ) | 4 | Đã nhập và hiệu đính 35 câu cùng lời giải |
| 3 | [Tốc độ, Vận tốc và Thực hành đo tốc độ](chuong-01-dong-hoc/bai-03.typ) | 5 + 6 | Đã nhập và hiệu đính 35 câu cùng lời giải |
| 4 | [Đồ thị độ dịch chuyển – thời gian](chuong-01-dong-hoc/bai-04.typ) | 7 | Đã nhập và hiệu đính 35 câu cùng lời giải, đồ thị |
| 5 | [Gia tốc và Chuyển động thẳng biến đổi đều](chuong-01-dong-hoc/bai-05.typ) | 8 + 9 | Đã nhập và hiệu đính 35 câu cùng lời giải, hình CeTZ |
| 6 | [Sự rơi tự do và Thực hành đo gia tốc rơi tự do](chuong-01-dong-hoc/bai-06.typ) | 10 + 11 | Đã nhập và hiệu đính 35 câu cùng lời giải, hình CeTZ |
| 7 | [Chuyển động ném](chuong-01-dong-hoc/bai-07.typ) | 12 | Đã nhập và hiệu đính 35 câu cùng lời giải, hình CeTZ |
| 8 | [Tổng hợp, Phân tích lực và Thực hành tổng hợp lực](chuong-02-dong-luc-hoc/bai-08.typ) | 13 + 22 | Đã nhập và hiệu đính 35 câu cùng lời giải, hình CeTZ |
| 9 | [Định luật 1 Newton](chuong-02-dong-luc-hoc/bai-09.typ) | 14 | Đã nhập và hiệu đính 35 câu cùng lời giải, hình CeTZ |
| 10 | [Định luật 2 Newton](chuong-02-dong-luc-hoc/bai-10.typ) | 15 | Đã nhập và hiệu đính 35 câu cùng lời giải, hình CeTZ |
| 11 | [Định luật 3 Newton](chuong-02-dong-luc-hoc/bai-11.typ) | 16 | Đã nhập và hiệu đính 35 câu cùng lời giải, hình CeTZ |
| 12 | [Trọng lực và Lực căng](chuong-02-dong-luc-hoc/bai-12.typ) | 17 | Đã nhập và hiệu đính 35 câu cùng lời giải, hình CeTZ |
| 13 | [Lực ma sát](chuong-02-dong-luc-hoc/bai-13.typ) | 18 | Đã nhập và hiệu đính 35 câu cùng lời giải, hình CeTZ |
| 14 | [Lực cản và Lực nâng](chuong-02-dong-luc-hoc/bai-14.typ) | 19 | Đã nhập và hiệu đính 35 câu cùng lời giải, hình CeTZ |
| 15 | [Phương pháp giải các bài toán Động lực học](chuong-02-dong-luc-hoc/bai-15.typ) | 20 | Chưa cập nhật |
| 16 | [Momen lực và Cân bằng của vật rắn](chuong-02-dong-luc-hoc/bai-16.typ) | 21 | Chưa cập nhật |
| 17 | [Năng lượng và Công cơ học](chuong-03-nang-luong-cong-cong-suat/bai-17.typ) | 23 | Chưa cập nhật |
| 18 | [Công suất](chuong-03-nang-luong-cong-cong-suat/bai-18.typ) | 24 | Chưa cập nhật |
| 19 | [Động năng và Thế năng](chuong-03-nang-luong-cong-cong-suat/bai-19.typ) | 25 | Chưa cập nhật |
| 20 | [Cơ năng và Định luật bảo toàn cơ năng](chuong-03-nang-luong-cong-cong-suat/bai-20.typ) | 26 | Chưa cập nhật |
| 21 | [Hiệu suất](chuong-03-nang-luong-cong-cong-suat/bai-21.typ) | 27 | Chưa cập nhật |
| 22 | [Động lượng](chuong-04-dong-luong/bai-22.typ) | 28 | Chưa cập nhật |
| 23 | [Định luật bảo toàn động lượng và Thực hành đo động lượng va chạm](chuong-04-dong-luong/bai-23.typ) | 29 + 30 | Chưa cập nhật |
| 24 | [Động học của chuyển động tròn đều](chuong-05-chuyen-dong-tron/bai-24.typ) | 31 | Chưa cập nhật |
| 25 | [Lực hướng tâm và Gia tốc hướng tâm](chuong-05-chuyen-dong-tron/bai-25.typ) | 32 | Chưa cập nhật |
| 26 | [Biến dạng của vật rắn](chuong-06-bien-dang-ap-suat/bai-26.typ) | 33 | Chưa cập nhật |
| 27 | [Khối lượng riêng và Áp suất chất lỏng](chuong-06-bien-dang-ap-suat/bai-27.typ) | 34 | Chưa cập nhật |


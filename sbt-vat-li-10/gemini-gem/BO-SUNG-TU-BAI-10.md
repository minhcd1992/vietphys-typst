> TÀI LIỆU LỊCH SỬ — Không cần tải vào Knowledge mới. Quy tắc dùng chung nằm trong [QUY-CHUAN-CODE.md](QUY-CHUAN-CODE.md), API trong [KIEN-THUC-VIETPHYS.md](KIEN-THUC-VIETPHYS.md), cách dùng trong [HUONG-DAN.md](HUONG-DAN.md).

# Các lỗi đã gặp khi Gem tạo Bài 10

## Bổ sung từ lần rà soát Bài 11

Đã gặp `missing argument: body` tại `content((3.3, 1.5), [$F_A$], text(fill: blue))`. Lỗi trực tiếp nằm ở `text(fill: blue)` thiếu nội dung. Màu phải được áp dụng vào nhãn, sau đó truyền nhãn vào `content`:

```typst
content((3.3, 1.5), text(fill: blue)[$F_A$])
content((3.3, -1.5), text(fill: orange)[$F_B$])
```

Không suy rộng thành cấm `set text(fill: blue)`; đó là set rule hợp lệ. Script kiểm tra tĩnh đã bổ sung mẫu lỗi này và các trường hợp đúng tương ứng. Phải biên dịch chế độ giáo viên vì một số hình chỉ hiển thị trong lời giải.

Các lỗi nội dung cần tránh từ Bài 11: không coi lực trung bình là lực tức thời; kiểm tra mọi phương án MCQ để tránh hai đáp án đúng; không khẳng định dữ liệu cảm biến thực luôn đối xứng tuyệt đối; không suy ra chắc chắn mức độ chấn thương từ tỉ số gia tốc của hai xe. Với dây/ròng rọc, ghi rõ lực tác dụng lên vật nào và đối tác tương tác nào, không gán hai lực bằng nhau bất kỳ thành cặp lực–phản lực. Xem `nguon/bai-11-ghi-chu.md` trong dự án để biết những hiệu đính cụ thể.

## Các lỗi từ Bài 10

Bổ sung ngày 2026-10-07 cho `KIEN-THUC-VIETPHYS.md`. Đọc tài liệu này trước khi xuất code. Các ví dụ đúng bên dưới dùng Typst 0.15.1 và CeTZ 0.3.3 trong dự án. Không suy ra rằng một bài mới đã được kiểm tra chỉ vì dùng cùng mẫu.

## 1. Lỗi biên dịch có thể tái hiện

### `missing argument: denom`

Gem đã xuất ba phân số sai: `frac(1)(m)`, `frac(F_("ms"))(m)`, `frac(mu m g)(m)`. Typst gọi `frac` với chỉ một đối số nên thiếu mẫu số; ngoặc thứ hai không bổ sung đối số cho lần gọi trước.

```typst
// ĐÚNG: tử và mẫu cùng nằm trong một cặp ngoặc, cách bằng dấu phẩy.
$a = frac(1, m) F$
$a = -frac(F_("ms"), m) = -frac(mu m g, m)$
```

Phải rà cả `sol:` đang ẩn: nội dung đối số vẫn được đánh giá khi gọi hàm. Ẩn lời giải không vô hiệu hóa lỗi cú pháp trong lời giải.

### `unknown variable: proportional`

Gem dùng một từ tiếng Anh như thể đó là tên ký hiệu được định nghĩa. Trong ngữ cảnh dự án không có biến ấy. Dùng ký hiệu Unicode đã được biên dịch:

```typst
$a ∝ F$
$a ∝ 1/M_("hệ")$
```

Không đoán tên ký hiệu, hàm hoặc tham số từ ý nghĩa tiếng Anh. Nếu không biết cú pháp, dùng mẫu đã chạy hoặc yêu cầu phần tài liệu còn thiếu.

## 2. Có thể biên dịch nhưng hiển thị sai

### Biến tính tọa độ che ký hiệu toán

`let alpha = 30deg` làm `$alpha$` trong cùng phạm vi lấy giá trị biến góc, thay vì ký hiệu α. `let h = ...` có thể làm nhãn `$h$` in ra một con số.

```typst
// Trong khối canvas đã import draw: *
let slope-angle = 30deg
let height = 3 * calc.tan(slope-angle)
content((0, 0), [$alpha$])
content((-0.2, height / 2), [$h$], anchor: "east")
```

Dùng tên mô tả cho biến tính hình: `height`, `plot-height`, `slope-angle`, `block-mass`. Xem ảnh render để kiểm tra nhãn, vị trí vật trên dốc, đường dây và góc; trình biên dịch không kiểm tra ý nghĩa của hình.

### Dấu phẩy thập phân

Trong math dùng `"3,6"`, không viết `100/3,6` để biểu diễn phép chia cho 3,6. Cách đúng:

```typst
$v = frac(100, "3,6") thin "m/s"$
$F approx "17683,95" thin "N"$
```

Không thay mọi dấu phẩy bằng dấu chấm hay bọc mọi cặp số trong nháy: dấu phẩy còn phân cách đối số, tọa độ CeTZ và phần tử tuple. Viết khoảng trắng sau dấu phẩy phân cách, ví dụ `frac(1, 2)` hoặc `(0, 1)`.

## 3. Kiểm tra vật lí riêng với kiểm tra code

- **Đúng/sai 2:** giữ khối lượng xe M nhưng đổi quả treo làm đổi tổng khối lượng. Không được giữ phát biểu sai là Đúng với lí do “quy ước SGK”. Xét hệ xe + quả treo có gia tốc `m_treo g / (M + m_treo)`. Lực căng kéo riêng xe khác trọng lượng quả treo. Bản đã hiệu đính có khóa **S–S–Đ–S**.
- **Trả lời ngắn 1:** đổi `100 km/h` bằng `100/3.6 m/s` khi tính; không dùng tốc độ đã làm tròn để tính lực rồi làm tròn lần nữa. Kết quả **17684 N**, dùng `short-boxes: 5`.
- **Trả lời ngắn 2:** kiểm tra điều kiện vật đang trượt trước khi dùng ma sát trượt. Kết quả **1,37 m/s²**.
- **Tự luận 1:** hệ số cản hiệu dụng và hệ số bám lốp là hai đại lượng khác nhau. Không dùng cùng một hệ số để suy ra cả lực cản và khả năng phanh mà không có mô hình phù hợp. Nếu phải sửa mô hình, ghi rõ đó là hiệu đính.
- **Tự luận 4:** thời gian giữa hai cổng quang chưa xác định được gia tốc nếu không biết vận tốc ở cổng đầu. Không tự đặt vận tốc đó bằng 0, không tự thêm sai số dụng cụ `0,001 m`, không kết luận ray nghiêng chỉ từ một độ chênh lệch. Khi thiếu dữ kiện, chỉ rõ phần tính được và phần chưa xác định được.
- **Tự luận 5:** công thức ngoại lực bằng đạo hàm tổng động lượng áp dụng cho hệ vật chất xác định. Tên lửa riêng trao đổi khối lượng; phải dùng mô hình có dòng động lượng/lực đẩy, không áp dụng máy móc đạo hàm `Mv` của tên lửa như một hệ kín.
- Nêu rõ chiều dương, điều kiện đầu, các lực bỏ qua, lực trung bình hay tức thời. Với va chạm, `Δp/Δt` cho lực tổng hợp trung bình; muốn coi đó là lực của chân/cột phải nêu giả thiết về các xung lượng khác.

Đầu vào lần rà soát này là **phản hồi của Gem**, được lưu thành `nguon/bai-10-gem-ban-dau.txt`, không phải nguồn bài tập ban đầu. Không dựa vào lời khẳng định của Gem để gán lỗi cho tác giả nguồn chưa được cung cấp.

## 4. Quy trình bắt buộc trước khi trả lời

1. Đối chiếu file hiện hành: Bài 10 đã tồn tại, vì vậy ghi **THAY TOÀN BỘ** khi xuất lại file, không ghi **TẠO MỚI**. Chỉ xuất file hình nếu bài import module ấy; ID gọi hình và ID định nghĩa phải khớp.
2. Kiểm kê đủ 20/5/5/5 nếu nguồn đủ 35 câu; kiểm tra riêng đáp án và lời giải từng câu. Không dùng “đã kiểm chứng” để thay cho tính toán thực tế.
3. Rà từng `frac`, từng ký hiệu math, dấu phẩy thập phân và biến trùng tên ký hiệu. Kiểm tra lời giải ẩn như đề đang hiện.
4. Nếu có công cụ, chạy kiểm tra tĩnh rồi biên dịch học sinh và giáo viên, xem các trang có hình/bảng/công thức. Nếu không có công cụ, ghi rõ **chưa biên dịch** và đưa lệnh người dùng chạy. Không tự báo kết quả PASS.
5. Trong phản hồi, phân biệt **hiệu đính vật lí**, **sửa code**, **giả thiết bổ sung**, **điểm còn thiếu dữ kiện**. Chỉ nói đã đọc/đối chiếu những nguồn thật sự được cung cấp.

Từ thư mục gốc repository:

```powershell
python sbt-vat-li-10/gemini-gem/kiem-tra-code-gem.py sbt-vat-li-10/chuong-02-dong-luc-hoc/bai-10.typ sbt-vat-li-10/chuong-02-dong-luc-hoc/images/bai-10-hinh.typ
typst compile sbt-vat-li-10/gemini-gem/kiem-tra-bai-10.typ sbt-vat-li-10/gemini-gem/bai-10-hoc-sinh.pdf --root .
typst compile sbt-vat-li-10/gemini-gem/kiem-tra-bai-10.typ sbt-vat-li-10/gemini-gem/bai-10-giao-vien.pdf --root . --input teacher=true
typst compile sbt-vat-li-10/main.typ sbt-vat-li-10/sbt-vat-li-10.pdf --root .
```

Script Python chỉ dò một số mẫu lỗi đã gặp; không phải parser Typst. WARN về dấu phẩy hoặc phạm vi biến cần người đọc xét lại, không tự sửa hàng loạt. Không có cảnh báo vẫn phải biên dịch, tính lại vật lí và xem PDF. Wrapper `kiem-tra-bai-10.typ` kiểm tra Bài 10 hiện hành, không tự kiểm chứng bài mới và không chứng minh mọi đáp án đều đúng.

## 5. Thử Gem bằng một yêu cầu ngắn

Gửi cho Gem:

> Rà và sửa `$a = frac(1)(m) F$`, `$a proportional F$`; trong canvas đang có `let alpha = 30deg` và nhãn `[$alpha$]`. Với xe lăn M cố định và quả treo đổi khối lượng, có được coi khối lượng toàn hệ không đổi không? Chỉ rõ lỗi code và lỗi vật lí; không tuyên bố đã chạy Typst nếu không có công cụ.

Gem cần trả được phân số hai đối số, ký hiệu ∝, đổi tên biến góc và giải thích tổng khối lượng thay đổi. Nếu vẫn bỏ sót, gửi lại tài liệu này và phần code/API liên quan trước khi giao cả bài.

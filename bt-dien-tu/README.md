# Bài tập điện từ — Đề và lời giải

Chuyển soạn từ **BT-DienTu-SV in.pdf**, tài liệu *Bài tập học phần Điện từ học*, Khoa Vật lý, Trường Đại học Sư phạm TP. Hồ Chí Minh, Phạm Nguyễn Thành Vinh và Trương Đặng Hoài Thu, 09/2024. Bản nguồn có 28 trang, gồm bìa và 27 trang đánh số. Bản gốc được sao chép nguyên vẹn vào `nguon/BT-DienTu-SV.pdf`.

Đã soạn **113 bài**, gồm đầy đủ các ý hỏi, công thức, phép thế số và lời giải. Các câu thiếu điều kiện được giải theo giả thiết nêu rõ tại bài, hoặc trình bày các khả năng. Lời giải được biên soạn mới, **không phải đáp án chính thức** của tác giả tài liệu.

Đề được diễn đạt lại gọn, chuẩn hóa lỗi chính tả và ký hiệu; một số đoạn dẫn nhập được lược bớt. Đây không phải bản chép nguyên văn từng dòng. Dữ kiện trong các hình cần để tính toán đã được đưa vào lời văn hoặc sơ đồ. Các bài trùng nội dung vẫn giữ theo số gốc. Để định danh duy nhất, dùng phần và số bài, ví dụ `P1/2.1` khác `P2/2.1`.

## Mở và sử dụng

- `main.typ`: mở bằng Typst Preview để sửa toàn bộ tài liệu.
- `bt-dien-tu-loi-giai.pdf`: bản đề kèm lời giải chi tiết.
- `bt-dien-tu-de-bai.pdf`: bản chỉ có đề, dùng giao bài hoặc in.
- `danh-muc.csv`: danh mục đủ 113 bài, phần, trang nguồn và tệp chứa bài.
- `cau-hinh.typ`: chỉ chứa các tùy chọn truyền cho `vp-workbook`, `vp-header`, `vp-footer` và theme tiêu đề có sẵn; không định nghĩa môi trường bài tập riêng.

| Thư mục/tệp nội dung | Bài | Số lượng |
|---|---|---:|
| `phan-1-tinh-dien/01-dien-truong.typ` | 1.1–1.22 | 22 |
| `phan-1-tinh-dien/02-dien-the.typ` | 2.1–2.22 | 22 |
| `phan-1-tinh-dien/03-gauss.typ` | 3.1–3.16 | 16 |
| `phan-1-tinh-dien/04-tu-dien.typ` | 4.1–4.10 | 10 |
| `phan-2-dong-dien/bai-tap.typ` | 2.1–2.11 | 11 |
| `phan-3-tu-truong/bai-tap.typ` | 3.1–3.22 | 22 |
| `phan-4-cam-ung/bai-tap.typ` | 4.1–4.10 | 10 |

## Biên dịch

Từ thư mục gốc `E:\vietphys-typst`:

```powershell
typst compile bt-dien-tu/main.typ bt-dien-tu/bt-dien-tu-loi-giai.pdf --root .
typst compile bt-dien-tu/main.typ bt-dien-tu/bt-dien-tu-de-bai.pdf --root . --input loi-giai=khong
```

Dùng gói Vietphys ngay trong kho qua `../vietphys.typ`, Typst 0.15.1, Times New Roman và `@preview/cetz:0.5.2`. Khi máy chưa có các gói preview mà Vietphys/CeTZ sử dụng trong bộ nhớ đệm, lần biên dịch đầu cần tải gói. Cần `--root .` từ gốc kho để Typst đọc được thư viện bên ngoài thư mục `bt-dien-tu`. Nếu chạy ngay trong `bt-dien-tu`, dùng `--root ..`. Không phụ thuộc các bộ bài tập khác trong kho.

## Dùng môi trường Vietphys

Cả **113 bài gọi trực tiếp `vp-question(..., type: "essay", sol: [...])`**. Không còn các hàm tự viết `bai`, `trinh-bay`, `luu-y`, `hinh` hay `goc`.

- `vp-workbook` quản lý dàn trang và chế độ lời giải; `vp-header`, `vp-footer`, `vp-heading-theme-native` quản lý đầu/chân trang và tiêu đề.
- `source` giữ trang PDF nguồn. `num-style` của từng câu giữ đúng số gốc, kể cả khi trích riêng một bài.
- `listEs` đánh số tự động a), b)… cho 38 bài có các ý hỏi độc lập; những nhãn chỉ dùng để chỉ hình hoặc bài ghép vẫn nằm trong đề.
- `sol` đưa lời giải vào kho `vp-sol-store` của gói; `show-solutions` bật/tắt hiển thị. `lines: 0` qua `vp-set-question-style` giúp bản đề không tự thêm dòng viết.
- `image` và `image-side: "bottom"` của câu hỏi nhận hình CeTZ hoặc `vp-image`. Hình CeTZ dùng `figure` chuẩn của Typst; ảnh nguồn dùng `vp-image(path(...))` để giải quyết đường dẫn đúng tại tệp gọi.
- `vp-knowledge-box(type: "note", ...)` trình bày các giả thiết và lưu ý về đề.

Mẫu sửa/thêm một bài ngay trong tệp nội dung:

```typst
#vp-question(
  [Nội dung đề bài.],
  type: "essay",
  num-style: _ => "1.1",
  source: [PDF gốc, trang 2],
  listEs: ([Yêu cầu thứ nhất.], [Yêu cầu thứ hai.]),
  sol: [Lập luận, công thức, thay số và kết luận.],
)
```

Giữ dòng `// source-id: P1/1.1; pdf: 2` tương ứng để script lập danh mục đối chiếu. Việc chuyển môi trường giữ nguyên nội dung và công thức lời giải; không sửa mã thư viện Vietphys.

## Hình vẽ

- `hinh/ve-hinh.typ`: 11 bộ sơ đồ mạch điện (Bài 2.4 có hai mạch), đồ thị điện trường lớp cầu, sơ đồ lực.
- `hinh/so-do-vat-li.typ` (đổi tên từ `bo-sung.typ`): hình điện tích, hai bản, thanh tích điện, hốc cầu, các lớp điện môi, dây mang dòng, hình thang, khung khuyết và mạch RL. Đây chỉ là mã hình chuyên biệt của tài liệu.
- Các hình trên được gọi trực tiếp từ mã Typst/CeTZ, chỉnh sửa được, không qua ảnh trung gian.
- **9 hình/nhóm hình còn dùng ảnh nguồn**: P1/1.5, P1/3.1, P3/3.3, P3/3.13–3.14, P4/4.1–4.4. Giữ chúng để đối chiếu hướng đường sức, mặt kín, ký hiệu mờ và phối cảnh cuộn dây. Không coi các hình này là đã vector hóa.
- `hinh/*.png`: hình cắt nguồn; có cả hình đối chiếu không nhúng vào bản cuối.
- Các hình minh họa được dàn lại, không nhất thiết đúng tỷ lệ. Đồ thị P1/3.9 được tính từ công thức từng miền.

## Các điểm cần lưu ý khi dùng đáp án

Các ghi chú chi tiết nằm ngay trong bài. Những trường hợp đáng chú ý:

- P1/1.7: độ lớn gia tốc không tự cho biết chiều điện trường; ghi giả thiết proton bị đẩy ra.
- P1/1.13–1.14: làm rõ mô hình cung mảnh và vị trí điểm ngoài thanh.
- P1/1.15: nêu hai quy ước sai số tương đối.
- P1/2.10: năng lượng của cả hai hạt bằng hai lần động năng mỗi hạt; câu (c) nguồn không nhất quán ở điểm này. Lược đoạn lịch sử ngoài nội dung tính toán.
- P1/2.21: kết quả quả cầu cô lập yêu cầu bỏ qua cảm ứng tương hỗ.
- P1/4.2: đề thiếu điện môi; giá trị số giả sử chân không/không khí.
- P2/2.7: đèn được mô hình hóa bằng điện trở ở định mức; điện trở đèn thật phụ thuộc nhiệt độ.
- P2/2.10–2.11: điện tích ban đầu ở nút nổi cần được quy ước. Riêng P2/2.10 có cả trường hợp mở khóa sau khi đã nạp.
- P3/3.1: điểm nằm trên đường thẳng chứa dây cho từ trường bằng không; bổ sung đáp án nếu ý định là đường trung trực.
- P3/3.3: ký hiệu dấu cộng trong vòng tròn ở dây 2 không rõ quy ước; trình bày vector cho cả hai chiều dòng.
- P3/3.12: dùng tương đối tính cho electron gia tốc qua 100 kV.
- P3/3.21: chỉ có thể không vượt biên đối diện; hạt vẫn trở lại và ra qua biên ban đầu.
- P3/3.22: nguồn thiếu hình được dẫn chiếu; ghi rõ giả thiết hạt vào vuông góc biên.
- P4/4.6: đề thiếu điện trở suất đồng và tự cảm; giá trị dòng dùng 1,70×10⁻⁸ Ω·m, bỏ qua tự cảm.
- P4/4.8: 5 vòng/giây được đổi thành 10π rad/s; pha ban đầu phải được quy ước.

## Kiểm tra và tái tạo nguồn

```powershell
python bt-dien-tu/scripts/kiem-tra.py
```

Lệnh trên đối chiếu danh mục với văn bản trích nguồn, kiểm tra các kết quả số chọn lọc, định luật nút, công suất, điện tích nút nổi, giới hạn của công thức và biên dịch cả hai PDF. `scripts/kiem-tra-vietphys.typ` còn kiểm tra trực tiếp kho lời giải của gói: đủ 113 bài tự luận có `sol`, số hiển thị chính xác, lời giải hiện/ẩn đúng ở cả hai chế độ. Kết quả lưu trong `kiem-tra-ket-qua.txt`. Đây không phải chứng nhận độc lập cho mọi lời giải; các bài định tính còn cần đối chiếu hình.

`scripts/trich-nguon.py` dùng PyMuPDF để tái tạo văn bản, ảnh trang và hình cắt. Không cần Python/PyMuPDF khi chỉ biên dịch Typst. Trên máy hiện tại có thể dùng bản PyMuPDF sẵn có:

```powershell
$env:PYTHONPATH = 'E:\Typst document\.pdf-tools'
python bt-dien-tu/scripts/trich-nguon.py
```

`nguon/trang-*.txt` là dữ liệu trích tự động, có lỗi thứ tự công thức; **không dùng làm bản đề đã hiệu đính**. `nguon/trang-*.png` là ảnh trang gốc để đối chiếu. `xuat/` chứa ảnh kiểm tra bố cục trong quá trình biên soạn, không được nhập vào tài liệu.

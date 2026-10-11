# Bài tập cơ — Chương 1: Động học chất điểm

Chuyển từ `G:\My Drive\bt-co-c1.pdf`: 13 trang scan, tương ứng trang in 11–23.

- `main.typ`: tệp chính, mở bằng Typst Preview hoặc dùng để biên dịch; **có cả phần ví dụ ở đầu và phần bài tập phía sau**.
- `vi-du.typ`: đầy đủ đề của 5 ví dụ 1.1–1.5.
- `bai-tap.typ`: đầy đủ 45 bài tập 1.1–1.45.
- `cau-hinh.typ`: khổ A4, phông chữ, cách trình bày đề và hình.
- `images/hinh-cetz.typ`: mã CeTZ của cả 14 hình, mỗi hình là một hàm `hinh-1-…`.
- `images/xem-hinh.typ`: xem hoặc xuất riêng một hình CeTZ.
- `bt-co-c1.pdf`: bản đã biên dịch.
- `reference/bt-co-c1.pdf`: bản PDF nguồn để đối chiếu.
- `reference/hinh-goc/`: ảnh cắt gốc để đối chiếu; không được nhúng vào bản biên dịch.
- `reference/trich-hinh.py`: mã tái tạo các hình cắt, có ghi trang và tọa độ.

## Biên dịch

Từ thư mục gốc của dự án:

```powershell
typst compile bt-co-c1/main.typ bt-co-c1/bt-co-c1.pdf
```

Hoặc từ chính thư mục `bt-co-c1`:

```powershell
typst compile main.typ bt-co-c1.pdf
```

Tài liệu dùng Times New Roman và `@preview/cetz:0.5.2`, không phụ thuộc bộ sách `sbt-vat-li-10`. Lần biên dịch đầu trên máy chưa có CeTZ cần mạng để tải gói. Đã kiểm tra với Typst 0.15.1.

Nếu mở riêng `bai-tap.typ`, bạn chỉ thấy 45 bài tập. Năm ví dụ nằm trong `vi-du.typ`; mở `main.typ` để xem toàn bộ tài liệu.

## Sửa và xuất hình CeTZ

Chỉnh hàm tương ứng trong `images/hinh-cetz.typ`; chẳng hạn `hinh-1-4()` là đồ thị vận tốc của Ví dụ 1.3. Tài liệu gọi các hàm này trực tiếp, không cần xuất ảnh trung gian.

Xuất một hình thành SVG từ thư mục gốc dự án:

```powershell
typst compile bt-co-c1/images/xem-hinh.typ bt-co-c1/hinh-1-11.svg --input figure=1.11
```

Các mã hình: `1.1`, `1.2`, `1.4`, `1.6`, `1.9`, `1.10`–`1.18`. Đổi đuôi `.svg` thành `.pdf` để xuất PDF riêng. Có thể mở `images/xem-hinh.typ` bằng Typst Preview; hình mặc định là 1.11.

## Phạm vi và đối chiếu

Đề, công thức và hình đều là mã Typst có thể chỉnh sửa. Toàn bộ 14 hình được vẽ bằng CeTZ, không nhúng bitmap. Bố cục được dàn lại, không giữ phân trang của bản scan. Các ý (a), (b), … được tách dòng để dễ đọc.

Sơ đồ giữ các điểm, nhãn, hướng vector và dữ kiện hình học của nguồn. Hình 1.4 đi qua chính xác các mốc `(0; 0)`, `(1; 1)`, `(3; 1)`, `(6; −2)`, `(7; 0)`. Hình 1.11 giữ lưới 4 s × 0,4 m và đường cong được dựng xấp xỉ từ bản scan bằng các đoạn Bézier: nguồn không cung cấp hàm số hoặc bảng dữ liệu nên không thể coi đó là một đường cong giải tích chính xác. Các hình tàu, khí cầu, người ném và ca nô được vẽ lại ở dạng minh họa giản lược.

Không đưa phần “Hướng dẫn giải”, bảng tóm tắt hay nhận xét lời giải vào tài liệu. Giữ các hình 1.1, 1.2, 1.4, 1.6, 1.9 và 1.10–1.18; bỏ hình 1.3, 1.5, 1.7, 1.8 vì chỉ dùng trong lời giải. Số hiệu hình vẫn theo bản gốc nên không liên tiếp.

Đã ghép các bài nối trang: 1.12 (trang in 18–19), 1.19 (19–20), 1.26 (20–21), 1.32 (21–22).

Giữ nguyên dữ kiện và cách viết trong nguồn, kể cả những chỗ có vẻ thiếu hoặc lỗi biên tập. Ví dụ: bài 1.7 hỏi vận tốc trung bình nhưng không nêu khoảng thời gian; bài 1.19(d) in “bán cong tại tại gốc”; bài 1.44 dùng ký hiệu α cho cả parabol và ellipse. Không tự sửa đề hoặc bổ sung giả thiết.

Có thể trích lại ảnh đối chiếu vào `reference/hinh-goc/` bằng `python reference/trich-hinh.py` khi đã cài PyMuPDF. Không cần Python để biên dịch tài liệu.

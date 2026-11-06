# Vietphys 0.1.0

Thư viện dàn trang bài học, câu hỏi và đáp án Vật lí tiếng Việt.
Entry point: `vietphys.typ`. Yêu cầu Typst 0.15.1 trở lên.

## Tài liệu

Toàn bộ hướng dẫn nằm trong một cẩm nang duy nhất, có code và sản phẩm minh họa
dựng từ chính đoạn code đó: [huong-dan-day-du.typ](examples/huong-dan-day-du.typ).

```sh
typst compile examples/huong-dan-day-du.typ dist/huong-dan-day-du.pdf --root .
```

Cẩm nang gồm: cài đặt và cấu hình trang; bốn dạng câu hỏi và mọi tùy biến màu,
nhãn, đáp án, lời giải, dòng viết; tự dàn cột và ảnh trong câu hỏi; đơn vị và
công thức; theme và hộp kiến thức; mẫu chương, bài, heading; phân cấp, đánh số,
mục lục và tham chiếu; header, footer, widget, logo, nét cọ; bảng đáp án; tính
năng mở rộng (kiểu có phạm vi, nhãn, loại câu tự tạo, đáp án theo phạm vi); sách
bài tập; phụ lục chữ ký của toàn bộ API công khai.

Hai tài liệu mẫu dùng làm điểm xuất phát:

- [workbook.typ](examples/workbook.typ): sách bài tập đủ bốn dạng câu hỏi.
- [demo-on-tap.typ](examples/demo-on-tap.typ): đề cương ôn tập có lý thuyết, ví dụ, luyện tập và lời giải.

## Bắt đầu nhanh

```typst
#import "@local/vietphys:0.1.0": *
#show: vp-page-setup

#vp-lesson(num: "1", title: "Động học")
#vp-knowledge-box(title: "Ghi nhớ", content: [Vận tốc $v = s / t$.])
#vp-question(
  [Một vật đi được $10 m$ trong $2 s$. Vận tốc là bao nhiêu?],
  type: "mcq",
  options: ([$2 m/s$], [$5 m/s$], [$10 m/s$], [$20 m/s$]),
  ans: "B",
  sol: [$v = 10 / 2 = 5 m/s$.],
)
#vp-print-keys()
```

Sách bài tập dùng preset `vp-workbook`:

```typst
#import "@local/vietphys:0.1.0": *
#show: vp-workbook.with(title: "BÀI TẬP VẬT LÍ 10")
#vp-workbook-chapter(num: "I", title: "Động học")
#vp-workbook-lesson(num: 1, title: "Quãng đường và độ dịch chuyển")
= Phần I. Trắc nghiệm khách quan
#vp-instructions(reset: true)[Chọn một phương án đúng.]
#vp-question([Tốc độ có đơn vị nào?],
  options: ([$"m/s"$], [$"m"$], [$"s"$], [$"kg"$]), ans: "A")
```

## Cài đặt local

Cần Python 3.11+ cho script đóng gói. Từ thư mục gốc repo:

```powershell
python scripts/build_release.py
python -m zipfile -e dist/vietphys-0.1.0.zip .typst-packages/local/vietphys/0.1.0
typst compile my-document.typ --package-path .typst-packages
```

Thư mục cài đặt có dạng `<package-path>/local/vietphys/0.1.0/`. Bản đã cài là
bản sao; cập nhật repo xong cần cài lại. ZIP chỉ chứa mã runtime, README,
CHANGELOG và giấy phép.

## Bảo trì và phát hành

1. Sửa API hoặc bố cục trong module tương ứng, giữ entry point ổn định.
2. Chạy từ repo này:

   ```powershell
   python scripts/check_typst.py
   python -m unittest discover -s tests -v
   ```

   CI biên dịch mọi tệp trong `examples/` và kiểm thử bản đóng gói. Gói phụ
   thuộc `@preview/fontawesome`, cần mạng ở lần tải đầu. Ví dụ dùng
   Arial/Times New Roman và Rounded Mplus 1c; máy thiếu font sẽ dùng font thay thế.
3. Với thay đổi dàn trang, xem PDF của cẩm nang và các tài liệu dùng gói:
   biên dịch thành công không bảo đảm ngắt trang, độ rộng đáp án hay vị trí hình đúng.
   Cách chắc chắn nhất là xuất PNG từng trang trước và sau khi sửa rồi so sánh.
4. Ghi `CHANGELOG.md`, tăng phiên bản trong `typst.toml`, commit và tạo tag.
   Không thay nội dung của phiên bản đã phát hành.
5. Chạy `python scripts/build_release.py`. ZIP và checksum SHA-256 được tạo trong `dist/`.

## Chuẩn bị đăng Typst Universe

- Giấy phép MIT đã khai báo trong `typst.toml` và [LICENSE](LICENSE).
- Gửi package vào `packages/preview/vietphys/0.1.0` của repo
  [typst/packages](https://github.com/typst/packages), dùng nội dung ZIP cho mã runtime.
- Manifest loại `examples/`, script, tests, CI và các thư mục nội dung sách khỏi bundle.
- Sau khi phát hành, dùng `#import "@preview/vietphys:0.1.0": *`.

Tham khảo [quy định manifest](https://github.com/typst/packages/blob/main/docs/manifest.md),
[giấy phép](https://github.com/typst/packages/blob/main/docs/licensing.md) và
[các file cần gửi](https://github.com/typst/packages/blob/main/docs/tips.md#what-to-commit-what-to-exclude).

## Tổ chức mã nguồn

| Thành phần | File triển khai |
| --- | --- |
| Câu hỏi, đáp án, lời giải, nhãn, loại câu tự tạo | `components/question_bank.typ` |
| API chapter/lesson và bộ đếm | `components/hierarchy.typ` |
| Phân cấp ngữ nghĩa và số mục | `components/hierarchy_rules.typ` |
| Khung chapter/lesson cơ bản và ngôi sao | `components/headings/basic.typ` |
| Khung chapter/lesson modern | `components/headings/modern.typ` |
| Mục lục sách và nội dung chương | `components/book_contents.typ` |
| State và truy vấn tiêu đề hiện tại | `components/document_state.typ` |
| Hộp kiến thức, ghi chú, ảnh, công thức, đơn vị | `components/knowledge_box.typ`, `boxes.typ`, `media.typ`, `quantities.typ` |
| Nhãn phần trình bày `vp-section` | `components/section.typ` |
| Khổ giấy, lề, font nội dung và chọn theme | `layout/page_setup.typ` |
| Preset sách bài tập | `layout/workbook.typ` |
| Header, footer và widget | `layout/headers.typ`, `footers.typ`, `header_widgets.typ` |
| Brush, icon, logo và vector helper | `layout/graphics.typ` |
| Thư viện hình vẽ CeTZ `vp-draw`, `vp-canvas`, `vp-figure` | `components/drawing/` (`style`, `core`, `math`, `mechanics`, `electro`, `optics`, `circuit`, `lib`) |
| Heading theme 01, modern, native, học thuật | `themes/heading_theme.typ`, `modern_headings.typ`, `native_headings.typ`, `academic_headings.typ` |
| Palette và màu dùng chung | `themes/theme_colors.typ`, `default_theme.typ` |

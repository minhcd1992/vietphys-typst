# Vietphys 0.1.0

Thư viện Typst cho tài liệu Vật lí tiếng Việt. Không phụ thuộc FastAPI, React,
SQLite hay Gemini. Entry point: `vietphys.typ`; compiler kiểm tra: Typst 0.15.1.

```typst
#import "@local/vietphys:0.1.0": *
#show: doc => vp-page-setup(doc)

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

## Cài đặt local

Repo này phát triển và phát hành độc lập với ứng dụng Vietphys. Yêu cầu Python 3.11+
cho các script và Typst CLI 0.15.1. Từ thư mục gốc repo:

```powershell
python scripts/build_release.py
python -m zipfile -e dist/vietphys-0.1.0.zip .typst-packages/local/vietphys/0.1.0
typst compile my-document.typ --package-path .typst-packages
```

File ZIP chứa manifest, entry point, module và tài nguyên runtime. Thư mục cài đặt:

```text
<package-path>/local/vietphys/0.1.0/
```

`examples/`, `legacy/`, và `img/` là tài liệu/ảnh minh họa, không phải runtime
của package. Các ví dụ trong repo dùng import tương đối để phát triển thư viện.

## API được hỗ trợ

| Nhóm | API |
| --- | --- |
| Trang | `vp-page-setup` |
| Phân cấp | `vp-chapter`, `vp-lesson`, `vp-section` |
| Heading | `vp-lesson-title`, `vp-heading-theme-01` |
| Nội dung | `vp-knowledge-box`, `vp-image`, `vp-formula` |
| Câu hỏi | `vp-question`, `vp-print-keys`, `vp-print-solutions` |
| Header/footer | `vp-header`, `vp-header-theme-01`, `vp-header-theme-02`, `vp-footer`, `vp-footer-kage` |
| Theme | `vp-colors`, `vp-settings`, `vp-question-theme`, `vp-theme-state` |
| Trạng thái | `vp-show-ans`, `vp-show-sol`, `vp-show-level`, `vp-show-source`, `vp-q-counter`, `vp-sol-store` |

Các hàm `_render-*` và helper khác là chi tiết nội bộ. Không để generator của
ứng dụng phụ thuộc vào chúng. API từ `legacy/` không thuộc hợp đồng này.

`vp-question` nhận `stem` dạng content; `type` là `mcq`, `tf`, `short`, `essay`.
MCQ/TF dùng tối đa bốn lựa chọn/phát biểu. Trường `image` nhận **content ảnh**:

```typst
#vp-question([Quan sát hình.], type: "essay", image: image("images/example.jpg"))
```

Ảnh của tài liệu được tạo ở phía tài liệu rồi truyền vào thư viện. Với `vp-image`,
dùng `path("images/example.jpg")` tại nơi gọi để giữ đường dẫn gắn với tài liệu,
hoặc dùng `figure(image(...))` trực tiếp. Không truyền chuỗi đường dẫn tài liệu
vào hàm thư viện rồi kỳ vọng nó được resolve ngoài package.

Bật/tắt đáp án và lời giải bằng state:

```typst
#vp-show-ans.update(true)
#vp-show-sol.update(false)
#vp-q-counter.update(0)
```

## Bảo trì và phát hành

1. Thay đổi API/layout trong các module tương ứng, giữ entry point ổn định.
2. Chạy từ repo này:

   ```powershell
   python scripts/check_typst.py
   python -m unittest discover -s tests -v
   ```

   CI riêng chạy 10 ví dụ hiện hành và kiểm thử bản đóng gói. Các phụ thuộc Typst
   `fontawesome`, `droplet`, `cetz` có thể cần tải mạng lần đầu. Ví dụ dùng Arial/Times
   New Roman; máy thiếu font sẽ dùng font thay thế.
3. Với thay đổi dàn trang, xem PDF của các ví dụ: compile thành công không bảo đảm
   ngắt trang, độ rộng đáp án hoặc vị trí hình đã đúng.
4. Ghi `CHANGELOG.md`, tăng phiên bản trong `typst.toml`, commit và tạo tag phiên bản.
   Không thay nội dung của phiên bản đã phát hành.
5. Chạy `python scripts/build_release.py`. Gửi cả `dist/vietphys-VERSION.zip` và
   `dist/vietphys-VERSION.zip.sha256` cho dự án sử dụng. ZIP không chứa ví dụ hay
   mã ứng dụng; checksum được tính trên chính file ZIP.
6. Trong repo ứng dụng, chạy `python scripts/update_typst_package.py <đường-dẫn-ZIP>`
   rồi chạy kiểm thử backend/frontend trước khi commit bản nâng cấp.

Thay đổi trong repo thư viện không tự động ảnh hưởng ứng dụng. Ứng dụng giữ một bản
phát hành cụ thể và chỉ cập nhật khi chủ động nhập ZIP mới. Lịch sử Git của thư mục
thư viện đã được trích sang repo này; remote sẽ được cấu hình khi chọn nơi lưu repo.

Repo chưa chọn giấy phép phân phối. Cần chủ sở hữu quyết định giấy phép trước
khi công bố package; không mặc định cấp phép cho nội dung câu hỏi và hình mẫu.

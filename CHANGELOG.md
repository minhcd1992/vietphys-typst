# Changelog

## Unreleased

- Thêm `vp-header-modern`: header hiện đại kiểu thanh ứng dụng, huy hiệu gradient chứa icon hoặc monogram, phụ đề in hoa giãn chữ, tự hiện chip “CHƯƠNG n” và tên bài hiện tại; hai kiểu `"line"` và `"card"`. Cẩm nang dùng mẫu này làm đầu trang.
- Bỏ 15 mẫu `vp-header-theme-01` … `15`; dùng `vp-header-modern` thay thế. `vp-manual-header-standard()` nay là `vp-header-modern` với tiêu đề Vietphys.
- Viết lại cẩm nang `examples/huong-dan-day-du.typ` bằng chính các mẫu của gói: mỗi chương một kiểu banner (`chap_modern`, `chap_hexagon`, `default`) kèm `vp-chapter-outline`, mục lục `vp-book-outline`, header `vp-manual-header-fancy`, footer `vp-footer-kage-enso`. Mỗi ví dụ là một thẻ code ngắn đặt cạnh sản phẩm dựng bằng `eval` từ đúng đoạn code đó; header và banner chương xem qua trang A4 thu nhỏ. Rút từ 114 xuống 55 trang.
- Thêm thư viện hình vẽ `vp-draw` (CeTZ 0.5.2) trong `components/drawing/`, dùng bằng `import vp-draw: *` trong `vp-canvas`: trục và đồ thị, góc, đa giác, vector, đường kích thước, điện tích, bản tụ, điện trường đều, ký hiệu từ trường, đường sức tính số, lò xo ba kiểu, giá đỡ, vật, mặt phẳng nghiêng, ròng rọc, thấu kính, gương, tia sáng và linh kiện mạch điện. Thêm `vp-canvas`, `vp-figure` và chương hướng dẫn trong cẩm nang.
- `vp-draw` theo phong cách hình vật lí của Izaak Neutelings (tikz.net): bảng màu theo ý nghĩa `pal` (lực, vận tốc, gia tốc, độ dời, điện trường, từ trường...), vật liệu gradient `materials`, tô gạch chéo `hatch`, đầu mũi tên kiểu LaTeX `head`, viền chữ `halo`, ký hiệu `vb`. Thêm `force`, `velocity`, `accel`, `component`, `measure`, `displacement`, `axis`, `tick`, `angle-arrow`, `guide`, `ground`, `floor-wall`, `rope`, `pendulum`, `marked-line`, `b-in`, `b-out`, `current-wire`, `wire-section`, `glass`, `normal-line`, `wave`, `standing-wave`; vẽ lại `mass`, `pulley`, `spring`, `incline`, `charge`, `plate`, `uniform-field`, `field-lines`, `lens` theo phong cách mới. Cẩm nang thêm mục “Cách tư duy khi vẽ hình”; mã ví dụ được chạy bằng `eval` nên luôn khớp hình.
- Gộp mọi tài liệu hướng dẫn vào `examples/huong-dan-day-du.typ`: thêm chương Phân cấp, đánh số và mục lục (từ manual-hierarchy), mục cài đặt, tự dàn cột/vùng hẹp/công thức cao, ảnh dưới đề và ảnh ôm cả câu, chi tiết theme học thuật. Bỏ các ví dụ trùng lặp `manual`, `manual-hierarchy`, `demo-full`, `demo-complete`, `review-hierarchy`, `widgets`, `hierarchy`, `modern`, `academic`; giữ `workbook` và `demo-on-tap` làm mẫu khởi đầu. README rút gọn, trỏ về cẩm nang.
- `vp-book-outline` và `vp-chapter-outline` chỉ lấy heading cấu trúc của chapter/lesson; heading `=`/`==` độc lập không còn bị coi là chương/bài.
- Xóa năm tệp chuyển tiếp không còn được import (`layout/header_footer.typ`, `heading_widgets.typ`, `modern_layout.typ`, `additional_styles.typ`, `components/modern_hierarchy.typ`) và bốn hàm SVG nội bộ không dùng trong `layout/graphics.typ`.
- Câu mcq nhận số phương án tùy ý, bảng đúng/sai nhận số ý tùy ý; trước đây quá 4 làm lỗi biên dịch.
- Kiểm tra dữ liệu câu hỏi: loại câu, đáp án mcq, `ans-tf`, khóa cấu hình và preset sai đều báo lỗi rõ ràng. `ans` không phân biệt hoa thường, nhận số thứ tự; `ans-tf` nhận true/false.
- Tham số kiểu từng câu (`opt-*`, `lbl-*`, `icon-*`) mặc định `auto`, cho phép `none`/`0pt` xóa kiểu chung trên một câu.
- Thêm `vp-question-style` có phạm vi, `vp-set-labels`/`vp-default-labels`, `vp-register-question-type` và tham số `data`, `items`.
- `vp-print-keys`/`vp-print-solutions` thêm `scope`, `groups`, `group-numbering`; `vp-print-keys` thêm `accent`, `mcq-columns`, `short-columns`. Mặc định giữ nguyên kết quả cũ.
- `vp-unit` chỉ thay bí danh trên nguyên từ (không còn biến `lumen` thành `lμmen`), hỗ trợ `kohm`, `muA` và thêm tiền tố micro.
- `vp-set-theme()` không tham số trở về `ocean` như mặc định của gói.
- Kiểm thử mới trong `tests/test_robustness.py`; đã đối chiếu từng trang của các dự án trong repo trước và sau thay đổi.
- Workbook cho phép bảng đúng/sai nối trang giữa các phát biểu; giữ cuối đề cùng hàng đầu, giữ nguyên từng hàng và lặp tiêu đề “Phát biểu – Đ – S” trên trang tiếp theo.
- Workbook cho phép câu A–D ngắt giữa các hàng phương án, giữ cuối đề cùng hàng đầu để giảm khoảng trắng cuối trang; vẫn hỗ trợ `breakable: false` và `keep-together` khi cần giữ cả câu.
- Căn các nhãn A–D theo cùng đường chân chữ khi phương án có phân số; thêm kiểm thử vị trí nhãn và ngắt trang.
- Thêm `vp-book-outline` và `vp-chapter-outline`: nhóm bài theo chương, tiêu đề đầy đủ, tự cập nhật số trang và liên kết từ heading.

- Thêm preset `vp-workbook`, `vp-workbook-chapter`, `vp-workbook-lesson` và ví dụ đủ bốn dạng câu hỏi.
- Thêm `vp-exercise-layout` có phạm vi, kế thừa/khôi phục khi lồng nhau; `vp-instructions` dùng chung cho mọi phần.
- Công khai khoảng cách câu/đề/dòng viết, đệm bảng đúng-sai, giữ dòng viết đầu và tùy chọn ngắt từng câu.
- Header/footer hỗ trợ cỡ chữ, kích thước icon/badge và khoảng đệm; thêm icon nguyên tử trong gói, sửa nhãn chương hiện số thực tế.
- `vp-page-setup` nhận header-ascent, footer-descent và leading; bộ sách Vật lí 10 dùng API chung, bỏ wrapper cục bộ.
- Kiểm thử bố cục thực tế, phạm vi cấu hình, ngắt trang và ví dụ workbook từ bản ZIP; loại bản SBT khỏi gói phát hành.

- Thống nhất chapter → lesson → `=`, `==`, `===` cho mọi style; số mục reset theo bài và không ghép số chương/bài.
- Tự đếm chương/bài, hỗ trợ label và ngắt trang lesson; mục lục, bookmark và tham chiếu dùng cùng cấu trúc.
- Thêm manual hierarchy có mã/sản phẩm cho tài liệu nhiều chương, bài lẻ và heading độc lập; kiểm thử phân cấp và số La Mã.
- Sửa chiều cao ô đúng/sai chứa công thức, gom số mũ âm trong đơn vị và đặt đường kẻ ghi nhớ theo nội dung.
- Thêm demo toàn diện: công thức cao, vùng hẹp, hình SVG, các chế độ đáp án và thư viện bố cục.
- Sửa chia cột đáp án theo chiều rộng thực tế, tách nhãn/nội dung và thêm khoảng cách công thức cao.
- Sửa dấu nhân đơn vị và màu chữ tiêu đề nhóm trong bảng đáp án.
- Gom các primitive đồ họa dùng chung, bỏ helper trùng và lệnh đọc SVG thừa.
- Dùng chung state tên phần, chuẩn hóa khoảng trắng và dọn bản nguồn phục hồi trong dist.
- Hoàn tất đối chiếu API với package trong Git của dự án Documents.
- Bổ sung header 03, 05–15, footer Enso, mẫu manual, widget và hộp `vp-note`.
- Khôi phục logo, icon và toàn bộ preset brush cùng SVG cần thiết.
- Bổ sung alias đơn vị, dấu chia ngang và đánh số ý tự luận bằng chữ cái.
- Sửa họa tiết header 02 và đo huy hiệu ghi chú; kiểm thử API mới từ bản ZIP.
- Khôi phục đúng mẫu chapter/lesson modern và heading mặc định từ bản trong Documents.
- Lấy nguồn từ Git vì working tree cũ thiếu package; loại bỏ conflict và mã debug.
- Khôi phục header 04 và footer shuriken của đề ôn tập.
- Sửa tăng counter heading hai lần, giữ heading cấp cao hơn và giới hạn tiêu đề dài.
- Khôi phục lesson ribbon, bổ sung hai bộ heading Ninja và tài nguyên SVG cần thiết.
- Sửa chapter và heading cấp 1 để tiêu đề dài tự xuống dòng.
- Thêm ví dụ và kiểm thử bản đóng gói cho phân cấp/heading cấp 1–6.
- Tích hợp palette/preset và thiết lập câu hỏi từ thư viện của dự án cũ.
- Bổ sung API đơn vị, số câu La Mã, ý tự luận và tương thích tài liệu đề thi.
- Hỗ trợ header/footer trong page setup, date trong header và phụ đề bài học.
- Sửa việc ẩn dòng viết khi bật lời giải nhưng câu hỏi chưa có lời giải.
- Xóa mã legacy, ảnh không dùng và tài liệu bài tập/thử nghiệm dư thừa.
- Giữ ba ví dụ phục vụ tài liệu API, tùy biến và ôn tập.
- Tinh gọn entry point và biểu thức render, giữ nguyên API.
- Cập nhật manifest và hướng dẫn chuẩn bị đăng Typst Universe.
- Thêm giấy phép MIT vào manifest và bản đóng gói.

## 0.1.0

- Tách thành repository riêng, giữ lịch sử Git của thư viện.
- Thêm CI riêng và bản phát hành ZIP có checksum SHA-256, kiểm thử độc lập với ứng dụng.
- Thêm manifest cho package local `@local/vietphys:0.1.0`.
- Công bố ranh giới thư viện và ví dụ được hỗ trợ.
- Tách các ví dụ dùng API cũ vào `legacy/examples/`.
- Thêm kiểm thử biên dịch API và các ví dụ hiện hành.

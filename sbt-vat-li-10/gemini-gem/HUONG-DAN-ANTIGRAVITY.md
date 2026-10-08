# Dùng Antigravity với dự án Vietphys

Đã tạo [GEMINI.md](../../GEMINI.md) ở gốc dự án. File này quy định cách làm việc trực tiếp trên ổ đĩa: sửa trong phạm vi, bảo toàn thay đổi có trước, gom file kiểm tra và tự dọn file tạm.

## Kích hoạt

1. Mở đúng thư mục E:\vietphys-typst làm workspace/project trong Antigravity.
2. Bắt đầu một cuộc hội thoại mới và yêu cầu đọc GEMINI.md trước khi làm.
3. Kiểm tra agent có nêu được ba điểm: phạm vi file, nơi chứa file tạm, lệnh kiểm tra chung. Việc nó trả lời đúng chỉ cho thấy đã đọc quy tắc, không chứng minh mọi thao tác sau đều tuân thủ.

Tài liệu Antigravity hiện hành cho biết GEMINI.md được tự phát hiện trong phạm vi dự án và không cần frontmatter. Có thể quản lí Rules qua menu … → Customizations → Rules. Nếu bản cài đặt chưa nhận file, tạo Workspace Rule chế độ Always On từ nội dung GEMINI.md; tránh duy trì hai bản quy tắc khác nhau. [Tài liệu Rules chính thức](https://www.antigravity.google/docs/rules/).

Chưa thay đổi thiết lập ứng dụng hoặc kiểm tra được giao diện Antigravity trên máy bạn; bước trên cần thực hiện trong ứng dụng.

## Mẫu giao việc hằng ngày

Thay số bài và nguồn thật:

```text
Đọc GEMINI.md ở gốc dự án và hai tài liệu API/quy chuẩn được dẫn trong đó.

Nhiệm vụ: cập nhật Bài <số> từ nguồn đính kèm.
Giữ cấu trúc và phong cách hiện tại; rà soát vật lí, đáp án, hình CeTZ.

Trước khi sửa, nêu ngắn các file dự kiến thay đổi rồi tiến hành.
Chỉ sửa bài, module hình và nhật kí hiệu đính liên quan;
lưu nguồn nguyên văn nếu chưa có.
Dùng công cụ kiểm tra chung, không tạo wrapper/script thử mới.
File tạm đặt trong .kiem-tra của bài và dọn phần tự tạo khi xong.
Cuối cùng gửi các file đã đổi, kết quả kiểm tra và đường dẫn PDF.
```

Nếu chỉ sửa lỗi:

```text
Đọc GEMINI.md. Tái hiện diagnostic đính kèm rồi sửa nguyên nhân.
Giữ các câu và phần không liên quan; không refactor hay đổi cấu hình.
Tự biên dịch và kiểm tra sau sửa. Không tạo báo cáo hoặc bản sao mới.
```

Cho tác vụ dọn file cũ:

```text
Chỉ kiểm kê các file có thể là file tạm và giải thích nguồn gốc.
Chưa xóa file nào nếu chưa xác định chắc do tác vụ nào tạo.
Phân biệt nguồn/hình thật, PDF cần giữ và file kiểm tra có thể tái tạo.
```

Không chạy hai agent cùng chỉnh một bài/module hình tại cùng thời điểm. Đó là lựa chọn vận hành để tránh ghi đè lẫn nhau, không phải yêu cầu phải mua hay cài thêm công cụ.

## Thiết lập mức tự động

Nếu ứng dụng có Artifact Review, có thể chọn Agent Decides để cân bằng tự động và xem xét thay đổi phức tạp; chọn Request Review khi muốn kiểm soát chặt một đợt sửa lớn. Terminal execution là thiết lập riêng, không thay thế quy tắc về phạm vi file. Tên/tùy chọn có thể khác giữa các phiên bản và giao diện. [Tài liệu Settings chính thức](https://www.antigravity.google/docs/settings?tab=ide).

Đây là lựa chọn của bạn, không có thiết lập nào tự biến mọi sửa đổi của agent thành đúng. Không cần bật hỏi lại cho từng thao tác thường lệ để dùng GEMINI.md.

## Quy tắc giữ thư mục gọn

- Nội dung lâu dài: bài, module hình, bản nguồn và một nhật kí hiệu đính của bài.
- Kết quả kiểm tra: sbt-vat-li-10/.kiem-tra/bai-NN/hoc-sinh.pdf và giao-vien.pdf.
- Ảnh xem trang/log/script thử: cùng thư mục kiểm tra, dọn đúng những file phiên đó tạo sau khi dùng.
- PDF toàn sách: ghi đè đúng sbt-vat-li-10/sbt-vat-li-10.pdf.
- Không dùng tên bai-NN-fixed.typ, final-v2.pdf, report-final.md để thay cho sửa file chính.

Quy tắc này nhắm tới các file agent chủ động tạo trong repository. Lịch sử, cache hoặc artifact do ứng dụng tự quản lí có thể cần thiết lập riêng; không xóa hàng loạt các thư mục đó bằng lệnh dọn repo.

## Vì sao không dùng nguyên prompt Gemini Gem?

Gem trong chat chủ yếu trả code để bạn dán. Antigravity có thể thao tác file và terminal nên cần thêm quy tắc về thay đổi có trước, phạm vi sửa, file tạm và kiểm tra thực. Hai môi trường dùng chung hồ sơ API và quy chuẩn Typst, nhưng cách giao sản phẩm khác nhau.

GEMINI.md làm hành vi rõ ràng hơn; nó là chỉ dẫn cho mô hình, không phải cơ chế khóa quyền ghi. Muốn đánh giá hiệu quả, thử một thay đổi nhỏ, xem diff và file phát sinh trước khi giao nhiều bài cùng lúc.

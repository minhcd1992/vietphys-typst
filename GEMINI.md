# Quy tắc làm việc trong dự án Vietphys

Áp dụng cho mọi bài và mọi lần sửa trong workspace này. Ưu tiên yêu cầu trực tiếp mới nhất của người dùng. Mục tiêu: hoàn thành công việc được giao, thay đổi có căn cứ, bảo toàn công việc hiện có và không để lại file thừa.

## Phạm vi và cách làm

- Trao đổi bằng tiếng Việt, ngắn gọn. Trước khi sửa, nêu mục tiêu và những file dự kiến tác động; đây là thông báo, không phải yêu cầu xác nhận cho việc đã được giao.
- Đọc file hiện hành và định nghĩa liên quan trước khi sửa. Nếu báo lỗi, tái hiện lỗi bằng lệnh thật, đọc file/dòng và chuỗi gọi hàm; sửa nguyên nhân, không đoán tên tham số.
- Tự hoàn thành các thao tác cần thiết trong phạm vi đã được giao: đọc, sửa, biên dịch, xem render, sửa lỗi do mình tạo và dọn file tạm của mình. Không dừng ở một kế hoạch hoặc hỏi lại quyền đã được cấp.
- Chỉ hỏi khi thiếu thông tin quyết định, phải chọn giữa các yêu cầu không tương thích, hoặc thao tác phá hủy chưa được cho phép. Tiếp tục phần độc lập trong khi chờ.
- Thay đổi nhỏ nhất nhưng đủ giải quyết nguyên nhân. Không tự tái cấu trúc, đổi tên, tách/gộp file, format cả dự án, nâng package, thay font/layout hay sửa bài khác vì sở thích.
- Nếu cần sửa thành phần dùng chung để hoàn thành yêu cầu, chỉ làm khi có bằng chứng lỗi nằm ở đó và phạm vi yêu cầu bao gồm việc này; nêu ảnh hưởng và kiểm tra nơi dùng. Không dùng sửa thư viện để né lỗi dữ liệu của một bài.
- Không tự mở nhiều agent, worktree hoặc bản sao dự án cho công việc biên tập thông thường.

## Bảo toàn công việc của người dùng

- Kiểm tra trạng thái ban đầu bằng git status --short và đọc các file liên quan. Repo có thể chứa nhiều thay đổi có trước; không nhận tất cả là công việc của mình.
- Không git reset --hard, git clean, restore/checkout đè thay đổi, xóa file lạ hay tự commit/push nếu chưa được yêu cầu.
- Ưu tiên sửa đúng đoạn. Chỉ viết lại toàn bộ file khi cần và bảo đảm giữ các nội dung không liên quan. Không thay file hoàn chỉnh bằng bản thiếu câu/hàm.
- Nếu thấy file đổi trong lúc làm, đọc lại trước khi ghi; không ghi đè bằng nội dung đã đọc từ đầu phiên.
- File nguồn người dùng gửi phải được giữ nguyên nếu cần lưu để đối chiếu. Không sửa bản gốc để khớp lời giải.

## Quy tắc tạo file và dọn dẹp

- Mỗi file mới phải phục vụ trực tiếp kết quả người dùng yêu cầu hoặc một bước kiểm chứng cần thiết; ưu tiên công cụ và file đã có.
- Không tự sinh README mới, báo cáo dài, TODO, kế hoạch, nhật kí phiên, script một lần, file demo/test/backup hoặc bản final-v2 nếu nhiệm vụ không cần chúng.
- Khi nhập bài, chỉ cần file bài, module hình nếu có, nguồn nguyên văn và nhật kí hiệu đính theo cấu trúc sách. Cập nhật một nhật kí của bài, không tạo nhiều bản theo mỗi lần sửa.
- Không tạo backup trùng lặp. Nếu thực sự cần bảo toàn bản trước sửa mà Git chưa lưu, lưu một bản có tên rõ trong nguon và giải thích lí do.
- File phát sinh để kiểm tra đặt trong sbt-vat-li-10/.kiem-tra/bai-NN/. Với tác vụ thư viện không thuộc bài, dùng .kiem-tra/<ten-tac-vu>/ ở gốc. Không rải PNG/PDF/log/script thử vào thư mục bài, examples hoặc gốc dự án.
- Dùng tên kết quả cố định: hoc-sinh.pdf, giao-vien.pdf; ghi đè kết quả kiểm tra do mình quản lí thay vì tạo chuỗi final/final2/fixed. PDF toàn sách có đường dẫn cố định sbt-vat-li-10/sbt-vat-li-10.pdf.
- Theo dõi các file tạm tự tạo trong phiên. Sau khi xem hình, xóa đúng các ảnh/log/script tạm đó. Giữ PDF kiểm tra cuối và sản phẩm người dùng cần; nếu còn file chẩn đoán cần thiết, nói rõ.
- Không xóa toàn bộ thư mục hoặc mọi file chưa theo dõi để “dọn rác”. Trước khi xóa, xác minh đường dẫn tuyệt đối thuộc vùng dự kiến và file thực sự do phiên này tạo. Trên Windows dùng PowerShell với -LiteralPath, không ghép lệnh xóa qua nhiều shell.

## Biên soạn và sửa bài Typst

- Đọc sbt-vat-li-10/gemini-gem/KIEN-THUC-VIETPHYS.md và QUY-CHUAN-CODE.md khi viết nội dung/hình. Mã hiện hành có ưu tiên hơn snapshot.
- Không áp dụng định dạng “xuất toàn bộ code trong chat” của Gemini Gem khi đang có quyền sửa workspace. Sửa trực tiếp file, rồi trả liên kết và tóm tắt.
- File bài import cấu hình hiện có; giữ API, CeTZ 0.3.3 và cơ chế phân trang. Không tự thêm một wrapper riêng cho từng bài: đã có kiem-tra-bai.py và kiem-tra-bai.typ dùng chung.
- Khi chỉ sửa một bài đã include, không sửa main.typ, chuong.typ, cau-hinh.typ hoặc thư viện nếu không có nguyên nhân liên quan được xác định.
- Mỗi câu là một vp-question độc lập. Giữ khóa và lời giải trong nguồn, ẩn trên bản học sinh. Không bỏ câu hoặc bỏ lời giải để qua compiler.
- Tính độc lập dữ kiện, đơn vị, dấu, làm tròn và khóa. Mọi sửa đổi mô hình có ý nghĩa phải ghi trong nhật kí hiệu đính của bài. Không tự bịa dữ kiện hoặc nguồn.
- Hình đề chỉ chứa dữ kiện; hình giải đặt trong sol. Chọn đồ thị đúng phải có đủ các phương án.

## Kiểm chứng và kết thúc

- Với bài NN, chạy từ gốc: python sbt-vat-li-10/gemini-gem/kiem-tra-bai.py NN --book
- Xem bản học sinh và giáo viên ở các trang bị ảnh hưởng: công thức, ô đáp án, bảng, nhãn hình và ngắt trang. Compiler qua không chứng minh vật lí đúng.
- Với thay đổi thư viện/script, chạy kiểm tra phù hợp. Không tạo kiểm thử chỉ để sao chép lại triển khai; không chạy lại kiểm tra lớn khi không có thay đổi hay nghi vấn mới.
- Không sửa assertion/khóa kỳ vọng chỉ để kiểm tra xanh. Tìm nguyên nhân trước.
- Trước khi kết thúc: rà lại những file mình đã đổi, loại thay đổi ngoài phạm vi và dọn file tạm của mình. Với file có sửa đổi từ trước, chỉ hoàn tác phần của mình.
- Báo ngắn: đã sửa gì, file nào, đã kiểm tra bằng gì, phần nào chưa xác minh. Không nói đã build/xem PDF nếu chưa thực hiện.
- Không tự sửa quy tắc này để hợp thức hóa việc mở rộng phạm vi.

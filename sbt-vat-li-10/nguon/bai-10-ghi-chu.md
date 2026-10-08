# Nhật kí rà soát Bài 10 — Định luật 2 Newton

## Phạm vi và nguồn đối chiếu

Đầu vào rà soát là phản hồi của Gemini Gem và các file người dùng đã dán vào dự án. Phản hồi đó được giữ nguyên tại [bai-10-gem-ban-dau.txt](bai-10-gem-ban-dau.txt). Chưa có tệp đề gốc trước khi đưa vào Gem trong lần rà soát này, nên không thể xác nhận những lời quy lỗi cho “nguồn gốc” trong ghi chú cũ.

Bản hiện hành có 35 câu: 20 A–D, 5 đúng/sai, 5 trả lời ngắn, 5 tự luận. Đáp án/lời giải lưu trong mã và ẩn trên bản học sinh. Các hiệu đính dưới đây bao gồm thay đổi nội dung vật lí, không chỉ sửa cú pháp; đặc biệt cần đối chiếu với ý định của đề gốc khi có lại nguồn ở tự luận 1, 4, 5.

## Lỗi code và hình

| Vị trí | Nguyên nhân | Cách sửa |
| --- | --- | --- |
| Lời giải MCQ 5, 6 | Ba chỗ dùng `frac(tử)(mẫu)` gây `missing argument: denom` | Dùng `frac(tử, mẫu)`; rà cả lời giải ẩn. |
| Phát biểu TF 2 | Hai chỗ dùng `proportional` chưa định nghĩa | Dùng ký hiệu `∝`. |
| Hình dốc tự luận 3 | `let alpha` và `let h` che nhãn toán cùng tên | Đổi biến tính hình thành `slope-angle`, `height`; giữ nhãn α và h. |
| Hình dốc tự luận 3 | Vật chưa áp sát mặt dốc, góc được nối bằng đoạn thẳng | Đặt vật theo tọa độ dọc/pháp tuyến mặt dốc; vẽ cung góc bằng các điểm trên cung. |
| Một số công thức | Dấu phẩy thập phân chưa được đặt trong chuỗi | Viết `"3,6"`, `"17683,95"` trong math; không đổi dấu phân cách đối số. |

Module CeTZ giữ phiên bản 0.3.3, gồm bốn hình: đồ thị MCQ 13, đồ thị TF 4, hệ Atwood tự luận 2 và mặt dốc tự luận 3. Đã bỏ hàm phụ không sử dụng. Không cần sửa API vietphys để xử lí các lỗi này.

## Hiệu đính nội dung

- **MCQ 2:** nêu rõ vật đang trượt, chiều dương và điều kiện còn tiếp xúc mặt đường; lực kéo chếch lên làm giảm phản lực.
- **MCQ 5:** dùng hệ số góc theo giá trị trên trục `Δa/ΔF = 1/m`. Không đồng nhất trực tiếp với tan của góc hình học trên trang, vì tỉ lệ vẽ hai trục ảnh hưởng góc này.
- **MCQ 9, SHORT 5:** bổ sung giả thiết bỏ qua xung lượng các lực khác để dùng biến thiên động lượng tính lực va chạm cần hỏi.
- **MCQ 11:** nêu dây nhẹ không giãn, ròng rọc nhẹ không ma sát; lực căng kéo xe khác trọng lượng quả treo.
- **MCQ 15:** giọt nước thả từ nghỉ, lực cản thành phần −kv. Gia tốc tiến tới 0 và tốc độ tiệm cận giới hạn, không đạt chính xác giới hạn sau thời gian hữu hạn trong mô hình này.
- **MCQ 16:** bỏ lực cản của rơ-móc; đầu xe vẫn có lực bám. Không mô tả xe tự tăng tốc trên đường hoàn toàn không ma sát.
- **MCQ 17:** nêu rõ dùng sin 10° ≈ 0,1736 khi tính để đáp án 5104 N khớp mức xấp xỉ đã cho.
- **MCQ 18:** chuyển thành mô hình va chạm một chiều; hỏi độ lớn gia tốc hãm trung bình. Bỏ suy diễn về chấn thương từ một giá trị gia tốc đơn lẻ.
- **MCQ 20:** nêu chiều dương theo chiều chuyển động để đáp án gia tốc âm có nghĩa xác định.
- **TF 1:** bỏ tên xe thương mại; xét các tình huống độc lập. Kéo chếch lên là lực ngoài, không phải lực nội của người lái; chuyển động thẳng với tốc độ không đổi mới cho hợp lực bằng không trong tình huống d).
- **TF 2:** sửa khóa thành **S–S–Đ–S**. Thay quả treo trong khi giữ khối lượng xe cố định làm thay đổi tổng khối lượng. Với toàn hệ: `a = m_treo g/(M + m_treo)`. Không giữ khóa sai với lí do “quy ước phổ biến trong SGK”.
- **TF 5:** phân biệt lực/gia tốc trung bình với giá trị tức thời, so sánh khi cùng biến thiên động lượng/vận tốc; bỏ từ tiếng Anh thừa.
- **SHORT 1:** tính trực tiếp từ 100 km/h, không làm tròn tốc độ ở bước giữa: F = 17683,9506… N, điền **17684**, dùng 5 ô. Không xác nhận các con số mà Gem đã gán cho nguồn chưa được cung cấp.
- **SHORT 2:** xác định vật đang trượt; N ≈ 31,6795 N, a ≈ 1,36641 m/s², điền **1,37**.
- **SHORT 4:** nêu đường ngang, bỏ qua lực cản không khí để dùng mô hình lực ma sát trượt.
- **Tự luận 1 — hiệu đính mô hình:** thay tình huống nhập nhằng giữa lực bám lốp và lực cản bằng xe được kéo ngoài, có lực cản hiệu dụng F_c = μmg; bổ sung g = 9,8 m/s². Giữ các số liệu m = 2600 kg, 0–100 km/h trong 5 s, μ = 0,05 và 0,15. Kết quả tương ứng **15718,44 N** và **18266,44 N**. Hai hệ số cản này chưa đủ suy ra khả năng bám/phanh xe thực.
- **Tự luận 3:** nêu vật bắt đầu trượt và mô hình đoạn nối không làm mất tốc độ; sửa phân số chiều dài dốc. Kết quả khoảng a₁ = 4,051 m/s², v_B = 9,00 m/s, a₂ = −1,96 m/s², s₂ = 20,67 m.
- **Tự luận 4 — hiệu đính yêu cầu:** giữ số liệu nhưng đổi câu hỏi để nhận diện thiếu dữ kiện. Thời gian trung bình **0,8212 s**, độ lệch tuyệt đối trung bình **0,00184 s**. Chưa biết vận tốc tại A nên không suy ra gia tốc thực nghiệm bằng 2s/t². Giá trị giả định từ nghỉ a* ≈ 1,483 m/s²; gia tốc lí tưởng a_lt ≈ 0,891 m/s². Với gia tốc lí tưởng, vận tốc tại A khoảng **0,243 m/s** cũng giải thích được thời gian đo; không đủ cơ sở kết luận ray nghiêng. Không tự thêm sai số khoảng cách 0,001 m hay báo sai số tổng cộng chưa có căn cứ.
- **Tự luận 5 — làm rõ phạm vi công thức:** F_ngoại = dp/dt xét hệ vật chất xác định. Tên lửa riêng là hệ trao đổi khối lượng; cho rõ công thức lực đẩy, tốc độ mất khối lượng dương và các hiệu ứng bỏ qua. Kết quả lực đẩy **1,0 MN**, gia tốc ban đầu **0,20 m/s²**.

## Khóa đáp án sau hiệu đính

- A–D, câu 1–20: **B B B C B C C A B B B B B B B B A A A A**.
- Đúng/sai: **ĐĐSĐ; SSĐS; ĐĐĐS; ĐĐĐĐ; ĐĐĐS**.
- Trả lời ngắn: **17684; 1,37; 20; 0,5; 500**.

## Kiểm tra và dùng lại cho Gem

Các file hỗ trợ nằm trong `../gemini-gem/`:

- `BO-SUNG-TU-BAI-10.md`: lỗi đã gặp, ví dụ đúng/sai và quy tắc rà nội dung.
- `PROMPT-GEM.md`, `HUONG-DAN.md`: Instructions và cách cập nhật Knowledge cho Gem.
- `kiem-tra-code-gem.py`: dò các mẫu lỗi cụ thể; không thay thế parser/compiler.
- `kiem-tra-bai-10.typ`: wrapper kiểm tra đủ 35 câu, phân bố loại, lời giải, khóa đã sửa và chế độ ẩn/hiện.

Đã kiểm tra ngày 2026-10-07 bằng Typst 0.15.1 và CeTZ 0.3.3:

- Script kiểm tra tĩnh: 10 kiểm tra nội bộ đạt; hai file Typst hiện hành không có lỗi/cảnh báo thuộc các mẫu đang dò. Chạy trên các khối Typst của phản hồi Gem ban đầu phát hiện đủ 5 lỗi biên dịch đã nêu (3 phân số, 2 ký hiệu).
- Wrapper Bài 10 biên dịch thành công ở cả chế độ học sinh và giáo viên, các assertion đều đạt. Bản học sinh 12 trang, bản giáo viên 16 trang; đã xem các trang chứa bốn hình CeTZ, bảng đúng/sai và lời giải tự luận có hiệu đính.
- Đã biên dịch lại toàn sách từ `main.typ` thành `sbt-vat-li-10.pdf`, không có lỗi hoặc cảnh báo từ trình biên dịch.
- Bản lưu phản hồi Gem khớp từng byte với tệp đính kèm. Khóa 20 MCQ và các ID câu liên tiếp đã được đối chiếu với mã hiện hành.

Việc không còn lỗi biên dịch không chứng minh đề nguồn ban đầu không có lỗi hoặc mọi phát biểu vật lí tự động đúng. Cần đối chiếu lại nguồn ban đầu khi có nguồn đó, nhất là các yêu cầu tự luận đã được hiệu đính.

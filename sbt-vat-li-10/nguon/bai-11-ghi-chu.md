# Nhật kí rà soát Bài 11 — Định luật 3 Newton

Rà soát ngày 2026-10-07 trên ba file đã được nhập vào dự án. Bản trước sửa được lưu ở [bai-11-truoc-ra-soat.md](bai-11-truoc-ra-soat.md). Chưa có đề nguồn trước khi qua Gem để đối chiếu, nên ghi chú này chỉ kết luận về nội dung trong các file được cung cấp, không gán lỗi cho một nguồn chưa đọc.

Bài vẫn đủ **35 câu: 20 A–D, 5 đúng/sai, 5 trả lời ngắn, 5 tự luận**. Đề, khóa và lời giải được sửa đồng bộ. Một số mô hình được hiệu đính như mô tả dưới đây; không chỉ thay cú pháp.

## 1. Lỗi biên dịch và hình CeTZ

Lỗi `missing argument: body` xuất phát từ hai dòng:

```typst
content((3.3, 1.5), [$F_A$], text(fill: blue))
content((3.3, -1.5), [$F_B$], text(fill: orange))
```

`text(fill: blue)` thiếu nội dung; đây không phải cách truyền màu cho đối số thứ ba của `content`. Đã sửa thành:

```typst
content((3.3, 1.5), text(fill: blue)[$F_A$])
content((3.3, -1.5), text(fill: orange)[$F_B$])
```

Sau đó cập nhật module hình:

- Sơ đồ xe–rơ-móc dùng các điểm đặt lực tách riêng, nhãn không chồng lên tên xe; lực bám, lực cản, lực căng và lực pháp tuyến khớp mô hình trong đề.
- Bổ sung đồ thị kéo biến thiên, bên cạnh đồ thị va chạm, để đáp ứng đủ hai yêu cầu tự luận 4. Đây là đồ thị định tính lí tưởng, không phải số liệu đo. Va chạm chỉ có lực trong một khoảng tiếp xúc hữu hạn.
- Hình Atwood có dây ôm ròng rọc. Đường bao ròng rọc được lấy mẫu để bỏ nét chéo thừa quan sát thấy khi render hình cũ.
- Sơ đồ lực ròng rọc dùng Q₁, Q₂ cho lực dây kéo ròng rọc, R cho lực trục đỡ ròng rọc. Không dùng T′₁, T′₂ gây nhầm với lực vật kéo dây. T₁ > P₁ và T₂ < P₂ phù hợp chiều gia tốc.

Có **5 ID hình**: `xe-romoc-fbd`, `do-thi-keo`, `do-thi-va-cham`, `rong-roc`, `rong-roc-fbd`. Chỉ hình hệ Atwood xuất hiện trong đề; bốn hình còn lại thuộc lời giải, được ẩn trên bản học sinh.

## 2. Hiệu đính trắc nghiệm khách quan

| Câu | Kết quả rà soát/hiệu đính |
| --- | --- |
| 1 | Phản lực của trọng lực là lực xe hút Trái Đất; bỏ khẳng định không cần thiết về điểm đặt chính xác tại tâm Trái Đất. |
| 2 | Sửa lời giải: lực xe kéo ngựa không thuộc hợp lực tác dụng lên xe; tránh nói lực ấy “chỉ ảnh hưởng” đến ngựa trong một hệ liên kết. |
| 3 | Đặt dấu phẩy thập phân trong chuỗi Typst; bỏ tên xe thương mại, thêm mô hình va chạm một chiều và bỏ ngoại lực theo phương xét. So sánh độ lớn gia tốc cùng thời điểm, khi lực khác 0. |
| 4 | **Thay mô hình khí thuốc bằng bệ phóng–lò xo nhẹ**, giữ khối lượng 1000 kg và 5 kg cùng mục tiêu so sánh lực/gia tốc. Bản cũ đồng nhất lực khí tác dụng lên đạn với phản lực của đạn tác dụng trực tiếp lên súng. Bản mới xét rõ hai tiếp xúc qua lò xo nhẹ; không gọi hai lực lên bệ và vật là một cặp tiếp xúc trực tiếp. |
| 5 | Nêu trạng thái cân bằng của hai lực kế; số chỉ đều 50 N. |
| 6 | Dùng mô hình động cơ đẩy khí, khí đẩy động cơ; bỏ tên máy bay và mô tả cấu tạo không cần thiết. |
| 7 | Làm rõ phương án nhiễu A để không nhầm lực tác dụng lên thành bể với lực trực tiếp tác dụng lên vận động viên. |
| 8 | Kiểm tra lại: lực hấp dẫn 1,96 N; gia tốc Trái Đất do riêng lực này khoảng 3,27 × 10⁻²⁵ m/s². |
| 9 | Khóa C phù hợp tính đồng thời và độ lớn bằng nhau của cặp lực–phản lực; vận tốc bằng 0 tại một thời điểm không suy ra hợp lực bằng 0. |
| 10 | Giữ nguyên bản chất chèo thuyền; rút gọn địa danh. |
| 11 | Chỉ xét khoảng chân còn tiếp xúc cân và gia tốc khối tâm hướng lên. Cân đo lực, đáp ứng tức thời; N > mg. Không đồng nhất toàn bộ quá trình nhún/bật nhảy với một giai đoạn gia tốc. |
| 12 | Lực căng 300 N, không cộng hai lực đầu dây thành 600 N. |
| 13 | Bỏ tên vệ tinh và bối cảnh cụ thể; tên lửa trong chân không tăng tốc do phản lực dòng khí khi bỏ ngoại lực khác. |
| 14 | Dùng “lực tương tác” khi tàu phanh, tránh áp đặt móc nối phải luôn truyền lực kéo thay vì lực nén. |
| 15 | Chỉ rõ giai đoạn đạp chân ra sau và không trượt; lực ma sát nghỉ của đường tác dụng lên người hướng về trước. |
| 16 | Sửa B thành không cân bằng **trên từng vật riêng lẻ**. Bản cũ “không bao giờ triệt tiêu” mâu thuẫn với việc nội lực triệt tiêu khi xét toàn hệ. |
| 17 | Phương án đúng mô tả lực khí thuốc lên đáy nòng; bỏ cách gọi đầu đạn tác dụng trực tiếp lên đáy nòng. |
| 18 | Giữ hai khối lượng và gia tốc 50 m/s², xét tại cùng một thời điểm. Bỏ vận tốc/thời gian va chạm không cần thiết của bản cũ: nếu dùng chúng để suy vận tốc sau va chạm hoàn tất thì hai vật vẫn đang tiến lại gần nhau. Kết quả 100 m/s². |
| 19 | Tỉ số lực là 1; bỏ địa danh, giữ kết quả. |
| 20 | **Sửa B: “lực đẩy của nam châm” → “lực hút của nam châm”** để B là cặp lực–phản lực đúng. Bản cũ khiến cả B lẫn C đều có vấn đề trong câu hỏi chọn cặp KHÔNG phải lực–phản lực. Khóa duy nhất sau sửa là C. |

## 3. Đúng/sai và trả lời ngắn

- **TF 1:** dây nhẹ, không giãn; lực hai đầu có cùng độ lớn 1200 N. Phân biệt lực xe–dây và rơ-móc–dây. Thay khẳng định dây đứt “lập tức” bằng trạng thái dây đã mất căng, tránh hàm ý truyền tín hiệu tức thời trong dây thật. Khóa **Đ–S–Đ–S**.
- **TF 2:** phân biệt số liệu cảm biến thực với lực tương tác lí tưởng; nêu cùng chiều dương và đồng bộ thời gian. Ý a) “dữ liệu thực luôn chính xác tuyệt đối” là **Sai**. Ý d) xét lí tưởng. Khóa đổi từ **Đ–S–Đ–Đ** thành **S–S–Đ–Đ**.
- **TF 3:** giới hạn phát biểu trong cơ học Newton; bỏ khẳng định quá rộng cho mọi tương tác tự nhiên. Khóa **Đ–S–Đ–S**.
- **TF 4:** bỏ qua xung lượng các lực khác, dùng lực **trung bình trên cùng khoảng thời gian**. Kết quả 540 N không cho lực tức thời luôn bằng 540 N. Thay ý c) về chân chắc chắn bị khựng/hãm bằng quan hệ ngược chiều giữa hai lực; cơ thể còn có các lực khác. Khóa **Đ–Đ–Đ–S**.
- **TF 5:** nêu hệ xét, ngoại lực và trạng thái ban đầu đứng yên để kết luận hai phần sau tách chuyển động ngược chiều. Thay mô tả mực ống nhập nhằng trước/sau bằng mô hình vật phun nước; không sửa phát biểu chỉ để ép khớp khóa. Khóa **Đ–Đ–Đ–S**.
- **SHORT 1:** so sánh gia tốc hai bi tại cùng thời điểm; kết quả **36 m/s²**.
- **SHORT 2:** hỏi rõ lực **trung bình** lên hàng rào trong cùng khoảng, kết quả **140 kN**.
- **SHORT 3:** bổ sung hệ cân bằng, bỏ trọng lượng lực kế; kết quả **35 N**.
- **SHORT 4:** **hiệu đính dữ kiện**: 2000 N là lực trung bình khí tác dụng lên súng theo chiều lùi; bỏ các lực khác theo phương này. Không tự suy lực lên súng từ lực lên đạn khi chưa mô hình hóa khí. Hỏi gia tốc **trung bình**, không phải tức thời; kết quả **500 m/s²**.
- **SHORT 5:** dùng cân đo lực trên sàn đứng yên, hỏi gia tốc khối tâm người, bỏ bối cảnh thang máy chưa xác định hệ quy chiếu. Kết quả **4,9 m/s²**.

## 4. Tự luận

1. **Xe–rơ-móc:** bổ sung mô hình lực cản, đủ cặp lực ngang và pháp tuyến với đường, phân biệt các tiếp xúc với dây. Phương trình: F_b − T = Ma; T − F_c = ma; toàn hệ có (M + m)a = F_b − F_c. Sơ đồ lực và lời giải khớp nhau.
2. **Va chạm hai xe:** thêm giả thiết bỏ ngoại lực theo phương va chạm. Tỉ số độ lớn gia tốc khối tâm bằng **20**. Thay yêu cầu giải thích hành khách “luôn” có nguy cơ tử vong cao hơn bằng câu hỏi về **giới hạn kết luận**; dữ kiện không đủ suy ra mức độ chấn thương cá nhân.
3. **Tên lửa:** bổ sung bỏ lực cản và hiệu ứng chênh áp miệng phụt. Thiết lập động lượng cho hệ tên lửa + phần khí, **có xung lượng trọng lực**, không bảo toàn động lượng của riêng tên lửa. Lực đẩy **300 kN**, gia tốc ban đầu **5,2 m/s²**.
4. **Cảm biến:** thêm hiệu chuẩn, điểm không, cùng chiều dương và đồng bộ; minh họa đủ kéo và va chạm. Đồ thị đối xứng là mô hình lí tưởng, dạng xung không được xác định chỉ bởi định luật 3 Newton. Nêu hai nhóm nguyên nhân có thể gây lệch và cách kiểm tra; bỏ ngưỡng “5 ms” và lời kết luận chắc chắn về cấu tạo cảm biến khi không có thông tin thiết bị.
5. **Atwood:** thêm dây luôn căng, hai nhánh đứng, thả từ nghỉ. Phân biệt lực dây lên vật với lực dây lên ròng rọc; lực trục đỡ ròng rọc hướng lên, phản lực ròng rọc lên trục hướng xuống. Kết quả **a = 1,96 m/s²; T = 47,04 N; lực lên trục = 94,08 N**.

## 5. Khóa và kiểm tra

- A–D: **C B C B C B B C C B B B B C B C B C A C**.
- Đúng/sai: **ĐSĐS; SSĐĐ; ĐSĐS; ĐĐĐS; ĐĐĐS**.
- Trả lời ngắn: **36; 140; 35; 500; 4,9**.

Wrapper `gemini-gem/kiem-tra-bai-11.typ` kiểm tra tổng câu, khóa MCQ/TF/short, đủ lời giải và trạng thái ẩn/hiện. Có thể dùng `--input teacher=true` để biên dịch bản giáo viên riêng mà không thay cấu hình sách.

Script `kiem-tra-code-gem.py` đã bổ sung trường hợp `text` thiếu body; cập nhật `PROMPT-GEM.md`, `BO-SUNG-TU-BAI-10.md` và `HUONG-DAN.md` để Gem biết lỗi này. Việc sửa file trên máy không tự cập nhật Instructions/Knowledge đã tải lên Gem.

Kết quả kiểm tra cuối ngày 2026-10-07:

- Typst biên dịch thành công wrapper ở cả chế độ học sinh (**13 trang**) và giáo viên (**18 trang**); mọi assertion đều đạt. Đã xem các trang có bảng đúng/sai, ô trả lời, năm hình CeTZ và lời giải tự luận.
- Đã biên dịch lại `main.typ` thành `sbt-vat-li-10.pdf`, không có lỗi/cảnh báo từ trình biên dịch. Bản sách vẫn ẩn đáp án và lời giải.
- Script kiểm tra tĩnh đạt **13 kiểm tra nội bộ**, không còn lỗi/cảnh báo thuộc mẫu đang dò trong hai file Bài 11. Chạy trên bản lưu trước sửa phát hiện đúng hai lời gọi `text` thiếu body.
- Đã đối chiếu thứ tự đủ các ID câu và đủ 5 ID hình được gọi/định nghĩa; **12 phép kiểm tra số học độc lập** cho các kết quả trọng yếu đều đạt.

Các kiểm tra tự động bảo vệ cấu trúc/khóa đã rà, không thay thế việc đọc và giải bài. Các hiệu đính mô hình được ghi rõ ở trên để đối chiếu khi có lại nguồn ban đầu.

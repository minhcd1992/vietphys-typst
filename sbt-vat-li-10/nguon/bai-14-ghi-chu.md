# Nhật kí rà soát Bài 14 — Lực cản và lực nâng

Ngày rà soát: **2026-10-08**. Đối chiếu [nguồn người dùng](bai-14-goc.txt) với code đã dán từ Gem. Nguồn được lưu nguyên byte; [bản code và ghi chú trước sửa](bai-14-truoc-ra-soat.md) được lưu riêng để đối chiếu.

[Bài hiện hành](../chuong-02-dong-luc-hoc/bai-14.typ) vẫn đủ **35 câu: 20 A–D, 5 đúng/sai, 5 ngắn, 5 tự luận**. Đáp án và lời giải ẩn trên bản học sinh. Không sửa cấu hình hoặc thư viện chung.

## 1. Nguyên nhân lỗi

- Compiler dừng đầu tiên ở `propto`: đây không phải tên đã định nghĩa trong môi trường Typst của bài. Thay bằng kí hiệu Unicode **∝**.
- Còn `\overline{v}` và ngoặc kiểu LaTeX; sửa thành `overline(v)`.
- Nhiều số thập phân chưa được đặt trong chuỗi, ví dụ `56,0`, `7,0`; có trường hợp vẫn biên dịch nhưng hiển thị như dấu phân cách toán học. Dùng `"56,0"` khi hiển thị, số dấu chấm khi tính trong code.
- Đơn vị trong câu TF-04 có dấu nháy và ngoặc sai. Viết `"cm"/("s" dot "mm"^2)`.
- Phân số với tử/mẫu nhiều thành phần phải dùng `frac(..., ...)`, chẳng hạn `frac(Delta p, Delta t)`; phép chia gõ tắt có thể chạy nhưng nhóm sai biểu thức.
- Ghi chú cũ tuyên bố tuân thủ đầy đủ cú pháp trong khi file chưa qua biên dịch, và ghi lực chân vịt “hướng xuống” trái với chính lời giải. Đã thay bằng ghi nhận kiểm tra thực tế.

Bộ dò là kiểm tra một số mẫu, không phải parser Typst; một lỗi dấu nháy còn có thể ảnh hưởng việc dò phía sau. Compiler và xem render vẫn là bước quyết định.

## 2. Hiệu đính trắc nghiệm

| Câu | Điều chỉnh chính |
| --- | --- |
| 1, 4 | Nêu mô hình cản áp dụng trong toàn miền xét, không khí đứng yên, bỏ lực nổi; rơi có cản không gọi là rơi tự do. D có đơn vị kg/m, không phải hệ số C_d không thứ nguyên. |
| 2–3, 5 | Bỏ thương hiệu/tên cơ quan không cần thiết. Lực nâng qua phân bố áp suất và qua đổi động lượng dòng là hai cách mô tả cùng tương tác, không cộng như hai lực riêng. |
| 6 | Đổi “thả chìm” thành **treo đứng yên**, chìm hoàn toàn và không chạm đáy. Khi đó F_A = 19,6 N; lực căng 29,4 N. |
| 7 | Không suy ra hệ số cản chỉ từ “nhẵn” hay “xù xì”. Thay mô tả mâu thuẫn “quả cầu phẳng phía trước” bằng hai vật có cùng m và **cho rõ D_A < D_B**, không đổi trong mô hình. |
| 8 | Nêu rõ mô hình hệ số cản đổi tức thời. Vận tốc chưa đổi ngay, gia tốc hướng lên. Không coi gia tốc lí tưởng rất lớn là diễn biến thực của dù. |
| 9–10 | Làm rõ lực xét khi lơ lửng; rút gọn tình huống người bơi, bỏ mô tả ngoại hình/trang phục không cần thiết. |
| 11, 20 | Trước sửa, hình đề chính là đường đáp án. Nay **mỗi câu có đủ bốn đồ thị lựa chọn**; đồ thị giải riêng nằm trong sol. Câu 20 bổ sung thả từ nghỉ và chiều dương xuống. |
| 13 | So sánh **lực ép lên cảm biến** giữa không khí và chân không, không đánh đồng với mọi số chỉ khối lượng của cân phân tích vốn còn phụ thuộc hiệu chuẩn/bù lực nổi. |
| 14 | Giữ lực nổi, giả thiết hai bi cùng vật liệu, cùng dầu và cùng miền Stokes; v tới hạn tỉ lệ r², tăng đường kính hai lần cho tốc độ bốn lần. |
| 15–17 | Sửa diễn đạt lực nâng; vận tốc trong công thức cản là tương đối với không khí. Phân biệt áp suất tĩnh bề mặt với áp suất động khi giải thích bóng xoáy. |
| 18 | **P = 7840 N, F_A = 7031,5 N, lực chân vịt 808,5 N hướng lên.** Muốn đi xuống đều cần tổng lực bằng 0; không vì vận tốc xuống mà lực chân vịt phải xuống. |
| 19 | Nổi cân bằng cho F_A **bằng** trọng lượng, không mô tả lớn hơn hoặc bằng như điều kiện cân bằng. |

Khóa MCQ: **B A A A B A B C B B B A B B A C A A B B**.

## 3. Đúng/sai và trả lời ngắn

- TF-01: **Đ Đ Đ S**; hệ gồm người và toàn bộ trang bị, bỏ lực nổi. Các tốc độ tới hạn 56,0 và 6,26 m/s.
- TF-02: **S Đ Đ S**; mô hình thể tích chiếm chỗ không đổi, chất lỏng có khối lượng riêng không đổi, chỉ điều chỉnh lượng nước khoang dằn. Không khẳng định là mô tả đầy đủ một loại tàu thực.
- TF-03: **Đ S S Đ**, sửa ý b từ Đ sang S. Lực cản ngược chuyển động tương đối với không khí; gió từ sau nhanh hơn xe là phản ví dụ cho “luôn ngược chiều xe so với đất”.
- TF-04: **S Đ Đ S**, sửa ý d. Bảng lí tưởng hóa cho v/r² = 2,5 cm/(s·mm²), tương đương 25000 m⁻¹s⁻¹, **phù hợp** hệ quả Stokes nhưng không chứng minh định luật đúng trong mọi điều kiện.
- TF-05: **S Đ Đ S**, sửa ý a thành phát biểu sai về điều kiện mặt trên cong hơn. Đề nêu rõ giả thiết Bernoulli; góc tấn và trường dòng cũng ảnh hưởng, không bắt buộc cánh phải có một dạng bất đối xứng duy nhất.
- Khóa ngắn: **0,49; 1,5; 735; 1205,4; 378**. Câu ngắn 4 cần 6 ô; ghi chú cũ ghi nhầm là “Tự luận 4”. Câu 3 dùng tổng khối lượng và tổng lực cản hệ người–dù.

## 4. Tự luận

1. Giữ m = 0,50 g, h = 1000 m, D = 2,5×10⁻⁵ kg/m. Kết quả: bỏ cản v = 140 m/s và K = 4,9 J; tốc độ tới hạn 14 m/s; công cản xấp xỉ −4,851 J. Tốc độ tới hạn được tiếp cận tiệm cận, không chính xác đạt ở thời gian hữu hạn. Bỏ kết luận so sánh với đạn/đảm bảo vô hại chỉ từ tốc độ.
2. V tới hạn 7 m/s; mô hình mở tức thời cho F_c = 28800 N, a = 310,2 m/s² hướng lên. Hình lực đưa vào lời giải. Phần tiếp đất chuyển thành bài xung lượng xác định rõ lực: **N trung bình = Mg + Mv/Δt**. Không đánh đồng Δp/Δt với riêng phản lực mặt đất và không đưa hướng dẫn động tác tiếp đất.
3. Máy bay là mô hình bay thẳng đều, lực đẩy/cản nằm ngang. F nâng = 2,352×10⁶ N, C_L ≈ 0,417; giữ C_L và S thì tốc độ mới ≈ 270,6 m/s. Bỏ thông số gán cho hãng/kiểu máy bay cụ thể.
4. Đo trên đoạn đã rơi ổn định; nêu rõ quy tắc ước lượng sai số. Giữ **Δt = 0,022 s** khi tính tiếp, không làm tròn sớm thành 0,02. Theo yêu cầu hai chữ số có nghĩa cho sai số:
   - t = **(2,000 ± 0,022) s**.
   - v tới hạn = **(0,2000 ± 0,0027) m/s**.
   - η = 2r²g(ρ_bi − ρ_dầu)/(9v); muốn tính số còn cần các khối lượng riêng và g, phải kiểm tra miền Stokes/ảnh hưởng thành bình.
5. Giới hạn cua phẳng: **27,11 m/s** khi không có lực ép, **28,78 m/s** khi có lực ép. Trường hợp trần được đổi thành **trần phẳng nằm ngang, chuyển động thẳng, bỏ lực cản dọc** để phù hợp phương trình. Ngưỡng N = 0 là **80,83 m/s**, muốn có lực nén phải lớn hơn ngưỡng. Không dùng ma sát để giải thích lực giữ thẳng đứng trên trần; không kết luận xe thực có thể vận hành trên trần từ mô hình đơn giản. Hình cua và trần tách riêng, nằm trong sol.

Số dòng tự luận cuối được giảm để không dư một trang chỉ có dòng kẻ; vẫn giữ khoảng cách dòng từ cấu hình.

## 5. Hình và nguồn tham khảo

Module [bai-14-hinh.typ](../chuong-02-dong-luc-hoc/images/bai-14-hinh.typ) có **7 ID**:
- Trong đề: chon-vt, chon-at; mỗi ID gồm bốn đồ thị.
- Trong lời giải: do-thi-vt, do-thi-at, luc-du, luc-cua, luc-tran.

Tham khảo để hiệu đính lập luận: [NASA — lực nâng qua Bernoulli và Newton](https://www1.grc.nasa.gov/beginners-guide-to-aeronautics/bernoulli-and-newton/), [NASA — lực cản quả cầu và ảnh hưởng độ nhám](https://www1.grc.nasa.gov/beginners-guide-to-aeronautics/drag-of-a-sphere/). Các nguồn này giải thích vì sao không thể coi hai cách mô tả lực nâng là hai lực độc lập, hoặc mặc định bề mặt nhẵn luôn có lực cản nhỏ hơn.

## 6. Kiểm tra và hướng dẫn Gem

- Đủ 35 mã câu theo thứ tự, khóa MCQ/TF được đối chiếu; 7 ID hình có đầy đủ định nghĩa.
- Kiểm tra độc lập **23 kết quả số/làm tròn**.
- Preflight cuối: **0 lỗi, 0 cảnh báo**. Compiler hai chế độ và toàn sách chạy thành công; đã xem các trang có hình, công thức, bảng và dòng làm bài.
- Bộ preflight có **21 kiểm tra hồi quy**, bắt thêm propto, lệnh LaTeX, kí tự điều khiển và cảnh báo hàng rào Markdown.
- Công cụ kiểm tra **dùng chung theo số bài** chạy thành công trên hai bài khác nhau và mẫu phân bố 1/1/2/1, gồm câu ngắn nhiều trường. Cố tình khai sai số câu đã bị wrapper chặn.
- Hướng dẫn không còn yêu cầu học danh sách lỗi theo bài. Xem [HUONG-DAN.md](../gemini-gem/HUONG-DAN.md), [PROMPT-GEM.md](../gemini-gem/PROMPT-GEM.md), [API](../gemini-gem/KIEN-THUC-VIETPHYS.md) và [quy chuẩn chung](../gemini-gem/QUY-CHUAN-CODE.md).

Lệnh kiểm tra bài bất kỳ, thay số 14 bằng số bài cần kiểm tra:

```powershell
python sbt-vat-li-10/gemini-gem/kiem-tra-bai.py 14 --book
```

Kết quả bản riêng nằm ở `sbt-vat-li-10/.kiem-tra/bai-14/`. Compiler không chứng minh nội dung vật lí đúng; bộ dò không thay thế compiler và việc xem bản render.

# Nhật kí hiệu đính Bài 12 — Trọng lực và Lực căng

Ngày nhập và rà soát: **2026-10-08**. Nguồn người dùng được giữ nguyên từng byte tại [bai-12-goc.txt](bai-12-goc.txt). Một số đề, khóa và lời giải có lỗi vật lí nên được sửa đồng bộ; các thay đổi đáng chú ý ghi dưới đây.

- [Nội dung bài](../chuong-02-dong-luc-hoc/bai-12.typ): đủ **35 câu**, gồm 20 A–D, 5 đúng/sai, 5 trả lời ngắn và 5 tự luận. Mỗi câu là một `vp-question` độc lập.
- [Hình CeTZ](../chuong-02-dong-luc-hoc/images/bai-12-hinh.typ): 18 ID hình, dùng CeTZ 0.3.3; 15 hình dùng trong đề, 3 hình chỉ thuộc lời giải.
- Đáp án và lời giải lưu đầy đủ trong nguồn, ẩn trên bản học sinh. Giữ nguyên cấu hình trình bày chung của sách.

## Diễn đạt và quy ước

Chuyển công thức sang Typst, loại các kí tự điều khiển do LaTeX bị hỏng trong bản dán. Bỏ nhãn quảng bá, từ tiếng Anh thừa và gán nguồn sách chưa có căn cứ. Các tình huống cầu, cáp treo, thang máy được phát biểu thành mô hình có giả thiết cụ thể, không dùng kết quả mô hình làm thông số hay quy tắc thiết kế của công trình thực.

Thống nhất: **trọng lực là lực; trọng lượng là độ lớn P = mg; trọng lượng biểu kiến liên quan đến lực đỡ/lực treo**. Phân biệt gia tốc rơi tự do hiệu dụng tại địa phương với mô hình hấp dẫn của thiên thể cầu không quay.

## Trắc nghiệm A–D

| Câu | Hiệu đính/điểm kiểm tra |
| --- | --- |
| 1–2 | Sửa định nghĩa trọng lượng; làm rõ gia tốc rơi tự do tại địa phương. |
| 3 | Dây nhẹ, độ giãn không đáng kể; dây chỉ kéo, không đẩy. |
| 4–5 | Dùng lực kế chia N; thang máy đi xuống chậm dần có gia tốc lên, số chỉ 708 N. Mất trọng lượng biểu kiến không phải mất trọng lực. |
| 6–9 | Kiểm tra lần lượt T = 60 N; Atwood T = 24 N; trọng lượng 112 N; gia tốc giới hạn 2,5 m/s². |
| 10 | Sau đứt dây, quỹ đạo parabol chỉ xét trước chạm đất và khi bỏ lực cản. Hình đề không vẽ sẵn đáp án quỹ đạo. |
| 11 | Bỏ lực cản của rơ-moóc; xe kéo vẫn có lực bám cần thiết. |
| 12 | Nêu mô hình Trái Đất cầu không quay, độ cao h = R. |
| 13 | Bỏ giả thiết chuyển động tròn đều theo phương đứng chỉ dưới tác dụng trọng lực và lực căng; cho tốc độ góc tức thời ở đỉnh. T = 3 N. |
| 14 | Xét cấu hình dây võng cân bằng đã cho; không giả sử dây không giãn ban đầu căng ngang rồi tự võng. T ≈ 562 N. |
| 15 | Thanh nhẹ, khớp lí tưởng và chỉ chịu lực ở hai đầu: T = 120√2 N; thanh chịu nén 120 N. |
| 16 | Cả dây có khối lượng và vật nằm trên mặt phẳng ngang nhẵn; lực căng giữa dây bằng 45 N. |
| 17 | Xe qua đỉnh cầu lồi: lực ép có độ lớn bằng phản lực 7500 N. |
| 18–20 | Trọng tâm có thể ngoài vật. Khi hạ vật bằng cáp từ trên, T = 34 N. Con lắc thả nghỉ với góc nhỏ hơn 90° có lực căng lớn nhất ở đáy. |

Khóa 1–20: **B B D C B B A A B B B B A C A C B B B B**.

## Đúng/sai

1. **Đ Đ Đ S**. Làm rõ tổng khối lượng, tiếp xúc và vận tốc tương đối ban đầu. Sau đứt cáp, người và cabin cùng rơi tự do; không có lực tự ném người lên trần.
2. **Đ Đ Đ S**. Cabin được dẫn hướng trên đường thẳng nghiêng và kéo bằng dây riêng. Khi dây kéo đứt, gia tốc dọc dốc hướng xuống; nếu đang đi lên, cabin phải chậm dần trước khi đổi chiều.
3. **Đ Đ Đ S**. Con lắc thả ở 60°: T ban đầu = 1 N, T ở đáy = 4 N.
4. **Đ Đ S S**, sửa khóa nguồn **Đ Đ Đ S**. Dùng nhất quán M_MặtTrăng/M_TráiĐất = 1/81, R_MặtTrăng/R_TráiĐất = 1/3,7 và g_TráiĐất = 9,8 m/s². Suy ra g_MặtTrăng ≈ 1,65632 m/s²; lực nâng 600 N ứng với 362,2 kg, không phải 375,0 kg. Không thay riêng g bằng 1,6 trong phép tính này.
5. **S Đ S S**, sửa khóa nguồn **S Đ Đ Đ**. Với góc giữa hai nhánh θ, T = mg/[2 cos(θ/2)] tăng theo θ. Không thể khẳng định mọi cảm biến lực đều đo độ giãn của lò xo xoắn. Ba lực khác không cân bằng tại một điểm phải đồng phẳng; một lực bằng đối của tổng hai lực còn lại.

## Trả lời ngắn

Khóa: **30,2; 1225; 1131; 2,2; 40**.

- Câu 1 bổ sung đối xứng ba nhánh, góc phương vị cách nhau 120°, để bảo đảm các thành phần ngang triệt tiêu.
- Câu 2 nêu rõ mô hình thiên thể cầu không quay.
- Câu 3 yêu cầu làm tròn đến số nguyên theo đơn vị kN, thống nhất đáp án 1131; không coi dữ kiện mô hình là thông số cầu thực.
- Câu 5 có hình con lắc hình nón, T = 40 N.

## Tự luận

1. **Dầm treo hai cáp:** chỉ xét hai cáp đối xứng đỡ dầm. T ở 60° ≈ 282,9 kN; ở 20° ≈ **716,3 kN**, sửa 716,4 do làm tròn trung gian. Thành phần ngang gây nén dù tổng lực ngang bằng 0. Không suy ra được quy tắc cấm chung cho góc dưới 25° từ dữ kiện này; câu c và lời giải được sửa tương ứng.
2. **Thang máy:** M = 1200 kg gồm cả người; rơi tự do trước khi hãm. Vận tốc bắt đầu hãm ≈ 11,93 m/s; gia tốc hãm 5,2 m/s² hướng lên; quãng đường hãm ≈ 13,69 m; lực người 70 kg ép sàn 1050 N. Lực hãm không đổi chỉ áp dụng đến lúc dừng, không phải lực giữ cabin sau đó.
3. **Con lắc:** bổ sung miền 0° < α₀ < 90° và bỏ lực cản. T = mg(3 cos α − 2 cos α₀); góc giới hạn **77,03°** theo yêu cầu hai chữ số thập phân.
4. **Đo lực căng:** θ là góc giữa hai nhánh đối xứng, thay đổi bằng cách điều chỉnh điểm treo. Bảng T: **2,54; 2,83; 3,46; 4,90; 9,47 N**. Độ lệch trung bình so với lí thuyết là **2,04%**, không phải đánh giá đầy đủ độ không đảm bảo đo. Đồ thị và gợi ý kiểm tra nguyên nhân chỉ nằm trong lời giải.
5. **Hai ròng rọc — sửa mô hình không nhất quán trong nguồn:**
   - S = AC + CB = 2 m là phần dây giữa hai ròng rọc ở cấu hình đầu, **không phải tổng chiều dài toàn dây**. Toàn dây không giãn, nhưng phần giữa có thể thay đổi khi các vật đầu dây dịch chuyển.
   - Góc tính với phương ngang: cos θ = D/S = 0,8 nên **θ = 36,87°**, không phải 53,13°. Khối lượng mỗi vật đầu dây **m = 8,33 kg**.
   - Khi thay m = 6 kg, có cấu hình cân bằng mới nếu đủ hành trình: **θ′ = 56,44°; độ hạ C ≈ 1,206 m; phần giữa dài ≈ 2,895 m**. Mỗi đoạn thẳng đứng đầu dây ngắn đi ≈ 0,447 m. Đề đã bổ sung điều kiện dây đủ dài và không va chạm.
   - Với D > 0, điều kiện có cấu hình cân bằng hữu hạn là **m > M/2**. Không giữ S cố định để kết luận vật giữa buộc rơi đến khi chạm vật cản. Có cấu hình cân bằng không đồng nghĩa hệ tự dừng ở đó khi không có tiêu hao năng lượng.

## Hình và kiểm tra

Module hình gồm hệ dây treo, Atwood, con lắc, vật qua đỉnh vòng tròn/cầu lồi, giá đỡ, dây có khối lượng, cáp treo, con lắc hình nón, dầm hai cáp và hệ hai ròng rọc. Ba ID chỉ xuất hiện trong lời giải: `thang-may-luc`, `do-thi-luc-cang`, `hai-rong-roc-luc`.

- Đã đối chiếu bản lưu nguồn từng byte; kiểm tra đủ số câu, thứ tự mã và 18 ID hình đều có định nghĩa.
- Đã kiểm tra độc lập 31 giá trị số, điều kiện cân bằng và phép làm tròn.
- [Tệp kiểm tra tích hợp](../gemini-gem/kiem-tra-bai-12.typ) xác nhận số câu, toàn bộ khóa, sự có mặt của lời giải và trạng thái ẩn/hiện cho cả hai chế độ.
- Đã biên dịch bản học sinh, bản giáo viên và PDF toàn sách; xem trực tiếp các trang có hình, bảng và lời giải. Không có lỗi/cảnh báo biên dịch.
- Số dòng làm bài tự luận lần lượt 12, 14, 12, 14, 12; giảm phần cuối để tránh trang riêng chỉ có dòng kẻ thừa. Có thể thay tại `lines` của từng câu.

Lệnh chạy từ thư mục gốc dự án:

```powershell
typst compile sbt-vat-li-10/main.typ sbt-vat-li-10/sbt-vat-li-10.pdf --root .
typst compile sbt-vat-li-10/gemini-gem/kiem-tra-bai-12.typ bai-12-hoc-sinh.pdf --root .
typst compile sbt-vat-li-10/gemini-gem/kiem-tra-bai-12.typ bai-12-giao-vien.pdf --root . --input teacher=true
```

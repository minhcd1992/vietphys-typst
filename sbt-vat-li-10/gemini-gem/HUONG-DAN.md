# Dùng Gemini Gem để biên soạn Vietphys

Bộ hướng dẫn này dùng chung cho mọi bài. Prompt giúp giảm việc đoán API; **biên dịch thật và rà soát nội dung vẫn cần thiết**. Gem trong chat không tự đọc các file vừa thay đổi trên máy.

## Cập nhật Gem hiện tại

1. Thay toàn bộ Instructions bằng [PROMPT-GEM.md](PROMPT-GEM.md).
2. Trong Knowledge, dùng ba file:
   - [KIEN-THUC-VIETPHYS.md](KIEN-THUC-VIETPHYS.md): hợp đồng API và mã mẫu.
   - [QUY-CHUAN-CODE.md](QUY-CHUAN-CODE.md): cú pháp Typst/CeTZ, quy tắc hình và quy trình kiểm tra.
   - Chính [HUONG-DAN.md](HUONG-DAN.md): thao tác nhập/sửa và lệnh kiểm tra dùng chung.
3. Gỡ bản Knowledge cũ trùng tên, thay bằng bản mới. Không tiếp tục dùng `BO-SUNG-TU-BAI-10.md` làm tài liệu bắt buộc; nội dung cần thiết đã được tổng quát hóa. `THAM-CHIEU-BAI-08-09.md` chỉ là tư liệu phong cách tùy chọn, không phải hợp đồng API hay trạng thái sách.
4. Lưu cấu hình Gem rồi dùng một cuộc hội thoại mới để tránh tiếp tục bản code cũ trong lịch sử. Nếu giao sửa bài, đính kèm file hiện hành và toàn bộ diagnostic.

Nếu giao diện tải tệp không nhận .md, dùng bản sao .txt giữ nguyên UTF-8. Việc sửa tài liệu trên ổ đĩa không cập nhật bản đã tải lên Gem.

## Mẫu yêu cầu cho bất kỳ bài nào

Thay tất cả phần trong dấu <...> trước khi gửi:

```text
Chuyển nguồn đính kèm thành Bài <số> — <tên>, thuộc <chương>.
Thư mục: sbt-vat-li-10/<thư-mục-chương>/.
Trạng thái: <đã có file và include / bài mới chưa include>.
Tôi gửi kèm: <nguồn, file bài, module hình hiện hành nếu có>.

Dùng API trong KIEN-THUC-VIETPHYS.md và QUY-CHUAN-CODE.md.
Phân bố cần có: 20 A–D, 5 đúng/sai, 5 ngắn, 5 tự luận.
Nếu nguồn thiếu, ghi rõ; không tự bịa cho đủ số lượng.
Tính lại khóa, ghi rõ các thay đổi vật lí và giả thiết.
Dùng CeTZ 0.3.3 cho hình cần thiết; không lộ lời giải trong hình đề.
Giữ đáp án/lời giải ẩn. Không sửa cấu hình hoặc thư viện chung.
Xuất riêng từng file bài, module hình và nhật kí, đủ nội dung,
ghi rõ đường dẫn và thao tác. Tôi tự lưu bản nguồn nguyên văn.
Nếu chưa chạy Typst thực, ghi rõ chưa biên dịch.
```

Mỗi lần cập nhật chỉ cần gửi phần dự án liên quan. Khi cấu hình/API thay đổi, tải lại Knowledge tương ứng; không cần gửi toàn bộ kho bài cũ mỗi lần.

## Các file cần nhận và cách dán

| File | Vai trò |
| --- | --- |
| `<chương>/bai-NN.typ` | Các câu độc lập, đề, khóa và lời giải. |
| `<chương>/images/bai-NN-hinh.typ` | Module CeTZ nếu được import; giữ tên hiện hành nếu khác quy ước này. |
| `nguon/bai-NN-ghi-chu.md` | Lỗi nguồn, các sửa đổi và trạng thái kiểm tra. |
| `nguon/bai-NN-goc.txt` | Bản nguồn nguyên văn do bạn lưu, không phải bản Gem đã biên tập. |

Không dán hàng rào ```typst vào file .typ. Không ghép tên file hoặc phần giải thích ngoài code vào mã. Nếu Gem chia file, phải ghép đủ và đúng thứ tự trước khi thay file hiện hành. Đừng thêm lại include của bài đã có.

## Một lệnh kiểm tra cho mọi số bài

Chạy từ gốc repository. Ví dụ đang sửa bài số 14; thay số này bằng bất kỳ bài hiện có:

```powershell
python sbt-vat-li-10/gemini-gem/kiem-tra-bai.py 14 --book
```

Công cụ tự tìm `chuong-*/bai-NN.typ`, không cần sửa đường dẫn chương trong script:

1. Dò lỗi thường gặp trong file bài và các module .typ import/include trực tiếp bằng đường dẫn cố định bên trong chương.
2. Biên dịch qua [wrapper chung](kiem-tra-bai.typ), kiểm tra tổng số câu, phân bố, đánh số, khóa MCQ/TF hợp lệ, lời giải có mặt và trạng thái ẩn/hiện.
3. Xuất hai PDF tại `sbt-vat-li-10/.kiem-tra/bai-NN/hoc-sinh.pdf` và `giao-vien.pdf`.
4. Nếu có `--book`, biên dịch sách vào `sbt-vat-li-10/sbt-vat-li-10.pdf`.

Không có `--book` thì chỉ kiểm tra bài riêng. Phân bố khác mặc định có thể truyền, theo thứ tự MCQ TF SHORT ESSAY:

```powershell
python sbt-vat-li-10/gemini-gem/kiem-tra-bai.py 14 --counts 20 5 5 5
```

Script dừng khi có ERROR hoặc compiler lỗi. WARN phải được đọc và xử lí: ví dụ `frac(1,2)` có thể là dấu ngăn đối số hợp lệ, còn `$1,2$` thường là số viết sai định dạng. Không sửa hàng loạt mọi dấu phẩy. Import động hoặc phụ thuộc ngoài chương vẫn do Typst kiểm tra; bộ dò không phải parser đầy đủ.

**PASS chỉ xác nhận kiểm tra cấu trúc và biên dịch.** Store của gói không lưu options/short-boxes/short-fields, nên vẫn phải kiểm tra đúng bốn lựa chọn, đủ ô và dữ liệu nhiều trường bằng đọc code/xem bản giáo viên. Không dùng script để chứng minh khóa đúng về vật lí.

## Khi còn báo lỗi

Gửi Gem thông tin sau trong cùng một lần:

```text
Đây là file hiện hành và nguyên diagnostic từ compiler.
Hãy xác định lỗi đầu tiên trong chuỗi gọi hàm, đối chiếu API đã cung cấp.
Sửa nguyên nhân và rà toàn file cho cùng lớp lỗi, kể cả sol và module hình.
Không đoán tên hàm thay thế. Không thay câu khác hoặc xóa câu để hết lỗi.
Xuất từng file hoàn chỉnh, hoặc đoạn cũ duy nhất → đoạn mới đầy đủ.
Nói rõ đã chạy compiler hay mới rà tĩnh.
```

Sau khi compiler qua, mở cả hai PDF: xem số câu, bảng, phân số, nhãn hình, chiều lực, đơn vị trục, ngắt trang và việc ẩn đáp án. Tính lại các kết quả nhạy cảm bằng máy tính/bảng tính độc lập, không lấy chính lời giải Gem làm bằng chứng duy nhất.

## Kiểm tra bộ hướng dẫn và giới hạn

- Mẫu kỹ thuật `mau-bai.typ` chứa 5 câu để minh họa API, không phải mẫu 35 câu hoàn chỉnh.
- `kiem-tra-mau.typ` kiểm tra mẫu đó ở hai chế độ.
- `kiem-tra-cu-phap.typ` chứa các công thức và mẫu CeTZ tối thiểu.
- `kiem-tra-code-gem.py --self-test` chạy các kiểm tra hồi quy cho bộ dò.

Các tài liệu được đối chiếu với Typst 0.15.1 và CeTZ 0.3.3 của dự án. Khi nâng phiên bản, cần chạy lại mẫu và kiểm tra bài thực. Không prompt nào bảo đảm Gem luôn sinh code đúng; quy trình này giúp phát hiện lỗi trước khi dùng bản xuất cuối.

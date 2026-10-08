# Quy chuẩn chung cho mã Vietphys do Gem sinh

Áp dụng cho mọi bài. Đây là tập cú pháp và quy trình kiểm tra, không phải danh sách lỗi theo số bài. Đối chiếu API ở KIEN-THUC-VIETPHYS.md; file hiện hành người dùng gửi có ưu tiên hơn snapshot.

## 1. Ba ngữ cảnh Typst

| Ngữ cảnh | Cách viết |
| --- | --- |
| Markup | Văn bản thường, gọi hàm bằng `#`, content trong `[...]`. |
| Math | `$...$` nội dòng; `$ ... $` hiển thị riêng. Không chép lệnh LaTeX. |
| Code | Trong `{...}`, lời gọi và số thật theo Typst; không thêm `#` tùy ý. |

Số thập phân **hiển thị** dùng chuỗi có dấu phẩy; số để **tính trong code** dùng dấu chấm. Không thay mọi dấu phẩy bằng dấu chấm: dấu phẩy còn phân tách đối số và tuple.

## 2. Bảng cú pháp đã kiểm chứng

| Ý định | Typst |
| --- | --- |
| Số và đơn vị | `$"9,8" thin "m/s"^2$` |
| Phân số | `$frac(F - f, m)$` |
| Trung bình | `$overline(v)$`, không `\overline{v}` |
| Vectơ | `$bold(F)$` |
| Tỉ lệ thuận | `$F ∝ v^2$`, không tên chưa định nghĩa `propto`/`proportional` |
| Sai số | `$("2,000" plus.minus "0,022") thin "s"$` |
| Căn | `$sqrt(frac(m g, D))$` |
| Chỉ số chữ | `$F_("cản")$` |
| Lượng giác | `$frac(sin(30 degree) - a/g, cos(30 degree))$` |
| Mũ âm | `$10^(-3)$` |
| Đơn vị hỗn hợp | `$"cm"/("s" dot "mm"^2)$` |
| Góc dùng trong tính hình | `calc.sin(30deg)` |
| Hằng e trong tính hình | `calc.exp(-rate * time)` |
| Trừ trong code | `x - xmin`, không `x-xmin` |

Không dùng `frac(a)(b)`; không để mẫu số chỉ còn tên hàm `cos` rồi góc nằm ngoài phân số. Công thức dài hoặc phân số lồng nên để trên dòng math hiển thị riêng.

Tên lạ trong math không tự trở thành chữ nhiều kí tự: phải là kí hiệu có thật, biến có định nghĩa hoặc chuỗi. Không “sửa” lỗi unknown variable bằng cách đặt mọi biểu thức trong dấu nháy, vì sẽ mất cấu trúc toán học.

Không dùng tên biến code `alpha`, `theta`, `h`, `m`, `g` nếu chúng che kí hiệu math cùng phạm vi. Dùng `slope-angle`, `plot-height`, `mass-value`. Không thay đổi chữ kí helper mà quên tất cả nơi gọi.

## 3. Tập CeTZ tối thiểu

Dùng đúng `@preview/cetz:0.3.3`. Bên trong `canvas({ import draw: *; ... })`, gọi các primitive đã có trong mẫu:

```typst
line((0, 0), (2, 0), stroke: 1pt, mark: (end: ">"))
rect((0, 0), (1, 0.6), fill: luma(95%))
circle((0, 0), radius: 0.05, fill: black, stroke: none)
content((1, 1), text(fill: blue)[$bold(F)$], anchor: "south")
```

Hàm `text` cần nội dung: `text(fill: blue)[...]`. Không truyền `text(fill: blue)` rỗng như một đối số tùy ý của `content`.

Helper ngoài canvas gọi `draw.line`, `draw.content` hoặc import rõ. Đường cong có thể lấy mẫu:

```typst
let points = range(51).map(i => (i / 10, calc.exp(-i / 10)))
line(..points, stroke: 1pt + blue)
```

Không tự gọi hàm “vật lí” tưởng tượng. Khi gặp nét thừa ở đường tròn lớn, có thể vẽ đường bao bằng các điểm lấy mẫu rồi xem render; không đổi cả phiên bản package để né lỗi chưa xác định.

## 4. Kiểm tra đồ thị và sơ đồ lực

- Xác định hệ/vật xét, lực nào thực sự tác dụng lên nó. Các lực thuộc hai vật khác nhau không cùng một sơ đồ lực.
- Vận tốc và gia tốc là hai đại lượng khác nhau; vật đi xuống vẫn có thể có gia tốc/lực kéo hướng lên.
- Hướng lực cản theo chuyển động tương đối với chất lưu. Lực nổi khác lực nâng khí động.
- Góc hình học phải đúng với phương tham chiếu; khi không theo tỉ lệ cần ghi rõ.
- Đồ thị có trục, tên đại lượng, đơn vị hoặc ghi rõ định tính. Tính điểm từ đúng hàm, phân biệt giá trị hữu hạn và tiệm cận.
- Không vẽ sẵn đường đúng duy nhất trong đề chọn đồ thị. Vẽ đủ các lựa chọn hoặc đặt đồ thị đáp án trong sol.
- Nếu đề yêu cầu tự vẽ sơ đồ lực, hình giải chỉ nằm trong sol.
- Mọi ID phải có định nghĩa; mọi import phải có file thật. Khi đổi ID, sửa cả nơi gọi và ghi chú.
- Độ dài vectơ chỉ minh họa nếu không theo tỉ lệ; tránh vẽ sai tương quan rồi gọi là sơ đồ định lượng.

## 5. Kiểm tra vật lí và số liệu độc lập

Với từng câu, kiểm tra: dữ kiện đủ → mô hình và miền áp dụng → phương trình → đơn vị → dấu/chiều → phép tính → làm tròn → khóa.

- Một MCQ phải có đúng một phương án đúng. TF đánh giá riêng từng ý, không mặc định giữ khóa nguồn.
- Điều kiện cân bằng không tự cho biết chiều vận tốc. Ma sát nghỉ không tự bằng cực đại. Tiếp xúc cần phản lực không âm; đẳng thức ở ngưỡng cần được giải thích.
- Không dùng dữ kiện thực giả định cho thương hiệu/công trình cụ thể. Mô hình lí tưởng cần được gọi đúng là mô hình.
- Định luật gần đúng phải có giả thiết thích hợp. Vài điểm đo khớp đường cong không chứng minh định luật đúng trong mọi điều kiện.
- Sai số dụng cụ, mật độ, hệ số hoặc điều kiện đầu thiếu: không tự điền mà không ghi sửa đổi. Không làm tròn sai số trung gian rồi dùng nó cho phép lan truyền tiếp.
- Làm tròn một lần ở kết quả cuối; đếm số ô từ chính chuỗi đáp án cuối.
- Nhật kí phải khớp code cuối, không tự khen “đúng hoàn toàn” để thay kiểm tra.

## 6. Các mức xác nhận

| Mức | Bằng chứng |
| --- | --- |
| Rà tĩnh | Đọc mã, đối chiếu hợp đồng API, đếm câu/ô/ID. |
| Preflight | Đầu ra bộ dò, gồm ERROR/WARN; bộ dò chỉ tìm một số mẫu. |
| Biên dịch | Lệnh thật và exit code, đúng file hiện hành, cả học sinh/giáo viên. |
| Render | Mở PDF/ảnh kiểm tra công thức, bảng, nhãn, ngắt trang, ẩn đáp án. |
| Nội dung | Tính độc lập, kiểm tra giả thiết và khóa; compiler không làm việc này. |

Mẫu phản hồi khi chưa có công cụ:

> Đã đối chiếu API và rà soát tĩnh. Chưa biên dịch trong môi trường dự án. Chạy lệnh kiểm tra chung cho số bài tương ứng; vẫn cần xem PDF và đối chiếu đáp án.

Tệp [kiem-tra-cu-phap.typ](kiem-tra-cu-phap.typ) và bộ mẫu API có thể chạy để kiểm chứng tập cú pháp. Việc mẫu chạy được không chứng minh code mới sẽ chạy; luôn kiểm tra bài thực bằng `kiem-tra-bai.py`.

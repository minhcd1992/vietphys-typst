#import "dinh-dang.typ": bang, hinh

= III. Ảnh hưởng của đối thoại Socrates và đối thoại có AI làm trung gian đối với tư duy phản biện trong động học

== A. Kết quả giải bài tập định tính và định lượng về động học

Phân tích so sánh sáu nhóm cho thấy một mô thức nhất quán: trong mọi tình huống được đánh giá, hình thức trung gian bằng đối thoại Socrates có GAI hỗ trợ gắn với sự cải thiện có hệ thống về chất lượng câu trả lời cho cả bài tập định tính và định lượng về động học. Việc sử dụng cùng năm bài tập trong cả hai điều kiện dạy học cho phép so sánh trực tiếp kết quả trên cùng nền tảng khái niệm. Tuy vậy, vì các câu hỏi giống hệt nhau được sử dụng lại, nghiên cứu thừa nhận khả năng có ảnh hưởng của luyện tập; do đó, kết quả được diễn giải như bằng chứng về sự cải thiện ở điều kiện thứ hai, thay vì bằng chứng mạnh về tác động nhân quả.

Trước khi thực hiện các so sánh suy luận, nghiên cứu kiểm tra những giả định về phân phối của điểm chênh lệch. Kiểm định Shapiro–Wilk, được khuyến nghị cho mẫu nhỏ, cho thấy điểm chênh lệch tổng thể không phù hợp với phân phối chuẩn ($W = 0.736$, $p = 0.0148$, $alpha = 0.05$) [25]. Kết quả này, cùng bản chất thứ bậc của bảng tiêu chí phân tích, là cơ sở để sử dụng phương pháp phi tham số trong bối cảnh mẫu nhỏ, phù hợp với hướng dẫn phương pháp luận trong nghiên cứu giáo dục và khuyến nghị diễn giải thận trọng các kiểm định tính chuẩn khi dữ liệu hạn chế [26]. Theo đó, tác động tổng thể của can thiệp được đánh giá bằng kiểm định hạng có dấu Wilcoxon một phía, dựa trên giả thuyết có hướng được xác lập từ trước rằng GAI làm trung gian sẽ không làm giảm kết quả, mà sẽ dẫn đến cải thiện hoặc không thay đổi. Việc sử dụng kiểm định một phía được quy định tường minh để tránh sai lệch suy luận do lựa chọn sau khi đã xem dữ liệu [27–29].

Về hình thức, giả thuyết không tổng thể $H_(0G)$ phát biểu rằng trung vị của điểm chênh lệch giữa hai điều kiện nhỏ hơn hoặc bằng không; nghĩa là Hoạt động 2 (A2) không có tổng điểm cao hơn Hoạt động 1 (A1). Giả thuyết đối tổng thể $H_(1G)$ phát biểu rằng trung vị chênh lệch lớn hơn không, tức A2 có điểm cao hơn A1. Kết quả ủng hộ dự đoán này: $H_(0G)$ bị bác bỏ theo hướng chấp nhận $H_(1G)$, với thống kê hạng có dấu Wilcoxon bằng 0 và $p = 0.0312$ tại $alpha = 0.05$. Mức tăng trung bình 8.3 điểm mỗi nhóm gợi ý một ảnh hưởng nhất quán của hình thức trung gian kết hợp giảng viên–GAI, mặc dù cần báo cáo cỡ ảnh hưởng tương ứng để hoàn thiện việc trình bày thống kê theo chuẩn [29].

Ngoài phân tích tổng thể, nghiên cứu còn xem xét cấu trúc của điểm chênh lệch ở cấp từng bài tập. Như Bảng II cho thấy, các kiểm định Shapiro–Wilk áp dụng cho điểm chênh lệch của từng bài không chỉ ra sự lệch đáng kể khỏi phân phối chuẩn ở Bài 1 (P1), Bài 3 (P3) và Bài 5 (P5), trong khi có bằng chứng về phân phối không chuẩn ở Bài 2 (P2) và Bài 4 (P4). Với cỡ mẫu nhỏ ($N = 6$) và bản chất thứ bậc của điểm theo bảng tiêu chí, cách tiếp cận phi tham số được giữ lại cho tất cả phép so sánh ở cấp bài tập, nhằm tránh những lựa chọn phân tích thiếu ổn định dựa trên các kiểm định tính chuẩn có lực kiểm định thấp [26].

#bang("II", [Kiểm định Shapiro–Wilk đối với điểm chênh lệch ở cấp bài tập.], {
  set text(size: 9.5pt)
  table(columns: (0.5fr, 1fr, 0.8fr, 3.7fr),
    table.header([*Bài*], [*$W$ (Shapiro–Wilk)*], [*Giá trị $p$*], [*Diễn giải ($alpha = 0.05$)*]),
    [1], [1.0000], [1.0000], [Không bác bỏ giả thuyết không; phân phối phù hợp với tính chuẩn],
    [2], [0.7501], [0.0200], [Bác bỏ giả thuyết không; có bằng chứng lệch khỏi phân phối chuẩn],
    [3], [0.8269], [0.1012], [Không bác bỏ giả thuyết không],
    [4], [0.7596], [0.0247], [Bác bỏ giả thuyết không; lệch đáng kể khỏi phân phối chuẩn],
    [5], [0.9076], [0.4207], [Không bác bỏ giả thuyết không],
  )
})

Tiếp đó, các kiểm định hạng có dấu Wilcoxon hai phía được áp dụng riêng cho từng bài tập, như tóm tắt trong Bảng III. Phân tích này cho phép so sánh ghép cặp điểm ở Hoạt động 1 (A1) và Hoạt động 2 (A2) theo từng bài, đồng thời báo cáo trung vị ở mỗi điều kiện và trung vị của điểm chênh lệch (A2 − A1). Xét về mô tả, có một mô thức nhất quán về chiều hướng: ở cả năm bài, trung vị điểm A2 đều cao hơn A1, với trung vị chênh lệch từ 1.0 đến 3.5 điểm. Xét về suy luận, tại $alpha = 0.05$, khác biệt có ý nghĩa thống kê được xác định ở Bài 1 (P1) và Bài 4 (P4); còn Bài 2 (P2), Bài 3 (P3) và Bài 5 (P5) chưa đạt ngưỡng ý nghĩa thống kê, dù cùng thể hiện chiều hướng cải thiện.

#bang("III", [So sánh điểm giữa hai hoạt động theo từng bài bằng kiểm định hạng có dấu Wilcoxon.], {
  set text(size: 9pt)
  table(columns: (0.45fr, 0.9fr, 1fr, 1fr, 1.2fr, 0.4fr, 1fr), align: center + horizon,
    table.header([*Bài*], [*$N$ chênh lệch $eq.not 0$*], [*Trung vị A1*], [*Trung vị A2*], [*Trung vị chênh lệch (A2 − A1)*], [*$W$*], [*$p$ (hai phía)*]),
    [1], [6], [10.0], [11.0], [1.0], [0], [0.03125],
    [2], [5], [9.0], [11.5], [2.5], [0], [0.06250],
    [3], [5], [9.0], [11.0], [2.0], [0], [0.06250],
    [4], [6], [6.5], [10.0], [3.5], [0], [0.03125],
    [5], [4], [8.5], [9.5], [1.0], [0], [0.12500],
  )
})

Với mỗi bài $k$, giả thuyết cho kiểm định hai phía được xây dựng như sau. Giả thuyết không $H_(0k)$ phát biểu rằng trung vị của điểm chênh lệch giữa A2 và A1 bằng không, nghĩa là không có thay đổi có hệ thống giữa hai điều kiện. Giả thuyết đối $H_(1k)$ phát biểu rằng trung vị chênh lệch khác không, nghĩa là có thay đổi có hệ thống giữa hai điều kiện. Lựa chọn kiểm định hai phía ở cấp bài tập được biện minh như một cách tiếp cận bảo thủ về phương pháp luận, phù hợp với thực hành báo cáo chuẩn khi tiến hành nhiều phép so sánh và khi cần tránh kiểm định có hướng không có căn cứ, tức không dựa trên một ràng buộc lí thuyết chặt chẽ được tuyên bố rõ từ trước — một cách làm đã được tài liệu phương pháp luận nhiều lần cảnh báo vì có thể làm sai lệch suy luận [28,29].

Tuy nhiên, khi khuôn khổ lí thuyết xác định từ trước một kì vọng có hướng rõ ràng — cụ thể là hình thức trung gian có AI tạo sinh hỗ trợ không làm suy giảm kết quả và mọi thay đổi quan sát được, nếu có, đều theo hướng cải thiện — thì việc sử dụng kiểm định một phía có thể được bảo vệ, miễn là hướng kiểm định được tuyên bố trước khi xem dữ liệu và được báo cáo minh bạch. Trong điều kiện đó, với mỗi bài $k$, giả thuyết không $H_(0k)$ được xác định là trung vị điểm chênh lệch nhỏ hơn hoặc bằng không, còn giả thuyết đối $H_(1k)$ là trung vị lớn hơn không. Cách xây dựng này tập trung suy luận vào chiều hướng thay đổi có ý nghĩa về lí thuyết, đồng thời giảm nguy cơ diễn giải lại kết quả một cách cơ hội [27–29].

Hình 2 trình bày bản đồ nhiệt thể hiện sự phân bố lại điểm tư duy phản biện của sáu nhóm qua năm bài tập động học, so sánh Hoạt động 1 (A1), triển khai bằng đối thoại Socrates truyền thống do giảng viên hướng dẫn, với Hoạt động 2 (A2), triển khai theo cùng cách tiếp cận Socrates nhưng có AI tạo sinh làm trung gian, theo cùng thứ tự bài tập. Cách trực quan hóa bằng ma trận này giúp nhận diện các mô thức và sự tương phản giữa hai điều kiện dạy học, bằng cách biểu diễn độ lớn số liệu qua các mức chuyển màu và cho phép đối chiếu nhanh theo hàng, cột [30].

Việc sử dụng thang màu từ lạnh đến nóng để biểu diễn điểm từ thấp đến cao làm nổi bật cả chiều hướng lẫn mức độ thay đổi, dựa trên sự tương ứng trong tri giác giữa thứ tự độ lớn và thứ tự thị giác. Cách tiếp cận này giúp phân biệt rõ hơn sự tăng, giảm điểm giữa hai điều kiện và hỗ trợ suy luận trực quan hiệu quả về sự thay đổi kết quả giữa các bài và các nhóm [31,32].

#hinh(2, "hinh/hinh-02.png", [Điểm tư duy phản biện theo bảng tiêu chí ở các nhóm và các bài tập động học. (a) Tổng điểm tư duy phản biện của sáu nhóm ở Hoạt động 1 (A1; đối thoại Socrates do giảng viên hướng dẫn) và Hoạt động 2 (A2; đối thoại Socrates do giảng viên hướng dẫn, có AI tạo sinh làm trung gian); các số phía trên mỗi cặp cột biểu thị mức thay đổi tổng điểm từ A1 sang A2. (b) Điểm tư duy phản biện theo từng bài của cùng sáu nhóm qua năm bài tập động học (P1–P5) ở A1 và A2. Cường độ màu biểu thị độ lớn của điểm, từ thấp (màu lạnh) đến cao (màu nóng), giúp so sánh trực quan giữa các nhóm, các bài và hai điều kiện dạy học. Hình có tính mô tả; cần diễn giải điểm số trong bối cảnh thiết kế tiền thực nghiệm có thứ tự cố định.], width: 87%)

#text(size: 9pt)[*Đối chiếu nhãn Hình 2:* G1–G6 = nhóm 1–6; P1–P5 = bài 1–5; Total rubric score = tổng điểm theo bảng tiêu chí; Group = nhóm; Group and condition = nhóm và điều kiện; Kinematics problem = bài tập động học; Score = điểm; A1 without GAI = A1 không có GAI; A2 with Gemini = A2 có Gemini.]

Nhìn chung, các kết quả tạo nên một bức tranh bằng chứng thực nghiệm mạch lạc và hội tụ giữa các cấp phân tích. Ở cấp tổng thể, giả thuyết đối $H_(1G)$ được thống kê ủng hộ, cho thấy kết quả cải thiện có ý nghĩa khi dạy học Socrates kết hợp GAI làm trung gian. Ở cấp bài tập, giả thuyết đối $H_(1k)$ được ủng hộ ở hai trong năm bài, còn ba bài kia cùng thể hiện một chiều hướng thuận lợi cho Hoạt động 2 (A2). Trong nghiên cứu có mẫu nhỏ, mô thức này cung cấp thông tin có ý nghĩa về phương pháp luận: chiều hướng nhất quán qua nhiều phép so sánh có thể phù hợp với một ảnh hưởng nền ổn định, ngay cả khi không phải mọi so sánh riêng lẻ đều đạt ý nghĩa thống kê, đặc biệt khi lực kiểm định hạn chế và chiến lược kiểm định ở cấp bài tập mang tính bảo thủ [26,29].

Ngoài ra, không ghi nhận thay đổi âm ở bất kì nhóm hay bài tập nào, gợi ý rằng việc đưa GAI vào không làm suy giảm kết quả theo những gì quan sát được trong khuôn khổ khảo sát. Tuy nhiên, cần diễn giải thận trọng sự vắng mặt của các trường hợp giảm điểm: đây không phải là bằng chứng suy luận về việc “không gây hại”, mà chỉ cho thấy không quan sát được sự suy giảm có hệ thống trong mẫu và các điều kiện hiện tại.

Tổng hợp lại, bằng chứng từ Bảng III, Bảng IV và Hình 2 ủng hộ nhận định rằng hình thức trung gian kết hợp con người–AI có thể tăng cường các quá trình gắn với tư duy phản biện khi giải bài tập, đặc biệt bằng cách thúc đẩy cách giải thích chính xác hơn, kiểm chứng tường minh các giả định và tự điều chỉnh siêu nhận thức trong quá trình suy luận, với điều kiện vẫn duy trì sự giám sát của giảng viên và các tiêu chí tường minh để kiểm chứng câu trả lời [33,34].

#include "03b-cam-nhan.typ"

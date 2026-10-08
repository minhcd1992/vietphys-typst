#import "../cau-hinh.typ": *
#import "images/bai-09-hinh.typ": bai-09-hinh

// Nguồn: nguon/bai-09-goc.txt; hiệu đính: nguon/bai-09-ghi-chu.md.
// Các câu độc lập; đáp án và lời giải ẩn trên bản học sinh.
#sbt-bai(num: "9", title: "Định luật 1 Newton", label: <bai-09>)

= Phần I. Trắc nghiệm khách quan
#sbt-instructions(reset: true)[Chọn một phương án đúng trong mỗi câu. Nếu không nêu khác, xét chuyển động của chất điểm trong hệ quy chiếu mặt đất được coi gần đúng là quán tính.]

// MCQ-01
#vp-question(
  [Ô tô chuyển động thẳng đều với tốc độ $120 thin "km/h"$. Phát biểu nào đúng về quán tính của xe?],
  type: "mcq", options: ([Quán tính là lực do động cơ sinh ra để thắng lực cản.],
    [Quán tính là tính chất của xe có xu hướng giữ nguyên vận tốc hiện tại.],
    [Xe chạy càng nhanh thì mức quán tính càng lớn; khi dừng, quán tính bằng không.],
    [Quán tính chỉ xuất hiện khi xe phanh hoặc tăng tốc.]),
  ans: "B", sol: [Quán tính là tính chất duy trì trạng thái đứng yên hoặc chuyển động thẳng đều, không phải một lực. Trong cơ học Newton, khối lượng đặc trưng cho mức quán tính, không phải tốc độ.],
)

// MCQ-02
#vp-question(
  [Một cuốn sách được đẩy trượt đều trên bàn ngang. Khi buông tay, sách trượt thêm rồi dừng. Bỏ qua lực cản không khí. Giải thích nào đúng?],
  type: "mcq", options: ([Sách dừng vì vật luôn cần lực đẩy để duy trì chuyển động.],
    [Sau khi buông tay, ma sát là lực ngang làm vận tốc sách giảm về không.],
    [Quán tính của sách bị tiêu hao hết khi trượt.], [Khi sách trượt đều, lực đẩy lớn hơn lực ma sát.]),
  ans: "B", sol: [Trọng lực và phản lực cân bằng theo phương đứng. Khi buông tay, hợp lực là ma sát ngược chiều chuyển động nên sách chậm lại. Khi trượt đều, lực đẩy và ma sát cân bằng nhau.],
)

// MCQ-03
#vp-question(
  [Một chất điểm chịu ba lực đồng phẳng có tổng vectơ bằng không trong suốt khoảng thời gian xét. Chất điểm chuyển động thế nào?],
  type: "mcq", options: ([Chắc chắn đứng yên tại gốc tọa độ.], [Nhanh dần đều theo hướng lực lớn nhất.],
    [Đứng yên hoặc chuyển động thẳng đều, tùy vận tốc ban đầu.], [Chuyển động tròn đều.]),
  ans: "C", sol: [Hợp lực bằng không nên vận tốc không đổi. Vận tốc ban đầu bằng không thì vật đứng yên; khác không thì vật chuyển động thẳng đều.],
)

// MCQ-04
#vp-question(
  [Hệ quy chiếu nào sau đây không phải hệ quy chiếu quán tính? Coi hệ mặt đất là quán tính và các hệ chuyển động thẳng có trục không quay so với mặt đất.],
  type: "mcq", options: ([Hệ gắn với tòa nhà đứng yên trên mặt đất.],
    [Hệ gắn với tàu chạy thẳng đều $80 thin "km/h"$.], [Hệ gắn với xe buýt đang vào cua và hãm phanh.],
    [Hệ gắn với tàu vũ trụ chuyển động thẳng đều so với một hệ quán tính.]),
  ans: "C", sol: [Xe đang đổi độ lớn hoặc hướng vận tốc nên có gia tốc. Hệ gắn với xe lúc này không phải hệ quy chiếu quán tính.],
)

// MCQ-05
#vp-question(
  [Khi ô tô phanh gấp, hành khách không được giữ bởi dây an toàn có xu hướng chồm về phía trước so với xe. Trong hệ mặt đất, nguyên nhân là gì?
    #align(center, bai-09-hinh("phanh-xe"))
  ], type: "mcq", options: ([Một lực do quán tính của Trái Đất đẩy người về phía trước.],
    [Lực phanh truyền sang người, đẩy người về phía trước.], [Người có xu hướng duy trì vận tốc ban đầu trong khi xe giảm tốc.],
    [Trọng lực tác dụng lên người giảm đột ngột.]),
  ans: "C", sol: [Quán tính không tạo thêm lực đẩy về phía trước. Xe giảm tốc; nếu lực hãm người chưa đủ, người tiếp tục đi về phía trước so với xe.],
)

// MCQ-06
#vp-question(
  [Hai vật A, B chịu cùng một hợp lực không đổi trong cùng thời gian. Độ lớn biến thiên vận tốc lần lượt là $Delta v_A = 4 thin "m/s"$, $Delta v_B = 1 thin "m/s"$. Biết $F = m a$, tỉ số $m_A/m_B$ bằng bao nhiêu?],
  type: "mcq", options: ([$4$.], [$1/4$.], [$2$.], [$1/2$.]),
  ans: "B", sol: [Cùng $F$, $Delta t$ nên $m_A Delta v_A = m_B Delta v_B$, do đó $m_A/m_B = Delta v_B/Delta v_A = 1/4$. Vật có khối lượng lớn hơn khó thay đổi vận tốc hơn.],
)

// MCQ-07
#vp-question(
  [Trong mô hình hai mặt dốc nối êm với nhau, bi trượt không ma sát từ độ cao $h$ xuống dốc trái rồi lên dốc phải. Hạ dần độ nghiêng dốc phải, cuối cùng thay bằng mặt phẳng ngang dài vô hạn. Khi đã tới đoạn ngang, bi sẽ chuyển động thế nào?
    #align(center, bai-09-hinh("hai-mat-doc"))
  ], type: "mcq", options: ([Dừng ngay vì không còn độ dốc.], [Chuyển động đến khi quán tính bị tiêu hao hết.],
    [Chuyển động thẳng đều trên đoạn ngang.], [Chậm dần đều rồi dừng sau quãng đường bằng chiều dài dốc trái.]),
  ans: "C", sol: [Trên đoạn ngang lí tưởng, trọng lực và phản lực cân bằng, không còn lực ngang. Bi giữ vận tốc tại lúc vào đoạn ngang. Không cần lực để duy trì chuyển động này.],
)

// MCQ-08
#vp-question(
  [Một người đứng trên cân trong thang máy. Khi thang máy bắt đầu đi lên nhanh dần, số chỉ cân tăng. Coi $g$ không đổi. Phát biểu nào đúng?
    #align(center, bai-09-hinh("thang-may"))
  ], type: "mcq", options: ([Trọng lực tác dụng lên người tăng vì thang máy đi lên.],
    [Lực cân đỡ người tăng và lớn hơn trọng lực, tạo gia tốc hướng lên.], [Quán tính của người biến mất.],
    [Khối lượng người tăng theo gia tốc thang máy.]),
  ans: "B", sol: [Theo phương đứng, $N - m g = m a > 0$, nên $N > m g$. Số chỉ cân phụ thuộc lực ép lên cân, không phải do khối lượng hay trọng lực thay đổi.],
)

// MCQ-09
#vp-question(
  [Một tàu vũ trụ đang chuyển động trong một hệ quy chiếu quán tính. Từ lúc tắt động cơ, coi tổng ngoại lực tác dụng lên tàu bằng không. Tàu sẽ chuyển động thế nào?],
  type: "mcq", options: ([Dừng ngay.], [Chậm dần đều rồi dừng.], [Tiếp tục chuyển động thẳng đều với vận tốc lúc tắt động cơ.],
    [Chuyển động tròn với bán kính giảm dần.]),
  ans: "C", sol: [Theo định luật 1 Newton, khi hợp lực bằng không, vận tốc tàu không đổi. Đây là mô hình lí tưởng, không phải khẳng định mọi tàu vũ trụ thực đều không chịu hấp dẫn.],
)

// MCQ-10
#vp-question(
  [Một xe đang đi thẳng bắt đầu vào cua. Vì sao xe cần lực ngang để đi theo đường cong?
    #align(center, bai-09-hinh("vao-cua"))
  ], type: "mcq", options: ([Khối lượng xe tăng làm lực ma sát tự giảm.],
    [Xe có xu hướng giữ hướng vận tốc cũ; muốn đổi hướng phải có hợp lực khác không.],
    [Trọng lực giảm khi đường cong.], [Chỉ lực của động cơ mới có thể đổi hướng xe.]),
  ans: "B", sol: [Chuyển động theo đường cong đòi hỏi đổi hướng vận tốc. Với cùng bán kính, gia tốc cần thiết tăng khi tốc độ tăng. Không thể chỉ từ khối lượng lớn mà kết luận xe chắc chắn trượt hoặc lật.],
)

// MCQ-11
#vp-question(
  [Con trượt được đẩy nhẹ rồi thả trên ray đệm khí nằm ngang. Bỏ qua lực cản và ma sát. Chọn $t = 0$, $d = 0$ tại lúc thả, chiều dương theo vận tốc ban đầu khác không. Đồ thị độ dịch chuyển–thời gian nào đúng?
    #align(center, bai-09-hinh("chon-do-thi"))
  ], type: "mcq", options: ([Đồ thị A.], [Đồ thị B.], [Đồ thị C.], [Đồ thị D.]),
  ans: "B", sol: [Hợp lực bằng không nên $v$ không đổi và dương; $d = v t$. Đồ thị là đường thẳng đi lên qua gốc tọa độ (B).],
)

// MCQ-12
#vp-question(
  [Xe buýt đang đi thẳng thì đột ngột rẽ trái. Do quán tính, hành khách có xu hướng nghiêng về phía nào so với xe?],
  type: "mcq", options: ([Trái.], [Phải.], [Trước.], [Sau.]),
  ans: "B", sol: [Hành khách có xu hướng giữ hướng chuyển động cũ, trong khi xe đổi hướng sang trái, nên người có xu hướng nghiêng sang phải so với xe.],
)

// MCQ-13
#vp-question(
  [Giọt mưa rơi thẳng đều ở tốc độ giới hạn. Coi giọt mưa chỉ chịu trọng lực và lực cản không khí. Kết luận nào đúng?],
  type: "mcq", options: ([Lực cản đã bằng không.], [Trọng lực đã biến mất.],
    [Lực cản hướng lên và có độ lớn bằng trọng lực.], [Hợp lực có độ lớn bằng $m g$.]),
  ans: "C", sol: [Rơi thẳng đều nên tổng vectơ lực bằng không: $F_c = P = m g$. Hai lực vẫn tồn tại và cân bằng nhau.
    #align(center, bai-09-hinh("roi-deu"))
  ],
)

// MCQ-14
#vp-question(
  [Tựa đầu của ghế ô tô trực tiếp hạn chế chuyển động tương đối nào trong tình huống xe đang đứng yên bị đẩy mạnh về phía trước do va chạm từ phía sau?],
  type: "mcq", options: ([Thân người chồm về trước khi xe phanh.],
    [Đầu ngả ra sau so với thân khi ghế đẩy thân về trước.], [Xe trượt trong cát.], [Xe trượt ngang trên mặt đường.]),
  ans: "B", sol: [Ghế đẩy thân về trước; đầu có xu hướng giữ trạng thái ban đầu. Tựa đầu truyền lực cho đầu, hạn chế độ trễ của đầu so với thân.],
)

// MCQ-15
#vp-question(
  [Một giọt mực tách khỏi trần toa tàu đang chạy thẳng đều $90 thin "km/h"$ trên đường ngang. Ban đầu giọt mực đứng yên so với toa; bỏ qua lực cản không khí. Nó chạm sàn tại đâu?
    #align(center, bai-09-hinh("tha-vat"))
  ], type: "mcq", options: ([Đúng điểm O trên sàn, thẳng dưới điểm thả trong toa tàu.],
    [Phía sau O.], [Phía trước O.], [Lệch sang phải so với O.]),
  ans: "A", sol: [Giọt mực và toa có cùng vận tốc ngang ban đầu. Trong khi rơi, giọt mực không chịu lực ngang nên giữ vận tốc ngang đó; vị trí ngang của nó so với toa không đổi.],
)

// MCQ-16
#vp-question(
  [Nhận định nào sai trong cơ học Newton khi xét ở một hệ quy chiếu quán tính?],
  type: "mcq", options: ([Vật có thể chuyển động mà không chịu lực nào.],
    [Hợp lực bằng không thì gia tốc bằng không.], [Muốn vật đang đứng yên bắt đầu chuyển động phải có hợp lực khác không trong quá trình đó.],
    [Vật chuyển động càng nhanh thì hợp lực tác dụng lên nó phải càng lớn.]),
  ans: "D", sol: [Hợp lực liên quan đến biến thiên vận tốc, không quyết định trực tiếp độ lớn vận tốc. Vật có thể chuyển động thẳng đều rất nhanh với hợp lực bằng không.],
)

// MCQ-17
#vp-question(
  [Kiện hàng $50 thin "kg"$ nằm yên so với sàn ngang của xe tải chạy thẳng đều $15 thin "m/s"$. Kiện hàng chỉ chịu trọng lực và lực tiếp xúc với sàn. Độ lớn ma sát nghỉ là bao nhiêu?],
  type: "mcq", options: ([$500 thin "N"$.], [$750 thin "N"$.], [$0 thin "N"$.], [$50 thin "N"$.]),
  ans: "C", sol: [Kiện hàng không có gia tốc theo phương ngang. Không có lực ngang nào khác cần cân bằng nên ma sát nghỉ bằng không; ma sát nghỉ không luôn bằng giá trị cực đại.],
)

// MCQ-18
#vp-question(
  [Một chiếc áo đang chuyển động thì bị giữ dừng đột ngột, làm một số hạt bụi tách khỏi áo. Giải thích nào phù hợp nhất?],
  type: "mcq", options: ([Trọng lực tăng đột ngột.],
    [Bụi có xu hướng tiếp tục chuyển động; lực liên kết với vải không đủ để hãm bụi cùng áo.],
    [Ma sát giữa bụi và vải đột ngột tăng vô hạn.], [Mọi hạt bụi đều bị nhiễm điện khi áo dừng.]),
  ans: "B", sol: [Bụi có quán tính. Khi áo dừng nhanh mà lực giữ bụi không đủ làm bụi giảm tốc cùng áo, bụi tiếp tục chuyển động tương đối với áo và có thể tách ra.],
)

// MCQ-19
#vp-question(
  [Người trên thuyền đang đứng yên đạp thuyền để nhảy về phía bờ; thuyền lùi lại. Bỏ qua lực cản nước trong thời gian đạp. Giải thích nào đúng?],
  type: "mcq", options: ([Thuyền không có quán tính nên bị lùi.],
    [Người tác dụng lực đẩy thuyền về sau, còn thuyền đẩy người về trước; sau tương tác, quán tính giúp thuyền tiếp tục chuyển động.],
    [Định luật 1 Newton không áp dụng trên mặt nước.], [Lực cản nước là lực đẩy thuyền lùi.]),
  ans: "B", sol: [Thuyền bắt đầu lùi do lực người tác dụng lên thuyền. Lực thuyền tác dụng lên người là lực tương tác ngược chiều, đặt lên vật khác. Quán tính không phải nguyên nhân tự tạo gia tốc cho thuyền.],
)

// MCQ-20
#vp-question(
  [Vệ tinh chuyển động tròn đều quanh Trái Đất, chỉ chịu lực hấp dẫn. Xét trong hệ có gốc ở tâm Trái Đất, các trục không quay so với các sao xa và được coi gần đúng là quán tính. Phát biểu nào đúng?
    #align(center, bai-09-hinh("ve-tinh"))
  ], type: "mcq", options: ([Tốc độ không đổi nên hợp lực bằng không.],
    [Hấp dẫn làm đổi hướng vận tốc nên hợp lực khác không.], [Có một lực thực hướng ra ngoài cân bằng hấp dẫn.],
    [Vệ tinh phải liên tục phun khí mới duy trì được quỹ đạo tròn lí tưởng.]),
  ans: "B", sol: [Vận tốc là vectơ: tuy độ lớn không đổi, hướng liên tục thay đổi. Hấp dẫn là hợp lực hướng tâm. Trong hệ quán tính đã chọn, không thêm lực li tâm để cân bằng hấp dẫn.],
)

= Phần II. Trắc nghiệm Đúng/Sai
#sbt-instructions(reset: true)[Xác định mỗi phát biểu a), b), c), d) là đúng hay sai.]

// TF-01
#vp-question(
  [Ô tô khối lượng $"2,8" thin "tấn"$ chạy thẳng đều $90 thin "km/h"$ trên đường ngang. Xét trong hệ mặt đất.],
  type: "tf", statements: (
    [Hợp lực của các ngoại lực tác dụng lên xe bằng không.],
    [Khi ngắt lực kéo, xe lập tức dừng lại dù các lực cản đều hữu hạn.],
    [Nếu lực kéo tiếp tục cân bằng tổng lực cản, xe duy trì vận tốc hiện tại.],
    [Hành khách $70 thin "kg"$ có mức quán tính lớn hơn xe.],
  ), ans-tf: ("Đ", "S", "Đ", "S"),
  sol: [a) Xe thẳng đều nên tổng vectơ ngoại lực bằng không.
    #parbreak() b) Mất lực kéo không làm vận tốc đột ngột bằng không; lực cản làm xe giảm tốc trong một khoảng thời gian.
    #parbreak() c) Tổng lực ngang bằng không, các lực đứng cân bằng, nên vận tốc không đổi.
    #parbreak() d) $2800 thin "kg" > 70 thin "kg"$ nên xe có mức quán tính lớn hơn.],
)

// TF-02
#vp-question(
  [Xét quan niệm “vật chỉ chuyển động được khi luôn có lực đẩy” và cách giải thích bằng định luật 1 Newton.],
  type: "tf", statements: (
    [Hiện tượng vật dừng sau khi thôi đẩy trên sàn có ma sát chưa chứng minh cần hợp lực khác không để duy trì chuyển động.],
    [Trong mô hình mặt phẳng ngang không ma sát, một vật đang chuyển động có thể tiếp tục thẳng đều dù không còn lực đẩy.],
    [Hợp lực khác không làm thay đổi vận tốc; hợp lực bằng không không buộc vật phải đứng yên.],
    [Vì từ $bold(F) = m bold(a)$ có thể thay $bold(F) = bold(0)$, định luật 1 là thừa và không có vai trò xác định hệ quy chiếu quán tính.],
  ), ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [a) Sau khi thôi đẩy vẫn còn lực cản làm vật dừng lại.
    #parbreak() b) Các lực đứng cân bằng, không có lực ngang nên vận tốc được giữ nguyên.
    #parbreak() c) Điều cần phân biệt là vận tốc và sự biến thiên vận tốc.
    #parbreak() d) Định luật 1 nêu sự tồn tại và đặc trưng của hệ quy chiếu quán tính; dạng thông thường của định luật 2 áp dụng trong các hệ ấy. Không thể bỏ qua điều kiện về hệ quy chiếu khi suy luận.],
)

// TF-03
#vp-question(
  [Va li ban đầu đứng yên so với sàn ngang của toa tàu chạy thẳng đều $80 thin "km/h"$. Va li không bị buộc, chỉ chịu trọng lực và lực tiếp xúc với sàn.],
  type: "tf", statements: (
    [Khi tàu tiếp tục thẳng đều, va li giữ nguyên vị trí trên sàn và ma sát nghỉ bằng không.],
    [Nếu tàu phanh với gia tốc hãm lớn hơn mức ma sát có thể truyền cho va li, va li trượt về phía đầu toa; vận tốc của va li so với đất vẫn có thể giảm.],
    [Khi tàu rẽ phải, nếu ma sát không đủ giữ va li đi cùng, va li có xu hướng trượt sang trái so với toa.],
    [Khi tàu phanh, nếu bỏ qua ma sát thì va li có gia tốc tương đối với toa dù không chịu lực ngang; điều này chứng tỏ hệ gắn với toa là quán tính.],
  ), ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [a) Va li đã có cùng vận tốc với tàu và không cần lực ngang để duy trì vận tốc đó.
    #parbreak() b) Ma sát hãm va li nhưng có thể không đủ để nó giảm tốc nhanh bằng tàu. Va li chuyển động về trước so với toa; không được khẳng định nó luôn giữ nguyên $80 thin "km/h"$ so với đất.
    #parbreak() c) Quán tính có xu hướng giữ hướng chuyển động cũ. Phải xét khả năng của ma sát, không phải mọi lần rẽ đều làm va li trượt.
    #parbreak() d) Hệ toa đang phanh là phi quán tính; trong hệ đất, khi bỏ qua ma sát, vận tốc ngang của va li không đổi.],
)

// TF-04
#vp-question(
  [Con trượt đang chuyển động trên ray đệm khí nằm ngang. Khi bật máy, coi lực cản và ma sát không đáng kể; khi tắt máy, con trượt tiếp xúc ray và chịu ma sát trượt có độ lớn không đổi cho đến lúc dừng.],
  type: "tf", statements: (
    [Sau khi tắt máy, con trượt chậm dần đều đến khi dừng.],
    [Khi bật máy và đã thôi đẩy, con trượt chuyển động xấp xỉ thẳng đều.],
    [Khi có đệm khí, đồ thị độ dịch chuyển–thời gian là đường thẳng, có hệ số góc bằng vận tốc.],
    [Gắn thêm quả nặng làm giảm mức quán tính của con trượt.],
  ), ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [a) Ma sát không đổi, ngược chiều vận tốc, cho gia tốc hãm không đổi trong giai đoạn trượt.
    #parbreak() b) Ray ngang và lực cản không đáng kể cho hợp lực xấp xỉ bằng không.
    #parbreak() c) $d = d_0 + v t$ với $v$ không đổi; độ dốc đồ thị bằng $v$.
    #parbreak() d) Thêm khối lượng làm tăng mức quán tính.],
)

// TF-05
#vp-question(
  [Xét các mô hình cơ học về sự giảm tốc của người và hàng hóa trên xe.], type: "tf", statements: (
    [Với cùng độ biến thiên động lượng, kéo dài thời gian hãm cơ thể làm giảm độ lớn lực hãm trung bình; đây là một tác dụng của túi khí trong mô hình va chạm trực diện.],
    [Dây chằng hàng có thể tạo thêm lực giữ để hàng giảm tốc cùng xe khi xe phanh.],
    [Lớp đệm biến dạng của mũ bảo hiểm có thể kéo dài thời gian giảm tốc của đầu khi va chạm.],
    [Chỉ biết xe chạy $100 thin "km/h"$ chưa đủ để tính quãng đường dừng; còn cần thời gian phản ứng và khả năng hãm.],
  ), ans-tf: ("Đ", "Đ", "Đ", "Đ"),
  sol: [a) Với cùng $abs(Delta p)$, $F_("tb") = frac(abs(Delta p), Delta t)$ giảm khi thời gian hãm tăng. Đây là lực tương tác, không phải một lực mới sinh ra bởi quán tính.
    #parbreak() b) Chằng buộc tạo lực tương tác làm thay đổi vận tốc của hàng cùng xe, trong giới hạn chịu lực của dây và điểm neo.
    #parbreak() c) Biến dạng của lớp đệm làm quá trình giảm tốc diễn ra trên khoảng thời gian dài hơn.
    #parbreak() d) Trong mô hình phản ứng trong thời gian $t_r$, rồi hãm đều với độ lớn gia tốc $a$, quãng đường dừng là $v_0 t_r + frac(v_0^2, 2 a)$. Không suy ra một giá trị khoảng cách chung chỉ từ tốc độ.],
)

= Phần III. Trắc nghiệm trả lời ngắn
#sbt-instructions(reset: true)[Tính và ghi kết quả theo đơn vị nêu trong mỗi câu.]

// SHORT-01
#vp-question(
  [Vật $"4,0" thin "kg"$ ban đầu đứng yên trên sàn ngang. Tác dụng lực kéo ngang $12 thin "N"$; ma sát nghỉ cực đại là $15 thin "N"$. Vật không chịu lực ngang nào khác. Sau $"5,0" thin "s"$, vật đi được bao nhiêu mét?],
  type: "short", ans: "0", sol: [Lực kéo nhỏ hơn ma sát nghỉ cực đại nên ma sát nghỉ có độ lớn $12 thin "N"$ và cân bằng lực kéo. Vật tiếp tục đứng yên: $s = 0 thin "m"$.],
)

// SHORT-02
#vp-question(
  [Ô tô $1500 thin "kg"$ chạy thẳng đều $72 thin "km/h"$ trên đường ngang. Tổng lực cản có độ lớn $800 thin "N"$. Tính độ lớn lực kéo theo đơn vị N.],
  type: "short", ans: "800", sol: [Hợp lực ngang bằng không nên $F_k = F_c = 800 thin "N"$.],
)

// SHORT-03
#vp-question(
  [Hai vật A, B khối lượng $2 thin "kg"$, $6 thin "kg"$ đều ban đầu đứng yên. Cùng một hợp lực không đổi tác dụng lên mỗi vật trong cùng thời gian làm A đạt tốc độ $12 thin "m/s"$. Dùng $F = m a$, tính tốc độ B theo đơn vị m/s.],
  type: "short", ans: "4", sol: [$m_A v_A = F t = m_B v_B$, nên $v_B = frac(2 times 12, 6) = 4 thin "m/s"$.],
)

// SHORT-04
#vp-question(
  [Hệ người và dù $80 thin "kg"$ đang rơi thẳng đứng. Tại thời điểm lực cản hướng lên có độ lớn $784 thin "N"$, gia tốc của hệ bằng bao nhiêu m/s²? Coi hệ chỉ chịu trọng lực và lực cản, lấy $g = "9,8" thin "m/s"^2$.],
  type: "short", ans: "0", sol: [$P = 80 times "9,8" = 784 thin "N" = F_c$ nên hợp lực và gia tốc tại thời điểm xét đều bằng không.],
)

// SHORT-05
#vp-question(
  [Con trượt $"0,5" thin "kg"$ chuyển động thẳng đều trên ray ngang. Ở $t_1 = "1,0" thin "s"$, tọa độ là $"0,2" thin "m"$; ở $t_2 = "4,0" thin "s"$, tọa độ là $"1,4" thin "m"$. Tính độ lớn hợp lực theo đơn vị N.
    #align(center, bai-09-hinh("toa-do"))
  ], type: "short", ans: "0", sol: [Đề đã cho chuyển động thẳng đều nên $a = 0$, $F = 0 thin "N"$. Hai điểm cho $v = frac("1,4" - "0,2", 4 - 1) = "0,4" thin "m/s"$, không làm hợp lực khác không.],
)

= Phần IV. Tự luận
#sbt-essay-instructions(reset: true)[Trình bày lập luận, công thức, phép tính và kết luận phù hợp với yêu cầu của bài.]

// ESSAY-01
#vp-question(
  [Một học sinh cho rằng: “Muốn vật chuyển động liên tục thì phải liên tục tác dụng lực đẩy; khi thôi đẩy, vật tự nhiên phải dừng.”
    #parbreak() a) So sánh quan niệm này với định luật 1 Newton. Phân biệt chuyển động và sự biến đổi vận tốc.
    #parbreak() b) Vì sao quan sát các vật chuyển động trên mặt sàn thông thường dễ dẫn đến nhận xét trên?
    #parbreak() c) Xe hàng được đẩy chạy thẳng đều trên sàn ngang; khi buông tay, xe chậm dần rồi dừng. Giải thích bằng các lực tác dụng. Nếu tổng lực cản bằng không sau lúc buông tay, xe sẽ thế nào?
  ], type: "essay", lines: 12,
  sol: [a) Trong hệ quán tính, vật giữ nguyên vận tốc khi hợp lực bằng không. Hợp lực khác không làm biến đổi vận tốc; không cần hợp lực để duy trì vận tốc không đổi.
    #parbreak() b) Trên sàn thường có ma sát và lực cản. Khi thôi đẩy, các lực cản vẫn còn và làm vật chậm lại; dễ nhầm tác dụng của lực cản với việc “chuyển động tự mất đi”.
    #parbreak() c) Khi thẳng đều: lực đẩy cân bằng tổng lực cản ngang; phản lực cân bằng trọng lực. Khi buông tay: chỉ còn hợp lực cản ngược chiều vận tốc nên xe chậm lại. Nếu lực cản bằng không, xe tiếp tục thẳng đều với vận tốc tại lúc buông tay.
    #align(center, bai-09-hinh("xe-hang-luc"))
  ],
)

// ESSAY-02
#vp-question(
  [Xét hành khách ngồi trên ghế ô tô trong hai tình huống: xe đang đứng yên bị đẩy mạnh về trước do va chạm từ phía sau; xe đang chạy $80 thin "km/h"$ thì phanh gấp.
    #align(center, bai-09-hinh("hai-tinh-huong"))
    a) Trong tình huống thứ nhất, so sánh xu hướng chuyển động của đầu và thân khi lưng ghế đẩy thân về trước. Tựa đầu có vai trò gì?
    #parbreak() b) Trong tình huống thứ hai, giải thích xu hướng chuyển động của hành khách so với xe và vai trò của dây an toàn ba điểm.
    #parbreak() c) Có thể nói “quán tính là lực đẩy người về trước hoặc sau” trong hệ mặt đất không? Giải thích.
  ], type: "essay", lines: 12,
  sol: [a) Ghế truyền lực làm thân tăng vận tốc về trước. Đầu có xu hướng giữ trạng thái ban đầu nên bị trễ so với thân. Tựa đầu truyền lực cho đầu, hạn chế đầu ngả ra sau tương đối với thân.
    #parbreak() b) Khi xe giảm tốc, người có xu hướng giữ vận tốc cũ nên chuyển động về trước so với xe. Dây an toàn tác dụng lực hãm lên người, giúp giảm vận tốc của người cùng xe và hạn chế dịch chuyển tương đối.
    #parbreak() c) Không. Quán tính là tính chất của vật; trong hệ mặt đất quán tính, sự biến đổi vận tốc do các lực tương tác thực như lực của ghế, tựa đầu, dây đai. Không cần thêm một “lực do quán tính” để giải thích.],
)

// ESSAY-03
#vp-question(
  [Hành khách thả viên bi từ độ cao $h = "1,5" thin "m"$ so với sàn trong toa tàu kín. Bi ban đầu đứng yên so với toa; ray ngang, bỏ qua rung xóc và lực cản không khí. Gọi O là điểm trên sàn thẳng dưới vị trí thả, gắn với toa.
    #align(center, bai-09-hinh("tha-vat"))
    a) Bi chạm sàn ở đâu so với O khi tàu đứng yên và khi tàu chạy thẳng đều $100 thin "km/h"$?
    #parbreak() b) Nếu tàu bắt đầu phanh ngay khi thả bi và giảm tốc trong suốt thời gian bi rơi, bi chạm sàn về phía nào so với O? Giải thích trong hệ mặt đất.
    #parbreak() c) Với cùng điều kiện ban đầu tương đối trong toa và cùng môi trường ngoài, chỉ bằng các thí nghiệm cơ học bên trong, có thể phân biệt toa đứng yên với toa thẳng đều hay không? Vì sao?
  ], type: "essay", lines: 12,
  sol: [a) Cả hai trường hợp bi đều chạm O. Nếu tàu đứng yên, bi không có vận tốc ngang; nếu tàu thẳng đều, bi và O có cùng vận tốc ngang và cùng độ dịch chuyển ngang trong thời gian rơi.
    #parbreak() b) Bi giữ vận tốc ngang ban đầu do không chịu lực ngang; O trên sàn giảm vận tốc cùng tàu. Bi chạm phía trước O. Nếu hãm đều với độ lớn gia tốc $a$, độ lệch là $Delta x = frac(1,2) a t^2 = frac(a h,g)$, với $t = sqrt(2 h/g)$.
    #align(center, bai-09-hinh("roi-khi-phanh"))
    c) Không có thí nghiệm cơ học nội bộ như vậy để phân biệt hai hệ quán tính chỉ bằng chuyển động thẳng đều tương đối. Các định luật cơ học có cùng dạng trong hai hệ. Trường hợp phanh khác vì hệ toa có gia tốc.],
)

// ESSAY-04
#vp-question(
  [Thí nghiệm khảo sát định luật 1 Newton dùng ray đệm khí nằm ngang, con trượt gắn tấm chắn sáng và hai cổng quang A, B nối với đồng hồ đo thời gian. Hai cổng cách nhau $s = "0,50" thin "m"$; tấm chắn có bề rộng $d = 20 thin "mm"$ theo hướng chuyển động.
    #align(center, bai-09-hinh("cong-quang"))
    a) Mô tả cách bố trí, cân bằng ray và tác dụng của đệm khí. Vì sao cần thôi đẩy con trượt trước khi đo?
    #parbreak() b) Nêu cách ước lượng tốc độ qua mỗi cổng từ thời gian chắn sáng. Hai giá trị tốc độ bằng nhau có đủ để kết luận chắc chắn vận tốc không đổi ở mọi điểm giữa hai cổng không? Đề xuất cách kiểm tra thêm.
    #parbreak() c) Đo được $t_A = t_B = "0,040" thin "s"$. Tính $v_A$, $v_B$ và nhận xét trong mô hình ray ngang, lực cản không đáng kể. Nếu chuyển động đều, thời gian giữa hai lần mép trước tấm chắn tới A và B dự kiến bằng bao nhiêu?
  ], type: "essay", lines: 12,
  sol: [a) Dùng thước thủy và vít chỉnh để ray nằm ngang, bật máy tạo lớp khí giảm tiếp xúc giữa ray và con trượt; không coi mọi ma sát thực tế bị triệt tiêu tuyệt đối. Gắn tấm chắn, đặt hai cổng và nối đồng hồ. Thôi đẩy trước khi đo để không còn lực tay làm thay đổi vận tốc.
    #parbreak() b) $v_A approx d/t_A$, $v_B approx d/t_B$ là tốc độ trung bình trong quãng ngắn chắn sáng, gần tốc độ tại cổng khi vận tốc biến đổi ít. Hai số bằng nhau chỉ là bằng chứng phù hợp, chưa chứng minh vận tốc không đổi tại mọi thời điểm. Có thể đổi vị trí cổng, dùng thêm cổng hoặc ghi vị trí theo thời gian ở nhiều điểm.
    #parbreak() c) $d = "0,020" thin "m"$ nên $v_A = v_B = frac("0,020","0,040") = "0,50" thin "m/s"$. Cùng với giả thiết hợp lực gần bằng không, số liệu phù hợp chuyển động thẳng đều. Thời gian dự kiến giữa hai cổng $Delta t = s/v = "1,0" thin "s"$.],
)

// ESSAY-05
#vp-question(
  [Xe tải chở thùng hàng $M = 500 thin "kg"$ trên sàn ngang; hệ số ma sát nghỉ $mu_n = "0,35"$. Xe chạy thẳng với $v_0 = 72 thin "km/h" = 20 thin "m/s"$ rồi phanh. Thùng không được chằng buộc, chỉ chịu trọng lực và lực tiếp xúc với sàn; bỏ qua lực cản không khí. Lấy $g = "9,8" thin "m/s"^2$ và dùng $F = m a$, $F_("msn,max") = mu_n N$.
    #align(center, bai-09-hinh("thung-hang"))
    a) Vẽ và phân tích các lực tác dụng lên thùng trong hệ mặt đất khi thùng giảm tốc cùng xe. Lực nào giữ thùng không trượt về phía cabin?
    #parbreak() b) Tính độ lớn gia tốc hãm lớn nhất để thùng còn đứng yên so với sàn.
    #parbreak() c) Giả sử xe có thể hãm đều ở giá trị giới hạn đó, tính quãng đường phanh ngắn nhất để thùng không trượt. Chỉ tính từ lúc bắt đầu phanh, không tính thời gian phản ứng.
  ], type: "essay", lines: 12,
  sol: [a) Trọng lực $P = M g = 4900 thin "N"$ hướng xuống; phản lực $N = P$ hướng lên; ma sát nghỉ hướng về sau xe, làm thùng giảm tốc cùng xe. Quán tính không phải lực đẩy thùng về trước.
    #align(center, bai-09-hinh("luc-thung"))
    b) Gọi $a_h$ là độ lớn gia tốc hãm: $M a_h = F_("msn") <= mu_n M g$. Suy ra $a_("max") = mu_n g = "3,43" thin "m/s"^2$; ma sát giới hạn $1715 thin "N"$.
    #parbreak() c) Chọn chiều dương theo vận tốc ban đầu, $a = -"3,43" thin "m/s"^2$. Từ $0 - v_0^2 = 2 a s$, được $s_("min") = frac(20^2, 2 times "3,43") approx "58,31" thin "m"$. Đây là giới hạn không trượt của mô hình, không phải toàn bộ khoảng cách dừng xe.
    #align(center, bai-09-hinh("do-thi-phanh"))
  ],
)

#import "../cau-hinh.typ": *
#import "images/bai-11-hinh.typ": bai-11-hinh

#sbt-bai(num: "11", title: "Định luật 3 Newton", label: <bai-11>)

= Phần I. Trắc nghiệm khách quan
#sbt-instructions(reset: true)[Chọn một phương án đúng trong mỗi câu. Xét trong hệ quy chiếu quán tính, theo mô hình cơ học Newton.]

// MCQ-01
#vp-question(
  [Ô tô đứng yên trên mặt cầu, chịu trọng lực $bold(P)$ do Trái Đất tác dụng và lực pháp tuyến $bold(N)$ của mặt cầu. Lực nào là phản lực của $bold(P)$ theo định luật 3 Newton?],
  type: "mcq",
  options: (
    [Lực pháp tuyến $bold(N)$ của mặt cầu tác dụng lên ô tô.],
    [Lực ô tô nén xuống mặt cầu.],
    [Lực hấp dẫn của ô tô tác dụng lên Trái Đất.],
    [Lực ma sát giữa bánh xe và mặt cầu.],
  ),
  ans: "C",
  sol: [Hai vật tương tác hấp dẫn là ô tô và Trái Đất. Phản lực của trọng lực tác dụng lên ô tô là lực ô tô hút Trái Đất. $bold(P)$ và $bold(N)$ cùng tác dụng lên ô tô nên không phải cặp lực – phản lực.],
)

// MCQ-02
#vp-question(
  [Một chú ngựa kéo một chiếc xe hàng chuyển động thẳng nhanh dần đều trên đường nông thôn. Nếu theo Định luật 3 Newton, lực do ngựa kéo xe là $bold(F)_("nx")$ có độ lớn luôn bằng độ lớn lực do xe kéo lại ngựa $bold(F)_("xn")$. Lý do cốt lõi làm cho chiếc xe vẫn gia tốc về phía trước là],
  type: "mcq",
  options: (
    [lực do ngựa kéo xe $bold(F)_("nx")$ xuất hiện trước lực xe kéo lại ngựa $bold(F)_("xn")$ một khoảng thời gian ngắn.],
    [gia tốc của chiếc xe chỉ phụ thuộc vào hợp lực tác dụng lên chính chiếc xe, không phụ thuộc vào lực xe tác dụng lên ngựa.],
    [lực kéo của ngựa có độ lớn thực tế lớn hơn lực kéo lại của xe do ngựa có sinh công sinh học.],
    [hai lực $bold(F)_("nx")$ và $bold(F)_("xn")$ đặt vào cùng một vật nên chúng triệt tiêu lẫn nhau.],
  ),
  ans: "B",
  sol: [Gia tốc của xe chỉ phụ thuộc vào hợp lực tác dụng lên xe ($bold(F)_("nx") + bold(F)_("ms_xe") = m_("xe") bold(a)$). Lực xe kéo ngựa tác dụng lên ngựa nên không được cộng vào hợp lực tác dụng lên xe.],
)

// MCQ-03
#vp-question(
  [Ô tô khối lượng $"2,8" thin "tấn"$ va chạm một chiều với xe máy khối lượng $100 thin "kg"$. Bỏ qua các ngoại lực theo phương va chạm trong thời gian tiếp xúc. Gọi $F_1$, $F_2$ là độ lớn lực ô tô tác dụng lên xe máy và lực xe máy tác dụng lên ô tô; $a_1$, $a_2$ là độ lớn gia tốc tương ứng của xe máy và ô tô tại cùng một thời điểm lực tương tác khác 0. Kết luận nào đúng?],
  type: "mcq",
  options: (
    [$F_1 > F_2$ và $a_1 > a_2$.],
    [$F_1 = F_2$ và $a_1 = a_2$.],
    [$F_1 = F_2$ và $a_1 > a_2$.],
    [$F_1 > F_2$ và $a_1 = a_2$.],
  ),
  ans: "C",
  sol: [Định luật 3 Newton cho $F_1 = F_2$. Vì khối lượng xe máy nhỏ hơn nên $a_1/a_2 = 2800/100 = 28 > 1$.],
)

// MCQ-04
#vp-question(
  [Một bệ phóng khối lượng $M = 1000 thin "kg"$ đẩy vật khối lượng $m = 5 thin "kg"$ bằng lò xo nhẹ. Hệ ban đầu đứng yên và được chuyển động tự do theo phương ngang; bỏ qua ngoại lực ngang. Trong lúc lò xo đẩy hai vật, gọi $F_d$ là độ lớn lực lò xo đẩy vật và $F_s$ là độ lớn lực lò xo đẩy bệ. Nhận định nào đúng?],
  type: "mcq",
  options: (
    [$F_d > F_s$ vì vật được phóng có gia tốc lớn hơn.],
    [$F_d = F_s$, nhưng độ lớn gia tốc của bệ nhỏ hơn vì khối lượng bệ lớn hơn.],
    [$F_d < F_s$ vì bệ có khối lượng lớn hơn.],
    [$F_d$ và $F_s$ cân bằng nhau trên từng vật nên cả hai vật đều không có gia tốc.],
  ),
  ans: "B",
  sol: [Với lò xo coi như không có khối lượng, hai lực ở hai đầu có cùng độ lớn. Định luật 3 Newton tại từng chỗ tiếp xúc cho $F_d = F_s$. Do đó $a_s/a_d = m/M = 1/200$. Hai lực này truyền qua lò xo, tác dụng lên hai vật khác nhau; không phải hai lực cân bằng trên một vật.],
)

// MCQ-05
#vp-question(
  [Hai lực kế lò xo A và B giống hệt nhau được móc nối tiếp với nhau. Học sinh dùng tay kéo lực kế A với một lực $50 thin "N"$, trong khi đầu còn lại của lực kế B được móc cố định vào tường phòng thực hành. Hệ đã cân bằng; bỏ qua khối lượng của hai lực kế. Số chỉ của lực kế A và lực kế B lần lượt là],
  type: "mcq",
  options: (
    [$50 thin "N"$ và $0 thin "N"$.],
    [$25 thin "N"$ và $25 thin "N"$.],
    [$50 thin "N"$ và $50 thin "N"$.],
    [$100 thin "N"$ và $50 thin "N"$.],
  ),
  ans: "C",
  sol: [Hai lực kế mắc nối tiếp chịu cùng một lực căng dây truyền qua do tương tác kéo hai đầu, do đó đều chỉ $50 thin "N"$.],
)

// MCQ-06
#vp-question(
  [Trong mô hình động cơ phản lực, động cơ đẩy dòng khí về phía sau. Lực đẩy động cơ về phía trước là],
  type: "mcq",
  options: (
    [lực của dòng khí đẩy vào một điểm tựa cố định phía sau máy bay.],
    [lực của dòng khí tác dụng trở lại lên động cơ khi động cơ đẩy khí về phía sau.],
    [trọng lực của dòng khí nóng tác dụng lên máy bay.],
    [quán tính của nhiên liệu tự sinh ra lực đẩy.],
  ),
  ans: "B",
  sol: [Động cơ tác dụng lực lên dòng khí về phía sau; dòng khí tác dụng lực ngược lại lên động cơ về phía trước. Đây là cặp lực – phản lực, không cần dòng khí đẩy vào một điểm tựa bên ngoài.],
)

// MCQ-07
#vp-question(
  [Một vận động viên bơi lội dùng hai chân đạp vào thành bể để đổi chiều và tăng tốc. Phát biểu nào sau đây giải thích đúng bản chất vật lý?],
  type: "mcq",
  options: (
    [Lực do chân tác dụng lên thành bể đồng thời tác dụng trực tiếp lên cơ thể VĐV và đẩy VĐV ra xa.],
    [VĐV tác dụng lực đạp vào thành bể, thành bể tác dụng phản lực đẩy có độ lớn đúng bằng lực đạp lên chân VĐV làm VĐV gia tốc ra xa.],
    [Thành bể không bị di chuyển nên không tác dụng lực nào lên chân VĐV.],
    [Lực đạp của VĐV lớn hơn phản lực của thành bể nên VĐV mới di chuyển được.],
  ),
  ans: "B",
  sol: [VĐV đạp vào thành bể lực $bold(F)$, thành bể đẩy lại chân VĐV phản lực $-bold(F)$ hướng ra ngoài làm VĐV gia tốc vọt đi.],
)

// MCQ-08
#vp-question(
  [Một quả táo khối lượng $"0,2" thin "kg"$ đứt cành rơi tự do từ trên cây xuống đất. Trái Đất hút quả táo một lực $F_1$, quả táo hút Trái Đất một lực $F_2$. Cho khối lượng Trái Đất là $M approx 6 times 10^24 thin "kg"$. Lấy $g = "9,8" thin "m/s"^2$. Gia tốc $a_("TĐ")$ mà Trái Đất nhận được do lực hút của quả táo có độ lớn khoảng],
  type: "mcq",
  options: (
    [$a_("TĐ") = "9,8" thin "m/s"^2$.],
    [$a_("TĐ") = 0 thin "m/s"^2$.],
    [$a_("TĐ") approx "3,27" times 10^(-25) thin "m/s"^2$.],
    [$a_("TĐ") approx "1,96" times 10^(-24) thin "m/s"^2$.],
  ),
  ans: "C",
  sol: [$F_1 = F_2 = m g = "0,2" times "9,8" = "1,96" thin "N"$. Gia tốc Trái Đất $a_("TĐ") = F_2 / M = "1,96" / (6 times 10^24) approx "3,27" times 10^(-25) thin "m/s"^2$.],
)

// MCQ-09
#vp-question(
  [Một vận động viên nhảy cao rơi tự do xuống nệm mút bảo hiểm. Trong giai đoạn cơ thể VĐV chạm vào nệm mút và làm nệm bị nén lún sâu nhất, phát biểu nào sau đây đúng?],
  type: "mcq",
  options: (
    [Lực do người ép xuống nệm xuất hiện trước, phản lực do nệm đẩy người xuất hiện sau khi nệm bị biến dạng.],
    [Lực do người ép xuống nệm có độ lớn lớn hơn phản lực do nệm đẩy người vì người đang rơi từ trên cao xuống.],
    [Lực do người ép xuống nệm và phản lực do nệm đẩy người luôn xuất hiện đồng thời, mất đi đồng thời và có độ lớn bằng nhau tại mọi thời điểm.],
    [Khi nệm bị lún sâu nhất và người tạm thời dừng lại, phản lực của nệm triệt tiêu hoàn toàn với trọng lực của người.],
  ),
  ans: "C",
  sol: [Lực và phản lực luôn xuất hiện, biến thiên và mất đi đồng thời, độ lớn luôn bằng nhau tại mọi thời điểm theo Định luật 3 Newton.],
)

// MCQ-10
#vp-question(
  [Một người chèo thuyền. Muốn chiếc thuyền chuyển động tiến về phía trước, người đó phải khua mái chèo tác dụng lực đẩy nước về phía nào?],
  type: "mcq",
  options: (
    [Đẩy nước về phía trước để nước kéo thuyền đi theo.],
    [Đẩy nước về phía sau để nước tác dụng phản lực đẩy mái chèo và thuyền tiến về phía trước.],
    [Đẩy nước xuống phía dưới đáy sông để nâng thuyền nổi lên giảm ma sát.],
    [Đẩy nước sang hai bên mạn thuyền để tạo dòng chảy xoáy.],
  ),
  ans: "B",
  sol: [Người chèo đẩy nước về sau, phản lực của nước đẩy mái chèo và thuyền tiến về trước.],
)

// MCQ-11
#vp-question(
  [Học sinh đứng trên cân đo lực và bật nhảy. Trong khoảng chân còn tiếp xúc với cân và khối tâm có gia tốc hướng lên, số chỉ của cân so với trọng lượng $P = m g$ như thế nào? Coi cân đáp ứng tức thời.],
  type: "mcq",
  options: (
    [Nhỏ hơn $P$.],
    [Lớn hơn $P$.],
    [Luôn bằng $P$.],
    [Bằng 0.],
  ),
  ans: "B",
  sol: [Chọn chiều dương hướng lên: $N - m g = m a$. Vì $a > 0$ nên $N > P$. Lực người ép lên cân có độ lớn bằng $N$, là số chỉ lực của cân.],
)

// MCQ-12
#vp-question(
  [Hai vận động viên kéo co kéo hai đầu một sợi dây thừng nhẹ không giãn theo hai hướng ngược nhau. Người thứ nhất kéo với lực $300 thin "N"$, người thứ hai kéo với lực $300 thin "N"$. Sợi dây đứng yên cân bằng. Lực căng $T$ tại điểm chính giữa của sợi dây thừng có độ lớn bằng],
  type: "mcq",
  options: (
    [$0 thin "N"$.],
    [$300 thin "N"$.],
    [$600 thin "N"$.],
    [$150 thin "N"$.],
  ),
  ans: "B",
  sol: [Đoạn dây đứng yên cân bằng chịu hai lực kéo $300 thin "N"$ ở hai đầu nên lực căng dây truyền đi mọi điểm là $T = 300 thin "N"$.],
)

// MCQ-13
#vp-question(
  [Một tên lửa đang hoạt động trong chân không. Khi bỏ qua ngoại lực khác, tên lửa có thể tăng tốc nhờ],
  type: "mcq",
  options: (
    [lực đẩy của các luồng gió vũ trụ tác dụng vào vỏ tên lửa.],
    [phản lực do dòng khí nhiên liệu bị đốt cháy phụt mạnh ra phía sau đuôi tác dụng lại tên lửa.],
    [quán tính còn lại từ giai đoạn phóng dưới mặt đất.],
    [lực hút hấp dẫn của Mặt Trời kéo tên lửa đi.],
  ),
  ans: "B",
  sol: [Chuyển động phản lực của nhiên liệu bị đốt cháy phụt ra đuôi tác dụng lực đẩy lên thân tên lửa ngay trong chân không.],
)

// MCQ-14
#vp-question(
  [Đầu máy tàu hỏa tác dụng lực $bold(F)_1$ lên toa xe nối ngay sau nó. Toa xe tác dụng trở lại đầu máy lực $bold(F)'_1$. Khi đoàn tàu đang phanh chậm dần đều, mối quan hệ giữa độ lớn hai lực $F_1$ và $F'_1$ là],
  type: "mcq",
  options: (
    [$F_1 > F'_1$.],
    [$F_1 < F'_1$.],
    [$F_1 = F'_1$.],
    [$F_1 = 0$ còn $F'_1 > 0$.],
  ),
  ans: "C",
  sol: [Lực và phản lực luôn có độ lớn bằng nhau $F_1 = F'_1$ trong mọi trạng thái chuyển động, kể cả khi có gia tốc.],
)

// MCQ-15
#vp-question(
  [Trong giai đoạn đạp chân ra sau để tăng tốc khi đi bộ, bàn chân không trượt trên đường. Lực ngoài hướng về phía trước tác dụng lên người là],
  type: "mcq",
  options: (
    [lực do cơ chân của người tự co giãn sinh ra đẩy thân người đi.],
    [lực ma sát nghỉ do mặt đường tác dụng vào đế giày hướng về phía trước.],
    [lực ma sát trượt do đế giày tác dụng lên mặt đường hướng về phía sau.],
    [áp lực của không khí tác dụng vào lưng người.],
  ),
  ans: "B",
  sol: [Chân đạp đường về sau, lực ma sát nghỉ của mặt đường tác dụng lên đế giày hướng về trước làm người tiến lên.],
)

// MCQ-16
#vp-question(
  [Nhận định nào sau đây là SAI khi phát biểu về Định luật 3 Newton?],
  type: "mcq",
  options: (
    [Lực và phản lực luôn cùng phương, ngược chiều và có cùng độ lớn.],
    [Lực và phản lực đặt vào hai vật khác nhau nên không cân bằng nhau trên từng vật riêng lẻ.],
    [Lực và phản lực là hai lực cân bằng vì chúng có độ lớn bằng nhau và ngược chiều.],
    [Lực và phản lực luôn cùng bản chất vật lý (cùng là lực hấp dẫn, lực đàn hồi hoặc lực điện từ).],
  ),
  ans: "C",
  sol: [Cặp lực – phản lực đặt vào hai vật tương tác khác nhau nên không bao giờ là hai lực cân bằng (vì lực cân bằng phải tác dụng lên cùng một vật).],
)

// MCQ-17
#vp-question(
  [Xét hiện tượng giật lùi của súng khi bắn. Khi bóp cò, viên đạn khối lượng $m$ vọt ra khỏi nòng súng với vận tốc lớn, đồng thời báng súng bị giật lùi nén mạnh vào vai chiến sĩ. Lực làm báng súng giật lùi về phía sau là],
  type: "mcq",
  options: (
    [lực quán tính của không khí tràn vào nòng súng.],
    [lực do khí thuốc tác dụng lên phần đáy nòng súng về phía sau.],
    [trọng lực của súng đột ngột tăng lên khi bắn.],
    [lực ma sát giữa viên đạn và rãnh xoắn nòng súng đẩy súng lùi.],
  ),
  ans: "B",
  sol: [Phản lực của dòng khí thuốc nổ tác dụng ngược lại lên đáy nòng súng là nguyên nhân chính đẩy súng giật lùi.],
)

// MCQ-18
#vp-question(
  [Hai con trượt khối lượng $m_1 = "0,2" thin "kg"$ và $m_2 = "0,4" thin "kg"$ va chạm trên ray ngang không ma sát. Tại một thời điểm tiếp xúc, độ lớn gia tốc của vật 2 là $a_2 = 50 thin "m/s"^2$. Độ lớn gia tốc của vật 1 tại cùng thời điểm bằng],
  type: "mcq",
  options: ([$25 thin "m/s"^2$.], [$50 thin "m/s"^2$.], [$100 thin "m/s"^2$.], [$200 thin "m/s"^2$.]),
  ans: "C",
  sol: [$F_1 = F_2$ nên $m_1 a_1 = m_2 a_2$. Suy ra $a_1 = frac("0,4", "0,2") times 50 = 100 thin "m/s"^2$.],
)

// MCQ-19
#vp-question(
  [Một du khách khối lượng $60 thin "kg"$ nhảy từ chiếc xuồng khối lượng $140 thin "kg"$ lên bờ. Lực do chân du khách đạp vào xuồng là $F_1$, lực do xuồng tác dụng đẩy du khách vọt lên bờ là $F_2$. Tỉ số độ lớn $F_1 / F_2$ bằng],
  type: "mcq",
  options: (
    [$"1,0"$.],
    [$6/14 approx "0,43"$.],
    [$14/6 approx "2,33"$.],
    [Phụ thuộc vào vận tốc du khách khi nhảy.],
  ),
  ans: "A",
  sol: [Lực tác dụng và phản lực luôn có độ lớn bằng nhau tại mọi thời điểm nên tỉ số độ lớn bằng $"1,0"$.],
)

// MCQ-20
#vp-question(
  [Xét các cặp lực sau đây, cặp lực nào KHÔNG phải là cặp lực và phản lực theo Định luật 3 Newton?],
  type: "mcq",
  options: (
    [Lực hút của Trái Đất tác dụng lên Mặt Trăng và lực hút của Mặt Trăng tác dụng lên Trái Đất.],
    [Lực hút của nam châm tác dụng lên thanh sắt và lực hút của thanh sắt tác dụng lên nam châm.],
    [Trọng lực $bold(P)$ tác dụng lên cuốn sách đặt trên bàn và pháp lực $bold(N)$ do mặt bàn tác dụng nâng cuốn sách.],
    [Lực tay người kéo dây cao su giãn ra và lực đàn hồi của dây cao su kéo tay người lại.],
  ),
  ans: "C",
  sol: [$bold(P)$ (Trái Đất hút sách) và $bold(N)$ (mặt bàn nâng sách) cùng đặt vào cuốn sách, nên không phải là cặp lực – phản lực.],
)

= Phần II. Trắc nghiệm Đúng/Sai
#sbt-instructions(reset: true)[Xác định mỗi phát biểu a), b), c), d) là đúng hay sai.]

// TF-01
#vp-question(
  [Ô tô khối lượng $M = 2600 thin "kg"$ kéo rơ-móc khối lượng $m = 800 thin "kg"$ trên đường ngang với gia tốc $"1,5" thin "m/s"^2$. Coi dây nối nhẹ, không giãn; bỏ qua lực cản lên rơ-móc.],
  type: "tf",
  statements: (
    [Lực kéo do dây tác dụng lên rơ-móc có độ lớn $1200 thin "N"$.],
    [Lực do dây kéo ngược lại ô tô nhỏ hơn $1200 thin "N"$ vì ô tô kéo rơ-móc tiến lên.],
    [Sau khi dây đứt và mất căng, dây không còn truyền lực kéo giữa xe và rơ-móc.],
    [Hai lực do dây tác dụng lên xe và rơ-móc là hai lực cân bằng trên một vật.],
  ),
  ans-tf: ("Đ", "S", "Đ", "S"),
  sol: [a) $T = m a = 800 times "1,5" = 1200 thin "N"$. (Đúng)
    #parbreak() b) Với dây nhẹ, lực căng ở hai đầu bằng nhau, đều bằng $1200 thin "N"$. (Sai)
    #parbreak() c) Dây mất căng không truyền lực kéo. (Đúng)
    #parbreak() d) Hai lực tác dụng lên hai vật khác nhau. Xét chi tiết, mỗi cặp lực – phản lực nằm tại một tiếp xúc xe–dây hoặc rơ-móc–dây; hai lực ở hai đầu dây có độ lớn bằng nhau trong mô hình dây nhẹ. (Sai)],
)

// TF-02
#vp-question(
  [Dùng hai cảm biến A, B để đo lực chúng tác dụng lên nhau theo cùng một phương. Hai kênh được quy về cùng chiều dương và đồng bộ thời gian. Phân biệt lực tương tác lí tưởng với số liệu đo có sai số.],
  type: "tf",
  statements: (
    [Dữ liệu đo thực tế luôn thỏa mãn chính xác $F_A(t) = -F_B(t)$ ở mọi thời điểm, kể cả khi cảm biến có sai số.],
    [Giữ A cố định và kéo B khiến lực tương tác tác dụng lên B lớn hơn lực tương tác tác dụng lên A.],
    [Trong mô hình lí tưởng, hai lực tương tác xuất hiện, biến thiên và mất đi đồng thời.],
    [Trong mô hình lí tưởng, độ lớn cực đại của hai lực trong cùng một va chạm bằng nhau.],
  ),
  ans-tf: ("S", "S", "Đ", "Đ"),
  sol: [a) Sai số hiệu chuẩn, độ phân giải và đáp ứng của cảm biến có thể làm dữ liệu lệch khỏi quan hệ lí tưởng. (Sai)
    #parbreak() b) Hai lực tương tác vẫn bằng nhau về độ lớn theo định luật 3 Newton. (Sai)
    #parbreak() c) Đây là tính chất của cặp lực – phản lực trong mô hình đang xét. (Đúng)
    #parbreak() d) Từ $F_A(t) = -F_B(t)$ suy ra $max(abs(F_A)) = max(abs(F_B))$ trên cùng khoảng va chạm. (Đúng)],
)

// TF-03
#vp-question(
  [Xét các tương tác trong phạm vi cơ học Newton:],
  type: "tf",
  statements: (
    [Lực và phản lực tác dụng lên hai vật khác nhau nên không cân bằng nhau trên từng vật riêng lẻ.],
    [Phản lực của trọng lực tác dụng lên chậu cây là lực chậu cây nén xuống sàn.],
    [Mỗi lực tương tác giữa hai vật đều có lực đối ứng do vật còn lại tác dụng.],
    [Định luật 3 Newton chỉ áp dụng khi các vật đứng yên hoặc chuyển động thẳng đều.],
  ),
  ans-tf: ("Đ", "S", "Đ", "S"),
  sol: [a) Hai lực không cùng tác dụng lên một vật. (Đúng)
    #parbreak() b) Phản lực của trọng lực tác dụng lên chậu là lực hấp dẫn của chậu tác dụng lên Trái Đất. Lực chậu nén sàn là phản lực của lực pháp tuyến do sàn tác dụng lên chậu. (Sai)
    #parbreak() c) Lực xuất hiện theo cặp tương tác trong mô hình đang xét. (Đúng)
    #parbreak() d) Các vật có thể có gia tốc mà vẫn tuân theo định luật 3 Newton. (Sai)],
)

// TF-04
#vp-question(
  [Cầu thủ sút quả bóng khối lượng $"0,45" thin "kg"$ từ nghỉ đến tốc độ $24 thin "m/s"$ trong thời gian tiếp xúc $"0,02" thin "s"$. Xét chuyển động một chiều và bỏ qua xung lượng của các lực khác tác dụng lên bóng trong khoảng này.],
  type: "tf",
  statements: (
    [Độ lớn lực trung bình do chân tác dụng lên bóng bằng $540 thin "N"$.],
    [Độ lớn lực trung bình do bóng tác dụng lên chân trong cùng khoảng tiếp xúc bằng $540 thin "N"$.],
    [Lực của bóng tác dụng lên chân ngược chiều lực của chân tác dụng lên bóng.],
    [Bóng tăng tốc nhanh hơn chứng tỏ lực chân tác dụng lên bóng lớn hơn lực bóng tác dụng lên chân.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [a) $F_("tb") = frac(m Delta v, Delta t) = frac("0,45" times 24, "0,02") = 540 thin "N"$. (Đúng)
    #parbreak() b) Hai lực bằng nhau về độ lớn tại từng thời điểm, nên các lực trung bình trên cùng khoảng cũng bằng nhau về độ lớn. (Đúng)
    #parbreak() c) Hai lực tương tác ngược chiều. (Đúng)
    #parbreak() d) Hai lực vẫn có cùng độ lớn. Gia tốc còn phụ thuộc khối lượng và các lực khác; không thể từ lực của bóng kết luận chân chắc chắn bị hãm hay bật lùi. (Sai)],
)

// TF-05
#vp-question(
  [Xét chuyển động phản lực một chiều. Khi dùng bảo toàn động lượng, coi xung lượng ngoại lực theo phương xét bằng 0; hệ tên lửa và phần khí sắp phụt ra ban đầu đứng yên trong hệ quy chiếu đang dùng.],
  type: "tf",
  statements: (
    [Có thể giải thích chuyển động tên lửa bằng tương tác tên lửa–khí và bảo toàn động lượng của toàn hệ tên lửa cùng khí phụt ra.],
    [Người đứng trên xe trượt ngang không ma sát ném đá về sau thì hệ người–xe nhận xung lượng về trước.],
    [Sau một lần phụt khí theo một chiều, phần thân tên lửa và phần khí chuyển động ngược chiều nhau trong hệ quy chiếu đã chọn.],
    [Vật đang đứng yên phun nước về phía sau sẽ nhận xung lượng phản lực về phía sau.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [a) Phải xét cả khí để có hệ vật chất xác định; tên lửa riêng trao đổi khối lượng. (Đúng)
    #parbreak() b) Người đẩy đá về sau, đá tác dụng lực lên người về trước trong lúc ném. (Đúng)
    #parbreak() c) Tổng động lượng ban đầu bằng 0; sau khi tách, hai phần có động lượng đối nhau. (Đúng)
    #parbreak() d) Xung lượng phản lực hướng ngược dòng nước được đẩy ra, tức về phía trước. (Sai)],
)

= Phần III. Trắc nghiệm trả lời ngắn
#sbt-instructions(reset: true)[Tính và ghi kết quả theo số thích hợp.]

// SHORT-01
#vp-question(
  [Hai viên bi A, B có khối lượng $m_A = "0,10" thin "kg"$ và $m_B = "0,30" thin "kg"$ va chạm trên ray ngang không ma sát. Tại một thời điểm tiếp xúc, độ lớn gia tốc của B là $"12,0" thin "m/s"^2$. Tính độ lớn gia tốc của A tại cùng thời điểm, theo đơn vị m/s².],
  type: "short",
  ans: "36",
  sol: [Hai lực tương tác có cùng độ lớn: $m_A a_A = m_B a_B$. Suy ra $a_A = frac("0,30", "0,10") times "12,0" = 36 thin "m/s"^2$.],
)

// SHORT-02
#vp-question(
  [Trong một va chạm, lực trung bình của hàng rào tác dụng lên ô tô có độ lớn $140 thin "kN"$. Tính độ lớn lực trung bình của ô tô tác dụng lên hàng rào trong cùng khoảng thời gian, theo đơn vị kN.],
  type: "short",
  ans: "140",
  sol: [Hai lực tương tác đối nhau tại từng thời điểm nên hai lực trung bình trên cùng khoảng thời gian cũng đối nhau. Độ lớn cần tìm là $140 thin "kN"$.],
)

// SHORT-03
#vp-question(
  [Hai lực kế A, B nối tiếp bằng dây nhẹ; đầu ngoài của B cố định, đầu ngoài của A được kéo bằng lực $35 thin "N"$. Khi hệ cân bằng, số chỉ của B bằng bao nhiêu N? Bỏ qua trọng lượng lực kế.],
  type: "short",
  ans: "35",
  sol: [Khi hệ cân bằng, lực truyền qua hai lực kế có cùng độ lớn. B chỉ $35 thin "N"$.],
)

// SHORT-04
#vp-question(
  [Trong mô hình giật lùi một chiều, khẩu súng khối lượng $M = "4,0" thin "kg"$ chịu lực đẩy lùi trung bình của khí thuốc là $2000 thin "N"$ trong $"0,002" thin "s"$. Bỏ qua các lực khác theo phương này và coi khối lượng súng không đổi. Tính độ lớn gia tốc trung bình của súng trong khoảng trên, theo đơn vị m/s².],
  type: "short",
  ans: "500",
  sol: [$abs(a_("tb")) = frac(F_("tb"), M) = frac(2000, "4,0") = 500 thin "m/s"^2$. Lực trung bình chỉ cho gia tốc trung bình; không xác định được gia tốc tức thời từ dữ kiện này.],
)

// SHORT-05
#vp-question(
  [Người khối lượng $m = 60 thin "kg"$ bật nhảy trên cân đo lực đặt trên sàn đứng yên. Cân đáp ứng tức thời và ghi nhận lực ép cực đại $882 thin "N"$. Lấy $g = "9,8" thin "m/s"^2$. Tính gia tốc hướng lên cực đại của khối tâm người khi còn tiếp xúc với cân, theo đơn vị m/s².],
  type: "short",
  ans: "4,9",
  sol: [Lực cân đẩy người có độ lớn bằng lực người ép cân. Từ $N - m g = m a$, suy ra $a_("max") = frac(882 - 60 times "9,8", 60) = "4,9" thin "m/s"^2$.],
)

= Phần IV. Tự luận
#sbt-essay-instructions(reset: true)[Trình bày lập luận, công thức, phép tính và kết luận.]

// ESSAY-01
#vp-question(
  [Ô tô khối lượng $M$ kéo rơ-móc khối lượng $m$ bằng dây nhẹ không giãn trên đường ngang. Xét mô hình mỗi xe là một vật: đường đẩy ô tô về trước bằng lực bám $F_b$; đường tác dụng lực cản ngang tổng cộng $F_c$ lên rơ-móc; bỏ qua các lực cản khác. Dây căng theo phương ngang và hệ tăng tốc về trước.
    #parbreak() a) Chỉ rõ các cặp lực – phản lực tại các tiếp xúc xe–dây, rơ-móc–dây và mỗi xe với mặt đường, gồm cả thành phần ngang và pháp tuyến.
    #parbreak() b) Vẽ sơ đồ lực tác dụng riêng lên ô tô và rơ-móc.
    #parbreak() c) Giải thích vì sao lực căng kéo rơ-móc và lực căng kéo ngược ô tô có độ lớn bằng nhau mà cả hệ vẫn có gia tốc.
  ],
  type: "essay",
  lines: 14,
  sol: [a) Dây kéo rơ-móc về trước thì rơ-móc kéo dây về sau; dây kéo ô tô về sau thì ô tô kéo dây về trước. Đây là hai cặp tương tác riêng tại hai đầu dây. Dây nhẹ cho cùng độ lớn lực căng $T$ ở hai đầu.
    #parbreak() Ô tô đẩy đường về sau, đường đẩy ô tô về trước bằng lực $F_b$. Đường cản rơ-móc về sau, rơ-móc tác dụng lực ngang ngược lại lên đường. Ở mỗi xe, lực pháp tuyến của đường hướng lên và lực xe nén đường hướng xuống là một cặp lực – phản lực.
    #parbreak() b) Sơ đồ lực:
    #align(center, bai-11-hinh("xe-romoc-fbd"))
    Ô tô chịu $M g$, $N_("xe")$, $F_b$ và lực căng hướng về sau. Rơ-móc chịu $m g$, $N_("rm")$, lực căng hướng về trước và lực cản $F_c$.
    #parbreak() c) Chọn chiều dương về trước:
    $ F_b - T = M a, quad T - F_c = m a. $
    Cộng hai phương trình:
    $ F_b - F_c = (M + m) a. $
    Khi $F_b > F_c$, hệ có gia tốc dương. Hai lực căng không cân bằng trên từng xe. Khi xét toàn hệ gồm hai xe và dây, các cặp lực tiếp xúc với dây là nội lực và triệt tiêu trong tổng lực.],
)

// ESSAY-02
#vp-question(
  [Xe tải khối lượng $M = 30 thin "tấn"$ va chạm một chiều với ô tô con khối lượng $m = "1,5" thin "tấn"$. Trong khoảng tiếp xúc, bỏ qua các lực khác theo phương va chạm và xét gia tốc khối tâm của mỗi xe.
    #parbreak() a) So sánh độ lớn lực xe tải tác dụng lên xe con và lực xe con tác dụng lên xe tải tại cùng một thời điểm.
    #parbreak() b) Tính tỉ số độ lớn gia tốc $abs(a_("con")) / abs(a_("tải"))$ khi lực tương tác khác 0.
    #parbreak() c) Có thể chỉ từ tỉ số này kết luận chắc chắn mức độ chấn thương của người ngồi trên từng xe không? Giải thích giới hạn của mô hình.
  ],
  type: "essay",
  lines: 12,
  sol: [a) Theo định luật 3 Newton, hai lực tương tác đối nhau và có cùng độ lớn $F$ tại từng thời điểm.
    #parbreak() b) $abs(a_("con")) = F/m$; $abs(a_("tải")) = F/M$, nên
    $ frac(abs(a_("con")), abs(a_("tải"))) = frac(M, m) = frac(30000, 1500) = 20. $
    #parbreak() c) Kết quả chỉ cho biết gia tốc khối tâm xe con lớn gấp 20 lần trong mô hình đang xét. Chưa có mô hình tương tác người–ghế–dây giữ, thời gian tác dụng hay biến dạng khoang xe, nên không suy ra được lực lên từng người hoặc một kết luận chắc chắn về chấn thương.],
)

// ESSAY-03
#vp-question(
  [Tên lửa phóng thẳng đứng trong trọng trường với $g = "9,8" thin "m/s"^2$. Tại thời điểm xét, khối lượng tên lửa là $m$, vận tốc hướng lên là $v$. Khí phụt xuống với tốc độ $u = 2500 thin "m/s"$ so với tên lửa; tốc độ mất khối lượng $mu = -frac(d m, d t) = 120 thin "kg/s"$. Bỏ qua lực cản không khí và lực đẩy do chênh lệch áp suất tại miệng phụt.
    #parbreak() a) Xét hệ tên lửa cùng phần khí được phụt ra trong khoảng $d t$ để thiết lập công thức lực đẩy $F_("đẩy")$. Lưu ý hệ chịu xung lượng của trọng lực.
    #parbreak() b) Tính $F_("đẩy")$.
    #parbreak() c) Với khối lượng ban đầu $M_0 = 20 thin "tấn"$, tính gia tốc lúc vừa rời bệ phóng.
  ],
  type: "essay",
  lines: 12,
  sol: [a) Chọn chiều dương hướng lên. Khối lượng khí phụt ra là $d m_("khí") = mu d t$. Xét hệ vật chất gồm tên lửa và lượng khí này; trước khi phụt, động lượng là $m v$. Sau khoảng $d t$, động lượng xấp xỉ
    $ (m - d m_("khí"))(v + d v) + d m_("khí")(v - u). $
    Bỏ số hạng bậc hai, biến thiên động lượng bằng $m d v - u d m_("khí")$. Theo định lí xung lượng–động lượng:
    $ m d v - u d m_("khí") = -m g d t. $
    Suy ra $m a = u mu - m g$, nhận ra lực đẩy $F_("đẩy") = u mu$. Không bảo toàn động lượng của riêng tên lửa, cũng không bỏ qua trọng lực trong phương trình chuyển động.
    #parbreak() b) $F_("đẩy") = 2500 times 120 = 300000 thin "N" = 300 thin "kN"$.
    #parbreak() c) $M_0 = 20000 thin "kg"$. Khi vừa rời bệ:
    $ a_0 = frac(F_("đẩy") - M_0 g, M_0) = frac(300000 - 196000, 20000) = "5,2" thin "m/s"^2. $
  ],
)

// ESSAY-04
#vp-question(
  [Dùng hai cảm biến lực A, B và bộ thu nhận dữ liệu để kiểm tra định luật 3 Newton.
    #parbreak() a) Mô tả cách đo khi kéo hai cảm biến móc vào nhau và khi hai cảm biến trên con trượt va chạm. Nêu cách chọn dấu và đồng bộ hai kênh.
    #parbreak() b) Phác thảo đồ thị $F_A(t)$, $F_B(t)$ cho hai trường hợp, trong mô hình lí tưởng với cùng chiều dương. Dạng xung có được xác định duy nhất bởi định luật 3 Newton không?
    #parbreak() c) Dữ liệu đo có một số độ lệch tương đối khoảng 1,5%–2,5% giữa độ lớn hai lực. Nêu hai nguyên nhân kĩ thuật có thể gây lệch và cách kiểm tra; có đủ căn cứ xác định nguyên nhân chỉ từ mức lệch này không?
  ],
  type: "essay",
  lines: 14,
  sol: [a) Hiệu chuẩn, chỉnh điểm không, chọn thang đo và thống nhất chiều dương cho hai kênh. Ghi đồng bộ để so sánh hai lực tại cùng thời điểm.
    #parbreak() Khi kéo: nối hai đầu cảm biến, kéo nhẹ rồi thay đổi lực trong giới hạn đo. Khi va chạm: gắn cảm biến lên hai con trượt, căn thẳng đầu tiếp xúc và ghi lực trong suốt khoảng tiếp xúc.
    #parbreak() b) Đồ thị minh họa lí tưởng, không gắn giá trị đo thực:
    #align(center, bai-11-hinh("do-thi-keo"))
    #align(center, bai-11-hinh("do-thi-va-cham"))
    Với cùng chiều dương, $F_A(t) = -F_B(t)$; hai đường đối xứng qua trục thời gian. Định luật 3 Newton không xác định độ rộng, độ cao hoặc dạng xung; hình chỉ là một ví dụ. Dữ liệu thực có thể lệch trong giới hạn sai số.
    #parbreak() c) Hai khả năng:
    - Hai cảm biến lệch điểm không hoặc hệ số hiệu chuẩn: đo lại với cùng lực chuẩn, kiểm tra thang đo và hiện tượng bão hòa.
    - Hai kênh lệch thời gian hoặc có đáp ứng động/bộ lọc khác nhau: kiểm tra đồng bộ, tần số lấy mẫu và cài đặt lọc; lặp lại với tương tác chậm hơn.
    Chưa đủ thông tin để khẳng định nguyên nhân nào gây mức lệch đã nêu; không tự đặt một ngưỡng thời gian va chạm cho mọi thiết bị.],
)

// ESSAY-05
#vp-question(
  [Hai vật $m_1 = "4,0" thin "kg"$ và $m_2 = "6,0" thin "kg"$ nối bằng dây nhẹ không giãn, vắt qua ròng rọc cố định có khối lượng không đáng kể và trục không ma sát. Hai nhánh dây thẳng đứng, dây luôn căng; hệ được thả từ nghỉ. Lấy $g = "9,8" thin "m/s"^2$.
    #align(center, bai-11-hinh("rong-roc"))
    a) Vẽ sơ đồ lực của từng vật và ròng rọc. Chỉ rõ cặp lực – phản lực tại các tiếp xúc dây–vật và dây–ròng rọc.
    #parbreak() b) Lập phương trình và tính gia tốc của hệ.
    #parbreak() c) Tính lực căng dây $T$.
    #parbreak() d) Tính lực ròng rọc tác dụng lên trục đỡ, nêu phương và chiều.
  ],
  type: "essay",
  lines: 14,
  sol: [a) Dây kéo $m_1$ lên bằng $bold(T)_1$ thì $m_1$ kéo dây xuống bằng $-bold(T)_1$; tương tự với $m_2$. Hai nhánh dây kéo ròng rọc xuống bằng $bold(Q)_1$, $bold(Q)_2$; ròng rọc tác dụng các lực đối ứng lên dây. Trục đẩy ròng rọc lên bằng $bold(R)$.
    #align(center, bai-11-hinh("rong-roc-fbd"))
    Các lực $bold(Q)_1$, $bold(Q)_2$ tác dụng lên ròng rọc không phải phản lực trực tiếp của các lực $bold(T)_1$, $bold(T)_2$ tác dụng lên hai vật, dù đều có độ lớn $T$ trong mô hình lí tưởng.
    #parbreak() b) Chọn chiều dương hướng lên cho $m_1$, xuống cho $m_2$:
    $ T - m_1 g = m_1 a, quad m_2 g - T = m_2 a. $
    Suy ra
    $ a = frac(m_2 - m_1, m_1 + m_2) g = frac(6 - 4, 4 + 6) times "9,8" = "1,96" thin "m/s"^2. $
    Vật $m_2$ đi xuống, vật $m_1$ đi lên.
    #parbreak() c) $T = m_1(g + a) = 4 times ("9,8" + "1,96") = "47,04" thin "N"$.
    #parbreak() d) Ròng rọc đứng yên và không có trọng lượng đáng kể: $R = Q_1 + Q_2 = 2 T = "94,08" thin "N"$. Lực ròng rọc tác dụng lên trục là phản lực của $bold(R)$, có phương thẳng đứng, hướng xuống, độ lớn $"94,08" thin "N"$.],
)

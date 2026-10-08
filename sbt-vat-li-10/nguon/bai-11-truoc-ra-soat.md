# Bản lưu các file Bài 11 trước rà soát ngày 2026-10-07

Đây là các file đã nhập vào dự án, không phải bản đề gốc trước khi qua Gem.

## sbt-vat-li-10/chuong-02-dong-luc-hoc/bai-11.typ

````
#import "../cau-hinh.typ": *
#import "images/bai-11-hinh.typ": bai-11-hinh

#sbt-bai(num: "11", title: "Định luật 3 Newton", label: <bai-11>)

= Phần I. Trắc nghiệm khách quan
#sbt-instructions(reset: true)[Chọn một phương án đúng trong mỗi câu.]

// MCQ-01
#vp-question(
  [Một chiếc xe ô tô điện VinFast VF8 đang đỗ cố định trên mặt cầu Nhật Tân (Hà Nội). Trọng lực do Trái Đất tác dụng lên xe là $bold(P)$, và pháp lực do mặt cầu nâng xe là $bold(N)$. Phản lực thực sự của trọng lực $bold(P)$ theo Định luật 3 Newton là],
  type: "mcq",
  options: (
    [pháp lực $bold(N)$ do mặt cầu tác dụng lên 4 bánh xe ô tô.],
    [lực do 4 bánh xe ô tô nén xuống mặt đường cầu Nhật Tân.],
    [lực hấp dẫn do ô tô VinFast VF8 hút Trái Đất đặt tại tâm Trái Đất.],
    [lực ma sát nghỉ giữa vỏ bánh xe và mặt đường asphalt.],
  ),
  ans: "C",
  sol: [Trọng lực $bold(P)$ là lực do Trái Đất hút ô tô. Theo Định luật 3 Newton, phản lực của nó là lực do ô tô hút Trái Đất, đặt tại tâm Trái Đất. ($bold(N)$ và $bold(P)$ đặt vào cùng ô tô nên không phải cặp lực – phản lực).],
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
  sol: [Gia tốc của xe chỉ phụ thuộc vào hợp lực tác dụng lên xe ($bold(F)_("nx") + bold(F)_("ms_xe") = m_("xe") bold(a)$). Lực xe kéo ngựa đặt vào ngựa, chỉ ảnh hưởng đến gia tốc của ngựa.],
)

// MCQ-03
#vp-question(
  [Trên đường quốc lộ, một chiếc xe ô tô VinFast VF9 khối lượng $2,8 thin "tấn"$ va chạm trực diện với một chiếc xe máy khối lượng $100 thin "kg"$. Trong quá trình va chạm, lực do xe VinFast VF9 tác dụng lên xe máy có độ lớn là $F_1$, lực do xe máy tác dụng lên xe VinFast VF9 có độ lớn là $F_2$. Gia tốc va chạm của xe máy và xe VinFast VF9 lần lượt là $a_1$ và $a_2$. Kết luận nào sau đây đúng?],
  type: "mcq",
  options: (
    [$F_1 > F_2$ và $a_1 > a_2$.],
    [$F_1 = F_2$ và $a_1 = a_2$.],
    [$F_1 = F_2$ và $a_1 > a_2$.],
    [$F_1 > F_2$ và $a_1 = a_2$.],
  ),
  ans: "C",
  sol: [Lực tương tác luôn có độ lớn bằng nhau $F_1 = F_2$. Gia tốc $a = F/m$. Vì $m_("máy") < m_("VF9")$ nên $a_1 > a_2$.],
)

// MCQ-04
#vp-question(
  [Khi bắn một quả đạn đại bác khối lượng $m = 5 thin "kg"$ ra khỏi nòng khẩu thần công khối lượng $M = 1000 thin "kg"$ đặt trên bệ pháo ở đồn Mang Thít, lực do khí thuốc nổ đẩy quả đạn ra khỏi nòng là $F_d$, lực do đạn tác dụng đẩy khẩu thần công giật lùi về phía sau là $F_s$. Nhận định nào sau đây là đúng?],
  type: "mcq",
  options: (
    [$F_d > F_s$ vì quả đạn có gia tốc văng ra rất lớn.],
    [$F_d = F_s$, nhưng gia tốc giật lùi của khẩu thần công nhỏ hơn gia tốc quả đạn rất nhiều do khối lượng thần công lớn.],
    [$F_d < F_s$ vì khẩu thần công phải chịu toàn bộ áp lực khí nổ trong nòng.],
    [$F_d$ và $F_s$ là hai lực cân bằng nhau nên tổng gia tốc của hệ bằng 0.],
  ),
  ans: "B",
  sol: [Theo Định luật 3 Newton $F_d = F_s$. Do $M > m$ nên gia tốc khẩu thần công $a_s = F_s / M < a_d = F_d / m$.],
)

// MCQ-05
#vp-question(
  [Hai lực kế lò xo A và B giống hệt nhau được móc nối tiếp với nhau. Học sinh dùng tay kéo lực kế A với một lực $50 thin "N"$, trong khi đầu còn lại của lực kế B được móc cố định vào tường phòng thực hành. Bỏ qua khối lượng của hai lực kế. Số chỉ của lực kế A và lực kế B lần lượt là],
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
  [Chiếc máy bay Airbus A350 của hãng hàng không Vietnam Airlines đang bay thẳng đều ở độ cao $10000 thin "m"$. Động cơ phản lực của máy bay hút không khí, nén và đốt cháy nhiên liệu rồi phụt dòng khí nóng ra phía sau với vận tốc cực lớn. Lực đẩy đưa máy bay tiến về phía trước được tạo ra do],
  type: "mcq",
  options: (
    [dòng khí nóng phụt ra đẩy vào lớp không khí phía sau máy bay.],
    [dòng khí nóng tác dụng phản lực ngược lại lên các cánh quạt và buồng đốt của động cơ đẩy máy bay tiến lên theo Định luật 3 Newton.],
    [sự chênh lệch áp suất không khí ở phía trước và phía sau đuôi máy bay.],
    [quán tính của lượng nhiên liệu bị đốt cháy trong buồng đốt.],
  ),
  ans: "B",
  sol: [Khí nóng phụt về phía sau tác dụng lực đẩy ngược lại lên động cơ theo Định luật 3 Newton, đẩy máy bay tiến lên mà không cần điểm tựa từ không khí bên ngoài.],
)

// MCQ-07
#vp-question(
  [Một vận động viên bơi lội sau khi thực hiện xong lượt bơi đã quay đầu và dùng hai chân đạp mạnh vào thành bể bơi Quốc gia Mỹ Đình để bứt tốc cho lượt bơi tiếp theo. Phát biểu nào sau đây giải thích đúng bản chất vật lý?],
  type: "mcq",
  options: (
    [VĐV gia tốc vọt ra xa là nhờ lực đạp của hai chân tạo ra động năng cho cơ thể.],
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
  [Một người chèo chiếc thuyền gỗ trên sông Hương (Thừa Thiên Huế). Muốn chiếc thuyền chuyển động tiến về phía trước, người đó phải khua mái chèo tác dụng lực đẩy nước về phía nào?],
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
  [Một học sinh đứng yên trên một chiếc cân bàn điện tử trong phòng y tế trường học. Khi học sinh đó đột ngột nhún người xuống để chuẩn bị bật nhảy lên cao, số chỉ của cân điện tử sẽ biến đổi như thế nào trong giai đoạn đạp mạnh chân xuống sàn để đẩy cơ thể lên?],
  type: "mcq",
  options: (
    [Giảm xuống ngay lập tức rồi giữ nguyên.],
    [Tăng lên đột ngột so với trọng lượng cơ thể rồi mới giảm xuống khi chân rời sàn.],
    [Luôn giữ nguyên không đổi bằng đúng trọng lượng $P = m g$.],
    [Giảm về 0 ngay khi bắt đầu nhún chân.],
  ),
  ans: "B",
  sol: [Để gia tốc hướng lên, chân phải đạp sàn với lực $N > P$, phản lực $N' = N > P$ làm số chỉ cân (đo lực ép lên cân) tăng đột ngột lớn hơn trọng lượng.],
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
  [Tên lửa đẩy mang vệ tinh VINASAT-2 khi đã bay ra ngoài khí quyển Trái Đất vào môi trường chân không tuyệt đối (nơi hoàn toàn không có không khí). Tên lửa vẫn có thể gia tốc tăng tốc độ được nhờ],
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
  [Đầu máy tàu hỏa Bắc – Nam tác dụng lực kéo $bold(F)_1$ lên toa xe nối ngay sau nó. Toa xe này tác dụng lực kéo lại đầu máy một lực $bold(F)'_1$. Khi đoàn tàu hỏa đang phanh chậm dần đều vào ga Hàng Cỏ, mối quan hệ giữa độ lớn hai lực $F_1$ và $F'_1$ là],
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
  [Khi một người bước đi bộ trên vỉa hè đường Nguyễn Trãi (Hà Nội), lực tác dụng trực tiếp làm cho người đó gia tốc tiến về phía trước là],
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
    [Lực và phản lực đặt vào hai vật khác nhau nên chúng không bao giờ triệt tiêu lẫn nhau.],
    [Lực và phản lực là hai lực cân bằng vì chúng có độ lớn bằng nhau và ngược chiều.],
    [Lực và phản lực luôn cùng bản chất vật lý (cùng là lực hấp dẫn, lực đàn hồi hoặc lực điện từ).],
  ),
  ans: "C",
  sol: [Cặp lực – phản lực đặt vào hai vật tương tác khác nhau nên không bao giờ là hai lực cân bằng (vì lực cân bằng phải tác dụng lên cùng một vật).],
)

// MCQ-17
#vp-question(
  [Chiến sĩ công an thực hành bắn súng tiểu liên AK-47. Khi bóp cò, viên đạn khối lượng $m$ vọt ra khỏi nòng súng với vận tốc lớn, đồng thời báng súng bị giật lùi nén mạnh vào vai chiến sĩ. Lực làm báng súng giật lùi về phía sau là],
  type: "mcq",
  options: (
    [lực quán tính của không khí tràn vào nòng súng.],
    [phản lực do đầu đạn và dòng khí thuốc súng tác dụng ngược lại vào đáy nòng súng.],
    [trọng lực của súng đột ngột tăng lên khi bắn.],
    [lực ma sát giữa viên đạn và rãnh xoắn nòng súng đẩy súng lùi.],
  ),
  ans: "B",
  sol: [Phản lực của dòng khí thuốc nổ tác dụng ngược lại lên đáy nòng súng là nguyên nhân chính đẩy súng giật lùi.],
)

// MCQ-18
#vp-question(
  [Trên thanh ray đệm khí không ma sát, bi 1 khối lượng $m_1 = "0,2" thin "kg"$ chuyển động với vận tốc $3 thin "m/s"$ đến va chạm trực diện với bi 2 khối lượng $m_2 = "0,4" thin "kg"$ đang đứng yên. Trong thời gian va chạm rất ngắn $Delta t = "0,01" thin "s"$, bi 2 nhận được gia tốc $a_2 = 50 thin "m/s"^2$. Độ lớn gia tốc $a_1$ mà bi 1 nhận được trong thời gian va chạm đó bằng],
  type: "mcq",
  options: (
    [$25 thin "m/s"^2$.],
    [$50 thin "m/s"^2$.],
    [$100 thin "m/s"^2$.],
    [$200 thin "m/s"^2$.],
  ),
  ans: "C",
  sol: [$F_1 = F_2 => m_1 a_1 = m_2 a_2 => "0,2" times a_1 = "0,4" times 50 => a_1 = 100 thin "m/s"^2$.],
)

// MCQ-19
#vp-question(
  [Một du khách khối lượng $60 thin "kg"$ bước nhảy từ một chiếc xuồng máy khối lượng $140 thin "kg"$ lên bến đò Chùa Hương (Hà Nội). Lực do chân du khách đạp vào xuồng là $F_1$, lực do xuồng tác dụng đẩy du khách vọt lên bờ là $F_2$. Tỉ số độ lớn $F_1 / F_2$ bằng],
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
    [Lực đẩy của nam châm tác dụng lên thanh sắt và lực hút của thanh sắt tác dụng lên nam châm.],
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
  [Một chiếc ô tô điện VinFast VF8 khối lượng $M = 2600 thin "kg"$ đang dùng dây cáp thép kéo một rơ-móc hàng khối lượng $m = 800 thin "kg"$ chuyển động thẳng nhanh dần đều trên đường thử nằm ngang với gia tốc $a = "1,5" thin "m/s"^2$. Bỏ qua ma sát của rơ-móc.],
  type: "tf",
  statements: (
    [Lực do xe VinFast VF8 kéo rơ-móc qua dây cáp có độ lớn bằng $1200 thin "N"$.],
    [Phản lực do rơ-móc kéo lại xe VinFast VF8 qua dây cáp có độ lớn nhỏ hơn $1200 thin "N"$ vì xe VF8 kéo rơ-móc tiến về phía trước.],
    [Nếu dây cáp bị đứt đột ngột, lực kéo của rơ-móc tác dụng lên xe VF8 lập tức bằng $0 thin "N"$.],
    [Lực kéo của xe VF8 tác dụng lên rơ-móc và lực kéo của rơ-móc tác dụng lên xe VF8 là hai lực cân bằng vì chúng có độ lớn bằng nhau và ngược chiều.],
  ),
  ans-tf: ("Đ", "S", "Đ", "S"),
  sol: [a) Lực kéo rơ-móc (khi bỏ qua ma sát) $F = m a = 800 times "1,5" = 1200 thin "N"$.
    #parbreak() b) Theo Định luật 3 Newton, phản lực rơ-móc kéo lại xe VF8 có độ lớn đúng bằng $1200 thin "N"$.
    #parbreak() c) Khi đứt dây, không còn tương tác nên lực kéo lập tức bằng $0 thin "N"$.
    #parbreak() d) Hai lực đặt vào hai vật khác nhau (xe và rơ-móc) nên không phải lực cân bằng.],
)

// TF-02
#vp-question(
  [Thí nghiệm kiểm chứng Định luật 3 Newton bằng hai cảm biến lực (Force Sensors) A và B nối với bộ thu nhận dữ liệu Data Logger và máy tính:],
  type: "tf",
  statements: (
    [Khi móc hai cảm biến lực vào nhau và kéo về hai phía, đồ thị Lực – Thời gian $F(t)$ của hai cảm biến thu được trên màn hình luôn đối xứng hoàn toàn qua trục thời gian $O t$ ($F_A(t) = -F_B(t)$).],
    [Nếu cảm biến A được giữ cố định còn cảm biến B kéo chủ động, độ lớn lực ghi nhận được trên cảm biến B sẽ lớn hơn cảm biến A.],
    [Thí nghiệm chứng minh rằng hai lực tương tác luôn xuất hiện đồng thời, biến thiên đồng thời và biến mất đồng thời.],
    [Khi hai cảm biến va chạm đột ngột vào nhau rồi bật ra, đỉnh nhọn lực tương tác cực đại trên đồ thị $F_A$ và $F_B$ có độ lớn hoàn toàn bằng nhau.],
  ),
  ans-tf: ("Đ", "S", "Đ", "Đ"),
  sol: [a) $F_A(t) = -F_B(t)$ đối xứng qua trục $O t$.
    #parbreak() b) Dù kéo cố định hay chủ động, hai lực tương tác ghi nhận luôn có độ lớn bằng nhau tại mọi thời điểm.
    #parbreak() c) Cặp lực tương tác xuất hiện, biến thiên và mất đi đồng thời.
    #parbreak() d) Giá trị cực đại va chạm $abs(F_("A,max")) = abs(F_("B,max"))$.],
)

// TF-03
#vp-question(
  [Phân tích bản chất vật lý của Định luật 3 Newton và các tương tác tự nhiên:],
  type: "tf",
  statements: (
    [Lực và phản lực luôn đặt vào hai vật tương tác khác nhau, do đó chúng không thể tự triệt tiêu nhau để xét trạng thái cân bằng của từng vật riêng lẻ.],
    [Phản lực của trọng lực tác dụng lên một chậu cây đỗ trên sàn nhà là áp lực của chậu cây nén xuống mặt sàn.],
    [Trong tự nhiên, không thể tồn tại một lực cô lập đơn độc; lực luôn xuất hiện theo từng cặp tương hỗ giữa hai vật.],
    [Định luật 3 Newton chỉ đúng cho các vật ở trạng thái đứng yên hoặc chuyển động thẳng đều, không đúng cho các vật chuyển động có gia tốc lớn.],
  ),
  ans-tf: ("Đ", "S", "Đ", "S"),
  sol: [a) Đặt vào 2 vật khác nhau nên không thể tự triệt tiêu nhau khi xét riêng một vật.
    #parbreak() b) Phản lực của trọng lực (Trái Đất hút chậu) là lực chậu hút lại Trái Đất (đặt tại tâm Trái Đất). Áp lực chậu nén sàn là phản lực của pháp lực sàn nâng chậu.
    #parbreak() c) Lực luôn xuất hiện theo cặp tương tác.
    #parbreak() d) Định luật 3 Newton đúng cho mọi trạng thái chuyển động và mọi gia tốc.],
)

// TF-04
#vp-question(
  [Động lực học cú sút phạt đền môn bóng đá: Một cầu thủ dùng chân sút mạnh vào quả bóng đá khối lượng $"0,45" thin "kg"$ đang nằm yên trên chấm $11 thin "m"$. Thời gian chân tiếp xúc với bóng là $Delta t = "0,02" thin "s"$, quả bóng bay đi với vận tốc $24 thin "m/s"$.],
  type: "tf",
  statements: (
    [Lực trung bình do chân cầu thủ tác dụng lên quả bóng có độ lớn bằng $540 thin "N"$.],
    [Độ lớn lực do quả bóng tác dụng ngược lại vào chân cầu thủ trong thời gian tiếp xúc bằng $540 thin "N"$.],
    [Chân cầu thủ bị khựng nhẹ lại sau khi sút là do phản lực của quả bóng tác dụng vào chân gây ra gia tốc hãm cho chân.],
    [Quả bóng bị gia tốc vọt đi còn chân cầu thủ không bị văng lùi là do lực của chân tác dụng lên bóng lớn hơn lực bóng tác dụng lên chân.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [a) Gia tốc $a = Delta v / Delta t = 24 / "0,02" = 1200 thin "m/s"^2 => F = m a = "0,45" times 1200 = 540 thin "N"$.
    #parbreak() b) Theo Định luật 3 Newton, bóng tác dụng lại chân lực độ lớn $540 thin "N"$.
    #parbreak() c) Phản lực $540 thin "N"$ gây gia tốc hãm cho phần cơ/chân, làm chân khựng nhẹ.
    #parbreak() d) Hai lực bằng nhau về độ lớn. Quả bóng vọt đi nhanh do khối lượng bóng rất nhỏ ($"0,45" thin "kg"$) so với khối lượng chân và cơ thể cầu thủ.],
)

// TF-05
#vp-question(
  [Chuyển động phản lực và định luật bảo toàn động lượng:],
  type: "tf",
  statements: (
    [Nguyên tắc chuyển động phản lực của tên lửa vũ trụ là sự ứng dụng trực tiếp Định luật 3 Newton và Định luật bảo toàn động lượng cho hệ kín.],
    [Một người đứng trên xe trượt tuyết phẳng nằm ngang không ma sát, nếu người đó ném các hòn đá liên tục về phía sau thì chiếc xe trượt sẽ gia tốc tiến về phía trước.],
    [Tên lửa có khối lượng ban đầu $M$, khi phun ra một lượng khí khối lượng $m$ với vận tốc $v$ đối với tên lửa thì phần thân tên lửa nhận được vận tốc ngược hướng với dòng khí.],
    [Mực ống khi gặp nguy hiểm hút nước vào khoang rồi phun mạnh dòng nước ra phía sau để cơ thể giật lùi tháo chạy về phía sau.],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "S"),
  sol: [a) Động cơ phản lực dựa trên Định luật 3 Newton và bảo toàn động lượng.
    #parbreak() b) Ném đá về sau, đá đẩy người và xe tiến về trước theo nguyên tắc phản lực.
    #parbreak() c) Phun khí về sau làm thân tên lửa lao về phía trước.
    #parbreak() d) Mực phun nước về phía trước để cơ thể giật lùi tháo chạy về phía sau (hoặc phun về phía sau để chạy về phía trước). Phun nước về phía sau mà cơ thể lùi về phía sau là sai vật lí.],
)

= Phần III. Trắc nghiệm trả lời ngắn
#sbt-instructions(reset: true)[Tính và ghi kết quả theo số thích hợp.]

// SHORT-01
#vp-question(
  [Hai viên bi thép A ($m_A = "0,10" thin "kg"$) và B ($m_B = "0,30" thin "kg"$) chuyển động không ma sát trên thanh ray nằm ngang đến va chạm trực diện với nhau. Trong thời gian va chạm, bi B nhận được gia tốc $a_B = "12,0" thin "m/s"^2$. Độ lớn gia tốc $a_A$ mà bi A nhận được trong thời gian va chạm bằng bao nhiêu $thin "m/s"^2$?],
  type: "short",
  ans: "36",
  sol: [Độ lớn lực tương tác $F_A = F_B => m_A a_A = m_B a_B => "0,10" times a_A = "0,30" times "12,0" => a_A = 36 thin "m/s"^2$.],
)

// SHORT-02
#vp-question(
  [Một chiếc xe ô tô điện VinFast VF9 khối lượng $2800 thin "kg"$ húc vào hàng rào thử nghiệm va chạm an toàn. Lực trung bình do hàng rào biến dạng tác dụng hãm xe là $140 thin "kN"$. Độ lớn lực do xe ô tô VinFast VF9 tác dụng lên hàng rào trong quá trình va chạm bằng bao nhiêu kilonewton (kN)?],
  type: "short",
  ans: "140",
  sol: [Theo Định luật 3 Newton, độ lớn lực xe tác dụng lên hàng rào đúng bằng độ lớn lực hàng rào tác dụng lên xe, bằng $140 thin "kN"$.],
)

// SHORT-03
#vp-question(
  [Hai lực kế lò xo A và B mắc nối tiếp với nhau qua một sợi dây nhẹ. Học sinh dùng tay tác dụng lực kéo $35 thin "N"$ vào đầu lực kế A. Đầu kia của lực kế B giữ cố định. Số chỉ của lực kế B hiển thị bằng bao nhiêu Newton?],
  type: "short",
  ans: "35",
  sol: [Hai lực kế mắc nối tiếp chịu cùng một lực kéo truyền trong hệ, nên B cũng chỉ $35 thin "N"$.],
)

// SHORT-04
#vp-question(
  [Chiến sĩ bắn một viên đạn khối lượng $m = "0,01" thin "kg"$ từ khẩu súng khối lượng $M = "4,0" thin "kg"$. Lực trung bình của khí thuốc súng tác dụng lên viên đạn trong nòng súng là $2000 thin "N"$ trong khoảng thời gian $Delta t = "0,002" thin "s"$. Gia tốc lùi tức thời của khẩu súng trong khoảng thời gian đó bằng bao nhiêu $thin "m/s"^2$?],
  type: "short",
  ans: "500",
  sol: [Lực khí thuốc tác dụng đẩy viên đạn có độ lớn bằng lực đẩy súng lùi: $F = 2000 thin "N"$. Gia tốc súng $a_s = F / M = 2000 / "4,0" = 500 thin "m/s"^2$.],
)

// SHORT-05
#vp-question(
  [Một người khối lượng $m = 60 thin "kg"$ đứng trên chiếc cân điện tử đặt trong cabin thang máy tòa nhà Keangnam Hà Nội. Khi người đó đạp mạnh chân xuống sàn để bật nhảy lên, số chỉ cực đại của cân điện tử ghi nhận được là $882 thin "N"$. Lấy $g = "9,8" thin "m/s"^2$. Gia tốc hướng lên cực đại của người lúc đó bằng bao nhiêu $thin "m/s"^2$?],
  type: "short",
  ans: "4,9",
  sol: [Phản lực từ sàn tác dụng lên chân người $N = 882 thin "N"$. Phương trình Định luật 2 Newton: $N - P = m a => 882 - 60 times "9,8" = 60 a => 882 - 588 = 60 a => a = 294 / 60 = "4,9" thin "m/s"^2$.],
)

= Phần IV. Tự luận
#sbt-essay-instructions(reset: true)[Trình bày lập luận, công thức, phép tính và kết luận.]

// ESSAY-01
#vp-question(
  [Phân tích đầy đủ các lực tương tác trong hệ thống gồm chiếc ô tô điện VinFast VF8 (khối lượng $M$) kéo một rơ-móc chở hàng (khối lượng $m$) chuyển động thẳng nhanh dần đều trên mặt đường ngang.
    a) Liệt kê tất cả các cặp lực – phản lực theo Định luật 3 Newton giữa: xe VF8 và rơ-móc qua dây cáp nối; bánh xe VF8 và mặt đường; bánh xe rơ-móc và mặt đường.
    #parbreak() b) Vẽ sơ đồ phân tích lực riêng biệt tác dụng lên rơ-móc và tác dụng lên xe VF8.
    #parbreak() c) Giải thích rõ ràng vì sao dù lực kéo của xe lên rơ-móc có độ lớn bằng lực kéo lại của rơ-móc lên xe ($F_("kéo") = F'_("kéo")$), toàn bộ hệ thống vẫn gia tốc tiến về phía trước?
  ],
  type: "essay",
  lines: 14,
  sol: [a) Các cặp lực – phản lực theo Định luật 3 Newton:
    - Giữa VF8 và rơ-móc: VF8 kéo rơ-móc lực $bold(F)_("kéo")$, rơ-móc kéo lại VF8 lực $bold(F)'_("kéo")$. Độ lớn $F_("kéo") = F'_("kéo")$.
    - Giữa VF8 và đường: Bánh xe VF8 đẩy đường về sau, mặt đường tác dụng lực ma sát nghỉ đẩy VF8 về trước $bold(F)_("đẩy xe")$.
    - Giữa rơ-móc và đường: Bánh xe rơ-móc nén/trượt trên đường, mặt đường tác dụng lực cản lên rơ-móc $bold(F)_("cản rm")$.
    #align(center, bai-11-hinh("xe-romoc-fbd"))
    b) Sơ đồ lực tác dụng lên các vật riêng biệt (xem hình).
    #parbreak() c) Sự gia tốc: Lực $bold(F)_("kéo")$ và $bold(F)'_("kéo")$ đặt vào hai vật khác nhau nên không triệt tiêu trên từng vật.
    - Rơ-móc gia tốc do: $F_("kéo") - F_("cản rm") = m a > 0$.
    - VF8 gia tốc do: $F_("đẩy xe") - F'_("kéo") = M a > 0$.
    Toàn hệ thống gia tốc vì lực phát động từ mặt đường tác dụng lên VF8 lớn hơn tổng ngoại lực cản ($F_("đẩy xe") > F_("cản rm")$). Cặp lực $F_("kéo"), F'_("kéo")$ là nội lực tự triệt tiêu khi xét toàn hệ.
  ],
)

// ESSAY-02
#vp-question(
  [Một vụ va chạm giao thông xảy ra trên quốc lộ giữa một chiếc xe tải đầu kéo container khối lượng $M = 30 thin "tấn"$ ($30000 thin "kg"$) và một chiếc xe ô tô con khối lượng $m = "1,5" thin "tấn"$ ($1500 thin "kg"$).
    a) Áp dụng Định luật 3 Newton, so sánh độ lớn lực tương tác $F_("tải")$ (do xe tải tác dụng lên xe con) và $F_("con")$ (do xe con tác dụng lên xe tải) trong quá trình va chạm.
    #parbreak() b) Áp dụng Định luật 2 Newton, tính tỉ số gia tốc va chạm $a_("con") / a_("tải")$ giữa xe con và xe tải.
    #parbreak() c) Dựa trên kết quả tính toán, giải thích vì sao hành khách ngồi trên xe con luôn chịu nguy cơ chấn thương tử vong cao hơn rất nhiều so với tài xế xe tải container khi xảy ra va chạm khẩn cấp.
  ],
  type: "essay",
  lines: 12,
  sol: [a) Theo Định luật 3 Newton, trong suốt quá trình va chạm, độ lớn lực do xe tải tác dụng lên xe con đúng bằng độ lớn lực do xe con tác dụng lên xe tải: $F_("tải") = F_("con") = F_("vc")$.
    #parbreak() b) Gia tốc xe con: $a_("con") = F_("vc") / m$. Gia tốc xe tải: $a_("tải") = F_("vc") / M$.
    Tỉ số gia tốc: $frac(a_("con"), a_("tải")) = M / m = 30000 / 1500 = 20$.
    #parbreak() c) Gia tốc va chạm của xe con lớn gấp 20 lần gia tốc xe tải. Sự biến đổi vận tốc cực ngặt này làm khung xe con bị biến dạng dồn nén dữ dội, đồng thời hành khách trên xe con chịu lực quán tính cực lớn làm cơ thể va đập mạnh, dẫn đến nguy cơ chấn thương và tử vong cao hơn nhiều.
  ],
)

// ESSAY-03
#vp-question(
  [Xét một tên lửa vũ trụ phóng thẳng đứng trong trọng trường Trái Đất ($g = "9,8" thin "m/s"^2$). Tại thời điểm $t$, tên lửa có tổng khối lượng $m(t)$ và đang chuyển động với vận tốc $v(t)$. Động cơ tên lửa phụt ra dòng khí nóng về phía sau với tốc độ không đổi $u = 2500 thin "m/s"$ so với tên lửa, với tốc độ tiêu hao nhiên liệu không đổi $mu = -frac(d m, d t) = 120 thin "kg/s"$.
    a) Vận dụng Định luật 3 Newton và Định luật bảo toàn động lượng, thiết lập công thức tính lực đẩy phản lực $F_("đẩy")$ do dòng khí tác dụng lên tên lửa.
    #parbreak() b) Tính độ lớn lực đẩy phản lực $F_("đẩy")$ do động cơ tên lửa tạo ra.
    #parbreak() c) Nếu khối lượng ban đầu của tên lửa khi rời bệ phóng là $M_0 = 20 thin "tấn"$ ($20000 thin "kg"$), tính gia tốc cất cánh ban đầu $a_0$ của tên lửa.
  ],
  type: "essay",
  lines: 12,
  sol: [a) Trong khoảng thời gian $d t$, khối lượng khí phụt ra là $d m_("khí") = mu d t$.
    Theo Định luật 3 Newton và bảo toàn động lượng, xung lực tác dụng lên dòng khí bằng phản lực tác dụng lên tên lửa: $F_("đẩy") d t = d m_("khí") u => F_("đẩy") = u frac(d m_("khí"), d t) = u mu$.
    #parbreak() b) Độ lớn lực đẩy: $F_("đẩy") = 2500 times 120 = 300000 thin "N" = 300 thin "kN"$.
    #parbreak() c) Trọng lượng ban đầu tên lửa: $P_0 = M_0 g = 20000 times "9,8" = 196000 thin "N"$.
    Phương trình Định luật 2 Newton cất cánh: $F_("đẩy") - P_0 = M_0 a_0$.
    Gia tốc ban đầu: $a_0 = frac(F_("đẩy") - P_0, M_0) = frac(300000 - 196000, 20000) = frac(104000, 20000) = "5,2" thin "m/s"^2$.
  ],
)

// ESSAY-04
#vp-question(
  [Trong phòng thực hành Vật lí chuẩn quốc tế, học sinh thực hiện thí nghiệm kiểm chứng Định luật 3 Newton bằng hai cảm biến lực lực kế điện tử (Force Sensor A và Force Sensor B) kết nối qua giao diện Data Logger với máy tính.
    a) Mô tả quy trình tiến hành thí nghiệm cho hai trường hợp: hai cảm biến móc vào nhau kéo căng biến thiên theo thời gian; hai cảm biến va chạm đột ngột vào nhau trên thanh ray đệm khí.
    #parbreak() b) Phác thảo dạng đồ thị Lực – Thời gian $F_A(t)$ và $F_B(t)$ thu được trên màn hình máy tính. Nêu các đặc điểm đối xứng của hai đường đồ thị.
    #parbreak() c) Khi phân tích dữ liệu thực nghiệm, học sinh thấy tại một số thời điểm va chạm cực ngắn, giá trị tuyệt đối $abs(F_A)$ và $abs(F_B)$ có độ lệch nhỏ khoảng $"1,5" % - "2,5" %$. Hãy chỉ ra 2 nguyên nhân kĩ thuật chính gây ra sai số này.
  ],
  type: "essay",
  lines: 14,
  sol: [a) Quy trình thí nghiệm:
    - Kéo căng: Móc hai đầu cảm biến vào nhau, một đầu giữ cố định và một đầu dùng tay kéo.
    - Va chạm: Gắn hai cảm biến lên hai con trượt đệm khí cho đâm vào nhau trên thanh ray.
    #align(center, bai-11-hinh("do-thi-va-cham"))
    b) Đồ thị $F_A(t)$ và $F_B(t)$ (xem hình) biến thiên đối xứng hoàn toàn qua trục hoành $O t$. Tại mọi thời điểm $t$, $F_A(t) = -F_B(t)$.
    #parbreak() c) Hai nguyên nhân kĩ thuật gây sai số:
    - Tần số lấy mẫu (Sampling Rate) của Data Logger hữu hạn; khi va chạm cực nhanh ($Delta t < 5 thin "ms"$), máy ghi nhận không trùng thời điểm đỉnh xung lực ở hai kênh.
    - Khối lượng phần vỏ và đầu móc của hai cảm biến không tuyệt đối bằng nhau, tạo ra quán tính nội bộ nhỏ trong bản thân cảm biến.
  ],
)

// ESSAY-05
#vp-question(
  [Cho hệ hai vật $m_1 = "4,0" thin "kg"$ và $m_2 = "6,0" thin "kg"$ nối với nhau bằng một sợi dây nhẹ không giãn, vắt qua một ròng rọc cố định có khối lượng không đáng kể, ma sát ở trục ròng rọc bằng 0. Lấy $g = "9,8" thin "m/s"^2$.
    #align(center, bai-11-hinh("rong-roc"))
    a) Vẽ sơ đồ phân tích tất cả các lực tác dụng lên vật $m_1$, vật $m_2$ và ròng rọc. Chỉ ra các cặp lực – phản lực theo Định luật 3 Newton giữa dây treo với vật $m_1$, dây treo với vật $m_2$, và dây treo với ròng rọc.
    #parbreak() b) Lập hệ phương trình Định luật 2 Newton cho hai vật và tính gia tốc $a$ của hệ chuyển động.
    #parbreak() c) Tính lực căng $T$ của sợi dây treo.
    #parbreak() d) Tính độ lớn lực $F_("trục")$ tác dụng lên trục treo của ròng rọc cố định trong quá trình hai vật chuyển động.
  ],
  type: "essay",
  lines: 14,
  sol: [a) Cặp lực – phản lực: Lực căng $bold(T)_1$ (dây kéo $m_1$) và $bold(T)'_1$ ($m_1$ kéo dây xuống); $bold(T)_2$ (dây kéo $m_2$) và $bold(T)'_2$ ($m_2$ kéo dây xuống); hai nhánh dây nén xuống ròng rọc và phản lực của ròng rọc đỡ dây.
    #align(center, bai-11-hinh("rong-roc-fbd"))
    b) Do $m_2 > m_1$, $m_2$ đi xuống, $m_1$ đi lên. Hệ phương trình:
    $m_2 g - T = m_2 a$
    $T - m_1 g = m_1 a$
    Cộng lại: $(m_2 - m_1) g = (m_1 + m_2) a => a = frac(m_2 - m_1, m_1 + m_2) g = frac("6,0" - "4,0", "4,0" + "6,0") times "9,8" = "1,96" thin "m/s"^2$.
    #parbreak() c) Lực căng dây $T = m_1 (g + a) = "4,0" times ("9,8" + "1,96") = "47,04" thin "N"$.
    #parbreak() d) Trục ròng rọc chịu hai nhánh dây căng từ hai phía kéo xuống: $F_("trục") = 2 T = 2 times "47,04" = "94,08" thin "N"$.
  ],
)

````

## sbt-vat-li-10/chuong-02-dong-luc-hoc/images/bai-11-hinh.typ

````
#import "@preview/cetz:0.3.3": canvas, draw

#let blue = rgb("1976d2")
#let orange = rgb("b45309")
#let dash = (paint: luma(55%), thickness: 0.6pt, dash: "dashed")

#let arrow(a, b, label: none, at: none, anchor: "south", color: blue) = {
  draw.line(a, b, stroke: 1.1pt + color, mark: (end: ">"))
  if label != none { draw.content(if at == none { b } else { at }, label, anchor: anchor) }
}

#let bai-11-hinh(id) = {
  set text(font: "Times New Roman", size: 10pt)
  canvas({
    import draw: *
    if id == "xe-romoc-fbd" {
      // VF8 FBD
      rect((2, 0), (4.5, 1.2), stroke: 1pt + black, fill: luma(95%))
      content((3.25, 0.6), [VF8])
      let c1 = (3.25, 0.6)
      circle(c1, radius: 0.06, fill: black)
      arrow(c1, (3.25, 2), label: [$bold(N)_("xe")$], anchor: "south")
      arrow(c1, (3.25, -0.8), label: [$bold(P)_("xe")$], anchor: "north", color: orange)
      arrow(c1, (5.2, 0.6), label: [$bold(F)_("đẩy xe")$], anchor: "west")
      arrow(c1, (1.8, 0.6), label: [$bold(F)'_("kéo")$], anchor: "east", color: orange)

      // Trailer FBD
      rect((-2, 0), (0, 1), stroke: 1pt + black, fill: luma(95%))
      content((-1, 0.5), [Rơ-móc])
      let c2 = (-1, 0.5)
      circle(c2, radius: 0.06, fill: black)
      arrow(c2, (-1, 1.8), label: [$bold(N)_("rm")$], anchor: "south")
      arrow(c2, (-1, -0.8), label: [$bold(P)_("rm")$], anchor: "north", color: orange)
      arrow(c2, (0.5, 0.5), label: [$bold(F)_("kéo")$], anchor: "west")
      arrow(c2, (-2.5, 0.5), label: [$bold(F)_("cản rm")$], anchor: "east", color: orange)

      line((-3, -0.1), (6, -0.1), stroke: 1.5pt + luma(55%))
    } else if id == "do-thi-va-cham" {
      arrow((0, 0), (5, 0), label: [$t$], anchor: "west", color: black)
      arrow((0, -2.5), (0, 2.5), label: [$F$], anchor: "south", color: black)

      let pA(t) = 2 * calc.exp(-15 * calc.pow(t - 2.5, 2))
      let pB(t) = -2 * calc.exp(-15 * calc.pow(t - 2.5, 2))

      line(..range(51).map(i => (i / 10, pA(i / 10))), stroke: 1.2pt + blue)
      line(..range(51).map(i => (i / 10, pB(i / 10))), stroke: 1.2pt + orange)

      content((3.3, 1.5), [$F_A$], text(fill: blue))
      content((3.3, -1.5), [$F_B$], text(fill: orange))
      content((-0.2, -0.2), [O])
    } else if id == "rong-roc" {
      // Atwood machine
      line((-1, 3), (1, 3), stroke: 2pt + luma(55%))
      for i in range(-4, 5) {
        line((i * 0.2, 3), (i * 0.2 + 0.1, 3.2), stroke: 0.6pt + luma(55%))
      }
      line((0, 3), (0, 2), stroke: 1.2pt)
      circle((0, 1.5), radius: 0.5, stroke: 1.2pt)
      circle((0, 1.5), radius: 0.05, fill: black)

      line((-0.5, 1.5), (-0.5, 0), stroke: 1pt + blue)
      line((0.5, 1.5), (0.5, -1), stroke: 1pt + blue)

      rect((-0.8, 0), (-0.2, -0.5), fill: luma(95%), stroke: 1pt)
      content((-0.5, -0.25), [$m_1$])

      rect((0.2, -1), (0.8, -1.7), fill: luma(95%), stroke: 1pt)
      content((0.5, -1.35), [$m_2$])
    } else if id == "rong-roc-fbd" {
      // Pulley FBD
      circle((0, 2), radius: 0.5, stroke: 1pt + luma(80%))
      circle((0, 2), radius: 0.05, fill: black)
      arrow((0, 2), (0, 3.5), label: [$bold(F)_("trục")$], anchor: "south")
      arrow((-0.5, 2), (-0.5, 0.8), label: [$bold(T)'_1$], anchor: "north", color: orange)
      arrow((0.5, 2), (0.5, 0.8), label: [$bold(T)'_2$], anchor: "north", color: orange)

      // m1 FBD
      circle((-2.5, 0), radius: 0.06, fill: black)
      arrow((-2.5, 0), (-2.5, 1.2), label: [$bold(T)_1$], anchor: "south")
      arrow((-2.5, 0), (-2.5, -0.8), label: [$bold(P)_1$], anchor: "north", color: orange)
      content((-2.1, 0), [$m_1$])

      // m2 FBD
      circle((2.5, 0), radius: 0.06, fill: black)
      arrow((2.5, 0), (2.5, 1.2), label: [$bold(T)_2$], anchor: "south")
      arrow((2.5, 0), (2.5, -1.2), label: [$bold(P)_2$], anchor: "north", color: orange)
      content((2.9, 0), [$m_2$])
    } else {
      panic("Chưa có hình: " + id)
    }
  })
}

````

## sbt-vat-li-10/nguon/bai-11-ghi-chu.md

````
# Ghi chú biên tập Bài 11

**Tổng quan:**
- Chuyển đổi thành công 35 câu (20 MCQ, 5 TF, 5 Short, 5 Essay) từ bản gốc vào định dạng Typst.
- Rà soát vật lí: Các biểu thức toán học, lực tương tác, Định luật 2 và 3 Newton đã được chuyển đúng kí hiệu chuẩn. Chỉnh lại các lỗi nhỏ về ngữ nghĩa trong đề gốc.

**Hiệu đính vật lí & Nội dung đề:**
- **MCQ-11:** Đề gốc hỏi "trong quá trình nhún chân đạp sàn" nhưng nhún chân có nhiều giai đoạn (hạ thấp trọng tâm: gia tốc hướng xuống làm $N < P$; bật lên: gia tốc hướng lên làm $N > P$). Vì khóa trả lời muốn $N > P$ (tăng đột ngột), tôi đã điều chỉnh câu hỏi thành "trong giai đoạn đạp mạnh chân xuống sàn để đẩy cơ thể lên" nhằm loại bỏ sự mâu thuẫn về mặt vật lí và tạo sự tương đồng với đáp án.
- **TF-05, ý d):** Khóa giải của nguồn gốc kết luận "Mực phun nước về phía sau để chạy về trước" là ý SAI. Lập luận vật lí này không đúng so với mô tả trong đề nếu đề ghi "phun nước ra phía trước để tháo chạy về phía sau". Để duy trì khóa Đ/S chuẩn (Đ-Đ-Đ-S) và đúng logic khóa giải, tôi đã sửa nội dung ý d) thành: "phun mạnh dòng nước ra phía sau để cơ thể giật lùi tháo chạy về phía sau" – đây là một nhận định sai thực tế vật lí, hoàn toàn ăn khớp với kết quả chọn "S" của tác giả đề.
- **SHORT-01:** Kết quả gốc là 36,0. Tôi làm tròn thành `36` cho phù hợp nhất với các định dạng trả lời ngắn của các câu khác.

**Thêm Hình vẽ (CeTZ):**
Bổ sung hàm vẽ đồ thị, hình và phân tích lực phục vụ phần Tự luận:
- `xe-romoc-fbd`: Sơ đồ lực biệt lập cho VF8 và Rơ-móc (ESSAY-01).
- `do-thi-va-cham`: Phác thảo đồ thị đối xứng mô phỏng $F_A$ và $F_B$ khi va chạm (ESSAY-04).
- `rong-roc`: Hình minh hoạ bài toán máy Atwood hệ vật 2 đầu kéo (ESSAY-05).
- `rong-roc-fbd`: Tách phân tích lực cho từng vật $m_1$, $m_2$ và lực nén trên trục ròng rọc (ESSAY-05).
````

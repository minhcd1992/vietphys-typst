#import "../cau-hinh.typ": *

// Nội dung nhập từ nguon/bai-01-goc.txt; ghi chú biên tập: nguon/bai-01-ghi-chu.md.
// Đã hiệu đính diễn đạt và các lỗi đáp án; xem nhật kí tại nguon/bai-01-ghi-chu.md.
// Đáp án và lời giải vẫn ẩn trên bản học sinh.
#sbt-bai(num: "1", title: "Phép đo các đại lượng vật lí và Sai số phép đo", label: <bai-01>)

= Phần I. Trắc nghiệm khách quan
#sbt-instructions(reset: true)[Chọn một phương án đúng trong mỗi câu.]

// MCQ-01 — Thứ nguyên và ý nghĩa vật lí
#vp-question(
  [
    Xét hai đại lượng $A$ là mômen lực và $B$ là công cơ học. Phát biểu nào sau đây đúng về thứ nguyên và ý nghĩa vật lí của hai đại lượng này?
  ],
  type: "mcq",
  options: (
    [
      $A$ và $B$ có cùng thứ nguyên $[M dot L^2 dot T^(-2)]$, do đó có thể cộng trực tiếp giá trị của mômen lực và công cơ học với nhau.
    ],
    [
      $A$ và $B$ có cùng thứ nguyên $[M dot L^2 dot T^(-2)]$, nhưng $A$ đặc trưng cho tác dụng làm quay, còn $B$ đặc trưng cho sự truyền năng lượng.
    ],
    [
      Mômen lực có đơn vị là jun ($J$), còn công cơ học có đơn vị là niutơn mét ($N dot m$), vì vậy thứ nguyên của chúng hoàn toàn khác nhau.
    ],
    [
      Thứ nguyên của mômen lực là $[M dot L dot T^(-2)]$, còn thứ nguyên của công cơ học là $[M dot L^2 dot T^(-2)]$.
    ],
  ),
  ans: "B",
  sol: [
    Mômen lực và công đều có thứ nguyên $[M L^2 T^(-2)]$. Tuy nhiên, chúng biểu thị hai tác dụng vật lí khác nhau nên không thể cộng trực tiếp với nhau.
  ],
)

// MCQ-02 — Phép đo trực tiếp và gián tiếp
#vp-question(
  [
    Để xác định chu kì $T$ của con lắc đơn, học sinh dùng đồng hồ bấm giây có độ chia nhỏ nhất $"0,01" thin "s"$ đo thời gian $t$ của $N = 20$ dao động toàn phần, rồi tính $T = frac(t, N)$. Nhận định nào sau đây đúng?
  ],
  type: "mcq",
  options: (
    [
      Phép đo thời gian $t$ là phép đo gián tiếp, phép xác định chu kì $T$ là phép đo trực tiếp.
    ],
    [
      Cả phép đo thời gian $t$ và phép xác định chu kì $T$ đều là các phép đo trực tiếp vì đều dùng đồng hồ bấm giây.
    ],
    [
      Phép đo thời gian $t$ là phép đo trực tiếp, còn việc xác định chu kì $T$ qua công thức $T = t/N$ là phép đo gián tiếp.
    ],
    [
      Việc chia cho số nguyên $N = 20$ làm biến đổi bản chất của phép đo từ đo thời gian sang đo tần số chứ không phải chu kì.
    ],
  ),
  ans: "C",
  sol: [
    Thời gian $t$ được đọc trực tiếp trên đồng hồ. Chu kì $T = t/N$ được tính từ kết quả đo $t$, nên được xác định gián tiếp.
  ],
)

// MCQ-03 — Sai số hệ thống và sai số ngẫu nhiên
#vp-question(
  [
    Một thước kẹp bằng thép được dùng để đo đường kính một chi tiết. Khi hai mỏ đo khép kín, vạch 0 của du xích lệch $+"0,05" thin "mm"$ so với vạch 0 của thước chính. Nhiệt độ môi trường tăng còn làm thước giãn nở. Hai nguyên nhân này gây ra các loại sai số nào?
  ],
  type: "mcq",
  options: (
    [
      Lệch vạch 0 gây ra sai số ngẫu nhiên; giãn nở nhiệt gây ra sai số hệ thống.
    ],
    [
      Lệch vạch 0 gây ra sai số hệ thống có thể hiệu chỉnh được; giãn nở nhiệt tạo ra sai số hệ thống do điều kiện môi trường.
    ],
    [
      Cả hai nguyên nhân trên đều tạo ra sai số ngẫu nhiên vì giá trị thực thay đổi theo thời gian.
    ],
    [
      Lệch vạch 0 là lỗi thao tác; sai số do giãn nở nhiệt không thể hiệu chỉnh.
    ],
  ),
  ans: "B",
  sol: [
    Cả hai đều là sai số hệ thống. Với sai lệch vạch 0 là $+"0,05" thin "mm"$, cần trừ $"0,05" thin "mm"$ khỏi số đọc. Sự giãn nở làm thay đổi thang đo, gây sai số do điều kiện môi trường.
  ],
)

// MCQ-04 — Chữ số có nghĩa
#vp-question(
  [
    Một tấm thép hình chữ nhật có chiều dài $L = "12,45" thin "m"$ và chiều rộng $W = "2,1" thin "m"$. Theo quy tắc chữ số có nghĩa (CSCN) của phép nhân, diện tích $S = L W$ được ghi là:
  ],
  type: "mcq",
  options: (
    [
      $"26,145" thin "m" ^2$.
    ],
    [
      $"26,15" thin "m" ^2$.
    ],
    [
      $"26,1" thin "m" ^2$.
    ],
    [
      $26 thin "m" ^2$.
    ],
  ),
  ans: "D",
  sol: [
    Theo quy tắc phép nhân các số đo: $L = "12,45" thin "m"$ (4 CSCN), $W = "2,1" thin "m"$ (2 CSCN). Kết quả diện tích $S = L × W = "12,45" × "2,1" = "26,145" thin "m" ^2$ phải làm tròn về số có 2 CSCN (theo $W$). Do đó $S = 26 thin "m" ^2$.
  ],
)

// MCQ-05 — Làm tròn kết quả đo
#vp-question(
  [
    Một phép đo cho $overline(g) = "9,78432" thin "m/s" ^2$ và $Δ g = "0,06318" thin "m/s" ^2$. Làm tròn sai số đến một chữ số có nghĩa và giá trị trung bình đến cùng hàng thập phân với sai số. Kết quả được viết là:
  ],
  type: "mcq",
  options: (
    [
      $g = ("9,78432" ± "0,06318") thin "m/s" ^2$.
    ],
    [
      $g = ("9,78" ± "0,06") thin "m/s" ^2$.
    ],
    [
      $g = ("9,784" ± "0,063") thin "m/s" ^2$.
    ],
    [
      $g = ("9,8" ± "0,1") thin "m/s" ^2$.
    ],
  ),
  ans: "B",
  sol: [
    Sai số tuyệt đối $Δ g = "0,06318"$ làm tròn đến 1 chữ số có nghĩa thành $"0,06"$ (hàng phần trăm). Giá trị trung bình $overline(g) = "9,78432"$ phải làm tròn đến hàng phần trăm tương ứng thành $"9,78"$. Kết quả là $g = ("9,78" ± "0,06") thin "m/s" ^2$.
  ],
)

// MCQ-06 — Sai số của tích và lũy thừa
#vp-question(
  [
    Đo khối lượng $m$ và đường kính $D$ của một viên bi hình cầu thu được sai số tỉ đối $δ m = "1,2"%$ và $δ D = "0,8"%$. Với $ρ = frac(6m, π D^3)$, sai số tỉ đối của khối lượng riêng là:
  ],
  type: "mcq",
  options: (
    [
      $δ ρ = "1,2"% + "0,8"% = "2,0"%$.
    ],
    [
      $δ ρ = "1,2"% + 3 × "0,8"% = "3,6"%$.
    ],
    [
      $δ ρ = "1,2"% + ("0,8"%)^3 = "1,712"%$.
    ],
    [
      $δ ρ = frac("1,2"%, 3 × "0,8"%) = "0,5"%$.
    ],
  ),
  ans: "B",
  sol: [
    Công thức $ρ = frac(6m, π D^3) = 6 π ^(-1) m D^(-3)$. Sai số tỉ đối $δ ρ = δ m + 3 dot δ D = "1,2"% + 3 × "0,8"% = "1,2"% + "2,4"% = "3,6"%$.
  ],
)

// MCQ-07 — Sai số của hiệu
#vp-question(
  [
    Hai đoạn dây có chiều dài $L_1 = ("15,40" ± "0,05") thin "m"$ và $L_2 = ("8,20" ± "0,03") thin "m"$. Kết quả xác định độ chênh lệch $Δ L = L_1 - L_2$, kèm sai số tuyệt đối, là:
  ],
  type: "mcq",
  options: (
    [
      $Δ L = ("7,20" ± "0,02") thin "m"$.
    ],
    [
      $Δ L = ("7,20" ± "0,08") thin "m"$.
    ],
    [
      $Δ L = ("23,60" ± "0,08") thin "m"$.
    ],
    [
      $Δ L = ("7,20" ± "0,0015") thin "m"$.
    ],
  ),
  ans: "B",
  sol: [
    Theo quy tắc ước lượng sai số của hiệu, sai số tuyệt đối là $"0,05" + "0,03" = "0,08" thin "m"$. Độ chênh lệch trung bình là $"15,40" - "8,20" = "7,20" thin "m"$. Kết quả: $Δ L = ("7,20" ± "0,08") thin "m"$.
  ],
)

// MCQ-08 — So sánh sai số tỉ đối
#vp-question(
  [
    Cho bốn kết quả đo:

    (1) Khối lượng $M = (5000 ± 10) thin "kg"$.

    (2) Đường kính $d = ("1,20" ± "0,02") thin "mm"$.

    (3) Thời gian $t = ("2,50" ± "0,05") thin "s"$.

    (4) Chiều dài $L = ("50,00" ± "0,10") thin "m"$.

    Những phép đo nào có sai số tỉ đối nhỏ nhất?
  ],
  type: "mcq",
  options: (
    [
      Chỉ phép đo (2).
    ],
    [
      Phép đo (1) và (4).
    ],
    [
      Chỉ phép đo (3).
    ],
    [
      Phép đo (2) và (3).
    ],
  ),
  ans: "B",
  sol: [
    Sai số tỉ đối của bốn phép đo:

    $δ _1 = frac(10, 5000) = "0,20"%$;
    $δ _2 = frac("0,02", "1,20") ≈ "1,67"%$;
    $δ _3 = frac("0,05", "2,50") = "2,00"%$;
    $δ _4 = frac("0,10", "50,00") = "0,20"%$.

    Phép đo (1) và (4) cùng có sai số tỉ đối nhỏ nhất.
  ],
)

// MCQ-09 — Sai số khi đo gia tốc rơi tự do
#vp-question(
  [
    Thả một viên bi từ trạng thái nghỉ ở độ cao $h = ("0,800" ± "0,005") thin "m"$, đo được thời gian rơi $t = ("0,404" ± "0,002") thin "s"$. Với $g = frac(2h, t^2)$, đại lượng nào đóng góp nhiều nhất vào sai số tỉ đối của $g$?
  ],
  type: "mcq",
  options: (
    [
      Độ cao $h$, vì độ cao có giá trị nhỏ nên sai số tuyệt đối lớn.
    ],
    [
      Hằng số 2, vì số 2 làm tăng gấp đôi sai số.
    ],
    [
      Thời gian $t$, vì thời gian ở mẫu số với số mũ 2, đóng góp $2 × δ t$ vào sai số tỉ đối tổng hợp.
    ],
    [
      Cả $h$ và $t$ đóng góp ngang nhau vì sai số tuyệt đối của chúng bằng nhau ($"0,005"$ và $"0,002"$).
    ],
  ),
  ans: "C",
  sol: [
    Với $g = 2h/t^2$, ta có $δ g = δ h + 2 δ t$.
    $δ h = frac("0,005", "0,800") = "0,625"%$;
    $2 δ t = 2 × frac("0,002", "0,404") ≈ "0,990"%$.
    Vì $2 δ t > δ h$, phép đo thời gian đóng góp nhiều hơn.
  ],
)

// MCQ-10 — Ý nghĩa ô sai số
#vp-question(
  [
    Trên đồ thị lực kéo $F$ theo gia tốc $a$, mỗi kết quả đo được biểu diễn bằng một hình chữ nhật có tâm $(overline(a), overline(F))$, chiều rộng $2 Δ a$ và chiều cao $2 Δ F$. Hình chữ nhật này được gọi là "ô sai số". Ý nghĩa của ô sai số là gì?
  ],
  type: "mcq",
  options: (
    [
      Giá trị thực của $(a, F)$ nằm chắc chắn tại tâm của hình chữ nhật.
    ],
    [
      Ô sai số biểu diễn vùng giá trị xét đến sai số của cả $a$ và $F$ quanh kết quả đo.
    ],
    [
      Diện tích của ô chữ nhật đại diện cho công cơ học tác dụng lên vật.
    ],
    [
      Độ dốc của đường chéo ô chữ nhật đại diện cho khối lượng $m$ của vật.
    ],
  ),
  ans: "B",
  sol: [
    Ô sai số biểu diễn vùng giá trị xét đến sai số của cả hai đại lượng: $a$ nằm trong $[overline(a) - Δ a; overline(a) + Δ a]$ và $F$ nằm trong $[overline(F) - Δ F; overline(F) + Δ F]$. Không thể khẳng định giá trị thực nằm đúng tại tâm ô.
  ],
)

// MCQ-11 — Xử lí số liệu bất thường
#vp-question(
  [
    Năm lần đo thời gian chuyển động của một xe lăn cho kết quả: $t_1 = "1,22" thin "s"$; $t_2 = "1,24" thin "s"$; $t_3 = "1,21" thin "s"$; $t_4 = "1,98" thin "s"$; $t_5 = "1,23" thin "s"$. Cách xử lí số liệu nào phù hợp?
  ],
  type: "mcq",
  options: (
    [
      Cộng tất cả 5 giá trị rồi chia cho 5 vì mọi dữ liệu thu thập đều bình đẳng.
    ],
    [
      Kiểm tra nguyên nhân của giá trị $t_4$; nếu xác nhận có lỗi thao tác, loại giá trị này và tính trung bình bốn lần còn lại.
    ],
    [
      Thay giá trị $t_4 = "1,98" thin "s"$ bằng giá trị trung bình của $t_1$ và $t_5$.
    ],
    [
      Lấy giá trị $t_4$ làm giá trị đại diện vì đó là lần đo có thời gian lớn nhất, đảm bảo tính an toàn.
    ],
  ),
  ans: "B",
  sol: [
    Giá trị $t_4$ khác xa các số đo còn lại nên cần kiểm tra thao tác và điều kiện đo. Chỉ loại bỏ khi có căn cứ xác nhận phép đo này bị lỗi. Khi đó:
    $overline(t) = frac("1,22" + "1,24" + "1,21" + "1,23", 4) = "1,225" thin "s"$.
  ],
)

// MCQ-12 — Đọc thước kẹp
#vp-question(
  [
    Một thước kẹp có độ chia nhỏ nhất $"0,1" thin "mm"$. Vạch 0 của du xích nằm giữa vạch $18 thin "mm"$ và $19 thin "mm"$ trên thước chính; vạch thứ 6 của du xích trùng với một vạch trên thước chính. Bỏ qua sai lệch vạch 0, đường kính vật đo là:
  ],
  type: "mcq",
  options: (
    [
      $"18,0" thin "mm"$.
    ],
    [
      $"18,6" thin "mm"$.
    ],
    [
      $"19,6" thin "mm"$.
    ],
    [
      $"18,60" thin "cm"$.
    ],
  ),
  ans: "B",
  sol: [
    Số đọc bằng số chỉ trên thước chính cộng phần đọc trên du xích:
    $d = 18 + 6 × "0,1" = "18,6" thin "mm"$.
  ],
)

// MCQ-13 — Sai số dụng cụ
#vp-question(
  [
    Đồng hồ đo điện hiện số hiển thị điện áp $U = "12,35" thin "V"$. Độ phân giải của thang đo là $"0,01" thin "V"$; nhà sản xuất quy định sai số dụng cụ bằng một đơn vị của chữ số cuối. Sai số dụng cụ $Δ U_("dc")$ là:
  ],
  type: "mcq",
  options: (
    [
      $"0,005" thin "V"$.
    ],
    [
      $"0,01" thin "V"$.
    ],
    [
      $"0,05" thin "V"$.
    ],
    [
      $"0,1" thin "V"$.
    ],
  ),
  ans: "B",
  sol: [
    Theo thông số đã cho, sai số dụng cụ bằng một đơn vị của chữ số cuối:
    $Δ U_("dc") = "0,01" thin "V"$.
  ],
)

// MCQ-14 — Sai số khi đo tốc độ
#vp-question(
  [
    Đo quãng đường và thời gian chuyển động của một ô tô thu được $s = ("20,00" ± "0,05") thin "m"$ và $t = ("0,80" ± "0,02") thin "s"$. Tính tốc độ trung bình $overline(v)$ và sai số tuyệt đối $Δ v$, làm tròn sai số đến một chữ số có nghĩa.
  ],
  type: "mcq",
  options: (
    [
      $overline(v) = "25,0" thin "m/s"; Δ v = "0,7" thin "m/s"$.
    ],
    [
      $overline(v) = "25,0" thin "m/s"; Δ v = "0,1" thin "m/s"$.
    ],
    [
      $overline(v) = "25,00" thin "m/s"; Δ v = "0,03" thin "m/s"$.
    ],
    [
      $overline(v) = "16,0" thin "m/s"; Δ v = "0,5" thin "m/s"$.
    ],
  ),
  ans: "A",
  sol: [
    $overline(v) = frac(overline(s), overline(t)) = frac("20,00", "0,80") = "25,0" thin "m/s"$.
    Sai số tỉ đối $δ v = δ s + δ t = frac("0,05", "20,00") + frac("0,02", "0,80") = "0,0025" + "0,025" = "0,0275" = "2,75"%$.
    Sai số tuyệt đối $Δ v = overline(v) × δ v = "25,0" × "0,0275" = "0,6875" thin "m/s" ≈ "0,7" thin "m/s"$.
    Kết quả $v = ("25,0" ± "0,7") thin "m/s"$.
  ],
)

// MCQ-15 — So sánh hai kết quả đo
#vp-question(
  [
    Hai phòng thí nghiệm đo tốc độ ánh sáng trong chân không, thu được:

    $c_A = ("2,9978" ± "0,0005") × 10^8 thin "m/s"$.

    $c_B = ("2,9985" ± "0,0003") × 10^8 thin "m/s"$.

    Coi hai kết quả tương thích nếu các khoảng giá trị xác định bởi sai số có phần giao nhau. Nhận định nào sau đây đúng?
  ],
  type: "mcq",
  options: (
    [
      Tương thích chỉ vì hai giá trị trung bình gần nhau, không cần xét sai số.
    ],
    [
      Không tương thích vì hai khoảng giá trị không giao nhau.
    ],
    [
      Tương thích vì hai khoảng giá trị có phần giao nhau.
    ],
    [
      Không tương thích vì phòng B có sai số nhỏ hơn phòng A.
    ],
  ),
  ans: "C",
  sol: [
    Khoảng giá trị của A là $["2,9973"; "2,9983"] × 10^8 thin "m/s"$; của B là $["2,9982"; "2,9988"] × 10^8 thin "m/s"$. Hai khoảng giao nhau tại $["2,9982"; "2,9983"] × 10^8 thin "m/s"$, nên tương thích theo tiêu chí của đề.
  ],
)

// MCQ-16 — Sai số thể tích khối trụ
#vp-question(
  [
    Một khối trụ có bán kính $r = ("2,00" ± "0,02") thin "cm"$ và chiều cao $h = ("10,00" ± "0,05") thin "cm"$. Với $V = π r^2 h$, thể tích trung bình $overline(V)$ và sai số tỉ đối $δ V$ là:
  ],
  type: "mcq",
  options: (
    [
      $overline(V) = "125,7" thin "cm"^3; δ V = "1,0"%$.
    ],
    [
      $overline(V) = "125,7" thin "cm"^3; δ V = "1,5"%$.
    ],
    [
      $overline(V) = "125,7" thin "cm"^3; δ V = "2,5"%$.
    ],
    [
      $overline(V) = "40,0" thin "cm"^3; δ V = "1,5"%$.
    ],
  ),
  ans: "C",
  sol: [
    $overline(V) = π r^2 h ≈ "125,66" thin "cm"^3 ≈ "125,7" thin "cm"^3$.
    $δ V = 2 δ r + δ h = 2 × (frac("0,02", "2,00") ) + frac("0,05", "10,00") = 2 × 1% + "0,5"% = "2,5"%$.
  ],
)

// MCQ-17 — Thứ nguyên của hệ số cản
#vp-question(
  [
    Lực cản không khí có biểu thức $F_d = frac(1, 2) C_d ρ A v^2$, trong đó $ρ$ là khối lượng riêng của không khí, $A$ là diện tích tiết diện vuông góc với hướng chuyển động và $v$ là tốc độ của vật đối với không khí. Thứ nguyên của hệ số $C_d$ là:
  ],
  type: "mcq",
  options: (
    [
      $[M dot L dot T^(-2)]$.
    ],
    [
      $[M^0 dot L^0 dot T^0]$ (đại lượng không thứ nguyên).
    ],
    [
      $[L dot T^(-1)]$.
    ],
    [
      $[M dot L^(-3)]$.
    ],
  ),
  ans: "B",
  sol: [
    $C_d = frac(2F_d, ρ A v^2)$.
    Thứ nguyên $F_d$: $[M dot L dot T^(-2)]$.
    Thứ nguyên $ρ A v^2$: $[M dot L^(-3)] dot [L^2] dot [L dot T^(-1)]^2 = [M dot L^(-1)] dot [L^2 dot T^(-2)] = [M dot L dot T^(-2)]$.
    Do tử số và mẫu số có cùng thứ nguyên, $C_d$ không có thứ nguyên $[M^0 L^0 T^0]$.
  ],
)

// MCQ-18 — Đo thời gian nhiều dao động
#vp-question(
  [
    Khi xác định chu kì con lắc đơn bằng đồng hồ bấm giây, người ta đo thời gian của $N = 50$ dao động toàn phần thay vì một dao động. Giả sử sai số do bấm giờ của hai cách đo như nhau. Mục đích của cách đo này là gì?
  ],
  type: "mcq",
  options: (
    [
      Làm cho gia tốc trọng trường $g$ tăng lên 50 lần.
    ],
    [
      Giảm sai số dụng cụ của thước đo chiều dài $L$.
    ],
    [
      Giảm sai số tuyệt đối do phản xạ bấm giờ $Δ t_("px")$ khi xác định chu kì $T$ đi 50 lần, vì $Δ T = frac(Δ t_("px"), N)$.
    ],
    [
      Triệt tiêu hoàn toàn sai số hệ thống của đồng hồ.
    ],
  ),
  ans: "C",
  sol: [
    Thời gian đo $t = N dot T ⇒ T = t/N$. Sai số tuyệt đối của chu kì $Δ T = frac(Δ t, N)$. Bằng cách đo $N = 50$ chu kì, sai số bấm giờ $Δ t$ chia cho 50 giúp giảm sai số $Δ T$ đi 50 lần.
  ],
)

// MCQ-19 — Sai số do thị sai
#vp-question(
  [
    Khi đọc thể tích chất lỏng có mặt khum lõm trong bình chia độ, học sinh nhìn chếch từ trên xuống và đối chiếu với vạch chia ở phía gần mắt. Cách quan sát này gây ra sai số gì và làm số đọc thay đổi thế nào?
  ],
  type: "mcq",
  options: (
    [
      Sai số do thị sai, làm giá trị thể tích đọc được lớn hơn giá trị thực.
    ],
    [
      Sai số do thị sai, làm giá trị thể tích đọc được nhỏ hơn giá trị thực.
    ],
    [
      Sai số ngẫu nhiên, không ảnh hưởng đến giá trị trung bình.
    ],
    [
      Sai số do lỗi thao tác làm chất lỏng bị bay hơi.
    ],
  ),
  ans: "A",
  sol: [
    Nhìn chếch từ trên xuống làm vạch mắt ngắm đường viền mặt chất lỏng khum lõm chiếu lên thành bình ở vị trí cao hơn thực tế, làm giá trị thể tích đọc được lớn hơn giá trị thực.
  ],
)

// MCQ-20 — Đếm chữ số có nghĩa
#vp-question(
  [
    Cho các số đo: (1) $"0,0025" thin "kg"$; (2) $"2,050" thin "m"$; (3) $"1,50" × 10^3 thin "N"$; (4) $100 thin "s"$; (5) $"0,0500" thin "A"$. Số chữ số có nghĩa (CSCN) của từng số đo lần lượt là:
  ],
  type: "mcq",
  options: (
    [
      (1) 4 CSCN; (2) 4 CSCN; (3) 3 CSCN; (4) 3 CSCN; (5) 3 CSCN.
    ],
    [
      (1) 2 CSCN; (2) 4 CSCN; (3) 3 CSCN; (4) Không xác định chắc chắn (1, 2 hoặc 3 CSCN); (5) 3 CSCN.
    ],
    [
      (1) 2 CSCN; (2) 3 CSCN; (3) 2 CSCN; (4) 1 CSCN; (5) 1 CSCN.
    ],
    [
      (1) 5 CSCN; (2) 4 CSCN; (3) 3 CSCN; (4) 3 CSCN; (5) 4 CSCN.
    ],
  ),
  ans: "B",
  sol: [
    (1) $"0,0025"$: Các số 0 ở đầu không có nghĩa $→$ 2 CSCN (2 và 5).
    (2) $"2,050"$: Số 0 ở giữa và ở cuối sau dấu phẩy có nghĩa $→$ 4 CSCN.
    (3) $"1,50" × 10^3$: 3 CSCN.
    (4) $100$: Không có dấu thập phân $→$ mơ hồ (1, 2 hoặc 3 CSCN).
    (5) $"0,0500"$: 3 CSCN (5, 0, 0 ở cuối).
  ],
)

= Phần II. Trắc nghiệm Đúng/Sai
#sbt-instructions(reset: true)[Xác định mỗi phát biểu a), b), c), d) là đúng hay sai.]

// TF-01
#vp-question(
  [
    Thí nghiệm đo gia tốc rơi tự do $g$ dùng viên bi, nam châm điện, hai cổng quang điện A và B cách nhau $s$, cùng đồng hồ hiện số có độ phân giải $"0,001" thin "s"$. Đo $s$ bằng thước có độ chia nhỏ nhất $1 thin "mm"$; quy ước sai số dụng cụ của thước bằng nửa độ chia nhỏ nhất.
  ],
  type: "tf",
  statements: (
    [
      Nam châm điện giúp loại bỏ hoàn toàn ảnh hưởng của lực cản không khí.
    ],
    [
      Theo quy ước đã cho, sai số dụng cụ khi đo $s$ là $Δ s_("dc") = "0,5" thin "mm"$.
    ],
    [
      Đồng hồ có độ phân giải $"0,001" thin "s"$ sẽ triệt tiêu hoàn toàn sai số ngẫu nhiên.
    ],
    [
      Nếu vật bắt đầu rơi từ trạng thái nghỉ tại A và bỏ qua lực cản, thì $g = frac(2s, t^2)$ và $δ g = δ s + 2 δ t$, với $t$ là thời gian đi từ A đến B.
    ],
  ),
  ans-tf: ("S", "Đ", "S", "Đ"),
  sol: [
    a) SAI. Nam châm điện dùng để giữ và thả vật, không loại bỏ lực cản không khí.

    b) ĐÚNG. Theo quy ước của đề, $Δ s_("dc") = frac(1, 2) × 1 thin "mm" = "0,5" thin "mm"$.

    c) SAI. Độ phân giải nhỏ không đồng nghĩa với việc loại bỏ sai số ngẫu nhiên.

    d) ĐÚNG. Với vận tốc đầu bằng 0, $s = frac(1, 2) g t^2$, suy ra $g = 2s/t^2$ và $δ g = δ s + 2 δ t$.
  ],
)

// TF-02
#vp-question(
  [
    Xét các phát biểu về chữ số có nghĩa và cách ghi kết quả đo. Với ý d), quy ước làm tròn sai số đến một chữ số có nghĩa.
  ],
  type: "tf",
  statements: (
    [
      Các chữ số 0 đứng ở đầu một số thập phân (ví dụ số $"0,0045"$) không phải là chữ số có nghĩa, chúng chỉ có vai trò xác định vị trí dấu phẩy.
    ],
    [
      Khi thực hiện phép nhân hoặc phép chia các số đo thực nghiệm, kết quả cuối cùng phải được làm tròn sao cho có số chữ số có nghĩa bằng với số đo có ít chữ số có nghĩa nhất.
    ],
    [
      Trong kết quả $m = ("24,50" ± "0,05") thin "g"$, giá trị trung bình được ghi đến hàng phần mười, còn sai số được ghi đến hàng phần trăm.
    ],
    [
      Nếu kết quả tính toán thu được $overline(A) = "15,6789"$ và sai số $Δ A = "0,234"$, ta phải làm tròn sai số thành $Δ A = "0,2"$ và biểu diễn kết quả là $A = "15,7" ± "0,2"$.
    ],
  ),
  ans-tf: ("Đ", "Đ", "S", "Đ"),
  sol: [
    a) ĐÚNG. Các chữ số 0 ở đầu chỉ có vai trò định vị dấu thập phân, không phải CSCN.

    b) ĐÚNG. Phép nhân/chia lấy số CSCN theo số đo có ít CSCN nhất.

    c) SAI. Cả $"24,50"$ và $"0,05"$ đều được ghi đến hàng phần trăm, không phải hàng phần mười.

    d) ĐÚNG. $Δ A = "0,234"$ làm tròn thành $"0,2"$ (hàng phần mười) $⇒ overline(A) = "15,6789"$ làm tròn thành $"15,7"$. Kết quả $"15,7" ± "0,2"$.
  ],
)

// TF-03
#vp-question(
  [
    Để xác định khối lượng riêng $ρ$ của chất lỏng, học sinh đo khối lượng bình chia độ rỗng $m_1 = ("50,20" ± "0,01") thin "g"$, đọc thể tích chất lỏng trong bình $V = ("100,0" ± "0,5") thin "mL"$ và đo tổng khối lượng bình cùng chất lỏng $m_2 = ("130,20" ± "0,01") thin "g"$.
  ],
  type: "tf",
  statements: (
    [
      Phép đo thể tích chất lỏng qua bình chia độ là phép đo trực tiếp.
    ],
    [
      Khối lượng của chất lỏng là $m = m_2 - m_1 = ("80,00" ± "0,02") thin "g"$.
    ],
    [
      Giá trị khối lượng riêng trung bình của chất lỏng là $overline(ρ) = "0,800" thin "g/mL"$ (hay $800 thin "kg/m" ^3$).
    ],
    [
      Sai số tỉ đối $δ ρ$ của phép đo khối lượng riêng này bằng $"0,525"%$ và sai số tuyệt đối là $Δ ρ = "0,0042" thin "g/mL"$.
    ],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "Đ"),
  sol: [
    a) ĐÚNG. Thể tích đọc trực tiếp trên bình chia độ là phép đo trực tiếp.

    b) ĐÚNG. $m = m_2 - m_1 = "130,20" - "50,20" = "80,00" thin "g"$. Sai số $Δ m = Δ m_1 + Δ m_2 = "0,01" + "0,01" = "0,02" thin "g"$. Kết quả $m = ("80,00" ± "0,02") thin "g"$.

    c) ĐÚNG. $overline(ρ) = frac(overline(m), overline(V)) = frac("80,00", "100,0") = "0,800" thin "g/mL" = 800 thin "kg/m" ^3$.

    d) ĐÚNG. $δ ρ = δ m + δ V = frac("0,02", "80,00") + frac("0,5", "100,0") = "0,025"% + "0,500"% = "0,525"%$. Sai số tuyệt đối $Δ ρ = "0,800" × "0,525"% = "0,0042" thin "g/mL"$.
  ],
)

// TF-04
#vp-question(
  [
    Một động cơ tạo lực kéo cùng hướng chuyển động, có công suất $P = F v$. Đo được $F = (120 ± 2) thin "N"$ và $v = ("5,0" ± "0,1") thin "m/s"$. Xét các phát biểu sau.
  ],
  type: "tf",
  statements: (
    [
      Phép đo công suất $P$ là phép đo gián tiếp.
    ],
    [
      Giá trị công suất trung bình thu được là $overline(P) = 600 thin "W"$.
    ],
    [
      Sai số tỉ đối của lực kéo là $δ F ≈ "1,67"%$ và của tốc độ là $δ v = "2,0"%$.
    ],
    [
      Trước khi làm tròn kết quả cuối cùng, sai số tuyệt đối tính được là $Δ P = 22 thin "W"$.
    ],
  ),
  ans-tf: ("Đ", "Đ", "Đ", "Đ"),
  sol: [
    a) ĐÚNG. Công suất $P$ được xác định qua công thức $P = F dot v$ là phép đo gián tiếp.

    b) ĐÚNG. $overline(P) = overline(F) dot overline(v) = 120 × "5,0" = 600 thin "W"$.

    c) ĐÚNG. $δ F = frac(2, 120) ≈ "1,67"%$; $δ v = frac("0,1", "5,0") = "2,00"%$.

    d) ĐÚNG. Tính với số liệu chưa làm tròn: $Δ P = overline(v) Δ F + overline(F) Δ v = 5 × 2 + 120 × "0,1" = 22 thin "W"$.
  ],
)

// TF-05
#vp-question(
  [
    Xét các phát biểu về sai số phép đo.
  ],
  type: "tf",
  statements: (
    [
      Sai số hệ thống luôn có cùng một giá trị trong mọi lần đo.
    ],
    [
      Đo lặp lại độc lập trong cùng điều kiện và lấy trung bình giúp giảm ảnh hưởng của sai số ngẫu nhiên.
    ],
    [
      Sai số dụng cụ luôn bằng nửa độ chia nhỏ nhất trong mọi trường hợp.
    ],
    [
      Chỉ cần tăng số lần đo và lấy trung bình là có thể loại bỏ hoàn toàn mọi sai số.
    ],
  ),
  ans-tf: ("S", "Đ", "S", "S"),
  sol: [
    a) SAI. Sai số hệ thống có thể không đổi hoặc biến đổi theo một quy luật xác định.

    b) ĐÚNG. Lấy trung bình các phép đo độc lập trong cùng điều kiện giúp giảm ảnh hưởng của biến động ngẫu nhiên.

    c) SAI. Sai số dụng cụ phụ thuộc đặc điểm và thông số của dụng cụ, không phải lúc nào cũng bằng nửa độ chia nhỏ nhất.

    d) SAI. Đo nhiều lần không tự loại bỏ sai số hệ thống hay giới hạn độ phân giải của dụng cụ.
  ],
)

= Phần III. Trắc nghiệm trả lời ngắn
#sbt-instructions(reset: true)[Tính và điền kết quả theo yêu cầu của từng câu.]

// SHORT-01
#vp-question(
  [
    Dùng thước kẹp có độ chia nhỏ nhất $"0,02" thin "mm"$ đo đường kính $d$ của một viên bi, thu được năm giá trị (đơn vị mm): $"6,32"$; $"6,34"$; $"6,32"$; $"6,30"$; $"6,32"$. Lấy sai số dụng cụ bằng một độ chia nhỏ nhất. Tính sai số tỉ đối $δ d$ theo phần trăm, làm tròn đến hai chữ số thập phân.
  ],
  type: "short",
  ans: "0,44",
  sol: [
    $overline(d) = frac("6,32" + "6,34" + "6,32" + "6,30" + "6,32", 5) = "6,32" thin "mm"$.

    $overline(Δ d) = frac(0 + "0,02" + 0 + "0,02" + 0, 5) = "0,008" thin "mm"$.

    $Δ d = overline(Δ d) + Δ d_("dc") = "0,008" + "0,02" = "0,028" thin "mm"$.

    $δ d = frac("0,028", "6,32") ≈ "0,443"% ≈ "0,44"%$.
  ],
)

// SHORT-02
#vp-question(
  [
    Một con lắc đơn có chiều dài $L = ("0,992" ± "0,002") thin "m"$. Thời gian của $N = 20$ dao động toàn phần là $t = ("40,00" ± "0,10") thin "s"$. Dùng $g = frac(4 π^2 L, T^2)$, với $T = t/N$ và $π = "3,1416"$. Bỏ qua sai số của $N$ và $π$. Tính $overline(g)$ (m/s²) và $δ g$ (%), đều làm tròn đến hai chữ số thập phân.
  ],
  type: "short",
  ans: "9,79; 0,70",
  short-fields: (
    (label: [$overline(g)$ (m/s²)], ans: "9,79", boxes: 4),
    (label: [$δ g$ (%)], ans: "0,70", boxes: 4),
  ),
  sol: [
    Đáp số: $overline(g) =$ 9,79 $thin "m/s" ^2$; $δ g =$ 0,70 $%$
    Giải:
    Chu kì trung bình $overline(T) = frac(overline(t), N) = frac("40,00", 20) = "2,000" thin "s"$.
    Sai số chu kì $Δ T = frac(Δ t, N) = frac("0,10", 20) = "0,005" thin "s"$.
    Gia tốc trung bình: $overline(g) = frac(4 π ^2 overline(L), overline(T)^2) = frac(4 × "3,1416"^2 × "0,992", "2,000"^2) ≈ "9,7907" thin "m/s" ^2 ≈ "9,79" thin "m/s" ^2$.
    Sai số tỉ đối: $δ g = δ L + 2 δ T$.
    $δ g = frac("0,002", "0,992") + 2 × frac("0,005", "2,000") ≈ "0,7016"% ≈ "0,70"%$.
  ],
)

// SHORT-03
#vp-question(
  [
    Một tấm nhôm hình chữ nhật có chiều dài $a = ("2,50" ± "0,01") thin "m"$ và chiều rộng $b = ("1,20" ± "0,01") thin "m"$. Tính sai số tuyệt đối $Δ S$ của diện tích, theo m² và làm tròn đến ba chữ số thập phân.
  ],
  type: "short",
  ans: "0,037",
  short-boxes: 5,
  sol: [
    Đáp số: 0,037 $thin "m" ^2$
    Giải:
    Diện tích trung bình $overline(S) = overline(a) dot overline(b) = "2,50" × "1,20" = "3,00" thin "m" ^2$.
    Sai số tỉ đối $δ S = δ a + δ b = frac("0,01", "2,50") + frac("0,01", "1,20") ≈ "1,233"%$.
    Sai số tuyệt đối $Δ S = overline(b) Δ a + overline(a) Δ b = "1,20" × "0,01" + "2,50" × "0,01" = "0,037" thin "m"^2$.
  ],
)

// SHORT-04
#vp-question(
  [
    Đặt hiệu điện thế $U = ("12,0" ± "0,2") thin "V"$ vào điện trở $R = (100 ± 2) thin "Ω"$. Với $I = U/R$, tính sai số tỉ đối $δ I$ theo phần trăm, làm tròn đến một chữ số thập phân.
  ],
  type: "short",
  ans: "3,7",
  sol: [
    Đáp số: 3,7 $%$
    Giải:
    Với $I = U/R$, ta có $δ I = δ U + δ R$.
    $δ I = frac("0,2", "12,0") + frac(2, 100) ≈ "3,67"% ≈ "3,7"%$.
  ],
)

// SHORT-05
#vp-question(
  [
    Một ô tô đi hết quãng đường $S = ("100,0" ± "0,2") thin "m"$ trong thời gian $t = ("4,00" ± "0,05") thin "s"$. Tính giá trị lớn nhất của tốc độ trung bình $v_("max") = frac(S_("max"), t_("min"))$ trong khoảng sai số đã cho, theo m/s và làm tròn đến hai chữ số thập phân.
  ],
  type: "short",
  ans: "25,37",
  short-boxes: 5,
  sol: [
    Đáp số: 25,37 $thin "m/s"$
    Giải:
    Tốc độ cực đại xảy ra khi quãng đường lớn nhất và thời gian nhỏ nhất:
    $S_("max") = "100,0" + "0,2" = "100,2" thin "m"$.
    $t_("min") = "4,00" - "0,05" = "3,95" thin "s"$.
    $v_("max") = frac(S_("max"), t_("min")) = frac("100,2", "3,95") ≈ "25,367" thin "m/s" ≈ "25,37" thin "m/s"$.
  ],
)

= Phần IV. Tự luận
#sbt-instructions(reset: true)[Trình bày lập luận, công thức và các bước tính.]

// ESSAY-01 — Sai số đường kính và thể tích
#vp-question(
  [
    Dùng panme có độ chia nhỏ nhất $"0,01" thin "mm"$ đo đường kính $D$ của một viên bi hình cầu.

    a) Vì sao đo đường kính thuận tiện hơn đo trực tiếp bán kính của viên bi?

    b) Với $V = frac(1, 6) π D^3$, lập hệ thức liên hệ giữa sai số tỉ đối $δ V$ và $δ D$.

    c) Nếu yêu cầu $δ V ≤ "1,5"%$, đường kính $D = "20,00" thin "mm"$ được phép có sai số tuyệt đối tối đa bao nhiêu?
  ],
  type: "essay",
  lines: 12,
  sol: [
    a) Hai mặt đo của panme tiếp xúc với hai phía đối diện của viên bi, thuận tiện để đo đường kính. Đo trực tiếp bán kính đòi hỏi xác định tâm nằm bên trong viên bi.

    b) Với $V = frac(π, 6) D^3$, bỏ qua sai số của hằng số $π/6$. Theo quy tắc sai số của lũy thừa:
    $δ V = 3 δ D$.

    c) $δ D ≤ frac("1,5"%, 3) = "0,5"%$.
    Do đó $Δ D_("max") = "20,00" × "0,005" = "0,10" thin "mm"$.
  ],
)

// ESSAY-02 — Mô hình đo bán kính Trái Đất
#vp-question(
  [
    Xét mô hình đo bán kính Trái Đất theo phương pháp của Eratosthenes. Giả sử Trái Đất hình cầu, tia sáng Mặt Trời song song và Syene, Alexandria nằm trên cùng một kinh tuyến. Khi Mặt Trời ở thiên đỉnh tại Syene, tia sáng ở Alexandria hợp với phương thẳng đứng góc $θ = "7,2"^°$. Khoảng cách theo cung kinh tuyến giữa hai nơi là $s = 800 thin "km"$.

    a) Lập công thức $R_("TĐ") = s/θ$, với $θ$ tính bằng radian.

    b) Cho $Δ s = 40 thin "km"$ và $Δ θ = "0,3"^°$. Tính $overline(R)_("TĐ")$ và $δ R_("TĐ")$.

    c) Nêu ba nguồn sai số có thể phát sinh do các giả thiết của mô hình không được đáp ứng trong thực tế.
  ],
  type: "essay",
  lines: 12,
  sol: [
    a) Hai phương thẳng đứng trùng với hai bán kính của Trái Đất. Do tia sáng song song, góc ở tâm chắn cung giữa hai nơi bằng $θ$. Từ $s = R_("TĐ") θ$ suy ra $R_("TĐ") = s/θ$.

    b) $θ = "7,2" × π/180 ≈ "0,12566" thin "rad"$.
    $overline(R)_("TĐ") = 800/("7,2" × π/180) ≈ 6366 thin "km"$.
    $δ R_("TĐ") = δ s + δ θ = frac(40, 800) + frac("0,3", "7,2") ≈ "9,17"%$.

    c) Ví dụ: hai nơi không nằm đúng trên cùng một kinh tuyến; quãng đường đo được không trùng cung kinh tuyến; Trái Đất không phải hình cầu hoàn hảo. Những sai lệch này làm kết quả khác với mô hình lí tưởng.
  ],
)

// ESSAY-03 — Đo gia tốc rơi tự do
#vp-question(
  [
    Trong thí nghiệm đo gia tốc rơi tự do, một vật được thả từ trạng thái nghỉ và rơi quãng đường $h = ("0,500" ± "0,001") thin "m"$. Đồng hồ bắt đầu đo lúc thả vật và dừng khi vật đi qua cổng quang điện ở cuối quãng đường. Năm lần đo cho kết quả:

    #table(
      columns: (1.5fr, 1fr, 1fr, 1fr, 1fr, 1fr),
      inset: 6pt, align: center + horizon, stroke: 0.5pt + luma(190),
      table.header([*Lần đo*], [$t_1$], [$t_2$], [$t_3$], [$t_4$], [$t_5$]),
      [Thời gian $t$ (s)], [$"0,319"$], [$"0,321"$], [$"0,318"$], [$"0,320"$], [$"0,322"$],
    )

    a) Tính giá trị thời gian trung bình $overline(t)$, sai số ngẫu nhiên trung bình $overline(Δ t)$, và ghi kết quả thời gian $t = overline(t) ± Δ t$ (biết sai số dụng cụ $Δ t_("dc") = "0,001" thin "s"$).

    b) Tính $overline(g)$ và $Δ g$ theo $g = 2h/t^2$, bỏ qua lực cản không khí. Giữ các chữ số trong quá trình tính và làm tròn sai số cuối cùng đến hai chữ số có nghĩa.

    c) So sánh với giá trị tham chiếu $g_("ref") = "9,808" thin "m/s" ^2$ cho trước. Nêu các nguyên nhân có thể gây chênh lệch.
  ],
  type: "essay",
  lines: 12,
  sol: [
    a) Tính các giá trị từ bảng số liệu:

    Thời gian trung bình: $ overline(t) = frac("0,319" + "0,321" + "0,318" + "0,320" + "0,322", 5) = "0,3200" thin "s" $
    Độ lệch tuyệt đối của từng lần đo (đơn vị s): $Δ t_1 = "0,001"$; $Δ t_2 = "0,001"$; $Δ t_3 = "0,002"$; $Δ t_4 = "0,000"$; $Δ t_5 = "0,002"$.
    Sai số ngẫu nhiên trung bình: $ overline(Δ t) = frac("0,001" + "0,001" + "0,002" + "0,000" + "0,002", 5) = "0,0012" thin "s" $
    Sai số tuyệt đối tổng hợp của thời gian (với $Δ t_("dc") = "0,001" thin "s"$): $ Δ t = overline(Δ t) + Δ t_("dc") = "0,0012" + "0,001" = "0,0022" thin "s" ≈ "0,002" thin "s" $
    Ghi kết quả thời gian: $t = ("0,320" ± "0,002") thin "s"$.

    b) Tính gia tốc $g$:

    Giá trị trung bình: $overline(g) = frac(2overline(h), overline(t)^2) = frac(2 × "0,500", ("0,320")^2) ≈ "9,7656" thin "m/s" ^2 ≈ "9,77" thin "m/s" ^2$.
    Sai số tỉ đối: $ δ g = δ h + 2 δ t = frac("0,001", "0,500") + 2 × (frac("0,0022", "0,320") ) = "0,2"% + "1,375"% = "1,575"% $
    Sai số tuyệt đối: $Δ g ≈ "9,7656" × "1,575"% ≈ "0,1538" thin "m/s" ^2 ≈ "0,15" thin "m/s" ^2$.
    Kết quả biểu diễn: $g = ("9,77" ± "0,15") thin "m/s" ^2$.

    c) Khoảng giá trị $["9,62"; "9,92"] thin "m/s"^2$ chứa giá trị tham chiếu $"9,808" thin "m/s"^2$. Chênh lệch có thể do lực cản không khí, sai lệch khi đo quãng đường hoặc độ trễ của bộ phận đo thời gian.
  ],
)

// ESSAY-04 — Ảnh hưởng của góc đo tốc độ
#vp-question(
  [
    Xét mô hình máy đo tốc độ bằng radar: $v_("đo") = v cos θ$, trong đó $v$ là tốc độ thực của xe và $θ$ là góc giữa hướng đo với hướng chuyển động ($0^° ≤ θ < 90^°$). Bỏ qua các nguồn sai số khác.

    a) Khi $θ > 0$, số chỉ của máy lớn hơn hay nhỏ hơn tốc độ thực? Đây là loại sai số nào?

    b) Cho $v = "88,0" thin "km/h"$ và $θ = 15^° ± 1^°$. Tính số chỉ tại góc danh định, độ lệch so với tốc độ thực và khoảng số chỉ ứng với góc từ $14^°$ đến $16^°$.

    c) Với $v = 90 thin "km/h"$, $θ = 30^°$, máy chỉ bao nhiêu? Số chỉ có vượt ngưỡng $80 thin "km/h"$ không?
  ],
  type: "essay",
  lines: 12,
  sol: [
    a) Trong miền góc đã cho, $θ > 0 ⇒ cos θ < 1$, nên $v_("đo") < v$. Đây là sai số hệ thống do hướng đo.

    b) Tại góc danh định:
    $v_("đo") = "88,0" cos(15^°) ≈ "85,00" thin "km/h"$.
    Độ lệch so với tốc độ thực: $v_("đo") - v ≈ -"3,00" thin "km/h"$, tương ứng số chỉ thấp hơn khoảng $"3,41"%$.

    Khi $θ$ tăng từ $14^°$ đến $16^°$, số chỉ giảm từ $88 cos(14^°) ≈ "85,39" thin "km/h"$ xuống $88 cos(16^°) ≈ "84,59" thin "km/h"$.
    Vì vậy, số chỉ nằm trong khoảng $["84,59"; "85,39"] thin "km/h"$; độ lệch lớn nhất so với số chỉ danh định do sai số góc xấp xỉ $"0,41" thin "km/h"$.

    c) $v_("đo") = 90 cos(30^°) ≈ "77,94" thin "km/h"$. Số chỉ thấp hơn ngưỡng $80 thin "km/h"$, dù tốc độ thực lớn hơn ngưỡng này.
  ],
)

// ESSAY-05 — Đánh giá dung sai và sai số thể tích
#vp-question(
  [
    Một xi lanh có đường kính trong theo thiết kế $d_("chuẩn") = ("10,00" ± "0,05") thin "mm"$. Kết quả đo ba mẫu:

    Mẫu A: $d_A = ("10,03" ± "0,01") thin "mm"$.

    Mẫu B: $d_B = ("10,06" ± "0,02") thin "mm"$.

    Mẫu C: $d_C = ("9,94" ± "0,03") thin "mm"$.

    a) Theo tiêu chí toàn bộ khoảng giá trị đo phải nằm trong khoảng dung sai thiết kế, mẫu nào được chấp nhận?

    b) Mẫu nào có khoảng giá trị đo chỉ giao một phần với khoảng dung sai? Có thể chấp nhận các mẫu này theo tiêu chí ở ý a) không?

    c) Thể tích chất lỏng được đẩy ra là $V = frac(1, 4) π d^2 h$, với hành trình pít-tông $h = ("20,00" ± "0,02") thin "mm"$. Lập công thức tính sai số của $V$ và tính $overline(V) ± Δ V$ cho mẫu A. Giữ hai chữ số có nghĩa ở sai số cuối cùng.
  ],
  type: "essay",
  lines: 12,
  sol: [
    a) Khoảng dung sai thiết kế là $["9,95"; "10,05"] thin "mm"$.

    Mẫu A: $["10,02"; "10,04"] thin "mm"$, nằm hoàn toàn trong khoảng dung sai nên được chấp nhận.

    Mẫu B: $["10,04"; "10,08"] thin "mm"$; mẫu C: $["9,91"; "9,97"] thin "mm"$. Cả hai đều có phần nằm ngoài khoảng dung sai nên không được chấp nhận theo tiêu chí đã cho.

    b) Mẫu B và C chỉ giao một phần với khoảng dung sai. Chưa thể bảo đảm chúng đáp ứng yêu cầu; cần đo kiểm thêm nếu muốn đánh giá lại.

    c) Từ $V = frac(π, 4) d^2 h$, ta có $δ V = 2 δ d + δ h$ và $Δ V = overline(V) δ V$.

    $overline(V) = frac(π, 4) × ("10,03")^2 × "20,00" ≈ "1580,235" thin "mm"^3$.

    $δ V = 2 × frac("0,01", "10,03") + frac("0,02", "20,00") ≈ "0,2994"%$.

    $Δ V ≈ "4,731" thin "mm"^3 ≈ "4,7" thin "mm"^3$.
    Kết quả: $V = ("1580,2" ± "4,7") thin "mm"^3$.
  ],
)


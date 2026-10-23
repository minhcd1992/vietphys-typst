// Slide thuyết trình: Từ khung lí thuyết đến câu hỏi nghiên cứu
// Phân tích bài báo: Effects of generative AI-mediated socratic dialogue on preservice physics teachers' critical thinking in kinematics (PRPER 2026)
// Biên dịch: typst compile bai-bao-socrates-ai/slide-khung-li-thuyet/slide.typ bai-bao-socrates-ai/slide-khung-li-thuyet/slide-khung-li-thuyet-den-cau-hoi.pdf

#let navy = rgb("#1d2b4f")
#let accent = rgb("#c0392b")
#let c-d = rgb("#14478f")
#let c-v = rgb("#8c4708")
#let c-m = rgb("#1a731a")
#let c-kn = rgb("#6129a8")
#let c-lt = rgb("#006661")
#let c-ml = rgb("#94148a")
#let c-c = rgb("#b81a14")
#let c-g = rgb("#856b00")

#let p-ss = rgb("#cc0000")
#let p-dl = rgb("#0040d9")
#let p-pt = rgb("#008026")
#let p-kt = rgb("#8000a6")
#let p-pv = rgb("#f27300")

#set document(title: "Từ khung lí thuyết đến câu hỏi nghiên cứu", author: "Phân tích bài báo PRPER 22, 020134 (2026)")
#set text(font: "Segoe UI", size: 12.5pt, lang: "vi")
#set par(justify: false, leading: 0.52em, spacing: 0.65em)
#set list(spacing: 0.55em, indent: 2pt)
#set table(inset: 5pt, stroke: 0.5pt + luma(200))
#set page(
  paper: "presentation-16-9",
  margin: (x: 1.0cm, top: 0.72cm, bottom: 0.85cm),
  footer: context {
    let n = counter(page).get().first()
    if n > 1 {
      set text(8.5pt, fill: luma(130))
      [Từ khung lí thuyết đến câu hỏi nghiên cứu · Guerrero-Zambrano và cs. (2026), _Phys. Rev. Phys. Educ. Res._ 22, 020134]
      h(1fr)
      [#n / 8]
    }
  },
)

#let slide(title, tag: "Nội dung 4", body) = {
  pagebreak(weak: true)
  grid(
    columns: (1fr, auto),
    align: (left + horizon, right + horizon),
    text(20pt, weight: "bold", fill: navy, title),
    if tag != none { box(fill: accent, inset: (x: 7pt, y: 3pt), radius: 3pt, text(9.5pt, weight: "bold", fill: white, tag)) },
  )
  v(-6pt)
  line(length: 100%, stroke: 1.5pt + navy)
  v(3pt)
  body
}

#let chip(c, t, size: 10.5pt) = box(
  fill: c.lighten(88%), stroke: 0.8pt + c, inset: (x: 5pt, y: 2pt), radius: 3pt,
  text(size, fill: c, weight: "bold", t),
)
#let card(c, title, body, fill: auto) = block(
  width: 100%, fill: if fill == auto { c.lighten(93%) } else { fill },
  stroke: (left: 3.5pt + c), inset: (x: 8pt, y: 5.5pt), radius: 3pt, spacing: 5pt,
)[#if title != none [#text(fill: c, weight: "bold", title) \ ]#body]

#let ul(c, t) = underline(stroke: 1.8pt + c, offset: 2.2pt, evade: false, t)
#let shot(path, width: 100%, cap: none) = figure(
  box(stroke: 0.6pt + luma(170), radius: 2pt, clip: true, image(path, width: width)),
  caption: if cap != none { text(8.5pt, fill: luma(110), cap) },
  gap: 2pt, supplement: none, numbering: none,
)
#let src(t) = text(9pt, fill: luma(110), t)
#let arr = text(fill: accent, size: 14pt, weight: "bold", sym.arrow.r)
#let node(c, body) = block(width: 100%, fill: c.lighten(92%), stroke: 0.9pt + c, inset: 5pt, radius: 4pt, spacing: 3pt, align(center, body))

// ===================== SLIDE 1: TRANG BÌA =====================
#page(margin: 0pt, footer: none)[
  #block(width: 100%, height: 100%, fill: navy, inset: (x: 1.5cm, y: 1.2cm))[
    #set text(fill: white)
    #text(11pt, fill: rgb("#f4c7c3"), weight: "bold", tracking: 0.5pt)[PHÂN TÍCH BÀI BÁO KHOA HỌC TRONG GIÁO DỤC VẬT LÍ]
    #v(8pt)
    #text(32pt, weight: "bold")[Từ Khung Lí Thuyết \ Đến Câu Hỏi Nghiên Cứu]
    #v(3pt)
    #line(length: 26%, stroke: 3pt + accent)
    #v(10pt)
    #text(13.5pt)[Bài báo phân tích: _Effects of generative AI-mediated socratic dialogue on preservice physics teachers' critical thinking in kinematics_]
    #v(2pt)
    #text(10.5pt, fill: luma(215))[M. Guerrero-Zambrano, B. Valarezo-Chamba, L. Sanchez-Alvarado, E. Lamilla-Rubio · _Phys. Rev. Phys. Educ. Res._ 22, 020134 (2026)]
    #v(1fr)
    #set text(10.5pt)
    #let wchip(c, t) = box(fill: white, inset: (x: 6pt, y: 3pt), radius: 3pt, text(fill: c, weight: "bold", t))
    *Trọng tâm trình bày:* #h(4pt)
    #wchip(navy)[Ảnh câu hỏi đã đánh dấu]
    #wchip(c-lt)[Lí giải khung lí thuyết nền tảng]
    #wchip(c-kn)[Thao tác hóa khái niệm]
    #wchip(c-ml)[Mối liên hệ & cơ chế trả lời]
  ]
]

// ===================== SLIDE 2: KHUNG LÍ THUYẾT CỦA BÀI BÁO =====================
#slide([Khung lí thuyết của bài báo: Ba thành phần], tag: "Khung lí thuyết")[
  #card(navy, none, fill: luma(247))[
    #set text(11.5pt)
    *Khung lí thuyết (cơ sở lí luận):* hệ thống các yếu tố của luận cứ lí thuyết được sắp xếp trong mối liên hệ biện chứng #src[(Vũ Cao Đàm, 2018)]. Bao gồm ba thành phần cấu thành:
  ]
  #v(2pt)
  #set text(11pt)
  #table(
    columns: (120pt, 1fr, 85pt),
    align: (center + horizon, left + horizon, center + horizon),
    fill: (x, y) => if y == 0 { navy } else if x == 0 { (c-lt, c-kn, c-ml).at(y - 1) } else if calc.even(y) { luma(248) },
    table.header(
      text(fill: white, weight: "bold")[Thành phần],
      text(fill: white, weight: "bold")[Nội dung tác giả xây dựng trong bài báo],
      text(fill: white, weight: "bold")[Vị trí / Mã],
    ),
    text(fill: white, weight: "bold", 12pt)[Lí thuyết nền \ #text(9pt)[(Foundation)]],
    [
      - *Trung gian nhận thức (Epistemic Mediation):* GAI định hình cách người học tạo lập bằng chứng, biện minh và tự điều chỉnh suy luận.
      - *Giàn giáo & Quyền chủ động nhận thức (Scaffold & Agency):* GAI là giàn giáo gợi mở; quyền phán đoán, phản tư vẫn ở người học [9--12].
      - *Bản chất giải bài tập Vật lí:* Là quá trình lập luận, diễn giải và kiến tạo ý nghĩa, không phải thay số cơ học vào công thức.
    ],
    [#chip(c-lt)[LT1--LT3] \ #src[tr. 2]],

    text(fill: white, weight: "bold", 12pt)[Khái niệm \ công cụ \ #text(9pt)[(Concepts)]],
    [
      - *GAI trong đối thoại Socrates:* Giàn giáo nhận thức có giám sát [13].
      - *Tư duy phản biện (TDPB) đặc thù môn học:* Thao tác hóa thành Rubric 5 tiêu chí (hiểu nguyên lí, lập luận, phản ví dụ, sửa lỗi sai, tổ chức).
      - *Các biến cảm nhận:* KSE (niềm tin năng lực), CL (tải nhận thức), IM (động cơ).
    ],
    [#chip(c-kn)[KN1--KN3] \ #src[tr. 2, 3]],

    text(fill: white, weight: "bold", 12pt)[Mối liên hệ \ #text(9pt)[(Relations)]],
    [
      - Đối thoại Socrates + GAI #sym.arrow.r gợi phản ví dụ, đối chiếu khái niệm, tự sửa sai #sym.arrow.r mở rộng *suy luận và siêu nhận thức* #sym.arrow.r nâng cao *TDPB*.
      - Hiện thực hóa thành *mô hình SOCRATIC-IA*: Giữ nguyên trình tự, chỉ đổi mức trung gian.
    ],
    [#chip(c-ml)[ML1--ML3] \ #src[tr. 2, 4, 11]],
  )
]

// ===================== SLIDE 3: ẢNH CÂU HỎI & PHÂN TÍCH CẤU TRÚC =====================
#slide([Câu hỏi nghiên cứu chính: Hình ảnh & Cấu trúc], tag: "Câu hỏi NC")[
  #grid(
    columns: (1.25fr, 1fr), column-gutter: 12pt,
    [
      #shot("hinh/cau-hoi-chinh.png", cap: [Đoạn câu hỏi nghiên cứu chính (C) và phạm vi (PV) được đánh dấu ở trang 2 bài gốc])
      #v(3pt)
      #card(c-c, [Phát biểu tiếng Việt hoàn chỉnh], fill: rgb("#fff5f4"))[
        #set text(11pt)
        #set par(leading: 0.6em)
        Những #ul(p-ss)[khác biệt nào] xuất hiện trong #ul(p-pt)[kết quả TDPB (đánh giá bằng rubric) và lập luận định tính] khi #ul(p-kt)[sinh viên sư phạm Vật lí] #ul(p-pv)[giải các bài toán động học một chiều] thông qua #ul(p-dl)[đối thoại Socrates chỉ do GV dẫn dắt], #ul(p-ss)[so với] khi #ul(p-dl)[cùng cấu trúc đối thoại đó được GAI hỗ trợ]?
      ]
    ],
    [
      #set text(11pt)
      #card(navy, [Phân tích cấu trúc 5 thành phần:])[
        #set par(spacing: 0.55em)
        #ul(p-ss)[*1. Quan hệ / So sánh*]:
        _"what differences emerge ... compared with"_
        #sym.arrow.r So sánh 2 điều kiện can thiệp trên cùng 1 nhóm.

        #ul(p-dl)[*2. Biến độc lập (2 mức)*]:
        _"teacher-guided Socratic dialogue alone"_ đối chiếu với _"the same dialogue structure supported by GAI"_.

        #ul(p-pt)[*3. Biến phụ thuộc*]:
        _"rubric-assessed critical-thinking performance and qualitative reasoning"_ (TDPB theo rubric & lập luận).

        #ul(p-kt)[*4. Khách thể nghiên cứu*]:
        _"preservice physics teachers"_ (18 sinh viên sư phạm Vật lí, chia 6 nhóm).

        #ul(p-pv)[*5. Phạm vi nghiên cứu*]:
        _"solve one-dimensional kinematics problems"_ (nội dung Động học một chiều).
      ]
      #v(2pt)
      #card(c-c, [Phạm vi suy luận (PV, tr. 2)], fill: luma(250))[
        #set text(9.5pt)
        Vì thiết kế tiền thực nghiệm trình tự cố định, câu hỏi chỉ hướng tới *khác biệt trong mẫu*, không khẳng định quan hệ nhân quả độc lập của GAI.
      ]
    ],
  )
]

// ===================== SLIDE 4: CÁC CÂU HỎI NGHIÊN CỨU PHỤ =====================
#slide([Các câu hỏi nghiên cứu phụ: Phân rã từ Khung lí thuyết], tag: "Câu hỏi phụ")[
  #grid(
    columns: (1.05fr, 1.25fr), column-gutter: 12pt,
    [
      #shot("hinh/cau-hoi-phu.png", cap: [Đoạn 3 câu hỏi phụ (C1, C2, C3) được đánh dấu ở trang 2 bài gốc])
      #v(2pt)
      #card(navy, [Vai trò phân rã câu hỏi trong nghiên cứu])[
        #set text(10.5pt)
        - *Câu hỏi chính:* Đặt bài toán so sánh tổng thể giữa 2 điều kiện can thiệp (đối thoại chỉ có GV vs. có thêm GAI).
        - *Các câu hỏi phụ (C1--C3):* Phân rã câu hỏi chính thành *3 khía cạnh đo lường cụ thể*, tương ứng trực tiếp với các biến đã xác lập trong Khung lí thuyết:
          + *Hành vi & Năng lực (C1)*: Điểm Rubric TDPB.
          + *Trạng thái tâm lí nhận thức (C2)*: Niềm tin, tải nhận thức, động cơ.
          + *Cơ chế giải thích sâu (C3)*: Sự hội tụ định tính -- định lượng.
      ]
    ],
    [
      #set text(10.5pt)
      #card(c-c, [C1 · Đo lường Tư duy phản biện (Biến phụ thuộc cốt lõi)])[
        #set text(10pt)
        - *Nội dung:* Có sự khác biệt ý nghĩa về kết quả TDPB (đánh giá bằng Rubric) giữa hai điều kiện đối thoại không?
        - *Khung lí thuyết dẫn tới C1:* Khung định nghĩa TDPB môn Vật lí là năng lực thao tác hóa được #arr xây dựng *Rubric 5 tiêu chí* (KN2) để đo lường định lượng sự tiến bộ.
      ]
      #v(1.5pt)
      #card(c-kn, [C2 · Nhận thức, Tải nhận thức & Động cơ (Biến tâm lí)])[
        #set text(10pt)
        - *Nội dung:* Sinh viên cảm nhận thế nào về niềm tin năng lực (KSE), tải nhận thức (CL) và động cơ nội tại (IM) giữa 2 điều kiện?
        - *Khung lí thuyết dẫn tới C2:* Khung nhận thức chỉ ra GAI tác động đến tâm lí người học #arr đo lường để chứng minh GAI giảm tải nhận thức ngoại lai, không làm suy giảm niềm tin tự chủ (KN3).
      ]
      #v(1.5pt)
      #card(c-ml, [C3 · Hội tụ định tính & Cơ chế giải thích (Mixed-Methods)])[
        #set text(10pt)
        - *Nội dung:* Phản tư định tính của sinh viên hội tụ hoặc giải thích điểm số rubric và khảo sát nhận thức đến mức độ nào?
        - *Khung lí thuyết dẫn tới C3:* Khung lí thuyết về *giàn giáo nhận thức* (LT1, LT2) cần minh chứng người học thực sự hiểu bản chất và tự điều chỉnh suy luận (ML1), không chỉ là điểm số cơ học.
      ]
    ],
  )
  #v(2pt)
  #card(rgb("#2e7d32"), none, fill: rgb("#f1f8f3"))[
    #set text(10pt)
    #sym.arrow.r *Ý nghĩa phương pháp luận:* Việc chia nhỏ thành C1, C2, C3 giúp đề tài kiểm chứng toàn diện Khung lí thuyết theo thiết kế nghiên cứu hỗn hợp (*Mixed-Methods Triangulation*), tăng tính thuyết phục của câu trả lời.
  ]
]

// ===================== SLIDE 5: LÍ GIẢI KHUNG LÍ THUYẾT NÀO TRẢ LỜI CÂU HỎI (P1: LÍ THUYẾT NỀN) =====================
#slide([Khung lí thuyết nào được sử dụng để trả lời câu hỏi? (1)], tag: "Lí thuyết nền")[
  #text(12pt)[
    Để trả lời câu hỏi: _"Sự khác biệt nào xuất hiện khi có thêm GAI hỗ trợ đối thoại Socrates?"_, bài báo dựa trên *3 luận điểm lí thuyết nền tảng*:
  ]
  #v(2pt)
  #grid(
    columns: (1fr, 1fr, 1fr), column-gutter: 8pt,
    card(c-lt, [1. Trung gian nhận thức \ (Epistemic Mediation)])[
      #set text(10.5pt)
      - *Luận điểm:* GAI không chỉ là máy tính hay nguồn tra cứu dữ liệu, mà đóng vai trò *trung gian nhận thức* (LT1).
      - *Cơ chế:* GAI định hình cách người học tạo lập bằng chứng, lập luận phản biện, rà soát tính nhất quán và tự điều chỉnh tư duy.
      - *Ý nghĩa trả lời:* Giải thích *tại sao* tương tác với GAI lại tác động trực tiếp đến năng lực tư duy phản biện.
    ],
    card(c-lt, [2. Giàn giáo & Quyền chủ động \ (Scaffolding & Agency)])[
      #set text(10.5pt)
      - *Luận điểm:* GAI là "giàn giáo nhận thức có giám sát" (KN1), nhưng *quyền chủ động nhận thức* phải thuộc về người học (LT2) [9--12].
      - *Cơ chế:* GAI gợi ý các góc nhìn, giải pháp thay thế; người học phải chịu trách nhiệm phán đoán và phê phán câu trả lời của AI.
      - *Ý nghĩa trả lời:* Giải thích *vì sao* học sinh không bị ỷ lại vào AI mà ngược lại còn nâng cao năng lực phản tư.
    ],
    card(c-lt, [3. Dạy học Vật lí theo mô hình \ (Model-based Physics)])[
      #set text(10.5pt)
      - *Luận điểm:* Giải bài toán động học là quá trình *xây dựng mô hình, suy luận và lập luận khoa học*, không phải thay số vào công thức (LT3) [1,2].
      - *Cơ chế:* Đối thoại Socrates thúc đẩy xem xét giả định và biểu diễn đa phương thức.
      - *Ý nghĩa trả lời:* Định vị *tiêu chí đo lường* sự tiến bộ: đo năng lực lập luận và hiểu bản chất hiện tượng.
    ],
  )
  #v(3pt)
  #card(accent, [Vai trò cốt lõi của Lí thuyết nền], fill: rgb("#fdf2f1"))[
    #set text(11pt)
    Lí thuyết nền cung cấp *căn cứ lí luận để dự đoán* (kì vọng có hướng: GAI được giám sát sẽ làm tăng hoặc giữ nguyên kết quả, không gây suy giảm) và *giải thích cơ chế sâu xa* của sự tiến bộ khi trả lời câu hỏi nghiên cứu.
  ]
]

// ===================== SLIDE 6: LÍ GIẢI KHUNG LÍ THUYẾT NÀO TRẢ LỜI CÂU HỎI (P2: KHÁI NIỆM & MỐI LIÊN HỆ) =====================
#slide([Khung lí thuyết nào được sử dụng để trả lời câu hỏi? (2)], tag: "Khái niệm & Mối liên hệ")[
  #grid(
    columns: (1.1fr, 1fr), column-gutter: 12pt,
    [
      #card(c-kn, [Khái niệm công cụ: Thao tác hóa để trả lời câu hỏi])[
        #set text(10.5pt)
        Để đo lường và trả lời khách quan các vế trong câu hỏi:
        - *Biến độc lập (Hình thức can thiệp):* Chuẩn hóa đối thoại Socrates thành quy trình 4 bước: _giả thuyết cá nhân #sym.arrow.r thảo luận nhóm #sym.arrow.r câu hỏi Socrates #sym.arrow.r viết đồng thuận_. Hai điều kiện chỉ khác nhau ở việc có/không có GAI tham gia hỗ trợ (KN2).
        - *Biến phụ thuộc (TDPB đặc thù môn học):* Thao tác hóa thành *Rubric 5 tiêu chí* (KN2):
          1. Hiểu vấn đề và nguyên lí vật lí [16,17]
          2. Cấu trúc lập luận logic và biện minh [16,17]
          3. Sử dụng phản ví dụ [18]
          4. Nhận diện và sửa chữa sai lầm khái niệm [16,19]
          5. Tổ chức và diễn đạt bài giải rõ ràng [18]
        - *Độ tin cậy:* Rubric đạt chỉ số giá trị nội dung CVI = 1.00 qua 2 vòng chuyên gia đánh giá.
      ]
    ],
    [
      #card(c-ml, [Mối liên hệ: Cơ chế trả lời câu hỏi (Mô hình SOCRATIC-IA)])[
        #set text(10.5pt)
        Mối liên hệ biện chứng giữa các thành phần được thể hiện qua mô hình *SOCRATIC-IA* (ML1, ML2, tr. 4):
        #v(2pt)
        #node(c-lt)[*Lí thuyết nền:* GAI là giàn giáo nhận thức (LT1) dưới sự giám sát của GV (LT2)]
        #align(center, text(9.5pt, fill: luma(100))[#sym.arrow.b thúc đẩy tương tác])
        #node(c-ml)[*Tác động nhận thức:* Gợi phản ví dụ, kích hoạt đối chiếu giả định, buộc tự kiểm tra sai số toán học]
        #align(center, text(9.5pt, fill: luma(100))[#sym.arrow.b thể hiện qua sản phẩm bài làm])
        #node(c-kn)[*Câu trả lời thực nghiệm:* Điểm Rubric TDPB tăng trung bình 8.3 điểm/nhóm (toàn bộ 6 nhóm đều tăng)]
      ]
    ],
  )
  #v(2pt)
  #card(navy, none, fill: luma(248))[
    #set text(10.5pt)
    #sym.arrow.r *Khung lí thuyết trả lời câu hỏi ở cả hai mặt:* Cung cấp *công cụ đo lường* (rubric 5 tiêu chí để trả lời định lượng) và cung cấp *mô hình cơ chế* (giàn giáo nhận thức + điều chỉnh siêu nhận thức để trả lời định tính).
  ]
]

// ===================== SLIDE 7: ĐỐI CHIẾU 5 ĐIỀU KIỆN CÂU HỎI NGHIÊN CỨU =====================
#slide([Câu hỏi chính đáp ứng 5 điều kiện của Câu hỏi nghiên cứu], tag: "Tiêu chuẩn câu hỏi")[
  #set text(10.5pt)
  #let ok = text(fill: c-m, weight: "bold")[#sym.checkmark Đạt]
  #table(
    columns: (22pt, 1.15fr, 1.75fr, 1.1fr),
    align: (center + horizon, left + horizon, left + horizon, left + horizon),
    fill: (x, y) => if y == 0 { rgb("#5b7d3a") } else if calc.even(y) { luma(248) },
    table.header(
      [], text(fill: white, weight: "bold")[5 Điều kiện cần đạt],
      text(fill: white, weight: "bold")[Minh chứng trong bài báo (dựa vào Khung lí thuyết)],
      text(fill: white, weight: "bold")[Đánh giá],
    ),
    [*1*], [Trả lời được bằng dữ liệu thu trong nghiên cứu],
    [Thu thập điểm rubric bài giải của 6 nhóm qua 5 bài tập $times$ 2 giai đoạn, cùng khảo sát Likert và 18 bản phản tư tự do.],
    [#ok (Dữ liệu hỗn hợp định lượng & định tính)],

    [*2*], [Dùng khái niệm trong khung, đã thành biến đo được],
    [TDPB được đo lường chuẩn xác bằng Rubric 5 tiêu chí (CVI = 1.00); Hình thức trung gian thành 2 điều kiện can thiệp A1 và A2.],
    [#ok (Thao tác hóa khái niệm chặt chẽ)],

    [*3*], [Chỉ rõ quan hệ / so sánh],
    [Câu hỏi chỉ rõ phép so sánh hiệu quả giữa 2 điều kiện: đối thoại chỉ có GV _so với_ đối thoại có thêm GAI.],
    [#ok (Câu hỏi so sánh thực nghiệm)],

    [*4*], [Có khách thể, phạm vi đủ hẹp để làm được],
    [Khách thể: 18 SV sư phạm Vật lí (6 nhóm); Phạm vi: giải 5 bài toán động học chuyển động thẳng một chiều.],
    [#ok (Quy mô vừa sức, khả thi)],

    [*5*], [Câu trả lời chưa biết trước -- chạm đúng khoảng trống],
    [Chạm đúng khoảng trống V2: chưa có bằng chứng thực nghiệm rõ ràng về GAI hỗ trợ TDPB trong dạy học Động học Vật lí.],
    [#ok (Đóng góp tri thức mới)],
  )
  #v(2pt)
  #card(navy, none, fill: luma(248))[
    #set text(10.5pt)
    *Nhận xét:* Nhờ có khung lí thuyết vững chắc (định nghĩa rõ biến và phương pháp đo), câu hỏi nghiên cứu của bài báo đáp ứng trọn vẹn cả 5 tiêu chuẩn khắt khe của một câu hỏi nghiên cứu khoa học giáo dục.
  ]
]

// ===================== SLIDE 8: TỔNG KẾT MẠCH LOGIC =====================
#slide([Tổng kết: Mạch logic từ Khung lí thuyết đến Câu trả lời], tag: "Tổng kết")[
  #v(2pt)
  #grid(
    columns: (1fr, auto, 1fr, auto, 1fr),
    column-gutter: 6pt, align: horizon,
    node(c-lt)[
      #text(11pt, weight: "bold", fill: c-lt)[1. KHUNG LÍ THUYẾT] \
      #v(2pt)
      #align(left)[
        #set text(9.5pt)
        - *Lí thuyết nền:* GAI là giàn giáo nhận thức có giám sát; giải bài là lập luận.
        - *Khái niệm công cụ:* Rubric TDPB 5 tiêu chí; 2 mức can thiệp A1/A2.
        - *Mối liên hệ:* Mô hình SOCRATIC-IA tích hợp đối thoại + GAI.
      ]
    ],
    arr,
    node(c-c)[
      #text(11pt, weight: "bold", fill: c-c)[2. CÂU HỎI NGHIÊN CỨU] \
      #v(2pt)
      #align(left)[
        #set text(9.5pt)
        - *Cấu trúc:* So sánh khác biệt về điểm rubric TDPB & lập luận giữa A1 và A2 trên SV sư phạm Vật lí giải bài động học.
        - *Phạm vi:* So sánh nội bộ mẫu, đo lường sự tiến bộ và tính khả thi sư phạm.
      ]
    ],
    arr,
    node(c-m)[
      #text(11pt, weight: "bold", fill: c-m)[3. CÂU TRẢ LỜI ĐẠT ĐƯỢC] \
      #v(2pt)
      #align(left)[
        #set text(9.5pt)
        - *Định lượng:* Điểm rubric tăng ở cả 6 nhóm (trung bình $+8.3$ điểm, $p = 0.0312$).
        - *Định tính:* SV tăng năng lực rà soát phản ví dụ, phát hiện lỗi sai khái niệm.
        - *Đóng góp:* Khẳng định tính khả thi của mô hình SOCRATIC-IA.
      ]
    ],
  )
  #v(8pt)
  #card(c-m, [Kết luận cho bài thuyết trình], fill: rgb("#f2f8f2"))[
    #set text(11.5pt)
    Khung lí thuyết không chỉ là cơ sở lí luận hình thức, mà là *kim chỉ nam trực tiếp*:
    + *Khai sinh ra câu hỏi nghiên cứu:* Từ khoảng trống tri thức và cơ chế giàn giáo nhận thức.
    + *Định hình cấu trúc câu hỏi:* Cung cấp biến độc lập, biến phụ thuộc và phương thức so sánh.
    + *Cung cấp công cụ & cơ chế để trả lời câu hỏi:* Rubric 5 tiêu chí giúp đo lường sự khác biệt, và các nguyên tắc nhận thức giúp lí giải thuyết phục kết quả thực nghiệm.
  ]
]

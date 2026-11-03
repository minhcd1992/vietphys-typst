// Tài liệu: Phương pháp nghiên cứu & Thiết kế nghiên cứu
// Bài báo: Effects of generative AI-mediated socratic dialogue on preservice physics teachers' critical thinking in kinematics (PRPER 22, 020134, 2026)
// Biên dịch: typst compile bai-bao-socrates-ai/phuong-phap-nghien-cuu.typ bai-bao-socrates-ai/phuong-phap-nghien-cuu.pdf

#set document(
  title: "Phương pháp nghiên cứu - Phân tích bài báo PRPER 22, 020134 (2026)",
  author: "Nhóm 1",
)
#set page(
  paper: "a4",
  margin: (x: 0.85cm, top: 0.65cm, bottom: 0.78cm),
  footer: context {
    let n = counter(page).get().first()
    let total = counter(page).final().first()
    set text(font: "Segoe UI", size: 7.8pt, fill: luma(115))
    line(length: 100%, stroke: 0.4pt + luma(210))
    v(2pt)
    grid(
      columns: (1fr, auto),
      [Nhóm 1 · Phân tích Phương pháp Nghiên cứu · Guerrero-Zambrano và cs. (2026), _Phys. Rev. Phys. Educ. Res._ *22*, 020134],
      [*Trang #n / #total*],
    )
  },
)
#set text(font: "Segoe UI", size: 8.8pt, lang: "vi", fill: rgb("#1e293b"))
#set par(justify: false, leading: 0.42em, spacing: 0.45em)
#set list(spacing: 0.36em, indent: 1pt, body-indent: 3.5pt)
#set enum(spacing: 0.36em, indent: 1pt, body-indent: 3.5pt)

// ===================== BẢNG MÀU HIỆN ĐẠI =====================
#let c-navy = rgb("#1b365d")
#let c-blue = rgb("#1e5aa8")
#let c-teal = rgb("#0d7369")
#let c-amber = rgb("#b45309")
#let c-purple = rgb("#6d28d9")
#let c-red = rgb("#b91c1c")
#let c-green = rgb("#15803d")
#let c-slate = rgb("#475569")
#let c-warm = rgb("#78716c")

// ===================== HÀM TIỆN ÍCH VẼ SƠ ĐỒ =====================
#let badge(bg, fg: white, body) = box(
  fill: bg,
  inset: (x: 5.5pt, y: 2pt),
  radius: 3pt,
  text(fill: fg, weight: "bold", size: 7.8pt, body),
)

#let pill(c, body) = box(
  fill: c.lighten(90%),
  stroke: 0.65pt + c.lighten(20%),
  inset: (x: 5pt, y: 1.5pt),
  radius: 10pt,
  text(fill: c.darken(12%), weight: "bold", size: 7.5pt, body),
)

#let sbox(
  stroke-c: c-slate,
  fill-c: white,
  radius: 4.5pt,
  inset: (x: 6.5pt, y: 4.5pt),
  width: 100%,
  dashed: false,
  body,
) = block(
  width: width,
  breakable: false,
  fill: fill-c,
  stroke: if dashed {
    (paint: stroke-c, thickness: 0.85pt, dash: "dashed")
  } else {
    0.85pt + stroke-c
  },
  radius: radius,
  inset: inset,
  spacing: 0pt,
  body,
)

#let hbox(
  c,
  title,
  subtitle: none,
  num: none,
  body,
) = block(
  width: 100%,
  breakable: false,
  stroke: 0.85pt + c.lighten(25%),
  radius: 4.5pt,
  clip: true,
  spacing: 0pt,
)[
  #block(
    width: 100%,
    fill: c.lighten(86%),
    inset: (x: 7pt, y: 3.8pt),
    stroke: (bottom: 0.75pt + c.lighten(35%)),
  )[
    #grid(
      columns: if num != none { (auto, 1fr) } else { (1fr,) },
      column-gutter: 5.5pt,
      align: horizon,
      ..if num != none {
        (
          circle(radius: 7.8pt, fill: c)[
            #align(center + horizon, text(fill: white, weight: "bold", size: 8.8pt, str(num)))
          ],
        )
      } else { () },
      [
        #text(fill: c.darken(15%), weight: "bold", size: 9.2pt, title)
        #if subtitle != none [ #h(3pt) #text(fill: c.darken(5%), size: 7.6pt)[(#subtitle)] ]
      ],
    )
  ]
  #block(
    width: 100%,
    fill: white,
    inset: (x: 7pt, y: 4.5pt),
    body,
  )
]

#let d-arrow(label: none, c: c-slate) = align(center)[
  #v(1pt)
  #if label != none [
    #grid(
      columns: (auto, auto),
      column-gutter: 4pt,
      align: horizon,
      text(size: 10pt, weight: "bold", fill: c, sym.arrow.b),
      text(size: 7.3pt, fill: c, style: "italic", label),
    )
  ] else [
    #text(size: 9.5pt, weight: "bold", fill: c, sym.arrow.b)
  ]
  #v(1pt)
]

#let r-arrow(c: c-slate) = align(center + horizon)[
  #text(size: 11pt, weight: "bold", fill: c, sym.arrow.r)
]

#let page-header(step, title, subtitle) = {
  block(
    width: 100%,
    fill: c-navy,
    radius: 5pt,
    inset: (x: 10pt, y: 5.5pt),
    spacing: 0pt,
  )[
    #grid(
      columns: (1fr, auto),
      column-gutter: 10pt,
      align: (left + horizon, right + horizon),
      [
        #text(fill: rgb("#93c5fd"), size: 7.3pt, weight: "bold", tracking: 0.5pt, upper(step))
        #v(1.5pt)
        #text(fill: white, size: 12pt, weight: "bold", title)
      ],
      box(
        fill: white.transparentize(85%),
        stroke: 0.6pt + white.transparentize(50%),
        radius: 3.5pt,
        inset: (x: 6pt, y: 3pt),
        text(fill: white, size: 7.5pt, weight: "semibold", subtitle),
      ),
    )
  ]
  v(4pt)
}

// =====================================================================
// TRANG 1: TIÊU ĐỀ BÀI BÁO + THÔNG TIN THÀNH VIÊN + TỔNG QUAN & GIẢI ĐÁP
// =====================================================================

#block(
  width: 100%,
  fill: c-navy,
  radius: 5.5pt,
  inset: (x: 12pt, y: 9pt),
  spacing: 0pt,
)[
  #set text(fill: white)
  #grid(
    columns: (1fr, auto),
    align: (left + horizon, right + horizon),
    text(size: 8pt, weight: "bold", fill: rgb("#93c5fd"), tracking: 0.7pt)[
      PHÂN TÍCH PHƯƠNG PHÁP NGHIÊN CỨU KHOA HỌC GIÁO DỤC VẬT LÍ
    ],
    badge(rgb("#c0392b"))[PRPER 22, 020134 (2026)],
  )
  #v(4pt)
  #text(size: 12.8pt, weight: "bold")[
    Effects of generative AI-mediated socratic dialogue on preservice physics teachers' critical thinking in kinematics
  ]
  #v(2.5pt)
  #text(size: 9.6pt, fill: rgb("#e2e8f0"), style: "italic")[
    (Ảnh hưởng của đối thoại Socrates có AI tạo sinh làm trung gian đối với tư duy phản biện của sinh viên sư phạm Vật lí trong phần Động học)
  ]
  #v(4pt)
  #line(length: 100%, stroke: 0.5pt + white.transparentize(65%))
  #v(3.5pt)
  #grid(
    columns: (1fr, auto),
    text(size: 8pt, fill: rgb("#cbd5e1"))[
      *Tác giả:* M. Guerrero-Zambrano, B. Valarezo-Chamba, L. Sanchez-Alvarado, E. Lamilla-Rubio
    ],
    text(size: 8pt, fill: rgb("#fde68a"), weight: "semibold")[
      DOI: 10.1103/x7vq-17rq
    ],
  )
]

#v(5pt)

// --- BẢNG THÔNG TIN THÀNH VIÊN NHÓM 1 ---
#grid(
  columns: (0.9fr, 1.4fr),
  column-gutter: 7pt,
  hbox(c-blue, [Danh sách thành viên Nhóm 1], subtitle: "5 thành viên")[
    #set text(size: 8.3pt)
    #table(
      columns: (22pt, 1fr, 75pt),
      align: (center + horizon, left + horizon, center + horizon),
      inset: (x: 5pt, y: 3.8pt),
      stroke: 0.4pt + luma(215),
      fill: (x, y) => if y == 0 { c-navy } else if calc.even(y) { rgb("#f8fafc") } else { white },
      table.header(
        text(fill: white, weight: "bold")[STT],
        text(fill: white, weight: "bold")[Họ và tên],
        text(fill: white, weight: "bold")[MSSV],
      ),
      [1], [*Huỳnh Thiên Phúc*], [`51.01.102.017`],
      [2], [*Chung Diệu Minh*], [`51.01.102.011`],
      [3], [*Lê Minh Thắng*], [`51.01.102.021`],
      [4], [*Võ Thành Nhân*], [`51.01.102.015`],
      [5], [*Vương Hồ Tấn Sang*], [`51.01.102.019`],
    )
  ],
  hbox(c-teal, [Trọng tâm câu hỏi nghiên cứu của bài báo], subtitle: "Đích đến của Phương pháp")[
    #set text(size: 8.1pt)
    - *Câu hỏi nghiên cứu chính (C):* Những khác biệt nào xuất hiện trong *kết quả TDPB (chấm bằng rubric)* và *lập luận định tính* khi *SV sư phạm Vật lí* giải các bài toán *động học một chiều* qua *đối thoại Socrates chỉ do GV dẫn dắt ($A_1$)*, so với khi *cùng cấu trúc đối thoại đó có GAI hỗ trợ ($A_2$)*?
    - *Ba câu hỏi nghiên cứu phụ (Phân rã để đo lường & xử lí):*
      + *C1 (Định lượng – Kết quả):* Khác biệt có ý nghĩa thống kê về điểm Rubric TDPB giữa $A_1$ và $A_2$?
      + *C2 (Định lượng – Cảm nhận):* Cảm nhận về *KSE* (tự tin năng lực), *CL* (tải nhận thức), *IM* (động cơ nội tại) và các biến đặc thù thay đổi ra sao qua 2 giai đoạn?
      + *C3 (Định tính & Tích hợp):* Phản tư định tính của SV hội tụ hoặc giải thích kết quả định lượng đến mức độ nào?
  ],
)

#v(5pt)

// --- KHỐI TỔNG QUAN 4 TRỤ CỘT PHƯƠNG PHÁP NGHIÊN CỨU (THEO ẢNH 1) ---
#block(
  width: 100%,
  breakable: false,
  fill: rgb("#f1f5f9"),
  stroke: 0.8pt + luma(200),
  radius: 5pt,
  inset: (x: 7pt, y: 5pt),
  spacing: 0pt,
)[
  #align(center)[
    #box(
      fill: c-navy,
      radius: 12pt,
      inset: (x: 12pt, y: 3pt),
      text(fill: white, weight: "bold", size: 8.6pt, tracking: 0.4pt)[
        TỔNG QUAN 4 TRỤ CỘT PHƯƠNG PHÁP NGHIÊN CỨU (METHODOLOGY OVERVIEW)
      ],
    )
  ]
  #v(4pt)
  #grid(
    columns: (1fr, auto, 1fr),
    column-gutter: 4pt,
    hbox(c-blue, [Thiết kế nghiên cứu], num: 1)[
      #set text(size: 7.9pt)
      - *Phương pháp hỗn hợp hội tụ* (định tính + định lượng), nhấn mạnh định tính và định hướng diễn giải.
      - *Thiết kế tiền thực nghiệm, đo lặp trong cùng một nhóm* (*within-subjects*), so sánh theo trình tự cố định: $A_1 arrow.r A_2$.
      - *Biến độc lập:* Hình thức trung gian đối thoại Socrates (chỉ có GV vs. GV + GAI); *Biến phụ thuộc:* Tư duy phản biện (TDPB).
    ],
    r-arrow(c: c-blue),
    hbox(c-blue, [Đối tượng & Bối cảnh], num: 2)[
      #set text(size: 7.9pt)
      - *Bối cảnh:* Chương trình đào tạo giáo viên Vật lí tại trường đại học công lập ở Ecuador (tổng thể 97 SV đã học động học 1 chiều).
      - *Mẫu nghiên cứu:* *18 sinh viên sư phạm Vật lí* tự nguyện tham gia trọn vẹn (18,6%, HK 3–8, 18–25 tuổi), đã có trải nghiệm viết lệnh AI.
      - *Tổ chức:* Chia cố định thành *6 nhóm hợp tác $times$ 3 SV/nhóm*.
    ],
  )
  #v(3.5pt)
  #grid(
    columns: (1fr, auto, 1fr),
    column-gutter: 4pt,
    hbox(c-blue, [Công cụ thu thập dữ liệu], num: 3)[
      #set text(size: 7.9pt)
      - *Bộ 5 bài tập động học (S1):* Gồm cả định tính và định lượng.
      - *Bộ câu hỏi Socrates (S2):* Gợi giải thích, lập luận, phản ví dụ, sửa lỗi.
      - *Rubric TDPB (S3):* 5 tiêu chí $times$ 4 mức độ ($"CVI" = 1,00$).
      - *2 phiếu khảo sát (Likert + câu hỏi mở):* Đo sau mỗi giai đoạn $A_1, A_2$.
    ],
    r-arrow(c: c-blue),
    hbox(c-blue, [Quy trình & Phân tích dữ liệu], num: 4)[
      #set text(size: 7.9pt)
      - *Can thiệp 10 giờ:* GĐ1 Kích hoạt (2h) $arrow.r$ GĐ2 Socrates do GV hướng dẫn (4h, $A_1$) $arrow.r$ GĐ3 Socrates + GAI dưới giám sát GV (4h, $A_2$).
      - *Định lượng:* Thống kê mô tả, Shapiro–Wilk, Wilcoxon signed-rank.
      - *Định tính & Tích hợp:* Phân tích chủ đề Braun & Clarke $arrow.r$ Ma trận hội tụ.
    ],
  )
]

#v(5pt)

// --- KHỐI GIẢI ĐÁP 2 CÂU HỎI PHẢN BIỆN CHUYÊN SÂU ---
#sbox(stroke-c: c-amber, fill-c: rgb("#fffbeb"), inset: (x: 7.5pt, y: 5pt))[
  #text(fill: c-amber.darken(15%), weight: "bold", size: 9pt)[
    LÀM RÕ & GIẢI ĐÁP CHUYÊN SÂU VỀ THIẾT KẾ SƯ PHẠM VÀ CÔNG CỤ ĐO LƯỜNG
  ]
  #v(3.5pt)
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 7pt,
    sbox(stroke-c: c-teal.lighten(30%), fill-c: white, inset: (x: 6.5pt, y: 4.5pt))[
      #text(fill: c-teal.darken(10%), weight: "bold", size: 8.3pt)[
        1\. Điểm khác nhau trong tác động sư phạm đối với mẫu học sinh & Lí do thiết kế?
      ]
      #v(2pt)
      #set text(size: 7.8pt)
      - *Làm rõ về mẫu học sinh:* Nghiên cứu *không chia thành 2 nhóm mẫu độc lập* (thực nghiệm – đối chứng) mà dùng *cùng 1 mẫu 18 SV (6 nhóm)* trải qua 2 điều kiện nối tiếp ($A_1 arrow.r A_2$, thiết kế đo lặp trong cùng đối tượng).
      - *Điểm khác nhau duy nhất trong tác động sư phạm (ở Bước 3 của đối thoại):*
        + *Ở $A_1$ (GĐ2 – 4h):* Giảng viên trực tiếp đặt câu hỏi Socrates dẫn dắt, chất vấn giả định; *hoàn toàn không dùng AI*.
        + *Ở $A_2$ (GĐ3 – 4h):* Đưa *Google Gemini* vào làm *"giàn giáo nhận thức có giám sát"* qua *Prompt 4 thành phần* (Vai trò – Bối cảnh – Yêu cầu – Định dạng) để gợi cách giải thay thế, phản ví dụ. Giảng viên chuyển sang vai trò *giám sát & điều tiết nhận thức*, buộc SV tự kiểm chứng đầu ra của AI.
      - *Tại sao nhóm tác giả thiết kế như vậy?*
        + *Kiểm soát biến nhiễu:* Giữ nguyên học sinh, nội dung 5 bài toán và quy trình 4 bước để cô lập sự thay đổi ở *hình thức trung gian nhận thức*.
        + *Khả thi với cỡ mẫu nhỏ ($n=18$):* Nếu tách đôi thành 2 nhóm độc lập (3 nhóm/bên), lực thống kê sẽ quá yếu để kiểm định suy luận.
        + *Logic sư phạm:* SV cần rèn nền tảng phản biện Socrates với GV ở $A_1$ trước để không bị ỷ lại hoặc bị dẫn dắt sai khi dùng GAI ở $A_2$.
    ],
    sbox(stroke-c: c-purple.lighten(30%), fill-c: white, inset: (x: 6.5pt, y: 4.5pt))[
      #text(fill: c-purple.darken(10%), weight: "bold", size: 8.3pt)[
        2\. Công cụ khảo sát & Câu hỏi mở xây dựng trên cơ sở nào? Có đảm bảo tin cậy không?
      ]
      #v(2pt)
      #set text(size: 7.8pt)
      - *Cơ sở xây dựng công cụ khảo sát (Likert) & câu hỏi mở:*
        + *Dựa trên khung lí thuyết nhận thức & động lực:* Đo 3 biến chung ở cả 2 giai đoạn để đối chiếu trực tiếp gồm *KSE* (niềm tin năng lực động học), *CL* (tải nhận thức), *IM* (động cơ nội tại); kèm các biến đặc thù riêng ở $A_1$ (*SI* – tương tác Socrates, *CT* – TDPB cảm nhận) và ở $A_2$ (*PU-GAI* – tính hữu ích, *TE-AI* – niềm tin AI, *RI* – tích hợp nguồn lực) [20, 22].
        + *Câu hỏi mở:* Thiết kế theo phương pháp hỗn hợp hội tụ [14, 15] để khám phá cơ chế nhận thức đằng sau điểm số (học được gì từ GV ở $A_1$; GAI hữu ích hay gây nhầm lẫn gì ở $A_2$).
      - *Mức độ đảm bảo giá trị và độ tin cậy:*
        + *Thẩm định chuyên gia 2 vòng đạt tuyệt đối $"CVI" = 1,00$:* Thẩm định bởi *3 chuyên gia Giáo dục Vật lí* (bài tập, câu hỏi Socrates, Rubric: vòng 1 đạt $0,886 - 0,944$) và *3 chuyên gia Thống kê* (phiếu khảo sát). Sau chỉnh sửa vòng 2, toàn bộ công cụ đạt *$"CVI" = 1,00$* (đồng thuận 100%).
        + *Độ tin cậy xử lí:* Chỉ so sánh suy luận trên 3 biến chung; phân tích chủ đề chuẩn Braun & Clarke [36] và kiểm chứng chéo qua *Ma trận hội tụ*. *(Lưu ý hạn chế: chấm điểm đồng thuận nhóm nên không tính hệ số ICC)*.
    ],
  )
]

// =====================================================================
// TRANG 2: SƠ ĐỒ THIẾT KẾ NGHIÊN CỨU (RESEARCH DESIGN)
// =====================================================================
#pagebreak()

#page-header(
  "Trang 2 · Sơ đồ thiết kế nghiên cứu (Research Design)",
  "Sơ Đồ Thiết Kế Nghiên Cứu: Làm Gì · Làm Như Thế Nào · Dùng Công Cụ Gì & Xử Lí Dữ Liệu",
  "Thiết kế Tiền thực nghiệm đo lặp (A1 → A2) kết hợp Hỗn hợp hội tụ",
)

// --- KHỐI 1: CHỌN MẪU & ĐƠN VỊ PHÂN TÍCH ---
#sbox(stroke-c: c-slate.lighten(20%), fill-c: rgb("#f8fafc"), dashed: true, inset: (x: 7pt, y: 4.5pt))[
  #grid(
    columns: (auto, 1fr),
    column-gutter: 7pt,
    align: horizon,
    badge(c-navy)[1 · CHỌN MẪU & TỔ CHỨC],
    text(size: 7.9pt, fill: c-slate)[*Phương pháp chọn mẫu:* Phi ngẫu nhiên, đăng kí tự nguyện và phù hợp với hoạt động dạy học thực tế (ĐH công lập tại Ecuador)],
  )
  #v(3.5pt)
  #grid(
    columns: (1fr, auto, 1.15fr, auto, 1.25fr),
    column-gutter: 4.5pt,
    align: horizon,
    sbox(stroke-c: c-slate.lighten(30%), fill-c: white, inset: 4.5pt)[
      #align(center)[
        #text(weight: "bold", size: 8.6pt, fill: c-navy)[Tổng thể: 97 sinh viên] \
        #text(size: 7.5pt, fill: c-slate)[Đã hoàn thành học phần Động học 1 chiều và từng tập viết lệnh AI]
      ]
    ],
    r-arrow(),
    sbox(stroke-c: c-blue.lighten(20%), fill-c: rgb("#eff6ff"), inset: 4.5pt)[
      #align(center)[
        #text(weight: "bold", size: 8.6pt, fill: c-blue)[Mẫu thực tế: 18 SV (18,6%)] \
        #text(size: 7.5pt, fill: c-slate)[Học kì 3–8, tuổi 18–25; tham gia trọn vẹn 10h; ký đồng thuận Helsinki]
      ]
    ],
    r-arrow(),
    sbox(stroke-c: c-teal.lighten(20%), fill-c: rgb("#f0fdfa"), inset: 4.5pt)[
      #align(center)[
        #text(weight: "bold", size: 8.6pt, fill: c-teal)[Chia 6 nhóm cố định $times$ 3 SV] \
        #text(size: 7.5pt, fill: c-slate)[*Đơn vị phân tích:* Nhóm ($N=6$) cho Rubric TDPB; Cá nhân ($n=18$) cho Khảo sát & Câu hỏi mở]
      ]
    ],
  )
]

#d-arrow(label: "Cùng 6 nhóm SV (18 người) lần lượt trải qua 3 giai đoạn theo trình tự cố định")

// --- KHỐI 2: CAN THIỆP SƯ PHẠM SOCRATIC-IA (LÀM GÌ - NHƯ THẾ NÀO - CÔNG CỤ GÌ) ---
#sbox(stroke-c: c-navy.lighten(20%), fill-c: rgb("#f8fafc"), dashed: true, inset: (x: 7pt, y: 4.5pt))[
  #grid(
    columns: (auto, 1fr),
    column-gutter: 7pt,
    align: horizon,
    badge(c-navy)[2 · CAN THIỆP SƯ PHẠM SOCRATIC-IA (10 GIỜ)],
    text(size: 7.9pt, fill: c-navy)[*Nguyên tắc thiết kế:* Giữ nguyên nội dung 5 bài toán và trình tự 4 bước nhận thức, chỉ thay đổi *hình thức trung gian* giữa GĐ2 và GĐ3],
  )
  #v(3.5pt)
  #grid(
    columns: (0.88fr, auto, 1.12fr, auto, 1.18fr),
    column-gutter: 4pt,
    align: top,
    // GĐ1
    sbox(stroke-c: c-warm, fill-c: rgb("#fafaf9"), inset: 5pt)[
      #align(center)[
        #text(weight: "bold", size: 8.5pt, fill: c-warm.darken(20%))[GĐ1: Kích hoạt kiến thức nền] \
        #pill(c-warm)[2 giờ · Dùng chung toàn mẫu]
      ]
      #v(2.5pt)
      #set text(size: 7.6pt)
      - *Làm gì:* Thiết lập nền tảng khái niệm động học chung; ôn lại cấu trúc viết câu lệnh AI.
      - *Làm như thế nào:* Thảo luận ôn tập vận tốc, gia tốc, đồ thị chuyển động; ôn cách viết lệnh 4 phần (không chấm điểm).
      - *Công cụ sử dụng:*
        + Câu hỏi ôn tập khái niệm động học.
        + Khung *Prompt 4 thành phần* (S4).
    ],
    r-arrow(c: c-teal),
    // GĐ2 (A1)
    sbox(stroke-c: c-teal, fill-c: rgb("#f0fdfa"), inset: 5pt)[
      #align(center)[
        #text(weight: "bold", size: 8.5pt, fill: c-teal.darken(15%))[GĐ2: Đối thoại Socrates (A1)] \
        #pill(c-teal)[4 giờ · Chỉ Giảng viên dẫn dắt (Không AI)]
      ]
      #v(2.5pt)
      #set text(size: 7.6pt)
      - *Làm gì:* Giải 5 bài toán động học (định tính & định lượng) qua đối thoại thuần con người.
      - *Làm như thế nào (Quy trình 4 bước):*
        + *B1:* Cá nhân tự đề xuất giả thuyết giải.
        + *B2:* Thảo luận hợp tác trong nhóm 3 SV.
        + *B3:* *GV trực tiếp đặt câu hỏi Socrates* gợi mở, chất vấn giả định, yêu cầu biện minh.
        + *B4:* Nhóm viết bài giải đồng thuận (A1).
      - *Công cụ sử dụng:*
        + *Bộ 5 bài tập động học (S1)* ($"CVI" = 1,00$).
        + *Bộ câu hỏi Socrates của GV (S2)*.
    ],
    r-arrow(c: c-amber),
    // GĐ3 (A2)
    sbox(stroke-c: c-amber, fill-c: rgb("#fffbeb"), inset: 5pt)[
      #align(center)[
        #text(weight: "bold", size: 8.5pt, fill: c-amber.darken(15%))[GĐ3: Socrates + GAI (A2)] \
        #pill(c-amber)[4 giờ · Có Gemini hỗ trợ + GV giám sát]
      ]
      #v(2.5pt)
      #set text(size: 7.6pt)
      - *Làm gì:* Mở rộng suy luận giải 5 bài toán động học qua trung gian kết hợp *Con người – AI*.
      - *Làm như thế nào (Cùng 4 bước, đổi B3):*
        + *B1:* Giả thuyết cá nhân; *B2:* Thảo luận nhóm.
        + *B3:* *Hỏi đáp Socrates với Gemini* (gợi cách giải khác, phản ví dụ, rà lỗi) *dưới sự giám sát & điều tiết nhận thức của GV*.
        + *B4:* Kiểm chứng đầu ra AI & viết bài đồng thuận (A2).
      - *Công cụ sử dụng:*
        + *Bộ 5 bài tập (S1)* + *Câu hỏi Socrates (S2)*.
        + *Google Gemini* + *Khung Prompt 4 phần (S4)*.
    ],
  )
]

#d-arrow(label: "Thu thập dữ liệu sau mỗi giai đoạn bằng bộ công cụ đã thẩm định chuyên gia (CVI = 1,00)")

// --- KHỐI 3: ĐO LƯỜNG & THU THẬP DỮ LIỆU (O1 vs O2) ---
#grid(
  columns: (0.88fr, 13pt, 1.12fr, 13pt, 1.18fr),
  column-gutter: 0pt,
  align: horizon,
  sbox(stroke-c: luma(180), fill-c: rgb("#f5f5f4"), inset: 5pt)[
    #align(center)[
      #text(weight: "bold", size: 8.3pt, fill: luma(90))[Sau GĐ1: Không đo lường] \
      #v(2pt)
      #text(size: 7.5pt, fill: luma(100))[Chỉ nhằm đồng bộ hóa kiến thức nền và kĩ năng viết câu lệnh trước khi bước vào 2 điều kiện so sánh.]
    ]
  ],
  [],
  sbox(stroke-c: c-teal, fill-c: white, inset: 5pt)[
    #align(center)[
      #badge(c-teal)[ĐO LƯỜNG LẦN 1: TIỀN KIỂM ($O_1 = A_1$)] \
      #text(size: 7.4pt, fill: c-teal, weight: "semibold")[Mốc cơ sở sau GĐ2 (Khi chỉ có Giảng viên)]
    ]
    #v(2pt)
    #set text(size: 7.6pt)
    - *Công cụ 1 – Rubric TDPB (S3, 5 tiêu chí $times$ 4 mức):* Chấm 30 bài giải đồng thuận (6 nhóm $times$ 5 bài).
    - *Công cụ 2 – Phiếu Likert A1 (18 SV):*
      + *3 biến chung:* KSE (tự tin), CL (tải nhận thức), IM (động cơ).
      + *2 biến riêng A1:* SI (tương tác Socrates), CT (TDPB cảm nhận).
    - *Công cụ 3 – Câu hỏi mở A1 (18 SV):* _"Bạn đã học được điều gì từ các câu hỏi Socrates của giảng viên?"_
  ],
  r-arrow(c: c-blue),
  sbox(stroke-c: c-amber, fill-c: white, inset: 5pt)[
    #align(center)[
      #badge(c-amber)[ĐO LƯỜNG LẦN 2: HẬU KIỂM ($O_2 = A_2$)] \
      #text(size: 7.4pt, fill: c-amber, weight: "semibold")[Đo lặp sau GĐ3 (Khi có thêm GAI hỗ trợ)]
    ]
    #v(2pt)
    #set text(size: 7.6pt)
    - *Công cụ 1 – Cùng Rubric TDPB (S3):* Chấm 30 bài giải đồng thuận ở A2 (6 nhóm $times$ 5 bài) theo điểm đồng thuận.
    - *Công cụ 2 – Phiếu Likert A2 (18 SV):*
      + *3 biến chung:* KSE, CL, IM *(dùng để đối chiếu với $O_1$)*.
      + *3 biến riêng A2:* PU-GAI (hữu ích), TE-AI (niềm tin AI), RI (tích hợp).
    - *Công cụ 3 – Câu hỏi mở A2 (18 SV):* _"AI tạo sinh hữu ích hoặc gây nhầm lẫn ở những khía cạnh nào?"_
  ],
)

#d-arrow(label: "Quy trình xử lí & tích hợp dữ liệu sau thu nhận để trả lời hệ thống Câu hỏi nghiên cứu", c: c-blue)

// --- KHỐI 4 (BỔ SUNG TRỌNG TÂM): XỬ LÍ DỮ LIỆU ĐỂ TRẢ LỜI CÂU HỎI NGHIÊN CỨU ---
#sbox(stroke-c: c-blue, fill-c: rgb("#eff6ff"), inset: (x: 7pt, y: 4.5pt))[
  #grid(
    columns: (auto, 1fr),
    column-gutter: 7pt,
    align: horizon,
    badge(c-blue)[4 · XỬ LÍ DỮ LIỆU SAU THU NHẬN ĐỂ TRẢ LỜI CÂU HỎI NGHIÊN CỨU (BỔ SUNG LÀM RÕ)],
    text(size: 7.8pt, fill: c-blue.darken(15%))[*Mạch xử lí:* Phân tích riêng từng loại dữ liệu theo đặc trưng thang đo $arrow.r$ Đối chiếu chéo bằng Ma trận hội tụ],
  )
  #v(3.5pt)
  #grid(
    columns: (1.05fr, 1.05fr, 1.05fr),
    column-gutter: 4.5pt,
    sbox(stroke-c: c-teal.lighten(20%), fill-c: white, inset: 4.5pt)[
      #text(weight: "bold", size: 7.9pt, fill: c-teal.darken(10%))[A · Xử lí điểm Rubric ($N=6$ nhóm) \ $arrow.r$ Trả lời Câu hỏi phụ C1 (TDPB)]
      #v(2pt)
      #set text(size: 7.4pt)
      - *Bước 1 – Hiệu số ghép cặp:* Tính $Delta = "Điểm"(A_2) - "Điểm"(A_1)$ cho tổng điểm và từng bài P1–P5.
      - *Bước 2 – Kiểm tra tính chuẩn (Shapiro–Wilk):* Hiệu số tổng thể lệch chuẩn ($W=0,736; p=0,0148 < 0,05$) + thang đo thứ bậc $arrow.r$ *chọn kiểm định phi tham số*.
      - *Bước 3 – Kiểm định Wilcoxon signed-rank:*
        + *Tổng thể (1 phía):* $W=0, p=0,0312 < 0,05$ (Cả 6 nhóm đều tăng, TB $+8,3$ điểm).
        + *Từng bài (2 phía, bảo thủ):* P1, P4 đạt $p=0,03125$; P2, P3, P5 có xu hướng tăng.
    ],
    sbox(stroke-c: c-amber.lighten(20%), fill-c: white, inset: 4.5pt)[
      #text(weight: "bold", size: 7.9pt, fill: c-amber.darken(10%))[B · Xử lí phiếu Likert ($n=18$ SV) \ $arrow.r$ Trả lời Câu hỏi phụ C2 (Cảm nhận)]
      #v(2pt)
      #set text(size: 7.4pt)
      - *Bước 1 – Thống kê mô tả:* Tính tỉ lệ % (Đồng ý, Trung lập, Không đồng ý) và điểm trung bình từng mục (P1–P4 của mỗi thang).
      - *Bước 2 – Phân tách nguyên tắc so sánh [20, 22]:*
        + *3 biến chung (KSE, CL, IM):* Đối chiếu trực tiếp sự dịch chuyển từ $A_1 arrow.r A_2$ (KSE: $84,7\% arrow.r 94,4\%$; IM: $87,5\% arrow.r 100\%$; CL phân cực do nỗ lực kiểm chứng AI).
        + *Các biến riêng (SI, CT ở A1; PU-GAI, TE-AI, RI ở A2):* Phân tích mô tả độc lập từng giai đoạn, không gộp so sánh suy luận.
    ],
    sbox(stroke-c: c-purple.lighten(20%), fill-c: white, inset: 4.5pt)[
      #text(weight: "bold", size: 7.9pt, fill: c-purple.darken(10%))[C · Xử lí Câu hỏi mở & Tích hợp \ $arrow.r$ Trả lời Câu hỏi phụ C3 & Câu hỏi chính]
      #v(2pt)
      #set text(size: 7.4pt)
      - *Bước 1 – Phân tích chủ đề (Braun & Clarke [36]):* Mã hóa 18 phản hồi/giai đoạn, gom nhóm chủ đề và tính tần suất % (A2: rõ ràng 44%, kiểm chứng 33%; lỗi toán AI 28%, phụ thuộc prompt 22%).
      - *Bước 2 – Ma trận hội tụ (Convergence Matrix):* Đặt song song *bằng chứng định lượng* (chiều hướng & độ lớn) và *chủ đề định tính* (cơ chế giải thích), xếp loại: *Thống nhất / Một phần / Im lặng* để trả lời toàn diện Câu hỏi chính (C).
    ],
  )
]

#v(3.5pt)

// --- KHỐI 5: BIẾN NGHIÊN CỨU & HẠN CHẾ THIẾT KẾ ---
#grid(
  columns: (0.92fr, 1.03fr, 1.35fr),
  column-gutter: 4.5pt,
  sbox(stroke-c: c-slate.lighten(30%), fill-c: rgb("#f8fafc"), inset: 4.5pt)[
    #text(weight: "bold", size: 7.9pt, fill: c-navy)[Biến độc lập (Independent Variable)] \
    #text(size: 7.4pt)[Hình thức trung gian trong đối thoại Socrates: (1) Chỉ có GV hướng dẫn ($A_1$) vs. (2) GV hướng dẫn + GAI hỗ trợ ($A_2$).]
  ],
  sbox(stroke-c: c-slate.lighten(30%), fill-c: rgb("#f8fafc"), inset: 4.5pt)[
    #text(weight: "bold", size: 7.9pt, fill: c-navy)[Biến phụ thuộc (Dependent Variable)] \
    #text(size: 7.4pt)[Mức độ Tư duy phản biện (Rubric 5 tiêu chí: hiểu nguyên lí, lập luận, phản ví dụ, sửa lỗi, trình bày) & cảm nhận học tập.]
  ],
  sbox(stroke-c: c-red.lighten(35%), fill-c: rgb("#fef2f2"), inset: 4.5pt, dashed: true)[
    #text(weight: "bold", size: 7.9pt, fill: c-red)[Hạn chế thiết kế & Phạm vi suy luận] \
    #text(size: 7.4pt)[Thứ tự cố định ($A_1 arrow.r A_2$), dùng lại 5 bài tập (ảnh hưởng luyện tập/chuyển tiếp), không có nhóm đối chứng $arrow.r$ *chỉ kết luận về mối liên hệ trong mẫu, không khẳng định nhân quả*.]
  ],
)

// =====================================================================
// TRANG 3: SƠ ĐỒ PHƯƠNG PHÁP NGHIÊN CỨU (RESEARCH METHODOLOGY)
// =====================================================================
#pagebreak()

#page-header(
  "Trang 3 · Sơ đồ phương pháp nghiên cứu (Research Methodology Flowchart)",
  "Sơ Đồ Luồng Phương Pháp Nghiên Cứu Hỗn Hợp Hội Tụ (Convergent Mixed-Methods)",
  "Tích hợp Định lượng – Định tính theo chuẩn PRPER",
)

// --- TẦNG 1: CÁCH TIẾP CẬN ---
#sbox(stroke-c: c-navy, fill-c: rgb("#f1f5f9"), inset: (x: 9pt, y: 4.5pt))[
  #align(center)[
    #text(weight: "bold", size: 9.2pt, fill: c-navy)[CÁCH TIẾP CẬN NGHIÊN CỨU (RESEARCH APPROACH)] \
    #text(size: 7.9pt, fill: c-slate)[*Phương pháp hỗn hợp hội tụ (Convergent Mixed-Methods)* [14, 15] · Nhấn mạnh định tính & định hướng diễn giải · Bổ sung định lượng mô tả và suy luận]
  ]
]

#d-arrow()

// --- TẦNG 2: 3 KHỐI NỀN TẢNG (ĐỐI TƯỢNG - CÔNG CỤ - THẨM ĐỊNH & ĐẠO ĐỨC) ---
#grid(
  columns: (1fr, 1.15fr, 1.15fr),
  column-gutter: 5pt,
  sbox(stroke-c: c-slate.lighten(25%), fill-c: rgb("#f8fafc"), inset: 5pt)[
    #align(center)[
      #text(weight: "bold", size: 8.5pt, fill: c-navy)[Đối tượng & Mẫu nghiên cứu]
    ]
    #v(2pt)
    #set text(size: 7.6pt)
    - *Tổng thể:* 97 SV sư phạm Vật lí (ĐH công lập Ecuador) đã học Động học 1 chiều.
    - *Mẫu:* 18 SV tự nguyện (18,6%, HK 3–8, 18–25 tuổi) $arrow.r$ chia thành *6 nhóm $times$ 3 SV*.
    - Đã được tập huấn viết câu lệnh AI 4 phần.
  ],
  sbox(stroke-c: c-slate.lighten(25%), fill-c: rgb("#f8fafc"), inset: 5pt)[
    #align(center)[
      #text(weight: "bold", size: 8.5pt, fill: c-navy)[Hệ thống Công cụ nghiên cứu]
    ]
    #v(2pt)
    #set text(size: 7.6pt)
    - *Can thiệp:* Bộ 5 bài tập động học (S1), Bộ câu hỏi Socrates (S2), Khung Prompt 4 phần (S4).
    - *Đo lường:* Bảng tiêu chí *Rubric TDPB 5 tiêu chí $times$ 4 mức (S3)*; *2 Phiếu khảo sát Likert* (biến chung & riêng) + *2 Câu hỏi mở*.
  ],
  sbox(stroke-c: c-slate.lighten(25%), fill-c: rgb("#f8fafc"), inset: 5pt)[
    #align(center)[
      #text(weight: "bold", size: 8.5pt, fill: c-navy)[Thẩm định giá trị & Đạo đức]
    ]
    #v(2pt)
    #set text(size: 7.6pt)
    - *Thẩm định 2 vòng (6 chuyên gia):* 3 chuyên gia GD Vật lí + 3 chuyên gia Thống kê. Vòng 1: $"CVI" = 0,886 - 0,944$ $arrow.r$ Vòng 2: *tất cả đạt $"CVI" = 1,00$*.
    - *Đạo đức:* Tuân thủ *Tuyên bố Helsinki* [23] (đồng thuận văn bản, tự nguyện, bảo mật).
  ],
)

#d-arrow()

// --- TẦNG 3: CAN THIỆP SOCRATIC-IA ---
#sbox(stroke-c: c-blue.lighten(20%), fill-c: rgb("#eff6ff"), dashed: true, inset: (x: 7pt, y: 4.5pt))[
  #align(center)[
    #text(weight: "bold", size: 8.6pt, fill: c-blue.darken(15%))[TRIỂN KHAI CAN THIỆP MÔ HÌNH SOCRATIC-IA (10 GIỜ · GIẢNG VIÊN GIÁM SÁT)]
  ]
  #v(2.5pt)
  #grid(
    columns: (1fr, auto, 1.15fr, auto, 1.15fr),
    column-gutter: 4.5pt,
    align: horizon,
    sbox(stroke-c: c-warm, fill-c: white, inset: 4pt)[
      #align(center)[
        #text(weight: "bold", size: 8pt, fill: c-warm.darken(15%))[GĐ1: Kích hoạt khái niệm (2 giờ)] \
        #text(size: 7.4pt)[Ôn vận tốc, gia tốc, biểu diễn chuyển động & cấu trúc Prompt 4 phần · *Không đánh giá*]
      ]
    ],
    r-arrow(c: c-blue),
    sbox(stroke-c: c-teal, fill-c: white, inset: 4pt)[
      #align(center)[
        #text(weight: "bold", size: 8pt, fill: c-teal.darken(15%))[GĐ2: Socrates thuần GV – $A_1$ (4 giờ)] \
        #text(size: 7.4pt)[Giả thuyết cá nhân $arrow.r$ Thảo luận nhóm $arrow.r$ Câu hỏi Socrates của GV $arrow.r$ Viết đồng thuận]
      ]
    ],
    r-arrow(c: c-blue),
    sbox(stroke-c: c-amber, fill-c: white, inset: 4pt)[
      #align(center)[
        #text(weight: "bold", size: 8pt, fill: c-amber.darken(15%))[GĐ3: Socrates + GAI – $A_2$ (4 giờ)] \
        #text(size: 7.4pt)[Cùng quy trình 4 bước, có *Gemini* làm giàn giáo nhận thức dưới sự điều tiết của GV]
      ]
    ],
  )
]

#d-arrow(label: "Tách 2 nhánh thu thập và phân tích dữ liệu song song")

// --- TẦNG 4: HAI DÒNG ĐỊNH LƯỢNG VÀ ĐỊNH TÍNH SONG SONG ---
#grid(
  columns: (1fr, 1fr),
  column-gutter: 8pt,
  // CỘT TRÁI: DÒNG ĐỊNH LƯỢNG
  [
    #block(
      width: 100%,
      fill: c-teal,
      radius: 3.5pt,
      inset: (x: 7pt, y: 3.5pt),
      align(center, text(fill: white, weight: "bold", size: 8.6pt)[DÒNG ĐỊNH LƯỢNG (QUANTITATIVE STRAND)]),
    )
    #d-arrow(c: c-teal)
    #sbox(stroke-c: c-teal, fill-c: rgb("#f0fdfa"), inset: 4.5pt)[
      #text(weight: "bold", size: 8.2pt, fill: c-teal.darken(15%))[1 · Thu thập dữ liệu định lượng] \
      #set text(size: 7.5pt)
      - *Điểm Rubric TDPB (S3):* 6 nhóm $times$ 5 bài tập $times$ 2 giai đoạn ($A_1, A_2$) = 60 bài giải đồng thuận (chấm 5 tiêu chí $times$ 4 mức độ).
      - *Phiếu khảo sát Likert:* 18 SV vào cuối mỗi giai đoạn ($A_1$: KSE, CL, IM + SI, CT; $A_2$: KSE, CL, IM + PU-GAI, TE-AI, RI).
    ]
    #d-arrow(c: c-teal)
    #sbox(stroke-c: c-teal, fill-c: rgb("#f0fdfa"), inset: 4.5pt)[
      #text(weight: "bold", size: 8.2pt, fill: c-teal.darken(15%))[2 · Kiểm tra giả định thống kê] \
      #set text(size: 7.5pt)
      - Tính hiệu số điểm ghép cặp $Delta = A_2 - A_1$ của 6 nhóm.
      - *Kiểm định Shapiro–Wilk* cho mẫu nhỏ [25]: hiệu số tổng thể lệch khỏi phân phối chuẩn ($W = 0,736; p = 0,0148 < 0,05$); ở cấp bài tập, P2 ($p=0,020$) và P4 ($p=0,0247$) không chuẩn.
      - Kết hợp bản chất thứ bậc của Rubric $arrow.r$ *Chọn kiểm định phi tham số*.
    ]
    #d-arrow(c: c-teal)
    #sbox(stroke-c: c-teal, fill-c: rgb("#f0fdfa"), inset: 4.5pt)[
      #text(weight: "bold", size: 8.2pt, fill: c-teal.darken(15%))[3 · Kiểm định Wilcoxon & Thống kê mô tả] \
      #set text(size: 7.5pt)
      - *Wilcoxon signed-rank tổng thể (1 phía, giả thuyết có hướng $H_(1G)$):* $W = 0; p = 0,0312 < 0,05$ (bác bỏ $H_(0G)$).
      - *Wilcoxon từng bài P1–P5 (2 phía, bảo thủ):* P1 và P4 đạt ý nghĩa thống kê ($p = 0,03125$); P2, P3 ($p = 0,0625$), P5 ($p = 0,125$).
      - *Khảo sát Likert:* Tính % đồng ý và điểm TB; chỉ so sánh trực tiếp 3 biến chung (KSE, CL, IM) giữa $A_1$ và $A_2$.
    ]
    #d-arrow(c: c-teal)
    #sbox(stroke-c: c-teal, fill-c: rgb("#f0fdfa"), inset: 4.5pt)[
      #text(weight: "bold", size: 8.2pt, fill: c-teal.darken(15%))[4 · Kết quả định lượng cốt lõi] \
      #set text(size: 7.5pt)
      - *Rubric TDPB:* Cả 6 nhóm đều tăng điểm ở $A_2$ (tăng TB *$+8,3$ điểm/nhóm*, trung vị P4 tăng mạnh từ $6,5 arrow.r 10,0$), không có nhóm nào giảm điểm.
      - *Cảm nhận:* KSE tăng ($84,7\% arrow.r 94,4\%$), IM đạt $100\%$, PU-GAI đạt $100\%$; riêng *CL biến thiên phân cực* ($59,7\% arrow.r 65,3\%$) do nỗ lực kiểm chứng AI.
    ]
  ],
  // CỘT PHẢI: DÒNG ĐỊNH TÍNH
  [
    #block(
      width: 100%,
      fill: c-purple,
      radius: 3.5pt,
      inset: (x: 7pt, y: 3.5pt),
      align(center, text(fill: white, weight: "bold", size: 8.6pt)[DÒNG ĐỊNH TÍNH (QUALITATIVE STRAND)]),
    )
    #d-arrow(c: c-purple)
    #sbox(stroke-c: c-purple, fill-c: rgb("#f5f3ff"), inset: 4.5pt)[
      #text(weight: "bold", size: 8.2pt, fill: c-purple.darken(15%))[1 · Thu thập dữ liệu định tính] \
      #set text(size: 7.5pt)
      - *Câu hỏi mở phản tư cá nhân:* 18 câu trả lời tự do sau $A_1$ và 18 câu trả lời sau $A_2$.
      - *Sản phẩm học tập:* Bản ghi quá trình đối thoại Socrates và các bài giải viết đồng thuận của 6 nhóm (minh họa chi tiết ở Phụ lục Bài 1).
    ]
    #d-arrow(c: c-purple)
    #sbox(stroke-c: c-purple, fill-c: rgb("#f5f3ff"), inset: 4.5pt)[
      #text(weight: "bold", size: 8.2pt, fill: c-purple.darken(15%))[2 · Phân tích chủ đề (Thematic Analysis)] \
      #set text(size: 7.5pt)
      - Áp dụng khuôn khổ *Braun và Clarke (2006)* [36] phù hợp với mẫu nhỏ.
      - *Quy trình xử lí:* Đọc làm quen dữ liệu $arrow.r$ Mã hóa (coding) các mô thức lập luận, giám sát lỗi, dùng phản ví dụ $arrow.r$ Gom thành các chủ đề chính (themes) $arrow.r$ Tính tần suất xuất hiện (%).
    ]
    #d-arrow(c: c-purple)
    #sbox(stroke-c: c-purple, fill-c: rgb("#f5f3ff"), inset: 4.5pt)[
      #text(weight: "bold", size: 8.2pt, fill: c-purple.darken(15%))[3 · Các chủ đề tích cực phát hiện được] \
      #set text(size: 7.5pt)
      - *Ở $A_1$ (Chỉ có GV):* Làm rõ & đào sâu khái niệm (*44%*), Tư duy phản biện & ý thức siêu nhận thức (*39%*), Cấu trúc hóa suy luận (*28%*).
      - *Ở $A_2$ (Có GAI):* Tính hữu ích & sự rõ ràng khái niệm (*44%*), *Sử dụng có phê phán & kiểm chứng đầu ra AI (33%)*, Cấu trúc hóa suy luận (*17%*), Hiệu quả công cụ (*17%*).
    ]
    #d-arrow(c: c-purple)
    #sbox(stroke-c: c-purple, fill-c: rgb("#f5f3ff"), inset: 4.5pt)[
      #text(weight: "bold", size: 8.2pt, fill: c-purple.darken(15%))[4 · Hạn chế của GAI do sinh viên nhận diện] \
      #set text(size: 7.5pt)
      - Sinh viên chỉ rõ 2 rào cản khi làm việc với Gemini: *Điểm thiếu chính xác về toán học (28%)* và *Sự phụ thuộc vào cách diễn đạt câu lệnh prompt (22%)*.
      - *Ý nghĩa sư phạm:* Chính các hạn chế này buộc SV phải kiểm chứng liên tục, kích hoạt suy luận có chủ đích và tự điều chỉnh siêu nhận thức.
    ]
  ],
)

#d-arrow(label: "Đối chiếu kiểm chứng chéo hai nguồn dữ liệu (Triangulation)")

// --- TẦNG 5: TÍCH HỢP MA TRẬN HỘI TỤ ---
#sbox(stroke-c: c-navy, fill-c: rgb("#f1f5f9"), inset: (x: 8pt, y: 4.5pt))[
  #align(center)[
    #text(weight: "bold", size: 8.8pt, fill: c-navy)[5 · TÍCH HỢP DỮ LIỆU: MA TRẬN HỘI TỤ ĐỊNH LƯỢNG – ĐỊNH TÍNH (CONVERGENCE MATRIX, BẢNG IV)]
  ]
  #v(1.5pt)
  #set text(size: 7.6pt)
  - *Cách thức tích hợp [37, 38]:* Đặt từng phát hiện định lượng (Wilcoxon, Likert) cạnh chủ đề định tính tương ứng; phân loại mức độ hội tụ thành 3 mức: *Thống nhất (Convergence)*, *Một phần (Partial)*, hoặc *Không có dữ liệu đối ứng (Silence)*.
  - *Cơ chế bổ trợ trả lời Câu hỏi NC:* Bằng chứng định lượng xác lập *chiều hướng và độ lớn* của sự cải thiện TDPB; bằng chứng định tính giải thích *cách thức và điều kiện* diễn ra sự cải thiện đó (nhờ GAI làm giàn giáo gợi mở kết hợp với sự kiểm chứng phê phán của SV và giám sát của GV).
]

#d-arrow()

// --- TẦNG 6 & 7: DIỄN GIẢI THẬN TRỌNG & HẠN CHẾ PHƯƠNG PHÁP ---
#grid(
  columns: (1fr, 1.15fr),
  column-gutter: 7pt,
  sbox(stroke-c: c-green, fill-c: rgb("#f0fdf4"), inset: 4.5pt)[
    #text(weight: "bold", size: 8.3pt, fill: c-green.darken(15%))[6 · Diễn giải thận trọng (Cautious Interpretation)] \
    #set text(size: 7.5pt)
    - Khẳng định *mối liên hệ tích cực và tính khả thi sư phạm* của mô hình SOCRATIC-IA trong mẫu nghiên cứu, *không khẳng định quan hệ nhân quả độc lập* của GAI.
    - Không có nhóm giảm điểm phản ánh tính an toàn bước đầu khi có GV giám sát, không đồng nghĩa với kết luận suy luận tuyệt đối "AI không gây hại".
  ],
  sbox(stroke-c: c-red.lighten(30%), fill-c: rgb("#fef2f2"), inset: 4.5pt, dashed: true)[
    #text(weight: "bold", size: 8.3pt, fill: c-red.darken(10%))[Hạn chế phương pháp & Hướng nghiên cứu tiếp theo] \
    #set text(size: 7.5pt)
    - *Hạn chế:* Thứ tự cố định ($A_1 arrow.r A_2$), dùng lại bài tập, mẫu nhỏ ($n=18, N=6$), chấm đồng thuận nên không tính được ICC, chưa báo cáo cỡ ảnh hưởng (*effect size*).
    - *Hướng mở:* Thiết kế đối chứng hoặc cân bằng thứ tự (*counterbalanced/crossover*), bài tập đẳng cấu khác đề, mở rộng mẫu và đo khả năng lưu giữ/chuyển giao kiến thức.
  ],
)

#v(3pt)
#align(center)[
  #set text(size: 7.1pt, fill: c-slate)
  #box(fill: rgb("#f0fdfa"), stroke: 0.6pt + c-teal, inset: (x: 4.5pt, y: 1.8pt), radius: 2pt)[#text(fill: c-teal.darken(15%), weight: "semibold")[■ Nhánh Định lượng / Giảng viên dẫn dắt]]
  #h(4pt)
  #box(fill: rgb("#fffbeb"), stroke: 0.6pt + c-amber, inset: (x: 4.5pt, y: 1.8pt), radius: 2pt)[#text(fill: c-amber.darken(15%), weight: "semibold")[■ Nhánh Có GAI hỗ trợ (Gemini)]]
  #h(4pt)
  #box(fill: rgb("#f5f3ff"), stroke: 0.6pt + c-purple, inset: (x: 4.5pt, y: 1.8pt), radius: 2pt)[#text(fill: c-purple.darken(15%), weight: "semibold")[■ Nhánh Định tính (Phản tư & Chủ đề)]]
  #h(4pt)
  #box(fill: rgb("#f1f5f9"), stroke: 0.6pt + c-navy, inset: (x: 4.5pt, y: 1.8pt), radius: 2pt)[#text(fill: c-navy, weight: "semibold")[■ Tích hợp Hỗn hợp & Dùng chung]]
]

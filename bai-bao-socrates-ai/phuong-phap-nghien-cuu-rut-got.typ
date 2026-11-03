// Slide trình chiếu: Phương pháp nghiên cứu & Thiết kế nghiên cứu (Bản rút gọn - Tăng font & Nâng footer an toàn)
// Bài báo: Effects of generative AI-mediated socratic dialogue on preservice physics teachers' critical thinking in kinematics (PRPER 22, 020134, 2026)
// Biên dịch: typst compile bai-bao-socrates-ai/phuong-phap-nghien-cuu-rut-gon.typ bai-bao-socrates-ai/phuong-phap-nghien-cuu-rut-gon.pdf

#set document(
  title: "Phương pháp nghiên cứu (Slide) - PRPER 22, 020134 (2026)",
  author: "Nhóm 1",
)
#set page(
  paper: "presentation-16-9",
  margin: (x: 0.85cm, top: 0.42cm, bottom: 0.88cm),
  footer: context {
    let n = counter(page).get().first()
    let total = counter(page).final().first()
    set text(font: "Segoe UI", size: 9.8pt, fill: luma(120))
    v(-4pt)
    line(length: 100%, stroke: 0.5pt + luma(210))
    v(1.5pt)
    grid(
      columns: (1fr, auto),
      [Nhóm 1 · Báo cáo Phương pháp Nghiên cứu · Guerrero-Zambrano và cs. (2026), _Phys. Rev. Phys. Educ. Res._ *22*, 020134],
      [*Slide #n / #total*],
    )
  },
)
#set text(font: "Segoe UI", size: 12.5pt, lang: "vi", fill: rgb("#1e293b"))
#set par(justify: false, leading: 0.44em, spacing: 0.42em)
#set list(spacing: 0.32em, indent: 2pt, body-indent: 4pt)

// ===================== BẢNG MÀU HIỆN ĐẠI =====================
#let c-navy = rgb("#1b365d")
#let c-blue = rgb("#1e5aa8")
#let c-teal = rgb("#0d7369")
#let c-amber = rgb("#b45309")
#let c-purple = rgb("#6d28d9")
#let c-red = rgb("#b91c1c")
#let c-green = rgb("#15803d")
#let c-slate = rgb("#475569")

// ===================== HÀM TIỆN ÍCH CHO SLIDE =====================
#let badge(bg, fg: white, body) = box(
  fill: bg, inset: (x: 7.5pt, y: 2.5pt), radius: 3.5pt,
  text(fill: fg, weight: "bold", size: 10.2pt, body),
)
#let pill(c, body) = box(
  fill: c.lighten(90%), stroke: 0.8pt + c.lighten(20%), inset: (x: 6.5pt, y: 2pt), radius: 10pt,
  text(fill: c.darken(15%), weight: "bold", size: 9.8pt, body),
)
#let sbox(stroke-c: c-slate, fill-c: white, radius: 4.5pt, inset: (x: 7.5pt, y: 4.5pt), width: 100%, dashed: false, body) = block(
  width: width, breakable: false, fill: fill-c,
  stroke: if dashed { (paint: stroke-c, thickness: 1pt, dash: "dashed") } else { 1pt + stroke-c },
  radius: radius, inset: inset, spacing: 0pt, body,
)
#let r-arrow(c: c-slate) = align(center + horizon)[#text(size: 14pt, weight: "bold", fill: c, sym.arrow.r)]
#let d-arrow(label: none, c: c-slate) = align(center)[
  #v(0.5pt)
  #if label != none [
    #grid(
      columns: (auto, auto), column-gutter: 4pt, align: horizon,
      text(size: 13pt, weight: "bold", fill: c, sym.arrow.b),
      text(size: 9.8pt, fill: c, style: "italic", weight: "semibold", label),
    )
  ] else [
    #text(size: 11.5pt, weight: "bold", fill: c, sym.arrow.b)
  ]
  #v(0.5pt)
]

#let slide-header(step, title, tag: "PRPER 2026") = {
  block(
    width: 100%, fill: c-navy, radius: 4.5pt, inset: (x: 11pt, y: 5pt), spacing: 0pt,
  )[
    #grid(
      columns: (1fr, auto), align: (left + horizon, right + horizon),
      [
        #text(fill: rgb("#93c5fd"), size: 9.8pt, weight: "bold", tracking: 0.6pt, upper(step))
        #h(10pt)
        #text(fill: white, size: 16pt, weight: "bold", title)
      ],
      box(fill: white.transparentize(85%), radius: 3.5pt, inset: (x: 7.5pt, y: 2.8pt), text(fill: white, size: 9.8pt, weight: "bold", tag)),
    )
  ]
  v(3pt)
}

// =====================================================================
// SLIDE 1: TIÊU ĐỀ BÀI BÁO + CÂU HỎI NGHIÊN CỨU + THÀNH VIÊN NHÓM 1
// =====================================================================

#slide-header("Slide 1 / 3", "Báo cáo nhóm 1")

// 1. Khối Tiêu đề bài báo to, nổi bật ở trên
#sbox(stroke-c: c-navy, fill-c: rgb("#f8fafc"), inset: (x: 10pt, y: 5.5pt))[
  #grid(
    columns: (1fr, auto), align: (left + horizon, right + horizon),
    text(size: 10.5pt, weight: "bold", fill: c-blue, tracking: 0.5pt)[BÀI BÁO NGHIÊN CỨU KHOA HỌC TRONG GIÁO DỤC VẬT LÍ (PHYSICAL REVIEW PER)],
    badge(rgb("#c0392b"))[Phys. Rev. Phys. Educ. Res. 22, 020134 (2026)],
  )
  #v(2pt)
  #text(size: 16.8pt, weight: "bold", fill: c-navy)[
    Effects of generative AI-mediated socratic dialogue on preservice physics teachers' critical thinking in kinematics
  ]
  #v(1.5pt)
  #text(size: 12.2pt, fill: rgb("#334155"), style: "italic")[
    (Ảnh hưởng của đối thoại Socrates có AI tạo sinh làm trung gian đối với tư duy phản biện của sinh viên sư phạm Vật lí trong phần Động học)
  ]
  #v(2pt)
  #line(length: 100%, stroke: 0.5pt + luma(210))
  #v(1.5pt)
  #grid(
    columns: (1fr, auto),
    text(size: 10.2pt, fill: c-slate)[*Tác giả:* M. Guerrero-Zambrano, B. Valarezo-Chamba, L. Sanchez-Alvarado, E. Lamilla-Rubio],
    text(size: 10.2pt, fill: c-amber.darken(10%), weight: "bold")[DOI: 10.1103/x7vq-17rq],
  )
]

#v(3pt)

// 2. Nội dung ở giữa: 2 cột rộng rãi (Câu hỏi nghiên cứu & Điểm mấu chốt thiết kế)
#grid(
  columns: (1.12fr, 1fr), column-gutter: 8pt,
  // Cột 1: Câu hỏi nghiên cứu
  sbox(stroke-c: c-teal, fill-c: rgb("#f0fdfa"), inset: (x: 8.5pt, y: 5pt))[
    #align(center, text(fill: c-teal.darken(15%), weight: "bold", size: 12.2pt)[HỆ THỐNG CÂU HỎI NGHIÊN CỨU])
    #v(2pt)
    #set text(size: 10.8pt)
    #block(fill: white, inset: 4.5pt, radius: 4pt, stroke: 0.6pt + c-teal.lighten(30%))[
      *Câu hỏi chính (C):* Có những khác biệt nào về *kết quả TDPB (chấm theo rubric)* và *lập luận định tính* khi SV giải bài động học qua *đối thoại Socrates thuần GV ($A_1$)* so với *cùng đối thoại có GAI hỗ trợ ($A_2$)*?
    ]
    #v(1.5pt)
    *Ba câu hỏi phụ phân rã:*
    - *C1 (Năng lực - Định lượng):* Khác biệt có ý nghĩa về điểm Rubric TDPB giữa $A_1$ và $A_2$?
    - *C2 (Tâm lí - Nhận thức):* KSE (tự tin), CL (tải nhận thức), IM (động cơ) thay đổi thế nào?
    - *C3 (Định tính & Hội tụ):* Phản tư định tính hội tụ hoặc giải thích điểm số ra sao?
  ],
  // Cột 2: Điểm mấu chốt của thiết kế
  sbox(stroke-c: c-amber, fill-c: rgb("#fffbeb"), inset: (x: 8.5pt, y: 5pt))[
    #align(center, text(fill: c-amber.darken(15%), weight: "bold", size: 12.2pt)[ĐIỂM MẤU CHỐT CỦA THIẾT KẾ])
    #v(2pt)
    #set text(size: 10.8pt)
    #block(stroke: (left: 3pt + c-teal), inset: (left: 5.5pt), spacing: 2pt)[
      *1. Điểm khác trong tác động sư phạm:*
      - *Mẫu:* Dùng *cùng 1 nhóm 18 SV* trải qua 2 giai đoạn ($A_1 arrow.r A_2$), quy trình 4 bước giống nhau.
      - *Khác duy nhất ở Bước 3:* $A_1$ đối thoại thuần GV; $A_2$ dùng *Gemini (Prompt 4 phần)* làm giàn giáo nhận thức + GV giám sát, buộc SV tự kiểm chứng.
    ]
    #v(2pt)
    #block(stroke: (left: 3pt + c-purple), inset: (left: 5.5pt), spacing: 2pt)[
      *2. Cơ sở công cụ & Độ tin cậy:*
      - *Cơ sở:* Khung nhận thức/động lực và phương pháp hỗn hợp hội tụ.
      - *Độ tin cậy:* 6 chuyên gia thẩm định 2 vòng đạt *$"CVI" = 1,00$*; kiểm chứng chéo qua Ma trận hội tụ.
    ]
  ],
)

#v(3pt)

// 3. Khung Danh sách thành viên Nhóm 1 & Giảng viên: 2 cột thành viên
#sbox(stroke-c: c-blue, fill-c: rgb("#eff6ff"), inset: (x: 11pt, y: 6.5pt))[
  #grid(
    columns: (1fr, auto, 1.8fr), column-gutter: 12pt, align: horizon,
    // Cột 1: Thông tin Giảng viên hướng dẫn & Trường
    [
      #badge(c-navy)[NHÓM 1 · BÁO CÁO]
      #v(3pt)
      #text(size: 10.8pt, weight: "bold", fill: c-navy)[Giảng viên hướng dẫn:] \
      #v(1.5pt)
      #text(size: 14pt, weight: "bold", fill: c-red.darken(10%))[TS. Lê Hải Mỹ Ngân] \
      #v(1.5pt)
      #text(size: 10.2pt, fill: c-slate, weight: "semibold")[Trường Đại học Sư phạm TP. Hồ Chí Minh]
    ],
    // Vách ngăn đứng
    line(start: (0pt, -25pt), end: (0pt, 25pt), stroke: 0.8pt + c-blue.lighten(35%)),
    // Cột 2: Danh sách 5 thành viên xếp thành 2 cột rộng rãi
    [
      #text(size: 10.8pt, weight: "bold", fill: c-blue.darken(15%))[DANH SÁCH THÀNH VIÊN NHÓM]
      #v(2.5pt)
      #grid(
        columns: (1fr, 1fr), column-gutter: 9pt, row-gutter: 3.5pt,
        // Cột thành viên A (3 SV)
        [
          #grid(
            columns: (1fr,), row-gutter: 3pt,
            sbox(stroke-c: c-blue.lighten(30%), fill-c: white, inset: (x: 6.5pt, y: 3.5pt))[
              #grid(columns: (1fr, auto), text(size: 10.8pt, weight: "bold")[1. Huỳnh Thiên Phúc], text(size: 10.2pt, fill: c-slate)[`51.01.102.017`])
            ],
            sbox(stroke-c: c-blue.lighten(30%), fill-c: white, inset: (x: 6.5pt, y: 3.5pt))[
              #grid(columns: (1fr, auto), text(size: 10.8pt, weight: "bold")[2. Chung Diệu Minh], text(size: 10.2pt, fill: c-slate)[`51.01.102.011`])
            ],
            sbox(stroke-c: c-blue.lighten(30%), fill-c: white, inset: (x: 6.5pt, y: 3.5pt))[
              #grid(columns: (1fr, auto), text(size: 10.8pt, weight: "bold")[3. Lê Minh Thắng], text(size: 10.2pt, fill: c-slate)[`51.01.102.021`])
            ],
          )
        ],
        // Cột thành viên B (2 SV + ghi chú)
        [
          #grid(
            columns: (1fr,), row-gutter: 3pt,
            sbox(stroke-c: c-blue.lighten(30%), fill-c: white, inset: (x: 6.5pt, y: 3.5pt))[
              #grid(columns: (1fr, auto), text(size: 10.8pt, weight: "bold")[4. Võ Thành Nhân], text(size: 10.2pt, fill: c-slate)[`51.01.102.015`])
            ],
            sbox(stroke-c: c-blue.lighten(30%), fill-c: white, inset: (x: 6.5pt, y: 3.5pt))[
              #grid(columns: (1fr, auto), text(size: 10.8pt, weight: "bold")[5. Vương Hồ Tấn Sang], text(size: 10.2pt, fill: c-slate)[`51.01.102.019`])
            ],
            box(fill: rgb("#f1f5f9"), inset: (x: 6.5pt, y: 3.5pt), radius: 4pt, stroke: 0.6pt + luma(200))[
              #align(center + horizon, text(size: 9.5pt, fill: c-slate, style: "italic")[Khóa học: Sư phạm Vật lí · 2026])
            ],
          )
        ],
      )
    ],
  )
]

// =====================================================================
// SLIDE 2: SƠ ĐỒ THIẾT KẾ NGHIÊN CỨU (LÀM GÌ - LÀM THẾ NÀO - CÔNG CỤ - XỬ LÍ)
// =====================================================================
#pagebreak()

#slide-header("Slide 2 / 3", "Sơ Đồ Thiết Kế Nghiên Cứu (Research Design)", tag: "Tiền thực nghiệm đo lặp A1 → A2")

// Khối 1: Chọn mẫu & Tổ chức
#sbox(stroke-c: c-slate.lighten(20%), fill-c: rgb("#f8fafc"), dashed: true, inset: (x: 7.5pt, y: 3pt))[
  #grid(
    columns: (auto, 1fr, auto, 1.15fr, auto, 1.25fr), column-gutter: 8pt, align: horizon,
    badge(c-navy)[1. CHỌN MẪU],
    [#text(weight: "bold", size: 10.8pt, fill: c-navy)[Tổng thể: 97 sinh viên] \ #text(size: 9.6pt, fill: c-slate)[Đã học Động học 1 chiều, biết viết prompt]],
    r-arrow(),
    [#text(weight: "bold", size: 10.8pt, fill: c-blue)[Mẫu thực tế: 18 SV tự nguyện] \ #text(size: 9.6pt, fill: c-slate)[Tham gia trọn vẹn 10h, ký đồng thuận Helsinki]],
    r-arrow(),
    [#text(weight: "bold", size: 10.8pt, fill: c-teal)[Tổ chức: 6 nhóm $times$ 3 SV] \ #text(size: 9.6pt, fill: c-slate)[Đơn vị chấm Rubric: Nhóm; Khảo sát: Cá nhân]],
  )
]

#d-arrow(label: "Cùng 6 nhóm SV lần lượt trải qua 3 giai đoạn theo trình tự cố định")

// Khối 2: 3 giai đoạn can thiệp SOCRATIC-IA (10 giờ)
#grid(
  columns: (0.92fr, auto, 1.54fr, auto, 1.54fr), column-gutter: 4pt, align: top,
  // GĐ1
  sbox(stroke-c: c-slate, fill-c: rgb("#fafaf9"), inset: 4.5pt)[
    #align(center)[#text(weight: "bold", size: 10.8pt, fill: c-slate)[GĐ1: Kích hoạt khái niệm] \ #pill(c-slate)[2 giờ · Dùng chung toàn mẫu]]
    #v(1.5pt)
    #set text(size: 10pt)
    - *Làm gì:* Ôn khái niệm động học & luyện viết Prompt AI.
    - *Cách làm:* Thảo luận chung (không chấm điểm).
    - *Công cụ:* Câu hỏi khái niệm + Khung Prompt 4 phần (S4).
  ],
  r-arrow(c: c-teal),
  // GĐ2
  sbox(stroke-c: c-teal, fill-c: rgb("#f0fdfa"), inset: 4.5pt)[
    #align(center)[#text(weight: "bold", size: 10.8pt, fill: c-teal.darken(15%))[GĐ2: Đối thoại Socrates – A1] \ #pill(c-teal)[4 giờ · Chỉ Giảng viên dẫn dắt (Không AI)]]
    #v(1.5pt)
    #set text(size: 10pt)
    - *Làm gì:* Giải 5 bài toán qua tương tác thuần người.
    - *Cách làm (4 bước):* B1: Giả thuyết $arrow.r$ B2: Thảo luận nhóm $arrow.r$ *B3: GV hỏi Socrates, chất vấn giả định* $arrow.r$ B4: Viết bài giải đồng thuận.
    - *Công cụ:* Bộ 5 bài tập (S1) + Bộ câu hỏi Socrates của GV (S2).
  ],
  r-arrow(c: c-amber),
  // GĐ3
  sbox(stroke-c: c-amber, fill-c: rgb("#fffbeb"), inset: 4.5pt)[
    #align(center)[#text(weight: "bold", size: 10.8pt, fill: c-amber.darken(15%))[GĐ3: Socrates + GAI – A2] \ #pill(c-amber)[4 giờ · Google Gemini + GV giám sát]]
    #v(1.5pt)
    #set text(size: 10pt)
    - *Làm gì:* Mở rộng giải 5 bài toán qua Con người – AI.
    - *Cách làm (Đổi bước 3):* B1: Giả thuyết $arrow.r$ B2: Thảo luận nhóm $arrow.r$ *B3: Hỏi Gemini qua Prompt dưới sự giám sát của GV* $arrow.r$ B4: Kiểm chứng & viết bài.
    - *Công cụ:* 5 bài tập (S1) + Gemini + Khung Prompt 4 phần (S4).
  ],
)

#d-arrow(label: "Đo lường sau mỗi giai đoạn bằng bộ công cụ CVI = 1,00")

// Khối 3: Thu thập dữ liệu O1 vs O2
#grid(
  columns: (0.92fr, 8pt, 1.54fr, 8pt, 1.54fr), column-gutter: 0pt, align: horizon,
  sbox(stroke-c: luma(190), fill-c: rgb("#f5f5f4"), inset: 4pt)[
    #align(center, text(size: 9.6pt, fill: luma(100), weight: "bold")[Sau GĐ1: Không đo lường \ (Chỉ chuẩn bị nền tảng)])
  ],
  [],
  sbox(stroke-c: c-teal, fill-c: white, inset: 4pt)[
    #align(center, badge(c-teal)[TIỀN KIỂM: $O_1 = A_1$ (Sau GĐ2 - Thuần GV)])
    #set text(size: 9.8pt)
    - *Rubric TDPB (S3):* Chấm 30 bài giải (6 nhóm $times$ 5 bài).
    - *Phiếu Likert A1 (18 SV):* Biến chung (KSE, CL, IM) + Biến riêng (SI, CT).
    - *Câu hỏi mở A1:* Học được gì từ câu hỏi Socrates của GV?
  ],
  r-arrow(c: c-blue),
  sbox(stroke-c: c-amber, fill-c: white, inset: 4pt)[
    #align(center, badge(c-amber)[HẬU KIỂM: $O_2 = A_2$ (Sau GĐ3 - Có GAI)])
    #set text(size: 9.8pt)
    - *Cùng Rubric TDPB (S3):* Chấm 30 bài giải đồng thuận ở A2.
    - *Phiếu Likert A2 (18 SV):* Biến chung (KSE, CL, IM) + Biến riêng (PU, TE, RI).
    - *Câu hỏi mở A2:* AI tạo sinh hữu ích hay gây nhầm lẫn gì?
  ],
)

#d-arrow(label: "Quy trình xử lí dữ liệu sau thu nhận để trả lời hệ thống Câu hỏi nghiên cứu", c: c-blue)

// Khối 4: Xử lí dữ liệu (Viết gọn theo đề mục, không đưa số liệu)
#sbox(stroke-c: c-blue, fill-c: rgb("#eff6ff"), inset: (x: 7.5pt, y: 3.5pt))[
  #grid(
    columns: (auto, 1fr), column-gutter: 8pt, align: horizon,
    badge(c-blue)[XỬ LÍ DỮ LIỆU ĐỂ TRẢ LỜI CÂU HỎI NGHIÊN CỨU],
    text(size: 10.2pt, fill: c-blue.darken(15%))[*Quy tắc cốt lõi:* Phân tích độc lập theo từng loại thang đo $arrow.r$ Tích hợp chéo bằng Ma trận hội tụ],
  )
  #v(1.5pt)
  #grid(
    columns: (1fr, 1.05fr, 1.15fr), column-gutter: 5pt,
    sbox(stroke-c: c-teal.lighten(25%), fill-c: white, inset: 3.5pt)[
      #text(weight: "bold", size: 10.5pt, fill: c-teal.darken(15%))[A. Xử lí điểm Rubric $arrow.r$ Trả lời C1]
      #set text(size: 9.8pt)
      - *Bước 1:* Tính hiệu số ghép cặp $Delta = A_2 - A_1$.
      - *Bước 2:* Kiểm tra giả định phân phối chuẩn bằng kiểm định *Shapiro–Wilk*.
      - *Bước 3:* Áp dụng kiểm định phi tham số *Wilcoxon signed-rank* (tổng thể & từng bài).
    ],
    sbox(stroke-c: c-amber.lighten(25%), fill-c: white, inset: 3.5pt)[
      #text(weight: "bold", size: 10.5pt, fill: c-amber.darken(15%))[B. Xử lí phiếu Likert $arrow.r$ Trả lời C2]
      #set text(size: 9.8pt)
      - *Bước 1:* Thống kê mô tả (tỉ lệ % đồng ý và điểm trung bình từng mục).
      - *Bước 2:* So sánh trực tiếp 3 biến chung giữa 2 giai đoạn: *KSE, CL, IM*.
      - *Bước 3:* Phân tích mô tả độc lập các biến đặc thù riêng của từng giai đoạn.
    ],
    sbox(stroke-c: c-purple.lighten(25%), fill-c: white, inset: 3.5pt)[
      #text(weight: "bold", size: 10.5pt, fill: c-purple.darken(15%))[C. Phân tích định tính & Tích hợp $arrow.r$ C3, C]
      #set text(size: 9.8pt)
      - *Bước 1:* Phân tích chủ đề (*Thematic Analysis*) câu hỏi mở theo Braun & Clarke.
      - *Bước 2:* Mã hóa, gom nhóm chủ đề và tính tần suất xuất hiện.
      - *Bước 3:* Đưa vào *Ma trận hội tụ (Bảng IV)* để đối chiếu kiểm chứng chéo định lượng – định tính.
    ],
  )
]

// =====================================================================
// SLIDE 3: SƠ ĐỒ LUỒNG PHƯƠNG PHÁP NGHIÊN CỨU TỔNG THỂ
// =====================================================================
#pagebreak()

#slide-header("Slide 3 / 3", "Sơ Đồ Phương Pháp Nghiên Cứu Hỗn Hợp Hội Tụ", tag: "Convergent Mixed-Methods")

// Tầng 1: Cách tiếp cận
#sbox(stroke-c: c-navy, fill-c: rgb("#f1f5f9"), inset: (x: 9pt, y: 3.5pt))[
  #align(center)[
    #text(weight: "bold", size: 12pt, fill: c-navy)[CÁCH TIẾP CẬN: PHƯƠNG PHÁP HỖN HỢP HỘI TỤ (CONVERGENT MIXED-METHODS)] \
    #text(size: 10.5pt, fill: c-slate)[Định tính làm nòng cốt & định hướng diễn giải · Định lượng mô tả và suy luận bổ trợ nhằm kiểm chứng toàn diện]
  ]
]

#v(1.5pt)

// Tầng 2: 3 Khối nền tảng
#grid(
  columns: (1fr, 1.25fr, 1.15fr), column-gutter: 5pt,
  sbox(stroke-c: c-slate.lighten(25%), fill-c: white, inset: 4pt)[
    #text(weight: "bold", size: 10.6pt, fill: c-navy)[1. Đối tượng & Bối cảnh] \
    #text(size: 9.8pt)[- Tổng thể: 97 SV sư phạm Vật lí. \ - Mẫu: 18 SV tự nguyện $arrow.r$ chia 6 nhóm. \ - Đã tập huấn viết Prompt 4 phần.]
  ],
  sbox(stroke-c: c-slate.lighten(25%), fill-c: white, inset: 4pt)[
    #text(weight: "bold", size: 10.6pt, fill: c-navy)[2. Hệ thống Công cụ] \
    #text(size: 9.8pt)[- 5 bài tập động học (S1) + Câu hỏi Socrates (S2). \ - Bảng Rubric TDPB 5 tiêu chí $times$ 4 mức (S3). \ - Phiếu Likert (biến chung/riêng) + Câu hỏi mở.]
  ],
  sbox(stroke-c: c-slate.lighten(25%), fill-c: white, inset: 4pt)[
    #text(weight: "bold", size: 10.6pt, fill: c-navy)[3. Thẩm định & Đạo đức] \
    #text(size: 9.8pt)[- *Thẩm định chuyên gia 2 vòng: $"CVI" = 1,00$*. \ - Tuân thủ nghiêm ngặt *Tuyên bố Helsinki* (tự nguyện, có văn bản đồng thuận, bảo mật).]
  ],
)

#d-arrow(label: "Can thiệp mô hình SOCRATIC-IA (10 giờ, Giảng viên giám sát)")

// Tầng 3: Hai dòng dữ liệu song song (Chỉ nêu các bước, không đưa số liệu)
#grid(
  columns: (1fr, 1fr), column-gutter: 6pt,
  // Cột trái: Định lượng
  sbox(stroke-c: c-teal, fill-c: rgb("#f0fdfa"), inset: 4.5pt)[
    #align(center, badge(c-teal)[DÒNG ĐỊNH LƯỢNG (QUANTITATIVE)])
    #v(1.5pt)
    #set text(size: 10.2pt)
    - *Bước 1 – Thu thập dữ liệu:* Điểm Rubric TDPB (6 nhóm $times$ 5 bài qua 2 giai đoạn) và Phiếu khảo sát Likert (18 SV sau mỗi giai đoạn).
    - *Bước 2 – Kiểm tra giả định:* Kiểm định tính chuẩn *Shapiro–Wilk* trên hiệu số điểm ghép cặp $arrow.r$ Lựa chọn kiểm định phi tham số.
    - *Bước 3 – Phân tích suy luận & Mô tả:*
      + Kiểm định hạng có dấu *Wilcoxon signed-rank* (tổng thể & từng bài).
      + So sánh trực tiếp 3 biến cảm nhận chung (KSE, CL, IM).
    - *Bước 4 – Rút ra xu hướng:* TDPB tăng đều ở các nhóm; KSE & IM tăng mạnh; CL biến thiên do nỗ lực kiểm chứng câu trả lời của AI.
  ],
  // Cột phải: Định tính
  sbox(stroke-c: c-purple, fill-c: rgb("#f5f3ff"), inset: 4.5pt)[
    #align(center, badge(c-purple)[DÒNG ĐỊNH TÍNH (QUALITATIVE)])
    #v(1.5pt)
    #set text(size: 10.2pt)
    - *Bước 1 – Thu thập dữ liệu:* Câu trả lời mở của 18 SV sau mỗi giai đoạn và biên bản đối thoại nhóm khi giải bài tập.
    - *Bước 2 – Phân tích chủ đề:* Áp dụng quy trình 6 bước của *Braun & Clarke (2006)* để đọc, mã hóa và gom nhóm chủ đề.
    - *Bước 3 – Xác định các chủ đề chính:*
      + Làm rõ và củng cố hiểu biết khái niệm động học.
      + Phát triển ý thức siêu nhận thức & cấu trúc hóa lập luận.
      + *Sử dụng có phê phán và kiểm chứng đầu ra của AI*.
    - *Bước 4 – Nhận diện rào cản AI:* Nhận diện lỗi toán và tính phụ thuộc prompt của AI $arrow.r$ Kích hoạt tư duy phản biện chủ động.
  ],
)

#d-arrow(label: "Đối chiếu kiểm chứng chéo hai nguồn dữ liệu (Triangulation)")

// Tầng 4: Tích hợp Ma trận hội tụ
#sbox(stroke-c: c-navy, fill-c: rgb("#f1f5f9"), inset: (x: 9pt, y: 3.5pt))[
  #align(center)[
    #text(weight: "bold", size: 10.8pt, fill: c-navy)[TÍCH HỢP MA TRẬN HỘI TỤ (CONVERGENCE MATRIX, BẢNG IV)]
    #h(8pt)
    #text(size: 10.2pt, fill: c-slate)[Định lượng xác định *chiều hướng & độ lớn* $arrow.r$ Định tính làm sáng tỏ *cơ chế nhận thức* $arrow.r$ Đánh giá: *Thống nhất / Một phần / Im lặng*]
  ]
]

#v(1pt)

// Tầng 5: Diễn giải & Hạn chế
#grid(
  columns: (1fr, 1fr), column-gutter: 6pt,
  sbox(stroke-c: c-green, fill-c: rgb("#f0fdf4"), inset: 3.5pt)[
    #text(weight: "bold", size: 10.5pt, fill: c-green.darken(15%))[Diễn giải thận trọng (Cautious Interpretation)] \
    #text(size: 9.8pt)[Khẳng định *mối liên hệ tích cực và tính khả thi sư phạm* của mô hình trong mẫu nghiên cứu, *không khẳng định quan hệ nhân quả*.]
  ],
  sbox(stroke-c: c-red.lighten(30%), fill-c: rgb("#fef2f2"), inset: 3.5pt, dashed: true)[
    #text(weight: "bold", size: 10.5pt, fill: c-red.darken(10%))[Hạn chế phương pháp luận] \
    #text(size: 9.8pt)[Thứ tự can thiệp cố định ($A_1 arrow.r A_2$), dùng lại bài tập, mẫu nhỏ ($n=18, N=6$), chấm đồng thuận nhóm nên không tính ICC.]
  ],
)

#v(1pt)
#align(center)[
  #set text(size: 8.8pt, fill: c-slate)
  #box(fill: rgb("#f0fdfa"), stroke: 0.6pt + c-teal, inset: (x: 4.5pt, y: 1.2pt), radius: 2pt)[#text(fill: c-teal.darken(15%), weight: "bold")[■ Nhánh Định lượng / Giảng viên dẫn dắt]]
  #h(7pt)
  #box(fill: rgb("#fffbeb"), stroke: 0.6pt + c-amber, inset: (x: 4.5pt, y: 1.2pt), radius: 2pt)[#text(fill: c-amber.darken(15%), weight: "bold")[■ Nhánh Có GAI hỗ trợ (Gemini)]]
  #h(7pt)
  #box(fill: rgb("#f5f3ff"), stroke: 0.6pt + c-purple, inset: (x: 4.5pt, y: 1.2pt), radius: 2pt)[#text(fill: c-purple.darken(15%), weight: "bold")[■ Nhánh Định tính (Phản tư & Chủ đề)]]
  #h(7pt)
  #box(fill: rgb("#f1f5f9"), stroke: 0.6pt + c-navy, inset: (x: 4.5pt, y: 1.2pt), radius: 2pt)[#text(fill: c-navy, weight: "bold")[■ Tích hợp Hỗn hợp & Dùng chung]]
]

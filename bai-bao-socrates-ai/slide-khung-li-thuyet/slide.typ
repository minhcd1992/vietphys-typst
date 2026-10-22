// Slide thuyết trình: Từ khung lí thuyết đến câu hỏi nghiên cứu
// Ảnh trong hinh/ được cắt từ ../bai-bao-goc-danh-dau.pdf bằng ../danh-dau-bai-bao.py
// Biên dịch (tại gốc dự án):
//   typst compile bai-bao-socrates-ai/slide-khung-li-thuyet/slide.typ bai-bao-socrates-ai/slide-khung-li-thuyet/slide-khung-li-thuyet-den-cau-hoi.pdf

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
#set text(font: "Segoe UI", size: 13pt, lang: "vi")
#set par(justify: false, leading: 0.5em, spacing: 0.7em)
#set list(spacing: 0.55em, indent: 2pt)
#set table(inset: 5pt, stroke: 0.5pt + luma(200))
#set page(
  paper: "presentation-16-9",
  margin: (x: 1.0cm, top: 0.75cm, bottom: 0.95cm),
  footer: context {
    let n = counter(page).get().first()
    if n > 1 {
      set text(8.5pt, fill: luma(130))
      [Từ khung lí thuyết đến câu hỏi nghiên cứu · Guerrero-Zambrano và cs. (2026), _Phys. Rev. Phys. Educ. Res._ 22, 020134]
      h(1fr)
      [#n]
    }
  },
)

#let slide(title, tag: "2.3", body) = {
  pagebreak(weak: true)
  grid(
    columns: (1fr, auto),
    align: (left + horizon, right + horizon),
    text(21pt, weight: "bold", fill: navy, title),
    if tag != none { box(fill: accent, inset: (x: 7pt, y: 3pt), radius: 3pt, text(10pt, weight: "bold", fill: white, tag)) },
  )
  v(-7pt)
  line(length: 100%, stroke: 1.5pt + navy)
  v(2pt)
  body
}

#let chip(c, t, size: 11pt) = box(
  fill: c.lighten(88%), stroke: 0.8pt + c, inset: (x: 5pt, y: 2.5pt), radius: 3pt,
  text(size, fill: c, weight: "bold", t),
)
#let card(c, title, body, fill: auto) = block(
  width: 100%, fill: if fill == auto { c.lighten(92%) } else { fill },
  stroke: (left: 4pt + c), inset: (x: 8pt, y: 6pt), radius: 3pt, spacing: 6pt,
)[#if title != none [#text(fill: c, weight: "bold", title) \ ]#body]
#let ul(c, t) = underline(stroke: 1.8pt + c, offset: 2.5pt, evade: false, t)
#let shot(path, width: 100%, cap: none) = figure(
  box(stroke: 0.6pt + luma(170), radius: 2pt, clip: true, image(path, width: width)),
  caption: if cap != none { text(9pt, fill: luma(110), cap) },
  gap: 3pt, supplement: none, numbering: none,
)
#let src(t) = text(9.5pt, fill: luma(110), t)
#let arr = text(fill: accent, size: 15pt, weight: "bold", sym.arrow.r)
#let darr = align(center, text(fill: accent, size: 13pt, weight: "bold", sym.arrow.b))
#let node(c, body) = block(width: 100%, fill: c.lighten(90%), stroke: 1pt + c, inset: 6pt, radius: 4pt, spacing: 3pt, align(center, body))

// ===================== 1. Trang bìa =====================
#page(margin: 0pt, footer: none)[
  #block(width: 100%, height: 100%, fill: navy, inset: (x: 1.6cm, y: 1.2cm))[
    #set text(fill: white)
    #text(11.5pt, fill: rgb("#f4c7c3"), weight: "bold", tracking: 0.5pt)[NỘI DUNG 2.2 – 2.3 · PHÂN TÍCH MỘT BÀI BÁO KHOA HỌC]
    #v(6pt)
    #text(34pt, weight: "bold")[Từ khung lí thuyết \ đến câu hỏi nghiên cứu]
    #v(2pt)
    #line(length: 28%, stroke: 3pt + accent)
    #v(8pt)
    #text(14pt)[Bài báo: _Effects of generative AI-mediated socratic dialogue on preservice physics teachers’ critical thinking in kinematics_]
    #v(2pt)
    #text(11pt, fill: luma(215))[M. Guerrero-Zambrano, B. Valarezo-Chamba, L. Sanchez-Alvarado, E. Lamilla-Rubio · _Physical Review Physics Education Research_ 22, 020134 (2026) · DOI: 10.1103/x7vq-17rq]
    #v(1fr)
    #set text(10.5pt)
    #let wchip(c, t) = box(fill: white, inset: (x: 6pt, y: 3pt), radius: 3pt, text(fill: c, weight: "bold", t))
    Kí hiệu đánh dấu trong bài gốc: #h(4pt)
    #wchip(c-kn)[KN Khái niệm công cụ] #wchip(c-lt)[LT Lí thuyết nền] #wchip(c-ml)[ML Mối liên hệ]
    #wchip(c-c)[C Câu hỏi NC] #wchip(c-g)[G Giả thuyết NC]
  ]
]

// ===================== 2. Mạch logic =====================
#slide([Vị trí của khung lí thuyết và câu hỏi trong mạch nghiên cứu], tag: "2.1 → 2.3")[
  #v(4pt)
  #let step(c, t, codes, strong: false) = block(
    width: 100%, height: 62pt, fill: if strong { c.lighten(85%) } else { luma(245) },
    stroke: (if strong { 1.8pt } else { 0.8pt }) + c, radius: 4pt, inset: 5pt,
    align(center + horizon)[#text(12pt, weight: "bold", fill: c, t) \ #text(9.5pt, fill: luma(90), codes)],
  )
  #grid(
    columns: (1fr, auto, 1fr, auto, 1fr, auto, 1.25fr, auto, 1fr, auto, 1fr),
    column-gutter: 3pt, align: horizon,
    step(c-d, [Sự kiện \ khoa học], [D1–D6]), arr,
    step(c-v, [Vấn đề \ nghiên cứu], [V1–V2]), arr,
    step(c-m, [Mục tiêu \ nghiên cứu], [M1–M4]), arr,
    step(c-kn, [Khung lí thuyết], [KN · LT · ML], strong: true), arr,
    step(c-c, [Câu hỏi \ nghiên cứu], [C, C1–C3], strong: true), arr,
    step(c-g, [Giả thuyết \ nghiên cứu], [G1–G5], strong: true),
  )
  #v(8pt)
  #grid(
    columns: (1fr, 1fr), column-gutter: 12pt,
    card(c-v, [Khoảng trống câu hỏi phải chạm tới (V2, tr. 2)])[
      Bằng chứng thực nghiệm về việc GAI hỗ trợ tư duy phản biện (TDPB) trong giáo dục Vật lí *còn hạn chế*, rõ nhất ở *động học một chiều* [7,8].
    ],
    card(c-m, [Mục tiêu nghiên cứu (M2, tr. 2)])[
      So sánh đối thoại Socrates *do GV dẫn dắt* với điều kiện tiếp theo có *cùng cấu trúc đối thoại được GAI hỗ trợ*.
    ],
  )
  #v(4pt)
  #card(navy, none, fill: luma(245))[
    *Khung lí thuyết (cơ sở lí luận):* hệ thống các yếu tố của luận cứ lí thuyết được sắp xếp trong mối liên hệ biện chứng #src[(Vũ Cao Đàm, 2018)]. \
    Gồm ba thành phần: #chip(c-kn)[Khái niệm công cụ] #chip(c-lt)[Lí thuyết nền] #chip(c-ml)[Mối liên hệ]
  ]
]

// ===================== 3. Ba thành phần =====================
#slide([Khung lí thuyết của bài báo: ba thành phần])[
  #set text(11.5pt)
  #table(
    columns: (128pt, 1fr, 92pt),
    align: (center + horizon, left + horizon, center + horizon),
    fill: (x, y) => if y == 0 { navy } else if x == 0 { (c-kn, c-lt, c-ml).at(y - 1) } else if calc.even(y) { luma(247) },
    table.header(
      text(fill: white, weight: "bold")[Thành phần],
      text(fill: white, weight: "bold")[Nội dung trong bài báo],
      text(fill: white, weight: "bold")[Đánh dấu],
    ),
    text(fill: white, weight: "bold", 13pt)[Khái niệm \ công cụ],
    [
      - *TDPB đặc thù môn học* – đo bằng rubric 5 tiêu chí
      - *Đối thoại Socrates do GV dẫn dắt* (cùng một trình tự hoạt động)
      - *GAI = giàn giáo nhận thức có giám sát*, không thay thế hiểu biết chuyên môn [13]
      - *KSE* (niềm tin năng lực động học), *CL* (tải nhận thức), *IM* (động cơ nội tại)
    ],
    [#chip(c-kn)[KN1–KN3] \ #src[tr. 2–3]],
    text(fill: white, weight: "bold", 13pt)[Lí thuyết nền],
    [
      - *Trung gian nhận thức:* GAI định hình cách người học tạo bằng chứng, biện minh, tự điều chỉnh; là *giàn giáo nhận thức* trong đối thoại Socrates
      - *Quyền chủ động nhận thức* phải ở người học, không chuyển cho công nghệ [9–12]
      - *Giải bài tập Vật lí là lập luận, diễn giải, kiến tạo ý nghĩa*, không phải thay số vào công thức
    ],
    [#chip(c-lt)[LT1–LT3] \ #src[tr. 2]],
    text(fill: white, weight: "bold", 13pt)[Mối liên hệ],
    [
      Đối thoại Socrates + GAI #sym.arrow.r gợi giải thích thay thế, đối chiếu khái niệm, tự sửa sai #sym.arrow.r mở rộng *suy luận và siêu nhận thức* #sym.arrow.r *TDPB*. \
      Hiện thực hóa bằng *mô hình SOCRATIC-IA*: giữ nguyên trình tự, chỉ đổi mức trung gian.
    ],
    [#chip(c-ml)[ML1–ML3] \ #src[tr. 2, 4, 11]],
  )
]

// ===================== 4. Lí thuyết nền =====================
#slide([Lí thuyết nền: GAI là trung gian và giàn giáo nhận thức])[
  #grid(
    columns: (1.12fr, 1fr), column-gutter: 12pt,
    shot("hinh/lt-nen.png", cap: [Đoạn LT1–LT2, trang 2 bài gốc]),
    [
      #set text(12pt)
      #card(c-lt, [LT1 – Quan điểm trung gian nhận thức])[
        GAI không chỉ là công cụ mà là *hình thức trung gian*: định hình cách người học tạo bằng chứng, biện minh suy luận, tự điều chỉnh. Trong đối thoại Socrates, GAI là *giàn giáo nhận thức*: gợi giải thích thay thế, phản ví dụ, nhiều cách giải.
      ]
      #card(c-lt, [LT2 – Nguyên tắc quyền chủ động nhận thức])[
        Cần thiết kế sư phạm để quyền chủ động nhận thức *ở lại với người học* [9]; giữ trách nhiệm, phán đoán, kiểm soát phản tư khi dùng AI [10–12].
      ]
      #card(accent, [Vai trò trong bài], fill: rgb("#fdf1f0"))[
        Lí thuyết nền #sym.arrow.r *căn cứ để dự đoán*: GAI hỗ trợ chứ không thay thế, nên được kì vọng *không làm giảm* kết quả (G1, G4).
      ]
    ],
  )
  #src[Ghi chú: LT1 là lập luận của tác giả, không kèm trích dẫn trực tiếp; LT2 dựa trên tài liệu [9–12]. LT3 (giải bài Vật lí là lập luận) xem ở slide Mối liên hệ.]
]

// ===================== 5. Khái niệm công cụ =====================
#slide([Khái niệm công cụ: định nghĩa rõ rồi chuyển thành biến đo được])[
  #grid(
    columns: (0.95fr, 1.05fr), column-gutter: 12pt,
    [
      #shot("hinh/kn-dinh-nghia.png", cap: [KN1 – định nghĩa GAI dùng thống nhất (tr. 2)])
      #v(2pt)
      #shot("hinh/kn-bien.png", cap: [KN2 – thao tác hóa thành biến độc lập, biến phụ thuộc (tr. 3)])
    ],
    [
      #set text(10.5pt)
      #table(
        columns: (0.9fr, 1.5fr, 1fr),
        fill: (x, y) => if y == 0 { c-kn } else if calc.even(y) { luma(247) },
        table.header(
          text(fill: white, weight: "bold")[Khái niệm],
          text(fill: white, weight: "bold")[Định nghĩa / thao tác hóa],
          text(fill: white, weight: "bold")[Biến, cách đo],
        ),
        [*GAI, hình thức trung gian Socrates*],
        [Giàn giáo nhận thức có giám sát (KN1). Cùng trình tự: giả thuyết cá nhân → thảo luận nhóm → câu hỏi Socrates → viết đồng thuận],
        [*Biến độc lập*: A1 (chỉ GV) / A2 (GV + GAI)],
        [*TDPB đặc thù môn học*],
        [Rubric 5 tiêu chí: hiểu vấn đề và nguyên lí; lập luận; phản ví dụ; nhận ra, sửa lỗi khái niệm; rõ ràng [16–19] (KN2)],
        [*Biến phụ thuộc*: điểm rubric, CVI = 1.00, đơn vị là nhóm],
        [*KSE, CL, IM*],
        [Khảo sát cảm nhận cuối mỗi giai đoạn (KN3); SI chỉ ở A1, PU-GAI, TE-AI, RI chỉ ở A2],
        [Thang Likert, cá nhân; chỉ so sánh cấu trúc chung],
      )
      #card(accent, none, fill: rgb("#fdf1f0"))[
        #set text(11.5pt)
        *Vai trò:* khái niệm công cụ #sym.arrow.r *xác định biến, đối tượng cần đo* trong câu hỏi nghiên cứu.
      ]
    ],
  )
]

// ===================== 6. Mối liên hệ =====================
#slide([Mối liên hệ: gắn khái niệm và lí thuyết thành một hệ thống])[
  #grid(
    columns: (1.1fr, 1fr), column-gutter: 14pt,
    [
      #shot("hinh/lt3-ml1.png", cap: [LT3 (lí thuyết nền) và ML1 (mối liên hệ), trang 2 bài gốc])
      #v(2pt)
      #card(c-ml, [ML2 – Hiện thực hóa bằng mô hình SOCRATIC-IA (tr. 4)])[
        #set text(11.5pt)
        Kích hoạt khái niệm → đối thoại Socrates do GV dẫn dắt → đối thoại có GAI. Giữ nguyên nội dung và trình tự, *chỉ thay đổi mức trung gian* #sym.arrow.r tạo ra phép so sánh A1/A2.
      ]
    ],
    [
      #set text(11.5pt)
      #node(c-lt)[*Lí thuyết nền:* giải bài Vật lí là lập luận (LT3); GAI là trung gian nhận thức (LT1)]
      #darr
      #node(c-kn)[*Đối thoại Socrates do GV dẫn dắt* + *GAI là giàn giáo có giám sát* (KN1)]
      #align(center, text(10pt, fill: luma(90))[#sym.arrow.b gợi giải thích thay thế, đối chiếu khái niệm, tự sửa sai])
      #node(c-ml)[Mở rộng hoạt động *suy luận* và *siêu nhận thức* (ML1)]
      #darr
      #node(c-kn)[*TDPB đặc thù môn học*, đo bằng rubric (KN2)]
      #v(3pt)
      #block(width: 100%, stroke: (dash: "dashed", paint: c-lt, thickness: 1pt), inset: 5pt, radius: 3pt)[
        #set text(10.5pt)
        *Điều kiện:* người học giữ quyền chủ động nhận thức; GV giám sát (LT2)
      ]
    ],
  )
]

// ===================== 7. Vai trò =====================
#slide([Vai trò của khung lí thuyết trong bài báo])[
  #v(2pt)
  #let role(t) = block(width: 100%, height: 50pt, fill: rgb("#5b7d3a"), radius: 4pt, inset: 6pt,
    align(center + horizon, text(12.5pt, fill: white, weight: "bold", t)))
  #let inbai(t) = block(width: 100%, height: 50pt, fill: luma(245), stroke: 0.8pt + luma(190), radius: 4pt, inset: 6pt,
    align(left + horizon, text(11.5pt, t)))
  #grid(
    columns: (200pt, 26pt, 1fr), row-gutter: 6pt, align: horizon,
    role[Cơ sở đầu tiên về lí thuyết], align(center, arr),
    inbai[#chip(c-kn, size: 10pt)[KN] Khái niệm công cụ → biến: *hình thức trung gian* (độc lập); *điểm TDPB, KSE, CL, IM* (phụ thuộc)],
    role[Căn cứ để dự đoán], align(center, arr),
    inbai[#chip(c-lt, size: 10pt)[LT] GAI là giàn giáo có giám sát → kì vọng có hướng: *không làm giảm, nếu thay đổi thì cải thiện* (G1, G4)],
    role[Nhận dạng nội dung \ cần xử lí tiếp], align(center, arr),
    inbai[#chip(c-v, size: 10pt)[V2] Khoảng trống: *thiếu bằng chứng* trong giáo dục Vật lí, *động học một chiều* → câu hỏi nghiên cứu],
    role[Bổ sung tri thức khoa học], align(center, arr),
    inbai[#chip(c-ml, size: 10pt)[ML] *Mô hình SOCRATIC-IA*: khung dạy học sơ bộ tích hợp đối thoại Socrates và GAI (kết luận, tr. 12)],
  )
  #v(6pt)
  #card(navy, none, fill: luma(245))[
    Giả thuyết phải *“phù hợp với khung lí thuyết tác giả sử dụng”*. Khung lí thuyết là *“cơ sở đầu tiên để chứng minh giả thuyết”*.
  ]
]

// ===================== 8. Mạch dẫn tới câu hỏi =====================
#slide([Từ khung lí thuyết đến câu hỏi: mỗi thành phần đóng góp gì?])[
  #set text(11.5pt)
  #let from(c, t) = block(width: 100%, height: 52pt, fill: c.lighten(88%), stroke: 1pt + c, radius: 4pt, inset: 6pt, align(left + horizon, t))
  #let to(c, t) = block(width: 100%, height: 52pt, fill: white, stroke: (left: 4pt + c, rest: 0.6pt + luma(190)), radius: 3pt, inset: 6pt, align(left + horizon, t))
  #grid(
    columns: (1fr, 24pt, 1.15fr), row-gutter: 6pt, align: horizon,
    text(10pt, weight: "bold", fill: luma(100))[NGUỒN TRONG KHUNG / VẤN ĐỀ], [], text(10pt, weight: "bold", fill: luma(100))[THÀNH PHẦN TƯƠNG ỨNG TRONG CÂU HỎI],
    from(c-kn)[*KN:* TDPB → rubric; hình thức trung gian → A1/A2], align(center, arr),
    to(p-pt)[#ul(p-pt)[Biến phụ thuộc]: “rubric-assessed critical-thinking performance” \ #ul(p-dl)[Biến độc lập]: đối thoại chỉ GV ↔ có GAI],
    from(c-ml)[*ML:* Socrates + GAI → suy luận, siêu nhận thức → TDPB], align(center, arr),
    to(p-ss)[#ul(p-ss)[Quan hệ / so sánh]: “what differences emerge … compared with”],
    from(c-v)[*V2:* thiếu bằng chứng trong giáo dục Vật lí, động học một chiều], align(center, arr),
    to(p-kt)[#ul(p-kt)[Khách thể]: “preservice physics teachers” · #ul(p-pv)[Phạm vi]: “one-dimensional kinematics problems” · câu trả lời *chưa biết trước*],
    from(c-c)[*Thiết kế:* hai điều kiện theo trình tự cố định (PV)], align(center, arr),
    to(c-c)[Giới hạn: hỏi *khác biệt trong mẫu*, không hỏi tác động nhân quả của GAI],
  )
]

// ===================== 9. Cấu trúc câu hỏi chính =====================
#slide([Câu hỏi nghiên cứu chính: phân tích cấu trúc])[
  #grid(
    columns: (1.2fr, 1fr), column-gutter: 12pt,
    shot("hinh/cau-hoi-chinh.png", cap: [Câu hỏi chính (C) và phạm vi câu hỏi (PV), trang 2 bài gốc]),
    [
      #set text(11pt)
      #set par(spacing: 0.75em)
      #ul(p-ss)[*So sánh / quan hệ*]: “what differences emerge … compared with” #sym.arrow.r câu hỏi so sánh hai điều kiện

      #ul(p-dl)[*Biến độc lập (2 mức)*]: “teacher-guided Socratic dialogue alone” ↔ “the same dialogue structure supported by GAI”

      #ul(p-pt)[*Biến phụ thuộc*]: “rubric-assessed critical-thinking performance and qualitative reasoning”

      #ul(p-kt)[*Khách thể*]: “preservice physics teachers”

      #ul(p-pv)[*Phạm vi*]: “solve one-dimensional kinematics problems”
    ],
  )
  #v(2pt)
  #card(c-c, [Phát biểu tiếng Việt], fill: rgb("#fff5f4"))[
    #set text(12pt)
    #set par(leading: 0.75em)
    Những #ul(p-ss)[khác biệt nào] xuất hiện trong #ul(p-pt)[kết quả TDPB (đánh giá bằng rubric) và lập luận định tính] khi #ul(p-kt)[sinh viên sư phạm Vật lí] #ul(p-pv)[giải các bài toán động học một chiều] thông qua #ul(p-dl)[đối thoại Socrates chỉ do GV dẫn dắt], #ul(p-ss)[so với] khi #ul(p-dl)[cùng cấu trúc đối thoại đó được GAI hỗ trợ]?
  ]
]

// ===================== 10. Năm điều kiện =====================
#slide([Câu hỏi chính có đạt 5 điều kiện của một câu hỏi nghiên cứu?])[
  #set text(10.5pt)
  #let ok = text(fill: c-m, weight: "bold")[Đạt]
  #table(
    columns: (20pt, 1.05fr, 1.75fr, 1.1fr),
    align: (center + horizon, left + horizon, left + horizon, left + horizon),
    fill: (x, y) => if y == 0 { rgb("#5b7d3a") } else if calc.even(y) { luma(247) },
    table.header(
      [], text(fill: white, weight: "bold")[Điều kiện],
      text(fill: white, weight: "bold")[Bằng chứng trong bài báo], text(fill: white, weight: "bold")[Nhận xét],
    ),
    [*1*], [Trả lời được bằng dữ liệu thu trong nghiên cứu],
    [Điểm rubric bài giải nhóm (6 nhóm × 5 bài × 2 điều kiện); khảo sát Likert; câu trả lời mở của 18 SV],
    [#ok],
    [*2*], [Dùng khái niệm trong khung, đã thành biến đo được],
    [TDPB → rubric 5 tiêu chí (CVI = 1.00); hình thức trung gian → A1/A2 (KN2)],
    [#ok; riêng “lập luận định tính” chưa có tiêu chí đo rõ như rubric],
    [*3*], [Chỉ rõ quan hệ / so sánh],
    [So sánh hai điều kiện trong cùng một nhóm: “what differences … compared with”],
    [#ok; chỉ là khác biệt trong mẫu (PV), không tách được tác động của GAI],
    [*4*], [Có khách thể, phạm vi đủ hẹp để làm được],
    [SV sư phạm Vật lí (18 SV, 6 nhóm, một trường ĐH công lập ở Ecuador); động học một chiều; 5 bài toán],
    [#ok],
    [*5*], [Câu trả lời chưa biết trước – chạm đúng khoảng trống],
    [V2: bằng chứng thực nghiệm trong giáo dục Vật lí còn hạn chế, đặc biệt ở động học một chiều],
    [#ok],
  )
]

// ===================== 11. Câu hỏi phụ =====================
#slide([Các câu hỏi phụ và phạm vi của câu hỏi])[
  #grid(
    columns: (1fr, 1.15fr), column-gutter: 12pt,
    [
      #shot("hinh/cau-hoi-phu.png", cap: [C1–C3, cuối cột trái trang 2 (C3 kết thúc ở đầu cột phải)])
      #v(2pt)
      #card(c-c, [Phạm vi câu hỏi (PV, tr. 2)])[
        #set text(11pt)
        Vì hai điều kiện thực hiện theo *trình tự cố định*, các câu hỏi chỉ hướng tới *khác biệt trong mẫu* và *sự hội tụ dữ liệu*, không hỏi tác động nhân quả độc lập của GAI.
      ]
    ],
    [
      #set text(10.5pt)
      #table(
        columns: (26pt, 1.5fr, 1fr, 0.75fr),
        align: (center + horizon, left + horizon, left + horizon, left + horizon),
        fill: (x, y) => if y == 0 { c-c } else if calc.even(y) { luma(247) },
        table.header(
          [], text(fill: white, weight: "bold")[Câu hỏi], text(fill: white, weight: "bold")[Khái niệm / dữ liệu],
          text(fill: white, weight: "bold")[Dạng],
        ),
        [*C1*], [Khác biệt về kết quả TDPB đặc thù môn học giữa hai điều kiện là gì?], [TDPB · điểm rubric nhóm], [So sánh],
        [*C2*], [KSE, CL, IM khác nhau thế nào giữa hai giai đoạn?], [KSE, CL, IM · khảo sát Likert], [So sánh],
        [*C3*], [Phản tư định tính hội tụ với hay làm rõ, giới hạn kết quả định lượng thế nào?], [Câu trả lời mở · ma trận hội tụ], [Mô tả, tích hợp],
      )
      #src[Câu hỏi chính bao trùm C1 (TDPB theo rubric) và phần định tính (C3). Tác giả gọi C2 là câu hỏi thứ cấp (secondary research questions, tr. 12).]
    ],
  )
]

// ===================== 12. Khung -> giả thuyết =====================
#slide([Từ khung lí thuyết đến giả thuyết nghiên cứu])[
  #grid(
    columns: (1.05fr, 1fr), column-gutter: 14pt,
    [
      #shot("hinh/gia-thuyet-khung.png", cap: [G4 (khung lí thuyết → kì vọng có hướng) và G5, trang 6 bài gốc])
      #v(2pt)
      #card(navy, none, fill: luma(245))[
        #set text(10.5pt)
        *Giả thuyết:* “kết luận giả định do nhà nghiên cứu đặt ra để theo dõi, xem xét, phân tích, kiểm chứng” #src[(Vũ Cao Đàm, 2018)] – là *câu trả lời tạm thời* cho câu hỏi NC, phải *kiểm chứng được*.
      ]
    ],
    [
      #set text(11.5pt)
      #node(c-lt)[*Lí thuyết nền* (LT1, LT2, KN1): GAI là giàn giáo nhận thức *có giám sát*, không thay thế người học]
      #darr
      #node(c-g)[*Kì vọng có hướng* (G4, tr. 6): GAI không gây thiệt hại; nếu có thay đổi thì *theo hướng cải thiện*]
      #darr
      #node(c-g)[*Giả thuyết Ha có định hướng* (G1, tr. 5): trung gian GAI không làm giảm kết quả, mà tăng hoặc không đổi]
      #darr
      #node(navy)[*Kiểm chứng:* Wilcoxon dấu-hạng *một phía*, hướng được khai báo trước khi xem dữ liệu]
    ],
  )
]

// ===================== 13. Ba dạng giả thuyết =====================
#slide([Ba dạng giả thuyết trong bài báo])[
  #grid(
    columns: (0.78fr, 1.22fr), column-gutter: 12pt,
    [
      #shot("hinh/gia-thuyet-p5.png", cap: [G1–G2: giả thuyết toàn cục, trang 5])
      #v(1pt)
      #shot("hinh/gia-thuyet-hai-phia.png", cap: [G3: giả thuyết hai phía theo từng bài, trang 6])
    ],
    [
      #set text(10.5pt)
      #table(
        columns: (0.95fr, 1.6fr, 1fr),
        align: (left + horizon, left + horizon, left + horizon),
        fill: (x, y) => if y == 0 { navy } else if x == 0 { (luma(110), luma(110), accent, accent).at(y - 1) } else if calc.even(y) { luma(247) },
        table.header(text(fill: white, weight: "bold")[Dạng], text(fill: white, weight: "bold")[Phát biểu trong bài], text(fill: white, weight: "bold")[Kết quả]),
        text(fill: white, weight: "bold")[Câu hỏi NC],
        [Điểm TDPB (rubric) của 6 nhóm khi có GAI (A2) có khác / cao hơn khi chỉ có GV (A1) không?], [],
        text(fill: white, weight: "bold")[H0: không có nghĩa],
        [Toàn cục *H0G*: Md(A2 − A1) ≤ 0 \ Từng bài *H0k*: Md(A2 − A1) = 0], [],
        text(fill: white, weight: "bold")[Ha: có nghĩa, có định hướng],
        [*H1G*: Md(A2 − A1) > 0 (một phía, G2) \ *H1k*: Md > 0 khi khung lí thuyết cho kì vọng có hướng (G5)],
        [Bác bỏ H0G: W = 0, p = 0.0312],
        text(fill: white, weight: "bold")[Ha: có nghĩa, không định hướng],
        [*H1k*: Md(A2 − A1) ≠ 0 (hai phía, từng bài, G3)],
        [Có ý nghĩa ở P1, P4 (p = 0.03125); P2, P3, P5 chưa đạt],
      )
      #card(c-g, none, fill: rgb("#fffbe6"))[
        #set text(11pt)
        *Cách kiểm chứng:* so sánh *cùng 6 nhóm* ở A1 và A2 · đo *điểm rubric TDPB* · kiểm định Wilcoxon dấu-hạng (α = 0.05).
      ]
    ],
  )
]

// ===================== 14. Nhận xét =====================
#slide([Nhận xét về mạch từ khung lí thuyết đến câu hỏi], tag: "Tổng kết")[
  #grid(
    columns: (1fr, 1fr), column-gutter: 12pt,
    card(c-m, [Điểm mạnh])[
      #set text(11.5pt)
      - Mạch logic rõ: khoảng trống (V2) → khung (KN, LT, ML) → câu hỏi so sánh → giả thuyết có hướng.
      - Khái niệm then chốt được định nghĩa thống nhất (GAI là giàn giáo có giám sát) và thao tác hóa thành biến (rubric, CVI = 1.00).
      - Tác giả tự nêu phạm vi câu hỏi (PV), tránh suy diễn nhân quả quá mức.
    ],
    card(accent, [Hạn chế cần lưu ý])[
      #set text(11.5pt)
      - Không có mục giả thuyết riêng ở phần mở đầu; giả thuyết chỉ xuất hiện dưới dạng *giả thuyết thống kê* ở mục kết quả.
      - Câu hỏi so sánh nhưng thiết kế tiền thực nghiệm, trình tự cố định, dùng lại cùng bài: chỉ trả lời được *khác biệt trong mẫu*.
      - “Lập luận định tính” chưa có tiêu chí đo rõ; LT1 ít dẫn nguồn.
    ],
  )
  #v(2pt)
  #card(c-g, [Gợi ý: phát biểu giả thuyết ngay sau câu hỏi (đề xuất của nhóm trình bày, không có trong bài)], fill: rgb("#fffbe6"))[
    #set text(11.5pt)
    *Ha (có định hướng):* Điểm TDPB (rubric) của sinh viên sư phạm Vật lí khi giải bài động học một chiều qua đối thoại Socrates *có GAI hỗ trợ cao hơn* khi chỉ có GV dẫn dắt. \
    *H0:* Không có khác biệt (hoặc thấp hơn) về điểm TDPB giữa hai điều kiện.
  ]
]

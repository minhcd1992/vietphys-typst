// Biên dịch: typst compile bai-bao-socrates-ai/main.typ bai-bao-socrates-ai/bai-bao-tieng-viet.pdf
#set document(
  title: "Ảnh hưởng của đối thoại Socrates có AI tạo sinh làm trung gian đối với tư duy phản biện của sinh viên sư phạm Vật lí trong động học",
  author: ("Marcos Guerrero-Zambrano", "Bryan Valarezo-Chamba", "Leonor Sanchez-Alvarado", "Erick Lamilla-Rubio"),
  keywords: ("Socrates", "AI tạo sinh", "tư duy phản biện", "động học", "bản dịch tiếng Việt"),
)
#let blue = rgb("193e5b")
#set page(
  paper: "a4",
  margin: (top: 19mm, bottom: 19mm, left: 22mm, right: 22mm),
  header: context if counter(page).get().first() > 1 {
    set text(size: 8pt, fill: rgb("65717a"))
    [ĐỐI THOẠI SOCRATES VÀ AI TẠO SINH #h(1fr) BẢN DỊCH TIẾNG VIỆT]
    v(2pt)
    line(length: 100%, stroke: 0.4pt + rgb("c4cdd4"))
  },
  footer: context {
    set text(size: 8pt, fill: rgb("65717a"))
    [Guerrero-Zambrano và cộng sự · PRPER 22, 020134 (2026) #h(1fr) #counter(page).display("1")]
  },
)
#set text(font: "Times New Roman", size: 11pt, lang: "vi")
#set par(justify: true, leading: 0.64em, spacing: 0.7em)
#set heading(numbering: none)
#show heading.where(level: 1): set text(size: 14pt, fill: blue)
#show heading.where(level: 2): set text(size: 12pt, fill: blue)
#show heading: set block(above: 1.2em, below: 0.65em)
#show link: set text(fill: blue)
#set figure(gap: 7pt)
#show figure.caption: set text(size: 9.4pt)
#set table(
  inset: 5pt,
  stroke: 0.4pt + rgb("bcc9d3"),
  fill: (x, y) => if y == 0 { rgb("e9eff4") } else if calc.rem(y, 2) == 0 { rgb("f7f9fb") },
)
#align(center)[
  #text(size: 9pt, fill: blue)[PHYSICAL REVIEW PHYSICS EDUCATION RESEARCH 22, 020134 (2026)]
  #v(9pt)
  #text(size: 20pt, weight: "bold", fill: blue)[Ảnh hưởng của đối thoại Socrates có AI tạo sinh làm trung gian đối với tư duy phản biện của sinh viên sư phạm Vật lí trong động học]
  #v(7pt)
  #text(size: 11pt)[Marcos Guerrero-Zambrano#super[1,\*], Bryan Valarezo-Chamba#super[1,†],\
  Leonor Sanchez-Alvarado#super[1,‡] và Erick Lamilla-Rubio#super[1,2,§]]
  #v(4pt)
  #text(size: 9pt)[
    #super[1] Khoa Giáo dục, Universidad Estatal de Milagro (UNEMI),\
    Cdla. Universitaria Km, 1.5 vía Km. 26, 091050, Milagro, Ecuador.\
    #super[2] Bộ môn Vật lí, Escuela Superior Politécnica del Litoral (ESPOL),\
    Campus Gustavo Galindo, Km 30.5, 090150, Guayaquil, Ecuador.
  ]
  #v(5pt)
  #text(size: 9pt)[Nhận bài: 12/02/2026 · Chấp nhận: 04/08/2026 · Công bố: 25/09/2026]\
  #text(size: 9pt)[DOI: #link("https://doi.org/10.1103/x7vq-17rq")[10.1103/x7vq-17rq]]
]

#block(fill: rgb("f2f5f8"), inset: 10pt, width: 100%)[
  #text(weight: "bold", fill: blue)[Tóm tắt]

  Trong đào tạo ban đầu cho giáo viên Vật lí, việc giải bài tập động học thường được tiếp cận như một hoạt động thực hiện quy trình, còn ít chú trọng đến suy luận khái niệm, lập luận và điều chỉnh siêu nhận thức. Nghiên cứu này xem xét ảnh hưởng của đối thoại Socrates có trí tuệ nhân tạo tạo sinh (GAI) làm trung gian, so với đối thoại Socrates chỉ do giảng viên hướng dẫn, đối với tư duy phản biện (CT) đặc thù môn học trong động học một chiều. Nghiên cứu sử dụng thiết kế tiền thực nghiệm trong cùng một nhóm, kết hợp đồng thời phương pháp định tính và định lượng, với 18 sinh viên sư phạm Vật lí làm việc theo nhóm nhỏ qua hai giai đoạn nối tiếp, sử dụng các bộ bài tập động học song song. Do các điều kiện dạy học được triển khai theo một thứ tự cố định, không thể tách biệt những khác biệt quan sát được khỏi các ảnh hưởng có thể có của luyện tập, học tập và sự chuyển tiếp ảnh hưởng từ giai đoạn trước. Ở giai đoạn thứ nhất, sinh viên tham gia đối thoại Socrates do giảng viên hướng dẫn; ở giai đoạn thứ hai, cấu trúc ấy được giữ nguyên, đồng thời bổ sung hỗ trợ đối thoại Socrates qua GAI dưới sự giám sát của giảng viên. Tư duy phản biện được đánh giá bằng bảng tiêu chí phân tích áp dụng cho bài giải viết của nhóm, kết hợp với khảo sát theo thang Likert và câu trả lời mở. Điểm theo bảng tiêu chí tăng nhất quán ở tất cả các nhóm trong giai đoạn có GAI làm trung gian, không ghi nhận trường hợp suy giảm. Sinh viên cũng cho biết niềm tin vào năng lực bản thân và động cơ nội tại cao hơn, trong khi tải nhận thức có những biến đổi không đồng nhất, gắn với nhu cầu kiểm chứng và kiểm soát quá trình nhận thức khi tương tác với GAI. Các kết quả này gợi ý rằng việc tích hợp AI tạo sinh vào khuôn khổ đối thoại Socrates do giảng viên điều phối có thể hỗ trợ tư duy phản biện trong động học; tuy nhiên, thiết kế tiền thực nghiệm theo trình tự đòi hỏi phải diễn giải thận trọng.
]

#text(size: 8.4pt)[
  *Liên hệ tác giả:* \* mguerreroz\@unemi.edu.ec; † bvalarezoc\@unemi.edu.ec; ‡ lsancheza4\@unemi.edu.ec; § ealamill\@espol.edu.ec, elamillar2\@unemi.edu.ec.

  *Thông tin bản dịch:* Dịch từ bài “Effects of generative AI-mediated socratic dialogue on preservice physics teachers’ critical thinking in kinematics”, do American Physical Society xuất bản theo giấy phép #link("https://creativecommons.org/licenses/by/4.0/")[Creative Commons Attribution 4.0 International (CC BY 4.0)]. Khi phân phối lại, phải giữ thông tin tác giả, nhan đề bài gốc, trích dẫn tạp chí và DOI. Bản tiếng Việt này là bản dịch; hình được cắt từ PDF gốc, bảng được dàn lại bằng tiếng Việt và giữ nguyên số liệu. Nhãn tiếng Anh trong hình và thông tin thư mục được giữ để đối chiếu.
]

#include "01-mo-dau.typ"
#include "02-phuong-phap.typ"
#include "03-ket-qua.typ"
#include "04-thao-luan-ket-luan.typ"
#include "05-tai-lieu-tham-khao.typ"

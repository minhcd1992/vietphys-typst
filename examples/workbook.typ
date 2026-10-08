// Minimal reusable workbook. Compile with --root at the repository directory.
#import "../vietphys.typ": *
#show: vp-workbook.with(
  title: "BÀI TẬP VẬT LÍ",
  page: (font-size: 13pt,),
  questions: (instruction-gap: 14pt, tf-inset: (x: 5pt, y: 7pt)),
)

#vp-book-outline(subtitle: [BÀI TẬP VẬT LÍ])
#vp-workbook-chapter(num: "I", title: "Động học")
#vp-chapter-outline(summary: [Chuyển động và các đại lượng đặc trưng.])

#vp-workbook-lesson(num: 1, title: "Quãng đường và độ dịch chuyển")
= Phần I. Trắc nghiệm khách quan
#vp-instructions(reset: true)[Chọn một phương án đúng.]
#vp-question([Vật đi được $10 "m"$ trong $2 "s"$. Tốc độ trung bình bằng bao nhiêu?],
  options: ([$2 "m/s"$], [$5 "m/s"$], [$10 "m/s"$], [$20 "m/s"$]),
  ans: "B", sol: [$v = s/t = 5 "m/s"$.])

= Phần II. Trắc nghiệm Đúng/Sai
#vp-instructions(reset: true)[Đánh dấu đúng hoặc sai cho từng phát biểu.]
#vp-question([Xét một vật chuyển động trên đường thẳng.], type: "tf",
  statements: ([Quãng đường không âm.], [Độ dịch chuyển có thể bằng không.],
    [Quãng đường luôn bằng độ lớn độ dịch chuyển.], [Vận tốc là đại lượng vectơ.]),
  ans-tf: ("Đ", "Đ", "S", "Đ"))

= Phần III. Trắc nghiệm trả lời ngắn
#vp-instructions(reset: true)[Ghi kết quả bằng mét vào ô trả lời.]
#vp-question([Vật đi thẳng đều với tốc độ $5 "m/s"$ trong $4 "s"$. Tính quãng đường.],
  type: "short", ans: "20")

= Phần IV. Tự luận
#vp-instructions(reset: true)[Trình bày lập luận, công thức và kết luận.]
#vp-question([Một người đi thẳng $30 "m"$ rồi quay lại $10 "m"$.
  Tính quãng đường và độ lớn độ dịch chuyển.], type: "essay", lines: 5,
  sol: [$s = 40 "m"$; $abs(d) = 20 "m"$.])

// Optional local override; the enclosing layout resumes after this block.
#vp-exercise-layout(line-spacing: 2em, lines-above: 20pt)[
  #vp-question([Giải thích khi nào quãng đường bằng độ lớn độ dịch chuyển.],
    type: "essay", lines: 3)
]

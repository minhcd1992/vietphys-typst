// Bộ sách chỉ giữ giá trị tùy chỉnh; phần dàn trang nằm trong gói vietphys.
#import "../vietphys.typ": *

#let sbt-question-gap = 6pt
#let sbt-stem-gap = 7pt
#let sbt-header-gap = 23pt
#let sbt-writing-line-gap = 1.8em
#let sbt-writing-top-gap = 16pt
#let sbt-instruction-gap = 14pt
#let sbt-tf-row-padding = 7pt
#let sbt-title-font = "Rounded Mplus 1c"

// Giữ tên quen thuộc trong 27 tệp bài; không bọc lại vp-question.
#let sbt-instructions = vp-instructions
#let sbt-essay-instructions = vp-instructions
#let sbt-chuong = vp-workbook-chapter.with(font: sbt-title-font)
#let sbt-bai = vp-workbook-lesson.with(font: sbt-title-font)
#let sbt-noi-dung-chuong = vp-chapter-outline.with(
  title-font: sbt-title-font,
  summary: [Mỗi bài gồm 20 câu trắc nghiệm khách quan, 5 câu đúng/sai,
    5 câu trả lời ngắn và 5 câu tự luận.],
)

#let sbt-header = vp-manual-header-fancy(
  title: "BÀI TẬP VẬT LÍ 10", subtitle: "LUYỆN TẬP THEO CHỦ ĐỀ",
  icon: "atom", compact: true,
  title-size: 12pt, subtitle-size: 8pt, chapter-size: 10pt,
  icon-size: 18pt, title-gap: 4pt, bottom-padding: 4pt,
)
#let sbt-footer = vp-footer-shuriken(
  title: "Học Kage", slogan: "Level up your knowledge", compact: true,
  title-size: 12pt, slogan-size: 10pt, page-size: 9pt, badge-size: 27pt,
)

#let sbt-layout(body) = {
  set document(author: "Vietphys")
  vp-workbook(
    title: "BÀI TẬP VẬT LÍ 10",
    header: sbt-header, footer: sbt-footer,
    page: (
      font: "Times New Roman", font-size: 14pt,
      margin: (x: 2cm, top: 2cm, bottom: 1.6cm),
      header-ascent: sbt-header-gap, footer-descent: 6pt, leading: 0.55em,
    ),
    questions: (
      q-spacing: sbt-question-gap, stem-spacing: sbt-stem-gap,
      line-spacing: sbt-writing-line-gap, lines-above: sbt-writing-top-gap,
      instruction-gap: sbt-instruction-gap,
      tf-inset: (x: 5pt, y: sbt-tf-row-padding),
    ),
    body,
  )
}


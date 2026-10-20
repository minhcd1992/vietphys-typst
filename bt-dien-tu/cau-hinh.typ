// Chỉ chứa tùy chọn cho API có sẵn của Vietphys; không bọc lại môi trường bài tập.
#import "../vietphys.typ": *

#let co-loi-giai = sys.inputs.at("loi-giai", default: "co") != "khong"
#let dien-tu-page = (
  font: "Times New Roman", font-size: 11pt,
  margin: (x: 19mm, top: 22mm, bottom: 20mm),
  leading: 0.5em, header-ascent: 8pt, footer-descent: 8pt,
  theme-preset: "ocean", hierarchy: "standalone",
  heading-theme: vp-heading-theme-native.with(paragraph-indent: 0pt, numbering: none),
)
#let dien-tu-questions = (
  show-solutions: co-loi-giai, show-answers: false,
  show-sources: false, show-levels: false,
  q-spacing: 12pt, stem-spacing: 6pt,
)
#let dien-tu-header = vp-header(
  center-text: "BÀI TẬP ĐIỆN TỪ",
  right-text: if co-loi-giai { "Đề và lời giải" } else { "Đề bài" },
  color: rgb("52636b"), line-width: 0.4pt,
)
#let dien-tu-footer = vp-footer(
  center-text: context counter(page).display("1"),
  color: rgb("52636b"), line-width: 0.4pt,
)

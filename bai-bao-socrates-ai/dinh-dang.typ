#let bang(so, caption, body) = figure(
  body, kind: table, supplement: [Bảng], numbering: (n) => so,
  caption: caption,
)
#let hinh(so, file, caption, width: 100%) = figure(
  image(file, width: width), supplement: [Hình], numbering: (n) => str(so), caption: caption,
)

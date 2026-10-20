#import "@preview/cetz:0.3.3": canvas, draw

#let blue = rgb("1976d2")
#let orange = rgb("b45309")
#let guide = (paint: luma(60%), thickness: 0.6pt, dash: "dashed")

#let arrow(start, end, label, anchor: "south", color: blue) = {
  draw.line(start, end, stroke: 1pt + color, mark: (end: ">"))
  draw.content(end, label, anchor: anchor)
}

#let force-plot(end-position, force-start, force-end, force-max, shade: false) = {
  let plot-width = 4
  let plot-height = 2.5
  let first-height = plot-height * force-start / force-max
  let last-height = plot-height * force-end / force-max
  if shade {
    draw.line((0, 0), (0, first-height), (plot-width, last-height), (plot-width, 0),
      close: true, fill: blue.lighten(88%), stroke: none)
  }
  arrow((0, 0), (4.5, 0), [$x$ (m)], anchor: "west", color: black)
  arrow((0, 0), (0, 3), [$F_x$ (N)], color: black)
  draw.content((-0.15, -0.15), [O])
  draw.line((0, first-height), (plot-width, last-height), stroke: 1.3pt + blue)
  if force-start != 0 {
    draw.content((-0.15, first-height), [#force-start], anchor: "east")
  }
  if force-end != 0 {
    draw.line((0, last-height), (plot-width, last-height), stroke: guide)
    draw.line((plot-width, 0), (plot-width, last-height), stroke: guide)
    draw.content((-0.15, last-height), [#force-end], anchor: "east")
  }
  draw.content((plot-width, -0.2), [#end-position], anchor: "north")
}

#let bai-17-hinh(id) = {
  set text(font: "Times New Roman", size: 10pt)
  canvas({
    import draw: *
    if id == "fx-mcq" {
      force-plot(4, 10, 30, 30)
    } else if id == "fx-short" {
      force-plot(5, 10, 20, 20, shade: true)
    } else if id == "fx-essay" {
      force-plot(5, 20, 0, 20, shade: true)
    } else if id == "keo-xa-lan" {
      rect((-1.4, -0.4), (0, 0.4), fill: luma(95%), stroke: 0.8pt)
      content((-0.7, 0), [Xà lan])
      line((0, 0), (2.8, 0), stroke: guide)
      arrow((0, 0), (2.3, 2.3 * calc.tan(30deg)), [$bold(F)_1$], anchor: "west")
      arrow((0, 0), (2.3, -2.3 * calc.tan(30deg)), [$bold(F)_2$], anchor: "west")
      content((1.05, 0.28), [30°])
      content((1.05, -0.28), [30°])
      line((-0.3, -1.9), (2.3, -1.9), stroke: 1pt, mark: (end: ">"))
      content((1, -2.15), [Chiều chuyển động], anchor: "north")
      content((0.6, 1.95), [Hình nhìn từ trên xuống])
    } else if id == "doc-ngang" {
      line((0, 2), (3.464, 0), (6.8, 0), stroke: 1pt)
      line((0, 0), (3.464, 0), stroke: guide)
      line((0, 0), (0, 2), stroke: guide)
      circle((0, 2), radius: 0.04, fill: black)
      content((-0.15, 2.2), [A])
      content((3.464, -0.22), [B])
      content((6.6, -0.22), [C])
      content((1.45, 1.48), [$L=8$ m])
      content((1.6, 0.6), [$mu_1$])
      content((5.2, 0.3), [$mu_2$])
      content((2.65, 0.2), [30°])
      content((3.3, -0.8), [Hình sơ đồ; cung nối rất ngắn ở B được lược giản.])
    } else if id == "thi-nghiem" {
      line((-0.8, 0), (6.4, 0), stroke: 0.9pt)
      rect((0, 0), (1.1, 0.7), fill: luma(94%), stroke: 0.8pt)
      content((0.55, 0.35), [Gỗ])
      line((1.1, 0.35), (2, 0.35), stroke: 0.7pt)
      rect((2, 0.12), (3.8, 0.58), stroke: 0.8pt)
      for i in range(7) {
        line((2.2 + i * 0.22, 0.18), (2.2 + i * 0.22, 0.4), stroke: 0.5pt)
      }
      content((2.9, 0.86), [Lực kế])
      arrow((3.8, 0.35), (5.6, 0.35), [$bold(F)$], anchor: "west")
      line((0, -0.65), (5.4, -0.65), stroke: 0.8pt)
      for i in range(19) {
        line((i * 0.3, -0.65), (i * 0.3, -0.8), stroke: 0.5pt)
      }
      content((2.7, -1.05), [Thước đo quãng đường $s$])
      content((2.7, 1.4), [Dây kéo nằm ngang; đọc lực khi vật trượt đều.])
    } else if id == "nang-ba-doan" {
      // Lực cáp theo độ cao: diện tích biểu diễn công trong từng giai đoạn.
      let to-y = value => value / 10
      for (left-x, right-x, force-value) in ((0, 1, 22), (1, 4, 19.6), (4, 5, 17.2)) {
        rect((left-x, 0), (right-x, to-y(force-value)), fill: blue.lighten(90%), stroke: none)
        line((left-x, to-y(force-value)), (right-x, to-y(force-value)), stroke: 1.3pt + blue)
      }
      arrow((0, 0), (5.6, 0), [$h$ (m)], anchor: "west", color: black)
      arrow((0, 0), (0, 2.9), [$F$ (kN)], color: black)
      content((-0.15, -0.15), [O])
      for (xx, value) in ((1, 3), (4, 12), (5, 15)) {
        line((xx, 0), (xx, 2.3), stroke: guide)
        content((xx, -0.2), [#value], anchor: "north")
      }
      content((-0.15, 2.2), [22], anchor: "east")
      content((2.5, 2.12), [19,6])
      content((4.5, 1.9), [17,2])
    } else {
      panic("Chưa có hình Bài 17: " + id)
    }
  })
}

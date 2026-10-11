#import "@preview/cetz:0.3.3": canvas, draw

#let blue = rgb("1976d2")
#let orange = rgb("b45309")
#let green = rgb("388e3c")
#let guide = (paint: luma(60%), thickness: 0.6pt, dash: "dashed")

#let arrow(start, end, label, anchor: "south", color: blue) = {
  draw.line(start, end, stroke: 1pt + color, mark: (end: ">"))
  draw.content(end, label, anchor: anchor)
}

#let bai-16-hinh(id) = {
  set text(font: "Times New Roman", size: 10pt)
  canvas({
    import draw: *
    if ("do-thi-a", "do-thi-b", "do-thi-c", "do-thi-d").contains(id) {
      arrow((0, 0), (3.7, 0), [$alpha$], anchor: "west", color: black)
      arrow((0, -1.5), (0, 1.6), [$frac(M, F L)$], color: black)
      content((-0.12, -0.15), [O], anchor: "east")
      for (xx, label) in ((1.6, [90°]), (3.2, [180°])) {
        line((xx, -0.05), (xx, 0.05), stroke: 0.6pt)
        content((xx, -0.13), label, anchor: "north")
      }
      content((-0.12, 1.2), [1], anchor: "east")
      content((-0.12, -1.2), [−1], anchor: "east")
      let points = range(61).map(i => {
        let u = i / 60
        let yy = if id == "do-thi-a" { u }
          else if id == "do-thi-b" { calc.sin(180deg * u) }
          else if id == "do-thi-c" { calc.cos(180deg * u) }
          else { 4 * (u - 0.5) * (u - 0.5) }
        (3.2 * u, 1.2 * yy)
      })
      line(..points, stroke: 1.2pt + blue)
    } else if id == "dia-khoet" {
      line(..range(73).map(i => (1.3 * calc.cos(i * 5deg), 1.3 * calc.sin(i * 5deg))),
        close: true, fill: luma(93%), stroke: 0.8pt)
      line(..range(73).map(i => (0.65 + 0.65 * calc.cos(i * 5deg), 0.65 * calc.sin(i * 5deg))),
        close: true, fill: white, stroke: 0.8pt)
      line((0, 0), (0, 1.3), stroke: guide)
      content((-0.12, 0.7), [$R$], anchor: "east")
      line((0, 0), (0.65, 0), stroke: guide)
      content((0, -1.65), [$O C = R/2$])
      circle((0, 0), radius: 0.03, fill: black)
      circle((0.65, 0), radius: 0.03, fill: black)
      content((-0.12, -0.12), [O], anchor: "east")
      content((0.72, 0.2), [C])
      content((2.25, 0), [Phần khoét])
      line((1, 0.3), (1.8, 0.12), stroke: 0.6pt)
    } else if id == "vuot-bac" {
      let corner-x = calc.sqrt(1.5 * 1.5 - 1 * 1)
      line((-1.8, 0), (corner-x, 0), (corner-x, 0.5), (3.1, 0.5), stroke: 1pt)
      line(..range(73).map(i => (1.5 * calc.cos(i * 5deg), 1.5 + 1.5 * calc.sin(i * 5deg))),
        close: true, stroke: 0.8pt)
      circle((0, 1.5), radius: 0.035, fill: black)
      content((-0.15, 1.7), [O])
      line((0, 1.5), (corner-x, 0.5), stroke: guide)
      content((0.6, 0.75), [$R$])
      content((corner-x + 0.15, 0.35), [C])
      arrow((0, 1.5), (2.3, 1.5), [$bold(F)$], anchor: "west")
      line((2.8, 0), (2.8, 0.5), stroke: 0.6pt)
      line((2.65, 0), (2.95, 0), stroke: 0.6pt)
      content((3, 0.25), [$h$], anchor: "west")
    } else if id == "dam-luc" {
      line((0, 0), (6, 0), stroke: 2pt)
      arrow((0, 0), (0, 1.25), [$bold(N)_A$], color: green)
      arrow((6, 0), (6, 1.25), [$bold(N)_B$], color: green)
      arrow((2, 0), (2, -1.15), [$bold(P)_("xe")$], anchor: "north-east", color: orange)
      arrow((3, 0), (3, -1.15), [$bold(P)_D$], anchor: "north-west", color: orange)
      content((-0.15, -0.25), [A])
      content((6.15, -0.25), [B])
      line((0, 0.7), (2, 0.7), stroke: guide)
      content((1, 0.88), [$d$])
      content((3, -1.9), [Sơ đồ lực lên dầm; vectơ không theo tỉ lệ.])
    } else if id == "thang-luc" {
      let end-x = 1.7
      let end-y = end-x * calc.tan(60deg)
      line((-0.7, 0), (2.2, 0), stroke: 0.8pt)
      line((end-x, 0), (end-x, end-y + 0.6), stroke: 0.8pt)
      line((0, 0), (end-x, end-y), stroke: 2pt)
      content((-0.15, -0.23), [A])
      content((end-x + 0.2, end-y), [B])
      arrow((0, 0), (0, 1.15), [$bold(N)_A$], color: green)
      arrow((0, 0), (1.2, 0), [$bold(f)$], anchor: "north")
      arrow((end-x, end-y), (end-x - 1.25, end-y), [$bold(N)_B$], anchor: "east", color: green)
      arrow((end-x/2, end-y/2), (end-x/2, end-y/2 - 0.7), [$bold(P)_t$], anchor: "north-east", color: orange)
      arrow((end-x * 0.8, end-y * 0.8), (end-x * 0.8, end-y * 0.8 - 1.25), [$bold(P)_p$], anchor: "north-west", color: orange)
      content((0.6, 0.24), [$alpha$])
      content((0.8, -0.8), [Vị trí tải cách A một đoạn $x$ dọc thang.])
    } else if id == "can-cau" {
      line((-1.5, 0), (4.5, 0), stroke: 1.5pt)
      line((-0.18, -0.4), (0, 0), (0.18, -0.4), close: true, stroke: 0.8pt)
      line((-1.5, 0), (-1.5, -0.5), stroke: 0.8pt)
      rect((-1.8, -1), (-1.2, -0.5), fill: luma(90%))
      content((-1.5, -0.75), [$M_1$])
      line((4.5, 0), (4.5, -0.5), stroke: 0.8pt)
      rect((4.2, -1), (4.8, -0.5), fill: luma(95%))
      content((4.5, -0.75), [$M_2$])
      content((-1.5, 0.25), [A])
      content((0, 0.25), [O])
      content((4.5, 0.25), [B])
      content((-0.75, 0.7), [6 m])
      content((2.25, 0.7), [18 m])
      content((1.5, -1.5), [Mô hình nhìn trong mặt phẳng thẳng đứng.])
    } else if id == "xe-luc" {
      rect((-1.4, 0.25), (1.4, 2.2), fill: luma(96%), stroke: 0.8pt)
      line((-2, 0), (2, 0), stroke: 0.8pt)
      circle((-1.1, 0.15), radius: 0.15, fill: luma(75%))
      circle((1.1, 0.15), radius: 0.15, fill: luma(75%))
      circle((0, 1.7), radius: 0.045, fill: black)
      content((-0.16, 1.88), [G])
      arrow((0, 1.7), (0, 0.55), [$bold(P)$], anchor: "west", color: orange)
      arrow((0, 1.7), (2.25, 1.7), [$bold(F)_("qt")$], anchor: "west")
      arrow((-1.1, 0), (-1.1, 1.1), [$bold(N)_1$], color: green)
      arrow((1.1, 0), (1.1, 1.3), [$bold(N)_2$], color: green)
      arrow((-1.1, 0), (-2.2, 0), [$bold(f)_1$], anchor: "east")
      arrow((1.1, 0), (0.2, 0), [$bold(f)_2$], anchor: "north")
      content((-1.1, -0.65), [Phía trong])
      content((1.1, -0.65), [Phía ngoài])
      content((0, 2.8), [Hệ quy chiếu cùng quay với xe])
      content((0, -1.15), [Vectơ chỉ minh họa hướng.])
    } else {
      panic("Chưa có hình Bài 16: " + id)
    }
  })
}

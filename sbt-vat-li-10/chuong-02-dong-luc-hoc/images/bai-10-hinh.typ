#import "@preview/cetz:0.3.3": canvas, draw

#let blue = rgb("1976d2")
#let orange = rgb("b45309")
#let dash = (paint: luma(55%), thickness: 0.6pt, dash: "dashed")

#let arrow(a, b, label: none, at: none, anchor: "south", color: blue) = {
  draw.line(a, b, stroke: 1.1pt + color, mark: (end: ">"))
  if label != none { draw.content(if at == none { b } else { at }, label, anchor: anchor) }
}

#let bai-10-hinh(id) = {
  set text(font: "Times New Roman", size: 10pt)
  canvas({
    import draw: *
    if id == "mcq-13-do-thi" {
      let w = 4.5
      let plot-height = 2.5
      arrow((0, 0), (w, 0), label: [$t$ (s)], anchor: "west", color: black)
      arrow((0, 0), (0, plot-height), label: [$v$ (m/s)], color: black)
      content((-0.15, -0.15), [O])

      let p(t, v) = (w * t / 11, plot-height * v / 9)
      line(p(0, 0), p(4, 8), p(10, 0), stroke: 1.2pt + blue)

      line(p(4, 0), p(4, 8), p(0, 8), stroke: dash)
      content((p(4, 0).at(0), -0.25), [4])
      content((p(10, 0).at(0), -0.25), [10])
      content((-0.2, p(0, 8).at(1)), [8], anchor: "east")
    } else if id == "tf-04-do-thi" {
      let w = 4.5
      let plot-height = 2.0
      arrow((0, 0), (w, 0), label: [$t$ (s)], anchor: "west", color: black)
      arrow((0, 0), (0, plot-height), label: [$v$ (m/s)], color: black)
      content((-0.15, -0.15), [O])

      let p(t, v) = (w * t / 9, plot-height * v / 7)
      line(p(0, 0), p(2, 6), p(6, 6), p(8, 0), stroke: 1.2pt + blue)

      line(p(2, 0), p(2, 6), p(0, 6), stroke: dash)
      line(p(6, 0), p(6, 6), stroke: dash)

      content((p(2, 0).at(0), -0.25), [2])
      content((p(6, 0).at(0), -0.25), [6])
      content((p(8, 0).at(0), -0.25), [8])
      content((-0.2, p(0, 6).at(1)), [6], anchor: "east")
    } else if id == "essay-02-atwood" {
      line((-0.8, 1.8), (0.8, 1.8), stroke: 1pt)
      for i in range(-7, 8) {
        line((i * 0.1, 1.8), (i * 0.1 + 0.1, 1.9), stroke: 0.5pt)
      }
      line((0, 1.8), (0, 1), stroke: 1pt)
      circle((0, 0.7), radius: 0.3, fill: luma(95%), stroke: 0.8pt)
      circle((0, 0.7), radius: 0.05, fill: black, stroke: none)

      line((-0.3, 0.7), (-0.3, -0.6), stroke: 1pt + blue)
      line((0.3, 0.7), (0.3, -1.2), stroke: 1pt + blue)

      rect((-0.5, -0.6), (-0.1, -1.1), fill: luma(90%), stroke: 0.8pt)
      rect((0.1, -1.2), (0.6, -1.9), fill: luma(90%), stroke: 0.8pt)

      content((-0.3, -0.85), [$m_1$])
      content((0.35, -1.55), [$m_2$])
    } else if id == "essay-03-doc" {
      let slope-angle = 30deg
      let w = 3.0
      let height = w * calc.tan(slope-angle)

      line((-0.5, 0), (5.5, 0), stroke: 1pt + luma(40%))
      line((0, height), (w, 0), stroke: 1pt + blue)
      line((0, height), (0, 0), stroke: dash)

      let point(s, n) = (0.4 + s * calc.cos(slope-angle) + n * calc.sin(slope-angle),
        (w - 0.4) * calc.tan(slope-angle) - s * calc.sin(slope-angle) + n * calc.cos(slope-angle))
      line(point(0,0), point(0.65,0), point(0.65,0.45), point(0,0.45), close: true, fill: luma(90%), stroke: 0.8pt)
      content(point(0.325,0.225), [$m$])

      let p(r, ang) = (w + r * calc.cos(ang), r * calc.sin(ang))
      line(..range(21).map(i => p(0.6, 180deg - slope-angle * i / 20)), stroke: 0.6pt)
      content((w - 0.9, 0.25), [$alpha$])
      content((-0.2, height / 2), [$h$], anchor: "east")
      content((4.2, -0.3), [Mặt ngang])
      content((1.2, height / 2 + 0.3), [Mặt nghiêng], anchor: "south-west", angle: -30deg)
    } else {
      panic("Chưa có hình Bài 10: " + id)
    }
  })
}

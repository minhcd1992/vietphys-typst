#import "@preview/cetz:0.3.3": canvas, draw

#let blue = rgb("1976d2")
#let orange = rgb("b45309")
#let dash = (paint: luma(55%), thickness: 0.6pt, dash: "dashed")

#let arrow(a, b, label: none, at: none, anchor: "south", color: blue) = {
  draw.line(a, b, stroke: 1.1pt + color, mark: (end: ">"))
  if label != none { draw.content(if at == none { b } else { at }, label, anchor: anchor) }
}

#let plot(points, w: 3.5, h: 1.8, xlabel: [$t$], ylabel: [$d$]) = {
  arrow((0, 0), (w + 0.2, 0), label: xlabel, anchor: "west", color: black)
  arrow((0, 0), (0, h + 0.25), label: ylabel, color: black)
  draw.content((-0.15, -0.15), [O])
  draw.line(..points.map(p => (w * p.at(0), h * p.at(1))), stroke: 1.1pt + blue)
}

#let bai-14-hinh(id) = {
  set text(font: "Times New Roman", size: 10pt)
  canvas({
    import draw: *
    if id == "chon-vt" or id == "chon-at" {
      for k in range(4) {
        let origin-x = k * 3.6
        arrow((origin-x, 0), (origin-x + 2.8, 0), color: black)
        arrow((origin-x, 0), (origin-x, 2.3), color: black)
        content((origin-x + 2.8, -0.08), [$t$], anchor: "north")
        content((origin-x - 0.1, 2.2), if id == "chon-vt" { [$v$] } else { [$a$] }, anchor: "east")
        content((origin-x - 0.08, -0.1), [O], anchor: "north-east")
        content((origin-x + 1.3, -0.5), strong(("A", "B", "C", "D").at(k)))
        if id == "chon-vt" {
          if k == 0 { line((origin-x, 0), (origin-x + 2.5, 1.8), stroke: 1pt + blue) }
          else if k == 1 {
            line(..range(51).map(j => (origin-x + 2.5 * j / 50, 1.8 * (1 - calc.exp(-4 * j / 50)))), stroke: 1pt + blue)
            line((origin-x, 1.8), (origin-x + 2.6, 1.8), stroke: dash)
          } else if k == 2 {
            line(..range(51).map(j => (origin-x + 2.5 * j / 50, 1.8 * calc.pow(j / 50, 2))), stroke: 1pt + blue)
          } else { line((origin-x, 1.8), (origin-x + 2.5, 1.8), stroke: 1pt + blue) }
        } else {
          content((origin-x - 0.1, 1.8), [$g$], anchor: "east")
          if k == 0 { line((origin-x, 1.8), (origin-x + 2.5, 1.8), stroke: 1pt + blue) }
          else if k == 1 {
            line(..range(51).map(j => (origin-x + 2.5 * j / 50, 1.8 * calc.exp(-4 * j / 50))), stroke: 1pt + blue)
          } else if k == 2 { line((origin-x, 0), (origin-x + 2.5, 1.8), stroke: 1pt + blue) }
          else {
            line(..range(73).map(j => (origin-x + 1.3 + 0.7 * calc.cos(j * 5deg), 1 + 0.7 * calc.sin(j * 5deg))), stroke: 1pt + blue)
          }
        }
      }
    } else if id == "do-thi-vt" {
      let pts = range(51).map(j => (j / 50, 1 - calc.exp(-4 * j / 50)))
      plot(pts, xlabel: [$t$], ylabel: [$v$])
      line((0, 1.8), (3.6, 1.8), stroke: dash)
      content((-0.2, 1.8), [$v_"th"$], anchor: "east")
    } else if id == "do-thi-at" {
      let pts = range(51).map(j => (j / 50, calc.exp(-4 * j / 50)))
      plot(pts, xlabel: [$t$], ylabel: [$a$])
      content((-0.15, 1.8), [$g$], anchor: "east")
    } else if id == "luc-du" {
      circle((0, 0), radius: 0.1, fill: black, stroke: none)
      arrow((0, 0), (0, 2.5), label: [$bold(F)_c$])
      arrow((0, 0), (0, -0.6), label: [$bold(P)$], anchor: "north", color: orange)
      content((0.5, 0), [Dù vừa xòe], anchor: "west")
      content((0, -1.2), [Độ dài vectơ chỉ minh họa chiều lực])
    } else if id == "luc-cua" {
      line((-2.2, 0), (2.2, 0), stroke: 1pt)
      rect((-0.7, 0), (0.7, 0.6), fill: luma(95%))
      content((0, 0.3), [Xe])
      arrow((0, 0.6), (0, 2), label: [$bold(N)$])
      arrow((-0.4, 0.3), (-0.4, -1), label: [$m bold(g)$], anchor: "north", color: orange)
      arrow((0.4, 0.3), (0.4, -1), label: [$bold(F)_d$], anchor: "north")
      arrow((-0.7, 0.3), (-2, 0.3), label: [$bold(f)_n$], at: (-1.4, 0.45))
      content((-1.7, -0.5), [Về tâm cua])
    } else if id == "luc-tran" {
      line((-1.5, 1.2), (1.5, 1.2), stroke: 1.5pt + luma(50%))
      for i in range(15) {
        line((-1.4 + i * 0.2, 1.2), (-1.2 + i * 0.2, 1.5), stroke: 0.5pt + luma(50%))
      }
      rect((-0.6, 1.2), (0.6, 0.5), fill: luma(90%), stroke: 1pt)
      content((0, 0.85), [Xe])
      arrow((0, 0.85), (0, 2.4), label: [$bold(F)_d$], at: (-0.1, 2.2), anchor: "east")
      arrow((-0.4, 0.5), (-0.4, -0.8), label: [$m bold(g)$], anchor: "north", color: orange)
      arrow((0.4, 1.2), (0.4, -0.5), label: [$bold(N)$], anchor: "north", color: blue)
      content((1.8, 1.2), [Trần hầm], anchor: "west")
    } else {
      panic("Chưa có hình Bài 14: " + id)
    }
  })
}

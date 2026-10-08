#import "@preview/cetz:0.3.3": canvas, draw

#let blue = rgb("1976d2")
#let orange = rgb("b45309")
#let dash = (paint: luma(55%), thickness: 0.6pt, dash: "dashed")

// Helper ở ngoài canvas: gọi draw.line, không gọi nhầm line của Typst.
#let arrow(a, b, label, anchor: "south", color: blue) = {
  draw.line(a, b, stroke: 1pt + color, mark: (end: ">"))
  draw.content(b, label, anchor: anchor)
}

#let mau-hinh(id) = {
  set text(font: "Times New Roman", size: 10pt)
  canvas({
    import draw: *
    if id == "van-toc" {
      arrow((0,0), (5.5,0), [$t$ (s)], anchor: "west", color: black)
      arrow((0,0), (0,2.8), [$v$ (m/s)], color: black)
      line((0,2), (5,2), stroke: 1.2pt + blue)
      line((5,0), (5,2), stroke: dash)
      content((-0.16,-0.18), [O])
      content((-0.15,2), [2], anchor: "east")
      content((5,-0.2), [5])
    } else if id == "luc" {
      circle((0,0), radius: 0.07, fill: black, stroke: none)
      arrow((0,0), (0,1.6), [$bold(N)$])
      arrow((0,0), (0,-1.6), [$bold(P)$], anchor: "north", color: orange)
      arrow((0,0), (1.8,0), [$bold(F)$], anchor: "west")
    } else {
      panic("Chưa có hình mẫu: " + id)
    }
  })
}

// Smoke test cho cú pháp dùng chung; không include vào sách.
#import "@preview/cetz:0.3.3": canvas, draw
#set text(font: "Times New Roman", size: 12pt)
$ "9,8" thin "m/s"^2; quad frac(F - f, m); quad overline(v); quad bold(F); quad F ∝ v^2 $
$ ("2,000" plus.minus "0,022") thin "s"; quad sqrt(frac(m g, D)); quad F_("cản") $
$ frac(sin(30 degree) - a/g, cos(30 degree)); quad 10^(-3); quad "cm"/("s" dot "mm"^2) $
#canvas({
  import draw: *
  let blue = rgb("1976d2")
  line((0, 0), (2, 0), stroke: 1pt, mark: (end: ">"))
  rect((0, 0), (1, 0.6), fill: luma(95%))
  circle((0, 0), radius: 0.05, fill: black, stroke: none)
  content((1, 1), text(fill: blue)[$bold(F)$], anchor: "south")
  let points = range(51).map(i => (i / 10, calc.exp(-i / 10)))
  line(..points, stroke: 1pt + blue)
  let slope-angle = 30deg
  assert(calc.abs(calc.sin(slope-angle) - 0.5) < 0.000001)
})

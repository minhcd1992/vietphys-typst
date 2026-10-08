// Nguồn dựng hình vectơ của Bài 4. Chạy từ thư mục gốc repository:
// typst compile sbt-vat-li-10/chuong-01-dong-hoc/images/bai-04-do-thi.typ <ten.svg> --root . --input figure=iv-01-d
// Các khóa: iv-01-d, iv-01-v, iv-03-x, iv-04-x, iv-05-thanh-phan, iv-05-do-lon.
#import "@preview/cetz:0.3.3": canvas, draw
#set page(width: auto, height: auto, margin: 4pt)
#set text(font: "Times New Roman", size: 10pt)

#let blue = rgb("1976d2")
#let orange = rgb("b45309")
#let samples(a, b, f, n: 80) = range(n + 1).map(i => {
  let t = a + (b - a) * i / n
  (t, f(t))
})
#let plot(xmax, ymax, xticks, yticks, xlabel, ylabel, series, labels: ()) = canvas({
  import draw: *
  let w = 10
  let h = 4.5
  let pt(x, y) = (w * x / xmax, h * y / ymax)
  for x in xticks {
    line(pt(x, 0), pt(x, ymax), stroke: 0.3pt + luma(85%))
    content((w * x / xmax, -0.24), str(x).replace(".", ","), anchor: "north")
  }
  for y in yticks {
    line(pt(0, y), pt(xmax, y), stroke: 0.3pt + luma(85%))
    content((-0.18, h * y / ymax), str(y).replace(".", ","), anchor: "east")
  }
  line((0, 0), (w + 0.35, 0), stroke: 0.8pt, mark: (end: ">"))
  line((0, 0), (0, h + 0.35), stroke: 0.8pt, mark: (end: ">"))
  content((w + 0.35, -0.5), xlabel, anchor: "north-east")
  content((0, h + 0.48), ylabel, anchor: "south-west")
  for item in series {
    line(..item.points.map(p => pt(..p)), stroke: item.at("stroke", default: 1.5pt + blue))
    for p in item.at("dots", default: ()) {
      circle(pt(..p), radius: 0.055, fill: blue, stroke: none)
    }
  }
  for label in labels {
    content(pt(label.at(0), label.at(1)), label.at(2))
  }
})

#let key = sys.inputs.at("figure", default: "iv-01-d")
#if key == "iv-01-d" {
  // Hai đoạn cong là một cách minh họa, không phải dữ kiện hàm số duy nhất.
  let points = (samples(0, 1, t => 0.75*t*t - 0.25*t*t*t)
    + ((3, 2),) + samples(3, 4, t => 2 + 0.75*(t - 3) - 0.25*calc.pow(t - 3, 3))
    + ((5, 2.5), (8, 5.5)))
  plot(8, 6, (0, 1, 3, 4, 5, 8), (0.5, 2, 2.5, 5.5), [$t$ (phút)], [$d$ (km)],
    ((points: points, dots: ((0, 0), (1, 0.5), (3, 2), (4, 2.5), (5, 2.5), (8, 5.5))),))
} else if key == "iv-01-v" {
  plot(8, 70, (0, 1, 3, 4, 5, 8), (0, 30, 45, 60), [$t$ (phút)], [$v$ (km/h)], (
    (points: samples(0, 1, t => 90*t - 45*t*t) + ((3, 45),)
      + samples(3, 4, t => 45*(1 - calc.pow(t - 3, 2))) + ((5, 0),)),
    (points: ((5, 60), (8, 60))),
    (points: ((5, 0), (5, 60)), stroke: (paint: luma(65%), thickness: 0.7pt, dash: "dashed")),
  ))
} else if key == "iv-03-x" {
  plot(60, 115, (0, 10, 30, 60), (15, 45, 90, 110), [$t$ (phút)], [$x$ (km)], (
    (points: ((0, 0), (60, 90)), dots: ((10, 15),)),
    (points: ((0, 15), (10, 15), (60, 15 + 110*50/60)), stroke: 1.5pt + orange),
  ), labels: ((52, 74, text(fill: blue)[Xe A]), (48, 98, text(fill: orange)[Xe B])))
} else if key == "iv-04-x" {
  let points = ((0, 0), (15, 10), (30, 25), (45, 25), (60, 40), (75, 60), (90, 60))
  plot(90, 70, (0, 15, 30, 45, 60, 75, 90), (10, 25, 40, 60), [$t$ (phút)], [$x$ (km)],
    ((points: points, dots: points),))
} else if key == "iv-05-thanh-phan" {
  plot(4, 45, (0, 1, 2, 3, 4), (0, 15, 30, 40), [$t$ (giờ)], [Độ dịch chuyển (hải lí)], (
    (points: ((0, 0), (2, 0), (4, 40))),
    (points: ((0, 0), (2, 30), (4, 30)), stroke: 1.5pt + orange),
  ), labels: ((3.5, 20, text(fill: blue)[$d_x$]), (3.1, 34, text(fill: orange)[$d_y$])))
} else if key == "iv-05-do-lon" {
  plot(4, 55, (0, 1, 2, 3, 4), (0, 15, 30, 50), [$t$ (giờ)], [$r$ (hải lí)],
    ((points: ((0, 0), (2, 30)) + samples(2, 4, t => calc.sqrt(900 + 400*calc.pow(t - 2, 2))),
      dots: ((0, 0), (2, 30), (4, 50))),))
} else {
  panic("Khóa hình không hợp lệ: " + key)
}

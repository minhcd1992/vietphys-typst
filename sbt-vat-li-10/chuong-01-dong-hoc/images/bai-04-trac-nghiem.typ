// Hình CeTZ được nhúng trực tiếp vào đề, không cần xuất SVG khi sửa.
// bai-04-hinh(1..20); câu 4 gồm bốn hình lựa chọn A–D.
#import "@preview/cetz:0.3.3": canvas, draw

#let blue = rgb("1976d2")
#let orange = rgb("b45309")
#let green = rgb("24734c")
#let dashed = (paint: luma(55%), thickness: 0.65pt, dash: "dashed")
#let sample(a, b, f, n: 80) = range(n + 1).map(i => {
  let t = a + (b - a) * i / n
  (t, f(t))
})
#let tick-label(value) = if type(value) == array { value.at(1) } else { str(value).replace(".", ",") }
#let tick-value(value) = if type(value) == array { value.at(0) } else { value }

// w và h là kích thước vùng tọa độ tính theo cm; nhãn giữ nguyên cỡ chữ.
#let chart(xmax, ymax, series, ymin: 0, w: 6.3, h: 2.7,
  xticks: (), yticks: (), xlabel: [$t$], ylabel: [$d$], labels: (),
  guides: (), dots: (), extra: none,
) = {
  set text(font: "Times New Roman", size: 10pt)
  canvas({
    import draw: *
    let p(x, y) = (w * x / xmax, h * (y - ymin) / (ymax - ymin))
    for xt in xticks {
      let x = tick-value(xt)
      line(p(x, ymin), p(x, ymax), stroke: 0.25pt + luma(89%))
      if x != 0 { content((p(x, 0).at(0), p(x, 0).at(1) - 0.16), tick-label(xt), anchor: "north") }
    }
    for yt in yticks {
      let y = tick-value(yt)
      line(p(0, y), p(xmax, y), stroke: 0.25pt + luma(89%))
      if y != 0 { content((-0.15, p(0, y).at(1)), tick-label(yt), anchor: "east") }
    }
    line(p(0, 0), (w + 0.22, p(0, 0).at(1)), stroke: 0.65pt, mark: (end: ">"))
    line(p(0, ymin), (0, h + 0.22), stroke: 0.65pt, mark: (end: ">"))
    content((-0.10, p(0, 0).at(1) - 0.14), [O], anchor: "north-east")
    content((w + 0.25, p(0, 0).at(1) - 0.42), xlabel, anchor: "north-east")
    content((0, h + 0.28), ylabel, anchor: "south-west")
    for guide in guides { line(..guide.map(pt => p(..pt)), stroke: dashed) }
    for item in series {
      line(..item.points.map(pt => p(..pt)), stroke: item.at("stroke", default: 1.2pt + blue))
    }
    for pt in dots { circle(p(..pt), radius: 0.045, fill: blue, stroke: none) }
    for label in labels { content(p(label.at(0), label.at(1)), label.at(2)) }
    if extra != none { extra(p) }
  })
}

#let bai-04-hinh(num) = {
  if num == 1 {
    chart(6, 5, ((points: ((0.7, 4.4), (5.5, 0.8))),))
  } else if num == 2 {
    chart(1.1, 23, ((points: ((0, 0), (0.5, 20), (1, 5))),),
      xticks: (0.5, 1), yticks: (5, 20), xlabel: [$t$ (giờ)], ylabel: [$d$ (km)],
      dots: ((0.5, 20), (1, 5)))
  } else if num == 3 {
    chart(1.5, 110, (
      (points: ((0, 0), (1.5, 60))),
      (points: ((0, 100), (1.5, 10)), stroke: 1.2pt + orange),
    ), xticks: (0.5, 1.5), yticks: (20, 60, 100), xlabel: [$t$ (giờ)], ylabel: [$x$ (km)],
      labels: ((1.35, 69, text(fill: blue)[A]), (0.2, 99, text(fill: orange)[B])))
  } else if num == 4 {
    let mini(pts) = chart(32, 4, ((points: pts),), w: 3.2, h: 1.3,
      xticks: (30,), xlabel: [$t$ (s)])
    grid(columns: (auto, auto), column-gutter: 16pt, row-gutter: 7pt,
      align(center)[#text(size: 10pt, weight: "bold")[A] #linebreak() #mini(((0, 0.5), (30, 3.5)))],
      align(center)[#text(size: 10pt, weight: "bold")[B] #linebreak() #mini(((0, 2), (30, 2)))],
      align(center)[#text(size: 10pt, weight: "bold")[C] #linebreak() #mini(sample(0, 30, t => 0.5 + 3*calc.pow(t/30, 2)))],
      align(center)[#text(size: 10pt, weight: "bold")[D] #linebreak() #mini(((15, 0.5), (15, 3.5)))],
    )
  } else if num == 5 {
    chart(3.2, 20, ((points: sample(0, 3, t => 2*t*t)),),
      xticks: (1, 2, 3), yticks: (2, 8, 18), xlabel: [$t$ (s)], ylabel: [$d$ (m)])
  } else if num == 6 {
    chart(5, 7, (
      (points: ((0, 2), (4.6, 6.6))),
      (points: ((0, 0.4), (4.6, 5)), stroke: 1.2pt + orange),
    ), ylabel: [$x$], labels: ((4.25, 6.8, text(fill: blue)[1]), (4.3, 4.4, text(fill: orange)[2])))
  } else if num == 7 {
    chart(5.3, 70, ((points: ((0, 0), (2, 60), (3, 60), (5, 0))),),
      xticks: (2, 3, 4, 5), yticks: (60,), xlabel: [$t$ (giờ)], ylabel: [$d$ (km)])
  } else if num == 8 {
    chart(5.5, 5, (
      (points: ((0, 0.4), (5, 3.9))),
      (points: ((0, 4.3), (5, 1.3)), stroke: 1.2pt + orange),
    ), ylabel: [$x$], xticks: ((3, [$t_0$]),), yticks: ((2.5, [$x_0$]),),
      guides: (((0, 2.5), (3, 2.5), (3, 0)),), dots: ((3, 2.5),),
      labels: ((4.8, 4.2, text(fill: blue)[A]), (4.8, 1.0, text(fill: orange)[B]), (3, 3.05, [I])))
  } else if num == 9 {
    chart(3.7, 2.7, ((points: sample(0, 3.5, t => t*(3 - t))),), ymin: -2,
      xticks: ((3, [$t_0$]),), dots: ((3, 0),))
  } else if num == 10 {
    // Một đơn vị số ở mỗi trục dài đúng 1 cm, không resize khi nhúng hình này.
    chart(3.5, 3.3, ((points: sample(0, 3.2, t => 3*t - t*t)),),
      ymin: -0.8, w: 3.5, h: 4.1,
      xticks: (1, 2, 3), yticks: (1, 2, 3), xlabel: [$t$ (s)], ylabel: [$d$ (m)],
      guides: (((2, 0), (2, 2)),), dots: ((2, 2),),
      extra: p => {
        draw.line(p(1, 3), p(3.1, 0.9), stroke: 0.9pt + orange)
        draw.line(p(2, 2), p(3.15, 2), stroke: dashed, mark: (end: ">"))
        let arc-pts = range(46).map(i => {
          let a = (135 * i / 45) * 1deg
          p(2 + 0.62*calc.cos(a), 2 + 0.62*calc.sin(a))
        })
        draw.line(..arc-pts, stroke: 0.65pt, mark: (end: ">"))
        draw.content(p(2.32, 2.90), [$135^°$])
        draw.content(p(1.62, 1.80), [P])
      })
  } else if num == 11 {
    chart(4.4, 3.6, (
      (points: ((0, 0), (4, 3))),
      (points: sample(0, 4, t => 3*calc.pow(t/4, 2)), stroke: 1.2pt + orange),
      (points: sample(0, 4, t => 3*(2*t/4 - calc.pow(t/4, 2))), stroke: 1.2pt + green),
    ), xticks: ((4, [$t_1$]),), yticks: ((3, [$d_1$]),),
      guides: (((0, 3), (4, 3), (4, 0)),), dots: ((4, 3),),
      labels: ((1.8, 1.6, text(fill: blue)[1]), (2.3, 0.72, text(fill: orange)[2]), (1.8, 2.4, text(fill: green)[3])))
  } else if num == 12 {
    chart(21, 35, ((points: ((0, 0), (10, 30), (20, 10))),),
      xticks: (10, 20), yticks: (10, 30), xlabel: [$t$ (s)], ylabel: [$d$ (m)])
  } else if num == 13 {
    chart(4, 4, ((points: ((2, 1), (2, 3))),),
      xticks: ((2, [$t_0$]),), yticks: ((1, [$d_1$]), (3, [$d_2$])),
      guides: (((0, 1), (2, 1)), ((0, 3), (2, 3))), dots: ((2, 1), (2, 3)))
  } else if num == 14 {
    chart(10.5, 6, ((points: sample(0, 10, t => 0.2*t*(10 - t))),),
      xticks: (5, 10), yticks: (5,), xlabel: [$t$ (s)], ylabel: [$d$ (m)], dots: ((5, 5),))
  } else if num == 15 {
    chart(50, 850, (
      (points: ((0, 0), (50, 750))),
      (points: ((0, 0), (10, 0), (50, 800)), stroke: 1.2pt + orange),
    ), xticks: (10, 20, 30, 50), yticks: (150, 450, 750), xlabel: [$t$ (s)], ylabel: [$x$ (m)],
      labels: ((33, 565, text(fill: blue)[A]), (28, 295, text(fill: orange)[B])))
  } else if num == 16 {
    chart(42, 1.45, ((points: ((0, 0), (15, 1.2), (25, 1.2), (40, 0))),),
      xticks: (15, 25, 40), yticks: (1.2,), xlabel: [$t$ (phút)], ylabel: [$d$ (km)])
  } else if num == 17 {
    chart(1.8, 115, ((points: ((0, 0), (1, 60), (1.25, 60), (1.65, 100))),),
      xticks: (1, 1.25, 1.65), yticks: (60, 100), xlabel: [$t$ (giờ)], ylabel: [$d$ (km)])
  } else if num == 18 {
    chart(6.4, 11, ((points: sample(0, 6, t => -t*t + 6*t)),),
      xticks: (1, 2, 4, 5, 6), yticks: (5, 10), xlabel: [$t$ (s)], ylabel: [$d$ (m)])
  } else if num == 19 {
    chart(5, 50, (
      (points: ((0, 20), (4.6, 43))),
      (points: ((0, 5), (4.6, 28)), stroke: 1.2pt + orange),
    ), ylabel: [$x$ (km)],
      labels: ((4.35, 47, text(fill: blue)[I]), (4.35, 22, text(fill: orange)[II])),
      extra: p => {
        draw.line(p(2.6, 18), p(2.6, 33), stroke: dashed)
        draw.line(p(2.47, 18), p(2.73, 18), stroke: 0.65pt)
        draw.line(p(2.47, 33), p(2.73, 33), stroke: 0.65pt)
        draw.content(p(3.26, 25.5), [15 km])
      })
  } else if num == 20 {
    chart(4.3, 9.5, (
      (points: ((0, 0), (4, 8))),
      (points: ((0, 0), (4, 6)), stroke: 1.2pt + orange),
    ), xticks: (2, 4), yticks: (3, 4, 6, 8), xlabel: [$t$ (s)], ylabel: [Độ dịch chuyển (m)],
      labels: ((3.7, 8.4, text(fill: blue)[$d_x$]), (3.7, 4.8, text(fill: orange)[$d_y$])))
  } else {
    panic("Không có hình cho câu " + str(num))
  }
}

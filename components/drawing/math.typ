// vp-draw — hình học và đồ thị.
#import "core.typ": *

// Trục tọa độ qua `origin`. x, y: khoảng (min, max) theo đơn vị đồ thị; scale: số đơn vị canvas cho một đơn vị đồ thị.
// ticks: none hoặc (bước x, bước y); tick-labels: true để ghi số; grid: true để vẽ lưới theo bước ticks.
#let axes(
  origin: (0, 0), x: (0, 4), y: (0, 3), scale: (1, 1),
  x-label: $x$, y-label: $y$, origin-label: $O$,
  ticks: none, tick-labels: true, grid: false, color: luma(35%),
) = {
  let (sx, sy) = scale
  let to(px, py) = (origin.at(0) + px * sx, origin.at(1) + py * sy)
  let st = 0.5pt + color
  if ticks != none {
    let (dx, dy) = ticks
    let xs = range(int(calc.ceil(x.at(0) / dx)), int(calc.floor(x.at(1) / dx)) + 1).map(i => i * dx).filter(v => v != 0 and v < x.at(1))
    let ys = range(int(calc.ceil(y.at(0) / dy)), int(calc.floor(y.at(1) / dy)) + 1).map(i => i * dy).filter(v => v != 0 and v < y.at(1))
    for v in xs {
      if grid { draw.line(to(v, y.at(0)), to(v, y.at(1)), stroke: 0.3pt + luma(85%)) }
      draw.line(add(to(v, 0), (0, -0.06)), add(to(v, 0), (0, 0.06)), stroke: st)
      if tick-labels { tag(to(v, 0), [#calc.round(v, digits: 2)], gap: 0.1) }
    }
    for v in ys {
      if grid { draw.line(to(x.at(0), v), to(x.at(1), v), stroke: 0.3pt + luma(85%)) }
      draw.line(add(to(0, v), (-0.06, 0)), add(to(0, v), (0.06, 0)), stroke: st)
      if tick-labels { tag(to(0, v), [#calc.round(v, digits: 2)], pos: "west", gap: 0.1) }
    }
  }
  let m = arrow-mark(color, scale: 0.5)
  draw.line(to(x.at(0), 0), to(x.at(1), 0), stroke: st, mark: m)
  draw.line(to(0, y.at(0)), to(0, y.at(1)), stroke: st, mark: m)
  tag(to(x.at(1), 0), x-label, pos: "east", gap: 0.05)
  tag(to(0, y.at(1)), y-label, pos: "north", gap: 0.05)
  tag(origin, origin-label, pos: "south-west", gap: 0.05)
}

// Đồ thị y = f(x) trên domain, cùng hệ (origin, scale) với `axes`.
#let plot(f, domain: (0, 1), origin: (0, 0), scale: (1, 1), samples: 80, stroke: 1.2pt + colors.red) = {
  let pts = sample(f, domain.at(0), domain.at(1), n: samples)
  draw.line(..pts.map(((x, y)) => (origin.at(0) + x * scale.at(0), origin.at(1) + y * scale.at(1))), stroke: stroke)
}
// Đường cong tham số (x(t), y(t)).
#let parametric(fx, fy, domain: (0, 1), samples: 80, stroke: 1.2pt + colors.blue) = {
  let n = samples
  draw.line(..range(n + 1).map(i => {
    let t = domain.at(0) + (domain.at(1) - domain.at(0)) * i / n
    (fx(t), fy(t))
  }), stroke: stroke)
}
// Tô miền giữa f và g (mặc định trục hoành) trên [a, b].
#let fill-between(f, g: x => 0, a: 0, b: 1, origin: (0, 0), scale: (1, 1), fill: rgb(37, 99, 235, 18%), samples: 60) = {
  let to(p) = (origin.at(0) + p.at(0) * scale.at(0), origin.at(1) + p.at(1) * scale.at(1))
  let tren = sample(f, a, b, n: samples).map(to)
  let duoi = sample(g, a, b, n: samples).map(to).rev()
  draw.line(..tren, ..duoi, close: true, fill: fill, stroke: none)
}
// Đường gióng nét đứt từ điểm p (tọa độ đồ thị) xuống hai trục, kèm nhãn.
#let projection(p, origin: (0, 0), scale: (1, 1), x-label: none, y-label: none, stroke: dashed) = {
  let q = (origin.at(0) + p.at(0) * scale.at(0), origin.at(1) + p.at(1) * scale.at(1))
  draw.line((q.at(0), origin.at(1)), q, (origin.at(0), q.at(1)), stroke: stroke)
  tag((q.at(0), origin.at(1)), x-label)
  tag((origin.at(0), q.at(1)), y-label, pos: "west")
}

// Cung đánh dấu góc tại o, quét từ góc `from` đến `to` (độ dài góc dương).
#let arc-mark(o, radius, from, to, label: none, label-gap: 0.2, stroke: 0.5pt + luma(30%), double: false) = {
  draw.arc(o, start: from, stop: to, radius: radius, anchor: "origin", stroke: stroke)
  if double { draw.arc(o, start: from, stop: to, radius: radius + 0.07, anchor: "origin", stroke: stroke) }
  if label != none { draw.content(polar(radius + label-gap, (from + to) / 2, origin: o), label) }
}
// Góc giữa hai tia o→a và o→b (đi ngược chiều kim đồng hồ từ a sang b).
#let angle-mark(o, a, b, radius: 0.4, ..args) = {
  let d1 = sub(a, o)
  let d2 = sub(b, o)
  let t1 = calc.atan2(d1.at(0), d1.at(1))
  let t2 = calc.atan2(d2.at(0), d2.at(1))
  if t2 < t1 { t2 += 360deg }
  arc-mark(o, radius, t1, t2, ..args)
}
// Ký hiệu góc vuông tại o giữa hai tia o→a, o→b.
#let right-angle(o, a, b, size: 0.18, stroke: 0.5pt) = {
  let p = add(o, unit(o, a), s: size)
  let q = add(o, unit(o, b), s: size)
  draw.line(p, add(p, unit(o, b), s: size), q, stroke: stroke)
}
// Vạch đánh dấu đoạn bằng nhau ở giữa đoạn a–b.
#let equal-ticks(a, b, n: 1, size: 0.12, gap: 0.06, stroke: 0.6pt) = {
  let u = unit(a, b)
  let v = normal(a, b)
  for i in range(n) {
    let c = add(mid(a, b), u, s: (i - (n - 1) / 2) * gap)
    draw.line(add(c, v, s: -size), add(c, v, s: size), stroke: stroke)
  }
}
// Đa giác qua các điểm; labels đặt ra phía ngoài tâm hình.
#let poly(points, labels: (), stroke: 0.8pt, fill: none, close: true, label-gap: 0.18) = {
  draw.line(..points, close: close, stroke: stroke, fill: fill)
  let c = (points.map(p => p.at(0)).sum() / points.len(), points.map(p => p.at(1)).sum() / points.len())
  for (p, t) in points.zip(labels) {
    if t != none { draw.content(add(p, unit(c, p), s: label-gap), t) }
  }
}
// Đoạn thẳng có ghi độ dài hoặc tên ở giữa.
#let segment(a, b, label: none, offset: 0.2, stroke: 0.8pt) = {
  draw.line(a, b, stroke: stroke)
  if label != none { tag-segment(a, b, label, offset: offset) }
}

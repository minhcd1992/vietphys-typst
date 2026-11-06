// vp-draw — linh kiện mạch điện hai đầu, vẽ dọc theo đoạn a–b theo mọi hướng.
#import "core.typ": *

// kind: "resistor", "rheostat" (biến trở), "battery" (nguồn), "capacitor", "lamp", "switch" (khóa mở),
//       "switch-closed", "meter" (đồng hồ, chữ trong vòng tròn là `symbol`), "inductor", "wire".
// label: nhãn linh kiện; side: 1 đặt nhãn bên trái hướng a → b, -1 bên phải; size: chiều dài thân linh kiện.
#let element(a, b, kind: "resistor", label: none, side: 1, symbol: [A], size: 0.6, stroke: 0.8pt) = {
  let u = unit(a, b)
  let v = normal(a, b)
  let m = mid(a, b)
  let h = size / 2
  let p(t, s: 0) = add(add(m, u, s: t), v, s: s)
  let poly(..pts) = draw.line(..pts.pos().map(((t, s)) => p(t, s: s)), stroke: stroke)
  let noi(t1, t2) = { draw.line(a, p(t1), stroke: stroke); draw.line(p(t2), b, stroke: stroke) }
  let nhan-cach = 0.32
  if kind == "wire" {
    draw.line(a, b, stroke: stroke)
  } else if kind in ("resistor", "rheostat") {
    noi(-h, h)
    draw.line(p(-h, s: -0.12), p(h, s: -0.12), p(h, s: 0.12), p(-h, s: 0.12), close: true, fill: white, stroke: stroke)
    if kind == "rheostat" {
      draw.line(p(-h - 0.1, s: -0.25), p(h + 0.1, s: 0.25), stroke: stroke, mark: (end: "stealth", fill: black, scale: 0.5))
    }
  } else if kind in ("battery", "capacitor") {
    let g = 0.07
    noi(-g, g)
    let ngan = if kind == "battery" { 0.12 } else { 0.24 }
    poly((-g, -0.24), (-g, 0.24))
    draw.line(p(g, s: -ngan), p(g, s: ngan), stroke: if kind == "battery" { (if type(stroke) == length { stroke } else { stroke.thickness }) * 2.2 + black } else { stroke })
    nhan-cach = 0.42
  } else if kind == "lamp" {
    noi(-0.22, 0.22)
    draw.circle(m, radius: 0.22, fill: white, stroke: stroke)
    let d = 0.155
    draw.line(p(-d, s: -d), p(d, s: d), stroke: stroke)
    draw.line(p(-d, s: d), p(d, s: -d), stroke: stroke)
    nhan-cach = 0.42
  } else if kind == "meter" {
    noi(-0.24, 0.24)
    draw.circle(m, radius: 0.24, fill: white, stroke: stroke)
    draw.content(m, text(size: 7pt, weight: "bold", symbol))
    nhan-cach = 0.45
  } else if kind in ("switch", "switch-closed") {
    noi(-h, h)
    draw.circle(p(-h), radius: 0.04, fill: black, stroke: none)
    draw.circle(p(h), radius: 0.04, fill: black, stroke: none)
    draw.line(p(-h), if kind == "switch" { p(h * 0.85, s: 0.3) } else { p(h) }, stroke: stroke)
  } else if kind == "inductor" {
    noi(-h, h)
    let n = 4
    for i in range(n) {
      let t0 = -h + 2 * h * i / n
      draw.arc(p(t0), start: calc.atan2(-u.at(0), -u.at(1)), delta: -180deg, radius: h / n, stroke: stroke)
    }
  } else { panic("vp-draw.element: kind không hỗ trợ: " + kind) }
  if label != none { draw.content(p(0, s: side * nhan-cach), label) }
}
// Nút nối dây (chấm đậm) có nhãn.
#let node(p, label: none, pos: "south") = dot(p, label: label, pos: pos, radius: 0.05)
// Dây nối qua nhiều điểm (đường gấp khúc).
#let wire(..points, stroke: 0.8pt) = draw.line(..points.pos(), stroke: stroke)

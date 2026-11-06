// vp-draw — điện và từ, theo phong cách izaak.
#import "core.typ": *

// Đường có mũi tên đặt giữa (hoặc tại các vị trí `marks` 0..1) như decorations.markings của izaak.
#let marked-line(..points, color: pal.efield-line, width: 1pt, marks: (0.5,), dash: none) = {
  let ps = points.pos()
  draw.line(..ps, stroke: (paint: color, thickness: width, dash: dash, cap: "round", join: "round"))
  // Độ dài tích lũy để đặt mũi tên theo tỉ lệ chiều dài đường gấp khúc.
  let ls = (0,)
  for i in range(ps.len() - 1) { ls.push(ls.last() + dist(ps.at(i), ps.at(i + 1))) }
  for t in marks {
    let target = t * ls.last()
    let k = ls.position(l => l >= target - 1e-9)
    let i = calc.max(0, (if k == none { ls.len() - 1 } else { k }) - 1)
    let (p, q) = (ps.at(i), ps.at(i + 1))
    let m = lerp(p, q, if ls.at(i + 1) == ls.at(i) { 0 } else { (target - ls.at(i)) / (ls.at(i + 1) - ls.at(i)) })
    let u = unit(p, q)
    draw.line(add(m, u, s: -0.12), add(m, u, s: 0.04), stroke: (paint: color, thickness: width), mark: head(color, size: 0.5 + 0.3 * width / 1pt))
  }
}

// Điện tích dạng quả cầu gradient; sign "+", "-", "0" (trung hòa) hoặc none (không ghi dấu).
#let charge(p, sign: "+", radius: 0.16, label: none, pos: "south", label-color: auto) = {
  let key = if sign == "+" { "charge+" } else if sign == "-" { "charge-" } else { "charge0" }
  draw.circle(p, radius: radius, fill: materials.at(key), stroke: 0.3pt + luma(25%))
  if sign in ("+", "-") {
    let d = radius * 0.5
    draw.line(add(p, (-d, 0)), add(p, (d, 0)), stroke: (paint: white, thickness: radius * 9pt / 1, cap: "round"))
    if sign == "+" { draw.line(add(p, (0, -d)), add(p, (0, d)), stroke: (paint: white, thickness: radius * 9pt / 1, cap: "round")) }
  }
  let lc = if label-color != auto { label-color } else if sign == "+" { pal.plus } else if sign == "-" { pal.minus } else { black }
  tag(p, if label == none { none } else { text(fill: lc, label) }, pos: pos, gap: radius + 0.06)
}
// Bản tích điện (anode/cathode của izaak): hình chữ nhật gradient từ góc a đến góc b, n dấu điện tích.
#let plate(a, b, sign, n: 5, label: none, label-pos: auto) = {
  let pos = sign == "+"
  draw.rect(a, b, fill: if pos { materials.anode } else { materials.cathode }, stroke: 0.6pt + black)
  let c = if pos { pal.plus } else { pal.minus }
  let doc = calc.abs(b.at(1) - a.at(1)) > calc.abs(b.at(0) - a.at(0))
  for i in range(n) {
    let t = (i + 0.5) / n
    let p = if doc { ((a.at(0) + b.at(0)) / 2, a.at(1) + (b.at(1) - a.at(1)) * t) } else { (a.at(0) + (b.at(0) - a.at(0)) * t, (a.at(1) + b.at(1)) / 2) }
    draw.content(p, text(fill: c, size: 7pt, if pos { $+$ } else { $-$ }))
  }
  if label != none {
    let top = (calc.min(a.at(0), b.at(0)), calc.max(a.at(1), b.at(1)))
    let lp = if label-pos == auto { if pos { "north-west" } else { "north-east" } } else { label-pos }
    let corner = if pos { top } else { (calc.max(a.at(0), b.at(0)), top.at(1)) }
    tag(corner, text(fill: c, label), pos: lp, gap: 0.05)
  }
}
// Điện trường đều trong hình chữ nhật (a, b) theo hướng angle; mũi tên đặt giữa mỗi đường như izaak.
#let uniform-field(a, b, angle: 0deg, n: 3, label: $arrow(E)$, color: pal.efield, width: 1pt) = {
  let (x0, x1) = (calc.min(a.at(0), b.at(0)), calc.max(a.at(0), b.at(0)))
  let (y0, y1) = (calc.min(a.at(1), b.at(1)), calc.max(a.at(1), b.at(1)))
  let ngang = calc.abs(calc.cos(angle)) >= calc.abs(calc.sin(angle))
  for i in range(n) {
    let t = (i + 0.5) / n
    let (p, q) = if ngang {
      let y = y0 + (y1 - y0) * t
      if calc.cos(angle) >= 0 { ((x0, y), (x1, y)) } else { ((x1, y), (x0, y)) }
    } else {
      let x = x0 + (x1 - x0) * t
      if calc.sin(angle) >= 0 { ((x, y0), (x, y1)) } else { ((x, y1), (x, y0)) }
    }
    marked-line(p, q, color: color, width: width)
  }
  if label != none {
    let lp = if ngang { ((x0 + x1) / 2, y1 + 0.25) } else { (x1 + 0.25, (y0 + y1) / 2) }
    draw.content(lp, text(fill: color, label))
  }
}
// Đường sức của hệ điện tích điểm trong mặt phẳng hình (trường 2D, E ∝ q/r), mũi tên giữa đường.
// charges: mảng ((x, y), q). Số đường từ mỗi điện tích dương tỉ lệ |q| (per-unit đường cho |q| = 1).
#let field-lines(charges, per-unit: 6, radius: 0.2, step: 0.02, steps: 400, bound: 3, center: (0, 0),
  offset: 0.5, color: pal.efield-line, width: 0.8pt, arrow-at: 0.5, draw-charges: true) = {
  let field(p) = {
    let (ex, ey) = (0, 0)
    for (c, q) in charges {
      let (dx, dy) = sub(p, c)
      let r2 = dx * dx + dy * dy
      ex += q * dx / r2
      ey += q * dy / r2
    }
    let l = calc.sqrt(ex * ex + ey * ey)
    if l == 0 { (0, 0) } else { (ex / l, ey / l) }
  }
  for (c, q) in charges.filter(((c, q)) => q > 0) {
    let n = int(calc.round(per-unit * q))
    for k in range(n) {
      let p = polar(radius, (k + offset) * 360deg / n, origin: c)
      let pts = (p,)
      for i in range(steps) {
        let u = field(p)
        let v = field(add(p, u, s: step / 2))
        p = add(p, v, s: step)
        pts.push(p)
        if charges.any(((c2, q2)) => q2 < 0 and dist(p, c2) < radius) or dist(p, center) > bound { break }
      }
      draw.line(..pts, stroke: (paint: color, thickness: width, cap: "round"))
      let j = calc.min(calc.floor(pts.len() * arrow-at), pts.len() - 2)
      draw.line(pts.at(j), pts.at(j + 1), stroke: width + color, mark: head(color, size: 0.75))
    }
  }
  if draw-charges { for (c, q) in charges { charge(c, sign: if q > 0 { "+" } else { "-" }, radius: radius) } }
}
// Ký hiệu vector vuông góc mặt phẳng hình: vào (⊗) và ra (⊙), như pic Bin/Bout của izaak.
#let b-in(p, radius: 0.12, color: pal.bfield, width: 0.7pt) = {
  draw.circle(p, radius: radius, fill: white, stroke: width + color)
  let d = radius * 0.72
  draw.line(add(p, (-d * 0.71, -d * 0.71)), add(p, (d * 0.71, d * 0.71)), stroke: width + color)
  draw.line(add(p, (-d * 0.71, d * 0.71)), add(p, (d * 0.71, -d * 0.71)), stroke: width + color)
}
#let b-out(p, radius: 0.12, color: pal.bfield, width: 0.7pt) = {
  draw.circle(p, radius: radius, fill: white, stroke: width + color)
  draw.circle(p, radius: radius * 0.3, fill: color, stroke: none)
}
// Lưới ký hiệu từ trường nx × ny trong hình chữ nhật (a, b); dir "in" hoặc "out".
#let field-symbols(a, b, dir: "in", nx: 4, ny: 3, color: pal.bfield, size: 0.12, label: none) = {
  for i in range(nx) {
    for j in range(ny) {
      let p = (a.at(0) + (b.at(0) - a.at(0)) * (i + 0.5) / nx, a.at(1) + (b.at(1) - a.at(1)) * (j + 0.5) / ny)
      if dir == "in" { b-in(p, radius: size, color: color) } else { b-out(p, radius: size, color: color) }
    }
  }
  if label != none { draw.content((calc.max(a.at(0), b.at(0)) + 0.25, calc.max(a.at(1), b.at(1)) - 0.1), text(fill: color, label)) }
}
// Dây dẫn thẳng a–b dạng thanh kim loại có dòng điện I (mũi tên giữa, nhãn cạnh mũi tên).
#let current-wire(a, b, label: $I$, width: 0.12, color: pal.current) = {
  let v = normal(a, b)
  draw.line(add(a, v, s: width / 2), add(b, v, s: width / 2), add(b, v, s: -width / 2), add(a, v, s: -width / 2),
    close: true, fill: materials.metal, stroke: 0.4pt + luma(40%))
  let m = mid(a, b)
  let u = unit(a, b)
  let o = add(m, v, s: width / 2 + 0.15)
  draw.line(add(o, u, s: -0.3), add(o, u, s: 0.3), stroke: 1pt + color, mark: head(color, size: 0.7))
  if label != none { draw.content(add(o, v, s: 0.2), text(fill: color, label)) }
}
// Dòng điện vuông góc mặt phẳng hình (dây cắt ngang): vào hoặc ra, có nhãn.
#let wire-section(p, dir: "out", radius: 0.16, label: none, pos: "south-east") = {
  draw.circle(p, radius: radius, fill: materials.metal, stroke: 0.6pt + luma(30%))
  if dir == "in" { b-in(p, radius: radius * 0.6, color: pal.current) } else { b-out(p, radius: radius * 0.6, color: pal.current) }
  tag(p, label, pos: pos, gap: radius + 0.05)
}

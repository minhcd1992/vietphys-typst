// vp-draw — cơ học và các ký hiệu đo, theo phong cách izaak.
#import "core.typ": *
#import "math.typ": arc-mark

// ---- Vector -----------------------------------------------------------------
// Mũi tên a → b. kind chọn màu theo ý nghĩa: "force", "velocity", "accel", "momentum", "disp",
// "vector", "efield", "bfield", "current"; color ghi đè màu. faded: true vẽ nhạt (thành phần, hình chiếu).
// Nhãn mặc định đặt sau đầu mũi tên; pos đặt nhãn quanh đầu mũi tên; at (0..1) đặt nhãn dọc thân mũi tên.
#let vector(a, b, label: none, kind: "force", color: auto, width: 1.4pt, pos: auto, at: none,
  side: 1, dash: none, faded: false, halo: false, head-size: auto) = {
  let c = if color != auto { color } else { pal.at(kind, default: pal.force) }
  if faded { c = c.lighten(60%) }
  let hs = if head-size == auto { 0.55 + 0.3 * width / 1pt } else { head-size }
  draw.line(a, b, stroke: (paint: c, thickness: width, dash: dash, cap: "round"), mark: head(c, size: hs))
  if label != none {
    let body = text(fill: c, label)
    if halo { body = _halo(body) }
    if at != none {
      draw.content(add(lerp(a, b, at), normal(a, b), s: side * 0.22), body)
    } else if pos == auto {
      draw.content(add(b, unit(a, b), s: 0.25), body)
    } else { tag(b, body, pos: pos) }
  }
}
#let force(a, b, label: none, ..args) = vector(a, b, label: label, kind: "force", ..args)
#let velocity(a, b, label: none, ..args) = vector(a, b, label: label, kind: "velocity", ..args)
#let accel(a, b, label: none, ..args) = vector(a, b, label: label, kind: "accel", ..args)
// Thành phần/hình chiếu của vector: cùng màu nhưng nhạt, nét mảnh hơn.
#let component(a, b, label: none, kind: "force", ..args) = vector(a, b, label: label, kind: kind, faded: true, width: 1pt, ..args)

// ---- Đo đạc --------------------------------------------------------------------
// Đường đo a ↔ b (kiểu `ell` của izaak): mũi tên hai đầu mảnh, nhãn nằm trên đường, nền trắng cắt nét.
// offset dời đường đo theo pháp tuyến trái (âm: bên phải); ext: true vẽ đường gióng từ điểm đo
// (bắt đầu cách điểm đo `gap`); at: vị trí nhãn dọc đường đo (0..1).
#let measure(a, b, label, offset: 0, ext: auto, gap: 0.08, at: 0.5, color: black, width: 0.4pt) = {
  let n = normal(a, b)
  let s = if offset < 0 { -1 } else { 1 }
  let (p, q) = (add(a, n, s: offset), add(b, n, s: offset))
  if (ext == auto and offset != 0) or ext == true {
    for x in (a, b) { draw.line(add(x, n, s: gap * s), add(x, n, s: offset + 0.08 * s), stroke: 0.3pt + luma(55%)) }
  }
  draw.line(p, q, stroke: width + color, mark: head(color, size: 0.6, start: true))
  if label != none { draw.content(lerp(p, q, at), text(fill: color, label), frame: "rect", fill: white, stroke: none, padding: 0.03) }
}
// Giữ tên cũ: đường kích thước có đường gióng, nhãn đặt cạnh đường đo.
#let dimension(a, b, label, offset: 0.4, ext: true, gap: 0.08, color: black) = {
  let n = normal(a, b)
  let s = if offset < 0 { -1 } else { 1 }
  if ext and offset != 0 {
    for p in (a, b) { draw.line(add(p, n, s: gap * s), add(p, n, s: offset + 0.1 * s), stroke: 0.3pt + luma(55%)) }
  }
  draw.line(add(a, n, s: offset), add(b, n, s: offset), stroke: 0.4pt + color, mark: head(color, size: 0.6, start: true))
  let pos = if calc.abs(n.at(0)) > calc.abs(n.at(1)) {
    if n.at(0) * s > 0 { "east" } else { "west" }
  } else if n.at(1) * s > 0 { "north" } else { "south" }
  tag(add(mid(a, b), n, s: offset), label, pos: pos, gap: 0.08)
}
// Độ dời một chiều (kiểu `dx` của izaak): mũi tên mảnh màu xanh đậm, nhãn trên đường.
#let displacement(a, b, label, color: pal.dark-blue, at: 0.45) = {
  draw.line(a, b, stroke: 0.4pt + color, mark: head(color, size: 0.6))
  draw.line(add(a, normal(a, b), s: -0.07), add(a, normal(a, b), s: 0.07), stroke: 0.4pt + color)
  if label != none { draw.content(lerp(a, b, at), text(fill: color, label), frame: "rect", fill: white, stroke: none, padding: 0.03) }
}
// Trục số: mũi tên đậm a → b, nhãn ở đầu.
#let axis(a, b, label: none, color: black, width: 0.9pt) = {
  draw.line(a, b, stroke: width + color, mark: head(color, size: 0.9))
  if label != none { draw.content(add(b, unit(a, b), s: 0.25), label) }
}
// Vạch chia tại p, vuông góc hướng `angle` của trục; nhãn đặt phía `pos`.
#let tick(p, label: none, angle: 0deg, size: 0.1, pos: "north", width: 0.9pt) = {
  let v = (-calc.sin(angle) * size, calc.cos(angle) * size)
  draw.line(add(p, v, s: -1), add(p, v), stroke: width)
  tag(p, label, pos: pos, gap: size + 0.05)
}
// Cung góc có mũi tên (kiểu izaak cho θ): quét từ `from` đến `to` quanh o.
#let angle-arrow(o, radius, from, to, label: none, color: pal.angle, label-gap: 0.22, width: 0.7pt) = {
  draw.arc(o, start: from, stop: to, radius: radius, anchor: "origin", stroke: width + color, mark: head(color, size: 0.6))
  if label != none { draw.content(polar(radius + label-gap, (from + to) / 2, origin: o), text(fill: color, label)) }
}
// Đường phụ nét đứt mảnh có màu (mydashed).
#let guide(..points, color: pal.disp) = draw.line(..points.pos(), stroke: thin-dashed(color: color))

// ---- Nền, tường, trần ------------------------------------------------------------
// Khối nền gạch chéo có gradient (style `ground` của izaak). Mặt tiếp xúc là đoạn a–b;
// khối nằm về phía `side` ("down", "up", "left", "right") với bề dày `depth`. border: vẽ đường mặt tiếp xúc.
#let ground(a, b, depth: 0.25, side: "down", border: true) = {
  let v = (down: (0, -depth), up: (0, depth), left: (-depth, 0), right: (depth, 0)).at(side)
  let pts = (a, b, add(b, v), add(a, v))
  draw.line(..pts, close: true, fill: materials.ground, stroke: none)
  draw.line(..pts, close: true, fill: hatch(), stroke: none)
  if border { draw.line(a, b, stroke: 0.8pt) }
}
// Sàn và tường gặp nhau tại góc `corner` (thường gặp với lò xo nằm ngang).
#let floor-wall(corner, width: 3, height: 1, depth: 0.25) = {
  ground(corner, add(corner, (width, 0)), depth: depth)
  ground(add(corner, (0, height)), add(corner, (0, -depth)), depth: depth, side: "left", border: false)
  draw.line(add(corner, (0, height)), corner, add(corner, (width, 0)), stroke: 0.8pt)
}
// Giữ tên cũ: giá đỡ mảnh có gạch chéo (trần, tường) theo phía `side`.
#let support(a, b, side: "up", n: 8, size: 0.14, stroke: 0.8pt) = {
  draw.line(a, b, stroke: stroke)
  let v = (up: (-size, size), down: (-size, -size), left: (-size, size), right: (size, size)).at(side)
  for i in range(n + 1) { let p = lerp(a, b, i / n); draw.line(p, add(p, v), stroke: 0.5pt) }
}

// ---- Vật, dây, ròng rọc -----------------------------------------------------------
// Vật hình hộp tâm c, bo góc, gradient nhẹ, viền đỏ sẫm (style `mass` của izaak); xoay được.
#let mass(c, w: 0.8, h: 0.6, angle: 0deg, label: none, fill: auto, stroke: auto, radius: 0.04) = {
  let f = if fill == auto { materials.mass } else { fill }
  let st = if stroke == auto { 0.8pt + pal.mass } else { stroke }
  if angle == 0deg {
    draw.rect(add(c, (-w / 2, -h / 2)), add(c, (w / 2, h / 2)), radius: radius, fill: f, stroke: st)
  } else {
    let corners = ((-w / 2, -h / 2), (w / 2, -h / 2), (w / 2, h / 2), (-w / 2, h / 2)).map(p => rotate-point(add(c, p), angle, origin: c))
    draw.line(..corners, close: true, fill: f, stroke: st)
  }
  if label != none { draw.content(c, text(fill: pal.mass, label)) }
}
// Dây: nét nâu dày có viền tối (rope). Đi qua các điểm.
#let rope(..points, width: 1.6pt) = {
  let ps = points.pos()
  draw.line(..ps, stroke: (paint: pal.rope.darken(55%), thickness: width + 0.5pt, cap: "round", join: "round"))
  draw.line(..ps, stroke: (paint: pal.rope, thickness: width, cap: "round", join: "round"))
}
// Ròng rọc tâm c: đĩa gradient xanh xám, viền xanh đậm, trục hình vòng. mount: "up" vẽ giá treo lên trên.
#let pulley(c, radius: 0.32, mount: none, hang: none, fill: auto) = {
  let m = if hang == true { "up" } else { mount }
  if m != none {
    let v = (up: (0, 1), down: (0, -1), left: (-1, 0), right: (1, 0)).at(m)
    let tip = add(c, v, s: radius + 0.45)
    draw.line(add(c, (-v.at(1) * 0.07, v.at(0) * 0.07)), add(tip, (-v.at(1) * 0.05, v.at(0) * 0.05)),
      add(tip, (v.at(1) * 0.05, -v.at(0) * 0.05)), add(c, (v.at(1) * 0.07, -v.at(0) * 0.07)), close: true,
      fill: materials.dark-metal, stroke: 0.5pt + pal.pulley)
  }
  draw.circle(c, radius: radius, fill: if fill == auto { materials.pulley } else { fill }, stroke: 1.1pt + pal.pulley)
  draw.circle(c, radius: radius * 0.18, fill: white, stroke: 1.1pt + pal.pulley)
}

// ---- Lò xo ------------------------------------------------------------------------
// Lò xo nối a với b. style: "coil" (vòng xoắn nhìn nghiêng như snake=coil), "zigzag" hoặc "wave".
//   turns: số vòng; width: bề rộng; lead: đoạn thẳng ở mỗi đầu; coil: độ cuộn (0 gần hình sin)
//   depth: true vẽ nhạt nửa sau mỗi vòng.
#let spring(a, b, turns: 10, width: 0.3, lead: 0.2, style: "coil", coil: 0.7, depth: false,
  stroke: auto, back-stroke: 0.6pt + luma(65%)) = {
  let stroke = if stroke == auto { (paint: pal.spring, thickness: 1pt, cap: "round", join: "round") } else { stroke }
  let u = unit(a, b)
  let v = normal(a, b)
  let L = dist(a, b) - 2 * lead
  let r = width / 2
  let p1 = add(a, u, s: lead)
  let at(along, across) = add(add(p1, u, s: along), v, s: across)
  let pts = if style == "zigzag" {
    range(4 * turns + 1).map(k => (at(L * k / (4 * turns), r * calc.sin(k * calc.pi / 2)), false))
  } else if style == "wave" {
    let n = 24 * turns
    range(n + 1).map(k => (at(L * k / n, r * calc.sin(2 * calc.pi * turns * k / n)), false))
  } else {
    // Dọc trục: tiến đều + e(1 - cos θ); ngang: r sin θ; θ bắt đầu từ π để hai đầu nằm trên trục.
    let e = coil * r
    let n = 32 * turns
    range(n + 1).map(k => {
      let t = k / n
      let th = calc.pi + 2 * calc.pi * turns * t
      (at((L - 2 * e) * t + e * (1 - calc.cos(th)), r * calc.sin(th)), calc.cos(th) > 0)
    })
  }
  draw.line(a, pts.first().at(0), stroke: stroke)
  if depth {
    let groups = ()
    for i in range(pts.len() - 1) {
      let back = pts.at(i).at(1)
      if groups.len() == 0 or groups.last().at(0) != back { groups.push((back, (pts.at(i).at(0),))) }
      groups.last().at(1).push(pts.at(i + 1).at(0))
    }
    for (_, ps) in groups.filter(g => g.at(0)) { draw.line(..ps, stroke: back-stroke) }
    for (_, ps) in groups.filter(g => not g.at(0)) { draw.line(..ps, stroke: stroke) }
  } else {
    draw.line(..pts.map(p => p.at(0)), stroke: stroke)
  }
  draw.line(pts.last().at(0), b, stroke: stroke)
}

// ---- Mặt phẳng nghiêng, con lắc --------------------------------------------------
// Mặt phẳng nghiêng: chân dốc tại origin, đáy dài base, góc angle; khối nêm gradient gạch chéo.
#let incline(origin: (0, 0), base: 4, angle: 30deg, label: auto, fill: auto, hatch: true) = {
  let top = add(origin, (base, base * calc.tan(angle)))
  let right = add(origin, (base, 0))
  draw.line(origin, right, top, close: true, fill: if fill == auto { materials.ground } else { fill }, stroke: none)
  if hatch { draw.line(origin, right, top, close: true, fill: hatch-fill(), stroke: none) }
  draw.line(origin, right, top, close: true, stroke: 0.8pt)
  arc-mark(origin, 0.6, 0deg, angle, label: if label == auto { $alpha$ } else { label }, label-gap: 0.22)
}
// Điểm cách chân dốc s dọc mặt dốc và cao h vuông góc mặt dốc.
#let incline-point(origin, angle, s, h: 0) = add(add(origin, (s * calc.cos(angle), s * calc.sin(angle))), (-calc.sin(angle), calc.cos(angle)), s: h)
// Con lắc đơn: điểm treo pivot, dây dài length lệch góc angle so với phương thẳng đứng.
// Trả về vị trí vật qua hàm `pendulum-bob`; vẽ trần, đường thẳng đứng nét đứt, dây, cung góc và quả nặng.
#let pendulum-bob(pivot, length, angle) = add(pivot, (length * calc.sin(angle), -length * calc.cos(angle)))
#let pendulum(pivot, length: 2, angle: 25deg, radius: 0.15, label: $theta$, ceiling: 0.6, fill: auto, arc-radius: auto) = {
  if ceiling != none { ground(add(pivot, (-ceiling, 0)), add(pivot, (ceiling, 0)), depth: 0.15, side: "up") }
  guide(pivot, add(pivot, (0, -length * 1.05)))
  let bob = pendulum-bob(pivot, length, angle)
  draw.line(pivot, bob, stroke: 0.9pt + pal.rope.darken(30%))
  if label != none {
    let (from, to) = if angle >= 0deg { (-90deg, -90deg + angle) } else { (-90deg + angle, -90deg) }
    angle-arrow(pivot, if arc-radius == auto { calc.min(0.7, 0.3 * length) } else { arc-radius }, from, to, label: label)
  }
  draw.circle(bob, radius: radius, fill: if fill == auto { materials.mass } else { fill }, stroke: 0.8pt + pal.mass)
}

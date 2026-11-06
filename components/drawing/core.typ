// vp-draw — lõi: canvas, bảng màu, phép tính điểm và cách đặt nhãn.
// Mọi hàm vẽ trả về phần tử CeTZ, dùng bên trong `vp-canvas({ ... })` hoặc `cetz.canvas({ ... })`.
#import "@preview/cetz:0.5.2"
#import cetz: draw
#import "style.typ": *

// Bảng màu nét (màu đậm) và nền (màu nhạt) dùng chung cho các hình.
#let colors = (
  red: rgb("#dc2626"), blue: rgb("#2563eb"), green: rgb("#16a34a"), orange: rgb("#ea580c"),
  purple: rgb("#9333ea"), amber: rgb("#d97706"), gray: luma(55%), slate: rgb("#334155"),
)
#let fills = (
  red: rgb("#fee2e2"), blue: rgb("#dbeafe"), green: rgb("#dcfce7"), orange: rgb("#fed7aa"),
  amber: rgb("#fef3c7"), gray: rgb("#e2e8f0"), sky: rgb("#e0f2fe"),
)
#let dashed = (dash: "dashed", thickness: 0.5pt, paint: luma(55%))
#let arrow-mark(color, scale: 0.6) = head(color, size: scale / 0.6 * 0.8)

// Canvas CeTZ với cỡ chữ nhãn thống nhất; `length` là độ dài một đơn vị tọa độ.
#let vp-canvas(body, length: 1cm, text-size: 8pt, ..args) = {
  set text(size: text-size)
  cetz.canvas(length: length, ..args, body)
}
// Bọc hình vào figure; mặc định không đánh số.
#let vp-figure(body, caption: none, numbering: none, ..args) = figure(
  body, caption: caption, kind: image, numbering: numbering, supplement: if numbering == none { none } else { auto }, ..args,
)

// ---- Phép tính điểm 2D -------------------------------------------------------
#let add(p, v, s: 1) = (p.at(0) + v.at(0) * s, p.at(1) + v.at(1) * s)
#let sub(a, b) = (a.at(0) - b.at(0), a.at(1) - b.at(1))
#let lerp(a, b, t) = (a.at(0) + (b.at(0) - a.at(0)) * t, a.at(1) + (b.at(1) - a.at(1)) * t)
#let mid(a, b) = lerp(a, b, 0.5)
#let dist(a, b) = calc.sqrt(calc.pow(b.at(0) - a.at(0), 2) + calc.pow(b.at(1) - a.at(1), 2))
#let unit(a, b) = {
  let l = dist(a, b)
  ((b.at(0) - a.at(0)) / l, (b.at(1) - a.at(1)) / l)
}
// Pháp tuyến bên trái của hướng a → b.
#let normal(a, b) = {
  let u = unit(a, b)
  (-u.at(1), u.at(0))
}
#let polar(r, angle, origin: (0, 0)) = (origin.at(0) + r * calc.cos(angle), origin.at(1) + r * calc.sin(angle))
#let rotate-point(p, angle, origin: (0, 0)) = {
  let (x, y) = sub(p, origin)
  (origin.at(0) + x * calc.cos(angle) - y * calc.sin(angle), origin.at(1) + x * calc.sin(angle) + y * calc.cos(angle))
}

// ---- Nhãn --------------------------------------------------------------------
// pos: hướng đặt nhãn so với điểm: "north", "south", "east", "west", "north-east", ... hoặc "center".
#let _dirs = (
  center: ((0, 0), "center"),
  north: ((0, 1), "south"), south: ((0, -1), "north"), east: ((1, 0), "west"), west: ((-1, 0), "east"),
  north-east: ((0.71, 0.71), "south-west"), north-west: ((-0.71, 0.71), "south-east"),
  south-east: ((0.71, -0.71), "north-west"), south-west: ((-0.71, -0.71), "north-east"),
)
#let tag(p, body, pos: "south", gap: 0.1) = {
  if body == none { return }
  let (v, anchor) = _dirs.at(pos)
  draw.content(add(p, v, s: gap), body, anchor: anchor)
}
// Nhãn đặt ở trung điểm đoạn a–b, lệch `offset` theo pháp tuyến trái (âm: bên phải).
#let tag-segment(a, b, body, offset: 0.2) = draw.content(add(mid(a, b), normal(a, b), s: offset), body)

// Nhãn nằm trên nét vẽ, nền trắng cắt nét (như fill=white, inner sep=0 của TikZ).
#let on-line(p, body, pad: 0.03) = draw.content(p, body, frame: "rect", fill: white, stroke: none, padding: pad)

// Chấm điểm có nhãn.
#let dot(p, label: none, pos: "south", radius: 0.045, fill: black) = {
  draw.circle(p, radius: radius, fill: fill, stroke: none)
  tag(p, label, pos: pos, gap: radius + 0.06)
}

// Mẫu hàm f trên [a, b] thành danh sách điểm (x, f(x)).
#let sample(f, a, b, n: 60) = range(n + 1).map(i => {
  let x = a + (b - a) * i / n
  (x, f(x))
})

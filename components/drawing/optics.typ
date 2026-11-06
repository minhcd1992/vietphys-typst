// vp-draw — quang học và sóng, theo phong cách izaak.
#import "core.typ": *
#import "electro.typ": marked-line

// Khối trong suốt (thủy tinh, nước) qua các điểm, tô gradient.
#let glass(..points, fill: auto, stroke: 0.6pt + rgb(70, 100, 170)) = draw.line(..points.pos(), close: true,
  fill: if fill == auto { materials.glass } else { fill }, stroke: stroke)

// Thấu kính mỏng tâm c, cao height, vẽ hình dạng thật (hai mặt cầu) tô gradient thủy tinh.
// kind: "converging" (hội tụ, hai mặt lồi) hoặc "diverging" (phân kì, hai mặt lõm); symbol: true vẽ kiểu ký hiệu mũi tên.
#let lens(c, height: 2, kind: "converging", thickness: 0.3, label: none, symbol: false, color: rgb(70, 100, 170)) = {
  let h = height / 2
  if symbol {
    draw.line(add(c, (0, -h)), add(c, (0, h)), stroke: 1.2pt + color,
      mark: (start: "stealth", end: "stealth", fill: color, scale: 0.6, reverse: kind != "converging"))
  } else {
    let t = thickness / 2
    let n = 24
    let arcpts(sign, side) = range(n + 1).map(i => {
      let y = -h + 2 * h * i / n
      let bulge = t * (1 - calc.pow(y / h, 2))
      let x = if kind == "converging" { side * bulge } else { side * (0.06 + t - bulge) }
      add(c, (x, y))
    })
    let right = arcpts(1, 1)
    let left = arcpts(1, -1).rev()
    draw.line(..right, ..left, close: true, fill: materials.glass, stroke: 0.6pt + color)
  }
  tag(add(c, (0, h)), label, pos: "north", gap: 0.12)
}
// Gương phẳng a–b, mặt sau gạch chéo; concave/convex xấp xỉ bằng cung tròn nếu radius khác none.
#let mirror(a, b, color: pal.spring, n: 10) = {
  draw.line(a, b, stroke: 1.4pt + color)
  let v = normal(b, a)
  let u = unit(a, b)
  for i in range(n + 1) {
    let p = lerp(a, b, i / n)
    draw.line(p, add(add(p, v, s: 0.14), u, s: -0.1), stroke: 0.5pt + color)
  }
}
// Tia sáng qua các điểm, mũi tên giữa mỗi đoạn.
#let ray(..points, color: pal.ray, width: 0.9pt, dash: none) = {
  let ps = points.pos()
  for i in range(ps.len() - 1) { marked-line(ps.at(i), ps.at(i + 1), color: color, width: width, dash: dash) }
}
// Pháp tuyến nét đứt qua điểm tới p theo góc angle, dài 2·length.
#let normal-line(p, angle: 90deg, length: 0.8, color: luma(40%)) = {
  let v = (calc.cos(angle), calc.sin(angle))
  draw.line(add(p, v, s: -length), add(p, v, s: length), stroke: (paint: color, thickness: 0.4pt, dash: (2pt, 2pt)))
}
// Vật/ảnh dạng mũi tên đứng tại chân p, cao height (âm: ngược); ảnh ảo dùng dash: "dashed".
#let object-arrow(p, height, label: none, color: pal.force, dash: none) = {
  draw.line(p, add(p, (0, height)), stroke: (paint: color, thickness: 1.3pt, dash: dash, cap: "round"), mark: head(color, size: 0.9))
  tag(add(p, (0, height)), if label == none { none } else { text(fill: color, label) }, pos: if height > 0 { "north" } else { "south" })
}

// Sóng hình sin dọc đoạn a–b: bước sóng wavelength, biên độ amplitude, pha phase (độ hoặc rad qua deg).
#let wave(a, b, wavelength: 1, amplitude: 0.3, phase: 0deg, samples: 120, color: pal.disp, width: 1pt, dash: none) = {
  let u = unit(a, b)
  let v = normal(a, b)
  let L = dist(a, b)
  draw.line(..range(samples + 1).map(i => {
    let s = L * i / samples
    add(add(a, u, s: s), v, s: amplitude * calc.sin(360deg * s / wavelength + phase))
  }), stroke: (paint: color, thickness: width, dash: dash, join: "round"))
}
// Sóng dừng trên dây a–b với n bó: vẽ các đường bao ở nhiều thời điểm (nhạt dần) và nút sóng.
#let standing-wave(a, b, n: 3, amplitude: 0.35, times: (1, 0.6, 0.2, -0.2, -0.6, -1), color: pal.disp, nodes: true) = {
  let L = dist(a, b)
  for (k, f) in times.enumerate() {
    let c = if calc.abs(f) == 1 { color } else { color.lighten(65%) }
    wave(a, b, wavelength: 2 * L / n, amplitude: amplitude * f, color: c, width: if calc.abs(f) == 1 { 1.1pt } else { 0.6pt })
  }
  if nodes { for i in range(n + 1) { draw.circle(lerp(a, b, i / n), radius: 0.045, fill: black, stroke: none) } }
}

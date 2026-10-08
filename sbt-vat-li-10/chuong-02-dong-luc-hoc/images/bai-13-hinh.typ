#import "@preview/cetz:0.3.3": canvas, draw

#let blue = rgb("1976d2")
#let orange = rgb("b45309")
#let dashed = (paint: luma(55%), thickness: 0.6pt, dash: "dashed")
#let arrow(a, b, label: none, at: none, anchor: "south", color: blue) = {
  draw.line(a, b, stroke: 0.9pt + color, mark: (end: ">"))
  if label != none { draw.content(if at == none { b } else { at }, label, anchor: anchor) }
}
#let curve(center, radius, start, end, stroke: 0.7pt) = draw.line(
  ..range(49).map(i => (
    center.at(0) + radius * calc.cos(start + (end - start) * i / 48),
    center.at(1) + radius * calc.sin(start + (end - start) * i / 48),
  )), stroke: stroke,
)
#let block-at(x, y, label: [$m$]) = {
  draw.rect((x - 0.5, y), (x + 0.5, y + 0.6), fill: luma(95%), stroke: 0.8pt)
  draw.content((x, y + 0.3), label)
}
#let incline(origin, label, downward: false, caption: none, tilt: 30deg) = {
  let point(x, y) = (origin.at(0) + x * calc.cos(tilt) - y * calc.sin(tilt),
    origin.at(1) + x * calc.sin(tilt) + y * calc.cos(tilt))
  draw.line(point(0, 0), point(3.4, 0), stroke: 1pt)
  draw.line(point(0, 0), (origin.at(0) + 3.2, origin.at(1)), stroke: dashed)
  draw.line(point(1.3, 0), point(2.1, 0), point(2.1, 0.55), point(1.3, 0.55), point(1.3, 0), fill: luma(95%), stroke: 0.8pt)
  draw.content(point(1.7, 0.28), [$m$])
  curve(origin, 0.8, 0deg, tilt)
  draw.content((origin.at(0) + 1.1, origin.at(1) + 0.17), label)
  if downward { arrow(point(1.5, 0.9), point(0.5, 0.9), label: [$bold(v)$], at: point(0.9, 1.02)) }
  else { arrow(point(1.5, 0.9), point(2.5, 0.9), label: [$bold(v)$], at: point(2, 1.02)) }
  if caption != none { draw.content((origin.at(0) + 1.5, origin.at(1) - 0.4), caption) }
}

// Hình dữ kiện trong đề; hình lực và đồ thị lời giải chỉ gọi bên trong sol.
#let bai-13-hinh(id) = {
  set text(font: "Times New Roman", size: 10pt)
  canvas({
    import draw: *
    if id == "keo-xien" {
      line((-1.6, 0), (3, 0), stroke: 0.9pt)
      block-at(0, 0)
      line((0.5, 0.4), (2.6, 0.4), stroke: dashed)
      arrow((0.5, 0.4), (2.5, 1.55), label: [$bold(F)$], anchor: "west")
      curve((0.5, 0.4), 0.75, 0deg, 30deg)
      content((1.5, 0.65), [$alpha$])
      arrow((-1, 1.05), (0.2, 1.05), label: [$bold(v)$], at: (-0.4, 1.15))
    } else if id == "day-xien" {
      line((-2, 0), (2, 0), stroke: 0.9pt)
      block-at(0, 0)
      arrow((-1.95, 1.4), (-0.5, 0.3), label: [$bold(F)$], at: (-1.5, 0.65), anchor: "east")
      line((-1.95, 1.4), (-0.1, 1.4), stroke: dashed)
      curve((-1.95, 1.4), 0.6, -37deg, 0deg)
      content((-1.05, 1.17), [$37 degree$])
      arrow((0.7, 0.8), (1.7, 0.8), label: [$bold(v)$], at: (1.2, 0.9))
    } else if id == "doc-hai-luot" {
      incline((0, 0), [$30 degree$], caption: [Lượt lên])
      incline((5, 0), [$30 degree$], downward: true, caption: [Lượt xuống])
    } else if id == "xe-xuong-doc" {
      incline((0, 0), [$8 degree$], tilt: 25deg, downward: true, caption: [Sơ đồ dốc (không theo tỉ lệ)])
    } else if id == "cua-tron" {
      curve((0, 0), 1.2, 0deg, 360deg, stroke: dashed)
      line((0, 0), (1.2, 0), stroke: 0.7pt)
      content((0.55, -0.12), [$R$], anchor: "north")
      content((-0.1, 0), [O], anchor: "east")
      rect((1.06, -0.23), (1.34, 0.23), fill: luma(90%))
      arrow((1.2, 0.25), (1.2, 1.1), label: [$bold(v)$], anchor: "west")
      content((0, -1.55), [Nhìn từ trên])
    } else if id == "ep-tuong" {
      line((0.5, -0.4), (0.5, 1.7), stroke: 2pt + luma(65%))
      rect((0.05, 0.25), (0.5, 1.05), fill: luma(95%), stroke: 0.8pt)
      content((0.28, 0.65), [$m$])
      arrow((-1.7, 0.65), (0.05, 0.65), label: [$bold(F)$], at: (-0.8, 0.8))
      content((0.65, 1.25), [Tường], anchor: "west")
    } else if id == "bang-tai" or id == "bang-tai-luc" {
      line((-2.2, 0), (2.2, 0), (2.2, -0.22), (-2.2, -0.22), (-2.2, 0), stroke: 0.8pt)
      block-at(0, 0)
      arrow((0.7, -0.65), (2, -0.65), label: [$bold(v)_0$], at: (1.35, -0.55))
      content((-1.4, -0.65), [Băng tải])
      if id == "bang-tai" {
        content((0, 1.05), [Ban đầu: $v_("hàng") = 0$ so với đất])
      } else {
        arrow((0, 0.3), (0, 1.7), label: [$bold(N)$])
        arrow((0, 0.3), (0, -1.3), label: [$m bold(g)$], anchor: "north", color: orange)
        arrow((0.5, 0.3), (1.8, 0.3), label: [$bold(f)_t$], at: (1.3, 0.42))
      }
    } else if id == "bon-do-thi" {
      // Cùng thang định tính; điểm đầy là ngưỡng còn nghỉ, điểm rỗng là đầu nhánh trượt.
      for k in range(4) {
        let x = k * 3.6
        arrow((x, 0), (x + 2.9, 0), color: black)
        arrow((x, 0), (x, 2.35), color: black)
        content((x + 2.9, -0.1), [$F$], anchor: "north")
        content((x - 0.1, 2.2), [$f$], anchor: "east")
        content((x - 0.05, -0.12), [O], anchor: "north-east")
        content((x + 1.35, -0.5), strong(("A", "B", "C", "D").at(k)))
        if k == 0 {
          line((x + 1.1, 0), (x + 1.1, 2), stroke: 1pt + blue)
        } else if k == 1 {
          line((x, 0), (x + 1.5, 1.9), stroke: 1pt + blue)
          circle((x + 1.5, 1.9), radius: 0.045, fill: blue, stroke: none)
          line((x + 1.5, 1.2), (x + 2.7, 1.2), stroke: 1pt + blue)
          curve((x + 1.5, 1.2), 0.045, 0deg, 360deg, stroke: 0.8pt + blue)
        } else if k == 2 {
          line(..range(41).map(j => (x + j / 16, 0.3 * calc.pow(j / 16, 2))), stroke: 1pt + blue)
        } else {
          line((x, 1.9), (x + 2.7, 1.9), stroke: 1pt + blue)
        }
      }
    } else if id == "do-thi-ma-sat" {
      let sx = 0.065
      let sy = 0.065
      arrow((0, 0), (5.6, 0), color: black)
      arrow((0, 0), (0, 3), color: black)
      content((5.75, 0), [$F$ (N)], anchor: "west")
      content((-0.1, 3), [$f$ (N)], anchor: "south")
      content((-0.15, -0.1), [O])
      for (f, label) in ((20, [20]), (39.2, [39,2]), (50, [50]), (80, [80])) {
        line((f * sx, -0.06), (f * sx, 0.06))
        content((f * sx, -0.15), label, anchor: "north")
      }
      for (f, label) in ((29.4, [29,4]), (39.2, [39,2])) {
        line((0, f * sy), (39.2 * sx, f * sy), stroke: dashed)
        content((-0.12, f * sy), label, anchor: "east")
      }
      line((39.2 * sx, 0), (39.2 * sx, 39.2 * sy), stroke: dashed)
      line((0, 0), (39.2 * sx, 39.2 * sy), stroke: 1pt + blue)
      circle((39.2 * sx, 39.2 * sy), radius: 0.05, fill: blue, stroke: none)
      line((39.2 * sx, 29.4 * sy), (80 * sx, 29.4 * sy), stroke: 1pt + blue)
      curve((39.2 * sx, 29.4 * sy), 0.05, 0deg, 360deg, stroke: 0.8pt + blue)
    } else if id == "thi-nghiem" {
      line((-1.4, 0), (4.5, 0), stroke: 0.8pt)
      block-at(0, 0)
      line((0.5, 0.3), (1.1, 0.3), stroke: 0.8pt)
      rect((1.1, 0.12), (2.5, 0.48), fill: luma(95%))
      content((1.8, 0.82), [Cảm biến lực])
      arrow((2.5, 0.3), (4, 0.3), label: [Kéo ngang], at: (3.45, 0.5))
      content((0, -0.4), [Gỗ trượt đều])
    } else if id == "do-thi-phanh" {
      let sx = 0.85
      let sy = 0.1
      arrow((0, 0), (5, 0), color: black)
      arrow((0, 0), (0, 3), color: black)
      content((5.15, 0), [$t$ (s)], anchor: "west")
      content((-0.12, 3), [$v$ (m/s)], anchor: "south")
      content((-0.12, 2.5), [25], anchor: "east")
      content((-0.12, -0.1), [O])
      line((0, 2.5), (25 / 4.9 * sx, 0), stroke: 1pt + orange)
      line((0, 2.5), (25 / 6.86 * sx, 0), stroke: 1pt + blue)
      content((25 / 4.9 * sx, -0.18), [5,10], anchor: "north")
      content((25 / 6.86 * sx, -0.18), [3,64], anchor: "north")
      content((5.35, 2.35), text(fill: orange)[Khóa bánh], anchor: "west")
      content((5.35, 1.9), text(fill: blue)[Phanh lí tưởng], anchor: "west")
    } else if id == "do-thi-keo" {
      let y(f) = (f - 650) / 300
      arrow((0, 0), (5.8, 0), color: black)
      arrow((0, 0), (0, 3.1), color: black)
      content((5.95, 0), [$alpha$ (°)], anchor: "west")
      content((-0.15, 3.1), [$F$ (N)], anchor: "south")
      for (f, label) in ((650, [650]), (800, [800]), (1100, [1100]), (1400, [1400])) {
        content((-0.12, y(f)), label, anchor: "east")
        line((-0.05, y(f)), (0.05, y(f)))
      }
      for a in (0, 20, 40, 60, 80) {
        line((a / 15, -0.05), (a / 15, 0.05))
        content((a / 15, -0.15), [#a], anchor: "north")
      }
      line(..range(81).map(a => (a / 15, y(784 / (calc.cos(a * 1deg) + 0.4 * calc.sin(a * 1deg))))), stroke: 1pt + blue)
      let opt = calc.atan(0.4) / 1deg
      let low = y(784 / calc.sqrt(1.16))
      circle((opt / 15, low), radius: 0.05, fill: blue, stroke: none)
      line((opt / 15, 0), (opt / 15, low), stroke: dashed)
      content((2.8, 1.5), [Cực tiểu: 21,80°; 727,93 N])
      content((2.7, -0.65), [Trục lực bắt đầu tại 650 N])
    } else {
      panic("Chưa có hình Bài 13: " + id)
    }
  })
}

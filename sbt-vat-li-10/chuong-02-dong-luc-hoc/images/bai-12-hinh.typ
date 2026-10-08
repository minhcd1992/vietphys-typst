#import "@preview/cetz:0.3.3": canvas, draw

#let blue = rgb("1976d2")
#let orange = rgb("b45309")
#let dashed = (paint: luma(55%), thickness: 0.6pt, dash: "dashed")

#let arrow(a, b, label: none, at: none, anchor: "south", color: blue) = {
  draw.line(a, b, stroke: 1pt + color, mark: (end: ">"))
  if label != none {
    draw.content(if at == none { b } else { at }, label, anchor: anchor)
  }
}
#let curve(center, radius, start, end, stroke: 0.8pt) = draw.line(
  ..range(73).map(i => (
    center.at(0) + radius * calc.cos(start + (end - start) * i / 72),
    center.at(1) + radius * calc.sin(start + (end - start) * i / 72),
  )), stroke: stroke,
)
#let dot(at) = draw.circle(at, radius: 0.055, fill: black, stroke: none)
#let weight(at, label, width: 0.6) = {
  draw.rect((at.at(0) - width / 2, at.at(1) - 0.5),
    (at.at(0) + width / 2, at.at(1)), fill: luma(95%), stroke: 0.8pt)
  draw.content((at.at(0), at.at(1) - 0.25), label)
}
#let pendulum(release-angle, label, cut: false) = {
  import draw: *
  let pivot = (0, 2.6)
  let bob = (2.4 * calc.sin(release-angle), 2.6 - 2.4 * calc.cos(release-angle))
  line((-0.5, 2.65), (0.5, 2.65), stroke: 1.2pt)
  dot(pivot)
  content((-0.18, 2.35), [O], anchor: "east")
  line(pivot, (0, 0.2), stroke: dashed)
  line(pivot, bob, stroke: 1pt + blue)
  dot(bob)
  content((bob.at(0) + 0.15, bob.at(1)), [$m$], anchor: "west")
  content((bob.at(0) / 2 + 0.16, (bob.at(1) + 2.6) / 2), [$L$], anchor: "west")
  curve(pivot, 0.6, -90deg, -90deg + release-angle)
  content((0.3, 1.76), label)
  curve(pivot, 2.4, -90deg, -90deg + release-angle, stroke: dashed)
  if cut {
    dot((0, 0.2))
    content((-0.16, 0.1), [B], anchor: "east")
    content((0, -0.3), [Dây đứt khi vật qua B])
  }
}
#let symmetric-strings() = {
  import draw: *
  let rise = 2.2 / calc.sqrt(3)
  line((-2.2, rise), (0, 0), (2.2, rise), stroke: 1pt + blue)
  line((0, 0), (0, -0.45), stroke: 0.8pt)
  line((0, 0), (0, 1.6), stroke: dashed)
  dot((0, 0))
  content((-0.2, 0), [C], anchor: "east")
  content((-2.2, rise + 0.15), [A], anchor: "south")
  content((2.2, rise + 0.15), [B], anchor: "south")
  curve((0, 0), 0.65, 30deg, 150deg)
  content((0.22, 0.85), [$theta$])
  weight((0, -0.45), [$m$])
}

// Hình chỉ chứa dữ kiện ở đề; hình lực và đồ thị đáp án được gọi trong sol.
#let bai-12-hinh(id) = {
  set text(font: "Times New Roman", size: 10pt)
  canvas({
    import draw: *
    if id == "den-hai-day" {
      let rise = 2.7 * calc.tan(30deg)
      line((-2.4, -0.6), (-2.4, rise), (3, rise), stroke: 1pt + luma(55%))
      line((-2.4, 0), (0, 0), (2.7, rise), stroke: 1pt + blue)
      line((0, 0), (0, -0.4), stroke: 0.8pt)
      weight((0, -0.4), [$m$])
      dot((0, 0))
      content((-2.25, 0.2), [A])
      content((2.7, rise - 0.2), [B], anchor: "north")
      content((-0.15, 0.15), [O], anchor: "east")
      line((0, 0), (1.4, 0), stroke: dashed)
      curve((0, 0), 0.8, 0deg, 30deg)
      content((1.05, 0.3), [$30 degree$])
    } else if id == "atwood" {
      line((-0.7, 2.7), (0.7, 2.7), stroke: 1pt + luma(55%))
      line((0, 2.7), (0, 2), stroke: 0.8pt)
      curve((0, 1.6), 0.4, 0deg, 360deg)
      curve((0, 1.6), 0.4, 0deg, 180deg, stroke: 1pt + blue)
      dot((0, 1.6))
      line((-0.4, 1.6), (-0.4, 0.4), stroke: 1pt + blue)
      line((0.4, 1.6), (0.4, -0.4), stroke: 1pt + blue)
      weight((-0.4, 0.4), [$m_1$])
      weight((0.4, -0.4), [$m_2$])
    } else if id == "con-lac-dut" {
      pendulum(45deg, [$45 degree$], cut: true)
    } else if id == "con-lac-60" {
      pendulum(60deg, [$60 degree$])
    } else if id == "con-lac-alpha" {
      pendulum(50deg, [$alpha_0$])
    } else if id == "dinh-vong-tron" {
      curve((0, 0), 1.3, 0deg, 360deg, stroke: dashed)
      line((0, 0), (0, 1.3), stroke: 1pt + blue)
      dot((0, 0))
      dot((0, 1.3))
      content((-0.15, 0), [O], anchor: "east")
      content((0.15, 0.65), [$L$], anchor: "west")
      content((-0.15, 1.3), [$m$], anchor: "east")
      arrow((0, 1.3), (1, 1.3), label: [$bold(v)$], at: (0.6, 1.45))
      content((0, -1.6), [Tại đỉnh: $omega = 4 thin "rad/s"$])
    } else if id == "day-vong" {
      let rise = 2.2 * calc.tan(5deg)
      line((-2.2, rise), (2.2, rise), stroke: dashed)
      line((-2.2, rise), (0, 0), (2.2, rise), stroke: 1pt + blue)
      dot((-2.2, rise))
      dot((2.2, rise))
      line((0, 0), (0, -0.55), stroke: 0.8pt)
      content((-2.3, rise + 0.18), [A], anchor: "south")
      content((2.3, rise + 0.18), [B], anchor: "south")
      content((-1.15, rise + 0.2), [$5 degree$])
      content((1.15, rise + 0.2), [$5 degree$])
      weight((0, -0.55), [$m$])
    } else if id == "gia-do" {
      line((0, -0.6), (0, 2.9), stroke: 1.4pt + luma(55%))
      line((0, 0), (2.5, 0), stroke: 2pt + orange)
      line((0, 2.5), (2.5, 0), stroke: 1pt + blue)
      line((2.5, 0), (2.5, -0.45), stroke: 0.8pt)
      weight((2.5, -0.45), [$m$])
      content((-0.15, 0), [A], anchor: "east")
      content((-0.15, 2.5), [B], anchor: "east")
      content((2.65, 0), [C], anchor: "west")
      curve((2.5, 0), 0.7, 135deg, 180deg)
      content((1.5, 0.35), [$45 degree$])
    } else if id == "day-co-khoi-luong" {
      line((-1.2, 0), (5, 0), stroke: 0.8pt + luma(55%))
      rect((-1, 0), (0, 0.8), stroke: 0.8pt, fill: luma(95%))
      content((-0.5, 0.4), [$M$])
      line((0, 0.06), (3.6, 0.06), stroke: 1.6pt + blue)
      dot((1.8, 0.06))
      content((1.8, 0.35), [K])
      content((1.8, -0.35), [$m_d$, $L$])
      arrow((3.6, 0.06), (4.9, 0.06), label: [$bold(F)$], at: (4.4, 0.25))
    } else if id == "cau-loi" {
      curve((0, -2.6), 2.6, 40deg, 140deg, stroke: 1.2pt + luma(55%))
      line((0, -2.6), (0, 0), stroke: dashed)
      dot((0, -2.6))
      content((0.18, -1.4), [$R$], anchor: "west")
      content((-0.15, -2.6), [O], anchor: "east")
      dot((0, 0.12))
      content((-0.15, 0.3), [$m$], anchor: "east")
      arrow((0, 0.12), (1.2, 0.12), label: [$bold(v)$], at: (0.7, 0.3))
    } else if id == "cap-treo" {
      line((-2.3, -1.33), (2.4, 1.39), stroke: 1.8pt + luma(55%))
      dot((0, 0))
      line((0, 0.4), (0, -0.25), stroke: 0.8pt)
      weight((0, -0.25), [$m$], width: 1)
      line((0, 0.4), (2.4, 1.79), stroke: 1pt + blue)
      content((1.3, 1.65), [Dây kéo])
      content((-1.4, -1.35), [Dây tải])
      line((0, 0), (1.5, 0), stroke: dashed)
      curve((0, 0), 0.85, 0deg, 30deg)
      content((1.2, 0.25), [$30 degree$])
    } else if id == "hai-day-theta" {
      symmetric-strings()
    } else if id == "con-lac-non" {
      let radius = 2.4 * calc.sin(60deg)
      let height = 2.4 * calc.cos(60deg)
      let pivot = (0, height)
      line(pivot, (0, 0), stroke: dashed)
      line(pivot, (radius, 0), stroke: 1pt + blue)
      line((0, 0), (radius, 0), stroke: dashed)
      line(..range(73).map(i => (radius * calc.cos(i * 5deg), 0.35 * calc.sin(i * 5deg))), stroke: dashed)
      dot(pivot)
      dot((radius, 0))
      content((radius + 0.16, 0), [$m$], anchor: "west")
      content((radius / 2, height / 2 + 0.2), [$L$], anchor: "south")
      curve(pivot, 0.45, -90deg, -30deg)
      content((0.3, height - 0.68), [$60 degree$])
      content((-0.15, height + 0.1), [O], anchor: "east")
    } else if id == "dam-hai-cap" {
      line((-2.5, 0), (2.5, 0), stroke: 4pt + luma(65%))
      line((0, 0.4), (0, 2.5), stroke: 2pt + luma(55%))
      line((-2.3, 0), (0, 2.3), (2.3, 0), stroke: 1pt + blue)
      curve((-2.3, 0), 0.6, 0deg, 45deg)
      curve((2.3, 0), 0.6, 135deg, 180deg)
      content((-1.45, 0.26), [$alpha$])
      content((1.45, 0.26), [$alpha$])
      content((0, -0.35), [Dầm khối lượng $m$])
    } else if id == "thang-may-luc" {
      dot((0, 0))
      arrow((0, 0), (0, 1.7), label: [$bold(F)_h$])
      arrow((0, 0), (0, -1.1), label: [$M bold(g)$], anchor: "north", color: orange)
      content((0.2, 0), [Cabin và người], anchor: "west")
      dot((3.8, 0))
      arrow((3.8, 0), (3.8, 1.5), label: [$bold(N)$])
      arrow((3.8, 0), (3.8, -1), label: [$m bold(g)$], anchor: "north", color: orange)
      content((4, 0), [Người], anchor: "west")
    } else if id == "do-thi-luc-cang" {
      let point(angle-deg, tension) = (angle-deg / 30, tension / 7.5)
      arrow((0, 0), (6.55, 0), label: [$theta$ (°)], anchor: "west", color: black)
      arrow((0, 0), (0, 4.35), label: [$T$ (N)], color: black)
      content((-0.15, -0.2), [0])
      for deg in (30, 60, 90, 120, 150, 180) {
        line(point(deg, 0), point(deg, -0.6), stroke: 0.5pt)
        content(point(deg, -1.8), [#deg])
      }
      for val in (5, 10, 20, 30) {
        line(point(0, val), (-0.1, val / 7.5), stroke: 0.5pt)
        content((-0.2, val / 7.5), [#val], anchor: "east")
      }
      line(point(180, 0), point(180, 30), stroke: dashed)
      line(..range(171).map(deg => point(deg, 2.45 / calc.cos(deg * 1deg / 2))), stroke: 1.2pt + blue)
      for deg in (30, 60, 90, 120, 150) {
        dot(point(deg, 2.45 / calc.cos(deg * 1deg / 2)))
      }
    } else if id == "hai-rong-roc" {
      // Ròng rọc vẽ nhỏ; chiều dài trong bài tính theo mô hình ròng rọc điểm.
      for xpos in (-2, 2) {
        curve((xpos, 1.5), 0.12, 0deg, 360deg, stroke: 0.8pt + luma(55%))
        line((xpos, 1.62), (xpos, 1.9), stroke: 0.8pt)
        line((xpos - 0.3, 1.9), (xpos + 0.3, 1.9), stroke: 1pt)
      }
      line((-2, 1.5), (0, 0), (2, 1.5), stroke: 1pt + blue)
      line((-2.12, 1.5), (-2.12, -0.2), stroke: 1pt + blue)
      line((2.12, 1.5), (2.12, -0.2), stroke: 1pt + blue)
      weight((-2.12, -0.2), [$m$])
      weight((2.12, -0.2), [$m$])
      line((0, 0), (0, -0.4), stroke: 0.8pt)
      weight((0, -0.4), [$M$])
      line((-2, 1.5), (2, 1.5), stroke: dashed)
      content((0, 1.7), [$D$])
      content((-2.25, 1.65), [A], anchor: "east")
      content((2.25, 1.65), [B], anchor: "west")
      content((0.16, 0), [C], anchor: "west")
      line((-1.2, 0), (0, 0), stroke: dashed)
      curve((0, 0), 0.7, 143.13deg, 180deg)
      content((-0.95, 0.23), [$theta$])
      content((0, -1.3), [$S = A C + C B$ tại cấu hình ban đầu])
    } else if id == "hai-rong-roc-luc" {
      dot((0, 0))
      arrow((0, 0), (-1.6, 1.2), label: [$bold(T)_1$])
      arrow((0, 0), (1.6, 1.2), label: [$bold(T)_2$])
      arrow((0, 0), (0, -2.4), label: [$M bold(g)$], anchor: "north", color: orange)
      line((-1.2, 0), (1.2, 0), stroke: dashed)
      curve((0, 0), 0.65, 143.13deg, 180deg)
      content((-0.95, 0.2), [$theta$])
      content((0.18, -0.15), [C], anchor: "west")
    } else {
      panic("Chưa có hình Bài 12: " + id)
    }
  })
}

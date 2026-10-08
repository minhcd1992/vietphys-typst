#import "@preview/cetz:0.3.3": canvas, draw

#let blue = rgb("1976d2")
#let orange = rgb("b45309")

// Đường bao lấy mẫu để tránh nét nối thừa thấy khi render circle trên môi trường này.
#let pulley-ring(center, stroke: 1pt) = draw.line(
  ..range(72).map(i => (center.at(0) + 0.5 * calc.cos(i * 5deg),
    center.at(1) + 0.5 * calc.sin(i * 5deg))),
  close: true, stroke: stroke,
)

#let arrow(a, b, label: none, at: none, anchor: "south", color: blue) = {
  draw.line(a, b, stroke: 1.1pt + color, mark: (end: ">"))
  if label != none {
    draw.content(if at == none { b } else { at }, label, anchor: anchor)
  }
}

// Đồ thị định tính: trục không có số đo, không phải dữ liệu thí nghiệm.
#let force-plot(collision: false) = {
  import draw: *
  content((2.5, 2.5), if collision { [Va chạm] } else { [Kéo biến thiên] })
  arrow((0, 0), (5.2, 0), label: [$t$], anchor: "west", color: black)
  arrow((0, -2.1), (0, 2.1), label: [$F$], color: black)
  content((-0.2, -0.2), [O])
  let force(time) = if collision {
    if time <= 1.5 or time >= 3.5 { 0 }
    else { 1.8 * calc.pow(calc.sin(180deg * (time - 1.5) / 2), 2) }
  } else {
    1.8 * calc.pow(calc.sin(180deg * time / 5), 2)
  }
  line(..range(101).map(i => (i / 20, force(i / 20))), stroke: 1.2pt + blue)
  line(..range(101).map(i => (i / 20, -force(i / 20))), stroke: 1.2pt + orange)
  // text cần body; màu thuộc nội dung, không phải đối số thứ ba của content.
  content((4.1, 1.2), text(fill: blue)[$F_A$])
  content((4.1, -1.2), text(fill: orange)[$F_B$])
}

#let bai-11-hinh(id) = {
  set text(font: "Times New Roman", size: 10pt)
  canvas({
    import draw: *
    if id == "xe-romoc-fbd" {
      // Sơ đồ lực riêng của mỗi xe, không phải các lực đặt lên mặt đường.
      let trailer-center = (-2.5, 0)
      let car-center = (2.5, 0)
      circle(trailer-center, radius: 0.06, fill: black)
      arrow(trailer-center, (-2.5, 1.3), label: [$bold(N)_("rm")$])
      arrow(trailer-center, (-2.5, -1.3), label: [$m bold(g)$], anchor: "north", color: orange)
      arrow(trailer-center, (-1.1, 0), label: [$bold(T)_("rm")$], at: (-1.7, 0.15))
      arrow(trailer-center, (-3.4, 0), label: [$bold(F)_c$], at: (-3.2, 0.15), color: orange)
      content((-2.5, -2), [Rơ-móc])

      circle(car-center, radius: 0.06, fill: black)
      arrow(car-center, (2.5, 1.7), label: [$bold(N)_("xe")$])
      arrow(car-center, (2.5, -1.7), label: [$M bold(g)$], anchor: "north", color: orange)
      arrow(car-center, (4.5, 0), label: [$bold(F)_b$], at: (3.7, 0.15))
      arrow(car-center, (1.1, 0), label: [$bold(T)_("xe")$], at: (1.6, 0.15), color: orange)
      content((2.5, -2.4), [Ô tô])
    } else if id == "do-thi-keo" {
      force-plot()
    } else if id == "do-thi-va-cham" {
      force-plot(collision: true)
    } else if id == "rong-roc" {
      line((-1, 3), (1, 3), stroke: 1.2pt + luma(55%))
      for i in range(-4, 5) {
        line((i * 0.2, 3), (i * 0.2 + 0.1, 3.2), stroke: 0.6pt + luma(55%))
      }
      line((0, 3), (0, 2), stroke: 1pt)
      pulley-ring((0, 1.5))
      circle((0, 1.5), radius: 0.05, fill: black)
      // Dây ôm nửa trên của ròng rọc, tiếp tuyến với hai nhánh thẳng đứng.
      line(..range(41).map(i => (0.5 * calc.cos(i * 180deg / 40),
        1.5 + 0.5 * calc.sin(i * 180deg / 40))), stroke: 1pt + blue)
      line((-0.5, 1.5), (-0.5, 0), stroke: 1pt + blue)
      line((0.5, 1.5), (0.5, -1), stroke: 1pt + blue)
      rect((-0.9, 0), (-0.1, -0.6), fill: luma(95%), stroke: 1pt)
      content((-0.5, -0.3), [$m_1$])
      rect((0.1, -1), (0.9, -1.7), fill: luma(95%), stroke: 1pt)
      content((0.5, -1.35), [$m_2$])
    } else if id == "rong-roc-fbd" {
      // Q là lực dây tác dụng lên ròng rọc; R là lực trục đỡ ròng rọc.
      pulley-ring((0, 1), stroke: 0.8pt + luma(60%))
      arrow((0, 1), (0, 3.4), label: [$bold(R)$])
      arrow((-0.5, 1), (-0.5, -0.2), label: [$bold(Q)_1$], anchor: "north", color: orange)
      arrow((0.5, 1), (0.5, -0.2), label: [$bold(Q)_2$], anchor: "north", color: orange)
      content((0, -0.9), [Ròng rọc])

      circle((-2.5, 0), radius: 0.06, fill: black)
      arrow((-2.5, 0), (-2.5, 1.2), label: [$bold(T)_1$])
      arrow((-2.5, 0), (-2.5, -1), label: [$bold(P)_1$], anchor: "north", color: orange)
      content((-2, 0), [$m_1$])

      circle((2.5, 0), radius: 0.06, fill: black)
      arrow((2.5, 0), (2.5, 1.2), label: [$bold(T)_2$])
      arrow((2.5, 0), (2.5, -1.5), label: [$bold(P)_2$], anchor: "north", color: orange)
      content((3, 0), [$m_2$])
    } else {
      panic("Chưa có hình Bài 11: " + id)
    }
  })
}

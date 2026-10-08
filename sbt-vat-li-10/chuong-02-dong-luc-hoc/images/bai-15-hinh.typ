#import "@preview/cetz:0.3.3": canvas, draw

#let blue = rgb("1976d2")
#let orange = rgb("b45309")
#let green = rgb("388e3c")
#let red = rgb("d32f2f")
#let guide = (paint: luma(55%), thickness: 0.6pt, dash: "dashed")

#let arrow(start, end, label, anchor: "south", color: blue) = {
  draw.line(start, end, stroke: 1pt + color, mark: (end: ">"))
  draw.content(end, label, anchor: anchor)
}

// Các sơ đồ lực chỉ minh họa hướng, không dùng để đo độ lớn.
#let bai-15-hinh(id) = {
  set text(font: "Times New Roman", size: 10pt)
  canvas({
    import draw: *
    if id == "he-doc" {
      line((0, 0), (4.5, 0), stroke: 0.8pt)
      line((0, 0), (3.464, 2), stroke: 1pt)
      content((0.85, 0.18), [$30 degree$])
      // Hộp có cạnh đáy song song dốc; không dùng tham số angle không tồn tại.
      line((1.1, 0.635), (1.966, 1.135), (1.716, 1.568), (0.85, 1.068),
        close: true, fill: luma(95%), stroke: 0.8pt)
      content((1.408, 1.1), [$m_1$])
      // Dây tiếp tuyến với ròng rọc, nhánh trái song song dốc 30 độ.
      line((1.841, 1.351), (3.385, 2.243), stroke: 0.8pt)
      circle((3.475, 2.087), radius: 0.18, stroke: 0.8pt)
      circle((3.475, 2.087), radius: 0.035, fill: black)
      line((3.655, 2.087), (3.655, 0.9), stroke: 0.8pt)
      rect((3.355, 0.35), (3.955, 0.9), fill: luma(95%), stroke: 0.8pt)
      content((3.655, 0.625), [$m_2$])
    } else if id == "fbd-31" {
      content((0, 2.15), [Vật $m_1$])
      line((-1.4, -0.808), (1.4, 0.808), stroke: guide)
      circle((0, 0), radius: 0.055, fill: black)
      arrow((0, 0), (1.35, 0.78), [$bold(T)_1$], anchor: "west")
      arrow((0, 0), (-1.05, -0.606), [$bold(f)_1$], anchor: "east", color: red)
      arrow((0, 0), (-0.8, 1.386), [$bold(N)_1$], color: green)
      arrow((0, 0), (0, -1.65), [$bold(P)_1$], anchor: "north", color: orange)
      content((4.3, 2.15), [Vật $m_2$])
      circle((4.3, 0), radius: 0.055, fill: black)
      arrow((4.3, 0), (4.3, 1.2), [$bold(T)_2$])
      arrow((4.3, 0), (4.3, -1.65), [$bold(P)_2$], anchor: "north", color: orange)
      content((2, -2.2), [Sơ đồ hướng lực; $f_1$ là ma sát trượt.])
    } else if id == "cua-nghieng" {
      let slope-angle = 12deg
      line((-2, -2 * calc.tan(slope-angle)), (2.5, 2.5 * calc.tan(slope-angle)), stroke: 1pt)
      line((0, 0), (2.5, 0), stroke: guide)
      let angle-points = range(13).map(i => (1.7 * calc.cos(i * 1deg), 1.7 * calc.sin(i * 1deg)))
      line(..angle-points, stroke: 0.6pt)
      content((1.95, 0.17), [$theta$])
      circle((0, 0), radius: 0.06, fill: black)
      arrow((0, 0), (-0.43, 2.02), [$bold(N)$], color: green)
      arrow((0, 0), (0, -1.9), [$bold(P)$], anchor: "north", color: orange)
      arrow((0, 0), (-1.38, -0.293), [$bold(f)$], anchor: "east", color: red)
      line((2.4, 1.6), (1, 1.6), stroke: 1pt, mark: (end: ">"))
      content((1.7, 1.88), [Hướng tâm])
      content((0, -2.5), [Mặt cắt ngang đường tại ngưỡng trượt ra ngoài.])
    } else if id == "he-chong" {
      line((-1.6, 0), (3.2, 0), stroke: 1pt)
      rect((-1, 0), (1.4, 0.7), fill: luma(95%), stroke: 0.8pt)
      rect((-0.5, 0.7), (0.7, 1.25), fill: luma(90%), stroke: 0.8pt)
      content((0.1, 0.98), [$m_1$])
      content((0.2, 0.35), [$m_2$])
      arrow((1.4, 0.35), (2.9, 0.35), [$bold(F)$], anchor: "west")
    } else if id == "fbd-33" {
      // Tách riêng vật; hai lực ma sát của m2 đều nằm ngang.
      content((0, 2.05), [Vật $m_1$])
      circle((0, 0), radius: 0.055, fill: black)
      arrow((0, 0), (0, 1.3), [$bold(N)_1$], color: green)
      arrow((0, 0), (0, -1.3), [$bold(P)_1$], anchor: "north", color: orange)
      arrow((0, 0), (1.15, 0), [$bold(f)_1$], anchor: "west", color: red)
      content((4.8, 2.05), [Vật $m_2$])
      rect((4.45, -0.3), (5.15, 0.3), fill: luma(95%), stroke: 0.6pt)
      arrow((4.8, 0.3), (4.8, 1.55), [$bold(N)_2$], color: green)
      arrow((5.15, 0), (6.6, 0), [$bold(F)$], anchor: "west")
      arrow((4.45, 0.22), (3.25, 0.22), [$bold(f)'_1$], anchor: "east", color: red)
      arrow((4.45, -0.22), (3.25, -0.22), [$bold(f)_2$], anchor: "east", color: red)
      arrow((4.6, -0.3), (4.6, -1.25), [$bold(N)'_1$], anchor: "north-east", color: green)
      arrow((5, -0.3), (5, -1.6), [$bold(P)_2$], anchor: "north-west", color: orange)
      content((3, -2.15), [Các lực trên mỗi vật được biểu diễn riêng.])
    } else if id == "fbd-35" {
      // Hình trong hệ quy chiếu xe. T dọc dây; P thẳng đứng; Fqt xuống dốc.
      let slope-angle = 10deg
      let tilt-angle = calc.atan((9.8 * calc.sin(slope-angle) + 2.5) / (9.8 * calc.cos(slope-angle)))
      let string-angle = slope-angle - 90deg - tilt-angle
      let pivot = (0, 1.8)
      let bob = (2.1 * calc.cos(string-angle), 1.8 + 2.1 * calc.sin(string-angle))
      line((-1.65, 1.8 - 1.65 * calc.tan(slope-angle)),
        (1.65, 1.8 + 1.65 * calc.tan(slope-angle)), stroke: 1.5pt)
      content((0, 2.45), [Trần xe song song mặt dốc])
      line(pivot, (2.3 * calc.sin(slope-angle), 1.8 - 2.3 * calc.cos(slope-angle)), stroke: guide)
      line(pivot, bob, stroke: 0.8pt)
      circle(bob, radius: 0.07, fill: black)
      let arc-points = range(25).map(i => {
        let angle-value = string-angle + tilt-angle * i / 24
        (0.85 * calc.cos(angle-value), 1.8 + 0.85 * calc.sin(angle-value))
      })
      line(..arc-points, stroke: 0.6pt)
      content((-0.03, 0.72), [$theta$])
      let force-scale = 0.35
      arrow(bob, (bob.at(0), bob.at(1) - force-scale * 4.9), [$bold(P)$], anchor: "north", color: orange)
      arrow(bob, (bob.at(0) - force-scale * 1.25 * calc.cos(slope-angle),
        bob.at(1) - force-scale * 1.25 * calc.sin(slope-angle)), [$bold(F)_("qt")$], anchor: "east", color: red)
      arrow(bob, (bob.at(0) + force-scale * 1.25 * calc.cos(slope-angle),
        bob.at(1) + force-scale * (4.9 + 1.25 * calc.sin(slope-angle))), [$bold(T)$], anchor: "west")
      arrow((1.15, 0.65), (2.5, 0.65 + 1.35 * calc.tan(slope-angle)), [$bold(a)_0$], anchor: "west", color: black)
      content((0.4, -2.5), [Hệ quy chiếu gắn với xe; chiều lên dốc sang phải.])
    } else {
      panic("Chưa có hình Bài 15: " + id)
    }
  })
}

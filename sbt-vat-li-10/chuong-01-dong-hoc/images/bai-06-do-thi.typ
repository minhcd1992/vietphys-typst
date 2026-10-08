// Hình Bài 6, nhúng trực tiếp bằng bai-06-hinh("mã-hình").
#import "@preview/cetz:0.3.3": canvas, draw
#let blue = rgb("1976d2")
#let orange = rgb("b45309")
#let dashed = (paint: luma(55%), thickness: 0.65pt, dash: "dashed")
#let sample(a, b, f) = range(101).map(i => {
  let t = a + (b - a)*i/100
  (t, f(t))
})

// w, h tính bằng cm. Tick có dạng (giá trị, nhãn).
#let chart(series, xmax: 3, ymax: 3, w: 6.3, h: 2.7,
  xticks: (), yticks: (), xlabel: [$t$], ylabel: [$v$],
  labels: (), guides: (), shade: (),
) = {
  set text(font: "Times New Roman", size: 10pt)
  canvas({
    import draw: *
    let p(x, y) = (w*x/xmax, h*y/ymax)
    if shade.len() > 0 {
      line(..shade.map(pt => p(..pt)), close: true, fill: blue.lighten(88%), stroke: none)
    }
    for (x, label) in xticks {
      line(p(x, 0), p(x, ymax), stroke: 0.3pt + luma(88%))
      content((p(x, 0).at(0), -0.16), label, anchor: "north")
    }
    for (y, label) in yticks {
      content((-0.14, p(0, y).at(1)), label, anchor: "east")
    }
    for pts in guides { line(..pts.map(pt => p(..pt)), stroke: dashed) }
    line((0, 0), (w + 0.2, 0), stroke: 0.65pt, mark: (end: ">"))
    line((0, 0), (0, h + 0.2), stroke: 0.65pt, mark: (end: ">"))
    content((-0.1, -0.14), [O], anchor: "north-east")
    content((w + 0.25, -0.42), xlabel, anchor: "north-east")
    content((0, h + 0.26), ylabel, anchor: "south-west")
    for item in series {
      line(..item.points.map(pt => p(..pt)), stroke: item.at("stroke", default: 1.2pt + blue))
    }
    for (x, y, label) in labels { content(p(x, y), label) }
  })
}

#let bai-06-hinh(id) = {
  if id == "mcq-12" {
    let mini(pts) = chart(((points: pts),), xmax: 3.2, ymax: 3.7, w: 3.2, h: 1.4)
    grid(columns: (auto, auto), column-gutter: 20pt, row-gutter: 8pt,
      align(center)[#text(size: 10pt, weight: "bold")[A] #linebreak() #mini(((0, 0), (3, 3)))],
      align(center)[#text(size: 10pt, weight: "bold")[B] #linebreak() #mini(sample(0, 3, t => t*t/3))],
      align(center)[#text(size: 10pt, weight: "bold")[C] #linebreak() #mini(((0, 1.8), (3, 1.8)))],
      align(center)[#text(size: 10pt, weight: "bold")[D] #linebreak() #mini(sample(0.3, 3, t => 1/t))],
    )
  } else if id == "mcq-18" {
    chart(((points: sample(0, 3, t => t*t/3)),), xmax: 3.3, ymax: 3.4, ylabel: [$d$])
  } else if id == "tf-04" {
    grid(columns: (auto, auto, auto), column-gutter: 12pt,
      align(center)[#text(size: 10pt, weight: "bold")[(1)] #linebreak()
        #chart(((points: ((0, 1), (1.2, 1))),), xmax: 1.3, ymax: 1.4, w: 3.1, h: 1.9,
          ylabel: [$a$], xticks: ((1, [$t_0$]),), yticks: ((1, [$g$]),),
          shade: ((0, 0), (1, 0), (1, 1), (0, 1)))],
      align(center)[#text(size: 10pt, weight: "bold")[(2)] #linebreak()
        #chart(((points: ((0, 0), (1.2, 1.2))),), xmax: 1.3, ymax: 1.4, w: 3.1, h: 1.9,
          xticks: ((1, [$t_0$]),), shade: ((0, 0), (1, 0), (1, 1)))],
      align(center)[#text(size: 10pt, weight: "bold")[(3)] #linebreak()
        #chart(((points: sample(0, 1.2, t => t*t)),), xmax: 1.3, ymax: 1.6, w: 3.1, h: 1.9,
          ylabel: [$d$], xticks: ((1, [$t_0$]),))],
    )
  } else if id == "can-tuyen-tinh" {
    // Chỉ trong lời giải II.3: thời gian chuẩn hóa theo m/k, không ghi số trên trục t.
    chart(((points: sample(0, 5, t => 1 - calc.exp(-t))),), xmax: 5.3, ymax: 1.25,
      yticks: ((1, [$v_("th")$]),), guides: (((0, 1), (5.2, 1)),))
  } else if id == "essay-01" {
    let g = 9.8
    let vt = calc.sqrt(0.2*g/0.008)
    let speed(t) = { let q = calc.exp(-2*g*t/vt); vt*(1 - q)/(1 + q) }
    chart(((points: ((0, 0), (9, g*9))),
      (points: sample(0, 9, speed), stroke: 1.2pt + orange)),
      xmax: 9.5, ymax: 95, w: 8, h: 3.7, xlabel: [$t$ (s)], ylabel: [$v$ (m/s)],
      xticks: ((3, [3]), (6, [6]), (9, [9])), yticks: ((vt, [15,65]), (60, [60]), (90, [90])),
      guides: (((0, vt), (9.3, vt)),),
      labels: ((5.2, 66, text(fill: blue)[Không cản]), (6.7, 25, text(fill: orange)[Có cản])))
  } else if id == "hai-cong" {
    set text(font: "Times New Roman", size: 10pt)
    canvas({
      import draw: *
      line((0, 3.4), (0, -0.2), stroke: dashed, mark: (end: ">"))
      circle((0, 3), radius: 0.16, fill: blue.lighten(65%), stroke: 0.7pt + blue)
      line((-0.16, 3), (0.16, 3), stroke: 0.6pt, mark: (start: "<", end: ">"))
      content((0.55, 3), [$d$])
      for (y, name, dt) in ((2.15, [A], [$tau_A$]), (0.4, [B], [$tau_B$])) {
        line((-0.55, y - 0.18), (-0.55, y + 0.18), (-0.32, y + 0.18), stroke: 1pt + blue)
        line((0.55, y - 0.18), (0.55, y + 0.18), (0.32, y + 0.18), stroke: 1pt + blue)
        line((-0.55, y), (0.55, y), stroke: (paint: blue, thickness: 0.6pt, dash: "dashed"))
        content((-0.9, y), name)
        content((1.1, y), dt)
      }
      line((1.65, 0.4), (1.65, 2.15), stroke: 0.65pt, mark: (start: "<", end: ">"))
      content((1.95, 1.27), [$s$])
      content((2.4, 1.27), [Thời gian A → B: $T$], anchor: "west")
      content((1.8, -0.65), text(size: 9pt, style: "italic")[Sơ đồ không theo tỉ lệ])
    })
  } else if id == "thuoc-nghieng" {
    set text(font: "Times New Roman", size: 10pt)
    canvas({
      import draw: *
      line((-0.8, 3), (2.4, 3), stroke: 0.6pt + luma(55%))
      line((-0.8, 0), (2.4, 0), stroke: 0.6pt + luma(55%))
      line((0, 3), (0, 0), stroke: dashed)
      line((0, 3), (1.8, 0), stroke: 1.5pt + blue)
      content((1.15, 1.7), [$L$])
      line((-0.5, 0), (-0.5, 3), stroke: 0.65pt, mark: (start: "<", end: ">"))
      content((-0.75, 1.5), [$h$])
      let theta = calc.atan(1.8/3)
      line(..range(31).map(i => {
        let a = theta*i/30
        (0.75*calc.sin(a), 3 - 0.75*calc.cos(a))
      }), stroke: 0.65pt)
      content((0.8, 2.65), [$alpha$])
      content((3.4, 2.95), [Mức thả])
      content((3.4, 0), [Mức cảm biến])
      content((1.3, -0.6), text(size: 9pt, style: "italic")[Góc nghiêng được phóng đại])
    })
  } else if id == "anh-hoat-nghiem" {
    set text(font: "Times New Roman", size: 10pt)
    canvas({
      import draw: *
      // Chớp 1 tại t = 0; tọa độ tỉ lệ bình phương thời gian, chưa ghi giá trị g.
      for i in range(5) {
        let y = 3.5 - 0.19*i*i
        let label-y = if i == 0 { 4.05 } else { y }
        circle((0, y), radius: 0.075, fill: blue, stroke: none)
        content((-0.55, label-y), [#(i + 1)])
        content((1.35, label-y), if i == 0 { [$t = 0$] } else { [$t = #i Delta t$] })
        if i == 0 {
          line((-0.3, label-y), (-0.18, label-y), (0, y + 0.1), stroke: 0.45pt + luma(60%))
        }
      }
      line((2.9, 3.5 - 0.19*16), (2.9, 3.5 - 0.19*9), stroke: 0.65pt, mark: (start: "<", end: ">"))
      content((3.55, 1.12), [35 cm])
      content((-0.55, 4.55), [Chớp])
      content((1.6, -0.05), text(size: 9pt, style: "italic")[Các chớp cách nhau $Delta t$])
    })
  } else if id == "thang-may" {
    set text(font: "Times New Roman", size: 10pt)
    canvas({
      import draw: *
      rect((0, 0), (3, 3.1), stroke: 1pt + blue)
      line((0, 0.18), (3, 0.18), stroke: 1.4pt + luma(40%))
      circle((0.85, 2.15), radius: 0.15, fill: blue.lighten(65%), stroke: 0.7pt + blue)
      content((0.85, 2.6), [Quả cầu])
      line((1.8, 0.18), (1.8, 2.15), stroke: 0.65pt, mark: (start: "<", end: ">"))
      content((2.35, 1.2), [$h_0$])
      line((3.65, 2.5), (3.65, 1.2), stroke: 0.9pt, mark: (end: ">"))
      content((4.35, 1.85), [$a_0$])
      content((1.5, -0.35), [Sàn cabin])
      content((2, -0.85), text(size: 9pt, style: "italic")[Minh họa cabin có gia tốc hướng xuống])
    })
  } else { panic("Không có hình Bài 6: " + id) }
}

// Hình của Bài 5: sửa tọa độ tại từng mã hình, sách tự dựng lại bằng CeTZ.
#import "@preview/cetz:0.3.3": canvas, draw

#let blue = rgb("1976d2")
#let sample(a, b, f) = range(81).map(i => {
  let t = a + (b - a) * i / 80
  (t, f(t))
})

// Kích thước vùng tọa độ w, h tính bằng cm; đồ thị giữ đúng tỉ lệ từng trục.
#let chart(points, xmax: 10, ymin: 0, ymax: 10, w: 6.5, h: 2.8,
  xticks: (), yticks: (), ylabel: [$v$ (m/s)], shade: (),
) = {
  set text(font: "Times New Roman", size: 10pt)
  canvas({
    import draw: *
    let p(x, y) = (w*x/xmax, h*(y - ymin)/(ymax - ymin))
    if shade.len() > 0 {
      line(..shade.map(pt => p(..pt)), close: true, fill: blue.lighten(88%), stroke: none)
    }
    for x in xticks {
      line(p(x, ymin), p(x, ymax), stroke: 0.3pt + luma(86%))
      content((p(x, 0).at(0), p(x, 0).at(1) - 0.16), str(x).replace(".", ","), anchor: "north")
    }
    for y in yticks {
      line(p(0, y), p(xmax, y), stroke: 0.3pt + luma(86%))
      content((-0.16, p(0, y).at(1)), str(y).replace(".", ","), anchor: "east")
    }
    line(p(0, 0), (w + 0.22, p(0, 0).at(1)), stroke: 0.65pt, mark: (end: ">"))
    line(p(0, ymin), (0, h + 0.22), stroke: 0.65pt, mark: (end: ">"))
    content((-0.10, p(0, 0).at(1) - 0.14), [O], anchor: "north-east")
    content((w + 0.25, p(0, 0).at(1) - 0.42), [$t$ (s)], anchor: "north-east")
    content((0, h + 0.28), ylabel, anchor: "south-west")
    line(..points.map(pt => p(..pt)), stroke: 1.2pt + blue)
  })
}

#let bai-05-hinh(id) = {
  if id == "mcq-03" {
    chart(((0, 6), (6, -6)), xmax: 6.5, ymin: -7, ymax: 7, h: 3.2,
      xticks: (3, 6), yticks: (-6, 6))
  } else if id == "mcq-05" {
    chart(((0, 1.5), (8, 1.5)), xmax: 8.6, ymax: 1.9,
      xticks: (8,), yticks: (1.5,), ylabel: [$a$ (m/s²)],
      shade: ((0, 0), (8, 0), (8, 1.5), (0, 1.5)))
  } else if id == "mcq-09" {
    chart(sample(0, 8, t => 8*t - t*t), xmax: 8.6, ymax: 19,
      xticks: (4, 8), yticks: (16,), ylabel: [$d$ (m)])
  } else if id == "tf-04" {
    chart(((0, 0), (20, 15), (80, 15), (100, 0)), xmax: 106, ymax: 18,
      xticks: (20, 80, 100), yticks: (15,))
  } else if id == "essay-03" {
    // Chỉ gọi trong lời giải: đề yêu cầu học sinh tự dựng đồ thị.
    chart(((0, 0), (50, 20), (230, 20), (255, 0)), xmax: 270, ymax: 24, w: 8,
      xticks: (50, 230, 255), yticks: (20,))
  } else if id == "cong-quang" {
    set text(font: "Times New Roman", size: 10pt)
    canvas({
      import draw: *
      // Sơ đồ vị trí dọc theo máng, không biểu diễn độ nghiêng hoặc kích thước thật.
      line((0, 0), (7.2, 0), stroke: 1pt + luma(50%))
      rect((0.3, 0.1), (1.35, 0.5), fill: blue.lighten(85%), stroke: 0.7pt + blue)
      circle((0.5, 0.08), radius: 0.09, fill: white, stroke: 0.7pt)
      circle((1.15, 0.08), radius: 0.09, fill: white, stroke: 0.7pt)
      rect((0.6, 0.5), (1.1, 0.9), fill: blue, stroke: none)
      line((0.6, 1.07), (1.1, 1.07), stroke: 0.65pt, mark: (start: "<", end: ">"))
      content((0.85, 1.35), [$d$])
      content((0.8, -0.4), [Xe lăn])
      for (x, label) in ((2.2, [A]), (6, [B])) {
        line((x, -0.15), (x, 1.0), stroke: (paint: luma(35%), thickness: 0.7pt, dash: "dashed"))
        content((x, 1.3), label)
        line((x, -0.35), (x, -0.8), stroke: 0.5pt + luma(60%))
      }
      line((2.2, -0.65), (6, -0.65), stroke: 0.65pt, mark: (start: "<", end: ">"))
      content((4.1, -1.0), [$s = "0,60" thin "m"$])
      line((3.3, 0.55), (4.8, 0.55), stroke: 0.8pt + blue, mark: (end: ">"))
      content((4.05, 1.0), [Chiều chuyển động])
      content((3.6, -1.55), text(size: 9pt, style: "italic")[Sơ đồ bố trí, không theo tỉ lệ])
    })
  } else {
    panic("Mã hình Bài 5 không tồn tại: " + id)
  }
}

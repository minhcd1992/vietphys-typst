// 14 hình dựng trực tiếp bằng CeTZ, đối chiếu PDF trang in 11–23.
// Mỗi hàm trả về các lệnh vẽ CeTZ. Không nhúng ảnh raster.
#import "@preview/cetz:0.5.2": canvas, draw

#let net = 0.75pt
#let dam = 1.15pt
#let dut = (thickness: 0.55pt, dash: "dashed")
#let nhat = luma(94%)
#let mui = (end: ">", fill: black)

// Cung tròn theo tâm (không dùng điểm đầu làm tâm của draw.arc).
#let cung(tam, r, start, stop, ..style) = {
  draw.line(..range(41).map(i => {
    let a = start + (stop - start) * i / 40
    (tam.at(0) + r * calc.cos(a), tam.at(1) + r * calc.sin(a))
  }), ..style)
}

#let hinh-1-1() = {
  import draw: *
  line((0, 0), (3.5, 0), (0, 3.5), close: true, fill: luma(85%))
  line((3.5, 0), (-0.2, 3.7), mark: mui)
  circle((1.87, 1.79), radius: 0.10, fill: white)
  circle((1.87, 1.79), radius: 0.028, fill: black)
  content((2.12, 2.15), [Đi lên], anchor: "south-west")
  cung((3.5, 0), 0.6, 135deg, 180deg)
  content((2.65, 0.23), $alpha$)
  content((3.64, -0.06), $O$, anchor: "north-west")
  content((-0.22, 3.83), $x$, anchor: "south")
}

#let hinh-1-2() = {
  import draw: *
  // Tàu điện ở gốc; A kết thúc tăng tốc, B là điểm dừng.
  line((-0.2, 0), (4.6, 0), mark: mui)
  line((0, 0.12), (0, 0.66), (0.47, 0.72), (0.77, 0.48),
    (0.83, 0.14), close: true, fill: nhat)
  line((0.12, 0.25), (0.12, 0.55), (0.4, 0.59), (0.64, 0.4),
    (0.68, 0.25), close: true, fill: white)
  for x in (0.18, 0.65) { circle((x, 0.12), radius: 0.09, fill: white) }
  for (x, lab) in ((0, $O$), (1.85, $A$), (3.65, $B$)) {
    line((x, -0.05), (x, 0.05))
    content((x, -0.18), lab, anchor: "north")
  }
  content((0.96, -0.18), $s_1$, anchor: "north")
  content((2.72, -0.18), $s_2$, anchor: "north")
  content((4.62, -0.18), $x$, anchor: "north")
}

#let hinh-1-4() = {
  import draw: *
  let p(t, v) = (0.56*t, 0.58*v)
  for t in range(9) { line(p(t, -2), p(t, 2), stroke: 0.3pt + luma(65%)) }
  for v in range(-2, 3) { line(p(0, v), p(8, v), stroke: 0.3pt + luma(65%)) }
  line(p(0, 0), p(8.45, 0), mark: mui)
  line(p(0, -2), p(0, 2.25), mark: mui)
  line(..((0, 0), (1, 1), (3, 1), (6, -2), (7, 0), (8, 0)).map(q => p(..q)), stroke: dam)
  for t in range(1, 8) { content(p(t, -0.20), text(size: 9pt, str(t)), anchor: "north") }
  for v in (-2, -1, 1) { content((-0.13, 0.58*v), str(v), anchor: "east") }
  content((-0.12, 0), $O$, anchor: "east")
  for (t, v, lab) in ((1, 1, $A$), (3, 1, $B$), (4, 0, $C$), (7, 0, $E$)) {
    content(p(t + 0.12, v + 0.12), lab, anchor: "south-west")
  }
  content(p(6, -2.18), $D$, anchor: "north")
  content((-0.18, 1.5), [$v$ (m/s)], anchor: "south-west")
  content((4.85, -0.05), [$t$ (s)], anchor: "north")
}

#let hinh-1-6() = {
  import draw: *
  let w = 3.7
  let h = 3.5
  line((0, 0), (4.0, 0), mark: mui)
  line((0, -0.2), (0, 4.0), mark: mui)
  // Parabol ném xiên: chỉ là sơ đồ, không đưa thêm đáp số vào hình.
  line(..range(81).map(i => {
    let x = w*i/80
    (x, 4*h*x*(w - x)/(w*w))
  }))
  line((0, 0), (0.32, 1.21), stroke: dam, mark: mui)
  content((0.43, 1.12), $arrow(v)_0$, anchor: "west")
  cung((0, 0), 0.73, 0deg, 75deg)
  content((0.38, 0.24), $alpha$)
  line((0, 0), (0, -0.95), stroke: dut, mark: mui)
  content((-0.08, -0.78), $arrow(g)$, anchor: "east")
  line((0, 0), (0.48, -0.14), mark: mui)
  content((0.54, -0.3), $a_n = g cos alpha$, anchor: "north-west")
  line((w/2, h), (w/2, h - 1.05), mark: mui)
  content((w/2, h - 1.12), $a_n = g$, anchor: "north")
  content((-0.13, -0.09), $O$, anchor: "north-east")
  content((3.7, -0.12), $D$, anchor: "north")
  content((4.15, 0), $x$)
  content((-0.1, 4.13), $y$)
}

#let hinh-1-9() = {
  import draw: *
  // Giữ hai tam giác vector trong nguồn: v + u = V và v' + u = V'.
  for base in (0, 3.6) {
    line((-0.7, base), (2.45, base))
    line((-0.7, base+2.6), (2.45, base+2.6))
    line((0.55, base), (0.55, base+2.6), stroke: dut)
    content((0.55, base - 0.14), $A$, anchor: "north")
    content((0.55, base+2.73), $B$, anchor: "south")
  }
  // Chèo vuông góc bờ (hình trên).
  line((0.55, 3.6), (0.55, 5.35), stroke: dam, mark: mui)
  line((0.55, 5.35), (1.45, 5.35), stroke: dam, mark: mui)
  line((0.55, 3.6), (1.45, 5.35), stroke: dam, mark: mui)
  line((1.45, 5.35), (1.89, 6.2), stroke: dut)
  content((0.40, 4.87), $arrow(v)$, anchor: "east")
  content((1.02, 5.51), $arrow(u)$, anchor: "south")
  content((1.32, 4.48), $arrow(V)$, anchor: "west")
  content((1.89, 6.34), $C$, anchor: "south")
  content((1.20, 6.38), $s$)
  content((0.40, 3.98), $A B = l$, anchor: "east")
  // Chèo ngược dòng (hình dưới).
  line((0.55, 0), (-0.5, 1.4), stroke: dam, mark: mui)
  line((-0.5, 1.4), (0.55, 1.4), stroke: dam, mark: mui)
  line((0.55, 0), (0.55, 1.4), stroke: dam, mark: mui)
  line((-0.5, 1.4), (-0.8, 1.8), stroke: dut)
  content((-0.4, 0.74), $arrow(v)'$, anchor: "east")
  content((0.0, 1.56), $arrow(u)$, anchor: "south")
  content((0.74, 0.85), $arrow(V)'$, anchor: "west")
  content((0.73, 2.05), $A B = l$, anchor: "west")
  cung((0.55, 0), 0.65, 90deg, 127deg)
  content((0.24, 0.86), $gamma$)
}

// Đầu máy và ba toa, chỉ minh họa, không bổ sung dữ kiện.
#let hinh-1-10() = {
  import draw: *
  line((-0.15, 0), (5.1, 0), stroke: dam)
  for x in range(26) { line((x*0.2-0.12, -0.07), (x*0.2+0.05, 0.06), stroke: 0.45pt) }
  rect((0.0, 0.20), (1.05, 0.67), fill: nhat)
  rect((0.56, 0.65), (1.05, 1.02), fill: nhat)
  rect((0.66, 0.72), (0.94, 0.92), fill: white)
  rect((0.10, 0.67), (0.26, 0.95), fill: luma(85%))
  line((0.04, 0.98), (0.32, 0.98))
  for i in range(3) {
    let x = 1.30 + 1.22*i
    rect((x, 0.22), (x+1.05, 0.83), fill: nhat)
    line((x - 0.05, 0.88), (x+1.1, 0.88), stroke: dam)
    for dx in (0.12, 0.43, 0.74) { rect((x+dx, 0.47), (x+dx+0.19, 0.71), fill: white) }
    line((x - 0.23, 0.30), (x, 0.30))
  }
  for x in (0.20, 0.78, 1.52, 2.12, 2.74, 3.34, 3.96, 4.56) {
    circle((x, 0.18), radius: 0.15, fill: white)
    circle((x, 0.18), radius: 0.055, fill: luma(80%))
  }
  for (x, y, rx, ry) in ((0.2, 1.25, 0.18, 0.09), (0.55, 1.45, 0.35, 0.16),
    (1.1, 1.55, 0.4, 0.18), (1.7, 1.48, 0.5, 0.16), (2.4, 1.6, 0.47, 0.17),
    (3.2, 1.52, 0.54, 0.15), (4.0, 1.61, 0.42, 0.14)) {
    circle((x, y), radius: (rx, ry), fill: white, stroke: 0.5pt)
  }
}

#let hinh-1-11() = {
  import draw: *
  let p(t, l) = (t/11, l*0.92)
  // Lưới gốc: mỗi ô 4 s theo ngang và 0,4 m theo dọc.
  for t in range(0, 53, step: 4) {
    line(p(t, 0), p(t, 4.4), stroke: 0.35pt + luma(55%))
  }
  for i in range(12) {
    line(p(0, i*0.4), p(52, i*0.4), stroke: 0.35pt + luma(55%))
  }
  // Các điểm dưới đây đọc xấp xỉ từ scan, KHÔNG giả định hàm logistic.
  // Đường cong nguyên bản không kèm biểu thức giải tích hoặc bảng số.
  bezier(p(0, 0), p(12, 0.12), p(4, 0), p(9, 0.025), stroke: dam)
  bezier(p(12, 0.12), p(20, 0.8), p(15, 0.22), p(18, 0.4), stroke: dam)
  bezier(p(20, 0.8), p(28, 2.75), p(23, 1.35), p(25.7, 2.14), stroke: dam)
  bezier(p(28, 2.75), p(36, 3.9), p(30.5, 3.48), p(31.7, 3.86), stroke: dam)
  bezier(p(36, 3.9), p(44, 4), p(38.5, 4), p(42, 4), stroke: dam)
  line(p(44, 4), p(52, 4), stroke: dam)
  content((-0.12, -0.12), $O$, anchor: "north-east")
  for t in (20, 40) { content(p(t, -0.13), str(t), anchor: "north") }
  for (l, lab) in ((2, [2,0]), (4, [4,0])) { content((-0.14, l*0.92), lab, anchor: "east") }
  content((0, 4.28), [$l$ (m)], anchor: "south")
  content((4.77, -0.13), [$t$ (s)], anchor: "north")
}

#let hinh-1-12() = {
  import draw: *
  // Mặt cắt một phần tư trụ B, sàn, dây CA và vật nhỏ A.
  line((0, 4.0), (0, 0), (4.8, 0), stroke: 1.2pt)
  for i in range(20) {
    line((-0.13, i*0.2-0.12), (0, i*0.2+0.05), stroke: 0.4pt + luma(55%))
  }
  for i in range(24) {
    line((i*0.2-0.12, -0.13), (i*0.2+0.05, 0), stroke: 0.4pt + luma(55%))
  }
  cung((0, 0), 3.4, 0deg, 90deg, stroke: dam)
  line((0, 0), (2.40, 2.40), stroke: dut, mark: mui)
  content((1.54, 1.95), $R$)
  content((0.64, 1.82), [Vật $B$])
  bezier((0.55, 4.03), (4.10, 0.72), (2.69, 4.03), (3.91, 3.02))
  line((3.4, 0), (4.86, 1.5), stroke: dam)
  circle((4.1, 0.72), radius: 0.055, fill: black)
  circle((0.55, 4.03), radius: 0.035, fill: black)
  content((0.54, 4.16), $C$, anchor: "south")
  content((4.15, 0.93), $A$, anchor: "south")
  content((4.22, 0.32), [Vật nhỏ], anchor: "west")
  line((2.66, 2.58), (3.59, 2.58), stroke: dam, mark: mui)
  content((3.09, 2.77), $arrow(a)_0$, anchor: "south")
}

#let hinh-1-13() = {
  import draw: *
  line((-0.4, 0), (4.5, 0))
  line((-0.4, 0.46), (4.5, 0.46))
  // Xe ở A trên quốc lộ, G là điểm rời đường, DH vuông góc quốc lộ.
  rect((-0.30, 0.07), (0.34, 0.39), fill: nhat, radius: 0.08)
  rect((-0.16, 0.12), (0.17, 0.34), fill: white)
  content((0.57, 0.24), $A$)
  content((2.13, 0.24), $G$)
  content((3.80, 0.24), $D$)
  line((2.13, 0), (3.80, -1.64), stroke: dut)
  line((3.80, 0), (3.80, -1.64), stroke: 0.55pt,
    mark: (start: ">", end: ">"))
  line((3.58, 0), (3.58, -0.22), (3.80, -0.22), stroke: 0.45pt)
  circle((3.80, -1.64), radius: 0.055, fill: black)
  content((3.94, -0.8), $l$, anchor: "west")
  content((3.94, -1.64), $H$, anchor: "west")
}

#let hinh-1-14() = {
  import draw: *
  // Minh họa khí cầu; vật nhỏ rơi khỏi giỏ, giữ nhãn gốc.
  // Đường bao bằng Bézier, không có ảnh bitmap.
  merge-path(close: true, fill: luma(84%), stroke: dam, {
    bezier((0, 0), (0, 4.16), (-2.8, 2.8), (-1.12, 4.16))
    bezier((0, 4.16), (0, 0), (1.12, 4.16), (2.8, 2.8))
  })
  bezier((0, 0), (0, 4.16), (-1.2, 2.4), (-0.65, 4.16), stroke: 0.5pt)
  bezier((0, 0), (0, 4.16), (1.2, 2.4), (0.65, 4.16), stroke: 0.5pt)
  line((0, 0), (0, 4.16), stroke: 0.5pt)
  line((-1.05, 1.82), (-0.53, 2.28), (-0.25, 2.0), (0.35, 2.66),
    (0.58, 2.19), (1.19, 2.78), (1.12, 2.29), (0.5, 1.64),
    (0.26, 2.12), (-0.27, 1.52), (-0.57, 1.84), (-0.86, 1.60),
    close: true, fill: white, stroke: none)
  line((-0.15, 0.22), (-0.14, -0.22))
  line((0.15, 0.22), (0.14, -0.22))
  rect((-0.18, -0.36), (0.18, -0.16), fill: luma(75%))
  circle((-0.34, -0.57), radius: 0.045, fill: black)
  content((-0.53, -0.55), [Vật rơi từ\ khí cầu], anchor: "east")
}

#let hinh-1-15() = {
  import draw: *
  // Giữ bố trí người, quả bóng và nhãn Mặt đất như bản gốc.
  line((2.15, 0), (2.15, 4.3), (3.5, 4.3), stroke: dam)
  content((2.30, 3.90), [Mặt đất], anchor: "west")
  circle((2.30, 4.80), radius: 0.17, fill: luma(65%))
  // Người ném minh họa, không biểu diễn thêm góc hay vận tốc.
  circle((0.62, 3.65), radius: (0.20, 0.26), fill: luma(85%))
  line((0.51, 3.40), (0.89, 3.36), (1.02, 2.35),
    (0.46, 2.29), close: true, fill: nhat)
  line((0.82, 3.34), (1.39, 3.77), (1.98, 4.28), stroke: 3pt + luma(65%))
  line((0.50, 3.30), (0.17, 2.83), (0.48, 2.59), stroke: 3pt + luma(65%))
  line((0.46, 2.35), (1.02, 2.35), (1.06, 1.86),
    (0.47, 1.86), close: true, fill: luma(65%))
  line((0.58, 1.89), (0.67, 0.97), (0.53, 0.19), stroke: 4pt + luma(70%))
  line((0.92, 1.90), (1.08, 1.06), (0.94, 0.17), stroke: 4pt + luma(70%))
  line((0.31, 0.12), (0.60, 0.10), stroke: 4pt)
  line((0.89, 0.10), (1.22, 0.10), stroke: 4pt)
}

#let hinh-1-16() = {
  import draw: *
  // Ca nô minh họa như trong nguồn, không gắn thêm dữ kiện vận tốc.
  line((0, 0.72), (1.10, 0.85), (3.64, 1.02), (4.72, 0.94),
    (3.77, 0.25), (0.87, 0.12), close: true, fill: luma(75%))
  line((0.48, 0.67), (1.54, 0.73), (2.50, 0.95), (1.79, 1.2),
    (0.94, 1.10), close: true, fill: nhat)
  line((1.78, 1.20), (2.06, 1.01), (2.70, 1.00), stroke: dam)
  bezier((-0.25, 0.04), (2.68, -0.14), (0.30, -0.18), (1.44, -0.30), stroke: dam)
  bezier((0.20, -0.26), (3.79, -0.25), (1.29, -0.50), (2.78, -0.32))
  bezier((1.44, -0.52), (4.50, -0.10), (2.78, -0.73), (3.75, -0.41))
}

#let hinh-1-17() = {
  import draw: *
  line((0, 0), (4.72, 0), mark: mui)
  bezier((0, 0), (1.92, -0.14), (0.67, -0.84), (1.10, -0.75))
  let b = (3.04, 0.76)
  bezier((1.92, -0.14), b, (2.32, 0.23), (2.75, 0.56))
  bezier(b, (4.44, 1.08), (3.44, 1.04), (4.04, 1.20))
  line(b, (3.91, 0.76), stroke: dam, mark: mui)
  line(b, (3.88, 1.35), stroke: dam, mark: mui)
  circle(b, radius: 0.045, fill: white)
  circle((0, 0), radius: 0.045, fill: white)
  content((-0.04, -0.17), $O$, anchor: "north")
  content((2.85, 0.86), $B$, anchor: "south-east")
  content((3.66, 0.53), $arrow(a)$)
  content((3.79, 1.48), $arrow(a)_t$, anchor: "south")
  content((4.78, -0.12), $x$, anchor: "north")
}

#let hinh-1-18() = {
  import draw: *
  let c = (2, 2)
  let r = 1.8
  let o = (2 + r*calc.cos(190deg), 2 + r*calc.sin(190deg))
  let b = (2 + r*calc.cos(65deg), 2 + r*calc.sin(65deg))
  circle(c, radius: r)
  line(o, b, stroke: dam, mark: mui)
  line(c, b, mark: mui)
  cung(o, 0.67, 75deg, -52deg, stroke: dam, mark: mui)
  for p in (o, b, c) { circle(p, radius: 0.05, fill: white) }
  content((o.at(0)-0.12, o.at(1)-0.12), $O$, anchor: "north-east")
  content((b.at(0), b.at(1)+0.14), $B$, anchor: "south")
  content((2.04, 1.81), $C$, anchor: "north")
  content((2.57, 2.87), $R$)
  content((1.43, 2.94), $r$)
  content((1.10, 1.80), $omega$)
}

#let cac-hinh = (
  "1.1": hinh-1-1, "1.2": hinh-1-2, "1.4": hinh-1-4,
  "1.6": hinh-1-6, "1.9": hinh-1-9, "1.10": hinh-1-10,
  "1.11": hinh-1-11, "1.12": hinh-1-12, "1.13": hinh-1-13,
  "1.14": hinh-1-14, "1.15": hinh-1-15, "1.16": hinh-1-16,
  "1.17": hinh-1-17, "1.18": hinh-1-18,
)

#let ve-hinh(number) = {
  set text(font: "Times New Roman", size: 10pt)
  canvas(length: 8mm, {
    draw.set-style(stroke: net, mark: (fill: black))
    (cac-hinh.at(number))()
  })
}

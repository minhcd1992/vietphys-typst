#import "@preview/cetz:0.3.3": canvas, draw

// Màu sắc quy chuẩn
#let col-primary = rgb("#1a5f7a")
#let col-blue = rgb("#0284c7")
#let col-red = rgb("#dc2626")
#let col-orange = rgb("#ea580c")
#let col-green = rgb("#16a34a")
#let col-gray = rgb("#64748b")
#let dash-line = (paint: luma(120), thickness: 0.6pt, dash: "dashed")
#let mui-ten = (end: ">", fill: black)

// Hàm vẽ đường tròn / elip bằng đa giác lấy mẫu để tránh lỗi nét chéo của CeTZ 0.3.3 trên Typst 0.15
#let vong-tron(center, r, n: 48, ..style) = {
  let (cx, cy) = center
  let (rx, ry) = if type(r) == array { r } else { (r, r) }
  let pts = range(n).map(i => {
    let a = 2 * calc.pi * i / n
    (cx + rx * calc.cos(a), cy + ry * calc.sin(a))
  })
  draw.line(..pts, close: true, ..style)
}

// ============================================================
// Câu 2: Đoạn dây dẫn MN treo nằm ngang trong từ trường thẳng đứng
// ============================================================
#let hinh-cau-02() = scale(70%, reflow: true)[
  #set text(font: "Times New Roman", size: 8.5pt)
  #canvas(length: 1cm, {
    import draw: *

    // Mặt phẳng / giá treo cố định
    line((0, 6), (6, 6), stroke: 0.8pt)
    for (a, b) in (
      ((0, 6), (-0.14, 6.14)),
      ((0.25, 6), (0.11, 6.14)),
      ((0.5, 6), (0.36, 6.14)),
      ((0.75, 6), (0.61, 6.14)),
      ((1, 6), (0.86, 6.14)),
      ((1.25, 6), (1.11, 6.14)),
      ((1.5, 6), (1.36, 6.14)),
      ((1.75, 6), (1.61, 6.14)),
      ((2, 6), (1.86, 6.14)),
      ((2.25, 6), (2.11, 6.14)),
      ((2.5, 6), (2.36, 6.14)),
      ((2.75, 6), (2.61, 6.14)),
      ((3, 6), (2.86, 6.14)),
      ((3.25, 6), (3.11, 6.14)),
      ((3.5, 6), (3.36, 6.14)),
      ((3.75, 6), (3.61, 6.14)),
      ((4, 6), (3.86, 6.14)),
      ((4.25, 6), (4.11, 6.14)),
      ((4.5, 6), (4.36, 6.14)),
      ((4.75, 6), (4.61, 6.14)),
      ((5, 6), (4.86, 6.14)),
      ((5.25, 6), (5.11, 6.14)),
      ((5.5, 6), (5.36, 6.14)),
      ((5.75, 6), (5.61, 6.14)),
      ((6, 6), (5.86, 6.14)),
    ) {
      line(a, b, stroke: 0.5pt)
    }

    // Hai dây treo kim loại
    line((1, 6), (1, 1), stroke: 0.8pt)
    line((5, 6), (5, 1), stroke: 0.8pt)

    // Thanh dẫn MN
    rect((0, 1), (6, 0.5), stroke: 0.8pt, fill: rgb(157, 189, 205, 20%))

    // Các đường sức từ B hướng xuống
    line(
      (0.5, 5),
      (0.5, 2),
      stroke: (paint: rgb("#e45858")),
      mark: (end: "stealth", fill: rgb("#e45858"), length: 0.2cm, width: 0.15cm, inset: 0.05cm),
    )
    line(
      (1.5, 5),
      (1.5, 2),
      stroke: (paint: rgb("#e45858")),
      mark: (end: "stealth", fill: rgb("#e45858"), length: 0.2cm, width: 0.15cm, inset: 0.05cm),
    )
    line(
      (2.5, 5),
      (2.5, 2),
      stroke: (paint: rgb("#e45858")),
      mark: (end: "stealth", fill: rgb("#e45858"), length: 0.2cm, width: 0.15cm, inset: 0.05cm),
    )
    line(
      (3.5, 5),
      (3.5, 2),
      stroke: (paint: rgb("#e45858")),
      mark: (end: "stealth", fill: rgb("#e45858"), length: 0.2cm, width: 0.15cm, inset: 0.05cm),
    )
    line(
      (4.5, 5),
      (4.5, 2),
      stroke: (paint: rgb("#e45858")),
      mark: (end: "stealth", fill: rgb("#e45858"), length: 0.2cm, width: 0.15cm, inset: 0.05cm),
    )
    line(
      (5.5, 5),
      (5.5, 2),
      stroke: (paint: rgb("#e45858")),
      mark: (end: "stealth", fill: rgb("#e45858"), length: 0.2cm, width: 0.15cm, inset: 0.05cm),
    )

    // Chiều dòng điện I
    line(
      (0.5, 0.75),
      (5.5, 0.75),
      stroke: (paint: rgb("#5366f3")),
      mark: (end: "stealth", fill: rgb("#5366f3"), length: 0.2cm, width: 0.15cm, inset: 0.05cm),
    )

    // Ký hiệu & nhãn
    content((2.5, 4), text(size: 15pt, fill: rgb("#ef4444"), $arrow(B)$), anchor: "west", padding: 3pt)
    content((2.9, 1.23), text(size: 15pt, fill: rgb("#0000ff"), $I$), anchor: "west", padding: 3pt)
    content((0, 1.3), text(size: 8pt, fill: black, $M$), anchor: "west", padding: 3pt)
    content((6, 1.3), text(size: 8pt, fill: black, $N$), anchor: "west", padding: 3pt)
  })
]

// ============================================================
// Câu 3: Khung tam giác vuông AMN trong từ trường song song AN
// ============================================================
#let hinh-cau-03() = scale(70%, reflow: true)[
  #set text(font: "Times New Roman", size: 9pt)
  #canvas(length: 1cm, {
    import draw: *
    line((3, 0), (0, 0), stroke: 0.8pt, mark: (
      end: (symbol: "stealth", pos: 50%, shorten-to: none),
      fill: black,
      length: 0.2cm,
      width: 0.15cm,
      inset: 0.05cm,
    ))
    line((0, 0), (0, 4), stroke: 0.8pt, mark: (
      end: (symbol: "stealth", pos: 50%, shorten-to: none),
      fill: black,
      length: 0.2cm,
      width: 0.15cm,
      inset: 0.05cm,
    ))
    line((0, 4), (3, 0), stroke: 0.8pt, mark: (
      end: (symbol: "stealth", pos: 50%, shorten-to: none),
      fill: black,
      length: 0.2cm,
      width: 0.15cm,
      inset: 0.05cm,
    ))
    line(
      (-0.5, 0.5),
      (3.5, 0.5),
      stroke: (thickness: 0.4pt, paint: rgb("#e45858")),
      mark: (end: "stealth", fill: rgb("#e45858"), length: 0.2cm, width: 0.15cm, inset: 0.05cm),
    )
    line(
      (-0.5, 1),
      (3.5, 1),
      stroke: (thickness: 0.4pt, paint: rgb("#e45858")),
      mark: (end: "stealth", fill: rgb("#e45858"), length: 0.2cm, width: 0.15cm, inset: 0.05cm),
    )
    line(
      (-0.5, 1.5),
      (3.5, 1.5),
      stroke: (thickness: 0.4pt, paint: rgb("#e45858")),
      mark: (end: "stealth", fill: rgb("#e45858"), length: 0.2cm, width: 0.15cm, inset: 0.05cm),
    )
    line(
      (-0.5, 2),
      (3.5, 2),
      stroke: (thickness: 0.4pt, paint: rgb("#e45858")),
      mark: (end: "stealth", fill: rgb("#e45858"), length: 0.2cm, width: 0.15cm, inset: 0.05cm),
    )
    line(
      (-0.5, 2.5),
      (3.5, 2.5),
      stroke: (thickness: 0.4pt, paint: rgb("#e45858")),
      mark: (end: "stealth", fill: rgb("#e45858"), length: 0.2cm, width: 0.15cm, inset: 0.05cm),
    )
    line(
      (-0.5, 3),
      (3.5, 3),
      stroke: (thickness: 0.4pt, paint: rgb("#e45858")),
      mark: (end: "stealth", fill: rgb("#e45858"), length: 0.2cm, width: 0.15cm, inset: 0.05cm),
    )
    line(
      (-0.5, 3.5),
      (3.5, 3.5),
      stroke: (thickness: 0.4pt, paint: rgb("#e45858")),
      mark: (end: "stealth", fill: rgb("#e45858"), length: 0.2cm, width: 0.15cm, inset: 0.05cm),
    )
    content((-0.23, -0.22), text(size: 10pt, fill: black, $A$), anchor: "west", padding: 3pt)
    content((2.89, -0.24), text(size: 10pt, fill: black, $N$), anchor: "west", padding: 3pt)
    content((-0.18, 4.21), text(size: 10pt, fill: black, $M$), anchor: "west", padding: 3pt)
    content((1.9, 2.7), text(size: 12pt, fill: rgb("#ef4444"), $arrow(B)$), anchor: "west", padding: 3pt)
    content((1.34, 0.28), text(size: 12pt, fill: black, $I$), anchor: "west", padding: 3pt)
  })
]

// ============================================================
// Câu 4: Khung dây vuông MNPQ quay quanh trục OO' trong từ trường
// ============================================================
#let hinh-cau-04() = [
  #set text(font: "Times New Roman", size: 8.5pt)
  #canvas(length: 1cm, {
    import draw: *
    line((0, 0), (3, 0), stroke: 0.8pt, mark: (
      end: (symbol: "stealth", pos: 50%, shorten-to: none),
      fill: black,
      length: 0.2cm,
      width: 0.15cm,
      inset: 0.05cm,
    ))
    line((3, 0), (4, 2.5), stroke: 0.8pt, mark: (
      end: (symbol: "stealth", pos: 50%, shorten-to: none),
      fill: black,
      length: 0.2cm,
      width: 0.15cm,
      inset: 0.05cm,
    ))
    line((1, 2.5), (0, 0), stroke: 0.8pt, mark: (
      end: (symbol: "stealth", pos: 50%, shorten-to: none),
      fill: black,
      length: 0.2cm,
      width: 0.15cm,
      inset: 0.05cm,
    ))
    line((4, 2.5), (1, 2.5), stroke: 0.8pt, mark: (
      end: (symbol: "stealth", pos: 50%, shorten-to: none),
      fill: black,
      length: 0.2cm,
      width: 0.15cm,
      inset: 0.05cm,
    ))
    line((4, 1.25), (0, 1.25), stroke: (thickness: 0.4pt, dash: "dashed"))
    line(
      (1, 3),
      (1, 1.5),
      stroke: (thickness: 0.4pt, paint: rgb("#e45858")),
      mark: (end: "stealth", fill: rgb("#e45858"), length: 0.2cm, width: 0.15cm, inset: 0.05cm),
    )
    line(
      (2, 3),
      (2, 1.5),
      stroke: (thickness: 0.4pt, paint: rgb("#e45858")),
      mark: (end: "stealth", fill: rgb("#e45858"), length: 0.2cm, width: 0.15cm, inset: 0.05cm),
    )
    line(
      (3, 3),
      (3, 1.5),
      stroke: (thickness: 0.4pt, paint: rgb("#e45858")),
      mark: (end: "stealth", fill: rgb("#e45858"), length: 0.2cm, width: 0.15cm, inset: 0.05cm),
    )
    line(
      (4, 3),
      (4, 1.5),
      stroke: (thickness: 0.4pt, paint: rgb("#e45858")),
      mark: (end: "stealth", fill: rgb("#e45858"), length: 0.2cm, width: 0.15cm, inset: 0.05cm),
    )
    content((-0.28, -0.21), text(size: 8pt, fill: black, $N$), anchor: "west", padding: 3pt)
    content((2.98, -0.19), text(size: 8pt, fill: black, $P$), anchor: "west", padding: 3pt)
    content((3.95, 2.56), text(size: 8pt, fill: black, $Q$), anchor: "west", padding: 3pt)
    content((0.57, 2.57), text(size: 8pt, fill: black, $M$), anchor: "west", padding: 3pt)
    content((2.21, 1.98), text(size: 8pt, fill: rgb("#ef4444"), $arrow(B)$), anchor: "west", padding: 3pt)
    content((1.38, 0.27), text(size: 8pt, fill: black, $I$), anchor: "west", padding: 3pt)
    content((0.04, 1.04), text(size: 8pt, fill: black, $O$), anchor: "west", padding: 3pt)
    content((3.53, 1.05), text(size: 8pt, fill: black, $O'$), anchor: "west", padding: 3pt)
  })
]

// ============================================================
// Câu 5: Đo cảm ứng từ B bằng cân điện tử và đoạn dây AB
// ============================================================
#let hinh-cau-05() = scale(55%, reflow: true)[
  #set text(font: "Times New Roman", size: 8pt)
  #canvas(length: 1cm, {
    import draw: *
    let ink = rgb("#1e293b")
    let blue = rgb("#1d4ed8")
    set-style(stroke: (thickness: 0.85pt, paint: ink))

    let poly(fill-color, ..pts) = line(..pts.pos(), close: true, fill: fill-color)
    let txt(p, s, size: 11pt, col: ink) = content(p, text(size: size, fill: col, s), padding: 2pt)
    let arr(a, b, col: ink) = line(
      a,
      b,
      stroke: (thickness: 0.75pt, paint: col),
      mark: (end: "stealth", fill: col, length: 0.16cm, width: 0.11cm, inset: 0.05cm),
    )
    let u-arc(rx, ry, n, rev: false, shift: (0, 0)) = range(n + 1).map(i => {
      let a = (if rev { 2 - i / 16 } else { 1 + i / 16 }) * calc.pi
      (rx * calc.cos(a) + shift.at(0), 0.2 + ry * calc.sin(a) + shift.at(1))
    })
    let stand(dx, dy) = {
      poly(rgb("#f8fafc"), (2.45 + dx, -0.35 + dy), (3.3 + dx, -0.35 + dy), (3.48 + dx, dy), (2.63 + dx, dy))
      poly(
        rgb("#e2e8f0"),
        (2.45 + dx, -0.35 + dy),
        (3.3 + dx, -0.35 + dy),
        (3.3 + dx, -0.5 + dy),
        (2.45 + dx, -0.5 + dy),
      )
      poly(rgb("#cbd5e1"), (3.3 + dx, -0.35 + dy), (3.48 + dx, dy), (3.48 + dx, -0.15 + dy), (3.3 + dx, -0.5 + dy))
      poly(white, (2.78 + dx, -0.25 + dy), (2.98 + dx, -0.25 + dy), (2.98 + dx, 2.25 + dy), (2.78 + dx, 2.25 + dy))
      poly(
        rgb("#cbd5e1"),
        (2.98 + dx, -0.25 + dy),
        (3.12 + dx, -0.08 + dy),
        (3.12 + dx, 2.42 + dy),
        (2.98 + dx, 2.25 + dy),
      )
      poly(
        rgb("#f1f5f9"),
        (2.78 + dx, 2.25 + dy),
        (2.98 + dx, 2.25 + dy),
        (3.12 + dx, 2.42 + dy),
        (2.92 + dx, 2.42 + dy),
      )
    }
    let pole(x, c1, c2, c3, lbl) = {
      poly(rgb(c1), (x, 0.95), (x + 0.54, 0.95), (x + 0.54, 1.65), (x, 1.65))
      poly(rgb(c2), (x + 0.54, 0.95), (x + 0.8, 1.2), (x + 0.8, 1.9), (x + 0.54, 1.65))
      poly(rgb(c3), (x, 1.65), (x + 0.54, 1.65), (x + 0.8, 1.9), (x + 0.26, 1.9))
      txt((x + 0.27, 1.3), lbl, size: 12pt)
    }

    // 1. Bàn & Cân điện tử
    poly(rgb("#f8fafc"), (-5.6, -2.5), (4.4, -2.5), (5.8, 0.45), (-3.9, 0.45))
    poly(rgb("#f1f5f9"), (-5.6, -2.5), (4.4, -2.5), (4.4, -3), (-5.6, -3))
    poly(rgb("#e2e8f0"), (4.4, -2.5), (5.8, 0.45), (5.8, -0.05), (4.4, -3))
    txt((-4.7, -2.75), [Bàn])

    poly(rgb("#f1f5f9"), (-2.3, -1.95), (1.2, -1.95), (1.38, -1.1), (-2.12, -1.1))
    poly(rgb("#cbd5e1"), (1.2, -1.95), (2.25, -0.25), (2.25, 0.3), (1.38, -1.1))
    poly(rgb("#f8fafc"), (-2.12, -1.1), (1.38, -1.1), (2.25, 0.3), (-1.15, 0.3))
    poly(rgb("#e2e8f0"), (-1.95, -0.95), (1.25, -0.95), (1.25, -0.8), (-1.95, -0.8))
    poly(rgb("#94a3b8"), (1.25, -0.95), (2.08, 0.38), (2.08, 0.52), (1.25, -0.8))
    poly(white, (-1.95, -0.8), (1.25, -0.8), (2.08, 0.52), (-1.05, 0.52))
    poly(white, (-2, -1.8), (0.35, -1.8), (0.48, -1.22), (-1.87, -1.22))
    txt((-0.75, -1.52), [499,72 g])
    poly(rgb("#e2e8f0"), (0.6, -1.45), (1, -1.45), (1.05, -1.26), (0.65, -1.26))
    poly(rgb("#e2e8f0"), (0.53, -1.76), (0.93, -1.76), (0.98, -1.57), (0.58, -1.57))
    txt((-1.05, -2.22), [Cân điện tử], size: 10.5pt)

    // 2. Giá đỡ phải, Nam châm chữ U & Dây AB
    stand(0, 0)
    poly(
      rgb("#cbd5e1"),
      (-0.48, 0.95),
      (-0.22, 1.2),
      ..u-arc(0.48, 0.44, 12, shift: (0.26, 0.25)),
      ..u-arc(0.48, 0.44, 12).rev(),
    )
    poly(
      rgb("#cbd5e1"),
      (1.02, 0.95),
      (1.28, 1.2),
      ..u-arc(1.02, 0.86, 11, rev: true, shift: (0.26, 0.25)),
      ..u-arc(1.02, 0.86, 11, rev: true).rev(),
    )
    poly(white, (-1.02, 0.95), (-0.48, 0.95), ..u-arc(0.48, 0.44, 16), (0.48, 0.95), (1.02, 0.95), ..u-arc(
      1.02,
      0.86,
      16,
      rev: true,
    ))
    pole(-1.02, "#ef4444", "#b91c1c", "#f87171", [N])
    for y in (1.1, 1.28, 1.46, 1.64) { arr((-0.38, y), (0.46, y)) }
    txt((0.05, 1.92), $arrow(B)$)

    poly(white, (-2.15, 0.45), (2.35, 1.53), (2.35, 1.61), (-2.15, 0.53))
    txt((-2.1, 0.2), [A], col: blue)
    txt((2.25, 1.82), [B], col: blue)
    pole(0.48, "#0284c7", "#0369a1", "#38bdf8", [S])

    // 3. Giá đỡ trái, dây mềm & chú thích
    stand(-5.8, -0.9)
    bezier((-2.82, 0.58), (-2.15, 0.5), (-2.55, 0.62), (-2.41, 0.43), stroke: (thickness: 1.1pt, paint: blue))
    bezier((-3.02, 0.58), (-4.8, -0.35), (-3.55, 0.55), (-3.85, -0.45), stroke: (thickness: 1pt, paint: blue))
    circle((-4.8, -0.35), radius: 0.06, fill: rgb("#60a5fa"))
    bezier((2.35, 1.57), (2.88, 1.68), (2.55, 1.63), (2.72, 1.68), stroke: (thickness: 1.2pt, paint: blue))
    bezier((3.05, 1.65), (5.45, -0.15), (3.85, 1.55), (3.95, -0.25), stroke: (thickness: 1.1pt, paint: blue))
    circle((5.45, -0.15), radius: 0.06, fill: rgb("#93c5fd"))

    txt((-4.1, 2.25), [Giá đỡ cố định], size: 10.5pt)
    arr((-3.9, 2.02), (-3.08, 1.32), col: blue)
    txt((-1.35, 2.38), [Dây AB = 10 cm], size: 10.5pt)
    arr((-1.6, 2.1), (-1.72, 0.65), col: blue)
  })
]

// ============================================================
// Câu 6: Đo cảm ứng từ B bằng lực kế điện tử (có nút TARE)
// ============================================================
#let hinh-cau-06() = scale(58%, reflow: true)[
  #set text(font: "Times New Roman", size: 8pt)
  #canvas(length: 1cm, {
    import draw: *
    let ink = rgb("#1e293b")
    let blue = rgb("#1d4ed8")
    let teal = rgb("#0369a1")
    let red-col = rgb("#dc2626")
    set-style(stroke: (thickness: 0.85pt, paint: ink))

    let poly(fill-color, ..pts) = line(..pts.pos(), close: true, fill: fill-color)
    let txt(p, s, size: 10.5pt, col: ink, anchor: "center") = content(
      p,
      text(size: size, fill: col, s),
      anchor: anchor,
      padding: 2pt,
    )
    let arr(a, b, col: ink, w: 0.75pt) = line(
      a,
      b,
      stroke: (thickness: w, paint: col),
      mark: (end: "stealth", fill: col, length: 0.16cm, width: 0.11cm, inset: 0.04cm),
    )
    let u-arc(rx, ry, n, rev: false, shift: (0, 0)) = range(n + 1).map(i => {
      let a = (if rev { 2 - i / 16 } else { 1 + i / 16 }) * calc.pi
      (rx * calc.cos(a) + shift.at(0), -0.05 + ry * calc.sin(a) + shift.at(1))
    })
    let pole(x, c1, c2, c3, lbl) = {
      poly(rgb(c1), (x, 0.7), (x + 0.6, 0.7), (x + 0.6, 1.48), (x, 1.48))
      poly(rgb(c2), (x + 0.6, 0.7), (x + 0.88, 0.96), (x + 0.88, 1.74), (x + 0.6, 1.48))
      poly(rgb(c3), (x, 1.48), (x + 0.6, 1.48), (x + 0.88, 1.74), (x + 0.28, 1.74))
      txt((x + 0.3, 1.08), lbl, size: 12pt)
    }

    // 1. Mặt bàn 3D
    poly(rgb("#f8fafc"), (-4.5, -1.55), (3.8, -1.55), (4.85, 0.45), (-3.45, 0.45))
    poly(rgb("#f1f5f9"), (-4.5, -1.55), (3.8, -1.55), (3.8, -1.95), (-4.5, -1.95))
    poly(rgb("#cbd5e1"), (3.8, -1.55), (4.85, 0.45), (4.85, 0.05), (3.8, -1.95))

    // 2. Giá đỡ cố định bên trái
    // Đế giá đỡ
    poly(rgb("#f8fafc"), (-3.55, -0.8), (-1.95, -0.8), (-1.62, -0.18), (-3.22, -0.18))
    poly(rgb("#e2e8f0"), (-3.55, -0.8), (-1.95, -0.8), (-1.95, -1.08), (-3.55, -1.08))
    poly(rgb("#cbd5e1"), (-1.95, -0.8), (-1.62, -0.18), (-1.62, -0.46), (-1.95, -1.08))
    // Trụ đứng
    poly(white, (-2.82, -0.48), (-2.54, -0.48), (-2.54, 4.35), (-2.82, 4.35))
    poly(rgb("#cbd5e1"), (-2.54, -0.48), (-2.38, -0.3), (-2.38, 4.53), (-2.54, 4.35))
    poly(rgb("#f1f5f9"), (-2.82, 4.35), (-2.54, 4.35), (-2.38, 4.53), (-2.66, 4.53))

    // Khớp kẹp trượt & thanh ngang giữ lực kế
    line((-3.02, 3.55), (-2.88, 3.55), stroke: 1.4pt + ink)
    vong-tron((-3.14, 3.55), 0.12, fill: rgb("#93c5fd"))
    poly(rgb("#93c5fd"), (-2.9, 3.28), (-2.42, 3.28), (-2.42, 3.82), (-2.9, 3.82))
    poly(rgb("#bfdbfe"), (-2.42, 3.35), (-2.05, 3.35), (-2.05, 3.75), (-2.42, 3.75))
    poly(rgb("#e2e8f0"), (-2.05, 3.48), (-1.12, 3.48), (-1.12, 3.62), (-2.05, 3.62))
    arc((-1.0, 3.55), start: 40deg, stop: 320deg, radius: 0.12, anchor: "origin", stroke: 1.4pt + ink)
    arc((-0.74, 3.55), start: 135deg, stop: 225deg, radius: 0.12, anchor: "origin", stroke: 1.4pt + ink)
    poly(rgb("#e2e8f0"), (-0.75, 3.48), (-0.58, 3.48), (-0.58, 3.62), (-0.75, 3.62))

    // 3. Lực kế điện tử 3D
    poly(white, (-0.58, 2.95), (1.35, 2.95), (1.35, 4.02), (-0.58, 4.02))
    poly(rgb("#f8fafc"), (-0.58, 4.02), (1.35, 4.02), (1.62, 4.28), (-0.31, 4.28))
    poly(rgb("#cbd5e1"), (1.35, 2.95), (1.62, 3.21), (1.62, 4.28), (1.35, 4.02))
    // Màn hình số
    poly(rgb("#f8fafc"), (-0.35, 3.18), (1.12, 3.18), (1.12, 3.78), (-0.35, 3.78))
    txt((0.38, 3.48), [68,9 mN], size: 11.5pt)
    // Nút TARE bên hông
    vong-tron((1.48, 3.55), 0.09, fill: rgb("#60a5fa"))
    line((1.56, 3.61), (1.92, 3.88), stroke: 1pt + blue)
    txt((2.0, 3.92), [Nút TARE], size: 10pt, anchor: "west")
    txt((0.45, 4.58), [Lực kế điện tử], size: 10.5pt)

    // Móc treo dưới đáy lực kế
    poly(rgb("#e2e8f0"), (0.31, 2.65), (0.41, 2.65), (0.41, 2.95), (0.31, 2.95))
    arc((0.36, 2.52), start: -40deg, stop: 220deg, radius: 0.11, anchor: "origin", stroke: 1.2pt + blue)
    poly(rgb("#e2e8f0"), (0.32, 2.12), (0.4, 2.12), (0.4, 2.48), (0.32, 2.48))

    // 4. Nam châm chữ U 3D (tâm quanh x = 0.42)
    let cx = 0.42
    poly(
      rgb("#cbd5e1"),
      (cx - 0.52, 0.7),
      (cx - 0.24, 0.96),
      ..u-arc(0.52, 0.55, 12, shift: (cx + 0.28, 0.26)),
      ..u-arc(0.52, 0.55, 12, shift: (cx, 0)).rev(),
    )
    poly(
      rgb("#cbd5e1"),
      (cx + 1.12, 0.7),
      (cx + 1.4, 0.96),
      ..u-arc(1.12, 1.05, 11, rev: true, shift: (cx + 0.28, 0.26)),
      ..u-arc(1.12, 1.05, 11, rev: true, shift: (cx, 0)).rev(),
    )
    poly(
      white,
      (cx - 1.12, 0.7),
      (cx - 0.52, 0.7),
      ..u-arc(0.52, 0.55, 16, shift: (cx, 0)),
      (cx + 0.52, 0.7),
      (cx + 1.12, 0.7),
      ..u-arc(1.12, 1.05, 16, rev: true, shift: (cx, 0)),
    )
    pole(cx - 1.12, "#ef4444", "#b91c1c", "#f87171", [N])

    // Đường sức từ B phần sau
    for y in (0.95, 1.12, 1.29, 1.46) {
      arr((cx - 0.35, y), (cx + 0.5, y), col: teal, w: 0.7pt)
    }

    // 5. Khung dây hình chữ nhật N = 4 vòng (đặt dọc khe giữa hai cực N - S)
    let fx1 = 0.14
    let fy1 = 0.85
    let fx2 = 0.66
    let fy2 = 1.28
    let h = 1.15
    // Nét khung dây 3D màu đồng/cam
    line(
      (fx1, fy1),
      (fx2, fy2),
      (fx2, fy2 + h),
      (fx1, fy1 + h),
      close: true,
      stroke: (thickness: 2.2pt, paint: rgb("#b45309"), join: "round"),
    )
    line(
      (fx1, fy1),
      (fx2, fy2),
      (fx2, fy2 + h),
      (fx1, fy1 + h),
      close: true,
      stroke: (thickness: 1.0pt, paint: rgb("#f59e0b"), join: "round"),
    )
    txt((cx - 0.02, 1.68), $arrow(B)$, size: 11pt, col: teal)

    // Hai dây dẫn cấp dòng điện I vào khung
    bezier((0.55, 2.38), (2.25, 3.05), (1.05, 2.85), (1.65, 3.05), stroke: (thickness: 1.1pt, paint: ink))
    bezier((0.66, 2.38), (2.35, 2.75), (1.18, 2.68), (1.78, 2.78), stroke: (thickness: 1.1pt, paint: red-col))
    arr((1.4, 2.88), (1.78, 2.98), col: red-col, w: 0.75pt)
    arr((1.95, 2.66), (1.58, 2.58), col: red-col, w: 0.75pt)
    txt((2.48, 2.9), [$I = "4,48" thin "A"$], size: 10pt, col: red-col, anchor: "west")

    // Mũi tên lực từ hướng xuống ở cạnh dưới
    arr((0.4, 1.06), (0.4, 0.22), col: red-col, w: 1.0pt)

    // Cực S vẽ sau khung dây để tạo chiều sâu đúng phối cảnh
    pole(cx + 0.52, "#0284c7", "#0369a1", "#38bdf8", [S])

    // Chú thích hợp lý
    arr((1.58, 2.15), (0.76, 1.92), col: blue, w: 0.75pt)
    txt((1.65, 2.18), [Khung dây ($N = 4$ vòng)], size: 10pt, anchor: "west")
  })
]

// ============================================================
// Câu 8: Khung dây treo đĩa đòn cân thăng bằng trong nam châm chữ U
// ============================================================
#let hinh-cau-08() = scale(55%, reflow: true)[
  #set text(font: "Times New Roman", size: 8pt)
  #canvas(length: 1cm, {
    import draw: *
    let ink = rgb("#1e293b")
    let blue = rgb("#1d4ed8")
    let teal = rgb("#0369a1")
    let red-col = rgb("#dc2626")
    set-style(stroke: (thickness: 0.85pt, paint: ink))

    let poly(fill-color, ..pts) = line(..pts.pos(), close: true, fill: fill-color)
    let txt(p, s, size: 10.5pt, col: ink, anchor: "center") = content(
      p,
      text(size: size, fill: col, s),
      anchor: anchor,
      padding: 2pt,
    )
    let arr(a, b, col: ink, w: 0.75pt) = line(
      a,
      b,
      stroke: (thickness: w, paint: col),
      mark: (end: "stealth", fill: col, length: 0.16cm, width: 0.11cm, inset: 0.04cm),
    )
    let u-arc(rx, ry, n, rev: false, shift: (0, 0)) = range(n + 1).map(i => {
      let a = (if rev { 2 - i / 16 } else { 1 + i / 16 }) * calc.pi
      (rx * calc.cos(a) + shift.at(0), -0.45 + ry * calc.sin(a) + shift.at(1))
    })
    let pole(x, c1, c2, c3, lbl) = {
      poly(rgb(c1), (x, 0.3), (x + 0.6, 0.3), (x + 0.6, 1.08), (x, 1.08))
      poly(rgb(c2), (x + 0.6, 0.3), (x + 0.88, 0.56), (x + 0.88, 1.34), (x + 0.6, 1.08))
      poly(rgb(c3), (x, 1.08), (x + 0.6, 1.08), (x + 0.88, 1.34), (x + 0.28, 1.34))
      txt((x + 0.3, 0.68), lbl, size: 12pt)
    }

    // 1. Mặt phẳng đỡ đòn cân & Đòn cân bị lệch
    line((-3.2, 2.35), (3.4, 2.35), stroke: 0.8pt + rgb("#64748b"))
    poly(rgb("#e2e8f0"), (-0.58, 2.35), (0.58, 2.35), (0.4, 2.58), (-0.4, 2.58))
    poly(rgb("#f1f5f9"), (-0.08, 2.58), (0.08, 2.58), (0.08, 3.85), (-0.08, 3.85))
    // Bảng chia độ & kim lệch sang phải
    poly(white, (-0.16, 3.85), (0.16, 3.85), (0.3, 4.25), (-0.3, 4.25))
    arr((0, 3.85), (0.09, 4.18), col: red-col, w: 0.9pt)
    // Đòn cân nghiêng xuống về bên phải
    poly(rgb("#f1f5f9"), (-1.85, 4.08), (1.85, 3.56), (1.85, 3.7), (-1.85, 4.22))
    vong-tron((0, 3.88), 0.08, fill: ink)
    txt((0, 4.55), [Đòn cân (bị lệch)], size: 10.5pt)

    // Đĩa cân bên trái + quả cân đối trọng
    line((-1.72, 4.12), (-2.12, 3.05), stroke: 0.8pt + ink)
    line((-1.72, 4.12), (-1.32, 3.05), stroke: 0.8pt + ink)
    poly(rgb("#e2e8f0"), (-2.22, 3.05), (-1.22, 3.05), (-1.34, 2.86), (-2.1, 2.86))
    poly(rgb("#94a3b8"), (-1.88, 3.05), (-1.56, 3.05), (-1.61, 3.4), (-1.83, 3.4))
    poly(rgb("#64748b"), (-1.78, 3.4), (-1.66, 3.4), (-1.66, 3.48), (-1.78, 3.48))

    // Đĩa cân bên phải
    line((1.72, 3.6), (1.32, 2.52), stroke: 0.8pt + ink)
    line((1.72, 3.6), (2.12, 2.52), stroke: 0.8pt + ink)
    poly(rgb("#e2e8f0"), (1.22, 2.52), (2.22, 2.52), (2.1, 2.33), (1.34, 2.33))

    // Dây treo khung dây dưới đĩa phải
    line((1.72, 2.33), (1.72, 1.68), stroke: 0.8pt + ink)
    vong-tron((1.72, 1.63), 0.05, fill: white)

    // 2. Mặt bàn bên dưới & Nam châm chữ U 3D (tâm quanh cx = 1.72)
    let cx = 1.72
    poly(rgb("#f8fafc"), (-2.1, -1.85), (4.1, -1.85), (4.85, -0.15), (-1.35, -0.15))
    poly(rgb("#f1f5f9"), (-2.1, -1.85), (4.1, -1.85), (4.1, -2.18), (-2.1, -2.18))
    poly(rgb("#cbd5e1"), (4.1, -1.85), (4.85, -0.15), (4.85, -0.48), (4.1, -2.18))

    poly(
      rgb("#cbd5e1"),
      (cx - 0.52, 0.3),
      (cx - 0.24, 0.56),
      ..u-arc(0.52, 0.55, 12, shift: (cx + 0.28, 0.26)),
      ..u-arc(0.52, 0.55, 12, shift: (cx, 0)).rev(),
    )
    poly(
      rgb("#cbd5e1"),
      (cx + 1.12, 0.3),
      (cx + 1.4, 0.56),
      ..u-arc(1.12, 1.05, 11, rev: true, shift: (cx + 0.28, 0.26)),
      ..u-arc(1.12, 1.05, 11, rev: true, shift: (cx, 0)).rev(),
    )
    poly(
      white,
      (cx - 1.12, 0.3),
      (cx - 0.52, 0.3),
      ..u-arc(0.52, 0.55, 16, shift: (cx, 0)),
      (cx + 0.52, 0.3),
      (cx + 1.12, 0.3),
      ..u-arc(1.12, 1.05, 16, rev: true, shift: (cx, 0)),
    )
    pole(cx - 1.12, "#ef4444", "#b91c1c", "#f87171", [N])

    // Đường sức từ B từ N sang S
    for y in (0.52, 0.69, 0.86, 1.03) {
      arr((cx - 0.35, y), (cx + 0.5, y), col: teal, w: 0.7pt)
    }

    // 3. Khung dây vuông N = 200 vòng đặt dọc theo khe giữa hai cực N - S
    let fx1 = 1.44
    let fy1 = 0.42
    let fx2 = 1.98
    let fy2 = 0.86
    let h = 1.02
    line(
      (fx1, fy1),
      (fx2, fy2),
      (fx2, fy2 + h),
      (fx1, fy1 + h),
      close: true,
      stroke: (thickness: 2.2pt, paint: rgb("#b45309"), join: "round"),
    )
    line(
      (fx1, fy1),
      (fx2, fy2),
      (fx2, fy2 + h),
      (fx1, fy1 + h),
      close: true,
      stroke: (thickness: 1.0pt, paint: rgb("#f59e0b"), join: "round"),
    )

    // Chiều dòng điện I trên hai cạnh đứng và lực từ F kéo xuống
    arr((1.3, 1.52), (1.3, 1.05), col: red-col, w: 0.75pt)
    arr((2.14, 1.12), (2.14, 1.62), col: red-col, w: 0.75pt)
    txt((1.18, 1.48), [$I$], size: 10pt, col: red-col, anchor: "east")
    txt((cx - 0.02, 1.22), $arrow(B)$, size: 10.5pt, col: teal)
    arr((1.71, 0.64), (1.71, -0.18), col: red-col, w: 1.0pt)
    txt((1.92, -0.1), [$arrow(F)$], size: 10pt, col: red-col, anchor: "west")

    // Cực S vẽ sau khung dây để tạo chiều sâu
    pole(cx + 0.52, "#0284c7", "#0369a1", "#38bdf8", [S])

    // Chú thích hợp lý
    arr((0.15, 1.82), (1.35, 1.62), col: blue, w: 0.75pt)
    txt((0.08, 1.85), [Khung dây ($N = 200$ vòng)], size: 10pt, anchor: "east")
  })
]

// ============================================================
// Câu 9: Khung dây tròn đặt nghiêng góc 60 độ so với từ trường đều B
// ============================================================
#let hinh-cau-09() = scale(78%, reflow: true)[
  #set text(font: "Times New Roman", size: 8.5pt)
  #canvas(length: 1cm, {
    import draw: *
    let ink = rgb("#1e293b")
    let red-b = rgb("#e45858")
    let blue-n = rgb("#0284c7")

    // Các đường sức từ đều B nằm ngang (bố trí cách đều không cắt qua nhãn)
    for y in (0.35, 1.6, 2.85) {
      line(
        (0.0, y),
        (4.1, y),
        stroke: (paint: red-b, thickness: 0.6pt),
        mark: (end: "stealth", fill: red-b, length: 0.16cm, width: 0.12cm),
      )
    }
    content((3.85, 3.0), text(size: 9pt, fill: red-b)[$arrow(B)$], anchor: "south")

    // Khung dây tròn nghiêng góc 60 độ so với phương ngang của B
    group({
      translate((1.8, 1.6))
      rotate(60deg)
      vong-tron((0, 0), (1.25, 0.38), fill: rgb(254, 243, 199, 45%), stroke: 1.1pt + col-orange)
      vong-tron((0, 0), (1.18, 0.33), fill: none, stroke: 0.5pt + col-orange)
    })

    // Đường thẳng biểu diễn mặt phẳng khung (nghiêng 60 độ)
    line(
      (1.8 - 1.45 * calc.cos(60deg), 1.6 - 1.45 * calc.sin(60deg)),
      (1.8 + 1.45 * calc.cos(60deg), 1.6 + 1.45 * calc.sin(60deg)),
      stroke: (paint: ink, thickness: 0.6pt, dash: "dashed"),
    )

    // Vectơ pháp tuyến n vuông góc với mặt phẳng khung
    line(
      (1.8, 1.6),
      (1.8 + 1.35 * calc.cos(-30deg), 1.6 + 1.35 * calc.sin(-30deg)),
      stroke: 1.0pt + blue-n,
      mark: (end: "stealth", fill: blue-n, length: 0.18cm, width: 0.13cm),
    )
    content((3.18, 0.85), text(size: 9pt, fill: blue-n)[$arrow(n)$])

    // Ký hiệu góc 60 độ giữa mặt phẳng khung và vectơ B
    arc((1.8, 1.6), start: 0deg, stop: 60deg, radius: 0.55, anchor: "origin", stroke: 0.7pt + ink)
    content((2.48, 1.95), text(size: 8pt, fill: ink)[$60^degree$])

    // Ký hiệu góc α giữa n và B
    arc((1.8, 1.6), start: -30deg, stop: 0deg, radius: 0.78, anchor: "origin", stroke: 0.65pt + blue-n)
    content((2.75, 1.36), text(size: 8pt, fill: blue-n)[$alpha$])
  })
]

// ============================================================
// Câu 10: Đưa nam châm lại gần hoặc ra xa cuộn dây nối điện kế G
// ============================================================
#let hinh-cau-10() = scale(78%, reflow: true)[
  #set text(font: "Times New Roman", size: 8pt)
  #canvas(length: 1cm, {
    import draw: *
    let ink = rgb("#1e293b")
    let red-b = rgb("#e45858")

    // Thanh nam châm N - S ở bên trái
    rect((0.1, 1.35), (0.95, 1.85), fill: rgb("#93c5fd"), stroke: 0.8pt + ink)
    rect((0.95, 1.35), (1.8, 1.85), fill: rgb("#fca5a5"), stroke: 0.8pt + ink)
    content((0.52, 1.6), text(size: 8pt, weight: "bold")[S])
    content((1.38, 1.6), text(size: 8pt, weight: "bold")[N])

    // Mũi tên dịch chuyển hai chiều (lại gần / ra xa)
    line(
      (0.45, 2.15),
      (1.45, 2.15),
      stroke: 0.8pt + col-blue,
      mark: (start: "stealth", end: "stealth", fill: col-blue, length: 0.15cm, width: 0.11cm),
    )
    content((0.95, 2.38), text(size: 8pt, fill: col-blue)[$arrow(v)$])

    // Đường sức từ từ cực N hướng vào cuộn dây
    line(
      (1.8, 1.6),
      (2.55, 1.6),
      stroke: (paint: red-b, thickness: 0.6pt, dash: "dashed"),
      mark: (end: "stealth", fill: red-b, length: 0.14cm, width: 0.1cm),
    )
    bezier((1.8, 1.75), (2.5, 2.05), (2.1, 1.8), (2.3, 1.95), stroke: (paint: red-b, thickness: 0.5pt, dash: "dashed"))
    bezier((1.8, 1.45), (2.5, 1.15), (2.1, 1.4), (2.3, 1.25), stroke: (paint: red-b, thickness: 0.5pt, dash: "dashed"))

    // Lõi ống dây và các vòng dây quấn
    rect((2.6, 1.25), (4.1, 1.95), radius: 0.06, fill: rgb("#f1f5f9"), stroke: 0.75pt + ink)
    for x in (2.8, 3.05, 3.3, 3.55, 3.8, 3.95) {
      line((x, 1.22), (x - 0.1, 1.98), stroke: 1.0pt + col-orange)
    }

    // Dây nối xuống điện kế nhạy G
    line((2.75, 1.22), (2.75, 0.45), (2.97, 0.45), stroke: 0.8pt + ink)
    line((3.95, 1.22), (3.95, 0.45), (3.73, 0.45), stroke: 0.8pt + ink)
    vong-tron((3.35, 0.45), 0.38, fill: white, stroke: 0.85pt + ink)
    arc((3.35, 0.35), start: 35deg, stop: 145deg, radius: 0.26, anchor: "origin", stroke: 0.5pt + col-gray)
    line((3.35, 0.35), (3.35, 0.68), stroke: 0.8pt + col-red, mark: (end: "stealth", fill: col-red, length: 0.1cm, width: 0.08cm))
    content((3.35, 0.22), text(size: 7pt, weight: "bold")[$G$])
  })
]

// ============================================================
// Câu 11: Khung dây chữ nhật MNPQ chuyển động đi vào từ trường
// ============================================================
#let hinh-cau-11() = scale(80%, reflow: true)[
  #set text(font: "Times New Roman", size: 8.5pt)
  #canvas(length: 1cm, {
    import draw: *
    let ink = rgb("#1e293b")
    let red-b = rgb("#e45858")

    // Vùng từ trường đều bên phải
    rect((1.5, 0.1), (4.3, 2.5), fill: rgb("#f8fafc"), stroke: (paint: col-gray, thickness: 0.75pt, dash: "dashed"))
    content((4.0, 2.22), text(size: 9pt, fill: red-b)[$arrow(B)$])

    // Các dấu × biểu diễn từ trường hướng vào trong
    for x in (1.95, 2.65, 3.3, 3.95) {
      for y in (0.5, 1.3, 2.1) {
        if not (x > 3.7 and y > 1.9) {
          content((x, y), text(fill: red-b, size: 8.5pt)[#sym.times])
        }
      }
    }

    // Khung dây MNPQ đang tiến vào từ trường
    rect((0.25, 0.45), (2.3, 2.15), fill: none, stroke: 1.1pt + ink)

    // Tên các đỉnh đặt thoáng không chạm nét đứt vùng từ trường
    content((2.42, 0.32), [$M$])
    content((2.42, 2.3), [$N$])
    content((0.08, 2.3), [$P$])
    content((0.08, 0.32), [$Q$])

    // Vectơ vận tốc v hướng sang phải
    line(
      (2.3, 1.3),
      (3.2, 1.3),
      stroke: 1.0pt + col-blue,
      mark: (end: "stealth", fill: col-blue, length: 0.18cm, width: 0.13cm),
    )
    content((2.82, 1.52), text(fill: col-blue)[$arrow(v)$])
  })
]

// ============================================================
// Câu 12: Khung dây vuông MNPQ rơi tự do theo trục Ox vào từ trường B = αx
// ============================================================
#let hinh-cau-12() = scale(78%, reflow: true)[
  #set text(font: "Times New Roman", size: 8.5pt)
  #canvas(length: 1cm, {
    import draw: *
    let ink = rgb("#1e293b")
    let red-b = rgb("#e45858")

    // Hệ trục tọa độ Oxy: Ox thẳng đứng hướng xuống, Oy nằm ngang
    circle((0.4, 2.85), radius: 0.05, fill: ink)
    content((0.2, 2.95), [$O$])
    line(
      (0.4, 2.85),
      (3.6, 2.85),
      stroke: 0.85pt + ink,
      mark: (end: "stealth", fill: ink, length: 0.16cm, width: 0.12cm),
    )
    content((3.78, 2.85), [$y$])
    line(
      (0.4, 2.85),
      (0.4, 0.0),
      stroke: 0.85pt + ink,
      mark: (end: "stealth", fill: ink, length: 0.16cm, width: 0.12cm),
    )
    content((0.2, 0.05), [$x$])

    // Từ trường B = αx hướng vào trong (tránh vùng nhãn đỉnh của khung)
    for x in (0.85, 1.55, 2.15, 2.85) {
      content((x, 1.65), text(fill: red-b, size: 8pt)[#sym.times])
      content((x, 0.85), text(fill: red-b, size: 8.5pt)[#sym.times])
      content((x, 0.32), text(fill: red-b, size: 9pt)[#sym.times])
    }
    content((3.25, 2.25), text(size: 8.5pt, fill: red-b)[$arrow(B)(x)$])

    // Khung dây vuông MNPQ cạnh a
    rect((1.25, 1.15), (2.45, 2.25), fill: none, stroke: 1.1pt + ink)
    content((1.08, 2.38), [$M$])
    content((2.62, 2.38), [$N$])
    content((2.62, 1.08), [$P$])
    content((1.08, 1.08), [$Q$])
    content((1.85, 2.45), text(size: 8pt)[$a$])

    // Vectơ vận tốc rơi v hướng xuống
    line(
      (1.85, 1.15),
      (1.85, 0.42),
      stroke: 1.0pt + col-blue,
      mark: (end: "stealth", fill: col-blue, length: 0.17cm, width: 0.12cm),
    )
    content((2.05, 0.62), text(fill: col-blue)[$arrow(v)$], anchor: "west")
  })
]

// ============================================================
// Câu 13: Khung dây phẳng N = 100 vòng đặt vuông góc với từ trường đều B tăng đều
// ============================================================
#let hinh-cau-13() = scale(78%, reflow: true)[
  #set text(font: "Times New Roman", size: 8.5pt)
  #canvas(length: 1cm, {
    import draw: *
    let ink = rgb("#1e293b")
    let red-b = rgb("#e45858")

    // Vùng từ trường đều B vuông góc mặt phẳng khung dây
    for x in (0.6, 1.3, 2.0, 2.7) {
      for y in (0.6, 1.3, 2.0) {
        content((x, y), text(fill: red-b, size: 8.5pt)[#sym.times])
      }
    }
    content((3.15, 2.05), text(size: 9pt, fill: red-b)[$arrow(B)(t)$])

    // Khung dây phẳng diện tích S, N = 100 vòng
    rect((0.8, 0.45), (2.5, 2.15), radius: 0.08, fill: none, stroke: 1.2pt + ink)
    rect((0.88, 0.53), (2.42, 2.07), radius: 0.05, fill: none, stroke: 0.6pt + ink)
    content((1.65, 0.18), text(size: 8pt, fill: ink)[$N = 100$ vòng, $S = 20 thin "cm"^2$])
  })
]

// ============================================================
// Câu 14: Thanh MN trượt đều trên hai thanh ray nằm ngang
// ============================================================
#let hinh-cau-14() = scale(80%, reflow: true)[
  #set text(font: "Times New Roman", size: 8.5pt)
  #canvas(length: 1cm, {
    import draw: *
    let ink = rgb("#1e293b")
    let blue-b = rgb("#0284c7")

    // Hai ray dẫn điện nằm ngang nối kín ở đầu trái
    line((0.4, 0.35), (0.4, 2.15), stroke: 1.1pt + ink)
    line((0.4, 2.15), (3.9, 2.15), stroke: 1.1pt + ink)
    line((0.4, 0.35), (3.9, 0.35), stroke: 1.1pt + ink)

    // Từ trường B hướng ra ngoài (ký hiệu dấu chấm trong vòng tròn)
    for x in (0.95, 1.6, 2.95, 3.6) {
      for y in (0.8, 1.7) {
        vong-tron((x, y), 0.1, fill: none, stroke: 0.6pt + blue-b)
        vong-tron((x, y), 0.028, fill: blue-b, stroke: none)
      }
    }
    content((0.95, 1.25), text(fill: blue-b, size: 9pt)[$arrow(B)$])

    // Thanh MN (có điện trở R) vắt ngang qua hai ray
    rect((2.15, 0.18), (2.35, 2.32), fill: rgb("#cbd5e1"), stroke: 0.9pt + ink)
    content((2.25, 2.52), [$M$])
    content((2.25, -0.02), [$N$])
    content((2.02, 1.25), text(size: 8pt)[$R, L$], anchor: "east")

    // Vectơ vận tốc v hướng sang phải
    line(
      (2.35, 1.25),
      (3.25, 1.25),
      stroke: 1.0pt + col-red,
      mark: (end: "stealth", fill: col-red, length: 0.18cm, width: 0.13cm),
    )
    content((2.82, 1.48), text(fill: col-red)[$arrow(v)$])
  })
]

// ============================================================
// Câu 15: Thanh MN trượt theo hai thanh ray thẳng đứng nối dây dẫn ở đầu trên
// ============================================================
#let hinh-cau-15() = scale(80%, reflow: true)[
  #set text(font: "Times New Roman", size: 8.5pt)
  #canvas(length: 1cm, {
    import draw: *
    let ink = rgb("#1e293b")
    let red-b = rgb("#e45858")

    // Dây nối kín ở đầu trên và hai ray dẫn điện thẳng đứng
    line((0.5, 2.9), (2.5, 2.9), stroke: 1.1pt + ink)
    line((0.5, 2.9), (0.5, 0.2), stroke: 1.1pt + ink)
    line((2.5, 2.9), (2.5, 0.2), stroke: 1.1pt + ink)

    // Từ trường B nằm ngang vuông góc mặt phẳng ray (dấu ×)
    for x in (0.95, 1.5, 2.05) {
      for y in (0.65, 2.35) {
        content((x, y), text(fill: red-b, size: 8.5pt)[#sym.times])
      }
    }
    content((1.5, 2.62), text(fill: red-b, size: 9pt)[$arrow(B)$])

    // Thanh kim loại MN nằm ngang
    rect((0.35, 1.45), (2.65, 1.65), fill: rgb("#cbd5e1"), stroke: 0.9pt + ink)
    content((0.2, 1.55), [$M$], anchor: "east")
    content((2.8, 1.55), [$N$], anchor: "west")
    content((1.5, 1.85), text(size: 8pt)[$m, R, L$])

    // Vận tốc v hướng xuống
    line(
      (1.5, 1.45),
      (1.5, 0.8),
      stroke: 1.0pt + col-blue,
      mark: (end: "stealth", fill: col-blue, length: 0.17cm, width: 0.12cm),
    )
    content((1.68, 1.05), text(fill: col-blue)[$arrow(v)$], anchor: "west")

    // Gia tốc trọng trường g bên ngoài khung
    line(
      (3.1, 2.4),
      (3.1, 1.65),
      stroke: 0.85pt + ink,
      mark: (end: "stealth", fill: ink, length: 0.15cm, width: 0.11cm),
    )
    content((3.25, 2.0), [$arrow(g)$], anchor: "west")
  })
]

// ============================================================
// Câu 16: Hai ray thẳng đứng nối tụ điện C
// ============================================================
#let hinh-cau-16() = scale(80%, reflow: true)[
  #set text(font: "Times New Roman", size: 8.5pt)
  #canvas(length: 1cm, {
    import draw: *
    let ink = rgb("#1e293b")
    let red-b = rgb("#e45858")

    // Nối tụ điện C ở đỉnh
    line((0.5, 2.85), (1.35, 2.85), stroke: 1.1pt + ink)
    line((1.65, 2.85), (2.5, 2.85), stroke: 1.1pt + ink)
    line((1.35, 2.58), (1.35, 3.12), stroke: 1.4pt + ink)
    line((1.65, 2.58), (1.65, 3.12), stroke: 1.4pt + ink)
    content((1.5, 3.32), [$C$])

    // Hai ray dẫn điện thẳng đứng
    line((0.5, 2.85), (0.5, 0.2), stroke: 1.1pt + ink)
    line((2.5, 2.85), (2.5, 0.2), stroke: 1.1pt + ink)

    // Từ trường B (dấu ×)
    for x in (0.95, 1.5, 2.05) {
      for y in (0.6, 2.2) {
        content((x, y), text(fill: red-b, size: 8.5pt)[#sym.times])
      }
    }
    content((0.95, 1.85), text(fill: red-b, size: 9pt)[$arrow(B)$])

    // Thanh MN nằm ngang trượt xuống
    rect((0.35, 1.35), (2.65, 1.55), fill: rgb("#cbd5e1"), stroke: 0.9pt + ink)
    content((0.2, 1.45), [$M$], anchor: "east")
    content((2.8, 1.45), [$N$], anchor: "west")

    // Vận tốc v hướng xuống
    line(
      (1.5, 1.35),
      (1.5, 0.72),
      stroke: 1.0pt + col-blue,
      mark: (end: "stealth", fill: col-blue, length: 0.17cm, width: 0.12cm),
    )
    content((1.68, 0.98), text(fill: col-blue)[$arrow(v)$], anchor: "west")

    // Ký hiệu khoảng cách L giữa hai ray
    line(
      (0.5, 0.32),
      (2.5, 0.32),
      stroke: (paint: col-gray, thickness: 0.6pt),
      mark: (start: "stealth", end: "stealth", fill: col-gray, length: 0.13cm, width: 0.09cm),
    )
    content((1.5, 0.12), text(size: 8pt)[$L$])
  })
]

// ============================================================
// Câu 17: Khung dây dẫn trong mặt phẳng xOy và thanh MN chuyển động về O
// ============================================================
#let hinh-cau-17() = scale(80%, reflow: true)[
  #set text(font: "Times New Roman", size: 8.5pt)
  #canvas(length: 1cm, {
    import draw: *
    let ink = rgb("#1e293b")
    let blue-b = rgb("#0284c7")

    // Gốc O và điện trở R
    vong-tron((0.5, 0.5), 0.05, fill: ink, stroke: none)
    content((0.25, 0.32), [$O$])
    rect((0.65, 0.35), (1.15, 0.65), fill: white, stroke: 0.85pt + ink)
    content((0.9, 0.5), text(size: 7.5pt)[$R$])

    // Hệ trục xOy và hai thanh ray dẫn điện
    line(
      (1.15, 0.5),
      (3.65, 0.5),
      stroke: 1.1pt + ink,
      mark: (end: "stealth", fill: ink, length: 0.16cm, width: 0.12cm),
    )
    content((3.82, 0.5), [$x$])

    line(
      (0.5, 0.5),
      (0.5, 3.15),
      stroke: (paint: col-gray, thickness: 0.7pt, dash: "dashed"),
      mark: (end: "stealth", fill: col-gray, length: 0.16cm, width: 0.12cm),
    )
    content((0.5, 3.35), [$y$])

    // Ray dẫn thứ hai tạo góc mở từ O
    line((0.5, 0.5), (3.1, 3.1), stroke: 1.1pt + ink)

    // Thanh kim loại MN luôn vuông góc Ox
    let x-pos = 2.45
    line((x-pos, 0.32), (x-pos, x-pos + 0.18), stroke: 1.5pt + col-orange)
    content((x-pos, 0.12), [$M$])
    content((x-pos, x-pos + 0.38), [$N$])

    // Vận tốc v hướng về phía O
    line(
      (x-pos, 1.25),
      (x-pos - 0.8, 1.25),
      stroke: 1.0pt + col-red,
      mark: (end: "stealth", fill: col-red, length: 0.17cm, width: 0.12cm),
    )
    content((x-pos - 0.4, 1.48), text(fill: col-red)[$arrow(v)$])

    // Từ trường B vuông góc mặt phẳng
    for (px, py) in ((1.15, 1.95), (1.75, 2.35), (1.15, 2.65)) {
      vong-tron((px, py), 0.09, fill: none, stroke: 0.6pt + blue-b)
      vong-tron((px, py), 0.025, fill: blue-b, stroke: none)
    }
    content((1.55, 2.85), text(fill: blue-b, size: 9pt)[$arrow(B)$])
  })
]

// ============================================================
// Câu 18: Khung dây phẳng quay đều với tốc độ góc ω trong từ trường đều B
// ============================================================
#let hinh-cau-18() = scale(78%, reflow: true)[
  #set text(font: "Times New Roman", size: 8.5pt)
  #canvas(length: 1cm, {
    import draw: *
    let ink = rgb("#1e293b")
    let red-b = rgb("#e45858")
    let blue-n = rgb("#0284c7")

    // Các đường sức từ đều B nằm ngang
    for y in (0.45, 1.25, 2.05) {
      line(
        (0.1, y),
        (3.7, y),
        stroke: (paint: red-b, thickness: 0.55pt),
        mark: (end: "stealth", fill: red-b, length: 0.15cm, width: 0.11cm),
      )
    }
    content((3.5, 2.25), text(fill: red-b, size: 9pt)[$arrow(B)$])

    // Trục quay cố định Δ thẳng đứng
    line((1.9, 0.0), (1.9, 2.7), stroke: (paint: ink, thickness: 0.7pt, dash: "dashed"))
    content((1.9, 2.9), [$Delta$])

    // Mũi tên quay ω quanh trục Δ
    arc((1.9, 2.45), start: 140deg, stop: 400deg, radius: (0.28, 0.1), anchor: "origin", stroke: 0.75pt + col-blue, mark: (end: "stealth", fill: col-blue, length: 0.13cm, width: 0.09cm))
    content((2.4, 2.48), text(fill: col-blue)[$omega$])

    // Khung dây phẳng quay quanh trục Δ
    line((1.05, 0.45), (2.75, 0.75), (2.75, 2.05), (1.05, 1.75), close: true, fill: rgb(224, 242, 254, 40%), stroke: 1.1pt + ink)

    // Vectơ pháp tuyến n của khung
    line(
      (1.9, 1.25),
      (2.65, 0.8),
      stroke: 0.95pt + blue-n,
      mark: (end: "stealth", fill: blue-n, length: 0.16cm, width: 0.11cm),
    )
    content((2.82, 0.72), text(fill: blue-n)[$arrow(n)$])
  })
]

// ============================================================
// Câu 19: Mô hình máy phát điện xoay chiều đơn giản (khung dây, nam châm, vành khuyên)
// ============================================================
#let hinh-cau-19() = scale(75%, reflow: true)[
  #set text(font: "Times New Roman", size: 8pt)
  #canvas(length: 1cm, {
    import draw: *
    let ink = rgb("#1e293b")
    let red-b = rgb("#e45858")

    // Hai cực từ N và S của phần cảm
    rect((0.0, 0.95), (0.65, 2.3), fill: rgb("#fca5a5"), stroke: 0.8pt + ink)
    rect((3.15, 0.95), (3.8, 2.3), fill: rgb("#93c5fd"), stroke: 0.8pt + ink)
    content((0.32, 1.62), text(weight: "bold")[N])
    content((3.48, 1.62), text(weight: "bold")[S])

    // Đường sức từ B
    for y in (1.25, 2.0) {
      line(
        (0.7, y),
        (3.1, y),
        stroke: (paint: red-b, thickness: 0.5pt, dash: "dashed"),
        mark: (end: "stealth", fill: red-b, length: 0.14cm, width: 0.1cm),
      )
    }
    content((1.9, 2.22), text(fill: red-b, size: 8.5pt)[$arrow(B)$])

    // Khung dây N vòng (phần ứng) quay quanh trục
    line((1.1, 1.1), (2.7, 1.3), (2.7, 2.15), (1.1, 1.95), close: true, fill: none, stroke: 1.1pt + col-orange)
    line((1.9, 2.05), (1.9, 2.6), stroke: (paint: ink, thickness: 0.6pt, dash: "dashed"))
    arc((1.9, 2.42), start: 140deg, stop: 400deg, radius: (0.26, 0.09), anchor: "origin", stroke: 0.7pt + col-blue, mark: (end: "stealth", fill: col-blue, length: 0.12cm, width: 0.08cm))
    content((2.35, 2.45), text(fill: col-blue)[$n$])

    // Hai đầu khung nối xuống hai vành khuyên và chổi quét
    line((1.72, 1.18), (1.72, 0.62), stroke: 0.85pt + col-orange)
    line((2.08, 1.22), (2.08, 0.28), stroke: 0.85pt + col-orange)
    vong-tron((1.9, 0.62), (0.3, 0.09), fill: none, stroke: 0.9pt + ink)
    vong-tron((1.9, 0.28), (0.3, 0.09), fill: none, stroke: 0.9pt + ink)
    // Chổi quét và hai cực lấy điện xoay chiều
    rect((1.46, 0.57), (1.6, 0.67), fill: ink)
    rect((2.2, 0.23), (2.34, 0.33), fill: ink)
    line((1.46, 0.62), (1.05, 0.62), stroke: 0.75pt + ink)
    line((2.34, 0.28), (2.75, 0.28), stroke: 0.75pt + ink)
    vong-tron((1.0, 0.62), 0.05, fill: white, stroke: 0.7pt + ink)
    vong-tron((2.8, 0.28), 0.05, fill: white, stroke: 0.7pt + ink)
    content((1.9, -0.05), text(size: 7.5pt)[$e = E_0 cos(omega t + phi)$])
  })
]

// ============================================================
// Câu 20: Khung dây phẳng quay đều nối với điện trở R thành mạch kín
// ============================================================
#let hinh-cau-20() = scale(76%, reflow: true)[
  #set text(font: "Times New Roman", size: 8pt)
  #canvas(length: 1cm, {
    import draw: *
    let ink = rgb("#1e293b")
    let red-b = rgb("#e45858")

    // Các đường sức từ đều B nằm ngang
    for y in (1.15, 1.75, 2.35) {
      line(
        (0.2, y),
        (3.6, y),
        stroke: (paint: red-b, thickness: 0.55pt),
        mark: (end: "stealth", fill: red-b, length: 0.14cm, width: 0.1cm),
      )
    }
    content((3.4, 2.55), text(fill: red-b, size: 8.5pt)[$arrow(B)$])

    // Khung dây N = 250 vòng quay quanh trục đối xứng
    line((1.0, 1.0), (2.8, 1.2), (2.8, 2.3), (1.0, 2.1), close: true, fill: rgb(254, 243, 199, 35%), stroke: 1.1pt + col-orange)
    line((1.9, 0.8), (1.9, 2.68), stroke: (paint: ink, thickness: 0.6pt, dash: "dashed"))
    arc((1.9, 2.5), start: 140deg, stop: 400deg, radius: (0.26, 0.09), anchor: "origin", stroke: 0.7pt + col-blue, mark: (end: "stealth", fill: col-blue, length: 0.12cm, width: 0.08cm))
    content((2.36, 2.53), text(fill: col-blue)[$omega$])

    // Mạch ngoài nối kín với điện trở R = 15 Ω
    line((1.75, 1.08), (1.75, 0.38), (1.05, 0.38), (1.05, 0.05), (1.28, 0.05), stroke: 0.8pt + ink)
    line((2.05, 1.12), (2.05, 0.38), (2.75, 0.38), (2.75, 0.05), (2.52, 0.05), stroke: 0.8pt + ink)
    rect((1.28, -0.14), (2.52, 0.24), fill: white, stroke: 0.85pt + ink)
    content((1.9, 0.05), text(size: 7.5pt)[$R = 15 thin Omega$])
  })
]

// ============================================================
// Câu 21: Đồ thị từ thông Phi(t) theo thời gian t
// ============================================================
#let hinh-cau-21() = scale(82%, reflow: true)[
  #set text(font: "Times New Roman", size: 8.5pt)
  #canvas(length: 1cm, {
    import draw: *
    let ink = rgb("#1e293b")

    // Trục tọa độ
    line(
      (0.5, 0.5),
      (4.3, 0.5),
      stroke: 0.9pt + ink,
      mark: (end: "stealth", fill: ink, length: 0.17cm, width: 0.12cm),
    )
    content((4.45, 0.5), [$t" (s)"$], anchor: "west")

    line(
      (0.5, 0.5),
      (0.5, 2.85),
      stroke: 0.9pt + ink,
      mark: (end: "stealth", fill: ink, length: 0.17cm, width: 0.12cm),
    )
    content((0.5, 3.05), [$Phi" (Wb)"$], anchor: "south")

    content((0.32, 0.32), [$0$])

    let x1 = 1.9
    let x2 = 3.3
    let x3 = 3.95
    let y1 = 2.25

    // Gióng nét đứt
    line((x1, 0.5), (x1, y1), stroke: dash-line)
    line((0.5, y1), (x1, y1), stroke: dash-line)

    // Đồ thị từ thông Phi(t) dạng các đoạn thẳng dốc
    line((0.5, 0.5), (x1, y1), (x2, 0.5), stroke: 1.4pt + col-blue)
    line((x2, 0.5), (x3, 1.32), stroke: (paint: col-blue, thickness: 1.2pt, dash: "dashed"))

    // Tọa độ trên trục
    content((x1, 0.25), [$"0,1"$], anchor: "north")
    content((x2, 0.25), [$"0,2"$], anchor: "north")
    content((0.35, y1), [$"0,3"$], anchor: "east")

    vong-tron((x1, y1), 0.05, fill: col-blue, stroke: none)
    vong-tron((x2, 0.5), 0.05, fill: col-blue, stroke: none)
  })
]

// ============================================================
// Câu 22: Ion mang điện tích dương q chuyển động vuông góc vào từ trường đều B
// ============================================================
#let hinh-cau-22() = scale(80%, reflow: true)[
  #set text(font: "Times New Roman", size: 8.5pt)
  #canvas(length: 1cm, {
    import draw: *
    let ink = rgb("#1e293b")
    let red-b = rgb("#e45858")

    // Vùng từ trường đều B (dấu ×)
    rect((0.8, 0.2), (3.8, 2.4), fill: rgb("#f8fafc"), stroke: (paint: col-gray, thickness: 0.7pt, dash: "dashed"))
    for x in (1.3, 2.05, 2.8, 3.45) {
      for y in (0.55, 1.3, 2.0) {
        if not (x > 3.2 and y > 1.7) and not (x < 1.5 and y < 1.1) {
          content((x, y), text(fill: red-b, size: 8.5pt)[#sym.times])
        }
      }
    }
    content((3.45, 2.05), text(fill: red-b, size: 9pt)[$arrow(B)$])

    // Quỹ đạo cong tròn minh họa trong từ trường (tâm tại (1.3, 1.95), bán kính 1.1)
    arc((1.3, 1.95), start: -90deg, stop: -12deg, radius: 1.1, anchor: "origin", stroke: (paint: col-blue, thickness: 0.75pt, dash: "dashed"))

    // Hạt mang điện dương +q bay vào vùng từ trường với vận tốc v
    vong-tron((1.3, 0.85), 0.18, fill: rgb("#fca5a5"), stroke: 0.8pt + ink)
    content((1.3, 0.85), text(size: 7pt, weight: "bold")[$+q$])
    line(
      (1.48, 0.85),
      (2.45, 0.85),
      stroke: 1.0pt + col-blue,
      mark: (end: "stealth", fill: col-blue, length: 0.17cm, width: 0.12cm),
    )
    content((2.15, 1.05), text(fill: col-blue)[$arrow(v)$])
  })
]

// ============================================================
// Câu 23: Sơ đồ máy gia tốc hạt Cyclotron
// ============================================================
#let hinh-cau-23() = scale(78%, reflow: true)[
  #set text(font: "Times New Roman", size: 8pt)
  #canvas(length: 1cm, {
    import draw: *
    let ink = rgb("#1e293b")
    let red-b = rgb("#e45858")

    // Hai cực hộp chữ D (D1 bên trái, D2 bên phải) đồng tâm tại y = 1.6
    let d1-pts = range(25).map(i => {
      let a = (90 + 180 * i / 24) * 1deg
      (-0.12 + 1.3 * calc.cos(a), 1.6 + 1.3 * calc.sin(a))
    })
    line(..d1-pts, close: true, fill: rgb("#f1f5f9"), stroke: 0.9pt + ink)

    let d2-pts = range(25).map(i => {
      let a = (-90 + 180 * i / 24) * 1deg
      (0.12 + 1.3 * calc.cos(a), 1.6 + 1.3 * calc.sin(a))
    })
    line(..d2-pts, close: true, fill: rgb("#f1f5f9"), stroke: 0.9pt + ink)

    content((-0.92, 2.38), text(weight: "bold")[$D_1$])
    content((0.92, 2.38), text(weight: "bold")[$D_2$])

    // Từ trường đều B vuông góc với hai hộp chữ D
    for (px, py) in ((-0.8, 1.6), (-0.55, 0.95), (0.8, 1.6), (0.55, 0.95)) {
      content((px, py), text(fill: red-b, size: 8pt)[#sym.times])
    }
    content((1.35, 2.75), text(fill: red-b, size: 9pt)[$arrow(B)$])

    // Quỹ đạo hạt gồm các nửa vòng tròn bán kính tăng dần nối liền qua khe
    arc((0.12, 1.6), start: -90deg, stop: 90deg, radius: 0.25, anchor: "origin", stroke: (paint: col-blue, thickness: 0.75pt, dash: "dashed"))
    line((-0.12, 1.85), (0.12, 1.85), stroke: (paint: col-blue, thickness: 0.75pt, dash: "dashed"))
    arc((-0.12, 1.45), start: 90deg, stop: 270deg, radius: 0.4, anchor: "origin", stroke: (paint: col-blue, thickness: 0.75pt, dash: "dashed"))
    line((-0.12, 1.05), (0.12, 1.05), stroke: (paint: col-blue, thickness: 0.75pt, dash: "dashed"))
    arc((0.12, 1.6), start: -90deg, stop: 90deg, radius: 0.55, anchor: "origin", stroke: (paint: col-blue, thickness: 0.75pt, dash: "dashed"))
    line((-0.12, 2.15), (0.12, 2.15), stroke: (paint: col-blue, thickness: 0.75pt, dash: "dashed"))
    arc((-0.12, 1.45), start: 90deg, stop: 270deg, radius: 0.7, anchor: "origin", stroke: (paint: col-blue, thickness: 0.75pt, dash: "dashed"))

    // Nguồn điện xoay chiều nối vào khe giữa hai hộp chữ D
    line((-0.12, 0.3), (-0.12, -0.15), stroke: 0.75pt + ink)
    line((0.12, 0.3), (0.12, -0.15), stroke: 0.75pt + ink)
    vong-tron((0, -0.15), 0.22, fill: white, stroke: 0.8pt + ink)
    content((0, -0.15), text(size: 8.5pt)[$tilde$])
  })
]

// ============================================================
// Câu 24: Cảm biến đo lưu lượng điện từ SUP-LDG
// ============================================================
#let hinh-cau-24() = scale(80%, reflow: true)[
  #set text(font: "Times New Roman", size: 8pt)
  #canvas(length: 1cm, {
    import draw: *
    let ink = rgb("#1e293b")
    let red-b = rgb("#e45858")

    // Ống tròn nằm ngang (hình trụ có hai mặt cắt elip ở hai đầu)
    rect((0.4, 0.6), (3.4, 2.0), fill: rgb("#eff6ff"), stroke: none)
    line((0.4, 2.0), (3.4, 2.0), stroke: 0.9pt + ink)
    line((0.4, 0.6), (3.4, 0.6), stroke: 0.9pt + ink)
    vong-tron((0.4, 1.3), (0.22, 0.7), fill: rgb("#dbeafe"), stroke: 0.85pt + ink)
    vong-tron((3.4, 1.3), (0.22, 0.7), fill: rgb("#eff6ff"), stroke: 0.85pt + ink)

    // Các hạt tải điện q và mũi tên vận tốc dòng chảy v
    vong-tron((1.2, 1.55), 0.1, fill: rgb("#fca5a5"), stroke: 0.5pt + ink)
    content((1.2, 1.55), text(size: 6.5pt)[$+$])
    vong-tron((1.35, 1.02), 0.1, fill: rgb("#93c5fd"), stroke: 0.5pt + ink)
    content((1.35, 1.02), text(size: 6.5pt)[$-$])

    line(
      (1.65, 1.3),
      (2.65, 1.3),
      stroke: 1.0pt + col-blue,
      mark: (end: "stealth", fill: col-blue, length: 0.17cm, width: 0.12cm),
    )
    content((2.15, 1.52), text(fill: col-blue, size: 8.5pt)[$arrow(v)$])

    // Từ trường đều B vuông góc với dòng chảy (dấu ×)
    for x in (0.95, 2.0, 2.95) {
      content((x, 1.75), text(fill: red-b, size: 8pt)[#sym.times])
      content((x, 0.85), text(fill: red-b, size: 8pt)[#sym.times])
    }
    content((3.0, 2.25), text(fill: red-b, size: 8.5pt)[$arrow(B)$])

    // Hai điện cực M (trên) và N (dưới) đặt đối diện qua đường kính ống
    rect((1.85, 1.92), (2.25, 2.08), fill: rgb("#ef4444"), stroke: 0.7pt + ink)
    content((1.72, 2.22), [$M$])
    rect((1.85, 0.52), (2.25, 0.68), fill: rgb("#0284c7"), stroke: 0.7pt + ink)
    content((1.72, 0.36), [$N$])

    // Dây nối từ hai điện cực M, N ra vôn kế V ở BÊN NGOÀI ống
    line((2.05, 2.08), (2.05, 2.45), (4.15, 2.45), (4.15, 1.62), stroke: 0.75pt + ink)
    line((2.05, 0.52), (2.05, 0.15), (4.15, 0.15), (4.15, 0.98), stroke: 0.75pt + ink)
    vong-tron((4.15, 1.3), 0.32, fill: white, stroke: 0.85pt + ink)
    content((4.15, 1.3), text(weight: "bold", size: 8.5pt)[$V$])

    // Đường kính ống d ở đầu trái
    line(
      (0.0, 0.6),
      (0.0, 2.0),
      stroke: (paint: col-gray, thickness: 0.65pt),
      mark: (start: "stealth", end: "stealth", fill: col-gray, length: 0.13cm, width: 0.09cm),
    )
    content((-0.2, 1.3), [$d$])
  })
]

// ============================================================
// Câu 25: Mô hình động cơ điện một chiều (khung ABCD, cổ góp bán khuyên, chổi than)
// ============================================================
#let hinh-cau-25() = scale(76%, reflow: true)[
  #set text(font: "Times New Roman", size: 8pt)
  #canvas(length: 1cm, {
    import draw: *
    let ink = rgb("#1e293b")
    let red-b = rgb("#e45858")

    // Hai cực nam châm N và S
    rect((0.0, 0.9), (0.65, 2.3), fill: rgb("#fca5a5"), stroke: 0.8pt + ink)
    rect((3.15, 0.9), (3.8, 2.3), fill: rgb("#93c5fd"), stroke: 0.8pt + ink)
    content((0.32, 1.6), text(weight: "bold")[N])
    content((3.48, 1.6), text(weight: "bold")[S])

    // Đường sức từ B
    line(
      (0.7, 1.6),
      (3.1, 1.6),
      stroke: (paint: red-b, thickness: 0.55pt, dash: "dashed"),
      mark: (end: "stealth", fill: red-b, length: 0.14cm, width: 0.1cm),
    )
    content((1.9, 1.82), text(fill: red-b, size: 8.5pt)[$arrow(B)$])

    // Khung dây ABCD đặt trong từ trường
    line((1.1, 1.05), (1.1, 2.15), (2.7, 2.15), (2.7, 1.05), stroke: 1.1pt + col-orange)
    line((1.1, 1.05), (1.7, 1.05), (1.7, 0.45), stroke: 1.1pt + col-orange)
    line((2.7, 1.05), (2.1, 1.05), (2.1, 0.45), stroke: 1.1pt + col-orange)
    content((0.92, 1.05), [$A$])
    content((0.92, 2.22), [$B$])
    content((2.88, 2.22), [$C$])
    content((2.88, 1.05), [$D$])

    // Cổ góp gồm hai bán khuyên đồng tâm tại (1.9, 0.45) và hai chổi than
    arc((1.9, 0.45), start: 112deg, stop: 248deg, radius: 0.22, anchor: "origin", stroke: 1.6pt + col-orange)
    arc((1.9, 0.45), start: -68deg, stop: 68deg, radius: 0.22, anchor: "origin", stroke: 1.6pt + col-orange)
    rect((1.5, 0.38), (1.66, 0.52), fill: ink)
    rect((2.14, 0.38), (2.3, 0.52), fill: ink)

    // Nguồn điện một chiều (+ / -) cấp vào hai chổi than
    line((1.5, 0.45), (1.05, 0.45), (1.05, -0.05), (1.78, -0.05), stroke: 0.75pt + ink)
    line((2.3, 0.45), (2.75, 0.45), (2.75, -0.05), (2.02, -0.05), stroke: 0.75pt + ink)
    line((1.78, -0.25), (1.78, 0.15), stroke: 1.2pt + ink)
    line((2.02, -0.15), (2.02, 0.05), stroke: 1.8pt + ink)
    content((1.62, 0.15), text(size: 7.5pt)[$+$])
    content((2.18, 0.15), text(size: 7.5pt)[$-$])
  })
]

// ============================================================
// Câu 26: Cuộn dây cảm biến trong máy khử rung tim cấy ghép (ICD)
// ============================================================
#let hinh-cau-26() = scale(78%, reflow: true)[
  #set text(font: "Times New Roman", size: 8pt)
  #canvas(length: 1cm, {
    import draw: *
    let ink = rgb("#1e293b")
    let red-b = rgb("#e45858")

    // Vỏ thiết bị y tế ICD và cuộn dây diện tích S = 3 cm²
    rect((0.2, 0.2), (2.4, 2.2), radius: 0.3, fill: rgb("#f1f5f9"), stroke: 0.9pt + ink)
    vong-tron((1.3, 1.22), 0.54, fill: white, stroke: 1.1pt + col-orange)
    vong-tron((1.3, 1.22), 0.44, fill: none, stroke: 0.6pt + col-orange)
    content((1.3, 1.96), text(size: 7.5pt, weight: "bold")[Máy ICD])
    content((1.3, 0.42), text(size: 7.5pt)[$S = 3 thin "cm"^2$])

    // Từ trường B vuông góc với cuộn dây
    for (px, py) in ((1.08, 1.22), (1.52, 1.22), (1.3, 1.44), (1.3, 1.0)) {
      content((px, py), text(fill: red-b, size: 8pt)[#sym.times])
    }

    // Đồ thị B(t) giảm đều từ 80 μT về 0 trong 1,5 s ở bên phải
    line((2.85, 0.45), (4.45, 0.45), stroke: 0.8pt + ink, mark: (end: "stealth", fill: ink, length: 0.14cm, width: 0.1cm))
    line((2.85, 0.45), (2.85, 2.0), stroke: 0.8pt + ink, mark: (end: "stealth", fill: ink, length: 0.14cm, width: 0.1cm))
    line((2.85, 1.65), (4.05, 0.45), stroke: 1.2pt + red-b)
    content((2.75, 1.65), text(size: 7.5pt)[$80$], anchor: "east")
    content((2.85, 2.15), text(size: 7.5pt)[$B thin (mu"T")$])
    content((4.05, 0.22), text(size: 7.5pt)[$"1,5"$])
    content((4.52, 0.45), text(size: 7.5pt)[$t" (s)"$], anchor: "west")
  })
]

// ============================================================
// Câu 27: Hệ thống phanh tái tạo năng lượng của ô tô điện
// ============================================================
#let hinh-cau-27() = scale(78%, reflow: true)[
  #set text(font: "Times New Roman", size: 8pt)
  #canvas(length: 1cm, {
    import draw: *
    let ink = rgb("#1e293b")
    let red-b = rgb("#e45858")

    // Bánh xe ô tô đang quay
    vong-tron((0.75, 1.2), 0.65, fill: rgb("#e2e8f0"), stroke: 1.4pt + ink)
    vong-tron((0.75, 1.2), 0.24, fill: white, stroke: 0.8pt + ink)
    arc((0.75, 1.2), start: 140deg, stop: 30deg, radius: 0.45, anchor: "origin", stroke: 0.8pt + col-blue, mark: (end: "stealth", fill: col-blue, length: 0.13cm, width: 0.09cm))
    content((0.75, 0.32), text(size: 7.5pt)[Bánh xe])

    // Trục truyền động sang máy phát / động cơ
    line((1.4, 1.2), (1.9, 1.2), stroke: 1.2pt + ink, mark: (end: "stealth", fill: ink, length: 0.15cm, width: 0.1cm))

    // Khung dây quay trong từ trường (chế độ máy phát)
    rect((1.92, 0.62), (3.12, 1.78), radius: 0.1, fill: rgb("#fef3c7"), stroke: 0.85pt + ink)
    content((2.52, 1.42), text(size: 7.5pt, weight: "bold")[Máy phát])
    content((2.52, 0.96), text(size: 7pt, fill: red-b)[(Khung + $arrow(B)$)])

    // Dòng điện cảm ứng nạp vào bộ Pin
    line((3.12, 1.35), (3.68, 1.35), stroke: 0.9pt + col-green, mark: (end: "stealth", fill: col-green, length: 0.14cm, width: 0.1cm))
    line((3.12, 1.05), (3.68, 1.05), stroke: 0.9pt + col-green)
    content((3.4, 1.58), text(size: 7.5pt, fill: col-green)[$I_c$])

    rect((3.68, 0.72), (4.48, 1.68), radius: 0.08, fill: rgb("#dcfce7"), stroke: 0.85pt + ink)
    rect((3.93, 1.68), (4.23, 1.8), fill: ink)
    content((4.08, 1.2), text(size: 7.5pt, weight: "bold")[Pin])
  })
]

// ============================================================
// Câu 28: Cấu tạo máy phát điện dynamo xe đạp
// ============================================================
#let hinh-cau-28() = scale(78%, reflow: true)[
  #set text(font: "Times New Roman", size: 8pt)
  #canvas(length: 1cm, {
    import draw: *
    let ink = rgb("#1e293b")

    // Vành bánh xe đạp tiếp xúc với núm dẫn động
    arc((-0.5, 2.2), start: -28deg, stop: 28deg, radius: 1.6, anchor: "origin", stroke: 1.8pt + ink)
    content((0.45, 2.85), text(size: 7.5pt)[Lốp xe])

    // Núm xoay và trục dynamo
    line((1.1, 2.38), (1.45, 2.38), (1.35, 2.0), (1.2, 2.0), close: true, fill: rgb("#94a3b8"), stroke: 0.75pt + ink)
    line((1.28, 2.0), (1.28, 1.35), stroke: 1.1pt + ink)
    arc((1.28, 1.72), start: 140deg, stop: 400deg, radius: (0.24, 0.08), anchor: "origin", stroke: 0.7pt + col-blue, mark: (end: "stealth", fill: col-blue, length: 0.11cm, width: 0.08cm))

    // Nam châm vĩnh cửu N - S quay quanh trục
    rect((0.68, 0.95), (1.28, 1.4), fill: rgb("#fca5a5"), stroke: 0.8pt + ink)
    rect((1.28, 0.95), (1.88, 1.4), fill: rgb("#93c5fd"), stroke: 0.8pt + ink)
    content((0.98, 1.18), text(size: 7.5pt, weight: "bold")[N])
    content((1.58, 1.18), text(size: 7.5pt, weight: "bold")[S])

    // Cuộn dây cố định (N = 1250 vòng) bên dưới
    rect((0.8, 0.22), (1.76, 0.72), radius: 0.06, fill: rgb("#fde68a"), stroke: 0.85pt + col-orange)
    for x in (0.95, 1.12, 1.28, 1.44, 1.6) {
      line((x, 0.22), (x, 0.72), stroke: 0.7pt + col-orange)
    }
    content((1.28, -0.02), text(size: 7.5pt)[Cuộn dây ($N, S$)])

    // Nối ra bóng đèn xe đạp
    line((1.76, 0.58), (2.4, 0.58), (2.4, 1.15), stroke: 0.75pt + ink)
    line((1.76, 0.36), (2.8, 0.36), (2.8, 1.15), stroke: 0.75pt + ink)
    vong-tron((2.6, 1.35), 0.24, fill: rgb("#fef9c3"), stroke: 0.8pt + ink)
    line((2.43, 1.18), (2.77, 1.52), stroke: 0.6pt + ink)
    line((2.43, 1.52), (2.77, 1.18), stroke: 0.6pt + ink)
    content((2.6, 1.8), text(size: 7.5pt)[Đèn])
  })
]

// ============================================================
// Câu 29: Thí nghiệm đo từ trường Trái Đất (La bàn tang)
// ============================================================
#let hinh-cau-29() = scale(80%, reflow: true)[
  #set text(font: "Times New Roman", size: 8pt)
  #canvas(length: 1cm, {
    import draw: *
    let ink = rgb("#1e293b")
    let red-b = rgb("#e45858")

    // Vòng chia độ la bàn nhìn từ trên xuống
    vong-tron((1.8, 1.8), 1.35, fill: rgb("#f8fafc"), stroke: 0.9pt + ink)

    // Khung dây tròn đặt thẳng đứng dọc theo kinh tuyến từ Bắc - Nam
    rect((1.68, 0.32), (1.92, 3.28), fill: rgb(251, 146, 60, 35%), stroke: 0.9pt + col-orange)
    content((2.35, 3.38), text(size: 7.5pt, fill: col-orange)[Khung ($R, N$)], anchor: "west")
    line((2.32, 3.35), (1.95, 3.15), stroke: 0.5pt + col-orange)

    // Phương kinh tuyến từ Bắc - Nam (thẳng đứng)
    line((1.8, 0.2), (1.8, 3.4), stroke: (paint: col-gray, thickness: 0.65pt, dash: "dashed"))
    content((1.8, 0.02), [Nam], anchor: "north")
    content((1.8, 3.55), [Bắc], anchor: "south")

    // Phương Đông - Tây (nằm ngang)
    line((0.2, 1.8), (3.4, 1.8), stroke: (paint: col-gray, thickness: 0.65pt, dash: "dashed"))
    content((0.05, 1.8), [Tây], anchor: "east")
    content((3.55, 1.8), [Đông], anchor: "west")

    // Vectơ từ trường Trái Đất BT (hướng Bắc)
    line(
      (1.8, 1.8),
      (1.8, 2.85),
      stroke: 1.1pt + col-primary,
      mark: (end: "stealth", fill: col-primary, length: 0.16cm, width: 0.11cm),
    )
    content((1.62, 2.72), text(fill: col-primary)[$arrow(B)_T$], anchor: "east")

    // Kim nam châm thử tại tâm khung lệch góc α = 60 độ
    let tip-x = 1.8 + 1.15 * calc.sin(60deg)
    let tip-y = 1.8 + 1.15 * calc.cos(60deg)
    line(
      (1.8 - 0.55 * calc.sin(60deg), 1.8 - 0.55 * calc.cos(60deg)),
      (tip-x, tip-y),
      stroke: 1.5pt + red-b,
      mark: (end: "stealth", fill: red-b, length: 0.2cm, width: 0.14cm),
    )
    vong-tron((1.8, 1.8), 0.06, fill: ink, stroke: none)

    // Cung góc α = 60 độ
    arc((1.8, 1.8), start: 90deg, stop: 30deg, radius: 0.58, anchor: "origin", stroke: 0.75pt + col-orange)
    content((2.22, 2.38), [$60^degree$])
  })
]

// ============================================================
// Câu 30: Buồng từ trường siêu dẫn trong máy chụp cộng hưởng từ (MRI)
// ============================================================
#let hinh-cau-30() = scale(78%, reflow: true)[
  #set text(font: "Times New Roman", size: 8pt)
  #canvas(length: 1cm, {
    import draw: *
    let ink = rgb("#1e293b")
    let red-b = rgb("#e45858")

    // Khối trụ máy chụp cộng hưởng từ MRI
    rect((0.8, 0.35), (3.1, 2.35), fill: rgb("#f1f5f9"), stroke: none)
    line((0.8, 2.35), (3.1, 2.35), stroke: 0.9pt + ink)
    line((0.8, 0.35), (3.1, 0.35), stroke: 0.9pt + ink)
    vong-tron((3.1, 1.35), (0.42, 1.0), fill: rgb("#e2e8f0"), stroke: 0.9pt + ink)
    vong-tron((0.8, 1.35), (0.42, 1.0), fill: rgb("#f8fafc"), stroke: 0.9pt + ink)

    // Khoang rỗng (bore) bên trong lồng chụp
    vong-tron((0.8, 1.35), (0.22, 0.55), fill: rgb("#dbeafe"), stroke: 0.8pt + ink)

    // Các đường sức từ siêu dẫn rất mạnh (1,5 T - 3 T) dọc theo trục buồng máy
    for y in (1.1, 1.35, 1.6) {
      line(
        (0.2, y),
        (2.85, y),
        stroke: (paint: red-b, thickness: 0.65pt, dash: "dashed"),
        mark: (end: "stealth", fill: red-b, length: 0.15cm, width: 0.11cm),
      )
    }
    content((2.05, 2.55), text(size: 8pt, weight: "bold", fill: ink)[Máy chụp MRI])
    content((2.05, 0.12), text(size: 8pt, fill: red-b)[$B = "1,5" thin "T" - 3 thin "T"$])
  })
]


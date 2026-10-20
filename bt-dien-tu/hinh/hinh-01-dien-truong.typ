// Tệp định nghĩa các sơ đồ, hình vẽ CeTZ dùng cho Phần 1 - Chương 1: Điện trường
#import "@preview/cetz:0.5.2": canvas, decorations, draw
#import "ve-hinh.typ": mui, nut

#let dut = (thickness: 0.6pt, dash: "dashed")
#let cham(p, lab, dau: none) = {
  draw.circle(p, radius: 0.14, fill: white)
  if dau != none { draw.content(p, dau) }
  draw.content((p.at(0), p.at(1) - 0.35), lab)
}

// --------------------------------------------------------------------------
// Bài 1.1: Con lắc lò xo thẳng đứng trong điện trường
// --------------------------------------------------------------------------
#let ve-lo-xo-1-1(hien-luc: false) = canvas(length: 1cm, {
  import draw: *
  // Mặt phẳng / trần cố định
  line((2.5, 5.5), (4.5, 5.5), stroke: 0.8pt)
  for (a, b) in (
    ((2.5, 5.5), (2.36, 5.64)),
    ((2.75, 5.5), (2.61, 5.64)),
    ((3, 5.5), (2.86, 5.64)),
    ((3.25, 5.5), (3.11, 5.64)),
    ((3.5, 5.5), (3.36, 5.64)),
    ((3.75, 5.5), (3.61, 5.64)),
    ((4, 5.5), (3.86, 5.64)),
    ((4.25, 5.5), (4.11, 5.64)),
    ((4.5, 5.5), (4.36, 5.64)),
  ) {
    line(a, b, stroke: 0.5pt)
  }
  decorations.coil(line((3.5, 5.5), (3.5, 3)), amplitude: 0.3, segments: 8, stroke: 0.8pt)
  line((3.5, 3), (3.5, 2.5), stroke: 0.8pt)

  // Quả cầu q1
  circle((3.5, 2.5), radius: 0.25, stroke: (paint: rgb("#ef4444")), fill: rgb(255, 0, 0, 20%))
  content((3.5, 2.5), text(fill: rgb("#b91c1c"), size: 9pt, weight: "bold", $+$, baseline: -0.5pt))
  content((3.1, 2.5), $q_1$, anchor: "east")

  // Quả cầu q2
  circle((3.5, 0), radius: 0.25, stroke: (paint: rgb("#001eff")), fill: rgb(0, 30, 255, 20%))
  content((3.5, 0), text(fill: rgb("#1d4ed8"), size: 9pt, weight: "bold", $-$, baseline: -0.5pt))
  content((3.1, 0), $q_2$, anchor: "east")

  // Khoảng cách d
  line((3.9, 2.5), (4.55, 2.5), stroke: 0.4pt + luma(60%))
  line((3.9, 0), (4.55, 0), stroke: 0.4pt + luma(60%))
  line((4.35, 2.5), (4.35, 0), stroke: 0.8pt, mark: (
    start: "stealth",
    end: "stealth",
    fill: black,
    length: 0.2cm,
    width: 0.15cm,
    inset: 0.05cm,
  ))
  content((4.45, 1.25), $d$, anchor: "west", padding: 2pt)

  if hien-luc {
    // Lực đàn hồi F_đh hướng lên
    line(
      (3.5, 2.75),
      (3.5, 4.45),
      stroke: (thickness: 1.5pt, paint: rgb("#ef4444")),
      mark: (end: "stealth", fill: rgb("#ef4444"), length: 0.2cm, width: 0.15cm, inset: 0.05cm),
    )
    content((3.95, 4.05), $arrow(F)_("đh")$, anchor: "west", padding: 2pt)

    // Trọng lực P hướng xuống
    line(
      (3.38, 2.25),
      (3.38, 1.15),
      stroke: (thickness: 1.5pt, paint: rgb("#ef4444")),
      mark: (end: "stealth", fill: rgb("#ef4444"), length: 0.2cm, width: 0.15cm, inset: 0.05cm),
    )
    content((3.25, 1.5), $arrow(P)$, anchor: "east", padding: 2pt)

    // Lực hút điện F_đ hướng xuống
    line(
      (3.62, 2.25),
      (3.62, 1.65),
      stroke: (thickness: 1.5pt, paint: rgb("#ef4444")),
      mark: (end: "stealth", fill: rgb("#ef4444"), length: 0.2cm, width: 0.15cm, inset: 0.05cm),
    )
    content((3.72, 1.85), $arrow(F)_đ$, anchor: "west", padding: 2pt)
  }
})

// --------------------------------------------------------------------------
// Bài 1.2: Cân bằng lực giữa hai giọt nước tích điện
// --------------------------------------------------------------------------
#let ve-hai-giot-nuoc-1-2 = canvas(length: 1cm, {
  import draw: *
  let x1 = -1.8
  let x2 = 1.8
  let R = 0.5

  // Trục nối hai tâm
  line((x1 - 1.4, 0), (x2 + 1.4, 0), stroke: (dash: "dashed", thickness: 0.4pt, paint: luma(75%)))

  // Giọt nước 1 (bên trái)
  circle((x1, 0), radius: R, fill: rgb("#e0f2fe"), stroke: 0.8pt + rgb("#0284c7"))
  circle((x1, 0), radius: 0.04, fill: rgb("#0369a1"))
  content((x1, 0), text(size: 8pt, weight: "bold", fill: rgb("#0369a1"), $-e$, baseline: 2.5pt))
  content((x1, -R - 0.22), text(size: 7.5pt, fill: rgb("#0369a1"), $m$))
  // Bán kính a vẽ góc 135 độ
  line((x1, 0), (x1 - R * 0.707, R * 0.707), stroke: 0.5pt + rgb("#0284c7"))
  content((x1 - 0.1, 0.28), text(size: 7.5pt, fill: rgb("#0369a1"), $a$))

  // Giọt nước 2 (bên phải)
  circle((x2, 0), radius: R, fill: rgb("#e0f2fe"), stroke: 0.8pt + rgb("#0284c7"))
  circle((x2, 0), radius: 0.04, fill: rgb("#0369a1"))
  content((x2, 0), text(size: 8pt, weight: "bold", fill: rgb("#0369a1"), $-e$, baseline: 2.5pt))
  content((x2, -R - 0.22), text(size: 7.5pt, fill: rgb("#0369a1"), $m$))
  // Bán kính a vẽ góc 45 độ
  line((x2, 0), (x2 + R * 0.707, R * 0.707), stroke: 0.5pt + rgb("#0284c7"))
  content((x2 + 0.1, 0.28), text(size: 7.5pt, fill: rgb("#0369a1"), $a$))

  // Vector lực tác dụng lên giọt 1
  // Lực đẩy tĩnh điện F_đ hướng sang trái
  line(
    (x1 - R, 0),
    (x1 - R - 0.85, 0),
    stroke: (thickness: 1.4pt, paint: rgb("#ef4444")),
    mark: (end: "stealth", fill: rgb("#ef4444"), length: 0.18cm, width: 0.12cm, inset: 0.04cm),
  )
  content((x1 - R - 0.45, 0.25), text(size: 8.5pt, fill: rgb("#b91c1c"), $arrow(F)_đ$))
  // Lực hút hấp dẫn F_hd hướng sang phải
  line(
    (x1 + R, 0),
    (x1 + R + 0.85, 0),
    stroke: (thickness: 1.4pt, paint: rgb("#16a34a")),
    mark: (end: "stealth", fill: rgb("#16a34a"), length: 0.18cm, width: 0.12cm, inset: 0.04cm),
  )
  content((x1 + R + 0.45, 0.25), text(size: 8.5pt, fill: rgb("#15803d"), $arrow(F)_("hd")$))

  // Vector lực tác dụng lên giọt 2
  // Lực hút hấp dẫn F_hd hướng sang trái
  line(
    (x2 - R, 0),
    (x2 - R - 0.85, 0),
    stroke: (thickness: 1.4pt, paint: rgb("#16a34a")),
    mark: (end: "stealth", fill: rgb("#16a34a"), length: 0.18cm, width: 0.12cm, inset: 0.04cm),
  )
  content((x2 - R - 0.45, 0.25), text(size: 8.5pt, fill: rgb("#15803d"), $arrow(F)_("hd")$))
  // Lực đẩy tĩnh điện F_đ hướng sang phải
  line(
    (x2 + R, 0),
    (x2 + R + 0.85, 0),
    stroke: (thickness: 1.4pt, paint: rgb("#ef4444")),
    mark: (end: "stealth", fill: rgb("#ef4444"), length: 0.18cm, width: 0.12cm, inset: 0.04cm),
  )
  content((x2 + R + 0.45, 0.25), text(size: 8.5pt, fill: rgb("#b91c1c"), $arrow(F)_đ$))

  // Khoảng cách r giữa 2 tâm
  line((x1, -R - 0.35), (x1, -R - 0.75), stroke: 0.4pt + luma(60%))
  line((x2, -R - 0.35), (x2, -R - 0.75), stroke: 0.4pt + luma(60%))
  line((x1, -R - 0.65), (x2, -R - 0.65), stroke: 0.6pt, mark: (
    start: "stealth",
    end: "stealth",
    fill: black,
    length: 0.18cm,
    width: 0.12cm,
    inset: 0.04cm,
  ))
  content((0, -R - 0.5), text(size: 8.5pt, $r$), fill: white, padding: 2pt)
})

// --------------------------------------------------------------------------
// Bài 1.3: Quỹ đạo electron quanh hạt nhân nguyên tử Hidro
// --------------------------------------------------------------------------
#let ve-nguyen-tu-1-3 = canvas(length: 1cm, {
  import draw: *
  let r-orb = 1.35
  let r-hat = 0.24

  // Quỹ đạo tròn nét đứt
  circle((0, 0), radius: r-orb, stroke: (dash: "dashed", thickness: 0.7pt, paint: rgb("#94a3b8")))

  // Hạt nhân proton ở tâm
  circle((0, 0), radius: r-hat, fill: rgb("#fee2e2"), stroke: 0.8pt + rgb("#ef4444"))
  content((0, 0), text(size: 8pt, weight: "bold", fill: rgb("#b91c1c"), $+e$, baseline: -0.5pt))
  content((-0.45, 0.45), text(size: 7.5pt, fill: rgb("#b91c1c"), [Proton]))

  // Bán kính r vẽ theo hướng chếch xuống góc -50 độ
  let ang = -50deg
  line(
    (r-hat * calc.cos(ang), r-hat * calc.sin(ang)),
    (r-orb * calc.cos(ang), r-orb * calc.sin(ang)),
    stroke: (dash: "dashed", thickness: 0.5pt, paint: luma(40%)),
    mark: (
      start: "stealth",
      end: "stealth",
      fill: luma(40%),
      length: 0.15cm,
      width: 0.1cm,
      inset: 0.03cm,
    ),
  )
  content(((r-orb + r-hat) / 2 * calc.cos(ang) - 0.14, (r-orb + r-hat) / 2 * calc.sin(ang) - 0.12), text(
    size: 7.5pt,
    $r$,
  ))

  // Electron trên quỹ đạo tại (r-orb, 0)
  circle((r-orb, 0), radius: 0.16, fill: rgb("#dbeafe"), stroke: 0.8pt + rgb("#2563eb"))
  content((r-orb, 0), text(size: 6pt, weight: "bold", fill: rgb("#1d4ed8"), $-e$, baseline: -0.5pt))

  // Lực hút Coulomb F_đ hướng về tâm (đóng vai trò lực hướng tâm)
  line(
    (r-orb - 0.18, 0),
    (r-hat + 0.15, 0),
    stroke: (thickness: 1.4pt, paint: rgb("#ef4444")),
    mark: (end: "stealth", fill: rgb("#ef4444"), length: 0.18cm, width: 0.12cm, inset: 0.04cm),
  )
  content(((r-orb + r-hat) / 2, 0.22), text(size: 8pt, fill: rgb("#b91c1c"), $arrow(F)_đ$))

  // Vận tốc tiếp tuyến v hướng lên
  line(
    (r-orb, 0.18),
    (r-orb, 1.15),
    stroke: (thickness: 1.4pt, paint: rgb("#16a34a")),
    mark: (end: "stealth", fill: rgb("#16a34a"), length: 0.18cm, width: 0.12cm, inset: 0.04cm),
  )
  content((r-orb + 0.22, 1.05), text(size: 8pt, fill: rgb("#15803d"), $arrow(v)$))
})

// --------------------------------------------------------------------------
// Bài 1.4: Ba điện tích ở ba góc tam giác đều (hình đề bài)
// --------------------------------------------------------------------------
#let ve-tam-giac-1-4 = canvas(length: 1cm, {
  import draw: *
  let a = 2.4
  let h = a * calc.sqrt(3) / 2
  let r-nut = 0.15

  // Trục tọa độ Oxy
  line((0, 0), (a + 0.8, 0), stroke: 0.6pt, mark: (
    end: "stealth",
    fill: black,
    length: 0.16cm,
    width: 0.11cm,
    inset: 0.03cm,
  ))
  line((0, 0), (0, h + 0.65), stroke: 0.6pt, mark: (
    end: "stealth",
    fill: black,
    length: 0.16cm,
    width: 0.11cm,
    inset: 0.03cm,
  ))
  content((a + 0.85, 0), text(size: 8pt, $x$), anchor: "west")
  content((0, h + 0.7), text(size: 8pt, $y$), anchor: "south")

  // Tam giác đều (3 cạnh)
  line((0, 0), (a, 0), (a / 2, h), close: true, stroke: 0.7pt + luma(30%))

  // Cung đo góc 60 độ tại gốc O
  arc((0.5, 0), start: 0deg, delta: 60deg, radius: 0.5, stroke: 0.5pt + luma(40%))
  content((0.78, 0.32), text(size: 7pt, [$60.0 degree$]))

  // Nhãn cạnh bên phải
  content((a * 0.75 + 0.15, h / 2), text(size: 7.5pt, [$0.500 thin "m"$]), anchor: "west")

  // Đỉnh 1: (0, 0) mang điện +2.00 μC
  circle((0, 0), radius: r-nut, fill: rgb("#fee2e2"), stroke: 0.8pt + rgb("#ef4444"))
  content((0, 0), text(size: 7pt, weight: "bold", fill: rgb("#b91c1c"), $+$, baseline: -0.5pt))
  content((0, -0.35), text(size: 7.5pt, [$2.00 thin mu"C"$]))

  // Đỉnh 2: (a, 0) mang điện -4.00 μC
  circle((a, 0), radius: r-nut, fill: rgb("#dbeafe"), stroke: 0.8pt + rgb("#2563eb"))
  content((a, 0), text(size: 7pt, weight: "bold", fill: rgb("#1d4ed8"), $-$, baseline: -0.5pt))
  content((a, -0.35), text(size: 7.5pt, [$-4.00 thin mu"C"$]))

  // Đỉnh 3: (a/2, h) mang điện +7.00 μC
  circle((a / 2, h), radius: r-nut, fill: rgb("#fee2e2"), stroke: 0.8pt + rgb("#ef4444"))
  content((a / 2, h), text(size: 7pt, weight: "bold", fill: rgb("#b91c1c"), $+$, baseline: -0.5pt))
  content((a / 2, h + 0.35), text(size: 7.5pt, [$7.00 thin mu"C"$]))
})

// --------------------------------------------------------------------------
// Bài 1.4 - Lời giải câu 1: Phân tử DNA lò xo bị nén
// --------------------------------------------------------------------------
#let ve-dna-1-4 = canvas(length: 1cm, {
  import draw: *
  let x-start = -2.3
  let x-end = 2.3
  let r-nut = 0.22

  // Lò xo xoắn ốc đại diện cho phân tử DNA
  decorations.coil(
    line((x-start + r-nut, 0), (x-end - r-nut, 0)),
    amplitude: 0.26,
    segments: 20,
    stroke: 0.8pt + rgb("#475569"),
  )

  // Đầu trái: mang điện dương +e
  circle((x-start, 0), radius: r-nut, fill: rgb("#fee2e2"), stroke: 0.8pt + rgb("#ef4444"))
  content((x-start, 0), text(size: 7.5pt, weight: "bold", fill: rgb("#b91c1c"), $+e$, baseline: -0.5pt))

  // Đầu phải: mang điện âm -e
  circle((x-end, 0), radius: r-nut, fill: rgb("#dbeafe"), stroke: 0.8pt + rgb("#2563eb"))
  content((x-end, 0), text(size: 7.5pt, weight: "bold", fill: rgb("#1d4ed8"), $-e$, baseline: -0.5pt))

  // Lực tác dụng lên đầu trái (+e):
  // Lực hút tĩnh điện F_đ hướng sang phải (về phía -e)
  line(
    (x-start, 0.45),
    (x-start + 1.15, 0.45),
    stroke: (thickness: 1.4pt, paint: rgb("#ef4444")),
    mark: (end: "stealth", fill: rgb("#ef4444"), length: 0.18cm, width: 0.12cm, inset: 0.04cm),
  )
  content((x-start + 0.58, 0.72), text(size: 8pt, fill: rgb("#b91c1c"), $arrow(F)_đ$))

  // Lực đàn hồi F_đh hướng sang trái (lò xo bị nén nên đẩy bung ra)
  line(
    (x-start, 0.45),
    (x-start - 1.15, 0.45),
    stroke: (thickness: 1.4pt, paint: rgb("#16a34a")),
    mark: (end: "stealth", fill: rgb("#16a34a"), length: 0.18cm, width: 0.12cm, inset: 0.04cm),
  )
  content((x-start - 0.58, 0.72), text(size: 8pt, fill: rgb("#15803d"), $arrow(F)_("đh")$))

  // Lực tác dụng lên đầu phải (-e):
  // Lực hút tĩnh điện F_đ hướng sang trái (về phía +e)
  line(
    (x-end, 0.45),
    (x-end - 1.15, 0.45),
    stroke: (thickness: 1.4pt, paint: rgb("#ef4444")),
    mark: (end: "stealth", fill: rgb("#ef4444"), length: 0.18cm, width: 0.12cm, inset: 0.04cm),
  )
  content((x-end - 0.58, 0.72), text(size: 8pt, fill: rgb("#b91c1c"), $arrow(F)_đ$))

  // Lực đàn hồi F_đh hướng sang phải
  line(
    (x-end, 0.45),
    (x-end + 1.15, 0.45),
    stroke: (thickness: 1.4pt, paint: rgb("#16a34a")),
    mark: (end: "stealth", fill: rgb("#16a34a"), length: 0.18cm, width: 0.12cm, inset: 0.04cm),
  )
  content((x-end + 0.58, 0.72), text(size: 8pt, fill: rgb("#15803d"), $arrow(F)_("đh")$))

  // Đoạn đo chiều dài sau nén L' = 0.99 L
  line((x-start, -0.38), (x-start, -0.85), stroke: 0.4pt + luma(60%))
  line((x-end, -0.38), (x-end, -0.85), stroke: 0.4pt + luma(60%))
  line(
    (x-start, -0.65),
    (x-end, -0.65),
    stroke: 0.6pt,
    mark: (start: "stealth", end: "stealth", fill: black, length: 0.16cm, width: 0.11cm, inset: 0.03cm),
  )
  content((0, -0.88), text(size: 7.5pt, [$L' = 0.99 thin L$]))
})

// --------------------------------------------------------------------------
// Bài 1.4 - Lời giải câu 2: Sơ đồ các vector lực tác dụng lên q1 = 2 μC
// --------------------------------------------------------------------------
#let ve-luc-tam-giac-1-4 = canvas(length: 1cm, {
  import draw: *
  let a = 2.4
  let h = a * calc.sqrt(3) / 2
  let r-nut = 0.15

  // Trục tọa độ Oxy nét mảnh
  line((-1.5, 0), (a + 0.7, 0), stroke: 0.5pt + luma(65%), mark: (
    end: "stealth",
    fill: luma(65%),
    length: 0.15cm,
    width: 0.1cm,
    inset: 0.03cm,
  ))
  line((0, -2.5), (0, h + 0.5), stroke: 0.5pt + luma(65%), mark: (
    end: "stealth",
    fill: luma(65%),
    length: 0.15cm,
    width: 0.1cm,
    inset: 0.03cm,
  ))
  content((a + 0.75, 0), text(size: 7.5pt, fill: luma(40%), $x$), anchor: "west")
  content((0, h + 0.55), text(size: 7.5pt, fill: luma(40%), $y$), anchor: "south")

  // Tam giác đều (nét đứt xám)
  line((0, 0), (a, 0), (a / 2, h), close: true, stroke: (dash: "dashed", thickness: 0.5pt, paint: luma(60%)))

  // Đỉnh 2: q2 = -4 μC
  circle((a, 0), radius: r-nut, fill: rgb("#dbeafe"), stroke: 0.7pt + rgb("#2563eb"))
  content((a, 0), text(size: 6.5pt, weight: "bold", fill: rgb("#1d4ed8"), $-$, baseline: -0.5pt))
  content((a, -0.32), text(size: 7pt, fill: rgb("#1d4ed8"), [$q_2$]))

  // Đỉnh 3: q3 = 7 μC
  circle((a / 2, h), radius: r-nut, fill: rgb("#fee2e2"), stroke: 0.7pt + rgb("#ef4444"))
  content((a / 2, h), text(size: 6.5pt, weight: "bold", fill: rgb("#b91c1c"), $+$, baseline: -0.5pt))
  content((a / 2 + 0.35, h), text(size: 7pt, fill: rgb("#b91c1c"), [$q_3$]))

  // Đỉnh 1: q1 = 2 μC tại gốc O
  circle((0, 0), radius: r-nut, fill: rgb("#fee2e2"), stroke: 0.7pt + rgb("#ef4444"))
  content((0, 0), text(size: 6.5pt, weight: "bold", fill: rgb("#b91c1c"), $+$, baseline: -0.5pt))
  content((-0.3, 0.25), text(size: 7pt, fill: rgb("#b91c1c"), [$q_1$]))

  // Vector lực F_21 do q2 hút q1 (hướng sang phải theo +x)
  let l2 = 1.3
  line(
    (0, 0),
    (l2, 0),
    stroke: (thickness: 1.4pt, paint: rgb("#ef4444")),
    mark: (end: "stealth", fill: rgb("#ef4444"), length: 0.18cm, width: 0.12cm, inset: 0.04cm),
  )
  content((l2 - 0.2, 0.25), text(size: 7.5pt, fill: rgb("#b91c1c"), $arrow(F)_(2 1)$))

  // Vector lực F_31 do q3 đẩy q1 (hướng theo góc 240 độ = chếch xuống góc phần tư III)
  let l3 = 2.3
  let ang3 = 240deg
  let f3x = l3 * calc.cos(ang3) // -1.15
  let f3y = l3 * calc.sin(ang3) // -1.99
  line(
    (0, 0),
    (f3x, f3y),
    stroke: (thickness: 1.4pt, paint: rgb("#ef4444")),
    mark: (end: "stealth", fill: rgb("#ef4444"), length: 0.18cm, width: 0.12cm, inset: 0.04cm),
  )
  content((f3x - 0.2, f3y + 0.15), text(size: 7.5pt, fill: rgb("#b91c1c"), $arrow(F)_(3 1)$))

  // Quy tắc hình bình hành (đường nét đứt)
  let fx = l2 + f3x // 1.3 - 1.15 = +0.15
  let fy = f3y // -1.99
  line((l2, 0), (fx, fy), stroke: (dash: "dashed", thickness: 0.5pt, paint: luma(45%)))
  line((f3x, f3y), (fx, fy), stroke: (dash: "dashed", thickness: 0.5pt, paint: luma(45%)))

  // Vector lực tổng hợp F = F_21 + F_31
  line(
    (0, 0),
    (fx, fy),
    stroke: (thickness: 1.8pt, paint: rgb("#2563eb")),
    mark: (end: "stealth", fill: rgb("#2563eb"), length: 0.2cm, width: 0.14cm, inset: 0.05cm),
  )
  content((fx + 0.35, fy + 0.05), text(size: 8pt, weight: "bold", fill: rgb("#1d4ed8"), $arrow(F)$))

  // Cung góc lệch alpha = 85.3 độ quay xuống dưới trục +x
  arc((0, 0), start: 0deg, delta: -85.3deg, radius: 0.65, anchor: "origin", stroke: 0.5pt + rgb("#2563eb"))
  content((0.75, -0.42), text(size: 6.5pt, fill: rgb("#1d4ed8"), [$85.3 degree$]))
})

// --------------------------------------------------------------------------
// Bài 1.5: Đường sức điện của hai điện tích điểm q1, q2
// --------------------------------------------------------------------------
#let ve-duong-suc-1-5 = canvas(length: 1.05cm, {
  import draw: *

  let col = rgb("#ea580c")
  let stroke-line = (paint: col, thickness: 0.75pt)
  let y2 = 1.15
  let y1 = -0.75
  let R = 0.22
  let mui = (end: "stealth", fill: col, length: 0.13cm, width: 0.085cm)

  // 12 đường đi ra vô cực từ q2 (mỗi bên 6 đường đối xứng)
  // Đường thoát 1
  line((0.057, 1.363), (0.061, 1.377), (0.069, 1.406), (0.076, 1.435), (0.084, 1.464), (0.092, 1.493), (0.1, 1.522), (0.108, 1.551), (0.116, 1.58), (0.124, 1.609), (0.131, 1.638), (0.139, 1.667), (0.147, 1.695), (0.155, 1.724), (0.163, 1.753), (0.171, 1.782), (0.179, 1.811), (0.187, 1.84), (0.195, 1.869), (0.203, 1.898), (0.211, 1.927), (0.219, 1.956), (0.227, 1.985), (0.235, 2.014), (0.243, 2.042), (0.251, 2.071), (0.259, 2.1), (0.268, 2.129), (0.276, 2.158), (0.284, 2.187), (0.292, 2.216), (0.3, 2.245), (0.308, 2.273), (0.317, 2.302), (0.325, 2.331), (0.333, 2.36), (0.341, 2.389), (0.349, 2.418), (0.358, 2.447), (0.366, 2.475), (0.374, 2.504), (0.383, 2.533), (0.391, 2.562), (0.399, 2.591), (0.408, 2.62), (0.416, 2.648), (0.424, 2.677), stroke: stroke-line)
  line((-0.057, 1.363), (-0.061, 1.377), (-0.069, 1.406), (-0.076, 1.435), (-0.084, 1.464), (-0.092, 1.493), (-0.1, 1.522), (-0.108, 1.551), (-0.116, 1.58), (-0.124, 1.609), (-0.131, 1.638), (-0.139, 1.667), (-0.147, 1.695), (-0.155, 1.724), (-0.163, 1.753), (-0.171, 1.782), (-0.179, 1.811), (-0.187, 1.84), (-0.195, 1.869), (-0.203, 1.898), (-0.211, 1.927), (-0.219, 1.956), (-0.227, 1.985), (-0.235, 2.014), (-0.243, 2.042), (-0.251, 2.071), (-0.259, 2.1), (-0.268, 2.129), (-0.276, 2.158), (-0.284, 2.187), (-0.292, 2.216), (-0.3, 2.245), (-0.308, 2.273), (-0.317, 2.302), (-0.325, 2.331), (-0.333, 2.36), (-0.341, 2.389), (-0.349, 2.418), (-0.358, 2.447), (-0.366, 2.475), (-0.374, 2.504), (-0.383, 2.533), (-0.391, 2.562), (-0.399, 2.591), (-0.408, 2.62), (-0.416, 2.648), (-0.424, 2.677), stroke: stroke-line)
  line((0.251, 2.071), (0.259, 2.1), stroke: stroke-line, mark: mui)
  line((-0.251, 2.071), (-0.259, 2.1), stroke: stroke-line, mark: mui)

  // Đường thoát 2
  line((0.117, 1.337), (0.125, 1.349), (0.141, 1.375), (0.156, 1.4), (0.172, 1.425), (0.189, 1.451), (0.205, 1.476), (0.221, 1.501), (0.237, 1.527), (0.253, 1.552), (0.269, 1.577), (0.285, 1.603), (0.301, 1.628), (0.318, 1.653), (0.334, 1.678), (0.35, 1.704), (0.366, 1.729), (0.383, 1.754), (0.399, 1.779), (0.415, 1.804), (0.432, 1.829), (0.448, 1.855), (0.465, 1.88), (0.481, 1.905), (0.498, 1.93), (0.514, 1.955), (0.531, 1.98), (0.547, 2.005), (0.564, 2.03), (0.581, 2.055), (0.597, 2.08), (0.614, 2.105), (0.631, 2.13), (0.647, 2.154), (0.664, 2.179), (0.681, 2.204), (0.698, 2.229), (0.714, 2.254), (0.731, 2.279), (0.748, 2.304), (0.765, 2.328), (0.782, 2.353), (0.799, 2.378), (0.816, 2.403), (0.833, 2.427), stroke: stroke-line)
  line((-0.117, 1.337), (-0.125, 1.349), (-0.141, 1.375), (-0.156, 1.4), (-0.172, 1.425), (-0.189, 1.451), (-0.205, 1.476), (-0.221, 1.501), (-0.237, 1.527), (-0.253, 1.552), (-0.269, 1.577), (-0.285, 1.603), (-0.301, 1.628), (-0.318, 1.653), (-0.334, 1.678), (-0.35, 1.704), (-0.366, 1.729), (-0.383, 1.754), (-0.399, 1.779), (-0.415, 1.804), (-0.432, 1.829), (-0.448, 1.855), (-0.465, 1.88), (-0.481, 1.905), (-0.498, 1.93), (-0.514, 1.955), (-0.531, 1.98), (-0.547, 2.005), (-0.564, 2.03), (-0.581, 2.055), (-0.597, 2.08), (-0.614, 2.105), (-0.631, 2.13), (-0.647, 2.154), (-0.664, 2.179), (-0.681, 2.204), (-0.698, 2.229), (-0.714, 2.254), (-0.731, 2.279), (-0.748, 2.304), (-0.765, 2.328), (-0.782, 2.353), (-0.799, 2.378), (-0.816, 2.403), (-0.833, 2.427), stroke: stroke-line)
  line((0.498, 1.93), (0.514, 1.955), stroke: stroke-line, mark: mui)
  line((-0.498, 1.93), (-0.514, 1.955), stroke: stroke-line, mark: mui)

  // Đường thoát 3
  line((0.166, 1.294), (0.177, 1.304), (0.2, 1.324), (0.223, 1.343), (0.246, 1.363), (0.268, 1.382), (0.291, 1.402), (0.314, 1.421), (0.337, 1.441), (0.36, 1.46), (0.383, 1.479), (0.406, 1.499), (0.429, 1.518), (0.452, 1.537), (0.475, 1.556), (0.498, 1.576), (0.521, 1.595), (0.544, 1.614), (0.567, 1.633), (0.591, 1.652), (0.614, 1.671), (0.637, 1.69), (0.66, 1.709), (0.684, 1.727), (0.707, 1.746), (0.731, 1.765), (0.754, 1.784), (0.778, 1.802), (0.801, 1.821), (0.825, 1.839), (0.848, 1.858), (0.872, 1.877), (0.895, 1.895), (0.919, 1.913), (0.943, 1.932), (0.967, 1.95), (0.99, 1.968), (1.014, 1.987), (1.038, 2.005), (1.062, 2.023), (1.086, 2.041), (1.11, 2.059), stroke: stroke-line)
  line((-0.166, 1.294), (-0.177, 1.304), (-0.2, 1.324), (-0.223, 1.343), (-0.246, 1.363), (-0.268, 1.382), (-0.291, 1.402), (-0.314, 1.421), (-0.337, 1.441), (-0.36, 1.46), (-0.383, 1.479), (-0.406, 1.499), (-0.429, 1.518), (-0.452, 1.537), (-0.475, 1.556), (-0.498, 1.576), (-0.521, 1.595), (-0.544, 1.614), (-0.567, 1.633), (-0.591, 1.652), (-0.614, 1.671), (-0.637, 1.69), (-0.66, 1.709), (-0.684, 1.727), (-0.707, 1.746), (-0.731, 1.765), (-0.754, 1.784), (-0.778, 1.802), (-0.801, 1.821), (-0.825, 1.839), (-0.848, 1.858), (-0.872, 1.877), (-0.895, 1.895), (-0.919, 1.913), (-0.943, 1.932), (-0.967, 1.95), (-0.99, 1.968), (-1.014, 1.987), (-1.038, 2.005), (-1.062, 2.023), (-1.086, 2.041), (-1.11, 2.059), stroke: stroke-line)
  line((0.684, 1.727), (0.707, 1.746), stroke: stroke-line, mark: mui)
  line((-0.684, 1.727), (-0.707, 1.746), stroke: stroke-line, mark: mui)

  // Đường thoát 4
  line((0.201, 1.239), (0.215, 1.246), (0.242, 1.258), (0.27, 1.27), (0.297, 1.282), (0.325, 1.294), (0.352, 1.305), (0.38, 1.317), (0.407, 1.329), (0.435, 1.341), (0.463, 1.352), (0.49, 1.364), (0.518, 1.375), (0.546, 1.387), (0.574, 1.398), (0.601, 1.409), (0.629, 1.421), (0.657, 1.432), (0.685, 1.443), (0.713, 1.454), (0.741, 1.465), (0.769, 1.476), (0.797, 1.487), (0.825, 1.497), (0.853, 1.508), (0.881, 1.518), (0.909, 1.529), (0.937, 1.539), (0.965, 1.55), (0.994, 1.56), (1.022, 1.57), (1.05, 1.58), (1.078, 1.59), (1.107, 1.6), (1.135, 1.61), (1.163, 1.62), (1.192, 1.629), (1.22, 1.639), (1.234, 1.644), stroke: stroke-line)
  line((-0.201, 1.239), (-0.215, 1.246), (-0.242, 1.258), (-0.27, 1.27), (-0.297, 1.282), (-0.325, 1.294), (-0.352, 1.305), (-0.38, 1.317), (-0.407, 1.329), (-0.435, 1.341), (-0.463, 1.352), (-0.49, 1.364), (-0.518, 1.375), (-0.546, 1.387), (-0.574, 1.398), (-0.601, 1.409), (-0.629, 1.421), (-0.657, 1.432), (-0.685, 1.443), (-0.713, 1.454), (-0.741, 1.465), (-0.769, 1.476), (-0.797, 1.487), (-0.825, 1.497), (-0.853, 1.508), (-0.881, 1.518), (-0.909, 1.529), (-0.937, 1.539), (-0.965, 1.55), (-0.994, 1.56), (-1.022, 1.57), (-1.05, 1.58), (-1.078, 1.59), (-1.107, 1.6), (-1.135, 1.61), (-1.163, 1.62), (-1.192, 1.629), (-1.22, 1.639), (-1.234, 1.644), stroke: stroke-line)
  line((0.769, 1.476), (0.797, 1.487), stroke: stroke-line, mark: mui)
  line((-0.769, 1.476), (-0.797, 1.487), stroke: stroke-line, mark: mui)

  // Đường thoát 5
  line((0.218, 1.181), (0.233, 1.183), (0.262, 1.187), (0.292, 1.191), (0.322, 1.194), (0.352, 1.198), (0.381, 1.202), (0.411, 1.206), (0.441, 1.209), (0.471, 1.213), (0.501, 1.216), (0.53, 1.219), (0.56, 1.223), (0.59, 1.226), (0.62, 1.229), (0.65, 1.232), (0.68, 1.234), (0.71, 1.237), (0.739, 1.24), (0.769, 1.242), (0.799, 1.244), (0.829, 1.247), (0.859, 1.249), (0.889, 1.251), (0.919, 1.253), (0.949, 1.254), (0.979, 1.256), (1.009, 1.257), (1.039, 1.259), (1.069, 1.26), (1.099, 1.261), (1.129, 1.262), (1.159, 1.263), (1.189, 1.263), (1.219, 1.264), stroke: stroke-line)
  line((-0.218, 1.181), (-0.233, 1.183), (-0.262, 1.187), (-0.292, 1.191), (-0.322, 1.194), (-0.352, 1.198), (-0.381, 1.202), (-0.411, 1.206), (-0.441, 1.209), (-0.471, 1.213), (-0.501, 1.216), (-0.53, 1.219), (-0.56, 1.223), (-0.59, 1.226), (-0.62, 1.229), (-0.65, 1.232), (-0.68, 1.234), (-0.71, 1.237), (-0.739, 1.24), (-0.769, 1.242), (-0.799, 1.244), (-0.829, 1.247), (-0.859, 1.249), (-0.889, 1.251), (-0.919, 1.253), (-0.949, 1.254), (-0.979, 1.256), (-1.009, 1.257), (-1.039, 1.259), (-1.069, 1.26), (-1.099, 1.261), (-1.129, 1.262), (-1.159, 1.263), (-1.189, 1.263), (-1.219, 1.264), stroke: stroke-line)
  line((0.769, 1.242), (0.799, 1.244), stroke: stroke-line, mark: mui)
  line((-0.769, 1.242), (-0.799, 1.244), stroke: stroke-line, mark: mui)

  // Đường thoát 6
  line((0.218, 1.119), (0.233, 1.117), (0.262, 1.113), (0.292, 1.108), (0.322, 1.104), (0.351, 1.099), (0.381, 1.095), (0.411, 1.09), (0.44, 1.085), (0.47, 1.08), (0.499, 1.075), (0.529, 1.07), (0.558, 1.064), (0.588, 1.059), (0.617, 1.053), (0.647, 1.047), (0.676, 1.042), (0.706, 1.035), (0.735, 1.029), (0.764, 1.023), (0.794, 1.016), (0.823, 1.01), (0.852, 1.003), (0.881, 0.996), (0.91, 0.988), (0.939, 0.981), (0.968, 0.973), (0.997, 0.965), (1.026, 0.957), (1.055, 0.949), (1.084, 0.941), (1.113, 0.932), (1.141, 0.923), (1.156, 0.919), stroke: stroke-line)
  line((-0.218, 1.119), (-0.233, 1.117), (-0.262, 1.113), (-0.292, 1.108), (-0.322, 1.104), (-0.351, 1.099), (-0.381, 1.095), (-0.411, 1.09), (-0.44, 1.085), (-0.47, 1.08), (-0.499, 1.075), (-0.529, 1.07), (-0.558, 1.064), (-0.588, 1.059), (-0.617, 1.053), (-0.647, 1.047), (-0.676, 1.042), (-0.706, 1.035), (-0.735, 1.029), (-0.764, 1.023), (-0.794, 1.016), (-0.823, 1.01), (-0.852, 1.003), (-0.881, 0.996), (-0.91, 0.988), (-0.939, 0.981), (-0.968, 0.973), (-0.997, 0.965), (-1.026, 0.957), (-1.055, 0.949), (-1.084, 0.941), (-1.113, 0.932), (-1.141, 0.923), (-1.156, 0.919), stroke: stroke-line)
  line((0.735, 1.029), (0.764, 1.023), stroke: stroke-line, mark: mui)
  line((-0.735, 1.029), (-0.764, 1.023), stroke: stroke-line, mark: mui)

  // 6 đường nối từ q2 sang q1 (mỗi bên 3 đường đối xứng)
  // Đường nối 1 (vòng ngoài cùng qua đáy)
  line((0.198, 1.054), (0.211, 1.047), (0.251, 1.027), (0.292, 1.007), (0.332, 0.986), (0.372, 0.966), (0.412, 0.945), (0.451, 0.924), (0.491, 0.902), (0.53, 0.881), (0.57, 0.859), (0.609, 0.836), (0.647, 0.813), (0.686, 0.79), (0.724, 0.766), (0.762, 0.741), (0.799, 0.716), (0.836, 0.691), (0.873, 0.665), (0.909, 0.638), (0.945, 0.611), (0.98, 0.582), (1.015, 0.554), (1.049, 0.524), (1.082, 0.494), (1.115, 0.464), (1.147, 0.432), (1.179, 0.4), (1.209, 0.367), (1.239, 0.333), (1.268, 0.299), (1.296, 0.264), (1.323, 0.228), (1.35, 0.191), (1.375, 0.154), (1.399, 0.116), (1.422, 0.078), (1.444, 0.038), (1.465, -0.002), (1.484, -0.042), (1.502, -0.083), (1.519, -0.125), (1.534, -0.167), (1.548, -0.21), (1.561, -0.254), (1.571, -0.297), (1.581, -0.341), (1.588, -0.386), (1.594, -0.43), (1.597, -0.475), (1.599, -0.52), (1.599, -0.565), (1.597, -0.61), (1.593, -0.655), (1.586, -0.699), (1.577, -0.744), (1.566, -0.787), (1.553, -0.83), (1.537, -0.872), (1.519, -0.913), (1.498, -0.953), (1.475, -0.992), (1.449, -1.029), (1.421, -1.064), (1.39, -1.097), (1.357, -1.127), (1.322, -1.156), (1.285, -1.181), (1.246, -1.204), (1.206, -1.223), (1.164, -1.24), (1.121, -1.253), (1.077, -1.264), (1.033, -1.271), (0.988, -1.275), (0.943, -1.276), (0.898, -1.274), (0.853, -1.27), (0.809, -1.263), (0.765, -1.253), (0.721, -1.241), (0.679, -1.228), (0.636, -1.212), (0.595, -1.195), (0.554, -1.176), (0.514, -1.155), (0.475, -1.133), (0.436, -1.11), (0.398, -1.086), (0.361, -1.06), (0.325, -1.034), (0.289, -1.007), (0.254, -0.979), (0.219, -0.95), (0.185, -0.921), (0.151, -0.891), stroke: stroke-line)
  line((-0.198, 1.054), (-0.211, 1.047), (-0.251, 1.027), (-0.292, 1.007), (-0.332, 0.986), (-0.372, 0.966), (-0.412, 0.945), (-0.451, 0.924), (-0.491, 0.902), (-0.53, 0.881), (-0.57, 0.859), (-0.609, 0.836), (-0.647, 0.813), (-0.686, 0.79), (-0.724, 0.766), (-0.762, 0.741), (-0.799, 0.716), (-0.836, 0.691), (-0.873, 0.665), (-0.909, 0.638), (-0.945, 0.611), (-0.98, 0.582), (-1.015, 0.554), (-1.049, 0.524), (-1.082, 0.494), (-1.115, 0.464), (-1.147, 0.432), (-1.179, 0.4), (-1.209, 0.367), (-1.239, 0.333), (-1.268, 0.299), (-1.296, 0.264), (-1.323, 0.228), (-1.35, 0.191), (-1.375, 0.154), (-1.399, 0.116), (-1.422, 0.078), (-1.444, 0.038), (-1.465, -0.002), (-1.484, -0.042), (-1.502, -0.083), (-1.519, -0.125), (-1.534, -0.167), (-1.548, -0.21), (-1.561, -0.254), (-1.571, -0.297), (-1.581, -0.341), (-1.588, -0.386), (-1.594, -0.43), (-1.597, -0.475), (-1.599, -0.52), (-1.599, -0.565), (-1.597, -0.61), (-1.593, -0.655), (-1.586, -0.699), (-1.577, -0.744), (-1.566, -0.787), (-1.553, -0.83), (-1.537, -0.872), (-1.519, -0.913), (-1.498, -0.953), (-1.475, -0.992), (-1.449, -1.029), (-1.421, -1.064), (-1.39, -1.097), (-1.357, -1.127), (-1.322, -1.156), (-1.285, -1.181), (-1.246, -1.204), (-1.206, -1.223), (-1.164, -1.24), (-1.121, -1.253), (-1.077, -1.264), (-1.033, -1.271), (-0.988, -1.275), (-0.943, -1.276), (-0.898, -1.274), (-0.853, -1.27), (-0.809, -1.263), (-0.765, -1.253), (-0.721, -1.241), (-0.679, -1.228), (-0.636, -1.212), (-0.595, -1.195), (-0.554, -1.176), (-0.514, -1.155), (-0.475, -1.133), (-0.436, -1.11), (-0.398, -1.086), (-0.361, -1.06), (-0.325, -1.034), (-0.289, -1.007), (-0.254, -0.979), (-0.219, -0.95), (-0.185, -0.921), (-0.151, -0.891), stroke: stroke-line)
  line((0.554, -1.176), (0.514, -1.155), stroke: stroke-line, mark: mui)
  line((-0.554, -1.176), (-0.514, -1.155), stroke: stroke-line, mark: mui)

  // Đường nối 2 (ở giữa)
  line((0.123, 0.968), (0.131, 0.955), (0.156, 0.918), (0.181, 0.88), (0.206, 0.843), (0.23, 0.805), (0.255, 0.767), (0.279, 0.729), (0.302, 0.691), (0.326, 0.652), (0.349, 0.613), (0.371, 0.574), (0.393, 0.535), (0.414, 0.495), (0.434, 0.455), (0.454, 0.415), (0.472, 0.374), (0.49, 0.332), (0.506, 0.29), (0.521, 0.248), (0.534, 0.205), (0.546, 0.161), (0.555, 0.117), (0.563, 0.073), (0.568, 0.028), (0.57, -0.017), (0.57, -0.062), (0.567, -0.107), (0.561, -0.151), (0.552, -0.195), (0.539, -0.238), (0.524, -0.281), (0.505, -0.322), (0.483, -0.361), (0.459, -0.399), (0.432, -0.435), (0.402, -0.469), (0.371, -0.501), (0.338, -0.531), (0.303, -0.56), (0.267, -0.587), (0.231, -0.613), (0.193, -0.638), (0.18, -0.646), stroke: stroke-line)
  line((-0.123, 0.968), (-0.131, 0.955), (-0.156, 0.918), (-0.181, 0.88), (-0.206, 0.843), (-0.23, 0.805), (-0.255, 0.767), (-0.279, 0.729), (-0.302, 0.691), (-0.326, 0.652), (-0.349, 0.613), (-0.371, 0.574), (-0.393, 0.535), (-0.414, 0.495), (-0.434, 0.455), (-0.454, 0.415), (-0.472, 0.374), (-0.49, 0.332), (-0.506, 0.29), (-0.521, 0.248), (-0.534, 0.205), (-0.546, 0.161), (-0.555, 0.117), (-0.563, 0.073), (-0.568, 0.028), (-0.57, -0.017), (-0.57, -0.062), (-0.567, -0.107), (-0.561, -0.151), (-0.552, -0.195), (-0.539, -0.238), (-0.524, -0.281), (-0.505, -0.322), (-0.483, -0.361), (-0.459, -0.399), (-0.432, -0.435), (-0.402, -0.469), (-0.371, -0.501), (-0.338, -0.531), (-0.303, -0.56), (-0.267, -0.587), (-0.231, -0.613), (-0.193, -0.638), (-0.18, -0.646), stroke: stroke-line)
  line((0.561, -0.151), (0.552, -0.195), stroke: stroke-line, mark: mui)
  line((-0.561, -0.151), (-0.552, -0.195), stroke: stroke-line, mark: mui)

  // Đường nối 3 (trong cùng)
  line((0.046, 0.935), (0.049, 0.92), (0.058, 0.876), (0.067, 0.832), (0.076, 0.788), (0.085, 0.744), (0.094, 0.7), (0.103, 0.656), (0.112, 0.611), (0.12, 0.567), (0.128, 0.523), (0.136, 0.479), (0.144, 0.434), (0.151, 0.39), (0.157, 0.345), (0.163, 0.301), (0.169, 0.256), (0.174, 0.211), (0.177, 0.167), (0.18, 0.122), (0.182, 0.077), (0.183, 0.032), (0.183, -0.013), (0.181, -0.058), (0.178, -0.103), (0.174, -0.148), (0.168, -0.193), (0.161, -0.237), (0.152, -0.281), (0.143, -0.325), (0.132, -0.369), (0.119, -0.412), (0.106, -0.455), (0.093, -0.498), (0.078, -0.54), (0.073, -0.555), stroke: stroke-line)
  line((-0.046, 0.935), (-0.049, 0.92), (-0.058, 0.876), (-0.067, 0.832), (-0.076, 0.788), (-0.085, 0.744), (-0.094, 0.7), (-0.103, 0.656), (-0.112, 0.611), (-0.12, 0.567), (-0.128, 0.523), (-0.136, 0.479), (-0.144, 0.434), (-0.151, 0.39), (-0.157, 0.345), (-0.163, 0.301), (-0.169, 0.256), (-0.174, 0.211), (-0.177, 0.167), (-0.18, 0.122), (-0.182, 0.077), (-0.183, 0.032), (-0.183, -0.013), (-0.181, -0.058), (-0.178, -0.103), (-0.174, -0.148), (-0.168, -0.193), (-0.161, -0.237), (-0.152, -0.281), (-0.143, -0.325), (-0.132, -0.369), (-0.119, -0.412), (-0.106, -0.455), (-0.093, -0.498), (-0.078, -0.54), (-0.073, -0.555), stroke: stroke-line)
  line((0.169, 0.256), (0.174, 0.211), stroke: stroke-line, mark: mui)
  line((-0.169, 0.256), (-0.174, 0.211), stroke: stroke-line, mark: mui)

  // Quả cầu q2 (dương) ở trên
  circle((0, y2), radius: R, fill: rgb("#e8c99e"), stroke: 0.8pt + rgb("#b58a57"))
  circle((-0.05, y2 + 0.06), radius: 0.05, fill: white.transparentize(25%), stroke: none)
  content((0, y2 - R - 0.20), text(size: 8.5pt, fill: rgb("#0369a1"), $q_2$))

  // Quả cầu q1 (âm) ở dưới
  circle((0, y1), radius: R, fill: rgb("#e8c99e"), stroke: 0.8pt + rgb("#b58a57"))
  circle((-0.05, y1 + 0.06), radius: 0.05, fill: white.transparentize(25%), stroke: none)
  content((0, y1 + R + 0.20), text(size: 8.5pt, fill: rgb("#0369a1"), $q_1$))
})

// --------------------------------------------------------------------------
// Bài 1.6: Thí nghiệm giọt dầu Millikan
// --------------------------------------------------------------------------
#let ve-thi-nghiem-millikan-1-6 = canvas(length: 0.85cm, {
  import draw: *

  let r-x = 1.45
  let r-y = 0.38
  let th = 0.12

  // --- NGUỒN SÁNG (bên phải) ---
  let lx = 2.45
  let ly = 0.05
  // Thân đèn
  rect((lx, ly - 0.28), (lx + 0.65, ly + 0.28), fill: rgb("#e2e8f0"), stroke: 0.6pt + rgb("#64748b"), radius: 2pt)
  // Chóa đèn / thấu kính
  line((lx, ly + 0.28), (lx - 0.22, ly + 0.42), (lx - 0.22, ly - 0.42), (lx, ly - 0.28), close: true, fill: rgb("#f8fafc"), stroke: 0.6pt + rgb("#64748b"))
  // Chùm tia sáng chiếu vào khe giữa 2 đĩa (vùng sáng mờ)
  line(
    (lx - 0.22, ly + 0.38),
    (0.4, 0.45),
    (0.4, -0.35),
    (lx - 0.22, ly - 0.38),
    close: true,
    fill: rgb(251, 191, 36, 18%),
    stroke: (paint: rgb("#f59e0b"), thickness: 0.5pt, dash: "dashed"),
  )
  content((lx + 0.3, ly + 0.52), text(size: 7.5pt, fill: rgb("#475569"), [Nguồn sáng]))

  // --- KÍNH QUAN SÁT (bên trái) ---
  let tx = -2.35
  let ty = 0.05
  // Ống kính ngắm
  rect((tx - 0.75, ty - 0.15), (tx + 0.45, ty + 0.15), fill: rgb("#e2e8f0"), stroke: 0.6pt + rgb("#64748b"), radius: 1pt)
  rect((tx + 0.45, ty - 0.2), (tx + 0.72, ty + 0.2), fill: rgb("#cbd5e1"), stroke: 0.6pt + rgb("#64748b"), radius: 1pt)
  rect((tx - 0.95, ty - 0.18), (tx - 0.75, ty + 0.18), fill: rgb("#94a3b8"), stroke: 0.6pt + rgb("#64748b"), radius: 1pt)
  // Trục đỡ và chân ba chạc
  line((tx - 0.15, ty - 0.15), (tx - 0.15, ty - 0.6), stroke: 1.2pt + rgb("#475569"))
  line((tx - 0.15, ty - 0.6), (tx - 0.55, ty - 1.15), stroke: 1.2pt + rgb("#475569"))
  line((tx - 0.15, ty - 0.6), (tx + 0.25, ty - 1.15), stroke: 1.2pt + rgb("#475569"))
  line((tx - 0.15, ty - 0.6), (tx - 0.15, ty - 1.1), stroke: 1.2pt + rgb("#475569"))
  content((tx - 0.15, ty + 0.35), text(size: 7.5pt, fill: rgb("#475569"), [Kính ngắm]))

  // --- BẢN KIM LOẠI DƯỚI (cực âm -) ---
  let y-bot = -0.7
  // Độ dày đĩa dưới
  rect((-r-x, y-bot - th), (r-x, y-bot), fill: rgb("#94a3b8"), stroke: none)
  arc((r-x, y-bot - th), start: 0deg, delta: -180deg, radius: (r-x, r-y), fill: rgb("#94a3b8"), stroke: 0.6pt + rgb("#475569"))
  line((-r-x, y-bot), (-r-x, y-bot - th), stroke: 0.6pt + rgb("#475569"))
  line((r-x, y-bot), (r-x, y-bot - th), stroke: 0.6pt + rgb("#475569"))
  // Mặt trên đĩa dưới
  circle((0, y-bot), radius: (r-x, r-y), fill: rgb("#cbd5e1"), stroke: 0.6pt + rgb("#475569"))
  // Ký hiệu cực âm
  content((-r-x + 0.35, y-bot), text(size: 11pt, weight: "bold", fill: rgb("#2563eb"), $-$))

  // --- BẢN KIM LOẠI TRÊN (cực dương +) ---
  let y-top = 0.85
  // Độ dày đĩa trên
  rect((-r-x, y-top - th), (r-x, y-top), fill: rgb("#94a3b8"), stroke: none)
  arc((r-x, y-top - th), start: 0deg, delta: -180deg, radius: (r-x, r-y), fill: rgb("#94a3b8"), stroke: 0.6pt + rgb("#475569"))
  line((-r-x, y-top), (-r-x, y-top - th), stroke: 0.6pt + rgb("#475569"))
  line((r-x, y-top), (r-x, y-top - th), stroke: 0.6pt + rgb("#475569"))
  // Mặt trên đĩa trên
  circle((0, y-top), radius: (r-x, r-y), fill: rgb("#cbd5e1"), stroke: 0.6pt + rgb("#475569"))
  // Lỗ nhỏ ở giữa bản trên
  circle((0, y-top), radius: (0.15, 0.05), fill: rgb("#0f172a"), stroke: 0.4pt + black)
  content((0.75, y-top + 0.35), text(size: 7pt, fill: rgb("#475569"), [Lỗ nhỏ]))
  line((0.5, y-top + 0.25), (0.12, y-top + 0.05), stroke: (paint: rgb("#64748b"), thickness: 0.5pt), mark: (end: "stealth", fill: rgb("#64748b"), length: 0.1cm, width: 0.06cm))
  // Ký hiệu cực dương
  content((-r-x + 0.35, y-top), text(size: 10pt, weight: "bold", fill: rgb("#dc2626"), $+$))

  // --- KHOẢNG CÁCH d GIỮA HAI BẢN ---
  line((-1.0, y-top - th), (-1.0, y-bot), stroke: 0.6pt, mark: (start: "stealth", end: "stealth", fill: black, length: 0.14cm, width: 0.08cm, inset: 0.02cm))
  content((-1.18, (y-top + y-bot) / 2), text(size: 8pt, $d$))

  // --- BỘ NGUỒN ĐIỆN ẮC QUY (DC) PHÍA TRÊN BÊN PHẢI ---
  let bx = 1.95
  let by = 1.55
  // Thân ắc quy hộp chữ nhật
  rect((bx - 0.32, by - 0.25), (bx + 0.32, by + 0.25), fill: rgb("#334155"), stroke: 0.6pt + rgb("#1e293b"), radius: 2pt)
  // Hai cọc cực
  rect((bx - 0.22, by + 0.25), (bx - 0.1, by + 0.35), fill: rgb("#dc2626"), stroke: none)
  rect((bx + 0.1, by + 0.25), (bx + 0.22, by + 0.35), fill: rgb("#2563eb"), stroke: none)
  content((bx - 0.16, by + 0.48), text(size: 7.5pt, weight: "bold", fill: rgb("#dc2626"), $+$))
  content((bx + 0.16, by + 0.48), text(size: 8pt, weight: "bold", fill: rgb("#2563eb"), $-$))
  content((bx, by), text(size: 7.5pt, fill: white, weight: "bold", $U$))

  // Dây đỏ từ đĩa trên nối tới cọc dương
  line((r-x - 0.25, y-top), (bx - 0.16, y-top), (bx - 0.16, by + 0.25), stroke: 0.7pt + rgb("#dc2626"))
  // Dây xanh từ đĩa dưới nối tới cọc âm (chạy vòng phía sau đèn)
  line((r-x - 0.25, y-bot), (bx + 0.42, y-bot), (bx + 0.42, by + 0.05), (bx + 0.16, by + 0.05), (bx + 0.16, by + 0.25), stroke: 0.7pt + rgb("#2563eb"))

  // --- MÁY PHUN DẦU (ATOMIZER) ---
  let ax = -1.45
  let ay = 2.05
  // Bóng bóp cao su
  circle((ax - 0.65, ay + 0.18), radius: (0.28, 0.2), fill: rgb("#64748b"), stroke: 0.6pt + rgb("#334155"))
  // Ống nối
  line((ax - 0.37, ay + 0.18), (ax, ay + 0.05), stroke: 1.3pt + rgb("#475569"))
  // Bình chứa dầu
  rect((ax - 0.15, ay - 0.32), (ax + 0.22, ay + 0.15), fill: rgb("#fef3c7"), stroke: 0.6pt + rgb("#d97706"), radius: 1pt)
  // Vòi phun hướng chếch xuống lỗ nhỏ
  line((ax + 0.22, ay + 0.08), (ax + 0.55, ay - 0.05), stroke: 1.2pt + rgb("#475569"))
  content((ax - 0.35, ay + 0.55), text(size: 7.5pt, fill: rgb("#475569"), [Bình phun dầu]))

  // Chùm giọt dầu li ti (phun ra từ vòi tạo nón sương hướng vào lỗ nhỏ)
  for p in (
    (ax + 0.7, ay - 0.1), (ax + 0.85, ay - 0.06), (ax + 0.8, ay - 0.18),
    (ax + 1.05, ay - 0.14), (ax + 1.0, ay - 0.25), (ax + 1.2, ay - 0.2),
    (ax + 1.15, ay - 0.35), (ax + 1.35, ay - 0.3), (ax + 1.3, ay - 0.45),
    (-0.1, 1.35), (0.12, 1.3), (-0.05, 1.15), (0.08, 1.05),
  ) {
    circle(p, radius: 0.025, fill: rgb("#d97706"), stroke: none)
  }

  // --- GIỌT DẦU RƠI VÀO GIỮA HAI BẢN ---
  // Quỹ đạo rơi nét đứt
  line((0, y-top - 0.05), (0, 0.22), stroke: (paint: rgb("#d97706"), thickness: 0.5pt, dash: "dotted"))
  // Giọt dầu tích điện q lơ lửng
  circle((0, 0.12), radius: 0.09, fill: rgb("#f59e0b"), stroke: 0.8pt + rgb("#b45309"))
  circle((-0.02, 0.15), radius: 0.025, fill: white.transparentize(20%), stroke: none)
  content((0.32, 0.12), text(size: 8pt, fill: rgb("#b45309"), weight: "bold", $q$))
})

// --------------------------------------------------------------------------
// Bài 1.6: Lời giải - Sơ đồ cân bằng lực trên giọt dầu
// --------------------------------------------------------------------------
#let ve-can-bang-millikan-1-6 = canvas(length: 1cm, {
  import draw: *

  let w = 1.9
  let y-top = 1.3
  let y-bot = -1.3

  // Bản cực trên (+)
  rect((-w, y-top), (w, y-top + 0.18), fill: rgb("#fee2e2"), stroke: 0.7pt + rgb("#ef4444"), radius: 1pt)
  for x in (-1.4, -0.7, 0, 0.7, 1.4) {
    content((x, y-top + 0.09), text(size: 8pt, weight: "bold", fill: rgb("#b91c1c"), $+$))
  }

  // Bản cực dưới (-)
  rect((-w, y-bot - 0.18), (w, y-bot), fill: rgb("#dbeafe"), stroke: 0.7pt + rgb("#2563eb"), radius: 1pt)
  for x in (-1.4, -0.7, 0, 0.7, 1.4) {
    content((x, y-bot - 0.09), text(size: 9pt, weight: "bold", fill: rgb("#1d4ed8"), $-$))
  }

  // Các đường sức điện trường E hướng từ trên xuống dưới (đều nhau)
  for x in (-1.3, -0.65, 0.65, 1.3) {
    line((x, y-top), (x, y-bot), stroke: (paint: rgb("#94a3b8"), thickness: 0.55pt), mark: (end: "stealth", fill: rgb("#94a3b8"), length: 0.13cm, width: 0.08cm, inset: 0.02cm))
  }
  content((1.55, 0), text(size: 8.5pt, fill: rgb("#64748b"), $arrow(E)$))

  // Giọt dầu mang điện tích âm q = -e ở giữa
  let R = 0.32
  circle((0, 0), radius: R, fill: rgb("#fef3c7"), stroke: 0.8pt + rgb("#d97706"))
  circle((-0.07, 0.09), radius: 0.06, fill: white.transparentize(20%), stroke: none)
  // Bán kính a
  line((0, 0), (R * 0.866, R * 0.5), stroke: 0.5pt + rgb("#b45309"))
  content((R * 0.45, R * 0.25 + 0.1), text(size: 7pt, fill: rgb("#b45309"), $a$))
  // Nhãn điện tích q = -e bên trái
  content((-R - 0.35, 0), text(size: 8pt, weight: "bold", fill: rgb("#b45309"), $q = -e$))

  // Vector Lực điện F_đ hướng lên trên (cân bằng với trọng lực)
  let f-len = 0.88
  line((0, R), (0, R + f-len), stroke: (thickness: 1.5pt, paint: rgb("#16a34a")), mark: (end: "stealth", fill: rgb("#16a34a"), length: 0.17cm, width: 0.11cm, inset: 0.04cm))
  content((0.45, R + f-len - 0.15), text(size: 8.5pt, fill: rgb("#15803d"), $arrow(F)_đ$))

  // Vector Trọng lực P hướng xuống dưới (độ dài bằng lực điện)
  line((0, -R), (0, -R - f-len), stroke: (thickness: 1.5pt, paint: rgb("#ef4444")), mark: (end: "stealth", fill: rgb("#ef4444"), length: 0.17cm, width: 0.11cm, inset: 0.04cm))
  content((0.6, -R - f-len + 0.15), text(size: 8.5pt, fill: rgb("#b91c1c"), $arrow(P) = m arrow(g)$))
})

// --------------------------------------------------------------------------
// Bài 1.7: Máy phát điện Van de Graaff và proton trên quả cầu
// --------------------------------------------------------------------------
#let ve-van-de-graaff-1-7(hien-luc: false) = canvas(length: 0.85cm, {
  import draw: *

  let y-base = 0.0
  let y-col-top = 1.8
  let y-center = 2.6
  let R = 0.95

  // --- CÁC ĐƯỜNG SỨC ĐIỆN TRƯỜNG TỎA RA NGOÀI (chỉ hiện khi hien-luc = true) ---
  if hien-luc {
    let e-col = rgb("#94a3b8")
    for ang-deg in (30, 60, 120, 150) {
      let ang = ang-deg * 1deg
      let p-start = (R * calc.cos(ang), y-center + R * calc.sin(ang))
      let p-end = ((R + 0.6) * calc.cos(ang), y-center + (R + 0.6) * calc.sin(ang))
      line(p-start, p-end, stroke: (paint: e-col, thickness: 0.55pt), mark: (end: "stealth", fill: e-col, length: 0.12cm, width: 0.07cm, inset: 0.02cm))
    }
    content(((R + 0.7) * calc.cos(35deg), y-center + (R + 0.7) * calc.sin(35deg)), text(size: 7.5pt, fill: rgb("#64748b"), $arrow(E)$))
  }

  // --- CHÂN ĐẾ (BASE) ---
  rect((-1.05, y-base), (1.05, y-base + 0.35), fill: rgb("#334155"), stroke: 0.6pt + rgb("#1e293b"), radius: 2pt)
  rect((-0.9, y-base + 0.35), (0.9, y-base + 0.46), fill: rgb("#475569"), stroke: 0.6pt + rgb("#1e293b"), radius: (top: 2pt))
  content((0, y-base + 0.18), text(size: 6.5pt, fill: rgb("#cbd5e1"), [Chân đế]))

  // --- CỘT TRỤ CÁCH ĐIỆN ---
  let col-w = 0.32
  rect((-col-w, y-base + 0.46), (col-w, y-col-top), fill: rgb("#f8fafc"), stroke: 0.6pt + rgb("#94a3b8"))
  // Băng tải (belt) bên trong cột
  line((-0.13, y-base + 0.46), (-0.13, y-col-top), stroke: (paint: rgb("#475569"), thickness: 1.2pt))
  line((0.13, y-base + 0.46), (0.13, y-col-top), stroke: (paint: rgb("#475569"), thickness: 1.2pt))
  // Mũi tên chuyển động của băng tải
  line((-0.13, 0.9), (-0.13, 1.2), stroke: (paint: rgb("#0284c7"), thickness: 1.2pt), mark: (end: "stealth", fill: rgb("#0284c7"), length: 0.11cm, width: 0.07cm))
  line((0.13, 1.2), (0.13, 0.9), stroke: (paint: rgb("#0284c7"), thickness: 1.2pt), mark: (end: "stealth", fill: rgb("#0284c7"), length: 0.11cm, width: 0.07cm))
  content((col-w + 0.65, 1.1), text(size: 6.5pt, fill: rgb("#64748b"), [Cột cách điện]))

  // --- QUẢ CẦU KIM LOẠI (DOME) ---
  circle((0, y-center), radius: R, fill: rgb("#e2e8f0"), stroke: 0.8pt + rgb("#64748b"))
  // Điểm sáng highlight 3D
  circle((-0.28, y-center + 0.32), radius: 0.22, fill: white.transparentize(25%), stroke: none)
  circle((-0.32, y-center + 0.36), radius: 0.1, fill: white.transparentize(10%), stroke: none)

  // Nhãn quả cầu tích điện dương +Q
  content((0, y-center), text(size: 8.5pt, weight: "bold", fill: rgb("#0369a1"), [$+Q$]))

  // Các dấu điện tích dương (+) phân bố trên bề mặt quả cầu
  for ang-deg in (0, 30, 60, 120, 150, 180, 215, 325) {
    let ang = ang-deg * 1deg
    let px = (R - 0.12) * calc.cos(ang)
    let py = y-center + (R - 0.12) * calc.sin(ang)
    content((px, py), text(size: 7pt, weight: "bold", fill: rgb("#dc2626"), $+$))
  }

  // --- HẠT PROTON TẠI ĐỈNH QUẢ CẦU ---
  let y-p = y-center + R // đỉnh quả cầu
  circle((0, y-p), radius: 0.11, fill: rgb("#fee2e2"), stroke: 0.8pt + rgb("#ef4444"))
  content((0, y-p), text(size: 6.5pt, weight: "bold", fill: rgb("#b91c1c"), [$p$], baseline: -0.5pt))

  // Vector gia tốc a hướng lên (dữ kiện đề)
  let a-len = 0.85
  if not hien-luc {
    // Trên hình đề: chỉ hiện vector gia tốc a
    line(
      (0, y-p + 0.11),
      (0, y-p + 0.11 + a-len),
      stroke: (thickness: 1.4pt, paint: rgb("#16a34a")),
      mark: (end: "stealth", fill: rgb("#16a34a"), length: 0.16cm, width: 0.11cm, inset: 0.04cm),
    )
    content((0.35, y-p + a-len * 0.7), text(size: 8pt, fill: rgb("#15803d"), weight: "bold", $arrow(a)$))
  } else {
    // Trên hình giải: hiện cả lực điện F_đ và gia tốc a
    line(
      (0, y-p + 0.11),
      (0, y-p + 0.11 + a-len),
      stroke: (thickness: 1.5pt, paint: rgb("#dc2626")),
      mark: (end: "stealth", fill: rgb("#dc2626"), length: 0.16cm, width: 0.11cm, inset: 0.04cm),
    )
    content((0.35, y-p + a-len * 0.7), text(size: 8pt, fill: rgb("#b91c1c"), weight: "bold", $arrow(F)_đ$))

    line(
      (-0.24, y-p + 0.15),
      (-0.24, y-p + 0.15 + a-len * 0.8),
      stroke: (thickness: 1.2pt, paint: rgb("#16a34a")),
      mark: (end: "stealth", fill: rgb("#16a34a"), length: 0.14cm, width: 0.09cm, inset: 0.03cm),
    )
    content((-0.46, y-p + a-len * 0.55), text(size: 8pt, fill: rgb("#15803d"), weight: "bold", $arrow(a)$))
  }
})

// --------------------------------------------------------------------------
// Bài 1.8: Ném chùm proton vào vùng điện trường đều
// --------------------------------------------------------------------------
#let ve-nem-proton-1-8 = canvas(length: 1cm, {
  import draw: *

  // Mặt phẳng sàn / tấm mục tiêu phối cảnh nhẹ
  line(
    (0, 0), (4.2, 0), (4.9, 0.7), (0.7, 0.7),
    close: true, fill: rgb("#f8fafc"), stroke: 0.6pt + rgb("#94a3b8"),
  )
  // Viền cạnh tạo độ dày mặt bàn
  line(
    (0, 0), (4.2, 0), (4.2, -0.12), (0, -0.12),
    close: true, fill: rgb("#cbd5e1"), stroke: 0.6pt + rgb("#94a3b8"),
  )
  line(
    (4.2, 0), (4.9, 0.7), (4.9, 0.58), (4.2, -0.12),
    close: true, fill: rgb("#94a3b8"), stroke: 0.6pt + rgb("#64748b"),
  )

  // Vùng điện trường đều E: các mũi tên thẳng đứng hướng xuống
  let e-col = rgb("#f59e0b")
  for x in (1.5, 2.3, 3.1) {
    line(
      (x, 2.1), (x, 0.75),
      stroke: (paint: e-col, thickness: 0.8pt),
      mark: (end: "stealth", fill: e-col, length: 0.14cm, width: 0.09cm, inset: 0.03cm),
    )
  }
  content((3.5, 1.8), text(size: 8pt, weight: "bold", fill: rgb("#d97706"), $arrow(E)$))

  // Chùm proton (Proton beam) chiếu từ dưới lên
  let x0 = 1.0
  let y0 = 0.35
  line(
    (x0 - 0.7, y0 - 0.7), (x0, y0),
    stroke: (paint: rgb("#475569"), thickness: 0.7pt, dash: "dashed"),
    mark: (end: "stealth", fill: rgb("#475569"), length: 0.13cm, width: 0.08cm),
  )
  content((x0 - 0.45, y0 - 0.85), text(size: 6.5pt, fill: rgb("#475569"), [Chùm proton]))

  // Hạt proton tại điểm xuất phát
  circle((x0, y0), radius: 0.08, fill: rgb("#fee2e2"), stroke: 0.7pt + rgb("#ef4444"))
  content((x0, y0), text(size: 6pt, weight: "bold", fill: rgb("#b91c1c"), $+$))

  // Trục chuẩn phương ngang nét đứt mảnh
  line((x0, y0), (x0 + 2.6, y0), stroke: (paint: luma(65%), thickness: 0.45pt, dash: "dashed"))

  // Vector vận tốc ban đầu v_0 hợp góc theta
  let v-len = 1.05
  let goc-theta = 38deg
  let vx = x0 + v-len * calc.cos(goc-theta)
  let vy = y0 + v-len * calc.sin(goc-theta)
  line(
    (x0, y0), (vx, vy),
    stroke: (paint: rgb("#0284c7"), thickness: 1.3pt),
    mark: (end: "stealth", fill: rgb("#0284c7"), length: 0.16cm, width: 0.11cm, inset: 0.03cm),
  )
  content((vx + 0.15, vy + 0.1), text(size: 8pt, fill: rgb("#0369a1"), $arrow(v)_0$))

  // Cung góc theta
  arc((x0, y0), start: 0deg, delta: goc-theta, radius: 0.45, anchor: "origin", stroke: 0.5pt + rgb("#0369a1"))
  content((x0 + 0.58, y0 + 0.18), text(size: 7pt, fill: rgb("#0369a1"), $theta$))

  // Quỹ đạo parabol nét đứt
  let d-targ = 2.4
  let x-targ = x0 + d-targ
  let n-pts = 30
  let pts = ()
  for i in range(n-pts + 1) {
    let t = i / n-pts
    let px = x0 + t * d-targ
    let py = y0 + 4 * 0.95 * t * (1 - t)
    pts.push((px, py))
  }
  line(..pts, stroke: (paint: rgb("#2563eb"), thickness: 0.9pt, dash: "dotted"))

  // Điểm mục tiêu (Target)
  line((x-targ - 0.1, y0 - 0.1), (x-targ + 0.1, y0 + 0.1), stroke: 1.2pt + rgb("#dc2626"))
  line((x-targ - 0.1, y0 + 0.1), (x-targ + 0.1, y0 - 0.1), stroke: 1.2pt + rgb("#dc2626"))
  content((x-targ + 0.45, y0 + 0.15), text(size: 7.5pt, weight: "bold", fill: rgb("#b91c1c"), [Mục tiêu]))

  // Khoảng cách R đo từ điểm phóng đến mục tiêu
  let y-dim = y0 - 0.22
  line((x0, y0), (x0, y-dim - 0.1), stroke: 0.4pt + luma(60%))
  line((x-targ, y0), (x-targ, y-dim - 0.1), stroke: 0.4pt + luma(60%))
  line(
    (x0, y-dim), (x-targ, y-dim),
    stroke: 0.6pt,
    mark: (start: "stealth", end: "stealth", fill: black, length: 0.14cm, width: 0.09cm, inset: 0.02cm),
  )
  content(((x0 + x-targ) / 2, y-dim - 0.2), text(size: 7.5pt, $R$))
})

// Bài 1.8: Lời giải - Hai quỹ đạo ứng với hai góc theta_1 và theta_2
#let ve-giai-nem-proton-1-8 = canvas(length: 1cm, {
  import draw: *

  let D = 3.6
  line((-0.8, 0), (D + 0.8, 0), stroke: 0.6pt + luma(50%), mark: (end: "stealth", fill: luma(50%), length: 0.15cm, width: 0.1cm))
  line((0, -0.4), (0, 2.2), stroke: 0.6pt + luma(50%), mark: (end: "stealth", fill: luma(50%), length: 0.15cm, width: 0.1cm))
  content((D + 0.85, 0), text(size: 7.5pt, fill: luma(30%), $x$), anchor: "west")
  content((0, 2.25), text(size: 7.5pt, fill: luma(30%), $y$), anchor: "south")
  content((-0.15, -0.2), text(size: 7.5pt, fill: luma(40%), $O$))

  // Vector gia tốc a hướng xuống (đặt bên trái trục Oy)
  line(
    (-0.35, 1.8), (-0.35, 1.05),
    stroke: (paint: rgb("#dc2626"), thickness: 1.3pt),
    mark: (end: "stealth", fill: rgb("#dc2626"), length: 0.15cm, width: 0.1cm, inset: 0.03cm),
  )
  content((-0.45, 1.45), text(size: 7pt, fill: rgb("#b91c1c"), weight: "bold", $arrow(a) = (e arrow(E))/m_p$), anchor: "east")

  // Quỹ đạo 1: theta_1 = 36.9 deg (tầm thấp)
  let n-pts = 35
  let h1 = 0.68
  let pts1 = ()
  for i in range(n-pts + 1) {
    let t = i / n-pts
    let px = t * D
    let py = 4 * h1 * t * (1 - t)
    pts1.push((px, py))
  }
  line(..pts1, stroke: (paint: rgb("#0284c7"), thickness: 1.2pt))

  let len1 = 1.05
  let th1 = 36.9deg
  line((0, 0), (len1 * calc.cos(th1), len1 * calc.sin(th1)), stroke: (paint: rgb("#0284c7"), thickness: 1.4pt), mark: (end: "stealth", fill: rgb("#0284c7"), length: 0.15cm, width: 0.1cm))
  arc((0, 0), start: 0deg, delta: th1, radius: 0.5, anchor: "origin", stroke: 0.5pt + rgb("#0284c7"))
  content((0.75, 0.22), text(size: 6.5pt, fill: rgb("#0369a1"), $theta_1$))
  content((2.5, h1 * 0.95 + 0.18), text(size: 6.5pt, fill: rgb("#0284c7"), [Quỹ đạo 1 ($theta_1 approx 36.9 degree$)]))

  // Quỹ đạo 2: theta_2 = 53.1 deg (tầm cao)
  let h2 = 1.2
  let pts2 = ()
  for i in range(n-pts + 1) {
    let t = i / n-pts
    let px = t * D
    let py = 4 * h2 * t * (1 - t)
    pts2.push((px, py))
  }
  line(..pts2, stroke: (paint: rgb("#ea580c"), thickness: 1.2pt, dash: "dashed"))

  let th2 = 53.1deg
  line((0, 0), (len1 * calc.cos(th2), len1 * calc.sin(th2)), stroke: (paint: rgb("#ea580c"), thickness: 1.4pt), mark: (end: "stealth", fill: rgb("#ea580c"), length: 0.15cm, width: 0.1cm))
  arc((0, 0), start: 0deg, delta: th2, radius: 0.75, anchor: "origin", stroke: 0.5pt + rgb("#ea580c"))
  content((0.55, 0.65), text(size: 6.5pt, fill: rgb("#c2410c"), $theta_2$))
  content((1.8, h2 + 0.18), text(size: 6.5pt, fill: rgb("#c2410c"), [Quỹ đạo 2 ($theta_2 approx 53.1 degree$)]))

  // Điểm mục tiêu chung tại x = D
  circle((D, 0), radius: 0.07, fill: rgb("#ef4444"), stroke: 0.8pt + rgb("#b91c1c"))
  line((D, 0), (D, -0.3), stroke: 0.4pt + luma(60%))
  content((D, -0.35), text(size: 7.5pt, weight: "bold", fill: rgb("#b91c1c"), [$D = 1.27 thin "mm"$]))
})

// --------------------------------------------------------------------------
// Bài 1.9: Hai bản tích điện song song làm lệch electron/proton
// --------------------------------------------------------------------------
#let ve-hai-ban-1-9 = canvas(length: 1cm, {
  import draw: *
  let L = 4.2
  let d = 2.0
  let y_bot = 0.0
  let y_top = d
  let th = 0.18

  // Bản cực trên (+)
  rect((0, y_top), (L, y_top + th), fill: rgb("#fee2e2"), stroke: 0.7pt + rgb("#ef4444"), radius: 1pt)
  for x in (0.7, 1.6, 2.5, 3.4) {
    content((x, y_top + th / 2), text(size: 7pt, weight: "bold", fill: rgb("#b91c1c"), $+$))
  }

  // Bản cực dưới (-)
  rect((0, y_bot - th), (L, y_bot), fill: rgb("#dbeafe"), stroke: 0.7pt + rgb("#2563eb"), radius: 1pt)
  for x in (0.7, 1.6, 2.5, 3.4) {
    content((x, y_bot - th / 2), text(size: 8pt, weight: "bold", fill: rgb("#1d4ed8"), $-$))
  }

  // Đường sức điện trường đều E hướng từ trên xuống
  let e-col = rgb("#a855f7")
  for x in (1.0, 2.0, 3.0, 3.8) {
    line(
      (x, y_top), (x, y_bot),
      stroke: (paint: e-col, thickness: 0.6pt),
      mark: (end: "stealth", fill: e-col, length: 0.13cm, width: 0.08cm, inset: 0.02cm),
    )
  }
  content((3.8, y_top / 2 - 0.25), text(size: 8pt, weight: "bold", fill: rgb("#9333ea"), $arrow(E)$), anchor: "west")

  // Trục đối xứng nét đứt ở giữa
  let y_mid = d / 2
  line((-0.6, y_mid), (L + 0.4, y_mid), stroke: (paint: luma(65%), thickness: 0.45pt, dash: "dashed"))

  // Hạt electron tại vị trí bắt đầu
  circle((0, y_mid), radius: 0.1, fill: rgb("#dbeafe"), stroke: 0.8pt + rgb("#2563eb"))
  content((0, y_mid), text(size: 7pt, weight: "bold", fill: rgb("#1d4ed8"), $-$, baseline: -0.5pt))
  content((-0.25, y_mid), text(size: 7.5pt, fill: rgb("#1d4ed8"), $e^-$), anchor: "east")

  // Vector vận tốc ban đầu v_0 hướng ngang
  line(
    (0, y_mid), (1.1, y_mid),
    stroke: (paint: rgb("#16a34a"), thickness: 1.4pt),
    mark: (end: "stealth", fill: rgb("#16a34a"), length: 0.15cm, width: 0.1cm, inset: 0.03cm),
  )
  content((0.6, y_mid + 0.28), text(size: 8pt, weight: "bold", fill: rgb("#15803d"), $arrow(v)_0$))

  // Quỹ đạo electron: parabol cong lên tới mép ngoài bản trên (L, y_top)
  let n-pts = 35
  let pts = ()
  for i in range(n-pts + 1) {
    let t = i / n-pts
    let px = t * L
    let py = y_mid + (d / 2) * t * t
    pts.push((px, py))
  }
  line(..pts, stroke: (paint: rgb("#2563eb"), thickness: 1.1pt, dash: "densely-dotted"))
  circle((L, y_top), radius: 0.06, fill: rgb("#2563eb"), stroke: none)

  // Đo chiều dài L = 2.00 cm ở trên
  let y_dim_L = y_top + th + 0.25
  line((0, y_top + th), (0, y_dim_L + 0.1), stroke: 0.4pt + luma(60%))
  line((L, y_top + th), (L, y_dim_L + 0.1), stroke: 0.4pt + luma(60%))
  line(
    (0, y_dim_L), (L, y_dim_L),
    stroke: 0.6pt,
    mark: (start: "stealth", end: "stealth", fill: black, length: 0.14cm, width: 0.09cm, inset: 0.02cm),
  )
  content((L / 2, y_dim_L + 0.2), text(size: 7.5pt, [$2.00 thin "cm"$]))

  // Đo khoảng cách d = 1.00 cm ở bên trái
  let x_dim_d = -0.5
  line((0, y_top), (x_dim_d - 0.1, y_top), stroke: 0.4pt + luma(60%))
  line((0, y_bot), (x_dim_d - 0.1, y_bot), stroke: 0.4pt + luma(60%))
  line(
    (x_dim_d, y_bot), (x_dim_d, y_top),
    stroke: 0.6pt,
    mark: (start: "stealth", end: "stealth", fill: black, length: 0.14cm, width: 0.09cm, inset: 0.02cm),
  )
  content((x_dim_d - 0.15, y_mid), text(size: 7.5pt, [$1.00 thin "cm"$]), anchor: "east")
})

#let ve-hai-ban-1-8 = ve-hai-ban-1-9

// Bài 1.9: Lời giải - So sánh quỹ đạo chuyển động giữa Electron và Proton
#let ve-giai-hai-ban-1-9 = canvas(length: 1cm, {
  import draw: *
  let L = 4.2
  let d = 2.4
  let y_bot = 0.0
  let y_top = d
  let y_mid = d / 2

  // Hai bản
  rect((0, y_top), (L, y_top + 0.14), fill: rgb("#fee2e2"), stroke: 0.5pt + rgb("#ef4444"), radius: 1pt)
  rect((0, y_bot - 0.14), (L, y_bot), fill: rgb("#dbeafe"), stroke: 0.5pt + rgb("#2563eb"), radius: 1pt)
  line((-0.3, y_mid), (L + 0.5, y_mid), stroke: (paint: luma(65%), thickness: 0.45pt, dash: "dashed"))

  // Quỹ đạo electron (cong vọt lên mép trên)
  let pts_e = ()
  for i in range(31) {
    let t = i / 30
    pts_e.push((t * L, y_mid + (d / 2) * t * t))
  }
  line(..pts_e, stroke: (paint: rgb("#2563eb"), thickness: 1.3pt))
  content((L * 0.52, y_top + 0.32), text(size: 7pt, fill: rgb("#1d4ed8"), weight: "bold", [Electron: cong lên ($a_e approx 6.40 times 10^13 thin "m/s"^2$)]))
  // Lực điện lên electron hướng lên
  line((0.8, y_mid + 0.15), (0.8, y_mid + 0.85), stroke: (paint: rgb("#2563eb"), thickness: 1.3pt), mark: (end: "stealth", fill: rgb("#2563eb"), length: 0.13cm, width: 0.08cm))
  content((0.95, y_mid + 0.55), text(size: 7.5pt, fill: rgb("#1d4ed8"), $arrow(F)_e$))

  // Quỹ đạo proton (uốn rất nhẹ xuống dưới)
  let pts_p = ()
  for i in range(31) {
    let t = i / 30
    pts_p.push((t * L, y_mid - 0.28 * t * t))
  }
  line(..pts_p, stroke: (paint: rgb("#ea580c"), thickness: 1.3pt, dash: "dashed"))
  content((L * 0.52, y_bot - 0.35), text(size: 7pt, fill: rgb("#c2410c"), weight: "bold", [Proton: cong xuống ($abs(y_p) approx 2.72 thin "μm" << d/2$)]))
  // Lực điện lên proton hướng xuống
  line((1.5, y_mid - 0.15), (1.5, y_mid - 0.75), stroke: (paint: rgb("#ea580c"), thickness: 1.3pt), mark: (end: "stealth", fill: rgb("#ea580c"), length: 0.13cm, width: 0.08cm))
  content((1.65, y_mid - 0.5), text(size: 7.5pt, fill: rgb("#c2410c"), $arrow(F)_p$))

  // Nhãn vận tốc ban đầu chung v0
  line((0, y_mid), (0.9, y_mid), stroke: (paint: rgb("#16a34a"), thickness: 1.3pt), mark: (end: "stealth", fill: rgb("#16a34a"), length: 0.13cm, width: 0.08cm))
  content((0.45, y_mid + 0.22), text(size: 7.5pt, fill: rgb("#15803d"), $arrow(v)_0$))
})

// --------------------------------------------------------------------------
// Bài 1.10: Hai điện tích trên trục Ox
// --------------------------------------------------------------------------
#let ve-dien-tich-truc-x-1-10 = canvas(length: 1cm, {
  import draw: *

  let x1 = 1.0
  let x2 = 3.5

  // Trục Ox
  line((0.2, 0), (4.5, 0), stroke: 0.7pt + luma(50%), mark: (end: "stealth", fill: luma(50%), length: 0.15cm, width: 0.1cm))
  content((4.55, 0), text(size: 7.5pt, fill: luma(30%), $x thin ("m")$), anchor: "west")

  // Điện tích q1 = +2.50 μC tại x = 0
  circle((x1, 0), radius: 0.16, fill: rgb("#fee2e2"), stroke: 0.8pt + rgb("#ef4444"))
  content((x1, 0), text(size: 8pt, weight: "bold", fill: rgb("#b91c1c"), $+$, baseline: -0.5pt))
  content((x1, 0.42), text(size: 7.5pt, fill: rgb("#b91c1c"), weight: "bold", [$+2.50 thin "μC"$]))
  content((x1, -0.38), text(size: 7.5pt, fill: luma(30%), [$0$]))

  // Điện tích q2 = -3.50 μC tại x = 0.600 m
  circle((x2, 0), radius: 0.16, fill: rgb("#dbeafe"), stroke: 0.8pt + rgb("#2563eb"))
  content((x2, 0), text(size: 9pt, weight: "bold", fill: rgb("#1d4ed8"), $-$, baseline: -0.5pt))
  content((x2, 0.42), text(size: 7.5pt, fill: rgb("#1d4ed8"), weight: "bold", [$-3.50 thin "μC"$]))
  content((x2, -0.38), text(size: 7.5pt, fill: luma(30%), [$0.600 thin "m"$]))

  // Đo khoảng cách giữa 2 điện tích
  let y_dim = -0.7
  line((x1, -0.2), (x1, y_dim - 0.08), stroke: 0.4pt + luma(65%))
  line((x2, -0.2), (x2, y_dim - 0.08), stroke: 0.4pt + luma(65%))
  line(
    (x1, y_dim), (x2, y_dim),
    stroke: 0.55pt,
    mark: (start: "stealth", end: "stealth", fill: black, length: 0.13cm, width: 0.08cm, inset: 0.02cm),
  )
  content(((x1 + x2) / 2, y_dim - 0.22), text(size: 7pt, [$0.600 thin "m"$]))
})

// Bài 1.10: Lời giải - Vị trí cân bằng trên trục Ox
#let ve-giai-dien-tich-truc-x-1-10 = canvas(length: 1cm, {
  import draw: *

  let x_M = 0.8
  let x1 = 2.8
  let x2 = 4.2

  // Trục Ox
  line((0.1, 0), (5.0, 0), stroke: 0.6pt + luma(50%), mark: (end: "stealth", fill: luma(50%), length: 0.15cm, width: 0.1cm))
  content((5.05, 0), text(size: 7.5pt, fill: luma(30%), $x$), anchor: "west")

  // Điện tích q1 = +2.50 μC tại x = 0
  circle((x1, 0), radius: 0.14, fill: rgb("#fee2e2"), stroke: 0.8pt + rgb("#ef4444"))
  content((x1, 0), text(size: 7.5pt, weight: "bold", fill: rgb("#b91c1c"), $+$, baseline: -0.5pt))
  content((x1, 0.35), text(size: 7pt, fill: rgb("#b91c1c"), [$q_1$]))
  content((x1, -0.32), text(size: 7pt, fill: luma(40%), [$0$]))

  // Điện tích q2 = -3.50 μC tại x = 0.600 m
  circle((x2, 0), radius: 0.14, fill: rgb("#dbeafe"), stroke: 0.8pt + rgb("#2563eb"))
  content((x2, 0), text(size: 8.5pt, weight: "bold", fill: rgb("#1d4ed8"), $-$, baseline: -0.5pt))
  content((x2, 0.35), text(size: 7pt, fill: rgb("#1d4ed8"), [$q_2$]))
  content((x2, -0.32), text(size: 7pt, fill: luma(40%), [$0.6$]))

  // Điểm M cân bằng tại x = -3.27 m
  circle((x_M, 0), radius: 0.12, fill: rgb("#fef3c7"), stroke: 0.8pt + rgb("#d97706"))
  content((x_M, 0), text(size: 6.5pt, weight: "bold", fill: rgb("#b45309"), $+q$))
  content((x_M, -0.35), text(size: 7pt, weight: "bold", fill: rgb("#b45309"), [$-3.27 thin "m"$]))

  // Vector điện trường E1 (do q1 đẩy +q) hướng sang TRÁI
  let e_len = 0.85
  line(
    (x_M, 0), (x_M - e_len, 0),
    stroke: (paint: rgb("#ef4444"), thickness: 1.4pt),
    mark: (end: "stealth", fill: rgb("#ef4444"), length: 0.15cm, width: 0.1cm, inset: 0.03cm),
  )
  content((x_M - e_len / 2, 0.28), text(size: 7.5pt, fill: rgb("#b91c1c"), $arrow(E)_1$))

  // Vector điện trường E2 (do q2 hút +q) hướng sang PHẢI
  line(
    (x_M, 0), (x_M + e_len, 0),
    stroke: (paint: rgb("#2563eb"), thickness: 1.4pt),
    mark: (end: "stealth", fill: rgb("#2563eb"), length: 0.15cm, width: 0.1cm, inset: 0.03cm),
  )
  content((x_M + e_len / 2, 0.28), text(size: 7.5pt, fill: rgb("#1d4ed8"), $arrow(E)_2$))

  // Ký hiệu cân bằng E1 + E2 = 0
  content((x_M, 0.65), text(size: 7pt, fill: rgb("#15803d"), weight: "bold", [$arrow(E)_1 + arrow(E)_2 = arrow(0)$]))

  // Đo khoảng cách s = 3.27 m từ M đến gốc tọa độ
  let y_dim = -0.7
  line((x_M, -0.15), (x_M, y_dim - 0.08), stroke: 0.4pt + luma(65%))
  line((x1, -0.15), (x1, y_dim - 0.08), stroke: 0.4pt + luma(65%))
  line(
    (x_M, y_dim), (x1, y_dim),
    stroke: 0.55pt,
    mark: (start: "stealth", end: "stealth", fill: black, length: 0.13cm, width: 0.08cm, inset: 0.02cm),
  )
  content(((x_M + x1) / 2, y_dim - 0.2), text(size: 7pt, [$s = 3.27 thin "m"$]))
})

// --------------------------------------------------------------------------
// Bài 1.11: Dây dẫn nhựa tích điện (dây thẳng và vòng tròn)
// --------------------------------------------------------------------------
#let ve-de-day-dan-1-11 = canvas(length: 1cm, {
  import draw: *

  // --- (a) Dây dẫn thẳng ---
  let x_c1 = 1.3
  let y_wire = 0.0
  let L_draw = 2.0

  rect((x_c1 - L_draw / 2, y_wire - 0.06), (x_c1 + L_draw / 2, y_wire + 0.06), fill: rgb("#fed7aa"), stroke: 0.6pt + rgb("#ea580c"), radius: 1pt)
  for dx in (-0.7, -0.35, 0, 0.35, 0.7) {
    content((x_c1 + dx, y_wire), text(size: 6pt, weight: "bold", fill: rgb("#c2410c"), $+$))
  }
  content((x_c1, y_wire - 0.28), text(size: 6.5pt, fill: rgb("#c2410c"), [$L = 8.5 thin "cm"$]))

  let y_P = 1.45
  line((x_c1, y_wire), (x_c1, y_P), stroke: (paint: luma(60%), thickness: 0.5pt, dash: "dashed"))
  circle((x_c1, y_P), radius: 0.05, fill: black)
  content((x_c1 + 0.22, y_P), text(size: 7.5pt, weight: "bold", $P$))

  line((x_c1 - 0.2, y_wire), (x_c1 - 0.2, y_P), stroke: 0.5pt, mark: (start: "stealth", end: "stealth", fill: black, length: 0.12cm, width: 0.07cm))
  content((x_c1 - 0.55, (y_wire + y_P) / 2), text(size: 7pt, [$6 thin "cm"$]))
  content((x_c1, 1.95), text(size: 7.5pt, weight: "bold", [(a) Dây thẳng]))

  // Phân cách giữa 2 hình
  line((2.7, -0.35), (2.7, 2.05), stroke: 0.4pt + luma(80%))

  // --- (b) Vòng dây tròn ---
  let x_c2 = 4.1
  let y_O = 0.15
  let R_x = 0.95
  let R_y = 0.32

  circle((x_c2, y_O), radius: (R_x, R_y), fill: none, stroke: 1.1pt + rgb("#ea580c"))
  for ang in (0deg, 45deg, 135deg, 180deg, 225deg, 315deg) {
    let px = x_c2 + R_x * calc.cos(ang)
    let py = y_O + R_y * calc.sin(ang)
    content((px, py), text(size: 5.5pt, weight: "bold", fill: rgb("#c2410c"), $+$))
  }
  circle((x_c2, y_O), radius: 0.03, fill: black)
  content((x_c2 - 0.15, y_O - 0.12), text(size: 6.5pt, $O$))
  line((x_c2, y_O), (x_c2 + R_x, y_O), stroke: 0.45pt + rgb("#c2410c"))
  content((x_c2 + R_x / 2, y_O + 0.14), text(size: 6.5pt, fill: rgb("#c2410c"), $R$))

  let y_M = y_O + 1.45
  line((x_c2, y_O), (x_c2, y_M), stroke: (paint: luma(60%), thickness: 0.5pt, dash: "dashed"))
  circle((x_c2, y_M), radius: 0.05, fill: black)
  content((x_c2 + 0.22, y_M), text(size: 7.5pt, weight: "bold", $M$))

  line((x_c2 - 0.3, y_O), (x_c2 - 0.3, y_M), stroke: 0.5pt, mark: (start: "stealth", end: "stealth", fill: black, length: 0.12cm, width: 0.07cm))
  content((x_c2 - 0.65, (y_O + y_M) / 2), text(size: 7pt, [$6 thin "cm"$]))
  content((x_c2, 1.95), text(size: 7.5pt, weight: "bold", [(b) Vòng tròn]))
})

// Bài 1.11: Lời giải (a) - Điện trường trên đường trung trực của dây thẳng
#let ve-giai-day-thang-1-11 = canvas(length: 1cm, {
  import draw: *

  let L = 3.6
  let y_P = 2.0

  // Dây thẳng trên trục x
  line((-L / 2 - 0.3, 0), (L / 2 + 0.5, 0), stroke: 0.5pt + luma(55%), mark: (end: "stealth", fill: luma(55%), length: 0.13cm, width: 0.08cm))
  content((L / 2 + 0.55, 0), text(size: 7pt, fill: luma(40%), $x$), anchor: "west")

  // Trục Oy (đường trung trực)
  line((0, -0.3), (0, y_P + 1.0), stroke: 0.5pt + luma(55%), mark: (end: "stealth", fill: luma(55%), length: 0.13cm, width: 0.08cm))
  content((0, y_P + 1.05), text(size: 7pt, fill: luma(40%), $y$), anchor: "south")
  content((-0.18, -0.18), text(size: 6.5pt, $O$))

  // Dây mang điện từ -L/2 đến +L/2
  rect((-L / 2, -0.06), (L / 2, 0.06), fill: rgb("#fed7aa"), stroke: 0.7pt + rgb("#ea580c"), radius: 1pt)
  content((-L / 2, -0.25), text(size: 6.5pt, [$-L/2$]))
  content((L / 2, -0.25), text(size: 6.5pt, [$+L/2$]))

  // Hai phần tử dq đối xứng tại -x và +x
  let x_el = 1.1
  rect((x_el - 0.12, -0.06), (x_el + 0.12, 0.06), fill: rgb("#f97316"), stroke: none)
  rect((-x_el - 0.12, -0.06), (-x_el + 0.12, 0.06), fill: rgb("#f97316"), stroke: none)
  content((x_el, -0.25), text(size: 6.5pt, fill: rgb("#c2410c"), $dif q$))
  content((-x_el, -0.25), text(size: 6.5pt, fill: rgb("#c2410c"), $dif q$))

  // Nối từ 2 phần tử tới điểm P
  line((x_el, 0), (0, y_P), stroke: (paint: luma(65%), thickness: 0.45pt, dash: "dashed"))
  line((-x_el, 0), (0, y_P), stroke: (paint: luma(65%), thickness: 0.45pt, dash: "dashed"))
  circle((0, y_P), radius: 0.05, fill: black)
  content((-0.25, y_P - 0.1), text(size: 7.5pt, weight: "bold", $P$))

  // Góc theta
  arc((0, y_P), start: -90deg, delta: 29deg, radius: 0.5, anchor: "origin", stroke: 0.45pt + rgb("#0284c7"))
  content((0.2, y_P - 0.35), text(size: 6pt, fill: rgb("#0369a1"), $theta$))

  // Các vector vi phân dE1, dE2
  let dE_len = 0.75
  let ang1 = calc.atan2(y_P, x_el)
  let de1_x = -dE_len * calc.cos(ang1)
  let de1_y = dE_len * calc.sin(ang1)
  line((0, y_P), (de1_x, y_P + de1_y), stroke: (paint: rgb("#ef4444"), thickness: 1.1pt), mark: (end: "stealth", fill: rgb("#ef4444"), length: 0.12cm, width: 0.08cm))
  line((0, y_P), (-de1_x, y_P + de1_y), stroke: (paint: rgb("#ef4444"), thickness: 1.1pt), mark: (end: "stealth", fill: rgb("#ef4444"), length: 0.12cm, width: 0.08cm))
  content((de1_x - 0.25, y_P + de1_y), text(size: 6.5pt, fill: rgb("#b91c1c"), $dif arrow(E)_1$))
  content((-de1_x + 0.25, y_P + de1_y), text(size: 6.5pt, fill: rgb("#b91c1c"), $dif arrow(E)_2$))

  // Vector tổng hợp E hướng lên
  let E_tot_len = 2 * de1_y
  line((0, y_P), (0, y_P + E_tot_len), stroke: (paint: rgb("#2563eb"), thickness: 1.6pt), mark: (end: "stealth", fill: rgb("#2563eb"), length: 0.16cm, width: 0.11cm, inset: 0.03cm))
  content((0.28, y_P + E_tot_len - 0.1), text(size: 8pt, weight: "bold", fill: rgb("#1d4ed8"), $arrow(E)$))
  content((0.95, y_P + 0.75), text(size: 6.5pt, fill: rgb("#1d4ed8"), [$dif E_x$ triệt tiêu]))
})

// Bài 1.11: Lời giải (b) - Điện trường trên trục của vòng dây tròn
#let ve-giai-vong-day-1-11 = canvas(length: 1cm, {
  import draw: *

  let R_x = 1.3
  let R_y = 0.42
  let z_M = 1.8

  circle((0, 0), radius: (R_x, R_y), stroke: 1.2pt + rgb("#ea580c"), fill: none)
  circle((0, 0), radius: 0.03, fill: black)
  content((-0.18, -0.15), text(size: 6.5pt, $O$))

  line((0, -0.4), (0, z_M + 1.0), stroke: 0.5pt + luma(50%), mark: (end: "stealth", fill: luma(50%), length: 0.14cm, width: 0.09cm))
  content((0, z_M + 1.05), text(size: 7pt, fill: luma(30%), $z$), anchor: "south")

  circle((-R_x, 0), radius: 0.07, fill: rgb("#f97316"), stroke: none)
  circle((R_x, 0), radius: 0.07, fill: rgb("#f97316"), stroke: none)
  content((-R_x - 0.28, 0), text(size: 6.5pt, fill: rgb("#c2410c"), $dif q$))
  content((R_x + 0.28, 0), text(size: 6.5pt, fill: rgb("#c2410c"), $dif q$))

  line((0, 0), (R_x, 0), stroke: 0.5pt + rgb("#c2410c"))
  content((R_x / 2, 0.15), text(size: 6.5pt, fill: rgb("#c2410c"), $R$))

  circle((0, z_M), radius: 0.05, fill: black)
  content((-0.25, z_M - 0.1), text(size: 7.5pt, weight: "bold", $M$))

  line((-R_x, 0), (0, z_M), stroke: (paint: luma(65%), thickness: 0.45pt, dash: "dashed"))
  line((R_x, 0), (0, z_M), stroke: (paint: luma(65%), thickness: 0.45pt, dash: "dashed"))
  content((R_x * 0.55, z_M * 0.45), text(size: 6.5pt, fill: luma(35%), $r$))

  let dE_len = 0.75
  let ang = calc.atan2(z_M, R_x)
  let de_x = dE_len * calc.cos(ang)
  let de_z = dE_len * calc.sin(ang)
  line((0, z_M), (de_x, z_M + de_z), stroke: (paint: rgb("#ef4444"), thickness: 1.1pt), mark: (end: "stealth", fill: rgb("#ef4444"), length: 0.12cm, width: 0.08cm))
  line((0, z_M), (-de_x, z_M + de_z), stroke: (paint: rgb("#ef4444"), thickness: 1.1pt), mark: (end: "stealth", fill: rgb("#ef4444"), length: 0.12cm, width: 0.08cm))
  content((de_x + 0.25, z_M + de_z), text(size: 6.5pt, fill: rgb("#b91c1c"), $dif arrow(E)$))

  let E_len = 1.35
  line((0, z_M), (0, z_M + E_len), stroke: (paint: rgb("#2563eb"), thickness: 1.6pt), mark: (end: "stealth", fill: rgb("#2563eb"), length: 0.16cm, width: 0.11cm, inset: 0.03cm))
  content((0.28, z_M + E_len - 0.1), text(size: 8pt, weight: "bold", fill: rgb("#1d4ed8"), $arrow(E)$))
  content((0.95, z_M + 0.75), text(size: 6.5pt, fill: rgb("#1d4ed8"), [$dif E_bot$ triệt tiêu]))
})

// --------------------------------------------------------------------------
// Bài 1.12: Thanh tích điện trên trục Oy và điện tích q trên trục Ox
// --------------------------------------------------------------------------
#let ve-de-thanh-1-12 = canvas(length: 1cm, {
  import draw: *

  let a_val = 2.4
  let x_val = 3.0

  // Trục Ox, Oy
  line((-0.3, 0), (x_val + 1.2, 0), stroke: 0.6pt + luma(50%), mark: (end: "stealth", fill: luma(50%), length: 0.15cm, width: 0.1cm))
  line((0, -0.3), (0, a_val + 0.8), stroke: 0.6pt + luma(50%), mark: (end: "stealth", fill: luma(50%), length: 0.15cm, width: 0.1cm))
  content((x_val + 1.25, 0), text(size: 7.5pt, fill: luma(30%), $x$), anchor: "west")
  content((0, a_val + 0.85), text(size: 7.5pt, fill: luma(30%), $y$), anchor: "south")
  content((-0.18, -0.18), text(size: 7pt, fill: luma(40%), $O$))

  // Thanh tích điện dương Q dọc trục Oy từ y = 0 đến y = a
  rect((-0.08, 0), (0.08, a_val), fill: rgb("#fed7aa"), stroke: 0.7pt + rgb("#ea580c"), radius: 1pt)
  for dy in (0.4, 0.9, 1.4, 1.9) {
    content((0, dy), text(size: 6pt, weight: "bold", fill: rgb("#c2410c"), $+$))
  }
  // Đầu trên y = a
  line((-0.15, a_val), (0.15, a_val), stroke: 0.8pt + rgb("#c2410c"))
  content((-0.28, a_val), text(size: 7.5pt, fill: rgb("#c2410c"), weight: "bold", $a$))
  content((-0.35, a_val / 2), text(size: 8pt, weight: "bold", fill: rgb("#c2410c"), $Q$))

  // Điện tích âm -q tại (x, 0)
  circle((x_val, 0), radius: 0.16, fill: rgb("#dbeafe"), stroke: 0.8pt + rgb("#2563eb"))
  content((x_val, 0), text(size: 8.5pt, weight: "bold", fill: rgb("#1d4ed8"), $-$, baseline: -0.5pt))
  content((x_val, -0.38), text(size: 7.5pt, weight: "bold", fill: rgb("#1d4ed8"), [$-q$]))

  // Đo khoảng cách x từ O đến điện tích
  let y_dim = -0.6
  line((0, -0.1), (0, y_dim - 0.08), stroke: 0.4pt + luma(65%))
  line((x_val, -0.1), (x_val, y_dim - 0.08), stroke: 0.4pt + luma(65%))
  line(
    (0, y_dim), (x_val, y_dim),
    stroke: 0.55pt,
    mark: (start: "stealth", end: "stealth", fill: black, length: 0.13cm, width: 0.08cm, inset: 0.02cm),
  )
  content((x_val / 2, y_dim - 0.2), text(size: 7pt, $x$))
})

#let ve-thanh-1-10 = ve-de-thanh-1-12

// Bài 1.12: Lời giải - Phân tích vi phân dE và lực điện F hướng về thanh
#let ve-giai-thanh-1-12 = canvas(length: 1cm, {
  import draw: *

  let a_val = 2.4
  let x_val = 2.8
  let y_el = 1.6

  // Khoảng cách hình học từ dq (0, y_el) đến điểm (x_val, 0)
  let r_len = calc.sqrt(x_val * x_val + y_el * y_el)
  let ux = x_val / r_len
  let uy = y_el / r_len
  let ang = calc.atan2(x_val, y_el)

  // Trục Ox, Oy
  line((-0.3, 0), (x_val + 2.0, 0), stroke: 0.6pt + luma(50%), mark: (end: "stealth", fill: luma(50%), length: 0.15cm, width: 0.1cm))
  line((0, -1.3), (0, a_val + 0.8), stroke: 0.6pt + luma(50%), mark: (end: "stealth", fill: luma(50%), length: 0.15cm, width: 0.1cm))
  content((x_val + 2.05, 0), text(size: 7.5pt, fill: luma(30%), $x$), anchor: "west")
  content((0, a_val + 0.85), text(size: 7.5pt, fill: luma(30%), $y$), anchor: "south")
  content((-0.18, -0.2), text(size: 7pt, fill: luma(40%), $O$))

  // Thanh tích điện dọc Oy từ 0 đến a
  rect((-0.07, 0), (0.07, a_val), fill: rgb("#fed7aa"), stroke: 0.7pt + rgb("#ea580c"), radius: 1pt)
  for y in (0.4, 0.9, 1.3, 2.0) {
    content((0, y), text(size: 6pt, weight: "bold", fill: rgb("#c2410c"), $+$))
  }
  content((-0.25, a_val), text(size: 7pt, fill: rgb("#c2410c"), $a$))
  content((-0.3, a_val * 0.75), text(size: 7.5pt, weight: "bold", fill: rgb("#c2410c"), $Q$))

  // Phần tử vi phân dq tại (0, y_el)
  rect((-0.09, y_el - 0.1), (0.09, y_el + 0.1), fill: rgb("#f97316"), stroke: none)
  content((-0.42, y_el), text(size: 6.5pt, fill: rgb("#c2410c"), weight: "bold", $dif q$))
  content((-0.2, y_el - 0.18), text(size: 6pt, fill: luma(40%), $y$))

  // Đường gióng nét đứt nối dq đến (x, 0)
  line((0, y_el), (x_val, 0), stroke: (paint: luma(60%), thickness: 0.45pt, dash: "dashed"))
  // Nhãn khoảng cách r đặt phía trên đường nối
  content((x_val * 0.38, y_el * 0.62 + 0.32), text(size: 6.5pt, fill: luma(30%), $r = sqrt(x^2 + y^2)$))

  // Cung góc alpha tại (x, 0) tạo bởi đường gióng và trục -Ox
  let r_arc = 0.65
  line(
    ..range(0, 19, step: 2).map(deg => {
      let a = 180deg - ang * (deg / 18.0)
      (x_val + r_arc * calc.cos(a), r_arc * calc.sin(a))
    }),
    stroke: 0.45pt + rgb("#475569"),
  )
  content((x_val - r_arc - 0.16, r_arc * uy * 0.6), text(size: 6.5pt, fill: rgb("#334155"), $alpha$))

  // Vector lực điện tác dụng lên -q: hướng DỌC THEO PHƯƠNG NỐI VỀ PHÍA dq
  let f_len = 1.35
  let fx = -f_len * ux
  let fy = f_len * uy
  line(
    (x_val, 0), (x_val + fx, fy),
    stroke: (paint: rgb("#16a34a"), thickness: 1.5pt),
    mark: (end: "stealth", fill: rgb("#16a34a"), length: 0.15cm, width: 0.1cm, inset: 0.03cm),
  )
  content((x_val + fx * 0.5 - 0.45, fy * 0.5 + 0.42), text(size: 7.5pt, weight: "bold", fill: rgb("#15803d"), $dif arrow(F) = -q dif arrow(E)$))

  // Điện tích điểm âm -q tại (x, 0)
  circle((x_val, 0), radius: 0.13, fill: rgb("#dbeafe"), stroke: 0.8pt + rgb("#2563eb"))
  content((x_val, 0), text(size: 7.5pt, weight: "bold", fill: rgb("#1d4ed8"), $-$, baseline: -0.5pt))
  content((x_val - 0.35, -0.26), text(size: 7.5pt, weight: "bold", fill: rgb("#1d4ed8"), [$-q$]))

  // Vector vi phân dE: KÉO DÀI THẲNG TẮP DỌC THEO PHƯƠNG NỐI QUA (x, 0) RA XA dq
  let de_len = 1.40
  let dex = de_len * ux
  let dey = -de_len * uy
  line(
    (x_val, 0), (x_val + dex, dey),
    stroke: (paint: rgb("#ef4444"), thickness: 1.4pt),
    mark: (end: "stealth", fill: rgb("#ef4444"), length: 0.15cm, width: 0.1cm, inset: 0.03cm),
  )
  content((x_val + dex + 0.32, dey - 0.08), text(size: 7.5pt, weight: "bold", fill: rgb("#b91c1c"), $dif arrow(E)$))

  // Cung góc alpha đối đỉnh giữa dE và trục +Ox
  line(
    ..range(0, 19, step: 2).map(deg => {
      let a = -ang * (deg / 18.0)
      (x_val + r_arc * calc.cos(a), r_arc * calc.sin(a))
    }),
    stroke: 0.45pt + rgb("#ef4444"),
  )
  content((x_val + r_arc + 0.18, -r_arc * uy * 0.5), text(size: 6.5pt, fill: rgb("#b91c1c"), $alpha$))

  // Các thành phần hình chiếu dEx và dEy
  line(
    (x_val, 0), (x_val + dex, 0),
    stroke: (paint: rgb("#ef4444"), thickness: 1.1pt),
    mark: (end: "stealth", fill: rgb("#ef4444"), length: 0.12cm, width: 0.08cm, inset: 0.02cm),
  )
  line(
    (x_val, 0), (x_val, dey),
    stroke: (paint: rgb("#ef4444"), thickness: 1.1pt),
    mark: (end: "stealth", fill: rgb("#ef4444"), length: 0.12cm, width: 0.08cm, inset: 0.02cm),
  )
  line((x_val + dex, 0), (x_val + dex, dey), stroke: 0.4pt + luma(65%))
  line((x_val, dey), (x_val + dex, dey), stroke: 0.4pt + luma(65%))
  content((x_val + dex * 0.55, 0.22), text(size: 6.5pt, fill: rgb("#b91c1c"), $dif arrow(E)_x$))
  content((x_val - 0.55, dey * 0.65), text(size: 6.5pt, fill: rgb("#b91c1c"), $dif arrow(E)_y$))
})

// --------------------------------------------------------------------------
// Bài 1.13: Cung bán nguyệt tích điện nửa dương nửa âm
// --------------------------------------------------------------------------
#let ve-de-ban-nguyet-1-13 = canvas(length: 1cm, {
  import draw: *

  let R = 1.6

  // Trục Ox, Oy
  line((-R - 0.7, 0), (R + 0.7, 0), stroke: 0.6pt + luma(50%), mark: (end: "stealth", fill: luma(50%), length: 0.15cm, width: 0.1cm))
  line((0, -0.3), (0, R + 0.7), stroke: 0.6pt + luma(50%), mark: (end: "stealth", fill: luma(50%), length: 0.15cm, width: 0.1cm))
  content((R + 0.75, 0), text(size: 7.5pt, fill: luma(30%), $x$), anchor: "west")
  content((0, R + 0.75), text(size: 7.5pt, fill: luma(30%), $y$), anchor: "south")
  content((-0.18, -0.2), text(size: 7pt, fill: luma(40%), $O$))

  // Nửa cung bên trái (góc phần tư II): tích điện dương +Q (từ 90deg đến 180deg)
  line(
    ..range(90, 181, step: 2).map(deg => (R * calc.cos(deg * 1deg), R * calc.sin(deg * 1deg))),
    stroke: 2.2pt + rgb("#ea580c"),
  )
  for ang in (105deg, 125deg, 145deg, 165deg) {
    let px = (R - 0.2) * calc.cos(ang)
    let py = (R - 0.2) * calc.sin(ang)
    content((px, py), text(size: 7pt, weight: "bold", fill: rgb("#c2410c"), $+$))
  }
  content((-R * 0.7 - 0.25, R * 0.7 + 0.35), text(size: 8pt, weight: "bold", fill: rgb("#c2410c"), [$+Q$]))

  // Nửa cung bên phải (góc phần tư I): tích điện âm -Q (từ 0deg đến 90deg)
  line(
    ..range(0, 91, step: 2).map(deg => (R * calc.cos(deg * 1deg), R * calc.sin(deg * 1deg))),
    stroke: 2.2pt + rgb("#2563eb"),
  )
  for ang in (15deg, 35deg, 55deg, 75deg) {
    let px = (R - 0.2) * calc.cos(ang)
    let py = (R - 0.2) * calc.sin(ang)
    content((px, py), text(size: 8pt, weight: "bold", fill: rgb("#1d4ed8"), $-$))
  }
  content((R * 0.7 + 0.25, R * 0.7 + 0.35), text(size: 8pt, weight: "bold", fill: rgb("#1d4ed8"), [$-Q$]))

  // Bán kính a (hướng theo góc 30 độ)
  line((0, 0), (R * calc.cos(30deg), R * calc.sin(30deg)), stroke: 0.5pt + rgb("#0284c7"))
  content((R * 0.5 * calc.cos(30deg) - 0.05, R * 0.5 * calc.sin(30deg) + 0.15), text(size: 7pt, fill: rgb("#0369a1"), $a$))
})

// Bài 1.13: Lời giải - Đối xứng triệt tiêu Ey và tổng hợp Ex sang phải
#let ve-giai-ban-nguyet-1-13 = canvas(length: 1cm, {
  import draw: *

  let R = 1.6

  // Trục Ox, Oy
  line((-R - 0.6, 0), (R + 1.0, 0), stroke: 0.6pt + luma(50%), mark: (end: "stealth", fill: luma(50%), length: 0.15cm, width: 0.1cm))
  line((0, -0.85), (0, R + 0.6), stroke: 0.6pt + luma(50%), mark: (end: "stealth", fill: luma(50%), length: 0.15cm, width: 0.1cm))
  content((R + 1.05, 0), text(size: 7.5pt, fill: luma(30%), $x$), anchor: "west")
  content((0, R + 0.65), text(size: 7.5pt, fill: luma(30%), $y$), anchor: "south")
  content((-0.2, -0.2), text(size: 7pt, fill: luma(40%), $O$))

  // Cung bán nguyệt
  line(
    ..range(90, 181, step: 2).map(deg => (R * calc.cos(deg * 1deg), R * calc.sin(deg * 1deg))),
    stroke: 1.8pt + rgb("#ea580c"),
  )
  line(
    ..range(0, 91, step: 2).map(deg => (R * calc.cos(deg * 1deg), R * calc.sin(deg * 1deg))),
    stroke: 1.8pt + rgb("#2563eb"),
  )

  // Hai phần tử vi phân đối xứng tại góc ang_val
  let ang_val = 40deg
  let p_pos = (-R * calc.cos(ang_val), R * calc.sin(ang_val))
  let p_neg = (R * calc.cos(ang_val), R * calc.sin(ang_val))

  circle(p_pos, radius: 0.08, fill: rgb("#f97316"), stroke: none)
  content((p_pos.at(0) - 0.32, p_pos.at(1) + 0.15), text(size: 6.5pt, fill: rgb("#c2410c"), weight: "bold", $+dif q$))

  circle(p_neg, radius: 0.08, fill: rgb("#2563eb"), stroke: none)
  content((p_neg.at(0) + 0.32, p_neg.at(1) + 0.15), text(size: 6.5pt, fill: rgb("#1d4ed8"), weight: "bold", $-dif q$))

  // Đường gióng nét đứt tới gốc O
  line(p_pos, (0, 0), stroke: (paint: luma(65%), thickness: 0.45pt, dash: "dashed"))
  line(p_neg, (0, 0), stroke: (paint: luma(65%), thickness: 0.45pt, dash: "dashed"))

  // Vector dE_1 do +dq đẩy tâm O (hướng chếch xuống sang phải)
  let de_len = 0.95
  let de1_x = de_len * calc.cos(ang_val)
  let de1_y = -de_len * calc.sin(ang_val)
  line(
    (0, 0), (de1_x, de1_y),
    stroke: (paint: rgb("#ea580c"), thickness: 1.2pt),
    mark: (end: "stealth", fill: rgb("#ea580c"), length: 0.14cm, width: 0.09cm, inset: 0.03cm),
  )
  content((de1_x + 0.25, de1_y - 0.1), text(size: 6.5pt, fill: rgb("#c2410c"), $dif arrow(E)_1$))

  // Vector dE_2 do -dq hút tâm O (hướng chếch lên sang phải)
  let de2_x = de_len * calc.cos(ang_val)
  let de2_y = de_len * calc.sin(ang_val)
  line(
    (0, 0), (de2_x, de2_y),
    stroke: (paint: rgb("#2563eb"), thickness: 1.2pt),
    mark: (end: "stealth", fill: rgb("#2563eb"), length: 0.14cm, width: 0.09cm, inset: 0.03cm),
  )
  content((de2_x + 0.25, de2_y + 0.1), text(size: 6.5pt, fill: rgb("#1d4ed8"), $dif arrow(E)_2$))

  // Thành phần dEy triệt tiêu nhau
  line((de1_x, 0), (de1_x, de1_y), stroke: (paint: luma(60%), thickness: 0.4pt, dash: "dotted"))
  line((de2_x, 0), (de2_x, de2_y), stroke: (paint: luma(60%), thickness: 0.4pt, dash: "dotted"))
  content((de1_x + 0.65, 0.4), text(size: 6pt, fill: luma(40%), [$dif E_y$ triệt tiêu]))

  // Vector tổng hợp E dọc trục Ox sang phải
  let E_len = 1.45
  line(
    (0, 0), (E_len, 0),
    stroke: (paint: rgb("#9333ea"), thickness: 1.6pt),
    mark: (end: "stealth", fill: rgb("#9333ea"), length: 0.16cm, width: 0.11cm, inset: 0.04cm),
  )
  content((E_len + 0.15, -0.25), text(size: 8pt, weight: "bold", fill: rgb("#7e22ce"), $arrow(E)$))
})

// --------------------------------------------------------------------------
// Bài 1.14: Thanh không dẫn điện tích điện âm và điểm P trên đường kéo dài
// --------------------------------------------------------------------------
#let ve-de-thanh-1-14 = canvas(length: 1cm, {
  import draw: *

  let L_len = 2.8
  let a_len = 1.6
  let x_start = 0.5
  let x_end = x_start + L_len
  let x_P = x_end + a_len

  // Thanh tích điện âm dài L
  rect((x_start, -0.09), (x_end, 0.09), fill: rgb("#dbeafe"), stroke: 0.7pt + rgb("#2563eb"), radius: 1pt)
  for x in (0.9, 1.5, 2.1, 2.7) {
    content((x, 0), text(size: 7pt, weight: "bold", fill: rgb("#1d4ed8"), $-$))
  }
  content(((x_start + x_end) / 2, -0.32), text(size: 7.5pt, fill: rgb("#1d4ed8"), weight: "bold", [$-q$]))

  // Đường kéo dài trục
  line((x_end, 0), (x_P + 0.6, 0), stroke: (paint: luma(65%), thickness: 0.5pt, dash: "dashed"))

  // Điểm P
  circle((x_P, 0), radius: 0.06, fill: black)
  content((x_P, 0.28), text(size: 8pt, weight: "bold", $P$))

  // Đo chiều dài L
  let y_dim = 0.45
  line((x_start, 0.12), (x_start, y_dim + 0.08), stroke: 0.4pt + luma(65%))
  line((x_end, 0.12), (x_end, y_dim + 0.08), stroke: 0.4pt + luma(65%))
  line(
    (x_start, y_dim), (x_end, y_dim),
    stroke: 0.55pt,
    mark: (start: "stealth", end: "stealth", fill: black, length: 0.13cm, width: 0.08cm, inset: 0.02cm),
  )
  content(((x_start + x_end) / 2, y_dim + 0.2), text(size: 7pt, $L$))

  // Đo khoảng cách a
  line((x_end, 0.12), (x_end, y_dim + 0.08), stroke: 0.4pt + luma(65%))
  line((x_P, 0.12), (x_P, y_dim + 0.08), stroke: 0.4pt + luma(65%))
  line(
    (x_end, y_dim), (x_P, y_dim),
    stroke: 0.55pt,
    mark: (start: "stealth", end: "stealth", fill: black, length: 0.13cm, width: 0.08cm, inset: 0.02cm),
  )
  content(((x_end + x_P) / 2, y_dim + 0.2), text(size: 7pt, $a$))
})

// Bài 1.14: Lời giải - Tích phân phần tử dq và vector điện trường E hướng về thanh
#let ve-giai-thanh-1-14 = canvas(length: 1cm, {
  import draw: *

  let L_len = 2.8
  let a_len = 1.8
  let x_P = 4.8
  let x_near = x_P - a_len // 3.0 (đầu gần)
  let x_far = x_near - L_len // 0.2 (đầu xa)
  let s_pos = 1.1
  let x_el = x_near - s_pos // 1.9

  // Trục s dọc theo thanh
  line((-0.2, 0), (x_P + 0.8, 0), stroke: 0.5pt + luma(55%), mark: (end: "stealth", fill: luma(55%), length: 0.14cm, width: 0.09cm))
  content((x_P + 0.85, 0), text(size: 7pt, fill: luma(40%), $s$), anchor: "west")

  // Thanh tích điện âm từ x_far đến x_near
  rect((x_far, -0.08), (x_near, 0.08), fill: rgb("#dbeafe"), stroke: 0.7pt + rgb("#2563eb"), radius: 1pt)
  for x in (0.6, 1.2, 1.8, 2.4) {
    content((x, 0), text(size: 6.5pt, weight: "bold", fill: rgb("#1d4ed8"), $-$))
  }

  // Phần tử vi phân dq tại vị trí s
  rect((x_el - 0.12, -0.09), (x_el + 0.12, 0.09), fill: rgb("#2563eb"), stroke: none)
  content((x_el, -0.32), text(size: 6.5pt, fill: rgb("#1d4ed8"), weight: "bold", $dif q$))

  // Điểm P
  circle((x_P, 0), radius: 0.06, fill: black)
  content((x_P, 0.25), text(size: 8pt, weight: "bold", $P$))

  // Vector vi phân dE và vector tổng hợp E tại điểm P hướng VỀ PHÍA THANH (sang trái)
  let E_len = 1.45
  line(
    (x_P, 0), (x_P - E_len, 0),
    stroke: (paint: rgb("#ef4444"), thickness: 1.6pt),
    mark: (end: "stealth", fill: rgb("#ef4444"), length: 0.16cm, width: 0.11cm, inset: 0.03cm),
  )
  content((x_P - E_len - 0.15, 0.25), text(size: 8pt, weight: "bold", fill: rgb("#b91c1c"), $arrow(E)$))

  // Đo đoạn s từ đầu gần tới phần tử dq
  let y_s = 0.55
  line((x_near, 0.12), (x_near, y_s + 0.08), stroke: 0.4pt + luma(65%))
  line((x_el, 0.12), (x_el, y_s + 0.08), stroke: 0.4pt + luma(65%))
  line(
    (x_el, y_s), (x_near, y_s),
    stroke: 0.5pt,
    mark: (start: "stealth", end: "stealth", fill: black, length: 0.12cm, width: 0.07cm),
  )
  content(((x_el + x_near) / 2, y_s + 0.18), text(size: 6.5pt, $s$))

  // Đo khoảng cách a từ đầu gần tới P
  line((x_near, 0.12), (x_near, y_s + 0.08), stroke: 0.4pt + luma(65%))
  line((x_P, 0.12), (x_P, y_s + 0.08), stroke: 0.4pt + luma(65%))
  line(
    (x_near, y_s), (x_P, y_s),
    stroke: 0.5pt,
    mark: (start: "stealth", end: "stealth", fill: black, length: 0.12cm, width: 0.07cm),
  )
  content(((x_near + x_P) / 2, y_s + 0.18), text(size: 6.5pt, $a$))

  // Đo khoảng cách a + s từ dq tới P ở phía dưới
  let y_as = -0.65
  line((x_el, -0.15), (x_el, y_as - 0.08), stroke: 0.4pt + luma(65%))
  line((x_P, -0.15), (x_P, y_as - 0.08), stroke: 0.4pt + luma(65%))
  line(
    (x_el, y_as), (x_P, y_as),
    stroke: 0.5pt,
    mark: (start: "stealth", end: "stealth", fill: black, length: 0.12cm, width: 0.07cm),
  )
  content(((x_el + x_P) / 2, y_as - 0.2), text(size: 6.5pt, [$r = a + s$]))
})

// --------------------------------------------------------------------------
// Bài 1.15: Thanh kim loại mảnh dài l và điện tích q2 trên đường kéo dài
// --------------------------------------------------------------------------
#let ve-de-thanh-1-15 = canvas(length: 1cm, {
  import draw: *

  let half_l = 1.5
  let r_pos = 2.4

  // Trục đối xứng nét đứt
  line((-half_l - 0.6, 0), (r_pos + 0.8, 0), stroke: (paint: luma(65%), thickness: 0.5pt, dash: "dashed"))

  // Thanh kim loại mảnh dài l, tâm tại O(0,0)
  rect((-half_l, -0.09), (half_l, 0.09), fill: rgb("#fed7aa"), stroke: 0.7pt + rgb("#ea580c"), radius: 1pt)
  for x in (-1.0, -0.4, 0.4, 1.0) {
    content((x, 0), text(size: 6.5pt, weight: "bold", fill: rgb("#c2410c"), $+$))
  }
  content((-0.65, -0.32), text(size: 7.5pt, fill: rgb("#c2410c"), weight: "bold", [$q_1$]))

  // Vạch trung điểm O
  line((0, -0.15), (0, 0.15), stroke: 0.7pt + luma(40%))
  content((0, -0.32), text(size: 7pt, fill: luma(30%), $O$))

  // Điện tích q2 tại khoảng cách r từ O
  circle((r_pos, 0), radius: 0.12, fill: rgb("#dbeafe"), stroke: 0.8pt + rgb("#2563eb"))
  content((r_pos, 0.3), text(size: 8pt, weight: "bold", fill: rgb("#1d4ed8"), $q_2$))

  // Đo chiều dài thanh l ở dưới
  let y_l = -0.65
  line((-half_l, -0.15), (-half_l, y_l - 0.08), stroke: 0.4pt + luma(65%))
  line((half_l, -0.15), (half_l, y_l - 0.08), stroke: 0.4pt + luma(65%))
  line(
    (-half_l, y_l), (half_l, y_l),
    stroke: 0.55pt,
    mark: (start: "stealth", end: "stealth", fill: black, length: 0.13cm, width: 0.08cm, inset: 0.02cm),
  )
  content((0, y_l - 0.18), text(size: 7pt, $l$))

  // Đo khoảng cách r từ O đến q2 ở trên
  let y_r = 0.65
  line((0, 0.18), (0, y_r + 0.08), stroke: 0.4pt + luma(65%))
  line((r_pos, 0.18), (r_pos, y_r + 0.08), stroke: 0.4pt + luma(65%))
  line(
    (0, y_r), (r_pos, y_r),
    stroke: 0.55pt,
    mark: (start: "stealth", end: "stealth", fill: black, length: 0.13cm, width: 0.08cm, inset: 0.02cm),
  )
  content((r_pos / 2, y_r + 0.18), text(size: 7pt, $r$))
})

// Bài 1.15: Lời giải - Phân tích vi phân và khoảng cách tới hai đầu thanh
#let ve-giai-thanh-1-15 = canvas(length: 1cm, {
  import draw: *

  let half_l = 1.4
  let r_pos = 2.4
  let x_el = 0.6

  // Trục x
  line((-half_l - 0.5, 0), (r_pos + 1.2, 0), stroke: 0.5pt + luma(55%), mark: (end: "stealth", fill: luma(55%), length: 0.14cm, width: 0.09cm))
  content((r_pos + 1.25, 0), text(size: 7pt, fill: luma(40%), $x$), anchor: "west")

  // Thanh kim loại từ -l/2 đến +l/2
  rect((-half_l, -0.08), (half_l, 0.08), fill: rgb("#fed7aa"), stroke: 0.7pt + rgb("#ea580c"), radius: 1pt)
  for x in (-0.9, -0.3, 0.3, 0.9) {
    content((x, 0), text(size: 6pt, weight: "bold", fill: rgb("#c2410c"), $+$))
  }

  // Trung điểm O
  line((0, -0.12), (0, 0.12), stroke: 0.6pt + luma(40%))
  content((0, -0.26), text(size: 6.5pt, fill: luma(30%), $O$))
  content((-half_l, -0.26), text(size: 6pt, fill: luma(40%), [$-l/2$]))
  content((half_l, -0.24), text(size: 6pt, fill: luma(40%), [$+l/2$]))

  // Phần tử vi phân dq1 tại vị trí x
  rect((x_el - 0.1, -0.09), (x_el + 0.1, 0.09), fill: rgb("#f97316"), stroke: none)
  content((x_el, 0.28), text(size: 6.5pt, fill: rgb("#c2410c"), weight: "bold", $dif q_1$))

  // Điện tích điểm q2
  circle((r_pos, 0), radius: 0.11, fill: rgb("#dbeafe"), stroke: 0.8pt + rgb("#2563eb"))
  content((r_pos, -0.26), text(size: 7.5pt, weight: "bold", fill: rgb("#1d4ed8"), $q_2$))

  // Vector điện trường tổng hợp E tại q2 (đẩy sang phải)
  let E_len = 0.9
  line(
    (r_pos, 0), (r_pos + E_len, 0),
    stroke: (paint: rgb("#ef4444"), thickness: 1.5pt),
    mark: (end: "stealth", fill: rgb("#ef4444"), length: 0.15cm, width: 0.1cm, inset: 0.03cm),
  )
  content((r_pos + E_len * 0.5, 0.28), text(size: 7.5pt, weight: "bold", fill: rgb("#b91c1c"), $arrow(E)$))

  // Đo khoảng cách đầu gần r - l/2 ở trên
  let y_near = 0.55
  line((half_l, 0.12), (half_l, y_near + 0.06), stroke: 0.4pt + luma(65%))
  line((r_pos, 0.12), (r_pos, y_near + 0.06), stroke: 0.4pt + luma(65%))
  line(
    (half_l, y_near), (r_pos, y_near),
    stroke: 0.5pt,
    mark: (start: "stealth", end: "stealth", fill: black, length: 0.11cm, width: 0.07cm),
  )
  content(((half_l + r_pos) / 2, y_near + 0.18), text(size: 6.5pt, [$r - l/2$]))

  // Đo khoảng cách đầu xa r + l/2 ở dưới (hạ thấp để không đè nhãn)
  let y_far = -0.72
  line((-half_l, -0.12), (-half_l, y_far - 0.06), stroke: 0.4pt + luma(65%))
  line((r_pos, -0.12), (r_pos, y_far - 0.06), stroke: 0.4pt + luma(65%))
  line(
    (-half_l, y_far), (r_pos, y_far),
    stroke: 0.5pt,
    mark: (start: "stealth", end: "stealth", fill: black, length: 0.12cm, width: 0.07cm),
  )
  content(((-half_l + r_pos) / 2, y_far - 0.2), text(size: 6.5pt, [$r + l/2$]))
})

// --------------------------------------------------------------------------
// Bài 1.16: Bán cầu tích điện đều mật độ sigma và quả cầu treo ở tâm
// --------------------------------------------------------------------------
#let ve-de-ban-cau-1-16 = canvas(length: 1cm, {
  import draw: *

  let R = 1.9
  let b_e = 0.42

  // Nền mặt cong bán cầu (nửa trên)
  line(
    ..range(0, 181, step: 2).map(deg => (R * calc.cos(deg * 1deg), R * calc.sin(deg * 1deg))),
    close: true,
    fill: rgb("#f8fafc"),
    stroke: none,
  )

  // Vòm bán cầu phía trên (nửa đường tròn)
  line(
    ..range(0, 181, step: 2).map(deg => (R * calc.cos(deg * 1deg), R * calc.sin(deg * 1deg))),
    stroke: 1.1pt + rgb("#334155"),
  )

  // Đáy elip: nửa sau nét đứt (0 đến 180 độ), nửa trước nét liền (180 đến 360 độ)
  line(
    ..range(0, 181, step: 4).map(deg => (R * calc.cos(deg * 1deg), b_e * calc.sin(deg * 1deg))),
    stroke: (paint: luma(60%), thickness: 0.65pt, dash: "dashed"),
  )
  line(
    ..range(180, 361, step: 4).map(deg => (R * calc.cos(deg * 1deg), b_e * calc.sin(deg * 1deg))),
    stroke: 1.1pt + rgb("#334155"),
  )

  // Sợi dây tơ treo thẳng đứng từ đỉnh (0, R) xuống tâm đáy (0, 0)
  line((0, R), (0, 0), stroke: 0.85pt + rgb("#0f172a"))
  content((-0.22, R * 0.55), text(size: 7.5pt, fill: rgb("#0f172a"), $R$))

  // Đỉnh treo
  circle((0, R), radius: 0.045, fill: rgb("#0f172a"))

  // Quả cầu nhỏ tại tâm (0, 0)
  circle((0, 0), radius: 0.09, fill: black)
  content((0.45, 0.18), text(size: 7.5pt, weight: "bold", [$m, Q$]))

  // Mật độ điện tích mặt sigma > 0
  content((-R * 0.60, R * 0.65), text(size: 8pt, weight: "bold", fill: rgb("#c2410c"), $sigma > 0$))
  for (px, py) in ((-0.4, 1.6), (0.5, 1.55), (1.1, 1.05), (0.8, 0.45), (-0.8, 0.45)) {
    content((px, py), text(size: 6pt, weight: "bold", fill: rgb("#ea580c"), $+$))
  }

  // Bán kính R đáy
  line((0, 0), (-R, 0), stroke: (paint: luma(55%), thickness: 0.45pt, dash: "dotted"))
  content((-R * 0.5, 0.18), text(size: 6.5pt, fill: luma(35%), $R$))
})

// Bài 1.16: Lời giải - Vành cầu vi phân dq và sơ đồ lực T, Fe
#let ve-giai-ban-cau-1-16 = canvas(length: 1cm, {
  import draw: *

  let R = 1.9
  let b_e = 0.42

  // Vòm bán cầu (nửa đường tròn)
  line(
    ..range(0, 181, step: 2).map(deg => (R * calc.cos(deg * 1deg), R * calc.sin(deg * 1deg))),
    stroke: 0.9pt + rgb("#64748b"),
  )
  // Đáy elip
  line(
    ..range(0, 181, step: 4).map(deg => (R * calc.cos(deg * 1deg), b_e * calc.sin(deg * 1deg))),
    stroke: (paint: luma(65%), thickness: 0.5pt, dash: "dashed"),
  )
  line(
    ..range(180, 361, step: 4).map(deg => (R * calc.cos(deg * 1deg), b_e * calc.sin(deg * 1deg))),
    stroke: 0.9pt + rgb("#64748b"),
  )

  // Vành vi phân ở góc th = 42 độ từ đỉnh (0, R)
  let th_val = 42deg
  let z_val = R * calc.cos(th_val)
  let r_ring = R * calc.sin(th_val)
  let b_ring = b_e * (r_ring / R)

  // Vẽ vành vi phân (elip ngang tại z_val)
  line(
    ..range(0, 361, step: 6).map(deg => (r_ring * calc.cos(deg * 1deg), z_val + b_ring * calc.sin(deg * 1deg))),
    stroke: 1.4pt + rgb("#ea580c"),
    fill: rgb("#fed7aa").transparentize(60%),
  )
  content((r_ring + 0.55, z_val + 0.1), text(size: 6.5pt, fill: rgb("#c2410c"), weight: "bold", $dif q$))

  // Tia góc theta từ tâm (0, 0)
  line((0, 0), (r_ring, z_val), stroke: (paint: rgb("#ea580c"), thickness: 0.5pt, dash: "dashed"))
  line((0, 0), (-r_ring, z_val), stroke: (paint: rgb("#ea580c"), thickness: 0.5pt, dash: "dashed"))

  // Trục thẳng đứng
  line((0, -1.1), (0, R + 0.3), stroke: 0.5pt + luma(55%), mark: (end: "stealth", fill: luma(55%), length: 0.12cm, width: 0.08cm))
  content((0.15, R + 0.35), text(size: 6.5pt, fill: luma(40%), $z$))

  // Góc theta tại tâm
  let r_th = 0.55
  line(
    ..range(0, 15, step: 2).map(deg => {
      let a = 90deg - th_val * (deg / 14.0)
      (r_th * calc.cos(a), r_th * calc.sin(a))
    }),
    stroke: 0.45pt + rgb("#c2410c"),
  )
  content((0.2, 0.72), text(size: 6pt, fill: rgb("#c2410c"), $theta$))

  // Quả cầu tại tâm
  circle((0, 0), radius: 0.08, fill: black)

  // Vector lực điện Fe hướng thẳng đứng xuống dưới
  let f_len = 0.95
  line(
    (0, 0), (0, -f_len),
    stroke: (paint: rgb("#ef4444"), thickness: 1.6pt),
    mark: (end: "stealth", fill: rgb("#ef4444"), length: 0.15cm, width: 0.1cm, inset: 0.03cm),
  )
  content((0.95, -f_len * 0.85), text(size: 7.5pt, weight: "bold", fill: rgb("#b91c1c"), $arrow(F)_e = Q arrow(E)$))

  // Vector lực căng dây T hướng thẳng đứng lên trên
  line(
    (0, 0), (0, f_len),
    stroke: (paint: rgb("#2563eb"), thickness: 1.6pt),
    mark: (end: "stealth", fill: rgb("#2563eb"), length: 0.15cm, width: 0.1cm, inset: 0.03cm),
  )
  content((-0.38, f_len * 0.60), text(size: 7.5pt, weight: "bold", fill: rgb("#1d4ed8"), $arrow(T)$))
})

// --------------------------------------------------------------------------
// Bài 1.17: Thanh thẳng dài l trên trục x và điểm P trên trục y
// --------------------------------------------------------------------------
#let ve-de-thanh-1-17 = canvas(length: 1cm, {
  import draw: *

  let x1_val = 1.0
  let x2_val = 2.9
  let y_P = 2.1

  // Trục Ox, Oy
  line((-0.4, 0), (x2_val + 0.8, 0), stroke: 0.6pt + luma(50%), mark: (end: "stealth", fill: luma(50%), length: 0.15cm, width: 0.1cm))
  line((0, -0.4), (0, y_P + 0.8), stroke: 0.6pt + luma(50%), mark: (end: "stealth", fill: luma(50%), length: 0.15cm, width: 0.1cm))
  content((x2_val + 0.85, 0), text(size: 7.5pt, fill: luma(30%), $x$), anchor: "west")
  content((0, y_P + 0.85), text(size: 7.5pt, fill: luma(30%), $y$), anchor: "south")
  content((-0.18, -0.2), text(size: 7pt, fill: luma(40%), $O$))

  // Thanh tích điện từ x1 đến x2
  rect((x1_val, -0.09), (x2_val, 0.09), fill: rgb("#fed7aa"), stroke: 0.7pt + rgb("#ea580c"), radius: 1pt)
  for x in (1.3, 1.8, 2.3, 2.7) {
    content((x, 0), text(size: 6pt, weight: "bold", fill: rgb("#c2410c"), $+$))
  }
  content(((x1_val + x2_val) / 2, 0.28), text(size: 7.5pt, fill: rgb("#c2410c"), weight: "bold", [$lambda, Q$]))

  // Điểm P tại (0, y_P)
  circle((0, y_P), radius: 0.06, fill: black)
  content((-0.28, y_P), text(size: 8pt, weight: "bold", $P$))

  // Đường nét đứt nối P đến x1 và x2
  line((0, y_P), (x1_val, 0), stroke: (paint: luma(60%), thickness: 0.5pt, dash: "dashed"))
  line((0, y_P), (x2_val, 0), stroke: (paint: luma(60%), thickness: 0.5pt, dash: "dashed"))

  // Tọa độ x1, x2 trên trục (lệch sang bên để không bị đường gióng đè)
  content((x1_val - 0.22, -0.22), text(size: 6.5pt, fill: luma(35%), $x_1$))
  content((x2_val + 0.22, -0.22), text(size: 6.5pt, fill: luma(35%), $x_2$))

  // Góc theta1 và theta2 tại P (so với trục -y)
  let a1 = calc.atan2(x1_val, y_P)
  let a2 = calc.atan2(x2_val, y_P)
  let r_th1 = 0.55
  let r_th2 = 0.8
  line(
    ..range(0, 15, step: 2).map(deg => {
      let a = -90deg + a1 * (deg / 14.0)
      (r_th1 * calc.cos(a), y_P + r_th1 * calc.sin(a))
    }),
    stroke: 0.45pt + rgb("#0284c7"),
  )
  content((0.10, y_P - 0.38), text(size: 6pt, fill: rgb("#0369a1"), $theta_1$))

  line(
    ..range(0, 15, step: 2).map(deg => {
      let a = -90deg + a2 * (deg / 14.0)
      (r_th2 * calc.cos(a), y_P + r_th2 * calc.sin(a))
    }),
    stroke: 0.45pt + rgb("#0284c7"),
  )
  content((0.40, y_P - 0.60), text(size: 6pt, fill: rgb("#0369a1"), $theta_2$))

  // Đo chiều dài l dưới thanh
  let y_dim = -0.55
  line((x1_val, -0.15), (x1_val, y_dim - 0.06), stroke: 0.4pt + luma(65%))
  line((x2_val, -0.15), (x2_val, y_dim - 0.06), stroke: 0.4pt + luma(65%))
  line(
    (x1_val, y_dim), (x2_val, y_dim),
    stroke: 0.5pt,
    mark: (start: "stealth", end: "stealth", fill: black, length: 0.11cm, width: 0.07cm),
  )
  content(((x1_val + x2_val) / 2, y_dim - 0.18), text(size: 6.5pt, $l$))

  // Đo khoảng cách y trên trục
  content((-0.28, y_P * 0.5), text(size: 7pt, fill: luma(35%), $y$))
})

// Bài 1.17: Lời giải - Phân tích phần tử dq và các thành phần dEx, dEy tại P
#let ve-giai-thanh-1-17 = canvas(length: 1cm, {
  import draw: *

  let x1_val = 0.9
  let x2_val = 2.8
  let y_P = 2.1
  let x_el = 1.8

  // Trục Ox, Oy
  line((-0.3, 0), (x2_val + 0.7, 0), stroke: 0.6pt + luma(50%), mark: (end: "stealth", fill: luma(50%), length: 0.14cm, width: 0.09cm))
  line((0, -0.3), (0, y_P + 1.2), stroke: 0.6pt + luma(50%), mark: (end: "stealth", fill: luma(50%), length: 0.14cm, width: 0.09cm))
  content((x2_val + 0.75, 0), text(size: 7.5pt, fill: luma(30%), $x$), anchor: "west")
  content((0, y_P + 1.25), text(size: 7.5pt, fill: luma(30%), $y$), anchor: "south")
  content((-0.18, -0.2), text(size: 7pt, fill: luma(40%), $O$))

  // Thanh tích điện từ x1 đến x2
  rect((x1_val, -0.08), (x2_val, 0.08), fill: rgb("#fed7aa"), stroke: 0.7pt + rgb("#ea580c"), radius: 1pt)

  // Phần tử vi phân dq tại x_el
  rect((x_el - 0.1, -0.09), (x_el + 0.1, 0.09), fill: rgb("#f97316"), stroke: none)
  content((x_el, -0.28), text(size: 6.5pt, fill: rgb("#c2410c"), weight: "bold", $dif q$))
  content((x_el, 0.22), text(size: 6pt, fill: luma(40%), $x$))

  // Điểm P tại (0, y_P)
  circle((0, y_P), radius: 0.06, fill: black)
  content((0.2, y_P - 0.12), text(size: 7.5pt, weight: "bold", $P$))

  // Đoạn nối từ dq đến P
  line((x_el, 0), (0, y_P), stroke: (paint: luma(60%), thickness: 0.45pt, dash: "dashed"))
  content((x_el * 0.55 + 0.15, y_P * 0.45), text(size: 6pt, fill: luma(35%), $r$))

  // Góc theta tại P giữa tia nối và trục -y
  let th_el = calc.atan2(x_el, y_P)
  let r_th = 0.5
  line(
    ..range(0, 15, step: 2).map(deg => {
      let a = -90deg + th_el * (deg / 14.0)
      (r_th * calc.cos(a), y_P + r_th * calc.sin(a))
    }),
    stroke: 0.45pt + rgb("#0284c7"),
  )
  content((0.2, y_P - 0.38), text(size: 6pt, fill: rgb("#0369a1"), $theta$))

  // Vector dE tại P hướng từ dq qua P ra xa (hướng chếch lên sang trái)
  let de_len = 1.3
  let dex = -de_len * calc.sin(th_el)
  let dey = de_len * calc.cos(th_el)
  line(
    (0, y_P), (dex, y_P + dey),
    stroke: (paint: rgb("#ef4444"), thickness: 1.4pt),
    mark: (end: "stealth", fill: rgb("#ef4444"), length: 0.15cm, width: 0.1cm, inset: 0.03cm),
  )
  content((dex - 0.25, y_P + dey + 0.08), text(size: 7.5pt, fill: rgb("#b91c1c"), $dif arrow(E)$))

  // Góc theta đối đỉnh giữa dE và trục +y
  line(
    ..range(0, 15, step: 2).map(deg => {
      let a = 90deg + th_el * (deg / 14.0)
      (r_th * calc.cos(a), y_P + r_th * calc.sin(a))
    }),
    stroke: 0.45pt + rgb("#b91c1c"),
  )
  content((-0.2, y_P + 0.38), text(size: 6pt, fill: rgb("#b91c1c"), $theta$))

  // Các thành phần dEx (sang trái) và dEy (lên trên)
  line(
    (0, y_P), (dex, y_P),
    stroke: (paint: rgb("#ef4444"), thickness: 1.1pt),
    mark: (end: "stealth", fill: rgb("#ef4444"), length: 0.12cm, width: 0.08cm, inset: 0.02cm),
  )
  line(
    (0, y_P), (0, y_P + dey),
    stroke: (paint: rgb("#ef4444"), thickness: 1.1pt),
    mark: (end: "stealth", fill: rgb("#ef4444"), length: 0.12cm, width: 0.08cm, inset: 0.02cm),
  )
  line((dex, y_P), (dex, y_P + dey), stroke: 0.4pt + luma(65%))
  line((0, y_P + dey), (dex, y_P + dey), stroke: 0.4pt + luma(65%))
  content((dex * 0.5, y_P - 0.24), text(size: 6.5pt, fill: rgb("#b91c1c"), $dif arrow(E)_x$))
  content((0.38, y_P + dey * 0.55), text(size: 6.5pt, fill: rgb("#b91c1c"), $dif arrow(E)_y$))
})

// --------------------------------------------------------------------------
// Bài 1.18: Hai quả cầu nhỏ treo cùng điểm chung tích điện âm đẩy nhau
// --------------------------------------------------------------------------
#let ve-de-hai-cau-1-18 = canvas(length: 1cm, {
  import draw: *

  let L = 2.6
  let th = 25deg
  let y_O = 3.0
  let x_ball = L * calc.sin(th)
  let y_ball = y_O - L * calc.cos(th)
  let r_ball = 0.14

  // Giá treo ngang phía trên có vạch chéo cố định
  line((-1.2, y_O), (1.2, y_O), stroke: 0.8pt + black)
  for x in range(-5, 6) {
    let px = x * 0.2
    line((px, y_O), (px + 0.14, y_O + 0.18), stroke: 0.45pt + luma(40%))
  }

  // Điểm treo chung O
  circle((0, y_O), radius: 0.045, fill: black)

  // Trục thẳng đứng đối xứng nét đứt
  line((0, y_O), (0, y_ball - 0.4), stroke: (paint: luma(55%), thickness: 0.5pt, dash: "dashed"))

  // Hai sợi dây tơ dài L
  line((0, y_O), (-x_ball, y_ball), stroke: 0.6pt + luma(30%))
  line((0, y_O), (x_ball, y_ball), stroke: 0.6pt + luma(30%))

  // Nhãn chiều dài L trên dây
  content((-x_ball * 0.55 - 0.18, (y_O + y_ball) * 0.5), text(size: 7.5pt, fill: luma(25%), $L$))
  content((x_ball * 0.55 + 0.18, (y_O + y_ball) * 0.5), text(size: 7.5pt, fill: luma(25%), $L$))

  // Cung đo góc theta so với phương đứng tại đỉnh O
  let r_th = 0.85
  line(
    ..range(0, 15, step: 2).map(deg => {
      let a = -90deg - th * (deg / 14.0)
      (r_th * calc.cos(a), y_O + r_th * calc.sin(a))
    }),
    stroke: 0.45pt + rgb("#0284c7"),
  )
  content((-0.2, y_O - 0.65), text(size: 6.5pt, fill: rgb("#0369a1"), $theta$))

  line(
    ..range(0, 15, step: 2).map(deg => {
      let a = -90deg + th * (deg / 14.0)
      (r_th * calc.cos(a), y_O + r_th * calc.sin(a))
    }),
    stroke: 0.45pt + rgb("#0284c7"),
  )
  content((0.2, y_O - 0.65), text(size: 6.5pt, fill: rgb("#0369a1"), $theta$))

  // Quả cầu bên trái: q1 = q, m
  circle((-x_ball, y_ball), radius: r_ball, fill: rgb("#dbeafe"), stroke: 0.8pt + rgb("#2563eb"))
  content((-x_ball, y_ball), text(size: 7.5pt, weight: "bold", fill: rgb("#1d4ed8"), $-$, baseline: -0.5pt))
  content((-x_ball - 0.36, y_ball + 0.12), text(size: 7pt, fill: rgb("#1e40af"), weight: "bold", $q_1$))
  content((-x_ball - 0.36, y_ball - 0.16), text(size: 6.5pt, fill: luma(30%), $m$))

  // Quả cầu bên phải: q2 = q, m
  circle((x_ball, y_ball), radius: r_ball, fill: rgb("#dbeafe"), stroke: 0.8pt + rgb("#2563eb"))
  content((x_ball, y_ball), text(size: 7.5pt, weight: "bold", fill: rgb("#1d4ed8"), $-$, baseline: -0.5pt))
  content((x_ball + 0.36, y_ball + 0.12), text(size: 7pt, fill: rgb("#1e40af"), weight: "bold", $q_2$))
  content((x_ball + 0.36, y_ball - 0.16), text(size: 6.5pt, fill: luma(30%), $m$))

  // Khoảng cách r giữa 2 quả cầu
  let y_dim = y_ball - 0.55
  line((-x_ball, y_ball - 0.15), (-x_ball, y_dim - 0.06), stroke: 0.4pt + luma(65%))
  line((x_ball, y_ball - 0.15), (x_ball, y_dim - 0.06), stroke: 0.4pt + luma(65%))
  line(
    (-x_ball, y_dim), (x_ball, y_dim),
    stroke: 0.5pt,
    mark: (start: "stealth", end: "stealth", fill: black, length: 0.11cm, width: 0.07cm),
  )
  content((0, y_dim - 0.18), text(size: 6.5pt, $r$))
})

#let ve-hai-cau-1-18 = ve-de-hai-cau-1-18

// Bài 1.18: Lời giải - Sơ đồ hệ lực tác dụng lên mỗi quả cầu (đối xứng)
#let ve-giai-hai-cau-1-18 = canvas(length: 1cm, {
  import draw: *

  let L = 2.6
  let th = 25deg
  let y_O = 3.0
  let x_ball = L * calc.sin(th)
  let y_ball = y_O - L * calc.cos(th)
  let r_ball = 0.12

  // Giá treo
  line((-1.2, y_O), (1.2, y_O), stroke: 0.7pt + black)
  for x in range(-5, 6) {
    let px = x * 0.2
    line((px, y_O), (px + 0.12, y_O + 0.15), stroke: 0.4pt + luma(40%))
  }

  // Trục đối xứng nét đứt
  line((0, y_O), (0, y_ball - 1.6), stroke: (paint: luma(55%), thickness: 0.45pt, dash: "dashed"))

  // Hai sợi dây nét mảnh
  line((0, y_O), (-x_ball, y_ball), stroke: 0.45pt + luma(50%))
  line((0, y_O), (x_ball, y_ball), stroke: 0.45pt + luma(50%))

  // Góc theta tại đỉnh
  let r_th = 0.8
  line(
    ..range(0, 15, step: 2).map(deg => {
      let a = -90deg + th * (deg / 14.0)
      (r_th * calc.cos(a), y_O + r_th * calc.sin(a))
    }),
    stroke: 0.4pt + rgb("#0284c7"),
  )
  content((0.2, y_O - 0.6), text(size: 6.5pt, fill: rgb("#0369a1"), $theta$))

  // Độ lớn các vector lực:
  let f_mg = 1.3
  let f_e = f_mg * calc.tan(th)
  let f_t = f_mg / calc.cos(th)

  // --- QUẢ CẦU BÊN PHẢI (tại x_ball, y_ball) ---
  // Trọng lực P = mg hướng xuống (nhãn đặt bên trái vector để không đè đường chéo nét đứt)
  line(
    (x_ball, y_ball), (x_ball, y_ball - f_mg),
    stroke: (paint: rgb("#16a34a"), thickness: 1.2pt),
    mark: (end: "stealth", fill: rgb("#16a34a"), length: 0.13cm, width: 0.09cm, inset: 0.02cm),
  )
  content((x_ball - 0.35, y_ball - f_mg * 0.7), text(size: 7.5pt, fill: rgb("#15803d"), $m arrow(g)$))

  // Lực tĩnh điện Fe hướng sang phải
  line(
    (x_ball, y_ball), (x_ball + f_e, y_ball),
    stroke: (paint: rgb("#ef4444"), thickness: 1.2pt),
    mark: (end: "stealth", fill: rgb("#ef4444"), length: 0.13cm, width: 0.09cm, inset: 0.02cm),
  )
  content((x_ball + f_e + 0.32, y_ball + 0.15), text(size: 7.5pt, fill: rgb("#b91c1c"), $arrow(F)_e$))

  // Lực căng dây T hướng dọc dây về điểm treo
  let tx = -f_t * calc.sin(th)
  let ty = f_t * calc.cos(th)
  line(
    (x_ball, y_ball), (x_ball + tx, y_ball + ty),
    stroke: (paint: rgb("#2563eb"), thickness: 1.3pt),
    mark: (end: "stealth", fill: rgb("#2563eb"), length: 0.14cm, width: 0.09cm, inset: 0.03cm),
  )
  content((x_ball + tx * 0.5 - 0.25, y_ball + ty * 0.5 + 0.1), text(size: 7.5pt, fill: rgb("#1d4ed8"), $arrow(T)$))

  // Hình chữ nhật lực
  line((x_ball + f_e, y_ball), (x_ball + f_e, y_ball - f_mg), stroke: 0.4pt + luma(65%))
  line((x_ball, y_ball - f_mg), (x_ball + f_e, y_ball - f_mg), stroke: 0.4pt + luma(65%))
  line(
    (x_ball, y_ball), (x_ball + f_e, y_ball - f_mg),
    stroke: (paint: luma(45%), thickness: 0.6pt, dash: "dashed"),
    mark: (end: "stealth", fill: luma(45%), length: 0.11cm, width: 0.07cm),
  )

  // --- QUẢ CẦU BÊN TRÁI (tại -x_ball, y_ball) ---
  // Trọng lực P1 hướng xuống
  line(
    (-x_ball, y_ball), (-x_ball, y_ball - f_mg),
    stroke: (paint: rgb("#16a34a"), thickness: 1.2pt),
    mark: (end: "stealth", fill: rgb("#16a34a"), length: 0.13cm, width: 0.09cm, inset: 0.02cm),
  )
  content((-x_ball - 0.38, y_ball - f_mg * 0.7), text(size: 7.5pt, fill: rgb("#15803d"), $m arrow(g)$))

  // Lực tĩnh điện Fe hướng sang trái
  line(
    (-x_ball, y_ball), (-x_ball - f_e, y_ball),
    stroke: (paint: rgb("#ef4444"), thickness: 1.2pt),
    mark: (end: "stealth", fill: rgb("#ef4444"), length: 0.13cm, width: 0.09cm, inset: 0.02cm),
  )
  content((-x_ball - f_e - 0.32, y_ball + 0.15), text(size: 7.5pt, fill: rgb("#b91c1c"), $arrow(F)_e'$))

  // Lực căng dây T' hướng dọc dây về điểm treo
  line(
    (-x_ball, y_ball), (-x_ball - tx, y_ball + ty),
    stroke: (paint: rgb("#2563eb"), thickness: 1.3pt),
    mark: (end: "stealth", fill: rgb("#2563eb"), length: 0.14cm, width: 0.09cm, inset: 0.03cm),
  )
  content((-x_ball - tx * 0.5 + 0.25, y_ball + ty * 0.5 + 0.1), text(size: 7.5pt, fill: rgb("#1d4ed8"), $arrow(T)'$))

  // Quả cầu
  circle((-x_ball, y_ball), radius: r_ball, fill: rgb("#dbeafe"), stroke: 0.8pt + rgb("#2563eb"))
  content((-x_ball, y_ball), text(size: 6.5pt, weight: "bold", fill: rgb("#1d4ed8"), $-$, baseline: -0.5pt))

  circle((x_ball, y_ball), radius: r_ball, fill: rgb("#dbeafe"), stroke: 0.8pt + rgb("#2563eb"))
  content((x_ball, y_ball), text(size: 6.5pt, weight: "bold", fill: rgb("#1d4ed8"), $-$, baseline: -0.5pt))
})

#let ve-luc-cau-1-18 = ve-giai-hai-cau-1-18

// --------------------------------------------------------------------------
// Bài 1.19: Hai quả cầu treo bằng dây trong không khí và trong chất lỏng
// --------------------------------------------------------------------------
#let ve-de-hai-cau-1-19 = canvas(length: 1cm, {
  import draw: *

  let L = 1.85
  let y_top = 2.4

  // --- TRẠNG THÁI 1: TRONG KHÔNG KHÍ (bên trái, tâm x = -1.15) ---
  let x_c1 = -1.15
  let th1 = 30deg
  let d1 = L * calc.sin(th1)
  let y_b1 = y_top - L * calc.cos(th1)

  // Giá treo 1
  line((x_c1 - 0.75, y_top), (x_c1 + 0.75, y_top), stroke: 0.65pt + black)
  for i in range(-3, 4) {
    line((x_c1 + i * 0.18, y_top), (x_c1 + i * 0.18 + 0.1, y_top + 0.12), stroke: 0.35pt + luma(40%))
  }
  circle((x_c1, y_top), radius: 0.035, fill: black)
  line((x_c1, y_top), (x_c1, y_b1 - 0.2), stroke: (paint: luma(55%), thickness: 0.4pt, dash: "dashed"))

  // Dây treo
  line((x_c1, y_top), (x_c1 - d1, y_b1), stroke: 0.5pt + luma(30%))
  line((x_c1, y_top), (x_c1 + d1, y_b1), stroke: 0.5pt + luma(30%))

  // Góc alpha1
  let r_a1 = 0.55
  line(
    ..range(0, 19, step: 2).map(deg => {
      let a = -90deg - th1 + 2 * th1 * (deg / 18.0)
      (x_c1 + r_a1 * calc.cos(a), y_top + r_a1 * calc.sin(a))
    }),
    stroke: 0.4pt + rgb("#ea580c"),
  )
  content((x_c1, y_top - 0.72), box(fill: white, inset: 1pt, text(size: 6pt, fill: rgb("#c2410c"), $alpha_1$)))

  // Quả cầu 1
  circle((x_c1 - d1, y_b1), radius: 0.1, fill: rgb("#fed7aa"), stroke: 0.65pt + rgb("#ea580c"))
  circle((x_c1 + d1, y_b1), radius: 0.1, fill: rgb("#fed7aa"), stroke: 0.65pt + rgb("#ea580c"))
  content((x_c1, y_b1 - 0.3), text(size: 6pt, fill: luma(30%), [Không khí]))

  // --- TRẠNG THÁI 2: TRONG CHẤT LỎNG (bên phải, tâm x = 1.15) ---
  let x_c2 = 1.15
  let th2 = 23deg
  let d2 = L * calc.sin(th2)
  let y_b2 = y_top - L * calc.cos(th2)

  // Bình chứa chất lỏng
  rect((x_c2 - 0.95, y_b2 - 0.45), (x_c2 + 0.95, y_top - 0.35), fill: rgb("#f0f9ff"), stroke: 0.5pt + rgb("#38bdf8"), radius: 1.5pt)
  line((x_c2 - 0.95, y_top - 0.35), (x_c2 + 0.95, y_top - 0.35), stroke: 0.6pt + rgb("#0284c7"))

  // Giá treo 2
  line((x_c2 - 0.75, y_top), (x_c2 + 0.75, y_top), stroke: 0.65pt + black)
  for i in range(-3, 4) {
    line((x_c2 + i * 0.18, y_top), (x_c2 + i * 0.18 + 0.1, y_top + 0.12), stroke: 0.35pt + luma(40%))
  }
  circle((x_c2, y_top), radius: 0.035, fill: black)
  line((x_c2, y_top), (x_c2, y_b2 - 0.2), stroke: (paint: luma(55%), thickness: 0.4pt, dash: "dashed"))

  // Dây treo
  line((x_c2, y_top), (x_c2 - d2, y_b2), stroke: 0.5pt + luma(30%))
  line((x_c2, y_top), (x_c2 + d2, y_b2), stroke: 0.5pt + luma(30%))

  // Góc alpha2
  let r_a2 = 0.55
  line(
    ..range(0, 19, step: 2).map(deg => {
      let a = -90deg - th2 + 2 * th2 * (deg / 18.0)
      (x_c2 + r_a2 * calc.cos(a), y_top + r_a2 * calc.sin(a))
    }),
    stroke: 0.4pt + rgb("#0284c7"),
  )
  content((x_c2, y_top - 0.72), box(fill: rgb("#f0f9ff"), inset: 1pt, text(size: 6pt, fill: rgb("#0369a1"), $alpha_2$)))

  // Quả cầu 2 chìm trong chất lỏng
  circle((x_c2 - d2, y_b2), radius: 0.1, fill: rgb("#fed7aa"), stroke: 0.65pt + rgb("#ea580c"))
  circle((x_c2 + d2, y_b2), radius: 0.1, fill: rgb("#fed7aa"), stroke: 0.65pt + rgb("#ea580c"))
  content((x_c2, y_b2 - 0.3), text(size: 6pt, fill: rgb("#0369a1"), [Chất lỏng ($epsilon$)]))
})

// Bài 1.19: Lời giải - Phân tích lực tác dụng lên quả cầu trong chất lỏng
#let ve-giai-hai-cau-1-19 = canvas(length: 1cm, {
  import draw: *

  let th = 25deg
  let r_ball = 0.14
  let x_pos = 0.0
  let y_pos = 0.0

  // Dây treo chếch lên trái
  line((x_pos, y_pos), (-1.3, 2.6), stroke: (paint: luma(50%), thickness: 0.5pt, dash: "dashed"))
  content((-1.35, 2.75), text(size: 6.5pt, fill: luma(40%), [Điểm treo]))

  // Trục thẳng đứng nét đứt qua quả cầu
  line((x_pos, y_pos + 1.1), (x_pos, y_pos - 2.1), stroke: (paint: luma(60%), thickness: 0.45pt, dash: "dashed"))

  // Góc theta2
  let r_th = 0.85
  line(
    ..range(0, 15, step: 2).map(deg => {
      let a = 90deg + th * (deg / 14.0)
      (x_pos + r_th * calc.cos(a), y_pos + r_th * calc.sin(a))
    }),
    stroke: 0.45pt + rgb("#0284c7"),
  )
  content((x_pos - 0.26, y_pos + 0.6), text(size: 6.5pt, fill: rgb("#0369a1"), $theta_2$))

  // Các vector lực:
  let f_P = 1.8
  let f_FA = 0.6
  let f_Pk = f_P - f_FA
  let f_F2 = f_Pk * calc.tan(th)
  let f_T2 = f_Pk / calc.cos(th)

  // 1. Trọng lực P = rho1 V g
  line(
    (x_pos, y_pos), (x_pos, y_pos - f_P),
    stroke: (paint: rgb("#16a34a"), thickness: 1.1pt),
    mark: (end: "stealth", fill: rgb("#16a34a"), length: 0.13cm, width: 0.08cm, inset: 0.02cm),
  )
  content((x_pos + 0.38, y_pos - f_P + 0.20), text(size: 7.5pt, fill: rgb("#15803d"), $arrow(P)$))

  // 2. Lực đẩy Archimedes FA
  line(
    (x_pos, y_pos), (x_pos, y_pos + f_FA),
    stroke: (paint: rgb("#0284c7"), thickness: 1.1pt),
    mark: (end: "stealth", fill: rgb("#0284c7"), length: 0.13cm, width: 0.08cm, inset: 0.02cm),
  )
  content((x_pos + 0.38, y_pos + f_FA * 0.7), text(size: 7.5pt, fill: rgb("#0369a1"), $arrow(F)_A$))

  // 3. Trọng lượng biểu kiến P' = P - FA
  line(
    (x_pos - 0.08, y_pos), (x_pos - 0.08, y_pos - f_Pk),
    stroke: (paint: rgb("#047857"), thickness: 1.4pt),
    mark: (end: "stealth", fill: rgb("#047857"), length: 0.13cm, width: 0.09cm, inset: 0.02cm),
  )
  content((x_pos - 0.45, y_pos - f_Pk * 0.5), text(size: 7.5pt, fill: rgb("#047857"), weight: "bold", $arrow(P)'$))

  // 4. Lực điện Coulomb F2
  line(
    (x_pos, y_pos), (x_pos + f_F2, y_pos),
    stroke: (paint: rgb("#ef4444"), thickness: 1.2pt),
    mark: (end: "stealth", fill: rgb("#ef4444"), length: 0.13cm, width: 0.08cm, inset: 0.02cm),
  )
  content((x_pos + f_F2 + 0.35, y_pos + 0.05), text(size: 7.5pt, fill: rgb("#b91c1c"), $arrow(F)_2$))

  // 5. Lực căng dây T2
  let t2x = -f_T2 * calc.sin(th)
  let t2y = f_T2 * calc.cos(th)
  line(
    (x_pos, y_pos), (x_pos + t2x, y_pos + t2y),
    stroke: (paint: rgb("#2563eb"), thickness: 1.3pt),
    mark: (end: "stealth", fill: rgb("#2563eb"), length: 0.14cm, width: 0.09cm, inset: 0.03cm),
  )
  content((x_pos + t2x - 0.28, y_pos + t2y * 0.6), text(size: 7.5pt, fill: rgb("#1d4ed8"), $arrow(T)_2$))

  // Đường gióng
  line((x_pos + f_F2, y_pos), (x_pos + f_F2, y_pos - f_Pk), stroke: 0.4pt + luma(65%))
  line((x_pos, y_pos - f_Pk), (x_pos + f_F2, y_pos - f_Pk), stroke: 0.4pt + luma(65%))
  line(
    (x_pos, y_pos), (x_pos + f_F2, y_pos - f_Pk),
    stroke: (paint: luma(45%), thickness: 0.6pt, dash: "dashed"),
    mark: (end: "stealth", fill: luma(45%), length: 0.11cm, width: 0.07cm),
  )

  // Quả cầu
  circle((x_pos, y_pos), radius: r_ball, fill: rgb("#fed7aa"), stroke: 0.8pt + rgb("#ea580c"))
})

// --------------------------------------------------------------------------
// Bài 1.20: Mặt cầu Gauss trong không gian tích điện khối phi tuyến
// --------------------------------------------------------------------------
// Bài 1.20: Phân bố điện tích đối xứng cầu rho(s) và mô hình lớp vỏ vi phân
// --------------------------------------------------------------------------
#let ve-de-mat-cau-1-20 = canvas(length: 1cm, {
  import draw: *

  let R_max = 2.0
  let r_val = 1.45   // Bán kính điểm khảo sát P
  let s_val = 0.85   // Bán kính lớp vỏ vi phân bên trong
  let ds_val = 0.16

  // Không gian phân bố điện tích đối xứng cầu: các lớp mật độ giảm dần từ tâm
  circle((0, 0), radius: R_max, fill: rgb("#fff7ed"), stroke: (paint: rgb("#fdba74"), thickness: 0.5pt, dash: "dotted"))
  circle((0, 0), radius: R_max * 0.75, fill: rgb("#ffedd5"), stroke: none)
  circle((0, 0), radius: R_max * 0.5, fill: rgb("#fed7aa"), stroke: none)
  circle((0, 0), radius: R_max * 0.25, fill: rgb("#fbcfe8"), stroke: none)

  // Tâm O
  circle((0, 0), radius: 0.05, fill: black)
  content((-0.18, -0.18), text(size: 7.5pt, fill: luma(30%), $O$))

  // Lớp vỏ cầu vi phân bán kính s, bề dày ds ở s < r (vỏ gây trường tại P)
  circle((0, 0), radius: s_val, stroke: (paint: rgb("#ea580c"), thickness: 0.8pt, dash: "dashed"))
  circle((0, 0), radius: s_val + ds_val, stroke: (paint: rgb("#ea580c"), thickness: 0.8pt, dash: "dashed"))

  // Mũi tên đo bán kính s và bề dày ds của lớp vỏ (ở góc -38 độ)
  let ang_s = -38deg
  let xs = s_val * calc.cos(ang_s)
  let ys = s_val * calc.sin(ang_s)
  let xs2 = (s_val + ds_val) * calc.cos(ang_s)
  let ys2 = (s_val + ds_val) * calc.sin(ang_s)
  line((0, 0), (xs, ys), stroke: 0.65pt + rgb("#c2410c"), mark: (end: "stealth", fill: rgb("#c2410c"), length: 0.11cm, width: 0.07cm))
  content((xs * 0.5 + 0.14, ys * 0.5 - 0.12), text(size: 6.5pt, fill: rgb("#c2410c"), $s$))
  line((xs, ys), (xs2, ys2), stroke: 1.1pt + rgb("#ea580c"), mark: (both: true, fill: rgb("#ea580c"), length: 0.08cm, width: 0.05cm))
  content((xs2 + 0.22, ys2 - 0.08), text(size: 6pt, fill: rgb("#c2410c"), $dif s$))

  // Mặt cầu bán kính r qua điểm P (nét đứt mỏng màu lam)
  circle((0, 0), radius: r_val, stroke: (paint: rgb("#0284c7"), thickness: 0.7pt, dash: "dashed"))

  // Điểm khảo sát P(r) ở góc 35 độ
  let ang_p = 35deg
  let xp = r_val * calc.cos(ang_p)
  let yp = r_val * calc.sin(ang_p)
  line((0, 0), (xp, yp), stroke: 0.65pt + luma(40%), mark: (end: "stealth", fill: luma(40%), length: 0.11cm, width: 0.07cm))
  content((xp * 0.5 - 0.12, yp * 0.5 + 0.14), text(size: 7pt, fill: luma(25%), $r$))

  circle((xp, yp), radius: 0.05, fill: black)
  content((xp - 0.12, yp + 0.16), text(size: 7.5pt, weight: "bold", $P$))

  // Vector cường độ điện trường E(r) tại P hướng tâm ra ngoài
  let e_len = 1.15
  line(
    (xp, yp), (xp + e_len * calc.cos(ang_p), yp + e_len * calc.sin(ang_p)),
    stroke: (paint: rgb("#ef4444"), thickness: 1.4pt),
    mark: (end: "stealth", fill: rgb("#ef4444"), length: 0.15cm, width: 0.1cm, inset: 0.03cm),
  )
  content((xp + e_len * calc.cos(ang_p) + 0.25, yp + e_len * calc.sin(ang_p) + 0.08), text(size: 7.5pt, weight: "bold", fill: rgb("#b91c1c"), $arrow(E)(r)$))

  // Chú thích
  content((0, -R_max - 0.25), text(size: 6.5pt, fill: rgb("#c2410c"), $rho(s) = rho_0 e^(-alpha s^3)$))
  content((0, R_max + 0.25), text(size: 6.5pt, fill: rgb("#0369a1"), [Vỏ cầu $s < r$ gây trường tại $P$]))
})

#let ve-de-mat-gauss-1-20 = ve-de-mat-cau-1-20

// Bài 1.20: Lời giải - Đồ thị hàm cường độ điện trường E(r)
#let ve-giai-do-thi-1-20 = canvas(length: 1cm, {
  import draw: *

  let w = 3.6
  let h = 2.4

  // Trục tọa độ r và E
  line((-0.2, 0), (w + 0.6, 0), stroke: 0.6pt + luma(50%), mark: (end: "stealth", fill: luma(50%), length: 0.14cm, width: 0.09cm))
  line((0, -0.2), (0, h + 0.5), stroke: 0.6pt + luma(50%), mark: (end: "stealth", fill: luma(50%), length: 0.14cm, width: 0.09cm))
  content((w + 0.65, 0), text(size: 7.5pt, fill: luma(30%), $r$), anchor: "west")
  content((0, h + 0.55), text(size: 7.5pt, fill: luma(30%), $E(r)$), anchor: "south")
  content((-0.18, -0.18), text(size: 7pt, fill: luma(40%), $O$))

  // Đường cong E(r)
  let pts = (
    (0.0, 0.0), (0.2, 0.35), (0.4, 0.72), (0.6, 1.12), (0.8, 1.48),
    (1.0, 1.78), (1.2, 1.98), (1.4, 2.05), (1.6, 2.00), (1.8, 1.88),
    (2.0, 1.71), (2.3, 1.45), (2.6, 1.21), (3.0, 0.98), (3.4, 0.81), (3.8, 0.68)
  )
  line(..pts, stroke: (paint: rgb("#ef4444"), thickness: 1.3pt))

  // Đỉnh cực đại E_max
  let r_m = 1.4
  let e_m = 2.05
  line((r_m, 0), (r_m, e_m), stroke: (paint: luma(65%), thickness: 0.4pt, dash: "dashed"))
  line((0, e_m), (r_m, e_m), stroke: (paint: luma(65%), thickness: 0.4pt, dash: "dashed"))
  content((r_m, -0.22), text(size: 6.5pt, fill: luma(35%), $r_m$))
  content((-0.3, e_m), text(size: 6.5pt, fill: luma(35%), $E_("max")$))

  // Tiệm cận tuyến tính gần gốc
  line((0, 0), (1.1, 1.95), stroke: (paint: rgb("#0284c7"), thickness: 0.7pt, dash: "dashed"))
  content((0.85, 2.2), text(size: 6pt, fill: rgb("#0369a1"), $alpha r^3 << 1: E prop r$))

  // Tiệm cận ở xa (chuyển lên góc trên thoáng để không đè đường cong đỏ)
  let pts_far = (
    (1.8, 2.15), (2.2, 1.58), (2.6, 1.25), (3.0, 1.02), (3.5, 0.82), (3.9, 0.69)
  )
  line(..pts_far, stroke: (paint: rgb("#16a34a"), thickness: 0.7pt, dash: "dashed"))
  content((3.1, 1.65), text(size: 6pt, fill: rgb("#15803d"), $alpha r^3 >> 1: E prop 1/r^2$))
})

// --------------------------------------------------------------------------
// Bài 1.21: Quả cầu có hốc rỗng mang điện
// --------------------------------------------------------------------------
// Hình đề bài 1.21: Quả cầu lớn tích điện mật độ rho, bên trong có hốc rỗng dịch tâm a
#let ve-de-cau-hoc-1-21 = canvas({
  import draw: *

  // Quả cầu lớn mang điện bán kính R = 1.8
  circle((0, 0), radius: 1.8, fill: rgb("#f0fdf4"), stroke: (paint: rgb("#16a34a"), thickness: 1.0pt))

  // Các dấu + phân bố trong phần điện tích
  let pluses = (
    (-1.2, 0.8), (-1.2, -0.6), (-0.7, -1.2), (-0.3, -1.4), (0.4, -1.4),
    (-0.8, 1.2), (-0.2, 1.4), (0.5, 1.4), (1.2, 1.1), (1.4, -0.7), (-1.4, 0.1)
  )
  for (px, py) in pluses {
    content((px, py), text(size: 7pt, fill: rgb("#22c55e"), weight: "bold", $+$))
  }

  // Hốc rỗng nhỏ tâm O'(0.70, 0.0), bán kính 0.75
  circle((0.70, 0.0), radius: 0.75, fill: white, stroke: (paint: rgb("#0ea5e9"), thickness: 1.0pt))

  // Vector dời tâm a từ O(0,0) đến O'(0.70, 0.0)
  line((0, 0), (0.70, 0.0), stroke: (paint: rgb("#dc2626"), thickness: 1.2pt), mark: (end: "stealth", fill: rgb("#dc2626"), length: 0.14cm, width: 0.08cm, inset: 0.02cm))
  content((0.35, 0.15), text(size: 7.5pt, fill: rgb("#dc2626"), weight: "bold", $arrow(a)$))

  // Tâm O và O'
  circle((0, 0), radius: 0.045, fill: black)
  content((-0.18, -0.16), text(size: 7.5pt, weight: "bold", $O$))

  circle((0.70, 0.0), radius: 0.045, fill: black)
  content((0.88, 0.15), text(size: 7.5pt, weight: "bold", $O'$))

  // Nhãn mật độ điện tích rho
  content((-1.0, 0.2), text(size: 8.5pt, fill: rgb("#15803d"), weight: "bold", $rho$))
  content((0.70, -0.28), text(size: 6.5pt, fill: rgb("#0284c7"), [Hốc rỗng]))
})

// Alias tương thích
#let ve-cau-hoc-1-21 = ve-de-cau-hoc-1-21

// Hình lời giải 1.21: Sơ đồ chồng chất điện trường đều bên trong hốc (có zoom phóng đại tại M)
#let ve-giai-cau-hoc-1-21 = canvas({
  import draw: *

  // ==========================================================================
  // PHẦN 1: HÌNH TỔNG THỂ BÊN TRÁI (Tam giác vector vị trí O - M - O')
  // ==========================================================================
  // Quả cầu lớn mang điện +rho, tâm O(0,0), bán kính R = 2.40
  circle((0, 0), radius: 2.40, stroke: (paint: luma(65%), thickness: 0.6pt, dash: "dashed"), fill: rgb("#fafafa"))
  content((-1.60, 1.60), text(size: 9pt, fill: luma(40%), weight: "bold", $+rho$))

  // Hốc rỗng tâm O'(0.90, 0.0), bán kính Rc = 1.35
  let o_prime = (0.90, 0.0)
  circle(o_prime, radius: 1.35, fill: white, stroke: (paint: rgb("#0284c7"), thickness: 1.1pt))

  // Vector dời tâm a = OO' (nằm ngang)
  line((0, 0), o_prime, stroke: (paint: rgb("#1e293b"), thickness: 1.3pt), mark: (end: "stealth", fill: rgb("#1e293b"), length: 0.14cm, width: 0.08cm, inset: 0.02cm))
  content((0.45, -0.22), text(size: 8.5pt, fill: rgb("#1e293b"), weight: "bold", $arrow(a)$))

  // Điểm O và O'
  circle((0, 0), radius: 0.05, fill: black)
  content((-0.20, -0.18), text(size: 8.5pt, weight: "bold", $O$))
  circle(o_prime, radius: 0.05, fill: black)
  content((1.12, -0.18), text(size: 8.5pt, weight: "bold", $O'$))

  // Điểm M ở đỉnh trên hốc: M = (0.45, 0.75)
  let mx = 0.45
  let my = 0.75
  let m_pt = (mx, my)

  // Vector vị trí r = OM (nét chấm tím, đi từ O lên M)
  line((0, 0), m_pt, stroke: (paint: rgb("#7c3aed"), thickness: 1.1pt, dash: "dotted"), mark: (end: "stealth", fill: rgb("#7c3aed"), length: 0.12cm, width: 0.07cm))
  content((0.08, 0.45), text(size: 8.5pt, fill: rgb("#7c3aed"), weight: "bold", $arrow(r)$))

  // Vector vị trí r' = O'M (nét chấm lam, đi từ O' lên M)
  line(o_prime, m_pt, stroke: (paint: rgb("#0284c7"), thickness: 1.1pt, dash: "dotted"), mark: (end: "stealth", fill: rgb("#0284c7"), length: 0.12cm, width: 0.07cm))
  content((0.84, 0.45), text(size: 8.5pt, fill: rgb("#0284c7"), weight: "bold", $arrow(r)'$))

  // Chấm điểm M và nhãn M phía trên
  circle(m_pt, radius: 0.055, fill: rgb("#7c3aed"))
  content((mx, my + 0.22), text(size: 9pt, fill: rgb("#7c3aed"), weight: "bold", $M$))

  // ==========================================================================
  // PHẦN 2: TIA NỐI PHÓNG ĐẠI (Hướng chếch lên sang phải tới vòng zoom)
  // ==========================================================================
  let cz = (4.0, 1.05) // Tâm vòng tròn phóng đại
  let rz = 1.25        // Bán kính vòng tròn phóng đại

  // Tia zoom bắt đầu lệch sang phải M một chút để không đè lên M
  line((mx + 0.14, my + 0.06), (cz.at(0) - rz * 0.88, cz.at(1) + rz * 0.47), stroke: (paint: rgb("#f97316"), thickness: 0.55pt, dash: "dashed"))
  line((mx + 0.14, my - 0.06), (cz.at(0) - rz * 0.96, cz.at(1) - rz * 0.28), stroke: (paint: rgb("#f97316"), thickness: 0.55pt, dash: "dashed"))

  // ==========================================================================
  // PHẦN 3: VÒNG TRÒN PHÓNG ĐẠI (Zoom Inset bên phải)
  // ==========================================================================
  circle(cz, radius: rz, fill: white, stroke: (paint: rgb("#ea580c"), thickness: 1.2pt))
  content((cz.at(0), cz.at(1) + rz + 0.26), text(size: 8.5pt, fill: rgb("#c2410c"), weight: "bold", [Phóng đại tại điểm $M$]))

  // Điểm M bên trong vòng tròn phóng đại
  let mz = (cz.at(0) - 0.50, cz.at(1))
  circle(mz, radius: 0.055, fill: rgb("#7c3aed"))
  content((mz.at(0) - 0.24, mz.at(1)), text(size: 9pt, fill: rgb("#7c3aed"), weight: "bold", $M$))

  // Tỉ lệ vector phóng đại (đối xứng qua trục ngang):
  let p_plus = (mz.at(0) + 0.48, mz.at(1) + 0.68)
  let p_minus = (mz.at(0) + 0.48, mz.at(1) - 0.68)
  let p_total = (mz.at(0) + 0.96, mz.at(1))

  // Nét đứt hình bình hành (hình thoi đối xứng)
  line(p_plus, p_total, stroke: (paint: luma(55%), thickness: 0.55pt, dash: "dashed"))
  line(p_minus, p_total, stroke: (paint: luma(55%), thickness: 0.55pt, dash: "dashed"))

  // Vector E+ (màu tím)
  line(mz, p_plus, stroke: (paint: rgb("#7c3aed"), thickness: 1.3pt), mark: (end: "stealth", fill: rgb("#7c3aed"), length: 0.14cm, width: 0.08cm, inset: 0.02cm))
  content((p_plus.at(0) + 0.02, p_plus.at(1) + 0.16), text(size: 8.5pt, fill: rgb("#7c3aed"), weight: "bold", $arrow(E)_+$))

  // Vector E- (màu xanh lam)
  line(mz, p_minus, stroke: (paint: rgb("#0284c7"), thickness: 1.3pt), mark: (end: "stealth", fill: rgb("#0284c7"), length: 0.13cm, width: 0.07cm, inset: 0.02cm))
  content((p_minus.at(0) + 0.02, p_minus.at(1) - 0.16), text(size: 8.5pt, fill: rgb("#0284c7"), weight: "bold", $arrow(E)_-$))

  // Vector tổng hợp E = E+ + E- (màu đỏ đậm, nằm ngang cùng hướng a)
  line(mz, p_total, stroke: (paint: rgb("#dc2626"), thickness: 1.8pt), mark: (end: "stealth", fill: rgb("#dc2626"), length: 0.17cm, width: 0.10cm, inset: 0.03cm))
  content((p_total.at(0) + 0.22, p_total.at(1)), text(size: 9.5pt, fill: rgb("#dc2626"), weight: "bold", $arrow(E)$))

  // Chú thích công thức điện trường đều phía dưới vòng zoom
  content((cz.at(0), cz.at(1) - rz - 0.25), text(size: 8.5pt, fill: rgb("#dc2626"), weight: "bold", $arrow(E) = (rho arrow(a))/(3 epsilon_0)$))
})

// --------------------------------------------------------------------------
// Bài 1.22: Quả cầu rắn có mật độ điện khối biến thiên rho(r) = rho_s r/R
// --------------------------------------------------------------------------
// Hình đề bài 1.22: Quả cầu bán kính R, lớp vỏ vi phân ds ở bán kính s
#let ve-de-qua-cau-1-22 = canvas({
  import draw: *

  // Quả cầu bán kính R = 1.8 với các lớp thể hiện mật độ tăng dần từ tâm ra ngoài
  circle((0, 0), radius: 1.8, fill: rgb("#ffedd5"), stroke: (paint: rgb("#ea580c"), thickness: 1.1pt))
  circle((0, 0), radius: 1.35, fill: rgb("#fed7aa"), stroke: none)
  circle((0, 0), radius: 0.85, fill: rgb("#ffedd5"), stroke: none)
  circle((0, 0), radius: 0.40, fill: rgb("#fff7ed"), stroke: none)

  // Lớp vỏ cầu vi phân bán kính s = 1.10, bề dày ds = 0.15
  circle((0, 0), radius: 1.10, stroke: (paint: rgb("#0284c7"), thickness: 0.75pt, dash: "dashed"))
  circle((0, 0), radius: 1.25, stroke: (paint: rgb("#0284c7"), thickness: 0.75pt, dash: "dashed"))

  // Mũi tên bán kính s
  line((0, 0), (-0.78, 0.78), stroke: (paint: rgb("#0369a1"), thickness: 0.8pt), mark: (end: "stealth", fill: rgb("#0369a1"), length: 0.11cm, width: 0.06cm))
  content((-0.48, 0.34), text(size: 7pt, fill: rgb("#0369a1"), weight: "bold", $s$))

  // Mũi tên bề dày ds
  line((-0.78, 0.78), (-0.88, 0.88), stroke: (paint: rgb("#0284c7"), thickness: 1.1pt), mark: (both: true, fill: rgb("#0284c7"), length: 0.08cm, width: 0.05cm))
  content((-1.20, 1.12), text(size: 6.5pt, fill: rgb("#0284c7"), $dif s$))

  // Mũi tên bán kính quả cầu R
  line((0, 0), (1.27, -1.27), stroke: (paint: rgb("#c2410c"), thickness: 0.9pt), mark: (end: "stealth", fill: rgb("#c2410c"), length: 0.13cm, width: 0.08cm))
  content((0.75, -0.60), text(size: 7.5pt, fill: rgb("#c2410c"), weight: "bold", $R$))

  // Tâm O
  circle((0, 0), radius: 0.045, fill: black)
  content((-0.16, -0.16), text(size: 7.5pt, weight: "bold", $O$))

  // Nhãn công thức rho(s) đặt phía trên ngoài quả cầu
  content((0, 2.15), text(size: 7.5pt, fill: rgb("#c2410c"), weight: "bold", $rho(s) = rho_s s/R$))
})

// Hình lời giải 1.22: Đồ thị hàm E(r) theo r (parabol bên trong, 1/r^2 bên ngoài)
#let ve-giai-do-thi-1-22 = canvas({
  import draw: *

  // Hệ trục tọa độ
  line((-0.2, 0), (3.8, 0), stroke: (paint: luma(30%), thickness: 0.8pt), mark: (end: ">", fill: luma(30%), scale: 0.7))
  line((0, -0.2), (0, 2.5), stroke: (paint: luma(30%), thickness: 0.8pt), mark: (end: ">", fill: luma(30%), scale: 0.7))
  content((3.75, -0.22), text(size: 7pt, fill: luma(20%), $r$))
  content((-0.22, 2.45), text(size: 7pt, fill: luma(20%), $E(r)$))
  content((-0.14, -0.16), text(size: 6.5pt, fill: luma(40%), $O$))

  // Điểm mốc R = 1.7, E(R) = 1.9
  let r_0 = 1.7
  let e_0 = 1.9

  // Đường cong E(r):
  // r <= R: parabol E = e_0 * (r/r_0)^2
  let pts_in = (
    (0.0, 0.0), (0.3, 0.06), (0.6, 0.24), (0.9, 0.53), (1.2, 0.95),
    (1.45, 1.38), (1.7, 1.90)
  )
  line(..pts_in, stroke: (paint: rgb("#2563eb"), thickness: 1.3pt))

  // r >= R: hyperbol E = e_0 * (r_0/r)^2
  let pts_out = (
    (1.7, 1.90), (1.95, 1.44), (2.2, 1.13), (2.5, 0.88), (2.9, 0.65),
    (3.3, 0.50), (3.7, 0.40)
  )
  line(..pts_out, stroke: (paint: rgb("#ea580c"), thickness: 1.3pt))

  // Đường dóng nét đứt tại (R, E_max)
  line((r_0, 0), (r_0, e_0), stroke: (paint: luma(65%), thickness: 0.45pt, dash: "dashed"))
  line((0, e_0), (r_0, e_0), stroke: (paint: luma(65%), thickness: 0.45pt, dash: "dashed"))
  content((r_0, -0.22), text(size: 7pt, fill: luma(20%), weight: "bold", $R$))
  content((-0.15, e_0), text(size: 6.5pt, fill: luma(20%), $E(R) = (rho_s R)/(4 epsilon_0)$), anchor: "east")

  // Chú thích các vùng
  content((0.85, 1.20), text(size: 6pt, fill: rgb("#1d4ed8"), $r <= R: E prop r^2$))
  content((2.85, 1.15), text(size: 6pt, fill: rgb("#c2410c"), $r >= R: E prop 1/r^2$))
})


// Hình CeTZ cho Phần 1, mục 1: Định luật Coulomb — Điện trường.
#import "cong-cu.typ": *

// Bài 1.1: quả cầu treo lò xo, quả cầu thứ hai bên dưới.
#let ve-lo-xo-1-1(hien-luc: false) = hinh({
  import draw: *
  tran((-0.8, 4.2), (0.8, 4.2))
  lo-xo((0, 4.2), (0, 2.22), vong: 8, rong: 0.32, net: if hien-luc { 0.7pt + luma(60%) } else { 0.8pt + black })
  dt((0, 2), r: 0.22, ten: $q_1$, vt: "east")
  dt((0, 0), dau: "-", r: 0.22, ten: $q_2$, vt: "east")
  kc((-0.3, 2), (-0.3, 0), $d$, d: -0.4)
  if hien-luc {
    mt((0, 2.22), (0, 3.4), w: 1.4pt)
    content((-0.3, 3.1), text(fill: mau.do, $arrow(F)_"đh"$), anchor: "east")
    mt((-0.08, 1.78), (-0.08, 1.05), ten: $arrow(P)$, vt: "west")
    mt((0.08, 1.78), (0.08, 1.4), ten: $arrow(F)_đ$, vt: "east")
  }
})

// Bài 1.2: hai giọt nước tích điện, lực điện cân bằng lực hấp dẫn.
#let ve-hai-giot-nuoc-1-2 = hinh({
  import draw: *
  for (x, s) in ((-1.9, -1), (1.9, 1)) {
    circle((x, 0), radius: 0.45, fill: nen.xanh, stroke: 0.8pt + mau.xanh)
    diem((x, 0), r: 0.035)
    line((x, 0), (x + 0.32 * s, 0.32), stroke: 0.5pt + mau.xanh)
    content((x + 0.12 * s, 0.3), text(fill: mau.xanh, $a$))
    nhan((x, 0.45), $-e$, vt: "north")
    nhan((x, -0.45), $m$)
    mt((x + s * 0.45, 0), (x + s * 1.3, 0), ten: $arrow(F)_đ$, vt: "north")
    mt((x - s * 0.45, 0), (x - s * 1.3, 0), ten: $arrow(F)_"hd"$, c: mau.luc, vt: "north")
  }
  kc((-1.9, -0.85), (1.9, -0.85), $r$, d: -0.15)
})

// Bài 1.3: electron quay quanh proton.
#let ve-nguyen-tu-1-3 = hinh({
  import draw: *
  let R = 1.3
  circle((0, 0), radius: R, stroke: dut)
  kc((0, 0), (R * calc.cos(-130deg), R * calc.sin(-130deg)), $r$, d: 0, ext: false)
  dt((0, 0), r: 0.2, ten: $+e_0$, vt: "north-west")
  dt((R, 0), dau: "-", r: 0.13, ten: $-e_0$, vt: "south-east")
  mt((R - 0.15, 0), (0.45, 0), ten: $arrow(F)_đ$, vt: "north")
  mt((R, 0.15), (R, 1.0), ten: $arrow(v)$, c: mau.luc, vt: "east")
})

// Bài 1.4 (đề): ba điện tích ở ba đỉnh tam giác đều.
#let _tam-giac(a) = ((0, 0), (a, 0), (a / 2, a * calc.sqrt(3) / 2))
#let ve-tam-giac-1-4 = hinh({
  import draw: *
  let (A, B, C) = _tam-giac(2.4)
  truc(x: (0, 3.1), y: (0, 2.7))
  line(A, B, C, close: true, stroke: 0.7pt + luma(30%))
  goc(A, 0.45, 0deg, 60deg, ten: $60.0 degree$, rt: 0.35)
  content((1.95, 1.05), $0.500 thin "m"$, anchor: "west")
  dt(A, ten: $2.00 thin mu"C"$)
  dt(B, dau: "-", ten: $-4.00 thin mu"C"$)
  dt(C, ten: $7.00 thin mu"C"$, vt: "north")
})

// Bài 1.4 (lời giải 1): phân tử DNA như lò xo bị nén.
#let ve-dna-1-4 = hinh({
  import draw: *
  lo-xo((-2.08, 0), (2.08, 0), vong: 12, rong: 0.36, dau: 0.12, cuon: 0.5, net: 0.8pt + mau.dam)
  dt((-2.3, 0), r: 0.22, ten: $+e$)
  dt((2.3, 0), dau: "-", r: 0.22, ten: $-e$)
  for s in (-1, 1) {
    mt((s * 2.3, 0.45), (s * 1.2, 0.45), ten: $arrow(F)_đ$, vt: "north")
    mt((s * 2.3, 0.45), (s * 3.4, 0.45), ten: $arrow(F)_"đh"$, c: mau.luc, vt: "north")
  }
  kc((-2.3, -0.65), (2.3, -0.65), $L' = 0.99 L$, d: -0.15)
})

// Bài 1.4 (lời giải 2): lực tổng hợp tác dụng lên q1.
#let ve-luc-tam-giac-1-4 = hinh({
  import draw: *
  let (A, B, C) = _tam-giac(2.4)
  truc(x: (-1.5, 3.0), y: (-2.6, 2.6))
  line(A, B, C, close: true, stroke: dut)
  dt(B, dau: "-", r: 0.14, ten: $q_2$)
  dt(C, r: 0.14, ten: $q_3$, vt: "east")
  let f21 = (1.44, 0)
  let f31 = (2.52 * calc.cos(240deg), 2.52 * calc.sin(240deg))
  let f = (f21.at(0) + f31.at(0), f31.at(1))
  line(f21, f, f31, stroke: dut)
  mt(A, f21, ten: $arrow(F)_21$, vt: "north")
  mt(A, f31, ten: $arrow(F)_31$, vt: "west")
  mt(A, f, ten: $arrow(F)$, c: mau.xanh, w: 1.6pt, vt: "south")
  goc(A, 0.6, -85.3deg, 0deg, ten: $85.3 degree$, c: mau.xanh, rt: 0.3)
  dt(A, r: 0.14, ten: $q_1$, vt: "north-west")
})

// Bài 1.5: đường sức của q2 > 0 (trên) và q1 = -q2/3 (dưới), tính bằng tích phân số.
#let ve-duong-suc-1-5 = hinh({
  import draw: *
  let (y2, y1, r0) = (1.1, -0.8, 0.2)
  let E(p) = {
    let thanh-phan(q, y0) = {
      let (dx, dy) = (p.at(0), p.at(1) - y0)
      let r2 = dx * dx + dy * dy
      (q * dx / r2, q * dy / r2)
    }
    let (a, b) = (thanh-phan(3, y2), thanh-phan(-1, y1))
    let (ex, ey) = (a.at(0) + b.at(0), a.at(1) + b.at(1))
    let l = calc.sqrt(ex * ex + ey * ey)
    (ex / l, ey / l)
  }
  for k in range(18) {
    // 18 đường cách đều 20°; 6 đường gần trục (lệch < 60°) đi vào q1.
    let phi = -90deg + (k - 8.5) * 20deg
    let p = (r0 * calc.cos(phi), y2 + r0 * calc.sin(phi))
    let pts = (p,)
    for i in range(300) {
      let u = E(p)
      let v = E((p.at(0) + 0.01 * u.at(0), p.at(1) + 0.01 * u.at(1)))
      p = (p.at(0) + 0.02 * v.at(0), p.at(1) + 0.02 * v.at(1))
      pts.push(p)
      if calc.pow(p.at(0), 2) + calc.pow(p.at(1) - y1, 2) < r0 * r0 { break }
      if calc.pow(p.at(0), 2) + calc.pow(p.at(1) - 0.2, 2) > 4.4 { break }
    }
    line(..pts, stroke: 0.7pt + mau.cam)
    let j = calc.floor(pts.len() * 0.5)
    line(pts.at(j), pts.at(j + 1), stroke: 0.7pt + mau.cam, mark: (end: "stealth", fill: mau.cam, scale: 0.55))
  }
  for (y, t) in ((y2, $q_2$), (y1, $q_1$)) {
    circle((0, y), radius: r0, fill: rgb("#e8c99e"), stroke: 0.8pt + rgb("#b58a57"))
    content((0, y), text(size: 7pt, t))
  }
})

// Bài 1.6 (đề): sơ đồ thí nghiệm giọt dầu Millikan.
#let ve-thi-nghiem-millikan-1-6 = hinh(length: 0.85cm, size: 7pt, {
  import draw: *
  let vien = 0.6pt + rgb("#475569")
  let dia(y, dau) = {
    rect((-1.45, y - 0.12), (1.45, y), fill: rgb("#94a3b8"), stroke: none)
    arc((1.45, y - 0.12), start: 0deg, stop: -180deg, radius: (1.45, 0.38), fill: rgb("#94a3b8"), stroke: vien)
    circle((0, y), radius: (1.45, 0.38), fill: rgb("#cbd5e1"), stroke: vien)
    content((-0.55, y + 0.08), text(size: 10pt, weight: "bold", fill: if dau == "+" { mau.do } else { mau.xanh }, if dau == "+" { $+$ } else { $-$ }))
  }
  // Nguồn sáng và chùm sáng.
  line((2.23, 0.43), (0.4, 0.45), (0.4, -0.35), (2.23, -0.33), close: true, fill: rgb(251, 191, 36, 18%), stroke: (paint: mau.vang, thickness: 0.5pt, dash: "dashed"))
  rect((2.45, -0.23), (3.1, 0.33), fill: nen.xam, stroke: vien, radius: 2pt)
  line((2.45, 0.33), (2.23, 0.47), (2.23, -0.37), (2.45, -0.23), close: true, fill: white, stroke: vien)
  content((2.75, 0.6), [Nguồn sáng])
  // Kính ngắm trên giá ba chân.
  rect((-3.1, -0.1), (-1.9, 0.2), fill: nen.xam, stroke: vien)
  rect((-1.9, -0.15), (-1.63, 0.25), fill: rgb("#cbd5e1"), stroke: vien)
  for x in (-2.9, -2.5, -2.1) { line((-2.5, -0.1), (x, -1.1), stroke: 1.2pt + rgb("#475569")) }
  content((-2.5, 0.42), [Kính ngắm])
  dia(-0.7, "-")
  dia(0.85, "+")
  circle((0, 0.85), radius: (0.15, 0.05), fill: black)
  line((0.5, 1.35), (0.12, 0.9), stroke: 0.5pt + mau.xam, mark: (end: "stealth", fill: mau.xam, scale: 0.4))
  content((0.75, 1.5), [Lỗ nhỏ])
  kc((-1.0, 0.73), (-1.0, -0.7), $d$, d: 0, ext: false)
  // Ắc quy và dây nối.
  rect((1.63, 1.3), (2.27, 1.8), fill: mau.dam, stroke: none, radius: 2pt)
  content((1.95, 1.55), text(fill: white, weight: "bold", $U$))
  line((1.2, 0.85), (1.79, 0.85), (1.79, 1.8), stroke: 0.7pt + mau.do)
  line((1.2, -0.7), (2.37, -0.7), (2.37, 1.6), (2.11, 1.6), (2.11, 1.8), stroke: 0.7pt + mau.xanh)
  // Bình phun và các giọt dầu.
  circle((-2.1, 2.23), radius: (0.28, 0.2), fill: rgb("#64748b"), stroke: none)
  line((-1.82, 2.23), (-1.45, 2.1), stroke: 1.3pt + rgb("#475569"))
  rect((-1.6, 1.73), (-1.23, 2.2), fill: nen.vang, stroke: 0.6pt + mau.vang, radius: 1pt)
  line((-1.23, 2.13), (-0.9, 2.0), stroke: 1.2pt + rgb("#475569"))
  content((-1.8, 2.6), [Bình phun dầu])
  for p in ((-0.75, 1.95), (-0.6, 1.99), (-0.65, 1.87), (-0.4, 1.91), (-0.45, 1.8), (-0.25, 1.85), (-0.3, 1.7), (-0.1, 1.75), (0.1, 1.6), (-0.05, 1.4), (0.08, 1.15)) {
    circle(p, radius: 0.025, fill: mau.vang, stroke: none)
  }
  line((0, 0.8), (0, 0.22), stroke: (paint: mau.vang, thickness: 0.5pt, dash: "dotted"))
  circle((0, 0.12), radius: 0.09, fill: rgb("#f59e0b"), stroke: 0.8pt + rgb("#b45309"))
  content((0.3, 0.12), text(fill: rgb("#b45309"), weight: "bold", $q$))
})

// Bài 1.6 (lời giải): cân bằng lực trên giọt dầu.
#let ve-can-bang-millikan-1-6 = hinh({
  import draw: *
  ban((-1.9, 1.3), (1.9, 1.48), "+")
  ban((-1.9, -1.48), (1.9, -1.3), "-")
  for x in (-1.6, 1.6) { mt((x, 1.3), (x, -1.3), c: luma(65%), w: 0.6pt) }
  content((1.85, 0), text(fill: luma(45%), $arrow(E)$), anchor: "west")
  circle((0, 0), radius: 0.3, fill: nen.vang, stroke: 0.8pt + mau.vang)
  content((-0.35, 0), $q = -e$, anchor: "east")
  mt((0, 0.3), (0, 1.15), ten: $arrow(F)_đ$, c: mau.luc, vt: "east")
  mt((0, -0.3), (0, -1.15), ten: $arrow(P) = m arrow(g)$, vt: "east")
})

// Bài 1.7: máy Van de Graaff; hien-luc thêm lực điện và đường sức.
#let ve-van-de-graaff-1-7(hien-luc: false) = hinh(size: 7pt, {
  import draw: *
  let (yc, R) = (2.5, 0.9)
  rect((-1, 0), (1, 0.35), fill: mau.dam, stroke: none, radius: 2pt)
  content((0, 0.17), text(fill: white, [Chân đế]))
  rect((-0.3, 0.35), (0.3, 1.75), fill: rgb("#f8fafc"), stroke: 0.6pt + luma(60%))
  for x in (-0.12, 0.12) { line((x, 0.35), (x, 1.75), stroke: 1pt + rgb("#475569")) }
  content((0.4, 1.0), [Cột cách điện], anchor: "west")
  circle((0, yc), radius: R, fill: nen.xam, stroke: 0.8pt + luma(50%))
  for a in (0, 30, 150, 180, 215, 250, 290, 325) {
    content(((R - 0.15) * calc.cos(a * 1deg), yc + (R - 0.15) * calc.sin(a * 1deg)), text(fill: mau.do, $+$))
  }
  content((0, yc - 0.1), text(size: 8pt, fill: mau.xanh, $+Q$))
  let yp = yc + R
  if hien-luc {
    for a in (30, 60, 120, 150) {
      let u = (calc.cos(a * 1deg), calc.sin(a * 1deg))
      mt((R * u.at(0), yc + R * u.at(1)), ((R + 0.55) * u.at(0), yc + (R + 0.55) * u.at(1)), c: luma(60%), w: 0.6pt)
    }
    content((1.5, 3.4), text(fill: luma(45%), size: 8pt, $arrow(E)$))
    mt((0.12, yp + 0.1), (0.12, yp + 0.95), ten: text(size: 8pt, $arrow(F)_đ$), vt: "east")
    mt((-0.12, yp + 0.1), (-0.12, yp + 0.8), ten: text(size: 8pt, $arrow(a)$), c: mau.luc, vt: "west")
  } else {
    mt((0, yp + 0.1), (0, yp + 0.9), ten: text(size: 8pt, $arrow(a)$), c: mau.luc, vt: "east")
  }
  dt((0, yp), r: 0.1)
  nhan((0.1, yp), text(size: 8pt, $p$), vt: "north-east", r: 0.06)
})

// Bài 1.8 (đề): chùm proton bắn vào vùng điện trường đều hướng xuống.
#let ve-nem-proton-1-8 = hinh({
  import draw: *
  line((0, 0), (4.2, 0), (4.9, 0.7), (4.9, 0.58), (4.2, -0.12), (0, -0.12), close: true, fill: rgb("#cbd5e1"), stroke: 0.6pt + luma(65%))
  line((0, 0), (4.2, 0), (4.9, 0.7), (0.7, 0.7), close: true, fill: rgb("#f8fafc"), stroke: 0.6pt + luma(65%))
  for x in (2.0, 2.8, 3.6) { mt((x, 2.1), (x, 0.75), c: mau.vang, w: 0.8pt) }
  content((3.95, 1.8), text(fill: mau.vang, $arrow(E)$))
  let (x0, y0, D) = (1.0, 0.35, 2.4)
  line((x0 - 0.7, y0 - 0.7), (x0, y0), stroke: (paint: mau.dam, thickness: 0.7pt, dash: "dashed"))
  content((x0 - 0.45, y0 - 0.85), text(size: 7pt, [Chùm proton]))
  line((x0, y0), (x0 + 2.6, y0), stroke: dut)
  line(..ham(t => y0 + 3.8 * t * (1 - t), 0, 1, n: 30).map(p => (x0 + D * p.at(0), p.at(1))), stroke: (paint: mau.xanh, thickness: 0.9pt, dash: "dotted"))
  goc((x0, y0), 0.45, 0deg, 58deg, ten: $theta$)
  mt((x0, y0), (x0 + 0.55, y0 + 0.88), ten: $arrow(v)_0$, c: mau.xanh, vt: "west")
  dt((x0, y0), r: 0.08, dau: none)
  content((x0 + D, y0), text(fill: mau.do, weight: "bold", size: 10pt, sym.times))
  content((x0 + D + 0.2, y0 + 0.2), text(fill: mau.do, size: 7pt, [Mục tiêu]), anchor: "west")
  kc((x0, y0), (x0 + D, y0), $R$, d: -0.2)
})

// Bài 1.8 (lời giải): hai quỹ đạo cùng tới mục tiêu.
#let ve-giai-nem-proton-1-8 = hinh({
  import draw: *
  let D = 3.6
  truc(x: (-0.3, D + 0.6), y: (-0.3, 2.2))
  content((-0.15, -0.2), $O$)
  mt((-0.4, 1.9), (-0.4, 1.2), ten: $arrow(a)$, vt: "west")
  for (th, c) in ((36.9deg, mau.xanh), (53.1deg, mau.cam)) {
    line(..ham(x => x * calc.tan(th) * (1 - x / D), 0, D), stroke: 1.1pt + c)
    mt((0, 0), (1.05 * calc.cos(th), 1.05 * calc.sin(th)), c: c, w: 1.3pt)
  }
  content((D / 2, 0.88), text(size: 7pt, fill: mau.xanh, $theta_1 approx 36.9 degree$))
  content((D / 2, 1.42), text(size: 7pt, fill: mau.cam, $theta_2 approx 53.1 degree$))
  diem((D, 0), ten: $D = 1.27 thin "mm"$)
})

// Bài 1.9 (đề): electron bay vào giữa hai bản.
#let ve-hai-ban-1-9 = hinh({
  import draw: *
  let (L, d) = (4.2, 2.0)
  ban((0, d), (L, d + 0.16), "+", n: 4)
  ban((0, -0.16), (L, 0), "-", n: 4)
  for x in (1.0, 2.0, 3.0, 3.8) { mt((x, d), (x, 0), c: mau.tim, w: 0.6pt) }
  content((3.85, 0.55), text(fill: mau.tim, $arrow(E)$), anchor: "west")
  line((-0.4, d / 2), (L + 0.4, d / 2), stroke: dut)
  line(..ham(x => d / 2 + d / 2 * calc.pow(x / L, 2), 0, L), (L + 0.6, d + 0.6), stroke: (paint: mau.xanh, thickness: 1pt, dash: "densely-dotted"))
  mt((0, d / 2), (1.1, d / 2), ten: $arrow(v)_0$, c: mau.luc, vt: "south")
  dt((0, d / 2), dau: "-", r: 0.12)
  kc((0, d + 0.16), (L, d + 0.16), $2.00 thin "cm"$, d: 0.3)
  kc((0, 0), (0, d), $1.00 thin "cm"$, d: 0.6)
})

// Bài 1.9 (lời giải): quỹ đạo electron và proton (độ lệch proton phóng đại).
#let ve-giai-hai-ban-1-9 = hinh({
  import draw: *
  let (L, d) = (4.2, 2.4)
  ban((0, d), (L, d + 0.14), "+", n: 4)
  ban((0, -0.14), (L, 0), "-", n: 4)
  line((-0.3, d / 2), (L + 0.3, d / 2), stroke: dut)
  line(..ham(x => d / 2 * (1 + calc.pow(x / L, 2)), 0, L), stroke: 1.3pt + mau.xanh)
  line(..ham(x => d / 2 - 0.3 * calc.pow(x / L, 2), 0, L), stroke: (paint: mau.cam, thickness: 1.3pt, dash: "dashed"))
  mt((0.9, d / 2 + 0.12), (0.9, d / 2 + 0.8), ten: $arrow(F)_e$, c: mau.xanh, vt: "east")
  mt((1.6, d / 2 - 0.12), (1.6, d / 2 - 0.75), ten: $arrow(F)_p$, c: mau.cam, vt: "east")
  mt((0, d / 2), (0.75, d / 2), ten: $arrow(v)_0$, c: mau.luc, vt: "south")
  content((L + 0.12, d), text(fill: mau.xanh, [electron]), anchor: "west")
  content((L + 0.12, d / 2 - 0.3), text(fill: mau.cam, [proton]), anchor: "west")
  content((L + 0.12, d / 2 - 0.65), text(size: 7pt, fill: mau.cam, [(phóng đại)]), anchor: "west")
})

// Bài 1.10 (đề): hai điện tích trên trục x.
#let ve-dien-tich-truc-x-1-10 = hinh({
  import draw: *
  line((0.2, 0), (4.6, 0), stroke: 0.6pt + luma(45%), mark: (end: "stealth", fill: luma(45%), scale: 0.5))
  content((4.65, 0), $x thin ("m")$, anchor: "west")
  dt((1, 0), ten: $+2.50 thin mu"C"$, vt: "north")
  dt((3.5, 0), dau: "-", ten: $-3.50 thin mu"C"$, vt: "north")
  nhan((1, -0.16), $0$)
  nhan((3.5, -0.16), $0.600$)
})

// Bài 1.10 (lời giải): điểm M có hai điện trường triệt tiêu.
#let ve-giai-dien-tich-truc-x-1-10 = hinh({
  import draw: *
  let (xm, x1, x2) = (0.9, 3.0, 4.2)
  line((0, 0), (5, 0), stroke: 0.6pt + luma(45%), mark: (end: "stealth", fill: luma(45%), scale: 0.5))
  content((5.05, 0), $x$, anchor: "west")
  dt((x1, 0), r: 0.14, ten: $q_1$, vt: "north")
  dt((x2, 0), dau: "-", r: 0.14, ten: $q_2$, vt: "north")
  mt((xm, 0), (xm - 0.8, 0), ten: $arrow(E)_1$, vt: "north")
  mt((xm, 0), (xm + 0.8, 0), ten: $arrow(E)_2$, c: mau.xanh, vt: "north")
  dt((xm, 0), dau: none, r: 0.1)
  nhan((xm, -0.1), $M$)
  kc((xm, -0.4), (x1, -0.4), $s = 3.27 thin "m"$, d: -0.2)
})

// Bài 1.11 (đề): dây thẳng và vòng tròn tích điện.
#let ve-de-day-dan-1-11 = hinh({
  import draw: *
  rect((0.2, -0.05), (2.2, 0.05), fill: nen.cam, stroke: 0.6pt + mau.cam)
  kc((0.2, -0.05), (2.2, -0.05), $L = 8.5 thin "cm"$, d: -0.15, ext: false)
  line((1.2, 0), (1.2, 1.4), stroke: dut)
  diem((1.2, 1.4), ten: $P$, vt: "east")
  kc((1.2, 0), (1.2, 1.4), $6 thin "cm"$, d: 0.35, ext: false)
  content((1.2, 2.0), [(a)])
  circle((4.1, 0.1), radius: (0.95, 0.3), stroke: 1.1pt + mau.cam)
  diem((4.1, 0.1), ten: $O$, vt: "south-east")
  line((4.1, 0.1), (4.1, 1.5), stroke: dut)
  diem((4.1, 1.5), ten: $M$, vt: "east")
  kc((4.1, 0.1), (4.1, 1.5), $6 thin "cm"$, d: 0.35, ext: false)
  content((4.1, 2.0), [(b)])
})

// Bài 1.11 (lời giải a): hai phần tử đối xứng của dây thẳng.
#let ve-giai-day-thang-1-11 = hinh({
  import draw: *
  let (h, x0) = (1.8, 1.1)
  truc(o: (0, 0), x: (-2.1, 2.3), y: (-0.2, 3.3))
  rect((-1.8, -0.05), (1.8, 0.05), fill: nen.cam, stroke: 0.6pt + mau.cam)
  let u = (x0 / calc.sqrt(x0 * x0 + h * h), h / calc.sqrt(x0 * x0 + h * h))
  for s in (-1, 1) {
    rect((s * x0 - 0.1, -0.06), (s * x0 + 0.1, 0.06), fill: mau.cam, stroke: none)
    nhan((s * x0, -0.06), $dif q$)
    line((s * x0, 0), (0, h), stroke: dut)
    mt((0, h), (-s * 0.75 * u.at(0), h + 0.75 * u.at(1)), ten: if s < 0 { $dif arrow(E)_1$ } else { $dif arrow(E)_2$ }, w: 1pt)
  }
  mt((0, h), (0, h + 1.5 * u.at(1)), ten: $arrow(E)$, c: mau.xanh, w: 1.5pt, vt: "east")
  diem((0, h), ten: $P$, vt: "south-west")
})

// Bài 1.11 (lời giải b): hai phần tử đối xứng của vòng tròn.
#let ve-giai-vong-day-1-11 = hinh({
  import draw: *
  let (R, z) = (1.3, 1.8)
  line((0, -0.4), (0, z + 1.2), stroke: 0.5pt + luma(45%), mark: (end: "stealth", fill: luma(45%), scale: 0.5))
  content((0, z + 1.25), $z$, anchor: "south")
  circle((0, 0), radius: (R, 0.4), stroke: 1.2pt + mau.cam)
  diem((0, 0), ten: $O$, vt: "south-west")
  let u = (R / calc.sqrt(R * R + z * z), z / calc.sqrt(R * R + z * z))
  for s in (-1, 1) {
    circle((s * R, 0), radius: 0.07, fill: mau.cam, stroke: none)
    line((s * R, 0), (0, z), stroke: dut)
    mt((0, z), (-s * 0.75 * u.at(0), z + 0.75 * u.at(1)), ten: $dif arrow(E)$, w: 1pt)
  }
  nhan((R, 0), $dif q$, vt: "east")
  mt((0, z), (0, z + 1.2 * u.at(1)), ten: $arrow(E)$, c: mau.xanh, w: 1.5pt, vt: "east")
  diem((0, z), ten: $M$, vt: "south-west")
})

// Bài 1.12 (đề): thanh trên trục y, điện tích -q trên trục x.
#let ve-de-thanh-1-12 = hinh({
  import draw: *
  truc(x: (0, 3.4), y: (0, 2.8))
  content((-0.15, -0.15), $O$)
  rect((-0.07, 0), (0.07, 2.0), fill: nen.cam, stroke: 0.6pt + mau.cam)
  nhan((-0.07, 2.0), $a$, vt: "west")
  nhan((0.07, 1.0), $Q$, vt: "east")
  dt((2.6, 0), dau: "-", r: 0.14, ten: $-q$)
  kc((0, -0.5), (2.6, -0.5), $x$, d: 0, ext: false)
})

// Bài 1.12 (lời giải): trường do phần tử dq và lực tác dụng lên -q.
#let ve-giai-thanh-1-12 = hinh({
  import draw: *
  let (a, x, y) = (2.2, 2.6, 1.4)
  truc(x: (0, 4.0), y: (0, 2.8))
  rect((-0.07, 0), (0.07, a), fill: nen.cam, stroke: 0.6pt + mau.cam)
  rect((-0.09, y - 0.08), (0.09, y + 0.08), fill: mau.cam, stroke: none)
  nhan((-0.09, y), $dif q$, vt: "west")
  nhan((-0.07, a), $a$, vt: "west")
  line((0, y), (x, 0), stroke: dut)
  content((0.85, 1.12), $r$)
  let u = (x / calc.sqrt(x * x + y * y), -y / calc.sqrt(x * x + y * y))
  let e = (x + 1.1 * u.at(0), 1.1 * u.at(1))
  line((x, e.at(1)), e, (e.at(0), 0), stroke: dut)
  mt((x, 0), e, ten: $dif arrow(E)$, vt: "east")
  mt((x, 0), (x - 1.1 * u.at(0), -1.1 * u.at(1)), ten: $dif arrow(F)$, c: mau.luc, vt: "south-west")
  dt((x, 0), dau: "-", r: 0.12)
  nhan((x, -0.12), $-q$, vt: "south-west")
})

// Bài 1.13 (đề): nửa vòng tròn, nửa trái +Q, nửa phải -Q.
#let ve-de-ban-nguyet-1-13 = hinh({
  import draw: *
  let R = 1.6
  truc(x: (-2.0, 2.2), y: (0, 2.2))
  content((-0.15, -0.18), $O$)
  arc((0, 0), start: 90deg, stop: 180deg, radius: R, anchor: "origin", stroke: 2pt + mau.cam)
  arc((0, 0), start: 0deg, stop: 90deg, radius: R, anchor: "origin", stroke: 2pt + mau.xanh)
  content((-1.45, 1.35), text(fill: mau.cam, $+Q$))
  content((1.45, 1.35), text(fill: mau.xanh, $-Q$))
  line((0, 0), (R * calc.cos(30deg), R * calc.sin(30deg)), stroke: 0.5pt)
  content((0.8, 0.25), $a$)
})

// Bài 1.13 (lời giải): hai phần tử đối xứng, thành phần y triệt tiêu.
#let ve-giai-ban-nguyet-1-13 = hinh({
  import draw: *
  let (R, t) = (1.7, 40deg)
  truc(x: (-2.0, 2.3), y: (-1.0, 2.1))
  arc((0, 0), start: 90deg, stop: 180deg, radius: R, anchor: "origin", stroke: 2pt + mau.cam)
  arc((0, 0), start: 0deg, stop: 90deg, radius: R, anchor: "origin", stroke: 2pt + mau.xanh)
  let (c, s) = (calc.cos(t), calc.sin(t))
  line((0, 0), (-R * c, R * s), stroke: dut)
  line((0, 0), (R * c, R * s), stroke: dut)
  goc((0, 0), 0.4, 0deg, t, ten: $theta$, rt: 0.18)
  nhan((-R * c, R * s), text(fill: mau.cam, $+dif q$), vt: "north-west")
  nhan((R * c, R * s), text(fill: mau.xanh, $-dif q$), vt: "north-east")
  mt((0, 0), (0.9 * c, -0.9 * s), ten: $dif arrow(E)_1$, c: mau.cam, w: 1pt)
  mt((0, 0), (0.9 * c, 0.9 * s), ten: $dif arrow(E)_2$, c: mau.xanh, w: 1pt)
  mt((0, 0), (1.8 * c, 0), ten: $arrow(E)$, c: mau.do, w: 1.6pt, vt: "south")
  content((-0.18, -0.2), $O$)
})

// Bài 1.14 (đề): thanh tích điện -q và điểm P trên đường kéo dài.
#let ve-de-thanh-1-14 = hinh({
  import draw: *
  line((-0.3, 0), (3.9, 0), stroke: dut)
  ban((0, -0.07), (2.4, 0.07), "-", n: 5)
  nhan((1.2, -0.07), $-q$)
  diem((3.4, 0), ten: $P$)
  kc((0, 0.07), (2.4, 0.07), $L$, d: 0.25)
  kc((2.4, 0.07), (3.4, 0.07), $a$, d: 0.25)
})

// Bài 1.14 (lời giải): phần tử cách đầu gần s, cách P một đoạn a + s.
#let ve-giai-thanh-1-14 = hinh({
  import draw: *
  line((-0.3, 0), (4.0, 0), stroke: 0.5pt + luma(45%), mark: (end: "stealth", fill: luma(45%), scale: 0.5))
  content((4.05, 0), $x$, anchor: "west")
  ban((0, -0.07), (2.4, 0.07), "-", n: 5)
  rect((1.5, -0.09), (1.7, 0.09), fill: mau.xanh, stroke: none)
  diem((3.4, 0), ten: $P$, vt: "north-east")
  kc((1.6, 0.09), (2.4, 0.09), $s$, d: 0.25)
  kc((1.6, -0.09), (3.4, -0.09), $a + s$, d: -0.3)
  mt((3.4, 0.03), (2.65, 0.03), ten: $arrow(E)$, vt: "north")
  nhan((1.6, 0.09), $dif q$, vt: "north-west", r: 0.15)
})

// Bài 1.15 (đề): thanh dài l, điện tích q2 cách trung điểm r.
#let ve-de-thanh-1-15 = hinh({
  import draw: *
  line((-1.6, 0), (2.5, 0), stroke: dut)
  ban((-1.2, -0.07), (1.2, 0.07), "+", n: 5)
  nhan((-0.6, -0.07), $q_1$)
  diem((0, 0), ten: $O$, vt: "south")
  dt((1.8, 0), dau: none, r: 0.1, ten: $q_2$, vt: "south")
  kc((0, 0.07), (1.8, 0.07), $r$, d: 0.4)
  kc((-1.2, -0.07), (1.2, -0.07), $l$, d: -0.4)
})

// Bài 1.15 (lời giải): khoảng cách tới hai đầu thanh.
#let ve-giai-thanh-1-15 = hinh({
  import draw: *
  line((-1.6, 0), (3.2, 0), stroke: 0.5pt + luma(45%), mark: (end: "stealth", fill: luma(45%), scale: 0.5))
  content((3.25, 0), $x$, anchor: "west")
  ban((-1.2, -0.07), (1.2, 0.07), "+", n: 5)
  rect((0.45, -0.09), (0.65, 0.09), fill: mau.cam, stroke: none)
  nhan((0.55, 0.09), $dif q_1$, vt: "north", r: 0.05)
  dt((1.8, 0), dau: none, r: 0.1)
  nhan((1.8, -0.1), $q_2$, vt: "south-east")
  kc((1.2, 0.07), (1.8, 0.07), $r - l\/2$, d: 0.45)
  kc((-1.2, -0.07), (1.8, -0.07), $r + l\/2$, d: -0.45)
  mt((1.9, 0), (2.7, 0), ten: $arrow(E)$, vt: "north")
})

// Bài 1.16 (đề): bán cầu tích điện, quả cầu treo tại tâm.
#let ve-de-ban-cau-1-16 = hinh({
  import draw: *
  let R = 1.6
  arc((R, 0), start: 0deg, stop: 180deg, radius: R, fill: rgb(219, 234, 254, 40%), stroke: 0.9pt)
  circle((0, 0), radius: (R, 0.35), stroke: (dash: "dashed", thickness: 0.6pt))
  for a in (30, 60, 120, 150) { content((0.85 * R * calc.cos(a * 1deg), 0.85 * R * calc.sin(a * 1deg)), text(fill: mau.do, $+$)) }
  content((-1.4, 1.45), $sigma > 0$)
  line((0, R), (0, 0), stroke: 0.6pt)
  content((0.15, 0.85), $R$, anchor: "west")
  diem((0, 0), r: 0.09, ten: $m, Q$, vt: "south-east")
})

// Bài 1.16 (lời giải): vành vi phân và cân bằng lực tại tâm.
#let ve-giai-ban-cau-1-16 = hinh({
  import draw: *
  let (R, t) = (1.6, 35deg)
  arc((R, 0), start: 0deg, stop: 180deg, radius: R, fill: rgb(219, 234, 254, 40%), stroke: 0.9pt)
  circle((0, 0), radius: (R, 0.35), stroke: (dash: "dashed", thickness: 0.6pt))
  let (rv, yv) = (R * calc.sin(t), R * calc.cos(t))
  circle((0, yv), radius: (rv, 0.35 * rv), stroke: 2pt + mau.cam)
  content((rv + 0.1, yv + 0.05), text(fill: mau.cam, $dif q$), anchor: "west")
  line((0, 0), (rv, yv), stroke: dut)
  line((0, 0), (0, R), stroke: 0.5pt)
  goc((0, 0), 0.5, 90deg - t, 90deg, ten: $theta$, rt: 0.15)
  mt((0, 0.06), (0, 0.85), ten: $arrow(T)$, c: mau.xanh, vt: "west")
  mt((0, -0.06), (0, -0.85), ten: $arrow(F)_e = Q arrow(E)$, vt: "east")
  diem((0, 0), r: 0.08)
})

// Bài 1.17 (đề): thanh trên trục x, điểm P trên trục y.
#let _thanh-1-17(ve-ve) = hinh({
  import draw: *
  let (x1, x2, h) = (0.8, 3.0, 2.2)
  truc(x: (0, 3.6), y: (0, 3.4))
  content((-0.15, -0.18), $O$)
  rect((x1, -0.06), (x2, 0.06), fill: nen.cam, stroke: 0.6pt + mau.cam)
  nhan((x1, -0.06), $x_1$)
  nhan((x2, -0.06), $x_2$)
  diem((0, h), ten: $P$, vt: "north-east")
  ve-ve(x1, x2, h)
})
#let ve-de-thanh-1-17 = _thanh-1-17((x1, x2, h) => {
  import draw: *
  for x in (x1, x2) { line((0, h), (x, 0), stroke: dut) }
  let (t1, t2) = (calc.atan2(h, x1), calc.atan2(h, x2))
  goc((0, h), 1.2, -90deg, -90deg + t1)
  goc((0, h), 0.6, -90deg, -90deg + t2)
  content((0.26, h - 1.42), $theta_1$)
  content((0.47, h - 0.66), $theta_2$)
  kc((0, 0), (0, h), $y$, d: 0.35, ext: false)
  kc((x1, -0.55), (x2, -0.55), $l$, d: 0, ext: false)
  content((1.9, 0.3), $lambda, Q$)
})
#let ve-giai-thanh-1-17 = _thanh-1-17((x1, x2, h) => {
  import draw: *
  let x = 2.0
  rect((x - 0.1, -0.08), (x + 0.1, 0.08), fill: mau.cam, stroke: none)
  nhan((x, -0.08), $dif q$)
  line((x, 0), (0, h), stroke: dut)
  content((1.15, 1.25), $r$)
  let l = calc.sqrt(x * x + h * h)
  let e = (-0.95 * x / l, h + 0.95 * h / l)
  line((e.at(0), h), e, (0, e.at(1)), stroke: dut)
  mt((0, h), e, ten: $dif arrow(E)$, vt: "north-west")
  mt((0, h), (e.at(0), h), ten: $dif E_x$, w: 0.8pt, vt: "south")
  mt((0, h), (0, e.at(1)), ten: $dif E_y$, w: 0.8pt, vt: "east")
})

// Bài 1.18: hai quả cầu treo; hien-luc thêm sơ đồ lực.
#let _hai-cau-1-18(hien-luc) = hinh({
  import draw: *
  let (L, t) = (2.4, 25deg)
  let p = (L * calc.sin(t), -L * calc.cos(t))
  tran((-1.0, 0), (1.0, 0))
  line((0, 0), (0, p.at(1) - 0.2), stroke: dut)
  for s in (-1, 1) {
    let q = (s * p.at(0), p.at(1))
    line((0, 0), q, stroke: 0.7pt + mau.luc)
    if hien-luc {
      let (P, F) = (1.0, calc.tan(t))
      line((q.at(0) + s * F, q.at(1)), (q.at(0) + s * F, q.at(1) - P), (q.at(0), q.at(1) - P), stroke: dut)
      mt(q, (q.at(0) - s * F, q.at(1) + P), ten: $arrow(T)$, c: mau.xanh, vt: if s < 0 { "east" } else { "west" })
      mt(q, (q.at(0) + s * F, q.at(1)), ten: $arrow(F)_e$, vt: "north")
      mt(q, (q.at(0), q.at(1) - P), ten: $m arrow(g)$, c: mau.luc, vt: "south")
    } else {
      content((s * (p.at(0) / 2 + 0.2), p.at(1) / 2), $L$)
      nhan(q, if s < 0 { $q_1$ } else { $q_2$ }, vt: if s < 0 { "west" } else { "east" }, r: 0.18)
    }
    dt(q, dau: none, r: 0.12)
  }
  goc((0, 0), 0.6, -90deg - t, -90deg, ten: $theta$, rt: 0.15)
  goc((0, 0), 0.6, -90deg, -90deg + t, ten: $theta$, rt: 0.15)
  if not hien-luc { kc((-p.at(0), p.at(1) - 0.2), (p.at(0), p.at(1) - 0.2), $r$, d: -0.15) }
})
#let ve-de-hai-cau-1-18 = _hai-cau-1-18(false)
#let ve-giai-hai-cau-1-18 = _hai-cau-1-18(true)

// Bài 1.19 (đề): hai quả cầu treo trong không khí và trong chất lỏng.
#let ve-de-hai-cau-1-19 = hinh({
  import draw: *
  let L = 1.7
  for (x0, a, ten) in ((0, 30deg, $alpha_1$), (3.4, 27deg, $alpha_2$)) {
    if x0 > 0 {
      rect((x0 - 1.3, -1.95), (x0 + 1.3, -0.35), fill: rgb(186, 230, 253, 55%), stroke: 0.5pt + rgb("#0284c7"))
      content((x0, -2.15), [Chất lỏng $epsilon, rho_2$])
    } else { content((x0, -2.15), [Không khí]) }
    tran((x0 - 0.7, 0), (x0 + 0.7, 0), n: 5)
    for s in (-1, 1) {
      let q = (x0 + s * L * calc.sin(a), -L * calc.cos(a))
      line((x0, 0), q, stroke: 0.7pt)
      dt(q, dau: none, r: 0.11)
    }
    goc((x0, 0), 0.5, -90deg - a, -90deg + a, ten: ten, rt: 0.2)
  }
})

// Bài 1.19 (lời giải): lực trên một quả cầu trong chất lỏng.
#let ve-giai-hai-cau-1-19 = hinh({
  import draw: *
  let (t, P, FA) = (27deg, 1.4, 0.44)
  let F2 = (P - FA) * calc.tan(t)
  let q = (0, 0)
  line((-1.1 * calc.sin(t) * 2, 2.2 * calc.cos(t)), q, stroke: 0.6pt)
  content((-0.95, 2.1), text(size: 7pt, [điểm treo]))
  mt(q, (-F2, P - FA), ten: $arrow(T)$, c: mau.xanh, vt: "west")
  mt((0.08, 0), (0.08, FA), ten: $arrow(F)_A$, c: mau.luc, vt: "east")
  mt(q, (F2, 0), ten: $arrow(F)_2$, vt: "east")
  mt((0, 0), (0, -P), ten: $arrow(P)$, c: mau.dam, vt: "east")
  dt(q, dau: none, r: 0.12)
})

// Bài 1.20 (đề): phân bố điện tích đối xứng cầu.
#let ve-de-mat-cau-1-20 = hinh({
  import draw: *
  circle((0, 0), radius: 1.6, fill: gradient.radial(rgb("#fdba74"), rgb("#fff7ed")), stroke: none)
  circle((0, 0), radius: 1.0, stroke: dut)
  diem((0, 0), ten: $O$, vt: "south-west")
  line((0, 0), (0.71, 0.71), stroke: 0.6pt)
  content((0.25, 0.48), $r$)
  diem((0.71, 0.71), ten: $P$, vt: "north-east")
  content((0, -1.85), $rho = rho_0 e^(-alpha r^3)$)
})

// Bài 1.20 (lời giải): E(r) với rho0/(3 eps0) = alpha = 1.
#let ve-giai-do-thi-1-20 = hinh({
  import draw: *
  let (sx, sy) = (1.25, 3.0)
  let f(r) = if r < 1e-6 { 0 } else { (1 - calc.exp(-r * r * r)) / (r * r) }
  let tl(pts) = pts.map(p => (p.at(0) * sx, p.at(1)))
  truc(x: (0, 4.4), y: (0, 2.6), nx: $r$, ny: $E$)
  content((-0.15, -0.18), $O$)
  line(..tl(ham(r => sy * f(r), 0, 3.4, n: 80)), stroke: 1.3pt + mau.do)
  let tiem-can = (paint: mau.luc, dash: "dashed", thickness: 0.8pt)
  line(..tl(ham(r => r * sy, 0, 0.8)), stroke: tiem-can)
  line(..tl(ham(r => sy / (r * r), 1.45, 3.4)), stroke: tiem-can)
  content((0.95, 2.45), text(fill: mau.luc, $E prop r$), anchor: "east")
  content((3.5, 0.75), text(fill: mau.luc, $E prop 1/r^2$))
})

// Bài 1.21: quả cầu tích điện có hốc cầu lệch tâm.
#let _cau-hoc-1-21(ve-ve) = hinh({
  import draw: *
  circle((0, 0), radius: 1.9, fill: nen.luc, stroke: 0.8pt + mau.luc)
  for p in ((-1.1, 0.8), (-0.6, 1.3), (0.1, 1.55), (-1.4, -0.2), (-1.0, -1.1), (-0.2, -1.55), (0.7, -1.45), (1.7, -0.6), (1.5, 0.95), (-0.55, 0.3)) {
    content(p, text(fill: mau.luc, $+$))
  }
  circle((0.9, 0), radius: 0.8, fill: white, stroke: 0.8pt + mau.xanh)
  diem((0, 0), ten: $O$, vt: "south-west")
  diem((0.9, 0), ten: $O'$, vt: "south-east")
  ve-ve()
})
#let ve-de-cau-hoc-1-21 = _cau-hoc-1-21(() => {
  mt((0, 0), (0.86, 0), c: black, w: 0.8pt)
  draw.content((0.45, 0.17), $arrow(a)$)
  draw.content((-0.75, -0.45), $rho$)
})
#let ve-giai-cau-hoc-1-21 = _cau-hoc-1-21(() => {
  let (O2, M) = ((0.9, 0), (1.2, 0.45))
  mt((0, 0), (0.86, 0), c: black, w: 0.8pt)
  draw.content((0.45, -0.17), $arrow(a)$)
  mt((0, 0), M, c: mau.tim, w: 0.8pt)
  draw.content((0.5, 0.42), text(fill: mau.tim, $arrow(r)$))
  mt(O2, M, c: mau.tim, w: 0.8pt, dash: "dashed")
  draw.content((1.24, 0.17), text(fill: mau.tim, $arrow(r)'$))
  for y in (-0.36, -0.6) { mt((0.75, y), (1.25, y), w: 0.9pt) }
  draw.content((0.68, -0.48), text(fill: mau.do, $arrow(E)$), anchor: "east")
  diem(M, ten: $M$, vt: "north")
})

// Bài 1.22 (đề): quả cầu có mật độ tăng theo bán kính.
#let ve-de-qua-cau-1-22 = hinh({
  import draw: *
  circle((0, 0), radius: 1.4, fill: gradient.radial(rgb("#fff7ed"), rgb("#fb923c")), stroke: 0.8pt + mau.cam)
  diem((0, 0), ten: $O$, vt: "south-west")
  line((0, 0), (1.4 * calc.cos(30deg), 1.4 * calc.sin(30deg)), stroke: 0.6pt)
  content((0.6, 0.55), $R$)
  content((0, -1.7), $rho = rho_s r\/R$)
})

// Bài 1.22 (lời giải): E tăng như r^2 bên trong, giảm như 1/r^2 bên ngoài.
#let ve-giai-do-thi-1-22 = hinh({
  import draw: *
  let (sx, sy) = (1.15, 1.7)
  truc(x: (0, 4.0), y: (0, 2.2), nx: $r$, ny: $E$)
  content((-0.15, -0.18), $O$)
  line((sx, 0), (sx, sy), (0, sy), stroke: dut)
  line(..ham(x => sy * x * x, 0, 1).map(p => (p.at(0) * sx, p.at(1))), stroke: 1.3pt + mau.xanh)
  line(..ham(x => sy / (x * x), 1, 3.3).map(p => (p.at(0) * sx, p.at(1))), stroke: 1.3pt + mau.do)
  nhan((sx, 0), $R$)
  nhan((0, sy), $(abs(rho_s) R)/(4 epsilon_0)$, vt: "west")
  content((0.55, 1.0), text(fill: mau.xanh, $prop r^2$))
  content((2.7, 0.75), text(fill: mau.do, $prop 1/r^2$))
})

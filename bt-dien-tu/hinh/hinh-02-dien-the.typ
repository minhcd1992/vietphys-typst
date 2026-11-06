// Hình CeTZ cho Phần 1, mục 2: Điện thế.
#import "cong-cu.typ": *

// Các đường sức nằm ngang hướng sang phải, nhãn E ở góc trên.
#let _truong-ngang(x0, x1, ys) = {
  for y in ys { mt((x0, y), (x1, y), c: luma(65%), w: 0.6pt) }
  draw.content((x1 - 0.15, ys.last() + 0.22), text(fill: luma(45%), $arrow(E)$))
}

// Bài 2.1: màng tế bào, ion Na+ đi từ mặt trong ra mặt ngoài.
#let _mang-2-1(ve-ve) = hinh({
  import draw: *
  ban((-2, 1), (2, 1.2), "+", n: 7)
  ban((-2, -1.2), (2, -1), "-", n: 7)
  nhan((0, 1.2), text(fill: mau.do, [Mặt ngoài, $V_2$]), vt: "north")
  nhan((0, -1.2), text(fill: mau.xanh, [Mặt trong, $V_1$]))
  ve-ve()
  circle((0, 0), radius: 0.22, fill: nen.vang, stroke: 0.8pt + mau.vang)
  content((0, 0), text(size: 7pt, $"Na"^+$))
})
#let ve-de-mang-te-bao-2-1 = _mang-2-1(() => {
  mt((0.22, 0.25), (0.22, 0.7), c: mau.luc, ten: [đưa ra], vt: "east")
  kc((2, -1), (2, 1), $Delta V = 90 thin "mV"$, d: -0.3)
})
#let ve-giai-mang-te-bao-2-1 = _mang-2-1(() => {
  for x in (-1.4, 1.4) { mt((x, 1), (x, -1), c: luma(65%), w: 0.6pt) }
  draw.content((1.7, 0), text(fill: luma(45%), $arrow(E)$))
  mt((0, 0.22), (0, 0.62), ten: $arrow(F)_"ngoài"$, vt: "east")
  mt((0, -0.22), (0, -0.62), ten: $arrow(F)_"điện"$, c: mau.xanh, vt: "east")
})

// Bài 2.2: điện tích q > 0 dời từ A đến B cùng chiều E.
#let ve-de-dien-tich-d-2-2 = hinh({
  import draw: *
  _truong-ngang(-2.2, 2.2, (0.7,))
  dt((-1.3, 0), ten: $q$, vt: "north")
  nhan((-1.3, -0.16), $A$)
  diem((1.2, 0), ten: $B$)
  kc((-1.3, -0.7), (1.2, -0.7), $d$, d: 0)
})
#let ve-giai-dien-tich-d-2-2 = hinh({
  import draw: *
  _truong-ngang(-2.2, 2.2, (-0.8, 0.8))
  for (x, t) in ((-1.3, $V_A$), (1.2, $V_B$)) {
    line((x, -1.0), (x, 1.1), stroke: (paint: mau.tim, dash: "dashed", thickness: 0.6pt))
    nhan((x, 1.1), text(fill: mau.tim, t), vt: "north")
  }
  diem((-1.3, 0), ten: $A$, vt: "south-west")
  diem((1.2, 0), ten: $B$, vt: "south-east")
  line((-1.3, 0), (1.2, 0), stroke: (dash: "dotted", thickness: 0.6pt))
  mt((-0.6, 0), (0.3, 0), ten: $arrow(F) = q arrow(E)$, vt: "north")
  dt((-0.6, 0), r: 0.13)
  content((0, -1.4), $V_A > V_B => W_A > W_B$)
})

// Bài 2.3: electron bay cùng chiều đường sức, bị hãm.
#let ve-de-electron-ham-2-3 = hinh({
  import draw: *
  _truong-ngang(-2, 2.2, (-0.5, 0.6))
  mt((-1.2, 0), (-0.3, 0), ten: $arrow(v)_0$, c: mau.luc, vt: "north")
  dt((-1.2, 0), dau: "-", r: 0.13, ten: $e$)
})
#let ve-giai-electron-ham-2-3 = hinh({
  import draw: *
  _truong-ngang(-2, 2.2, (0.6,))
  line((-1.2, 0), (1.2, 0), stroke: (dash: "dotted", thickness: 0.6pt))
  mt((-1.2, 0.05), (-0.4, 0.05), ten: $arrow(v)_0$, c: mau.luc, vt: "north")
  mt((-1.2, -0.05), (-2.0, -0.05), ten: $arrow(F) = -e arrow(E)$, vt: "south")
  dt((-1.2, 0), dau: "-", r: 0.13)
  circle((1.2, 0), radius: 0.13, stroke: (paint: mau.xanh, dash: "dashed", thickness: 0.6pt))
  nhan((1.2, 0.13), $v = 0$, vt: "north")
  kc((-1.2, -0.5), (1.2, -0.5), $s$, d: 0)
})

// Bài 2.4: tam giác ABC vuông tại A trong điện trường đều hướng từ B tới A.
#let _tam-giac-2-4(ve-ve, ys: (-0.5, 1.3, 2.9)) = hinh({
  import draw: *
  let (B, A, C) = ((0, 0), (1.5, 0), (1.5, 2.6))
  _truong-ngang(-0.5, 3.0, ys)
  line(B, A, C, close: true, stroke: 0.8pt)
  rect((1.35, 0), (1.5, 0.15), stroke: 0.5pt)
  goc(B, 0.45, 0deg, 60deg, ten: $60 degree$, rt: 0.3)
  content((0.62, 1.68), $6 thin "cm"$, anchor: "east")
  diem(B, ten: $B$, vt: "west")
  diem(A, ten: $A$, vt: "south-west")
  ve-ve(A, C)
})
#let ve-de-tam-giac-abc-2-4 = _tam-giac-2-4((A, C) => diem(C, ten: $C$, vt: "east"))
#let ve-giai-tam-giac-abc-2-4 = _tam-giac-2-4((A, C) => {
  dt(C, r: 0.13, ten: $q$, vt: "east")
  let (e, eq) = ((1.33, 0), (0, -1.0))
  draw.line((A.at(0) + e.at(0), 0), (A.at(0) + e.at(0), eq.at(1)), (A.at(0), eq.at(1)), stroke: dut)
  mt(A, (A.at(0) + e.at(0), 0), ten: $arrow(E)$, vt: "north")
  mt(A, (A.at(0), eq.at(1)), ten: $arrow(E)_q$, c: mau.xanh, vt: "west")
  mt(A, (A.at(0) + e.at(0), eq.at(1)), ten: $arrow(E)_"tổng"$, c: mau.tim, w: 1.5pt, vt: "east")
}, ys: (-1.6, 1.3, 2.9))

// Bài 2.5: hạt dương tăng tốc từ bản dương sang bản âm.
#let _hai-ban-2-5(ve-ve) = hinh({
  import draw: *
  ban((-0.1, -1.1), (0.08, 1.1), "+", n: 4)
  ban((2.42, -1.1), (2.6, 1.1), "-", n: 4)
  for y in (-0.7, 0.7) { mt((0.08, y), (2.42, y), c: luma(65%), w: 0.6pt) }
  content((1.25, 0.95), text(fill: luma(45%), $arrow(E)$))
  kc((0, -1.1), (2.5, -1.1), $d = 2 thin "cm"$, d: -0.25)
  ve-ve()
})
#let ve-de-hai-ban-tang-toc-2-5 = _hai-ban-2-5(() => {
  dt((0.25, 0), r: 0.12, ten: $v_0 = 0$, vt: "east")
})
#let ve-giai-hai-ban-tang-toc-2-5 = _hai-ban-2-5(() => {
  draw.line((0.25, 0), (2.25, 0), stroke: (dash: "dotted", thickness: 0.6pt))
  mt((0.37, 0), (1.15, 0), ten: $arrow(F) = q arrow(E)$, vt: "north")
  dt((0.25, 0), r: 0.12)
  mt((1.35, -0.3), (2.15, -0.3), ten: $arrow(v)$, c: mau.luc, vt: "south")
})

// Bài 2.6: hạt alpha bay thẳng vào hạt nhân vàng.
#let ve-de-rutherford-2-6 = hinh({
  import draw: *
  dt((0, 0), r: 0.25, ten: $+2e$, vt: "north")
  mt((0.3, 0), (1.1, 0), ten: $arrow(v)_0$, c: mau.luc, vt: "north")
  line((1.2, 0), (2.8, 0), stroke: dut)
  dt((3.5, 0), r: 0.55)
  nhan((3.5, 0.55), $+79e$, vt: "north")
})
#let ve-giai-rutherford-2-6 = hinh({
  import draw: *
  dt((0.6, 0), r: 0.25)
  nhan((0.6, 0.25), $v = 0$, vt: "north")
  mt((0.3, 0), (-0.5, 0), ten: $arrow(F)_C$, vt: "north")
  dt((2.6, 0), r: 0.55)
  nhan((2.6, 0.55), $+79e$, vt: "north")
  kc((0.6, -0.6), (2.6, -0.6), $r_"min"$, d: 0)
  line((0.6, -0.3), (0.6, -0.7), stroke: 0.4pt + luma(60%))
  line((2.6, -0.6), (2.6, -0.7), stroke: 0.4pt + luma(60%))
})

// Trục z thẳng đứng và một vành/đĩa nằm ngang tâm O.
#let _truc-z(h) = {
  draw.line((0, -0.4), (0, h), stroke: 0.5pt + luma(45%), mark: (end: "stealth", fill: luma(45%), scale: 0.5))
  nhan((0, h), $z$, vt: "north", r: 0.05)
}

// Bài 2.7: vành tròn tích điện, điểm P trên trục.
#let _vanh-2-7(ve-ve) = hinh({
  import draw: *
  let (R, z) = (1.5, 1.8)
  _truc-z(2.6)
  circle((0, 0), radius: (R, 0.45), stroke: 2pt + mau.cam)
  diem((0, 0), ten: $O$, vt: "south-west")
  line((0, 0), (R, 0), stroke: 0.5pt)
  content((R / 2, 0.15), $R$)
  diem((0, z), ten: $P$, vt: "west")
  ve-ve(R, z)
})
#let ve-de-vanh-tron-2-7 = _vanh-2-7((R, z) => {
  kc((0, 0), (0, z), $z$, d: -0.25, ext: false)
  draw.content((-R - 0.1, 0.3), text(fill: mau.cam, $lambda$))
})
#let ve-giai-vanh-tron-2-7 = _vanh-2-7((R, z) => {
  draw.line((R, 0), (0, z), stroke: 0.7pt + mau.do)
  draw.content((R / 2 + 0.2, z / 2 + 0.15), text(fill: mau.do, $sqrt(R^2 + z^2)$), anchor: "west")
  draw.circle((R, 0), radius: 0.08, fill: mau.cam, stroke: none)
  nhan((R, 0), $dif q$, vt: "east")
})

// Bài 2.8 và 2.17: đĩa tích điện (đủ hoặc một phần tư), vành vi phân bán kính s.
#let _dia(goc-dia, vanh: false) = hinh({
  import draw: *
  let (R, k, z) = (1.6, 0.32, 1.9)
  let p(r, a) = (r * calc.cos(a), k * r * calc.sin(a))
  _truc-z(2.6)
  let du = goc-dia.at(1) - goc-dia.at(0) >= 360deg
  let vien = range(41).map(i => p(R, goc-dia.at(0) + (goc-dia.at(1) - goc-dia.at(0)) * i / 40))
  if not du { circle((0, 0), radius: (R, k * R), stroke: (paint: mau.xanh, dash: "dashed", thickness: 0.5pt)) }
  line(..if du { vien } else { ((0, 0),) + vien }, close: true, fill: nen.xanh, stroke: 0.8pt + mau.xanh)
  if vanh {
    line(..range(41).map(i => p(0.95, goc-dia.at(0) + (goc-dia.at(1) - goc-dia.at(0)) * i / 40)), stroke: 3pt + mau.cam.transparentize(30%))
    let q = p(0.95, goc-dia.at(0) + 0.6 * (goc-dia.at(1) - goc-dia.at(0)))
    line(q, (0, z), stroke: dut)
    content((1.3, -0.65), text(fill: mau.cam, [vành $s$, $dif s$]))
  } else {
    line((0, 0), (R, 0), stroke: 0.5pt)
    content((R * 0.65, 0.13), $R$)
    content(if du { (-0.9, -0.05) } else { (1.0, -0.17) }, $sigma$)
    kc((0, 0), (0, z), $z$, d: if du { -0.25 } else { 0.25 }, ext: false)
  }
  diem((0, 0), ten: $O$, vt: if du { "south-west" } else { "south" })
  diem((0, z), ten: $P$, vt: if du { "west" } else { "east" })
})
#let ve-de-dia-tron-2-8 = _dia((0deg, 360deg))
#let ve-giai-dia-tron-2-8 = _dia((0deg, 360deg), vanh: true)
#let ve-de-phan-tu-dia-2-17 = _dia((-45deg, 45deg))
#let ve-giai-phan-tu-dia-2-17 = _dia((-45deg, 45deg), vanh: true)

// Bài 2.9: thanh trên trục z từ -d đến d; electron đi từ 4d về 3d.
#let ve-de-thanh-truc-z-2-9 = hinh({
  import draw: *
  _truc-z(3.0)
  rect((-0.08, -0.6), (0.08, 0.6), fill: nen.cam, stroke: 0.6pt + mau.cam)
  for (y, t) in ((-0.6, $-d$), (0.6, $d$), (1.8, $3d$), (2.4, $4d$)) {
    line((-0.08, y), (0.08, y), stroke: 0.6pt)
    nhan((0.1, y), t, vt: "east")
  }
  nhan((-0.08, 0), $+Q$, vt: "west")
  dt((0, 2.4), dau: "-", r: 0.1)
  mt((-0.35, 2.4), (-0.35, 1.85), c: mau.luc, w: 0.9pt)
  content((-0.45, 2.1), text(fill: mau.luc, $e^-$), anchor: "east")
})
#let ve-giai-thanh-truc-z-2-9 = hinh({
  import draw: *
  _truc-z(3.0)
  rect((-0.08, -0.6), (0.08, 0.6), fill: nen.cam, stroke: 0.6pt + mau.cam)
  rect((-0.1, 0.15), (0.1, 0.3), fill: mau.cam, stroke: none)
  nhan((-0.1, 0.22), $dif s$, vt: "west")
  diem((0, 2.2), ten: $z$, vt: "west")
  kc((0.1, 0.22), (0.1, 2.2), $z - s$, d: -0.6)
  for (y, t) in ((-0.6, $-d$), (0.6, $d$)) { nhan((0.1, y), t, vt: "east") }
})

// Bài 2.10: hạt nhân tách thành hai hạt con tiếp xúc nhau.
#let _cau(p, r, t) = {
  draw.circle(p, radius: r, fill: nen.do, stroke: 0.8pt + mau.do)
  draw.content(p, text(size: 7pt, t))
}
#let ve-de-phan-hach-u-2-10 = hinh({
  import draw: *
  _cau((0, 0), 0.63, $+92e$)
  nhan((0, -0.63), $R$)
  mt((0.8, 0), (1.5, 0), c: mau.dam, w: 1pt)
  _cau((2.2, 0), 0.5, $+46e$)
  _cau((3.2, 0), 0.5, $+46e$)
  kc((2.2, -0.75), (3.2, -0.75), $2r$, d: 0)
})
#let ve-giai-phan-hach-u-2-10 = hinh({
  import draw: *
  _cau((0, 0), 0.5, $+46e$)
  _cau((1.0, 0), 0.5, $+46e$)
  mt((-0.5, 0), (-1.3, 0), ten: $arrow(F)_C$, vt: "north")
  mt((1.5, 0), (2.3, 0), ten: $arrow(F)_C$, vt: "north")
  kc((0, -0.75), (1.0, -0.75), $2r$, d: 0)
})

// Bài 2.11 (đề): mặt đẳng thế là ellipsoid tròn xoay quanh Oz.
#let ve-de-ellipsoid-2-11 = hinh({
  import draw: *
  circle((0, 0), radius: (1.4, 0.95), fill: nen.xanh.transparentize(30%), stroke: 0.8pt + mau.xanh)
  circle((0, 0), radius: (1.4, 0.35), stroke: (paint: mau.xanh, dash: "dashed", thickness: 0.5pt))
  line((0, 0), (0, 1.5), stroke: 0.5pt, mark: (end: "stealth", fill: black, scale: 0.5))
  line((0, 0), (1.9, 0), stroke: 0.5pt, mark: (end: "stealth", fill: black, scale: 0.5))
  line((0, 0), (-0.8, -0.8), stroke: 0.5pt, mark: (end: "stealth", fill: black, scale: 0.5))
  nhan((0, 1.5), $z$, vt: "north")
  nhan((1.9, 0), $y$, vt: "east")
  nhan((-0.8, -0.8), $x$, vt: "south-west")
  content((0.75, 0.42), text(fill: mau.xanh, $V = V_0$))
})
// Bài 2.11 (lời giải): mặt cắt xOz, a < b; E vuông góc mặt đẳng thế và hướng vào tâm.
#let ve-giai-ellipsoid-2-11 = hinh({
  import draw: *
  truc(o: (0, 0), x: (-1.9, 2.1), y: (-1.3, 1.5), nx: $x$, ny: $z$)
  for (s, t) in ((1, $V_1$), (1.5, $V_2$)) {
    circle((0, 0), radius: (1.15 * s, 0.75 * s), stroke: 0.8pt + mau.xanh)
    content((1.15 * s * 0.72 + 0.12, 0.75 * s * 0.69 + 0.1), text(fill: mau.xanh, t))
  }
  for a in (20deg, 110deg, 200deg, 290deg) {
    let p = (1.725 * calc.cos(a), 1.125 * calc.sin(a))
    let n = (calc.cos(a) / 1.725, calc.sin(a) / 1.125)
    let l = calc.sqrt(n.at(0) * n.at(0) + n.at(1) * n.at(1))
    mt(p, (p.at(0) - 0.5 * n.at(0) / l, p.at(1) - 0.5 * n.at(1) / l), w: 1pt)
  }
  content((1.95, 1.5), text(fill: mau.do, $arrow(E) = -nabla V$))
})

// Bài 2.12: hai bản vuông song song.
#let ve-de-hai-ban-vuong-2-12 = hinh({
  import draw: *
  for (x, dau) in ((0, "-"), (1.5, "+")) {
    let (c, f) = if dau == "+" { (mau.do, nen.do) } else { (mau.xanh, nen.xanh) }
    line((x, 0), (x + 0.6, 0.5), (x + 0.6, 2.0), (x, 1.5), close: true, fill: f, stroke: 0.7pt + c)
    content((x + 0.3, 1.0), text(fill: c, if dau == "+" { $+$ } else { $-$ }))
  }
  kc((0, 0), (1.5, 0), $d = 5 thin "mm"$, d: -0.25)
  kc((2.1, 0.5), (2.1, 2.0), $a = 3 thin "cm"$, d: -0.25)
  content((1.05, 2.3), $U = 25 thin "V"$)
})
#let ve-giai-hai-ban-vuong-2-12 = hinh({
  import draw: *
  ban((-0.1, -1), (0.08, 1), "-", n: 4)
  ban((2.42, -1), (2.6, 1), "+", n: 4)
  for y in (-0.65, 0.65) { mt((2.42, y), (0.08, y), c: luma(65%), w: 0.6pt) }
  content((1.25, 0.88), text(fill: luma(45%), $arrow(E)$))
  line((0.25, 0), (2.25, 0), stroke: (dash: "dotted", thickness: 0.6pt))
  mt((0.37, 0), (1.25, 0), ten: $arrow(F) = -e arrow(E)$, c: mau.xanh, vt: "north")
  dt((0.25, 0), dau: "-", r: 0.12)
  content((1.25, -1.3), [$v = sqrt(2 e U\/m_e)$ tại bản dương])
})

// Bài 2.13: ba điểm M, N, P trên ba mặt đẳng thế quanh q.
#let _ba-diem-2-13(ve-ve) = hinh({
  import draw: *
  let pts = (M: (1.0, 70deg, "north-east"), N: (0.5, 160deg, "north-west"), P: (1.5, 320deg, "south-east"))
  for r in (0.5, 1.0, 1.5) { circle((0, 0), radius: r, stroke: dut) }
  let xy = pts.pairs().map(((k, (r, a, vt))) => (k, (r * calc.cos(a), r * calc.sin(a)), vt))
  ve-ve(xy.map(((k, p, vt)) => p))
  for (k, p, vt) in xy { diem(p, ten: eval("$" + k + "$"), vt: vt) }
  dt((0, 0), r: 0.12)
  nhan((0, 0.12), $q$, vt: "north")
})
#let ve-de-tam-giac-mnp-2-13 = _ba-diem-2-13(_ => {
  draw.content((0, -1.75), text(size: 7pt, [$r_N = 5$, $r_M = 10$, $r_P = 15 thin "cm"$]))
})
#let ve-giai-tam-giac-mnp-2-13 = _ba-diem-2-13(ps => {
  let (M, N, P) = ps
  for (a, b) in ((M, N), (N, P), (P, M)) {
    let m = (0.55 * a.at(0) + 0.45 * b.at(0), 0.55 * a.at(1) + 0.45 * b.at(1))
    draw.line(a, b, stroke: 0.8pt + mau.tim)
    draw.line(a, m, stroke: 0.8pt + mau.tim, mark: (end: "stealth", fill: mau.tim, scale: 0.5))
  }
  draw.content((0, -1.8), text(fill: mau.tim, $A_(M N P M) = q_0 (V_M - V_M) = 0$))
})

// Bài 2.14: điện tích tập trung, trên cung tròn, trên cả đường tròn; P là tâm.
#let _x-2-14 = (0, 2.2, 4.6)
#let _ba-cau-hinh(R) = {
  import draw: *
  let x = _x-2-14
  diem((x.at(0), 0), ten: $P$, vt: "west")
  kc((x.at(0), 0), (x.at(0) + R, 0), $R$, d: -0.35)
  dt((x.at(0) + R, 0), r: 0.1, ten: $Q$, vt: "east")
  arc((x.at(1), 0), start: -40deg, stop: 40deg, radius: R, anchor: "origin", stroke: 1.8pt + mau.do)
  for a in (-40deg, 40deg) { line((x.at(1), 0), (x.at(1) + R * calc.cos(a), R * calc.sin(a)), stroke: dut) }
  goc((x.at(1), 0), 0.35, -40deg, 40deg, ten: $alpha$, rt: 0.15)
  diem((x.at(1), 0), ten: $P$, vt: "west")
  circle((x.at(2), 0), radius: R, stroke: 1.8pt + mau.do)
  diem((x.at(2), 0), ten: $P$, vt: "south")
  for (i, t) in ((0, [(a)]), (1, [(b)]), (2, [(c)])) { content((x.at(i) + 0.4, -1.3), t) }
}
#let ve-de-ba-cau-hinh-2-14 = hinh({
  let x = _x-2-14
  _ba-cau-hinh(1.0)
  draw.line((x.at(2), 0), (x.at(2) + 0.71, 0.71), stroke: 0.5pt)
  draw.content((x.at(2) + 0.25, 0.5), $R$)
})
#let ve-giai-ba-cau-hinh-2-14 = hinh({
  _ba-cau-hinh(1.0)
  for xi in _x-2-14 { draw.content((xi + 0.4, 1.35), text(fill: mau.xanh, $V = k Q \/ R$)) }
})

// Bài 2.15: dây dài l, các điểm M, N trên đường kéo dài.
#let _day-2-15(ve-ve) = hinh({
  import draw: *
  line((-1.2, 0), (5.0, 0), stroke: 0.5pt + luma(45%), mark: (end: "stealth", fill: luma(45%), scale: 0.5))
  nhan((5.0, 0), $r$, vt: "east")
  ban((-0.8, -0.06), (0.8, 0.06), "+", n: 4)
  diem((0, 0), ten: $O$, vt: "north")
  for (x, t) in ((-0.8, $-l\/2$), (0.8, $l\/2$)) { nhan((x, -0.06), t) }
  ve-ve()
})
#let ve-de-thanh-keo-dai-2-15 = _day-2-15(() => {
  diem((2.4, 0), ten: $M$, vt: "north")
  diem((4.0, 0), ten: $N$, vt: "north")
  nhan((2.4, -0.05), $1.5 l$)
  nhan((4.0, -0.05), $2.5 l$)
  draw.arc((2.4, 0.35), start: 150deg, stop: 30deg, radius: 0.92, anchor: "origin", stroke: 0.7pt + mau.luc, mark: (end: "stealth", fill: mau.luc, scale: 0.5))
})
#let ve-giai-thanh-keo-dai-2-15 = _day-2-15(() => {
  draw.rect((0.45, -0.08), (0.65, 0.08), fill: mau.cam, stroke: none)
  nhan((0.55, 0.08), $dif x$, vt: "north")
  diem((2.4, 0), ten: $M$, vt: "north")
  kc((0.55, -0.55), (2.4, -0.55), $r - x$, d: 0)
  mt((2.45, 0), (3.4, 0), ten: $arrow(E)$, vt: "north")
})

// Bài 2.16: vòng dây bán kính a, điểm M trên trục cách tâm h.
#let _vong-2-16(ve-ve) = hinh({
  import draw: *
  _truc-z(2.4)
  circle((0, 0), radius: (1.3, 0.4), stroke: 1.8pt + mau.cam)
  diem((0, 0), ten: $O$, vt: "south-west")
  line((0, 0), (1.3, 0), stroke: 0.5pt)
  content((0.65, 0.15), $a$)
  diem((0, 1.0), ten: $M$, vt: "west")
  ve-ve()
})
#let ve-de-vong-day-2-16 = _vong-2-16(() => kc((0, 0), (0, 1.0), $h$, d: -0.25, ext: false))
#let ve-giai-vong-day-2-16 = _vong-2-16(() => {
  draw.line((0, 1.0), (1.3, 0), stroke: 0.7pt + mau.do)
  draw.content((0.8, 0.65), text(fill: mau.do, $5 thin "cm"$), anchor: "west")
  draw.content((0.15, 1.75), text(fill: mau.xanh, $V_M = k q \/ sqrt(a^2 + h^2)$), anchor: "west")
})

// Bài 2.18: hai trụ đồng trục (mặt cắt).
#let _hai-tru(r1, r2, ve-ve) = hinh({
  import draw: *
  circle((0, 0), radius: r2, fill: nen.xanh.transparentize(40%), stroke: 1.2pt + mau.xanh)
  circle((0, 0), radius: r1, fill: white, stroke: 1.2pt + mau.do)
  diem((0, 0), ten: $O$, vt: "south-west")
  ve-ve()
})
#let ve-de-hai-tru-2-18 = _hai-tru(0.5, 1.6, () => {
  draw.line((0, 0), (0.5 * calc.cos(60deg), 0.5 * calc.sin(60deg)), stroke: 0.5pt)
  draw.content((0.3, 0.1), $r_1$)
  draw.line((0, 0), (1.6 * calc.cos(-35deg), 1.6 * calc.sin(-35deg)), stroke: 0.5pt)
  draw.content((1.0, -0.4), $r_2$)
  draw.content((0, -1.85), $U = 450 thin "V"$)
})
#let ve-giai-hai-tru-2-18 = _hai-tru(0.5, 1.6, () => {
  draw.circle((0, 0), radius: 1.05, stroke: (paint: mau.cam, dash: "dashed", thickness: 0.7pt))
  for i in range(8) {
    let a = i * 45deg + 22.5deg
    mt((0.55 * calc.cos(a), 0.55 * calc.sin(a)), (1.5 * calc.cos(a), 1.5 * calc.sin(a)), w: 0.8pt)
  }
  draw.content((0, -1.85), text(fill: mau.cam, [mặt Gauss: $E = lambda\/(2 pi epsilon_0 r)$]))
})

// Bài 2.19: ống Geiger (đề: mặt cắt; lời giải: đồ thị E(r) tỉ lệ 1/r).
#let ve-de-geiger-2-19 = _hai-tru(0.08, 1.6, () => {
  draw.content((0, 0.25), text(size: 7pt, [dây $a$]))
  draw.line((0, 0), (1.6 * calc.cos(-40deg), 1.6 * calc.sin(-40deg)), stroke: 0.5pt)
  draw.content((0.95, -0.45), $b$)
  diem((1.07, 0), ten: none)
  mt((1.07, 0), (1.42, 0), ten: $arrow(E)$, w: 0.9pt, vt: "north")
  kc((0, -0.08), (1.07, -0.08), $r$, d: 0, ext: false)
})
#let ve-giai-geiger-2-19 = hinh({
  import draw: *
  let (sx, sy) = (2.0, 0.17)
  truc(x: (0, 4.1), y: (0, 2.6), nx: $r thin ("cm")$, ny: $E$)
  line(..ham(r => 1 / r, 0.07, 1.8).map(p => (p.at(0) * sx, p.at(1) * sy)), stroke: 1.3pt + mau.do)
  for (r, t) in ((1.2, $1.2$), (1.8, $b = 1.8$)) {
    line((r * sx, 0), (r * sx, sy / r), stroke: dut)
    nhan((r * sx, 0), t)
  }
  content((0.4, 2.3), text(fill: mau.do, [trường mạnh sát dây]), anchor: "west")
  content((2.6, 1.0), $E = U \/ (r ln(b\/a))$)
})

// Bài 2.20: hai vỏ cầu đồng tâm.
#let ve-de-hai-vo-cau-2-20 = hinh({
  import draw: *
  circle((0, 0), radius: 1.5, stroke: 1.2pt + mau.xanh)
  circle((0, 0), radius: 0.9, fill: nen.do.transparentize(40%), stroke: 1.2pt + mau.do)
  diem((0, 0), ten: $O$, vt: "south")
  content((0, 0.55), text(fill: mau.do, $R_1, q_1$))
  content((1.25, 1.25), text(fill: mau.xanh, $R_2, q_2$), anchor: "west")
  diem((1.2, 0), ten: $M$, vt: "north")
  diem((1.8, 0), ten: $N$, vt: "north")
  content((0.3, -1.8), [$O M = 4 thin "cm"$, $O N = 6 thin "cm"$])
})
// Bài 2.20 (lời giải): V(r) tính từ công thức từng miền, r tính bằng cm.
#let ve-giai-hai-vo-cau-2-20 = hinh({
  import draw: *
  let V(r) = if r <= 3 { 179.8 } else if r <= 5 { 8.99 * 6 / (r / 100) - 1618.2 } else { -8.99 * 3 / (r / 100) }
  let (sx, sy) = (0.38, 0.0042)
  line((0, 0), (4.3, 0), stroke: 0.5pt + luma(40%), mark: (end: "stealth", fill: luma(40%), scale: 0.5))
  line((0, -2.5), (0, 1.2), stroke: 0.5pt + luma(40%), mark: (end: "stealth", fill: luma(40%), scale: 0.5))
  nhan((4.3, 0), $r$, vt: "east")
  nhan((0, 1.2), $V$, vt: "north")
  line(..ham(V, 0, 11, n: 110).map(p => (p.at(0) * sx, p.at(1) * sy)), stroke: 1.3pt + mau.do)
  for (r, t) in ((3, $R_1$), (5, $R_2$)) {
    line((r * sx, 0), (r * sx, V(r) * sy), stroke: dut)
    nhan((r * sx, 0), t, vt: if r == 3 { "north-west" } else { "north" })
  }
  nhan((0, 179.8 * sy), $180 thin "V"$, vt: "west")
  nhan((5 * sx, -539.4 * sy), $-539 thin "V"$, vt: "south")
})

// Bài 2.21: hai quả cầu cùng điện thế, quả nhỏ có trường mặt lớn hơn.
#let _hai-qua-cau(truong) = hinh({
  import draw: *
  circle((0, 0), radius: 1.2, fill: nen.xam, stroke: 0.8pt + luma(40%))
  circle((3.1, 0), radius: 0.4, fill: nen.xam, stroke: 0.8pt + luma(40%))
  content((0, 0.15), [$A$])
  content((0, -0.3), $R_A = 3R$)
  content((3.1, 0), [$B$])
  if truong { content((3.1, -1.55), $R_B = R$) } else { nhan((3.1, -0.4), $R_B = R$) }
  if truong {
    for (c, R, l) in (((0, 0), 1.2, 0.3), ((3.1, 0), 0.4, 0.9)) {
      for i in range(8) {
        let a = i * 45deg
        mt((c.at(0) + R * calc.cos(a), R * calc.sin(a)), (c.at(0) + (R + l) * calc.cos(a), (R + l) * calc.sin(a)), w: 0.7pt)
      }
    }
    content((1.5, -2.0), $E_B = 3 E_A$)
  } else { content((1.5, -2.0), $V_A = V_B$) }
})
#let ve-de-hai-qua-cau-2-21 = _hai-qua-cau(false)
#let ve-giai-hai-qua-cau-2-21 = _hai-qua-cau(true)

// Bài 2.22 (đề): mật độ giảm tuyến tính từ tâm ra mặt.
#let ve-de-qua-cau-bien-thien-2-22 = hinh({
  import draw: *
  circle((0, 0), radius: 1.4, fill: gradient.radial(rgb("#f97316"), rgb("#fff7ed")), stroke: 0.8pt + mau.cam)
  diem((0, 0), ten: $O$, vt: "south-west")
  line((0, 0), (1.4 * calc.cos(30deg), 1.4 * calc.sin(30deg)), stroke: 0.6pt)
  content((0.6, 0.55), $R$)
  content((0, -1.7), $rho = rho_0 (1 - r/R)$)
})
// Bài 2.22 (lời giải): V theo kQ/R và E theo kQ/R², x = r/R.
#let ve-giai-qua-cau-bien-thien-2-22 = hinh({
  import draw: *
  let (sx, sy) = (1.2, 0.95)
  truc(x: (0, 4.9), y: (0, 2.3), nx: $r$, ny: [])
  let V(x) = if x <= 1 { 2 - 2 * x * x + x * x * x } else { 1 / x }
  let E(x) = if x <= 1 { 4 * x - 3 * x * x } else { 1 / (x * x) }
  line(..ham(V, 0, 3.2).map(p => (p.at(0) * sx, p.at(1) * sy)), stroke: 1.3pt + mau.xanh)
  line(..ham(E, 0, 3.2).map(p => (p.at(0) * sx, p.at(1) * sy)), stroke: (paint: mau.do, thickness: 1.3pt, dash: "dashed"))
  line((sx, 0), (sx, 1.33 * sy), stroke: dut)
  nhan((sx, 0), $R$)
  nhan((0, 2 * sy), $(2k Q)/R$, vt: "west")
  line((3.0, 1.75), (3.4, 1.75), stroke: 1.3pt + mau.xanh)
  content((3.5, 1.75), text(fill: mau.xanh, $V(r)$), anchor: "west")
  line((3.0, 1.4), (3.4, 1.4), stroke: (paint: mau.do, thickness: 1.3pt, dash: "dashed"))
  content((3.5, 1.4), text(fill: mau.do, $E(r)$), anchor: "west")
})

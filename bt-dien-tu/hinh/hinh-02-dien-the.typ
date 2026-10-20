// Tệp định nghĩa các sơ đồ, hình vẽ CeTZ dùng cho Phần 1 - Chương 2: Điện thế
#import "@preview/cetz:0.5.2": canvas, decorations, draw

// --------------------------------------------------------------------------
// Bài 2.1: Màng tế bào
// --------------------------------------------------------------------------
// Hình đề: Mặt trong màng âm, mặt ngoài dương, độ chênh 90 mV, ion Na+ dịch chuyển
#let ve-de-mang-te-bao-2-1 = canvas({
  import draw: *

  let w = 2.4
  let y-ngoai = 1.0
  let y-trong = -1.0

  // Vùng màng tế bào (lipid kép)
  rect((-w, y-trong), (w, y-ngoai), fill: rgb("#fef3c7").transparentize(40%), stroke: (paint: rgb("#d97706"), thickness: 0.8pt, dash: "dashed"))

  // Lớp mặt ngoài (phía trên, mang điện dương)
  rect((-w, y-ngoai - 0.12), (w, y-ngoai + 0.12), fill: rgb("#fee2e2"), stroke: 0.6pt + rgb("#ef4444"), radius: 2pt)
  for x in (-1.8, -1.0, -0.2, 0.6, 1.4, 2.0) {
    content((x, y-ngoai), text(size: 8pt, weight: "bold", fill: rgb("#dc2626"), $+$))
  }
  content((0, y-ngoai + 0.35), text(size: 7.5pt, fill: rgb("#b91c1c"), weight: "bold", [Mặt ngoài (dương)]))

  // Lớp mặt trong (phía dưới, mang điện âm)
  rect((-w, y-trong - 0.12), (w, y-trong + 0.12), fill: rgb("#dbeafe"), stroke: 0.6pt + rgb("#2563eb"), radius: 2pt)
  for x in (-1.8, -1.0, -0.2, 0.6, 1.4, 2.0) {
    content((x, y-trong), text(size: 9pt, weight: "bold", fill: rgb("#1d4ed8"), $-$))
  }
  content((0, y-trong - 0.35), text(size: 7.5pt, fill: rgb("#1d4ed8"), weight: "bold", [Mặt trong (âm)]))

  // Mũi tên đo chênh lệch điện thế
  line((w + 0.3, y-trong), (w + 0.3, y-ngoai), stroke: 0.6pt + rgb("#475569"), mark: (start: "stealth", end: "stealth", fill: rgb("#475569"), length: 0.12cm, width: 0.07cm))
  content((w + 0.95, (y-trong + y-ngoai) / 2), text(size: 7.5pt, fill: rgb("#334155"), weight: "bold", $Delta V = 90 thin "mV"$))

  // Chú thích màng tế bào
  content((-w - 0.05, 0), text(size: 7pt, fill: rgb("#b45309"), [Màng\ tế bào]), anchor: "east")

  // Ion Na+ ở mặt trong chuẩn bị dịch chuyển ra ngoài
  circle((0, y-trong + 0.35), radius: 0.22, fill: rgb("#f59e0b"), stroke: 0.8pt + rgb("#b45309"))
  content((0, y-trong + 0.35), text(size: 6.5pt, fill: white, weight: "bold", $"Na"^+$))

  // Mũi tên định hướng dịch chuyển
  line((0, y-trong + 0.65), (0, y-ngoai - 0.35), stroke: (paint: rgb("#059669"), thickness: 1.2pt), mark: (end: "stealth", fill: rgb("#059669"), length: 0.15cm, width: 0.08cm))
  content((0.45, 0), text(size: 7pt, fill: rgb("#059669"), weight: "bold", [Dịch chuyển]))
})

// Hình giải: Thể hiện điện trường màng E, lực điện F_dien và ngoại lực F_ngoai
#let ve-giai-mang-te-bao-2-1 = canvas({
  import draw: *

  let w = 2.0
  let y-ngoai = 1.1
  let y-trong = -1.1

  // Hai mặt màng tế bào
  rect((-w, y-ngoai - 0.1), (w, y-ngoai + 0.1), fill: rgb("#fee2e2"), stroke: 0.6pt + rgb("#ef4444"), radius: 2pt)
  content((-w + 0.3, y-ngoai), text(size: 8pt, weight: "bold", fill: rgb("#dc2626"), $+$))
  content((0, y-ngoai + 0.25), text(size: 7pt, fill: rgb("#b91c1c"), [$V_2$ (ngoài)]))

  rect((-w, y-trong - 0.1), (w, y-trong + 0.1), fill: rgb("#dbeafe"), stroke: 0.6pt + rgb("#2563eb"), radius: 2pt)
  content((-w + 0.3, y-trong), text(size: 9pt, weight: "bold", fill: rgb("#1d4ed8"), $-$))
  content((0, y-trong - 0.25), text(size: 7pt, fill: rgb("#1d4ed8"), [$V_1$ (trong)]))

  // Các đường sức điện trường E hướng từ ngoài vào trong (từ dương sang âm)
  for x in (-1.2, 1.2) {
    line((x, y-ngoai - 0.1), (x, y-trong + 0.1), stroke: (paint: rgb("#94a3b8"), thickness: 0.6pt), mark: (end: "stealth", fill: rgb("#94a3b8"), length: 0.12cm, width: 0.07cm))
  }
  content((1.45, 0), text(size: 7.5pt, fill: rgb("#64748b"), $arrow(E)$))

  // Ion Na+ ở giữa màng
  let ion = (0, 0)
  circle(ion, radius: 0.20, fill: rgb("#fef3c7"), stroke: 0.9pt + rgb("#d97706"))
  content(ion, text(size: 6.5pt, fill: rgb("#b45309"), weight: "bold", $"Na"^+$))

  // Vector lực điện F_dien hướng xuống (cùng chiều E)
  line(ion, (0, -0.75), stroke: (paint: rgb("#2563eb"), thickness: 1.2pt), mark: (end: "stealth", fill: rgb("#2563eb"), length: 0.13cm, width: 0.07cm))
  content((0.45, -0.55), text(size: 7pt, fill: rgb("#2563eb"), weight: "bold", $arrow(F)_("điện")$))

  // Vector ngoại lực F_ngoai hướng lên (đưa ion ra ngoài màng)
  line(ion, (0, 0.75), stroke: (paint: rgb("#dc2626"), thickness: 1.2pt), mark: (end: "stealth", fill: rgb("#dc2626"), length: 0.13cm, width: 0.07cm))
  content((0.50, 0.55), text(size: 7pt, fill: rgb("#dc2626"), weight: "bold", $arrow(F)_("ngoài")$))
})

// --------------------------------------------------------------------------
// Bài 2.2: Điện tích q dịch chuyển cùng chiều điện trường đều
// --------------------------------------------------------------------------
// Hình đề: Điện tích q > 0 dịch chuyển từ A đến B đoạn d trong điện trường đều E
#let ve-de-dien-tich-d-2-2 = canvas({
  import draw: *

  let w = 2.4
  // Các đường sức điện trường đều nằm ngang
  for y in (-0.7, 0, 0.7) {
    line((-w, y), (w, y), stroke: (paint: rgb("#94a3b8"), thickness: 0.6pt), mark: (end: "stealth", fill: rgb("#94a3b8"), length: 0.14cm, width: 0.08cm, inset: 0.02cm))
  }
  content((w - 0.2, 0.92), text(size: 8pt, fill: rgb("#64748b"), weight: "bold", $arrow(E)$))

  let xa = -1.2
  let xb = 1.0
  let y0 = 0

  // Điểm A và B
  circle((xa, y0), radius: 0.045, fill: black)
  content((xa, y0 - 0.28), text(size: 8pt, weight: "bold", $A$))

  circle((xb, y0), radius: 0.045, fill: black)
  content((xb, y0 - 0.28), text(size: 8pt, weight: "bold", $B$))

  // Điện tích q tại A
  circle((xa, y0), radius: 0.15, fill: rgb("#fee2e2"), stroke: 0.8pt + rgb("#ef4444"))
  content((xa, y0), text(size: 7pt, fill: rgb("#dc2626"), weight: "bold", $+$))
  content((xa, y0 + 0.32), text(size: 7.5pt, fill: rgb("#dc2626"), weight: "bold", $q$))

  // Mũi tên khoảng cách d giữa A và B
  line((xa, -0.6), (xb, -0.6), stroke: 0.6pt + rgb("#1e293b"), mark: (start: "stealth", end: "stealth", fill: rgb("#1e293b"), length: 0.12cm, width: 0.07cm))
  content(((xa + xb) / 2, -0.82), text(size: 7.5pt, fill: rgb("#1e293b"), $d$))
})

// Hình giải: Lực điện F cùng chiều độ dời, thế năng giảm
#let ve-giai-dien-tich-d-2-2 = canvas({
  import draw: *

  let xa = -1.2
  let xb = 1.0
  let y0 = 0.1

  // Các mặt đẳng thế nét đứt vuông góc đường sức
  line((xa, -0.9), (xa, 1.1), stroke: (paint: rgb("#3b82f6"), thickness: 0.5pt, dash: "dashed"))
  content((xa, 1.25), text(size: 7pt, fill: rgb("#2563eb"), $V_A$))

  line((xb, -0.9), (xb, 1.1), stroke: (paint: rgb("#3b82f6"), thickness: 0.5pt, dash: "dashed"))
  content((xb, 1.25), text(size: 7pt, fill: rgb("#2563eb"), $V_B$))

  // Đường sức E
  line((-1.5, 0.7), (1.5, 0.7), stroke: (paint: rgb("#94a3b8"), thickness: 0.6pt), mark: (end: "stealth", fill: rgb("#94a3b8"), length: 0.13cm, width: 0.07cm))
  content((1.7, 0.7), text(size: 7.5pt, fill: rgb("#64748b"), $arrow(E)$))

  // Đoạn dịch chuyển d = AB
  line((xa, y0), (xb, y0), stroke: (paint: rgb("#10b981"), thickness: 1.0pt, dash: "dotted"))

  // Hạt q tại vị trí trung gian
  let xm = -0.1
  circle((xm, y0), radius: 0.14, fill: rgb("#fee2e2"), stroke: 0.8pt + rgb("#ef4444"))
  content((xm, y0), text(size: 6.5pt, fill: rgb("#dc2626"), weight: "bold", $+$))

  // Vector lực điện F = qE
  line((xm, y0), (xm + 0.8, y0), stroke: (paint: rgb("#dc2626"), thickness: 1.3pt), mark: (end: "stealth", fill: rgb("#dc2626"), length: 0.14cm, width: 0.08cm, inset: 0.02cm))
  content((xm + 0.4, y0 + 0.22), text(size: 7.5pt, fill: rgb("#dc2626"), weight: "bold", $arrow(F) = q arrow(E)$))

  // Điểm A và B
  circle((xa, y0), radius: 0.04, fill: black)
  content((xa - 0.18, y0 - 0.15), text(size: 7.5pt, weight: "bold", $A$))
  circle((xb, y0), radius: 0.04, fill: black)
  content((xb + 0.18, y0 - 0.15), text(size: 7.5pt, weight: "bold", $B$))

  // Chú thích chiều thế năng
  content(((xa + xb) / 2, -0.55), text(size: 7pt, fill: rgb("#475569"), [$V_A > V_B thin arrow.r thin W_A > W_B$]))
})

// --------------------------------------------------------------------------
// Bài 2.3: Electron bị hãm trong điện trường đều
// --------------------------------------------------------------------------
// Hình đề: Electron bay cùng chiều đường sức E với vận tốc v0
#let ve-de-electron-ham-2-3 = canvas({
  import draw: *

  let w = 2.4
  // Đường sức điện trường đều
  for y in (-0.5, 0.5) {
    line((-w, y), (w, y), stroke: (paint: rgb("#94a3b8"), thickness: 0.6pt), mark: (end: "stealth", fill: rgb("#94a3b8"), length: 0.13cm, width: 0.07cm))
  }
  content((w - 0.2, 0.72), text(size: 8pt, fill: rgb("#64748b"), $arrow(E)$))

  // Electron tại vị trí ban đầu
  let x0 = -1.2
  circle((x0, 0), radius: 0.13, fill: rgb("#dbeafe"), stroke: 0.8pt + rgb("#2563eb"))
  content((x0, 0), text(size: 7pt, fill: rgb("#1d4ed8"), weight: "bold", $-$))
  content((x0, -0.30), text(size: 7.5pt, fill: rgb("#1d4ed8"), $e^-$))

  // Vector vận tốc v0 hướng cùng chiều E
  line((x0 + 0.15, 0), (x0 + 1.05, 0), stroke: (paint: rgb("#059669"), thickness: 1.2pt), mark: (end: "stealth", fill: rgb("#059669"), length: 0.14cm, width: 0.08cm))
  content((x0 + 0.6, 0.22), text(size: 7.5pt, fill: rgb("#059669"), weight: "bold", $arrow(v)_0$))
})

// Hình giải: Lực điện F hãm electron, quãng đường s đến khi v = 0
#let ve-giai-electron-ham-2-3 = canvas({
  import draw: *

  let x0 = -1.3
  let x1 = 1.0
  let y0 = 0

  // Đường sức E
  line((-1.6, 0.65), (1.4, 0.65), stroke: (paint: rgb("#94a3b8"), thickness: 0.6pt), mark: (end: "stealth", fill: rgb("#94a3b8"), length: 0.13cm, width: 0.07cm))
  content((1.65, 0.65), text(size: 7.5pt, fill: rgb("#64748b"), $arrow(E)$))

  // Quỹ đạo hãm nét đứt
  line((x0, y0), (x1, y0), stroke: (paint: rgb("#64748b"), thickness: 0.8pt, dash: "dotted"))

  // Vị trí ban đầu: electron với v0 và lực hãm F
  circle((x0, y0), radius: 0.12, fill: rgb("#dbeafe"), stroke: 0.8pt + rgb("#2563eb"))
  content((x0, y0), text(size: 6.5pt, fill: rgb("#1d4ed8"), weight: "bold", $-$))

  // Vận tốc v0 hướng sang phải
  line((x0, y0 + 0.15), (x0 + 0.7, y0 + 0.15), stroke: (paint: rgb("#059669"), thickness: 1.1pt), mark: (end: "stealth", fill: rgb("#059669"), length: 0.12cm, width: 0.06cm))
  content((x0 + 0.35, y0 + 0.32), text(size: 7pt, fill: rgb("#059669"), weight: "bold", $arrow(v)_0$))

  // Lực điện F = -eE hướng sang trái (lực hãm)
  line((x0, y0 - 0.15), (x0 - 0.75, y0 - 0.15), stroke: (paint: rgb("#dc2626"), thickness: 1.2pt), mark: (end: "stealth", fill: rgb("#dc2626"), length: 0.13cm, width: 0.07cm))
  content((x0 - 0.45, y0 - 0.35), text(size: 7pt, fill: rgb("#dc2626"), weight: "bold", $arrow(F)_("hãm")$))

  // Vị trí dừng (v = 0)
  circle((x1, y0), radius: 0.12, stroke: (paint: rgb("#2563eb"), thickness: 0.8pt, dash: "dashed"), fill: white)
  content((x1, y0), text(size: 6pt, fill: rgb("#64748b"), [dừng]))
  content((x1, y0 + 0.28), text(size: 7pt, fill: rgb("#64748b"), $v = 0$))

  // Mũi tên đo quãng đường hãm s
  line((x0, -0.6), (x1, -0.6), stroke: 0.6pt + rgb("#1e293b"), mark: (start: "stealth", end: "stealth", fill: rgb("#1e293b"), length: 0.12cm, width: 0.07cm))
  content(((x0 + x1) / 2, -0.80), text(size: 7.5pt, fill: rgb("#1e293b"), weight: "bold", $s$))
})

// --------------------------------------------------------------------------
// Bài 2.4: Tam giác vuông ABC trong điện trường đều
// --------------------------------------------------------------------------
// Hình đề: Tam giác ABC vuông tại A, B = 60 độ, E song song BA từ B tới A
#let ve-de-tam-giac-abc-2-4 = canvas({
  import draw: *

  let bx = -1.4
  let by = 0
  let ax = 0.4
  let ay = 0
  let cx = 0.4
  let cy = 1.8

  // Các đường sức điện trường E song song BA (nằm ngang từ trái sang phải)
  for y in (-0.4, 0.9, 2.1) {
    line((-1.8, y), (1.4, y), stroke: (paint: rgb("#94a3b8"), thickness: 0.55pt), mark: (end: "stealth", fill: rgb("#94a3b8"), length: 0.13cm, width: 0.07cm))
  }
  content((1.65, 2.1), text(size: 8pt, fill: rgb("#64748b"), weight: "bold", $arrow(E)$))

  // Tam giác ABC
  line((bx, by), (ax, ay), (cx, cy), close: true, stroke: 1.0pt + rgb("#1e293b"))

  // Ký hiệu góc vuông tại A
  rect((ax - 0.2, ay), (ax, ay + 0.2), stroke: 0.6pt + rgb("#1e293b"), fill: none)

  // Ký hiệu góc B = 60 độ
  arc((bx, by), start: 0deg, delta: 45deg, radius: 0.45, stroke: 0.6pt + rgb("#0284c7"))
  content((bx + 0.55, by + 0.22), text(size: 6.5pt, fill: rgb("#0284c7"), weight: "bold", $60^compose$))

  // Điểm và nhãn các đỉnh
  circle((bx, by), radius: 0.04, fill: black)
  content((bx - 0.18, by - 0.15), text(size: 8pt, weight: "bold", $B$))

  circle((ax, ay), radius: 0.04, fill: black)
  content((ax + 0.18, ay - 0.15), text(size: 8pt, weight: "bold", $A$))

  circle((cx, cy), radius: 0.04, fill: black)
  content((cx + 0.18, cy + 0.12), text(size: 8pt, weight: "bold", $C$))

  // Nhãn cạnh BC = 6 cm
  content(((bx + cx) / 2 - 0.25, (by + cy) / 2 + 0.15), text(size: 7.5pt, fill: rgb("#1e293b"), [6 cm]))
})

// Hình giải: Thể hiện U_AC = 0 (AC vuông góc E) và tổng hợp trường tại A khi có q ở C
#let ve-giai-tam-giac-abc-2-4 = canvas({
  import draw: *

  let bx = -1.3
  let by = 0
  let ax = 0.3
  let ay = 0
  let cx = 0.3
  let cy = 1.6

  // Tam giác ABC
  line((bx, by), (ax, ay), (cx, cy), close: true, stroke: 0.9pt + rgb("#1e293b"))
  rect((ax - 0.18, ay), (ax, ay + 0.18), stroke: 0.5pt + rgb("#1e293b"))

  // Mặt đẳng thế qua AC (nét đứt lam)
  line((ax, -0.6), (ax, cy + 0.3), stroke: (paint: rgb("#0284c7"), thickness: 0.6pt, dash: "dashed"))
  content((ax + 0.05, cy + 0.45), text(size: 6.5pt, fill: rgb("#0284c7"), [$V_A = V_C$]))

  // Điểm tích điện q tại C
  circle((cx, cy), radius: 0.13, fill: rgb("#fee2e2"), stroke: 0.8pt + rgb("#ef4444"))
  content((cx, cy), text(size: 6.5pt, fill: rgb("#dc2626"), weight: "bold", $+$))
  content((cx + 0.32, cy), text(size: 7pt, fill: rgb("#dc2626"), weight: "bold", $q$))

  // Các đỉnh
  circle((bx, by), radius: 0.035, fill: black)
  content((bx - 0.16, by - 0.12), text(size: 7.5pt, weight: "bold", $B$))
  circle((ax, ay), radius: 0.035, fill: black)
  content((ax + 0.16, ay + 0.16), text(size: 7.5pt, weight: "bold", $A$))

  // Vector điện trường ngoài E (sang phải)
  line((ax, ay), (ax + 0.9, ay), stroke: (paint: rgb("#64748b"), thickness: 1.2pt), mark: (end: "stealth", fill: rgb("#64748b"), length: 0.13cm, width: 0.07cm))
  content((ax + 0.95, ay + 0.15), text(size: 7.5pt, fill: rgb("#64748b"), weight: "bold", $arrow(E)$))

  // Vector điện trường do q tại C tác dụng lên A (hướng xuống dọc CA)
  line((ax, ay), (ax, ay - 0.7), stroke: (paint: rgb("#dc2626"), thickness: 1.2pt), mark: (end: "stealth", fill: rgb("#dc2626"), length: 0.13cm, width: 0.07cm))
  content((ax - 0.25, ay - 0.55), text(size: 7pt, fill: rgb("#dc2626"), weight: "bold", $arrow(E)_q$))

  // Nét đứt hình chữ nhật tổng hợp
  line((ax + 0.9, ay), (ax + 0.9, ay - 0.7), stroke: (paint: luma(60%), thickness: 0.5pt, dash: "dashed"))
  line((ax, ay - 0.7), (ax + 0.9, ay - 0.7), stroke: (paint: luma(60%), thickness: 0.5pt, dash: "dashed"))

  // Vector điện trường tổng hợp E_tong
  line((ax, ay), (ax + 0.9, ay - 0.7), stroke: (paint: rgb("#7c3aed"), thickness: 1.5pt), mark: (end: "stealth", fill: rgb("#7c3aed"), length: 0.15cm, width: 0.08cm))
  content((ax + 1.15, ay - 0.8), text(size: 7.5pt, fill: rgb("#7c3aed"), weight: "bold", $arrow(E)_("tổng")$))
})

// --------------------------------------------------------------------------
// Bài 2.5: Hai bản kim loại phẳng tăng tốc hạt tích điện
// --------------------------------------------------------------------------
// Hình đề: Hai bản phẳng song song d = 2 cm, E = 3000 V/m, hạt q > 0 sát bản dương
#let ve-de-hai-ban-tang-toc-2-5 = canvas({
  import draw: *

  let d = 1.8
  let h = 1.3
  let xa = -d / 2
  let xb = d / 2

  // Bản dương (trái)
  rect((xa - 0.1, -h), (xa, h), fill: rgb("#fee2e2"), stroke: 0.6pt + rgb("#ef4444"), radius: 1pt)
  for y in (-0.9, -0.3, 0.3, 0.9) {
    content((xa - 0.22, y), text(size: 7.5pt, weight: "bold", fill: rgb("#dc2626"), $+$))
  }

  // Bản âm (phải)
  rect((xb, -h), (xb + 0.1, h), fill: rgb("#dbeafe"), stroke: 0.6pt + rgb("#2563eb"), radius: 1pt)
  for y in (-0.9, -0.3, 0.3, 0.9) {
    content((xb + 0.22, y), text(size: 8.5pt, weight: "bold", fill: rgb("#1d4ed8"), $-$))
  }

  // Đường sức điện trường đều E
  for y in (-0.6, 0, 0.6) {
    line((xa, y), (xb, y), stroke: (paint: rgb("#94a3b8"), thickness: 0.6pt), mark: (end: "stealth", fill: rgb("#94a3b8"), length: 0.13cm, width: 0.07cm))
  }
  content((0, 0.8), text(size: 7.5pt, fill: rgb("#64748b"), weight: "bold", $arrow(E)$))

  // Hạt q sát bản dương
  circle((xa + 0.2, 0), radius: 0.13, fill: rgb("#fef3c7"), stroke: 0.8pt + rgb("#d97706"))
  content((xa + 0.2, 0), text(size: 6.5pt, fill: rgb("#b45309"), weight: "bold", $q$))
  content((xa + 0.2, -0.32), text(size: 6.5pt, fill: rgb("#b45309"), [$v_0 = 0$]))

  // Khoảng cách d
  line((xa, -h - 0.25), (xb, -h - 0.25), stroke: 0.6pt + rgb("#1e293b"), mark: (start: "stealth", end: "stealth", fill: rgb("#1e293b"), length: 0.12cm, width: 0.07cm))
  content((0, -h - 0.42), text(size: 7.5pt, fill: rgb("#1e293b"), $d = 2 thin "cm"$))
})

// Hình giải: Lực điện F tăng tốc hạt từ bản dương tới bản âm, v = sqrt(2A/m)
#let ve-giai-hai-ban-tang-toc-2-5 = canvas({
  import draw: *

  let d = 1.8
  let h = 1.1
  let xa = -d / 2
  let xb = d / 2

  // Hai bản
  rect((xa - 0.08, -h), (xa, h), fill: rgb("#fee2e2"), stroke: 0.6pt + rgb("#ef4444"))
  content((xa - 0.22, 0), text(size: 7.5pt, weight: "bold", fill: rgb("#dc2626"), $+$))
  rect((xb, -h), (xb + 0.08, h), fill: rgb("#dbeafe"), stroke: 0.6pt + rgb("#2563eb"))
  content((xb + 0.22, 0), text(size: 8.5pt, weight: "bold", fill: rgb("#1d4ed8"), $-$))

  // Quỹ đạo thẳng nhanh dần đều
  line((xa + 0.15, 0), (xb - 0.15, 0), stroke: (paint: rgb("#f59e0b"), thickness: 1.0pt, dash: "dotted"))

  // Hạt ở giữa
  circle((0, 0), radius: 0.12, fill: rgb("#fef3c7"), stroke: 0.8pt + rgb("#d97706"))
  content((0, 0), text(size: 6.5pt, fill: rgb("#b45309"), weight: "bold", $q$))

  // Lực điện F = qE hướng sang phải
  line((0, 0), (0.65, 0), stroke: (paint: rgb("#dc2626"), thickness: 1.3pt), mark: (end: "stealth", fill: rgb("#dc2626"), length: 0.13cm, width: 0.07cm))
  content((0.35, 0.22), text(size: 7pt, fill: rgb("#dc2626"), weight: "bold", $arrow(F) = q arrow(E)$))

  // Vận tốc v khi tới bản âm
  circle((xb - 0.12, 0), radius: 0.08, fill: rgb("#fef3c7"), stroke: 0.6pt + rgb("#d97706"))
  line((xb - 0.12, 0), (xb + 0.45, 0), stroke: (paint: rgb("#059669"), thickness: 1.2pt), mark: (end: "stealth", fill: rgb("#059669"), length: 0.12cm, width: 0.06cm))
  content((xb + 0.25, 0.22), text(size: 7pt, fill: rgb("#059669"), weight: "bold", $arrow(v)$))

  // Hiệu điện thế U = Ed
  content((0, -0.55), text(size: 7pt, fill: rgb("#475569"), [$U = E d = 60 thin "V"$]))
  content((0, -0.82), text(size: 7pt, fill: rgb("#059669"), weight: "bold", [$A = q U = (m v^2)/2$]))
})

// --------------------------------------------------------------------------
// Bài 2.6: Tán xạ Rutherford hạt alpha vào hạt nhân vàng
// --------------------------------------------------------------------------
// Hình đề: Hạt alpha bay từ xa với v0 tới hạt nhân vàng +79e đứng yên
#let ve-de-rutherford-2-6 = canvas({
  import draw: *

  let x-au = 1.4
  let x-alpha = -1.6

  // Hạt nhân vàng Au (+79e)
  circle((x-au, 0), radius: 0.32, fill: rgb("#fef3c7"), stroke: 1.0pt + rgb("#d97706"))
  content((x-au, 0), text(size: 7.5pt, fill: rgb("#b45309"), weight: "bold", [$+79e$]))
  content((x-au, 0.52), text(size: 7.5pt, fill: rgb("#b45309"), weight: "bold", [Hạt nhân vàng]))

  // Hạt alpha (+2e) ban đầu ở xa
  circle((x-alpha, 0), radius: 0.16, fill: rgb("#fee2e2"), stroke: 0.9pt + rgb("#ef4444"))
  content((x-alpha, 0), text(size: 6.5pt, fill: rgb("#dc2626"), weight: "bold", [$+2e$]))
  content((x-alpha, 0.36), text(size: 7.5pt, fill: rgb("#dc2626"), weight: "bold", [Hạt $alpha$]))

  // Vector vận tốc ban đầu v0 hướng tới Au
  line((x-alpha + 0.18, 0), (x-alpha + 1.1, 0), stroke: (paint: rgb("#059669"), thickness: 1.3pt), mark: (end: "stealth", fill: rgb("#059669"), length: 0.14cm, width: 0.08cm))
  content((x-alpha + 0.65, 0.22), text(size: 7.5pt, fill: rgb("#059669"), weight: "bold", $arrow(v)_0$))

  // Trục chuyển động trực diện nét đứt
  line((x-alpha + 1.1, 0), (x-au - 0.35, 0), stroke: (paint: rgb("#94a3b8"), thickness: 0.6pt, dash: "dashed"))
})

// Hình giải: Hạt alpha giảm tốc đến r_min (v = 0) rồi bật ngược lại do lực đẩy Coulomb
#let ve-giai-rutherford-2-6 = canvas({
  import draw: *

  let x-au = 1.5
  let r-min = 0.85
  let x-stop = x-au - r-min // Điểm dừng gần nhất

  // Hạt nhân vàng
  circle((x-au, 0), radius: 0.28, fill: rgb("#fef3c7"), stroke: 1.0pt + rgb("#d97706"))
  content((x-au, 0), text(size: 7pt, fill: rgb("#b45309"), weight: "bold", [$+79e$]))

  // Hạt alpha tại điểm gần nhất r_min (v = 0)
  circle((x-stop, 0), radius: 0.14, fill: rgb("#fee2e2"), stroke: 0.9pt + rgb("#ef4444"))
  content((x-stop, 0), text(size: 6pt, fill: rgb("#dc2626"), weight: "bold", [$+2e$]))
  content((x-stop, 0.32), text(size: 6.5pt, fill: rgb("#64748b"), [$v = 0$]))

  // Lực đẩy Coulomb F_C cực đại hướng sang trái
  line((x-stop, 0), (x-stop - 0.75, 0), stroke: (paint: rgb("#dc2626"), thickness: 1.4pt), mark: (end: "stealth", fill: rgb("#dc2626"), length: 0.14cm, width: 0.08cm))
  content((x-stop - 0.40, 0.22), text(size: 7.5pt, fill: rgb("#dc2626"), weight: "bold", $arrow(F)_C$))

  // Mũi tên quỹ đạo quay ngược (u-turn)
  arc((x-stop, 0), start: 90deg, delta: 180deg, radius: 0.18, stroke: (paint: rgb("#059669"), thickness: 0.8pt, dash: "dotted"))
  line((x-stop, -0.18), (x-stop - 0.9, -0.18), stroke: (paint: rgb("#059669"), thickness: 0.9pt, dash: "dotted"), mark: (end: "stealth", fill: rgb("#059669"), length: 0.11cm, width: 0.06cm))
  content((x-stop - 0.6, -0.38), text(size: 6.5pt, fill: rgb("#059669"), [bật ngược]))

  // Khoảng cách gần nhất r_min giữa hai tâm
  line((x-stop, -0.65), (x-au, -0.65), stroke: 0.6pt + rgb("#1e293b"), mark: (start: "stealth", end: "stealth", fill: rgb("#1e293b"), length: 0.12cm, width: 0.07cm))
  line((x-stop, -0.16), (x-stop, -0.75), stroke: 0.4pt + luma(60%))
  line((x-au, -0.30), (x-au, -0.75), stroke: 0.4pt + luma(60%))
  content(((x-stop + x-au) / 2, -0.85), text(size: 7.5pt, fill: rgb("#1e293b"), weight: "bold", $r_("min")$))
})

// --------------------------------------------------------------------------
// Bài 2.7: Vành tròn tích điện đều - Điện thế trên trục
// --------------------------------------------------------------------------
// Hình đề: Vành tròn bán kính R trong Oxy, trục z vuông góc qua tâm, điểm P cách tâm z
#let ve-de-vanh-tron-2-7 = canvas({
  import draw: *

  let rx = 1.6
  let ry = 0.55
  let z = 1.6

  // Trục z thẳng đứng (phía dưới vành nét đứt)
  line((0, -0.7), (0, 0), stroke: (paint: rgb("#94a3b8"), thickness: 0.5pt, dash: "dashed"))
  line((0, 0), (0, z + 0.6), stroke: 0.6pt + rgb("#64748b"), mark: (end: "stealth", fill: rgb("#64748b"), length: 0.13cm, width: 0.07cm))
  content((0.18, z + 0.55), text(size: 7.5pt, fill: rgb("#64748b"), weight: "bold", $z$))

  // Nửa sau vành tròn
  arc((0, 0), start: 0deg, delta: 180deg, radius: (rx, ry), stroke: 1.1pt + rgb("#2563eb"))
  // Nửa trước vành tròn
  arc((0, 0), start: 180deg, delta: 180deg, radius: (rx, ry), stroke: 1.1pt + rgb("#2563eb"))

  // Tâm O
  circle((0, 0), radius: 0.035, fill: black)
  content((-0.18, -0.12), text(size: 7.5pt, weight: "bold", $O$))

  // Bán kính R
  line((0, 0), (rx, 0), stroke: 0.6pt + rgb("#0284c7"), mark: (end: "stealth", fill: rgb("#0284c7"), length: 0.11cm, width: 0.06cm))
  content((rx / 2, -0.18), text(size: 7.5pt, fill: rgb("#0284c7"), weight: "bold", $R$))

  // Điểm P trên trục z
  circle((0, z), radius: 0.045, fill: rgb("#dc2626"))
  content((-0.18, z), text(size: 8pt, fill: rgb("#dc2626"), weight: "bold", $P$))

  // Đoạn đo độ cao z
  line((-0.5, 0), (-0.5, z), stroke: 0.5pt + rgb("#1e293b"), mark: (start: "stealth", end: "stealth", fill: rgb("#1e293b"), length: 0.11cm, width: 0.06cm))
  content((-0.72, z / 2), text(size: 7.5pt, fill: rgb("#1e293b"), $z$))

  // Nhãn mật độ lambda
  content((rx + 0.15, ry * 0.5), text(size: 7.5pt, fill: rgb("#2563eb"), weight: "bold", $lambda$))
})

// Hình giải: Phần tử dq, khoảng cách r = sqrt(R^2 + z^2) tới P, điện thế V
#let ve-giai-vanh-tron-2-7 = canvas({
  import draw: *

  let rx = 1.5
  let ry = 0.5
  let z = 1.5

  // Trục z
  line((0, 0), (0, z + 0.5), stroke: 0.5pt + rgb("#64748b"))

  // Vành elip
  circle((0, 0), radius: (rx, ry), stroke: 0.9pt + rgb("#2563eb"), fill: none)

  // Điểm P
  circle((0, z), radius: 0.04, fill: rgb("#dc2626"))
  content((-0.18, z), text(size: 7.5pt, fill: rgb("#dc2626"), weight: "bold", $P$))

  // Phần tử dq tại (rx, 0)
  circle((rx, 0), radius: 0.06, fill: rgb("#f59e0b"))
  content((rx + 0.35, 0), text(size: 7pt, fill: rgb("#b45309"), weight: "bold", $dif q$))

  // Cạnh đáy R và cạnh góc vuông z
  line((0, 0), (rx, 0), stroke: 0.6pt + rgb("#0284c7"))
  content((rx / 2, -0.16), text(size: 7pt, fill: rgb("#0284c7"), $R$))

  // Cạnh huyền r = sqrt(R^2 + z^2)
  line((rx, 0), (0, z), stroke: (paint: rgb("#dc2626"), thickness: 1.0pt))
  content((rx / 2 + 0.35, z / 2 + 0.1), text(size: 6.5pt, fill: rgb("#dc2626"), weight: "bold", $r = sqrt(R^2 + z^2)$))

  // Tâm O và góc vuông
  circle((0, 0), radius: 0.03, fill: black)
  content((-0.14, -0.1), text(size: 7pt, $O$))
  rect((0, 0), (0.16, 0.16), stroke: 0.4pt + rgb("#1e293b"))

  // Công thức điện thế
  content((0.7, -0.65), text(size: 7pt, fill: rgb("#2563eb"), weight: "bold", $V(z) = (2 pi k R lambda)/sqrt(R^2 + z^2)$))
})

// --------------------------------------------------------------------------
// Bài 2.8: Đĩa tròn tích điện đều - Điện thế trên trục
// --------------------------------------------------------------------------
// Hình đề: Đĩa tròn bán kính R trong Oxy mang sigma, điểm P trên trục z
#let ve-de-dia-tron-2-8 = canvas({
  import draw: *

  let rx = 1.7
  let ry = 0.6
  let z = 1.6

  // Trục z dưới đĩa
  line((0, -0.6), (0, 0), stroke: (paint: rgb("#94a3b8"), thickness: 0.5pt, dash: "dashed"))

  // Mặt đĩa tròn elip có tô màu
  circle((0, 0), radius: (rx, ry), fill: rgb("#e0f2fe"), stroke: 1.1pt + rgb("#0284c7"))

  // Các dấu + trên bề mặt đĩa
  for (px, py) in ((-0.9, -0.1), (-0.4, 0.2), (0.5, 0.15), (1.0, -0.1), (0.1, -0.3)) {
    content((px, py), text(size: 6.5pt, fill: rgb("#0369a1"), weight: "bold", $+$))
  }

  // Trục z trên đĩa
  line((0, 0), (0, z + 0.6), stroke: 0.6pt + rgb("#64748b"), mark: (end: "stealth", fill: rgb("#64748b"), length: 0.13cm, width: 0.07cm))
  content((0.18, z + 0.55), text(size: 7.5pt, fill: rgb("#64748b"), weight: "bold", $z$))

  // Tâm O và bán kính R
  circle((0, 0), radius: 0.035, fill: black)
  content((-0.18, -0.14), text(size: 7.5pt, weight: "bold", $O$))
  line((0, 0), (rx, 0), stroke: 0.6pt + rgb("#0284c7"), mark: (end: "stealth", fill: rgb("#0284c7"), length: 0.11cm, width: 0.06cm))
  content((rx / 2, -0.18), text(size: 7.5pt, fill: rgb("#0284c7"), weight: "bold", $R$))

  // Điểm P
  circle((0, z), radius: 0.045, fill: rgb("#dc2626"))
  content((-0.18, z), text(size: 8pt, fill: rgb("#dc2626"), weight: "bold", $P$))

  // Đoạn đo độ cao z
  line((-0.5, 0), (-0.5, z), stroke: 0.5pt + rgb("#1e293b"), mark: (start: "stealth", end: "stealth", fill: rgb("#1e293b"), length: 0.11cm, width: 0.06cm))
  content((-0.72, z / 2), text(size: 7.5pt, fill: rgb("#1e293b"), $z$))

  // Nhãn sigma
  content((rx + 0.15, ry * 0.4), text(size: 7.5pt, fill: rgb("#0284c7"), weight: "bold", $sigma$))
})

// Hình giải: Chia đĩa thành vành vi phân bán kính s bề dày ds, khoảng cách sqrt(s^2 + z^2)
#let ve-giai-dia-tron-2-8 = canvas({
  import draw: *

  let rx = 1.6
  let ry = 0.55
  let z = 1.5

  // Đĩa lớn
  circle((0, 0), radius: (rx, ry), stroke: 0.6pt + rgb("#94a3b8"), fill: rgb("#f8fafc"))

  // Vành vi phân bán kính s (tô dải màu cam nhạt)
  let s-rx = 0.95
  let s-ry = 0.33
  circle((0, 0), radius: (s-rx, s-ry), stroke: 1.0pt + rgb("#f97316"), fill: none)
  content((s-rx + 0.35, 0.05), text(size: 6.5pt, fill: rgb("#c2410c"), weight: "bold", [vành $s, thin dif s$]))

  // Trục z
  line((0, 0), (0, z + 0.4), stroke: 0.5pt + rgb("#64748b"))

  // Điểm P
  circle((0, z), radius: 0.04, fill: rgb("#dc2626"))
  content((-0.18, z), text(size: 7.5pt, fill: rgb("#dc2626"), weight: "bold", $P$))

  // Cạnh đáy s và cạnh huyền sqrt(s^2 + z^2)
  line((0, 0), (s-rx, 0), stroke: 0.6pt + rgb("#c2410c"))
  content((s-rx / 2, -0.14), text(size: 6.5pt, fill: rgb("#c2410c"), $s$))

  line((s-rx, 0), (0, z), stroke: (paint: rgb("#dc2626"), thickness: 0.9pt, dash: "dotted"))
  content((s-rx / 2 + 0.35, z / 2 + 0.1), text(size: 6.5pt, fill: rgb("#dc2626"), $sqrt(s^2 + z^2)$))

  // Tâm O
  circle((0, 0), radius: 0.03, fill: black)
  content((-0.14, -0.1), text(size: 7pt, $O$))

  // Kết quả điện thế
  content((0, -0.65), text(size: 7pt, fill: rgb("#0284c7"), weight: "bold", $V(z) = 2 pi k sigma (sqrt(R^2 + z^2) - abs(z))$))
})

// --------------------------------------------------------------------------
// Bài 2.9: Thanh tích điện đều trên trục z từ -d đến d
// --------------------------------------------------------------------------
// Hình đề: Thanh từ -d đến d mang Q > 0, electron đi từ 4d về 3d
#let ve-de-thanh-truc-z-2-9 = canvas({
  import draw: *

  let d = 0.55
  let z-max = 4 * d + 0.6

  // Trục z thẳng đứng
  line((0, -d - 0.5), (0, z-max), stroke: 0.6pt + rgb("#64748b"), mark: (end: "stealth", fill: rgb("#64748b"), length: 0.13cm, width: 0.07cm))
  content((0.2, z-max - 0.05), text(size: 7.5pt, fill: rgb("#64748b"), weight: "bold", $z$))

  // Thanh từ -d đến d (màu xanh dương đậm, có bề dày)
  rect((-0.06, -d), (0.06, d), fill: rgb("#38bdf8"), stroke: 0.8pt + rgb("#0284c7"), radius: 1pt)
  content((-0.35, 0), text(size: 7.5pt, fill: rgb("#0284c7"), weight: "bold", $+Q$))

  // Vị trí -d, 0, d
  circle((0, 0), radius: 0.03, fill: black)
  content((0.18, 0), text(size: 7pt, $O$))
  circle((0, d), radius: 0.03, fill: black)
  content((0.22, d), text(size: 7pt, $+d$))
  circle((0, -d), radius: 0.03, fill: black)
  content((0.22, -d), text(size: 7pt, $-d$))

  // Vị trí 3d và 4d
  let z3 = 3 * d
  let z4 = 4 * d
  circle((0, z3), radius: 0.035, fill: black)
  content((0.25, z3), text(size: 7pt, weight: "bold", $3d$))

  circle((0, z4), radius: 0.035, fill: black)
  content((0.25, z4), text(size: 7pt, weight: "bold", $4d$))

  // Electron tại 4d
  circle((0, z4), radius: 0.12, fill: rgb("#fee2e2"), stroke: 0.8pt + rgb("#ef4444"))
  content((0, z4), text(size: 6.5pt, fill: rgb("#dc2626"), weight: "bold", $-$))
  content((-0.26, z4), text(size: 7pt, fill: rgb("#dc2626"), $e^-$))

  // Mũi tên dịch chuyển từ 4d về 3d
  line((-0.18, z4 - 0.08), (-0.18, z3 + 0.08), stroke: (paint: rgb("#059669"), thickness: 1.2pt), mark: (end: "stealth", fill: rgb("#059669"), length: 0.13cm, width: 0.07cm))
  content((-0.45, (z3 + z4) / 2), text(size: 6.5pt, fill: rgb("#059669"), [dịch\ chuyển]))
})

// Hình giải: Phần tử vi phân ds, lực hút điện kéo electron từ 4d về 3d
#let ve-giai-thanh-truc-z-2-9 = canvas({
  import draw: *

  let d = 0.55
  let z3 = 3 * d
  let z4 = 4 * d

  // Trục z
  line((0, -d - 0.3), (0, z4 + 0.5), stroke: 0.5pt + rgb("#64748b"))

  // Thanh [-d, d]
  rect((-0.05, -d), (0.05, d), fill: rgb("#38bdf8"), stroke: 0.7pt + rgb("#0284c7"))

  // Phần tử vi phân ds tại s
  let s = 0.2
  rect((-0.07, s - 0.04), (0.07, s + 0.04), fill: rgb("#f59e0b"), stroke: 0.5pt + rgb("#b45309"))
  content((-0.35, s), text(size: 6.5pt, fill: rgb("#b45309"), weight: "bold", $dif s$))

  // Điểm xét z bất kì
  let z-xet = 2.2 * d
  circle((0, z-xet), radius: 0.035, fill: rgb("#7c3aed"))
  content((0.2, z-xet), text(size: 7pt, fill: rgb("#7c3aed"), weight: "bold", $z$))

  // Khoảng cách z - s
  line((0.12, s), (0.12, z-xet), stroke: 0.5pt + rgb("#7c3aed"), mark: (start: "stealth", end: "stealth", fill: rgb("#7c3aed"), length: 0.1cm, width: 0.05cm))
  content((0.38, (s + z-xet) / 2), text(size: 6.5pt, fill: rgb("#7c3aed"), $z - s$))

  // Electron tại 4d và lực hút hướng xuống
  circle((0, z4), radius: 0.11, fill: rgb("#fee2e2"), stroke: 0.7pt + rgb("#ef4444"))
  content((0, z4), text(size: 6pt, fill: rgb("#dc2626"), weight: "bold", $-$))
  line((0, z4 - 0.13), (0, z4 - 0.55), stroke: (paint: rgb("#dc2626"), thickness: 1.2pt), mark: (end: "stealth", fill: rgb("#dc2626"), length: 0.12cm, width: 0.06cm))
  content((-0.25, z4 - 0.35), text(size: 6.5pt, fill: rgb("#dc2626"), weight: "bold", $arrow(F)_("điện")$))

  // Điểm 3d có vận tốc v
  circle((0, z3), radius: 0.035, fill: black)
  line((0, z3), (0, z3 - 0.4), stroke: (paint: rgb("#059669"), thickness: 1.2pt), mark: (end: "stealth", fill: rgb("#059669"), length: 0.12cm, width: 0.06cm))
  content((0.22, z3 - 0.25), text(size: 6.5pt, fill: rgb("#059669"), weight: "bold", $arrow(v)$))
})

// --------------------------------------------------------------------------
// Bài 2.10: Phân hạch hạt nhân Uranium
// --------------------------------------------------------------------------
// Hình đề: Hạt nhân mẹ U-236 phân hạch thành 2 hạt nhân con tiếp xúc nhau
#let ve-de-phan-hach-u-2-10 = canvas({
  import draw: *

  // Trạng thái 1: Hạt nhân U-236 ban đầu (trái)
  let x1 = -1.6
  circle((x1, 0), radius: 0.65, fill: rgb("#fef3c7"), stroke: 1.0pt + rgb("#d97706"))
  content((x1, 0.12), text(size: 7.5pt, fill: rgb("#b45309"), weight: "bold", [$""^236 "U"$]))
  content((x1, -0.15), text(size: 6.5pt, fill: rgb("#b45309"), [$+92e$]))
  content((x1, -0.85), text(size: 7pt, fill: rgb("#334155"), [Bán kính $R$]))

  // Mũi tên phân hạch
  line((-0.7, 0), (-0.2, 0), stroke: 1.0pt + rgb("#475569"), mark: (end: "stealth", fill: rgb("#475569"), length: 0.13cm, width: 0.07cm))
  content((-0.45, 0.22), text(size: 6.5pt, fill: rgb("#475569"), [phân hạch]))

  // Trạng thái 2: Hai hạt nhân con tiếp xúc nhau (phải)
  let r = 0.52
  let c1 = 0.5
  let c2 = c1 + 2 * r
  circle((c1, 0), radius: r, fill: rgb("#fee2e2"), stroke: 0.9pt + rgb("#ef4444"))
  content((c1, 0.1), text(size: 7pt, fill: rgb("#dc2626"), weight: "bold", [Con 1]))
  content((c1, -0.14), text(size: 6pt, fill: rgb("#dc2626"), [$+46e$]))

  circle((c2, 0), radius: r, fill: rgb("#fee2e2"), stroke: 0.9pt + rgb("#ef4444"))
  content((c2, 0.1), text(size: 7pt, fill: rgb("#dc2626"), weight: "bold", [Con 2]))
  content((c2, -0.14), text(size: 6pt, fill: rgb("#dc2626"), [$+46e$]))

  // Khoảng cách tiếp xúc 2r
  line((c1, -0.7), (c2, -0.7), stroke: 0.5pt + rgb("#1e293b"), mark: (start: "stealth", end: "stealth", fill: rgb("#1e293b"), length: 0.1cm, width: 0.05cm))
  content(((c1 + c2) / 2, -0.88), text(size: 6.5pt, fill: rgb("#1e293b"), weight: "bold", [$2r$ (tiếp xúc)]))
})

// Hình giải: Lực đẩy Coulomb F_C đẩy 2 hạt nhân con ra xa, tăng động năng
#let ve-giai-phan-hach-u-2-10 = canvas({
  import draw: *

  let r = 0.45
  let c1 = -0.55
  let c2 = 0.55

  // Hai hạt nhân con
  circle((c1, 0), radius: r, fill: rgb("#fee2e2"), stroke: 0.8pt + rgb("#ef4444"))
  content((c1, 0), text(size: 6.5pt, fill: rgb("#dc2626"), weight: "bold", [$+46e$]))

  circle((c2, 0), radius: r, fill: rgb("#fee2e2"), stroke: 0.8pt + rgb("#ef4444"))
  content((c2, 0), text(size: 6.5pt, fill: rgb("#dc2626"), weight: "bold", [$+46e$]))

  // Lực đẩy Coulomb F_C đẩy sang 2 phía
  line((c1 - r, 0), (c1 - r - 0.6, 0), stroke: (paint: rgb("#dc2626"), thickness: 1.3pt), mark: (end: "stealth", fill: rgb("#dc2626"), length: 0.13cm, width: 0.07cm))
  content((c1 - r - 0.35, 0.22), text(size: 7pt, fill: rgb("#dc2626"), weight: "bold", $arrow(F)_C$))

  line((c2 + r, 0), (c2 + r + 0.6, 0), stroke: (paint: rgb("#dc2626"), thickness: 1.3pt), mark: (end: "stealth", fill: rgb("#dc2626"), length: 0.13cm, width: 0.07cm))
  content((c2 + r + 0.35, 0.22), text(size: 7pt, fill: rgb("#dc2626"), weight: "bold", $arrow(F)_C$))

  // Vận tốc v1, v2 khi bay ra xa
  line((c1 - r, -0.25), (c1 - r - 0.8, -0.25), stroke: (paint: rgb("#059669"), thickness: 1.0pt, dash: "dotted"), mark: (end: "stealth", fill: rgb("#059669"), length: 0.11cm, width: 0.06cm))
  content((c1 - r - 0.45, -0.45), text(size: 6.5pt, fill: rgb("#059669"), weight: "bold", $arrow(v)_1$))

  line((c2 + r, -0.25), (c2 + r + 0.8, -0.25), stroke: (paint: rgb("#059669"), thickness: 1.0pt, dash: "dotted"), mark: (end: "stealth", fill: rgb("#059669"), length: 0.11cm, width: 0.06cm))
  content((c2 + r + 0.45, -0.45), text(size: 6.5pt, fill: rgb("#059669"), weight: "bold", $arrow(v)_2$))

  // Công thức bảo toàn năng lượng
  content((0, -0.85), text(size: 6.5pt, fill: rgb("#0284c7"), weight: "bold", [$W_("đầu") = k (46e)^2 / (2r) = K_1 + K_2$]))
})

// --------------------------------------------------------------------------
// Bài 2.11: Điện thế V = a(x^2 + y^2) + bz^2
// --------------------------------------------------------------------------
// Hình đề: Hệ trục tọa độ và mặt đẳng thế ellipsoid tròn xoay
#let ve-de-ellipsoid-2-11 = canvas({
  import draw: *

  // Hệ trục tọa độ 3D
  line((0, 0), (1.8, 0), stroke: 0.6pt + rgb("#64748b"), mark: (end: "stealth", fill: rgb("#64748b"), length: 0.12cm, width: 0.06cm))
  content((1.95, 0), text(size: 7pt, fill: rgb("#64748b"), $y$))

  line((0, 0), (0, 1.8), stroke: 0.6pt + rgb("#64748b"), mark: (end: "stealth", fill: rgb("#64748b"), length: 0.12cm, width: 0.06cm))
  content((0, 1.95), text(size: 7pt, fill: rgb("#64748b"), $z$))

  line((0, 0), (-0.9, -0.9), stroke: 0.6pt + rgb("#64748b"), mark: (end: "stealth", fill: rgb("#64748b"), length: 0.12cm, width: 0.06cm))
  content((-1.05, -1.05), text(size: 7pt, fill: rgb("#64748b"), $x$))

  // Mặt đẳng thế ellipsoid trong mặt phẳng yz
  let rx = 1.3
  let rz = 0.9
  circle((0, 0), radius: (rx, rz), stroke: 1.0pt + rgb("#3b82f6"), fill: rgb("#dbeafe").transparentize(60%))

  // Vòng xích đạo tròn xoay (elip nghiêng theo trục x, y)
  circle((0, 0), radius: (rx, 0.4), stroke: (paint: rgb("#3b82f6"), thickness: 0.6pt, dash: "dashed"))

  content((1.1, 0.9), text(size: 7pt, fill: rgb("#1d4ed8"), weight: "bold", [$V = V_0$]))
})

// Hình giải: Thiết diện mặt phẳng Oxz, các elip đẳng thế và vector điện trường E vuông góc
#let ve-giai-ellipsoid-2-11 = canvas({
  import draw: *

  // Trục x và z
  line((-1.8, 0), (1.8, 0), stroke: 0.5pt + rgb("#94a3b8"), mark: (end: "stealth", fill: rgb("#94a3b8"), length: 0.11cm, width: 0.06cm))
  content((1.95, 0), text(size: 7pt, fill: rgb("#64748b"), $x$))
  line((0, -1.3), (0, 1.5), stroke: 0.5pt + rgb("#94a3b8"), mark: (end: "stealth", fill: rgb("#94a3b8"), length: 0.11cm, width: 0.06cm))
  content((0, 1.65), text(size: 7pt, fill: rgb("#64748b"), $z$))

  // 2 elip đẳng thế
  circle((0, 0), radius: (0.9, 0.6), stroke: 0.8pt + rgb("#60a5fa"), fill: none)
  content((0.95, 0.22), text(size: 6pt, fill: rgb("#2563eb"), [$V_1$]))

  circle((0, 0), radius: (1.5, 1.0), stroke: 0.9pt + rgb("#2563eb"), fill: none)
  content((1.55, 0.22), text(size: 6pt, fill: rgb("#1d4ed8"), [$V_2$]))

  // Các vector điện trường E = -grad V vuông góc với mặt đẳng thế, hướng vào tâm (nếu a,b > 0)
  // Tại điểm (1.5, 0): E hướng vào trong (-x)
  line((1.5, 0), (0.95, 0), stroke: (paint: rgb("#dc2626"), thickness: 1.2pt), mark: (end: "stealth", fill: rgb("#dc2626"), length: 0.12cm, width: 0.06cm))
  // Tại điểm (0, 1.0): E hướng vào trong (-z)
  line((0, 1.0), (0, 0.6), stroke: (paint: rgb("#dc2626"), thickness: 1.2pt), mark: (end: "stealth", fill: rgb("#dc2626"), length: 0.12cm, width: 0.06cm))
  // Tại góc phần tư 1: (1.06, 0.71)
  let px = 1.06
  let pz = 0.71
  circle((px, pz), radius: 0.035, fill: rgb("#7c3aed"))
  // Vector pháp tuyến grad V ~ (2a px, 2b pz), E ngược lại
  line((px, pz), (px - 0.42, pz - 0.35), stroke: (paint: rgb("#dc2626"), thickness: 1.3pt), mark: (end: "stealth", fill: rgb("#dc2626"), length: 0.13cm, width: 0.07cm))
  content((px - 0.25, pz - 0.52), text(size: 7pt, fill: rgb("#dc2626"), weight: "bold", $arrow(E)$))

  content((0, -1.5), text(size: 6.5pt, fill: rgb("#475569"), [$arrow(E) = -nabla V thin bot thin$ mặt đẳng thế]))
})

// --------------------------------------------------------------------------
// Bài 2.12: Hai bản kim loại hình vuông song song
// --------------------------------------------------------------------------
// Hình đề: Hai bản vuông cạnh a = 3 cm, cách nhau d = 5 mm, U = 25 V
#let ve-de-hai-ban-vuong-2-12 = canvas({
  import draw: *

  let d = 1.2
  let s = 1.2 // Cạnh hình vuông
  let tilt = 0.5

  // Bản âm (trái)
  line((-d / 2, -s / 2), (-d / 2 + tilt, -s / 2 + tilt), (-d / 2 + tilt, s / 2 + tilt), (-d / 2, s / 2), close: true, fill: rgb("#dbeafe"), stroke: 0.8pt + rgb("#2563eb"))
  content((-d / 2 + tilt / 2, 0), text(size: 9pt, fill: rgb("#1d4ed8"), weight: "bold", $-$))

  // Bản dương (phải)
  line((d / 2, -s / 2), (d / 2 + tilt, -s / 2 + tilt), (d / 2 + tilt, s / 2 + tilt), (d / 2, s / 2), close: true, fill: rgb("#fee2e2"), stroke: 0.8pt + rgb("#ef4444"))
  content((d / 2 + tilt / 2, 0), text(size: 8pt, fill: rgb("#dc2626"), weight: "bold", $+$))

  // Khoảng cách d
  line((-d / 2, -s / 2 - 0.2), (d / 2, -s / 2 - 0.2), stroke: 0.5pt + rgb("#1e293b"), mark: (start: "stealth", end: "stealth", fill: rgb("#1e293b"), length: 0.1cm, width: 0.05cm))
  content((0, -s / 2 - 0.38), text(size: 6.5pt, fill: rgb("#1e293b"), [$d = 5 thin "mm"$]))

  // Cạnh a = 3 cm
  line((d / 2 + tilt + 0.15, -s / 2 + tilt), (d / 2 + tilt + 0.15, s / 2 + tilt), stroke: 0.5pt + rgb("#475569"), mark: (start: "stealth", end: "stealth", fill: rgb("#475569"), length: 0.1cm, width: 0.05cm))
  content((d / 2 + tilt + 0.55, tilt), text(size: 6.5pt, fill: rgb("#475569"), [$a = 3 thin "cm"$]))

  // Hiệu điện thế U
  content((0, s / 2 + tilt + 0.25), text(size: 7.5pt, fill: rgb("#dc2626"), weight: "bold", [$U = 25 thin "V"$]))
})

// Hình giải: Điện trường E từ bản dương sang âm, lực F kéo electron sang bản dương
#let ve-giai-hai-ban-vuong-2-12 = canvas({
  import draw: *

  let d = 1.6
  let h = 1.1

  // Bản âm (trái) và bản dương (phải)
  rect((-d / 2 - 0.08, -h), (-d / 2, h), fill: rgb("#dbeafe"), stroke: 0.6pt + rgb("#2563eb"))
  content((-d / 2 - 0.22, 0), text(size: 8pt, weight: "bold", fill: rgb("#1d4ed8"), $-$))

  rect((d / 2, -h), (d / 2 + 0.08, h), fill: rgb("#fee2e2"), stroke: 0.6pt + rgb("#ef4444"))
  content((d / 2 + 0.22, 0), text(size: 8pt, weight: "bold", fill: rgb("#dc2626"), $+$))

  // Điện trường E hướng từ dương sang âm (sang trái)
  for y in (-0.5, 0.5) {
    line((d / 2, y), (-d / 2, y), stroke: (paint: rgb("#94a3b8"), thickness: 0.55pt), mark: (end: "stealth", fill: rgb("#94a3b8"), length: 0.12cm, width: 0.06cm))
  }
  content((0, 0.7), text(size: 7pt, fill: rgb("#64748b"), weight: "bold", $arrow(E)$))

  // Electron xuất phát từ bản âm bay sang bản dương
  let xe = -d / 2 + 0.18
  circle((xe, 0), radius: 0.11, fill: rgb("#dbeafe"), stroke: 0.7pt + rgb("#2563eb"))
  content((xe, 0), text(size: 6pt, fill: rgb("#1d4ed8"), weight: "bold", $-$))

  // Lực điện F = -eE kéo sang phải
  line((xe + 0.12, 0), (xe + 0.75, 0), stroke: (paint: rgb("#dc2626"), thickness: 1.3pt), mark: (end: "stealth", fill: rgb("#dc2626"), length: 0.13cm, width: 0.07cm))
  content((xe + 0.42, 0.22), text(size: 7pt, fill: rgb("#dc2626"), weight: "bold", $arrow(F) = -e arrow(E)$))

  // Vận tốc v tại bản dương
  circle((d / 2 - 0.12, 0), radius: 0.08, fill: rgb("#dbeafe"), stroke: 0.6pt + rgb("#2563eb"))
  line((d / 2 - 0.12, 0), (d / 2 + 0.45, 0), stroke: (paint: rgb("#059669"), thickness: 1.2pt), mark: (end: "stealth", fill: rgb("#059669"), length: 0.12cm, width: 0.06cm))
  content((d / 2 + 0.25, 0.22), text(size: 7pt, fill: rgb("#059669"), weight: "bold", $arrow(v)$))

  content((0, -0.65), text(size: 6.5pt, fill: rgb("#475569"), [$E = U/d, thin abs(Q) = epsilon_0 E A$]))
})

// --------------------------------------------------------------------------
// Bài 2.13: Di chuyển điện tích thử trong điện trường điện tích điểm
// --------------------------------------------------------------------------
// Hình đề: Điện tích +q tại O, các mặt đẳng thế bán kính rN = 5 cm, rM = 10 cm, rP = 15 cm
// và chu trình tam giác M -> N -> P -> M
#let ve-de-tam-giac-mnp-2-13 = canvas({
  import draw: *

  // Gốc O đặt điện tích q > 0
  circle((0, 0), radius: 0.14, fill: rgb("#fee2e2"), stroke: 0.8pt + rgb("#ef4444"))
  content((0, 0), text(size: 7pt, fill: rgb("#dc2626"), weight: "bold", $+$))
  content((-0.25, -0.2), text(size: 7.5pt, fill: rgb("#dc2626"), weight: "bold", $+q$))

  // Các mặt đẳng thế nét đứt (bán kính chuẩn: 0.75, 1.45, 2.15)
  let r-n = 0.75
  let r-m = 1.45
  let r-p = 2.15

  circle((0, 0), radius: r-n, stroke: (paint: rgb("#94a3b8"), thickness: 0.5pt, dash: "dashed"))
  circle((0, 0), radius: r-m, stroke: (paint: rgb("#94a3b8"), thickness: 0.5pt, dash: "dashed"))
  circle((0, 0), radius: r-p, stroke: (paint: rgb("#94a3b8"), thickness: 0.5pt, dash: "dashed"))

  // Tọa độ 3 đỉnh
  let nx = r-n * calc.cos(70deg)
  let ny = r-n * calc.sin(70deg)

  let mx = r-m
  let my = 0

  let px = r-p * calc.cos(135deg)
  let py = r-p * calc.sin(135deg)

  // Tam giác M -> N -> P -> M
  line((mx, my), (nx, ny), stroke: (paint: rgb("#0284c7"), thickness: 1.1pt), mark: (end: "stealth", fill: rgb("#0284c7"), length: 0.12cm, width: 0.06cm))
  line((nx, ny), (px, py), stroke: (paint: rgb("#0284c7"), thickness: 1.1pt), mark: (end: "stealth", fill: rgb("#0284c7"), length: 0.12cm, width: 0.06cm))
  line((px, py), (mx, my), stroke: (paint: rgb("#0284c7"), thickness: 1.1pt), mark: (end: "stealth", fill: rgb("#0284c7"), length: 0.12cm, width: 0.06cm))

  // Đỉnh N, M, P
  circle((nx, ny), radius: 0.04, fill: black)
  content((nx + 0.15, ny + 0.15), text(size: 7.5pt, weight: "bold", $N$))

  circle((mx, my), radius: 0.04, fill: black)
  content((mx + 0.18, my - 0.12), text(size: 7.5pt, weight: "bold", $M$))

  circle((px, py), radius: 0.04, fill: black)
  content((px - 0.18, py + 0.12), text(size: 7.5pt, weight: "bold", $P$))

  // Đoạn nối từ O và nhãn bán kính
  line((0, 0), (nx, ny), stroke: 0.4pt + luma(60%))
  content((nx / 2 - 0.18, ny / 2), text(size: 6pt, fill: rgb("#475569"), [5 cm]))

  content((mx / 2, -0.16), text(size: 6pt, fill: rgb("#475569"), [10 cm]))

  line((0, 0), (px, py), stroke: 0.4pt + luma(60%))
  content((px / 2 - 0.18, py / 2 - 0.1), text(size: 6pt, fill: rgb("#475569"), [15 cm]))
})

// Hình giải: Thể hiện công phụ thuộc hiệu điện thế V_M, V_N, V_P và bảo toàn công chu trình kín
#let ve-giai-tam-giac-mnp-2-13 = canvas({
  import draw: *

  let r-n = 0.7
  let r-m = 1.35
  let r-p = 2.0

  // 3 cung tròn đẳng thế
  arc((0, 0), start: -20deg, delta: 170deg, radius: r-n, stroke: (paint: rgb("#38bdf8"), thickness: 0.7pt))
  arc((0, 0), start: -20deg, delta: 170deg, radius: r-m, stroke: (paint: rgb("#0284c7"), thickness: 0.7pt))
  arc((0, 0), start: -20deg, delta: 170deg, radius: r-p, stroke: (paint: rgb("#1d4ed8"), thickness: 0.7pt))

  content((r-n * calc.cos(-15deg) + 0.3, r-n * calc.sin(-15deg)), text(size: 6pt, fill: rgb("#0284c7"), [$V_N$]))
  content((r-m * calc.cos(-15deg) + 0.3, r-m * calc.sin(-15deg)), text(size: 6pt, fill: rgb("#0284c7"), [$V_M$]))
  content((r-p * calc.cos(-15deg) + 0.3, r-p * calc.sin(-15deg)), text(size: 6pt, fill: rgb("#1d4ed8"), [$V_P$]))

  // Tâm O
  circle((0, 0), radius: 0.09, fill: rgb("#fee2e2"), stroke: 0.6pt + rgb("#ef4444"))
  content((0, 0), text(size: 5.5pt, fill: rgb("#dc2626"), weight: "bold", $+$))

  // Các điểm
  let nx = r-n * calc.cos(65deg)
  let ny = r-n * calc.sin(65deg)
  let mx = r-m * calc.cos(15deg)
  let my = r-m * calc.sin(15deg)
  let px = r-p * calc.cos(125deg)
  let py = r-p * calc.sin(125deg)

  // Đường chuyển dời
  line((mx, my), (nx, ny), stroke: (paint: rgb("#ea580c"), thickness: 1.1pt), mark: (end: "stealth", fill: rgb("#ea580c"), length: 0.11cm, width: 0.06cm))
  line((nx, ny), (px, py), stroke: (paint: rgb("#16a34a"), thickness: 1.1pt), mark: (end: "stealth", fill: rgb("#16a34a"), length: 0.11cm, width: 0.06cm))
  line((px, py), (mx, my), stroke: (paint: rgb("#ea580c"), thickness: 1.1pt), mark: (end: "stealth", fill: rgb("#ea580c"), length: 0.11cm, width: 0.06cm))

  circle((nx, ny), radius: 0.035, fill: black)
  content((nx + 0.14, ny + 0.12), text(size: 7pt, weight: "bold", $N$))

  circle((mx, my), radius: 0.035, fill: black)
  content((mx + 0.14, my - 0.12), text(size: 7pt, weight: "bold", $M$))

  circle((px, py), radius: 0.035, fill: black)
  content((px - 0.14, py + 0.12), text(size: 7pt, weight: "bold", $P$))

  // Ghi chú công thức
  content((0, -0.65), text(size: 6.5pt, fill: rgb("#1e293b"), [$A_(A B) = q_0 (V_A - V_B)$]))
  content((0, -0.92), text(size: 6.5pt, fill: rgb("#16a34a"), weight: "bold", [$integral.cont_("MNPM") arrow(F) dif arrow(s) = 0$]))
})

// --------------------------------------------------------------------------
// Bài 2.14: Điện thế tại tâm P của 3 cấu hình điện tích Q (điểm, cung, vòng)
// --------------------------------------------------------------------------
// Hình đề: 3 cấu hình: (a) điện tích điểm Q, (b) cung tròn góc alpha, (c) vòng tròn
#let ve-de-ba-cau-hinh-2-14 = canvas({
  import draw: *

  let r = 0.85

  // Cấu hình (a): Điểm Q cách P đoạn R
  let x-a = -2.1
  circle((x-a, 0), radius: 0.04, fill: rgb("#dc2626"))
  content((x-a - 0.15, 0), text(size: 7pt, fill: rgb("#dc2626"), weight: "bold", $P$))
  circle((x-a + r, 0), radius: 0.08, fill: rgb("#fee2e2"), stroke: 0.8pt + rgb("#ef4444"))
  content((x-a + r, 0), text(size: 5.5pt, fill: rgb("#dc2626"), weight: "bold", $Q$))
  line((x-a, 0), (x-a + r, 0), stroke: 0.5pt + rgb("#64748b"))
  content((x-a + r / 2, -0.16), text(size: 6pt, fill: rgb("#64748b"), $R$))
  content((x-a + r / 2, 0.45), text(size: 6.5pt, fill: rgb("#1e293b"), weight: "bold", [(a)]))

  // Cấu hình (b): Cung tròn bán kính R góc alpha
  let x-b = 0
  circle((x-b, 0), radius: 0.04, fill: rgb("#dc2626"))
  content((x-b - 0.15, 0), text(size: 7pt, fill: rgb("#dc2626"), weight: "bold", $P$))
  arc((x-b, 0), start: -45deg, delta: 90deg, radius: r, stroke: 1.3pt + rgb("#0284c7"))
  line((x-b, 0), (x-b + r * calc.cos(45deg), r * calc.sin(45deg)), stroke: 0.4pt + luma(60%))
  line((x-b, 0), (x-b + r * calc.cos(-45deg), r * calc.sin(-45deg)), stroke: 0.4pt + luma(60%))
  arc((x-b, 0), start: -45deg, delta: 90deg, radius: 0.3, stroke: 0.5pt + rgb("#0284c7"))
  content((x-b + 0.42, 0), text(size: 5.5pt, fill: rgb("#0284c7"), $alpha$))
  content((x-b + r + 0.18, 0), text(size: 6.5pt, fill: rgb("#0284c7"), weight: "bold", $Q$))
  content((x-b + 0.4, 0.55), text(size: 6.5pt, fill: rgb("#1e293b"), weight: "bold", [(b)]))

  // Cấu hình (c): Vòng tròn cả bán kính R
  let x-c = 2.1
  circle((x-c, 0), radius: 0.04, fill: rgb("#dc2626"))
  content((x-c, -0.2), text(size: 7pt, fill: rgb("#dc2626"), weight: "bold", $P$))
  circle((x-c, 0), radius: r, stroke: 1.2pt + rgb("#2563eb"), fill: none)
  line((x-c, 0), (x-c + r * calc.cos(30deg), r * calc.sin(30deg)), stroke: 0.5pt + rgb("#2563eb"))
  content((x-c + 0.4, 0.35), text(size: 6pt, fill: rgb("#2563eb"), $R$))
  content((x-c + r + 0.18, 0), text(size: 6.5pt, fill: rgb("#2563eb"), weight: "bold", $Q$))
  content((x-c, r + 0.25), text(size: 6.5pt, fill: rgb("#1e293b"), weight: "bold", [(c)]))
})

// Hình giải: Mọi phần tử đều cách P đoạn R, V(P) = kQ/R giống nhau
#let ve-giai-ba-cau-hinh-2-14 = canvas({
  import draw: *

  let r = 0.9

  // Minh họa tích phân vô hướng V(P)
  circle((0, 0), radius: 0.04, fill: rgb("#dc2626"))
  content((-0.2, 0), text(size: 7.5pt, fill: rgb("#dc2626"), weight: "bold", $P$))

  // Cung bất kì
  arc((0, 0), start: -50deg, delta: 100deg, radius: r, stroke: 1.2pt + rgb("#0284c7"))

  // Phần tử vi phân dq
  let ang = 20deg
  let dq-x = r * calc.cos(ang)
  let dq-y = r * calc.sin(ang)
  circle((dq-x, dq-y), radius: 0.06, fill: rgb("#f59e0b"))
  content((dq-x + 0.3, dq-y + 0.05), text(size: 6.5pt, fill: rgb("#b45309"), weight: "bold", $dif q$))

  // Bán kính R
  line((0, 0), (dq-x, dq-y), stroke: (paint: rgb("#dc2626"), thickness: 0.9pt, dash: "dotted"))
  content((dq-x / 2 - 0.1, dq-y / 2 + 0.15), text(size: 6.5pt, fill: rgb("#dc2626"), $R$))

  // Điện thế giống nhau
  content((0, -0.65), text(size: 7pt, fill: rgb("#0284c7"), weight: "bold", $dif V = k (dif q)/R => V(P) = (k Q)/R$))
  content((0, -0.92), text(size: 6.5pt, fill: rgb("#475569"), [(cả 3 cấu hình như nhau)]))
})

// --------------------------------------------------------------------------
// Bài 2.15: Dây tích điện đều - Điện thế trên đường kéo dài
// --------------------------------------------------------------------------
// Hình đề: Dây [-l/2, l/2], các điểm M (1.5l) và N (2.5l) trên trục Ox
#let ve-de-thanh-keo-dai-2-15 = canvas({
  import draw: *

  let l = 1.0 // Độ dài dây
  let x-m = 1.5 * l
  let x-n = 2.5 * l

  // Trục Ox
  line((-l / 2 - 0.6, 0), (x-n + 0.8, 0), stroke: 0.6pt + rgb("#64748b"), mark: (end: "stealth", fill: rgb("#64748b"), length: 0.13cm, width: 0.07cm))
  content((x-n + 0.75, 0.22), text(size: 7.5pt, fill: rgb("#64748b"), $x$))

  // Dây [-l/2, l/2]
  rect((-l / 2, -0.06), (l / 2, 0.06), fill: rgb("#38bdf8"), stroke: 0.8pt + rgb("#0284c7"), radius: 1pt)
  content((0, 0.22), text(size: 7pt, fill: rgb("#0284c7"), weight: "bold", $lambda$))

  // Gốc O và các mút
  circle((0, 0), radius: 0.03, fill: black)
  content((0, -0.16), text(size: 7pt, $O$))
  line((-l / 2, -0.1), (-l / 2, 0.1), stroke: 0.5pt + rgb("#1e293b"))
  content((-l / 2, -0.22), text(size: 6pt, [$-l/2$]))
  line((l / 2, -0.1), (l / 2, 0.1), stroke: 0.5pt + rgb("#1e293b"))
  content((l / 2, -0.22), text(size: 6pt, [$+l/2$]))

  // Điểm M và N
  circle((x-m, 0), radius: 0.04, fill: rgb("#dc2626"))
  content((x-m, 0.22), text(size: 7.5pt, fill: rgb("#dc2626"), weight: "bold", $M$))
  content((x-m, -0.22), text(size: 6pt, fill: rgb("#475569"), [$1.5l$]))

  circle((x-n, 0), radius: 0.04, fill: rgb("#dc2626"))
  content((x-n, 0.22), text(size: 7.5pt, fill: rgb("#dc2626"), weight: "bold", $N$))
  content((x-n, -0.22), text(size: 6pt, fill: rgb("#475569"), [$2.5l$]))

  // Mũi tên dịch chuyển từ M tới N
  arc(((x-m + x-n) / 2, 0.3), start: 170deg, delta: -160deg, radius: ((x-n - x-m) / 2, 0.25), stroke: (paint: rgb("#059669"), thickness: 1.0pt), mark: (end: "stealth", fill: rgb("#059669"), length: 0.11cm, width: 0.06cm))
  content(((x-m + x-n) / 2, 0.72), text(size: 6.5pt, fill: rgb("#059669"), [chuyển $q$]))
})

// Hình giải: Phần tử dx trên dây, vector E(r) và công chuyển điện tích q
#let ve-giai-thanh-keo-dai-2-15 = canvas({
  import draw: *

  let l = 0.9
  let x-m = 1.5 * l
  let x-n = 2.4 * l

  // Trục Ox
  line((-l / 2 - 0.4, 0), (x-n + 0.6, 0), stroke: 0.5pt + rgb("#64748b"))

  // Dây
  rect((-l / 2, -0.05), (l / 2, 0.05), fill: rgb("#38bdf8"), stroke: 0.7pt + rgb("#0284c7"))

  // Phần tử vi phân dx tại x
  let x0 = 0.15
  rect((x0 - 0.05, -0.07), (x0 + 0.05, 0.07), fill: rgb("#f59e0b"), stroke: 0.5pt + rgb("#b45309"))
  content((x0, 0.22), text(size: 6pt, fill: rgb("#b45309"), weight: "bold", $dif x$))

  // Điểm xét r bất kì
  let r-xet = 1.15 * l
  circle((r-xet, 0), radius: 0.035, fill: rgb("#7c3aed"))
  content((r-xet, 0.2), text(size: 6.5pt, fill: rgb("#7c3aed"), weight: "bold", $r$))

  // Khoảng cách r - x
  line((x0, -0.2), (r-xet, -0.2), stroke: 0.4pt + rgb("#7c3aed"), mark: (start: "stealth", end: "stealth", fill: rgb("#7c3aed"), length: 0.09cm, width: 0.05cm))
  content(((x0 + r-xet) / 2, -0.38), text(size: 6pt, fill: rgb("#7c3aed"), $r - x$))

  // Vector điện trường E(r) hướng ra ngoài
  line((r-xet, 0), (r-xet + 0.6, 0), stroke: (paint: rgb("#dc2626"), thickness: 1.2pt), mark: (end: "stealth", fill: rgb("#dc2626"), length: 0.12cm, width: 0.06cm))
  content((r-xet + 0.35, 0.22), text(size: 7pt, fill: rgb("#dc2626"), weight: "bold", $arrow(E)$))

  // Công thức A = q(VM - VN)
  content((l, -0.75), text(size: 6.5pt, fill: rgb("#0284c7"), weight: "bold", $A = q(V_M - V_N) = q k lambda ln(4/3)$))
})

// --------------------------------------------------------------------------
// Bài 2.16: Vòng dây tròn bán kính a tích điện q
// --------------------------------------------------------------------------
// Hình đề: Vòng dây bán kính a trong Oxy, điểm M trên trục z tại h
#let ve-de-vong-day-2-16 = canvas({
  import draw: *

  let a = 1.4
  let b = 0.48
  let h = 1.4

  // Trục z
  line((0, -0.5), (0, h + 0.5), stroke: 0.6pt + rgb("#64748b"), mark: (end: "stealth", fill: rgb("#64748b"), length: 0.12cm, width: 0.06cm))
  content((0.18, h + 0.45), text(size: 7.5pt, fill: rgb("#64748b"), weight: "bold", $z$))

  // Vòng dây elip
  circle((0, 0), radius: (a, b), stroke: 1.1pt + rgb("#2563eb"), fill: none)

  // Tâm O
  circle((0, 0), radius: 0.035, fill: black)
  content((-0.18, -0.12), text(size: 7.5pt, weight: "bold", $O$))

  // Bán kính a = 4 cm
  line((0, 0), (a, 0), stroke: 0.6pt + rgb("#0284c7"), mark: (end: "stealth", fill: rgb("#0284c7"), length: 0.11cm, width: 0.06cm))
  content((a / 2, -0.16), text(size: 6.5pt, fill: rgb("#0284c7"), [$a = 4 thin "cm"$]))

  // Điểm M ở độ cao h = 3 cm
  circle((0, h), radius: 0.045, fill: rgb("#dc2626"))
  content((-0.2, h), text(size: 8pt, fill: rgb("#dc2626"), weight: "bold", $M$))

  // Đoạn đo h
  line((-0.5, 0), (-0.5, h), stroke: 0.5pt + rgb("#1e293b"), mark: (start: "stealth", end: "stealth", fill: rgb("#1e293b"), length: 0.11cm, width: 0.06cm))
  content((-0.82, h / 2), text(size: 6.5pt, fill: rgb("#1e293b"), [$h = 3 thin "cm"$]))

  // Cạnh huyền r = 5 cm
  line((a, 0), (0, h), stroke: (paint: rgb("#dc2626"), thickness: 0.9pt, dash: "dashed"))
  content((a / 2 + 0.35, h / 2 + 0.12), text(size: 6.5pt, fill: rgb("#dc2626"), weight: "bold", [5 cm]))
})

// Hình giải: So sánh điện trường và điện thế tại O và M
#let ve-giai-vong-day-2-16 = canvas({
  import draw: *

  let a = 1.3
  let b = 0.42
  let h = 1.3

  // Trục z
  line((0, 0), (0, h + 0.5), stroke: 0.5pt + rgb("#64748b"))

  // Vòng elip
  circle((0, 0), radius: (a, b), stroke: 0.9pt + rgb("#2563eb"), fill: none)

  // Điểm O: E = 0, V_O = kq/a
  circle((0, 0), radius: 0.035, fill: black)
  content((-0.18, -0.12), text(size: 7pt, $O$))
  content((0.7, -0.45), text(size: 6.5pt, fill: rgb("#0284c7"), weight: "bold", [$arrow(E)_O = arrow(0), thin V_O = (k q)/a$]))

  // Điểm M: E_z hướng lên, V_M = kq / sqrt(a^2 + h^2)
  circle((0, h), radius: 0.04, fill: rgb("#dc2626"))
  content((-0.18, h), text(size: 7.5pt, fill: rgb("#dc2626"), weight: "bold", $M$))

  // Vector điện trường E_z
  line((0, h), (0, h + 0.5), stroke: (paint: rgb("#dc2626"), thickness: 1.3pt), mark: (end: "stealth", fill: rgb("#dc2626"), length: 0.12cm, width: 0.06cm))
  content((0.25, h + 0.35), text(size: 7pt, fill: rgb("#dc2626"), weight: "bold", $arrow(E)_z$))

  content((0, h + 0.72), text(size: 6.5pt, fill: rgb("#dc2626"), weight: "bold", [$V_M = (k q)/sqrt(a^2 + h^2)$]))
})

// --------------------------------------------------------------------------
// Bài 2.17: Một phần tư đĩa tròn tích điện đều
// --------------------------------------------------------------------------
// Hình đề: 1/4 đĩa tròn trong Oxy (góc thứ nhất), trục z qua tâm
#let ve-de-phan-tu-dia-2-17 = canvas({
  import draw: *

  let rx = 1.6
  let ry = 0.65
  let z = 1.5

  // Trục x, y, z
  line((0, 0), (rx + 0.6, 0), stroke: 0.6pt + rgb("#64748b"), mark: (end: "stealth", fill: rgb("#64748b"), length: 0.12cm, width: 0.06cm))
  content((rx + 0.75, 0), text(size: 7pt, fill: rgb("#64748b"), $x$))

  line((0, 0), (0, ry + 0.4), stroke: 0.5pt + rgb("#64748b"))

  line((0, 0), (0, z + 0.6), stroke: 0.6pt + rgb("#64748b"), mark: (end: "stealth", fill: rgb("#64748b"), length: 0.12cm, width: 0.06cm))
  content((0.18, z + 0.55), text(size: 7.5pt, fill: rgb("#64748b"), weight: "bold", $z$))

  // 1/4 đĩa: cung elip từ 0 đến 90 độ nối về gốc (0, 0)
  arc((0, 0), start: 0deg, delta: 90deg, radius: (rx, ry), stroke: 1.1pt + rgb("#0284c7"), fill: rgb("#e0f2fe"))
  line((0, 0), (rx, 0), stroke: 1.1pt + rgb("#0284c7"))
  line((0, 0), (0, ry), stroke: 1.1pt + rgb("#0284c7"))

  // Nhãn sigma
  content((rx * 0.45, ry * 0.45), text(size: 7pt, fill: rgb("#0369a1"), weight: "bold", $sigma$))

  // Bán kính R
  content((rx / 2, -0.16), text(size: 6.5pt, fill: rgb("#0284c7"), $R$))

  // Điểm P trên trục z
  circle((0, z), radius: 0.045, fill: rgb("#dc2626"))
  content((-0.18, z), text(size: 8pt, fill: rgb("#dc2626"), weight: "bold", $P$))

  // Đoạn z
  line((-0.35, 0), (-0.35, z), stroke: 0.5pt + rgb("#1e293b"), mark: (start: "stealth", end: "stealth", fill: rgb("#1e293b"), length: 0.1cm, width: 0.05cm))
  content((-0.55, z / 2), text(size: 6.5pt, fill: rgb("#1e293b"), $z$))
})

// Hình giải: Vành vi phân góc pi/2 bán kính s dày ds, khoảng cách sqrt(s^2+z^2)
#let ve-giai-phan-tu-dia-2-17 = canvas({
  import draw: *

  let rx = 1.5
  let ry = 0.6
  let z = 1.4

  // Trục z
  line((0, 0), (0, z + 0.4), stroke: 0.5pt + rgb("#64748b"))

  // Nền 1/4 đĩa
  arc((0, 0), start: 0deg, delta: 90deg, radius: (rx, ry), stroke: 0.6pt + rgb("#94a3b8"), fill: rgb("#f8fafc"))
  line((0, 0), (rx, 0), stroke: 0.6pt + rgb("#94a3b8"))
  line((0, 0), (0, ry), stroke: 0.6pt + rgb("#94a3b8"))

  // Dải vi phân bán kính s (góc pi/2)
  let s-rx = 0.95
  let s-ry = 0.38
  arc((0, 0), start: 0deg, delta: 90deg, radius: (s-rx, s-ry), stroke: 1.1pt + rgb("#f97316"), fill: none)
  content((s-rx + 0.3, s-ry * 0.6), text(size: 6pt, fill: rgb("#c2410c"), weight: "bold", [cung $s, thin dif s$]))

  // Điểm P
  circle((0, z), radius: 0.04, fill: rgb("#dc2626"))
  content((-0.18, z), text(size: 7.5pt, fill: rgb("#dc2626"), weight: "bold", $P$))

  // Cạnh huyền
  line((s-rx, 0), (0, z), stroke: (paint: rgb("#dc2626"), thickness: 0.9pt, dash: "dotted"))
  content((s-rx / 2 + 0.35, z / 2 + 0.08), text(size: 6pt, fill: rgb("#dc2626"), $sqrt(s^2 + z^2)$))

  // Công thức
  content((0.7, -0.65), text(size: 6.5pt, fill: rgb("#0284c7"), weight: "bold", $V(z) = 1/4 V_("đĩa") = (pi k sigma)/2 (sqrt(R^2+z^2) - abs(z))$))
})

// --------------------------------------------------------------------------
// Bài 2.18: Hai mặt trụ kim loại mỏng đồng trục
// --------------------------------------------------------------------------
// Hình đề: Mặt cắt ngang 2 hình tròn đồng tâm r1 = 3 cm, r2 = 10 cm, U = 450 V
#let ve-de-hai-tru-2-18 = canvas({
  import draw: *

  let r1 = 0.7
  let r2 = 1.8

  // Vỏ ngoài r2 (âm)
  circle((0, 0), radius: r2, stroke: 1.2pt + rgb("#2563eb"), fill: rgb("#eff6ff"))
  // Vỏ trong r1 (dương)
  circle((0, 0), radius: r1, stroke: 1.2pt + rgb("#ef4444"), fill: white)

  // Tâm O
  circle((0, 0), radius: 0.035, fill: black)
  content((-0.15, -0.12), text(size: 7pt, $O$))

  // Dấu điện tích
  for ang in (30deg, 90deg, 150deg, 210deg, 270deg, 330deg) {
    let px = (r1 - 0.15) * calc.cos(ang)
    let py = (r1 - 0.15) * calc.sin(ang)
    content((px, py), text(size: 6pt, fill: rgb("#dc2626"), weight: "bold", $+$))
  }
  for ang in (15deg, 75deg, 135deg, 195deg, 255deg, 315deg) {
    let qx = (r2 - 0.15) * calc.cos(ang)
    let qy = (r2 - 0.15) * calc.sin(ang)
    content((qx, qy), text(size: 7pt, fill: rgb("#1d4ed8"), weight: "bold", $-$))
  }

  // Bán kính r1 và r2
  line((0, 0), (r1 * calc.cos(45deg), r1 * calc.sin(45deg)), stroke: 0.6pt + rgb("#dc2626"), mark: (end: "stealth", fill: rgb("#dc2626"), length: 0.1cm, width: 0.05cm))
  content((0.2, 0.4), text(size: 6.5pt, fill: rgb("#dc2626"), weight: "bold", $r_1$))

  line((0, 0), (r2 * calc.cos(-30deg), r2 * calc.sin(-30deg)), stroke: 0.6pt + rgb("#1d4ed8"), mark: (end: "stealth", fill: rgb("#1d4ed8"), length: 0.1cm, width: 0.05cm))
  content((0.9, -0.65), text(size: 6.5pt, fill: rgb("#1d4ed8"), weight: "bold", $r_2$))

  // Hiệu điện thế U
  content((0, -r2 - 0.25), text(size: 7pt, fill: rgb("#1e293b"), weight: "bold", [$U = 450 thin "V"$]))
})

// Hình giải: Đường sức điện trường hướng xuyên tâm và công thức U = int E dr
#let ve-giai-hai-tru-2-18 = canvas({
  import draw: *

  let r1 = 0.65
  let r2 = 1.7

  // Hai đường tròn
  circle((0, 0), radius: r2, stroke: 1.0pt + rgb("#2563eb"), fill: none)
  circle((0, 0), radius: r1, stroke: 1.0pt + rgb("#ef4444"), fill: none)

  // Mặt Gauss bán kính r ở giữa
  let rg = (r1 + r2) / 2
  circle((0, 0), radius: rg, stroke: (paint: rgb("#f59e0b"), thickness: 0.7pt, dash: "dashed"))
  content((rg * calc.cos(60deg) + 0.35, rg * calc.sin(60deg)), text(size: 6pt, fill: rgb("#b45309"), weight: "bold", [Mặt Gauss $r$]))

  // Các vector điện trường E hướng ra ngoài
  for ang in (0deg, 90deg, 180deg, 270deg) {
    let p1x = r1 * calc.cos(ang)
    let p1y = r1 * calc.sin(ang)
    let p2x = (r2 - 0.1) * calc.cos(ang)
    let p2y = (r2 - 0.1) * calc.sin(ang)
    line((p1x, p1y), (p2x, p2y), stroke: (paint: rgb("#dc2626"), thickness: 0.9pt), mark: (end: "stealth", fill: rgb("#dc2626"), length: 0.1cm, width: 0.05cm))
  }
  content((rg * calc.cos(0deg) + 0.15, 0.2), text(size: 6.5pt, fill: rgb("#dc2626"), weight: "bold", $arrow(E)$))

  // Công thức
  content((0, -r2 - 0.25), text(size: 6.5pt, fill: rgb("#0284c7"), weight: "bold", [$E(r) = lambda / (2 pi epsilon_0 r), thin U = lambda / (2 pi epsilon_0) ln(r_2/r_1)$]))
})

// --------------------------------------------------------------------------
// Bài 2.19: Ống đếm Geiger-Müller
// --------------------------------------------------------------------------
// Hình đề: Dây trục bán kính a = 145 um (+), ống ngoài b = 1.8 cm (-), điểm r
#let ve-de-geiger-2-19 = canvas({
  import draw: *

  let rb = 1.7
  let ra = 0.08 // Dây trục rất mảnh

  // Ống ngoài hình trụ (mặt cắt)
  circle((0, 0), radius: rb, stroke: 1.3pt + rgb("#475569"), fill: rgb("#f1f5f9"))
  content((rb * calc.cos(135deg) - 0.25, rb * calc.sin(135deg) + 0.2), text(size: 6.5pt, fill: rgb("#475569"), weight: "bold", [Vỏ ngoài ($b$)]))

  // Dây trục ở tâm (anode +)
  circle((0, 0), radius: ra, fill: rgb("#dc2626"), stroke: 0.6pt + rgb("#b91c1c"))
  content((0.25, 0.22), text(size: 6.5pt, fill: rgb("#dc2626"), weight: "bold", [Dây trục ($a$)]))

  // Điểm r = 1.2 cm
  let rr = 1.15
  circle((rr, 0), radius: 0.04, fill: rgb("#0284c7"))
  content((rr, 0.22), text(size: 7pt, fill: rgb("#0284c7"), weight: "bold", $r$))

  // Vector E tại r
  line((rr, 0), (rr + 0.45, 0), stroke: (paint: rgb("#dc2626"), thickness: 1.1pt), mark: (end: "stealth", fill: rgb("#dc2626"), length: 0.11cm, width: 0.06cm))
  content((rr + 0.25, -0.2), text(size: 6.5pt, fill: rgb("#dc2626"), weight: "bold", $arrow(E)$))

  // Khoảng cách r
  line((0, -0.4), (rr, -0.4), stroke: 0.5pt + rgb("#0284c7"), mark: (start: "stealth", end: "stealth", fill: rgb("#0284c7"), length: 0.09cm, width: 0.05cm))
  content((rr / 2, -0.58), text(size: 6pt, fill: rgb("#0284c7"), [$r = 1.2 thin "cm"$]))
})

// Hình giải: Trường E tăng vọt theo 1/r gây ion hóa thác tuyết gần dây
#let ve-giai-geiger-2-19 = canvas({
  import draw: *

  let rb = 1.6

  // Ống ngoài
  circle((0, 0), radius: rb, stroke: 0.9pt + rgb("#475569"), fill: none)

  // Vùng thác tuyết ion hóa sát dây (hình tròn vàng nhạt)
  circle((0, 0), radius: 0.45, fill: rgb("#fef3c7"), stroke: (paint: rgb("#f59e0b"), thickness: 0.6pt, dash: "dotted"))
  content((0, 0.62), text(size: 6pt, fill: rgb("#b45309"), weight: "bold", [vùng ion hóa]))

  // Dây trục tâm
  circle((0, 0), radius: 0.06, fill: rgb("#dc2626"))

  // Các tia ion hóa và electron thác tuyết
  for ang in (0deg, 60deg, 120deg, 180deg, 240deg, 300deg) {
    let p1x = 0.1 * calc.cos(ang)
    let p1y = 0.1 * calc.sin(ang)
    let p2x = (rb - 0.1) * calc.cos(ang)
    let p2y = (rb - 0.1) * calc.sin(ang)
    line((p1x, p1y), (p2x, p2y), stroke: (paint: rgb("#dc2626"), thickness: 0.7pt), mark: (end: "stealth", fill: rgb("#dc2626"), length: 0.09cm, width: 0.05cm))
  }

  // Công thức
  content((0, -rb - 0.25), text(size: 6.5pt, fill: rgb("#0284c7"), weight: "bold", [$U = E(r) r ln(b/a) approx 1.16 times 10^3 thin "V"$]))
})

// --------------------------------------------------------------------------
// Bài 2.20: Hai vỏ cầu mỏng đồng tâm
// --------------------------------------------------------------------------
// Hình đề: 2 vỏ cầu mỏng R1 = 3 cm (+q1), R2 = 5 cm (-q2), các điểm 0, 4 cm, 6 cm
#let ve-de-hai-vo-cau-2-20 = canvas({
  import draw: *

  let r1 = 0.9
  let r2 = 1.6

  // Vỏ ngoài R2
  circle((0, 0), radius: r2, stroke: 1.1pt + rgb("#2563eb"), fill: rgb("#eff6ff").transparentize(40%))
  content((r2 * calc.cos(40deg) + 0.35, r2 * calc.sin(40deg)), text(size: 6.5pt, fill: rgb("#1d4ed8"), weight: "bold", [$R_2, q_2$]))

  // Vỏ trong R1
  circle((0, 0), radius: r1, stroke: 1.1pt + rgb("#dc2626"), fill: rgb("#fee2e2").transparentize(40%))
  content((r1 * calc.cos(140deg) - 0.35, r1 * calc.sin(140deg)), text(size: 6.5pt, fill: rgb("#dc2626"), weight: "bold", [$R_1, q_1$]))

  // Tâm r = 0
  circle((0, 0), radius: 0.04, fill: black)
  content((0.15, -0.15), text(size: 6.5pt, weight: "bold", [$r=0$]))

  // Điểm r = 4 cm (ở giữa)
  let r-mid = (r1 + r2) / 2
  circle((r-mid, 0), radius: 0.04, fill: rgb("#059669"))
  content((r-mid, 0.2), text(size: 6.5pt, fill: rgb("#059669"), weight: "bold", [$4 thin "cm"$]))

  // Điểm r = 6 cm (ngoài)
  let r-out = 2.0
  circle((r-out, 0), radius: 0.04, fill: rgb("#7c3aed"))
  content((r-out, 0.2), text(size: 6.5pt, fill: rgb("#7c3aed"), weight: "bold", [$6 thin "cm"$]))
})

// Hình giải: Đồ thị thế V(r) theo 3 miền r <= R1, R1 <= r <= R2, r >= R2
#let ve-giai-hai-vo-cau-2-20 = canvas({
  import draw: *

  // Hệ trục tọa độ đồ thị V theo r
  line((0, -1.2), (0, 1.2), stroke: 0.6pt + rgb("#64748b"), mark: (end: "stealth", fill: rgb("#64748b"), length: 0.11cm, width: 0.06cm))
  content((0.2, 1.15), text(size: 7pt, fill: rgb("#64748b"), weight: "bold", $V(r)$))

  line((-0.2, 0), (2.4, 0), stroke: 0.6pt + rgb("#64748b"), mark: (end: "stealth", fill: rgb("#64748b"), length: 0.11cm, width: 0.06cm))
  content((2.35, -0.2), text(size: 7pt, fill: rgb("#64748b"), weight: "bold", $r$))

  // Các vạch R1 và R2
  let x1 = 0.7
  let x2 = 1.3
  line((x1, -0.06), (x1, 0.06), stroke: 0.5pt + black)
  content((x1, -0.2), text(size: 6.5pt, $R_1$))

  line((x2, -0.06), (x2, 0.06), stroke: 0.5pt + black)
  content((x2, -0.2), text(size: 6.5pt, $R_2$))

  // Đoạn 1: 0 <= r <= R1: V = 179.8 V (hằng số dương)
  let v1 = 0.55
  line((0, v1), (x1, v1), stroke: (paint: rgb("#dc2626"), thickness: 1.3pt))

  // Đoạn 2: R1 <= r <= R2: V giảm từ 179.8 V xuống âm
  let v2 = -0.6
  line((x1, v1), (x2, v2), stroke: (paint: rgb("#dc2626"), thickness: 1.3pt))

  // Đoạn 3: r >= R2: V = k(q1+q2)/r âm và tiệm cận 0
  line((x2, v2), (2.2, -0.25), stroke: (paint: rgb("#dc2626"), thickness: 1.3pt))

  // Nhãn giá trị
  circle((0, v1), radius: 0.03, fill: rgb("#dc2626"))
  content((-0.45, v1), text(size: 6pt, fill: rgb("#dc2626"), [$+180 thin "V"$]))

  circle((x2, v2), radius: 0.03, fill: rgb("#dc2626"))
  content((x2 + 0.45, v2), text(size: 6pt, fill: rgb("#dc2626"), [$-540 thin "V"$]))
})

// --------------------------------------------------------------------------
// Bài 2.21: Hai quả cầu kim loại cùng điện thế bề mặt (RA = 3 RB)
// --------------------------------------------------------------------------
// Hình đề: Quả cầu A bán kính lớn 3R và quả cầu B bán kính R, cùng thế V0
#let ve-de-hai-qua-cau-2-21 = canvas({
  import draw: *

  let r-b = 0.5
  let r-a = 1.5

  // Quả cầu A (trái)
  let xa = -1.3
  circle((xa, 0), radius: r-a, fill: rgb("#e0f2fe"), stroke: 1.1pt + rgb("#0284c7"))
  content((xa, 0.2), text(size: 8pt, fill: rgb("#0369a1"), weight: "bold", [Quả cầu A]))
  content((xa, -0.15), text(size: 7pt, fill: rgb("#0369a1"), [$R_A = 3 R$]))
  content((xa, -r-a - 0.25), text(size: 7pt, fill: rgb("#1e293b"), weight: "bold", [$V_A = V_0$]))

  // Quả cầu B (phải)
  let xb = 1.4
  circle((xb, 0), radius: r-b, fill: rgb("#e0f2fe"), stroke: 1.1pt + rgb("#0284c7"))
  content((xb, 0.15), text(size: 7pt, fill: rgb("#0369a1"), weight: "bold", [B]))
  content((xb, -0.15), text(size: 6.5pt, fill: rgb("#0369a1"), [$R_B = R$]))
  content((xb, -r-b - 0.25), text(size: 7pt, fill: rgb("#1e293b"), weight: "bold", [$V_B = V_0$]))
})

// Hình giải: Quả cầu nhỏ B có mật độ điện tích và điện trường bề mặt gấp 3 lần quả A
#let ve-giai-hai-qua-cau-2-21 = canvas({
  import draw: *

  let r-b = 0.45
  let r-a = 1.35
  let xa = -1.2
  let xb = 1.3

  // Quả cầu A
  circle((xa, 0), radius: r-a, stroke: 0.9pt + rgb("#0284c7"), fill: none)
  // Các vector điện trường bề mặt ngắn E_A
  for ang in (0deg, 60deg, 120deg, 180deg, 240deg, 300deg) {
    let p1x = xa + r-a * calc.cos(ang)
    let p1y = r-a * calc.sin(ang)
    let p2x = xa + (r-a + 0.3) * calc.cos(ang)
    let p2y = (r-a + 0.3) * calc.sin(ang)
    line((p1x, p1y), (p2x, p2y), stroke: (paint: rgb("#0284c7"), thickness: 0.8pt), mark: (end: "stealth", fill: rgb("#0284c7"), length: 0.08cm, width: 0.04cm))
  }
  content((xa + r-a + 0.35, 0.2), text(size: 6.5pt, fill: rgb("#0284c7"), weight: "bold", $arrow(E)_A$))

  // Quả cầu B
  circle((xb, 0), radius: r-b, stroke: 0.9pt + rgb("#dc2626"), fill: none)
  // Các vector điện trường bề mặt dài gấp 3 lần E_B = 3 E_A
  for ang in (0deg, 45deg, 90deg, 135deg, 180deg, 225deg, 270deg, 315deg) {
    let p1x = xb + r-b * calc.cos(ang)
    let p1y = r-b * calc.sin(ang)
    let p2x = xb + (r-b + 0.6) * calc.cos(ang)
    let p2y = (r-b + 0.6) * calc.sin(ang)
    line((p1x, p1y), (p2x, p2y), stroke: (paint: rgb("#dc2626"), thickness: 1.1pt), mark: (end: "stealth", fill: rgb("#dc2626"), length: 0.1cm, width: 0.05cm))
  }
  content((xb + r-b + 0.65, 0.2), text(size: 6.5pt, fill: rgb("#dc2626"), weight: "bold", $arrow(E)_B$))

  // Kết luận
  content((0, -1.6), text(size: 6.5pt, fill: rgb("#1e293b"), weight: "bold", [$Q_B / Q_A = 1/3, quad E_B / E_A = 3$ (hiệu ứng mũi nhọn)]))
})

// --------------------------------------------------------------------------
// Bài 2.22: Quả cầu tích điện rho(r) = rho0 (1 - r/R)
// --------------------------------------------------------------------------
// Hình đề: Quả cầu bán kính R, mật độ đậm ở tâm nhạt dần ra biên
#let ve-de-qua-cau-bien-thien-2-22 = canvas({
  import draw: *

  let r = 1.6

  // Các lớp đồng tâm thể hiện mật độ giảm dần
  circle((0, 0), radius: r, fill: rgb("#fef3c7"), stroke: 1.1pt + rgb("#d97706"))
  circle((0, 0), radius: r * 0.7, fill: rgb("#fde68a"), stroke: none)
  circle((0, 0), radius: r * 0.4, fill: rgb("#fcd34d"), stroke: none)
  circle((0, 0), radius: r * 0.15, fill: rgb("#fbbf24"), stroke: none)

  // Bán kính R
  line((0, 0), (r * calc.cos(30deg), r * calc.sin(30deg)), stroke: 0.7pt + rgb("#b45309"), mark: (end: "stealth", fill: rgb("#b45309"), length: 0.11cm, width: 0.06cm))
  content((0.8, 0.6), text(size: 7pt, fill: rgb("#b45309"), weight: "bold", $R$))

  // Tâm O
  circle((0, 0), radius: 0.035, fill: black)
  content((-0.15, -0.12), text(size: 7pt, $O$))

  // Công thức mật độ rho(r)
  content((0, -r - 0.28), text(size: 7pt, fill: rgb("#b45309"), weight: "bold", [$rho(r) = rho_0 (1 - r/R)$]))
})

// Hình giải: Đồ thị đường cong điện thế V(r) và điện trường E(r)
#let ve-giai-qua-cau-bien-thien-2-22 = canvas({
  import draw: *

  // Hệ trục đồ thị
  line((0, 0), (0, 1.8), stroke: 0.6pt + rgb("#64748b"), mark: (end: "stealth", fill: rgb("#64748b"), length: 0.11cm, width: 0.06cm))
  content((0.2, 1.75), text(size: 6.5pt, fill: rgb("#64748b"), weight: "bold", $V, E$))

  line((0, 0), (2.5, 0), stroke: 0.6pt + rgb("#64748b"), mark: (end: "stealth", fill: rgb("#64748b"), length: 0.11cm, width: 0.06cm))
  content((2.45, -0.2), text(size: 6.5pt, fill: rgb("#64748b"), weight: "bold", $r$))

  let xr = 1.1
  line((xr, -0.05), (xr, 0.05), stroke: 0.5pt + black)
  content((xr, -0.18), text(size: 6.5pt, $R$))

  // Đường cong điện thế V(r) (màu xanh dương)
  line((0, 1.5), (0.3, 1.45), (0.6, 1.25), (0.9, 0.95), (xr, 0.75), stroke: (paint: rgb("#0284c7"), thickness: 1.3pt))
  line((xr, 0.75), (1.5, 0.55), (1.9, 0.43), (2.3, 0.35), stroke: (paint: rgb("#0284c7"), thickness: 1.3pt))
  content((0.45, 1.6), text(size: 6pt, fill: rgb("#0284c7"), weight: "bold", $V(r)$))

  // Đường cong điện trường E(r) (màu đỏ)
  line((0, 0), (0.4, 0.45), (0.8, 0.7), (xr, 0.65), stroke: (paint: rgb("#dc2626"), thickness: 1.1pt, dash: "dashed"))
  line((xr, 0.65), (1.5, 0.35), (1.9, 0.22), (2.3, 0.15), stroke: (paint: rgb("#dc2626"), thickness: 1.1pt, dash: "dashed"))
  content((1.25, 0.82), text(size: 6pt, fill: rgb("#dc2626"), weight: "bold", $E(r)$))

  // Nhãn giá trị tâm
  content((-0.45, 1.5), text(size: 5.5pt, fill: rgb("#0284c7"), [$2 (k Q)/R$]))
})

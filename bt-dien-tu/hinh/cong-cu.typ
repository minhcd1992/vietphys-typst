// Công cụ vẽ dùng chung cho các hình CeTZ của Phần 1 (điện trường, điện thế).
#import "@preview/cetz:0.5.2": canvas, decorations, draw

#let mau = (
  do: rgb("#dc2626"), xanh: rgb("#2563eb"), luc: rgb("#16a34a"), cam: rgb("#ea580c"),
  tim: rgb("#9333ea"), vang: rgb("#d97706"), xam: luma(55%), dam: rgb("#334155"),
)
#let nen = (
  do: rgb("#fee2e2"), xanh: rgb("#dbeafe"), cam: rgb("#fed7aa"), vang: rgb("#fef3c7"),
  xam: rgb("#e2e8f0"), luc: rgb("#dcfce7"),
)
#let dut = (dash: "dashed", thickness: 0.5pt, paint: luma(55%))

// Canvas với cỡ chữ nhãn thống nhất.
#let hinh(body, length: 1cm, size: 8pt) = {
  set text(size: size)
  canvas(length: length, body)
}
// Bọc hình vào figure không đánh số.
#let fig(body, caption: none) = figure(body, caption: caption, kind: image, numbering: none, supplement: none)

#let _cong(p, v, s) = (p.at(0) + v.at(0) * s, p.at(1) + v.at(1) * s)
#let _don-vi(a, b) = {
  let (dx, dy) = (b.at(0) - a.at(0), b.at(1) - a.at(1))
  let l = calc.sqrt(dx * dx + dy * dy)
  (dx / l, dy / l)
}
#let _huong = (
  north: ((0, 1), "south"), south: ((0, -1), "north"), east: ((1, 0), "west"), west: ((-1, 0), "east"),
  north-east: ((0.7, 0.7), "south-west"), north-west: ((-0.7, 0.7), "south-east"),
  south-east: ((0.7, -0.7), "north-west"), south-west: ((-0.7, -0.7), "north-east"),
)
// Nhãn đặt quanh điểm p, cách p một khoảng r theo hướng vt.
#let nhan(p, body, vt: "south", r: 0.1) = {
  let (v, anc) = _huong.at(vt)
  draw.content(_cong(p, v, r), body, anchor: anc)
}

// Mũi tên vector a → b; nhãn đặt sau mũi tên hoặc tại vt quanh đầu mũi tên.
#let mt(a, b, ten: none, c: mau.do, w: 1.2pt, vt: auto, dash: none) = {
  draw.line(a, b, stroke: (paint: c, thickness: w, dash: dash), mark: (end: "stealth", fill: c, scale: 0.6))
  if ten != none {
    if vt == auto { draw.content(_cong(b, _don-vi(a, b), 0.25), text(fill: c, ten)) } else { nhan(b, text(fill: c, ten), vt: vt) }
  }
}

// Đường kích thước giữa a và b, lệch d theo pháp tuyến trái của a → b.
#let kc(a, b, ten, d: 0.4, ext: true, c: black) = {
  let (ux, uy) = _don-vi(a, b)
  let n = (-uy, ux)
  let s = if d < 0 { -1 } else { 1 }
  if ext and d != 0 {
    for p in (a, b) { draw.line(_cong(p, n, 0.08 * s), _cong(p, n, d + 0.1 * s), stroke: 0.4pt + luma(60%)) }
  }
  draw.line(_cong(a, n, d), _cong(b, n, d), stroke: 0.5pt + c, mark: (start: "stealth", end: "stealth", fill: c, scale: 0.45))
  let m = ((a.at(0) + b.at(0)) / 2, (a.at(1) + b.at(1)) / 2)
  let vt = if calc.abs(n.at(0)) > calc.abs(n.at(1)) {
    if n.at(0) * s > 0 { "east" } else { "west" }
  } else if n.at(1) * s > 0 { "north" } else { "south" }
  nhan(_cong(m, n, d), ten, vt: vt, r: 0.08)
}

// Điện tích điểm: dau là "+", "-" hoặc none.
#let dt(p, dau: "+", r: 0.16, ten: none, vt: "south") = {
  let (c, f) = if dau == "+" { (mau.do, nen.do) } else if dau == "-" { (mau.xanh, nen.xanh) } else { (mau.vang, nen.vang) }
  draw.circle(p, radius: r, fill: f, stroke: 0.8pt + c)
  if dau != none { draw.content(p, text(fill: c, weight: "bold", size: 7pt, if dau == "+" { $+$ } else { $-$ })) }
  if ten != none { nhan(p, ten, vt: vt, r: r + 0.06) }
}

#let diem(p, ten: none, vt: "south", r: 0.045) = {
  draw.circle(p, radius: r, fill: black, stroke: none)
  if ten != none { nhan(p, ten, vt: vt) }
}

// Hai trục tọa độ qua o.
#let truc(o: (0, 0), x: (0, 3), y: (0, 3), nx: $x$, ny: $y$, c: luma(40%)) = {
  let m = (end: "stealth", fill: c, scale: 0.5)
  if x != none {
    draw.line((o.at(0) + x.at(0), o.at(1)), (o.at(0) + x.at(1), o.at(1)), stroke: 0.5pt + c, mark: m)
    nhan((o.at(0) + x.at(1), o.at(1)), nx, vt: "east", r: 0.05)
  }
  if y != none {
    draw.line((o.at(0), o.at(1) + y.at(0)), (o.at(0), o.at(1) + y.at(1)), stroke: 0.5pt + c, mark: m)
    nhan((o.at(0), o.at(1) + y.at(1)), ny, vt: "north", r: 0.05)
  }
}

// Bản tích điện hình chữ nhật từ a đến b, n dấu điện tích.
#let ban(a, b, dau, n: 5) = {
  let (c, f) = if dau == "+" { (mau.do, nen.do) } else { (mau.xanh, nen.xanh) }
  draw.rect(a, b, fill: f, stroke: 0.6pt + c)
  let doc = calc.abs(b.at(1) - a.at(1)) > calc.abs(b.at(0) - a.at(0))
  for i in range(n) {
    let t = (i + 0.5) / n
    let p = if doc { ((a.at(0) + b.at(0)) / 2, a.at(1) + (b.at(1) - a.at(1)) * t) } else { (a.at(0) + (b.at(0) - a.at(0)) * t, (a.at(1) + b.at(1)) / 2) }
    draw.content(p, text(fill: c, size: 7pt, if dau == "+" { $+$ } else { $-$ }))
  }
}

// Cung đánh dấu góc tại o, từ góc a0 đến a1.
#let goc(o, r, a0, a1, ten: none, c: luma(30%), rt: 0.22) = {
  draw.arc(o, start: a0, stop: a1, radius: r, anchor: "origin", stroke: 0.5pt + c)
  if ten != none {
    let m = (a0 + a1) / 2
    draw.content((o.at(0) + (r + rt) * calc.cos(m), o.at(1) + (r + rt) * calc.sin(m)), text(fill: c, ten))
  }
}

// Mẫu hàm f trên [a, b] thành danh sách điểm (x, f(x)).
#let ham(f, a, b, n: 60) = range(n + 1).map(i => {
  let x = a + (b - a) * i / n
  (x, f(x))
})

// Lò xo nối điểm a với điểm b (mọi hướng). Tham số:
//   vong:  số vòng (kiểu "xoan" nên dùng số nguyên để hai đầu nằm đúng trên trục)
//   rong:  bề rộng lò xo (khoảng cách hai mép vòng)
//   dau:   chiều dài đoạn thẳng ở mỗi đầu, dùng để móc vào trần/vật
//   kieu:  "xoan" (vòng xoắn nhìn nghiêng), "zigzag" hoặc "song" (hình sin)
//   cuon:  độ cuộn của vòng với kiểu "xoan"; 0 giống hình sin, càng lớn vòng càng tròn
//   noi:   true thì nửa sau của mỗi vòng vẽ nhạt hơn, tạo cảm giác không gian
//   net:   nét vẽ, ví dụ 0.8pt + black; nhat: nét cho nửa sau khi noi = true
#let lo-xo(a, b, vong: 10, rong: 0.3, dau: 0.2, kieu: "xoan", cuon: 0.6, noi: false, net: 0.8pt + black, nhat: auto) = {
  let u = _don-vi(a, b)
  let v = (-u.at(1), u.at(0))
  let L = calc.sqrt(calc.pow(b.at(0) - a.at(0), 2) + calc.pow(b.at(1) - a.at(1), 2)) - 2 * dau
  let r = rong / 2
  let p1 = _cong(a, u, dau)
  let tai(doc, ngang) = _cong(_cong(p1, u, doc), v, ngang)
  // Mỗi phần tử: (điểm, có nằm ở nửa sau của vòng hay không).
  let pts = if kieu == "zigzag" {
    range(4 * vong + 1).map(k => (tai(L * k / (4 * vong), r * calc.sin(k * calc.pi / 2)), false))
  } else if kieu == "song" {
    let n = 24 * vong
    range(n + 1).map(k => (tai(L * k / n, r * calc.sin(2 * calc.pi * vong * k / n)), false))
  } else {
    // Vòng xoắn: dọc trục = phần tiến đều + e(1 - cos θ), ngang = r sin θ; θ bắt đầu từ π để hai đầu nằm trên trục.
    let e = cuon * r
    let n = 32 * vong
    range(n + 1).map(k => {
      let t = k / n
      let th = calc.pi + 2 * calc.pi * vong * t
      (tai((L - 2 * e) * t + e * (1 - calc.cos(th)), r * calc.sin(th)), calc.cos(th) > 0)
    })
  }
  let nhat = if nhat == auto { 0.6pt + luma(65%) } else { nhat }
  draw.line(a, pts.first().at(0), stroke: net)
  if noi {
    // Gom các điểm liên tiếp cùng nửa thành một nét; vẽ nửa sau trước để nửa trước đè lên.
    let nhom = ()
    for i in range(pts.len() - 1) {
      let sau = pts.at(i).at(1)
      if nhom.len() == 0 or nhom.last().at(0) != sau { nhom.push((sau, (pts.at(i).at(0),))) }
      nhom.last().at(1).push(pts.at(i + 1).at(0))
    }
    for (sau, ds) in nhom.filter(g => g.at(0)) { draw.line(..ds, stroke: nhat) }
    for (sau, ds) in nhom.filter(g => not g.at(0)) { draw.line(..ds, stroke: net) }
  } else {
    draw.line(..pts.map(p => p.at(0)), stroke: net)
  }
  draw.line(pts.last().at(0), b, stroke: net)
}

// Trần treo có gạch chéo.
#let tran(a, b, n: 8) = {
  draw.line(a, b, stroke: 0.8pt)
  for i in range(n + 1) {
    let x = a.at(0) + (b.at(0) - a.at(0)) * i / n
    draw.line((x, a.at(1)), (x - 0.14, a.at(1) + 0.14), stroke: 0.5pt)
  }
}

// vp-draw — phong cách hình: màu theo ý nghĩa vật lí, vật liệu (gradient), mũi tên, viền chữ.
// Phỏng theo cách vẽ của Izaak Neutelings (tikz.net): mỗi đại lượng một màu cố định, vật có khối
// tô gradient nhẹ với viền đậm cùng tông, nền gạch chéo, đường đo mảnh có nhãn cắt nét.

// Màu theo ý nghĩa. Tên tương ứng màu TikZ gốc ghi trong chú thích.
#let pal = (
  force: rgb(166, 0, 0),         // myred = red!65!black
  force-faded: rgb(228, 166, 166), // myred!40: thành phần, hình chiếu của lực
  velocity: rgb(0, 153, 0),      // vcol = green!60!black
  accel: rgb(132, 51, 132),      // acol: tím
  momentum: rgb(0, 102, 153),
  disp: rgb(0, 0, 179),          // xcol = blue!70!black: độ dời, trục, đường phụ
  dark-blue: rgb(0, 0, 102),     // darkblue = blue!40!black
  vector: rgb(0, 115, 0),        // veccol = green!45!black
  efield: rgb(230, 115, 0),      // Ecol = orange!90!black
  efield-line: rgb(204, 102, 0), // EcolFL = orange!80!black
  bfield: rgb(0, 0, 204),        // Bcol
  current: rgb(0, 0, 179),       // Icol = blue!70!black
  plus: rgb(153, 0, 0),          // pluscol = red!60!black
  minus: rgb(0, 0, 153),         // minuscol = blue!60!black
  rope: rgb(134, 90, 45),        // brown!70!black
  mass: rgb(77, 0, 0),           // viền vật: red!30!black
  pulley: rgb(0, 0, 77),         // blue!30!black
  spring: rgb(51, 51, 65),       // blue!7!black!80
  ray: rgb(217, 140, 0),
  angle: rgb(0, 0, 179),
)

// Vật liệu: gradient (màu trên, màu dưới) và góc tô giống `top color/bottom color/shading angle` của TikZ.
#let _grad(top, bottom, angle: 20deg) = gradient.linear(top, bottom, angle: 90deg + angle)
#let materials = (
  mass: _grad(rgb(224, 204, 204), rgb(240, 230, 230)),
  ground: _grad(luma(90%), luma(95%)),
  metal: _grad(luma(95%), luma(82%), angle: 10deg),
  dark-metal: _grad(luma(60%), luma(35%), angle: 10deg),
  pulley: _grad(rgb(204, 204, 224), rgb(230, 230, 240), angle: 10deg),
  glass: _grad(rgb(222, 235, 255), rgb(196, 214, 250), angle: 40deg),
  water: _grad(rgb(200, 225, 255), rgb(150, 190, 245)),
  wood: _grad(rgb(222, 184, 135), rgb(196, 150, 100)),
  anode: _grad(rgb(255, 204, 204), rgb(255, 128, 128)),
  cathode: _grad(rgb(204, 204, 255), rgb(153, 153, 255)),
  "charge+": _grad(rgb(255, 128, 128), rgb(230, 0, 0)),
  "charge-": _grad(rgb(128, 128, 255), rgb(51, 51, 255)),
  charge0: _grad(rgb(128, 230, 128), rgb(0, 160, 0)),
  rod: _grad(white, luma(80%), angle: 5deg),
)

// Tô gạch chéo (pattern north east lines của TikZ).
#let hatch(gap: 5pt, stroke: 0.45pt + black) = tiling(size: (gap, gap), {
  place(line(start: (0%, 100%), end: (100%, 0%), stroke: stroke))
})

// Đầu mũi tên kiểu LaTeX; size tỉ lệ theo độ dày nét.
#let head(color, size: 1, start: false) = {
  let m = (symbol: "stealth", length: 0.19 * size, width: 0.15 * size, inset: 0.035 * size)
  if start { (start: m, end: m, fill: color, stroke: (paint: color, thickness: 0.1pt)) } else { (end: m, fill: color, stroke: (paint: color, thickness: 0.1pt)) }
}

// Viền trắng quanh chữ (như gói contour) để nhãn đọc rõ khi đè lên nét vẽ.
#let halo(body, width: 1.6pt, color: white) = context {
  let s = measure(body)
  box(width: s.width, height: s.height, {
    place(top + left, text(stroke: width + color, body))
    place(top + left, body)
  })
}
#let _halo = halo
#let hatch-fill = hatch

// Ký hiệu vector in đậm đứng như \vb{F}: `vb("F")` hoặc trong toán `#vb("F")`.
#let vb(x) = math.upright(math.bold(if type(x) == str { eval(x, mode: "math") } else { x }))

// Nét thường dùng.
#let thin-dashed(color: pal.disp) = (paint: color, thickness: 0.4pt, dash: (2pt, 2pt))

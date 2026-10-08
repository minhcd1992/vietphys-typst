// KHỐI CHÈN HÌNH ẢNH
#let vp-image(
  path, // Đổi src: "" thành tham số vị trí bắt buộc
  caption: "",
  width: 80%,
  align-pos: center
) = {
  align(align-pos)[
    #figure(
      image(path, width: width),
      caption: caption
    )
  ]
}

// KHỐI CÔNG THỨC TOÁN HỌC ĐỘC LẬP
#let vp-formula(
  eq: "",
  numbered: false
) = {
  if numbered {
    math.equation(block: true, numbering: "(1)", eval(eq, mode: "math"))
  } else {
    math.equation(block: true, eval(eq, mode: "math"))
  }
}
#let vp-logo(
  color: rgb("#1D3B7A"),
  color2: rgb("#C09153"), // Màu vàng đất mặc định
  height: 2cm
) = {
  let c = color
  let c2 = color2
  let svg-str = read("../layout/design-assets/logo.svg")

  svg-str = svg-str.replace("#0000FF", c.to-hex())
  svg-str = svg-str.replace("#FFA500", c2.to-hex())

  image(bytes(svg-str), format: "svg", height: height)
}

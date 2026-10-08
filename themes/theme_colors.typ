#let _vp-to-color(c, default: rgb("#1890FF")) = {
  if c == auto or c == none {
    default
  } else if type(c) == color {
    c
  } else if type(c) == str {
    let s = c.trim()
    if s.starts-with("#") {
      rgb(s)
    } else {
      rgb("#" + s)
    }
  } else {
    default
  }
}

#let _vp-brush-color(c, default: rgb("#14213D")) = {
  if c == auto or c == none {
    vp-theme-color.get()
  } else {
    _vp-to-color(c, default: default)
  }
}

#let vp-make-palette(base-color) = {
  let c = _vp-to-color(base-color, default: rgb("#1890FF"))

  (
    primary: c,

    dark: c.darken(25%),

    darker: c.darken(50%),

    deep-bg: c.darken(84%),

    light: c.lighten(35%),

    lighter: c.lighten(65%),

    subtle: c.lighten(85%),

    bg: c.lighten(94%),

    border: c.lighten(15%),

    contrast: white,
  )
}

#let vp-theme-presets = (
  konoha: rgb("#5F9E31"),    // Làng Lá (Xanh lục Ninja / Mộc Độn)
  minato: rgb("#F59E0B"),    // Tia Chớp Vàng (Vàng Cam Phi Lôi Thần)
  uchiha: rgb("#E53E3E"),    // Lửa Uchiha (Đỏ Hỏa Độn)
  ocean: rgb("#1890FF"),     // Đại Dương (Xanh dương Thủy Độn / Tiêu chuẩn)
  wind: rgb("#0EA5E9"),      // Phong Độn (Xanh da trời Rasengan)
  shadow: rgb("#2D3748"),    // Ám Bộ (Xám đen / Huyền bí)
  violet: rgb("#8B5CF6"),    // Rinnegan (Tím Luân Hồi)
  emerald: rgb("#10B981"),   // Ngọc Lục Bảo
)

#let vp-theme-color = state("vp-theme-color", vp-theme-presets.ocean)

#let vp-resolve-color(custom-color) = {
  if custom-color != auto and custom-color != none {
    _vp-to-color(custom-color)
  } else {
    let global-c = vp-theme-color.get()
    _vp-to-color(global-c, default: vp-theme-presets.ocean)
  }
}

#let vp-resolve-palette(custom-color: auto) = {
  let c = vp-resolve-color(custom-color)
  vp-make-palette(c)
}

#let vp-set-theme(color: auto, preset: none) = {
  let target-color = if preset != none and preset in vp-theme-presets {
    vp-theme-presets.at(preset)
  } else if color != auto and color != none {
    _vp-to-color(color)
  } else {
    rgb("#5F9E31")
  }
  vp-theme-color.update(target-color)
}

#import "@preview/fontawesome:0.6.2": *
#import "../themes/theme_colors.typ": *

// Vector icon bundled with the package; no external font or image required.
#let vp-icon-atom(color: auto, size: 18pt) = context {
  let c = vp-resolve-color(color)
  image(bytes(read("design-assets/atom.svg").replace("#1D3B7A", c.to-hex())),
    format: "svg", width: size)
}

#let _vp-brush-map = (
  "enso-badge": "brush-assets/enso/enso_circle_badge.svg",
  "enso-grunge": "brush-assets/enso/enso_grunge_dripping.svg",
  "enso-ring-01": "brush-assets/enso/enso_ring_01.svg",
  "enso-ring-06": "brush-assets/enso/enso_ring_06.svg",
  "enso-ring-09": "brush-assets/enso/enso_ring_09.svg",
  "enso-ring-10": "brush-assets/enso/enso_ring_10.svg",
  "enso-ring-11": "brush-assets/enso/enso_ring_11.svg",

  "banner-horizontal": "brush-assets/banner/banner_horizontal_01.svg",
  "banner-calligraphy-01": "brush-assets/banner/banner_calligraphy_01.svg",
  "banner-calligraphy-02": "brush-assets/banner/banner_calligraphy_02.svg",
  "banner-calligraphy-03": "brush-assets/banner/banner_calligraphy_03.svg",
  "banner-calligraphy-04": "brush-assets/banner/banner_calligraphy_04.svg",
  "banner-calligraphy-05": "brush-assets/banner/banner_calligraphy_05.svg",
  "banner-calligraphy-06": "brush-assets/banner/banner_calligraphy_06.svg",
  "banner-grunge-01": "brush-assets/banner/banner_grunge_01.svg",
  "banner-grunge-02": "brush-assets/banner/banner_grunge_02.svg",
  "banner-grunge-03": "brush-assets/banner/banner_grunge_03.svg",
  "banner-grunge-04": "brush-assets/banner/banner_grunge_04.svg",
  "banner-grunge-05": "brush-assets/banner/banner_grunge_05.svg",
  "banner-ribbon-01": "brush-assets/banner/banner_ribbon_01.svg",
  "banner-ribbon-02": "brush-assets/banner/banner_ribbon_02.svg",
  "banner-ribbon-03": "brush-assets/banner/banner_ribbon_03.svg",
  "banner-ribbon-04": "brush-assets/banner/banner_ribbon_04.svg",
  "banner-ribbon-05": "brush-assets/banner/banner_ribbon_05.svg",

  "stroke-dynamic-01": "brush-assets/stroke/stroke_dynamic_01.svg",
  "stroke-dynamic-02": "brush-assets/stroke/stroke_dynamic_02.svg",
  "stroke-curve-01": "brush-assets/stroke/stroke_curve_01.svg",
  "stroke-curve-02": "brush-assets/stroke/stroke_curve_02.svg",

  "splatter-01": "brush-assets/splatter/splatter_01.svg",
  "splatter-02": "brush-assets/splatter/splatter_02.svg",
  "splatter-05": "brush-assets/splatter/splatter_05.svg",
  "splatter-09": "brush-assets/splatter/splatter_09.svg",
  "splatter-10": "brush-assets/splatter/splatter_10.svg",
  "splatter-19": "brush-assets/splatter/splatter_19.svg",
  "splatter-20": "brush-assets/splatter/splatter_20.svg",
)

#let vp-brush(
  name,
  color: auto,
  width: auto,
  height: auto,
  flip-x: false,
  flip-y: false,
) = context {
  let main-color = if color == auto { vp-theme-color.get() } else { _vp-brush-color(color) }
  let c-hex = main-color.to-hex()

  let file-path = if _vp-brush-map.keys().contains(name) {
    _vp-brush-map.at(name)
  } else if name.starts-with("/") or name.starts-with(".") {
    name
  } else {
    "brush-assets/" + name + ".svg"
  }

  let svg-data = read(file-path)
  let tinted-svg = svg-data.replace("currentColor", c-hex)

  let img = image(bytes(tinted-svg), width: width, height: height)
  if flip-x and flip-y {
    scale(x: -100%, y: -100%)[#img]
  } else if flip-x {
    scale(x: -100%)[#img]
  } else if flip-y {
    scale(y: -100%)[#img]
  } else {
    img
  }
}

#let vp-icon-shuriken(color: auto, size: 12pt) = context {
  let c = if color == auto { vp-theme-color.get() } else { _vp-brush-color(color) }
  let c-hex = c.to-hex()
  let svg = "<svg viewBox=\"0 0 100 100\" xmlns=\"http://www.w3.org/2000/svg\"><polygon points=\"50,0 58,38 95,20 62,50 100,50 62,58 95,80 58,62 50,100 42,62 5,80 38,58 0,50 38,50 5,20 42,38\" fill=\"" + c-hex + "\"/><circle cx=\"50\" cy=\"50\" r=\"8\" fill=\"#ffffff\"/></svg>"
  image(bytes(svg), height: size)
}

#let _vp-kunai-svg-code(color: auto, accent: none) = {
  let c = _vp-brush-color(color)
  let c-light = c.lighten(65%).to-hex()
  let c-mid = c.lighten(40%).to-hex()
  let c-dark = c.darken(20%).to-hex()
  let c-shadow = c.darken(45%).to-hex()
  let c-handle = if accent != none { _vp-brush-color(accent).to-hex() } else { c.darken(30%).to-hex() }

  (
    "<svg version=\"1.1\" viewBox=\"0 0 509.8925 115.46651\" xmlns=\"http://www.w3.org/2000/svg\">" +
    "<g transform=\"matrix(-0.51919654,0.50443318,0.50960844,0.51392391,249.64316,-203.39085)\">" +
    "<path style=\"fill:" + c-light + "\" d=\"m 346.553,201.001 -78.276,155.955 c -0.195,0.38 -0.489,0.684 -0.847,0.902 L 22.152,500.704 3.202,511.737 c -0.945,0.499 -1.933,0.239 -2.552,-0.391 -0.641,-0.641 -0.902,-1.661 -0.348,-2.628 L 154.14,244.57 c 0.217,-0.358 0.521,-0.652 0.902,-0.847 l 155.956,-78.276 20.481,15.073 z\"/>" +
    "<path style=\"fill:" + c-dark + "\" d=\"M 310.998,165.446 169.015,257.915 30.447,495.87 3.202,511.738 c -0.945,0.499 -1.933,0.239 -2.552,-0.391 -0.641,-0.641 -0.902,-1.661 -0.348,-2.628 L 154.14,244.57 c 0.217,-0.358 0.521,-0.652 0.902,-0.847 z\"/>" +
    "<path style=\"fill:" + c-mid + "\" d=\"m 346.553,201.001 -78.276,155.955 c -0.195,0.38 -0.489,0.684 -0.847,0.902 l -128.807,75.018 -134.976,78.601 -0.445,0.26 c -0.945,0.499 -1.933,0.239 -2.552,-0.391 L 331.479,180.52 Z\"/>" +
    "<polygon style=\"fill:" + c-handle + "\" points=\"409.82,137.728 395.849,151.698 374.45,173.098 360.312,187.235 346.551,200.996 311.004,165.449 408.837,67.615 444.385,103.163 \"/>" +
    "<rect x=\"297.646\" y=\"113.665\" transform=\"matrix(-0.7071,0.7071,-0.7071,-0.7071,713.4887,-48.6607)\" style=\"fill:" + c-handle + "\" width=\"138.354\" height=\"19.547001\"/>" +
    "<path style=\"fill:" + c-light + "\" stroke=\"" + c-dark + "\" stroke-width=\"2\" d=\"m 496.266,15.734 c -20.978,-20.978 -54.991,-20.978 -75.969,0 -20.978,20.978 -20.978,54.99 0,75.968 20.978,20.978 54.991,20.978 75.969,0 20.979,-20.978 20.979,-54.991 0,-75.968 z m -19.855,56.113 c -10.012,10.012 -26.246,10.012 -36.258,0 -10.012,-10.012 -10.012,-26.246 0,-36.258 10.012,-10.012 26.246,-10.012 36.258,0 10.012,10.012 10.012,26.246 0,36.258 z\"/>" +
    "<path style=\"fill:" + c-shadow + "\" d=\"M 138.623,432.875 3.647,511.477 C 1.724,511.39 0.65,511.346 0.65,511.346 l 49.759,-49.759 z\"/>" +
    "</g></svg>"
  )
}

#let vp-icon-kunai(
  color: auto,
  accent: none,
  size: auto,
  width: auto,
  height: auto,
  angle: 0deg
) = context {
  let main-color = if color == auto { vp-theme-color.get() } else { _vp-brush-color(color) }
  let svg = _vp-kunai-svg-code(color: main-color, accent: accent)
  let actual-w = if width != auto { width } else if size != auto { size * 2.8 } else { 26pt }
  let actual-h = if height != auto { height } else if size != auto { size } else { auto }

  if angle != 0deg {
    rotate(angle)[#image(bytes(svg), width: actual-w, height: actual-h)]
  } else {
    image(bytes(svg), width: actual-w, height: actual-h)
  }
}

#let vp-icon-cloud(color: auto, size: 16pt) = context {
  let c = if color == auto { vp-theme-color.get() } else { _vp-brush-color(color) }
  let c-hex = c.to-hex()
  let svg = "<svg viewBox=\"0 0 120 80\" xmlns=\"http://www.w3.org/2000/svg\"><path d=\"M30,65 C15,65 5,55 5,40 C5,28 15,18 28,18 C32,8 45,2 58,5 C70,8 78,18 80,25 C88,22 98,25 105,32 C115,40 115,55 105,62 C98,68 85,65 80,65 Z\" fill=\"" + c-hex + "\" stroke=\"#ffffff\" stroke-width=\"4\"/></svg>"
  image(bytes(svg), height: size)
}

#let vp-icon-ninja-silhouette(color: auto, size: 30pt) = context {
  let c = if color == auto { vp-theme-color.get() } else { _vp-brush-color(color) }
  let c-hex = c.to-hex()
  let c-dark = c.darken(60%).to-hex()
  let svg = "<svg viewBox=\"0 0 100 100\" xmlns=\"http://www.w3.org/2000/svg\"><circle cx=\"50\" cy=\"50\" r=\"46\" fill=\"" + c-dark + "\"/><path d=\"M50,15 C38,15 30,25 30,38 C30,48 35,55 40,60 L20,85 L80,85 L60,60 C65,55 70,48 70,38 C70,25 62,15 50,15 Z\" fill=\"" + c-hex + "\"/><rect x=\"35\" y=\"32\" width=\"30\" height=\"10\" rx=\"3\" fill=\"#ffffff\"/><circle cx=\"42\" cy=\"37\" r=\"2.5\" fill=\"" + c-dark + "\"/><circle cx=\"58\" cy=\"37\" r=\"2.5\" fill=\"" + c-dark + "\"/></svg>"
  image(bytes(svg), height: size)
}

#let vp-physics-enso-icon(
  body,
  num: "1",
  title: "ĐỘNG HỌC",
  desc: "Chuyển động thẳng, cong, vận tốc, gia tốc",
  color: auto,
  size: 65pt,
) = context {
  let main-color = if color == auto { vp-theme-color.get() } else { _vp-brush-color(color) }
  let dark-bg = main-color.darken(65%)

  block(width: 100%, inset: 4pt)[
    #align(center)[
      #box(width: size, height: size)[
        #place(center + horizon)[
          #vp-brush("enso-grunge", color: main-color, width: size, height: size)
        ]
        #place(center + horizon)[
          #circle(radius: size * 0.32, fill: rgb("#F8FAFC"), stroke: 1pt + main-color.lighten(40%))[
            #align(center + horizon)[
              #body
            ]
          ]
        ]
        #place(bottom + right, dx: -2pt, dy: -2pt)[
          #vp-icon-shuriken(color: main-color, size: 10pt)
        ]
      ]
      #v(4pt)
      #text(weight: "bold", size: 8.5pt, fill: dark-bg)[#num. #upper(title)] \
      #text(fill: rgb("#64748B"), size: 7pt)[#desc]
    ]
  ]
}

#let _vp-enso-brush-heading-svg(color) = {
  let c = color.to-hex()
  "<svg viewBox=\"0 0 130 130\" xmlns=\"http://www.w3.org/2000/svg\">
    <path d=\"M110 24 C86 16, 42 22, 22 46 C4 68, 4 98, 22 118 C40 136, 76 136, 108 122 C114 119, 112 114, 106 116 C80 126, 48 124, 32 108 C16 92, 16 68, 30 50 C44 32, 78 26, 106 32 C112 34, 114 26, 110 24 Z\" fill=\"" + c + "\"/>
    <path d=\"M92 14 C62 10, 26 24, 10 48 C-6 72, -4 104, 14 126 C16 129, 20 127, 18 123 C4 103, 3 75, 16 54 C28 33, 58 20, 92 18 C98 18, 98 14, 92 14 Z\" fill=\"" + c + "\" opacity=\"0.85\"/>
    <path d=\"M24 34 C12 50, 8 74, 14 96 C16 100, 20 98, 18 94 C13 75, 16 54, 27 40 C30 36, 27 31, 24 34 Z\" fill=\"" + c + "\" opacity=\"0.95\"/>
    <path d=\"M104 124 C112 119, 120 110, 124 98 C126 94, 122 92, 120 95 C116 104, 108 111, 100 116 C96 118, 98 123, 104 124 Z\" fill=\"" + c + "\" opacity=\"0.9\"/>
    <path d=\"M14 42 C11 38, 9 36, 8 39 C7 42, 10 45, 12 47 C14 50, 16 46, 14 42 Z\" fill=\"" + c + "\" opacity=\"0.6\"/>
    <path d=\"M6 70 C4 66, 2 68, 3 73 C4 78, 7 80, 7 76 C7 72, 8 74, 6 70 Z\" fill=\"" + c + "\" opacity=\"0.5\"/>
  </svg>"
}

#let _vp-stroke-top-heading-brush(color) = {
  let c = color.to-hex()
  "<svg viewBox=\"0 0 800 16\" preserveAspectRatio=\"none\" xmlns=\"http://www.w3.org/2000/svg\">
    <path d=\"M0 8 C100 2, 280 1.5, 520 4.5 C660 6, 740 7.8, 800 8 C750 9.8, 670 12, 530 13.5 C290 16, 110 15, 0 8 Z\" fill=\"" + c + "\"/>
    <path d=\"M5 7 C140 2.2, 350 2, 580 5.5 C680 7, 760 8, 800 8 C770 8.8, 700 10.5, 600 11.8 C360 14, 150 13.5, 5 9.5 Z\" fill=\"" + c + "\"/>
  </svg>"
}

#let _vp-stroke-bot-heading-brush(color) = {
  let c = color.to-hex()
  "<svg viewBox=\"0 0 800 16\" preserveAspectRatio=\"none\" xmlns=\"http://www.w3.org/2000/svg\">
    <path d=\"M0 8 C120 1.8, 320 1.5, 560 4.2 C680 5.8, 750 7.5, 800 8 C760 9.5, 680 11.5, 560 13 C320 15.5, 120 15, 0 8 Z\" fill=\"" + c + "\"/>
    <path d=\"M10 7.5 C160 2.5, 400 2.2, 640 5.8 C720 7.2, 775 8, 800 8 C780 8.6, 720 10.2, 630 11.5 C380 13.5, 170 13.2, 10 9 Z\" fill=\"" + c + "\"/>
  </svg>"
}

#let _vp-shuriken-gold-heading-svg(color) = {
  let c = color.to-hex()
  let light = color.lighten(35%).to-hex()
  let dark = color.darken(30%).to-hex()
  "<svg viewBox=\"0 0 100 100\" xmlns=\"http://www.w3.org/2000/svg\">
    <path d=\"M50 2 L57 36 L92 20 L64 50 L98 50 L64 57 L92 80 L57 64 L50 98 L43 64 L8 80 L36 57 L2 50 L36 50 L8 20 L43 36 Z\" fill=\"" + c + "\"/>
    <polygon points=\"50,2 57,36 50,50\" fill=\"" + light + "\" opacity=\"0.6\"/>
    <polygon points=\"98,50 64,57 50,50\" fill=\"" + light + "\" opacity=\"0.6\"/>
    <polygon points=\"50,98 43,64 50,50\" fill=\"" + light + "\" opacity=\"0.6\"/>
    <polygon points=\"2,50 36,43 50,50\" fill=\"" + light + "\" opacity=\"0.6\"/>
    <circle cx=\"50\" cy=\"50\" r=\"8\" fill=\"#FFFFFF\" stroke=\"" + dark + "\" stroke-width=\"1.5\"/>
  </svg>"
}

#let vp-logo-hockage(
  primary: auto,
  accent: auto,
  size: 60pt,
  width: auto,
  height: auto,
) = context {
  let main-c = if primary == auto { vp-theme-color.get() } else { _vp-brush-color(primary) }
  let acc-c = if accent == auto {
    rgb("#B08D57")
  } else {
    _vp-brush-color(accent)
  }

  let svg-raw = read("design-assets/hockage-logo.svg")
  let svg-colored = svg-raw
    .replace("currentColor", main-c.to-hex())
    .replace("var(--accent, #B08D57)", acc-c.to-hex())

  let w = if width != auto { width } else if height == auto { size } else { auto }
  let h = if height != auto { height } else { auto }
  image(bytes(svg-colored), width: w, height: h)
}

#let vp-hockage-logo = vp-logo-hockage

#let vp-ninja-scholar-logo(
  primary: auto,
  accent: auto,
  size: 60pt,
  width: auto,
  height: auto,
) = context {
  let main-c = if primary == auto { vp-theme-color.get() } else { _vp-brush-color(primary) }
  let acc-c = if accent == auto { rgb("#B08D57") } else { _vp-brush-color(accent) }

  let svg-raw = read("design-assets/ninja_scholar_logo.svg")
  let svg-colored = svg-raw
    .replace("currentColor", main-c.to-hex())
    .replace("var(--accent, #B08D57)", acc-c.to-hex())

  let w = if width != auto { width } else if height == auto { size } else { auto }
  let h = if height != auto { height } else { auto }
  image(bytes(svg-colored), width: w, height: h)
}

// Shared vector primitives for header and footer layouts.

#let _vp-logo-badge(primary: blue, size: 24pt) = {
  box(width: size, height: size)[
    #place(center + horizon)[
      #circle(radius: size / 2, fill: primary)
    ]
    #place(center + horizon)[
      #text(fill: white, weight: "black", size: size * 0.6, font: "Arial")[V]
    ]
  ]
}

#let kunai-svg-content = read("design-assets/HocKage_Icon_Kunai.svg")
#let _vp-modern-icon-kunai(color: blue, width: 26pt, angle: 0deg) = {
  let colored-svg = kunai-svg-content.replace("#000000", color.to-hex())
  rotate(angle)[
    #box(width: width)[
      #image(bytes(colored-svg), format: "svg", width: 100%)
    ]
  ]
}

#let shuriken-svg-content = read("design-assets/HocKage_Icon_Shuriken.svg")
#let _vp-modern-icon-shuriken(color: blue, size: 26pt) = {
  let c1 = color.lighten(30%).to-hex()
  let c2 = color.to-hex()
  let c3 = color.darken(20%).to-hex()
  let c4 = color.lighten(10%).to-hex()
  let c5 = color.lighten(40%).to-hex()
  let colored-svg = shuriken-svg-content
    .replace("#c9c9c9", c1)
    .replace("#bdbdbd", c2)
    .replace("#6b6b6b", c3)
    .replace("#aa9d9d", c4)
    .replace("#d6d6d6", c5)
  box(width: size, height: size)[
    #image(bytes(colored-svg), format: "svg", width: 100%, height: 100%)
  ]
}

#let _vp-hexagon(x: 0pt, y: 0pt, r: 12pt, fill: rgb("#1890FF"), stroke: none) = {
  let sin60 = 0.866025
  let cos60 = 0.5
  let pts = (
    (x + r, y),
    (x + r * cos60, y + r * sin60),
    (x - r * cos60, y + r * sin60),
    (x - r, y),
    (x - r * cos60, y - r * sin60),
    (x + r * cos60, y - r * sin60),
  )
  polygon(fill: fill, stroke: stroke, ..pts)
}

#let logo-svg-content = read("design-assets/logo.svg")

#let vp-logo-colored(color: blue, width: 40pt) = {
  let c1 = color.to-hex()
  let c2 = color.lighten(20%).to-hex()
  let colored-svg = logo-svg-content.replace("#0000FF", c1).replace("#FFA500", c2)
  box(width: width)[
    #image(bytes(colored-svg), format: "svg", width: 100%)
  ]
}

#let _vp-dot-matrix(rows: 3, cols: 4, spacing-x: 5pt, spacing-y: 5pt, radius: 1pt, fill: rgb("#000000")) = {
  box(width: cols * spacing-x, height: rows * spacing-y)[
    #for r in range(rows) {
      for c in range(cols) {
        place(top + left, dx: c * spacing-x, dy: r * spacing-y)[
          #circle(radius: radius, fill: fill)
        ]
      }
    }
  ]
}

#let _vp-diamond(x: 0pt, y: 0pt, s: 12pt, fill: rgb("#1890FF"), stroke: none) = {
  let pts = (
    (x, y - s),
    (x + s, y),
    (x, y + s),
    (x - s, y),
  )
  polygon(fill: fill, stroke: stroke, ..pts)
}


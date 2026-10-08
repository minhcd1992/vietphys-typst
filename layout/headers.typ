// Header templates. Theme numbers and public signatures remain stable.
#import "@preview/fontawesome:0.6.2": *
#import "../themes/theme_colors.typ": *
#import "graphics.typ": *
#import "header_widgets.typ": *
#let _vp-render-right-text(right-content, date, color, font: "Times New Roman") = {
  let content = if right-content != none { right-content } else { date }
  if content != none { text(fill: color, font: font, size: 9pt, weight: "bold")[#content] }
}
#let _vp-render-right-info(right-content, date, color, font: "Times New Roman") = {
  if right-content != none {
    if type(right-content) == str {
      vp-widget-pill(right-content, color: color, font: font)
    } else {
      right-content
    }
  } else if date != none and date != "" {
    vp-widget-date(date: date, color: color, font: font)
  } else {
    vp-widget-part(color: color, font: font)
  }
}

#let vp-header(
  left-text: "",
  center-text: "",
  right-text: "",
  color: rgb("#000000"),
  line-width: 1pt,
) = {
  block(width: 100%, stroke: (bottom: line-width + color), inset: (bottom: 5pt))[
    #grid(
      columns: (1fr, auto, 1fr),
      align(left)[#text(fill: color, size: 10pt)[#left-text]],
      align(center)[#text(fill: color, size: 10pt, weight: "bold")[#center-text]],
      align(right)[#text(fill: color, size: 10pt)[#right-text]],
    )
  ]
}

// ==========================================
// THEME 01: VÁT CHÉO HIỆN ĐẠI (TRÀN VIỀN TUYỆT ĐỐI)
// ==========================================

#let vp-header-theme-01(
  title: "TÀI LIỆU VẬT LÍ 12",
  subtitle: "Chuyên đề: Động lực học - Vượt chướng ngại vật",
  color: auto,
  icon: "bolt",
  date: none,
  right-content: none,
) = context {
  let color = vp-resolve-color(color)
  place(top + left, dx: -60pt, dy: 0pt)[
    // dx: -45pt -> Ép giật lùi hẳn ra ngoài mép trái tờ giấy
    // dy: 15pt  -> Hạ toàn bộ khối xuống 15pt để cứu chữ không bị cắt nóc

    #block(width: 220mm, height: 40pt)[ // Dùng 220mm để bọc dư ra ngoài mép phải A4
      // Viền đáy
      #place(bottom)[#line(length: 100%, stroke: 1.5pt + color)]

      #grid(
        columns: (130pt, 1fr, auto, 90pt),
        align: (left + horizon, left + horizon, right + horizon, right + horizon),

        // CỘT 1: ĐỒ HỌA TRÁI
        box(width: 130pt, height: 40pt)[
          #place(top + left)[#polygon(fill: color, (0pt, 0pt), (80pt, 0pt), (60pt, 40pt), (0pt, 40pt))]
          #place(top + left, dy: -3pt)[#box(width: 65pt, height: 40pt, align(center + horizon)[
            #text(fill: white, size: 18pt)[#fa-icon(icon)]
          ])]
          #place(top + left)[#polygon(fill: color, (85pt, 0pt), (95pt, 0pt), (75pt, 40pt), (65pt, 40pt))]
          #place(top + left)[#polygon(fill: color, (100pt, 0pt), (105pt, 0pt), (85pt, 40pt), (80pt, 40pt))]
        ],

        // CỘT 2: TEXT GIỮA
        pad(left: 10pt, bottom: -2pt)[
          #text(fill: color, weight: "bold", size: 15pt)[#upper(title)] \
          #v(-5pt)
          #text(fill: rgb("#555555"), size: 10pt, style: "italic")[#subtitle]
        ],

        // CỘT 3: TEXT PHẢI
        pad(right: 25pt, bottom: 2pt)[ // Đẩy vô 25pt để text phải không bị lọt ra ngoài mép giấy
          #let info = if right-content != none { right-content } else { date }
          #if info != none [ #text(fill: color, size: 11pt, weight: "bold")[#info] ]
        ],

        // CỘT 4: ĐỒ HỌA PHẢI
        box(width: 90pt, height: 40pt)[
          #place(top + left)[#polygon(fill: color, (20pt, 0pt), (30pt, 0pt), (10pt, 40pt), (0pt, 40pt))]
          #place(top + left)[#polygon(fill: color, (35pt, 0pt), (100pt, 0pt), (100pt, 40pt), (15pt, 40pt))]
        ],
      )
    ]
  ]
}
// ==========================================
// THEME 02: CHẤM BI SINH THÁI (TRÀN VIỀN TUYỆT ĐỐI)
// ==========================================

#let vp-header-theme-02(
  title: "TÀI LIỆU HỌC TẬP",
  subtitle: "Học hôm nay - Thành công ngày mai",
  color: auto,
  icon: "book-open",
  right-content: none,
) = context {
  let color = vp-resolve-color(color)
  place(top + left, dx: -45pt, dy: 15pt)[
    #block(width: 220mm, height: 50pt)[
      #place(bottom)[#line(length: 100%, stroke: 1.5pt + color)]

      // Họa tiết chấm bi
      #let dots = tiling(size: (5pt, 5pt))[#circle(radius: 0.8pt, fill: color)]

      #grid(
        columns: (130pt, 1fr, auto, 90pt),
        align: (left + horizon, left + horizon, right + horizon, right + horizon),

        // CỘT 1
        box(width: 130pt, height: 50pt)[
          #place(top + left)[#polygon(fill: color, (0pt, 0pt), (70pt, 0pt), (50pt, 50pt), (0pt, 50pt))]
          #place(top + left)[#box(width: 60pt, height: 50pt, align(center + horizon)[
            #text(fill: white, size: 18pt)[#fa-icon(icon)]
          ])]
          #place(top + left)[#polygon(fill: dots, (75pt, 0pt), (115pt, 0pt), (95pt, 50pt), (55pt, 50pt))]
        ],

        // CỘT 2
        pad(left: 10pt, bottom: 2pt)[
          #text(fill: color, weight: "bold", size: 15pt)[#upper(title)] \
          #v(2pt)
          #text(fill: rgb("#555555"), size: 10pt, style: "italic")[#subtitle]
        ],

        // CỘT 3
        pad(right: 25pt, bottom: 2pt)[
          #if right-content != none [ #text(fill: color, size: 11pt, weight: "bold")[#right-content] ]
        ],

        // CỘT 4
        box(width: 90pt, height: 50pt)[
          #place(top + left)[#polygon(fill: color.lighten(60%), (25pt, 0pt), (60pt, 0pt), (10pt, 50pt))]
          #place(top + left)[#polygon(fill: color, (45pt, 0pt), (90pt, 0pt), (90pt, 50pt), (25pt, 50pt))]
        ],
      )
    ]
  ]
}
// Chân trang (Thường dùng đánh số trang)

#let vp-header-theme-03(
  title: "TÀI LIỆU HỌC TẬP",
  subtitle: "Chinh phục tri thức",
  color: rgb("#E67E22"),
  icon: none,
  date: "Ngày: 24/07/2026",
  right-content: none,
  font: "Times New Roman",
) = place(top + left, dx: -60pt, dy: 0pt)[
  #block(width: 220mm, height: 40pt)[
    #place(bottom)[#line(length: 100%, stroke: 1.5pt + color)]

    #grid(
      columns: (60pt, 1fr, 80pt, auto, 70pt),
      align: (left + horizon, left + horizon, center + horizon, right + horizon, right + horizon),

      box(width: 60pt, height: 40pt)[
        #place(top + left)[#polygon(fill: color, (0pt, 0pt), (55pt, 0pt), (40pt, 40pt), (0pt, 40pt))]
      ],

      pad(left: 5pt)[
        #text(fill: color, weight: "bold", size: 14pt, font: font)[#upper(title)] \
        #v(-5pt)
        #text(fill: rgb("#555555"), size: 9.5pt, style: "italic", font: font)[#subtitle]
      ],

      box(width: 80pt, height: 40pt)[
        #place(top + left)[#polygon(fill: color.lighten(40%), (25pt, 0pt), (65pt, 0pt), (35pt, 40pt), (0pt, 40pt))]
        #place(top + left)[#polygon(fill: color, (45pt, 0pt), (80pt, 0pt), (50pt, 40pt), (15pt, 40pt))]
      ],

      pad(right: 10pt)[
        #if right-content != none [
          #text(fill: color, size: 10pt, weight: "bold", font: font)[#right-content]
        ] else if date != none [
          #box(stroke: 0.8pt + color, radius: 3pt, inset: (x: 5pt, y: 3pt))[
            #text(fill: color, size: 9pt, font: font)[#fa-icon("calendar-days") #date]
          ]
        ]
      ],

      box(width: 70pt, height: 40pt, align(center + horizon)[
        #_vp-dot-matrix(rows: 3, cols: 5, spacing-x: 7pt, spacing-y: 6pt, radius: 1.2pt, fill: color)
      ]),
    )
  ]
]


#let vp-header-theme-04(
  title: "TÀI LIỆU HỌC TẬP",
  subtitle: "Khoa học – Logic – Sáng tạo",
  color: rgb("#259697"),
  icon: none,
  date: "Ngày: 24/07/2026",
  right-content: none,
  font: "Times New Roman",
) = place(top + left, dx: -60pt, dy: 0pt)[
  #block(width: 220mm, height: 40pt)[
    #place(bottom)[#line(length: 100%, stroke: 1.5pt + color)]

    #grid(
      columns: (80pt, 1fr, auto, 70pt),
      align: (left + horizon, left + horizon, right + horizon, right + horizon),

      box(width: 80pt, height: 40pt)[
        #place(top + left, dx: 15pt, dy: 20pt)[#_vp-hexagon(r: 16pt, fill: color)]
        #place(top + left, dx: 38pt, dy: 10pt)[#_vp-hexagon(r: 12pt, fill: color.lighten(40%))]
        #place(top + left, dx: 55pt, dy: 25pt)[#_vp-hexagon(r: 9pt, fill: color.lighten(70%))]
      ],

      pad(left: 10pt)[
        #text(fill: color, weight: "bold", size: 14pt, font: font)[#upper(title)] \
        #v(-5pt)
        #text(fill: rgb("#555555"), size: 9.5pt, style: "italic", font: font)[#subtitle]
      ],

      pad(right: 15pt)[
        #_vp-render-right-text(right-content, date, color, font: font)
      ],

      box(width: 70pt, height: 40pt)[
        #place(top + left)[#polygon(fill: color.lighten(60%), (10pt, 40pt), (20pt, 40pt), (45pt, 0pt), (35pt, 0pt))]
        #place(top + left)[#polygon(fill: color, (25pt, 40pt), (40pt, 40pt), (65pt, 0pt), (50pt, 0pt))]
        #place(top + left)[#polygon(fill: color.lighten(30%), (45pt, 40pt), (55pt, 40pt), (80pt, 0pt), (70pt, 0pt))]
      ],
    )
  ]
]


#let vp-header-theme-05(
  title: "TÀI LIỆU HỌC TẬP",
  subtitle: "Học để hiểu – Hiểu để hành động",
  color: rgb("#722ED1"),
  icon: "book-open",
  date: "Ngày: 24/07/2026",
  right-content: none,
  font: "Times New Roman",
) = place(top + left, dx: -60pt, dy: 0pt)[
  #block(width: 220mm, height: 40pt)[
    #place(bottom)[#line(length: 100%, stroke: 1.5pt + color)]

    #grid(
      columns: (60pt, 1fr, 70pt, auto, 70pt),
      align: (center + horizon, left + horizon, center + horizon, right + horizon, right + horizon),

      box(width: 60pt, height: 40pt, align(center + horizon)[
        #circle(radius: 16pt, fill: color)[
          #align(center + horizon)[#_vp-w-icon(icon, fill: white, size: 14pt)]
        ]
      ]),

      pad(left: 5pt)[
        #text(fill: color, weight: "bold", size: 14pt, font: font)[#upper(title)] \
        #v(-5pt)
        #text(fill: rgb("#555555"), size: 9.5pt, style: "italic", font: font)[#subtitle]
      ],

      box(width: 70pt, height: 40pt)[
        #place(top + left)[#polygon(fill: color.lighten(85%), (0pt, 40pt), (30pt, 0pt), (60pt, 0pt), (30pt, 40pt))]
        #place(top + left, dx: 35pt, dy: 10pt)[#_vp-dot-matrix(
          rows: 3,
          cols: 3,
          spacing-x: 5pt,
          spacing-y: 5pt,
          radius: 1pt,
          fill: color,
        )]
      ],

      pad(right: 15pt)[
        #_vp-render-right-info(right-content, date, color, font: font)
      ],

      box(width: 70pt, height: 40pt)[
        #place(top + left)[#polygon(fill: color.lighten(85%), (0pt, 40pt), (20pt, 0pt), (70pt, 0pt), (70pt, 40pt))]
        #place(top + left, dx: 25pt)[#rect(width: 45pt, height: 40pt, fill: color, radius: (top-left: 15pt))]
      ],
    )
  ]
]


#let vp-header-theme-06(
  title: "TÀI LIỆU HỌC TẬP",
  subtitle: "Đơn giản – Hiệu quả – Bền vững",
  color: rgb("#1E3A8A"),
  icon: none,
  date: "Ngày: 24/07/2026",
  right-content: none,
  font: "Times New Roman",
) = place(top + left, dx: -60pt, dy: 0pt)[
  #block(width: 220mm, height: 40pt)[
    #place(bottom)[#line(length: 100%, stroke: 1.2pt + color)]

    #grid(
      columns: (60pt, 1fr, auto, 60pt),
      align: (left + horizon, left + horizon, right + horizon, right + horizon),

      box(width: 60pt, height: 40pt)[
        #place(top + left, dx: 10pt, dy: 10pt)[#line(length: 45pt, stroke: 2pt + color)]
        #place(top + left, dx: 10pt, dy: 16pt)[#line(length: 35pt, stroke: 1.8pt + color)]
        #place(top + left, dx: 10pt, dy: 22pt)[#line(length: 25pt, stroke: 1.5pt + color)]
        #place(top + left, dx: 10pt, dy: 28pt)[#line(length: 15pt, stroke: 1.2pt + color)]
      ],

      pad(left: 10pt)[
        #text(fill: color, weight: "bold", size: 14pt, font: font)[#upper(title)] \
        #v(-5pt)
        #text(fill: rgb("#555555"), size: 9.5pt, style: "italic", font: font)[#subtitle]
      ],

      pad(right: 15pt)[
        #_vp-render-right-info(right-content, date, color, font: font)
      ],

      box(width: 60pt, height: 40pt)[
        #place(bottom + right, dx: -5pt, dy: 0pt)[
          #line(length: 45pt, stroke: 2pt + color)
        ]
        #place(bottom + right, dx: -45pt, dy: 0pt)[
          #line(start: (0pt, 0pt), end: (-8pt, -6pt), stroke: 1.5pt + color)
        ]
        #place(bottom + right, dx: -53pt, dy: -6pt)[
          #line(length: 20pt, stroke: 1.5pt + color)
        ]
      ],
    )
  ]
]


#let vp-header-theme-07(
  title: "TÀI LIỆU HỌC TẬP",
  subtitle: "Tập trung – Tư duy – Bứt phá",
  color: rgb("#D32F2F"),
  icon: "bullseye",
  date: "Ngày: 24/07/2026",
  right-content: none,
  font: "Times New Roman",
) = place(top + left, dx: -60pt, dy: 0pt)[
  #block(width: 220mm, height: 40pt)[
    #place(bottom)[#line(length: 100%, stroke: 1.5pt + color)]

    #grid(
      columns: (65pt, 1fr, 60pt, auto, 50pt),
      align: (center + horizon, left + horizon, center + horizon, right + horizon, right + horizon),

      box(width: 65pt, height: 40pt, align(center + horizon)[
        #circle(radius: 17pt, fill: color)[
          #align(center + horizon)[#_vp-w-icon(icon, fill: white, size: 16pt)]
        ]
      ]),

      pad(left: 5pt)[
        #text(fill: color, weight: "bold", size: 14pt, font: font)[#upper(title)] \
        #v(-5pt)
        #text(fill: rgb("#555555"), size: 9.5pt, style: "italic", font: font)[#subtitle]
      ],

      box(width: 60pt, height: 40pt)[
        #place(top + left)[#polygon(
          fill: color,
          (0pt, 5pt),
          (15pt, 20pt),
          (0pt, 35pt),
          (8pt, 35pt),
          (23pt, 20pt),
          (8pt, 5pt),
        )]
        #place(top + left, dx: 15pt)[#polygon(
          fill: color.lighten(30%),
          (0pt, 5pt),
          (15pt, 20pt),
          (0pt, 35pt),
          (8pt, 35pt),
          (23pt, 20pt),
          (8pt, 5pt),
        )]
        #place(top + left, dx: 32pt, dy: 10pt)[#_vp-dot-matrix(
          rows: 3,
          cols: 3,
          spacing-x: 5pt,
          spacing-y: 5pt,
          radius: 0.9pt,
          fill: color,
        )]
      ],

      pad(right: 15pt)[
        #_vp-render-right-info(right-content, date, color, font: font)
      ],

      box(width: 50pt, height: 40pt)[
        #place(top + left)[#polygon(fill: color, (15pt, 0pt), (50pt, 0pt), (50pt, 40pt), (0pt, 40pt), (20pt, 20pt))]
      ],
    )
  ]
]


#let vp-header-theme-08(
  title: "TÀI LIỆU HỌC TẬP",
  subtitle: "Tri thức xanh – Tương lai xanh",
  color: rgb("#5F9E31"),
  icon: "seedling",
  date: "Ngày: 24/07/2026",
  right-content: none,
  font: "Times New Roman",
) = place(top + left, dx: -60pt, dy: 0pt)[
  #block(width: 220mm, height: 40pt)[
    #place(bottom)[#line(length: 100%, stroke: 1.5pt + color)]

    #grid(
      columns: (60pt, 1fr, 60pt, auto, 50pt),
      align: (center + horizon, left + horizon, center + horizon, right + horizon, right + horizon),

      box(width: 60pt, height: 40pt, align(center + horizon)[
        #circle(radius: 16pt, stroke: 1.5pt + color, fill: color.lighten(90%))[
          #align(center + horizon)[#_vp-w-icon(icon, fill: color, size: 14pt)]
        ]
      ]),

      pad(left: 5pt)[
        #text(fill: color, weight: "bold", size: 14pt, font: font)[#upper(title)] \
        #v(-5pt)
        #text(fill: rgb("#555555"), size: 9.5pt, style: "italic", font: font)[#subtitle]
      ],

      box(width: 60pt, height: 40pt)[
        #place(top + left, dy: 20pt)[
          #line(start: (0pt, 15pt), end: (50pt, -10pt), stroke: 1.5pt + color.lighten(40%))
        ]
        #place(top + left, dy: 25pt)[
          #line(start: (5pt, 12pt), end: (55pt, -12pt), stroke: 1pt + color.lighten(70%))
        ]
      ],

      pad(right: 15pt)[
        #_vp-render-right-info(right-content, date, color, font: font)
      ],

      box(width: 50pt, height: 40pt)[
        #place(top + left)[#polygon(fill: color.lighten(85%), (10pt, 0pt), (50pt, 0pt), (50pt, 40pt), (0pt, 40pt))]
        #place(top + left)[#polygon(fill: color, (35pt, 0pt), (50pt, 0pt), (50pt, 40pt), (25pt, 40pt))]
      ],
    )
  ]
]


#let vp-header-theme-09(
  title: "TÀI LIỆU HỌC TẬP",
  subtitle: "Ước mơ – Nỗ lực – Thành công",
  color: rgb("#1D3B7A"),
  icon: "star",
  date: "Ngày: 24/07/2026",
  right-content: none,
  font: "Times New Roman",
) = place(top + left, dx: -60pt, dy: 0pt)[
  #block(width: 220mm, height: 40pt)[
    #place(bottom)[#line(length: 100%, stroke: 1.5pt + color)]

    #grid(
      columns: (110pt, 1fr, 60pt, auto, 70pt),
      align: (left + horizon, left + horizon, center + horizon, right + horizon, right + horizon),

      box(width: 110pt, height: 40pt)[
        #place(top + left)[#polygon(fill: color, (0pt, 0pt), (60pt, 0pt), (42pt, 40pt), (0pt, 40pt))]
        #place(top + left, dy: -2pt)[#box(width: 50pt, height: 40pt, align(center + horizon)[#_vp-w-icon(
          icon,
          fill: white,
          size: 16pt,
        )])]
        #place(top + left)[#polygon(fill: color, (65pt, 0pt), (75pt, 0pt), (57pt, 40pt), (47pt, 40pt))]
        #place(top + left)[#polygon(fill: color, (80pt, 0pt), (85pt, 0pt), (67pt, 40pt), (62pt, 40pt))]
      ],

      pad(left: 5pt)[
        #text(fill: color, weight: "bold", size: 14pt, font: font)[#upper(title)] \
        #v(-5pt)
        #text(fill: rgb("#555555"), size: 9.5pt, style: "italic", font: font)[#subtitle]
      ],

      box(width: 60pt, height: 40pt, align(center + horizon)[
        #_vp-dot-matrix(rows: 3, cols: 5, spacing-x: 6pt, spacing-y: 6pt, radius: 1pt, fill: color)
      ]),

      pad(right: 15pt)[
        #_vp-render-right-info(right-content, date, color, font: font)
      ],

      box(width: 70pt, height: 40pt)[
        #place(top + left)[#polygon(fill: color, (20pt, 0pt), (70pt, 0pt), (70pt, 40pt), (0pt, 40pt))]
      ],
    )
  ]
]


#let vp-header-theme-10(
  title: "TÀI LIỆU HỌC TẬP",
  subtitle: "Nền tảng vững chắc – Tương lai rộng mở",
  color: rgb("#795548"),
  icon: "landmark",
  date: "Ngày: 24/07/2026",
  right-content: none,
  font: "Times New Roman",
) = place(top + left, dx: -60pt, dy: 0pt)[
  #block(width: 220mm, height: 40pt)[
    #place(bottom)[#line(length: 100%, stroke: 1.5pt + color)]

    #grid(
      columns: (60pt, 1fr, auto, 70pt),
      align: (center + horizon, left + horizon, right + horizon, right + horizon),

      box(width: 60pt, height: 40pt, align(center + horizon)[
        #rect(width: 32pt, height: 32pt, fill: color, radius: 3pt)[
          #align(center + horizon)[#_vp-w-icon(icon, fill: white, size: 16pt)]
        ]
      ]),

      pad(left: 10pt)[
        #text(fill: color, weight: "bold", size: 14pt, font: font)[#upper(title)] \
        #v(-5pt)
        #text(fill: rgb("#555555"), size: 9.5pt, style: "italic", font: font)[#subtitle]
      ],

      pad(right: 15pt)[
        #_vp-render-right-info(right-content, date, color, font: font)
      ],

      box(width: 70pt, height: 40pt, align(center + horizon)[
        #_vp-dot-matrix(rows: 3, cols: 5, spacing-x: 6pt, spacing-y: 6pt, radius: 1.1pt, fill: color)
      ]),
    )
  ]
]


#let vp-header-theme-11(
  title: "TÀI LIỆU HỌC TẬP",
  subtitle: "Tư duy khác biệt – Kết quả khác biệt",
  color: rgb("#008080"),
  icon: none,
  date: "Ngày: 24/07/2026",
  right-content: none,
  font: "Times New Roman",
) = place(top + left, dx: -60pt, dy: 0pt)[
  #block(width: 220mm, height: 40pt)[
    #place(bottom)[#line(length: 100%, stroke: 1.5pt + color)]

    #grid(
      columns: (65pt, 1fr, auto, 70pt),
      align: (left + horizon, left + horizon, right + horizon, right + horizon),

      box(width: 65pt, height: 40pt)[
        #place(top + left, dx: 20pt, dy: 20pt)[#_vp-diamond(s: 14pt, fill: color)]
        #place(top + left, dx: 36pt, dy: 20pt)[#_vp-diamond(s: 12pt, fill: none, stroke: 1.5pt + color)]
      ],

      pad(left: 10pt)[
        #text(fill: color, weight: "bold", size: 14pt, font: font)[#upper(title)] \
        #v(-5pt)
        #text(fill: rgb("#555555"), size: 9.5pt, style: "italic", font: font)[#subtitle]
      ],

      pad(right: 15pt)[
        #_vp-render-right-info(right-content, date, color, font: font)
      ],

      box(width: 70pt, height: 40pt)[
        #place(top + left, dx: 20pt, dy: 20pt)[#_vp-diamond(s: 14pt, fill: none, stroke: 1.2pt + color.lighten(40%))]
        #place(top + left, dx: 38pt, dy: 20pt)[#_vp-diamond(s: 14pt, fill: none, stroke: 1.5pt + color)]
      ],
    )
  ]
]


#let vp-header-theme-12(
  title: "TÀI LIỆU HỌC TẬP",
  subtitle: "Kiến tạo giá trị – Dẫn lối thành công",
  color: rgb("#D35400"),
  icon: none,
  date: "Ngày: 24/07/2026",
  right-content: none,
  font: "Times New Roman",
) = place(top + left, dx: -60pt, dy: 0pt)[
  #block(width: 220mm, height: 40pt)[
    #place(bottom)[#line(length: 100%, stroke: 1.5pt + color)]

    #grid(
      columns: (65pt, 1fr, 60pt, auto, 60pt),
      align: (left + horizon, left + horizon, center + horizon, right + horizon, right + horizon),

      box(width: 65pt, height: 40pt)[
        #place(bottom + left)[
          #polygon(fill: color, (0pt, 30pt), (50pt, 30pt), (20pt, 10pt), (0pt, 10pt))
        ]
        #place(bottom + left, dy: -5pt)[
          #polygon(fill: color.lighten(40%), (0pt, 25pt), (60pt, 25pt), (30pt, 5pt), (0pt, 5pt))
        ]
      ],

      pad(left: 5pt)[
        #text(fill: color, weight: "bold", size: 14pt, font: font)[#upper(title)] \
        #v(-5pt)
        #text(fill: rgb("#555555"), size: 9.5pt, style: "italic", font: font)[#subtitle]
      ],

      box(width: 60pt, height: 40pt)[
        #place(top + left, dy: 20pt)[
          #line(start: (0pt, 10pt), end: (40pt, -10pt), stroke: 1.2pt + color.lighten(50%))
        ]
        #place(top + left, dy: 25pt)[
          #line(start: (10pt, 8pt), end: (50pt, -8pt), stroke: 1.5pt + color.lighten(30%))
        ]
      ],

      pad(right: 15pt)[
        #_vp-render-right-info(right-content, date, color, font: font)
      ],

      box(width: 60pt, height: 40pt, align(center + horizon)[
        #_vp-dot-matrix(rows: 3, cols: 4, spacing-x: 6pt, spacing-y: 6pt, radius: 1.1pt, fill: color)
      ]),
    )
  ]
]


#let vp-header-theme-13(
  title: "TÀI LIỆU HỌC TẬP",
  subtitle: "Công nghệ – Kết nối – Phát triển",
  color: rgb("#0288D1"),
  icon: none,
  date: "Ngày: 24/07/2026",
  right-content: none,
  font: "Times New Roman",
) = place(top + left, dx: -60pt, dy: 0pt)[
  #block(width: 220mm, height: 40pt)[
    #place(bottom)[#line(length: 100%, stroke: 1.5pt + color)]

    #grid(
      columns: (65pt, 1fr, auto, 75pt),
      align: (left + horizon, left + horizon, right + horizon, right + horizon),

      box(width: 65pt, height: 40pt)[
        #place(top + left, dx: 5pt, dy: 12pt)[
          #line(start: (0pt, 0pt), end: (30pt, 0pt), stroke: 1.2pt + color)
          #circle(radius: 2pt, fill: color)
        ]
        #place(top + left, dx: 5pt, dy: 20pt)[
          #line(start: (0pt, 0pt), end: (20pt, 0pt), stroke: 1.2pt + color)
          #line(start: (20pt, 0pt), end: (35pt, 8pt), stroke: 1.2pt + color)
          #place(top + left, dx: 35pt, dy: 8pt)[#circle(radius: 2pt, fill: color)]
        ]
        #place(top + left, dx: 5pt, dy: 28pt)[
          #line(start: (0pt, 0pt), end: (45pt, 0pt), stroke: 1.2pt + color)
          #place(top + left, dx: 45pt, dy: 0pt)[#circle(radius: 2pt, fill: color)]
        ]
      ],

      pad(left: 10pt)[
        #text(fill: color, weight: "bold", size: 14pt, font: font)[#upper(title)] \
        #v(-5pt)
        #text(fill: rgb("#555555"), size: 9.5pt, style: "italic", font: font)[#subtitle]
      ],

      pad(right: 15pt)[
        #_vp-render-right-info(right-content, date, color, font: font)
      ],

      box(width: 75pt, height: 40pt)[
        #place(top + left, dx: 15pt, dy: 15pt)[
          #circle(radius: 2pt, fill: color)
          #line(start: (0pt, 0pt), end: (45pt, 0pt), stroke: 1.2pt + color)
        ]
        #place(top + left, dx: 5pt, dy: 24pt)[
          #circle(radius: 2pt, fill: color)
          #line(start: (0pt, 0pt), end: (20pt, 0pt), stroke: 1.2pt + color)
          #line(start: (20pt, 0pt), end: (35pt, 6pt), stroke: 1.2pt + color)
          #line(start: (35pt, 6pt), end: (60pt, 6pt), stroke: 1.2pt + color)
          #place(top + left, dx: 60pt, dy: 6pt)[#circle(radius: 2pt, fill: color)]
        ]
      ],
    )
  ]
]


#let vp-header-theme-14(
  title: "TÀI LIỆU HỌC TẬP",
  subtitle: "Sáng tạo không giới hạn",
  color: rgb("#8E44AD"),
  icon: none,
  date: "Ngày: 24/07/2026",
  right-content: none,
  font: "Times New Roman",
) = place(top + left, dx: -60pt, dy: 0pt)[
  #block(width: 220mm, height: 40pt)[
    #place(bottom)[#line(length: 100%, stroke: 1.5pt + color)]

    #grid(
      columns: (70pt, 1fr, auto, 70pt),
      align: (left + horizon, left + horizon, right + horizon, right + horizon),

      box(width: 70pt, height: 40pt)[
        #place(top + left)[#polygon(fill: color, (0pt, 0pt), (35pt, 0pt), (20pt, 40pt), (0pt, 40pt))]
        #place(top + left)[#polygon(fill: color.lighten(30%), (35pt, 0pt), (55pt, 15pt), (20pt, 40pt))]
        #place(top + left)[#polygon(fill: color.lighten(60%), (35pt, 0pt), (65pt, 0pt), (55pt, 15pt))]
        #place(top + left)[#polygon(fill: color.lighten(80%), (55pt, 15pt), (70pt, 40pt), (20pt, 40pt))]
      ],

      pad(left: 10pt)[
        #text(fill: color, weight: "bold", size: 14pt, font: font)[#upper(title)] \
        #v(-5pt)
        #text(fill: rgb("#555555"), size: 9.5pt, style: "italic", font: font)[#subtitle]
      ],

      pad(right: 15pt)[
        #_vp-render-right-info(right-content, date, color, font: font)
      ],

      box(width: 70pt, height: 40pt)[
        #place(top + left)[#polygon(fill: color.lighten(70%), (0pt, 0pt), (30pt, 25pt), (15pt, 40pt))]
        #place(top + left)[#polygon(fill: color.lighten(40%), (0pt, 0pt), (70pt, 0pt), (30pt, 25pt))]
        #place(top + left)[#polygon(fill: color, (30pt, 25pt), (70pt, 0pt), (70pt, 40pt), (15pt, 40pt))]
      ],
    )
  ]
]


#let vp-header-theme-15(
  title: "TÀI LIỆU HỌC TẬP",
  subtitle: "Hành trình học tập – Hành trình trưởng thành",
  color: rgb("#2E7D32"),
  icon: none,
  date: "Ngày: 24/07/2026",
  right-content: none,
  font: "Times New Roman",
) = place(top + left, dx: -60pt, dy: 0pt)[
  #block(width: 220mm, height: 40pt)[
    #place(bottom)[#line(length: 100%, stroke: 1.5pt + color)]

    #grid(
      columns: (65pt, 1fr, auto, 65pt),
      align: (left + horizon, left + horizon, right + horizon, right + horizon),

      box(width: 65pt, height: 40pt, align(center + horizon)[
        #box(width: 50pt, height: 30pt)[
          #for r in range(4) {
            for c in range(6) {
              let rad = (6 - c) * 0.35pt + 0.4pt
              place(top + left, dx: c * 8pt, dy: r * 7.5pt)[
                #circle(radius: rad, fill: color)
              ]
            }
          }
        ]
      ]),

      pad(left: 10pt)[
        #text(fill: color, weight: "bold", size: 14pt, font: font)[#upper(title)] \
        #v(-5pt)
        #text(fill: rgb("#555555"), size: 9.5pt, style: "italic", font: font)[#subtitle]
      ],

      pad(right: 15pt)[
        #_vp-render-right-info(right-content, date, color, font: font)
      ],

      box(width: 65pt, height: 40pt, align(center + horizon)[
        #box(width: 50pt, height: 30pt)[
          #for r in range(4) {
            for c in range(6) {
              let rad = (c + 1) * 0.35pt + 0.4pt
              place(top + left, dx: c * 8pt, dy: r * 7.5pt)[
                #circle(radius: rad, fill: color)
              ]
            }
          }
        ]
      ]),
    )
  ]
]


#let vp-manual-header-standard() = context vp-header-theme-01(
  title: "VIETPHYS PACKAGE",
  subtitle: "Cẩm nang hướng dẫn sử dụng toàn diện",
  color: rgb("#1D3B7A"),
  icon: "book-open",
  date: none, // Tự động lấy tên chương / bài học hiện tại!
)

#let vp-manual-header-logo(
  title: "VIETPHYS PACKAGE",
  subtitle: "CẨM NANG HƯỚNG DẪN SỬ DỤNG",
  date: none,
  right-content: none,
  color: auto,
) = context {
  let pal = vp-resolve-palette(custom-color: color)
  let c = pal.primary

  place(top + left, dx: -60pt, dy: 5pt)[
    #block(width: 220mm, height: 30pt)[
      #place(bottom)[#line(length: 100%, stroke: 0.5pt + c)]

      #grid(
        columns: (60pt, auto, 1fr, auto, 60pt),
        align: (left + horizon, left + horizon, center + horizon, right + horizon, right + horizon),

        [],

        grid(
          columns: (auto, auto),
          align: horizon,
          column-gutter: 10pt,
          vp-logo-colored(color: c, width: 30pt),
          align(left)[
            #text(fill: c, weight: "bold", size: 10pt)[#title]\
            #v(-4pt)
            #text(fill: c.lighten(20%), weight: "bold", size: 7pt)[#subtitle]
          ],
        ),

        [],

        align(right)[
          #_vp-render-right-info(right-content, date, c)
        ],

        [],
      )
    ]
  ]
}

#let vp-manual-header-fancy(
  title: "VIETPHYS PACKAGE",
  subtitle: "CẨM NANG HƯỚNG DẪN SỬ DỤNG",
  color: rgb("#1D3B7A"),
  icon: auto, // auto: logo V; content: custom icon
  compact: false,
  font: auto,
  title-size: auto, subtitle-size: auto, chapter-size: auto,
  icon-size: auto, title-gap: auto, column-gap: auto,
  bottom-padding: auto, chapter-inset: auto, divider-thickness: auto,
  chapter-label: auto, // auto: current chapter number; none: hide badge
) = context {
  set text(font: font) if font != auto
  let pal = vp-resolve-palette(custom-color: color)
  let c = pal.primary
  let title-size = if title-size != auto { title-size } else if compact { 12pt } else { 14pt }
  let subtitle-size = if subtitle-size != auto { subtitle-size } else if compact { 8pt } else { 9pt }
  let chapter-size = if chapter-size != auto { chapter-size } else if compact { 10pt } else { 12pt }
  let icon-size = if icon-size != auto { icon-size } else if compact { 18pt } else { 24pt }
  let bottom-padding = if bottom-padding != auto { bottom-padding } else if compact { 4pt } else { 8pt }
  let divider-thickness = if divider-thickness != auto { divider-thickness } else if compact { 0.7pt } else { 1.5pt }
  block(
    width: 100%,
    stroke: (bottom: divider-thickness + c),
    inset: (bottom: bottom-padding),
  )[
    #grid(
      columns: (auto, 1fr, auto),
      align: (left + horizon, left + horizon, right + horizon),

      grid(
        columns: (auto, auto),
        align: horizon,
        column-gutter: if icon == none { 0pt } else if column-gap != auto { column-gap } else if compact { 6pt } else { 10pt },
        if icon == auto or icon == "logo" { _vp-logo-badge(primary: c, size: icon-size) }
        else if icon == "atom" { vp-icon-atom(color: c, size: icon-size) } else { icon },
        if compact or title-gap != auto {
          stack(dir: ttb, spacing: if title-gap == auto { 4pt } else { title-gap }, text(fill: c, weight: "bold", size: title-size)[#title], text(
            fill: c.lighten(20%),
            size: subtitle-size,
          )[#subtitle])
        } else {
          align(left)[
            #text(fill: c, weight: "bold", size: title-size)[#title]\
            #v(-4pt)
            #text(fill: c.lighten(20%), weight: "bold", size: subtitle-size)[#subtitle]
          ]
        },
      ),

      [],

      align(right)[
        #let chaps = query(<vp-chapter-info>).filter(m => m.location().page() <= here().page())
        #let chapter-num = chaps.at(-1, default: (value: (num: ""))).value.num
        #let cur-chap = if chapter-label != auto {
          chapter-label
        } else if chapter-num != "" { [CHƯƠNG #chapter-num] } else { none }
        #if cur-chap != none and cur-chap != "" [
          #box(
            fill: c.transparentize(85%),
            inset: if chapter-inset != auto { chapter-inset } else if compact { (x: 6pt, y: 3pt) } else { (x: 10pt, y: 6pt) },
            radius: 4pt,
          )[
            #text(fill: c, weight: "bold", size: chapter-size)[#cur-chap]
          ]
        ]
      ],
    )
  ]
}


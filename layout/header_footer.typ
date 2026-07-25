#import "@preview/fontawesome:0.6.2": *
// Tiêu đề đầu trang
#let vp-header(
  left-text: "", 
  center-text: "", 
  right-text: "", 
  color: rgb("#000000"),
  line-width: 1pt
) = {
  block(width: 100%, stroke: (bottom: line-width + color), inset: (bottom: 5pt))[
    #grid(
      columns: (1fr, auto, 1fr),
      align(left)[#text(fill: color, size: 10pt)[#left-text]],
      align(center)[#text(fill: color, size: 10pt, weight: "bold")[#center-text]],
      align(right)[#text(fill: color, size: 10pt)[#right-text]]
    )
  ]
}

// ==========================================
// THEME 01: VÁT CHÉO HIỆN ĐẠI (TRÀN VIỀN TUYỆT ĐỐI)
// ==========================================
#let vp-header-theme-01(
  title: "TÀI LIỆU VẬT LÍ 12",
  subtitle: "Chuyên đề: Động lực học - Vượt chướng ngại vật",
  color: rgb("#1D3B7A"), 
  icon: "bolt", 
  right-content: none
) = place(top + left, dx: -60pt, dy: 0pt)[
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
        #place(top + left, dy:-3pt)[#box(width: 65pt, height: 40pt, align(center + horizon)[
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
        #if right-content != none [ #text(fill: color, size: 11pt, weight: "bold")[#right-content] ]
      ],
      
      // CỘT 4: ĐỒ HỌA PHẢI 
      box(width: 90pt, height: 40pt)[
        #place(top + left)[#polygon(fill: color, (20pt, 0pt), (30pt, 0pt), (10pt, 40pt), (0pt, 40pt))]
        #place(top + left)[#polygon(fill: color, (35pt, 0pt), (100pt, 0pt), (100pt, 40pt), (15pt, 40pt))]
      ]
    )
  ]
]

// ==========================================
// THEME 02: CHẤM BI SINH THÁI (TRÀN VIỀN TUYỆT ĐỐI)
// ==========================================
#let vp-header-theme-02(
  title: "TÀI LIỆU HỌC TẬP",
  subtitle: "Học hôm nay - Thành công ngày mai",
  color: rgb("#499946"),
  icon: "book-open",
  right-content: none
) = place(top + left, dx: -45pt, dy: 15pt)[
  #block(width: 220mm, height: 50pt)[
    #place(bottom)[#line(length: 100%, stroke: 1.5pt + color)]
    
    // Họa tiết chấm bi
    #let dots = pattern(size: (5pt, 5pt))[#circle(radius: 0.8pt, fill: color)]

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
      ]
    )
  ]
]

// Chân trang (Thường dùng đánh số trang)
#let vp-footer(
  left-text: "", 
  center-text: "", 
  right-text: "", 
  color: rgb("#000000"),
  line-width: 1pt
) = {
  block(width: 100%, stroke: (top: line-width + color), inset: (top: 5pt))[
    #grid(
      columns: (1fr, auto, 1fr),
      align(left)[#text(fill: color, size: 10pt)[#left-text]],
      align(center)[#text(fill: color, size: 10pt)[#center-text]],
      align(right)[#text(fill: color, size: 10pt)[#right-text]]
    )
  ]
}

// ==========================================
// MẪU FOOTER: HỌC KAGE (NINJA THEME)
// ==========================================
#let vp-footer-kage(
  color: rgb("#FF3D00"),         
  kunai-path: "kunai.svg",       
  slogan: "Level Up Your Knowledge"
) = context {
  let page-num = counter(page).display()
  
  block(width: 100%)[
    // 1. Đường gạch ngang phân cách tài liệu (màu xám nhạt, nét mảnh)
    #line(length: 100%, stroke: 0.5pt + rgb("#a0a0a0"))
    
    // Tạo một chút khoảng trống
    #v(-10pt) 
    
    // 2. Nội dung Footer
    #grid(
      columns: (1fr, auto),
      align: (left + horizon, right + horizon),
      
      // CỘT TRÁI: Dùng một GRID con gồm 3 cột tự động (auto)
      grid(
        columns: (auto, auto, auto), // 3 phần tử -> 3 cột
        column-gutter: 8pt,          // Khoảng cách giữa các cột
        align: horizon,              // Canh giữa theo chiều dọc chuẩn xác!
        
        text(fill: color, weight: "bold", size: 12pt)[Học Kage],
        image(kunai-path, height: 8pt), 
        text(weight: "bold", size: 12pt)[#slogan]
      ),
      
      // CỘT PHẢI: KHỐI SHURIKEN MỚI
      box(width: 32pt, height: 32pt)[
        #place(top + left)[
          // Lệnh xoay toàn bộ phi tiêu 30 độ sang trái
          #rotate(-30deg)[
            #polygon(
              fill: color,
              // Tọa độ mới: Các góc lõm được đẩy ra xa tâm giúp cánh mập hơn
              (16pt, 0pt), (22pt, 10pt), (32pt, 16pt), (22pt, 22pt),
              (16pt, 32pt), (10pt, 22pt), (0pt, 16pt), (10pt, 10pt)
            )
          ]
        ]
        #place(center + horizon)[
          #circle(radius: 8.5pt, fill: white, stroke: none)
        ]
        #place(center + horizon)[
          #text(fill: color, weight: "bold", size: 9pt)[#page-num]
        ]
      ]
    )
  ]
}
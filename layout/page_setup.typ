#import "../themes/theme_colors.typ": vp-set-theme
#import "../themes/default_theme.typ": vp-settings
#import "../themes/modern_headings.typ": vp-heading-theme-modern
#import "../themes/native_headings.typ": vp-heading-theme-native
#import "../components/hierarchy_rules.typ": vp-hierarchy

// Khởi tạo khổ giấy và lề chuẩn
#let vp-page-setup(
  paper: "a4",
  margin: (x: 2cm, y: 2.5cm),
  theme-color: auto,
  theme-preset: none,
  header: auto,
  footer: auto,
  header-ascent: auto,
  footer-descent: auto,
  leading: 1.2em,
  font: vp-settings.base-font,
  font-size: vp-settings.base-size,
  heading-theme: vp-heading-theme-modern,
  hierarchy: auto,
  body
) = {
  // 1. Cấu hình Trang giấy
  if theme-preset != none or theme-color != auto {
    vp-set-theme(color: theme-color, preset: theme-preset)
  }
  let page-options = (:)
  if header-ascent != auto { page-options.insert("header-ascent", header-ascent) }
  if footer-descent != auto { page-options.insert("footer-descent", footer-descent) }
  if header != auto {
    page-options.insert("header", context {
      let current-page = here().page()
      let chapter-marks = query(<vp-chapter-mark>).filter(mark => mark.location().page() == current-page)
      if chapter-marks.len() == 0 { header }
    })
  }
  if footer != auto { page-options.insert("footer", footer) }
  set page(paper: paper, margin: margin, ..page-options)
  
  // 2. Cấu hình Font chữ, Kích thước, Màu sắc và THÊM Ngôn ngữ tiếng Việt
  set text(font: font, size: font-size, fill: rgb("#333333"), lang: "vi")
  
  // 3. Cấu hình đoạn văn (canh đều 2 bên, giãn dòng)
  set par(justify: true, leading: leading)
  
  // 4. Khởi tạo bộ đếm cho Hình ảnh, Bảng biểu (nếu có)
  show figure: set block(breakable: true)
  
  // 5. Cấu hình Toán học (Hiển thị phân số to và sửa dấu phẩy thập phân)
  show math.frac: math.display
  show math.comma: ","
  
  // 6. Render nội dung
  vp-hierarchy(mode: hierarchy, {
    if heading-theme == none { vp-heading-theme-native(body) } else { heading-theme(body) }
  })
}

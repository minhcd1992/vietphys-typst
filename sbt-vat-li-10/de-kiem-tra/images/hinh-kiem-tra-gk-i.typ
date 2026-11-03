#import "@preview/cetz:0.3.3": canvas, draw

// Màu sắc quy chuẩn
#let col-primary = rgb("#1976d2")
#let col-secondary = rgb("#b45309")
#let col-green = rgb("#16a34a")
#let col-grid = luma(88%)
#let col-axis = luma(20%)
#let dash-line = (paint: luma(55%), thickness: 0.6pt, dash: "dashed")

// =========================================================================
// ĐỀ SỐ 1
// =========================================================================

// Đề 1 - Câu 5 (MCQ): Đồ thị d-t song song trục thời gian
#let hinh-de1-mcq-05() = {
  set text(font: "Times New Roman", size: 9pt)
  canvas(length: 1cm, {
    import draw: *

    // Trục tọa độ
    line((0, 0), (3.8, 0), stroke: 0.75pt + col-axis, mark: (end: ">"))
    line((0, 0), (0, 2.2), stroke: 0.75pt + col-axis, mark: (end: ">"))
    content((3.8, -0.25), [$t$], anchor: "north-east")
    content((-0.18, 2.2), [$d$], anchor: "south-east")
    content((-0.15, -0.15), [O], anchor: "north-east")

    // Đường biểu diễn d = d_0 song song Ot
    line((0, 1.3), (3.2, 1.3), stroke: 1.2pt + col-primary)
    line((0, 1.3), (-0.08, 1.3), stroke: 0.75pt)
    content((-0.16, 1.3), [$d_0$], anchor: "east")
    circle((0, 1.3), radius: 0.04, fill: col-primary, stroke: none)
  })
}

// Đề 1 - Câu 1 (Đúng/Sai): Đồ thị d-t của xe máy điện qua 3 giai đoạn
#let hinh-de1-tf-01() = {
  set text(font: "Times New Roman", size: 9pt)
  canvas(length: 1cm, {
    import draw: *

    let sx = 0.36 // 1 s = 0.36 cm (15 s = 5.4 cm)
    let sy = 0.10 // 1 m = 0.10 cm (20 m = 2.0 cm)

    let p(t, d) = (t * sx, d * sy)

    // Lưới mờ
    for t in (4, 10, 15) {
      line((t * sx, 0), (t * sx, 24 * sy), stroke: 0.3pt + col-grid)
    }
    for d in (10, 20) {
      line((0, d * sy), (16.2 * sx, d * sy), stroke: 0.3pt + col-grid)
    }

    // Trục tọa độ
    line((0, 0), (16.5 * sx, 0), stroke: 0.75pt + col-axis, mark: (end: ">"))
    line((0, 0), (0, 25 * sy), stroke: 0.75pt + col-axis, mark: (end: ">"))
    content((16.5 * sx + 0.1, -0.22), [$t thin "(s)"$], anchor: "north-east")
    content((-0.15, 25 * sy + 0.1), [$d thin "(m)"$], anchor: "south-east")
    content((-0.15, -0.15), [O], anchor: "north-east")

    // Các vạch và nhãn số
    content((4 * sx, -0.20), [4], anchor: "north")
    content((10 * sx, -0.20), [10], anchor: "north")
    content((15 * sx, -0.20), [15], anchor: "north")

    content((-0.16, 20 * sy), [20], anchor: "east")

    // Đường dóng nét đứt
    line(p(4, 0), p(4, 20), stroke: dash-line)
    line(p(10, 0), p(10, 20), stroke: dash-line)
    line(p(0, 20), p(10, 20), stroke: dash-line)

    // Đường biểu diễn đồ thị 3 giai đoạn
    line(p(0, 0), p(4, 20), p(10, 20), p(15, 0), stroke: 1.25pt + col-primary)

    // Điểm nút
    circle(p(0, 0), radius: 0.045, fill: col-primary, stroke: none)
    circle(p(4, 20), radius: 0.045, fill: col-primary, stroke: none)
    circle(p(10, 20), radius: 0.045, fill: col-primary, stroke: none)
    circle(p(15, 0), radius: 0.045, fill: col-primary, stroke: none)
  })
}

// =========================================================================
// ĐỀ SỐ 2
// =========================================================================

// Đề 2 - Câu 1 (Đúng/Sai): Chuyển động rô-bốt trên mặt phẳng Oxy
#let hinh-de2-tf-01() = {
  set text(font: "Times New Roman", size: 9pt)
  canvas(length: 1cm, {
    import draw: *

    let sx = 0.95 // 1 m = 0.95 cm
    let sy = 0.75 // 1 m = 0.75 cm

    let p(x, y) = (x * sx, y * sy)

    // Lưới mờ
    for x in range(1, 5) {
      line((x * sx, 0), (x * sx, 3.4 * sy), stroke: 0.3pt + col-grid)
    }
    for y in range(1, 4) {
      line((0, y * sy), (4.5 * sx, y * sy), stroke: 0.3pt + col-grid)
    }

    // Trục tọa độ
    line((0, 0), (4.8 * sx, 0), stroke: 0.75pt + col-axis, mark: (end: ">"))
    line((0, 0), (0, 3.6 * sy), stroke: 0.75pt + col-axis, mark: (end: ">"))
    content((4.8 * sx + 0.1, -0.22), [$x thin "(m)"$], anchor: "north-east")
    content((-0.15, 3.6 * sy + 0.1), [$y thin "(m)"$], anchor: "south-east")
    content((-0.15, -0.15), [O], anchor: "north-east")

    // Nhãn giá trị trên trục
    content((4 * sx, -0.20), [4], anchor: "north")
    content((-0.16, 3 * sy), [3], anchor: "east")

    // Đường dóng nét đứt
    line(p(0, 3), p(4, 3), stroke: dash-line)
    line(p(4, 0), p(4, 3), stroke: dash-line)

    // Quỹ đạo chuyển động A -> B -> C (màu xanh dương đậm)
    line(p(0, 0), p(4, 0), stroke: 1.2pt + col-primary, mark: (end: ">", fill: col-primary))
    line(p(4, 0), p(4, 3), stroke: 1.2pt + col-primary, mark: (end: ">", fill: col-primary))

    // Vectơ độ dịch chuyển tổng hợp d = AC (màu đỏ cam nổi bật)
    line(p(0, 0), p(4, 3), stroke: 1.2pt + col-secondary, mark: (end: ">", fill: col-secondary))

    // Nhãn các điểm và vectơ (đặt khéo để không đè lên nhau)
    content((0.15, 0.22), [A$(0;0)$], anchor: "south-west")
    content((4 * sx + 0.12, 0.22), [B], anchor: "south-west")
    content((4 * sx + 0.12, 3 * sy + 0.05), [C$(4;3)$], anchor: "west")
    content((2 * sx - 0.25, 1.8 * sy), text(fill: col-secondary)[$bold(d)$], anchor: "south-east")
    content((2 * sx, -0.22), text(fill: col-primary)[$s_1 = 4 thin "m"$], anchor: "north")
    content((4 * sx + 0.15, 1.5 * sy), text(fill: col-primary)[$s_2 = 3 thin "m"$], anchor: "west")

    // Điểm nút
    circle(p(0, 0), radius: 0.045, fill: col-primary, stroke: none)
    circle(p(4, 0), radius: 0.045, fill: col-primary, stroke: none)
    circle(p(4, 3), radius: 0.045, fill: col-secondary, stroke: none)
  })
}

// Đề 2 - Câu 2 (Trả lời ngắn): Đồ thị d-t xe đạp trong 20 s
#let hinh-de2-short-02() = {
  set text(font: "Times New Roman", size: 9pt)
  canvas(length: 1cm, {
    import draw: *

    let sx = 0.22 // 1 s = 0.22 cm (20 s = 4.4 cm)
    let sy = 0.038 // 1 m = 0.038 cm (50 m = 1.9 cm)

    let p(t, d) = (t * sx, d * sy)

    // Lưới mờ
    for t in (10, 20) {
      line((t * sx, 0), (t * sx, 58 * sy), stroke: 0.3pt + col-grid)
    }
    for d in (25, 50) {
      line((0, d * sy), (22 * sx, d * sy), stroke: 0.3pt + col-grid)
    }

    // Trục tọa độ
    line((0, 0), (23 * sx, 0), stroke: 0.75pt + col-axis, mark: (end: ">"))
    line((0, 0), (0, 60 * sy), stroke: 0.75pt + col-axis, mark: (end: ">"))
    content((23 * sx + 0.1, -0.22), [$t thin "(s)"$], anchor: "north-east")
    content((-0.15, 60 * sy + 0.1), [$d thin "(m)"$], anchor: "south-east")
    content((-0.15, -0.15), [O], anchor: "north-east")

    // Nhãn tọa độ
    content((10 * sx, -0.20), [10], anchor: "north")
    content((20 * sx, -0.20), [20], anchor: "north")
    content((-0.16, 50 * sy), [50], anchor: "east")

    // Đường dóng nét đứt
    line(p(10, 0), p(10, 50), stroke: dash-line)
    line(p(20, 0), p(20, 50), stroke: dash-line)
    line(p(0, 50), p(20, 50), stroke: dash-line)

    // Đường biểu diễn d-t
    line(p(0, 0), p(10, 50), p(20, 50), stroke: 1.25pt + col-primary)

    // Nút điểm
    circle(p(0, 0), radius: 0.045, fill: col-primary, stroke: none)
    circle(p(10, 50), radius: 0.045, fill: col-primary, stroke: none)
    circle(p(20, 50), radius: 0.045, fill: col-primary, stroke: none)
  })
}

// =========================================================================
// ĐỀ SỐ 3
// =========================================================================

// Đề 3 - Câu 5 (MCQ): Đồ thị d-t dốc xuống từ trái sang phải
#let hinh-de3-mcq-05() = {
  set text(font: "Times New Roman", size: 9pt)
  canvas(length: 1cm, {
    import draw: *

    // Trục tọa độ
    line((0, 0), (3.8, 0), stroke: 0.75pt + col-axis, mark: (end: ">"))
    line((0, 0), (0, 2.4), stroke: 0.75pt + col-axis, mark: (end: ">"))
    content((3.8, -0.25), [$t$], anchor: "north-east")
    content((-0.18, 2.4), [$d$], anchor: "south-east")
    content((-0.15, -0.15), [O], anchor: "north-east")

    // Đường biểu diễn d-t dốc xuống
    line((0.4, 2.0), (3.2, 0.4), stroke: 1.2pt + col-primary)
    circle((0.4, 2.0), radius: 0.04, fill: col-primary, stroke: none)
    circle((3.2, 0.4), radius: 0.04, fill: col-primary, stroke: none)
  })
}

// Đề 3 - Câu 1 (Đúng/Sai): Đồ thị v-t của ô tô thử nghiệm qua 2 giai đoạn
#let hinh-de3-tf-01() = {
  set text(font: "Times New Roman", size: 8.5pt)
  canvas(length: 1cm, {
    import draw: *

    let sx = 0.26 // 1 s = 0.26 cm (15 s = 3.9 cm)
    let sy = 0.13 // 1 m/s = 0.13 cm (10 m/s = 1.3 cm)

    let p(t, v) = (t * sx, v * sy)

    // Lưới mờ
    for t in (5, 10, 15) {
      line((t * sx, 0), (t * sx, 12 * sy), stroke: 0.3pt + col-grid)
    }
    for v in (5, 10) {
      line((0, v * sy), (16.2 * sx, v * sy), stroke: 0.3pt + col-grid)
    }

    // Trục tọa độ
    line((0, 0), (16.5 * sx, 0), stroke: 0.75pt + col-axis, mark: (end: ">"))
    line((0, 0), (0, 13 * sy), stroke: 0.75pt + col-axis, mark: (end: ">"))
    content((16.5 * sx + 0.1, -0.22), [$t thin "(s)"$], anchor: "north-east")
    content((-0.15, 13 * sy + 0.1), [$v thin "(m/s)"$], anchor: "south-east")
    content((-0.15, -0.15), [O], anchor: "north-east")

    // Nhãn vạch trục
    content((5 * sx, -0.20), [5], anchor: "north")
    content((15 * sx, -0.20), [15], anchor: "north")
    content((-0.16, 10 * sy), [10], anchor: "east")

    // Đường dóng nét đứt
    line(p(5, 0), p(5, 10), stroke: dash-line)
    line(p(0, 10), p(5, 10), stroke: dash-line)

    // Đường biểu diễn v-t hình tam giác
    line(p(0, 0), p(5, 10), p(15, 0), stroke: 1.25pt + col-primary)

    // Điểm nút
    circle(p(0, 0), radius: 0.045, fill: col-primary, stroke: none)
    circle(p(5, 10), radius: 0.045, fill: col-primary, stroke: none)
    circle(p(15, 0), radius: 0.045, fill: col-primary, stroke: none)
  })
}

// =========================================================================
// ĐỀ SỐ 4
// =========================================================================

// Đề 4 - Câu 1 (Đúng/Sai): Đồ thị v-t chuyển động 3 giai đoạn của xe buýt
#let hinh-de4-tf-01() = {
  set text(font: "Times New Roman", size: 8.5pt)
  canvas(length: 1cm, {
    import draw: *

    let sx = 0.14 // 1 s = 0.14 cm (30 s = 4.2 cm)
    let sy = 0.11 // 1 m/s = 0.11 cm (12 m/s = 1.32 cm)

    let p(t, v) = (t * sx, v * sy)

    // Lưới mờ
    for t in (6, 26, 30) {
      line((t * sx, 0), (t * sx, 14 * sy), stroke: 0.3pt + col-grid)
    }
    for v in (6, 12) {
      line((0, v * sy), (32 * sx, v * sy), stroke: 0.3pt + col-grid)
    }

    // Trục tọa độ
    line((0, 0), (33 * sx, 0), stroke: 0.75pt + col-axis, mark: (end: ">"))
    line((0, 0), (0, 15 * sy), stroke: 0.75pt + col-axis, mark: (end: ">"))
    content((33 * sx + 0.1, -0.22), [$t thin "(s)"$], anchor: "north-east")
    content((-0.15, 15 * sy + 0.1), [$v thin "(m/s)"$], anchor: "south-east")
    content((-0.15, -0.15), [O], anchor: "north-east")

    // Nhãn vạch trục
    content((6 * sx, -0.20), [6], anchor: "north")
    content((26 * sx, -0.20), [26], anchor: "north")
    content((30 * sx, -0.20), [30], anchor: "north")
    content((-0.16, 12 * sy), [12], anchor: "east")

    // Đường dóng nét đứt
    line(p(6, 0), p(6, 12), stroke: dash-line)
    line(p(26, 0), p(26, 12), stroke: dash-line)
    line(p(0, 12), p(6, 12), stroke: dash-line)

    // Đường biểu diễn v-t hình thang
    line(p(0, 0), p(6, 12), p(26, 12), p(30, 0), stroke: 1.25pt + col-primary)

    // Điểm nút
    circle(p(0, 0), radius: 0.045, fill: col-primary, stroke: none)
    circle(p(6, 12), radius: 0.045, fill: col-primary, stroke: none)
    circle(p(26, 12), radius: 0.045, fill: col-primary, stroke: none)
    circle(p(30, 0), radius: 0.045, fill: col-primary, stroke: none)
  })
}

// =========================================================================
// ĐỀ SỐ 5
// =========================================================================

// Đề 5 - Câu 1 (Đúng/Sai): Đồ thị v-t ô tô điện VF9 qua 3 giai đoạn
#let hinh-de5-tf-01() = {
  set text(font: "Times New Roman", size: 8.5pt)
  canvas(length: 1cm, {
    import draw: *

    let sx = 0.14 // 1 s = 0.14 cm (30 s = 4.2 cm)
    let sy = 0.07 // 1 m/s = 0.07 cm (20 m/s = 1.4 cm)

    let p(t, v) = (t * sx, v * sy)

    // Lưới mờ
    for t in (10, 25, 30) {
      line((t * sx, 0), (t * sx, 23 * sy), stroke: 0.3pt + col-grid)
    }
    for v in (10, 20) {
      line((0, v * sy), (32 * sx, v * sy), stroke: 0.3pt + col-grid)
    }

    // Trục tọa độ
    line((0, 0), (33 * sx, 0), stroke: 0.75pt + col-axis, mark: (end: ">"))
    line((0, 0), (0, 24 * sy), stroke: 0.75pt + col-axis, mark: (end: ">"))
    content((33 * sx + 0.1, -0.22), [$t thin "(s)"$], anchor: "north-east")
    content((-0.15, 24 * sy + 0.1), [$v thin "(m/s)"$], anchor: "south-east")
    content((-0.15, -0.15), [O], anchor: "north-east")

    // Nhãn vạch trục
    content((10 * sx, -0.20), [10], anchor: "north")
    content((25 * sx, -0.20), [25], anchor: "north")
    content((30 * sx, -0.20), [30], anchor: "north")
    content((-0.16, 20 * sy), [20], anchor: "east")

    // Đường dóng nét đứt
    line(p(10, 0), p(10, 20), stroke: dash-line)
    line(p(25, 0), p(25, 20), stroke: dash-line)
    line(p(0, 20), p(10, 20), stroke: dash-line)

    // Đường biểu diễn v-t hình thang
    line(p(0, 0), p(10, 20), p(25, 20), p(30, 0), stroke: 1.25pt + col-primary)

    // Điểm nút
    circle(p(0, 0), radius: 0.045, fill: col-primary, stroke: none)
    circle(p(10, 20), radius: 0.045, fill: col-primary, stroke: none)
    circle(p(25, 20), radius: 0.045, fill: col-primary, stroke: none)
    circle(p(30, 0), radius: 0.045, fill: col-primary, stroke: none)
  })
}

// =========================================================================
// ĐỀ SỐ 6
// =========================================================================

// Đề 6 - Câu 1 (Đúng/Sai): Đồ thị d-t của rô-bốt 3 giai đoạn (có phần âm)
#let hinh-de6-tf-01() = {
  set text(font: "Times New Roman", size: 8.5pt)
  canvas(length: 1cm, {
    import draw: *

    let sx = 0.50 // 1 s = 0.50 cm (8 s = 4.0 cm)
    let sy = 0.22 // 1 m = 0.22 cm (6 m = 1.32 cm, -3 m = -0.66 cm)

    let p(t, d) = (t * sx, d * sy)

    // Lưới mờ
    for t in (2, 5, 8) {
      line((t * sx, -3.8 * sy), (t * sx, 7.2 * sy), stroke: 0.3pt + col-grid)
    }
    for d in (-3, 3, 6) {
      line((0, d * sy), (8.8 * sx, d * sy), stroke: 0.3pt + col-grid)
    }

    // Trục tọa độ
    line((0, 0), (9.0 * sx, 0), stroke: 0.75pt + col-axis, mark: (end: ">"))
    line((0, -4.0 * sy), (0, 7.5 * sy), stroke: 0.75pt + col-axis, mark: (end: ">"))
    content((9.0 * sx + 0.1, -0.22), [$t thin "(s)"$], anchor: "north-east")
    content((-0.15, 7.5 * sy + 0.1), [$x thin "(m)"$], anchor: "south-east")
    content((-0.15, 0.18), [O], anchor: "south-east")

    // Nhãn vạch trục hoành
    content((2 * sx, -0.20), [2], anchor: "north")
    content((5 * sx, -0.20), [5], anchor: "north")
    content((8 * sx, 0.20), [8], anchor: "south")

    // Nhãn vạch trục tung
    content((-0.16, 6 * sy), [6], anchor: "east")
    content((-0.16, -3 * sy), [-3], anchor: "east")

    // Đường dóng nét đứt
    line(p(2, 0), p(2, 6), stroke: dash-line)
    line(p(5, 0), p(5, 6), stroke: dash-line)
    line(p(0, 6), p(2, 6), stroke: dash-line)
    line(p(0, -3), p(8, -3), stroke: dash-line)
    line(p(8, 0), p(8, -3), stroke: dash-line)

    // Đường biểu diễn x-t 3 giai đoạn
    line(p(0, 0), p(2, 6), p(5, 6), p(8, -3), stroke: 1.25pt + col-primary)

    // Điểm nút
    circle(p(0, 0), radius: 0.045, fill: col-primary, stroke: none)
    circle(p(2, 6), radius: 0.045, fill: col-primary, stroke: none)
    circle(p(5, 6), radius: 0.045, fill: col-primary, stroke: none)
    circle(p(8, -3), radius: 0.045, fill: col-primary, stroke: none)
  })
}

// =========================================================================
// ĐỀ SỐ 7
// =========================================================================

// Đề 7 - Câu 1 (Đúng/Sai): Sơ đồ chuyển động ném ngang từ đỉnh vách đá
#let hinh-de7-tf-01() = {
  set text(font: "Times New Roman", size: 8.5pt)
  canvas(length: 1cm, {
    import draw: *

    // Vách đá
    rect((-0.6, 0), (0, 1.8), fill: luma(92%), stroke: 0.6pt + luma(50%))
    line((-0.8, 0), (4.8, 0), stroke: 0.75pt + col-axis) // Mặt biển

    // Ký hiệu nước biển mờ
    for i in range(4) {
      let x = 0.5 + i * 1.1
      line((x, -0.08), (x + 0.6, -0.08), stroke: 0.5pt + rgb("#60a5fa"))
    }

    // Vectơ vận tốc ném ngang v_0
    line((0, 1.8), (1.1, 1.8), stroke: 1.2pt + col-secondary, mark: (end: ">", fill: col-secondary))
    content((1.15, 1.95), [$bold(v)_0$], anchor: "south-west")

    // Quỹ đạo ném ngang parabol: y = 1.8 - 0.1 * x^2 (với x từ 0 đến 4.24)
    let pts = ()
    for step in range(0, 21) {
      let x = step * 0.2
      let y = 1.8 - (1.8 / (4.0 * 4.0)) * (x * x)
      if y >= 0 { pts.push((x, y)) }
    }
    pts.push((4.0, 0))
    line(..pts, stroke: 1.2pt + col-primary)

    // Điểm ném và điểm chạm đất
    circle((0, 1.8), radius: 0.045, fill: col-primary, stroke: none)
    circle((4.0, 0), radius: 0.045, fill: col-primary, stroke: none)

    // Kích thước độ cao h và tầm xa L
    line((-0.2, 0), (-0.2, 1.8), stroke: 0.5pt + luma(40%), mark: (start: "|", end: "|"))
    content((-0.25, 0.9), [$h = 45 thin "m"$], anchor: "east")

    line((0, -0.22), (4.0, -0.22), stroke: 0.5pt + luma(40%), mark: (start: "|", end: "|"))
    content((2.0, -0.42), [$L$], anchor: "north")
  })
}

// =========================================================================
// ĐỀ SỐ 8
// =========================================================================

// Đề 8 - Câu 1 (Đúng/Sai): Sơ đồ quỹ đạo chuyển động ném xiên quả bóng
#let hinh-de8-tf-01() = {
  set text(font: "Times New Roman", size: 8.5pt)
  canvas(length: 1cm, {
    import draw: *

    // Mặt đất
    line((-0.4, 0), (4.8, 0), stroke: 0.75pt + col-axis)

    // Vectơ vận tốc đầu v_0
    let v-len = 1.0
    let ang = 37deg
    let vx = v-len * calc.cos(ang)
    let vy = v-len * calc.sin(ang)
    line((0, 0), (vx, vy), stroke: 1.2pt + col-secondary, mark: (end: ">", fill: col-secondary))
    content((vx + 0.05, vy + 0.05), [$bold(v)_0$], anchor: "south-west")

    // Cung góc alpha
    arc((0, 0), start: 0deg, delta: 37deg, radius: 0.4, stroke: 0.6pt + col-axis)
    content((0.55, 0.16), [$alpha$], anchor: "south-west")

    // Quỹ đạo ném xiên parabol: đỉnh tại (2.2, 1.35), chạm đất tại (4.4, 0)
    let pts = ()
    for step in range(0, 23) {
      let x = step * 0.2
      let y = 1.35 * (1.0 - calc.pow((x - 2.2) / 2.2, 2))
      if y >= 0 { pts.push((x, y)) }
    }
    line(..pts, stroke: 1.2pt + col-primary)

    // Đường dóng tầm cao cực đại H_max
    line((2.2, 0), (2.2, 1.35), stroke: dash-line)
    content((2.2, 1.35 + 0.15), [$H_("max")$], anchor: "south")

    // Điểm ném, đỉnh, điểm chạm đất
    circle((0, 0), radius: 0.045, fill: col-primary, stroke: none)
    circle((2.2, 1.35), radius: 0.045, fill: col-primary, stroke: none)
    circle((4.4, 0), radius: 0.045, fill: col-primary, stroke: none)

    // Kích thước tầm xa L
    line((0, -0.22), (4.4, -0.22), stroke: 0.5pt + luma(40%), mark: (start: "|", end: "|"))
    content((2.2, -0.42), [$L$], anchor: "north")
  })
}

// =========================================================================
// ĐỀ SỐ 9
// =========================================================================

// Đề 9 - Câu 2 (Đúng/Sai): Bắn viên bi thép theo phương ngang từ mép bàn
#let hinh-de9-tf-02() = {
  set text(font: "Times New Roman", size: 8.5pt)
  canvas(length: 1cm, {
    import draw: *

    // Mặt sàn
    line((-0.4, 0), (4.6, 0), stroke: 0.75pt + col-axis)

    // Bàn thí nghiệm: Mặt bàn dày và chân bàn
    rect((-0.6, 1.4), (0.2, 1.5), fill: luma(90%), stroke: 0.6pt + luma(40%))
    line((-0.4, 0), (-0.4, 1.4), stroke: 1.0pt + luma(50%))
    line((-0.1, 0), (-0.1, 1.4), stroke: 1.0pt + luma(50%))

    // Lò xo nhỏ trên mặt bàn
    let x-sp = -0.5
    line((-0.5, 1.55), (-0.2, 1.55), stroke: 0.8pt + col-primary)

    // Viên bi tại mép bàn (0.2, 1.55)
    circle((0.2, 1.55), radius: 0.06, fill: col-primary, stroke: none)

    // Vectơ vận tốc ban đầu v_0
    line((0.2, 1.55), (1.1, 1.55), stroke: 1.2pt + col-secondary, mark: (end: ">", fill: col-secondary))
    content((1.15, 1.7), [$bold(v)_0$], anchor: "south-west")

    // Quỹ đạo ném ngang parabol từ (0.2, 1.55) đến (3.8, 0)
    let pts = ()
    for step in range(0, 19) {
      let x = 0.2 + step * 0.2
      let dx = x - 0.2
      let y = 1.55 - (1.55 / (3.6 * 3.6)) * (dx * dx)
      if y >= 0 { pts.push((x, y)) }
    }
    pts.push((3.8, 0))
    line(..pts, stroke: 1.2pt + col-primary)

    // Điểm chạm sàn
    circle((3.8, 0), radius: 0.045, fill: col-primary, stroke: none)

    // Thùng nhựa hứng bi tại điểm chạm sàn
    rect((3.6, 0), (4.0, 0.35), fill: rgb("#e0e7ff"), stroke: 0.8pt + col-primary)

    // Kích thước độ cao h mép bàn
    line((0.0, 0), (0.0, 1.5), stroke: 0.5pt + luma(40%), mark: (start: "|", end: "|"))
    content((-0.05, 0.75), [$h$], anchor: "east")

    // Kích thước tầm xa L
    line((0.2, -0.22), (3.8, -0.22), stroke: 0.5pt + luma(40%), mark: (start: "|", end: "|"))
    content((2.0, -0.42), [$L$], anchor: "north")
  })
}

// =========================================================================
// ĐỀ SỐ 10
// =========================================================================

// Đề 10 - Câu 2 (Đúng/Sai): Ném xiên từ độ cao h_0 so với mặt đất
#let hinh-de10-tf-02() = {
  set text(font: "Times New Roman", size: 8.5pt)
  canvas(length: 0.82cm, {
    import draw: *

    // Mặt đất
    line((-0.4, 0), (4.6, 0), stroke: 0.75pt + col-axis)

    // Trục thẳng đứng dóng độ cao h_0
    line((0, 0), (0, 0.6), stroke: 0.5pt + luma(40%), mark: (start: "|", end: "|"))
    content((-0.08, 0.3), [$h_0$], anchor: "east")

    // Điểm ném ở (0, 0.6)
    circle((0, 0.6), radius: 0.05, fill: col-primary, stroke: none)

    // Vectơ vận tốc đầu v_0
    let v-len = 0.95
    let ang = 45deg
    let vx = v-len * calc.cos(ang)
    let vy = v-len * calc.sin(ang)
    line((0, 0.6), (vx, 0.6 + vy), stroke: 1.2pt + col-secondary, mark: (end: ">", fill: col-secondary))
    content((vx + 0.05, 0.6 + vy + 0.05), [$bold(v)_0$], anchor: "south-west")

    // Đường ngang đứt nét và góc alpha
    line((0, 0.6), (0.7, 0.6), stroke: dash-line)
    arc((0, 0.6), start: 0deg, delta: 45deg, radius: 0.35, stroke: 0.6pt + col-axis)
    content((0.45, 0.75), [$alpha$], anchor: "south-west")

    // Quỹ đạo ném xiên: từ (0, 0.6), đỉnh tại (1.8, 1.5), chạm đất tại (4.0, 0)
    // Parabol: y(x) = 0.6 + x - (x^2 / 3.6) => đỉnh tại x = 1.8 có y = 0.6 + 1.8 - 0.9 = 1.5
    // Tại x = 4.0: y = 0.6 + 4 - 16/3.6 = 4.6 - 4.444 = 0.155; tại x = 4.12: y = 0
    let pts = ()
    for step in range(0, 22) {
      let x = step * 0.2
      let y = 0.6 + x - (x * x) / 3.6
      if y >= 0 { pts.push((x, y)) }
    }
    pts.push((4.12, 0))
    line(..pts, stroke: 1.2pt + col-primary)

    // Đường dóng độ cao cực đại H_max
    line((1.8, 0), (1.8, 1.5), stroke: dash-line)
    content((1.8, 1.5 + 0.15), [$H_("max")$], anchor: "south")

    // Điểm chạm đất
    circle((4.12, 0), radius: 0.045, fill: col-primary, stroke: none)

    // Kích thước tầm xa L
    line((0, -0.22), (4.12, -0.22), stroke: 0.5pt + luma(40%), mark: (start: "|", end: "|"))
    content((2.06, -0.42), [$L$], anchor: "north")
  })
}



// ==========================================
// TEMPLATE LESSON (BÀI HỌC) TỰ CO GIÃN
// Tên hàm: vp-lesson-title
// ==========================================
#let vp-lesson-title(
  num: "1", 
  title: "Tên bài học", 
  color: rgb("#259697") // Màu mặc định theo ảnh mẫu
) = {
  let c = color
  
  v(10pt)
  grid(
    columns: (75pt, 1fr), // Cột 1: Lục giác 75pt. Cột 2: Nội dung co giãn (1fr)
    gutter: 15pt,
    align: (center + horizon, left + horizon),
    
    // -----------------------------
    // KHỐI 1: Lục giác chứa số
    // -----------------------------
    box(width: 75pt, height: 65pt, {
      // Vẽ lục giác đều (tỉ lệ rộng/cao = 1.15)
      polygon(
        fill: c, stroke: none,
        (0%, 50%), (25%, 0%), (75%, 0%), (100%, 50%), (75%, 100%), (25%, 100%)
      )
      place(center + horizon, text(fill: white, weight: "bold", size: 24pt)[#num])
    }),
    
    // -----------------------------
    // KHỐI 2: Cụm văn bản & Đường viền
    // -----------------------------
    grid(
      columns: 1,
      
      // A. Dòng kẻ trên cùng + Dấu chấm tròn
      box(width: 100%, height: 2pt, {
        place(left + horizon, line(length: 100%, stroke: 1.5pt + c))
        place(right + horizon, circle(radius: 3.5pt, fill: c, stroke: none))
      }),
      
      // B. Khối văn bản tự động phình to nếu xuống dòng
      block(width: 100%, inset: (y: 16pt, left: 10pt, right: 5pt), {
        grid(
          columns: (1fr, auto), 
          gutter: 15pt, 
          align: (left + horizon, right + horizon),
          
          // Text tên bài (chiếm phần không gian còn lại -> tự xuống dòng)
          text(fill: c, weight: "bold", size: 18pt)[#title],
          
          // Cụm 3 ô vuông trang trí (xếp theo ma trận 2x2)
          grid(
            columns: 2, gutter: 4pt,
            [], rect(width: 7pt, height: 7pt, fill: c, stroke: none),
            rect(width: 7pt, height: 7pt, fill: c, stroke: none), rect(width: 7pt, height: 7pt, fill: c, stroke: none)
          )
        )
      }),
      
      // C. Dòng kẻ dưới cùng
      line(length: 100%, stroke: 1.5pt + c)
    )
  )
  v(15pt)
}


// ==========================================
// BỘ GIAO DIỆN HEADING SỐ 01 (CỜ ĐUÔI NHEO)
// ==========================================
#let vp-heading-theme-01(
  color: rgb("#5F9E31"),      
  bg-color: rgb("#EAF4DF"),   
  body
) = {
  set heading(numbering: "1.1.1.1")

  show heading: it => {
    let c-dark = color
    let c-light = bg-color

    let num-content = if it.numbering != none { 
      counter(heading).display(it.numbering) 
    } else { 
      "" 
    }

    if it.level == 1 {
      v(-10pt) // Đã giảm từ 20pt
      context {
        let body-text = text(fill: c-dark, weight: "bold", size: 16pt)[#it.body]
        let w = measure(body-text).width + 50pt
        let h = 32pt
        
        box(height: 42pt, width: 100%, {
          place(left + top, dx: 15pt, dy: 5pt, 
            box(width: w, height: h, {
              polygon(
                fill: c-light, stroke: 1.2pt + c-dark,
                (0pt, 0pt), (w, 0pt), (w - 12pt, h/2), (w, h), (0pt, h)
              )
              place(left + horizon, dx: 35pt, body-text)
            })
          )
          place(left + top, dx: 0pt, dy: 0pt,
            box(width: 36pt, height: 42pt, {
              polygon(
                fill: c-dark, stroke: none,
                (0pt, 0pt), (36pt, 0pt), (36pt, 32pt), (18pt, 42pt), (0pt, 32pt)
              )
              place(center + top, dy: 12pt, text(fill: white, weight: "bold", size: 20pt)[#num-content])
            })
          )
        })
      }
      v(0pt) // Đã giảm từ 12pt
    } 
    else if it.level == 2 {
      v(0pt) // Đã giảm từ 16pt
      grid(
        columns: (auto, 1fr), gutter: 12pt, align: (left + horizon, left + horizon),
        circle(radius: 14pt, stroke: 1.2pt + c-dark, align(center + horizon)[#text(fill: c-dark, weight: "bold", size: 12pt)[#num-content]]),
        stack(dir: ttb, spacing: 6pt, text(weight: "bold", size: 14pt, fill: rgb("#333"))[#it.body], line(length: 100%, stroke: 1.2pt + c-dark))
      )
      v(4pt) // Đã giảm từ 10pt
    } 
    else if it.level == 3 {
      v(-6pt) // Đã giảm từ 14pt
      stack(
        dir: ttb, spacing: 8pt,
        grid(
          columns: (auto, 1fr), gutter: 10pt, align: (left + horizon, left + horizon),
          rect(fill: c-light, radius: 4pt, inset: (x: 8pt, y: 6pt), stroke: none, text(fill: c-dark, weight: "bold", size: 12pt)[#num-content]),
          text(weight: "bold", size: 13pt, fill: rgb("#333"))[#it.body]
        ),
        line(length: 100%, stroke: (paint: c-dark, thickness: 1pt, dash: "dashed"))
      )
      v(4pt) // Đã giảm từ 8pt
    } 
    else if it.level == 4 {
      v(0pt) // Đã giảm từ 12pt
      stack(
        dir: ttb, spacing: 6pt,
        grid(
          columns: (auto, 1fr), gutter: 10pt, align: (left + horizon, left + horizon),
          text(fill: c-dark, weight: "bold", size: 12pt)[#num-content],
          text(weight: "bold", size: 12pt, fill: rgb("#333"))[#it.body]
        ),
        line(length: 100%, stroke: 0.8pt + c-dark)
      )
      v(4pt) // Đã giảm từ 8pt
    } 
    else {
      it 
    }
  }
  
  body
}
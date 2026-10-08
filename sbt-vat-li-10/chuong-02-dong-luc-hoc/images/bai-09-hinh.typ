// Sơ đồ CeTZ Bài 9; hình giải thích đáp án chỉ gọi trong sol.
#import "@preview/cetz:0.3.3": canvas, draw
#let blue = rgb("1976d2")
#let orange = rgb("b45309")
#let dash = (paint: luma(55%), thickness: 0.6pt, dash: "dashed")
#let vec(a, b, label: none, at: none, anchor: "south", color: blue) = {
  draw.line(a,b,stroke:1.05pt+color,mark:(end:">"))
  if label != none { draw.content(if at == none {b} else {at},label,anchor:anchor) }
}
#let person(x, y) = {
  draw.circle((x,y+1.25),radius:0.15,stroke:0.8pt,fill:white)
  draw.line((x,y+1.1),(x,y+0.45),(x+0.35,y+0.45),(x+0.5,y),stroke:0.9pt)
  draw.line((x,y+0.85),(x+0.35,y+0.65),stroke:0.8pt)
}
#let car(x, y, w: 4.8) = {
  draw.line((x,y),(x+w,y),(x+w,y+0.45),(x+w - 0.65,y+1.55),(x+0.4,y+1.55),(x,y+1.1),close:true,stroke:0.8pt+luma(50%))
  for dx in (0.8,w - 0.8) { draw.circle((x+dx,y - 0.15),radius:0.23,fill:white,stroke:0.8pt) }
}
#let seat(x,y,headrest:false) = {
  draw.line((x - 0.18,y+1.1),(x - 0.18,y+0.4),(x+0.4,y+0.4),stroke:2pt+blue)
  if headrest { draw.line((x - 0.23,y+1.12),(x - 0.23,y+1.42),stroke:3pt+blue) }
  person(x,y)
}
#let plot(points,w:3.5,h:1.8,xlabel:[$t$],ylabel:[$d$]) = {
  vec((0,0),(w+0.2,0),label:xlabel,anchor:"west",color:black)
  vec((0,0),(0,h+0.25),label:ylabel,color:black)
  draw.content((-0.15,-0.15),[O])
  draw.line(..points.map(p=>(w*p.at(0),h*p.at(1))),stroke:1.1pt+blue)
}
#let bai-09-hinh(id) = {
  set text(font:"Times New Roman",size:10pt)
  if id == "chon-do-thi" {
    grid(columns:(auto,auto),column-gutter:22pt,row-gutter:12pt,
      ..("A","B","C","D").enumerate().map(((i,name))=>align(center)[
        *#name* #linebreak()
        #canvas({
          let points = if i == 0 {range(51).map(j=>(j/50,(j/50)*(j/50)))}
            else if i == 1 {((0,0),(1,1))}
            else if i == 2 {range(51).map(j=>(j/50,1 - calc.exp(-4*j/50)))}
            else {((0,0),(0.2,0.5),(0.4,0.25),(0.6,0.8),(0.8,0.55),(1,1))}
          plot(points)
        })
      ])
    )
  } else {
    canvas({
      import draw: *
      if id == "phanh-xe" {
        car(0,0)
        seat(2,0.05)
        vec((3.7,2.05),(5,2.05),label:[$bold(v)_("xe")$],at:(4.35,2.2))
        vec((1.4,-0.8),(0,-0.8),label:[$bold(a)_("xe")$],at:(0.7,-0.65),color:orange)
        content((2.4,-1.2),[Xe đi sang phải, đang giảm tốc])
      } else if id == "hai-mat-doc" {
        line((0,2),(1.75,0.25),stroke:1.2pt+blue)
        // Đoạn nối cong tiếp tuyến với dốc trái và từng phương án dốc phải.
        for (end,last,color) in (((2.25,0.25),(4,2),blue),((2.5,0.25),(6,2),blue),((2.5,0),(7.1,0),orange)) {
          let points = range(31).map(i=>{
            let t = i/30
            ((1 - t)*(1 - t)*1.75 + 2*t*(1 - t)*2 + t*t*end.at(0),
              (1 - t)*(1 - t)*0.25 + t*t*end.at(1))
          })
          line(..points,last,stroke:1pt+color)
        }
        line((0,2),(6.3,2),stroke:dash)
        circle((0,2),radius:0.08,fill:blue,stroke:none)
        line((-0.35,0),(-0.35,2),mark:(start:"<",end:">"),stroke:0.6pt)
        content((-0.5,1),[$h$],anchor:"east")
        content((5.4,-0.28),[Dốc phải khi hạ về phương ngang])
        content((0.8,2.27),[Vị trí thả])
      } else if id == "thang-may" {
        rect((0,0),(2.7,2.7),stroke:0.8pt+luma(55%))
        rect((0.8,0.08),(1.9,0.32),fill:luma(93%),stroke:0.7pt)
        circle((1.35,1.9),radius:0.15,stroke:0.8pt,fill:white)
        line((1.35,1.75),(1.35,1.0),(1.12,0.34),stroke:0.9pt)
        line((1.35,1.0),(1.6,0.34),stroke:0.9pt)
        line((1.02,1.15),(1.35,1.55),(1.68,1.15),stroke:0.8pt)
        content((1.35,-0.23),[Cân])
        vec((3.3,0.8),(3.3,2.1),label:[$bold(a)$],anchor:"south",color:orange)
      } else if id == "vao-cua" {
        line(..range(61).map(i=>{
          let a = -90deg+i*1deg
          (3.2*calc.cos(a),3.2+3.2*calc.sin(a))
        }),stroke:1.1pt+blue)
        line((-1.6,0),(0,0),stroke:1.1pt+blue)
        vec((0,0),(3.2,0),label:[Hướng vận tốc ban đầu],at:(3.2,-0.2),anchor:"north",color:orange)
        circle((0,0),radius:0.08,fill:black)
        content((2.8,1.65),[Đường cua trái],anchor:"south")
        content((-1.2,0.22),[Nhìn từ trên])
      } else if id == "roi-deu" {
        circle((0,0),radius:0.1,fill:blue,stroke:none)
        vec((0,0),(0,1.5),label:[$bold(F)_c$])
        vec((0,0),(0,-1.5),label:[$bold(P)$],anchor:"north",color:orange)
        vec((1.1,0.6),(1.1,-0.6),label:[$bold(v)$],at:(1.28,0),anchor:"west",color:black)
      } else if id == "tha-vat" {
        rect((0,0),(5.1,2.25),stroke:0.8pt+luma(55%))
        circle((1.5,1.9),radius:0.08,fill:blue,stroke:none)
        content((1.75,1.9),[Điểm thả],anchor:"west")
        line((1.5,1.75),(1.5,0),stroke:dash)
        content((1.5,-0.2),[O])
        content((3.8,-0.2),[Sàn toa])
        content((2.7,2.5),[Hình chiếu thẳng đứng trong toa])
        vec((5.45,0.9),(6.7,0.9),label:[Đầu tàu],at:(6.05,1.1))
      } else if id == "ve-tinh" {
        circle((0,0),radius:1.55,stroke:dash)
        circle((0,0),radius:0.45,fill:blue.lighten(75%),stroke:0.8pt+blue)
        content((0,0),[Trái Đất])
        rect((1.43,-0.12),(1.67,0.12),fill:orange,stroke:none)
        vec((1.55,0),(1.55,1.15),label:[$bold(v)$],anchor:"south")
        content((1.85,-0.2),[Vệ tinh],anchor:"west")
      } else if id == "toa-do" {
        vec((0,0),(5.4,0),label:[$t$ (s)],anchor:"west",color:black)
        vec((0,0),(0,2.75),label:[$x$ (m)],color:black)
        let p(t,x) = (t*1.1,x*1.6)
        line(p(1,0.2),p(4,1.4),stroke:1.1pt+blue)
        for (t,x,label) in ((1,0.2,[0,2]),(4,1.4,[1,4])) {
          line(p(t,0),p(t,x),p(0,x),stroke:dash)
          circle(p(t,x),radius:0.045,fill:blue,stroke:none)
          content((t*1.1,-0.2),[#t])
          content((-0.17,x*1.6),label,anchor:"east")
        }
        content((-0.15,-0.15),[O])
      } else if id == "xe-hang-luc" {
        rect((-0.6,-0.3),(0.6,0.3),fill:luma(95%),stroke:0.7pt)
        vec((0,0),(0,1.3),label:[$bold(N)$])
        vec((0,0),(0,-1.3),label:[$bold(P)$],anchor:"north",color:orange)
        vec((0,0),(1.6,0),label:[$bold(F)_("đẩy")$],at:(1.45,0.18))
        vec((0,0),(-1.6,0),label:[$bold(F)_c$],at:(-1.45,0.18),color:orange)
        content((0,-1.7),[Xe chạy thẳng đều khi đang được đẩy])
      } else if id == "hai-tinh-huong" {
        for (x,label) in ((0,[Xe bị đẩy về trước]),(4.3,[Xe đang phanh])) {
          seat(x+1.1,0,headrest:true)
          line((x,0),(x+3,0),stroke:0.7pt+luma(55%))
          content((x+1.5,2.2),label)
          if x == 0 {
            vec((x+0.2,1.75),(x+2,1.75),label:[$bold(a)_("xe")$],at:(x+2.25,1.75),anchor:"west",color:orange)
          } else {
            vec((x+2,1.75),(x+0.3,1.75),label:[$bold(a)_("xe")$],at:(x+2.25,1.75),anchor:"west",color:orange)
          }
          content((x+1.5,-0.3),[Đầu xe ở bên phải])
        }
      } else if id == "roi-khi-phanh" {
        rect((0,0),(4.5,2.3),stroke:0.7pt+luma(55%))
        circle((1.1,2),radius:0.07,fill:blue,stroke:none)
        line((1.1,2),(1.1,0),stroke:dash)
        // Trong hệ toa hãm đều, hai thành phần độ dịch chuyển cùng tỉ lệ t².
        line((1.1,2),(2.5,0),stroke:1.1pt+orange,mark:(end:">"))
        content((1.1,-0.2),[O])
        content((2.5,-0.2),[M])
        line((1.1,-0.55),(2.5,-0.55),stroke:0.6pt,mark:(start:"<",end:">"))
        content((1.8,-0.78),[$Delta x$])
        content((2.3,2.55),[Trong hệ toa hãm đều; phía trước ở bên phải])
      } else if id == "cong-quang" {
        rect((0,0),(7,0.25),stroke:0.8pt,fill:luma(95%))
        for x in range(1,14) {
          line((x*0.48,0.27),(x*0.48,0.43),stroke:0.45pt+blue,mark:(end:">"))
        }
        rect((0.7,0.48),(1.8,0.73),stroke:0.8pt+blue,fill:blue.lighten(85%))
        rect((1.1,0.73),(1.5,1.23),stroke:none,fill:blue)
        content((0.95,1.55),[Tấm chắn, $d$])
        for (x,label) in ((2.7,[A]),(6.1,[B])) {
          line((x - 0.28,0.25),(x - 0.28,1.25),(x+0.28,1.25),(x+0.28,0.25),stroke:1.3pt+orange)
          line((x - 0.26,0.95),(x+0.26,0.95),stroke:dash)
          content((x,1.55),label)
          line((x,0),(x,-0.85),(4.2,-0.85),stroke:0.5pt+luma(50%))
        }
        rect((3.4,-1.4),(5,-0.75),fill:white,stroke:0.7pt)
        content((4.2,-1.07),[Đồng hồ])
        line((2.7,1.9),(6.1,1.9),stroke:0.6pt,mark:(start:"<",end:">"))
        content((4.4,2.15),[$s = "0,50" thin "m"$])
        content((0.8,-0.4),[Khí nâng con trượt])
        vec((1.8,0.8),(2.25,0.8),label:[$bold(v)$],at:(2.03,0.97))
      } else if id == "thung-hang" {
        line((0,0),(5.9,0),stroke:1.3pt+luma(55%))
        rect((0.9,0),(2.7,1.3),stroke:0.8pt+blue,fill:blue.lighten(90%))
        content((1.8,0.65),[$M$])
        line((4.4,0),(4.4,1.8),(5.2,1.8),(5.9,0.7),(5.9,0),stroke:0.8pt)
        content((5.15,0.45),[Cabin])
        vec((3.6,2.15),(5.3,2.15),label:[$bold(v)_0$],at:(4.45,2.3))
        vec((2.4,-0.65),(0.7,-0.65),label:[$bold(a)_("xe")$],at:(1.55,-0.48),color:orange)
      } else if id == "luc-thung" {
        rect((-0.45,-0.35),(0.45,0.35),fill:luma(95%),stroke:0.7pt)
        vec((0,0),(0,1.3),label:[$bold(N)$])
        vec((0,0),(0,-1.3),label:[$bold(P)$],anchor:"north",color:orange)
        vec((0,0),(-1.8,0),label:[$bold(F)_("msn")$],at:(-1.4,0.2),color:orange)
        vec((1,0.6),(2.25,0.6),label:[$bold(v)$],at:(1.6,0.8))
      } else if id == "do-thi-phanh" {
        let stop = 20/3.43
        vec((0,0),(6.6,0),label:[$t$ (s)],anchor:"west",color:black)
        vec((0,0),(0,2.65),label:[$v$ (m/s)],color:black)
        line((0,2.2),(stop,0),stroke:1.2pt+blue)
        content((-0.15,2.2),[20],anchor:"east")
        content((stop,-0.23),[5,83])
        content((-0.15,-0.15),[O])
        content((2.2,0.55),[$s_("min") approx "58,31" thin "m"$])
      } else { panic("Chưa có hình Bài 9: " + id) }
    })
  }
}

// Hình CeTZ Bài 8. Chỉ các hình được gọi trong sol mới hiện ở bản lời giải.
#import "@preview/cetz:0.3.3": canvas, draw
#let blue = rgb("1976d2")
#let orange = rgb("b45309")
#let dash = (paint: luma(55%), thickness: 0.6pt, dash: "dashed")
#let arrow(a, b, label: none, at: none, anchor: "south", color: blue) = {
  draw.line(a, b, stroke: 1.1pt + color, mark: (end: ">"))
  if label != none { draw.content(if at == none { b } else { at }, label, anchor: anchor) }
}
#let arc-at(o, r, a, b, label: none, at: none) = {
  draw.line(..range(31).map(i => {
    let angle = a + (b - a)*i/30
    (o.at(0) + r*calc.cos(angle), o.at(1) + r*calc.sin(angle))
  }), stroke: 0.6pt)
  if label != none { draw.content(at, label) }
}
#let pin(p, name, offset: (0, -0.22)) = {
  draw.circle(p, radius: 0.045, fill: black, stroke: none)
  draw.content((p.at(0) + offset.at(0), p.at(1) + offset.at(1)), name)
}
#let hanging(angle: 20deg, angle-label: [$theta$], dimensions: false, vertical-angle: false) = {
  let h = 2.5*calc.tan(angle)
  draw.line((-2.7, h), (2.7, h), stroke: dash)
  draw.line((-2.5, h), (0, 0), (2.5, h), stroke: 1.1pt + blue)
  pin((-2.5,h), [A], offset: (-0.2,0.12))
  pin((2.5,h), [B], offset: (0.2,0.12))
  pin((0,0), [O], offset: (-0.18,-0.12))
  draw.line((0,0), (0,-0.32))
  draw.rect((-0.38,-0.32), (0.38,-0.86), fill: luma(94%), stroke: 0.7pt)
  draw.content((0,-0.59), [$m$])
  if dimensions {
    draw.line((-2.5,h+0.38),(2.5,h+0.38), mark: (start: "<", end: ">"), stroke: 0.5pt)
    draw.content((0,h+0.56), [6,0 m], anchor: "south")
    draw.line((0,0.08),(0,h), stroke: dash)
    draw.content((0.12,h/2), [0,8 m], anchor: "west")
  } else if vertical-angle {
    draw.line((0,0),(0,h+0.3), stroke: dash)
    arc-at((0,0),0.7,angle,90deg,label: angle-label,at: (0.72,0.79))
    arc-at((0,0),0.7,90deg,180deg - angle,label: angle-label,at: (-0.72,0.79))
  } else {
    draw.line((-1.7,0),(1.7,0),stroke: dash)
    arc-at((0,0),1.2,0deg,angle,label: angle-label,at: (1.58,0.22))
  }
}
#let bracket(angle: 30deg, label: [$30 degree$], dimensions: false, beam: false) = {
  let w = if dimensions { 2.1 } else { 3.6 }
  let h = w*calc.tan(angle)
  draw.line((0,-0.65),(0,h+0.3),stroke: 2pt + luma(55%))
  draw.line((0,0),(w,0),stroke: 2pt + blue)
  draw.line((0,h),(w,0),stroke: 0.9pt + orange)
  pin((0,0),[A],offset: (-0.2,-0.2))
  pin((0,h),[C],offset: (-0.22,0.12))
  pin((w,0),[B],offset: (0.18,0.08))
  if not beam {
    draw.line((w,0),(w,-0.35))
    draw.rect((w - 0.4,-0.35),(w+0.4,-0.85),fill:luma(94%),stroke:0.7pt)
    draw.content((w,-0.6),[$m$])
  } else {
    arrow((w/2,0),(w/2,-1.1),label:[$bold(P)$],at:(w/2+0.18,-0.8),anchor:"west",color:orange)
    draw.line((0,-1.35),(w,-1.35),mark:(start:"<",end:">"),stroke:0.5pt)
    draw.content((w/2,-1.58),[$L$])
  }
  if dimensions {
    draw.content((w/2,-0.25),[1,5 m])
    draw.content((-0.3,h/2),[2,0 m],anchor:"east")
  } else {
    arc-at((w,0),0.85,180deg - angle,180deg,label:label,at:(w - 1.15,0.35))
  }
}
#let bai-08-hinh(id) = {
  set text(font: "Times New Roman", size: 10pt)
  canvas({
    import draw: *
    if id == "mat-doc" {
      let slope-angle = 25deg
      let p = (2.9,2.9*calc.tan(slope-angle))
      line((0,0),(5.3,0),(5.3,5.3*calc.tan(slope-angle)),close:true,fill:luma(97%),stroke:0.7pt)
      // Chất điểm và hai thành phần trọng lực có chung điểm đặt.
      circle(p,radius:0.08,fill:black)
      let length = 1.9
      let px = (-length*calc.sin(slope-angle)*calc.cos(slope-angle),-length*calc.sin(slope-angle)*calc.sin(slope-angle))
      let py = (length*calc.cos(slope-angle)*calc.sin(slope-angle),-length*calc.cos(slope-angle)*calc.cos(slope-angle))
      arrow(p,(p.at(0)+px.at(0),p.at(1)+px.at(1)),label:[$bold(P)_x$],at:(1.9,1.12))
      arrow(p,(p.at(0)+py.at(0),p.at(1)+py.at(1)),label:[$bold(P)_y$],anchor:"west")
      arrow(p,(p.at(0),p.at(1) - length),label:[$bold(P)$],anchor:"north",color:orange)
      line((p.at(0)+px.at(0),p.at(1)+px.at(1)),(p.at(0),p.at(1) - length),(p.at(0)+py.at(0),p.at(1)+py.at(1)),stroke:dash)
      arc-at((0,0),1.1,0deg,slope-angle,label:[$alpha$],at:(1.38,0.27))
      content((3.05,1.55),[Vật],anchor:"south")
    } else if id == "hai-day" {
      hanging(angle:30deg,angle-label:[$theta$],vertical-angle:true)
    } else if id == "den-vong" {
      hanging(angle:calc.atan(0.8/3),dimensions:true)
    } else if id in ("day-goc","vong","day-15") {
      hanging(angle:if id == "day-15" {15deg} else {20deg},
        angle-label:if id == "vong" {[$20 degree$]} else if id == "day-15" {[$15 degree$]} else {[$theta$]})
    } else if id == "ba-luc" {
      arrow((0,0),(2,0),label:[$bold(F)_1$],at:(1.4,0.14))
      arrow((0,0),(0,2),label:[$bold(F)_2$],anchor:"south")
      arrow((0,0),(-2,-2),label:[$bold(F)_3$],at:(-1.5,-1.1),anchor:"east",color:orange)
      content((2.25,0),[Đông],anchor:"west")
      content((0.2,1.6),[Bắc],anchor:"west")
      pin((0,0),[O],offset:(0.15,-0.23))
    } else if id == "cabin-doc" {
      let p = (2.8,1.617)
      line((0,0),(5.4,3.118),stroke:1pt+luma(55%))
      line((0,0),(2,0),stroke:dash)
      arc-at((0,0),1,0deg,30deg,label:[$30 degree$],at:(1.43,0.37))
      circle(p,radius:0.075,fill:black)
      arrow(p,(4.36,2.517),label:[$bold(F)_k$],anchor:"south")
      arrow(p,(1.76,1.017),label:[$bold(F)_c$],at:(1.55,1.2))
      arrow(p,(2.8,-0.25),label:[$bold(P)$],anchor:"north",color:orange)
      arrow(p,(2.15,2.743),label:[$bold(N)$],anchor:"south")
      content((4.5,1.35),[Đi lên dọc tuyến])
    } else if id in ("song-song-cung","song-song-nguoc") {
      let opposite = id == "song-song-nguoc"
      line((0,0),(4.2,0),stroke:1.2pt+luma(55%))
      pin((0,0),[A],offset:(-0.2,0.1))
      pin((4.2,0),[B],offset:(0.2,0.1))
      arrow((0,0),(0,if opposite {1} else {-1}),label:[$bold(F)_1$],at:(0.15,if opposite {0.7} else {-0.65}),anchor:"west")
      arrow((4.2,0),(4.2,-2),label:[$bold(F)_2$],at:(4.35,-1.2),anchor:"west",color:orange)
      line((0,0.42),(4.2,0.42),stroke:dash)
      content((2.1,0.65),if opposite {[20 cm]} else {[60 cm]})
    } else if id in ("xa-lan","keo-toi-uu") {
      let lower-angle = if id == "xa-lan" {30deg} else {40deg}
      line((-1.4,2.25),(5,2.25),stroke:0.5pt+luma(60%))
      line((-1.4,-2.5),(5,-2.5),stroke:0.5pt+luma(60%))
      rect((-0.8,-0.32),(0.2,0.32),fill:luma(94%),stroke:0.7pt)
      line((0,0),(4.7,0),stroke:dash,mark:(end:">"))
      content((4.85,0),[$bold(v)$],anchor:"west")
      arrow((0,0),(3.4,3.4*calc.tan(30deg)),label:[$bold(F)_1$],anchor:"south")
      arrow((0,0),(2.7,-2.7*calc.tan(lower-angle)),label:[$bold(F)_2$],anchor:"north")
      arrow((0,0),(-1.55,0),label:[$bold(F)_c$],at:(-1.35,0.2),color:orange)
      arc-at((0,0),1.15,0deg,30deg,label:if id == "xa-lan" {[$30 degree$]} else {[$alpha_1$]},at:(1.65,0.43))
      arc-at((0,0),1.15,-lower-angle,0deg,label:if id == "xa-lan" {[$30 degree$]} else {[$alpha_2$]},at:(1.65,-0.47))
    } else if id in ("phan-tich","vuong-goc") {
      arrow((0,0),(3.8,0),label:[$x$],anchor:"west",color:black)
      arrow((0,0),(0,2.6),label:[$y$],color:black)
      if id == "phan-tich" {
        arrow((0,0),(3.2,1.848),label:[$bold(F)$],anchor:"south")
        line((3.2,0),(3.2,1.848),(0,1.848),stroke:dash)
        arc-at((0,0),1,0deg,30deg,label:[$alpha$],at:(1.35,0.32))
      } else {
        arrow((0,0),(1.5,0),label:[$bold(F)_1 = 6 thin "N"$],at:(1,-0.2),anchor:"north")
        arrow((0,0),(0,2),label:[$bold(F)_2 = 8 thin "N"$],at:(-0.2,1.1),anchor:"east")
      }
      content((-0.16,-0.18),[O])
    } else if id == "gia-30" {
      bracket()
    } else if id == "gia-45" {
      bracket(angle:45deg,label:[$45 degree$])
    } else if id == "gia-kich-thuoc" {
      bracket(angle:calc.atan(4/3),dimensions:true)
    } else if id == "dam-cau" {
      bracket(beam:true,label:[$alpha$])
    } else if id == "luc-tai-b" {
      pin((0,0),[B],offset:(-0.18,-0.15))
      arrow((0,0),(-1.2,1.6),label:[$bold(T)$],anchor:"south")
      arrow((0,0),(1.6,0),label:[$bold(N)$],anchor:"south")
      arrow((0,0),(0,-1.6),label:[$bold(F)_("biển")$],anchor:"north",color:orange)
    } else if id == "hai-day-lech" {
      line((-3,1.732),(0,0),(2.2,2.2),stroke:1pt+blue)
      line((-2,0),(2,0),stroke:dash)
      pin((-3,1.732),[A],offset:(-0.15,0.2))
      pin((2.2,2.2),[B],offset:(0.15,0.2))
      pin((0,0),[C],offset:(0,-0.3))
      arrow((0,0),(-2.08,1.2),label:[$bold(T)_1$],anchor:"south")
      arrow((0,0),(1.5,1.5),label:[$bold(T)_2$],anchor:"south")
      arc-at((0,0),0.9,150deg,180deg,label:[$alpha$],at:(-1.3,0.3))
      arc-at((0,0),0.9,0deg,45deg,label:[$beta$],at:(1.25,0.4))
    } else if id == "thi-nghiem" {
      // Đĩa thẳng đứng; vòng O tự do, ba dây nằm trong mặt đĩa.
      circle((0,0),radius:1.65,stroke:0.6pt+luma(60%),fill:luma(98%))
      for a in range(0,360,step:15) {
        line((1.53*calc.cos(a*1deg),1.53*calc.sin(a*1deg)),(1.65*calc.cos(a*1deg),1.65*calc.sin(a*1deg)),stroke:0.5pt+luma(60%))
      }
      circle((0,0),radius:0.09,stroke:0.9pt)
      content((0.2,0),[O],anchor:"west")
      for (x, name, meter) in ((-1.9,[A],[$L_1$]),(1.9,[B],[$L_2$])) {
        circle((x,1.35),radius:0.13,stroke:0.8pt,fill:white)
        line((0,0),(x,1.48),(x+if x < 0 {-0.13} else {0.13},1.35),(x+if x < 0 {-0.13} else {0.13},0.75),stroke:0.8pt+blue)
        let sx = x+if x < 0 {-0.13} else {0.13}
        rect((sx - 0.17,-0.15),(sx+0.17,0.75),stroke:0.7pt,fill:white)
        line(..range(9).map(i=>(sx+if calc.rem(i,2)==0 {-0.07} else {0.07},0.62 - i*0.07)),stroke:0.6pt)
        line((sx,-0.15),(sx,-0.5),stroke:0.7pt)
        line((sx - 0.25,-0.5),(sx+0.25,-0.5),stroke:1.5pt)
        content((sx+if x < 0 {-0.3} else {0.3},0.3),meter,anchor:if x < 0 {"east"} else {"west"})
        content((x,1.72),name)
      }
      line((0,-0.09),(0,-1.85),stroke:0.8pt+orange)
      rect((-0.35,-2.4),(0.35,-1.85),stroke:0.8pt,fill:luma(92%))
      content((0,-2.12),[$M$])
    } else if id == "cabin-gio" {
      // Mặt cắt Oxz: vết của Oyz là đường thẳng đứng nét đứt.
      line((-1.2,2.7),(1.6,2.7),stroke:2pt+luma(55%))
      line((0,2.7),(0,-0.1),stroke:dash)
      line((0,2.7),(0.55,0),stroke:1pt+blue)
      circle((0,2.7),radius:0.06,fill:black)
      rect((0.1,-0.65),(1,-0.05),fill:luma(95%),stroke:0.8pt)
      content((0.55,-0.35),[Cabin])
      arrow((0.55,0),(2.1,0),label:[$bold(F)_g$],anchor:"south",color:orange)
      arrow((0.55,0),(0.55,-1.5),label:[$bold(P)$],at:(0.75,-1.2),anchor:"west",color:orange)
      arrow((0.55,0),(0.23,1.57),label:[$bold(T)$],at:(0.48,1.15),anchor:"west")
      arc-at((0,2.7),1.1,-90deg,-78.465deg,label:[$phi$],at:(0.18,1.28))
      content((-0.15,1.3),[Phương đứng],anchor:"east")
      content((0.45,-1.85),[Mặt cắt Oxz; gió theo chiều +Ox])
    } else if id == "do-thi-hop-luc" {
      arrow((0,0),(6.4,0),label:[$alpha$ (độ)],anchor:"west",color:black)
      arrow((0,0),(0,3.4),label:[$F$ (N)],color:black)
      for a in (0,90,180) { content((a/30,-0.22),[#a]) }
      for f in (7,13,17) { content((-0.18,f/6),[#f],anchor:"east") }
      line(..range(181).map(a=>(a/30,calc.sqrt(169+120*calc.cos(a*1deg))/6)),stroke:1.2pt+blue)
      for (a,f) in ((0,17),(90,13),(180,7)) {
        line((a/30,0),(a/30,f/6),(0,f/6),stroke:dash)
        circle((a/30,f/6),radius:0.045,fill:blue,stroke:none)
      }
    } else { panic("Chưa có hình Bài 8: " + id) }
  })
}

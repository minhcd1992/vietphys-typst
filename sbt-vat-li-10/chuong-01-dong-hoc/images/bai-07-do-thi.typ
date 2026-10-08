// CeTZ trực tiếp: bai-07-hinh("mã"). Các hình lời giải chỉ gọi trong sol.
#import "@preview/cetz:0.3.3": canvas, draw
#let blue = rgb("1976d2")
#let orange = rgb("b45309")
#let gray-dash = (paint: luma(55%), thickness: 0.6pt, dash: "dashed")
#let sample(a, b, f) = range(101).map(i => {
  let t = a + (b - a)*i/100
  (t, f(t))
})
#let plot(series, xmax: 3, ymin: 0, ymax: 3, w: 6.5, h: 2.8,
  xlabel: [$x$], ylabel: [$y$], xticks: (), yticks: (), labels: (), guides: (),
  axes: true, extra: none,
) = {
  set text(font: "Times New Roman", size: 10pt)
  canvas({
    import draw: *
    let p(x, y) = (w*x/xmax, h*(y - ymin)/(ymax - ymin))
    for (x, label) in xticks {
      line(p(x, ymin), p(x, ymax), stroke: 0.3pt + luma(88%))
      content((p(x, 0).at(0), p(x, 0).at(1)-0.16), label, anchor: "north")
    }
    for (y, label) in yticks { content((-0.14, p(0, y).at(1)), label, anchor: "east") }
    for pts in guides { line(..pts.map(pt => p(..pt)), stroke: gray-dash) }
    if axes {
      line(p(0, 0), (w+0.2, p(0, 0).at(1)), stroke: 0.65pt, mark: (end: ">"))
      line(p(0, ymin), (0, h+0.2), stroke: 0.65pt, mark: (end: ">"))
      content((-0.1, p(0, 0).at(1)-0.14), [O], anchor: "north-east")
      content((w+0.2, p(0, 0).at(1)-0.4), xlabel, anchor: "north-east")
      content((0, h+0.27), ylabel, anchor: "south-west")
    }
    for item in series {
      line(..item.points.map(pt => p(..pt)), stroke: item.at("stroke", default: 1.2pt+blue))
    }
    for (x, y, label) in labels { content(p(x, y), label) }
    if extra != none { extra(p) }
  })
}

#let bai-07-hinh(id) = {
  if id == "mcq-04" {
    let mini(xs, ys, lx, ly) = plot(((points: xs), (points: ys, stroke: 1.1pt+orange)),
      xmax: 3.2, ymin: -1.4, ymax: 1.4, w: 3.5, h: 1.7,
      xlabel: [$t$], ylabel: [$a$], labels: ((2.6, lx, text(fill: blue)[$a_x$]), (2.6, ly, text(fill: orange)[$a_y$])))
    grid(columns: (auto, auto), column-gutter: 20pt, row-gutter: 10pt,
      align(center)[*A* #linebreak() #mini(((0,0),(3,0)), ((0,-1),(3,-1)), 0.35, -0.65)],
      align(center)[*B* #linebreak() #mini(((0,1),(3,1)), ((0,0.35),(3,0.35)), 1.3, 0.65)],
      align(center)[*C* #linebreak() #mini(((0,0),(3,1)), ((0,0.8),(3,-1)), 1.2, -0.4)],
      align(center)[*D* #linebreak() #mini(((0,1),(3,1)), ((0,0),(3,0)), 1.3, 0.35)],
    )
  } else if id == "mcq-12" {
    let mini(pts) = plot(((points: pts),), xmax: 3.2, ymin: -1.2, ymax: 1.5,
      w: 3.5, h: 1.8, xlabel: [$t$], ylabel: [$v_y$])
    grid(columns: (auto, auto), column-gutter: 20pt, row-gutter: 10pt,
      align(center)[*A* #linebreak() #mini(((0,1),(3,-1)))],
      align(center)[*B* #linebreak() #mini(sample(0, 3, t => 1-2*t*t/9))],
      align(center)[*C* #linebreak() #mini(((0,0.7),(3,0.7)))],
      align(center)[*D* #linebreak() #mini(((0,0),(3,1.2)))],
    )
  } else if id == "nem-ngang" {
    set text(font: "Times New Roman", size: 10pt)
    canvas({
      import draw: *
      line((0,0), (6.3,0), stroke: 0.65pt, mark: (end: ">"))
      line((0,0), (0,-3.5), stroke: 0.65pt, mark: (end: ">"))
      content((-0.2,0.15), [O])
      content((6.5,0), [$x$])
      content((-0.2,-3.5), [$y$])
      line(..sample(0, 5.6, x => -3*x*x/(5.6*5.6)), stroke: 1.2pt+blue)
      line((0,0), (1.4,0), stroke: 1.3pt+blue, mark: (end: ">"))
      content((1.1,0.45), [$v_0$])
      line((-0.5,-3), (6.3,-3), stroke: 0.8pt+luma(45%))
      line((-0.65,0), (-0.65,-3), stroke: 0.6pt, mark: (start: "<", end: ">"))
      content((-1.2,-1.5), [$h$])
      content((4.8,-3.4), [Mặt đất])
      content((2.5,-4.0), text(size: 9pt, style: "italic")[Sơ đồ không theo tỉ lệ])
    })
  } else if id == "doc-xuong" {
    let slope-angle = 30deg
    let X = 2*100*calc.tan(slope-angle)/9.8
    plot(((points: sample(0, X, x => -9.8*x*x/200)),
      (points: ((0,0),(14,-14*calc.tan(slope-angle))), stroke: 1pt+orange)),
      xmax: 15, ymin: -9, ymax: 1, w: 7.5, h: 5, axes: false,
      guides: (((0,0),(8,0)),),
      labels: ((-0.4,0.5,[O]), (X+0.6,-X*calc.tan(slope-angle),[M]), (9,-6.1,[$R$]), (3.4,-0.7,[$beta$])),
      extra: p => {
        draw.line(p(0,0),p(3,0),stroke: 1pt+blue,mark:(end:">"))
        draw.content(p(1.5,0.65),[$v_0$])
        draw.line(..range(31).map(i => p(2*calc.cos(-slope-angle*i/30),2*calc.sin(-slope-angle*i/30))), stroke: 0.65pt)
      })
  } else if id == "bong-ro" {
    let vx2 = (198.45/3.45)/2
    plot(((points: sample(0, 4.5, x => 2 + x - 4.9*x*x/vx2)),),
      xmax: 5.3, ymax: 4.1, w: 6.36, h: 4.92, axes: false,
      guides: (((0,0),(0,2)), ((4.5,0),(4.5,3.05))),
      labels: ((-0.25,2.05,[A]), (4.9,3.3,[Rổ]), (-0.6,1, [2,00 m]), (5.15,1.5,[3,05 m]), (2.25,-0.4,[4,50 m])),
      extra: p => {
        draw.line(p(-0.2,0),p(5.1,0),stroke:0.7pt)
        draw.line(p(4.25,3.05),p(4.75,3.05),stroke:1.5pt+orange)
        draw.line(p(0,2),p(0.8,2.8),stroke:0.9pt+blue,mark:(end:">"))
        draw.line(p(0,2),p(1.2,2),stroke:gray-dash)
        draw.content(p(1.1,2.45),[$45 degree$])
        draw.line(p(0,-0.18),p(4.5,-0.18),stroke:0.6pt,mark:(start:"<",end:">"))
      })
  } else if id == "luc-can" {
    // Minh họa nghiệm chính xác của lực cản tuyến tính: đơn vị chuẩn hóa g=m=k=v0=1.
    let u = calc.sqrt(0.5)
    let xx(t) = u*(1-calc.exp(-t))
    let yy(t) = (u+1)*(1-calc.exp(-t))-t
    let lo = 0.01
    let hi = 2*u
    for _ in range(60) {
      let mid = (lo+hi)/2
      if yy(mid) > 0 { lo = mid } else { hi = mid }
    }
    let T = (lo+hi)/2
    let pts = range(101).map(i => { let t = T*i/100; (xx(t),yy(t)) })
    plot(((points: sample(0,1,x=>x - x*x)), (points: pts, stroke:1.2pt+orange)),
      xmax:1.1, ymax:0.36, w:8.2, h:2.7,
      guides: (((0.5,0),(0.5,0.29)),),
      labels: ((0.76,0.25,text(fill:blue)[I: không cản]), (0.28,0.08,text(fill:orange)[II: có cản])))
  } else if id == "nang-luong" {
    plot(((points:sample(0,1,t=>2.8*t*(1-t))),
      (points:sample(0,1,t=>1-2.8*t*(1-t)),stroke:1.2pt+orange)),
      xmax:1.1,ymax:1.2,xlabel:[$t$],ylabel:[Năng lượng],
      xticks: ((0.5,[$T/2$]),(1,[$T$])), yticks:((1,[$E$]),),
      labels:((0.5,0.8,text(fill:blue)[$E_t$]),(0.5,0.18,text(fill:orange)[$E_đ$])))
  } else if id == "ban-doc" {
    let X = (-1+calc.sqrt(1+4*0.784*0.9))/(2*0.784)
    plot(((points:sample(0,X,x=>0.9-0.784*x*x)),
      (points:((0,0),(0.85,0.85)),stroke:1pt+orange)),
      xmax:1.15,ymax:1.05,w:5.75,h:5.25,axes:false,
      guides: (((0,0),(0,0.9)),((0,0),(0.55,0))),
      labels: ((-0.04,-0.07,[O]),(-0.05,0.98,[A]),(X+0.06,X+0.05,[M]),(-0.2,0.45,[0,900 m]),(0.38,0.12,[$45 degree$])),
      extra:p=>{
        draw.line(p(0,0.9),p(0.33,0.9),stroke:1pt+blue,mark:(end:">"))
        draw.content(p(0.32,0.98),[$v_0$])
        draw.line(..range(31).map(i=>p(0.25*calc.cos(45deg*i/30),0.25*calc.sin(45deg*i/30))),stroke:0.65pt)
      })
  } else if id == "tuong" {
    let X = 24*(18+calc.sqrt(824))/10
    plot(((points:sample(0,X,x=>25+0.75*x - 5*x*x/576)),),
      xmax:120,ymax:48,w:10,h:4,axes:false,
      guides:(((0,0),(0,25)),((0,25),(25,25))),
      labels: ((-5,25,[O]),(-8,12,[25 m]),(89,8,[15 m]),(40,-6,[80 m])),
      extra:p=>{
        draw.line(p(-4,0),p(118,0),stroke:0.75pt)
        draw.rect(p(78,0),p(82,15),fill:orange.lighten(80%),stroke:0.7pt+orange)
        draw.line(p(0,-2),p(80,-2),stroke:0.6pt,mark:(start:"<",end:">"))
        draw.line(p(0,25),p(16,37),stroke:0.9pt+blue,mark:(end:">"))
        draw.content(p(13,40),[$v_0$])
        draw.content(p(19,29),[$alpha$])
      })
  } else if id == "hai-goc" {
    let disc = calc.sqrt(28*28-4*9.604*11.604)
    let u1 = (28-disc)/(2*9.604)
    let u2 = (28+disc)/(2*9.604)
    let curve(u) = sample(0,28,x=>x*u - 9.8*x*x*(1+u*u)/800)
    plot(((points:curve(u1)),(points:curve(u2),stroke:1.2pt+orange)),
      xmax:30,ymax:20,w:9,h:4,xlabel:[$x$ (m)],ylabel:[$y$ (m)],
      xticks:((28,[28]),),yticks:((2,[2]),),guides:(((0,2),(28,2)),),
      labels:((8,5,text(fill:blue)[$alpha_1$]),(12,19,text(fill:orange)[$alpha_2$])))
  } else if id == "cuu-ho" {
    // Hình chiếu bằng; vị trí thả ở cao hơn mặt nước 10 m, không thể hiện trục đứng.
    set text(font:"Times New Roman",size:10pt)
    canvas({
      import draw:*
      line((0,0),(6.5,0),stroke:0.65pt,mark:(end:">"))
      line((0,0),(0,3.3),stroke:0.65pt,mark:(end:">"))
      content((6.7,0),[$x$]); content((0,3.55),[$z$])
      content((-0.2,-0.2),[O])
      circle((5.4,0),radius:0.07,fill:blue,stroke:none)
      circle((5.4,2.5),radius:0.07,fill:orange,stroke:none)
      line((5.4,0),(5.4,2.5),stroke:1pt+orange,mark:(end:">"))
      line((0,0),(5.4,2.5),stroke:1pt+blue,mark:(end:">"))
      content((5.4,-0.4),[24 m])
      content((6.45,1.3),[$v_n t$])
      content((5.55,2.85),[Điểm nhận])
      content((2.2,0.4),[$phi$])
      content((2.4,2),[Hình chiếu bằng])
    })
  } else if id == "doc-len" {
    let slope-angle=15deg
    let launch-angle=52.5deg
    // Chuẩn hóa v0²/g = 1, giữ cùng tỉ lệ hai trục để vẽ đúng góc hình học.
    let X=2*calc.cos(launch-angle)*calc.sin(launch-angle - slope-angle)/calc.cos(slope-angle)
    plot(((points:sample(0,X,x=>x*calc.tan(launch-angle)-x*x/(2*calc.cos(launch-angle)*calc.cos(launch-angle)))),
      (points:((0,0),(1,calc.tan(slope-angle))),stroke:1pt+orange)),
      xmax:1.08,ymax:0.55,w:8.64,h:4.4,axes:false,
      guides:(((0,0),(0.5,0)),),
      labels:((-0.03,-0.04,[O]),(X+0.04,X*calc.tan(slope-angle),[M]),(0.53,0.08,[$R$]),(0.36,0.045,[$beta$]),(0.19,0.14,[$alpha$])),
      extra:p=>{
        draw.line(p(0,0),p(0.24*calc.cos(launch-angle),0.24*calc.sin(launch-angle)),stroke:1pt+blue,mark:(end:">"))
        draw.content(p(0.1,0.26),[$v_0$])
        draw.line(..range(31).map(i=>p(0.3*calc.cos(slope-angle*i/30),0.3*calc.sin(slope-angle*i/30))),stroke:0.6pt)
        draw.line(..range(31).map(i=>p(0.13*calc.cos(launch-angle*i/30),0.13*calc.sin(launch-angle*i/30))),stroke:0.6pt)
      })
  } else { panic("Không có hình Bài 7: "+id) }
}

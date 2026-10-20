#import "@preview/cetz:0.5.2": canvas, draw
#let mui = (end: ">", fill: black)
#let nut(p, label, anchor: "north") = {
  draw.circle(p, radius: 0.045, fill: black)
  if label != none { draw.content((p.at(0), p.at(1)-0.14), label, anchor: anchor) }
}
#let r(a, b, label, kind: "r", pos: true) = {
  let dx=b.at(0)-a.at(0); let dy=b.at(1)-a.at(1)
  let len=calc.sqrt(dx*dx+dy*dy)
  let u=(dx/len,dy/len); let v=(-dy/len,dx/len)
  let p(t,s:0)=((a.at(0)+b.at(0))/2+u.at(0)*t+v.at(0)*s,(a.at(1)+b.at(1))/2+u.at(1)*t+v.at(1)*s)
  draw.line(a,p(-0.25)); draw.line(p(0.25),b)
  if kind=="r" {
    draw.line(p(-0.25,s:-0.10),p(0.25,s:-0.10),p(0.25,s:0.10),p(-0.25,s:0.10),close:true,fill:white)
  } else if kind=="c" or kind=="s" {
    draw.line(p(-0.07,s:-0.22),p(-0.07,s:0.22))
    let h=if kind=="s" {0.12} else {0.22}
    draw.line(p(0.07,s:-h),p(0.07,s:h))
    draw.line(p(-0.25),p(-0.07)); draw.line(p(0.07),p(0.25))
  } else if kind=="k" {
    draw.line(p(-0.25),p(0.20,s:0.19))
  } else {
    draw.circle(p(0),radius:0.23,fill:white)
    draw.content(p(0),if kind=="lamp" {[$times$]} else {label})
  }
  if kind in ("r","c","s","k","lamp") {
    draw.content(p(0,s:if pos {0.38} else {-0.38}),label)
  }
}
#let do-thi-vo-cau() = canvas({
  import draw: *
  let f(x)=if x < 0.1 {0} else if x <= 0.2 {1e-6/(3*8.854e-12)*(x - 0.1*0.1*0.1/(x*x))} else {1e-6*(0.2*0.2*0.2-0.1*0.1*0.1)/(3*8.854e-12*x*x)}
  line((0,0),(7,0),mark:mui); line((0,0),(0,3.8),mark:mui)
  line(..range(301).map(i=>{let x=i/1000; (x*21,f(x)/2000)}),stroke:1.3pt+rgb("267587"))
  for x in (0.1,0.2,0.3) {line((x*21,0),(x*21,-0.08));content((x*21,-0.18),str(calc.round(x*100)),anchor:"north")}
  for y in (2,4,6) {line((-0.08,y/2),(0.08,y/2));content((-0.15,y/2),str(y),anchor:"east")}
  content((7,-0.18),[$r$ (cm)],anchor:"north"); content((0,4.0),[$E$ (kV/m)],anchor:"south")
})
#let luc-cau() = canvas({
  import draw: *
  line((-1.3,2.7),(0,0)); circle((0,0),radius:0.13,fill:luma(90%))
  line((0,0),(-0.75,1.55),mark:mui);content((-0.9,1.4),$arrow(T)$,anchor:"east")
  line((0,0),(0,-1.4),mark:mui);content((0.18,-1.25),$m arrow(g)$,anchor:"west")
  line((0,0),(1.7,0),mark:mui);content((1.5,0.2),$arrow(F)_e$,anchor:"south")
  content((-1.3,2.9),[Điểm treo]);
})
#let mach(n) = canvas({
  import draw: *
  if n==1 {
    line((0,0),(0,2));line((4,0),(4,2));r((0,2),(4,2),$R_1$);r((0,0),(2,0),$R_2$);r((2,0),(4,0),$R_3$)
    nut((0,1),$A$);nut((4,1),$B$)
  } else if n==2 {
    line((0,0),(0,2));r((0,2),(2,2),$R_1$);line((2,1),(2,3));line((6,0),(6,3));r((2,3),(4,3),$R_3$);r((4,3),(6,3),$R_5$);r((2,1),(6,1),$R_4$);r((0,0),(6,0),$R_2$);nut((0,1),$A$);nut((6,1),$B$)
  } else if n==3 {
    line((0,0),(0,3.5),(1,3.5));r((1,3.5),(5,3.5),$xi,r$,kind:"s");line((5,3.5),(6,3.5),(6,0))
    for (y,la,lb) in ((2,$R_1$,$R_3$),(0,$R_2$,$R_4$)) {r((0,y),(3,y),la);r((3,y),(6,y),lb)}
    r((3,0),(3,2),[A],kind:"meter");nut((3,2),$M$);nut((3,0),$N$);nut((0,1),$A$);nut((6,1),$B$)
  } else if n==4 {
    for (shift,kind) in ((0,"a"),(7,"b")) {
      let p(x,y)=(x+shift,y)
      line(p(0,0),p(5,0));line(p(0,1),p(0,3));r(p(0,3),p(5,3),$K_1$,kind:"k");line(p(5,3),p(5,2));r(p(5,2),p(5,0),$R$)
      content(p(-0.4,1),$U$);circle(p(0,0),radius:0.04,fill:black);circle(p(0,1),radius:0.04,fill:black)
      if kind=="a" {r(p(0,2),p(2.5,2),$r$);r(p(2.5,2),p(5,2),$r$);r(p(2.5,2),p(2.5,0.8),$r$);r(p(2.5,0.8),p(2.5,0),$K_2$,kind:"k")}
      else {r(p(0,2),p(5,2),$r$);r(p(1,2),p(1,0.9),$r$);r(p(4,2),p(4,0.9),$r$);line(p(0,2),p(1,2));line(p(4,2),p(5,2));line(p(1,0.9),p(4,0.9));r(p(2.5,0.9),p(2.5,0),$K_2$,kind:"k")}
      content(p(2.5,-0.6),[(#kind) Ampe kế nối tiếp đầu vào])
    }
  } else if n==5 {
    line((0,0),(0,2));line((6,0),(6,4));r((0,2),(0,4),$R_1$);r((0,4),(1.5,4),[A],kind:"meter");r((1.5,4),(3.8,4),$xi_1,r_1$,kind:"s");r((3.8,4),(6,4),$xi_2,r_2$,kind:"s")
    r((0,2),(6,2),[V],kind:"meter");r((0,1),(3,1),[Đ],kind:"lamp");r((3,1),(6,1),$R_2$);r((0,0),(3,0),$R_3$);r((3,0),(6,0),$R_4$);nut((0,2),$A$);nut((6,2),$B$);nut((3,1),$M$);nut((3,0),$N$)
  } else if n==6 {
    r((0,2),(2,2),$R_1$);r((2,2),(4,2),$R_2$);r((4,2),(6,2),$R_3$)
    line((0,2),(0,3.4));r((0,3.4),(4,3.4),[A],kind:"meter");line((4,3.4),(4,2))
    line((2,2),(2,1));r((2,1),(6,1),$R_4$);line((6,1),(6,2));line((0,2),(0,-0.3));line((6,2),(6,-0.3));r((0,-0.3),(6,-0.3),$E,r$,kind:"s")
    for (x,lab) in ((0,$A$),(2,$C$),(4,$D$),(6,$B$)) {nut((x,2),lab)}
  } else if n==7 {
    line((0,0),(0,3));line((6,0),(6,3));r((0,3),(3,3),$E_1,r_1$,kind:"s");r((3,3),(6,3),$E_2,r_2$,kind:"s");r((0,1.5),(3,1.5),$R_1$);r((3,1.5),(6,1.5),$R_2$,kind:"lamp");r((0,0),(6,0),$R_3$);nut((0,1.5),$A$);nut((6,1.5),$B$);nut((3,3),$M$);nut((3,1.5),$N$)
  } else if n==8 or n==9 {
    line((0,0),(0,3));line((6,0),(6,3));nut((0,1.5),$A$);nut((6,1.5),$B$)
    for (y,idx,reverse) in (if n==8 {((3,1,false),(1.5,2,true),(0,3,false))} else {((3,1,false),(0,2,true))}) {
      r(if reverse {(3,y)} else {(0,y)},if reverse {(0,y)} else {(3,y)},[$E_#idx,r_#idx$],kind:"s",pos:not reverse)
      r((3,y),(6,y),[$R_#idx$])
    }
    if n==9 {r((0,1.5),(6,1.5),$R$)}
  } else if n==10 {
    line((0,0),(0,3));line((6,0),(6,3));r((0,3),(6,3),$R$);r((0,1.5),(3,1.5),$C_1$,kind:"c");r((3,1.5),(6,1.5),$C_2$,kind:"c");r((0,0),(3,0),$xi_1,r_1$,kind:"s");r((3,0),(6,0),$xi_2,r_2$,kind:"s");r((3,0),(3,1.5),$K$,kind:"k");nut((0,1.5),$A$);nut((6,1.5),$B$)
  } else if n==11 {
    line((0,0),(0,3));line((6,0),(6,3));r((0,3),(3,3),$C_1$,kind:"c");r((3,3),(6,3),$C_2$,kind:"c");r((3,1.5),(3,3),$C_3$,kind:"c");r((0,1.5),(3,1.5),$R_1$);r((3,1.5),(6,1.5),$R_2$);r((0,0),(6,0),$xi,r$,kind:"s");nut((0,1.5),$A$);nut((6,1.5),$B$);nut((3,3),$N$);nut((3,1.5),$M$)
  }
})



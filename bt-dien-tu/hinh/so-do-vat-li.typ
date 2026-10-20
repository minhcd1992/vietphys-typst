// Sơ đồ vector dựng trực tiếp bằng Typst/CeTZ. Kích thước vẽ là minh họa.
#import "@preview/cetz:0.5.2": canvas, draw
#import "ve-hinh.typ": r, nut, mui
#let dut = (thickness: 0.6pt, dash: "dashed")
#let cham(p, lab, dau: none) = {
  draw.circle(p, radius: 0.14, fill: white)
  if dau != none { draw.content(p,dau) }
  draw.content((p.at(0),p.at(1)-0.35),lab)
}
#let ve(id) = canvas({
  import draw: *
  if id=="tam-giac" {
    line((0,0),(4,0),(2,3.464),close:true,stroke:dut)
    cham((0,0),[$2$ μC],dau:[$+$]);cham((4,0),[$-4$ μC],dau:[$-$]);cham((2,3.464),[$7$ μC],dau:[$+$])
    content((3.5,1.9),[$a=0.500$ m]);line((0,0),(5,0),mark:mui);line((0,0),(0,3),mark:mui)
    content((5.1,0),$x$);content((0,3.2),$y$)
  } else if id=="hai-ban" {
    line((0,0),(6,0),stroke:1.8pt);line((0,2),(6,2),stroke:1.8pt)
    for x in (1,2.5,4,5.5) {line((x,1.8),(x,0.2),mark:mui,stroke:0.6pt+gray)}
    content((6.4,1),$arrow(E)$)
    line((-1,1),(0.8,1),mark:mui);content((-0.6,1.35),$arrow(v)_0$)
    line(..range(61).map(i=>{let x=i/10; (x,1 + x*x/36)}),stroke:1.2pt+rgb("267587"))
    content((3,2.45),[$L=2.00$ cm]);content((3,-0.55),[$d=1.00$ cm; electron đi lên])
  } else if id=="thanh" {
    line((0,-0.3),(0,3.2),mark:mui);line((-0.3,0),(4.6,0),mark:mui)
    line((0,0),(0,2.5),stroke:3pt+rgb("267587"));content((-0.4,1.3),$Q$);content((-0.2,2.5),$a$,anchor:"east")
    cham((3.6,0),$-q$);content((4.7,0),$x$);content((0,3.4),$y$)
    line((0,1.6),(3.6,0),stroke:dut);content((0.2,1.6),$dif q$,anchor:"west")
  } else if id=="hai-cau" {
    line((-1.6,0),(0,3),(1.6,0));line((0,3),(0,-0.2),stroke:dut)
    cham((-1.6,0),$q_1$);cham((1.6,0),$q_2$)
    content((-1.1,1.6),$L$);content((1.1,1.6),$L$);content((-0.25,2),$theta$);content((0.25,2),$theta$)
  } else if id=="cau-hoc" {
    circle((0,0),radius:2,fill:rgb("eaf3f6"));circle((0.7,0.3),radius:0.9,fill:white)
    line((0,0),(0.7,0.3),mark:mui);content((0.25,0.35),$arrow(a)$)
    content((-0.2,-0.2),$O$);content((0.8,0.1),$O'$);content((-1,1),$rho$)
  } else if id=="vong" {
    circle((0,0),radius:1.5);circle((0,0),radius:0.035,fill:black)
    line((0,0),(1.2,0.9));content((0.45,0.6),$R$)
    line((0,0),(4,0),stroke:dut);nut((3.6,0),$P$);content((2.4,-0.3),$z$)
    content((0,-2),[Sơ đồ các khoảng cách: trục thực vuông góc mặt vòng])
  } else if id=="tu-lop" {
    rect((0,0),(4,0.7),fill:rgb("fff0c2"),stroke:none)
    line((0,0),(4,0),stroke:2pt);line((0,2.1),(4,2.1),stroke:2pt)
    content((2,0.35),$kappa$);content((2,1.4),[Không khí]);content((4.7,0.35),$d/3$);content((4.7,1.4),$2d/3$)
  } else if id=="tu-song-song" {
    rect((0,0),(2,1.6),fill:rgb("fff0c2"),stroke:none);rect((2,0),(4,1.6),fill:rgb("e4f1f7"),stroke:none)
    line((0,0),(4,0),stroke:2pt);line((0,1.6),(4,1.6),stroke:2pt)
    content((1,0.8),$kappa_1$);content((3,0.8),$kappa_2$);content((1,-0.4),$A/2$);content((3,-0.4),$A/2$);content((4.4,0.8),$d$)
  } else if id=="tu-cau" {
    circle((0,0),radius:2,fill:rgb("e4f1f7"));circle((0,0),radius:1.35,fill:rgb("fff0c2"));circle((0,0),radius:0.65,fill:luma(92%))
    line((0,0),(2,0),stroke:dut);content((0.45,-0.2),$a$);content((1.1,-0.2),$b$);content((1.8,-0.2),$c$)
    content((0,0.95),$kappa_1$);content((0,1.65),$kappa_2$)
  } else if id=="ba-day" {
    line((-0.5,0),(6.5,0))
    cham((0,0),$A$,dau:[$times$]);cham((3,0),$B$,dau:[$times$]);cham((6,0),$C$,dau:[$dot$])
    content((0,0.5),$I$);content((3,0.5),$I$);content((6,0.5),$2I$);content((1.5,-0.5),[5 cm]);content((4.5,-0.5),[5 cm])
  } else if id=="hai-day" {
    line((-1.5,0),(6.2,0));cham((0,0),$A$,dau:[$dot$]);cham((4,0),$B$,dau:[$times$]);content((0,0.55),$I_1$);content((4,0.55),$I_2$)
    for (x,lab) in ((-1,$M_1$),(1.6,$M_2$),(5.2,$M_3$)) {nut((x,0),lab)}
    content((2,-0.9),[$A B=10$ cm])
  } else if id=="day-gap" {
    line((4*calc.cos(56deg),4*calc.sin(56deg)),(0,0),(4.6,0))
    line((2*calc.cos(56deg),2*calc.sin(56deg)),(1.5*calc.cos(56deg),1.5*calc.sin(56deg)),mark:mui)
    line((2,0),(2.7,0),mark:mui);line((0,0),(4*calc.cos(28deg),4*calc.sin(28deg)),stroke:dut)
    nut((3*calc.cos(28deg),3*calc.sin(28deg)),$A$);content((1.4,0.85),$a$);content((0.8,0.3),[$56 degree$]);content((-0.2,-0.2),$O$)
  } else if id=="hinh-thang" {
    line((-2,0),(-1,1),(1,1),(2,0),close:true,stroke:1.1pt)
    line((-1,1),(0,2),(1,1),stroke:dut);nut((0,2),$A$)
    line((-0.4,1),(0.4,1),mark:mui);line((0.4,0),(-0.4,0),mark:mui)
    line((0,2),(2,2),stroke:dut);line((1.6,1),(1.6,2));content((1.85,1.5),$b$);content((0,0.7),$l$);content((0,-0.3),$2l$)
  } else if id=="khung-khuyet" {
    line((0,4),(0,0),(4,0),(4,2),(2,2),(2,4),close:true)
    line((2,4),(4,4),(4,2),stroke:dut);nut((4,4),$P$)
    line((0.3,3),(0.3,2),mark:mui);content((0.65,2.5),$I$)
    content((-0.3,2),$2a$);content((1,4.35),$a$);content((3,4.35),$a$);content((4.4,1),$a$)
  } else if id=="dai-tu" {
    line((0,-0.3),(0,3.3),stroke:dut);line((4,-0.3),(4,3.3),stroke:dut)
    line((0,2.5),(1,2.5),mark:mui);content((0.8,2.9),$arrow(v)_0$)
    content((2,1.5),[$times$ $arrow(B)$]);line((0,-0.5),(4,-0.5));content((2,-0.8),$d$)
  } else if id=="rl" {
    r((0,3),(0,0),$cal(E)$,kind:"s");r((0,3),(4,3),$S$,kind:"k");r((0,0),(4,0),$R$)
    line((4,0),(4,0.5));line((4,2.5),(4,3))
    line(..range(101).map(i=>{let t=i/100; (4+0.14*calc.sin(t*8*180deg),0.5+2*t)}));content((4.5,1.5),$L$)
  } else if id=="rl-ngat" {
    line((0,0),(0,3));line((4,0),(4,2));r((0,0),(4,0),$R_1$);r((0,1.5),(2,1.5),$R$)
    line((2,1.5),(2.3,1.5));line((3.7,1.5),(4,1.5))
    line(..range(101).map(i=>{let t=i/100; (2.3+1.4*t,1.5+0.14*calc.sin(t*8*180deg))}));content((3,1.9),$L$)
    line((0,3),(1.5,3));line((2.5,3),(4,3));content((2,3),$U$);r((4,2),(4,3),$K$,kind:"k");nut((0,1.5),$A$);nut((4,1.5),$B$)
  }
})

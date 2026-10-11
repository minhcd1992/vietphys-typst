// Xem hoặc xuất riêng một hình:
// typst compile bt-co-c1/images/xem-hinh.typ hinh.svg --input figure=1.11
#import "hinh-cetz.typ": ve-hinh
#set page(width: auto, height: auto, margin: 8pt)
#ve-hinh(sys.inputs.at("figure", default: "1.11"))

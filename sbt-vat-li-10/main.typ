// Biên dịch tại thư mục gốc repository:
// typst compile sbt-vat-li-10/main.typ sbt-vat-li-10/sbt-vat-li-10.pdf --root .
#import "cau-hinh.typ": *
#show: sbt-layout

#vp-book-outline(
  subtitle: [SÁCH BÀI TẬP VẬT LÍ 10],
  intro: [6 chương · 27 bài · 945 câu — Bản đang biên soạn],
  break-before: (3,),
)
#pagebreak(weak: true)

#include "chuong-01-dong-hoc/chuong.typ"
#include "chuong-02-dong-luc-hoc/chuong.typ"
#include "chuong-03-nang-luong-cong-cong-suat/chuong.typ"
#include "chuong-04-dong-luong/chuong.typ"
#include "chuong-05-chuyen-dong-tron/chuong.typ"
#include "chuong-06-bien-dang-ap-suat/chuong.typ"


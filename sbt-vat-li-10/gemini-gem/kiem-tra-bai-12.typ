// Kiểm tra tích hợp Bài 12; không include vào sách chính.
#import "../cau-hinh.typ": *
#show: sbt-layout
#let teacher = sys.inputs.at("teacher", default: "false") == "true"
#vp-show-ans.update(teacher)
#vp-show-sol.update(teacher)
#include "../chuong-02-dong-luc-hoc/bai-12.typ"
#context {
  let qs = vp-sol-store.final()
  assert.eq(qs.len(), 35)
  assert(qs.all(q => q.sol != none))
  assert.eq(qs.filter(q => q.type == "mcq").map(q => q.ans),
    ("B", "B", "D", "C", "B", "B", "A", "A", "B", "B", "B", "B", "A", "C", "A", "C", "B", "B", "B", "B"))
  assert.eq(qs.filter(q => q.type == "tf").map(q => q.ans-tf), (
    ("Đ", "Đ", "Đ", "S"), ("Đ", "Đ", "Đ", "S"), ("Đ", "Đ", "Đ", "S"),
    ("Đ", "Đ", "S", "S"), ("S", "Đ", "S", "S"),
  ))
  assert.eq(qs.filter(q => q.type == "short").map(q => q.ans), ("30,2", "1225", "1131", "2,2", "40"))
  assert.eq(qs.filter(q => q.type == "essay").len(), 5)
  assert(qs.all(q => q.shown_inline == teacher))
  assert.eq(vp-show-ans.final(), teacher)
  assert.eq(vp-show-sol.final(), teacher)
}

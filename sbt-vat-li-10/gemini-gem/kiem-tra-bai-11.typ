// Kiểm tra tích hợp Bài 11; không include vào sách chính.
#import "../cau-hinh.typ": *
#show: sbt-layout
#let teacher = sys.inputs.at("teacher", default: "false") == "true"
#vp-show-ans.update(teacher)
#vp-show-sol.update(teacher)
#include "../chuong-02-dong-luc-hoc/bai-11.typ"
#context {
  let qs = vp-sol-store.final()
  assert.eq(qs.len(), 35)
  assert(qs.all(q => q.sol != none))
  assert.eq(qs.filter(q => q.type == "mcq").map(q => q.ans),
    ("C", "B", "C", "B", "C", "B", "B", "C", "C", "B", "B", "B", "B", "C", "B", "C", "B", "C", "A", "C"))
  assert.eq(qs.filter(q => q.type == "tf").map(q => q.ans-tf), (
    ("Đ", "S", "Đ", "S"), ("S", "S", "Đ", "Đ"), ("Đ", "S", "Đ", "S"),
    ("Đ", "Đ", "Đ", "S"), ("Đ", "Đ", "Đ", "S"),
  ))
  assert.eq(qs.filter(q => q.type == "short").map(q => q.ans), ("36", "140", "35", "500", "4,9"))
  assert.eq(qs.filter(q => q.type == "essay").len(), 5)
  assert(qs.all(q => q.shown_inline == teacher))
  assert.eq(vp-show-ans.final(), teacher)
  assert.eq(vp-show-sol.final(), teacher)
}

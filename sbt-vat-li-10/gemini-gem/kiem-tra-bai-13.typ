// Kiểm tra riêng Bài 13; không include vào sách.
#import "../cau-hinh.typ": *
#show: sbt-layout
#let teacher = sys.inputs.at("teacher", default: "false") == "true"
#vp-show-ans.update(teacher)
#vp-show-sol.update(teacher)
#include "../chuong-02-dong-luc-hoc/bai-13.typ"
#context {
  let qs = vp-sol-store.final()
  assert.eq(qs.len(), 35)
  assert(qs.all(q => q.sol != none))
  assert.eq(qs.filter(q => q.type == "mcq").map(q => q.ans),
    ("C", "B", "A", "C", "B", "B", "C", "A", "B", "A", "B", "B", "B", "A", "B", "B", "B", "A", "B", "B"))
  assert.eq(qs.filter(q => q.type == "tf").map(q => q.ans-tf), (
    ("Đ", "Đ", "Đ", "S"), ("S", "S", "Đ", "Đ"), ("Đ", "Đ", "Đ", "Đ"),
    ("Đ", "S", "Đ", "Đ"), ("S", "Đ", "Đ", "Đ"),
  ))
  assert.eq(qs.filter(q => q.type == "short").map(q => q.ans), ("60", "74,8", "53,15", "58,8", "0,342"))
  assert.eq(qs.filter(q => q.type == "essay").len(), 5)
  assert(qs.all(q => q.shown_inline == teacher))
  assert.eq(vp-show-ans.final(), teacher)
  assert.eq(vp-show-sol.final(), teacher)
}

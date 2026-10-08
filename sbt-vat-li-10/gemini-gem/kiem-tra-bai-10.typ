// Kiểm tra tích hợp Bài 10; không include vào sách chính.
#import "../cau-hinh.typ": *
#show: sbt-layout
#let teacher = sys.inputs.at("teacher", default: "false") == "true"
#vp-show-ans.update(teacher)
#vp-show-sol.update(teacher)
#include "../chuong-02-dong-luc-hoc/bai-10.typ"
#context {
  let qs = vp-sol-store.final()
  assert.eq(qs.len(), 35)
  assert(qs.all(q => q.sol != none))
  assert.eq(qs.filter(q => q.type == "mcq").len(), 20)
  assert.eq(qs.filter(q => q.type == "tf").len(), 5)
  assert.eq(qs.filter(q => q.type == "tf").at(1).ans-tf, ("S", "S", "Đ", "S"))
  assert.eq(qs.filter(q => q.type == "short").map(q => q.ans), ("17684", "1,37", "20", "0,5", "500"))
  assert.eq(qs.filter(q => q.type == "essay").len(), 5)
  assert(qs.all(q => q.shown_inline == teacher))
  assert.eq(vp-show-ans.final(), teacher)
  assert.eq(vp-show-sol.final(), teacher)
}

// Wrapper độc lập, không include trong sách.
// Bản giáo viên: thêm --input teacher=true vào lệnh compile.
#import "../cau-hinh.typ": *
#show: sbt-layout
#let teacher = sys.inputs.at("teacher", default: "false") == "true"
#vp-show-ans.update(teacher)
#vp-show-sol.update(teacher)
#include "mau-bai.typ"
#context {
  let qs = vp-sol-store.final()
  assert.eq(qs.len(), 5)
  assert.eq(qs.map(q => q.type), ("mcq", "tf", "short", "short", "essay"))
  assert.eq(qs.at(0).ans, "B")
  assert.eq(qs.at(1).ans-tf, ("Đ", "S", "Đ", "S"))
  assert.eq(qs.at(2).ans, "508,7")
  assert(qs.all(q => q.sol != none))
  assert(qs.all(q => q.shown_inline == teacher))
  assert.eq(vp-show-ans.final(), teacher)
  assert.eq(vp-show-sol.final(), teacher)
}

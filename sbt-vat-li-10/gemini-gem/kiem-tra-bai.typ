// Wrapper chung: đường dẫn bài tính từ --root, truyền bằng --input lesson=/...
#import "../cau-hinh.typ": *
#show: sbt-layout
#let teacher = sys.inputs.at("teacher", default: "false") == "true"
#let expected = sys.inputs.at("counts", default: "20,5,5,5").split(",").map(int)
#assert.eq(expected.len(), 4)
#vp-show-ans.update(teacher)
#vp-show-sol.update(teacher)
#include sys.inputs.at("lesson")
#context {
  let qs = vp-sol-store.final()
  let types = ("mcq", "tf", "short", "essay")
  assert.eq(qs.len(), expected.sum(), message: "Sai tổng số câu")
  for (kind, count) in types.zip(expected) {
    let group = qs.filter(q => q.type == kind)
    assert.eq(group.len(), count, message: "Sai số câu " + kind)
    assert.eq(group.map(q => q.num), range(1, count + 1), message: "Sai đánh số phần " + kind)
  }
  assert(qs.all(q => q.sol != none and q.sol != []), message: "Có câu thiếu lời giải")
  assert(qs.filter(q => q.type == "mcq").all(q => ("A", "B", "C", "D").contains(q.ans)),
    message: "Khóa MCQ không hợp lệ")
  assert(qs.filter(q => q.type == "tf").all(q =>
    q.ans-tf.len() == 4 and q.ans-tf.all(x => ("Đ", "S").contains(x))),
    message: "Khóa đúng/sai không đủ bốn giá trị Đ/S")
  // short-fields không nằm trong store; xem tệp mẫu và bản có đáp án để kiểm tra.
  assert(qs.all(q => q.shown_inline == teacher))
  assert.eq(vp-show-ans.final(), teacher)
  assert.eq(vp-show-sol.final(), teacher)
}

// Kiểm tra trên kho lời giải thực của gói, kể cả ở chế độ ẩn lời giải.
#import "../../vietphys.typ": *
#include "../main.typ"
#context {
  let questions = vp-sol-store.final()
  let expected = (("1",22), ("2",22), ("3",16), ("4",10), ("2",11), ("3",22), ("4",10))
    .map(((prefix, count)) => range(1, count + 1).map(i => prefix + "." + str(i))).flatten()
  assert(questions.len() == 113, message: "Phải có đủ 113 bài trong vp-sol-store")
  assert(questions.map(q => q.display-num) == expected, message: "Sai số bài hiển thị")
  assert(questions.all(q => q.type == "essay" and q.sol != none), message: "Mỗi bài phải là tự luận có sol")
  let show-solutions = sys.inputs.at("loi-giai", default: "co") != "khong"
  assert(questions.all(q => q.shown_inline == show-solutions), message: "Sai trạng thái lời giải")
  [#metadata((count: questions.len(), numbers: questions.map(q => q.display-num), shown: show-solutions)) <vietphys-check>]
}

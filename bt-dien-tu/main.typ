#import "../vietphys.typ": *
#import "cau-hinh.typ": *
#show: vp-workbook.with(
  title: "Bài tập điện từ",
  page: dien-tu-page,
  questions: dien-tu-questions,
  header: dien-tu-header,
  footer: dien-tu-footer,
)
#set document(author: "Biên soạn từ tài liệu của Phạm Nguyễn Thành Vinh và Trương Đặng Hoài Thu")
#vp-set-question-style(prefix: "Bài", lines: 0)
#heading(level: 1, outlined: false)[Bài tập điện từ]
#text(size: 15pt)[#if co-loi-giai [Đề bài và lời giải chi tiết] else [Bản đề bài]]

Chuyển soạn từ *Bài tập học phần Điện từ học*, Khoa Vật lý, Trường Đại học Sư phạm TP. Hồ Chí Minh; giảng viên Phạm Nguyễn Thành Vinh và Trương Đặng Hoài Thu, 09/2024. Bản nguồn gồm 28 trang, được lưu tại thư mục *nguon*.

Đề được chuẩn hóa chính tả và cách viết đơn vị, giữ dữ kiện và các yêu cầu vật lý. Một số đoạn dẫn nhập được rút gọn. Lời giải được biên soạn mới, không phải đáp án chính thức của tác giả. Số bài giữ theo tài liệu gốc và phải đi kèm tên phần vì có số trùng nhau. Các giả thiết bổ sung và điểm chưa chặt chẽ của đề được ghi ngay tại bài liên quan.

*Quy ước.* Dùng SI; $k = 1/(4 pi epsilon_0) approx 8.99 times 10^9$; $epsilon_0 = 8.854 times 10^(-12) thin "F/m"$; $mu_0 approx 4 pi times 10^(-7) thin "H/m"$; $e = 1.602 times 10^(-19) thin "C"$ là độ lớn điện tích electron; $m_e = 9.109 times 10^(-31) thin "kg"$; $m_p = 1.673 times 10^(-27) thin "kg"$; $g = 9.81 thin "m/s"^2$. Dữ kiện riêng của đề được ưu tiên. $U_(A B) = V_A - V_B$, công lực điện $A_(A B) = q U_(A B)$, $arrow(E) = -nabla V$. Các số thập phân trong công thức dùng dấu chấm.

#outline(title: [Mục lục], depth: 2)
#pagebreak()
= Phần 1. Tĩnh điện học
== 1. Định luật Coulomb — Điện trường
#include "phan-1-tinh-dien/01-dien-truong.typ"
== 2. Điện thế
#include "phan-1-tinh-dien/02-dien-the.typ"
#pagebreak()
== 3. Định luật Gauss
#include "phan-1-tinh-dien/03-gauss.typ"
#pagebreak()
== 4. Tụ điện — Điện môi
#include "phan-1-tinh-dien/04-tu-dien.typ"
#pagebreak()
= Phần 2. Dòng điện không đổi
#include "phan-2-dong-dien/bai-tap.typ"
#pagebreak()
= Phần 3. Từ trường
#include "phan-3-tu-truong/bai-tap.typ"
#pagebreak()
= Phần 4. Cảm ứng điện từ
#include "phan-4-cam-ung/bai-tap.typ"


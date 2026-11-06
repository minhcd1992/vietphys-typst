// Lộ trình 3 ngày và lời khuyên chung
COURSE.plan = [
  {
    title: 'Xác suất & biến ngẫu nhiên', short: 'Xác suất',
    sessions: [
      { time: 'Sáng<br>7:30–11:00', ch: 1, label: 'Chương 1 · Biến cố & công thức xác suất', note: 'Đếm tổ hợp, biến cố đối, xác suất có điều kiện, toàn phần, Bayes.' },
      { time: 'Chiều<br>13:30–17:30', ch: 2, label: 'Chương 2 · Biến ngẫu nhiên & phân phối', note: 'Bảng phân phối, hàm mật độ, nhị thức, Poisson, chuẩn, đều, mũ.' },
      { time: 'Tối<br>19:30–21:30', ch: 3, label: 'Chương 3 · Biến ngẫu nhiên hai chiều', note: 'Bảng đồng thời, phân phối biên, điều kiện, kiểm tra độc lập.' }
    ]
  },
  {
    title: 'Đặc trưng số & định lý giới hạn', short: 'Đặc trưng & giới hạn',
    sessions: [
      { time: 'Sáng<br>7:30–11:00', ch: 4, label: 'Chương 4 · Kì vọng, phương sai, tương quan', note: 'E, V, Cov, ρ, kì vọng có điều kiện, bài toán đầu tư.' },
      { time: 'Chiều<br>13:30–16:30', ch: 5, label: 'Chương 5 · Luật số lớn & định lý giới hạn', note: 'Markov, Chebyshev, luật số lớn, ĐL giới hạn trung tâm, Moivre–Laplace.' },
      { time: 'Tối<br>19:30–21:00', ch: 6, label: 'Chương 6 · Mẫu & thống kê mô tả', note: 'Trung bình mẫu, phương sai mẫu (hiệu chỉnh), ghép lớp.' }
    ]
  },
  {
    title: 'Thống kê suy diễn & tổng ôn', short: 'Thống kê',
    sessions: [
      { time: 'Sáng<br>7:30–11:00', ch: 7, label: 'Chương 7 · Ước lượng khoảng tin cậy', note: 'KTC cho μ (chuẩn / Student), tỉ lệ p, phương sai; cỡ mẫu.' },
      { time: 'Chiều<br>13:30–17:00', ch: 8, label: 'Chương 8 · Kiểm định giả thuyết', note: 'Kiểm định μ, p, σ²; một phía / hai phía; miền bác bỏ.' },
      { time: 'Tối<br>19:00–20:30', ch: 9, label: 'Chương 9 · Tương quan & hồi quy', note: 'Hệ số tương quan, kiểm định ρ = 0, đường hồi quy, dự báo.' },
      { time: 'Tối<br>20:30–22:00', href: '#/thi-thu', label: 'Thi thử & sổ tay công thức', note: 'Làm 1–2 đề tự sinh có bấm giờ, xem lại câu sai, đọc sổ tay công thức.' }
    ]
  }
];

COURSE.tips = [
  ['1. Đặt tên biến cố / biến ngẫu nhiên trước', 'Câu mở đầu “Gọi A là biến cố…”, “Gọi X là số…” giúp bạn không nhầm và luôn được điểm trình bày. Ghi rõ phân phối: \\(X\\sim B(n,p)\\), \\(P(\\lambda)\\), \\(N(\\mu,\\sigma^2)\\).'],
  ['2. Học theo “dấu hiệu đề → công cụ”', 'Mỗi chương có tab Nhận dạng dạng bài. Thuộc phản xạ: “ít nhất một” → biến cố đối; “biết rằng đã…” → Bayes; “n < 30, chuẩn, chưa biết σ” → Student.'],
  ['3. Tự giải bài mẫu rồi mới xem lời giải', 'Che lời giải, làm ra giấy, sau đó đối chiếu. Chỉ đánh dấu “Tự làm được” khi bạn đúng mà không nhìn.'],
  ['4. Luyện bài tự sinh tới khi đúng 5 bài liên tiếp', 'Số liệu thay đổi mỗi lần nên bạn buộc phải hiểu quy trình, không thể học thuộc đáp số.'],
  ['5. Giữ 4 chữ số thập phân, tra bảng đúng cột', 'Làm tròn sớm gây sai số lớn. Với KTC/kiểm định hai phía dùng \\(u_{\\alpha/2}\\), một phía dùng \\(u_\\alpha\\). Student/χ² nhớ bậc tự do \\(n-1\\) (hồi quy: \\(n-2\\)).'],
  ['6. Kiểm định luôn đủ 4 bước', '(1) Đặt \\(H_0, H_1\\); (2) tính giá trị quan sát; (3) tra giá trị tới hạn, viết miền bác bỏ \\(W_\\alpha\\); (4) so sánh và kết luận bằng lời theo ngữ cảnh đề.']
];

"""Đánh dấu bài báo gốc Socrates-AI theo mạch: sự kiện -> vấn đề -> mục tiêu
-> khung lí thuyết (khái niệm công cụ, lí thuyết nền, mối liên hệ)
-> câu hỏi/giả thuyết NC. Không sửa PDF nguồn.

Kết quả:
  bai-bao-goc-danh-dau.pdf                 bài gốc có tô màu, nhãn lề, phiếu phân tích
  slide-khung-li-thuyet/hinh/*.png         ảnh cắt các đoạn đã đánh dấu (dùng cho slide)
Chạy: python bai-bao-socrates-ai/danh-dau-bai-bao.py   (cần PyMuPDF)
"""
import io
import re
import sys
from pathlib import Path

import pymupdf as fitz

ROOT = Path(__file__).resolve().parent
SRC = ROOT / 'nguon' / 'x7vq-17rq.pdf'
OUT = ROOT / 'bai-bao-goc-danh-dau.pdf'
IMG = ROOT / 'slide-khung-li-thuyet' / 'hinh'
FONTS = Path(r'C:\Windows\Fonts')
PAD = 58  # lề thêm mỗi bên (pt) để đặt nhãn

# nhóm: (tên nhãn mặc định, màu tô, màu viền/chữ)
CATS = {
    'D': (['Dẫn dắt', 'chọn đề tài'], (0.60, 0.78, 1.00), (0.08, 0.28, 0.62)),
    'V': (['Vấn đề NC'], (0.94, 0.76, 0.56), (0.55, 0.28, 0.05)),
    'M': (['Mục tiêu NC'], (0.66, 0.92, 0.60), (0.10, 0.45, 0.10)),
    'KN': (['Khái niệm', 'công cụ'], (0.80, 0.70, 1.00), (0.38, 0.16, 0.66)),
    'LT': (['Lí thuyết nền'], (0.55, 0.88, 0.84), (0.00, 0.40, 0.38)),
    'ML': (['Mối liên hệ'], (0.97, 0.68, 0.93), (0.58, 0.08, 0.52)),
    'C': (['Câu hỏi NC'], (1.00, 0.66, 0.62), (0.72, 0.10, 0.08)),
    'G': (['Giả thuyết NC'], (1.00, 0.92, 0.40), (0.52, 0.42, 0.00)),
}

# màu gạch chân các thành phần cấu trúc của câu hỏi NC
PART = {
    'ss': ((0.80, 0.00, 0.00), 'So sánh / quan hệ'),
    'dl': ((0.00, 0.25, 0.85), 'Biến độc lập'),
    'pt': ((0.00, 0.50, 0.15), 'Biến phụ thuộc'),
    'kt': ((0.50, 0.00, 0.65), 'Khách thể'),
    'pv': ((0.95, 0.45, 0.00), 'Phạm vi'),
}


def mk(pg, cat, start, end, note, **opt):
    return dict(pg=pg, cat=cat, start=start, end=end, note=note, **opt)


MARKS = [
    # ---- Tóm tắt, mở đầu: sự kiện, vấn đề, mục tiêu
    mk(1, 'D', 'Initial physics teacher education frequently', 'and metacognitive regulation.',
       'Sự kiện (tóm tắt): đào tạo GV Vật lí thường dạy giải bài động học như hoạt động thủ tục, ít lập luận khái niệm, tranh luận và điều chỉnh siêu nhận thức.'),
    mk(1, 'M', 'This study examines the effects of Socratic', 'in one-dimensional kinematics.',
       'Mục tiêu (tóm tắt): xem xét tác động của đối thoại Socrates có GAI làm trung gian, so với chỉ do GV dẫn dắt, lên TDPB đặc thù môn học trong động học một chiều.'),
    mk(1, 'D', 'The development of critical thinking', 'mechanical application of formulas.',
       'Bối cảnh chung: phát triển TDPB trong đào tạo GV ban đầu vẫn là thách thức dai dẳng, nhất là môn Vật lí.'),
    mk(1, 'D', 'In much of Latin America', 'beyond numerical computation [1,2].',
       'Sự kiện thực tiễn có dẫn chứng [1,2]: dạy động học một chiều nặng thủ tục thuật toán, kìm hãm năng lực phản tư, phân tích, siêu nhận thức.'),
    mk(1, 'V', 'This instructional pattern reveals', 'central to disciplinary expertise.',
       'Vấn đề thực tiễn: khoảng cách giữa thực tế lớp học (thủ tục) và yêu cầu nhận thức của đào tạo GV Vật lí (lập luận, diễn giải mô hình, biện minh).'),
    mk(1, 'D', 'International research has identified', 'science education. [3,4].',
       'Dẫn dắt: các tiếp cận đã được ghi nhận hỗ trợ TDPB (tìm tòi có hướng dẫn, tranh luận hợp tác, phân tích khái niệm).'),
    mk(1, 'D', 'In physics education, kinematics occupies', 'formation of physics teachers [5].',
       'Dẫn dắt: lí do chọn nội dung động học (đòi hỏi mô hình tinh thần, diễn giải quan hệ giữa các biến, suy luận trừu tượng).'),
    mk(2, 'D', 'Recent work further suggests that Socratic', 'reconstruction of conceptual errors.',
       'Dẫn dắt (xu hướng mới): đối thoại Socrates có thể được mở rộng nhờ trung gian GAI [6] -> gợi ý hướng giải pháp.'),
    mk(2, 'V', 'While emerging studies indicate', 'persistently challenging [7,8].',
       'Vấn đề NC (khoảng trống nghiên cứu): bằng chứng thực nghiệm về GAI hỗ trợ TDPB trong giáo dục Vật lí còn hạn chế, rõ nhất ở động học một chiều. Đây là khoảng trống mà câu hỏi NC phải chạm tới.'),
    # ---- Khung lí thuyết
    mk(2, 'LT', 'From an epistemic standpoint', 'metacognitive monitoring and sensemaking.',
       'Lí thuyết nền: quan điểm trung gian nhận thức (epistemic mediation). GAI định hình cách người học tạo bằng chứng, biện minh suy luận, tự điều chỉnh; trong đối thoại Socrates, GAI là giàn giáo nhận thức (gợi giải thích thay thế, phản ví dụ, nhiều cách giải).'),
    mk(2, 'LT', 'However, this form of mediation requires', 'in educational settings [10–12].',
       'Lí thuyết nền (nguyên tắc): quyền chủ động nhận thức (epistemic agency) phải thuộc về người học, không chuyển giao cho công nghệ [9]; giữ trách nhiệm, phán đoán, kiểm soát phản tư [10–12].'),
    mk(2, 'KN', 'Accordingly, the present study conceptualizes', 'disciplinary understanding [13].',
       'Khái niệm công cụ (định nghĩa dùng thống nhất): GAI = giàn giáo nhận thức có giám sát, hỗ trợ TDPB và điều chỉnh siêu nhận thức, không thay thế hiểu biết chuyên môn [13].'),
    mk(2, 'LT', 'The preceding discussion situates this study', 'to support the development of critical thinking.',
       'Lí thuyết nền: quan điểm giải bài tập Vật lí như lập luận, diễn giải và kiến tạo ý nghĩa (xem xét giả định, phối hợp biểu diễn, dùng đối thoại), không phải thay số vào công thức.'),
    mk(2, 'ML', 'Within this framework, Socratic dialogue', 'and reflective self-correction.',
       'Mối liên hệ: đối thoại Socrates + GAI -> khuyến khích giải thích thay thế, đối chiếu khái niệm, tự sửa sai -> mở rộng hoạt động suy luận và siêu nhận thức -> phát triển TDPB.'),
    # ---- Câu hỏi nghiên cứu
    mk(2, 'M', 'Guided by this perspective, the present study compares',
       'structure is supported by generative artificial intelligence.',
       'Mục tiêu NC: so sánh đối thoại Socrates do GV dẫn dắt với điều kiện tiếp theo có cùng cấu trúc đối thoại được GAI hỗ trợ.'),
    mk(2, 'C', 'The study therefore asks what differences', 'between these two instructional conditions;',
       'Câu hỏi phụ 1 (so sánh): khác biệt về kết quả TDPB đặc thù môn học giữa hai điều kiện dạy học.',
       names=['Câu hỏi NC', 'phụ']),
    mk(2, 'C', 'how participants’ perceptions of', 'differ across the two phases;',
       'Câu hỏi phụ 2 (so sánh): KSE, CL, IM khác nhau thế nào giữa hai giai đoạn. Tác giả gọi đây là câu hỏi thứ cấp (tr. 12).',
       names=['Câu hỏi NC', 'phụ']),
    mk(2, 'C', 'and how their qualitative reflections', 'qualify the quantitative findings.',
       'Câu hỏi phụ 3 (mô tả, tích hợp): phản tư định tính hội tụ với hay làm rõ/giới hạn kết quả định lượng thế nào.',
       names=['Câu hỏi NC', 'phụ']),
    mk(2, 'C', 'Because the two conditions were implemented', 'causal effect of GAI mediation.',
       'Phạm vi câu hỏi: vì hai điều kiện thực hiện theo trình tự cố định, câu hỏi chỉ hướng tới khác biệt trong mẫu và sự hội tụ dữ liệu, không hỏi tác động nhân quả độc lập của GAI.',
       code='PV', names=['Phạm vi', 'câu hỏi NC']),
    mk(2, 'C', 'Consequently, this study addresses the', 'structure supported by GAI?',
       'Câu hỏi NC chính. Gạch chân: đỏ = so sánh/quan hệ; xanh dương = biến độc lập (2 mức); xanh lá = biến phụ thuộc; tím = khách thể; cam = phạm vi.',
       code='C', names=['Câu hỏi NC', 'chính'],
       parts=[('what differences emerge', 'ss'),
              ('rubric-assessed critical-thinking performance and qualitative reasoning', 'pt'),
              ('preservice physics teachers', 'kt'),
              ('solve one-dimensional kinematics problems', 'pv'),
              ('teacher-guided Socratic dialogue alone', 'dl'),
              ('compared with', 'ss'),
              ('the same dialogue structure supported by GAI', 'dl')]),
    mk(2, 'M', 'aimed at examining how critical', 'teacher-guided dialogue supported by GAI.',
       'Mục tiêu (phần phương pháp): tìm hiểu TDPB của SV sư phạm Vật lí phát triển thế nào khi giải bài định tính/định lượng qua đối thoại Socrates trong hai điều kiện trung gian.'),
    mk(3, 'KN', 'Operationally, the independent variable', 'organization of the written response [18].',
       'Khái niệm công cụ -> biến: biến độc lập = hình thức trung gian Socrates (có/không GAI); biến phụ thuộc = mức TDPB theo rubric 5 tiêu chí dựa trên [16–19].',
       names=['Khái niệm', 'công cụ → biến']),
    mk(3, 'KN', 'In the teacher-guided condition, the survey', 'associated with AI-supported problem solving.',
       'Khái niệm công cụ -> biến cảm nhận: KSE, CL, IM (chung hai giai đoạn); SI, TDPB cảm nhận (A1); PU-GAI, TE-AI, RI (A2). Chỉ cấu trúc chung mới được so sánh suy luận.',
       names=['Khái niệm', 'công cụ → biến']),
    mk(4, 'ML', 'model integrates three instructional components', 'and problem-solving sequence constant.',
       'Mối liên hệ được hiện thực hóa: mô hình SOCRATIC-IA giữ nguyên nội dung và trình tự, chỉ thay đổi mức trung gian nhận thức -> cơ sở của phép so sánh trong câu hỏi NC.'),
    # ---- Giả thuyết
    mk(5, 'G', 'justified by the a priori directional hypothesis', 'either improvement or no change.',
       'Giả thuyết có hướng (nêu trước khi xem dữ liệu): trung gian GAI không làm giảm kết quả, chỉ làm tăng hoặc không đổi.',
       names=['Giả thuyết NC', 'Ha có định hướng']),
    mk(5, 'G', 'Formally, the global null hypothesis', 'produced higher scores than A1.',
       'Giả thuyết thống kê toàn cục: H0G - trung vị hiệu điểm A2 - A1 <= 0; H1G - trung vị > 0 (Ha có định hướng, kiểm định một phía).',
       names=['H0 + Ha', 'có định hướng']),
    mk(6, 'G', 'For each problem k, hypotheses were formulated', 'indicating a systematic change between conditions.',
       'Giả thuyết theo từng bài toán (hai phía): H0k - trung vị hiệu = 0; H1k - trung vị hiệu khác 0 (Ha không định hướng).',
       names=['H0 + Ha', 'không định hướng']),
    mk(6, 'G', 'However, when the theoretical framework specifies', 'and reported transparently.',
       'Từ khung lí thuyết đến giả thuyết: khung lí thuyết cho kì vọng có hướng a priori (GAI không gây thiệt hại, nếu thay đổi thì theo hướng cải thiện) -> biện minh kiểm định một phía.',
       names=['Từ khung LT', 'đến giả thuyết']),
    mk(6, 'G', 'Under this condition, for each problem', 'median being greater than zero.',
       'Giả thuyết theo từng bài toán (một phía): H0k - trung vị hiệu <= 0; H1k - trung vị hiệu > 0 (Ha có định hướng).',
       names=['H0 + Ha', 'có định hướng']),
    # ---- Bàn luận, kết luận
    mk(11, 'V', 'The contribution of the present work', 'and metacognitive reflection [1,2].',
       'Bàn luận nhắc lại vấn đề NC: khó khăn lâu dài trong dạy động học (ưu tiên thuật toán, thay số) để định vị đóng góp.'),
    mk(11, 'ML', 'In this sense, the practical contribution', 'before accepting a response.',
       'Bàn luận khẳng định lại mối liên hệ: AI đóng vai giàn giáo nhận thức (gợi giải thích, đối chiếu giả định, đòi bằng chứng, kiểm tra nhất quán) chứ không phải "dùng AI" tự thân.'),
    mk(11, 'M', 'This study compared the traditional Socratic method', 'problems in translational kinematics.',
       'Kết luận nhắc lại mục tiêu: so sánh phương pháp Socrates truyền thống với Socrates có GAI nhằm nâng cao TDPB của GV Vật lí tương lai.'),
]

# ảnh cắt cho slide: tên tệp -> các mã nhãn cần nằm trong ảnh
CROPS = {
    'lt-nen.png': ['LT1', 'LT2'],
    'kn-dinh-nghia.png': ['KN1'],
    'kn-bien.png': ['KN2'],
    'kn-khao-sat.png': ['KN3'],
    'lt3-ml1.png': ['LT3', 'ML1'],
    'cau-hoi-chinh.png': ['PV', 'C'],
    'cau-hoi-phu.png': ['C1', 'C2', 'C3'],
    'gia-thuyet-p5.png': ['G1', 'G2'],
    'gia-thuyet-hai-phia.png': ['G3'],
    'gia-thuyet-khung.png': ['G4', 'G5'],
}


def norm(s):
    return re.sub(r'[^0-9a-z]', '', s.lower())


def token_stream(page):
    words = page.get_text('words', sort=False)
    toks, i = [], 0
    while i < len(words):
        text, idxs = words[i][4], [i]
        # nối từ bị ngắt bằng gạch nối ở cuối dòng
        while (text.endswith('-') and i + 1 < len(words)
               and words[i + 1][5:7] != words[idxs[-1]][5:7]):
            i += 1
            text = text[:-1] + words[i][4]
            idxs.append(i)
        n = norm(text)
        if n:
            toks.append((n, idxs))
        i += 1
    return words, toks


def find(toks, phrase, start=0, stop=None):
    seq = [t for t in (norm(w) for w in phrase.split()) if t]
    stop = len(toks) if stop is None else stop
    hits = [k for k in range(start, stop - len(seq) + 1)
            if all(toks[k + j][0] == seq[j] for j in range(len(seq)))]
    return hits, len(seq)


def line_rects(words, i0, i1, mid):
    """Gộp các từ thành dòng hiển thị (dòng căn đều có thể bị tách thành nhiều 'line')."""
    out = []
    for w in words[i0:i1 + 1]:
        r = fitz.Rect(w[:4])
        yc = (r.y0 + r.y1) / 2
        for k, q in enumerate(out):
            same_y = abs((q.y0 + q.y1) / 2 - yc) < 2.5
            cross = (q.x1 < mid < r.x0) or (r.x1 < mid < q.x0)
            gap = max(r.x0 - q.x1, q.x0 - r.x1)
            if same_y and not cross and gap < 40:
                out[k] = q | r
                break
        else:
            out.append(r)
    return out


def cat_of(code):
    if code == 'PV':
        return 'C'
    return max((k for k in CATS if code.startswith(k)), key=len)


def build_summary_pdf(width, height):
    def c(code):
        dark = CATS[cat_of(code)][2]
        rgb = '#%02x%02x%02x' % tuple(int(255 * v) for v in dark)
        return f'<b style="color:{rgb}">{code}</b>'

    html = f"""
<h1>PHIẾU PHÂN TÍCH LOGIC NGHIÊN CỨU</h1>
<p class="ref">M. Guerrero-Zambrano và cs., “Effects of generative AI-mediated socratic dialogue on preservice
physics teachers’ critical thinking in kinematics”, <i>Phys. Rev. Phys. Educ. Res.</i> <b>22</b>, 020134 (2026).
DOI: 10.1103/x7vq-17rq. [tr. n] là trang của bản gốc (trang 1–14 của tệp này).</p>
<p class="legend">Chú giải: {c('D')} Dẫn dắt / sự kiện &nbsp; {c('V')} Vấn đề NC &nbsp; {c('M')} Mục tiêu NC &nbsp;
Khung lí thuyết: {c('KN')} Khái niệm công cụ, {c('LT')} Lí thuyết nền, {c('ML')} Mối liên hệ &nbsp;
{c('C')} Câu hỏi NC &nbsp; {c('G')} Giả thuyết NC. Trong câu hỏi chính, gạch chân
<b style="color:#cc0000">đỏ</b> = so sánh/quan hệ, <b style="color:#0040d9">xanh dương</b> = biến độc lập,
<b style="color:#008026">xanh lá</b> = biến phụ thuộc, <b style="color:#8000a6">tím</b> = khách thể,
<b style="color:#f27300">cam</b> = phạm vi. Rê chuột vào vùng tô màu để xem ghi chú.</p>

<h2>1. Từ sự kiện khoa học đến vấn đề nghiên cứu</h2>
<ul>
<li>{c('D1')}–{c('D6')} [tr. 1–2]: Dạy động học một chiều thiên về thủ tục thuật toán [1,2]; tìm tòi có hướng dẫn, tranh luận,
phân tích khái niệm hỗ trợ TDPB [3,4]; động học đòi hỏi cao về nhận thức [5]; đối thoại Socrates có thể mở rộng nhờ GAI [6].</li>
<li>{c('V1')} [tr. 1] – vấn đề thực tiễn: khoảng cách giữa lớp học thiên về thủ tục và yêu cầu nhận thức của đào tạo GV Vật lí.</li>
<li>{c('V2')} [tr. 2] – khoảng trống nghiên cứu: thiếu bằng chứng thực nghiệm về GAI hỗ trợ TDPB trong giáo dục Vật lí,
đặc biệt ở động học một chiều [7,8]. {c('V3')} [tr. 11]: bàn luận nhắc lại vấn đề.</li>
</ul>

<h2>2. Từ vấn đề đến mục tiêu nghiên cứu</h2>
<ul>
<li>{c('M1')} [tr. 1], {c('M2')} [tr. 2], {c('M3')} [tr. 2], {c('M4')} [tr. 11]: So sánh đối thoại Socrates chỉ do GV dẫn dắt với
cùng cấu trúc đối thoại có GAI hỗ trợ, xét ảnh hưởng lên TDPB đặc thù môn học khi giải bài động học một chiều.</li>
</ul>

<h2>3. Khung lí thuyết: khái niệm công cụ – lí thuyết nền – mối liên hệ</h2>
<ul>
<li><b>Lí thuyết nền.</b> {c('LT1')} [tr. 2]: GAI là trung gian nhận thức, đóng vai giàn giáo nhận thức trong đối thoại Socrates.
{c('LT2')} [tr. 2]: quyền chủ động nhận thức phải ở người học [9–12]. {c('LT3')} [tr. 2]: giải bài Vật lí là lập luận,
diễn giải, kiến tạo ý nghĩa.</li>
<li><b>Khái niệm công cụ.</b> {c('KN1')} [tr. 2]: GAI = giàn giáo nhận thức có giám sát [13]. {c('KN2')} [tr. 3]: biến độc lập
= hình thức trung gian Socrates; biến phụ thuộc = TDPB theo rubric 5 tiêu chí [16–19]. {c('KN3')} [tr. 3]: các biến cảm nhận
KSE, CL, IM (chung), SI (A1), PU-GAI, TE-AI, RI (A2).</li>
<li><b>Mối liên hệ.</b> {c('ML1')} [tr. 2]: đối thoại Socrates + GAI → giải thích thay thế, đối chiếu khái niệm, tự sửa sai
→ mở rộng suy luận và siêu nhận thức → TDPB. {c('ML2')} [tr. 4]: mô hình SOCRATIC-IA giữ nguyên trình tự, chỉ đổi mức
trung gian. {c('ML3')} [tr. 11]: bàn luận khẳng định lại vai trò giàn giáo nhận thức.</li>
</ul>

<h2>4. Từ khung lí thuyết đến câu hỏi nghiên cứu và giả thuyết</h2>
<ul>
<li>{c('C')} [tr. 2] – <b>câu hỏi chính</b>: Khác biệt nào xuất hiện về <i>TDPB đánh giá bằng rubric và lập luận định tính</i>
(biến phụ thuộc) khi <i>SV sư phạm Vật lí</i> (khách thể) <i>giải bài động học một chiều</i> (phạm vi) qua
<i>đối thoại Socrates chỉ do GV dẫn dắt</i>, <i>so với</i> <i>cùng cấu trúc có GAI hỗ trợ</i> (biến độc lập, 2 mức)?</li>
<li>{c('C1')} TDPB đặc thù môn học (so sánh); {c('C2')} KSE, CL, IM (so sánh; câu hỏi thứ cấp); {c('C3')} hội tụ
định tính – định lượng (mô tả, tích hợp). {c('PV')}: câu hỏi chỉ hướng tới khác biệt trong mẫu, không hỏi tác động nhân quả.</li>
<li>{c('G1')}, {c('G4')} [tr. 5–6]: khung lí thuyết cho kì vọng có hướng a priori: GAI không làm giảm, nếu thay đổi thì cải thiện.</li>
<li>{c('G2')} [tr. 5]: H0G: Md(A2 − A1) ≤ 0; H1G: Md &gt; 0 – <b>Ha có định hướng</b> (một phía).
{c('G3')} [tr. 6]: H0k: Md = 0; H1k: Md ≠ 0 – <b>Ha không định hướng</b> (hai phía).
{c('G5')} [tr. 6]: H0k: Md ≤ 0; H1k: Md &gt; 0 – Ha có định hướng.</li>
</ul>
<p class="note">Lưu ý: Bài không có mục “giả thuyết nghiên cứu” riêng trong phần mở đầu; giả thuyết xuất hiện dưới dạng giả thuyết
thống kê ở mục III.A. Cách kiểm chứng: so sánh cùng 6 nhóm ở A1 và A2, đo điểm rubric TDPB, kiểm định Wilcoxon dấu-hạng.</p>
"""
    css = """
@font-face {font-family: VN; src: url(arial.ttf);}
@font-face {font-family: VN; src: url(arialbd.ttf); font-weight: bold;}
@font-face {font-family: VN; src: url(ariali.ttf); font-style: italic;}
* {font-family: VN; font-size: 8.8pt; line-height: 1.25;}
h1 {font-size: 15pt; text-align: center; color: #1b3a6b; margin: 0 0 4pt 0;}
h2 {font-size: 11pt; color: #1b3a6b; margin: 8pt 0 2pt 0; border-bottom: 1px solid #1b3a6b;}
p {margin: 2pt 0;}
ul {margin: 1pt 0 1pt 0;}
li {margin: 1pt 0;}
.ref {font-size: 8.5pt; color: #333333; text-align: center;}
.legend {background-color: #f2f2f2; padding: 4pt;}
.note {font-style: italic; color: #333333;}
"""
    arch = fitz.Archive(str(FONTS))
    story = fitz.Story(html=html, user_css=css, archive=arch)
    buf = io.BytesIO()
    writer = fitz.DocumentWriter(buf)
    mediabox = fitz.Rect(0, 0, width, height)
    where = mediabox + (56, 36, -56, -36)
    more = 1
    while more:
        dev = writer.begin_page(mediabox)
        more, _ = story.place(where)
        story.draw(dev)
        writer.end_page()
    writer.close()
    return fitz.open('pdf', buf.getvalue())


def main():
    doc = fitz.open(SRC)
    counters = {k: 0 for k in CATS}
    labels = {}   # (page, side) -> list of (y, code, cat, names, legend)
    regions = {}  # code -> (page index, Rect bao vùng tô)
    errors = []

    for page in doc:
        r = page.rect
        page.set_mediabox(fitz.Rect(r.x0 - PAD, r.y0, r.x1 + PAD, r.y1))

    for m in MARKS:
        pg, cat = m['pg'], m['cat']
        page = doc[pg - 1]
        mid = page.rect.width / 2
        words, toks = token_stream(page)
        hs, _ = find(toks, m['start'])
        if len(hs) != 1:
            errors.append(f'tr.{pg} [{cat}] mở đầu "{m["start"]}": {len(hs)} kết quả')
            continue
        he, ne = find(toks, m['end'], hs[0])
        if not he:
            errors.append(f'tr.{pg} [{cat}] kết thúc "{m["end"]}": không thấy')
            continue
        t0, t1 = hs[0], he[0] + ne - 1
        i0, i1 = toks[t0][1][0], toks[t1][1][-1]
        rects = line_rects(words, i0, i1, mid)
        if 'code' in m:
            code = m['code']
        else:
            counters[cat] += 1
            code = f'{cat}{counters[cat]}'
        names = m.get('names', CATS[cat][0])
        light, dark = CATS[cat][1], CATS[cat][2]
        annot = page.add_highlight_annot(rects)
        annot.set_colors(stroke=light)
        annot.set_info(title=f'{code} – {" ".join(names)}', content=m['note'])
        annot.update()

        legend = []
        for phrase, key in m.get('parts', []):
            ph, pn = find(toks, phrase, t0, t1 + 1)
            if len(ph) != 1:
                errors.append(f'tr.{pg} [{code}] thành phần "{phrase}": {len(ph)} kết quả')
                continue
            j0, j1 = toks[ph[0]][1][0], toks[ph[0] + pn - 1][1][-1]
            colr = PART[key][0]
            for q in line_rects(words, j0, j1, mid):
                page.draw_line((q.x0, q.y1 + 0.4), (q.x1, q.y1 + 0.4), color=colr, width=1.8)
            if PART[key] not in legend:
                legend.append(PART[key])

        first = rects[0]
        side = 'R' if (first.x0 >= mid - 10 and first.x1 > mid + 5) else 'L'
        labels.setdefault((pg, side), []).append((first.y0, code, cat, names, legend))
        box = None
        for q in rects:  # chỉ lấy phần nằm cùng cột với dòng đầu
            if (q.x0 < mid - 10) == (first.x0 < mid - 10):
                box = q if box is None else box | q
        regions[code] = [pg - 1, box, side]
        text = ' '.join(w[4] for w in words[i0:i1 + 1])
        print(f'{code:4s} tr.{pg:<2d} {side} {len(rects):2d} dòng | {text[:50]} … {text[-36:]}')

    for (pg, side), items in labels.items():
        page = doc[pg - 1]
        page.insert_font(fontname='VNR', fontfile=str(FONTS / 'arial.ttf'))
        page.insert_font(fontname='VNB', fontfile=str(FONTS / 'arialbd.ttf'))
        W = page.rect.width
        bw = 74
        x0 = 14 if side == 'L' else W - 14 - bw
        last = -1e9
        for y, code, cat, names, legend in sorted(items, key=lambda t: t[0]):
            dark = CATS[cat][2]
            h = 13 + 8 * len(names) + (3 + 8.5 * len(legend) if legend else 0)
            y0 = max(y - 1, last + 3)
            box = fitz.Rect(x0, y0, x0 + bw, y0 + h)
            page.draw_rect(box, color=dark, fill=(1, 1, 1), width=0.9, radius=0.18 if not legend else 0.06)
            page.insert_textbox(fitz.Rect(box.x0, box.y0 + 1.5, box.x1, box.y0 + 16),
                                code, fontname='VNB', fontsize=8.5, color=dark, align=1)
            for k, nm in enumerate(names):
                yy = box.y0 + 12 + 8 * k
                page.insert_textbox(fitz.Rect(box.x0, yy, box.x1, yy + 9),
                                    nm, fontname='VNB', fontsize=6.6, color=dark, align=1)
            yy = box.y0 + 13 + 8 * len(names) + 1
            for colr, txt in legend:
                page.draw_line((box.x0 + 5, yy + 4.2), (box.x0 + 15, yy + 4.2), color=colr, width=1.8)
                page.insert_textbox(fitz.Rect(box.x0 + 18, yy - 0.5, box.x1 - 2, yy + 9),
                                    txt, fontname='VNR', fontsize=6.0, color=(0.15, 0.15, 0.15))
                yy += 8.5
            regions[code].append(box)
            last = box.y1

    summary = build_summary_pdf(doc[0].rect.width, doc[0].rect.height)
    doc.insert_pdf(summary)
    doc.set_metadata({**doc.metadata, 'title': 'Bài báo gốc có đánh dấu logic nghiên cứu'})
    doc.save(OUT, garbage=3, deflate=True)
    print(f'Đã lưu {OUT.name} ({doc.page_count} trang, phiếu phân tích {summary.page_count} trang).')
    print('Số nhãn tự đánh số:', counters)

    # cắt ảnh các đoạn đã đánh dấu từ bản vừa lưu (có cả highlight và nhãn)
    IMG.mkdir(parents=True, exist_ok=True)
    marked = fitz.open(OUT)
    for name, codes in CROPS.items():
        miss = [c for c in codes if c not in regions]
        if miss:
            errors.append(f'Ảnh {name}: thiếu {miss}')
            continue
        pno = regions[codes[0]][0]
        clip = None
        for c in codes:
            _, hl, side, lab = regions[c]
            r = hl | lab
            clip = r if clip is None else clip | r
        clip = (clip + (-6, -6, 6, 6)) & marked[pno].rect
        marked[pno].get_pixmap(clip=clip, dpi=220, alpha=False).save(IMG / name)
    print(f'Đã cắt {len(CROPS)} ảnh vào {IMG.relative_to(ROOT)}')

    if errors:
        print('LỖI:', *errors, sep='\n  ')
        sys.exit(1)


if __name__ == '__main__':
    main()

"""Trích văn bản, ảnh trang và các hình cần giữ nguyên từ bản PDF nguồn.
Yêu cầu PyMuPDF. Chạy từ bất kỳ thư mục nào; chỉ ghi bên trong bt-dien-tu.
Tọa độ hình dưới đây đo trên ảnh trang ở tỷ lệ 1.5 so với PDF.
"""
from pathlib import Path
import pymupdf

ROOT = Path(__file__).resolve().parents[1]
CROPS = {
    "p1-1-5": (2, (718, 926, 832, 1075)),
    "p1-3-1": (12, (675, 126, 838, 302)),
    "p3-3": (21, (604, 342, 808, 476)),
    "p3-4": (21, (574, 526, 828, 628)),
    "p3-5": (21, (540, 669, 811, 772)),
    "p3-6": (21, (595, 822, 802, 966)),
    "p3-9": (22, (626, 85, 847, 230)),
    "p3-10b": (22, (373, 364, 518, 511)),
    "p3-13": (23, (97, 87, 819, 530)),
    "p3-14": (23, (131, 581, 796, 1105)),
    "p4-1": (26, (500, 190, 826, 338)),
    "p4-2": (26, (80, 411, 827, 784)),
    "p4-3": (26, (80, 860, 827, 1254)),
    "p4-4": (27, (80, 170, 882, 522)),
    "p4-9": (28, (657, 235, 821, 386)),
    "p4-10": (28, (711, 430, 852, 545)),
}

def main():
    src = ROOT / "nguon"
    doc = pymupdf.open(src / "BT-DienTu-SV.pdf")
    for i, page in enumerate(doc, 1):
        (src / f"trang-{i:02}.txt").write_text(page.get_text(sort=True), encoding="utf-8")
        page.get_pixmap(matrix=pymupdf.Matrix(1.5, 1.5)).save(src / f"trang-{i:02}.png")
    for name, (number, rect) in CROPS.items():
        doc[number - 1].get_pixmap(matrix=pymupdf.Matrix(3, 3),
            clip=pymupdf.Rect(*(v / 1.5 for v in rect))).save(ROOT / "hinh" / f"{name}.png")
    print(f"{len(doc)} pages; {len(CROPS)} reference figures")

if __name__ == "__main__":
    main()

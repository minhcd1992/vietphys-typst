"""Cắt đúng các hình phục vụ đề bài từ PDF scan; không vẽ lại hay suy diễn.

Chạy từ thư mục bất kỳ: python bt-co-c1/reference/trich-hinh.py
Yêu cầu: PyMuPDF. Tọa độ được ghi theo bản xem trước ở tỉ lệ 1,6.
"""
from pathlib import Path
import pymupdf

ROOT = Path(__file__).resolve().parent.parent
FIGURES = [
    # số hình, trang PDF (từ 1), khung trên ảnh xem trước 1,6x
    ("1-1", 1, (825, 462, 1082, 720)),
    ("1-2", 2, (104, 149, 384, 224)),
    ("1-4", 3, (817, 447, 1131, 632)),
    ("1-6", 4, (128, 543, 403, 867)),
    ("1-9", 6, (125, 185, 343, 575)),
    ("1-10", 7, (807, 543, 1101, 661)),
    ("1-11", 7, (808, 837, 1114, 1123)),
    ("1-12", 8, (83, 127, 375, 385)),
    ("1-13", 8, (57, 1041, 344, 1187)),
    ("1-14", 9, (834, 80, 1045, 357)),
    ("1-15", 9, (863, 627, 1095, 934)),
    ("1-16", 11, (801, 141, 1081, 237)),
    ("1-17", 13, (811, 119, 1098, 254)),
    ("1-18", 13, (823, 1135, 1037, 1370)),
]

def main():
    doc = pymupdf.open(ROOT / "reference" / "bt-co-c1.pdf")
    dest = ROOT / "reference" / "hinh-goc"
    dest.mkdir(exist_ok=True)
    for number, page, bounds in FIGURES:
        clip = pymupdf.Rect(*(v / 1.6 for v in bounds))
        pix = doc[page - 1].get_pixmap(matrix=pymupdf.Matrix(3.2, 3.2), clip=clip)
        pix.save(dest / f"hinh-{number}.png")
    print(f"Extracted {len(FIGURES)} figures from the source PDF.")

if __name__ == "__main__":
    main()

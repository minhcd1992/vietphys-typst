"""Cắt nguyên hình từ PDF nguồn; cần PyMuPDF, không vẽ lại dữ liệu."""
from pathlib import Path
import json
import pymupdf

ROOT = Path(__file__).resolve().parent
doc = pymupdf.open(ROOT / 'nguon' / 'x7vq-17rq.pdf')
regions = [
    ('hinh-01.png', 5, (52, 43, 560, 243)),
    ('hinh-02.png', 7, (52, 43, 560, 613)),
    ('hinh-03.png', 9, (52, 43, 560, 326)),
]
manifest = []
for name, page, box in regions:
    pix = doc[page - 1].get_pixmap(clip=pymupdf.Rect(box), dpi=400, alpha=False)
    pix.save(ROOT / 'hinh' / name)
    manifest.append(dict(file=name, source_page=page, crop_points=box,
                         dpi=400, width=pix.width, height=pix.height))
(ROOT / 'hinh' / 'nguon-hinh.json').write_text(
    json.dumps(manifest, ensure_ascii=False, indent=2), encoding='utf-8')
print('Đã cắt 3 hình ở độ phân giải 400 dpi.')

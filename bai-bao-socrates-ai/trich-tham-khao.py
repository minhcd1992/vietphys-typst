"""Trích 48 mục thư mục theo thứ tự gốc, loại tiêu đề/chân trang PDF."""
from pathlib import Path
import re
import json

ROOT = Path(__file__).resolve().parent
source = '\n'.join((ROOT / 'nguon' / f'trang-{i:02}.txt').read_text(encoding='utf-8')
                   for i in [12, 13, 14])
source = source[source.index('[1]'):]
source = re.sub(r'^(?:MARCOS GUERRERO-ZAMBRANO|EFFECTS OF GENERATIVE AI-MEDIATED|PHYS\. REV\. PHYS\. EDUC\. RES\.).*$', '', source, flags=re.M)
source = re.sub(r'020134-\d+', '', source)
items = re.split(r'\[(\d+)\]\s*', source)[1:]
assert len(items) == 96
header = r'''= Tài liệu tham khảo

#text(size: 9pt, style: "italic")[Giữ nguyên tên tác giả, nhan đề và thông tin xuất bản theo bản gốc để thuận tiện tra cứu.]

#let biblioref(n, body) = block(breakable: false, above: 5pt, below: 5pt)[
  #set text(size: 9.3pt)
  #set par(justify: false, leading: 0.45em)
  #grid(columns: (22pt, 1fr), [\[#n\]], body)
]

'''
out = []
for num, body in zip(items[::2], items[1::2]):
    # Nối từ bị ngắt dòng, giữ nguyên dấu gạch nối thuộc tên riêng/thuật ngữ.
    body = re.sub(r'-\n(?=[a-z])', '', body)
    body = re.sub(r'\s+', ' ', body).strip()
    body = body.replace('J´e P.', 'Jé P.').replace('´etica', 'ética')
    body = body.replace('https://insightasse ssment.com', 'https://insightassessment.com')
    body = body.replace('what-it-is-andwhy-i t-counts', 'what-it-is-and-why-it-counts')
    body = body.replace('qualitativeand quantitativeevaluation', 'qualitative and quantitative evaluation')
    body = body.replace('skillsbased', 'skills based')
    out.append(f'#biblioref({num}, {json.dumps(body, ensure_ascii=False)})')
(ROOT / '05-tai-lieu-tham-khao.typ').write_text(header + '\n'.join(out) + '\n', encoding='utf-8')
print(f'Extracted {len(out)} references.')

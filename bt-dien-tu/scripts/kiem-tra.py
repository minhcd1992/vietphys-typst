"""Kiểm tra phạm vi, các hệ thức vật lý và biên dịch hai bản PDF.

Chạy: python bt-dien-tu/scripts/kiem-tra.py
Chỉ dùng thư viện chuẩn Python và lệnh typst trong PATH.
Các kiểm tra số kiểm chứng những kết quả chọn lọc, không thay thế việc
đọc từng lập luận hoặc kiểm tra chiều vector trên hình gốc.
"""
from pathlib import Path
import csv
import math as m
import re
import subprocess

ROOT = Path(__file__).resolve().parents[1]
GROUPS = [
    ("P1", "phan-1-tinh-dien/01-dien-truong.typ", "1", 22),
    ("P1", "phan-1-tinh-dien/02-dien-the.typ", "2", 22),
    ("P1", "phan-1-tinh-dien/03-gauss.typ", "3", 16),
    ("P1", "phan-1-tinh-dien/04-tu-dien.typ", "4", 10),
    ("P2", "phan-2-dong-dien/bai-tap.typ", "2", 11),
    ("P3", "phan-3-tu-truong/bai-tap.typ", "3", 22),
    ("P4", "phan-4-cam-ung/bai-tap.typ", "4", 10),
]
REPORT = []

def close(name, actual, expected, rel=1e-9, abs_tol=1e-12):
    assert m.isclose(actual, expected, rel_tol=rel, abs_tol=abs_tol), (name, actual, expected)
    REPORT.append(f"PASS {name}: {actual:.10g}")

def coverage():
    rows = []
    for part, file, prefix, count in GROUPS:
        text = (ROOT / file).read_text(encoding="utf-8-sig")
        entries = re.findall(r'// source-id: '+part+r'/([\d.]+); pdf: ([^\n]+)', text)
        assert [n for n, _ in entries] == [f"{prefix}.{i}" for i in range(1, count + 1)], file
        assert text.count('#vp-question(') == count, file
        assert text.count('type: "essay"') == count, file
        assert text.count('sol: [') == count, file
        assert not re.search(r'#(?:bai|hinh|goc|luu-y)\b', text), file
        assert re.findall(r'num-style: _ => "([\d.]+)"', text) == [n for n, _ in entries], file
        for number, pages in entries:
            rows.append([part, number, pages, file, "Đã soạn đề và lời giải; xem giả thiết tại bài"])
        for name in re.findall(r'path\("../hinh/([^"]+)"\)', text):
            assert (ROOT / "hinh" / name).is_file(), name
    assert len(rows) == 113
    with (ROOT / "danh-muc.csv").open("w", encoding="utf-8-sig", newline="") as f:
        writer = csv.writer(f)
        writer.writerow(["Phần", "Bài", "Trang PDF nguồn", "Tệp Typst", "Trạng thái"])
        writer.writerows(rows)
    # Kiểm tra số đề nhận diện được trong văn bản trích của nguồn, theo từng phần.
    for part, start, end, expected in [("P1", 2, 16, 70), ("P2", 17, 20, 11), ("P3", 21, 25, 22), ("P4", 26, 28, 10)]:
        raw = "\n".join((ROOT / "nguon" / f"trang-{i:02}.txt").read_text(encoding="utf-8") for i in range(start, end + 1))
        found = re.findall(r"Bài\s+(\d+\.\d+)\b", raw)
        assert len(set(found)) == expected, (part, found)
    REPORT.append("PASS coverage: 113 source exercises, 113 converted entries")

def physics():
    k, eps, e, me, mp, g = 8.99e9, 8.854e-12, 1.602e-19, 9.109e-31, 1.673e-27, 9.81
    close("P1-1.1 tension N", .0075*g+k*32e-9*58e-9/.02**2, .115, rel=.005)
    close("P1-1.2 drop radius m", (3*e*m.sqrt(k/6.674e-11)/(4*m.pi*1000))**(1/3), 76.2e-6, rel=.002)
    a = e*720/mp
    theta = m.asin(a*.00127/9550**2)/2
    close("P1-1.8 target range m", 9550**2*m.sin(2*theta)/a, .00127)
    close("P1-1.9 electron endpoint m", e*364/me/2*(.02/1.6e6)**2, .005, rel=.002)
    # Kiểm tra công theo đường kín và quan hệ đạo hàm điện thế.
    radii = [.10, .05, .15, .10]
    work = sum(k*1.5e-8*2e-10*(1/radii[i]-1/radii[i+1]) for i in range(3))
    close("P1-2.13 closed-loop work", work, 0)
    # Chuẩn hóa Q=R=1, k=1. V=2-2r^2+r^3, E=4r-3r^2.
    rr, hh = .37, 1e-6
    v = lambda r: 2-2*r*r+r**3
    close("P1-2.22 E=-dV/dr", -(v(rr+hh)-v(rr-hh))/(2*hh), 4*rr-3*rr**2, rel=1e-8)
    close("P1-3.14 surface continuity", 4*1-3*1**2, 1)
    close("P1-3.14 E maximum", 4*(2/3)-3*(2/3)**2, 4/3)
    # Hai nghiệm điện trở bài chuyển khóa, thế nút và định luật Kirchhoff.
    r = 5*m.sqrt(3)
    close("P2-2.4a equivalent ohm", r+r*(r+15)/(2*r+15), 15)
    inside = r+r*5/(r+5)
    close("P2-2.4b equivalent ohm", r*inside/(r+inside), 5)
    x, y = 5.6, -1.6
    close("P2-2.7 node A residual", x/6+(x-y)/6+(x-12)/3, 0)
    close("P2-2.7 node B residual", y/6+(y-x)/6+(y+6)/3, 0)
    close("P2-2.8 KCL residual", (2-12)/3+(2+9)/3+(2-3)/3, 0)
    close("P2-2.8 power balance W", 3*((-10/3)**2+(11/3)**2+(-1/3)**2), -(12*(-10/3)-9*(11/3)+3*(-1/3)))
    close("P2-2.9 open-circuit residual", (4-24)/6+(4+6)/3, 0)
    close("P2-2.11 floating charge uC", 2*(.75-2)+3*.75+1*(.75-.5), 0)
    mu = 4*m.pi*1e-7
    close("P3-3.6 field T", mu*30/(2*m.pi*.05)*1/m.tan(m.radians(14)), 4.81e-4, rel=.002)
    close("P3-3.9 field T", mu*6.28*.10/(4*m.pi*.05*m.sqrt(.10**2+4*.05**2)), 8.88e-6, rel=.002)
    close("P3-3.10 square-axis limit", mu/(2*m.pi*(1/4)*m.sqrt(1/2)), 2*m.sqrt(2)*mu/m.pi)
    close("P3-3.22 time s", m.asin(.0591/.06825)*9.1e-31/(1.6e-19*.005), 1.19e-9, rel=.002, abs_tol=1e-15)
    close("P4-4.6 emf peak V", .01*.0025*100*m.pi, .007854, rel=.0001)
    close("P4-4.7 emf V", 500*m.pi*.1**2/4*2/.1, 78.5, rel=.001)
    close("P4-4.9 KVL at tau", 2.4*(1-m.exp(-1))+2.4*m.exp(-1), 2.4)
    close("P4-4.10 terminal voltage V", -1000*.6*m.exp(-1200*.001/6), -491, rel=.001)

def main():
    coverage()
    physics()
    for filename, options in [
        ("bt-dien-tu-loi-giai.pdf", []),
        ("bt-dien-tu-de-bai.pdf", ["--input", "loi-giai=khong"]),
    ]:
        subprocess.run(["typst", "compile", str(ROOT / "main.typ"), str(ROOT / filename), "--root", str(ROOT.parent), *options], check=True)
        REPORT.append(f"PASS compile: {filename}")
        result = subprocess.run([
            "typst", "eval", "query(<vietphys-check>).map(it => it.value.count)",
            "--in", str(ROOT / "scripts" / "kiem-tra-vietphys.typ"),
            "--root", str(ROOT.parent), *options,
        ], check=True, capture_output=True, text=True)
        assert result.stdout.strip() == '[113]', result.stdout
        REPORT.append(f"PASS Vietphys store, numbering, solution visibility: {filename}")
    (ROOT / "kiem-tra-ket-qua.txt").write_text("\n".join(REPORT)+"\n", encoding="utf-8")
    print("\n".join(REPORT))

if __name__ == "__main__":
    main()

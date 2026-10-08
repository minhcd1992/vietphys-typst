"""Check any workbook lesson: preflight, student/teacher compiles, optional book.

Run: python sbt-vat-li-10/gemini-gem/kiem-tra-bai.py 14 --book
Only literal local imports within the lesson's chapter are scanned recursively.
Typst remains the authority for syntax and resolving all actual dependencies.
"""
import argparse
import importlib.util
from pathlib import Path
import re
import shutil
import subprocess
import sys


HERE = Path(__file__).resolve().parent
ROOT = HERE.parent.parent
BOOK = ROOT / "sbt-vat-li-10"


def scan_files(lesson):
    chapter = lesson.parent.resolve()
    pending, seen = [lesson], set()
    while pending:
        path = pending.pop().resolve()
        if path in seen:
            continue
        seen.add(path)
        yield path
        source = path.read_text(encoding="utf-8-sig")
        for rel in re.findall(r'#(?:import|include)\s+"([^"]+\.typ)"', source):
            target = (path.parent / rel).resolve()
            if target.is_relative_to(chapter):
                pending.append(target)


def run_typst(source, output, inputs):
    command = ["typst", "compile", str(source), str(output), "--root", str(ROOT)]
    for key, value in inputs.items():
        command.extend(["--input", f"{key}={value}"])
    result = subprocess.run(command, cwd=ROOT, capture_output=True, encoding="utf-8")
    if result.stdout:
        print(result.stdout, end="")
    if result.stderr:
        print(result.stderr, end="", file=sys.stderr)
    if result.returncode:
        print(f"FAIL: {output.name}", file=sys.stderr)
        return False
    print(f"PASS compile: {output.relative_to(ROOT)}")
    return True


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("lesson", type=int, help="Lesson number, for example 14")
    parser.add_argument("--counts", nargs=4, type=int, default=[20, 5, 5, 5],
                        metavar=("MCQ", "TF", "SHORT", "ESSAY"))
    parser.add_argument("--book", action="store_true", help="Also rebuild the student workbook")
    args = parser.parse_args()
    if args.lesson < 1 or any(n < 0 for n in args.counts):
        parser.error("Số bài phải dương; số lượng câu không được âm.")
    lessons = list(BOOK.glob(f"chuong-*/bai-{args.lesson:02}.typ"))
    if len(lessons) != 1:
        parser.error(f"Cần đúng một file bài, tìm được {len(lessons)}.")
    if not shutil.which("typst"):
        parser.error("Không tìm thấy typst trong PATH; chưa thể biên dịch.")
    spec = importlib.util.spec_from_file_location("gem_preflight", HERE / "kiem-tra-code-gem.py")
    preflight = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(preflight)
    errors, warnings = 0, 0
    try:
        for path in scan_files(lessons[0]):
            for level, line, message in preflight.inspect(path.read_text(encoding="utf-8-sig")):
                print(f"{level} {path.relative_to(ROOT)}:{line}: {message}")
                errors += level == "ERROR"
                warnings += level == "WARN"
    except (OSError, UnicodeError) as exc:
        print(f"ERROR: {exc}", file=sys.stderr)
        return 1
    print(f"Preflight: {errors} error(s), {warnings} warning(s).")
    if errors:
        return 1
    out = BOOK / ".kiem-tra" / f"bai-{args.lesson:02}"
    out.mkdir(parents=True, exist_ok=True)
    inputs = {"lesson": "/" + lessons[0].relative_to(ROOT).as_posix(),
              "counts": ",".join(map(str, args.counts))}
    for teacher, name in [(False, "hoc-sinh"), (True, "giao-vien")]:
        if not run_typst(HERE / "kiem-tra-bai.typ", out / f"{name}.pdf",
                        {**inputs, "teacher": str(teacher).lower()}):
            return 1
    if args.book and not run_typst(BOOK / "main.typ", BOOK / "sbt-vat-li-10.pdf", {}):
        return 1
    print("Biên dịch và kiểm tra cấu trúc đạt. Vẫn cần tính lại đáp án và xem PDF; "
          "các WARN (nếu có) chưa tự động được xác nhận.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

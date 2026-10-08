"""Focused preflight checks for Gem-generated Typst; not a Typst parser/compiler.

Run from repo root: python sbt-vat-li-10/gemini-gem/kiem-tra-code-gem.py FILE.typ ...
Exit 1: a known error pattern was found; warnings still require human review.
"""
import argparse
from pathlib import Path
import re


def mask_literals(source):
    # Preserve offsets and newlines while excluding strings and ordinary comments.
    pattern = r'"(?:\\.|[^"\\])*"|//[^\n]*|/\*[\s\S]*?\*/'
    return re.sub(pattern, lambda m: re.sub(r'[^\n]', ' ', m[0]), source)


def inspect(source):
    masked = mask_literals(source)
    findings = []

    def report(level, offset, message):
        findings.append((level, source.count('\n', 0, offset) + 1, message))

    # Validate common code patterns independently of any lesson number.
    # Do not flag valid set text(fill: blue) or text(fill: blue)[body].
    for match in re.finditer(r',\s*text\s*\(\s*fill\s*:\s*[\w.-]+\s*\)\s*\)', masked):
        report('ERROR', match.start(), 'text(fill: màu) thiếu body; dùng content(vị-trí, text(fill: màu)[nội-dung]), không truyền text rỗng làm đối số thứ ba.')

    for match in re.finditer(r'\bfrac\s*\(', masked):
        start = masked.index('(', match.start())
        stack = ['(']
        commas = 0
        end = None
        for i in range(start + 1, len(masked)):
            char = masked[i]
            if char in '([{':
                stack.append(char)
            elif char in ')]}':
                if not stack or '([{'.index(stack[-1]) != ')]}'.index(char):
                    break
                stack.pop()
                if not stack:
                    end = i
                    break
            elif char == ',' and len(stack) == 1:
                commas += 1
        if end is not None and commas == 0:
            report('ERROR', match.start(), 'frac thiếu dấu phẩy phân tách tử/mẫu; dùng frac(tử, mẫu), không frac(tử)(mẫu).')

    for math in re.finditer(r'(?<!\\)\$([\s\S]*?)(?<!\\)\$', masked):
        body = math[1]
        for match in re.finditer(r'\b(?:proportional|propto)\b', body):
            report('ERROR', math.start(1) + match.start(), 'Tên ký hiệu không nằm trong mẫu Typst; dùng ∝, không dùng propto/proportional.')
        for match in re.finditer(r'\\(?:frac|overline|bar|vec|text|mathrm|begin|end|sqrt|left|right)\b', body):
            report('ERROR', math.start(1) + match.start(), 'Còn lệnh LaTeX trong math; chuyển sang cú pháp Typst, ví dụ overline(v), frac(a, b), bold(F).')
        for match in re.finditer(r'\d+,\d+', body):
            report('WARN', math.start(1) + match.start(), 'Kiểm tra số thập phân dấu phẩy chưa có dấu nháy; nếu là số, viết "0,5". Có thể là dấu phân cách hợp lệ: không tự sửa hàng loạt.')

    for match in re.finditer(r'\blet\s+(alpha|beta|theta|phi|h|m|g)\s*=', masked):
        name = match[1]
        if re.search(r'\$[^$]*\b' + re.escape(name) + r'\b[^$]*\$', masked):
            report('WARN', match.start(), f'Biến code {name} có thể che ký hiệu math cùng tên; xét scope và đổi thành tên mô tả nếu dùng để tính tọa độ.')
    for match in re.finditer(r'[\x00-\x08\x0b\x0c\x0e-\x1f]', source):
        report('ERROR', match.start(), 'Có ký tự điều khiển trong dữ liệu; kiểm tra nguồn bị hỏng trước khi chuyển công thức.')
    for match in re.finditer(r'^\s*```', masked, re.MULTILINE):
        report('WARN', match.start(), 'Có hàng rào Markdown trong file Typst; kiểm tra có dán nhầm cả khối trả lời của Gem không.')
    return findings


def self_test():
    assert any(x[0] == 'ERROR' for x in inspect('$a = frac(1)(m)$'))
    assert any(x[0] == 'ERROR' for x in inspect('$a = -frac(F_("ms"))(m)$'))
    assert not inspect('$a = frac(F_("ms"), m)$')
    assert not inspect('$x = frac("0,5", sqrt(2 g h))$')
    assert any(x[0] == 'ERROR' for x in inspect('$a proportional F$'))
    assert not inspect('$a ∝ F$')
    assert any(x[0] == 'WARN' for x in inspect('$100/3,6$'))
    assert not inspect('$frac(100, "3,6")$')
    assert any(x[0] == 'WARN' for x in inspect('#let alpha = 30deg\n[$alpha$]'))
    assert not inspect('// frac(1)(m)\n$frac(1, m)$')
    assert any(x[0] == 'ERROR' for x in inspect('content((3, 1), [$F_A$], text(fill: blue))'))
    assert not inspect('content((3, 1), text(fill: blue)[$F_A$])')
    assert not inspect('#set text(fill: blue)\nNội dung')
    assert any(x[0] == 'ERROR' for x in inspect('$v propto r^2$'))
    assert any(x[0] == 'ERROR' for x in inspect(r'$\overline{v}$'))
    assert any(x[0] == 'ERROR' for x in inspect(r'$\frac{a}{b}$'))
    assert not inspect('$overline(v) = frac(h, t)$')
    assert not inspect('// $v propto r$\n$ v ∝ r $')
    assert not inspect('$"propto"$')
    assert any(x[0] == 'ERROR' for x in inspect('bad\x07lpha'))
    assert any(x[0] == 'WARN' for x in inspect('```typst\n#text[Hi]\n```'))
    print('PASS: 21 preflight regression checks.')


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('files', nargs='*', type=Path)
    parser.add_argument('--self-test', action='store_true')
    args = parser.parse_args()
    if args.self_test:
        self_test()
    if not args.files and not args.self_test:
        parser.error('Cần ít nhất một file .typ hoặc --self-test')
    errors = 0
    warnings = 0
    for path in args.files:
        try:
            source = path.read_text(encoding='utf-8-sig')
        except (OSError, UnicodeError) as exc:
            print(f'ERROR {path}: {exc}')
            errors += 1
            continue
        for level, line, message in inspect(source):
            print(f'{level} {path}:{line}: {message}')
            errors += level == 'ERROR'
            warnings += level == 'WARN'
    print(f'Preflight: {errors} error(s), {warnings} warning(s). Vẫn cần chạy Typst và kiểm tra vật lí/PDF.')
    return 1 if errors else 0


if __name__ == '__main__':
    raise SystemExit(main())

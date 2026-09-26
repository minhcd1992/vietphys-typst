"""Build a deterministic runtime ZIP. Python 3.11+, no application dependencies."""
import argparse
import hashlib
from pathlib import Path
import tomllib
import zipfile

ROOT = Path(__file__).resolve().parent.parent
RUNTIME = ("typst.toml", "vietphys.typ", "components", "layout", "themes", "README.md", "CHANGELOG.md")


def build(output_dir: Path) -> Path:
    package = tomllib.loads((ROOT / "typst.toml").read_text(encoding="utf-8"))["package"]
    output_dir.mkdir(parents=True, exist_ok=True)
    output = output_dir / f"{package['name']}-{package['version']}.zip"
    files = []
    for name in RUNTIME:
        source = ROOT / name
        files.extend(sorted(source.rglob("*")) if source.is_dir() else [source])
    with zipfile.ZipFile(output, "w", compression=zipfile.ZIP_DEFLATED) as archive:
        for source in sorted(p for p in files if p.is_file()):
            if source.is_symlink():
                raise ValueError(f"Symlinks are not permitted in releases: {source}")
            entry = zipfile.ZipInfo(source.relative_to(ROOT).as_posix(), (2020, 1, 1, 0, 0, 0))
            entry.compress_type = zipfile.ZIP_DEFLATED
            entry.external_attr = 0o100644 << 16
            contents = source.read_bytes()
            # Git checkout line endings must not change the release checksum.
            if source.suffix in {".typ", ".toml", ".md", ".svg"}:
                contents = contents.replace(b"\r\n", b"\n")
            archive.writestr(entry, contents)
    digest = hashlib.sha256(output.read_bytes()).hexdigest()
    output.with_suffix(".zip.sha256").write_text(f"{digest}  {output.name}\n", encoding="utf-8")
    return output


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--output", type=Path, default=ROOT / "dist")
    print(build(parser.parse_args().output))

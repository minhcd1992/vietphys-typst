"""Compile all maintained examples with the library repository as project root."""
import os
from pathlib import Path
import subprocess
import tempfile

ROOT = Path(__file__).resolve().parent.parent


def main():
    failures = []
    with tempfile.TemporaryDirectory(prefix="vietphys-examples-") as directory:
        for source in sorted((ROOT / "examples").glob("*.typ")):
            result = subprocess.run(
                [os.getenv("TYPST_BINARY", "typst"), "compile", str(source), str(Path(directory) / f"{source.stem}.pdf"),
                 "--root", str(ROOT), "--diagnostic-format", "short"],
                capture_output=True, text=True, encoding="utf-8", timeout=60,
            )
            print(f"{'FAIL' if result.returncode else 'PASS'} {source.name}", flush=True)
            if result.returncode:
                failures.append(source.name)
                print(result.stderr)
    return bool(failures)


if __name__ == "__main__":
    raise SystemExit(main())

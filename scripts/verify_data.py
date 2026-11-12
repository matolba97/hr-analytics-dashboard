"""Verify separately obtained local CSVs against the credited source; no downloads."""
import argparse
import hashlib
import json
from pathlib import Path


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('folder', type=Path)
    args = parser.parse_args()
    root = Path(__file__).resolve().parents[1]
    manifest = json.loads((root / 'docs/validation/data-provenance.json').read_text())
    failures = []
    for item in manifest['files']:
        path = args.folder / item['file']
        if not path.is_file():
            failures.append(f"Missing: {item['file']}")
        elif hashlib.file_digest(path.open('rb'), 'sha256').hexdigest() != item['sha256']:
            failures.append(f"Different data version: {item['file']}")
    for failure in failures:
        print(failure)
    print(f"{len(manifest['files']) - len(failures)}/10 source files match the verified revision.")
    return bool(failures)


if __name__ == '__main__':
    raise SystemExit(main())

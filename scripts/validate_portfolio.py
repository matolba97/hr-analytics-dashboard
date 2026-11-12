"""Check source structure, model bindings, documentation links and publication scope.

This static check does not execute DAX or replace Power BI Desktop acceptance.
"""
import json
import re
import subprocess
from pathlib import Path
from urllib.parse import unquote

ROOT = Path(__file__).resolve().parents[1]


def main():
    errors = []
    report = ROOT / 'PowerBI-Project/HR Intelligence.Report'
    model = ROOT / 'PowerBI-Project/HR Intelligence.SemanticModel/definition'
    inventory = json.loads((ROOT / 'scripts/model-inventory.json').read_text())
    valid = {f'{table}.{column}' for table, columns in inventory['tables'].items() for column in columns}
    valid |= {'Measures_HR.' + measure for measure in inventory['measures']}
    valid.add('Dim_Date.Calendar')
    bindings = set()

    def inspect(value):
        if isinstance(value, list):
            for child in value:
                inspect(child)
        elif isinstance(value, dict):
            for kind in ('Column', 'Measure', 'Hierarchy'):
                obj = value.get(kind, {})
                if isinstance(obj, dict):
                    table = obj.get('Expression', {}).get('SourceRef', {}).get('Entity')
                    name = obj.get('Property') or obj.get('Hierarchy')
                    if table and name:
                        bindings.add(f'{table}.{name}')
            for child in value.values():
                inspect(child)

    json_count = 0
    for path in ROOT.rglob('*.json'):
        if '.git' in path.parts or 'native' in path.parts:
            continue
        try:
            obj = json.loads(path.read_text(encoding='utf-8-sig'))
            json_count += 1
            if report in path.parents:
                inspect(obj)
        except (ValueError, UnicodeError) as exc:
            errors.append(f'Invalid JSON: {path.relative_to(ROOT)}: {exc}')
    errors.extend('Unresolved binding: ' + name for name in sorted(bindings - valid))
    pages = [json.loads(p.read_text()) for p in report.glob('definition/pages/*/page.json')]
    visible = [p for p in pages if p.get('visibility') != 'HiddenInViewMode']
    measures = (model / 'tables/Measures_HR.tmdl').read_text(encoding='utf-8-sig')
    measure_count = len(re.findall(r'^\tmeasure ', measures, re.M))
    relationships = len(re.findall(r'^relationship ', (model / 'relationships.tmdl').read_text(), re.M))
    cards = []
    for path in report.glob('definition/pages/*/visuals/*/visual.json'):
        obj = json.loads(path.read_text())
        if obj.get('visual', {}).get('visualType') == 'card':
            cards.append(obj)
            tooltip = obj.get('visual', {}).get('visualContainerObjects', {}).get('visualTooltip')
            if not tooltip:
                errors.append('Card without explanatory tooltip: ' + path.parent.name)
    for label, observed, expected in [('pages', len(pages), 51), ('visible pages', len(visible), 10),
                                       ('measures', measure_count, 120), ('relationships', relationships, 20),
                                       ('KPI cards', len(cards), 67)]:
        if observed != expected:
            errors.append(f'{label}: expected {expected}, found {observed}')
    for path in ROOT.rglob('*.md'):
        if '.git' in path.parts:
            continue
        for target in re.findall(r'!?\[[^\]]*\]\(([^)]+)\)', path.read_text(encoding='utf-8-sig')):
            target = target.split('#', 1)[0]
            if not target or re.match(r'^[a-zA-Z]+:', target):
                continue
            if not (path.parent / unquote(target)).exists():
                errors.append(f'Broken local link in {path.relative_to(ROOT)}: {target}')
    # Inspect what Git will publish, including the first pre-commit staging area.
    result = subprocess.run(['git', 'ls-files', '-z'], cwd=ROOT, capture_output=True, check=True)
    tracked = result.stdout.decode().split('\0')
    blocked = {'.csv', '.xlsx', '.pbix', '.pbit', '.abf', '.zip', '.key', '.pem', '.pfx'}
    secret_patterns = [r'gh[pousr]_[A-Za-z0-9]{30,}', r'github_pat_[A-Za-z0-9_]{30,}',
                       r'AIza[0-9A-Za-z_-]{30,}', r'-----BEGIN (?:RSA |EC |OPENSSH )?PRIVATE KEY-----']
    for name in filter(None, tracked):
        path = Path(name)
        if path.suffix.lower() in blocked or '.pbi' in path.parts or 'node_modules' in path.parts or path.name.startswith('.env'):
            errors.append('Excluded material tracked by Git: ' + name)
        if path.suffix.lower() not in {'.png', '.jpg', '.jpeg'}:
            text = (ROOT / path).read_text(encoding='utf-8', errors='replace')
            if any(re.search(pattern, text) for pattern in secret_patterns):
                errors.append('Possible credential in: ' + name)
    summary = {'static_checks_passed': not errors, 'json_files_parsed': json_count,
               'pages': len(pages), 'visible_pages': len(visible), 'measures': measure_count,
               'relationships': relationships, 'cards_with_tooltips': len(cards),
               'resolved_bindings': len(bindings), 'tracked_files_checked': len(list(filter(None, tracked))),
               'errors': errors, 'scope': 'Static checks only; no DAX execution or Service rendering claim.'}
    print(json.dumps(summary, indent=2))
    return bool(errors)


if __name__ == '__main__':
    raise SystemExit(main())

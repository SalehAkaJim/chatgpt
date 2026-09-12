#!/usr/bin/env python3
"""Record a completed educational review, or report release readiness."""
import argparse
import json
from collections import Counter
from datetime import datetime, timezone
from pathlib import Path

from content_quality import ROOT, content_hash, review_path, review_state, quality_errors
from validate_content import validate_schema, validate_semantics


def main():
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument('path', type=Path)
    ap.add_argument('--decision', choices=['approved', 'rejected'])
    ap.add_argument('--reviewer')
    ap.add_argument('--reviewer-type', choices=['human', 'ai'])
    ap.add_argument('--evidence', type=Path, help='JSON with notes and per-check results/evidence')
    ap.add_argument('--require-approved', action='store_true')
    ap.add_argument('--output', type=Path)
    args = ap.parse_args()
    paths = sorted(args.path.rglob('*.json')) if args.path.is_dir() else [args.path]
    if not paths:
        ap.error('No content batches found')
    if args.decision and (len(paths) != 1 or not args.reviewer or not args.reviewer_type or not args.evidence):
        ap.error('A decision requires one batch, reviewer, reviewer type and evidence file')
    rows = []
    errors = []
    for path in paths:
        batch = json.loads(path.read_text())
        structural = []
        validate_schema(batch, ROOT / 'content/batch.schema.json', structural)
        if not structural:
            validate_semantics(batch, structural, [])
        if structural:
            errors.extend([str(path) + ': ' + e for e in structural])
            continue
        if args.decision:
            evidence = json.loads(args.evidence.read_text())
            record = {'batch_id': batch['batch_id'], 'content_sha256': content_hash(batch),
                      'decision': args.decision, 'reviewer': args.reviewer,
                      'reviewer_type': args.reviewer_type,
                      'reviewed_at': datetime.now(timezone.utc).isoformat(),
                      'notes': evidence.get('notes'), 'checks': evidence.get('checks')}
            # Validate the proposed record before writing anything persistent.
            import tempfile
            with tempfile.TemporaryDirectory() as temp:
                proposed = review_path(batch, Path(temp))
                proposed.parent.mkdir(parents=True)
                proposed.write_text(json.dumps(record))
                review_state(batch, Path(temp))
            target = review_path(batch)
            target.parent.mkdir(parents=True, exist_ok=True)
            target.write_text(json.dumps(record, ensure_ascii=False, indent=2) + '\n')
            for item in batch['items']:
                if item['data'].get('status') != 'archived':
                    item['data']['status'] = args.decision
            path.write_text(json.dumps(batch, ensure_ascii=False, indent=2) + '\n')
        state = review_state(batch)
        rows.append({'batch_id': batch['batch_id'], 'level': batch['cefr'],
                     'structure': 'valid', 'educational_review': state['state'],
                     'content_sha256': content_hash(batch),
                     'release_ready': not quality_errors(batch, require_approved=True)})
        errors.extend([batch['batch_id'] + ': ' + e for e in quality_errors(batch, args.require_approved)])
    report = {'batches': len(rows), 'states': dict(Counter(r['educational_review'] for r in rows)),
              'release_ready': sum(r['release_ready'] for r in rows), 'items': rows, 'errors': errors}
    output = json.dumps(report, ensure_ascii=False, indent=2) + '\n'
    if args.output:
        args.output.parent.mkdir(parents=True, exist_ok=True)
        args.output.write_text(output)
    print(json.dumps({'batches': len(rows), 'states': report['states'],
                      'release_ready': report['release_ready'], 'errors': errors}, ensure_ascii=False))
    if errors:
        raise SystemExit(1)


if __name__ == '__main__':
    main()

"""Content review evidence, separate from generation and structural validation.

A review is a versioned attestation by its named reviewer, not a cryptographic
identity check. Git history/branch review supplies the audit trail.
"""
import copy
import hashlib
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
REVIEW_DIR = ROOT / 'content/reviews'
CHECKS = ('accuracy', 'naturalness', 'task_alignment', 'answer_and_feedback',
          'level_and_progression', 'dialogue_coherence', 'audio_text_alignment')


def content_hash(batch):
    clean = copy.deepcopy(batch)
    clean.pop('_path', None)
    for item in clean['items']:
        item['data'].pop('status', None)
    raw = json.dumps(clean, ensure_ascii=False, sort_keys=True, separators=(',', ':'))
    return hashlib.sha256(raw.encode()).hexdigest()


def review_path(batch, directory=REVIEW_DIR):
    # Filenames cannot be supplied as paths in untrusted batch metadata.
    key = hashlib.sha256(batch['batch_id'].encode()).hexdigest()
    return directory / batch['target_language'] / (key + '.json')


def review_state(batch, directory=REVIEW_DIR):
    path = review_path(batch, directory)
    if not path.exists():
        return {'state': 'pending', 'content_sha256': content_hash(batch)}
    record = json.loads(path.read_text())
    if record.get('batch_id') != batch['batch_id']:
        raise ValueError('Review batch identity mismatch')
    if record.get('content_sha256') != content_hash(batch):
        return {**record, 'state': 'stale'}
    if record.get('decision') not in {'approved', 'rejected'}:
        raise ValueError('Invalid review decision')
    if (not record.get('reviewer', '').strip() or
            record.get('reviewer_type') not in {'human', 'ai'} or
            not record.get('reviewed_at') or not record.get('notes', '').strip()):
        raise ValueError('Review needs reviewer, type, time and substantive notes')
    checks = record.get('checks', {})
    if record['decision'] == 'approved':
        for key in CHECKS:
            check = checks.get(key, {})
            if check.get('result') not in {'pass', 'not_applicable'} or not check.get('evidence', '').strip():
                raise ValueError('Missing review evidence: ' + key)
    return {**record, 'state': record['decision']}


def quality_errors(batch, require_approved=False, directory=REVIEW_DIR):
    # This rollout migrates the English course. Preserve structural validation
    # of legacy language examples until their lifecycle migration is authorized.
    # An explicit release check, or an existing review record, always opts in.
    if (batch.get('target_language') != 'en' and not require_approved
            and not review_path(batch, directory).exists()):
        return []
    try:
        review = review_state(batch, directory)
    except (ValueError, TypeError, KeyError) as exc:
        return ['Invalid educational review: ' + str(exc)]
    statuses = {i['data'].get('status', 'generated') for i in batch['items']}
    errors = []
    if 'approved' in statuses and review['state'] != 'approved':
        errors.append('approved content requires an educational review of this exact content hash')
    if require_approved and (review['state'] != 'approved' or statuses != {'approved'}):
        errors.append('Release requires approved items and a current educational review')
    return errors


def mark_validated(batch):
    """Call only after schema and semantic validation; never approve content."""
    review = review_state(batch)
    for item in batch['items']:
        status = item['data'].get('status', 'generated')
        if status in {'rejected', 'archived'}:
            continue
        item['data']['status'] = 'approved' if review['state'] == 'approved' else 'validated'
    return batch

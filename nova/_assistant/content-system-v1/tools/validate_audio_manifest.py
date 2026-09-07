#!/usr/bin/env python3
from __future__ import annotations

import argparse
import hashlib
import json
import sys
from pathlib import Path


def load(path: Path):
    return json.loads(path.read_text(encoding='utf-8'))


def required_audio(lesson: dict):
    required = {}
    for item in lesson.get('lexicalItems', []):
        if item.get('audioEligible') is True:
            required[item['lexicalKey']] = {'audioClass':'lexical_item','sourceText':item['displayForm']}
    for turn in lesson.get('turns', []):
        if turn.get('audioRequired') is True:
            required[turn['turnKey']] = {'audioClass':'turn','sourceText':turn['textEn']}
    return required


def main() -> int:
    p = argparse.ArgumentParser()
    p.add_argument('lesson', type=Path)
    p.add_argument('manifest', type=Path)
    p.add_argument('--repo-root', type=Path, default=Path('.'))
    args = p.parse_args()

    lesson = load(args.lesson)
    manifest = load(args.manifest)
    errors = []
    source_hash = hashlib.sha256(args.lesson.read_bytes()).hexdigest()

    if manifest.get('lessonKey') != lesson.get('lessonKey'):
        errors.append('lessonKey mismatch')
    if manifest.get('sourceHash') != source_hash:
        errors.append('manifest sourceHash does not match current Lesson source')

    required = required_audio(lesson)
    found = {}
    seen_paths = set()
    for item in manifest.get('items', []):
        key = item.get('sourceKey')
        if key in found:
            errors.append(f'duplicate sourceKey: {key}')
        found[key] = item
        expected = required.get(key)
        if not expected:
            errors.append(f'unexpected audio item: {key}')
            continue
        if item.get('audioClass') != expected['audioClass']:
            errors.append(f'{key}: audioClass mismatch')
        if item.get('sourceText') != expected['sourceText']:
            errors.append(f'{key}: sourceText mismatch')
        if item.get('sourceHash') != source_hash:
            errors.append(f'{key}: sourceHash mismatch')
        if not item.get('voiceId'):
            errors.append(f'{key}: missing voiceId')
        if item.get('decoded') is not True or not isinstance(item.get('durationMs'),int) or item.get('durationMs',0)<=0:
            errors.append(f'{key}: decode/duration QA failed')
        if item.get('status') != 'PASS':
            errors.append(f'{key}: status is not PASS')
        path = item.get('path')
        if not path or path in seen_paths:
            errors.append(f'{key}: missing or duplicate path')
        seen_paths.add(path)
        if path:
            file_path = args.repo_root / path
            if not file_path.is_file() or file_path.stat().st_size == 0:
                errors.append(f'{key}: audio file missing or empty')
            else:
                digest = hashlib.sha256(file_path.read_bytes()).hexdigest()
                if digest != item.get('fileSha256'):
                    errors.append(f'{key}: file hash mismatch')

    for key in required:
        if key not in found:
            errors.append(f'missing required audio: {key}')

    report = {
        'status':'PASS' if not errors else 'FAIL',
        'lessonKey':lesson.get('lessonKey'),
        'requiredAudioCount':len(required),
        'manifestAudioCount':len(found),
        'errors':errors
    }
    print(json.dumps(report,ensure_ascii=False,indent=2))
    return 0 if not errors else 2


if __name__ == '__main__':
    sys.exit(main())

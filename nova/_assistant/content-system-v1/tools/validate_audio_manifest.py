#!/usr/bin/env python3
from __future__ import annotations

import argparse
import hashlib
import json
import sys
from pathlib import Path


def load_json(path: Path):
    with path.open('r', encoding='utf-8') as f:
        return json.load(f)


def canonical_required_audio(chapter: dict):
    required = {}
    for unit in chapter.get('learningUnits', []):
        if unit.get('unitType') == 'lexical_item' and unit.get('audioEligible') is True:
            required[unit['unitKey']] = {
                'audioClass': 'lexical_item',
                'sourceText': unit.get('displayForm', ''),
            }
    for lesson in chapter.get('lessons', []):
        for turn in lesson.get('turns', []):
            if turn.get('audioRequired', True):
                required[f"{lesson.get('lessonKey')}/{turn.get('turnKey')}"] = {
                    'audioClass': 'turn',
                    'sourceText': turn.get('textEn', ''),
                }
    return required


def main() -> int:
    p = argparse.ArgumentParser(description='Validate Nova audio manifest against canonical Chapter source')
    p.add_argument('chapter', type=Path)
    p.add_argument('manifest', type=Path)
    p.add_argument('--audio-root', type=Path)
    args = p.parse_args()

    chapter = load_json(args.chapter)
    manifest = load_json(args.manifest)
    errors, warnings = [], []

    chapter_key = chapter.get('chapterKey')
    source_hash = manifest.get('sourceHash')
    if manifest.get('chapterKey') != chapter_key:
        errors.append('manifest chapterKey does not match canonical Chapter')
    if not isinstance(source_hash, str) or len(source_hash) != 64:
        errors.append('manifest sourceHash must be a 64-character SHA-256 hex string')

    required = canonical_required_audio(chapter)
    found = {}
    paths = set()
    for i, item in enumerate(manifest.get('items', [])):
        key = item.get('sourceKey')
        label = key or f'items[{i}]'
        if key in found:
            errors.append(f'duplicate audio sourceKey: {key}')
        found[key] = item

        path = item.get('path')
        if path in paths:
            errors.append(f'duplicate audio path: {path}')
        paths.add(path)

        expected = required.get(key)
        if expected:
            if item.get('audioClass') != expected['audioClass']:
                errors.append(f'{label}: audioClass mismatch')
            if item.get('sourceText') != expected['sourceText']:
                errors.append(f'{label}: sourceText differs from canonical source')
        else:
            warnings.append(f'{label}: manifest item is not required by current canonical source')

        if item.get('sourceHash') != source_hash:
            errors.append(f'{label}: sourceHash mismatch')
        if not item.get('voiceKey'):
            errors.append(f'{label}: missing voiceKey')
        if item.get('decoded') is not True:
            errors.append(f'{label}: decode check did not PASS')
        if not isinstance(item.get('durationMs'), int) or item.get('durationMs', 0) <= 0:
            errors.append(f'{label}: invalid durationMs')
        sha = item.get('fileSha256')
        if not isinstance(sha, str) or len(sha) != 64:
            errors.append(f'{label}: invalid fileSha256')
        if item.get('status') != 'PASS':
            errors.append(f'{label}: status is not PASS')

        if args.audio_root and path:
            file_path = args.audio_root / path
            if not file_path.is_file():
                errors.append(f'{label}: audio file missing at {file_path}')
            else:
                digest = hashlib.sha256(file_path.read_bytes()).hexdigest()
                if sha and digest != sha:
                    errors.append(f'{label}: file SHA-256 does not match manifest')
                if file_path.stat().st_size == 0:
                    errors.append(f'{label}: audio file is empty')

    for key in sorted(required):
        if key not in found:
            errors.append(f'missing required audio: {key}')

    report = {
        'status': 'PASS' if not errors else 'FAIL',
        'chapter': chapter_key,
        'requiredAudioCount': len(required),
        'manifestAudioCount': len(found),
        'errors': errors,
        'warnings': warnings,
    }
    print(json.dumps(report, ensure_ascii=False, indent=2))
    return 0 if not errors else 2


if __name__ == '__main__':
    sys.exit(main())

#!/usr/bin/env python3
from __future__ import annotations
import argparse
import hashlib
import json
from pathlib import Path
from generate_audio import asset_key, collect, inside, load, probe


def validate_audio(lesson_path, manifest_path, root, voices_path):
    lesson, manifest, voices = load(lesson_path), load(manifest_path), load(voices_path)
    errors = []
    source_hash = hashlib.sha256(lesson_path.read_bytes()).hexdigest()
    if manifest.get('lessonKey') != lesson['lessonKey'] or manifest.get('sourceHash') != source_hash:
        errors.append('Lesson identity/source hash mismatch')
    if manifest.get('status') != 'PASS':
        errors.append('Manifest status is not PASS')
    if manifest.get('modelId') != voices.get('modelId', 'eleven_multilingual_v2'):
        errors.append('Voice model mismatch')
    required = {(i['audioClass'], i['sourceKey']): i for i in collect(lesson, voices)}
    found = set()
    paths = {}
    for item in manifest.get('items', []):
        key = (item.get('audioClass'), item.get('sourceKey'))
        expected = required.get(key)
        if key in found or expected is None:
            errors.append(f'{key}: duplicate or unexpected audio item')
            continue
        found.add(key)
        if item.get('sourceText') != expected['sourceText'] or item.get('sourceHash') != source_hash:
            errors.append(f'{key}: text/hash mismatch')
        spec = expected['voiceSpec']
        if not item.get('voiceId') or (spec.get('voiceId') and item['voiceId'] != spec['voiceId']):
            errors.append(f'{key}: voice mismatch')
        elif not spec.get('voiceId') and item.get('voiceKey') != spec.get('voiceName'):
            errors.append(f'{key}: voice name mismatch')
        if item.get('status') != 'PASS' or item.get('decoded') is not True:
            errors.append(f'{key}: audio QA status failed')
        relative = item.get('path', '')
        prefix = f"nova/audio/{'lexical' if key[0] == 'lexical_item' else 'turns'}/{lesson['courseCode']}/"
        if not relative.startswith(prefix) or (key[0] == 'turn' and relative != expected['path']):
            errors.append(f'{key}: invalid audio path')
            continue
        signature = (item.get('sourceText'), item.get('voiceId'))
        if relative in paths and paths[relative] != signature:
            errors.append(f'{key}: conflicting shared audio path')
        paths[relative] = signature
        if key[0] == 'lexical_item' and item.get('assetKey'):
            if item['assetKey'] != asset_key(item['sourceText'], item['voiceId'], manifest['modelId']):
                errors.append(f'{key}: lexical asset identity mismatch')
        try:
            file_path = inside(root, relative)
            decoded, duration = probe(file_path)
            if not decoded:
                errors.append(f'{key}: audio file missing or cannot be decoded')
                continue
            if hashlib.sha256(file_path.read_bytes()).hexdigest() != item.get('fileSha256'):
                errors.append(f'{key}: file hash mismatch')
            if not isinstance(item.get('durationMs'), int) or abs(item['durationMs'] - duration) > 2:
                errors.append(f'{key}: duration mismatch')
        except (ValueError, OSError) as error:
            errors.append(f'{key}: {error}')
    for key in required.keys() - found:
        errors.append(f'{key}: missing required audio')
    return {'status': 'FAIL' if errors else 'PASS', 'lessonKey': lesson['lessonKey'],
            'sourceHash': source_hash, 'requiredAudioCount': len(required), 'manifestAudioCount': len(found), 'errors': errors}


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('lesson', type=Path)
    parser.add_argument('manifest', type=Path)
    parser.add_argument('--repo-root', type=Path, default=Path('.'))
    parser.add_argument('--voices', type=Path)
    args = parser.parse_args()
    voices = args.voices or args.lesson.parents[2] / 'audio_voices.json'
    report = validate_audio(args.lesson, args.manifest, args.repo_root, voices)
    print(json.dumps(report, ensure_ascii=False, indent=2))
    return 0 if report['status'] == 'PASS' else 2


if __name__ == '__main__':
    raise SystemExit(main())

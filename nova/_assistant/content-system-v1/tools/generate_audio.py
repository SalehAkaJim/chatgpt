#!/usr/bin/env python3
"""Generate mandatory audio; reuse verified word/lexeme assets across a Course."""
from __future__ import annotations
import argparse
import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess
import sys
import tempfile
import time
import urllib.error
import urllib.request

from language_units import is_word_unit

API_BASE = 'https://api.elevenlabs.io/v1'


def load(path):
    return json.loads(Path(path).read_text(encoding='utf-8'))


def save(path, value):
    path = Path(path)
    path.parent.mkdir(parents=True, exist_ok=True)
    with tempfile.NamedTemporaryFile('w', encoding='utf-8', dir=path.parent, delete=False) as f:
        json.dump(value, f, ensure_ascii=False, indent=2)
        f.write('\n')
        tmp = Path(f.name)
    tmp.replace(path)


def resolve_voice(spec, api_key):
    if spec.get('voiceId'):
        return spec['voiceId'], spec.get('voiceName') or spec['voiceId']
    if not api_key or not spec.get('voiceName'):
        raise ValueError('An explicit voiceId is required for offline reuse')
    req = urllib.request.Request(f'{API_BASE}/voices', headers={'xi-api-key': api_key})
    with urllib.request.urlopen(req, timeout=30) as response:
        voices = json.loads(response.read()).get('voices', [])
    matches = [v for v in voices if v.get('name') == spec['voiceName']]
    if len(matches) != 1:
        raise ValueError(f"Voice name must resolve unambiguously: {spec['voiceName']}")
    return matches[0]['voice_id'], spec['voiceName']


def synthesize(text, voice_id, api_key, output, model_id):
    if not api_key:
        raise ValueError('ELEVENLABS_API_KEY is required for new audio')
    payload = json.dumps({'text': text, 'model_id': model_id}).encode('utf-8')
    request = urllib.request.Request(
        f'{API_BASE}/text-to-speech/{voice_id}', data=payload, method='POST',
        headers={'xi-api-key': api_key, 'Content-Type': 'application/json', 'Accept': 'audio/mpeg'})
    output.parent.mkdir(parents=True, exist_ok=True)
    for attempt in range(3):
        try:
            with urllib.request.urlopen(request, timeout=120) as response:
                data = response.read()
            break
        except urllib.error.HTTPError as error:
            if error.code != 429 or attempt == 2:
                raise
            time.sleep(min(2 ** (attempt + 1), 8))
    with tempfile.NamedTemporaryFile(suffix='.mp3', dir=output.parent, delete=False) as f:
        f.write(data)
        tmp = Path(f.name)
    try:
        if not probe(tmp)[0]:
            raise ValueError('Generated audio failed decode/duration validation')
        tmp.replace(output)
    finally:
        tmp.unlink(missing_ok=True)


def probe(path):
    path = Path(path)
    if not path.is_file() or not path.stat().st_size:
        return False, 0
    if not shutil.which('ffprobe') or not shutil.which('ffmpeg'):
        raise RuntimeError('ffprobe and ffmpeg are required')
    result = subprocess.run(['ffprobe', '-v', 'error', '-show_entries', 'format=duration',
                             '-of', 'default=noprint_wrappers=1:nokey=1', str(path)],
                            capture_output=True, text=True)
    try:
        duration = int(float(result.stdout.strip()) * 1000)
    except ValueError:
        return False, 0
    if result.returncode or duration <= 0:
        return False, 0
    decoded = subprocess.run(['ffmpeg', '-v', 'error', '-xerror', '-i', str(path), '-f', 'null', '-'],
                             capture_output=True)
    return decoded.returncode == 0, duration


def asset_key(text, voice_id, model_id):
    identity = {'provider': 'ElevenLabs', 'sourceText': text, 'voiceId': voice_id, 'modelId': model_id}
    return hashlib.sha256(json.dumps(identity, sort_keys=True, ensure_ascii=False, separators=(',', ':')).encode()).hexdigest()


def collect(lesson, voices):
    items = []
    course, key = lesson['courseCode'], lesson['lessonKey']
    for item in lesson.get('lexicalItems', []):
        if item.get('audioEligible') and is_word_unit(item):
            items.append({'sourceKey': item['lexicalKey'], 'audioClass': 'lexical_item',
                          'sourceText': item['displayForm'], 'voiceSpec': voices['lexicalVoice']})
    for turn in lesson.get('turns', []):
        if not turn.get('audioRequired'):
            continue
        if turn.get('characterKey'):
            spec = voices.get('characters', {}).get(turn.get('characterKey'))
        elif lesson.get('curriculum', {}).get('story') and turn['role'] in {'character','learner'}:
            raise ValueError(f"Story Turn {turn['turnKey']} requires its own character voice; no global learner fallback")
        else:
            spec = voices.get('learnerReferenceVoice' if turn['role'] == 'learner' else 'systemVoice')
        if not spec:
            raise ValueError(f"No voice mapping for {turn['turnKey']}")
        items.append({'sourceKey': turn['turnKey'], 'audioClass': 'turn', 'sourceText': turn['textEn'],
                      'voiceSpec': spec, 'path': f'nova/audio/turns/{course}/{key}/{turn["turnKey"]}.mp3'})
    return items


def inside(root, relative):
    path = (root / relative).resolve()
    path.relative_to(root.resolve())
    return path


def can_reuse(previous, previous_model, item, voice_id, model_id, output):
    if not previous or previous_model != model_id:
        return False, False, 0, ''
    if any(previous.get(k) != item.get(k) for k in ('sourceText', 'path')) or previous.get('voiceId') != voice_id:
        return False, False, 0, ''
    if not output.is_file() or not previous.get('fileSha256'):
        return False, False, 0, ''
    digest = hashlib.sha256(output.read_bytes()).hexdigest()
    if digest != previous['fileSha256']:
        return False, False, 0, digest
    decoded, duration = probe(output)
    return decoded and duration > 0, decoded, duration, digest


def lexical_registry(root, course):
    path = root / 'nova/audio/lexical' / course / 'index.json'
    registry = load(path) if path.is_file() else {'version': 1, 'courseCode': course, 'assets': {}}
    if registry.get('courseCode') != course:
        raise ValueError('Lexical registry Course mismatch')
    for manifest_path in sorted((root / 'nova/courses' / course / 'lessons').glob('*/audio.manifest.json')):
        manifest = load(manifest_path)
        for item in manifest.get('items', []):
            if item.get('audioClass') != 'lexical_item' or not all(item.get(k) for k in ('voiceId', 'sourceText', 'path')):
                continue
            model = manifest.get('modelId')
            key = asset_key(item['sourceText'], item['voiceId'], model)
            if key in registry['assets']:
                continue
            if not item['path'].startswith(f'nova/audio/lexical/{course}/'):
                continue
            output = inside(root, item['path'])
            reusable, _, _, _ = can_reuse(item, model, item, item['voiceId'], model, output)
            if reusable:
                registry['assets'][key] = {k: item[k] for k in
                    ('sourceText', 'voiceId', 'voiceKey', 'path', 'fileSha256', 'durationMs')}
                registry['assets'][key]['modelId'] = model
    return path, registry


def _checkpoint(manifest_path, lesson, source_hash, model, items):
    save(manifest_path, {
        'version': '2.2.0', 'lessonKey': lesson['lessonKey'], 'sourceHash': source_hash,
        'provider': 'ElevenLabs', 'modelId': model, 'items': list(items.values()), 'status': 'FAIL'
    })


def generate(lesson_path, voices_path, root, manifest_path, reuse_only=False):
    raw = lesson_path.read_bytes()
    lesson, voices = json.loads(raw), load(voices_path)
    model = voices.get('modelId', 'eleven_multilingual_v2')
    api_key = os.getenv('ELEVENLABS_API_KEY')
    source_hash = hashlib.sha256(raw).hexdigest()
    previous = load(manifest_path) if manifest_path.is_file() else {}
    previous_items = {(i['audioClass'], i['sourceKey']): i for i in previous.get('items', [])}
    registry_path, registry = lexical_registry(root, lesson['courseCode'])
    output_items, reused, generated = [], 0, 0
    checkpoints = dict(previous_items)

    try:
        for item in collect(lesson, voices):
            voice_id, voice_name = resolve_voice(item['voiceSpec'], api_key)
            voice_key = item['voiceSpec'].get('voiceKey') or item['voiceSpec'].get('voiceName') or voice_id
            if item['audioClass'] == 'lexical_item':
                akey = asset_key(item['sourceText'], voice_id, model)
                reg = registry['assets'].get(akey)
                item['path'] = reg['path'] if reg else f'nova/audio/lexical/{lesson["courseCode"]}/{akey}.mp3'
                previous_item = reg
                previous_model = reg.get('modelId') if reg else None
            else:
                previous_item = previous_items.get((item['audioClass'], item['sourceKey']))
                previous_model = previous.get('modelId')

            output = inside(root, item['path'])
            reusable, decoded, duration, digest = can_reuse(previous_item, previous_model, item, voice_id, model, output)
            if reusable:
                reused += 1
            else:
                if reuse_only:
                    raise ValueError(f"Missing verified audio in reuse-only mode: {lesson['lessonKey']}/{item['sourceKey']}")
                synthesize(item['sourceText'], voice_id, api_key, output, model)
                decoded, duration = probe(output)
                digest = hashlib.sha256(output.read_bytes()).hexdigest()
                generated += 1
            if not decoded or duration <= 0:
                raise ValueError(f"Invalid audio: {item['sourceKey']}")

            entry = {
                'sourceKey': item['sourceKey'], 'audioClass': item['audioClass'], 'sourceText': item['sourceText'],
                'voiceId': voice_id, 'voiceKey': voice_key, 'voiceName': voice_name, 'path': item['path'],
                'fileSha256': digest, 'durationMs': duration, 'sourceHash': source_hash, 'decoded': True,
                'status': 'PASS'
            }
            output_items.append(entry)
            checkpoints[(entry['audioClass'], entry['sourceKey'])] = entry
            _checkpoint(manifest_path, lesson, source_hash, model, checkpoints)

            if item['audioClass'] == 'lexical_item':
                registry['assets'][akey] = {
                    'sourceText': item['sourceText'], 'voiceId': voice_id, 'voiceKey': voice_key,
                    'path': item['path'], 'fileSha256': digest, 'durationMs': duration, 'modelId': model
                }
                save(registry_path, registry)
    except Exception:
        if checkpoints:
            _checkpoint(manifest_path, lesson, source_hash, model, checkpoints)
        raise

    manifest = {
        'version': '2.2.0', 'lessonKey': lesson['lessonKey'], 'sourceHash': source_hash,
        'provider': 'ElevenLabs', 'modelId': model, 'items': output_items, 'status': 'PASS'
    }
    save(manifest_path, manifest)
    return {'status': 'PASS', 'count': len(output_items), 'reused': reused, 'generated': generated}


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('lesson', type=Path)
    parser.add_argument('--voices', type=Path, required=True)
    parser.add_argument('--repo-root', type=Path, default=Path('.'))
    parser.add_argument('--manifest', type=Path, required=True)
    parser.add_argument('--reuse-only', action='store_true')
    args = parser.parse_args()
    try:
        report = generate(args.lesson, args.voices, args.repo_root.resolve(), args.manifest, args.reuse_only)
    except Exception as error:
        print(str(error), file=sys.stderr)
        return 2
    print(json.dumps(report))
    return 0


if __name__ == '__main__':
    raise SystemExit(main())

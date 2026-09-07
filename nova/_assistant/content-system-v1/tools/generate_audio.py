#!/usr/bin/env python3
from __future__ import annotations

import argparse
import hashlib
import json
import os
import shutil
import subprocess
import sys
import urllib.request
from pathlib import Path

API_BASE = 'https://api.elevenlabs.io/v1'


def load_json(path: Path):
    return json.loads(path.read_text(encoding='utf-8'))


def request_json(url: str, api_key: str):
    req = urllib.request.Request(url, headers={'xi-api-key': api_key})
    with urllib.request.urlopen(req, timeout=60) as r:
        return json.loads(r.read().decode('utf-8'))


def resolve_voice(spec: dict, voices_by_name: dict[str, str]) -> tuple[str, str]:
    voice_id = spec.get('voiceId')
    voice_name = spec.get('voiceName')
    if voice_id:
        return voice_id, voice_name or voice_id
    if voice_name and voice_name in voices_by_name:
        return voices_by_name[voice_name], voice_name
    raise ValueError(f'Cannot resolve ElevenLabs voice: {spec}')


def synthesize(text: str, voice_id: str, api_key: str, output: Path, model_id: str):
    payload = json.dumps({'text': text, 'model_id': model_id}).encode('utf-8')
    req = urllib.request.Request(
        f'{API_BASE}/text-to-speech/{voice_id}',
        data=payload,
        method='POST',
        headers={
            'xi-api-key': api_key,
            'Content-Type': 'application/json',
            'Accept': 'audio/mpeg',
        },
    )
    output.parent.mkdir(parents=True, exist_ok=True)
    with urllib.request.urlopen(req, timeout=180) as r:
        output.write_bytes(r.read())


def probe_mp3(path: Path) -> tuple[bool, int]:
    if not path.is_file() or path.stat().st_size == 0:
        return False, 0
    ffprobe = shutil.which('ffprobe')
    if not ffprobe:
        raise RuntimeError('ffprobe is required for mandatory audio decode/duration QA')
    p = subprocess.run(
        [ffprobe, '-v', 'error', '-show_entries', 'format=duration', '-of', 'default=noprint_wrappers=1:nokey=1', str(path)],
        capture_output=True, text=True,
    )
    if p.returncode != 0:
        return False, 0
    try:
        duration_ms = int(float(p.stdout.strip()) * 1000)
    except Exception:
        return False, 0
    return duration_ms > 0, duration_ms


def hash_key(value: str) -> str:
    return hashlib.sha256(value.encode('utf-8')).hexdigest()


def collect(chapter: dict, voice_cfg: dict):
    course = chapter['courseCode']
    level = chapter['cefrLevel']
    chapter_key = chapter['chapterKey']
    items = []

    lexical_voice = voice_cfg['lexicalVoice']
    for unit in chapter.get('learningUnits', []):
        if unit.get('unitType') == 'lexical_item' and unit.get('audioEligible') is True:
            key = unit['unitKey']
            items.append({
                'sourceKey': key,
                'audioClass': 'lexical_item',
                'sourceText': unit['displayForm'],
                'voiceSpec': lexical_voice,
                'path': f'nova/audio/lexical/{course}/{hash_key(key)}.mp3',
            })

    for lesson in chapter.get('lessons', []):
        lkey = lesson['lessonKey']
        for turn in lesson.get('turns', []):
            if turn.get('audioRequired', True) is not True:
                continue
            role = turn['role']
            if role == 'character':
                ckey = turn.get('characterKey')
                spec = (voice_cfg.get('characters') or {}).get(ckey)
                if not spec:
                    raise ValueError(f'No voice mapping for characterKey={ckey}')
            elif role == 'learner':
                spec = voice_cfg.get('learnerReferenceVoice')
            else:
                spec = voice_cfg.get('systemVoice') or voice_cfg.get('learnerReferenceVoice')
            if not spec:
                raise ValueError(f'No voice mapping for {lkey}/{turn.get("turnKey")} role={role}')
            tkey = turn['turnKey']
            items.append({
                'sourceKey': f'{lkey}/{tkey}',
                'audioClass': 'turn',
                'sourceText': turn['textEn'],
                'voiceSpec': spec,
                'path': f'nova/audio/turns/{course}/{level}/{chapter_key}/{lkey}/{tkey}.mp3',
            })
    return items


def main() -> int:
    p = argparse.ArgumentParser(description='Generate Nova Pilot audio from canonical Chapter source')
    p.add_argument('chapter', type=Path)
    p.add_argument('voices', type=Path)
    p.add_argument('--repo-root', type=Path, default=Path('.'))
    p.add_argument('--manifest', type=Path, required=True)
    p.add_argument('--model-id', default='eleven_multilingual_v2')
    args = p.parse_args()

    api_key = os.environ.get('ELEVENLABS_API_KEY')
    if not api_key:
        print('ELEVENLABS_API_KEY is required', file=sys.stderr)
        return 2

    raw = args.chapter.read_bytes()
    source_hash = hashlib.sha256(raw).hexdigest()
    chapter = json.loads(raw.decode('utf-8'))
    voice_cfg = load_json(args.voices)

    voices = request_json(f'{API_BASE}/voices', api_key).get('voices', [])
    voices_by_name = {v.get('name'): v.get('voice_id') for v in voices if v.get('name') and v.get('voice_id')}

    manifest_items = []
    for item in collect(chapter, voice_cfg):
        voice_id, voice_key = resolve_voice(item.pop('voiceSpec'), voices_by_name)
        output = args.repo_root / item['path']
        synthesize(item['sourceText'], voice_id, api_key, output, args.model_id)
        decoded, duration_ms = probe_mp3(output)
        file_sha = hashlib.sha256(output.read_bytes()).hexdigest() if output.is_file() else ''
        status = 'PASS' if decoded and duration_ms > 0 and file_sha else 'FAIL'
        manifest_items.append({
            **item,
            'voiceKey': voice_key,
            'voiceId': voice_id,
            'sourceHash': source_hash,
            'fileSha256': file_sha,
            'durationMs': duration_ms,
            'decoded': decoded,
            'status': status,
        })

    manifest = {
        'version': '1.0.0',
        'chapterKey': chapter['chapterKey'],
        'sourceHash': source_hash,
        'provider': 'ElevenLabs',
        'modelId': args.model_id,
        'items': manifest_items,
        'status': 'PASS' if all(x['status'] == 'PASS' for x in manifest_items) else 'FAIL',
    }
    args.manifest.parent.mkdir(parents=True, exist_ok=True)
    args.manifest.write_text(json.dumps(manifest, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    print(json.dumps({'status': manifest['status'], 'count': len(manifest_items), 'manifest': str(args.manifest)}, indent=2))
    return 0 if manifest['status'] == 'PASS' else 2


if __name__ == '__main__':
    sys.exit(main())

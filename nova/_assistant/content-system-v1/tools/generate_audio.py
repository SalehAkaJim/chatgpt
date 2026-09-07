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


def load(path: Path):
    return json.loads(path.read_text(encoding='utf-8'))


def resolve_voice(spec: dict, api_key: str) -> tuple[str,str]:
    if spec.get('voiceId'):
        return spec['voiceId'], spec.get('voiceName') or spec['voiceId']
    name = spec.get('voiceName')
    if not name:
        raise ValueError(f'Invalid voice spec: {spec}')
    req = urllib.request.Request(f'{API_BASE}/voices', headers={'xi-api-key': api_key})
    with urllib.request.urlopen(req, timeout=60) as r:
        voices = json.loads(r.read().decode('utf-8')).get('voices', [])
    for voice in voices:
        if voice.get('name') == name:
            return voice['voice_id'], name
    raise ValueError(f'Cannot resolve voiceName={name}')


def synthesize(text: str, voice_id: str, api_key: str, output: Path, model_id: str):
    payload = json.dumps({'text': text, 'model_id': model_id}).encode('utf-8')
    req = urllib.request.Request(
        f'{API_BASE}/text-to-speech/{voice_id}', data=payload, method='POST',
        headers={'xi-api-key': api_key,'Content-Type':'application/json','Accept':'audio/mpeg'}
    )
    output.parent.mkdir(parents=True, exist_ok=True)
    with urllib.request.urlopen(req, timeout=180) as r:
        output.write_bytes(r.read())


def probe(path: Path) -> tuple[bool,int]:
    ffprobe = shutil.which('ffprobe')
    if not ffprobe:
        raise RuntimeError('ffprobe is required')
    p = subprocess.run(
        [ffprobe,'-v','error','-show_entries','format=duration','-of','default=noprint_wrappers=1:nokey=1',str(path)],
        capture_output=True,text=True
    )
    if p.returncode != 0:
        return False,0
    try:
        ms = int(float(p.stdout.strip()) * 1000)
    except Exception:
        return False,0
    return ms > 0, ms


def lexical_path(course: str, key: str) -> str:
    return f"nova/audio/lexical/{course}/{hashlib.sha256(key.encode('utf-8')).hexdigest()}.mp3"


def collect(lesson: dict, voices: dict):
    course = lesson['courseCode']
    lesson_key = lesson['lessonKey']
    items = []
    for item in lesson.get('lexicalItems', []):
        if item.get('audioEligible') is True:
            items.append({
                'sourceKey': item['lexicalKey'],
                'audioClass': 'lexical_item',
                'sourceText': item['displayForm'],
                'voiceSpec': voices['lexicalVoice'],
                'path': lexical_path(course,item['lexicalKey'])
            })
    for turn in lesson.get('turns', []):
        if turn.get('audioRequired') is not True:
            continue
        if turn['role'] == 'character':
            spec = (voices.get('characters') or {}).get(turn.get('characterKey'))
            if not spec:
                raise ValueError(f"No voice for character {turn.get('characterKey')}")
        elif turn['role'] == 'learner':
            spec = voices['learnerReferenceVoice']
        else:
            spec = voices['systemVoice']
        items.append({
            'sourceKey': turn['turnKey'],
            'audioClass': 'turn',
            'sourceText': turn['textEn'],
            'voiceSpec': spec,
            'path': f"nova/audio/turns/{course}/{lesson_key}/{turn['turnKey']}.mp3"
        })
    return items


def main() -> int:
    p = argparse.ArgumentParser()
    p.add_argument('lesson', type=Path)
    p.add_argument('voices', type=Path)
    p.add_argument('--repo-root', type=Path, default=Path('.'))
    p.add_argument('--manifest', type=Path, required=True)
    args = p.parse_args()

    api_key = os.environ.get('ELEVENLABS_API_KEY')
    if not api_key:
        print('ELEVENLABS_API_KEY is required', file=sys.stderr)
        return 2

    raw = args.lesson.read_bytes()
    source_hash = hashlib.sha256(raw).hexdigest()
    lesson = json.loads(raw.decode('utf-8'))
    voices = load(args.voices)
    model_id = voices.get('modelId') or 'eleven_multilingual_v2'

    manifest_items = []
    for item in collect(lesson, voices):
        voice_id, voice_name = resolve_voice(item.pop('voiceSpec'), api_key)
        output = args.repo_root / item['path']
        synthesize(item['sourceText'], voice_id, api_key, output, model_id)
        decoded,duration_ms = probe(output)
        file_sha = hashlib.sha256(output.read_bytes()).hexdigest() if output.is_file() else ''
        status = 'PASS' if decoded and duration_ms > 0 and file_sha else 'FAIL'
        manifest_items.append({
            **item,'voiceKey':voice_name,'voiceId':voice_id,'sourceHash':source_hash,
            'fileSha256':file_sha,'durationMs':duration_ms,'decoded':decoded,'status':status
        })

    manifest = {
        'version':'2.0.0','lessonKey':lesson['lessonKey'],'sourceHash':source_hash,
        'provider':'ElevenLabs','modelId':model_id,'items':manifest_items,
        'status':'PASS' if manifest_items and all(x['status']=='PASS' for x in manifest_items) else 'FAIL'
    }
    args.manifest.parent.mkdir(parents=True, exist_ok=True)
    args.manifest.write_text(json.dumps(manifest,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({'status':manifest['status'],'count':len(manifest_items),'manifest':str(args.manifest)},indent=2))
    return 0 if manifest['status']=='PASS' else 2


if __name__ == '__main__':
    sys.exit(main())

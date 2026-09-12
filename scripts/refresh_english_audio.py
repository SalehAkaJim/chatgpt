#!/usr/bin/env python3
"""Run an explicitly requested incremental audio refresh, two TTS workers total."""
import json
import subprocess
import sys
from pathlib import Path

ROOT=Path(__file__).resolve().parents[1]

def run(*args):
    subprocess.run([sys.executable,*map(str,args)],cwd=ROOT,check=True)

def main():
    request=json.loads((ROOT/'.github/english-quality-audio-request.json').read_text())
    if request.get('confirm_paid_generation') is not True:
        raise SystemExit('Paid generation was not confirmed in the audio request.')
    levels=request.get('levels',[])
    allowed={'Pre-A1':'pre_a1','A1':'a1','A2':'a2','B1':'b1','B2':'b2','C1':'c1','C2':'c2'}
    if not levels or len(levels)!=len(set(levels)) or not set(levels)<=set(allowed):
        raise SystemExit('Invalid audio refresh levels.')
    run('scripts/test_english_content_fixes.py')
    run('scripts/export_english_content_updates.py')
    reports=[]
    for level in levels:
        manifest=Path('audio/manifests/en')/(level+'.json')
        run('scripts/build_audio_manifest.py',Path('content/production/en')/level,
            '--level',level,'--strict-characters','--output',manifest)
        run('scripts/resolve_audio_voices.py',manifest,'--write-lock')
        # Existing valid source/voice/model/settings are reused; changed source
        # text gets a different content-addressed filename and is generated.
        result=subprocess.run([sys.executable,'scripts/generate_audio.py',str(manifest),
            '--confirm-paid-generation','--concurrency','2'],cwd=ROOT,check=True,capture_output=True,text=True)
        print(result.stdout,flush=True)
        generation=json.loads(result.stdout)
        run('scripts/validate_audio_manifest.py',manifest,'--require-generated')
        run('scripts/export_audio_sql.py',manifest,'--status','validated','--output',
            Path('database/import/en')/(allowed[level]+'_audio.sql'))
        data=json.loads((ROOT/manifest).read_text())
        reports.append({'level':level,'items':len(data['items']),'generated_validated':True,
                        'generated':generation['generated'],'reused':generation['reused']})
    output=ROOT/'audio/reports/english-quality-refresh.json'
    output.parent.mkdir(parents=True,exist_ok=True)
    output.write_text(json.dumps({'request_id':request['request_id'],'levels':reports},indent=2)+'\n')

if __name__=='__main__':main()

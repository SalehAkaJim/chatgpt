#!/usr/bin/env python3
"""Generate production audio from a level manifest with ElevenLabs.

Paid generation is deliberately guarded. Voice IDs are resolved against the
current ElevenLabs workspace and locked by logical voice_key for consistency.
"""
from __future__ import annotations

import argparse, concurrent.futures, hashlib, json, os, tempfile, threading, time
from datetime import datetime, timezone
from pathlib import Path

import requests
from mutagen.mp3 import MP3

ROOT=Path(__file__).resolve().parents[1]
API="https://api.elevenlabs.io"
LOCK=threading.Lock()


def sha_bytes(b): return hashlib.sha256(b).hexdigest()
def words(s): return {w.lower() for w in ''.join(c if c.isalnum() else ' ' for c in s).split() if len(w)>2}


def list_voices(api_key, spec):
    params={"page_size":100,"include_total_count":"false"}
    if spec.get("voice_name"): params["search"]=spec["voice_name"]
    if spec.get("required_language"): params["language"]=spec["required_language"]
    if spec.get("preferred_accent"): params["accent"]=spec["preferred_accent"]
    if spec.get("prefer_high_quality"): params["high_quality"]="true"
    r=requests.get(f"{API}/v2/voices",headers={"xi-api-key":api_key},params=params,timeout=30)
    r.raise_for_status(); return r.json().get("voices",[])


def resolve_voice(api_key, voice_key, spec, locks):
    if voice_key in locks: return locks[voice_key]
    candidates=list_voices(api_key,spec)
    if spec.get("voice_name") and spec.get("require_exact_name"):
        candidates=[v for v in candidates if (v.get("name") or '').casefold()==spec["voice_name"].casefold()]
    if not candidates: raise RuntimeError(f"No compatible ElevenLabs voice for {voice_key}")
    # For profile-based character voices, score provider descriptions/labels against
    # the profile description, then deterministically spread characters among the
    # strongest candidates. Exact named narrators simply take the exact match.
    if spec.get("voice_name"):
        chosen=sorted(candidates,key=lambda v:(v.get("name") or '',v.get("voice_id") or ''))[0]
    else:
        wanted=words(spec.get("description",''))
        def score(v):
            text=' '.join([v.get('name') or '',v.get('description') or '',json.dumps(v.get('labels') or {})])
            return len(wanted & words(text))
        ranked=sorted(candidates,key=lambda v:(-score(v),v.get("name") or '',v.get("voice_id") or ''))
        pool=ranked[:min(12,len(ranked))]
        idx=int(hashlib.sha256(voice_key.encode()).hexdigest()[:8],16)%len(pool); chosen=pool[idx]
    locked={"voice_id":chosen["voice_id"],"voice_name":chosen.get("name"),"resolved_at":datetime.now(timezone.utc).isoformat()}
    with LOCK: locks[voice_key]=locked
    return locked


def tts(api_key,voice_id,text,model,settings,preferred,fallback):
    body={"text":text,"model_id":model,"voice_settings":settings}
    headers={"xi-api-key":api_key,"Content-Type":"application/json","Accept":"audio/mpeg"}
    last=None
    for fmt in [preferred,fallback] if fallback!=preferred else [preferred]:
        r=requests.post(f"{API}/v1/text-to-speech/{voice_id}",params={"output_format":fmt},headers=headers,json=body,timeout=120)
        if r.ok: return r.content,fmt
        last=RuntimeError(f"ElevenLabs {r.status_code}: {r.text[:400]}")
        if r.status_code not in {400,402,403,422}: break
    raise last


def validate_mp3(path,text):
    audio=MP3(path); duration=float(audio.info.length or 0)
    if path.stat().st_size < 1000: raise RuntimeError(f"Audio file too small: {path}")
    if text.strip() and duration < 0.12: raise RuntimeError(f"Implausible duration: {path}")
    return int(duration*1000)


def main():
    ap=argparse.ArgumentParser(); ap.add_argument("manifest",type=Path); ap.add_argument("--confirm-paid-generation",action="store_true")
    ap.add_argument("--lock-file",type=Path,default=ROOT/"audio/voices/en-US.lock.json"); ap.add_argument("--root",type=Path,default=ROOT)
    ap.add_argument("--concurrency",type=int,default=int(os.getenv("NOVA_TTS_CONCURRENCY","2")))
    args=ap.parse_args()
    if not args.confirm_paid_generation: raise SystemExit("Paid generation was not confirmed. Re-run with --confirm-paid-generation.")
    api_key=os.getenv("ELEVENLABS_API_KEY");
    if not api_key: raise SystemExit("ELEVENLABS_API_KEY is required")
    manifest=json.loads(args.manifest.read_text(encoding="utf-8")); gen=manifest["generation"]
    locks=json.loads(args.lock_file.read_text(encoding="utf-8")) if args.lock_file.exists() else {}
    blocked=[i for i in manifest["items"] if i.get("voice_spec",{}).get("blocked")]
    if blocked: raise SystemExit("Dialogue generation blocked: explicit character profiles missing for "+", ".join(sorted({i['metadata'].get('character','?') for i in blocked})))
    default_model=os.getenv("ELEVENLABS_MODEL_ID",gen.get("model_id","eleven_multilingual_v2")); dialogue_model=os.getenv("ELEVENLABS_DIALOGUE_MODEL_ID",default_model)
    preferred=os.getenv("ELEVENLABS_OUTPUT_FORMAT",gen.get("preferred_output_format","mp3_44100_192")); fallback=gen.get("fallback_output_format","mp3_44100_128")

    def work(item):
        out=args.root/item["relative_path"]; meta=out.with_suffix(out.suffix+".json")
        model=dialogue_model if item["category"]=="dialogues" else default_model
        voice=resolve_voice(api_key,item["voice_key"],item["voice_spec"],locks)
        identity={"source_text_hash":item["source_text_hash"],"voice_id":voice["voice_id"],"model":model,"settings":item["voice_spec"].get("settings",{})}
        if out.exists() and meta.exists():
            old=json.loads(meta.read_text(encoding="utf-8"))
            if all(old.get(k)==v for k,v in identity.items()): return {"audio_key":item["audio_key"],"status":"reused","path":item["relative_path"]}
        data,fmt=tts(api_key,voice["voice_id"],item["text"],model,item["voice_spec"].get("settings",{}),preferred,fallback)
        out.parent.mkdir(parents=True,exist_ok=True)
        fd,tmp=tempfile.mkstemp(dir=out.parent,suffix=".mp3"); os.close(fd); tmp=Path(tmp)
        try:
            tmp.write_bytes(data); duration=validate_mp3(tmp,item["text"]); tmp.replace(out)
        finally:
            if tmp.exists(): tmp.unlink()
        payload={**identity,"audio_key":item["audio_key"],"voice_key":item["voice_key"],"voice_name":voice.get("voice_name"),"output_format":fmt,
                 "file_sha256":sha_bytes(data),"duration_ms":duration,"generated_at":datetime.now(timezone.utc).isoformat(),"entity_refs":item["entity_refs"]}
        meta.write_text(json.dumps(payload,ensure_ascii=False,indent=2)+"\n",encoding="utf-8")
        return {"audio_key":item["audio_key"],"status":"generated","path":item["relative_path"],"duration_ms":duration}

    with concurrent.futures.ThreadPoolExecutor(max_workers=max(1,args.concurrency)) as ex:
        results=list(ex.map(work,manifest["items"]))
    args.lock_file.parent.mkdir(parents=True,exist_ok=True); args.lock_file.write_text(json.dumps(locks,ensure_ascii=False,indent=2)+"\n",encoding="utf-8")
    print(json.dumps({"generated":sum(r["status"]=="generated" for r in results),"reused":sum(r["status"]=="reused" for r in results),"items":len(results),"lock_file":str(args.lock_file)},ensure_ascii=False))

if __name__=="__main__": main()

#!/usr/bin/env python3
"""Build a deterministic TTS manifest from one completed content level."""
from __future__ import annotations

import argparse, hashlib, json, re, uuid
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
NS = uuid.UUID("78136b2a-8bcc-4dc4-a39a-a06302c04b8d")


def stable(kind, key): return str(uuid.uuid5(NS, f"{kind}:{key}"))
def sha(text): return hashlib.sha256(text.encode("utf-8")).hexdigest()
def slugify(v): return re.sub(r"[^a-z0-9]+", "-", v.lower()).strip("-")[:170] or "item"
def norm(v): return " ".join(v.strip().split())


def main():
    ap=argparse.ArgumentParser()
    ap.add_argument("content_dir", type=Path)
    ap.add_argument("--level", required=True)
    ap.add_argument("--locale", default="en-US")
    ap.add_argument("--voice-registry", type=Path, default=ROOT/"audio/voices/en-US.json")
    ap.add_argument("--output", type=Path, required=True)
    ap.add_argument("--strict-characters", action="store_true")
    args=ap.parse_args()
    registry=json.loads(args.voice_registry.read_text(encoding="utf-8"))
    target_lang=args.locale.split("-")[0]
    groups={}; missing=set()

    def add(category,text,entity_type,entity_uuid,entity_key,voice_key,voice_spec,meta=None):
        text=norm(text)
        if not text: return
        identity=json.dumps({"locale":args.locale,"text":text,"voice_key":voice_key,"settings":voice_spec.get("settings",{})},sort_keys=True,ensure_ascii=False)
        key=sha(identity)
        row=groups.get(key)
        ref={"entity_type":entity_type,"entity_uuid":entity_uuid,"entity_key":entity_key}
        if row:
            if ref not in row["entity_refs"]: row["entity_refs"].append(ref)
            return
        groups[key]={"audio_key":key,"category":category,"locale":args.locale,"text":text,"source_text_hash":sha(text),
                     "voice_key":voice_key,"voice_spec":voice_spec,"entity_refs":[ref],"metadata":meta or {},
                     "relative_path":f"audio/generated/{args.locale}/{category}/{key}.mp3"}

    for path in sorted(args.content_dir.glob("*.json")):
        b=json.loads(path.read_text(encoding="utf-8"))
        if b.get("cefr") != args.level: continue
        bid=b["batch_id"]
        for item in b["items"]:
            k=item["kind"]; d=item["data"]; ext=item.get("external_id","")
            if k=="word_form":
                eid=stable("word_form",f"{bid}:{ext}")
                add("lexical",d["surface_form"],"word_form",eid,ext,registry["lexical"]["voice_key"],registry["lexical"])
            elif k=="lexeme":
                eid=stable("lexeme",f"{args.locale}:{d['lemma']}:{d.get('part_of_speech','')}")
                add("lexical",d["lemma"],"lexeme",eid,ext,registry["lexical"]["voice_key"],registry["lexical"])
            elif k=="concept" and d.get("concept_type")=="lexical" and not any(x["kind"]=="lexeme" and d["slug"] in x.get("data",{}).get("concept_refs",[]) for x in b["items"]):
                text=(d.get("forms") or {}).get(target_lang)
                if text:
                    eid=stable("concept",d["slug"]); add("lexical",text,"concept",eid,d["slug"],registry["lexical"]["voice_key"],registry["lexical"])
            elif k=="utterance":
                text=(d.get("text") or {}).get(target_lang)
                if text:
                    eid=stable("utterance",f"{bid}:{ext}")
                    add("utterances",text,"utterance",eid,ext,registry["sentence_narrator"]["voice_key"],registry["sentence_narrator"])
            elif k=="dialogue":
                dslug=slugify(f"{bid}-{ext}")
                for turn in d.get("turns",[]):
                    cslug=slugify(turn["speaker"]); profile_key=registry["dialogue"].get("character_assignments",{}).get(cslug)
                    if not profile_key:
                        missing.add(cslug); voice_spec={"blocked":True,"reason":"missing_explicit_character_profile","character":cslug}
                        voice_key=f"character:{cslug}"
                    else:
                        profile=registry["dialogue"]["profiles"].get(profile_key)
                        if not profile: raise SystemExit(f"Unknown voice profile {profile_key} for {cslug}")
                        voice_spec=dict(profile); voice_spec["profile_key"]=profile_key; voice_key=f"character:{cslug}:{profile_key}"
                    eid=stable("dialogue_turn",f"{dslug}:{turn['order']}")
                    add("dialogues",turn["text"],"dialogue_turn",eid,f"{ext}:{turn['order']}",voice_key,voice_spec,{"character":cslug,"dialogue":ext,"turn":turn["order"]})

    manifest={"manifest_version":1,"level":args.level,"locale":args.locale,"provider":registry["provider"],
              "generation":registry["generation"],"missing_character_profiles":sorted(missing),
              "items":sorted(groups.values(),key=lambda x:(x["category"],x["audio_key"]))}
    args.output.parent.mkdir(parents=True,exist_ok=True)
    args.output.write_text(json.dumps(manifest,ensure_ascii=False,indent=2)+"\n",encoding="utf-8")
    print(json.dumps({"output":str(args.output),"items":len(manifest["items"]),"missing_character_profiles":len(missing)},ensure_ascii=False))
    if args.strict_characters and missing: raise SystemExit("Missing explicit character profiles: "+", ".join(sorted(missing)))

if __name__=="__main__": main()

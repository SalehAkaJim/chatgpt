#!/usr/bin/env python3
"""Build German Pre-A1/A1 with Persian as the learner/base language."""
from __future__ import annotations
import json, time
from copy import deepcopy
from pathlib import Path
from deep_translator import GoogleTranslator
from jsonschema import validate

ROOT = Path(__file__).resolve().parents[1]
SOURCE_DIR = ROOT / "content" / "production" / "de" / "coerll-deutsch-im-blick"
SCHEMA_PATH = ROOT / "content" / "batch.schema.json"
CACHE_PATH = ROOT / "sources" / "de" / "coerll-deutsch-im-blick" / "fa-translation-cache.json"
LEVELS = {"Pre-A1": {"slug": "pre-a1", "chapters": [1]}, "A1": {"slug": "a1", "chapters": [2,3,4,5]}}
TRANSLATORS = {}

def load_cache():
    return json.loads(CACHE_PATH.read_text(encoding="utf-8")) if CACHE_PATH.exists() else {}

def save_cache(cache):
    CACHE_PATH.parent.mkdir(parents=True, exist_ok=True)
    CACHE_PATH.write_text(json.dumps(cache, ensure_ascii=False, indent=2, sort_keys=True)+"\n", encoding="utf-8")

def translate(text, source, cache):
    text=(text or "").strip()
    if not text: return ""
    key=f"{source}:fa:{text}"
    if cache.get(key, "").strip(): return cache[key]
    translator=TRANSLATORS.setdefault(source, GoogleTranslator(source=source,target="fa"))
    last=None
    for attempt in range(8):
        try:
            time.sleep(0.75)
            result=(translator.translate(text) or "").strip()
            if not result: raise RuntimeError("empty translation")
            cache[key]=result; save_cache(cache); return result
        except Exception as exc:
            last=exc; wait=min(90,10*(attempt+1))
            print(f"translation retry {attempt+1}/8 after {wait}s: {exc}",flush=True); time.sleep(wait)
    raise RuntimeError(f"Persian translation failed for {text!r}: {last}")

def add_persian(batch, cache):
    batch["learner_language"]="fa"; batch["learner_variant"]="fa-IR"
    unit=batch.get("unit",{})
    if unit.get("title"): unit["translation"]={"fa":translate(unit["title"],"de",cache)}
    for lesson in batch.get("lessons",[]):
        en=(lesson.get("source_translation") or "").strip()
        lesson["translation"]={"fa":translate(en,"en",cache) if en else translate(lesson.get("title",""),"de",cache)}
    for item in batch.get("items",[]):
        data=item.get("data",{}); tr=data.get("translations") or {}; en=(tr.get("en") or "").strip(); de=((data.get("forms") or {}).get("de") or "").strip()
        if not en and not de: raise RuntimeError(f"Item {item.get('external_id')} has no translatable source text")
        fa=translate(en,"en",cache) if en else translate(de,"de",cache)
        if en: data["source_translations"]={"en":en}
        data["translations"]={"fa":fa}
    batch["translation"]={"language":"fa","variant":"fa-IR","method":"machine-assisted-translation","source_languages":["en","de"],"review_status":"generated"}
    return batch

def assert_persian_complete(batch):
    if batch.get("learner_language")!="fa": raise RuntimeError("learner_language must be fa")
    if not ((batch.get("unit") or {}).get("translation") or {}).get("fa"): raise RuntimeError("Unit missing Persian")
    for lesson in batch.get("lessons",[]):
        if not (lesson.get("translation") or {}).get("fa"): raise RuntimeError(f"Lesson {lesson.get('key')} missing Persian")
    for item in batch.get("items",[]):
        if not ((item.get("data") or {}).get("translations") or {}).get("fa"): raise RuntimeError(f"Item {item.get('external_id')} missing Persian")

def build(source,cefr,slug,unit_number,chapter,cache):
    batch=deepcopy(source); batch["batch_id"]=f"de-{slug}-coerll-dib-k{chapter:02d}-fa-v2"; batch["course"]=f"fa-de-{slug}"; batch["cefr"]=cefr; batch["generator"]=f"source-map:nova-fa-de-{slug}-v2"; batch["curriculum_unit"]=f"fa-de-{slug}-u{unit_number:02d}"
    su=deepcopy(batch.get("unit",{})); batch["unit"]={**su,"external_id":f"fa-de-{slug}-u{unit_number:02d}","source_external_id":su.get("external_id"),"source_chapter":chapter,"sort_order":unit_number}
    add_persian(batch,cache); assert_persian_complete(batch); return batch

def main():
    schema=json.loads(SCHEMA_PATH.read_text(encoding="utf-8")); cache=load_cache(); totals={}
    for cefr,config in LEVELS.items():
        slug=config["slug"]; out_dir=ROOT/"content"/"production"/"de"/slug; out_dir.mkdir(parents=True,exist_ok=True); lt=it=0
        for unit_number,chapter in enumerate(config["chapters"],1):
            source_path=SOURCE_DIR/f"chapter-{chapter:02d}.json"
            if not source_path.exists(): raise FileNotFoundError(source_path)
            batch=build(json.loads(source_path.read_text(encoding="utf-8")),cefr,slug,unit_number,chapter,cache); validate(instance=batch,schema=schema)
            out=out_dir/f"unit-{unit_number:02d}.json"; out.write_text(json.dumps(batch,ensure_ascii=False,indent=2)+"\n",encoding="utf-8")
            lt+=len(batch.get("lessons",[])); it+=len(batch.get("items",[])); print(f"{cefr} unit {unit_number}: Persian complete",flush=True)
        totals[cefr]={"units":len(config["chapters"]),"lessons":lt,"items":it}
    save_cache(cache); print("SUMMARY "+json.dumps(totals,ensure_ascii=False,sort_keys=True),flush=True)
if __name__=="__main__": main()

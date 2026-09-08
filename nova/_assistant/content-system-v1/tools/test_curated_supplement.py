#!/usr/bin/env python3
import importlib.util
import json
import tempfile
from pathlib import Path

HERE = Path(__file__).resolve().parent
spec = importlib.util.spec_from_file_location("curated", HERE / "curated_supplement.py")
curated = importlib.util.module_from_spec(spec)
assert spec.loader
spec.loader.exec_module(curated)

pool = {
    "level": "A1",
    "eligibleVariants": [{"lemma": "name", "partOfSpeech": "noun", "qualityScore": 100}],
    "reviewVariants": [{"lemma": "please", "partOfSpeech": "adverb", "qualityScore": 60}],
}

with tempfile.TemporaryDirectory() as td:
    root = Path(td)
    lessons = root / "lessons"
    (lessons / "0001").mkdir(parents=True)
    (lessons / "0001" / "lesson.source.json").write_text(json.dumps({
        "levelKey": "A1", "lessonKey": "L1",
        "lexicalItems": [
            {"lemma": "name", "partOfSpeech": "noun", "senseKey": "personal_name", "itemType": "word", "displayForm": "name", "translationFa": "اسم"},
            {"lemma": "please", "partOfSpeech": "adverb", "senseKey": "polite_marker", "itemType": "word", "displayForm": "please", "translationFa": "لطفا"},
            {"lemma": "nice to meet you", "partOfSpeech": None, "senseKey": "meeting_formula", "itemType": "formula", "displayForm": "Nice to meet you.", "translationFa": "از آشنایی با تو خوشحالم"},
        ],
    }, ensure_ascii=False), encoding="utf-8")
    status = root / "status.json"
    status.write_text(json.dumps({"pilotLessons": [{"lessonKey": "L1", "automatedQualityScore": 100}]}), encoding="utf-8")

    supplement = curated.build_supplement(pool, lessons, status)
    by_lemma = {x["lemma"]: x for x in supplement["items"]}
    assert "name" not in by_lemma
    assert by_lemma["please"]["eligibleForReference"] is True
    assert by_lemma["please"]["externalStatus"] == "review"
    assert by_lemma["nice to meet you"]["eligibleForReference"] is True

    report = curated.coverage(pool, supplement, lessons)
    assert report["summary"]["resolvedCoveragePercent"] == 100.0
    assert report["summary"]["unresolvedUnique"] == 0

print("curated supplement tests: PASS")

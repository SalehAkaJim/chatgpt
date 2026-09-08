#!/usr/bin/env python3
"""Apply Nova's production policy to a raw reference snapshot.

Openjam is lemma-oriented; Nova selection is lemma+POS oriented. A translation
or sense only counts when its POS matches the CEFR-J entry being selected.
"""
import argparse, json, re, unicodedata
from pathlib import Path

THRESHOLD = 90

def norm(v):
    return re.sub(r"\s+", " ", unicodedata.normalize("NFKC", v or "").strip().lower())

def pos(v):
    v = norm(v)
    aliases = {"n":"noun","v":"verb","adj":"adjective","adv":"adverb","prep":"preposition","conj":"conjunction","det":"determiner","interj":"interjection","pron":"pronoun","num":"numeral"}
    return aliases.get(v, v) if v else None

def norm_fa(v):
    v = unicodedata.normalize("NFKC", v or "").replace("ي","ی").replace("ك","ک").replace("\u200c"," ")
    v = re.sub(r"[\u064b-\u065f\u0670]", "", v)
    return re.sub(r"\s+", " ", re.sub(r"[^\w\s]", " ", v, flags=re.UNICODE)).strip()

def score_variant(item, entry):
    p = pos(entry.get("partOfSpeech"))
    senses = [s for s in item.get("senses", []) if pos(s.get("partOfSpeech")) == p]
    score, signals = 35, ["cefrj", "pos"]
    if item.get("openjamLevel"):
        score += 10; signals.append("openjam_cefr")
    if item.get("frequencyRank") is not None:
        score += 15; signals.append("frequency")
    if senses:
        score += 20; signals.append("sense_pos_match")
    if any(s.get("translationFa") for s in senses):
        score += 20; signals.append("translation_fa_pos_match")
    return min(score, 100), signals, senses

def make_pool(snapshot):
    level = snapshot["level"]
    eligible, review = [], []
    for item in snapshot["lexicalItems"]:
        for entry in item.get("cefrJEntries", []):
            if entry.get("level") != level:
                continue
            score, signals, senses = score_variant(item, entry)
            row = {
                "lemma": item["lemma"], "partOfSpeech": pos(entry.get("partOfSpeech")), "level": level,
                "frequencyRank": item.get("frequencyRank"), "qualityScore": score, "qualitySignals": signals,
                "openjamWordId": item.get("openjamWordId"),
                "senses": [{"sourceSenseId": s.get("sourceSenseId"), "definitionEn": s.get("definitionEn"), "translationFa": s.get("translationFa")} for s in senses]
            }
            (eligible if score >= THRESHOLD else review).append(row)
    eligible.sort(key=lambda x: (x["frequencyRank"] is None, x["frequencyRank"] or 10**9, x["lemma"], x["partOfSpeech"] or ""))
    review.sort(key=lambda x: (x["lemma"], x["partOfSpeech"] or ""))
    return {
        "schemaVersion":"1.0.0", "courseCode": snapshot.get("courseCode", "en-fa"), "level": level,
        "qualityThreshold": THRESHOLD,
        "policy": {
            "identity":"lemma + partOfSpeech",
            "cefr":"CEFR-J is required for automatic selection",
            "translation":"Openjam translation counts only for a matching POS sense",
            "multiwordUnits":"Nova local lexical-unit supplements"
        },
        "sourceHashes": {s["sourceKey"]: s.get("hashes") for s in snapshot.get("sources", [])},
        "summary": {"eligibleVariants": len(eligible), "reviewVariants": len(review)},
        "eligibleVariants": eligible, "reviewVariants": review
    }

def compare(pool, lessons_root):
    level = pool["level"]
    eligible = {(norm(x["lemma"]), pos(x.get("partOfSpeech"))): x for x in pool["eligibleVariants"]}
    review = {(norm(x["lemma"]), pos(x.get("partOfSpeech"))): x for x in pool["reviewVariants"]}
    seen, missing, review_hits, mismatches = set(), [], [], []
    lesson_count = 0
    for path in sorted(Path(lessons_root).glob("*/lesson.source.json")):
        lesson = json.loads(path.read_text(encoding="utf-8"))
        if lesson.get("levelKey") != level:
            continue
        lesson_count += 1
        for lex in lesson.get("lexicalItems", []):
            lemma = norm(lex.get("lemma") or lex.get("displayForm")); p = pos(lex.get("partOfSpeech")); key = (lemma, p)
            seen.add((lemma, p, lex.get("senseKey")))
            ref, rv = eligible.get(key), review.get(key)
            if not ref and not rv:
                missing.append({"lessonKey":lesson.get("lessonKey"),"lemma":lemma,"partOfSpeech":p,"itemType":lex.get("itemType"),"senseKey":lex.get("senseKey"),"translationFa":lex.get("translationFa")})
                continue
            if rv and not ref:
                review_hits.append({"lessonKey":lesson.get("lessonKey"),"lemma":lemma,"partOfSpeech":p,"qualityScore":rv["qualityScore"]})
            candidate = ref or rv
            fa = sorted({s.get("translationFa") for s in candidate.get("senses", []) if s.get("translationFa")})
            if fa and norm_fa(lex.get("translationFa")) not in {norm_fa(x) for x in fa}:
                mismatches.append({"lessonKey":lesson.get("lessonKey"),"lemma":lemma,"partOfSpeech":p,"nova":lex.get("translationFa"),"openjamCandidates":fa})
    unique_missing = {(x["lemma"],x["partOfSpeech"]) for x in missing}
    unique_review = {(x["lemma"],x["partOfSpeech"]) for x in review_hits}
    total = len(seen)
    return {
        "summary": {
            "lessons":lesson_count, "uniqueCanonicalLexicalItems":total,
            "missingReferenceUnique":len(unique_missing), "referenceReviewUnique":len(unique_review),
            "externalReferenceCoveragePercent":round((total-len(unique_missing))/total*100,2) if total else 100.0,
            "translationMismatchesForReview":len(mismatches)
        },
        "missingReference":missing, "referenceReview":review_hits, "translationMismatchesForReview":mismatches
    }

def dump(path, value):
    p=Path(path); p.parent.mkdir(parents=True, exist_ok=True); p.write_text(json.dumps(value, ensure_ascii=False, indent=2)+"\n", encoding="utf-8")

def main():
    ap=argparse.ArgumentParser(); ap.add_argument("--snapshot", required=True); ap.add_argument("--pool-output", required=True); ap.add_argument("--lessons-root"); ap.add_argument("--report-output")
    a=ap.parse_args(); snapshot=json.loads(Path(a.snapshot).read_text(encoding="utf-8")); pool=make_pool(snapshot); dump(a.pool_output,pool); print(json.dumps(pool["summary"]))
    if a.lessons_root and a.report_output:
        report=compare(pool,a.lessons_root); dump(a.report_output,report); print(json.dumps(report["summary"]))
if __name__ == "__main__": main()

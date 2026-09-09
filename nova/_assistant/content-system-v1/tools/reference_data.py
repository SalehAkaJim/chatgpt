from __future__ import annotations

import csv
import hashlib
import io
import json
import re
import unicodedata
from collections import defaultdict
from pathlib import Path
from typing import Iterable

LEVELS = ("A1", "A2", "B1", "B2", "C1", "C2")
LEVEL_RANK = {v: i for i, v in enumerate(LEVELS)}

POS_ALIASES = {
    "n": "noun", "noun": "noun",
    "v": "verb", "verb": "verb",
    "adj": "adjective", "adjective": "adjective", "a": "adjective",
    "adv": "adverb", "adverb": "adverb", "r": "adverb",
    "pron": "pronoun", "pronoun": "pronoun",
    "prep": "preposition", "preposition": "preposition",
    "conj": "conjunction", "conjunction": "conjunction",
    "interj": "interjection", "interjection": "interjection",
    "det": "determiner", "determiner": "determiner", "article": "determiner",
    "num": "numeral", "numeral": "numeral", "number": "numeral",
    "modal": "verb", "auxiliary": "verb",
}

BLOCKED_PERSIAN_CHARS = set("ءئؤأإًٌٍَُِّْةىٱۀـ")
ARABIC_TO_PERSIAN = str.maketrans({"ي": "ی", "ك": "ک"})


def normalize_lemma(value: str | None) -> str:
    return unicodedata.normalize("NFKC", (value or "")).strip().lower()


def normalize_pos(value: str | None) -> str | None:
    raw = normalize_lemma(value).replace("_", " ").strip(". ")
    if not raw:
        return None
    return POS_ALIASES.get(raw, raw.replace(" ", "_"))


def normalize_level(value: str | None) -> str | None:
    if not value:
        return None
    m = re.search(r"\b(A1|A2|B1|B2|C1|C2)\b", str(value).upper())
    return m.group(1) if m else None


def normalize_persian(value: str | None) -> str:
    text = unicodedata.normalize("NFC", (value or "")).translate(ARABIC_TO_PERSIAN)
    return re.sub(r"\s+", " ", text).strip()


def persian_orthography_flags(text: str | None) -> list[str]:
    """Return orthography-review flags without treating missing Persian as text.

    Missing translations are scored separately by `score_reference_record`; profile-
    only/reference-gap records legitimately pass `None` here and should receive the
    missing-translation penalty rather than crashing the deterministic sync.
    """
    flags: list[str] = []
    chars = sorted({ch for ch in (text or "") if ch in BLOCKED_PERSIAN_CHARS})
    if chars:
        flags.append("persian_orthography_review:" + "".join(chars))
    return flags


def sha256_bytes(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def sha256_file(path: Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as f:
        for chunk in iter(lambda: f.read(1024 * 1024), b""):
            h.update(chunk)
    return h.hexdigest()


def stable_reference_key(lemma: str, pos: str | None, sense_id: str) -> str:
    raw = f"{normalize_lemma(lemma)}|{normalize_pos(pos) or 'unknown'}|{sense_id}"
    return "EN-REF-" + hashlib.sha1(raw.encode("utf-8")).hexdigest()[:20].upper()


def parse_profile_csv(text: str, *, source: str) -> list[dict]:
    rows = []
    for row in csv.DictReader(io.StringIO(text)):
        lemma = normalize_lemma(row.get("headword"))
        pos = normalize_pos(row.get("pos"))
        level = normalize_level(row.get("CEFR"))
        if lemma and level:
            rows.append({"lemma": lemma, "pos": pos, "level": level, "source": source})
    return rows


def build_cefr_indexes(*profiles: list[dict]) -> tuple[dict, dict]:
    exact = defaultdict(list)
    lemma_index = defaultdict(list)
    for profile in profiles:
        for row in profile:
            exact[(normalize_lemma(row.get("lemma")), normalize_pos(row.get("pos")))].append(row)
            lemma_index[normalize_lemma(row.get("lemma"))].append(row)
    return dict(exact), dict(lemma_index)


def _consensus(rows: list[dict], source_prefix: str) -> tuple[str | None, str | None, list[str]]:
    eligible = [r for r in rows if r.get("source", "").startswith(source_prefix)]
    levels = sorted({r["level"] for r in eligible}, key=LEVEL_RANK.get)
    if len(levels) == 1:
        return levels[0], f"{source_prefix}_lemma_consensus", levels
    return None, None, levels


def resolve_cefr(lemma: str, pos: str | None, openjam_level: str | None, exact_index: dict, lemma_index: dict) -> dict:
    key = (normalize_lemma(lemma), normalize_pos(pos))
    exact_rows = exact_index.get(key, [])
    for source_name in ("cefrj", "octanove"):
        source_rows = [r for r in exact_rows if r.get("source") == source_name]
        levels = sorted({r["level"] for r in source_rows}, key=LEVEL_RANK.get)
        if levels:
            return {"level": levels[0], "source": f"{source_name}_exact_pos", "evidenceLevels": levels, "conflict": len(levels) > 1}
    lemma_rows = lemma_index.get(normalize_lemma(lemma), [])
    for source_name in ("cefrj", "octanove"):
        level, source, evidence = _consensus(lemma_rows, source_name)
        if level:
            return {"level": level, "source": source, "evidenceLevels": evidence, "conflict": False}
    fallback = normalize_level(openjam_level)
    return {"level": fallback, "source": "openjam_frequency_band" if fallback else None, "evidenceLevels": [fallback] if fallback else [], "conflict": False}


def score_reference_record(record: dict) -> tuple[int, list[str]]:
    score = 100
    flags: list[str] = []
    if not record.get("translationFa"):
        score -= 60
        flags.append("missing_persian_translation")
    if not record.get("definitionEn"):
        score -= 10
        flags.append("missing_english_definition")
    if not record.get("partOfSpeech"):
        score -= 10
        flags.append("missing_pos")
    if not record.get("cefr"):
        score -= 20
        flags.append("missing_cefr")
    source = record.get("cefrSource")
    if source == "openjam_frequency_band":
        score -= 15
        flags.append("cefr_frequency_fallback")
    elif source and source.endswith("_lemma_consensus"):
        score -= 2
        flags.append("cefr_lemma_only")
    persian_flags = persian_orthography_flags(record.get("translationFa"))
    if persian_flags:
        score -= 20
        flags.extend(persian_flags)
    if record.get("cefrConflict"):
        score -= 5
        flags.append("cefr_conflict")
    return max(0, score), sorted(set(flags))


def is_curriculum_eligible(cefr: dict) -> bool:
    """True only when CEFR placement is evidence-backed and unambiguous."""
    return bool(
        cefr.get("level")
        and cefr.get("source")
        and cefr.get("source") != "openjam_frequency_band"
        and not cefr.get("conflict")
    )


def is_production_eligible(record: dict, threshold: int = 90) -> bool:
    """Hard production gate; scoring alone cannot override semantic ambiguity."""
    score = record.get("qualityScore")
    return bool(
        record.get("curriculumEligible")
        and isinstance(score, int)
        and score >= threshold
        and record.get("translationFa")
        and record.get("cefr")
        and not record.get("cefrConflict")
    )


def parse_grammar_csv(text: str) -> list[dict]:
    out = []
    for row in csv.DictReader(io.StringIO(text)):
        raw_candidates = [row.get("CEFR-J Level"), row.get("FREQ*DISP"), row.get("Core Inventory"), row.get("GSELO")]
        level = next((normalize_level(v) for v in raw_candidates if normalize_level(v)), None)
        shorthand = (row.get("Shorthand Code") or "").strip()
        item = (row.get("Grammatical Item") or "").strip()
        if not level or not (shorthand or item):
            continue
        out.append({
            "grammarKey": f"CEFRJ-GRAM-{(row.get('ID') or shorthand).strip()}",
            "shorthandCode": shorthand or None,
            "grammaticalItem": item,
            "sentenceType": (row.get("Sentence Type") or "").strip() or None,
            "cefr": level,
            "cefrJLevel": (row.get("CEFR-J Level") or "").strip() or None,
            "frequencyDispersionLevel": (row.get("FREQ*DISP") or "").strip() or None,
            "coreInventory": (row.get("Core Inventory") or "").strip() or None,
            "egp": (row.get("EGP") or "").strip() or None,
            "gse": (row.get("GSELO") or "").strip() or None,
            "notes": (row.get("Notes") or "").strip() or None,
            "source": "cefrj_grammar_profile",
        })
    return out


def dump_json(path: Path, payload: object) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")

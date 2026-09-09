#!/usr/bin/env python3
"""Build Nova's non-lexical language reference snapshots.

Network access belongs here, in a sync step. Content generation consumes only the
committed snapshots produced by this script.

Sources:
- CMUdict: pronunciation / ARPABET / stress evidence
- NGSL-Spoken: spoken-frequency priority
- Tatoeba API: usage/collocation and natural-sentence evidence for current Lesson plans
"""
from __future__ import annotations

import argparse
import csv
import hashlib
import io
import json
import re
import time
import urllib.parse
import urllib.request
from datetime import datetime, timezone
from pathlib import Path

from reference_data import LEVELS, normalize_lemma

UA = "NovaLanguageReference/1.0 (+content-authoring-sync)"
WORD_RE = re.compile(r"[A-Za-z]+(?:'[A-Za-z]+)?")
SLOT_WORDS = {
    "item", "object", "number", "name", "person", "place", "city", "country",
    "drink", "noun", "verb", "time", "day", "thing", "word", "location",
}


def load_json(path: Path, default=None):
    if not path.exists():
        return {} if default is None else default
    return json.loads(path.read_text(encoding="utf-8"))


def dump_json(path: Path, payload: object) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")


def http_get(url: str, *, timeout: int = 45, attempts: int = 3) -> bytes:
    last = None
    for attempt in range(attempts):
        try:
            req = urllib.request.Request(url, headers={"User-Agent": UA, "Accept": "*/*"})
            with urllib.request.urlopen(req, timeout=timeout) as response:
                return response.read()
        except Exception as exc:  # network sync must report upstream failures clearly
            last = exc
            if attempt + 1 < attempts:
                time.sleep(1.5 * (attempt + 1))
    raise RuntimeError(f"failed to download {url}: {last}")


def sha256(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def collect_reference_lemmas(root: Path, course_code: str) -> set[str]:
    result: set[str] = set()
    base = root / "nova/reference" / course_code / "lexical"
    for level in LEVELS:
        payload = load_json(base / f"{level}.json", {})
        for item in payload.get("items", []):
            if not (item.get("curriculumEligible") or item.get("productionEligible")):
                continue
            lemma = normalize_lemma(item.get("lemma"))
            if lemma:
                result.add(lemma)
    return result


def parse_cmudict(text: str) -> dict[str, list[str]]:
    pronunciations: dict[str, list[str]] = {}
    for raw in text.splitlines():
        line = raw.strip()
        if not line or line.startswith("#") or " " not in line:
            continue
        word, phones = line.split(None, 1)
        word = re.sub(r"\(\d+\)$", "", word).lower()
        phones = phones.split("#", 1)[0].strip()
        if not word or not phones:
            continue
        pronunciations.setdefault(word, [])
        if phones not in pronunciations[word]:
            pronunciations[word].append(phones)
    return pronunciations


def stress_pattern(phones: str) -> str:
    return "".join(ch for ch in phones if ch.isdigit())


def build_pronunciation_snapshot(
    *, root: Path, course_code: str, source: dict, lemmas: set[str]
) -> tuple[dict, str]:
    repo = source["repository"]
    commit = source["commit"]
    path = source["files"]["dictionary"]
    url = f"https://raw.githubusercontent.com/{repo}/{commit}/{path}"
    raw = http_get(url)
    parsed = parse_cmudict(raw.decode("utf-8", errors="replace"))
    items = []
    for lemma in sorted(lemmas):
        variants = parsed.get(lemma)
        if not variants:
            continue
        items.append({
            "lemma": lemma,
            "arpabet": variants,
            "primaryArpabet": variants[0],
            "stressPattern": stress_pattern(variants[0]),
        })
    payload = {
        "schemaVersion": 1,
        "courseCode": course_code,
        "source": "cmudict",
        "sourceCommit": commit,
        "sourceFileSha256": sha256(raw),
        "matchedLemmaCount": len(items),
        "items": items,
    }
    return payload, sha256(raw)


def _pick_column(headers: list[str], needles: tuple[str, ...]) -> int | None:
    normalized = [re.sub(r"[^a-z0-9]+", "", h.lower()) for h in headers]
    for needle in needles:
        for idx, header in enumerate(normalized):
            if needle in header:
                return idx
    return None


def parse_ngsl_spoken(text: str) -> list[dict]:
    rows = list(csv.reader(io.StringIO(text.lstrip("\ufeff"))))
    rows = [r for r in rows if r and any(str(x).strip() for x in r)]
    if not rows:
        return []
    header = [str(x).strip() for x in rows[0]]
    has_header = any(re.search(r"word|lemma|rank|freq", h, re.I) for h in header)
    data = rows[1:] if has_header else rows
    word_col = _pick_column(header, ("lemma", "word")) if has_header else 0
    rank_col = _pick_column(header, ("rank",)) if has_header else None
    freq_col = _pick_column(header, ("frequency", "freq")) if has_header else None
    if word_col is None:
        word_col = 0

    result = []
    next_rank = 1
    for row in data:
        if word_col >= len(row):
            continue
        word = normalize_lemma(row[word_col])
        if not re.fullmatch(r"[a-z]+(?:'[a-z]+)?", word):
            continue
        rank = None
        if rank_col is not None and rank_col < len(row):
            m = re.search(r"\d+", row[rank_col].replace(",", ""))
            rank = int(m.group()) if m else None
        if rank is None:
            rank = next_rank
        frequency = None
        if freq_col is not None and freq_col < len(row):
            raw = row[freq_col].replace(",", "").strip()
            try:
                frequency = float(raw)
            except ValueError:
                pass
        result.append({"lemma": word, "spokenRank": rank, "frequency": frequency})
        next_rank += 1
    # Keep the best rank per lemma if source rows contain variants.
    best = {}
    for item in result:
        old = best.get(item["lemma"])
        if old is None or item["spokenRank"] < old["spokenRank"]:
            best[item["lemma"]] = item
    return sorted(best.values(), key=lambda x: (x["spokenRank"], x["lemma"]))


def build_spoken_frequency_snapshot(*, course_code: str, source: dict) -> tuple[dict, str]:
    raw = http_get(source["sourceUrl"])
    text = raw.decode("utf-8-sig", errors="replace")
    items = parse_ngsl_spoken(text)
    if len(items) < 500:
        raise RuntimeError(f"NGSL-Spoken parse produced only {len(items)} items; refusing suspicious snapshot")
    payload = {
        "schemaVersion": 1,
        "courseCode": course_code,
        "source": "ngsl_spoken",
        "datasetVersion": source.get("datasetVersion"),
        "sourceFileSha256": sha256(raw),
        "itemCount": len(items),
        "items": items,
    }
    return payload, sha256(raw)


def words(text: str) -> list[str]:
    return [x.lower() for x in WORD_RE.findall(text or "")]


def construction_query(form: str) -> str | None:
    # Remove '+ slot' tails and placeholders while preserving the stable phrase.
    raw = re.sub(r"\+\s*[A-Za-z_]+", " ", form or "")
    raw = raw.replace("...", " ")
    tokens = [x for x in words(raw) if x not in SLOT_WORDS]
    if len(tokens) < 2:
        return None
    return " ".join(tokens[:6])


def collocation_queries(lesson: dict) -> list[dict]:
    queries: dict[str, dict] = {}
    target_lemmas = {
        normalize_lemma(x.get("lemma") or x.get("displayForm"))
        for x in lesson.get("lexicalItems", [])
        if x.get("role") == "target"
    }
    target_lemmas.discard("")

    for c in (lesson.get("curriculum") or {}).get("targetConstructions", []) or []:
        query = construction_query(str(c.get("form") or ""))
        if query:
            queries.setdefault(query, {
                "query": query,
                "kind": "construction",
                "lessonKeys": [],
                "constructionKeys": [],
            })
            queries[query]["lessonKeys"].append(lesson.get("lessonKey"))
            if c.get("key"):
                queries[query]["constructionKeys"].append(c.get("key"))

    for turn in lesson.get("turns", []) or []:
        toks = words(turn.get("textEn") or "")
        for lemma in target_lemmas:
            positions = [i for i, token in enumerate(toks) if token == lemma]
            for pos in positions:
                left = max(0, pos - 2)
                right = min(len(toks), pos + 3)
                window = toks[left:right]
                if len(window) < 2:
                    continue
                query = " ".join(window)
                queries.setdefault(query, {
                    "query": query,
                    "kind": "target_collocation",
                    "lessonKeys": [],
                    "lexicalLemmas": [],
                })
                queries[query]["lessonKeys"].append(lesson.get("lessonKey"))
                queries[query].setdefault("lexicalLemmas", []).append(lemma)

    for item in queries.values():
        for key in ("lessonKeys", "constructionKeys", "lexicalLemmas"):
            if key in item:
                item[key] = sorted(set(item[key]))
    return list(queries.values())


def collect_usage_queries(root: Path, course_code: str, lesson_numbers: list[int]) -> list[dict]:
    merged: dict[str, dict] = {}
    for number in lesson_numbers:
        path = root / "nova/courses" / course_code / "lessons" / f"{int(number):04d}" / "lesson.source.json"
        if not path.exists():
            continue
        lesson = load_json(path)
        for item in collocation_queries(lesson):
            query = item["query"]
            if query not in merged:
                merged[query] = item
                continue
            for key in ("lessonKeys", "constructionKeys", "lexicalLemmas"):
                merged[query][key] = sorted(set(merged[query].get(key, []) + item.get(key, [])))
    return sorted(merged.values(), key=lambda x: (x.get("kind", ""), x["query"]))


def tatoeba_search(api_base: str, query: str, filters: dict, limit: int = 5) -> dict:
    params = {
        "lang": filters.get("lang", "eng"),
        "q": f'"{query}"',
        "is_orphan": filters.get("is_orphan", "no"),
        "is_unapproved": filters.get("is_unapproved", "no"),
        "limit": str(limit),
        "showtrans": "none",
    }
    url = api_base + "?" + urllib.parse.urlencode(params)
    raw = http_get(url, timeout=30, attempts=2)
    payload = json.loads(raw.decode("utf-8"))
    data = payload.get("data", []) if isinstance(payload, dict) else []
    examples = []
    for sentence in data[:limit]:
        examples.append({
            "id": sentence.get("id"),
            "text": sentence.get("text"),
            "lang": sentence.get("lang"),
            "license": sentence.get("license"),
            "owner": sentence.get("owner"),
        })
    return {"queryUrl": url, "examples": examples, "sampleCount": len(examples)}


def build_usage_snapshot(
    *, root: Path, course_code: str, source: dict, lesson_numbers: list[int]
) -> dict:
    previous_path = root / "nova/reference" / course_code / "usage" / "tatoeba.json"
    previous = load_json(previous_path, {})
    previous_by_query = {x.get("query"): x for x in previous.get("queries", []) if x.get("query")}
    queries = collect_usage_queries(root, course_code, lesson_numbers)
    output = []
    for index, item in enumerate(queries):
        query = item["query"]
        try:
            evidence = tatoeba_search(source["apiBase"], query, source.get("filters", {}))
            status = "evidence" if evidence["sampleCount"] else "no_hit"
            output.append({**item, **evidence, "status": status})
        except Exception as exc:
            old = previous_by_query.get(query)
            if old:
                output.append({**old, **item, "status": old.get("status", "cached"), "syncWarning": str(exc)})
            else:
                output.append({**item, "status": "unavailable", "sampleCount": 0, "examples": [], "syncWarning": str(exc)})
        # Be a polite public API client.
        if index + 1 < len(queries):
            time.sleep(0.05)
    return {
        "schemaVersion": 1,
        "courseCode": course_code,
        "source": "tatoeba",
        "apiBase": source["apiBase"],
        "filters": source.get("filters", {}),
        "queryCount": len(output),
        "evidenceQueryCount": sum(1 for x in output if x.get("sampleCount", 0) > 0),
        "queries": output,
    }


def main() -> int:
    p = argparse.ArgumentParser()
    p.add_argument("--repo-root", default=".")
    p.add_argument("--course", default="en-fa")
    p.add_argument("--config", type=Path, help="Factory config; generatedLessons determines usage queries")
    p.add_argument("--skip-usage", action="store_true")
    args = p.parse_args()

    root = Path(args.repo_root).resolve()
    ref_root = root / "nova/reference" / args.course
    lock = load_json(ref_root / "sources.lock.json")
    sources = lock.get("sources", {})
    config = load_json(args.config, {}) if args.config else {}
    lesson_numbers = [int(x) for x in config.get("generatedLessons", [])]

    lemmas = collect_reference_lemmas(root, args.course)
    pronunciation, cmu_hash = build_pronunciation_snapshot(
        root=root, course_code=args.course, source=sources["cmudict"], lemmas=lemmas
    )
    spoken, ngsl_hash = build_spoken_frequency_snapshot(course_code=args.course, source=sources["ngslSpoken"])
    dump_json(ref_root / "pronunciation" / "cmudict.json", pronunciation)
    dump_json(ref_root / "frequency" / "ngsl_spoken.json", spoken)

    usage = None
    if not args.skip_usage:
        usage = build_usage_snapshot(
            root=root,
            course_code=args.course,
            source=sources["tatoeba"],
            lesson_numbers=lesson_numbers,
        )
        dump_json(ref_root / "usage" / "tatoeba.json", usage)

    manifest = {
        "schemaVersion": 1,
        "courseCode": args.course,
        "generatedAt": datetime.now(timezone.utc).replace(microsecond=0).isoformat(),
        "pronunciation": {
            "source": "cmudict",
            "sourceCommit": sources["cmudict"]["commit"],
            "sourceSha256": cmu_hash,
            "matchedLemmaCount": pronunciation["matchedLemmaCount"],
        },
        "spokenFrequency": {
            "source": "ngsl_spoken",
            "datasetVersion": sources["ngslSpoken"].get("datasetVersion"),
            "sourceSha256": ngsl_hash,
            "itemCount": spoken["itemCount"],
        },
        "usage": {
            "source": "tatoeba",
            "lessonCount": len(lesson_numbers),
            "queryCount": usage.get("queryCount", 0) if usage else 0,
            "evidenceQueryCount": usage.get("evidenceQueryCount", 0) if usage else 0,
        },
    }
    dump_json(ref_root / "extensions_manifest.json", manifest)
    print(json.dumps(manifest, ensure_ascii=False, indent=2))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

#!/usr/bin/env python3
"""Build deterministic tap-to-explain lexical span sidecars for English.

Production JSON stays the source of truth and remains database-ID agnostic. This
builder scans the complete English corpus, creates a global canonical lexical
inventory from concept/lexeme/word_form items, and links learner-visible target
text to that inventory using longest-match-first spans.

The generated sidecars intentionally store stable logical keys rather than DB
UUIDs. `materialize_level.py` resolves those keys to canonical rows when the
course is imported.
"""
from __future__ import annotations

import argparse
import hashlib
import json
import re
import unicodedata
from collections import Counter, defaultdict
from dataclasses import dataclass, field
from pathlib import Path
from typing import Any, Iterable

ROOT = Path(__file__).resolve().parents[1]
DEFAULT_CONTENT = ROOT / "content" / "production" / "en"
DEFAULT_OUTPUT = ROOT / "content" / "lexical-links" / "en"
DEFAULT_REPORT = ROOT / "reports" / "english-lexical-linking.json"
LEVEL_ORDER = ["Pre-A1", "A1", "A2", "B1", "B2", "C1", "C2"]
TOKEN_RE = re.compile(r"[A-Za-z]+(?:['’][A-Za-z]+)*(?:-[A-Za-z]+)*")
PERSIAN_RE = re.compile(r"[\u0600-\u06ff]")

IRREGULAR_FORMS: dict[str, tuple[str, ...]] = {
    "be": ("am", "is", "are", "was", "were", "been", "being"),
    "have": ("has", "had", "having"),
    "do": ("does", "did", "done", "doing"),
    "go": ("goes", "went", "gone", "going"),
    "say": ("says", "said", "saying"),
    "get": ("gets", "got", "gotten", "getting"),
    "make": ("makes", "made", "making"),
    "take": ("takes", "took", "taken", "taking"),
    "come": ("comes", "came", "coming"),
    "see": ("sees", "saw", "seen", "seeing"),
    "know": ("knows", "knew", "known", "knowing"),
    "think": ("thinks", "thought", "thinking"),
    "give": ("gives", "gave", "given", "giving"),
    "find": ("finds", "found", "finding"),
    "tell": ("tells", "told", "telling"),
    "leave": ("leaves", "left", "leaving"),
    "feel": ("feels", "felt", "feeling"),
    "bring": ("brings", "brought", "bringing"),
    "begin": ("begins", "began", "begun", "beginning"),
    "keep": ("keeps", "kept", "keeping"),
    "write": ("writes", "wrote", "written", "writing"),
    "meet": ("meets", "met", "meeting"),
    "run": ("runs", "ran", "running"),
    "speak": ("speaks", "spoke", "spoken", "speaking"),
    "read": ("reads", "reading"),
    "buy": ("buys", "bought", "buying"),
    "choose": ("chooses", "chose", "chosen", "choosing"),
    "eat": ("eats", "ate", "eaten", "eating"),
    "drink": ("drinks", "drank", "drunk", "drinking"),
    "catch": ("catches", "caught", "catching"),
}


def normalize(value: str) -> str:
    value = unicodedata.normalize("NFKC", value).replace("’", "'")
    return re.sub(r"\s+", " ", value.strip()).casefold()


def canonical_json(value: Any) -> str:
    return json.dumps(value, ensure_ascii=False, sort_keys=True, separators=(",", ":"))


def sha256_text(value: str) -> str:
    return hashlib.sha256(value.encode("utf-8")).hexdigest()


def lexeme_key(variant: str, lemma: str, pos: str | None) -> str:
    return f"{variant}|{normalize(lemma)}|{normalize(pos or '')}"


def word_form_key(variant: str, lemma: str, pos: str | None, surface: str, features: dict[str, Any]) -> str:
    return f"{lexeme_key(variant, lemma, pos)}|{normalize(surface)}|{canonical_json(features)}"


def token_tuple(value: str) -> tuple[str, ...]:
    return tuple(normalize(m.group(0)) for m in TOKEN_RE.finditer(value))


def regular_forms(lemma: str, pos: str | None) -> set[tuple[str, str]]:
    """Return conservative inferred English forms as (surface, rule)."""
    if not re.fullmatch(r"[A-Za-z]+", lemma):
        return set()
    base = lemma.lower()
    out: set[tuple[str, str]] = set()
    if pos in {"verb", "auxiliary", "modal"}:
        if base in IRREGULAR_FORMS:
            out.update((form, "irregular") for form in IRREGULAR_FORMS[base])
            return out
        if base.endswith("y") and len(base) > 2 and base[-2] not in "aeiou":
            third = base[:-1] + "ies"
            past = base[:-1] + "ied"
        else:
            third = base + ("es" if base.endswith(("s", "x", "z", "ch", "sh", "o")) else "s")
            past = base + ("d" if base.endswith("e") else "ed")
        if base.endswith("ie"):
            ing = base[:-2] + "ying"
        elif base.endswith("e") and not base.endswith(("ee", "ye", "oe")):
            ing = base[:-1] + "ing"
        else:
            ing = base + "ing"
        out.update({(third, "regular_3sg"), (past, "regular_past"), (ing, "regular_ing")})
    elif pos in {"noun", "proper_noun"}:
        if base.endswith("y") and len(base) > 2 and base[-2] not in "aeiou":
            plural = base[:-1] + "ies"
        else:
            plural = base + ("es" if base.endswith(("s", "x", "z", "ch", "sh")) else "s")
        out.add((plural, "regular_plural"))
    return out


@dataclass
class Candidate:
    surface: str
    lemma: str
    pos: str | None
    variant: str
    concepts: tuple[str, ...]
    word_features: dict[str, Any] | None
    source_kind: str  # exact_word_form | lemma | inferred
    inference_rule: str | None = None
    batches: set[str] = field(default_factory=set)
    lessons: set[str] = field(default_factory=set)

    @property
    def lexeme_key(self) -> str:
        return lexeme_key(self.variant, self.lemma, self.pos)

    @property
    def word_form_key(self) -> str | None:
        if self.word_features is None:
            return None
        return word_form_key(self.variant, self.lemma, self.pos, self.surface, self.word_features)

    @property
    def identity(self) -> tuple[Any, ...]:
        return (
            normalize(self.surface),
            self.lexeme_key,
            self.word_form_key,
            self.concepts,
            self.source_kind,
            self.inference_rule,
        )


def iter_batch_paths(content_root: Path) -> Iterable[tuple[str, Path]]:
    for level in LEVEL_ORDER:
        level_dir = content_root / level
        if not level_dir.exists():
            continue
        for path in sorted(level_dir.glob("*.json")):
            yield level, path


def load_corpus(content_root: Path) -> tuple[list[dict[str, Any]], dict[tuple[str, ...], list[Candidate]], dict[str, set[str]]]:
    corpus: list[dict[str, Any]] = []
    candidates_by_tokens: dict[tuple[str, ...], dict[tuple[Any, ...], Candidate]] = defaultdict(dict)
    concept_slugs: set[str] = set()
    lexeme_keys: set[str] = set()
    word_form_keys: set[str] = set()

    for level, path in iter_batch_paths(content_root):
        batch = json.loads(path.read_text(encoding="utf-8"))
        batch_id = batch["batch_id"]
        variant = batch.get("target_variant") or "en-US"
        concepts: dict[str, str] = {}
        lexemes: dict[str, dict[str, Any]] = {}

        for item in batch.get("items", []):
            if item.get("kind") != "concept":
                continue
            d = item.get("data", {})
            slug = d.get("slug")
            if not slug:
                continue
            concept_slugs.add(slug)
            if item.get("external_id"):
                concepts[item["external_id"]] = slug
            concepts[slug] = slug

        for item in batch.get("items", []):
            if item.get("kind") != "lexeme":
                continue
            d = item.get("data", {})
            ext = item.get("external_id")
            if not ext or not d.get("lemma"):
                continue
            refs = tuple(sorted({concepts.get(ref, ref) for ref in d.get("concept_refs", []) if ref}))
            rec = {
                "lemma": d["lemma"],
                "pos": d.get("part_of_speech"),
                "concepts": refs,
                "lesson": d.get("lesson_key"),
                "variant": d.get("language_variant") or variant,
            }
            lexemes[ext] = rec
            lkey = lexeme_key(rec["variant"], rec["lemma"], rec["pos"])
            lexeme_keys.add(lkey)
            c = Candidate(
                surface=rec["lemma"], lemma=rec["lemma"], pos=rec["pos"], variant=rec["variant"],
                concepts=refs, word_features=None, source_kind="lemma",
                batches={batch_id}, lessons={rec["lesson"]} if rec["lesson"] else set(),
            )
            toks = token_tuple(c.surface)
            if toks:
                existing = candidates_by_tokens[toks].get(c.identity)
                if existing:
                    existing.batches.add(batch_id); existing.lessons.update(c.lessons)
                else:
                    candidates_by_tokens[toks][c.identity] = c

            for surface, rule in regular_forms(rec["lemma"], rec["pos"]):
                inferred = Candidate(
                    surface=surface, lemma=rec["lemma"], pos=rec["pos"], variant=rec["variant"],
                    concepts=refs, word_features=None, source_kind="inferred", inference_rule=rule,
                    batches={batch_id}, lessons={rec["lesson"]} if rec["lesson"] else set(),
                )
                toks = token_tuple(surface)
                if toks:
                    existing = candidates_by_tokens[toks].get(inferred.identity)
                    if existing:
                        existing.batches.add(batch_id); existing.lessons.update(inferred.lessons)
                    else:
                        candidates_by_tokens[toks][inferred.identity] = inferred

        for item in batch.get("items", []):
            if item.get("kind") != "word_form":
                continue
            d = item.get("data", {})
            lex = lexemes.get(d.get("lexeme_ref"))
            if not lex or not d.get("surface_form"):
                continue
            features = d.get("grammatical_features") or {}
            c = Candidate(
                surface=d["surface_form"], lemma=lex["lemma"], pos=lex["pos"], variant=lex["variant"],
                concepts=lex["concepts"], word_features=features, source_kind="exact_word_form",
                batches={batch_id}, lessons={d.get("lesson_key")} if d.get("lesson_key") else set(),
            )
            word_form_keys.add(c.word_form_key or "")
            toks = token_tuple(c.surface)
            if toks:
                existing = candidates_by_tokens[toks].get(c.identity)
                if existing:
                    existing.batches.add(batch_id); existing.lessons.update(c.lessons)
                else:
                    candidates_by_tokens[toks][c.identity] = c

        corpus.append({"level": level, "path": path, "batch": batch, "concepts": concepts})

    finalized = {k: list(v.values()) for k, v in candidates_by_tokens.items()}
    inventory = {"concept_slugs": concept_slugs, "lexeme_keys": lexeme_keys, "word_form_keys": word_form_keys}
    return corpus, finalized, inventory


def walk_strings(value: Any, path: str) -> Iterable[tuple[str, str]]:
    if isinstance(value, str):
        if TOKEN_RE.search(value):
            yield path, value
    elif isinstance(value, dict):
        for key, child in value.items():
            child_path = f"{path}.{key}" if path else str(key)
            yield from walk_strings(child, child_path)
    elif isinstance(value, list):
        for index, child in enumerate(value):
            yield from walk_strings(child, f"{path}[{index}]")


def source_rows(entry: dict[str, Any]) -> Iterable[dict[str, Any]]:
    batch = entry["batch"]
    batch_id = batch["batch_id"]
    level = entry["level"]
    concepts = entry["concepts"]
    for item in batch.get("items", []):
        kind = item.get("kind")
        d = item.get("data", {})
        ext = item.get("external_id")
        lesson = d.get("lesson_key")
        context_concepts = tuple(sorted({concepts.get(ref, ref) for ref in d.get("concept_refs", []) if ref}))
        if kind == "utterance":
            text = (d.get("text") or {}).get("en")
            if text:
                yield {
                    "level": level, "batch_id": batch_id, "lesson_key": lesson,
                    "source": {"kind": "utterance", "external_id": ext, "language": "en"},
                    "text": text, "concepts": context_concepts,
                }
        elif kind == "dialogue":
            for turn in d.get("turns", []):
                text = turn.get("text")
                if text:
                    yield {
                        "level": level, "batch_id": batch_id, "lesson_key": lesson,
                        "source": {"kind": "dialogue_turn", "external_id": ext, "turn_order": int(turn["order"])},
                        "text": text, "concepts": context_concepts,
                    }
        elif kind == "exercise":
            # Exercise prompt/answer are stored as JSON in the canonical DB. We
            # annotate their nested strings by stable source_path. Options live
            # in a separate table and are intentionally deferred to a later FK.
            for root_name in ("prompt", "answer"):
                if root_name not in d:
                    continue
                for source_path, text in walk_strings(d[root_name], root_name):
                    # Persian instructions commonly contain isolated English
                    # level labels. Keep a source only when it has a lexical
                    # candidate later; the linker filters empty annotations.
                    yield {
                        "level": level, "batch_id": batch_id, "lesson_key": lesson,
                        "source": {"kind": "exercise", "external_id": ext, "source_path": source_path},
                        "text": text, "concepts": context_concepts,
                    }


def candidate_score(candidate: Candidate, batch_id: str, lesson_key: str | None, context_concepts: tuple[str, ...]) -> tuple[int, int, int, int]:
    concept_hit = int(bool(set(candidate.concepts) & set(context_concepts)))
    lesson_hit = int(bool(lesson_key and lesson_key in candidate.lessons))
    batch_hit = int(batch_id in candidate.batches)
    source_rank = {"exact_word_form": 3, "lemma": 2, "inferred": 1}[candidate.source_kind]
    return concept_hit, lesson_hit, batch_hit, source_rank


def choose_candidate(candidates: list[Candidate], batch_id: str, lesson_key: str | None, context_concepts: tuple[str, ...]) -> tuple[Candidate | None, bool]:
    if not candidates:
        return None, False
    ranked = sorted(candidates, key=lambda c: candidate_score(c, batch_id, lesson_key, context_concepts), reverse=True)
    best_score = candidate_score(ranked[0], batch_id, lesson_key, context_concepts)
    top = [c for c in ranked if candidate_score(c, batch_id, lesson_key, context_concepts) == best_score]
    # Duplicates from multiple batches collapse by canonical lexeme identity.
    distinct_lexemes = {c.lexeme_key for c in top}
    if len(distinct_lexemes) > 1:
        return None, True
    # Prefer the candidate whose concept is explicitly referenced by the source.
    if context_concepts:
        contextual = [c for c in top if set(c.concepts) & set(context_concepts)]
        if contextual:
            top = contextual
    # Exact word forms are already encoded in source_rank; deterministic tie.
    top.sort(key=lambda c: (c.lexeme_key, c.word_form_key or "", c.concepts))
    return top[0], False


def link_source(row: dict[str, Any], candidates_by_tokens: dict[tuple[str, ...], list[Candidate]]) -> tuple[list[dict[str, Any]], Counter[str], int, int, int]:
    text = row["text"]
    token_matches = list(TOKEN_RE.finditer(text))
    normalized_tokens = [normalize(m.group(0)) for m in token_matches]
    annotations: list[dict[str, Any]] = []
    unresolved: Counter[str] = Counter()
    ambiguous_count = 0
    linked_token_count = 0
    i = 0
    max_phrase = min(8, max((len(k) for k in candidates_by_tokens), default=1))
    while i < len(token_matches):
        chosen: Candidate | None = None
        chosen_len = 0
        was_ambiguous = False
        for length in range(min(max_phrase, len(token_matches) - i), 0, -1):
            key = tuple(normalized_tokens[i:i + length])
            candidates = candidates_by_tokens.get(key)
            if not candidates:
                continue
            candidate, ambiguous = choose_candidate(
                candidates, row["batch_id"], row.get("lesson_key"), row.get("concepts", ()),
            )
            if candidate:
                chosen = candidate
                chosen_len = length
                break
            if ambiguous:
                was_ambiguous = True
                # Do not fall back to a shorter nested token for an ambiguous
                # multiword expression; that would silently change meaning.
                if length > 1:
                    chosen_len = length
                    break
        if chosen:
            start = token_matches[i].start()
            end = token_matches[i + chosen_len - 1].end()
            surface = text[start:end]
            concept_slug = None
            if row.get("concepts"):
                hits = sorted(set(chosen.concepts) & set(row["concepts"]))
                if len(hits) == 1:
                    concept_slug = hits[0]
            if concept_slug is None and len(chosen.concepts) == 1:
                concept_slug = chosen.concepts[0]
            annotation_type = "phrase" if chosen_len > 1 else "word"
            if chosen.pos in {"phrasal_verb", "idiom", "expression"}:
                annotation_type = "expression"
            confidence = 1.0 if chosen.source_kind == "exact_word_form" else (0.98 if chosen.source_kind == "lemma" else 0.92)
            annotation = {
                "start": start,
                "end": end,
                "surface": surface,
                "annotation_type": annotation_type,
                "lexeme_key": chosen.lexeme_key,
                "lemma": chosen.lemma,
                "part_of_speech": chosen.pos,
                "concept_slug": concept_slug,
                "word_form_key": chosen.word_form_key,
                "confidence": confidence,
                "provenance": "deterministic",
            }
            if chosen.inference_rule:
                annotation["morphology"] = {"inferred_by": chosen.inference_rule}
            annotations.append(annotation)
            linked_token_count += chosen_len
            i += chosen_len
        else:
            unresolved[normalized_tokens[i]] += 1
            if was_ambiguous:
                ambiguous_count += 1
            i += max(chosen_len, 1)
    return annotations, unresolved, len(token_matches), linked_token_count, ambiguous_count


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--content-root", type=Path, default=DEFAULT_CONTENT)
    ap.add_argument("--output-root", type=Path, default=DEFAULT_OUTPUT)
    ap.add_argument("--report", type=Path, default=DEFAULT_REPORT)
    ap.add_argument("--levels", nargs="*", choices=LEVEL_ORDER)
    args = ap.parse_args()

    corpus, candidates_by_tokens, inventory = load_corpus(args.content_root)
    selected_levels = args.levels or LEVEL_ORDER
    args.output_root.mkdir(parents=True, exist_ok=True)
    args.report.parent.mkdir(parents=True, exist_ok=True)

    by_level: dict[str, list[dict[str, Any]]] = defaultdict(list)
    source_files: dict[str, list[dict[str, str]]] = defaultdict(list)
    for entry in corpus:
        if entry["level"] not in selected_levels:
            continue
        data = entry["path"].read_text(encoding="utf-8")
        source_files[entry["level"]].append({
            "path": str(entry["path"].relative_to(ROOT)),
            "sha256": sha256_text(data),
            "batch_id": entry["batch"]["batch_id"],
        })
        by_level[entry["level"]].extend(source_rows(entry))

    global_unresolved: Counter[str] = Counter()
    report_levels: dict[str, Any] = {}
    for level in selected_levels:
        sources_out: list[dict[str, Any]] = []
        level_unresolved: Counter[str] = Counter()
        total_tokens = linked_tokens = ambiguous = 0
        source_count = annotated_source_count = annotation_count = 0
        for row in by_level.get(level, []):
            annotations, unresolved, tokens, linked, ambiguous_count = link_source(row, candidates_by_tokens)
            total_tokens += tokens
            linked_tokens += linked
            ambiguous += ambiguous_count
            level_unresolved.update(unresolved)
            global_unresolved.update(unresolved)
            source_count += 1
            if not annotations:
                continue
            annotated_source_count += 1
            annotation_count += len(annotations)
            sources_out.append({
                "source": row["source"],
                "batch_id": row["batch_id"],
                "lesson_key": row.get("lesson_key"),
                "text": row["text"],
                "text_sha256": sha256_text(row["text"]),
                "annotations": annotations,
            })

        coverage = (linked_tokens / total_tokens) if total_tokens else 0.0
        manifest = {
            "schema_version": 1,
            "language": "en",
            "variant": "en-US",
            "level": level,
            "offset_unit": "unicode_code_point",
            "generated_from": source_files.get(level, []),
            "sources": sources_out,
            "stats": {
                "text_sources_scanned": source_count,
                "text_sources_annotated": annotated_source_count,
                "annotations": annotation_count,
                "tokens": total_tokens,
                "linked_tokens": linked_tokens,
                "token_coverage": round(coverage, 6),
                "ambiguous_tokens": ambiguous,
                "unresolved_tokens": total_tokens - linked_tokens,
                "top_unresolved": level_unresolved.most_common(100),
            },
        }
        out_path = args.output_root / f"{level}.json"
        out_path.write_text(json.dumps(manifest, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
        report_levels[level] = manifest["stats"]

    total_tokens = sum(v["tokens"] for v in report_levels.values())
    linked_tokens = sum(v["linked_tokens"] for v in report_levels.values())
    report = {
        "schema_version": 1,
        "language": "en",
        "variant": "en-US",
        "levels": report_levels,
        "inventory": {
            "concepts": len(inventory["concept_slugs"]),
            "lexemes": len(inventory["lexeme_keys"]),
            "word_forms": len(inventory["word_form_keys"]),
            "candidate_surfaces": len(candidates_by_tokens),
        },
        "totals": {
            "tokens": total_tokens,
            "linked_tokens": linked_tokens,
            "token_coverage": round(linked_tokens / total_tokens, 6) if total_tokens else 0.0,
            "top_unresolved": global_unresolved.most_common(200),
        },
    }
    args.report.write_text(json.dumps(report, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(report, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()

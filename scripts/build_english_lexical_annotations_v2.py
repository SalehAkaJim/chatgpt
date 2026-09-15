#!/usr/bin/env python3
"""English lexical linker v2: course vocabulary + app-wide core dictionary."""
from __future__ import annotations

import argparse
import json
import re
from collections import Counter, defaultdict
from pathlib import Path
from typing import Any

try:
    from scripts import build_english_lexical_annotations as base
except ModuleNotFoundError:
    import build_english_lexical_annotations as base

ROOT = base.ROOT
DEFAULT_DICTIONARY = ROOT / "content" / "dictionary" / "en-US" / "core.json"


def dict_concept_slug(lemma: str, pos: str | None) -> str:
    raw = f"{base.normalize(lemma)}-{base.normalize(pos or 'entry')}"
    slug = re.sub(r"[^a-z0-9]+", "-", raw).strip("-")
    return f"dict_en_{slug}"


def add_candidate(index, candidate: base.Candidate) -> None:
    toks = base.token_tuple(candidate.surface)
    if not toks:
        return
    bucket = index.setdefault(toks, [])
    for existing in bucket:
        if existing.identity == candidate.identity:
            existing.batches.update(candidate.batches)
            existing.lessons.update(candidate.lessons)
            return
    bucket.append(candidate)


def load_augmented_corpus(content_root: Path, dictionary_path: Path = DEFAULT_DICTIONARY):
    corpus, candidates, inventory = base.load_corpus(content_root)
    dictionary = json.loads(dictionary_path.read_text(encoding="utf-8"))
    if dictionary.get("language") != "en" or dictionary.get("variant") != "en-US":
        raise SystemExit("Unexpected English dictionary metadata")
    entries = dictionary.get("entries") or []
    seen = set()
    for entry in entries:
        lemma = entry.get("lemma")
        pos = entry.get("pos")
        if not lemma or not pos:
            raise SystemExit(f"Dictionary entry needs lemma+pos: {entry}")
        signature = (base.normalize(lemma), base.normalize(pos))
        if signature in seen:
            raise SystemExit(f"Duplicate dictionary lemma/POS: {lemma}/{pos}")
        seen.add(signature)
        concept_slug = dict_concept_slug(lemma, pos)
        lkey = base.lexeme_key("en-US", lemma, pos)
        features = {"form": "base"}
        wfkey = base.word_form_key("en-US", lemma, pos, lemma, features)
        inventory["concept_slugs"].add(concept_slug)
        inventory["lexeme_keys"].add(lkey)
        inventory["word_form_keys"].add(wfkey)
        candidate = base.Candidate(
            surface=lemma,
            lemma=lemma,
            pos=pos,
            variant="en-US",
            concepts=(concept_slug,),
            word_features=features,
            source_kind="exact_word_form",
        )
        add_candidate(candidates, candidate)
        for surface, rule in base.regular_forms(lemma, pos):
            inferred = base.Candidate(
                surface=surface,
                lemma=lemma,
                pos=pos,
                variant="en-US",
                concepts=(concept_slug,),
                word_features=None,
                source_kind="inferred",
                inference_rule=f"core_dictionary:{rule}",
            )
            add_candidate(candidates, inferred)
    inventory["app_dictionary_entries"] = len(entries)
    return corpus, candidates, inventory


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--content-root", type=Path, default=base.DEFAULT_CONTENT)
    ap.add_argument("--output-root", type=Path, default=base.DEFAULT_OUTPUT)
    ap.add_argument("--report", type=Path, default=base.DEFAULT_REPORT)
    ap.add_argument("--dictionary", type=Path, default=DEFAULT_DICTIONARY)
    ap.add_argument("--levels", nargs="*", choices=base.LEVEL_ORDER)
    args = ap.parse_args()

    corpus, candidates_by_tokens, inventory = load_augmented_corpus(args.content_root, args.dictionary)
    selected_levels = args.levels or base.LEVEL_ORDER
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
            "sha256": base.sha256_text(data),
            "batch_id": entry["batch"]["batch_id"],
        })
        by_level[entry["level"]].extend(base.source_rows(entry))

    global_unresolved: Counter[str] = Counter()
    report_levels: dict[str, Any] = {}
    for level in selected_levels:
        sources_out: list[dict[str, Any]] = []
        level_unresolved: Counter[str] = Counter()
        total_tokens = linked_tokens = ambiguous = 0
        source_count = annotated_source_count = annotation_count = 0
        for row in by_level.get(level, []):
            annotations, unresolved, tokens, linked, ambiguous_count = base.link_source(row, candidates_by_tokens)
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
                "text_sha256": base.sha256_text(row["text"]),
                "annotations": annotations,
            })

        coverage = (linked_tokens / total_tokens) if total_tokens else 0.0
        manifest = {
            "schema_version": 1,
            "language": "en",
            "variant": "en-US",
            "level": level,
            "offset_unit": "unicode_code_point",
            "dictionary": str(args.dictionary.relative_to(ROOT)),
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
        (args.output_root / f"{level}.json").write_text(
            json.dumps(manifest, ensure_ascii=False, indent=2) + "\n", encoding="utf-8"
        )
        report_levels[level] = manifest["stats"]

    total_tokens = sum(v["tokens"] for v in report_levels.values())
    linked_tokens = sum(v["linked_tokens"] for v in report_levels.values())
    report = {
        "schema_version": 2,
        "language": "en",
        "variant": "en-US",
        "dictionary": str(args.dictionary.relative_to(ROOT)),
        "levels": report_levels,
        "inventory": {
            "concepts": len(inventory["concept_slugs"]),
            "lexemes": len(inventory["lexeme_keys"]),
            "word_forms": len(inventory["word_form_keys"]),
            "candidate_surfaces": len(candidates_by_tokens),
            "app_dictionary_entries": inventory.get("app_dictionary_entries", 0),
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

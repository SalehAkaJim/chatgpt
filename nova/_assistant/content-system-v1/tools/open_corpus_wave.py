#!/usr/bin/env python3
"""Plan a normal Nova parallel wave, then bind it to verbatim open-corpus dialogue.

The existing factory remains the authority for curriculum state and integration.
This wrapper enriches worker packets before drafting so learner-visible English
conversation wording comes from pinned, licensed source material instead of being
invented independently by every worker.
"""
from __future__ import annotations

import argparse
import hashlib
import json
from pathlib import Path

from factory_wave import plan_wave
from open_dialogue_catalog import OpenDialogueCatalog


def load(path: Path) -> dict:
    return json.loads(path.read_text(encoding="utf-8"))


def dump(path: Path, payload: object) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")


def resolve(root: Path, value: str) -> Path:
    path = Path(value)
    return path if path.is_absolute() else root / path


def spec_hash(spec: dict) -> str:
    clean = {k: v for k, v in spec.items() if k != "specHash"}
    raw = json.dumps(clean, ensure_ascii=False, sort_keys=True, separators=(",", ":"))
    return hashlib.sha256(raw.encode("utf-8")).hexdigest()


def used_corpus_keys(root: Path, course_code: str) -> set[str]:
    result: set[str] = set()
    base = root / "nova/courses" / course_code / "lessons"
    for path in sorted(base.glob("*/lesson.source.json")):
        try:
            lesson = load(path)
        except Exception:
            continue
        metadata = lesson.get("metadata") or {}
        evidence = metadata.get("openCorpus") or {}
        if isinstance(evidence, dict):
            key = evidence.get("corpusKey")
            if key:
                result.add(str(key))
            for item in evidence.get("sources", []) or []:
                if isinstance(item, dict) and item.get("corpusKey"):
                    result.add(str(item["corpusKey"]))
        curriculum = lesson.get("curriculum") or {}
        for item in curriculum.get("sourceMaterial", []) or []:
            if isinstance(item, dict) and item.get("corpusKey"):
                result.add(str(item["corpusKey"]))
    return result


def topic_hints(spec: dict) -> list[str]:
    hints = []
    for item in spec.get("lexicalCandidates", [])[:12]:
        hints.extend(str(x) for x in (item.get("topics") or []) if x)
        if item.get("lemma"):
            hints.append(str(item["lemma"]))
    # Stable de-duplication while preserving candidate order.
    return list(dict.fromkeys(hints))


def enrich_wave(
    *,
    root: Path,
    manifest_path: Path,
    candidate_count: int = 6,
    allow_sharealike: bool = True,
) -> dict:
    manifest = load(manifest_path)
    course_code = manifest.get("courseCode", "en-fa")
    level = manifest.get("levelKey", "A1")
    catalog = OpenDialogueCatalog(root, course_code)
    if not catalog.ready:
        raise SystemExit(
            "Open dialogue snapshot missing. Run sync_open_dialogue_corpus.py before planning an open-corpus wave."
        )

    excluded = used_corpus_keys(root, course_code)
    packet_updates = []
    for packet in manifest.get("packets", []):
        spec_path = resolve(root, packet["provisionalSpecPath"])
        spec = load(spec_path)
        candidates = catalog.recommend(
            level=level,
            topics=topic_hints(spec),
            count=candidate_count,
            exclude_corpus_keys=excluded,
            allow_sharealike=allow_sharealike,
        )
        if not candidates:
            raise SystemExit(f"No eligible open-corpus dialogue candidate for Lesson {packet.get('sortOrder')}")

        # Reserve all candidates in this packet so parallel workers cannot independently
        # select the same source dialogue in the same wave.
        excluded.update(x["corpusKey"] for x in candidates)
        preferred = candidates[0]["corpusKey"]
        spec["openCorpusAuthoring"] = {
            "mode": "verbatim-source-only",
            "preferredCandidateKey": preferred,
            "candidateCount": len(candidates),
            "candidates": candidates,
            "requirements": [
                "Use learner-visible English dialogue wording only from one listed candidate for this Lesson.",
                "Copy each selected source turn exactly. Do not paraphrase, grammar-correct, shorten inside a turn, or normalize punctuation.",
                "A contiguous suggestedWindow may be used as an excerpt; its individual source turns must remain exact.",
                "Map source speakers to Nova learner/character roles without changing source wording.",
                "Write Persian translations and teaching instructions around the copied English; do not treat Persian support as source text.",
                "Store the selected candidate provenance under lesson.metadata.openCorpus, including corpusKey, source, sourceDialogueId, sourceCommit, sourceFile, license, textSha256, and copied window.",
                "For CC-BY-SA-4.0 material, keep copied English verbatim unless compatible ShareAlike distribution is explicitly intended.",
                "If none of the candidates can satisfy the live curriculum/story constraints, reject/reconcile the draft instead of inventing replacement English dialogue.",
            ],
            "fallbackPolicy": "source-backed-only",
        }
        boundary = spec.setdefault("authoringBoundary", {})
        data_decides = list(boundary.get("dataDecides") or [])
        if "verbatim open-corpus dialogue candidates and exact source wording" not in data_decides:
            data_decides.append("verbatim open-corpus dialogue candidates and exact source wording")
        boundary["dataDecides"] = data_decides
        nova_creates = [x for x in (boundary.get("novaCreates") or []) if x != "dialogue wording"]
        for item in (
            "selection of a compatible source dialogue candidate",
            "mapping source speakers to variable Nova characters/learner role within story rules",
            "activities",
            "Persian instructional copy and translations",
        ):
            if item not in nova_creates:
                nova_creates.append(item)
        boundary["novaCreates"] = nova_creates
        spec["specHash"] = spec_hash(spec)
        dump(spec_path, spec)

        packet["provisionalSpecHash"] = spec["specHash"]
        packet["authoringMode"] = "parallel-draft-open-corpus-verbatim"
        rules = list(packet.get("rules") or [])
        for rule in (
            "Use the packet's openCorpusAuthoring candidate material for learner-visible English dialogue; do not independently invent dialogue wording.",
            "Copy chosen source turn text exactly and preserve open-corpus provenance in lesson.metadata.openCorpus.",
            "Prefer preferredCandidateKey; use another listed candidate only when it fits the provisional/live Lesson constraints better.",
        ):
            if rule not in rules:
                rules.append(rule)
        packet["rules"] = rules
        packet_path = manifest_path.parent / "packets" / f"{int(packet['sortOrder']):04d}.packet.json"
        dump(packet_path, packet)
        packet_updates.append({
            "sortOrder": packet["sortOrder"],
            "preferredCandidateKey": preferred,
            "candidateKeys": [x["corpusKey"] for x in candidates],
            "specHash": spec["specHash"],
        })

    manifest["packets"] = manifest.get("packets", [])
    manifest["authoringMode"] = "open-corpus-verbatim-first"
    manifest["openCorpus"] = {
        "manifestPath": str((catalog.manifest_path).relative_to(root)),
        "sourceFingerprint": catalog.manifest.get("sourceFingerprint"),
        "candidateCountPerLesson": candidate_count,
        "allowShareAlike": allow_sharealike,
        "sourceBackedEnglishRequired": True,
        "packetReservations": packet_updates,
    }
    dump(manifest_path, manifest)
    return manifest


def plan_open_corpus_wave(
    *,
    root: Path,
    config_path: Path,
    workspace: Path,
    workers: int,
    candidate_count: int,
    allow_sharealike: bool,
) -> Path:
    manifest_path = plan_wave(root, config_path, workspace, workers)
    enrich_wave(
        root=root,
        manifest_path=manifest_path,
        candidate_count=candidate_count,
        allow_sharealike=allow_sharealike,
    )
    return manifest_path


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--repo-root", default=".")
    parser.add_argument("--config", required=True, type=Path)
    parser.add_argument("--workspace-dir", required=True, type=Path)
    parser.add_argument("--workers", type=int, default=8)
    parser.add_argument("--candidate-count", type=int, default=6)
    parser.add_argument("--no-sharealike", action="store_true")
    args = parser.parse_args()

    root = Path(args.repo_root).resolve()
    config = args.config if args.config.is_absolute() else root / args.config
    workspace = args.workspace_dir if args.workspace_dir.is_absolute() else root / args.workspace_dir
    manifest_path = plan_open_corpus_wave(
        root=root,
        config_path=config,
        workspace=workspace,
        workers=args.workers,
        candidate_count=max(1, args.candidate_count),
        allow_sharealike=not args.no_sharealike,
    )
    manifest = load(manifest_path)
    print(json.dumps({
        "status": "PASS",
        "wave": str(manifest_path.relative_to(root)),
        "authoringMode": manifest.get("authoringMode"),
        "workerCount": manifest.get("workerCount"),
    }, ensure_ascii=False))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

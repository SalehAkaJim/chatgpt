#!/usr/bin/env python3
"""Plan and integrate Nova authoring waves with up to fifty parallel workers.

Workers write only staged drafts. Canonical Lesson files remain single-writer:
the integration phase applies drafts sequentially against the current canonical
curriculum spec, then runs the uncached full-prefix regression in an isolated git
worktree before copying validated outputs back to the active working tree.
"""
from __future__ import annotations

import argparse
import copy
import hashlib
import json
import shutil
import subprocess
import sys
import tempfile
from datetime import datetime, timezone
from pathlib import Path

from curriculum_engine import build_curriculum_state, build_next_spec
from factory_config import resolve_generated_lessons
from language_reference_catalog import LanguageReferenceCatalog
from validate_lesson_curriculum_spec import validate_against_spec

MAX_WORKERS = 50


def load(path: Path) -> dict:
    return json.loads(path.read_text(encoding="utf-8"))


def dump(path: Path, payload: object) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")


def rel_or_abs(path: Path, root: Path) -> str:
    try:
        return str(path.relative_to(root))
    except ValueError:
        return str(path)


def canonical_lesson_path(root: Path, course_code: str, order: int) -> Path:
    return root / "nova/courses" / course_code / "lessons" / f"{order:04d}" / "lesson.source.json"


def prefix_hash(root: Path, course_code: str, numbers: list[int]) -> str:
    digest = hashlib.sha256()
    for number in numbers:
        path = canonical_lesson_path(root, course_code, int(number))
        digest.update(f"{int(number):04d}".encode("ascii"))
        digest.update(b"\0")
        digest.update(path.read_bytes())
        digest.update(b"\0")
    return digest.hexdigest()


def resolve_worker_count(config: dict, requested: int | None = None) -> int:
    """Use configured normal wave size unless an explicit worker count is requested."""
    configured = int(config.get("waveSize", MAX_WORKERS))
    workers = configured if requested is None else int(requested)
    return max(1, min(workers, MAX_WORKERS))


def _provisional_record_for_lexical(candidate: dict, order: int) -> dict:
    return {
        "lemma": candidate.get("lemma"),
        "firstLesson": order,
        "lastLesson": order,
        "roles": ["target"],
        "referenceKeys": [candidate.get("referenceKey")] if candidate.get("referenceKey") else [],
    }


def _provisional_record_for_grammar(candidate: dict, order: int) -> dict:
    return {
        "grammarKey": candidate.get("grammarKey"),
        "grammaticalItem": candidate.get("grammaticalItem"),
        "firstLesson": order,
        "lastLesson": order,
        "exposureCount": 1,
        "evidenceKinds": ["provisional_wave_reservation"],
        "maxMatchScore": 1.0,
    }


def advance_provisional_state(state: dict, spec: dict) -> dict:
    """Reserve top candidates so parallel packets do not all chase the same target."""
    next_state = copy.deepcopy(state)
    order = int(spec["sortOrder"])

    lexical = next((x for x in spec.get("lexicalCandidates", []) if x.get("lemma")), None)
    if lexical:
        known = {x.get("lemma") for x in next_state.get("knownLexical", [])}
        if lexical["lemma"] not in known:
            next_state.setdefault("knownLexical", []).append(_provisional_record_for_lexical(lexical, order))

    grammar = next((x for x in spec.get("grammarCandidates", []) if x.get("grammarKey")), None)
    if grammar:
        introduced = {x.get("grammarKey") for x in next_state.get("introducedGrammar", [])}
        if grammar["grammarKey"] not in introduced:
            next_state.setdefault("introducedGrammar", []).append(_provisional_record_for_grammar(grammar, order))

    next_state.setdefault("lessonHistory", []).append({
        "lessonKey": f"PROVISIONAL-{order:04d}",
        "sortOrder": order,
        "levelKey": spec.get("levelKey"),
        "primaryOutcomeKey": None,
        "participants": [],
        "arcKey": None,
        "sourceHash": None,
    })
    next_state["lastLessonSortOrder"] = order
    return next_state


def make_packet(*, wave_key: str, worker_index: int, spec: dict, wave_dir: Path, root: Path) -> dict:
    order = int(spec["sortOrder"])
    staging_path = wave_dir / "workers" / f"w{worker_index:02d}" / f"{order:04d}" / "lesson.source.json"
    spec_path = wave_dir / "packets" / f"{order:04d}.spec.json"
    return {
        "schemaVersion": 1,
        "waveKey": wave_key,
        "workerId": f"w{worker_index:02d}",
        "sortOrder": order,
        "lessonKey": f"EN-{spec.get('levelKey', 'A1')}-L-{order:04d}",
        "provisionalSpecPath": rel_or_abs(spec_path, root),
        "provisionalSpecHash": spec.get("specHash"),
        "stagingPath": rel_or_abs(staging_path, root),
        "canonicalPath": rel_or_abs(
            canonical_lesson_path(root, str(spec.get("courseCode") or "en-fa"), order),
            root,
        ),
        "authoringMode": "parallel-draft",
        "rules": [
            "Write only the stagingPath; never write canonical Lesson files from a worker.",
            "Treat the packet spec as provisional. The Integration Writer rechecks the live canonical spec in order.",
            "Keep learner role and story participants variable; do not mechanically repeat the immediately previous cast.",
            "Do not invent lexical/reference evidence. Use only candidates/evidence allowed by the packet.",
            "Do not generate paid audio during worker authoring.",
        ],
    }


def plan_wave(root: Path, config_path: Path, workspace: Path, workers: int | None = None) -> Path:
    config = load(config_path)
    course_code = config.get("courseCode", "en-fa")
    level = config.get("level", "A1")
    workers = resolve_worker_count(config, workers)
    numbers = resolve_generated_lessons(root, config, course_code)
    catalog = LanguageReferenceCatalog(root, course_code)
    if not catalog.extensions_ready:
        raise SystemExit("Language reference extensions missing; sync them before wave planning")

    state = build_curriculum_state(root, course_code, numbers, catalog)
    first = int(state.get("lastLessonSortOrder") or 0) + 1
    last = first + workers - 1
    wave_key = f"{course_code}-{level}-{first:04d}-{last:04d}"
    wave_dir = workspace / "waves" / wave_key
    if wave_dir.exists():
        raise SystemExit(f"Wave already exists: {rel_or_abs(wave_dir, root)}")

    provisional_state = copy.deepcopy(state)
    packets = []
    reserved = []
    for worker_index in range(1, workers + 1):
        order = first + worker_index - 1
        canonical_spec_path = workspace / "specs" / f"{order:04d}.json"
        if worker_index == 1 and canonical_spec_path.exists():
            spec = load(canonical_spec_path)
        else:
            spec = build_next_spec(state=provisional_state, catalog=catalog, level=level)
        if int(spec.get("sortOrder") or 0) != order:
            raise SystemExit(f"Planner produced sortOrder {spec.get('sortOrder')} for expected slot {order}")
        spec["wavePlanning"] = {
            "provisional": worker_index != 1,
            "waveKey": wave_key,
            "workerId": f"w{worker_index:02d}",
            "integrationRule": "The live canonical spec wins if sequential integration changes candidate order.",
        }
        spec_path = wave_dir / "packets" / f"{order:04d}.spec.json"
        dump(spec_path, spec)
        packet = make_packet(
            wave_key=wave_key,
            worker_index=worker_index,
            spec=spec,
            wave_dir=wave_dir,
            root=root,
        )
        dump(wave_dir / "packets" / f"{order:04d}.packet.json", packet)
        packets.append(packet)
        reserved.append({
            "sortOrder": order,
            "lexical": (spec.get("lexicalCandidates") or [{}])[0].get("lemma"),
            "grammarKey": (spec.get("grammarCandidates") or [{}])[0].get("grammarKey"),
        })
        provisional_state = advance_provisional_state(provisional_state, spec)

    manifest = {
        "schemaVersion": 1,
        "waveKey": wave_key,
        "courseCode": course_code,
        "levelKey": level,
        "createdAt": datetime.now(timezone.utc).isoformat(),
        "workerCount": workers,
        "integrationWriter": "single-sequential",
        "baseGeneratedLessons": numbers,
        "basePrefixHash": prefix_hash(root, course_code, numbers),
        "firstSortOrder": first,
        "lastSortOrder": last,
        "configPath": rel_or_abs(config_path, root),
        "workspaceDir": rel_or_abs(workspace, root),
        "fullPrefixRegressionRequired": True,
        "reservedTopCandidates": reserved,
        "packets": packets,
        "status": "PLANNED",
    }
    manifest_path = wave_dir / "wave.json"
    dump(manifest_path, manifest)
    return manifest_path


def enrich_planned_wave_from_config(*, root: Path, manifest_path: Path, config: dict) -> dict:
    """Apply source-backed dialogue authoring when production config enables it."""
    if not config.get("openCorpusAuthoring", False):
        return load(manifest_path)

    from open_corpus_wave import enrich_wave

    candidate_count = max(1, int(config.get("openCorpusCandidateCount", 6)))
    allow_sharealike = bool(config.get("openCorpusAllowShareAlike", True))
    return enrich_wave(
        root=root,
        manifest_path=manifest_path,
        candidate_count=candidate_count,
        allow_sharealike=allow_sharealike,
    )


def staged_paths(root: Path, manifest: dict) -> list[tuple[dict, Path]]:
    result = []
    for packet in manifest.get("packets", []):
        path = Path(packet["stagingPath"])
        if not path.is_absolute():
            path = root / path
        result.append((packet, path))
    return result


def wave_status(root: Path, manifest_path: Path) -> dict:
    manifest = load(manifest_path)
    slots = []
    ready = 0
    for packet, path in staged_paths(root, manifest):
        exists = path.exists()
        if exists:
            ready += 1
        slots.append({
            "workerId": packet["workerId"],
            "sortOrder": packet["sortOrder"],
            "staged": exists,
            "stagingPath": packet["stagingPath"],
        })
    return {
        "waveKey": manifest["waveKey"],
        "workerCount": manifest["workerCount"],
        "readyDrafts": ready,
        "allDraftsReady": ready == int(manifest["workerCount"]),
        "slots": slots,
    }


def _rehash_spec(spec: dict) -> dict:
    rebound = copy.deepcopy(spec)
    rebound.pop("specHash", None)
    raw = json.dumps(rebound, ensure_ascii=False, sort_keys=True, separators=(",", ":"))
    rebound["specHash"] = hashlib.sha256(raw.encode("utf-8")).hexdigest()
    return rebound


def reconcile_live_spec_metadata(
    lesson: dict,
    live_spec: dict,
    state: dict,
    *,
    provisional_spec: dict | None = None,
    eligible_grammar_keys: set[str] | None = None,
) -> tuple[dict, dict]:
    """Bind a staged parallel draft to the live sequential curriculum contract.

    If an earlier Lesson in the same wave already introduced a reserved grammar key,
    convert that key to explicit consolidation. If this removes the final committed
    grammar target from a grammar-pattern Lesson that still introduces lexical material,
    reclassify it as lexical context so product-quality semantics stay truthful.

    A second legitimate parallel-authoring case is ranking drift: a grammar key was
    source-backed and valid in this packet's provisional spec, remains eligible with
    all prerequisites satisfied, but falls outside the live top-N candidate window
    after earlier real drafts change ranking. In that narrow case retain the original
    candidate in the bound per-Lesson spec, record the reconciliation, and rehash the
    contract. This preserves strict eligibility while avoiding false failures caused
    only by top-N ranking changes.
    """
    reconciled = copy.deepcopy(lesson)
    bound_spec = copy.deepcopy(live_spec)
    curriculum = reconciled.setdefault("curriculum", {})
    language_ref = curriculum.setdefault("languageReference", {})

    target_keys = [x for x in language_ref.get("grammarTargetKeys", []) if x]
    candidate_keys = {
        x.get("grammarKey")
        for x in bound_spec.get("grammarCandidates", [])
        if x.get("grammarKey")
    }
    introduced_keys = {
        x.get("grammarKey")
        for x in state.get("introducedGrammar", [])
        if x.get("grammarKey")
    }

    reconciled_as_review = [
        key for key in target_keys
        if key not in candidate_keys and key in introduced_keys
    ]
    if reconciled_as_review:
        language_ref["grammarTargetKeys"] = [
            key for key in target_keys if key not in reconciled_as_review
        ]
        language_ref["integrationReconciledGrammarKeys"] = reconciled_as_review
        if not language_ref["grammarTargetKeys"]:
            language_ref["noNewGrammarReason"] = (
                "Parallel-wave grammar reservation was already introduced earlier in "
                "the live sequential prefix; this Lesson consolidates that construction."
            )
            metadata = reconciled.setdefault("metadata", {})
            if metadata.get("lessonArchetype") == "grammar_pattern":
                has_lexical_target = any(
                    item.get("role") == "target"
                    for item in (reconciled.get("lexicalItems") or [])
                )
                if has_lexical_target:
                    metadata["lessonArchetype"] = "lexical_context"
                    language_ref["integrationReconciledLessonArchetype"] = {
                        "from": "grammar_pattern",
                        "to": "lexical_context",
                        "reason": "final_new_grammar_target_became_live_prefix_consolidation",
                    }

    remaining_targets = [x for x in language_ref.get("grammarTargetKeys", []) if x]
    provisional_candidates = {
        x.get("grammarKey"): x
        for x in (provisional_spec or {}).get("grammarCandidates", [])
        if x.get("grammarKey")
    }
    eligible = set(eligible_grammar_keys or ())
    retained = [
        key for key in remaining_targets
        if key not in candidate_keys
        and key not in introduced_keys
        and key in provisional_candidates
        and key in eligible
    ]
    if retained:
        current_rows = list(bound_spec.get("grammarCandidates", []) or [])
        current_keys = {x.get("grammarKey") for x in current_rows if x.get("grammarKey")}
        for key in retained:
            if key in current_keys:
                continue
            row = copy.deepcopy(provisional_candidates[key])
            row["integrationStatus"] = "retained_still_eligible_provisional_candidate"
            row["provisionalSpecHash"] = (provisional_spec or {}).get("specHash")
            current_rows.append(row)
            current_keys.add(key)
        bound_spec["grammarCandidates"] = current_rows
        bound_spec["integrationReconciliation"] = {
            "mode": "retain_still_eligible_provisional_grammar",
            "retainedGrammarKeys": retained,
            "provisionalSpecKey": (provisional_spec or {}).get("specKey"),
            "provisionalSpecHash": (provisional_spec or {}).get("specHash"),
        }
        bound_spec = _rehash_spec(bound_spec)
        language_ref["integrationRetainedProvisionalGrammarKeys"] = retained

    language_ref["specKey"] = bound_spec.get("specKey")
    language_ref["specHash"] = bound_spec.get("specHash")
    return reconciled, bound_spec


def _run(cmd: list[str], *, cwd: Path) -> None:
    completed = subprocess.run(cmd, cwd=cwd, text=True)
    if completed.returncode != 0:
        raise RuntimeError(f"Command failed ({completed.returncode}): {' '.join(cmd)}")


def _copy_validated_outputs(
    *,
    source_root: Path,
    destination_root: Path,
    manifest: dict,
    workspace_rel: Path,
) -> None:
    course_code = manifest["courseCode"]
    first = int(manifest["firstSortOrder"])
    last = int(manifest["lastSortOrder"])

    for order in range(first, last + 1):
        src_dir = source_root / "nova/courses" / course_code / "lessons" / f"{order:04d}"
        dst_dir = destination_root / "nova/courses" / course_code / "lessons" / f"{order:04d}"
        dst_dir.mkdir(parents=True, exist_ok=True)
        for name in ("lesson.source.json", "language.plan.json"):
            src = src_dir / name
            if src.exists():
                shutil.copy2(src, dst_dir / name)

    src_workspace = source_root / workspace_rel
    dst_workspace = destination_root / workspace_rel
    dst_workspace.mkdir(parents=True, exist_ok=True)
    for name in ("curriculum_state.json", "language_curriculum_summary.json", "factory_validation.json"):
        src = src_workspace / name
        if src.exists():
            shutil.copy2(src, dst_workspace / name)

    src_specs = src_workspace / "specs"
    dst_specs = dst_workspace / "specs"
    dst_specs.mkdir(parents=True, exist_ok=True)
    for order in range(first, last + 2):
        src = src_specs / f"{order:04d}.json"
        if src.exists():
            shutil.copy2(src, dst_specs / src.name)


def integrate_wave(root: Path, manifest_path: Path, *, cache_dir: Path) -> None:
    manifest = load(manifest_path)
    course_code = manifest["courseCode"]
    config_rel = Path(manifest["configPath"])
    workspace_rel = Path(manifest["workspaceDir"])
    config_path = root / config_rel

    config = load(config_path)
    current_numbers = resolve_generated_lessons(root, config, course_code)
    if current_numbers != manifest.get("baseGeneratedLessons"):
        raise SystemExit("Canonical Lesson prefix changed after this wave was planned; re-plan the wave.")
    if prefix_hash(root, course_code, current_numbers) != manifest.get("basePrefixHash"):
        raise SystemExit("Canonical Lesson bytes changed after this wave was planned; re-plan the wave.")

    missing = [packet["stagingPath"] for packet, path in staged_paths(root, manifest) if not path.exists()]
    if missing:
        raise SystemExit("Missing staged worker drafts: " + ", ".join(missing))

    for packet, _ in staged_paths(root, manifest):
        canonical = root / packet["canonicalPath"]
        if canonical.exists():
            raise SystemExit(f"Refusing to overwrite existing canonical Lesson: {packet['canonicalPath']}")

    tools_rel = Path("nova/_assistant/content-system-v1/tools")
    with tempfile.TemporaryDirectory(prefix="nova-wave-") as tmp:
        worktree = Path(tmp) / "repo"
        _run(["git", "-C", str(root), "worktree", "add", "--detach", str(worktree), "HEAD"], cwd=root)
        try:
            temp_config = worktree / config_rel
            temp_workspace = worktree / workspace_rel
            for packet, draft_path in staged_paths(root, manifest):
                order = int(packet["sortOrder"])
                live_numbers = resolve_generated_lessons(worktree, config, course_code)
                catalog = LanguageReferenceCatalog(worktree, course_code)
                state = build_curriculum_state(worktree, course_code, live_numbers, catalog)
                locked_spec_path = temp_workspace / "specs" / f"{order:04d}.json"
                live_spec = load(locked_spec_path) if locked_spec_path.exists() else build_next_spec(
                    state=state,
                    catalog=catalog,
                    level=manifest["levelKey"],
                )
                if int(live_spec.get("sortOrder") or 0) != order:
                    raise RuntimeError(
                        f"Integration order drift: live spec is {live_spec.get('sortOrder')} but draft is {order}"
                    )

                provisional_path = Path(packet["provisionalSpecPath"])
                if not provisional_path.is_absolute():
                    provisional_path = worktree / provisional_path
                provisional_spec = load(provisional_path)
                if provisional_spec.get("specHash") != packet.get("provisionalSpecHash"):
                    raise RuntimeError(
                        f"Draft {order:04d} provisional spec hash does not match its packet manifest"
                    )

                introduced_keys = {
                    x.get("grammarKey")
                    for x in state.get("introducedGrammar", [])
                    if x.get("grammarKey")
                }
                all_grammar_rows = catalog.rank_grammar_candidates(
                    level=manifest["levelKey"],
                    introduced_keys=introduced_keys,
                    limit=max(50, len(catalog.grammar_items(manifest["levelKey"]))),
                )
                eligible_grammar_keys = {
                    x.get("grammarKey")
                    for x in all_grammar_rows
                    if x.get("grammarKey") and not x.get("missingPrerequisiteKeys")
                }

                lesson, bound_spec = reconcile_live_spec_metadata(
                    load(draft_path),
                    live_spec,
                    state,
                    provisional_spec=provisional_spec,
                    eligible_grammar_keys=eligible_grammar_keys,
                )
                report = validate_against_spec(
                    lesson,
                    bound_spec,
                    enforce_from=int(config.get("curriculumSpecEnforceFromSortOrder", 25)),
                )
                if report.get("errors"):
                    joined = "\n".join(report["errors"])
                    raise RuntimeError(
                        f"Draft {order:04d} does not satisfy the live canonical curriculum spec:\n{joined}"
                    )

                # Bind the exact sequential contract before creating the Lesson. The
                # curriculum pipeline treats a spec as immutable once its Lesson exists.
                dump(locked_spec_path, bound_spec)

                target = canonical_lesson_path(worktree, course_code, order)
                dump(target, lesson)

                _run([
                    sys.executable,
                    str(worktree / tools_rel / "validate_factory_incremental.py"),
                    "--repo-root", str(worktree),
                    "--config", str(temp_config),
                    "--lesson", str(target),
                    "--cache-dir", str(cache_dir),
                ], cwd=worktree)

                _run([
                    sys.executable,
                    str(worktree / tools_rel / "run_curriculum_pipeline.py"),
                    "--repo-root", str(worktree),
                    "--course", course_code,
                    "--config", str(temp_config),
                    "--workspace-dir", str(temp_workspace),
                ], cwd=worktree)

            _run([
                sys.executable,
                str(worktree / tools_rel / "validate_factory_prefix.py"),
                "--repo-root", str(worktree),
                "--config", str(temp_config),
                "--output", str(temp_workspace / "factory_validation.json"),
            ], cwd=worktree)
            _copy_validated_outputs(
                source_root=worktree,
                destination_root=root,
                manifest=manifest,
                workspace_rel=workspace_rel,
            )
        finally:
            subprocess.run(["git", "-C", str(root), "worktree", "remove", "--force", str(worktree)], cwd=root)

    manifest["status"] = "INTEGRATED"
    manifest["integratedAt"] = datetime.now(timezone.utc).isoformat()
    dump(manifest_path, manifest)


def main() -> int:
    p = argparse.ArgumentParser()
    sub = p.add_subparsers(dest="command", required=True)

    plan = sub.add_parser("plan")
    plan.add_argument("--repo-root", default=".")
    plan.add_argument("--config", type=Path, required=True)
    plan.add_argument("--workspace-dir", type=Path, required=True)
    plan.add_argument("--workers", type=int)

    status = sub.add_parser("status")
    status.add_argument("--repo-root", default=".")
    status.add_argument("--wave", type=Path, required=True)

    integrate = sub.add_parser("integrate")
    integrate.add_argument("--repo-root", default=".")
    integrate.add_argument("--wave", type=Path, required=True)
    integrate.add_argument("--cache-dir", type=Path, default=Path(".cache/nova-validation"))

    args = p.parse_args()
    root = Path(args.repo_root).resolve()
    if args.command == "plan":
        config_path = args.config if args.config.is_absolute() else root / args.config
        workspace = args.workspace_dir if args.workspace_dir.is_absolute() else root / args.workspace_dir
        config = load(config_path)
        manifest_path = plan_wave(root, config_path, workspace, args.workers)
        enrich_planned_wave_from_config(root=root, manifest_path=manifest_path, config=config)
        print(rel_or_abs(manifest_path, root))
        return 0
    if args.command == "status":
        manifest_path = args.wave if args.wave.is_absolute() else root / args.wave
        print(json.dumps(wave_status(root, manifest_path), ensure_ascii=False, indent=2))
        return 0
    if args.command == "integrate":
        manifest_path = args.wave if args.wave.is_absolute() else root / args.wave
        cache_dir = args.cache_dir if args.cache_dir.is_absolute() else root / args.cache_dir
        integrate_wave(root, manifest_path, cache_dir=cache_dir)
        print(json.dumps({"status": "PASS", "wave": rel_or_abs(manifest_path, root)}, ensure_ascii=False))
        return 0
    return 2


if __name__ == "__main__":
    raise SystemExit(main())

#!/usr/bin/env python3
"""Build Nova's verbatim open-dialogue authoring corpus.

This sync step is the only place that fetches the upstream dialogue datasets.
Lesson authoring consumes the committed, compressed snapshot instead of the live
network so every copied utterance is reproducible and provenance can be audited.

The snapshot intentionally preserves learner-visible English source text byte-for-
byte after JSON decoding. Metadata is normalized; utterance wording is not.
"""
from __future__ import annotations

import argparse
import fnmatch
import gzip
import hashlib
import json
import re
import shutil
import urllib.request
from datetime import datetime, timezone
from pathlib import Path
from typing import Iterable

UA = "NovaOpenDialogueSync/1.0 (+https://github.com/SalehAkaJim/chatgpt)"
GENERATOR_VERSION = 2
WORD_RE = re.compile(r"[A-Za-z]+(?:['’][A-Za-z]+)?")
SOURCE_NAMES = ("taskmaster", "schemaGuidedDialogue")
MIN_EXPECTED = {"taskmaster": 10000, "schemaGuidedDialogue": 15000}


def load_json(path: Path, default=None):
    if not path.exists():
        return {} if default is None else default
    return json.loads(path.read_text(encoding="utf-8"))


def dump_json(path: Path, payload: object) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")


def sha256_bytes(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def sha256_file(path: Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as handle:
        for chunk in iter(lambda: handle.read(1024 * 1024), b""):
            h.update(chunk)
    return h.hexdigest()


def http_get(url: str, *, timeout: int = 180) -> bytes:
    req = urllib.request.Request(
        url,
        headers={
            "User-Agent": UA,
            "Accept": "application/vnd.github+json, application/json, */*",
        },
    )
    with urllib.request.urlopen(req, timeout=timeout) as response:
        return response.read()


def raw_github(repo: str, commit: str, path: str) -> str:
    return f"https://raw.githubusercontent.com/{repo}/{commit}/{path}"


def source_fingerprint(lock: dict) -> str:
    payload = {
        "generatorVersion": GENERATOR_VERSION,
        "dialogueLicensePolicy": lock.get("dialogueLicensePolicy") or {},
        "sources": {name: (lock.get("sources") or {}).get(name) for name in SOURCE_NAMES},
    }
    raw = json.dumps(payload, ensure_ascii=False, sort_keys=True, separators=(",", ":"))
    return hashlib.sha256(raw.encode("utf-8")).hexdigest()


def _word_count(text: str) -> int:
    return len(WORD_RE.findall(text or ""))


def _dialogue_stats(turns: list[dict]) -> dict:
    lengths = [_word_count(str(turn.get("text") or "")) for turn in turns]
    total = sum(lengths)
    maximum = max(lengths, default=0)
    average = round(total / max(1, len(lengths)), 2)
    lexical = {
        token.lower().replace("’", "'")
        for turn in turns
        for token in WORD_RE.findall(str(turn.get("text") or ""))
    }
    if average <= 5 and maximum <= 11:
        difficulty = "starter"
    elif average <= 8 and maximum <= 17:
        difficulty = "beginner"
    elif average <= 13 and maximum <= 26:
        difficulty = "intermediate"
    else:
        difficulty = "advanced"
    return {
        "turnCount": len(turns),
        "wordCount": total,
        "uniqueTokenCount": len(lexical),
        "averageTurnWords": average,
        "maxTurnWords": maximum,
        "difficultyHint": difficulty,
    }


def _signature(turns: list[dict]) -> str:
    h = hashlib.sha256()
    for turn in turns:
        h.update(str(turn.get("sourceSpeaker") or "").encode("utf-8"))
        h.update(b"\0")
        h.update(str(turn.get("text") or "").encode("utf-8"))
        h.update(b"\0")
    return h.hexdigest()


def _text_sha(turns: list[dict]) -> str:
    payload = json.dumps(
        [{"speaker": x.get("sourceSpeaker"), "text": x.get("text")} for x in turns],
        ensure_ascii=False,
        separators=(",", ":"),
    )
    return hashlib.sha256(payload.encode("utf-8")).hexdigest()


def _clean_turns(rows: Iterable[dict], *, text_key: str, speaker_key: str) -> list[dict]:
    turns = []
    for fallback_index, row in enumerate(rows or []):
        text = row.get(text_key)
        speaker = row.get(speaker_key)
        if not isinstance(text, str) or not text.strip() or not speaker:
            continue
        # Do not strip or normalize `text`: exact source wording is the product evidence.
        turns.append({
            "index": int(row.get("index", fallback_index)),
            "sourceSpeaker": str(speaker),
            "text": text,
        })
    return turns


def taskmaster_records(payload: object, *, source: dict, source_file: str) -> Iterable[dict]:
    rows = payload if isinstance(payload, list) else [payload]
    for row in rows:
        if not isinstance(row, dict):
            continue
        dialogue_id = str(row.get("conversation_id") or "").strip()
        if not dialogue_id:
            continue
        turns = _clean_turns(row.get("utterances") or [], text_key="text", speaker_key="speaker")
        if len(turns) < 2:
            continue
        instruction = str(row.get("instruction_id") or "unknown")
        intent = re.sub(r"-\d+$", "", instruction)
        domain = (intent.split("-", 1)[0] or "unknown").lower()
        record = {
            "schemaVersion": 1,
            "corpusKey": f"taskmaster:{dialogue_id}",
            "source": "taskmaster",
            "sourceDialogueId": dialogue_id,
            "domain": domain,
            "services": [intent] if intent else [],
            "license": source["license"],
            "attribution": source.get("attribution"),
            "reuseMode": source.get("reuseMode"),
            "sourceRepository": source["repository"],
            "sourceCommit": source["commit"],
            "sourceFile": source_file,
            "turns": turns,
        }
        record["stats"] = _dialogue_stats(turns)
        record["signature"] = _signature(turns)
        record["textSha256"] = _text_sha(turns)
        yield record


def sgd_records(payload: object, *, source: dict, source_file: str) -> Iterable[dict]:
    rows = payload if isinstance(payload, list) else []
    split = source_file.split("/", 1)[0]
    for row in rows:
        if not isinstance(row, dict):
            continue
        dialogue_id = str(row.get("dialogue_id") or "").strip()
        if not dialogue_id:
            continue
        turns = _clean_turns(row.get("turns") or [], text_key="utterance", speaker_key="speaker")
        if len(turns) < 2:
            continue
        services = [str(x) for x in (row.get("services") or []) if x]
        domains = sorted({re.sub(r"_\d+$", "", x).lower() for x in services if x})
        record = {
            "schemaVersion": 1,
            # SGD reuses dialogue_id values across train/dev/test. Split is part of
            # the canonical key so provenance is unique without altering source IDs.
            "corpusKey": f"schema-guided-dialogue:{split}:{dialogue_id}",
            "source": "schemaGuidedDialogue",
            "sourceDialogueId": dialogue_id,
            "domain": domains[0] if domains else "unknown",
            "services": services,
            "split": split,
            "license": source["license"],
            "attribution": source.get("attribution"),
            "reuseMode": source.get("reuseMode"),
            "sourceRepository": source["repository"],
            "sourceCommit": source["commit"],
            "sourceFile": source_file,
            "turns": turns,
        }
        record["stats"] = _dialogue_stats(turns)
        record["signature"] = _signature(turns)
        record["textSha256"] = _text_sha(turns)
        yield record


def github_tree_paths(source: dict) -> list[str]:
    repo = source["repository"]
    commit = source["commit"]
    tree_url = f"https://api.github.com/repos/{repo}/git/trees/{commit}?recursive=1"
    payload = json.loads(http_get(tree_url, timeout=120).decode("utf-8"))
    patterns = ((source.get("treeDiscovery") or {}).get("include") or [])
    result = []
    for entry in payload.get("tree", []):
        path = entry.get("path")
        if entry.get("type") != "blob" or not path:
            continue
        if any(fnmatch.fnmatch(path, pattern) for pattern in patterns):
            result.append(path)
    return sorted(result)


class ShardWriter:
    def __init__(self, root: Path, *, shard_size: int = 250):
        self.root = root
        self.shard_size = max(50, int(shard_size))
        self.buffers: dict[str, list[dict]] = {}
        self.shard_number: dict[str, int] = {}
        self.shards: list[dict] = []
        self.index_rows: list[dict] = []
        self._seen_signature: dict[str, str] = {}

    def add(self, record: dict) -> None:
        source = record["source"]
        buf = self.buffers.setdefault(source, [])
        duplicate_of = self._seen_signature.get(record["signature"])
        if not duplicate_of:
            self._seen_signature[record["signature"]] = record["corpusKey"]
        record["duplicateOf"] = duplicate_of
        buf.append(record)
        if len(buf) >= self.shard_size:
            self._flush(source)

    def _flush(self, source: str) -> None:
        rows = self.buffers.get(source) or []
        if not rows:
            return
        number = self.shard_number.get(source, 0)
        safe = re.sub(r"[^a-z0-9]+", "-", source.lower()).strip("-")
        rel = Path("shards") / f"{safe}-{number:04d}.jsonl.gz"
        path = self.root / rel
        path.parent.mkdir(parents=True, exist_ok=True)
        raw = ("\n".join(json.dumps(x, ensure_ascii=False, separators=(",", ":")) for x in rows) + "\n").encode("utf-8")
        compressed = gzip.compress(raw, compresslevel=9, mtime=0)
        path.write_bytes(compressed)
        shard_sha = sha256_bytes(compressed)
        self.shards.append({
            "path": str(rel),
            "source": source,
            "recordCount": len(rows),
            "sha256": shard_sha,
            "uncompressedBytes": len(raw),
            "compressedBytes": len(compressed),
        })
        for index, record in enumerate(rows):
            self.index_rows.append({
                "corpusKey": record["corpusKey"],
                "source": record["source"],
                "sourceDialogueId": record["sourceDialogueId"],
                "domain": record.get("domain"),
                "services": record.get("services") or [],
                "split": record.get("split"),
                "license": record["license"],
                "reuseMode": record.get("reuseMode"),
                "sourceCommit": record["sourceCommit"],
                "sourceFile": record["sourceFile"],
                "stats": record["stats"],
                "signature": record["signature"],
                "textSha256": record["textSha256"],
                "duplicateOf": record.get("duplicateOf"),
                "shardPath": str(rel),
                "shardRecordIndex": index,
            })
        self.shard_number[source] = number + 1
        self.buffers[source] = []

    def finish(self) -> tuple[list[dict], list[dict]]:
        for source in list(self.buffers):
            self._flush(source)
        index_path = self.root / "index.jsonl"
        index_path.write_text(
            "".join(json.dumps(x, ensure_ascii=False, separators=(",", ":")) + "\n" for x in self.index_rows),
            encoding="utf-8",
        )
        return self.shards, self.index_rows


def write_attribution(root: Path, sources: dict) -> None:
    tm = sources["taskmaster"]
    sgd = sources["schemaGuidedDialogue"]
    text = f"""# Nova open dialogue corpus attribution\n\nThis directory is a generated authoring reference snapshot. Canonical Nova Lessons remain under `nova/courses/`.\n\n## Taskmaster-1\n\n- Upstream: `{tm['repository']}` at `{tm['commit']}`\n- License: {tm['license']}\n- Attribution: {tm.get('attribution')}\n- Nova reuse mode: {tm.get('reuseMode')}\n\n## Schema-Guided Dialogue\n\n- Upstream: `{sgd['repository']}` at `{sgd['commit']}`\n- License: {sgd['license']}\n- Attribution: {sgd.get('attribution')}\n- Nova reuse mode: {sgd.get('reuseMode')}\n\nEvery normalized record retains its source dialogue ID, source file, pinned commit, exact learner-visible English turns, and license. CC-BY-SA material must remain verbatim unless the learner-visible adaptation is distributed under compatible ShareAlike terms.\n"""
    (root / "ATTRIBUTION.md").write_text(text, encoding="utf-8")


def snapshot_is_current(dialogue_root: Path, fingerprint: str) -> bool:
    manifest_path = dialogue_root / "manifest.json"
    if not manifest_path.exists():
        return False
    try:
        manifest = load_json(manifest_path)
    except Exception:
        return False
    if manifest.get("sourceFingerprint") != fingerprint:
        return False
    for shard in manifest.get("shards", []):
        if not (dialogue_root / shard.get("path", "")).exists():
            return False
    return (dialogue_root / "index.jsonl").exists()


def build_snapshot(repo_root: Path, *, course: str = "en-fa", shard_size: int = 250, force: bool = False) -> dict:
    ref_root = repo_root / "nova/reference" / course
    dialogue_root = ref_root / "dialogue"
    lock = load_json(ref_root / "sources.lock.json")
    sources = lock.get("sources") or {}
    missing = [name for name in SOURCE_NAMES if name not in sources]
    if missing:
        raise RuntimeError(f"Missing open dialogue sources in lock: {missing}")

    approved = set((lock.get("dialogueLicensePolicy") or {}).get("approvedLicenses") or [])
    for name in SOURCE_NAMES:
        license_name = sources[name].get("license")
        if license_name not in approved:
            raise RuntimeError(f"Dialogue source {name} uses unapproved license {license_name!r}")

    fingerprint = source_fingerprint(lock)
    if not force and snapshot_is_current(dialogue_root, fingerprint):
        manifest = load_json(dialogue_root / "manifest.json")
        print(json.dumps({"status": "SKIP", "reason": "pinned_snapshot_current", "counts": manifest.get("counts")}, ensure_ascii=False))
        return manifest

    if dialogue_root.exists():
        shutil.rmtree(dialogue_root)
    dialogue_root.mkdir(parents=True, exist_ok=True)
    writer = ShardWriter(dialogue_root, shard_size=shard_size)
    inputs = []
    counts = {name: 0 for name in SOURCE_NAMES}

    taskmaster = sources["taskmaster"]
    for logical_name, source_file in (taskmaster.get("files") or {}).items():
        raw = http_get(raw_github(taskmaster["repository"], taskmaster["commit"], source_file))
        payload = json.loads(raw.decode("utf-8"))
        before = counts["taskmaster"]
        for record in taskmaster_records(payload, source=taskmaster, source_file=source_file):
            writer.add(record)
            counts["taskmaster"] += 1
        inputs.append({
            "source": "taskmaster",
            "logicalName": logical_name,
            "path": source_file,
            "sha256": sha256_bytes(raw),
            "recordCount": counts["taskmaster"] - before,
        })

    sgd = sources["schemaGuidedDialogue"]
    sgd_paths = github_tree_paths(sgd)
    if not sgd_paths:
        raise RuntimeError("Schema-Guided Dialogue tree discovery returned no dialogue files")
    for source_file in sgd_paths:
        raw = http_get(raw_github(sgd["repository"], sgd["commit"], source_file))
        payload = json.loads(raw.decode("utf-8"))
        before = counts["schemaGuidedDialogue"]
        for record in sgd_records(payload, source=sgd, source_file=source_file):
            writer.add(record)
            counts["schemaGuidedDialogue"] += 1
        inputs.append({
            "source": "schemaGuidedDialogue",
            "path": source_file,
            "sha256": sha256_bytes(raw),
            "recordCount": counts["schemaGuidedDialogue"] - before,
        })

    for source_name, minimum in MIN_EXPECTED.items():
        if counts[source_name] < minimum:
            raise RuntimeError(
                f"{source_name} produced only {counts[source_name]} dialogues; expected at least {minimum}. Refusing suspicious snapshot."
            )

    shards, index_rows = writer.finish()
    write_attribution(dialogue_root, sources)
    difficulty_counts: dict[str, int] = {}
    duplicate_count = 0
    for row in index_rows:
        hint = (row.get("stats") or {}).get("difficultyHint") or "unknown"
        difficulty_counts[hint] = difficulty_counts.get(hint, 0) + 1
        duplicate_count += int(bool(row.get("duplicateOf")))

    manifest = {
        "schemaVersion": 1,
        "generatorVersion": GENERATOR_VERSION,
        "courseCode": course,
        "generatedAt": datetime.now(timezone.utc).isoformat(),
        "sourceFingerprint": fingerprint,
        "authoringMode": "verbatim-first",
        "textPreservationRule": "turn.text is copied exactly from the pinned source JSON after decoding; no stripping, punctuation normalization, or rewriting is performed",
        "counts": {
            **counts,
            "total": len(index_rows),
            "exactDuplicateRecords": duplicate_count,
            "difficultyHints": difficulty_counts,
        },
        "sourceLocks": {
            name: {
                "repository": sources[name]["repository"],
                "commit": sources[name]["commit"],
                "license": sources[name]["license"],
                "reuseMode": sources[name].get("reuseMode"),
            }
            for name in SOURCE_NAMES
        },
        "inputs": inputs,
        "index": {
            "path": "index.jsonl",
            "sha256": sha256_file(dialogue_root / "index.jsonl"),
            "recordCount": len(index_rows),
        },
        "shards": shards,
    }
    dump_json(dialogue_root / "manifest.json", manifest)
    print(json.dumps({"status": "PASS", "counts": manifest["counts"], "shards": len(shards)}, ensure_ascii=False))
    return manifest


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--repo-root", default=".")
    parser.add_argument("--course", default="en-fa")
    parser.add_argument("--shard-size", type=int, default=250)
    parser.add_argument("--force", action="store_true")
    args = parser.parse_args()
    build_snapshot(
        Path(args.repo_root).resolve(),
        course=args.course,
        shard_size=args.shard_size,
        force=args.force,
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

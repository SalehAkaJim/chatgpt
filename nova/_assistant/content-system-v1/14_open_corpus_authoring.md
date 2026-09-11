# 14 — Open-corpus-first authoring

Nova can source learner-visible English directly from pinned, reusable language datasets instead of drafting every word and dialogue from scratch.

This is a **source-material layer**, not a second Lesson source of truth. Canonical Lessons remain `nova/courses/{course}/lessons/{number}/lesson.source.json` and still pass the normal curriculum, content-quality, story, audio, SQL, runtime and full-prefix gates.

## Sources

The English→Persian course currently pins:

- **Openjam** for English lexical senses, Persian meanings, examples and topic metadata.
- **CEFR-J / Octanove** for CEFR vocabulary and grammar evidence.
- **NGSL-Spoken** for spoken-frequency priority.
- **CMUdict** for pronunciation evidence.
- **Tatoeba** for sentence/collocation evidence with per-sentence license metadata retained.
- **Taskmaster-1** for verbatim task-oriented dialogue under CC-BY-4.0.
- **Schema-Guided Dialogue** for verbatim multi-domain dialogue under CC-BY-SA-4.0.

Every network source is pinned in `nova/reference/en-fa/sources.lock.json`. Generation tools consume committed snapshots and do not fetch live upstream data while authoring a Lesson.

## Dialogue snapshot

Build the compressed source snapshot:

```bash
PYTHONPATH=nova/_assistant/content-system-v1/tools \
python nova/_assistant/content-system-v1/tools/sync_open_dialogue_corpus.py \
  --repo-root . --course en-fa
```

Validate it:

```bash
PYTHONPATH=nova/_assistant/content-system-v1/tools \
python nova/_assistant/content-system-v1/tools/validate_open_dialogue_corpus.py \
  --repo-root . --course en-fa
```

The generated `nova/reference/en-fa/dialogue/` directory contains:

- `manifest.json` — source pins, hashes, counts and shard hashes;
- `index.jsonl` — lightweight searchable metadata for every imported dialogue;
- `shards/*.jsonl.gz` — compressed full dialogue records;
- `ATTRIBUTION.md` — required source/license attribution.

Source turns are copied exactly after JSON decoding. The sync layer never strips whitespace inside the source string, fixes grammar, normalizes punctuation or rewrites an utterance.

## Production wave planning

Use the open-corpus wrapper instead of the plain planner:

```bash
python nova/_assistant/content-system-v1/tools/open_corpus_wave.py \
  --repo-root . \
  --config nova/curriculum/en-fa/factory.config.json \
  --workspace-dir nova/curriculum/en-fa \
  --workers 8
```

The wrapper first invokes the normal `factory_wave` planner, so curriculum state, vocabulary/grammar reservation and story rules stay authoritative. It then adds unique dialogue candidates to every worker packet.

For each Lesson packet:

1. previously used source dialogues are excluded;
2. candidate difficulty is ranked for the Lesson level without pretending the corpus itself carries official CEFR labels;
3. topic/domain fit is considered when source metadata supports it;
4. parallel packets reserve different candidates;
5. a short contiguous source window may be recommended for lower levels;
6. every recommended turn remains exact source text.

Workers must use source-backed learner-visible English. If none of the candidates fits the live curriculum/story contract, the draft is reconciled rather than silently replacing source text with invented dialogue.

## Canonical provenance

A Lesson that copies corpus dialogue stores provenance under `lesson.metadata.openCorpus`:

```json
{
  "corpusKey": "taskmaster:dlg-...",
  "source": "taskmaster",
  "sourceDialogueId": "dlg-...",
  "sourceCommit": "...",
  "sourceFile": "TM-1-2019/self-dialogs.json",
  "license": "CC-BY-4.0",
  "textSha256": "...",
  "window": [4, 8],
  "copyMode": "verbatim"
}
```

The existing Lesson schema already permits this under `metadata`; no runtime schema migration is required.

## Licensing behavior

License metadata is a hard provenance constraint, not an informal note.

- Taskmaster material may be copied or adapted with attribution under CC-BY-4.0.
- Schema-Guided Dialogue is CC-BY-SA-4.0. Nova defaults to **verbatim** copied English for this material. A wording adaptation must only be used when its learner-visible distribution can satisfy compatible ShareAlike terms.
- Unknown/unapproved dialogue licenses are rejected by the sync.
- Attribution and pinned source commit remain attached to every normalized record.

This keeps copyrighted commercial course/app content out of the pipeline while still moving most raw English authoring work to reusable source data.

## What remains Nova-authored

Direct source reuse removes a large part of raw English drafting, but Nova still owns:

- curriculum sequence and learning outcome;
- selection of the source dialogue/window;
- variable character and learner-role mapping;
- Persian translation/support copy;
- activity design and distractors;
- speech acceptance rules;
- story spacing/continuity;
- semantic review and learner-experience review;
- audio generation and all technical gates.

In other words, external corpora supply the language evidence and verbatim English material; Nova still turns that material into a coherent course.

## CI / caching

`.github/workflows/nova-open-corpus-sync.yml`:

- unit-tests parsers and catalog behavior on pull requests;
- syncs the full pinned corpora on `main`;
- commits compressed shards only when the source fingerprint changed or a snapshot is absent;
- validates license, hashes, index↔shard consistency and provenance before push;
- rebases and revalidates before writing back to `main`.

This is the corpus equivalent of Nova's selective validation/caching rule: unchanged upstream pins do not get downloaded and rebuilt every authoring wave.

# 11 — Parallel authoring waves

Nova bulk authoring uses a **single canonical writer** with up to **8 parallel draft workers**.

The speedup comes from parallelizing creative drafting while keeping curriculum state,
canonical Lesson files, and cross-Lesson QA sequential and deterministic.

For current English→Persian production, worker packets should be planned through the
**open-corpus wrapper** documented in `14_open_corpus_authoring.md`. The underlying
factory architecture is unchanged; the wrapper adds pinned, verbatim dialogue candidates
before workers draft learner-visible content.

## Safety model

- Workers never write `nova/courses/.../lessons/.../lesson.source.json`.
- Every worker writes only its assigned staging path under a wave directory.
- The first packet uses the current locked canonical Lesson spec when one exists.
- Later packets use provisional specs built from the same reference layer while reserving
  top grammar/lexical candidates between slots to reduce duplicate targeting.
- In open-corpus mode, packets also reserve different source-dialogue candidates so two
  workers do not independently copy the same conversation in one wave.
- Provisional specs are not a source of truth. During integration, the live sequential
  canonical spec always wins.
- Integration happens in Lesson order through one Integration Writer gate.
- Integration is tested in an isolated detached git worktree first.
- A wave is accepted only after `validate_factory_prefix.py` runs across the complete
  canonical prefix. Story and Factory Design checks are never replaced by cached results.
- Paid audio is outside worker authoring and is generated only after the normal text gates.

## Plan an 8-worker production wave

Use the source-backed planner for current production:

```bash
python nova/_assistant/content-system-v1/tools/open_corpus_wave.py \
  --repo-root . \
  --config nova/curriculum/en-fa/factory.config.json \
  --workspace-dir nova/curriculum/en-fa \
  --workers 8
```

The lower-level planner remains available for factory tests or intentionally non-corpus
experiments:

```bash
python nova/_assistant/content-system-v1/tools/factory_wave.py plan \
  --repo-root . \
  --config nova/curriculum/en-fa/factory.config.json \
  --workspace-dir nova/curriculum/en-fa \
  --workers 8
```

For the current A1 prefix this creates one packet per upcoming Lesson under:

`nova/curriculum/en-fa/waves/<waveKey>/packets/`

Each worker writes the requested `lesson.source.json` only to the `stagingPath`
declared in its packet.

In open-corpus production packets, learner-visible English dialogue must come from the
packet's `openCorpusAuthoring` candidates. Source turn text remains verbatim and the chosen
source provenance is stored under `lesson.metadata.openCorpus`.

## Check worker completion

```bash
python nova/_assistant/content-system-v1/tools/factory_wave.py status \
  --repo-root . \
  --wave nova/curriculum/en-fa/waves/<waveKey>/wave.json
```

## Fast local validation

Use the cacheable one-Lesson validator while drafting:

```bash
python nova/_assistant/content-system-v1/tools/validate_factory_incremental.py \
  --repo-root . \
  --config nova/curriculum/en-fa/factory.config.json \
  --lesson <staged-or-canonical-lesson.source.json>
```

The cache key includes the Lesson bytes plus Course, quality policy, validator code,
and committed reference lock/manifest pointers. A changed Lesson therefore becomes a
cache miss automatically.

This validator is intentionally local. It does not claim publication readiness.

## Integrate the wave

```bash
python nova/_assistant/content-system-v1/tools/factory_wave.py integrate \
  --repo-root . \
  --wave nova/curriculum/en-fa/waves/<waveKey>/wave.json
```

The Integration Writer gate:

1. rejects a stale wave if the canonical prefix changed after planning;
2. refuses to overwrite an existing canonical Lesson;
3. creates a detached git worktree at the current `HEAD`;
4. integrates staged drafts sequentially;
5. checks each draft against the live locked curriculum spec;
6. runs cacheable per-Lesson validation;
7. refreshes curriculum state and the next canonical spec after every integrated Lesson;
8. runs the **uncached full-prefix regression** after the final Lesson;
9. copies validated Lesson sources, language plans, curriculum state, specs, summary and
   factory validation back only after the whole wave passes.

If a later draft no longer fits the live spec, integration stops and that staged draft
must be reconciled by the Integration Writer. Canonical files are not silently weakened
to make a provisional packet pass.

For open-corpus Lessons, reconciliation must also preserve the chosen source English. If
that source no longer fits the live spec, select another allowed source candidate instead
of rewriting the copied English into an untraceable hybrid.

## Cache policy

`.cache/nova-validation` is disposable and ignored by git. CI may restore it between
runs, but the authoritative full-prefix gate still executes from source every time.

The open-dialogue snapshot applies the same principle at corpus scale: pinned source data
is downloaded and rebuilt only when its source fingerprint changes, while every authoring
wave reads the committed snapshot locally.

Cache is an authoring-speed optimization, not evidence of publication readiness.

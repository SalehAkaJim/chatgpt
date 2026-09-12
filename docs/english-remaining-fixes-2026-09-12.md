# Remaining English educational fixes

The user authorized all four remaining items, including the previously deferred
C1 dialogues and lesson-to-task alignment.

## Content changes

- Clarified four Pre-A1 speaking instructions. The self-introduction explicitly
  assigns the learner the role of Arman; greeting exercises explicitly ask for
  the displayed model. Existing English targets and grading keys are preserved.
- Replaced all 135 C1 dialogues (540 turns) with authored, connected exchanges.
  Every exchange establishes a situation, responds to prior information and
  reaches a decision, clarification, interpretation or next step. Existing
  dialogue IDs, turn IDs, speakers and voice profiles are retained.
- Added 50 performance tasks across all 45 C1 units: 30 writing and 20 speaking.
  Each includes a concrete task, relevant input, a non-exclusive model answer,
  Persian explanation, task-specific required points and a four-criterion rubric.
- The source-synthesis, inference, formal-proposal and integrated-capstone tasks
  contain actual bilingual source texts. The humor tasks use the newly authored
  picnic, failed-presentation and spreadsheet exchanges as contextual evidence.
  All new cases and source documents are fictional teaching material.
- The integrated task requires a justified venue decision, messages for two
  audiences and revision when four additional people request places. The formal
  proposal includes an internally checkable budget and an oral defense.

These are focused practice activities, not a complete standardized C1 examination.
The length ranges are authoring guidance, not official CEFR thresholds.

## Application contract for open responses

`exercise_type: writing` is supported by migration `005_writing_exercises.sql`.
Open speaking and writing use `answer.evaluation_mode: rubric`. They intentionally
have no `expected_text` or answer options. A client must not pass them to an
exact-match grader. `answer.model_text` is one valid example, not an answer key.

Render `prompt.sources` as source cards and resolve `prompt.source_dialogue_refs`
to the corresponding dialogue texts. Offer the existing per-turn dialogue audio
and the source audio links. Keep `answer`, feedback and model audio hidden until
after the attempt. Collect a written response or recording, then use
`metadata.assessment` and `answer.required_points_fa` for human or semantic
assessment. If no such evaluator is implemented, offer submission and rubric-based
self-review without inventing an automated pass/fail score. This repository adds
the content and data contract; it does not implement the consuming application's
writing screen or semantic evaluator.

Each rubric has scores 0–3 with observable Persian descriptors. The weighted total
is `sum(weight * criterion_score / 3)`, on a 0–100 scale. Alternative wording,
ordering and justified recommendations remain valid when they meet the task.
Existing multiple-answer exercises and runtime option/token ordering are preserved.

## Educational review and release

Generation now writes `generated`. A successful schema and semantic check can
write `validated` via `python scripts/validate_content.py BATCH --write-status`.
It cannot create an educational approval. The 251 existing English batches were
returned to `validated` because their former generation-time `approved` flags did
not have version-specific educational review evidence.

A completed educational review is recorded independently with reviewer identity,
reviewer type, timestamp, substantive notes, evidence for seven review areas and
the SHA-256 of the exact source content. Review records live under
`content/reviews/<language>/`; use `scripts/review_content.py` to create them.
A content edit makes an older review stale. Git history records changes to the
attestation; the record is not a cryptographic identity-verification system.

```bash
python scripts/review_content.py content/production/en
python scripts/review_content.py content/production/en --require-approved
python scripts/review_content.py path/to/batch.json \
  --decision approved --reviewer 'Reviewer name' --reviewer-type human \
  --evidence path/to/completed-review.json
```

The evidence file contains `notes` and `checks`. Each of `accuracy`, `naturalness`,
`task_alignment`, `answer_and_feedback`, `level_and_progression`,
`dialogue_coherence`, and `audio_text_alignment` needs a `result` of `pass` or
`not_applicable` and a specific `evidence` explanation. Record a rejection with
`--decision rejected` when the content does not meet the review requirements.
AI reviews use `--reviewer-type ai` and must identify their actual scope honestly.
No full educational approvals or human listening approvals were fabricated as
part of this implementation.

`content/reviews/english-release-status.json` is the checked-in readiness snapshot;
rerun the command to obtain current status. The folder name `content/production`
identifies canonical delivery sources, not educational approval.

Normal level imports now require current educational approval before any database
write, including cast synchronization. `--dry-run` checks structure;
`--dry-run --require-approved` checks release readiness. For an explicit review/test
import, use `--allow-unreviewed`; imported statuses remain unapproved. CI uses this
option only with its disposable MySQL service. Live database import is not run by
this change.

## Existing database update order

1. Apply `database/migrations/005_writing_exercises.sql` after the existing
   migrations. It is safe to reapply.
2. Run the normal level entrypoints after educational approval, or explicitly use
   `--allow-unreviewed` in a review/test database. Import Pre-A1 through C2 to
   synchronize quality states consistently for shared content. This inserts the
   50 new tasks and persists feedback, assessment rubrics and lesson review state.
3. Apply `database/import/en/educational_content_updates.sql` and then
   `database/import/en/educational_quality_updates.sql`. Both are deterministic,
   idempotent exports; regenerate them with the matching `scripts/export_english_*.py`
   scripts. The former updates existing prompts, dialogue titles/contexts/turns and
   feedback; the latter records source quality states and lesson review provenance.
4. After the requested audio refresh completes, apply `database/import/en/c1_audio.sql`.
   Stable IDs and learner progress are retained; obsolete audio links are archived.

## Audio and verification

Every changed C1 turn and every new model/source text is in the strict audio
manifest. The completed refresh generated and validated 601 new MP3s: 540 dialogue turns and 61 distinct
narrated source/model texts. The remaining 645 C1 assets were reused because their
English text, voice and settings are unchanged. The four Pre-A1 instruction edits
are Persian-only and retain their unchanged English audio.

ElevenLabs generation uses the existing voice locks and two workers. The completion
report is `audio/reports/english-quality-refresh.json`, keyed by the request ID
`2026-09-12-remaining-four-educational-fixes`. An audio manifest alone does not prove
that generation has finished; completion requires generated-file validation.
Source/model links use `exercise` entity keys ending in `:source:ID` or `:model`.
Archiving is scoped to each part, so refreshing a model does not archive another
source belonging to the same exercise.

Local/CI checks cover all 251 batches, preserved earlier exercise contracts,
regeneration of authored content, source references, rubric grading contracts,
missing/stale educational reviews and audio-text/character matches. MySQL checks
simulate stale imported content, apply both SQL exports twice, and verify all
1,959 exercises, all 540 C1 dialogue turns and lesson quality provenance. Audio QA
checks file existence, source/voice/settings hashes, MP3 decoding, duration and
checksums. It does not claim a human listening review of accent or delivery.

## Completion evidence

The [audio refresh run](https://github.com/SalehAkaJim/chatgpt/actions/runs/34698924635) completed successfully: 601 generated, 645 reused and all 1,246 active C1 items validated. All 601 MP3 files and their sidecars were verified in the published tree. The [audio and SQL commit](https://github.com/SalehAkaJim/chatgpt/commit/17190bd34e0bd359a65ba92bdcb0bf1577cddf33) contains the completed assets.

The [full MySQL integration](https://github.com/SalehAkaJim/chatgpt/actions/runs/34698924638), [C1 integration](https://github.com/SalehAkaJim/chatgpt/actions/runs/34698924608), and [final content validation](https://github.com/SalehAkaJim/chatgpt/actions/runs/34699028320) passed. Generation workflows for A2, B1, B2, C1 and C2 also passed. Final verification matched all 306 changed source/SQL files against the locally checked content.

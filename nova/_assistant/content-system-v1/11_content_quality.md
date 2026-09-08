# 11 — Content Quality Specification v1

This specification separates **blocking facts** from **quality judgments**.

A Lesson may pass structural/database/audio validation and still be weak content. Nova therefore uses three layers:

1. **Hard Gates** — deterministic failures that block runtime import.
2. **Quality Warnings + automated score** — measurable risk signals; the final score must still meet the import threshold.
3. **Human/model review dimensions** — judgments that should not be faked with brittle regex rules.

The canonical Lesson JSON remains the only source of truth. Quality reports are derivative.

## Hard Gates

### CQ-H01 — communicative job
A Lesson must have one non-empty `primaryOutcomeKey` and a concrete `outcomeFa`.
The outcome must describe something the learner can understand or do, not merely a grammar label.

### CQ-H02 — absolute-zero load ceiling
For `startingKnowledge=absolute_zero`:
- at most 5 target lexical items;
- at most 3 new target constructions.

This is a safety ceiling, not a production target. Lower is usually better.

### CQ-H03 — assessment cannot require support/incidental vocabulary
A scored answer must not directly require a lexical item whose role is `support` or `incidental`.
Support language can appear in guided/practice-only interaction.

### CQ-H04 — answer uniqueness
Choice activities must contain distinct visible options after normalization and exactly one indexed correct answer.

### CQ-H05 — no direct answer leakage
The exact correct answer of a scored choice task must not already appear in its learner-visible instruction or prompt.
For listening comprehension, the transcript/translation must not be configured as visible before the first attempt.

### CQ-H06 — listening evidence
A scored comprehension activity must reference at least one audio-required Turn.
Semantic grounding of the answer in the listening source is then checked in human/model review; the automated gate does not pretend to infer meaning.

### CQ-H07 — sentence order is audio-first
The source Turn must exist, require audio, and exactly match `answerEn`.
Completed answer text must remain hidden before the attempt and replay must be available.

### CQ-H08 — guided speaking integrity
Every scored guided-dialogue learner response must have:
- a learner Turn;
- `speechTargetEn`;
- at least one accepted speech form;
- model audio when `allowResponseModelAudio=true`.

`practice_only` responses are not mastery evidence.

### CQ-H09 — accepted speech sanity
Accepted speech variants must be meaningful alternatives, not formatting duplicates.
For the current Pilot, more than 5 alternatives for one target is a blocking sign that STT acceptance is being used to hide an unclear target.

### CQ-H10 — no duplicate scored task
Two scored Activities must not have the same normalized type + prompt/answer payload.
Reusing language for a changed learning demand is allowed; cloning the same task is not.

### CQ-H11 — lexical integrity at assessment
A correct answer that maps to a lexical item must resolve to one clear canonical item/sense in this Lesson.
Formatting-only duplicates are rejected.

### CQ-H12 — scored task must have an answer contract
Every scored activity type must expose an explicit deterministic answer/evaluation contract.
A task cannot be scored merely because the UI can display it.

## Quality Warnings

Warnings reduce the automated score.

- **CQ-W01 repetition pressure** — the same full target sentence is used as the answer in multiple scored activities.
- **CQ-W02 weak transfer evidence** — controlled practice has no changed-context retrieval/transfer signal and no explicit curriculum plan deferring transfer to a later Lesson.
- **CQ-W03 load near ceiling** — absolute-zero Lesson uses 4–5 target lexical items or all 3 construction slots.
- **CQ-W04 support-language load** — support/incidental or practice-only responses dominate learner Turns without independent scored evidence afterward.
- **CQ-W05 trivial distractor risk** — distractors are proper names or obviously different surface categories from the correct lexical answer. This is heuristic only.
- **CQ-W06 long beginner speech** — a scored A1 learner response exceeds the configured word threshold.
- **CQ-W07 activity-template repetition** — reserved for cross-Lesson sequence QA once multiple Lessons exist.
- **CQ-W08 no review/transfer marker** — neither Activity metadata/config nor the curriculum contains an explicit transfer/review plan.

## Automated score — import threshold

The automated score is **not a substitute for pedagogical review**.

Start at 100 and subtract policy-defined warning penalties. Hard-gate failure makes the Lesson non-importable regardless of score.

**Runtime import requires an automated score of at least 90/100.** A Lesson scoring 89 or lower must be revised before SQL compilation/import proceeds.

Interpretation:
- 90–100: eligible for runtime import after all hard gates pass;
- below 90: do not import; revise the canonical Lesson and rerun QA.

The threshold is enforced before SQL compilation/MySQL import in CI and is covered by a regression test.

## Human/model review dimensions

These stay explicitly pending until reviewed. They are not guessed from regexes.

Each is reviewed 0–5:
- English naturalness and register;
- Persian meaning quality;
- pedagogical clarity;
- distractor quality;
- dialogue plausibility;
- difficulty fit;
- repetition usefulness;
- transfer quality;
- overall coherence;
- learner experience in the prototype.

A Lesson should not be marked final/published until:
- all Hard Gates pass;
- automated score is at least 90;
- average human/model review score is at least 4.0/5;
- no manual dimension is below 3/5;
- database and audio gates also pass.

## QA resolution ownership

The product owner should not have to approve every routine QA correction Lesson by Lesson.

### Resolve autonomously
The content owner/assistant should fix without requesting approval when the issue has a clear quality-preserving resolution, including:
- duplicate or padded practice;
- weak or trivially eliminable distractors;
- answer leakage;
- excessive beginner load when the same communicative outcome can be preserved with less material;
- scored practice that is actually guided imitation rather than mastery evidence;
- grammar, naturalness or translation errors with one clearly preferable correction;
- stale/mismatched canonical, SQL, audio or prototype derivatives;
- orthography and formatting violations.

After the fix, rerun all affected gates and keep the generated report as evidence.

### Product-owner decisions are recorded, not blocking authoring
Escalation is only needed when a choice would materially change:
- the Lesson's primary communicative outcome;
- the Course/Curriculum sequence or Level placement;
- addition/removal of a core product interaction type;
- a deliberate product behavior or monetization/progression rule;
- a pedagogical tradeoff where two materially different approaches are both defensible;
- a recurring rule change that would alter many future Lessons.

When such a choice appears, **do not stop content production**. Build the Lesson using the recommended defensible default, record the unresolved choice in `review.pendingDecisions`, run normal QA/derivative generation, and continue to later Lessons. The product owner can return to the file later and resolve the decision.

`pendingDecisions` are authoring/review metadata and are not compiled into runtime Lesson rows. Their presence does not reduce the automated quality score and does not block test/runtime import when the Lesson otherwise scores at least 90. Final publication approval may still wait for resolution when the decision materially affects the released experience.

### Warning handling
A warning is not automatically a question for the product owner. First determine whether it is a real defect, an intentional beginner scaffold, or a false-positive/over-broad heuristic. Fix clear defects autonomously. Keep intentional scaffolds documented. Change a QA heuristic only when its rationale and regression test are updated together.

## Failure behavior

Fix the canonical source, never the generated quality report.
Warnings should be resolved when they indicate a real quality problem; do not silence them by weakening the validator.
Policy thresholds may change only with an explicit rationale and a validator test.

## Pedagogy v2 extension

[13_pedagogy_v2.md](13_pedagogy_v2.md) adds CQ-H13–H15, complete option feedback, hidden-answer retrieval, source-bound semantic review and an all-text preflight before paid audio. Current review records explicitly distinguish model text review from unperformed teacher, learner and perceptual-audio validation.

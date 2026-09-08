# 11 — Content Quality Specification v1

This specification separates **blocking facts** from **quality judgments**.

A Lesson may pass structural/database/audio validation and still be weak content. Nova therefore uses three layers:

1. **Hard Gates** — deterministic failures that block publication.
2. **Quality Warnings + automated score** — measurable risk signals that do not automatically block.
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

Warnings lower the automated score but do not block v1 publication by themselves.

- **CQ-W01 repetition pressure** — the same full target sentence is used as the answer in multiple scored activities.
- **CQ-W02 weak transfer evidence** — controlled practice has no changed-context retrieval/transfer signal and no explicit curriculum plan deferring transfer to a later Lesson.
- **CQ-W03 load near ceiling** — absolute-zero Lesson uses 4–5 target lexical items or all 3 construction slots.
- **CQ-W04 support-language load** — support/incidental material occupies a large share of learner Turns.
- **CQ-W05 trivial distractor risk** — distractors are proper names or obviously different surface categories from the correct lexical answer. This is heuristic only.
- **CQ-W06 long beginner speech** — a scored A1 learner response exceeds the configured word threshold.
- **CQ-W07 activity-template repetition** — reserved for cross-Lesson sequence QA once multiple Lessons exist.
- **CQ-W08 no review/transfer marker** — neither Activity metadata/config nor the curriculum contains an explicit transfer/review plan.

## Automated score

The automated score is **not a substitute for pedagogical review**.

Start at 100 and subtract policy-defined warning penalties. Hard-gate failure makes the Lesson non-publishable regardless of score.

Suggested interpretation:
- 90–100: technically strong; still needs manual language/pedagogy review.
- 80–89: usable Pilot quality with concrete warnings to inspect.
- below 80: revise before human approval even when no hard gate failed.

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

A Lesson should not be marked publish-ready until:
- all Hard Gates pass;
- automated score is at least 80;
- average human/model review score is at least 4.0/5;
- no manual dimension is below 3/5;
- database and audio gates also pass.

## Failure behavior

Fix the canonical source, never the generated quality report.
Warnings should be resolved when they indicate a real quality problem; do not silence them by weakening the validator.
Policy thresholds may change only with an explicit rationale and a validator test.

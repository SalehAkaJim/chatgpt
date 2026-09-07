# 07 — Database/schema alignment findings

The surviving pre-reset database schema is infrastructure, but several old content assumptions conflict with Content System v1 and must be changed before Chapter 1.

## Blocking mismatches found

1. `lessons.lesson_type` currently allows only `story`.
   - v1 explicitly allows dialogue, scenario, reading, listening, practice, review or mixed lesson structures.

2. Lessons currently require both `prompt_character_id` and `learner_character_id`.
   - v1 needs a clear interlocutor model but must not force every learning experience into a two-character story representation.

3. `words` has no database invariant preventing phrases/sentences.
   - v1 requires single orthographic tokens only and needs a hard DB/validator guard against whitespace/sentence-like values.

4. `words.distractors` stores distractors as a Word property.
   - distractors belong to a specific Activity/context and should not be canonical lexical data.

5. `lesson_words.learning_role` uses `new/review/passive` plus a separate `is_target` flag.
   - v1 uses explicit roles `target/review/support/incidental`; duplicated role semantics should be removed.

6. the semantic review table stores exact `due_series` and `spacing_offset` values.
   - v1 review uses recurrence windows/priority and meaningful reuse, not fixed 1/2/4/8/16-style offsets.

7. curriculum outcome types mix communicative skills with grammar/lexical categories.
   - v1 separates communicative outcomes from enabling language units.

8. numeric difficulty fields are widespread.
   - they may remain as optional operational metadata, but v1 validation cannot use one number as a substitute for communicative, lexical, listening, reading, pronunciation and support-load dimensions.

9. Turn `tokens` are persisted as required authored data.
   - v1 treats visible Turn text as canonical and tokenization as a derived artifact that must reconstruct it exactly.

## Decision

Do not create Chapter 1 against the old schema unchanged.

The MySQL foundation will be revised after the canonical Chapter schema is locked so database structure follows content design rather than forcing content back into legacy assumptions.

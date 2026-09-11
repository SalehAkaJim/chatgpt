# Nova Product Quality v3

This is the authoring contract for new Nova English Lessons. Quality v2 remains the compatibility name used by some file paths and tools, but the active policy schema is v3.

## 1. A Lesson is not a template slot

Do not repeat one fixed activity skeleton across a wave. Every complete eight-Lesson wave must contain at least three distinct activity signatures and at least three Lesson archetypes. No archetype may occupy more than four slots.

Allowed `metadata.lessonArchetype` values:

- `lexical_context` — one bounded lexical target in a natural context, with meaningful transfer.
- `grammar_pattern` — one committed CEFR-J grammar target, practiced productively.
- `story_task` — a story-driven task where meaning comes from the scene, not a teacher command.
- `review_recombination` — recombine earlier language and retrieve due items.
- `listening_focus` — listening carries the main information gap; transcript is hidden before attempt.
- `functional_exchange` — a practical communicative function such as asking, choosing, confirming, requesting or describing.

A full wave must include at least two grammar-focused Lessons and at least one `review_recombination` Lesson. Variation must change the learner's cognitive job, not merely reorder identical multiple-choice screens.

## 2. Expose before testing

Do not score or reuse an exact canonical dialogue Turn before the learner has encountered that dialogue in the runtime sequence. Teach/expose first; then comprehension, reconstruction, transfer and retrieval may follow.

This is a hard Quality-v3 gate for new Lessons.

## 3. Do not score the same full target sentence repeatedly

The same full English target of three or more words may be practised more than once, but only the strongest occurrence should count as scored evidence. Prefer hidden-answer retrieval or genuine changed-context transfer as the scored evidence. Mark redundant repetitions `practiceOnly=true`.

Repeated identical answers create an illusion of mastery and are not generative evidence.

## 4. Distractors must teach

Never use placeholders such as `یک معنی نامربوط`, `نام یک شخص`, `گزینه نامربوط`, or generic nonsense sentences such as `People like coffee.` when the scene is unrelated.

Use plausible semantic confusions, familiar words with the wrong contextual meaning, grammatical but pragmatically wrong responses, or nearby constructions that differ on the tested point. Every option needs distinct Persian feedback explaining why it is wrong or right.

## 5. Dialogue must sound like dialogue

Characters are not teachers. Do not put `Say: ...` or `Now say: ...` in character Turns. A character needs a real reason to ask, react, request, confirm, disagree, identify, choose, or continue the event.

Known weak patterns such as `I know this pen.`, `This week is busy.`, and `Next week is free.` are not acceptable production targets. Prefer natural alternatives such as `I know this name.`, `I'm busy this week.`, and `I'm free next week.` when that is the intended meaning.

`usageFallbacks` document evidence; they never override native-naturalness review.

## 6. Story copy must describe an event

`scenarioFa` and `storyBeatFa` must be grounded in the canonical setting and actual Turns. Do not write meta-copy such as «در ادامه داستان ... درباره موضوع این درس گفت‌وگو می‌کنند».

Use at least four distinct story arcs in each complete eight-Lesson Quality-v3 window. Do not reuse the same cast or played learner role in adjacent Lessons. Returning arcs should continue a relationship or situation rather than reset it.

The Course contains cross-character arcs so future Lessons are not limited to the original six pairs. A new character may be added only after a verified independent audio voice is mapped.

## 7. Spaced lexical retrieval is mandatory

A newly introduced target must return in learner production between 3 and 10 Lessons later when enough future Lessons exist.

The legacy 40–84 review backlog remains active until cleared. Review items must actually participate in meaningful recognition, transfer or learner production; metadata-only review does not count.

## 8. Grammar and communicative progression must keep moving

Do not build long runs of vocabulary-only Lessons. In each wave, at least two Lessons must use a committed grammar target or a valid grammar-focused slot. A grammar Lesson should produce the pattern with more than one filler/context, not only recognize it.

## 9. Speaking accepts bounded real equivalence

Keep A1 answers controlled, but accept safe equivalent variants such as contraction/full-form pairs when they preserve meaning: `I'm`/`I am`, `it's`/`it is`, `don't`/`do not`, and similar bounded forms. Do not invent broad free-response acceptance.

Final retrieval must still hide the English model before the first attempt.

## 10. Pronunciation is part of the course, not just audio playback

Use explicit pronunciation practice when a target exposes a high-value difficulty for Persian speakers, especially `w/v`, `th`, final consonants, consonant clusters, vowel contrasts, word stress and common contractions. Prefer short listen-and-produce or contrast tasks over another duplicate multiple-choice item.

Pronunciation activities are practice/evidence for the sound target; STT is not a phonetic score unless a dedicated pronunciation evaluator exists. Generated TTS pronunciation/prosody still needs perceptual QA.

## 11. Persian voice

Use one consistent learner-facing voice: natural, clear Persian, conversational but not slang-heavy. Avoid mechanically mixing formal `می‌خوانم/را` and highly colloquial `می‌خونم/رو` within the same course section unless character dialogue deliberately requires it.

## 12. Review evidence is not learner evidence

`pedagogy.review.json` is model/editor review. Keep `learnerTested=false` unless actual learner evidence exists. Never infer engagement, retention, or perceived difficulty from automated validation.

## 13. Public release gate

Content generation may continue without a real learner pilot, but the course must not be marked public-release-ready until the learner-pilot requirement in `product_quality_v2.policy.json` is satisfied.

# Nova Product Quality v2

This document is the authoring contract for all new Nova English Lessons from sortOrder 125 onward.

## 1. A Lesson is not a template slot

Do not repeat one fixed six-activity skeleton across a wave. Every eight-Lesson wave must contain at least three distinct activity signatures and at least three Lesson archetypes. No archetype may occupy more than four slots.

Allowed `metadata.lessonArchetype` values:

- `lexical_context` — one bounded lexical target in a natural context, with meaningful transfer.
- `grammar_pattern` — one committed CEFR-J grammar target, practiced productively.
- `story_task` — a story-driven task where meaning comes from the scene, not a teacher command.
- `review_recombination` — no isolated new-word drill; recombine earlier language and retrieve due items.
- `listening_focus` — listening carries the main information gap; transcript is hidden before attempt.
- `functional_exchange` — a practical communicative function such as asking, choosing, confirming, requesting or describing.

A full wave must include at least two grammar-focused Lessons and at least one `review_recombination` Lesson.

## 2. Distractors must teach

Never use placeholders such as `یک معنی نامربوط`, `نام یک شخص`, `گزینه نامربوط`, or generic nonsense sentences such as `People like coffee.` when the scene is unrelated.

A distractor should normally be one of:

- a plausible semantic confusion,
- a familiar word with the wrong meaning for this context,
- a grammatically plausible but pragmatically wrong response,
- a nearby construction that differs on the exact point being tested.

Every option needs distinct Persian feedback explaining *why* it is wrong or right.

## 3. Dialogue must sound like dialogue

Characters are not teachers. Do not put `Say: ...` or `Now say: ...` in character turns.

The character should have a reason to ask, react, request, confirm, disagree, identify, choose, or continue the story. A learner response must be pragmatically licensed by the previous turn.

Known weak patterns such as `I know this pen.`, `This week is busy.`, and `Next week is free.` are not acceptable production targets. Prefer natural alternatives such as `I know this name.`, `I'm busy this week.`, and `I'm free next week.` when that is the intended meaning.

`usageFallbacks` are evidence documentation, not permission to self-approve unnatural English.

## 4. Spaced lexical retrieval is mandatory

A newly introduced target from quality-v2 Lessons must return in learner production between 3 and 10 Lessons later when enough future Lessons exist.

The legacy 40–84 review backlog is active. Until it is substantially cleared, every eight-Lesson wave must retrieve at least four distinct items whose original target Lesson was in 40–84. Put those items in `lexicalItems` with role `review` and use them naturally in learner production or a meaningful scored/retrieval task.

Do not add a review item only as metadata; it must actually participate in the Lesson.

## 5. Grammar and communicative progression must keep moving

Do not build long runs of vocabulary-only Lessons. In each wave, at least two Lessons must use a committed `grammarTargetKey` from the live spec or be replaced by a valid grammar-focused slot after sequential integration.

A grammar Lesson should produce the pattern with more than one filler/context, not only recognize it.

## 6. Speaking should allow bounded variation

Keep A1 answers controlled, but include real equivalent variants when they are natural and already supported by the Lesson, for example contraction/full-form variants. Do not invent broad free-response acceptance.

Final retrieval must still hide the English model before the first attempt.

## 7. Story continuity and learner role

Do not repeat the same cast/story on consecutive Lessons. A prior arc may return after roughly 5–10 Lessons when it advances the relationship or situation. Rotate the played learner role where possible.

A returning story needs a new beat, not merely a new target word placed in the same scene.

## 8. Persian voice

Use one consistent learner-facing voice: natural, clear Persian, conversational but not slang-heavy. Avoid mechanically mixing formal `می‌خوانم/را` and highly colloquial `می‌خونم/رو` within the same course section unless character dialogue deliberately requires it.

## 9. Review evidence is not learner evidence

`pedagogy.review.json` is a model/editor review. Keep `learnerTested=false` unless actual learner evidence exists. Never infer engagement, retention, or perceived difficulty from automated validation.

## 10. Public release gate

Content generation may continue without a real learner pilot, but the course must not be marked public-release-ready until the learner pilot requirement in `product_quality_v2.policy.json` is satisfied.

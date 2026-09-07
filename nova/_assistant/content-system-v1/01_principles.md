# 01 — Core principles

## 1. Learner reality

The learner is a Persian speaker with zero assumed English knowledge.

- Never require an English word, grammar pattern, pronunciation contrast, spelling convention, or task mechanic before it has been made learnable.
- Early English must be short, high-frequency, useful, and immediately meaningful.
- Difficulty increases through controlled complexity, not abrupt vocabulary or sentence-length jumps.
- Persian support is a scaffold and decreases gradually as comprehension grows.

## 2. Communication before coverage

Every Lesson must answer one question: **what can the learner do after this that they could not reliably do before?**

A Lesson is justified by a communicative learning job, not a topic quota or database shape.

Examples:
- greet someone and respond naturally;
- say and ask a name;
- say where you are from and understand the same question;
- request a simple item politely.

A Lesson whose only goal is “store these words” is invalid unless it is an intentional review/lexical practice experience serving an already-defined outcome.

## 3. Meaning → noticing → retrieval → transfer

New language normally moves through:
1. understandable exposure;
2. attention to meaning/form/sound when useful;
3. supported response;
4. retrieval with less support;
5. use in a changed context.

These are learning states, not fixed screens or mandatory Lesson counts. One Lesson may cover several states; an outcome may require several Lessons over time.

## 4. Natural language only

Dialogue is used only when it is a natural vehicle for learning.

- Never distort dialogue merely to repeat a target.
- Repetition belongs in learning interactions, not fake conversation.
- A short exchange, message, sign, menu, form, instruction or monologue may be better than a story.
- Target English must be something a real speaker could naturally say in that situation.

## 5. No hidden prerequisites

A scored task may require only:
- already taught language;
- language explicitly made learnable in the current Lesson;
- transparent support whose meaning is available in the task.

Incidental language may appear only when success does not depend on learning it.

## 6. Flexible Lesson design

There is no fixed Activity checklist for production content.

Listening, speaking, reading, writing, pronunciation, explanation, vocabulary teaching, recognition, recall and transfer are included only when useful for the current learning job.

The initial product Pilot intentionally exercises all core supported interaction types so the product/runtime implementation itself can be tested; that Pilot coverage requirement is not a permanent pedagogical template.

## 7. English text quality is blocking

During the English Pilot, every learner-visible English line must be auditable.

English must be grammatical, idiomatic, register-consistent, level-appropriate and free from generator-like repetition or awkward literal phrasing.

## 8. Persian is learner-facing teaching language

Persian translations and explanations must communicate meaning naturally.

- Do not force word-for-word Persian when it sounds wrong.
- Use literal alignment only when a learning interaction needs it.
- Prefer clear everyday Persian over academic terminology.
- Grammar metalanguage is optional and minimized at beginner level.

## 9. Mastery is performance, not file presence

A Lesson is not validated because files exist or row counts match.

Validation requires a fair learning experience and correct evidence for what that Lesson claims to teach or assess.

## 10. One rich source, simple runtime

Human/AI authoring happens in one canonical `lesson.source.json`.

Curriculum notes, prerequisites, outcomes, lexical roles, QA metadata and other authoring detail may remain rich there. MySQL receives only the subset required by the product runtime.

SQL, English audit files, manifests and audio are derived outputs. No derivative becomes a competing content source.

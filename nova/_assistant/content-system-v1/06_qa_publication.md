# 06 — QA and publication

## Philosophy

QA must fail loudly when content is questionable. Passing structural counts is never enough.

The candidate Chapter remains unpublished until every blocking gate below refers to the same canonical content hash.

## Gate A — curriculum

PASS requires:
- one clear primary communicative outcome;
- prerequisites already available or explicitly scaffolded;
- instructional load appropriate to current A1 stage;
- target language selected for usefulness/frequency/context, not variety for its own sake;
- a real transfer requirement defined.

## Gate B — English language

Review every learner-visible English Turn, prompt, option, answer, example and lexical item.

BLOCK on grammar error, unnatural wording, wrong register, ambiguous scored answers, unexplained advanced language, drill-like dialogue, inconsistent baseline usage, or unnatural accepted speech.

## Gate C — Persian learner support

BLOCK on wrong meaning, misleading literal translation, false rules, task ambiguity or unnecessarily technical beginner explanations.

## Gate D — learning design

PASS requires evidence that new target units move beyond exposure.

BLOCK when the learner is scored on untaught material, activities repeat without changed cognitive demand, answers are guessable from formatting, transfer is cosmetic, beginner listening becomes blind guessing, content is padded for a count, or naturalness is sacrificed for drilling.

## Gate E — lexical/data integrity

BLOCK when:
- a supposed lexical item is actually a sentence/clause, arbitrary Turn fragment, construction or tokenization accident;
- lexical atomicity/use cannot justify treating the item as one learnable vocabulary unit;
- POS/sense does not match source context;
- token/span reconstruction differs from canonical Turn text;
- punctuation becomes a lexical item;
- target/support/review/incidental classification is missing where required.

Whitespace alone must never make an item pass or fail.

## Gate F — activities

Each scored Activity must have one unambiguous task goal, valid prerequisites, natural correct answer(s), context-appropriate distractors when used, and no answer-position/template artifacts.

Speaking alternatives must be genuinely valid variants, not punctuation/case duplicates.

## Gate G — database

The deployment target is **MySQL Server 9.0.1**.

PASS requires real execution against a clean MySQL 9.0.1 test database, using the same setup/import order intended for production.

Test both:
1. schema + semantic layer + candidate Chapter in the expected contiguous course state;
2. representative runtime retrieval for Lesson, Turn, Activity and lexical-item data.

A SQL file that only looks valid or was tested on another major version does not pass the production gate.

## Gate H — audio — mandatory

Audio is part of the product, not an optional post-processing step. No Pilot Chapter can be complete/publishable without generated and tested audio.

Audio generation happens from the validated canonical source and is rerun whenever relevant source text/voice metadata changes.

PASS requires:
- exact canonical source/hash match;
- correct language/locale and intended character voice;
- every required Turn audio present;
- every audio-eligible lexical item present, including valid multiword lexical items;
- files decode successfully and are non-empty;
- duration/output sanity checks pass;
- spoken content corresponds to the exact intended canonical item;
- no stale file remains after text changes;
- no sentence is misrouted into lexical-item audio merely because of a data-classification bug.

For the English Pilot, an audio manifest must expose source text, item type, voice, path and QA status so failures can be traced directly.

## Pilot human audit

For the initial English pilot, publication additionally requires a human-review artifact containing all learner-visible English in presentation order.

Pilot rule:
- one Chapter generated at a time;
- English audit before publication;
- audio generated and QA-tested before Chapter completion;
- defects are categorized and converted into validator/generator rules where possible;
- after a meaningful defect-free streak, the manual text gate may be reconsidered, but the audio gate remains mandatory.

## Failure behavior

A failed Chapter does not advance `nextChapter`.

Repair the canonical source, regenerate every dependent output (including audio where affected), and rerun all affected gates. Never patch a derivative and call the source fixed.

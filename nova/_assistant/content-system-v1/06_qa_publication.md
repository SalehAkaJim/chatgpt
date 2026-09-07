# 06 — QA and publication

QA must fail loudly when content is questionable. A candidate Lesson is not complete until all blocking gates refer to the same canonical Lesson source/hash.

## Gate A — curriculum
PASS requires a clear instructional/communicative job, valid prerequisites, appropriate early-A1 load, useful target language and honest assessment boundaries.

## Gate B — English
Review every learner-visible Turn, prompt, option, answer, example and lexical item. BLOCK grammar errors, unnatural wording, wrong register, ambiguous answers, unexplained advanced language, drill-like dialogue or unnatural accepted speech.

## Gate C — Persian support
BLOCK wrong meaning, misleading literal translation, false teaching rules, task ambiguity or unnecessarily technical beginner explanations.

## Gate D — learning design
BLOCK scoring on untaught language, repetitive interactions without changed learning demand, blind-guess listening, padded content or fake transfer. Pilot interaction coverage tests the product; it is not a permanent Lesson template.

## Gate E — lexical/data integrity
BLOCK when a supposed lexical item is actually a sentence/clause/arbitrary Turn fragment/tokenization accident, when its lexical atomicity is unjustified, or when role/sense is misleading. A valid multiword expression may be one lexical item. Whitespace alone never decides validity.

## Gate F — Activities
Every scored Activity needs one clear task, valid prerequisites, a natural unambiguous correct response and suitable options. Speaking alternatives must be genuine alternatives, not formatting duplicates.

## Gate G — database
The deployment target is **MySQL Server 9.0.1**.

PASS requires real execution of reset → runtime schema → generated Lesson SQL → representative runtime retrieval on a clean MySQL 9.0.1 database. Looking valid is not enough.

## Gate H — audio — mandatory
No Pilot Lesson is complete without generated and tested audio.

PASS requires exact source-hash match, correct voice routing, every required Turn audio, every audio-eligible lexical item (including valid multiword items), successful decode, nonzero duration, correct source text and no stale files. The manifest exposes source text/type/voice/path/hash/status.

## Pilot human audit
The first English Pilot additionally produces `english_audit.md` with learner-visible English in presentation order. Corrections are made in `lesson.source.json` and all derivatives regenerate.

## Failure behavior
A failed Lesson does not advance `nextLesson`. Repair canonical source or the relevant generator/validator, regenerate affected outputs and rerun gates. Never patch a derivative and call the source fixed.

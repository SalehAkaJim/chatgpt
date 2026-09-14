# Nova curriculum completeness audit

## Purpose

A production batch is an atomic build chunk, not a CEFR level. A CEFR level is complete only after its cumulative curriculum coverage is educationally sufficient across communicative functions, grammar, high-frequency vocabulary, listening/speaking, reading/interpretation, pragmatic/register control, review/recycling, and capstones.

The repository must never use a fixed `10 units == complete level` rule. Ten units may constitute one batch. Completion is coverage-driven and language-specific.

## Reference architecture

German is the depth reference, not a wording/template source. Its B1, B2 and C1 spec trees each contain five batches rather than one. The later language pipelines that produced one ten-unit batch at each CEFR level therefore cannot be treated as course-complete merely because every level directory exists.

## Current structural audit

| Language | Repository state | Completeness status | Required action |
|---|---|---|---|
| German (`de`) | Deep multi-batch architecture exists for the advanced levels and remains the depth reference. | Reference / re-audit required | Preserve as benchmark and verify full level coverage rather than relying on directory presence. |
| Turkish (`tr`) | Pre-A1, A1, A2, B2, C1 and C2 each have one `batch-01`; B1 is one logical first batch split into `batch-01a`/`batch-01b`. | **REOPENED — incomplete** | Expand every under-covered CEFR level before Korean can be considered next in sequence. Start with A1 after confirming Pre-A1 foundation coverage. |
| Korean (`ko`) | Pre-A1, A1, A2, B2, C1 and C2 each have one `batch-01`; B1 is one logical first batch split into two spec files. | **REOPENED — incomplete** | Do not advance its completion status until Turkish is complete and Korean receives cumulative multi-batch coverage. |
| Italian (`it`) | Pre-A1 through C2 are represented primarily by one `batch-01` per level; C2 also has split unit source files for that same batch. | **REOPENED — incomplete** | Expand after Korean is genuinely complete. Existing audio/DB artifacts remain valid batch artifacts, not proof of level completeness. |
| French (`fr`) | Pre-A1, A1, A2 and B1 currently each have one batch. | **PAUSED — incomplete** | Do not advance French while earlier languages are under-covered. French B1 audio already produced remains a valid completed batch only. |

## Coverage matrix contract

Every CEFR level must maintain cumulative evidence for all rows below. A row may be marked complete only when multiple lessons/tasks demonstrate progression, recycling and transfer rather than a single isolated exposure.

| Coverage dimension | Evidence required before a level can close |
|---|---|
| Communicative functions | Level-appropriate range of asking, informing, narrating, describing, requesting, negotiating, explaining, evaluating and repairing communication. |
| Grammar / form | Language-specific morphosyntax sequenced from controlled recognition to productive use in connected discourse. |
| High-frequency vocabulary | Broad everyday and level-appropriate lexical fields with deliberate recycling, collocations and productive retrieval. |
| Listening / speaking | Short and extended listening as appropriate, turn-taking, clarification, pronunciation/prosody work, and increasing spontaneous production. |
| Reading / interpretation | Increasing text length and genre variety, inference, stance/tone recognition and extraction of explicit/implicit meaning. |
| Pragmatics / register | Politeness, social distance, formality, discourse conventions, culturally natural choices and register shifts where CEFR-appropriate. |
| Review / recycling | Spaced reuse of prior grammar and lexicon, interleaving, contrastive review and cumulative mixed tasks. |
| Capstones / transfer | Integrative tasks that combine several objectives in realistic situations without merely repeating lesson scripts. |

## Level-close gate

A level is **not complete** unless all of the following are true:

1. Every planned batch for that level has completed the full content → cumulative QA → MySQL/import/idempotency → audio/voice-lock → SQL-export → final-main-commit pipeline.
2. The cumulative coverage matrix has no material CEFR objective gaps.
3. Later batches demonstrably recycle earlier material instead of forming disconnected topic islands.
4. Cumulative QA includes cross-batch checks, including dialogue-pair rotation and duplicate/near-duplicate learning content.
5. Database counts are cumulative across all batches for the level and remain idempotent.
6. Audio manifests and SQL exports include the complete cumulative level state without invalidating previously generated valid assets.

## Language-specific coverage reminders

### Turkish (Istanbul Turkish)
Prioritize productive agglutinative morphology, vowel/consonant harmony, case marking, possessive chains, tense/aspect/evidentiality progression, modality/conditionals, relative/nominalized structures, discourse particles, natural word order flexibility, politeness and contemporary Istanbul usage.

### Korean
Coverage must include Hangul literacy, particles, speech levels/honorifics, predicate morphology, tense/aspect, connective endings, counters/classifiers, clause linking, indirect speech, pragmatic omission, politeness/register choices and listening to natural reductions.

### Italian
Coverage must include article/preposition systems, clitic pronouns, tense/aspect contrasts, mood progression including congiuntivo, agreement, relative structures, discourse connectors, register control and natural spoken-vs-written differences.

### French
Coverage must include liaison/enchaînement and pronunciation, articles/partitives, pronoun/clitic systems, tense/aspect, negation/question systems, relative structures, subjunctive/conditional progression, register and spoken-vs-written conventions.

### Future non-Latin-script languages
Japanese, Arabic, Mandarin and Russian must preserve script/readings/pronunciation metadata. Existing schemas and validators must be extended before large-scale production if they cannot faithfully carry those distinctions.

## Immediate production order after this audit

1. Keep `main` technically healthy.
2. Treat already-produced French B1 as a completed **batch**, not a completed level.
3. Return to Turkish first because it is the earliest language in the mandatory sequence whose post-German levels were prematurely marked complete.
4. Expand Turkish one complete batch at a time, starting from the earliest materially under-covered level and closing each level only after the cumulative matrix passes.
5. Only then repeat the same audit/expansion cycle for Korean, Italian and French.
6. Spanish must not begin until all preceding languages pass this corrected completeness gate.

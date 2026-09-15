# Nova Language Roadmap

Updated: 2026-09-15

## Purpose

This file defines execution policy, launch-language scope, and language priority only. It must not become a source of hard-coded curriculum sizes, batch counts, deadlines, scheduling cadence, or completion assumptions.

## Product scope

The active production scope is intentionally limited to four launch languages:

1. English (`fa -> en`)
2. German (`fa -> de-DE`)
3. Turkish (`fa -> tr-TR`)
4. Korean (`fa -> ko-KR`)

No additional language should be created, expanded, repaired, scheduled, or treated as active production scope unless the product owner explicitly changes this decision later.

Historical or experimental files for Italian, French, Spanish, Japanese, Arabic, Mandarin, Russian, or any other language may remain in the repository, but they are outside the current product scope and must not cause the production pipeline to continue past Korean.

The objective of the current phase is to finish these four languages completely enough to support application development and integration. After all four languages are genuinely release-ready, content production stops and the project moves to database, API, frontend, dictionary/lexical enrichment, application behavior, and product integration work.

## Scheduling policy

- Timed/scheduled execution may be driven by an external automation approved by the product owner. This roadmap neither enables nor disables that automation and must not hard-code its cadence.
- On every scheduled or explicitly requested run, resolve the current repository state first and continue from the first genuinely incomplete priority scope rather than from a hard-coded current language, level, batch, or count.
- An explicit product-owner request may reprioritize work or change the external schedule without changing the educational completion rules below.
- No CEFR level has a fixed unit count, lesson count, batch count, or target multiple.
- No batch has a fixed size. Batch size is chosen from educational scope, dependency boundaries, QA risk, and practical execution limits.
- A level ends when its language-specific coverage is educationally complete and its required validation gates are green.
- Existing folder/file presence never proves completion.
- Historical unit counts belong in dated audit reports, not in this roadmap.
- Never copy another language's unit structure or final size just to preserve symmetry.
- Never add filler content to reach a round number.

## Source of truth for completion

Resolve current status from repository artifacts and validation results at the start of each work session. Do not rely on manually maintained numeric status in this file.

A level may be treated as complete only when the checks required for that language/level are satisfied, including as applicable:

- language-specific educational/coverage audit,
- structural content validation,
- CEFR level-boundary validation,
- canonical level import / dry-run validation,
- database integration and idempotency checks,
- cast and voice-lock validation,
- generated-audio manifest validation,
- audio voice-consistency validation,
- audio SQL export / database-link validation,
- final gap audit and capstone/readiness check when appropriate.

If a validation path does not yet exist for a language, create the smallest language-appropriate validation path before declaring that level complete.

## Execution rule

For each active language:

1. Inspect the existing repository state before authoring or overwriting anything.
2. Build or verify a language-specific coverage map for the level being worked on.
3. Reuse existing content only after it passes current quality requirements.
4. Add, revise, split, merge, or remove units based on educational need; do not preserve a historical count for its own sake.
5. Run cumulative QA after each meaningful batch.
6. Near the end of a level, run a gap audit instead of assuming a planned number of units is sufficient.
7. Close the level only after all required validation gates are green.
8. Move to the next level/language only after the current scope is genuinely complete, unless the product owner explicitly reprioritizes.
9. After Korean is complete through the intended terminal level and all four launch languages have passed their release gates, stop content production. Do not continue to a fifth language.

## Language priority

English is the baseline/reference course and remains maintenance-only unless QA or the product owner requires changes.

The active production order is:

1. English (`fa -> en`) — maintain only unless a real gap is found
2. German (`fa -> de-DE`) — maintain only unless a real gap is found
3. Turkish (`fa -> tr-TR`) — complete remaining levels and full-stack gates
4. Korean (`fa -> ko-KR`) — complete remaining levels and full-stack gates

The active language is the first language in this sequence whose requested scope has not yet passed its required completion gates. This pointer must be resolved from repository state, not from a hard-coded "current language" field.

After Korean is complete and all four languages are release-ready, there is no next language in the current roadmap.

## Language-specific design rule

Each language must be designed for Persian-speaking learners rather than translated mechanically from English, German, or another completed course.

At minimum, each language should make explicit decisions for:

- script/orthography onboarding,
- pronunciation and Persian-speaker sound difficulties,
- formality/register,
- morphology and grammar sequencing,
- high-frequency real-world communication,
- listening/speaking progression,
- reading/writing progression,
- communication repair,
- culturally natural examples,
- language-appropriate assessment and exit performance.

## Existing-content safety rule

Out-of-scope languages may already contain production folders, older generated content, workflows, seeds, audio, or experiments. Treat those artifacts as historical/inactive for the current product phase. Do not audit or expand them merely because they exist.

For the four active languages, existing artifacts are candidates for audit, not automatic proof that a language or level is finished. Before continuing an active language:

- inventory what already exists,
- identify which artifacts are current versus legacy,
- validate quality against the present standards,
- preserve good work,
- replace only what fails current requirements,
- regenerate dependent audio/database artifacts when source content changes.

The governing principle for the current phase is: finish English, German, Turkish, and Korean well enough to build the application on top of them, then stop language production and improve the shared product/data platform around those four languages.

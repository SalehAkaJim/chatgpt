# Nova Language Roadmap

Updated: 2026-09-14

## Purpose

This file defines execution policy and language priority only. It must not become a source of hard-coded curriculum sizes, batch counts, deadlines, or completion assumptions.

## Scheduling policy

- Timed/scheduled execution is disabled. Work starts only from an explicit product-owner request.
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
- canonical level import / dry-run validation,
- database integration and idempotency checks,
- cast and voice-lock validation,
- generated-audio manifest validation,
- audio voice-consistency validation,
- audio SQL export / database-link validation,
- final gap audit and capstone/readiness check when appropriate.

If a validation path does not yet exist for a new language, create the smallest language-appropriate validation path before declaring that level complete.

## Execution rule

For each active language:

1. Inspect the existing repository state before authoring or overwriting anything.
2. Build a language-specific coverage map for the level being worked on.
3. Reuse existing content only after it passes current quality requirements.
4. Add, revise, split, merge, or remove units based on educational need; do not preserve a historical count for its own sake.
5. Run cumulative QA after each meaningful batch.
6. Near the end of a level, run a gap audit instead of assuming a planned number of units is sufficient.
7. Close the level only after all required validation gates are green.
8. Move to the next level/language only after the current scope is genuinely complete, unless the product owner explicitly reprioritizes.

## Language priority

English is the baseline/reference course and remains maintenance-only unless QA or the product owner requires changes.

For expansion work, use this priority order unless explicitly overridden:

1. German (`fa -> de-DE`)
2. Turkish (`fa -> tr-TR`)
3. Korean (`fa -> ko-KR`)
4. Italian (`fa -> it-IT`)
5. French (`fa -> fr-FR`)
6. Spanish (`fa -> es-ES`)
7. Japanese (`fa -> ja-JP`)
8. Arabic (`fa -> ar-MSA` unless another variant is explicitly selected)
9. Mandarin (`fa -> zh-CN` unless another variant is explicitly selected)
10. Russian (`fa -> ru-RU`)

The active language is the first language in this priority sequence whose requested scope has not yet passed its required completion gates. This pointer must be resolved from repository state, not from a hard-coded "current language" field.

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

Some future-priority languages may already contain production folders, older generated content, workflows, seeds, audio, or experiments. Treat those artifacts as candidates for audit, not as proof that the language or level is finished.

Before continuing such a language:

- inventory what already exists,
- identify which artifacts are current versus legacy,
- validate quality against the present standards,
- preserve good work,
- replace only what fails current requirements,
- regenerate dependent audio/database artifacts when source content changes.

This rule is especially important when beginning the next language: audit first, then build from the validated state rather than blindly starting from zero or blindly trusting old output.

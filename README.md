# Language Learning Content Repository

This repository contains the source-driven content architecture for a Persian-language speaking-first language learning app.

## Core principles

- App UI language: Persian.
- Initial target languages: German (`de`) and English (`en`).
- CEFR levels: `Pre-A1`, `A1`, `A2`, `B1`, `B2`, `C1`, `C2`.
- Lesson counts are never fixed globally. Each language/level gets as many lessons as required to cover its CEFR targets with sufficient practice.
- Every lesson starts with a conversation-based speaking activity.
- After the opening conversation, both the number and order of activities are dynamic. A lesson may have 2 activities, 10 activities, or another count when pedagogically justified.
- Activity sequences must not follow a repetitive fixed template.
- Target-language instructional content must come from identifiable external sources. The repository stores provenance for every reusable content item.
- Persian translations should be natural while remaining faithful to the source meaning.
- Grammar explanations must also be source-backed; they are translated/adapted for presentation but not invented as new instructional claims.
- Words and phrases are first-class entities so they can later support tap-for-help and user flashcards.
- Audio is generated only after a full language curriculum is finalized. Conversation audio will use character-specific ElevenLabs voices; standalone words/phrases use one consistent voice such as Hope or Lori.

## Repository layout

```text
/content/languages/     Language-specific manifests and future course content
/docs/                  Editorial, CEFR, activity, source and character rules
/schemas/               JSON Schemas for content entities
```

See `docs/CONTENT_RULES.md` first.
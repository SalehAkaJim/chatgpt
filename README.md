# Language Learning Core

Fresh start for a multilingual language-learning platform.

## Goal
Build one canonical content system that can support multiple learning languages, multiple learner-native languages, CEFR A1–C2, reusable content, generated exercises, dialogue, listening, speaking, and automated QA.

## Current foundation
- PostgreSQL-first schema
- CEFR A1–C2
- Concept-centered multilingual model
- Reusable sentence/dialogue banks
- Lessons assembled from approved content
- Generated content goes through staging + validation before approval
- Audio stored as metadata/URLs, not binary database blobs

## Repository layout
- `database/schema.sql` — core relational schema
- `database/seed/cefr.sql` — CEFR seed data
- `database/seed/languages.sql` — initial language seed data
- `docs/content-system.md` — content architecture and generation pipeline

## Archived previous project state
The repository state before this rebuild is preserved on:

`archive/pre-rebuild-2026-09-12`

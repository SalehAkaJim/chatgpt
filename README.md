# Language Learning Core

Multilingual language-learning content system with a **source-backed-only** educational content policy.

## Content policy
Educational content is not authored by the pipeline or by AI. Words, translations, sentences, dialogues, grammar explanations and exercises must come from an identified reusable source.

The system may transform structure: fetch, parse, link, deduplicate, attach provenance and map a source curriculum into units/lessons. Missing educational content is never filled by generation.

## Core data model
The existing multilingual foundation remains in place:

- MySQL 9 / InnoDB / `utf8mb4`
- language-neutral concepts
- localized terms and utterances
- lexemes and word forms
- dialogues and grammar points
- lessons and lesson items
- exercises
- CEFR support when a source or an approved mapping supplies it
- provenance in imported content

English is not the product base language. English may appear when an upstream source itself provides English translations.

## Current German implementation
German currently uses **Deutsch im Blick**, published by COERLL at The University of Texas at Austin under CC BY 4.0.

The source importer maps:

```text
Deutsch im Blick chapter -> Unit
Vocabulary semantic section -> Lesson
German/English source pair -> Concept item
```

Current snapshot:

- 10 source chapters / units
- 94 source-derived lessons
- 1,566 source vocabulary items
- no inferred CEFR (`cefr: null`)
- no imported audio
- no generated audio

Files:

```text
sources/de/coerll-deutsch-im-blick/source.json
scripts/import_coerll_deutsch_im_blick.py
content/production/de/coerll-deutsch-im-blick/chapter-01.json
...
content/production/de/coerll-deutsch-im-blick/chapter-10.json
```

Run the importer locally:

```bash
pip install -r requirements.txt
python scripts/import_coerll_deutsch_im_blick.py --chapters 1-10
```

The GitHub workflow `.github/workflows/source-import-german.yml` can also refresh the source snapshot and commits changes only when upstream source data changes.

## Audio
Audio is intentionally disabled at this stage. Source audio is not imported and ElevenLabs generation is not part of the active workflow. Audio can be added later as a separate derived asset layer.

## Database bootstrap
The canonical schema remains at:

```text
database/schema.sql
```

Generic CEFR seed data remains at:

```text
database/seed/cefr.sql
```

Old per-language generated seeds/imports were removed from `main`.

## Archive
The pre-reset implementation is preserved on:

```text
archive/pre-open-source-content-2026-09-15
```

See `docs/content-system.md` for the source/provenance rules.

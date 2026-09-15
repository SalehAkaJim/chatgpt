# German Pre-A1

This directory contains Nova curriculum mappings of publisher-authored open educational content.

## Content policy

- Educational text must come from an identified external source.
- No vocabulary, sentence, translation, dialogue, grammar explanation, distractor, or exercise text may be generated for this course.
- Structural metadata such as Nova unit IDs, ordering, CEFR placement, and provenance fields may be added by the pipeline.
- Source-authored text is preserved by the mapping step rather than rewritten.
- Audio generation is intentionally excluded at this stage.
- Database import is intentionally excluded at this stage.

## Current source

The initial Pre-A1 mapping starts from the already imported `Deutsch im Blick` Chapter 1 source snapshot. Source attribution and license metadata remain embedded in every generated batch.

## Build

Run:

```bash
python scripts/build_german_pre_a1.py
```

The builder reads the existing source snapshot under `content/production/de/coerll-deutsch-im-blick/` and writes Nova's Pre-A1 unit files here. It does not fetch, translate, or generate educational content.

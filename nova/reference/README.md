# Nova Reference Layer

The reference layer is production input for curriculum/content generation. It is deliberately separate from Nova runtime tables and from `lesson.source.json`.

## Production rules

- `lesson.source.json` remains canonical for authored lessons.
- External reference data never writes MySQL runtime tables directly.
- CEFR-J is the primary vocabulary/grammar level signal; Openjam CEFR is fallback evidence only.
- Openjam provides frequency, WordNet-backed senses, examples and Persian sense translations.
- A reference lexical item must score **>= 90** before it is eligible for automatic lesson selection.
- Existing canonical translations are never silently overwritten by an external translation. Differences are reported for review.
- Network sync is isolated from ordinary lesson builds. CI can validate a committed snapshot offline.

## Source snapshot

Run:

```bash
python nova/_assistant/content-system-v1/tools/reference_layer.py sync \
  --level A1 \
  --output nova/reference/snapshots/en-fa/a1/reference.json
```

Then validate and compare:

```bash
python nova/_assistant/content-system-v1/tools/reference_layer.py validate \
  --snapshot nova/reference/snapshots/en-fa/a1/reference.json

python nova/_assistant/content-system-v1/tools/reference_layer.py compare \
  --level A1 \
  --snapshot nova/reference/snapshots/en-fa/a1/reference.json \
  --lessons-root nova/courses/en-fa/lessons \
  --output nova/reference/reports/en-fa/a1-current-lessons.json \
  --fail-on-level-conflicts
```

## Quality score

Current v1 score (max 100):

- CEFR-J evidence: 30
- Openjam CEFR signal: 10
- frequency rank: 15
- sense/definition data: 20
- Persian sense translation: 20
- POS evidence: 5

This makes the >=90 rule intentionally strict: a lexical item normally needs both curriculum evidence and rich lexical evidence before automatic selection.

## What the comparison report means

A translation mismatch is **review evidence**, not an automatic error, because sense choice and Persian wording can differ legitimately. A CEFR level conflict is treated as a blocking error in CI.

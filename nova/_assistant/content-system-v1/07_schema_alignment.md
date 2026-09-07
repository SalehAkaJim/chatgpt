# 07 — Database/schema alignment

Content System v1 now treats the database as an implementation of the learning model, not a constraint that dictates pedagogy.

## Active decisions

1. Lesson structure is flexible (`dialogue`, `scenario`, `listening`, `reading`, `practice`, `review`, `mixed`).
2. A Lesson does not require a forced two-character story model.
3. The old `words` abstraction is replaced by **lexical items**.
   - A lexical item may be a single word or a conventional multiword expression.
   - whitespace count is not a global validity rule.
   - sentence/clause/arbitrary-fragment rejection belongs to canonical validation and lexical atomicity checks.
4. Distractors are Activity-specific, not lexical-entry properties.
5. Learning roles are explicitly `target`, `review`, `support`, `incidental`.
6. Review uses windows/priority rather than fixed 1/2/4/8/16 Chapter offsets.
7. Communicative curriculum outcomes are separate from enabling lexical/grammar/pronunciation units.
8. Visible Turn text is canonical; tokenization and lexical spans are derived artifacts.
9. Audio metadata belongs to the canonical Turn/lexical item and is a mandatory publication dependency.
10. The production database target is **MySQL Server 9.0.1**. SQL is not considered validated until it executes on that exact target version.

## Lexical span requirement

A multiword lexical item may map to multiple Turn tokens while remaining one dictionary/teaching/audio unit. The data model must therefore support lexical-item-to-token/span evidence rather than assuming one token equals one vocabulary entry.

## Status

Schema revision is part of the Content System v1 foundation and must be validated on MySQL 9.0.1 before Chapter 1 can be marked complete.

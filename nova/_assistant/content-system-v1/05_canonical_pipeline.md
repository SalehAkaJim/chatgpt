# 05 — Canonical content pipeline

## Goal

Prevent drift between authored content, lexical data, QA files, SQL, manifests and audio.

## Single canonical source

Each Chapter starts from one canonical source file:

`courses/en-fa/A1/chapter_XXXX/chapter.source.json`

This file contains the authored learner experience and semantic annotations needed to derive database rows.

Generated files are disposable outputs and must never be manually edited as a second source of truth.

## Pipeline

1. **Curriculum plan**
   - select one primary communicative outcome;
   - verify prerequisites;
   - define intended transfer evidence.

2. **Author canonical Chapter source**
   - contexts;
   - Lessons;
   - learner/interlocutor Turns;
   - Activities;
   - English text;
   - Persian learner support;
   - target/support/review learning units;
   - accepted responses.

3. **Canonical structural validation**
   - schema validity;
   - IDs/order/references;
   - activity requirements;
   - single-token `words` invariant;
   - no missing prerequisite classification;
   - exact Turn/token reconstruction.

4. **Linguistic/pedagogical audit**
   - English naturalness and correctness;
   - Persian accuracy;
   - level/load/prerequisite fit;
   - distractor quality;
   - accepted-answer quality;
   - meaningful transfer;
   - pronunciation relevance.

5. **Compiler output**
   - deterministic SQL generated from canonical data;
   - derived lexical/semantic rows;
   - machine-readable QA report.

6. **Database validation**
   - reset/create schema in MySQL 8 test database;
   - import foundation and all published Chapters contiguously;
   - import candidate Chapter;
   - run integrity assertions and representative runtime queries.

7. **Human English audit during pilot**
   - render all learner-visible English in a compact review file;
   - human can review the actual text without reading SQL/JSON internals;
   - any text correction is made in canonical source, then all derivatives regenerate.

8. **Audio generation**
   - only after text/lexical/database gates pass;
   - TTS receives typed validated units;
   - Word TTS cannot receive chunks or sentences;
   - content change invalidates corresponding audio deterministically.

9. **Publication gate**
   - publish only when canonical validation, linguistic audit, MySQL validation and required audio all pass for the exact same content hash.

## Hash/version integrity

Every derived output stores the canonical Chapter content hash.

A QA report, SQL file or audio manifest whose source hash differs from the current canonical source is stale and cannot satisfy publication.

## No repair SQL as content workflow

If learner-visible text or semantic content is wrong, fix canonical source and regenerate.

Patch/repair SQL is reserved for true database migrations after released production data; it is not the normal way to correct unpublished course content.

## Generation batch rule

During pilot, generate one candidate Chapter at a time.

After the system proves stable, batching may increase, but validation remains Chapter-isolated first and contiguous-course second. A failure never advances the course pointer past the failed Chapter.

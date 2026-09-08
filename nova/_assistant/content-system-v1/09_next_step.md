# 09 — Active Pilot execution

The architecture phase is complete enough to test with real content.

Current execution order for a Pilot Lesson:

1. validate `lesson.source.json` and its Course/Level membership;
2. run Persian orthography validation;
3. run Content Quality and require automated score **>= 90**;
4. render `english_audit.md`;
5. compile Course/Level/Lesson runtime SQL;
6. execute reset/schema/import/runtime retrieval on MySQL Server 9.0.1;
7. generate/reuse all required ElevenLabs Turn + lexical-item audio;
8. decode/duration/hash-check every audio file;
9. validate the audio manifest against the exact Lesson source hash;
10. keep the Lesson non-final if a deterministic gate fails.

If a product-owner choice is needed, record it in `review.pendingDecisions`, use the recommended defensible default and continue authoring later Lessons. An open owner decision is not a reason to stop the content pipeline.

A Lesson scoring below 90 is different: it is not eligible for runtime import until revised and revalidated.

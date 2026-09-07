# 09 — Active Pilot execution

The architecture phase is complete enough to test with real content.

Current execution order for Lesson 0001:

1. validate `lesson.source.json`;
2. render `english_audit.md`;
3. compile runtime SQL;
4. execute reset/schema/Lesson import/runtime retrieval on MySQL Server 9.0.1;
5. generate all required ElevenLabs Turn + lexical-item audio;
6. decode/duration/hash-check every audio file;
7. validate the audio manifest against the exact Lesson source hash;
8. keep the Lesson unpublished if any gate fails.

After Lesson 0001 is reviewed, repair rules/schema/content based on real defects before producing Lesson 0002.

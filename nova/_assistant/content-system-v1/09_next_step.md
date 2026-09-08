# 09 — Active Pilot execution

The first three Lessons exercise the complete pipeline with shared vocabulary and variable Activity/Turn counts. The owner has now authorized ten additional story Lessons (0004–0013) for private prototype testing. Story planning follows `12_story_continuity.md`; do not impose the initial product-pilot Activity checklist on every new Lesson.

Run `tools/build_pilot.py --repo-root .` from the repository root. It discovers every Course/Lesson source, validates sequence and shared lexical definitions, runs canonical/Persian/quality gates, renders the English audit, generates or reuses audio, validates the manifest and compiles SQL. Each Lesson receives its own report. A failed Lesson does not prevent the other Lessons from being processed, but the overall build fails and final outputs are not published as successful.

Run `tools/validate_runtime.py --repo-root . --database nova_test` only against a disposable MySQL 9.0.1 database. It tests every generated Lesson, reimports, audio fields and Level cascades. Then run `tools/update_pilot_status.py --repo-root .`.

The workflow processes all active Lessons serially, so shared audio has one writer. It checks that main still points to its input revision before committing generated outputs. A newer source revision must be rebuilt; stale outputs are never rebased onto new source.

Pending owner decisions remain non-blocking for authoring and technical validation. Use a defensible default, record the decision and continue. Scores below 90 are always rejected by the compiler.

Final language/pedagogy review remains visible before bulk generation or publication.

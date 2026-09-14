# Production Database Import Runbook

**Authoritative manual import order for Nova**  
Updated from the current `main` branch on **2026-09-14**.  
Database target: **MySQL 9.0.1**.

This file is the permanent source of truth for manually building a Nova production database.

> **Direct-link rule:** every `Raw` link below points to `main`, so opening it gives you the latest file directly. For a reproducible release, pin the links to a release/commit SHA instead of `main`.

## What goes into MySQL directly vs. what must be run

There are two different kinds of database steps:

- **`.sql` files**: import these directly into MySQL / phpMyAdmin / your SQL client.
- **`.py` level importers**: these are required to materialize the production JSON content into MySQL. They are **not** SQL files and cannot be imported through phpMyAdmin. Run them from the repository checkout after the curriculum seeds and before the audio SQL files.

The safe overall order is:

1. Schema + migrations
2. Shared seeds / courses
3. Curriculum seeds
4. Content importers (`.py`)
5. Post-import educational fix SQL
6. Audio metadata SQL

---

# 1. Base schema and migrations — import directly into MySQL

Run these once, in this exact order:

1. `database/schema.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/schema.sql)
2. `database/migrations/001_curriculum.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/migrations/001_curriculum.sql)
3. `database/migrations/002_multilingual_core.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/migrations/002_multilingual_core.sql)
4. `database/migrations/003_lesson_item_lexemes.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/migrations/003_lesson_item_lexemes.sql)
5. `database/migrations/004_level_import_audio.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/migrations/004_level_import_audio.sql)
6. `database/migrations/005_writing_exercises.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/migrations/005_writing_exercises.sql)

# 2. Shared seeds and course definitions — import directly into MySQL

Run these after the migrations:

7. `database/seed/cefr.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/seed/cefr.sql)
8. `database/seed/languages.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/seed/languages.sql)
9. `database/seed/skills-topics.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/seed/skills-topics.sql)
10. `database/seed/language-variants-courses.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/seed/language-variants-courses.sql)
11. `database/seed/french-course.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/seed/french-course.sql)
12. `database/seed/italian-course.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/seed/italian-course.sql)

`italian-course.sql` is idempotent and is safe even though the shared course seed already knows about Italian.

# 3. Curriculum seeds — import directly into MySQL

All currently materializable production languages are listed here. You may import only the languages you want to deploy, but always complete sections 1 and 2 first.

## English — Pre-A1 through C2

13. `database/seed/english-prea1-curriculum.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/seed/english-prea1-curriculum.sql)
14. `database/seed/english-a1-curriculum.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/seed/english-a1-curriculum.sql)
15. `database/seed/english-a2-curriculum.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/seed/english-a2-curriculum.sql)
16. `database/seed/english-b1-curriculum.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/seed/english-b1-curriculum.sql)
17. `database/seed/english-b2-curriculum.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/seed/english-b2-curriculum.sql)
18. `database/seed/english-c1-curriculum.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/seed/english-c1-curriculum.sql)
19. `database/seed/english-c2-curriculum.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/seed/english-c2-curriculum.sql)

## German — Pre-A1 through C2

20. `database/seed/german-prea1-curriculum.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/seed/german-prea1-curriculum.sql)
21. `database/seed/german-a1-curriculum.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/seed/german-a1-curriculum.sql)
22. `database/seed/german-a2-curriculum.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/seed/german-a2-curriculum.sql)
23. `database/seed/german-b1-curriculum.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/seed/german-b1-curriculum.sql)
24. `database/seed/german-b2-curriculum.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/seed/german-b2-curriculum.sql)
25. `database/seed/german-c1-curriculum.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/seed/german-c1-curriculum.sql)
26. `database/seed/german-c2-curriculum.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/seed/german-c2-curriculum.sql)

## Turkish — Pre-A1 through C2

27. `database/seed/turkish-prea1-curriculum.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/seed/turkish-prea1-curriculum.sql)
28. `database/seed/turkish-a1-curriculum.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/seed/turkish-a1-curriculum.sql)
29. `database/seed/turkish-a2-curriculum.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/seed/turkish-a2-curriculum.sql)
30. `database/seed/turkish-b1-curriculum.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/seed/turkish-b1-curriculum.sql)
31. `database/seed/turkish-b2-curriculum.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/seed/turkish-b2-curriculum.sql)
32. `database/seed/turkish-c1-curriculum.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/seed/turkish-c1-curriculum.sql)
33. `database/seed/turkish-c2-curriculum.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/seed/turkish-c2-curriculum.sql)

## Korean — Pre-A1 through C2

34. `database/seed/korean-prea1-curriculum.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/seed/korean-prea1-curriculum.sql)
35. `database/seed/korean-a1-curriculum.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/seed/korean-a1-curriculum.sql)
36. `database/seed/korean-a2-curriculum.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/seed/korean-a2-curriculum.sql)
37. `database/seed/korean-b1-curriculum.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/seed/korean-b1-curriculum.sql)
38. `database/seed/korean-b2-curriculum.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/seed/korean-b2-curriculum.sql)
39. `database/seed/korean-c1-curriculum.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/seed/korean-c1-curriculum.sql)
40. `database/seed/korean-c2-curriculum.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/seed/korean-c2-curriculum.sql)

## Italian — Pre-A1 through C2

41. `database/seed/italian-prea1-curriculum.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/seed/italian-prea1-curriculum.sql)
42. `database/seed/italian-a1-curriculum.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/seed/italian-a1-curriculum.sql)
43. `database/seed/italian-a2-curriculum.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/seed/italian-a2-curriculum.sql)
44. `database/seed/italian-b1-curriculum.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/seed/italian-b1-curriculum.sql)
45. `database/seed/italian-b2-curriculum.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/seed/italian-b2-curriculum.sql)
46. `database/seed/italian-c1-curriculum.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/seed/italian-c1-curriculum.sql)
47. `database/seed/italian-c2-curriculum.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/seed/italian-c2-curriculum.sql)

## French — currently Pre-A1 through B1 on `main`

48. `database/seed/french-prea1-curriculum.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/seed/french-prea1-curriculum.sql)
49. `database/seed/french-a1-curriculum.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/seed/french-a1-curriculum.sql)
50. `database/seed/french-a2-curriculum.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/seed/french-a2-curriculum.sql)
51. `database/seed/french-b1-curriculum.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/seed/french-b1-curriculum.sql)

## Arabic MSA

`database/seed/arabic-msa-prea1-curriculum.sql` exists — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/seed/arabic-msa-prea1-curriculum.sql) — but there is currently no matching `database/import/ar/` production-import chain on `main`. Treat it as **seed-only / not part of the complete production import sequence yet**.

---

# 4. Materialize production content — run these Python entrypoints

Do this **after curriculum seeds** and **before educational-fix/audio SQL**.

Run the scripts from the repository root with the production database configured. A normal run enforces each importer's educational approval gate; do not add `--allow-unreviewed` in production unless that bypass is intentional.

## English

```bash
python database/import/en/pre_a1.py
python database/import/en/a1.py
python database/import/en/a2.py
python database/import/en/b1.py
python database/import/en/b2.py
python database/import/en/c1.py
python database/import/en/c2.py
```

Direct files: [Pre-A1](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/en/pre_a1.py) · [A1](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/en/a1.py) · [A2](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/en/a2.py) · [B1](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/en/b1.py) · [B2](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/en/b2.py) · [C1](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/en/c1.py) · [C2](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/en/c2.py)

## German

```bash
python database/import/de/pre_a1.py
python database/import/de/a1.py
python database/import/de/a2.py
python database/import/de/b1.py
python database/import/de/b2.py
python database/import/de/c1.py
python database/import/de/c2.py
```

Direct files: [Pre-A1](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/de/pre_a1.py) · [A1](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/de/a1.py) · [A2](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/de/a2.py) · [B1](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/de/b1.py) · [B2](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/de/b2.py) · [C1](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/de/c1.py) · [C2](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/de/c2.py)

## Turkish

```bash
python database/import/tr/pre_a1.py
python database/import/tr/a1.py
python database/import/tr/a2.py
python database/import/tr/b1.py
python database/import/tr/b2.py
python database/import/tr/c1.py
python database/import/tr/c2.py
```

Direct files: [Pre-A1](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/tr/pre_a1.py) · [A1](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/tr/a1.py) · [A2](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/tr/a2.py) · [B1](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/tr/b1.py) · [B2](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/tr/b2.py) · [C1](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/tr/c1.py) · [C2](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/tr/c2.py)

## Korean

```bash
python database/import/ko/pre_a1.py
python database/import/ko/a1.py
python database/import/ko/a2.py
python database/import/ko/b1.py
python database/import/ko/b2.py
python database/import/ko/c1.py
python database/import/ko/c2.py
```

Direct files: [Pre-A1](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/ko/pre_a1.py) · [A1](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/ko/a1.py) · [A2](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/ko/a2.py) · [B1](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/ko/b1.py) · [B2](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/ko/b2.py) · [C1](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/ko/c1.py) · [C2](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/ko/c2.py)

## Italian

```bash
python database/import/it/pre_a1.py
python database/import/it/a1.py
python database/import/it/a2.py
python database/import/it/b1.py
python database/import/it/b2.py
python database/import/it/c1.py
python database/import/it/c2.py
```

Direct files: [Pre-A1](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/it/pre_a1.py) · [A1](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/it/a1.py) · [A2](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/it/a2.py) · [B1](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/it/b1.py) · [B2](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/it/b2.py) · [C1](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/it/c1.py) · [C2](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/it/c2.py)

## French

```bash
python database/import/fr/pre_a1.py
python database/import/fr/a1.py
python database/import/fr/a2.py
python database/import/fr/b1.py
```

Direct files: [Pre-A1](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/fr/pre_a1.py) · [A1](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/fr/a1.py) · [A2](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/fr/a2.py) · [B1](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/fr/b1.py)

---

# 5. Post-content educational fixes — import directly into MySQL

Run these after the corresponding language content importers and before audio metadata.

## English

1. `database/import/en/educational_content_updates.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/en/educational_content_updates.sql)
2. `database/import/en/educational_quality_updates.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/en/educational_quality_updates.sql)

## German

3. `database/import/de/educational_three_fixes_2026_09_13.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/de/educational_three_fixes_2026_09_13.sql)

---

# 6. Audio metadata — import directly into MySQL

Run audio SQL only **after the matching content level has been materialized**. These files register/link audio metadata; the MP3 binaries stay in the project storage paths.

## English

1. `database/import/en/pre_a1_audio.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/en/pre_a1_audio.sql)
2. `database/import/en/a1_audio.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/en/a1_audio.sql)
3. `database/import/en/a2_audio.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/en/a2_audio.sql)
4. `database/import/en/b1_audio.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/en/b1_audio.sql)
5. `database/import/en/b2_audio.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/en/b2_audio.sql)
6. `database/import/en/c1_audio.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/en/c1_audio.sql)
7. `database/import/en/c2_audio.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/en/c2_audio.sql)

## German

Pre-A1 through A2 use one SQL file per level:

1. `database/import/de/pre_a1_audio.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/de/pre_a1_audio.sql)
2. `database/import/de/a1_audio.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/de/a1_audio.sql)
3. `database/import/de/a2_audio.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/de/a2_audio.sql)

B1 is split into five files; run numerically:

4. `database/import/de/b1_batch_1_audio.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/de/b1_batch_1_audio.sql)
5. `database/import/de/b1_batch_2_audio.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/de/b1_batch_2_audio.sql)
6. `database/import/de/b1_batch_3_audio.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/de/b1_batch_3_audio.sql)
7. `database/import/de/b1_batch_4_audio.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/de/b1_batch_4_audio.sql)
8. `database/import/de/b1_batch_5_audio.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/de/b1_batch_5_audio.sql)

B2:

9. `database/import/de/b2_batch_1_audio.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/de/b2_batch_1_audio.sql)
10. `database/import/de/b2_batch_2_audio.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/de/b2_batch_2_audio.sql)
11. `database/import/de/b2_batch_3_audio.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/de/b2_batch_3_audio.sql)
12. `database/import/de/b2_batch_4_audio.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/de/b2_batch_4_audio.sql)
13. `database/import/de/b2_batch_5_audio.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/de/b2_batch_5_audio.sql)

C1:

14. `database/import/de/c1_batch_1_audio.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/de/c1_batch_1_audio.sql)
15. `database/import/de/c1_batch_2_audio.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/de/c1_batch_2_audio.sql)
16. `database/import/de/c1_batch_3_audio.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/de/c1_batch_3_audio.sql)
17. `database/import/de/c1_batch_4_audio.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/de/c1_batch_4_audio.sql)
18. `database/import/de/c1_batch_5_audio.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/de/c1_batch_5_audio.sql)

C2 currently has four audio batches on `main`:

19. `database/import/de/c2_batch_1_audio.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/de/c2_batch_1_audio.sql)
20. `database/import/de/c2_batch_2_audio.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/de/c2_batch_2_audio.sql)
21. `database/import/de/c2_batch_3_audio.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/de/c2_batch_3_audio.sql)
22. `database/import/de/c2_batch_4_audio.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/de/c2_batch_4_audio.sql)

## Turkish

1. `database/import/tr/pre_a1_audio.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/tr/pre_a1_audio.sql)
2. `database/import/tr/a1_audio.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/tr/a1_audio.sql)
3. `database/import/tr/a2_audio.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/tr/a2_audio.sql)
4. `database/import/tr/b1_audio.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/tr/b1_audio.sql)
5. `database/import/tr/b2_audio.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/tr/b2_audio.sql)
6. `database/import/tr/c1_audio.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/tr/c1_audio.sql)
7. `database/import/tr/c2_audio.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/tr/c2_audio.sql)

## Korean

1. `database/import/ko/pre_a1_audio.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/ko/pre_a1_audio.sql)
2. `database/import/ko/a1_audio.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/ko/a1_audio.sql)
3. `database/import/ko/a2_audio.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/ko/a2_audio.sql)
4. `database/import/ko/b1_audio.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/ko/b1_audio.sql)
5. `database/import/ko/b2_audio.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/ko/b2_audio.sql)
6. `database/import/ko/c1_audio.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/ko/c1_audio.sql)
7. `database/import/ko/c2_audio.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/ko/c2_audio.sql)

## Italian

1. `database/import/it/pre_a1_audio.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/it/pre_a1_audio.sql)
2. `database/import/it/a1_audio.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/it/a1_audio.sql)
3. `database/import/it/a2_audio.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/it/a2_audio.sql)
4. `database/import/it/b1_audio.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/it/b1_audio.sql)
5. `database/import/it/b2_audio.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/it/b2_audio.sql)
6. `database/import/it/c1_audio.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/it/c1_audio.sql)
7. `database/import/it/c2_audio.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/it/c2_audio.sql)

## French

1. `database/import/fr/pre_a1_audio.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/fr/pre_a1_audio.sql)
2. `database/import/fr/a1_audio.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/fr/a1_audio.sql)
3. `database/import/fr/a2_audio.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/fr/a2_audio.sql)
4. `database/import/fr/b1_audio.sql` — [Raw](https://raw.githubusercontent.com/SalehAkaJim/chatgpt/main/database/import/fr/b1_audio.sql)

---

# 7. Operational notes

- If you are creating a **fresh database**, follow this document from section 1 downward.
- If you are adding a **new language to an existing database**, do not rerun/destructively recreate the schema; apply only any migrations you have not previously applied, then the shared/course seed if needed, that language's curriculum seeds, its Python importers, its language-specific fix SQL, and finally its audio SQL.
- The seed files use idempotent patterns where designed, but do not use rerunning as a substitute for backups.
- Level content importers are designed to be rerun safely for stable canonical identities, but they are not a universal delete/overwrite synchronizer for every kind of historical row.
- Audio SQL should come after content because it links audio assets to canonical content rows.
- Do not infer a missing level from another language. This runbook lists only files that currently exist on `main`.

## Historical validation note

The older English-only chain was clean-DB tested against MySQL 9.0.1 on 2026-09-12. Since the repository now contains several additional languages and many later files, this **2026-09-14 runbook update is a repository-structure refresh, not a claim that the entire current multilingual chain was revalidated end-to-end in one clean database during this edit**.

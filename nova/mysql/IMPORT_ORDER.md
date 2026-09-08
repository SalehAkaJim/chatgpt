# Nova MySQL import order

Target: MySQL Server 9.0.1.

For a new or explicitly reset database:

1. [02_schema.sql](02_schema.sql)

2. [10_en_fa_lesson_0001.sql](10_en_fa_lesson_0001.sql) — EN-A1-L-0001
3. [10_en_fa_lesson_0002.sql](10_en_fa_lesson_0002.sql) — EN-A1-L-0002
4. [10_en_fa_lesson_0003.sql](10_en_fa_lesson_0003.sql) — EN-A1-L-0003

Existing databases: import only the needed generated Lesson SQL after verifying schema compatibility.
`01_reset_all.sql` deletes all content; use it only for an intentional clean reset.
The Pilot runs reset/schema/import only inside its disposable CI test database.
Runtime query: [03_runtime_lesson_query.sql](03_runtime_lesson_query.sql).

# Nova MySQL import order

Target: MySQL Server 9.0.1.

For a new or explicitly reset database:

1. [02_schema.sql](02_schema.sql)

2. [10_en_fa_lesson_0001.sql](10_en_fa_lesson_0001.sql) — EN-A1-L-0001
3. [10_en_fa_lesson_0002.sql](10_en_fa_lesson_0002.sql) — EN-A1-L-0002
4. [10_en_fa_lesson_0003.sql](10_en_fa_lesson_0003.sql) — EN-A1-L-0003
5. [10_en_fa_lesson_0004.sql](10_en_fa_lesson_0004.sql) — EN-A1-L-0004
6. [10_en_fa_lesson_0005.sql](10_en_fa_lesson_0005.sql) — EN-A1-L-0005
7. [10_en_fa_lesson_0006.sql](10_en_fa_lesson_0006.sql) — EN-A1-L-0006
8. [10_en_fa_lesson_0007.sql](10_en_fa_lesson_0007.sql) — EN-A1-L-0007
9. [10_en_fa_lesson_0008.sql](10_en_fa_lesson_0008.sql) — EN-A1-L-0008
10. [10_en_fa_lesson_0009.sql](10_en_fa_lesson_0009.sql) — EN-A1-L-0009
11. [10_en_fa_lesson_0010.sql](10_en_fa_lesson_0010.sql) — EN-A1-L-0010
12. [10_en_fa_lesson_0011.sql](10_en_fa_lesson_0011.sql) — EN-A1-L-0011
13. [10_en_fa_lesson_0012.sql](10_en_fa_lesson_0012.sql) — EN-A1-L-0012
14. [10_en_fa_lesson_0013.sql](10_en_fa_lesson_0013.sql) — EN-A1-L-0013
15. [10_en_fa_lesson_0014.sql](10_en_fa_lesson_0014.sql) — EN-A1-L-0014
16. [10_en_fa_lesson_0015.sql](10_en_fa_lesson_0015.sql) — EN-A1-L-0015
17. [10_en_fa_lesson_0016.sql](10_en_fa_lesson_0016.sql) — EN-A1-L-0016
18. [10_en_fa_lesson_0017.sql](10_en_fa_lesson_0017.sql) — EN-A1-L-0017
19. [10_en_fa_lesson_0018.sql](10_en_fa_lesson_0018.sql) — EN-A1-L-0018
20. [10_en_fa_lesson_0019.sql](10_en_fa_lesson_0019.sql) — EN-A1-L-0019
21. [10_en_fa_lesson_0020.sql](10_en_fa_lesson_0020.sql) — EN-A1-L-0020
22. [10_en_fa_lesson_0021.sql](10_en_fa_lesson_0021.sql) — EN-A1-L-0021
23. [10_en_fa_lesson_0022.sql](10_en_fa_lesson_0022.sql) — EN-A1-L-0022
24. [10_en_fa_lesson_0023.sql](10_en_fa_lesson_0023.sql) — EN-A1-L-0023
25. [10_en_fa_lesson_0024.sql](10_en_fa_lesson_0024.sql) — EN-A1-L-0024
26. [10_en_fa_lesson_0025.sql](10_en_fa_lesson_0025.sql) — EN-A1-L-0025
27. [10_en_fa_lesson_0026.sql](10_en_fa_lesson_0026.sql) — EN-A1-L-0026

Existing databases: import only the needed generated Lesson SQL after verifying schema compatibility.
`01_reset_all.sql` deletes all content; use it only for an intentional clean reset.
The Pilot runs reset/schema/import only inside its disposable CI test database.
Runtime query: [03_runtime_lesson_query.sql](03_runtime_lesson_query.sql).

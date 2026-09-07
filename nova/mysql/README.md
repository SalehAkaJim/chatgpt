# Nova MySQL — ترتیب اجرای فایل‌ها

مرجع canonical از این نسخه `import_order_v3.json` است. فایل‌های v2 فقط سابقهٔ فنی قبل از audit آموزشی v3 هستند و نباید برای تصمیم «آماده بودن محتوا» استفاده شوند.

## وضعیت فعلی

- تولید Chapter جدید قفل است.
- German موجود: Series `0001–0015`، در audit آموزشی v3.
- English موجود: Series `0001–0009`، در audit آموزشی v3.
- `v2_technical_pass=true` فقط یعنی SQL/Validator/Audio قدیمی پاس شده؛ به معنی `v3_ready` نیست.

## نصب تمیز v3

ترتیب پایه:

1. `CORE-RESET-v10` → [`../database/reset_all_v10.sql`](../database/reset_all_v10.sql)
2. `CORE-SCHEMA-v9` → [`../database/schema_v9.sql`](../database/schema_v9.sql)
3. `CORE-SEMANTIC-v10` → [`../database/semantic_layer_v10.sql`](../database/semantic_layer_v10.sql)
4. Chapterهای German به‌ترتیب Series؛ اگر کنار Chapter فایل `v3_repair.sql` وجود دارد بلافاصله بعد از همان `chapter.sql` اجرا شود.
5. Chapterهای English به‌ترتیب Series؛ اگر کنار Chapter فایل `v3_repair.sql` وجود دارد بلافاصله بعد از همان `chapter.sql` اجرا شود.
6. `update_turn_audio.sql` و سپس `update_word_audio.sql` برای هر Course.

نسخهٔ کامل ماشینی و مسیر دقیق همه Chapterها در [`import_order_v3.json`](import_order_v3.json) است.

```bash
mysql --default-character-set=utf8mb4 -h HOST -u USER -p DATABASE < "PATH"
```

## Publication readiness v3

یک Chapter فقط وقتی `v3_ready=true` می‌شود که همهٔ این Gateها پاس باشند:

- `linguistic_audit_v3.json`: بدون blocking issue
- `learning_units_v3.json`: sense/chunk/construction/can-do mapping کامل
- `review_evidence_v3.json`: هیچ review موعدرسیدهٔ بدون evidence
- Structural validator
- Curriculum prerequisite/coverage gate
- MySQL 8 واقعی روی `schema_v9 + semantic_layer_v10`
- Turn audio و Word/learning-unit audio واجد شرایط

تا وقتی backlog audit خالی نشده، DE-016 و EN-010 ساخته نمی‌شوند.

## Stage ID

Stage IDها immutable هستند: `DE-CH-XXXX` و `EN-CH-XXXX`. اضافه‌شدن semantic repair یا audit باعث renumber شدن Stageهای قبلی نمی‌شود.

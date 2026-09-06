# Nova MySQL — ترتیب اجرای فایل‌ها

این صفحه تنها مرجع اجرای دستی MySQL است.

## شروع از صفر

| ترتیب | Stage ID | فایل | وضعیت |
|---:|---|---|---|
| 1 | CORE-RESET-v9 | [reset_all_v9.sql](../database/reset_all_v9.sql) | آماده |
| 2 | CORE-SCHEMA-v9 | [schema_v9.sql](../database/schema_v9.sql) | آماده |

پس از این دو فایل، Chapterها از روی `import_order_v2.json` و به همان ترتیب اجرا می‌شوند. شناسهٔ هر Chapter تغییرناپذیر است: `DE-CH-0001` یا `EN-CH-0001`.

فایل Chapter فقط وقتی وارد این فهرست می‌شود که SQL و QA معتبر باشند. فایل‌های `update_turn_audio.sql` و `update_word_audio.sql` هر زبان پس از Chapterهای همان زبان اجرا می‌شوند تا URL و مدت صوت ثبت شود.

> هشدار: اجرای `CORE-RESET-v9` همهٔ جدول‌های Nova را حذف می‌کند. فقط برای نصب تمیز یا بازسازی کامل اجرا شود.
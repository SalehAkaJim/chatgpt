# Nova MySQL — ترتیب اجرای فایل‌ها

این صفحه تنها مرجع اجرای دستی MySQL برای Nova است. نسخهٔ ماشینی در [`import_order_v2.json`](import_order_v2.json) و گزارش QA در [`import_order_v2_qa.json`](import_order_v2_qa.json) قرار دارد.

## روش اجرا

- برای نصب تمیز، Stageها را دقیقاً از بالا به پایین اجرا کن.
- هر Stage را جدا اجرا کن و پس از موفقیت کامل سراغ Stage بعدی برو.
- در صورت خطا، همان‌جا متوقف شو و `Stage ID` و متن کامل خطای MySQL را بفرست.
- `CORE-RESET-v9` تمام جدول‌های Nova را حذف می‌کند.
- Chapterهای بخش «فعلاً اجرا نکن» آمادهٔ Import نیستند.

```bash
mysql --default-character-set=utf8mb4 -h HOST -u USER -p DATABASE < "PATH"
```

## Stageهای آماده

| ترتیب | Stage ID | نوع | فایل | پیش‌نیاز | وضعیت |
|---:|---|---|---|---|---|
| 1 | `CORE-RESET-v9` | Reset | [reset_all_v9.sql](../database/reset_all_v9.sql) | — | آماده |
| 2 | `CORE-SCHEMA-v9` | Schema | [schema_v9.sql](../database/schema_v9.sql) | `CORE-RESET-v9` | آماده |

فعلاً هیچ Chapter یا Stage صوتی شرایط ورود به فهرست آماده را ندارد.

## فعلاً اجرا نکن

| Stage ID | دوره | SQL | QA | پوشش صوت | علت |
|---|---|---|---|---|---|
| `DE-CH-0001` | de-fa | [chapter.sql](../courses/de-fa/staging/batch_01/chapter_0001/chapter.sql) | [qa.json](../courses/de-fa/staging/batch_01/chapter_0001/qa.json) | Turn: 100٪ · Word: 100٪ | `DECLARE EXIT HANDLER` و `START TRANSACTION` تکراری‌اند و یک Declaration بعد از شروع Transaction آمده است؛ SQL در MySQL قابل‌اجرا نیست. |
| `DE-CH-0002` | de-fa | [chapter.sql](../courses/de-fa/staging/batch_01/chapter_0002/chapter.sql) | [qa.json](../courses/de-fa/staging/batch_01/chapter_0002/qa.json) | Turn: 100٪ · Word: 100٪ | `DECLARE EXIT HANDLER` و `START TRANSACTION` تکراری‌اند و یک Declaration بعد از شروع Transaction آمده است؛ SQL در MySQL قابل‌اجرا نیست. |

QA و صوت هر دو Chapter کامل ثبت شده‌اند، اما invariant مربوط به `idempotent_sql` در QA یک false positive است. فایل‌های صوتی نیز تا اصلاح Chapterها runnable نیستند:

- [turn_manifest.json](../audio/de-fa/turn_manifest.json) — 64/64
- [word_manifest.json](../audio/de-fa/word_manifest.json) — 88/88
- [update_turn_audio.sql](../audio/de-fa/update_turn_audio.sql)
- [update_word_audio.sql](../audio/de-fa/update_word_audio.sql)

## قاعدهٔ ورود Chapter به ready

1. مسیر SQL و QA موجود باشد.
2. شماره‌ها از Chapter 0001 بدون gap متوالی باشند.
3. QA معتبر و SQL از نظر ساختاری قابل‌اجرا باشد.
4. پوشش Turn audio دقیقاً 100٪ باشد.
5. پوشش Word audio برای تمام Wordهای واجد شرایط دقیقاً 100٪ باشد.

ترتیب هر دوره پس از آماده‌شدن داده‌ها: Chapterهای متوالی، سپس `update_turn_audio.sql` و بعد `update_word_audio.sql`.

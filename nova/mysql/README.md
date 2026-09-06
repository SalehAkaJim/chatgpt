# Nova MySQL — ترتیب اجرای فایل‌ها

این صفحه تنها مرجع اجرای دستی MySQL برای Nova است. نسخهٔ ماشینی در [`import_order_v2.json`](import_order_v2.json) و گزارش QA در [`import_order_v2_qa.json`](import_order_v2_qa.json) قرار دارد.

## روش اجرا

- برای نصب تمیز، Stageها را دقیقاً از بالا به پایین اجرا کن.
- هر Stage را جدا اجرا کن و پس از موفقیت کامل سراغ Stage بعدی برو.
- در صورت خطا همان‌جا متوقف شو و `Stage ID` و متن کامل خطای MySQL را بفرست.
- `CORE-RESET-v9` تمام جدول‌های Nova را حذف می‌کند.
- Chapterهای ۰۰۱ و ۰۰۲ با قرارداد آموزشی v2.1 و اجرای واقعی MySQL 8 تایید شده‌اند.

```bash
mysql --default-character-set=utf8mb4 -h HOST -u USER -p DATABASE < "PATH"
```

## Stageهای آماده

| ترتیب | Stage ID | نوع | فایل | پیش‌نیاز | وضعیت |
|---:|---|---|---|---|---|
| 1 | `CORE-RESET-v9` | Reset | [reset_all_v9.sql](../database/reset_all_v9.sql) | — | آماده — مخرب |
| 2 | `CORE-SCHEMA-v9` | Schema | [schema_v9.sql](../database/schema_v9.sql) | `CORE-RESET-v9` | آماده |
| 3 | `DE-CH-0001` | Chapter | [chapter_0001.sql](../courses/de-fa/staging/batch_01/chapter_0001/chapter.sql) | `CORE-SCHEMA-v9` | آماده |
| 4 | `DE-CH-0002` | Chapter | [chapter_0002.sql](../courses/de-fa/staging/batch_01/chapter_0002/chapter.sql) | `DE-CH-0001` | آماده |
| 5 | `DE-AUDIO-TURNS-v2` | Turn Audio | [update_turn_audio.sql](../audio/de-fa/update_turn_audio.sql) | `DE-CH-0002` | آماده — ۶۴/۶۴ |
| 6 | `DE-AUDIO-WORDS-v2` | Word Audio | [update_word_audio.sql](../audio/de-fa/update_word_audio.sql) | `DE-AUDIO-TURNS-v2` | آماده — ۸۸/۸۸ |

## کنترل کیفیت

- قرارداد آموزشی: [independent_course_v2.md](../contracts/independent_course_v2.md)
- Validator: [validate_content.py](../validation/validate_content.py)
- اجرای واقعی Schema و هر دو Chapter روی MySQL 8: [Workflow Run 34028448146](https://github.com/SalehAkaJim/chatgpt/actions/runs/34028448146)
- Turn audio: پوشش ۱۰۰٪
- Word audio با Lori: پوشش ۱۰۰٪

## قاعدهٔ ورود Chapter به ready

1. مسیر SQL و QA موجود باشد.
2. شماره‌ها بدون gap متوالی باشند.
3. QA قرارداد v2.1 و Validator آموزشی PASS باشند.
4. SQL در MySQL 8 واقعاً اجرا شده باشد.
5. پوشش Turn و Word audio دقیقاً ۱۰۰٪ باشد.

فایل‌های جدید فقط پس از عبور از تمام این Gateها به جدول بالا اضافه می‌شوند.

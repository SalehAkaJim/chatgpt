# Nova MySQL — ترتیب اجرای فایل‌ها

این صفحه مرجع مرکزی اجرای دستی MySQL برای Nova v9 است. نسخهٔ ماشینی در [`import_order_v2.json`](import_order_v2.json) و گزارش QA در [`import_order_v2_qa.json`](import_order_v2_qa.json) قرار دارد.

## روش اجرا

- برای نصب تمیز، Stageها را دقیقاً از بالا به پایین اجرا کن.
- هر Stage را جداگانه اجرا کن و فقط پس از موفقیت کامل سراغ Stage بعدی برو.
- اگر خطا دیدی، همان‌جا متوقف شو و `Stage ID`، آخرین Stage موفق و متن کامل خطای MySQL را بفرست.
- `CORE-RESET-v9` تمام جدول‌های Nova را حذف می‌کند و فقط برای نصب تمیز است.

```bash
mysql --default-character-set=utf8mb4 -h HOST -u USER -p DATABASE < "PATH"
```

## Stageهای آماده

| ترتیب | Stage ID | نوع | فایل | پیش‌نیاز | وضعیت |
|---:|---|---|---|---|---|
| 1 | `CORE-RESET-v9` | Reset | [reset_all_v9.sql](../database/reset_all_v9.sql) | `—` | آماده — مخرب |
| 2 | `CORE-SCHEMA-v9` | Schema | [schema_v9.sql](../database/schema_v9.sql) | `CORE-RESET-v9` | آماده |
| 3 | `DE-CH-0001` | Chapter | [chapter.sql](../courses/de-fa/staging/batch_01/chapter_0001/chapter.sql) | `CORE-SCHEMA-v9` | آماده — Turn 32/32، Word 51/51 |
| 4 | `DE-CH-0002` | Chapter | [chapter.sql](../courses/de-fa/staging/batch_01/chapter_0002/chapter.sql) | `DE-CH-0001` | آماده — Turn 32/32، Word 37/37 |
| 5 | `DE-CH-0003` | Chapter | [chapter.sql](../courses/de-fa/staging/batch_01/chapter_0003/chapter.sql) | `DE-CH-0002` | آماده — Turn 46/46، Word 45/45 |
| 6 | `DE-CH-0004` | Chapter | [chapter.sql](../courses/de-fa/staging/batch_01/chapter_0004/chapter.sql) | `DE-CH-0003` | آماده — Turn 50/50، Word 47/47 |
| 7 | `DE-CH-0005` | Chapter | [chapter.sql](../courses/de-fa/staging/batch_01/chapter_0005/chapter.sql) | `DE-CH-0004` | آماده — Turn 46/46، Word 31/31 |
| 8 | `DE-CH-0006` | Chapter | [chapter.sql](../courses/de-fa/staging/batch_01/chapter_0006/chapter.sql) | `DE-CH-0005` | آماده — Turn 47/47، Word 37/37 |
| 9 | `DE-CH-0007` | Chapter | [chapter.sql](../courses/de-fa/staging/batch_01/chapter_0007/chapter.sql) | `DE-CH-0006` | آماده — Turn 47/47، Word 26/26 |
| 10 | `DE-CH-0008` | Chapter | [chapter.sql](../courses/de-fa/staging/batch_01/chapter_0008/chapter.sql) | `DE-CH-0007` | آماده — Turn 46/46، Word 40/40 |
| 11 | `DE-CH-0009` | Chapter | [chapter.sql](../courses/de-fa/staging/batch_01/chapter_0009/chapter.sql) | `DE-CH-0008` | آماده — Turn 47/47، Word 31/31 |
| 12 | `DE-CH-0010` | Chapter | [chapter.sql](../courses/de-fa/staging/batch_01/chapter_0010/chapter.sql) | `DE-CH-0009` | آماده — Turn 47/47، Word 33/33 |
| 13 | `DE-CH-0011` | Chapter | [chapter.sql](../courses/de-fa/staging/batch_01/chapter_0011/chapter.sql) | `DE-CH-0010` | آماده — Turn 47/47، Word 32/32 |
| 14 | `EN-CH-0001` | Chapter | [chapter.sql](../courses/en-fa/staging/batch_01/chapter_0001/chapter.sql) | `CORE-SCHEMA-v9` | آماده — Turn 38/38، Word 54/54 |
| 15 | `EN-CH-0002` | Chapter | [chapter.sql](../courses/en-fa/staging/batch_01/chapter_0002/chapter.sql) | `EN-CH-0001` | آماده — Turn 38/38، Word 24/24 |
| 16 | `EN-CH-0003` | Chapter | [chapter.sql](../courses/en-fa/staging/batch_01/chapter_0003/chapter.sql) | `EN-CH-0002` | آماده — Turn 41/41، Word 21/21 |
| 17 | `EN-CH-0004` | Chapter | [chapter.sql](../courses/en-fa/staging/batch_01/chapter_0004/chapter.sql) | `EN-CH-0003` | آماده — Turn 40/40، Word 15/15 |
| 18 | `DE-AUDIO-TURNS-v2` | Turn Audio | [update_turn_audio.sql](../audio/de-fa/update_turn_audio.sql) | `DE-CH-0011` | آماده — 487/487 |
| 19 | `DE-AUDIO-WORDS-v2` | Word Audio | [update_word_audio.sql](../audio/de-fa/update_word_audio.sql) | `DE-AUDIO-TURNS-v2` | آماده — 410/410 |
| 20 | `EN-AUDIO-TURNS-v2` | Turn Audio | [update_turn_audio.sql](../audio/en-fa/update_turn_audio.sql) | `EN-CH-0004` | آماده — 157/157 |
| 21 | `EN-AUDIO-WORDS-v2` | Word Audio | [update_word_audio.sql](../audio/en-fa/update_word_audio.sql) | `EN-AUDIO-TURNS-v2` | آماده — 114/114 |

## پوشش تاییدشده

- آلمانی: Chapterهای `0001–0011`، صوت Turn برابر `487/487` و Word برابر `410/410`.
- انگلیسی: Chapterهای `0001–0004`، صوت Turn برابر `157/157` و Word برابر `114/114`.
- Chapterهای بازسازی‌شده با `semantic_gate_version=2` کنترل شده‌اند.
- قرارداد آموزشی: [independent_course_v2.md](../contracts/independent_course_v2.md)، نسخهٔ `2.1.0`.
- Validator: [validate_content.py](../validation/validate_content.py).
- آخرین اجرای موفق Validator و MySQL 8: [Nova Content Quality — Run 34043445251](https://github.com/SalehAkaJim/chatgpt/actions/runs/34043445251).

Chapter فقط زمانی وارد این جدول می‌شود که SQL و QA معتبر، شمارهٔ Series متوالی، Semantic Gate، اجرای MySQL 8 و پوشش Turn/Word audio همگی PASS باشند.

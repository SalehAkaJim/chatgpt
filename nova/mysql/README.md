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
| 11 | `EN-CH-0001` | Chapter | [chapter.sql](../courses/en-fa/staging/batch_01/chapter_0001/chapter.sql) | `CORE-SCHEMA-v9` | آماده — Turn 38/38، Word 54/54 |
| 12 | `EN-CH-0002` | Chapter | [chapter.sql](../courses/en-fa/staging/batch_01/chapter_0002/chapter.sql) | `EN-CH-0001` | آماده — Turn 38/38، Word 24/24 |
| 13 | `EN-CH-0003` | Chapter | [chapter.sql](../courses/en-fa/staging/batch_01/chapter_0003/chapter.sql) | `EN-CH-0002` | آماده — Turn 41/41، Word 21/21 |
| 14 | `DE-AUDIO-TURNS-v2` | Turn Audio | [update_turn_audio.sql](../audio/de-fa/update_turn_audio.sql) | `DE-CH-0008` | آماده — 346/346 |
| 15 | `DE-AUDIO-WORDS-v2` | Word Audio | [update_word_audio.sql](../audio/de-fa/update_word_audio.sql) | `DE-AUDIO-TURNS-v2` | آماده — 314/314 |
| 16 | `EN-AUDIO-TURNS-v2` | Turn Audio | [update_turn_audio.sql](../audio/en-fa/update_turn_audio.sql) | `EN-CH-0003` | آماده — 117/117 |
| 17 | `EN-AUDIO-WORDS-v2` | Word Audio | [update_word_audio.sql](../audio/en-fa/update_word_audio.sql) | `EN-AUDIO-TURNS-v2` | آماده — 99/99 |

## پوشش تاییدشده

- آلمانی: Chapterهای `0001–0008`، صوت Turn برابر `346/346` و Word برابر `314/314`.
- انگلیسی: Chapterهای `0001–0003`، صوت Turn برابر `117/117` و Word برابر `99/99`.
- Chapterهای بازسازی‌شده با `semantic_gate_version=2` کنترل شده‌اند.
- قرارداد آموزشی: [independent_course_v2.md](../contracts/independent_course_v2.md)، نسخهٔ `2.1.0`.
- Validator: [validate_content.py](../validation/validate_content.py).
- آخرین اجرای موفق Validator و MySQL 8: [Nova Content Quality — Run 34038255257](https://github.com/SalehAkaJim/chatgpt/actions/runs/34038255257).

Chapter فقط زمانی وارد این جدول می‌شود که SQL و QA معتبر، شمارهٔ Series متوالی، Semantic Gate، اجرای MySQL 8 و پوشش Turn/Word audio همگی PASS باشند.

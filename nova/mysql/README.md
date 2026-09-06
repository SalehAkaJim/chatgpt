# Nova MySQL Import Order — v9.0

این صفحه تنها نقطهٔ شروع برای Import دستی Nova در MySQL است. فهرست ماشینی همین برنامه در [`import_order_v9.json`](import_order_v9.json) و نتیجهٔ اعتبارسنجی آن در [`import_order_v9_qa.json`](import_order_v9_qa.json) قرار دارد.

## روش اجرا

- قبل از شروع از دیتابیس `nucertri_db_nova` خروجی پشتیبان بگیر.
- هر بار فقط **یک Stage** را کامل اجرا کن و بعد سراغ Stage بعدی برو.
- برای نصب خالی از ردیف ۱ شروع کن. برای ادامهٔ نصب قبلی، از ردیف بعد از آخرین Stage موفق ادامه بده.
- فایل‌ها را کامل و با کلاینتی اجرا کن که `DELIMITER` را پشتیبانی می‌کند.
- فایل‌های `staging/**`، `reset_all_v9.sql` و `runtime_lesson_query_v9.sql` جزو Import نیستند.
- ترتیب داخل هر زبان سخت‌گیرانه است. بعد از Schema، مسیر آلمانی و انگلیسی از هم مستقل‌اند؛ جدول زیر برای نصب تازه، آلمانی را قبل از انگلیسی قرار داده است.

نمونهٔ فرمان:

```bash
mysql --default-character-set=utf8mb4 -h HOST -u USER -p nucertri_db_nova < "PATH_FROM_TABLE"
```

## قرارداد گزارش خطا

اگر خطایی رخ داد، اجرا را همان‌جا متوقف کن و فقط این سه مورد را بفرست:

```text
Stage ID: DE-0089-0096-CONTENT
Last successful Stage ID: DE-0081-0088-CONTENT
MySQL error: متن کامل خطا
```

با Stage ID می‌توانیم دقیقاً همان فایل و همان بازهٔ Series را بدون حدس‌زدن پیدا و اصلاح کنیم. فایل موفق قبلی را دوباره اجرا نکن مگر اینکه بعد از بررسی صریحاً لازم باشد.

## ترتیب فعلی فایل‌های آماده

این فهرست فقط محتوای **منتشرشده و آمادهٔ Import** را شامل می‌شود و به Commit `8692af396dbb7f69fe6ce79c068d17dd558a11b3` از `main` مربوط است.

| ترتیب | Stage ID | مسیر دوره | Series | فایل |
|---:|---|---|---:|---|
| 1 | `DB-0000-SCHEMA` | shared | — | [schema_v9.sql](../database/schema_v9.sql) |
| 2 | `DE-0000-SEED` | de-fa | — | [de_fa_base_seed_v9.sql](../database/de_fa_base_seed_v9.sql) |
| 3 | `DE-0001-CONTENT` | de-fa | 001 | [nova_DE_FA_A1_M01_C01_series_001_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A1_M01_C01_series_001_v9.sql) |
| 4 | `DE-0002-CONTENT` | de-fa | 002 | [nova_DE_FA_A1_M01_C02_series_002_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A1_M01_C02_series_002_v9.sql) |
| 5 | `DE-0003-CONTENT` | de-fa | 003 | [nova_DE_FA_A1_M01_C03_series_003_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A1_M01_C03_series_003_v9.sql) |
| 6 | `DE-0004-CONTENT` | de-fa | 004 | [nova_DE_FA_A1_M01_C04_series_004_v9_r2.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A1_M01_C04_series_004_v9_r2.sql) |
| 7 | `DE-0005-CONTENT` | de-fa | 005 | [nova_DE_FA_A1_M01_C05_series_005_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A1_M01_C05_series_005_v9.sql) |
| 8 | `DE-0006-CONTENT` | de-fa | 006 | [nova_DE_FA_A1_M02_C01_series_006_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A1_M02_C01_series_006_v9.sql) |
| 9 | `DE-0007-CONTENT` | de-fa | 007 | [nova_DE_FA_A1_M02_C02_series_007_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A1_M02_C02_series_007_v9.sql) |
| 10 | `DE-0008-CONTENT` | de-fa | 008 | [nova_DE_FA_A1_M02_C03_series_008_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A1_M02_C03_series_008_v9.sql) |
| 11 | `DE-0009-CONTENT` | de-fa | 009 | [nova_DE_FA_A1_M02_C04_series_009_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A1_M02_C04_series_009_v9.sql) |
| 12 | `DE-0010-CONTENT` | de-fa | 010 | [nova_DE_FA_A1_M02_C05_series_010_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A1_M02_C05_series_010_v9.sql) |
| 13 | `DE-0011-CONTENT` | de-fa | 011 | [nova_DE_FA_A1_M03_C01_series_011_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A1_M03_C01_series_011_v9.sql) |
| 14 | `DE-0012-CONTENT` | de-fa | 012 | [nova_DE_FA_A1_M03_C02_series_012_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A1_M03_C02_series_012_v9.sql) |
| 15 | `DE-0013-CONTENT` | de-fa | 013 | [nova_DE_FA_A1_M03_C03_series_013_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A1_M03_C03_series_013_v9.sql) |
| 16 | `DE-0014-CONTENT` | de-fa | 014 | [nova_DE_FA_A1_M03_C04_series_014_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A1_M03_C04_series_014_v9.sql) |
| 17 | `DE-0015-CONTENT` | de-fa | 015 | [nova_DE_FA_A1_M03_C05_series_015_v9_r3.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A1_M03_C05_series_015_v9_r3.sql) |
| 18 | `DE-0016-CONTENT` | de-fa | 016 | [nova_DE_FA_A1_M04_C01_series_016_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A1_M04_C01_series_016_v9.sql) |
| 19 | `DE-0017-CONTENT` | de-fa | 017 | [nova_DE_FA_A1_M04_C02_series_017_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A1_M04_C02_series_017_v9.sql) |
| 20 | `DE-0018-CONTENT` | de-fa | 018 | [nova_DE_FA_A1_M04_C03_series_018_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A1_M04_C03_series_018_v9.sql) |
| 21 | `DE-0019-CONTENT` | de-fa | 019 | [nova_DE_FA_A1_M04_C04_series_019_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A1_M04_C04_series_019_v9.sql) |
| 22 | `DE-0020-CONTENT` | de-fa | 020 | [nova_DE_FA_A1_M04_C05_series_020_v9_r2.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A1_M04_C05_series_020_v9_r2.sql) |
| 23 | `DE-0021-CONTENT` | de-fa | 021 | [nova_DE_FA_A1_M05_C01_series_021_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A1_M05_C01_series_021_v9.sql) |
| 24 | `DE-0022-CONTENT` | de-fa | 022 | [nova_DE_FA_A1_M05_C02_series_022_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A1_M05_C02_series_022_v9.sql) |
| 25 | `DE-0023-CONTENT` | de-fa | 023 | [nova_DE_FA_A1_M05_C03_series_023_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A1_M05_C03_series_023_v9.sql) |
| 26 | `DE-0024-CONTENT` | de-fa | 024 | [nova_DE_FA_A1_M05_C04_series_024_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A1_M05_C04_series_024_v9.sql) |
| 27 | `DE-0025-CONTENT` | de-fa | 025 | [nova_DE_FA_A1_M05_C05_series_025_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A1_M05_C05_series_025_v9.sql) |
| 28 | `DE-0026-CONTENT` | de-fa | 026 | [nova_DE_FA_A1_M06_C01_series_026_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A1_M06_C01_series_026_v9.sql) |
| 29 | `DE-0027-CONTENT` | de-fa | 027 | [nova_DE_FA_A1_M06_C02_series_027_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A1_M06_C02_series_027_v9.sql) |
| 30 | `DE-0028-CONTENT` | de-fa | 028 | [nova_DE_FA_A1_M06_C03_series_028_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A1_M06_C03_series_028_v9.sql) |
| 31 | `DE-0029-CONTENT` | de-fa | 029 | [nova_DE_FA_A1_M06_C04_series_029_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A1_M06_C04_series_029_v9.sql) |
| 32 | `DE-0030-CONTENT` | de-fa | 030 | [nova_DE_FA_A1_M06_C05_series_030_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A1_M06_C05_series_030_v9.sql) |
| 33 | `DE-0031-CONTENT` | de-fa | 031 | [nova_DE_FA_A1_M07_C01_series_031_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A1_M07_C01_series_031_v9.sql) |
| 34 | `DE-0032-CONTENT` | de-fa | 032 | [nova_DE_FA_A1_M07_C02_series_032_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A1_M07_C02_series_032_v9.sql) |
| 35 | `DE-0033-CONTENT` | de-fa | 033 | [nova_DE_FA_A1_M07_C03_series_033_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A1_M07_C03_series_033_v9.sql) |
| 36 | `DE-0034-CONTENT` | de-fa | 034 | [nova_DE_FA_A1_M07_C04_series_034_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A1_M07_C04_series_034_v9.sql) |
| 37 | `DE-0035-CONTENT` | de-fa | 035 | [nova_DE_FA_A1_M07_C05_series_035_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A1_M07_C05_series_035_v9.sql) |
| 38 | `DE-0036-CONTENT` | de-fa | 036 | [nova_DE_FA_A1_M08_C01_series_036_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A1_M08_C01_series_036_v9.sql) |
| 39 | `DE-0037-CONTENT` | de-fa | 037 | [nova_DE_FA_A1_M08_C02_series_037_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A1_M08_C02_series_037_v9.sql) |
| 40 | `DE-0038-CONTENT` | de-fa | 038 | [nova_DE_FA_A1_M08_C03_series_038_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A1_M08_C03_series_038_v9.sql) |
| 41 | `DE-0039-CONTENT` | de-fa | 039 | [nova_DE_FA_A1_M08_C04_series_039_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A1_M08_C04_series_039_v9.sql) |
| 42 | `DE-0040-CONTENT` | de-fa | 040 | [nova_DE_FA_A1_M08_C05_series_040_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A1_M08_C05_series_040_v9.sql) |
| 43 | `DE-0041-CONTENT` | de-fa | 041 | [nova_DE_FA_A2_M01_C01_series_041_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A2_M01_C01_series_041_v9.sql) |
| 44 | `DE-0042-CONTENT` | de-fa | 042 | [nova_DE_FA_A2_M01_C02_series_042_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A2_M01_C02_series_042_v9.sql) |
| 45 | `DE-0043-CONTENT` | de-fa | 043 | [nova_DE_FA_A2_M01_C03_series_043_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A2_M01_C03_series_043_v9.sql) |
| 46 | `DE-0044-CONTENT` | de-fa | 044 | [nova_DE_FA_A2_M01_C04_series_044_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A2_M01_C04_series_044_v9.sql) |
| 47 | `DE-0045-CONTENT` | de-fa | 045 | [nova_DE_FA_A2_M01_C05_series_045_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A2_M01_C05_series_045_v9.sql) |
| 48 | `DE-0046-CONTENT` | de-fa | 046 | [nova_DE_FA_A2_M02_C01_series_046_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A2_M02_C01_series_046_v9.sql) |
| 49 | `DE-0047-CONTENT` | de-fa | 047 | [nova_DE_FA_A2_M02_C02_series_047_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A2_M02_C02_series_047_v9.sql) |
| 50 | `DE-0048-CONTENT` | de-fa | 048 | [nova_DE_FA_A2_M02_C03_series_048_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A2_M02_C03_series_048_v9.sql) |
| 51 | `DE-0049-CONTENT` | de-fa | 049 | [nova_DE_FA_A2_M02_C04_series_049_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A2_M02_C04_series_049_v9.sql) |
| 52 | `DE-0050-CONTENT` | de-fa | 050 | [nova_DE_FA_A2_M02_C05_series_050_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A2_M02_C05_series_050_v9.sql) |
| 53 | `DE-0051-CONTENT` | de-fa | 051 | [nova_DE_FA_A2_M03_C01_series_051_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A2_M03_C01_series_051_v9.sql) |
| 54 | `DE-0052-CONTENT` | de-fa | 052 | [nova_DE_FA_A2_M03_C02_series_052_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A2_M03_C02_series_052_v9.sql) |
| 55 | `DE-0053-CONTENT` | de-fa | 053 | [nova_DE_FA_A2_M03_C03_series_053_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A2_M03_C03_series_053_v9.sql) |
| 56 | `DE-0054-CONTENT` | de-fa | 054 | [nova_DE_FA_A2_M03_C04_series_054_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A2_M03_C04_series_054_v9.sql) |
| 57 | `DE-0055-CONTENT` | de-fa | 055 | [nova_DE_FA_A2_M03_C05_series_055_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A2_M03_C05_series_055_v9.sql) |
| 58 | `DE-0056-CONTENT` | de-fa | 056 | [nova_DE_FA_A2_M04_C01_series_056_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A2_M04_C01_series_056_v9.sql) |
| 59 | `DE-0057-CONTENT` | de-fa | 057 | [nova_DE_FA_A2_M04_C02_series_057_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A2_M04_C02_series_057_v9.sql) |
| 60 | `DE-0058-CONTENT` | de-fa | 058 | [nova_DE_FA_A2_M04_C03_series_058_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A2_M04_C03_series_058_v9.sql) |
| 61 | `DE-0059-CONTENT` | de-fa | 059 | [nova_DE_FA_A2_M04_C04_series_059_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A2_M04_C04_series_059_v9.sql) |
| 62 | `DE-0060-CONTENT` | de-fa | 060 | [nova_DE_FA_A2_M04_C05_series_060_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A2_M04_C05_series_060_v9.sql) |
| 63 | `DE-0061-CONTENT` | de-fa | 061 | [nova_DE_FA_A2_M05_C01_series_061_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A2_M05_C01_series_061_v9.sql) |
| 64 | `DE-0062-CONTENT` | de-fa | 062 | [nova_DE_FA_A2_M05_C02_series_062_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A2_M05_C02_series_062_v9.sql) |
| 65 | `DE-0063-CONTENT` | de-fa | 063 | [nova_DE_FA_A2_M05_C03_series_063_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A2_M05_C03_series_063_v9.sql) |
| 66 | `DE-0064-CONTENT` | de-fa | 064 | [nova_DE_FA_A2_M05_C04_series_064_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A2_M05_C04_series_064_v9.sql) |
| 67 | `DE-0065-CONTENT` | de-fa | 065 | [nova_DE_FA_A2_M05_C05_series_065_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A2_M05_C05_series_065_v9.sql) |
| 68 | `DE-0066-CONTENT` | de-fa | 066 | [nova_DE_FA_A2_M06_C01_series_066_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A2_M06_C01_series_066_v9.sql) |
| 69 | `DE-0067-CONTENT` | de-fa | 067 | [nova_DE_FA_A2_M06_C02_series_067_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A2_M06_C02_series_067_v9.sql) |
| 70 | `DE-0068-CONTENT` | de-fa | 068 | [nova_DE_FA_A2_M06_C03_series_068_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A2_M06_C03_series_068_v9.sql) |
| 71 | `DE-0069-CONTENT` | de-fa | 069 | [nova_DE_FA_A2_M06_C04_series_069_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A2_M06_C04_series_069_v9.sql) |
| 72 | `DE-0070-CONTENT` | de-fa | 070 | [nova_DE_FA_A2_M06_C05_series_070_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A2_M06_C05_series_070_v9.sql) |
| 73 | `DE-0071-CONTENT` | de-fa | 071 | [nova_DE_FA_A2_M07_C01_series_071_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A2_M07_C01_series_071_v9.sql) |
| 74 | `DE-0072-CONTENT` | de-fa | 072 | [nova_DE_FA_A2_M07_C02_series_072_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A2_M07_C02_series_072_v9.sql) |
| 75 | `DE-0073-CONTENT` | de-fa | 073 | [nova_DE_FA_A2_M07_C03_series_073_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A2_M07_C03_series_073_v9.sql) |
| 76 | `DE-0074-CONTENT` | de-fa | 074 | [nova_DE_FA_A2_M07_C04_series_074_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A2_M07_C04_series_074_v9.sql) |
| 77 | `DE-0075-CONTENT` | de-fa | 075 | [nova_DE_FA_A2_M07_C05_series_075_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A2_M07_C05_series_075_v9.sql) |
| 78 | `DE-0076-CONTENT` | de-fa | 076 | [nova_DE_FA_A2_M08_C01_series_076_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A2_M08_C01_series_076_v9.sql) |
| 79 | `DE-0077-CONTENT` | de-fa | 077 | [nova_DE_FA_A2_M08_C02_series_077_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A2_M08_C02_series_077_v9.sql) |
| 80 | `DE-0078-CONTENT` | de-fa | 078 | [nova_DE_FA_A2_M08_C03_series_078_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A2_M08_C03_series_078_v9.sql) |
| 81 | `DE-0079-CONTENT` | de-fa | 079 | [nova_DE_FA_A2_M08_C04_series_079_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A2_M08_C04_series_079_v9.sql) |
| 82 | `DE-0080-CONTENT` | de-fa | 080 | [nova_DE_FA_A2_M08_C05_series_080_v9.sql](../archive/series_001_080_fixed/extracted/nova_DE_FA_A2_M08_C05_series_080_v9.sql) |
| 83 | `DE-0081-0088-CONTENT` | de-fa | 081–088 | [batch_01_chapters_01_08.sql](../content/B1/batch_01_chapters_01_08.sql) |
| 84 | `DE-0089-0096-CONTENT` | de-fa | 089–096 | [batch_02_chapters_09_16.sql](../content/B1/batch_02_chapters_09_16.sql) |
| 85 | `DE-0097-0104-CONTENT` | de-fa | 097–104 | [batch_03_chapters_17_24.sql](../content/B1/batch_03_chapters_17_24.sql) |
| 86 | `EN-0001-0008-CONTENT` | en-fa | 001–008 | [batch_01_chapters_01_08.sql](../courses/en-fa/content/Start/batch_01_chapters_01_08.sql) |
| 87 | `EN-0009-0016-CONTENT` | en-fa | 009–016 | [batch_02_chapters_09_16.sql](../courses/en-fa/content/Start/batch_02_chapters_09_16.sql) |
| 88 | `EN-0017-0024-CONTENT` | en-fa | 017–024 | [batch_03_chapters_17_24.sql](../courses/en-fa/content/Start/batch_03_chapters_17_24.sql) |

## فعلاً اجرا نکن

| Stage ID | وضعیت | فایل | علت |
|---|---|---|---|
| `DE-0105-STAGING` | do_not_run | [chapter.sql](../staging/B1/batch_04/chapter_25_series_105/chapter.sql) | Batch 04 (Series 105-112) is incomplete and unpublished. |
| `EN-0025-0028-STAGING` | do_not_run | [chapter.sql](../courses/en-fa/staging/Start/batch_04/chapter_25_series_025/chapter.sql)<br>[chapter.sql](../courses/en-fa/staging/Start/batch_04/chapter_26_series_026/chapter.sql)<br>[chapter.sql](../courses/en-fa/staging/Start/batch_04/chapter_27_series_027/chapter.sql)<br>[chapter.sql](../courses/en-fa/staging/Start/batch_04/chapter_28_series_028/chapter.sql) | Batch 04 (Series 025-032) is incomplete and unpublished. |
| `DE-AUDIO-TURN` | blocked | [update_turn_audio.sql](../audio/update_turn_audio.sql) | Cumulative audio SQL includes staged Series through 105, but the latest published content ends at Series 104. Run only after the matching batch is published and this index marks the stage ready. |
| `DE-AUDIO-WORD` | blocked | [update_word_audio.sql](../audio/update_word_audio.sql) | Cumulative audio SQL includes staged Series through 105, but the latest published content ends at Series 104. Run only after the matching batch is published and this index marks the stage ready. |
| `EN-AUDIO-TURN` | blocked | [update_turn_audio.sql](../audio/en-fa/update_turn_audio.sql) | Cumulative audio SQL includes staged Series through 028, but the latest published content ends at Series 024. Run only after the matching batch is published and this index marks the stage ready. |
| `EN-AUDIO-WORD` | blocked | [update_word_audio.sql](../audio/en-fa/update_word_audio.sql) | Cumulative audio SQL includes staged Series through 028, but the latest published content ends at Series 024. Run only after the matching batch is published and this index marks the stage ready. |

## پوشش فعلی

- آلمانی: محتوای منتشرشدهٔ Series `001–104`
- انگلیسی: محتوای منتشرشدهٔ Series `001–024`
- آلمانی Series `105` و انگلیسی Series `025–028` QA PASS هستند، اما چون Batchهایشان کامل نشده، عمداً در صف اجرایی نیستند.
- SQLهای صوتی تجمعی‌اند و در حال حاضر دادهٔ staged را هم پوشش می‌دهند؛ بنابراین تا انتشار Batch متناظر در حالت `blocked` می‌مانند.

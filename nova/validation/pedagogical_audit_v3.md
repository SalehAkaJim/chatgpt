# Nova pedagogical audit v3

این پروتکل برای بازبینی Chapterهای v2.1 پیش از ادامه تولید v3 است.

## فایل‌های خروجی هر Chapter

در پوشه هر Chapter این فایل‌ها باید وجود داشته باشند:

- `linguistic_audit_v3.json`: نتیجه بازبینی مستقل زبانی/آموزشی
- `learning_units_v3.json`: word sense / chunk / construction / grammar / pronunciation / can-doهای استفاده‌شده
- `review_evidence_v3.json`: review obligationهای موعدرسیده و activity evidence آن‌ها
- در صورت نیاز `v3_repair.sql`: اصلاح additive و idempotent روی semantic layer یا metadata تاریخی

اگر target-language Turn یا accepted answer واقعاً غلط/غیرطبیعی است، منبع canonical باید اصلاح شود و صوت متن تغییرکرده دوباره ساخته شود. اگر تغییر legacy word tuple باعث شکستن dependency Chapterهای بعدی می‌شود، tuple تاریخی را حفظ کن و sense صحیح را در semantic layer ثبت کن؛ legacy POS/translation را به‌عنوان منبع آموزشی جدید استفاده نکن.

## چک اجباری

1. طبیعی و درست بودن همه Turnهای زبان مقصد
2. طبیعی و دقیق بودن ترجمه فارسی
3. POS در همان context، نه فقط lemma-level
4. sense-example alignment
5. شناسایی chunk/constructionهای چندکلمه‌ای
6. accepted speech فقط پاسخ‌های طبیعی و قابل آموزش
7. micro-grammar دقیقاً همان چیزی را توضیح دهد که scored item می‌سنجد
8. complexity و prerequisite مناسب Level
9. reading واقعی زبان مقصد، نه فقط توضیح فارسی
10. pronunciation target مشخص در چرخه Level
11. review_due در مقابل evidence واقعی retrieval/production
12. نگاشت Chapter به Can-Do و curriculum outcome

## Review evidence

صرف حضور یک token در Turn، review محسوب نمی‌شود. برای تسویه obligation باید activity از نوع recall, transfer, meaning choice, word order, reading retrieval, writing retrieval یا mastery وجود داشته باشد و learning unit هدف را واقعاً فعال کند.

## PASS

`linguistic_audit_v3.json` فقط وقتی PASS است که `blocking_issues=[]` باشد. هر repair باید دوباره structural validator، MySQL 8 و audio eligibility را بررسی کند.

## Chapter count / Level

Audit نباید Chapter را برای پرکردن یک range قدیمی نگه دارد یا حذف کند. بعد از audit، curriculum coverage مشخص می‌کند A1 چه زمانی واقعاً کامل است. هیچ عدد ثابتی برای پایان Level وجود ندارد.

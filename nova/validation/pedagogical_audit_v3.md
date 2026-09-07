# Nova pedagogical audit v3

این پروتکل برای بازبینی Chapterهای native-v3 استفاده می‌شود.

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

## Acquisition quality — اجباری از Series 4

از Series 4 به بعد `linguistic_audit_v3.json` باید evidence صریح و PASS برای این پنج gate داشته باشد:

1. `natural_story_dialogue`: Turnهای story باید مثل مکالمه طبیعی باشند. repetition و drill کنترل‌شده عمدتاً داخل Activity انجام شود، نه با دیالوگ مصنوعی.
2. `surface_variation_transfer`: learning unit هدف فقط با یک جمله ثابت تمرین نشود؛ variation و transfer در wording/context وجود داشته باشد.
3. `learner_facing_pronunciation`: pronunciation برای learner با listen / notice / contrast / produce آموزش داده شود و فهم اصطلاح فنی شرط یادگیری نباشد.
4. `persian_speaker_contrast`: هرجا خطای قابل‌پیش‌بینی فارسی‌زبان مهم است، contrastive teaching یا evidence مناسب ثبت شود؛ اگر relevant نیست audit باید دلیل `not_applicable` داشته باشد.
5. `novel_context_mastery`: Lesson 4 باید حداقل یک mastery task در context تازه داشته باشد که پاسخ صرفاً کپی مستقیم cue یا جمله‌های قبلی نباشد و learner مجبور به recombination مستقل شود.

برای Series 4+ وجود این evidence فقط documentation نیست؛ structural validator بدون آن Chapter را PASS نمی‌کند.

## Review evidence

صرف حضور یک token در Turn، review محسوب نمی‌شود. برای تسویه obligation باید activity از نوع recall, transfer, meaning choice, word order, reading retrieval, writing retrieval یا mastery وجود داشته باشد و learning unit هدف را واقعاً فعال کند.

## PASS

`linguistic_audit_v3.json` فقط وقتی PASS است که `blocking_issues=[]` باشد. برای Series 4+ علاوه بر آن، `acquisition_quality` باید شامل پنج gate بالا با status برابر `PASS` یا برای contrast فارسی status برابر `NOT_APPLICABLE` همراه با reason غیرخالی باشد. هر repair باید دوباره structural validator، MySQL 8 و audio eligibility را بررسی کند.

## Chapter count / Level

Audit نباید Chapter را برای پرکردن یک range قدیمی نگه دارد یا حذف کند. بعد از audit، curriculum coverage مشخص می‌کند Level چه زمانی واقعاً کامل است. هیچ عدد ثابتی برای پایان Level وجود ندارد.

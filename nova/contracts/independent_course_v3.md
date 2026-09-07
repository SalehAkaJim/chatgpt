# Nova independent-course contract v3.0

این قرارداد مرجع قطعی تولید محتوای فعال Nova است. دیتای پیش از reset روی branch `archive/nova-pre-v3-reset-2026-09-07` آرشیو شده و روی `main` هیچ اعتبار تولیدی ندارد. هر دوره از Series 001 به‌صورت native v3 ساخته می‌شود.

## تعداد Chapter پویاست
هیچ Course یا Level تعداد Chapter ثابت ندارد. `Series` فقط ترتیب تولید/import است. A1/A2/B1/B2 وقتی تمام می‌شوند که outcomeهای آموزشی همان Level واقعاً پوشش داده و mastery شوند؛ نه وقتی شماره Chapter به عددی خاص برسد.

Level completion فقط با پوشش Can-Doها، grammar/functionها، lexical word-sense/chunk/constructionها، pronunciation، listening/reading و از A2 به بعد writing، صفر بودن review debt و عبور از checkpoint mastery مجاز است.

## ساختار Chapter
برای ثبات UX هر Chapter فعلاً 4 Lesson دارد: exposure، explicit form، retrieval، mastery. هر Lesson 8–14 Turn و 12–18 Activity دارد؛ تعداد و modeها باید بر اساس نیاز آموزشی انتخاب شوند و 18 ثابت ممنوع است.

## واحد آموزشی
Token فقط برای surface/dictionary/audio است. واحد آموزشی اصلی یکی از `word_sense`, `chunk`, `construction`, `grammar`, `pronunciation`, `can_do` است. ترجمه و مثال باید متعلق به همان sense باشند. شکستن عبارت‌هایی مثل `zu Hause`, `warten auf + Akk.`, `Nice to meet you`, `be from`, `need help` به ترجمه‌های token-level گمراه‌کننده ممنوع است.

## مهارت‌ها
Speaking و Listening از A1 الزامی‌اند. Reading واقعی زبان مقصد از A1 الزامی است. Writing در A1 می‌تواند micro-output باشد و از A2 جزو completion gate است. Pronunciation syllabus مستقل از A1 لازم است و STT به تنهایی pronunciation assessment نیست.

## Spaced review
فاصله‌های پایه 1/2/4/8/16 حفظ می‌شوند. هر learning unit تازه obligation می‌سازد. وقتی due شد باید activity evidence واقعی از retrieval/production/transfer/reading/writing/mastery داشته باشد؛ حضور تصادفی token در Turn مرور محسوب نمی‌شود. review debt مانع PASS است.

## Linguistic gate
Structural PASS کافی نیست. هر Chapter second-pass audit مستقل لازم دارد: naturalness زبان مقصد، ترجمه فارسی، POS در context، sense-example alignment، chunk/construction mapping، accepted-answer naturalness، grammar/item alignment، CEFR appropriateness و prerequisiteها. پاسخ قابل فهم اما غیرطبیعی accepted answer نیست.

## Curriculum
هر زبان Curriculum مستقل دارد و برای هر Level باید Can-Do، communication functions، grammar inventory، lexical domains + core chunks/constructions، pronunciation، listening، reading، writing و mastery evidence تعریف کند. Theme به تنهایی curriculum نیست.

## Publication gate
Chapter فقط با PASS کامل structural validator + linguistic audit + curriculum prerequisite + deterministic review ledger + MySQL 8 + Turn audio + learning-unit audio واجد شرایط publish است. هیچ QA flag ادعایی جای evidence واقعی را نمی‌گیرد.

## خطا و سرعت تولید
در هر اجرا حداکثر دو Chapter متوالی مجاز است و Chapter دوم فقط بعد از PASS کامل اول ساخته می‌شود. خطا automation را Pause نمی‌کند؛ همان Series repair می‌شود و state تا PASS جلو نمی‌رود. هیچ gap مجاز نیست.

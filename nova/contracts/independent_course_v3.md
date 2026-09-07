# Nova independent-course contract v3.0

این قرارداد جایگزین v2.1 برای تولید و بازبینی محتوای Nova است. هدف، ساخت دوره‌ای است که یادگیری واقعی را پوشش دهد؛ نه رسیدن به یک تعداد از پیش تعیین‌شده Chapter.

## اصل اصلی: تعداد Chapter ثابت نیست

- هیچ دوره‌ای `total_chapters` ثابت ندارد.
- هیچ Level بازهٔ عددی ثابت مثل A1=1–48 ندارد.
- `Series` فقط ترتیب تولید و import را نشان می‌دهد و Level را تعیین نمی‌کند.
- هر Level تا زمانی ادامه دارد که نیازهای آموزشی همان Level کامل شوند؛ بنابراین تعداد Chapterهای A1/A2/B1/B2 می‌تواند بین زبان‌ها و حتی پس از audit تغییر کند.
- عبور به Level بعد فقط وقتی مجاز است که همهٔ Can-Do outcomeهای الزامی، grammar/functionها، lexical unitها، pronunciation targetها، reading/listening targetها و review obligationهای همان Level پوشش داده شده و checkpoint mastery پاس شده باشد.

## Level completion gate

یک Level فقط وقتی `complete` می‌شود که:

1. تمام Can-Doهای الزامی آن Level evidence واقعی داشته باشند.
2. تمام grammar/functionهای الزامی قبل از استفادهٔ نمره‌دار آموزش داده شده و در transfer مستقل استفاده شده باشند.
3. تمام lexical core units شامل word sense، chunk و construction پوشش داده شده باشند.
4. pronunciation syllabus همان Level پوشش داده شده باشد.
5. listening و reading outcomeها پاس شده باشند.
6. از A2 به بعد written production موردنیاز Level پاس شده باشد.
7. review debt صفر باشد؛ هیچ target موعدرسیده‌ای بدون evidence تمرین باقی نماند.
8. checkpoint mastery حداقل 80٪ و independent transfer حداقل 75٪ باشد.

برای رسیدن به این شرایط هیچ حداقل یا حداکثر Chapter مصنوعی تعریف نمی‌شود.

## ساختار Chapter

برای ثبات UX، هر Chapter فعلاً 4 Lesson دارد، ولی تعداد Chapterهای هر Level پویاست:

1. شنیدن داستان و guided exposure
2. explicit form/grammar و controlled practice
3. retrieval و independent use
4. review، transfer و mastery

هر Lesson بین 8 تا 14 Turn و 12 تا 18 Activity دارد. عدد 18 نباید اجباری باشد. Activityها بر اساس هدف آموزشی انتخاب می‌شوند، نه برای پرکردن template.

## واحد آموزشی: Sense و Chunk، نه Token تنها

جدول `words` همچنان برای tokenization، dictionary surface و audio قابل استفاده است، اما واحد اصلی آموزش دیگر صرفاً `lemma + POS` نیست.

واحدهای مجاز:

- `word_sense`: یک معنای مشخص از یک واژه در نقش دستوری مشخص
- `chunk`: عبارت چندکلمه‌ای پرتکرار
- `construction`: الگوی ساختاری مثل `warten auf + Akk.`
- `grammar`
- `pronunciation`
- `can_do`

ترجمه باید متعلق به همان sense/chunk باشد. شکستن عبارت‌هایی مثل `zu Hause` یا `warten auf` به ترجمه‌های مستقل گمراه‌کننده ممنوع است.

## مهارت‌ها

Nova همچنان speaking-first است، اما اگر Level با برچسب CEFR ارائه می‌شود باید مهارت‌های لازم را پوشش دهد:

- Speaking: از A1 الزامی
- Listening: از A1 الزامی
- Reading واقعی زبان مقصد: از A1 الزامی
- Writing: در A1 می‌تواند micro-output باشد؛ از A2 به بعد جزو completion gate است
- Pronunciation: از A1 syllabus مستقل دارد؛ STT به تنهایی pronunciation assessment نیست

`reading_comprehension` دیگر نباید فقط نام مستعار micro-grammar فارسی باشد. Reading باید متن زبان مقصد، سؤال فهم، inference یا retrieval از متن داشته باشد.

## الگوی Activity

Modeهای موجود مثل audio-first، word/chunk teaching، micro-grammar، repeat، recall، blank، token order و scenario transfer حفظ می‌شوند، اما توزیع ثابت 18تایی حذف می‌شود.

Modeهای جدید/صریح:

- `chunk_teach`
- `reading_input`
- `reading_comprehension`
- `reading_inference`
- `guided_write`
- `short_response`
- `functional_write`
- `sound_notice`
- `minimal_pair`
- `stress_rhythm`
- `shadowing`

هر Lesson فقط modeهایی را می‌گیرد که برای outcome آن لازم‌اند.

## Spaced review واقعی

فاصله‌های پیش‌فرض 1/2/4/8/16 Chapter حفظ می‌شوند، اما `review_due` دیگر یادداشت یا برنامه نیست.

- هر learning unit تازه یک review obligation ایجاد می‌کند.
- وقتی obligation موعدش می‌رسد، Chapter مقصد باید activity evidence واقعی برای آن unit داشته باشد.
- اگر target موعدرسیده بدون evidence باشد، Chapter PASS نمی‌شود.
- مرور باید retrieval یا کاربرد واقعی باشد؛ صرف حضور token در Turn برای تسویهٔ obligation کافی نیست.

## Linguistic gate

Structural PASS به‌تنهایی publication PASS نیست. هر Chapter باید second-pass linguistic audit مستقل بگیرد که این موارد را بررسی کند:

- POS در context
- معنی/sense صحیح
- هماهنگی example با sense
- طبیعی بودن جمله مقصد
- طبیعی و دقیق بودن ترجمه فارسی
- طبیعی بودن accepted speech alternatives
- هم‌راستایی micro-grammar و سؤال نمره‌دار
- مناسب بودن complexity برای Level
- عدم آموزش construction معرفی‌نشده
- عدم وجود literal token translation گمراه‌کننده

پاسخ «قابل فهم ولی غیرطبیعی» accepted answer محسوب نمی‌شود.

## Curriculum

Curriculum هر زبان مستقل است و باید برای هر Level این inventoryها را داشته باشد:

- Can-Do outcomes
- communication functions
- grammar inventory
- lexical domains + core chunks/constructions
- pronunciation targets
- listening targets
- reading targets
- writing targets در Levelهای لازم
- mastery evidence requirements

Theme به تنهایی curriculum نیست.

## Migration از v2.1

تا وقتی audit کامل دادهٔ فعلی انجام نشده، تولید Chapter تازه ممنوع است:

- German: Series 001–015
- English: Series 001–009

هر Chapter فعلی باید از نظر linguistic quality، sense/chunk mapping، Persian translation، review evidence و curriculum coverage دوباره بررسی و در صورت نیاز repair شود. بعد از PASS کل backlog، `next_series` دوباره unlock می‌شود.

## Publication gate v3

Chapter جدید یا repairشده فقط زمانی publishable است که همهٔ این موارد PASS باشند:

1. Structural validator
2. Linguistic audit
3. Curriculum prerequisite gate
4. Deterministic review ledger
5. MySQL 8 execution
6. Turn audio
7. Word/chunk audio در موارد واجد شرایط

هیچ QA flag ادعایی جای evidence واقعی را نمی‌گیرد.

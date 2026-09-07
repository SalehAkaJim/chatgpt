# Nova

Nova مخزن تولید دوره‌های مستقل زبان برای فارسی‌زبانان است. معماری آموزشی از v3 به بعد **outcome-driven** است؛ تعداد Chapterهای هر Course یا Level از قبل ثابت نمی‌شود و هر Level تا کامل‌شدن نیازهای آموزشی خودش ادامه دارد.

- قرارداد آموزشی فعال: [contracts/independent_course_v3.md](contracts/independent_course_v3.md)
- قرارداد ماشینی: [contracts/independent_course_v3.json](contracts/independent_course_v3.json)
- لایه semantic یادگیری: [database/semantic_layer_v10.sql](database/semantic_layer_v10.sql)
- ترتیب MySQL v3: [mysql/README.md](mysql/README.md)
- Validator مهاجرت/QA آموزشی: [validation/validate_migration_v3.py](validation/validate_migration_v3.py)
- پروتکل audit: [validation/pedagogical_audit_v3.md](validation/pedagogical_audit_v3.md)
- وضعیت آلمانی: [courses/de-fa/production_state.json](courses/de-fa/production_state.json)
- وضعیت انگلیسی: [courses/en-fa/production_state.json](courses/en-fa/production_state.json)
- سیاست صوت: [policies/audio_v2.json](policies/audio_v2.json)

## وضعیت migration v3

تولید Chapter جدید موقتاً قفل است تا محتوای موجود دوباره از نظر آموزشی audit شود:

- German: Series 001–015
- English: Series 001–009

v2 PASS فقط اعتبار فنی تاریخی است. در v3، Chapter باید علاوه بر Structural/MySQL/Audio، از نظر linguistic naturalness، Persian translation، word sense/chunk، curriculum coverage و review evidence هم PASS شود.

`Series` فقط شماره ترتیب است و Level را تعیین نمی‌کند. A1/A2/B1/B2 هیچ range عددی ثابت ندارند.

نسخهٔ پیش از بازسازی مستقل روی branch `archive/nova-v9-before-independent-rebuild-20260906` نگه‌داری می‌شود.

# Nova audio pipeline

هر workflow با `NOVA_COURSE` اجرا می‌شود. SQL فقط از `nova/courses/{course}/staging/**/chapter.sql` خوانده می‌شود و تمام state و manifestها course-scoped هستند.

- Turn audio: صدای مستقل و متناسب با هر شخصیت.
- Word audio: صدای ثابت Lori؛ جمله‌های کامل حذف می‌شوند.
- تولید صوت با push هر Chapter آغاز می‌شود.
- Chapter بدون پوشش کامل صوت publish/complete نیست.

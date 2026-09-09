# Nova Local Preview

این launcher برای تست محتوای Nova روی سیستم شخصی است. Prototype محلی می‌ماند، اما داده‌ی درس‌ها از آخرین `origin/main` گرفته می‌شود.

## پیش‌نیاز

- یک clone از repo خصوصی `SalehAkaJim/chatgpt`
- Git نصب و برای GitHub احراز هویت شده باشد
- Python 3 نصب باشد

هیچ GitHub token داخل HTML یا JavaScript ذخیره نمی‌شود. launcher از credential عادی Git روی سیستم استفاده می‌کند.

## Linux

از ریشه repo اجرا کن:

```bash
./nova/prototype/start-preview-linux.sh
```

یا:

```bash
bash nova/prototype/start-preview-linux.sh
```

## macOS

روی فایل زیر دابل‌کلیک کن:

`nova/prototype/start-preview-macos.command`

یا از Terminal اجرا کن:

```bash
./nova/prototype/start-preview-macos.command
```

اگر macOS به‌خاطر تنظیمات امنیتی اجرای فایل را مسدود کرد، یک بار از Finder روی فایل راست‌کلیک کن و `Open` را بزن.

## اجرای مستقیم

روی هر دو سیستم می‌توانی مستقیم launcher پایتون را اجرا کنی:

```bash
python3 nova/prototype/local_preview.py
```

## رفتار

1. `origin/main` fetch می‌شود.
2. working copy فعلی تو تغییر نمی‌کند؛ یک detached temporary worktree ساخته می‌شود.
3. فقط Lessonهایی وارد Preview می‌شوند که PASS evidence دقیق همان bytes را داشته باشند.
4. Preview روی `http://127.0.0.1:8765/nova/prototype/` باز می‌شود. اگر پورت آزاد نباشد یک پورت آزاد انتخاب می‌شود.
5. وقتی صفحه را Refresh می‌کنی، launcher هر چند ثانیه `main` را بررسی می‌کند. اگر commit جدیدی باشد، Preview تاییدشده دوباره ساخته و بدون دست‌زدن به فایل‌های محلی تو جایگزین می‌شود.
6. اگر GitHub یا اینترنت موقتاً در دسترس نباشد، آخرین Preview تاییدشده همان session همچنان سرو می‌شود.
7. با `Ctrl+C` سرور و worktreeهای موقت پاک می‌شوند.

## Audio

اگر ElevenLabs audio مربوط به همان نسخه‌ی Lesson موجود و PASS باشد استفاده می‌شود. در غیر این صورت Preview برای تست محتوا از browser TTS استفاده می‌کند؛ بنابراین تست متن وابسته به تکمیل TTS پولی نیست.

## نکته‌ی QA

وجود یک Lesson جدید روی `main` به‌تنهایی باعث نمایش آن نمی‌شود. `lesson.source.json` باید PASS evidence با `sourceHash` دقیق همان فایل داشته باشد. این باعث می‌شود هیچ نسخه‌ی تغییرکرده یا تاییدنشده‌ای وارد تست دستی نشود.

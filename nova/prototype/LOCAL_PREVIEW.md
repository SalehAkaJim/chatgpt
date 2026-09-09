# Nova Local Preview

این launcher برای تست محتوای Nova روی سیستم شخصی است. Prototype محلی می‌ماند، اما داده‌ی درس‌ها از آخرین `origin/main` گرفته می‌شود.

## پیش‌نیاز

- Git نصب باشد
- Python 3 نصب باشد
- سیستم یک بار برای دسترسی به repo خصوصی GitHub احراز هویت شده باشد؛ `gh auth login`، Git Credential Manager یا SSH key همگی قابل استفاده‌اند

**نیازی نیست repo را دستی clone کنی.** launcher در اولین اجرا خودش یک clone/cache خصوصی می‌سازد و در اجراهای بعدی فقط `main` را sync می‌کند.

هیچ GitHub token داخل HTML یا JavaScript ذخیره نمی‌شود.

## Linux

اگر فقط فایل launcher را دانلود کرده‌ای:

```bash
chmod +x start-preview-linux.sh
./start-preview-linux.sh
```

cache پروژه به‌صورت پیش‌فرض اینجاست:

```text
~/.cache/nova-preview/chatgpt
```

اگر `XDG_CACHE_HOME` تعریف شده باشد از همان مسیر استفاده می‌شود.

## macOS

فایل زیر را اجرا یا دابل‌کلیک کن:

`start-preview-macos.command`

اگر فایل executable نبود:

```bash
chmod +x start-preview-macos.command
./start-preview-macos.command
```

cache پروژه به‌صورت پیش‌فرض اینجاست:

```text
~/Library/Caches/NovaPreview/chatgpt
```

اگر macOS به‌خاطر تنظیمات امنیتی فایل دانلودشده را مسدود کرد، یک بار از Finder روی فایل راست‌کلیک کن و `Open` را بزن.

## اولین اجرا

1. launcher بررسی می‌کند Git و Python 3 موجود باشند.
2. اگر cache پروژه وجود نداشته باشد، خودش repo خصوصی `SalehAkaJim/chatgpt` را clone می‌کند.
3. ابتدا GitHub CLI احراز هویت‌شده را امتحان می‌کند، بعد HTTPS Git credentials و در نهایت SSH را.
4. اگر هیچ روش احراز هویتی آماده نباشد، فقط لازم است یک بار GitHub login/SSH را روی سیستم تنظیم کنی و launcher را دوباره اجرا کنی؛ clone دستی لازم نیست.

## اجراهای بعدی

1. `origin/main` fetch می‌شود.
2. working copy یا فایل launcher تو تغییر نمی‌کند؛ Preview از cache و یک detached temporary worktree ساخته می‌شود.
3. فقط Lessonهایی وارد Preview می‌شوند که PASS evidence دقیق همان bytes را داشته باشند.
4. Preview روی `http://127.0.0.1:8765/nova/prototype/` باز می‌شود. اگر پورت آزاد نباشد یک پورت آزاد انتخاب می‌شود.
5. وقتی صفحه را Refresh می‌کنی، launcher هر چند ثانیه `main` را بررسی می‌کند. اگر commit جدیدی باشد، Preview تاییدشده دوباره ساخته و جایگزین می‌شود.
6. اگر GitHub یا اینترنت موقتاً در دسترس نباشد، آخرین Preview تاییدشده همان session همچنان سرو می‌شود.
7. با `Ctrl+C` سرور و worktreeهای موقت پاک می‌شوند؛ cache اصلی باقی می‌ماند تا اجرای بعدی سریع باشد.

## Audio

اگر ElevenLabs audio مربوط به همان نسخه‌ی Lesson موجود و PASS باشد استفاده می‌شود. در غیر این صورت Preview برای تست محتوا از browser TTS استفاده می‌کند؛ بنابراین تست متن وابسته به تکمیل TTS پولی نیست.

## نکته‌ی QA

وجود یک Lesson جدید روی `main` به‌تنهایی باعث نمایش آن نمی‌شود. `lesson.source.json` باید PASS evidence با `sourceHash` دقیق همان فایل داشته باشد. این باعث می‌شود هیچ نسخه‌ی تغییرکرده یا تاییدنشده‌ای وارد تست دستی نشود.

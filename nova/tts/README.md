# Nova Turn Audio

این ابزار برای دیتابیس دست‌نخورده Nova v9.0 ساخته شده است. تمام Turnهای دوره
`de-fa` را از MySQL می‌خواند، برای هر شخصیت یک صدای آلمانی مجزا از ElevenLabs
در نظر می‌گیرد و فایل‌های MP3 را در مسیر زیر می‌سازد:

```text
nova/audio/turns/de-fa/{character}/turn_{id}_{fingerprint}.mp3
```

## نکات مهم

- Schema دیتابیس را تغییر نمی‌دهد.
- در مرحله فعلی دیتابیس را هم تغییر نمی‌دهد؛ چون مخزن GitHub خصوصی است و فایل‌ها
  URL عمومی قابل پخش ندارند.
- ارتباط دقیق هر Turn با فایل صوتی در `nova/audio/manifest.json` نگه داشته می‌شود.
- اجرای دوباره فقط Turnهای جدید، فایل‌های ناقص یا متن/صداهای تغییرکرده را می‌سازد.
- متن قبل و بعد هر Turn برای پیوستگی لحن به ElevenLabs ارسال می‌شود.
- سرعت A1 برابر `0.88`، A2 برابر `0.94` و B1 برابر `0.98` است.
- کلید API و رمز دیتابیس نباید داخل فایل‌های Repository قرار بگیرند.

## اجرای اولیه

ابتدا Dependency را نصب و Environment Variableهای موجود در `.env.example` را
در محیط اجرا تعریف کن. سپس:

```bash
python nova/tts/nova_tts.py bootstrap-voices --yes
python nova/tts/nova_tts.py plan
python nova/tts/nova_tts.py generate --yes
```

فرمان اول برای هر ۲۴ شخصیت فعلی یک Voice مجزای تاییدشده برای زبان آلمانی پیدا
می‌کند و آن را در `voice_map.json` ثبت می‌کند. این عملیات به تعداد کافی Voice
Slot در حساب ElevenLabs احتیاج دارد و در صورت تمام‌شدن Slotها قابل ادامه است.

## بعد از Import هر Series

همان فرمان زیر را اجرا کن. Manifest باعث می‌شود فقط Turnهای تازه تولید شوند:

```bash
python nova/tts/nova_tts.py generate --yes
```

اگر Series جدید شخصیت تازه‌ای داشته باشد، ابتدا `state/characters.json` و
`tts/voice_map.json` باید با آن شخصیت هماهنگ شوند و دوباره
`bootstrap-voices --yes` اجرا شود.

## اجرای GitHub Actions

Workflow با نام `Nova Turn Audio` همین فرایند را داخل GitHub انجام می‌دهد. برای
اجرای آن، این Repository Secretها باید تعریف شوند:

```text
ELEVENLABS_API_KEY
NOVA_DB_HOST
NOVA_DB_PORT
NOVA_DB_USER
NOVA_DB_PASSWORD
NOVA_DB_NAME
```

بار اول حالت `initial` و دفعات بعد حالت `after_series` را انتخاب کن. Workflow
فایل‌های موفق را حتی اگر تعدادی Turn خطا بدهند Commit می‌کند تا اجرای بعدی از
همان نقطه ادامه پیدا کند.

## انتقال بعدی به فضای نهایی

بعد از انتقال پوشه `nova/audio/turns` به CDN یا Object Storage، SQL نهایی را بساز:

```bash
python nova/tts/nova_tts.py export-sql \
  --url-prefix https://cdn.example.com/nova-audio
```

فایل `nova/audio/apply_audio_urls.sql` ساخته می‌شود. این فایل `voice_key` هر
شخصیت و `audio_url`، `audio_duration_ms` و متادیتای TTS هر Turn را با کنترل هش
متن به‌روزرسانی می‌کند.

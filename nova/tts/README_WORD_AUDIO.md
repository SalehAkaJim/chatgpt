# Nova Word Audio

این ابزار بدون اتصال به دیتابیس، تمام `INSERT INTO words`ها را از SQLهای Series
داخل Repository می‌خواند و برای هر رکورد یکتای دیکشنری یک فایل تلفظ MP3
می‌سازد. همه کلمات و عبارت‌ها از یک Voice ثابت استفاده می‌کنند:

```text
Lori - Happy and Sweet
Voice ID: TbMNBJ27fH2U0VgpSNko
Profile: female, happy, clear
Model: eleven_multilingual_v2
```

شناسه Lori ثابت است و در اجرای اولیه دوباره با Voice Library رسمی ElevenLabs
بررسی می‌شود؛ بنابراین یک Voice هم‌نام دیگر نمی‌تواند اشتباهی جایگزین آن شود.

## خروجی‌ها

```text
nova/audio/words/de-fa/{word-key-prefix}/{word}-{fingerprint}.mp3
nova/audio/word_manifest.json
nova/audio/last_word_generation_report.json
nova/audio/update_word_audio.sql
```

Manifest با هویت دقیق `lemma + part_of_speech + translation` کار می‌کند. اجرای
بعدی فقط Word تازه، فایل گم‌شده یا رکوردی را می‌سازد که متن تلفظ یا Voice آن
تغییر کرده باشد.

## مرز دیتابیس

- ابزار هیچ اتصال یا Secret دیتابیسی ندارد.
- دیتابیس مستقیماً تغییر نمی‌کند.
- SQL تولیدی قبل از Update، Course آلمانی به فارسی و هویت دقیق هر Word را
  بررسی می‌کند و اگر هر ورودی دقیقاً یک رکورد متناظر نداشته باشد متوقف می‌شود.
- تنها ستون‌های تغییرپذیر در `SET` عبارت‌اند از:
  `words.audio_url` و `words.audio_duration_ms`.

## اجرای اولیه

Workflow مستقل `Nova Word Audio` در حالت `initial` ابتدا Lori را در حساب
ElevenLabs بررسی و در صورت نیاز به Voice Collection اضافه می‌کند، سپس تمام
Wordهای فعلی را می‌سازد. انتخاب `initial` به معنی شروع تولید و مصرف quota است.

تا پیش از اجرای اولیه، Push شدن Seriesهای جدید فقط بررسی و Plan را اجرا می‌کند
و تولید پولی را خودکار شروع نمی‌کند.

## بعد از Seriesهای بعدی

پس از تکمیل اجرای اولیه، هر Push شامل
`nova/staging/**/chapter.sql` به‌صورت خودکار اجرا می‌شود. به کمک Manifest فقط
Wordهای جدید یا تغییرکرده ساخته می‌شوند و Lori برای همه ثابت می‌ماند.

برای بازسازی SQL با آدرس نهایی CDN یا Object Storage:

```bash
python nova/tts/nova_word_tts.py export-sql \
  --url-prefix https://cdn.example.com/nova-audio
```

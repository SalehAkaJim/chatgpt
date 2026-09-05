# Nova Turn Audio

این ابزار بدون هیچ اتصال دیتابیسی، Turnها را از SQLهای موجود در خود Repository
می‌خواند و برای هر Turn با ElevenLabs فایل MP3 می‌سازد. خروجی‌ها موقتاً داخل
GitHub در این ساختار نگه‌داری می‌شوند:

```text
nova/audio/turns/de-fa/{level}/m{module}/c{chapter}/l{lesson}/t{turn}-{character}-{fingerprint}.mp3
```

ارتباط پایدار هر Turn با فایلش در `nova/audio/manifest.json` ثبت می‌شود؛ در
نتیجه اجرای بعدی فقط Turn تازه، فایل گم‌شده، یا Turnی را می‌سازد که متن، زمینه
یا صدایش تغییر کرده باشد.

## مرز دیتابیس

- اسکریپت Python نه به دیتابیس وصل می‌شود و نه آن را تغییر می‌دهد.
- هیچ Secret دیتابیسی لازم نیست.
- بعد از تولید، فقط یک فایل مستقل به نام
  `nova/audio/update_turn_audio.sql` ساخته می‌شود.
- SQL تولیدی پیش از Update، هر Turn را با سطح، شماره ماژول/فصل/درس/Turn، نام
  شخصیت، role و SHA-256 متن بررسی می‌کند. اگر هر ردیف دقیقاً یک تطبیق نداشته
  باشد کل عملیات متوقف می‌شود.
- تنها دو ستون پایدار در عبارت `SET` تغییر می‌کنند:
  `turns.audio_url` و `turns.audio_duration_ms`.
- هیچ Updateای برای `characters.voice_key` یا `turns.metadata` وجود ندارد.

## تطبیق صدا با شخصیت

مشخصات شخصیت‌ها از SQLهای canonical استخراج و در `voice_map.json` ثبت شده
است: جنسیت، نقش، زمینه داستان و فایل منبع. انتخاب صدا دو مرحله دارد:

1. قیود سخت: جنسیت دقیقاً یکسان، زبان آلمانی تأییدشده برای مدل multilingual،
   و Voice مجزا برای هر شخصیت.
2. امتیازدهی نقش: سن پیشنهادی، نوع کاربرد و ویژگی‌های توصیفی متناسب با نقش؛
   مثلاً زبان‌آموز دوستانه، پزشک آرام و اطمینان‌بخش، یا مدیر واضح و مطمئن.

سن دقیق در داده‌های Nova تعریف نشده، بنابراین به‌عنوان واقعیت ساخته نمی‌شود و
فقط یک ترجیح نرم مبتنی بر نقش است. متادیتای Voice انتخاب‌شده و دلیل امتیاز آن
داخل `voice_map.json` ذخیره می‌شود تا قابل ممیزی باشد. برای نمونه Lena فقط
می‌تواند Voice زنانه و تأییدشده برای آلمانی بگیرد؛ Voice مردانه قبل از تولید
رد می‌شود.

## اجرای اولیه برای همه داده‌های موجود

فقط Secret زیر را در GitHub Repository تعریف کن:

```text
ELEVENLABS_API_KEY
```

سپس از بخش Actions، Workflow با نام `Nova Turn Audio` را با حالت `initial`
و تأیید مصرف quota اجرا کن. Workflow این مراحل را انجام می‌دهد:

```bash
python nova/tts/nova_tts.py validate-sources
python nova/tts/nova_tts.py bootstrap-voices --yes
python nova/tts/nova_tts.py plan
python nova/tts/nova_tts.py generate --yes
```

Voiceها، MP3ها، manifest، گزارش آخرین اجرا و فایل SQL همگی در همان Repository
Commit می‌شوند. اگر اجرای طولانی نیمه‌کاره بماند، خروجی موفق ذخیره می‌شود و
اجرای دوباره از بخش باقی‌مانده ادامه می‌دهد.

## بعد از Seriesهای بعدی

پس از اجرای اولیه، هر Push که یک فایل `nova/staging/**/chapter.sql` جدید یا
تغییرکرده داشته باشد Workflow را خودکار اجرا می‌کند. Manifest باعث می‌شود فقط
Turnهای تازه همان محتوا ساخته شوند. حالت دستی `after_series` نیز برای اجرای
مجدد اضطراری باقی مانده است.

## بعد از انتقال فایل‌ها از GitHub

فایل SQL پیش‌فرض مسیرهای فعلی Repository را در `audio_url` می‌گذارد. بعد از
انتقال پوشه صوتی به CDN یا Object Storage، همان یک فایل SQL را با prefix نهایی
بازسازی کن:

```bash
python nova/tts/nova_tts.py export-sql \
  --url-prefix https://cdn.example.com/nova-audio
```

سپس `nova/audio/update_turn_audio.sql` را خودت روی دیتابیس اجرا کن.

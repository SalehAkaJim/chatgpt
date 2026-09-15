-- Reference seed data for MySQL Content Schema v1
-- Safe to run more than once.

SET NAMES utf8mb4;

INSERT INTO cefr_levels (code, sort_order, label_fa) VALUES
  ('Pre-A1', 1, 'پیش از A1'),
  ('A1',     2, 'A1'),
  ('A2',     3, 'A2'),
  ('B1',     4, 'B1'),
  ('B2',     5, 'B2'),
  ('C1',     6, 'C1'),
  ('C2',     7, 'C2')
ON DUPLICATE KEY UPDATE
  label_fa = VALUES(label_fa),
  sort_order = VALUES(sort_order);

INSERT INTO languages (
  public_id, code, name_fa, name_native, text_direction, status, audio_status
) VALUES
  ('lang_de', 'de', 'آلمانی', 'Deutsch', 'ltr', 'planned', 'blocked_until_language_final'),
  ('lang_en', 'en', 'انگلیسی', 'English', 'ltr', 'planned', 'blocked_until_language_final')
ON DUPLICATE KEY UPDATE
  name_fa = VALUES(name_fa),
  name_native = VALUES(name_native),
  text_direction = VALUES(text_direction);

INSERT INTO activity_types (code, name_fa, requires_dialogue, is_enabled, description_fa) VALUES
  ('conversation_speaking', 'مکالمه و پاسخ گفتاری', 1, 1, 'شروع اجباری هر درس؛ کاربر جمله نمایش‌داده‌شده را می‌خواند.'),
  ('listen_choose',          'گوش بده و انتخاب کن', 0, 1, 'انتخاب گزینه درست بر اساس محتوای شنیداری.'),
  ('multiple_choice',        'چندگزینه‌ای', 0, 1, 'انتخاب پاسخ درست از چند گزینه.'),
  ('choose_response',        'انتخاب پاسخ مکالمه', 0, 1, 'انتخاب پاسخ مناسب برای یک موقعیت یا جمله.'),
  ('word_order',             'مرتب‌سازی جمله', 0, 1, 'چیدن واژه‌های یک جمله منبع در ترتیب صحیح.'),
  ('fill_blank',             'جای خالی', 0, 1, 'تکمیل بخشی حذف‌شده از جمله منبع.'),
  ('matching',               'تطبیق', 0, 1, 'تطبیق واژه، عبارت یا معنی‌های منبع.'),
  ('listen_repeat',          'گوش بده و تکرار کن', 0, 1, 'شنیدن محتوای منبع و تکرار آن.'),
  ('pronunciation_read',     'خواندن و تلفظ', 0, 1, 'خواندن کلمه، عبارت یا جمله نمایش‌داده‌شده.'),
  ('grammar_focus',          'تمرکز گرامر', 0, 1, 'تمرین بر پایه توضیح گرامری منبع.'),
  ('comprehension',          'درک مطلب', 0, 1, 'سؤال درک مطلب بر اساس محتوای منبع.'),
  ('true_false',             'درست یا غلط', 0, 1, 'ارزیابی درک محتوا با انتخاب درست/غلط.'),
  ('review',                 'مرور', 0, 1, 'مرور ترکیبی محتوای همان درس یا درس‌های قبلی.')
ON DUPLICATE KEY UPDATE
  name_fa = VALUES(name_fa),
  requires_dialogue = VALUES(requires_dialogue),
  is_enabled = VALUES(is_enabled),
  description_fa = VALUES(description_fa);

-- Create the seven CEFR level rows for each currently supported language.
INSERT INTO language_levels (language_id, cefr_level_id, status, lesson_count_status)
SELECT l.id, c.id, 'unassessed', 'unassessed'
FROM languages l
CROSS JOIN cefr_levels c
WHERE l.code IN ('de', 'en')
ON DUPLICATE KEY UPDATE
  language_id = VALUES(language_id);

-- German Pre-A1 Persian-only semantic polish.
-- Target: MySQL 9.0.1
-- Safe to run repeatedly after 006i.
--
-- IMPORTANT: this pass changes only Persian translations/instructions/rationales.
-- German target-language strings remain untouched and source-backed.

SET NAMES utf8mb4;

-- Lesson 5: name introduction.
UPDATE dialogue_turns dt
JOIN dialogues d ON d.id=dt.dialogue_id
SET dt.translation_fa='اسمم میاست. تو چی؟'
WHERE d.public_id='de_pre_a1_dlg_005'
  AND dt.text_target='Ich heiße Mia. Und du?';

UPDATE activity_items ai
JOIN activities a ON a.id=ai.activity_id
SET ai.text_fa='اسمم میاست. تو چی؟'
WHERE a.public_id='de_pre_a1_a005_03'
  AND ai.text_target='Ich heiße Mia. Und du?';

-- Lesson 11: natural Persian word order for taking a bus.
UPDATE dialogue_turns dt
JOIN dialogues d ON d.id=dt.dialogue_id
SET dt.translation_fa='می‌توانید سوار اتوبوس شماره پنج شوید.'
WHERE d.public_id='de_pre_a1_dlg_011'
  AND dt.text_target='Sie können Bus Nummer fünf nehmen.';

-- Lesson 12: the matching activity now covers 11–20, not 13–20.
UPDATE lessons
SET activity_count_rationale='3 activities are sufficient for 11–20 after the earlier 0–10 lesson.'
WHERE public_id='de_pre_a1_l012';

-- Lesson 15: Gleis is a railway platform/track context; use the learner-facing
-- Persian term “سکو” rather than the overly literal “خط”.
UPDATE dialogue_turns dt
JOIN dialogues d ON d.id=dt.dialogue_id
SET dt.translation_fa='ساعت ۱۴:۳۰ از سکوی چهار.'
WHERE d.public_id='de_pre_a1_dlg_015'
  AND dt.text_target='Um 14.30 Uhr von Gleis vier.';

UPDATE activity_items ai
JOIN activities a ON a.id=ai.activity_id
SET ai.text_fa='ساعت ۱۴:۳۰ از سکوی چهار.'
WHERE a.public_id='de_pre_a1_a015_04'
  AND ai.text_target='Um 14.30 Uhr von Gleis vier.';

-- Lessons 17 and 29: Vornamen = given/first names, not generic “names”.
UPDATE dialogue_turns dt
JOIN dialogues d ON d.id=dt.dialogue_id
SET dt.translation_fa='نام خانوادگی، نام کوچک، تاریخ و محل تولد؟'
WHERE d.public_id IN ('de_pre_a1_dlg_017','de_pre_a1_dlg_029')
  AND dt.text_target='Familienname, Vornamen, Geburtsdatum und -ort?';

-- Lessons 19–20: natural, explicit Persian directions.
UPDATE dialogue_turns dt
JOIN dialogues d ON d.id=dt.dialogue_id
SET dt.translation_fa='مستقیم بروید، اولین خیابان سمت چپ.'
WHERE d.public_id='de_pre_a1_dlg_019'
  AND dt.text_target='Gehen Sie geradeaus, die erste Straße links.';

UPDATE dialogue_turns dt
JOIN dialogues d ON d.id=dt.dialogue_id
SET dt.translation_fa='مستقیم بروید. اولین خیابان سمت چپ. سپس دومین خیابان سمت راست.'
WHERE d.public_id='de_pre_a1_dlg_020'
  AND dt.text_target='Gehen Sie geradeaus. Die erste Straße links. Dann die zweite rechts.';

UPDATE activity_items ai
JOIN activities a ON a.id=ai.activity_id
SET ai.text_fa=CASE ai.text_target
  WHEN 'die erste Straße links' THEN 'اولین خیابان سمت چپ'
  WHEN 'die zweite rechts' THEN 'دومین خیابان سمت راست'
  ELSE ai.text_fa
END
WHERE a.public_id='de_pre_a1_a020_02'
  AND ai.text_target IN ('die erste Straße links','die zweite rechts');

-- Lesson 23: use natural Persian food names consistently in dialogue, matching,
-- and tappable lexeme translation.
UPDATE dialogue_turns dt
JOIN dialogues d ON d.id=dt.dialogue_id
SET dt.translation_fa=CASE dt.text_target
  WHEN 'Ein Pizzabrötchen kostet 80 Cent.' THEN 'یک نان پیتزایی ۸۰ سنت قیمت دارد.'
  WHEN 'Und was kostet ein Toast mit Käse?' THEN 'و یک نان تست با پنیر چقدر قیمت دارد؟'
  ELSE dt.translation_fa
END
WHERE d.public_id='de_pre_a1_dlg_023'
  AND dt.text_target IN ('Ein Pizzabrötchen kostet 80 Cent.','Und was kostet ein Toast mit Käse?');

UPDATE activity_items ai
JOIN activities a ON a.id=ai.activity_id
SET ai.text_fa='نان تست با پنیر'
WHERE a.public_id='de_pre_a1_a023_02'
  AND ai.text_target='Toast mit Käse';

UPDATE lexemes
SET translation_fa='نان تست با پنیر'
WHERE public_id='de_lex_toast_mit_kaese';

-- Lesson 24: keep the conversational Persian natural but consistent.
UPDATE dialogue_turns dt
JOIN dialogues d ON d.id=dt.dialogue_id
SET dt.translation_fa='روز بخیر، چه میل دارید؟'
WHERE d.public_id='de_pre_a1_dlg_024'
  AND dt.text_target='Guten Tag, was darf es sein?';

-- Lesson 28: a registration form asks the guest to enter details, not to
-- “register” in the app/account sense. Distinguish surname from first name too.
UPDATE dialogue_turns dt
JOIN dialogues d ON d.id=dt.dialogue_id
SET dt.translation_fa='ممکن است لطفاً اینجا مشخصاتتان را وارد کنید؟'
WHERE d.public_id='de_pre_a1_dlg_028'
  AND dt.text_target='Würden Sie sich bitte hier eintragen?';

UPDATE activity_items ai
JOIN activities a ON a.id=ai.activity_id
SET ai.text_fa='نام خانوادگی'
WHERE a.public_id='de_pre_a1_a028_02'
  AND ai.text_target='Name';

-- Lesson 29: Vornamen field label.
UPDATE activity_items ai
JOIN activities a ON a.id=ai.activity_id
SET ai.text_fa='نام کوچک'
WHERE a.public_id='de_pre_a1_a029_02'
  AND ai.text_target='Vornamen';

-- Lesson 30: explicit name-form translation rather than generic identity wording.
UPDATE dialogue_turns dt
JOIN dialogues d ON d.id=dt.dialogue_id
SET dt.translation_fa='اسمم یاکوب است.'
WHERE d.public_id='de_pre_a1_dlg_030'
  AND dt.text_target='Ich heiße Jakob.';

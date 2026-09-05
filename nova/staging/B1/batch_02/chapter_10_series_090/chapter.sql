-- NOVA v9.0 / B1 SERIES 090 / Wir haben das Problem gelöst
-- Requires canonical v9.0 and Series 086-089 in sequence. No schema DDL.
SET NAMES utf8mb4;
DROP PROCEDURE IF EXISTS import_nova_series_090_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_090_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_level BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_module BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_chapter BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_martin BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_anna BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_001 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_002 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_003 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_004 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_005 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_006 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_007 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_008 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_009 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_010 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_011 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_012 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_013 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_014 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_015 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_016 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_017 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_018 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_019 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_020 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_021 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_022 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_023 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_024 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_025 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_026 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_027 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_028 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_029 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_030 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_031 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_032 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_033 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_034 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_035 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_036 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_037 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_038 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_039 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_040 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_041 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_042 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_043 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_044 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_045 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_046 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_047 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_048 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_049 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_050 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_051 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_052 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_053 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_054 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_055 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_056 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_057 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_058 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_059 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_060 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_061 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_062 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_063 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_064 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_065 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_066 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_067 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_068 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_069 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_070 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_071 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_072 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_073 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_074 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_075 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_076 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_077 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_078 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_079 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_080 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_081 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_082 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_083 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_084 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_085 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_086 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_087 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_088 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_089 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_090 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_091 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_092 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_093 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_094 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_095 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_l_1 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_l_2 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_l_3 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_l_4 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_t_1 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_t_2 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_t_3 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_t_4 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_t_5 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_t_6 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_t_7 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_t_8 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_t_9 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_t_10 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_t_11 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_t_12 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_t_13 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_t_14 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_t_15 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_t_16 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_t_17 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_t_18 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_t_19 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_t_20 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_t_21 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_t_22 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_t_23 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_t_24 BIGINT UNSIGNED DEFAULT NULL;

  DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN ROLLBACK; RESIGNAL; END;
  START TRANSACTION;
  SELECT id INTO v_course FROM courses WHERE learning_language='de' AND base_language='fa' ORDER BY id LIMIT 1;
  IF v_course IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Canonical de-fa Course missing.'; END IF;
  SELECT id INTO v_level FROM levels WHERE course_id=v_course AND cefr_level='B1' AND sort_order=3 ORDER BY id LIMIT 1;
  IF v_level IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Level missing.'; END IF;
  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=2 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 02 missing.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE module_id=v_module AND sort_order BETWEEN 1 AND 4 AND status IN ('validated','complete');
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 086-089 must be validated in sequence.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons l JOIN chapters c ON c.id=l.chapter_id WHERE c.module_id=v_module AND c.sort_order BETWEEN 1 AND 4 AND l.storyline_key='anna-martin-b1-project' AND l.storyline_order BETWEEN 1 AND 16;
  IF v_count<>16 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Storyline orders 1-16 required.'; END IF;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=5 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 02 Chapter 05 missing.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_chapter AND title='Wir haben das Problem gelöst' AND title_translation='مشکل رو حل کردیم';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 090 canonical title mismatch.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 02 Chapter 05 must be empty before Series 090 import.'; END IF;
  SELECT id INTO v_c_martin FROM characters WHERE course_id=v_course AND name='Martin' AND gender='male' ORDER BY id LIMIT 1;
  SELECT id INTO v_c_anna FROM characters WHERE course_id=v_course AND name='Anna' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_martin IS NULL OR v_c_anna IS NULL OR v_c_martin=v_c_anna THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required distinct Characters Martin and Anna missing.'; END IF;
  SELECT id INTO v_w_001 FROM words WHERE course_id=v_course AND lemma='ab' AND part_of_speech='particle' AND translation='جدا / ارسال' ORDER BY id LIMIT 1;
  IF v_w_001 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'ab','ab','particle','جدا / ارسال',46,'{"type":"particle"}','[{"text":"Hallo","translation":"سلام"},{"text":"Tschüss","translation":"خداحافظ"},{"text":"gut","translation":"خوب"},{"text":"Morgen","translation":"صبح"},{"text":"Guten Morgen","translation":"صبح بخیر"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_001=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_002 FROM words WHERE course_id=v_course AND lemma='Ablauf' AND part_of_speech='noun' AND translation='روند کار' ORDER BY id LIMIT 1;
  IF v_w_002 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Ablauf | noun'; END IF;
  SELECT id INTO v_w_003 FROM words WHERE course_id=v_course AND lemma='abschicken' AND part_of_speech='verb' AND translation='ارسال کردن' ORDER BY id LIMIT 1;
  IF v_w_003 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'abschicken','abschicken','verb','ارسال کردن',46,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"heißen","translation":"نام داشتن"},{"text":"freuen","translation":"خوشحال کردن / خوشحال شدن"},{"text":"kommen","translation":"آمدن"},{"text":"sein","translation":"بودن"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_003=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_004 FROM words WHERE course_id=v_course AND lemma='ähnlich' AND part_of_speech='adjective' AND translation='مشابه' ORDER BY id LIMIT 1;
  IF v_w_004 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'ähnlich','ähnlich','adjective','مشابه',46,'{"type":"adjective"}','[{"text":"gut","translation":"خوب"},{"text":"super","translation":"عالی"},{"text":"alt","translation":"پیر / دارای سن"},{"text":"spät","translation":"دیر"},{"text":"rot","translation":"قرمز"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_004=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_005 FROM words WHERE course_id=v_course AND lemma='all' AND part_of_speech='determiner' AND translation='همه' ORDER BY id LIMIT 1;
  IF v_w_005 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'all','all','determiner','همه',46,'{"type":"determiner"}','[{"text":"welcher","translation":"کدام / چه"},{"text":"anderer","translation":"دیگر / متفاوت"},{"text":"mein","translation":"مال من / من"},{"text":"dein","translation":"مال تو / تو"},{"text":"kein","translation":"هیچ / نه یک"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_005=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_006 FROM words WHERE course_id=v_course AND lemma='ändern' AND part_of_speech='verb' AND translation='تغییر دادن' ORDER BY id LIMIT 1;
  IF v_w_006 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ändern | verb'; END IF;
  SELECT id INTO v_w_007 FROM words WHERE course_id=v_course AND lemma='auch' AND part_of_speech='adverb' AND translation='هم / همچنین' ORDER BY id LIMIT 1;
  IF v_w_007 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: auch | adverb'; END IF;
  SELECT id INTO v_w_008 FROM words WHERE course_id=v_course AND lemma='bei' AND part_of_speech='preposition' AND translation='هنگام / موقع' ORDER BY id LIMIT 1;
  IF v_w_008 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'bei','bei','preposition','هنگام / موقع',46,'{"type":"preposition"}','[{"text":"bis","translation":"تا"},{"text":"aus","translation":"از"},{"text":"mit","translation":"با"},{"text":"um","translation":"در ساعت / حوالی"},{"text":"in","translation":"در / داخل"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_008=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_009 FROM words WHERE course_id=v_course AND lemma='Bescheid' AND part_of_speech='noun' AND translation='خبر / اطلاع' ORDER BY id LIMIT 1;
  IF v_w_009 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Bescheid | noun'; END IF;
  SELECT id INTO v_w_010 FROM words WHERE course_id=v_course AND lemma='bevor' AND part_of_speech='conjunction' AND translation='پیش از اینکه' ORDER BY id LIMIT 1;
  IF v_w_010 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'bevor','bevor','conjunction','پیش از اینکه',46,'{"type":"conjunction"}','[{"text":"und","translation":"و"},{"text":"oder","translation":"یا"},{"text":"weil","translation":"چون / زیرا"},{"text":"aber","translation":"اما"},{"text":"wenn","translation":"اگر / وقتی"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_010=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_011 FROM words WHERE course_id=v_course AND lemma='Bevor wir das tun, sichere ich noch eine Kopie.' AND part_of_speech='phrase' AND translation='پیش از اینکه این کار رو بکنیم، یک نسخه دیگه ذخیره می کنم.' ORDER BY id LIMIT 1;
  IF v_w_011 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Bevor wir das tun, sichere ich noch eine Kopie.','Bevor wir das tun, sichere ich noch eine Kopie.','phrase','پیش از اینکه این کار رو بکنیم، یک نسخه دیگه ذخیره می کنم.',46,'{"type":"phrase"}','[{"text":"Guten Morgen","translation":"صبح بخیر"},{"text":"Wie geht es dir?","translation":"حالت چطوره؟"},{"text":"Bis später","translation":"بعدا می بینمت"},{"text":"Ich heiße ...","translation":"اسم من ... است"},{"text":"Wie heißt du?","translation":"اسمت چیه؟"}]','Bevor wir das tun, sichere ich noch eine Kopie.','پیش از اینکه این کار رو بکنیم، یک نسخه دیگه ذخیره می کنم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_011=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_012 FROM words WHERE course_id=v_course AND lemma='bitte' AND part_of_speech='particle' AND translation='لطفا' ORDER BY id LIMIT 1;
  IF v_w_012 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'bitte','bitte','particle','لطفا',46,'{"type":"particle"}','[{"text":"Hallo","translation":"سلام"},{"text":"Tschüss","translation":"خداحافظ"},{"text":"gut","translation":"خوب"},{"text":"Morgen","translation":"صبح"},{"text":"Guten Morgen","translation":"صبح بخیر"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_012=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_013 FROM words WHERE course_id=v_course AND lemma='dann' AND part_of_speech='adverb' AND translation='بعد / سپس' ORDER BY id LIMIT 1;
  IF v_w_013 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: dann | adverb'; END IF;
  SELECT id INTO v_w_014 FROM words WHERE course_id=v_course AND lemma='dass' AND part_of_speech='conjunction' AND translation='که' ORDER BY id LIMIT 1;
  IF v_w_014 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: dass | conjunction'; END IF;
  SELECT id INTO v_w_015 FROM words WHERE course_id=v_course AND lemma='Datei' AND part_of_speech='noun' AND translation='فایل' ORDER BY id LIMIT 1;
  IF v_w_015 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Datei | noun'; END IF;
  SELECT id INTO v_w_016 FROM words WHERE course_id=v_course AND lemma='der' AND part_of_speech='article' AND translation='حرف تعریف' ORDER BY id LIMIT 1;
  IF v_w_016 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: der | article'; END IF;
  SELECT id INTO v_w_017 FROM words WHERE course_id=v_course AND lemma='deshalb' AND part_of_speech='adverb' AND translation='برای همین / بنابراین' ORDER BY id LIMIT 1;
  IF v_w_017 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: deshalb | adverb'; END IF;
  SELECT id INTO v_w_018 FROM words WHERE course_id=v_course AND lemma='dokumentieren' AND part_of_speech='verb' AND translation='مستند کردن' ORDER BY id LIMIT 1;
  IF v_w_018 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'dokumentieren','dokumentieren','verb','مستند کردن',46,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"heißen","translation":"نام داشتن"},{"text":"freuen","translation":"خوشحال کردن / خوشحال شدن"},{"text":"kommen","translation":"آمدن"},{"text":"sein","translation":"بودن"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_018=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_019 FROM words WHERE course_id=v_course AND lemma='du' AND part_of_speech='pronoun' AND translation='تو' ORDER BY id LIMIT 1;
  IF v_w_019 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: du | pronoun'; END IF;
  SELECT id INTO v_w_020 FROM words WHERE course_id=v_course AND lemma='eigentlich' AND part_of_speech='adverb' AND translation='در واقع' ORDER BY id LIMIT 1;
  IF v_w_020 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'eigentlich','eigentlich','adverb','در واقع',46,'{"type":"adverb"}','[{"text":"wie","translation":"چطور / چگونه"},{"text":"später","translation":"بعدا"},{"text":"woher","translation":"از کجا"},{"text":"sehr","translation":"خیلی / بسیار"},{"text":"so","translation":"این طور / آن طور"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_020=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_021 FROM words WHERE course_id=v_course AND lemma='ein' AND part_of_speech='article' AND translation='یک / حرف تعریف نامعین' ORDER BY id LIMIT 1;
  IF v_w_021 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ein | article'; END IF;
  SELECT id INTO v_w_022 FROM words WHERE course_id=v_course AND lemma='einmal' AND part_of_speech='adverb' AND translation='یک بار' ORDER BY id LIMIT 1;
  IF v_w_022 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: einmal | adverb'; END IF;
  SELECT id INTO v_w_023 FROM words WHERE course_id=v_course AND lemma='einzeln' AND part_of_speech='adjective' AND translation='جداگانه' ORDER BY id LIMIT 1;
  IF v_w_023 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'einzeln','einzeln','adjective','جداگانه',46,'{"type":"adjective"}','[{"text":"gut","translation":"خوب"},{"text":"super","translation":"عالی"},{"text":"alt","translation":"پیر / دارای سن"},{"text":"spät","translation":"دیر"},{"text":"rot","translation":"قرمز"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_023=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_024 FROM words WHERE course_id=v_course AND lemma='Ergebnis' AND part_of_speech='noun' AND translation='نتیجه' ORDER BY id LIMIT 1;
  IF v_w_024 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ergebnis','Ergebnis','noun','نتیجه',46,'{"type":"noun"}','[{"text":"Morgen","translation":"صبح"},{"text":"Kaffee","translation":"قهوه"},{"text":"Milch","translation":"شیر"},{"text":"Tee","translation":"چای"},{"text":"Wasser","translation":"آب"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_024=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_025 FROM words WHERE course_id=v_course AND lemma='erklären' AND part_of_speech='verb' AND translation='توضیح دادن' ORDER BY id LIMIT 1;
  IF v_w_025 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: erklären | verb'; END IF;
  SELECT id INTO v_w_026 FROM words WHERE course_id=v_course AND lemma='falsch' AND part_of_speech='adjective' AND translation='اشتباه / نادرست' ORDER BY id LIMIT 1;
  IF v_w_026 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: falsch | adjective'; END IF;
  SELECT id INTO v_w_027 FROM words WHERE course_id=v_course AND lemma='Fehler' AND part_of_speech='noun' AND translation='خطا / اشتباه' ORDER BY id LIMIT 1;
  IF v_w_027 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Fehler','Fehler','noun','خطا / اشتباه',46,'{"type":"noun"}','[{"text":"Morgen","translation":"صبح"},{"text":"Kaffee","translation":"قهوه"},{"text":"Milch","translation":"شیر"},{"text":"Tee","translation":"چای"},{"text":"Wasser","translation":"آب"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_027=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_028 FROM words WHERE course_id=v_course AND lemma='fertig' AND part_of_speech='adjective' AND translation='تمام / آماده' ORDER BY id LIMIT 1;
  IF v_w_028 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: fertig | adjective'; END IF;
  SELECT id INTO v_w_029 FROM words WHERE course_id=v_course AND lemma='festhalten' AND part_of_speech='verb' AND translation='ثبت کردن' ORDER BY id LIMIT 1;
  IF v_w_029 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'festhalten','festhalten','verb','ثبت کردن',46,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"heißen","translation":"نام داشتن"},{"text":"freuen","translation":"خوشحال کردن / خوشحال شدن"},{"text":"kommen","translation":"آمدن"},{"text":"sein","translation":"بودن"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_029=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_030 FROM words WHERE course_id=v_course AND lemma='finden' AND part_of_speech='verb' AND translation='پیدا کردن' ORDER BY id LIMIT 1;
  IF v_w_030 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: finden | verb'; END IF;
  SELECT id INTO v_w_031 FROM words WHERE course_id=v_course AND lemma='Formel' AND part_of_speech='noun' AND translation='فرمول' ORDER BY id LIMIT 1;
  IF v_w_031 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Formel','Formel','noun','فرمول',46,'{"type":"noun"}','[{"text":"Morgen","translation":"صبح"},{"text":"Kaffee","translation":"قهوه"},{"text":"Milch","translation":"شیر"},{"text":"Tee","translation":"چای"},{"text":"Wasser","translation":"آب"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_031=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_032 FROM words WHERE course_id=v_course AND lemma='früh' AND part_of_speech='adverb' AND translation='زودتر' ORDER BY id LIMIT 1;
  IF v_w_032 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'früh','früh','adverb','زودتر',46,'{"type":"adverb"}','[{"text":"wie","translation":"چطور / چگونه"},{"text":"später","translation":"بعدا"},{"text":"woher","translation":"از کجا"},{"text":"sehr","translation":"خیلی / بسیار"},{"text":"so","translation":"این طور / آن طور"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_032=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_033 FROM words WHERE course_id=v_course AND lemma='geben' AND part_of_speech='verb' AND translation='دادن' ORDER BY id LIMIT 1;
  IF v_w_033 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: geben | verb'; END IF;
  SELECT id INTO v_w_034 FROM words WHERE course_id=v_course AND lemma='gut' AND part_of_speech='adverb' AND translation='خوب' ORDER BY id LIMIT 1;
  IF v_w_034 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'gut','gut','adverb','خوب',46,'{"type":"adverb"}','[{"text":"wie","translation":"چطور / چگونه"},{"text":"später","translation":"بعدا"},{"text":"woher","translation":"از کجا"},{"text":"sehr","translation":"خیلی / بسیار"},{"text":"so","translation":"این طور / آن طور"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_034=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_035 FROM words WHERE course_id=v_course AND lemma='haben' AND part_of_speech='verb' AND translation='داشتن' ORDER BY id LIMIT 1;
  IF v_w_035 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: haben | verb'; END IF;
  SELECT id INTO v_w_036 FROM words WHERE course_id=v_course AND lemma='ich' AND part_of_speech='pronoun' AND translation='من' ORDER BY id LIMIT 1;
  IF v_w_036 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ich | pronoun'; END IF;
  SELECT id INTO v_w_037 FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_037 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ja | interjection'; END IF;
  SELECT id INTO v_w_038 FROM words WHERE course_id=v_course AND lemma='jetzt' AND part_of_speech='adverb' AND translation='حالا / اکنون' ORDER BY id LIMIT 1;
  IF v_w_038 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: jetzt | adverb'; END IF;
  SELECT id INTO v_w_039 FROM words WHERE course_id=v_course AND lemma='können' AND part_of_speech='verb' AND translation='توانستن / بتوان' ORDER BY id LIMIT 1;
  IF v_w_039 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: können | verb'; END IF;
  SELECT id INTO v_w_040 FROM words WHERE course_id=v_course AND lemma='kontrollieren' AND part_of_speech='verb' AND translation='کنترل کردن' ORDER BY id LIMIT 1;
  IF v_w_040 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'kontrollieren','kontrollieren','verb','کنترل کردن',46,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"heißen","translation":"نام داشتن"},{"text":"freuen","translation":"خوشحال کردن / خوشحال شدن"},{"text":"kommen","translation":"آمدن"},{"text":"sein","translation":"بودن"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_040=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_041 FROM words WHERE course_id=v_course AND lemma='Kopie' AND part_of_speech='noun' AND translation='نسخه / کپی' ORDER BY id LIMIT 1;
  IF v_w_041 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Kopie','Kopie','noun','نسخه / کپی',46,'{"type":"noun"}','[{"text":"Morgen","translation":"صبح"},{"text":"Kaffee","translation":"قهوه"},{"text":"Milch","translation":"شیر"},{"text":"Tee","translation":"چای"},{"text":"Wasser","translation":"آب"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_041=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_042 FROM words WHERE course_id=v_course AND lemma='korrigieren' AND part_of_speech='verb' AND translation='اصلاح کردن' ORDER BY id LIMIT 1;
  IF v_w_042 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: korrigieren | verb'; END IF;
  SELECT id INTO v_w_043 FROM words WHERE course_id=v_course AND lemma='kurz' AND part_of_speech='adverb' AND translation='کوتاه' ORDER BY id LIMIT 1;
  IF v_w_043 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'kurz','kurz','adverb','کوتاه',46,'{"type":"adverb"}','[{"text":"wie","translation":"چطور / چگونه"},{"text":"später","translation":"بعدا"},{"text":"woher","translation":"از کجا"},{"text":"sehr","translation":"خیلی / بسیار"},{"text":"so","translation":"این طور / آن طور"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_043=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_044 FROM words WHERE course_id=v_course AND lemma='Lea' AND part_of_speech='proper_noun' AND translation='لئا' ORDER BY id LIMIT 1;
  IF v_w_044 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Lea','Lea','proper_noun','لئا',46,'{"type":"proper_noun"}','[{"text":"Lena","translation":"لنا (نام زنانه)"},{"text":"Ben","translation":"بن (نام مردانه)"},{"text":"Anna","translation":"آنا (نام زنانه)"},{"text":"Jonas","translation":"یوناس (نام مردانه)"},{"text":"Mia","translation":"میا (نام زنانه)"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_044=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_045 FROM words WHERE course_id=v_course AND lemma='letzt' AND part_of_speech='adjective' AND translation='آخرین' ORDER BY id LIMIT 1;
  IF v_w_045 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'letzt','letzt','adjective','آخرین',46,'{"type":"adjective"}','[{"text":"gut","translation":"خوب"},{"text":"super","translation":"عالی"},{"text":"alt","translation":"پیر / دارای سن"},{"text":"spät","translation":"دیر"},{"text":"rot","translation":"قرمز"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_045=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_046 FROM words WHERE course_id=v_course AND lemma='lösen' AND part_of_speech='verb' AND translation='حل کردن' ORDER BY id LIMIT 1;
  IF v_w_046 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: lösen | verb'; END IF;
  SELECT id INTO v_w_047 FROM words WHERE course_id=v_course AND lemma='Lösung' AND part_of_speech='noun' AND translation='راه حل' ORDER BY id LIMIT 1;
  IF v_w_047 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Lösung','Lösung','noun','راه حل',46,'{"type":"noun"}','[{"text":"Morgen","translation":"صبح"},{"text":"Kaffee","translation":"قهوه"},{"text":"Milch","translation":"شیر"},{"text":"Tee","translation":"چای"},{"text":"Wasser","translation":"آب"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_047=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_048 FROM words WHERE course_id=v_course AND lemma='Mal' AND part_of_speech='noun' AND translation='بار' ORDER BY id LIMIT 1;
  IF v_w_048 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Mal','Mal','noun','بار',46,'{"type":"noun"}','[{"text":"Morgen","translation":"صبح"},{"text":"Kaffee","translation":"قهوه"},{"text":"Milch","translation":"شیر"},{"text":"Tee","translation":"چای"},{"text":"Wasser","translation":"آب"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_048=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_049 FROM words WHERE course_id=v_course AND lemma='miteinander' AND part_of_speech='adverb' AND translation='با یکدیگر' ORDER BY id LIMIT 1;
  IF v_w_049 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'miteinander','miteinander','adverb','با یکدیگر',46,'{"type":"adverb"}','[{"text":"wie","translation":"چطور / چگونه"},{"text":"später","translation":"بعدا"},{"text":"woher","translation":"از کجا"},{"text":"sehr","translation":"خیلی / بسیار"},{"text":"so","translation":"این طور / آن طور"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_049=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_050 FROM words WHERE course_id=v_course AND lemma='möglich' AND part_of_speech='adjective' AND translation='ممکن' ORDER BY id LIMIT 1;
  IF v_w_050 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'möglich','möglich','adjective','ممکن',46,'{"type":"adjective"}','[{"text":"gut","translation":"خوب"},{"text":"super","translation":"عالی"},{"text":"alt","translation":"پیر / دارای سن"},{"text":"spät","translation":"دیر"},{"text":"rot","translation":"قرمز"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_050=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_051 FROM words WHERE course_id=v_course AND lemma='Nachricht' AND part_of_speech='noun' AND translation='پیام' ORDER BY id LIMIT 1;
  IF v_w_051 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Nachricht | noun'; END IF;
  SELECT id INTO v_w_052 FROM words WHERE course_id=v_course AND lemma='nächst' AND part_of_speech='adjective' AND translation='بعدی' ORDER BY id LIMIT 1;
  IF v_w_052 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'nächst','nächst','adjective','بعدی',46,'{"type":"adjective"}','[{"text":"gut","translation":"خوب"},{"text":"super","translation":"عالی"},{"text":"alt","translation":"پیر / دارای سن"},{"text":"spät","translation":"دیر"},{"text":"rot","translation":"قرمز"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_052=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_053 FROM words WHERE course_id=v_course AND lemma='neu' AND part_of_speech='adjective' AND translation='جدید / تازه' ORDER BY id LIMIT 1;
  IF v_w_053 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: neu | adjective'; END IF;
  SELECT id INTO v_w_054 FROM words WHERE course_id=v_course AND lemma='nicht' AND part_of_speech='adverb' AND translation='نه / نیست' ORDER BY id LIMIT 1;
  IF v_w_054 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'nicht','nicht','adverb','نه / نیست',46,'{"type":"adverb"}','[{"text":"wie","translation":"چطور / چگونه"},{"text":"später","translation":"بعدا"},{"text":"woher","translation":"از کجا"},{"text":"sehr","translation":"خیلی / بسیار"},{"text":"so","translation":"این طور / آن طور"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_054=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_055 FROM words WHERE course_id=v_course AND lemma='noch' AND part_of_speech='adverb' AND translation='هنوز' ORDER BY id LIMIT 1;
  IF v_w_055 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: noch | adverb'; END IF;
  SELECT id INTO v_w_056 FROM words WHERE course_id=v_course AND lemma='nur' AND part_of_speech='adverb' AND translation='فقط' ORDER BY id LIMIT 1;
  IF v_w_056 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'nur','nur','adverb','فقط',46,'{"type":"adverb"}','[{"text":"wie","translation":"چطور / چگونه"},{"text":"später","translation":"بعدا"},{"text":"woher","translation":"از کجا"},{"text":"sehr","translation":"خیلی / بسیار"},{"text":"so","translation":"این طور / آن طور"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_056=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_057 FROM words WHERE course_id=v_course AND lemma='passieren' AND part_of_speech='verb' AND translation='اتفاق افتادن' ORDER BY id LIMIT 1;
  IF v_w_057 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: passieren | verb'; END IF;
  SELECT id INTO v_w_058 FROM words WHERE course_id=v_course AND lemma='Problem' AND part_of_speech='noun' AND translation='مشکل' ORDER BY id LIMIT 1;
  IF v_w_058 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Problem | noun'; END IF;
  SELECT id INTO v_w_059 FROM words WHERE course_id=v_course AND lemma='prüfen' AND part_of_speech='verb' AND translation='بررسی کردن' ORDER BY id LIMIT 1;
  IF v_w_059 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: prüfen | verb'; END IF;
  SELECT id INTO v_w_060 FROM words WHERE course_id=v_course AND lemma='rechtzeitig' AND part_of_speech='adverb' AND translation='به موقع' ORDER BY id LIMIT 1;
  IF v_w_060 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: rechtzeitig | adverb'; END IF;
  SELECT id INTO v_w_061 FROM words WHERE course_id=v_course AND lemma='richtig' AND part_of_speech='adjective' AND translation='درست' ORDER BY id LIMIT 1;
  IF v_w_061 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: richtig | adjective'; END IF;
  SELECT id INTO v_w_062 FROM words WHERE course_id=v_course AND lemma='sagen' AND part_of_speech='verb' AND translation='گفتن' ORDER BY id LIMIT 1;
  IF v_w_062 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sagen | verb'; END IF;
  SELECT id INTO v_w_063 FROM words WHERE course_id=v_course AND lemma='schicken' AND part_of_speech='verb' AND translation='فرستادن' ORDER BY id LIMIT 1;
  IF v_w_063 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: schicken | verb'; END IF;
  SELECT id INTO v_w_064 FROM words WHERE course_id=v_course AND lemma='schnell' AND part_of_speech='adverb' AND translation='سریع تر' ORDER BY id LIMIT 1;
  IF v_w_064 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'schnell','schnell','adverb','سریع تر',46,'{"type":"adverb"}','[{"text":"wie","translation":"چطور / چگونه"},{"text":"später","translation":"بعدا"},{"text":"woher","translation":"از کجا"},{"text":"sehr","translation":"خیلی / بسیار"},{"text":"so","translation":"این طور / آن طور"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_064=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_065 FROM words WHERE course_id=v_course AND lemma='schreiben' AND part_of_speech='verb' AND translation='نوشتن' ORDER BY id LIMIT 1;
  IF v_w_065 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: schreiben | verb'; END IF;
  SELECT id INTO v_w_066 FROM words WHERE course_id=v_course AND lemma='Schritt' AND part_of_speech='noun' AND translation='مرحله / گام' ORDER BY id LIMIT 1;
  IF v_w_066 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Schritt | noun'; END IF;
  SELECT id INTO v_w_067 FROM words WHERE course_id=v_course AND lemma='sein' AND part_of_speech='verb' AND translation='بودن' ORDER BY id LIMIT 1;
  IF v_w_067 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sein | verb'; END IF;
  SELECT id INTO v_w_068 FROM words WHERE course_id=v_course AND lemma='sichern' AND part_of_speech='verb' AND translation='ذخیره / ایمن کردن' ORDER BY id LIMIT 1;
  IF v_w_068 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'sichern','sichern','verb','ذخیره / ایمن کردن',46,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"heißen","translation":"نام داشتن"},{"text":"freuen","translation":"خوشحال کردن / خوشحال شدن"},{"text":"kommen","translation":"آمدن"},{"text":"sein","translation":"بودن"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_068=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_069 FROM words WHERE course_id=v_course AND lemma='sie' AND part_of_speech='pronoun' AND translation='او / آن ها' ORDER BY id LIMIT 1;
  IF v_w_069 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sie | pronoun'; END IF;
  SELECT id INTO v_w_070 FROM words WHERE course_id=v_course AND lemma='sobald' AND part_of_speech='conjunction' AND translation='همین که' ORDER BY id LIMIT 1;
  IF v_w_070 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'sobald','sobald','conjunction','همین که',46,'{"type":"conjunction"}','[{"text":"und","translation":"و"},{"text":"oder","translation":"یا"},{"text":"weil","translation":"چون / زیرا"},{"text":"aber","translation":"اما"},{"text":"wenn","translation":"اگر / وقتی"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_070=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_071 FROM words WHERE course_id=v_course AND lemma='Sobald du die Nachricht geschickt hast, schicke ich sie ab.' AND part_of_speech='phrase' AND translation='همین که پیام رو فرستادی، من فایل رو ارسال می کنم.' ORDER BY id LIMIT 1;
  IF v_w_071 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Sobald du die Nachricht geschickt hast, schicke ich sie ab.','Sobald du die Nachricht geschickt hast, schicke ich sie ab.','phrase','همین که پیام رو فرستادی، من فایل رو ارسال می کنم.',46,'{"type":"phrase"}','[{"text":"Guten Morgen","translation":"صبح بخیر"},{"text":"Wie geht es dir?","translation":"حالت چطوره؟"},{"text":"Bis später","translation":"بعدا می بینمت"},{"text":"Ich heiße ...","translation":"اسم من ... است"},{"text":"Wie heißt du?","translation":"اسمت چیه؟"}]','Sobald du die Nachricht geschickt hast, schicke ich sie ab.','همین که پیام رو فرستادی، من فایل رو ارسال می کنم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_071=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_072 FROM words WHERE course_id=v_course AND lemma='sofort' AND part_of_speech='adverb' AND translation='فورا / همین الان' ORDER BY id LIMIT 1;
  IF v_w_072 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sofort | adverb'; END IF;
  SELECT id INTO v_w_073 FROM words WHERE course_id=v_course AND lemma='sollen' AND part_of_speech='verb' AND translation='باید / قرار است' ORDER BY id LIMIT 1;
  IF v_w_073 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sollen | verb'; END IF;
  SELECT id INTO v_w_074 FROM words WHERE course_id=v_course AND lemma='speichern' AND part_of_speech='verb' AND translation='ذخیره کردن' ORDER BY id LIMIT 1;
  IF v_w_074 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: speichern | verb'; END IF;
  SELECT id INTO v_w_075 FROM words WHERE course_id=v_course AND lemma='stimmen' AND part_of_speech='verb' AND translation='درست بودن' ORDER BY id LIMIT 1;
  IF v_w_075 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'stimmen','stimmen','verb','درست بودن',46,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"heißen","translation":"نام داشتن"},{"text":"freuen","translation":"خوشحال کردن / خوشحال شدن"},{"text":"kommen","translation":"آمدن"},{"text":"sein","translation":"بودن"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_075=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_076 FROM words WHERE course_id=v_course AND lemma='Tabelle' AND part_of_speech='noun' AND translation='جدول' ORDER BY id LIMIT 1;
  IF v_w_076 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Tabelle','Tabelle','noun','جدول',46,'{"type":"noun"}','[{"text":"Morgen","translation":"صبح"},{"text":"Kaffee","translation":"قهوه"},{"text":"Milch","translation":"شیر"},{"text":"Tee","translation":"چای"},{"text":"Wasser","translation":"آب"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_076=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_077 FROM words WHERE course_id=v_course AND lemma='tun' AND part_of_speech='verb' AND translation='انجام دادن' ORDER BY id LIMIT 1;
  IF v_w_077 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'tun','tun','verb','انجام دادن',46,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"heißen","translation":"نام داشتن"},{"text":"freuen","translation":"خوشحال کردن / خوشحال شدن"},{"text":"kommen","translation":"آمدن"},{"text":"sein","translation":"بودن"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_077=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_078 FROM words WHERE course_id=v_course AND lemma='Ursache' AND part_of_speech='noun' AND translation='علت' ORDER BY id LIMIT 1;
  IF v_w_078 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ursache','Ursache','noun','علت',46,'{"type":"noun"}','[{"text":"Morgen","translation":"صبح"},{"text":"Kaffee","translation":"قهوه"},{"text":"Milch","translation":"شیر"},{"text":"Tee","translation":"چای"},{"text":"Wasser","translation":"آب"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_078=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_079 FROM words WHERE course_id=v_course AND lemma='vergleichen' AND part_of_speech='verb' AND translation='مقایسه کردن' ORDER BY id LIMIT 1;
  IF v_w_079 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: vergleichen | verb'; END IF;
  SELECT id INTO v_w_080 FROM words WHERE course_id=v_course AND lemma='Version' AND part_of_speech='noun' AND translation='نسخه' ORDER BY id LIMIT 1;
  IF v_w_080 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Version | noun'; END IF;
  SELECT id INTO v_w_081 FROM words WHERE course_id=v_course AND lemma='verstehen' AND part_of_speech='verb' AND translation='فهمیدن / متوجه شدن' ORDER BY id LIMIT 1;
  IF v_w_081 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: verstehen | verb'; END IF;
  SELECT id INTO v_w_082 FROM words WHERE course_id=v_course AND lemma='vollständig' AND part_of_speech='adjective' AND translation='کامل' ORDER BY id LIMIT 1;
  IF v_w_082 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'vollständig','vollständig','adjective','کامل',46,'{"type":"adjective"}','[{"text":"gut","translation":"خوب"},{"text":"super","translation":"عالی"},{"text":"alt","translation":"پیر / دارای سن"},{"text":"spät","translation":"دیر"},{"text":"rot","translation":"قرمز"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_082=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_083 FROM words WHERE course_id=v_course AND lemma='wann' AND part_of_speech='adverb' AND translation='کی / چه زمانی' ORDER BY id LIMIT 1;
  IF v_w_083 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wann | adverb'; END IF;
  SELECT id INTO v_w_084 FROM words WHERE course_id=v_course AND lemma='was' AND part_of_speech='pronoun' AND translation='چی / چه' ORDER BY id LIMIT 1;
  IF v_w_084 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: was | pronoun'; END IF;
  SELECT id INTO v_w_085 FROM words WHERE course_id=v_course AND lemma='weil' AND part_of_speech='conjunction' AND translation='چون / زیرا' ORDER BY id LIMIT 1;
  IF v_w_085 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: weil | conjunction'; END IF;
  SELECT id INTO v_w_086 FROM words WHERE course_id=v_course AND lemma='wenn' AND part_of_speech='conjunction' AND translation='اگر / وقتی' ORDER BY id LIMIT 1;
  IF v_w_086 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wenn | conjunction'; END IF;
  SELECT id INTO v_w_087 FROM words WHERE course_id=v_course AND lemma='Wenn wir das dokumentieren, passiert der Fehler nicht wieder.' AND part_of_speech='phrase' AND translation='اگه این رو مستند کنیم، خطا دوباره پیش نمیاد.' ORDER BY id LIMIT 1;
  IF v_w_087 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Wenn wir das dokumentieren, passiert der Fehler nicht wieder.','Wenn wir das dokumentieren, passiert der Fehler nicht wieder.','phrase','اگه این رو مستند کنیم، خطا دوباره پیش نمیاد.',46,'{"type":"phrase"}','[{"text":"Guten Morgen","translation":"صبح بخیر"},{"text":"Wie geht es dir?","translation":"حالت چطوره؟"},{"text":"Bis später","translation":"بعدا می بینمت"},{"text":"Ich heiße ...","translation":"اسم من ... است"},{"text":"Wie heißt du?","translation":"اسمت چیه؟"}]','Wenn wir das dokumentieren, passiert der Fehler nicht wieder.','اگه این رو مستند کنیم، خطا دوباره پیش نمیاد.',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_087=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_088 FROM words WHERE course_id=v_course AND lemma='werden' AND part_of_speech='verb' AND translation='شدن / خواهد' ORDER BY id LIMIT 1;
  IF v_w_088 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: werden | verb'; END IF;
  SELECT id INTO v_w_089 FROM words WHERE course_id=v_course AND lemma='wie' AND part_of_speech='adverb' AND translation='چطور / چگونه' ORDER BY id LIMIT 1;
  IF v_w_089 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wie | adverb'; END IF;
  SELECT id INTO v_w_090 FROM words WHERE course_id=v_course AND lemma='wieder' AND part_of_speech='adverb' AND translation='دوباره' ORDER BY id LIMIT 1;
  IF v_w_090 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wieder | adverb'; END IF;
  SELECT id INTO v_w_091 FROM words WHERE course_id=v_course AND lemma='wir' AND part_of_speech='pronoun' AND translation='ما' ORDER BY id LIMIT 1;
  IF v_w_091 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wir | pronoun'; END IF;
  SELECT id INTO v_w_092 FROM words WHERE course_id=v_course AND lemma='Wir haben das Problem gelöst.' AND part_of_speech='phrase' AND translation='مشکل رو حل کردیم.' ORDER BY id LIMIT 1;
  IF v_w_092 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Wir haben das Problem gelöst.','Wir haben das Problem gelöst.','phrase','مشکل رو حل کردیم.',46,'{"type":"phrase"}','[{"text":"Guten Morgen","translation":"صبح بخیر"},{"text":"Wie geht es dir?","translation":"حالت چطوره؟"},{"text":"Bis später","translation":"بعدا می بینمت"},{"text":"Ich heiße ...","translation":"اسم من ... است"},{"text":"Wie heißt du?","translation":"اسمت چیه؟"}]','Wir haben das Problem gelöst.','مشکل رو حل کردیم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_092=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_093 FROM words WHERE course_id=v_course AND lemma='wollen' AND part_of_speech='verb' AND translation='خواستن' ORDER BY id LIMIT 1;
  IF v_w_093 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'wollen','wollen','verb','خواستن',46,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"heißen","translation":"نام داشتن"},{"text":"freuen","translation":"خوشحال کردن / خوشحال شدن"},{"text":"kommen","translation":"آمدن"},{"text":"sein","translation":"بودن"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_093=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_094 FROM words WHERE course_id=v_course AND lemma='Zahl' AND part_of_speech='noun' AND translation='عدد / رقم' ORDER BY id LIMIT 1;
  IF v_w_094 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Zahl | noun'; END IF;
  SELECT id INTO v_w_095 FROM words WHERE course_id=v_course AND lemma='zusammenarbeiten' AND part_of_speech='verb' AND translation='همکاری کردن' ORDER BY id LIMIT 1;
  IF v_w_095 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'zusammenarbeiten','zusammenarbeiten','verb','همکاری کردن',46,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"heißen","translation":"نام داشتن"},{"text":"freuen","translation":"خوشحال کردن / خوشحال شدن"},{"text":"kommen","translation":"آمدن"},{"text":"sein","translation":"بودن"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_095=LAST_INSERT_ID();
  END IF;
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_martin,v_c_anna,'Ergebnis prüfen','بررسی نتیجه','Martin und Anna prüfen die fertige Arbeitsdatei vor dem Versand.','مارتین و آنا فایل کاری نهایی را پیش از ارسال بررسی می کنند.','story','anna-martin-b1-project',17,46,150,1,'validated','{"relationship":"coworkers","context":"solve-and-document-work-problem","cefr":"B1","storyArc":"verify-explain-report-close"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_martin,1,'character','Ist die neue Version jetzt vollständig?','نسخه جدید حالا کامله؟',46,NULL,NULL,NULL,NULL,'[{"form":"present_3sg","lemma":"sein","partOfSpeech":"verb","surface":"Ist","translation":"بودن"},{"form":"feminine_or_plural","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"form":"inflected","lemma":"neu","partOfSpeech":"adjective","surface":"neue","translation":"جدید / تازه"},{"lemma":"Version","partOfSpeech":"noun","surface":"Version","translation":"نسخه"},{"lemma":"jetzt","partOfSpeech":"adverb","surface":"jetzt","translation":"حالا / اکنون"},{"lemma":"vollständig","partOfSpeech":"adjective","suffix":"?","surface":"vollständig","translation":"کامل"}]',NULL,NULL,NULL,'{"cefr":"B1","course":"de-fa","series":90}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,2,'learner','Ja, ich habe alle Zahlen noch einmal geprüft.','آره، همه عددها رو یک بار دیگه بررسی کردم.',46,NULL,NULL,'ja ich habe alle zahlen noch einmal geprüft',NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":",","surface":"Ja","translation":"بله / آره"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"form":"present_1sg","lemma":"haben","partOfSpeech":"verb","surface":"habe","translation":"داشتن"},{"form":"plural","lemma":"all","partOfSpeech":"determiner","surface":"alle","translation":"همه"},{"form":"plural","lemma":"Zahl","partOfSpeech":"noun","surface":"Zahlen","translation":"عدد / رقم"},{"lemma":"noch","partOfSpeech":"adverb","surface":"noch","translation":"هنوز"},{"lemma":"einmal","partOfSpeech":"adverb","surface":"einmal","translation":"یک بار"},{"form":"participle_II","lemma":"prüfen","partOfSpeech":"verb","suffix":".","surface":"geprüft","translation":"بررسی کردن"}]',NULL,NULL,NULL,'{"cefr":"B1","course":"de-fa","series":90}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_martin,3,'character','Hast du auch die letzte Tabelle kontrolliert?','جدول آخر رو هم کنترل کردی؟',46,NULL,NULL,NULL,NULL,'[{"form":"present_2sg","lemma":"haben","partOfSpeech":"verb","surface":"Hast","translation":"داشتن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"lemma":"auch","partOfSpeech":"adverb","surface":"auch","translation":"هم / همچنین"},{"form":"feminine_or_plural","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"form":"inflected","lemma":"letzt","partOfSpeech":"adjective","surface":"letzte","translation":"آخرین"},{"lemma":"Tabelle","partOfSpeech":"noun","surface":"Tabelle","translation":"جدول"},{"form":"participle_II","lemma":"kontrollieren","partOfSpeech":"verb","suffix":"?","surface":"kontrolliert","translation":"کنترل کردن"}]',NULL,NULL,NULL,'{"cefr":"B1","course":"de-fa","series":90}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,4,'learner','Ja, sie ist richtig gespeichert.','آره، درست ذخیره شده.',46,NULL,NULL,'ja sie ist richtig gespeichert',NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":",","surface":"Ja","translation":"بله / آره"},{"lemma":"sie","partOfSpeech":"pronoun","surface":"sie","translation":"او / آن ها"},{"form":"present_3sg","lemma":"sein","partOfSpeech":"verb","surface":"ist","translation":"بودن"},{"lemma":"richtig","partOfSpeech":"adjective","surface":"richtig","translation":"درست"},{"form":"participle_II","lemma":"speichern","partOfSpeech":"verb","suffix":".","surface":"gespeichert","translation":"ذخیره کردن"}]',NULL,NULL,NULL,'{"cefr":"B1","course":"de-fa","series":90}');
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_martin,5,'character','Dann können wir die Datei abschicken.','پس می تونیم فایل رو ارسال کنیم.',46,NULL,NULL,NULL,NULL,'[{"lemma":"dann","partOfSpeech":"adverb","surface":"Dann","translation":"بعد / سپس"},{"form":"infinitive","lemma":"können","partOfSpeech":"verb","surface":"können","translation":"توانستن / بتوان"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"form":"feminine_or_plural","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"lemma":"Datei","partOfSpeech":"noun","surface":"Datei","translation":"فایل"},{"form":"infinitive","lemma":"abschicken","partOfSpeech":"verb","suffix":".","surface":"abschicken","translation":"ارسال کردن"}]',NULL,NULL,NULL,'{"cefr":"B1","course":"de-fa","series":90}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,6,'learner','Bevor wir das tun, sichere ich noch eine Kopie.','پیش از اینکه این کار رو بکنیم، یک نسخه دیگه ذخیره می کنم.',46,NULL,NULL,'bevor wir das tun sichere ich noch eine kopie',NULL,'[{"lemma":"bevor","partOfSpeech":"conjunction","surface":"Bevor","translation":"پیش از اینکه"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"form":"neuter","lemma":"der","partOfSpeech":"article","surface":"das","translation":"حرف تعریف"},{"form":"infinitive","lemma":"tun","partOfSpeech":"verb","suffix":",","surface":"tun","translation":"انجام دادن"},{"form":"present_1sg","lemma":"sichern","partOfSpeech":"verb","surface":"sichere","translation":"ذخیره / ایمن کردن"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"lemma":"noch","partOfSpeech":"adverb","surface":"noch","translation":"هنوز"},{"form":"feminine","lemma":"ein","partOfSpeech":"article","surface":"eine","translation":"یک / حرف تعریف نامعین"},{"lemma":"Kopie","partOfSpeech":"noun","suffix":".","surface":"Kopie","translation":"نسخه / کپی"}]',NULL,NULL,NULL,'{"cefr":"B1","course":"de-fa","series":90}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_067,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_016,'review',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_053,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_080,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_038,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_082,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_037,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_036,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_035,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_005,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_094,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_055,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_022,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_059,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_019,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_007,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_045,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_076,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_040,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_069,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_061,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_074,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_013,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_039,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_091,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_015,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_003,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_010,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_077,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_068,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_021,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_041,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_011,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_011,'عبارت کلیدی درس',NULL,46,NULL,'{"cefr":"B1","series":90}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',2,NULL,v_w_082,'واژه کلیدی درس',NULL,46,NULL,'{"cefr":"B1","series":90}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',3,v_t_1,NULL,'به جمله مارتین گوش کن',NULL,46,NULL,'{"cefr":"B1","series":90}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',4,v_t_2,NULL,'پاسخ آنا را با صدای بلند بگو',NULL,46,NULL,'{"cefr":"B1","series":90}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',5,v_t_3,NULL,'به جمله بعدی گوش کن',NULL,46,NULL,'{"cefr":"B1","series":90}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',6,v_t_4,NULL,'پاسخ را با صدای بلند بگو',NULL,46,NULL,'{"cefr":"B1","series":90}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',7,NULL,v_w_082,'معنی واژه کلیدی را انتخاب کن',NULL,46,'{"mode":"word_translation","question":"vollständig در این درس چه معنی دارد؟","choices":["کامل","خوب","عالی"],"correctIndex":0}','{"cefr":"B1","series":90}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,46,'{"source":"lesson_story","question":"آنا پیش از ارسال فایل چه کاری انجام می دهد؟","choices":["یک نسخه دیگر ذخیره می کند","فایل را پاک می کند","جدول را چاپ می کند"],"correctIndex":0}','{"cefr":"B1","series":90}');
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_martin,v_c_anna,'Die Ursache erklären','توضیح علت','Anna erklärt, wie sie den Fehler gefunden und behoben hat.','آنا توضیح می دهد که چطور خطا را پیدا و برطرف کرده است.','story','anna-martin-b1-project',18,46,150,2,'validated','{"relationship":"coworkers","context":"solve-and-document-work-problem","cefr":"B1","storyArc":"verify-explain-report-close"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_martin,1,'character','Was war eigentlich die Ursache?','علت اصلی چی بود؟',46,NULL,NULL,NULL,NULL,'[{"lemma":"was","partOfSpeech":"pronoun","surface":"Was","translation":"چی / چه"},{"form":"preterite_3sg","lemma":"sein","partOfSpeech":"verb","surface":"war","translation":"بودن"},{"lemma":"eigentlich","partOfSpeech":"adverb","surface":"eigentlich","translation":"در واقع"},{"form":"feminine_or_plural","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"lemma":"Ursache","partOfSpeech":"noun","suffix":"?","surface":"Ursache","translation":"علت"}]',NULL,NULL,NULL,'{"cefr":"B1","course":"de-fa","series":90}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,2,'learner','Eine Formel war falsch, deshalb stimmte das Ergebnis nicht.','یک فرمول اشتباه بود، برای همین نتیجه درست درنمی اومد.',46,NULL,NULL,'eine formel war falsch deshalb stimmte das ergebnis nicht',NULL,'[{"form":"feminine","lemma":"ein","partOfSpeech":"article","surface":"Eine","translation":"یک / حرف تعریف نامعین"},{"lemma":"Formel","partOfSpeech":"noun","surface":"Formel","translation":"فرمول"},{"form":"preterite_3sg","lemma":"sein","partOfSpeech":"verb","surface":"war","translation":"بودن"},{"lemma":"falsch","partOfSpeech":"adjective","suffix":",","surface":"falsch","translation":"اشتباه / نادرست"},{"lemma":"deshalb","partOfSpeech":"adverb","surface":"deshalb","translation":"برای همین / بنابراین"},{"form":"preterite_3sg","lemma":"stimmen","partOfSpeech":"verb","surface":"stimmte","translation":"درست بودن"},{"form":"neuter","lemma":"der","partOfSpeech":"article","surface":"das","translation":"حرف تعریف"},{"lemma":"Ergebnis","partOfSpeech":"noun","surface":"Ergebnis","translation":"نتیجه"},{"lemma":"nicht","partOfSpeech":"adverb","suffix":".","surface":"nicht","translation":"نه / نیست"}]',NULL,NULL,NULL,'{"cefr":"B1","course":"de-fa","series":90}');
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_martin,3,'character','Wie hast du den Fehler gefunden?','چطور خطا رو پیدا کردی؟',46,NULL,NULL,NULL,NULL,'[{"lemma":"wie","partOfSpeech":"adverb","surface":"Wie","translation":"چطور / چگونه"},{"form":"present_2sg","lemma":"haben","partOfSpeech":"verb","surface":"hast","translation":"داشتن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"form":"accusative_masculine","lemma":"der","partOfSpeech":"article","surface":"den","translation":"حرف تعریف"},{"lemma":"Fehler","partOfSpeech":"noun","surface":"Fehler","translation":"خطا / اشتباه"},{"form":"participle_II","lemma":"finden","partOfSpeech":"verb","suffix":"?","surface":"gefunden","translation":"پیدا کردن"}]',NULL,NULL,NULL,'{"cefr":"B1","course":"de-fa","series":90}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,4,'learner','Ich habe die einzelnen Schritte miteinander verglichen.','مرحله های جداگانه رو با هم مقایسه کردم.',46,NULL,NULL,'ich habe die einzelnen schritte miteinander verglichen',NULL,'[{"lemma":"ich","partOfSpeech":"pronoun","surface":"Ich","translation":"من"},{"form":"present_1sg","lemma":"haben","partOfSpeech":"verb","surface":"habe","translation":"داشتن"},{"form":"feminine_or_plural","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"form":"inflected","lemma":"einzeln","partOfSpeech":"adjective","surface":"einzelnen","translation":"جداگانه"},{"form":"plural","lemma":"Schritt","partOfSpeech":"noun","surface":"Schritte","translation":"مرحله / گام"},{"lemma":"miteinander","partOfSpeech":"adverb","surface":"miteinander","translation":"با یکدیگر"},{"form":"participle_II","lemma":"vergleichen","partOfSpeech":"verb","suffix":".","surface":"verglichen","translation":"مقایسه کردن"}]',NULL,NULL,NULL,'{"cefr":"B1","course":"de-fa","series":90}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_martin,5,'character','Jetzt verstehe ich die Lösung.','حالا راه حل رو می فهمم.',46,NULL,NULL,NULL,NULL,'[{"lemma":"jetzt","partOfSpeech":"adverb","surface":"Jetzt","translation":"حالا / اکنون"},{"form":"present_1sg","lemma":"verstehen","partOfSpeech":"verb","surface":"verstehe","translation":"فهمیدن / متوجه شدن"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"form":"feminine_or_plural","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"lemma":"Lösung","partOfSpeech":"noun","suffix":".","surface":"Lösung","translation":"راه حل"}]',NULL,NULL,NULL,'{"cefr":"B1","course":"de-fa","series":90}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,6,'learner','Wenn wir das dokumentieren, passiert der Fehler nicht wieder.','اگه این رو مستند کنیم، خطا دوباره پیش نمیاد.',46,NULL,NULL,'wenn wir das dokumentieren passiert der fehler nicht wieder',NULL,'[{"lemma":"wenn","partOfSpeech":"conjunction","surface":"Wenn","translation":"اگر / وقتی"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"form":"neuter","lemma":"der","partOfSpeech":"article","surface":"das","translation":"حرف تعریف"},{"form":"infinitive","lemma":"dokumentieren","partOfSpeech":"verb","suffix":",","surface":"dokumentieren","translation":"مستند کردن"},{"form":"present_3sg","lemma":"passieren","partOfSpeech":"verb","surface":"passiert","translation":"اتفاق افتادن"},{"form":"nominative_masculine","lemma":"der","partOfSpeech":"article","surface":"der","translation":"حرف تعریف"},{"lemma":"Fehler","partOfSpeech":"noun","surface":"Fehler","translation":"خطا / اشتباه"},{"lemma":"nicht","partOfSpeech":"adverb","surface":"nicht","translation":"نه / نیست"},{"lemma":"wieder","partOfSpeech":"adverb","suffix":".","surface":"wieder","translation":"دوباره"}]',NULL,NULL,NULL,'{"cefr":"B1","course":"de-fa","series":90}');
  SET v_t_12=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_084,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_067,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_020,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_016,'review',0,7);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_078,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_021,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_031,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_026,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_017,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_075,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_024,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_054,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_089,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_035,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_019,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_027,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_030,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_036,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_023,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_066,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_049,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_079,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_038,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_081,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_047,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_086,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_091,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_018,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_057,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_090,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_087,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_087,'عبارت کلیدی درس',NULL,46,NULL,'{"cefr":"B1","series":90}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',2,NULL,v_w_020,'واژه کلیدی درس',NULL,46,NULL,'{"cefr":"B1","series":90}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',3,v_t_7,NULL,'به جمله مارتین گوش کن',NULL,46,NULL,'{"cefr":"B1","series":90}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',4,v_t_8,NULL,'پاسخ آنا را با صدای بلند بگو',NULL,46,NULL,'{"cefr":"B1","series":90}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',5,v_t_9,NULL,'به جمله بعدی گوش کن',NULL,46,NULL,'{"cefr":"B1","series":90}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',6,v_t_10,NULL,'پاسخ را با صدای بلند بگو',NULL,46,NULL,'{"cefr":"B1","series":90}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',7,NULL,v_w_020,'معنی واژه کلیدی را انتخاب کن',NULL,46,'{"mode":"word_translation","question":"eigentlich در این درس چه معنی دارد؟","choices":["در واقع","چطور / چگونه","بعدا"],"correctIndex":0}','{"cefr":"B1","series":90}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,46,'{"source":"lesson_story","question":"چرا آنا پیشنهاد می کند راه حل را مستند کنند؟","choices":["تا خطا دوباره تکرار نشود","تا کار را متوقف کنند","تا نتیجه را پنهان کنند"],"correctIndex":0}','{"cefr":"B1","series":90}');
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_martin,v_c_anna,'Das Ergebnis weitergeben','اطلاع دادن نتیجه','Anna und Martin informieren das Team über die korrigierte Version.','آنا و مارتین گروه را از نسخه اصلاح شده باخبر می کنند.','story','anna-martin-b1-project',19,46,150,3,'validated','{"relationship":"coworkers","context":"solve-and-document-work-problem","cefr":"B1","storyArc":"verify-explain-report-close"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_martin,1,'character','Soll ich Lea sofort Bescheid geben?','فورا به لئا خبر بدم؟',46,NULL,NULL,NULL,NULL,'[{"form":"present_1sg","lemma":"sollen","partOfSpeech":"verb","surface":"Soll","translation":"باید / قرار است"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"lemma":"Lea","partOfSpeech":"proper_noun","surface":"Lea","translation":"لئا"},{"lemma":"sofort","partOfSpeech":"adverb","surface":"sofort","translation":"فورا / همین الان"},{"lemma":"Bescheid","partOfSpeech":"noun","surface":"Bescheid","translation":"خبر / اطلاع"},{"form":"infinitive","lemma":"geben","partOfSpeech":"verb","suffix":"?","surface":"geben","translation":"دادن"}]',NULL,NULL,NULL,'{"cefr":"B1","course":"de-fa","series":90}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,2,'learner','Ja, sag ihr bitte, dass die neue Version fertig ist.','آره، لطفا بهش بگو نسخه جدید آماده است.',46,NULL,NULL,'ja sag ihr bitte dass die neue version fertig ist',NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":",","surface":"Ja","translation":"بله / آره"},{"form":"imperative_2sg","lemma":"sagen","partOfSpeech":"verb","surface":"sag","translation":"گفتن"},{"form":"dative_feminine","lemma":"sie","partOfSpeech":"pronoun","surface":"ihr","translation":"او / آن ها"},{"lemma":"bitte","partOfSpeech":"particle","suffix":",","surface":"bitte","translation":"لطفا"},{"lemma":"dass","partOfSpeech":"conjunction","surface":"dass","translation":"که"},{"form":"feminine_or_plural","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"form":"inflected","lemma":"neu","partOfSpeech":"adjective","surface":"neue","translation":"جدید / تازه"},{"lemma":"Version","partOfSpeech":"noun","surface":"Version","translation":"نسخه"},{"lemma":"fertig","partOfSpeech":"adjective","surface":"fertig","translation":"تمام / آماده"},{"form":"present_3sg","lemma":"sein","partOfSpeech":"verb","suffix":".","surface":"ist","translation":"بودن"}]',NULL,NULL,NULL,'{"cefr":"B1","course":"de-fa","series":90}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_martin,3,'character','Soll ich auch erklären, was wir geändert haben?','توضیح بدم چه چیزی رو تغییر دادیم؟',46,NULL,NULL,NULL,NULL,'[{"form":"present_1sg","lemma":"sollen","partOfSpeech":"verb","surface":"Soll","translation":"باید / قرار است"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"lemma":"auch","partOfSpeech":"adverb","surface":"auch","translation":"هم / همچنین"},{"form":"infinitive","lemma":"erklären","partOfSpeech":"verb","suffix":",","surface":"erklären","translation":"توضیح دادن"},{"lemma":"was","partOfSpeech":"pronoun","surface":"was","translation":"چی / چه"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"form":"participle_II","lemma":"ändern","partOfSpeech":"verb","surface":"geändert","translation":"تغییر دادن"},{"form":"present_1pl","lemma":"haben","partOfSpeech":"verb","suffix":"?","surface":"haben","translation":"داشتن"}]',NULL,NULL,NULL,'{"cefr":"B1","course":"de-fa","series":90}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,4,'learner','Schreib kurz, dass wir die Zahlen korrigiert haben.','کوتاه بنویس که عددها رو اصلاح کردیم.',46,NULL,NULL,'schreib kurz dass wir die zahlen korrigiert haben',NULL,'[{"form":"imperative_2sg","lemma":"schreiben","partOfSpeech":"verb","surface":"Schreib","translation":"نوشتن"},{"lemma":"kurz","partOfSpeech":"adverb","suffix":",","surface":"kurz","translation":"کوتاه"},{"lemma":"dass","partOfSpeech":"conjunction","surface":"dass","translation":"که"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"form":"feminine_or_plural","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"form":"plural","lemma":"Zahl","partOfSpeech":"noun","surface":"Zahlen","translation":"عدد / رقم"},{"form":"participle_II","lemma":"korrigieren","partOfSpeech":"verb","surface":"korrigiert","translation":"اصلاح کردن"},{"form":"present_1pl","lemma":"haben","partOfSpeech":"verb","suffix":".","surface":"haben","translation":"داشتن"}]',NULL,NULL,NULL,'{"cefr":"B1","course":"de-fa","series":90}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_martin,5,'character','Wann schicken wir die Datei ab?','کی فایل رو می فرستیم؟',46,NULL,NULL,NULL,NULL,'[{"lemma":"wann","partOfSpeech":"adverb","surface":"Wann","translation":"کی / چه زمانی"},{"form":"infinitive","lemma":"schicken","partOfSpeech":"verb","surface":"schicken","translation":"فرستادن"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"form":"feminine_or_plural","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"lemma":"Datei","partOfSpeech":"noun","surface":"Datei","translation":"فایل"},{"lemma":"ab","partOfSpeech":"particle","suffix":"?","surface":"ab","translation":"جدا / ارسال"}]',NULL,NULL,NULL,'{"cefr":"B1","course":"de-fa","series":90}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,6,'learner','Sobald du die Nachricht geschickt hast, schicke ich sie ab.','همین که پیام رو فرستادی، من فایل رو ارسال می کنم.',46,NULL,NULL,'sobald du die nachricht geschickt hast schicke ich sie ab',NULL,'[{"lemma":"sobald","partOfSpeech":"conjunction","surface":"Sobald","translation":"همین که"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"form":"feminine_or_plural","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"lemma":"Nachricht","partOfSpeech":"noun","surface":"Nachricht","translation":"پیام"},{"form":"participle_II","lemma":"schicken","partOfSpeech":"verb","surface":"geschickt","translation":"فرستادن"},{"form":"present_2sg","lemma":"haben","partOfSpeech":"verb","suffix":",","surface":"hast","translation":"داشتن"},{"form":"present_1sg","lemma":"schicken","partOfSpeech":"verb","surface":"schicke","translation":"فرستادن"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"lemma":"sie","partOfSpeech":"pronoun","surface":"sie","translation":"او / آن ها"},{"lemma":"ab","partOfSpeech":"particle","suffix":".","surface":"ab","translation":"جدا / ارسال"}]',NULL,NULL,NULL,'{"cefr":"B1","course":"de-fa","series":90}');
  SET v_t_18=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_073,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_036,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_044,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_072,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_009,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_033,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_037,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_062,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_069,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_012,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_014,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_016,'review',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_053,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_080,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_028,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_067,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_007,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_025,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_084,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_091,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_006,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_035,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_065,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_043,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_094,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_042,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_083,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_063,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_015,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_001,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_070,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_019,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_051,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_071,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_071,'عبارت کلیدی درس',NULL,46,NULL,'{"cefr":"B1","series":90}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',2,NULL,v_w_044,'واژه کلیدی درس',NULL,46,NULL,'{"cefr":"B1","series":90}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',3,v_t_13,NULL,'به جمله مارتین گوش کن',NULL,46,NULL,'{"cefr":"B1","series":90}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',4,v_t_14,NULL,'پاسخ آنا را با صدای بلند بگو',NULL,46,NULL,'{"cefr":"B1","series":90}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',5,v_t_15,NULL,'به جمله بعدی گوش کن',NULL,46,NULL,'{"cefr":"B1","series":90}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',6,v_t_16,NULL,'پاسخ را با صدای بلند بگو',NULL,46,NULL,'{"cefr":"B1","series":90}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',7,NULL,v_w_044,'معنی واژه کلیدی را انتخاب کن',NULL,46,'{"mode":"word_translation","question":"Lea در این درس چه معنی دارد؟","choices":["لئا","لنا (نام زنانه)","بن (نام مردانه)"],"correctIndex":0}','{"cefr":"B1","series":90}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,46,'{"source":"lesson_story","question":"بعد از ارسال پیام، آنا چه کاری می کند؟","choices":["فایل را ارسال می کند","جلسه را لغو می کند","فرمول را حذف می کند"],"correctIndex":0}','{"cefr":"B1","series":90}');
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_martin,v_c_anna,'Gemeinsam abschließen','پایان دادن به کار با همکاری','Die beiden halten ihre Lösung fest und schließen die Aufgabe ab.','آن دو راه حلشان را ثبت می کنند و کار را به پایان می رسانند.','story','anna-martin-b1-project',20,46,150,4,'validated','{"relationship":"coworkers","context":"solve-and-document-work-problem","cefr":"B1","storyArc":"verify-explain-report-close"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_martin,1,'character','Wir sind rechtzeitig fertig geworden.','به موقع آماده شدیم.',46,NULL,NULL,NULL,NULL,'[{"lemma":"wir","partOfSpeech":"pronoun","surface":"Wir","translation":"ما"},{"form":"present_1pl","lemma":"sein","partOfSpeech":"verb","surface":"sind","translation":"بودن"},{"lemma":"rechtzeitig","partOfSpeech":"adverb","surface":"rechtzeitig","translation":"به موقع"},{"lemma":"fertig","partOfSpeech":"adjective","surface":"fertig","translation":"تمام / آماده"},{"form":"participle_II","lemma":"werden","partOfSpeech":"verb","suffix":".","surface":"geworden","translation":"شدن / خواهد"}]',NULL,NULL,NULL,'{"cefr":"B1","course":"de-fa","series":90}');
  SET v_t_19=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,2,'learner','Wir haben das Problem gelöst.','مشکل رو حل کردیم.',46,NULL,NULL,'wir haben das problem gelöst',NULL,'[{"lemma":"wir","partOfSpeech":"pronoun","surface":"Wir","translation":"ما"},{"form":"present_1pl","lemma":"haben","partOfSpeech":"verb","surface":"haben","translation":"داشتن"},{"form":"neuter","lemma":"der","partOfSpeech":"article","surface":"das","translation":"حرف تعریف"},{"lemma":"Problem","partOfSpeech":"noun","surface":"Problem","translation":"مشکل"},{"form":"participle_II","lemma":"lösen","partOfSpeech":"verb","suffix":".","surface":"gelöst","translation":"حل کردن"}]',NULL,NULL,NULL,'{"cefr":"B1","course":"de-fa","series":90}');
  SET v_t_20=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_martin,3,'character','Das war nur möglich, weil wir gut zusammengearbeitet haben.','این فقط به این دلیل ممکن شد که خوب با هم همکاری کردیم.',46,NULL,NULL,NULL,NULL,'[{"form":"neuter","lemma":"der","partOfSpeech":"article","surface":"Das","translation":"حرف تعریف"},{"form":"preterite_3sg","lemma":"sein","partOfSpeech":"verb","surface":"war","translation":"بودن"},{"lemma":"nur","partOfSpeech":"adverb","surface":"nur","translation":"فقط"},{"lemma":"möglich","partOfSpeech":"adjective","suffix":",","surface":"möglich","translation":"ممکن"},{"lemma":"weil","partOfSpeech":"conjunction","surface":"weil","translation":"چون / زیرا"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"lemma":"gut","partOfSpeech":"adverb","surface":"gut","translation":"خوب"},{"form":"participle_II","lemma":"zusammenarbeiten","partOfSpeech":"verb","surface":"zusammengearbeitet","translation":"همکاری کردن"},{"form":"present_1pl","lemma":"haben","partOfSpeech":"verb","suffix":".","surface":"haben","translation":"داشتن"}]',NULL,NULL,NULL,'{"cefr":"B1","course":"de-fa","series":90}');
  SET v_t_21=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,4,'learner','Beim nächsten Mal prüfen wir die Formeln früher.','دفعه بعد فرمول ها رو زودتر بررسی می کنیم.',46,NULL,NULL,'beim nächsten mal prüfen wir die formeln früher',NULL,'[{"form":"bei_dem","lemma":"bei","partOfSpeech":"preposition","surface":"Beim","translation":"هنگام / موقع"},{"form":"dative","lemma":"nächst","partOfSpeech":"adjective","surface":"nächsten","translation":"بعدی"},{"lemma":"Mal","partOfSpeech":"noun","surface":"Mal","translation":"بار"},{"form":"infinitive","lemma":"prüfen","partOfSpeech":"verb","surface":"prüfen","translation":"بررسی کردن"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"form":"feminine_or_plural","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"form":"plural","lemma":"Formel","partOfSpeech":"noun","surface":"Formeln","translation":"فرمول"},{"form":"comparative","lemma":"früh","partOfSpeech":"adverb","suffix":".","surface":"früher","translation":"زودتر"}]',NULL,NULL,NULL,'{"cefr":"B1","course":"de-fa","series":90}');
  SET v_t_22=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_martin,5,'character','Wollen wir den Ablauf kurz festhalten?','روند کار رو کوتاه ثبت کنیم؟',46,NULL,NULL,NULL,NULL,'[{"form":"present_1pl","lemma":"wollen","partOfSpeech":"verb","surface":"Wollen","translation":"خواستن"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"form":"accusative_masculine","lemma":"der","partOfSpeech":"article","surface":"den","translation":"حرف تعریف"},{"lemma":"Ablauf","partOfSpeech":"noun","surface":"Ablauf","translation":"روند کار"},{"lemma":"kurz","partOfSpeech":"adverb","surface":"kurz","translation":"کوتاه"},{"form":"infinitive","lemma":"festhalten","partOfSpeech":"verb","suffix":"?","surface":"festhalten","translation":"ثبت کردن"}]',NULL,NULL,NULL,'{"cefr":"B1","course":"de-fa","series":90}');
  SET v_t_23=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,6,'learner','Ja, dann können wir ähnliche Probleme schneller lösen.','آره، اون وقت می تونیم مشکل های مشابه رو سریع تر حل کنیم.',46,NULL,NULL,'ja dann können wir ähnliche probleme schneller lösen',NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":",","surface":"Ja","translation":"بله / آره"},{"lemma":"dann","partOfSpeech":"adverb","surface":"dann","translation":"بعد / سپس"},{"form":"infinitive","lemma":"können","partOfSpeech":"verb","surface":"können","translation":"توانستن / بتوان"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"form":"inflected","lemma":"ähnlich","partOfSpeech":"adjective","surface":"ähnliche","translation":"مشابه"},{"form":"plural","lemma":"Problem","partOfSpeech":"noun","surface":"Probleme","translation":"مشکل"},{"form":"comparative","lemma":"schnell","partOfSpeech":"adverb","surface":"schneller","translation":"سریع تر"},{"form":"infinitive","lemma":"lösen","partOfSpeech":"verb","suffix":".","surface":"lösen","translation":"حل کردن"}]',NULL,NULL,NULL,'{"cefr":"B1","course":"de-fa","series":90}');
  SET v_t_24=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_091,'review',0,6);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_067,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_060,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_028,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_088,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_035,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_016,'review',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_058,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_046,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_056,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_050,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_085,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_034,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_095,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_008,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_052,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_048,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_059,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_031,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_032,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_093,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_002,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_043,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_029,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_037,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_013,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_039,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_004,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_064,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_092,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'new_word',1,NULL,v_w_092,'عبارت کلیدی درس',NULL,46,NULL,'{"cefr":"B1","series":90}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'new_word',2,NULL,v_w_056,'واژه کلیدی درس',NULL,46,NULL,'{"cefr":"B1","series":90}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_19,NULL,'به جمله مارتین گوش کن',NULL,46,NULL,'{"cefr":"B1","series":90}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_20,NULL,'پاسخ آنا را با صدای بلند بگو',NULL,46,NULL,'{"cefr":"B1","series":90}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',5,v_t_21,NULL,'به جمله بعدی گوش کن',NULL,46,NULL,'{"cefr":"B1","series":90}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',6,v_t_22,NULL,'پاسخ را با صدای بلند بگو',NULL,46,NULL,'{"cefr":"B1","series":90}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'meaning_choice',7,NULL,v_w_056,'معنی واژه کلیدی را انتخاب کن',NULL,46,'{"mode":"word_translation","question":"nur در این درس چه معنی دارد؟","choices":["فقط","چطور / چگونه","بعدا"],"correctIndex":0}','{"cefr":"B1","series":90}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,46,'{"source":"lesson_story","question":"آنا و مارتین برای دفعه بعد چه تصمیمی می گیرند؟","choices":["فرمول ها را زودتر بررسی می کنند","دیگر همکاری نکنند","اعداد را بررسی نکنند"],"correctIndex":0}','{"cefr":"B1","series":90}');

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 090 requires exactly four lessons.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>24 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 090 requires exactly 24 turns.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR CHAR_LENGTH(TRIM(t.speech_target))=0);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every learner Turn needs speech_target.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND JSON_VALID(t.tokens)=0;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Invalid token JSON.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities a JOIN lessons l ON l.id=a.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>32 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 090 requires exactly 32 activities.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id<>learner_character_id AND storyline_key='anna-martin-b1-project' AND storyline_order BETWEEN 17 AND 20 AND status='validated';
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Character or storyline continuity failure.'; END IF;
  SELECT COUNT(*) INTO v_count FROM (SELECT lw.lesson_id,lw.word_id,COUNT(*) n FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter GROUP BY lw.lesson_id,lw.word_id HAVING COUNT(*)>1) d;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Duplicate lesson_words tuple.'; END IF;
  UPDATE chapters SET planned_lesson_count=4,status='validated' WHERE id=v_chapter;
  UPDATE modules SET status='complete' WHERE id=v_module;
  COMMIT;
END$$
DELIMITER ;
CALL import_nova_series_090_v9();
DROP PROCEDURE IF EXISTS import_nova_series_090_v9;


-- NOVA v9.0 / B1 SERIES 092 / Seit wir hier wohnen, ist es ruhiger
-- Requires canonical v9.0 and validated Series 091. No schema DDL.
SET NAMES utf8mb4;
DROP PROCEDURE IF EXISTS import_nova_series_092_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_092_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_level BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_module BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_chapter BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_jonas BIGINT UNSIGNED DEFAULT NULL;
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
  DECLARE v_w_096 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_097 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_098 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_099 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_100 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_101 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_102 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_103 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_104 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_105 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_106 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_107 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_108 BIGINT UNSIGNED DEFAULT NULL;
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
  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=3 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 03 missing.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE module_id=v_module AND sort_order=1 AND status IN ('validated','complete');
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 091 must be validated.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons l JOIN chapters c ON c.id=l.chapter_id WHERE c.module_id=v_module AND c.sort_order=1 AND l.storyline_key='anna-jonas-b1-neighborhood' AND l.storyline_order BETWEEN 1 AND 4;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Storyline orders 1-4 required.'; END IF;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=2 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 03 Chapter 02 missing.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_chapter AND title='Seit wir hier wohnen, ist es ruhiger' AND title_translation='از وقتی اینجا زندگی می کنیم آروم تر شده';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 092 canonical title mismatch.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 03 Chapter 02 must be empty before Series 092 import.'; END IF;
  SELECT id INTO v_c_jonas FROM characters WHERE course_id=v_course AND name='Jonas' AND gender='male' ORDER BY id LIMIT 1;
  SELECT id INTO v_c_anna FROM characters WHERE course_id=v_course AND name='Anna' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_jonas IS NULL OR v_c_anna IS NULL OR v_c_jonas=v_c_anna THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required distinct Characters Jonas and Anna missing.'; END IF;
  SELECT id INTO v_w_001 FROM words WHERE course_id=v_course AND lemma='alles' AND part_of_speech='pronoun' AND translation='همه چیز' ORDER BY id LIMIT 1;
  IF v_w_001 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: alles | pronoun'; END IF;
  SELECT id INTO v_w_002 FROM words WHERE course_id=v_course AND lemma='an' AND part_of_speech='particle' AND translation='مطرح / آغاز' ORDER BY id LIMIT 1;
  IF v_w_002 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'an','an','particle','مطرح / آغاز',48,'{"type":"particle"}','[{"text":"Hallo","translation":"سلام"},{"text":"Tschüss","translation":"خداحافظ"},{"text":"gut","translation":"خوب"},{"text":"Morgen","translation":"صبح"},{"text":"Guten Morgen","translation":"صبح بخیر"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_002=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_003 FROM words WHERE course_id=v_course AND lemma='an' AND part_of_speech='preposition' AND translation='در / در روز' ORDER BY id LIMIT 1;
  IF v_w_003 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: an | preposition'; END IF;
  SELECT id INTO v_w_004 FROM words WHERE course_id=v_course AND lemma='Anfang' AND part_of_speech='noun' AND translation='آغاز' ORDER BY id LIMIT 1;
  IF v_w_004 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Anfang','Anfang','noun','آغاز',48,'{"type":"noun"}','[{"text":"Morgen","translation":"صبح"},{"text":"Kaffee","translation":"قهوه"},{"text":"Milch","translation":"شیر"},{"text":"Tee","translation":"چای"},{"text":"Wasser","translation":"آب"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_004=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_005 FROM words WHERE course_id=v_course AND lemma='auch' AND part_of_speech='adverb' AND translation='هم / همچنین' ORDER BY id LIMIT 1;
  IF v_w_005 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: auch | adverb'; END IF;
  SELECT id INTO v_w_006 FROM words WHERE course_id=v_course AND lemma='auf' AND part_of_speech='preposition' AND translation='روی / برای' ORDER BY id LIMIT 1;
  IF v_w_006 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: auf | preposition'; END IF;
  SELECT id INTO v_w_007 FROM words WHERE course_id=v_course AND lemma='aufstehen' AND part_of_speech='verb' AND translation='از خواب بلند شدن' ORDER BY id LIMIT 1;
  IF v_w_007 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: aufstehen | verb'; END IF;
  SELECT id INTO v_w_008 FROM words WHERE course_id=v_course AND lemma='Balkon' AND part_of_speech='noun' AND translation='بالکن' ORDER BY id LIMIT 1;
  IF v_w_008 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Balkon | noun'; END IF;
  SELECT id INTO v_w_009 FROM words WHERE course_id=v_course AND lemma='beginnen' AND part_of_speech='verb' AND translation='شروع شدن / آغاز کردن' ORDER BY id LIMIT 1;
  IF v_w_009 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: beginnen | verb'; END IF;
  SELECT id INTO v_w_010 FROM words WHERE course_id=v_course AND lemma='dabei' AND part_of_speech='adverb' AND translation='در این میان' ORDER BY id LIMIT 1;
  IF v_w_010 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'dabei','dabei','adverb','در این میان',48,'{"type":"adverb"}','[{"text":"wie","translation":"چطور / چگونه"},{"text":"später","translation":"بعدا"},{"text":"woher","translation":"از کجا"},{"text":"sehr","translation":"خیلی / بسیار"},{"text":"so","translation":"این طور / آن طور"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_010=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_011 FROM words WHERE course_id=v_course AND lemma='dann' AND part_of_speech='adverb' AND translation='بعد / سپس' ORDER BY id LIMIT 1;
  IF v_w_011 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: dann | adverb'; END IF;
  SELECT id INTO v_w_012 FROM words WHERE course_id=v_course AND lemma='der' AND part_of_speech='article' AND translation='حرف تعریف' ORDER BY id LIMIT 1;
  IF v_w_012 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: der | article'; END IF;
  SELECT id INTO v_w_013 FROM words WHERE course_id=v_course AND lemma='dort' AND part_of_speech='adverb' AND translation='آنجا' ORDER BY id LIMIT 1;
  IF v_w_013 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: dort | adverb'; END IF;
  SELECT id INTO v_w_014 FROM words WHERE course_id=v_course AND lemma='du' AND part_of_speech='pronoun' AND translation='تو' ORDER BY id LIMIT 1;
  IF v_w_014 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: du | pronoun'; END IF;
  SELECT id INTO v_w_015 FROM words WHERE course_id=v_course AND lemma='ein' AND part_of_speech='article' AND translation='یک / حرف تعریف نامعین' ORDER BY id LIMIT 1;
  IF v_w_015 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ein | article'; END IF;
  SELECT id INTO v_w_016 FROM words WHERE course_id=v_course AND lemma='Einzug' AND part_of_speech='noun' AND translation='اسباب کشی' ORDER BY id LIMIT 1;
  IF v_w_016 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Einzug','Einzug','noun','اسباب کشی',48,'{"type":"noun"}','[{"text":"Morgen","translation":"صبح"},{"text":"Kaffee","translation":"قهوه"},{"text":"Milch","translation":"شیر"},{"text":"Tee","translation":"چای"},{"text":"Wasser","translation":"آب"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_016=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_017 FROM words WHERE course_id=v_course AND lemma='Entscheidung' AND part_of_speech='noun' AND translation='تصمیم' ORDER BY id LIMIT 1;
  IF v_w_017 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Entscheidung | noun'; END IF;
  SELECT id INTO v_w_018 FROM words WHERE course_id=v_course AND lemma='entspannt' AND part_of_speech='adjective' AND translation='آرام تر' ORDER BY id LIMIT 1;
  IF v_w_018 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'entspannt','entspannt','adjective','آرام تر',48,'{"type":"adjective"}','[{"text":"gut","translation":"خوب"},{"text":"super","translation":"عالی"},{"text":"alt","translation":"پیر / دارای سن"},{"text":"spät","translation":"دیر"},{"text":"rot","translation":"قرمز"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_018=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_019 FROM words WHERE course_id=v_course AND lemma='er' AND part_of_speech='pronoun' AND translation='او (مذکر)' ORDER BY id LIMIT 1;
  IF v_w_019 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: er | pronoun'; END IF;
  SELECT id INTO v_w_020 FROM words WHERE course_id=v_course AND lemma='es' AND part_of_speech='pronoun' AND translation='آن / این' ORDER BY id LIMIT 1;
  IF v_w_020 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: es | pronoun'; END IF;
  SELECT id INTO v_w_021 FROM words WHERE course_id=v_course AND lemma='etwas' AND part_of_speech='pronoun' AND translation='چیزی / یک چیزی' ORDER BY id LIMIT 1;
  IF v_w_021 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: etwas | pronoun'; END IF;
  SELECT id INTO v_w_022 FROM words WHERE course_id=v_course AND lemma='fast' AND part_of_speech='adverb' AND translation='تقریبا' ORDER BY id LIMIT 1;
  IF v_w_022 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: fast | adverb'; END IF;
  SELECT id INTO v_w_023 FROM words WHERE course_id=v_course AND lemma='Frau' AND part_of_speech='noun' AND translation='خانم' ORDER BY id LIMIT 1;
  IF v_w_023 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Frau','Frau','noun','خانم',48,'{"type":"noun"}','[{"text":"Morgen","translation":"صبح"},{"text":"Kaffee","translation":"قهوه"},{"text":"Milch","translation":"شیر"},{"text":"Tee","translation":"چای"},{"text":"Wasser","translation":"آب"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_023=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_024 FROM words WHERE course_id=v_course AND lemma='fremd' AND part_of_speech='adjective' AND translation='غریبه / ناآشنا' ORDER BY id LIMIT 1;
  IF v_w_024 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'fremd','fremd','adjective','غریبه / ناآشنا',48,'{"type":"adjective"}','[{"text":"gut","translation":"خوب"},{"text":"super","translation":"عالی"},{"text":"alt","translation":"پیر / دارای سن"},{"text":"spät","translation":"دیر"},{"text":"rot","translation":"قرمز"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_024=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_025 FROM words WHERE course_id=v_course AND lemma='freundlich' AND part_of_speech='adjective' AND translation='دوستانه / مهربان' ORDER BY id LIMIT 1;
  IF v_w_025 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: freundlich | adjective'; END IF;
  SELECT id INTO v_w_026 FROM words WHERE course_id=v_course AND lemma='früh' AND part_of_speech='adverb' AND translation='زودتر' ORDER BY id LIMIT 1;
  IF v_w_026 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'früh','früh','adverb','زودتر',48,'{"type":"adverb"}','[{"text":"wie","translation":"چطور / چگونه"},{"text":"später","translation":"بعدا"},{"text":"woher","translation":"از کجا"},{"text":"sehr","translation":"خیلی / بسیار"},{"text":"so","translation":"این طور / آن طور"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_026=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_027 FROM words WHERE course_id=v_course AND lemma='gefallen' AND part_of_speech='verb' AND translation='خوش آمدن' ORDER BY id LIMIT 1;
  IF v_w_027 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'gefallen','gefallen','verb','خوش آمدن',48,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"heißen","translation":"نام داشتن"},{"text":"freuen","translation":"خوشحال کردن / خوشحال شدن"},{"text":"kommen","translation":"آمدن"},{"text":"sein","translation":"بودن"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_027=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_028 FROM words WHERE course_id=v_course AND lemma='Gespräch' AND part_of_speech='noun' AND translation='گفتگو' ORDER BY id LIMIT 1;
  IF v_w_028 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Gespräch | noun'; END IF;
  SELECT id INTO v_w_029 FROM words WHERE course_id=v_course AND lemma='gestern' AND part_of_speech='adverb' AND translation='دیروز' ORDER BY id LIMIT 1;
  IF v_w_029 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: gestern | adverb'; END IF;
  SELECT id INTO v_w_030 FROM words WHERE course_id=v_course AND lemma='gut' AND part_of_speech='adjective' AND translation='خوب' ORDER BY id LIMIT 1;
  IF v_w_030 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: gut | adjective'; END IF;
  SELECT id INTO v_w_031 FROM words WHERE course_id=v_course AND lemma='haben' AND part_of_speech='verb' AND translation='داشتن' ORDER BY id LIMIT 1;
  IF v_w_031 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: haben | verb'; END IF;
  SELECT id INTO v_w_032 FROM words WHERE course_id=v_course AND lemma='Haus' AND part_of_speech='noun' AND translation='خانه' ORDER BY id LIMIT 1;
  IF v_w_032 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Haus','Haus','noun','خانه',48,'{"type":"noun"}','[{"text":"Morgen","translation":"صبح"},{"text":"Kaffee","translation":"قهوه"},{"text":"Milch","translation":"شیر"},{"text":"Tee","translation":"چای"},{"text":"Wasser","translation":"آب"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_032=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_033 FROM words WHERE course_id=v_course AND lemma='helfen' AND part_of_speech='verb' AND translation='کمک کردن' ORDER BY id LIMIT 1;
  IF v_w_033 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: helfen | verb'; END IF;
  SELECT id INTO v_w_034 FROM words WHERE course_id=v_course AND lemma='Herr' AND part_of_speech='noun' AND translation='آقا' ORDER BY id LIMIT 1;
  IF v_w_034 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Herr | noun'; END IF;
  SELECT id INTO v_w_035 FROM words WHERE course_id=v_course AND lemma='herum' AND part_of_speech='adverb' AND translation='اطراف' ORDER BY id LIMIT 1;
  IF v_w_035 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'herum','herum','adverb','اطراف',48,'{"type":"adverb"}','[{"text":"wie","translation":"چطور / چگونه"},{"text":"später","translation":"بعدا"},{"text":"woher","translation":"از کجا"},{"text":"sehr","translation":"خیلی / بسیار"},{"text":"so","translation":"این طور / آن طور"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_035=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_036 FROM words WHERE course_id=v_course AND lemma='heute' AND part_of_speech='adverb' AND translation='امروز' ORDER BY id LIMIT 1;
  IF v_w_036 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: heute | adverb'; END IF;
  SELECT id INTO v_w_037 FROM words WHERE course_id=v_course AND lemma='hier' AND part_of_speech='adverb' AND translation='اینجا' ORDER BY id LIMIT 1;
  IF v_w_037 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: hier | adverb'; END IF;
  SELECT id INTO v_w_038 FROM words WHERE course_id=v_course AND lemma='hören' AND part_of_speech='verb' AND translation='گوش دادن' ORDER BY id LIMIT 1;
  IF v_w_038 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: hören | verb'; END IF;
  SELECT id INTO v_w_039 FROM words WHERE course_id=v_course AND lemma='ich' AND part_of_speech='pronoun' AND translation='من' ORDER BY id LIMIT 1;
  IF v_w_039 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ich | pronoun'; END IF;
  SELECT id INTO v_w_040 FROM words WHERE course_id=v_course AND lemma='Ich fühle mich wohler, seit ich die Nachbarn kenne.' AND part_of_speech='phrase' AND translation='از وقتی همسایه ها رو می شناسم، احساس راحتی بیشتری دارم.' ORDER BY id LIMIT 1;
  IF v_w_040 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ich fühle mich wohler, seit ich die Nachbarn kenne.','Ich fühle mich wohler, seit ich die Nachbarn kenne.','phrase','از وقتی همسایه ها رو می شناسم، احساس راحتی بیشتری دارم.',48,'{"type":"phrase"}','[{"text":"Guten Morgen","translation":"صبح بخیر"},{"text":"Wie geht es dir?","translation":"حالت چطوره؟"},{"text":"Bis später","translation":"بعدا می بینمت"},{"text":"Ich heiße ...","translation":"اسم من ... است"},{"text":"Wie heißt du?","translation":"اسمت چیه؟"}]','Ich fühle mich wohler, seit ich die Nachbarn kenne.','از وقتی همسایه ها رو می شناسم، احساس راحتی بیشتری دارم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_040=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_041 FROM words WHERE course_id=v_course AND lemma='immer' AND part_of_speech='adverb' AND translation='همیشه / هرچه بیشتر' ORDER BY id LIMIT 1;
  IF v_w_041 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'immer','immer','adverb','همیشه / هرچه بیشتر',48,'{"type":"adverb"}','[{"text":"wie","translation":"چطور / چگونه"},{"text":"später","translation":"بعدا"},{"text":"woher","translation":"از کجا"},{"text":"sehr","translation":"خیلی / بسیار"},{"text":"so","translation":"این طور / آن طور"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_041=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_042 FROM words WHERE course_id=v_course AND lemma='Innenhof' AND part_of_speech='noun' AND translation='حیاط داخلی' ORDER BY id LIMIT 1;
  IF v_w_042 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Innenhof','Innenhof','noun','حیاط داخلی',48,'{"type":"noun"}','[{"text":"Morgen","translation":"صبح"},{"text":"Kaffee","translation":"قهوه"},{"text":"Milch","translation":"شیر"},{"text":"Tee","translation":"چای"},{"text":"Wasser","translation":"آب"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_042=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_043 FROM words WHERE course_id=v_course AND lemma='inzwischen' AND part_of_speech='adverb' AND translation='تا حالا / اکنون' ORDER BY id LIMIT 1;
  IF v_w_043 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'inzwischen','inzwischen','adverb','تا حالا / اکنون',48,'{"type":"adverb"}','[{"text":"wie","translation":"چطور / چگونه"},{"text":"später","translation":"بعدا"},{"text":"woher","translation":"از کجا"},{"text":"sehr","translation":"خیلی / بسیار"},{"text":"so","translation":"این طور / آن طور"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_043=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_044 FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_044 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ja | interjection'; END IF;
  SELECT id INTO v_w_045 FROM words WHERE course_id=v_course AND lemma='jeder' AND part_of_speech='determiner' AND translation='هر' ORDER BY id LIMIT 1;
  IF v_w_045 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'jeder','jeder','determiner','هر',48,'{"type":"determiner"}','[{"text":"welcher","translation":"کدام / چه"},{"text":"anderer","translation":"دیگر / متفاوت"},{"text":"mein","translation":"مال من / من"},{"text":"dein","translation":"مال تو / تو"},{"text":"kein","translation":"هیچ / نه یک"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_045=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_046 FROM words WHERE course_id=v_course AND lemma='jetzt' AND part_of_speech='adverb' AND translation='حالا / اکنون' ORDER BY id LIMIT 1;
  IF v_w_046 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: jetzt | adverb'; END IF;
  SELECT id INTO v_w_047 FROM words WHERE course_id=v_course AND lemma='Kaffee' AND part_of_speech='noun' AND translation='قهوه' ORDER BY id LIMIT 1;
  IF v_w_047 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Kaffee | noun'; END IF;
  SELECT id INTO v_w_048 FROM words WHERE course_id=v_course AND lemma='kaufen' AND part_of_speech='verb' AND translation='خریدن' ORDER BY id LIMIT 1;
  IF v_w_048 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: kaufen | verb'; END IF;
  SELECT id INTO v_w_049 FROM words WHERE course_id=v_course AND lemma='kennen' AND part_of_speech='verb' AND translation='شناختن' ORDER BY id LIMIT 1;
  IF v_w_049 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: kennen | verb'; END IF;
  SELECT id INTO v_w_050 FROM words WHERE course_id=v_course AND lemma='Klein' AND part_of_speech='proper_noun' AND translation='کلاین' ORDER BY id LIMIT 1;
  IF v_w_050 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Klein','Klein','proper_noun','کلاین',48,'{"type":"proper_noun"}','[{"text":"Lena","translation":"لنا (نام زنانه)"},{"text":"Ben","translation":"بن (نام مردانه)"},{"text":"Anna","translation":"آنا (نام زنانه)"},{"text":"Jonas","translation":"یوناس (نام مردانه)"},{"text":"Mia","translation":"میا (نام زنانه)"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_050=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_051 FROM words WHERE course_id=v_course AND lemma='klingen' AND part_of_speech='verb' AND translation='به نظر رسیدن' ORDER BY id LIMIT 1;
  IF v_w_051 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: klingen | verb'; END IF;
  SELECT id INTO v_w_052 FROM words WHERE course_id=v_course AND lemma='Leute' AND part_of_speech='noun' AND translation='آدم ها' ORDER BY id LIMIT 1;
  IF v_w_052 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Leute','Leute','noun','آدم ها',48,'{"type":"noun"}','[{"text":"Morgen","translation":"صبح"},{"text":"Kaffee","translation":"قهوه"},{"text":"Milch","translation":"شیر"},{"text":"Tee","translation":"چای"},{"text":"Wasser","translation":"آب"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_052=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_053 FROM words WHERE course_id=v_course AND lemma='lösen' AND part_of_speech='verb' AND translation='حل کردن' ORDER BY id LIMIT 1;
  IF v_w_053 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: lösen | verb'; END IF;
  SELECT id INTO v_w_054 FROM words WHERE course_id=v_course AND lemma='mehr' AND part_of_speech='adverb' AND translation='دیگه / بیشتر' ORDER BY id LIMIT 1;
  IF v_w_054 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: mehr | adverb'; END IF;
  SELECT id INTO v_w_055 FROM words WHERE course_id=v_course AND lemma='meist' AND part_of_speech='adjective' AND translation='بیشترین' ORDER BY id LIMIT 1;
  IF v_w_055 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'meist','meist','adjective','بیشترین',48,'{"type":"adjective"}','[{"text":"gut","translation":"خوب"},{"text":"super","translation":"عالی"},{"text":"alt","translation":"پیر / دارای سن"},{"text":"spät","translation":"دیر"},{"text":"rot","translation":"قرمز"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_055=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_056 FROM words WHERE course_id=v_course AND lemma='Mensch' AND part_of_speech='noun' AND translation='آدم / انسان' ORDER BY id LIMIT 1;
  IF v_w_056 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Mensch','Mensch','noun','آدم / انسان',48,'{"type":"noun"}','[{"text":"Morgen","translation":"صبح"},{"text":"Kaffee","translation":"قهوه"},{"text":"Milch","translation":"شیر"},{"text":"Tee","translation":"چای"},{"text":"Wasser","translation":"آب"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_056=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_057 FROM words WHERE course_id=v_course AND lemma='miteinander' AND part_of_speech='adverb' AND translation='با یکدیگر' ORDER BY id LIMIT 1;
  IF v_w_057 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'miteinander','miteinander','adverb','با یکدیگر',48,'{"type":"adverb"}','[{"text":"wie","translation":"چطور / چگونه"},{"text":"später","translation":"بعدا"},{"text":"woher","translation":"از کجا"},{"text":"sehr","translation":"خیلی / بسیار"},{"text":"so","translation":"این طور / آن طور"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_057=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_058 FROM words WHERE course_id=v_course AND lemma='Morgen' AND part_of_speech='noun' AND translation='صبح' ORDER BY id LIMIT 1;
  IF v_w_058 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Morgen | noun'; END IF;
  SELECT id INTO v_w_059 FROM words WHERE course_id=v_course AND lemma='morgens' AND part_of_speech='adverb' AND translation='صبح ها' ORDER BY id LIMIT 1;
  IF v_w_059 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'morgens','morgens','adverb','صبح ها',48,'{"type":"adverb"}','[{"text":"wie","translation":"چطور / چگونه"},{"text":"später","translation":"بعدا"},{"text":"woher","translation":"از کجا"},{"text":"sehr","translation":"خیلی / بسیار"},{"text":"so","translation":"این طور / آن طور"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_059=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_060 FROM words WHERE course_id=v_course AND lemma='nach' AND part_of_speech='preposition' AND translation='پس از / به' ORDER BY id LIMIT 1;
  IF v_w_060 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'nach','nach','preposition','پس از / به',48,'{"type":"preposition"}','[{"text":"bis","translation":"تا"},{"text":"aus","translation":"از"},{"text":"mit","translation":"با"},{"text":"um","translation":"در ساعت / حوالی"},{"text":"in","translation":"در / داخل"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_060=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_061 FROM words WHERE course_id=v_course AND lemma='Nachbar' AND part_of_speech='noun' AND translation='همسایه' ORDER BY id LIMIT 1;
  IF v_w_061 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Nachbar | noun'; END IF;
  SELECT id INTO v_w_062 FROM words WHERE course_id=v_course AND lemma='Nachbarin' AND part_of_speech='noun' AND translation='همسایه زن' ORDER BY id LIMIT 1;
  IF v_w_062 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Nachbarin','Nachbarin','noun','همسایه زن',48,'{"type":"noun"}','[{"text":"Morgen","translation":"صبح"},{"text":"Kaffee","translation":"قهوه"},{"text":"Milch","translation":"شیر"},{"text":"Tee","translation":"چای"},{"text":"Wasser","translation":"آب"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_062=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_063 FROM words WHERE course_id=v_course AND lemma='nein' AND part_of_speech='interjection' AND translation='نه' ORDER BY id LIMIT 1;
  IF v_w_063 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: nein | interjection'; END IF;
  SELECT id INTO v_w_064 FROM words WHERE course_id=v_course AND lemma='neu' AND part_of_speech='adjective' AND translation='جدید / تازه' ORDER BY id LIMIT 1;
  IF v_w_064 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: neu | adjective'; END IF;
  SELECT id INTO v_w_065 FROM words WHERE course_id=v_course AND lemma='nichts' AND part_of_speech='pronoun' AND translation='هیچ چیز' ORDER BY id LIMIT 1;
  IF v_w_065 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: nichts | pronoun'; END IF;
  SELECT id INTO v_w_066 FROM words WHERE course_id=v_course AND lemma='noch' AND part_of_speech='adverb' AND translation='هنوز' ORDER BY id LIMIT 1;
  IF v_w_066 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: noch | adverb'; END IF;
  SELECT id INTO v_w_067 FROM words WHERE course_id=v_course AND lemma='offen' AND part_of_speech='adverb' AND translation='راحت / صریح' ORDER BY id LIMIT 1;
  IF v_w_067 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'offen','offen','adverb','راحت / صریح',48,'{"type":"adverb"}','[{"text":"wie","translation":"چطور / چگونه"},{"text":"später","translation":"بعدا"},{"text":"woher","translation":"از کجا"},{"text":"sehr","translation":"خیلی / بسیار"},{"text":"so","translation":"این طور / آن طور"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_067=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_068 FROM words WHERE course_id=v_course AND lemma='oft' AND part_of_speech='adverb' AND translation='اغلب' ORDER BY id LIMIT 1;
  IF v_w_068 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: oft | adverb'; END IF;
  SELECT id INTO v_w_069 FROM words WHERE course_id=v_course AND lemma='ohne' AND part_of_speech='preposition' AND translation='بدون' ORDER BY id LIMIT 1;
  IF v_w_069 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ohne | preposition'; END IF;
  SELECT id INTO v_w_070 FROM words WHERE course_id=v_course AND lemma='Problem' AND part_of_speech='noun' AND translation='مشکل' ORDER BY id LIMIT 1;
  IF v_w_070 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Problem | noun'; END IF;
  SELECT id INTO v_w_071 FROM words WHERE course_id=v_course AND lemma='ruhig' AND part_of_speech='adjective' AND translation='آرام' ORDER BY id LIMIT 1;
  IF v_w_071 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ruhig | adjective'; END IF;
  SELECT id INTO v_w_072 FROM words WHERE course_id=v_course AND lemma='scheinen' AND part_of_speech='verb' AND translation='به نظر رسیدن' ORDER BY id LIMIT 1;
  IF v_w_072 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'scheinen','scheinen','verb','به نظر رسیدن',48,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"heißen","translation":"نام داشتن"},{"text":"freuen","translation":"خوشحال کردن / خوشحال شدن"},{"text":"kommen","translation":"آمدن"},{"text":"sein","translation":"بودن"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_072=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_073 FROM words WHERE course_id=v_course AND lemma='schnell' AND part_of_speech='adverb' AND translation='سریع تر' ORDER BY id LIMIT 1;
  IF v_w_073 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'schnell','schnell','adverb','سریع تر',48,'{"type":"adverb"}','[{"text":"wie","translation":"چطور / چگونه"},{"text":"später","translation":"بعدا"},{"text":"woher","translation":"از کجا"},{"text":"sehr","translation":"خیلی / بسیار"},{"text":"so","translation":"این طور / آن طور"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_073=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_074 FROM words WHERE course_id=v_course AND lemma='sehr' AND part_of_speech='adverb' AND translation='خیلی / بسیار' ORDER BY id LIMIT 1;
  IF v_w_074 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sehr | adverb'; END IF;
  SELECT id INTO v_w_075 FROM words WHERE course_id=v_course AND lemma='sein' AND part_of_speech='verb' AND translation='بودن' ORDER BY id LIMIT 1;
  IF v_w_075 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sein | verb'; END IF;
  SELECT id INTO v_w_076 FROM words WHERE course_id=v_course AND lemma='seit' AND part_of_speech='conjunction' AND translation='از وقتی' ORDER BY id LIMIT 1;
  IF v_w_076 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'seit','seit','conjunction','از وقتی',48,'{"type":"conjunction"}','[{"text":"und","translation":"و"},{"text":"oder","translation":"یا"},{"text":"weil","translation":"چون / زیرا"},{"text":"aber","translation":"اما"},{"text":"wenn","translation":"اگر / وقتی"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_076=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_077 FROM words WHERE course_id=v_course AND lemma='seit' AND part_of_speech='preposition' AND translation='از / از زمان' ORDER BY id LIMIT 1;
  IF v_w_077 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: seit | preposition'; END IF;
  SELECT id INTO v_w_078 FROM words WHERE course_id=v_course AND lemma='Seit Herr Weber den Teppich gekauft hat, ist es viel ruhiger.' AND part_of_speech='phrase' AND translation='از وقتی آقای وبر فرش رو خریده، خیلی آروم تر شده.' ORDER BY id LIMIT 1;
  IF v_w_078 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Seit Herr Weber den Teppich gekauft hat, ist es viel ruhiger.','Seit Herr Weber den Teppich gekauft hat, ist es viel ruhiger.','phrase','از وقتی آقای وبر فرش رو خریده، خیلی آروم تر شده.',48,'{"type":"phrase"}','[{"text":"Guten Morgen","translation":"صبح بخیر"},{"text":"Wie geht es dir?","translation":"حالت چطوره؟"},{"text":"Bis später","translation":"بعدا می بینمت"},{"text":"Ich heiße ...","translation":"اسم من ... است"},{"text":"Wie heißt du?","translation":"اسمت چیه؟"}]','Seit Herr Weber den Teppich gekauft hat, ist es viel ruhiger.','از وقتی آقای وبر فرش رو خریده، خیلی آروم تر شده.',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_078=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_079 FROM words WHERE course_id=v_course AND lemma='Seit ich früher aufstehe, habe ich morgens mehr Zeit.' AND part_of_speech='phrase' AND translation='از وقتی زودتر بیدار می شم، صبح ها وقت بیشتری دارم.' ORDER BY id LIMIT 1;
  IF v_w_079 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Seit ich früher aufstehe, habe ich morgens mehr Zeit.','Seit ich früher aufstehe, habe ich morgens mehr Zeit.','phrase','از وقتی زودتر بیدار می شم، صبح ها وقت بیشتری دارم.',48,'{"type":"phrase"}','[{"text":"Guten Morgen","translation":"صبح بخیر"},{"text":"Wie geht es dir?","translation":"حالت چطوره؟"},{"text":"Bis später","translation":"بعدا می بینمت"},{"text":"Ich heiße ...","translation":"اسم من ... است"},{"text":"Wie heißt du?","translation":"اسمت چیه؟"}]','Seit ich früher aufstehe, habe ich morgens mehr Zeit.','از وقتی زودتر بیدار می شم، صبح ها وقت بیشتری دارم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_079=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_080 FROM words WHERE course_id=v_course AND lemma='Seit wir offen miteinander sprechen, lösen wir Probleme schneller.' AND part_of_speech='phrase' AND translation='از وقتی با هم راحت حرف می زنیم، مشکل ها رو سریع تر حل می کنیم.' ORDER BY id LIMIT 1;
  IF v_w_080 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Seit wir offen miteinander sprechen, lösen wir Probleme schneller.','Seit wir offen miteinander sprechen, lösen wir Probleme schneller.','phrase','از وقتی با هم راحت حرف می زنیم، مشکل ها رو سریع تر حل می کنیم.',48,'{"type":"phrase"}','[{"text":"Guten Morgen","translation":"صبح بخیر"},{"text":"Wie geht es dir?","translation":"حالت چطوره؟"},{"text":"Bis später","translation":"بعدا می بینمت"},{"text":"Ich heiße ...","translation":"اسم من ... است"},{"text":"Wie heißt du?","translation":"اسمت چیه؟"}]','Seit wir offen miteinander sprechen, lösen wir Probleme schneller.','از وقتی با هم راحت حرف می زنیم، مشکل ها رو سریع تر حل می کنیم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_080=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_081 FROM words WHERE course_id=v_course AND lemma='seitdem' AND part_of_speech='adverb' AND translation='از آن زمان' ORDER BY id LIMIT 1;
  IF v_w_081 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'seitdem','seitdem','adverb','از آن زمان',48,'{"type":"adverb"}','[{"text":"wie","translation":"چطور / چگونه"},{"text":"später","translation":"بعدا"},{"text":"woher","translation":"از کجا"},{"text":"sehr","translation":"خیلی / بسیار"},{"text":"so","translation":"این طور / آن طور"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_081=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_082 FROM words WHERE course_id=v_course AND lemma='sich' AND part_of_speech='pronoun' AND translation='خود / خودش' ORDER BY id LIMIT 1;
  IF v_w_082 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sich | pronoun'; END IF;
  SELECT id INTO v_w_083 FROM words WHERE course_id=v_course AND lemma='sich fühlen' AND part_of_speech='verb' AND translation='احساس کردن' ORDER BY id LIMIT 1;
  IF v_w_083 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sich fühlen | verb'; END IF;
  SELECT id INTO v_w_084 FROM words WHERE course_id=v_course AND lemma='sitzen' AND part_of_speech='verb' AND translation='نشستن' ORDER BY id LIMIT 1;
  IF v_w_084 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sitzen | verb'; END IF;
  SELECT id INTO v_w_085 FROM words WHERE course_id=v_course AND lemma='sprechen' AND part_of_speech='verb' AND translation='صحبت کردن / حرف زدن' ORDER BY id LIMIT 1;
  IF v_w_085 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sprechen | verb'; END IF;
  SELECT id INTO v_w_086 FROM words WHERE course_id=v_course AND lemma='Start' AND part_of_speech='noun' AND translation='شروع' ORDER BY id LIMIT 1;
  IF v_w_086 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Start','Start','noun','شروع',48,'{"type":"noun"}','[{"text":"Morgen","translation":"صبح"},{"text":"Kaffee","translation":"قهوه"},{"text":"Milch","translation":"شیر"},{"text":"Tee","translation":"چای"},{"text":"Wasser","translation":"آب"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_086=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_087 FROM words WHERE course_id=v_course AND lemma='Stress' AND part_of_speech='noun' AND translation='استرس' ORDER BY id LIMIT 1;
  IF v_w_087 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Stress | noun'; END IF;
  SELECT id INTO v_w_088 FROM words WHERE course_id=v_course AND lemma='Tag' AND part_of_speech='noun' AND translation='روز' ORDER BY id LIMIT 1;
  IF v_w_088 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Tag | noun'; END IF;
  SELECT id INTO v_w_089 FROM words WHERE course_id=v_course AND lemma='Teppich' AND part_of_speech='noun' AND translation='فرش' ORDER BY id LIMIT 1;
  IF v_w_089 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Teppich | noun'; END IF;
  SELECT id INTO v_w_090 FROM words WHERE course_id=v_course AND lemma='treffen' AND part_of_speech='verb' AND translation='دیدن / ملاقات کردن' ORDER BY id LIMIT 1;
  IF v_w_090 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: treffen | verb'; END IF;
  SELECT id INTO v_w_091 FROM words WHERE course_id=v_course AND lemma='trinken' AND part_of_speech='verb' AND translation='نوشیدن' ORDER BY id LIMIT 1;
  IF v_w_091 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: trinken | verb'; END IF;
  SELECT id INTO v_w_092 FROM words WHERE course_id=v_course AND lemma='um' AND part_of_speech='preposition' AND translation='در ساعت / حوالی' ORDER BY id LIMIT 1;
  IF v_w_092 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: um | preposition'; END IF;
  SELECT id INTO v_w_093 FROM words WHERE course_id=v_course AND lemma='Umzug' AND part_of_speech='noun' AND translation='اسباب کشی' ORDER BY id LIMIT 1;
  IF v_w_093 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Umzug | noun'; END IF;
  SELECT id INTO v_w_094 FROM words WHERE course_id=v_course AND lemma='und' AND part_of_speech='conjunction' AND translation='و' ORDER BY id LIMIT 1;
  IF v_w_094 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: und | conjunction'; END IF;
  SELECT id INTO v_w_095 FROM words WHERE course_id=v_course AND lemma='unser' AND part_of_speech='determiner' AND translation='مال ما / ما' ORDER BY id LIMIT 1;
  IF v_w_095 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: unser | determiner'; END IF;
  SELECT id INTO v_w_096 FROM words WHERE course_id=v_course AND lemma='verändern' AND part_of_speech='verb' AND translation='تغییر دادن' ORDER BY id LIMIT 1;
  IF v_w_096 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: verändern | verb'; END IF;
  SELECT id INTO v_w_097 FROM words WHERE course_id=v_course AND lemma='verbessern' AND part_of_speech='verb' AND translation='بهتر کردن / بهتر شدن' ORDER BY id LIMIT 1;
  IF v_w_097 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'verbessern','verbessern','verb','بهتر کردن / بهتر شدن',48,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"heißen","translation":"نام داشتن"},{"text":"freuen","translation":"خوشحال کردن / خوشحال شدن"},{"text":"kommen","translation":"آمدن"},{"text":"sein","translation":"بودن"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_097=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_098 FROM words WHERE course_id=v_course AND lemma='viel' AND part_of_speech='adverb' AND translation='خیلی' ORDER BY id LIMIT 1;
  IF v_w_098 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'viel','viel','adverb','خیلی',48,'{"type":"adverb"}','[{"text":"wie","translation":"چطور / چگونه"},{"text":"später","translation":"بعدا"},{"text":"woher","translation":"از کجا"},{"text":"sehr","translation":"خیلی / بسیار"},{"text":"so","translation":"این طور / آن طور"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_098=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_099 FROM words WHERE course_id=v_course AND lemma='was' AND part_of_speech='pronoun' AND translation='چی / چه' ORDER BY id LIMIT 1;
  IF v_w_099 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: was | pronoun'; END IF;
  SELECT id INTO v_w_100 FROM words WHERE course_id=v_course AND lemma='Weber' AND part_of_speech='proper_noun' AND translation='وبر' ORDER BY id LIMIT 1;
  IF v_w_100 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Weber | proper_noun'; END IF;
  SELECT id INTO v_w_101 FROM words WHERE course_id=v_course AND lemma='wie' AND part_of_speech='adverb' AND translation='چطور / چگونه' ORDER BY id LIMIT 1;
  IF v_w_101 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wie | adverb'; END IF;
  SELECT id INTO v_w_102 FROM words WHERE course_id=v_course AND lemma='wir' AND part_of_speech='pronoun' AND translation='ما' ORDER BY id LIMIT 1;
  IF v_w_102 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wir | pronoun'; END IF;
  SELECT id INTO v_w_103 FROM words WHERE course_id=v_course AND lemma='wirklich' AND part_of_speech='adverb' AND translation='واقعا' ORDER BY id LIMIT 1;
  IF v_w_103 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'wirklich','wirklich','adverb','واقعا',48,'{"type":"adverb"}','[{"text":"wie","translation":"چطور / چگونه"},{"text":"später","translation":"بعدا"},{"text":"woher","translation":"از کجا"},{"text":"sehr","translation":"خیلی / بسیار"},{"text":"so","translation":"این طور / آن طور"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_103=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_104 FROM words WHERE course_id=v_course AND lemma='wohl' AND part_of_speech='adjective' AND translation='راحت تر' ORDER BY id LIMIT 1;
  IF v_w_104 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'wohl','wohl','adjective','راحت تر',48,'{"type":"adjective"}','[{"text":"gut","translation":"خوب"},{"text":"super","translation":"عالی"},{"text":"alt","translation":"پیر / دارای سن"},{"text":"spät","translation":"دیر"},{"text":"rot","translation":"قرمز"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_104=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_105 FROM words WHERE course_id=v_course AND lemma='wohnen' AND part_of_speech='verb' AND translation='زندگی کردن / ساکن بودن' ORDER BY id LIMIT 1;
  IF v_w_105 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wohnen | verb'; END IF;
  SELECT id INTO v_w_106 FROM words WHERE course_id=v_course AND lemma='Wohnung' AND part_of_speech='noun' AND translation='خانه / آپارتمان' ORDER BY id LIMIT 1;
  IF v_w_106 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Wohnung | noun'; END IF;
  SELECT id INTO v_w_107 FROM words WHERE course_id=v_course AND lemma='Zeit' AND part_of_speech='noun' AND translation='وقت / زمان' ORDER BY id LIMIT 1;
  IF v_w_107 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Zeit | noun'; END IF;
  SELECT id INTO v_w_108 FROM words WHERE course_id=v_course AND lemma='zu' AND part_of_speech='particle' AND translation='بیش از حد / خیلی' ORDER BY id LIMIT 1;
  IF v_w_108 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: zu | particle'; END IF;
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_jonas,v_c_anna,'Ein ruhiger Morgen','یک صبح آرام','Anna und Jonas merken, dass es nach dem Gespräch deutlich ruhiger geworden ist.','آنا و یوناس متوجه می شوند که بعد از گفتگو ساختمان خیلی آرام تر شده است.','story','anna-jonas-b1-neighborhood',5,48,155,1,'validated','{"relationship":"couple","context":"life-since-moving-in","cefr":"B1","storyArc":"notice-belong-adapt-reflect"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_jonas,1,'character','Hast du heute Morgen den Nachbarn gehört?','امروز صبح صدای همسایه رو شنیدی؟',48,NULL,NULL,NULL,NULL,'[{"form":"present_2sg","lemma":"haben","partOfSpeech":"verb","surface":"Hast","translation":"داشتن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"lemma":"heute","partOfSpeech":"adverb","surface":"heute","translation":"امروز"},{"lemma":"Morgen","partOfSpeech":"noun","surface":"Morgen","translation":"صبح"},{"form":"accusative_masculine","lemma":"der","partOfSpeech":"article","surface":"den","translation":"حرف تعریف"},{"form":"accusative","lemma":"Nachbar","partOfSpeech":"noun","surface":"Nachbarn","translation":"همسایه"},{"form":"participle_II","lemma":"hören","partOfSpeech":"verb","suffix":"?","surface":"gehört","translation":"گوش دادن"}]','Seit-Sätze','در جمله وابسته با seit فعل صرف شده در پایان می آید.','{"focus":"seit_clause","timeRelation":"from_past_until_now"}','{"cefr":"B1","course":"de-fa","series":92}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,2,'learner','Nein, seit gestern hören wir fast nichts mehr.','نه، از دیروز تقریبا دیگه چیزی نمی شنویم.',48,NULL,NULL,'nein seit gestern hören wir fast nichts mehr',NULL,'[{"lemma":"nein","partOfSpeech":"interjection","suffix":",","surface":"Nein","translation":"نه"},{"lemma":"seit","partOfSpeech":"preposition","surface":"seit","translation":"از / از زمان"},{"lemma":"gestern","partOfSpeech":"adverb","surface":"gestern","translation":"دیروز"},{"form":"present_1pl","lemma":"hören","partOfSpeech":"verb","surface":"hören","translation":"گوش دادن"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"lemma":"fast","partOfSpeech":"adverb","surface":"fast","translation":"تقریبا"},{"lemma":"nichts","partOfSpeech":"pronoun","surface":"nichts","translation":"هیچ چیز"},{"lemma":"mehr","partOfSpeech":"adverb","suffix":".","surface":"mehr","translation":"دیگه / بیشتر"}]','Seit-Sätze','در جمله وابسته با seit فعل صرف شده در پایان می آید.','{"focus":"seit_clause","timeRelation":"from_past_until_now"}','{"cefr":"B1","course":"de-fa","series":92}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_jonas,3,'character','Der neue Teppich scheint wirklich zu helfen.','به نظر میاد فرش جدید واقعا کمک کرده.',48,NULL,NULL,NULL,NULL,'[{"form":"nominative_masculine","lemma":"der","partOfSpeech":"article","surface":"Der","translation":"حرف تعریف"},{"form":"inflected","lemma":"neu","partOfSpeech":"adjective","surface":"neue","translation":"جدید / تازه"},{"lemma":"Teppich","partOfSpeech":"noun","surface":"Teppich","translation":"فرش"},{"form":"present_3sg","lemma":"scheinen","partOfSpeech":"verb","surface":"scheint","translation":"به نظر رسیدن"},{"lemma":"wirklich","partOfSpeech":"adverb","surface":"wirklich","translation":"واقعا"},{"lemma":"zu","partOfSpeech":"particle","surface":"zu","translation":"بیش از حد / خیلی"},{"form":"infinitive","lemma":"helfen","partOfSpeech":"verb","suffix":".","surface":"helfen","translation":"کمک کردن"}]','Seit-Sätze','در جمله وابسته با seit فعل صرف شده در پایان می آید.','{"focus":"seit_clause","timeRelation":"from_past_until_now"}','{"cefr":"B1","course":"de-fa","series":92}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,4,'learner','Seit Herr Weber den Teppich gekauft hat, ist es viel ruhiger.','از وقتی آقای وبر فرش رو خریده، خیلی آروم تر شده.',48,NULL,NULL,'seit herr weber den teppich gekauft hat ist es viel ruhiger',NULL,'[{"lemma":"seit","partOfSpeech":"conjunction","surface":"Seit","translation":"از وقتی"},{"lemma":"Herr","partOfSpeech":"noun","surface":"Herr","translation":"آقا"},{"lemma":"Weber","partOfSpeech":"proper_noun","surface":"Weber","translation":"وبر"},{"form":"accusative_masculine","lemma":"der","partOfSpeech":"article","surface":"den","translation":"حرف تعریف"},{"lemma":"Teppich","partOfSpeech":"noun","surface":"Teppich","translation":"فرش"},{"form":"participle_II","lemma":"kaufen","partOfSpeech":"verb","surface":"gekauft","translation":"خریدن"},{"form":"present_3sg","lemma":"haben","partOfSpeech":"verb","suffix":",","surface":"hat","translation":"داشتن"},{"form":"present_3sg","lemma":"sein","partOfSpeech":"verb","surface":"ist","translation":"بودن"},{"lemma":"es","partOfSpeech":"pronoun","surface":"es","translation":"آن / این"},{"lemma":"viel","partOfSpeech":"adverb","surface":"viel","translation":"خیلی"},{"form":"comparative","lemma":"ruhig","partOfSpeech":"adjective","suffix":".","surface":"ruhiger","translation":"آرام"}]','Seit-Sätze','در جمله وابسته با seit فعل صرف شده در پایان می آید.','{"focus":"seit_clause","timeRelation":"from_past_until_now"}','{"cefr":"B1","course":"de-fa","series":92}');
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_jonas,5,'character','Dann hat unser Gespräch etwas verändert.','پس گفتگوی ما چیزی رو تغییر داده.',48,NULL,NULL,NULL,NULL,'[{"lemma":"dann","partOfSpeech":"adverb","surface":"Dann","translation":"بعد / سپس"},{"form":"present_3sg","lemma":"haben","partOfSpeech":"verb","surface":"hat","translation":"داشتن"},{"form":"nominative_neuter","lemma":"unser","partOfSpeech":"determiner","surface":"unser","translation":"مال ما / ما"},{"lemma":"Gespräch","partOfSpeech":"noun","surface":"Gespräch","translation":"گفتگو"},{"lemma":"etwas","partOfSpeech":"pronoun","surface":"etwas","translation":"چیزی / یک چیزی"},{"form":"participle_II","lemma":"verändern","partOfSpeech":"verb","suffix":".","surface":"verändert","translation":"تغییر دادن"}]','Seit-Sätze','در جمله وابسته با seit فعل صرف شده در پایان می آید.','{"focus":"seit_clause","timeRelation":"from_past_until_now"}','{"cefr":"B1","course":"de-fa","series":92}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,6,'learner','Ja, und er war dabei sehr freundlich.','آره، و خودش هم خیلی دوستانه برخورد کرد.',48,NULL,NULL,'ja und er war dabei sehr freundlich',NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":",","surface":"Ja","translation":"بله / آره"},{"lemma":"und","partOfSpeech":"conjunction","surface":"und","translation":"و"},{"lemma":"er","partOfSpeech":"pronoun","surface":"er","translation":"او (مذکر)"},{"form":"preterite_3sg","lemma":"sein","partOfSpeech":"verb","surface":"war","translation":"بودن"},{"lemma":"dabei","partOfSpeech":"adverb","surface":"dabei","translation":"در این میان"},{"lemma":"sehr","partOfSpeech":"adverb","surface":"sehr","translation":"خیلی / بسیار"},{"lemma":"freundlich","partOfSpeech":"adjective","suffix":".","surface":"freundlich","translation":"دوستانه / مهربان"}]','Seit-Sätze','در جمله وابسته با seit فعل صرف شده در پایان می آید.','{"focus":"seit_clause","timeRelation":"from_past_until_now"}','{"cefr":"B1","course":"de-fa","series":92}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_031,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_014,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_036,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_058,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_012,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_061,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_038,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_063,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_077,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_029,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_102,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_022,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_065,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_054,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_064,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_089,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_072,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_103,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_108,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_033,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_076,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_034,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_100,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_048,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_075,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_020,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_098,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_071,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_011,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_095,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_028,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_021,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_096,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_044,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_094,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_019,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_010,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_074,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_025,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_078,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_078,'عبارت کلیدی درس',NULL,48,NULL,'{"cefr":"B1","series":92}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',2,NULL,v_w_072,'واژه کلیدی درس',NULL,48,NULL,'{"cefr":"B1","series":92}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',3,v_t_1,NULL,'به جمله یوناس گوش کن',NULL,48,NULL,'{"cefr":"B1","series":92}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',4,v_t_2,NULL,'پاسخ آنا را با صدای بلند بگو',NULL,48,NULL,'{"cefr":"B1","series":92}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',5,v_t_3,NULL,'به جمله بعدی گوش کن',NULL,48,NULL,'{"cefr":"B1","series":92}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',6,v_t_4,NULL,'پاسخ را با صدای بلند بگو',NULL,48,NULL,'{"cefr":"B1","series":92}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',7,NULL,v_w_072,'معنی واژه کلیدی را انتخاب کن',NULL,48,'{"mode":"word_translation","question":"scheinen در این درس چه معنی دارد؟","choices":["به نظر رسیدن","رفتن","نام داشتن"],"correctIndex":0}','{"cefr":"B1","series":92}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,48,'{"source":"lesson_story","question":"چه چیزی باعث شده ساختمان آرام تر شود؟","choices":["فرش جدید آقای وبر","خاموش شدن آسانسور","تعویض در ورودی"],"correctIndex":0}','{"cefr":"B1","series":92}');
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_jonas,v_c_anna,'Sich zu Hause fühlen','احساس راحتی در خانه','Die beiden vergleichen ihren Alltag vor und nach dem Umzug.','آن دو زندگی روزمره پیش و پس از اسباب کشی را مقایسه می کنند.','story','anna-jonas-b1-neighborhood',6,48,155,2,'validated','{"relationship":"couple","context":"life-since-moving-in","cefr":"B1","storyArc":"notice-belong-adapt-reflect"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_jonas,1,'character','Wie gefällt dir die Wohnung inzwischen?','حالا از این خونه خوشت میاد؟',48,NULL,NULL,NULL,NULL,'[{"lemma":"wie","partOfSpeech":"adverb","surface":"Wie","translation":"چطور / چگونه"},{"form":"present_3sg","lemma":"gefallen","partOfSpeech":"verb","surface":"gefällt","translation":"خوش آمدن"},{"form":"dative","lemma":"du","partOfSpeech":"pronoun","surface":"dir","translation":"تو"},{"form":"plural","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"lemma":"Wohnung","partOfSpeech":"noun","surface":"Wohnung","translation":"خانه / آپارتمان"},{"lemma":"inzwischen","partOfSpeech":"adverb","suffix":"?","surface":"inzwischen","translation":"تا حالا / اکنون"}]','Seit-Sätze','در جمله وابسته با seit فعل صرف شده در پایان می آید.','{"focus":"seit_clause","timeRelation":"from_past_until_now"}','{"cefr":"B1","course":"de-fa","series":92}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,2,'learner','Ich fühle mich wohler, seit ich die Nachbarn kenne.','از وقتی همسایه ها رو می شناسم، احساس راحتی بیشتری دارم.',48,NULL,NULL,'ich fühle mich wohler seit ich die nachbarn kenne',NULL,'[{"lemma":"ich","partOfSpeech":"pronoun","surface":"Ich","translation":"من"},{"form":"present_1sg","lemma":"sich fühlen","partOfSpeech":"verb","surface":"fühle","translation":"احساس کردن"},{"form":"accusative_1sg","lemma":"sich","partOfSpeech":"pronoun","surface":"mich","translation":"خود / خودش"},{"form":"comparative","lemma":"wohl","partOfSpeech":"adjective","suffix":",","surface":"wohler","translation":"راحت تر"},{"lemma":"seit","partOfSpeech":"conjunction","surface":"seit","translation":"از وقتی"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"form":"plural","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"form":"accusative","lemma":"Nachbar","partOfSpeech":"noun","surface":"Nachbarn","translation":"همسایه"},{"form":"present_1sg","lemma":"kennen","partOfSpeech":"verb","suffix":".","surface":"kenne","translation":"شناختن"}]','Seit-Sätze','در جمله وابسته با seit فعل صرف شده در پایان می آید.','{"focus":"seit_clause","timeRelation":"from_past_until_now"}','{"cefr":"B1","course":"de-fa","series":92}');
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_jonas,3,'character','Am Anfang war hier alles fremd.','اوایل اینجا همه چیز غریبه بود.',48,NULL,NULL,NULL,NULL,'[{"form":"an_dem","lemma":"an","partOfSpeech":"preposition","surface":"Am","translation":"در / در روز"},{"lemma":"Anfang","partOfSpeech":"noun","surface":"Anfang","translation":"آغاز"},{"form":"preterite_3sg","lemma":"sein","partOfSpeech":"verb","surface":"war","translation":"بودن"},{"lemma":"hier","partOfSpeech":"adverb","surface":"hier","translation":"اینجا"},{"lemma":"alles","partOfSpeech":"pronoun","surface":"alles","translation":"همه چیز"},{"lemma":"fremd","partOfSpeech":"adjective","suffix":".","surface":"fremd","translation":"غریبه / ناآشنا"}]','Seit-Sätze','در جمله وابسته با seit فعل صرف شده در پایان می آید.','{"focus":"seit_clause","timeRelation":"from_past_until_now"}','{"cefr":"B1","course":"de-fa","series":92}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,4,'learner','Seit wir hier wohnen, kenne ich jeden Tag mehr Leute.','از وقتی اینجا زندگی می کنیم، هر روز آدم های بیشتری رو می شناسم.',48,NULL,NULL,'seit wir hier wohnen kenne ich jeden tag mehr leute',NULL,'[{"lemma":"seit","partOfSpeech":"conjunction","surface":"Seit","translation":"از وقتی"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"lemma":"hier","partOfSpeech":"adverb","surface":"hier","translation":"اینجا"},{"form":"present_1pl","lemma":"wohnen","partOfSpeech":"verb","suffix":",","surface":"wohnen","translation":"زندگی کردن / ساکن بودن"},{"form":"present_1sg","lemma":"kennen","partOfSpeech":"verb","surface":"kenne","translation":"شناختن"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"form":"accusative_masculine","lemma":"jeder","partOfSpeech":"determiner","surface":"jeden","translation":"هر"},{"lemma":"Tag","partOfSpeech":"noun","surface":"Tag","translation":"روز"},{"lemma":"mehr","partOfSpeech":"adverb","surface":"mehr","translation":"دیگه / بیشتر"},{"lemma":"Leute","partOfSpeech":"noun","suffix":".","surface":"Leute","translation":"آدم ها"}]','Seit-Sätze','در جمله وابسته با seit فعل صرف شده در پایان می آید.','{"focus":"seit_clause","timeRelation":"from_past_until_now"}','{"cefr":"B1","course":"de-fa","series":92}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_jonas,5,'character','Auch der Innenhof gefällt mir immer besser.','حیاط داخلی رو هم هر روز بیشتر دوست دارم.',48,NULL,NULL,NULL,NULL,'[{"lemma":"auch","partOfSpeech":"adverb","surface":"Auch","translation":"هم / همچنین"},{"form":"nominative_masculine","lemma":"der","partOfSpeech":"article","surface":"der","translation":"حرف تعریف"},{"lemma":"Innenhof","partOfSpeech":"noun","surface":"Innenhof","translation":"حیاط داخلی"},{"form":"present_3sg","lemma":"gefallen","partOfSpeech":"verb","surface":"gefällt","translation":"خوش آمدن"},{"form":"dative","lemma":"ich","partOfSpeech":"pronoun","surface":"mir","translation":"من"},{"lemma":"immer","partOfSpeech":"adverb","surface":"immer","translation":"همیشه / هرچه بیشتر"},{"form":"comparative","lemma":"gut","partOfSpeech":"adjective","suffix":".","surface":"besser","translation":"خوب"}]','Seit-Sätze','در جمله وابسته با seit فعل صرف شده در پایان می آید.','{"focus":"seit_clause","timeRelation":"from_past_until_now"}','{"cefr":"B1","course":"de-fa","series":92}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,6,'learner','Dort treffe ich oft unsere Nachbarin Frau Klein.','اونجا زیاد همسایه مون خانم کلاین رو می بینم.',48,NULL,NULL,'dort treffe ich oft unsere nachbarin frau klein',NULL,'[{"lemma":"dort","partOfSpeech":"adverb","surface":"Dort","translation":"آنجا"},{"form":"present_1sg","lemma":"treffen","partOfSpeech":"verb","surface":"treffe","translation":"دیدن / ملاقات کردن"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"lemma":"oft","partOfSpeech":"adverb","surface":"oft","translation":"اغلب"},{"form":"accusative_feminine","lemma":"unser","partOfSpeech":"determiner","surface":"unsere","translation":"مال ما / ما"},{"lemma":"Nachbarin","partOfSpeech":"noun","surface":"Nachbarin","translation":"همسایه زن"},{"lemma":"Frau","partOfSpeech":"noun","surface":"Frau","translation":"خانم"},{"lemma":"Klein","partOfSpeech":"proper_noun","suffix":".","surface":"Klein","translation":"کلاین"}]','Seit-Sätze','در جمله وابسته با seit فعل صرف شده در پایان می آید.','{"focus":"seit_clause","timeRelation":"from_past_until_now"}','{"cefr":"B1","course":"de-fa","series":92}');
  SET v_t_12=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_101,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_027,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_014,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_012,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_106,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_043,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_039,'review',0,5);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_083,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_082,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_104,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_076,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_061,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_049,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_003,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_004,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_075,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_037,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_001,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_024,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_102,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_105,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_045,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_088,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_054,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_052,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_005,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_042,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_041,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_030,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_013,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_090,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_068,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_095,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_062,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_023,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_050,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_040,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_040,'عبارت کلیدی درس',NULL,48,NULL,'{"cefr":"B1","series":92}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',2,NULL,v_w_027,'واژه کلیدی درس',NULL,48,NULL,'{"cefr":"B1","series":92}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',3,v_t_7,NULL,'به جمله یوناس گوش کن',NULL,48,NULL,'{"cefr":"B1","series":92}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',4,v_t_8,NULL,'پاسخ آنا را با صدای بلند بگو',NULL,48,NULL,'{"cefr":"B1","series":92}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',5,v_t_9,NULL,'به جمله بعدی گوش کن',NULL,48,NULL,'{"cefr":"B1","series":92}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',6,v_t_10,NULL,'پاسخ را با صدای بلند بگو',NULL,48,NULL,'{"cefr":"B1","series":92}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',7,NULL,v_w_027,'معنی واژه کلیدی را انتخاب کن',NULL,48,'{"mode":"word_translation","question":"gefallen در این درس چه معنی دارد؟","choices":["خوش آمدن","رفتن","نام داشتن"],"correctIndex":0}','{"cefr":"B1","series":92}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,48,'{"source":"lesson_story","question":"چرا آنا در خانه احساس راحتی بیشتری دارد؟","choices":["شناختن همسایه ها","عوض کردن شغل","خریدن خودرو"],"correctIndex":0}','{"cefr":"B1","series":92}');
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_jonas,v_c_anna,'Neue Gewohnheiten','عادت های تازه','Anna und Jonas sprechen über neue Gewohnheiten in ihrem Wohnhaus.','آنا و یوناس درباره عادت های تازه شان در ساختمان صحبت می کنند.','story','anna-jonas-b1-neighborhood',7,48,155,3,'validated','{"relationship":"couple","context":"life-since-moving-in","cefr":"B1","storyArc":"notice-belong-adapt-reflect"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_jonas,1,'character','Du bist morgens jetzt viel entspannter.','حالا صبح ها خیلی آرام تری.',48,NULL,NULL,NULL,NULL,'[{"lemma":"du","partOfSpeech":"pronoun","surface":"Du","translation":"تو"},{"form":"present_2sg","lemma":"sein","partOfSpeech":"verb","surface":"bist","translation":"بودن"},{"lemma":"morgens","partOfSpeech":"adverb","surface":"morgens","translation":"صبح ها"},{"lemma":"jetzt","partOfSpeech":"adverb","surface":"jetzt","translation":"حالا / اکنون"},{"lemma":"viel","partOfSpeech":"adverb","surface":"viel","translation":"خیلی"},{"form":"comparative","lemma":"entspannt","partOfSpeech":"adjective","suffix":".","surface":"entspannter","translation":"آرام تر"}]','Seit-Sätze','در جمله وابسته با seit فعل صرف شده در پایان می آید.','{"focus":"seit_clause","timeRelation":"from_past_until_now"}','{"cefr":"B1","course":"de-fa","series":92}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,2,'learner','Seit ich früher aufstehe, habe ich morgens mehr Zeit.','از وقتی زودتر بیدار می شم، صبح ها وقت بیشتری دارم.',48,NULL,NULL,'seit ich früher aufstehe habe ich morgens mehr zeit',NULL,'[{"lemma":"seit","partOfSpeech":"conjunction","surface":"Seit","translation":"از وقتی"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"form":"comparative","lemma":"früh","partOfSpeech":"adverb","surface":"früher","translation":"زودتر"},{"form":"present_1sg","lemma":"aufstehen","partOfSpeech":"verb","suffix":",","surface":"aufstehe","translation":"از خواب بلند شدن"},{"form":"present_1sg","lemma":"haben","partOfSpeech":"verb","surface":"habe","translation":"داشتن"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"lemma":"morgens","partOfSpeech":"adverb","surface":"morgens","translation":"صبح ها"},{"lemma":"mehr","partOfSpeech":"adverb","surface":"mehr","translation":"دیگه / بیشتر"},{"lemma":"Zeit","partOfSpeech":"noun","suffix":".","surface":"Zeit","translation":"وقت / زمان"}]','Seit-Sätze','در جمله وابسته با seit فعل صرف شده در پایان می آید.','{"focus":"seit_clause","timeRelation":"from_past_until_now"}','{"cefr":"B1","course":"de-fa","series":92}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_jonas,3,'character','Trinkst du noch Kaffee auf dem Balkon?','هنوز توی بالکن قهوه می خوری؟',48,NULL,NULL,NULL,NULL,'[{"form":"present_2sg","lemma":"trinken","partOfSpeech":"verb","surface":"Trinkst","translation":"نوشیدن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"lemma":"noch","partOfSpeech":"adverb","surface":"noch","translation":"هنوز"},{"lemma":"Kaffee","partOfSpeech":"noun","surface":"Kaffee","translation":"قهوه"},{"lemma":"auf","partOfSpeech":"preposition","surface":"auf","translation":"روی / برای"},{"form":"dative_neuter","lemma":"der","partOfSpeech":"article","surface":"dem","translation":"حرف تعریف"},{"lemma":"Balkon","partOfSpeech":"noun","suffix":"?","surface":"Balkon","translation":"بالکن"}]','Seit-Sätze','در جمله وابسته با seit فعل صرف شده در پایان می آید.','{"focus":"seit_clause","timeRelation":"from_past_until_now"}','{"cefr":"B1","course":"de-fa","series":92}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,4,'learner','Ja, seit es ruhiger ist, sitze ich dort jeden Morgen.','آره، از وقتی آروم تر شده، هر صبح اونجا می شینم.',48,NULL,NULL,'ja seit es ruhiger ist sitze ich dort jeden morgen',NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":",","surface":"Ja","translation":"بله / آره"},{"lemma":"seit","partOfSpeech":"conjunction","surface":"seit","translation":"از وقتی"},{"lemma":"es","partOfSpeech":"pronoun","surface":"es","translation":"آن / این"},{"form":"comparative","lemma":"ruhig","partOfSpeech":"adjective","surface":"ruhiger","translation":"آرام"},{"form":"present_3sg","lemma":"sein","partOfSpeech":"verb","suffix":",","surface":"ist","translation":"بودن"},{"form":"present_1sg","lemma":"sitzen","partOfSpeech":"verb","surface":"sitze","translation":"نشستن"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"lemma":"dort","partOfSpeech":"adverb","surface":"dort","translation":"آنجا"},{"form":"accusative_masculine","lemma":"jeder","partOfSpeech":"determiner","surface":"jeden","translation":"هر"},{"lemma":"Morgen","partOfSpeech":"noun","suffix":".","surface":"Morgen","translation":"صبح"}]','Seit-Sätze','در جمله وابسته با seit فعل صرف شده در پایان می آید.','{"focus":"seit_clause","timeRelation":"from_past_until_now"}','{"cefr":"B1","course":"de-fa","series":92}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_jonas,5,'character','Das klingt nach einem guten Start.','این شروع خوبی به نظر میاد.',48,NULL,NULL,NULL,NULL,'[{"form":"neuter","lemma":"der","partOfSpeech":"article","surface":"Das","translation":"حرف تعریف"},{"form":"present_3sg","lemma":"klingen","partOfSpeech":"verb","surface":"klingt","translation":"به نظر رسیدن"},{"lemma":"nach","partOfSpeech":"preposition","surface":"nach","translation":"پس از / به"},{"form":"dative_neuter","lemma":"ein","partOfSpeech":"article","surface":"einem","translation":"یک / حرف تعریف نامعین"},{"form":"accusative_masculine","lemma":"gut","partOfSpeech":"adjective","surface":"guten","translation":"خوب"},{"lemma":"Start","partOfSpeech":"noun","suffix":".","surface":"Start","translation":"شروع"}]','Seit-Sätze','در جمله وابسته با seit فعل صرف شده در پایان می آید.','{"focus":"seit_clause","timeRelation":"from_past_until_now"}','{"cefr":"B1","course":"de-fa","series":92}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,6,'learner','Seitdem beginne ich den Tag ohne Stress.','از اون موقع روزم رو بدون استرس شروع می کنم.',48,NULL,NULL,'seitdem beginne ich den tag ohne stress',NULL,'[{"lemma":"seitdem","partOfSpeech":"adverb","surface":"Seitdem","translation":"از آن زمان"},{"form":"present_1sg","lemma":"beginnen","partOfSpeech":"verb","surface":"beginne","translation":"شروع شدن / آغاز کردن"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"form":"accusative_masculine","lemma":"der","partOfSpeech":"article","surface":"den","translation":"حرف تعریف"},{"lemma":"Tag","partOfSpeech":"noun","surface":"Tag","translation":"روز"},{"lemma":"ohne","partOfSpeech":"preposition","surface":"ohne","translation":"بدون"},{"lemma":"Stress","partOfSpeech":"noun","suffix":".","surface":"Stress","translation":"استرس"}]','Seit-Sätze','در جمله وابسته با seit فعل صرف شده در پایان می آید.','{"focus":"seit_clause","timeRelation":"from_past_until_now"}','{"cefr":"B1","course":"de-fa","series":92}');
  SET v_t_18=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_014,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_075,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_059,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_046,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_098,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_018,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_076,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_039,'review',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_026,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_007,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_031,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_054,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_107,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_091,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_066,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_047,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_006,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_012,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_008,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_044,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_020,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_071,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_084,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_013,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_045,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_058,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_051,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_060,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_015,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_030,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_086,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_081,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_009,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_088,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_069,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_087,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_079,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_079,'عبارت کلیدی درس',NULL,48,NULL,'{"cefr":"B1","series":92}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',2,NULL,v_w_059,'واژه کلیدی درس',NULL,48,NULL,'{"cefr":"B1","series":92}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',3,v_t_13,NULL,'به جمله یوناس گوش کن',NULL,48,NULL,'{"cefr":"B1","series":92}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',4,v_t_14,NULL,'پاسخ آنا را با صدای بلند بگو',NULL,48,NULL,'{"cefr":"B1","series":92}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',5,v_t_15,NULL,'به جمله بعدی گوش کن',NULL,48,NULL,'{"cefr":"B1","series":92}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',6,v_t_16,NULL,'پاسخ را با صدای بلند بگو',NULL,48,NULL,'{"cefr":"B1","series":92}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',7,NULL,v_w_059,'معنی واژه کلیدی را انتخاب کن',NULL,48,'{"mode":"word_translation","question":"morgens در این درس چه معنی دارد؟","choices":["صبح ها","چطور / چگونه","بعدا"],"correctIndex":0}','{"cefr":"B1","series":92}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,48,'{"source":"lesson_story","question":"چه چیزی صبح های آنا را آرام تر کرده؟","choices":["زودتر بیدار شدن","کمتر خوابیدن","نخوردن صبحانه"],"correctIndex":0}','{"cefr":"B1","series":92}');
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_jonas,v_c_anna,'Eine gute Veränderung','یک تغییر خوب','Das Paar fasst zusammen, was sich seit dem Einzug verbessert hat.','این زوج جمع بندی می کنند که از زمان اسباب کشی چه چیزهایی بهتر شده است.','story','anna-jonas-b1-neighborhood',8,48,155,4,'validated','{"relationship":"couple","context":"life-since-moving-in","cefr":"B1","storyArc":"notice-belong-adapt-reflect"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_jonas,1,'character','Was hat sich seit unserem Einzug am meisten verbessert?','از زمان اسباب کشی ما چه چیزی بیشتر از همه بهتر شده؟',48,NULL,NULL,NULL,NULL,'[{"lemma":"was","partOfSpeech":"pronoun","surface":"Was","translation":"چی / چه"},{"form":"present_3sg","lemma":"haben","partOfSpeech":"verb","surface":"hat","translation":"داشتن"},{"lemma":"sich","partOfSpeech":"pronoun","surface":"sich","translation":"خود / خودش"},{"lemma":"seit","partOfSpeech":"preposition","surface":"seit","translation":"از / از زمان"},{"form":"dative_neuter","lemma":"unser","partOfSpeech":"determiner","surface":"unserem","translation":"مال ما / ما"},{"lemma":"Einzug","partOfSpeech":"noun","surface":"Einzug","translation":"اسباب کشی"},{"form":"an_dem","lemma":"an","partOfSpeech":"preposition","surface":"am","translation":"در / در روز"},{"form":"dative","lemma":"meist","partOfSpeech":"adjective","surface":"meisten","translation":"بیشترین"},{"form":"participle_II","lemma":"verbessern","partOfSpeech":"verb","suffix":"?","surface":"verbessert","translation":"بهتر کردن / بهتر شدن"}]','Seit-Sätze','در جمله وابسته با seit فعل صرف شده در پایان می آید.','{"focus":"seit_clause","timeRelation":"from_past_until_now"}','{"cefr":"B1","course":"de-fa","series":92}');
  SET v_t_19=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,2,'learner','Wir kennen jetzt die Menschen, die um uns herum wohnen.','حالا آدم هایی رو می شناسیم که اطراف ما زندگی می کنند.',48,NULL,NULL,'wir kennen jetzt die menschen die um uns herum wohnen',NULL,'[{"lemma":"wir","partOfSpeech":"pronoun","surface":"Wir","translation":"ما"},{"form":"present_1pl","lemma":"kennen","partOfSpeech":"verb","surface":"kennen","translation":"شناختن"},{"lemma":"jetzt","partOfSpeech":"adverb","surface":"jetzt","translation":"حالا / اکنون"},{"form":"plural","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"form":"plural","lemma":"Mensch","partOfSpeech":"noun","suffix":",","surface":"Menschen","translation":"آدم / انسان"},{"form":"plural","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"lemma":"um","partOfSpeech":"preposition","surface":"um","translation":"در ساعت / حوالی"},{"form":"dative","lemma":"wir","partOfSpeech":"pronoun","surface":"uns","translation":"ما"},{"lemma":"herum","partOfSpeech":"adverb","surface":"herum","translation":"اطراف"},{"form":"present_1pl","lemma":"wohnen","partOfSpeech":"verb","suffix":".","surface":"wohnen","translation":"زندگی کردن / ساکن بودن"}]','Seit-Sätze','در جمله وابسته با seit فعل صرف شده در پایان می آید.','{"focus":"seit_clause","timeRelation":"from_past_until_now"}','{"cefr":"B1","course":"de-fa","series":92}');
  SET v_t_20=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_jonas,3,'character','Und wir sprechen Probleme früher an.','و مشکل ها رو زودتر مطرح می کنیم.',48,NULL,NULL,NULL,NULL,'[{"lemma":"und","partOfSpeech":"conjunction","surface":"Und","translation":"و"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"form":"infinitive","lemma":"sprechen","partOfSpeech":"verb","surface":"sprechen","translation":"صحبت کردن / حرف زدن"},{"form":"plural","lemma":"Problem","partOfSpeech":"noun","surface":"Probleme","translation":"مشکل"},{"form":"comparative","lemma":"früh","partOfSpeech":"adverb","surface":"früher","translation":"زودتر"},{"lemma":"an","partOfSpeech":"particle","suffix":".","surface":"an","translation":"مطرح / آغاز"}]','Seit-Sätze','در جمله وابسته با seit فعل صرف شده در پایان می آید.','{"focus":"seit_clause","timeRelation":"from_past_until_now"}','{"cefr":"B1","course":"de-fa","series":92}');
  SET v_t_21=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,4,'learner','Seit wir offen miteinander sprechen, lösen wir Probleme schneller.','از وقتی با هم راحت حرف می زنیم، مشکل ها رو سریع تر حل می کنیم.',48,NULL,NULL,'seit wir offen miteinander sprechen lösen wir probleme schneller',NULL,'[{"lemma":"seit","partOfSpeech":"conjunction","surface":"Seit","translation":"از وقتی"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"lemma":"offen","partOfSpeech":"adverb","surface":"offen","translation":"راحت / صریح"},{"lemma":"miteinander","partOfSpeech":"adverb","surface":"miteinander","translation":"با یکدیگر"},{"form":"infinitive","lemma":"sprechen","partOfSpeech":"verb","suffix":",","surface":"sprechen","translation":"صحبت کردن / حرف زدن"},{"form":"present_1pl","lemma":"lösen","partOfSpeech":"verb","surface":"lösen","translation":"حل کردن"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"form":"plural","lemma":"Problem","partOfSpeech":"noun","surface":"Probleme","translation":"مشکل"},{"form":"comparative","lemma":"schnell","partOfSpeech":"adverb","suffix":".","surface":"schneller","translation":"سریع تر"}]','Seit-Sätze','در جمله وابسته با seit فعل صرف شده در پایان می آید.','{"focus":"seit_clause","timeRelation":"from_past_until_now"}','{"cefr":"B1","course":"de-fa","series":92}');
  SET v_t_22=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_jonas,5,'character','Dann war der Umzug eine gute Entscheidung.','پس اسباب کشی تصمیم خوبی بود.',48,NULL,NULL,NULL,NULL,'[{"lemma":"dann","partOfSpeech":"adverb","surface":"Dann","translation":"بعد / سپس"},{"form":"preterite_3sg","lemma":"sein","partOfSpeech":"verb","surface":"war","translation":"بودن"},{"form":"nominative_masculine","lemma":"der","partOfSpeech":"article","surface":"der","translation":"حرف تعریف"},{"lemma":"Umzug","partOfSpeech":"noun","surface":"Umzug","translation":"اسباب کشی"},{"form":"nominative_feminine","lemma":"ein","partOfSpeech":"article","surface":"eine","translation":"یک / حرف تعریف نامعین"},{"form":"nominative_feminine","lemma":"gut","partOfSpeech":"adjective","surface":"gute","translation":"خوب"},{"lemma":"Entscheidung","partOfSpeech":"noun","suffix":".","surface":"Entscheidung","translation":"تصمیم"}]','Seit-Sätze','در جمله وابسته با seit فعل صرف شده در پایان می آید.','{"focus":"seit_clause","timeRelation":"from_past_until_now"}','{"cefr":"B1","course":"de-fa","series":92}');
  SET v_t_23=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,6,'learner','Ja, inzwischen fühle ich mich hier wirklich zu Hause.','آره، حالا واقعا اینجا احساس می کنم خونه خودمه.',48,NULL,NULL,'ja inzwischen fühle ich mich hier wirklich zu hause',NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":",","surface":"Ja","translation":"بله / آره"},{"lemma":"inzwischen","partOfSpeech":"adverb","surface":"inzwischen","translation":"تا حالا / اکنون"},{"form":"present_1sg","lemma":"sich fühlen","partOfSpeech":"verb","surface":"fühle","translation":"احساس کردن"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"form":"accusative_1sg","lemma":"sich","partOfSpeech":"pronoun","surface":"mich","translation":"خود / خودش"},{"lemma":"hier","partOfSpeech":"adverb","surface":"hier","translation":"اینجا"},{"lemma":"wirklich","partOfSpeech":"adverb","surface":"wirklich","translation":"واقعا"},{"lemma":"zu","partOfSpeech":"particle","surface":"zu","translation":"بیش از حد / خیلی"},{"form":"dative","lemma":"Haus","partOfSpeech":"noun","suffix":".","surface":"Hause","translation":"خانه"}]','Seit-Sätze','در جمله وابسته با seit فعل صرف شده در پایان می آید.','{"focus":"seit_clause","timeRelation":"from_past_until_now"}','{"cefr":"B1","course":"de-fa","series":92}');
  SET v_t_24=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_099,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_031,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_082,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_077,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_095,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_016,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_003,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_055,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_097,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_102,'review',0,5);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_049,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_046,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_012,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_056,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_092,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_035,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_105,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_094,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_085,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_070,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_026,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_002,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_076,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_067,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_057,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_053,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_073,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_011,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_075,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_093,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_015,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_030,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_017,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_044,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_043,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_083,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_039,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_037,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_103,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_108,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_032,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_080,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'new_word',1,NULL,v_w_080,'عبارت کلیدی درس',NULL,48,NULL,'{"cefr":"B1","series":92}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'new_word',2,NULL,v_w_016,'واژه کلیدی درس',NULL,48,NULL,'{"cefr":"B1","series":92}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_19,NULL,'به جمله یوناس گوش کن',NULL,48,NULL,'{"cefr":"B1","series":92}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_20,NULL,'پاسخ آنا را با صدای بلند بگو',NULL,48,NULL,'{"cefr":"B1","series":92}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',5,v_t_21,NULL,'به جمله بعدی گوش کن',NULL,48,NULL,'{"cefr":"B1","series":92}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',6,v_t_22,NULL,'پاسخ را با صدای بلند بگو',NULL,48,NULL,'{"cefr":"B1","series":92}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'meaning_choice',7,NULL,v_w_016,'معنی واژه کلیدی را انتخاب کن',NULL,48,'{"mode":"word_translation","question":"Einzug در این درس چه معنی دارد؟","choices":["اسباب کشی","صبح","قهوه"],"correctIndex":0}','{"cefr":"B1","series":92}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,48,'{"source":"lesson_story","question":"آنا و یوناس حالا مشکل ها را چطور حل می کنند؟","choices":["با گفتگوی راحت و زودتر","با نادیده گرفتنشان","با ترک ساختمان"],"correctIndex":0}','{"cefr":"B1","series":92}');

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 092 requires exactly four lessons.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>24 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 092 requires exactly 24 turns.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR CHAR_LENGTH(TRIM(t.speech_target))=0);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every learner Turn needs speech_target.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities a JOIN lessons l ON l.id=a.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>32 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 092 requires exactly 32 activities.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id<>learner_character_id AND storyline_key='anna-jonas-b1-neighborhood' AND storyline_order BETWEEN 5 AND 8 AND status='validated';
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Character or storyline continuity failure.'; END IF;
  SELECT COUNT(*) INTO v_count FROM (SELECT lw.lesson_id,lw.word_id,COUNT(*) n FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter GROUP BY lw.lesson_id,lw.word_id HAVING COUNT(*)>1) d;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Duplicate lesson_words tuple.'; END IF;
  UPDATE chapters SET planned_lesson_count=4,status='validated' WHERE id=v_chapter;
  COMMIT;
END$$
DELIMITER ;
CALL import_nova_series_092_v9();
DROP PROCEDURE IF EXISTS import_nova_series_092_v9;


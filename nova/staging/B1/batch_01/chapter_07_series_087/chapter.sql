-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 087
-- B1 > Arbeit & Zusammenarbeit > Kannst du mir erklären, wie das geht?
-- Requires canonical Nova v9.0 and QA-passed staged Series 081-086.
-- Uses the unchanged Nova v9.0 schema; contains no schema DDL.
-- ===============================================================
SET NAMES utf8mb4;
DROP PROCEDURE IF EXISTS import_nova_series_087_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_087_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_level BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_module BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_chapter BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_prior_chapter BIGINT UNSIGNED DEFAULT NULL;
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
  IF v_course IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Run nova_DE_FA_base_seed_v9.sql first.'; END IF;
  SELECT id INTO v_level FROM levels WHERE course_id=v_course AND cefr_level='B1' AND sort_order=3 ORDER BY id LIMIT 1;
  IF v_level IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Level from Series 081 not found.'; END IF;
  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=2 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 02 from Series 086 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM modules WHERE id=v_module AND title='Arbeit & Zusammenarbeit' AND title_translation='کار و همکاری';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 02 canonical identity mismatch.'; END IF;
  SELECT id INTO v_prior_chapter FROM chapters WHERE module_id=v_module AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_prior_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 086 Chapter not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_prior_chapter AND status IN ('validated','complete');
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 086 Chapter must be validated before Series 087.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_prior_chapter AND storyline_key='anna-martin-b1-project' AND storyline_order BETWEEN 1 AND 4;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 086 storyline orders 1-4 are required.'; END IF;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=2 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 02 Chapter 02 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_chapter AND title='Kannst du mir erklären, wie das geht?' AND title_translation='می تونی توضیح بدی چطور انجام می شه؟';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 087 canonical Chapter title mismatch.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 02 Chapter 02 must be empty before Series 087 import.'; END IF;
  SELECT id INTO v_c_martin FROM characters WHERE course_id=v_course AND name='Martin' AND gender='male' ORDER BY id LIMIT 1;
  IF v_c_martin IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Martin not found.'; END IF;
  SELECT id INTO v_c_anna FROM characters WHERE course_id=v_course AND name='Anna' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_anna IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Anna not found.'; END IF;
  IF v_c_martin=v_c_anna THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Martin and Anna must be distinct Characters.'; END IF;

  SELECT id INTO v_w_001 FROM words WHERE course_id=v_course AND lemma='aber' AND part_of_speech='conjunction' AND translation='اما' ORDER BY id LIMIT 1;
  IF v_w_001 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: aber | conjunction'; END IF;

  SELECT id INTO v_w_002 FROM words WHERE course_id=v_course AND lemma='Ablauf' AND part_of_speech='noun' AND translation='روند کار' ORDER BY id LIMIT 1;
  IF v_w_002 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ablauf','Ablauf','noun','روند کار',45,'{"gender":"masculine","plural":"Abläufe"}','[{"text":"Datei","translation":"فایل"},{"text":"Bild","translation":"تصویر"},{"text":"Text","translation":"متن"},{"text":"Seite","translation":"صفحه"},{"text":"Menü","translation":"منو"}]','Alles klar. Jetzt kann ich den Ablauf selbst erklären.','باشه. حالا خودم می تونم روند کار رو توضیح بدم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_002=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_003 FROM words WHERE course_id=v_course AND lemma='ah' AND part_of_speech='interjection' AND translation='آهان' ORDER BY id LIMIT 1;
  IF v_w_003 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'ah','ah','interjection','آهان',44,'{"type":"interjection"}','[{"text":"ja","translation":"آره"},{"text":"nein","translation":"نه"},{"text":"gut","translation":"خوب"},{"text":"genau","translation":"دقیقا"},{"text":"okay","translation":"باشه"}]','Ah, jetzt habe ich es gefunden.','آهان، حالا پیداش کردم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_003=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_004 FROM words WHERE course_id=v_course AND lemma='allein' AND part_of_speech='adverb' AND translation='تنهایی' ORDER BY id LIMIT 1;
  IF v_w_004 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'allein','allein','adverb','تنهایی',45,'{"type":"adverb"}','[{"text":"jetzt","translation":"حالا"},{"text":"später","translation":"بعدا"},{"text":"zuerst","translation":"اول"},{"text":"danach","translation":"بعدش"},{"text":"hier","translation":"اینجا"}]','Möchtest du den letzten Schritt allein machen?','می خوای مرحله آخر رو تنهایی انجام بدی؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_004=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_005 FROM words WHERE course_id=v_course AND lemma='alles' AND part_of_speech='pronoun' AND translation='همه چیز' ORDER BY id LIMIT 1;
  IF v_w_005 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'alles','alles','pronoun','همه چیز',45,'{"type":"pronoun"}','[{"text":"etwas","translation":"چیزی"},{"text":"nichts","translation":"هیچ چیز"},{"text":"das","translation":"این"},{"text":"es","translation":"آن"},{"text":"was","translation":"چه"}]','Alles klar. Jetzt kann ich den Ablauf selbst erklären.','باشه. حالا خودم می تونم روند کار رو توضیح بدم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_005=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_006 FROM words WHERE course_id=v_course AND lemma='als' AND part_of_speech='conjunction' AND translation='از / نسبت به' ORDER BY id LIMIT 1;
  IF v_w_006 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'als','als','conjunction','از / نسبت به',45,'{"type":"conjunction"}','[{"text":"und","translation":"و"},{"text":"aber","translation":"اما"},{"text":"weil","translation":"چون"},{"text":"wenn","translation":"اگر"},{"text":"dass","translation":"که"}]','Das ist einfacher, als ich gedacht habe.','از چیزی که فکر می کردم راحت تره.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_006=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_007 FROM words WHERE course_id=v_course AND lemma='an' AND part_of_speech='preposition' AND translation='در / در روز' ORDER BY id LIMIT 1;
  IF v_w_007 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: an | preposition'; END IF;

  SELECT id INTO v_w_008 FROM words WHERE course_id=v_course AND lemma='auf' AND part_of_speech='preposition' AND translation='روی / برای' ORDER BY id LIMIT 1;
  IF v_w_008 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: auf | preposition'; END IF;

  SELECT id INTO v_w_009 FROM words WHERE course_id=v_course AND lemma='auswählen' AND part_of_speech='verb' AND translation='انتخاب کردن' ORDER BY id LIMIT 1;
  IF v_w_009 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'auswählen','auswählen','verb','انتخاب کردن',44,'{"type":"separable_verb"}','[{"text":"öffnen","translation":"باز کردن"},{"text":"schließen","translation":"بستن"},{"text":"speichern","translation":"ذخیره کردن"},{"text":"klicken","translation":"کلیک کردن"},{"text":"zeigen","translation":"نشان دادن"}]','Natürlich. Zuerst wählst du die richtige Datei aus.','حتما. اول فایل درست رو انتخاب می کنی.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_009=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_010 FROM words WHERE course_id=v_course AND lemma='bearbeiten' AND part_of_speech='verb' AND translation='ویرایش کردن' ORDER BY id LIMIT 1;
  IF v_w_010 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'bearbeiten','bearbeiten','verb','ویرایش کردن',44,'{"type":"verb"}','[{"text":"öffnen","translation":"باز کردن"},{"text":"schließen","translation":"بستن"},{"text":"speichern","translation":"ذخیره کردن"},{"text":"klicken","translation":"کلیک کردن"},{"text":"zeigen","translation":"نشان دادن"}]','Klick zuerst auf Bearbeiten.','اول روی ویرایش کلیک کن.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_010=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_011 FROM words WHERE course_id=v_course AND lemma='Bild' AND part_of_speech='noun' AND translation='تصویر' ORDER BY id LIMIT 1;
  IF v_w_011 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Bild | noun'; END IF;

  SELECT id INTO v_w_012 FROM words WHERE course_id=v_course AND lemma='Cursor' AND part_of_speech='noun' AND translation='نشانگر' ORDER BY id LIMIT 1;
  IF v_w_012 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Cursor','Cursor','noun','نشانگر',45,'{"gender":"masculine","plural":"Cursor"}','[{"text":"Datei","translation":"فایل"},{"text":"Bild","translation":"تصویر"},{"text":"Text","translation":"متن"},{"text":"Seite","translation":"صفحه"},{"text":"Menü","translation":"منو"}]','Nein, setz den Cursor an die richtige Stelle.','نه، نشانگر رو جای درست بذار.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_012=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_013 FROM words WHERE course_id=v_course AND lemma='da' AND part_of_speech='adverb' AND translation='آنجا' ORDER BY id LIMIT 1;
  IF v_w_013 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'da','da','adverb','آنجا',44,'{"type":"adverb"}','[{"text":"jetzt","translation":"حالا"},{"text":"später","translation":"بعدا"},{"text":"zuerst","translation":"اول"},{"text":"danach","translation":"بعدش"},{"text":"hier","translation":"اینجا"}]','Da sind mehrere Zeichen.','اونجا چند تا علامت هست.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_013=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_014 FROM words WHERE course_id=v_course AND lemma='danach' AND part_of_speech='adverb' AND translation='بعد از آن / بعدش' ORDER BY id LIMIT 1;
  IF v_w_014 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: danach | adverb'; END IF;

  SELECT id INTO v_w_015 FROM words WHERE course_id=v_course AND lemma='dann' AND part_of_speech='adverb' AND translation='بعد / سپس' ORDER BY id LIMIT 1;
  IF v_w_015 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: dann | adverb'; END IF;

  SELECT id INTO v_w_016 FROM words WHERE course_id=v_course AND lemma='das' AND part_of_speech='pronoun' AND translation='این / آن' ORDER BY id LIMIT 1;
  IF v_w_016 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: das | pronoun'; END IF;

  SELECT id INTO v_w_017 FROM words WHERE course_id=v_course AND lemma='Datei' AND part_of_speech='noun' AND translation='فایل' ORDER BY id LIMIT 1;
  IF v_w_017 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Datei | noun'; END IF;

  SELECT id INTO v_w_018 FROM words WHERE course_id=v_course AND lemma='denken' AND part_of_speech='verb' AND translation='فکر کردن' ORDER BY id LIMIT 1;
  IF v_w_018 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'denken','denken','verb','فکر کردن',45,'{"type":"verb"}','[{"text":"öffnen","translation":"باز کردن"},{"text":"schließen","translation":"بستن"},{"text":"speichern","translation":"ذخیره کردن"},{"text":"klicken","translation":"کلیک کردن"},{"text":"zeigen","translation":"نشان دادن"}]','Das ist einfacher, als ich gedacht habe.','از چیزی که فکر می کردم راحت تره.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_018=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_019 FROM words WHERE course_id=v_course AND lemma='der' AND part_of_speech='article' AND translation='حرف تعریف' ORDER BY id LIMIT 1;
  IF v_w_019 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: der | article'; END IF;

  SELECT id INTO v_w_020 FROM words WHERE course_id=v_course AND lemma='du' AND part_of_speech='pronoun' AND translation='تو' ORDER BY id LIMIT 1;
  IF v_w_020 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: du | pronoun'; END IF;

  SELECT id INTO v_w_021 FROM words WHERE course_id=v_course AND lemma='ein' AND part_of_speech='article' AND translation='یک / حرف تعریف نامعین' ORDER BY id LIMIT 1;
  IF v_w_021 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ein | article'; END IF;

  SELECT id INTO v_w_022 FROM words WHERE course_id=v_course AND lemma='einfach' AND part_of_speech='adjective' AND translation='آسان / ساده' ORDER BY id LIMIT 1;
  IF v_w_022 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'einfach','einfach','adjective','آسان / ساده',45,'{"type":"adjective"}','[{"text":"richtig","translation":"درست"},{"text":"falsch","translation":"نادرست"},{"text":"schwierig","translation":"سخت"},{"text":"neu","translation":"جدید"},{"text":"klein","translation":"کوچک"}]','Das ist einfacher, als ich gedacht habe.','از چیزی که فکر می کردم راحت تره.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_022=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_023 FROM words WHERE course_id=v_course AND lemma='einfügen' AND part_of_speech='verb' AND translation='وارد کردن / افزودن' ORDER BY id LIMIT 1;
  IF v_w_023 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'einfügen','einfügen','verb','وارد کردن / افزودن',45,'{"type":"separable_verb"}','[{"text":"öffnen","translation":"باز کردن"},{"text":"schließen","translation":"بستن"},{"text":"speichern","translation":"ذخیره کردن"},{"text":"klicken","translation":"کلیک کردن"},{"text":"zeigen","translation":"نشان دادن"}]','Jetzt fügen wir das Bild ein.','حالا تصویر رو وارد می کنیم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_023=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_024 FROM words WHERE course_id=v_course AND lemma='einmal' AND part_of_speech='adverb' AND translation='یک بار' ORDER BY id LIMIT 1;
  IF v_w_024 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: einmal | adverb'; END IF;

  SELECT id INTO v_w_025 FROM words WHERE course_id=v_course AND lemma='erklären' AND part_of_speech='verb' AND translation='توضیح دادن' ORDER BY id LIMIT 1;
  IF v_w_025 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'erklären','erklären','verb','توضیح دادن',44,'{"type":"verb"}','[{"text":"öffnen","translation":"باز کردن"},{"text":"schließen","translation":"بستن"},{"text":"speichern","translation":"ذخیره کردن"},{"text":"klicken","translation":"کلیک کردن"},{"text":"zeigen","translation":"نشان دادن"}]','Kannst du mir erklären, wie das geht?','می تونی توضیح بدی چطور انجام می شه؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_025=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_026 FROM words WHERE course_id=v_course AND lemma='erstellen' AND part_of_speech='verb' AND translation='ایجاد کردن' ORDER BY id LIMIT 1;
  IF v_w_026 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'erstellen','erstellen','verb','ایجاد کردن',45,'{"type":"verb"}','[{"text":"öffnen","translation":"باز کردن"},{"text":"schließen","translation":"بستن"},{"text":"speichern","translation":"ذخیره کردن"},{"text":"klicken","translation":"کلیک کردن"},{"text":"zeigen","translation":"نشان دادن"}]','Muss ich vorher eine neue Seite erstellen?','باید قبلش یک صفحه جدید بسازم؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_026=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_027 FROM words WHERE course_id=v_course AND lemma='es' AND part_of_speech='pronoun' AND translation='آن / این' ORDER BY id LIMIT 1;
  IF v_w_027 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: es | pronoun'; END IF;

  SELECT id INTO v_w_028 FROM words WHERE course_id=v_course AND lemma='finden' AND part_of_speech='verb' AND translation='پیدا کردن' ORDER BY id LIMIT 1;
  IF v_w_028 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: finden | verb'; END IF;

  SELECT id INTO v_w_029 FROM words WHERE course_id=v_course AND lemma='gehen' AND part_of_speech='verb' AND translation='رفتن' ORDER BY id LIMIT 1;
  IF v_w_029 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: gehen | verb'; END IF;

  SELECT id INTO v_w_030 FROM words WHERE course_id=v_course AND lemma='genau' AND part_of_speech='adverb' AND translation='دقیقا' ORDER BY id LIMIT 1;
  IF v_w_030 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: genau | adverb'; END IF;

  SELECT id INTO v_w_031 FROM words WHERE course_id=v_course AND lemma='gleich' AND part_of_speech='adverb' AND translation='همین الان' ORDER BY id LIMIT 1;
  IF v_w_031 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'gleich','gleich','adverb','همین الان',44,'{"type":"adverb"}','[{"text":"jetzt","translation":"حالا"},{"text":"später","translation":"بعدا"},{"text":"zuerst","translation":"اول"},{"text":"danach","translation":"بعدش"},{"text":"hier","translation":"اینجا"}]','Gut, dann probiere ich es gleich.','خوبه، پس همین الان امتحانش می کنم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_031=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_032 FROM words WHERE course_id=v_course AND lemma='gut' AND part_of_speech='adjective' AND translation='خوب' ORDER BY id LIMIT 1;
  IF v_w_032 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: gut | adjective'; END IF;

  SELECT id INTO v_w_033 FROM words WHERE course_id=v_course AND lemma='haben' AND part_of_speech='verb' AND translation='داشتن' ORDER BY id LIMIT 1;
  IF v_w_033 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: haben | verb'; END IF;

  SELECT id INTO v_w_034 FROM words WHERE course_id=v_course AND lemma='hier' AND part_of_speech='adverb' AND translation='اینجا' ORDER BY id LIMIT 1;
  IF v_w_034 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: hier | adverb'; END IF;

  SELECT id INTO v_w_035 FROM words WHERE course_id=v_course AND lemma='ich' AND part_of_speech='pronoun' AND translation='من' ORDER BY id LIMIT 1;
  IF v_w_035 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ich | pronoun'; END IF;

  SELECT id INTO v_w_036 FROM words WHERE course_id=v_course AND lemma='Ich weiß jetzt, wie ich das Bild einfügen kann.' AND part_of_speech='phrase' AND translation='حالا می دونم چطور می تونم تصویر رو وارد کنم.' ORDER BY id LIMIT 1;
  IF v_w_036 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ich weiß jetzt, wie ich das Bild einfügen kann.','Ich weiß jetzt, wie ich das Bild einfügen kann.','phrase','حالا می دونم چطور می تونم تصویر رو وارد کنم.',45,'{"type":"sentence_pattern"}','[{"text":"Ich weiß jetzt, wo die Datei ist.","translation":"حالا می دونم فایل کجاست."},{"text":"Zeigst du mir, wie ich die Seite öffne?","translation":"نشونم می دی چطور صفحه رو باز کنم؟"},{"text":"Ich kann das Bild später speichern.","translation":"می تونم تصویر رو بعدا ذخیره کنم."},{"text":"Wir fügen zuerst eine neue Seite ein.","translation":"اول یک صفحه جدید وارد می کنیم."},{"text":"Das Bild ist schon in der Datei.","translation":"تصویر از قبل داخل فایل هست."}]','Ich weiß jetzt, wie ich das Bild einfügen kann.','حالا می دونم چطور می تونم تصویر رو وارد کنم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_036=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_037 FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_037 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ja | interjection'; END IF;

  SELECT id INTO v_w_038 FROM words WHERE course_id=v_course AND lemma='jetzt' AND part_of_speech='adverb' AND translation='حالا / اکنون' ORDER BY id LIMIT 1;
  IF v_w_038 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: jetzt | adverb'; END IF;

  SELECT id INTO v_w_039 FROM words WHERE course_id=v_course AND lemma='Kannst du mir erklären, wie das geht?' AND part_of_speech='phrase' AND translation='می تونی توضیح بدی چطور انجام می شه؟' ORDER BY id LIMIT 1;
  IF v_w_039 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Kannst du mir erklären, wie das geht?','Kannst du mir erklären, wie das geht?','phrase','می تونی توضیح بدی چطور انجام می شه؟',44,'{"type":"sentence_pattern"}','[{"text":"Kannst du mir zeigen, wo die Datei ist?","translation":"می تونی نشونم بدی فایل کجاست؟"},{"text":"Ich weiß schon, wie das geht.","translation":"از قبل می دونم چطور انجام می شه."},{"text":"Du musst die Vorlage zuerst öffnen.","translation":"باید اول قالب رو باز کنی."},{"text":"Ich probiere den nächsten Schritt allein.","translation":"مرحله بعد رو تنهایی امتحان می کنم."},{"text":"Erklärst du mir das später?","translation":"بعدا برام توضیحش می دی؟"}]','Kannst du mir erklären, wie das geht?','می تونی توضیح بدی چطور انجام می شه؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_039=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_040 FROM words WHERE course_id=v_course AND lemma='Kannst du noch einmal sagen, was ich danach machen soll?' AND part_of_speech='phrase' AND translation='می تونی یک بار دیگه بگی بعدش باید چی کار کنم؟' ORDER BY id LIMIT 1;
  IF v_w_040 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Kannst du noch einmal sagen, was ich danach machen soll?','Kannst du noch einmal sagen, was ich danach machen soll?','phrase','می تونی یک بار دیگه بگی بعدش باید چی کار کنم؟',45,'{"type":"sentence_pattern"}','[{"text":"Kannst du noch einmal zeigen, wo ich klicken soll?","translation":"می تونی یک بار دیگه نشون بدی کجا باید کلیک کنم؟"},{"text":"Ich weiß, was ich zuerst machen muss.","translation":"می دونم اول باید چی کار کنم."},{"text":"Sagst du mir den letzten Schritt?","translation":"مرحله آخر رو بهم می گی؟"},{"text":"Danach kann ich den Ablauf allein erklären.","translation":"بعدش می تونم روند کار رو تنهایی توضیح بدم."},{"text":"Soll ich die Vorschau jetzt öffnen?","translation":"باید حالا پیش نمایش رو باز کنم؟"}]','Kannst du noch einmal sagen, was ich danach machen soll?','می تونی یک بار دیگه بگی بعدش باید چی کار کنم؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_040=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_041 FROM words WHERE course_id=v_course AND lemma='klar' AND part_of_speech='adjective' AND translation='روشن / مشخص' ORDER BY id LIMIT 1;
  IF v_w_041 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'klar','klar','adjective','روشن / مشخص',45,'{"type":"adjective"}','[{"text":"richtig","translation":"درست"},{"text":"falsch","translation":"نادرست"},{"text":"einfach","translation":"ساده"},{"text":"schwierig","translation":"سخت"},{"text":"neu","translation":"جدید"}]','Alles klar. Jetzt kann ich den Ablauf selbst erklären.','باشه. حالا خودم می تونم روند کار رو توضیح بدم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_041=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_042 FROM words WHERE course_id=v_course AND lemma='klein' AND part_of_speech='adjective' AND translation='کوچک' ORDER BY id LIMIT 1;
  IF v_w_042 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: klein | adjective'; END IF;

  SELECT id INTO v_w_043 FROM words WHERE course_id=v_course AND lemma='klicken' AND part_of_speech='verb' AND translation='کلیک کردن' ORDER BY id LIMIT 1;
  IF v_w_043 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'klicken','klicken','verb','کلیک کردن',44,'{"type":"verb"}','[{"text":"öffnen","translation":"باز کردن"},{"text":"schließen","translation":"بستن"},{"text":"speichern","translation":"ذخیره کردن"},{"text":"zeigen","translation":"نشان دادن"},{"text":"erklären","translation":"توضیح دادن"}]','Klick zuerst auf Bearbeiten.','اول روی ویرایش کلیک کن.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_043=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_044 FROM words WHERE course_id=v_course AND lemma='können' AND part_of_speech='verb' AND translation='توانستن / بتوان' ORDER BY id LIMIT 1;
  IF v_w_044 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: können | verb'; END IF;

  SELECT id INTO v_w_045 FROM words WHERE course_id=v_course AND lemma='letzte' AND part_of_speech='adjective' AND translation='آخرین' ORDER BY id LIMIT 1;
  IF v_w_045 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: letzte | adjective'; END IF;

  SELECT id INTO v_w_046 FROM words WHERE course_id=v_course AND lemma='machen' AND part_of_speech='verb' AND translation='انجام دادن' ORDER BY id LIMIT 1;
  IF v_w_046 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: machen | verb'; END IF;

  SELECT id INTO v_w_047 FROM words WHERE course_id=v_course AND lemma='mehrere' AND part_of_speech='determiner' AND translation='چند / چندین' ORDER BY id LIMIT 1;
  IF v_w_047 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'mehrere','mehrere','determiner','چند / چندین',44,'{"type":"determiner"}','[{"text":"einige","translation":"چند"},{"text":"viele","translation":"بسیاری"},{"text":"wenige","translation":"کم"},{"text":"alle","translation":"همه"},{"text":"jede","translation":"هر"}]','Da sind mehrere Zeichen.','اونجا چند تا علامت هست.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_047=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_048 FROM words WHERE course_id=v_course AND lemma='Menü' AND part_of_speech='noun' AND translation='منو' ORDER BY id LIMIT 1;
  IF v_w_048 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Menü','Menü','noun','منو',44,'{"gender":"neuter","plural":"Menüs"}','[{"text":"Datei","translation":"فایل"},{"text":"Bild","translation":"تصویر"},{"text":"Text","translation":"متن"},{"text":"Seite","translation":"صفحه"},{"text":"Vorlage","translation":"قالب"}]','Jetzt siehst du das Menü oben rechts.','حالا منو رو بالا سمت راست می بینی.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_048=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_049 FROM words WHERE course_id=v_course AND lemma='möchten' AND part_of_speech='verb' AND translation='خواستن / مایل بودن' ORDER BY id LIMIT 1;
  IF v_w_049 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: möchten | verb'; END IF;

  SELECT id INTO v_w_050 FROM words WHERE course_id=v_course AND lemma='müssen' AND part_of_speech='verb' AND translation='مجبور بودن / باید' ORDER BY id LIMIT 1;
  IF v_w_050 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: müssen | verb'; END IF;

  SELECT id INTO v_w_051 FROM words WHERE course_id=v_course AND lemma='nächste' AND part_of_speech='adjective' AND translation='بعدی' ORDER BY id LIMIT 1;
  IF v_w_051 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'nächste','nächste','adjective','بعدی',44,'{"type":"adjective"}','[{"text":"richtig","translation":"درست"},{"text":"falsch","translation":"نادرست"},{"text":"einfach","translation":"ساده"},{"text":"schwierig","translation":"سخت"},{"text":"neu","translation":"جدید"}]','Ja, aber ich verstehe den nächsten Schritt nicht.','آره، ولی مرحله بعد رو نمی فهمم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_051=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_052 FROM words WHERE course_id=v_course AND lemma='natürlich' AND part_of_speech='adverb' AND translation='حتما / البته' ORDER BY id LIMIT 1;
  IF v_w_052 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'natürlich','natürlich','adverb','حتما / البته',44,'{"type":"adverb"}','[{"text":"jetzt","translation":"حالا"},{"text":"später","translation":"بعدا"},{"text":"zuerst","translation":"اول"},{"text":"danach","translation":"بعدش"},{"text":"hier","translation":"اینجا"}]','Natürlich. Zuerst wählst du die richtige Datei aus.','حتما. اول فایل درست رو انتخاب می کنی.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_052=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_053 FROM words WHERE course_id=v_course AND lemma='neben' AND part_of_speech='preposition' AND translation='کنار' ORDER BY id LIMIT 1;
  IF v_w_053 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'neben','neben','preposition','کنار',44,'{"type":"preposition"}','[{"text":"auf","translation":"روی"},{"text":"in","translation":"در"},{"text":"vor","translation":"جلوی"},{"text":"hinter","translation":"پشت"},{"text":"an","translation":"کنار"}]','Hier, neben dem kleinen Stift.','اینجا، کنار مداد کوچیک.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_053=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_054 FROM words WHERE course_id=v_course AND lemma='nein' AND part_of_speech='interjection' AND translation='نه' ORDER BY id LIMIT 1;
  IF v_w_054 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: nein | interjection'; END IF;

  SELECT id INTO v_w_055 FROM words WHERE course_id=v_course AND lemma='neu' AND part_of_speech='adjective' AND translation='جدید / تازه' ORDER BY id LIMIT 1;
  IF v_w_055 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: neu | adjective'; END IF;

  SELECT id INTO v_w_056 FROM words WHERE course_id=v_course AND lemma='nicht' AND part_of_speech='particle' AND translation='نه / نیست' ORDER BY id LIMIT 1;
  IF v_w_056 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: nicht | particle'; END IF;

  SELECT id INTO v_w_057 FROM words WHERE course_id=v_course AND lemma='noch' AND part_of_speech='adverb' AND translation='هنوز' ORDER BY id LIMIT 1;
  IF v_w_057 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: noch | adverb'; END IF;

  SELECT id INTO v_w_058 FROM words WHERE course_id=v_course AND lemma='ob' AND part_of_speech='conjunction' AND translation='آیا / اینکه' ORDER BY id LIMIT 1;
  IF v_w_058 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'ob','ob','conjunction','آیا / اینکه',45,'{"type":"conjunction"}','[{"text":"und","translation":"و"},{"text":"aber","translation":"اما"},{"text":"weil","translation":"چون"},{"text":"wenn","translation":"اگر"},{"text":"dass","translation":"که"}]','Prüfe, ob Text und Bild richtig sind.','بررسی کن که متن و تصویر درست باشند.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_058=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_059 FROM words WHERE course_id=v_course AND lemma='oben' AND part_of_speech='adverb' AND translation='بالا / طبقه بالا' ORDER BY id LIMIT 1;
  IF v_w_059 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: oben | adverb'; END IF;

  SELECT id INTO v_w_060 FROM words WHERE course_id=v_course AND lemma='öffnen' AND part_of_speech='verb' AND translation='باز کردن' ORDER BY id LIMIT 1;
  IF v_w_060 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: öffnen | verb'; END IF;

  SELECT id INTO v_w_061 FROM words WHERE course_id=v_course AND lemma='probieren' AND part_of_speech='verb' AND translation='امتحان کردن' ORDER BY id LIMIT 1;
  IF v_w_061 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'probieren','probieren','verb','امتحان کردن',44,'{"type":"verb"}','[{"text":"öffnen","translation":"باز کردن"},{"text":"schließen","translation":"بستن"},{"text":"speichern","translation":"ذخیره کردن"},{"text":"klicken","translation":"کلیک کردن"},{"text":"zeigen","translation":"نشان دادن"}]','Gut, dann probiere ich es gleich.','خوبه، پس همین الان امتحانش می کنم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_061=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_062 FROM words WHERE course_id=v_course AND lemma='prüfen' AND part_of_speech='verb' AND translation='بررسی کردن' ORDER BY id LIMIT 1;
  IF v_w_062 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: prüfen | verb'; END IF;

  SELECT id INTO v_w_063 FROM words WHERE course_id=v_course AND lemma='rechts' AND part_of_speech='adverb' AND translation='سمت راست' ORDER BY id LIMIT 1;
  IF v_w_063 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'rechts','rechts','adverb','سمت راست',44,'{"type":"adverb"}','[{"text":"jetzt","translation":"حالا"},{"text":"später","translation":"بعدا"},{"text":"zuerst","translation":"اول"},{"text":"danach","translation":"بعدش"},{"text":"hier","translation":"اینجا"}]','Jetzt siehst du das Menü oben rechts.','حالا منو رو بالا سمت راست می بینی.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_063=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_064 FROM words WHERE course_id=v_course AND lemma='richtig' AND part_of_speech='adjective' AND translation='درست' ORDER BY id LIMIT 1;
  IF v_w_064 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'richtig','richtig','adjective','درست',44,'{"type":"adjective"}','[{"text":"falsch","translation":"نادرست"},{"text":"einfach","translation":"ساده"},{"text":"schwierig","translation":"سخت"},{"text":"neu","translation":"جدید"},{"text":"klein","translation":"کوچک"}]','Natürlich. Zuerst wählst du die richtige Datei aus.','حتما. اول فایل درست رو انتخاب می کنی.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_064=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_065 FROM words WHERE course_id=v_course AND lemma='sagen' AND part_of_speech='verb' AND translation='گفتن' ORDER BY id LIMIT 1;
  IF v_w_065 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sagen | verb'; END IF;

  SELECT id INTO v_w_066 FROM words WHERE course_id=v_course AND lemma='schon' AND part_of_speech='adverb' AND translation='قبلا / تا حالا' ORDER BY id LIMIT 1;
  IF v_w_066 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: schon | adverb'; END IF;

  SELECT id INTO v_w_067 FROM words WHERE course_id=v_course AND lemma='Schritt' AND part_of_speech='noun' AND translation='مرحله / گام' ORDER BY id LIMIT 1;
  IF v_w_067 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Schritt','Schritt','noun','مرحله / گام',44,'{"gender":"masculine","plural":"Schritte"}','[{"text":"Datei","translation":"فایل"},{"text":"Bild","translation":"تصویر"},{"text":"Text","translation":"متن"},{"text":"Seite","translation":"صفحه"},{"text":"Menü","translation":"منو"}]','Ja, aber ich verstehe den nächsten Schritt nicht.','آره، ولی مرحله بعد رو نمی فهمم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_067=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_068 FROM words WHERE course_id=v_course AND lemma='sehen' AND part_of_speech='verb' AND translation='دیدن' ORDER BY id LIMIT 1;
  IF v_w_068 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'sehen','sehen','verb','دیدن',44,'{"type":"verb"}','[{"text":"öffnen","translation":"باز کردن"},{"text":"schließen","translation":"بستن"},{"text":"speichern","translation":"ذخیره کردن"},{"text":"klicken","translation":"کلیک کردن"},{"text":"zeigen","translation":"نشان دادن"}]','Jetzt siehst du das Menü oben rechts.','حالا منو رو بالا سمت راست می بینی.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_068=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_069 FROM words WHERE course_id=v_course AND lemma='sein' AND part_of_speech='verb' AND translation='بودن' ORDER BY id LIMIT 1;
  IF v_w_069 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sein | verb'; END IF;

  SELECT id INTO v_w_070 FROM words WHERE course_id=v_course AND lemma='Seite' AND part_of_speech='noun' AND translation='صفحه' ORDER BY id LIMIT 1;
  IF v_w_070 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Seite | noun'; END IF;

  SELECT id INTO v_w_071 FROM words WHERE course_id=v_course AND lemma='selbst' AND part_of_speech='adverb' AND translation='خود / شخصا' ORDER BY id LIMIT 1;
  IF v_w_071 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'selbst','selbst','adverb','خود / شخصا',45,'{"type":"adverb"}','[{"text":"jetzt","translation":"حالا"},{"text":"später","translation":"بعدا"},{"text":"zuerst","translation":"اول"},{"text":"danach","translation":"بعدش"},{"text":"hier","translation":"اینجا"}]','Alles klar. Jetzt kann ich den Ablauf selbst erklären.','باشه. حالا خودم می تونم روند کار رو توضیح بدم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_071=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_072 FROM words WHERE course_id=v_course AND lemma='setzen' AND part_of_speech='verb' AND translation='گذاشتن / قرار دادن' ORDER BY id LIMIT 1;
  IF v_w_072 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'setzen','setzen','verb','گذاشتن / قرار دادن',45,'{"type":"verb"}','[{"text":"öffnen","translation":"باز کردن"},{"text":"schließen","translation":"بستن"},{"text":"speichern","translation":"ذخیره کردن"},{"text":"klicken","translation":"کلیک کردن"},{"text":"zeigen","translation":"نشان دادن"}]','Nein, setz den Cursor an die richtige Stelle.','نه، نشانگر رو جای درست بذار.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_072=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_073 FROM words WHERE course_id=v_course AND lemma='sollen' AND part_of_speech='verb' AND translation='باید / قرار است' ORDER BY id LIMIT 1;
  IF v_w_073 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sollen | verb'; END IF;

  SELECT id INTO v_w_074 FROM words WHERE course_id=v_course AND lemma='speichern' AND part_of_speech='verb' AND translation='ذخیره کردن' ORDER BY id LIMIT 1;
  IF v_w_074 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'speichern','speichern','verb','ذخیره کردن',45,'{"type":"verb"}','[{"text":"öffnen","translation":"باز کردن"},{"text":"schließen","translation":"بستن"},{"text":"klicken","translation":"کلیک کردن"},{"text":"zeigen","translation":"نشان دادن"},{"text":"erklären","translation":"توضیح دادن"}]','Genau, und danach speicherst du die Datei.','دقیقا، بعدش فایل رو ذخیره می کنی.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_074=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_075 FROM words WHERE course_id=v_course AND lemma='Stelle' AND part_of_speech='noun' AND translation='محل / جای' ORDER BY id LIMIT 1;
  IF v_w_075 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Stelle','Stelle','noun','محل / جای',45,'{"gender":"feminine","plural":"Stellen"}','[{"text":"Datei","translation":"فایل"},{"text":"Bild","translation":"تصویر"},{"text":"Text","translation":"متن"},{"text":"Seite","translation":"صفحه"},{"text":"Menü","translation":"منو"}]','Nein, setz den Cursor an die richtige Stelle.','نه، نشانگر رو جای درست بذار.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_075=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_076 FROM words WHERE course_id=v_course AND lemma='Stift' AND part_of_speech='noun' AND translation='مداد / قلم' ORDER BY id LIMIT 1;
  IF v_w_076 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Stift','Stift','noun','مداد / قلم',44,'{"gender":"masculine","plural":"Stifte"}','[{"text":"Datei","translation":"فایل"},{"text":"Bild","translation":"تصویر"},{"text":"Text","translation":"متن"},{"text":"Seite","translation":"صفحه"},{"text":"Menü","translation":"منو"}]','Hier, neben dem kleinen Stift.','اینجا، کنار مداد کوچیک.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_076=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_077 FROM words WHERE course_id=v_course AND lemma='Text' AND part_of_speech='noun' AND translation='متن' ORDER BY id LIMIT 1;
  IF v_w_077 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Text | noun'; END IF;

  SELECT id INTO v_w_078 FROM words WHERE course_id=v_course AND lemma='und' AND part_of_speech='conjunction' AND translation='و' ORDER BY id LIMIT 1;
  IF v_w_078 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: und | conjunction'; END IF;

  SELECT id INTO v_w_079 FROM words WHERE course_id=v_course AND lemma='verstehen' AND part_of_speech='verb' AND translation='فهمیدن / متوجه شدن' ORDER BY id LIMIT 1;
  IF v_w_079 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: verstehen | verb'; END IF;

  SELECT id INTO v_w_080 FROM words WHERE course_id=v_course AND lemma='versuchen' AND part_of_speech='verb' AND translation='تلاش کردن / امتحان کردن' ORDER BY id LIMIT 1;
  IF v_w_080 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'versuchen','versuchen','verb','تلاش کردن / امتحان کردن',45,'{"type":"verb"}','[{"text":"öffnen","translation":"باز کردن"},{"text":"schließen","translation":"بستن"},{"text":"speichern","translation":"ذخیره کردن"},{"text":"klicken","translation":"کلیک کردن"},{"text":"zeigen","translation":"نشان دادن"}]','Ja, ich versuche es.','آره، امتحان می کنم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_080=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_081 FROM words WHERE course_id=v_course AND lemma='vorher' AND part_of_speech='adverb' AND translation='قبلش / پیش از آن' ORDER BY id LIMIT 1;
  IF v_w_081 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'vorher','vorher','adverb','قبلش / پیش از آن',45,'{"type":"adverb"}','[{"text":"jetzt","translation":"حالا"},{"text":"später","translation":"بعدا"},{"text":"zuerst","translation":"اول"},{"text":"danach","translation":"بعدش"},{"text":"hier","translation":"اینجا"}]','Muss ich vorher eine neue Seite erstellen?','باید قبلش یک صفحه جدید بسازم؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_081=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_082 FROM words WHERE course_id=v_course AND lemma='Vorlage' AND part_of_speech='noun' AND translation='قالب' ORDER BY id LIMIT 1;
  IF v_w_082 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Vorlage','Vorlage','noun','قالب',44,'{"gender":"feminine","plural":"Vorlagen"}','[{"text":"Datei","translation":"فایل"},{"text":"Bild","translation":"تصویر"},{"text":"Text","translation":"متن"},{"text":"Seite","translation":"صفحه"},{"text":"Menü","translation":"منو"}]','Hast du die neue Vorlage schon geöffnet?','قالب جدید رو باز کردی؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_082=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_083 FROM words WHERE course_id=v_course AND lemma='Vorschau' AND part_of_speech='noun' AND translation='پیش نمایش' ORDER BY id LIMIT 1;
  IF v_w_083 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Vorschau','Vorschau','noun','پیش نمایش',45,'{"gender":"feminine","plural":"Vorschauen"}','[{"text":"Datei","translation":"فایل"},{"text":"Bild","translation":"تصویر"},{"text":"Text","translation":"متن"},{"text":"Seite","translation":"صفحه"},{"text":"Menü","translation":"منو"}]','Öffne jetzt die Vorschau.','حالا پیش نمایش رو باز کن.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_083=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_084 FROM words WHERE course_id=v_course AND lemma='was' AND part_of_speech='pronoun' AND translation='چی / چه' ORDER BY id LIMIT 1;
  IF v_w_084 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: was | pronoun'; END IF;

  SELECT id INTO v_w_085 FROM words WHERE course_id=v_course AND lemma='wie' AND part_of_speech='adverb' AND translation='چطور / چگونه' ORDER BY id LIMIT 1;
  IF v_w_085 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wie | adverb'; END IF;

  SELECT id INTO v_w_086 FROM words WHERE course_id=v_course AND lemma='wir' AND part_of_speech='pronoun' AND translation='ما' ORDER BY id LIMIT 1;
  IF v_w_086 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wir | pronoun'; END IF;

  SELECT id INTO v_w_087 FROM words WHERE course_id=v_course AND lemma='wissen' AND part_of_speech='verb' AND translation='دانستن' ORDER BY id LIMIT 1;
  IF v_w_087 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wissen | verb'; END IF;

  SELECT id INTO v_w_088 FROM words WHERE course_id=v_course AND lemma='wo' AND part_of_speech='adverb' AND translation='کجا' ORDER BY id LIMIT 1;
  IF v_w_088 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wo | adverb'; END IF;

  SELECT id INTO v_w_089 FROM words WHERE course_id=v_course AND lemma='Zeichen' AND part_of_speech='noun' AND translation='علامت' ORDER BY id LIMIT 1;
  IF v_w_089 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Zeichen','Zeichen','noun','علامت',44,'{"gender":"neuter","plural":"Zeichen"}','[{"text":"Datei","translation":"فایل"},{"text":"Bild","translation":"تصویر"},{"text":"Text","translation":"متن"},{"text":"Seite","translation":"صفحه"},{"text":"Menü","translation":"منو"}]','Da sind mehrere Zeichen.','اونجا چند تا علامت هست.',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_089=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_090 FROM words WHERE course_id=v_course AND lemma='zeigen' AND part_of_speech='verb' AND translation='نشان دادن' ORDER BY id LIMIT 1;
  IF v_w_090 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'zeigen','zeigen','verb','نشان دادن',44,'{"type":"verb"}','[{"text":"öffnen","translation":"باز کردن"},{"text":"schließen","translation":"بستن"},{"text":"speichern","translation":"ذخیره کردن"},{"text":"klicken","translation":"کلیک کردن"},{"text":"erklären","translation":"توضیح دادن"}]','Zeigst du mir, wo ich klicken muss?','بهم نشون می دی کجا باید کلیک کنم؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_090=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_091 FROM words WHERE course_id=v_course AND lemma='Zeigst du mir, wo ich klicken muss?' AND part_of_speech='phrase' AND translation='بهم نشون می دی کجا باید کلیک کنم؟' ORDER BY id LIMIT 1;
  IF v_w_091 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Zeigst du mir, wo ich klicken muss?','Zeigst du mir, wo ich klicken muss?','phrase','بهم نشون می دی کجا باید کلیک کنم؟',44,'{"type":"sentence_pattern"}','[{"text":"Sagst du mir, was ich öffnen soll?","translation":"بهم می گی چی رو باید باز کنم؟"},{"text":"Ich klicke oben auf das Menü.","translation":"بالا روی منو کلیک می کنم."},{"text":"Zeigst du mir die richtige Datei?","translation":"فایل درست رو نشونم می دی؟"},{"text":"Wo ist der kleine Stift?","translation":"مداد کوچیک کجاست؟"},{"text":"Ich habe das Zeichen schon gefunden.","translation":"علامت رو از قبل پیدا کردم."}]','Zeigst du mir, wo ich klicken muss?','بهم نشون می دی کجا باید کلیک کنم؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":87}');
    SET v_w_091=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_092 FROM words WHERE course_id=v_course AND lemma='zuerst' AND part_of_speech='adverb' AND translation='اول / ابتدا' ORDER BY id LIMIT 1;
  IF v_w_092 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: zuerst | adverb'; END IF;

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_martin,v_c_anna,'Eine neue Vorlage','یک قالب جدید','Martin zeigt Anna nach dem fertigen Präsentationsentwurf, wie sie mit einer neuen Vorlage weiterarbeitet.','مارتین بعد از آماده شدن پیش نویس ارائه به آنا نشان می دهد چطور کار را با یک قالب جدید ادامه بدهد.','story','anna-martin-b1-project',5,44,150,1,'validated','{"relationship":"coworkers","context":"explain-presentation-workflow","cefr":"B1","storyArc":"ask-observe-apply-explain"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_martin,1,'character','Hast du die neue Vorlage schon geöffnet?','قالب جدید رو باز کردی؟',44,NULL,NULL,NULL,NULL,'[{"form":"present_2sg","lemma":"haben","partOfSpeech":"verb","surface":"Hast","translation":"داشتن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"form":"accusative_feminine","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"form":"accusative_feminine","lemma":"neu","partOfSpeech":"adjective","surface":"neue","translation":"جدید / تازه"},{"lemma":"Vorlage","partOfSpeech":"noun","surface":"Vorlage","translation":"قالب"},{"lemma":"schon","partOfSpeech":"adverb","surface":"schon","translation":"قبلا / تا حالا"},{"form":"past_participle","lemma":"öffnen","partOfSpeech":"verb","suffix":"?","surface":"geöffnet","translation":"باز کردن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,2,'learner','Ja, aber ich verstehe den nächsten Schritt nicht.','آره، ولی مرحله بعد رو نمی فهمم.',44,NULL,NULL,'ja aber ich verstehe den nächsten schritt nicht',NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":",","surface":"Ja","translation":"بله / آره"},{"lemma":"aber","partOfSpeech":"conjunction","surface":"aber","translation":"اما"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"form":"present_1sg","lemma":"verstehen","partOfSpeech":"verb","surface":"verstehe","translation":"فهمیدن / متوجه شدن"},{"form":"accusative_masculine","lemma":"der","partOfSpeech":"article","surface":"den","translation":"حرف تعریف"},{"form":"accusative_masculine","lemma":"nächste","partOfSpeech":"adjective","surface":"nächsten","translation":"بعدی"},{"lemma":"Schritt","partOfSpeech":"noun","surface":"Schritt","translation":"مرحله / گام"},{"lemma":"nicht","partOfSpeech":"particle","suffix":".","surface":"nicht","translation":"نه / نیست"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_martin,3,'character','Was möchtest du wissen?','چی می خوای بدونی؟',44,NULL,NULL,NULL,NULL,'[{"lemma":"was","partOfSpeech":"pronoun","surface":"Was","translation":"چی / چه"},{"form":"present_2sg","lemma":"möchten","partOfSpeech":"verb","surface":"möchtest","translation":"خواستن / مایل بودن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"lemma":"wissen","partOfSpeech":"verb","suffix":"?","surface":"wissen","translation":"دانستن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,4,'learner','Kannst du mir erklären, wie das geht?','می تونی توضیح بدی چطور انجام می شه؟',44,NULL,NULL,'kannst du mir erklären wie das geht',NULL,'[{"form":"present_2sg","lemma":"können","partOfSpeech":"verb","surface":"Kannst","translation":"توانستن / بتوان"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"form":"dative_1sg","lemma":"ich","meaning":"به من","partOfSpeech":"pronoun","surface":"mir","translation":"من"},{"lemma":"erklären","partOfSpeech":"verb","surface":"erklären","translation":"توضیح دادن"},{"lemma":"wie","partOfSpeech":"adverb","surface":"wie","translation":"چطور / چگونه"},{"lemma":"das","partOfSpeech":"pronoun","surface":"das","translation":"این / آن"},{"form":"present_3sg","lemma":"gehen","meaning":"انجام شدن","partOfSpeech":"verb","suffix":"?","surface":"geht","translation":"رفتن"}]','پرسش غیرمستقیم با wie','بعد از یک فعل پرسشی، بخش دوم با wie می آید و فعل صرف شده در پایان قرار می گیرد.','{"pattern":"Kannst du ... erklären, wie + subject + verb?"}','{"cefr":"B1"}');
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_martin,5,'character','Natürlich. Zuerst wählst du die richtige Datei aus.','حتما. اول فایل درست رو انتخاب می کنی.',44,NULL,NULL,NULL,NULL,'[{"lemma":"natürlich","partOfSpeech":"adverb","suffix":".","surface":"Natürlich","translation":"حتما / البته"},{"lemma":"zuerst","partOfSpeech":"adverb","surface":"Zuerst","translation":"اول / ابتدا"},{"form":"present_2sg","lemma":"auswählen","partOfSpeech":"verb","surface":"wählst","translation":"انتخاب کردن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"form":"accusative_feminine","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"form":"accusative_feminine","lemma":"richtig","partOfSpeech":"adjective","surface":"richtige","translation":"درست"},{"lemma":"Datei","partOfSpeech":"noun","surface":"Datei","translation":"فایل"},{"form":"separable_prefix","lemma":"auswählen","partOfSpeech":"verb","suffix":".","surface":"aus","translation":"انتخاب کردن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,6,'learner','Gut, dann probiere ich es gleich.','خوبه، پس همین الان امتحانش می کنم.',44,NULL,NULL,'gut dann probiere ich es gleich',NULL,'[{"lemma":"gut","partOfSpeech":"adjective","suffix":",","surface":"Gut","translation":"خوب"},{"lemma":"dann","partOfSpeech":"adverb","surface":"dann","translation":"بعد / سپس"},{"form":"present_1sg","lemma":"probieren","partOfSpeech":"verb","surface":"probiere","translation":"امتحان کردن"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"lemma":"es","partOfSpeech":"pronoun","surface":"es","translation":"آن / این"},{"lemma":"gleich","partOfSpeech":"adverb","suffix":".","surface":"gleich","translation":"همین الان"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_martin,v_c_anna,'Wo muss ich klicken?','کجا باید کلیک کنم؟','Martin führt Anna durch das Bearbeitungsmenü und zeigt ihr die richtige Schaltfläche.','مارتین آنا را در منوی ویرایش راهنمایی می کند و دکمه درست را به او نشان می دهد.','story','anna-martin-b1-project',6,44,150,2,'validated','{"relationship":"coworkers","context":"explain-presentation-workflow","cefr":"B1","storyArc":"ask-observe-apply-explain"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_martin,1,'character','Jetzt siehst du das Menü oben rechts.','حالا منو رو بالا سمت راست می بینی.',44,NULL,NULL,NULL,NULL,'[{"lemma":"jetzt","partOfSpeech":"adverb","surface":"Jetzt","translation":"حالا / اکنون"},{"form":"present_2sg","lemma":"sehen","partOfSpeech":"verb","surface":"siehst","translation":"دیدن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"form":"accusative_neuter","lemma":"der","partOfSpeech":"article","surface":"das","translation":"حرف تعریف"},{"lemma":"Menü","partOfSpeech":"noun","surface":"Menü","translation":"منو"},{"lemma":"oben","partOfSpeech":"adverb","surface":"oben","translation":"بالا / طبقه بالا"},{"lemma":"rechts","partOfSpeech":"adverb","suffix":".","surface":"rechts","translation":"سمت راست"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,2,'learner','Da sind mehrere Zeichen.','اونجا چند تا علامت هست.',44,NULL,NULL,'da sind mehrere zeichen',NULL,'[{"lemma":"da","partOfSpeech":"adverb","surface":"Da","translation":"آنجا"},{"form":"present_plural","lemma":"sein","partOfSpeech":"verb","surface":"sind","translation":"بودن"},{"lemma":"mehrere","partOfSpeech":"determiner","surface":"mehrere","translation":"چند / چندین"},{"form":"plural","lemma":"Zeichen","partOfSpeech":"noun","suffix":".","surface":"Zeichen","translation":"علامت"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_martin,3,'character','Klick zuerst auf Bearbeiten.','اول روی ویرایش کلیک کن.',44,NULL,NULL,NULL,NULL,'[{"form":"imperative_2sg","lemma":"klicken","partOfSpeech":"verb","surface":"Klick","translation":"کلیک کردن"},{"lemma":"zuerst","partOfSpeech":"adverb","surface":"zuerst","translation":"اول / ابتدا"},{"lemma":"auf","partOfSpeech":"preposition","surface":"auf","translation":"روی / برای"},{"form":"infinitive_used_as_label","lemma":"bearbeiten","partOfSpeech":"verb","suffix":".","surface":"Bearbeiten","translation":"ویرایش کردن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,4,'learner','Zeigst du mir, wo ich klicken muss?','بهم نشون می دی کجا باید کلیک کنم؟',44,NULL,NULL,'zeigst du mir wo ich klicken muss',NULL,'[{"form":"present_2sg","lemma":"zeigen","partOfSpeech":"verb","surface":"Zeigst","translation":"نشان دادن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"form":"dative_1sg","lemma":"ich","meaning":"به من","partOfSpeech":"pronoun","surface":"mir","translation":"من"},{"lemma":"wo","partOfSpeech":"adverb","surface":"wo","translation":"کجا"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"lemma":"klicken","partOfSpeech":"verb","surface":"klicken","translation":"کلیک کردن"},{"form":"present_1sg","lemma":"müssen","partOfSpeech":"verb","suffix":"?","surface":"muss","translation":"مجبور بودن / باید"}]','پرسش غیرمستقیم با wo','در پرسش غیرمستقیم با wo، فعل صرف شده به پایان بخش پرسشی می رود.','{"pattern":"Zeigst du mir, wo + subject + infinitive + modal?"}','{"cefr":"B1"}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_martin,5,'character','Hier, neben dem kleinen Stift.','اینجا، کنار مداد کوچیک.',44,NULL,NULL,NULL,NULL,'[{"lemma":"hier","partOfSpeech":"adverb","suffix":",","surface":"Hier","translation":"اینجا"},{"lemma":"neben","partOfSpeech":"preposition","surface":"neben","translation":"کنار"},{"form":"dative_masculine","lemma":"der","partOfSpeech":"article","surface":"dem","translation":"حرف تعریف"},{"form":"dative_masculine","lemma":"klein","partOfSpeech":"adjective","surface":"kleinen","translation":"کوچک"},{"lemma":"Stift","partOfSpeech":"noun","suffix":".","surface":"Stift","translation":"مداد / قلم"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,6,'learner','Ah, jetzt habe ich es gefunden.','آهان، حالا پیداش کردم.',44,NULL,NULL,'ah jetzt habe ich es gefunden',NULL,'[{"lemma":"ah","partOfSpeech":"interjection","suffix":",","surface":"Ah","translation":"آهان"},{"lemma":"jetzt","partOfSpeech":"adverb","surface":"jetzt","translation":"حالا / اکنون"},{"form":"present_1sg","lemma":"haben","partOfSpeech":"verb","surface":"habe","translation":"داشتن"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"lemma":"es","partOfSpeech":"pronoun","surface":"es","translation":"آن / این"},{"form":"past_participle","lemma":"finden","partOfSpeech":"verb","suffix":".","surface":"gefunden","translation":"پیدا کردن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_12=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_martin,v_c_anna,'Ein Bild einfügen','وارد کردن تصویر','Anna wendet Martins Erklärung an und fügt selbstständig ein Bild in die Präsentation ein.','آنا توضیح مارتین را اجرا می کند و خودش یک تصویر را وارد ارائه می کند.','story','anna-martin-b1-project',7,45,150,3,'validated','{"relationship":"coworkers","context":"explain-presentation-workflow","cefr":"B1","storyArc":"ask-observe-apply-explain"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_martin,1,'character','Jetzt fügen wir das Bild ein.','حالا تصویر رو وارد می کنیم.',45,NULL,NULL,NULL,NULL,'[{"lemma":"jetzt","partOfSpeech":"adverb","surface":"Jetzt","translation":"حالا / اکنون"},{"form":"present_plural","lemma":"einfügen","partOfSpeech":"verb","surface":"fügen","translation":"وارد کردن / افزودن"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"form":"accusative_neuter","lemma":"der","partOfSpeech":"article","surface":"das","translation":"حرف تعریف"},{"lemma":"Bild","partOfSpeech":"noun","surface":"Bild","translation":"تصویر"},{"form":"separable_prefix","lemma":"einfügen","partOfSpeech":"verb","suffix":".","surface":"ein","translation":"وارد کردن / افزودن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,2,'learner','Muss ich vorher eine neue Seite erstellen?','باید قبلش یک صفحه جدید بسازم؟',45,NULL,NULL,'muss ich vorher eine neue seite erstellen',NULL,'[{"form":"present_1sg","lemma":"müssen","partOfSpeech":"verb","surface":"Muss","translation":"مجبور بودن / باید"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"lemma":"vorher","partOfSpeech":"adverb","surface":"vorher","translation":"قبلش / پیش از آن"},{"form":"accusative_feminine","lemma":"ein","partOfSpeech":"article","surface":"eine","translation":"یک / حرف تعریف نامعین"},{"form":"accusative_feminine","lemma":"neu","partOfSpeech":"adjective","surface":"neue","translation":"جدید / تازه"},{"lemma":"Seite","partOfSpeech":"noun","surface":"Seite","translation":"صفحه"},{"lemma":"erstellen","partOfSpeech":"verb","suffix":"?","surface":"erstellen","translation":"ایجاد کردن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_martin,3,'character','Nein, setz den Cursor an die richtige Stelle.','نه، نشانگر رو جای درست بذار.',45,NULL,NULL,NULL,NULL,'[{"lemma":"nein","partOfSpeech":"interjection","suffix":",","surface":"Nein","translation":"نه"},{"form":"imperative_2sg","lemma":"setzen","partOfSpeech":"verb","surface":"setz","translation":"گذاشتن / قرار دادن"},{"form":"accusative_masculine","lemma":"der","partOfSpeech":"article","surface":"den","translation":"حرف تعریف"},{"lemma":"Cursor","partOfSpeech":"noun","surface":"Cursor","translation":"نشانگر"},{"lemma":"an","meaning":"کنار / در محل","partOfSpeech":"preposition","surface":"an","translation":"در / در روز"},{"form":"accusative_feminine","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"form":"accusative_feminine","lemma":"richtig","partOfSpeech":"adjective","surface":"richtige","translation":"درست"},{"lemma":"Stelle","partOfSpeech":"noun","suffix":".","surface":"Stelle","translation":"محل / جای"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,4,'learner','Ich weiß jetzt, wie ich das Bild einfügen kann.','حالا می دونم چطور می تونم تصویر رو وارد کنم.',45,NULL,NULL,'ich weiß jetzt wie ich das bild einfügen kann',NULL,'[{"lemma":"ich","partOfSpeech":"pronoun","surface":"Ich","translation":"من"},{"form":"present_1sg","lemma":"wissen","partOfSpeech":"verb","surface":"weiß","translation":"دانستن"},{"lemma":"jetzt","partOfSpeech":"adverb","surface":"jetzt","translation":"حالا / اکنون"},{"lemma":"wie","partOfSpeech":"adverb","surface":"wie","translation":"چطور / چگونه"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"form":"accusative_neuter","lemma":"der","partOfSpeech":"article","surface":"das","translation":"حرف تعریف"},{"lemma":"Bild","partOfSpeech":"noun","surface":"Bild","translation":"تصویر"},{"lemma":"einfügen","partOfSpeech":"verb","surface":"einfügen","translation":"وارد کردن / افزودن"},{"form":"present_1sg","lemma":"können","partOfSpeech":"verb","suffix":".","surface":"kann","translation":"توانستن / بتوان"}]','پرسش غیرمستقیم با فعل وجهی','در بخش غیرمستقیم با wie، مصدر پیش از فعل وجهی صرف شده در پایان می آید.','{"pattern":"wie + subject + object + infinitive + modal"}','{"cefr":"B1"}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_martin,5,'character','Genau, und danach speicherst du die Datei.','دقیقا، بعدش فایل رو ذخیره می کنی.',45,NULL,NULL,NULL,NULL,'[{"lemma":"genau","partOfSpeech":"adverb","suffix":",","surface":"Genau","translation":"دقیقا"},{"lemma":"und","partOfSpeech":"conjunction","surface":"und","translation":"و"},{"lemma":"danach","partOfSpeech":"adverb","surface":"danach","translation":"بعد از آن / بعدش"},{"form":"present_2sg","lemma":"speichern","partOfSpeech":"verb","surface":"speicherst","translation":"ذخیره کردن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"form":"accusative_feminine","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"lemma":"Datei","partOfSpeech":"noun","suffix":".","surface":"Datei","translation":"فایل"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,6,'learner','Das ist einfacher, als ich gedacht habe.','از چیزی که فکر می کردم راحت تره.',45,NULL,NULL,'das ist einfacher als ich gedacht habe',NULL,'[{"lemma":"das","partOfSpeech":"pronoun","surface":"Das","translation":"این / آن"},{"form":"present_3sg","lemma":"sein","partOfSpeech":"verb","surface":"ist","translation":"بودن"},{"form":"comparative","lemma":"einfach","partOfSpeech":"adjective","suffix":",","surface":"einfacher","translation":"آسان / ساده"},{"lemma":"als","partOfSpeech":"conjunction","surface":"als","translation":"از / نسبت به"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"form":"past_participle","lemma":"denken","partOfSpeech":"verb","surface":"gedacht","translation":"فکر کردن"},{"form":"present_1sg","lemma":"haben","partOfSpeech":"verb","suffix":".","surface":"habe","translation":"داشتن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_18=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_martin,v_c_anna,'Den Ablauf selbst erklären','توضیح دادن روند کار','Anna wiederholt den letzten Schritt, prüft das Ergebnis und kann den Ablauf danach selbst erklären.','آنا مرحله آخر را تکرار می کند، نتیجه را بررسی می کند و بعد خودش می تواند روند کار را توضیح بدهد.','story','anna-martin-b1-project',8,45,150,4,'validated','{"relationship":"coworkers","context":"explain-presentation-workflow","cefr":"B1","storyArc":"ask-observe-apply-explain"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_martin,1,'character','Möchtest du den letzten Schritt allein machen?','می خوای مرحله آخر رو تنهایی انجام بدی؟',45,NULL,NULL,NULL,NULL,'[{"form":"present_2sg","lemma":"möchten","partOfSpeech":"verb","surface":"Möchtest","translation":"خواستن / مایل بودن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"form":"accusative_masculine","lemma":"der","partOfSpeech":"article","surface":"den","translation":"حرف تعریف"},{"form":"accusative_masculine","lemma":"letzte","partOfSpeech":"adjective","surface":"letzten","translation":"آخرین"},{"lemma":"Schritt","partOfSpeech":"noun","surface":"Schritt","translation":"مرحله / گام"},{"lemma":"allein","partOfSpeech":"adverb","surface":"allein","translation":"تنهایی"},{"lemma":"machen","partOfSpeech":"verb","suffix":"?","surface":"machen","translation":"انجام دادن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_19=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,2,'learner','Ja, ich versuche es.','آره، امتحان می کنم.',45,NULL,NULL,'ja ich versuche es',NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":",","surface":"Ja","translation":"بله / آره"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"form":"present_1sg","lemma":"versuchen","partOfSpeech":"verb","surface":"versuche","translation":"تلاش کردن / امتحان کردن"},{"lemma":"es","partOfSpeech":"pronoun","suffix":".","surface":"es","translation":"آن / این"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_20=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_martin,3,'character','Öffne jetzt die Vorschau.','حالا پیش نمایش رو باز کن.',45,NULL,NULL,NULL,NULL,'[{"form":"imperative_2sg","lemma":"öffnen","partOfSpeech":"verb","surface":"Öffne","translation":"باز کردن"},{"lemma":"jetzt","partOfSpeech":"adverb","surface":"jetzt","translation":"حالا / اکنون"},{"form":"accusative_feminine","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"lemma":"Vorschau","partOfSpeech":"noun","suffix":".","surface":"Vorschau","translation":"پیش نمایش"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_21=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,4,'learner','Kannst du noch einmal sagen, was ich danach machen soll?','می تونی یک بار دیگه بگی بعدش باید چی کار کنم؟',45,NULL,NULL,'kannst du noch einmal sagen was ich danach machen soll',NULL,'[{"form":"present_2sg","lemma":"können","partOfSpeech":"verb","surface":"Kannst","translation":"توانستن / بتوان"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"lemma":"noch","meaning":"یک بار دیگر","partOfSpeech":"adverb","surface":"noch","translation":"هنوز"},{"lemma":"einmal","partOfSpeech":"adverb","surface":"einmal","translation":"یک بار"},{"lemma":"sagen","partOfSpeech":"verb","surface":"sagen","translation":"گفتن"},{"lemma":"was","partOfSpeech":"pronoun","surface":"was","translation":"چی / چه"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"lemma":"danach","partOfSpeech":"adverb","surface":"danach","translation":"بعد از آن / بعدش"},{"lemma":"machen","partOfSpeech":"verb","surface":"machen","translation":"انجام دادن"},{"form":"present_1sg","lemma":"sollen","partOfSpeech":"verb","suffix":"?","surface":"soll","translation":"باید / قرار است"}]','پرسش غیرمستقیم با was','در بخش پرسشی با was، فعل صرف شده در پایان قرار می گیرد.','{"pattern":"Kannst du sagen, was + subject + infinitive + modal?"}','{"cefr":"B1"}');
  SET v_t_22=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_martin,5,'character','Prüfe, ob Text und Bild richtig sind.','بررسی کن که متن و تصویر درست باشند.',45,NULL,NULL,NULL,NULL,'[{"form":"imperative_2sg","lemma":"prüfen","partOfSpeech":"verb","suffix":",","surface":"Prüfe","translation":"بررسی کردن"},{"lemma":"ob","partOfSpeech":"conjunction","surface":"ob","translation":"آیا / اینکه"},{"lemma":"Text","partOfSpeech":"noun","surface":"Text","translation":"متن"},{"lemma":"und","partOfSpeech":"conjunction","surface":"und","translation":"و"},{"lemma":"Bild","partOfSpeech":"noun","surface":"Bild","translation":"تصویر"},{"lemma":"richtig","partOfSpeech":"adjective","surface":"richtig","translation":"درست"},{"form":"present_plural","lemma":"sein","partOfSpeech":"verb","suffix":".","surface":"sind","translation":"بودن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_23=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,6,'learner','Alles klar. Jetzt kann ich den Ablauf selbst erklären.','باشه. حالا خودم می تونم روند کار رو توضیح بدم.',45,NULL,NULL,'alles klar jetzt kann ich den ablauf selbst erklären',NULL,'[{"lemma":"alles","partOfSpeech":"pronoun","surface":"Alles","translation":"همه چیز"},{"lemma":"klar","partOfSpeech":"adjective","suffix":".","surface":"klar","translation":"روشن / مشخص"},{"lemma":"jetzt","partOfSpeech":"adverb","surface":"Jetzt","translation":"حالا / اکنون"},{"form":"present_1sg","lemma":"können","partOfSpeech":"verb","surface":"kann","translation":"توانستن / بتوان"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"form":"accusative_masculine","lemma":"der","partOfSpeech":"article","surface":"den","translation":"حرف تعریف"},{"lemma":"Ablauf","partOfSpeech":"noun","surface":"Ablauf","translation":"روند کار"},{"lemma":"selbst","partOfSpeech":"adverb","surface":"selbst","translation":"خود / شخصا"},{"lemma":"erklären","partOfSpeech":"verb","suffix":".","surface":"erklären","translation":"توضیح دادن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_24=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_033,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_020,'review',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_019,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_055,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_082,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_066,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_060,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_037,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_001,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_035,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_079,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_051,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_067,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_056,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_084,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_049,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_087,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_044,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_025,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_085,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_016,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_029,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_052,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_092,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_009,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_064,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_017,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_032,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_015,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_061,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_027,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_031,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_039,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_038,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_068,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_020,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_019,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_048,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_059,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_063,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_013,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_069,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_047,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_089,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_043,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_092,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_008,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_010,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_090,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_035,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_088,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_050,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_034,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_053,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_042,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_076,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_003,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_033,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_027,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_028,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_091,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_038,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_023,'new',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_086,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_019,'review',0,5);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_011,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_050,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_035,'review',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_081,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_021,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_055,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_070,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_026,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_054,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_072,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_012,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_007,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_064,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_075,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_087,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_085,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_044,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_030,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_078,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_014,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_074,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_020,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_017,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_016,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_069,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_022,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_006,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_018,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_033,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_036,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_049,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_020,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_019,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_045,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_067,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_004,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_046,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_037,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_035,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_080,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_027,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_060,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_038,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_083,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_044,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_057,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_024,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_065,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_084,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_014,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_073,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_062,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_058,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_077,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_078,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_011,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_064,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_069,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_005,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_041,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_002,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_071,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_025,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_040,'new',1,1);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_039,'عبارت کلیدی درس',NULL,44,NULL,'{"cefr":"B1","series":87}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',2,NULL,v_w_025,'واژه کلیدی درس',NULL,44,NULL,'{"cefr":"B1","series":87}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',3,v_t_1,NULL,'به جمله مارتین گوش کن',NULL,44,NULL,'{"cefr":"B1","series":87}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',4,v_t_2,NULL,'پاسخ آنا را با صدای بلند بگو',NULL,44,NULL,'{"cefr":"B1","series":87}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',5,v_t_3,NULL,'به پرسش بعدی گوش کن',NULL,44,NULL,'{"cefr":"B1","series":87}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',6,v_t_4,NULL,'پاسخ را با صدای بلند بگو',NULL,44,NULL,'{"cefr":"B1","series":87}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',7,NULL,v_w_025,'معنی واژه کلیدی را انتخاب کن',NULL,44,'{"mode":"word_translation","question":"erklären در این درس چه معنی دارد؟","choices":["توضیح دادن","زمان","مسیر"],"correctIndex":0}','{"cefr":"B1","series":87}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,44,'{"source":"lesson_story","question":"آنا باید اول کدام فایل را انتخاب کند؟","choices":["فایل درست","فایل قبلی","فایل ناقص"],"correctIndex":0}','{"cefr":"B1","series":87}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_091,'عبارت کلیدی درس',NULL,44,NULL,'{"cefr":"B1","series":87}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',2,NULL,v_w_043,'واژه کلیدی درس',NULL,44,NULL,'{"cefr":"B1","series":87}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',3,v_t_7,NULL,'به جمله مارتین گوش کن',NULL,44,NULL,'{"cefr":"B1","series":87}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',4,v_t_8,NULL,'پاسخ آنا را با صدای بلند بگو',NULL,44,NULL,'{"cefr":"B1","series":87}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',5,v_t_9,NULL,'به پرسش بعدی گوش کن',NULL,44,NULL,'{"cefr":"B1","series":87}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',6,v_t_10,NULL,'پاسخ را با صدای بلند بگو',NULL,44,NULL,'{"cefr":"B1","series":87}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',7,NULL,v_w_043,'معنی واژه کلیدی را انتخاب کن',NULL,44,'{"mode":"word_translation","question":"klicken در این درس چه معنی دارد؟","choices":["کلیک کردن","زمان","مسیر"],"correctIndex":0}','{"cefr":"B1","series":87}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,44,'{"source":"lesson_story","question":"گزینه ویرایش کجا قرار دارد؟","choices":["کنار مداد کوچک","پایین صفحه","داخل فایل"],"correctIndex":0}','{"cefr":"B1","series":87}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_036,'عبارت کلیدی درس',NULL,45,NULL,'{"cefr":"B1","series":87}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',2,NULL,v_w_023,'واژه کلیدی درس',NULL,45,NULL,'{"cefr":"B1","series":87}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',3,v_t_13,NULL,'به جمله مارتین گوش کن',NULL,45,NULL,'{"cefr":"B1","series":87}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',4,v_t_14,NULL,'پاسخ آنا را با صدای بلند بگو',NULL,45,NULL,'{"cefr":"B1","series":87}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',5,v_t_15,NULL,'به پرسش بعدی گوش کن',NULL,45,NULL,'{"cefr":"B1","series":87}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',6,v_t_16,NULL,'پاسخ را با صدای بلند بگو',NULL,45,NULL,'{"cefr":"B1","series":87}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',7,NULL,v_w_023,'معنی واژه کلیدی را انتخاب کن',NULL,45,'{"mode":"word_translation","question":"einfügen در این درس چه معنی دارد؟","choices":["وارد کردن / افزودن","زمان","مسیر"],"correctIndex":0}','{"cefr":"B1","series":87}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,45,'{"source":"lesson_story","question":"آنا بعد از وارد کردن تصویر چه کار می کند؟","choices":["فایل را ذخیره می کند","صفحه را پاک می کند","منو را می بندد"],"correctIndex":0}','{"cefr":"B1","series":87}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'new_word',1,NULL,v_w_040,'عبارت کلیدی درس',NULL,45,NULL,'{"cefr":"B1","series":87}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'new_word',2,NULL,v_w_002,'واژه کلیدی درس',NULL,45,NULL,'{"cefr":"B1","series":87}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_19,NULL,'به جمله مارتین گوش کن',NULL,45,NULL,'{"cefr":"B1","series":87}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_20,NULL,'پاسخ آنا را با صدای بلند بگو',NULL,45,NULL,'{"cefr":"B1","series":87}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',5,v_t_21,NULL,'به پرسش بعدی گوش کن',NULL,45,NULL,'{"cefr":"B1","series":87}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',6,v_t_22,NULL,'پاسخ را با صدای بلند بگو',NULL,45,NULL,'{"cefr":"B1","series":87}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'meaning_choice',7,NULL,v_w_002,'معنی واژه کلیدی را انتخاب کن',NULL,45,'{"mode":"word_translation","question":"Ablauf در این درس چه معنی دارد؟","choices":["روند کار","زمان","مسیر"],"correctIndex":0}','{"cefr":"B1","series":87}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,45,'{"source":"lesson_story","question":"آنا در مرحله آخر چه چیزی را بررسی می کند؟","choices":["متن و تصویر","فقط عددها","فقط نام فایل"],"correctIndex":0}','{"cefr":"B1","series":87}');

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 087 lesson count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id=learner_character_id;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every Lesson requires two different Characters.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND storyline_key='anna-martin-b1-project' AND storyline_order BETWEEN 5 AND 8;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 087 storyline continuity.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>24 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 087 turn count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR TRIM(t.speech_target)='');
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Learner Turn without speech_target.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>32 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 087 activity count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter AND ac.activity_type='reading_comprehension' AND (ac.config IS NULL OR JSON_EXTRACT(ac.config,'$.question') IS NULL);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Reading Activity without task.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter AND lw.is_target=1;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 087 explicit-target count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM (SELECT lw.lesson_id,lw.word_id,COUNT(*) AS n FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter GROUP BY lw.lesson_id,lw.word_id HAVING COUNT(*)>1) duplicate_pairs;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Duplicate lesson_words tuple detected.'; END IF;
  UPDATE chapters SET planned_lesson_count=4,status='validated' WHERE id=v_chapter;
  COMMIT;
END$$
DELIMITER ;
CALL import_nova_series_087_v9();
DROP PROCEDURE IF EXISTS import_nova_series_087_v9;

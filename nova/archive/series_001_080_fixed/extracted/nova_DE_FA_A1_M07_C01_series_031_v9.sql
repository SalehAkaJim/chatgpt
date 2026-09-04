-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 031
-- A1 > Menschen & Pläne > Meine Familie
-- Creates Module 07 skeleton when missing.
-- Canonical dependencies: Series 015 r3, Series 020 r2.
-- ===============================================================
SET NAMES utf8mb4;

DROP PROCEDURE IF EXISTS import_nova_series_031_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_031_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED;
  DECLARE v_level BIGINT UNSIGNED;
  DECLARE v_prev_module BIGINT UNSIGNED;
  DECLARE v_prev_chapter BIGINT UNSIGNED;
  DECLARE v_module BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_chapter BIGINT UNSIGNED;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_anna BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_sofia BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_sein BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_das_pronoun BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_dein BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_mein BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_schoen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ja BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_danke BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_und BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_familie BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_wer BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_mutter BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_das_ist_meine_mutter BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_vater BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_das_ist_mein_vater BIGINT UNSIGNED DEFAULT NULL;
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

  DECLARE EXIT HANDLER FOR SQLEXCEPTION
  BEGIN
    ROLLBACK;
    RESIGNAL;
  END;

  START TRANSACTION;
  SELECT id INTO v_course FROM courses WHERE learning_language='de' AND base_language='fa' ORDER BY id LIMIT 1;
  IF v_course IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Run nova_DE_FA_base_seed_v9.sql first.'; END IF;
  SELECT id INTO v_level FROM levels WHERE course_id=v_course AND sort_order=1 ORDER BY id LIMIT 1;
  SELECT id INTO v_prev_module FROM modules WHERE level_id=v_level AND sort_order=6 ORDER BY id LIMIT 1;
  IF v_prev_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 026 before Series 031.'; END IF;
  SELECT id INTO v_prev_chapter FROM chapters WHERE module_id=v_prev_module AND sort_order=5 ORDER BY id LIMIT 1;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_prev_chapter;
  IF v_count=0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 030 before Series 031.'; END IF;

  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=7 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN
    INSERT INTO modules(level_id,title,title_translation,description,description_translation,emoji,difficulty_min,difficulty_max,sort_order,status)
    VALUES(v_level,'Menschen & Pläne','آدم ها و برنامه ها','Einfache Gespräche über Familie, Freunde, Einladungen, Änderungen und Gefühle.','گفتگوهای ساده درباره خانواده، دوستان، دعوت کردن، تغییر برنامه و احساسات.','👥',18,19,7,'active');
    SET v_module=LAST_INSERT_ID();
  END IF;

  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Meine Familie','خانواده من','Die eigene Familie mit sehr einfachen Sätzen vorstellen.','خانواده خودت را با جمله های خیلی ساده معرفی کن.',NULL,18,18,1,'draft'
  WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=1);
  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Freunde treffen','دیدن دوستان','Freunde treffen und kurze gemeinsame Pläne machen.','دوستان را ببین و برنامه های کوتاه مشترک داشته باش.',NULL,18,18,2,'planned'
  WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=2);
  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Jemanden einladen','دعوت کردن یک نفر','Eine Person mit einfachen Sätzen einladen.','یک نفر را با جمله های ساده دعوت کن.',NULL,18,19,3,'planned'
  WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=3);
  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Pläne ändern','تغییر برنامه ها','Einen einfachen Plan ändern oder verschieben.','یک برنامه ساده را تغییر بده یا جابه جا کن.',NULL,19,19,4,'planned'
  WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=4);
  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Einfache Gefühle','احساسات ساده','Einfache Gefühle in kurzen Alltagssituationen ausdrücken.','احساسات ساده را در موقعیت های کوتاه روزمره بیان کن.',NULL,19,19,5,'planned'
  WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=5);

  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Module 07 Chapter 01 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Module 07 Chapter 01 must be empty before Series 031 import.'; END IF;

  SELECT id INTO v_c_anna FROM characters WHERE course_id=v_course AND name='Anna' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_anna IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Anna not found.'; END IF;

  SELECT id INTO v_c_sofia FROM characters WHERE course_id=v_course AND name='Sofia' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_sofia IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Sofia not found.'; END IF;

  SELECT id INTO v_w_sein FROM words WHERE course_id=v_course AND lemma='sein' AND part_of_speech='verb' AND translation='بودن' ORDER BY id LIMIT 1;
  IF v_w_sein IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word sein not found.'; END IF;

  SELECT id INTO v_w_das_pronoun FROM words WHERE course_id=v_course AND lemma='das' AND part_of_speech='pronoun' AND translation='این / آن' ORDER BY id LIMIT 1;
  IF v_w_das_pronoun IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word das not found.'; END IF;

  SELECT id INTO v_w_dein FROM words WHERE course_id=v_course AND lemma='dein' AND part_of_speech='determiner' AND translation='مال تو / تو' ORDER BY id LIMIT 1;
  IF v_w_dein IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word dein not found.'; END IF;

  SELECT id INTO v_w_mein FROM words WHERE course_id=v_course AND lemma='mein' AND part_of_speech='determiner' AND translation='مال من / من' ORDER BY id LIMIT 1;
  IF v_w_mein IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word mein not found.'; END IF;

  SELECT id INTO v_w_schoen FROM words WHERE course_id=v_course AND lemma='schön' AND part_of_speech='adjective' AND translation='زیبا / قشنگ' ORDER BY id LIMIT 1;
  IF v_w_schoen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word schön not found.'; END IF;

  SELECT id INTO v_w_ja FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_ja IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ja not found.'; END IF;

  SELECT id INTO v_w_danke FROM words WHERE course_id=v_course AND lemma='danke' AND part_of_speech='interjection' AND translation='ممنون' ORDER BY id LIMIT 1;
  IF v_w_danke IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word danke not found.'; END IF;

  SELECT id INTO v_w_und FROM words WHERE course_id=v_course AND lemma='und' AND part_of_speech='conjunction' AND translation='و' ORDER BY id LIMIT 1;
  IF v_w_und IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word und not found.'; END IF;

  SELECT id INTO v_w_familie FROM words WHERE course_id=v_course AND lemma='Familie' AND part_of_speech='noun' AND translation='خانواده' ORDER BY id LIMIT 1;
  IF v_w_familie IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Familie','Familie','noun','خانواده',18,'{"article":"die","plural":"Familien"}','[{"text":"Freund","translation":"دوست"},{"text":"Nachbar","translation":"همسایه"},{"text":"Kollege","translation":"همکار"},{"text":"Mutter","translation":"مادر"},{"text":"Vater","translation":"پدر"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_familie=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_wer FROM words WHERE course_id=v_course AND lemma='wer' AND part_of_speech='pronoun' AND translation='چه کسی / کی' ORDER BY id LIMIT 1;
  IF v_w_wer IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'wer','wer','pronoun','چه کسی / کی',18,'{"type":"interrogative_pronoun"}','[{"text":"was","translation":"چی / چه"},{"text":"wo","translation":"کجا"},{"text":"wie","translation":"چطور"},{"text":"wann","translation":"چه زمانی"},{"text":"warum","translation":"چرا"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_wer=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_mutter FROM words WHERE course_id=v_course AND lemma='Mutter' AND part_of_speech='noun' AND translation='مادر' ORDER BY id LIMIT 1;
  IF v_w_mutter IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Mutter','Mutter','noun','مادر',18,'{"article":"die","plural":"Mütter"}','[{"text":"Vater","translation":"پدر"},{"text":"Schwester","translation":"خواهر"},{"text":"Bruder","translation":"برادر"},{"text":"Freundin","translation":"دوست زن"},{"text":"Nachbarin","translation":"همسایه زن"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_mutter=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_das_ist_meine_mutter FROM words WHERE course_id=v_course AND lemma='Das ist meine Mutter.' AND part_of_speech='phrase' AND translation='این مادر من است.' ORDER BY id LIMIT 1;
  IF v_w_das_ist_meine_mutter IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Das ist meine Mutter.','Das ist meine Mutter.','phrase','این مادر من است.',18,NULL,'[{"text":"Das ist meine Wohnung.","translation":"این خانه من است."},{"text":"Das ist mein Vater.","translation":"این پدر من است."},{"text":"Ich wohne hier.","translation":"من اینجا زندگی می کنم."},{"text":"Die Küche ist sauber.","translation":"آشپزخانه تمیز است."},{"text":"Das ist teuer.","translation":"این گران است."}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_das_ist_meine_mutter=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_vater FROM words WHERE course_id=v_course AND lemma='Vater' AND part_of_speech='noun' AND translation='پدر' ORDER BY id LIMIT 1;
  IF v_w_vater IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Vater','Vater','noun','پدر',18,'{"article":"der","plural":"Väter"}','[{"text":"Mutter","translation":"مادر"},{"text":"Bruder","translation":"برادر"},{"text":"Schwester","translation":"خواهر"},{"text":"Freund","translation":"دوست"},{"text":"Nachbar","translation":"همسایه"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_vater=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_das_ist_mein_vater FROM words WHERE course_id=v_course AND lemma='Das ist mein Vater.' AND part_of_speech='phrase' AND translation='این پدر من است.' ORDER BY id LIMIT 1;
  IF v_w_das_ist_mein_vater IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Das ist mein Vater.','Das ist mein Vater.','phrase','این پدر من است.',18,NULL,'[{"text":"Das ist meine Mutter.","translation":"این مادر من است."},{"text":"Das ist meine Wohnung.","translation":"این خانه من است."},{"text":"Ich wohne hier.","translation":"من اینجا زندگی می کنم."},{"text":"Das ist teuer.","translation":"این گران است."},{"text":"Hier ist der Tisch.","translation":"میز اینجاست."}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_das_ist_mein_vater=LAST_INSERT_ID();
  END IF;

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_sofia,v_c_anna,'Meine Familie','خانواده من','Sofia sieht ein Familienbild bei Anna. Anna bestätigt, dass es ihre Familie ist.','سوفیا یک عکس خانوادگی پیش آنا می بیند. آنا تایید می کند که این خانواده او است.','story','anna-sofia-family-photo',1,18,105,1,'validated','{"relationship":"neighbors","context":"family_photo","storyArc":"beginning-development-resolution-ending"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_sofia,1,'character','Ist das deine Familie?','این خانواده تو است؟',18,NULL,NULL,NULL,NULL,'[{"surface":"Ist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"است","form":"present_3sg"},{"surface":"das","lemma":"das","translation":"این / آن","partOfSpeech":"pronoun","meaning":"این"},{"surface":"deine","lemma":"dein","translation":"مال تو / تو","partOfSpeech":"determiner","meaning":"مال تو / خانواده تو","form":"feminine_nominative"},{"surface":"Familie","lemma":"Familie","translation":"خانواده","partOfSpeech":"noun","suffix":"?"}]','deine Familie','«deine Familie» یعنی «خانواده تو». فعلا این شکل را فقط داخل جمله یاد بگیر.',NULL,NULL);
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,2,'learner','Ja. Meine Familie.','بله. خانواده من.',18,NULL,NULL,'ja meine familie',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Meine","lemma":"mein","translation":"مال من / من","partOfSpeech":"determiner","meaning":"مال من / خانواده من","form":"feminine_nominative"},{"surface":"Familie","lemma":"Familie","translation":"خانواده","partOfSpeech":"noun","suffix":"."}]','meine Familie','«meine Familie» یعنی «خانواده من».',NULL,NULL);
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_sofia,3,'character','Schön.','قشنگه.',18,NULL,NULL,NULL,NULL,'[{"surface":"Schön","lemma":"schön","translation":"زیبا / قشنگ","partOfSpeech":"adjective","meaning":"قشنگه","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,4,'learner','Danke!','ممنون!',18,NULL,NULL,'danke',NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_4=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_sofia,v_c_anna,'Das ist meine Mutter','این مادر من است','Sofia fragt, wer auf dem Familienbild zu sehen ist. Anna stellt ihre Mutter vor.','سوفیا می پرسد چه کسی در عکس خانوادگی است. آنا مادرش را معرفی می کند.','story','anna-sofia-family-photo',2,18,105,2,'validated','{"relationship":"neighbors","context":"family_photo","storyArc":"beginning-development-resolution-ending"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_sofia,1,'character','Wer ist das?','این کیه؟',18,NULL,NULL,NULL,NULL,'[{"surface":"Wer","lemma":"wer","translation":"چه کسی / کی","partOfSpeech":"pronoun","meaning":"چه کسی / کی"},{"surface":"ist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"است","form":"present_3sg"},{"surface":"das","lemma":"das","translation":"این / آن","partOfSpeech":"pronoun","meaning":"این","suffix":"?"}]','سوال درباره یک نفر','«Wer ist das?» یعنی «این کیه؟» و برای پرسیدن درباره یک شخص استفاده می شود.',NULL,NULL);
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,2,'learner','Das ist meine Mutter.','این مادر من است.',18,NULL,NULL,'das ist meine mutter',NULL,'[{"surface":"Das","lemma":"das","translation":"این / آن","partOfSpeech":"pronoun","meaning":"این"},{"surface":"ist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"است","form":"present_3sg"},{"surface":"meine","lemma":"mein","translation":"مال من / من","partOfSpeech":"determiner","meaning":"مال من / مادر من","form":"feminine_nominative"},{"surface":"Mutter","lemma":"Mutter","translation":"مادر","partOfSpeech":"noun","suffix":"."}]','معرفی یک عضو خانواده','«Das ist meine Mutter.» یعنی «این مادر من است». جمله را به صورت یک الگوی آماده برای معرفی یاد بگیر.',NULL,NULL);
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_sofia,3,'character','Deine Mutter?','مادرت؟',18,NULL,NULL,NULL,NULL,'[{"surface":"Deine","lemma":"dein","translation":"مال تو / تو","partOfSpeech":"determiner","meaning":"مال تو / مادرت","form":"feminine_nominative"},{"surface":"Mutter","lemma":"Mutter","translation":"مادر","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,4,'learner','Ja.','بله.',18,NULL,NULL,'ja',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_8=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_sofia,v_c_anna,'Das ist mein Vater','این پدر من است','Sofia fragt nach einer zweiten Person. Anna stellt jetzt ihren Vater vor.','سوفیا درباره نفر دوم می پرسد. آنا حالا پدرش را معرفی می کند.','story','anna-sofia-family-photo',3,18,105,3,'validated','{"relationship":"neighbors","context":"family_photo","storyArc":"beginning-development-resolution-ending"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_sofia,1,'character','Und wer ist das?','و این کیه؟',18,NULL,NULL,NULL,NULL,'[{"surface":"Und","lemma":"und","translation":"و","partOfSpeech":"conjunction"},{"surface":"wer","lemma":"wer","translation":"چه کسی / کی","partOfSpeech":"pronoun","meaning":"چه کسی / کی"},{"surface":"ist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"است","form":"present_3sg"},{"surface":"das","lemma":"das","translation":"این / آن","partOfSpeech":"pronoun","meaning":"این","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,2,'learner','Das ist mein Vater.','این پدر من است.',18,NULL,NULL,'das ist mein vater',NULL,'[{"surface":"Das","lemma":"das","translation":"این / آن","partOfSpeech":"pronoun","meaning":"این"},{"surface":"ist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"است","form":"present_3sg"},{"surface":"mein","lemma":"mein","translation":"مال من / من","partOfSpeech":"determiner","meaning":"مال من / پدر من","form":"masculine_nominative"},{"surface":"Vater","lemma":"Vater","translation":"پدر","partOfSpeech":"noun","suffix":"."}]','mein Vater','در «mein Vater» کلمه «mein» بدون e می آید. فعلا فقط همین ترکیب را در جمله استفاده کن.',NULL,NULL);
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_sofia,3,'character','Dein Vater?','پدرت؟',18,NULL,NULL,NULL,NULL,'[{"surface":"Dein","lemma":"dein","translation":"مال تو / تو","partOfSpeech":"determiner","meaning":"مال تو / پدرت","form":"masculine_nominative"},{"surface":"Vater","lemma":"Vater","translation":"پدر","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,4,'learner','Ja.','بله.',18,NULL,NULL,'ja',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_12=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_sofia,v_c_anna,'Annas Familie','خانواده آنا','Sofia schaut sich das Familienbild an. Anna stellt ihre Mutter und ihren Vater in einer vollständigen kurzen Szene vor.','سوفیا عکس خانواده را نگاه می کند. آنا در یک صحنه کوتاه و کامل مادر و پدرش را معرفی می کند.','story','anna-sofia-family-photo',4,18,108,4,'validated','{"relationship":"neighbors","context":"family_photo","storyArc":"beginning-development-resolution-ending"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_sofia,1,'character','Ist das deine Familie?','این خانواده تو است؟',18,NULL,NULL,NULL,NULL,'[{"surface":"Ist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"است","form":"present_3sg"},{"surface":"das","lemma":"das","translation":"این / آن","partOfSpeech":"pronoun","meaning":"این"},{"surface":"deine","lemma":"dein","translation":"مال تو / تو","partOfSpeech":"determiner","meaning":"مال تو / خانواده تو","form":"feminine_nominative"},{"surface":"Familie","lemma":"Familie","translation":"خانواده","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,2,'learner','Ja. Meine Familie.','بله. خانواده من.',18,NULL,NULL,'ja meine familie',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Meine","lemma":"mein","translation":"مال من / من","partOfSpeech":"determiner","meaning":"مال من / خانواده من","form":"feminine_nominative"},{"surface":"Familie","lemma":"Familie","translation":"خانواده","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_sofia,3,'character','Wer ist das?','این کیه؟',18,NULL,NULL,NULL,NULL,'[{"surface":"Wer","lemma":"wer","translation":"چه کسی / کی","partOfSpeech":"pronoun","meaning":"چه کسی / کی"},{"surface":"ist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"است","form":"present_3sg"},{"surface":"das","lemma":"das","translation":"این / آن","partOfSpeech":"pronoun","meaning":"این","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,4,'learner','Das ist meine Mutter.','این مادر من است.',18,NULL,NULL,'das ist meine mutter',NULL,'[{"surface":"Das","lemma":"das","translation":"این / آن","partOfSpeech":"pronoun","meaning":"این"},{"surface":"ist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"است","form":"present_3sg"},{"surface":"meine","lemma":"mein","translation":"مال من / من","partOfSpeech":"determiner","meaning":"مال من / مادر من","form":"feminine_nominative"},{"surface":"Mutter","lemma":"Mutter","translation":"مادر","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_sofia,5,'character','Und wer ist das?','و این کیه؟',18,NULL,NULL,NULL,NULL,'[{"surface":"Und","lemma":"und","translation":"و","partOfSpeech":"conjunction"},{"surface":"wer","lemma":"wer","translation":"چه کسی / کی","partOfSpeech":"pronoun","meaning":"چه کسی / کی"},{"surface":"ist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"است","form":"present_3sg"},{"surface":"das","lemma":"das","translation":"این / آن","partOfSpeech":"pronoun","meaning":"این","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,6,'learner','Das ist mein Vater.','این پدر من است.',18,NULL,NULL,'das ist mein vater',NULL,'[{"surface":"Das","lemma":"das","translation":"این / آن","partOfSpeech":"pronoun","meaning":"این"},{"surface":"ist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"است","form":"present_3sg"},{"surface":"mein","lemma":"mein","translation":"مال من / من","partOfSpeech":"determiner","meaning":"مال من / پدر من","form":"masculine_nominative"},{"surface":"Vater","lemma":"Vater","translation":"پدر","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_18=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_sofia,7,'character','Schön.','قشنگه.',18,NULL,NULL,NULL,NULL,'[{"surface":"Schön","lemma":"schön","translation":"زیبا / قشنگ","partOfSpeech":"adjective","meaning":"قشنگه","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_19=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,8,'learner','Danke!','ممنون!',18,NULL,NULL,'danke',NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_20=LAST_INSERT_ID();

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_sein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_das_pronoun,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_dein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_familie,'new',1,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_mein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_schoen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_danke,'review',0,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_wer,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_sein,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_das_pronoun,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_mein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_mutter,'passive',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_dein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_das_ist_meine_mutter,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_und,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_wer,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_sein,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_das_pronoun,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_mein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_vater,'passive',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_dein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_das_ist_mein_vater,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_sein,'review',0,5);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_das_pronoun,'review',0,5);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_dein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_familie,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_mein,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_wer,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_mutter,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_und,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_vater,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_schoen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_das_ist_meine_mutter,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_das_ist_mein_vater,'review',0,1);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_familie,'کلمه جدید',NULL,18,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',2,v_t_1,NULL,'به سوال سوفیا گوش کن',NULL,18,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',3,v_t_2,NULL,'بگو این خانواده تو است',NULL,18,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',4,v_t_3,NULL,'به واکنش سوفیا گوش کن',NULL,18,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',5,v_t_4,NULL,'تشکر کن',NULL,18,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',6,NULL,v_w_familie,'معنی درست را انتخاب کن',NULL,18,'{"mode":"word_translation","question":"Familie","choices":["خانواده","همسایه","همکار"],"correctIndex":0}',NULL);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_das_ist_meine_mutter,'عبارت جدید',NULL,18,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',2,v_t_5,NULL,'به سوال سوفیا گوش کن',NULL,18,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',3,v_t_6,NULL,'مادرت را معرفی کن',NULL,18,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',4,v_t_7,NULL,'به سوفیا گوش کن',NULL,18,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',5,v_t_8,NULL,'تایید کن',NULL,18,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',6,v_t_6,NULL,'معنی درست را انتخاب کن',NULL,18,'{"mode":"turn_translation","question":"«Das ist meine Mutter.» یعنی چی؟","choices":["این مادر من است.","این پدر من است.","این خانه من است."],"correctIndex":0}',NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'word_order',7,v_t_6,NULL,'جمله معرفی را به ترتیب درست بساز',NULL,18,'{"source":"turn_tokens","shuffle":true}',NULL);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_das_ist_mein_vater,'عبارت جدید',NULL,18,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',2,v_t_9,NULL,'به سوال سوفیا گوش کن',NULL,18,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',3,v_t_10,NULL,'پدرت را معرفی کن',NULL,18,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',4,v_t_11,NULL,'به سوفیا گوش کن',NULL,18,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',5,v_t_12,NULL,'تایید کن',NULL,18,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',6,v_t_10,NULL,'معنی درست را انتخاب کن',NULL,18,'{"mode":"turn_translation","question":"«Das ist mein Vater.» یعنی چی؟","choices":["این پدر من است.","این مادر من است.","این همسایه من است."],"correctIndex":0}',NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',7,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,18,'{"source":"lesson_story","question":"آنا چه کسی را معرفی می کند؟","choices":["پدرش","مادرش","همسایه اش"],"correctIndex":0}',NULL);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',1,v_t_13,NULL,'به سوال خانواده گوش کن',NULL,18,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',2,v_t_14,NULL,'بگو این خانواده تو است',NULL,18,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_15,NULL,'به سوال نفر اول گوش کن',NULL,18,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_16,NULL,'مادرت را معرفی کن',NULL,18,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',5,v_t_17,NULL,'به سوال نفر دوم گوش کن',NULL,18,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',6,v_t_18,NULL,'پدرت را معرفی کن',NULL,18,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',7,v_t_19,NULL,'به واکنش سوفیا گوش کن',NULL,18,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',8,v_t_20,NULL,'تشکر کن',NULL,18,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',9,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,18,'{"source":"lesson_story","question":"آنا چه کسانی را معرفی می کند؟","choices":["مادر و پدرش","دو دوستش","دو همکارش"],"correctIndex":0}',NULL);

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 031 lesson count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id=learner_character_id;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every Lesson requires two different Characters.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR TRIM(t.speech_target)='');
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Learner Turn without speech_target.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter AND ac.activity_type='reading_comprehension' AND (ac.config IS NULL OR JSON_EXTRACT(ac.config,'$.question') IS NULL);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Reading Activity without task.'; END IF;
  UPDATE chapters SET status='validated' WHERE id=v_chapter;
  COMMIT;
END$$
DELIMITER ;

CALL import_nova_series_031_v9();
DROP PROCEDURE IF EXISTS import_nova_series_031_v9;
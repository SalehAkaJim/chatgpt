-- German Pre-A1 content batch 002: lessons 6–10
-- Target: MySQL 9.0.1
-- Source-backed target-language content only. Persian is translation/instruction support.
-- Lesson 10 intentionally covers asking/recognising age only; giving an age remains a tracked source gap.
-- Audio intentionally remains blocked.

SET NAMES utf8mb4;

-- -----------------------------------------------------------------------------
-- Additional exact source item for Lesson 6
-- -----------------------------------------------------------------------------
INSERT INTO source_items (source_id, public_id, title, locator, item_url, notes)
SELECT s.id, 'srcitem_fast_l1_intro', 'FSI German FAST Lesson 1 — Airplane Introduction + Name Exercise',
       'Lesson One: Dialog 1, PDF p.20; Step VI exercise 2, PDF p.29 area',
       'https://www.fsi-language-courses.org/languages/German/FAST/FSI%20-%20German%20FAST%20-%20Student%20Text.pdf',
       'Sample dialogue contains source self-introductions (Zwingli/Clarke). Exercise 2 explicitly contains “Wie heissen Sie?” for asking a fellow student’s name.'
FROM sources s WHERE s.public_id='src_fsi_de_fast'
ON DUPLICATE KEY UPDATE title=VALUES(title), locator=VALUES(locator), item_url=VALUES(item_url), notes=VALUES(notes);

-- Lesson 6 now also points to the exact FAST introduction/name source.
INSERT IGNORE INTO lesson_sources (lesson_id, source_item_id)
SELECT l.id, si.id
FROM lessons l JOIN source_items si ON si.public_id='srcitem_fast_l1_intro'
WHERE l.public_id='de_pre_a1_l006';

UPDATE lessons
SET source_title='FAST Lesson 1 — introduction/name exercise'
WHERE public_id='de_pre_a1_l006';

-- -----------------------------------------------------------------------------
-- Characters
-- -----------------------------------------------------------------------------
INSERT INTO characters
(public_id, language_id, name, origin, gender, age_band, roles, context_notes,
 voice_clarity, voice_stress_level, voice_aggressiveness, voice_tone_consistency)
SELECT 'de_char_zwingli', l.id, 'Zwingli', 'source', 'unspecified', 'adult',
       JSON_ARRAY('traveler'),
       'Named source speaker in FAST Lesson 1. Selected source lines do not establish gender; gender intentionally remains unspecified.',
       'high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name),origin=VALUES(origin),gender=VALUES(gender),age_band=VALUES(age_band),roles=VALUES(roles),context_notes=VALUES(context_notes);

INSERT INTO characters
(public_id, language_id, name, origin, gender, age_band, roles, context_notes,
 voice_clarity, voice_stress_level, voice_aggressiveness, voice_tone_consistency)
SELECT 'de_char_clarke', l.id, 'Clarke', 'source', 'unspecified', 'adult',
       JSON_ARRAY('traveler','learner_surrogate'),
       'Named source speaker in FAST Lesson 1. Selected source lines do not establish gender; gender intentionally remains unspecified.',
       'high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name),origin=VALUES(origin),gender=VALUES(gender),age_band=VALUES(age_band),roles=VALUES(roles),context_notes=VALUES(context_notes);

INSERT INTO characters
(public_id, language_id, name, origin, gender, age_band, roles, context_notes,
 voice_clarity, voice_stress_level, voice_aggressiveness, voice_tone_consistency)
SELECT 'de_char_jones', l.id, 'Mr. Jones', 'source', 'male', 'adult',
       JSON_ARRAY('consulate_colleague','parent','learner_surrogate'),
       'FSI Basic Unit 4 explicitly identifies this source character as Mr. Jones.',
       'high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name),origin=VALUES(origin),gender=VALUES(gender),age_band=VALUES(age_band),roles=VALUES(roles),context_notes=VALUES(context_notes);

INSERT INTO characters
(public_id, language_id, name, origin, gender, age_band, roles, context_notes,
 voice_clarity, voice_stress_level, voice_aggressiveness, voice_tone_consistency)
SELECT 'de_char_ticket_traveler', l.id, 'Traveler with child', 'app_created', 'unspecified', 'adult',
       JSON_ARRAY('traveler'),
       'The FAST variant labels this role only as A (the American). No gender is assumed.',
       'high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name),origin=VALUES(origin),gender=VALUES(gender),age_band=VALUES(age_band),roles=VALUES(roles),context_notes=VALUES(context_notes);

INSERT INTO characters
(public_id, language_id, name, origin, gender, age_band, roles, context_notes,
 voice_clarity, voice_stress_level, voice_aggressiveness, voice_tone_consistency)
SELECT 'de_char_ticket_clerk', l.id, 'Ticket clerk', 'app_created', 'unspecified', 'adult',
       JSON_ARRAY('ticket_clerk','learner_surrogate'),
       'FAST labels this source role only as N. No gender is established, so gender remains unspecified.',
       'high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name),origin=VALUES(origin),gender=VALUES(gender),age_band=VALUES(age_band),roles=VALUES(roles),context_notes=VALUES(context_notes);

-- -----------------------------------------------------------------------------
-- Dialogues
-- -----------------------------------------------------------------------------
INSERT INTO dialogues (public_id, language_level_id, scenario, status)
SELECT x.public_id,ll.id,x.scenario,'source_checked'
FROM language_levels ll
JOIN languages l ON l.id=ll.language_id AND l.code='de'
JOIN cefr_levels c ON c.id=ll.cefr_level_id AND c.code='Pre-A1'
JOIN (
  SELECT 'de_pre_a1_dlg_006' public_id,'Introducing names on an airplane (FAST Lesson 1 excerpt)' scenario UNION ALL
  SELECT 'de_pre_a1_dlg_007','Origin exchange at customs (FSI Basic Unit 2)' UNION ALL
  SELECT 'de_pre_a1_dlg_008','Residence exchange while getting acquainted (Headstart Module VIII Unit 2)' UNION ALL
  SELECT 'de_pre_a1_dlg_009','Family exchange between consulate colleagues (FSI Basic Unit 4)' UNION ALL
  SELECT 'de_pre_a1_dlg_010','Ticket-counter age-question variant (FAST Lesson 4)'
) x ON 1=1
ON DUPLICATE KEY UPDATE scenario=VALUES(scenario),status=VALUES(status);

INSERT IGNORE INTO dialogue_characters (dialogue_id, character_id, role_label)
SELECT d.id,ch.id,x.role_label
FROM (
  SELECT 'de_pre_a1_dlg_006' did,'de_char_zwingli' cid,'speaker' role_label UNION ALL
  SELECT 'de_pre_a1_dlg_006','de_char_clarke','learner_role' UNION ALL
  SELECT 'de_pre_a1_dlg_007','de_char_passport_official','speaker' UNION ALL
  SELECT 'de_pre_a1_dlg_007','de_char_brauer','learner_role' UNION ALL
  SELECT 'de_pre_a1_dlg_008','de_char_frau_mueller','speaker' UNION ALL
  SELECT 'de_pre_a1_dlg_008','de_char_mike_halloway','learner_role' UNION ALL
  SELECT 'de_pre_a1_dlg_009','de_char_allen','speaker' UNION ALL
  SELECT 'de_pre_a1_dlg_009','de_char_jones','learner_role' UNION ALL
  SELECT 'de_pre_a1_dlg_010','de_char_ticket_traveler','speaker' UNION ALL
  SELECT 'de_pre_a1_dlg_010','de_char_ticket_clerk','learner_role'
) x
JOIN dialogues d ON d.public_id=x.did
JOIN characters ch ON ch.public_id=x.cid;

-- Exact source turns. Lesson 10 first turn uses FAST's explicit variant frame with
-- Frankfurt substituted from the base dialogue on the same source pages; this is a source transformation, not new German.
INSERT INTO dialogue_turns
(dialogue_id, position, speaker_character_id, speaker_identity_origin, speaker_gender_evidence, text_target, translation_fa, learner_turn)
SELECT d.id,x.pos,ch.id,x.identity_origin,x.gender_evidence,x.text_target,x.translation_fa,x.learner_turn
FROM (
  SELECT 'de_pre_a1_dlg_006' did,1 pos,'de_char_zwingli' cid,'source' identity_origin,'unspecified' gender_evidence,
         'Übrigens, mein Name ist Zwingli.' text_target,'راستی، اسم من زوینگلی است.' translation_fa,0 learner_turn UNION ALL
  SELECT 'de_pre_a1_dlg_006',2,'de_char_clarke','source','unspecified','Ich heisse Clarke.','اسم من کلارک است.',1 UNION ALL

  SELECT 'de_pre_a1_dlg_007',1,'de_char_passport_official','app_assigned','unspecified','Wo kommen Sie her?','اهل کجا هستید؟',0 UNION ALL
  SELECT 'de_pre_a1_dlg_007',2,'de_char_brauer','source','unspecified','Ich komme aus Amerika.','من اهل آمریکا هستم.',1 UNION ALL

  SELECT 'de_pre_a1_dlg_008',1,'de_char_frau_mueller','source','female','Wo wohnen Sie in Amerika?','در آمریکا کجا زندگی می‌کنید؟',0 UNION ALL
  SELECT 'de_pre_a1_dlg_008',2,'de_char_mike_halloway','source','male','Ich wohne in New York.','من در نیویورک زندگی می‌کنم.',1 UNION ALL

  SELECT 'de_pre_a1_dlg_009',1,'de_char_allen','source','male','Haben Sie eine grosse Familie, Herr Jones?','آقای جونز، خانواده بزرگی دارید؟',0 UNION ALL
  SELECT 'de_pre_a1_dlg_009',2,'de_char_jones','source','male','Ja, meine Frau und ich haben vier Kinder: zwei Jungen und zwei Mädchen.','بله، من و همسرم چهار فرزند داریم: دو پسر و دو دختر.',1 UNION ALL

  SELECT 'de_pre_a1_dlg_010',1,'de_char_ticket_traveler','app_assigned','unspecified','Zwei Erwachsene und ein Kind nach Frankfurt.','دو بزرگسال و یک کودک به مقصد فرانکفورت.',0 UNION ALL
  SELECT 'de_pre_a1_dlg_010',2,'de_char_ticket_clerk','app_assigned','unspecified','Wie alt ist denn das Kind?','این کودک چند سال دارد؟',1
) x
JOIN dialogues d ON d.public_id=x.did
JOIN characters ch ON ch.public_id=x.cid
ON DUPLICATE KEY UPDATE
 speaker_character_id=VALUES(speaker_character_id),speaker_identity_origin=VALUES(speaker_identity_origin),speaker_gender_evidence=VALUES(speaker_gender_evidence),
 text_target=VALUES(text_target),translation_fa=VALUES(translation_fa),learner_turn=VALUES(learner_turn);

-- Dialogue + turn provenance.
INSERT IGNORE INTO dialogue_sources (dialogue_id,source_item_id)
SELECT d.id,si.id
FROM (
  SELECT 'de_pre_a1_dlg_006' did,'srcitem_fast_l1_intro' sid UNION ALL
  SELECT 'de_pre_a1_dlg_007','srcitem_basic_u2_passport_customs' UNION ALL
  SELECT 'de_pre_a1_dlg_008','srcitem_headstart_m8_u2' UNION ALL
  SELECT 'de_pre_a1_dlg_009','srcitem_basic_u4_personal_family' UNION ALL
  SELECT 'de_pre_a1_dlg_010','srcitem_fast_l4_age'
) x
JOIN dialogues d ON d.public_id=x.did
JOIN source_items si ON si.public_id=x.sid;

INSERT IGNORE INTO dialogue_turn_sources (dialogue_turn_id,source_item_id)
SELECT dt.id,si.id
FROM dialogue_turns dt
JOIN dialogues d ON d.id=dt.dialogue_id
JOIN (
  SELECT 'de_pre_a1_dlg_006' did,'srcitem_fast_l1_intro' sid UNION ALL
  SELECT 'de_pre_a1_dlg_007','srcitem_basic_u2_passport_customs' UNION ALL
  SELECT 'de_pre_a1_dlg_008','srcitem_headstart_m8_u2' UNION ALL
  SELECT 'de_pre_a1_dlg_009','srcitem_basic_u4_personal_family' UNION ALL
  SELECT 'de_pre_a1_dlg_010','srcitem_fast_l4_age'
) x ON x.did=d.public_id
JOIN source_items si ON si.public_id=x.sid;

-- -----------------------------------------------------------------------------
-- Activities — counts intentionally vary: 3, 4, 2, 4, 3
-- -----------------------------------------------------------------------------
INSERT INTO activities
(public_id,lesson_id,position,type_code,instruction_fa,selection_reason,dialogue_id,payload,transformations,audio_status)
SELECT x.public_id,l.id,x.pos,x.type_code,x.instruction_fa,x.selection_reason,d.id,x.payload,x.transformations,'pending_final_language'
FROM (
  SELECT 'de_pre_a1_a006_01' public_id,'de_pre_a1_l006' lid,1 pos,'conversation_speaking' type_code,
         'گوش کن و معرفی نقش خودت را با صدای بلند بخوان.' instruction_fa,'Opening source introduction.' selection_reason,'de_pre_a1_dlg_006' did,
         JSON_OBJECT('learnerCharacterId','de_char_clarke') payload,JSON_OBJECT('sourceTransformation','short exact excerpt from FAST sample dialogue') transformations UNION ALL
  SELECT 'de_pre_a1_a006_02','de_pre_a1_l006',2,'pronunciation_read','این سؤالِ منبع را واضح و با صدای بلند بخوان.','FAST exercise explicitly teaches asking a fellow student’s name.',NULL,
         JSON_OBJECT('targetText','Wie heissen Sie?'),JSON_OBJECT('sourceTransformation','exact source exercise phrase') UNION ALL
  SELECT 'de_pre_a1_a006_03','de_pre_a1_l006',3,'word_order','کلمات سؤال نام را در ترتیب درست بچین.','Form reinforcement for the exact source question.',NULL,
         JSON_OBJECT('shuffleTokens',TRUE,'canonicalText','Wie heissen Sie?'),JSON_OBJECT('sourceTransformation','exact source question split into tokens') UNION ALL

  SELECT 'de_pre_a1_a007_01','de_pre_a1_l007',1,'conversation_speaking','گوش کن و پاسخ مربوط به مبدأ را بخوان.','Opening source customs exchange.','de_pre_a1_dlg_007',
         JSON_OBJECT('learnerCharacterId','de_char_brauer'),JSON_OBJECT('sourceTransformation','exact two-turn source exchange') UNION ALL
  SELECT 'de_pre_a1_a007_02','de_pre_a1_l007',2,'choose_response','پاسخ درستِ سؤال مبدأ را از بین عبارت‌های منبع انتخاب کن.','Meaning recognition.',NULL,
         JSON_OBJECT('shuffleOptions',TRUE),JSON_OBJECT('sourceTransformation','source sentences used as options') UNION ALL
  SELECT 'de_pre_a1_a007_03','de_pre_a1_l007',3,'word_order','کلمات پاسخ منبع را مرتب کن.','Sentence-form reinforcement.',NULL,
         JSON_OBJECT('shuffleTokens',TRUE,'canonicalText','Ich komme aus Amerika.'),JSON_OBJECT('sourceTransformation','source learner turn split into tokens') UNION ALL
  SELECT 'de_pre_a1_a007_04','de_pre_a1_l007',4,'pronunciation_read','پاسخ را یک بار واضح و با صدای بلند بخوان.','Short speaking close.',NULL,
         JSON_OBJECT(),JSON_OBJECT('sourceTransformation','exact source learner turn') UNION ALL

  SELECT 'de_pre_a1_a008_01','de_pre_a1_l008',1,'conversation_speaking','گوش کن و پاسخ محل زندگی را بخوان.','Opening source residence exchange.','de_pre_a1_dlg_008',
         JSON_OBJECT('learnerCharacterId','de_char_mike_halloway'),JSON_OBJECT('sourceTransformation','exact two-turn Headstart excerpt') UNION ALL
  SELECT 'de_pre_a1_a008_02','de_pre_a1_l008',2,'fill_blank','جای خالی جمله منبع را با عبارت درست کامل کن.','Compact reinforcement; no filler activity added.',NULL,
         JSON_OBJECT('promptTarget','Ich wohne in ____.','shuffleOptions',TRUE),JSON_OBJECT('sourceTransformation','source location blanked from learner turn') UNION ALL

  SELECT 'de_pre_a1_a009_01','de_pre_a1_l009',1,'conversation_speaking','گوش کن و پاسخ درباره خانواده را بخوان.','Opening source family exchange.','de_pre_a1_dlg_009',
         JSON_OBJECT('learnerCharacterId','de_char_jones'),JSON_OBJECT('sourceTransformation','exact two-turn FSI Basic exchange') UNION ALL
  SELECT 'de_pre_a1_a009_02','de_pre_a1_l009',2,'matching','واژه‌های خانواده را با معنی فارسی‌شان تطبیق بده.','Family-label recognition from the exact source response.',NULL,
         JSON_OBJECT('shuffleItems',TRUE),JSON_OBJECT('sourceTransformation','tokens/phrases taken from source response') UNION ALL
  SELECT 'de_pre_a1_a009_03','de_pre_a1_l009',3,'comprehension','طبق همان مکالمه، تعداد فرزندان را انتخاب کن.','Very simple comprehension using source number information.',NULL,
         JSON_OBJECT('shuffleOptions',TRUE),JSON_OBJECT('sourceTransformation','answer number comes directly from source response') UNION ALL
  SELECT 'de_pre_a1_a009_04','de_pre_a1_l009',4,'pronunciation_read','بخش کوتاه مشخص‌شده از پاسخ منبع را واضح بخوان.','Shorter speaking practice after the longer displayed learner turn.',NULL,
         JSON_OBJECT('targetText','vier Kinder'),JSON_OBJECT('sourceTransformation','exact phrase extracted from source learner turn') UNION ALL

  SELECT 'de_pre_a1_a010_01','de_pre_a1_l010',1,'conversation_speaking','گوش کن و سؤال سن را در نقش متصدی بلیت بخوان.','Opening source-derived FAST variant dialogue.','de_pre_a1_dlg_010',
         JSON_OBJECT('learnerCharacterId','de_char_ticket_clerk','coverageNote','asking_age_only'),JSON_OBJECT('sourceTransformation','FAST variant line paired with Frankfurt from same lesson base dialogue') UNION ALL
  SELECT 'de_pre_a1_a010_02','de_pre_a1_l010',2,'matching','سؤال مفرد و جمع منبع را با «یک کودک» و «دو کودک» تطبیق بده.','Recognises age-question forms without inventing an age answer.',NULL,
         JSON_OBJECT('shuffleItems',TRUE,'coverageNote','age_answer_gap_remains'),JSON_OBJECT('sourceTransformation','exact FAST variant phrases') UNION ALL
  SELECT 'de_pre_a1_a010_03','de_pre_a1_l010',3,'pronunciation_read','سؤال سن را واضح و با صدای بلند بخوان.','Speaking reinforcement for the source-backed age question.',NULL,
         JSON_OBJECT('targetText','Wie alt ist denn das Kind?','coverageNote','giving_age_not_yet_source_backed'),JSON_OBJECT('sourceTransformation','exact FAST variant phrase')
) x
JOIN lessons l ON l.public_id=x.lid
LEFT JOIN dialogues d ON d.public_id=x.did
ON DUPLICATE KEY UPDATE lesson_id=VALUES(lesson_id),position=VALUES(position),type_code=VALUES(type_code),instruction_fa=VALUES(instruction_fa),
 selection_reason=VALUES(selection_reason),dialogue_id=VALUES(dialogue_id),payload=VALUES(payload),transformations=VALUES(transformations),audio_status=VALUES(audio_status);

-- Activity provenance.
INSERT IGNORE INTO activity_sources (activity_id,source_item_id)
SELECT a.id,si.id
FROM activities a
JOIN (
  SELECT 'de_pre_a1_a006_01' aid,'srcitem_fast_l1_intro' sid UNION ALL
  SELECT 'de_pre_a1_a006_02','srcitem_fast_l1_intro' UNION ALL
  SELECT 'de_pre_a1_a006_03','srcitem_fast_l1_intro' UNION ALL
  SELECT 'de_pre_a1_a007_01','srcitem_basic_u2_passport_customs' UNION ALL
  SELECT 'de_pre_a1_a007_02','srcitem_basic_u2_passport_customs' UNION ALL
  SELECT 'de_pre_a1_a007_03','srcitem_basic_u2_passport_customs' UNION ALL
  SELECT 'de_pre_a1_a007_04','srcitem_basic_u2_passport_customs' UNION ALL
  SELECT 'de_pre_a1_a008_01','srcitem_headstart_m8_u2' UNION ALL
  SELECT 'de_pre_a1_a008_02','srcitem_headstart_m8_u2' UNION ALL
  SELECT 'de_pre_a1_a009_01','srcitem_basic_u4_personal_family' UNION ALL
  SELECT 'de_pre_a1_a009_02','srcitem_basic_u4_personal_family' UNION ALL
  SELECT 'de_pre_a1_a009_03','srcitem_basic_u4_personal_family' UNION ALL
  SELECT 'de_pre_a1_a009_04','srcitem_basic_u4_personal_family' UNION ALL
  SELECT 'de_pre_a1_a010_01','srcitem_fast_l4_age' UNION ALL
  SELECT 'de_pre_a1_a010_02','srcitem_fast_l4_age' UNION ALL
  SELECT 'de_pre_a1_a010_03','srcitem_fast_l4_age'
) x ON x.aid=a.public_id
JOIN source_items si ON si.public_id=x.sid;

-- Activity items / options. Stored order is canonical only; client shuffles where payload says so.
INSERT INTO activity_items (activity_id,position,item_role,text_target,text_fa,is_correct,group_key,metadata)
SELECT a.id,x.pos,x.item_role,x.text_target,x.text_fa,x.is_correct,x.group_key,x.metadata
FROM (
  SELECT 'de_pre_a1_a006_02' aid,1 pos,'prompt' item_role,'Wie heissen Sie?' text_target,'اسم شما چیست؟' text_fa,NULL is_correct,NULL group_key,JSON_OBJECT() metadata UNION ALL
  SELECT 'de_pre_a1_a006_03',1,'token','Wie',NULL,NULL,NULL,JSON_OBJECT('correctPosition',1) UNION ALL
  SELECT 'de_pre_a1_a006_03',2,'token','heissen',NULL,NULL,NULL,JSON_OBJECT('correctPosition',2) UNION ALL
  SELECT 'de_pre_a1_a006_03',3,'token','Sie',NULL,NULL,NULL,JSON_OBJECT('correctPosition',3) UNION ALL

  SELECT 'de_pre_a1_a007_02',1,'prompt','Wo kommen Sie her?','اهل کجا هستید؟',NULL,NULL,JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a007_02',2,'option','Ich komme aus Amerika.','من اهل آمریکا هستم.',1,NULL,JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a007_02',3,'option','Nach Frankfurt.','به فرانکفورت.',0,NULL,JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a007_03',1,'token','Ich',NULL,NULL,NULL,JSON_OBJECT('correctPosition',1) UNION ALL
  SELECT 'de_pre_a1_a007_03',2,'token','komme',NULL,NULL,NULL,JSON_OBJECT('correctPosition',2) UNION ALL
  SELECT 'de_pre_a1_a007_03',3,'token','aus',NULL,NULL,NULL,JSON_OBJECT('correctPosition',3) UNION ALL
  SELECT 'de_pre_a1_a007_03',4,'token','Amerika',NULL,NULL,NULL,JSON_OBJECT('correctPosition',4) UNION ALL
  SELECT 'de_pre_a1_a007_04',1,'prompt','Ich komme aus Amerika.','من اهل آمریکا هستم.',NULL,NULL,JSON_OBJECT() UNION ALL

  SELECT 'de_pre_a1_a008_02',1,'option','New York','نیویورک',1,NULL,JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a008_02',2,'option','Amerika','آمریکا',0,NULL,JSON_OBJECT() UNION ALL

  SELECT 'de_pre_a1_a009_02',1,'match','meine Frau','همسرم',NULL,'wife',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a009_02',2,'match','vier Kinder','چهار فرزند',NULL,'children',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a009_02',3,'match','zwei Jungen','دو پسر',NULL,'boys',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a009_02',4,'match','zwei Mädchen','دو دختر',NULL,'girls',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a009_03',1,'option','vier','چهار',1,NULL,JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a009_03',2,'option','zwei','دو',0,NULL,JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a009_04',1,'prompt','vier Kinder','چهار فرزند',NULL,NULL,JSON_OBJECT() UNION ALL

  SELECT 'de_pre_a1_a010_02',1,'match','Wie alt ist denn das Kind?','این کودک چند سال دارد؟',NULL,'singular',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a010_02',2,'match','Wie alt sind denn die Kinder?','این کودکان چند سال دارند؟',NULL,'plural',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a010_02',3,'match','ein Kind','یک کودک',NULL,'singular',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a010_02',4,'match','2 Kinder','دو کودک',NULL,'plural',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a010_03',1,'prompt','Wie alt ist denn das Kind?','این کودک چند سال دارد؟',NULL,NULL,JSON_OBJECT()
) x
JOIN activities a ON a.public_id=x.aid
ON DUPLICATE KEY UPDATE item_role=VALUES(item_role),text_target=VALUES(text_target),text_fa=VALUES(text_fa),is_correct=VALUES(is_correct),group_key=VALUES(group_key),metadata=VALUES(metadata);

INSERT IGNORE INTO activity_item_sources (activity_item_id,source_item_id)
SELECT ai.id,asrc.source_item_id
FROM activity_items ai
JOIN activity_sources asrc ON asrc.activity_id=ai.activity_id
WHERE ai.text_target IS NOT NULL;

-- -----------------------------------------------------------------------------
-- Reusable words / phrases
-- -----------------------------------------------------------------------------
INSERT INTO lexemes
(public_id,language_id,language_level_id,lexeme_type,surface,lemma,part_of_speech,translation_fa,flashcard_eligible,audio_status)
SELECT x.public_id,l.id,ll.id,x.lexeme_type,x.surface,x.lemma,x.pos,x.translation_fa,1,'blocked_until_language_final'
FROM languages l
JOIN language_levels ll ON ll.language_id=l.id
JOIN cefr_levels c ON c.id=ll.cefr_level_id AND c.code='Pre-A1'
JOIN (
  SELECT 'de_lex_mein_name_ist' public_id,'phrase' lexeme_type,'mein Name ist' surface,NULL lemma,NULL pos,'اسم من ... است' translation_fa UNION ALL
  SELECT 'de_lex_wie_heissen_sie','phrase','Wie heissen Sie?',NULL,NULL,'اسم شما چیست؟' UNION ALL
  SELECT 'de_lex_ich_komme_aus','phrase','Ich komme aus',NULL,NULL,'من اهلِ ... هستم' UNION ALL
  SELECT 'de_lex_wo_kommen_sie_her','phrase','Wo kommen Sie her?',NULL,NULL,'اهل کجا هستید؟' UNION ALL
  SELECT 'de_lex_wo_wohnen_sie','phrase','Wo wohnen Sie',NULL,NULL,'کجا زندگی می‌کنید؟' UNION ALL
  SELECT 'de_lex_ich_wohne_in','phrase','Ich wohne in',NULL,NULL,'من در ... زندگی می‌کنم' UNION ALL
  SELECT 'de_lex_familie','word','Familie','Familie','noun','خانواده' UNION ALL
  SELECT 'de_lex_frau','word','Frau','Frau','noun','زن / همسر' UNION ALL
  SELECT 'de_lex_kinder','word','Kinder','Kind','noun','کودکان / فرزندان' UNION ALL
  SELECT 'de_lex_jungen','word','Jungen','Junge','noun','پسرها' UNION ALL
  SELECT 'de_lex_maedchen','word','Mädchen','Mädchen','noun','دخترها' UNION ALL
  SELECT 'de_lex_wie_alt_ist_das_kind','phrase','Wie alt ist denn das Kind?',NULL,NULL,'این کودک چند سال دارد؟' UNION ALL
  SELECT 'de_lex_kind','word','Kind','Kind','noun','کودک'
) x ON 1=1
WHERE l.code='de'
ON DUPLICATE KEY UPDATE surface=VALUES(surface),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),translation_fa=VALUES(translation_fa),language_level_id=VALUES(language_level_id);

INSERT IGNORE INTO lexeme_sources (lexeme_id,source_item_id)
SELECT lx.id,si.id
FROM lexemes lx
JOIN (
  SELECT 'de_lex_mein_name_ist' lid,'srcitem_fast_l1_intro' sid UNION ALL
  SELECT 'de_lex_wie_heissen_sie','srcitem_fast_l1_intro' UNION ALL
  SELECT 'de_lex_ich_komme_aus','srcitem_basic_u2_passport_customs' UNION ALL
  SELECT 'de_lex_wo_kommen_sie_her','srcitem_basic_u2_passport_customs' UNION ALL
  SELECT 'de_lex_wo_wohnen_sie','srcitem_headstart_m8_u2' UNION ALL
  SELECT 'de_lex_ich_wohne_in','srcitem_headstart_m8_u2' UNION ALL
  SELECT 'de_lex_familie','srcitem_basic_u4_personal_family' UNION ALL
  SELECT 'de_lex_frau','srcitem_basic_u4_personal_family' UNION ALL
  SELECT 'de_lex_kinder','srcitem_basic_u4_personal_family' UNION ALL
  SELECT 'de_lex_jungen','srcitem_basic_u4_personal_family' UNION ALL
  SELECT 'de_lex_maedchen','srcitem_basic_u4_personal_family' UNION ALL
  SELECT 'de_lex_wie_alt_ist_das_kind','srcitem_fast_l4_age' UNION ALL
  SELECT 'de_lex_kind','srcitem_fast_l4_age'
) x ON x.lid=lx.public_id
JOIN source_items si ON si.public_id=x.sid;

INSERT IGNORE INTO lesson_lexemes (lesson_id,lexeme_id)
SELECT l.id,lx.id
FROM lessons l
JOIN (
  SELECT 'de_pre_a1_l006' lesson_public_id,'de_lex_mein_name_ist' lexeme_public_id UNION ALL
  SELECT 'de_pre_a1_l006','de_lex_wie_heissen_sie' UNION ALL
  SELECT 'de_pre_a1_l006','de_lex_heissen' UNION ALL
  SELECT 'de_pre_a1_l007','de_lex_wo_kommen_sie_her' UNION ALL
  SELECT 'de_pre_a1_l007','de_lex_ich_komme_aus' UNION ALL
  SELECT 'de_pre_a1_l008','de_lex_wo_wohnen_sie' UNION ALL
  SELECT 'de_pre_a1_l008','de_lex_ich_wohne_in' UNION ALL
  SELECT 'de_pre_a1_l009','de_lex_familie' UNION ALL
  SELECT 'de_pre_a1_l009','de_lex_frau' UNION ALL
  SELECT 'de_pre_a1_l009','de_lex_kinder' UNION ALL
  SELECT 'de_pre_a1_l009','de_lex_jungen' UNION ALL
  SELECT 'de_pre_a1_l009','de_lex_maedchen' UNION ALL
  SELECT 'de_pre_a1_l010','de_lex_wie_alt_ist_das_kind' UNION ALL
  SELECT 'de_pre_a1_l010','de_lex_kind'
) x ON x.lesson_public_id=l.public_id
JOIN lexemes lx ON lx.public_id=x.lexeme_public_id;

-- -----------------------------------------------------------------------------
-- Source-backed usage/grammar notes (translated to Persian)
-- -----------------------------------------------------------------------------
INSERT INTO grammar_notes
(public_id,language_level_id,title_fa,source_text,translation_fa)
SELECT 'de_gn_fast_l1_introduction',ll.id,'معرفی کردن خود در آلمانی',
       'When speakers of German introduce themselves, they use their last name only. Titles such as Mr., Mrs., Professor, etc., are only mentioned when introducing others.',
       'در این منبع توضیح داده شده که هنگام معرفی خود، معمولاً فقط نام خانوادگی گفته می‌شود؛ عنوان‌هایی مثل آقا، خانم یا پروفسور بیشتر هنگام معرفی دیگران به کار می‌روند.'
FROM language_levels ll JOIN languages l ON l.id=ll.language_id AND l.code='de' JOIN cefr_levels c ON c.id=ll.cefr_level_id AND c.code='Pre-A1'
ON DUPLICATE KEY UPDATE title_fa=VALUES(title_fa),source_text=VALUES(source_text),translation_fa=VALUES(translation_fa);

INSERT INTO grammar_notes
(public_id,language_level_id,title_fa,source_text,translation_fa)
SELECT 'de_gn_fast_l1_kommen_aus',ll.id,'کاربرد kommen aus',
       'Kommen aus is used to show place of origin, birth, or permanent residence.',
       'در منبع، «kommen aus» برای بیان مبدأ، محل تولد یا محل اقامت دائمی معرفی شده است.'
FROM language_levels ll JOIN languages l ON l.id=ll.language_id AND l.code='de' JOIN cefr_levels c ON c.id=ll.cefr_level_id AND c.code='Pre-A1'
ON DUPLICATE KEY UPDATE title_fa=VALUES(title_fa),source_text=VALUES(source_text),translation_fa=VALUES(translation_fa);

INSERT IGNORE INTO grammar_note_sources (grammar_note_id,source_item_id)
SELECT gn.id,si.id FROM grammar_notes gn JOIN source_items si ON si.public_id='srcitem_fast_l1_intro'
WHERE gn.public_id IN ('de_gn_fast_l1_introduction','de_gn_fast_l1_kommen_aus');

INSERT IGNORE INTO lesson_grammar_notes (lesson_id,grammar_note_id)
SELECT l.id,gn.id FROM lessons l JOIN grammar_notes gn ON gn.public_id='de_gn_fast_l1_introduction' WHERE l.public_id='de_pre_a1_l006';
INSERT IGNORE INTO lesson_grammar_notes (lesson_id,grammar_note_id)
SELECT l.id,gn.id FROM lessons l JOIN grammar_notes gn ON gn.public_id='de_gn_fast_l1_kommen_aus' WHERE l.public_id='de_pre_a1_l007';

INSERT IGNORE INTO lexeme_grammar_notes (lexeme_id,grammar_note_id)
SELECT lx.id,gn.id FROM lexemes lx JOIN grammar_notes gn ON gn.public_id='de_gn_fast_l1_introduction'
WHERE lx.public_id IN ('de_lex_mein_name_ist','de_lex_wie_heissen_sie','de_lex_heissen');
INSERT IGNORE INTO lexeme_grammar_notes (lexeme_id,grammar_note_id)
SELECT lx.id,gn.id FROM lexemes lx JOIN grammar_notes gn ON gn.public_id='de_gn_fast_l1_kommen_aus'
WHERE lx.public_id IN ('de_lex_ich_komme_aus','de_lex_wo_kommen_sie_her');

-- -----------------------------------------------------------------------------
-- Lesson status / dynamic sequence signatures
-- -----------------------------------------------------------------------------
UPDATE lessons SET status='source_checked',template_signature='conversation_speaking>pronunciation_read>word_order',
 activity_count_rationale='3 activities: source introduction first, then explicit name-question speaking and reconstruction from the same source lesson.',
 sequence_rationale='The opening introduces the name pattern; the learner then actively asks the exact source question and reconstructs it.'
WHERE public_id='de_pre_a1_l006';

UPDATE lessons SET status='source_checked',template_signature='conversation_speaking>choose_response>word_order>pronunciation_read',
 activity_count_rationale='4 activities because origin needs both meaning recognition and control of the short response pattern before spoken repetition.',
 sequence_rationale='Meaning → response choice → form reconstruction → speaking.'
WHERE public_id='de_pre_a1_l007';

UPDATE lessons SET status='source_checked',template_signature='conversation_speaking>fill_blank',
 activity_count_rationale='2 activities are enough for this highly predictable residence exchange; no filler is added.',
 sequence_rationale='A single compact transformation follows the conversation.'
WHERE public_id='de_pre_a1_l008';

UPDATE lessons SET status='source_checked',template_signature='conversation_speaking>matching>comprehension>pronunciation_read',
 activity_count_rationale='4 activities are justified because the source response introduces several immediate-family labels plus a number fact.',
 sequence_rationale='Conversation → family-label recognition → meaning check → short spoken phrase.'
WHERE public_id='de_pre_a1_l009';

UPDATE lessons SET status='source_checked',template_signature='conversation_speaking>matching>pronunciation_read',
 activity_count_rationale='3 activities cover the source-backed age-question material. Giving an age is deliberately not fabricated and remains a coverage gap.',
 sequence_rationale='Conversation introduces the age question, matching distinguishes singular/plural source forms, then speaking reinforces the singular question.'
WHERE public_id='de_pre_a1_l010';

-- Explicitly document that CEFR target 010 is only partially covered until a source-backed age answer is found.
UPDATE curriculum_targets ct
JOIN language_levels ll ON ll.id=ct.language_level_id
JOIN languages l ON l.id=ll.language_id
JOIN cefr_levels c ON c.id=ll.cefr_level_id
SET ct.coverage_status='partial',
    ct.notes=CONCAT(COALESCE(ct.notes,''), CASE WHEN COALESCE(ct.notes,'')='' THEN '' ELSE '\n' END,
      'Source-backed age question/recognition is implemented in lesson 10; a source-backed simple age answer is still required before this target can be covered/verified.')
WHERE l.code='de' AND c.code='Pre-A1' AND ct.public_id='de_pre_a1_ct_010';

-- Visibility / sanity output.
SELECT l.public_id,l.status,l.template_signature,COUNT(DISTINCT a.id) activity_count
FROM lessons l LEFT JOIN activities a ON a.lesson_id=l.id
WHERE l.public_id BETWEEN 'de_pre_a1_l006' AND 'de_pre_a1_l010'
GROUP BY l.id,l.public_id,l.status,l.template_signature
ORDER BY l.sequence_number;
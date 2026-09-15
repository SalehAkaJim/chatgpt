-- German Pre-A1 content batch 001: lessons 1–5
-- Target: MySQL 9.0.1
-- Source-backed target-language content only. Persian is translation/instruction support.
-- Audio intentionally remains blocked.

SET NAMES utf8mb4;

-- -----------------------------------------------------------------------------
-- Characters
-- -----------------------------------------------------------------------------
INSERT INTO characters
(public_id, language_id, name, origin, gender, age_band, roles, context_notes,
 voice_clarity, voice_stress_level, voice_aggressiveness, voice_tone_consistency)
SELECT 'de_char_allen', l.id, 'Mr. Allen', 'source', 'male', 'adult',
       JSON_ARRAY('learner_surrogate','consulate_staff'),
       'Source character from FSI German Basic. Male title is explicit in source.',
       'high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name), origin=VALUES(origin), gender=VALUES(gender), age_band=VALUES(age_band), roles=VALUES(roles), context_notes=VALUES(context_notes);

INSERT INTO characters
(public_id, language_id, name, origin, gender, age_band, roles, context_notes,
 voice_clarity, voice_stress_level, voice_aggressiveness, voice_tone_consistency)
SELECT 'de_char_becker', l.id, 'Mr. Becker', 'source', 'male', 'adult',
       JSON_ARRAY('acquaintance'),
       'Source character from FSI German Basic. Male title is explicit in source.',
       'high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name), origin=VALUES(origin), gender=VALUES(gender), age_band=VALUES(age_band), roles=VALUES(roles), context_notes=VALUES(context_notes);

INSERT INTO characters
(public_id, language_id, name, origin, gender, age_band, roles, context_notes,
 voice_clarity, voice_stress_level, voice_aggressiveness, voice_tone_consistency)
SELECT 'de_char_mike_halloway', l.id, 'Mike Halloway', 'source', 'male', 'adult',
       JSON_ARRAY('learner_surrogate'),
       'Named source character from German Headstart.',
       'high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name), origin=VALUES(origin), gender=VALUES(gender), age_band=VALUES(age_band), roles=VALUES(roles), context_notes=VALUES(context_notes);

INSERT INTO characters
(public_id, language_id, name, origin, gender, age_band, roles, context_notes,
 voice_clarity, voice_stress_level, voice_aggressiveness, voice_tone_consistency)
SELECT 'de_char_herr_mueller', l.id, 'Herr Müller', 'source', 'male', 'adult',
       JSON_ARRAY('local_acquaintance'),
       'Named male source character from German Headstart.',
       'high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name), origin=VALUES(origin), gender=VALUES(gender), age_band=VALUES(age_band), roles=VALUES(roles), context_notes=VALUES(context_notes);

INSERT INTO characters
(public_id, language_id, name, origin, gender, age_band, roles, context_notes,
 voice_clarity, voice_stress_level, voice_aggressiveness, voice_tone_consistency)
SELECT 'de_char_frau_mueller', l.id, 'Frau Müller', 'source', 'female', 'adult',
       JSON_ARRAY('local_acquaintance'),
       'Named female source character from German Headstart. Female title is explicit in source.',
       'high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name), origin=VALUES(origin), gender=VALUES(gender), age_band=VALUES(age_band), roles=VALUES(roles), context_notes=VALUES(context_notes);

INSERT INTO characters
(public_id, language_id, name, origin, gender, age_band, roles, context_notes,
 voice_clarity, voice_stress_level, voice_aggressiveness, voice_tone_consistency)
SELECT 'de_char_consulate_colleague', l.id, 'Consulate colleague', 'app_created', 'unspecified', 'adult',
       JSON_ARRAY('colleague'),
       'Source dialogue does not identify this speaker by name or gender. Character remains gender-unspecified to avoid unsupported assignment.',
       'high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name), origin=VALUES(origin), gender=VALUES(gender), age_band=VALUES(age_band), roles=VALUES(roles), context_notes=VALUES(context_notes);

INSERT INTO characters
(public_id, language_id, name, origin, gender, age_band, roles, context_notes,
 voice_clarity, voice_stress_level, voice_aggressiveness, voice_tone_consistency)
SELECT 'de_char_passport_official', l.id, 'Passport official', 'app_created', 'unspecified', 'adult',
       JSON_ARRAY('official'),
       'The source role is an official; gender is not established by the selected lines, so no gender is invented.',
       'high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name), origin=VALUES(origin), gender=VALUES(gender), age_band=VALUES(age_band), roles=VALUES(roles), context_notes=VALUES(context_notes);

INSERT INTO characters
(public_id, language_id, name, origin, gender, age_band, roles, context_notes,
 voice_clarity, voice_stress_level, voice_aggressiveness, voice_tone_consistency)
SELECT 'de_char_brauer', l.id, 'Brauer', 'source', 'unspecified', 'adult',
       JSON_ARRAY('traveler','learner_surrogate'),
       'Named source speaker from FSI Basic passport-control exchange. Selected source excerpt does not establish gender, so gender remains unspecified.',
       'high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name), origin=VALUES(origin), gender=VALUES(gender), age_band=VALUES(age_band), roles=VALUES(roles), context_notes=VALUES(context_notes);

-- -----------------------------------------------------------------------------
-- Dialogues
-- -----------------------------------------------------------------------------
INSERT INTO dialogues (public_id, language_level_id, scenario, status)
SELECT x.public_id, ll.id, x.scenario, 'source_checked'
FROM language_levels ll
JOIN languages l ON l.id=ll.language_id AND l.code='de'
JOIN cefr_levels c ON c.id=ll.cefr_level_id AND c.code='Pre-A1'
JOIN (
  SELECT 'de_pre_a1_dlg_001' public_id,'Greeting Mr. Becker in Munich (FSI Basic Unit 2 excerpt)' scenario UNION ALL
  SELECT 'de_pre_a1_dlg_002','Leaving the Müller family visit (Headstart Module VIII Unit 2 excerpt)' UNION ALL
  SELECT 'de_pre_a1_dlg_003','Thanking Mr. Müller and saying goodbye (Headstart Module II Unit 3 excerpt)' UNION ALL
  SELECT 'de_pre_a1_dlg_004','How-are-you exchange at the consulate (FSI Basic Unit 4 excerpt)' UNION ALL
  SELECT 'de_pre_a1_dlg_005','Passport-control name exchange (FSI Basic Unit 2 excerpt)'
) x ON 1=1
ON DUPLICATE KEY UPDATE scenario=VALUES(scenario), status=VALUES(status);

INSERT IGNORE INTO dialogue_characters (dialogue_id, character_id, role_label)
SELECT d.id, ch.id, x.role_label
FROM (
  SELECT 'de_pre_a1_dlg_001' did,'de_char_allen' cid,'speaker' role_label UNION ALL
  SELECT 'de_pre_a1_dlg_001','de_char_becker','learner_role' UNION ALL
  SELECT 'de_pre_a1_dlg_002','de_char_frau_mueller','speaker' UNION ALL
  SELECT 'de_pre_a1_dlg_002','de_char_mike_halloway','learner_role' UNION ALL
  SELECT 'de_pre_a1_dlg_003','de_char_mike_halloway','speaker' UNION ALL
  SELECT 'de_pre_a1_dlg_003','de_char_herr_mueller','learner_role' UNION ALL
  SELECT 'de_pre_a1_dlg_004','de_char_consulate_colleague','speaker' UNION ALL
  SELECT 'de_pre_a1_dlg_004','de_char_allen','learner_role' UNION ALL
  SELECT 'de_pre_a1_dlg_005','de_char_passport_official','speaker' UNION ALL
  SELECT 'de_pre_a1_dlg_005','de_char_brauer','learner_role'
) x
JOIN dialogues d ON d.public_id=x.did
JOIN characters ch ON ch.public_id=x.cid;

-- Exact source turns + natural faithful Persian translations.
INSERT INTO dialogue_turns
(dialogue_id, position, speaker_character_id, speaker_identity_origin, speaker_gender_evidence, text_target, translation_fa, learner_turn)
SELECT d.id, x.pos, ch.id, x.identity_origin, x.gender_evidence, x.text_target, x.translation_fa, x.learner_turn
FROM (
  SELECT 'de_pre_a1_dlg_001' did,1 pos,'de_char_allen' cid,'source' identity_origin,'male' gender_evidence,
         'Guten Tag, Herr Becker. Wie geht es Ihnen denn?' text_target,'روز بخیر آقای بکر. حالتان چطور است؟' translation_fa,0 learner_turn UNION ALL
  SELECT 'de_pre_a1_dlg_001',2,'de_char_becker','source','male','Danke, gut.','ممنون، خوبم.',1 UNION ALL

  SELECT 'de_pre_a1_dlg_002',1,'de_char_frau_mueller','source','female','Kommen Sie bald wieder!','به‌زودی دوباره به ما سر بزنید!',0 UNION ALL
  SELECT 'de_pre_a1_dlg_002',2,'de_char_mike_halloway','source','male','Bis Montag. Auf Wiedersehen.','تا دوشنبه. خداحافظ.',1 UNION ALL

  SELECT 'de_pre_a1_dlg_003',1,'de_char_mike_halloway','source','male','Danke sehr, Herr Müller.','خیلی ممنون، آقای مولر.',0 UNION ALL
  SELECT 'de_pre_a1_dlg_003',2,'de_char_herr_mueller','source','male','Bitte. Auf Wiedersehen!','خواهش می‌کنم. خداحافظ!',1 UNION ALL

  SELECT 'de_pre_a1_dlg_004',1,'de_char_consulate_colleague','app_assigned','unspecified','Guten Morgen, Herr Allen. Wie geht es Ihnen?','صبح بخیر آقای آلن. حالتان چطور است؟',0 UNION ALL
  SELECT 'de_pre_a1_dlg_004',2,'de_char_allen','source','male','Danke, gut, und Ihnen?','ممنون، خوبم. شما چطور؟',1 UNION ALL
  SELECT 'de_pre_a1_dlg_004',3,'de_char_consulate_colleague','app_assigned','unspecified','Danke, ich kann nicht klagen.','ممنون، بد نیستم.',0 UNION ALL

  SELECT 'de_pre_a1_dlg_005',1,'de_char_passport_official','app_assigned','unspecified','Wie heissen Sie, Bauer oder Brauer?','نام شما باوئر است یا براوئر؟',0 UNION ALL
  SELECT 'de_pre_a1_dlg_005',2,'de_char_brauer','source','unspecified','Ich heisse Brauer.','اسم من براوئر است.',1
) x
JOIN dialogues d ON d.public_id=x.did
JOIN characters ch ON ch.public_id=x.cid
ON DUPLICATE KEY UPDATE
  speaker_character_id=VALUES(speaker_character_id),
  speaker_identity_origin=VALUES(speaker_identity_origin),
  speaker_gender_evidence=VALUES(speaker_gender_evidence),
  text_target=VALUES(text_target),
  translation_fa=VALUES(translation_fa),
  learner_turn=VALUES(learner_turn);

-- Dialogue and exact turn provenance.
INSERT IGNORE INTO dialogue_sources (dialogue_id, source_item_id)
SELECT d.id, si.id
FROM (
  SELECT 'de_pre_a1_dlg_001' did,'srcitem_basic_u2_greetings' sid UNION ALL
  SELECT 'de_pre_a1_dlg_002','srcitem_headstart_m8_u2' UNION ALL
  SELECT 'de_pre_a1_dlg_003','srcitem_headstart_m2_u3' UNION ALL
  SELECT 'de_pre_a1_dlg_004','srcitem_basic_u4_office' UNION ALL
  SELECT 'de_pre_a1_dlg_005','srcitem_basic_u2_passport_customs'
) x
JOIN dialogues d ON d.public_id=x.did
JOIN source_items si ON si.public_id=x.sid;

INSERT IGNORE INTO dialogue_turn_sources (dialogue_turn_id, source_item_id)
SELECT dt.id, si.id
FROM dialogue_turns dt
JOIN dialogues d ON d.id=dt.dialogue_id
JOIN (
  SELECT 'de_pre_a1_dlg_001' did,'srcitem_basic_u2_greetings' sid UNION ALL
  SELECT 'de_pre_a1_dlg_002','srcitem_headstart_m8_u2' UNION ALL
  SELECT 'de_pre_a1_dlg_003','srcitem_headstart_m2_u3' UNION ALL
  SELECT 'de_pre_a1_dlg_004','srcitem_basic_u4_office' UNION ALL
  SELECT 'de_pre_a1_dlg_005','srcitem_basic_u2_passport_customs'
) x ON x.did=d.public_id
JOIN source_items si ON si.public_id=x.sid;

-- -----------------------------------------------------------------------------
-- Activities — intentionally different counts/sequences per lesson
-- -----------------------------------------------------------------------------
INSERT INTO activities
(public_id, lesson_id, position, type_code, instruction_fa, selection_reason, dialogue_id, payload, transformations, audio_status)
SELECT x.public_id, l.id, x.pos, x.type_code, x.instruction_fa, x.selection_reason, d.id,
       x.payload, x.transformations, 'pending_final_language'
FROM (
  SELECT 'de_pre_a1_a001_01' public_id,'de_pre_a1_l001' lid,1 pos,'conversation_speaking' type_code,
         'گوش کن و پاسخ نقش خودت را با صدای بلند بخوان.' instruction_fa,'Opening source dialogue.' selection_reason,'de_pre_a1_dlg_001' did,
         JSON_OBJECT('learnerCharacterId','de_char_becker') payload,JSON_OBJECT('sourceTransformation','two-turn source excerpt') transformations UNION ALL
  SELECT 'de_pre_a1_a001_02','de_pre_a1_l001',2,'listen_choose','عبارتی را انتخاب کن که نقش سلام و شروع گفتگو را دارد.','Receptive recognition after first exposure.',NULL,
         JSON_OBJECT('shuffleOptions',TRUE),JSON_OBJECT('sourceTransformation','unchanged source turns used as options') UNION ALL
  SELECT 'de_pre_a1_a001_03','de_pre_a1_l001',3,'pronunciation_read','عبارت را واضح و با صدای بلند بخوان.','Short speaking reinforcement.',NULL,
         JSON_OBJECT(),JSON_OBJECT('sourceTransformation','exact source line') UNION ALL

  SELECT 'de_pre_a1_a002_01','de_pre_a1_l002',1,'conversation_speaking','گوش کن و جمله خداحافظی نقش خودت را بخوان.','Opening source dialogue.', 'de_pre_a1_dlg_002',
         JSON_OBJECT('learnerCharacterId','de_char_mike_halloway'),JSON_OBJECT('sourceTransformation','two-turn excerpt from end of source conversation') UNION ALL
  SELECT 'de_pre_a1_a002_02','de_pre_a1_l002',2,'matching','سلام‌ها را با زمان مناسب روز تطبیق بده.','Visual/time-of-day recognition from Headstart exercise.',NULL,
         JSON_OBJECT('shuffleItems',TRUE),JSON_OBJECT('sourceTransformation','source greeting examples grouped by meaning') UNION ALL
  SELECT 'de_pre_a1_a002_03','de_pre_a1_l002',3,'pronunciation_read','جمله خداحافظی را با صدای بلند بخوان.','Speaking reinforcement without adding new German.',NULL,
         JSON_OBJECT(),JSON_OBJECT('sourceTransformation','exact source turn') UNION ALL

  SELECT 'de_pre_a1_a003_01','de_pre_a1_l003',1,'conversation_speaking','گوش کن و پاسخ مؤدبانه نقش خودت را بخوان.','Opening source dialogue.', 'de_pre_a1_dlg_003',
         JSON_OBJECT('learnerCharacterId','de_char_herr_mueller'),JSON_OBJECT('sourceTransformation','two-turn excerpt from source conversation') UNION ALL
  SELECT 'de_pre_a1_a003_02','de_pre_a1_l003',2,'matching','عبارت‌های تشکر و جواب تشکر را در دو گروه درست قرار بده.','Courtesy formula recognition using Headstart Exercise 16 only.',NULL,
         JSON_OBJECT('shuffleItems',TRUE,'groupLabels',JSON_ARRAY('تشکر','پاسخ به تشکر')),JSON_OBJECT('sourceTransformation','exact source formulas categorized; no new German') UNION ALL

  SELECT 'de_pre_a1_a004_01','de_pre_a1_l004',1,'conversation_speaking','گوش کن و پاسخ نقش آقای آلن را بخوان.','Opening source dialogue.', 'de_pre_a1_dlg_004',
         JSON_OBJECT('learnerCharacterId','de_char_allen'),JSON_OBJECT('sourceTransformation','three-turn exact source excerpt') UNION ALL
  SELECT 'de_pre_a1_a004_02','de_pre_a1_l004',2,'choose_response','پاسخ بعدی درست را از بین گزینه‌های منبع انتخاب کن.','Conversation comprehension.',NULL,
         JSON_OBJECT('shuffleOptions',TRUE),JSON_OBJECT('sourceTransformation','source lines reused as options') UNION ALL
  SELECT 'de_pre_a1_a004_03','de_pre_a1_l004',3,'word_order','کلمات جمله منبع را در ترتیب درست بچین.','Form reinforcement from the learner turn.',NULL,
         JSON_OBJECT('shuffleTokens',TRUE,'canonicalText','Danke, gut, und Ihnen?'),JSON_OBJECT('sourceTransformation','source learner turn split into tokens') UNION ALL

  SELECT 'de_pre_a1_a005_01','de_pre_a1_l005',1,'conversation_speaking','گوش کن و پاسخ نام خودت را از روی جمله نمایش‌داده‌شده بخوان.','Opening source dialogue.', 'de_pre_a1_dlg_005',
         JSON_OBJECT('learnerCharacterId','de_char_brauer'),JSON_OBJECT('sourceTransformation','two-turn exact source excerpt') UNION ALL
  SELECT 'de_pre_a1_a005_02','de_pre_a1_l005',2,'fill_blank','جای خالی جمله منبع را با گزینه درست کامل کن.','Name-form recognition from the same source exchange.',NULL,
         JSON_OBJECT('promptTarget','Ich heisse ____.','shuffleOptions',TRUE),JSON_OBJECT('sourceTransformation','one source token blanked; options are source surnames') UNION ALL
  SELECT 'de_pre_a1_a005_03','de_pre_a1_l005',3,'pronunciation_read','جمله را واضح و با صدای بلند بخوان.','Speaking reinforcement.',NULL,
         JSON_OBJECT(),JSON_OBJECT('sourceTransformation','exact source turn')
) x
JOIN lessons l ON l.public_id=x.lid
LEFT JOIN dialogues d ON d.public_id=x.did
ON DUPLICATE KEY UPDATE
  lesson_id=VALUES(lesson_id), position=VALUES(position), type_code=VALUES(type_code), instruction_fa=VALUES(instruction_fa),
  selection_reason=VALUES(selection_reason), dialogue_id=VALUES(dialogue_id), payload=VALUES(payload), transformations=VALUES(transformations), audio_status=VALUES(audio_status);

-- Activity provenance.
INSERT IGNORE INTO activity_sources (activity_id, source_item_id)
SELECT a.id, si.id
FROM activities a
JOIN (
  SELECT 'de_pre_a1_a001_01' aid,'srcitem_basic_u2_greetings' sid UNION ALL
  SELECT 'de_pre_a1_a001_02','srcitem_basic_u2_greetings' UNION ALL
  SELECT 'de_pre_a1_a001_03','srcitem_basic_u2_greetings' UNION ALL
  SELECT 'de_pre_a1_a002_01','srcitem_headstart_m8_u2' UNION ALL
  SELECT 'de_pre_a1_a002_02','srcitem_headstart_m2_u3' UNION ALL
  SELECT 'de_pre_a1_a002_03','srcitem_headstart_m8_u2' UNION ALL
  SELECT 'de_pre_a1_a003_01','srcitem_headstart_m2_u3' UNION ALL
  SELECT 'de_pre_a1_a003_02','srcitem_headstart_m2_u3' UNION ALL
  SELECT 'de_pre_a1_a004_01','srcitem_basic_u4_office' UNION ALL
  SELECT 'de_pre_a1_a004_02','srcitem_basic_u4_office' UNION ALL
  SELECT 'de_pre_a1_a004_03','srcitem_basic_u4_office' UNION ALL
  SELECT 'de_pre_a1_a005_01','srcitem_basic_u2_passport_customs' UNION ALL
  SELECT 'de_pre_a1_a005_02','srcitem_basic_u2_passport_customs' UNION ALL
  SELECT 'de_pre_a1_a005_03','srcitem_basic_u2_passport_customs'
) x ON x.aid=a.public_id
JOIN source_items si ON si.public_id=x.sid;

-- Activity items. Positions are canonical storage order; payload flags instruct the client to shuffle where appropriate.
INSERT INTO activity_items (activity_id, position, item_role, text_target, text_fa, is_correct, group_key, metadata)
SELECT a.id,x.pos,x.item_role,x.text_target,x.text_fa,x.is_correct,x.group_key,x.metadata
FROM (
  SELECT 'de_pre_a1_a001_02' aid,1 pos,'option' item_role,'Guten Tag, Herr Becker. Wie geht es Ihnen denn?' text_target,'روز بخیر آقای بکر. حالتان چطور است؟' text_fa,1 is_correct,NULL group_key,JSON_OBJECT() metadata UNION ALL
  SELECT 'de_pre_a1_a001_02',2,'option','Danke, gut.','ممنون، خوبم.',0,NULL,JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a001_03',1,'prompt','Guten Tag, Herr Becker. Wie geht es Ihnen denn?','روز بخیر آقای بکر. حالتان چطور است؟',NULL,NULL,JSON_OBJECT() UNION ALL

  SELECT 'de_pre_a1_a002_02',1,'match','Guten Morgen, Herr Müller!','صبح بخیر آقای مولر!',NULL,'morning',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a002_02',2,'match','Guten Tag, Frau Müller!','روز بخیر خانم مولر!',NULL,'day',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a002_02',3,'match','Guten Abend, Fräulein Müller!','عصر بخیر خانم مولر!',NULL,'evening',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a002_02',4,'match','Gute Nacht!','شب بخیر!',NULL,'night',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a002_03',1,'prompt','Bis Montag. Auf Wiedersehen.','تا دوشنبه. خداحافظ.',NULL,NULL,JSON_OBJECT() UNION ALL

  SELECT 'de_pre_a1_a003_02',1,'formula','Danke.','ممنون.',NULL,'thanks',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a003_02',2,'formula','Vielen Dank.','خیلی ممنون.',NULL,'thanks',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a003_02',3,'formula','Danke schön.','خیلی ممنون.',NULL,'thanks',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a003_02',4,'formula','Danke sehr.','خیلی ممنون.',NULL,'thanks',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a003_02',5,'formula','Bitte!','خواهش می‌کنم!',NULL,'you_are_welcome',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a003_02',6,'formula','Bitte schön!','خواهش می‌کنم!',NULL,'you_are_welcome',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a003_02',7,'formula','Bitte sehr!','خواهش می‌کنم!',NULL,'you_are_welcome',JSON_OBJECT() UNION ALL

  SELECT 'de_pre_a1_a004_02',1,'prompt','Danke, gut, und Ihnen?','ممنون، خوبم. شما چطور؟',NULL,NULL,JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a004_02',2,'option','Danke, ich kann nicht klagen.','ممنون، بد نیستم.',1,NULL,JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a004_02',3,'option','Nein, seine Frau ist krank.','نه، همسرش بیمار است.',0,NULL,JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a004_03',1,'token','Danke',NULL,NULL,NULL,JSON_OBJECT('correctPosition',1) UNION ALL
  SELECT 'de_pre_a1_a004_03',2,'token','gut',NULL,NULL,NULL,JSON_OBJECT('correctPosition',2) UNION ALL
  SELECT 'de_pre_a1_a004_03',3,'token','und',NULL,NULL,NULL,JSON_OBJECT('correctPosition',3) UNION ALL
  SELECT 'de_pre_a1_a004_03',4,'token','Ihnen',NULL,NULL,NULL,JSON_OBJECT('correctPosition',4) UNION ALL

  SELECT 'de_pre_a1_a005_02',1,'option','Brauer','براوئر',1,NULL,JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a005_02',2,'option','Bauer','باوئر',0,NULL,JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a005_03',1,'prompt','Ich heisse Brauer.','اسم من براوئر است.',NULL,NULL,JSON_OBJECT()
) x
JOIN activities a ON a.public_id=x.aid
ON DUPLICATE KEY UPDATE item_role=VALUES(item_role),text_target=VALUES(text_target),text_fa=VALUES(text_fa),is_correct=VALUES(is_correct),group_key=VALUES(group_key),metadata=VALUES(metadata);

-- Every activity item with target-language text inherits the activity's exact source provenance.
INSERT IGNORE INTO activity_item_sources (activity_item_id, source_item_id)
SELECT ai.id, asrc.source_item_id
FROM activity_items ai
JOIN activity_sources asrc ON asrc.activity_id=ai.activity_id
WHERE ai.text_target IS NOT NULL;

-- -----------------------------------------------------------------------------
-- Key reusable words/phrases for tap-to-learn / future flashcards
-- -----------------------------------------------------------------------------
INSERT INTO lexemes
(public_id, language_id, language_level_id, lexeme_type, surface, lemma, part_of_speech, translation_fa, flashcard_eligible, audio_status)
SELECT x.public_id,l.id,ll.id,x.lexeme_type,x.surface,x.lemma,x.pos,x.translation_fa,1,'blocked_until_language_final'
FROM languages l
JOIN language_levels ll ON ll.language_id=l.id
JOIN cefr_levels c ON c.id=ll.cefr_level_id AND c.code='Pre-A1'
JOIN (
  SELECT 'de_lex_guten_tag' public_id,'phrase' lexeme_type,'Guten Tag' surface,NULL lemma,NULL pos,'روز بخیر' translation_fa UNION ALL
  SELECT 'de_lex_guten_morgen','phrase','Guten Morgen',NULL,NULL,'صبح بخیر' UNION ALL
  SELECT 'de_lex_guten_abend','phrase','Guten Abend',NULL,NULL,'عصر بخیر' UNION ALL
  SELECT 'de_lex_gute_nacht','phrase','Gute Nacht',NULL,NULL,'شب بخیر' UNION ALL
  SELECT 'de_lex_auf_wiedersehen','phrase','Auf Wiedersehen',NULL,NULL,'خداحافظ' UNION ALL
  SELECT 'de_lex_bis_montag','phrase','Bis Montag',NULL,NULL,'تا دوشنبه' UNION ALL
  SELECT 'de_lex_danke','word','Danke','danken',NULL,'ممنون / متشکرم' UNION ALL
  SELECT 'de_lex_bitte','word','Bitte','bitte',NULL,'لطفاً / خواهش می‌کنم' UNION ALL
  SELECT 'de_lex_wie_geht_es_ihnen','phrase','Wie geht es Ihnen?',NULL,NULL,'حالتان چطور است؟' UNION ALL
  SELECT 'de_lex_heissen','word','heissen','heissen','verb','نام داشتن / اسم ... بودن'
) x ON 1=1
WHERE l.code='de'
ON DUPLICATE KEY UPDATE surface=VALUES(surface),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),translation_fa=VALUES(translation_fa),language_level_id=VALUES(language_level_id);

INSERT IGNORE INTO lexeme_sources (lexeme_id, source_item_id)
SELECT lx.id,si.id
FROM lexemes lx
JOIN (
  SELECT 'de_lex_guten_tag' lid,'srcitem_basic_u2_greetings' sid UNION ALL
  SELECT 'de_lex_guten_morgen','srcitem_headstart_m2_u3' UNION ALL
  SELECT 'de_lex_guten_abend','srcitem_headstart_m2_u3' UNION ALL
  SELECT 'de_lex_gute_nacht','srcitem_headstart_m2_u3' UNION ALL
  SELECT 'de_lex_auf_wiedersehen','srcitem_headstart_m8_u2' UNION ALL
  SELECT 'de_lex_bis_montag','srcitem_headstart_m8_u2' UNION ALL
  SELECT 'de_lex_danke','srcitem_headstart_m2_u3' UNION ALL
  SELECT 'de_lex_bitte','srcitem_headstart_m2_u3' UNION ALL
  SELECT 'de_lex_wie_geht_es_ihnen','srcitem_basic_u4_office' UNION ALL
  SELECT 'de_lex_heissen','srcitem_basic_u2_passport_customs'
) x ON x.lid=lx.public_id
JOIN source_items si ON si.public_id=x.sid;

INSERT IGNORE INTO lesson_lexemes (lesson_id,lexeme_id)
SELECT l.id,lx.id
FROM lessons l
JOIN (
  SELECT 'de_pre_a1_l001' lesson_public_id,'de_lex_guten_tag' lexeme_public_id UNION ALL
  SELECT 'de_pre_a1_l001','de_lex_danke' UNION ALL
  SELECT 'de_pre_a1_l002','de_lex_guten_morgen' UNION ALL
  SELECT 'de_pre_a1_l002','de_lex_guten_abend' UNION ALL
  SELECT 'de_pre_a1_l002','de_lex_gute_nacht' UNION ALL
  SELECT 'de_pre_a1_l002','de_lex_bis_montag' UNION ALL
  SELECT 'de_pre_a1_l002','de_lex_auf_wiedersehen' UNION ALL
  SELECT 'de_pre_a1_l003','de_lex_danke' UNION ALL
  SELECT 'de_pre_a1_l003','de_lex_bitte' UNION ALL
  SELECT 'de_pre_a1_l003','de_lex_auf_wiedersehen' UNION ALL
  SELECT 'de_pre_a1_l004','de_lex_guten_morgen' UNION ALL
  SELECT 'de_pre_a1_l004','de_lex_wie_geht_es_ihnen' UNION ALL
  SELECT 'de_pre_a1_l004','de_lex_danke' UNION ALL
  SELECT 'de_pre_a1_l005','de_lex_heissen'
) x ON x.lesson_public_id=l.public_id
JOIN lexemes lx ON lx.public_id=x.lexeme_public_id;

-- Mark only this extracted batch as source-checked and record intentionally varied activity signatures.
UPDATE lessons SET status='source_checked', template_signature='conversation_speaking>listen_choose>pronunciation_read',
 activity_count_rationale='3 activities: one source conversation, one recognition check, one speaking reinforcement; no extra filler.',
 sequence_rationale='Recognition follows the first short conversation, then pronunciation closes the lesson.'
WHERE public_id='de_pre_a1_l001';

UPDATE lessons SET status='source_checked', template_signature='conversation_speaking>matching>pronunciation_read',
 activity_count_rationale='3 activities: farewell conversation plus time-of-day greeting matching and a short spoken farewell.',
 sequence_rationale='The conversation introduces leave-taking; a different source exercise broadens greeting recognition; speaking closes.'
WHERE public_id='de_pre_a1_l002';

UPDATE lessons SET status='source_checked', template_signature='conversation_speaking>matching',
 activity_count_rationale='2 activities are sufficient: the source excerpt plus a compact courtesy-formula classification task.',
 sequence_rationale='No third activity is added because the mapped source objective is already covered without filler.'
WHERE public_id='de_pre_a1_l003';

UPDATE lessons SET status='source_checked', template_signature='conversation_speaking>choose_response>word_order',
 activity_count_rationale='3 activities: conversation comprehension followed by response selection and form reconstruction.',
 sequence_rationale='Moves from meaning to response recognition to sentence-form control.'
WHERE public_id='de_pre_a1_l004';

UPDATE lessons SET status='source_checked', template_signature='conversation_speaking>fill_blank>pronunciation_read',
 activity_count_rationale='3 activities: exact source name exchange, one source-token blank, then speaking reinforcement.',
 sequence_rationale='The same tiny source exchange is transformed in two different ways without adding German content.'
WHERE public_id='de_pre_a1_l005';

-- Batch visibility / sanity output.
SELECT l.public_id,l.status,l.template_signature,COUNT(DISTINCT a.id) activity_count
FROM lessons l
LEFT JOIN activities a ON a.lesson_id=l.id
WHERE l.public_id BETWEEN 'de_pre_a1_l001' AND 'de_pre_a1_l005'
GROUP BY l.id,l.public_id,l.status,l.template_signature
ORDER BY l.sequence_number;
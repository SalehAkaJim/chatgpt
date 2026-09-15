-- German Pre-A1 conversation-flow correction after batch 006.
-- Target: MySQL 9.0.1
-- Product rule: opening conversation starts with the other character; learner speaks a later turn.
-- Safe to run repeatedly after de_pre_a1_batch_006.sql.

SET NAMES utf8mb4;

-- Lesson 26 originally used the learner's menu request as turn 1. Replace that opener
-- with a later exact two-turn excerpt from the SAME Headstart restaurant dialogue so
-- the product interaction is partner-first -> learner-second without inventing German.
UPDATE dialogue_turns dt
JOIN dialogues d ON d.id=dt.dialogue_id AND d.public_id='de_pre_a1_dlg_026'
JOIN characters ch ON ch.public_id='de_char_restaurant_waitress'
SET dt.speaker_character_id=ch.id,
    dt.speaker_identity_origin='app_assigned',
    dt.speaker_gender_evidence='female',
    dt.text_target='Und zum Nachtisch?',
    dt.translation_fa='و برای دسر؟',
    dt.learner_turn=0
WHERE dt.position=1;

UPDATE dialogue_turns dt
JOIN dialogues d ON d.id=dt.dialogue_id AND d.public_id='de_pre_a1_dlg_026'
JOIN characters ch ON ch.public_id='de_char_mike_halloway'
SET dt.speaker_character_id=ch.id,
    dt.speaker_identity_origin='source',
    dt.speaker_gender_evidence='male',
    dt.text_target='Erdbeereis und eine Tasse Kaffee.',
    dt.translation_fa='بستنی توت‌فرنگی و یک فنجان قهوه.',
    dt.learner_turn=1
WHERE dt.position=2;

UPDATE dialogues
SET scenario='Choosing dessert from the restaurant/menu context (Headstart Module III Unit 1 excerpt)'
WHERE public_id='de_pre_a1_dlg_026';

UPDATE activities a
JOIN lessons l ON l.id=a.lesson_id AND l.public_id='de_pre_a1_l026'
SET a.instruction_fa='گوش کن و پاسخ انتخاب دسر را در نقش مایک بخوان.',
    a.selection_reason='Partner-first exact restaurant excerpt provides a natural spoken entry into the menu/list-reading lesson.',
    a.transformations=JSON_OBJECT('sourceTransformation','exact later two-turn excerpt from the same Headstart restaurant dialogue')
WHERE a.position=1 AND a.type_code='conversation_speaking';

-- Assertions / visibility.
SELECT d.public_id,dt.position,ch.public_id AS character_id,dt.learner_turn,dt.text_target
FROM dialogues d
JOIN dialogue_turns dt ON dt.dialogue_id=d.id
JOIN characters ch ON ch.id=dt.speaker_character_id
WHERE d.public_id='de_pre_a1_dlg_026'
ORDER BY dt.position;

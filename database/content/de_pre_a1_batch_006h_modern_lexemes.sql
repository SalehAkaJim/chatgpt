-- German Pre-A1 semantic cleanup for modernized lessons 23–26.
-- Target: MySQL 9.0.1
-- Safe to run repeatedly after 006g.
--
-- Earlier modernization replaced the lesson/activity/dialogue text, but several
-- lesson-level tappable lexemes and one grammar note still reflected the old
-- Headstart/department-store paths. Keep the historical lexeme records in the
-- database, but remove them from these active lessons and attach exact phrases/
-- words from the modern ZPE sources instead.

SET NAMES utf8mb4;

-- Remove stale lesson-level lexeme attachments from lessons 23–25.
DELETE llx
FROM lesson_lexemes llx
JOIN lessons l ON l.id=llx.lesson_id
JOIN lexemes lx ON lx.id=llx.lexeme_id
WHERE (l.public_id='de_pre_a1_l023' AND lx.public_id IN (
         'de_food_apfelsaft','de_food_erdbeereis','de_food_kaffee','de_food_milch',
         'de_food_obstsalat','de_food_salat','de_food_tee','de_food_vanilleeis'
       ))
   OR (l.public_id='de_pre_a1_l024' AND lx.public_id IN (
         'de_lex_bring_ein_glas_bier','de_lex_was_moechten_sie_trinken'
       ))
   OR (l.public_id='de_pre_a1_l025' AND lx.public_id IN (
         'de_lex_ich_kaufe_es','de_lex_was_kostet_es'
       ));

-- The old Headstart "bitte sehr" note no longer matches the modern ZPE lesson
-- texts, so it should not surface in lessons 23/24.
DELETE lgn
FROM lesson_grammar_notes lgn
JOIN lessons l ON l.id=lgn.lesson_id
JOIN grammar_notes gn ON gn.id=lgn.grammar_note_id
WHERE l.public_id IN ('de_pre_a1_l023','de_pre_a1_l024')
  AND gn.public_id='de_gn_headstart_bitte_sehr_handing';

-- Speisekarte is still relevant in lesson 26, but its active provenance should
-- now be the modern ZPE menu rather than the replaced Headstart menu visual.
DELETE lxs
FROM lexeme_sources lxs
JOIN lexemes lx ON lx.id=lxs.lexeme_id
JOIN source_items si ON si.id=lxs.source_item_id
WHERE lx.public_id='de_lex_speisekarte'
  AND si.public_id='srcitem_headstart_m3_u1_menu_visual';

-- Modern source-exact lesson lexemes. All German strings below already occur in
-- the cited ZPE source material / active source-backed activities.
INSERT INTO lexemes
(public_id,language_id,language_level_id,lexeme_type,surface,lemma,part_of_speech,translation_fa,usage_note_fa,flashcard_eligible,audio_status)
SELECT x.public_id,lang.id,ll.id,x.lexeme_type,x.surface,x.lemma,x.part_of_speech,x.translation_fa,NULL,1,'blocked_until_language_final'
FROM languages lang
JOIN language_levels ll ON ll.language_id=lang.id
JOIN cefr_levels c ON c.id=ll.cefr_level_id AND c.code='Pre-A1'
JOIN (
  SELECT 'de_lex_pizzabroetchen' public_id,'word' lexeme_type,'Pizzabrötchen' surface,'Pizzabrötchen' lemma,'noun' part_of_speech,'نان پیتزایی' translation_fa UNION ALL
  SELECT 'de_lex_toast_mit_kaese','phrase','Toast mit Käse',NULL,NULL,'تست با پنیر' UNION ALL
  SELECT 'de_lex_kakao','word','Kakao','Kakao','noun','کاکائو' UNION ALL
  SELECT 'de_lex_mineralwasser','word','Mineralwasser','Mineralwasser','noun','آب معدنی' UNION ALL
  SELECT 'de_lex_joghurt','word','Joghurt','Joghurt','noun','ماست' UNION ALL
  SELECT 'de_lex_apfelkuchen','word','Apfelkuchen','Apfelkuchen','noun','کیک سیب' UNION ALL
  SELECT 'de_lex_banane','word','Banane','Banane','noun','موز' UNION ALL
  SELECT 'de_lex_pizza','word','Pizza','Pizza','noun','پیتزا' UNION ALL
  SELECT 'de_lex_was_darf_es_sein','phrase','Was darf es sein?',NULL,NULL,'چه میل دارید؟' UNION ALL
  SELECT 'de_lex_lachs_mit_gemuese','phrase','Lachs mit Gemüse',NULL,NULL,'ماهی سالمون با سبزیجات' UNION ALL
  SELECT 'de_lex_was_kosten_die_kartoffeln','phrase','Was kosten die Kartoffeln?',NULL,NULL,'سیب‌زمینی‌ها چقدر قیمت دارند؟' UNION ALL
  SELECT 'de_lex_was_macht_das_zusammen','phrase','Was macht das zusammen?',NULL,NULL,'روی‌هم چقدر می‌شود؟'
) x ON 1=1
WHERE lang.code='de'
ON DUPLICATE KEY UPDATE
 language_id=VALUES(language_id),language_level_id=VALUES(language_level_id),lexeme_type=VALUES(lexeme_type),
 surface=VALUES(surface),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),translation_fa=VALUES(translation_fa),
 flashcard_eligible=VALUES(flashcard_eligible),audio_status=VALUES(audio_status);

-- Lesson 23: modern kiosk vocabulary.
INSERT IGNORE INTO lesson_lexemes (lesson_id,lexeme_id)
SELECT l.id,lx.id
FROM lessons l
JOIN lexemes lx ON lx.public_id IN (
  'de_lex_pizzabroetchen','de_lex_toast_mit_kaese','de_lex_kakao','de_lex_mineralwasser',
  'de_lex_joghurt','de_lex_apfelkuchen','de_lex_banane','de_lex_pizza'
)
WHERE l.public_id='de_pre_a1_l023';

INSERT IGNORE INTO lexeme_sources (lexeme_id,source_item_id)
SELECT lx.id,si.id
FROM lexemes lx
JOIN source_items si ON si.public_id='srcitem_zpe_kiosk_vocab'
WHERE lx.public_id IN ('de_lex_joghurt','de_lex_apfelkuchen','de_lex_banane','de_lex_pizza');

INSERT IGNORE INTO lexeme_sources (lexeme_id,source_item_id)
SELECT lx.id,si.id
FROM lexemes lx
JOIN source_items si ON si.public_id IN ('srcitem_zpe_kiosk_dialogue','srcitem_zpe_kiosk_vocab')
WHERE lx.public_id IN ('de_lex_pizzabroetchen','de_lex_toast_mit_kaese','de_lex_kakao','de_lex_mineralwasser');

-- Lesson 24: modern restaurant phrases.
INSERT IGNORE INTO lesson_lexemes (lesson_id,lexeme_id)
SELECT l.id,lx.id
FROM lessons l
JOIN lexemes lx ON lx.public_id IN ('de_lex_was_darf_es_sein','de_lex_lachs_mit_gemuese')
WHERE l.public_id='de_pre_a1_l024';

INSERT IGNORE INTO lexeme_sources (lexeme_id,source_item_id)
SELECT lx.id,si.id
FROM lexemes lx
JOIN source_items si ON si.public_id='srcitem_zpe_restaurant_transcript'
WHERE lx.public_id IN ('de_lex_was_darf_es_sein','de_lex_lachs_mit_gemuese');

-- Lesson 25: modern market phrases.
INSERT IGNORE INTO lesson_lexemes (lesson_id,lexeme_id)
SELECT l.id,lx.id
FROM lessons l
JOIN lexemes lx ON lx.public_id IN ('de_lex_was_kosten_die_kartoffeln','de_lex_was_macht_das_zusammen')
WHERE l.public_id='de_pre_a1_l025';

INSERT IGNORE INTO lexeme_sources (lexeme_id,source_item_id)
SELECT lx.id,si.id
FROM lexemes lx
JOIN source_items si ON si.public_id='srcitem_zpe_market_dialogue'
WHERE lx.public_id IN ('de_lex_was_kosten_die_kartoffeln','de_lex_was_macht_das_zusammen');

-- Keep the relevant lesson-26 menu lexeme tied to the modern menu source.
INSERT IGNORE INTO lexeme_sources (lexeme_id,source_item_id)
SELECT lx.id,si.id
FROM lexemes lx
JOIN source_items si ON si.public_id='srcitem_zpe_modern_menu'
WHERE lx.public_id='de_lex_speisekarte';

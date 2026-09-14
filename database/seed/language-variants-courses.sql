-- Language variants, orthography profiles and initial courses
-- Requires database/migrations/002_multilingual_core.sql

INSERT IGNORE INTO language_variants (
  language_id, code, name, native_name, variant_type, script, direction, is_default
)
SELECT l.id, v.code, v.name, v.native_name, v.variant_type, v.script, v.direction, v.is_default
FROM (
  SELECT 'en' AS language_code, 'en-US' AS code, 'American English' AS name, 'American English' AS native_name, 'standard' AS variant_type, 'Latin' AS script, 'ltr' AS direction, TRUE AS is_default
  UNION ALL SELECT 'en','en-GB','British English','British English','regional','Latin','ltr',FALSE
  UNION ALL SELECT 'de','de-DE','Standard German','Standarddeutsch','standard','Latin','ltr',TRUE
  UNION ALL SELECT 'tr','tr-TR','Istanbul Turkish','İstanbul Türkçesi','standard','Latin','ltr',TRUE
  UNION ALL SELECT 'ko','ko-KR','Standard Korean','표준 한국어','standard','Hangul','ltr',TRUE
  UNION ALL SELECT 'fr','fr-FR','Standard French','français standard','standard','Latin','ltr',TRUE
  UNION ALL SELECT 'es','es-ES','European Spanish','español de España','standard','Latin','ltr',TRUE
  UNION ALL SELECT 'es','es-MX','Mexican Spanish','español de México','regional','Latin','ltr',FALSE
  UNION ALL SELECT 'it','it-IT','Standard Italian','italiano standard','standard','Latin','ltr',TRUE
  UNION ALL SELECT 'pt','pt-BR','Brazilian Portuguese','português brasileiro','standard','Latin','ltr',TRUE
  UNION ALL SELECT 'pt','pt-PT','European Portuguese','português europeu','regional','Latin','ltr',FALSE
  UNION ALL SELECT 'fa','fa-IR','Iranian Persian','فارسی ایران','standard','Arabic','rtl',TRUE
  UNION ALL SELECT 'ar','ar-MSA','Modern Standard Arabic','العربية الفصحى المعاصرة','standard','Arabic','rtl',TRUE
  UNION ALL SELECT 'ar','ar-EG','Egyptian Arabic','العربية المصرية','dialect','Arabic','rtl',FALSE
  UNION ALL SELECT 'ar','ar-LEV','Levantine Arabic','العربية الشامية','dialect','Arabic','rtl',FALSE
  UNION ALL SELECT 'ar','ar-GULF','Gulf Arabic','العربية الخليجية','dialect','Arabic','rtl',FALSE
) AS v
JOIN languages l ON l.code = v.language_code;

INSERT IGNORE INTO orthography_profiles (
  language_variant_id, code, name, script, is_primary, uses_case, uses_diacritics, diacritics_policy, normalization_form, metadata
)
SELECT lv.id, p.code, p.name, p.script, TRUE, p.uses_case, p.uses_diacritics, p.diacritics_policy, 'NFC', p.metadata
FROM (
  SELECT 'en-US' AS variant_code, 'en-US-latin' AS code, 'English Latin' AS name, 'Latin' AS script, TRUE AS uses_case, FALSE AS uses_diacritics, 'none' AS diacritics_policy, JSON_OBJECT() AS metadata
  UNION ALL SELECT 'en-GB','en-GB-latin','English Latin','Latin',TRUE,FALSE,'none',JSON_OBJECT()
  UNION ALL SELECT 'de-DE','de-DE-latin','German Latin','Latin',TRUE,TRUE,'required',JSON_OBJECT('preserve_sharp_s', TRUE, 'noun_capitalization', TRUE)
  UNION ALL SELECT 'tr-TR','tr-TR-latin','Turkish Latin','Latin',TRUE,TRUE,'required',JSON_OBJECT('turkish_i_casefold', TRUE, 'preserve_dotted_dotless_i', TRUE, 'preserve_cedilla_breve_diaeresis', TRUE)
  UNION ALL SELECT 'ko-KR','ko-KR-hangul','Korean Hangul','Hangul',FALSE,FALSE,'none',JSON_OBJECT('syllable_block_normalization',TRUE,'preserve_jamo',TRUE,'nfc_required',TRUE)
  UNION ALL SELECT 'fr-FR','fr-FR-latin','French Latin','Latin',TRUE,TRUE,'required',JSON_OBJECT()
  UNION ALL SELECT 'es-ES','es-ES-latin','Spanish Latin','Latin',TRUE,TRUE,'required',JSON_OBJECT()
  UNION ALL SELECT 'es-MX','es-MX-latin','Spanish Latin','Latin',TRUE,TRUE,'required',JSON_OBJECT()
  UNION ALL SELECT 'it-IT','it-IT-latin','Italian Latin','Latin',TRUE,TRUE,'required',JSON_OBJECT()
  UNION ALL SELECT 'pt-BR','pt-BR-latin','Portuguese Latin','Latin',TRUE,TRUE,'required',JSON_OBJECT()
  UNION ALL SELECT 'pt-PT','pt-PT-latin','Portuguese Latin','Latin',TRUE,TRUE,'required',JSON_OBJECT()
  UNION ALL SELECT 'fa-IR','fa-IR-arabic','Persian Arabic-derived script','Arabic',FALSE,TRUE,'optional',JSON_OBJECT('persian_yeh_kaf_normalization', TRUE)
  UNION ALL SELECT 'ar-MSA','ar-MSA-arabic','Arabic script — MSA','Arabic',FALSE,TRUE,'optional',JSON_OBJECT('supports_full_tashkil', TRUE)
  UNION ALL SELECT 'ar-EG','ar-EG-arabic','Arabic script — Egyptian','Arabic',FALSE,TRUE,'optional',JSON_OBJECT('dialect', 'egyptian')
  UNION ALL SELECT 'ar-LEV','ar-LEV-arabic','Arabic script — Levantine','Arabic',FALSE,TRUE,'optional',JSON_OBJECT('dialect', 'levantine')
  UNION ALL SELECT 'ar-GULF','ar-GULF-arabic','Arabic script — Gulf','Arabic',FALSE,TRUE,'optional',JSON_OBJECT('dialect', 'gulf')
) AS p
JOIN language_variants lv ON lv.code = p.variant_code;

INSERT IGNORE INTO courses (
  slug,learner_language_id,learner_variant_id,target_language_id,target_variant_id,title,description,metadata
)
SELECT c.slug,learner.id,learner_variant.id,target.id,target_variant.id,c.title,c.description,c.metadata
FROM (
  SELECT 'fa-en-us' AS slug, 'fa' AS learner_code, 'fa-IR' AS learner_variant_code, 'en' AS target_code, 'en-US' AS target_variant_code,
         'English for Persian speakers' AS title,'English course localized for Persian-speaking learners.' AS description,
         JSON_OBJECT('curriculum_family','english','default_variant','en-US') AS metadata
  UNION ALL SELECT 'fa-de-de','fa','fa-IR','de','de-DE','German for Persian speakers','Standard German course localized for Persian-speaking learners.',JSON_OBJECT('curriculum_family','german','default_variant','de-DE')
  UNION ALL SELECT 'fa-tr-tr','fa','fa-IR','tr','tr-TR','Turkish for Persian speakers','Istanbul Turkish course localized for Persian-speaking learners.',JSON_OBJECT('curriculum_family','turkish','default_variant','tr-TR','standard','istanbul')
  UNION ALL SELECT 'fa-ko-kr','fa','fa-IR','ko','ko-KR','Korean for Persian speakers','Standard Seoul Korean course localized for Persian-speaking learners.',JSON_OBJECT('curriculum_family','korean','default_variant','ko-KR','standard','seoul')
  UNION ALL SELECT 'fa-it-it','fa','fa-IR','it','it-IT','Italian for Persian speakers','Standard Italian course localized for Persian-speaking learners.',JSON_OBJECT('curriculum_family','italian','default_variant','it-IT','standard','standard_italian')
  UNION ALL SELECT 'fa-ar-msa','fa','fa-IR','ar','ar-MSA','Modern Standard Arabic for Persian speakers','MSA course localized for Persian-speaking learners. Dialect courses remain separate.',JSON_OBJECT('curriculum_family','arabic-msa','register','modern_standard')
) AS c
JOIN languages learner ON learner.code = c.learner_code
JOIN language_variants learner_variant ON learner_variant.code = c.learner_variant_code
JOIN languages target ON target.code = c.target_code
JOIN language_variants target_variant ON target_variant.code = c.target_variant_code;

UPDATE curriculum_units cu
JOIN courses c ON c.slug = 'fa-en-us'
JOIN languages l ON l.id = cu.target_language_id AND l.code = 'en'
SET cu.course_id = c.id
WHERE cu.course_id IS NULL;

UPDATE lessons le
JOIN courses c ON c.slug = 'fa-en-us'
JOIN languages l ON l.id = le.target_language_id AND l.code = 'en'
SET le.course_id = c.id
WHERE le.course_id IS NULL;

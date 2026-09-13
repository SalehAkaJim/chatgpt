-- Complete German Pre-A1 curriculum for Persian-speaking absolute beginners.
-- Language-specific foundations before the A1 grammar sequence.

INSERT IGNORE INTO curriculum_units (
  course_id,target_language_id,cefr_level_id,skill_id,topic_id,slug,title,
  learning_objective,sort_order,expected_lessons,status,metadata
)
SELECT
  c.id,c.target_language_id,lvl.id,s.id,t.id,u.slug,u.title,u.objective,
  u.sort_order,u.expected_lessons,'approved',
  JSON_OBJECT('language_specific',TRUE,'target_variant','de-DE',
              'grammar_focus',u.grammar_focus,
              'persian_learner_notes',u.persian_learner_notes)
FROM (
  SELECT 10 AS sort_order, 'foundations' AS skill_slug, 'greetings' AS topic_slug,
         'prea1-de-first-greetings' AS slug, 'Hallo!' AS title,
         'Recognize and use the most basic German greetings and farewells.' AS objective, 2 AS expected_lessons,
         'German greeting chunks can be learned as complete expressions; nouns such as Morgen are capitalized.' AS grammar_focus,
         'از همان ابتدا حروف بزرگ اسم‌ها را نگه دار؛ «Morgen» در عبارت «Guten Morgen» با حرف بزرگ نوشته می‌شود.' AS persian_learner_notes
  UNION ALL   SELECT 20 AS sort_order, 'foundations' AS skill_slug, 'introductions' AS topic_slug,
         'prea1-de-my-name' AS slug, 'Mein Name' AS title,
         'Say your name and ask another person’s name with memorized beginner phrases.' AS objective, 2 AS expected_lessons,
         'Use Ich heiße … or Ich bin … to give a name; Wie heißt du? asks an informal partner’s name.' AS grammar_focus,
         'در آلمانی فاعل معمولاً گفته می‌شود: «Ich heiße …». فعل با شخص تغییر می‌کند، اما در Pre-A1 عبارت را یک تکه یاد می‌گیریم.' AS persian_learner_notes
  UNION ALL   SELECT 30 AS sort_order, 'foundations' AS skill_slug, 'numbers' AS topic_slug,
         'prea1-de-numbers-0-10' AS slug, '0 bis 10' AS title,
         'Recognize and say German numbers from zero to ten.' AS objective, 2 AS expected_lessons,
         'Numbers 0–10 are learned as fixed forms before larger German number patterns.' AS grammar_focus,
         'فعلاً عددها را به‌صورت واژه‌های مستقل یاد بگیر؛ ترتیب برعکسِ عددهای بالاتر از ۲۰ هنوز وارد نمی‌شود.' AS persian_learner_notes
  UNION ALL   SELECT 40 AS sort_order, 'literacy' AS skill_slug, 'script-basics' AS topic_slug,
         'prea1-de-alphabet' AS slug, 'Das Alphabet' AS title,
         'Recognize the Latin letters used in German and the special characters ä, ö, ü and ß.' AS objective, 2 AS expected_lessons,
         'German uses the Latin alphabet plus Ä/ä, Ö/ö, Ü/ü and ß; these spellings are meaningful.' AS grammar_focus,
         'اوملاوت‌ها و ß تزئینی نیستند و می‌توانند شکل و معنی واژه را عوض کنند؛ آن‌ها را بخشی از املای کلمه ببین.' AS persian_learner_notes
  UNION ALL   SELECT 50 AS sort_order, 'literacy' AS skill_slug, 'sound-letter-mapping' AS topic_slug,
         'prea1-de-letter-names' AS slug, 'Buchstaben hören' AS title,
         'Hear common German letter names and spell very short names.' AS objective, 2 AS expected_lessons,
         'German letter names are not always the same as English letter names; spelling is introduced as a listening skill.' AS grammar_focus,
         'اسم حروف آلمانی را با صدای آلمانی یاد بگیر؛ دانستن الفبای انگلیسی برای املای آلمانی کافی نیست.' AS persian_learner_notes
  UNION ALL   SELECT 60 AS sort_order, 'literacy' AS skill_slug, 'sound-letter-mapping' AS topic_slug,
         'prea1-de-first-sounds' AS slug, 'Erste Laute' AS title,
         'Notice a few high-value German spelling-to-sound patterns in familiar words.' AS objective, 2 AS expected_lessons,
         'Common beginner sound patterns include sch, ei, ie, eu, z and w.' AS grammar_focus,
         'در آلمانی «ei» معمولاً شبیه «آی» و «ie» معمولاً صدای کشیدهٔ «ای» دارد؛ w هم معمولاً شبیه v انگلیسی شنیده می‌شود.' AS persian_learner_notes
  UNION ALL   SELECT 70 AS sort_order, 'describing' AS skill_slug, 'objects' AS topic_slug,
         'prea1-de-first-objects' AS slug, 'Erste Dinge' AS title,
         'Recognize a few everyday German nouns together with their articles.' AS objective, 2 AS expected_lessons,
         'German nouns are capitalized and are best learned with der, die or das.' AS grammar_focus,
         'از همین ابتدا اسم را با حرف تعریفش حفظ کن: «der Stift»، «die Tasche»، «das Buch».' AS persian_learner_notes
  UNION ALL   SELECT 80 AS sort_order, 'social' AS skill_slug, 'polite-language' AS topic_slug,
         'prea1-de-classroom' AS slug, 'Im Kurs' AS title,
         'Use a handful of survival phrases in a beginner German lesson.' AS objective, 2 AS expected_lessons,
         'Polite classroom phrases can be learned as complete chunks before grammar analysis.' AS grammar_focus,
         'عبارت‌هایی مثل «Noch einmal, bitte» را یک تکه حفظ کن؛ برای شروع لازم نیست ساختارشان را تجزیه کنی.' AS persian_learner_notes
  UNION ALL   SELECT 90 AS sort_order, 'social' AS skill_slug, 'polite-language' AS topic_slug,
         'prea1-de-survival-words' AS slug, 'Wichtige Wörter' AS title,
         'Recognize and use essential yes/no, apology and help words.' AS objective, 2 AS expected_lessons,
         'Very frequent survival words are useful as stand-alone utterances.' AS grammar_focus,
         'این واژه‌ها را برای واکنش سریع یاد بگیر؛ در موقعیت واقعی لازم نیست حتماً جملهٔ کامل بسازی.' AS persian_learner_notes
  UNION ALL   SELECT 100 AS sort_order, 'foundations' AS skill_slug, 'introductions' AS topic_slug,
         'prea1-de-first-conversation' AS slug, 'Mein erstes Gespräch' AS title,
         'Combine greetings, names, a wellbeing phrase and a farewell in a tiny real conversation.' AS objective, 2 AS expected_lessons,
         'A first conversation can be built from memorized chunks while preserving German word order.' AS grammar_focus,
         'هدف این واحد روان‌کردن چند تکهٔ آشناست؛ هنوز لازم نیست همهٔ قواعد پشت جمله‌ها را توضیح بدهی.' AS persian_learner_notes
) AS u
JOIN courses c ON c.slug='fa-de-de'
JOIN cefr_levels lvl ON lvl.code='Pre-A1'
JOIN skills s ON s.slug=u.skill_slug
JOIN topics t ON t.slug=u.topic_slug;

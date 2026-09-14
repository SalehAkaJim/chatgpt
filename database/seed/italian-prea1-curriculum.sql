-- Complete standard Italian Pre-A1 curriculum for Persian-speaking absolute beginners.
INSERT IGNORE INTO curriculum_units (
  course_id,target_language_id,cefr_level_id,skill_id,topic_id,slug,title,
  learning_objective,sort_order,expected_lessons,status,metadata
)
SELECT
  c.id,c.target_language_id,lvl.id,s.id,t.id,u.slug,u.title,u.objective,
  u.sort_order,u.expected_lessons,'approved',
  JSON_OBJECT('language_specific',TRUE,'target_variant','it-IT',
              'grammar_focus',u.grammar_focus,
              'persian_learner_notes',u.persian_learner_notes)
FROM (
  SELECT 10 AS sort_order,'foundations' AS skill_slug,'greetings' AS topic_slug,
         'prea1-it-first-greetings' AS slug,'Ciao!' AS title,
         'Recognize and use basic Italian greetings and farewells appropriately.' AS objective,2 AS expected_lessons,
         'Use ciao informally and buongiorno as a safe neutral daytime greeting.' AS grammar_focus,
         '«Ciao» خودمانی است؛ برای فرد ناآشنا در روز «Buongiorno» انتخاب امن‌تری است.' AS persian_learner_notes
  UNION ALL SELECT 20,'foundations','introductions','prea1-it-my-name','Mi chiamo…',
         'Say your name and ask another person’s name in a short natural exchange.',2,
         'Use Mi chiamo… and Sono… as high-frequency introduction chunks; subject pronouns are often omitted.',
         'در ایتالیایی ضمیر فاعلی اغلب حذف می‌شود؛ «Mi chiamo…» و «Sono…» را فعلاً الگوهای آماده یاد بگیر.'
  UNION ALL SELECT 30,'foundations','numbers','prea1-it-numbers-0-10','Da zero a dieci',
         'Recognize and say the Italian numbers from zero to ten.',2,
         'Learn stable counting forms 0–10 before later noun-dependent uses of uno.',
         'فعلاً شکل پایهٔ عددها را مستقل یاد بگیر؛ تغییرهای uno کنار بعضی اسم‌ها بعداً می‌آید.'
  UNION ALL SELECT 40,'literacy','script-basics','prea1-it-alphabet','L''alfabeto italiano',
         'Recognize core Italian letters and notice the special sound behavior of c, g and h.',2,
         'Italian spelling is relatively regular; c/g vary before e/i and h can preserve a hard sound.',
         'املای ایتالیایی نسبتاً منظم است؛ از ابتدا به نقش c، g و h در صداها توجه کن.'
  UNION ALL SELECT 50,'literacy','sound-letter-mapping','prea1-it-first-sounds','I primi suoni',
         'Hear and distinguish beginner-critical hard and soft c/g patterns.',2,
         'Contrast casa/ciao and gatto/gelato; introduce che/chi and ghe/ghi as hard-sound spellings.',
         'برای فارسی‌زبان، تفاوت صدای c و g قبل از e/i با a/o/u از همان ابتدا مهم است.'
  UNION ALL SELECT 60,'foundations','introductions','prea1-it-how-are-you','Come stai?',
         'Ask and answer how someone is in an informal beginner exchange.',2,
         'Use Come stai? and Sto bene as communicative chunks with stare.',
         'فعلاً «Come stai?» و «Sto bene» را به‌صورت عبارت‌های آماده برای احوال‌پرسی یاد بگیر.'
  UNION ALL SELECT 70,'describing','objects','prea1-it-first-objects','Cos''è?',
         'Identify a few everyday objects and ask what something is.',2,
         'Introduce grammatical gender through transparent un/una and questo/questa pairings.',
         'جنس دستوری را با جفت‌های روشن یاد بگیر: un libro / una penna و questo / questa.'
  UNION ALL SELECT 80,'social','polite-language','prea1-it-polite-words','Per favore',
         'Use essential Italian polite expressions for requests, thanks and apologies.',2,
         'Use per favore, grazie, prego, scusa and mi scusi pragmatically.',
         'scusa خودمانی است و mi scusi برای فرد ناآشنا یا موقعیت محترمانه مناسب‌تر است.'
  UNION ALL SELECT 90,'social','polite-language','prea1-it-survival-words','Parole utili',
         'Use essential yes/no, comprehension-repair and repetition expressions.',2,
         'Use non before a verb for simple negation and memorize Non capisco / Ripeta, per favore.',
         '«Non capisco» و «Ripeta, per favore» از همان ابتدا ابزارهای مهم مدیریت مکالمه‌اند.'
  UNION ALL SELECT 100,'foundations','introductions','prea1-it-first-conversation','La mia prima conversazione',
         'Combine greetings, introductions, wellbeing, repair and a farewell in one tiny conversation.',2,
         'Combine previously learned chunks without requiring full grammatical analysis.',
         'هدف این واحد ترکیب تکه‌های آشنا در یک گفت‌وگوی واقعی کوتاه است، نه تجزیهٔ کامل دستور.'
) AS u
JOIN courses c ON c.slug='fa-it-it'
JOIN cefr_levels lvl ON lvl.code='Pre-A1'
JOIN skills s ON s.slug=u.skill_slug
JOIN topics t ON t.slug=u.topic_slug;

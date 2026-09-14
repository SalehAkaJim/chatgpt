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
  UNION ALL SELECT 20,'foundations','introductions','prea1-de-my-name','Mein Name',
         'Say your name and ask another person’s name with memorized beginner phrases.',2,
         'Use Ich heiße … or Ich bin … to give a name; Wie heißt du? asks an informal partner’s name.',
         'در آلمانی فاعل معمولاً گفته می‌شود: «Ich heiße …». فعل با شخص تغییر می‌کند، اما در Pre-A1 عبارت را یک تکه یاد می‌گیریم.'
  UNION ALL SELECT 30,'foundations','numbers','prea1-de-numbers-0-10','0 bis 10',
         'Recognize and say German numbers from zero to ten.',2,
         'Numbers 0–10 are learned as fixed forms before larger German number patterns.',
         'فعلاً عددها را به‌صورت واژه‌های مستقل یاد بگیر؛ ترتیب برعکسِ عددهای بالاتر از ۲۰ هنوز وارد نمی‌شود.'
  UNION ALL SELECT 40,'literacy','script-basics','prea1-de-alphabet','Das Alphabet',
         'Recognize the Latin letters used in German and the special characters ä, ö, ü and ß.',2,
         'German uses the Latin alphabet plus Ä/ä, Ö/ö, Ü/ü and ß; these spellings are meaningful.',
         'اوملاوت‌ها و ß تزئینی نیستند و می‌توانند شکل و معنی واژه را عوض کنند؛ آن‌ها را بخشی از املای کلمه ببین.'
  UNION ALL SELECT 50,'literacy','sound-letter-mapping','prea1-de-letter-names','Buchstaben hören',
         'Hear common German letter names and spell very short names.',2,
         'German letter names are not always the same as English letter names; spelling is introduced as a listening skill.',
         'اسم حروف آلمانی را با صدای آلمانی یاد بگیر؛ دانستن الفبای انگلیسی برای املای آلمانی کافی نیست.'
  UNION ALL SELECT 55,'literacy','sound-letter-mapping','prea1-de-script-sound-bridge','Buchstaben werden Laute',
         'Connect German special letters and the most important beginner spelling patterns to sounds before relying on whole-word memorization.',2,
         'Explicitly distinguish ä/ö/ü/ß and high-value patterns ch, sch, w, v, z, ei and ie.',
         'برای فارسی‌زبان مهم است بداند w آلمانی معمولاً شبیه v انگلیسی شنیده می‌شود، z معمولاً /ts/ است و ei و ie را نباید جابه‌جا خواند.'
  UNION ALL SELECT 60,'literacy','sound-letter-mapping','prea1-de-first-sounds','Erste Laute',
         'Notice a few high-value German spelling-to-sound patterns in familiar words.',2,
         'Common beginner sound patterns include sch, ei, ie, eu, z and w.',
         'در آلمانی «ei» معمولاً شبیه «آی» و «ie» معمولاً صدای کشیدهٔ «ای» دارد؛ w هم معمولاً شبیه v انگلیسی شنیده می‌شود.'
  UNION ALL SELECT 70,'describing','objects','prea1-de-first-objects','Erste Dinge',
         'Recognize a few everyday German nouns together with their articles.',2,
         'German nouns are capitalized and are best learned with der, die or das.',
         'از همین ابتدا اسم را با حرف تعریفش حفظ کن: «der Stift»، «die Tasche»، «das Buch».'
  UNION ALL SELECT 80,'social','polite-language','prea1-de-classroom','Im Kurs',
         'Use a handful of survival phrases in a beginner German lesson.',2,
         'Polite classroom phrases can be learned as complete chunks before grammar analysis.',
         'عبارت‌هایی مثل «Noch einmal, bitte» را یک تکه حفظ کن؛ برای شروع لازم نیست ساختارشان را تجزیه کنی.'
  UNION ALL SELECT 85,'communication','requests','prea1-de-meaning-help','Was bedeutet das?',
         'Ask what something means and combine that request with repetition and slower-speech repair chunks.',1,
         'Was bedeutet das? and Wie bitte? are taught as complete communication-repair chunks.',
         '«Was bedeutet das?» یعنی «این یعنی چه؟». فعلاً این عبارت و «Wie bitte?» را یک تکه یاد بگیر و بعداً سراغ دستورشان برو.'
  UNION ALL SELECT 90,'social','polite-language','prea1-de-survival-words','Wichtige Wörter',
         'Recognize and use essential yes/no, apology and help words.',2,
         'Very frequent survival words are useful as stand-alone utterances.',
         'این واژه‌ها را برای واکنش سریع یاد بگیر؛ در موقعیت واقعی لازم نیست حتماً جملهٔ کامل بسازی.'
  UNION ALL SELECT 100,'foundations','introductions','prea1-de-first-conversation','Mein erstes Gespräch',
         'Combine greetings, names, a wellbeing phrase and a farewell in a tiny real conversation.',2,
         'A first conversation can be built from memorized chunks while preserving German word order.',
         'هدف این واحد روان‌کردن چند تکهٔ آشناست؛ هنوز لازم نیست همهٔ قواعد پشت جمله‌ها را توضیح بدهی.'
  UNION ALL SELECT 110,'communication','simple-messages','prea1-de-ready-for-a1','Bereit für A1',
         'Demonstrate readiness for A1 by recognizing core German script features, following tiny supported audio, introducing yourself and repairing a misunderstanding.',2,
         'The exit gate checks functional readiness rather than grammar analysis or perfect pronunciation.',
         'برای ورود به A1 لازم نیست قواعد آلمانی را بلد باشی؛ باید نشانه‌های اصلی را بشناسی، چند عبارت کوتاه را بفهمی، خودت را معرفی کنی و اگر گیر کردی درخواست تکرار یا معنی کنی.'
) AS u
JOIN courses c ON c.slug='fa-de-de'
JOIN cefr_levels lvl ON lvl.code='Pre-A1'
JOIN skills s ON s.slug=u.skill_slug
JOIN topics t ON t.slug=u.topic_slug;

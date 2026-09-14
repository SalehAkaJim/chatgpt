-- Complete contemporary Standard French Pre-A1 curriculum for Persian-speaking absolute beginners.
INSERT IGNORE INTO curriculum_units (
  course_id,target_language_id,cefr_level_id,skill_id,topic_id,slug,title,
  learning_objective,sort_order,expected_lessons,status,metadata
)
SELECT c.id,c.target_language_id,lvl.id,s.id,t.id,u.slug,u.title,u.objective,
       u.sort_order,u.expected_lessons,'approved',
       JSON_OBJECT('language_specific',TRUE,'target_variant','fr-FR','grammar_focus',u.grammar_focus,'persian_learner_notes',u.persian_learner_notes)
FROM (
  SELECT 10 sort_order,'foundations' skill_slug,'greetings' topic_slug,'prea1-fr-first-greetings' slug,'Bonjour !' title,'Recognize and use neutral and informal French greetings and farewells appropriately.' objective,2 expected_lessons,'Distinguish neutral bonjour from informal salut and use au revoir safely.' grammar_focus,'«Bonjour» انتخاب خنثی و امن است؛ «salut» خودمانی است.' persian_learner_notes
  UNION ALL SELECT 20,'foundations','introductions','prea1-fr-my-name','Je m''appelle…','Say your name and ask another person’s name in a short natural exchange.',2,'Use Je m''appelle… as the canonical beginner introduction and notice Moi, c''est… as a conversational alternative.','برای معرفی «Je m’appelle…» را الگوی اصلی بگیر؛ «Moi, c’est…» هم در گفتار طبیعی رایج است.'
  UNION ALL SELECT 30,'foundations','numbers','prea1-fr-numbers-0-10','De zéro à dix','Recognize and say French numbers from zero to ten.',2,'Learn stable counting forms and connect spelling to their often non-transparent pronunciation.','عددهای فرانسوی را از ابتدا با صوت یاد بگیر چون همهٔ حروف نوشته‌شده تلفظ نمی‌شوند.'
  UNION ALL SELECT 40,'literacy','script-basics','prea1-fr-alphabet-accents','L''alphabet et les accents','Recognize core Latin letters plus accents, cedilla and apostrophe as meaningful French spelling features.',2,'Preserve accents, ç and apostrophes in canonical written forms.','آکسان‌ها، ç و آپاستروف بخشی از املای درست فرانسوی‌اند و نباید حذف شوند.'
  UNION ALL SELECT 50,'literacy','sound-letter-mapping','prea1-fr-first-sounds','Mes premiers sons','Hear beginner-critical French sound contrasts and connect them to common spellings.',2,'Contrast ou /u/ with u /y/ and introduce nasal vowels through high-frequency examples.','برای فارسی‌زبان فرق ou و u و واکه‌های خیشومی نیاز به تمرین شنیداری مستقیم دارد.'
  UNION ALL SELECT 60,'foundations','greetings','prea1-fr-how-are-you','Ça va ?','Ask and answer how someone is in a short informal French exchange.',2,'Treat Ça va ? / Ça va. as high-frequency chunks whose function depends on intonation and context.','«Ça va ?» و «Ça va.» را با آهنگ سؤال و جواب جداگانه تمرین کن.'
  UNION ALL SELECT 70,'describing','objects','prea1-fr-first-objects','Qu''est-ce que c''est ?','Identify a few everyday objects and ask what something is.',2,'Introduce grammatical gender by learning nouns together with un or une.','اسم فرانسوی را از اول همراه حرف تعریفش حفظ کن: un livre / une table.'
  UNION ALL SELECT 80,'social','polite-language','prea1-fr-polite-words','S''il vous plaît','Use essential polite expressions while distinguishing beginner-safe tu and vous contexts.',2,'Contrast s''il te plaît with s''il vous plaît and introduce polite excusez-moi.','tu خودمانی است؛ vous برای احترام یا جمع به‌کار می‌رود. عبارت‌های ثابت را کامل یاد بگیر.'
  UNION ALL SELECT 90,'communication','requests','prea1-fr-survival-words','Je ne comprends pas','Use yes/no, non-comprehension and repetition requests to manage a beginner conversation.',2,'Teach the full standard negation ne…pas first while noting that colloquial speech may omit ne.','برای شروع شکل استاندارد «ne … pas» را یاد بگیر؛ حذف ne در گفتار روزمره را فقط تشخیص بده.'
  UNION ALL SELECT 100,'foundations','introductions','prea1-fr-first-conversation','Ma première conversation','Combine greetings, introductions, wellbeing, repair and farewell in one tiny conversation.',2,'Combine learned chunks fluently without adding new grammatical analysis.','هدف ترکیب روان عبارت‌های آشنا در یک گفت‌وگوی کوتاه است، نه اضافه‌کردن دستور تازه.'
) u
JOIN courses c ON c.slug='fa-fr-fr'
JOIN cefr_levels lvl ON lvl.code='Pre-A1'
JOIN skills s ON s.slug=u.skill_slug
JOIN topics t ON t.slug=u.topic_slug;

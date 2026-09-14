-- Complete Istanbul Turkish Pre-A1 curriculum for Persian-speaking absolute beginners.
-- Language-specific foundations before the A1 grammar sequence.

INSERT IGNORE INTO curriculum_units (
  course_id,target_language_id,cefr_level_id,skill_id,topic_id,slug,title,
  learning_objective,sort_order,expected_lessons,status,metadata
)
SELECT
  c.id,c.target_language_id,lvl.id,s.id,t.id,u.slug,u.title,u.objective,
  u.sort_order,u.expected_lessons,'approved',
  JSON_OBJECT('language_specific',TRUE,'target_variant','tr-TR',
              'grammar_focus',u.grammar_focus,
              'persian_learner_notes',u.persian_learner_notes)
FROM (
  SELECT 10 AS sort_order, 'foundations' AS skill_slug, 'greetings' AS topic_slug,
         'prea1-tr-first-greetings' AS slug, 'Merhaba!' AS title,
         'Recognize and use the most basic Istanbul Turkish greetings and farewells.' AS objective, 2 AS expected_lessons,
         'Learn Merhaba, Günaydın, İyi akşamlar, Hoşça kal and Güle güle as communicative chunks.' AS grammar_focus,
         'در شروع این عبارت‌ها را یک‌تکه یاد بگیر؛ «Hoşça kal» را معمولاً کسی می‌گوید که می‌رود و «Güle güle» را کسی که می‌ماند.' AS persian_learner_notes
  UNION ALL SELECT 20,'foundations','introductions','prea1-tr-my-name','Benim adım',
         'Say your name and ask another person’s name with natural beginner Turkish.',2,
         'Use Benim adım … / Ben … and Senin adın ne? as high-frequency introduction patterns.',
         'ترکی اغلب ضمیر را حذف می‌کند، اما در شروع «Benim adım …» و «Ben …» را به‌صورت الگوهای آماده یاد بگیر.'
  UNION ALL SELECT 30,'foundations','numbers','prea1-tr-numbers-0-10','0’dan 10’a',
         'Recognize and say Turkish numbers from zero to ten.',2,
         'Numbers 0–10 are stable forms; Turkish number words do not take plural marking before counted nouns.',
         'فعلاً عددهای صفر تا ده را مستقل یاد بگیر؛ بعداً می‌بینی بعد از عدد معمولاً اسم جمع نمی‌شود.'
  UNION ALL SELECT 40,'literacy','script-basics','prea1-tr-alphabet','Türk alfabesi',
         'Recognize the Turkish Latin alphabet and the letters ç, ğ, ı, İ, ö, ş and ü.',2,
         'Turkish spelling is highly regular; dotted i/İ and dotless ı/I are different letters and must remain distinct.',
         'مهم‌ترین نکته برای فارسی‌زبان: i و ı دو حرف متفاوت‌اند؛ نقطه را بخشی از خود حرف بدان.'
  UNION ALL SELECT 45,'literacy','sound-letter-mapping','prea1-tr-letter-names','Harflerin adları',
         'Hear high-value Turkish letter names and spell a very short name without relying on English letter names.',2,
         'Turkish letter names follow Turkish conventions; I/ı and İ/i are distinct, and Ğ is commonly called yumuşak ge.',
         'اسم حروف را با صدای ترکی یاد بگیر؛ مخصوصاً I/ı و İ/i را قاطی نکن و Ğ را «yumuşak ge» بشناس.'
  UNION ALL SELECT 47,'literacy','sound-letter-mapping','prea1-tr-script-sound-bridge','Harflerden seslere',
         'Connect distinctive Turkish letters to their most useful beginner sounds before relying on whole-word memorization.',2,
         'Explicitly distinguish c/ç, s/ş, i/ı, ö/ü and notice that ğ often lengthens or links the preceding vowel rather than acting like a strong consonant.',
         'برای فارسی‌زبان، تفاوت c/ç و i/ı کلیدی است؛ ğ را هم مثل یک صامت پررنگ و مستقل تلفظ نکن.'
  UNION ALL SELECT 50,'literacy','sound-letter-mapping','prea1-tr-first-sounds','İlk sesler',
         'Hear and produce high-value Turkish sound-letter correspondences in familiar words.',2,
         'Focus on ç, ş, c, ğ, ö, ü and dotless ı; Turkish orthography is more phonemic than English.',
         'ç تقریباً «چ»، ş تقریباً «ش» و c معمولاً «ج» است؛ ğ اغلب واکهٔ قبل را پیوند یا کشیده می‌کند و همیشه مثل یک صامت مستقل شنیده نمی‌شود.'
  UNION ALL SELECT 60,'foundations','introductions','prea1-tr-how-are-you','Nasılsın?',
         'Ask and answer how someone is in an informal beginner exchange.',2,
         'Use Nasılsın? with a familiar person and simple answers such as İyiyim, Teşekkürler.',
         'پسوند شخص در خود فعل/صفت اطلاعات شخص را می‌دهد؛ «İyiyim» یعنی «خوبم» و لازم نیست همیشه «ben» را بگویی.'
  UNION ALL SELECT 70,'describing','objects','prea1-tr-first-objects','İlk nesneler',
         'Recognize a few everyday Turkish nouns and ask what an object is.',2,
         'Use Bu ne? and Bu … as fixed beginner patterns; Turkish has no grammatical gender or definite articles like German.',
         'برای فارسی‌زبان‌ها خبر خوب: ترکی جنس دستوری و حرف تعریفِ der/die/das ندارد؛ «Bu ne?» یعنی «این چیه؟».'
  UNION ALL SELECT 80,'social','polite-language','prea1-tr-polite-words','Kibar sözler',
         'Use essential polite expressions for thanks, requests and apologies.',2,
         'Learn lütfen, teşekkürler/teşekkür ederim, rica ederim and özür dilerim as pragmatic chunks.',
         'این عبارت‌ها را بر اساس موقعیت یاد بگیر؛ «Rica ederim» پاسخ طبیعی به تشکر است.'
  UNION ALL SELECT 85,'communication','requests','prea1-tr-meaning-help','Bu ne demek?',
         'Ask what something means and request repetition or slower speech with short survival chunks.',1,
         'Bu ne demek?, Tekrar eder misiniz? and Daha yavaş, lütfen. are taught as complete repair expressions.',
         'این عبارت‌ها را فعلاً یک‌تکه یاد بگیر: «Bu ne demek?» یعنی «این یعنی چه؟» و «Tekrar eder misiniz?» یعنی «دوباره می‌گویید؟».'
  UNION ALL SELECT 90,'social','polite-language','prea1-tr-survival-words','Gerekli sözler',
         'Recognize and use essential yes/no, help and repair expressions.',2,
         'Use evet, hayır, tamam, yardım, anlamadım and tekrar as fast survival language.',
         '«Anlamadım» یعنی «نفهمیدم» و از همان ابتدا برای مدیریت مکالمه خیلی کاربردی است.'
  UNION ALL SELECT 100,'foundations','introductions','prea1-tr-first-conversation','İlk konuşmam',
         'Combine greetings, names, wellbeing, thanks and a farewell in a tiny natural conversation.',2,
         'Build a first conversation from memorized chunks while noticing Turkish person endings and natural omission of pronouns.',
         'هدف این واحد ترکیب تکه‌های آشنا در یک گفت‌وگوی واقعی کوتاه است؛ فعلاً لازم نیست همهٔ پسوندها را تجزیه کنی.'
  UNION ALL SELECT 25,'foundations','introductions','prea1-tr-about-me','Benim hakkımda',
         'Give very basic personal information about origin, age, feelings and family with short Turkish chunks.',2,
         'Personal-information chunks are learned before suffix analysis.',
         'نام، مبدأ، سن و حال ساده را با تکه‌های آماده و کاربردی یاد بگیر.'
  UNION ALL SELECT 35,'foundations','numbers','prea1-tr-real-life-numbers','Günlük sayılar',
         'Recognize and use small numbers in phone numbers, prices, days and simple dates.',2,
         'Use transparent Turkish number forms inside real information.',
         'عددها را در شماره تلفن، قیمت، روز و تاریخ به کار ببر.'
  UNION ALL SELECT 75,'communication','simple-messages','prea1-tr-forms-signs','Formlar ve tabelalar',
         'Read a few highly familiar form labels and public signs and fill a three-field form.',2,
         'Functional reading uses highly transparent labels and signs.',
         'فیلدهای سادهٔ فرم و تابلوهای کاربردی را برای انجام کار واقعی بخوان.'
  UNION ALL SELECT 120,'communication','simple-messages','prea1-tr-real-world-gate','Gerçek hayat kontrolü',
         'Complete tiny real-world tasks with personal speaking, form writing, listening, visual reading and repair.',2,
         'The final gate checks successful communication, not suffix analysis.',
         'در خروجی نهایی باید با اطلاعات خودت صحبت و نوشتن خیلی ساده انجام بدهی و اگر گیر کردی مکالمه را تعمیر کنی.'

  UNION ALL SELECT 110,'communication','simple-messages','prea1-tr-ready-for-a1','A1’e hazırım',
         'Demonstrate readiness for A1 by recognizing distinctive Turkish letters, following tiny supported audio, introducing yourself and repairing a misunderstanding.',2,
         'The exit gate checks functional readiness rather than suffix analysis or perfect pronunciation.',
         'برای ورود به A1 لازم نیست پسوندهای ترکی را تحلیل کنی؛ باید حروف مهم را بشناسی، چند عبارت کوتاه را بفهمی، خودت را معرفی کنی و اگر گیر کردی درخواست تکرار یا معنی کنی.'
) AS u
JOIN courses c ON c.slug='fa-tr-tr'
JOIN cefr_levels lvl ON lvl.code='Pre-A1'
JOIN skills s ON s.slug=u.skill_slug
JOIN topics t ON t.slug=u.topic_slug;

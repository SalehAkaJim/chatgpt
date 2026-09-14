-- Standard Korean Pre-A1 curriculum for Persian-speaking absolute beginners.
INSERT IGNORE INTO curriculum_units (
  course_id,target_language_id,cefr_level_id,skill_id,topic_id,slug,title,
  learning_objective,sort_order,expected_lessons,status,metadata
)
SELECT c.id,c.target_language_id,lvl.id,s.id,t.id,u.slug,u.title,u.objective,
       u.sort_order,u.expected_lessons,'approved',
       JSON_OBJECT('language_specific',TRUE,'target_variant','ko-KR','grammar_focus',u.grammar_focus,'persian_learner_notes',u.persian_notes)
FROM (
  SELECT 10 sort_order,'foundations' skill_slug,'greetings' topic_slug,'prea1-ko-first-greetings' slug,'안녕하세요!' title,'Use core polite Korean greetings and farewells.' objective,2 expected_lessons,'Polite greeting chunks and leave/stay farewell contrast.' grammar_focus,'از ابتدا لحن مؤدبانه را پیش‌فرض بگیر.' persian_notes
  UNION ALL SELECT 20,'foundations','introductions','prea1-ko-my-name','제 이름은…','Say and ask names with polite beginner Korean.',2,'저는 / 제 이름은 / 이에요·예요 as chunks.','الگوها را ابتدا یک‌تکه یاد بگیر.'
  UNION ALL SELECT 30,'foundations','numbers','prea1-ko-numbers-0-10','0부터 10까지','Recognize and use basic Sino-Korean numbers.',2,'Sino-Korean numbers for numbers, time and counters.','کره‌ای دو دستگاه عددی دارد؛ اینجا چینی-کره‌ای را شروع می‌کنیم.'
  UNION ALL SELECT 40,'literacy','script-basics','prea1-ko-hangul-basics','한글 첫걸음','Understand Hangul consonants, vowels and syllable blocks.',2,'Hangul syllable-block composition.','بلوک هجا از چند حرف ساخته می‌شود؛ رومن‌نویسی را جایگزین هانگول نکن.'
  UNION ALL SELECT 45,'literacy','script-basics','prea1-ko-essential-jamo','꼭 필요한 자모','Recognize additional high-value Hangul consonants and vowels needed to decode early beginner words.',2,'Expand core jamo coverage with ㅇ, ㅂ, ㅅ, ㅈ, ㅎ and ㅣ, ㅜ, ㅡ, ㅔ while keeping sound values tied to real syllables.','هدف حفظ کل الفبا در یک نشست نیست؛ چند 자모 ضروری را طوری یاد بگیر که بتوانی واژه‌های درس‌های بعد را واقعاً بخوانی.'
  UNION ALL SELECT 47,'literacy','sound-letter-mapping','prea1-ko-build-syllables','글자 블록 만들기','Build and read simple Hangul syllable blocks from consonants and vowels, including the silent initial ㅇ placeholder.',2,'Vertical vowels place the consonant to the left; horizontal vowels place it above. Initial ㅇ carries no consonant sound, while final ㅇ is /ŋ/.','هانگول خطی مثل فارسی یا انگلیسی چیده نمی‌شود؛ حروف داخل یک بلوک هجا قرار می‌گیرند. ㅇ در ابتدای هجا معمولاً بی‌صداست.'
  UNION ALL SELECT 50,'literacy','sound-letter-mapping','prea1-ko-first-sounds','첫 소리와 받침','Read first syllables and recognize basic batchim.',2,'Initial sound mapping and final consonant position.', '받침 را ابتدا از نظر جایگاه تشخیص بده.'
  UNION ALL SELECT 60,'foundations','introductions','prea1-ko-how-are-you','잘 지내요?','Ask and answer simple wellbeing questions politely.',2,'Everyday -요 polite style.','پایان 요 را از ابتدا به‌عنوان نشان مهم ادب بشناس.'
  UNION ALL SELECT 70,'describing','objects','prea1-ko-first-objects','이게 뭐예요?','Identify everyday objects and ask what something is.',2,'이에요 / 예요 beginner copula contrast.','تفاوت را با پایان صامت/واکه از طریق مثال یاد بگیر.'
  UNION ALL SELECT 80,'social','polite-language','prea1-ko-polite-words','고마워요, 주세요','Make simple polite requests, thanks and apologies.',2,'Noun + 주세요 and core politeness chunks.','주세요 یک الگوی بسیار پربسامد برای درخواست مؤدبانه است.'
  UNION ALL SELECT 85,'communication','requests','prea1-ko-meaning-help','무슨 뜻이에요?','Ask what something means and combine that with repeat or slow-down requests.',1,'무슨 뜻이에요?, 다시 말해 주세요 and 천천히 말해 주세요 are taught as complete repair chunks.','برای شروع ساخت دستوری را تجزیه نکن؛ این سه عبارت را ابزار نجات مکالمه بدان.'
  UNION ALL SELECT 90,'social','polite-language','prea1-ko-survival-words','다시 말해 주세요','Repair communication with repeat, slow-down and help requests.',2,'다시/천천히 + 말해 주세요.','از همان ابتدا ابزار مدیریت مکالمه داشته باش.'
  UNION ALL SELECT 100,'foundations','introductions','prea1-ko-first-conversation','첫 한국어 대화','Combine greetings, identity, origin and farewells in one short conversation.',2,'X에서 왔어요 as a useful origin chunk.','هدف ترکیب تکه‌های آشنا در یک گفت‌وگوی واقعی کوتاه است.'
  UNION ALL SELECT 25,'foundations','introductions','prea1-ko-about-me','나에 대해',
         'Give very basic personal information about origin, age, feelings and family with polite Korean chunks.',2,
         'Use polite personal-information chunks without requiring particle analysis.',
         'اطلاعات خیلی پایهٔ شخصی را با تکه‌های مؤدبانه و آماده بیان کن.'
  UNION ALL SELECT 35,'foundations','numbers','prea1-ko-real-life-numbers','생활 속 숫자',
         'Recognize useful Sino-Korean numbers in phone numbers, prices, days and simple dates, plus one age chunk.',2,
         'Keep the two Korean number systems explicit; this unit focuses on useful fixed patterns rather than full mastery.',
         'کره‌ای دو دستگاه عددی دارد؛ اینجا فقط الگوهای ضروری شماره، قیمت و تاریخ را کاربردی تمرین کن.'
  UNION ALL SELECT 75,'communication','simple-messages','prea1-ko-forms-signs','양식과 표지판',
         'Read a few highly familiar form labels and public signs and fill a three-field form.',2,
         'Functional Hangul reading moves from decoding blocks to completing a real task.',
         'خواندن هانگول را به کار واقعی وصل کن: عنوان فرم، خروج و ورودی را تشخیص بده.'
  UNION ALL SELECT 120,'communication','simple-messages','prea1-ko-real-world-gate','실생활 Pre-A1 확인',
         'Complete tiny real-world tasks with personal speaking, form writing, listening, visual reading and repair.',2,
         'The final gate checks task completion, not complete Hangul or grammar mastery.',
         'در خروجی نهایی باید اطلاعات خودت را بگویی/بنویسی، اطلاعات کوتاه را بشنوی، نشانه را بخوانی و در صورت مشکل درخواست کمک کنی.'

  UNION ALL SELECT 110,'communication','simple-messages','prea1-ko-ready-for-a1','A1 준비 완료','Demonstrate A1 readiness by decoding simple Hangul, following tiny supported audio, introducing yourself and repairing a misunderstanding.',2,'The exit gate checks functional readiness and script decoding, not complete Hangul mastery or grammar analysis.','برای ورود به A1 لازم نیست همهٔ قواعد آوایی هانگول را بلد باشی؛ باید بلوک‌های ساده را بخوانی، عبارت‌های پایه را بفهمی و وقتی گیر کردی درخواست معنی یا تکرار کنی.'
) u
JOIN courses c ON c.slug='fa-ko-kr'
JOIN cefr_levels lvl ON lvl.code='Pre-A1'
JOIN skills s ON s.slug=u.skill_slug
JOIN topics t ON t.slug=u.topic_slug;

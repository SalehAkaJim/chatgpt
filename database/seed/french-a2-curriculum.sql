-- Contemporary Standard French A2 curriculum for Persian-speaking learners.
INSERT IGNORE INTO curriculum_units (
  course_id,target_language_id,cefr_level_id,skill_id,topic_id,slug,title,
  learning_objective,sort_order,expected_lessons,status,metadata
)
SELECT c.id,c.target_language_id,lvl.id,s.id,t.id,u.slug,u.title,u.objective,
       u.sort_order,u.expected_lessons,'approved',
       JSON_OBJECT('language_specific',TRUE,'target_variant','fr-FR','grammar_focus',u.grammar_focus,'persian_learner_notes',u.persian_learner_notes)
FROM (
  SELECT 210 sort_order,'daily-life' skill_slug,'daily-routine' topic_slug,'a2-fr-yesterday-and-past' slug,'Hier, j''ai visité le musée' title,'Recount completed everyday events and sequence a short account of yesterday.' objective,2 expected_lessons,'passé composé with avoir/être; completed past events' grammar_focus,'در A2 گذشته را با passé composé و انتخاب درست avoir/être در موقعیت‌های واقعی تثبیت کن.' persian_learner_notes
  UNION ALL SELECT 220,'time-plans','time','a2-fr-plans-and-invitations','On va se voir samedi','Make, negotiate and confirm near-future social plans.',2,'futur proche; availability and invitations','aller + مصدر را برای برنامه نزدیک و هماهنگی قرار در جمله‌های طبیعی تمرین کن.'
  UNION ALL SELECT 230,'food-drink','restaurants','a2-fr-food-and-quantities','Il en reste encore','Handle quantities, portions and references to previously mentioned food and drink.',2,'quantities with de; pronoun en','en در این سطح برای جلوگیری از تکرار مقدار یا اسمِ معرفی‌شده با de مهم است.'
  UNION ALL SELECT 240,'shopping-money','shopping','a2-fr-clothes-and-comparisons','Cette veste est moins chère','Shop for clothing, ask for sizes and compare alternatives.',2,'comparatives; direct-object pronoun recognition','مقایسه plus/moins/aussi + صفت + que را همراه زبان واقعی خرید یاد بگیر.'
  UNION ALL SELECT 250,'travel-transport','transport','a2-fr-hotel-and-stay','J''ai réservé pour deux nuits','Check into accommodation, confirm a stay and ask about services politely.',2,'polite pouvoir requests; devoir for requirements','در خدمات، register مؤدبانه با pouvez-vous و الزام با devoir را از گفت‌وگوی دوستانه جدا نگه دار.'
  UNION ALL SELECT 260,'daily-life','common-actions','a2-fr-health-and-pharmacy','J''ai mal à la gorge','Describe simple symptoms, duration and understand basic health advice.',2,'depuis with present; mild advice with devriez','depuis برای حالتی که از گذشته تا الان ادامه دارد با ساخت فارسی متفاوت است؛ آن را با مثال زمانی تمرین کن.'
  UNION ALL SELECT 270,'daily-life','common-actions','a2-fr-work-and-obligations','Je dois finir ce dossier','Express workplace obligations, ability, inability and scheduling constraints.',2,'devoir/pouvoir + infinitive; negation','ne...pas دور فعل صرف‌شده modal می‌آید، نه دور مصدر.'
  UNION ALL SELECT 280,'family-home','home','a2-fr-home-and-neighborhood','Le quartier est plus calme','Describe housing conditions, neighborhood problems and compare places.',2,'comparatives; beaucoup de','برای مقایسه محله‌ها ساخت مقایسه را با واژگان واقعی خانه و صدا ترکیب کن.'
  UNION ALL SELECT 290,'describing','objects','a2-fr-opinions-and-media','Je l''ai trouvé intéressant','Give short opinions about media and refer back to known objects naturally.',2,'opinion frames; direct-object pronouns','ضمیرهای مفعولی فرانسوی پیش از فعل می‌آیند؛ جای آن‌ها را با جمله کامل یاد بگیر.'
  UNION ALL SELECT 300,'daily-life','daily-routine','a2-fr-a2-problem-solving-capstone','Finalement, on a trouvé une solution','Combine past events, present constraints and next steps to solve an everyday problem.',2,'linking passé composé, present and near future','هدف capstone پیوند طبیعی گذشته، مشکل فعلی و تصمیم بعدی با رابط‌هایی مثل finalement و si است.'
) u
JOIN courses c ON c.slug='fa-fr-fr'
JOIN cefr_levels lvl ON lvl.code='A2'
JOIN skills s ON s.slug=u.skill_slug
JOIN topics t ON t.slug=u.topic_slug;

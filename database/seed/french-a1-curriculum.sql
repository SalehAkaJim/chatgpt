-- Contemporary Standard French A1 curriculum for Persian-speaking learners.
INSERT IGNORE INTO curriculum_units (
  course_id,target_language_id,cefr_level_id,skill_id,topic_id,slug,title,
  learning_objective,sort_order,expected_lessons,status,metadata
)
SELECT c.id,c.target_language_id,lvl.id,s.id,t.id,u.slug,u.title,u.objective,
       u.sort_order,u.expected_lessons,'approved',
       JSON_OBJECT('language_specific',TRUE,'target_variant','fr-FR','grammar_focus',u.grammar_focus,'persian_learner_notes',u.persian_learner_notes)
FROM (
  SELECT 110 sort_order,'foundations' skill_slug,'introductions' topic_slug,'a1-fr-identity-and-origin' slug,'Je suis français' title,'Identify yourself, origin and residence with beginner-safe present-tense French.' objective,2 expected_lessons,'être with identity; nationality agreement; habiter à + city' grammar_focus,'ملیت‌ها در فرانسوی معمولاً با جنس هماهنگ می‌شوند و نام شهر بعد از à می‌آید.' persian_learner_notes
  UNION ALL SELECT 120,'describing','objects','a1-fr-articles-and-objects','Un livre, une clé','Identify everyday objects and use basic gender agreement with indefinite articles and demonstratives.',2,'un/une; ce/cette; possession with être à','اسم را همراه جنسش یاد بگیر و ce/cette را با اسم هماهنگ کن.'
  UNION ALL SELECT 130,'family-home','family','a1-fr-family-and-people','Ma famille','Introduce close family members and state simple family relationships.',2,'mon/ma; avoir for family','mon/ma با اسمِ بعد از خود هماهنگ می‌شود، نه با صاحب.'
  UNION ALL SELECT 140,'family-home','home','a1-fr-home-and-location','Il y a une cuisine','Describe a home and ask where a room or place is.',2,'il y a; où est...','il y a برای مفرد و جمع یک شکل دارد.'
  UNION ALL SELECT 150,'daily-life','common-actions','a1-fr-daily-actions','Je travaille et j''étudie','Talk about basic work, study, eating and drinking routines.',2,'present of common -er verbs','پایان فعل‌های -er در زمان حال را همراه جمله و صوت یاد بگیر.'
  UNION ALL SELECT 160,'time-plans','time','a1-fr-time-and-schedule','Quelle heure est-il ?','Ask and tell basic clock time and make a simple plan.',2,'il est + clock time; quand','برای ساعت از il est استفاده می‌شود.'
  UNION ALL SELECT 170,'food-drink','restaurants','a1-fr-cafe-basics','Je voudrais un café','Order simple food and drinks politely in a café.',2,'je voudrais; polite requests','je voudrais از je veux برای سفارش مؤدبانه‌تر و طبیعی‌تر است.'
  UNION ALL SELECT 180,'shopping-money','shopping','a1-fr-shopping-and-prices','Ça coûte combien ?','Ask prices and make simple shopping choices.',2,'coûter; prendre; demonstratives','برای قیمت Ça coûte combien ? و برای انتخاب je prends… را به‌صورت chunk یاد بگیر.'
  UNION ALL SELECT 190,'travel-transport','transport','a1-fr-getting-around','Où est la gare ?','Ask for and understand very simple directions and name common transport.',2,'direction chunks; imperative recognition','عبارت‌های جهت را به‌صورت تکه‌های ثابت و صوتی یاد بگیر.'
  UNION ALL SELECT 200,'daily-life','daily-routine','a1-fr-a1-day-capstone','Une journée simple','Combine A1 identity, routine, time, movement and social plans in a short coherent day.',2,'present-tense routine consolidation','هدف این واحد ترکیب مهارت‌های A1 در یک روز ساده و طبیعی است.'
) u
JOIN courses c ON c.slug='fa-fr-fr'
JOIN cefr_levels lvl ON lvl.code='A1'
JOIN skills s ON s.slug=u.skill_slug
JOIN topics t ON t.slug=u.topic_slug;

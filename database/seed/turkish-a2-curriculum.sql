-- Istanbul Turkish A2 curriculum, cumulative seed for Persian-speaking learners.
INSERT IGNORE INTO curriculum_units (
  course_id,target_language_id,cefr_level_id,skill_id,topic_id,slug,title,
  learning_objective,sort_order,expected_lessons,status,metadata
)
SELECT c.id,c.target_language_id,lvl.id,s.id,t.id,u.slug,u.title,u.objective,
       u.sort_order,3,'approved',JSON_OBJECT('language_specific',TRUE,'target_variant','tr-TR','batch',1,'grammar_focus',u.grammar_focus)
FROM (
 SELECT 210 sort_order,'daily-life' skill_slug,'daily-routine' topic_slug,'a2-tr-past-weekend' slug,'Hafta sonu ne yaptın?' title,'Talk about completed past events and sequence a short weekend story.' objective,'definite past -di and personal endings' grammar_focus
 UNION ALL SELECT 220,'daily-life','daily-routine','a2-tr-habits-and-frequency','Genelde erken kalkarım','Describe routines, habits and frequency in ordinary life.','aorist/geniş zaman for habitual actions'
 UNION ALL SELECT 230,'shopping-money','shopping','a2-tr-comparisons','Bu daha uygun','Compare options by price, size and quality and express a preference.','comparatives with daha and kadar'
 UNION ALL SELECT 240,'communication','requests','a2-tr-polite-requests','Yardım edebilir misiniz?','Make polite requests, ask permission and respond appropriately.','polite ability/request forms -ebilir misiniz'
 UNION ALL SELECT 250,'time-plans','future-plans','a2-tr-appointments-and-plans','Yarın buluşabiliriz','Arrange appointments, suggest times and negotiate availability.','future planning and ability with -ebilir'
 UNION ALL SELECT 260,'health-body','basic-health','a2-tr-health-and-advice','Biraz dinlenmelisin','Describe common symptoms and give or understand simple advice.','necessity/advice with -meli/-malı'
 UNION ALL SELECT 270,'travel-transport','places-town','a2-tr-travel-and-hotel','Rezervasyonum var','Handle a simple hotel stay, check-in and basic travel problems.','possessive and case combinations in travel contexts'
 UNION ALL SELECT 280,'communication','simple-messages','a2-tr-reasons-and-results','Trafik olduğu için geç kaldım','Give simple reasons and connect cause with a result.','causal clauses with için'
 UNION ALL SELECT 290,'social','likes-dislikes','a2-tr-choices-and-preferences','Ben bunu tercih ederim','Express preferences, compare alternatives and justify a choice.','preference with tercih etmek and -mek istemek'
 UNION ALL SELECT 300,'travel-transport','transport','a2-tr-a2-city-day-capstone','İstanbul''da yoğun bir gün','Integrate A2 past, habits, comparisons, polite requests, plans, advice and reasons in a coherent city-day scenario.','A2 batch 1 communicative integration'
) u
JOIN courses c ON c.slug='fa-tr-tr'
JOIN cefr_levels lvl ON lvl.code='A2'
JOIN skills s ON s.slug=u.skill_slug
JOIN topics t ON t.slug=u.topic_slug AND t.skill_id=s.id;

-- Expansion batch 2 is included here so any consumer of the canonical A2 seed gets the full authored curriculum.
INSERT IGNORE INTO curriculum_units (
  course_id,target_language_id,cefr_level_id,skill_id,topic_id,slug,title,
  learning_objective,sort_order,expected_lessons,status,metadata
)
SELECT c.id,c.target_language_id,lvl.id,s.id,t.id,u.slug,u.title,u.objective,
       u.sort_order,u.expected_lessons,'approved',
       JSON_OBJECT('language_specific',TRUE,'target_variant','tr-TR','batch',2,'grammar_focus',u.grammar_focus)
FROM (
 SELECT 310 sort_order,3 expected_lessons,'foundations' skill_slug,'introductions' topic_slug,
        'a2-tr-personal-background' slug,'Nerede büyüdün?' title,
        'Describe personal background, places lived and a simple life change.' objective,
        '-den beri and past-time sequencing' grammar_focus
 UNION ALL SELECT 320,3,'family-home','family','a2-tr-family-relationships','Ailemle sık görüşürüm',
        'Talk about family relationships, contact and simple shared routines.',
        'reciprocal/shared actions and frequency expressions'
 UNION ALL SELECT 330,3,'family-home','home','a2-tr-home-neighborhood','Mahallem sessiz ama merkezi',
        'Describe a home and neighborhood, nearby services and simple advantages or drawbacks.',
        '-e yakın / -den uzak and contrast with ama'
 UNION ALL SELECT 340,3,'time-plans','future-plans','a2-tr-invitations-arrangements','Cumartesi bize gelsene',
        'Invite someone, accept or decline politely and propose an alternative arrangement.',
        'suggestions with -elim/-alım and polite alternatives'
 UNION ALL SELECT 350,3,'food-drink','food-basics','a2-tr-food-quantities-cooking','İki kaşık yağ ekle',
        'Understand and give a short recipe using quantities and ordered steps.',
        'quantity phrases and imperative sequencing'
 UNION ALL SELECT 360,3,'food-drink','restaurants','a2-tr-restaurant-service-problems','Siparişim henüz gelmedi',
        'Handle a simple restaurant service problem politely and reach a practical solution.',
        'polite problem statements and solution requests'
) u
JOIN courses c ON c.slug='fa-tr-tr'
JOIN cefr_levels lvl ON lvl.code='A2'
JOIN skills s ON s.slug=u.skill_slug
JOIN topics t ON t.slug=u.topic_slug AND t.skill_id=s.id;

-- Coverage-driven expansion batch 3: concrete A2 service, transport, health, planning and message tasks.
INSERT IGNORE INTO curriculum_units (
  course_id,target_language_id,cefr_level_id,skill_id,topic_id,slug,title,
  learning_objective,sort_order,expected_lessons,status,metadata
)
SELECT c.id,c.target_language_id,lvl.id,s.id,t.id,u.slug,u.title,u.objective,
       u.sort_order,u.expected_lessons,'approved',
       JSON_OBJECT('language_specific',TRUE,'target_variant','tr-TR','batch',3,'grammar_focus',u.grammar_focus)
FROM (
 SELECT 370 sort_order,3 expected_lessons,'travel-transport' skill_slug,'transport' topic_slug,
        'a2-tr-transport-delays' slug,'Otobüs gecikti' title,
        'Handle routine public-transport delays, ask about another route and explain a short delay.' objective,
        'simple delay language, route alternatives and because/result links' grammar_focus
 UNION ALL SELECT 380,3,'shopping-money','shopping','a2-tr-returns-exchanges','Bunu değiştirmek istiyorum',
        'Return or exchange a simple purchase, explain a concrete problem and ask for an available option.',
        'polite return/exchange requests with istemek and simple descriptive reasons'
 UNION ALL SELECT 390,3,'time-plans','future-plans','a2-tr-service-appointments','Randevuyu değiştirebilir miyiz?',
        'Book, confirm or move a routine service appointment and give a simple reason.',
        'clock/date review, polite availability questions and simple scheduling'
 UNION ALL SELECT 400,3,'time-plans','future-plans','a2-tr-weather-plans','Bugün hava yağmurlu',
        'Understand a simple weather forecast, choose suitable plans and explain a practical change.',
        'weather expressions, future plans and simple cause/result'
 UNION ALL SELECT 410,3,'health-body','basic-health','a2-tr-fitness-routines','Haftada üç gün yürürüm',
        'Describe a simple exercise routine, body state and practical beginner health choices.',
        'habitual geniş zaman, frequency and -meli advice recycling'
 UNION ALL SELECT 420,3,'communication','simple-messages','a2-tr-simple-event-messages','Biraz geç geleceğim',
        'Send and understand short practical messages about arrival time, meeting place and simple changes.',
        'short future/present messages, because/result and polite confirmation'
) u
JOIN courses c ON c.slug='fa-tr-tr'
JOIN cefr_levels lvl ON lvl.code='A2'
JOIN skills s ON s.slug=u.skill_slug
JOIN topics t ON t.slug=u.topic_slug AND t.skill_id=s.id;

-- Coverage-driven expansion batch 4: routine work and study tasks with short independent production.
INSERT IGNORE INTO curriculum_units (
  course_id,target_language_id,cefr_level_id,skill_id,topic_id,slug,title,
  learning_objective,sort_order,expected_lessons,status,metadata
)
SELECT c.id,c.target_language_id,lvl.id,s.id,t.id,u.slug,u.title,u.objective,
       u.sort_order,u.expected_lessons,'approved',
       JSON_OBJECT('language_specific',TRUE,'target_variant','tr-TR','batch',4,'grammar_focus',u.grammar_focus)
FROM (
 SELECT 430 sort_order,3 expected_lessons,'work-study' skill_slug,'jobs' topic_slug,
        'a2-tr-work-schedules' slug,'Bugün vardiyam değişti' title,
        'Understand and discuss a simple work schedule, a routine change and a short absence or delay message.' objective,
        'clock/calendar recycling, simple present/future and short reasons' grammar_focus
 UNION ALL SELECT 440,3,'work-study','school-study','a2-tr-study-tasks','Ödevi cuma günü vereceğiz',
        'Understand a simple class task, ask about a deadline and describe a short study plan.',
        'dates, time phrases, simple sequencing and future plans'
) u
JOIN courses c ON c.slug='fa-tr-tr'
JOIN cefr_levels lvl ON lvl.code='A2'
JOIN skills s ON s.slug=u.skill_slug
JOIN topics t ON t.slug=u.topic_slug AND t.skill_id=s.id;

-- Coverage-driven expansion batch 5: home problems, directions, everyday budgeting and leisure planning.
INSERT IGNORE INTO curriculum_units (
  course_id,target_language_id,cefr_level_id,skill_id,topic_id,slug,title,
  learning_objective,sort_order,expected_lessons,status,metadata
)
SELECT c.id,c.target_language_id,lvl.id,s.id,t.id,u.slug,u.title,u.objective,
       u.sort_order,u.expected_lessons,'approved',
       JSON_OBJECT('language_specific',TRUE,'target_variant','tr-TR','batch',5,'grammar_focus',u.grammar_focus)
FROM (
 SELECT 450 sort_order,3 expected_lessons,'family-home' skill_slug,'home' topic_slug,
        'a2-tr-home-problems' slug,'Mutfakta su akıyor' title,
        'Describe a simple home problem, contact the responsible person and ask for a practical repair time.' objective,
        'present-state descriptions, polite requests and simple scheduling' grammar_focus
 UNION ALL SELECT 460,3,'travel-transport','directions','a2-tr-directions-routes','İkinci sokaktan sağa dönün',
        'Ask for and give short practical directions and confirm a simple route to a familiar place.',
        'location/case review, simple imperatives and route sequencing'
 UNION ALL SELECT 470,3,'shopping-money','prices','a2-tr-simple-budget','Bu ay biraz daha az harcayacağım',
        'Talk about a simple monthly budget, compare everyday costs and make a concrete spending choice.',
        'prices, daha comparisons, quantities and simple future intention'
 UNION ALL SELECT 480,3,'social','hobbies','a2-tr-leisure-plans','Cumartesi konsere gidelim',
        'Discuss simple leisure interests, invite someone to an activity and agree on a practical plan.',
        'hobby frequency, -elim suggestions, preferences and simple arrangements'
) u
JOIN courses c ON c.slug='fa-tr-tr'
JOIN cefr_levels lvl ON lvl.code='A2'
JOIN skills s ON s.slug=u.skill_slug
JOIN topics t ON t.slug=u.topic_slug AND t.skill_id=s.id;

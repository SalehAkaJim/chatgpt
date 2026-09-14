-- Turkish A2 coverage-driven expansion batch 6.
INSERT IGNORE INTO curriculum_units (
  course_id,target_language_id,cefr_level_id,skill_id,topic_id,slug,title,
  learning_objective,sort_order,expected_lessons,status,metadata
)
SELECT c.id,c.target_language_id,lvl.id,s.id,t.id,u.slug,u.title,u.objective,
       u.sort_order,u.expected_lessons,'approved',
       JSON_OBJECT('language_specific',TRUE,'target_variant','tr-TR','batch',6,'grammar_focus',u.grammar_focus)
FROM (
 SELECT 490 sort_order,3 expected_lessons,'health-body' skill_slug,'basic-health' topic_slug,
        'a2-tr-pharmacy-basics' slug,'Boğazım ağrıyor' title,
        'Describe a common minor symptom at a pharmacy, ask for a simple product and understand basic use instructions.' objective,
        'body/symptom language, polite requests and simple frequency instructions' grammar_focus
 UNION ALL SELECT 500,3,'communication','simple-messages','a2-tr-parcel-delivery','Paketim bugün gelecek',
        'Understand a simple delivery message, give a practical location detail and arrange receipt of a parcel.',
        'future arrival, location details and simple coordination'
 UNION ALL SELECT 510,3,'travel-transport','places-town','a2-tr-lost-property','Çantamı bulamıyorum',
        'Report a lost everyday item, describe it simply and ask where to check for it.',
        'object description, simple past location and polite questions'
 UNION ALL SELECT 520,3,'foundations','introductions','a2-tr-simple-forms','Bu formu dolduracağım',
        'Give and check routine personal information on a simple form and ask about one unclear field.',
        'personal information review, spelling/numbers and simple clarification questions'
 UNION ALL SELECT 530,3,'social','polite-language','a2-tr-hosting-guest','Bir şey içer misin?',
        'Welcome a familiar guest, offer simple food or drink and respond politely to preferences.',
        'offers, preferences and polite acceptance/refusal'
 UNION ALL SELECT 540,3,'describing','objects','a2-tr-object-description','Mavi olan daha hafif',
        'Describe and compare familiar everyday objects by color, size, weight and practical use.',
        'adjective review, daha comparisons and simple preference'
 UNION ALL SELECT 550,3,'time-plans','dates-calendar','a2-tr-calendar-reminders','Toplantı perşembe günü',
        'Understand and create simple calendar reminders with dates, times and one practical preparation detail.',
        'date/time review, future preparation and short reminder messages'
 UNION ALL SELECT 560,3,'daily-life','common-actions','a2-tr-a2-practical-day-capstone','Bugün birkaç işim var',
        'Integrate familiar A2 skills in a practical day: plan tasks, solve one routine problem, communicate a change and complete a short personalized action outcome.',
        'A2 recycling: sequencing, simple past/future, polite requests, reasons and preferences'
) u
JOIN courses c ON c.slug='fa-tr-tr'
JOIN cefr_levels lvl ON lvl.code='A2'
JOIN skills s ON s.slug=u.skill_slug
JOIN topics t ON t.slug=u.topic_slug AND t.skill_id=s.id;

-- Turkish A2 expansion batch 2. Unit/lesson counts are authored metadata, not workflow assertions.
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

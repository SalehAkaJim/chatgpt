-- Istanbul Turkish A1 curriculum, batch 1, for Persian-speaking learners.
INSERT IGNORE INTO curriculum_units (
  course_id,target_language_id,cefr_level_id,skill_id,topic_id,slug,title,
  learning_objective,sort_order,expected_lessons,status,metadata
)
SELECT c.id,c.target_language_id,lvl.id,s.id,t.id,u.slug,u.title,u.objective,
       u.sort_order,2,'approved',JSON_OBJECT('language_specific',TRUE,'target_variant','tr-TR','batch',1,'grammar_focus',u.grammar_focus)
FROM (
 SELECT 110 sort_order,'foundations' skill_slug,'introductions' topic_slug,'a1-tr-who-i-am' slug,'Ben öğrenciyim' title,'State identity, occupation and origin with Turkish person endings.' objective,'nominal person endings and değil negation' grammar_focus
 UNION ALL SELECT 120,'describing','objects','a1-tr-this-and-these','Bu kitap, bunlar kitaplar','Identify singular and plural everyday objects.','plural -lar/-ler and demonstratives'
 UNION ALL SELECT 130,'social','family','a1-tr-my-family','Ailem','Introduce close family and basic possession.','first-person possessive endings'
 UNION ALL SELECT 140,'describing','home','a1-tr-at-home','Evde ne var?','Describe what exists and where things are at home.','locative -da/-de with var/yok'
 UNION ALL SELECT 150,'foundations','daily-routine','a1-tr-what-im-doing','Şimdi ne yapıyorsun?','Ask and say what someone is doing now.','present progressive -iyor'
 UNION ALL SELECT 160,'foundations','time','a1-tr-time-and-plans','Saat kaç?','Tell clock time and arrange a simple meeting.','clock time and temporal locative'
 UNION ALL SELECT 170,'social','food-drink','a1-tr-at-the-cafe','Bir kahve alabilir miyim?','Order simple food and drinks politely.','istemek and polite request chunks'
 UNION ALL SELECT 180,'social','shopping','a1-tr-shopping-basics','Bu ne kadar?','Ask prices, evaluate them and buy quantities.','numbers with tane and price expressions'
 UNION ALL SELECT 190,'foundations','directions','a1-tr-getting-around','Metroya nasıl giderim?','Ask for and follow basic directions.','directional dative -a/-e'
 UNION ALL SELECT 200,'foundations','introductions','a1-tr-a1-first-day-capstone','İstanbul''da ilk gün','Combine identity, location, time, requests and directions in a short survival conversation.','A1 batch 1 communicative integration'
) u
JOIN courses c ON c.slug='fa-tr-tr'
JOIN cefr_levels lvl ON lvl.code='A1'
JOIN skills s ON s.slug=u.skill_slug
JOIN topics t ON t.slug=u.topic_slug;

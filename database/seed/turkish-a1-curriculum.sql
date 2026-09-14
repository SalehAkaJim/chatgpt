-- Istanbul Turkish A1 cumulative curriculum for Persian-speaking learners.
-- A batch is an atomic production chunk, not the definition of a completed CEFR level.
INSERT IGNORE INTO curriculum_units (
  course_id,target_language_id,cefr_level_id,skill_id,topic_id,slug,title,
  learning_objective,sort_order,expected_lessons,status,metadata
)
SELECT c.id,c.target_language_id,lvl.id,s.id,t.id,u.slug,u.title,u.objective,
       u.sort_order,2,'approved',JSON_OBJECT('language_specific',TRUE,'target_variant','tr-TR','batch',u.batch_no,'grammar_focus',u.grammar_focus)
FROM (
 SELECT 110 sort_order,1 batch_no,'foundations' skill_slug,'introductions' topic_slug,'a1-tr-who-i-am' slug,'Ben öğrenciyim' title,'State identity, occupation and origin with Turkish person endings.' objective,'nominal person endings and değil negation' grammar_focus
 UNION ALL SELECT 120,1,'describing','objects','a1-tr-this-and-these','Bu kitap, bunlar kitaplar','Identify singular and plural everyday objects.','plural -lar/-ler and demonstratives'
 UNION ALL SELECT 130,1,'family-home','family','a1-tr-my-family','Ailem','Introduce close family and basic possession.','first-person possessive endings'
 UNION ALL SELECT 140,1,'family-home','home','a1-tr-at-home','Evde ne var?','Describe what exists and where things are at home.','locative -da/-de with var/yok'
 UNION ALL SELECT 150,1,'daily-life','daily-routine','a1-tr-what-im-doing','Şimdi ne yapıyorsun?','Ask and say what someone is doing now.','present progressive -iyor'
 UNION ALL SELECT 160,1,'time-plans','time','a1-tr-time-and-plans','Saat kaç?','Tell clock time and arrange a simple meeting.','clock time and temporal locative'
 UNION ALL SELECT 170,1,'food-drink','restaurants','a1-tr-at-the-cafe','Bir kahve alabilir miyim?','Order simple food and drinks politely.','istemek and polite request chunks'
 UNION ALL SELECT 180,1,'shopping-money','shopping','a1-tr-shopping-basics','Bu ne kadar?','Ask prices, evaluate them and buy quantities.','numbers with tane and price expressions'
 UNION ALL SELECT 190,1,'travel-transport','directions','a1-tr-getting-around','Metroya nasıl giderim?','Ask for and follow basic directions.','directional dative -a/-e'
 UNION ALL SELECT 200,1,'foundations','introductions','a1-tr-a1-first-day-capstone','İstanbul''da ilk gün','Combine identity, location, time, requests and directions in a short survival conversation.','A1 batch 1 communicative integration'
 UNION ALL SELECT 210,2,'daily-life','daily-routine','a1-tr-everyday-routine','Her gün ne yaparsın?','Describe habitual weekday routines and schedules.','aorist / geniş zaman for habits'
 UNION ALL SELECT 220,2,'social','likes-dislikes','a1-tr-likes-and-specific-things','Bu filmi seviyorum','Express likes, dislikes and simple preferences about specific things.','accusative -(y)I with specific direct objects'
 UNION ALL SELECT 230,2,'travel-transport','places-town','a1-tr-from-here-to-there','İşten eve','Say where movement starts and describe a simple route home.','ablative -dan/-den'
 UNION ALL SELECT 240,2,'communication','requests','a1-tr-can-you-help','Yardım edebilir misiniz?','Ask for help or permission with appropriate basic politeness.','ability and polite requests with -(y)Abil'
 UNION ALL SELECT 250,2,'daily-life','common-actions','a1-tr-yesterday','Dün ne yaptın?','Report a few definite everyday events from yesterday.','definite past -DI'
 UNION ALL SELECT 260,2,'describing','weather','a1-tr-weather-and-clothes','Hava nasıl?','Describe basic weather and choose suitable clothing.','simple nominal/adjectival predicates'
 UNION ALL SELECT 270,2,'health-body','basic-health','a1-tr-basic-health','Neren ağrıyor?','State common symptoms and understand very simple advice.','basic imperative and symptom expressions'
 UNION ALL SELECT 280,2,'time-plans','time','a1-tr-before-and-after','Dersten önce','Sequence simple activities with before and after.','önce/sonra with ablative-marked time nouns'
 UNION ALL SELECT 290,2,'time-plans','future-plans','a1-tr-near-future-plans','Yarın ne yapacaksın?','State straightforward plans for tomorrow, the weekend and near future.','future -(y)AcAk'
 UNION ALL SELECT 300,2,'communication','simple-messages','a1-tr-a1-everyday-capstone','Bir günü halletmek','Integrate cases, basic tense contrasts, plans and communication repair in everyday tasks.','A1 batch 2 cumulative communicative integration'
 UNION ALL SELECT 310,3,'time-plans','dates-calendar','a1-tr-calendar-and-dates','Bugün ayın kaçı?','Read and state basic weekdays, months, dates and schedules.','weekdays months and everyday date expressions'
 UNION ALL SELECT 320,3,'foundations','countries-nationalities','a1-tr-countries-and-nationalities','Nerelisin?','Ask and state origin and nationality naturally.','productive -li nationality/origin forms plus lexical nationalities'
 UNION ALL SELECT 330,3,'social','hobbies','a1-tr-hobbies-and-invitations','Birlikte gidelim mi?','Talk about hobbies and make, accept or politely decline simple invitations.','-mek/-mak istemek and invitation routines'
 UNION ALL SELECT 340,3,'work-study','school-study','a1-tr-school-and-work','Bugün ne çalışıyorsun?','Handle basic school and work schedules, tasks and plans.','question-word recycling with familiar predicates'
 UNION ALL SELECT 350,3,'family-home','possessions','a1-tr-whose-is-this','Bu kimin?','Ask and state ownership beyond first-person possession.','genitive plus possessive patterns and -ki pronouns'
 UNION ALL SELECT 360,3,'food-drink','food-basics','a1-tr-at-the-market','Bir kilo domates','Buy groceries using basic quantity and quality language.','quantity expressions plus singular noun recycling'
 UNION ALL SELECT 370,3,'travel-transport','transport','a1-tr-tickets-and-transfers','Hangi hat?','Buy a ticket and follow a simple route involving boarding, exiting and a transfer.','dative with binmek and ablative with inmek'
 UNION ALL SELECT 380,3,'describing','objects','a1-tr-compare-and-choose','Hangisi daha iyi?','Compare simple options and choose by price or size.','daha and en comparisons'
 UNION ALL SELECT 390,3,'communication','simple-messages','a1-tr-short-messages-and-reasons','Geç kalacağım çünkü…','Understand and produce short connected practical messages and simple reasons.','ve ama çünkü for connected A1 clauses'
 UNION ALL SELECT 400,3,'communication','simple-messages','a1-tr-a1-community-capstone','Şehirde bir gün','Integrate dates, messages, shopping, transport, invitations and repair in a realistic community-day task.','A1 batch 3 cumulative transfer and level-close evidence'
) u
JOIN courses c ON c.slug='fa-tr-tr'
JOIN cefr_levels lvl ON lvl.code='A1'
JOIN skills s ON s.slug=u.skill_slug
JOIN topics t ON t.slug=u.topic_slug AND t.skill_id=s.id;

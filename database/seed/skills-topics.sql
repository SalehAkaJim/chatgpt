INSERT INTO skills (slug, name, sort_order) VALUES
('foundations', 'Foundations', 10),
('social', 'Social Interaction', 20),
('daily-life', 'Daily Life', 30),
('family-home', 'Family & Home', 40),
('food-drink', 'Food & Drink', 50),
('shopping-money', 'Shopping & Money', 60),
('travel-transport', 'Travel & Transport', 70),
('work-study', 'Work & Study', 80),
('health-body', 'Health & Body', 90),
('time-plans', 'Time & Plans', 100),
('describing', 'Describing Things', 110),
('communication', 'Communication', 120)
ON CONFLICT (slug) DO NOTHING;

INSERT INTO topics (skill_id, slug, name, sort_order)
SELECT s.id, v.slug, v.name, v.sort_order
FROM (VALUES
  ('foundations','greetings','Greetings',10),
  ('foundations','introductions','Introductions',20),
  ('foundations','numbers','Numbers',30),
  ('foundations','countries-nationalities','Countries & Nationalities',40),
  ('social','polite-language','Polite Language',10),
  ('social','likes-dislikes','Likes & Dislikes',20),
  ('social','hobbies','Hobbies',30),
  ('daily-life','daily-routine','Daily Routine',10),
  ('daily-life','common-actions','Common Actions',20),
  ('family-home','family','Family',10),
  ('family-home','home','Home',20),
  ('family-home','possessions','Possessions',30),
  ('food-drink','food-basics','Food Basics',10),
  ('food-drink','restaurants','Restaurants',20),
  ('shopping-money','shopping','Shopping',10),
  ('shopping-money','prices','Prices',20),
  ('travel-transport','directions','Directions',10),
  ('travel-transport','transport','Transport',20),
  ('travel-transport','places-town','Places in Town',30),
  ('work-study','jobs','Jobs',10),
  ('work-study','school-study','School & Study',20),
  ('health-body','body','Body',10),
  ('health-body','basic-health','Basic Health',20),
  ('time-plans','time','Time',10),
  ('time-plans','dates-calendar','Dates & Calendar',20),
  ('time-plans','future-plans','Future Plans',30),
  ('describing','people','Describing People',10),
  ('describing','objects','Describing Objects',20),
  ('describing','weather','Weather',30),
  ('communication','questions','Asking Questions',10),
  ('communication','requests','Requests',20),
  ('communication','simple-messages','Simple Messages',30)
) AS v(skill_slug, slug, name, sort_order)
JOIN skills s ON s.slug = v.skill_slug
ON CONFLICT (slug) DO NOTHING;

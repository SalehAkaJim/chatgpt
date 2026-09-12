INSERT IGNORE INTO skills (slug, name, sort_order) VALUES
('literacy', 'Script & Literacy', 5),
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
('communication', 'Communication', 120);

INSERT IGNORE INTO topics (skill_id, slug, name, sort_order)
SELECT id, 'script-basics', 'Script Basics', 10 FROM skills WHERE slug = 'literacy'
UNION ALL SELECT id, 'letter-connections', 'Letter Connections', 20 FROM skills WHERE slug = 'literacy'
UNION ALL SELECT id, 'sound-letter-mapping', 'Sounds & Letters', 30 FROM skills WHERE slug = 'literacy'
UNION ALL SELECT id, 'diacritics', 'Diacritics & Reading Marks', 40 FROM skills WHERE slug = 'literacy'
UNION ALL SELECT id, 'early-reading', 'Early Reading', 50 FROM skills WHERE slug = 'literacy'
UNION ALL SELECT id, 'greetings', 'Greetings', 10 FROM skills WHERE slug = 'foundations'
UNION ALL SELECT id, 'introductions', 'Introductions', 20 FROM skills WHERE slug = 'foundations'
UNION ALL SELECT id, 'numbers', 'Numbers', 30 FROM skills WHERE slug = 'foundations'
UNION ALL SELECT id, 'countries-nationalities', 'Countries & Nationalities', 40 FROM skills WHERE slug = 'foundations'
UNION ALL SELECT id, 'polite-language', 'Polite Language', 10 FROM skills WHERE slug = 'social'
UNION ALL SELECT id, 'likes-dislikes', 'Likes & Dislikes', 20 FROM skills WHERE slug = 'social'
UNION ALL SELECT id, 'hobbies', 'Hobbies', 30 FROM skills WHERE slug = 'social'
UNION ALL SELECT id, 'daily-routine', 'Daily Routine', 10 FROM skills WHERE slug = 'daily-life'
UNION ALL SELECT id, 'common-actions', 'Common Actions', 20 FROM skills WHERE slug = 'daily-life'
UNION ALL SELECT id, 'family', 'Family', 10 FROM skills WHERE slug = 'family-home'
UNION ALL SELECT id, 'home', 'Home', 20 FROM skills WHERE slug = 'family-home'
UNION ALL SELECT id, 'possessions', 'Possessions', 30 FROM skills WHERE slug = 'family-home'
UNION ALL SELECT id, 'food-basics', 'Food Basics', 10 FROM skills WHERE slug = 'food-drink'
UNION ALL SELECT id, 'restaurants', 'Restaurants', 20 FROM skills WHERE slug = 'food-drink'
UNION ALL SELECT id, 'shopping', 'Shopping', 10 FROM skills WHERE slug = 'shopping-money'
UNION ALL SELECT id, 'prices', 'Prices', 20 FROM skills WHERE slug = 'shopping-money'
UNION ALL SELECT id, 'directions', 'Directions', 10 FROM skills WHERE slug = 'travel-transport'
UNION ALL SELECT id, 'transport', 'Transport', 20 FROM skills WHERE slug = 'travel-transport'
UNION ALL SELECT id, 'places-town', 'Places in Town', 30 FROM skills WHERE slug = 'travel-transport'
UNION ALL SELECT id, 'jobs', 'Jobs', 10 FROM skills WHERE slug = 'work-study'
UNION ALL SELECT id, 'school-study', 'School & Study', 20 FROM skills WHERE slug = 'work-study'
UNION ALL SELECT id, 'body', 'Body', 10 FROM skills WHERE slug = 'health-body'
UNION ALL SELECT id, 'basic-health', 'Basic Health', 20 FROM skills WHERE slug = 'health-body'
UNION ALL SELECT id, 'time', 'Time', 10 FROM skills WHERE slug = 'time-plans'
UNION ALL SELECT id, 'dates-calendar', 'Dates & Calendar', 20 FROM skills WHERE slug = 'time-plans'
UNION ALL SELECT id, 'future-plans', 'Future Plans', 30 FROM skills WHERE slug = 'time-plans'
UNION ALL SELECT id, 'people', 'Describing People', 10 FROM skills WHERE slug = 'describing'
UNION ALL SELECT id, 'objects', 'Describing Objects', 20 FROM skills WHERE slug = 'describing'
UNION ALL SELECT id, 'weather', 'Weather', 30 FROM skills WHERE slug = 'describing'
UNION ALL SELECT id, 'questions', 'Asking Questions', 10 FROM skills WHERE slug = 'communication'
UNION ALL SELECT id, 'requests', 'Requests', 20 FROM skills WHERE slug = 'communication'
UNION ALL SELECT id, 'simple-messages', 'Simple Messages', 30 FROM skills WHERE slug = 'communication';

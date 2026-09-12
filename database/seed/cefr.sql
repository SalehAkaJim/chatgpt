INSERT INTO cefr_levels (code, sort_order, description) VALUES
('A1', 1, 'Beginner'),
('A2', 2, 'Elementary'),
('B1', 3, 'Intermediate'),
('B2', 4, 'Upper-intermediate'),
('C1', 5, 'Advanced'),
('C2', 6, 'Proficient')
ON CONFLICT (code) DO NOTHING;

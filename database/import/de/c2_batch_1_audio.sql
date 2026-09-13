-- Generated audio link import for de-DE C2
-- Source manifest: audio/manifests/de/C2-batch-1.json
-- Generated rows: 330
-- Storage mode: relative_path
-- storage_url is intentionally portable; prepend your server/CDN base URL at runtime.
-- Run AFTER the matching level content import.
SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci;
SET time_zone = '+00:00';
SET @audio_language_id = (SELECT id FROM languages WHERE code = 'de' LIMIT 1);
SET @audio_variant_id = (SELECT id FROM language_variants WHERE code = 'de-DE' LIMIT 1);
START TRANSACTION;

-- d_rhetorical_strategy_diagnostics_01:4 -> audio/generated/de-DE/dialogues/050a6581c4c5cf81f6e510c9268c02afa2345eeee42374ff375112226129c7d5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9fddf964-a381-5192-b0f1-8448fdb08fad', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_rhetorical_strategy_diagnostics_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2613ae099e4a2565b8e87c3a04fd013e81e9287c889e4351025cd727d2a7a702'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d3e3195e-281c-5fdb-9a6a-ea7740e2ba75', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9fddf964-a381-5192-b0f1-8448fdb08fad', 1), '2613ae099e4a2565b8e87c3a04fd013e81e9287c889e4351025cd727d2a7a702',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/050a6581c4c5cf81f6e510c9268c02afa2345eeee42374ff375112226129c7d5.mp3', 4780, '2026-09-13 11:17:09.805984', '16f207c57785e3f2bfe819f2ab2f2500f5854fb2d517cdc368c3943eafc2f90f', 'validated', '{"audio_key":"050a6581c4c5cf81f6e510c9268c02afa2345eeee42374ff375112226129c7d5","entity_key":"d_rhetorical_strategy_diagnostics_01:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"16f207c57785e3f2bfe819f2ab2f2500f5854fb2d517cdc368c3943eafc2f90f","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/050a6581c4c5cf81f6e510c9268c02afa2345eeee42374ff375112226129c7d5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_irony_indirect_critique_01:4 -> audio/generated/de-DE/dialogues/05520ec712b719eab9589c8f66b4bdf7d051a6377b170209eb782dd3818b1874.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('90c9d586-2a4d-5cd7-8516-d2c3db901a32', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_irony_indirect_critique_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '558070eee27bcb36a356a6e39e8de293a4ffb147e5afd9ee3166972359585042'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9a5fd6dd-a6eb-575c-a01e-1c6195fb9c34', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('90c9d586-2a4d-5cd7-8516-d2c3db901a32', 1), '558070eee27bcb36a356a6e39e8de293a4ffb147e5afd9ee3166972359585042',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/05520ec712b719eab9589c8f66b4bdf7d051a6377b170209eb782dd3818b1874.mp3', 3108, '2026-09-13 11:17:09.576560', 'ca3584e793420d74769301fc158ca79c4ef13f49759c749f70f43bbd49a97af6', 'validated', '{"audio_key":"05520ec712b719eab9589c8f66b4bdf7d051a6377b170209eb782dd3818b1874","entity_key":"d_irony_indirect_critique_01:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"ca3584e793420d74769301fc158ca79c4ef13f49759c749f70f43bbd49a97af6","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/05520ec712b719eab9589c8f66b4bdf7d051a6377b170209eb782dd3818b1874.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_lexical_precision_collocation_01:1 -> audio/generated/de-DE/dialogues/05d8b484100e3a83a7fbe4b612f069be15940fd15f14052baa09c9e245ab5ef9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('970f4f8e-88ae-56a8-bb3b-66f11385672f', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_lexical_precision_collocation_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e52db0541fa03716d7a26a893c9a79dd233ef32cd434e5cdedbe49244f029c52'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('808b3c79-5a6a-547e-aa45-fd4c73183df6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('970f4f8e-88ae-56a8-bb3b-66f11385672f', 1), 'e52db0541fa03716d7a26a893c9a79dd233ef32cd434e5cdedbe49244f029c52',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/05d8b484100e3a83a7fbe4b612f069be15940fd15f14052baa09c9e245ab5ef9.mp3', 2455, '2026-09-13 11:17:10.794179', '41357b885c5098f43f36e60b481fa57640b4a5dc27f4d959ed0bacb2ac827a99', 'validated', '{"audio_key":"05d8b484100e3a83a7fbe4b612f069be15940fd15f14052baa09c9e245ab5ef9","entity_key":"d_lexical_precision_collocation_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"41357b885c5098f43f36e60b481fa57640b4a5dc27f4d959ed0bacb2ac827a99","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/05d8b484100e3a83a7fbe4b612f069be15940fd15f14052baa09c9e245ab5ef9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_social_positioning_02:1 -> audio/generated/de-DE/dialogues/05efe0c5427b9831c4d89ddc5a59d0f7521a70b506f71f243a9044d1f0f700da.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3640c4b5-39a5-539f-aff3-32cf3a40078e', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_social_positioning_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b53abed0ae901db58ff605a816e47e9a442b3e0e6d5a14e86713b6249c196569'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('448d66ad-6442-54bd-934d-70057e5da657', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3640c4b5-39a5-539f-aff3-32cf3a40078e', 1), 'b53abed0ae901db58ff605a816e47e9a442b3e0e6d5a14e86713b6249c196569',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/05efe0c5427b9831c4d89ddc5a59d0f7521a70b506f71f243a9044d1f0f700da.mp3', 4362, '2026-09-13 11:17:11.271958', 'fa78e1874debe03e63f10f43398ff2facd3ef5cd57ac8603774c0ec9e8135628', 'validated', '{"audio_key":"05efe0c5427b9831c4d89ddc5a59d0f7521a70b506f71f243a9044d1f0f700da","entity_key":"d_register_social_positioning_02:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"fa78e1874debe03e63f10f43398ff2facd3ef5cd57ac8603774c0ec9e8135628","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/05efe0c5427b9831c4d89ddc5a59d0f7521a70b506f71f243a9044d1f0f700da.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_systems_causality_feedback_02:1 -> audio/generated/de-DE/dialogues/05f40c1ec13d2dc5d97f6a4aaf683b28332685afc039a5b3f5c3692df122fe92.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a24db5f6-2210-589d-9f19-d9a79a0c4aa7', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_systems_causality_feedback_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '646dd32fb4afecb1f562ff7148b71d2b50d00a7890eeb21404b98d864611a172'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a611fc13-7a83-5bc3-b4bb-6ca9473be42a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a24db5f6-2210-589d-9f19-d9a79a0c4aa7', 1), '646dd32fb4afecb1f562ff7148b71d2b50d00a7890eeb21404b98d864611a172',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/05f40c1ec13d2dc5d97f6a4aaf683b28332685afc039a5b3f5c3692df122fe92.mp3', 5041, '2026-09-13 11:17:12.261886', '3dd12d5d0fb5945cf107ed17b2cbea909bd1aa9cc2cecd248fe9039ccf913bfc', 'validated', '{"audio_key":"05f40c1ec13d2dc5d97f6a4aaf683b28332685afc039a5b3f5c3692df122fe92","entity_key":"d_systems_causality_feedback_02:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"3dd12d5d0fb5945cf107ed17b2cbea909bd1aa9cc2cecd248fe9039ccf913bfc","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/05f40c1ec13d2dc5d97f6a4aaf683b28332685afc039a5b3f5c3692df122fe92.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_rhetorical_strategy_diagnostics_03:2 -> audio/generated/de-DE/dialogues/07c4f8f02ffda55e1cf02e5f3b1cbd40ce803a209a23af187232680314a5883f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2523af4f-07b6-5cba-8186-99bd2ed98d7f', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_rhetorical_strategy_diagnostics_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5a9435de08d85bcdec8df8c3993b7dc0b9ca7c3cea1371d0c8a4e805bbed0ae6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e0133632-926f-56b8-88fe-e2eb90e45366', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2523af4f-07b6-5cba-8186-99bd2ed98d7f', 1), '5a9435de08d85bcdec8df8c3993b7dc0b9ca7c3cea1371d0c8a4e805bbed0ae6',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/07c4f8f02ffda55e1cf02e5f3b1cbd40ce803a209a23af187232680314a5883f.mp3', 6034, '2026-09-13 11:17:12.975451', '5a1f97281beef0e739e5f44c2dd1cad74e7d9c330ca3318f321d794d75c103bf', 'validated', '{"audio_key":"07c4f8f02ffda55e1cf02e5f3b1cbd40ce803a209a23af187232680314a5883f","entity_key":"d_rhetorical_strategy_diagnostics_03:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"5a1f97281beef0e739e5f44c2dd1cad74e7d9c330ca3318f321d794d75c103bf","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/07c4f8f02ffda55e1cf02e5f3b1cbd40ce803a209a23af187232680314a5883f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_rhetorical_strategy_diagnostics_02:1 -> audio/generated/de-DE/dialogues/0838de708f95a555599ea8d0141cd2ade57f1ca129f70b1a67d85eece455f1bd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('081fd8c6-6c6f-56e3-8a51-c2716ec914b5', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_rhetorical_strategy_diagnostics_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bc4f5d47910a03fe49642389f8301bc4b4ca2759b6b26bc8b7eb26fe3d81d721'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('58755f82-ead2-50fc-be29-f35b7c427065', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('081fd8c6-6c6f-56e3-8a51-c2716ec914b5', 1), 'bc4f5d47910a03fe49642389f8301bc4b4ca2759b6b26bc8b7eb26fe3d81d721',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/0838de708f95a555599ea8d0141cd2ade57f1ca129f70b1a67d85eece455f1bd.mp3', 3709, '2026-09-13 11:17:13.559224', '736a1ce655c26b19ad8a1339bda72829ef680550b8d78e092950594ef22f6fba', 'validated', '{"audio_key":"0838de708f95a555599ea8d0141cd2ade57f1ca129f70b1a67d85eece455f1bd","entity_key":"d_rhetorical_strategy_diagnostics_02:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"736a1ce655c26b19ad8a1339bda72829ef680550b8d78e092950594ef22f6fba","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/0838de708f95a555599ea8d0141cd2ade57f1ca129f70b1a67d85eece455f1bd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_irony_indirect_critique_01:2 -> audio/generated/de-DE/dialogues/0a062e7dd4b43451f2384c4420ece4d9317d5f77f274e527e8c21b4ca7067bdd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('db73206e-e7ff-54f1-b1d1-ef3cdd0f1687', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_irony_indirect_critique_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2271110ca5477ae564c68f7f2a4c3d845bc1aaab5661ccf1ad21ead5763b92a2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5c065e5a-3209-5675-9a88-5e7dcc1830c0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('db73206e-e7ff-54f1-b1d1-ef3cdd0f1687', 1), '2271110ca5477ae564c68f7f2a4c3d845bc1aaab5661ccf1ad21ead5763b92a2',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/0a062e7dd4b43451f2384c4420ece4d9317d5f77f274e527e8c21b4ca7067bdd.mp3', 3160, '2026-09-13 11:17:14.224839', '6eaa60099544206de7c6fa9a7ae74fb472302028fa9c15ca3d84e882539514db', 'validated', '{"audio_key":"0a062e7dd4b43451f2384c4420ece4d9317d5f77f274e527e8c21b4ca7067bdd","entity_key":"d_irony_indirect_critique_01:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"6eaa60099544206de7c6fa9a7ae74fb472302028fa9c15ca3d84e882539514db","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/0a062e7dd4b43451f2384c4420ece4d9317d5f77f274e527e8c21b4ca7067bdd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_systems_causality_feedback_02:4 -> audio/generated/de-DE/dialogues/0b35c7e0b966e867595f88393e2a152db2106b0f71b8e31f4f266d420f468da5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('000fda2e-205a-5823-b74b-6d4391ceee68', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_systems_causality_feedback_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '928f849b47fa04cf576a83a8210469df0e660ac64d4b6fba6d203f3185b43f08'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('15e97468-8762-52ef-bc4d-bc350db16984', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('000fda2e-205a-5823-b74b-6d4391ceee68', 1), '928f849b47fa04cf576a83a8210469df0e660ac64d4b6fba6d203f3185b43f08',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/0b35c7e0b966e867595f88393e2a152db2106b0f71b8e31f4f266d420f468da5.mp3', 3186, '2026-09-13 11:17:14.842301', '7888b19f82cdf52a5a2288ae5b7ea3dff56307263efbced3615f7ed74a05738a', 'validated', '{"audio_key":"0b35c7e0b966e867595f88393e2a152db2106b0f71b8e31f4f266d420f468da5","entity_key":"d_systems_causality_feedback_02:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"7888b19f82cdf52a5a2288ae5b7ea3dff56307263efbced3615f7ed74a05738a","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/0b35c7e0b966e867595f88393e2a152db2106b0f71b8e31f4f266d420f468da5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_social_positioning_03:4 -> audio/generated/de-DE/dialogues/0c462312110cc12917f9e44e3fa03ef2f614931bc1cb2df6f6849830ea083235.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f623829f-04b4-5665-87e4-d1a0ac8b954e', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_social_positioning_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'acdac1f3970435346cdd3d3b941d3d84dea6813648a95fc4689f3de44d2c8200'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('36e84e64-dac2-51ed-b1e7-d69dd1bb9c08', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f623829f-04b4-5665-87e4-d1a0ac8b954e', 1), 'acdac1f3970435346cdd3d3b941d3d84dea6813648a95fc4689f3de44d2c8200',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/0c462312110cc12917f9e44e3fa03ef2f614931bc1cb2df6f6849830ea083235.mp3', 2690, '2026-09-13 11:17:15.526190', 'c0b8eab9fa7a63fe3dc0dae3b68dac8a7d22522c76fde5a6bdcf7bb877e1f396', 'validated', '{"audio_key":"0c462312110cc12917f9e44e3fa03ef2f614931bc1cb2df6f6849830ea083235","entity_key":"d_register_social_positioning_03:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"c0b8eab9fa7a63fe3dc0dae3b68dac8a7d22522c76fde5a6bdcf7bb877e1f396","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/0c462312110cc12917f9e44e3fa03ef2f614931bc1cb2df6f6849830ea083235.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_irony_indirect_critique_03:1 -> audio/generated/de-DE/dialogues/0e8514bc81af4509192384b3ebde991694d419fec47aace66a020eddfd1bbe8a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5a87d41b-e028-5102-8107-34a6318ec0ff', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_irony_indirect_critique_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c2b6a1ce4210ec0641988f337f9802c26ea9d2c6200160502acf1db748662a48'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('58d3c25d-67ec-5784-8cc0-1d1923d4a4eb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5a87d41b-e028-5102-8107-34a6318ec0ff', 1), 'c2b6a1ce4210ec0641988f337f9802c26ea9d2c6200160502acf1db748662a48',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/0e8514bc81af4509192384b3ebde991694d419fec47aace66a020eddfd1bbe8a.mp3', 4414, '2026-09-13 11:17:16.218323', '3ddb86622e6e118a75694c39d9568a397ded521fa1f1d78271e53e215dd47650', 'validated', '{"audio_key":"0e8514bc81af4509192384b3ebde991694d419fec47aace66a020eddfd1bbe8a","entity_key":"d_irony_indirect_critique_03:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"3ddb86622e6e118a75694c39d9568a397ded521fa1f1d78271e53e215dd47650","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/0e8514bc81af4509192384b3ebde991694d419fec47aace66a020eddfd1bbe8a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_irony_indirect_critique_03:4 -> audio/generated/de-DE/dialogues/13212cdcc330f0ef2d1eae501840194edbc4742c1f78d10fca2703de8c259752.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1bd33d50-cf04-578c-996c-b85a73b555d3', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_irony_indirect_critique_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '88ceb9aecab1aaeff7a7e8db2d93ad5c0ce76b3980baa6e70c8bd85602348f0c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f95089c4-9924-53ba-b3d2-2c174fce0cba', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1bd33d50-cf04-578c-996c-b85a73b555d3', 1), '88ceb9aecab1aaeff7a7e8db2d93ad5c0ce76b3980baa6e70c8bd85602348f0c',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/13212cdcc330f0ef2d1eae501840194edbc4742c1f78d10fca2703de8c259752.mp3', 2037, '2026-09-13 11:17:16.671919', 'b31b6417769a7ffe1e20e00697e52812d64d1a50af07b612af3be322975090f1', 'validated', '{"audio_key":"13212cdcc330f0ef2d1eae501840194edbc4742c1f78d10fca2703de8c259752","entity_key":"d_irony_indirect_critique_03:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"b31b6417769a7ffe1e20e00697e52812d64d1a50af07b612af3be322975090f1","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/13212cdcc330f0ef2d1eae501840194edbc4742c1f78d10fca2703de8c259752.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_argument_premises_fallacies_03:3 -> audio/generated/de-DE/dialogues/14dfaea4377c3fa94c39677e3fb43ce82e5e0c9bcbc761173cbf57e35a9c9ec2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('65c4ee53-6c8e-52f5-b037-105312585078', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_argument_premises_fallacies_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6a35dd8bc8fb170bba603b3d66cce73deb48adff39c3c29bd38162c9cbbbc1b4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('20bfd6bb-f002-5696-987c-c335dcf14886', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('65c4ee53-6c8e-52f5-b037-105312585078', 1), '6a35dd8bc8fb170bba603b3d66cce73deb48adff39c3c29bd38162c9cbbbc1b4',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/14dfaea4377c3fa94c39677e3fb43ce82e5e0c9bcbc761173cbf57e35a9c9ec2.mp3', 3526, '2026-09-13 11:17:17.578437', '8e0b1a2cb8ce7428b777a8e549ee8a2075f17d996938fa40a127dc106a7bcd0a', 'validated', '{"audio_key":"14dfaea4377c3fa94c39677e3fb43ce82e5e0c9bcbc761173cbf57e35a9c9ec2","entity_key":"d_argument_premises_fallacies_03:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8e0b1a2cb8ce7428b777a8e549ee8a2075f17d996938fa40a127dc106a7bcd0a","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/14dfaea4377c3fa94c39677e3fb43ce82e5e0c9bcbc761173cbf57e35a9c9ec2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_rhetorical_strategy_diagnostics_01:2 -> audio/generated/de-DE/dialogues/17c642cbf34503c512b5b9b40a44bcffe8bbf69e50ee15af0be8a05420b5af9e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a6a29b25-d70b-5bea-9233-b397454a9707', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_rhetorical_strategy_diagnostics_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b9e9e2fb37dcf7b8da0a609829f9054c344e45fae4e507d90d30de53a648c941'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ca541551-4224-519f-9e9e-e0bae919ef88', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a6a29b25-d70b-5bea-9233-b397454a9707', 1), 'b9e9e2fb37dcf7b8da0a609829f9054c344e45fae4e507d90d30de53a648c941',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/17c642cbf34503c512b5b9b40a44bcffe8bbf69e50ee15af0be8a05420b5af9e.mp3', 5015, '2026-09-13 11:17:18.290272', 'd43d2a18235c41944011a680fbc2445090c40bf044805fe8f340ed69a565ee82', 'validated', '{"audio_key":"17c642cbf34503c512b5b9b40a44bcffe8bbf69e50ee15af0be8a05420b5af9e","entity_key":"d_rhetorical_strategy_diagnostics_01:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"d43d2a18235c41944011a680fbc2445090c40bf044805fe8f340ed69a565ee82","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/17c642cbf34503c512b5b9b40a44bcffe8bbf69e50ee15af0be8a05420b5af9e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_irony_indirect_critique_03:2 -> audio/generated/de-DE/dialogues/19694f65f9bd8239029be9fdf50e0ae1204e2ccd55aa6bc5da19eeb8eac35dba.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b03516aa-83c7-5b65-accf-c7ba4ed85226', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_irony_indirect_critique_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '461654e6bad0c8c34586b838ad939253c1997fb81cf16843b9e256846b6db461'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('208926e3-3f7e-5e16-87a0-595b5c4533bb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b03516aa-83c7-5b65-accf-c7ba4ed85226', 1), '461654e6bad0c8c34586b838ad939253c1997fb81cf16843b9e256846b6db461',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/19694f65f9bd8239029be9fdf50e0ae1204e2ccd55aa6bc5da19eeb8eac35dba.mp3', 5328, '2026-09-13 11:17:19.090020', 'fd006f40a220e290016def9be2d7c03c4b1dcd3a16e896faf2b40fb8dd7f3cc7', 'validated', '{"audio_key":"19694f65f9bd8239029be9fdf50e0ae1204e2ccd55aa6bc5da19eeb8eac35dba","entity_key":"d_irony_indirect_critique_03:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"fd006f40a220e290016def9be2d7c03c4b1dcd3a16e896faf2b40fb8dd7f3cc7","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/19694f65f9bd8239029be9fdf50e0ae1204e2ccd55aa6bc5da19eeb8eac35dba.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_implicit_stance_subtext_01:4 -> audio/generated/de-DE/dialogues/1c53b97b63271de7ececa02ef85a381daea0af000a42f502b077fc2418b3dd7e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9b03b03a-f2a6-5d39-ab6b-5add6bb058e4', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_implicit_stance_subtext_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3b0888bc6a4b0e203ea57badaab529d528dab3015dddb7b0f428a93beb484687'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f423283c-21ac-5839-b5fd-799106628e3e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9b03b03a-f2a6-5d39-ab6b-5add6bb058e4', 1), '3b0888bc6a4b0e203ea57badaab529d528dab3015dddb7b0f428a93beb484687',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1c53b97b63271de7ececa02ef85a381daea0af000a42f502b077fc2418b3dd7e.mp3', 4414, '2026-09-13 11:17:19.625993', 'bab761393af2add731216a600b392f5a5880da94117d7e2a1d35747d831c7db7', 'validated', '{"audio_key":"1c53b97b63271de7ececa02ef85a381daea0af000a42f502b077fc2418b3dd7e","entity_key":"d_implicit_stance_subtext_01:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"bab761393af2add731216a600b392f5a5880da94117d7e2a1d35747d831c7db7","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/1c53b97b63271de7ececa02ef85a381daea0af000a42f502b077fc2418b3dd7e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_high_stakes_discursive_intervention_03:4 -> audio/generated/de-DE/dialogues/1d7b0d4ed938cc51f42b5e45a90255de50844072adba411eeef496d69d656927.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('99fbd2d2-8abc-5eee-80a2-c461b1e19df4', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_high_stakes_discursive_intervention_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '84e74b7a6aa756b35d856c016a1664695aa808230fa177c10a1cbe7043eb60de'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f9b29c01-1724-5330-81e1-34093b3ff959', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('99fbd2d2-8abc-5eee-80a2-c461b1e19df4', 1), '84e74b7a6aa756b35d856c016a1664695aa808230fa177c10a1cbe7043eb60de',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1d7b0d4ed938cc51f42b5e45a90255de50844072adba411eeef496d69d656927.mp3', 4022, '2026-09-13 11:17:20.448134', '6005ff79c2ece31a5479c5a8b891d72eb8a135ada646178dea42c44e2950bd2d', 'validated', '{"audio_key":"1d7b0d4ed938cc51f42b5e45a90255de50844072adba411eeef496d69d656927","entity_key":"d_high_stakes_discursive_intervention_03:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"6005ff79c2ece31a5479c5a8b891d72eb8a135ada646178dea42c44e2950bd2d","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/1d7b0d4ed938cc51f42b5e45a90255de50844072adba411eeef496d69d656927.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_high_stakes_discursive_intervention_01:3 -> audio/generated/de-DE/dialogues/1d898277cbc7196fd26ce7c835bbec15c56d63d997d9adafa672af229b885105.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('81f511e5-01d1-5dd0-b2bf-ee32beefce74', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_high_stakes_discursive_intervention_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '092ee21336aa60d930809072d16ddfa043105e0b79b508709ee2f32ac0e636e2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('08910da0-5df0-58ce-990c-e193810a3799', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('81f511e5-01d1-5dd0-b2bf-ee32beefce74', 1), '092ee21336aa60d930809072d16ddfa043105e0b79b508709ee2f32ac0e636e2',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1d898277cbc7196fd26ce7c835bbec15c56d63d997d9adafa672af229b885105.mp3', 2690, '2026-09-13 11:17:20.792208', 'ff070423aa2270b626e9178f639c9f9017799cfc2c9ff1c44ce6bf037b6df9fb', 'validated', '{"audio_key":"1d898277cbc7196fd26ce7c835bbec15c56d63d997d9adafa672af229b885105","entity_key":"d_high_stakes_discursive_intervention_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"ff070423aa2270b626e9178f639c9f9017799cfc2c9ff1c44ce6bf037b6df9fb","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/1d898277cbc7196fd26ce7c835bbec15c56d63d997d9adafa672af229b885105.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_systems_causality_feedback_03:3 -> audio/generated/de-DE/dialogues/1fb6f979fe25fd88b55f61f212d91fede506e33cbdec2c912e11e7d679e2e9bc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('49dfba6b-d063-5581-9848-2f6b9d511821', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_systems_causality_feedback_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '66fbe302265ded7ecf3271d07d82227f8c08353010b28717558a457dd5592ae9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('92318a02-fb17-531d-8d1d-e7806b52ec66', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('49dfba6b-d063-5581-9848-2f6b9d511821', 1), '66fbe302265ded7ecf3271d07d82227f8c08353010b28717558a457dd5592ae9',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1fb6f979fe25fd88b55f61f212d91fede506e33cbdec2c912e11e7d679e2e9bc.mp3', 4310, '2026-09-13 11:17:21.832553', '8e3d8e323a88b341ae11d35bca489445d8f9942e11fbf00976fef2e30d285a2f', 'validated', '{"audio_key":"1fb6f979fe25fd88b55f61f212d91fede506e33cbdec2c912e11e7d679e2e9bc","entity_key":"d_systems_causality_feedback_03:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"8e3d8e323a88b341ae11d35bca489445d8f9942e11fbf00976fef2e30d285a2f","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/1fb6f979fe25fd88b55f61f212d91fede506e33cbdec2c912e11e7d679e2e9bc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_lexical_precision_collocation_02:3 -> audio/generated/de-DE/dialogues/2029646cf6d835e142880a5f7f79f6481c995d61da9d5dc23ab3f0e249686e97.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9d102ac3-6e1f-52f3-a8b8-3e265be6c60f', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_lexical_precision_collocation_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7625f0e330f723b986a81c69b5b31aae38a3064d259e8c6f7b1c4bc78bd8a04e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a42cb7aa-2731-531f-8e84-f075bca2e06e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9d102ac3-6e1f-52f3-a8b8-3e265be6c60f', 1), '7625f0e330f723b986a81c69b5b31aae38a3064d259e8c6f7b1c4bc78bd8a04e',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2029646cf6d835e142880a5f7f79f6481c995d61da9d5dc23ab3f0e249686e97.mp3', 2272, '2026-09-13 11:17:21.931678', '505d9627cec27dcce21c8068df11c721d4415d6ebd31c81f5e94b9a0aaa44225', 'validated', '{"audio_key":"2029646cf6d835e142880a5f7f79f6481c995d61da9d5dc23ab3f0e249686e97","entity_key":"d_lexical_precision_collocation_02:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"505d9627cec27dcce21c8068df11c721d4415d6ebd31c81f5e94b9a0aaa44225","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/2029646cf6d835e142880a5f7f79f6481c995d61da9d5dc23ab3f0e249686e97.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_argument_premises_fallacies_02:1 -> audio/generated/de-DE/dialogues/214bb6f9bb96a1e9beacb3e9c48fbd9b6a910f4d92a0a2e393478481daa2c677.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5a6f0355-04b0-5d35-b082-17162350780d', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_argument_premises_fallacies_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eb54b32b11e33b8933ea9162250f0ad19427e079842ef02be532f9ae4237443f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1b335787-081c-5251-a687-72411f88d3b4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5a6f0355-04b0-5d35-b082-17162350780d', 1), 'eb54b32b11e33b8933ea9162250f0ad19427e079842ef02be532f9ae4237443f',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/214bb6f9bb96a1e9beacb3e9c48fbd9b6a910f4d92a0a2e393478481daa2c677.mp3', 4440, '2026-09-13 11:17:23.251277', 'b3ad1975890e27a2f7b44e090c61c01b5f491d5fd010fd234a50d9a6aad29be6', 'validated', '{"audio_key":"214bb6f9bb96a1e9beacb3e9c48fbd9b6a910f4d92a0a2e393478481daa2c677","entity_key":"d_argument_premises_fallacies_02:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"b3ad1975890e27a2f7b44e090c61c01b5f491d5fd010fd234a50d9a6aad29be6","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/214bb6f9bb96a1e9beacb3e9c48fbd9b6a910f4d92a0a2e393478481daa2c677.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_systems_causality_feedback_03:2 -> audio/generated/de-DE/dialogues/22ac85bf14badab1008eab884a4590ed9157796bdd86e89801c49ca1933e88da.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4468143e-9b77-5130-8491-f6be29eac398', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_systems_causality_feedback_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c5d581cf5bd357fae5179e7c579d5e29e18eb506808056617fb3ef9a257b391d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6f406426-a0d1-5a63-8d21-c21548e990f9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4468143e-9b77-5130-8491-f6be29eac398', 1), 'c5d581cf5bd357fae5179e7c579d5e29e18eb506808056617fb3ef9a257b391d',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/22ac85bf14badab1008eab884a4590ed9157796bdd86e89801c49ca1933e88da.mp3', 5381, '2026-09-13 11:17:23.426420', '143d44a6bcff886d64714b1c35c8125422412bb1d608833cb708550dcc7e4620', 'validated', '{"audio_key":"22ac85bf14badab1008eab884a4590ed9157796bdd86e89801c49ca1933e88da","entity_key":"d_systems_causality_feedback_03:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"143d44a6bcff886d64714b1c35c8125422412bb1d608833cb708550dcc7e4620","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/22ac85bf14badab1008eab884a4590ed9157796bdd86e89801c49ca1933e88da.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_polyphonic_source_synthesis_03:1 -> audio/generated/de-DE/dialogues/27695ff4ffbfad08e30bcc41a9a346f2beccc5a63cb2c8fcd3732b622a252553.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c6faa505-cd87-5de1-9574-ba78ff3031fe', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_polyphonic_source_synthesis_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9a852a358b5c7c8cbfbe76279fe78014559d732fc06a361bf1009173197fb19c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7c1cbd40-a5ae-58a0-be32-7c0de6b46958', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c6faa505-cd87-5de1-9574-ba78ff3031fe', 1), '9a852a358b5c7c8cbfbe76279fe78014559d732fc06a361bf1009173197fb19c',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/27695ff4ffbfad08e30bcc41a9a346f2beccc5a63cb2c8fcd3732b622a252553.mp3', 5668, '2026-09-13 11:17:24.800602', '4573f61185b3c417014f8a7a01ff470e08060b10e4e8b8eef970a82597ce4dec', 'validated', '{"audio_key":"27695ff4ffbfad08e30bcc41a9a346f2beccc5a63cb2c8fcd3732b622a252553","entity_key":"d_polyphonic_source_synthesis_03:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4573f61185b3c417014f8a7a01ff470e08060b10e4e8b8eef970a82597ce4dec","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/27695ff4ffbfad08e30bcc41a9a346f2beccc5a63cb2c8fcd3732b622a252553.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_argument_premises_fallacies_03:4 -> audio/generated/de-DE/dialogues/29328866430dbc9569208024f8073f7811d9fd5a29271b18429c4cd38207cb58.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ad845f98-7743-5b15-9f2f-50d2ca4775b9', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_argument_premises_fallacies_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '863787af0b9b1cfcad111db56c2762faf588792fc1b1cb84d4a8d9b69de9df4f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('df919dd3-73b8-517f-87e2-cb39b4a414e8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ad845f98-7743-5b15-9f2f-50d2ca4775b9', 1), '863787af0b9b1cfcad111db56c2762faf588792fc1b1cb84d4a8d9b69de9df4f',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/29328866430dbc9569208024f8073f7811d9fd5a29271b18429c4cd38207cb58.mp3', 2168, '2026-09-13 11:17:24.820111', 'd2f520569463508b7aef12f3df1104858806f7df3a218923b57a27667857a4a1', 'validated', '{"audio_key":"29328866430dbc9569208024f8073f7811d9fd5a29271b18429c4cd38207cb58","entity_key":"d_argument_premises_fallacies_03:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"d2f520569463508b7aef12f3df1104858806f7df3a218923b57a27667857a4a1","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/29328866430dbc9569208024f8073f7811d9fd5a29271b18429c4cd38207cb58.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_rhetorical_strategy_diagnostics_02:2 -> audio/generated/de-DE/dialogues/2a948409312c8c3707137290d97344d15e074c39029a30a685fe87ecb7dd5d97.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1c7d9677-60b3-538c-a0fd-d29e204cd5c6', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_rhetorical_strategy_diagnostics_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1ca40e1da9b752a79b6be5a68648d5018e6f9bf0cfd7712d2f885de592b5bf4c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('59bea242-3c71-5482-930a-e39bdf10fa9c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1c7d9677-60b3-538c-a0fd-d29e204cd5c6', 1), '1ca40e1da9b752a79b6be5a68648d5018e6f9bf0cfd7712d2f885de592b5bf4c',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2a948409312c8c3707137290d97344d15e074c39029a30a685fe87ecb7dd5d97.mp3', 6530, '2026-09-13 11:17:26.462695', '9ba245a90321a58e927d23bf61748fa458ea3bd819167f7cb5e5de2ea59995d8', 'validated', '{"audio_key":"2a948409312c8c3707137290d97344d15e074c39029a30a685fe87ecb7dd5d97","entity_key":"d_rhetorical_strategy_diagnostics_02:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"9ba245a90321a58e927d23bf61748fa458ea3bd819167f7cb5e5de2ea59995d8","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/2a948409312c8c3707137290d97344d15e074c39029a30a685fe87ecb7dd5d97.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_rhetorical_strategy_diagnostics_03:4 -> audio/generated/de-DE/dialogues/2c1378b922aa9665a94fb11cabfd08c4658b633520e48956c7d550bcab2522cd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d1b005f3-b802-5134-b00b-0f824a18a658', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_rhetorical_strategy_diagnostics_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '14d22f154db45b08970fe325d0a795e5a0383e80dc10683e63e702e9b58425e5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5dab12a1-09bc-5c21-8208-270d307f9c29', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d1b005f3-b802-5134-b00b-0f824a18a658', 1), '14d22f154db45b08970fe325d0a795e5a0383e80dc10683e63e702e9b58425e5',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2c1378b922aa9665a94fb11cabfd08c4658b633520e48956c7d550bcab2522cd.mp3', 3944, '2026-09-13 11:17:26.205300', '35d7c0008d400ed85457ecd153e058c251313e316ec76536ed8c7892263780d3', 'validated', '{"audio_key":"2c1378b922aa9665a94fb11cabfd08c4658b633520e48956c7d550bcab2522cd","entity_key":"d_rhetorical_strategy_diagnostics_03:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"35d7c0008d400ed85457ecd153e058c251313e316ec76536ed8c7892263780d3","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/2c1378b922aa9665a94fb11cabfd08c4658b633520e48956c7d550bcab2522cd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_interpret_reframe_position_capstone_03:4 -> audio/generated/de-DE/dialogues/2cae81b60abedc4b02a12f6b05d3966eb1a02f108b94fa14731474268c2d6043.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('21db5f94-da8a-5ce6-9407-f0714886b732', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_interpret_reframe_position_capstone_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5470aefab132c1e434b2b257ba7a669cdb3ab71edadc441f00a05a14f71d091a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bd87c73c-b50e-54d2-b805-0cb5bebd2bc5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('21db5f94-da8a-5ce6-9407-f0714886b732', 1), '5470aefab132c1e434b2b257ba7a669cdb3ab71edadc441f00a05a14f71d091a',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2cae81b60abedc4b02a12f6b05d3966eb1a02f108b94fa14731474268c2d6043.mp3', 4858, '2026-09-13 11:17:27.632571', 'afc432b7b0c8715543bae51f1f1b9c089fd444a318b8466e0c1f80e6ae0adbf5', 'validated', '{"audio_key":"2cae81b60abedc4b02a12f6b05d3966eb1a02f108b94fa14731474268c2d6043","entity_key":"d_interpret_reframe_position_capstone_03:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"afc432b7b0c8715543bae51f1f1b9c089fd444a318b8466e0c1f80e6ae0adbf5","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/2cae81b60abedc4b02a12f6b05d3966eb1a02f108b94fa14731474268c2d6043.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_implicit_stance_subtext_02:3 -> audio/generated/de-DE/dialogues/2d7a8da96b809a709a45fe23933b5e6bd9169e8b48559ca2337e6bc89c97fe6f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f40a71fc-3ebc-5e48-8c3a-cd9a6c556bda', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_implicit_stance_subtext_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a1f9a070a61b684d1b0eec15a11f63cd63a2e20b605603d900fac47f186a312a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('210177e9-7eb4-5277-9229-92ddbe897474', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f40a71fc-3ebc-5e48-8c3a-cd9a6c556bda', 1), 'a1f9a070a61b684d1b0eec15a11f63cd63a2e20b605603d900fac47f186a312a',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2d7a8da96b809a709a45fe23933b5e6bd9169e8b48559ca2337e6bc89c97fe6f.mp3', 4545, '2026-09-13 11:17:27.883530', '2c9b46dc12f18d808fff056ed46ddd199b8deb7652486117fe24e688302018b7', 'validated', '{"audio_key":"2d7a8da96b809a709a45fe23933b5e6bd9169e8b48559ca2337e6bc89c97fe6f","entity_key":"d_implicit_stance_subtext_02:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"2c9b46dc12f18d808fff056ed46ddd199b8deb7652486117fe24e688302018b7","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/2d7a8da96b809a709a45fe23933b5e6bd9169e8b48559ca2337e6bc89c97fe6f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_implicit_stance_subtext_03:1 -> audio/generated/de-DE/dialogues/3019b83fb1323fe9042b4832b3e0c8a47e45687ba8611de7edb7c1290cb7ba29.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('464d8fde-391b-5b51-b0cd-382a35aeb823', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_implicit_stance_subtext_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b8554e42d87100575ec80968c67c1094bf3c84b2eacb4506adfa8f55778a298d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1fd1be08-ad64-5254-b09a-26c3a5631618', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('464d8fde-391b-5b51-b0cd-382a35aeb823', 1), 'b8554e42d87100575ec80968c67c1094bf3c84b2eacb4506adfa8f55778a298d',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3019b83fb1323fe9042b4832b3e0c8a47e45687ba8611de7edb7c1290cb7ba29.mp3', 2220, '2026-09-13 11:17:28.805593', '399937f408900502e0e31f730f7df1f6f37fc4b9fc64b9318ab32c9c48cdb856', 'validated', '{"audio_key":"3019b83fb1323fe9042b4832b3e0c8a47e45687ba8611de7edb7c1290cb7ba29","entity_key":"d_implicit_stance_subtext_03:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"399937f408900502e0e31f730f7df1f6f37fc4b9fc64b9318ab32c9c48cdb856","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/3019b83fb1323fe9042b4832b3e0c8a47e45687ba8611de7edb7c1290cb7ba29.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_implicit_stance_subtext_01:2 -> audio/generated/de-DE/dialogues/308ddd0ef74734f532d2db27efe95332e349cd3c70666a00df1c6c80503250e9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cec8ff96-084e-5fc1-a124-a8fccc763d99', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_implicit_stance_subtext_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '64e56301b0dd582badc2ece276a02fe5ecc4efe0800627f190addeab562fec77'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('add55a5a-23d9-5c9d-bd47-73e861900a40', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cec8ff96-084e-5fc1-a124-a8fccc763d99', 1), '64e56301b0dd582badc2ece276a02fe5ecc4efe0800627f190addeab562fec77',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/308ddd0ef74734f532d2db27efe95332e349cd3c70666a00df1c6c80503250e9.mp3', 4022, '2026-09-13 11:17:29.187305', 'b2e02d462393c075e5124822399720e6e5d1c946bf355d32bf369ac6e1fa1a0c', 'validated', '{"audio_key":"308ddd0ef74734f532d2db27efe95332e349cd3c70666a00df1c6c80503250e9","entity_key":"d_implicit_stance_subtext_01:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"b2e02d462393c075e5124822399720e6e5d1c946bf355d32bf369ac6e1fa1a0c","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/308ddd0ef74734f532d2db27efe95332e349cd3c70666a00df1c6c80503250e9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_high_stakes_discursive_intervention_03:3 -> audio/generated/de-DE/dialogues/3398e6feca3bb8e9267b91a3c5582c3998b3f1023a71bc7d9c127f9b97d12136.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4cd477e6-7b7b-5025-8a94-baccab45691d', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_high_stakes_discursive_intervention_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9c6923eb6c24b7c307a96731e004fd781d94071090583be5264c9c1b15bf4383'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('76b3ccc2-7e41-5f59-b70c-c93c15bb7eeb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4cd477e6-7b7b-5025-8a94-baccab45691d', 1), '9c6923eb6c24b7c307a96731e004fd781d94071090583be5264c9c1b15bf4383',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3398e6feca3bb8e9267b91a3c5582c3998b3f1023a71bc7d9c127f9b97d12136.mp3', 4310, '2026-09-13 11:17:30.786802', 'd5d2f423c3a938bf8066079a8faca9ab3d3e03c92b5aeb621875ccfc36d2b6f7', 'validated', '{"audio_key":"3398e6feca3bb8e9267b91a3c5582c3998b3f1023a71bc7d9c127f9b97d12136","entity_key":"d_high_stakes_discursive_intervention_03:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"d5d2f423c3a938bf8066079a8faca9ab3d3e03c92b5aeb621875ccfc36d2b6f7","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/3398e6feca3bb8e9267b91a3c5582c3998b3f1023a71bc7d9c127f9b97d12136.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_polyphonic_source_synthesis_01:3 -> audio/generated/de-DE/dialogues/35eb1aba7ac2dc1d49914800fd49bd6c342accbf51d991eecce6eef5d38fd8c8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b2ef601d-6854-576f-a334-7cb3a72f6924', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_polyphonic_source_synthesis_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a31f49ae981f658edf934cf30752de75ced6e373742f807076173d8ab4583e53'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('209bf822-f5d4-532d-a537-aa41794e3c8e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b2ef601d-6854-576f-a334-7cb3a72f6924', 1), 'a31f49ae981f658edf934cf30752de75ced6e373742f807076173d8ab4583e53',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/35eb1aba7ac2dc1d49914800fd49bd6c342accbf51d991eecce6eef5d38fd8c8.mp3', 4310, '2026-09-13 11:17:30.517048', '701dc7d0ed720e0812b4e7bf4d8f06efd5a2b91726f6bf30c1ce3ee782a0b01a', 'validated', '{"audio_key":"35eb1aba7ac2dc1d49914800fd49bd6c342accbf51d991eecce6eef5d38fd8c8","entity_key":"d_polyphonic_source_synthesis_01:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"701dc7d0ed720e0812b4e7bf4d8f06efd5a2b91726f6bf30c1ce3ee782a0b01a","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/35eb1aba7ac2dc1d49914800fd49bd6c342accbf51d991eecce6eef5d38fd8c8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_implicit_stance_subtext_01:3 -> audio/generated/de-DE/dialogues/3779560c1159939822dd35c02cc0a4a77e7d25548d667742ff2ed0ce73ef2a7b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('55f9f6ae-a613-5f02-af44-2fa958df36f9', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_implicit_stance_subtext_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '688aebd3b2bb297f457c1e008dfefb15722dd3efd222190bc2f4d6147cecc757'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('65cae2dc-2b29-561e-8e40-dd6f51477520', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('55f9f6ae-a613-5f02-af44-2fa958df36f9', 1), '688aebd3b2bb297f457c1e008dfefb15722dd3efd222190bc2f4d6147cecc757',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3779560c1159939822dd35c02cc0a4a77e7d25548d667742ff2ed0ce73ef2a7b.mp3', 4362, '2026-09-13 11:17:31.910059', 'd8dce65a0cc89dac43a3f567aa11a76926430dc2d486280c83f352987355f632', 'validated', '{"audio_key":"3779560c1159939822dd35c02cc0a4a77e7d25548d667742ff2ed0ce73ef2a7b","entity_key":"d_implicit_stance_subtext_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"d8dce65a0cc89dac43a3f567aa11a76926430dc2d486280c83f352987355f632","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/3779560c1159939822dd35c02cc0a4a77e7d25548d667742ff2ed0ce73ef2a7b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_interpret_reframe_position_capstone_03:2 -> audio/generated/de-DE/dialogues/37ab3396fe6c8235ecab0f7ef186dcdc78f09edaa3b9cef02852cfbd746982be.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('da6564ad-31a0-5b66-bf38-1553185bfd7a', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_interpret_reframe_position_capstone_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '79aeda3180ab5f20f39a18cd8628bdc716bd08c0e3a25062fa236790cc0a77b8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('338213b7-f06d-58f2-b9b1-274beda46307', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('da6564ad-31a0-5b66-bf38-1553185bfd7a', 1), '79aeda3180ab5f20f39a18cd8628bdc716bd08c0e3a25062fa236790cc0a77b8',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/37ab3396fe6c8235ecab0f7ef186dcdc78f09edaa3b9cef02852cfbd746982be.mp3', 7000, '2026-09-13 11:17:32.495431', '6ac02e0fefd6948b893e5412696812b5e00fed52ce016814234b0c5a8bb79412', 'validated', '{"audio_key":"37ab3396fe6c8235ecab0f7ef186dcdc78f09edaa3b9cef02852cfbd746982be","entity_key":"d_interpret_reframe_position_capstone_03:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"6ac02e0fefd6948b893e5412696812b5e00fed52ce016814234b0c5a8bb79412","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/37ab3396fe6c8235ecab0f7ef186dcdc78f09edaa3b9cef02852cfbd746982be.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_interpret_reframe_position_capstone_01:4 -> audio/generated/de-DE/dialogues/37bab46b86c83d5b91bf63e0f293462eb71bbd9dd8be92d38bfbb650e4a19f92.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7f5b9674-8253-52ad-9cbb-c9a3467913e4', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_interpret_reframe_position_capstone_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd8c6fe5df42178b65752776427504e9077b14783b98512fdd5ee3e5eb134e033'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e38d93cf-5d28-50ec-843a-87ace9a45056', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7f5b9674-8253-52ad-9cbb-c9a3467913e4', 1), 'd8c6fe5df42178b65752776427504e9077b14783b98512fdd5ee3e5eb134e033',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/37bab46b86c83d5b91bf63e0f293462eb71bbd9dd8be92d38bfbb650e4a19f92.mp3', 7053, '2026-09-13 11:17:33.688453', '6bed78a22efb3a636eae6f7d3f66f7001103021c4960e24835ec1a51ab976012', 'validated', '{"audio_key":"37bab46b86c83d5b91bf63e0f293462eb71bbd9dd8be92d38bfbb650e4a19f92","entity_key":"d_interpret_reframe_position_capstone_01:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"6bed78a22efb3a636eae6f7d3f66f7001103021c4960e24835ec1a51ab976012","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/37bab46b86c83d5b91bf63e0f293462eb71bbd9dd8be92d38bfbb650e4a19f92.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_rhetorical_strategy_diagnostics_01:1 -> audio/generated/de-DE/dialogues/38fc05b1ddb88232f35a72ff5d8a397eac638dd6553a9ff9b14ded6f3570857f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0dce1ba2-093f-51d0-9d44-a1f4bb18ebe6', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_rhetorical_strategy_diagnostics_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd733a0dc85e296995fcde32b05cd49c9fab06f6166f80d1e893ec81a4d689bb4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('55107779-fb4f-597f-83bf-049c9ddd6ae6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0dce1ba2-093f-51d0-9d44-a1f4bb18ebe6', 1), 'd733a0dc85e296995fcde32b05cd49c9fab06f6166f80d1e893ec81a4d689bb4',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/38fc05b1ddb88232f35a72ff5d8a397eac638dd6553a9ff9b14ded6f3570857f.mp3', 4022, '2026-09-13 11:17:33.820922', 'e66330c758511e6e3cd62681e68bd4ce182de71456e0553a4561df89ac2853b5', 'validated', '{"audio_key":"38fc05b1ddb88232f35a72ff5d8a397eac638dd6553a9ff9b14ded6f3570857f","entity_key":"d_rhetorical_strategy_diagnostics_01:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"e66330c758511e6e3cd62681e68bd4ce182de71456e0553a4561df89ac2853b5","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/38fc05b1ddb88232f35a72ff5d8a397eac638dd6553a9ff9b14ded6f3570857f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_high_stakes_discursive_intervention_01:2 -> audio/generated/de-DE/dialogues/39b882cc59d4b95f4f8f6254333dac253d9a4bedc96b038b313500c9258dac5a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('263d939c-8a88-5063-85ea-332978998994', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_high_stakes_discursive_intervention_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9de4c1b3fa82303f093308ed3f25ba85250695aa1eacdbeda5a42cc2410b3162'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8ad6a5fb-6535-502a-8a34-ef9c7388ca30', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('263d939c-8a88-5063-85ea-332978998994', 1), '9de4c1b3fa82303f093308ed3f25ba85250695aa1eacdbeda5a42cc2410b3162',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/39b882cc59d4b95f4f8f6254333dac253d9a4bedc96b038b313500c9258dac5a.mp3', 4545, '2026-09-13 11:17:35.182163', 'c079be3fb1445551c366b6dbc9641db8202feceb362a6e6cb341b80f74d2dec0', 'validated', '{"audio_key":"39b882cc59d4b95f4f8f6254333dac253d9a4bedc96b038b313500c9258dac5a","entity_key":"d_high_stakes_discursive_intervention_01:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"c079be3fb1445551c366b6dbc9641db8202feceb362a6e6cb341b80f74d2dec0","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/39b882cc59d4b95f4f8f6254333dac253d9a4bedc96b038b313500c9258dac5a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_lexical_precision_collocation_03:2 -> audio/generated/de-DE/dialogues/3ca808c15f30d2106be50dbc461acc2088c063f21b2d60e37729642c06dcba60.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7a865b58-0ad5-5fc1-9017-63c83900370b', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_lexical_precision_collocation_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '91c7774b3f58f146c6e885a581c449540de8b6a10577a69b0e0435d329c35948'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d0a8f97c-a290-563d-98bd-3d02710b1679', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7a865b58-0ad5-5fc1-9017-63c83900370b', 1), '91c7774b3f58f146c6e885a581c449540de8b6a10577a69b0e0435d329c35948',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3ca808c15f30d2106be50dbc461acc2088c063f21b2d60e37729642c06dcba60.mp3', 3996, '2026-09-13 11:17:35.327305', '83d15b3aa111e13f898aac1c10fc9aa8e9ab1e5af806ff5db84a67ed81ea8c96', 'validated', '{"audio_key":"3ca808c15f30d2106be50dbc461acc2088c063f21b2d60e37729642c06dcba60","entity_key":"d_lexical_precision_collocation_03:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"83d15b3aa111e13f898aac1c10fc9aa8e9ab1e5af806ff5db84a67ed81ea8c96","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/3ca808c15f30d2106be50dbc461acc2088c063f21b2d60e37729642c06dcba60.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_social_positioning_01:3 -> audio/generated/de-DE/dialogues/3d6f153804f73f3494ed24cc267819a31efbcd2e805520afe52c892d9fece9c6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('08d09b7b-4b30-543b-b026-7ab17641ee3e', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_social_positioning_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a0aab9852a15078405a5d8a60746de42beb23d199900d9e1195626b64a9be2df'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('052ee255-572b-5ea5-906c-d6f52e52504f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('08d09b7b-4b30-543b-b026-7ab17641ee3e', 1), 'a0aab9852a15078405a5d8a60746de42beb23d199900d9e1195626b64a9be2df',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3d6f153804f73f3494ed24cc267819a31efbcd2e805520afe52c892d9fece9c6.mp3', 4414, '2026-09-13 11:17:36.514322', '68812f60c5912b592af32da3599fd79f58953d27f75f991207b5c24e96db78a4', 'validated', '{"audio_key":"3d6f153804f73f3494ed24cc267819a31efbcd2e805520afe52c892d9fece9c6","entity_key":"d_register_social_positioning_01:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"68812f60c5912b592af32da3599fd79f58953d27f75f991207b5c24e96db78a4","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/3d6f153804f73f3494ed24cc267819a31efbcd2e805520afe52c892d9fece9c6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_implicit_stance_subtext_03:2 -> audio/generated/de-DE/dialogues/401b12b3396543626faa15d95c75942dc17b253258eb95bbaa04a44f0989500a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e3cb35c2-cc56-5c23-959e-ac8ee673c2fb', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_implicit_stance_subtext_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5763d2c13eb76881a56dfff69a1d8a797ed47d3da4ac2694db2591575ea0fc7a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a32e12a2-cfb4-5e8f-9b14-a2437c28e084', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e3cb35c2-cc56-5c23-959e-ac8ee673c2fb', 1), '5763d2c13eb76881a56dfff69a1d8a797ed47d3da4ac2694db2591575ea0fc7a',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/401b12b3396543626faa15d95c75942dc17b253258eb95bbaa04a44f0989500a.mp3', 4493, '2026-09-13 11:17:36.750177', '4fbebda4e7d2fe441d11e5c5f39b7e307d91f8139afb9b594bc88070f42e96a6', 'validated', '{"audio_key":"401b12b3396543626faa15d95c75942dc17b253258eb95bbaa04a44f0989500a","entity_key":"d_implicit_stance_subtext_03:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"4fbebda4e7d2fe441d11e5c5f39b7e307d91f8139afb9b594bc88070f42e96a6","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/401b12b3396543626faa15d95c75942dc17b253258eb95bbaa04a44f0989500a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_interpret_reframe_position_capstone_03:1 -> audio/generated/de-DE/dialogues/418b2afde0349c9f97cbec08bdab5da6fe1a4eb932af84deaa9f9b864fd82856.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2666a8cc-2302-56bb-bfe9-37a1dfa0126d', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_interpret_reframe_position_capstone_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ac87441540cf298ed6b5a12be0015d475c95f5f2ba0d3fab54b36478266e60b5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e06707b2-509b-5896-94ab-ce8d88e3b91d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2666a8cc-2302-56bb-bfe9-37a1dfa0126d', 1), 'ac87441540cf298ed6b5a12be0015d475c95f5f2ba0d3fab54b36478266e60b5',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/418b2afde0349c9f97cbec08bdab5da6fe1a4eb932af84deaa9f9b864fd82856.mp3', 5198, '2026-09-13 11:17:37.989342', 'a5c066daba5ae6e061982fe6098c6a3ba15dea098679be7cec53f6e6d95b91a0', 'validated', '{"audio_key":"418b2afde0349c9f97cbec08bdab5da6fe1a4eb932af84deaa9f9b864fd82856","entity_key":"d_interpret_reframe_position_capstone_03:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a5c066daba5ae6e061982fe6098c6a3ba15dea098679be7cec53f6e6d95b91a0","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/418b2afde0349c9f97cbec08bdab5da6fe1a4eb932af84deaa9f9b864fd82856.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_polyphonic_source_synthesis_03:3 -> audio/generated/de-DE/dialogues/41904503200dfb29c000d91b20c2a9d7c7cb052879d0999d080fda179a6249fd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c38b39b4-ab47-5799-99f6-cdad19bafab8', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_polyphonic_source_synthesis_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aa19996029aee68b4455819e77e886e425fb573f325b36d9113f0ed015d2c6e3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('59b8eaf5-0da1-51ec-b92e-2417c38eb89f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c38b39b4-ab47-5799-99f6-cdad19bafab8', 1), 'aa19996029aee68b4455819e77e886e425fb573f325b36d9113f0ed015d2c6e3',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/41904503200dfb29c000d91b20c2a9d7c7cb052879d0999d080fda179a6249fd.mp3', 2951, '2026-09-13 11:17:37.920690', 'd50e30bc25f2188965e55c7f4c133412da4cad886a44243107f49238cb7d0446', 'validated', '{"audio_key":"41904503200dfb29c000d91b20c2a9d7c7cb052879d0999d080fda179a6249fd","entity_key":"d_polyphonic_source_synthesis_03:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d50e30bc25f2188965e55c7f4c133412da4cad886a44243107f49238cb7d0446","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/41904503200dfb29c000d91b20c2a9d7c7cb052879d0999d080fda179a6249fd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_lexical_precision_collocation_01:4 -> audio/generated/de-DE/dialogues/440d4b94459d95d0aef83769846f5b3e8f6a849500272a3ae7ca59ef2b12ecdc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('218f5deb-c979-5d2d-8da8-c68e9b147626', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_lexical_precision_collocation_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '92d4040c6deba7e3305b68218656da84f134f771df8ae97b78e9f8f206e0bc7c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c4eac56f-366b-56da-ae59-672f8b2c7725', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('218f5deb-c979-5d2d-8da8-c68e9b147626', 1), '92d4040c6deba7e3305b68218656da84f134f771df8ae97b78e9f8f206e0bc7c',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/440d4b94459d95d0aef83769846f5b3e8f6a849500272a3ae7ca59ef2b12ecdc.mp3', 3840, '2026-09-13 11:17:39.269908', '8cf8f8278a99dcc1e1ceae85538c7e8d63741d441e9b50dce01970f649c7fc16', 'validated', '{"audio_key":"440d4b94459d95d0aef83769846f5b3e8f6a849500272a3ae7ca59ef2b12ecdc","entity_key":"d_lexical_precision_collocation_01:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"8cf8f8278a99dcc1e1ceae85538c7e8d63741d441e9b50dce01970f649c7fc16","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/440d4b94459d95d0aef83769846f5b3e8f6a849500272a3ae7ca59ef2b12ecdc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_argument_premises_fallacies_01:2 -> audio/generated/de-DE/dialogues/4b06bdddfa710501e4cc550e07296a6a00c0287ad617c1865d95453b1b813a26.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1255bc69-5049-57e7-a223-15fffde9d327', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_argument_premises_fallacies_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8c0b83b89b3891fd755032e93fe43ca8e886e78c893d2dc32987762a8a63c0e4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2f347ae6-6a19-586b-b037-4906846739d1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1255bc69-5049-57e7-a223-15fffde9d327', 1), '8c0b83b89b3891fd755032e93fe43ca8e886e78c893d2dc32987762a8a63c0e4',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4b06bdddfa710501e4cc550e07296a6a00c0287ad617c1865d95453b1b813a26.mp3', 4414, '2026-09-13 11:17:39.356060', '7f82b6f8d718e3b5a15929a4f355549b91f666f5a09ebfe99fce1f631c19abd8', 'validated', '{"audio_key":"4b06bdddfa710501e4cc550e07296a6a00c0287ad617c1865d95453b1b813a26","entity_key":"d_argument_premises_fallacies_01:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"7f82b6f8d718e3b5a15929a4f355549b91f666f5a09ebfe99fce1f631c19abd8","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/4b06bdddfa710501e4cc550e07296a6a00c0287ad617c1865d95453b1b813a26.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_social_positioning_03:3 -> audio/generated/de-DE/dialogues/4cc81afdd14763241149d1a61c50d8139d654ba2b9570252f288e6c8acfd506c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('684055b8-bb35-5821-8e52-3e82cd6ea58e', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_social_positioning_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c3e86e232cd5595a1f7c7748048266c9ce5233738fcc8c39cd3fa0bee28ec631'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2a8a2517-e596-59f0-b4af-85c4d32b894e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('684055b8-bb35-5821-8e52-3e82cd6ea58e', 1), 'c3e86e232cd5595a1f7c7748048266c9ce5233738fcc8c39cd3fa0bee28ec631',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4cc81afdd14763241149d1a61c50d8139d654ba2b9570252f288e6c8acfd506c.mp3', 4075, '2026-09-13 11:17:40.614938', '86b6f7cec529bdde840485909916d2f0d9b5737e3266899f2040b81f8eb332cc', 'validated', '{"audio_key":"4cc81afdd14763241149d1a61c50d8139d654ba2b9570252f288e6c8acfd506c","entity_key":"d_register_social_positioning_03:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"86b6f7cec529bdde840485909916d2f0d9b5737e3266899f2040b81f8eb332cc","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/4cc81afdd14763241149d1a61c50d8139d654ba2b9570252f288e6c8acfd506c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_lexical_precision_collocation_01:3 -> audio/generated/de-DE/dialogues/4df7f0e6864b9a4820b80e96a5394b60a0340add019541f2b2da8dc58d5617b8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a9a5a754-51d1-5b84-8e4e-968130caaede', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_lexical_precision_collocation_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f11b05cebdfc6ae9ab5c03f5be7a4e75d737cf584acba0b98130bab039dacd94'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('de7bb736-2f8c-5405-b8de-bda4d1194b8a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a9a5a754-51d1-5b84-8e4e-968130caaede', 1), 'f11b05cebdfc6ae9ab5c03f5be7a4e75d737cf584acba0b98130bab039dacd94',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4df7f0e6864b9a4820b80e96a5394b60a0340add019541f2b2da8dc58d5617b8.mp3', 3474, '2026-09-13 11:17:40.604782', 'c43a34e3c3d0f486a537afb706a5784ce75aeade04045d6fd95b9d96c173b07c', 'validated', '{"audio_key":"4df7f0e6864b9a4820b80e96a5394b60a0340add019541f2b2da8dc58d5617b8","entity_key":"d_lexical_precision_collocation_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"c43a34e3c3d0f486a537afb706a5784ce75aeade04045d6fd95b9d96c173b07c","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/4df7f0e6864b9a4820b80e96a5394b60a0340add019541f2b2da8dc58d5617b8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_polyphonic_source_synthesis_01:1 -> audio/generated/de-DE/dialogues/4f1af6e1ebd690f7b1486471d610fabd0a3525eb2749d18646bf65701dcd850d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1297994f-1d06-5bf6-8c98-b4891c0b9258', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_polyphonic_source_synthesis_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '16aef5b3f1a1e10aea21fa9ad2c0f8116b8ed96a491989e405545a603354d04a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('df42a12e-6f9a-5251-b171-9b93d21c5473', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1297994f-1d06-5bf6-8c98-b4891c0b9258', 1), '16aef5b3f1a1e10aea21fa9ad2c0f8116b8ed96a491989e405545a603354d04a',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4f1af6e1ebd690f7b1486471d610fabd0a3525eb2749d18646bf65701dcd850d.mp3', 5564, '2026-09-13 11:17:42.107511', 'a59236bffb388bbc84dcbb97c7ef9e27cc6bbf7d89ec208c964496c78d176a24', 'validated', '{"audio_key":"4f1af6e1ebd690f7b1486471d610fabd0a3525eb2749d18646bf65701dcd850d","entity_key":"d_polyphonic_source_synthesis_01:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"a59236bffb388bbc84dcbb97c7ef9e27cc6bbf7d89ec208c964496c78d176a24","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/4f1af6e1ebd690f7b1486471d610fabd0a3525eb2749d18646bf65701dcd850d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_social_positioning_02:2 -> audio/generated/de-DE/dialogues/5065a759485845676c573518866626f123211a80edd9a45a7eb08b90ac9dc258.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('44620022-b300-557c-8862-34d7fba332c7', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_social_positioning_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '09548bce743e36ecf6e0c4598d694c3ab8acb12cfffd92ab34638ea1317ccd31'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('15a71718-e3fb-540f-8488-00ed0a4ef0e1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('44620022-b300-557c-8862-34d7fba332c7', 1), '09548bce743e36ecf6e0c4598d694c3ab8acb12cfffd92ab34638ea1317ccd31',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5065a759485845676c573518866626f123211a80edd9a45a7eb08b90ac9dc258.mp3', 3892, '2026-09-13 11:17:41.981184', '8997ec702090530db48b0dc947c8353b658e8948c330602882598d6a14f320a4', 'validated', '{"audio_key":"5065a759485845676c573518866626f123211a80edd9a45a7eb08b90ac9dc258","entity_key":"d_register_social_positioning_02:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"8997ec702090530db48b0dc947c8353b658e8948c330602882598d6a14f320a4","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/5065a759485845676c573518866626f123211a80edd9a45a7eb08b90ac9dc258.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_systems_causality_feedback_01:3 -> audio/generated/de-DE/dialogues/527fb4a2dfcf8272f792cfd15312d4f2c0d521df9a7137ff9f15ad7448daf3cf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('def70ef8-f823-5443-9c69-0596f3e37f6f', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_systems_causality_feedback_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9bf6ed3e8b3e7de3232ce07c1a0dadbd29efd7a46b19ba2dc0f9d2635d0129d3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c9c03bf1-1593-5f38-aacf-83f878cec89e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('def70ef8-f823-5443-9c69-0596f3e37f6f', 1), '9bf6ed3e8b3e7de3232ce07c1a0dadbd29efd7a46b19ba2dc0f9d2635d0129d3',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/527fb4a2dfcf8272f792cfd15312d4f2c0d521df9a7137ff9f15ad7448daf3cf.mp3', 3709, '2026-09-13 11:17:43.276923', '8414b009d9812cb1c7ca8f45ba37d40ffaf69bbff8b2c3c81056876b1741d100', 'validated', '{"audio_key":"527fb4a2dfcf8272f792cfd15312d4f2c0d521df9a7137ff9f15ad7448daf3cf","entity_key":"d_systems_causality_feedback_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"8414b009d9812cb1c7ca8f45ba37d40ffaf69bbff8b2c3c81056876b1741d100","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/527fb4a2dfcf8272f792cfd15312d4f2c0d521df9a7137ff9f15ad7448daf3cf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_polyphonic_source_synthesis_01:4 -> audio/generated/de-DE/dialogues/52bd2145d81fd1a058ad85c5cf3a4b227c7b4daa3326256d204471c9b00b7635.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('30b8a254-ad1b-5076-be50-f5912db91b63', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_polyphonic_source_synthesis_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c107d7d6fed8d0b57afd1bd3971156f02d1d38c5fab0e81b182c559eba93596a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c1e77b56-6386-5b6c-a825-3af691646bfb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('30b8a254-ad1b-5076-be50-f5912db91b63', 1), 'c107d7d6fed8d0b57afd1bd3971156f02d1d38c5fab0e81b182c559eba93596a',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/52bd2145d81fd1a058ad85c5cf3a4b227c7b4daa3326256d204471c9b00b7635.mp3', 3369, '2026-09-13 11:17:43.329486', '8f2cd67475d3405dbbceb6e26c82253d36f1508b59eec1b13a89e4976b2275d6', 'validated', '{"audio_key":"52bd2145d81fd1a058ad85c5cf3a4b227c7b4daa3326256d204471c9b00b7635","entity_key":"d_polyphonic_source_synthesis_01:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"8f2cd67475d3405dbbceb6e26c82253d36f1508b59eec1b13a89e4976b2275d6","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/52bd2145d81fd1a058ad85c5cf3a4b227c7b4daa3326256d204471c9b00b7635.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_irony_indirect_critique_02:3 -> audio/generated/de-DE/dialogues/53d3de041cc23c6f2bff3064180cd757b58fd0e2ba9f9f3f33da095f69f17652.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e4b63ecf-c6d6-57e0-9aa8-7209b0bbde73', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_irony_indirect_critique_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '832fc743d4a6afc1025076dff1b64eb39a7f1edc4438868c8a0abab450ca5185'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('194d5958-6741-5fe7-b081-c4efaa53d223', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e4b63ecf-c6d6-57e0-9aa8-7209b0bbde73', 1), '832fc743d4a6afc1025076dff1b64eb39a7f1edc4438868c8a0abab450ca5185',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/53d3de041cc23c6f2bff3064180cd757b58fd0e2ba9f9f3f33da095f69f17652.mp3', 3892, '2026-09-13 11:17:44.602390', '14a37c89a722b6b350aec0ef3be7c86a1d007d422c85ce25b4bcb64fa0c05a34', 'validated', '{"audio_key":"53d3de041cc23c6f2bff3064180cd757b58fd0e2ba9f9f3f33da095f69f17652","entity_key":"d_irony_indirect_critique_02:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"14a37c89a722b6b350aec0ef3be7c86a1d007d422c85ce25b4bcb64fa0c05a34","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/53d3de041cc23c6f2bff3064180cd757b58fd0e2ba9f9f3f33da095f69f17652.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_high_stakes_discursive_intervention_03:1 -> audio/generated/de-DE/dialogues/56f3d6f6f73052ef333419f5762be4c5e1aa375ea4c1ab9e36146ebbc97c9f80.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b3b0ce4c-77e1-5df1-96ea-b3f0035b0c67', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_high_stakes_discursive_intervention_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3eae523af846f4beef86bc444efaad6c4a2958c310f4295d65353dc886e2d54b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eeeb1f10-868e-5d28-b101-c6bc48ec262d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b3b0ce4c-77e1-5df1-96ea-b3f0035b0c67', 1), '3eae523af846f4beef86bc444efaad6c4a2958c310f4295d65353dc886e2d54b',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/56f3d6f6f73052ef333419f5762be4c5e1aa375ea4c1ab9e36146ebbc97c9f80.mp3', 2873, '2026-09-13 11:17:44.494141', '2d69a79b8899562466b7134be7cb7a4ae2e9d4fcdc62cf39cb110150fb6ebfb2', 'validated', '{"audio_key":"56f3d6f6f73052ef333419f5762be4c5e1aa375ea4c1ab9e36146ebbc97c9f80","entity_key":"d_high_stakes_discursive_intervention_03:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"2d69a79b8899562466b7134be7cb7a4ae2e9d4fcdc62cf39cb110150fb6ebfb2","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/56f3d6f6f73052ef333419f5762be4c5e1aa375ea4c1ab9e36146ebbc97c9f80.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_argument_premises_fallacies_01:4 -> audio/generated/de-DE/dialogues/57694d1736bc4c740330fbb8ecd3e412a9efc5eb13e61a594da36eaee688c88e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b5db9364-17d9-5959-ac82-c871e9a0d932', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_argument_premises_fallacies_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ba17be90299e91470b6e976de3bb50c81f3b77d918e7c16ee25c3816c397af24'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0d840fd1-4308-5f13-92f2-ee61e26154e6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b5db9364-17d9-5959-ac82-c871e9a0d932', 1), 'ba17be90299e91470b6e976de3bb50c81f3b77d918e7c16ee25c3816c397af24',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/57694d1736bc4c740330fbb8ecd3e412a9efc5eb13e61a594da36eaee688c88e.mp3', 3239, '2026-09-13 11:17:45.718093', '1bb0b98c538ea9055ab66e3c738f636ea1f5e29e56c72f5db85cee20c55a2292', 'validated', '{"audio_key":"57694d1736bc4c740330fbb8ecd3e412a9efc5eb13e61a594da36eaee688c88e","entity_key":"d_argument_premises_fallacies_01:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"1bb0b98c538ea9055ab66e3c738f636ea1f5e29e56c72f5db85cee20c55a2292","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/57694d1736bc4c740330fbb8ecd3e412a9efc5eb13e61a594da36eaee688c88e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_systems_causality_feedback_01:4 -> audio/generated/de-DE/dialogues/595bce1aa01234583e4087b2210ca79096d00674f9c2c5ed6b32ba26b605d105.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c17e94cd-bd74-52e4-9833-c1d39f106470', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_systems_causality_feedback_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cea172cb66847a7dade4f66370af11050208fe323fddd5c7ba0580e971981744'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('11b9dea5-f4b2-5250-b5a3-1e561f61089a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c17e94cd-bd74-52e4-9833-c1d39f106470', 1), 'cea172cb66847a7dade4f66370af11050208fe323fddd5c7ba0580e971981744',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/595bce1aa01234583e4087b2210ca79096d00674f9c2c5ed6b32ba26b605d105.mp3', 4780, '2026-09-13 11:17:46.006102', 'cfd9226a2da6d8d820f0f4159dc6ea2a57bb0f6419f3c8afa0c015dce560436d', 'validated', '{"audio_key":"595bce1aa01234583e4087b2210ca79096d00674f9c2c5ed6b32ba26b605d105","entity_key":"d_systems_causality_feedback_01:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"cfd9226a2da6d8d820f0f4159dc6ea2a57bb0f6419f3c8afa0c015dce560436d","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/595bce1aa01234583e4087b2210ca79096d00674f9c2c5ed6b32ba26b605d105.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_lexical_precision_collocation_01:2 -> audio/generated/de-DE/dialogues/597455da03c73cd5fc8c5295ff2c6e7788edb6984b0a4bd502fc875a27d86302.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('80138efa-9a8e-5a26-99c6-30410d1dcc6e', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_lexical_precision_collocation_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'baaccc2542bd3fc2cfcf2c419bb905169649f7b4ff8c482a215d541a8383e769'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0eb672c5-742c-57c7-a3d1-f87b421026ca', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('80138efa-9a8e-5a26-99c6-30410d1dcc6e', 1), 'baaccc2542bd3fc2cfcf2c419bb905169649f7b4ff8c482a215d541a8383e769',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/597455da03c73cd5fc8c5295ff2c6e7788edb6984b0a4bd502fc875a27d86302.mp3', 5982, '2026-09-13 11:17:47.339093', 'f41b5cd0245c7bcabce8ba72b685d08fe76500bfbde38da60f886292816c44a4', 'validated', '{"audio_key":"597455da03c73cd5fc8c5295ff2c6e7788edb6984b0a4bd502fc875a27d86302","entity_key":"d_lexical_precision_collocation_01:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"f41b5cd0245c7bcabce8ba72b685d08fe76500bfbde38da60f886292816c44a4","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/597455da03c73cd5fc8c5295ff2c6e7788edb6984b0a4bd502fc875a27d86302.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_implicit_stance_subtext_02:2 -> audio/generated/de-DE/dialogues/5fb870c1c551dde09e87f3a1fcfd8f78d3cf444089ca824a7bca8830732fadf1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e63b4c1b-f0ad-502b-be59-ff08f7e48e7c', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_implicit_stance_subtext_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dd981e36d0647512cd1d24a90abc9ffe911a4f8b0aba4536d0644b17ad9556ec'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6ad48409-624a-5c26-8834-53cb47a07702', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e63b4c1b-f0ad-502b-be59-ff08f7e48e7c', 1), 'dd981e36d0647512cd1d24a90abc9ffe911a4f8b0aba4536d0644b17ad9556ec',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5fb870c1c551dde09e87f3a1fcfd8f78d3cf444089ca824a7bca8830732fadf1.mp3', 4075, '2026-09-13 11:17:47.421199', 'aa7099f8a382da85f397f33a42295480b3e21b40c6d51ce051583d6efb801a9a', 'validated', '{"audio_key":"5fb870c1c551dde09e87f3a1fcfd8f78d3cf444089ca824a7bca8830732fadf1","entity_key":"d_implicit_stance_subtext_02:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"aa7099f8a382da85f397f33a42295480b3e21b40c6d51ce051583d6efb801a9a","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/5fb870c1c551dde09e87f3a1fcfd8f78d3cf444089ca824a7bca8830732fadf1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_social_positioning_02:4 -> audio/generated/de-DE/dialogues/5fd40bf809e5fd3827a65be24fff4c2653c9fa48b92fd92c95b76bf1c58b2566.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ebc41be1-7adb-58e7-91f7-c95ecaed9ab8', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_social_positioning_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6b418ac38eea08bd567aa8fcc1ac71fdbc27c303562deda8b9da2128e76ade92'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8118322f-08b0-5b6f-9c85-fc13ccec702d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ebc41be1-7adb-58e7-91f7-c95ecaed9ab8', 1), '6b418ac38eea08bd567aa8fcc1ac71fdbc27c303562deda8b9da2128e76ade92',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5fd40bf809e5fd3827a65be24fff4c2653c9fa48b92fd92c95b76bf1c58b2566.mp3', 2351, '2026-09-13 11:17:48.486585', '9d2ca1ac00c83eadd6b57a20837ff7a0af207cb1d115495e3daee2d6bc66d067', 'validated', '{"audio_key":"5fd40bf809e5fd3827a65be24fff4c2653c9fa48b92fd92c95b76bf1c58b2566","entity_key":"d_register_social_positioning_02:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"9d2ca1ac00c83eadd6b57a20837ff7a0af207cb1d115495e3daee2d6bc66d067","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/5fd40bf809e5fd3827a65be24fff4c2653c9fa48b92fd92c95b76bf1c58b2566.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_social_positioning_03:1 -> audio/generated/de-DE/dialogues/6298c9c3045fb06d7300b906e266a03ba21a7cffd5fecdab8cc24d8ea26290bb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b17de08d-2a32-50bd-8aa4-3d5c388e0a38', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_social_positioning_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '17806f197f37cae39c5fc215f78cd1432d49ed4edfcbf56d641cf8f59984c0ec'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c8348b43-22f8-5537-ba44-53e54f827d9a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b17de08d-2a32-50bd-8aa4-3d5c388e0a38', 1), '17806f197f37cae39c5fc215f78cd1432d49ed4edfcbf56d641cf8f59984c0ec',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6298c9c3045fb06d7300b906e266a03ba21a7cffd5fecdab8cc24d8ea26290bb.mp3', 4597, '2026-09-13 11:17:48.858390', 'bb844ded6d7ad5365eb235bf16f3baa3fbbb67fc5cd0af4fce1021c9eec1ef5b', 'validated', '{"audio_key":"6298c9c3045fb06d7300b906e266a03ba21a7cffd5fecdab8cc24d8ea26290bb","entity_key":"d_register_social_positioning_03:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"bb844ded6d7ad5365eb235bf16f3baa3fbbb67fc5cd0af4fce1021c9eec1ef5b","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/6298c9c3045fb06d7300b906e266a03ba21a7cffd5fecdab8cc24d8ea26290bb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_lexical_precision_collocation_02:4 -> audio/generated/de-DE/dialogues/6b4550c7631fb0c8eab1f6fd4b6e850a545ee821f25665c2e5445937991b25d0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('24752722-e197-5d67-a983-23b3bcab060b', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_lexical_precision_collocation_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fb2177830a6f4a929031b452f9df57496e22859dd8d604741bae339c8ffdbe3c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2a02e727-c77e-5844-aab1-82e7519f45c7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('24752722-e197-5d67-a983-23b3bcab060b', 1), 'fb2177830a6f4a929031b452f9df57496e22859dd8d604741bae339c8ffdbe3c',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6b4550c7631fb0c8eab1f6fd4b6e850a545ee821f25665c2e5445937991b25d0.mp3', 4414, '2026-09-13 11:17:49.822646', 'd041d412373bf49c51d6c8f3802e30fc5168ec4cba2d7e43450d271b0b3f6a91', 'validated', '{"audio_key":"6b4550c7631fb0c8eab1f6fd4b6e850a545ee821f25665c2e5445937991b25d0","entity_key":"d_lexical_precision_collocation_02:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"d041d412373bf49c51d6c8f3802e30fc5168ec4cba2d7e43450d271b0b3f6a91","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/6b4550c7631fb0c8eab1f6fd4b6e850a545ee821f25665c2e5445937991b25d0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_argument_premises_fallacies_02:3 -> audio/generated/de-DE/dialogues/6d488bd123e3d5eeae09e7e54a5344a3a3f9602e021dec1bc794c4ef9a2c2aa0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('93cc5473-c533-52fa-a628-300d2d8890e7', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_argument_premises_fallacies_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4fb669eaea8553d3a65a1b81a8193aa2f9bc92094d41c2e985b8de90f58af50b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9d36feab-6bd7-5534-8750-eef1f3990090', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('93cc5473-c533-52fa-a628-300d2d8890e7', 1), '4fb669eaea8553d3a65a1b81a8193aa2f9bc92094d41c2e985b8de90f58af50b',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6d488bd123e3d5eeae09e7e54a5344a3a3f9602e021dec1bc794c4ef9a2c2aa0.mp3', 3474, '2026-09-13 11:17:50.111252', '3e2af81f6b5494c3a9965fbcabcaa594152e4c01fe41b76327020b8cb314e47c', 'validated', '{"audio_key":"6d488bd123e3d5eeae09e7e54a5344a3a3f9602e021dec1bc794c4ef9a2c2aa0","entity_key":"d_argument_premises_fallacies_02:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"3e2af81f6b5494c3a9965fbcabcaa594152e4c01fe41b76327020b8cb314e47c","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/6d488bd123e3d5eeae09e7e54a5344a3a3f9602e021dec1bc794c4ef9a2c2aa0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_high_stakes_discursive_intervention_01:1 -> audio/generated/de-DE/dialogues/6fef108ea0394e272d03f020db5e4b3c79d9411e3db16dba0ec693dab1170e15.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f6db6869-31da-5130-af2c-09f5f2537871', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_high_stakes_discursive_intervention_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '466532756a6cdbd81aaa24490eba781a021116df136e96feca19acfe1e46acb2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8221224e-fa45-5bf4-b0f8-9ad04a1818e4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f6db6869-31da-5130-af2c-09f5f2537871', 1), '466532756a6cdbd81aaa24490eba781a021116df136e96feca19acfe1e46acb2',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6fef108ea0394e272d03f020db5e4b3c79d9411e3db16dba0ec693dab1170e15.mp3', 3343, '2026-09-13 11:17:51.074739', '673cda45bdb76ddfab2ae889c1198121366120ee15c0cc2a9f3d849fe0e49bb2', 'validated', '{"audio_key":"6fef108ea0394e272d03f020db5e4b3c79d9411e3db16dba0ec693dab1170e15","entity_key":"d_high_stakes_discursive_intervention_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"673cda45bdb76ddfab2ae889c1198121366120ee15c0cc2a9f3d849fe0e49bb2","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/6fef108ea0394e272d03f020db5e4b3c79d9411e3db16dba0ec693dab1170e15.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_polyphonic_source_synthesis_02:3 -> audio/generated/de-DE/dialogues/70344e368a1b61ba29108f8770d384f9370b5637f178519d5e53e4482b02fa2f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('192f3991-c32f-517f-86c2-9078fdd2c94e', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_polyphonic_source_synthesis_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0824c83bda87ae3b8596ceaf9e8c5d00ed82bb663cbc64ec01644f0798cc2a35'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c66dc6be-6901-51d8-8c0c-8148b5d93183', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('192f3991-c32f-517f-86c2-9078fdd2c94e', 1), '0824c83bda87ae3b8596ceaf9e8c5d00ed82bb663cbc64ec01644f0798cc2a35',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/70344e368a1b61ba29108f8770d384f9370b5637f178519d5e53e4482b02fa2f.mp3', 2925, '2026-09-13 11:17:51.277487', '4f15c6258e74a09e41ffba7c494ba19332cf47cd64112f93a038ad06019e2f23', 'validated', '{"audio_key":"70344e368a1b61ba29108f8770d384f9370b5637f178519d5e53e4482b02fa2f","entity_key":"d_polyphonic_source_synthesis_02:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"4f15c6258e74a09e41ffba7c494ba19332cf47cd64112f93a038ad06019e2f23","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/70344e368a1b61ba29108f8770d384f9370b5637f178519d5e53e4482b02fa2f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_lexical_precision_collocation_03:1 -> audio/generated/de-DE/dialogues/76846986ddcf07972f9e91ecfc9dcb613b77567cb11900b50f7fe382c90d46ca.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f207134e-9b07-559d-95d7-064eb3dda4dc', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_lexical_precision_collocation_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bf5b7825f264789765bd5e3cea1d5778fc75b008846cd145b8de2f6c81465cdf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('794a2b38-93ff-5c89-a631-8e91567ef331', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f207134e-9b07-559d-95d7-064eb3dda4dc', 1), 'bf5b7825f264789765bd5e3cea1d5778fc75b008846cd145b8de2f6c81465cdf',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/76846986ddcf07972f9e91ecfc9dcb613b77567cb11900b50f7fe382c90d46ca.mp3', 4728, '2026-09-13 11:17:52.526660', 'fad8da3ebfbf69fda9d199da8fdacd87a5f3ce20dc8f13005b04063179232879', 'validated', '{"audio_key":"76846986ddcf07972f9e91ecfc9dcb613b77567cb11900b50f7fe382c90d46ca","entity_key":"d_lexical_precision_collocation_03:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"fad8da3ebfbf69fda9d199da8fdacd87a5f3ce20dc8f13005b04063179232879","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/76846986ddcf07972f9e91ecfc9dcb613b77567cb11900b50f7fe382c90d46ca.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_implicit_stance_subtext_03:3 -> audio/generated/de-DE/dialogues/76b50c5fa0480a1d0e394440b43ef047b4948cb705dd8283ad83dab277b068d2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d3954fa7-3bd1-5e62-a5c0-942ac650e33c', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_implicit_stance_subtext_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5a26be2ab8581e4054956224fd3d7dab374e37daec8f9b6c73e803d28510efd9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('00dfba8c-3ece-5dce-877c-0956c2c8a00d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d3954fa7-3bd1-5e62-a5c0-942ac650e33c', 1), '5a26be2ab8581e4054956224fd3d7dab374e37daec8f9b6c73e803d28510efd9',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/76b50c5fa0480a1d0e394440b43ef047b4948cb705dd8283ad83dab277b068d2.mp3', 3422, '2026-09-13 11:17:52.535567', 'ce235186c8ec482a7a7089c9ec071331a413948795b1ae26461f5078639ba09d', 'validated', '{"audio_key":"76b50c5fa0480a1d0e394440b43ef047b4948cb705dd8283ad83dab277b068d2","entity_key":"d_implicit_stance_subtext_03:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"ce235186c8ec482a7a7089c9ec071331a413948795b1ae26461f5078639ba09d","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/76b50c5fa0480a1d0e394440b43ef047b4948cb705dd8283ad83dab277b068d2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_lexical_precision_collocation_03:3 -> audio/generated/de-DE/dialogues/773f034c0140b57e89b6acf7ed6b8c0b1ffb9ad077a0f7d3f95526b08ea82d01.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1deee400-9d24-59a6-8229-81b586a00d0b', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_lexical_precision_collocation_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a525d1489c249c3a4780adcfe1cd94f234ba7ab045764425bbc37daaf0e2d359'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8104b462-cc48-5a01-acc9-9cdbe6d8b1bf', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1deee400-9d24-59a6-8229-81b586a00d0b', 1), 'a525d1489c249c3a4780adcfe1cd94f234ba7ab045764425bbc37daaf0e2d359',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/773f034c0140b57e89b6acf7ed6b8c0b1ffb9ad077a0f7d3f95526b08ea82d01.mp3', 3186, '2026-09-13 11:17:53.765390', '06cadfcd6ff4bedb8e8492b583f9d68031b003eb9fa1ea623e0ce0c6491ad93d', 'validated', '{"audio_key":"773f034c0140b57e89b6acf7ed6b8c0b1ffb9ad077a0f7d3f95526b08ea82d01","entity_key":"d_lexical_precision_collocation_03:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"06cadfcd6ff4bedb8e8492b583f9d68031b003eb9fa1ea623e0ce0c6491ad93d","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/773f034c0140b57e89b6acf7ed6b8c0b1ffb9ad077a0f7d3f95526b08ea82d01.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_implicit_stance_subtext_01:1 -> audio/generated/de-DE/dialogues/7a40363d6f3f77dde9d72d1e4b38e632fe5ab32125c1a411ee28971fbef848cd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('83b61d95-b22b-52c6-9bc7-fecbd9f5da04', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_implicit_stance_subtext_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1c572841393398ccd31f146d3519476e7fe4eaf0f469edeb940bc40481e80d44'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8ac5ffc1-5f90-5fae-b996-ebf172c870ae', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('83b61d95-b22b-52c6-9bc7-fecbd9f5da04', 1), '1c572841393398ccd31f146d3519476e7fe4eaf0f469edeb940bc40481e80d44',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7a40363d6f3f77dde9d72d1e4b38e632fe5ab32125c1a411ee28971fbef848cd.mp3', 3709, '2026-09-13 11:17:53.829379', '308a0c2dfa6851913c8690f476a79fc23383cea853b4e7b885dd0646788bf6e0', 'validated', '{"audio_key":"7a40363d6f3f77dde9d72d1e4b38e632fe5ab32125c1a411ee28971fbef848cd","entity_key":"d_implicit_stance_subtext_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"308a0c2dfa6851913c8690f476a79fc23383cea853b4e7b885dd0646788bf6e0","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/7a40363d6f3f77dde9d72d1e4b38e632fe5ab32125c1a411ee28971fbef848cd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_interpret_reframe_position_capstone_02:4 -> audio/generated/de-DE/dialogues/7f598d669d6adba58022e1562a807fc7b1dc00f2aa7f0a58ab8a59d570b420b0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('81c6192a-0d6d-5b0d-83cd-d3d2fd54fcb0', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_interpret_reframe_position_capstone_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4003a96ef1e9aaae748ab9939770f8aea9b16410e8cc3b91742c7354c4667460'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('68198006-bb38-5881-82b2-e7c24e38f66c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('81c6192a-0d6d-5b0d-83cd-d3d2fd54fcb0', 1), '4003a96ef1e9aaae748ab9939770f8aea9b16410e8cc3b91742c7354c4667460',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7f598d669d6adba58022e1562a807fc7b1dc00f2aa7f0a58ab8a59d570b420b0.mp3', 4597, '2026-09-13 11:17:55.206191', 'e87d001a77768e9606d1fbd175915dd2b02da14da7b43dc19d05d9a5246456f8', 'validated', '{"audio_key":"7f598d669d6adba58022e1562a807fc7b1dc00f2aa7f0a58ab8a59d570b420b0","entity_key":"d_interpret_reframe_position_capstone_02:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"e87d001a77768e9606d1fbd175915dd2b02da14da7b43dc19d05d9a5246456f8","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/7f598d669d6adba58022e1562a807fc7b1dc00f2aa7f0a58ab8a59d570b420b0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_interpret_reframe_position_capstone_01:3 -> audio/generated/de-DE/dialogues/80053ff4b18e14d252fed26b727d372622e888b59e7ae51b02d0da6f35f15da6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a7ffbf00-afc5-5e2e-be3f-d40150d78186', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_interpret_reframe_position_capstone_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9e9dcafdd9964f08aece6c638a075eb67db82b10a5497bb77227ac987d031eb3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0cd8e7b6-3f49-56fd-bbbe-7c2d6c4e4f9c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a7ffbf00-afc5-5e2e-be3f-d40150d78186', 1), '9e9dcafdd9964f08aece6c638a075eb67db82b10a5497bb77227ac987d031eb3',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/80053ff4b18e14d252fed26b727d372622e888b59e7ae51b02d0da6f35f15da6.mp3', 4493, '2026-09-13 11:17:55.157066', '67d0fccc15d18b63cd1131a2916e1e235e56d830dd5eb65249b23ebd58b9a864', 'validated', '{"audio_key":"80053ff4b18e14d252fed26b727d372622e888b59e7ae51b02d0da6f35f15da6","entity_key":"d_interpret_reframe_position_capstone_01:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"67d0fccc15d18b63cd1131a2916e1e235e56d830dd5eb65249b23ebd58b9a864","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/80053ff4b18e14d252fed26b727d372622e888b59e7ae51b02d0da6f35f15da6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_irony_indirect_critique_01:1 -> audio/generated/de-DE/dialogues/80368b2fcc7eff353d8dee35e125412c2f9b2c574d2263513f1bea9636a5937b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('12937091-7c10-5dad-a0c1-b8d8f4153385', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_irony_indirect_critique_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '484f5e4eeec01aedb165260cff519a49b01a1c743ca71b1420e3da7b79507c52'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2d0df6f2-c331-5561-a29d-ba3cf63e0904', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('12937091-7c10-5dad-a0c1-b8d8f4153385', 1), '484f5e4eeec01aedb165260cff519a49b01a1c743ca71b1420e3da7b79507c52',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/80368b2fcc7eff353d8dee35e125412c2f9b2c574d2263513f1bea9636a5937b.mp3', 5851, '2026-09-13 11:17:56.705506', 'bb3922b88c29effed98b94ca8892448d0ce4c1cc7d32e44456f2c482e40e4385', 'validated', '{"audio_key":"80368b2fcc7eff353d8dee35e125412c2f9b2c574d2263513f1bea9636a5937b","entity_key":"d_irony_indirect_critique_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"bb3922b88c29effed98b94ca8892448d0ce4c1cc7d32e44456f2c482e40e4385","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/80368b2fcc7eff353d8dee35e125412c2f9b2c574d2263513f1bea9636a5937b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_lexical_precision_collocation_03:4 -> audio/generated/de-DE/dialogues/81efea72fb752e58d4beea07d042a040e3e9dc890d59f54b83bf15c2fb5d8c4c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('969c05b7-7d63-51e0-b090-6c0f3d9811df', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_lexical_precision_collocation_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '612af34b00c6877b887c4a05463be6d54e3bf9afe317a79cf8e10d9bbd0a177d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e324b87d-4189-570a-b5fd-24c8afb584a6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('969c05b7-7d63-51e0-b090-6c0f3d9811df', 1), '612af34b00c6877b887c4a05463be6d54e3bf9afe317a79cf8e10d9bbd0a177d',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/81efea72fb752e58d4beea07d042a040e3e9dc890d59f54b83bf15c2fb5d8c4c.mp3', 4414, '2026-09-13 11:17:56.564395', '9647772474956a230da9086ef5ed663b8e5ca599d50b836cd63d57d3f1920574', 'validated', '{"audio_key":"81efea72fb752e58d4beea07d042a040e3e9dc890d59f54b83bf15c2fb5d8c4c","entity_key":"d_lexical_precision_collocation_03:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"9647772474956a230da9086ef5ed663b8e5ca599d50b836cd63d57d3f1920574","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/81efea72fb752e58d4beea07d042a040e3e9dc890d59f54b83bf15c2fb5d8c4c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_high_stakes_discursive_intervention_02:3 -> audio/generated/de-DE/dialogues/8218e2593968280a9c29508eda02a8ed5d20d301ce1716bca06e0e82dcb27c3a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('dcc369ee-49f4-5509-93d3-28193b2c8bc3', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_high_stakes_discursive_intervention_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '61658532c7298540268463053dca0ac86b0d6273cfa430796a3c5072bb217731'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6ae1dd0b-ca35-58c4-be2e-729eadcd5d82', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('dcc369ee-49f4-5509-93d3-28193b2c8bc3', 1), '61658532c7298540268463053dca0ac86b0d6273cfa430796a3c5072bb217731',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8218e2593968280a9c29508eda02a8ed5d20d301ce1716bca06e0e82dcb27c3a.mp3', 4597, '2026-09-13 11:17:58.098700', 'adae451e23efd1c4b5a6557420900eaaaccdaa829ca8ec7e0674d7f08ce51020', 'validated', '{"audio_key":"8218e2593968280a9c29508eda02a8ed5d20d301ce1716bca06e0e82dcb27c3a","entity_key":"d_high_stakes_discursive_intervention_02:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"adae451e23efd1c4b5a6557420900eaaaccdaa829ca8ec7e0674d7f08ce51020","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/8218e2593968280a9c29508eda02a8ed5d20d301ce1716bca06e0e82dcb27c3a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_argument_premises_fallacies_01:3 -> audio/generated/de-DE/dialogues/8745056f938274e17a54f4604999e29685a986b389351205e65dc8ed32a31867.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ef389bed-f7c5-59a2-bc12-b73847d360da', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_argument_premises_fallacies_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '195901f915bb07797a748dd8f8bc537e0f0d6c897e8327fc6fa4533b22204312'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('23941515-68dc-59d8-b1b3-05efd0abe2ba', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ef389bed-f7c5-59a2-bc12-b73847d360da', 1), '195901f915bb07797a748dd8f8bc537e0f0d6c897e8327fc6fa4533b22204312',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8745056f938274e17a54f4604999e29685a986b389351205e65dc8ed32a31867.mp3', 3709, '2026-09-13 11:17:58.002080', '40592de8140b57dcb3b78d71540ce44415187daf3c8aa74e93d75aaacb29097c', 'validated', '{"audio_key":"8745056f938274e17a54f4604999e29685a986b389351205e65dc8ed32a31867","entity_key":"d_argument_premises_fallacies_01:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"40592de8140b57dcb3b78d71540ce44415187daf3c8aa74e93d75aaacb29097c","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/8745056f938274e17a54f4604999e29685a986b389351205e65dc8ed32a31867.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_irony_indirect_critique_02:1 -> audio/generated/de-DE/dialogues/87be2295527c0b4297a4154b221c96dbbdfc60684404f1c73c930e56ffa3e909.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('09db0257-7705-5aa1-8431-077acaf3e705', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_irony_indirect_critique_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '709856e1ee15d95e3acabd0c27f91f5f883bcf0b1b1749b4d2b841a5136c551d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('34135580-cb51-5fb4-8208-69115c6ef8a6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('09db0257-7705-5aa1-8431-077acaf3e705', 1), '709856e1ee15d95e3acabd0c27f91f5f883bcf0b1b1749b4d2b841a5136c551d',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/87be2295527c0b4297a4154b221c96dbbdfc60684404f1c73c930e56ffa3e909.mp3', 4493, '2026-09-13 11:17:59.391564', '6247712a787a94870f92d1e60221766d82ce46ee38e18ca6b968c57b32a8961a', 'validated', '{"audio_key":"87be2295527c0b4297a4154b221c96dbbdfc60684404f1c73c930e56ffa3e909","entity_key":"d_irony_indirect_critique_02:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"6247712a787a94870f92d1e60221766d82ce46ee38e18ca6b968c57b32a8961a","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/87be2295527c0b4297a4154b221c96dbbdfc60684404f1c73c930e56ffa3e909.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_rhetorical_strategy_diagnostics_03:1 -> audio/generated/de-DE/dialogues/8b8d6fdc5ee991f122b705fc3185a720ba7178d33979a2a854dbac1ba9c150d0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8e8d7de8-0cda-505b-b2e5-acb8f6aaf44d', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_rhetorical_strategy_diagnostics_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7bcef1091fb6a2cc43b9af7e9bc9c49c7090c57bda8920f37c52537f961bf4cd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5d3a84fb-07f0-5075-9873-a2be76f79c37', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8e8d7de8-0cda-505b-b2e5-acb8f6aaf44d', 1), '7bcef1091fb6a2cc43b9af7e9bc9c49c7090c57bda8920f37c52537f961bf4cd',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8b8d6fdc5ee991f122b705fc3185a720ba7178d33979a2a854dbac1ba9c150d0.mp3', 4911, '2026-09-13 11:17:59.570283', 'c445915d9d47c65ee6cabc89184f80bbd18ba089860954264e0db5c5da4f6a03', 'validated', '{"audio_key":"8b8d6fdc5ee991f122b705fc3185a720ba7178d33979a2a854dbac1ba9c150d0","entity_key":"d_rhetorical_strategy_diagnostics_03:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c445915d9d47c65ee6cabc89184f80bbd18ba089860954264e0db5c5da4f6a03","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/8b8d6fdc5ee991f122b705fc3185a720ba7178d33979a2a854dbac1ba9c150d0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_systems_causality_feedback_03:4 -> audio/generated/de-DE/dialogues/8ce515b1a270accd591aede5162b1fa966973381b9e30973cd836498588646ff.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e80f0eb4-792e-5739-aa16-568fa9484128', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_systems_causality_feedback_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd86fffa61ec209c676a7d91ee149a52c2b134595cb86aa4088a305baa5c205ef'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1d904e60-d3f5-5249-8cba-578253ec7430', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e80f0eb4-792e-5739-aa16-568fa9484128', 1), 'd86fffa61ec209c676a7d91ee149a52c2b134595cb86aa4088a305baa5c205ef',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8ce515b1a270accd591aede5162b1fa966973381b9e30973cd836498588646ff.mp3', 3160, '2026-09-13 11:18:00.640374', 'bf4551ae86b60555b561fbd3ae28b85a2c5a2a55d05e88018fa198105cdbe6d8', 'validated', '{"audio_key":"8ce515b1a270accd591aede5162b1fa966973381b9e30973cd836498588646ff","entity_key":"d_systems_causality_feedback_03:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"bf4551ae86b60555b561fbd3ae28b85a2c5a2a55d05e88018fa198105cdbe6d8","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/8ce515b1a270accd591aede5162b1fa966973381b9e30973cd836498588646ff.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_high_stakes_discursive_intervention_02:4 -> audio/generated/de-DE/dialogues/9573297c677fab4e60d46fad93d4eef64a96cfca507c432949c17413c9904066.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0eb0fe53-b8f6-5678-bc3e-6cb7f0a4d57e', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_high_stakes_discursive_intervention_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1e61bcad412324bbbcb702270e686a5d34ee589274f13064de22dcc054eda6a5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('987ced09-afaf-59d6-9986-b41538e21823', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0eb0fe53-b8f6-5678-bc3e-6cb7f0a4d57e', 1), '1e61bcad412324bbbcb702270e686a5d34ee589274f13064de22dcc054eda6a5',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/9573297c677fab4e60d46fad93d4eef64a96cfca507c432949c17413c9904066.mp3', 2951, '2026-09-13 11:18:00.750085', '9aec0008ca3242c451d110844e2bc66b1814971d804f53f913b70a6a82d5b181', 'validated', '{"audio_key":"9573297c677fab4e60d46fad93d4eef64a96cfca507c432949c17413c9904066","entity_key":"d_high_stakes_discursive_intervention_02:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"9aec0008ca3242c451d110844e2bc66b1814971d804f53f913b70a6a82d5b181","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/9573297c677fab4e60d46fad93d4eef64a96cfca507c432949c17413c9904066.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_argument_premises_fallacies_02:2 -> audio/generated/de-DE/dialogues/974a36cc6c54519d210263ca679fa85c1f5c4b7a90364428629330f5f0b0dfe0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('12c68ed7-785a-51f2-bd08-c97402f10c6d', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_argument_premises_fallacies_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b3d987cc6b3c112ed2f89dde669f195b19fd3a915bcbad2f2e2f0e38c141a911'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3b602385-fcac-534b-a4a0-0844aace164f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('12c68ed7-785a-51f2-bd08-c97402f10c6d', 1), 'b3d987cc6b3c112ed2f89dde669f195b19fd3a915bcbad2f2e2f0e38c141a911',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/974a36cc6c54519d210263ca679fa85c1f5c4b7a90364428629330f5f0b0dfe0.mp3', 6034, '2026-09-13 11:18:02.246151', '7f0a8101bd6d66e37b717c951612a1198ba904a4bd910b7fa7728b3b3b518ddc', 'validated', '{"audio_key":"974a36cc6c54519d210263ca679fa85c1f5c4b7a90364428629330f5f0b0dfe0","entity_key":"d_argument_premises_fallacies_02:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"7f0a8101bd6d66e37b717c951612a1198ba904a4bd910b7fa7728b3b3b518ddc","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/974a36cc6c54519d210263ca679fa85c1f5c4b7a90364428629330f5f0b0dfe0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_interpret_reframe_position_capstone_02:3 -> audio/generated/de-DE/dialogues/97bc6e2c1f28f5c755ea7cd0236fe4202dbc03cc916f897c3a8c82ec855b8145.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7b51a6d3-460b-5505-9592-49f2691901d1', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_interpret_reframe_position_capstone_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1b519efced912a4e667c9065e920b8a264b5c36dc136c25e63e4b93ce7c3374b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('67513813-a9fb-5e96-bcd6-4baabbc729a6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7b51a6d3-460b-5505-9592-49f2691901d1', 1), '1b519efced912a4e667c9065e920b8a264b5c36dc136c25e63e4b93ce7c3374b',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/97bc6e2c1f28f5c755ea7cd0236fe4202dbc03cc916f897c3a8c82ec855b8145.mp3', 4362, '2026-09-13 11:18:02.460354', '30e020dad59026ceb1b94121d3008492172168d47077acc26b94e68d2c41a92a', 'validated', '{"audio_key":"97bc6e2c1f28f5c755ea7cd0236fe4202dbc03cc916f897c3a8c82ec855b8145","entity_key":"d_interpret_reframe_position_capstone_02:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"30e020dad59026ceb1b94121d3008492172168d47077acc26b94e68d2c41a92a","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/97bc6e2c1f28f5c755ea7cd0236fe4202dbc03cc916f897c3a8c82ec855b8145.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_high_stakes_discursive_intervention_02:2 -> audio/generated/de-DE/dialogues/9ebf93d20bfd304736595778949d1cc404eadfc2cef1422bbc2612f41f999834.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c002da49-9e83-598e-a60c-2380dbda9c98', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_high_stakes_discursive_intervention_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e32df8c85a6ba5706e35da0787fcccaab496ad3b7e5c02fbcbe23b81e6ef2876'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2b0037d3-071f-5924-b453-9c2606ee2c6d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c002da49-9e83-598e-a60c-2380dbda9c98', 1), 'e32df8c85a6ba5706e35da0787fcccaab496ad3b7e5c02fbcbe23b81e6ef2876',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/9ebf93d20bfd304736595778949d1cc404eadfc2cef1422bbc2612f41f999834.mp3', 5041, '2026-09-13 11:18:03.726136', '0dab8c407f459dbab4f5c2c7d45848e65defc883ba893007ea7e19b80d97773a', 'validated', '{"audio_key":"9ebf93d20bfd304736595778949d1cc404eadfc2cef1422bbc2612f41f999834","entity_key":"d_high_stakes_discursive_intervention_02:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"0dab8c407f459dbab4f5c2c7d45848e65defc883ba893007ea7e19b80d97773a","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/9ebf93d20bfd304736595778949d1cc404eadfc2cef1422bbc2612f41f999834.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_rhetorical_strategy_diagnostics_03:3 -> audio/generated/de-DE/dialogues/a0037cd2b4b02b7de8d5422027f0d07da8fd16655977fbcf875ebc0b5f7cc40f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ed0a9b84-f4bd-51e8-b5ea-8816da8819d6', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_rhetorical_strategy_diagnostics_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e3e4d7a11807a697b543d581a19294dd935d3e682196e18b6c02de1c661d82ec'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('daf8966c-fb39-59d6-8b75-228193092725', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ed0a9b84-f4bd-51e8-b5ea-8816da8819d6', 1), 'e3e4d7a11807a697b543d581a19294dd935d3e682196e18b6c02de1c661d82ec',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a0037cd2b4b02b7de8d5422027f0d07da8fd16655977fbcf875ebc0b5f7cc40f.mp3', 2925, '2026-09-13 11:18:03.629259', '423528f0cb5d79a99e204d70bb93b34b418dcf6301adc4638dadf19c7c6de7b6', 'validated', '{"audio_key":"a0037cd2b4b02b7de8d5422027f0d07da8fd16655977fbcf875ebc0b5f7cc40f","entity_key":"d_rhetorical_strategy_diagnostics_03:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"423528f0cb5d79a99e204d70bb93b34b418dcf6301adc4638dadf19c7c6de7b6","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/a0037cd2b4b02b7de8d5422027f0d07da8fd16655977fbcf875ebc0b5f7cc40f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_lexical_precision_collocation_02:2 -> audio/generated/de-DE/dialogues/a09585e2f1f9d9e9a8e7f398f0ae15f324bc11667b09c1f41534142fb962d749.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('97e40590-b7c6-5d03-90a1-cfc3604df983', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_lexical_precision_collocation_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5058ae337cb0f83395c4c7ce3a35e2cfdc43a72f1cb3c8e03bc56cbf147bdc4d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('363160d2-362d-5d09-a860-7096aa81c313', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('97e40590-b7c6-5d03-90a1-cfc3604df983', 1), '5058ae337cb0f83395c4c7ce3a35e2cfdc43a72f1cb3c8e03bc56cbf147bdc4d',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a09585e2f1f9d9e9a8e7f398f0ae15f324bc11667b09c1f41534142fb962d749.mp3', 5694, '2026-09-13 11:18:05.162861', '5bfec7a4adb377421bdc9b1111586d925988503f3b6d0d66a165c6da797d065c', 'validated', '{"audio_key":"a09585e2f1f9d9e9a8e7f398f0ae15f324bc11667b09c1f41534142fb962d749","entity_key":"d_lexical_precision_collocation_02:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"5bfec7a4adb377421bdc9b1111586d925988503f3b6d0d66a165c6da797d065c","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/a09585e2f1f9d9e9a8e7f398f0ae15f324bc11667b09c1f41534142fb962d749.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_argument_premises_fallacies_03:1 -> audio/generated/de-DE/dialogues/a2ee28d5f957b75dc58d5a94de98608a77088d87254b03fff2a7d66791f19c2e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fcd86aa5-7dd5-5f30-bde3-3ab6451a897d', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_argument_premises_fallacies_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7cd30e65c0bbc2ce07b090cb37f3f07f23693c3cb8723b6b69c81c57b397e842'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5b8aca0b-891e-5780-87c8-0d61d1340128', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fcd86aa5-7dd5-5f30-bde3-3ab6451a897d', 1), '7cd30e65c0bbc2ce07b090cb37f3f07f23693c3cb8723b6b69c81c57b397e842',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a2ee28d5f957b75dc58d5a94de98608a77088d87254b03fff2a7d66791f19c2e.mp3', 5276, '2026-09-13 11:18:05.242711', '927e140f6c1d636f39b26f98934c09d8c88db9646a479d566ba878c4092095c1', 'validated', '{"audio_key":"a2ee28d5f957b75dc58d5a94de98608a77088d87254b03fff2a7d66791f19c2e","entity_key":"d_argument_premises_fallacies_03:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"927e140f6c1d636f39b26f98934c09d8c88db9646a479d566ba878c4092095c1","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/a2ee28d5f957b75dc58d5a94de98608a77088d87254b03fff2a7d66791f19c2e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_social_positioning_02:3 -> audio/generated/de-DE/dialogues/a4e6c106cc2e9aac26c2a7b4d8f1821263ebb7b889fdabf5fe5e3bbbac02e605.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fbe029cc-2a67-5117-9885-fff1bf29dbe7', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_social_positioning_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '239822bcdc971559c0256ab2a234c233e7c5bae6c607df53b99c5b057dc25282'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4dc23b9f-9ce4-5030-80b5-f785dbb2cd14', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fbe029cc-2a67-5117-9885-fff1bf29dbe7', 1), '239822bcdc971559c0256ab2a234c233e7c5bae6c607df53b99c5b057dc25282',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a4e6c106cc2e9aac26c2a7b4d8f1821263ebb7b889fdabf5fe5e3bbbac02e605.mp3', 5328, '2026-09-13 11:18:06.676296', '83769512a9df61a778b9f25fe9126db364383ea671bbf2d76c6548bf6bb97b5d', 'validated', '{"audio_key":"a4e6c106cc2e9aac26c2a7b4d8f1821263ebb7b889fdabf5fe5e3bbbac02e605","entity_key":"d_register_social_positioning_02:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"83769512a9df61a778b9f25fe9126db364383ea671bbf2d76c6548bf6bb97b5d","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/a4e6c106cc2e9aac26c2a7b4d8f1821263ebb7b889fdabf5fe5e3bbbac02e605.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_social_positioning_03:2 -> audio/generated/de-DE/dialogues/a6401ebd43b63f2580dbe3805af2c2c1d113ce9df44fc3fbe795a6da58ee7a1d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5a5b0b10-ddab-56ee-a945-7a61e195a448', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_social_positioning_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '01915f85c24c017e124e6212e3ab3bf5cf2396cc151c4f474441d31a0066a744'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a26e2a7d-4f4c-5fbd-9b6b-c6c8b97574d6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5a5b0b10-ddab-56ee-a945-7a61e195a448', 1), '01915f85c24c017e124e6212e3ab3bf5cf2396cc151c4f474441d31a0066a744',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a6401ebd43b63f2580dbe3805af2c2c1d113ce9df44fc3fbe795a6da58ee7a1d.mp3', 4858, '2026-09-13 11:18:06.728676', '5831f3127f35a953efa53a453511ff04a49f5f286ff18af51a6bfec3aa17061f', 'validated', '{"audio_key":"a6401ebd43b63f2580dbe3805af2c2c1d113ce9df44fc3fbe795a6da58ee7a1d","entity_key":"d_register_social_positioning_03:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"5831f3127f35a953efa53a453511ff04a49f5f286ff18af51a6bfec3aa17061f","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/a6401ebd43b63f2580dbe3805af2c2c1d113ce9df44fc3fbe795a6da58ee7a1d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_social_positioning_01:2 -> audio/generated/de-DE/dialogues/a7580cd62fa413b216335e23ddb1fcedc56f6b011d42d0134c5ba719d246a71a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('788cde82-c15a-57e1-a444-eba1d75b34a7', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_social_positioning_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '806256309a0bcc1dd859a42e489ced683089c9d75a2aeb48554e39420ad6f390'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dda8cb43-495a-5721-a6ca-2d15d4969c04', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('788cde82-c15a-57e1-a444-eba1d75b34a7', 1), '806256309a0bcc1dd859a42e489ced683089c9d75a2aeb48554e39420ad6f390',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a7580cd62fa413b216335e23ddb1fcedc56f6b011d42d0134c5ba719d246a71a.mp3', 3604, '2026-09-13 11:18:07.971328', 'b934dc99f7ca1ede86357e1cf9ffafa6394aaafff509fe92b5cd19341032df48', 'validated', '{"audio_key":"a7580cd62fa413b216335e23ddb1fcedc56f6b011d42d0134c5ba719d246a71a","entity_key":"d_register_social_positioning_01:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"b934dc99f7ca1ede86357e1cf9ffafa6394aaafff509fe92b5cd19341032df48","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/a7580cd62fa413b216335e23ddb1fcedc56f6b011d42d0134c5ba719d246a71a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_social_positioning_01:1 -> audio/generated/de-DE/dialogues/a9002dc16aef987193d0f64b911dd3fb96703c8f133aa5154102197886b44c24.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e23229ea-d6dd-5d0f-8fb1-cb73d4a54fbe', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_social_positioning_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2901e642dcc53aef61f0d06faeb17e9afb8ed61e3fe0492d98f0f8bcc38661c2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d297e13b-c1b0-521e-b473-e9054c74f876', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e23229ea-d6dd-5d0f-8fb1-cb73d4a54fbe', 1), '2901e642dcc53aef61f0d06faeb17e9afb8ed61e3fe0492d98f0f8bcc38661c2',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a9002dc16aef987193d0f64b911dd3fb96703c8f133aa5154102197886b44c24.mp3', 4362, '2026-09-13 11:18:08.078963', '5b014a33305e7dae8b635f417c878b88687ad535ed85ddea827083ee9379c8d2', 'validated', '{"audio_key":"a9002dc16aef987193d0f64b911dd3fb96703c8f133aa5154102197886b44c24","entity_key":"d_register_social_positioning_01:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"5b014a33305e7dae8b635f417c878b88687ad535ed85ddea827083ee9379c8d2","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/a9002dc16aef987193d0f64b911dd3fb96703c8f133aa5154102197886b44c24.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_systems_causality_feedback_02:3 -> audio/generated/de-DE/dialogues/b06d8986c0a5c051ad4115fdb91056d42f52b19386804443f6b150b1787a5734.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('da1dcd8d-f658-538c-9cfb-d13baf83ddab', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_systems_causality_feedback_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f82b1f7041a2af7e33ce73af122773138133ed8e335f81302ab4b64ac69e021e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('54767bd7-efc7-5eca-8a8d-544cca5d2fc5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('da1dcd8d-f658-538c-9cfb-d13baf83ddab', 1), 'f82b1f7041a2af7e33ce73af122773138133ed8e335f81302ab4b64ac69e021e',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b06d8986c0a5c051ad4115fdb91056d42f52b19386804443f6b150b1787a5734.mp3', 3422, '2026-09-13 11:18:09.256733', '44672144ad7bddca0849d0c542c332d1d0e983bd36c8fc5b33e631c76a28ca8a', 'validated', '{"audio_key":"b06d8986c0a5c051ad4115fdb91056d42f52b19386804443f6b150b1787a5734","entity_key":"d_systems_causality_feedback_02:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"44672144ad7bddca0849d0c542c332d1d0e983bd36c8fc5b33e631c76a28ca8a","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/b06d8986c0a5c051ad4115fdb91056d42f52b19386804443f6b150b1787a5734.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_rhetorical_strategy_diagnostics_02:3 -> audio/generated/de-DE/dialogues/b07cbd6fea978893e1e66eeee97c05e7aad4b2c0e412db1b8ac1b8c7b22ebac7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ccc65745-932d-5331-b9ed-721031d8fbc0', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_rhetorical_strategy_diagnostics_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5789712ccb8fac6c8b20d2eb3efee262f2c259dee5a7f64d77a3a0bcbf833ee3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('efbf36e7-56ca-5d39-bde3-85394d8841a4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ccc65745-932d-5331-b9ed-721031d8fbc0', 1), '5789712ccb8fac6c8b20d2eb3efee262f2c259dee5a7f64d77a3a0bcbf833ee3',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b07cbd6fea978893e1e66eeee97c05e7aad4b2c0e412db1b8ac1b8c7b22ebac7.mp3', 5276, '2026-09-13 11:18:09.916159', 'c30a7579d0fcdaecd12ba92c240a391fca1b31fc4ef62178cbd669b92cb11874', 'validated', '{"audio_key":"b07cbd6fea978893e1e66eeee97c05e7aad4b2c0e412db1b8ac1b8c7b22ebac7","entity_key":"d_rhetorical_strategy_diagnostics_02:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"c30a7579d0fcdaecd12ba92c240a391fca1b31fc4ef62178cbd669b92cb11874","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/b07cbd6fea978893e1e66eeee97c05e7aad4b2c0e412db1b8ac1b8c7b22ebac7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_implicit_stance_subtext_03:4 -> audio/generated/de-DE/dialogues/b0b761279ae8ca790d1ed48d017b58eba0c6354b309f285a6e9ee6ca4f0bd306.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0f34f623-9fd8-5600-a3e1-2b4dac770b65', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_implicit_stance_subtext_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7bd91f3e9fcd2b83aade76c33b913af0ff6c4d75826f74ad93b781ef69fbf647'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('87e1bca5-bb4a-5722-8914-6171e11b12d5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0f34f623-9fd8-5600-a3e1-2b4dac770b65', 1), '7bd91f3e9fcd2b83aade76c33b913af0ff6c4d75826f74ad93b781ef69fbf647',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b0b761279ae8ca790d1ed48d017b58eba0c6354b309f285a6e9ee6ca4f0bd306.mp3', 5616, '2026-09-13 11:18:10.776072', 'b66e8dfa3363fc2472da7af1284d7ec46bf391cf82f43cf5b3fcd11452f617a0', 'validated', '{"audio_key":"b0b761279ae8ca790d1ed48d017b58eba0c6354b309f285a6e9ee6ca4f0bd306","entity_key":"d_implicit_stance_subtext_03:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"b66e8dfa3363fc2472da7af1284d7ec46bf391cf82f43cf5b3fcd11452f617a0","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/b0b761279ae8ca790d1ed48d017b58eba0c6354b309f285a6e9ee6ca4f0bd306.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_high_stakes_discursive_intervention_02:1 -> audio/generated/de-DE/dialogues/b1b2e1a9d8191a3126126bd211f6d0adc3cf2b652aa6f52dab347654da0eec18.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ba1860ee-78a7-57e6-aee0-68f685126004', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_high_stakes_discursive_intervention_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '346574c75801a4ebe3213f22c5ed114a0152664798f3aa5bfd91f0a8aad83336'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fac8fe65-c7b6-57ec-832a-6826b0e0be9e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ba1860ee-78a7-57e6-aee0-68f685126004', 1), '346574c75801a4ebe3213f22c5ed114a0152664798f3aa5bfd91f0a8aad83336',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b1b2e1a9d8191a3126126bd211f6d0adc3cf2b652aa6f52dab347654da0eec18.mp3', 4179, '2026-09-13 11:18:11.277356', 'b359cc3d0db48856d694cccaccdda4c3dfd7ea29fe673ab1a0a99a9c928fef9e', 'validated', '{"audio_key":"b1b2e1a9d8191a3126126bd211f6d0adc3cf2b652aa6f52dab347654da0eec18","entity_key":"d_high_stakes_discursive_intervention_02:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"b359cc3d0db48856d694cccaccdda4c3dfd7ea29fe673ab1a0a99a9c928fef9e","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/b1b2e1a9d8191a3126126bd211f6d0adc3cf2b652aa6f52dab347654da0eec18.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_rhetorical_strategy_diagnostics_01:3 -> audio/generated/de-DE/dialogues/b2b8c07db76794d6948692920043c1fd73fabdc5c78609be66838cde862cc9d3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('07a6f08f-6543-53e4-a658-93c2381dea3b', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_rhetorical_strategy_diagnostics_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '216cd6cf7caa56754cd7668f93eb1af2efe8e9b348e462bed2d361159d6686a9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('da87ec4c-fa50-5d10-ae16-8956dd3fbb3d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('07a6f08f-6543-53e4-a658-93c2381dea3b', 1), '216cd6cf7caa56754cd7668f93eb1af2efe8e9b348e462bed2d361159d6686a9',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b2b8c07db76794d6948692920043c1fd73fabdc5c78609be66838cde862cc9d3.mp3', 3186, '2026-09-13 11:18:12.331876', 'a3e5cff5b56b521d691e97c446fa07f2748ddba62bfd9bef3905fe74e4d31068', 'validated', '{"audio_key":"b2b8c07db76794d6948692920043c1fd73fabdc5c78609be66838cde862cc9d3","entity_key":"d_rhetorical_strategy_diagnostics_01:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"a3e5cff5b56b521d691e97c446fa07f2748ddba62bfd9bef3905fe74e4d31068","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/b2b8c07db76794d6948692920043c1fd73fabdc5c78609be66838cde862cc9d3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_implicit_stance_subtext_02:1 -> audio/generated/de-DE/dialogues/b47607bd20f03fabdb03b815f4991e4020ffbeb71c02265b332085047966dae7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5a0473bb-de0f-5f71-b8f8-0b2ab09aa605', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_implicit_stance_subtext_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4d1f7df3a1ba3a3a30972a9dfdf04e52e13dc252ba35c749b0f861d2da93a95c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('093af14a-a948-5d14-acf9-94ffbe2524fe', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5a0473bb-de0f-5f71-b8f8-0b2ab09aa605', 1), '4d1f7df3a1ba3a3a30972a9dfdf04e52e13dc252ba35c749b0f861d2da93a95c',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b47607bd20f03fabdb03b815f4991e4020ffbeb71c02265b332085047966dae7.mp3', 3526, '2026-09-13 11:18:12.564822', '3fabdd80749c00c6ff73de7d8ae52da71d44951f76fea34de6d84fb8b1b23b0e', 'validated', '{"audio_key":"b47607bd20f03fabdb03b815f4991e4020ffbeb71c02265b332085047966dae7","entity_key":"d_implicit_stance_subtext_02:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"3fabdd80749c00c6ff73de7d8ae52da71d44951f76fea34de6d84fb8b1b23b0e","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/b47607bd20f03fabdb03b815f4991e4020ffbeb71c02265b332085047966dae7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_polyphonic_source_synthesis_02:4 -> audio/generated/de-DE/dialogues/b78e6805ef6406b835b47698a4342a3129668bae361988b412a89e4c88caf473.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fd846c9b-3f13-55a5-8fd1-3f1bf626a2f5', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_polyphonic_source_synthesis_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3ad80f033a13ea1e1fd0dfe6e4f9d87204391b9fac64777c694448d5a6465d22'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8e6c2183-2b1e-5664-a8a5-f0fdec7ff9c3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fd846c9b-3f13-55a5-8fd1-3f1bf626a2f5', 1), '3ad80f033a13ea1e1fd0dfe6e4f9d87204391b9fac64777c694448d5a6465d22',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b78e6805ef6406b835b47698a4342a3129668bae361988b412a89e4c88caf473.mp3', 3108, '2026-09-13 11:18:13.567738', 'bf427a94c1c5b756bb3de1936c776022273d5c59f9cc895b25ae10a3427f9c09', 'validated', '{"audio_key":"b78e6805ef6406b835b47698a4342a3129668bae361988b412a89e4c88caf473","entity_key":"d_polyphonic_source_synthesis_02:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"bf427a94c1c5b756bb3de1936c776022273d5c59f9cc895b25ae10a3427f9c09","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/b78e6805ef6406b835b47698a4342a3129668bae361988b412a89e4c88caf473.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_polyphonic_source_synthesis_03:4 -> audio/generated/de-DE/dialogues/b87316910199f4e6249d947228e04936e99026c443b6f22ea8f7d777bc1fb2ab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e1ee5bc1-eb41-5d06-a8dc-df33af3b7721', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_polyphonic_source_synthesis_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5a52b211d889d426565ddb448befdc1d089c7e25a20d5b41dc07bf1f4c262da7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a695ea5a-fdda-5feb-9b4e-1dd4c4e42974', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e1ee5bc1-eb41-5d06-a8dc-df33af3b7721', 1), '5a52b211d889d426565ddb448befdc1d089c7e25a20d5b41dc07bf1f4c262da7',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b87316910199f4e6249d947228e04936e99026c443b6f22ea8f7d777bc1fb2ab.mp3', 3056, '2026-09-13 11:18:13.782606', 'ea50b9db9fef7bd2606088f01b39958b7b3cd81dce6c6b357e95adc4dc346945', 'validated', '{"audio_key":"b87316910199f4e6249d947228e04936e99026c443b6f22ea8f7d777bc1fb2ab","entity_key":"d_polyphonic_source_synthesis_03:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"ea50b9db9fef7bd2606088f01b39958b7b3cd81dce6c6b357e95adc4dc346945","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/b87316910199f4e6249d947228e04936e99026c443b6f22ea8f7d777bc1fb2ab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_high_stakes_discursive_intervention_01:4 -> audio/generated/de-DE/dialogues/bd3ba59cc1d1550860c7faedb36f6c75a82764274e4781f2facbddf8b82f2e1d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0961aa3d-42ca-5981-bf98-520b0cc95965', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_high_stakes_discursive_intervention_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '73a596c73fc0e40c9ac504b94c48fa895d327fb0ed14dfb6a803227a40af2ccb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4a4ccc37-4eaa-58aa-ae9e-eed72b352351', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0961aa3d-42ca-5981-bf98-520b0cc95965', 1), '73a596c73fc0e40c9ac504b94c48fa895d327fb0ed14dfb6a803227a40af2ccb',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/bd3ba59cc1d1550860c7faedb36f6c75a82764274e4781f2facbddf8b82f2e1d.mp3', 4362, '2026-09-13 11:18:14.925581', '3747fac86ad6743a1485ec0c528663fa0bbbdaaf247f257bcf3a09c88507addc', 'validated', '{"audio_key":"bd3ba59cc1d1550860c7faedb36f6c75a82764274e4781f2facbddf8b82f2e1d","entity_key":"d_high_stakes_discursive_intervention_01:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"3747fac86ad6743a1485ec0c528663fa0bbbdaaf247f257bcf3a09c88507addc","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/bd3ba59cc1d1550860c7faedb36f6c75a82764274e4781f2facbddf8b82f2e1d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_polyphonic_source_synthesis_02:1 -> audio/generated/de-DE/dialogues/c369368cbe06ab0f8ccbb04c32b81cbfc82f8205e4af87685f8eaf376eed567b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('06a4f055-9966-5ed1-b827-467e91fd4439', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_polyphonic_source_synthesis_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9417ddfe4aaa07e914edf83383b30754cad395bf630188c006939dddd06e5a4d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ba7635dd-0302-5c0c-930c-a84a09fbf092', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('06a4f055-9966-5ed1-b827-467e91fd4439', 1), '9417ddfe4aaa07e914edf83383b30754cad395bf630188c006939dddd06e5a4d',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c369368cbe06ab0f8ccbb04c32b81cbfc82f8205e4af87685f8eaf376eed567b.mp3', 2403, '2026-09-13 11:18:14.922605', '0ce79e81da4c4bcf2198d94557f0c664986eaf96067128a128389163fdf5436e', 'validated', '{"audio_key":"c369368cbe06ab0f8ccbb04c32b81cbfc82f8205e4af87685f8eaf376eed567b","entity_key":"d_polyphonic_source_synthesis_02:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"0ce79e81da4c4bcf2198d94557f0c664986eaf96067128a128389163fdf5436e","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/c369368cbe06ab0f8ccbb04c32b81cbfc82f8205e4af87685f8eaf376eed567b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_social_positioning_01:4 -> audio/generated/de-DE/dialogues/c4c7487844fe8d14532bd7aeed48bd71e51ba40765b251bdaf4882e59ee0b350.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('142bf2ac-ecc0-5e13-874c-6fd0bd1d743c', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_social_positioning_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2854e67afeae0e750367a5909df0342e4036bca996f214aae808ccf59eb035dd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ef44e341-f5bb-5a17-84f8-190723087dcb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('142bf2ac-ecc0-5e13-874c-6fd0bd1d743c', 1), '2854e67afeae0e750367a5909df0342e4036bca996f214aae808ccf59eb035dd',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c4c7487844fe8d14532bd7aeed48bd71e51ba40765b251bdaf4882e59ee0b350.mp3', 3996, '2026-09-13 11:18:16.294954', '0b8567b1cf18c5370611c355c6550737f7597e3480d159553e38ee9a82a06061', 'validated', '{"audio_key":"c4c7487844fe8d14532bd7aeed48bd71e51ba40765b251bdaf4882e59ee0b350","entity_key":"d_register_social_positioning_01:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"0b8567b1cf18c5370611c355c6550737f7597e3480d159553e38ee9a82a06061","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/c4c7487844fe8d14532bd7aeed48bd71e51ba40765b251bdaf4882e59ee0b350.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_interpret_reframe_position_capstone_01:2 -> audio/generated/de-DE/dialogues/c52bdd6f304f504cedcc33a59245498abffc1d15a4eeacb231c60981af8577a1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0d1d6d8e-9362-54a2-aa49-3fa6b7cdee6a', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_interpret_reframe_position_capstone_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1bef25c94c0d4ba475fcc3e3528dc0122c74dd318f8e5a18f366c4afac9813d6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7d97ae6c-4042-5387-adef-2522f155bde0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0d1d6d8e-9362-54a2-aa49-3fa6b7cdee6a', 1), '1bef25c94c0d4ba475fcc3e3528dc0122c74dd318f8e5a18f366c4afac9813d6',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c52bdd6f304f504cedcc33a59245498abffc1d15a4eeacb231c60981af8577a1.mp3', 6817, '2026-09-13 11:18:16.561297', '25ade90d2a3da54194b47d19629bcbc8c8b7b6e77058045b5e1b5709fa28cea7', 'validated', '{"audio_key":"c52bdd6f304f504cedcc33a59245498abffc1d15a4eeacb231c60981af8577a1","entity_key":"d_interpret_reframe_position_capstone_01:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"25ade90d2a3da54194b47d19629bcbc8c8b7b6e77058045b5e1b5709fa28cea7","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/c52bdd6f304f504cedcc33a59245498abffc1d15a4eeacb231c60981af8577a1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_systems_causality_feedback_03:1 -> audio/generated/de-DE/dialogues/c7815425162e5b7bbe83db8e24c7df666244802d3fe623249cd4eb7a4a5da3c0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e9789068-04ad-56d1-9846-d17363227945', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_systems_causality_feedback_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4fa73c80e8ec76a96b68872c4d31c340ee6cfcccedcac58a3e6cc6f8873e0774'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6177d3af-2e5e-5952-9a1d-df279f4e644b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e9789068-04ad-56d1-9846-d17363227945', 1), '4fa73c80e8ec76a96b68872c4d31c340ee6cfcccedcac58a3e6cc6f8873e0774',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c7815425162e5b7bbe83db8e24c7df666244802d3fe623249cd4eb7a4a5da3c0.mp3', 3787, '2026-09-13 11:18:17.646906', 'b4cad5a358115f1ed9bfcf9e7a485d4612a1f52904469595984a0fec127ec984', 'validated', '{"audio_key":"c7815425162e5b7bbe83db8e24c7df666244802d3fe623249cd4eb7a4a5da3c0","entity_key":"d_systems_causality_feedback_03:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"b4cad5a358115f1ed9bfcf9e7a485d4612a1f52904469595984a0fec127ec984","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/c7815425162e5b7bbe83db8e24c7df666244802d3fe623249cd4eb7a4a5da3c0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_argument_premises_fallacies_01:1 -> audio/generated/de-DE/dialogues/c7b41f063a2ef64fa064cfabc7bf087572c57c7c69c40a9d7eafa135efa435a9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9f6b8a1d-f346-5b7d-b82f-9d14fbd7d502', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_argument_premises_fallacies_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5e5cbdddef025419db0745990ea039756f8e0b7e80c5ab9320d0c374b644f847'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ff22f293-be9b-5493-8f3b-5a453e102ea5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9f6b8a1d-f346-5b7d-b82f-9d14fbd7d502', 1), '5e5cbdddef025419db0745990ea039756f8e0b7e80c5ab9320d0c374b644f847',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c7b41f063a2ef64fa064cfabc7bf087572c57c7c69c40a9d7eafa135efa435a9.mp3', 5146, '2026-09-13 11:18:18.063529', '51c711e84559b37c3102f81ecbd0b6159e69fc7bc645d862c961da9fa85794e1', 'validated', '{"audio_key":"c7b41f063a2ef64fa064cfabc7bf087572c57c7c69c40a9d7eafa135efa435a9","entity_key":"d_argument_premises_fallacies_01:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"51c711e84559b37c3102f81ecbd0b6159e69fc7bc645d862c961da9fa85794e1","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/c7b41f063a2ef64fa064cfabc7bf087572c57c7c69c40a9d7eafa135efa435a9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_interpret_reframe_position_capstone_02:2 -> audio/generated/de-DE/dialogues/ced23a52718364722594a3ec64bb599a6696788146ddcc0a9b60b0b916fe03c0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('75a36a04-5797-547c-bcda-a1ea04f1c520', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_interpret_reframe_position_capstone_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f1e9ca1c5126b07e84a23bf6e2af4bd4ff502b682f66567f62e6dcfe0eda7569'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a48b5b3e-8617-5b50-ac06-959ba751f1c4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('75a36a04-5797-547c-bcda-a1ea04f1c520', 1), 'f1e9ca1c5126b07e84a23bf6e2af4bd4ff502b682f66567f62e6dcfe0eda7569',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ced23a52718364722594a3ec64bb599a6696788146ddcc0a9b60b0b916fe03c0.mp3', 3787, '2026-09-13 11:18:18.995326', 'd507c53e5e91d2b46a695a3ee4ee5b3bd46c25e6bb2bd4939a1e29db4ed632ef', 'validated', '{"audio_key":"ced23a52718364722594a3ec64bb599a6696788146ddcc0a9b60b0b916fe03c0","entity_key":"d_interpret_reframe_position_capstone_02:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"d507c53e5e91d2b46a695a3ee4ee5b3bd46c25e6bb2bd4939a1e29db4ed632ef","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/ced23a52718364722594a3ec64bb599a6696788146ddcc0a9b60b0b916fe03c0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_irony_indirect_critique_02:2 -> audio/generated/de-DE/dialogues/d1c9faee15e80bfad704f3c080335d85d86648a8a81ee6d67008eb4f55bdd94c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1e046f32-7eeb-551b-9307-9550a10211cc', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_irony_indirect_critique_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd1c56bdf168980c8be7da8c20c2991ea0ba37a1e4be58e36d3e25ffe0677b480'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('08e2a975-84f5-5d0b-90dc-b1910bbf9492', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1e046f32-7eeb-551b-9307-9550a10211cc', 1), 'd1c56bdf168980c8be7da8c20c2991ea0ba37a1e4be58e36d3e25ffe0677b480',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d1c9faee15e80bfad704f3c080335d85d86648a8a81ee6d67008eb4f55bdd94c.mp3', 3892, '2026-09-13 11:18:19.404344', '2d36cd93b9b1ee933471ab623812df0ef39006109f9b4616d958adac80c2a03d', 'validated', '{"audio_key":"d1c9faee15e80bfad704f3c080335d85d86648a8a81ee6d67008eb4f55bdd94c","entity_key":"d_irony_indirect_critique_02:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"2d36cd93b9b1ee933471ab623812df0ef39006109f9b4616d958adac80c2a03d","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/d1c9faee15e80bfad704f3c080335d85d86648a8a81ee6d67008eb4f55bdd94c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_interpret_reframe_position_capstone_01:1 -> audio/generated/de-DE/dialogues/d46ce396c816235e6eaba67a1b5b15247da126843818c050dec924efa6e3e073.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cebe72c7-0fc7-5c97-9b38-9c342d5419c2', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_interpret_reframe_position_capstone_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7b059be6740f464b6998006680745b5e7e781d54ae9bf3fe75c32a52beeff074'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('233cfefc-dfce-55c4-8d14-32e2c7fab150', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cebe72c7-0fc7-5c97-9b38-9c342d5419c2', 1), '7b059be6740f464b6998006680745b5e7e781d54ae9bf3fe75c32a52beeff074',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d46ce396c816235e6eaba67a1b5b15247da126843818c050dec924efa6e3e073.mp3', 5511, '2026-09-13 11:18:20.569997', '08bdd39faaf729d43840cb369cb478eef643636e154a6d3cdaba60fea3544052', 'validated', '{"audio_key":"d46ce396c816235e6eaba67a1b5b15247da126843818c050dec924efa6e3e073","entity_key":"d_interpret_reframe_position_capstone_01:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"08bdd39faaf729d43840cb369cb478eef643636e154a6d3cdaba60fea3544052","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/d46ce396c816235e6eaba67a1b5b15247da126843818c050dec924efa6e3e073.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_argument_premises_fallacies_03:2 -> audio/generated/de-DE/dialogues/d88f060fd9910106aab81e6f4eb63e8dd72aaba4c2e8c7dd5945349a9fbf9e62.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6d6bef0f-22af-5213-982d-09ccec963448', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_argument_premises_fallacies_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '486549735595a04f455f90a4e902c578e2653bb0d2a149812b174fcb2840997d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('193fc290-76af-5cf3-9b53-274e03bb37dc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6d6bef0f-22af-5213-982d-09ccec963448', 1), '486549735595a04f455f90a4e902c578e2653bb0d2a149812b174fcb2840997d',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d88f060fd9910106aab81e6f4eb63e8dd72aaba4c2e8c7dd5945349a9fbf9e62.mp3', 6034, '2026-09-13 11:18:20.990090', 'bf8b89adfa8a258d8ca25e3c283d2fadc30016a34163b3861cba87990e66aa9c', 'validated', '{"audio_key":"d88f060fd9910106aab81e6f4eb63e8dd72aaba4c2e8c7dd5945349a9fbf9e62","entity_key":"d_argument_premises_fallacies_03:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"bf8b89adfa8a258d8ca25e3c283d2fadc30016a34163b3861cba87990e66aa9c","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/d88f060fd9910106aab81e6f4eb63e8dd72aaba4c2e8c7dd5945349a9fbf9e62.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_rhetorical_strategy_diagnostics_02:4 -> audio/generated/de-DE/dialogues/dc25f07e448af681d0f2b8842170ad689cbf0f86ad5737108b357b8ffea2e17a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a9aac4d8-7993-5464-92ee-91bb89252f7b', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_rhetorical_strategy_diagnostics_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '72373c0fb08a4334d1f8e6ca16bf66de4f32b89f6826e1d579f898c6b18e58a5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('142b7a8d-34f2-5cc7-b273-2d33ad96ed4b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a9aac4d8-7993-5464-92ee-91bb89252f7b', 1), '72373c0fb08a4334d1f8e6ca16bf66de4f32b89f6826e1d579f898c6b18e58a5',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/dc25f07e448af681d0f2b8842170ad689cbf0f86ad5737108b357b8ffea2e17a.mp3', 3160, '2026-09-13 11:18:21.774624', '392b4233eef8df93f5fcc398c45b00c04b6ee07e00c9cc8a6c2301e59d4ed494', 'validated', '{"audio_key":"dc25f07e448af681d0f2b8842170ad689cbf0f86ad5737108b357b8ffea2e17a","entity_key":"d_rhetorical_strategy_diagnostics_02:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"392b4233eef8df93f5fcc398c45b00c04b6ee07e00c9cc8a6c2301e59d4ed494","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/dc25f07e448af681d0f2b8842170ad689cbf0f86ad5737108b357b8ffea2e17a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_implicit_stance_subtext_02:4 -> audio/generated/de-DE/dialogues/dea3525aa2e659e78d8521eea7910190e4b3099c2e2e0f92a4a99fad9421e73b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('63fb1edf-167b-5713-afd1-d29271d72baf', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_implicit_stance_subtext_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9f84fd832f6865a32d0fb0469b2da6637221497bf60896f910b1a403474b986b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cd8fcea9-168a-5f59-8f34-3f7a3b5cb04a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('63fb1edf-167b-5713-afd1-d29271d72baf', 1), '9f84fd832f6865a32d0fb0469b2da6637221497bf60896f910b1a403474b986b',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/dea3525aa2e659e78d8521eea7910190e4b3099c2e2e0f92a4a99fad9421e73b.mp3', 3004, '2026-09-13 11:18:22.192230', '4473ba5bb9a3baa214f1baef39d5442f58e43af39d4cec50195db7f0326197c5', 'validated', '{"audio_key":"dea3525aa2e659e78d8521eea7910190e4b3099c2e2e0f92a4a99fad9421e73b","entity_key":"d_implicit_stance_subtext_02:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"4473ba5bb9a3baa214f1baef39d5442f58e43af39d4cec50195db7f0326197c5","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/dea3525aa2e659e78d8521eea7910190e4b3099c2e2e0f92a4a99fad9421e73b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_systems_causality_feedback_01:1 -> audio/generated/de-DE/dialogues/df0f082040493d99744b1093db2495aa4055c856ecd12cb5ccdb26597c6f818d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4d60452c-3e0d-526e-93b1-6b240f80b71e', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_systems_causality_feedback_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fb2a15082cf8f7fe1e7610510a81a1abfe97ab1a3ddf9eb3f58fc6437db2256e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3f4999c3-c822-5caa-a611-f50ee8764e69', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4d60452c-3e0d-526e-93b1-6b240f80b71e', 1), 'fb2a15082cf8f7fe1e7610510a81a1abfe97ab1a3ddf9eb3f58fc6437db2256e',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/df0f082040493d99744b1093db2495aa4055c856ecd12cb5ccdb26597c6f818d.mp3', 4911, '2026-09-13 11:18:23.247275', 'f293f1ab7620dd282bb0a6b830ba85e4000aa11ad2af1c1c319c692e57802fc0', 'validated', '{"audio_key":"df0f082040493d99744b1093db2495aa4055c856ecd12cb5ccdb26597c6f818d","entity_key":"d_systems_causality_feedback_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"f293f1ab7620dd282bb0a6b830ba85e4000aa11ad2af1c1c319c692e57802fc0","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/df0f082040493d99744b1093db2495aa4055c856ecd12cb5ccdb26597c6f818d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_polyphonic_source_synthesis_02:2 -> audio/generated/de-DE/dialogues/e0c3be66c38b32f3772b5a20a44bf516760b4c1c81bc91d3ccb7db3376ce7f14.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('20ac8f56-e5cc-5f9f-b8b2-a5959e0accde', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_polyphonic_source_synthesis_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5b04a6375908b18e8dd0783205b69615acf230378a0e405c105dca37c4dff339'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b7333429-ab6d-5be0-8589-1157226e71e6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('20ac8f56-e5cc-5f9f-b8b2-a5959e0accde', 1), '5b04a6375908b18e8dd0783205b69615acf230378a0e405c105dca37c4dff339',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e0c3be66c38b32f3772b5a20a44bf516760b4c1c81bc91d3ccb7db3376ce7f14.mp3', 5564, '2026-09-13 11:18:23.720925', 'd8f97e215f502d544da2f6807440bf44eeb2871e79f45aba3192561c4b9f62c3', 'validated', '{"audio_key":"e0c3be66c38b32f3772b5a20a44bf516760b4c1c81bc91d3ccb7db3376ce7f14","entity_key":"d_polyphonic_source_synthesis_02:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"d8f97e215f502d544da2f6807440bf44eeb2871e79f45aba3192561c4b9f62c3","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/e0c3be66c38b32f3772b5a20a44bf516760b4c1c81bc91d3ccb7db3376ce7f14.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_argument_premises_fallacies_02:4 -> audio/generated/de-DE/dialogues/e49f74d83a86ab826ce659635966b163f2c0bf9bcd5208851a5e1d9eeaec4a92.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2e9c6c97-35cd-5943-8d45-02ed49cdc155', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_argument_premises_fallacies_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'baaa72a22e5a9aaebd0899fdad3ade05dc1ae44410c1519288f0d1da977daf88'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('70f6f7a8-0ab5-5b73-bb0c-a09f8dcff8f5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2e9c6c97-35cd-5943-8d45-02ed49cdc155', 1), 'baaa72a22e5a9aaebd0899fdad3ade05dc1ae44410c1519288f0d1da977daf88',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e49f74d83a86ab826ce659635966b163f2c0bf9bcd5208851a5e1d9eeaec4a92.mp3', 3892, '2026-09-13 11:18:24.548034', '481f8bfb459b165ee3c58ce86520dd9d22364762377402a86a5534dbd80fd19a', 'validated', '{"audio_key":"e49f74d83a86ab826ce659635966b163f2c0bf9bcd5208851a5e1d9eeaec4a92","entity_key":"d_argument_premises_fallacies_02:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"481f8bfb459b165ee3c58ce86520dd9d22364762377402a86a5534dbd80fd19a","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/e49f74d83a86ab826ce659635966b163f2c0bf9bcd5208851a5e1d9eeaec4a92.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_polyphonic_source_synthesis_03:2 -> audio/generated/de-DE/dialogues/e68055385708219b73ce895ce0f9f46bce26c6f59b84a2a2b743dc064625ccb0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1bb305a7-5923-5f6d-84f9-d3c252003e5c', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_polyphonic_source_synthesis_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '50bdf37198b81e3c005bb53e0adaaae1b91c33be13e5ba4aad166a287c2506de'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('052bd6b4-229a-52a8-a30f-20f997d80b5d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1bb305a7-5923-5f6d-84f9-d3c252003e5c', 1), '50bdf37198b81e3c005bb53e0adaaae1b91c33be13e5ba4aad166a287c2506de',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e68055385708219b73ce895ce0f9f46bce26c6f59b84a2a2b743dc064625ccb0.mp3', 7183, '2026-09-13 11:18:25.384911', 'df9eadf5d38d195859b438b68463b607ed06bfd00be6db12f4771fa665c0ba3d', 'validated', '{"audio_key":"e68055385708219b73ce895ce0f9f46bce26c6f59b84a2a2b743dc064625ccb0","entity_key":"d_polyphonic_source_synthesis_03:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"df9eadf5d38d195859b438b68463b607ed06bfd00be6db12f4771fa665c0ba3d","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/e68055385708219b73ce895ce0f9f46bce26c6f59b84a2a2b743dc064625ccb0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_interpret_reframe_position_capstone_02:1 -> audio/generated/de-DE/dialogues/ed329c297ee5a5b13db61a5c33a7773d4bdd962c577e4d300112b0c456a2d152.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('087339cf-2205-54ed-8ac3-3cc732c129a1', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_interpret_reframe_position_capstone_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '08ca9b79dc6d6c71a03861dc89e1ff109ff2c46ac3c61cf19a8f0aa267801195'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('56f29163-fd27-55ad-a644-d2ab68815922', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('087339cf-2205-54ed-8ac3-3cc732c129a1', 1), '08ca9b79dc6d6c71a03861dc89e1ff109ff2c46ac3c61cf19a8f0aa267801195',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ed329c297ee5a5b13db61a5c33a7773d4bdd962c577e4d300112b0c456a2d152.mp3', 3422, '2026-09-13 11:18:25.842751', 'ad3d5ce96d697f60c3fef5af362200cf8d061315bc15d8b4854e3f4ac9f6d4d2', 'validated', '{"audio_key":"ed329c297ee5a5b13db61a5c33a7773d4bdd962c577e4d300112b0c456a2d152","entity_key":"d_interpret_reframe_position_capstone_02:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"ad3d5ce96d697f60c3fef5af362200cf8d061315bc15d8b4854e3f4ac9f6d4d2","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/ed329c297ee5a5b13db61a5c33a7773d4bdd962c577e4d300112b0c456a2d152.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_systems_causality_feedback_02:2 -> audio/generated/de-DE/dialogues/ede0a50d752c9eb21af00c845f3ccb5fc89dae3c88bc75cfc9fa2798116e7cec.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f9b5570f-edde-5f90-a706-e9f9564d412c', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_systems_causality_feedback_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0394352e4d321c0c39e2e6c14eea3ec4870b0568914e31a655e3254269cd5694'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9cafae4c-5f0c-55bf-ac2c-53d8436d4a59', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f9b5570f-edde-5f90-a706-e9f9564d412c', 1), '0394352e4d321c0c39e2e6c14eea3ec4870b0568914e31a655e3254269cd5694',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ede0a50d752c9eb21af00c845f3ccb5fc89dae3c88bc75cfc9fa2798116e7cec.mp3', 6347, '2026-09-13 11:18:27.026873', '054ad8843fbe2f851d2d22346520daef2bd963beff83a6257452507fb721427f', 'validated', '{"audio_key":"ede0a50d752c9eb21af00c845f3ccb5fc89dae3c88bc75cfc9fa2798116e7cec","entity_key":"d_systems_causality_feedback_02:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"054ad8843fbe2f851d2d22346520daef2bd963beff83a6257452507fb721427f","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/ede0a50d752c9eb21af00c845f3ccb5fc89dae3c88bc75cfc9fa2798116e7cec.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_lexical_precision_collocation_02:1 -> audio/generated/de-DE/dialogues/f03a6883861e49e356aef253ed99dbc0c5fc7d830f6253d2c1a6a3c9de4ad18b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0690177f-824c-5291-8d76-1d33b84bb7b8', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_lexical_precision_collocation_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ad3a5fac4c1f4a4b1bb99d74daaee74972442a2225a8388c52b7695750d63d57'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('72e5a2be-35b2-5e8f-9b7d-64bcd14de575', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0690177f-824c-5291-8d76-1d33b84bb7b8', 1), 'ad3a5fac4c1f4a4b1bb99d74daaee74972442a2225a8388c52b7695750d63d57',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f03a6883861e49e356aef253ed99dbc0c5fc7d830f6253d2c1a6a3c9de4ad18b.mp3', 3578, '2026-09-13 11:18:27.168976', '23f9b26c0b70d39166274c278037b70b673b2208f8258ab5414ff219600a166e', 'validated', '{"audio_key":"f03a6883861e49e356aef253ed99dbc0c5fc7d830f6253d2c1a6a3c9de4ad18b","entity_key":"d_lexical_precision_collocation_02:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"23f9b26c0b70d39166274c278037b70b673b2208f8258ab5414ff219600a166e","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/f03a6883861e49e356aef253ed99dbc0c5fc7d830f6253d2c1a6a3c9de4ad18b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_interpret_reframe_position_capstone_03:3 -> audio/generated/de-DE/dialogues/f24dbe904143a570d819ff44f574c1593fc096de4e6684d984e201ce9c80db8c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5febac34-1943-5265-a1fb-f62eb0e34056', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_interpret_reframe_position_capstone_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ace6ced05cb53db63dce1392335e178df6a6955a194b5cf7e01555e7bb900821'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('73617d9d-4541-58ca-be24-e2cf1c62f40c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5febac34-1943-5265-a1fb-f62eb0e34056', 1), 'ace6ced05cb53db63dce1392335e178df6a6955a194b5cf7e01555e7bb900821',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f24dbe904143a570d819ff44f574c1593fc096de4e6684d984e201ce9c80db8c.mp3', 3761, '2026-09-13 11:18:28.295723', '3c544b0d37c61c576f229fe33be16df5f090ecf87564934fffc4b4c05ce574e6', 'validated', '{"audio_key":"f24dbe904143a570d819ff44f574c1593fc096de4e6684d984e201ce9c80db8c","entity_key":"d_interpret_reframe_position_capstone_03:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3c544b0d37c61c576f229fe33be16df5f090ecf87564934fffc4b4c05ce574e6","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/f24dbe904143a570d819ff44f574c1593fc096de4e6684d984e201ce9c80db8c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_irony_indirect_critique_02:4 -> audio/generated/de-DE/dialogues/f2df7083ace5c305458f1be8f586c7b01a447c4dc743af13344d6f50441177d6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('afe35636-4a91-5d73-adf1-872ffc492d9d', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_irony_indirect_critique_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '34a9caf54cbe0bb8cc857fc61c1abbd8a3fdcc6efa487151f41199ff102223f2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('208dd715-a969-5bdb-a0ed-c0dcf8767cea', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('afe35636-4a91-5d73-adf1-872ffc492d9d', 1), '34a9caf54cbe0bb8cc857fc61c1abbd8a3fdcc6efa487151f41199ff102223f2',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f2df7083ace5c305458f1be8f586c7b01a447c4dc743af13344d6f50441177d6.mp3', 3004, '2026-09-13 11:18:28.391703', 'b3d691a834cb1e5d576fd5bb7aa0ccaad8abdc265638136007d142cec0a4ed05', 'validated', '{"audio_key":"f2df7083ace5c305458f1be8f586c7b01a447c4dc743af13344d6f50441177d6","entity_key":"d_irony_indirect_critique_02:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"b3d691a834cb1e5d576fd5bb7aa0ccaad8abdc265638136007d142cec0a4ed05","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/f2df7083ace5c305458f1be8f586c7b01a447c4dc743af13344d6f50441177d6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_irony_indirect_critique_03:3 -> audio/generated/de-DE/dialogues/f7c4cf47b069d21027bce911f726dbaa84252fa8dc7132fcb276d50d4f13801a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3c51c28c-a6e5-531f-a907-e3a16f309922', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_irony_indirect_critique_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b4ce8d7cf7442c0eaf18af431770849daecac10113beab8283a2d3d471d1e0e8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4ba440a7-fa18-5e49-b0a3-a3c42da2bb66', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3c51c28c-a6e5-531f-a907-e3a16f309922', 1), 'b4ce8d7cf7442c0eaf18af431770849daecac10113beab8283a2d3d471d1e0e8',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f7c4cf47b069d21027bce911f726dbaa84252fa8dc7132fcb276d50d4f13801a.mp3', 2690, '2026-09-13 11:18:29.477079', '71e02a62a6fd629407c71bb6a6f602fb36fc33d0da14efab14cf3f43ad408762', 'validated', '{"audio_key":"f7c4cf47b069d21027bce911f726dbaa84252fa8dc7132fcb276d50d4f13801a","entity_key":"d_irony_indirect_critique_03:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"71e02a62a6fd629407c71bb6a6f602fb36fc33d0da14efab14cf3f43ad408762","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/f7c4cf47b069d21027bce911f726dbaa84252fa8dc7132fcb276d50d4f13801a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_high_stakes_discursive_intervention_03:2 -> audio/generated/de-DE/dialogues/f8c2fb5eae0673f20d6b4b857f6d13a582cd40919db327b3fda90a52c296e678.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7f787dba-c59d-5309-a190-58ca395384fc', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_high_stakes_discursive_intervention_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a7eb4fe2c4626a10493c5a1af6c9d225ae165104cd0b2062e41e248db25015fa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f5a0f29d-8f43-5e87-97ed-de05d039bab5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7f787dba-c59d-5309-a190-58ca395384fc', 1), 'a7eb4fe2c4626a10493c5a1af6c9d225ae165104cd0b2062e41e248db25015fa',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f8c2fb5eae0673f20d6b4b857f6d13a582cd40919db327b3fda90a52c296e678.mp3', 5093, '2026-09-13 11:18:29.832479', 'a3a1bef637ec9ee285c990b81a61302e9d3222846ba6c550d09136d63dd91d75', 'validated', '{"audio_key":"f8c2fb5eae0673f20d6b4b857f6d13a582cd40919db327b3fda90a52c296e678","entity_key":"d_high_stakes_discursive_intervention_03:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"a3a1bef637ec9ee285c990b81a61302e9d3222846ba6c550d09136d63dd91d75","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/f8c2fb5eae0673f20d6b4b857f6d13a582cd40919db327b3fda90a52c296e678.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_polyphonic_source_synthesis_01:2 -> audio/generated/de-DE/dialogues/fc0c126bd963d9bad509164515b4bbbab20d26864efdfa2fb8921b3685baf2eb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9d652dbe-7fc8-50f0-b913-9eef16f1253d', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_polyphonic_source_synthesis_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5f72c9b02e7ad7bbf984bd6150d57b1ea269dcc85bbe0f66bf728e8f1dbb4912'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c0fba41a-7690-5221-9666-383d72afb8e2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9d652dbe-7fc8-50f0-b913-9eef16f1253d', 1), '5f72c9b02e7ad7bbf984bd6150d57b1ea269dcc85bbe0f66bf728e8f1dbb4912',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/fc0c126bd963d9bad509164515b4bbbab20d26864efdfa2fb8921b3685baf2eb.mp3', 5694, '2026-09-13 11:18:30.973213', '481c6e6f69094f865fdd0368e961bd3f084a35ae11e37bdd37bc374c72922aff', 'validated', '{"audio_key":"fc0c126bd963d9bad509164515b4bbbab20d26864efdfa2fb8921b3685baf2eb","entity_key":"d_polyphonic_source_synthesis_01:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"481c6e6f69094f865fdd0368e961bd3f084a35ae11e37bdd37bc374c72922aff","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/fc0c126bd963d9bad509164515b4bbbab20d26864efdfa2fb8921b3685baf2eb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_irony_indirect_critique_01:3 -> audio/generated/de-DE/dialogues/fcb4c87f40059dfe9fac1c6ae04d23a404a4b1de24ddba27d65ac8c663b5c74f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cdfebe62-4d6b-5b50-98e1-2de90c38259c', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_irony_indirect_critique_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6a429e553016851c5317cd33fcde06865017f1f955952431c938399df11ae15e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cde86a33-6ec6-58fa-b27a-714076189dad', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cdfebe62-4d6b-5b50-98e1-2de90c38259c', 1), '6a429e553016851c5317cd33fcde06865017f1f955952431c938399df11ae15e',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/fcb4c87f40059dfe9fac1c6ae04d23a404a4b1de24ddba27d65ac8c663b5c74f.mp3', 3343, '2026-09-13 11:18:31.083219', '89dc31fc3637b824cd1960aa24b235fa7a5fafd51ca752417c3ff1eb53f12399', 'validated', '{"audio_key":"fcb4c87f40059dfe9fac1c6ae04d23a404a4b1de24ddba27d65ac8c663b5c74f","entity_key":"d_irony_indirect_critique_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"89dc31fc3637b824cd1960aa24b235fa7a5fafd51ca752417c3ff1eb53f12399","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/fcb4c87f40059dfe9fac1c6ae04d23a404a4b1de24ddba27d65ac8c663b5c74f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_systems_causality_feedback_01:2 -> audio/generated/de-DE/dialogues/feb63cf4f1e94c01c29a42cb233c93531d44a8a10bfe6f97babfacde5eb496c5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('16e77d7a-ce2c-575f-b7e6-1f617b71b1cc', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_systems_causality_feedback_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cb757950315b1882efef3cf518b1d142c16eb24820acf1ebcddda7f0511e1946'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a91d747c-5c33-51c3-9f33-3631b1409af1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('16e77d7a-ce2c-575f-b7e6-1f617b71b1cc', 1), 'cb757950315b1882efef3cf518b1d142c16eb24820acf1ebcddda7f0511e1946',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/feb63cf4f1e94c01c29a42cb233c93531d44a8a10bfe6f97babfacde5eb496c5.mp3', 4675, '2026-09-13 11:18:32.426489', '801a3d67d815d4c380c925ba4b1758867d0910dbad6629e567e9351406cc40a4', 'validated', '{"audio_key":"feb63cf4f1e94c01c29a42cb233c93531d44a8a10bfe6f97babfacde5eb496c5","entity_key":"d_systems_causality_feedback_01:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"801a3d67d815d4c380c925ba4b1758867d0910dbad6629e567e9351406cc40a4","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/feb63cf4f1e94c01c29a42cb233c93531d44a8a10bfe6f97babfacde5eb496c5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_rhetorical_strategy_diagnostics_06 -> audio/generated/de-DE/lexical/0024be2d4acfb3e530d1a73dedc9afa91a625b24e11076ed7feacc4ef279b7ce.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('92407f03-0c36-5062-887c-3c23512367f2', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_rhetorical_strategy_diagnostics_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bc3917eec59bfd24da83d7c85dc76460c6650a15f899919df07079622f7c430e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('578c8236-f9e1-5f46-8fe5-89a4c7fe0a05', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('92407f03-0c36-5062-887c-3c23512367f2', 1), 'bc3917eec59bfd24da83d7c85dc76460c6650a15f899919df07079622f7c430e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0024be2d4acfb3e530d1a73dedc9afa91a625b24e11076ed7feacc4ef279b7ce.mp3', 1201, '2026-09-13 11:18:32.086813', 'f6a0407e1927e0e93878fd42a94e1b953865eac34cdc98f19137d2380fcc013b', 'validated', '{"audio_key":"0024be2d4acfb3e530d1a73dedc9afa91a625b24e11076ed7feacc4ef279b7ce","entity_key":"lx_rhetorical_strategy_diagnostics_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f6a0407e1927e0e93878fd42a94e1b953865eac34cdc98f19137d2380fcc013b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0024be2d4acfb3e530d1a73dedc9afa91a625b24e11076ed7feacc4ef279b7ce.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_rhetorical_strategy_diagnostics_06 -> audio/generated/de-DE/lexical/0024be2d4acfb3e530d1a73dedc9afa91a625b24e11076ed7feacc4ef279b7ce.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8ce68563-f0ab-5958-bf33-5db0a45a3a96', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_rhetorical_strategy_diagnostics_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bc3917eec59bfd24da83d7c85dc76460c6650a15f899919df07079622f7c430e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('05274b25-9417-5714-865e-9e0a1cddc0d0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8ce68563-f0ab-5958-bf33-5db0a45a3a96', 1), 'bc3917eec59bfd24da83d7c85dc76460c6650a15f899919df07079622f7c430e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0024be2d4acfb3e530d1a73dedc9afa91a625b24e11076ed7feacc4ef279b7ce.mp3', 1201, '2026-09-13 11:18:32.086813', 'f6a0407e1927e0e93878fd42a94e1b953865eac34cdc98f19137d2380fcc013b', 'validated', '{"audio_key":"0024be2d4acfb3e530d1a73dedc9afa91a625b24e11076ed7feacc4ef279b7ce","entity_key":"wf_rhetorical_strategy_diagnostics_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f6a0407e1927e0e93878fd42a94e1b953865eac34cdc98f19137d2380fcc013b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0024be2d4acfb3e530d1a73dedc9afa91a625b24e11076ed7feacc4ef279b7ce.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_lexical_precision_collocation_06 -> audio/generated/de-DE/lexical/008a7b5d3dca700512a9d4deeeef181682c998eaf1f3b3994ed66b0afe9f9b24.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8a36ecef-8a87-56c7-bbc6-25e9d6d86bb5', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_lexical_precision_collocation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6e134686c2302cc96d9db277140854aea691558b2db34d90139b9c87a6b9eae0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('27ab4d70-3138-52cb-8c6d-458de794f567', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8a36ecef-8a87-56c7-bbc6-25e9d6d86bb5', 1), '6e134686c2302cc96d9db277140854aea691558b2db34d90139b9c87a6b9eae0',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/008a7b5d3dca700512a9d4deeeef181682c998eaf1f3b3994ed66b0afe9f9b24.mp3', 1384, '2026-09-13 11:18:33.098099', '70ffaf15f5f83a64c1b66938054217f2afa21ebfdd2fc239903557dc00ba40cd', 'validated', '{"audio_key":"008a7b5d3dca700512a9d4deeeef181682c998eaf1f3b3994ed66b0afe9f9b24","entity_key":"lx_lexical_precision_collocation_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"70ffaf15f5f83a64c1b66938054217f2afa21ebfdd2fc239903557dc00ba40cd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/008a7b5d3dca700512a9d4deeeef181682c998eaf1f3b3994ed66b0afe9f9b24.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_lexical_precision_collocation_06 -> audio/generated/de-DE/lexical/008a7b5d3dca700512a9d4deeeef181682c998eaf1f3b3994ed66b0afe9f9b24.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('437215f2-7d99-57b0-a671-c5092bcde27c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_lexical_precision_collocation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6e134686c2302cc96d9db277140854aea691558b2db34d90139b9c87a6b9eae0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('49888da6-ee4b-5e2f-b452-705e4b662664', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('437215f2-7d99-57b0-a671-c5092bcde27c', 1), '6e134686c2302cc96d9db277140854aea691558b2db34d90139b9c87a6b9eae0',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/008a7b5d3dca700512a9d4deeeef181682c998eaf1f3b3994ed66b0afe9f9b24.mp3', 1384, '2026-09-13 11:18:33.098099', '70ffaf15f5f83a64c1b66938054217f2afa21ebfdd2fc239903557dc00ba40cd', 'validated', '{"audio_key":"008a7b5d3dca700512a9d4deeeef181682c998eaf1f3b3994ed66b0afe9f9b24","entity_key":"wf_lexical_precision_collocation_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"70ffaf15f5f83a64c1b66938054217f2afa21ebfdd2fc239903557dc00ba40cd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/008a7b5d3dca700512a9d4deeeef181682c998eaf1f3b3994ed66b0afe9f9b24.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_implicit_stance_subtext_01 -> audio/generated/de-DE/lexical/02615351aa3407f35a38756e082e276f026c5d366846ffd56c8a4f728579edf0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('decfff23-1588-5040-a176-5976e79db41e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_implicit_stance_subtext_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4bdfdfd8806e8f8c90e13d31808035a000b352c4ed419e90799e9f9afb126432'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eab070a5-ba72-5c8f-ab2b-53d2b289b2b0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('decfff23-1588-5040-a176-5976e79db41e', 1), '4bdfdfd8806e8f8c90e13d31808035a000b352c4ed419e90799e9f9afb126432',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/02615351aa3407f35a38756e082e276f026c5d366846ffd56c8a4f728579edf0.mp3', 1018, '2026-09-13 09:40:50.387703', '420e983fafeec50a69c96d19126d990afceaffa9fb84c4cbfe427e1a0a7464a1', 'validated', '{"audio_key":"02615351aa3407f35a38756e082e276f026c5d366846ffd56c8a4f728579edf0","entity_key":"lx_implicit_stance_subtext_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"420e983fafeec50a69c96d19126d990afceaffa9fb84c4cbfe427e1a0a7464a1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/02615351aa3407f35a38756e082e276f026c5d366846ffd56c8a4f728579edf0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_implicit_stance_subtext_01 -> audio/generated/de-DE/lexical/02615351aa3407f35a38756e082e276f026c5d366846ffd56c8a4f728579edf0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('06b02082-c3e7-5f6a-afa1-a617784c36ff', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_implicit_stance_subtext_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4bdfdfd8806e8f8c90e13d31808035a000b352c4ed419e90799e9f9afb126432'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b4b4a581-f458-53cb-8857-39de0352577d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('06b02082-c3e7-5f6a-afa1-a617784c36ff', 1), '4bdfdfd8806e8f8c90e13d31808035a000b352c4ed419e90799e9f9afb126432',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/02615351aa3407f35a38756e082e276f026c5d366846ffd56c8a4f728579edf0.mp3', 1018, '2026-09-13 09:40:50.387703', '420e983fafeec50a69c96d19126d990afceaffa9fb84c4cbfe427e1a0a7464a1', 'validated', '{"audio_key":"02615351aa3407f35a38756e082e276f026c5d366846ffd56c8a4f728579edf0","entity_key":"wf_implicit_stance_subtext_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"420e983fafeec50a69c96d19126d990afceaffa9fb84c4cbfe427e1a0a7464a1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/02615351aa3407f35a38756e082e276f026c5d366846ffd56c8a4f728579edf0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_interpret_reframe_position_capstone_04 -> audio/generated/de-DE/lexical/0c7e795b4cb895b3450d3f93429afc9bfedba4ddfdaa85163741ae6b1b1cbf21.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('10b466dd-bab5-5600-acc1-c86dbf45debe', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_interpret_reframe_position_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '01d7b6b0a44ec287f7a2f34165bf1ece9650d8f4fdd1c549f82124555c4bf772'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ebe2c831-94d0-5e8c-8585-eafa8a07f00d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('10b466dd-bab5-5600-acc1-c86dbf45debe', 1), '01d7b6b0a44ec287f7a2f34165bf1ece9650d8f4fdd1c549f82124555c4bf772',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0c7e795b4cb895b3450d3f93429afc9bfedba4ddfdaa85163741ae6b1b1cbf21.mp3', 1097, '2026-09-13 07:53:09.267825', '223a4d7002da7de01172c6a4f1e481c1dca32003dac9491e92cfe1064efddb91', 'validated', '{"audio_key":"0c7e795b4cb895b3450d3f93429afc9bfedba4ddfdaa85163741ae6b1b1cbf21","entity_key":"lx_interpret_reframe_position_capstone_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"223a4d7002da7de01172c6a4f1e481c1dca32003dac9491e92cfe1064efddb91","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0c7e795b4cb895b3450d3f93429afc9bfedba4ddfdaa85163741ae6b1b1cbf21.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_interpret_reframe_position_capstone_04 -> audio/generated/de-DE/lexical/0c7e795b4cb895b3450d3f93429afc9bfedba4ddfdaa85163741ae6b1b1cbf21.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4587afcf-98f0-5fdd-b69a-96d97e5853e0', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_interpret_reframe_position_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '01d7b6b0a44ec287f7a2f34165bf1ece9650d8f4fdd1c549f82124555c4bf772'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('60ad1885-78d3-529a-a3ee-864c0a17e8ba', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4587afcf-98f0-5fdd-b69a-96d97e5853e0', 1), '01d7b6b0a44ec287f7a2f34165bf1ece9650d8f4fdd1c549f82124555c4bf772',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0c7e795b4cb895b3450d3f93429afc9bfedba4ddfdaa85163741ae6b1b1cbf21.mp3', 1097, '2026-09-13 07:53:09.267825', '223a4d7002da7de01172c6a4f1e481c1dca32003dac9491e92cfe1064efddb91', 'validated', '{"audio_key":"0c7e795b4cb895b3450d3f93429afc9bfedba4ddfdaa85163741ae6b1b1cbf21","entity_key":"wf_interpret_reframe_position_capstone_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"223a4d7002da7de01172c6a4f1e481c1dca32003dac9491e92cfe1064efddb91","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0c7e795b4cb895b3450d3f93429afc9bfedba4ddfdaa85163741ae6b1b1cbf21.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_interpret_reframe_position_capstone_02 -> audio/generated/de-DE/lexical/10bed8e1246d685dce7fb240502e958997d55defcf7ac53316fcd5341270fcb4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('df87340e-6101-57e8-b0f2-62d395e5152a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_interpret_reframe_position_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b69ce1f9f3642bb4bb15d6c6b89e21fe13bd94c4e6fe79c3a7b6fba814c7402d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('12179753-396d-543e-adbf-422419526bea', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('df87340e-6101-57e8-b0f2-62d395e5152a', 1), 'b69ce1f9f3642bb4bb15d6c6b89e21fe13bd94c4e6fe79c3a7b6fba814c7402d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/10bed8e1246d685dce7fb240502e958997d55defcf7ac53316fcd5341270fcb4.mp3', 1488, '2026-09-13 11:18:33.443929', 'f8a6279937e5f6b6a7ba39d6101d82c2247e039a4006a4cb7974c99ab8265185', 'validated', '{"audio_key":"10bed8e1246d685dce7fb240502e958997d55defcf7ac53316fcd5341270fcb4","entity_key":"lx_interpret_reframe_position_capstone_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f8a6279937e5f6b6a7ba39d6101d82c2247e039a4006a4cb7974c99ab8265185","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/10bed8e1246d685dce7fb240502e958997d55defcf7ac53316fcd5341270fcb4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_interpret_reframe_position_capstone_02 -> audio/generated/de-DE/lexical/10bed8e1246d685dce7fb240502e958997d55defcf7ac53316fcd5341270fcb4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c37a6a9e-dd06-57c9-a4f1-2a324f663373', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_interpret_reframe_position_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b69ce1f9f3642bb4bb15d6c6b89e21fe13bd94c4e6fe79c3a7b6fba814c7402d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1184439e-3a18-550e-90fa-eb578e890757', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c37a6a9e-dd06-57c9-a4f1-2a324f663373', 1), 'b69ce1f9f3642bb4bb15d6c6b89e21fe13bd94c4e6fe79c3a7b6fba814c7402d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/10bed8e1246d685dce7fb240502e958997d55defcf7ac53316fcd5341270fcb4.mp3', 1488, '2026-09-13 11:18:33.443929', 'f8a6279937e5f6b6a7ba39d6101d82c2247e039a4006a4cb7974c99ab8265185', 'validated', '{"audio_key":"10bed8e1246d685dce7fb240502e958997d55defcf7ac53316fcd5341270fcb4","entity_key":"wf_interpret_reframe_position_capstone_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f8a6279937e5f6b6a7ba39d6101d82c2247e039a4006a4cb7974c99ab8265185","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/10bed8e1246d685dce7fb240502e958997d55defcf7ac53316fcd5341270fcb4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_polyphonic_source_synthesis_03 -> audio/generated/de-DE/lexical/1f7f467c7c388a722932178a9992212770e1149d27b14a7cd586f4ae802760e8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0b5a1a85-d838-554f-9b9a-d157f9ebb41f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_polyphonic_source_synthesis_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7f66465d2128b4bea0c9b65cf6f8cf658c5e34fa849fff533c9cc4386a73f07a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('14f0ef44-dcfb-5380-bba9-c29d93ba49e9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0b5a1a85-d838-554f-9b9a-d157f9ebb41f', 1), '7f66465d2128b4bea0c9b65cf6f8cf658c5e34fa849fff533c9cc4386a73f07a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/1f7f467c7c388a722932178a9992212770e1149d27b14a7cd586f4ae802760e8.mp3', 1567, '2026-09-13 11:18:34.131591', '6c10a5e75abd9ecb4ea81670fdd02fb9a5bb91d43061906b6141c6f7bc452a69', 'validated', '{"audio_key":"1f7f467c7c388a722932178a9992212770e1149d27b14a7cd586f4ae802760e8","entity_key":"lx_polyphonic_source_synthesis_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6c10a5e75abd9ecb4ea81670fdd02fb9a5bb91d43061906b6141c6f7bc452a69","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/1f7f467c7c388a722932178a9992212770e1149d27b14a7cd586f4ae802760e8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_polyphonic_source_synthesis_03 -> audio/generated/de-DE/lexical/1f7f467c7c388a722932178a9992212770e1149d27b14a7cd586f4ae802760e8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('167c01b3-39f9-5bab-9cdc-b2422142673d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_polyphonic_source_synthesis_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7f66465d2128b4bea0c9b65cf6f8cf658c5e34fa849fff533c9cc4386a73f07a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('685e81bc-8e5a-5c4c-b3e5-9b9b33345deb', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('167c01b3-39f9-5bab-9cdc-b2422142673d', 1), '7f66465d2128b4bea0c9b65cf6f8cf658c5e34fa849fff533c9cc4386a73f07a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/1f7f467c7c388a722932178a9992212770e1149d27b14a7cd586f4ae802760e8.mp3', 1567, '2026-09-13 11:18:34.131591', '6c10a5e75abd9ecb4ea81670fdd02fb9a5bb91d43061906b6141c6f7bc452a69', 'validated', '{"audio_key":"1f7f467c7c388a722932178a9992212770e1149d27b14a7cd586f4ae802760e8","entity_key":"wf_polyphonic_source_synthesis_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6c10a5e75abd9ecb4ea81670fdd02fb9a5bb91d43061906b6141c6f7bc452a69","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/1f7f467c7c388a722932178a9992212770e1149d27b14a7cd586f4ae802760e8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_register_social_positioning_06 -> audio/generated/de-DE/lexical/1fc71c89e98b78588cd0a2abbf29f86b77f900b3a372eee10bf471a2c377b174.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b6aabf8b-29de-5e07-b013-3ee8069aa186', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_register_social_positioning_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8be82bb9e338fec175a05c726b65800d01d7e5e643fad203c1578de70b4dbfaf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('39e97559-a8a6-5f05-b18c-98ea31c109fc', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b6aabf8b-29de-5e07-b013-3ee8069aa186', 1), '8be82bb9e338fec175a05c726b65800d01d7e5e643fad203c1578de70b4dbfaf',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/1fc71c89e98b78588cd0a2abbf29f86b77f900b3a372eee10bf471a2c377b174.mp3', 1097, '2026-09-13 11:18:34.472328', '7ec88e96dc62629f44cde66210456c7d8260893c61918d297b26b5cfa62886c2', 'validated', '{"audio_key":"1fc71c89e98b78588cd0a2abbf29f86b77f900b3a372eee10bf471a2c377b174","entity_key":"lx_register_social_positioning_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7ec88e96dc62629f44cde66210456c7d8260893c61918d297b26b5cfa62886c2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/1fc71c89e98b78588cd0a2abbf29f86b77f900b3a372eee10bf471a2c377b174.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_register_social_positioning_06 -> audio/generated/de-DE/lexical/1fc71c89e98b78588cd0a2abbf29f86b77f900b3a372eee10bf471a2c377b174.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4348a284-5d0d-50d3-8519-6c4e8ec88a6c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_register_social_positioning_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8be82bb9e338fec175a05c726b65800d01d7e5e643fad203c1578de70b4dbfaf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('18b5a51e-5242-5f03-8ce8-97abf569e7d7', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4348a284-5d0d-50d3-8519-6c4e8ec88a6c', 1), '8be82bb9e338fec175a05c726b65800d01d7e5e643fad203c1578de70b4dbfaf',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/1fc71c89e98b78588cd0a2abbf29f86b77f900b3a372eee10bf471a2c377b174.mp3', 1097, '2026-09-13 11:18:34.472328', '7ec88e96dc62629f44cde66210456c7d8260893c61918d297b26b5cfa62886c2', 'validated', '{"audio_key":"1fc71c89e98b78588cd0a2abbf29f86b77f900b3a372eee10bf471a2c377b174","entity_key":"wf_register_social_positioning_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7ec88e96dc62629f44cde66210456c7d8260893c61918d297b26b5cfa62886c2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/1fc71c89e98b78588cd0a2abbf29f86b77f900b3a372eee10bf471a2c377b174.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_systems_causality_feedback_04 -> audio/generated/de-DE/lexical/2e05880355d609592afad6c7dfd32b7f8423c9628e81941054e1001d079cec6b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ee0ae509-4477-50e6-947b-8bb1ac9ca9da', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_systems_causality_feedback_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aa625ae1bf26ef0a2f7c165dc4d43d2e8afa076b90e9808e1d0b520f4b440444'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2f57c581-3b42-5af1-a047-ab0702d25eb4', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ee0ae509-4477-50e6-947b-8bb1ac9ca9da', 1), 'aa625ae1bf26ef0a2f7c165dc4d43d2e8afa076b90e9808e1d0b520f4b440444',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2e05880355d609592afad6c7dfd32b7f8423c9628e81941054e1001d079cec6b.mp3', 1149, '2026-09-13 11:18:35.120933', '22d590d3c3f8899e5f1cc1a1419512f73288ed423e85599963fc4575eebdbc91', 'validated', '{"audio_key":"2e05880355d609592afad6c7dfd32b7f8423c9628e81941054e1001d079cec6b","entity_key":"lx_systems_causality_feedback_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"22d590d3c3f8899e5f1cc1a1419512f73288ed423e85599963fc4575eebdbc91","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2e05880355d609592afad6c7dfd32b7f8423c9628e81941054e1001d079cec6b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_systems_causality_feedback_04 -> audio/generated/de-DE/lexical/2e05880355d609592afad6c7dfd32b7f8423c9628e81941054e1001d079cec6b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7f6eb361-b4b5-538c-9661-9805df58015b', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_systems_causality_feedback_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aa625ae1bf26ef0a2f7c165dc4d43d2e8afa076b90e9808e1d0b520f4b440444'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3e886400-aa8b-51cd-805d-a7d4abb55f0e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7f6eb361-b4b5-538c-9661-9805df58015b', 1), 'aa625ae1bf26ef0a2f7c165dc4d43d2e8afa076b90e9808e1d0b520f4b440444',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2e05880355d609592afad6c7dfd32b7f8423c9628e81941054e1001d079cec6b.mp3', 1149, '2026-09-13 11:18:35.120933', '22d590d3c3f8899e5f1cc1a1419512f73288ed423e85599963fc4575eebdbc91', 'validated', '{"audio_key":"2e05880355d609592afad6c7dfd32b7f8423c9628e81941054e1001d079cec6b","entity_key":"wf_systems_causality_feedback_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"22d590d3c3f8899e5f1cc1a1419512f73288ed423e85599963fc4575eebdbc91","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2e05880355d609592afad6c7dfd32b7f8423c9628e81941054e1001d079cec6b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_rhetorical_strategy_diagnostics_03 -> audio/generated/de-DE/lexical/2ff292f920cb30f370173ed2ca960d595637fba7bcc094983da6597253e569a4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('75c4c465-6101-57f9-adf4-5e0b41d4a96d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_rhetorical_strategy_diagnostics_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6d0b26dfc97114159375f8648e6e120cf357d0f192d22d3a92ca679c5208922e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('66d90668-54dd-587e-8a1a-131a33fcb655', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('75c4c465-6101-57f9-adf4-5e0b41d4a96d', 1), '6d0b26dfc97114159375f8648e6e120cf357d0f192d22d3a92ca679c5208922e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2ff292f920cb30f370173ed2ca960d595637fba7bcc094983da6597253e569a4.mp3', 1149, '2026-09-13 11:18:35.475974', '972284b063554b065bc72371fe37ef003c8b4015f656e90fefbb22291ed548dc', 'validated', '{"audio_key":"2ff292f920cb30f370173ed2ca960d595637fba7bcc094983da6597253e569a4","entity_key":"lx_rhetorical_strategy_diagnostics_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"972284b063554b065bc72371fe37ef003c8b4015f656e90fefbb22291ed548dc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2ff292f920cb30f370173ed2ca960d595637fba7bcc094983da6597253e569a4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_rhetorical_strategy_diagnostics_03 -> audio/generated/de-DE/lexical/2ff292f920cb30f370173ed2ca960d595637fba7bcc094983da6597253e569a4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4697e9e3-b506-59c3-8dd9-d3175e6d648c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_rhetorical_strategy_diagnostics_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6d0b26dfc97114159375f8648e6e120cf357d0f192d22d3a92ca679c5208922e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('71b934fb-7418-50c6-a2b2-54d92961e91c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4697e9e3-b506-59c3-8dd9-d3175e6d648c', 1), '6d0b26dfc97114159375f8648e6e120cf357d0f192d22d3a92ca679c5208922e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2ff292f920cb30f370173ed2ca960d595637fba7bcc094983da6597253e569a4.mp3', 1149, '2026-09-13 11:18:35.475974', '972284b063554b065bc72371fe37ef003c8b4015f656e90fefbb22291ed548dc', 'validated', '{"audio_key":"2ff292f920cb30f370173ed2ca960d595637fba7bcc094983da6597253e569a4","entity_key":"wf_rhetorical_strategy_diagnostics_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"972284b063554b065bc72371fe37ef003c8b4015f656e90fefbb22291ed548dc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2ff292f920cb30f370173ed2ca960d595637fba7bcc094983da6597253e569a4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_argument_premises_fallacies_03 -> audio/generated/de-DE/lexical/376922dff330d959956c568bcf941239485498ceffa54b7d986168566b06c73c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ea26d686-6c6f-5ec6-a3c1-0601d6b610af', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_argument_premises_fallacies_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2c7d7aaa38be814249878ac12df2a50c5448e4be755a61b558633fe4ca4bd049'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('62e34249-f88f-5041-96a2-a839f9c1d4ab', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ea26d686-6c6f-5ec6-a3c1-0601d6b610af', 1), '2c7d7aaa38be814249878ac12df2a50c5448e4be755a61b558633fe4ca4bd049',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/376922dff330d959956c568bcf941239485498ceffa54b7d986168566b06c73c.mp3', 1253, '2026-09-13 11:18:36.153987', '5e70798aa4c95ea2a071736e7a2a2bab43a46bf11d6fe059db6d28ac8ab931d4', 'validated', '{"audio_key":"376922dff330d959956c568bcf941239485498ceffa54b7d986168566b06c73c","entity_key":"lx_argument_premises_fallacies_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5e70798aa4c95ea2a071736e7a2a2bab43a46bf11d6fe059db6d28ac8ab931d4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/376922dff330d959956c568bcf941239485498ceffa54b7d986168566b06c73c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_argument_premises_fallacies_03 -> audio/generated/de-DE/lexical/376922dff330d959956c568bcf941239485498ceffa54b7d986168566b06c73c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('bb3bdff5-482a-52d9-a2ba-572cf0854a37', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_argument_premises_fallacies_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2c7d7aaa38be814249878ac12df2a50c5448e4be755a61b558633fe4ca4bd049'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('acc83298-d6e6-51fd-a7fb-ef7457af2794', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('bb3bdff5-482a-52d9-a2ba-572cf0854a37', 1), '2c7d7aaa38be814249878ac12df2a50c5448e4be755a61b558633fe4ca4bd049',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/376922dff330d959956c568bcf941239485498ceffa54b7d986168566b06c73c.mp3', 1253, '2026-09-13 11:18:36.153987', '5e70798aa4c95ea2a071736e7a2a2bab43a46bf11d6fe059db6d28ac8ab931d4', 'validated', '{"audio_key":"376922dff330d959956c568bcf941239485498ceffa54b7d986168566b06c73c","entity_key":"wf_argument_premises_fallacies_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5e70798aa4c95ea2a071736e7a2a2bab43a46bf11d6fe059db6d28ac8ab931d4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/376922dff330d959956c568bcf941239485498ceffa54b7d986168566b06c73c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_high_stakes_discursive_intervention_03 -> audio/generated/de-DE/lexical/40b6693b0a83d6368b5dc6f4e5cfb0a764ad3ac3ec915573acb132c973bf9710.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d1f5efc8-3963-5d10-a716-7aba0b40292c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_high_stakes_discursive_intervention_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5e41bd061fb3dc68e2a695f4931714e73ab16313735e8d315f4c9533990e7afb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bd97f502-d68c-53d8-bc65-a216a08489c2', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d1f5efc8-3963-5d10-a716-7aba0b40292c', 1), '5e41bd061fb3dc68e2a695f4931714e73ab16313735e8d315f4c9533990e7afb',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/40b6693b0a83d6368b5dc6f4e5cfb0a764ad3ac3ec915573acb132c973bf9710.mp3', 1384, '2026-09-13 10:21:16.856955', '354431fd35e2d3f4adea30ca883bee160aff181af5e55362ab2f923f80ff3106', 'validated', '{"audio_key":"40b6693b0a83d6368b5dc6f4e5cfb0a764ad3ac3ec915573acb132c973bf9710","entity_key":"lx_high_stakes_discursive_intervention_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"354431fd35e2d3f4adea30ca883bee160aff181af5e55362ab2f923f80ff3106","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/40b6693b0a83d6368b5dc6f4e5cfb0a764ad3ac3ec915573acb132c973bf9710.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_high_stakes_discursive_intervention_03 -> audio/generated/de-DE/lexical/40b6693b0a83d6368b5dc6f4e5cfb0a764ad3ac3ec915573acb132c973bf9710.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a45a06bd-a720-59dd-ac06-19c7c3d8a0ed', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_high_stakes_discursive_intervention_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5e41bd061fb3dc68e2a695f4931714e73ab16313735e8d315f4c9533990e7afb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c384b5f1-38b0-55e0-a458-372d40e6ab30', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a45a06bd-a720-59dd-ac06-19c7c3d8a0ed', 1), '5e41bd061fb3dc68e2a695f4931714e73ab16313735e8d315f4c9533990e7afb',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/40b6693b0a83d6368b5dc6f4e5cfb0a764ad3ac3ec915573acb132c973bf9710.mp3', 1384, '2026-09-13 10:21:16.856955', '354431fd35e2d3f4adea30ca883bee160aff181af5e55362ab2f923f80ff3106', 'validated', '{"audio_key":"40b6693b0a83d6368b5dc6f4e5cfb0a764ad3ac3ec915573acb132c973bf9710","entity_key":"wf_high_stakes_discursive_intervention_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"354431fd35e2d3f4adea30ca883bee160aff181af5e55362ab2f923f80ff3106","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/40b6693b0a83d6368b5dc6f4e5cfb0a764ad3ac3ec915573acb132c973bf9710.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_lexical_precision_collocation_05 -> audio/generated/de-DE/lexical/47b9e46a636ec38f5ff240518b81cfb071c74a5fa73ed4e14e602780587c5c36.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('4b87c955-e892-5173-a73c-46c751bc2a4c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_lexical_precision_collocation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6e531770d354919dc5cd8f78773267aff9ab5f68d74f3eb638b4bccf63567ba8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b2cc1300-b4aa-55fa-aa54-ca1e46f49805', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('4b87c955-e892-5173-a73c-46c751bc2a4c', 1), '6e531770d354919dc5cd8f78773267aff9ab5f68d74f3eb638b4bccf63567ba8',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/47b9e46a636ec38f5ff240518b81cfb071c74a5fa73ed4e14e602780587c5c36.mp3', 1332, '2026-09-13 11:18:36.508834', '4e9bd2230dc3f5e2aa74362d95c3b718a4feb64e1cdbc89973fb5a996f7d3d5b', 'validated', '{"audio_key":"47b9e46a636ec38f5ff240518b81cfb071c74a5fa73ed4e14e602780587c5c36","entity_key":"lx_lexical_precision_collocation_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4e9bd2230dc3f5e2aa74362d95c3b718a4feb64e1cdbc89973fb5a996f7d3d5b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/47b9e46a636ec38f5ff240518b81cfb071c74a5fa73ed4e14e602780587c5c36.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_lexical_precision_collocation_05 -> audio/generated/de-DE/lexical/47b9e46a636ec38f5ff240518b81cfb071c74a5fa73ed4e14e602780587c5c36.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8bf3e018-a344-5708-bf45-d2d8975903b6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_lexical_precision_collocation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6e531770d354919dc5cd8f78773267aff9ab5f68d74f3eb638b4bccf63567ba8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f67827d5-e711-5445-843f-77376c31429e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8bf3e018-a344-5708-bf45-d2d8975903b6', 1), '6e531770d354919dc5cd8f78773267aff9ab5f68d74f3eb638b4bccf63567ba8',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/47b9e46a636ec38f5ff240518b81cfb071c74a5fa73ed4e14e602780587c5c36.mp3', 1332, '2026-09-13 11:18:36.508834', '4e9bd2230dc3f5e2aa74362d95c3b718a4feb64e1cdbc89973fb5a996f7d3d5b', 'validated', '{"audio_key":"47b9e46a636ec38f5ff240518b81cfb071c74a5fa73ed4e14e602780587c5c36","entity_key":"wf_lexical_precision_collocation_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4e9bd2230dc3f5e2aa74362d95c3b718a4feb64e1cdbc89973fb5a996f7d3d5b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/47b9e46a636ec38f5ff240518b81cfb071c74a5fa73ed4e14e602780587c5c36.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_implicit_stance_subtext_05 -> audio/generated/de-DE/lexical/497551bb0e3ce8f31a4e46ba00ac1519989587239cebc0397dbdead8b73f14ea.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('30b1bc65-5397-5c23-aaa3-8e6b1d4d7816', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_implicit_stance_subtext_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ef27c6eb8e9437424fe29377eb9dd6f9dc32532c380876833d869f95ae490e2d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2790f76d-01da-598e-bc8a-d7c5870a7ac6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('30b1bc65-5397-5c23-aaa3-8e6b1d4d7816', 1), 'ef27c6eb8e9437424fe29377eb9dd6f9dc32532c380876833d869f95ae490e2d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/497551bb0e3ce8f31a4e46ba00ac1519989587239cebc0397dbdead8b73f14ea.mp3', 1436, '2026-09-13 11:18:37.200976', '050d31c68cd96699a2507963366a67479d1fc0103612c99a2bdfa1e1c5cab9d6', 'validated', '{"audio_key":"497551bb0e3ce8f31a4e46ba00ac1519989587239cebc0397dbdead8b73f14ea","entity_key":"lx_implicit_stance_subtext_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"050d31c68cd96699a2507963366a67479d1fc0103612c99a2bdfa1e1c5cab9d6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/497551bb0e3ce8f31a4e46ba00ac1519989587239cebc0397dbdead8b73f14ea.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_implicit_stance_subtext_05 -> audio/generated/de-DE/lexical/497551bb0e3ce8f31a4e46ba00ac1519989587239cebc0397dbdead8b73f14ea.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('feb03177-ed5c-58c2-9f59-6826687954ab', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_implicit_stance_subtext_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ef27c6eb8e9437424fe29377eb9dd6f9dc32532c380876833d869f95ae490e2d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('93143825-c8a1-5954-9022-9050ff8950f5', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('feb03177-ed5c-58c2-9f59-6826687954ab', 1), 'ef27c6eb8e9437424fe29377eb9dd6f9dc32532c380876833d869f95ae490e2d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/497551bb0e3ce8f31a4e46ba00ac1519989587239cebc0397dbdead8b73f14ea.mp3', 1436, '2026-09-13 11:18:37.200976', '050d31c68cd96699a2507963366a67479d1fc0103612c99a2bdfa1e1c5cab9d6', 'validated', '{"audio_key":"497551bb0e3ce8f31a4e46ba00ac1519989587239cebc0397dbdead8b73f14ea","entity_key":"wf_implicit_stance_subtext_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"050d31c68cd96699a2507963366a67479d1fc0103612c99a2bdfa1e1c5cab9d6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/497551bb0e3ce8f31a4e46ba00ac1519989587239cebc0397dbdead8b73f14ea.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_register_social_positioning_04 -> audio/generated/de-DE/lexical/561c9ce91e3be7270702a366f7d928c2407f98a58b72670c4dfa6b4344ac8a76.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2d2cb8bc-0c21-533c-a357-bb19ca85bbda', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_register_social_positioning_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '067fe26943198b9dd984c68934787f5c475508c97f1f2b1e506268e87faadbfc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2bd52fa2-b5b5-5d40-b642-ebaf94c4e5cd', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2d2cb8bc-0c21-533c-a357-bb19ca85bbda', 1), '067fe26943198b9dd984c68934787f5c475508c97f1f2b1e506268e87faadbfc',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/561c9ce91e3be7270702a366f7d928c2407f98a58b72670c4dfa6b4344ac8a76.mp3', 1071, '2026-09-13 11:18:37.523076', 'f769050fb22b2aa45e64be1f5fb91b5b7c85d98774573f1794c14757e7308e7e', 'validated', '{"audio_key":"561c9ce91e3be7270702a366f7d928c2407f98a58b72670c4dfa6b4344ac8a76","entity_key":"lx_register_social_positioning_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f769050fb22b2aa45e64be1f5fb91b5b7c85d98774573f1794c14757e7308e7e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/561c9ce91e3be7270702a366f7d928c2407f98a58b72670c4dfa6b4344ac8a76.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_register_social_positioning_04 -> audio/generated/de-DE/lexical/561c9ce91e3be7270702a366f7d928c2407f98a58b72670c4dfa6b4344ac8a76.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6a8b09a5-ff8e-555a-bbbb-06084893d28b', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_register_social_positioning_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '067fe26943198b9dd984c68934787f5c475508c97f1f2b1e506268e87faadbfc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6b1e8bac-73a5-5c7b-9ccf-5fb4a82d6c55', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6a8b09a5-ff8e-555a-bbbb-06084893d28b', 1), '067fe26943198b9dd984c68934787f5c475508c97f1f2b1e506268e87faadbfc',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/561c9ce91e3be7270702a366f7d928c2407f98a58b72670c4dfa6b4344ac8a76.mp3', 1071, '2026-09-13 11:18:37.523076', 'f769050fb22b2aa45e64be1f5fb91b5b7c85d98774573f1794c14757e7308e7e', 'validated', '{"audio_key":"561c9ce91e3be7270702a366f7d928c2407f98a58b72670c4dfa6b4344ac8a76","entity_key":"wf_register_social_positioning_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f769050fb22b2aa45e64be1f5fb91b5b7c85d98774573f1794c14757e7308e7e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/561c9ce91e3be7270702a366f7d928c2407f98a58b72670c4dfa6b4344ac8a76.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_polyphonic_source_synthesis_04 -> audio/generated/de-DE/lexical/570ba59b1429e6c9e2cd4f36ca9d62ef6f46126a03d78529f2541de2856d5e2c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('264130d6-1e39-5ee7-84f5-dbc333c8e69e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_polyphonic_source_synthesis_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd599e753044dbca82a81b79c3196896fdfb4f560921f7b934002fd83de4cd398'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5dac5e26-b048-5fda-9fd1-903ef8d69ac7', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('264130d6-1e39-5ee7-84f5-dbc333c8e69e', 1), 'd599e753044dbca82a81b79c3196896fdfb4f560921f7b934002fd83de4cd398',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/570ba59b1429e6c9e2cd4f36ca9d62ef6f46126a03d78529f2541de2856d5e2c.mp3', 1149, '2026-09-13 10:21:19.044720', '916e95dffd58ad0e1fb20d2f81616df1b502f53585d46ba92243dff4f883e9f2', 'validated', '{"audio_key":"570ba59b1429e6c9e2cd4f36ca9d62ef6f46126a03d78529f2541de2856d5e2c","entity_key":"lx_polyphonic_source_synthesis_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"916e95dffd58ad0e1fb20d2f81616df1b502f53585d46ba92243dff4f883e9f2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/570ba59b1429e6c9e2cd4f36ca9d62ef6f46126a03d78529f2541de2856d5e2c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_polyphonic_source_synthesis_04 -> audio/generated/de-DE/lexical/570ba59b1429e6c9e2cd4f36ca9d62ef6f46126a03d78529f2541de2856d5e2c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5b6e950c-b02b-5642-9828-fc5eb581d8ae', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_polyphonic_source_synthesis_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd599e753044dbca82a81b79c3196896fdfb4f560921f7b934002fd83de4cd398'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f75adaa8-aaaf-5251-b977-56b94d8403b8', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5b6e950c-b02b-5642-9828-fc5eb581d8ae', 1), 'd599e753044dbca82a81b79c3196896fdfb4f560921f7b934002fd83de4cd398',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/570ba59b1429e6c9e2cd4f36ca9d62ef6f46126a03d78529f2541de2856d5e2c.mp3', 1149, '2026-09-13 10:21:19.044720', '916e95dffd58ad0e1fb20d2f81616df1b502f53585d46ba92243dff4f883e9f2', 'validated', '{"audio_key":"570ba59b1429e6c9e2cd4f36ca9d62ef6f46126a03d78529f2541de2856d5e2c","entity_key":"wf_polyphonic_source_synthesis_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"916e95dffd58ad0e1fb20d2f81616df1b502f53585d46ba92243dff4f883e9f2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/570ba59b1429e6c9e2cd4f36ca9d62ef6f46126a03d78529f2541de2856d5e2c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_interpret_reframe_position_capstone_01 -> audio/generated/de-DE/lexical/59028dfb066e779e0105fef96962757174f3e24b981cc4b1a1e7cbeac91437d5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('fc5cdefb-9cbb-5054-a83c-3abe0aacc4e4', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_interpret_reframe_position_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '305f786f07cc22e3fa0d73eba8f007c5a214cf97496f20f9072817b0356d6e1e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e33595a9-09c0-5361-be15-5e9b9a02ec83', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('fc5cdefb-9cbb-5054-a83c-3abe0aacc4e4', 1), '305f786f07cc22e3fa0d73eba8f007c5a214cf97496f20f9072817b0356d6e1e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/59028dfb066e779e0105fef96962757174f3e24b981cc4b1a1e7cbeac91437d5.mp3', 1384, '2026-09-13 11:18:38.256771', '9c6d8efdeb157a80218f04f0adadc590378896c00cd40f4288e89969f0158264', 'validated', '{"audio_key":"59028dfb066e779e0105fef96962757174f3e24b981cc4b1a1e7cbeac91437d5","entity_key":"lx_interpret_reframe_position_capstone_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9c6d8efdeb157a80218f04f0adadc590378896c00cd40f4288e89969f0158264","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/59028dfb066e779e0105fef96962757174f3e24b981cc4b1a1e7cbeac91437d5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_interpret_reframe_position_capstone_01 -> audio/generated/de-DE/lexical/59028dfb066e779e0105fef96962757174f3e24b981cc4b1a1e7cbeac91437d5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b062eaf1-9180-5245-b154-16a1e994a909', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_interpret_reframe_position_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '305f786f07cc22e3fa0d73eba8f007c5a214cf97496f20f9072817b0356d6e1e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5ee26f94-4bc5-5794-876e-facfebc8ac6e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b062eaf1-9180-5245-b154-16a1e994a909', 1), '305f786f07cc22e3fa0d73eba8f007c5a214cf97496f20f9072817b0356d6e1e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/59028dfb066e779e0105fef96962757174f3e24b981cc4b1a1e7cbeac91437d5.mp3', 1384, '2026-09-13 11:18:38.256771', '9c6d8efdeb157a80218f04f0adadc590378896c00cd40f4288e89969f0158264', 'validated', '{"audio_key":"59028dfb066e779e0105fef96962757174f3e24b981cc4b1a1e7cbeac91437d5","entity_key":"wf_interpret_reframe_position_capstone_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9c6d8efdeb157a80218f04f0adadc590378896c00cd40f4288e89969f0158264","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/59028dfb066e779e0105fef96962757174f3e24b981cc4b1a1e7cbeac91437d5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_implicit_stance_subtext_04 -> audio/generated/de-DE/lexical/59084762ac1ab590bd6ac38b8879a06f8a0b51f9f8bb13afb71689604e5e52be.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('84c134ef-0f87-5cb2-9794-be2ef4118245', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_implicit_stance_subtext_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c85a5dd89443e0a92e0bebe7577bf1d1d739ad0975e478385a41357088678643'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e2619fc4-5694-519f-a61f-81ccd3453188', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('84c134ef-0f87-5cb2-9794-be2ef4118245', 1), 'c85a5dd89443e0a92e0bebe7577bf1d1d739ad0975e478385a41357088678643',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/59084762ac1ab590bd6ac38b8879a06f8a0b51f9f8bb13afb71689604e5e52be.mp3', 1071, '2026-09-13 11:18:38.494774', '6305ed48d9cf69c77ba91832d11143c1739e7d86cfdca10bcca8a40608d60f99', 'validated', '{"audio_key":"59084762ac1ab590bd6ac38b8879a06f8a0b51f9f8bb13afb71689604e5e52be","entity_key":"lx_implicit_stance_subtext_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6305ed48d9cf69c77ba91832d11143c1739e7d86cfdca10bcca8a40608d60f99","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/59084762ac1ab590bd6ac38b8879a06f8a0b51f9f8bb13afb71689604e5e52be.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_implicit_stance_subtext_04 -> audio/generated/de-DE/lexical/59084762ac1ab590bd6ac38b8879a06f8a0b51f9f8bb13afb71689604e5e52be.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b7cdf241-08eb-5312-985f-b3cc928fd2a0', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_implicit_stance_subtext_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c85a5dd89443e0a92e0bebe7577bf1d1d739ad0975e478385a41357088678643'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d88e37b1-01e3-555a-b46f-d81d3e188a6a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b7cdf241-08eb-5312-985f-b3cc928fd2a0', 1), 'c85a5dd89443e0a92e0bebe7577bf1d1d739ad0975e478385a41357088678643',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/59084762ac1ab590bd6ac38b8879a06f8a0b51f9f8bb13afb71689604e5e52be.mp3', 1071, '2026-09-13 11:18:38.494774', '6305ed48d9cf69c77ba91832d11143c1739e7d86cfdca10bcca8a40608d60f99', 'validated', '{"audio_key":"59084762ac1ab590bd6ac38b8879a06f8a0b51f9f8bb13afb71689604e5e52be","entity_key":"wf_implicit_stance_subtext_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6305ed48d9cf69c77ba91832d11143c1739e7d86cfdca10bcca8a40608d60f99","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/59084762ac1ab590bd6ac38b8879a06f8a0b51f9f8bb13afb71689604e5e52be.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_polyphonic_source_synthesis_06 -> audio/generated/de-DE/lexical/626ad7a799156224814cfc3bd1bede7ec90ba2a9370320fd8ff9c51d9ac45771.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d384cc2f-770d-56cd-9f28-5880fbd14880', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_polyphonic_source_synthesis_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '56ce3da0bcef9b6753d9ab16845f086459b0599116270ac06f1a9e977165dfd0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('57f97077-df2c-557d-8b89-c083e6655958', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d384cc2f-770d-56cd-9f28-5880fbd14880', 1), '56ce3da0bcef9b6753d9ab16845f086459b0599116270ac06f1a9e977165dfd0',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/626ad7a799156224814cfc3bd1bede7ec90ba2a9370320fd8ff9c51d9ac45771.mp3', 1149, '2026-09-13 11:18:39.261636', '93d4d9f8a32ace372b6bb438c2f6ddce5949e2d75e4661ee8bbc23ef102fb34c', 'validated', '{"audio_key":"626ad7a799156224814cfc3bd1bede7ec90ba2a9370320fd8ff9c51d9ac45771","entity_key":"lx_polyphonic_source_synthesis_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"93d4d9f8a32ace372b6bb438c2f6ddce5949e2d75e4661ee8bbc23ef102fb34c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/626ad7a799156224814cfc3bd1bede7ec90ba2a9370320fd8ff9c51d9ac45771.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_polyphonic_source_synthesis_06 -> audio/generated/de-DE/lexical/626ad7a799156224814cfc3bd1bede7ec90ba2a9370320fd8ff9c51d9ac45771.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7ac17d86-b2e5-5660-ae2f-c37be24a920a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_polyphonic_source_synthesis_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '56ce3da0bcef9b6753d9ab16845f086459b0599116270ac06f1a9e977165dfd0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('804d33bb-464f-50ff-b9f9-8455dea46134', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7ac17d86-b2e5-5660-ae2f-c37be24a920a', 1), '56ce3da0bcef9b6753d9ab16845f086459b0599116270ac06f1a9e977165dfd0',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/626ad7a799156224814cfc3bd1bede7ec90ba2a9370320fd8ff9c51d9ac45771.mp3', 1149, '2026-09-13 11:18:39.261636', '93d4d9f8a32ace372b6bb438c2f6ddce5949e2d75e4661ee8bbc23ef102fb34c', 'validated', '{"audio_key":"626ad7a799156224814cfc3bd1bede7ec90ba2a9370320fd8ff9c51d9ac45771","entity_key":"wf_polyphonic_source_synthesis_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"93d4d9f8a32ace372b6bb438c2f6ddce5949e2d75e4661ee8bbc23ef102fb34c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/626ad7a799156224814cfc3bd1bede7ec90ba2a9370320fd8ff9c51d9ac45771.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_argument_premises_fallacies_06 -> audio/generated/de-DE/lexical/643ecafbfbdcca186c1ab57686daef26cc97ce0e48d14dc77490b04346e52f2d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ea527f21-7de6-5187-a0d3-6b6cef0f892a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_argument_premises_fallacies_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9e852829f3ab902576a42085a31c97f9df6e9614c38aa7a6f9ba0749751fea8d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2319c129-c325-507b-98c5-de3123f86822', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ea527f21-7de6-5187-a0d3-6b6cef0f892a', 1), '9e852829f3ab902576a42085a31c97f9df6e9614c38aa7a6f9ba0749751fea8d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/643ecafbfbdcca186c1ab57686daef26cc97ce0e48d14dc77490b04346e52f2d.mp3', 1280, '2026-09-13 11:18:39.544863', '2d96b04e1173acd37fabd8bd31cbdafb1fbc79d85560303f79cc5297b8a2f663', 'validated', '{"audio_key":"643ecafbfbdcca186c1ab57686daef26cc97ce0e48d14dc77490b04346e52f2d","entity_key":"lx_argument_premises_fallacies_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2d96b04e1173acd37fabd8bd31cbdafb1fbc79d85560303f79cc5297b8a2f663","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/643ecafbfbdcca186c1ab57686daef26cc97ce0e48d14dc77490b04346e52f2d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_argument_premises_fallacies_06 -> audio/generated/de-DE/lexical/643ecafbfbdcca186c1ab57686daef26cc97ce0e48d14dc77490b04346e52f2d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('dbdc0aee-f2bb-516c-adff-2baa81ff56d0', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_argument_premises_fallacies_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9e852829f3ab902576a42085a31c97f9df6e9614c38aa7a6f9ba0749751fea8d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1b42776e-fd3b-5952-9642-51245f886782', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('dbdc0aee-f2bb-516c-adff-2baa81ff56d0', 1), '9e852829f3ab902576a42085a31c97f9df6e9614c38aa7a6f9ba0749751fea8d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/643ecafbfbdcca186c1ab57686daef26cc97ce0e48d14dc77490b04346e52f2d.mp3', 1280, '2026-09-13 11:18:39.544863', '2d96b04e1173acd37fabd8bd31cbdafb1fbc79d85560303f79cc5297b8a2f663', 'validated', '{"audio_key":"643ecafbfbdcca186c1ab57686daef26cc97ce0e48d14dc77490b04346e52f2d","entity_key":"wf_argument_premises_fallacies_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2d96b04e1173acd37fabd8bd31cbdafb1fbc79d85560303f79cc5297b8a2f663","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/643ecafbfbdcca186c1ab57686daef26cc97ce0e48d14dc77490b04346e52f2d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_polyphonic_source_synthesis_05 -> audio/generated/de-DE/lexical/6470119dd6037a8a319baa1d6d29d5f699a9d471959bdf9771b28cf86cb88781.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('93a5f02e-547b-507b-a3a8-047618421bf0', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_polyphonic_source_synthesis_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f0a08a35583648fb12289c44f492c2bcfd55ad8730dea181b6dc0a7dc645d582'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('30d07ccc-08c7-56a5-8893-3de24a711f9e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('93a5f02e-547b-507b-a3a8-047618421bf0', 1), 'f0a08a35583648fb12289c44f492c2bcfd55ad8730dea181b6dc0a7dc645d582',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/6470119dd6037a8a319baa1d6d29d5f699a9d471959bdf9771b28cf86cb88781.mp3', 1149, '2026-09-13 11:18:40.291264', 'a134588d0e89eb6d5b4ce9d9e40dbf5cd0fd5678bc279f99c049110b9a0cd994', 'validated', '{"audio_key":"6470119dd6037a8a319baa1d6d29d5f699a9d471959bdf9771b28cf86cb88781","entity_key":"lx_polyphonic_source_synthesis_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a134588d0e89eb6d5b4ce9d9e40dbf5cd0fd5678bc279f99c049110b9a0cd994","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/6470119dd6037a8a319baa1d6d29d5f699a9d471959bdf9771b28cf86cb88781.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_polyphonic_source_synthesis_05 -> audio/generated/de-DE/lexical/6470119dd6037a8a319baa1d6d29d5f699a9d471959bdf9771b28cf86cb88781.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d7221369-6987-5e94-b1eb-f227f229b713', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_polyphonic_source_synthesis_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f0a08a35583648fb12289c44f492c2bcfd55ad8730dea181b6dc0a7dc645d582'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('78e40449-0a0b-5801-bc66-689cf5b8a092', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d7221369-6987-5e94-b1eb-f227f229b713', 1), 'f0a08a35583648fb12289c44f492c2bcfd55ad8730dea181b6dc0a7dc645d582',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/6470119dd6037a8a319baa1d6d29d5f699a9d471959bdf9771b28cf86cb88781.mp3', 1149, '2026-09-13 11:18:40.291264', 'a134588d0e89eb6d5b4ce9d9e40dbf5cd0fd5678bc279f99c049110b9a0cd994', 'validated', '{"audio_key":"6470119dd6037a8a319baa1d6d29d5f699a9d471959bdf9771b28cf86cb88781","entity_key":"wf_polyphonic_source_synthesis_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a134588d0e89eb6d5b4ce9d9e40dbf5cd0fd5678bc279f99c049110b9a0cd994","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/6470119dd6037a8a319baa1d6d29d5f699a9d471959bdf9771b28cf86cb88781.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_interpret_reframe_position_capstone_03 -> audio/generated/de-DE/lexical/694185cd2e9465072fdf4f652ca2e028d771eea67c0b5be734c121e52519e762.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1536dc3a-1233-59a1-aa86-ce9c3e419859', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_interpret_reframe_position_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '753de119d42df303a345d98e7cda3b3486deb9ae08f33620e9eb76b21985c51f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('07de63b4-283d-5b9d-bc1b-2120876853d0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1536dc3a-1233-59a1-aa86-ce9c3e419859', 1), '753de119d42df303a345d98e7cda3b3486deb9ae08f33620e9eb76b21985c51f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/694185cd2e9465072fdf4f652ca2e028d771eea67c0b5be734c121e52519e762.mp3', 1488, '2026-09-13 11:18:40.599127', '164a9a158e8a2671b9c8e3759381d3ae1aa480fb82846802a9a58968e9db5587', 'validated', '{"audio_key":"694185cd2e9465072fdf4f652ca2e028d771eea67c0b5be734c121e52519e762","entity_key":"lx_interpret_reframe_position_capstone_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"164a9a158e8a2671b9c8e3759381d3ae1aa480fb82846802a9a58968e9db5587","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/694185cd2e9465072fdf4f652ca2e028d771eea67c0b5be734c121e52519e762.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_interpret_reframe_position_capstone_03 -> audio/generated/de-DE/lexical/694185cd2e9465072fdf4f652ca2e028d771eea67c0b5be734c121e52519e762.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a341a29b-4383-546a-877e-e5f5da78b180', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_interpret_reframe_position_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '753de119d42df303a345d98e7cda3b3486deb9ae08f33620e9eb76b21985c51f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f599863a-04e6-53e2-bb12-0b157de74e9a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a341a29b-4383-546a-877e-e5f5da78b180', 1), '753de119d42df303a345d98e7cda3b3486deb9ae08f33620e9eb76b21985c51f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/694185cd2e9465072fdf4f652ca2e028d771eea67c0b5be734c121e52519e762.mp3', 1488, '2026-09-13 11:18:40.599127', '164a9a158e8a2671b9c8e3759381d3ae1aa480fb82846802a9a58968e9db5587', 'validated', '{"audio_key":"694185cd2e9465072fdf4f652ca2e028d771eea67c0b5be734c121e52519e762","entity_key":"wf_interpret_reframe_position_capstone_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"164a9a158e8a2671b9c8e3759381d3ae1aa480fb82846802a9a58968e9db5587","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/694185cd2e9465072fdf4f652ca2e028d771eea67c0b5be734c121e52519e762.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_rhetorical_strategy_diagnostics_01 -> audio/generated/de-DE/lexical/705a23a84dee51e06d3caee21fc66fb4d9956d08b7b773f465a01ae97221121c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('633fd0f0-3b5e-5ba1-b18c-cc2d3055c9e5', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_rhetorical_strategy_diagnostics_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4de57f8f268fb08fdf6c5fe0667189724b32ff3910d9585b28e19ed117e37ba3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d9ec7fa6-ae76-586e-918e-a21458d12cb1', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('633fd0f0-3b5e-5ba1-b18c-cc2d3055c9e5', 1), '4de57f8f268fb08fdf6c5fe0667189724b32ff3910d9585b28e19ed117e37ba3',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/705a23a84dee51e06d3caee21fc66fb4d9956d08b7b773f465a01ae97221121c.mp3', 1097, '2026-09-13 11:18:41.294533', 'f6c035ee1491002de2fa9ecf3ac134a7f4b970b1ce8819b1bc8a946c7468c867', 'validated', '{"audio_key":"705a23a84dee51e06d3caee21fc66fb4d9956d08b7b773f465a01ae97221121c","entity_key":"lx_rhetorical_strategy_diagnostics_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f6c035ee1491002de2fa9ecf3ac134a7f4b970b1ce8819b1bc8a946c7468c867","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/705a23a84dee51e06d3caee21fc66fb4d9956d08b7b773f465a01ae97221121c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_rhetorical_strategy_diagnostics_01 -> audio/generated/de-DE/lexical/705a23a84dee51e06d3caee21fc66fb4d9956d08b7b773f465a01ae97221121c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7984794e-e3dd-5e1a-874c-994dfbf7c296', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_rhetorical_strategy_diagnostics_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4de57f8f268fb08fdf6c5fe0667189724b32ff3910d9585b28e19ed117e37ba3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('31843630-0268-513a-bc76-c6e235a79a6c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7984794e-e3dd-5e1a-874c-994dfbf7c296', 1), '4de57f8f268fb08fdf6c5fe0667189724b32ff3910d9585b28e19ed117e37ba3',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/705a23a84dee51e06d3caee21fc66fb4d9956d08b7b773f465a01ae97221121c.mp3', 1097, '2026-09-13 11:18:41.294533', 'f6c035ee1491002de2fa9ecf3ac134a7f4b970b1ce8819b1bc8a946c7468c867', 'validated', '{"audio_key":"705a23a84dee51e06d3caee21fc66fb4d9956d08b7b773f465a01ae97221121c","entity_key":"wf_rhetorical_strategy_diagnostics_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f6c035ee1491002de2fa9ecf3ac134a7f4b970b1ce8819b1bc8a946c7468c867","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/705a23a84dee51e06d3caee21fc66fb4d9956d08b7b773f465a01ae97221121c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_high_stakes_discursive_intervention_06 -> audio/generated/de-DE/lexical/762fc799cd82956785a6e104ebcf65d28cba54a5ad0e2845ac36cef33736a110.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('fa03b8d8-66ef-5f08-8f40-2075f17b5a0d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_high_stakes_discursive_intervention_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6cb7c74a5b0ee54df7901aa77a65ab9f216e7737232c9afd622b3d2ecd9d89e6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('76df5c4c-c81f-5d87-b078-9cfeac959abc', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('fa03b8d8-66ef-5f08-8f40-2075f17b5a0d', 1), '6cb7c74a5b0ee54df7901aa77a65ab9f216e7737232c9afd622b3d2ecd9d89e6',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/762fc799cd82956785a6e104ebcf65d28cba54a5ad0e2845ac36cef33736a110.mp3', 1253, '2026-09-13 08:48:01.388368', 'f794532ecf9221cb8795abd694de5ab2a622bbe0a559b1c6f736c53b32c88b58', 'validated', '{"audio_key":"762fc799cd82956785a6e104ebcf65d28cba54a5ad0e2845ac36cef33736a110","entity_key":"lx_high_stakes_discursive_intervention_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f794532ecf9221cb8795abd694de5ab2a622bbe0a559b1c6f736c53b32c88b58","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/762fc799cd82956785a6e104ebcf65d28cba54a5ad0e2845ac36cef33736a110.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_high_stakes_discursive_intervention_06 -> audio/generated/de-DE/lexical/762fc799cd82956785a6e104ebcf65d28cba54a5ad0e2845ac36cef33736a110.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('af54089e-f350-57f1-a6ec-593955bd26fb', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_high_stakes_discursive_intervention_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6cb7c74a5b0ee54df7901aa77a65ab9f216e7737232c9afd622b3d2ecd9d89e6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9ddf2907-dbfc-5f06-a49d-f7f25f301c69', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('af54089e-f350-57f1-a6ec-593955bd26fb', 1), '6cb7c74a5b0ee54df7901aa77a65ab9f216e7737232c9afd622b3d2ecd9d89e6',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/762fc799cd82956785a6e104ebcf65d28cba54a5ad0e2845ac36cef33736a110.mp3', 1253, '2026-09-13 08:48:01.388368', 'f794532ecf9221cb8795abd694de5ab2a622bbe0a559b1c6f736c53b32c88b58', 'validated', '{"audio_key":"762fc799cd82956785a6e104ebcf65d28cba54a5ad0e2845ac36cef33736a110","entity_key":"wf_high_stakes_discursive_intervention_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f794532ecf9221cb8795abd694de5ab2a622bbe0a559b1c6f736c53b32c88b58","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/762fc799cd82956785a6e104ebcf65d28cba54a5ad0e2845ac36cef33736a110.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_register_social_positioning_02 -> audio/generated/de-DE/lexical/76e06ee8b8eca59c32d03f1c7a87c021965c5d838d2b94cd848a77ca7013936c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b70531a1-f2ab-55b1-99f5-9880b6da3afc', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_register_social_positioning_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8283966615d25cefa6d4f1ff8919be9acc655c328364dfe5ec9c2c69beb8282b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9b623687-fafb-5662-948b-720f22268642', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b70531a1-f2ab-55b1-99f5-9880b6da3afc', 1), '8283966615d25cefa6d4f1ff8919be9acc655c328364dfe5ec9c2c69beb8282b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/76e06ee8b8eca59c32d03f1c7a87c021965c5d838d2b94cd848a77ca7013936c.mp3', 1567, '2026-09-13 11:18:41.680018', '7fb20cdcc10a99fe3ceccd0eb79b6d4c41960861e6fc59623ea4cca055f34275', 'validated', '{"audio_key":"76e06ee8b8eca59c32d03f1c7a87c021965c5d838d2b94cd848a77ca7013936c","entity_key":"lx_register_social_positioning_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7fb20cdcc10a99fe3ceccd0eb79b6d4c41960861e6fc59623ea4cca055f34275","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/76e06ee8b8eca59c32d03f1c7a87c021965c5d838d2b94cd848a77ca7013936c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_register_social_positioning_02 -> audio/generated/de-DE/lexical/76e06ee8b8eca59c32d03f1c7a87c021965c5d838d2b94cd848a77ca7013936c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('99e3d73f-8325-5f14-b0af-66bf6ccdc4d5', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_register_social_positioning_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8283966615d25cefa6d4f1ff8919be9acc655c328364dfe5ec9c2c69beb8282b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1fb60460-8b90-56ea-9d84-630db2ffa654', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('99e3d73f-8325-5f14-b0af-66bf6ccdc4d5', 1), '8283966615d25cefa6d4f1ff8919be9acc655c328364dfe5ec9c2c69beb8282b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/76e06ee8b8eca59c32d03f1c7a87c021965c5d838d2b94cd848a77ca7013936c.mp3', 1567, '2026-09-13 11:18:41.680018', '7fb20cdcc10a99fe3ceccd0eb79b6d4c41960861e6fc59623ea4cca055f34275', 'validated', '{"audio_key":"76e06ee8b8eca59c32d03f1c7a87c021965c5d838d2b94cd848a77ca7013936c","entity_key":"wf_register_social_positioning_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7fb20cdcc10a99fe3ceccd0eb79b6d4c41960861e6fc59623ea4cca055f34275","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/76e06ee8b8eca59c32d03f1c7a87c021965c5d838d2b94cd848a77ca7013936c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_irony_indirect_critique_06 -> audio/generated/de-DE/lexical/76f75dd28fe21975166cfb1bec1aa242a0de3f0a5cf27b0aac633d700b6a5c54.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c46e499e-729c-5632-bd16-a5e870a0388e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_irony_indirect_critique_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9b910ac32580821c6e78016e7817d93677000593d45c6623e54367b52e8f9c8d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9356ab2c-64ac-531f-aab0-a564c9ac3cad', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c46e499e-729c-5632-bd16-a5e870a0388e', 1), '9b910ac32580821c6e78016e7817d93677000593d45c6623e54367b52e8f9c8d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/76f75dd28fe21975166cfb1bec1aa242a0de3f0a5cf27b0aac633d700b6a5c54.mp3', 1280, '2026-09-13 11:18:42.312632', 'd49dcf451dd166aa7ffbb65c94f49bcbb63c8586f25b329742b29932738ddd7a', 'validated', '{"audio_key":"76f75dd28fe21975166cfb1bec1aa242a0de3f0a5cf27b0aac633d700b6a5c54","entity_key":"lx_irony_indirect_critique_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d49dcf451dd166aa7ffbb65c94f49bcbb63c8586f25b329742b29932738ddd7a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/76f75dd28fe21975166cfb1bec1aa242a0de3f0a5cf27b0aac633d700b6a5c54.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_irony_indirect_critique_06 -> audio/generated/de-DE/lexical/76f75dd28fe21975166cfb1bec1aa242a0de3f0a5cf27b0aac633d700b6a5c54.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f59b2f03-6d14-59d5-a2da-e58019c7f215', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_irony_indirect_critique_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9b910ac32580821c6e78016e7817d93677000593d45c6623e54367b52e8f9c8d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4525e1b1-4346-5c27-a31d-05c69034b851', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f59b2f03-6d14-59d5-a2da-e58019c7f215', 1), '9b910ac32580821c6e78016e7817d93677000593d45c6623e54367b52e8f9c8d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/76f75dd28fe21975166cfb1bec1aa242a0de3f0a5cf27b0aac633d700b6a5c54.mp3', 1280, '2026-09-13 11:18:42.312632', 'd49dcf451dd166aa7ffbb65c94f49bcbb63c8586f25b329742b29932738ddd7a', 'validated', '{"audio_key":"76f75dd28fe21975166cfb1bec1aa242a0de3f0a5cf27b0aac633d700b6a5c54","entity_key":"wf_irony_indirect_critique_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d49dcf451dd166aa7ffbb65c94f49bcbb63c8586f25b329742b29932738ddd7a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/76f75dd28fe21975166cfb1bec1aa242a0de3f0a5cf27b0aac633d700b6a5c54.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_implicit_stance_subtext_03 -> audio/generated/de-DE/lexical/7b29ffc2b8806b581bee84168d75b420cc890a1968ba571520ddd183f35c0c0a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('02119228-1f23-5439-916d-bb17852aab55', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_implicit_stance_subtext_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '88f1b9555864d6b30b444277c2905aa5ee68a812cfa1937ccd718e094336d68b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8136e613-5df0-527b-ae0c-229f283a4409', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('02119228-1f23-5439-916d-bb17852aab55', 1), '88f1b9555864d6b30b444277c2905aa5ee68a812cfa1937ccd718e094336d68b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7b29ffc2b8806b581bee84168d75b420cc890a1968ba571520ddd183f35c0c0a.mp3', 1332, '2026-09-13 06:17:34.057551', '6241bc03d1f54abf4eec43d5e817a4f57f4c05a907442bcf8950c2b6a8c12c67', 'validated', '{"audio_key":"7b29ffc2b8806b581bee84168d75b420cc890a1968ba571520ddd183f35c0c0a","entity_key":"lx_implicit_stance_subtext_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6241bc03d1f54abf4eec43d5e817a4f57f4c05a907442bcf8950c2b6a8c12c67","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7b29ffc2b8806b581bee84168d75b420cc890a1968ba571520ddd183f35c0c0a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_implicit_stance_subtext_03 -> audio/generated/de-DE/lexical/7b29ffc2b8806b581bee84168d75b420cc890a1968ba571520ddd183f35c0c0a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6f1445d7-e756-5fe8-a92c-e49cd1226200', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_implicit_stance_subtext_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '88f1b9555864d6b30b444277c2905aa5ee68a812cfa1937ccd718e094336d68b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3bb491a4-f8e7-5deb-a3dd-73043431516a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6f1445d7-e756-5fe8-a92c-e49cd1226200', 1), '88f1b9555864d6b30b444277c2905aa5ee68a812cfa1937ccd718e094336d68b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7b29ffc2b8806b581bee84168d75b420cc890a1968ba571520ddd183f35c0c0a.mp3', 1332, '2026-09-13 06:17:34.057551', '6241bc03d1f54abf4eec43d5e817a4f57f4c05a907442bcf8950c2b6a8c12c67', 'validated', '{"audio_key":"7b29ffc2b8806b581bee84168d75b420cc890a1968ba571520ddd183f35c0c0a","entity_key":"wf_implicit_stance_subtext_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6241bc03d1f54abf4eec43d5e817a4f57f4c05a907442bcf8950c2b6a8c12c67","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7b29ffc2b8806b581bee84168d75b420cc890a1968ba571520ddd183f35c0c0a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_rhetorical_strategy_diagnostics_02 -> audio/generated/de-DE/lexical/7ecdcf1611708f372624473cafaa9eeb4676bec3e1de1716506b0a48d49799c7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c47490c7-dcee-54aa-8345-c7d8263fe5cb', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_rhetorical_strategy_diagnostics_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b26ee3aa115e6bf3cdb51d617a68eb08ca7e719089b79c32b7abaf112ff41c34'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('40c79483-6614-5937-a4f5-e5e8646f4b52', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c47490c7-dcee-54aa-8345-c7d8263fe5cb', 1), 'b26ee3aa115e6bf3cdb51d617a68eb08ca7e719089b79c32b7abaf112ff41c34',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7ecdcf1611708f372624473cafaa9eeb4676bec3e1de1716506b0a48d49799c7.mp3', 1201, '2026-09-13 11:18:42.673438', 'fc25891ba336266bea76e5ecd252e2d67b5e0d61ed7a7018abc5451818934d11', 'validated', '{"audio_key":"7ecdcf1611708f372624473cafaa9eeb4676bec3e1de1716506b0a48d49799c7","entity_key":"lx_rhetorical_strategy_diagnostics_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fc25891ba336266bea76e5ecd252e2d67b5e0d61ed7a7018abc5451818934d11","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7ecdcf1611708f372624473cafaa9eeb4676bec3e1de1716506b0a48d49799c7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_rhetorical_strategy_diagnostics_02 -> audio/generated/de-DE/lexical/7ecdcf1611708f372624473cafaa9eeb4676bec3e1de1716506b0a48d49799c7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8db2f307-1779-5fa5-8273-ab31117c907b', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_rhetorical_strategy_diagnostics_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b26ee3aa115e6bf3cdb51d617a68eb08ca7e719089b79c32b7abaf112ff41c34'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d53719c0-e282-5c46-8340-0c72dff38198', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8db2f307-1779-5fa5-8273-ab31117c907b', 1), 'b26ee3aa115e6bf3cdb51d617a68eb08ca7e719089b79c32b7abaf112ff41c34',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7ecdcf1611708f372624473cafaa9eeb4676bec3e1de1716506b0a48d49799c7.mp3', 1201, '2026-09-13 11:18:42.673438', 'fc25891ba336266bea76e5ecd252e2d67b5e0d61ed7a7018abc5451818934d11', 'validated', '{"audio_key":"7ecdcf1611708f372624473cafaa9eeb4676bec3e1de1716506b0a48d49799c7","entity_key":"wf_rhetorical_strategy_diagnostics_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fc25891ba336266bea76e5ecd252e2d67b5e0d61ed7a7018abc5451818934d11","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7ecdcf1611708f372624473cafaa9eeb4676bec3e1de1716506b0a48d49799c7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_systems_causality_feedback_05 -> audio/generated/de-DE/lexical/81edea6ac5101aa435e453248f1eaf2c9926d142a134ecbe92a210a82be0730f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('4a436bcc-8b46-56f8-9d47-12c8ce60dca0', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_systems_causality_feedback_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '41f0f179b13f00bb29e86a1513e45d710300e45393e3e458f32ec46ac7c93ced'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ede930a1-4efa-53d0-993b-1b107536340d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('4a436bcc-8b46-56f8-9d47-12c8ce60dca0', 1), '41f0f179b13f00bb29e86a1513e45d710300e45393e3e458f32ec46ac7c93ced',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/81edea6ac5101aa435e453248f1eaf2c9926d142a134ecbe92a210a82be0730f.mp3', 1097, '2026-09-13 11:18:43.303055', 'fa624785497a1fb2eaf139fe83530f24738188961ba84f9cd249687bb537bdcd', 'validated', '{"audio_key":"81edea6ac5101aa435e453248f1eaf2c9926d142a134ecbe92a210a82be0730f","entity_key":"lx_systems_causality_feedback_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fa624785497a1fb2eaf139fe83530f24738188961ba84f9cd249687bb537bdcd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/81edea6ac5101aa435e453248f1eaf2c9926d142a134ecbe92a210a82be0730f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_systems_causality_feedback_05 -> audio/generated/de-DE/lexical/81edea6ac5101aa435e453248f1eaf2c9926d142a134ecbe92a210a82be0730f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b892e9e0-f82c-5907-8df0-014f47e89840', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_systems_causality_feedback_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '41f0f179b13f00bb29e86a1513e45d710300e45393e3e458f32ec46ac7c93ced'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fb520795-5908-5825-bb05-b27d5d05b19d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b892e9e0-f82c-5907-8df0-014f47e89840', 1), '41f0f179b13f00bb29e86a1513e45d710300e45393e3e458f32ec46ac7c93ced',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/81edea6ac5101aa435e453248f1eaf2c9926d142a134ecbe92a210a82be0730f.mp3', 1097, '2026-09-13 11:18:43.303055', 'fa624785497a1fb2eaf139fe83530f24738188961ba84f9cd249687bb537bdcd', 'validated', '{"audio_key":"81edea6ac5101aa435e453248f1eaf2c9926d142a134ecbe92a210a82be0730f","entity_key":"wf_systems_causality_feedback_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fa624785497a1fb2eaf139fe83530f24738188961ba84f9cd249687bb537bdcd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/81edea6ac5101aa435e453248f1eaf2c9926d142a134ecbe92a210a82be0730f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_high_stakes_discursive_intervention_02 -> audio/generated/de-DE/lexical/84025103a7cd74fc074a36acdf9d0636b0cce62983ded4a1d74675dfa1fdb4ea.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2c4ac787-76c6-584b-90f6-c7adf9f6bfd9', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_high_stakes_discursive_intervention_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3d41bc41de15762679358fd3ad2f38d8e3dfab625f0f6e39f5ccb9e588eecbe5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('078144ac-ce7b-5e93-bf1b-a3529fe3babe', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2c4ac787-76c6-584b-90f6-c7adf9f6bfd9', 1), '3d41bc41de15762679358fd3ad2f38d8e3dfab625f0f6e39f5ccb9e588eecbe5',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/84025103a7cd74fc074a36acdf9d0636b0cce62983ded4a1d74675dfa1fdb4ea.mp3', 1671, '2026-09-13 11:18:43.747484', '3fd3a74d1995d29887e30a72ba89462f75b9ee0b07b6bd26d3e29bc1486045bf', 'validated', '{"audio_key":"84025103a7cd74fc074a36acdf9d0636b0cce62983ded4a1d74675dfa1fdb4ea","entity_key":"lx_high_stakes_discursive_intervention_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3fd3a74d1995d29887e30a72ba89462f75b9ee0b07b6bd26d3e29bc1486045bf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/84025103a7cd74fc074a36acdf9d0636b0cce62983ded4a1d74675dfa1fdb4ea.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_high_stakes_discursive_intervention_02 -> audio/generated/de-DE/lexical/84025103a7cd74fc074a36acdf9d0636b0cce62983ded4a1d74675dfa1fdb4ea.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('91cd5f62-d20e-5b98-aaa4-b729f6e992f6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_high_stakes_discursive_intervention_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3d41bc41de15762679358fd3ad2f38d8e3dfab625f0f6e39f5ccb9e588eecbe5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5550c73c-b5f3-53aa-96b6-b224532ee11c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('91cd5f62-d20e-5b98-aaa4-b729f6e992f6', 1), '3d41bc41de15762679358fd3ad2f38d8e3dfab625f0f6e39f5ccb9e588eecbe5',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/84025103a7cd74fc074a36acdf9d0636b0cce62983ded4a1d74675dfa1fdb4ea.mp3', 1671, '2026-09-13 11:18:43.747484', '3fd3a74d1995d29887e30a72ba89462f75b9ee0b07b6bd26d3e29bc1486045bf', 'validated', '{"audio_key":"84025103a7cd74fc074a36acdf9d0636b0cce62983ded4a1d74675dfa1fdb4ea","entity_key":"wf_high_stakes_discursive_intervention_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3fd3a74d1995d29887e30a72ba89462f75b9ee0b07b6bd26d3e29bc1486045bf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/84025103a7cd74fc074a36acdf9d0636b0cce62983ded4a1d74675dfa1fdb4ea.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_irony_indirect_critique_02 -> audio/generated/de-DE/lexical/85f537f4d1220b5db02459d601ad78e6bc51731a01905fea45cf8d2ffe35bf2c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('48b79e87-84eb-5de5-9a96-bcae0b6ad18a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_irony_indirect_critique_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eff97f7b6f7934d69f940579db347265829014eb61e1d0d170df99b3f15b6e5e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('12a1cd05-52e5-5c36-a32a-b5ea0d6d1e32', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('48b79e87-84eb-5de5-9a96-bcae0b6ad18a', 1), 'eff97f7b6f7934d69f940579db347265829014eb61e1d0d170df99b3f15b6e5e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/85f537f4d1220b5db02459d601ad78e6bc51731a01905fea45cf8d2ffe35bf2c.mp3', 1201, '2026-09-13 11:18:44.327334', '9c3a1e9e9183a7646da5bbef26432814c8f9ca8cdc98a85aef7e3f7bbc1e65d4', 'validated', '{"audio_key":"85f537f4d1220b5db02459d601ad78e6bc51731a01905fea45cf8d2ffe35bf2c","entity_key":"lx_irony_indirect_critique_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9c3a1e9e9183a7646da5bbef26432814c8f9ca8cdc98a85aef7e3f7bbc1e65d4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/85f537f4d1220b5db02459d601ad78e6bc51731a01905fea45cf8d2ffe35bf2c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_irony_indirect_critique_02 -> audio/generated/de-DE/lexical/85f537f4d1220b5db02459d601ad78e6bc51731a01905fea45cf8d2ffe35bf2c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('126054c6-ec0f-58d6-8175-fe406ed27db8', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_irony_indirect_critique_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eff97f7b6f7934d69f940579db347265829014eb61e1d0d170df99b3f15b6e5e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ad9324d5-9622-52b6-831d-9d59b76cdbdb', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('126054c6-ec0f-58d6-8175-fe406ed27db8', 1), 'eff97f7b6f7934d69f940579db347265829014eb61e1d0d170df99b3f15b6e5e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/85f537f4d1220b5db02459d601ad78e6bc51731a01905fea45cf8d2ffe35bf2c.mp3', 1201, '2026-09-13 11:18:44.327334', '9c3a1e9e9183a7646da5bbef26432814c8f9ca8cdc98a85aef7e3f7bbc1e65d4', 'validated', '{"audio_key":"85f537f4d1220b5db02459d601ad78e6bc51731a01905fea45cf8d2ffe35bf2c","entity_key":"wf_irony_indirect_critique_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9c3a1e9e9183a7646da5bbef26432814c8f9ca8cdc98a85aef7e3f7bbc1e65d4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/85f537f4d1220b5db02459d601ad78e6bc51731a01905fea45cf8d2ffe35bf2c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_rhetorical_strategy_diagnostics_04 -> audio/generated/de-DE/lexical/86cda113e30c1e181a61a47030ae61a1171da00d04f45065272b2dd077f89dcd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b1b66b79-9647-511f-ba9c-a969858ac610', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_rhetorical_strategy_diagnostics_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '70d8f722e3a4e4e02c6eb61524807bfc1c18b9bb759c2f51da1249040a618119'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('21b5cddb-22b2-52fe-8781-d1f44afbc1ee', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b1b66b79-9647-511f-ba9c-a969858ac610', 1), '70d8f722e3a4e4e02c6eb61524807bfc1c18b9bb759c2f51da1249040a618119',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/86cda113e30c1e181a61a47030ae61a1171da00d04f45065272b2dd077f89dcd.mp3', 1201, '2026-09-13 11:18:44.766577', '59dbb4322f92bb21dc6c13c2d488373ac71856dc70c2ff9fee11c00b7d6b4710', 'validated', '{"audio_key":"86cda113e30c1e181a61a47030ae61a1171da00d04f45065272b2dd077f89dcd","entity_key":"lx_rhetorical_strategy_diagnostics_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"59dbb4322f92bb21dc6c13c2d488373ac71856dc70c2ff9fee11c00b7d6b4710","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/86cda113e30c1e181a61a47030ae61a1171da00d04f45065272b2dd077f89dcd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_rhetorical_strategy_diagnostics_04 -> audio/generated/de-DE/lexical/86cda113e30c1e181a61a47030ae61a1171da00d04f45065272b2dd077f89dcd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3e9dbe2b-cbfa-5bf6-a9c7-48c8904e32f9', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_rhetorical_strategy_diagnostics_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '70d8f722e3a4e4e02c6eb61524807bfc1c18b9bb759c2f51da1249040a618119'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4dea4ab7-b1ec-59a4-8fec-c5e0527a85ab', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3e9dbe2b-cbfa-5bf6-a9c7-48c8904e32f9', 1), '70d8f722e3a4e4e02c6eb61524807bfc1c18b9bb759c2f51da1249040a618119',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/86cda113e30c1e181a61a47030ae61a1171da00d04f45065272b2dd077f89dcd.mp3', 1201, '2026-09-13 11:18:44.766577', '59dbb4322f92bb21dc6c13c2d488373ac71856dc70c2ff9fee11c00b7d6b4710', 'validated', '{"audio_key":"86cda113e30c1e181a61a47030ae61a1171da00d04f45065272b2dd077f89dcd","entity_key":"wf_rhetorical_strategy_diagnostics_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"59dbb4322f92bb21dc6c13c2d488373ac71856dc70c2ff9fee11c00b7d6b4710","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/86cda113e30c1e181a61a47030ae61a1171da00d04f45065272b2dd077f89dcd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_polyphonic_source_synthesis_02 -> audio/generated/de-DE/lexical/8a20bebf422be0a6677ff69360dc7e1175e871b01ebf20e88cc58a672a6028c7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('18198eb3-1805-590e-83a1-21d345ded99b', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_polyphonic_source_synthesis_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ef285f3359a7cb6907553a921c9e0ab16a1d60eaf951ddbcdf399614de5f62f0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6d2735a6-5e83-5a53-8574-ac0079cc8566', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('18198eb3-1805-590e-83a1-21d345ded99b', 1), 'ef285f3359a7cb6907553a921c9e0ab16a1d60eaf951ddbcdf399614de5f62f0',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8a20bebf422be0a6677ff69360dc7e1175e871b01ebf20e88cc58a672a6028c7.mp3', 1332, '2026-09-13 11:18:45.337741', '38a6a56bfcab04cfaccd4c1c82633c9afa1ba776f0e0cde231321fb8d4ba2ea8', 'validated', '{"audio_key":"8a20bebf422be0a6677ff69360dc7e1175e871b01ebf20e88cc58a672a6028c7","entity_key":"lx_polyphonic_source_synthesis_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"38a6a56bfcab04cfaccd4c1c82633c9afa1ba776f0e0cde231321fb8d4ba2ea8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8a20bebf422be0a6677ff69360dc7e1175e871b01ebf20e88cc58a672a6028c7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_polyphonic_source_synthesis_02 -> audio/generated/de-DE/lexical/8a20bebf422be0a6677ff69360dc7e1175e871b01ebf20e88cc58a672a6028c7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e74d6d0a-1657-54f7-b46c-12aba2fc127a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_polyphonic_source_synthesis_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ef285f3359a7cb6907553a921c9e0ab16a1d60eaf951ddbcdf399614de5f62f0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6718bd75-a111-5b89-b0ec-612c8199667b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e74d6d0a-1657-54f7-b46c-12aba2fc127a', 1), 'ef285f3359a7cb6907553a921c9e0ab16a1d60eaf951ddbcdf399614de5f62f0',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8a20bebf422be0a6677ff69360dc7e1175e871b01ebf20e88cc58a672a6028c7.mp3', 1332, '2026-09-13 11:18:45.337741', '38a6a56bfcab04cfaccd4c1c82633c9afa1ba776f0e0cde231321fb8d4ba2ea8', 'validated', '{"audio_key":"8a20bebf422be0a6677ff69360dc7e1175e871b01ebf20e88cc58a672a6028c7","entity_key":"wf_polyphonic_source_synthesis_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"38a6a56bfcab04cfaccd4c1c82633c9afa1ba776f0e0cde231321fb8d4ba2ea8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8a20bebf422be0a6677ff69360dc7e1175e871b01ebf20e88cc58a672a6028c7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_systems_causality_feedback_03 -> audio/generated/de-DE/lexical/8d38b9a8eccb4121765380c6828423491dabbdbfcc9cd8e10161b5c6bf88743e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e5e50e34-3fbd-5b2c-8f17-bd3006152182', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_systems_causality_feedback_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dbf998fd7e7637e109e1be7a803b9b300a66cab8fd8b038bf3dbef490af4ed78'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b3b50150-83da-5677-8354-11bddb9e8ec0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e5e50e34-3fbd-5b2c-8f17-bd3006152182', 1), 'dbf998fd7e7637e109e1be7a803b9b300a66cab8fd8b038bf3dbef490af4ed78',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8d38b9a8eccb4121765380c6828423491dabbdbfcc9cd8e10161b5c6bf88743e.mp3', 1567, '2026-09-13 11:18:45.816138', '2ace266deab69d4d725df8d2f18f0c1926234198639da8e11ba4d6f6b725eaa7', 'validated', '{"audio_key":"8d38b9a8eccb4121765380c6828423491dabbdbfcc9cd8e10161b5c6bf88743e","entity_key":"lx_systems_causality_feedback_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2ace266deab69d4d725df8d2f18f0c1926234198639da8e11ba4d6f6b725eaa7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8d38b9a8eccb4121765380c6828423491dabbdbfcc9cd8e10161b5c6bf88743e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_systems_causality_feedback_03 -> audio/generated/de-DE/lexical/8d38b9a8eccb4121765380c6828423491dabbdbfcc9cd8e10161b5c6bf88743e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('89c93e66-81b8-5220-a8cd-b3ea01a0c675', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_systems_causality_feedback_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dbf998fd7e7637e109e1be7a803b9b300a66cab8fd8b038bf3dbef490af4ed78'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5e32d95b-13f5-59a5-8c85-89e7ca3e8b6a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('89c93e66-81b8-5220-a8cd-b3ea01a0c675', 1), 'dbf998fd7e7637e109e1be7a803b9b300a66cab8fd8b038bf3dbef490af4ed78',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8d38b9a8eccb4121765380c6828423491dabbdbfcc9cd8e10161b5c6bf88743e.mp3', 1567, '2026-09-13 11:18:45.816138', '2ace266deab69d4d725df8d2f18f0c1926234198639da8e11ba4d6f6b725eaa7', 'validated', '{"audio_key":"8d38b9a8eccb4121765380c6828423491dabbdbfcc9cd8e10161b5c6bf88743e","entity_key":"wf_systems_causality_feedback_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2ace266deab69d4d725df8d2f18f0c1926234198639da8e11ba4d6f6b725eaa7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8d38b9a8eccb4121765380c6828423491dabbdbfcc9cd8e10161b5c6bf88743e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_interpret_reframe_position_capstone_05 -> audio/generated/de-DE/lexical/8ead8ccd25ecc413a68583e8c767bde855823b3c9ece32aa28d8f34575b11007.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e0cd40be-0cd9-5f8c-8038-4f42593e4871', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_interpret_reframe_position_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c3c4decbdabd13fd892aaaca0852afcc6b00a8c00154653d6d787e3b1d62951e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4fec27fa-4438-52fe-95af-8b1398b556b9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e0cd40be-0cd9-5f8c-8038-4f42593e4871', 1), 'c3c4decbdabd13fd892aaaca0852afcc6b00a8c00154653d6d787e3b1d62951e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8ead8ccd25ecc413a68583e8c767bde855823b3c9ece32aa28d8f34575b11007.mp3', 1436, '2026-09-13 11:18:46.387041', '23dbb41287efff12a05fbf389330d4143fb5835e24a2be0583ba2ab9059a07a8', 'validated', '{"audio_key":"8ead8ccd25ecc413a68583e8c767bde855823b3c9ece32aa28d8f34575b11007","entity_key":"lx_interpret_reframe_position_capstone_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"23dbb41287efff12a05fbf389330d4143fb5835e24a2be0583ba2ab9059a07a8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8ead8ccd25ecc413a68583e8c767bde855823b3c9ece32aa28d8f34575b11007.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_interpret_reframe_position_capstone_05 -> audio/generated/de-DE/lexical/8ead8ccd25ecc413a68583e8c767bde855823b3c9ece32aa28d8f34575b11007.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4e93a28f-8612-51e7-85d7-479f546e50ff', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_interpret_reframe_position_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c3c4decbdabd13fd892aaaca0852afcc6b00a8c00154653d6d787e3b1d62951e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1c3f4bcc-d3c0-562c-ba38-c749341544ad', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4e93a28f-8612-51e7-85d7-479f546e50ff', 1), 'c3c4decbdabd13fd892aaaca0852afcc6b00a8c00154653d6d787e3b1d62951e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8ead8ccd25ecc413a68583e8c767bde855823b3c9ece32aa28d8f34575b11007.mp3', 1436, '2026-09-13 11:18:46.387041', '23dbb41287efff12a05fbf389330d4143fb5835e24a2be0583ba2ab9059a07a8', 'validated', '{"audio_key":"8ead8ccd25ecc413a68583e8c767bde855823b3c9ece32aa28d8f34575b11007","entity_key":"wf_interpret_reframe_position_capstone_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"23dbb41287efff12a05fbf389330d4143fb5835e24a2be0583ba2ab9059a07a8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8ead8ccd25ecc413a68583e8c767bde855823b3c9ece32aa28d8f34575b11007.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_irony_indirect_critique_03 -> audio/generated/de-DE/lexical/8eef2e59569e2614ca36ca7da643006a32780738b80e44090b333f7e87b97e00.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1090617a-f4f9-5e8d-b450-db5a81df2fc8', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_irony_indirect_critique_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd6d519322a6a7fd92a90ee89de918403940edb48282815c834790bac6ee5d15c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a5732273-a298-5703-b473-3c577c642553', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1090617a-f4f9-5e8d-b450-db5a81df2fc8', 1), 'd6d519322a6a7fd92a90ee89de918403940edb48282815c834790bac6ee5d15c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8eef2e59569e2614ca36ca7da643006a32780738b80e44090b333f7e87b97e00.mp3', 966, '2026-09-13 11:18:46.797551', 'ff87bb5c12b4733ccfcce03655f8c5bc00c93101dc5a9b82f30c0cc70f897639', 'validated', '{"audio_key":"8eef2e59569e2614ca36ca7da643006a32780738b80e44090b333f7e87b97e00","entity_key":"lx_irony_indirect_critique_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ff87bb5c12b4733ccfcce03655f8c5bc00c93101dc5a9b82f30c0cc70f897639","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8eef2e59569e2614ca36ca7da643006a32780738b80e44090b333f7e87b97e00.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_irony_indirect_critique_03 -> audio/generated/de-DE/lexical/8eef2e59569e2614ca36ca7da643006a32780738b80e44090b333f7e87b97e00.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4e97d9d7-8051-5bfa-9023-e04505414fe3', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_irony_indirect_critique_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd6d519322a6a7fd92a90ee89de918403940edb48282815c834790bac6ee5d15c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0fadf6dd-cd82-57e7-8ca6-d0ee2afa7bb1', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4e97d9d7-8051-5bfa-9023-e04505414fe3', 1), 'd6d519322a6a7fd92a90ee89de918403940edb48282815c834790bac6ee5d15c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8eef2e59569e2614ca36ca7da643006a32780738b80e44090b333f7e87b97e00.mp3', 966, '2026-09-13 11:18:46.797551', 'ff87bb5c12b4733ccfcce03655f8c5bc00c93101dc5a9b82f30c0cc70f897639', 'validated', '{"audio_key":"8eef2e59569e2614ca36ca7da643006a32780738b80e44090b333f7e87b97e00","entity_key":"wf_irony_indirect_critique_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ff87bb5c12b4733ccfcce03655f8c5bc00c93101dc5a9b82f30c0cc70f897639","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8eef2e59569e2614ca36ca7da643006a32780738b80e44090b333f7e87b97e00.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_register_social_positioning_05 -> audio/generated/de-DE/lexical/92872a704cf1cbe231f68a875b91a854eca6ce71d68256d8f9edb7803521a658.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('332c4afe-b3f7-536e-afd2-6801c3cf15bd', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_register_social_positioning_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6f9f46ee048b1595101aa61276f3525b14d40c39f4d4d4c6e9c81f3333a06b8c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('18b5f50d-64b7-5d1f-aae5-a7f27ff918f8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('332c4afe-b3f7-536e-afd2-6801c3cf15bd', 1), '6f9f46ee048b1595101aa61276f3525b14d40c39f4d4d4c6e9c81f3333a06b8c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/92872a704cf1cbe231f68a875b91a854eca6ce71d68256d8f9edb7803521a658.mp3', 1097, '2026-09-13 11:18:47.380838', '06a5c9c470a852dc5ac91903f54076484aefd80da7f1ecaa71d488417c45dc5e', 'validated', '{"audio_key":"92872a704cf1cbe231f68a875b91a854eca6ce71d68256d8f9edb7803521a658","entity_key":"lx_register_social_positioning_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"06a5c9c470a852dc5ac91903f54076484aefd80da7f1ecaa71d488417c45dc5e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/92872a704cf1cbe231f68a875b91a854eca6ce71d68256d8f9edb7803521a658.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_register_social_positioning_05 -> audio/generated/de-DE/lexical/92872a704cf1cbe231f68a875b91a854eca6ce71d68256d8f9edb7803521a658.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('68c1cad7-04e9-50f8-8f3a-cf159eb86528', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_register_social_positioning_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6f9f46ee048b1595101aa61276f3525b14d40c39f4d4d4c6e9c81f3333a06b8c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3fb5ad3f-55aa-5b93-bf3d-a1db7be81777', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('68c1cad7-04e9-50f8-8f3a-cf159eb86528', 1), '6f9f46ee048b1595101aa61276f3525b14d40c39f4d4d4c6e9c81f3333a06b8c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/92872a704cf1cbe231f68a875b91a854eca6ce71d68256d8f9edb7803521a658.mp3', 1097, '2026-09-13 11:18:47.380838', '06a5c9c470a852dc5ac91903f54076484aefd80da7f1ecaa71d488417c45dc5e', 'validated', '{"audio_key":"92872a704cf1cbe231f68a875b91a854eca6ce71d68256d8f9edb7803521a658","entity_key":"wf_register_social_positioning_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"06a5c9c470a852dc5ac91903f54076484aefd80da7f1ecaa71d488417c45dc5e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/92872a704cf1cbe231f68a875b91a854eca6ce71d68256d8f9edb7803521a658.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_implicit_stance_subtext_02 -> audio/generated/de-DE/lexical/a0cddce59361bc9cb47b2540797ccc6f6f1707cb1c9563ea7d4411cf2504717e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('4624dd1e-e62c-5b18-b3b8-65e11a40136e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_implicit_stance_subtext_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ddeb4f0e7531bef16fc554376cfcece1738c654c010c5546395e821db03a07ba'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('120fdc46-9f30-5d3e-a738-46c2ea153b17', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('4624dd1e-e62c-5b18-b3b8-65e11a40136e', 1), 'ddeb4f0e7531bef16fc554376cfcece1738c654c010c5546395e821db03a07ba',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a0cddce59361bc9cb47b2540797ccc6f6f1707cb1c9563ea7d4411cf2504717e.mp3', 1253, '2026-09-13 11:18:47.801683', 'fd5527e3bca2dfea4d69997da0da4a35912c0e61a64d812b40e9bcaea3b39a1b', 'validated', '{"audio_key":"a0cddce59361bc9cb47b2540797ccc6f6f1707cb1c9563ea7d4411cf2504717e","entity_key":"lx_implicit_stance_subtext_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fd5527e3bca2dfea4d69997da0da4a35912c0e61a64d812b40e9bcaea3b39a1b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a0cddce59361bc9cb47b2540797ccc6f6f1707cb1c9563ea7d4411cf2504717e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_implicit_stance_subtext_02 -> audio/generated/de-DE/lexical/a0cddce59361bc9cb47b2540797ccc6f6f1707cb1c9563ea7d4411cf2504717e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6b0801fe-5462-5b3a-ad5b-78d8d96ff7e0', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_implicit_stance_subtext_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ddeb4f0e7531bef16fc554376cfcece1738c654c010c5546395e821db03a07ba'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1757c9fe-09e1-55c8-9d33-99d0fe032889', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6b0801fe-5462-5b3a-ad5b-78d8d96ff7e0', 1), 'ddeb4f0e7531bef16fc554376cfcece1738c654c010c5546395e821db03a07ba',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a0cddce59361bc9cb47b2540797ccc6f6f1707cb1c9563ea7d4411cf2504717e.mp3', 1253, '2026-09-13 11:18:47.801683', 'fd5527e3bca2dfea4d69997da0da4a35912c0e61a64d812b40e9bcaea3b39a1b', 'validated', '{"audio_key":"a0cddce59361bc9cb47b2540797ccc6f6f1707cb1c9563ea7d4411cf2504717e","entity_key":"wf_implicit_stance_subtext_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fd5527e3bca2dfea4d69997da0da4a35912c0e61a64d812b40e9bcaea3b39a1b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a0cddce59361bc9cb47b2540797ccc6f6f1707cb1c9563ea7d4411cf2504717e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_lexical_precision_collocation_01 -> audio/generated/de-DE/lexical/a0ebc02731c8b2b5507b0d5e1563560d92e5bacd936cade4212485cd03026770.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c49842ab-5d80-532d-b915-c8b703a5ca78', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_lexical_precision_collocation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '056f9e1ce2b50a08ed18d31d0e693000e6bc2ece23e1a82b4910d6d59ba1d480'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f1811c65-603f-566a-931e-ac286c2243e1', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c49842ab-5d80-532d-b915-c8b703a5ca78', 1), '056f9e1ce2b50a08ed18d31d0e693000e6bc2ece23e1a82b4910d6d59ba1d480',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a0ebc02731c8b2b5507b0d5e1563560d92e5bacd936cade4212485cd03026770.mp3', 1436, '2026-09-13 11:18:48.406269', 'f6e359f682fe4ee493881a899840b4aafc6ba9192735468c9a6fa455ebeaade8', 'validated', '{"audio_key":"a0ebc02731c8b2b5507b0d5e1563560d92e5bacd936cade4212485cd03026770","entity_key":"lx_lexical_precision_collocation_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f6e359f682fe4ee493881a899840b4aafc6ba9192735468c9a6fa455ebeaade8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a0ebc02731c8b2b5507b0d5e1563560d92e5bacd936cade4212485cd03026770.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_lexical_precision_collocation_01 -> audio/generated/de-DE/lexical/a0ebc02731c8b2b5507b0d5e1563560d92e5bacd936cade4212485cd03026770.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0144a317-1b3a-53a4-b12d-199a48756397', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_lexical_precision_collocation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '056f9e1ce2b50a08ed18d31d0e693000e6bc2ece23e1a82b4910d6d59ba1d480'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('90972773-d1d3-5a62-8159-8fbb9aa11db2', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0144a317-1b3a-53a4-b12d-199a48756397', 1), '056f9e1ce2b50a08ed18d31d0e693000e6bc2ece23e1a82b4910d6d59ba1d480',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a0ebc02731c8b2b5507b0d5e1563560d92e5bacd936cade4212485cd03026770.mp3', 1436, '2026-09-13 11:18:48.406269', 'f6e359f682fe4ee493881a899840b4aafc6ba9192735468c9a6fa455ebeaade8', 'validated', '{"audio_key":"a0ebc02731c8b2b5507b0d5e1563560d92e5bacd936cade4212485cd03026770","entity_key":"wf_lexical_precision_collocation_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f6e359f682fe4ee493881a899840b4aafc6ba9192735468c9a6fa455ebeaade8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a0ebc02731c8b2b5507b0d5e1563560d92e5bacd936cade4212485cd03026770.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_register_social_positioning_03 -> audio/generated/de-DE/lexical/a28757ebe9c863111720d5408a3d2d762a2b5f07ad513ae36ac6e4a2410beeb4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('af886c8d-f6e8-5381-8a68-f7f544d833f8', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_register_social_positioning_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b1f23966bf800d1ee52f346533ac5e02fcf3f5313095ad3f6585819b71b96850'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8e5126ef-483c-5192-9dbe-20e654fa4db9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('af886c8d-f6e8-5381-8a68-f7f544d833f8', 1), 'b1f23966bf800d1ee52f346533ac5e02fcf3f5313095ad3f6585819b71b96850',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a28757ebe9c863111720d5408a3d2d762a2b5f07ad513ae36ac6e4a2410beeb4.mp3', 1436, '2026-09-13 11:18:48.839259', '2c0e0bd86cff221f99a228b70bd6f5dc82f89f9ceafc81cf38884f66ed7354e7', 'validated', '{"audio_key":"a28757ebe9c863111720d5408a3d2d762a2b5f07ad513ae36ac6e4a2410beeb4","entity_key":"lx_register_social_positioning_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2c0e0bd86cff221f99a228b70bd6f5dc82f89f9ceafc81cf38884f66ed7354e7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a28757ebe9c863111720d5408a3d2d762a2b5f07ad513ae36ac6e4a2410beeb4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_register_social_positioning_03 -> audio/generated/de-DE/lexical/a28757ebe9c863111720d5408a3d2d762a2b5f07ad513ae36ac6e4a2410beeb4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4af91eb7-f64f-5c12-b593-99383844933e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_register_social_positioning_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b1f23966bf800d1ee52f346533ac5e02fcf3f5313095ad3f6585819b71b96850'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c16a802b-d87c-501d-94d9-15ad394af25a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4af91eb7-f64f-5c12-b593-99383844933e', 1), 'b1f23966bf800d1ee52f346533ac5e02fcf3f5313095ad3f6585819b71b96850',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a28757ebe9c863111720d5408a3d2d762a2b5f07ad513ae36ac6e4a2410beeb4.mp3', 1436, '2026-09-13 11:18:48.839259', '2c0e0bd86cff221f99a228b70bd6f5dc82f89f9ceafc81cf38884f66ed7354e7', 'validated', '{"audio_key":"a28757ebe9c863111720d5408a3d2d762a2b5f07ad513ae36ac6e4a2410beeb4","entity_key":"wf_register_social_positioning_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2c0e0bd86cff221f99a228b70bd6f5dc82f89f9ceafc81cf38884f66ed7354e7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a28757ebe9c863111720d5408a3d2d762a2b5f07ad513ae36ac6e4a2410beeb4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_argument_premises_fallacies_01 -> audio/generated/de-DE/lexical/a49bf0276dccaa11ea8c96d57d9cb871f618217413557a3fadb0648c48cc0274.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d9bff266-a2eb-53f8-af61-c7385e1d62a5', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_argument_premises_fallacies_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1e1ef658013c3ee5fe7490af74d90816f450c0681bea000bb626fa4c35b47100'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4a04d073-f244-5018-813d-13447fbb915d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d9bff266-a2eb-53f8-af61-c7385e1d62a5', 1), '1e1ef658013c3ee5fe7490af74d90816f450c0681bea000bb626fa4c35b47100',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a49bf0276dccaa11ea8c96d57d9cb871f618217413557a3fadb0648c48cc0274.mp3', 1071, '2026-09-13 11:18:49.381385', '7594e4d9d061d8fd358b32b5a13d000c4f5a62ce75ff32d63395703ac6d1afcf', 'validated', '{"audio_key":"a49bf0276dccaa11ea8c96d57d9cb871f618217413557a3fadb0648c48cc0274","entity_key":"lx_argument_premises_fallacies_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7594e4d9d061d8fd358b32b5a13d000c4f5a62ce75ff32d63395703ac6d1afcf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a49bf0276dccaa11ea8c96d57d9cb871f618217413557a3fadb0648c48cc0274.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_argument_premises_fallacies_01 -> audio/generated/de-DE/lexical/a49bf0276dccaa11ea8c96d57d9cb871f618217413557a3fadb0648c48cc0274.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5c93dba8-d044-5ee8-a736-d163fe0bd44e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_argument_premises_fallacies_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1e1ef658013c3ee5fe7490af74d90816f450c0681bea000bb626fa4c35b47100'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7c42ef5a-d3b6-5b2c-a119-023d877fe2b6', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5c93dba8-d044-5ee8-a736-d163fe0bd44e', 1), '1e1ef658013c3ee5fe7490af74d90816f450c0681bea000bb626fa4c35b47100',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a49bf0276dccaa11ea8c96d57d9cb871f618217413557a3fadb0648c48cc0274.mp3', 1071, '2026-09-13 11:18:49.381385', '7594e4d9d061d8fd358b32b5a13d000c4f5a62ce75ff32d63395703ac6d1afcf', 'validated', '{"audio_key":"a49bf0276dccaa11ea8c96d57d9cb871f618217413557a3fadb0648c48cc0274","entity_key":"wf_argument_premises_fallacies_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7594e4d9d061d8fd358b32b5a13d000c4f5a62ce75ff32d63395703ac6d1afcf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a49bf0276dccaa11ea8c96d57d9cb871f618217413557a3fadb0648c48cc0274.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_implicit_stance_subtext_06 -> audio/generated/de-DE/lexical/a72c20f78e4fc5d44f1c0bed8fbfd7aab63a893f37e012bdf856ca41f1d76269.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('bfcfd4e6-e6c8-579a-862f-319228f0b2df', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_implicit_stance_subtext_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b1dfb2c79318f615869875c9ea85dd8715da183d381a1e04e5ca910ae14df8ea'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('999a6074-def2-5b95-bed3-60f131f102e3', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('bfcfd4e6-e6c8-579a-862f-319228f0b2df', 1), 'b1dfb2c79318f615869875c9ea85dd8715da183d381a1e04e5ca910ae14df8ea',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a72c20f78e4fc5d44f1c0bed8fbfd7aab63a893f37e012bdf856ca41f1d76269.mp3', 1097, '2026-09-13 11:18:49.847013', 'afd85f0e8c1031a0f75173aefb379d1a56577f41b4349b910e2e7b7a0c7d3bfe', 'validated', '{"audio_key":"a72c20f78e4fc5d44f1c0bed8fbfd7aab63a893f37e012bdf856ca41f1d76269","entity_key":"lx_implicit_stance_subtext_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"afd85f0e8c1031a0f75173aefb379d1a56577f41b4349b910e2e7b7a0c7d3bfe","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a72c20f78e4fc5d44f1c0bed8fbfd7aab63a893f37e012bdf856ca41f1d76269.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_implicit_stance_subtext_06 -> audio/generated/de-DE/lexical/a72c20f78e4fc5d44f1c0bed8fbfd7aab63a893f37e012bdf856ca41f1d76269.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e7109e93-8ea4-5a99-9d78-42baa29ec03d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_implicit_stance_subtext_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b1dfb2c79318f615869875c9ea85dd8715da183d381a1e04e5ca910ae14df8ea'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2d4d2677-8fa6-54ab-a5b1-5dae68ecaeba', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e7109e93-8ea4-5a99-9d78-42baa29ec03d', 1), 'b1dfb2c79318f615869875c9ea85dd8715da183d381a1e04e5ca910ae14df8ea',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a72c20f78e4fc5d44f1c0bed8fbfd7aab63a893f37e012bdf856ca41f1d76269.mp3', 1097, '2026-09-13 11:18:49.847013', 'afd85f0e8c1031a0f75173aefb379d1a56577f41b4349b910e2e7b7a0c7d3bfe', 'validated', '{"audio_key":"a72c20f78e4fc5d44f1c0bed8fbfd7aab63a893f37e012bdf856ca41f1d76269","entity_key":"wf_implicit_stance_subtext_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"afd85f0e8c1031a0f75173aefb379d1a56577f41b4349b910e2e7b7a0c7d3bfe","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a72c20f78e4fc5d44f1c0bed8fbfd7aab63a893f37e012bdf856ca41f1d76269.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_lexical_precision_collocation_02 -> audio/generated/de-DE/lexical/abab163d411f39bbb2adb95633bbbfd64fad46f8d49b4c06d10f9767512e243c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('fcb9f6c5-e270-577f-becb-889ba50414ba', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_lexical_precision_collocation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '70c3ed07fec50b8671cd846d251eb3e6c85122b154061ea659d7e54380d79825'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a093c262-7a72-58e5-bdd8-15ababb9c1d4', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('fcb9f6c5-e270-577f-becb-889ba50414ba', 1), '70c3ed07fec50b8671cd846d251eb3e6c85122b154061ea659d7e54380d79825',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/abab163d411f39bbb2adb95633bbbfd64fad46f8d49b4c06d10f9767512e243c.mp3', 1280, '2026-09-13 11:18:50.378517', 'b715ae649dffd6333edab9dd3067974c81cf7768af7a5c03900a7b9a117395e7', 'validated', '{"audio_key":"abab163d411f39bbb2adb95633bbbfd64fad46f8d49b4c06d10f9767512e243c","entity_key":"lx_lexical_precision_collocation_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b715ae649dffd6333edab9dd3067974c81cf7768af7a5c03900a7b9a117395e7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/abab163d411f39bbb2adb95633bbbfd64fad46f8d49b4c06d10f9767512e243c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_lexical_precision_collocation_02 -> audio/generated/de-DE/lexical/abab163d411f39bbb2adb95633bbbfd64fad46f8d49b4c06d10f9767512e243c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('bf6991fb-c7eb-5791-af3a-770196bf15e3', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_lexical_precision_collocation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '70c3ed07fec50b8671cd846d251eb3e6c85122b154061ea659d7e54380d79825'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ebd7aa83-d1a3-5518-afd6-6a9fc0a261af', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('bf6991fb-c7eb-5791-af3a-770196bf15e3', 1), '70c3ed07fec50b8671cd846d251eb3e6c85122b154061ea659d7e54380d79825',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/abab163d411f39bbb2adb95633bbbfd64fad46f8d49b4c06d10f9767512e243c.mp3', 1280, '2026-09-13 11:18:50.378517', 'b715ae649dffd6333edab9dd3067974c81cf7768af7a5c03900a7b9a117395e7', 'validated', '{"audio_key":"abab163d411f39bbb2adb95633bbbfd64fad46f8d49b4c06d10f9767512e243c","entity_key":"wf_lexical_precision_collocation_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b715ae649dffd6333edab9dd3067974c81cf7768af7a5c03900a7b9a117395e7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/abab163d411f39bbb2adb95633bbbfd64fad46f8d49b4c06d10f9767512e243c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_irony_indirect_critique_05 -> audio/generated/de-DE/lexical/abc35adc19e654fc580cdf1637206119090518b57067a1e00c2c667ae48e6861.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0921c04e-0f85-5df6-b38e-182c95c8feaa', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_irony_indirect_critique_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2f3812599b8ab4aafaf008c28d6d5ac9828d25649d75d6a7fdcc556d76ac7cf1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7a63883d-b5fe-5a78-a0d2-b70098b279fe', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0921c04e-0f85-5df6-b38e-182c95c8feaa', 1), '2f3812599b8ab4aafaf008c28d6d5ac9828d25649d75d6a7fdcc556d76ac7cf1',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/abc35adc19e654fc580cdf1637206119090518b57067a1e00c2c667ae48e6861.mp3', 1436, '2026-09-13 11:18:50.874937', 'ff6d91b471e236b3a40137b2d37ded9cda608bfdff22f28e7c954e7acede24d4', 'validated', '{"audio_key":"abc35adc19e654fc580cdf1637206119090518b57067a1e00c2c667ae48e6861","entity_key":"lx_irony_indirect_critique_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ff6d91b471e236b3a40137b2d37ded9cda608bfdff22f28e7c954e7acede24d4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/abc35adc19e654fc580cdf1637206119090518b57067a1e00c2c667ae48e6861.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_irony_indirect_critique_05 -> audio/generated/de-DE/lexical/abc35adc19e654fc580cdf1637206119090518b57067a1e00c2c667ae48e6861.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5ae48ffc-c418-5035-8c35-264b5ec3692b', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_irony_indirect_critique_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2f3812599b8ab4aafaf008c28d6d5ac9828d25649d75d6a7fdcc556d76ac7cf1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c04ab402-66f4-5e93-9160-3476c59c7f35', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5ae48ffc-c418-5035-8c35-264b5ec3692b', 1), '2f3812599b8ab4aafaf008c28d6d5ac9828d25649d75d6a7fdcc556d76ac7cf1',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/abc35adc19e654fc580cdf1637206119090518b57067a1e00c2c667ae48e6861.mp3', 1436, '2026-09-13 11:18:50.874937', 'ff6d91b471e236b3a40137b2d37ded9cda608bfdff22f28e7c954e7acede24d4', 'validated', '{"audio_key":"abc35adc19e654fc580cdf1637206119090518b57067a1e00c2c667ae48e6861","entity_key":"wf_irony_indirect_critique_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ff6d91b471e236b3a40137b2d37ded9cda608bfdff22f28e7c954e7acede24d4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/abc35adc19e654fc580cdf1637206119090518b57067a1e00c2c667ae48e6861.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_argument_premises_fallacies_02 -> audio/generated/de-DE/lexical/ad43db0e373aecf1ea68331c366754ed628a82604789cb3913df200dc1b9a627.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('774d09fb-b76a-592a-9ccb-1d3aede44f81', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_argument_premises_fallacies_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7a66a918d04783321a891071ef136af569060704c0976ac65e5d244d6ab7c4f9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d9bdf0bc-3beb-544c-9042-631dfb702643', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('774d09fb-b76a-592a-9ccb-1d3aede44f81', 1), '7a66a918d04783321a891071ef136af569060704c0976ac65e5d244d6ab7c4f9',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ad43db0e373aecf1ea68331c366754ed628a82604789cb3913df200dc1b9a627.mp3', 1097, '2026-09-13 11:18:51.385549', 'bf67052ddcec9b6c78cafb94ac9a3110aa4e1954f9d7ee1a4643525e8f2bc3ab', 'validated', '{"audio_key":"ad43db0e373aecf1ea68331c366754ed628a82604789cb3913df200dc1b9a627","entity_key":"lx_argument_premises_fallacies_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bf67052ddcec9b6c78cafb94ac9a3110aa4e1954f9d7ee1a4643525e8f2bc3ab","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ad43db0e373aecf1ea68331c366754ed628a82604789cb3913df200dc1b9a627.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_argument_premises_fallacies_02 -> audio/generated/de-DE/lexical/ad43db0e373aecf1ea68331c366754ed628a82604789cb3913df200dc1b9a627.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('03b10d6e-e370-553b-a1b2-7ced231afa58', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_argument_premises_fallacies_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7a66a918d04783321a891071ef136af569060704c0976ac65e5d244d6ab7c4f9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('07d0e56c-cc03-59a5-8017-f8f770bbad87', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('03b10d6e-e370-553b-a1b2-7ced231afa58', 1), '7a66a918d04783321a891071ef136af569060704c0976ac65e5d244d6ab7c4f9',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ad43db0e373aecf1ea68331c366754ed628a82604789cb3913df200dc1b9a627.mp3', 1097, '2026-09-13 11:18:51.385549', 'bf67052ddcec9b6c78cafb94ac9a3110aa4e1954f9d7ee1a4643525e8f2bc3ab', 'validated', '{"audio_key":"ad43db0e373aecf1ea68331c366754ed628a82604789cb3913df200dc1b9a627","entity_key":"wf_argument_premises_fallacies_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bf67052ddcec9b6c78cafb94ac9a3110aa4e1954f9d7ee1a4643525e8f2bc3ab","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ad43db0e373aecf1ea68331c366754ed628a82604789cb3913df200dc1b9a627.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_argument_premises_fallacies_05 -> audio/generated/de-DE/lexical/b4e939a1fc32711a2f19ab0e503d6763925d76361bb8e5f8c30865a2544b51ee.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5ff5a196-667e-54aa-9a17-d32aad5acb2d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_argument_premises_fallacies_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f61e0d08f5d16cc7e9220843dc49f125eee3c62888a8d6388f91475193db10ee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('253640b9-a84d-55d4-97dd-d982632f4dbc', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5ff5a196-667e-54aa-9a17-d32aad5acb2d', 1), 'f61e0d08f5d16cc7e9220843dc49f125eee3c62888a8d6388f91475193db10ee',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b4e939a1fc32711a2f19ab0e503d6763925d76361bb8e5f8c30865a2544b51ee.mp3', 1201, '2026-09-13 11:18:51.894872', 'dba2906cf69cac44a2c6b52d6fa8a5ff9c68531117338a10d5438169dcccc7cd', 'validated', '{"audio_key":"b4e939a1fc32711a2f19ab0e503d6763925d76361bb8e5f8c30865a2544b51ee","entity_key":"lx_argument_premises_fallacies_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dba2906cf69cac44a2c6b52d6fa8a5ff9c68531117338a10d5438169dcccc7cd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b4e939a1fc32711a2f19ab0e503d6763925d76361bb8e5f8c30865a2544b51ee.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_argument_premises_fallacies_05 -> audio/generated/de-DE/lexical/b4e939a1fc32711a2f19ab0e503d6763925d76361bb8e5f8c30865a2544b51ee.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a1258461-3e36-5ae1-88ca-1061dc18dec5', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_argument_premises_fallacies_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f61e0d08f5d16cc7e9220843dc49f125eee3c62888a8d6388f91475193db10ee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a6cbc906-b5fa-5e62-8ae8-83193c7bfc9a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a1258461-3e36-5ae1-88ca-1061dc18dec5', 1), 'f61e0d08f5d16cc7e9220843dc49f125eee3c62888a8d6388f91475193db10ee',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b4e939a1fc32711a2f19ab0e503d6763925d76361bb8e5f8c30865a2544b51ee.mp3', 1201, '2026-09-13 11:18:51.894872', 'dba2906cf69cac44a2c6b52d6fa8a5ff9c68531117338a10d5438169dcccc7cd', 'validated', '{"audio_key":"b4e939a1fc32711a2f19ab0e503d6763925d76361bb8e5f8c30865a2544b51ee","entity_key":"wf_argument_premises_fallacies_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dba2906cf69cac44a2c6b52d6fa8a5ff9c68531117338a10d5438169dcccc7cd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b4e939a1fc32711a2f19ab0e503d6763925d76361bb8e5f8c30865a2544b51ee.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_systems_causality_feedback_02 -> audio/generated/de-DE/lexical/c6d2af03d0dc8c25e0461117588d5b4ea65aa29ddc96d8e7d0f9376009b56471.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('45590519-28f3-51e4-b745-945b4a0bc3b5', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_systems_causality_feedback_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1b4997026644bc647a4d09c485cf9a56980c559dfa9cf2471c4f304ab5418b16'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d1b85e7d-8e47-56c7-b221-e6e7a2efcc12', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('45590519-28f3-51e4-b745-945b4a0bc3b5', 1), '1b4997026644bc647a4d09c485cf9a56980c559dfa9cf2471c4f304ab5418b16',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c6d2af03d0dc8c25e0461117588d5b4ea65aa29ddc96d8e7d0f9376009b56471.mp3', 1280, '2026-09-13 11:18:52.446641', '9a8c8a31c334d945cede48597b0e8482f67aaaded927162841e80a7c7956de11', 'validated', '{"audio_key":"c6d2af03d0dc8c25e0461117588d5b4ea65aa29ddc96d8e7d0f9376009b56471","entity_key":"lx_systems_causality_feedback_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9a8c8a31c334d945cede48597b0e8482f67aaaded927162841e80a7c7956de11","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c6d2af03d0dc8c25e0461117588d5b4ea65aa29ddc96d8e7d0f9376009b56471.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_systems_causality_feedback_02 -> audio/generated/de-DE/lexical/c6d2af03d0dc8c25e0461117588d5b4ea65aa29ddc96d8e7d0f9376009b56471.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b191d6ca-6a7e-5086-89ef-0a30a4131bf4', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_systems_causality_feedback_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1b4997026644bc647a4d09c485cf9a56980c559dfa9cf2471c4f304ab5418b16'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bba465df-d509-5795-b0fb-d8a69fbaecfc', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b191d6ca-6a7e-5086-89ef-0a30a4131bf4', 1), '1b4997026644bc647a4d09c485cf9a56980c559dfa9cf2471c4f304ab5418b16',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c6d2af03d0dc8c25e0461117588d5b4ea65aa29ddc96d8e7d0f9376009b56471.mp3', 1280, '2026-09-13 11:18:52.446641', '9a8c8a31c334d945cede48597b0e8482f67aaaded927162841e80a7c7956de11', 'validated', '{"audio_key":"c6d2af03d0dc8c25e0461117588d5b4ea65aa29ddc96d8e7d0f9376009b56471","entity_key":"wf_systems_causality_feedback_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9a8c8a31c334d945cede48597b0e8482f67aaaded927162841e80a7c7956de11","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c6d2af03d0dc8c25e0461117588d5b4ea65aa29ddc96d8e7d0f9376009b56471.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_rhetorical_strategy_diagnostics_05 -> audio/generated/de-DE/lexical/c9c9c148bb2ab3e35c7812b0cddfdda5218bedc2be12a2cc4a1c33747fa48404.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ae475d5a-f833-5197-a58d-f1afe8911752', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_rhetorical_strategy_diagnostics_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f73fe402e9fe245e142856eb76da7d235a9c7b426f2c40e60d2ffc27287aae1b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e87b5b9d-f88a-5b1c-ba1a-d52dca094c1b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ae475d5a-f833-5197-a58d-f1afe8911752', 1), 'f73fe402e9fe245e142856eb76da7d235a9c7b426f2c40e60d2ffc27287aae1b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c9c9c148bb2ab3e35c7812b0cddfdda5218bedc2be12a2cc4a1c33747fa48404.mp3', 1384, '2026-09-13 11:18:52.924658', '2c49e7d6f4f0051c8425df9b2da583cdd507d8dd8ef66625a57b5d55ef3fe10a', 'validated', '{"audio_key":"c9c9c148bb2ab3e35c7812b0cddfdda5218bedc2be12a2cc4a1c33747fa48404","entity_key":"lx_rhetorical_strategy_diagnostics_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2c49e7d6f4f0051c8425df9b2da583cdd507d8dd8ef66625a57b5d55ef3fe10a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c9c9c148bb2ab3e35c7812b0cddfdda5218bedc2be12a2cc4a1c33747fa48404.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_rhetorical_strategy_diagnostics_05 -> audio/generated/de-DE/lexical/c9c9c148bb2ab3e35c7812b0cddfdda5218bedc2be12a2cc4a1c33747fa48404.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a5c4e72c-c028-52f4-aa4d-46a4043c9d68', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_rhetorical_strategy_diagnostics_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f73fe402e9fe245e142856eb76da7d235a9c7b426f2c40e60d2ffc27287aae1b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1cfe3839-2148-5f28-8d0e-c1781d34249e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a5c4e72c-c028-52f4-aa4d-46a4043c9d68', 1), 'f73fe402e9fe245e142856eb76da7d235a9c7b426f2c40e60d2ffc27287aae1b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c9c9c148bb2ab3e35c7812b0cddfdda5218bedc2be12a2cc4a1c33747fa48404.mp3', 1384, '2026-09-13 11:18:52.924658', '2c49e7d6f4f0051c8425df9b2da583cdd507d8dd8ef66625a57b5d55ef3fe10a', 'validated', '{"audio_key":"c9c9c148bb2ab3e35c7812b0cddfdda5218bedc2be12a2cc4a1c33747fa48404","entity_key":"wf_rhetorical_strategy_diagnostics_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2c49e7d6f4f0051c8425df9b2da583cdd507d8dd8ef66625a57b5d55ef3fe10a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c9c9c148bb2ab3e35c7812b0cddfdda5218bedc2be12a2cc4a1c33747fa48404.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_high_stakes_discursive_intervention_04 -> audio/generated/de-DE/lexical/cc602553b8f57d2b9ee13bb16c449d5d524783e7b93594df2feed22f5383e449.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('4d1ec2d3-23df-552e-8e31-2fc6c7849a8e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_high_stakes_discursive_intervention_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6e56d1c642b7114a99b7adfe5c90279ddf1f33392721b52f22a80fa74005d120'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1268d64a-6763-52cc-bdc7-535b7b7011ca', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('4d1ec2d3-23df-552e-8e31-2fc6c7849a8e', 1), '6e56d1c642b7114a99b7adfe5c90279ddf1f33392721b52f22a80fa74005d120',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/cc602553b8f57d2b9ee13bb16c449d5d524783e7b93594df2feed22f5383e449.mp3', 1071, '2026-09-13 11:18:53.442633', 'e0eb50a0685b2f752fbf2556ae86ee4bf92c6647c7c3d7cb6871e052187e6546', 'validated', '{"audio_key":"cc602553b8f57d2b9ee13bb16c449d5d524783e7b93594df2feed22f5383e449","entity_key":"lx_high_stakes_discursive_intervention_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e0eb50a0685b2f752fbf2556ae86ee4bf92c6647c7c3d7cb6871e052187e6546","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/cc602553b8f57d2b9ee13bb16c449d5d524783e7b93594df2feed22f5383e449.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_high_stakes_discursive_intervention_04 -> audio/generated/de-DE/lexical/cc602553b8f57d2b9ee13bb16c449d5d524783e7b93594df2feed22f5383e449.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9f716fd7-feb8-577b-a4fe-00a59111af19', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_high_stakes_discursive_intervention_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6e56d1c642b7114a99b7adfe5c90279ddf1f33392721b52f22a80fa74005d120'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('35543b86-1bdb-5c40-8ade-2cfb52289233', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9f716fd7-feb8-577b-a4fe-00a59111af19', 1), '6e56d1c642b7114a99b7adfe5c90279ddf1f33392721b52f22a80fa74005d120',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/cc602553b8f57d2b9ee13bb16c449d5d524783e7b93594df2feed22f5383e449.mp3', 1071, '2026-09-13 11:18:53.442633', 'e0eb50a0685b2f752fbf2556ae86ee4bf92c6647c7c3d7cb6871e052187e6546', 'validated', '{"audio_key":"cc602553b8f57d2b9ee13bb16c449d5d524783e7b93594df2feed22f5383e449","entity_key":"wf_high_stakes_discursive_intervention_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e0eb50a0685b2f752fbf2556ae86ee4bf92c6647c7c3d7cb6871e052187e6546","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/cc602553b8f57d2b9ee13bb16c449d5d524783e7b93594df2feed22f5383e449.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_lexical_precision_collocation_03 -> audio/generated/de-DE/lexical/cc82123388bcf527a86911a3eb46de63b8a141d20db0e81cb4b7eef047bb0852.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0fbf1ff8-a484-5c0b-8114-6f20db9102b9', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_lexical_precision_collocation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8df239a99449a03a70a1734a5ec19717d8a738f913b032895ff1f0c4d3e6f905'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('55201ed7-4880-5f2a-897b-e17280b58313', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0fbf1ff8-a484-5c0b-8114-6f20db9102b9', 1), '8df239a99449a03a70a1734a5ec19717d8a738f913b032895ff1f0c4d3e6f905',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/cc82123388bcf527a86911a3eb46de63b8a141d20db0e81cb4b7eef047bb0852.mp3', 1253, '2026-09-13 11:18:53.936689', '0b77135fc0a4494ad6c82b658dda98f3721c1015692397d069f8837a05b4913c', 'validated', '{"audio_key":"cc82123388bcf527a86911a3eb46de63b8a141d20db0e81cb4b7eef047bb0852","entity_key":"lx_lexical_precision_collocation_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0b77135fc0a4494ad6c82b658dda98f3721c1015692397d069f8837a05b4913c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/cc82123388bcf527a86911a3eb46de63b8a141d20db0e81cb4b7eef047bb0852.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_lexical_precision_collocation_03 -> audio/generated/de-DE/lexical/cc82123388bcf527a86911a3eb46de63b8a141d20db0e81cb4b7eef047bb0852.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ec3b1680-1fe7-5658-979e-5847396a4f13', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_lexical_precision_collocation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8df239a99449a03a70a1734a5ec19717d8a738f913b032895ff1f0c4d3e6f905'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cd3faa1a-4bb7-52ef-82cc-1a63a57a07ed', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ec3b1680-1fe7-5658-979e-5847396a4f13', 1), '8df239a99449a03a70a1734a5ec19717d8a738f913b032895ff1f0c4d3e6f905',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/cc82123388bcf527a86911a3eb46de63b8a141d20db0e81cb4b7eef047bb0852.mp3', 1253, '2026-09-13 11:18:53.936689', '0b77135fc0a4494ad6c82b658dda98f3721c1015692397d069f8837a05b4913c', 'validated', '{"audio_key":"cc82123388bcf527a86911a3eb46de63b8a141d20db0e81cb4b7eef047bb0852","entity_key":"wf_lexical_precision_collocation_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0b77135fc0a4494ad6c82b658dda98f3721c1015692397d069f8837a05b4913c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/cc82123388bcf527a86911a3eb46de63b8a141d20db0e81cb4b7eef047bb0852.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_interpret_reframe_position_capstone_06 -> audio/generated/de-DE/lexical/d0c1ef3c3e51237863a4bfc61d3a5790f1bf6686f20c7cda32a2a8c3ceae9b17.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('bff5cd42-d12d-542d-9cab-14405596c8d5', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_interpret_reframe_position_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '35f794a0f9efe93d7befa4ca650b9306a3605fb288ab47fe9881968e42949b59'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7b16bc12-3399-5cb4-a968-d2dc186850d9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('bff5cd42-d12d-542d-9cab-14405596c8d5', 1), '35f794a0f9efe93d7befa4ca650b9306a3605fb288ab47fe9881968e42949b59',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/d0c1ef3c3e51237863a4bfc61d3a5790f1bf6686f20c7cda32a2a8c3ceae9b17.mp3', 966, '2026-09-13 11:18:54.435018', 'ddcb6435aeba813d56fc7db3ebbd5e4077b1bd5bbd2b0d80c5e70dca149bec9b', 'validated', '{"audio_key":"d0c1ef3c3e51237863a4bfc61d3a5790f1bf6686f20c7cda32a2a8c3ceae9b17","entity_key":"lx_interpret_reframe_position_capstone_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ddcb6435aeba813d56fc7db3ebbd5e4077b1bd5bbd2b0d80c5e70dca149bec9b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/d0c1ef3c3e51237863a4bfc61d3a5790f1bf6686f20c7cda32a2a8c3ceae9b17.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_interpret_reframe_position_capstone_06 -> audio/generated/de-DE/lexical/d0c1ef3c3e51237863a4bfc61d3a5790f1bf6686f20c7cda32a2a8c3ceae9b17.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('84417648-7ccb-599b-a952-46655eb19062', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_interpret_reframe_position_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '35f794a0f9efe93d7befa4ca650b9306a3605fb288ab47fe9881968e42949b59'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0eb04dc1-46a9-56d8-8632-4c4d5d560835', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('84417648-7ccb-599b-a952-46655eb19062', 1), '35f794a0f9efe93d7befa4ca650b9306a3605fb288ab47fe9881968e42949b59',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/d0c1ef3c3e51237863a4bfc61d3a5790f1bf6686f20c7cda32a2a8c3ceae9b17.mp3', 966, '2026-09-13 11:18:54.435018', 'ddcb6435aeba813d56fc7db3ebbd5e4077b1bd5bbd2b0d80c5e70dca149bec9b', 'validated', '{"audio_key":"d0c1ef3c3e51237863a4bfc61d3a5790f1bf6686f20c7cda32a2a8c3ceae9b17","entity_key":"wf_interpret_reframe_position_capstone_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ddcb6435aeba813d56fc7db3ebbd5e4077b1bd5bbd2b0d80c5e70dca149bec9b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/d0c1ef3c3e51237863a4bfc61d3a5790f1bf6686f20c7cda32a2a8c3ceae9b17.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_register_social_positioning_01 -> audio/generated/de-DE/lexical/e6e0e729aa6569d15b9a8b3fd5f4b64060756713ee3aa9a53af3f82f2b240d95.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1a927873-6428-5e27-a34b-7293c9cee6b5', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_register_social_positioning_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '28d9e2da536f08b5bb75f9dd5dda605446ad71cf7d5269e3ab5629e640b10743'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('663441f1-1b88-5a88-af07-51780cda0a64', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1a927873-6428-5e27-a34b-7293c9cee6b5', 1), '28d9e2da536f08b5bb75f9dd5dda605446ad71cf7d5269e3ab5629e640b10743',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e6e0e729aa6569d15b9a8b3fd5f4b64060756713ee3aa9a53af3f82f2b240d95.mp3', 1280, '2026-09-13 11:18:55.125072', '353959301a1063c6a06f0aea1525340ce898b0f309083f9ef792206366ed497a', 'validated', '{"audio_key":"e6e0e729aa6569d15b9a8b3fd5f4b64060756713ee3aa9a53af3f82f2b240d95","entity_key":"lx_register_social_positioning_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"353959301a1063c6a06f0aea1525340ce898b0f309083f9ef792206366ed497a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e6e0e729aa6569d15b9a8b3fd5f4b64060756713ee3aa9a53af3f82f2b240d95.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_register_social_positioning_01 -> audio/generated/de-DE/lexical/e6e0e729aa6569d15b9a8b3fd5f4b64060756713ee3aa9a53af3f82f2b240d95.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('023f84bb-c61d-593a-8aa7-6e5520abdcfe', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_register_social_positioning_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '28d9e2da536f08b5bb75f9dd5dda605446ad71cf7d5269e3ab5629e640b10743'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9626d023-6e62-5050-83a6-d17a4890a23f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('023f84bb-c61d-593a-8aa7-6e5520abdcfe', 1), '28d9e2da536f08b5bb75f9dd5dda605446ad71cf7d5269e3ab5629e640b10743',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e6e0e729aa6569d15b9a8b3fd5f4b64060756713ee3aa9a53af3f82f2b240d95.mp3', 1280, '2026-09-13 11:18:55.125072', '353959301a1063c6a06f0aea1525340ce898b0f309083f9ef792206366ed497a', 'validated', '{"audio_key":"e6e0e729aa6569d15b9a8b3fd5f4b64060756713ee3aa9a53af3f82f2b240d95","entity_key":"wf_register_social_positioning_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"353959301a1063c6a06f0aea1525340ce898b0f309083f9ef792206366ed497a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e6e0e729aa6569d15b9a8b3fd5f4b64060756713ee3aa9a53af3f82f2b240d95.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_systems_causality_feedback_01 -> audio/generated/de-DE/lexical/e7c6c653ace2451472dcbe73ba7fa75aaeab75795f311082dc99e7699d393677.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('207dcfbb-ced5-5e84-93d6-a53f633adc37', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_systems_causality_feedback_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd643edce04decf3ee661b989897ec87e2790235aebcd527234f5ffac0121a445'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b70d3797-ca81-5d3c-9007-2423ae327643', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('207dcfbb-ced5-5e84-93d6-a53f633adc37', 1), 'd643edce04decf3ee661b989897ec87e2790235aebcd527234f5ffac0121a445',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e7c6c653ace2451472dcbe73ba7fa75aaeab75795f311082dc99e7699d393677.mp3', 1149, '2026-09-13 10:01:16.064577', 'ad46520503890e5726b00f7113fc9d5a21b7ae6075888d250926daa19bd9312d', 'validated', '{"audio_key":"e7c6c653ace2451472dcbe73ba7fa75aaeab75795f311082dc99e7699d393677","entity_key":"lx_systems_causality_feedback_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ad46520503890e5726b00f7113fc9d5a21b7ae6075888d250926daa19bd9312d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e7c6c653ace2451472dcbe73ba7fa75aaeab75795f311082dc99e7699d393677.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_systems_causality_feedback_01 -> audio/generated/de-DE/lexical/e7c6c653ace2451472dcbe73ba7fa75aaeab75795f311082dc99e7699d393677.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3d0f2ef1-d370-586c-ba6a-aa8fadfae5d8', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_systems_causality_feedback_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd643edce04decf3ee661b989897ec87e2790235aebcd527234f5ffac0121a445'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('50550815-af5c-57d6-9ac2-ea876a94a962', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3d0f2ef1-d370-586c-ba6a-aa8fadfae5d8', 1), 'd643edce04decf3ee661b989897ec87e2790235aebcd527234f5ffac0121a445',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e7c6c653ace2451472dcbe73ba7fa75aaeab75795f311082dc99e7699d393677.mp3', 1149, '2026-09-13 10:01:16.064577', 'ad46520503890e5726b00f7113fc9d5a21b7ae6075888d250926daa19bd9312d', 'validated', '{"audio_key":"e7c6c653ace2451472dcbe73ba7fa75aaeab75795f311082dc99e7699d393677","entity_key":"wf_systems_causality_feedback_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ad46520503890e5726b00f7113fc9d5a21b7ae6075888d250926daa19bd9312d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e7c6c653ace2451472dcbe73ba7fa75aaeab75795f311082dc99e7699d393677.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_systems_causality_feedback_06 -> audio/generated/de-DE/lexical/ea1a48394cff2bc35150fb106720b90d55cba852c53461492cf800712d459007.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('72d42049-c568-5706-934e-829d3f5f689c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_systems_causality_feedback_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'edcbd6b42bd0f18245633676d9e5519fe3f86f4c98a26a0af6c2a39f5273ad90'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('188985d5-cd81-5669-9042-9094e3044827', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('72d42049-c568-5706-934e-829d3f5f689c', 1), 'edcbd6b42bd0f18245633676d9e5519fe3f86f4c98a26a0af6c2a39f5273ad90',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ea1a48394cff2bc35150fb106720b90d55cba852c53461492cf800712d459007.mp3', 1280, '2026-09-13 11:18:55.429245', '0b75f9c9ea7884c1eacf262615444f0ed2bb2ea1a69a1e41808a8ab7add42bd8', 'validated', '{"audio_key":"ea1a48394cff2bc35150fb106720b90d55cba852c53461492cf800712d459007","entity_key":"lx_systems_causality_feedback_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0b75f9c9ea7884c1eacf262615444f0ed2bb2ea1a69a1e41808a8ab7add42bd8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ea1a48394cff2bc35150fb106720b90d55cba852c53461492cf800712d459007.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_systems_causality_feedback_06 -> audio/generated/de-DE/lexical/ea1a48394cff2bc35150fb106720b90d55cba852c53461492cf800712d459007.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('679fcbb2-aa39-5019-9438-32bb5da22f8d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_systems_causality_feedback_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'edcbd6b42bd0f18245633676d9e5519fe3f86f4c98a26a0af6c2a39f5273ad90'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('036bed41-2643-5478-9c87-e9cb6421edd5', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('679fcbb2-aa39-5019-9438-32bb5da22f8d', 1), 'edcbd6b42bd0f18245633676d9e5519fe3f86f4c98a26a0af6c2a39f5273ad90',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ea1a48394cff2bc35150fb106720b90d55cba852c53461492cf800712d459007.mp3', 1280, '2026-09-13 11:18:55.429245', '0b75f9c9ea7884c1eacf262615444f0ed2bb2ea1a69a1e41808a8ab7add42bd8', 'validated', '{"audio_key":"ea1a48394cff2bc35150fb106720b90d55cba852c53461492cf800712d459007","entity_key":"wf_systems_causality_feedback_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0b75f9c9ea7884c1eacf262615444f0ed2bb2ea1a69a1e41808a8ab7add42bd8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ea1a48394cff2bc35150fb106720b90d55cba852c53461492cf800712d459007.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_lexical_precision_collocation_04 -> audio/generated/de-DE/lexical/f2a923f8284a90f6547cb0cfe9b5c0b9bf0cbc6952edfe150da14e1ff953c60c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('69719712-0d08-53f6-b4c0-aa97eb35e763', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_lexical_precision_collocation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3625cf2bc2238a39625ba98e3a8226e06c7b2dc53bff319463511f3926e8aae3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c904f780-026a-56f0-8544-7b2e38c4ccdc', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('69719712-0d08-53f6-b4c0-aa97eb35e763', 1), '3625cf2bc2238a39625ba98e3a8226e06c7b2dc53bff319463511f3926e8aae3',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f2a923f8284a90f6547cb0cfe9b5c0b9bf0cbc6952edfe150da14e1ff953c60c.mp3', 1201, '2026-09-13 10:01:18.275395', '3e3c1c7d4863d922b28eeb63b1914201bcb9030cafa55d41083486905f88b677', 'validated', '{"audio_key":"f2a923f8284a90f6547cb0cfe9b5c0b9bf0cbc6952edfe150da14e1ff953c60c","entity_key":"lx_lexical_precision_collocation_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3e3c1c7d4863d922b28eeb63b1914201bcb9030cafa55d41083486905f88b677","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f2a923f8284a90f6547cb0cfe9b5c0b9bf0cbc6952edfe150da14e1ff953c60c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_lexical_precision_collocation_04 -> audio/generated/de-DE/lexical/f2a923f8284a90f6547cb0cfe9b5c0b9bf0cbc6952edfe150da14e1ff953c60c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0b7728d7-58d9-5ec9-879d-006d0272b3ec', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_lexical_precision_collocation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3625cf2bc2238a39625ba98e3a8226e06c7b2dc53bff319463511f3926e8aae3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2ce125f2-4c03-5f65-bc07-ee2e7ecfbc9a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0b7728d7-58d9-5ec9-879d-006d0272b3ec', 1), '3625cf2bc2238a39625ba98e3a8226e06c7b2dc53bff319463511f3926e8aae3',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f2a923f8284a90f6547cb0cfe9b5c0b9bf0cbc6952edfe150da14e1ff953c60c.mp3', 1201, '2026-09-13 10:01:18.275395', '3e3c1c7d4863d922b28eeb63b1914201bcb9030cafa55d41083486905f88b677', 'validated', '{"audio_key":"f2a923f8284a90f6547cb0cfe9b5c0b9bf0cbc6952edfe150da14e1ff953c60c","entity_key":"wf_lexical_precision_collocation_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3e3c1c7d4863d922b28eeb63b1914201bcb9030cafa55d41083486905f88b677","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f2a923f8284a90f6547cb0cfe9b5c0b9bf0cbc6952edfe150da14e1ff953c60c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_irony_indirect_critique_01 -> audio/generated/de-DE/lexical/f96e8da7a1b14358a0ae0a35f6972f6de0cf2eb9655c70304d0420eb66f63172.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('08f62342-350f-5001-b30c-aad5700070b3', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_irony_indirect_critique_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '497e767800d198a5a9a42de7d03ebd7ed9ff950e66d89257d9a8138734fca4d0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c314ea98-795b-56d9-ac1d-a85064edf1d7', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('08f62342-350f-5001-b30c-aad5700070b3', 1), '497e767800d198a5a9a42de7d03ebd7ed9ff950e66d89257d9a8138734fca4d0',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f96e8da7a1b14358a0ae0a35f6972f6de0cf2eb9655c70304d0420eb66f63172.mp3', 966, '2026-09-13 11:18:56.092130', '65abcdafe7869b4e6bfa20267985168ed7d23dac5d7f897601f6c187852abdc4', 'validated', '{"audio_key":"f96e8da7a1b14358a0ae0a35f6972f6de0cf2eb9655c70304d0420eb66f63172","entity_key":"lx_irony_indirect_critique_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"65abcdafe7869b4e6bfa20267985168ed7d23dac5d7f897601f6c187852abdc4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f96e8da7a1b14358a0ae0a35f6972f6de0cf2eb9655c70304d0420eb66f63172.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_irony_indirect_critique_01 -> audio/generated/de-DE/lexical/f96e8da7a1b14358a0ae0a35f6972f6de0cf2eb9655c70304d0420eb66f63172.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('be8079f5-8f7a-503e-b77d-9f6e2a748a07', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_irony_indirect_critique_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '497e767800d198a5a9a42de7d03ebd7ed9ff950e66d89257d9a8138734fca4d0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8f5c3e71-d54e-5acf-923d-e966350b5a9e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('be8079f5-8f7a-503e-b77d-9f6e2a748a07', 1), '497e767800d198a5a9a42de7d03ebd7ed9ff950e66d89257d9a8138734fca4d0',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f96e8da7a1b14358a0ae0a35f6972f6de0cf2eb9655c70304d0420eb66f63172.mp3', 966, '2026-09-13 11:18:56.092130', '65abcdafe7869b4e6bfa20267985168ed7d23dac5d7f897601f6c187852abdc4', 'validated', '{"audio_key":"f96e8da7a1b14358a0ae0a35f6972f6de0cf2eb9655c70304d0420eb66f63172","entity_key":"wf_irony_indirect_critique_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"65abcdafe7869b4e6bfa20267985168ed7d23dac5d7f897601f6c187852abdc4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f96e8da7a1b14358a0ae0a35f6972f6de0cf2eb9655c70304d0420eb66f63172.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_high_stakes_discursive_intervention_01 -> audio/generated/de-DE/lexical/f9d5e1965028ad57cb582a9d646b499cb70e3b68b9b2fb88a852065cc826b21f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2abb77ca-433e-5e07-9543-69a1456987d3', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_high_stakes_discursive_intervention_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c207382d627c6cc3f36172d3d6b13ba70f6b37ca44eddb59dd63d50fec3146b2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('13e5d038-1799-5c07-93f8-841b9d22f93f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2abb77ca-433e-5e07-9543-69a1456987d3', 1), 'c207382d627c6cc3f36172d3d6b13ba70f6b37ca44eddb59dd63d50fec3146b2',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f9d5e1965028ad57cb582a9d646b499cb70e3b68b9b2fb88a852065cc826b21f.mp3', 1332, '2026-09-13 11:18:56.483592', 'd60ffb63d29fa033458773c9601df85f9157977e3cd1aaab194e8131fc6a8e9a', 'validated', '{"audio_key":"f9d5e1965028ad57cb582a9d646b499cb70e3b68b9b2fb88a852065cc826b21f","entity_key":"lx_high_stakes_discursive_intervention_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d60ffb63d29fa033458773c9601df85f9157977e3cd1aaab194e8131fc6a8e9a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f9d5e1965028ad57cb582a9d646b499cb70e3b68b9b2fb88a852065cc826b21f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_high_stakes_discursive_intervention_01 -> audio/generated/de-DE/lexical/f9d5e1965028ad57cb582a9d646b499cb70e3b68b9b2fb88a852065cc826b21f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5787ac5f-ce16-55aa-9fb6-d62407587dec', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_high_stakes_discursive_intervention_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c207382d627c6cc3f36172d3d6b13ba70f6b37ca44eddb59dd63d50fec3146b2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('790b6bf9-2d10-555b-8f2e-b423b759c9b8', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5787ac5f-ce16-55aa-9fb6-d62407587dec', 1), 'c207382d627c6cc3f36172d3d6b13ba70f6b37ca44eddb59dd63d50fec3146b2',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f9d5e1965028ad57cb582a9d646b499cb70e3b68b9b2fb88a852065cc826b21f.mp3', 1332, '2026-09-13 11:18:56.483592', 'd60ffb63d29fa033458773c9601df85f9157977e3cd1aaab194e8131fc6a8e9a', 'validated', '{"audio_key":"f9d5e1965028ad57cb582a9d646b499cb70e3b68b9b2fb88a852065cc826b21f","entity_key":"wf_high_stakes_discursive_intervention_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d60ffb63d29fa033458773c9601df85f9157977e3cd1aaab194e8131fc6a8e9a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f9d5e1965028ad57cb582a9d646b499cb70e3b68b9b2fb88a852065cc826b21f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_high_stakes_discursive_intervention_05 -> audio/generated/de-DE/lexical/fad706faa1512e5ddb3e4e7c3454982e59b7b5a967c8f7e74fc09980a2f98b01.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ff6a0129-eea5-57d9-a55f-d7c2b1bedae2', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_high_stakes_discursive_intervention_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f826c6216cf35edb8761eee14bbb5bbf1c4c1486481de202b4445b6e4b5954fe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('697ba498-a716-564c-b31d-64c1b1a1390f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ff6a0129-eea5-57d9-a55f-d7c2b1bedae2', 1), 'f826c6216cf35edb8761eee14bbb5bbf1c4c1486481de202b4445b6e4b5954fe',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/fad706faa1512e5ddb3e4e7c3454982e59b7b5a967c8f7e74fc09980a2f98b01.mp3', 1332, '2026-09-13 11:18:57.118622', '82d42d813fdfe98550cc31f2dff099f8736bd21dce596b49da9cba2b2de142e8', 'validated', '{"audio_key":"fad706faa1512e5ddb3e4e7c3454982e59b7b5a967c8f7e74fc09980a2f98b01","entity_key":"lx_high_stakes_discursive_intervention_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"82d42d813fdfe98550cc31f2dff099f8736bd21dce596b49da9cba2b2de142e8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/fad706faa1512e5ddb3e4e7c3454982e59b7b5a967c8f7e74fc09980a2f98b01.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_high_stakes_discursive_intervention_05 -> audio/generated/de-DE/lexical/fad706faa1512e5ddb3e4e7c3454982e59b7b5a967c8f7e74fc09980a2f98b01.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4655dfab-9c81-5204-877a-ddeb4aab2ea7', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_high_stakes_discursive_intervention_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f826c6216cf35edb8761eee14bbb5bbf1c4c1486481de202b4445b6e4b5954fe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8f488421-aa15-57d1-acab-4fda0ff449aa', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4655dfab-9c81-5204-877a-ddeb4aab2ea7', 1), 'f826c6216cf35edb8761eee14bbb5bbf1c4c1486481de202b4445b6e4b5954fe',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/fad706faa1512e5ddb3e4e7c3454982e59b7b5a967c8f7e74fc09980a2f98b01.mp3', 1332, '2026-09-13 11:18:57.118622', '82d42d813fdfe98550cc31f2dff099f8736bd21dce596b49da9cba2b2de142e8', 'validated', '{"audio_key":"fad706faa1512e5ddb3e4e7c3454982e59b7b5a967c8f7e74fc09980a2f98b01","entity_key":"wf_high_stakes_discursive_intervention_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"82d42d813fdfe98550cc31f2dff099f8736bd21dce596b49da9cba2b2de142e8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/fad706faa1512e5ddb3e4e7c3454982e59b7b5a967c8f7e74fc09980a2f98b01.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_polyphonic_source_synthesis_01 -> audio/generated/de-DE/lexical/fce7e39228955de0f8c9f637f10d86edf325511e37c3a1185d1d3e4bf2d737c7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('15404717-11b4-5f96-be05-c1b26cdaa4f4', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_polyphonic_source_synthesis_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '75ac981809d490fa150f4e06188fceb2b6220c2dae55fa499fc93529fc20a2ef'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7afca6e2-fbe1-581f-b870-04ac833db2ce', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('15404717-11b4-5f96-be05-c1b26cdaa4f4', 1), '75ac981809d490fa150f4e06188fceb2b6220c2dae55fa499fc93529fc20a2ef',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/fce7e39228955de0f8c9f637f10d86edf325511e37c3a1185d1d3e4bf2d737c7.mp3', 1436, '2026-09-13 11:18:57.599485', 'f0a34d58e7f416fca00bd71ffa38605a53049ee2eea8b7f1123637fbb5e91301', 'validated', '{"audio_key":"fce7e39228955de0f8c9f637f10d86edf325511e37c3a1185d1d3e4bf2d737c7","entity_key":"lx_polyphonic_source_synthesis_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f0a34d58e7f416fca00bd71ffa38605a53049ee2eea8b7f1123637fbb5e91301","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/fce7e39228955de0f8c9f637f10d86edf325511e37c3a1185d1d3e4bf2d737c7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_polyphonic_source_synthesis_01 -> audio/generated/de-DE/lexical/fce7e39228955de0f8c9f637f10d86edf325511e37c3a1185d1d3e4bf2d737c7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('98e72cf3-786b-5dae-a6ac-ba42f5e535dc', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_polyphonic_source_synthesis_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '75ac981809d490fa150f4e06188fceb2b6220c2dae55fa499fc93529fc20a2ef'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('38f4ddeb-c8af-5367-88f0-995effbca956', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('98e72cf3-786b-5dae-a6ac-ba42f5e535dc', 1), '75ac981809d490fa150f4e06188fceb2b6220c2dae55fa499fc93529fc20a2ef',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/fce7e39228955de0f8c9f637f10d86edf325511e37c3a1185d1d3e4bf2d737c7.mp3', 1436, '2026-09-13 11:18:57.599485', 'f0a34d58e7f416fca00bd71ffa38605a53049ee2eea8b7f1123637fbb5e91301', 'validated', '{"audio_key":"fce7e39228955de0f8c9f637f10d86edf325511e37c3a1185d1d3e4bf2d737c7","entity_key":"wf_polyphonic_source_synthesis_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f0a34d58e7f416fca00bd71ffa38605a53049ee2eea8b7f1123637fbb5e91301","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/fce7e39228955de0f8c9f637f10d86edf325511e37c3a1185d1d3e4bf2d737c7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_irony_indirect_critique_04 -> audio/generated/de-DE/lexical/fd85da2d1113bf6215dada8640d206dd2e4c36e5ead65bf8fbff71e2128bacb6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('4a94dc04-c48f-56c1-8144-32d8f5d2fc97', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_irony_indirect_critique_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3ab459eea2b3514567bfeaf001bba6f1aebedfee4cc3121abbd4df9a1315c8ce'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('76f690f3-8ed2-57a5-9136-75171fb19c13', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('4a94dc04-c48f-56c1-8144-32d8f5d2fc97', 1), '3ab459eea2b3514567bfeaf001bba6f1aebedfee4cc3121abbd4df9a1315c8ce',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/fd85da2d1113bf6215dada8640d206dd2e4c36e5ead65bf8fbff71e2128bacb6.mp3', 1515, '2026-09-13 11:18:58.156972', '9a0a42bd2cc728b8d43738b392bb125507ee57e1211d8c6d55d36423c3e5dbb3', 'validated', '{"audio_key":"fd85da2d1113bf6215dada8640d206dd2e4c36e5ead65bf8fbff71e2128bacb6","entity_key":"lx_irony_indirect_critique_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9a0a42bd2cc728b8d43738b392bb125507ee57e1211d8c6d55d36423c3e5dbb3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/fd85da2d1113bf6215dada8640d206dd2e4c36e5ead65bf8fbff71e2128bacb6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_irony_indirect_critique_04 -> audio/generated/de-DE/lexical/fd85da2d1113bf6215dada8640d206dd2e4c36e5ead65bf8fbff71e2128bacb6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e5bc53fb-27c4-51f6-ba0b-553bc0f508a3', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_irony_indirect_critique_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3ab459eea2b3514567bfeaf001bba6f1aebedfee4cc3121abbd4df9a1315c8ce'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0ee8fddb-14db-5cbe-8bfc-f09670cd24e0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e5bc53fb-27c4-51f6-ba0b-553bc0f508a3', 1), '3ab459eea2b3514567bfeaf001bba6f1aebedfee4cc3121abbd4df9a1315c8ce',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/fd85da2d1113bf6215dada8640d206dd2e4c36e5ead65bf8fbff71e2128bacb6.mp3', 1515, '2026-09-13 11:18:58.156972', '9a0a42bd2cc728b8d43738b392bb125507ee57e1211d8c6d55d36423c3e5dbb3', 'validated', '{"audio_key":"fd85da2d1113bf6215dada8640d206dd2e4c36e5ead65bf8fbff71e2128bacb6","entity_key":"wf_irony_indirect_critique_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9a0a42bd2cc728b8d43738b392bb125507ee57e1211d8c6d55d36423c3e5dbb3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/fd85da2d1113bf6215dada8640d206dd2e4c36e5ead65bf8fbff71e2128bacb6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_argument_premises_fallacies_04 -> audio/generated/de-DE/lexical/ff35a4a4258b2196ebc8e9484a402f4f2d6c17316b5e890598fe3bc0d1be36db.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('27d52514-845c-5f26-b680-b4c8d2d0b9f8', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_argument_premises_fallacies_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f8c130c0ac03d60ab04236e27c327a95f3a50269763129b2b85bf42be72f9b38'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('53ebaeab-17c4-50ca-b859-39f1f3ad9de2', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('27d52514-845c-5f26-b680-b4c8d2d0b9f8', 1), 'f8c130c0ac03d60ab04236e27c327a95f3a50269763129b2b85bf42be72f9b38',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ff35a4a4258b2196ebc8e9484a402f4f2d6c17316b5e890598fe3bc0d1be36db.mp3', 1201, '2026-09-13 11:18:58.622126', '91fc6ede9c0f497bff61a0025af2183917992e546d47b11fa62b2986438ed913', 'validated', '{"audio_key":"ff35a4a4258b2196ebc8e9484a402f4f2d6c17316b5e890598fe3bc0d1be36db","entity_key":"lx_argument_premises_fallacies_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"91fc6ede9c0f497bff61a0025af2183917992e546d47b11fa62b2986438ed913","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ff35a4a4258b2196ebc8e9484a402f4f2d6c17316b5e890598fe3bc0d1be36db.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_argument_premises_fallacies_04 -> audio/generated/de-DE/lexical/ff35a4a4258b2196ebc8e9484a402f4f2d6c17316b5e890598fe3bc0d1be36db.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8e58a237-d6f1-58cf-8bb7-5b66e7143f91', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_argument_premises_fallacies_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f8c130c0ac03d60ab04236e27c327a95f3a50269763129b2b85bf42be72f9b38'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('41db79f7-b854-5007-a341-9e02695793fe', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8e58a237-d6f1-58cf-8bb7-5b66e7143f91', 1), 'f8c130c0ac03d60ab04236e27c327a95f3a50269763129b2b85bf42be72f9b38',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ff35a4a4258b2196ebc8e9484a402f4f2d6c17316b5e890598fe3bc0d1be36db.mp3', 1201, '2026-09-13 11:18:58.622126', '91fc6ede9c0f497bff61a0025af2183917992e546d47b11fa62b2986438ed913', 'validated', '{"audio_key":"ff35a4a4258b2196ebc8e9484a402f4f2d6c17316b5e890598fe3bc0d1be36db","entity_key":"wf_argument_premises_fallacies_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"91fc6ede9c0f497bff61a0025af2183917992e546d47b11fa62b2986438ed913","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ff35a4a4258b2196ebc8e9484a402f4f2d6c17316b5e890598fe3bc0d1be36db.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_high_stakes_discursive_intervention_04 -> audio/generated/de-DE/utterances/0008b38d60a68af5caa46200930e82e3d42aa04c77a480578e03b22f9ebd5db0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0bb981b0-5fb9-5288-8f43-66a7311aa93b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_high_stakes_discursive_intervention_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1ccdd29f64fc0e994f70340deefff05302a5d1320aacf7819e2e834e40ae1217'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5b7fa571-4ead-5849-b3a6-3478a09fe5d4', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0bb981b0-5fb9-5288-8f43-66a7311aa93b', 1), '1ccdd29f64fc0e994f70340deefff05302a5d1320aacf7819e2e834e40ae1217',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/0008b38d60a68af5caa46200930e82e3d42aa04c77a480578e03b22f9ebd5db0.mp3', 5041, '2026-09-13 11:18:59.588577', '73df1460d9d8879afc6dfb9778ea2b23bd75b106255fa638f334d11d0475ac62', 'validated', '{"audio_key":"0008b38d60a68af5caa46200930e82e3d42aa04c77a480578e03b22f9ebd5db0","entity_key":"u_high_stakes_discursive_intervention_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"73df1460d9d8879afc6dfb9778ea2b23bd75b106255fa638f334d11d0475ac62","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/0008b38d60a68af5caa46200930e82e3d42aa04c77a480578e03b22f9ebd5db0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_rhetorical_strategy_diagnostics_01 -> audio/generated/de-DE/utterances/00c6149161437f1616ba39b1342c081c7dea4d6f72ba6083f9ad0ea6e458267e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('652ac26e-2f3f-50cc-bbee-3e20385f67c6', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_rhetorical_strategy_diagnostics_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1529fc407a9bcd2469aa2eb85fbcd4264ddd64b8ba58b89de06f9d24baba6064'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5b0332f9-8185-5c24-b739-097ab578f5a7', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('652ac26e-2f3f-50cc-bbee-3e20385f67c6', 1), '1529fc407a9bcd2469aa2eb85fbcd4264ddd64b8ba58b89de06f9d24baba6064',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/00c6149161437f1616ba39b1342c081c7dea4d6f72ba6083f9ad0ea6e458267e.mp3', 6034, '2026-09-13 11:19:00.259516', '4d17b62cc392d2c95acba82ec4a1dcb4f706241bfe5323431355f42e232d93d7', 'validated', '{"audio_key":"00c6149161437f1616ba39b1342c081c7dea4d6f72ba6083f9ad0ea6e458267e","entity_key":"u_rhetorical_strategy_diagnostics_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4d17b62cc392d2c95acba82ec4a1dcb4f706241bfe5323431355f42e232d93d7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/00c6149161437f1616ba39b1342c081c7dea4d6f72ba6083f9ad0ea6e458267e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_rhetorical_strategy_diagnostics_01_listen -> audio/generated/de-DE/utterances/00c6149161437f1616ba39b1342c081c7dea4d6f72ba6083f9ad0ea6e458267e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('6a20a5a8-6cd6-5c3b-a434-34f8ee5c367a', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_rhetorical_strategy_diagnostics_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1529fc407a9bcd2469aa2eb85fbcd4264ddd64b8ba58b89de06f9d24baba6064'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('235cd257-00d6-523f-9533-27d5a21b55fe', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('6a20a5a8-6cd6-5c3b-a434-34f8ee5c367a', 1), '1529fc407a9bcd2469aa2eb85fbcd4264ddd64b8ba58b89de06f9d24baba6064',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/00c6149161437f1616ba39b1342c081c7dea4d6f72ba6083f9ad0ea6e458267e.mp3', 6034, '2026-09-13 11:19:00.259516', '4d17b62cc392d2c95acba82ec4a1dcb4f706241bfe5323431355f42e232d93d7', 'validated', '{"audio_key":"00c6149161437f1616ba39b1342c081c7dea4d6f72ba6083f9ad0ea6e458267e","entity_key":"ex_rhetorical_strategy_diagnostics_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4d17b62cc392d2c95acba82ec4a1dcb4f706241bfe5323431355f42e232d93d7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/00c6149161437f1616ba39b1342c081c7dea4d6f72ba6083f9ad0ea6e458267e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_rhetorical_strategy_diagnostics_04 -> audio/generated/de-DE/utterances/03c27af6f1b21316d0ba7479930a1b1b86b92731190db7860c4c6a807734c89a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2ff7aeab-a32e-5eb5-bc4c-5f8b6ea5e9a3', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_rhetorical_strategy_diagnostics_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7d6c8ef8286a547bb57133f4f1e688899ddb7aff0fc65eb4c014b921ecd3867f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b1b59e7b-5d71-571e-94d5-7dc89732d3fd', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2ff7aeab-a32e-5eb5-bc4c-5f8b6ea5e9a3', 1), '7d6c8ef8286a547bb57133f4f1e688899ddb7aff0fc65eb4c014b921ecd3867f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/03c27af6f1b21316d0ba7479930a1b1b86b92731190db7860c4c6a807734c89a.mp3', 6112, '2026-09-13 11:19:01.170252', '5c9f4552c77a1f250a5ea77b0c20107d1c3d7e6a0d98489d6e6eeb9e37cb6b81', 'validated', '{"audio_key":"03c27af6f1b21316d0ba7479930a1b1b86b92731190db7860c4c6a807734c89a","entity_key":"u_rhetorical_strategy_diagnostics_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5c9f4552c77a1f250a5ea77b0c20107d1c3d7e6a0d98489d6e6eeb9e37cb6b81","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/03c27af6f1b21316d0ba7479930a1b1b86b92731190db7860c4c6a807734c89a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_interpret_reframe_position_capstone_03 -> audio/generated/de-DE/utterances/06b32488c411130e60d5823f6b503726ba1d5ed31c81c371e7a3ab8c36e2e62f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('eb8a5b03-2db9-5158-8bf0-916d280b5432', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_interpret_reframe_position_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2363279c6b513074593568c44476ec64a2a09386a33ad8ad54351375d3bb4e24'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('83146787-8045-5462-b701-253651d61c0c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('eb8a5b03-2db9-5158-8bf0-916d280b5432', 1), '2363279c6b513074593568c44476ec64a2a09386a33ad8ad54351375d3bb4e24',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/06b32488c411130e60d5823f6b503726ba1d5ed31c81c371e7a3ab8c36e2e62f.mp3', 6400, '2026-09-13 11:19:01.905084', '404ee2d3790637f1b3fb0d18015dc1ee5b85989073f9258f741897e7b09323bd', 'validated', '{"audio_key":"06b32488c411130e60d5823f6b503726ba1d5ed31c81c371e7a3ab8c36e2e62f","entity_key":"u_interpret_reframe_position_capstone_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"404ee2d3790637f1b3fb0d18015dc1ee5b85989073f9258f741897e7b09323bd","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/06b32488c411130e60d5823f6b503726ba1d5ed31c81c371e7a3ab8c36e2e62f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_interpret_reframe_position_capstone_02_listen -> audio/generated/de-DE/utterances/06b32488c411130e60d5823f6b503726ba1d5ed31c81c371e7a3ab8c36e2e62f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('e1d2dd87-9fb0-54e0-8a21-09ca1d164bb6', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_interpret_reframe_position_capstone_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2363279c6b513074593568c44476ec64a2a09386a33ad8ad54351375d3bb4e24'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cfd0be2c-bd57-53a2-8224-8619165dc301', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('e1d2dd87-9fb0-54e0-8a21-09ca1d164bb6', 1), '2363279c6b513074593568c44476ec64a2a09386a33ad8ad54351375d3bb4e24',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/06b32488c411130e60d5823f6b503726ba1d5ed31c81c371e7a3ab8c36e2e62f.mp3', 6400, '2026-09-13 11:19:01.905084', '404ee2d3790637f1b3fb0d18015dc1ee5b85989073f9258f741897e7b09323bd', 'validated', '{"audio_key":"06b32488c411130e60d5823f6b503726ba1d5ed31c81c371e7a3ab8c36e2e62f","entity_key":"ex_interpret_reframe_position_capstone_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"404ee2d3790637f1b3fb0d18015dc1ee5b85989073f9258f741897e7b09323bd","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/06b32488c411130e60d5823f6b503726ba1d5ed31c81c371e7a3ab8c36e2e62f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_interpret_reframe_position_capstone_04 -> audio/generated/de-DE/utterances/07ecdc3337a23a78e0b15d627a99519444d10de27cf28c95a14c5626b0a6cde8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('5381f5b5-89bd-52eb-bcc6-9e855b4c16f5', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_interpret_reframe_position_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '91cf5d9e603ccad0b57e39a4719529a7ca7bbff8a4afb0fd276f57a7638f2589'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b62d56f9-cb77-5329-b9c1-e9ccce9aac13', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('5381f5b5-89bd-52eb-bcc6-9e855b4c16f5', 1), '91cf5d9e603ccad0b57e39a4719529a7ca7bbff8a4afb0fd276f57a7638f2589',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/07ecdc3337a23a78e0b15d627a99519444d10de27cf28c95a14c5626b0a6cde8.mp3', 5564, '2026-09-13 11:19:02.759455', '25b7e7796dc20db26e026c4a3275582d4edaf0dfe845ed5e6c4981353c792340', 'validated', '{"audio_key":"07ecdc3337a23a78e0b15d627a99519444d10de27cf28c95a14c5626b0a6cde8","entity_key":"u_interpret_reframe_position_capstone_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"25b7e7796dc20db26e026c4a3275582d4edaf0dfe845ed5e6c4981353c792340","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/07ecdc3337a23a78e0b15d627a99519444d10de27cf28c95a14c5626b0a6cde8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_high_stakes_discursive_intervention_01 -> audio/generated/de-DE/utterances/12f864506ca0739fdf657afd4a273dbbb9726c060cbe16ed793cfd9de9356222.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a1cfc9eb-5967-5c40-9950-d79f44fbaba5', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_high_stakes_discursive_intervention_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ae97340d82f780fed85b1e2f97f58ba31a1caefa29513642507fa72dcf533e5a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('75f95020-84cf-5577-87db-478fd2c70933', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a1cfc9eb-5967-5c40-9950-d79f44fbaba5', 1), 'ae97340d82f780fed85b1e2f97f58ba31a1caefa29513642507fa72dcf533e5a',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/12f864506ca0739fdf657afd4a273dbbb9726c060cbe16ed793cfd9de9356222.mp3', 4675, '2026-09-13 11:19:03.402245', '26f6e4df962afabbbd08b27ed4472f9ce9aea9a75c35168903596a15ff21f1d5', 'validated', '{"audio_key":"12f864506ca0739fdf657afd4a273dbbb9726c060cbe16ed793cfd9de9356222","entity_key":"u_high_stakes_discursive_intervention_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"26f6e4df962afabbbd08b27ed4472f9ce9aea9a75c35168903596a15ff21f1d5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/12f864506ca0739fdf657afd4a273dbbb9726c060cbe16ed793cfd9de9356222.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_high_stakes_discursive_intervention_01_listen -> audio/generated/de-DE/utterances/12f864506ca0739fdf657afd4a273dbbb9726c060cbe16ed793cfd9de9356222.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('96d2706d-9685-5e58-8dca-c795b68113cc', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_high_stakes_discursive_intervention_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ae97340d82f780fed85b1e2f97f58ba31a1caefa29513642507fa72dcf533e5a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d811d0b1-d7da-580e-b444-3957fddce618', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('96d2706d-9685-5e58-8dca-c795b68113cc', 1), 'ae97340d82f780fed85b1e2f97f58ba31a1caefa29513642507fa72dcf533e5a',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/12f864506ca0739fdf657afd4a273dbbb9726c060cbe16ed793cfd9de9356222.mp3', 4675, '2026-09-13 11:19:03.402245', '26f6e4df962afabbbd08b27ed4472f9ce9aea9a75c35168903596a15ff21f1d5', 'validated', '{"audio_key":"12f864506ca0739fdf657afd4a273dbbb9726c060cbe16ed793cfd9de9356222","entity_key":"ex_high_stakes_discursive_intervention_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"26f6e4df962afabbbd08b27ed4472f9ce9aea9a75c35168903596a15ff21f1d5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/12f864506ca0739fdf657afd4a273dbbb9726c060cbe16ed793cfd9de9356222.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_systems_causality_feedback_01 -> audio/generated/de-DE/utterances/1e8d360bb07f9618c0b6271348f71af58d58e9ca797be4b11e3eb31862894a29.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3ec390c7-6b17-59d7-85de-c97d9431f0e8', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_systems_causality_feedback_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dc841519e2a98a3027a38902de666aca5ad8542ece349e56382a6272e40ac422'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e5f57fdc-6412-5202-9205-4fad5b11eb68', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3ec390c7-6b17-59d7-85de-c97d9431f0e8', 1), 'dc841519e2a98a3027a38902de666aca5ad8542ece349e56382a6272e40ac422',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/1e8d360bb07f9618c0b6271348f71af58d58e9ca797be4b11e3eb31862894a29.mp3', 5877, '2026-09-13 11:19:04.293943', 'c40cd09f8e6909775aaa015d686c932f1526237e2cfb6c2b9b33cb0702763b28', 'validated', '{"audio_key":"1e8d360bb07f9618c0b6271348f71af58d58e9ca797be4b11e3eb31862894a29","entity_key":"u_systems_causality_feedback_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c40cd09f8e6909775aaa015d686c932f1526237e2cfb6c2b9b33cb0702763b28","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/1e8d360bb07f9618c0b6271348f71af58d58e9ca797be4b11e3eb31862894a29.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_systems_causality_feedback_01_listen -> audio/generated/de-DE/utterances/1e8d360bb07f9618c0b6271348f71af58d58e9ca797be4b11e3eb31862894a29.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('5375447c-7895-5cc1-8a8e-1444c2d34ca7', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_systems_causality_feedback_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dc841519e2a98a3027a38902de666aca5ad8542ece349e56382a6272e40ac422'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e91a129a-f89a-5bf9-9a3b-8cb3e80d7c55', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('5375447c-7895-5cc1-8a8e-1444c2d34ca7', 1), 'dc841519e2a98a3027a38902de666aca5ad8542ece349e56382a6272e40ac422',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/1e8d360bb07f9618c0b6271348f71af58d58e9ca797be4b11e3eb31862894a29.mp3', 5877, '2026-09-13 11:19:04.293943', 'c40cd09f8e6909775aaa015d686c932f1526237e2cfb6c2b9b33cb0702763b28', 'validated', '{"audio_key":"1e8d360bb07f9618c0b6271348f71af58d58e9ca797be4b11e3eb31862894a29","entity_key":"ex_systems_causality_feedback_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c40cd09f8e6909775aaa015d686c932f1526237e2cfb6c2b9b33cb0702763b28","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/1e8d360bb07f9618c0b6271348f71af58d58e9ca797be4b11e3eb31862894a29.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_high_stakes_discursive_intervention_06 -> audio/generated/de-DE/utterances/1f5130ce5802a7716bd4f611b784d5d1c093160b6e3d9d04972b008c78b39fb2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('938e617a-91b2-5201-963d-a0a65e31568b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_high_stakes_discursive_intervention_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8254d53be27be3683c1b4fa1424674589130c6766431eb262e6b37b0c529cfc4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f407776a-54db-5885-9a34-7362e8c3b478', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('938e617a-91b2-5201-963d-a0a65e31568b', 1), '8254d53be27be3683c1b4fa1424674589130c6766431eb262e6b37b0c529cfc4',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/1f5130ce5802a7716bd4f611b784d5d1c093160b6e3d9d04972b008c78b39fb2.mp3', 5381, '2026-09-13 11:19:04.937833', 'd7742a324108a96d1da8924cb8a4a1bf8b9b2a0c634706ec4ebc86747ba03781', 'validated', '{"audio_key":"1f5130ce5802a7716bd4f611b784d5d1c093160b6e3d9d04972b008c78b39fb2","entity_key":"u_high_stakes_discursive_intervention_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d7742a324108a96d1da8924cb8a4a1bf8b9b2a0c634706ec4ebc86747ba03781","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/1f5130ce5802a7716bd4f611b784d5d1c093160b6e3d9d04972b008c78b39fb2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_high_stakes_discursive_intervention_05 -> audio/generated/de-DE/utterances/220d62a64bc2f796a6189826ed67719a84381fdcbe2cfdf3eb6f5e6356150478.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b3853294-d14c-5483-a08f-1d0ffc5782ed', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_high_stakes_discursive_intervention_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '57a9ca74e74050c674409fa311ae1ebad8c418aa8c940fa1adce07acc8f5713c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cd1cc279-4651-54ad-b630-6e02791852fa', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b3853294-d14c-5483-a08f-1d0ffc5782ed', 1), '57a9ca74e74050c674409fa311ae1ebad8c418aa8c940fa1adce07acc8f5713c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/220d62a64bc2f796a6189826ed67719a84381fdcbe2cfdf3eb6f5e6356150478.mp3', 5250, '2026-09-13 11:19:05.793466', '4d05d751a2625844e8c965c3a224fdc20b9dca568ae91702d1ac0da8c2ef2601', 'validated', '{"audio_key":"220d62a64bc2f796a6189826ed67719a84381fdcbe2cfdf3eb6f5e6356150478","entity_key":"u_high_stakes_discursive_intervention_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4d05d751a2625844e8c965c3a224fdc20b9dca568ae91702d1ac0da8c2ef2601","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/220d62a64bc2f796a6189826ed67719a84381fdcbe2cfdf3eb6f5e6356150478.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_high_stakes_discursive_intervention_03_listen -> audio/generated/de-DE/utterances/220d62a64bc2f796a6189826ed67719a84381fdcbe2cfdf3eb6f5e6356150478.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('b4e9fe2b-4bb7-54e2-98e4-22228467af01', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_high_stakes_discursive_intervention_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '57a9ca74e74050c674409fa311ae1ebad8c418aa8c940fa1adce07acc8f5713c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8e6362db-f832-5de6-854f-923da6cb0aa6', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('b4e9fe2b-4bb7-54e2-98e4-22228467af01', 1), '57a9ca74e74050c674409fa311ae1ebad8c418aa8c940fa1adce07acc8f5713c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/220d62a64bc2f796a6189826ed67719a84381fdcbe2cfdf3eb6f5e6356150478.mp3', 5250, '2026-09-13 11:19:05.793466', '4d05d751a2625844e8c965c3a224fdc20b9dca568ae91702d1ac0da8c2ef2601', 'validated', '{"audio_key":"220d62a64bc2f796a6189826ed67719a84381fdcbe2cfdf3eb6f5e6356150478","entity_key":"ex_high_stakes_discursive_intervention_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4d05d751a2625844e8c965c3a224fdc20b9dca568ae91702d1ac0da8c2ef2601","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/220d62a64bc2f796a6189826ed67719a84381fdcbe2cfdf3eb6f5e6356150478.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_lexical_precision_collocation_06 -> audio/generated/de-DE/utterances/22f995dcc3e54a03c59198dd3a478065d730d51d8e821c28dea81a5ebd458878.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('27cff6a9-d7b7-5b97-89e7-0d5b63c7ac8b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_lexical_precision_collocation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '708a823ef4f0efb16ec432590ee80cdeb88d8f1cd6124688ed9280ce4a9aae5a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('61e2903d-85b6-54a7-a221-0dc969bd0d2b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('27cff6a9-d7b7-5b97-89e7-0d5b63c7ac8b', 1), '708a823ef4f0efb16ec432590ee80cdeb88d8f1cd6124688ed9280ce4a9aae5a',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/22f995dcc3e54a03c59198dd3a478065d730d51d8e821c28dea81a5ebd458878.mp3', 3369, '2026-09-13 11:19:06.250242', '6c261c58ce1ab040a4fd562ed68c0c59bb1896d8dbe31ecaef283f5c66d33062', 'validated', '{"audio_key":"22f995dcc3e54a03c59198dd3a478065d730d51d8e821c28dea81a5ebd458878","entity_key":"u_lexical_precision_collocation_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6c261c58ce1ab040a4fd562ed68c0c59bb1896d8dbe31ecaef283f5c66d33062","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/22f995dcc3e54a03c59198dd3a478065d730d51d8e821c28dea81a5ebd458878.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_argument_premises_fallacies_03 -> audio/generated/de-DE/utterances/2348244ce0406d84fe2303013628986148358524499989c8f7e1278b78951eb1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('fc1485bc-fa4c-5834-a6e8-e9fd87cd9574', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_argument_premises_fallacies_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7a89ffeb2564be9b5afbe84a7644753c8c507d5b5b4ce59b254189a5a58e3244'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fe02187b-be68-5006-b4d2-8bc00cc5140d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('fc1485bc-fa4c-5834-a6e8-e9fd87cd9574', 1), '7a89ffeb2564be9b5afbe84a7644753c8c507d5b5b4ce59b254189a5a58e3244',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/2348244ce0406d84fe2303013628986148358524499989c8f7e1278b78951eb1.mp3', 5381, '2026-09-13 11:19:07.310529', 'aafe1b9298c9aa81f29258b1d927a23df465d2f96c6eb0cb1c2f01aa4690cd84', 'validated', '{"audio_key":"2348244ce0406d84fe2303013628986148358524499989c8f7e1278b78951eb1","entity_key":"u_argument_premises_fallacies_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"aafe1b9298c9aa81f29258b1d927a23df465d2f96c6eb0cb1c2f01aa4690cd84","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/2348244ce0406d84fe2303013628986148358524499989c8f7e1278b78951eb1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_argument_premises_fallacies_02_listen -> audio/generated/de-DE/utterances/2348244ce0406d84fe2303013628986148358524499989c8f7e1278b78951eb1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('a34cc373-ebd8-5b25-ac03-99d3d0ea3135', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_argument_premises_fallacies_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7a89ffeb2564be9b5afbe84a7644753c8c507d5b5b4ce59b254189a5a58e3244'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c80497fc-ddd3-5e48-950a-4c0ed2b01c78', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('a34cc373-ebd8-5b25-ac03-99d3d0ea3135', 1), '7a89ffeb2564be9b5afbe84a7644753c8c507d5b5b4ce59b254189a5a58e3244',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/2348244ce0406d84fe2303013628986148358524499989c8f7e1278b78951eb1.mp3', 5381, '2026-09-13 11:19:07.310529', 'aafe1b9298c9aa81f29258b1d927a23df465d2f96c6eb0cb1c2f01aa4690cd84', 'validated', '{"audio_key":"2348244ce0406d84fe2303013628986148358524499989c8f7e1278b78951eb1","entity_key":"ex_argument_premises_fallacies_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"aafe1b9298c9aa81f29258b1d927a23df465d2f96c6eb0cb1c2f01aa4690cd84","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/2348244ce0406d84fe2303013628986148358524499989c8f7e1278b78951eb1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_rhetorical_strategy_diagnostics_02 -> audio/generated/de-DE/utterances/244377d366bd43b44e12459fa7b8be7f2f33e0a79d74cc4c56f71f47a65fb50f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('5a8c9786-b10b-5f5b-b49d-bb9d9ad2d0b5', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_rhetorical_strategy_diagnostics_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1c8314a74e50e6d0eba1bf54c1f47158b6ff0730cd8768726ca9f58ef38497b8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e66439cd-4f10-5a11-9532-f617bdf56a2e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('5a8c9786-b10b-5f5b-b49d-bb9d9ad2d0b5', 1), '1c8314a74e50e6d0eba1bf54c1f47158b6ff0730cd8768726ca9f58ef38497b8',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/244377d366bd43b44e12459fa7b8be7f2f33e0a79d74cc4c56f71f47a65fb50f.mp3', 5198, '2026-09-13 11:19:07.860053', '4f818eed8db6a48e289822d983b914423988efc9329f67b4541cda19e8498ffd', 'validated', '{"audio_key":"244377d366bd43b44e12459fa7b8be7f2f33e0a79d74cc4c56f71f47a65fb50f","entity_key":"u_rhetorical_strategy_diagnostics_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4f818eed8db6a48e289822d983b914423988efc9329f67b4541cda19e8498ffd","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/244377d366bd43b44e12459fa7b8be7f2f33e0a79d74cc4c56f71f47a65fb50f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_argument_premises_fallacies_06 -> audio/generated/de-DE/utterances/39bf5bd6dcd296a855f3ca96604d4dcfb4ad230d93ce92c39b5c4257679b680f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d4ede748-0ad1-5267-8b5c-e50891a3b69b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_argument_premises_fallacies_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '397dc77c2e29c7e6541dffc0d45cc72afb5174625241c509a39db43fe8d57c55'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('24957c13-b788-52ca-be51-8dc0f7ba35c7', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d4ede748-0ad1-5267-8b5c-e50891a3b69b', 1), '397dc77c2e29c7e6541dffc0d45cc72afb5174625241c509a39db43fe8d57c55',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/39bf5bd6dcd296a855f3ca96604d4dcfb4ad230d93ce92c39b5c4257679b680f.mp3', 5381, '2026-09-13 11:19:08.847973', '8010791d9a73e35f8ebe07ea6f30d5122b974c362c025df3c7549a3230240464', 'validated', '{"audio_key":"39bf5bd6dcd296a855f3ca96604d4dcfb4ad230d93ce92c39b5c4257679b680f","entity_key":"u_argument_premises_fallacies_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8010791d9a73e35f8ebe07ea6f30d5122b974c362c025df3c7549a3230240464","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/39bf5bd6dcd296a855f3ca96604d4dcfb4ad230d93ce92c39b5c4257679b680f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_argument_premises_fallacies_02 -> audio/generated/de-DE/utterances/474a526c786797195df45b5a3ab98eeee6cc5c3fbb1d1378eea64adb84e062d5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c7d7c664-63f7-53c3-827d-e25ea929fc99', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_argument_premises_fallacies_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bc5dbe40be7003a9cc6ab76565ea03639819db100ceea652a1479e63108a8207'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bfe18697-498c-558b-b2df-a44717852b19', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c7d7c664-63f7-53c3-827d-e25ea929fc99', 1), 'bc5dbe40be7003a9cc6ab76565ea03639819db100ceea652a1479e63108a8207',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/474a526c786797195df45b5a3ab98eeee6cc5c3fbb1d1378eea64adb84e062d5.mp3', 5511, '2026-09-13 11:19:09.612491', 'ef08ffe53ddaf5e3b220895404fc9104a267e16a1189f7b14f5d77c875ff10ca', 'validated', '{"audio_key":"474a526c786797195df45b5a3ab98eeee6cc5c3fbb1d1378eea64adb84e062d5","entity_key":"u_argument_premises_fallacies_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ef08ffe53ddaf5e3b220895404fc9104a267e16a1189f7b14f5d77c875ff10ca","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/474a526c786797195df45b5a3ab98eeee6cc5c3fbb1d1378eea64adb84e062d5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_register_social_positioning_03 -> audio/generated/de-DE/utterances/48e3ffde88ed6011619c22688daae5bd204dc06814d7eadba0f1c152558a760f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3f9361ce-2078-55c0-a45c-271b28654472', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_register_social_positioning_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e2a80b7f054112c8578f71aed147b177ff341b0f36ce0c4b192b5b86bd82089c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c864fdec-ce3c-5af6-a30f-9846fe25f4ef', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3f9361ce-2078-55c0-a45c-271b28654472', 1), 'e2a80b7f054112c8578f71aed147b177ff341b0f36ce0c4b192b5b86bd82089c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/48e3ffde88ed6011619c22688daae5bd204dc06814d7eadba0f1c152558a760f.mp3', 5511, '2026-09-13 11:19:10.370395', '85eb5a90171ce9dec921807705e9b3c58feb15775ce6ea8ce07ca623a03877fc', 'validated', '{"audio_key":"48e3ffde88ed6011619c22688daae5bd204dc06814d7eadba0f1c152558a760f","entity_key":"u_register_social_positioning_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"85eb5a90171ce9dec921807705e9b3c58feb15775ce6ea8ce07ca623a03877fc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/48e3ffde88ed6011619c22688daae5bd204dc06814d7eadba0f1c152558a760f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_register_social_positioning_02_listen -> audio/generated/de-DE/utterances/48e3ffde88ed6011619c22688daae5bd204dc06814d7eadba0f1c152558a760f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('52f9f322-fb8e-5c7a-926a-14cc93accacc', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_register_social_positioning_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e2a80b7f054112c8578f71aed147b177ff341b0f36ce0c4b192b5b86bd82089c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2099f4de-4c46-56c7-a421-7e9ef022f29c', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('52f9f322-fb8e-5c7a-926a-14cc93accacc', 1), 'e2a80b7f054112c8578f71aed147b177ff341b0f36ce0c4b192b5b86bd82089c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/48e3ffde88ed6011619c22688daae5bd204dc06814d7eadba0f1c152558a760f.mp3', 5511, '2026-09-13 11:19:10.370395', '85eb5a90171ce9dec921807705e9b3c58feb15775ce6ea8ce07ca623a03877fc', 'validated', '{"audio_key":"48e3ffde88ed6011619c22688daae5bd204dc06814d7eadba0f1c152558a760f","entity_key":"ex_register_social_positioning_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"85eb5a90171ce9dec921807705e9b3c58feb15775ce6ea8ce07ca623a03877fc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/48e3ffde88ed6011619c22688daae5bd204dc06814d7eadba0f1c152558a760f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_rhetorical_strategy_diagnostics_03 -> audio/generated/de-DE/utterances/54e32e90053dca11de466a502ec3516725924848e330906a8c5e040f825b190d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('589d6e91-0a9b-5104-ab80-3a7f795ca25e', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_rhetorical_strategy_diagnostics_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7b441f5c68a1720e3da03b79c305867507c96797a24d5a36bbf5a16bc37bb2d4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cb22a16b-18fb-50d1-bae5-59d0eb59b5aa', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('589d6e91-0a9b-5104-ab80-3a7f795ca25e', 1), '7b441f5c68a1720e3da03b79c305867507c96797a24d5a36bbf5a16bc37bb2d4',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/54e32e90053dca11de466a502ec3516725924848e330906a8c5e040f825b190d.mp3', 5616, '2026-09-13 11:19:11.125954', 'f119f4d8553a7ae4dcd49130d1aaea5d77c52d58ab0648b77ad31c0ff0555021', 'validated', '{"audio_key":"54e32e90053dca11de466a502ec3516725924848e330906a8c5e040f825b190d","entity_key":"u_rhetorical_strategy_diagnostics_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f119f4d8553a7ae4dcd49130d1aaea5d77c52d58ab0648b77ad31c0ff0555021","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/54e32e90053dca11de466a502ec3516725924848e330906a8c5e040f825b190d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_rhetorical_strategy_diagnostics_02_listen -> audio/generated/de-DE/utterances/54e32e90053dca11de466a502ec3516725924848e330906a8c5e040f825b190d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('529826c3-1af1-50ea-bf7a-16e027db792b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_rhetorical_strategy_diagnostics_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7b441f5c68a1720e3da03b79c305867507c96797a24d5a36bbf5a16bc37bb2d4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eff224a2-44e8-5149-872f-6a1693123a66', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('529826c3-1af1-50ea-bf7a-16e027db792b', 1), '7b441f5c68a1720e3da03b79c305867507c96797a24d5a36bbf5a16bc37bb2d4',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/54e32e90053dca11de466a502ec3516725924848e330906a8c5e040f825b190d.mp3', 5616, '2026-09-13 11:19:11.125954', 'f119f4d8553a7ae4dcd49130d1aaea5d77c52d58ab0648b77ad31c0ff0555021', 'validated', '{"audio_key":"54e32e90053dca11de466a502ec3516725924848e330906a8c5e040f825b190d","entity_key":"ex_rhetorical_strategy_diagnostics_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f119f4d8553a7ae4dcd49130d1aaea5d77c52d58ab0648b77ad31c0ff0555021","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/54e32e90053dca11de466a502ec3516725924848e330906a8c5e040f825b190d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_polyphonic_source_synthesis_01 -> audio/generated/de-DE/utterances/59e4f2539755228637df6e67b3930252709ef18ce5e4c922e81b4a1e5143aa8d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('1d68df65-5b4c-5b57-87e3-96cd9bcc6c54', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_polyphonic_source_synthesis_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '26a065f6ef04ef0049c1c9b54c45cea9ba9dc20e83e682596f1b26139ff1e356'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a4d60e76-66fb-5190-8f29-77467fafe91d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('1d68df65-5b4c-5b57-87e3-96cd9bcc6c54', 1), '26a065f6ef04ef0049c1c9b54c45cea9ba9dc20e83e682596f1b26139ff1e356',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/59e4f2539755228637df6e67b3930252709ef18ce5e4c922e81b4a1e5143aa8d.mp3', 6164, '2026-09-13 11:19:11.958925', '18a2333509e9df8a40b743c4d15cc7cfab27c512b58d6a1dc327367eaf22eaff', 'validated', '{"audio_key":"59e4f2539755228637df6e67b3930252709ef18ce5e4c922e81b4a1e5143aa8d","entity_key":"u_polyphonic_source_synthesis_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"18a2333509e9df8a40b743c4d15cc7cfab27c512b58d6a1dc327367eaf22eaff","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/59e4f2539755228637df6e67b3930252709ef18ce5e4c922e81b4a1e5143aa8d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_polyphonic_source_synthesis_01_listen -> audio/generated/de-DE/utterances/59e4f2539755228637df6e67b3930252709ef18ce5e4c922e81b4a1e5143aa8d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('42eaabcf-6a8c-5587-8447-ee0c4ae86799', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_polyphonic_source_synthesis_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '26a065f6ef04ef0049c1c9b54c45cea9ba9dc20e83e682596f1b26139ff1e356'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5673b515-5c98-5780-8c46-f39cfe3be248', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('42eaabcf-6a8c-5587-8447-ee0c4ae86799', 1), '26a065f6ef04ef0049c1c9b54c45cea9ba9dc20e83e682596f1b26139ff1e356',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/59e4f2539755228637df6e67b3930252709ef18ce5e4c922e81b4a1e5143aa8d.mp3', 6164, '2026-09-13 11:19:11.958925', '18a2333509e9df8a40b743c4d15cc7cfab27c512b58d6a1dc327367eaf22eaff', 'validated', '{"audio_key":"59e4f2539755228637df6e67b3930252709ef18ce5e4c922e81b4a1e5143aa8d","entity_key":"ex_polyphonic_source_synthesis_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"18a2333509e9df8a40b743c4d15cc7cfab27c512b58d6a1dc327367eaf22eaff","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/59e4f2539755228637df6e67b3930252709ef18ce5e4c922e81b4a1e5143aa8d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_implicit_stance_subtext_01 -> audio/generated/de-DE/utterances/5ae02daa8f5b4ea8f8cd961e6da64d2b19d408a8731c6bad74348b1393bf5bff.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b1597492-49f3-55b2-afd0-dd63f2e894f9', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_implicit_stance_subtext_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c5bdc18c7ff6ac26a8881b200602019b156b8486ee236d6cbe6849f54d9b3d1b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7e8c3565-6a80-5e51-8e7c-a64a40d6b8f7', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b1597492-49f3-55b2-afd0-dd63f2e894f9', 1), 'c5bdc18c7ff6ac26a8881b200602019b156b8486ee236d6cbe6849f54d9b3d1b',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5ae02daa8f5b4ea8f8cd961e6da64d2b19d408a8731c6bad74348b1393bf5bff.mp3', 5564, '2026-09-13 11:19:12.649303', '1f1db04ceb1488317c5435909d13c5f2dd9cf8cdfcf3c47dbd88ff611fafc000', 'validated', '{"audio_key":"5ae02daa8f5b4ea8f8cd961e6da64d2b19d408a8731c6bad74348b1393bf5bff","entity_key":"u_implicit_stance_subtext_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1f1db04ceb1488317c5435909d13c5f2dd9cf8cdfcf3c47dbd88ff611fafc000","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5ae02daa8f5b4ea8f8cd961e6da64d2b19d408a8731c6bad74348b1393bf5bff.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_implicit_stance_subtext_01_listen -> audio/generated/de-DE/utterances/5ae02daa8f5b4ea8f8cd961e6da64d2b19d408a8731c6bad74348b1393bf5bff.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('9f4ac8d3-25e2-5a65-91af-4da123f21685', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_implicit_stance_subtext_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c5bdc18c7ff6ac26a8881b200602019b156b8486ee236d6cbe6849f54d9b3d1b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4e7b4a09-a38e-5e1a-872e-85dc1d428de2', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('9f4ac8d3-25e2-5a65-91af-4da123f21685', 1), 'c5bdc18c7ff6ac26a8881b200602019b156b8486ee236d6cbe6849f54d9b3d1b',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5ae02daa8f5b4ea8f8cd961e6da64d2b19d408a8731c6bad74348b1393bf5bff.mp3', 5564, '2026-09-13 11:19:12.649303', '1f1db04ceb1488317c5435909d13c5f2dd9cf8cdfcf3c47dbd88ff611fafc000', 'validated', '{"audio_key":"5ae02daa8f5b4ea8f8cd961e6da64d2b19d408a8731c6bad74348b1393bf5bff","entity_key":"ex_implicit_stance_subtext_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1f1db04ceb1488317c5435909d13c5f2dd9cf8cdfcf3c47dbd88ff611fafc000","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5ae02daa8f5b4ea8f8cd961e6da64d2b19d408a8731c6bad74348b1393bf5bff.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_argument_premises_fallacies_05 -> audio/generated/de-DE/utterances/5c68fae27583be119bbf0ee3ccb3894f28c3949adcafce6696f850ddcf0aa89a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('79122785-1582-5b3b-97c8-668d5a86946c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_argument_premises_fallacies_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b7625b5523b62caca271b55ea7d25cd8804c76eab0ac833d4423731485d9f6b2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('acaf5fcf-6cff-5e8c-94ea-fb81bec4f58a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('79122785-1582-5b3b-97c8-668d5a86946c', 1), 'b7625b5523b62caca271b55ea7d25cd8804c76eab0ac833d4423731485d9f6b2',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5c68fae27583be119bbf0ee3ccb3894f28c3949adcafce6696f850ddcf0aa89a.mp3', 5276, '2026-09-13 11:19:13.460826', '3aad7003ee0e2519f0b6ff8ab529ff2b2e02c8a633b72d6f433035ee2a2b95aa', 'validated', '{"audio_key":"5c68fae27583be119bbf0ee3ccb3894f28c3949adcafce6696f850ddcf0aa89a","entity_key":"u_argument_premises_fallacies_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3aad7003ee0e2519f0b6ff8ab529ff2b2e02c8a633b72d6f433035ee2a2b95aa","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5c68fae27583be119bbf0ee3ccb3894f28c3949adcafce6696f850ddcf0aa89a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_argument_premises_fallacies_03_listen -> audio/generated/de-DE/utterances/5c68fae27583be119bbf0ee3ccb3894f28c3949adcafce6696f850ddcf0aa89a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('9e0e322a-ae78-5759-bc06-9774cd715110', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_argument_premises_fallacies_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b7625b5523b62caca271b55ea7d25cd8804c76eab0ac833d4423731485d9f6b2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('65503231-422e-526a-b1dc-f9e1cb0fff97', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('9e0e322a-ae78-5759-bc06-9774cd715110', 1), 'b7625b5523b62caca271b55ea7d25cd8804c76eab0ac833d4423731485d9f6b2',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5c68fae27583be119bbf0ee3ccb3894f28c3949adcafce6696f850ddcf0aa89a.mp3', 5276, '2026-09-13 11:19:13.460826', '3aad7003ee0e2519f0b6ff8ab529ff2b2e02c8a633b72d6f433035ee2a2b95aa', 'validated', '{"audio_key":"5c68fae27583be119bbf0ee3ccb3894f28c3949adcafce6696f850ddcf0aa89a","entity_key":"ex_argument_premises_fallacies_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3aad7003ee0e2519f0b6ff8ab529ff2b2e02c8a633b72d6f433035ee2a2b95aa","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5c68fae27583be119bbf0ee3ccb3894f28c3949adcafce6696f850ddcf0aa89a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_register_social_positioning_04 -> audio/generated/de-DE/utterances/5d8dfb5b0be6b60ac939767abe9e1070a5d588951a9ccbc75484f2efe59a29c1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('6ddfd2d6-18ee-5a08-a943-fa286f4effe2', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_register_social_positioning_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8e734b10d7a84b0b513e0de7502291798388ef5faa3a3d34c9ff3c3aae581921'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('44f2c461-fa38-56ca-9bfe-2b6b3af8ead7', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('6ddfd2d6-18ee-5a08-a943-fa286f4effe2', 1), '8e734b10d7a84b0b513e0de7502291798388ef5faa3a3d34c9ff3c3aae581921',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5d8dfb5b0be6b60ac939767abe9e1070a5d588951a9ccbc75484f2efe59a29c1.mp3', 4362, '2026-09-13 11:19:13.990449', '89d36b0184128d66c77924792dae6f04ff4edf303929cf4b8c6141b603098702', 'validated', '{"audio_key":"5d8dfb5b0be6b60ac939767abe9e1070a5d588951a9ccbc75484f2efe59a29c1","entity_key":"u_register_social_positioning_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"89d36b0184128d66c77924792dae6f04ff4edf303929cf4b8c6141b603098702","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5d8dfb5b0be6b60ac939767abe9e1070a5d588951a9ccbc75484f2efe59a29c1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_irony_indirect_critique_01 -> audio/generated/de-DE/utterances/5df39d16ab1071cf6ba14e3ea880c54012d05f88a7123da9e12e5ded3e97df98.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('bc19c4ba-6d8c-5645-b182-da063c2d149d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_irony_indirect_critique_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fa84e16bb2ba9b5901ba01138549927773168a8fd0487aa7f9f5b583d0aa1211'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b4753c95-2f29-569b-b081-e17904d27987', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('bc19c4ba-6d8c-5645-b182-da063c2d149d', 1), 'fa84e16bb2ba9b5901ba01138549927773168a8fd0487aa7f9f5b583d0aa1211',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5df39d16ab1071cf6ba14e3ea880c54012d05f88a7123da9e12e5ded3e97df98.mp3', 5799, '2026-09-13 11:19:14.980910', 'd7ae30eac1264c3a111dd63a953c5691ba63802cf68296b03190bb95ca05eada', 'validated', '{"audio_key":"5df39d16ab1071cf6ba14e3ea880c54012d05f88a7123da9e12e5ded3e97df98","entity_key":"u_irony_indirect_critique_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d7ae30eac1264c3a111dd63a953c5691ba63802cf68296b03190bb95ca05eada","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5df39d16ab1071cf6ba14e3ea880c54012d05f88a7123da9e12e5ded3e97df98.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_irony_indirect_critique_01_listen -> audio/generated/de-DE/utterances/5df39d16ab1071cf6ba14e3ea880c54012d05f88a7123da9e12e5ded3e97df98.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('63e38033-4e2e-5a40-ae47-d382163f6ce5', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_irony_indirect_critique_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fa84e16bb2ba9b5901ba01138549927773168a8fd0487aa7f9f5b583d0aa1211'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('917137f7-3fa7-54fc-b02c-aedd4077208b', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('63e38033-4e2e-5a40-ae47-d382163f6ce5', 1), 'fa84e16bb2ba9b5901ba01138549927773168a8fd0487aa7f9f5b583d0aa1211',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5df39d16ab1071cf6ba14e3ea880c54012d05f88a7123da9e12e5ded3e97df98.mp3', 5799, '2026-09-13 11:19:14.980910', 'd7ae30eac1264c3a111dd63a953c5691ba63802cf68296b03190bb95ca05eada', 'validated', '{"audio_key":"5df39d16ab1071cf6ba14e3ea880c54012d05f88a7123da9e12e5ded3e97df98","entity_key":"ex_irony_indirect_critique_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d7ae30eac1264c3a111dd63a953c5691ba63802cf68296b03190bb95ca05eada","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5df39d16ab1071cf6ba14e3ea880c54012d05f88a7123da9e12e5ded3e97df98.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_irony_indirect_critique_03 -> audio/generated/de-DE/utterances/5e8a970929bbe2af2852cf9c48712e1d774ed0139f4d86eb7bbc8388955ad573.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0e682b97-1787-522c-b2ba-1ebf67c8ba1d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_irony_indirect_critique_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '96aac4e417a1c7240aa2ebc15dbd7c186659e810354c69d8c0fc25f1908c347c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('37cd4d16-4043-5e30-8488-6f888281e687', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0e682b97-1787-522c-b2ba-1ebf67c8ba1d', 1), '96aac4e417a1c7240aa2ebc15dbd7c186659e810354c69d8c0fc25f1908c347c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5e8a970929bbe2af2852cf9c48712e1d774ed0139f4d86eb7bbc8388955ad573.mp3', 5093, '2026-09-13 11:19:15.491553', '2a46970a16514dcc399cd125d93e7cf7c1cb7dcb20af802743454090612f5ac9', 'validated', '{"audio_key":"5e8a970929bbe2af2852cf9c48712e1d774ed0139f4d86eb7bbc8388955ad573","entity_key":"u_irony_indirect_critique_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2a46970a16514dcc399cd125d93e7cf7c1cb7dcb20af802743454090612f5ac9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5e8a970929bbe2af2852cf9c48712e1d774ed0139f4d86eb7bbc8388955ad573.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_irony_indirect_critique_02_listen -> audio/generated/de-DE/utterances/5e8a970929bbe2af2852cf9c48712e1d774ed0139f4d86eb7bbc8388955ad573.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('e34392a3-0f83-50ca-83ca-fba10ab7459e', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_irony_indirect_critique_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '96aac4e417a1c7240aa2ebc15dbd7c186659e810354c69d8c0fc25f1908c347c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ee113b95-017a-52ed-8e80-02bbccc55ebd', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('e34392a3-0f83-50ca-83ca-fba10ab7459e', 1), '96aac4e417a1c7240aa2ebc15dbd7c186659e810354c69d8c0fc25f1908c347c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5e8a970929bbe2af2852cf9c48712e1d774ed0139f4d86eb7bbc8388955ad573.mp3', 5093, '2026-09-13 11:19:15.491553', '2a46970a16514dcc399cd125d93e7cf7c1cb7dcb20af802743454090612f5ac9', 'validated', '{"audio_key":"5e8a970929bbe2af2852cf9c48712e1d774ed0139f4d86eb7bbc8388955ad573","entity_key":"ex_irony_indirect_critique_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2a46970a16514dcc399cd125d93e7cf7c1cb7dcb20af802743454090612f5ac9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5e8a970929bbe2af2852cf9c48712e1d774ed0139f4d86eb7bbc8388955ad573.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_register_social_positioning_02 -> audio/generated/de-DE/utterances/6196fad5b479fcbf81a1f321061fa318fa0580bb8ea9ea04c8fe0e8d882b8742.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7e6c204a-7102-50d5-9d88-bef4f2ccccd1', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_register_social_positioning_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '58f49d3ffad9d9cd22438f7561c7c3d93521ead4d4ff63a4c60900a1c45527aa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('96f25a39-469e-53f2-b5d0-05d41093469a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7e6c204a-7102-50d5-9d88-bef4f2ccccd1', 1), '58f49d3ffad9d9cd22438f7561c7c3d93521ead4d4ff63a4c60900a1c45527aa',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/6196fad5b479fcbf81a1f321061fa318fa0580bb8ea9ea04c8fe0e8d882b8742.mp3', 5694, '2026-09-13 11:19:16.520199', 'ec4cb4586173864411d032e0a2ea0707a3d21769d66ba24839f9a60c396883dd', 'validated', '{"audio_key":"6196fad5b479fcbf81a1f321061fa318fa0580bb8ea9ea04c8fe0e8d882b8742","entity_key":"u_register_social_positioning_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ec4cb4586173864411d032e0a2ea0707a3d21769d66ba24839f9a60c396883dd","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/6196fad5b479fcbf81a1f321061fa318fa0580bb8ea9ea04c8fe0e8d882b8742.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_systems_causality_feedback_03 -> audio/generated/de-DE/utterances/631131ebb58d993e5765db652191c0666e370b42a2ffff2c557ae6a99bdd82b3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('4bef7272-6d25-5f7a-97a5-01685f90ec96', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_systems_causality_feedback_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8e6e4afcc40bba61b7a609a33f25d8e7c665282b1fbf4286a3bb92af50131799'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c9eec813-b7e4-57a2-91bd-d6ad7c4272ab', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('4bef7272-6d25-5f7a-97a5-01685f90ec96', 1), '8e6e4afcc40bba61b7a609a33f25d8e7c665282b1fbf4286a3bb92af50131799',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/631131ebb58d993e5765db652191c0666e370b42a2ffff2c557ae6a99bdd82b3.mp3', 6217, '2026-09-13 11:19:17.120609', '763557947c4b6b7282e5109247c6fe04d79f5367b41735859b0ba1936a676062', 'validated', '{"audio_key":"631131ebb58d993e5765db652191c0666e370b42a2ffff2c557ae6a99bdd82b3","entity_key":"u_systems_causality_feedback_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"763557947c4b6b7282e5109247c6fe04d79f5367b41735859b0ba1936a676062","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/631131ebb58d993e5765db652191c0666e370b42a2ffff2c557ae6a99bdd82b3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_systems_causality_feedback_02_listen -> audio/generated/de-DE/utterances/631131ebb58d993e5765db652191c0666e370b42a2ffff2c557ae6a99bdd82b3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('47e906bf-8af1-58bc-9b27-5cd5448b311b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_systems_causality_feedback_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8e6e4afcc40bba61b7a609a33f25d8e7c665282b1fbf4286a3bb92af50131799'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('02c814be-8889-5f85-b77d-e7f6d5b63dcb', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('47e906bf-8af1-58bc-9b27-5cd5448b311b', 1), '8e6e4afcc40bba61b7a609a33f25d8e7c665282b1fbf4286a3bb92af50131799',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/631131ebb58d993e5765db652191c0666e370b42a2ffff2c557ae6a99bdd82b3.mp3', 6217, '2026-09-13 11:19:17.120609', '763557947c4b6b7282e5109247c6fe04d79f5367b41735859b0ba1936a676062', 'validated', '{"audio_key":"631131ebb58d993e5765db652191c0666e370b42a2ffff2c557ae6a99bdd82b3","entity_key":"ex_systems_causality_feedback_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"763557947c4b6b7282e5109247c6fe04d79f5367b41735859b0ba1936a676062","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/631131ebb58d993e5765db652191c0666e370b42a2ffff2c557ae6a99bdd82b3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_systems_causality_feedback_06 -> audio/generated/de-DE/utterances/66bade774ce19392fffee634493fc541b5fb0bce0136f0cb4705899dd7dd536c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f2189e20-8306-5cb7-af4e-bf915bb6a7a6', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_systems_causality_feedback_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b674e2c4f1dd47a45388fedebf2f0d4a17c4962fbed2f432df8b495ab9854241'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b7326ef8-1271-561e-a0ef-d837fefc9355', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f2189e20-8306-5cb7-af4e-bf915bb6a7a6', 1), 'b674e2c4f1dd47a45388fedebf2f0d4a17c4962fbed2f432df8b495ab9854241',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/66bade774ce19392fffee634493fc541b5fb0bce0136f0cb4705899dd7dd536c.mp3', 5746, '2026-09-13 11:19:18.097168', '75e9ba54df1b6374894b1ae728337aa48ed7c41a22b08533ec796848be011ec2', 'validated', '{"audio_key":"66bade774ce19392fffee634493fc541b5fb0bce0136f0cb4705899dd7dd536c","entity_key":"u_systems_causality_feedback_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"75e9ba54df1b6374894b1ae728337aa48ed7c41a22b08533ec796848be011ec2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/66bade774ce19392fffee634493fc541b5fb0bce0136f0cb4705899dd7dd536c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_systems_causality_feedback_04 -> audio/generated/de-DE/utterances/675635f3241a380b049e09778fbc3d4a942110644de27633ef5c6141c35035e7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3b7a1b82-bd48-55e9-bc7d-cedf9695a9c7', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_systems_causality_feedback_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '50d7c30689621ac1fba544a17a4cc806eb2c462452155c6fcb88e44941db5354'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('703fbef3-aaa4-57f1-ad81-6c868a00576c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3b7a1b82-bd48-55e9-bc7d-cedf9695a9c7', 1), '50d7c30689621ac1fba544a17a4cc806eb2c462452155c6fcb88e44941db5354',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/675635f3241a380b049e09778fbc3d4a942110644de27633ef5c6141c35035e7.mp3', 5276, '2026-09-13 11:19:18.648251', '37b765040f802ec0d1c3be011f13cc7aa5148cb84ab5e238bc0522f87cf428a2', 'validated', '{"audio_key":"675635f3241a380b049e09778fbc3d4a942110644de27633ef5c6141c35035e7","entity_key":"u_systems_causality_feedback_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"37b765040f802ec0d1c3be011f13cc7aa5148cb84ab5e238bc0522f87cf428a2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/675635f3241a380b049e09778fbc3d4a942110644de27633ef5c6141c35035e7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_systems_causality_feedback_02 -> audio/generated/de-DE/utterances/6ba780b8c04853f06c39cf64586666e42fb96be313a8371b20bf543221b60a42.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('69623c76-fdcb-5906-b8ef-8ad6be03d7ef', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_systems_causality_feedback_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fc968d50338e7ea49718cc16cb15348a7213516042313a250b22183297b4a6ba'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6ce3ae9a-6366-5f33-8f9e-7178060f3659', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('69623c76-fdcb-5906-b8ef-8ad6be03d7ef', 1), 'fc968d50338e7ea49718cc16cb15348a7213516042313a250b22183297b4a6ba',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/6ba780b8c04853f06c39cf64586666e42fb96be313a8371b20bf543221b60a42.mp3', 6034, '2026-09-13 11:19:19.729039', 'f17d1c2140f3918f0ea0e0f421c06fd884e9652342570dd46c5e4ab842c9f1ad', 'validated', '{"audio_key":"6ba780b8c04853f06c39cf64586666e42fb96be313a8371b20bf543221b60a42","entity_key":"u_systems_causality_feedback_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f17d1c2140f3918f0ea0e0f421c06fd884e9652342570dd46c5e4ab842c9f1ad","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/6ba780b8c04853f06c39cf64586666e42fb96be313a8371b20bf543221b60a42.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_argument_premises_fallacies_04 -> audio/generated/de-DE/utterances/6c3e07e8f39cdff4c268f676f909b3542636a76dae90bc086e63a5c83779a5eb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('277352f2-1ebe-5877-be26-e2836cfa4e62', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_argument_premises_fallacies_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dbf83f74bdf6a8f206c999cf9120eeb7cb51bcd5cf86f456d08365093daf6b2c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2e194ea3-badf-5cd2-9fd9-e70d2e4c8e17', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('277352f2-1ebe-5877-be26-e2836cfa4e62', 1), 'dbf83f74bdf6a8f206c999cf9120eeb7cb51bcd5cf86f456d08365093daf6b2c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/6c3e07e8f39cdff4c268f676f909b3542636a76dae90bc086e63a5c83779a5eb.mp3', 4075, '2026-09-13 11:19:19.982351', '5ab62adfa312e558b96c86b6b11c934d719b53dc5b9090bb847ade260661256d', 'validated', '{"audio_key":"6c3e07e8f39cdff4c268f676f909b3542636a76dae90bc086e63a5c83779a5eb","entity_key":"u_argument_premises_fallacies_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5ab62adfa312e558b96c86b6b11c934d719b53dc5b9090bb847ade260661256d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/6c3e07e8f39cdff4c268f676f909b3542636a76dae90bc086e63a5c83779a5eb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_polyphonic_source_synthesis_06 -> audio/generated/de-DE/utterances/6d3cd6790177138dc036ff3991e34856d209c864cbf5cb9ef93f5dcbe7c053a2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('86d7c2b8-22e3-516a-9c8d-bcf33da58c60', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_polyphonic_source_synthesis_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2c8b84d0d32de9658985c8254d3fc6e01dcaced9eaa2d028edc0367a90ab4833'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ff25e40d-4e0f-52b1-9751-1686e19e444d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('86d7c2b8-22e3-516a-9c8d-bcf33da58c60', 1), '2c8b84d0d32de9658985c8254d3fc6e01dcaced9eaa2d028edc0367a90ab4833',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/6d3cd6790177138dc036ff3991e34856d209c864cbf5cb9ef93f5dcbe7c053a2.mp3', 6164, '2026-09-13 11:19:21.373587', 'f89c2951a28adc72c710d2ee1493a561a1d77db12d2d455de4dc33bd295df995', 'validated', '{"audio_key":"6d3cd6790177138dc036ff3991e34856d209c864cbf5cb9ef93f5dcbe7c053a2","entity_key":"u_polyphonic_source_synthesis_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f89c2951a28adc72c710d2ee1493a561a1d77db12d2d455de4dc33bd295df995","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/6d3cd6790177138dc036ff3991e34856d209c864cbf5cb9ef93f5dcbe7c053a2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_rhetorical_strategy_diagnostics_05 -> audio/generated/de-DE/utterances/7065b9600dc99bc25d4d66f85a623bcaf3ee8ed6db10362e16fba8bfd7fe416d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('58811d5e-6a89-5fda-af56-b886def83abe', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_rhetorical_strategy_diagnostics_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '42b596c6deeee12a1f0d881b03f5412c377a1ac37a4a1ff8949f1150f57fa49c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b179facf-3969-53b4-a799-6e10c9049baa', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('58811d5e-6a89-5fda-af56-b886def83abe', 1), '42b596c6deeee12a1f0d881b03f5412c377a1ac37a4a1ff8949f1150f57fa49c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/7065b9600dc99bc25d4d66f85a623bcaf3ee8ed6db10362e16fba8bfd7fe416d.mp3', 5877, '2026-09-13 11:19:21.560498', '26d1a649de2bd1ff4f45cf89395e4ec9fa1aff2b2c44f0a52f50150a6d68edff', 'validated', '{"audio_key":"7065b9600dc99bc25d4d66f85a623bcaf3ee8ed6db10362e16fba8bfd7fe416d","entity_key":"u_rhetorical_strategy_diagnostics_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"26d1a649de2bd1ff4f45cf89395e4ec9fa1aff2b2c44f0a52f50150a6d68edff","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/7065b9600dc99bc25d4d66f85a623bcaf3ee8ed6db10362e16fba8bfd7fe416d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_rhetorical_strategy_diagnostics_03_listen -> audio/generated/de-DE/utterances/7065b9600dc99bc25d4d66f85a623bcaf3ee8ed6db10362e16fba8bfd7fe416d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('c58cd039-0d98-5845-adb7-3373d3ad161a', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_rhetorical_strategy_diagnostics_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '42b596c6deeee12a1f0d881b03f5412c377a1ac37a4a1ff8949f1150f57fa49c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f4e2ab24-5152-55f0-901a-c118208c7851', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('c58cd039-0d98-5845-adb7-3373d3ad161a', 1), '42b596c6deeee12a1f0d881b03f5412c377a1ac37a4a1ff8949f1150f57fa49c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/7065b9600dc99bc25d4d66f85a623bcaf3ee8ed6db10362e16fba8bfd7fe416d.mp3', 5877, '2026-09-13 11:19:21.560498', '26d1a649de2bd1ff4f45cf89395e4ec9fa1aff2b2c44f0a52f50150a6d68edff', 'validated', '{"audio_key":"7065b9600dc99bc25d4d66f85a623bcaf3ee8ed6db10362e16fba8bfd7fe416d","entity_key":"ex_rhetorical_strategy_diagnostics_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"26d1a649de2bd1ff4f45cf89395e4ec9fa1aff2b2c44f0a52f50150a6d68edff","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/7065b9600dc99bc25d4d66f85a623bcaf3ee8ed6db10362e16fba8bfd7fe416d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_irony_indirect_critique_04 -> audio/generated/de-DE/utterances/728416727f680326c0966b8a6d2521ce6d0a0677451349c00239bdf477d60418.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f965df83-a2c2-5e34-86f2-e852facda1b8', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_irony_indirect_critique_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '354480ee9c75859321037c6e19b427da8bed307cb572962e241ad1a511874c6b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f75f5e4d-538b-5f32-ab99-cb69a0c954c3', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f965df83-a2c2-5e34-86f2-e852facda1b8', 1), '354480ee9c75859321037c6e19b427da8bed307cb572962e241ad1a511874c6b',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/728416727f680326c0966b8a6d2521ce6d0a0677451349c00239bdf477d60418.mp3', 4623, '2026-09-13 11:19:22.808742', '59d62ca5dbb910a6afbe7f7e3b7d7bff2c1895a20b3d77b4e300236a8a909928', 'validated', '{"audio_key":"728416727f680326c0966b8a6d2521ce6d0a0677451349c00239bdf477d60418","entity_key":"u_irony_indirect_critique_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"59d62ca5dbb910a6afbe7f7e3b7d7bff2c1895a20b3d77b4e300236a8a909928","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/728416727f680326c0966b8a6d2521ce6d0a0677451349c00239bdf477d60418.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_rhetorical_strategy_diagnostics_06 -> audio/generated/de-DE/utterances/81e785a378f048d29cd51954b0351e60b302656a66f5e3678657c464409c9aba.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('fb438ee0-5876-5b17-991e-75a1a3e81fbe', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_rhetorical_strategy_diagnostics_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7ed01156c06f837dee894ec0391eafbb5ef19e5841e87840c789e9cf2fd73c52'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ce17d717-6403-534d-8add-53d3387390a4', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('fb438ee0-5876-5b17-991e-75a1a3e81fbe', 1), '7ed01156c06f837dee894ec0391eafbb5ef19e5841e87840c789e9cf2fd73c52',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/81e785a378f048d29cd51954b0351e60b302656a66f5e3678657c464409c9aba.mp3', 5877, '2026-09-13 11:19:23.100345', 'b4e4a6d9d323aec7ddf1294f291d026ea3f5b304bddec6004ad625124f73b377', 'validated', '{"audio_key":"81e785a378f048d29cd51954b0351e60b302656a66f5e3678657c464409c9aba","entity_key":"u_rhetorical_strategy_diagnostics_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b4e4a6d9d323aec7ddf1294f291d026ea3f5b304bddec6004ad625124f73b377","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/81e785a378f048d29cd51954b0351e60b302656a66f5e3678657c464409c9aba.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_polyphonic_source_synthesis_03 -> audio/generated/de-DE/utterances/86070e5cb04b6b22636dfc10d8802f25b3a6088a033e6d47c04cc238d8ccd98b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('30a3eadf-c47b-5852-9d4c-101dec61019b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_polyphonic_source_synthesis_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '894570a06101a91527d701d109d711289db9a89bc144e4dd9f7ad31c649ec716'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8844a522-aa1d-5005-a09e-ac4ac12abd29', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('30a3eadf-c47b-5852-9d4c-101dec61019b', 1), '894570a06101a91527d701d109d711289db9a89bc144e4dd9f7ad31c649ec716',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/86070e5cb04b6b22636dfc10d8802f25b3a6088a033e6d47c04cc238d8ccd98b.mp3', 5511, '2026-09-13 11:19:24.363066', 'ccfb9feec33bcafa74ccc6621aa141e48b39ac0d278c2c3f5409036ff772a91c', 'validated', '{"audio_key":"86070e5cb04b6b22636dfc10d8802f25b3a6088a033e6d47c04cc238d8ccd98b","entity_key":"u_polyphonic_source_synthesis_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ccfb9feec33bcafa74ccc6621aa141e48b39ac0d278c2c3f5409036ff772a91c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/86070e5cb04b6b22636dfc10d8802f25b3a6088a033e6d47c04cc238d8ccd98b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_polyphonic_source_synthesis_02_listen -> audio/generated/de-DE/utterances/86070e5cb04b6b22636dfc10d8802f25b3a6088a033e6d47c04cc238d8ccd98b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('180183d3-ea61-5294-a524-c2b4e9b52dca', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_polyphonic_source_synthesis_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '894570a06101a91527d701d109d711289db9a89bc144e4dd9f7ad31c649ec716'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3ce8d8c4-f29d-5573-8888-7e74a30ff9a0', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('180183d3-ea61-5294-a524-c2b4e9b52dca', 1), '894570a06101a91527d701d109d711289db9a89bc144e4dd9f7ad31c649ec716',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/86070e5cb04b6b22636dfc10d8802f25b3a6088a033e6d47c04cc238d8ccd98b.mp3', 5511, '2026-09-13 11:19:24.363066', 'ccfb9feec33bcafa74ccc6621aa141e48b39ac0d278c2c3f5409036ff772a91c', 'validated', '{"audio_key":"86070e5cb04b6b22636dfc10d8802f25b3a6088a033e6d47c04cc238d8ccd98b","entity_key":"ex_polyphonic_source_synthesis_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ccfb9feec33bcafa74ccc6621aa141e48b39ac0d278c2c3f5409036ff772a91c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/86070e5cb04b6b22636dfc10d8802f25b3a6088a033e6d47c04cc238d8ccd98b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_polyphonic_source_synthesis_05 -> audio/generated/de-DE/utterances/8b93b47016186d4e8fb9479d62e9bf538a623971ed537ac8412fbd3a9a1f9adb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('5692501d-3ea5-519a-b989-8edb2df6859f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_polyphonic_source_synthesis_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1b6b994014e679d27e4ca555b56115236f0a48dae3d2f0749257b393cb8b7751'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5c228e03-0b31-5f6d-8021-5f51aac6d458', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('5692501d-3ea5-519a-b989-8edb2df6859f', 1), '1b6b994014e679d27e4ca555b56115236f0a48dae3d2f0749257b393cb8b7751',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/8b93b47016186d4e8fb9479d62e9bf538a623971ed537ac8412fbd3a9a1f9adb.mp3', 5746, '2026-09-13 11:19:24.654255', '47e56bd30b3a4c6e6f034d5f2295377f89c80077960489a3f2ea5dd6bfad671c', 'validated', '{"audio_key":"8b93b47016186d4e8fb9479d62e9bf538a623971ed537ac8412fbd3a9a1f9adb","entity_key":"u_polyphonic_source_synthesis_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"47e56bd30b3a4c6e6f034d5f2295377f89c80077960489a3f2ea5dd6bfad671c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/8b93b47016186d4e8fb9479d62e9bf538a623971ed537ac8412fbd3a9a1f9adb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_polyphonic_source_synthesis_03_listen -> audio/generated/de-DE/utterances/8b93b47016186d4e8fb9479d62e9bf538a623971ed537ac8412fbd3a9a1f9adb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('c7759031-d24e-51ab-9090-767c3ba7b830', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_polyphonic_source_synthesis_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1b6b994014e679d27e4ca555b56115236f0a48dae3d2f0749257b393cb8b7751'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dfde77d2-c03b-5a7b-a768-23b4d06e7643', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('c7759031-d24e-51ab-9090-767c3ba7b830', 1), '1b6b994014e679d27e4ca555b56115236f0a48dae3d2f0749257b393cb8b7751',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/8b93b47016186d4e8fb9479d62e9bf538a623971ed537ac8412fbd3a9a1f9adb.mp3', 5746, '2026-09-13 11:19:24.654255', '47e56bd30b3a4c6e6f034d5f2295377f89c80077960489a3f2ea5dd6bfad671c', 'validated', '{"audio_key":"8b93b47016186d4e8fb9479d62e9bf538a623971ed537ac8412fbd3a9a1f9adb","entity_key":"ex_polyphonic_source_synthesis_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"47e56bd30b3a4c6e6f034d5f2295377f89c80077960489a3f2ea5dd6bfad671c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/8b93b47016186d4e8fb9479d62e9bf538a623971ed537ac8412fbd3a9a1f9adb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_interpret_reframe_position_capstone_01 -> audio/generated/de-DE/utterances/9213d0e848b99177308e1b9dcf64f45b0bfcf74f658181c3f56cb75763c4761b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7519e7be-acaf-536f-b74e-79c091e85ffc', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_interpret_reframe_position_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '14d30ffdc5bff5d629e141e6ebd1d8c230bc9e41133f3b5c20c9478118659dae'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f673e87f-b33a-55be-9761-dca944aab06c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7519e7be-acaf-536f-b74e-79c091e85ffc', 1), '14d30ffdc5bff5d629e141e6ebd1d8c230bc9e41133f3b5c20c9478118659dae',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/9213d0e848b99177308e1b9dcf64f45b0bfcf74f658181c3f56cb75763c4761b.mp3', 5459, '2026-09-13 11:19:25.872105', '277a614c12c5946eed32fc08ba774e445631b559caf5c42e0d3bbe0b02d84805', 'validated', '{"audio_key":"9213d0e848b99177308e1b9dcf64f45b0bfcf74f658181c3f56cb75763c4761b","entity_key":"u_interpret_reframe_position_capstone_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"277a614c12c5946eed32fc08ba774e445631b559caf5c42e0d3bbe0b02d84805","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/9213d0e848b99177308e1b9dcf64f45b0bfcf74f658181c3f56cb75763c4761b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_interpret_reframe_position_capstone_01_listen -> audio/generated/de-DE/utterances/9213d0e848b99177308e1b9dcf64f45b0bfcf74f658181c3f56cb75763c4761b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('ed9dced2-a732-5b64-9e33-3c1b3dc0a40d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_interpret_reframe_position_capstone_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '14d30ffdc5bff5d629e141e6ebd1d8c230bc9e41133f3b5c20c9478118659dae'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fbdd5495-0360-5a63-a4b2-75510bd8881b', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('ed9dced2-a732-5b64-9e33-3c1b3dc0a40d', 1), '14d30ffdc5bff5d629e141e6ebd1d8c230bc9e41133f3b5c20c9478118659dae',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/9213d0e848b99177308e1b9dcf64f45b0bfcf74f658181c3f56cb75763c4761b.mp3', 5459, '2026-09-13 11:19:25.872105', '277a614c12c5946eed32fc08ba774e445631b559caf5c42e0d3bbe0b02d84805', 'validated', '{"audio_key":"9213d0e848b99177308e1b9dcf64f45b0bfcf74f658181c3f56cb75763c4761b","entity_key":"ex_interpret_reframe_position_capstone_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"277a614c12c5946eed32fc08ba774e445631b559caf5c42e0d3bbe0b02d84805","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/9213d0e848b99177308e1b9dcf64f45b0bfcf74f658181c3f56cb75763c4761b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_register_social_positioning_05 -> audio/generated/de-DE/utterances/928bca1792fd85fb475f8e8bc8a03bd6fd378045981ce75144fc8b30f22b513d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d3406d01-6f9f-5cee-b8ff-9df2a365b24a', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_register_social_positioning_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '01a3f1577c33f254cd6909f2360c7b4d1de7a5a5021e228d86218998dd1883b7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1cf45c31-8f6a-577c-b324-35cfc8b407e5', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d3406d01-6f9f-5cee-b8ff-9df2a365b24a', 1), '01a3f1577c33f254cd6909f2360c7b4d1de7a5a5021e228d86218998dd1883b7',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/928bca1792fd85fb475f8e8bc8a03bd6fd378045981ce75144fc8b30f22b513d.mp3', 4597, '2026-09-13 11:19:26.035455', '64de4853fe062ee586bc916dbae3df788fd0a82c23cd80e53f911c517e3c10a4', 'validated', '{"audio_key":"928bca1792fd85fb475f8e8bc8a03bd6fd378045981ce75144fc8b30f22b513d","entity_key":"u_register_social_positioning_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"64de4853fe062ee586bc916dbae3df788fd0a82c23cd80e53f911c517e3c10a4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/928bca1792fd85fb475f8e8bc8a03bd6fd378045981ce75144fc8b30f22b513d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_register_social_positioning_03_listen -> audio/generated/de-DE/utterances/928bca1792fd85fb475f8e8bc8a03bd6fd378045981ce75144fc8b30f22b513d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('26db79bd-9053-583f-97d2-1e99b7a1230f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_register_social_positioning_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '01a3f1577c33f254cd6909f2360c7b4d1de7a5a5021e228d86218998dd1883b7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('12a5489d-c862-5ec6-b149-a14bb714a38b', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('26db79bd-9053-583f-97d2-1e99b7a1230f', 1), '01a3f1577c33f254cd6909f2360c7b4d1de7a5a5021e228d86218998dd1883b7',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/928bca1792fd85fb475f8e8bc8a03bd6fd378045981ce75144fc8b30f22b513d.mp3', 4597, '2026-09-13 11:19:26.035455', '64de4853fe062ee586bc916dbae3df788fd0a82c23cd80e53f911c517e3c10a4', 'validated', '{"audio_key":"928bca1792fd85fb475f8e8bc8a03bd6fd378045981ce75144fc8b30f22b513d","entity_key":"ex_register_social_positioning_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"64de4853fe062ee586bc916dbae3df788fd0a82c23cd80e53f911c517e3c10a4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/928bca1792fd85fb475f8e8bc8a03bd6fd378045981ce75144fc8b30f22b513d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_implicit_stance_subtext_02 -> audio/generated/de-DE/utterances/961f1c4b2cdbe1b91d091e7f2c594295c89b6b77ae33febc285645f53f01a643.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b5d1bad7-1d89-5b23-a661-a48bac9f786c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_implicit_stance_subtext_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5e7e08982ad6004df97b77ce907e65eaedb86bfcf037c8698d73e8c6a345aeee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c82f40e1-a28c-5ec7-a5a8-4c69b145cec9', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b5d1bad7-1d89-5b23-a661-a48bac9f786c', 1), '5e7e08982ad6004df97b77ce907e65eaedb86bfcf037c8698d73e8c6a345aeee',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/961f1c4b2cdbe1b91d091e7f2c594295c89b6b77ae33febc285645f53f01a643.mp3', 5381, '2026-09-13 11:19:27.361216', '86413ad0950d26c48ae2878e1e061881dabb8cb6d3eb1dbc395d6d6223308e15', 'validated', '{"audio_key":"961f1c4b2cdbe1b91d091e7f2c594295c89b6b77ae33febc285645f53f01a643","entity_key":"u_implicit_stance_subtext_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"86413ad0950d26c48ae2878e1e061881dabb8cb6d3eb1dbc395d6d6223308e15","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/961f1c4b2cdbe1b91d091e7f2c594295c89b6b77ae33febc285645f53f01a643.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_interpret_reframe_position_capstone_06 -> audio/generated/de-DE/utterances/a28701cc8785756093fa2879ce7e50438fb5ed06fa165bb9455e4861e7ae8b16.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('fd14497d-968d-5829-8acf-988da084aaaf', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_interpret_reframe_position_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5b90187e976a06a85b7599f50472b26f693279517fc134a037ac92e4ae70a843'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aa8a565f-9b90-57ae-a56d-b399ce0072ed', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('fd14497d-968d-5829-8acf-988da084aaaf', 1), '5b90187e976a06a85b7599f50472b26f693279517fc134a037ac92e4ae70a843',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/a28701cc8785756093fa2879ce7e50438fb5ed06fa165bb9455e4861e7ae8b16.mp3', 5146, '2026-09-13 11:19:27.520036', 'ac2ba93117a7e2c9d8d77b21d6cc89a2e04c48927f33521fa21dda284ece8a29', 'validated', '{"audio_key":"a28701cc8785756093fa2879ce7e50438fb5ed06fa165bb9455e4861e7ae8b16","entity_key":"u_interpret_reframe_position_capstone_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ac2ba93117a7e2c9d8d77b21d6cc89a2e04c48927f33521fa21dda284ece8a29","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/a28701cc8785756093fa2879ce7e50438fb5ed06fa165bb9455e4861e7ae8b16.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_high_stakes_discursive_intervention_02 -> audio/generated/de-DE/utterances/a30dc15945ac096de0cd3d9faf9e724e3a4b37ca390920bd370787c82691abc7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('1b25a9f9-44b5-5c18-bf34-897c66edba3f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_high_stakes_discursive_intervention_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd95ebb35061d9684fbd3c109b12fc24806b80f1c9a2cbf4720c4ac135464ae41'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0a21dcb7-352f-562a-958b-bb70452f6731', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('1b25a9f9-44b5-5c18-bf34-897c66edba3f', 1), 'd95ebb35061d9684fbd3c109b12fc24806b80f1c9a2cbf4720c4ac135464ae41',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/a30dc15945ac096de0cd3d9faf9e724e3a4b37ca390920bd370787c82691abc7.mp3', 5041, '2026-09-13 11:19:28.812516', '4bc7dd29680fcdb783071955a699c158645203e3aff2f76ade451ef1ed543097', 'validated', '{"audio_key":"a30dc15945ac096de0cd3d9faf9e724e3a4b37ca390920bd370787c82691abc7","entity_key":"u_high_stakes_discursive_intervention_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4bc7dd29680fcdb783071955a699c158645203e3aff2f76ade451ef1ed543097","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/a30dc15945ac096de0cd3d9faf9e724e3a4b37ca390920bd370787c82691abc7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_lexical_precision_collocation_05 -> audio/generated/de-DE/utterances/a797c81941dbfa54023fc48d9e73fad389397eac3711dd8af3d1032b746836e0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d1f6738c-1fb6-5987-8a03-0431628e926d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_lexical_precision_collocation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8dee440de4e8bde5c0597916d1c588caf21616bc4985e5aba061ef0a98becd2e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c2adf235-9dd2-58bb-88e6-e932ee11b06b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d1f6738c-1fb6-5987-8a03-0431628e926d', 1), '8dee440de4e8bde5c0597916d1c588caf21616bc4985e5aba061ef0a98becd2e',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/a797c81941dbfa54023fc48d9e73fad389397eac3711dd8af3d1032b746836e0.mp3', 5198, '2026-09-13 11:19:28.966283', 'eaf662a344c241f0ec16e3545a618ef367f5e36996384674fd129867d09598b0', 'validated', '{"audio_key":"a797c81941dbfa54023fc48d9e73fad389397eac3711dd8af3d1032b746836e0","entity_key":"u_lexical_precision_collocation_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"eaf662a344c241f0ec16e3545a618ef367f5e36996384674fd129867d09598b0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/a797c81941dbfa54023fc48d9e73fad389397eac3711dd8af3d1032b746836e0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_lexical_precision_collocation_03_listen -> audio/generated/de-DE/utterances/a797c81941dbfa54023fc48d9e73fad389397eac3711dd8af3d1032b746836e0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('752ccaa6-8c19-59da-9929-0ae10e441009', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_lexical_precision_collocation_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8dee440de4e8bde5c0597916d1c588caf21616bc4985e5aba061ef0a98becd2e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fc3555fd-f26e-5967-a52f-c8c2f4f61a76', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('752ccaa6-8c19-59da-9929-0ae10e441009', 1), '8dee440de4e8bde5c0597916d1c588caf21616bc4985e5aba061ef0a98becd2e',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/a797c81941dbfa54023fc48d9e73fad389397eac3711dd8af3d1032b746836e0.mp3', 5198, '2026-09-13 11:19:28.966283', 'eaf662a344c241f0ec16e3545a618ef367f5e36996384674fd129867d09598b0', 'validated', '{"audio_key":"a797c81941dbfa54023fc48d9e73fad389397eac3711dd8af3d1032b746836e0","entity_key":"ex_lexical_precision_collocation_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"eaf662a344c241f0ec16e3545a618ef367f5e36996384674fd129867d09598b0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/a797c81941dbfa54023fc48d9e73fad389397eac3711dd8af3d1032b746836e0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_irony_indirect_critique_06 -> audio/generated/de-DE/utterances/a90ce5b1697c4a1b488d0f8bd069a6b37e3f7f9f9fe05a8f6e966f42dcd8ccca.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('469f5187-af14-54e6-8b53-aa052cb463ff', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_irony_indirect_critique_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e927701247bf3d64db2a7468d69935d578f998bc4f7be6573ee90f390492f627'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0eeccd81-c614-57f1-824f-951510172ee0', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('469f5187-af14-54e6-8b53-aa052cb463ff', 1), 'e927701247bf3d64db2a7468d69935d578f998bc4f7be6573ee90f390492f627',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/a90ce5b1697c4a1b488d0f8bd069a6b37e3f7f9f9fe05a8f6e966f42dcd8ccca.mp3', 4675, '2026-09-13 11:19:30.279268', '7a050fa37f702acd7d882f861b4fd59f7bf1bd5f45a5ea57b61d2f8321a32f9e', 'validated', '{"audio_key":"a90ce5b1697c4a1b488d0f8bd069a6b37e3f7f9f9fe05a8f6e966f42dcd8ccca","entity_key":"u_irony_indirect_critique_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7a050fa37f702acd7d882f861b4fd59f7bf1bd5f45a5ea57b61d2f8321a32f9e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/a90ce5b1697c4a1b488d0f8bd069a6b37e3f7f9f9fe05a8f6e966f42dcd8ccca.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_irony_indirect_critique_05 -> audio/generated/de-DE/utterances/b223549e80179428c61e6c29f30131284df86a99c9a75c9f128ae0ad816baed2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('5f89108f-3f56-501e-8240-a7972dc8873b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_irony_indirect_critique_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fa33d6051ab12d1d52678370c78952c2c38bf9e508328a779f87ba0f0508a188'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('50d36538-d845-518b-b4ea-05f9e3cc1bf8', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('5f89108f-3f56-501e-8240-a7972dc8873b', 1), 'fa33d6051ab12d1d52678370c78952c2c38bf9e508328a779f87ba0f0508a188',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/b223549e80179428c61e6c29f30131284df86a99c9a75c9f128ae0ad816baed2.mp3', 5616, '2026-09-13 11:19:30.502341', '7c8b8cd86891c8580af951640ca8d5ec6fe56b9f33511549b6e73b185f48bfe6', 'validated', '{"audio_key":"b223549e80179428c61e6c29f30131284df86a99c9a75c9f128ae0ad816baed2","entity_key":"u_irony_indirect_critique_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7c8b8cd86891c8580af951640ca8d5ec6fe56b9f33511549b6e73b185f48bfe6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/b223549e80179428c61e6c29f30131284df86a99c9a75c9f128ae0ad816baed2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_irony_indirect_critique_03_listen -> audio/generated/de-DE/utterances/b223549e80179428c61e6c29f30131284df86a99c9a75c9f128ae0ad816baed2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('66ee7efb-2f05-52ea-968a-0425d8ee65ff', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_irony_indirect_critique_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fa33d6051ab12d1d52678370c78952c2c38bf9e508328a779f87ba0f0508a188'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('02ec6056-77a0-5742-92e2-e0600971a11d', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('66ee7efb-2f05-52ea-968a-0425d8ee65ff', 1), 'fa33d6051ab12d1d52678370c78952c2c38bf9e508328a779f87ba0f0508a188',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/b223549e80179428c61e6c29f30131284df86a99c9a75c9f128ae0ad816baed2.mp3', 5616, '2026-09-13 11:19:30.502341', '7c8b8cd86891c8580af951640ca8d5ec6fe56b9f33511549b6e73b185f48bfe6', 'validated', '{"audio_key":"b223549e80179428c61e6c29f30131284df86a99c9a75c9f128ae0ad816baed2","entity_key":"ex_irony_indirect_critique_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7c8b8cd86891c8580af951640ca8d5ec6fe56b9f33511549b6e73b185f48bfe6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/b223549e80179428c61e6c29f30131284df86a99c9a75c9f128ae0ad816baed2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_irony_indirect_critique_02 -> audio/generated/de-DE/utterances/b9d816d470163c4f845a1ae13e83b61e1d7fb3e44d5d1c8e1b75c3ad170d4368.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9c72701b-0cae-5457-8073-deba8bcbb00f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_irony_indirect_critique_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2e01c9060ac8e5f840f3a9150023287820a3cc981e6f17eabcd6b9d906bf3720'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('be9a5103-a04e-50c2-82c8-e478e5d044a2', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9c72701b-0cae-5457-8073-deba8bcbb00f', 1), '2e01c9060ac8e5f840f3a9150023287820a3cc981e6f17eabcd6b9d906bf3720',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/b9d816d470163c4f845a1ae13e83b61e1d7fb3e44d5d1c8e1b75c3ad170d4368.mp3', 5041, '2026-09-13 11:19:31.750210', 'f64b9eff53c021afa8c3e46a15682f27f2d6d2fd48199c967844303f01656e25', 'validated', '{"audio_key":"b9d816d470163c4f845a1ae13e83b61e1d7fb3e44d5d1c8e1b75c3ad170d4368","entity_key":"u_irony_indirect_critique_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f64b9eff53c021afa8c3e46a15682f27f2d6d2fd48199c967844303f01656e25","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/b9d816d470163c4f845a1ae13e83b61e1d7fb3e44d5d1c8e1b75c3ad170d4368.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_systems_causality_feedback_05 -> audio/generated/de-DE/utterances/bddf4744455bdb7f2e5ffb5dcb7c64230b58945a6ca1e62a914c37d07574063d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e8dbadce-5e81-55fd-9777-6c6e34afeff5', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_systems_causality_feedback_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '974154e0ffe42996866d7437e1c3b10892b2ebf3b4c9bd63e69fa95699f52008'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a80021e1-e92d-5696-a549-e62a8c21be8c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e8dbadce-5e81-55fd-9777-6c6e34afeff5', 1), '974154e0ffe42996866d7437e1c3b10892b2ebf3b4c9bd63e69fa95699f52008',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/bddf4744455bdb7f2e5ffb5dcb7c64230b58945a6ca1e62a914c37d07574063d.mp3', 4963, '2026-09-13 11:19:31.982282', 'e33348523f18f408887452ea5a4f6cdad57c146251a41828b34ebfd747940e6e', 'validated', '{"audio_key":"bddf4744455bdb7f2e5ffb5dcb7c64230b58945a6ca1e62a914c37d07574063d","entity_key":"u_systems_causality_feedback_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e33348523f18f408887452ea5a4f6cdad57c146251a41828b34ebfd747940e6e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/bddf4744455bdb7f2e5ffb5dcb7c64230b58945a6ca1e62a914c37d07574063d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_systems_causality_feedback_03_listen -> audio/generated/de-DE/utterances/bddf4744455bdb7f2e5ffb5dcb7c64230b58945a6ca1e62a914c37d07574063d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('5e14762d-d098-5633-902c-74034e6c49db', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_systems_causality_feedback_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '974154e0ffe42996866d7437e1c3b10892b2ebf3b4c9bd63e69fa95699f52008'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3d4ad87c-4d04-575f-bb20-ecfef525974b', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('5e14762d-d098-5633-902c-74034e6c49db', 1), '974154e0ffe42996866d7437e1c3b10892b2ebf3b4c9bd63e69fa95699f52008',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/bddf4744455bdb7f2e5ffb5dcb7c64230b58945a6ca1e62a914c37d07574063d.mp3', 4963, '2026-09-13 11:19:31.982282', 'e33348523f18f408887452ea5a4f6cdad57c146251a41828b34ebfd747940e6e', 'validated', '{"audio_key":"bddf4744455bdb7f2e5ffb5dcb7c64230b58945a6ca1e62a914c37d07574063d","entity_key":"ex_systems_causality_feedback_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e33348523f18f408887452ea5a4f6cdad57c146251a41828b34ebfd747940e6e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/bddf4744455bdb7f2e5ffb5dcb7c64230b58945a6ca1e62a914c37d07574063d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_interpret_reframe_position_capstone_05 -> audio/generated/de-DE/utterances/c78c8277c3ff7a2a925966bb7cb138ce5e1d92fdc2086ff1359949674bb5bd19.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('4b62701a-22e8-513d-ae5a-9679d73cbc14', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_interpret_reframe_position_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '78bcfbebf481a25a9ea9c5efdf2abfec4d819d2be3c9addc38a86b97498ae77a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2504516f-d966-599f-8d34-a1944efa8d6f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('4b62701a-22e8-513d-ae5a-9679d73cbc14', 1), '78bcfbebf481a25a9ea9c5efdf2abfec4d819d2be3c9addc38a86b97498ae77a',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/c78c8277c3ff7a2a925966bb7cb138ce5e1d92fdc2086ff1359949674bb5bd19.mp3', 4310, '2026-09-13 11:19:33.096315', 'b39f89b72e9fd4ccef39e40cdf6182946203751d5a8404f02a67d64af74f3362', 'validated', '{"audio_key":"c78c8277c3ff7a2a925966bb7cb138ce5e1d92fdc2086ff1359949674bb5bd19","entity_key":"u_interpret_reframe_position_capstone_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b39f89b72e9fd4ccef39e40cdf6182946203751d5a8404f02a67d64af74f3362","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/c78c8277c3ff7a2a925966bb7cb138ce5e1d92fdc2086ff1359949674bb5bd19.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_interpret_reframe_position_capstone_03_listen -> audio/generated/de-DE/utterances/c78c8277c3ff7a2a925966bb7cb138ce5e1d92fdc2086ff1359949674bb5bd19.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('e8ea9b49-4c45-5a28-859b-27c593d52922', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_interpret_reframe_position_capstone_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '78bcfbebf481a25a9ea9c5efdf2abfec4d819d2be3c9addc38a86b97498ae77a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('299d9daa-536b-5049-a403-5cdd93604ffa', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('e8ea9b49-4c45-5a28-859b-27c593d52922', 1), '78bcfbebf481a25a9ea9c5efdf2abfec4d819d2be3c9addc38a86b97498ae77a',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/c78c8277c3ff7a2a925966bb7cb138ce5e1d92fdc2086ff1359949674bb5bd19.mp3', 4310, '2026-09-13 11:19:33.096315', 'b39f89b72e9fd4ccef39e40cdf6182946203751d5a8404f02a67d64af74f3362', 'validated', '{"audio_key":"c78c8277c3ff7a2a925966bb7cb138ce5e1d92fdc2086ff1359949674bb5bd19","entity_key":"ex_interpret_reframe_position_capstone_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b39f89b72e9fd4ccef39e40cdf6182946203751d5a8404f02a67d64af74f3362","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/c78c8277c3ff7a2a925966bb7cb138ce5e1d92fdc2086ff1359949674bb5bd19.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_implicit_stance_subtext_04 -> audio/generated/de-DE/utterances/c7e9342211cf165ca05ed3f011caea859c6d3881cd9b2f23961926a4ec972c27.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f15b51bd-c5e0-5ba7-8260-560ccbd6b097', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_implicit_stance_subtext_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c57209f2b17b7b673bcf25a6bd0ee0079781050bee17b3d426c2b01c1e135991'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e3688fd8-e1bc-5937-b9d7-3531325e8a95', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f15b51bd-c5e0-5ba7-8260-560ccbd6b097', 1), 'c57209f2b17b7b673bcf25a6bd0ee0079781050bee17b3d426c2b01c1e135991',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/c7e9342211cf165ca05ed3f011caea859c6d3881cd9b2f23961926a4ec972c27.mp3', 4858, '2026-09-13 11:19:33.431988', '09d2dcf088a837c676498f5147818aed6f854a716c2c420af73f9427fd578bc8', 'validated', '{"audio_key":"c7e9342211cf165ca05ed3f011caea859c6d3881cd9b2f23961926a4ec972c27","entity_key":"u_implicit_stance_subtext_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"09d2dcf088a837c676498f5147818aed6f854a716c2c420af73f9427fd578bc8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/c7e9342211cf165ca05ed3f011caea859c6d3881cd9b2f23961926a4ec972c27.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_register_social_positioning_06 -> audio/generated/de-DE/utterances/c9f1f9f7ca3c82947f27c7ea86911e56f3e6a5035775ae0b26c194679ea0bad7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0f25bc7e-5d95-55fd-827a-42da6e15b294', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_register_social_positioning_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '168d7ce299ab518430941ee20561695a689dd3212f2b1c1992fc8df293738958'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('85b995bd-2288-597f-8d00-02a9f66eea55', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0f25bc7e-5d95-55fd-827a-42da6e15b294', 1), '168d7ce299ab518430941ee20561695a689dd3212f2b1c1992fc8df293738958',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/c9f1f9f7ca3c82947f27c7ea86911e56f3e6a5035775ae0b26c194679ea0bad7.mp3', 5276, '2026-09-13 11:19:34.598074', '46241cf22ed0b6355b16b75394494c502c2a738441a108b9ec7fe2eb6c98fb5d', 'validated', '{"audio_key":"c9f1f9f7ca3c82947f27c7ea86911e56f3e6a5035775ae0b26c194679ea0bad7","entity_key":"u_register_social_positioning_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"46241cf22ed0b6355b16b75394494c502c2a738441a108b9ec7fe2eb6c98fb5d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/c9f1f9f7ca3c82947f27c7ea86911e56f3e6a5035775ae0b26c194679ea0bad7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_high_stakes_discursive_intervention_03 -> audio/generated/de-DE/utterances/ccf928de8d60e32cd8b1ee3fa6fdbd988affcb2305011aa5a419aff4813a9d03.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('74a2700f-d834-5210-ac2f-06a0919f844b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_high_stakes_discursive_intervention_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b3d09e4b292e88adf27361c5f2358d019322c4d629a37153171d81dc6aba2711'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('58e24ed0-0cfa-5ce7-b309-be7da5508eba', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('74a2700f-d834-5210-ac2f-06a0919f844b', 1), 'b3d09e4b292e88adf27361c5f2358d019322c4d629a37153171d81dc6aba2711',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ccf928de8d60e32cd8b1ee3fa6fdbd988affcb2305011aa5a419aff4813a9d03.mp3', 6269, '2026-09-13 11:19:35.337067', '3e90401b7a5c6ec4b71495949c35f7cdbd4e3ed3fbaee4e094f75d78c1393d82', 'validated', '{"audio_key":"ccf928de8d60e32cd8b1ee3fa6fdbd988affcb2305011aa5a419aff4813a9d03","entity_key":"u_high_stakes_discursive_intervention_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3e90401b7a5c6ec4b71495949c35f7cdbd4e3ed3fbaee4e094f75d78c1393d82","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ccf928de8d60e32cd8b1ee3fa6fdbd988affcb2305011aa5a419aff4813a9d03.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_high_stakes_discursive_intervention_02_listen -> audio/generated/de-DE/utterances/ccf928de8d60e32cd8b1ee3fa6fdbd988affcb2305011aa5a419aff4813a9d03.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('07b8b829-378c-5959-a993-18a7d63c7470', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_high_stakes_discursive_intervention_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b3d09e4b292e88adf27361c5f2358d019322c4d629a37153171d81dc6aba2711'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c9d5b756-92be-5fb3-867a-7d85f97455f1', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('07b8b829-378c-5959-a993-18a7d63c7470', 1), 'b3d09e4b292e88adf27361c5f2358d019322c4d629a37153171d81dc6aba2711',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ccf928de8d60e32cd8b1ee3fa6fdbd988affcb2305011aa5a419aff4813a9d03.mp3', 6269, '2026-09-13 11:19:35.337067', '3e90401b7a5c6ec4b71495949c35f7cdbd4e3ed3fbaee4e094f75d78c1393d82', 'validated', '{"audio_key":"ccf928de8d60e32cd8b1ee3fa6fdbd988affcb2305011aa5a419aff4813a9d03","entity_key":"ex_high_stakes_discursive_intervention_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3e90401b7a5c6ec4b71495949c35f7cdbd4e3ed3fbaee4e094f75d78c1393d82","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ccf928de8d60e32cd8b1ee3fa6fdbd988affcb2305011aa5a419aff4813a9d03.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_implicit_stance_subtext_05 -> audio/generated/de-DE/utterances/ce11bc46c265edb29f53f267dbf6c0069068eb22eed8caeee1f46ab86d025856.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('429b5306-86d7-5a35-a543-f34ae92b1920', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_implicit_stance_subtext_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '437029fccb092b4cb9254c4e30355b175a8d044cbcc7aa414be46d037cd1ef51'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a6aa98a5-42e1-5ee2-a83c-03a89495e368', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('429b5306-86d7-5a35-a543-f34ae92b1920', 1), '437029fccb092b4cb9254c4e30355b175a8d044cbcc7aa414be46d037cd1ef51',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ce11bc46c265edb29f53f267dbf6c0069068eb22eed8caeee1f46ab86d025856.mp3', 6269, '2026-09-13 11:19:36.240497', 'fce4247c48a73bcf38c6547c2e775011d0797f50d8c070f1a0bebe280b8490bc', 'validated', '{"audio_key":"ce11bc46c265edb29f53f267dbf6c0069068eb22eed8caeee1f46ab86d025856","entity_key":"u_implicit_stance_subtext_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fce4247c48a73bcf38c6547c2e775011d0797f50d8c070f1a0bebe280b8490bc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ce11bc46c265edb29f53f267dbf6c0069068eb22eed8caeee1f46ab86d025856.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_implicit_stance_subtext_03_listen -> audio/generated/de-DE/utterances/ce11bc46c265edb29f53f267dbf6c0069068eb22eed8caeee1f46ab86d025856.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('76468f87-1c8c-5dc6-9c44-ac8360f7c10f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_implicit_stance_subtext_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '437029fccb092b4cb9254c4e30355b175a8d044cbcc7aa414be46d037cd1ef51'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('abf4f888-67bc-5576-a0cd-cb6b17294f66', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('76468f87-1c8c-5dc6-9c44-ac8360f7c10f', 1), '437029fccb092b4cb9254c4e30355b175a8d044cbcc7aa414be46d037cd1ef51',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ce11bc46c265edb29f53f267dbf6c0069068eb22eed8caeee1f46ab86d025856.mp3', 6269, '2026-09-13 11:19:36.240497', 'fce4247c48a73bcf38c6547c2e775011d0797f50d8c070f1a0bebe280b8490bc', 'validated', '{"audio_key":"ce11bc46c265edb29f53f267dbf6c0069068eb22eed8caeee1f46ab86d025856","entity_key":"ex_implicit_stance_subtext_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fce4247c48a73bcf38c6547c2e775011d0797f50d8c070f1a0bebe280b8490bc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ce11bc46c265edb29f53f267dbf6c0069068eb22eed8caeee1f46ab86d025856.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_implicit_stance_subtext_06 -> audio/generated/de-DE/utterances/d281a0170e4b905687d3ff0b33811f1b23694fc66562ffd7961fdd125021ccc3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e0df9669-8cbd-5de8-b8ac-e2e3d25dff0d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_implicit_stance_subtext_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5668559f784aa35b7292cd448a288c58aec401e9582e6d1400d7949feb9a5279'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('47a957af-29f0-502d-9bdb-7545bf7a4850', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e0df9669-8cbd-5de8-b8ac-e2e3d25dff0d', 1), '5668559f784aa35b7292cd448a288c58aec401e9582e6d1400d7949feb9a5279',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d281a0170e4b905687d3ff0b33811f1b23694fc66562ffd7961fdd125021ccc3.mp3', 6112, '2026-09-13 11:19:36.960395', '5cf1b350d0747b4745ebabc7a93d88b3a2d3aa141ac163ce841c09554f9f6dcf', 'validated', '{"audio_key":"d281a0170e4b905687d3ff0b33811f1b23694fc66562ffd7961fdd125021ccc3","entity_key":"u_implicit_stance_subtext_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5cf1b350d0747b4745ebabc7a93d88b3a2d3aa141ac163ce841c09554f9f6dcf","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d281a0170e4b905687d3ff0b33811f1b23694fc66562ffd7961fdd125021ccc3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_polyphonic_source_synthesis_04 -> audio/generated/de-DE/utterances/d8a325492504c0be9a1686cad981ca45b1a0dd07d9cfffb2a21a3fb11b624f79.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('cda8cdd7-ae6e-571c-bccb-af1d864c5a24', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_polyphonic_source_synthesis_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8a3827b84ea0d0b38b972399fa901e26fe6308b8be22527712ca2f1cc22e9019'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5611acd6-dfd4-5142-bbb2-52b744962130', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('cda8cdd7-ae6e-571c-bccb-af1d864c5a24', 1), '8a3827b84ea0d0b38b972399fa901e26fe6308b8be22527712ca2f1cc22e9019',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d8a325492504c0be9a1686cad981ca45b1a0dd07d9cfffb2a21a3fb11b624f79.mp3', 4205, '2026-09-13 11:19:37.594105', '27b92b266ff20cb31a58d7905c7028fbb8edfc5fae057952fab36d7fc9d2c2fa', 'validated', '{"audio_key":"d8a325492504c0be9a1686cad981ca45b1a0dd07d9cfffb2a21a3fb11b624f79","entity_key":"u_polyphonic_source_synthesis_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"27b92b266ff20cb31a58d7905c7028fbb8edfc5fae057952fab36d7fc9d2c2fa","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d8a325492504c0be9a1686cad981ca45b1a0dd07d9cfffb2a21a3fb11b624f79.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_lexical_precision_collocation_02 -> audio/generated/de-DE/utterances/d8f49fb32a1e70073ef7fed41e5a70ef2705ec91abfe9188e1432602ee823f81.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('1fd287e1-d4b1-510d-99c3-70335d0b8ae5', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_lexical_precision_collocation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fceb7d926e1dc0a5bd2b8305c6c4460b1c3b35776cf3c3c2ea84dad8c532cc50'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6cd7887a-b574-5d9c-9125-8fd199b21eda', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('1fd287e1-d4b1-510d-99c3-70335d0b8ae5', 1), 'fceb7d926e1dc0a5bd2b8305c6c4460b1c3b35776cf3c3c2ea84dad8c532cc50',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d8f49fb32a1e70073ef7fed41e5a70ef2705ec91abfe9188e1432602ee823f81.mp3', 5381, '2026-09-13 11:19:38.444749', '217940b11a3644f0ed77fa4349f04781afc04cd7978be99f08242c7e972192b6', 'validated', '{"audio_key":"d8f49fb32a1e70073ef7fed41e5a70ef2705ec91abfe9188e1432602ee823f81","entity_key":"u_lexical_precision_collocation_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"217940b11a3644f0ed77fa4349f04781afc04cd7978be99f08242c7e972192b6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d8f49fb32a1e70073ef7fed41e5a70ef2705ec91abfe9188e1432602ee823f81.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_argument_premises_fallacies_01 -> audio/generated/de-DE/utterances/d99802c6853d1e7f137fe450eb4e6f0ca76f0ba4f7e82b005bb1434ce806be4a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('13f4968a-c467-5246-a085-099d5750f600', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_argument_premises_fallacies_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '94cad6eb89b9d0009e157fff76108a28d8dda4911c99bc88e9679e4e63c17765'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('70b88945-0193-5012-9a85-83fbc1f85812', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('13f4968a-c467-5246-a085-099d5750f600', 1), '94cad6eb89b9d0009e157fff76108a28d8dda4911c99bc88e9679e4e63c17765',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d99802c6853d1e7f137fe450eb4e6f0ca76f0ba4f7e82b005bb1434ce806be4a.mp3', 4858, '2026-09-13 11:19:39.065608', '65f95c6a1105f800c7549bab5892510e432764df1ddcd3c1e54642c205563da9', 'validated', '{"audio_key":"d99802c6853d1e7f137fe450eb4e6f0ca76f0ba4f7e82b005bb1434ce806be4a","entity_key":"u_argument_premises_fallacies_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"65f95c6a1105f800c7549bab5892510e432764df1ddcd3c1e54642c205563da9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d99802c6853d1e7f137fe450eb4e6f0ca76f0ba4f7e82b005bb1434ce806be4a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_argument_premises_fallacies_01_listen -> audio/generated/de-DE/utterances/d99802c6853d1e7f137fe450eb4e6f0ca76f0ba4f7e82b005bb1434ce806be4a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('3d8f8f75-fa57-5244-9adb-b76d733d8bf3', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_argument_premises_fallacies_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '94cad6eb89b9d0009e157fff76108a28d8dda4911c99bc88e9679e4e63c17765'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('03a3422f-7182-5311-9017-58e8f3e2c836', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('3d8f8f75-fa57-5244-9adb-b76d733d8bf3', 1), '94cad6eb89b9d0009e157fff76108a28d8dda4911c99bc88e9679e4e63c17765',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d99802c6853d1e7f137fe450eb4e6f0ca76f0ba4f7e82b005bb1434ce806be4a.mp3', 4858, '2026-09-13 11:19:39.065608', '65f95c6a1105f800c7549bab5892510e432764df1ddcd3c1e54642c205563da9', 'validated', '{"audio_key":"d99802c6853d1e7f137fe450eb4e6f0ca76f0ba4f7e82b005bb1434ce806be4a","entity_key":"ex_argument_premises_fallacies_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"65f95c6a1105f800c7549bab5892510e432764df1ddcd3c1e54642c205563da9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d99802c6853d1e7f137fe450eb4e6f0ca76f0ba4f7e82b005bb1434ce806be4a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_lexical_precision_collocation_04 -> audio/generated/de-DE/utterances/e304097580d0c2581b5b7726202c8353b100decd81893e70594dd7dc86546d95.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ecd4e13a-7c58-57af-82d6-987dab6494b7', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_lexical_precision_collocation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '78fb9c7a1a17e95c81978baf6f923279e5802e8761dee48647e4d3ec809f4b44'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1ec96e18-4481-5f6f-ad08-140691147dbb', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ecd4e13a-7c58-57af-82d6-987dab6494b7', 1), '78fb9c7a1a17e95c81978baf6f923279e5802e8761dee48647e4d3ec809f4b44',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e304097580d0c2581b5b7726202c8353b100decd81893e70594dd7dc86546d95.mp3', 5746, '2026-09-13 11:19:40.050920', 'be6ea7d012603054691cd0df67294a8e8aab62515188b58da798f5cfa5b5066c', 'validated', '{"audio_key":"e304097580d0c2581b5b7726202c8353b100decd81893e70594dd7dc86546d95","entity_key":"u_lexical_precision_collocation_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"be6ea7d012603054691cd0df67294a8e8aab62515188b58da798f5cfa5b5066c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e304097580d0c2581b5b7726202c8353b100decd81893e70594dd7dc86546d95.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_lexical_precision_collocation_01 -> audio/generated/de-DE/utterances/e81759d7a0064591c87e2e594597e42f802418a51e5995ffcbc9b960944c4cb8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9f007dec-436c-5df0-a599-01f4182fea8b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_lexical_precision_collocation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b067e243cc45fafd5372ca498c729943c05fac42544c4f7512f8a210adf81c42'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1edb1bb6-e09c-598a-b5c1-6db69e7367d1', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9f007dec-436c-5df0-a599-01f4182fea8b', 1), 'b067e243cc45fafd5372ca498c729943c05fac42544c4f7512f8a210adf81c42',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e81759d7a0064591c87e2e594597e42f802418a51e5995ffcbc9b960944c4cb8.mp3', 5433, '2026-09-13 11:19:40.589817', 'c454e85b73a07c8d4967329c27fd0f67004f080aa6a9e70daa531062f88ca28e', 'validated', '{"audio_key":"e81759d7a0064591c87e2e594597e42f802418a51e5995ffcbc9b960944c4cb8","entity_key":"u_lexical_precision_collocation_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c454e85b73a07c8d4967329c27fd0f67004f080aa6a9e70daa531062f88ca28e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e81759d7a0064591c87e2e594597e42f802418a51e5995ffcbc9b960944c4cb8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_lexical_precision_collocation_01_listen -> audio/generated/de-DE/utterances/e81759d7a0064591c87e2e594597e42f802418a51e5995ffcbc9b960944c4cb8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('f2960d90-9a38-5b12-83ee-e04e3b84b21d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_lexical_precision_collocation_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b067e243cc45fafd5372ca498c729943c05fac42544c4f7512f8a210adf81c42'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('859c451f-8a59-51fe-b965-be83a4efed91', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('f2960d90-9a38-5b12-83ee-e04e3b84b21d', 1), 'b067e243cc45fafd5372ca498c729943c05fac42544c4f7512f8a210adf81c42',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e81759d7a0064591c87e2e594597e42f802418a51e5995ffcbc9b960944c4cb8.mp3', 5433, '2026-09-13 11:19:40.589817', 'c454e85b73a07c8d4967329c27fd0f67004f080aa6a9e70daa531062f88ca28e', 'validated', '{"audio_key":"e81759d7a0064591c87e2e594597e42f802418a51e5995ffcbc9b960944c4cb8","entity_key":"ex_lexical_precision_collocation_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c454e85b73a07c8d4967329c27fd0f67004f080aa6a9e70daa531062f88ca28e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e81759d7a0064591c87e2e594597e42f802418a51e5995ffcbc9b960944c4cb8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_register_social_positioning_01 -> audio/generated/de-DE/utterances/e8b9c0a5ae5b0dac824cfd87db2adfc324c9945e4d57c0ae6aa1aa5f132d35ad.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b616c099-3cf7-54e4-9cf4-e4bbda62f7bf', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_register_social_positioning_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5e7e62d7c98f31b6a3bed657187c0066facdce86892c62fed2618708ee18f097'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ec4175a2-7d03-5f59-8d6c-6d840a9ac973', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b616c099-3cf7-54e4-9cf4-e4bbda62f7bf', 1), '5e7e62d7c98f31b6a3bed657187c0066facdce86892c62fed2618708ee18f097',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e8b9c0a5ae5b0dac824cfd87db2adfc324c9945e4d57c0ae6aa1aa5f132d35ad.mp3', 5799, '2026-09-13 11:19:41.571719', '819aa1120ed7a5fb73b0b773a619e34211441a2f5511099cc45fbb09e9cecadc', 'validated', '{"audio_key":"e8b9c0a5ae5b0dac824cfd87db2adfc324c9945e4d57c0ae6aa1aa5f132d35ad","entity_key":"u_register_social_positioning_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"819aa1120ed7a5fb73b0b773a619e34211441a2f5511099cc45fbb09e9cecadc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e8b9c0a5ae5b0dac824cfd87db2adfc324c9945e4d57c0ae6aa1aa5f132d35ad.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_register_social_positioning_01_listen -> audio/generated/de-DE/utterances/e8b9c0a5ae5b0dac824cfd87db2adfc324c9945e4d57c0ae6aa1aa5f132d35ad.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('9b01ac78-8f99-5013-90b7-43deff3c04a5', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_register_social_positioning_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5e7e62d7c98f31b6a3bed657187c0066facdce86892c62fed2618708ee18f097'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('53a24aef-05fc-5247-8ac6-5675b58f4565', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('9b01ac78-8f99-5013-90b7-43deff3c04a5', 1), '5e7e62d7c98f31b6a3bed657187c0066facdce86892c62fed2618708ee18f097',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e8b9c0a5ae5b0dac824cfd87db2adfc324c9945e4d57c0ae6aa1aa5f132d35ad.mp3', 5799, '2026-09-13 11:19:41.571719', '819aa1120ed7a5fb73b0b773a619e34211441a2f5511099cc45fbb09e9cecadc', 'validated', '{"audio_key":"e8b9c0a5ae5b0dac824cfd87db2adfc324c9945e4d57c0ae6aa1aa5f132d35ad","entity_key":"ex_register_social_positioning_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"819aa1120ed7a5fb73b0b773a619e34211441a2f5511099cc45fbb09e9cecadc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e8b9c0a5ae5b0dac824cfd87db2adfc324c9945e4d57c0ae6aa1aa5f132d35ad.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_lexical_precision_collocation_03 -> audio/generated/de-DE/utterances/ed39fdc4090cc1d6c18bce13b11c9536e6c6a2daf6dfa835489aac3b69a80331.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('845093e5-f5b5-53e6-bc0e-1b5d42ac3d01', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_lexical_precision_collocation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6f37b936007283cb977d9bbc3bba31687ac5eba0a4cdd0c01c66db7583f23100'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9662a966-89cd-537f-a507-11c2d88174c2', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('845093e5-f5b5-53e6-bc0e-1b5d42ac3d01', 1), '6f37b936007283cb977d9bbc3bba31687ac5eba0a4cdd0c01c66db7583f23100',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ed39fdc4090cc1d6c18bce13b11c9536e6c6a2daf6dfa835489aac3b69a80331.mp3', 4597, '2026-09-13 11:19:42.004656', 'f9bf7c93c108ba07ebc984f2416c33cbd87605613ccd68f706dcf7c42e5f4565', 'validated', '{"audio_key":"ed39fdc4090cc1d6c18bce13b11c9536e6c6a2daf6dfa835489aac3b69a80331","entity_key":"u_lexical_precision_collocation_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f9bf7c93c108ba07ebc984f2416c33cbd87605613ccd68f706dcf7c42e5f4565","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ed39fdc4090cc1d6c18bce13b11c9536e6c6a2daf6dfa835489aac3b69a80331.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_lexical_precision_collocation_02_listen -> audio/generated/de-DE/utterances/ed39fdc4090cc1d6c18bce13b11c9536e6c6a2daf6dfa835489aac3b69a80331.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('a73cab3f-e0a7-5c62-8de1-98d7675fd455', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_lexical_precision_collocation_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6f37b936007283cb977d9bbc3bba31687ac5eba0a4cdd0c01c66db7583f23100'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bf65f5a0-1170-52ba-b526-e3de78443015', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('a73cab3f-e0a7-5c62-8de1-98d7675fd455', 1), '6f37b936007283cb977d9bbc3bba31687ac5eba0a4cdd0c01c66db7583f23100',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ed39fdc4090cc1d6c18bce13b11c9536e6c6a2daf6dfa835489aac3b69a80331.mp3', 4597, '2026-09-13 11:19:42.004656', 'f9bf7c93c108ba07ebc984f2416c33cbd87605613ccd68f706dcf7c42e5f4565', 'validated', '{"audio_key":"ed39fdc4090cc1d6c18bce13b11c9536e6c6a2daf6dfa835489aac3b69a80331","entity_key":"ex_lexical_precision_collocation_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f9bf7c93c108ba07ebc984f2416c33cbd87605613ccd68f706dcf7c42e5f4565","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ed39fdc4090cc1d6c18bce13b11c9536e6c6a2daf6dfa835489aac3b69a80331.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_implicit_stance_subtext_03 -> audio/generated/de-DE/utterances/efbd421e12775041f05e74012fe044993577604806640baa7aa0c6073504e0fc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d0fb66f0-e28f-5f67-b4d2-d23d4319e8a2', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_implicit_stance_subtext_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '97460c02ced601d72ba74c871c8d48162ae68ebf048dac07971cf6aa4c06dc32'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2769737e-78f8-5e7a-9a2c-e268520a9563', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d0fb66f0-e28f-5f67-b4d2-d23d4319e8a2', 1), '97460c02ced601d72ba74c871c8d48162ae68ebf048dac07971cf6aa4c06dc32',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/efbd421e12775041f05e74012fe044993577604806640baa7aa0c6073504e0fc.mp3', 4414, '2026-09-13 11:19:42.967720', '7177aba4a24e41e4b7aa6561494f143d6cdb300b2808e8b0d31c74aa45b52cdf', 'validated', '{"audio_key":"efbd421e12775041f05e74012fe044993577604806640baa7aa0c6073504e0fc","entity_key":"u_implicit_stance_subtext_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7177aba4a24e41e4b7aa6561494f143d6cdb300b2808e8b0d31c74aa45b52cdf","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/efbd421e12775041f05e74012fe044993577604806640baa7aa0c6073504e0fc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_implicit_stance_subtext_02_listen -> audio/generated/de-DE/utterances/efbd421e12775041f05e74012fe044993577604806640baa7aa0c6073504e0fc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('3320c8d0-c983-5a4c-bf17-be9ef86f65dc', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_implicit_stance_subtext_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '97460c02ced601d72ba74c871c8d48162ae68ebf048dac07971cf6aa4c06dc32'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9537eb55-6c0d-54a0-8a4c-83f6af794b92', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('3320c8d0-c983-5a4c-bf17-be9ef86f65dc', 1), '97460c02ced601d72ba74c871c8d48162ae68ebf048dac07971cf6aa4c06dc32',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/efbd421e12775041f05e74012fe044993577604806640baa7aa0c6073504e0fc.mp3', 4414, '2026-09-13 11:19:42.967720', '7177aba4a24e41e4b7aa6561494f143d6cdb300b2808e8b0d31c74aa45b52cdf', 'validated', '{"audio_key":"efbd421e12775041f05e74012fe044993577604806640baa7aa0c6073504e0fc","entity_key":"ex_implicit_stance_subtext_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7177aba4a24e41e4b7aa6561494f143d6cdb300b2808e8b0d31c74aa45b52cdf","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/efbd421e12775041f05e74012fe044993577604806640baa7aa0c6073504e0fc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_polyphonic_source_synthesis_02 -> audio/generated/de-DE/utterances/f2df7be5471238f2e7d62f6a083312383e9e5e55055b2e3366d69101d5b9f0f4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ec9cc3cf-6bc9-5dff-bf85-40076da5db72', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_polyphonic_source_synthesis_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a0cdac557df8aed7c8b99b95d78d3baef1f139853ee1f8f6ea450374bc36a36e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('729d7727-6c95-5bff-97a9-985eae95342a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ec9cc3cf-6bc9-5dff-bf85-40076da5db72', 1), 'a0cdac557df8aed7c8b99b95d78d3baef1f139853ee1f8f6ea450374bc36a36e',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f2df7be5471238f2e7d62f6a083312383e9e5e55055b2e3366d69101d5b9f0f4.mp3', 5511, '2026-09-13 11:19:43.519150', 'baff7c59246a54e4be8f245afadc93f57204492b21eb10c21ebbf47e9fb4befb', 'validated', '{"audio_key":"f2df7be5471238f2e7d62f6a083312383e9e5e55055b2e3366d69101d5b9f0f4","entity_key":"u_polyphonic_source_synthesis_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"baff7c59246a54e4be8f245afadc93f57204492b21eb10c21ebbf47e9fb4befb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f2df7be5471238f2e7d62f6a083312383e9e5e55055b2e3366d69101d5b9f0f4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_interpret_reframe_position_capstone_02 -> audio/generated/de-DE/utterances/f543f53bb3a8eb7aa7ec7e1a11a48b5957ab131166df28c58aa3a1e88da1b886.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('890043f9-b08f-599a-a718-e9b8525fab4a', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_interpret_reframe_position_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3f5d4e99ff7b01845d325c2a9c42f7e3747cb028b37f4b663e12cf032e3217d8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ffb605eb-d138-5806-86b9-92847f5c5876', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('890043f9-b08f-599a-a718-e9b8525fab4a', 1), '3f5d4e99ff7b01845d325c2a9c42f7e3747cb028b37f4b663e12cf032e3217d8',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f543f53bb3a8eb7aa7ec7e1a11a48b5957ab131166df28c58aa3a1e88da1b886.mp3', 5250, '2026-09-13 11:19:44.441017', '10962ea350d16b15024bc418c104f96eb214197a71b85c4d2c47cfd52cb6c299', 'validated', '{"audio_key":"f543f53bb3a8eb7aa7ec7e1a11a48b5957ab131166df28c58aa3a1e88da1b886","entity_key":"u_interpret_reframe_position_capstone_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"10962ea350d16b15024bc418c104f96eb214197a71b85c4d2c47cfd52cb6c299","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f543f53bb3a8eb7aa7ec7e1a11a48b5957ab131166df28c58aa3a1e88da1b886.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

COMMIT;

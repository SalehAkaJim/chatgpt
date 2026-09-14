-- Generated audio link import for fr-FR A2
-- Source manifest: audio/manifests/fr/A2.json
-- Generated rows: 260
-- Storage mode: relative_path
-- storage_url is intentionally portable; prepend your server/CDN base URL at runtime.
-- Run AFTER the matching level content import.
SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci;
SET time_zone = '+00:00';
SET @audio_language_id = (SELECT id FROM languages WHERE code = 'fr' LIMIT 1);
SET @audio_variant_id = (SELECT id FROM language_variants WHERE code = 'fr-FR' LIMIT 1);
START TRANSACTION;

-- d_opinions_and_media_02:4 -> audio/generated/fr-FR/dialogues/00ec658b769034d123c39779f56f729bfacb7e4fc2d7005f4a2a5776a8a17a3d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b651c413-9d7c-5075-82e3-d62a1213923b', 1)
  AND voice_key = 'character:julien:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_opinions_and_media_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '27b589c1b7c7c1ec85c31788be77220939f350336630260908443b1e264a8726'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2df08f59-77de-5a2c-8e7d-fc4ae846d10d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b651c413-9d7c-5075-82e3-d62a1213923b', 1), '27b589c1b7c7c1ec85c31788be77220939f350336630260908443b1e264a8726',
  'character:julien:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/00ec658b769034d123c39779f56f729bfacb7e4fc2d7005f4a2a5776a8a17a3d.mp3', 1671, '2026-09-14 10:38:04.533498', '753dc786331c149f4ebb0c55d8caaacff10d68c2a7935b892b7a2c93a4f64592', 'validated', '{"audio_key":"00ec658b769034d123c39779f56f729bfacb7e4fc2d7005f4a2a5776a8a17a3d","entity_key":"d_opinions_and_media_02:4","voice_id":"xO2Q4ARMEd4BI2sGDH9c","voice_name":"Edouard - Confident and Polished","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"753dc786331c149f4ebb0c55d8caaacff10d68c2a7935b892b7a2c93a4f64592","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/00ec658b769034d123c39779f56f729bfacb7e4fc2d7005f4a2a5776a8a17a3d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_work_and_obligations_02:3 -> audio/generated/fr-FR/dialogues/023bd696767cbc4dfb9cecef9bd118ddda934e4482a597d0543a989cf85ee8ca.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e100ffbe-d1e3-55e1-98be-b16c3b9b87a6', 1)
  AND voice_key = 'character:léa:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_work_and_obligations_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2d72e42c9cba6ec3b58d0f3571265e81ef52ccff22461c053fbc4c32f5876ef5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('252cfcc2-7704-5047-8b42-dbd7898a6ea9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e100ffbe-d1e3-55e1-98be-b16c3b9b87a6', 1), '2d72e42c9cba6ec3b58d0f3571265e81ef52ccff22461c053fbc4c32f5876ef5',
  'character:léa:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/023bd696767cbc4dfb9cecef9bd118ddda934e4482a597d0543a989cf85ee8ca.mp3', 1253, '2026-09-14 10:38:04.625015', 'ef0e945484d81855474f423880136329e1ea6cef6bdfd8dfc2f45596b7973e25', 'validated', '{"audio_key":"023bd696767cbc4dfb9cecef9bd118ddda934e4482a597d0543a989cf85ee8ca","entity_key":"d_work_and_obligations_02:3","voice_id":"fBpCO0Kf0krKLYGOu65w","voice_name":"Émilie - Customer service advisor","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"ef0e945484d81855474f423880136329e1ea6cef6bdfd8dfc2f45596b7973e25","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/023bd696767cbc4dfb9cecef9bd118ddda934e4482a597d0543a989cf85ee8ca.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_hotel_and_stay_02:2 -> audio/generated/fr-FR/dialogues/02a052e190d075fdbe6ac5678e4eb8c230c4eb92f22d3953ed02f08c6d9a6fab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('26910e2a-f802-5d48-90a0-793432273802', 1)
  AND voice_key = 'character:nicolas:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_hotel_and_stay_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6b4e4b8469a47cf367e9cd16d2904cede84ab775e9f9b0d863bbc1dac5d4d1f8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9ade4b30-0206-5d26-8b38-e19f5bdc176b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('26910e2a-f802-5d48-90a0-793432273802', 1), '6b4e4b8469a47cf367e9cd16d2904cede84ab775e9f9b0d863bbc1dac5d4d1f8',
  'character:nicolas:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/02a052e190d075fdbe6ac5678e4eb8c230c4eb92f22d3953ed02f08c6d9a6fab.mp3', 1515, '2026-09-14 10:38:05.676443', '0427465153d97a16c7f3cdfd1580185af1cc3ad0a3a900f18ae172bbd36e988f', 'validated', '{"audio_key":"02a052e190d075fdbe6ac5678e4eb8c230c4eb92f22d3953ed02f08c6d9a6fab","entity_key":"d_hotel_and_stay_02:2","voice_id":"7Pm7442WzqlfkW9vjmO9","voice_name":"Maxime - Dynamic and Natural","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0427465153d97a16c7f3cdfd1580185af1cc3ad0a3a900f18ae172bbd36e988f","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/02a052e190d075fdbe6ac5678e4eb8c230c4eb92f22d3953ed02f08c6d9a6fab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_clothes_and_comparisons_02:3 -> audio/generated/fr-FR/dialogues/08d953ec6ec35c7b93ee1efe5fcf590eae88806496e3923285eb9247b213ab62.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1d6c9287-8f0e-53aa-9dfd-c50a931b492a', 1)
  AND voice_key = 'character:julien:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_clothes_and_comparisons_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5f805d7a77086bec047db4f2bb245e77bda141fc37b11260eaf516652c66020f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e68db2a8-e9a5-5353-b1a6-04c4de81b98f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1d6c9287-8f0e-53aa-9dfd-c50a931b492a', 1), '5f805d7a77086bec047db4f2bb245e77bda141fc37b11260eaf516652c66020f',
  'character:julien:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/08d953ec6ec35c7b93ee1efe5fcf590eae88806496e3923285eb9247b213ab62.mp3', 1697, '2026-09-14 10:38:05.730761', '3417a9077e2132d76c12ed61615814291efb0c00a08d9a696a64ea39eaef06f4', 'validated', '{"audio_key":"08d953ec6ec35c7b93ee1efe5fcf590eae88806496e3923285eb9247b213ab62","entity_key":"d_clothes_and_comparisons_02:3","voice_id":"xO2Q4ARMEd4BI2sGDH9c","voice_name":"Edouard - Confident and Polished","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"3417a9077e2132d76c12ed61615814291efb0c00a08d9a696a64ea39eaef06f4","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/08d953ec6ec35c7b93ee1efe5fcf590eae88806496e3923285eb9247b213ab62.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_a2_problem_solving_capstone_02:3 -> audio/generated/fr-FR/dialogues/0a7ca840f876b10559e06db0718bebebbface3bbc07a162086a411e557ea47f0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('72b5189e-4f7b-5aba-ade0-703c3abaf701', 1)
  AND voice_key = 'character:claire:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_a2_problem_solving_capstone_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b6c4532f58cea42eb6164b6d2d42b439145109413e80e5a888d48cb4544dd34a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('586cfb92-1571-5fbc-800e-a6a503447f75', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('72b5189e-4f7b-5aba-ade0-703c3abaf701', 1), 'b6c4532f58cea42eb6164b6d2d42b439145109413e80e5a888d48cb4544dd34a',
  'character:claire:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/0a7ca840f876b10559e06db0718bebebbface3bbc07a162086a411e557ea47f0.mp3', 1906, '2026-09-14 10:38:06.836035', 'f67b07e459b43d496ba2fbfd9c8c11567427cb1b0329295482b6570bd77dd6d2', 'validated', '{"audio_key":"0a7ca840f876b10559e06db0718bebebbface3bbc07a162086a411e557ea47f0","entity_key":"d_a2_problem_solving_capstone_02:3","voice_id":"yatuMX0k4Dh41R64sbGj","voice_name":"Cécile - Interactive Customer Support","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"f67b07e459b43d496ba2fbfd9c8c11567427cb1b0329295482b6570bd77dd6d2","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/0a7ca840f876b10559e06db0718bebebbface3bbc07a162086a411e557ea47f0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_yesterday_and_past_01:2 -> audio/generated/fr-FR/dialogues/1060beab269998ea95ea32b4a9dc59ee289c6b4ff5b5edcc3dddd76e7be15ac9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('92a8b47c-2ef6-5921-a3c0-427a56585a49', 1)
  AND voice_key = 'character:thomas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_yesterday_and_past_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7822d4529ac381eb05a7d06410367e3b676c6c12d2b2dbdf406a69477372e296'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bc34afee-58da-5800-af94-daf2aa4be23b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('92a8b47c-2ef6-5921-a3c0-427a56585a49', 1), '7822d4529ac381eb05a7d06410367e3b676c6c12d2b2dbdf406a69477372e296',
  'character:thomas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/1060beab269998ea95ea32b4a9dc59ee289c6b4ff5b5edcc3dddd76e7be15ac9.mp3', 2115, '2026-09-14 10:38:06.908896', '4970d147e81503b777c722c3b283bc44dc55e8cb8a0a02bcdd49f947dec5016d', 'validated', '{"audio_key":"1060beab269998ea95ea32b4a9dc59ee289c6b4ff5b5edcc3dddd76e7be15ac9","entity_key":"d_yesterday_and_past_01:2","voice_id":"1WQXvbtj0rUYuB5yhY3N","voice_name":"Skel - Calm and Professional","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4970d147e81503b777c722c3b283bc44dc55e8cb8a0a02bcdd49f947dec5016d","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/1060beab269998ea95ea32b4a9dc59ee289c6b4ff5b5edcc3dddd76e7be15ac9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_a2_problem_solving_capstone_01:2 -> audio/generated/fr-FR/dialogues/1202bdec21bb29ad9bc54108b08f0683af213f292067330bb2a9a46a159228e9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f5c91605-e5c9-58df-9692-e82a6aabf14f', 1)
  AND voice_key = 'character:thomas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_a2_problem_solving_capstone_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ec1a59d9242b4d8367a7d096e594817914196492b9a0c7db4777d3b2c03c2b83'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ea639f86-5532-5a16-a026-e1d8a6abf2d2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f5c91605-e5c9-58df-9692-e82a6aabf14f', 1), 'ec1a59d9242b4d8367a7d096e594817914196492b9a0c7db4777d3b2c03c2b83',
  'character:thomas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/1202bdec21bb29ad9bc54108b08f0683af213f292067330bb2a9a46a159228e9.mp3', 1332, '2026-09-14 10:38:07.914677', '809d57e7ac2d3f3c03b73faea3ff12080ca1582afe1f943e959d7a0edf08bf92', 'validated', '{"audio_key":"1202bdec21bb29ad9bc54108b08f0683af213f292067330bb2a9a46a159228e9","entity_key":"d_a2_problem_solving_capstone_01:2","voice_id":"1WQXvbtj0rUYuB5yhY3N","voice_name":"Skel - Calm and Professional","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"809d57e7ac2d3f3c03b73faea3ff12080ca1582afe1f943e959d7a0edf08bf92","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/1202bdec21bb29ad9bc54108b08f0683af213f292067330bb2a9a46a159228e9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_plans_and_invitations_02:3 -> audio/generated/fr-FR/dialogues/12399944781324d250d58f89b4c791cb3033d740317a0c259c235503deb41779.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('dc50a163-45ad-51a9-9945-29212f54ede8', 1)
  AND voice_key = 'character:claire:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_plans_and_invitations_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f4885efafe555b3adceb0d002e0290edaa32d203a8fbc84c1ac9df482f349ad6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5a301a61-6bf1-57d1-969f-09e1ac4b6d29', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('dc50a163-45ad-51a9-9945-29212f54ede8', 1), 'f4885efafe555b3adceb0d002e0290edaa32d203a8fbc84c1ac9df482f349ad6',
  'character:claire:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/12399944781324d250d58f89b4c791cb3033d740317a0c259c235503deb41779.mp3', 1697, '2026-09-14 10:38:07.963089', 'f89a64c356699db3cfbc19ff8b298072f218d32f5ab8c2d1d6136fc406cf95ed', 'validated', '{"audio_key":"12399944781324d250d58f89b4c791cb3033d740317a0c259c235503deb41779","entity_key":"d_plans_and_invitations_02:3","voice_id":"yatuMX0k4Dh41R64sbGj","voice_name":"Cécile - Interactive Customer Support","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"f89a64c356699db3cfbc19ff8b298072f218d32f5ab8c2d1d6136fc406cf95ed","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/12399944781324d250d58f89b4c791cb3033d740317a0c259c235503deb41779.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_health_and_pharmacy_02:1 -> audio/generated/fr-FR/dialogues/15f5b8f88720fd48e04ba7e96797f6b869398f1390d5e144a6f9baf2b2c19599.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e461060e-078f-5226-a94d-83726f4fbb1a', 1)
  AND voice_key = 'character:claire:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_health_and_pharmacy_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fa15ff28b152fc143259c8386098e940b36d27cb8be599a6f1b4228c87d18812'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7125635c-cbbb-507c-86c3-c323b11046a5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e461060e-078f-5226-a94d-83726f4fbb1a', 1), 'fa15ff28b152fc143259c8386098e940b36d27cb8be599a6f1b4228c87d18812',
  'character:claire:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/15f5b8f88720fd48e04ba7e96797f6b869398f1390d5e144a6f9baf2b2c19599.mp3', 1515, '2026-09-14 10:38:08.978734', '7d6801ceb2f3ae4f3db4a40d161acc358b0e5f63c99315e512ada34eed39f956', 'validated', '{"audio_key":"15f5b8f88720fd48e04ba7e96797f6b869398f1390d5e144a6f9baf2b2c19599","entity_key":"d_health_and_pharmacy_02:1","voice_id":"yatuMX0k4Dh41R64sbGj","voice_name":"Cécile - Interactive Customer Support","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"7d6801ceb2f3ae4f3db4a40d161acc358b0e5f63c99315e512ada34eed39f956","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/15f5b8f88720fd48e04ba7e96797f6b869398f1390d5e144a6f9baf2b2c19599.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_plans_and_invitations_01:4 -> audio/generated/fr-FR/dialogues/1ab18282562835b2350113f7726866cd6abd868d7513c3b5452d69e8b8053c18.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d6782781-387b-531d-b7a3-eeb3c1318613', 1)
  AND voice_key = 'character:nicolas:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_plans_and_invitations_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ada5ffef548a2d734bbf4e2f325e329627a11507af8a19e9e175b2c097cb749d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4a771886-e4c7-5851-b3c3-b434ed240364', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d6782781-387b-531d-b7a3-eeb3c1318613', 1), 'ada5ffef548a2d734bbf4e2f325e329627a11507af8a19e9e175b2c097cb749d',
  'character:nicolas:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/1ab18282562835b2350113f7726866cd6abd868d7513c3b5452d69e8b8053c18.mp3', 914, '2026-09-14 10:38:08.941425', '953afa3cc470b613e4ca506003507845362e13c1e92c69bfe1e43023ea18d55d', 'validated', '{"audio_key":"1ab18282562835b2350113f7726866cd6abd868d7513c3b5452d69e8b8053c18","entity_key":"d_plans_and_invitations_01:4","voice_id":"7Pm7442WzqlfkW9vjmO9","voice_name":"Maxime - Dynamic and Natural","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"953afa3cc470b613e4ca506003507845362e13c1e92c69bfe1e43023ea18d55d","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/1ab18282562835b2350113f7726866cd6abd868d7513c3b5452d69e8b8053c18.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_home_and_neighborhood_02:3 -> audio/generated/fr-FR/dialogues/205cc6fa56235df6b9cbacfaeb687fb7839ec0465973a05a8bc02e3c1c2d3d82.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4edf8567-b8ff-5eb6-a1f0-ba4149f76cad', 1)
  AND voice_key = 'character:claire:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_home_and_neighborhood_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '877658ab70943c4cb6879ebc7790e6ce94040c99d0e1a288fe8aae51a47b1f83'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('624107cf-e113-5770-85cd-098cd200a34e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4edf8567-b8ff-5eb6-a1f0-ba4149f76cad', 1), '877658ab70943c4cb6879ebc7790e6ce94040c99d0e1a288fe8aae51a47b1f83',
  'character:claire:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/205cc6fa56235df6b9cbacfaeb687fb7839ec0465973a05a8bc02e3c1c2d3d82.mp3', 2089, '2026-09-14 10:38:10.079424', 'd768e3c0eb2e0a312af81edd0b0a77197faa49d9307743b7c4ddc639b32a81f5', 'validated', '{"audio_key":"205cc6fa56235df6b9cbacfaeb687fb7839ec0465973a05a8bc02e3c1c2d3d82","entity_key":"d_home_and_neighborhood_02:3","voice_id":"yatuMX0k4Dh41R64sbGj","voice_name":"Cécile - Interactive Customer Support","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"d768e3c0eb2e0a312af81edd0b0a77197faa49d9307743b7c4ddc639b32a81f5","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/205cc6fa56235df6b9cbacfaeb687fb7839ec0465973a05a8bc02e3c1c2d3d82.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_home_and_neighborhood_02:4 -> audio/generated/fr-FR/dialogues/2981b435f7819698026fbdbc32167a4e15e82b9ae87337c17d59da97e2212c86.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('60b2c7dd-8363-5771-8ce7-2c916e5730a3', 1)
  AND voice_key = 'character:camille:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_home_and_neighborhood_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f0be2c9ecd8612d1ca429f00afccd67069b5f76b18241c7784122758c2050465'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b7821b76-3b06-537f-a691-6c44ccce4925', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('60b2c7dd-8363-5771-8ce7-2c916e5730a3', 1), 'f0be2c9ecd8612d1ca429f00afccd67069b5f76b18241c7784122758c2050465',
  'character:camille:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/2981b435f7819698026fbdbc32167a4e15e82b9ae87337c17d59da97e2212c86.mp3', 2272, '2026-09-14 10:38:10.143863', '0408d67d4757850e7b3efd61bd0b0a0a01c978cf41b79e9671dd7614d27ffd33', 'validated', '{"audio_key":"2981b435f7819698026fbdbc32167a4e15e82b9ae87337c17d59da97e2212c86","entity_key":"d_home_and_neighborhood_02:4","voice_id":"lvQdCgwZfBuOzxyV5pxu","voice_name":"Audia - Customer Support","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0408d67d4757850e7b3efd61bd0b0a0a01c978cf41b79e9671dd7614d27ffd33","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/2981b435f7819698026fbdbc32167a4e15e82b9ae87337c17d59da97e2212c86.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_home_and_neighborhood_01:1 -> audio/generated/fr-FR/dialogues/31ab3a6774f9116a6b7dd8935b8a9e18b558b1116834f6c3989073672e428785.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('05710311-efb6-5db5-9824-0387bf29461c', 1)
  AND voice_key = 'character:nicolas:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_home_and_neighborhood_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aadd662f620639ecdd651519f8f6504698910f7aba9b4ca06d06ad0a1ff72df2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0d696596-edcd-50aa-98b5-0c2b7bba3474', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('05710311-efb6-5db5-9824-0387bf29461c', 1), 'aadd662f620639ecdd651519f8f6504698910f7aba9b4ca06d06ad0a1ff72df2',
  'character:nicolas:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/31ab3a6774f9116a6b7dd8935b8a9e18b558b1116834f6c3989073672e428785.mp3', 1436, '2026-09-14 10:38:11.071652', '0572936b7a2869a65d855200b81fa9afcfd917e1c6f6ec00872c6defc95af249', 'validated', '{"audio_key":"31ab3a6774f9116a6b7dd8935b8a9e18b558b1116834f6c3989073672e428785","entity_key":"d_home_and_neighborhood_01:1","voice_id":"7Pm7442WzqlfkW9vjmO9","voice_name":"Maxime - Dynamic and Natural","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0572936b7a2869a65d855200b81fa9afcfd917e1c6f6ec00872c6defc95af249","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/31ab3a6774f9116a6b7dd8935b8a9e18b558b1116834f6c3989073672e428785.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_plans_and_invitations_01:1 -> audio/generated/fr-FR/dialogues/3339e09b03193811fde7d30f37b77547d8c95f5c78d17283f15e6363512ab4b3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fb62e9ce-aa20-5032-97d4-76ed5dfb7eec', 1)
  AND voice_key = 'character:inès:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_plans_and_invitations_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5a66b881978200e3923a3b5021df0d8a82657e39bffc9faac4b9d822b8869e50'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('055298cc-3e0a-508d-b9a1-021576dab0d9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fb62e9ce-aa20-5032-97d4-76ed5dfb7eec', 1), '5a66b881978200e3923a3b5021df0d8a82657e39bffc9faac4b9d822b8869e50',
  'character:inès:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/3339e09b03193811fde7d30f37b77547d8c95f5c78d17283f15e6363512ab4b3.mp3', 1697, '2026-09-14 10:38:11.254908', '97b20bf8731b6a6fd2de9e0de68efc67a9e2a3b01bc4eac432082eb5f0b2451b', 'validated', '{"audio_key":"3339e09b03193811fde7d30f37b77547d8c95f5c78d17283f15e6363512ab4b3","entity_key":"d_plans_and_invitations_01:1","voice_id":"mNu8EQcIlFZdOJs7yfhe","voice_name":"Julia - Warm French Narrator","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"97b20bf8731b6a6fd2de9e0de68efc67a9e2a3b01bc4eac432082eb5f0b2451b","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/3339e09b03193811fde7d30f37b77547d8c95f5c78d17283f15e6363512ab4b3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_hotel_and_stay_02:3 -> audio/generated/fr-FR/dialogues/3e585c41d56fb1c70faed1caeac66af0e8715c4d138baa1d13d8df069a96c2e2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4012456c-db00-5e45-b969-2fa2df1c4ddd', 1)
  AND voice_key = 'character:léa:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_hotel_and_stay_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a359bf6a31bee584797132e8fb755f91cd5b1bbb50063ef1471f129333ec4e61'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('56183677-d5ec-5a57-be3c-b4f039877a50', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4012456c-db00-5e45-b969-2fa2df1c4ddd', 1), 'a359bf6a31bee584797132e8fb755f91cd5b1bbb50063ef1471f129333ec4e61',
  'character:léa:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/3e585c41d56fb1c70faed1caeac66af0e8715c4d138baa1d13d8df069a96c2e2.mp3', 1933, '2026-09-14 10:38:12.271639', '8e9b9a276c42eb770b5fe3c80cb804765a1ae638053ec08176bb6d10d8bb72c0', 'validated', '{"audio_key":"3e585c41d56fb1c70faed1caeac66af0e8715c4d138baa1d13d8df069a96c2e2","entity_key":"d_hotel_and_stay_02:3","voice_id":"fBpCO0Kf0krKLYGOu65w","voice_name":"Émilie - Customer service advisor","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"8e9b9a276c42eb770b5fe3c80cb804765a1ae638053ec08176bb6d10d8bb72c0","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/3e585c41d56fb1c70faed1caeac66af0e8715c4d138baa1d13d8df069a96c2e2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_work_and_obligations_01:1 -> audio/generated/fr-FR/dialogues/3f92a006ec2fff52b34272747a34397ad99bc30297a1c3781f604b89066f60c1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4db5db8b-8908-5948-88d3-b4912c41ada1', 1)
  AND voice_key = 'character:thomas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_work_and_obligations_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1200078b403048abc64aaac15e9d247c92e3594e7ef10fcf22593f645ffe7621'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e514ad89-c8e0-5cf6-becf-232d9601c770', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4db5db8b-8908-5948-88d3-b4912c41ada1', 1), '1200078b403048abc64aaac15e9d247c92e3594e7ef10fcf22593f645ffe7621',
  'character:thomas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/3f92a006ec2fff52b34272747a34397ad99bc30297a1c3781f604b89066f60c1.mp3', 1985, '2026-09-14 10:38:12.367354', 'dba58e11787e92d5957eaaafbb29cb5677ae363781df1bed5dcf8b7f9c44cc7b', 'validated', '{"audio_key":"3f92a006ec2fff52b34272747a34397ad99bc30297a1c3781f604b89066f60c1","entity_key":"d_work_and_obligations_01:1","voice_id":"1WQXvbtj0rUYuB5yhY3N","voice_name":"Skel - Calm and Professional","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dba58e11787e92d5957eaaafbb29cb5677ae363781df1bed5dcf8b7f9c44cc7b","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/3f92a006ec2fff52b34272747a34397ad99bc30297a1c3781f604b89066f60c1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_hotel_and_stay_02:1 -> audio/generated/fr-FR/dialogues/47a0d37bfdb1937ae59d35d8fc8eeb8cf7aea1a8d21ea8da6b072f5704d7991f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('23447878-f297-58f2-87bf-21d1d60bb274', 1)
  AND voice_key = 'character:léa:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_hotel_and_stay_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ae26a653644d906f46d3db71c2eb234742f297ddcc0b1e6c2f55f997bc61beca'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3867e73e-6dcc-5ddd-a929-c6b384ca63b2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('23447878-f297-58f2-87bf-21d1d60bb274', 1), 'ae26a653644d906f46d3db71c2eb234742f297ddcc0b1e6c2f55f997bc61beca',
  'character:léa:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/47a0d37bfdb1937ae59d35d8fc8eeb8cf7aea1a8d21ea8da6b072f5704d7991f.mp3', 1906, '2026-09-14 10:38:13.374537', '4a65980e4db36c6a3b871a37e48213cf078854e9890f28714715bb33bfa8d1b9', 'validated', '{"audio_key":"47a0d37bfdb1937ae59d35d8fc8eeb8cf7aea1a8d21ea8da6b072f5704d7991f","entity_key":"d_hotel_and_stay_02:1","voice_id":"fBpCO0Kf0krKLYGOu65w","voice_name":"Émilie - Customer service advisor","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"4a65980e4db36c6a3b871a37e48213cf078854e9890f28714715bb33bfa8d1b9","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/47a0d37bfdb1937ae59d35d8fc8eeb8cf7aea1a8d21ea8da6b072f5704d7991f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_work_and_obligations_01:2 -> audio/generated/fr-FR/dialogues/4dd5075b2354bf20d132de20016fc47ad808a91ea0f928bb000b9a78880a5533.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3240c6eb-d3f1-5892-8481-935bc2085b71', 1)
  AND voice_key = 'character:hugo:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_work_and_obligations_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e92ab9ed3ddcea54071d3da55474f7b499609e50578b397412df81fa9e46378a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d8d8a8f2-08e3-5b96-be1c-5ef7057858b5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3240c6eb-d3f1-5892-8481-935bc2085b71', 1), 'e92ab9ed3ddcea54071d3da55474f7b499609e50578b397412df81fa9e46378a',
  'character:hugo:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/4dd5075b2354bf20d132de20016fc47ad808a91ea0f928bb000b9a78880a5533.mp3', 2089, '2026-09-14 10:38:13.672166', '81ea31c9a7a198c5be11d28d142475265b3a1629f9011d9b659836f08352c10b', 'validated', '{"audio_key":"4dd5075b2354bf20d132de20016fc47ad808a91ea0f928bb000b9a78880a5533","entity_key":"d_work_and_obligations_01:2","voice_id":"FRY6vOtGqwamgAf39SwP","voice_name":"Yanis","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"81ea31c9a7a198c5be11d28d142475265b3a1629f9011d9b659836f08352c10b","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/4dd5075b2354bf20d132de20016fc47ad808a91ea0f928bb000b9a78880a5533.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_health_and_pharmacy_01:4 -> audio/generated/fr-FR/dialogues/50feb99bb59dfe7570a33f2de0a55473b70dfc8b32775f54616bc114d517d8c9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fc721a6d-9a2f-5a32-a1c4-0069b068dc10', 1)
  AND voice_key = 'character:julien:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_health_and_pharmacy_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b175742b3bd87ff3d1e0e95f7c94b0ac4c58ef61b2753a5f17c0695723ebbb79'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('81a16c83-f6bd-5691-b86a-47859c3a7c63', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fc721a6d-9a2f-5a32-a1c4-0069b068dc10', 1), 'b175742b3bd87ff3d1e0e95f7c94b0ac4c58ef61b2753a5f17c0695723ebbb79',
  'character:julien:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/50feb99bb59dfe7570a33f2de0a55473b70dfc8b32775f54616bc114d517d8c9.mp3', 2220, '2026-09-14 10:38:14.617255', 'e829832679f5ad046a87248f052eb61002c6aa1ab9a54f9f24a21d60bf6e7401', 'validated', '{"audio_key":"50feb99bb59dfe7570a33f2de0a55473b70dfc8b32775f54616bc114d517d8c9","entity_key":"d_health_and_pharmacy_01:4","voice_id":"xO2Q4ARMEd4BI2sGDH9c","voice_name":"Edouard - Confident and Polished","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"e829832679f5ad046a87248f052eb61002c6aa1ab9a54f9f24a21d60bf6e7401","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/50feb99bb59dfe7570a33f2de0a55473b70dfc8b32775f54616bc114d517d8c9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_food_and_quantities_01:3 -> audio/generated/fr-FR/dialogues/54d18bfc617f984012fc6a773042e5f86015237f34f4f2396a0929f9f4fd2fe6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6a1e69b8-c728-5f81-a939-02bb5c1a95bb', 1)
  AND voice_key = 'character:thomas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_food_and_quantities_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e3e9cc9569842e56cd903a45a406c89a888f40864eb22148b66e04644dd5f7d1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9922c53f-413b-5b83-a0fb-0865a9999486', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6a1e69b8-c728-5f81-a939-02bb5c1a95bb', 1), 'e3e9cc9569842e56cd903a45a406c89a888f40864eb22148b66e04644dd5f7d1',
  'character:thomas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/54d18bfc617f984012fc6a773042e5f86015237f34f4f2396a0929f9f4fd2fe6.mp3', 1018, '2026-09-14 10:38:14.710191', 'bfd56ff0a7d1932cb77b5a2299daa22523d969459999a9e3d5f0403cba2ec51d', 'validated', '{"audio_key":"54d18bfc617f984012fc6a773042e5f86015237f34f4f2396a0929f9f4fd2fe6","entity_key":"d_food_and_quantities_01:3","voice_id":"1WQXvbtj0rUYuB5yhY3N","voice_name":"Skel - Calm and Professional","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bfd56ff0a7d1932cb77b5a2299daa22523d969459999a9e3d5f0403cba2ec51d","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/54d18bfc617f984012fc6a773042e5f86015237f34f4f2396a0929f9f4fd2fe6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_health_and_pharmacy_02:4 -> audio/generated/fr-FR/dialogues/5a775e94a650dc6f7e230a3ce7008f099b4c97c946179806ee5aec819156ff53.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('aaceb419-9ec8-5642-91dd-e9035c107d25', 1)
  AND voice_key = 'character:thomas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_health_and_pharmacy_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '140f6ee1ec34aa790ba3838a1e4a4368d2a3762b9aa39585c4b3c1318e495a80'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d014a713-80f9-5b1f-b6e8-9a62dd832291', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('aaceb419-9ec8-5642-91dd-e9035c107d25', 1), '140f6ee1ec34aa790ba3838a1e4a4368d2a3762b9aa39585c4b3c1318e495a80',
  'character:thomas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/5a775e94a650dc6f7e230a3ce7008f099b4c97c946179806ee5aec819156ff53.mp3', 1567, '2026-09-14 10:38:15.631148', 'a2016e2c4b09a0a1d1e0edc4ad3467b361ebf3d297b25ccc250dd73b8d6cd21a', 'validated', '{"audio_key":"5a775e94a650dc6f7e230a3ce7008f099b4c97c946179806ee5aec819156ff53","entity_key":"d_health_and_pharmacy_02:4","voice_id":"1WQXvbtj0rUYuB5yhY3N","voice_name":"Skel - Calm and Professional","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a2016e2c4b09a0a1d1e0edc4ad3467b361ebf3d297b25ccc250dd73b8d6cd21a","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/5a775e94a650dc6f7e230a3ce7008f099b4c97c946179806ee5aec819156ff53.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_work_and_obligations_01:3 -> audio/generated/fr-FR/dialogues/5ac4aa8d59da468373697914900247afabc2c813d280468d0477f7f26dffaf87.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('02c0a73b-1856-51a9-9153-997e011572aa', 1)
  AND voice_key = 'character:thomas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_work_and_obligations_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a92b7863e7c1641e6c0baf431972a679261cee3b55c2cf449c4264f036e73439'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d5f65dd4-727e-5b47-a7ba-2e0d33aae9fc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('02c0a73b-1856-51a9-9153-997e011572aa', 1), 'a92b7863e7c1641e6c0baf431972a679261cee3b55c2cf449c4264f036e73439',
  'character:thomas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/5ac4aa8d59da468373697914900247afabc2c813d280468d0477f7f26dffaf87.mp3', 2272, '2026-09-14 10:38:15.768080', '6e44986675ae30ce2d88adcd740df00543d293f095cc2fa478c21851556fcd30', 'validated', '{"audio_key":"5ac4aa8d59da468373697914900247afabc2c813d280468d0477f7f26dffaf87","entity_key":"d_work_and_obligations_01:3","voice_id":"1WQXvbtj0rUYuB5yhY3N","voice_name":"Skel - Calm and Professional","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6e44986675ae30ce2d88adcd740df00543d293f095cc2fa478c21851556fcd30","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/5ac4aa8d59da468373697914900247afabc2c813d280468d0477f7f26dffaf87.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_plans_and_invitations_02:1 -> audio/generated/fr-FR/dialogues/5c95d71cb07a634969b99f1dc685b94f0651db3c92f0bceaa2810ca2ac0b161d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4ae39d52-9a19-52a8-b5fb-e50259e6d510', 1)
  AND voice_key = 'character:claire:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_plans_and_invitations_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e75e2aa57edba9ac106fc827d07d08ae035065eab82dcdaf87014c49384d9518'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('30e28840-b08b-5dca-af7b-695163456864', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4ae39d52-9a19-52a8-b5fb-e50259e6d510', 1), 'e75e2aa57edba9ac106fc827d07d08ae035065eab82dcdaf87014c49384d9518',
  'character:claire:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/5c95d71cb07a634969b99f1dc685b94f0651db3c92f0bceaa2810ca2ac0b161d.mp3', 1697, '2026-09-14 10:38:16.651736', '82d7f25b162a3f23efb01e5951a865228367199eeef412cef9e4564767081de4', 'validated', '{"audio_key":"5c95d71cb07a634969b99f1dc685b94f0651db3c92f0bceaa2810ca2ac0b161d","entity_key":"d_plans_and_invitations_02:1","voice_id":"yatuMX0k4Dh41R64sbGj","voice_name":"Cécile - Interactive Customer Support","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"82d7f25b162a3f23efb01e5951a865228367199eeef412cef9e4564767081de4","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/5c95d71cb07a634969b99f1dc685b94f0651db3c92f0bceaa2810ca2ac0b161d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_yesterday_and_past_02:3 -> audio/generated/fr-FR/dialogues/60527a687bcbac5bc7ecc60246651aa6ff4792cb73e85d7af82ee389a6cc561c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4e60d404-3172-5f4b-9e3f-5529e95e57a9', 1)
  AND voice_key = 'character:léa:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_yesterday_and_past_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bab000c4500c5973c0020d147c3611715207c493a53c1e91f15028bb8140935d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('386588ec-9642-521b-b885-56dc6f3e9e38', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4e60d404-3172-5f4b-9e3f-5529e95e57a9', 1), 'bab000c4500c5973c0020d147c3611715207c493a53c1e91f15028bb8140935d',
  'character:léa:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/60527a687bcbac5bc7ecc60246651aa6ff4792cb73e85d7af82ee389a6cc561c.mp3', 1071, '2026-09-14 10:38:16.706137', '638549b7258bd11083be279d2fe264a31fb8ebdc72a9f947dd683198eaab94a4', 'validated', '{"audio_key":"60527a687bcbac5bc7ecc60246651aa6ff4792cb73e85d7af82ee389a6cc561c","entity_key":"d_yesterday_and_past_02:3","voice_id":"fBpCO0Kf0krKLYGOu65w","voice_name":"Émilie - Customer service advisor","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"638549b7258bd11083be279d2fe264a31fb8ebdc72a9f947dd683198eaab94a4","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/60527a687bcbac5bc7ecc60246651aa6ff4792cb73e85d7af82ee389a6cc561c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_a2_problem_solving_capstone_01:4 -> audio/generated/fr-FR/dialogues/679ecfab10d141a68e69cc8e42bd3d4897d65ab9d6f4c44e876cab5a21d470ed.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1f085690-e459-5614-8896-ac78d9cd8b7d', 1)
  AND voice_key = 'character:thomas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_a2_problem_solving_capstone_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e7af073aba697cfeabeadad89d050c3edcd8c3008d322f6140221883e1580d59'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7d8ba81f-9fee-597c-ae15-ecb2d64c48b3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1f085690-e459-5614-8896-ac78d9cd8b7d', 1), 'e7af073aba697cfeabeadad89d050c3edcd8c3008d322f6140221883e1580d59',
  'character:thomas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/679ecfab10d141a68e69cc8e42bd3d4897d65ab9d6f4c44e876cab5a21d470ed.mp3', 2324, '2026-09-14 10:38:17.706310', '9a097bef389768cf9e4796c8329ea6dfce4d95bfcf659fca41b7588b52fb329a', 'validated', '{"audio_key":"679ecfab10d141a68e69cc8e42bd3d4897d65ab9d6f4c44e876cab5a21d470ed","entity_key":"d_a2_problem_solving_capstone_01:4","voice_id":"1WQXvbtj0rUYuB5yhY3N","voice_name":"Skel - Calm and Professional","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9a097bef389768cf9e4796c8329ea6dfce4d95bfcf659fca41b7588b52fb329a","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/679ecfab10d141a68e69cc8e42bd3d4897d65ab9d6f4c44e876cab5a21d470ed.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_yesterday_and_past_01:4 -> audio/generated/fr-FR/dialogues/69abf78b1c8cd63354da82774d5050f7bed9db578247e66128c9bdc2a4600a33.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fe8d4e61-f6ea-57ea-be7b-c56437a30958', 1)
  AND voice_key = 'character:thomas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_yesterday_and_past_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f96a3c5840c608d3267daf05b94dc00534c6578c11170d2475a68661338ee18c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e40908dc-d39e-5b1b-bf5a-d7d3d993b30e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fe8d4e61-f6ea-57ea-be7b-c56437a30958', 1), 'f96a3c5840c608d3267daf05b94dc00534c6578c11170d2475a68661338ee18c',
  'character:thomas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/69abf78b1c8cd63354da82774d5050f7bed9db578247e66128c9bdc2a4600a33.mp3', 1488, '2026-09-14 10:38:17.712110', '15a7efff112e89659f107fb569356355239519ea39abff3eda70f3d43a352653', 'validated', '{"audio_key":"69abf78b1c8cd63354da82774d5050f7bed9db578247e66128c9bdc2a4600a33","entity_key":"d_yesterday_and_past_01:4","voice_id":"1WQXvbtj0rUYuB5yhY3N","voice_name":"Skel - Calm and Professional","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"15a7efff112e89659f107fb569356355239519ea39abff3eda70f3d43a352653","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/69abf78b1c8cd63354da82774d5050f7bed9db578247e66128c9bdc2a4600a33.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_work_and_obligations_02:2 -> audio/generated/fr-FR/dialogues/6cc73a70544eb661000cdafedde0f250019bd1abf362ef040af0641026f1a78f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a632f0d4-1191-501e-9d4a-90d5a06c918d', 1)
  AND voice_key = 'character:inès:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_work_and_obligations_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7ef51569d0387145a2191d261be4e1a94e193948b65889ef0e93d7164b14fe32'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2cd90202-1825-551b-ac5b-0e1bb32a53f5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a632f0d4-1191-501e-9d4a-90d5a06c918d', 1), '7ef51569d0387145a2191d261be4e1a94e193948b65889ef0e93d7164b14fe32',
  'character:inès:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/6cc73a70544eb661000cdafedde0f250019bd1abf362ef040af0641026f1a78f.mp3', 2951, '2026-09-14 10:38:18.872014', '522529458277279c48191b9b549c94794619561f6d736f663150ec6992deaffa', 'validated', '{"audio_key":"6cc73a70544eb661000cdafedde0f250019bd1abf362ef040af0641026f1a78f","entity_key":"d_work_and_obligations_02:2","voice_id":"mNu8EQcIlFZdOJs7yfhe","voice_name":"Julia - Warm French Narrator","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"522529458277279c48191b9b549c94794619561f6d736f663150ec6992deaffa","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/6cc73a70544eb661000cdafedde0f250019bd1abf362ef040af0641026f1a78f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_home_and_neighborhood_01:4 -> audio/generated/fr-FR/dialogues/765120ec9ded41e4368ebb942a0eb42a1e23d71163a922273694176739f27ccd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ce66acc4-bdd2-5ecb-b3af-695308f05969', 1)
  AND voice_key = 'character:julien:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_home_and_neighborhood_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '47ef63e0e1173d2691b7dd0bd26637db365d38e88b90bb57836937f890ca9c5d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('73e4b464-6226-5054-bf3e-8851d09b3a0f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ce66acc4-bdd2-5ecb-b3af-695308f05969', 1), '47ef63e0e1173d2691b7dd0bd26637db365d38e88b90bb57836937f890ca9c5d',
  'character:julien:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/765120ec9ded41e4368ebb942a0eb42a1e23d71163a922273694176739f27ccd.mp3', 1332, '2026-09-14 10:38:18.724980', 'f66d5cc7499bbe72c699c99b9ea547dfd4b6aaf0ac2c68cd9f1d59994b13bd36', 'validated', '{"audio_key":"765120ec9ded41e4368ebb942a0eb42a1e23d71163a922273694176739f27ccd","entity_key":"d_home_and_neighborhood_01:4","voice_id":"xO2Q4ARMEd4BI2sGDH9c","voice_name":"Edouard - Confident and Polished","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"f66d5cc7499bbe72c699c99b9ea547dfd4b6aaf0ac2c68cd9f1d59994b13bd36","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/765120ec9ded41e4368ebb942a0eb42a1e23d71163a922273694176739f27ccd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_health_and_pharmacy_01:3 -> audio/generated/fr-FR/dialogues/77ec7d94c1c08dc44a2738a32f7611f2d63c69409e7207ebc9727215dfd75ca8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b5a21256-e30b-5eb8-bdaf-5f06baeda3c9', 1)
  AND voice_key = 'character:inès:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_health_and_pharmacy_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b3f92d4cf8f1fa8ddda7dfbc61cb383d71afe18ac9a97b1d9a2f472bac2abf06'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1395c2f4-4dcf-556c-bc95-78e5b9288a41', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b5a21256-e30b-5eb8-bdaf-5f06baeda3c9', 1), 'b3f92d4cf8f1fa8ddda7dfbc61cb383d71afe18ac9a97b1d9a2f472bac2abf06',
  'character:inès:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/77ec7d94c1c08dc44a2738a32f7611f2d63c69409e7207ebc9727215dfd75ca8.mp3', 1619, '2026-09-14 10:38:20.049130', '135608d75a59ab0f6217d29c5b9adcbaca1169a1a546829dd3b27b48f3e5cefa', 'validated', '{"audio_key":"77ec7d94c1c08dc44a2738a32f7611f2d63c69409e7207ebc9727215dfd75ca8","entity_key":"d_health_and_pharmacy_01:3","voice_id":"mNu8EQcIlFZdOJs7yfhe","voice_name":"Julia - Warm French Narrator","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"135608d75a59ab0f6217d29c5b9adcbaca1169a1a546829dd3b27b48f3e5cefa","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/77ec7d94c1c08dc44a2738a32f7611f2d63c69409e7207ebc9727215dfd75ca8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_health_and_pharmacy_02:2 -> audio/generated/fr-FR/dialogues/791bb43778bbaf46f3de3ed88d104a9598df64b8e635994f324e366f5a7e46c8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a19b5199-e165-516d-b65f-8104f7cb6c39', 1)
  AND voice_key = 'character:thomas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_health_and_pharmacy_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '958b2b04b5f8b6d4b995f1d359ae0410bdc28b8d844204e799ab924b62fa4a2e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4569b664-ec26-5d12-a709-cb5004305274', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a19b5199-e165-516d-b65f-8104f7cb6c39', 1), '958b2b04b5f8b6d4b995f1d359ae0410bdc28b8d844204e799ab924b62fa4a2e',
  'character:thomas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/791bb43778bbaf46f3de3ed88d104a9598df64b8e635994f324e366f5a7e46c8.mp3', 1906, '2026-09-14 10:38:19.966327', 'a378435b81c64c6538e9e36ca59dbe770ab57180604fdc86c854b0d2628e86ff', 'validated', '{"audio_key":"791bb43778bbaf46f3de3ed88d104a9598df64b8e635994f324e366f5a7e46c8","entity_key":"d_health_and_pharmacy_02:2","voice_id":"1WQXvbtj0rUYuB5yhY3N","voice_name":"Skel - Calm and Professional","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a378435b81c64c6538e9e36ca59dbe770ab57180604fdc86c854b0d2628e86ff","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/791bb43778bbaf46f3de3ed88d104a9598df64b8e635994f324e366f5a7e46c8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_food_and_quantities_01:4 -> audio/generated/fr-FR/dialogues/7b5571b46f3793c9181310acc398f8dec60ce70930b13d91f4e2bd4c4a6b0e5e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c98ce815-c6ba-5fb3-9154-0d72a7486ca7', 1)
  AND voice_key = 'character:léa:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_food_and_quantities_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8b7989cd807e9b317240bcfb5f0b86c5d60941f9677f6096bb58af9291576b40'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7f91a7cc-aa55-5056-bac9-0ce853491986', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c98ce815-c6ba-5fb3-9154-0d72a7486ca7', 1), '8b7989cd807e9b317240bcfb5f0b86c5d60941f9677f6096bb58af9291576b40',
  'character:léa:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/7b5571b46f3793c9181310acc398f8dec60ce70930b13d91f4e2bd4c4a6b0e5e.mp3', 1802, '2026-09-14 10:38:21.012437', 'e03f48fc99e9e24e5d58ec4a3e6cfbb7697f615068a57c416127863631d6f9d4', 'validated', '{"audio_key":"7b5571b46f3793c9181310acc398f8dec60ce70930b13d91f4e2bd4c4a6b0e5e","entity_key":"d_food_and_quantities_01:4","voice_id":"fBpCO0Kf0krKLYGOu65w","voice_name":"Émilie - Customer service advisor","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"e03f48fc99e9e24e5d58ec4a3e6cfbb7697f615068a57c416127863631d6f9d4","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/7b5571b46f3793c9181310acc398f8dec60ce70930b13d91f4e2bd4c4a6b0e5e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_opinions_and_media_02:1 -> audio/generated/fr-FR/dialogues/7ca11eee1bd6c3e62596e677f6823d71b757b03a3aafa8d6ef86d1856277a870.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ef559630-9ff5-5d37-bcf6-05bb8c4c89ce', 1)
  AND voice_key = 'character:léa:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_opinions_and_media_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '21e4b84f93b353cec46d9f02b9d5456652975be8c12a64101c0e394d4d8ec308'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d29028a3-b6f6-5c05-8611-828710abaf67', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ef559630-9ff5-5d37-bcf6-05bb8c4c89ce', 1), '21e4b84f93b353cec46d9f02b9d5456652975be8c12a64101c0e394d4d8ec308',
  'character:léa:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/7ca11eee1bd6c3e62596e677f6823d71b757b03a3aafa8d6ef86d1856277a870.mp3', 1436, '2026-09-14 10:38:21.037094', 'c50eb68b3026c97677c2a3de618d26225c97df9403c710fca68d88991adb9695', 'validated', '{"audio_key":"7ca11eee1bd6c3e62596e677f6823d71b757b03a3aafa8d6ef86d1856277a870","entity_key":"d_opinions_and_media_02:1","voice_id":"fBpCO0Kf0krKLYGOu65w","voice_name":"Émilie - Customer service advisor","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"c50eb68b3026c97677c2a3de618d26225c97df9403c710fca68d88991adb9695","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/7ca11eee1bd6c3e62596e677f6823d71b757b03a3aafa8d6ef86d1856277a870.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_clothes_and_comparisons_01:3 -> audio/generated/fr-FR/dialogues/7cf0ec5c2127773fa6e1cbafe6b955696c173357e1a42e00edcb52dc5f45386c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d8fd001f-0169-511d-9be4-9c9a940c2c4a', 1)
  AND voice_key = 'character:nicolas:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_clothes_and_comparisons_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '86d315fdc4964eeb8c91188f8d95478b2709b0080eade74b08b4d40f86abda14'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b7a0e84c-394d-5ba2-b436-16713c66373f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d8fd001f-0169-511d-9be4-9c9a940c2c4a', 1), '86d315fdc4964eeb8c91188f8d95478b2709b0080eade74b08b4d40f86abda14',
  'character:nicolas:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/7cf0ec5c2127773fa6e1cbafe6b955696c173357e1a42e00edcb52dc5f45386c.mp3', 1436, '2026-09-14 10:38:22.001234', '6fc15bf1e1a435c32ab28ba00a85cc58ad29cda15efae0fa494e457b4458668f', 'validated', '{"audio_key":"7cf0ec5c2127773fa6e1cbafe6b955696c173357e1a42e00edcb52dc5f45386c","entity_key":"d_clothes_and_comparisons_01:3","voice_id":"7Pm7442WzqlfkW9vjmO9","voice_name":"Maxime - Dynamic and Natural","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6fc15bf1e1a435c32ab28ba00a85cc58ad29cda15efae0fa494e457b4458668f","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/7cf0ec5c2127773fa6e1cbafe6b955696c173357e1a42e00edcb52dc5f45386c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_home_and_neighborhood_02:1 -> audio/generated/fr-FR/dialogues/7fdea374e1920354b9b64513c64cfb041ff029a3ff8f2802a8f378e06759438e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('197d6f0d-150b-596a-9358-b5aa96cd89e4', 1)
  AND voice_key = 'character:claire:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_home_and_neighborhood_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e8a7ce9eccc6611e41202375fcf5a5242612032ad4fca77c1fa0ac8f83dbd73e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('25186c60-ea5b-50dd-b8b0-53a7939fb94b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('197d6f0d-150b-596a-9358-b5aa96cd89e4', 1), 'e8a7ce9eccc6611e41202375fcf5a5242612032ad4fca77c1fa0ac8f83dbd73e',
  'character:claire:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/7fdea374e1920354b9b64513c64cfb041ff029a3ff8f2802a8f378e06759438e.mp3', 1697, '2026-09-14 10:38:22.084780', '30034235cc2ab99cc5c81de33a7e95935cd60138820dc98a5c73dca6e8fd1b89', 'validated', '{"audio_key":"7fdea374e1920354b9b64513c64cfb041ff029a3ff8f2802a8f378e06759438e","entity_key":"d_home_and_neighborhood_02:1","voice_id":"yatuMX0k4Dh41R64sbGj","voice_name":"Cécile - Interactive Customer Support","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"30034235cc2ab99cc5c81de33a7e95935cd60138820dc98a5c73dca6e8fd1b89","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/7fdea374e1920354b9b64513c64cfb041ff029a3ff8f2802a8f378e06759438e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_clothes_and_comparisons_02:2 -> audio/generated/fr-FR/dialogues/812f2117ae2447e8534a52cefcf61ffe78dd7242709b2e48b3505ef9fe891bbd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c9a66644-cdae-54d8-b64e-8049df1dcacd', 1)
  AND voice_key = 'character:camille:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_clothes_and_comparisons_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b06525036c3e57575a8e7aae918f1e05c0431693d6f4203ea29f15c605942e23'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('32b46ecf-d141-551e-bf1b-3c1251438d5c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c9a66644-cdae-54d8-b64e-8049df1dcacd', 1), 'b06525036c3e57575a8e7aae918f1e05c0431693d6f4203ea29f15c605942e23',
  'character:camille:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/812f2117ae2447e8534a52cefcf61ffe78dd7242709b2e48b3505ef9fe891bbd.mp3', 1750, '2026-09-14 10:38:23.109445', '919212d901e97b77d723e2267ddffdc092cd5567af3bbf02e5a09af58aef15af', 'validated', '{"audio_key":"812f2117ae2447e8534a52cefcf61ffe78dd7242709b2e48b3505ef9fe891bbd","entity_key":"d_clothes_and_comparisons_02:2","voice_id":"lvQdCgwZfBuOzxyV5pxu","voice_name":"Audia - Customer Support","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"919212d901e97b77d723e2267ddffdc092cd5567af3bbf02e5a09af58aef15af","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/812f2117ae2447e8534a52cefcf61ffe78dd7242709b2e48b3505ef9fe891bbd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_hotel_and_stay_01:2 -> audio/generated/fr-FR/dialogues/81cc71a5800d412cd92c37ff1a518ffb3ab8aadabd375e917b27bb549ddb08b2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('504cbf56-9cc8-52e8-a144-f7c0f70f0f76', 1)
  AND voice_key = 'character:hugo:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_hotel_and_stay_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '449bf225a29dd17f552431262251474b876d61888e489d97f9ae843eae198b71'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('43c9669c-21f4-57fb-a6e3-39d1ba49e487', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('504cbf56-9cc8-52e8-a144-f7c0f70f0f76', 1), '449bf225a29dd17f552431262251474b876d61888e489d97f9ae843eae198b71',
  'character:hugo:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/81cc71a5800d412cd92c37ff1a518ffb3ab8aadabd375e917b27bb549ddb08b2.mp3', 1933, '2026-09-14 10:38:23.138457', '4b44a1d9a6d08613a74aaa66a9bc9bd0199f404dd334fd1edf7e7eab364357c9', 'validated', '{"audio_key":"81cc71a5800d412cd92c37ff1a518ffb3ab8aadabd375e917b27bb549ddb08b2","entity_key":"d_hotel_and_stay_01:2","voice_id":"FRY6vOtGqwamgAf39SwP","voice_name":"Yanis","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4b44a1d9a6d08613a74aaa66a9bc9bd0199f404dd334fd1edf7e7eab364357c9","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/81cc71a5800d412cd92c37ff1a518ffb3ab8aadabd375e917b27bb549ddb08b2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_home_and_neighborhood_02:2 -> audio/generated/fr-FR/dialogues/848c5f7d009b7411e26d944fb67de906b0af6c3615f57e035f250cbe063e2fcf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e791c836-319f-5320-a990-c8c03ca4ed6b', 1)
  AND voice_key = 'character:camille:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_home_and_neighborhood_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '83e37174ba5d50f60f413b1c2f063d958bd83dd2def9e91e4b585cb1017fccb6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6446683e-ac8c-572a-b188-3dcc25b97696', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e791c836-319f-5320-a990-c8c03ca4ed6b', 1), '83e37174ba5d50f60f413b1c2f063d958bd83dd2def9e91e4b585cb1017fccb6',
  'character:camille:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/848c5f7d009b7411e26d944fb67de906b0af6c3615f57e035f250cbe063e2fcf.mp3', 2768, '2026-09-14 10:38:24.231267', '82fa7bd05fa329cfa6ef2f041353c32b6bc5e30ce2566c0a7511d6af2b502183', 'validated', '{"audio_key":"848c5f7d009b7411e26d944fb67de906b0af6c3615f57e035f250cbe063e2fcf","entity_key":"d_home_and_neighborhood_02:2","voice_id":"lvQdCgwZfBuOzxyV5pxu","voice_name":"Audia - Customer Support","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"82fa7bd05fa329cfa6ef2f041353c32b6bc5e30ce2566c0a7511d6af2b502183","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/848c5f7d009b7411e26d944fb67de906b0af6c3615f57e035f250cbe063e2fcf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_hotel_and_stay_02:4 -> audio/generated/fr-FR/dialogues/91c7177881e5fc3c770184f87c0ad0a5c98dee5b2234566df0dd34d9435c0ecd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0ed874c4-69d3-5cbd-96e9-4f0dd28e5858', 1)
  AND voice_key = 'character:nicolas:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_hotel_and_stay_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'faa5ac5c9be0bd39aea382363a0a0dfe2a7afe294618d4e5fdf0f289110eedb7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2ecf7451-34c2-5636-a496-cce4584eb72f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0ed874c4-69d3-5cbd-96e9-4f0dd28e5858', 1), 'faa5ac5c9be0bd39aea382363a0a0dfe2a7afe294618d4e5fdf0f289110eedb7',
  'character:nicolas:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/91c7177881e5fc3c770184f87c0ad0a5c98dee5b2234566df0dd34d9435c0ecd.mp3', 1515, '2026-09-14 10:38:24.120704', 'e92db30ff104ced9e813d12e0cca505f1a42b4c4a27f994cc53b3496f52f723e', 'validated', '{"audio_key":"91c7177881e5fc3c770184f87c0ad0a5c98dee5b2234566df0dd34d9435c0ecd","entity_key":"d_hotel_and_stay_02:4","voice_id":"7Pm7442WzqlfkW9vjmO9","voice_name":"Maxime - Dynamic and Natural","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e92db30ff104ced9e813d12e0cca505f1a42b4c4a27f994cc53b3496f52f723e","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/91c7177881e5fc3c770184f87c0ad0a5c98dee5b2234566df0dd34d9435c0ecd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_clothes_and_comparisons_02:1 -> audio/generated/fr-FR/dialogues/9206a58e5c893bb2c6251c3e4b38488d2d3df09852c936e1e6e24fa3f7ad54f8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3b0be67b-1823-5bb4-83be-4f9cf15b16b9', 1)
  AND voice_key = 'character:julien:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_clothes_and_comparisons_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f2a82053339e231492809da5af2c09613af77b41a4651632b1aed22fc3f09178'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('287e8c4e-1c16-53b5-884c-6886e5a91877', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3b0be67b-1823-5bb4-83be-4f9cf15b16b9', 1), 'f2a82053339e231492809da5af2c09613af77b41a4651632b1aed22fc3f09178',
  'character:julien:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/9206a58e5c893bb2c6251c3e4b38488d2d3df09852c936e1e6e24fa3f7ad54f8.mp3', 1384, '2026-09-14 10:38:25.160235', '9b89b65ea8e4ad6439eff973d8101892c1595d40beb18e7a0fa5edcf3467d178', 'validated', '{"audio_key":"9206a58e5c893bb2c6251c3e4b38488d2d3df09852c936e1e6e24fa3f7ad54f8","entity_key":"d_clothes_and_comparisons_02:1","voice_id":"xO2Q4ARMEd4BI2sGDH9c","voice_name":"Edouard - Confident and Polished","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"9b89b65ea8e4ad6439eff973d8101892c1595d40beb18e7a0fa5edcf3467d178","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/9206a58e5c893bb2c6251c3e4b38488d2d3df09852c936e1e6e24fa3f7ad54f8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_a2_problem_solving_capstone_02:2 -> audio/generated/fr-FR/dialogues/92ef16d5b6bd1e60b163e1f1fdebe112eb4a661d404bd6f028f1c57f47ad40b5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('57689e2e-8585-52a6-9f8b-90149147da70', 1)
  AND voice_key = 'character:hugo:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_a2_problem_solving_capstone_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '18d2fb961e6a69b36a06757f58712bd597a663dd96f7f6e37ef16b8116289bdb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a3da3ecb-5f63-5bcd-a00d-4c1311df11ef', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('57689e2e-8585-52a6-9f8b-90149147da70', 1), '18d2fb961e6a69b36a06757f58712bd597a663dd96f7f6e37ef16b8116289bdb',
  'character:hugo:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/92ef16d5b6bd1e60b163e1f1fdebe112eb4a661d404bd6f028f1c57f47ad40b5.mp3', 1697, '2026-09-14 10:38:25.286137', '6e1ed933480fb3f3ddca2cb03119a239f3874a28c77e400f24bf371b38586fff', 'validated', '{"audio_key":"92ef16d5b6bd1e60b163e1f1fdebe112eb4a661d404bd6f028f1c57f47ad40b5","entity_key":"d_a2_problem_solving_capstone_02:2","voice_id":"FRY6vOtGqwamgAf39SwP","voice_name":"Yanis","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6e1ed933480fb3f3ddca2cb03119a239f3874a28c77e400f24bf371b38586fff","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/92ef16d5b6bd1e60b163e1f1fdebe112eb4a661d404bd6f028f1c57f47ad40b5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_food_and_quantities_02:4 -> audio/generated/fr-FR/dialogues/95a9f23e40abe5cbe5247efe4b7cab70663783bb26abe5934c2fc34353b2a879.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2680d58c-9abd-5323-8d22-6158e378af40', 1)
  AND voice_key = 'character:inès:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_food_and_quantities_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '26e51e4851dc45c7174dc69f2594ace82848ab2af133e950ba1f913666d26939'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cb9e6d30-45e7-5cd4-9588-d3d6d668b2e0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2680d58c-9abd-5323-8d22-6158e378af40', 1), '26e51e4851dc45c7174dc69f2594ace82848ab2af133e950ba1f913666d26939',
  'character:inès:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/95a9f23e40abe5cbe5247efe4b7cab70663783bb26abe5934c2fc34353b2a879.mp3', 1619, '2026-09-14 10:38:26.205375', '53f42875b4af41b9c3ac91ff515a9b8b83722b284b945b67f165394018901098', 'validated', '{"audio_key":"95a9f23e40abe5cbe5247efe4b7cab70663783bb26abe5934c2fc34353b2a879","entity_key":"d_food_and_quantities_02:4","voice_id":"mNu8EQcIlFZdOJs7yfhe","voice_name":"Julia - Warm French Narrator","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"53f42875b4af41b9c3ac91ff515a9b8b83722b284b945b67f165394018901098","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/95a9f23e40abe5cbe5247efe4b7cab70663783bb26abe5934c2fc34353b2a879.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_a2_problem_solving_capstone_02:1 -> audio/generated/fr-FR/dialogues/9c859ba0d1daa9edd45a45a01f3cbb7887bbbff66b68adbcf65440088d8f830f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c9e5b593-bc0a-567d-b9ef-6e0d6ccdcdfa', 1)
  AND voice_key = 'character:claire:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_a2_problem_solving_capstone_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2d5476f6dc756106f7746b1992d5d27c8e014b1e76b1707b0f111c1fa665a7be'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8a5f599d-83c7-51ba-95e5-13168d31f620', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c9e5b593-bc0a-567d-b9ef-6e0d6ccdcdfa', 1), '2d5476f6dc756106f7746b1992d5d27c8e014b1e76b1707b0f111c1fa665a7be',
  'character:claire:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/9c859ba0d1daa9edd45a45a01f3cbb7887bbbff66b68adbcf65440088d8f830f.mp3', 1985, '2026-09-14 10:38:26.334925', '29f2b1e49721f389f964c3c7da080df65c488e3e0057e37b8a222881226e8f5c', 'validated', '{"audio_key":"9c859ba0d1daa9edd45a45a01f3cbb7887bbbff66b68adbcf65440088d8f830f","entity_key":"d_a2_problem_solving_capstone_02:1","voice_id":"yatuMX0k4Dh41R64sbGj","voice_name":"Cécile - Interactive Customer Support","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"29f2b1e49721f389f964c3c7da080df65c488e3e0057e37b8a222881226e8f5c","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/9c859ba0d1daa9edd45a45a01f3cbb7887bbbff66b68adbcf65440088d8f830f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_clothes_and_comparisons_01:2 -> audio/generated/fr-FR/dialogues/a06d65858f09f54444eff9e8d4e91a92d164f836808567409087e186c41d8e83.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d60a45b5-8846-5935-83fc-4a223ccec24b', 1)
  AND voice_key = 'character:claire:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_clothes_and_comparisons_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ae4c38966c8fec95197d2686bd7eb3cca588f2b723fc59e732b62a49af3e9fb7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('81ac083d-c42a-5de0-aec3-47a8218dd6bd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d60a45b5-8846-5935-83fc-4a223ccec24b', 1), 'ae4c38966c8fec95197d2686bd7eb3cca588f2b723fc59e732b62a49af3e9fb7',
  'character:claire:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/a06d65858f09f54444eff9e8d4e91a92d164f836808567409087e186c41d8e83.mp3', 2272, '2026-09-14 10:38:27.301731', 'e278ea114ef73324d0fd53d7cb0e4ccb84fa24574b728ec0365489cf5cd52a06', 'validated', '{"audio_key":"a06d65858f09f54444eff9e8d4e91a92d164f836808567409087e186c41d8e83","entity_key":"d_clothes_and_comparisons_01:2","voice_id":"yatuMX0k4Dh41R64sbGj","voice_name":"Cécile - Interactive Customer Support","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"e278ea114ef73324d0fd53d7cb0e4ccb84fa24574b728ec0365489cf5cd52a06","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/a06d65858f09f54444eff9e8d4e91a92d164f836808567409087e186c41d8e83.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_yesterday_and_past_01:1 -> audio/generated/fr-FR/dialogues/a0fceb3ab2a38dff08eb54078d92b6d75b85eb7065747a5386ab79bda0bc1296.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f7f80947-d867-5ebd-9636-8d2167e46894', 1)
  AND voice_key = 'character:camille:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_yesterday_and_past_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e858df2b466689f7a557e29db3941ba2106d73ab19e74ff86b010ed1caed8ad9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1d01d1b6-1fb8-5b0c-a89b-fe36771e6043', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f7f80947-d867-5ebd-9636-8d2167e46894', 1), 'e858df2b466689f7a557e29db3941ba2106d73ab19e74ff86b010ed1caed8ad9',
  'character:camille:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/a0fceb3ab2a38dff08eb54078d92b6d75b85eb7065747a5386ab79bda0bc1296.mp3', 1436, '2026-09-14 10:38:27.318004', '2f5412d7673371dad32042712a440349ee4ec56b1db036163764b62d18fb2b21', 'validated', '{"audio_key":"a0fceb3ab2a38dff08eb54078d92b6d75b85eb7065747a5386ab79bda0bc1296","entity_key":"d_yesterday_and_past_01:1","voice_id":"lvQdCgwZfBuOzxyV5pxu","voice_name":"Audia - Customer Support","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2f5412d7673371dad32042712a440349ee4ec56b1db036163764b62d18fb2b21","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/a0fceb3ab2a38dff08eb54078d92b6d75b85eb7065747a5386ab79bda0bc1296.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_yesterday_and_past_02:2 -> audio/generated/fr-FR/dialogues/a46359963445ded333bdeb19205ef1d00ae5682b2d0909375a9bb337129ea261.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6ce6eda9-b45d-5394-8745-5c8f996dbbfb', 1)
  AND voice_key = 'character:hugo:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_yesterday_and_past_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5cb2dd1fa72ec7d000a8eab8609a4fbad36cd3c04a6e9a843d2045fdce880a90'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('400c461f-3678-5f2c-8f36-37aa3dcb6930', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6ce6eda9-b45d-5394-8745-5c8f996dbbfb', 1), '5cb2dd1fa72ec7d000a8eab8609a4fbad36cd3c04a6e9a843d2045fdce880a90',
  'character:hugo:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/a46359963445ded333bdeb19205ef1d00ae5682b2d0909375a9bb337129ea261.mp3', 1567, '2026-09-14 10:38:28.410809', 'e9d2e15922082e60bd6de36490b09aace8f487bd9facca596f1ba89149e9d3bf', 'validated', '{"audio_key":"a46359963445ded333bdeb19205ef1d00ae5682b2d0909375a9bb337129ea261","entity_key":"d_yesterday_and_past_02:2","voice_id":"FRY6vOtGqwamgAf39SwP","voice_name":"Yanis","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e9d2e15922082e60bd6de36490b09aace8f487bd9facca596f1ba89149e9d3bf","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/a46359963445ded333bdeb19205ef1d00ae5682b2d0909375a9bb337129ea261.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_plans_and_invitations_02:4 -> audio/generated/fr-FR/dialogues/a5f54424b0b733e0873cd5920efaf7555272f12233293ca96b59758bc7c88c34.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4d3e120f-fdc0-545c-ac36-212c8ec9b428', 1)
  AND voice_key = 'character:julien:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_plans_and_invitations_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'be6ff3e262ce63f4bd5addb7d2c1ad26e0d32dec72013d712ea5e88a3489b6d2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('52c06670-6220-560b-b755-4b80b8603d39', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4d3e120f-fdc0-545c-ac36-212c8ec9b428', 1), 'be6ff3e262ce63f4bd5addb7d2c1ad26e0d32dec72013d712ea5e88a3489b6d2',
  'character:julien:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/a5f54424b0b733e0873cd5920efaf7555272f12233293ca96b59758bc7c88c34.mp3', 1985, '2026-09-14 10:38:28.395039', '2f380314183c228f9ec12b5c1feb71ef44a263136fbc19db49bdc90c7344c76b', 'validated', '{"audio_key":"a5f54424b0b733e0873cd5920efaf7555272f12233293ca96b59758bc7c88c34","entity_key":"d_plans_and_invitations_02:4","voice_id":"xO2Q4ARMEd4BI2sGDH9c","voice_name":"Edouard - Confident and Polished","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"2f380314183c228f9ec12b5c1feb71ef44a263136fbc19db49bdc90c7344c76b","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/a5f54424b0b733e0873cd5920efaf7555272f12233293ca96b59758bc7c88c34.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_a2_problem_solving_capstone_01:1 -> audio/generated/fr-FR/dialogues/a93058aa52bde64be0942c36e074852009e85f08bccf2d66e20a41e8831c826d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0d5a7641-5ed8-59bc-86de-2d7071ee6f8d', 1)
  AND voice_key = 'character:inès:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_a2_problem_solving_capstone_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'be55a810dca40f5b9025d7471eb5fb033b7bda8f90b4b4591211636b3f6dad69'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('31cd641f-6a90-5080-a5e7-5cf25915626b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0d5a7641-5ed8-59bc-86de-2d7071ee6f8d', 1), 'be55a810dca40f5b9025d7471eb5fb033b7bda8f90b4b4591211636b3f6dad69',
  'character:inès:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/a93058aa52bde64be0942c36e074852009e85f08bccf2d66e20a41e8831c826d.mp3', 1906, '2026-09-14 10:38:29.468633', 'a1f08d7555bc21cf3c5625b8a704761320957f9c9e6f85237ea7b2e55271db82', 'validated', '{"audio_key":"a93058aa52bde64be0942c36e074852009e85f08bccf2d66e20a41e8831c826d","entity_key":"d_a2_problem_solving_capstone_01:1","voice_id":"mNu8EQcIlFZdOJs7yfhe","voice_name":"Julia - Warm French Narrator","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a1f08d7555bc21cf3c5625b8a704761320957f9c9e6f85237ea7b2e55271db82","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/a93058aa52bde64be0942c36e074852009e85f08bccf2d66e20a41e8831c826d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_food_and_quantities_02:3 -> audio/generated/fr-FR/dialogues/aa5e42d0c0ce3fd150f6311846864a597416892e75b1b8da379e840846210471.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e453ca20-c257-5b09-8aa1-ee436426f89f', 1)
  AND voice_key = 'character:hugo:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_food_and_quantities_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '19721b7472b62f2b1c8b7521c18f52d82ee9f474dcfc7e55bbbaf4baa91c91ba'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a9a148fa-89eb-52f0-981c-82cbc252dca1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e453ca20-c257-5b09-8aa1-ee436426f89f', 1), '19721b7472b62f2b1c8b7521c18f52d82ee9f474dcfc7e55bbbaf4baa91c91ba',
  'character:hugo:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/aa5e42d0c0ce3fd150f6311846864a597416892e75b1b8da379e840846210471.mp3', 1332, '2026-09-14 10:38:29.381071', 'fef95d8fb50c3520674e688f9b3a0f0d00c68cdbe775137eb8a883b1d7639c35', 'validated', '{"audio_key":"aa5e42d0c0ce3fd150f6311846864a597416892e75b1b8da379e840846210471","entity_key":"d_food_and_quantities_02:3","voice_id":"FRY6vOtGqwamgAf39SwP","voice_name":"Yanis","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"fef95d8fb50c3520674e688f9b3a0f0d00c68cdbe775137eb8a883b1d7639c35","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/aa5e42d0c0ce3fd150f6311846864a597416892e75b1b8da379e840846210471.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_yesterday_and_past_01:3 -> audio/generated/fr-FR/dialogues/ad0460d2e70c5bb0007436b568b38c7e0c11c0a41dfff3821a45b7db50187925.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('99dc0c66-5ac4-5b4b-9796-a16091205b41', 1)
  AND voice_key = 'character:camille:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_yesterday_and_past_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '78892decd0256b5e3d501fbf4df3ad02917d6b915b3de4f04b161724e49b0ae8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('836757c3-edce-5a22-a005-b0a08cde78bc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('99dc0c66-5ac4-5b4b-9796-a16091205b41', 1), '78892decd0256b5e3d501fbf4df3ad02917d6b915b3de4f04b161724e49b0ae8',
  'character:camille:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/ad0460d2e70c5bb0007436b568b38c7e0c11c0a41dfff3821a45b7db50187925.mp3', 1201, '2026-09-14 10:38:30.331151', '3c4445c73b01a3560153108b4822732ea439338a25060afd280f4d87c652dfef', 'validated', '{"audio_key":"ad0460d2e70c5bb0007436b568b38c7e0c11c0a41dfff3821a45b7db50187925","entity_key":"d_yesterday_and_past_01:3","voice_id":"lvQdCgwZfBuOzxyV5pxu","voice_name":"Audia - Customer Support","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3c4445c73b01a3560153108b4822732ea439338a25060afd280f4d87c652dfef","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/ad0460d2e70c5bb0007436b568b38c7e0c11c0a41dfff3821a45b7db50187925.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_food_and_quantities_02:2 -> audio/generated/fr-FR/dialogues/b3f58c75778994a6749f6fbc3a139be58ce4cca6611a7f9dd0bca95be91eef7e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e8db6a04-e513-5530-bf8d-f3e724960df4', 1)
  AND voice_key = 'character:inès:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_food_and_quantities_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1513bca5a0a761f68545af2184d6a9ac9c9a4f52d738923341875f6e268dbd71'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ccced035-b77f-556c-b28b-06dba2c3f273', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e8db6a04-e513-5530-bf8d-f3e724960df4', 1), '1513bca5a0a761f68545af2184d6a9ac9c9a4f52d738923341875f6e268dbd71',
  'character:inès:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/b3f58c75778994a6749f6fbc3a139be58ce4cca6611a7f9dd0bca95be91eef7e.mp3', 1567, '2026-09-14 10:38:30.506222', '39b845f311511759a8906ca1e4faf6ee09826b5ab8af604421878f8b2eaab2d2', 'validated', '{"audio_key":"b3f58c75778994a6749f6fbc3a139be58ce4cca6611a7f9dd0bca95be91eef7e","entity_key":"d_food_and_quantities_02:2","voice_id":"mNu8EQcIlFZdOJs7yfhe","voice_name":"Julia - Warm French Narrator","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"39b845f311511759a8906ca1e4faf6ee09826b5ab8af604421878f8b2eaab2d2","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/b3f58c75778994a6749f6fbc3a139be58ce4cca6611a7f9dd0bca95be91eef7e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_hotel_and_stay_01:3 -> audio/generated/fr-FR/dialogues/b467f96cf67b033ef837ddcd9ef1058dc4d7d143e81f82acb19970b7cb403300.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cf0f1f28-cd39-56a4-a68c-bf052ebb0035', 1)
  AND voice_key = 'character:camille:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_hotel_and_stay_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '700497a82b6e92310f9306d8f13875606d299d4f1501e261e665b1b5bf61d971'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dca61685-305a-5390-ac97-93dd0e7d6757', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cf0f1f28-cd39-56a4-a68c-bf052ebb0035', 1), '700497a82b6e92310f9306d8f13875606d299d4f1501e261e665b1b5bf61d971',
  'character:camille:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/b467f96cf67b033ef837ddcd9ef1058dc4d7d143e81f82acb19970b7cb403300.mp3', 1097, '2026-09-14 10:38:31.335381', '01ab197d438770b39869fe805a02cc620de7919571b69fb819422f49f7530d38', 'validated', '{"audio_key":"b467f96cf67b033ef837ddcd9ef1058dc4d7d143e81f82acb19970b7cb403300","entity_key":"d_hotel_and_stay_01:3","voice_id":"lvQdCgwZfBuOzxyV5pxu","voice_name":"Audia - Customer Support","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"01ab197d438770b39869fe805a02cc620de7919571b69fb819422f49f7530d38","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/b467f96cf67b033ef837ddcd9ef1058dc4d7d143e81f82acb19970b7cb403300.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_opinions_and_media_02:2 -> audio/generated/fr-FR/dialogues/b7a5bc4ed8ffede7e281e08c0ee2974f26c0532c9b1d45b3479a1d0fde013e88.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4fa44ee4-54aa-5876-a68c-7af833fa8c88', 1)
  AND voice_key = 'character:julien:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_opinions_and_media_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7df08982a8f9e41663692a59a0f6c1935c138565f025307240c99fcb36312982'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dcfec65a-4831-5d24-a892-717bd0a858d1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4fa44ee4-54aa-5876-a68c-7af833fa8c88', 1), '7df08982a8f9e41663692a59a0f6c1935c138565f025307240c99fcb36312982',
  'character:julien:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/b7a5bc4ed8ffede7e281e08c0ee2974f26c0532c9b1d45b3479a1d0fde013e88.mp3', 2115, '2026-09-14 10:38:31.569263', 'a2128e7369cd8837b539674293bef5c396f9c07f472be1770e96eb5539599740', 'validated', '{"audio_key":"b7a5bc4ed8ffede7e281e08c0ee2974f26c0532c9b1d45b3479a1d0fde013e88","entity_key":"d_opinions_and_media_02:2","voice_id":"xO2Q4ARMEd4BI2sGDH9c","voice_name":"Edouard - Confident and Polished","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"a2128e7369cd8837b539674293bef5c396f9c07f472be1770e96eb5539599740","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/b7a5bc4ed8ffede7e281e08c0ee2974f26c0532c9b1d45b3479a1d0fde013e88.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_opinions_and_media_01:4 -> audio/generated/fr-FR/dialogues/bad9207fbe73ef3f394559c3e37f2cfb0d57d1a1a2a028aaaf1538f585a7b191.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('914294a8-a451-53eb-beb5-ed98c486f2da', 1)
  AND voice_key = 'character:nicolas:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_opinions_and_media_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '606dd8b8adeaf4dd7be7d7119bd2071aa4c2805668c29336894e1be28e95b7c7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bdaa429d-5e01-522c-8822-c4e80332a2de', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('914294a8-a451-53eb-beb5-ed98c486f2da', 1), '606dd8b8adeaf4dd7be7d7119bd2071aa4c2805668c29336894e1be28e95b7c7',
  'character:nicolas:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/bad9207fbe73ef3f394559c3e37f2cfb0d57d1a1a2a028aaaf1538f585a7b191.mp3', 1149, '2026-09-14 10:38:32.331018', 'c234fc4ddf5cfa014554217622b5615561bde649e22c05732aca41f9315aba67', 'validated', '{"audio_key":"bad9207fbe73ef3f394559c3e37f2cfb0d57d1a1a2a028aaaf1538f585a7b191","entity_key":"d_opinions_and_media_01:4","voice_id":"7Pm7442WzqlfkW9vjmO9","voice_name":"Maxime - Dynamic and Natural","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c234fc4ddf5cfa014554217622b5615561bde649e22c05732aca41f9315aba67","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/bad9207fbe73ef3f394559c3e37f2cfb0d57d1a1a2a028aaaf1538f585a7b191.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_a2_problem_solving_capstone_01:3 -> audio/generated/fr-FR/dialogues/bcf82ac536111bcc3d27f24765d20f22e738f136fafc99a89bd1bc10ddd2980d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cf483e8e-d0c4-5d01-b244-9c9caff1fcc6', 1)
  AND voice_key = 'character:inès:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_a2_problem_solving_capstone_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2248e350a0f33a3bbe0178b74157010f9eaf9f1ba13f9ad3c0e34dcce0fa7c1b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b190e7f3-dd04-5ec5-a2c4-f1807edf99ab', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cf483e8e-d0c4-5d01-b244-9c9caff1fcc6', 1), '2248e350a0f33a3bbe0178b74157010f9eaf9f1ba13f9ad3c0e34dcce0fa7c1b',
  'character:inès:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/bcf82ac536111bcc3d27f24765d20f22e738f136fafc99a89bd1bc10ddd2980d.mp3', 1619, '2026-09-14 10:38:32.587197', '0586723b67d82654a2ce9c67e1a7db086cc97dd82620f63a43f5de0930a53882', 'validated', '{"audio_key":"bcf82ac536111bcc3d27f24765d20f22e738f136fafc99a89bd1bc10ddd2980d","entity_key":"d_a2_problem_solving_capstone_01:3","voice_id":"mNu8EQcIlFZdOJs7yfhe","voice_name":"Julia - Warm French Narrator","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0586723b67d82654a2ce9c67e1a7db086cc97dd82620f63a43f5de0930a53882","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/bcf82ac536111bcc3d27f24765d20f22e738f136fafc99a89bd1bc10ddd2980d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_yesterday_and_past_02:4 -> audio/generated/fr-FR/dialogues/bd3a040cd7f11ce86f5981d874b3456161cc5327624ddaffbd84153fd4df03c1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c7267693-4240-57f4-b0cf-ac9f081dfdb3', 1)
  AND voice_key = 'character:hugo:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_yesterday_and_past_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f14753d8dd0da29c51c321484ad6bc6a05a4143fb296e50cd16b32cf23905d90'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f3ecd824-1b75-59cd-965d-2bf501bd2e56', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c7267693-4240-57f4-b0cf-ac9f081dfdb3', 1), 'f14753d8dd0da29c51c321484ad6bc6a05a4143fb296e50cd16b32cf23905d90',
  'character:hugo:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/bd3a040cd7f11ce86f5981d874b3456161cc5327624ddaffbd84153fd4df03c1.mp3', 1280, '2026-09-14 10:38:33.326139', 'ba3a0230faabe1553af1d357ad39f3fd1206202b881ac2544ffa6fe2832d7d9d', 'validated', '{"audio_key":"bd3a040cd7f11ce86f5981d874b3456161cc5327624ddaffbd84153fd4df03c1","entity_key":"d_yesterday_and_past_02:4","voice_id":"FRY6vOtGqwamgAf39SwP","voice_name":"Yanis","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ba3a0230faabe1553af1d357ad39f3fd1206202b881ac2544ffa6fe2832d7d9d","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/bd3a040cd7f11ce86f5981d874b3456161cc5327624ddaffbd84153fd4df03c1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_hotel_and_stay_01:1 -> audio/generated/fr-FR/dialogues/bf43198bc2cce849f2ebb7a0d783ddb57a8c9aed85e3cda191d5e0d7c367d737.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5102dad2-06be-5f54-94bc-038fed794b42', 1)
  AND voice_key = 'character:camille:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_hotel_and_stay_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '57f62476f3a5b72595857e1c6f1ca5c57141454ef56f3614c72f91110898453c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('99f6386b-05f5-50bd-8c16-d39aaa5e2a8b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5102dad2-06be-5f54-94bc-038fed794b42', 1), '57f62476f3a5b72595857e1c6f1ca5c57141454ef56f3614c72f91110898453c',
  'character:camille:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/bf43198bc2cce849f2ebb7a0d783ddb57a8c9aed85e3cda191d5e0d7c367d737.mp3', 2742, '2026-09-14 10:38:33.687474', '17fa41be9c5b9fb5b96b6b9bb53f62cad7d9706e56eaebd6cc07fd8b171ee4e9', 'validated', '{"audio_key":"bf43198bc2cce849f2ebb7a0d783ddb57a8c9aed85e3cda191d5e0d7c367d737","entity_key":"d_hotel_and_stay_01:1","voice_id":"lvQdCgwZfBuOzxyV5pxu","voice_name":"Audia - Customer Support","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"17fa41be9c5b9fb5b96b6b9bb53f62cad7d9706e56eaebd6cc07fd8b171ee4e9","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/bf43198bc2cce849f2ebb7a0d783ddb57a8c9aed85e3cda191d5e0d7c367d737.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_hotel_and_stay_01:4 -> audio/generated/fr-FR/dialogues/c01f47d1e6a0ee63746ee21cf148cdde37b26bfdc4f6d0c455fb31f15b9b6fab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('53bf396b-21c7-578b-bf1f-c060da886534', 1)
  AND voice_key = 'character:hugo:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_hotel_and_stay_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2074feba6e2a7958867fb969afb06171862668da536a726ce8eab69d6eae083a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4506a18c-5556-5bf9-9bba-c311d04ac235', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('53bf396b-21c7-578b-bf1f-c060da886534', 1), '2074feba6e2a7958867fb969afb06171862668da536a726ce8eab69d6eae083a',
  'character:hugo:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/c01f47d1e6a0ee63746ee21cf148cdde37b26bfdc4f6d0c455fb31f15b9b6fab.mp3', 1567, '2026-09-14 10:38:34.358294', '7407744de23dfda0a206b1ee21e3e452c3c5ed0a887ea6e0b686aa512f2fcbde', 'validated', '{"audio_key":"c01f47d1e6a0ee63746ee21cf148cdde37b26bfdc4f6d0c455fb31f15b9b6fab","entity_key":"d_hotel_and_stay_01:4","voice_id":"FRY6vOtGqwamgAf39SwP","voice_name":"Yanis","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7407744de23dfda0a206b1ee21e3e452c3c5ed0a887ea6e0b686aa512f2fcbde","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/c01f47d1e6a0ee63746ee21cf148cdde37b26bfdc4f6d0c455fb31f15b9b6fab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_plans_and_invitations_02:2 -> audio/generated/fr-FR/dialogues/c58db81d17eb0308b7cd8283789c311a9949fc7f31b949a690ebd4d9fdb28c18.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fc684cfc-7da4-5d81-9723-18a3d6966582', 1)
  AND voice_key = 'character:julien:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_plans_and_invitations_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5659b6d87695fa1c1b4a43922671d0847a5ac9d77f96c4264b92571dc9ad93e3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d5e4a3f9-73bf-592f-a14e-ac9faf10dc01', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fc684cfc-7da4-5d81-9723-18a3d6966582', 1), '5659b6d87695fa1c1b4a43922671d0847a5ac9d77f96c4264b92571dc9ad93e3',
  'character:julien:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/c58db81d17eb0308b7cd8283789c311a9949fc7f31b949a690ebd4d9fdb28c18.mp3', 2507, '2026-09-14 10:38:34.837702', '5fd1199d4722b6f8728171d75c85d72c2f5730a4a5bdb3c6b927644dfaec2766', 'validated', '{"audio_key":"c58db81d17eb0308b7cd8283789c311a9949fc7f31b949a690ebd4d9fdb28c18","entity_key":"d_plans_and_invitations_02:2","voice_id":"xO2Q4ARMEd4BI2sGDH9c","voice_name":"Edouard - Confident and Polished","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"5fd1199d4722b6f8728171d75c85d72c2f5730a4a5bdb3c6b927644dfaec2766","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/c58db81d17eb0308b7cd8283789c311a9949fc7f31b949a690ebd4d9fdb28c18.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_opinions_and_media_02:3 -> audio/generated/fr-FR/dialogues/c647180bf4ce99e98569556c8e406bd19af5f63d61dd5033cd9b0895d66c9029.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('132320ba-d2b4-5b8e-b8e2-870515844896', 1)
  AND voice_key = 'character:léa:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_opinions_and_media_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dde8656a50b75fd1568782ea878a292e953e13f04b69cb4bd640b61247fcd69f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dc00e5d4-06e5-5ec3-9467-a5deaa8c9fee', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('132320ba-d2b4-5b8e-b8e2-870515844896', 1), 'dde8656a50b75fd1568782ea878a292e953e13f04b69cb4bd640b61247fcd69f',
  'character:léa:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/c647180bf4ce99e98569556c8e406bd19af5f63d61dd5033cd9b0895d66c9029.mp3', 1071, '2026-09-14 10:38:35.281406', '6e45454d01fec9856c60595f8f8e1058acc9334cfb1f6d512ff128326bc05259', 'validated', '{"audio_key":"c647180bf4ce99e98569556c8e406bd19af5f63d61dd5033cd9b0895d66c9029","entity_key":"d_opinions_and_media_02:3","voice_id":"fBpCO0Kf0krKLYGOu65w","voice_name":"Émilie - Customer service advisor","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"6e45454d01fec9856c60595f8f8e1058acc9334cfb1f6d512ff128326bc05259","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/c647180bf4ce99e98569556c8e406bd19af5f63d61dd5033cd9b0895d66c9029.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_food_and_quantities_02:1 -> audio/generated/fr-FR/dialogues/c665c74983fdc049be993ae7cbadd91b9b8ecb0a94c2fcf6603d8c6bdb9bac3d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9094d13d-5e80-50c5-ab9f-ca9cff1af596', 1)
  AND voice_key = 'character:hugo:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_food_and_quantities_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a82f1225e3c969185848bb920d0a027796523a21f44b690c470fd6353bedd458'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d2deec59-a167-510e-9681-4674cdc372bc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9094d13d-5e80-50c5-ab9f-ca9cff1af596', 1), 'a82f1225e3c969185848bb920d0a027796523a21f44b690c470fd6353bedd458',
  'character:hugo:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/c665c74983fdc049be993ae7cbadd91b9b8ecb0a94c2fcf6603d8c6bdb9bac3d.mp3', 1332, '2026-09-14 10:38:35.840355', '1464fa86d6d72d710542a3ea0cb302b993ca20313286b21687d87441ca7e3b2f', 'validated', '{"audio_key":"c665c74983fdc049be993ae7cbadd91b9b8ecb0a94c2fcf6603d8c6bdb9bac3d","entity_key":"d_food_and_quantities_02:1","voice_id":"FRY6vOtGqwamgAf39SwP","voice_name":"Yanis","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1464fa86d6d72d710542a3ea0cb302b993ca20313286b21687d87441ca7e3b2f","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/c665c74983fdc049be993ae7cbadd91b9b8ecb0a94c2fcf6603d8c6bdb9bac3d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_home_and_neighborhood_01:3 -> audio/generated/fr-FR/dialogues/c6784200bd0a2a2a879b9afd63805b75bdfd7fabcbd4eb198608feb4d8679125.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a209b0d2-beaf-54a8-9382-d4b7f7cb6b01', 1)
  AND voice_key = 'character:nicolas:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_home_and_neighborhood_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fad837f1d46c6f0fd1b8a80801a1baf76f8ca8fd88ea5d4b9fbc6104e59a8570'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a74b26f4-23a5-572b-809e-2550f5424e09', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a209b0d2-beaf-54a8-9382-d4b7f7cb6b01', 1), 'fad837f1d46c6f0fd1b8a80801a1baf76f8ca8fd88ea5d4b9fbc6104e59a8570',
  'character:nicolas:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/c6784200bd0a2a2a879b9afd63805b75bdfd7fabcbd4eb198608feb4d8679125.mp3', 1671, '2026-09-14 10:38:36.304681', '64806617fc46d2beaf83b16ba66d1a02f27d10e826a4a472124a29bfbb931ebd', 'validated', '{"audio_key":"c6784200bd0a2a2a879b9afd63805b75bdfd7fabcbd4eb198608feb4d8679125","entity_key":"d_home_and_neighborhood_01:3","voice_id":"7Pm7442WzqlfkW9vjmO9","voice_name":"Maxime - Dynamic and Natural","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"64806617fc46d2beaf83b16ba66d1a02f27d10e826a4a472124a29bfbb931ebd","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/c6784200bd0a2a2a879b9afd63805b75bdfd7fabcbd4eb198608feb4d8679125.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_opinions_and_media_01:1 -> audio/generated/fr-FR/dialogues/ca2b60088b111059fee4fe4fe0fe215a9b9eab8ffdf9588717a57c9f82c96d7d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('073c7d4e-3994-5683-9f26-c49f5530e34b', 1)
  AND voice_key = 'character:camille:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_opinions_and_media_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6cb4949e6890619aace06554d2424d7bb2bb294937c812c80734628ff79e0c5c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('19527874-e556-57d0-8650-19640bb65269', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('073c7d4e-3994-5683-9f26-c49f5530e34b', 1), '6cb4949e6890619aace06554d2424d7bb2bb294937c812c80734628ff79e0c5c',
  'character:camille:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/ca2b60088b111059fee4fe4fe0fe215a9b9eab8ffdf9588717a57c9f82c96d7d.mp3', 1619, '2026-09-14 10:38:36.815027', '04fedd344b44a569dc59b107c14e948f368093903e4f82facf7baf3666608125', 'validated', '{"audio_key":"ca2b60088b111059fee4fe4fe0fe215a9b9eab8ffdf9588717a57c9f82c96d7d","entity_key":"d_opinions_and_media_01:1","voice_id":"lvQdCgwZfBuOzxyV5pxu","voice_name":"Audia - Customer Support","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"04fedd344b44a569dc59b107c14e948f368093903e4f82facf7baf3666608125","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/ca2b60088b111059fee4fe4fe0fe215a9b9eab8ffdf9588717a57c9f82c96d7d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_home_and_neighborhood_01:2 -> audio/generated/fr-FR/dialogues/cc38ba3b88c82c4efc6b62c9c2c394767488054e09235354c5dd79ba81890bb3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('828a9cd5-88a7-5a62-b94b-f145c843f09d', 1)
  AND voice_key = 'character:julien:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_home_and_neighborhood_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '275008671afcf36a3cc927583b95ce04c63f11495bd8cf45899a60b6ed6e2e37'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9877a9c1-2df8-53a5-b689-9491bd995eb7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('828a9cd5-88a7-5a62-b94b-f145c843f09d', 1), '275008671afcf36a3cc927583b95ce04c63f11495bd8cf45899a60b6ed6e2e37',
  'character:julien:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/cc38ba3b88c82c4efc6b62c9c2c394767488054e09235354c5dd79ba81890bb3.mp3', 2455, '2026-09-14 10:38:37.392320', '33b256c017f51c9d098269b8a151878bac3e8d80dc5ca59e8d3813bd5769f5b5', 'validated', '{"audio_key":"cc38ba3b88c82c4efc6b62c9c2c394767488054e09235354c5dd79ba81890bb3","entity_key":"d_home_and_neighborhood_01:2","voice_id":"xO2Q4ARMEd4BI2sGDH9c","voice_name":"Edouard - Confident and Polished","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"33b256c017f51c9d098269b8a151878bac3e8d80dc5ca59e8d3813bd5769f5b5","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/cc38ba3b88c82c4efc6b62c9c2c394767488054e09235354c5dd79ba81890bb3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_yesterday_and_past_02:1 -> audio/generated/fr-FR/dialogues/ce02295d1c0bac38d3a629aec3f7edfbe526f090c1765d996a6b70e6b27ef5ad.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a288f6fe-74a3-53bf-9a9e-0de0f7641d6a', 1)
  AND voice_key = 'character:léa:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_yesterday_and_past_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e0d5c73dbd6e28606cc31b785d6bcd8cc59323cce6b33f187723b6fcacf6a97f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('56124d8c-d165-516b-8617-ce73b56a87a9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a288f6fe-74a3-53bf-9a9e-0de0f7641d6a', 1), 'e0d5c73dbd6e28606cc31b785d6bcd8cc59323cce6b33f187723b6fcacf6a97f',
  'character:léa:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/ce02295d1c0bac38d3a629aec3f7edfbe526f090c1765d996a6b70e6b27ef5ad.mp3', 1567, '2026-09-14 10:38:37.825330', '4c2ddc102308199b6176bd1f9c15389e6dea3a19db121bcb9eaef64a82c8cda4', 'validated', '{"audio_key":"ce02295d1c0bac38d3a629aec3f7edfbe526f090c1765d996a6b70e6b27ef5ad","entity_key":"d_yesterday_and_past_02:1","voice_id":"fBpCO0Kf0krKLYGOu65w","voice_name":"Émilie - Customer service advisor","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"4c2ddc102308199b6176bd1f9c15389e6dea3a19db121bcb9eaef64a82c8cda4","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/ce02295d1c0bac38d3a629aec3f7edfbe526f090c1765d996a6b70e6b27ef5ad.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_clothes_and_comparisons_01:1 -> audio/generated/fr-FR/dialogues/d53dc00b1dc4db34e24c730a68fd545aedc9c5dcbb4acaa7578b42e63b6333f5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8a36012e-60d4-5117-9b6e-1103f2e10070', 1)
  AND voice_key = 'character:nicolas:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_clothes_and_comparisons_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e30805c2f7ef49e662f94b8e56fe611114a2770bb9b3e7f647449aba9fecc48f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7457cf74-4743-5d88-bab1-9f333e14c39b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8a36012e-60d4-5117-9b6e-1103f2e10070', 1), 'e30805c2f7ef49e662f94b8e56fe611114a2770bb9b3e7f647449aba9fecc48f',
  'character:nicolas:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/d53dc00b1dc4db34e24c730a68fd545aedc9c5dcbb4acaa7578b42e63b6333f5.mp3', 2115, '2026-09-14 10:38:38.442595', '0ab21c85333006e21d0775cbe2ddc3c067e0bad441c06212ac83ef439271173c', 'validated', '{"audio_key":"d53dc00b1dc4db34e24c730a68fd545aedc9c5dcbb4acaa7578b42e63b6333f5","entity_key":"d_clothes_and_comparisons_01:1","voice_id":"7Pm7442WzqlfkW9vjmO9","voice_name":"Maxime - Dynamic and Natural","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0ab21c85333006e21d0775cbe2ddc3c067e0bad441c06212ac83ef439271173c","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/d53dc00b1dc4db34e24c730a68fd545aedc9c5dcbb4acaa7578b42e63b6333f5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_opinions_and_media_01:2 -> audio/generated/fr-FR/dialogues/d5c0d391716bdf1c8708cbf5abb92f83d1066cccc53416290584acbe42454219.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4480ede6-075b-52ff-8838-e3695fa4c35e', 1)
  AND voice_key = 'character:nicolas:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_opinions_and_media_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dd32ec036895cdbb7650b3f9a93bfe012e310f418462345f1d62073cd662ce40'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1d3e022b-437f-54e2-a3ee-e74240f7f9a7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4480ede6-075b-52ff-8838-e3695fa4c35e', 1), 'dd32ec036895cdbb7650b3f9a93bfe012e310f418462345f1d62073cd662ce40',
  'character:nicolas:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/d5c0d391716bdf1c8708cbf5abb92f83d1066cccc53416290584acbe42454219.mp3', 1985, '2026-09-14 10:38:39.081711', '2530f370ab42bb823843e71f48e2ab7df9db762a3b5272be7580f300cda21e17', 'validated', '{"audio_key":"d5c0d391716bdf1c8708cbf5abb92f83d1066cccc53416290584acbe42454219","entity_key":"d_opinions_and_media_01:2","voice_id":"7Pm7442WzqlfkW9vjmO9","voice_name":"Maxime - Dynamic and Natural","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2530f370ab42bb823843e71f48e2ab7df9db762a3b5272be7580f300cda21e17","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/d5c0d391716bdf1c8708cbf5abb92f83d1066cccc53416290584acbe42454219.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_opinions_and_media_01:3 -> audio/generated/fr-FR/dialogues/d703b937d5631b7d1ac36a80cbeee63e968c3bbba90a977a2f6c17cbad980845.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a47f3d05-35b6-53ef-b0cc-a082e83907fd', 1)
  AND voice_key = 'character:camille:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_opinions_and_media_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8e33fdf929c05b3899e098ffcdab4ff4503a770dc56ea34b473bceb9a23e657a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('05232b81-6837-55d2-a170-cebc0f8564e5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a47f3d05-35b6-53ef-b0cc-a082e83907fd', 1), '8e33fdf929c05b3899e098ffcdab4ff4503a770dc56ea34b473bceb9a23e657a',
  'character:camille:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/d703b937d5631b7d1ac36a80cbeee63e968c3bbba90a977a2f6c17cbad980845.mp3', 1906, '2026-09-14 10:38:39.567707', '51611311b7d6d972bc626dca95f2925082aaa2e7eb6c133bcb440b37577537dd', 'validated', '{"audio_key":"d703b937d5631b7d1ac36a80cbeee63e968c3bbba90a977a2f6c17cbad980845","entity_key":"d_opinions_and_media_01:3","voice_id":"lvQdCgwZfBuOzxyV5pxu","voice_name":"Audia - Customer Support","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"51611311b7d6d972bc626dca95f2925082aaa2e7eb6c133bcb440b37577537dd","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/d703b937d5631b7d1ac36a80cbeee63e968c3bbba90a977a2f6c17cbad980845.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_plans_and_invitations_01:3 -> audio/generated/fr-FR/dialogues/d8898aa64a57ee81ea2d12bc1ab44c8f919a39ea7d560fe9abc61ebbaa06d400.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('67ae2d3b-74ce-5860-8e0c-70b31af6babb', 1)
  AND voice_key = 'character:inès:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_plans_and_invitations_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5346c75c3688741790294fbacd7e17aa7176c5242d4d0e75e9192348650a9a06'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('782a84a5-cc79-5311-9b68-3c4f743580fb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('67ae2d3b-74ce-5860-8e0c-70b31af6babb', 1), '5346c75c3688741790294fbacd7e17aa7176c5242d4d0e75e9192348650a9a06',
  'character:inès:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/d8898aa64a57ee81ea2d12bc1ab44c8f919a39ea7d560fe9abc61ebbaa06d400.mp3', 2821, '2026-09-14 10:38:40.197569', '1f74894aa6a26319805d87338ce2ce0d5b96ca7c5d912c474edcb18a5f6cdafa', 'validated', '{"audio_key":"d8898aa64a57ee81ea2d12bc1ab44c8f919a39ea7d560fe9abc61ebbaa06d400","entity_key":"d_plans_and_invitations_01:3","voice_id":"mNu8EQcIlFZdOJs7yfhe","voice_name":"Julia - Warm French Narrator","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1f74894aa6a26319805d87338ce2ce0d5b96ca7c5d912c474edcb18a5f6cdafa","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/d8898aa64a57ee81ea2d12bc1ab44c8f919a39ea7d560fe9abc61ebbaa06d400.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_work_and_obligations_02:1 -> audio/generated/fr-FR/dialogues/da2fc2105f3a364239b9568fcb0947c25679665c6b1e28f9b64528d2c1e8aeeb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fc77a8f1-f88b-532b-8fe3-db8c3bb65947', 1)
  AND voice_key = 'character:léa:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_work_and_obligations_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ac6343585b45d0f44caed0b66526db11edfc29521bb4ed3eb5d328c63fd19379'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('354919f0-0f07-51d2-900a-036c334c352e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fc77a8f1-f88b-532b-8fe3-db8c3bb65947', 1), 'ac6343585b45d0f44caed0b66526db11edfc29521bb4ed3eb5d328c63fd19379',
  'character:léa:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/da2fc2105f3a364239b9568fcb0947c25679665c6b1e28f9b64528d2c1e8aeeb.mp3', 1384, '2026-09-14 10:38:40.563588', '7b1655e9cb767228734af1765a468b5e2e830ba11d1e49184460374b84f2f94d', 'validated', '{"audio_key":"da2fc2105f3a364239b9568fcb0947c25679665c6b1e28f9b64528d2c1e8aeeb","entity_key":"d_work_and_obligations_02:1","voice_id":"fBpCO0Kf0krKLYGOu65w","voice_name":"Émilie - Customer service advisor","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"7b1655e9cb767228734af1765a468b5e2e830ba11d1e49184460374b84f2f94d","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/da2fc2105f3a364239b9568fcb0947c25679665c6b1e28f9b64528d2c1e8aeeb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_plans_and_invitations_01:2 -> audio/generated/fr-FR/dialogues/dbc910e0c62d6ff7bb211f8b26ba315646f532cace0e221925edb9a10994fca0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d8dfbea1-17b8-55b7-843a-4faae7ac6e26', 1)
  AND voice_key = 'character:nicolas:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_plans_and_invitations_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '53060d77d479cf5438fca75f60c81e65c8170f312be21005c24751b9c16bdc8c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f6fa8edb-4b8a-5c3f-bb19-0dafdbcf29f5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d8dfbea1-17b8-55b7-843a-4faae7ac6e26', 1), '53060d77d479cf5438fca75f60c81e65c8170f312be21005c24751b9c16bdc8c',
  'character:nicolas:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/dbc910e0c62d6ff7bb211f8b26ba315646f532cace0e221925edb9a10994fca0.mp3', 1436, '2026-09-14 10:38:41.190231', '47d33683787bc603def81ef76632d21626b9ff521058eedc4a51510871c29330', 'validated', '{"audio_key":"dbc910e0c62d6ff7bb211f8b26ba315646f532cace0e221925edb9a10994fca0","entity_key":"d_plans_and_invitations_01:2","voice_id":"7Pm7442WzqlfkW9vjmO9","voice_name":"Maxime - Dynamic and Natural","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"47d33683787bc603def81ef76632d21626b9ff521058eedc4a51510871c29330","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/dbc910e0c62d6ff7bb211f8b26ba315646f532cace0e221925edb9a10994fca0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_clothes_and_comparisons_01:4 -> audio/generated/fr-FR/dialogues/de27a8788d141d564ef5180cdd006951c2d68d08549831f89d7e6f258f19d1ef.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cfbd2deb-ef1f-5f03-8eb4-54911147b2d4', 1)
  AND voice_key = 'character:claire:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_clothes_and_comparisons_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3bd6b8a799929676c954eda10767c3f5742ce1df7efa6d87f1f3b33366c2fa59'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fe9a7421-7879-554e-ae00-6b9407cf2e9c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cfbd2deb-ef1f-5f03-8eb4-54911147b2d4', 1), '3bd6b8a799929676c954eda10767c3f5742ce1df7efa6d87f1f3b33366c2fa59',
  'character:claire:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/de27a8788d141d564ef5180cdd006951c2d68d08549831f89d7e6f258f19d1ef.mp3', 1384, '2026-09-14 10:38:41.544848', 'cc75cb1ad0ce0accf1ac35d92703ea1b9f13790184b42eaec2a806dd38623fbe', 'validated', '{"audio_key":"de27a8788d141d564ef5180cdd006951c2d68d08549831f89d7e6f258f19d1ef","entity_key":"d_clothes_and_comparisons_01:4","voice_id":"yatuMX0k4Dh41R64sbGj","voice_name":"Cécile - Interactive Customer Support","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"cc75cb1ad0ce0accf1ac35d92703ea1b9f13790184b42eaec2a806dd38623fbe","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/de27a8788d141d564ef5180cdd006951c2d68d08549831f89d7e6f258f19d1ef.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_health_and_pharmacy_01:2 -> audio/generated/fr-FR/dialogues/e080325ba22066de85e8ab6c0a952319664b97d8fe46423770c3b5c6a6df95e7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3126c797-d017-5f4c-b7b4-ad6acbe4ff95', 1)
  AND voice_key = 'character:julien:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_health_and_pharmacy_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '74cc66db994667918bb95716c1aef2a217d4ccb4395864f3331d5606b0922873'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('069c47a3-2cea-5039-9d64-ae6069f30efd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3126c797-d017-5f4c-b7b4-ad6acbe4ff95', 1), '74cc66db994667918bb95716c1aef2a217d4ccb4395864f3331d5606b0922873',
  'character:julien:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/e080325ba22066de85e8ab6c0a952319664b97d8fe46423770c3b5c6a6df95e7.mp3', 1280, '2026-09-14 10:38:42.156412', 'f176ca0c5bdc65500750ea063b84120ce8caa622211d50f1fb502c1fac43a1bc', 'validated', '{"audio_key":"e080325ba22066de85e8ab6c0a952319664b97d8fe46423770c3b5c6a6df95e7","entity_key":"d_health_and_pharmacy_01:2","voice_id":"xO2Q4ARMEd4BI2sGDH9c","voice_name":"Edouard - Confident and Polished","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"f176ca0c5bdc65500750ea063b84120ce8caa622211d50f1fb502c1fac43a1bc","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/e080325ba22066de85e8ab6c0a952319664b97d8fe46423770c3b5c6a6df95e7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_work_and_obligations_02:4 -> audio/generated/fr-FR/dialogues/e2a282173371f38cdbf3045f038ce6d6aaf0be3c3a5c36c45284445aeb2c8bd8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('dda5ed14-356c-5f16-b958-822e6ec2f915', 1)
  AND voice_key = 'character:inès:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_work_and_obligations_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c5b5e61c1cbc919fd3dcd30d13d6fa4c04b9964ceb5d1b0868a80fb1f6f03fc0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('10cb3555-46df-5ea5-b72e-fb5b9666edd5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('dda5ed14-356c-5f16-b958-822e6ec2f915', 1), 'c5b5e61c1cbc919fd3dcd30d13d6fa4c04b9964ceb5d1b0868a80fb1f6f03fc0',
  'character:inès:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/e2a282173371f38cdbf3045f038ce6d6aaf0be3c3a5c36c45284445aeb2c8bd8.mp3', 2168, '2026-09-14 10:38:42.588753', 'fe6a6b34f26696e73a1e26c64b47d40dbb9e51b0c917797946112b2bc254ad12', 'validated', '{"audio_key":"e2a282173371f38cdbf3045f038ce6d6aaf0be3c3a5c36c45284445aeb2c8bd8","entity_key":"d_work_and_obligations_02:4","voice_id":"mNu8EQcIlFZdOJs7yfhe","voice_name":"Julia - Warm French Narrator","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fe6a6b34f26696e73a1e26c64b47d40dbb9e51b0c917797946112b2bc254ad12","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/e2a282173371f38cdbf3045f038ce6d6aaf0be3c3a5c36c45284445aeb2c8bd8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_health_and_pharmacy_01:1 -> audio/generated/fr-FR/dialogues/e4925810e76fd1b33da53820de156b96553fb8613fcfe937ee8fbb02db8aa584.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ec2eb3c8-aabe-53da-bfd7-c04f9efd9d61', 1)
  AND voice_key = 'character:inès:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_health_and_pharmacy_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '89d15063a905381f9c900bf9d8fe14760ab93eaf5eb33a096595554bd05401a8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e791ae83-f370-50f6-ab53-b4c46858b107', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ec2eb3c8-aabe-53da-bfd7-c04f9efd9d61', 1), '89d15063a905381f9c900bf9d8fe14760ab93eaf5eb33a096595554bd05401a8',
  'character:inès:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/e4925810e76fd1b33da53820de156b96553fb8613fcfe937ee8fbb02db8aa584.mp3', 2533, '2026-09-14 10:38:43.249367', '1ff5393d4e06276f59a21fe2dfe8e89c032e4a3394bd18137c100041dcd6a491', 'validated', '{"audio_key":"e4925810e76fd1b33da53820de156b96553fb8613fcfe937ee8fbb02db8aa584","entity_key":"d_health_and_pharmacy_01:1","voice_id":"mNu8EQcIlFZdOJs7yfhe","voice_name":"Julia - Warm French Narrator","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1ff5393d4e06276f59a21fe2dfe8e89c032e4a3394bd18137c100041dcd6a491","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/e4925810e76fd1b33da53820de156b96553fb8613fcfe937ee8fbb02db8aa584.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_food_and_quantities_01:2 -> audio/generated/fr-FR/dialogues/e52681eed36887459bf710e1aab257f7f278870e20f0e5f533ca2a95cb7bb5ee.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('db42d437-2637-5057-907d-89829032962d', 1)
  AND voice_key = 'character:léa:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_food_and_quantities_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f3c8fb27ac36724bd58c627a3c657fa48b602394e1b9ce8395ad6be1d8ea3e40'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('98ddfacb-a56f-5243-b4f2-17ec7e31566a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('db42d437-2637-5057-907d-89829032962d', 1), 'f3c8fb27ac36724bd58c627a3c657fa48b602394e1b9ce8395ad6be1d8ea3e40',
  'character:léa:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/e52681eed36887459bf710e1aab257f7f278870e20f0e5f533ca2a95cb7bb5ee.mp3', 1436, '2026-09-14 10:38:43.560111', 'a1aa60a9d49e1a84522583aa6e5c8c8a62c81a1ee659433e670304595672bd83', 'validated', '{"audio_key":"e52681eed36887459bf710e1aab257f7f278870e20f0e5f533ca2a95cb7bb5ee","entity_key":"d_food_and_quantities_01:2","voice_id":"fBpCO0Kf0krKLYGOu65w","voice_name":"Émilie - Customer service advisor","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"a1aa60a9d49e1a84522583aa6e5c8c8a62c81a1ee659433e670304595672bd83","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/e52681eed36887459bf710e1aab257f7f278870e20f0e5f533ca2a95cb7bb5ee.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_clothes_and_comparisons_02:4 -> audio/generated/fr-FR/dialogues/e7cc441cd5ec55a2e6167495e1ab7c2fcaa8be8d68d74fea13d43f6516230d16.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b1812fec-9292-5f67-ad3b-b35204dc0973', 1)
  AND voice_key = 'character:camille:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_clothes_and_comparisons_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6bece023ebef7f499b40c0fdf673ee1b9af40ff3cf171c513935fc81347f95ac'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5482ae65-8ce8-5427-942a-ae7c3dbb041a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b1812fec-9292-5f67-ad3b-b35204dc0973', 1), '6bece023ebef7f499b40c0fdf673ee1b9af40ff3cf171c513935fc81347f95ac',
  'character:camille:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/e7cc441cd5ec55a2e6167495e1ab7c2fcaa8be8d68d74fea13d43f6516230d16.mp3', 1515, '2026-09-14 10:38:44.496518', 'b216dc0304475d375f89996e864d9ae6925205d2f21d3ebc2165287be94f9b04', 'validated', '{"audio_key":"e7cc441cd5ec55a2e6167495e1ab7c2fcaa8be8d68d74fea13d43f6516230d16","entity_key":"d_clothes_and_comparisons_02:4","voice_id":"lvQdCgwZfBuOzxyV5pxu","voice_name":"Audia - Customer Support","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b216dc0304475d375f89996e864d9ae6925205d2f21d3ebc2165287be94f9b04","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/e7cc441cd5ec55a2e6167495e1ab7c2fcaa8be8d68d74fea13d43f6516230d16.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_a2_problem_solving_capstone_02:4 -> audio/generated/fr-FR/dialogues/ecd032d55eae04fbab9bcd47867a82a4e6d0f797a45ec5c7291b5a85971bd72a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fac4312a-e8e4-58db-9901-5700bf943666', 1)
  AND voice_key = 'character:hugo:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_a2_problem_solving_capstone_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '00b2f7e8da78a96b85524d69d95ebf7592a4876e4b74ca6f37f9a9522b2d4d8c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('78ae198f-8acb-5abf-959a-6c26f6e03774', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fac4312a-e8e4-58db-9901-5700bf943666', 1), '00b2f7e8da78a96b85524d69d95ebf7592a4876e4b74ca6f37f9a9522b2d4d8c',
  'character:hugo:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/ecd032d55eae04fbab9bcd47867a82a4e6d0f797a45ec5c7291b5a85971bd72a.mp3', 3239, '2026-09-14 10:38:44.796632', '80b071dbe69da310f37302ef5430f7a14eb1d364514612241c2cb2330fe77cc8', 'validated', '{"audio_key":"ecd032d55eae04fbab9bcd47867a82a4e6d0f797a45ec5c7291b5a85971bd72a","entity_key":"d_a2_problem_solving_capstone_02:4","voice_id":"FRY6vOtGqwamgAf39SwP","voice_name":"Yanis","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"80b071dbe69da310f37302ef5430f7a14eb1d364514612241c2cb2330fe77cc8","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/ecd032d55eae04fbab9bcd47867a82a4e6d0f797a45ec5c7291b5a85971bd72a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_health_and_pharmacy_02:3 -> audio/generated/fr-FR/dialogues/ed48efcdd169c3dadb2a5dc6972b4d1df02dfef772629b464e2fadd408bc28bc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7d9d02d8-bf41-5f56-87d3-00472693223e', 1)
  AND voice_key = 'character:claire:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_health_and_pharmacy_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4ab4fe37dec10137c2048ae1c3b2a697879e656bb9f1fb0dc32556543cb75097'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('18f51d61-aed8-500c-8eb6-bbebb4304440', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7d9d02d8-bf41-5f56-87d3-00472693223e', 1), '4ab4fe37dec10137c2048ae1c3b2a697879e656bb9f1fb0dc32556543cb75097',
  'character:claire:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/ed48efcdd169c3dadb2a5dc6972b4d1df02dfef772629b464e2fadd408bc28bc.mp3', 2115, '2026-09-14 10:38:45.556379', '94334ffdd4dbfc74abbc78a869f49981fdd6042777005301929aff48f497e90f', 'validated', '{"audio_key":"ed48efcdd169c3dadb2a5dc6972b4d1df02dfef772629b464e2fadd408bc28bc","entity_key":"d_health_and_pharmacy_02:3","voice_id":"yatuMX0k4Dh41R64sbGj","voice_name":"Cécile - Interactive Customer Support","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"94334ffdd4dbfc74abbc78a869f49981fdd6042777005301929aff48f497e90f","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/ed48efcdd169c3dadb2a5dc6972b4d1df02dfef772629b464e2fadd408bc28bc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_work_and_obligations_01:4 -> audio/generated/fr-FR/dialogues/eeeb1bada80695ffeffb1dbda08dc4571c8b58c8a051d35700fd3d6ad08a7396.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2819a33a-cd2e-5efe-94d6-bccf2b438cf0', 1)
  AND voice_key = 'character:hugo:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_work_and_obligations_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '45c1fb07b8fea920dc25c04de3bb4aa02a1150195c162e98a289de4c93e90d8b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9624df34-35f9-5793-82b0-c4cfeb79fa84', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2819a33a-cd2e-5efe-94d6-bccf2b438cf0', 1), '45c1fb07b8fea920dc25c04de3bb4aa02a1150195c162e98a289de4c93e90d8b',
  'character:hugo:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/eeeb1bada80695ffeffb1dbda08dc4571c8b58c8a051d35700fd3d6ad08a7396.mp3', 914, '2026-09-14 10:38:45.913931', 'f54b5903ff6a442d7b7764c45cea744db3d35c4cbc618544345aef67f6d5412a', 'validated', '{"audio_key":"eeeb1bada80695ffeffb1dbda08dc4571c8b58c8a051d35700fd3d6ad08a7396","entity_key":"d_work_and_obligations_01:4","voice_id":"FRY6vOtGqwamgAf39SwP","voice_name":"Yanis","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f54b5903ff6a442d7b7764c45cea744db3d35c4cbc618544345aef67f6d5412a","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/eeeb1bada80695ffeffb1dbda08dc4571c8b58c8a051d35700fd3d6ad08a7396.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_food_and_quantities_01:1 -> audio/generated/fr-FR/dialogues/ff3cbbd3ec52c623a122f7221f45f2dfe5b537b0841899ba44f9664e30c4eaa4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('09f53806-b58b-54c9-9f2d-5dcb52799533', 1)
  AND voice_key = 'character:thomas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_food_and_quantities_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ad6ad4482bbb3e3503358d6f1e27614d94af08825119185cb73b23fdb881dc9c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('647abd18-9a3e-5edc-9e0a-c0101acdda04', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('09f53806-b58b-54c9-9f2d-5dcb52799533', 1), 'ad6ad4482bbb3e3503358d6f1e27614d94af08825119185cb73b23fdb881dc9c',
  'character:thomas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/ff3cbbd3ec52c623a122f7221f45f2dfe5b537b0841899ba44f9664e30c4eaa4.mp3', 1515, '2026-09-14 10:38:46.533235', 'f084b82d3263e7298d9bbb1cf1c8e9bab9fd000f0ea525a6b1c4b1bf8b50e834', 'validated', '{"audio_key":"ff3cbbd3ec52c623a122f7221f45f2dfe5b537b0841899ba44f9664e30c4eaa4","entity_key":"d_food_and_quantities_01:1","voice_id":"1WQXvbtj0rUYuB5yhY3N","voice_name":"Skel - Calm and Professional","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f084b82d3263e7298d9bbb1cf1c8e9bab9fd000f0ea525a6b1c4b1bf8b50e834","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/ff3cbbd3ec52c623a122f7221f45f2dfe5b537b0841899ba44f9664e30c4eaa4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_clothes_and_comparisons_03 -> audio/generated/fr-FR/lexical/03ee88101ed22717ee1a52216ecbc07a32dd124d57a09a16e2b108a549b785e1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7d3ca5fc-b701-535b-af67-7f56707bcd61', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_clothes_and_comparisons_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dbb41591cc01417efd7ad3c88dc18480a390b38ffbe303529421f6faedf41369'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0a53214e-f31a-5958-b6e7-dbf4d63adaf2', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7d3ca5fc-b701-535b-af67-7f56707bcd61', 1), 'dbb41591cc01417efd7ad3c88dc18480a390b38ffbe303529421f6faedf41369',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/03ee88101ed22717ee1a52216ecbc07a32dd124d57a09a16e2b108a549b785e1.mp3', 1018, '2026-09-14 09:41:50.826249', '550f8d494c358fc03b8db05f4bb84904db6f2364601ba8b73db5cd4d3f9fb77f', 'validated', '{"audio_key":"03ee88101ed22717ee1a52216ecbc07a32dd124d57a09a16e2b108a549b785e1","entity_key":"lx_clothes_and_comparisons_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"550f8d494c358fc03b8db05f4bb84904db6f2364601ba8b73db5cd4d3f9fb77f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/03ee88101ed22717ee1a52216ecbc07a32dd124d57a09a16e2b108a549b785e1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_clothes_and_comparisons_03 -> audio/generated/fr-FR/lexical/03ee88101ed22717ee1a52216ecbc07a32dd124d57a09a16e2b108a549b785e1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8cf96ee6-3e5a-587d-b585-90af174ea8b3', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_clothes_and_comparisons_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dbb41591cc01417efd7ad3c88dc18480a390b38ffbe303529421f6faedf41369'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a40fee0a-7006-5d97-8e5e-fbd2df898ce8', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8cf96ee6-3e5a-587d-b585-90af174ea8b3', 1), 'dbb41591cc01417efd7ad3c88dc18480a390b38ffbe303529421f6faedf41369',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/03ee88101ed22717ee1a52216ecbc07a32dd124d57a09a16e2b108a549b785e1.mp3', 1018, '2026-09-14 09:41:50.826249', '550f8d494c358fc03b8db05f4bb84904db6f2364601ba8b73db5cd4d3f9fb77f', 'validated', '{"audio_key":"03ee88101ed22717ee1a52216ecbc07a32dd124d57a09a16e2b108a549b785e1","entity_key":"wf_clothes_and_comparisons_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"550f8d494c358fc03b8db05f4bb84904db6f2364601ba8b73db5cd4d3f9fb77f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/03ee88101ed22717ee1a52216ecbc07a32dd124d57a09a16e2b108a549b785e1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_food_and_quantities_05 -> audio/generated/fr-FR/lexical/04cf761a264af05b0a41df0cf0923621562a4391b285d559f46f538d8a21b5b8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f3cd5d69-3e8b-5d42-aa6d-df9c2a6bb833', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_food_and_quantities_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5bb99c1aa48ec08fb1713f59233a83f4a486044b17be36d58f33920c35fc4fd1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('080c4e91-8bda-57a4-9835-9e06eacbe6b5', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f3cd5d69-3e8b-5d42-aa6d-df9c2a6bb833', 1), '5bb99c1aa48ec08fb1713f59233a83f4a486044b17be36d58f33920c35fc4fd1',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/04cf761a264af05b0a41df0cf0923621562a4391b285d559f46f538d8a21b5b8.mp3', 862, '2026-09-14 10:38:46.871210', '79f27da94ce0bb9cf234c3c744142b1863e3730e41d63506ba093e10d613d67d', 'validated', '{"audio_key":"04cf761a264af05b0a41df0cf0923621562a4391b285d559f46f538d8a21b5b8","entity_key":"lx_food_and_quantities_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"79f27da94ce0bb9cf234c3c744142b1863e3730e41d63506ba093e10d613d67d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/04cf761a264af05b0a41df0cf0923621562a4391b285d559f46f538d8a21b5b8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_food_and_quantities_05 -> audio/generated/fr-FR/lexical/04cf761a264af05b0a41df0cf0923621562a4391b285d559f46f538d8a21b5b8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('07fd39c4-462a-5027-8a09-c45988fb82f3', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_food_and_quantities_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5bb99c1aa48ec08fb1713f59233a83f4a486044b17be36d58f33920c35fc4fd1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('13925e2e-f374-5d0c-9d37-333047495ee4', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('07fd39c4-462a-5027-8a09-c45988fb82f3', 1), '5bb99c1aa48ec08fb1713f59233a83f4a486044b17be36d58f33920c35fc4fd1',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/04cf761a264af05b0a41df0cf0923621562a4391b285d559f46f538d8a21b5b8.mp3', 862, '2026-09-14 10:38:46.871210', '79f27da94ce0bb9cf234c3c744142b1863e3730e41d63506ba093e10d613d67d', 'validated', '{"audio_key":"04cf761a264af05b0a41df0cf0923621562a4391b285d559f46f538d8a21b5b8","entity_key":"wf_food_and_quantities_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"79f27da94ce0bb9cf234c3c744142b1863e3730e41d63506ba093e10d613d67d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/04cf761a264af05b0a41df0cf0923621562a4391b285d559f46f538d8a21b5b8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_home_and_neighborhood_01 -> audio/generated/fr-FR/lexical/0b2c4606848375f37ca70c145a8e5b5d95d4b6f86eaa89abee04be430f2712bc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2ab95959-cba2-5d2d-821c-0dcef3774807', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_home_and_neighborhood_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0017e6def0eae4e7b597e0b7c4bf50c5d290b19c4609757271a9bab5876c6034'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5c6b73b0-8c51-56c2-99db-52fc80c29389', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2ab95959-cba2-5d2d-821c-0dcef3774807', 1), '0017e6def0eae4e7b597e0b7c4bf50c5d290b19c4609757271a9bab5876c6034',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/0b2c4606848375f37ca70c145a8e5b5d95d4b6f86eaa89abee04be430f2712bc.mp3', 1149, '2026-09-14 10:38:47.537358', '4e1d2bb1c7883700f896feea07081bd1fa1febe197c7dcee98edd26ed38e1e51', 'validated', '{"audio_key":"0b2c4606848375f37ca70c145a8e5b5d95d4b6f86eaa89abee04be430f2712bc","entity_key":"lx_home_and_neighborhood_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4e1d2bb1c7883700f896feea07081bd1fa1febe197c7dcee98edd26ed38e1e51","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/0b2c4606848375f37ca70c145a8e5b5d95d4b6f86eaa89abee04be430f2712bc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_home_and_neighborhood_01 -> audio/generated/fr-FR/lexical/0b2c4606848375f37ca70c145a8e5b5d95d4b6f86eaa89abee04be430f2712bc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a11b5eaf-0890-57a4-8e83-f0c9c511b454', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_home_and_neighborhood_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0017e6def0eae4e7b597e0b7c4bf50c5d290b19c4609757271a9bab5876c6034'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f0afd081-692a-55a1-ae9b-a548f5572040', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a11b5eaf-0890-57a4-8e83-f0c9c511b454', 1), '0017e6def0eae4e7b597e0b7c4bf50c5d290b19c4609757271a9bab5876c6034',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/0b2c4606848375f37ca70c145a8e5b5d95d4b6f86eaa89abee04be430f2712bc.mp3', 1149, '2026-09-14 10:38:47.537358', '4e1d2bb1c7883700f896feea07081bd1fa1febe197c7dcee98edd26ed38e1e51', 'validated', '{"audio_key":"0b2c4606848375f37ca70c145a8e5b5d95d4b6f86eaa89abee04be430f2712bc","entity_key":"wf_home_and_neighborhood_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4e1d2bb1c7883700f896feea07081bd1fa1febe197c7dcee98edd26ed38e1e51","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/0b2c4606848375f37ca70c145a8e5b5d95d4b6f86eaa89abee04be430f2712bc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_hotel_and_stay_05 -> audio/generated/fr-FR/lexical/0c8445ddc13886121726af8d0b9fe3cb0a3df6b466de8fe8783f81e771cb3449.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ba3efc42-ea1a-59dd-a5fe-1653c2d800fc', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_hotel_and_stay_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd8dcd6fae8d7339fb93d4263125a87afb7975b0e24070c7f7a03ca3e7e4aa0ee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7893459c-4f72-5351-aac3-8bf800672ff8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ba3efc42-ea1a-59dd-a5fe-1653c2d800fc', 1), 'd8dcd6fae8d7339fb93d4263125a87afb7975b0e24070c7f7a03ca3e7e4aa0ee',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/0c8445ddc13886121726af8d0b9fe3cb0a3df6b466de8fe8783f81e771cb3449.mp3', 1071, '2026-09-14 10:38:47.861348', '8afb3f52c1910d525ee780ef6f1e522ac86612f07a7c789daa833b18c247d9e9', 'validated', '{"audio_key":"0c8445ddc13886121726af8d0b9fe3cb0a3df6b466de8fe8783f81e771cb3449","entity_key":"lx_hotel_and_stay_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8afb3f52c1910d525ee780ef6f1e522ac86612f07a7c789daa833b18c247d9e9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/0c8445ddc13886121726af8d0b9fe3cb0a3df6b466de8fe8783f81e771cb3449.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_hotel_and_stay_05 -> audio/generated/fr-FR/lexical/0c8445ddc13886121726af8d0b9fe3cb0a3df6b466de8fe8783f81e771cb3449.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d46dd8d7-f7b5-5e75-af4b-2261505aaef6', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_hotel_and_stay_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd8dcd6fae8d7339fb93d4263125a87afb7975b0e24070c7f7a03ca3e7e4aa0ee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('38c04977-f8f6-53cb-8fac-1f64cbe10051', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d46dd8d7-f7b5-5e75-af4b-2261505aaef6', 1), 'd8dcd6fae8d7339fb93d4263125a87afb7975b0e24070c7f7a03ca3e7e4aa0ee',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/0c8445ddc13886121726af8d0b9fe3cb0a3df6b466de8fe8783f81e771cb3449.mp3', 1071, '2026-09-14 10:38:47.861348', '8afb3f52c1910d525ee780ef6f1e522ac86612f07a7c789daa833b18c247d9e9', 'validated', '{"audio_key":"0c8445ddc13886121726af8d0b9fe3cb0a3df6b466de8fe8783f81e771cb3449","entity_key":"wf_hotel_and_stay_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8afb3f52c1910d525ee780ef6f1e522ac86612f07a7c789daa833b18c247d9e9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/0c8445ddc13886121726af8d0b9fe3cb0a3df6b466de8fe8783f81e771cb3449.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_hotel_and_stay_04 -> audio/generated/fr-FR/lexical/0e0c01ee84ce2651be712db3928eec652e48401e0d89f6a26ce1b98f5d0a00c2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7e60ebc0-5dc4-5734-9b69-2b1494341763', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_hotel_and_stay_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'de12ad4a8bf95e6f24d957921399d939e5c7ea7e3fae29cae724eec4755dec3a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2b4c3442-a8f6-59b7-8910-f739fbb247a0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7e60ebc0-5dc4-5734-9b69-2b1494341763', 1), 'de12ad4a8bf95e6f24d957921399d939e5c7ea7e3fae29cae724eec4755dec3a',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/0e0c01ee84ce2651be712db3928eec652e48401e0d89f6a26ce1b98f5d0a00c2.mp3', 1071, '2026-09-14 10:38:48.491707', '410645360785ca1e9908ac6bdd61ac11591a0a70826a524ef5cedeb29e97093e', 'validated', '{"audio_key":"0e0c01ee84ce2651be712db3928eec652e48401e0d89f6a26ce1b98f5d0a00c2","entity_key":"lx_hotel_and_stay_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"410645360785ca1e9908ac6bdd61ac11591a0a70826a524ef5cedeb29e97093e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/0e0c01ee84ce2651be712db3928eec652e48401e0d89f6a26ce1b98f5d0a00c2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_hotel_and_stay_04 -> audio/generated/fr-FR/lexical/0e0c01ee84ce2651be712db3928eec652e48401e0d89f6a26ce1b98f5d0a00c2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e903e1c7-bbef-598a-b73e-90ad8f5bb2be', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_hotel_and_stay_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'de12ad4a8bf95e6f24d957921399d939e5c7ea7e3fae29cae724eec4755dec3a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d78e2f20-a0aa-5ced-9ca0-c66a348d9732', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e903e1c7-bbef-598a-b73e-90ad8f5bb2be', 1), 'de12ad4a8bf95e6f24d957921399d939e5c7ea7e3fae29cae724eec4755dec3a',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/0e0c01ee84ce2651be712db3928eec652e48401e0d89f6a26ce1b98f5d0a00c2.mp3', 1071, '2026-09-14 10:38:48.491707', '410645360785ca1e9908ac6bdd61ac11591a0a70826a524ef5cedeb29e97093e', 'validated', '{"audio_key":"0e0c01ee84ce2651be712db3928eec652e48401e0d89f6a26ce1b98f5d0a00c2","entity_key":"wf_hotel_and_stay_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"410645360785ca1e9908ac6bdd61ac11591a0a70826a524ef5cedeb29e97093e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/0e0c01ee84ce2651be712db3928eec652e48401e0d89f6a26ce1b98f5d0a00c2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_clothes_and_comparisons_02 -> audio/generated/fr-FR/lexical/0f4a9dbf8be41cf65b6218615caece6cac28ddcc039e4409c488c08faf67981f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('81678af8-c804-50bb-8ef9-c1702a509656', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_clothes_and_comparisons_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '05387f952f98b269cafd9bceaecd5331956f528eeeb853e29244a95bb5034a1d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0ec24271-c1e1-5278-acb0-9ffe0820de6a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('81678af8-c804-50bb-8ef9-c1702a509656', 1), '05387f952f98b269cafd9bceaecd5331956f528eeeb853e29244a95bb5034a1d',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/0f4a9dbf8be41cf65b6218615caece6cac28ddcc039e4409c488c08faf67981f.mp3', 1097, '2026-09-14 10:38:48.798906', 'd0240f89dc8e720248d5c946642d0b638e09f53ecdb5259f27d8320cf3055188', 'validated', '{"audio_key":"0f4a9dbf8be41cf65b6218615caece6cac28ddcc039e4409c488c08faf67981f","entity_key":"lx_clothes_and_comparisons_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d0240f89dc8e720248d5c946642d0b638e09f53ecdb5259f27d8320cf3055188","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/0f4a9dbf8be41cf65b6218615caece6cac28ddcc039e4409c488c08faf67981f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_clothes_and_comparisons_02 -> audio/generated/fr-FR/lexical/0f4a9dbf8be41cf65b6218615caece6cac28ddcc039e4409c488c08faf67981f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f9a6d23a-adc7-59c5-93b9-9f02113df2c0', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_clothes_and_comparisons_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '05387f952f98b269cafd9bceaecd5331956f528eeeb853e29244a95bb5034a1d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a699c274-191a-5202-af24-63700d5342b0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f9a6d23a-adc7-59c5-93b9-9f02113df2c0', 1), '05387f952f98b269cafd9bceaecd5331956f528eeeb853e29244a95bb5034a1d',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/0f4a9dbf8be41cf65b6218615caece6cac28ddcc039e4409c488c08faf67981f.mp3', 1097, '2026-09-14 10:38:48.798906', 'd0240f89dc8e720248d5c946642d0b638e09f53ecdb5259f27d8320cf3055188', 'validated', '{"audio_key":"0f4a9dbf8be41cf65b6218615caece6cac28ddcc039e4409c488c08faf67981f","entity_key":"wf_clothes_and_comparisons_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d0240f89dc8e720248d5c946642d0b638e09f53ecdb5259f27d8320cf3055188","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/0f4a9dbf8be41cf65b6218615caece6cac28ddcc039e4409c488c08faf67981f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_hotel_and_stay_02 -> audio/generated/fr-FR/lexical/118eec64e56e70bf4b77d868ed6e42b9ec5a403db857fc176b68ffb5962768de.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7feb0e26-2c07-56be-9c17-07264f16254a', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_hotel_and_stay_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2cff36b1ed0d0b24fdc8a6b6bbaff19df4d1c4405c6438c439600f3889c2226c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('33e4aec7-fe2b-5e7e-8e64-c0e8b75a2216', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7feb0e26-2c07-56be-9c17-07264f16254a', 1), '2cff36b1ed0d0b24fdc8a6b6bbaff19df4d1c4405c6438c439600f3889c2226c',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/118eec64e56e70bf4b77d868ed6e42b9ec5a403db857fc176b68ffb5962768de.mp3', 1071, '2026-09-14 10:38:49.459669', 'f344003acb00de4b4af371ca27428713c403fd38d85e0d8a0d1303ae1c83e1fb', 'validated', '{"audio_key":"118eec64e56e70bf4b77d868ed6e42b9ec5a403db857fc176b68ffb5962768de","entity_key":"lx_hotel_and_stay_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f344003acb00de4b4af371ca27428713c403fd38d85e0d8a0d1303ae1c83e1fb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/118eec64e56e70bf4b77d868ed6e42b9ec5a403db857fc176b68ffb5962768de.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_hotel_and_stay_02 -> audio/generated/fr-FR/lexical/118eec64e56e70bf4b77d868ed6e42b9ec5a403db857fc176b68ffb5962768de.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c0776674-46be-5e9b-a0ce-dbc39404a91b', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_hotel_and_stay_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2cff36b1ed0d0b24fdc8a6b6bbaff19df4d1c4405c6438c439600f3889c2226c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5f116ea3-6041-5ce3-bfaf-2201e0124576', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c0776674-46be-5e9b-a0ce-dbc39404a91b', 1), '2cff36b1ed0d0b24fdc8a6b6bbaff19df4d1c4405c6438c439600f3889c2226c',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/118eec64e56e70bf4b77d868ed6e42b9ec5a403db857fc176b68ffb5962768de.mp3', 1071, '2026-09-14 10:38:49.459669', 'f344003acb00de4b4af371ca27428713c403fd38d85e0d8a0d1303ae1c83e1fb', 'validated', '{"audio_key":"118eec64e56e70bf4b77d868ed6e42b9ec5a403db857fc176b68ffb5962768de","entity_key":"wf_hotel_and_stay_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f344003acb00de4b4af371ca27428713c403fd38d85e0d8a0d1303ae1c83e1fb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/118eec64e56e70bf4b77d868ed6e42b9ec5a403db857fc176b68ffb5962768de.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_hotel_and_stay_06 -> audio/generated/fr-FR/lexical/15aac792e955eaa4fe57220dfba34bd8043c06d28bd0a2d8e5f463866d5ac1d8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('27651633-ccfd-5d91-b2d7-caa589f50680', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_hotel_and_stay_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '48e41c1f51751f5f2664d8bf8631e70619fc2f7a3cb3ccfb3d8d931d9bd99243'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c8642484-e276-5f57-b717-c7bbde6ad047', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('27651633-ccfd-5d91-b2d7-caa589f50680', 1), '48e41c1f51751f5f2664d8bf8631e70619fc2f7a3cb3ccfb3d8d931d9bd99243',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/15aac792e955eaa4fe57220dfba34bd8043c06d28bd0a2d8e5f463866d5ac1d8.mp3', 966, '2026-09-14 10:38:49.740136', 'fdaa5fcd7edd92459dd4ac69b3f2b58451bcf1f170639165c2b46624cf3e6ffa', 'validated', '{"audio_key":"15aac792e955eaa4fe57220dfba34bd8043c06d28bd0a2d8e5f463866d5ac1d8","entity_key":"lx_hotel_and_stay_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"fdaa5fcd7edd92459dd4ac69b3f2b58451bcf1f170639165c2b46624cf3e6ffa","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/15aac792e955eaa4fe57220dfba34bd8043c06d28bd0a2d8e5f463866d5ac1d8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_hotel_and_stay_06 -> audio/generated/fr-FR/lexical/15aac792e955eaa4fe57220dfba34bd8043c06d28bd0a2d8e5f463866d5ac1d8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8b3cddc4-484d-544d-bb69-2d5f9310c158', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_hotel_and_stay_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '48e41c1f51751f5f2664d8bf8631e70619fc2f7a3cb3ccfb3d8d931d9bd99243'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4efcdd20-3df7-57e2-a8f8-9a9492216b0e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8b3cddc4-484d-544d-bb69-2d5f9310c158', 1), '48e41c1f51751f5f2664d8bf8631e70619fc2f7a3cb3ccfb3d8d931d9bd99243',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/15aac792e955eaa4fe57220dfba34bd8043c06d28bd0a2d8e5f463866d5ac1d8.mp3', 966, '2026-09-14 10:38:49.740136', 'fdaa5fcd7edd92459dd4ac69b3f2b58451bcf1f170639165c2b46624cf3e6ffa', 'validated', '{"audio_key":"15aac792e955eaa4fe57220dfba34bd8043c06d28bd0a2d8e5f463866d5ac1d8","entity_key":"wf_hotel_and_stay_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"fdaa5fcd7edd92459dd4ac69b3f2b58451bcf1f170639165c2b46624cf3e6ffa","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/15aac792e955eaa4fe57220dfba34bd8043c06d28bd0a2d8e5f463866d5ac1d8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_food_and_quantities_02 -> audio/generated/fr-FR/lexical/1a709f38531045bd494588ce4793e33ab39e3c0e824f85eeef497690d195efc8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b417afda-5ab3-54cd-9957-e62c1ea77080', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_food_and_quantities_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dc39eb6569fb759af68974312f0e3e73d6cbb8176efc64ec24103ee605f0230b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8222c0bb-9595-50b1-b6c0-dbeed8693c8c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b417afda-5ab3-54cd-9957-e62c1ea77080', 1), 'dc39eb6569fb759af68974312f0e3e73d6cbb8176efc64ec24103ee605f0230b',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/1a709f38531045bd494588ce4793e33ab39e3c0e824f85eeef497690d195efc8.mp3', 966, '2026-09-14 10:38:50.390145', '6d4da43836dacab047f35507d79ed1435488b8ae045b6240d3a9ab060fcef8cc', 'validated', '{"audio_key":"1a709f38531045bd494588ce4793e33ab39e3c0e824f85eeef497690d195efc8","entity_key":"lx_food_and_quantities_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6d4da43836dacab047f35507d79ed1435488b8ae045b6240d3a9ab060fcef8cc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/1a709f38531045bd494588ce4793e33ab39e3c0e824f85eeef497690d195efc8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_food_and_quantities_02 -> audio/generated/fr-FR/lexical/1a709f38531045bd494588ce4793e33ab39e3c0e824f85eeef497690d195efc8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8ad49524-c26e-5def-88bb-886f6ef8b356', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_food_and_quantities_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dc39eb6569fb759af68974312f0e3e73d6cbb8176efc64ec24103ee605f0230b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c51b559b-c9fd-5a75-bae5-d4ebf5219276', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8ad49524-c26e-5def-88bb-886f6ef8b356', 1), 'dc39eb6569fb759af68974312f0e3e73d6cbb8176efc64ec24103ee605f0230b',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/1a709f38531045bd494588ce4793e33ab39e3c0e824f85eeef497690d195efc8.mp3', 966, '2026-09-14 10:38:50.390145', '6d4da43836dacab047f35507d79ed1435488b8ae045b6240d3a9ab060fcef8cc', 'validated', '{"audio_key":"1a709f38531045bd494588ce4793e33ab39e3c0e824f85eeef497690d195efc8","entity_key":"wf_food_and_quantities_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6d4da43836dacab047f35507d79ed1435488b8ae045b6240d3a9ab060fcef8cc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/1a709f38531045bd494588ce4793e33ab39e3c0e824f85eeef497690d195efc8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_plans_and_invitations_05 -> audio/generated/fr-FR/lexical/281b930f492cb62cf7e639904cd6a0b79daef5c8d8c0f65f3c932eecf5d3651d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a0a29324-8d98-58de-b8c9-77938127df9c', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_plans_and_invitations_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6e4f8414f1d7936eff5b26746fd397ced0f83bf291ec54bc9b4f31a032b3aa61'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e1a0a33b-9c0c-5250-9061-edc4c587eb3b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a0a29324-8d98-58de-b8c9-77938127df9c', 1), '6e4f8414f1d7936eff5b26746fd397ced0f83bf291ec54bc9b4f31a032b3aa61',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/281b930f492cb62cf7e639904cd6a0b79daef5c8d8c0f65f3c932eecf5d3651d.mp3', 862, '2026-09-14 10:38:50.672644', '96a594df1e1ec259adb6dc967afe4dbf099a7bd95de2f72fe1816c387aa6113e', 'validated', '{"audio_key":"281b930f492cb62cf7e639904cd6a0b79daef5c8d8c0f65f3c932eecf5d3651d","entity_key":"lx_plans_and_invitations_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"96a594df1e1ec259adb6dc967afe4dbf099a7bd95de2f72fe1816c387aa6113e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/281b930f492cb62cf7e639904cd6a0b79daef5c8d8c0f65f3c932eecf5d3651d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_plans_and_invitations_05 -> audio/generated/fr-FR/lexical/281b930f492cb62cf7e639904cd6a0b79daef5c8d8c0f65f3c932eecf5d3651d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('abf6f685-4f4c-54a9-ae3b-dd9c6ddde015', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_plans_and_invitations_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6e4f8414f1d7936eff5b26746fd397ced0f83bf291ec54bc9b4f31a032b3aa61'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7c55d0ab-4756-58c2-927b-03553d6cd2dd', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('abf6f685-4f4c-54a9-ae3b-dd9c6ddde015', 1), '6e4f8414f1d7936eff5b26746fd397ced0f83bf291ec54bc9b4f31a032b3aa61',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/281b930f492cb62cf7e639904cd6a0b79daef5c8d8c0f65f3c932eecf5d3651d.mp3', 862, '2026-09-14 10:38:50.672644', '96a594df1e1ec259adb6dc967afe4dbf099a7bd95de2f72fe1816c387aa6113e', 'validated', '{"audio_key":"281b930f492cb62cf7e639904cd6a0b79daef5c8d8c0f65f3c932eecf5d3651d","entity_key":"wf_plans_and_invitations_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"96a594df1e1ec259adb6dc967afe4dbf099a7bd95de2f72fe1816c387aa6113e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/281b930f492cb62cf7e639904cd6a0b79daef5c8d8c0f65f3c932eecf5d3651d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_work_and_obligations_03 -> audio/generated/fr-FR/lexical/282283cbe22e464c4c92e3d332e340ccf705362e150d7bb621aad0e345414a9c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5ff7100d-967e-5b7e-a857-ab7528accf31', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_work_and_obligations_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b0f0c801b72a14685489d8d4991c7aff21cedd6fc8fd9637459316a6c44e0e06'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('059be6aa-39f0-5402-9459-1a4f59c8aa34', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5ff7100d-967e-5b7e-a857-ab7528accf31', 1), 'b0f0c801b72a14685489d8d4991c7aff21cedd6fc8fd9637459316a6c44e0e06',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/282283cbe22e464c4c92e3d332e340ccf705362e150d7bb621aad0e345414a9c.mp3', 1097, '2026-09-14 10:38:51.321981', '997f14850afa269e1032f392147131d255d13659181fbe860738e035ec5868c1', 'validated', '{"audio_key":"282283cbe22e464c4c92e3d332e340ccf705362e150d7bb621aad0e345414a9c","entity_key":"lx_work_and_obligations_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"997f14850afa269e1032f392147131d255d13659181fbe860738e035ec5868c1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/282283cbe22e464c4c92e3d332e340ccf705362e150d7bb621aad0e345414a9c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_work_and_obligations_03 -> audio/generated/fr-FR/lexical/282283cbe22e464c4c92e3d332e340ccf705362e150d7bb621aad0e345414a9c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f46dfae3-a9bc-50a9-b139-4ce7b69132a9', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_work_and_obligations_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b0f0c801b72a14685489d8d4991c7aff21cedd6fc8fd9637459316a6c44e0e06'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a668ee15-9275-5978-82ec-2938e820e93f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f46dfae3-a9bc-50a9-b139-4ce7b69132a9', 1), 'b0f0c801b72a14685489d8d4991c7aff21cedd6fc8fd9637459316a6c44e0e06',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/282283cbe22e464c4c92e3d332e340ccf705362e150d7bb621aad0e345414a9c.mp3', 1097, '2026-09-14 10:38:51.321981', '997f14850afa269e1032f392147131d255d13659181fbe860738e035ec5868c1', 'validated', '{"audio_key":"282283cbe22e464c4c92e3d332e340ccf705362e150d7bb621aad0e345414a9c","entity_key":"wf_work_and_obligations_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"997f14850afa269e1032f392147131d255d13659181fbe860738e035ec5868c1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/282283cbe22e464c4c92e3d332e340ccf705362e150d7bb621aad0e345414a9c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_home_and_neighborhood_06 -> audio/generated/fr-FR/lexical/2c5b2054b8acca1e98ebcdc96e7d1a59079fd80d31ec6e10edd4c54726ff5d0f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('806f833c-b876-5c1d-98c5-20034e8deaa9', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_home_and_neighborhood_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bc4ca3478d0055c36aee02766d9e79dc0f0f58cc5d5b39aac2137d8f8e3176ed'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('81d7729d-37f8-52d7-9659-20f931c63ad0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('806f833c-b876-5c1d-98c5-20034e8deaa9', 1), 'bc4ca3478d0055c36aee02766d9e79dc0f0f58cc5d5b39aac2137d8f8e3176ed',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/2c5b2054b8acca1e98ebcdc96e7d1a59079fd80d31ec6e10edd4c54726ff5d0f.mp3', 1018, '2026-09-14 10:38:51.615447', '8caa911bf1f1a3eb46ea1a927d31dcc36df132458029772ce0a5933dc86a8415', 'validated', '{"audio_key":"2c5b2054b8acca1e98ebcdc96e7d1a59079fd80d31ec6e10edd4c54726ff5d0f","entity_key":"lx_home_and_neighborhood_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8caa911bf1f1a3eb46ea1a927d31dcc36df132458029772ce0a5933dc86a8415","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/2c5b2054b8acca1e98ebcdc96e7d1a59079fd80d31ec6e10edd4c54726ff5d0f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_home_and_neighborhood_06 -> audio/generated/fr-FR/lexical/2c5b2054b8acca1e98ebcdc96e7d1a59079fd80d31ec6e10edd4c54726ff5d0f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0accea15-e08f-588e-83e3-36be78d2fb9e', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_home_and_neighborhood_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bc4ca3478d0055c36aee02766d9e79dc0f0f58cc5d5b39aac2137d8f8e3176ed'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0a116556-6526-5a57-a4f0-6d8761ac37e1', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0accea15-e08f-588e-83e3-36be78d2fb9e', 1), 'bc4ca3478d0055c36aee02766d9e79dc0f0f58cc5d5b39aac2137d8f8e3176ed',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/2c5b2054b8acca1e98ebcdc96e7d1a59079fd80d31ec6e10edd4c54726ff5d0f.mp3', 1018, '2026-09-14 10:38:51.615447', '8caa911bf1f1a3eb46ea1a927d31dcc36df132458029772ce0a5933dc86a8415', 'validated', '{"audio_key":"2c5b2054b8acca1e98ebcdc96e7d1a59079fd80d31ec6e10edd4c54726ff5d0f","entity_key":"wf_home_and_neighborhood_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8caa911bf1f1a3eb46ea1a927d31dcc36df132458029772ce0a5933dc86a8415","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/2c5b2054b8acca1e98ebcdc96e7d1a59079fd80d31ec6e10edd4c54726ff5d0f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_plans_and_invitations_01 -> audio/generated/fr-FR/lexical/32ab3ece9f6d58f3f4ffa00a982818b97efa71b8ba40d378abf574aadbacf6c6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('645e467a-42e4-58a7-806d-92190f230bd7', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_plans_and_invitations_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f0a02946d0ae34540b4bd459f9597b350cba34a89fba53ce995a956aa71186c0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c52fe404-ba13-558d-adfc-207585037cd1', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('645e467a-42e4-58a7-806d-92190f230bd7', 1), 'f0a02946d0ae34540b4bd459f9597b350cba34a89fba53ce995a956aa71186c0',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/32ab3ece9f6d58f3f4ffa00a982818b97efa71b8ba40d378abf574aadbacf6c6.mp3', 1071, '2026-09-14 10:38:52.260153', '1844256041c53bfb78de27925483be528d65308754cbd65da4fee7fbaef92d96', 'validated', '{"audio_key":"32ab3ece9f6d58f3f4ffa00a982818b97efa71b8ba40d378abf574aadbacf6c6","entity_key":"lx_plans_and_invitations_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1844256041c53bfb78de27925483be528d65308754cbd65da4fee7fbaef92d96","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/32ab3ece9f6d58f3f4ffa00a982818b97efa71b8ba40d378abf574aadbacf6c6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_plans_and_invitations_01 -> audio/generated/fr-FR/lexical/32ab3ece9f6d58f3f4ffa00a982818b97efa71b8ba40d378abf574aadbacf6c6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0c512be8-d902-59f8-af6c-e29688fc627c', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_plans_and_invitations_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f0a02946d0ae34540b4bd459f9597b350cba34a89fba53ce995a956aa71186c0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('44e03e65-9a4e-594c-ab64-bc409aaf2be1', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0c512be8-d902-59f8-af6c-e29688fc627c', 1), 'f0a02946d0ae34540b4bd459f9597b350cba34a89fba53ce995a956aa71186c0',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/32ab3ece9f6d58f3f4ffa00a982818b97efa71b8ba40d378abf574aadbacf6c6.mp3', 1071, '2026-09-14 10:38:52.260153', '1844256041c53bfb78de27925483be528d65308754cbd65da4fee7fbaef92d96', 'validated', '{"audio_key":"32ab3ece9f6d58f3f4ffa00a982818b97efa71b8ba40d378abf574aadbacf6c6","entity_key":"wf_plans_and_invitations_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1844256041c53bfb78de27925483be528d65308754cbd65da4fee7fbaef92d96","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/32ab3ece9f6d58f3f4ffa00a982818b97efa71b8ba40d378abf574aadbacf6c6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_a2_problem_solving_capstone_05 -> audio/generated/fr-FR/lexical/38d23f524c91f9f1469fc335f56b7bc031f2105b1ef9f500dd6a620070d4fa28.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('bbb8773d-976e-5f37-bd95-ef634c8b7b34', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_a2_problem_solving_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8a4d1d60e4db47532b0a394849cba58bdd780c6b226152cfef8fd051639ac1b7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('73264ea9-2251-5532-93eb-26864afbb29a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('bbb8773d-976e-5f37-bd95-ef634c8b7b34', 1), '8a4d1d60e4db47532b0a394849cba58bdd780c6b226152cfef8fd051639ac1b7',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/38d23f524c91f9f1469fc335f56b7bc031f2105b1ef9f500dd6a620070d4fa28.mp3', 1018, '2026-09-14 10:38:52.555923', 'c17caa8c25eafbcae94ef7345f67efa1e6f061a0da4fec73af791055165b2a2f', 'validated', '{"audio_key":"38d23f524c91f9f1469fc335f56b7bc031f2105b1ef9f500dd6a620070d4fa28","entity_key":"lx_a2_problem_solving_capstone_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c17caa8c25eafbcae94ef7345f67efa1e6f061a0da4fec73af791055165b2a2f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/38d23f524c91f9f1469fc335f56b7bc031f2105b1ef9f500dd6a620070d4fa28.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_a2_problem_solving_capstone_05 -> audio/generated/fr-FR/lexical/38d23f524c91f9f1469fc335f56b7bc031f2105b1ef9f500dd6a620070d4fa28.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('12a1f277-8767-5787-b2d2-17df6dc97c47', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_a2_problem_solving_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8a4d1d60e4db47532b0a394849cba58bdd780c6b226152cfef8fd051639ac1b7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d8b95547-1e40-5248-8181-c8dae7f7cf0c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('12a1f277-8767-5787-b2d2-17df6dc97c47', 1), '8a4d1d60e4db47532b0a394849cba58bdd780c6b226152cfef8fd051639ac1b7',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/38d23f524c91f9f1469fc335f56b7bc031f2105b1ef9f500dd6a620070d4fa28.mp3', 1018, '2026-09-14 10:38:52.555923', 'c17caa8c25eafbcae94ef7345f67efa1e6f061a0da4fec73af791055165b2a2f', 'validated', '{"audio_key":"38d23f524c91f9f1469fc335f56b7bc031f2105b1ef9f500dd6a620070d4fa28","entity_key":"wf_a2_problem_solving_capstone_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c17caa8c25eafbcae94ef7345f67efa1e6f061a0da4fec73af791055165b2a2f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/38d23f524c91f9f1469fc335f56b7bc031f2105b1ef9f500dd6a620070d4fa28.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_home_and_neighborhood_03 -> audio/generated/fr-FR/lexical/3eee79fa5fdebd36241bdaab3afcde62b673d44c80d51f0095061eecc2687233.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b09eba64-7b82-5cde-93e2-2ef94f9a6f41', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_home_and_neighborhood_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5d3e2e3548764a69649c2993cc217e5337d79bc7a2b354c61e6cb3fa6f5f098c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dbc04345-ed6e-592f-82fa-fd8e9c917d8f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b09eba64-7b82-5cde-93e2-2ef94f9a6f41', 1), '5d3e2e3548764a69649c2993cc217e5337d79bc7a2b354c61e6cb3fa6f5f098c',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/3eee79fa5fdebd36241bdaab3afcde62b673d44c80d51f0095061eecc2687233.mp3', 914, '2026-09-14 10:38:53.235247', '875f6743384835a5c95f424689068ba50391060edd78cde1ddf6df66843d80dd', 'validated', '{"audio_key":"3eee79fa5fdebd36241bdaab3afcde62b673d44c80d51f0095061eecc2687233","entity_key":"lx_home_and_neighborhood_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"875f6743384835a5c95f424689068ba50391060edd78cde1ddf6df66843d80dd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/3eee79fa5fdebd36241bdaab3afcde62b673d44c80d51f0095061eecc2687233.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_home_and_neighborhood_03 -> audio/generated/fr-FR/lexical/3eee79fa5fdebd36241bdaab3afcde62b673d44c80d51f0095061eecc2687233.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9a52af55-69d3-573e-86f0-b184d91968ee', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_home_and_neighborhood_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5d3e2e3548764a69649c2993cc217e5337d79bc7a2b354c61e6cb3fa6f5f098c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fab1b084-214b-52c2-8e30-a2ef79af02ad', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9a52af55-69d3-573e-86f0-b184d91968ee', 1), '5d3e2e3548764a69649c2993cc217e5337d79bc7a2b354c61e6cb3fa6f5f098c',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/3eee79fa5fdebd36241bdaab3afcde62b673d44c80d51f0095061eecc2687233.mp3', 914, '2026-09-14 10:38:53.235247', '875f6743384835a5c95f424689068ba50391060edd78cde1ddf6df66843d80dd', 'validated', '{"audio_key":"3eee79fa5fdebd36241bdaab3afcde62b673d44c80d51f0095061eecc2687233","entity_key":"wf_home_and_neighborhood_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"875f6743384835a5c95f424689068ba50391060edd78cde1ddf6df66843d80dd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/3eee79fa5fdebd36241bdaab3afcde62b673d44c80d51f0095061eecc2687233.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_health_and_pharmacy_04 -> audio/generated/fr-FR/lexical/40d99d08538d7adc6655fd3cf004aeeba7c6697a8f5cf4a3114fd5164ced92ca.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('798bbe26-3562-5f7f-8255-01a3c06ce18f', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_health_and_pharmacy_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f0596c3e649ca1f3eb0b245b17ea245c3258d49794e62fdab8741cb52d258276'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('59eeb36f-d32c-5424-a8c8-ab5fd0ac1ba3', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('798bbe26-3562-5f7f-8255-01a3c06ce18f', 1), 'f0596c3e649ca1f3eb0b245b17ea245c3258d49794e62fdab8741cb52d258276',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/40d99d08538d7adc6655fd3cf004aeeba7c6697a8f5cf4a3114fd5164ced92ca.mp3', 1018, '2026-09-14 10:38:53.499481', 'bbe57728671c2f09c6ed446ac79522359023a12007bdaa6ec1d6259fa7a912df', 'validated', '{"audio_key":"40d99d08538d7adc6655fd3cf004aeeba7c6697a8f5cf4a3114fd5164ced92ca","entity_key":"lx_health_and_pharmacy_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"bbe57728671c2f09c6ed446ac79522359023a12007bdaa6ec1d6259fa7a912df","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/40d99d08538d7adc6655fd3cf004aeeba7c6697a8f5cf4a3114fd5164ced92ca.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_health_and_pharmacy_04 -> audio/generated/fr-FR/lexical/40d99d08538d7adc6655fd3cf004aeeba7c6697a8f5cf4a3114fd5164ced92ca.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c824d75c-e950-5c84-8dba-761ba1556b21', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_health_and_pharmacy_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f0596c3e649ca1f3eb0b245b17ea245c3258d49794e62fdab8741cb52d258276'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1a5bbd81-a06f-5c65-87ac-8ca2131eb62a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c824d75c-e950-5c84-8dba-761ba1556b21', 1), 'f0596c3e649ca1f3eb0b245b17ea245c3258d49794e62fdab8741cb52d258276',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/40d99d08538d7adc6655fd3cf004aeeba7c6697a8f5cf4a3114fd5164ced92ca.mp3', 1018, '2026-09-14 10:38:53.499481', 'bbe57728671c2f09c6ed446ac79522359023a12007bdaa6ec1d6259fa7a912df', 'validated', '{"audio_key":"40d99d08538d7adc6655fd3cf004aeeba7c6697a8f5cf4a3114fd5164ced92ca","entity_key":"wf_health_and_pharmacy_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"bbe57728671c2f09c6ed446ac79522359023a12007bdaa6ec1d6259fa7a912df","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/40d99d08538d7adc6655fd3cf004aeeba7c6697a8f5cf4a3114fd5164ced92ca.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_plans_and_invitations_06 -> audio/generated/fr-FR/lexical/4a6921b37ca49fffa9b57c36cc69c27aacc81de21e23d6d93511afaa42ffd21e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('53d17cc0-b145-5d36-8f49-87d2f8a2bcc6', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_plans_and_invitations_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '19a8459b679be65e25f2c2b50a329ce114bb0888afd5afb9130c0b4fdb354d71'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('50498006-ff2a-5d55-84ab-88c038b25d1b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('53d17cc0-b145-5d36-8f49-87d2f8a2bcc6', 1), '19a8459b679be65e25f2c2b50a329ce114bb0888afd5afb9130c0b4fdb354d71',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/4a6921b37ca49fffa9b57c36cc69c27aacc81de21e23d6d93511afaa42ffd21e.mp3', 1097, '2026-09-14 10:38:54.174461', '82bc668d742b1128960fee8c4ab067230de4ffe69bc5a40ba7042d326c55ce27', 'validated', '{"audio_key":"4a6921b37ca49fffa9b57c36cc69c27aacc81de21e23d6d93511afaa42ffd21e","entity_key":"lx_plans_and_invitations_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"82bc668d742b1128960fee8c4ab067230de4ffe69bc5a40ba7042d326c55ce27","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/4a6921b37ca49fffa9b57c36cc69c27aacc81de21e23d6d93511afaa42ffd21e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_plans_and_invitations_06 -> audio/generated/fr-FR/lexical/4a6921b37ca49fffa9b57c36cc69c27aacc81de21e23d6d93511afaa42ffd21e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0f4ed3b4-5daa-5331-843a-5eb631764492', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_plans_and_invitations_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '19a8459b679be65e25f2c2b50a329ce114bb0888afd5afb9130c0b4fdb354d71'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cfaf0e1c-1756-5921-8989-0c5efc142124', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0f4ed3b4-5daa-5331-843a-5eb631764492', 1), '19a8459b679be65e25f2c2b50a329ce114bb0888afd5afb9130c0b4fdb354d71',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/4a6921b37ca49fffa9b57c36cc69c27aacc81de21e23d6d93511afaa42ffd21e.mp3', 1097, '2026-09-14 10:38:54.174461', '82bc668d742b1128960fee8c4ab067230de4ffe69bc5a40ba7042d326c55ce27', 'validated', '{"audio_key":"4a6921b37ca49fffa9b57c36cc69c27aacc81de21e23d6d93511afaa42ffd21e","entity_key":"wf_plans_and_invitations_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"82bc668d742b1128960fee8c4ab067230de4ffe69bc5a40ba7042d326c55ce27","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/4a6921b37ca49fffa9b57c36cc69c27aacc81de21e23d6d93511afaa42ffd21e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_yesterday_and_past_06 -> audio/generated/fr-FR/lexical/4a8f1e60e1c9a28d99e08b33ffb36323e515eb13a8aa9f5cc6d30cc291357fe7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('dbb4c6e9-0ebd-508c-9ad5-d3a3118eaf27', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_yesterday_and_past_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '80d6d96bc6f59cb8a238322fbe2c4bf61a46ffbfb3f5bbcc3216ef26f0d1f937'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8a06789c-1c18-5b89-87ab-6d5a58b7a34d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('dbb4c6e9-0ebd-508c-9ad5-d3a3118eaf27', 1), '80d6d96bc6f59cb8a238322fbe2c4bf61a46ffbfb3f5bbcc3216ef26f0d1f937',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/4a8f1e60e1c9a28d99e08b33ffb36323e515eb13a8aa9f5cc6d30cc291357fe7.mp3', 862, '2026-09-14 09:42:01.069189', 'be5bc53d3c7186172ac2567f65afc475cbc799b8133a2943a79af89f7c632d63', 'validated', '{"audio_key":"4a8f1e60e1c9a28d99e08b33ffb36323e515eb13a8aa9f5cc6d30cc291357fe7","entity_key":"lx_yesterday_and_past_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"be5bc53d3c7186172ac2567f65afc475cbc799b8133a2943a79af89f7c632d63","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/4a8f1e60e1c9a28d99e08b33ffb36323e515eb13a8aa9f5cc6d30cc291357fe7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_yesterday_and_past_06 -> audio/generated/fr-FR/lexical/4a8f1e60e1c9a28d99e08b33ffb36323e515eb13a8aa9f5cc6d30cc291357fe7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e2aaee3a-e491-5040-89ff-247e34e5af46', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_yesterday_and_past_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '80d6d96bc6f59cb8a238322fbe2c4bf61a46ffbfb3f5bbcc3216ef26f0d1f937'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('25e0a15c-68b9-504a-8977-e5c1cad43b89', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e2aaee3a-e491-5040-89ff-247e34e5af46', 1), '80d6d96bc6f59cb8a238322fbe2c4bf61a46ffbfb3f5bbcc3216ef26f0d1f937',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/4a8f1e60e1c9a28d99e08b33ffb36323e515eb13a8aa9f5cc6d30cc291357fe7.mp3', 862, '2026-09-14 09:42:01.069189', 'be5bc53d3c7186172ac2567f65afc475cbc799b8133a2943a79af89f7c632d63', 'validated', '{"audio_key":"4a8f1e60e1c9a28d99e08b33ffb36323e515eb13a8aa9f5cc6d30cc291357fe7","entity_key":"wf_yesterday_and_past_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"be5bc53d3c7186172ac2567f65afc475cbc799b8133a2943a79af89f7c632d63","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/4a8f1e60e1c9a28d99e08b33ffb36323e515eb13a8aa9f5cc6d30cc291357fe7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_yesterday_and_past_02 -> audio/generated/fr-FR/lexical/4c1dfea7a83693ba25452582efea1f0fb768a91215d7372dda11b943169a9071.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('303b10e1-886b-55a8-81c8-79036b612c23', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_yesterday_and_past_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '351f2bcba3fba21ba3f2294f46b9fef20bccea375423a3249cccef7ce8d459ed'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a2e8ff46-238e-5092-b0cc-0da3b4ec84bf', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('303b10e1-886b-55a8-81c8-79036b612c23', 1), '351f2bcba3fba21ba3f2294f46b9fef20bccea375423a3249cccef7ce8d459ed',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/4c1dfea7a83693ba25452582efea1f0fb768a91215d7372dda11b943169a9071.mp3', 914, '2026-09-14 10:38:54.430293', '0d67ee326fb9d0524bc8393138cc83e1d244c0d5c8e1d2c5e885eed944ee7263', 'validated', '{"audio_key":"4c1dfea7a83693ba25452582efea1f0fb768a91215d7372dda11b943169a9071","entity_key":"lx_yesterday_and_past_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0d67ee326fb9d0524bc8393138cc83e1d244c0d5c8e1d2c5e885eed944ee7263","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/4c1dfea7a83693ba25452582efea1f0fb768a91215d7372dda11b943169a9071.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_yesterday_and_past_02 -> audio/generated/fr-FR/lexical/4c1dfea7a83693ba25452582efea1f0fb768a91215d7372dda11b943169a9071.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8184c862-0542-574f-9114-ef251c3066ba', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_yesterday_and_past_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '351f2bcba3fba21ba3f2294f46b9fef20bccea375423a3249cccef7ce8d459ed'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e7a02593-c186-5a23-855e-16dbeb5cba53', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8184c862-0542-574f-9114-ef251c3066ba', 1), '351f2bcba3fba21ba3f2294f46b9fef20bccea375423a3249cccef7ce8d459ed',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/4c1dfea7a83693ba25452582efea1f0fb768a91215d7372dda11b943169a9071.mp3', 914, '2026-09-14 10:38:54.430293', '0d67ee326fb9d0524bc8393138cc83e1d244c0d5c8e1d2c5e885eed944ee7263', 'validated', '{"audio_key":"4c1dfea7a83693ba25452582efea1f0fb768a91215d7372dda11b943169a9071","entity_key":"wf_yesterday_and_past_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0d67ee326fb9d0524bc8393138cc83e1d244c0d5c8e1d2c5e885eed944ee7263","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/4c1dfea7a83693ba25452582efea1f0fb768a91215d7372dda11b943169a9071.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_health_and_pharmacy_02 -> audio/generated/fr-FR/lexical/4e2a8441aa9adb7dae65edbe73ad8198beaadb68da1f6e1f4bbce33503ef1fb7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2c112bdc-c960-5638-bb63-78a565c05601', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_health_and_pharmacy_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '965518df8610468bd365de73a545b2885ddae60980d4494745b684bf07039fea'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4181d6b6-ef17-50a0-acbd-b25187f7cd68', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2c112bdc-c960-5638-bb63-78a565c05601', 1), '965518df8610468bd365de73a545b2885ddae60980d4494745b684bf07039fea',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/4e2a8441aa9adb7dae65edbe73ad8198beaadb68da1f6e1f4bbce33503ef1fb7.mp3', 966, '2026-09-14 10:38:55.100077', '8491d862c0f266952bf3bd61f6b0cd88e83d95c37e9638b848b4285323c0f802', 'validated', '{"audio_key":"4e2a8441aa9adb7dae65edbe73ad8198beaadb68da1f6e1f4bbce33503ef1fb7","entity_key":"lx_health_and_pharmacy_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8491d862c0f266952bf3bd61f6b0cd88e83d95c37e9638b848b4285323c0f802","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/4e2a8441aa9adb7dae65edbe73ad8198beaadb68da1f6e1f4bbce33503ef1fb7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_health_and_pharmacy_02 -> audio/generated/fr-FR/lexical/4e2a8441aa9adb7dae65edbe73ad8198beaadb68da1f6e1f4bbce33503ef1fb7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9a3cb051-1791-5607-9d8c-ad1593e9302b', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_health_and_pharmacy_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '965518df8610468bd365de73a545b2885ddae60980d4494745b684bf07039fea'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ccaea3c7-475c-5151-8db5-4f70e22daa7f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9a3cb051-1791-5607-9d8c-ad1593e9302b', 1), '965518df8610468bd365de73a545b2885ddae60980d4494745b684bf07039fea',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/4e2a8441aa9adb7dae65edbe73ad8198beaadb68da1f6e1f4bbce33503ef1fb7.mp3', 966, '2026-09-14 10:38:55.100077', '8491d862c0f266952bf3bd61f6b0cd88e83d95c37e9638b848b4285323c0f802', 'validated', '{"audio_key":"4e2a8441aa9adb7dae65edbe73ad8198beaadb68da1f6e1f4bbce33503ef1fb7","entity_key":"wf_health_and_pharmacy_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8491d862c0f266952bf3bd61f6b0cd88e83d95c37e9638b848b4285323c0f802","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/4e2a8441aa9adb7dae65edbe73ad8198beaadb68da1f6e1f4bbce33503ef1fb7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_home_and_neighborhood_04 -> audio/generated/fr-FR/lexical/54b6ec82bdd25a9445fd37faed493e0b81acd2c0caed1baee9cf059498e69b47.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('af71a3ab-33ba-5346-bf79-86593e7addc1', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_home_and_neighborhood_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e1bf9e06aa848b578fc12baf62217028926e08098f5d45e9303b97bf4d07b1b7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a9233e44-1e19-5ee7-977a-46f3329c1365', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('af71a3ab-33ba-5346-bf79-86593e7addc1', 1), 'e1bf9e06aa848b578fc12baf62217028926e08098f5d45e9303b97bf4d07b1b7',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/54b6ec82bdd25a9445fd37faed493e0b81acd2c0caed1baee9cf059498e69b47.mp3', 1071, '2026-09-14 10:38:55.390197', '32447246ababc86f8857b0b45450c1c871e2e3b5733f2e34303fdeb087daa7b1', 'validated', '{"audio_key":"54b6ec82bdd25a9445fd37faed493e0b81acd2c0caed1baee9cf059498e69b47","entity_key":"lx_home_and_neighborhood_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"32447246ababc86f8857b0b45450c1c871e2e3b5733f2e34303fdeb087daa7b1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/54b6ec82bdd25a9445fd37faed493e0b81acd2c0caed1baee9cf059498e69b47.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_home_and_neighborhood_04 -> audio/generated/fr-FR/lexical/54b6ec82bdd25a9445fd37faed493e0b81acd2c0caed1baee9cf059498e69b47.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8fd49a03-4bf3-53b4-a9b5-2dd62a01333e', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_home_and_neighborhood_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e1bf9e06aa848b578fc12baf62217028926e08098f5d45e9303b97bf4d07b1b7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b7d4f1e1-fc9e-5bae-9d76-ef6be1f7e5d8', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8fd49a03-4bf3-53b4-a9b5-2dd62a01333e', 1), 'e1bf9e06aa848b578fc12baf62217028926e08098f5d45e9303b97bf4d07b1b7',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/54b6ec82bdd25a9445fd37faed493e0b81acd2c0caed1baee9cf059498e69b47.mp3', 1071, '2026-09-14 10:38:55.390197', '32447246ababc86f8857b0b45450c1c871e2e3b5733f2e34303fdeb087daa7b1', 'validated', '{"audio_key":"54b6ec82bdd25a9445fd37faed493e0b81acd2c0caed1baee9cf059498e69b47","entity_key":"wf_home_and_neighborhood_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"32447246ababc86f8857b0b45450c1c871e2e3b5733f2e34303fdeb087daa7b1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/54b6ec82bdd25a9445fd37faed493e0b81acd2c0caed1baee9cf059498e69b47.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_a2_problem_solving_capstone_02 -> audio/generated/fr-FR/lexical/58e1a0436de87ef7fdf3b3bdc9f52b529e6dff2e032d76de0755d84f64aff89a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('4b49dbea-c75c-5ae1-ad8e-e56271fae386', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_a2_problem_solving_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '091cc840f0d11d1b0fffc025d5b980f06f8d37cd8019290e3f45ebc37b630e38'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('68faa1b8-53f1-5b83-aefc-7932aefac7c8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('4b49dbea-c75c-5ae1-ad8e-e56271fae386', 1), '091cc840f0d11d1b0fffc025d5b980f06f8d37cd8019290e3f45ebc37b630e38',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/58e1a0436de87ef7fdf3b3bdc9f52b529e6dff2e032d76de0755d84f64aff89a.mp3', 914, '2026-09-14 10:38:56.029997', 'd3696a4d538fbfff41a42a08bc0d8e1c0a0eeb3e987d733e2e2403b18585c0d5', 'validated', '{"audio_key":"58e1a0436de87ef7fdf3b3bdc9f52b529e6dff2e032d76de0755d84f64aff89a","entity_key":"lx_a2_problem_solving_capstone_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d3696a4d538fbfff41a42a08bc0d8e1c0a0eeb3e987d733e2e2403b18585c0d5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/58e1a0436de87ef7fdf3b3bdc9f52b529e6dff2e032d76de0755d84f64aff89a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_a2_problem_solving_capstone_02 -> audio/generated/fr-FR/lexical/58e1a0436de87ef7fdf3b3bdc9f52b529e6dff2e032d76de0755d84f64aff89a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d0298d3d-308e-550a-bb64-6639a14a4ed3', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_a2_problem_solving_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '091cc840f0d11d1b0fffc025d5b980f06f8d37cd8019290e3f45ebc37b630e38'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('33d7dd8f-469b-5b25-ab1e-540cea865c04', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d0298d3d-308e-550a-bb64-6639a14a4ed3', 1), '091cc840f0d11d1b0fffc025d5b980f06f8d37cd8019290e3f45ebc37b630e38',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/58e1a0436de87ef7fdf3b3bdc9f52b529e6dff2e032d76de0755d84f64aff89a.mp3', 914, '2026-09-14 10:38:56.029997', 'd3696a4d538fbfff41a42a08bc0d8e1c0a0eeb3e987d733e2e2403b18585c0d5', 'validated', '{"audio_key":"58e1a0436de87ef7fdf3b3bdc9f52b529e6dff2e032d76de0755d84f64aff89a","entity_key":"wf_a2_problem_solving_capstone_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d3696a4d538fbfff41a42a08bc0d8e1c0a0eeb3e987d733e2e2403b18585c0d5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/58e1a0436de87ef7fdf3b3bdc9f52b529e6dff2e032d76de0755d84f64aff89a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_work_and_obligations_02 -> audio/generated/fr-FR/lexical/61ba99d5298f0df763910b7577805756804740be467346e01b9131bca67f031e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6a892bf4-e6da-543b-b3ea-d132acd2c47b', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_work_and_obligations_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c6c84e31dfeb2de80979bc5a3bd17b427e766404be2f90f3d22d4dce2f8ceea8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0e0f89e8-b5f6-534a-be59-7ed8ec1ac41d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6a892bf4-e6da-543b-b3ea-d132acd2c47b', 1), 'c6c84e31dfeb2de80979bc5a3bd17b427e766404be2f90f3d22d4dce2f8ceea8',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/61ba99d5298f0df763910b7577805756804740be467346e01b9131bca67f031e.mp3', 966, '2026-09-14 10:38:56.313938', '5f390b1ef3bd3d3fb21bca810c1645785c4e272110aa1aa98e2b05ddaa5fa56c', 'validated', '{"audio_key":"61ba99d5298f0df763910b7577805756804740be467346e01b9131bca67f031e","entity_key":"lx_work_and_obligations_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5f390b1ef3bd3d3fb21bca810c1645785c4e272110aa1aa98e2b05ddaa5fa56c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/61ba99d5298f0df763910b7577805756804740be467346e01b9131bca67f031e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_work_and_obligations_02 -> audio/generated/fr-FR/lexical/61ba99d5298f0df763910b7577805756804740be467346e01b9131bca67f031e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('cbbf831e-9bac-57cf-b994-e84bde33f6ba', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_work_and_obligations_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c6c84e31dfeb2de80979bc5a3bd17b427e766404be2f90f3d22d4dce2f8ceea8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('192a213e-ce3d-5ca2-926f-a91d30888620', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('cbbf831e-9bac-57cf-b994-e84bde33f6ba', 1), 'c6c84e31dfeb2de80979bc5a3bd17b427e766404be2f90f3d22d4dce2f8ceea8',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/61ba99d5298f0df763910b7577805756804740be467346e01b9131bca67f031e.mp3', 966, '2026-09-14 10:38:56.313938', '5f390b1ef3bd3d3fb21bca810c1645785c4e272110aa1aa98e2b05ddaa5fa56c', 'validated', '{"audio_key":"61ba99d5298f0df763910b7577805756804740be467346e01b9131bca67f031e","entity_key":"wf_work_and_obligations_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5f390b1ef3bd3d3fb21bca810c1645785c4e272110aa1aa98e2b05ddaa5fa56c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/61ba99d5298f0df763910b7577805756804740be467346e01b9131bca67f031e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_clothes_and_comparisons_01 -> audio/generated/fr-FR/lexical/644be0408362cb82ea7871b2061ba4283898ac6415f2e276e78bf9501908ba5b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('4b40ad47-2b92-5d14-9e0c-5f9831954f87', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_clothes_and_comparisons_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7e7ec7fcb523cdea889e4e640da876ae0cb8207c02249ce0f9eb7659088fb238'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('64ddb7f1-5d68-5440-97c7-e24edd3f6953', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('4b40ad47-2b92-5d14-9e0c-5f9831954f87', 1), '7e7ec7fcb523cdea889e4e640da876ae0cb8207c02249ce0f9eb7659088fb238',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/644be0408362cb82ea7871b2061ba4283898ac6415f2e276e78bf9501908ba5b.mp3', 1071, '2026-09-14 10:38:56.961132', '267160d82d03899ede569eeaf1911793ed6b59e10b6fbfd6ca90495fa926c904', 'validated', '{"audio_key":"644be0408362cb82ea7871b2061ba4283898ac6415f2e276e78bf9501908ba5b","entity_key":"lx_clothes_and_comparisons_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"267160d82d03899ede569eeaf1911793ed6b59e10b6fbfd6ca90495fa926c904","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/644be0408362cb82ea7871b2061ba4283898ac6415f2e276e78bf9501908ba5b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_clothes_and_comparisons_01 -> audio/generated/fr-FR/lexical/644be0408362cb82ea7871b2061ba4283898ac6415f2e276e78bf9501908ba5b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b4a6e190-8dec-5b76-9815-fea211e48a63', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_clothes_and_comparisons_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7e7ec7fcb523cdea889e4e640da876ae0cb8207c02249ce0f9eb7659088fb238'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4892848e-6cf2-55ed-a90e-e285e25eb8f2', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b4a6e190-8dec-5b76-9815-fea211e48a63', 1), '7e7ec7fcb523cdea889e4e640da876ae0cb8207c02249ce0f9eb7659088fb238',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/644be0408362cb82ea7871b2061ba4283898ac6415f2e276e78bf9501908ba5b.mp3', 1071, '2026-09-14 10:38:56.961132', '267160d82d03899ede569eeaf1911793ed6b59e10b6fbfd6ca90495fa926c904', 'validated', '{"audio_key":"644be0408362cb82ea7871b2061ba4283898ac6415f2e276e78bf9501908ba5b","entity_key":"wf_clothes_and_comparisons_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"267160d82d03899ede569eeaf1911793ed6b59e10b6fbfd6ca90495fa926c904","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/644be0408362cb82ea7871b2061ba4283898ac6415f2e276e78bf9501908ba5b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_food_and_quantities_04 -> audio/generated/fr-FR/lexical/66ac220918dfd81d7b8f9c84c66efb01d945e8d343551eac38b79485c3e1d8bc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5625cebe-fe2d-5ef0-a437-369af1cef5f8', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_food_and_quantities_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '703c2102754a9d567ac3bd4845ed70dcd51ce319e85b43845e5b421a0c322920'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1bb0a581-fff0-56cf-a5b6-b4faa9894e25', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5625cebe-fe2d-5ef0-a437-369af1cef5f8', 1), '703c2102754a9d567ac3bd4845ed70dcd51ce319e85b43845e5b421a0c322920',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/66ac220918dfd81d7b8f9c84c66efb01d945e8d343551eac38b79485c3e1d8bc.mp3', 862, '2026-09-14 10:38:57.244146', 'ca48f79e88e17749d5b96e0c09d343ff30bf20dd8fb9807519baac61427f11bb', 'validated', '{"audio_key":"66ac220918dfd81d7b8f9c84c66efb01d945e8d343551eac38b79485c3e1d8bc","entity_key":"lx_food_and_quantities_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ca48f79e88e17749d5b96e0c09d343ff30bf20dd8fb9807519baac61427f11bb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/66ac220918dfd81d7b8f9c84c66efb01d945e8d343551eac38b79485c3e1d8bc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_food_and_quantities_04 -> audio/generated/fr-FR/lexical/66ac220918dfd81d7b8f9c84c66efb01d945e8d343551eac38b79485c3e1d8bc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1dea9cd2-6d51-5596-8769-2e453b18df87', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_food_and_quantities_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '703c2102754a9d567ac3bd4845ed70dcd51ce319e85b43845e5b421a0c322920'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('36985d85-5e9a-57d4-b2c6-2f0e07878bd1', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1dea9cd2-6d51-5596-8769-2e453b18df87', 1), '703c2102754a9d567ac3bd4845ed70dcd51ce319e85b43845e5b421a0c322920',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/66ac220918dfd81d7b8f9c84c66efb01d945e8d343551eac38b79485c3e1d8bc.mp3', 862, '2026-09-14 10:38:57.244146', 'ca48f79e88e17749d5b96e0c09d343ff30bf20dd8fb9807519baac61427f11bb', 'validated', '{"audio_key":"66ac220918dfd81d7b8f9c84c66efb01d945e8d343551eac38b79485c3e1d8bc","entity_key":"wf_food_and_quantities_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ca48f79e88e17749d5b96e0c09d343ff30bf20dd8fb9807519baac61427f11bb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/66ac220918dfd81d7b8f9c84c66efb01d945e8d343551eac38b79485c3e1d8bc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_work_and_obligations_01 -> audio/generated/fr-FR/lexical/678a7adfd7bd4567893203f201a645d5630a246e7510c5cf30798c74edda2a75.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('11b73cbb-72e3-5890-9a65-ef9175ddab1b', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_work_and_obligations_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e313e381220b562a201498c0d1cda79a49a1fb6254044a35ed563941aa43f932'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('10beea4c-be7b-5d5f-9dba-1fdada00f97b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('11b73cbb-72e3-5890-9a65-ef9175ddab1b', 1), 'e313e381220b562a201498c0d1cda79a49a1fb6254044a35ed563941aa43f932',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/678a7adfd7bd4567893203f201a645d5630a246e7510c5cf30798c74edda2a75.mp3', 1018, '2026-09-14 10:38:57.882296', 'c731536cf6605898e434aea575609d18200a4a16283ad5ce0b4d82ca6deb2173', 'validated', '{"audio_key":"678a7adfd7bd4567893203f201a645d5630a246e7510c5cf30798c74edda2a75","entity_key":"lx_work_and_obligations_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c731536cf6605898e434aea575609d18200a4a16283ad5ce0b4d82ca6deb2173","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/678a7adfd7bd4567893203f201a645d5630a246e7510c5cf30798c74edda2a75.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_work_and_obligations_01 -> audio/generated/fr-FR/lexical/678a7adfd7bd4567893203f201a645d5630a246e7510c5cf30798c74edda2a75.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b426bbdc-0c62-5367-8b99-cf587f5dcdcf', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_work_and_obligations_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e313e381220b562a201498c0d1cda79a49a1fb6254044a35ed563941aa43f932'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('154b8e1d-080b-5162-93a1-0347afa6306a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b426bbdc-0c62-5367-8b99-cf587f5dcdcf', 1), 'e313e381220b562a201498c0d1cda79a49a1fb6254044a35ed563941aa43f932',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/678a7adfd7bd4567893203f201a645d5630a246e7510c5cf30798c74edda2a75.mp3', 1018, '2026-09-14 10:38:57.882296', 'c731536cf6605898e434aea575609d18200a4a16283ad5ce0b4d82ca6deb2173', 'validated', '{"audio_key":"678a7adfd7bd4567893203f201a645d5630a246e7510c5cf30798c74edda2a75","entity_key":"wf_work_and_obligations_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c731536cf6605898e434aea575609d18200a4a16283ad5ce0b4d82ca6deb2173","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/678a7adfd7bd4567893203f201a645d5630a246e7510c5cf30798c74edda2a75.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_opinions_and_media_06 -> audio/generated/fr-FR/lexical/6de7a82d0dedf34124c6df199e1e89fe22e9fb3abed5a774875c6f248d674eef.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1024112b-3cd2-5689-b769-7e41df9a7bdf', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_opinions_and_media_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '010a4e39b015b56834bb00257cec67ad1b7e0129d8ea5ad8e64be972999f5c29'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('add4b011-69cd-5271-b43b-d8fcf8ee3180', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1024112b-3cd2-5689-b769-7e41df9a7bdf', 1), '010a4e39b015b56834bb00257cec67ad1b7e0129d8ea5ad8e64be972999f5c29',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/6de7a82d0dedf34124c6df199e1e89fe22e9fb3abed5a774875c6f248d674eef.mp3', 914, '2026-09-14 10:38:58.220136', '4a872098d7ed6b0205e6bcca4c0f9ee4ac34997d42723ce271c86a87703c874b', 'validated', '{"audio_key":"6de7a82d0dedf34124c6df199e1e89fe22e9fb3abed5a774875c6f248d674eef","entity_key":"lx_opinions_and_media_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4a872098d7ed6b0205e6bcca4c0f9ee4ac34997d42723ce271c86a87703c874b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/6de7a82d0dedf34124c6df199e1e89fe22e9fb3abed5a774875c6f248d674eef.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_opinions_and_media_06 -> audio/generated/fr-FR/lexical/6de7a82d0dedf34124c6df199e1e89fe22e9fb3abed5a774875c6f248d674eef.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2f6f1577-d52e-58f6-9c8e-24c6c0feb3bb', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_opinions_and_media_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '010a4e39b015b56834bb00257cec67ad1b7e0129d8ea5ad8e64be972999f5c29'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('93f5e62d-fff2-576f-9e65-ef6617079548', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2f6f1577-d52e-58f6-9c8e-24c6c0feb3bb', 1), '010a4e39b015b56834bb00257cec67ad1b7e0129d8ea5ad8e64be972999f5c29',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/6de7a82d0dedf34124c6df199e1e89fe22e9fb3abed5a774875c6f248d674eef.mp3', 914, '2026-09-14 10:38:58.220136', '4a872098d7ed6b0205e6bcca4c0f9ee4ac34997d42723ce271c86a87703c874b', 'validated', '{"audio_key":"6de7a82d0dedf34124c6df199e1e89fe22e9fb3abed5a774875c6f248d674eef","entity_key":"wf_opinions_and_media_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4a872098d7ed6b0205e6bcca4c0f9ee4ac34997d42723ce271c86a87703c874b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/6de7a82d0dedf34124c6df199e1e89fe22e9fb3abed5a774875c6f248d674eef.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_a2_problem_solving_capstone_01 -> audio/generated/fr-FR/lexical/6ed7b992058afac94b2ee2b78cae43c12b99df0a6baab6cd32d33fb23617b68e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ddaa47c9-ccb8-58df-b90a-cc0b87d1b56a', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_a2_problem_solving_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '158869a97379229b7681efae9d7f9c9214134e836d649ba53477c0c111414d59'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a8884a7f-2b27-580c-ab3b-3264e5d8d71e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ddaa47c9-ccb8-58df-b90a-cc0b87d1b56a', 1), '158869a97379229b7681efae9d7f9c9214134e836d649ba53477c0c111414d59',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/6ed7b992058afac94b2ee2b78cae43c12b99df0a6baab6cd32d33fb23617b68e.mp3', 1018, '2026-09-14 10:38:58.825022', '24999d804cc860e8876bf20f5dd820274f5047e811e4304f2500488a34f4d201', 'validated', '{"audio_key":"6ed7b992058afac94b2ee2b78cae43c12b99df0a6baab6cd32d33fb23617b68e","entity_key":"lx_a2_problem_solving_capstone_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"24999d804cc860e8876bf20f5dd820274f5047e811e4304f2500488a34f4d201","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/6ed7b992058afac94b2ee2b78cae43c12b99df0a6baab6cd32d33fb23617b68e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_a2_problem_solving_capstone_01 -> audio/generated/fr-FR/lexical/6ed7b992058afac94b2ee2b78cae43c12b99df0a6baab6cd32d33fb23617b68e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('66819311-773e-5453-811d-e66046f6fa1d', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_a2_problem_solving_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '158869a97379229b7681efae9d7f9c9214134e836d649ba53477c0c111414d59'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8af52fc7-064f-5e32-bea3-f1bb378f4647', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('66819311-773e-5453-811d-e66046f6fa1d', 1), '158869a97379229b7681efae9d7f9c9214134e836d649ba53477c0c111414d59',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/6ed7b992058afac94b2ee2b78cae43c12b99df0a6baab6cd32d33fb23617b68e.mp3', 1018, '2026-09-14 10:38:58.825022', '24999d804cc860e8876bf20f5dd820274f5047e811e4304f2500488a34f4d201', 'validated', '{"audio_key":"6ed7b992058afac94b2ee2b78cae43c12b99df0a6baab6cd32d33fb23617b68e","entity_key":"wf_a2_problem_solving_capstone_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"24999d804cc860e8876bf20f5dd820274f5047e811e4304f2500488a34f4d201","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/6ed7b992058afac94b2ee2b78cae43c12b99df0a6baab6cd32d33fb23617b68e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_health_and_pharmacy_03 -> audio/generated/fr-FR/lexical/704c104801271647e61905df479f2a006064a5f98f1d8428267448d75554cf6d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('74b5a883-93f1-550b-86c9-7b722478859b', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_health_and_pharmacy_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '327cea3578111f99da9912e86751a4d9953667dd8eac4e9b3b940175d7b90763'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('623b8db3-8972-5dfe-8630-e81e8194cdde', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('74b5a883-93f1-550b-86c9-7b722478859b', 1), '327cea3578111f99da9912e86751a4d9953667dd8eac4e9b3b940175d7b90763',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/704c104801271647e61905df479f2a006064a5f98f1d8428267448d75554cf6d.mp3', 1097, '2026-09-14 10:38:59.159104', '3d63feec5788317ccfbcdedd9276d59c13533c8ac6ab4a578b18b81dc99b800c', 'validated', '{"audio_key":"704c104801271647e61905df479f2a006064a5f98f1d8428267448d75554cf6d","entity_key":"lx_health_and_pharmacy_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3d63feec5788317ccfbcdedd9276d59c13533c8ac6ab4a578b18b81dc99b800c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/704c104801271647e61905df479f2a006064a5f98f1d8428267448d75554cf6d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_health_and_pharmacy_03 -> audio/generated/fr-FR/lexical/704c104801271647e61905df479f2a006064a5f98f1d8428267448d75554cf6d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('01d6c569-190e-5d11-8328-032f4c02965a', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_health_and_pharmacy_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '327cea3578111f99da9912e86751a4d9953667dd8eac4e9b3b940175d7b90763'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('863014b8-36c0-56ee-ada2-ca13e88ab641', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('01d6c569-190e-5d11-8328-032f4c02965a', 1), '327cea3578111f99da9912e86751a4d9953667dd8eac4e9b3b940175d7b90763',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/704c104801271647e61905df479f2a006064a5f98f1d8428267448d75554cf6d.mp3', 1097, '2026-09-14 10:38:59.159104', '3d63feec5788317ccfbcdedd9276d59c13533c8ac6ab4a578b18b81dc99b800c', 'validated', '{"audio_key":"704c104801271647e61905df479f2a006064a5f98f1d8428267448d75554cf6d","entity_key":"wf_health_and_pharmacy_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3d63feec5788317ccfbcdedd9276d59c13533c8ac6ab4a578b18b81dc99b800c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/704c104801271647e61905df479f2a006064a5f98f1d8428267448d75554cf6d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_food_and_quantities_03 -> audio/generated/fr-FR/lexical/71f896b7ed544a85a9a3ddf8e9afb96ca6dda7b950447729853265cb1e67bdd2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('bad61188-77c8-506a-a48b-510263b289c9', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_food_and_quantities_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '54c5ccf0f305a9a1529df4ebb6ec53598c969dfd2e5a425144cda91a29a90c2a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('22e5f9cb-b170-57fd-b540-411931a15fbe', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('bad61188-77c8-506a-a48b-510263b289c9', 1), '54c5ccf0f305a9a1529df4ebb6ec53598c969dfd2e5a425144cda91a29a90c2a',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/71f896b7ed544a85a9a3ddf8e9afb96ca6dda7b950447729853265cb1e67bdd2.mp3', 914, '2026-09-14 10:38:59.758999', 'e87cea9a72da7def6f17708d6222244f17d9766a5c6a9781d325dedb04875221', 'validated', '{"audio_key":"71f896b7ed544a85a9a3ddf8e9afb96ca6dda7b950447729853265cb1e67bdd2","entity_key":"lx_food_and_quantities_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e87cea9a72da7def6f17708d6222244f17d9766a5c6a9781d325dedb04875221","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/71f896b7ed544a85a9a3ddf8e9afb96ca6dda7b950447729853265cb1e67bdd2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_food_and_quantities_03 -> audio/generated/fr-FR/lexical/71f896b7ed544a85a9a3ddf8e9afb96ca6dda7b950447729853265cb1e67bdd2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e46e1f76-d983-52da-9b7a-f2f438075629', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_food_and_quantities_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '54c5ccf0f305a9a1529df4ebb6ec53598c969dfd2e5a425144cda91a29a90c2a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4980b620-ae50-5573-8d7c-7df15476c4f6', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e46e1f76-d983-52da-9b7a-f2f438075629', 1), '54c5ccf0f305a9a1529df4ebb6ec53598c969dfd2e5a425144cda91a29a90c2a',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/71f896b7ed544a85a9a3ddf8e9afb96ca6dda7b950447729853265cb1e67bdd2.mp3', 914, '2026-09-14 10:38:59.758999', 'e87cea9a72da7def6f17708d6222244f17d9766a5c6a9781d325dedb04875221', 'validated', '{"audio_key":"71f896b7ed544a85a9a3ddf8e9afb96ca6dda7b950447729853265cb1e67bdd2","entity_key":"wf_food_and_quantities_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e87cea9a72da7def6f17708d6222244f17d9766a5c6a9781d325dedb04875221","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/71f896b7ed544a85a9a3ddf8e9afb96ca6dda7b950447729853265cb1e67bdd2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_hotel_and_stay_01 -> audio/generated/fr-FR/lexical/72fe569132a4f0fa429e01fd96012440f0f76bda51a06bb0fe520206ef49ef8a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('dc0e56b2-9501-5064-8f44-6b117c036b0d', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_hotel_and_stay_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '825773cdb00e69763c78a6d5c0d64ee75db9c746d1b717bf8d57e8f8dd89fbbb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1fb77ce1-3071-517d-9358-a4459fdc45df', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('dc0e56b2-9501-5064-8f44-6b117c036b0d', 1), '825773cdb00e69763c78a6d5c0d64ee75db9c746d1b717bf8d57e8f8dd89fbbb',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/72fe569132a4f0fa429e01fd96012440f0f76bda51a06bb0fe520206ef49ef8a.mp3', 1097, '2026-09-14 10:39:00.123876', '6d145075e55caf374a66d6f1583036c74d75eff5e90629fd2907f6167887fb00', 'validated', '{"audio_key":"72fe569132a4f0fa429e01fd96012440f0f76bda51a06bb0fe520206ef49ef8a","entity_key":"lx_hotel_and_stay_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6d145075e55caf374a66d6f1583036c74d75eff5e90629fd2907f6167887fb00","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/72fe569132a4f0fa429e01fd96012440f0f76bda51a06bb0fe520206ef49ef8a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_hotel_and_stay_01 -> audio/generated/fr-FR/lexical/72fe569132a4f0fa429e01fd96012440f0f76bda51a06bb0fe520206ef49ef8a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c25266de-ff47-506b-ad39-6a94688c1ccc', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_hotel_and_stay_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '825773cdb00e69763c78a6d5c0d64ee75db9c746d1b717bf8d57e8f8dd89fbbb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('54fb63aa-60e1-5d0e-90ad-188071d80f6e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c25266de-ff47-506b-ad39-6a94688c1ccc', 1), '825773cdb00e69763c78a6d5c0d64ee75db9c746d1b717bf8d57e8f8dd89fbbb',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/72fe569132a4f0fa429e01fd96012440f0f76bda51a06bb0fe520206ef49ef8a.mp3', 1097, '2026-09-14 10:39:00.123876', '6d145075e55caf374a66d6f1583036c74d75eff5e90629fd2907f6167887fb00', 'validated', '{"audio_key":"72fe569132a4f0fa429e01fd96012440f0f76bda51a06bb0fe520206ef49ef8a","entity_key":"wf_hotel_and_stay_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6d145075e55caf374a66d6f1583036c74d75eff5e90629fd2907f6167887fb00","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/72fe569132a4f0fa429e01fd96012440f0f76bda51a06bb0fe520206ef49ef8a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_opinions_and_media_05 -> audio/generated/fr-FR/lexical/81eba80ea54d8bd40818154f333440479a572ca6b84eb312ad73157a105cdfc3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('cd74dd2a-f4e1-51c0-b642-6c3eb3f8078c', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_opinions_and_media_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '73110050814e1e769dd25b000a7b7a1d55d8ee5a7041bfe56888c5188957516f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('474e18fa-8326-56a9-bb1f-354c9ff7b3b2', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('cd74dd2a-f4e1-51c0-b642-6c3eb3f8078c', 1), '73110050814e1e769dd25b000a7b7a1d55d8ee5a7041bfe56888c5188957516f',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/81eba80ea54d8bd40818154f333440479a572ca6b84eb312ad73157a105cdfc3.mp3', 1018, '2026-09-14 10:39:00.714057', 'b06fc09c5cfbe990da623f4343246aafbb1363990e7f4e4ee7441bd1ba9d849a', 'validated', '{"audio_key":"81eba80ea54d8bd40818154f333440479a572ca6b84eb312ad73157a105cdfc3","entity_key":"lx_opinions_and_media_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b06fc09c5cfbe990da623f4343246aafbb1363990e7f4e4ee7441bd1ba9d849a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/81eba80ea54d8bd40818154f333440479a572ca6b84eb312ad73157a105cdfc3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_opinions_and_media_05 -> audio/generated/fr-FR/lexical/81eba80ea54d8bd40818154f333440479a572ca6b84eb312ad73157a105cdfc3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3ff5d007-1976-561a-8b71-05abae2e8778', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_opinions_and_media_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '73110050814e1e769dd25b000a7b7a1d55d8ee5a7041bfe56888c5188957516f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7798fb15-1c81-582d-8833-41cfa7cd54ef', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3ff5d007-1976-561a-8b71-05abae2e8778', 1), '73110050814e1e769dd25b000a7b7a1d55d8ee5a7041bfe56888c5188957516f',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/81eba80ea54d8bd40818154f333440479a572ca6b84eb312ad73157a105cdfc3.mp3', 1018, '2026-09-14 10:39:00.714057', 'b06fc09c5cfbe990da623f4343246aafbb1363990e7f4e4ee7441bd1ba9d849a', 'validated', '{"audio_key":"81eba80ea54d8bd40818154f333440479a572ca6b84eb312ad73157a105cdfc3","entity_key":"wf_opinions_and_media_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b06fc09c5cfbe990da623f4343246aafbb1363990e7f4e4ee7441bd1ba9d849a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/81eba80ea54d8bd40818154f333440479a572ca6b84eb312ad73157a105cdfc3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_yesterday_and_past_04 -> audio/generated/fr-FR/lexical/86c5a24e63e29356f0e6e440d34a17f551001461ddd68e282f1bb2befdadda1b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c88e24b4-2a65-5882-a02a-16670d04dfbe', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_yesterday_and_past_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '03ca348210074122efb3f3316b84667beeb51b800e509763b23af359469bc96b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4ac19003-41f7-5e6b-ba2c-8da51e873b29', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c88e24b4-2a65-5882-a02a-16670d04dfbe', 1), '03ca348210074122efb3f3316b84667beeb51b800e509763b23af359469bc96b',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/86c5a24e63e29356f0e6e440d34a17f551001461ddd68e282f1bb2befdadda1b.mp3', 1018, '2026-09-14 10:39:01.086759', '8773c09ed35a8fa587b0502d945f55ae1b0c465f013cb12ff470dbdbe924e040', 'validated', '{"audio_key":"86c5a24e63e29356f0e6e440d34a17f551001461ddd68e282f1bb2befdadda1b","entity_key":"lx_yesterday_and_past_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8773c09ed35a8fa587b0502d945f55ae1b0c465f013cb12ff470dbdbe924e040","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/86c5a24e63e29356f0e6e440d34a17f551001461ddd68e282f1bb2befdadda1b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_yesterday_and_past_04 -> audio/generated/fr-FR/lexical/86c5a24e63e29356f0e6e440d34a17f551001461ddd68e282f1bb2befdadda1b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b2ab0437-1193-5394-a61a-974b43d8060e', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_yesterday_and_past_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '03ca348210074122efb3f3316b84667beeb51b800e509763b23af359469bc96b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('deec2da5-b3b8-5ed3-a37a-d3aae5c4c4b7', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b2ab0437-1193-5394-a61a-974b43d8060e', 1), '03ca348210074122efb3f3316b84667beeb51b800e509763b23af359469bc96b',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/86c5a24e63e29356f0e6e440d34a17f551001461ddd68e282f1bb2befdadda1b.mp3', 1018, '2026-09-14 10:39:01.086759', '8773c09ed35a8fa587b0502d945f55ae1b0c465f013cb12ff470dbdbe924e040', 'validated', '{"audio_key":"86c5a24e63e29356f0e6e440d34a17f551001461ddd68e282f1bb2befdadda1b","entity_key":"wf_yesterday_and_past_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8773c09ed35a8fa587b0502d945f55ae1b0c465f013cb12ff470dbdbe924e040","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/86c5a24e63e29356f0e6e440d34a17f551001461ddd68e282f1bb2befdadda1b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_opinions_and_media_01 -> audio/generated/fr-FR/lexical/8aa93ac6c50a0eae942c1f1fe3d498f2c4eb0732ebce734b99c35467c77d8624.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('be500b77-b059-58d4-8135-05c8eb61ab65', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_opinions_and_media_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd0607f7ad2628b2af9158dfba06ce87166e66b15bf68f8f358f9aa27ccb7c321'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fcca0c9b-25b5-5745-af92-af6fd7ba42d1', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('be500b77-b059-58d4-8135-05c8eb61ab65', 1), 'd0607f7ad2628b2af9158dfba06ce87166e66b15bf68f8f358f9aa27ccb7c321',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/8aa93ac6c50a0eae942c1f1fe3d498f2c4eb0732ebce734b99c35467c77d8624.mp3', 1149, '2026-09-14 10:39:01.657355', '01cf2199f7b4a721a88e078511d452a4c239fc833c85695b501899ea2fa43702', 'validated', '{"audio_key":"8aa93ac6c50a0eae942c1f1fe3d498f2c4eb0732ebce734b99c35467c77d8624","entity_key":"lx_opinions_and_media_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"01cf2199f7b4a721a88e078511d452a4c239fc833c85695b501899ea2fa43702","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/8aa93ac6c50a0eae942c1f1fe3d498f2c4eb0732ebce734b99c35467c77d8624.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_opinions_and_media_01 -> audio/generated/fr-FR/lexical/8aa93ac6c50a0eae942c1f1fe3d498f2c4eb0732ebce734b99c35467c77d8624.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e453d762-14ed-59a4-80dd-cd04eec0726c', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_opinions_and_media_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd0607f7ad2628b2af9158dfba06ce87166e66b15bf68f8f358f9aa27ccb7c321'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('39190e71-3f73-540b-8ec2-45a5a68b6ebb', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e453d762-14ed-59a4-80dd-cd04eec0726c', 1), 'd0607f7ad2628b2af9158dfba06ce87166e66b15bf68f8f358f9aa27ccb7c321',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/8aa93ac6c50a0eae942c1f1fe3d498f2c4eb0732ebce734b99c35467c77d8624.mp3', 1149, '2026-09-14 10:39:01.657355', '01cf2199f7b4a721a88e078511d452a4c239fc833c85695b501899ea2fa43702', 'validated', '{"audio_key":"8aa93ac6c50a0eae942c1f1fe3d498f2c4eb0732ebce734b99c35467c77d8624","entity_key":"wf_opinions_and_media_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"01cf2199f7b4a721a88e078511d452a4c239fc833c85695b501899ea2fa43702","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/8aa93ac6c50a0eae942c1f1fe3d498f2c4eb0732ebce734b99c35467c77d8624.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_yesterday_and_past_03 -> audio/generated/fr-FR/lexical/8ec0e700a28ed556551e486a8088ca4628e93c428f2860dded1e5a14830ee1b1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('db969daa-b5bc-5f64-9e78-4e699cc0895f', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_yesterday_and_past_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bca0201624d7aed73ab12220b1d3d73683cf40bb4ac74b566b206faed26981a0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('38e35de4-5289-5a2c-be98-6fca9d2837f5', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('db969daa-b5bc-5f64-9e78-4e699cc0895f', 1), 'bca0201624d7aed73ab12220b1d3d73683cf40bb4ac74b566b206faed26981a0',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/8ec0e700a28ed556551e486a8088ca4628e93c428f2860dded1e5a14830ee1b1.mp3', 1018, '2026-09-14 10:39:02.045303', '035f53fc4d86a287c8cf98ad6df6d3851028ac616c53c0fa6aecf7fc600193f9', 'validated', '{"audio_key":"8ec0e700a28ed556551e486a8088ca4628e93c428f2860dded1e5a14830ee1b1","entity_key":"lx_yesterday_and_past_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"035f53fc4d86a287c8cf98ad6df6d3851028ac616c53c0fa6aecf7fc600193f9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/8ec0e700a28ed556551e486a8088ca4628e93c428f2860dded1e5a14830ee1b1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_yesterday_and_past_03 -> audio/generated/fr-FR/lexical/8ec0e700a28ed556551e486a8088ca4628e93c428f2860dded1e5a14830ee1b1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('54bb2f4d-47cd-550a-a8ed-874ad4895e7f', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_yesterday_and_past_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bca0201624d7aed73ab12220b1d3d73683cf40bb4ac74b566b206faed26981a0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7117811a-963f-5c21-8eff-f51fa16c8a75', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('54bb2f4d-47cd-550a-a8ed-874ad4895e7f', 1), 'bca0201624d7aed73ab12220b1d3d73683cf40bb4ac74b566b206faed26981a0',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/8ec0e700a28ed556551e486a8088ca4628e93c428f2860dded1e5a14830ee1b1.mp3', 1018, '2026-09-14 10:39:02.045303', '035f53fc4d86a287c8cf98ad6df6d3851028ac616c53c0fa6aecf7fc600193f9', 'validated', '{"audio_key":"8ec0e700a28ed556551e486a8088ca4628e93c428f2860dded1e5a14830ee1b1","entity_key":"wf_yesterday_and_past_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"035f53fc4d86a287c8cf98ad6df6d3851028ac616c53c0fa6aecf7fc600193f9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/8ec0e700a28ed556551e486a8088ca4628e93c428f2860dded1e5a14830ee1b1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_home_and_neighborhood_02 -> audio/generated/fr-FR/lexical/9c44c4ec94a80cf1b2ae8ff53bb9a4f56671456639e661bb4f6199f6e679b0a8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d2bae2ee-e6a6-56a2-b44b-74ae531cdd3c', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_home_and_neighborhood_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cc2fb34f29e06a72365f64319be7f34a3ef3b1d35cc9e15ca9ef2569415fe4e6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c0002f17-4566-5e4a-85c0-ec5754bfce06', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d2bae2ee-e6a6-56a2-b44b-74ae531cdd3c', 1), 'cc2fb34f29e06a72365f64319be7f34a3ef3b1d35cc9e15ca9ef2569415fe4e6',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/9c44c4ec94a80cf1b2ae8ff53bb9a4f56671456639e661bb4f6199f6e679b0a8.mp3', 966, '2026-09-14 10:39:02.588491', 'd76937cba313e2193c2be5f143af3446cb525ece256418fb61286b5d54c1c974', 'validated', '{"audio_key":"9c44c4ec94a80cf1b2ae8ff53bb9a4f56671456639e661bb4f6199f6e679b0a8","entity_key":"lx_home_and_neighborhood_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d76937cba313e2193c2be5f143af3446cb525ece256418fb61286b5d54c1c974","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/9c44c4ec94a80cf1b2ae8ff53bb9a4f56671456639e661bb4f6199f6e679b0a8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_home_and_neighborhood_02 -> audio/generated/fr-FR/lexical/9c44c4ec94a80cf1b2ae8ff53bb9a4f56671456639e661bb4f6199f6e679b0a8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('fa725067-7f47-5a6c-bb6a-6b8834eeabb1', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_home_and_neighborhood_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cc2fb34f29e06a72365f64319be7f34a3ef3b1d35cc9e15ca9ef2569415fe4e6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('11a27c29-c6e0-5c29-94ae-e24e145fe8af', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('fa725067-7f47-5a6c-bb6a-6b8834eeabb1', 1), 'cc2fb34f29e06a72365f64319be7f34a3ef3b1d35cc9e15ca9ef2569415fe4e6',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/9c44c4ec94a80cf1b2ae8ff53bb9a4f56671456639e661bb4f6199f6e679b0a8.mp3', 966, '2026-09-14 10:39:02.588491', 'd76937cba313e2193c2be5f143af3446cb525ece256418fb61286b5d54c1c974', 'validated', '{"audio_key":"9c44c4ec94a80cf1b2ae8ff53bb9a4f56671456639e661bb4f6199f6e679b0a8","entity_key":"wf_home_and_neighborhood_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d76937cba313e2193c2be5f143af3446cb525ece256418fb61286b5d54c1c974","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/9c44c4ec94a80cf1b2ae8ff53bb9a4f56671456639e661bb4f6199f6e679b0a8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_clothes_and_comparisons_06 -> audio/generated/fr-FR/lexical/9ced8c4bf1aed3c4e74521035250080b33baca2290b6a8da6b52b57a471c3d18.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c8505dc9-0714-519f-82ce-ce740ddde9bc', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_clothes_and_comparisons_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e6057f273b924a533ddfa863c1c6132b544c47029b78ac9f6975897f0b457a81'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7f343df4-7e18-5c95-9880-0dc837b9d3a0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c8505dc9-0714-519f-82ce-ce740ddde9bc', 1), 'e6057f273b924a533ddfa863c1c6132b544c47029b78ac9f6975897f0b457a81',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/9ced8c4bf1aed3c4e74521035250080b33baca2290b6a8da6b52b57a471c3d18.mp3', 862, '2026-09-14 10:39:02.994130', 'afe5509baf807f3b974f48bdbac47b79982d9c277dac522e7954c74f9a9b168f', 'validated', '{"audio_key":"9ced8c4bf1aed3c4e74521035250080b33baca2290b6a8da6b52b57a471c3d18","entity_key":"lx_clothes_and_comparisons_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"afe5509baf807f3b974f48bdbac47b79982d9c277dac522e7954c74f9a9b168f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/9ced8c4bf1aed3c4e74521035250080b33baca2290b6a8da6b52b57a471c3d18.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_clothes_and_comparisons_06 -> audio/generated/fr-FR/lexical/9ced8c4bf1aed3c4e74521035250080b33baca2290b6a8da6b52b57a471c3d18.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d3bc53a8-042b-582e-9540-d4708156d591', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_clothes_and_comparisons_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e6057f273b924a533ddfa863c1c6132b544c47029b78ac9f6975897f0b457a81'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9ff37cb0-170b-591b-825e-30d28d0f0a7c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d3bc53a8-042b-582e-9540-d4708156d591', 1), 'e6057f273b924a533ddfa863c1c6132b544c47029b78ac9f6975897f0b457a81',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/9ced8c4bf1aed3c4e74521035250080b33baca2290b6a8da6b52b57a471c3d18.mp3', 862, '2026-09-14 10:39:02.994130', 'afe5509baf807f3b974f48bdbac47b79982d9c277dac522e7954c74f9a9b168f', 'validated', '{"audio_key":"9ced8c4bf1aed3c4e74521035250080b33baca2290b6a8da6b52b57a471c3d18","entity_key":"wf_clothes_and_comparisons_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"afe5509baf807f3b974f48bdbac47b79982d9c277dac522e7954c74f9a9b168f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/9ced8c4bf1aed3c4e74521035250080b33baca2290b6a8da6b52b57a471c3d18.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_a2_problem_solving_capstone_04 -> audio/generated/fr-FR/lexical/9cf402762ae6183b064e64cd493a0892cd5d51001093b3810390f3b386a7680a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('43b209c0-7fc5-5ca8-9fd4-ae3d67bea134', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_a2_problem_solving_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8270f2824111e04d9278c01a92b388147d9d02e0b50d946d25d00db375ff1282'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a512774e-9f3f-54e3-9a5e-d69222aac4e6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('43b209c0-7fc5-5ca8-9fd4-ae3d67bea134', 1), '8270f2824111e04d9278c01a92b388147d9d02e0b50d946d25d00db375ff1282',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/9cf402762ae6183b064e64cd493a0892cd5d51001093b3810390f3b386a7680a.mp3', 1071, '2026-09-14 10:39:03.530987', '7bed1c7ba0207dc9680efeef5a045cad1ca68b7acead2fc73212f9d1dc45ad83', 'validated', '{"audio_key":"9cf402762ae6183b064e64cd493a0892cd5d51001093b3810390f3b386a7680a","entity_key":"lx_a2_problem_solving_capstone_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7bed1c7ba0207dc9680efeef5a045cad1ca68b7acead2fc73212f9d1dc45ad83","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/9cf402762ae6183b064e64cd493a0892cd5d51001093b3810390f3b386a7680a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_a2_problem_solving_capstone_04 -> audio/generated/fr-FR/lexical/9cf402762ae6183b064e64cd493a0892cd5d51001093b3810390f3b386a7680a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('fbb28837-03c9-58fe-9e07-452850080953', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_a2_problem_solving_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8270f2824111e04d9278c01a92b388147d9d02e0b50d946d25d00db375ff1282'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8947b589-4dae-5272-a133-eaaaa4544a46', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('fbb28837-03c9-58fe-9e07-452850080953', 1), '8270f2824111e04d9278c01a92b388147d9d02e0b50d946d25d00db375ff1282',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/9cf402762ae6183b064e64cd493a0892cd5d51001093b3810390f3b386a7680a.mp3', 1071, '2026-09-14 10:39:03.530987', '7bed1c7ba0207dc9680efeef5a045cad1ca68b7acead2fc73212f9d1dc45ad83', 'validated', '{"audio_key":"9cf402762ae6183b064e64cd493a0892cd5d51001093b3810390f3b386a7680a","entity_key":"wf_a2_problem_solving_capstone_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7bed1c7ba0207dc9680efeef5a045cad1ca68b7acead2fc73212f9d1dc45ad83","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/9cf402762ae6183b064e64cd493a0892cd5d51001093b3810390f3b386a7680a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_opinions_and_media_02 -> audio/generated/fr-FR/lexical/9dc5839bbd01b3133147a5eab5fddee1d80c6eba91962f9330ed81059509d75b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('4d289db4-9eba-5553-b527-c730e43dfb4c', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_opinions_and_media_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '550c2a87d50d8c2a556713a5c7c07ec5461e2220b62a0c382554adc76fb9f4cc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ef5568c5-8912-5802-b74e-b816c6e5260a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('4d289db4-9eba-5553-b527-c730e43dfb4c', 1), '550c2a87d50d8c2a556713a5c7c07ec5461e2220b62a0c382554adc76fb9f4cc',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/9dc5839bbd01b3133147a5eab5fddee1d80c6eba91962f9330ed81059509d75b.mp3', 914, '2026-09-14 10:39:03.960315', '0f3d7240e927f287d8f171be5f15d335727d6c9d5ba85f4cdeed1f1377ee0948', 'validated', '{"audio_key":"9dc5839bbd01b3133147a5eab5fddee1d80c6eba91962f9330ed81059509d75b","entity_key":"lx_opinions_and_media_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0f3d7240e927f287d8f171be5f15d335727d6c9d5ba85f4cdeed1f1377ee0948","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/9dc5839bbd01b3133147a5eab5fddee1d80c6eba91962f9330ed81059509d75b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_opinions_and_media_02 -> audio/generated/fr-FR/lexical/9dc5839bbd01b3133147a5eab5fddee1d80c6eba91962f9330ed81059509d75b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b2e219dd-bc9e-5e14-890e-03199d69fca2', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_opinions_and_media_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '550c2a87d50d8c2a556713a5c7c07ec5461e2220b62a0c382554adc76fb9f4cc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c53daa53-dc5c-5340-9c58-368444980bbd', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b2e219dd-bc9e-5e14-890e-03199d69fca2', 1), '550c2a87d50d8c2a556713a5c7c07ec5461e2220b62a0c382554adc76fb9f4cc',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/9dc5839bbd01b3133147a5eab5fddee1d80c6eba91962f9330ed81059509d75b.mp3', 914, '2026-09-14 10:39:03.960315', '0f3d7240e927f287d8f171be5f15d335727d6c9d5ba85f4cdeed1f1377ee0948', 'validated', '{"audio_key":"9dc5839bbd01b3133147a5eab5fddee1d80c6eba91962f9330ed81059509d75b","entity_key":"wf_opinions_and_media_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0f3d7240e927f287d8f171be5f15d335727d6c9d5ba85f4cdeed1f1377ee0948","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/9dc5839bbd01b3133147a5eab5fddee1d80c6eba91962f9330ed81059509d75b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_a2_problem_solving_capstone_06 -> audio/generated/fr-FR/lexical/9e286d4799e1edee70d1b58b4b4d2efd48a1f8f743e9aebb34b52722b4a90dc3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5d6513d5-5222-5a18-bedf-56f0ba01fa38', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_a2_problem_solving_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '24c46d91812f246e5dc92481fb12baa8d6c33e3e0406fab6cf963012cd17cbcb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3a291471-9193-52f4-8ba6-fe29425d9324', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5d6513d5-5222-5a18-bedf-56f0ba01fa38', 1), '24c46d91812f246e5dc92481fb12baa8d6c33e3e0406fab6cf963012cd17cbcb',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/9e286d4799e1edee70d1b58b4b4d2efd48a1f8f743e9aebb34b52722b4a90dc3.mp3', 966, '2026-09-14 10:39:04.460836', '0c60019ed88560250e3734a5d3cbc99d75f4c8303df66255c2a44e6fe167ea2f', 'validated', '{"audio_key":"9e286d4799e1edee70d1b58b4b4d2efd48a1f8f743e9aebb34b52722b4a90dc3","entity_key":"lx_a2_problem_solving_capstone_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0c60019ed88560250e3734a5d3cbc99d75f4c8303df66255c2a44e6fe167ea2f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/9e286d4799e1edee70d1b58b4b4d2efd48a1f8f743e9aebb34b52722b4a90dc3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_a2_problem_solving_capstone_06 -> audio/generated/fr-FR/lexical/9e286d4799e1edee70d1b58b4b4d2efd48a1f8f743e9aebb34b52722b4a90dc3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('00ec26e9-ad2c-5a5e-a069-1fc17c4b20c5', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_a2_problem_solving_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '24c46d91812f246e5dc92481fb12baa8d6c33e3e0406fab6cf963012cd17cbcb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('89fc1b5a-f9d7-5659-967f-57e0d1d4eefd', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('00ec26e9-ad2c-5a5e-a069-1fc17c4b20c5', 1), '24c46d91812f246e5dc92481fb12baa8d6c33e3e0406fab6cf963012cd17cbcb',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/9e286d4799e1edee70d1b58b4b4d2efd48a1f8f743e9aebb34b52722b4a90dc3.mp3', 966, '2026-09-14 10:39:04.460836', '0c60019ed88560250e3734a5d3cbc99d75f4c8303df66255c2a44e6fe167ea2f', 'validated', '{"audio_key":"9e286d4799e1edee70d1b58b4b4d2efd48a1f8f743e9aebb34b52722b4a90dc3","entity_key":"wf_a2_problem_solving_capstone_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0c60019ed88560250e3734a5d3cbc99d75f4c8303df66255c2a44e6fe167ea2f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/9e286d4799e1edee70d1b58b4b4d2efd48a1f8f743e9aebb34b52722b4a90dc3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_yesterday_and_past_01 -> audio/generated/fr-FR/lexical/9fd095c53a1e4ad4ea50e51f06bb6f5ad3982b650d7003d0a7ae2a3d9d692d8e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e92fcdb8-259e-5533-8ac2-06cb401c82c1', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_yesterday_and_past_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '529cbc8f212773f23d5eceabfdd3e1736c7c063518b43711d03d229866b12d76'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8d1870e2-e39d-55b8-8e95-b376762d3b5f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e92fcdb8-259e-5533-8ac2-06cb401c82c1', 1), '529cbc8f212773f23d5eceabfdd3e1736c7c063518b43711d03d229866b12d76',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/9fd095c53a1e4ad4ea50e51f06bb6f5ad3982b650d7003d0a7ae2a3d9d692d8e.mp3', 835, '2026-09-14 10:39:04.952088', 'b240faf1cb35c6561f77583f48b2457e0138c09e878a82539ee4e4f5543b6320', 'validated', '{"audio_key":"9fd095c53a1e4ad4ea50e51f06bb6f5ad3982b650d7003d0a7ae2a3d9d692d8e","entity_key":"lx_yesterday_and_past_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b240faf1cb35c6561f77583f48b2457e0138c09e878a82539ee4e4f5543b6320","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/9fd095c53a1e4ad4ea50e51f06bb6f5ad3982b650d7003d0a7ae2a3d9d692d8e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_yesterday_and_past_01 -> audio/generated/fr-FR/lexical/9fd095c53a1e4ad4ea50e51f06bb6f5ad3982b650d7003d0a7ae2a3d9d692d8e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b5f7589d-2673-5977-82d3-b028a7d0d5a0', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_yesterday_and_past_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '529cbc8f212773f23d5eceabfdd3e1736c7c063518b43711d03d229866b12d76'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('232384d9-a35d-5c3b-a70a-a2257785b9ac', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b5f7589d-2673-5977-82d3-b028a7d0d5a0', 1), '529cbc8f212773f23d5eceabfdd3e1736c7c063518b43711d03d229866b12d76',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/9fd095c53a1e4ad4ea50e51f06bb6f5ad3982b650d7003d0a7ae2a3d9d692d8e.mp3', 835, '2026-09-14 10:39:04.952088', 'b240faf1cb35c6561f77583f48b2457e0138c09e878a82539ee4e4f5543b6320', 'validated', '{"audio_key":"9fd095c53a1e4ad4ea50e51f06bb6f5ad3982b650d7003d0a7ae2a3d9d692d8e","entity_key":"wf_yesterday_and_past_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b240faf1cb35c6561f77583f48b2457e0138c09e878a82539ee4e4f5543b6320","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/9fd095c53a1e4ad4ea50e51f06bb6f5ad3982b650d7003d0a7ae2a3d9d692d8e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_opinions_and_media_03 -> audio/generated/fr-FR/lexical/a48ddd18f0a4176c70e79e6bb9b9bead833a96b83b23a1eb04b421b5f2f9dd62.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('555d0cd9-50c6-57df-acec-93b4e58f24fc', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_opinions_and_media_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '63e382667ec2b604671413959ee0279fe08c418f93a8ca540e877a7d3243272e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('48d69bda-84aa-52f8-bd0b-14ffe7f42a56', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('555d0cd9-50c6-57df-acec-93b4e58f24fc', 1), '63e382667ec2b604671413959ee0279fe08c418f93a8ca540e877a7d3243272e',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/a48ddd18f0a4176c70e79e6bb9b9bead833a96b83b23a1eb04b421b5f2f9dd62.mp3', 1097, '2026-09-14 10:39:05.424251', 'b2b34bc4f8ceb00f46e37a04b93599027d65da20cbf854a344e7b8dbdbaeaf41', 'validated', '{"audio_key":"a48ddd18f0a4176c70e79e6bb9b9bead833a96b83b23a1eb04b421b5f2f9dd62","entity_key":"lx_opinions_and_media_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b2b34bc4f8ceb00f46e37a04b93599027d65da20cbf854a344e7b8dbdbaeaf41","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/a48ddd18f0a4176c70e79e6bb9b9bead833a96b83b23a1eb04b421b5f2f9dd62.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_opinions_and_media_03 -> audio/generated/fr-FR/lexical/a48ddd18f0a4176c70e79e6bb9b9bead833a96b83b23a1eb04b421b5f2f9dd62.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e3242652-1e33-5b87-a225-1b0d0d7e659a', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_opinions_and_media_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '63e382667ec2b604671413959ee0279fe08c418f93a8ca540e877a7d3243272e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('788e03a4-312d-5fe2-86e1-982112f13a4a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e3242652-1e33-5b87-a225-1b0d0d7e659a', 1), '63e382667ec2b604671413959ee0279fe08c418f93a8ca540e877a7d3243272e',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/a48ddd18f0a4176c70e79e6bb9b9bead833a96b83b23a1eb04b421b5f2f9dd62.mp3', 1097, '2026-09-14 10:39:05.424251', 'b2b34bc4f8ceb00f46e37a04b93599027d65da20cbf854a344e7b8dbdbaeaf41', 'validated', '{"audio_key":"a48ddd18f0a4176c70e79e6bb9b9bead833a96b83b23a1eb04b421b5f2f9dd62","entity_key":"wf_opinions_and_media_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b2b34bc4f8ceb00f46e37a04b93599027d65da20cbf854a344e7b8dbdbaeaf41","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/a48ddd18f0a4176c70e79e6bb9b9bead833a96b83b23a1eb04b421b5f2f9dd62.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_food_and_quantities_06 -> audio/generated/fr-FR/lexical/aa46ac1696bf1bb2c06d26c0856afd9efc471ca656c6bef6510a019b99ad1e0a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5cec5240-b174-5ffe-abac-420be1bdbe9a', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_food_and_quantities_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f7b4ccaa2c70afd3fa74a980d9df3db4fbacf146ce6c6e70c0ab74b70f26f43e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8e451b00-5c2f-5f34-8af0-f67b71096875', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5cec5240-b174-5ffe-abac-420be1bdbe9a', 1), 'f7b4ccaa2c70afd3fa74a980d9df3db4fbacf146ce6c6e70c0ab74b70f26f43e',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/aa46ac1696bf1bb2c06d26c0856afd9efc471ca656c6bef6510a019b99ad1e0a.mp3', 914, '2026-09-14 10:39:05.906513', 'bbb7f98236e4fecfd9676386199fa3a416440ac9fa729ba27f990810f959a694', 'validated', '{"audio_key":"aa46ac1696bf1bb2c06d26c0856afd9efc471ca656c6bef6510a019b99ad1e0a","entity_key":"lx_food_and_quantities_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"bbb7f98236e4fecfd9676386199fa3a416440ac9fa729ba27f990810f959a694","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/aa46ac1696bf1bb2c06d26c0856afd9efc471ca656c6bef6510a019b99ad1e0a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_food_and_quantities_06 -> audio/generated/fr-FR/lexical/aa46ac1696bf1bb2c06d26c0856afd9efc471ca656c6bef6510a019b99ad1e0a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('bb31f1bd-71c1-5a23-96aa-d71e890209ff', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_food_and_quantities_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f7b4ccaa2c70afd3fa74a980d9df3db4fbacf146ce6c6e70c0ab74b70f26f43e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1b9ae965-1f4c-529a-97c8-96ee8f3df9a0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('bb31f1bd-71c1-5a23-96aa-d71e890209ff', 1), 'f7b4ccaa2c70afd3fa74a980d9df3db4fbacf146ce6c6e70c0ab74b70f26f43e',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/aa46ac1696bf1bb2c06d26c0856afd9efc471ca656c6bef6510a019b99ad1e0a.mp3', 914, '2026-09-14 10:39:05.906513', 'bbb7f98236e4fecfd9676386199fa3a416440ac9fa729ba27f990810f959a694', 'validated', '{"audio_key":"aa46ac1696bf1bb2c06d26c0856afd9efc471ca656c6bef6510a019b99ad1e0a","entity_key":"wf_food_and_quantities_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"bbb7f98236e4fecfd9676386199fa3a416440ac9fa729ba27f990810f959a694","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/aa46ac1696bf1bb2c06d26c0856afd9efc471ca656c6bef6510a019b99ad1e0a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_food_and_quantities_01 -> audio/generated/fr-FR/lexical/b6f8d5a89bc5a755f1cf77f66f80789b56104d368ac728408e89763b1128af99.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9a8c5d06-5051-5350-948d-58a3fa812cba', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_food_and_quantities_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '190ceac190149744b35b5068e77f23f90eb51bbcd64909e9a8efd96c7e4a7425'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cd4dfb07-f61c-5bb1-b62d-1887979b7d24', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9a8c5d06-5051-5350-948d-58a3fa812cba', 1), '190ceac190149744b35b5068e77f23f90eb51bbcd64909e9a8efd96c7e4a7425',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/b6f8d5a89bc5a755f1cf77f66f80789b56104d368ac728408e89763b1128af99.mp3', 1018, '2026-09-14 10:39:06.372764', 'e9588e5ee7fd08bfd680695ab009fb9bff1382a2e53bd83bff8d6f40e9f11e30', 'validated', '{"audio_key":"b6f8d5a89bc5a755f1cf77f66f80789b56104d368ac728408e89763b1128af99","entity_key":"lx_food_and_quantities_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e9588e5ee7fd08bfd680695ab009fb9bff1382a2e53bd83bff8d6f40e9f11e30","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/b6f8d5a89bc5a755f1cf77f66f80789b56104d368ac728408e89763b1128af99.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_food_and_quantities_01 -> audio/generated/fr-FR/lexical/b6f8d5a89bc5a755f1cf77f66f80789b56104d368ac728408e89763b1128af99.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('fbba2205-d182-5428-8222-0399289ffea2', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_food_and_quantities_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '190ceac190149744b35b5068e77f23f90eb51bbcd64909e9a8efd96c7e4a7425'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1fa74825-bd57-5428-a366-e9368d12dd18', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('fbba2205-d182-5428-8222-0399289ffea2', 1), '190ceac190149744b35b5068e77f23f90eb51bbcd64909e9a8efd96c7e4a7425',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/b6f8d5a89bc5a755f1cf77f66f80789b56104d368ac728408e89763b1128af99.mp3', 1018, '2026-09-14 10:39:06.372764', 'e9588e5ee7fd08bfd680695ab009fb9bff1382a2e53bd83bff8d6f40e9f11e30', 'validated', '{"audio_key":"b6f8d5a89bc5a755f1cf77f66f80789b56104d368ac728408e89763b1128af99","entity_key":"wf_food_and_quantities_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e9588e5ee7fd08bfd680695ab009fb9bff1382a2e53bd83bff8d6f40e9f11e30","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/b6f8d5a89bc5a755f1cf77f66f80789b56104d368ac728408e89763b1128af99.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_yesterday_and_past_05 -> audio/generated/fr-FR/lexical/b94149c35cd649a7c2272377f51f248e512b20e6fa347e26a610e1ac5c2e05a3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('593ad9f1-d969-5f2c-a6df-09f69b28527d', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_yesterday_and_past_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9b9a6c9d5de0ed07c831becb8371bdfca025dbf1670ee4ee41ab81c5f8980426'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fa27c927-9243-58de-a245-0dfa4b52d739', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('593ad9f1-d969-5f2c-a6df-09f69b28527d', 1), '9b9a6c9d5de0ed07c831becb8371bdfca025dbf1670ee4ee41ab81c5f8980426',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/b94149c35cd649a7c2272377f51f248e512b20e6fa347e26a610e1ac5c2e05a3.mp3', 1071, '2026-09-14 10:39:06.831965', '102d621fc337dce67c25ffc7d463bdc94c0ae91624d6e3302de0e0f4b6aa425b', 'validated', '{"audio_key":"b94149c35cd649a7c2272377f51f248e512b20e6fa347e26a610e1ac5c2e05a3","entity_key":"lx_yesterday_and_past_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"102d621fc337dce67c25ffc7d463bdc94c0ae91624d6e3302de0e0f4b6aa425b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/b94149c35cd649a7c2272377f51f248e512b20e6fa347e26a610e1ac5c2e05a3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_yesterday_and_past_05 -> audio/generated/fr-FR/lexical/b94149c35cd649a7c2272377f51f248e512b20e6fa347e26a610e1ac5c2e05a3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3a26e332-f989-54dd-8059-92807f77da85', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_yesterday_and_past_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9b9a6c9d5de0ed07c831becb8371bdfca025dbf1670ee4ee41ab81c5f8980426'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f4f85920-54a0-5edc-816a-8cc88966e61e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3a26e332-f989-54dd-8059-92807f77da85', 1), '9b9a6c9d5de0ed07c831becb8371bdfca025dbf1670ee4ee41ab81c5f8980426',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/b94149c35cd649a7c2272377f51f248e512b20e6fa347e26a610e1ac5c2e05a3.mp3', 1071, '2026-09-14 10:39:06.831965', '102d621fc337dce67c25ffc7d463bdc94c0ae91624d6e3302de0e0f4b6aa425b', 'validated', '{"audio_key":"b94149c35cd649a7c2272377f51f248e512b20e6fa347e26a610e1ac5c2e05a3","entity_key":"wf_yesterday_and_past_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"102d621fc337dce67c25ffc7d463bdc94c0ae91624d6e3302de0e0f4b6aa425b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/b94149c35cd649a7c2272377f51f248e512b20e6fa347e26a610e1ac5c2e05a3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_a2_problem_solving_capstone_03 -> audio/generated/fr-FR/lexical/c1edb47d4b74da71e8e73110510f673781e9856844076fd825e9926ee6889133.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('785b1d6e-098a-59b5-aef5-f9ad2bd53619', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_a2_problem_solving_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6e94a19886c7a8c13b24f953bbb5269ac23da14418df5ae6183116e70db7542e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('80a14be8-ca83-53e0-b9cb-acc8d581fdb1', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('785b1d6e-098a-59b5-aef5-f9ad2bd53619', 1), '6e94a19886c7a8c13b24f953bbb5269ac23da14418df5ae6183116e70db7542e',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/c1edb47d4b74da71e8e73110510f673781e9856844076fd825e9926ee6889133.mp3', 1018, '2026-09-14 10:39:07.317243', 'b566a00ce10e845de8d7f01e44fba7b8f072dd3a7ccbe2c2c00aa5df45517441', 'validated', '{"audio_key":"c1edb47d4b74da71e8e73110510f673781e9856844076fd825e9926ee6889133","entity_key":"lx_a2_problem_solving_capstone_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b566a00ce10e845de8d7f01e44fba7b8f072dd3a7ccbe2c2c00aa5df45517441","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/c1edb47d4b74da71e8e73110510f673781e9856844076fd825e9926ee6889133.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_a2_problem_solving_capstone_03 -> audio/generated/fr-FR/lexical/c1edb47d4b74da71e8e73110510f673781e9856844076fd825e9926ee6889133.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('55efacba-3da1-57f2-8677-921736ee60cc', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_a2_problem_solving_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6e94a19886c7a8c13b24f953bbb5269ac23da14418df5ae6183116e70db7542e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f4717205-ad2e-5878-9bf6-63af8c5d79ee', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('55efacba-3da1-57f2-8677-921736ee60cc', 1), '6e94a19886c7a8c13b24f953bbb5269ac23da14418df5ae6183116e70db7542e',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/c1edb47d4b74da71e8e73110510f673781e9856844076fd825e9926ee6889133.mp3', 1018, '2026-09-14 10:39:07.317243', 'b566a00ce10e845de8d7f01e44fba7b8f072dd3a7ccbe2c2c00aa5df45517441', 'validated', '{"audio_key":"c1edb47d4b74da71e8e73110510f673781e9856844076fd825e9926ee6889133","entity_key":"wf_a2_problem_solving_capstone_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b566a00ce10e845de8d7f01e44fba7b8f072dd3a7ccbe2c2c00aa5df45517441","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/c1edb47d4b74da71e8e73110510f673781e9856844076fd825e9926ee6889133.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_health_and_pharmacy_05 -> audio/generated/fr-FR/lexical/c4c9ea6cf4a803dbf67dae1b94b33c3d8a04463194d251f8fe8a6cc2c314959d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('127b3709-6c13-5f35-9328-b1d4a2aba1ff', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_health_and_pharmacy_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e15b950a9531cc67e1473e65f5c9ad85f6fa1b3de1bdde40b5788417f1a0cd94'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1c164af4-fa0f-50a7-a4c5-6818e4b6501c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('127b3709-6c13-5f35-9328-b1d4a2aba1ff', 1), 'e15b950a9531cc67e1473e65f5c9ad85f6fa1b3de1bdde40b5788417f1a0cd94',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/c4c9ea6cf4a803dbf67dae1b94b33c3d8a04463194d251f8fe8a6cc2c314959d.mp3', 1097, '2026-09-14 10:39:07.859943', 'ab29dad966dbb03b3eb7a71e4cbf56b6d910cbb9a72913423f463a762d2c0dc4', 'validated', '{"audio_key":"c4c9ea6cf4a803dbf67dae1b94b33c3d8a04463194d251f8fe8a6cc2c314959d","entity_key":"lx_health_and_pharmacy_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ab29dad966dbb03b3eb7a71e4cbf56b6d910cbb9a72913423f463a762d2c0dc4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/c4c9ea6cf4a803dbf67dae1b94b33c3d8a04463194d251f8fe8a6cc2c314959d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_health_and_pharmacy_05 -> audio/generated/fr-FR/lexical/c4c9ea6cf4a803dbf67dae1b94b33c3d8a04463194d251f8fe8a6cc2c314959d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e7037283-31a7-5e1d-942f-69fa41b8ad72', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_health_and_pharmacy_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e15b950a9531cc67e1473e65f5c9ad85f6fa1b3de1bdde40b5788417f1a0cd94'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('820873e1-ebab-5e70-960d-e2a1851c65e1', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e7037283-31a7-5e1d-942f-69fa41b8ad72', 1), 'e15b950a9531cc67e1473e65f5c9ad85f6fa1b3de1bdde40b5788417f1a0cd94',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/c4c9ea6cf4a803dbf67dae1b94b33c3d8a04463194d251f8fe8a6cc2c314959d.mp3', 1097, '2026-09-14 10:39:07.859943', 'ab29dad966dbb03b3eb7a71e4cbf56b6d910cbb9a72913423f463a762d2c0dc4', 'validated', '{"audio_key":"c4c9ea6cf4a803dbf67dae1b94b33c3d8a04463194d251f8fe8a6cc2c314959d","entity_key":"wf_health_and_pharmacy_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ab29dad966dbb03b3eb7a71e4cbf56b6d910cbb9a72913423f463a762d2c0dc4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/c4c9ea6cf4a803dbf67dae1b94b33c3d8a04463194d251f8fe8a6cc2c314959d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_plans_and_invitations_02 -> audio/generated/fr-FR/lexical/c5400e5aafb12b2e8ec8136fa4b19b14428ac4286963a8e507ec021a6e5b249a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3f1b0af9-6d40-5a28-bf58-b97f6cc13d2c', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_plans_and_invitations_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b14ca52a28f08fde404b9d6318800208974319c0377943d0faf0ab770ccd6808'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6cba8ad2-d17c-513f-9e84-5af1ab7ad888', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3f1b0af9-6d40-5a28-bf58-b97f6cc13d2c', 1), 'b14ca52a28f08fde404b9d6318800208974319c0377943d0faf0ab770ccd6808',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/c5400e5aafb12b2e8ec8136fa4b19b14428ac4286963a8e507ec021a6e5b249a.mp3', 1018, '2026-09-14 10:39:08.258578', '70cb514c09e5d8655deda9406e058169166aba361e3238e21085772a1cf452e5', 'validated', '{"audio_key":"c5400e5aafb12b2e8ec8136fa4b19b14428ac4286963a8e507ec021a6e5b249a","entity_key":"lx_plans_and_invitations_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"70cb514c09e5d8655deda9406e058169166aba361e3238e21085772a1cf452e5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/c5400e5aafb12b2e8ec8136fa4b19b14428ac4286963a8e507ec021a6e5b249a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_plans_and_invitations_02 -> audio/generated/fr-FR/lexical/c5400e5aafb12b2e8ec8136fa4b19b14428ac4286963a8e507ec021a6e5b249a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('04ba18bc-2a2e-57b5-8cac-0da262fd84e2', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_plans_and_invitations_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b14ca52a28f08fde404b9d6318800208974319c0377943d0faf0ab770ccd6808'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9f432a84-48a6-511b-9d2f-fc623575ebf3', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('04ba18bc-2a2e-57b5-8cac-0da262fd84e2', 1), 'b14ca52a28f08fde404b9d6318800208974319c0377943d0faf0ab770ccd6808',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/c5400e5aafb12b2e8ec8136fa4b19b14428ac4286963a8e507ec021a6e5b249a.mp3', 1018, '2026-09-14 10:39:08.258578', '70cb514c09e5d8655deda9406e058169166aba361e3238e21085772a1cf452e5', 'validated', '{"audio_key":"c5400e5aafb12b2e8ec8136fa4b19b14428ac4286963a8e507ec021a6e5b249a","entity_key":"wf_plans_and_invitations_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"70cb514c09e5d8655deda9406e058169166aba361e3238e21085772a1cf452e5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/c5400e5aafb12b2e8ec8136fa4b19b14428ac4286963a8e507ec021a6e5b249a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_home_and_neighborhood_05 -> audio/generated/fr-FR/lexical/c80fefc48d0a3a936a141953ddb19c92dcaf18e6f71b3df2e8b5a70eac493257.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('dc008a1a-8016-5320-b08b-6af0bea286b1', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_home_and_neighborhood_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '42db872155afce36225f1cefee798939844e41638c5c0678e74e5d6baee1d0c3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ed262a21-8e40-537b-946e-9fb0c36d7818', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('dc008a1a-8016-5320-b08b-6af0bea286b1', 1), '42db872155afce36225f1cefee798939844e41638c5c0678e74e5d6baee1d0c3',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/c80fefc48d0a3a936a141953ddb19c92dcaf18e6f71b3df2e8b5a70eac493257.mp3', 1018, '2026-09-14 10:39:08.809009', '4e14c288d3b5eeb64cdc680c3d32f7a787a32c76b9b48bf2dad1aa03d6abcbf6', 'validated', '{"audio_key":"c80fefc48d0a3a936a141953ddb19c92dcaf18e6f71b3df2e8b5a70eac493257","entity_key":"lx_home_and_neighborhood_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4e14c288d3b5eeb64cdc680c3d32f7a787a32c76b9b48bf2dad1aa03d6abcbf6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/c80fefc48d0a3a936a141953ddb19c92dcaf18e6f71b3df2e8b5a70eac493257.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_home_and_neighborhood_05 -> audio/generated/fr-FR/lexical/c80fefc48d0a3a936a141953ddb19c92dcaf18e6f71b3df2e8b5a70eac493257.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('48881507-7f7e-551f-80bb-2cd83abffc7b', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_home_and_neighborhood_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '42db872155afce36225f1cefee798939844e41638c5c0678e74e5d6baee1d0c3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1618a126-35b2-5cc4-866f-2e4b29dbcede', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('48881507-7f7e-551f-80bb-2cd83abffc7b', 1), '42db872155afce36225f1cefee798939844e41638c5c0678e74e5d6baee1d0c3',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/c80fefc48d0a3a936a141953ddb19c92dcaf18e6f71b3df2e8b5a70eac493257.mp3', 1018, '2026-09-14 10:39:08.809009', '4e14c288d3b5eeb64cdc680c3d32f7a787a32c76b9b48bf2dad1aa03d6abcbf6', 'validated', '{"audio_key":"c80fefc48d0a3a936a141953ddb19c92dcaf18e6f71b3df2e8b5a70eac493257","entity_key":"wf_home_and_neighborhood_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4e14c288d3b5eeb64cdc680c3d32f7a787a32c76b9b48bf2dad1aa03d6abcbf6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/c80fefc48d0a3a936a141953ddb19c92dcaf18e6f71b3df2e8b5a70eac493257.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_clothes_and_comparisons_04 -> audio/generated/fr-FR/lexical/d1999bbba1561db3ebafe83e9bafc31119fb801ce9dcbc909861c61b6e7b272a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('581ee464-beaa-54b5-baf2-48dcdb31b62f', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_clothes_and_comparisons_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c34c62aae11d5dadea0a771c98862cd0e1d61334d288322272ce9ed8779a889f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('deb052a9-f39d-5af6-ad95-616dfffd6023', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('581ee464-beaa-54b5-baf2-48dcdb31b62f', 1), 'c34c62aae11d5dadea0a771c98862cd0e1d61334d288322272ce9ed8779a889f',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/d1999bbba1561db3ebafe83e9bafc31119fb801ce9dcbc909861c61b6e7b272a.mp3', 914, '2026-09-14 10:39:09.227112', 'cb19bedbf50102534c5587c0f0298158e77b84b3c5edd023cb03d893b7f26772', 'validated', '{"audio_key":"d1999bbba1561db3ebafe83e9bafc31119fb801ce9dcbc909861c61b6e7b272a","entity_key":"lx_clothes_and_comparisons_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"cb19bedbf50102534c5587c0f0298158e77b84b3c5edd023cb03d893b7f26772","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/d1999bbba1561db3ebafe83e9bafc31119fb801ce9dcbc909861c61b6e7b272a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_clothes_and_comparisons_04 -> audio/generated/fr-FR/lexical/d1999bbba1561db3ebafe83e9bafc31119fb801ce9dcbc909861c61b6e7b272a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d2637366-01e6-53f3-b9d4-d6191ea34de0', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_clothes_and_comparisons_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c34c62aae11d5dadea0a771c98862cd0e1d61334d288322272ce9ed8779a889f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6f349c2a-3a3a-5832-9377-364668285851', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d2637366-01e6-53f3-b9d4-d6191ea34de0', 1), 'c34c62aae11d5dadea0a771c98862cd0e1d61334d288322272ce9ed8779a889f',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/d1999bbba1561db3ebafe83e9bafc31119fb801ce9dcbc909861c61b6e7b272a.mp3', 914, '2026-09-14 10:39:09.227112', 'cb19bedbf50102534c5587c0f0298158e77b84b3c5edd023cb03d893b7f26772', 'validated', '{"audio_key":"d1999bbba1561db3ebafe83e9bafc31119fb801ce9dcbc909861c61b6e7b272a","entity_key":"wf_clothes_and_comparisons_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"cb19bedbf50102534c5587c0f0298158e77b84b3c5edd023cb03d893b7f26772","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/d1999bbba1561db3ebafe83e9bafc31119fb801ce9dcbc909861c61b6e7b272a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_plans_and_invitations_04 -> audio/generated/fr-FR/lexical/d32c799bf57a988fbeb323591be062e7ee91181214f01224b2693672ab52a626.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('4d82836a-4722-5f25-9881-1bcded1b7365', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_plans_and_invitations_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bef24115044ec1295988074c10e39dd6d0611ac13925065cab4eb8db99d0f1d5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('89b5cf74-d107-55b3-9f95-4ded004870e5', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('4d82836a-4722-5f25-9881-1bcded1b7365', 1), 'bef24115044ec1295988074c10e39dd6d0611ac13925065cab4eb8db99d0f1d5',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/d32c799bf57a988fbeb323591be062e7ee91181214f01224b2693672ab52a626.mp3', 1097, '2026-09-14 10:39:09.747516', '6fea4d5a6e32e96ff663326fff82b641692620277549c087d76c04903f2d1f3d', 'validated', '{"audio_key":"d32c799bf57a988fbeb323591be062e7ee91181214f01224b2693672ab52a626","entity_key":"lx_plans_and_invitations_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6fea4d5a6e32e96ff663326fff82b641692620277549c087d76c04903f2d1f3d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/d32c799bf57a988fbeb323591be062e7ee91181214f01224b2693672ab52a626.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_plans_and_invitations_04 -> audio/generated/fr-FR/lexical/d32c799bf57a988fbeb323591be062e7ee91181214f01224b2693672ab52a626.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6300216d-e639-5c60-8baa-2a4eff1ef12e', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_plans_and_invitations_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bef24115044ec1295988074c10e39dd6d0611ac13925065cab4eb8db99d0f1d5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d9ca6d88-e5df-5297-9830-171bea8d5b45', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6300216d-e639-5c60-8baa-2a4eff1ef12e', 1), 'bef24115044ec1295988074c10e39dd6d0611ac13925065cab4eb8db99d0f1d5',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/d32c799bf57a988fbeb323591be062e7ee91181214f01224b2693672ab52a626.mp3', 1097, '2026-09-14 10:39:09.747516', '6fea4d5a6e32e96ff663326fff82b641692620277549c087d76c04903f2d1f3d', 'validated', '{"audio_key":"d32c799bf57a988fbeb323591be062e7ee91181214f01224b2693672ab52a626","entity_key":"wf_plans_and_invitations_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6fea4d5a6e32e96ff663326fff82b641692620277549c087d76c04903f2d1f3d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/d32c799bf57a988fbeb323591be062e7ee91181214f01224b2693672ab52a626.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_opinions_and_media_04 -> audio/generated/fr-FR/lexical/dbbae5eb9098487430d3e918c1da88291b20578acf3489d202f1e2f9bfc50fcf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1ddff22e-af0b-5bbb-b11f-ab6625561c46', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_opinions_and_media_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c04f7b1fe3b1f2a013846b5ca915f56b6edd503212c259799d02b85aba0b45fe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6a79d524-f15b-509d-b721-a3d5f3418797', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1ddff22e-af0b-5bbb-b11f-ab6625561c46', 1), 'c04f7b1fe3b1f2a013846b5ca915f56b6edd503212c259799d02b85aba0b45fe',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/dbbae5eb9098487430d3e918c1da88291b20578acf3489d202f1e2f9bfc50fcf.mp3', 914, '2026-09-14 10:39:10.149987', '13a1b9a1df28d40d1ace583e75b7f890efae1c6c710d2b27485d25ac42b125d8', 'validated', '{"audio_key":"dbbae5eb9098487430d3e918c1da88291b20578acf3489d202f1e2f9bfc50fcf","entity_key":"lx_opinions_and_media_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"13a1b9a1df28d40d1ace583e75b7f890efae1c6c710d2b27485d25ac42b125d8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/dbbae5eb9098487430d3e918c1da88291b20578acf3489d202f1e2f9bfc50fcf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_opinions_and_media_04 -> audio/generated/fr-FR/lexical/dbbae5eb9098487430d3e918c1da88291b20578acf3489d202f1e2f9bfc50fcf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('022f8e62-024c-50f6-8d24-d233e3855a64', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_opinions_and_media_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c04f7b1fe3b1f2a013846b5ca915f56b6edd503212c259799d02b85aba0b45fe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('57873877-211c-5087-8c03-78383e0c34a5', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('022f8e62-024c-50f6-8d24-d233e3855a64', 1), 'c04f7b1fe3b1f2a013846b5ca915f56b6edd503212c259799d02b85aba0b45fe',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/dbbae5eb9098487430d3e918c1da88291b20578acf3489d202f1e2f9bfc50fcf.mp3', 914, '2026-09-14 10:39:10.149987', '13a1b9a1df28d40d1ace583e75b7f890efae1c6c710d2b27485d25ac42b125d8', 'validated', '{"audio_key":"dbbae5eb9098487430d3e918c1da88291b20578acf3489d202f1e2f9bfc50fcf","entity_key":"wf_opinions_and_media_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"13a1b9a1df28d40d1ace583e75b7f890efae1c6c710d2b27485d25ac42b125d8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/dbbae5eb9098487430d3e918c1da88291b20578acf3489d202f1e2f9bfc50fcf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_clothes_and_comparisons_05 -> audio/generated/fr-FR/lexical/dd8f57704485295033da55b284b113a93b8f83679a8e7806c3dde608db6265c1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2fea78a5-c7a2-5875-a638-fd375e6fd719', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_clothes_and_comparisons_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '85ef41f248f808bfa501c848745c9094b4b1ae4e1298ca72bfb6a813d1c364dc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4679027f-e8f3-5525-96dc-c8fdc3170e0a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2fea78a5-c7a2-5875-a638-fd375e6fd719', 1), '85ef41f248f808bfa501c848745c9094b4b1ae4e1298ca72bfb6a813d1c364dc',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/dd8f57704485295033da55b284b113a93b8f83679a8e7806c3dde608db6265c1.mp3', 862, '2026-09-14 10:39:10.663985', '39524910b5ad8d73995717db41a30a3bc99d5770c780f6408924bb536390e0e0', 'validated', '{"audio_key":"dd8f57704485295033da55b284b113a93b8f83679a8e7806c3dde608db6265c1","entity_key":"lx_clothes_and_comparisons_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"39524910b5ad8d73995717db41a30a3bc99d5770c780f6408924bb536390e0e0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/dd8f57704485295033da55b284b113a93b8f83679a8e7806c3dde608db6265c1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_clothes_and_comparisons_05 -> audio/generated/fr-FR/lexical/dd8f57704485295033da55b284b113a93b8f83679a8e7806c3dde608db6265c1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('01137a8b-2412-5cd6-a3b6-cfecebc31fe0', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_clothes_and_comparisons_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '85ef41f248f808bfa501c848745c9094b4b1ae4e1298ca72bfb6a813d1c364dc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4fabbcd1-7d70-5d9d-8801-0c4bb6e0b02b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('01137a8b-2412-5cd6-a3b6-cfecebc31fe0', 1), '85ef41f248f808bfa501c848745c9094b4b1ae4e1298ca72bfb6a813d1c364dc',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/dd8f57704485295033da55b284b113a93b8f83679a8e7806c3dde608db6265c1.mp3', 862, '2026-09-14 10:39:10.663985', '39524910b5ad8d73995717db41a30a3bc99d5770c780f6408924bb536390e0e0', 'validated', '{"audio_key":"dd8f57704485295033da55b284b113a93b8f83679a8e7806c3dde608db6265c1","entity_key":"wf_clothes_and_comparisons_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"39524910b5ad8d73995717db41a30a3bc99d5770c780f6408924bb536390e0e0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/dd8f57704485295033da55b284b113a93b8f83679a8e7806c3dde608db6265c1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_plans_and_invitations_03 -> audio/generated/fr-FR/lexical/e5114632576f129bf8a890f35348744d58492fd362cafc20f2f5d5f87529dc1a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0cc1064c-9165-5787-a54a-fd8a840ba9ad', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_plans_and_invitations_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '024bed24f05b33e99cf9b8ac23ba90408e7d2c01af6e4fea369d90bb6a6c845d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5d6db58e-bbf8-5f0b-ab47-6b433492bf2c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0cc1064c-9165-5787-a54a-fd8a840ba9ad', 1), '024bed24f05b33e99cf9b8ac23ba90408e7d2c01af6e4fea369d90bb6a6c845d',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/e5114632576f129bf8a890f35348744d58492fd362cafc20f2f5d5f87529dc1a.mp3', 1018, '2026-09-14 10:39:11.111664', '732fe526c70e705fb9a8658b5be7ee80f690f613608c68013ad4fd63e06daa50', 'validated', '{"audio_key":"e5114632576f129bf8a890f35348744d58492fd362cafc20f2f5d5f87529dc1a","entity_key":"lx_plans_and_invitations_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"732fe526c70e705fb9a8658b5be7ee80f690f613608c68013ad4fd63e06daa50","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/e5114632576f129bf8a890f35348744d58492fd362cafc20f2f5d5f87529dc1a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_plans_and_invitations_03 -> audio/generated/fr-FR/lexical/e5114632576f129bf8a890f35348744d58492fd362cafc20f2f5d5f87529dc1a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('884d6e72-499e-5cbd-a2cb-6652bc090a65', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_plans_and_invitations_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '024bed24f05b33e99cf9b8ac23ba90408e7d2c01af6e4fea369d90bb6a6c845d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ac40205b-27ba-5873-980c-3d887c3c1907', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('884d6e72-499e-5cbd-a2cb-6652bc090a65', 1), '024bed24f05b33e99cf9b8ac23ba90408e7d2c01af6e4fea369d90bb6a6c845d',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/e5114632576f129bf8a890f35348744d58492fd362cafc20f2f5d5f87529dc1a.mp3', 1018, '2026-09-14 10:39:11.111664', '732fe526c70e705fb9a8658b5be7ee80f690f613608c68013ad4fd63e06daa50', 'validated', '{"audio_key":"e5114632576f129bf8a890f35348744d58492fd362cafc20f2f5d5f87529dc1a","entity_key":"wf_plans_and_invitations_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"732fe526c70e705fb9a8658b5be7ee80f690f613608c68013ad4fd63e06daa50","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/e5114632576f129bf8a890f35348744d58492fd362cafc20f2f5d5f87529dc1a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_work_and_obligations_05 -> audio/generated/fr-FR/lexical/e90b8bb01c053f471292aa37efef8dc16e6fdacec7982a75dff95c329aa8028a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f41a8e58-c99e-5245-95b5-7b20d9855a83', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_work_and_obligations_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c8ec03ed9ce7765f29aa574e50412bd72cf0a36864fe798712c6ef2b398bf283'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('64f6cacb-4181-58c4-a5fb-29d6bc1189b9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f41a8e58-c99e-5245-95b5-7b20d9855a83', 1), 'c8ec03ed9ce7765f29aa574e50412bd72cf0a36864fe798712c6ef2b398bf283',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/e90b8bb01c053f471292aa37efef8dc16e6fdacec7982a75dff95c329aa8028a.mp3', 966, '2026-09-14 10:39:11.644797', 'a6f24decb13335c261ed0c864423e2b0d51ebe52176de9b184ab59c87259d9ff', 'validated', '{"audio_key":"e90b8bb01c053f471292aa37efef8dc16e6fdacec7982a75dff95c329aa8028a","entity_key":"lx_work_and_obligations_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a6f24decb13335c261ed0c864423e2b0d51ebe52176de9b184ab59c87259d9ff","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/e90b8bb01c053f471292aa37efef8dc16e6fdacec7982a75dff95c329aa8028a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_work_and_obligations_05 -> audio/generated/fr-FR/lexical/e90b8bb01c053f471292aa37efef8dc16e6fdacec7982a75dff95c329aa8028a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8c3b8e09-1e4b-55b6-b342-15fa789793d1', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_work_and_obligations_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c8ec03ed9ce7765f29aa574e50412bd72cf0a36864fe798712c6ef2b398bf283'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('33b950b0-a1b1-578d-b467-28e6567ccb0b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8c3b8e09-1e4b-55b6-b342-15fa789793d1', 1), 'c8ec03ed9ce7765f29aa574e50412bd72cf0a36864fe798712c6ef2b398bf283',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/e90b8bb01c053f471292aa37efef8dc16e6fdacec7982a75dff95c329aa8028a.mp3', 966, '2026-09-14 10:39:11.644797', 'a6f24decb13335c261ed0c864423e2b0d51ebe52176de9b184ab59c87259d9ff', 'validated', '{"audio_key":"e90b8bb01c053f471292aa37efef8dc16e6fdacec7982a75dff95c329aa8028a","entity_key":"wf_work_and_obligations_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a6f24decb13335c261ed0c864423e2b0d51ebe52176de9b184ab59c87259d9ff","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/e90b8bb01c053f471292aa37efef8dc16e6fdacec7982a75dff95c329aa8028a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_health_and_pharmacy_06 -> audio/generated/fr-FR/lexical/ec59048ac067fe045fce08c88f16a4fc4df6562bace4feaa4f660828d5eadc7a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('547cfcdf-ab26-5146-96a1-452b27bfae07', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_health_and_pharmacy_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b4ec6788ab04da10a5ee39ddf460ffdbcf81da8971a0639c49f53ebe0f154ad7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('58735d60-b2da-521c-85bb-95fbf6105c1a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('547cfcdf-ab26-5146-96a1-452b27bfae07', 1), 'b4ec6788ab04da10a5ee39ddf460ffdbcf81da8971a0639c49f53ebe0f154ad7',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/ec59048ac067fe045fce08c88f16a4fc4df6562bace4feaa4f660828d5eadc7a.mp3', 914, '2026-09-14 10:39:12.071298', 'e19ce1f8b9d81f6c87c7fd1470325489f9e612bd90b796829e5660b7291c36b1', 'validated', '{"audio_key":"ec59048ac067fe045fce08c88f16a4fc4df6562bace4feaa4f660828d5eadc7a","entity_key":"lx_health_and_pharmacy_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e19ce1f8b9d81f6c87c7fd1470325489f9e612bd90b796829e5660b7291c36b1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/ec59048ac067fe045fce08c88f16a4fc4df6562bace4feaa4f660828d5eadc7a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_health_and_pharmacy_06 -> audio/generated/fr-FR/lexical/ec59048ac067fe045fce08c88f16a4fc4df6562bace4feaa4f660828d5eadc7a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('57137ced-cf1e-540e-bbe5-c799b4b3ce51', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_health_and_pharmacy_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b4ec6788ab04da10a5ee39ddf460ffdbcf81da8971a0639c49f53ebe0f154ad7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d2eb46f1-a3aa-5187-afce-d04bcf7e95c8', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('57137ced-cf1e-540e-bbe5-c799b4b3ce51', 1), 'b4ec6788ab04da10a5ee39ddf460ffdbcf81da8971a0639c49f53ebe0f154ad7',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/ec59048ac067fe045fce08c88f16a4fc4df6562bace4feaa4f660828d5eadc7a.mp3', 914, '2026-09-14 10:39:12.071298', 'e19ce1f8b9d81f6c87c7fd1470325489f9e612bd90b796829e5660b7291c36b1', 'validated', '{"audio_key":"ec59048ac067fe045fce08c88f16a4fc4df6562bace4feaa4f660828d5eadc7a","entity_key":"wf_health_and_pharmacy_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e19ce1f8b9d81f6c87c7fd1470325489f9e612bd90b796829e5660b7291c36b1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/ec59048ac067fe045fce08c88f16a4fc4df6562bace4feaa4f660828d5eadc7a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_health_and_pharmacy_01 -> audio/generated/fr-FR/lexical/eca1875f5c72ef0b5aa7b1970c7c474f6609d747dcc5c13ac06b9b7721f8f7c5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ce1f4f43-a83f-5486-9b51-dbe9bddcaf13', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_health_and_pharmacy_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7dd63aacc0e19159089a209ed9cd0cff123edea3f6c13c207193130bf7f4d41d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5cd518bd-e374-5edd-b92c-d09db6837fd2', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ce1f4f43-a83f-5486-9b51-dbe9bddcaf13', 1), '7dd63aacc0e19159089a209ed9cd0cff123edea3f6c13c207193130bf7f4d41d',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/eca1875f5c72ef0b5aa7b1970c7c474f6609d747dcc5c13ac06b9b7721f8f7c5.mp3', 966, '2026-09-14 10:39:12.580155', 'a9049b62127e8cc8455aaf7df132e67045d1b8396ae40831ff2e3d144aaac013', 'validated', '{"audio_key":"eca1875f5c72ef0b5aa7b1970c7c474f6609d747dcc5c13ac06b9b7721f8f7c5","entity_key":"lx_health_and_pharmacy_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a9049b62127e8cc8455aaf7df132e67045d1b8396ae40831ff2e3d144aaac013","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/eca1875f5c72ef0b5aa7b1970c7c474f6609d747dcc5c13ac06b9b7721f8f7c5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_health_and_pharmacy_01 -> audio/generated/fr-FR/lexical/eca1875f5c72ef0b5aa7b1970c7c474f6609d747dcc5c13ac06b9b7721f8f7c5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a9aaf168-c9be-5a8e-8fa1-939044d27d6d', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_health_and_pharmacy_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7dd63aacc0e19159089a209ed9cd0cff123edea3f6c13c207193130bf7f4d41d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cbebbd7d-ebda-5ed3-91b4-81f9b4a88ea2', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a9aaf168-c9be-5a8e-8fa1-939044d27d6d', 1), '7dd63aacc0e19159089a209ed9cd0cff123edea3f6c13c207193130bf7f4d41d',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/eca1875f5c72ef0b5aa7b1970c7c474f6609d747dcc5c13ac06b9b7721f8f7c5.mp3', 966, '2026-09-14 10:39:12.580155', 'a9049b62127e8cc8455aaf7df132e67045d1b8396ae40831ff2e3d144aaac013', 'validated', '{"audio_key":"eca1875f5c72ef0b5aa7b1970c7c474f6609d747dcc5c13ac06b9b7721f8f7c5","entity_key":"wf_health_and_pharmacy_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a9049b62127e8cc8455aaf7df132e67045d1b8396ae40831ff2e3d144aaac013","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/eca1875f5c72ef0b5aa7b1970c7c474f6609d747dcc5c13ac06b9b7721f8f7c5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_hotel_and_stay_03 -> audio/generated/fr-FR/lexical/f4c0a96b1459af3148dafa844caad95af0198d34908c88eb99bd8988e5695441.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('bbe6141e-01d9-533b-9278-3ee8ffb72b04', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_hotel_and_stay_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd1b42043db1b5e4a0343152823340b0271daf721f014b4413046986c790de61e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f2407608-601e-5bee-b50e-ff3459784b62', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('bbe6141e-01d9-533b-9278-3ee8ffb72b04', 1), 'd1b42043db1b5e4a0343152823340b0271daf721f014b4413046986c790de61e',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/f4c0a96b1459af3148dafa844caad95af0198d34908c88eb99bd8988e5695441.mp3', 1071, '2026-09-14 10:39:13.008591', '555c3b7294047c68ca891725e3f96324b7ca461c143e72d43d6bcfc2558eddd4', 'validated', '{"audio_key":"f4c0a96b1459af3148dafa844caad95af0198d34908c88eb99bd8988e5695441","entity_key":"lx_hotel_and_stay_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"555c3b7294047c68ca891725e3f96324b7ca461c143e72d43d6bcfc2558eddd4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/f4c0a96b1459af3148dafa844caad95af0198d34908c88eb99bd8988e5695441.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_hotel_and_stay_03 -> audio/generated/fr-FR/lexical/f4c0a96b1459af3148dafa844caad95af0198d34908c88eb99bd8988e5695441.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('903741bc-28ac-5f51-a27e-5b78c55bb652', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_hotel_and_stay_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd1b42043db1b5e4a0343152823340b0271daf721f014b4413046986c790de61e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('308ec3fd-56e8-5e0d-bab2-e9b813d6e7ad', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('903741bc-28ac-5f51-a27e-5b78c55bb652', 1), 'd1b42043db1b5e4a0343152823340b0271daf721f014b4413046986c790de61e',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/f4c0a96b1459af3148dafa844caad95af0198d34908c88eb99bd8988e5695441.mp3', 1071, '2026-09-14 10:39:13.008591', '555c3b7294047c68ca891725e3f96324b7ca461c143e72d43d6bcfc2558eddd4', 'validated', '{"audio_key":"f4c0a96b1459af3148dafa844caad95af0198d34908c88eb99bd8988e5695441","entity_key":"wf_hotel_and_stay_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"555c3b7294047c68ca891725e3f96324b7ca461c143e72d43d6bcfc2558eddd4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/f4c0a96b1459af3148dafa844caad95af0198d34908c88eb99bd8988e5695441.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_work_and_obligations_04 -> audio/generated/fr-FR/lexical/f6c88070ba1070670faf45eb9314c53b899211e963a0291dc4963a4447a5d337.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('bcd6f6db-b684-5356-962a-e24ca96464a6', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_work_and_obligations_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8c85d3fa84b7926e2e0664129cefa7ea17401086243561611c56ee5016908ea1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cb00e7e2-0f81-5fcf-97b2-b86104dfcdf6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('bcd6f6db-b684-5356-962a-e24ca96464a6', 1), '8c85d3fa84b7926e2e0664129cefa7ea17401086243561611c56ee5016908ea1',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/f6c88070ba1070670faf45eb9314c53b899211e963a0291dc4963a4447a5d337.mp3', 966, '2026-09-14 10:39:13.566378', '1bfba9b3941d0efda22824cd8821162cf516fadb24469e6bb72b8438c3356b02', 'validated', '{"audio_key":"f6c88070ba1070670faf45eb9314c53b899211e963a0291dc4963a4447a5d337","entity_key":"lx_work_and_obligations_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1bfba9b3941d0efda22824cd8821162cf516fadb24469e6bb72b8438c3356b02","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/f6c88070ba1070670faf45eb9314c53b899211e963a0291dc4963a4447a5d337.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_work_and_obligations_04 -> audio/generated/fr-FR/lexical/f6c88070ba1070670faf45eb9314c53b899211e963a0291dc4963a4447a5d337.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8f142df3-9e44-5c4d-93da-8218379412ae', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_work_and_obligations_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8c85d3fa84b7926e2e0664129cefa7ea17401086243561611c56ee5016908ea1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('54b5778a-2bdb-587e-8833-e3d35fb56c03', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8f142df3-9e44-5c4d-93da-8218379412ae', 1), '8c85d3fa84b7926e2e0664129cefa7ea17401086243561611c56ee5016908ea1',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/f6c88070ba1070670faf45eb9314c53b899211e963a0291dc4963a4447a5d337.mp3', 966, '2026-09-14 10:39:13.566378', '1bfba9b3941d0efda22824cd8821162cf516fadb24469e6bb72b8438c3356b02', 'validated', '{"audio_key":"f6c88070ba1070670faf45eb9314c53b899211e963a0291dc4963a4447a5d337","entity_key":"wf_work_and_obligations_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1bfba9b3941d0efda22824cd8821162cf516fadb24469e6bb72b8438c3356b02","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/f6c88070ba1070670faf45eb9314c53b899211e963a0291dc4963a4447a5d337.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_work_and_obligations_06 -> audio/generated/fr-FR/lexical/fdc27556d8070abb8df9d1027cf2a25690c8ade986cfe71999adcdda7ac68209.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0024335a-a76e-5b19-97ee-14755668d61a', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_work_and_obligations_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2d75cf733bc7b9a5febd217935f39015bf5aedd8dd34fb4e56c9e31db130fc42'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8392c710-25d4-519d-981d-76fc78f7049e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0024335a-a76e-5b19-97ee-14755668d61a', 1), '2d75cf733bc7b9a5febd217935f39015bf5aedd8dd34fb4e56c9e31db130fc42',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/fdc27556d8070abb8df9d1027cf2a25690c8ade986cfe71999adcdda7ac68209.mp3', 1071, '2026-09-14 10:39:13.942143', '891976539d40936a9e9bad57c36b97328368a2feecaffbcc177dc6d00f841c5c', 'validated', '{"audio_key":"fdc27556d8070abb8df9d1027cf2a25690c8ade986cfe71999adcdda7ac68209","entity_key":"lx_work_and_obligations_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"891976539d40936a9e9bad57c36b97328368a2feecaffbcc177dc6d00f841c5c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/fdc27556d8070abb8df9d1027cf2a25690c8ade986cfe71999adcdda7ac68209.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_work_and_obligations_06 -> audio/generated/fr-FR/lexical/fdc27556d8070abb8df9d1027cf2a25690c8ade986cfe71999adcdda7ac68209.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('25c417e3-ab7d-5af0-bf5d-2f7588a24d0c', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_work_and_obligations_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2d75cf733bc7b9a5febd217935f39015bf5aedd8dd34fb4e56c9e31db130fc42'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a2817305-8193-5700-b856-82262e54c3f7', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('25c417e3-ab7d-5af0-bf5d-2f7588a24d0c', 1), '2d75cf733bc7b9a5febd217935f39015bf5aedd8dd34fb4e56c9e31db130fc42',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/fdc27556d8070abb8df9d1027cf2a25690c8ade986cfe71999adcdda7ac68209.mp3', 1071, '2026-09-14 10:39:13.942143', '891976539d40936a9e9bad57c36b97328368a2feecaffbcc177dc6d00f841c5c', 'validated', '{"audio_key":"fdc27556d8070abb8df9d1027cf2a25690c8ade986cfe71999adcdda7ac68209","entity_key":"wf_work_and_obligations_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"891976539d40936a9e9bad57c36b97328368a2feecaffbcc177dc6d00f841c5c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/fdc27556d8070abb8df9d1027cf2a25690c8ade986cfe71999adcdda7ac68209.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_home_and_neighborhood_03 -> audio/generated/fr-FR/utterances/0334942ee0aee1fe08bc5b8a58bd4f564c6090631a0e59f15ed9de463aaee989.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ccda8df8-5a86-529f-aca5-532456e8d317', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_home_and_neighborhood_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4889d218677a8898bde070c7aaad3876a95b922887f59434a15746700b2407fb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('16c9964a-29a4-5f0b-a861-abed5ff0a12d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ccda8df8-5a86-529f-aca5-532456e8d317', 1), '4889d218677a8898bde070c7aaad3876a95b922887f59434a15746700b2407fb',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/0334942ee0aee1fe08bc5b8a58bd4f564c6090631a0e59f15ed9de463aaee989.mp3', 1933, '2026-09-14 10:39:14.604940', '2230c4467239bccb27f6ea9ca3215609360a5ae2d131e910e613a3c1dd16ee01', 'validated', '{"audio_key":"0334942ee0aee1fe08bc5b8a58bd4f564c6090631a0e59f15ed9de463aaee989","entity_key":"u_home_and_neighborhood_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2230c4467239bccb27f6ea9ca3215609360a5ae2d131e910e613a3c1dd16ee01","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/0334942ee0aee1fe08bc5b8a58bd4f564c6090631a0e59f15ed9de463aaee989.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_home_and_neighborhood_04 -> audio/generated/fr-FR/utterances/067ab0b1fdb9b55b6c245db934de45f25779a8c0829f4f82f1a6b087e3c05ea3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c066bd77-9bba-5505-9d95-70e100056453', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_home_and_neighborhood_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '761bda100775fa2fbb471d592109e6052a8eeb1bbd9ffe2f5bce3cc1b55d2432'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('33c3e269-9ee7-5674-8474-a59a6b4a64ec', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c066bd77-9bba-5505-9d95-70e100056453', 1), '761bda100775fa2fbb471d592109e6052a8eeb1bbd9ffe2f5bce3cc1b55d2432',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/067ab0b1fdb9b55b6c245db934de45f25779a8c0829f4f82f1a6b087e3c05ea3.mp3', 1854, '2026-09-14 10:39:14.963397', '15e6449035472bb29e5cfc034ba47749a8e1f698000785c85f875c69b3390ca9', 'validated', '{"audio_key":"067ab0b1fdb9b55b6c245db934de45f25779a8c0829f4f82f1a6b087e3c05ea3","entity_key":"u_home_and_neighborhood_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"15e6449035472bb29e5cfc034ba47749a8e1f698000785c85f875c69b3390ca9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/067ab0b1fdb9b55b6c245db934de45f25779a8c0829f4f82f1a6b087e3c05ea3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_home_and_neighborhood_02_listen -> audio/generated/fr-FR/utterances/067ab0b1fdb9b55b6c245db934de45f25779a8c0829f4f82f1a6b087e3c05ea3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('6b4cb08f-faf4-5c1f-b4cc-497859922991', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_home_and_neighborhood_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '761bda100775fa2fbb471d592109e6052a8eeb1bbd9ffe2f5bce3cc1b55d2432'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2129eb07-3c60-5c4e-9599-97734ce00d72', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('6b4cb08f-faf4-5c1f-b4cc-497859922991', 1), '761bda100775fa2fbb471d592109e6052a8eeb1bbd9ffe2f5bce3cc1b55d2432',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/067ab0b1fdb9b55b6c245db934de45f25779a8c0829f4f82f1a6b087e3c05ea3.mp3', 1854, '2026-09-14 10:39:14.963397', '15e6449035472bb29e5cfc034ba47749a8e1f698000785c85f875c69b3390ca9', 'validated', '{"audio_key":"067ab0b1fdb9b55b6c245db934de45f25779a8c0829f4f82f1a6b087e3c05ea3","entity_key":"e_home_and_neighborhood_02_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"15e6449035472bb29e5cfc034ba47749a8e1f698000785c85f875c69b3390ca9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/067ab0b1fdb9b55b6c245db934de45f25779a8c0829f4f82f1a6b087e3c05ea3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_plans_and_invitations_01 -> audio/generated/fr-FR/utterances/06f89661bae0ae3e5e3e3a75c2a235f159559849c0b44c6f25b411a8be013a6d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('00dd0ae8-b8d0-5867-9b5b-d16b0599940e', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_plans_and_invitations_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a1a46b09d5eedcb8e49507c068b084ff77edee5f4216f4e5b5ee526f7d28729f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d1d6c831-a6e9-5879-913d-5a2915d02a33', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('00dd0ae8-b8d0-5867-9b5b-d16b0599940e', 1), 'a1a46b09d5eedcb8e49507c068b084ff77edee5f4216f4e5b5ee526f7d28729f',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/06f89661bae0ae3e5e3e3a75c2a235f159559849c0b44c6f25b411a8be013a6d.mp3', 1436, '2026-09-14 10:39:15.597915', 'b2a9a582cad823cfd24298ccdbebce3ed90512f3fa6e098c02a7a26dd80343a6', 'validated', '{"audio_key":"06f89661bae0ae3e5e3e3a75c2a235f159559849c0b44c6f25b411a8be013a6d","entity_key":"u_plans_and_invitations_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b2a9a582cad823cfd24298ccdbebce3ed90512f3fa6e098c02a7a26dd80343a6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/06f89661bae0ae3e5e3e3a75c2a235f159559849c0b44c6f25b411a8be013a6d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_opinions_and_media_01 -> audio/generated/fr-FR/utterances/0d8765db697f67c0cc0cda7c3f67cd66831f11b611a2c642183a5e6775905084.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b2da6a34-3d77-5d72-82a0-04672019b69b', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_opinions_and_media_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cf2fa17df42a5046b1d31d443a6498bd1e2867a1160e9634ddcb7c043e6e6294'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7089e0c2-12cf-5df5-9b56-81de6fd691eb', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b2da6a34-3d77-5d72-82a0-04672019b69b', 1), 'cf2fa17df42a5046b1d31d443a6498bd1e2867a1160e9634ddcb7c043e6e6294',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/0d8765db697f67c0cc0cda7c3f67cd66831f11b611a2c642183a5e6775905084.mp3', 1906, '2026-09-14 10:39:15.986771', '4120ccf391dbc7809361e45c02bee60a0450998456feaf46e37dd0b6e42dcff2', 'validated', '{"audio_key":"0d8765db697f67c0cc0cda7c3f67cd66831f11b611a2c642183a5e6775905084","entity_key":"u_opinions_and_media_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4120ccf391dbc7809361e45c02bee60a0450998456feaf46e37dd0b6e42dcff2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/0d8765db697f67c0cc0cda7c3f67cd66831f11b611a2c642183a5e6775905084.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_health_and_pharmacy_03 -> audio/generated/fr-FR/utterances/14ddad9392a9efbd3040048f8506a0404f1a0f473cf2895bdcb813079c9123f9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('eddf5599-361c-53ff-aa0e-f82060a323f0', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_health_and_pharmacy_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7ccda9174999959bc471a82d8c626ded31d8d94e927e9ae046d6fdf75535230c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4081bf52-75cb-5d75-9b52-5e5d55fa2b46', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('eddf5599-361c-53ff-aa0e-f82060a323f0', 1), '7ccda9174999959bc471a82d8c626ded31d8d94e927e9ae046d6fdf75535230c',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/14ddad9392a9efbd3040048f8506a0404f1a0f473cf2895bdcb813079c9123f9.mp3', 1933, '2026-09-14 10:39:16.635565', '03e79be02950059db375c7e4341ce6128670c7bbeeadce38f40a3d6951459a05', 'validated', '{"audio_key":"14ddad9392a9efbd3040048f8506a0404f1a0f473cf2895bdcb813079c9123f9","entity_key":"u_health_and_pharmacy_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"03e79be02950059db375c7e4341ce6128670c7bbeeadce38f40a3d6951459a05","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/14ddad9392a9efbd3040048f8506a0404f1a0f473cf2895bdcb813079c9123f9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_home_and_neighborhood_02 -> audio/generated/fr-FR/utterances/1892c6bceaa821bf7b1b5acfd8dd526b353709191612e87992f75d5db4bead6b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3d02db69-48e4-56bf-991c-dcbef60371a4', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_home_and_neighborhood_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2204e85f19c0fe9bf7f3ad88edaf3a1198deb88fe45a470d98132e3b7a49eed0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d32c0d06-b355-5ffc-a65c-025084de6070', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3d02db69-48e4-56bf-991c-dcbef60371a4', 1), '2204e85f19c0fe9bf7f3ad88edaf3a1198deb88fe45a470d98132e3b7a49eed0',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/1892c6bceaa821bf7b1b5acfd8dd526b353709191612e87992f75d5db4bead6b.mp3', 1697, '2026-09-14 10:39:17.005258', 'cd2ae50b848871820d0d1cd5673b01d7027134ab9414b80df2943554933fc668', 'validated', '{"audio_key":"1892c6bceaa821bf7b1b5acfd8dd526b353709191612e87992f75d5db4bead6b","entity_key":"u_home_and_neighborhood_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"cd2ae50b848871820d0d1cd5673b01d7027134ab9414b80df2943554933fc668","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/1892c6bceaa821bf7b1b5acfd8dd526b353709191612e87992f75d5db4bead6b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_home_and_neighborhood_01_listen -> audio/generated/fr-FR/utterances/1892c6bceaa821bf7b1b5acfd8dd526b353709191612e87992f75d5db4bead6b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('1f70a640-12a5-557b-bc4d-b538336cfdb8', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_home_and_neighborhood_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2204e85f19c0fe9bf7f3ad88edaf3a1198deb88fe45a470d98132e3b7a49eed0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7d19e95d-cc8a-5f98-82a0-ceb984891766', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('1f70a640-12a5-557b-bc4d-b538336cfdb8', 1), '2204e85f19c0fe9bf7f3ad88edaf3a1198deb88fe45a470d98132e3b7a49eed0',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/1892c6bceaa821bf7b1b5acfd8dd526b353709191612e87992f75d5db4bead6b.mp3', 1697, '2026-09-14 10:39:17.005258', 'cd2ae50b848871820d0d1cd5673b01d7027134ab9414b80df2943554933fc668', 'validated', '{"audio_key":"1892c6bceaa821bf7b1b5acfd8dd526b353709191612e87992f75d5db4bead6b","entity_key":"e_home_and_neighborhood_01_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"cd2ae50b848871820d0d1cd5673b01d7027134ab9414b80df2943554933fc668","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/1892c6bceaa821bf7b1b5acfd8dd526b353709191612e87992f75d5db4bead6b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_health_and_pharmacy_02 -> audio/generated/fr-FR/utterances/24f816e9b3b538d6c342be495546aa1acf20ca6f2c437ecb5e1f01f225050d6c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('67f33bbc-e105-50c3-b3df-9632ac0fcf27', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_health_and_pharmacy_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '472bc6bebf7f40933751b45d8f0e3d8418c5dc79d1b672f31eca39ea6257d08f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5f44781c-bb1a-53ae-9b18-57106aa20cde', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('67f33bbc-e105-50c3-b3df-9632ac0fcf27', 1), '472bc6bebf7f40933751b45d8f0e3d8418c5dc79d1b672f31eca39ea6257d08f',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/24f816e9b3b538d6c342be495546aa1acf20ca6f2c437ecb5e1f01f225050d6c.mp3', 1280, '2026-09-14 10:39:17.662178', '2106a7461d9a45d1c4cf09f1f6f146baa136ead1fe0ff051801f5f68e1d83141', 'validated', '{"audio_key":"24f816e9b3b538d6c342be495546aa1acf20ca6f2c437ecb5e1f01f225050d6c","entity_key":"u_health_and_pharmacy_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2106a7461d9a45d1c4cf09f1f6f146baa136ead1fe0ff051801f5f68e1d83141","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/24f816e9b3b538d6c342be495546aa1acf20ca6f2c437ecb5e1f01f225050d6c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_health_and_pharmacy_01_listen -> audio/generated/fr-FR/utterances/24f816e9b3b538d6c342be495546aa1acf20ca6f2c437ecb5e1f01f225050d6c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('fa682851-963b-554c-aadf-3c93331cc77e', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_health_and_pharmacy_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '472bc6bebf7f40933751b45d8f0e3d8418c5dc79d1b672f31eca39ea6257d08f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9281fa28-1ca8-5c94-aea2-2a6b3711ca53', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('fa682851-963b-554c-aadf-3c93331cc77e', 1), '472bc6bebf7f40933751b45d8f0e3d8418c5dc79d1b672f31eca39ea6257d08f',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/24f816e9b3b538d6c342be495546aa1acf20ca6f2c437ecb5e1f01f225050d6c.mp3', 1280, '2026-09-14 10:39:17.662178', '2106a7461d9a45d1c4cf09f1f6f146baa136ead1fe0ff051801f5f68e1d83141', 'validated', '{"audio_key":"24f816e9b3b538d6c342be495546aa1acf20ca6f2c437ecb5e1f01f225050d6c","entity_key":"e_health_and_pharmacy_01_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2106a7461d9a45d1c4cf09f1f6f146baa136ead1fe0ff051801f5f68e1d83141","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/24f816e9b3b538d6c342be495546aa1acf20ca6f2c437ecb5e1f01f225050d6c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_hotel_and_stay_03 -> audio/generated/fr-FR/utterances/25bf6b1803f741fc3c89efd6a3a3e634878901796db0abd97b2c09689eddd4e2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('de354de0-278e-5b10-b2c0-42790ca8a85c', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_hotel_and_stay_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '939887421674053d322e0b5cdfa207597d1346d0e9fbc9cc3fe1b5005a397c5f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c152ed1e-150e-5c0f-822f-a1941555ffe1', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('de354de0-278e-5b10-b2c0-42790ca8a85c', 1), '939887421674053d322e0b5cdfa207597d1346d0e9fbc9cc3fe1b5005a397c5f',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/25bf6b1803f741fc3c89efd6a3a3e634878901796db0abd97b2c09689eddd4e2.mp3', 1750, '2026-09-14 10:39:18.044328', '905792d1936942cd738dd8391440c1cf016273e905b916c9130b888d1b1559bd', 'validated', '{"audio_key":"25bf6b1803f741fc3c89efd6a3a3e634878901796db0abd97b2c09689eddd4e2","entity_key":"u_hotel_and_stay_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"905792d1936942cd738dd8391440c1cf016273e905b916c9130b888d1b1559bd","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/25bf6b1803f741fc3c89efd6a3a3e634878901796db0abd97b2c09689eddd4e2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_food_and_quantities_01 -> audio/generated/fr-FR/utterances/2e23ed61036878da0d12f4319a3cdcb89aaeb53a5ecd29c7d662b51dbd741c3a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('568f58f3-836c-58c9-8942-84a3fdbe40da', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_food_and_quantities_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '42876544aaacbebb61d7d64e2b68b636f2bd17445a156475ec7492e673c485fd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d66bbb3b-16ea-5ec4-b575-f1fead3c905c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('568f58f3-836c-58c9-8942-84a3fdbe40da', 1), '42876544aaacbebb61d7d64e2b68b636f2bd17445a156475ec7492e673c485fd',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/2e23ed61036878da0d12f4319a3cdcb89aaeb53a5ecd29c7d662b51dbd741c3a.mp3', 1697, '2026-09-14 10:39:18.697184', '6c83880069905861a4bce5248b9c5c729e29ea5936a5bb2f009a0ec0449adf98', 'validated', '{"audio_key":"2e23ed61036878da0d12f4319a3cdcb89aaeb53a5ecd29c7d662b51dbd741c3a","entity_key":"u_food_and_quantities_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6c83880069905861a4bce5248b9c5c729e29ea5936a5bb2f009a0ec0449adf98","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/2e23ed61036878da0d12f4319a3cdcb89aaeb53a5ecd29c7d662b51dbd741c3a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_clothes_and_comparisons_02 -> audio/generated/fr-FR/utterances/3680501ca531d48abe15339b647d7b14dd3fd3ef3be4c7f268b514cc5bfb63bd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('97ac3be5-9560-573a-bf4b-6c92f651d2d8', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_clothes_and_comparisons_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '940772f14cf81a1fe750b83ebd2d86f518a7d659dfaa800da0f973ee0de27cad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1e5661ff-bdb6-5c1c-af23-ea29b0db2263', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('97ac3be5-9560-573a-bf4b-6c92f651d2d8', 1), '940772f14cf81a1fe750b83ebd2d86f518a7d659dfaa800da0f973ee0de27cad',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/3680501ca531d48abe15339b647d7b14dd3fd3ef3be4c7f268b514cc5bfb63bd.mp3', 2115, '2026-09-14 10:39:19.118222', 'f7ba146e7ceb66ebf11aaafa758d56f4a3744e40db9f9cfa07559ec33ce034af', 'validated', '{"audio_key":"3680501ca531d48abe15339b647d7b14dd3fd3ef3be4c7f268b514cc5bfb63bd","entity_key":"u_clothes_and_comparisons_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f7ba146e7ceb66ebf11aaafa758d56f4a3744e40db9f9cfa07559ec33ce034af","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/3680501ca531d48abe15339b647d7b14dd3fd3ef3be4c7f268b514cc5bfb63bd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_clothes_and_comparisons_01_listen -> audio/generated/fr-FR/utterances/3680501ca531d48abe15339b647d7b14dd3fd3ef3be4c7f268b514cc5bfb63bd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('b2b46eab-5690-57ee-9d41-796a17bd0693', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_clothes_and_comparisons_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '940772f14cf81a1fe750b83ebd2d86f518a7d659dfaa800da0f973ee0de27cad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e3436072-ed68-5b45-a342-cf83fd0114fe', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('b2b46eab-5690-57ee-9d41-796a17bd0693', 1), '940772f14cf81a1fe750b83ebd2d86f518a7d659dfaa800da0f973ee0de27cad',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/3680501ca531d48abe15339b647d7b14dd3fd3ef3be4c7f268b514cc5bfb63bd.mp3', 2115, '2026-09-14 10:39:19.118222', 'f7ba146e7ceb66ebf11aaafa758d56f4a3744e40db9f9cfa07559ec33ce034af', 'validated', '{"audio_key":"3680501ca531d48abe15339b647d7b14dd3fd3ef3be4c7f268b514cc5bfb63bd","entity_key":"e_clothes_and_comparisons_01_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f7ba146e7ceb66ebf11aaafa758d56f4a3744e40db9f9cfa07559ec33ce034af","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/3680501ca531d48abe15339b647d7b14dd3fd3ef3be4c7f268b514cc5bfb63bd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_a2_problem_solving_capstone_01 -> audio/generated/fr-FR/utterances/37b433a319fba1b9c3084238c8fccab8c7018d7da853cb3ab3424b6eb8a42ccc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b08599e1-1c17-5ff1-8c44-affecf64810d', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_a2_problem_solving_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bc84920483882cd4bead48ff12a2b2763c27e36c13ef95fbe2fb3a2decfe46f1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('94721892-ce9b-54c5-a0b5-ca1fbe378d98', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b08599e1-1c17-5ff1-8c44-affecf64810d', 1), 'bc84920483882cd4bead48ff12a2b2763c27e36c13ef95fbe2fb3a2decfe46f1',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/37b433a319fba1b9c3084238c8fccab8c7018d7da853cb3ab3424b6eb8a42ccc.mp3', 1906, '2026-09-14 10:39:19.736879', 'af241aba4f5b5cbbed422f0b53ef81b4642ea86a2910ec47be11fc8735376822', 'validated', '{"audio_key":"37b433a319fba1b9c3084238c8fccab8c7018d7da853cb3ab3424b6eb8a42ccc","entity_key":"u_a2_problem_solving_capstone_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"af241aba4f5b5cbbed422f0b53ef81b4642ea86a2910ec47be11fc8735376822","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/37b433a319fba1b9c3084238c8fccab8c7018d7da853cb3ab3424b6eb8a42ccc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_yesterday_and_past_02 -> audio/generated/fr-FR/utterances/393a92b2387dc5ec6e12becc65dfc495f50851e0f56105bfa203b968c9e4be4e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2f4f94ec-e74e-526f-8c34-10775805f949', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_yesterday_and_past_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9d43110c2b8ffaac49bce2ec63df654a0896af261fd41b75e32c7942163560a7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('825b01f7-7bc9-5f32-81e8-cbb96978ad77', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2f4f94ec-e74e-526f-8c34-10775805f949', 1), '9d43110c2b8ffaac49bce2ec63df654a0896af261fd41b75e32c7942163560a7',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/393a92b2387dc5ec6e12becc65dfc495f50851e0f56105bfa203b968c9e4be4e.mp3', 1515, '2026-09-14 10:39:20.114866', '8ff3bddfd22af0ea768796d20339f35d5946d49f409faaf7b34302579fe4dc34', 'validated', '{"audio_key":"393a92b2387dc5ec6e12becc65dfc495f50851e0f56105bfa203b968c9e4be4e","entity_key":"u_yesterday_and_past_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8ff3bddfd22af0ea768796d20339f35d5946d49f409faaf7b34302579fe4dc34","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/393a92b2387dc5ec6e12becc65dfc495f50851e0f56105bfa203b968c9e4be4e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_yesterday_and_past_01_listen -> audio/generated/fr-FR/utterances/393a92b2387dc5ec6e12becc65dfc495f50851e0f56105bfa203b968c9e4be4e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('57d711a6-b1ef-5687-b1f9-08582c9c7518', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_yesterday_and_past_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9d43110c2b8ffaac49bce2ec63df654a0896af261fd41b75e32c7942163560a7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f31d572e-0877-5415-b709-da300b2ce4b0', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('57d711a6-b1ef-5687-b1f9-08582c9c7518', 1), '9d43110c2b8ffaac49bce2ec63df654a0896af261fd41b75e32c7942163560a7',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/393a92b2387dc5ec6e12becc65dfc495f50851e0f56105bfa203b968c9e4be4e.mp3', 1515, '2026-09-14 10:39:20.114866', '8ff3bddfd22af0ea768796d20339f35d5946d49f409faaf7b34302579fe4dc34', 'validated', '{"audio_key":"393a92b2387dc5ec6e12becc65dfc495f50851e0f56105bfa203b968c9e4be4e","entity_key":"e_yesterday_and_past_01_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8ff3bddfd22af0ea768796d20339f35d5946d49f409faaf7b34302579fe4dc34","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/393a92b2387dc5ec6e12becc65dfc495f50851e0f56105bfa203b968c9e4be4e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_food_and_quantities_03 -> audio/generated/fr-FR/utterances/502a2f6f1f5c5a6d8904d9aa90f1c18b5c928db1037896e8c063f4cda9f29c04.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('dc5678d6-e864-5ab9-bb19-8fb51306b71b', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_food_and_quantities_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '80de9b6c0984222e229d5f51488a5c91be30d551b7046e477f982e5424ecf495'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7a7a4812-3359-574e-818d-af384afd5536', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('dc5678d6-e864-5ab9-bb19-8fb51306b71b', 1), '80de9b6c0984222e229d5f51488a5c91be30d551b7046e477f982e5424ecf495',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/502a2f6f1f5c5a6d8904d9aa90f1c18b5c928db1037896e8c063f4cda9f29c04.mp3', 1933, '2026-09-14 10:39:20.750872', '2a1b39bf32a7c2ec565c963d4082a5b1d4625f85a225eb0086cb561d4db2cce9', 'validated', '{"audio_key":"502a2f6f1f5c5a6d8904d9aa90f1c18b5c928db1037896e8c063f4cda9f29c04","entity_key":"u_food_and_quantities_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2a1b39bf32a7c2ec565c963d4082a5b1d4625f85a225eb0086cb561d4db2cce9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/502a2f6f1f5c5a6d8904d9aa90f1c18b5c928db1037896e8c063f4cda9f29c04.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_hotel_and_stay_04 -> audio/generated/fr-FR/utterances/536c72e561d8660d51b5254924bd37900032368e9ffdb3003951c7ce4b1fa15c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('514dd59b-256b-5164-b7da-35ecac03b1ba', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_hotel_and_stay_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd8bdd18cc8714d9546df12bba04c78acf3135c4fb615812967e414b311e4a018'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9b55763a-6400-59fd-8c62-39d3871cb388', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('514dd59b-256b-5164-b7da-35ecac03b1ba', 1), 'd8bdd18cc8714d9546df12bba04c78acf3135c4fb615812967e414b311e4a018',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/536c72e561d8660d51b5254924bd37900032368e9ffdb3003951c7ce4b1fa15c.mp3', 1985, '2026-09-14 10:39:21.170609', 'eb99a1dafd3fa73e0701a9642654c84362fa0ce82aa7a7d46fcb171b1539024b', 'validated', '{"audio_key":"536c72e561d8660d51b5254924bd37900032368e9ffdb3003951c7ce4b1fa15c","entity_key":"u_hotel_and_stay_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"eb99a1dafd3fa73e0701a9642654c84362fa0ce82aa7a7d46fcb171b1539024b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/536c72e561d8660d51b5254924bd37900032368e9ffdb3003951c7ce4b1fa15c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_hotel_and_stay_02_listen -> audio/generated/fr-FR/utterances/536c72e561d8660d51b5254924bd37900032368e9ffdb3003951c7ce4b1fa15c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('a3454751-1002-5152-98e7-85183df5841f', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_hotel_and_stay_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd8bdd18cc8714d9546df12bba04c78acf3135c4fb615812967e414b311e4a018'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('23efe2dc-f889-584a-9c34-3ea760a6ff1c', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('a3454751-1002-5152-98e7-85183df5841f', 1), 'd8bdd18cc8714d9546df12bba04c78acf3135c4fb615812967e414b311e4a018',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/536c72e561d8660d51b5254924bd37900032368e9ffdb3003951c7ce4b1fa15c.mp3', 1985, '2026-09-14 10:39:21.170609', 'eb99a1dafd3fa73e0701a9642654c84362fa0ce82aa7a7d46fcb171b1539024b', 'validated', '{"audio_key":"536c72e561d8660d51b5254924bd37900032368e9ffdb3003951c7ce4b1fa15c","entity_key":"e_hotel_and_stay_02_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"eb99a1dafd3fa73e0701a9642654c84362fa0ce82aa7a7d46fcb171b1539024b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/536c72e561d8660d51b5254924bd37900032368e9ffdb3003951c7ce4b1fa15c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_opinions_and_media_03 -> audio/generated/fr-FR/utterances/53bf3ef263fe88e33595d2771c1a10de2bb73a157d4784560ea7f267633c124c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('94f50ef5-d1d5-5474-a819-69f29951cb22', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_opinions_and_media_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8c2c6bd5e27255ca867c1a2c50952fd824d5ff24d882508b1333670086c5e9dc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c34d92c3-3218-5c8c-800f-0fff88c55be6', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('94f50ef5-d1d5-5474-a819-69f29951cb22', 1), '8c2c6bd5e27255ca867c1a2c50952fd824d5ff24d882508b1333670086c5e9dc',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/53bf3ef263fe88e33595d2771c1a10de2bb73a157d4784560ea7f267633c124c.mp3', 1854, '2026-09-14 10:39:21.801614', 'ce72ecb2b2c90f576f3cd20ac5c0c544bd81ed076cfcd444c42424868ced570a', 'validated', '{"audio_key":"53bf3ef263fe88e33595d2771c1a10de2bb73a157d4784560ea7f267633c124c","entity_key":"u_opinions_and_media_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ce72ecb2b2c90f576f3cd20ac5c0c544bd81ed076cfcd444c42424868ced570a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/53bf3ef263fe88e33595d2771c1a10de2bb73a157d4784560ea7f267633c124c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_plans_and_invitations_03 -> audio/generated/fr-FR/utterances/5818cb85f90cf0a20622b396041e75cbfda28774f67a1b001f38e6e3b96b363a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0e9691e8-1bbd-531e-83b3-ad56b386ad59', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_plans_and_invitations_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ee9065531ceb3f5c88c39fea5fecd33b1cc7122dd83e4c0a8b249046aefe05b7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aa0051f5-0d1e-5d82-ad50-1cadb1809549', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0e9691e8-1bbd-531e-83b3-ad56b386ad59', 1), 'ee9065531ceb3f5c88c39fea5fecd33b1cc7122dd83e4c0a8b249046aefe05b7',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/5818cb85f90cf0a20622b396041e75cbfda28774f67a1b001f38e6e3b96b363a.mp3', 1436, '2026-09-14 10:39:22.202150', '12ae42c1f55bf7d05c2c0d478f847f79961ba4a0a89b22cb6cc84e95582f5178', 'validated', '{"audio_key":"5818cb85f90cf0a20622b396041e75cbfda28774f67a1b001f38e6e3b96b363a","entity_key":"u_plans_and_invitations_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"12ae42c1f55bf7d05c2c0d478f847f79961ba4a0a89b22cb6cc84e95582f5178","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/5818cb85f90cf0a20622b396041e75cbfda28774f67a1b001f38e6e3b96b363a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_health_and_pharmacy_04 -> audio/generated/fr-FR/utterances/5cd1e6fc462fa773280945282b437e1f465abe0b7bacd4458407df25ef0eb712.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b117f368-e2fd-50ce-9b16-62f3c533339c', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_health_and_pharmacy_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '230b3b122c8aa8c7f1514ac8626f505624bcd30d745c7761756bd5400114833f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b3442565-bdfa-5551-97f1-f89f978d85c5', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b117f368-e2fd-50ce-9b16-62f3c533339c', 1), '230b3b122c8aa8c7f1514ac8626f505624bcd30d745c7761756bd5400114833f',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/5cd1e6fc462fa773280945282b437e1f465abe0b7bacd4458407df25ef0eb712.mp3', 2037, '2026-09-14 10:39:22.842463', '21f7c8ade732c9ac27cc88e3286c241f7688100d2af11af13052c2f114596206', 'validated', '{"audio_key":"5cd1e6fc462fa773280945282b437e1f465abe0b7bacd4458407df25ef0eb712","entity_key":"u_health_and_pharmacy_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"21f7c8ade732c9ac27cc88e3286c241f7688100d2af11af13052c2f114596206","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/5cd1e6fc462fa773280945282b437e1f465abe0b7bacd4458407df25ef0eb712.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_health_and_pharmacy_02_listen -> audio/generated/fr-FR/utterances/5cd1e6fc462fa773280945282b437e1f465abe0b7bacd4458407df25ef0eb712.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('474791de-9cd4-5786-8c4f-4cd6501e1e5e', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_health_and_pharmacy_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '230b3b122c8aa8c7f1514ac8626f505624bcd30d745c7761756bd5400114833f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6ebe30d0-e69a-5905-b70f-2e05acfb364b', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('474791de-9cd4-5786-8c4f-4cd6501e1e5e', 1), '230b3b122c8aa8c7f1514ac8626f505624bcd30d745c7761756bd5400114833f',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/5cd1e6fc462fa773280945282b437e1f465abe0b7bacd4458407df25ef0eb712.mp3', 2037, '2026-09-14 10:39:22.842463', '21f7c8ade732c9ac27cc88e3286c241f7688100d2af11af13052c2f114596206', 'validated', '{"audio_key":"5cd1e6fc462fa773280945282b437e1f465abe0b7bacd4458407df25ef0eb712","entity_key":"e_health_and_pharmacy_02_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"21f7c8ade732c9ac27cc88e3286c241f7688100d2af11af13052c2f114596206","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/5cd1e6fc462fa773280945282b437e1f465abe0b7bacd4458407df25ef0eb712.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_yesterday_and_past_03 -> audio/generated/fr-FR/utterances/6543e23dfc7b2051f205f1298e8da0413320da495a4a0078725e975dc0a76bd5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('5987ce59-f810-594e-ad09-9b674c197895', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_yesterday_and_past_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '537e6502b87dd79ed82a7df6ad0b4877b3f969a8bfbd8ea3d2563cd2e3c388ef'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4ad8aeb9-d6bc-5c3c-b14f-93b55836b762', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('5987ce59-f810-594e-ad09-9b674c197895', 1), '537e6502b87dd79ed82a7df6ad0b4877b3f969a8bfbd8ea3d2563cd2e3c388ef',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/6543e23dfc7b2051f205f1298e8da0413320da495a4a0078725e975dc0a76bd5.mp3', 1854, '2026-09-14 10:39:23.238330', '6e46361a0c637220fde788bcc6491f1bdbf0ade6cc0f8825c6d2874d8ed067ed', 'validated', '{"audio_key":"6543e23dfc7b2051f205f1298e8da0413320da495a4a0078725e975dc0a76bd5","entity_key":"u_yesterday_and_past_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6e46361a0c637220fde788bcc6491f1bdbf0ade6cc0f8825c6d2874d8ed067ed","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/6543e23dfc7b2051f205f1298e8da0413320da495a4a0078725e975dc0a76bd5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_plans_and_invitations_04 -> audio/generated/fr-FR/utterances/68c2c4fa767e1236a84450e6a3389e0a3b7e1d551b24df219f5f41ad83c1446e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b50dca1c-ecf4-580e-bd64-a73cf8b3a837', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_plans_and_invitations_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '52181d9180c6495a5917c7e575c73a2ab09b88e5a9d5b49a5638fc4b3334ac31'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4bf83f2d-22df-5033-9142-d4dad8a4c1ab', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b50dca1c-ecf4-580e-bd64-a73cf8b3a837', 1), '52181d9180c6495a5917c7e575c73a2ab09b88e5a9d5b49a5638fc4b3334ac31',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/68c2c4fa767e1236a84450e6a3389e0a3b7e1d551b24df219f5f41ad83c1446e.mp3', 1619, '2026-09-14 10:39:23.890256', '41669ea8dbd8ec83fd4f820a12eb7a66d8cecaf8ea08a168b724113bb2f0ffe6', 'validated', '{"audio_key":"68c2c4fa767e1236a84450e6a3389e0a3b7e1d551b24df219f5f41ad83c1446e","entity_key":"u_plans_and_invitations_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"41669ea8dbd8ec83fd4f820a12eb7a66d8cecaf8ea08a168b724113bb2f0ffe6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/68c2c4fa767e1236a84450e6a3389e0a3b7e1d551b24df219f5f41ad83c1446e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_plans_and_invitations_02_listen -> audio/generated/fr-FR/utterances/68c2c4fa767e1236a84450e6a3389e0a3b7e1d551b24df219f5f41ad83c1446e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('ad0e9711-6e53-5790-9293-d414327c8236', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_plans_and_invitations_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '52181d9180c6495a5917c7e575c73a2ab09b88e5a9d5b49a5638fc4b3334ac31'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4b0ba3d1-e393-529d-aadd-8b357db7de48', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('ad0e9711-6e53-5790-9293-d414327c8236', 1), '52181d9180c6495a5917c7e575c73a2ab09b88e5a9d5b49a5638fc4b3334ac31',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/68c2c4fa767e1236a84450e6a3389e0a3b7e1d551b24df219f5f41ad83c1446e.mp3', 1619, '2026-09-14 10:39:23.890256', '41669ea8dbd8ec83fd4f820a12eb7a66d8cecaf8ea08a168b724113bb2f0ffe6', 'validated', '{"audio_key":"68c2c4fa767e1236a84450e6a3389e0a3b7e1d551b24df219f5f41ad83c1446e","entity_key":"e_plans_and_invitations_02_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"41669ea8dbd8ec83fd4f820a12eb7a66d8cecaf8ea08a168b724113bb2f0ffe6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/68c2c4fa767e1236a84450e6a3389e0a3b7e1d551b24df219f5f41ad83c1446e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_work_and_obligations_04 -> audio/generated/fr-FR/utterances/6a19257b1c0cd3a49b4c7ef067b1fff8efd76aebe53c98e997e3238ea15ca8ab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f487b1ec-c7e4-5933-aab7-9f02a79b418d', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_work_and_obligations_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '346153a86c5251d292efec36cec21bcf878dbe7de463325446944849b151b344'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d3798833-623d-5206-b790-56b4b3d206fc', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f487b1ec-c7e4-5933-aab7-9f02a79b418d', 1), '346153a86c5251d292efec36cec21bcf878dbe7de463325446944849b151b344',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/6a19257b1c0cd3a49b4c7ef067b1fff8efd76aebe53c98e997e3238ea15ca8ab.mp3', 1854, '2026-09-14 10:39:24.274693', 'd380d6ac57ae0e3a873602be85f5b2209b224b191e0c36f23d7e3a50c651b9c6', 'validated', '{"audio_key":"6a19257b1c0cd3a49b4c7ef067b1fff8efd76aebe53c98e997e3238ea15ca8ab","entity_key":"u_work_and_obligations_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d380d6ac57ae0e3a873602be85f5b2209b224b191e0c36f23d7e3a50c651b9c6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/6a19257b1c0cd3a49b4c7ef067b1fff8efd76aebe53c98e997e3238ea15ca8ab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_work_and_obligations_02_listen -> audio/generated/fr-FR/utterances/6a19257b1c0cd3a49b4c7ef067b1fff8efd76aebe53c98e997e3238ea15ca8ab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('7ba93f1e-075e-5b99-a425-fb4f479834c3', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_work_and_obligations_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '346153a86c5251d292efec36cec21bcf878dbe7de463325446944849b151b344'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e34589e9-7a3a-5679-bf05-6f2628e9d231', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('7ba93f1e-075e-5b99-a425-fb4f479834c3', 1), '346153a86c5251d292efec36cec21bcf878dbe7de463325446944849b151b344',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/6a19257b1c0cd3a49b4c7ef067b1fff8efd76aebe53c98e997e3238ea15ca8ab.mp3', 1854, '2026-09-14 10:39:24.274693', 'd380d6ac57ae0e3a873602be85f5b2209b224b191e0c36f23d7e3a50c651b9c6', 'validated', '{"audio_key":"6a19257b1c0cd3a49b4c7ef067b1fff8efd76aebe53c98e997e3238ea15ca8ab","entity_key":"e_work_and_obligations_02_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d380d6ac57ae0e3a873602be85f5b2209b224b191e0c36f23d7e3a50c651b9c6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/6a19257b1c0cd3a49b4c7ef067b1fff8efd76aebe53c98e997e3238ea15ca8ab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_food_and_quantities_02 -> audio/generated/fr-FR/utterances/6a7948f0baaa3d960350e79e7694f51b2beb60c1c7e189236bc895b699d91e49.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('fc154ff5-5277-5ece-b4d6-24f271341a83', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_food_and_quantities_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0e24a1bb716d36f6c3cebfa41e6b2e74c0015cc9c10fb4f05f3bad773ced8e84'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7919ef94-0212-5bd8-8594-e73755b30557', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('fc154ff5-5277-5ece-b4d6-24f271341a83', 1), '0e24a1bb716d36f6c3cebfa41e6b2e74c0015cc9c10fb4f05f3bad773ced8e84',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/6a7948f0baaa3d960350e79e7694f51b2beb60c1c7e189236bc895b699d91e49.mp3', 1488, '2026-09-14 10:39:24.902702', 'c5e9cd3599d342341da1f149bb3ec875f36b0721d46acb7c56f011dff540b953', 'validated', '{"audio_key":"6a7948f0baaa3d960350e79e7694f51b2beb60c1c7e189236bc895b699d91e49","entity_key":"u_food_and_quantities_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c5e9cd3599d342341da1f149bb3ec875f36b0721d46acb7c56f011dff540b953","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/6a7948f0baaa3d960350e79e7694f51b2beb60c1c7e189236bc895b699d91e49.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_food_and_quantities_01_listen -> audio/generated/fr-FR/utterances/6a7948f0baaa3d960350e79e7694f51b2beb60c1c7e189236bc895b699d91e49.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('9e4d866a-1814-5edd-91b7-b7c580e8cad2', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_food_and_quantities_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0e24a1bb716d36f6c3cebfa41e6b2e74c0015cc9c10fb4f05f3bad773ced8e84'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1c05c4b4-7695-5c09-9c9d-dd48ec97b0cf', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('9e4d866a-1814-5edd-91b7-b7c580e8cad2', 1), '0e24a1bb716d36f6c3cebfa41e6b2e74c0015cc9c10fb4f05f3bad773ced8e84',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/6a7948f0baaa3d960350e79e7694f51b2beb60c1c7e189236bc895b699d91e49.mp3', 1488, '2026-09-14 10:39:24.902702', 'c5e9cd3599d342341da1f149bb3ec875f36b0721d46acb7c56f011dff540b953', 'validated', '{"audio_key":"6a7948f0baaa3d960350e79e7694f51b2beb60c1c7e189236bc895b699d91e49","entity_key":"e_food_and_quantities_01_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c5e9cd3599d342341da1f149bb3ec875f36b0721d46acb7c56f011dff540b953","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/6a7948f0baaa3d960350e79e7694f51b2beb60c1c7e189236bc895b699d91e49.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_work_and_obligations_02 -> audio/generated/fr-FR/utterances/6c2d753640891864460a5fe5e8d783b9190497f42d3f07407252d411f988feda.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('20a65e1b-e9d8-5f64-98fb-bdcaf3c74c06', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_work_and_obligations_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eb3090a160019e587b9e84701ca065af742750aa10f4c771769b0e2bde37a83a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ed193eb3-08f0-56dd-ac23-15df87f5b313', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('20a65e1b-e9d8-5f64-98fb-bdcaf3c74c06', 1), 'eb3090a160019e587b9e84701ca065af742750aa10f4c771769b0e2bde37a83a',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/6c2d753640891864460a5fe5e8d783b9190497f42d3f07407252d411f988feda.mp3', 1985, '2026-09-14 10:39:25.345556', 'ce742de99d83d86f24f28c7011e04290f6619145f4e89ba2f8fb077e08b4bd79', 'validated', '{"audio_key":"6c2d753640891864460a5fe5e8d783b9190497f42d3f07407252d411f988feda","entity_key":"u_work_and_obligations_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ce742de99d83d86f24f28c7011e04290f6619145f4e89ba2f8fb077e08b4bd79","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/6c2d753640891864460a5fe5e8d783b9190497f42d3f07407252d411f988feda.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_work_and_obligations_01_listen -> audio/generated/fr-FR/utterances/6c2d753640891864460a5fe5e8d783b9190497f42d3f07407252d411f988feda.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('4d63cafb-e9d5-5fc5-a6f0-f10f606584db', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_work_and_obligations_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eb3090a160019e587b9e84701ca065af742750aa10f4c771769b0e2bde37a83a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0d7989a1-937a-5a60-9926-21fda4f40455', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('4d63cafb-e9d5-5fc5-a6f0-f10f606584db', 1), 'eb3090a160019e587b9e84701ca065af742750aa10f4c771769b0e2bde37a83a',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/6c2d753640891864460a5fe5e8d783b9190497f42d3f07407252d411f988feda.mp3', 1985, '2026-09-14 10:39:25.345556', 'ce742de99d83d86f24f28c7011e04290f6619145f4e89ba2f8fb077e08b4bd79', 'validated', '{"audio_key":"6c2d753640891864460a5fe5e8d783b9190497f42d3f07407252d411f988feda","entity_key":"e_work_and_obligations_01_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ce742de99d83d86f24f28c7011e04290f6619145f4e89ba2f8fb077e08b4bd79","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/6c2d753640891864460a5fe5e8d783b9190497f42d3f07407252d411f988feda.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_a2_problem_solving_capstone_02 -> audio/generated/fr-FR/utterances/71b5dd6eab8b9ba1a8ddea28d0f6a4b4b59d0da7f23d91de9eb0c957dbba475d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('59afd714-ab2c-5b84-bfc3-252262d3cb66', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_a2_problem_solving_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6c34f59e25dd08e4c654c637994233eeb813f8b2a1b7bd8759793879eb8e6c52'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6c32fc5c-3501-5da3-9309-477117f3db0e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('59afd714-ab2c-5b84-bfc3-252262d3cb66', 1), '6c34f59e25dd08e4c654c637994233eeb813f8b2a1b7bd8759793879eb8e6c52',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/71b5dd6eab8b9ba1a8ddea28d0f6a4b4b59d0da7f23d91de9eb0c957dbba475d.mp3', 1933, '2026-09-14 10:39:25.944389', '0ec1056108cca3aeecddb91694dbe342bbb000d0c41cf8e5438e09f3bee5c75a', 'validated', '{"audio_key":"71b5dd6eab8b9ba1a8ddea28d0f6a4b4b59d0da7f23d91de9eb0c957dbba475d","entity_key":"u_a2_problem_solving_capstone_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0ec1056108cca3aeecddb91694dbe342bbb000d0c41cf8e5438e09f3bee5c75a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/71b5dd6eab8b9ba1a8ddea28d0f6a4b4b59d0da7f23d91de9eb0c957dbba475d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_a2_problem_solving_capstone_01_listen -> audio/generated/fr-FR/utterances/71b5dd6eab8b9ba1a8ddea28d0f6a4b4b59d0da7f23d91de9eb0c957dbba475d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('ddab0b5a-8eb7-5df2-88e7-8a608543c8b9', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_a2_problem_solving_capstone_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6c34f59e25dd08e4c654c637994233eeb813f8b2a1b7bd8759793879eb8e6c52'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('87b8b567-13d1-5375-8968-5c630f2acb51', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('ddab0b5a-8eb7-5df2-88e7-8a608543c8b9', 1), '6c34f59e25dd08e4c654c637994233eeb813f8b2a1b7bd8759793879eb8e6c52',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/71b5dd6eab8b9ba1a8ddea28d0f6a4b4b59d0da7f23d91de9eb0c957dbba475d.mp3', 1933, '2026-09-14 10:39:25.944389', '0ec1056108cca3aeecddb91694dbe342bbb000d0c41cf8e5438e09f3bee5c75a', 'validated', '{"audio_key":"71b5dd6eab8b9ba1a8ddea28d0f6a4b4b59d0da7f23d91de9eb0c957dbba475d","entity_key":"e_a2_problem_solving_capstone_01_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0ec1056108cca3aeecddb91694dbe342bbb000d0c41cf8e5438e09f3bee5c75a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/71b5dd6eab8b9ba1a8ddea28d0f6a4b4b59d0da7f23d91de9eb0c957dbba475d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_clothes_and_comparisons_01 -> audio/generated/fr-FR/utterances/741b0de70e563acf7a9e7cf65a1867e211834d0b5e9f124c63b47f8139eb3d59.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('cd048e3f-f5ac-5806-9aeb-c0aeadd634c4', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_clothes_and_comparisons_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '64566fc9bbe0def1f08248a554810f6e5b60f31fd97b5c93ca19f50df074dc97'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('90863a9c-8a67-5b10-bf0e-da8dddfe01ca', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('cd048e3f-f5ac-5806-9aeb-c0aeadd634c4', 1), '64566fc9bbe0def1f08248a554810f6e5b60f31fd97b5c93ca19f50df074dc97',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/741b0de70e563acf7a9e7cf65a1867e211834d0b5e9f124c63b47f8139eb3d59.mp3', 1515, '2026-09-14 10:39:26.369252', 'a69476dd6b8008b6b9af81f031b7624c031cfa6f230ecf2e43290825d463d994', 'validated', '{"audio_key":"741b0de70e563acf7a9e7cf65a1867e211834d0b5e9f124c63b47f8139eb3d59","entity_key":"u_clothes_and_comparisons_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a69476dd6b8008b6b9af81f031b7624c031cfa6f230ecf2e43290825d463d994","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/741b0de70e563acf7a9e7cf65a1867e211834d0b5e9f124c63b47f8139eb3d59.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_health_and_pharmacy_01 -> audio/generated/fr-FR/utterances/7934974fa3a06f909d389a214d28bcd47ee43d05d5d353f4eb16acd23df05d88.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7feec2f6-5614-5e38-bee2-d363145dd9a6', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_health_and_pharmacy_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7c5732f2befaba917ea989c2596b86806d26c562cbf09d7016312046ef4f6811'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0744819a-3fbb-5187-aa9c-5c0cdccc9591', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7feec2f6-5614-5e38-bee2-d363145dd9a6', 1), '7c5732f2befaba917ea989c2596b86806d26c562cbf09d7016312046ef4f6811',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/7934974fa3a06f909d389a214d28bcd47ee43d05d5d353f4eb16acd23df05d88.mp3', 1750, '2026-09-14 10:39:26.956265', 'f027bed6d5c67888e6035a81a36915d06b62a1063140566630dcf790436b5b76', 'validated', '{"audio_key":"7934974fa3a06f909d389a214d28bcd47ee43d05d5d353f4eb16acd23df05d88","entity_key":"u_health_and_pharmacy_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f027bed6d5c67888e6035a81a36915d06b62a1063140566630dcf790436b5b76","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/7934974fa3a06f909d389a214d28bcd47ee43d05d5d353f4eb16acd23df05d88.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_work_and_obligations_03 -> audio/generated/fr-FR/utterances/7ccec6535b1a3a8a020e296fc220d483f19fcece5d7be260796ffa605c2e5677.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('fe953317-90ad-56c7-86de-7ebc74a65b8c', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_work_and_obligations_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e9cfcfd52c90efe49bccfb38aef1ef55b8635202de4b8f6618dd7f7fce642408'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2d24fa2b-de41-5f29-b9b6-ed5d14c14a03', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('fe953317-90ad-56c7-86de-7ebc74a65b8c', 1), 'e9cfcfd52c90efe49bccfb38aef1ef55b8635202de4b8f6618dd7f7fce642408',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/7ccec6535b1a3a8a020e296fc220d483f19fcece5d7be260796ffa605c2e5677.mp3', 2037, '2026-09-14 10:39:27.421841', '09f162f19dd0c3f5872c1b6d6bc34d7ee2c64793fa7c43e5954dd2ef2a7dc7bd', 'validated', '{"audio_key":"7ccec6535b1a3a8a020e296fc220d483f19fcece5d7be260796ffa605c2e5677","entity_key":"u_work_and_obligations_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"09f162f19dd0c3f5872c1b6d6bc34d7ee2c64793fa7c43e5954dd2ef2a7dc7bd","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/7ccec6535b1a3a8a020e296fc220d483f19fcece5d7be260796ffa605c2e5677.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_clothes_and_comparisons_04 -> audio/generated/fr-FR/utterances/821fb91f609e5451cc0627b6596eb3a0542c3d60adc2dd0c71189b1b58ac09fb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d14f7ee8-7c48-5784-9647-bf3da74ff737', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_clothes_and_comparisons_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4dc61e8e72c8e56275a2cd46c04923b84275ab8a440d84a89fcba489b34fa54b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('144868fb-df32-5544-9418-538723ca754d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d14f7ee8-7c48-5784-9647-bf3da74ff737', 1), '4dc61e8e72c8e56275a2cd46c04923b84275ab8a440d84a89fcba489b34fa54b',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/821fb91f609e5451cc0627b6596eb3a0542c3d60adc2dd0c71189b1b58ac09fb.mp3', 2089, '2026-09-14 10:39:28.014058', '24a4b298141f6aa93243d96e62ab279b73b336d2ef8776ed49076ac0aa15c4ca', 'validated', '{"audio_key":"821fb91f609e5451cc0627b6596eb3a0542c3d60adc2dd0c71189b1b58ac09fb","entity_key":"u_clothes_and_comparisons_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"24a4b298141f6aa93243d96e62ab279b73b336d2ef8776ed49076ac0aa15c4ca","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/821fb91f609e5451cc0627b6596eb3a0542c3d60adc2dd0c71189b1b58ac09fb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_clothes_and_comparisons_02_listen -> audio/generated/fr-FR/utterances/821fb91f609e5451cc0627b6596eb3a0542c3d60adc2dd0c71189b1b58ac09fb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('fa910c78-73a0-5ef3-acb4-1f39d231071e', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_clothes_and_comparisons_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4dc61e8e72c8e56275a2cd46c04923b84275ab8a440d84a89fcba489b34fa54b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6ff7a4cf-f67a-582e-8ac8-74d5156aac77', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('fa910c78-73a0-5ef3-acb4-1f39d231071e', 1), '4dc61e8e72c8e56275a2cd46c04923b84275ab8a440d84a89fcba489b34fa54b',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/821fb91f609e5451cc0627b6596eb3a0542c3d60adc2dd0c71189b1b58ac09fb.mp3', 2089, '2026-09-14 10:39:28.014058', '24a4b298141f6aa93243d96e62ab279b73b336d2ef8776ed49076ac0aa15c4ca', 'validated', '{"audio_key":"821fb91f609e5451cc0627b6596eb3a0542c3d60adc2dd0c71189b1b58ac09fb","entity_key":"e_clothes_and_comparisons_02_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"24a4b298141f6aa93243d96e62ab279b73b336d2ef8776ed49076ac0aa15c4ca","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/821fb91f609e5451cc0627b6596eb3a0542c3d60adc2dd0c71189b1b58ac09fb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_clothes_and_comparisons_03 -> audio/generated/fr-FR/utterances/86163909c1fdeeaf810f8bd2033aafa97ed0e59e05afe20984237b7ab9328483.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7019521b-0d1c-55ae-a387-8490bce1cc9e', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_clothes_and_comparisons_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e5408d86f2321980d7f2633cf953091e7c12121a4e444b09a492c2f11c0c7b3d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2e9b6dc8-1ffd-5ea0-abf6-fb25b431321f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7019521b-0d1c-55ae-a387-8490bce1cc9e', 1), 'e5408d86f2321980d7f2633cf953091e7c12121a4e444b09a492c2f11c0c7b3d',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/86163909c1fdeeaf810f8bd2033aafa97ed0e59e05afe20984237b7ab9328483.mp3', 1201, '2026-09-14 10:39:28.416416', 'a0a6e58148230a3b487bfa1fa6cf36b7cdff34cd21eb93d41d0fc3ab3ec403d0', 'validated', '{"audio_key":"86163909c1fdeeaf810f8bd2033aafa97ed0e59e05afe20984237b7ab9328483","entity_key":"u_clothes_and_comparisons_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a0a6e58148230a3b487bfa1fa6cf36b7cdff34cd21eb93d41d0fc3ab3ec403d0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/86163909c1fdeeaf810f8bd2033aafa97ed0e59e05afe20984237b7ab9328483.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_a2_problem_solving_capstone_04 -> audio/generated/fr-FR/utterances/8691c262850b9793d3ee82ccb579e092f173501df6ac7a81c2d837294dd98596.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3efa295e-2036-5ad7-a182-0bee970113e2', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_a2_problem_solving_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5b68548a0d9592a6da77b2437b7ae8ea0db2298268926400532b9ab64f6ad47d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f142f7dc-0a81-569c-af26-7faeb6fca7c6', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3efa295e-2036-5ad7-a182-0bee970113e2', 1), '5b68548a0d9592a6da77b2437b7ae8ea0db2298268926400532b9ab64f6ad47d',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/8691c262850b9793d3ee82ccb579e092f173501df6ac7a81c2d837294dd98596.mp3', 2351, '2026-09-14 10:39:29.122625', 'aeae8b28a631098d8720beaa90bfcbde27caf181a42e8154da8c880cb1e24f67', 'validated', '{"audio_key":"8691c262850b9793d3ee82ccb579e092f173501df6ac7a81c2d837294dd98596","entity_key":"u_a2_problem_solving_capstone_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"aeae8b28a631098d8720beaa90bfcbde27caf181a42e8154da8c880cb1e24f67","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/8691c262850b9793d3ee82ccb579e092f173501df6ac7a81c2d837294dd98596.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_a2_problem_solving_capstone_02_listen -> audio/generated/fr-FR/utterances/8691c262850b9793d3ee82ccb579e092f173501df6ac7a81c2d837294dd98596.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('1856f650-3d46-5a76-9b89-3dadbd397094', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_a2_problem_solving_capstone_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5b68548a0d9592a6da77b2437b7ae8ea0db2298268926400532b9ab64f6ad47d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b219d0b1-160d-5535-b578-d31511b34790', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('1856f650-3d46-5a76-9b89-3dadbd397094', 1), '5b68548a0d9592a6da77b2437b7ae8ea0db2298268926400532b9ab64f6ad47d',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/8691c262850b9793d3ee82ccb579e092f173501df6ac7a81c2d837294dd98596.mp3', 2351, '2026-09-14 10:39:29.122625', 'aeae8b28a631098d8720beaa90bfcbde27caf181a42e8154da8c880cb1e24f67', 'validated', '{"audio_key":"8691c262850b9793d3ee82ccb579e092f173501df6ac7a81c2d837294dd98596","entity_key":"e_a2_problem_solving_capstone_02_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"aeae8b28a631098d8720beaa90bfcbde27caf181a42e8154da8c880cb1e24f67","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/8691c262850b9793d3ee82ccb579e092f173501df6ac7a81c2d837294dd98596.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_yesterday_and_past_04 -> audio/generated/fr-FR/utterances/8b84e26a525576bc0acf10586c5249def9902b042d5213b2af3ef423a7e357d4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d7779ac3-882e-51c9-90e1-599638ad5878', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_yesterday_and_past_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e43c1eba90ed6346d1731075edbf572d1d9c897660db3efa90d5843aa761ccf3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0afeb3bc-0278-5dc6-af7f-c1b6a12b1153', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d7779ac3-882e-51c9-90e1-599638ad5878', 1), 'e43c1eba90ed6346d1731075edbf572d1d9c897660db3efa90d5843aa761ccf3',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/8b84e26a525576bc0acf10586c5249def9902b042d5213b2af3ef423a7e357d4.mp3', 2037, '2026-09-14 10:39:29.505158', '491a633c7c2ab09548b3bdde17a70cca93df1066354a7c9acacc28bf8e658a6b', 'validated', '{"audio_key":"8b84e26a525576bc0acf10586c5249def9902b042d5213b2af3ef423a7e357d4","entity_key":"u_yesterday_and_past_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"491a633c7c2ab09548b3bdde17a70cca93df1066354a7c9acacc28bf8e658a6b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/8b84e26a525576bc0acf10586c5249def9902b042d5213b2af3ef423a7e357d4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_yesterday_and_past_02_listen -> audio/generated/fr-FR/utterances/8b84e26a525576bc0acf10586c5249def9902b042d5213b2af3ef423a7e357d4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('687179ff-cd29-539c-8592-690eec279556', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_yesterday_and_past_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e43c1eba90ed6346d1731075edbf572d1d9c897660db3efa90d5843aa761ccf3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('03ad505a-ee60-5e7d-a947-856746c92a3d', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('687179ff-cd29-539c-8592-690eec279556', 1), 'e43c1eba90ed6346d1731075edbf572d1d9c897660db3efa90d5843aa761ccf3',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/8b84e26a525576bc0acf10586c5249def9902b042d5213b2af3ef423a7e357d4.mp3', 2037, '2026-09-14 10:39:29.505158', '491a633c7c2ab09548b3bdde17a70cca93df1066354a7c9acacc28bf8e658a6b', 'validated', '{"audio_key":"8b84e26a525576bc0acf10586c5249def9902b042d5213b2af3ef423a7e357d4","entity_key":"e_yesterday_and_past_02_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"491a633c7c2ab09548b3bdde17a70cca93df1066354a7c9acacc28bf8e658a6b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/8b84e26a525576bc0acf10586c5249def9902b042d5213b2af3ef423a7e357d4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_a2_problem_solving_capstone_03 -> audio/generated/fr-FR/utterances/9153c89a3416284eda240cb8f59b51c4cdf8e38d2ddb6aca62a9146d686e4bce.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b9a008a6-3391-58ca-882c-24eb4942ef2a', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_a2_problem_solving_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2a5f25e20e6f406111a0f41c94be561c57f0778cee4904dcecd3bbd14eddd80c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('098cb42e-2087-5a95-a9d0-14227eb2aba3', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b9a008a6-3391-58ca-882c-24eb4942ef2a', 1), '2a5f25e20e6f406111a0f41c94be561c57f0778cee4904dcecd3bbd14eddd80c',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/9153c89a3416284eda240cb8f59b51c4cdf8e38d2ddb6aca62a9146d686e4bce.mp3', 2403, '2026-09-14 10:39:30.199759', '90efb6b78fbcff63ad374e80f83bb377b2bbd5b4458a8d3b3468de731f3ae83c', 'validated', '{"audio_key":"9153c89a3416284eda240cb8f59b51c4cdf8e38d2ddb6aca62a9146d686e4bce","entity_key":"u_a2_problem_solving_capstone_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"90efb6b78fbcff63ad374e80f83bb377b2bbd5b4458a8d3b3468de731f3ae83c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/9153c89a3416284eda240cb8f59b51c4cdf8e38d2ddb6aca62a9146d686e4bce.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_food_and_quantities_04 -> audio/generated/fr-FR/utterances/bb2ff2cf867a8d4cf4306c81f5308b61d7e82990797f41ed20bc54827a0a02c7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f9eba28f-6dc0-5b19-8452-37a495889096', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_food_and_quantities_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9a2d6d0cf082e79027a5a161abda70c7ded70e7b33be0c8fb9491dd11185caa7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e61af50d-febe-5372-bf47-b07387c25bd2', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f9eba28f-6dc0-5b19-8452-37a495889096', 1), '9a2d6d0cf082e79027a5a161abda70c7ded70e7b33be0c8fb9491dd11185caa7',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/bb2ff2cf867a8d4cf4306c81f5308b61d7e82990797f41ed20bc54827a0a02c7.mp3', 2089, '2026-09-14 10:39:30.602637', '3a431719e8009bcdaa329d7f54fbad4f9bd068fd6abf8fcd6a68eee527a5c660', 'validated', '{"audio_key":"bb2ff2cf867a8d4cf4306c81f5308b61d7e82990797f41ed20bc54827a0a02c7","entity_key":"u_food_and_quantities_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3a431719e8009bcdaa329d7f54fbad4f9bd068fd6abf8fcd6a68eee527a5c660","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/bb2ff2cf867a8d4cf4306c81f5308b61d7e82990797f41ed20bc54827a0a02c7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_food_and_quantities_02_listen -> audio/generated/fr-FR/utterances/bb2ff2cf867a8d4cf4306c81f5308b61d7e82990797f41ed20bc54827a0a02c7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('94a0d3c4-0eea-5be2-86cd-a595dd304223', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_food_and_quantities_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9a2d6d0cf082e79027a5a161abda70c7ded70e7b33be0c8fb9491dd11185caa7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e81ef2b1-e60c-57dc-8dad-2c7ecd1adcb5', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('94a0d3c4-0eea-5be2-86cd-a595dd304223', 1), '9a2d6d0cf082e79027a5a161abda70c7ded70e7b33be0c8fb9491dd11185caa7',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/bb2ff2cf867a8d4cf4306c81f5308b61d7e82990797f41ed20bc54827a0a02c7.mp3', 2089, '2026-09-14 10:39:30.602637', '3a431719e8009bcdaa329d7f54fbad4f9bd068fd6abf8fcd6a68eee527a5c660', 'validated', '{"audio_key":"bb2ff2cf867a8d4cf4306c81f5308b61d7e82990797f41ed20bc54827a0a02c7","entity_key":"e_food_and_quantities_02_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3a431719e8009bcdaa329d7f54fbad4f9bd068fd6abf8fcd6a68eee527a5c660","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/bb2ff2cf867a8d4cf4306c81f5308b61d7e82990797f41ed20bc54827a0a02c7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_plans_and_invitations_02 -> audio/generated/fr-FR/utterances/c41836f4fdb06c210e742bc6449822d349758bb53e7fc33719574bd105274d60.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b965927c-92b0-5d8a-b32b-770d2eb6b3f6', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_plans_and_invitations_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a3d27ae8ed3edc51d4b4efd397c28cda6f7d1a401ff86cb9e2be22ee35aa0228'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('921c8935-7bce-5ab4-83da-cb90dea0024e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b965927c-92b0-5d8a-b32b-770d2eb6b3f6', 1), 'a3d27ae8ed3edc51d4b4efd397c28cda6f7d1a401ff86cb9e2be22ee35aa0228',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/c41836f4fdb06c210e742bc6449822d349758bb53e7fc33719574bd105274d60.mp3', 1619, '2026-09-14 10:39:31.186431', '89ca406a0c8640095e04f76ffb6e85411ec6f85d0f20722f9de12c01994dc98e', 'validated', '{"audio_key":"c41836f4fdb06c210e742bc6449822d349758bb53e7fc33719574bd105274d60","entity_key":"u_plans_and_invitations_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"89ca406a0c8640095e04f76ffb6e85411ec6f85d0f20722f9de12c01994dc98e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/c41836f4fdb06c210e742bc6449822d349758bb53e7fc33719574bd105274d60.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_plans_and_invitations_01_listen -> audio/generated/fr-FR/utterances/c41836f4fdb06c210e742bc6449822d349758bb53e7fc33719574bd105274d60.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('dc095295-80f9-57dd-afca-4d5946ba44fa', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_plans_and_invitations_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a3d27ae8ed3edc51d4b4efd397c28cda6f7d1a401ff86cb9e2be22ee35aa0228'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ffef6a63-d7e2-5c73-a052-be346fbddb00', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('dc095295-80f9-57dd-afca-4d5946ba44fa', 1), 'a3d27ae8ed3edc51d4b4efd397c28cda6f7d1a401ff86cb9e2be22ee35aa0228',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/c41836f4fdb06c210e742bc6449822d349758bb53e7fc33719574bd105274d60.mp3', 1619, '2026-09-14 10:39:31.186431', '89ca406a0c8640095e04f76ffb6e85411ec6f85d0f20722f9de12c01994dc98e', 'validated', '{"audio_key":"c41836f4fdb06c210e742bc6449822d349758bb53e7fc33719574bd105274d60","entity_key":"e_plans_and_invitations_01_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"89ca406a0c8640095e04f76ffb6e85411ec6f85d0f20722f9de12c01994dc98e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/c41836f4fdb06c210e742bc6449822d349758bb53e7fc33719574bd105274d60.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_work_and_obligations_01 -> audio/generated/fr-FR/utterances/cd698f8a00854ed533fe107a0f127729e8113853a57a32f886cf91509cb08932.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('4b183432-fd94-516e-98bb-d15c78983ffd', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_work_and_obligations_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5a81754b89514413c16e92f180e99eef59b73d418667f73125505ae10bc4fc14'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('21d247cb-280e-5d3d-82ca-0d6223f432bc', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('4b183432-fd94-516e-98bb-d15c78983ffd', 1), '5a81754b89514413c16e92f180e99eef59b73d418667f73125505ae10bc4fc14',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/cd698f8a00854ed533fe107a0f127729e8113853a57a32f886cf91509cb08932.mp3', 2037, '2026-09-14 10:39:31.665461', '912c2df0caca521ecff902e0b7e397a4b492bb269047c0f16277ddaf35810ed3', 'validated', '{"audio_key":"cd698f8a00854ed533fe107a0f127729e8113853a57a32f886cf91509cb08932","entity_key":"u_work_and_obligations_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"912c2df0caca521ecff902e0b7e397a4b492bb269047c0f16277ddaf35810ed3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/cd698f8a00854ed533fe107a0f127729e8113853a57a32f886cf91509cb08932.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_hotel_and_stay_02 -> audio/generated/fr-FR/utterances/d2dddd8dc57b35929811d289243c888f811d449ed96cba68ccc9dd4f2770f097.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('18b91385-46f3-5e58-b621-4f82ebf20a43', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_hotel_and_stay_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fcf4151a5a7d5e09aa40ed053df9cdba9e44c0cda9c61e574471642a61518c49'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3e241eb2-7336-55f0-8d3e-9f6321a23715', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('18b91385-46f3-5e58-b621-4f82ebf20a43', 1), 'fcf4151a5a7d5e09aa40ed053df9cdba9e44c0cda9c61e574471642a61518c49',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/d2dddd8dc57b35929811d289243c888f811d449ed96cba68ccc9dd4f2770f097.mp3', 2037, '2026-09-14 10:39:32.262298', '314527d3f1a49b8364b73cf27ea327bb01c32f16ac8c0d5cf97f34fddc7a421d', 'validated', '{"audio_key":"d2dddd8dc57b35929811d289243c888f811d449ed96cba68ccc9dd4f2770f097","entity_key":"u_hotel_and_stay_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"314527d3f1a49b8364b73cf27ea327bb01c32f16ac8c0d5cf97f34fddc7a421d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/d2dddd8dc57b35929811d289243c888f811d449ed96cba68ccc9dd4f2770f097.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_hotel_and_stay_01_listen -> audio/generated/fr-FR/utterances/d2dddd8dc57b35929811d289243c888f811d449ed96cba68ccc9dd4f2770f097.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('c2735d59-b33e-550a-83b8-104b68098c5f', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_hotel_and_stay_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fcf4151a5a7d5e09aa40ed053df9cdba9e44c0cda9c61e574471642a61518c49'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f3b2283f-faf4-5c4e-b4c4-6c4bbebdeec9', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('c2735d59-b33e-550a-83b8-104b68098c5f', 1), 'fcf4151a5a7d5e09aa40ed053df9cdba9e44c0cda9c61e574471642a61518c49',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/d2dddd8dc57b35929811d289243c888f811d449ed96cba68ccc9dd4f2770f097.mp3', 2037, '2026-09-14 10:39:32.262298', '314527d3f1a49b8364b73cf27ea327bb01c32f16ac8c0d5cf97f34fddc7a421d', 'validated', '{"audio_key":"d2dddd8dc57b35929811d289243c888f811d449ed96cba68ccc9dd4f2770f097","entity_key":"e_hotel_and_stay_01_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"314527d3f1a49b8364b73cf27ea327bb01c32f16ac8c0d5cf97f34fddc7a421d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/d2dddd8dc57b35929811d289243c888f811d449ed96cba68ccc9dd4f2770f097.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_home_and_neighborhood_01 -> audio/generated/fr-FR/utterances/e43b5fa84762c31d8cace0f65f0205db6ee859bf36bf4431a42e9d7a1cbf728c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('591223ba-4686-5b74-9bd4-2004c478329b', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_home_and_neighborhood_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '221bcc11ed65d5a747b1911756ffc151addaa63ff99845aab13aa34fc440fb29'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5eecfcee-192a-5a8f-9661-1cd937bc8a5f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('591223ba-4686-5b74-9bd4-2004c478329b', 1), '221bcc11ed65d5a747b1911756ffc151addaa63ff99845aab13aa34fc440fb29',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/e43b5fa84762c31d8cace0f65f0205db6ee859bf36bf4431a42e9d7a1cbf728c.mp3', 2089, '2026-09-14 10:39:32.699798', '43f1df34ea9b517a23cac1ee95929d4200a0a1de97666e27e6c0628800301be1', 'validated', '{"audio_key":"e43b5fa84762c31d8cace0f65f0205db6ee859bf36bf4431a42e9d7a1cbf728c","entity_key":"u_home_and_neighborhood_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"43f1df34ea9b517a23cac1ee95929d4200a0a1de97666e27e6c0628800301be1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/e43b5fa84762c31d8cace0f65f0205db6ee859bf36bf4431a42e9d7a1cbf728c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_hotel_and_stay_01 -> audio/generated/fr-FR/utterances/eeb0a1e5416246056b73e3f4f3a75351cebb348b2746dcc28c7f88263080cc2c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('dbdb4db5-8f3d-5028-a7b5-e1efdb91cb39', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_hotel_and_stay_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '107d4f63a5e2ee18315dbeb4859639b8af202f83eba208a2609fcd8e920d34bb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1067236b-d45d-5d1a-bfd3-6c4ce084d3c5', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('dbdb4db5-8f3d-5028-a7b5-e1efdb91cb39', 1), '107d4f63a5e2ee18315dbeb4859639b8af202f83eba208a2609fcd8e920d34bb',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/eeb0a1e5416246056b73e3f4f3a75351cebb348b2746dcc28c7f88263080cc2c.mp3', 1619, '2026-09-14 10:39:33.282572', '5f2241d058701908f428afe9520262d90900cc157969ef071732ac4ec18e4f4b', 'validated', '{"audio_key":"eeb0a1e5416246056b73e3f4f3a75351cebb348b2746dcc28c7f88263080cc2c","entity_key":"u_hotel_and_stay_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5f2241d058701908f428afe9520262d90900cc157969ef071732ac4ec18e4f4b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/eeb0a1e5416246056b73e3f4f3a75351cebb348b2746dcc28c7f88263080cc2c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_yesterday_and_past_01 -> audio/generated/fr-FR/utterances/f8213a97458e8fa1338a4598475b1bf15808f088be3f21adebdb7334bf721875.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ffb65313-e834-5539-9079-8800f2a0bab6', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_yesterday_and_past_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5a6ab7e59a1d7e58f200cfcc427512a7f22bc5eb9c726f43e010fece6e0ccf05'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ff91fc78-a590-5b8d-aa24-4a2bb0f3eb63', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ffb65313-e834-5539-9079-8800f2a0bab6', 1), '5a6ab7e59a1d7e58f200cfcc427512a7f22bc5eb9c726f43e010fece6e0ccf05',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/f8213a97458e8fa1338a4598475b1bf15808f088be3f21adebdb7334bf721875.mp3', 1985, '2026-09-14 10:39:33.742441', 'ca26d7102bd6a0978d37208c0f679932d72a181ce8dd153149493d51ac28c52e', 'validated', '{"audio_key":"f8213a97458e8fa1338a4598475b1bf15808f088be3f21adebdb7334bf721875","entity_key":"u_yesterday_and_past_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ca26d7102bd6a0978d37208c0f679932d72a181ce8dd153149493d51ac28c52e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/f8213a97458e8fa1338a4598475b1bf15808f088be3f21adebdb7334bf721875.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_opinions_and_media_04 -> audio/generated/fr-FR/utterances/fbfa794fc14db0321053f0c7f971fed9f928e952ee83485c3c5359c86e7e81fe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('24450ee4-ecb7-557a-b477-0c9464d72f90', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_opinions_and_media_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '65d62cca3cd19babcbe7697fdfe8f1455d7c4a81d94b9b5999225cc3751ce7d1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('23f7270d-8574-5b37-923d-e085680fbe46', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('24450ee4-ecb7-557a-b477-0c9464d72f90', 1), '65d62cca3cd19babcbe7697fdfe8f1455d7c4a81d94b9b5999225cc3751ce7d1',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/fbfa794fc14db0321053f0c7f971fed9f928e952ee83485c3c5359c86e7e81fe.mp3', 1750, '2026-09-14 10:39:34.312733', 'd9ec56982973ca55c71e37cc9090eccf8830b9cc31623a3b90587739435e3093', 'validated', '{"audio_key":"fbfa794fc14db0321053f0c7f971fed9f928e952ee83485c3c5359c86e7e81fe","entity_key":"u_opinions_and_media_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d9ec56982973ca55c71e37cc9090eccf8830b9cc31623a3b90587739435e3093","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/fbfa794fc14db0321053f0c7f971fed9f928e952ee83485c3c5359c86e7e81fe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_opinions_and_media_02_listen -> audio/generated/fr-FR/utterances/fbfa794fc14db0321053f0c7f971fed9f928e952ee83485c3c5359c86e7e81fe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('a85e55da-63e4-533a-a998-b2047f9521eb', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_opinions_and_media_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '65d62cca3cd19babcbe7697fdfe8f1455d7c4a81d94b9b5999225cc3751ce7d1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eddcb2d3-5d85-527e-8ebc-00ca534b4878', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('a85e55da-63e4-533a-a998-b2047f9521eb', 1), '65d62cca3cd19babcbe7697fdfe8f1455d7c4a81d94b9b5999225cc3751ce7d1',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/fbfa794fc14db0321053f0c7f971fed9f928e952ee83485c3c5359c86e7e81fe.mp3', 1750, '2026-09-14 10:39:34.312733', 'd9ec56982973ca55c71e37cc9090eccf8830b9cc31623a3b90587739435e3093', 'validated', '{"audio_key":"fbfa794fc14db0321053f0c7f971fed9f928e952ee83485c3c5359c86e7e81fe","entity_key":"e_opinions_and_media_02_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d9ec56982973ca55c71e37cc9090eccf8830b9cc31623a3b90587739435e3093","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/fbfa794fc14db0321053f0c7f971fed9f928e952ee83485c3c5359c86e7e81fe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_opinions_and_media_02 -> audio/generated/fr-FR/utterances/fce96513ae304f9d2705bbe121c9d687d1c32ba1cefbde0b10690e3fc6a539aa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b0831cad-74da-5bea-a97e-c764c918075d', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_opinions_and_media_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f2b16e070dc181083c58828310cfbaeb926f7b8159a8a71e6aa783ebab77f488'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a6d7e2e2-94ca-51fd-94c9-ccda139de1dd', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b0831cad-74da-5bea-a97e-c764c918075d', 1), 'f2b16e070dc181083c58828310cfbaeb926f7b8159a8a71e6aa783ebab77f488',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/fce96513ae304f9d2705bbe121c9d687d1c32ba1cefbde0b10690e3fc6a539aa.mp3', 1906, '2026-09-14 10:39:34.830574', 'd0a49ff1aea70f9d559badca7776145268ebf59d76e0f3b944c3a815274a5a1d', 'validated', '{"audio_key":"fce96513ae304f9d2705bbe121c9d687d1c32ba1cefbde0b10690e3fc6a539aa","entity_key":"u_opinions_and_media_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d0a49ff1aea70f9d559badca7776145268ebf59d76e0f3b944c3a815274a5a1d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/fce96513ae304f9d2705bbe121c9d687d1c32ba1cefbde0b10690e3fc6a539aa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_opinions_and_media_01_listen -> audio/generated/fr-FR/utterances/fce96513ae304f9d2705bbe121c9d687d1c32ba1cefbde0b10690e3fc6a539aa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('a00afe01-17d0-5022-8ad1-cba99331a043', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_opinions_and_media_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f2b16e070dc181083c58828310cfbaeb926f7b8159a8a71e6aa783ebab77f488'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('22fc0533-0347-50c6-a0a0-cb025f37ebeb', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('a00afe01-17d0-5022-8ad1-cba99331a043', 1), 'f2b16e070dc181083c58828310cfbaeb926f7b8159a8a71e6aa783ebab77f488',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/fce96513ae304f9d2705bbe121c9d687d1c32ba1cefbde0b10690e3fc6a539aa.mp3', 1906, '2026-09-14 10:39:34.830574', 'd0a49ff1aea70f9d559badca7776145268ebf59d76e0f3b944c3a815274a5a1d', 'validated', '{"audio_key":"fce96513ae304f9d2705bbe121c9d687d1c32ba1cefbde0b10690e3fc6a539aa","entity_key":"e_opinions_and_media_01_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d0a49ff1aea70f9d559badca7776145268ebf59d76e0f3b944c3a815274a5a1d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/fce96513ae304f9d2705bbe121c9d687d1c32ba1cefbde0b10690e3fc6a539aa.mp3"}'
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

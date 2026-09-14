-- Generated audio link import for fr-FR A1
-- Source manifest: audio/manifests/fr/A1.json
-- Generated rows: 260
-- Storage mode: relative_path
-- storage_url is intentionally portable; prepend your server/CDN base URL at runtime.
-- Run AFTER the matching level content import.
SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci;
SET time_zone = '+00:00';
SET @audio_language_id = (SELECT id FROM languages WHERE code = 'fr' LIMIT 1);
SET @audio_variant_id = (SELECT id FROM language_variants WHERE code = 'fr-FR' LIMIT 1);
START TRANSACTION;

-- d_articles_and_objects_01:2 -> audio/generated/fr-FR/dialogues/02a48556c87d17bfd7e145ad7a26f04063a8b9c6c33f3d93c08f4e46f9f10a4f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('71848069-494b-55af-8d8c-fb5cac5684c3', 1)
  AND voice_key = 'character:hugo:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_articles_and_objects_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a5698c9a8e7804a3f6dd02312a0f027835e0097deb3c8234283d908d6cf7c77e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('31f82526-d049-5471-8d09-0dd51b920857', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('71848069-494b-55af-8d8c-fb5cac5684c3', 1), 'a5698c9a8e7804a3f6dd02312a0f027835e0097deb3c8234283d908d6cf7c77e',
  'character:hugo:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/02a48556c87d17bfd7e145ad7a26f04063a8b9c6c33f3d93c08f4e46f9f10a4f.mp3', 1071, '2026-09-14 09:41:07.137469', '46741c47e5f704acc3bf9c9f7b021560ffeb5fef89d5983a285635c45c2ccff7', 'validated', '{"audio_key":"02a48556c87d17bfd7e145ad7a26f04063a8b9c6c33f3d93c08f4e46f9f10a4f","entity_key":"d_articles_and_objects_01:2","voice_id":"FRY6vOtGqwamgAf39SwP","voice_name":"Yanis","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"46741c47e5f704acc3bf9c9f7b021560ffeb5fef89d5983a285635c45c2ccff7","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/02a48556c87d17bfd7e145ad7a26f04063a8b9c6c33f3d93c08f4e46f9f10a4f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_family_and_people_01:1 -> audio/generated/fr-FR/dialogues/0bd35de10eccb8c81542a8ed4dfe43ecfdb69aafa5cb40fe91edae7b710d5e70.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('aaf354f5-066a-5f7e-933e-5b98e69c3c12', 1)
  AND voice_key = 'character:léa:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_family_and_people_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '692573837594c31c98931bc87c8ea29ed584cdfb9b8ade65ebef54b6c996c13d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('256b4e95-818d-5e31-bdd0-987952f03a15', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('aaf354f5-066a-5f7e-933e-5b98e69c3c12', 1), '692573837594c31c98931bc87c8ea29ed584cdfb9b8ade65ebef54b6c996c13d',
  'character:léa:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/0bd35de10eccb8c81542a8ed4dfe43ecfdb69aafa5cb40fe91edae7b710d5e70.mp3', 1149, '2026-09-14 09:41:06.950924', 'abd9a71117c8e72114bd992b5f343c824cbd62eb2920a9c634dc7b08fc104025', 'validated', '{"audio_key":"0bd35de10eccb8c81542a8ed4dfe43ecfdb69aafa5cb40fe91edae7b710d5e70","entity_key":"d_family_and_people_01:1","voice_id":"fBpCO0Kf0krKLYGOu65w","voice_name":"Émilie - Customer service advisor","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"abd9a71117c8e72114bd992b5f343c824cbd62eb2920a9c634dc7b08fc104025","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/0bd35de10eccb8c81542a8ed4dfe43ecfdb69aafa5cb40fe91edae7b710d5e70.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_family_and_people_02:1 -> audio/generated/fr-FR/dialogues/0cac2cf0c534032f3bc1f4e359ec49e2272c92260172185a8f3e9779e0deba8c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0d3fa544-1e59-554e-b25b-e25f623aff7c', 1)
  AND voice_key = 'character:camille:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_family_and_people_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4dec3b3345a97f4d8c24f0f4a88294ec1e606106b73127855e7eb6008f91dfc5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bd640810-4c3c-5bbe-9975-f69463b82874', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0d3fa544-1e59-554e-b25b-e25f623aff7c', 1), '4dec3b3345a97f4d8c24f0f4a88294ec1e606106b73127855e7eb6008f91dfc5',
  'character:camille:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/0cac2cf0c534032f3bc1f4e359ec49e2272c92260172185a8f3e9779e0deba8c.mp3', 1488, '2026-09-14 09:41:08.099877', '606ec72c3e1efdf14777af87103fe95dac600ff36544a1b6f2e1d0fffe849ceb', 'validated', '{"audio_key":"0cac2cf0c534032f3bc1f4e359ec49e2272c92260172185a8f3e9779e0deba8c","entity_key":"d_family_and_people_02:1","voice_id":"lvQdCgwZfBuOzxyV5pxu","voice_name":"Audia - Customer Support","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"606ec72c3e1efdf14777af87103fe95dac600ff36544a1b6f2e1d0fffe849ceb","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/0cac2cf0c534032f3bc1f4e359ec49e2272c92260172185a8f3e9779e0deba8c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_identity_and_origin_02:2 -> audio/generated/fr-FR/dialogues/0d2f6642b0e719917a639de0fce5ea2d10b198fb3ee33012ae239edc758888bb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7be21e52-1f76-59fe-9204-5d4227a9b777', 1)
  AND voice_key = 'character:léa:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_identity_and_origin_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1e8bab4bb7ca1b07d8f1e5782a5464dcd6bcec03932e970aa29741ed46309280'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3cf6faa7-a3ea-5f6d-a991-dc2fc49faa32', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7be21e52-1f76-59fe-9204-5d4227a9b777', 1), '1e8bab4bb7ca1b07d8f1e5782a5464dcd6bcec03932e970aa29741ed46309280',
  'character:léa:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/0d2f6642b0e719917a639de0fce5ea2d10b198fb3ee33012ae239edc758888bb.mp3', 1384, '2026-09-14 09:41:08.202839', '3fd96aa1a540a4bfcb31f38486621de1bb3ab281248822bda2754a461a9c587c', 'validated', '{"audio_key":"0d2f6642b0e719917a639de0fce5ea2d10b198fb3ee33012ae239edc758888bb","entity_key":"d_identity_and_origin_02:2","voice_id":"fBpCO0Kf0krKLYGOu65w","voice_name":"Émilie - Customer service advisor","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"3fd96aa1a540a4bfcb31f38486621de1bb3ab281248822bda2754a461a9c587c","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/0d2f6642b0e719917a639de0fce5ea2d10b198fb3ee33012ae239edc758888bb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_getting_around_01:1 -> audio/generated/fr-FR/dialogues/10201bf6c95d05b6f905d60dda5da41b6b61874f968574f8ef411546401923dc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4362378d-a3c6-564c-969a-b6e51a2c7287', 1)
  AND voice_key = 'character:camille:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_getting_around_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f598d0f62e31cd73d90112c805b06ceb7228e885348e9ca5e1fe12fbd81baf71'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4d687fd6-0ed9-55e8-9a56-7ebe0f349071', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4362378d-a3c6-564c-969a-b6e51a2c7287', 1), 'f598d0f62e31cd73d90112c805b06ceb7228e885348e9ca5e1fe12fbd81baf71',
  'character:camille:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/10201bf6c95d05b6f905d60dda5da41b6b61874f968574f8ef411546401923dc.mp3', 1671, '2026-09-14 09:41:09.166689', '5921092f6ab76c25d35146ece3d66f731c1122d4781a2fc04ab16f6b03aa6d78', 'validated', '{"audio_key":"10201bf6c95d05b6f905d60dda5da41b6b61874f968574f8ef411546401923dc","entity_key":"d_getting_around_01:1","voice_id":"lvQdCgwZfBuOzxyV5pxu","voice_name":"Audia - Customer Support","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5921092f6ab76c25d35146ece3d66f731c1122d4781a2fc04ab16f6b03aa6d78","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/10201bf6c95d05b6f905d60dda5da41b6b61874f968574f8ef411546401923dc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_identity_and_origin_02:1 -> audio/generated/fr-FR/dialogues/10cc604028d5e6ec397f39d7e8e44ba13154de23ef314e4f08b3d038d3fe38ab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a495b5d8-d1f5-5eb5-a3b2-a26daa954a9c', 1)
  AND voice_key = 'character:nicolas:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_identity_and_origin_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f40e6973d53b823274b1acd57fd46aa9a23e27ed5d5781381c8fa97b600cc3ba'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d40bc472-c287-52ac-b79c-1eedebe03849', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a495b5d8-d1f5-5eb5-a3b2-a26daa954a9c', 1), 'f40e6973d53b823274b1acd57fd46aa9a23e27ed5d5781381c8fa97b600cc3ba',
  'character:nicolas:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/10cc604028d5e6ec397f39d7e8e44ba13154de23ef314e4f08b3d038d3fe38ab.mp3', 1201, '2026-09-14 09:41:09.384123', '3d379725e15cba982e89cb5198694a9f224495a0ec85dcc4ee1f9bfc37298422', 'validated', '{"audio_key":"10cc604028d5e6ec397f39d7e8e44ba13154de23ef314e4f08b3d038d3fe38ab","entity_key":"d_identity_and_origin_02:1","voice_id":"7Pm7442WzqlfkW9vjmO9","voice_name":"Maxime - Dynamic and Natural","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3d379725e15cba982e89cb5198694a9f224495a0ec85dcc4ee1f9bfc37298422","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/10cc604028d5e6ec397f39d7e8e44ba13154de23ef314e4f08b3d038d3fe38ab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_daily_actions_02:3 -> audio/generated/fr-FR/dialogues/1671ec8212eb0198cee6abcf0cb0a7b5cfb0fb5fb2c0d0de775a0968b78624b3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5238cf47-5818-55ce-b59b-871e202f3e65', 1)
  AND voice_key = 'character:camille:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_daily_actions_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6c0caf4c20085d598507b3f042ef6776dff4536b13abeebd2c4c48cf9f171ea5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('44415936-3928-545a-b4af-f056a376d833', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5238cf47-5818-55ce-b59b-871e202f3e65', 1), '6c0caf4c20085d598507b3f042ef6776dff4536b13abeebd2c4c48cf9f171ea5',
  'character:camille:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/1671ec8212eb0198cee6abcf0cb0a7b5cfb0fb5fb2c0d0de775a0968b78624b3.mp3', 1253, '2026-09-14 09:41:10.228992', 'd220a2b356a68ffb1eeab0face1b23381c024a22de4937cbf008bf2765c2b958', 'validated', '{"audio_key":"1671ec8212eb0198cee6abcf0cb0a7b5cfb0fb5fb2c0d0de775a0968b78624b3","entity_key":"d_daily_actions_02:3","voice_id":"lvQdCgwZfBuOzxyV5pxu","voice_name":"Audia - Customer Support","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d220a2b356a68ffb1eeab0face1b23381c024a22de4937cbf008bf2765c2b958","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/1671ec8212eb0198cee6abcf0cb0a7b5cfb0fb5fb2c0d0de775a0968b78624b3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_family_and_people_01:3 -> audio/generated/fr-FR/dialogues/1b2bcc7d1b8d0ccb611c9fa2ac1e40ada3133a4a0e904a1b34266259ed88f1b6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7d15d4ee-86ad-59dc-a58f-a4b359df7dcb', 1)
  AND voice_key = 'character:léa:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_family_and_people_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c205b1b1f5351ed4043fca1c74cfdf2f57e7286f7abb36ff665211b901250896'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('528e2fab-5ace-5959-a635-847c1f92066b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7d15d4ee-86ad-59dc-a58f-a4b359df7dcb', 1), 'c205b1b1f5351ed4043fca1c74cfdf2f57e7286f7abb36ff665211b901250896',
  'character:léa:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/1b2bcc7d1b8d0ccb611c9fa2ac1e40ada3133a4a0e904a1b34266259ed88f1b6.mp3', 1018, '2026-09-14 09:41:10.462632', '23bca1fb9e8679c012e180392ae4a5d948157812b3a9c02e6c3c667742dc721a', 'validated', '{"audio_key":"1b2bcc7d1b8d0ccb611c9fa2ac1e40ada3133a4a0e904a1b34266259ed88f1b6","entity_key":"d_family_and_people_01:3","voice_id":"fBpCO0Kf0krKLYGOu65w","voice_name":"Émilie - Customer service advisor","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"23bca1fb9e8679c012e180392ae4a5d948157812b3a9c02e6c3c667742dc721a","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/1b2bcc7d1b8d0ccb611c9fa2ac1e40ada3133a4a0e904a1b34266259ed88f1b6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_time_and_schedule_02:4 -> audio/generated/fr-FR/dialogues/2719a66ae1a7d2823efe5af10f1af8683c7418dc0a386ef814fe96bdd8328d13.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a5d7d15b-e5f3-5609-8776-b227c2009205', 1)
  AND voice_key = 'character:claire:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_time_and_schedule_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '268805ee8771fbcc24605453d2a2273c95c144433b5bf690450cb893a674ac42'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2a1371d3-e092-5e92-9161-e254b46ea2ea', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a5d7d15b-e5f3-5609-8776-b227c2009205', 1), '268805ee8771fbcc24605453d2a2273c95c144433b5bf690450cb893a674ac42',
  'character:claire:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/2719a66ae1a7d2823efe5af10f1af8683c7418dc0a386ef814fe96bdd8328d13.mp3', 835, '2026-09-14 09:41:11.330503', '6c0f562f6354c80739e5cb323413b72dcbc0e2faa4292c86408ace204c7ed101', 'validated', '{"audio_key":"2719a66ae1a7d2823efe5af10f1af8683c7418dc0a386ef814fe96bdd8328d13","entity_key":"d_time_and_schedule_02:4","voice_id":"yatuMX0k4Dh41R64sbGj","voice_name":"Cécile - Interactive Customer Support","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"6c0f562f6354c80739e5cb323413b72dcbc0e2faa4292c86408ace204c7ed101","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/2719a66ae1a7d2823efe5af10f1af8683c7418dc0a386ef814fe96bdd8328d13.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_daily_actions_01:2 -> audio/generated/fr-FR/dialogues/27e0e6324ff220fa5a6b00b20308f80205d514b86385777b1ef637e8af4d72e3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c1b6bdb0-639f-5ef6-8960-e528e76df0a5', 1)
  AND voice_key = 'character:léa:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_daily_actions_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f4939b1e83d91b7cee0c2d23881ec5d2d6ff33fb74e4e0daabc5c65ecb42249a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('55e1c5be-975e-5eb6-8c6b-c36e09506102', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c1b6bdb0-639f-5ef6-8960-e528e76df0a5', 1), 'f4939b1e83d91b7cee0c2d23881ec5d2d6ff33fb74e4e0daabc5c65ecb42249a',
  'character:léa:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/27e0e6324ff220fa5a6b00b20308f80205d514b86385777b1ef637e8af4d72e3.mp3', 1750, '2026-09-14 09:41:11.649475', 'ebe999ea8f0f27d5ed0b2c47eb3bbc07ea8c2ef9c80d586b8b70f108b2c9b371', 'validated', '{"audio_key":"27e0e6324ff220fa5a6b00b20308f80205d514b86385777b1ef637e8af4d72e3","entity_key":"d_daily_actions_01:2","voice_id":"fBpCO0Kf0krKLYGOu65w","voice_name":"Émilie - Customer service advisor","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"ebe999ea8f0f27d5ed0b2c47eb3bbc07ea8c2ef9c80d586b8b70f108b2c9b371","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/27e0e6324ff220fa5a6b00b20308f80205d514b86385777b1ef637e8af4d72e3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_time_and_schedule_01:4 -> audio/generated/fr-FR/dialogues/29a6a88aa56365c4d16db64c68bdf605ee278571ca5bca757ae4bcbb652494eb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7d1cb08a-ba99-5df7-a11a-9d6414c70582', 1)
  AND voice_key = 'character:hugo:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_time_and_schedule_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '11cef89f276969677e8d2db7bf4db786d0b606b8e5348f4f6cc09d1a2d6db74c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c3d1c511-6541-5cb6-8b30-525908e96f71', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7d1cb08a-ba99-5df7-a11a-9d6414c70582', 1), '11cef89f276969677e8d2db7bf4db786d0b606b8e5348f4f6cc09d1a2d6db74c',
  'character:hugo:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/29a6a88aa56365c4d16db64c68bdf605ee278571ca5bca757ae4bcbb652494eb.mp3', 1280, '2026-09-14 09:41:12.373185', 'ee64dc3f88cceeaadbda7e39bd98fa0308614e74fe30419eecd6b6a709ff6a43', 'validated', '{"audio_key":"29a6a88aa56365c4d16db64c68bdf605ee278571ca5bca757ae4bcbb652494eb","entity_key":"d_time_and_schedule_01:4","voice_id":"FRY6vOtGqwamgAf39SwP","voice_name":"Yanis","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ee64dc3f88cceeaadbda7e39bd98fa0308614e74fe30419eecd6b6a709ff6a43","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/29a6a88aa56365c4d16db64c68bdf605ee278571ca5bca757ae4bcbb652494eb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_time_and_schedule_01:1 -> audio/generated/fr-FR/dialogues/2b070b2763dc5f5728097b7f6fab888969c48a5fe14f4baf183b4b6d922c17ea.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1374d361-df74-5e92-9090-5f0e09ffbeb9', 1)
  AND voice_key = 'character:inès:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_time_and_schedule_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd593706bc8e3cd302972d6e440339f84695bb8178e30b8f712fe9b463b1b35c5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b956f2f0-6895-5eb6-bad6-5706f1772ba7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1374d361-df74-5e92-9090-5f0e09ffbeb9', 1), 'd593706bc8e3cd302972d6e440339f84695bb8178e30b8f712fe9b463b1b35c5',
  'character:inès:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/2b070b2763dc5f5728097b7f6fab888969c48a5fe14f4baf183b4b6d922c17ea.mp3', 1436, '2026-09-14 09:41:13.304547', 'ad6c2dea7cf79576f57b65078b46822423fa0dd325c78b41c38e0fbab3fd73e9', 'validated', '{"audio_key":"2b070b2763dc5f5728097b7f6fab888969c48a5fe14f4baf183b4b6d922c17ea","entity_key":"d_time_and_schedule_01:1","voice_id":"mNu8EQcIlFZdOJs7yfhe","voice_name":"Julia - Warm French Narrator","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ad6c2dea7cf79576f57b65078b46822423fa0dd325c78b41c38e0fbab3fd73e9","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/2b070b2763dc5f5728097b7f6fab888969c48a5fe14f4baf183b4b6d922c17ea.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_identity_and_origin_01:1 -> audio/generated/fr-FR/dialogues/33b8316d7cfab61c420c42dcb101352fda13e0cbbd5751801998d18aaed5a07f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3ebc1544-17eb-5d26-a5fe-ca93aa65f83c', 1)
  AND voice_key = 'character:camille:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_identity_and_origin_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7c33a340f01da32ec8f122daf5b76fc5d6b5567a82b3ce382a61a88c8b5c7a1b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('84226f32-71be-5a84-b592-afc99bcba187', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3ebc1544-17eb-5d26-a5fe-ca93aa65f83c', 1), '7c33a340f01da32ec8f122daf5b76fc5d6b5567a82b3ce382a61a88c8b5c7a1b',
  'character:camille:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/33b8316d7cfab61c420c42dcb101352fda13e0cbbd5751801998d18aaed5a07f.mp3', 1097, '2026-09-14 09:41:13.433173', 'b9acf18f68dbf5be11ced432da8ba4f9a16b3146fc92ddfd286c4fbde5194ec9', 'validated', '{"audio_key":"33b8316d7cfab61c420c42dcb101352fda13e0cbbd5751801998d18aaed5a07f","entity_key":"d_identity_and_origin_01:1","voice_id":"lvQdCgwZfBuOzxyV5pxu","voice_name":"Audia - Customer Support","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b9acf18f68dbf5be11ced432da8ba4f9a16b3146fc92ddfd286c4fbde5194ec9","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/33b8316d7cfab61c420c42dcb101352fda13e0cbbd5751801998d18aaed5a07f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_a1_day_capstone_02:1 -> audio/generated/fr-FR/dialogues/347fc3d83847607f3fcdae726624cfb71052388776426128fda01e83197bb938.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f700d84c-6bc8-552d-bb21-58250a312e35', 1)
  AND voice_key = 'character:julien:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_a1_day_capstone_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c8ee0b0ce6f49cd5e6f308594a9e054b771acf7510155442467880008508fb78'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b0881767-d445-53c0-b567-fd19a1693580', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f700d84c-6bc8-552d-bb21-58250a312e35', 1), 'c8ee0b0ce6f49cd5e6f308594a9e054b771acf7510155442467880008508fb78',
  'character:julien:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/347fc3d83847607f3fcdae726624cfb71052388776426128fda01e83197bb938.mp3', 1384, '2026-09-14 09:41:14.593383', 'b6c5c9873edf875dd2b6ae6c31472bbe2d3a3f80eb29de2b248053f6f79b98b6', 'validated', '{"audio_key":"347fc3d83847607f3fcdae726624cfb71052388776426128fda01e83197bb938","entity_key":"d_a1_day_capstone_02:1","voice_id":"xO2Q4ARMEd4BI2sGDH9c","voice_name":"Edouard - Confident and Polished","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"b6c5c9873edf875dd2b6ae6c31472bbe2d3a3f80eb29de2b248053f6f79b98b6","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/347fc3d83847607f3fcdae726624cfb71052388776426128fda01e83197bb938.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cafe_basics_02:3 -> audio/generated/fr-FR/dialogues/38069278877d9bb88ea94255d042ed25196affafab2c00a268a6fdd02f7bd3e4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0ef3ce6d-ba9d-5d7b-bd37-1bfc974d7057', 1)
  AND voice_key = 'character:léa:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cafe_basics_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c4e03e674328c222c9e3cafc7bfe2f34d8cf9ea11a1350f658a22826b401d036'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2c095ded-81c2-54fc-a4cb-1d430a2cbd84', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0ef3ce6d-ba9d-5d7b-bd37-1bfc974d7057', 1), 'c4e03e674328c222c9e3cafc7bfe2f34d8cf9ea11a1350f658a22826b401d036',
  'character:léa:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/38069278877d9bb88ea94255d042ed25196affafab2c00a268a6fdd02f7bd3e4.mp3', 1854, '2026-09-14 09:41:14.604398', '24d4ad28c864db28a20e3506a914b5118d94a22a3133798f72252a9d8c9641a1', 'validated', '{"audio_key":"38069278877d9bb88ea94255d042ed25196affafab2c00a268a6fdd02f7bd3e4","entity_key":"d_cafe_basics_02:3","voice_id":"fBpCO0Kf0krKLYGOu65w","voice_name":"Émilie - Customer service advisor","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"24d4ad28c864db28a20e3506a914b5118d94a22a3133798f72252a9d8c9641a1","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/38069278877d9bb88ea94255d042ed25196affafab2c00a268a6fdd02f7bd3e4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_a1_day_capstone_02:3 -> audio/generated/fr-FR/dialogues/3ce7f6b66810d27255eb1c32b27537c8851ff862cc5edf19066488115816a574.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4e2a6cfd-28fa-5680-b821-2d8e492b0ce1', 1)
  AND voice_key = 'character:julien:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_a1_day_capstone_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7674a1941962cb12d36c0a053d293d4c69fe42afb8d32db01688b2dd4eb443e9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('43a3d2c2-ca52-5e98-aff2-fd90d97c2eb2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4e2a6cfd-28fa-5680-b821-2d8e492b0ce1', 1), '7674a1941962cb12d36c0a053d293d4c69fe42afb8d32db01688b2dd4eb443e9',
  'character:julien:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/3ce7f6b66810d27255eb1c32b27537c8851ff862cc5edf19066488115816a574.mp3', 1018, '2026-09-14 09:41:15.650552', '89e19917b9fd8eb70cf9276c332edf30cbb9018dda72a4cb14cb10ae076b4b87', 'validated', '{"audio_key":"3ce7f6b66810d27255eb1c32b27537c8851ff862cc5edf19066488115816a574","entity_key":"d_a1_day_capstone_02:3","voice_id":"xO2Q4ARMEd4BI2sGDH9c","voice_name":"Edouard - Confident and Polished","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"89e19917b9fd8eb70cf9276c332edf30cbb9018dda72a4cb14cb10ae076b4b87","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/3ce7f6b66810d27255eb1c32b27537c8851ff862cc5edf19066488115816a574.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_home_and_location_01:1 -> audio/generated/fr-FR/dialogues/3ee43099e9a23f52adb3dbdaab09ebd13a1d9573ebc6a6d604c2a9c3cf7186c9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c2215c23-c8ac-506d-9b1a-ce821fa21071', 1)
  AND voice_key = 'character:hugo:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_home_and_location_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '23a5b661c84658078b7f4cb384c7e9c488cec143e3676df5c371a0189f2455e8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('20901b16-8d84-5fc1-9e88-d22b335be0b9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c2215c23-c8ac-506d-9b1a-ce821fa21071', 1), '23a5b661c84658078b7f4cb384c7e9c488cec143e3676df5c371a0189f2455e8',
  'character:hugo:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/3ee43099e9a23f52adb3dbdaab09ebd13a1d9573ebc6a6d604c2a9c3cf7186c9.mp3', 1280, '2026-09-14 09:41:15.667167', 'df068ea0d05a1022575e633932fff4043a8771b528865a4b393490c3869188e5', 'validated', '{"audio_key":"3ee43099e9a23f52adb3dbdaab09ebd13a1d9573ebc6a6d604c2a9c3cf7186c9","entity_key":"d_home_and_location_01:1","voice_id":"FRY6vOtGqwamgAf39SwP","voice_name":"Yanis","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"df068ea0d05a1022575e633932fff4043a8771b528865a4b393490c3869188e5","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/3ee43099e9a23f52adb3dbdaab09ebd13a1d9573ebc6a6d604c2a9c3cf7186c9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_getting_around_01:4 -> audio/generated/fr-FR/dialogues/3efd75d754dc681a44bc8e95edbcb3c45e7f7af548a8e9f0c9242162ef5d1560.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8c885eef-e4d9-5332-8c07-a2ad6d0b43d4', 1)
  AND voice_key = 'character:thomas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_getting_around_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c84effde7b236af0bf05b166b7ae00c2e5444d5fb14f683a2f7052f4e5b17139'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c8ea41c5-db95-53e1-b801-849490451e6e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8c885eef-e4d9-5332-8c07-a2ad6d0b43d4', 1), 'c84effde7b236af0bf05b166b7ae00c2e5444d5fb14f683a2f7052f4e5b17139',
  'character:thomas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/3efd75d754dc681a44bc8e95edbcb3c45e7f7af548a8e9f0c9242162ef5d1560.mp3', 1436, '2026-09-14 09:41:17.052690', '17baff21fc6b884a06546140ba02268f76e82079249c5a5684ea9ce16e984c48', 'validated', '{"audio_key":"3efd75d754dc681a44bc8e95edbcb3c45e7f7af548a8e9f0c9242162ef5d1560","entity_key":"d_getting_around_01:4","voice_id":"1WQXvbtj0rUYuB5yhY3N","voice_name":"Skel - Calm and Professional","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"17baff21fc6b884a06546140ba02268f76e82079249c5a5684ea9ce16e984c48","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/3efd75d754dc681a44bc8e95edbcb3c45e7f7af548a8e9f0c9242162ef5d1560.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_shopping_and_prices_02:1 -> audio/generated/fr-FR/dialogues/3fbda810a8b3bcdb7a16bd4af192c735738c28451e4e7d88763b9e118bf4890c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('671896d4-9763-5158-a5d3-6d58ac56c722', 1)
  AND voice_key = 'character:claire:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_shopping_and_prices_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '24028b640d1a5c057cbed7686f74dcc93f328737dea538710afaf6b33731c8ae'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('deb502c6-4518-553a-b96e-3f6f6c6343af', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('671896d4-9763-5158-a5d3-6d58ac56c722', 1), '24028b640d1a5c057cbed7686f74dcc93f328737dea538710afaf6b33731c8ae',
  'character:claire:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/3fbda810a8b3bcdb7a16bd4af192c735738c28451e4e7d88763b9e118bf4890c.mp3', 1488, '2026-09-14 09:41:16.822571', '8a7a53ed7c5cdb914a615bd4715014160e3bfebf2588d2930f04b714ca318f1d', 'validated', '{"audio_key":"3fbda810a8b3bcdb7a16bd4af192c735738c28451e4e7d88763b9e118bf4890c","entity_key":"d_shopping_and_prices_02:1","voice_id":"yatuMX0k4Dh41R64sbGj","voice_name":"Cécile - Interactive Customer Support","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"8a7a53ed7c5cdb914a615bd4715014160e3bfebf2588d2930f04b714ca318f1d","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/3fbda810a8b3bcdb7a16bd4af192c735738c28451e4e7d88763b9e118bf4890c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cafe_basics_01:4 -> audio/generated/fr-FR/dialogues/4112cdf42f718123c07e652dc6493f174d3923027dbc81bf8c78f9da170104cc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('130f831e-bec2-540f-a20f-12c448303c1a', 1)
  AND voice_key = 'character:camille:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cafe_basics_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '79a90fe414d637084b9c5bbcdf4fea5481c1e04032516f8364ea6446de1dcf6d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aa5be99f-8f58-50a0-aa2c-4ef77791e21f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('130f831e-bec2-540f-a20f-12c448303c1a', 1), '79a90fe414d637084b9c5bbcdf4fea5481c1e04032516f8364ea6446de1dcf6d',
  'character:camille:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/4112cdf42f718123c07e652dc6493f174d3923027dbc81bf8c78f9da170104cc.mp3', 862, '2026-09-14 09:41:17.896364', '0d953a1aef39705cbc5877ccfeb36c72954e9034ae0a6fa40e352d702290e48f', 'validated', '{"audio_key":"4112cdf42f718123c07e652dc6493f174d3923027dbc81bf8c78f9da170104cc","entity_key":"d_cafe_basics_01:4","voice_id":"lvQdCgwZfBuOzxyV5pxu","voice_name":"Audia - Customer Support","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0d953a1aef39705cbc5877ccfeb36c72954e9034ae0a6fa40e352d702290e48f","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/4112cdf42f718123c07e652dc6493f174d3923027dbc81bf8c78f9da170104cc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_daily_actions_01:3 -> audio/generated/fr-FR/dialogues/46100d5cb0626f2dcf95a379c1469ea396e002c892480451b6ad71dc8280a904.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d306f32c-2de0-538c-91ce-f9cbffe0752f', 1)
  AND voice_key = 'character:nicolas:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_daily_actions_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '907884da90ccc2e87cd8ad63b297105b07e16619d454e8beb613b43bed192b88'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e74f6524-239d-56b1-9f62-809689d21c78', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d306f32c-2de0-538c-91ce-f9cbffe0752f', 1), '907884da90ccc2e87cd8ad63b297105b07e16619d454e8beb613b43bed192b88',
  'character:nicolas:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/46100d5cb0626f2dcf95a379c1469ea396e002c892480451b6ad71dc8280a904.mp3', 1332, '2026-09-14 09:41:18.145600', 'c65bf41a975360ab3a954dcaf4670aec81055d25624ea43b35252e2a37303447', 'validated', '{"audio_key":"46100d5cb0626f2dcf95a379c1469ea396e002c892480451b6ad71dc8280a904","entity_key":"d_daily_actions_01:3","voice_id":"7Pm7442WzqlfkW9vjmO9","voice_name":"Maxime - Dynamic and Natural","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c65bf41a975360ab3a954dcaf4670aec81055d25624ea43b35252e2a37303447","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/46100d5cb0626f2dcf95a379c1469ea396e002c892480451b6ad71dc8280a904.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_a1_day_capstone_02:2 -> audio/generated/fr-FR/dialogues/48a0236ab2bf7785ce7ce4e97fa81d81ce7508f460c0a5e99b6f2134baab4c7e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('047dc4ae-d55c-54a2-81a3-41b4516a228c', 1)
  AND voice_key = 'character:claire:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_a1_day_capstone_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7a3f1ab4c0b774dd74ea879b2aa450e66f972b17d515105241dfdfb554793952'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ff462983-b820-5e1e-9b93-c4592f24f4fa', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('047dc4ae-d55c-54a2-81a3-41b4516a228c', 1), '7a3f1ab4c0b774dd74ea879b2aa450e66f972b17d515105241dfdfb554793952',
  'character:claire:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/48a0236ab2bf7785ce7ce4e97fa81d81ce7508f460c0a5e99b6f2134baab4c7e.mp3', 1436, '2026-09-14 09:41:19.019071', 'c2c140df160e0705c3049a98e910a3412d116403d571209bdbbf0dfc500eae81', 'validated', '{"audio_key":"48a0236ab2bf7785ce7ce4e97fa81d81ce7508f460c0a5e99b6f2134baab4c7e","entity_key":"d_a1_day_capstone_02:2","voice_id":"yatuMX0k4Dh41R64sbGj","voice_name":"Cécile - Interactive Customer Support","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"c2c140df160e0705c3049a98e910a3412d116403d571209bdbbf0dfc500eae81","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/48a0236ab2bf7785ce7ce4e97fa81d81ce7508f460c0a5e99b6f2134baab4c7e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_shopping_and_prices_01:4 -> audio/generated/fr-FR/dialogues/4f79532fccea4b0d4fd6ecb01a94d2b3ae1add47686b56928a5e1bf78b9ed6d8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d8df232e-9d78-5502-9dfc-6f1bf3e6476f', 1)
  AND voice_key = 'character:inès:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_shopping_and_prices_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '79a90fe414d637084b9c5bbcdf4fea5481c1e04032516f8364ea6446de1dcf6d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b11c64bd-95c3-5c81-ae0b-1fb6ffa27c4b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d8df232e-9d78-5502-9dfc-6f1bf3e6476f', 1), '79a90fe414d637084b9c5bbcdf4fea5481c1e04032516f8364ea6446de1dcf6d',
  'character:inès:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/4f79532fccea4b0d4fd6ecb01a94d2b3ae1add47686b56928a5e1bf78b9ed6d8.mp3', 966, '2026-09-14 09:41:19.211024', '1d2e591182877da8f2c9b4fc7bdb52ab90e6bb36f3cf66d77fdbd13f3de09193', 'validated', '{"audio_key":"4f79532fccea4b0d4fd6ecb01a94d2b3ae1add47686b56928a5e1bf78b9ed6d8","entity_key":"d_shopping_and_prices_01:4","voice_id":"mNu8EQcIlFZdOJs7yfhe","voice_name":"Julia - Warm French Narrator","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1d2e591182877da8f2c9b4fc7bdb52ab90e6bb36f3cf66d77fdbd13f3de09193","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/4f79532fccea4b0d4fd6ecb01a94d2b3ae1add47686b56928a5e1bf78b9ed6d8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_time_and_schedule_02:1 -> audio/generated/fr-FR/dialogues/5102f12b0da08d188b81a75f7815f4234fa6e14057993392c7b5dc5a0b286353.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3bc28690-84e5-54ec-95eb-8857b850bd2e', 1)
  AND voice_key = 'character:julien:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_time_and_schedule_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1008f6fbd924aece5e69474c0c44bba47ba61f9ee2dfdd300d1f1862f389a4a3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a3a129d0-c777-582d-aad7-f49be917a6dd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3bc28690-84e5-54ec-95eb-8857b850bd2e', 1), '1008f6fbd924aece5e69474c0c44bba47ba61f9ee2dfdd300d1f1862f389a4a3',
  'character:julien:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/5102f12b0da08d188b81a75f7815f4234fa6e14057993392c7b5dc5a0b286353.mp3', 1097, '2026-09-14 09:41:20.060804', 'f73d7ed0d398786fa30b7abd55f98af113b7e19771560b8ed3760abd6dca71c0', 'validated', '{"audio_key":"5102f12b0da08d188b81a75f7815f4234fa6e14057993392c7b5dc5a0b286353","entity_key":"d_time_and_schedule_02:1","voice_id":"xO2Q4ARMEd4BI2sGDH9c","voice_name":"Edouard - Confident and Polished","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"f73d7ed0d398786fa30b7abd55f98af113b7e19771560b8ed3760abd6dca71c0","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/5102f12b0da08d188b81a75f7815f4234fa6e14057993392c7b5dc5a0b286353.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_articles_and_objects_01:3 -> audio/generated/fr-FR/dialogues/52638f8a6c41105ab425f5ab1d6811e3f8fd05b84426e0c510958911a3260cd7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c6b357b3-9a92-570e-9570-8efc698de419', 1)
  AND voice_key = 'character:inès:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_articles_and_objects_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f112e0be292db50a1f5b3bc334094db1ac7219225843733104230d1617fca3eb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c77d1a35-3228-5f17-bcd9-2b4f1be1bbfb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c6b357b3-9a92-570e-9570-8efc698de419', 1), 'f112e0be292db50a1f5b3bc334094db1ac7219225843733104230d1617fca3eb',
  'character:inès:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/52638f8a6c41105ab425f5ab1d6811e3f8fd05b84426e0c510958911a3260cd7.mp3', 862, '2026-09-14 08:52:02.269693', '07ab2bf4e614f66c9c5683eb31226031ac785e592070c9710e4dd0c1691ed882', 'validated', '{"audio_key":"52638f8a6c41105ab425f5ab1d6811e3f8fd05b84426e0c510958911a3260cd7","entity_key":"d_articles_and_objects_01:3","voice_id":"mNu8EQcIlFZdOJs7yfhe","voice_name":"Julia - Warm French Narrator","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"07ab2bf4e614f66c9c5683eb31226031ac785e592070c9710e4dd0c1691ed882","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/52638f8a6c41105ab425f5ab1d6811e3f8fd05b84426e0c510958911a3260cd7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_time_and_schedule_01:2 -> audio/generated/fr-FR/dialogues/5441d8304f547e7ad735698c384f69f8fb9cd25499e945fda1ec5143328856fb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('27347849-7303-5e82-93cd-e61ecf1644fe', 1)
  AND voice_key = 'character:hugo:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_time_and_schedule_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3e058b7ab3a04709c29921e7539738728d694cbe754cea5d0749c77d8271692b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('81ae8876-4267-5201-8d93-0cddf577b82f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('27347849-7303-5e82-93cd-e61ecf1644fe', 1), '3e058b7ab3a04709c29921e7539738728d694cbe754cea5d0749c77d8271692b',
  'character:hugo:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/5441d8304f547e7ad735698c384f69f8fb9cd25499e945fda1ec5143328856fb.mp3', 1253, '2026-09-14 09:41:20.300603', 'a66fa959e622c9ceafd119b0445d37eb107e3a076dc337d1a9209c0fd8d2125a', 'validated', '{"audio_key":"5441d8304f547e7ad735698c384f69f8fb9cd25499e945fda1ec5143328856fb","entity_key":"d_time_and_schedule_01:2","voice_id":"FRY6vOtGqwamgAf39SwP","voice_name":"Yanis","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a66fa959e622c9ceafd119b0445d37eb107e3a076dc337d1a9209c0fd8d2125a","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/5441d8304f547e7ad735698c384f69f8fb9cd25499e945fda1ec5143328856fb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_a1_day_capstone_01:1 -> audio/generated/fr-FR/dialogues/59657b261ca7975da3464b2292c4d73a2cf726fb2ee78426c458b4e37955b9d1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ab82f944-2f33-59e7-8cc3-b2876ddd243b', 1)
  AND voice_key = 'character:inès:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_a1_day_capstone_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ea816f107eae9b2d2fbd06526be87e5a8fcb2947ba1702089d519007e96c5d94'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9e79e722-6234-5690-b353-909ffa9d55de', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ab82f944-2f33-59e7-8cc3-b2876ddd243b', 1), 'ea816f107eae9b2d2fbd06526be87e5a8fcb2947ba1702089d519007e96c5d94',
  'character:inès:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/59657b261ca7975da3464b2292c4d73a2cf726fb2ee78426c458b4e37955b9d1.mp3', 1488, '2026-09-14 09:41:21.171073', '7d247074b069b9668f86070674f9cb9473c97455c28d3722a7fcde07d50dbd96', 'validated', '{"audio_key":"59657b261ca7975da3464b2292c4d73a2cf726fb2ee78426c458b4e37955b9d1","entity_key":"d_a1_day_capstone_01:1","voice_id":"mNu8EQcIlFZdOJs7yfhe","voice_name":"Julia - Warm French Narrator","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7d247074b069b9668f86070674f9cb9473c97455c28d3722a7fcde07d50dbd96","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/59657b261ca7975da3464b2292c4d73a2cf726fb2ee78426c458b4e37955b9d1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_daily_actions_01:4 -> audio/generated/fr-FR/dialogues/5aaa264a6d7bfece5c73ba069070ecc8326271e19875e9e995ac0f1b292c22a6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c4634e78-236a-5360-8078-104f1c3d6565', 1)
  AND voice_key = 'character:léa:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_daily_actions_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '072ca9a6977be364998606de8799d0d04ef13151f3a01e720f78f02d79ba6a1e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cff204e9-f1f6-512c-aac6-a56e1461199d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c4634e78-236a-5360-8078-104f1c3d6565', 1), '072ca9a6977be364998606de8799d0d04ef13151f3a01e720f78f02d79ba6a1e',
  'character:léa:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/5aaa264a6d7bfece5c73ba069070ecc8326271e19875e9e995ac0f1b292c22a6.mp3', 1253, '2026-09-14 09:41:21.508980', 'a3f5a7740c0785f4a1ecd6bb53b7e42aed946cc10bb34641c4159b455241856d', 'validated', '{"audio_key":"5aaa264a6d7bfece5c73ba069070ecc8326271e19875e9e995ac0f1b292c22a6","entity_key":"d_daily_actions_01:4","voice_id":"fBpCO0Kf0krKLYGOu65w","voice_name":"Émilie - Customer service advisor","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"a3f5a7740c0785f4a1ecd6bb53b7e42aed946cc10bb34641c4159b455241856d","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/5aaa264a6d7bfece5c73ba069070ecc8326271e19875e9e995ac0f1b292c22a6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_shopping_and_prices_01:3 -> audio/generated/fr-FR/dialogues/604ef9ab2a984b7ab2a0a9f9e9a66b043607086e41283b7186560e70af0bcd66.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cc56e948-9034-506e-8b3f-77949dc58db0', 1)
  AND voice_key = 'character:hugo:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_shopping_and_prices_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c025c86d9ea913e1810b7d82fd14836ffb8b9c908a6fcc83cbcd73fa7bb76d2e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('936c115f-cba7-51e7-bcb9-0dedc823feba', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cc56e948-9034-506e-8b3f-77949dc58db0', 1), 'c025c86d9ea913e1810b7d82fd14836ffb8b9c908a6fcc83cbcd73fa7bb76d2e',
  'character:hugo:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/604ef9ab2a984b7ab2a0a9f9e9a66b043607086e41283b7186560e70af0bcd66.mp3', 1567, '2026-09-14 09:41:22.388917', '18fd76ba0e3806f68992fa35e5b63e4e5c1d3f15956b329600902fdf3b984fe0', 'validated', '{"audio_key":"604ef9ab2a984b7ab2a0a9f9e9a66b043607086e41283b7186560e70af0bcd66","entity_key":"d_shopping_and_prices_01:3","voice_id":"FRY6vOtGqwamgAf39SwP","voice_name":"Yanis","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"18fd76ba0e3806f68992fa35e5b63e4e5c1d3f15956b329600902fdf3b984fe0","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/604ef9ab2a984b7ab2a0a9f9e9a66b043607086e41283b7186560e70af0bcd66.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_a1_day_capstone_01:2 -> audio/generated/fr-FR/dialogues/618f3646d8b0ed7ec9dddfb6084da7141ab97d2473f2db474a4dd22500acd148.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7afe5561-b29c-54d4-9d5e-72b5f05d6923', 1)
  AND voice_key = 'character:hugo:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_a1_day_capstone_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5d1bda923f7bd6cb7406faf0faa42852479260f0ce490030c77b1984a728fa6b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('60f39eb2-371f-599e-ac3d-dea8a63aafbb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7afe5561-b29c-54d4-9d5e-72b5f05d6923', 1), '5d1bda923f7bd6cb7406faf0faa42852479260f0ce490030c77b1984a728fa6b',
  'character:hugo:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/618f3646d8b0ed7ec9dddfb6084da7141ab97d2473f2db474a4dd22500acd148.mp3', 2455, '2026-09-14 09:41:22.710859', '69ffa3fe2a9003ae338f00dc4f390a8f724bee0b35c1a5621ab3e1d1d8e5b4b9', 'validated', '{"audio_key":"618f3646d8b0ed7ec9dddfb6084da7141ab97d2473f2db474a4dd22500acd148","entity_key":"d_a1_day_capstone_01:2","voice_id":"FRY6vOtGqwamgAf39SwP","voice_name":"Yanis","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"69ffa3fe2a9003ae338f00dc4f390a8f724bee0b35c1a5621ab3e1d1d8e5b4b9","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/618f3646d8b0ed7ec9dddfb6084da7141ab97d2473f2db474a4dd22500acd148.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_family_and_people_02:3 -> audio/generated/fr-FR/dialogues/667d62e520ca3e5e3d546c677d76406f1f92e623557f4e262eb53425bfe5a4ac.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('273cde78-26c9-5ffb-9766-c29983d2f089', 1)
  AND voice_key = 'character:camille:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_family_and_people_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e4a24aebd6cb8df9f3664f298bc53dc2291f6fec374021363387a2137004428c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2c09ff54-689a-5040-8304-efe0fde70b54', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('273cde78-26c9-5ffb-9766-c29983d2f089', 1), 'e4a24aebd6cb8df9f3664f298bc53dc2291f6fec374021363387a2137004428c',
  'character:camille:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/667d62e520ca3e5e3d546c677d76406f1f92e623557f4e262eb53425bfe5a4ac.mp3', 1253, '2026-09-14 09:41:23.477165', 'c8a694d945dacb120bce8010972c8bb26fb7cdba4ae38fd821917e628221679a', 'validated', '{"audio_key":"667d62e520ca3e5e3d546c677d76406f1f92e623557f4e262eb53425bfe5a4ac","entity_key":"d_family_and_people_02:3","voice_id":"lvQdCgwZfBuOzxyV5pxu","voice_name":"Audia - Customer Support","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c8a694d945dacb120bce8010972c8bb26fb7cdba4ae38fd821917e628221679a","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/667d62e520ca3e5e3d546c677d76406f1f92e623557f4e262eb53425bfe5a4ac.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_a1_day_capstone_02:4 -> audio/generated/fr-FR/dialogues/6688f85c8bd4d65ac46da6b08592ffd071fcaf4c685c05b3fc74c6482f32b05f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4d046613-7e63-54f9-8959-c34cacbf6231', 1)
  AND voice_key = 'character:claire:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_a1_day_capstone_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '62cab23a365c7c5903ff6429db5a161331f9feae2e4d0bd981e9cdae91d1ba74'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1c91b4c2-8425-5294-b9ac-08e27be05918', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4d046613-7e63-54f9-8959-c34cacbf6231', 1), '62cab23a365c7c5903ff6429db5a161331f9feae2e4d0bd981e9cdae91d1ba74',
  'character:claire:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/6688f85c8bd4d65ac46da6b08592ffd071fcaf4c685c05b3fc74c6482f32b05f.mp3', 1515, '2026-09-14 09:41:23.802797', 'e56418e79fa2a3c538f433bbd2d13f34293e4c4c06bb04d11ed14f4b993dae42', 'validated', '{"audio_key":"6688f85c8bd4d65ac46da6b08592ffd071fcaf4c685c05b3fc74c6482f32b05f","entity_key":"d_a1_day_capstone_02:4","voice_id":"yatuMX0k4Dh41R64sbGj","voice_name":"Cécile - Interactive Customer Support","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"e56418e79fa2a3c538f433bbd2d13f34293e4c4c06bb04d11ed14f4b993dae42","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/6688f85c8bd4d65ac46da6b08592ffd071fcaf4c685c05b3fc74c6482f32b05f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_getting_around_02:1 -> audio/generated/fr-FR/dialogues/678c8a0627c32f8526e2212ea07fcf6a95748e1fd636389346a7b79b12181ea0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('47b1750a-eb05-5510-93f7-cac1bdc6df69', 1)
  AND voice_key = 'character:nicolas:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_getting_around_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b84e68741ac1efa46113aa9276066e3964216d7ab68b838a58deb02f73be6357'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a9e4cb0d-70b8-5d73-8534-6dfa548ace2d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('47b1750a-eb05-5510-93f7-cac1bdc6df69', 1), 'b84e68741ac1efa46113aa9276066e3964216d7ab68b838a58deb02f73be6357',
  'character:nicolas:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/678c8a0627c32f8526e2212ea07fcf6a95748e1fd636389346a7b79b12181ea0.mp3', 1201, '2026-09-14 09:41:24.588669', '737f917902f6dbade9aa4fbcf0d25da0d9891fe8a5a504c5dd8790b89e561c2b', 'validated', '{"audio_key":"678c8a0627c32f8526e2212ea07fcf6a95748e1fd636389346a7b79b12181ea0","entity_key":"d_getting_around_02:1","voice_id":"7Pm7442WzqlfkW9vjmO9","voice_name":"Maxime - Dynamic and Natural","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"737f917902f6dbade9aa4fbcf0d25da0d9891fe8a5a504c5dd8790b89e561c2b","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/678c8a0627c32f8526e2212ea07fcf6a95748e1fd636389346a7b79b12181ea0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_getting_around_02:3 -> audio/generated/fr-FR/dialogues/6a4c6d005370d60cf9990edce5392506c649bbc3203c75434c3821fe85719dcc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('186f249c-23a1-5a13-ba07-5e0b9f9971a3', 1)
  AND voice_key = 'character:nicolas:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_getting_around_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e429e4f4eee9335e2aa809988f7673a6298212a4e47016d8374ff2904fc5e7fb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d95c1e86-f4a6-5e01-b768-4a8ed6ba18b1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('186f249c-23a1-5a13-ba07-5e0b9f9971a3', 1), 'e429e4f4eee9335e2aa809988f7673a6298212a4e47016d8374ff2904fc5e7fb',
  'character:nicolas:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/6a4c6d005370d60cf9990edce5392506c649bbc3203c75434c3821fe85719dcc.mp3', 1018, '2026-09-14 09:41:24.862798', 'f8161034953d4dd7207b6e4c556de94e733456a1e3c4d702bff9326de26e08aa', 'validated', '{"audio_key":"6a4c6d005370d60cf9990edce5392506c649bbc3203c75434c3821fe85719dcc","entity_key":"d_getting_around_02:3","voice_id":"7Pm7442WzqlfkW9vjmO9","voice_name":"Maxime - Dynamic and Natural","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f8161034953d4dd7207b6e4c556de94e733456a1e3c4d702bff9326de26e08aa","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/6a4c6d005370d60cf9990edce5392506c649bbc3203c75434c3821fe85719dcc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_shopping_and_prices_01:1 -> audio/generated/fr-FR/dialogues/6bdeebce0e08484e28873903ec59e4ebb1324fbeacafa5b2430cdb39cc4fd026.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('49f756ed-a9c6-5830-9fb9-4887ea11f21e', 1)
  AND voice_key = 'character:hugo:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_shopping_and_prices_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1b89398c35f2243ad193515d1f1d79f9351e06906b74dd3f090c23b7ba3d4e21'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2e9e0548-5b63-55ad-9c30-0567c2548b39', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('49f756ed-a9c6-5830-9fb9-4887ea11f21e', 1), '1b89398c35f2243ad193515d1f1d79f9351e06906b74dd3f090c23b7ba3d4e21',
  'character:hugo:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/6bdeebce0e08484e28873903ec59e4ebb1324fbeacafa5b2430cdb39cc4fd026.mp3', 1071, '2026-09-14 09:41:25.587725', 'ec81b7f1933f5af877d6f49c4fbaef1c6399c98af448231daa31e68215bd7458', 'validated', '{"audio_key":"6bdeebce0e08484e28873903ec59e4ebb1324fbeacafa5b2430cdb39cc4fd026","entity_key":"d_shopping_and_prices_01:1","voice_id":"FRY6vOtGqwamgAf39SwP","voice_name":"Yanis","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ec81b7f1933f5af877d6f49c4fbaef1c6399c98af448231daa31e68215bd7458","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/6bdeebce0e08484e28873903ec59e4ebb1324fbeacafa5b2430cdb39cc4fd026.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_getting_around_02:4 -> audio/generated/fr-FR/dialogues/6d38ce8820e7a48ba03b29b4b16c55f41258c6159df8aa514600bcb3992f0a27.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('967c4e6f-a6d6-5e78-ad80-e6b6380262d4', 1)
  AND voice_key = 'character:léa:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_getting_around_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2ad63a54bdc5981b9170a86dd28d49974f07dbb955a6b060fd71f75344c315ea'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fc3fb5a8-59b7-5fa5-9111-011572494794', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('967c4e6f-a6d6-5e78-ad80-e6b6380262d4', 1), '2ad63a54bdc5981b9170a86dd28d49974f07dbb955a6b060fd71f75344c315ea',
  'character:léa:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/6d38ce8820e7a48ba03b29b4b16c55f41258c6159df8aa514600bcb3992f0a27.mp3', 1071, '2026-09-14 09:41:25.984004', 'aee889bf4b719d3e62cd1fdeeb886562c7d5ee96bc999839b0abf29a49e1cfc7', 'validated', '{"audio_key":"6d38ce8820e7a48ba03b29b4b16c55f41258c6159df8aa514600bcb3992f0a27","entity_key":"d_getting_around_02:4","voice_id":"fBpCO0Kf0krKLYGOu65w","voice_name":"Émilie - Customer service advisor","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"aee889bf4b719d3e62cd1fdeeb886562c7d5ee96bc999839b0abf29a49e1cfc7","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/6d38ce8820e7a48ba03b29b4b16c55f41258c6159df8aa514600bcb3992f0a27.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_identity_and_origin_01:2 -> audio/generated/fr-FR/dialogues/6f15eb46f55263f1283ac5e480d0e18d10b257adeb41be714ba525813fdd0f7a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1093afa8-6bd6-5eb3-8cc8-3a26a6c01b5b', 1)
  AND voice_key = 'character:thomas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_identity_and_origin_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bd32d852fdacf1d99231864a83160762faabb84a35591aaca3737a8a7e8749b8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2e9ff98b-3540-55ff-bd98-5ac5a2a3aaf2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1093afa8-6bd6-5eb3-8cc8-3a26a6c01b5b', 1), 'bd32d852fdacf1d99231864a83160762faabb84a35591aaca3737a8a7e8749b8',
  'character:thomas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/6f15eb46f55263f1283ac5e480d0e18d10b257adeb41be714ba525813fdd0f7a.mp3', 2455, '2026-09-14 09:41:26.815790', 'ae276267c904ca79ed1ddad0b4f7309aa633e53c1e85b58ccebec482ed26ee6f', 'validated', '{"audio_key":"6f15eb46f55263f1283ac5e480d0e18d10b257adeb41be714ba525813fdd0f7a","entity_key":"d_identity_and_origin_01:2","voice_id":"1WQXvbtj0rUYuB5yhY3N","voice_name":"Skel - Calm and Professional","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ae276267c904ca79ed1ddad0b4f7309aa633e53c1e85b58ccebec482ed26ee6f","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/6f15eb46f55263f1283ac5e480d0e18d10b257adeb41be714ba525813fdd0f7a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_a1_day_capstone_01:4 -> audio/generated/fr-FR/dialogues/773937ce684da3928b20663edf12f8f87621aea3423ad350d23efbd1a27b4c57.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('34a8c77e-5538-56dd-abc6-09320c175ffb', 1)
  AND voice_key = 'character:hugo:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_a1_day_capstone_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3efeee5be20e4ed288e263d16da2d61183ab91ef1783e6df2204bb5bdfe0a51d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('92f4af52-9f4d-54bf-8876-cc4a175b32c1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('34a8c77e-5538-56dd-abc6-09320c175ffb', 1), '3efeee5be20e4ed288e263d16da2d61183ab91ef1783e6df2204bb5bdfe0a51d',
  'character:hugo:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/773937ce684da3928b20663edf12f8f87621aea3423ad350d23efbd1a27b4c57.mp3', 1253, '2026-09-14 09:41:27.007901', 'c443bce8aa8bf55ccb850c10b11f2d5d0abb35848032c8d06ac7d897471d0523', 'validated', '{"audio_key":"773937ce684da3928b20663edf12f8f87621aea3423ad350d23efbd1a27b4c57","entity_key":"d_a1_day_capstone_01:4","voice_id":"FRY6vOtGqwamgAf39SwP","voice_name":"Yanis","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c443bce8aa8bf55ccb850c10b11f2d5d0abb35848032c8d06ac7d897471d0523","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/773937ce684da3928b20663edf12f8f87621aea3423ad350d23efbd1a27b4c57.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cafe_basics_01:3 -> audio/generated/fr-FR/dialogues/77b70aa55236577f0e311b8481bfb30e37785c42a8901ac2ae2cd7330493c031.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7ab3967e-c109-56f3-ab5b-38012cd84e37', 1)
  AND voice_key = 'character:thomas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cafe_basics_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b60f6f2b725a97d56fcccb40f8f0536d713ef59726ad631a1e5a194356713b29'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4927213b-8e9e-590b-86ce-c6d560b36d81', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7ab3967e-c109-56f3-ab5b-38012cd84e37', 1), 'b60f6f2b725a97d56fcccb40f8f0536d713ef59726ad631a1e5a194356713b29',
  'character:thomas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/77b70aa55236577f0e311b8481bfb30e37785c42a8901ac2ae2cd7330493c031.mp3', 1149, '2026-09-14 09:41:27.894804', 'ebad96b705b8be66f5277d9eef9d02ee42a46299cdb5131c58b93bc13b5151c2', 'validated', '{"audio_key":"77b70aa55236577f0e311b8481bfb30e37785c42a8901ac2ae2cd7330493c031","entity_key":"d_cafe_basics_01:3","voice_id":"1WQXvbtj0rUYuB5yhY3N","voice_name":"Skel - Calm and Professional","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ebad96b705b8be66f5277d9eef9d02ee42a46299cdb5131c58b93bc13b5151c2","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/77b70aa55236577f0e311b8481bfb30e37785c42a8901ac2ae2cd7330493c031.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_home_and_location_01:2 -> audio/generated/fr-FR/dialogues/7964d54c521e6c311f921c45d3ae597767763a53d2472c1e446e53a7f37ad767.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7752a683-6372-5b9a-9a2f-c88a0135663c', 1)
  AND voice_key = 'character:inès:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_home_and_location_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '04f92c69a5145f67e12cc645532a36ebbc7514abf3c403ca19cf222793e6f906'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('56446923-7623-5af4-8242-494cb7c2d6b6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7752a683-6372-5b9a-9a2f-c88a0135663c', 1), '04f92c69a5145f67e12cc645532a36ebbc7514abf3c403ca19cf222793e6f906',
  'character:inès:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/7964d54c521e6c311f921c45d3ae597767763a53d2472c1e446e53a7f37ad767.mp3', 1332, '2026-09-14 09:41:28.145516', 'b8b33b126305adc9265099319ba0624c651d3de6516102db453870ca02b3b819', 'validated', '{"audio_key":"7964d54c521e6c311f921c45d3ae597767763a53d2472c1e446e53a7f37ad767","entity_key":"d_home_and_location_01:2","voice_id":"mNu8EQcIlFZdOJs7yfhe","voice_name":"Julia - Warm French Narrator","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b8b33b126305adc9265099319ba0624c651d3de6516102db453870ca02b3b819","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/7964d54c521e6c311f921c45d3ae597767763a53d2472c1e446e53a7f37ad767.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_getting_around_01:2 -> audio/generated/fr-FR/dialogues/846f84b442ab2657b36a8418f7db7716f957cc9610fea852ce503d56f5e2c2af.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('24d9980d-7f3c-5db5-9f6c-951c6b49bcc5', 1)
  AND voice_key = 'character:thomas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_getting_around_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3272fe4dfdb6adb0d6c7ecd3450918582c71ae87023917cb11cac981e9c8e39a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b82c0665-48df-592f-a62f-65689fdbe685', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('24d9980d-7f3c-5db5-9f6c-951c6b49bcc5', 1), '3272fe4dfdb6adb0d6c7ecd3450918582c71ae87023917cb11cac981e9c8e39a',
  'character:thomas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/846f84b442ab2657b36a8418f7db7716f957cc9610fea852ce503d56f5e2c2af.mp3', 1436, '2026-09-14 09:41:29.080366', 'dbb377620d49436d1d13e0940bdc6f984514989487779ba5addd5415f375e162', 'validated', '{"audio_key":"846f84b442ab2657b36a8418f7db7716f957cc9610fea852ce503d56f5e2c2af","entity_key":"d_getting_around_01:2","voice_id":"1WQXvbtj0rUYuB5yhY3N","voice_name":"Skel - Calm and Professional","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dbb377620d49436d1d13e0940bdc6f984514989487779ba5addd5415f375e162","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/846f84b442ab2657b36a8418f7db7716f957cc9610fea852ce503d56f5e2c2af.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_home_and_location_02:4 -> audio/generated/fr-FR/dialogues/8e997dce6d0dbf2b8d42bad51c339d33df638f2480a836ad84d9f771b02658a6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5140170c-685c-57b9-a64a-fd1f6d0b4e2a', 1)
  AND voice_key = 'character:julien:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_home_and_location_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3df176092b982d29007afae5e9ff29d99b37029fe83321337c3f221bbcb6759a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3906b2bb-8255-5bbe-83ef-ecca12f061f6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5140170c-685c-57b9-a64a-fd1f6d0b4e2a', 1), '3df176092b982d29007afae5e9ff29d99b37029fe83321337c3f221bbcb6759a',
  'character:julien:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/8e997dce6d0dbf2b8d42bad51c339d33df638f2480a836ad84d9f771b02658a6.mp3', 1253, '2026-09-14 09:41:29.226252', '44e09b423bb4bdecbfa08af83c3a08b303fdb7ffcac27ce36633ba4d357e5c4c', 'validated', '{"audio_key":"8e997dce6d0dbf2b8d42bad51c339d33df638f2480a836ad84d9f771b02658a6","entity_key":"d_home_and_location_02:4","voice_id":"xO2Q4ARMEd4BI2sGDH9c","voice_name":"Edouard - Confident and Polished","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"44e09b423bb4bdecbfa08af83c3a08b303fdb7ffcac27ce36633ba4d357e5c4c","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/8e997dce6d0dbf2b8d42bad51c339d33df638f2480a836ad84d9f771b02658a6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cafe_basics_02:1 -> audio/generated/fr-FR/dialogues/93e42b80462c11f58f05d545044d55dd437e31a66df92d49a9e3010b840f4d0e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('eea09e52-faf0-5d56-8705-02275f56453b', 1)
  AND voice_key = 'character:léa:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cafe_basics_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2025db25866b74ac164e871d17f4892f4237610006e8a1ff5e45e61ed9c77429'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('74e9ce9d-5c68-5bcc-be8c-86456d5c5173', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('eea09e52-faf0-5d56-8705-02275f56453b', 1), '2025db25866b74ac164e871d17f4892f4237610006e8a1ff5e45e61ed9c77429',
  'character:léa:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/93e42b80462c11f58f05d545044d55dd437e31a66df92d49a9e3010b840f4d0e.mp3', 1280, '2026-09-14 09:41:30.154968', 'da2b206e7716d4aa1e0a9095eac4a2ec3230fb8a394c66fb6120738695972471', 'validated', '{"audio_key":"93e42b80462c11f58f05d545044d55dd437e31a66df92d49a9e3010b840f4d0e","entity_key":"d_cafe_basics_02:1","voice_id":"fBpCO0Kf0krKLYGOu65w","voice_name":"Émilie - Customer service advisor","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"da2b206e7716d4aa1e0a9095eac4a2ec3230fb8a394c66fb6120738695972471","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/93e42b80462c11f58f05d545044d55dd437e31a66df92d49a9e3010b840f4d0e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_shopping_and_prices_02:4 -> audio/generated/fr-FR/dialogues/962abb212e9886fa811231ef719f783b077aa29b358aa52487bf22f55ed0ea52.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0215963a-7f9e-5884-9fb7-41dd91e7f5bd', 1)
  AND voice_key = 'character:julien:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_shopping_and_prices_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '79a90fe414d637084b9c5bbcdf4fea5481c1e04032516f8364ea6446de1dcf6d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cda0139a-87c1-596b-8ae0-7bbb4afede76', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0215963a-7f9e-5884-9fb7-41dd91e7f5bd', 1), '79a90fe414d637084b9c5bbcdf4fea5481c1e04032516f8364ea6446de1dcf6d',
  'character:julien:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/962abb212e9886fa811231ef719f783b077aa29b358aa52487bf22f55ed0ea52.mp3', 914, '2026-09-14 09:41:30.266969', '974e7154953ebe96512951b49f4cca5da885aedc623e6de8c00ef375717c09dc', 'validated', '{"audio_key":"962abb212e9886fa811231ef719f783b077aa29b358aa52487bf22f55ed0ea52","entity_key":"d_shopping_and_prices_02:4","voice_id":"xO2Q4ARMEd4BI2sGDH9c","voice_name":"Edouard - Confident and Polished","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"974e7154953ebe96512951b49f4cca5da885aedc623e6de8c00ef375717c09dc","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/962abb212e9886fa811231ef719f783b077aa29b358aa52487bf22f55ed0ea52.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_shopping_and_prices_01:2 -> audio/generated/fr-FR/dialogues/a05f3023cf145859a555b9235749159db390b0522fc3f7ab3e1a1c0f87a72e15.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b059a2f0-593a-5679-a325-e8f530d7aebb', 1)
  AND voice_key = 'character:inès:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_shopping_and_prices_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6f086018d42b99736382818c9a8ca09769274f680c1d7e646d89d65a0b4a8bd1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('baa1cb4d-f733-5f54-9c69-c28528115cab', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b059a2f0-593a-5679-a325-e8f530d7aebb', 1), '6f086018d42b99736382818c9a8ca09769274f680c1d7e646d89d65a0b4a8bd1',
  'character:inès:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/a05f3023cf145859a555b9235749159db390b0522fc3f7ab3e1a1c0f87a72e15.mp3', 1097, '2026-09-14 09:41:31.154014', '690d8a89ada8412c6b71c4faa522cae09f0af59a8c161a71aaebc149f99368e7', 'validated', '{"audio_key":"a05f3023cf145859a555b9235749159db390b0522fc3f7ab3e1a1c0f87a72e15","entity_key":"d_shopping_and_prices_01:2","voice_id":"mNu8EQcIlFZdOJs7yfhe","voice_name":"Julia - Warm French Narrator","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"690d8a89ada8412c6b71c4faa522cae09f0af59a8c161a71aaebc149f99368e7","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/a05f3023cf145859a555b9235749159db390b0522fc3f7ab3e1a1c0f87a72e15.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cafe_basics_01:1 -> audio/generated/fr-FR/dialogues/a298f2c5bcb3b17f6bc36552912577c5dc19dfbfbff53f6f5395664ada470492.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('385723a5-f510-5c5a-b529-a9a0cf1031fe', 1)
  AND voice_key = 'character:thomas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cafe_basics_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '396a59e8e5b210b9b2b1eba6384c849dbb8a62838925ab7c9893531be8db4183'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('58b14853-ffef-5df8-9bec-2f5911994e40', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('385723a5-f510-5c5a-b529-a9a0cf1031fe', 1), '396a59e8e5b210b9b2b1eba6384c849dbb8a62838925ab7c9893531be8db4183',
  'character:thomas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/a298f2c5bcb3b17f6bc36552912577c5dc19dfbfbff53f6f5395664ada470492.mp3', 2272, '2026-09-14 09:41:31.460833', '7757cf6b041bf7dd581a3ca64e92590c7d59a82ac8042346e9aff37ff6fd87fd', 'validated', '{"audio_key":"a298f2c5bcb3b17f6bc36552912577c5dc19dfbfbff53f6f5395664ada470492","entity_key":"d_cafe_basics_01:1","voice_id":"1WQXvbtj0rUYuB5yhY3N","voice_name":"Skel - Calm and Professional","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7757cf6b041bf7dd581a3ca64e92590c7d59a82ac8042346e9aff37ff6fd87fd","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/a298f2c5bcb3b17f6bc36552912577c5dc19dfbfbff53f6f5395664ada470492.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_articles_and_objects_02:1 -> audio/generated/fr-FR/dialogues/a7795c7a4d6ecd49c23eb2eb014c254efd01ec7584aab8288e70db4024a20965.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5e4a5108-0533-55ac-a6cf-c79abf65d89a', 1)
  AND voice_key = 'character:claire:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_articles_and_objects_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cfda1d897da0ef80833e773d71f9ec71fc4b18754f510557d9167ef34e082324'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('860897a5-aac6-53e8-8dbc-2e1d7c99735c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5e4a5108-0533-55ac-a6cf-c79abf65d89a', 1), 'cfda1d897da0ef80833e773d71f9ec71fc4b18754f510557d9167ef34e082324',
  'character:claire:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/a7795c7a4d6ecd49c23eb2eb014c254efd01ec7584aab8288e70db4024a20965.mp3', 1436, '2026-09-14 09:41:32.257727', '1fc5bd894bc8f68c6c55bae232810c8329835211ebe751c26998c5ae4a498ff5', 'validated', '{"audio_key":"a7795c7a4d6ecd49c23eb2eb014c254efd01ec7584aab8288e70db4024a20965","entity_key":"d_articles_and_objects_02:1","voice_id":"yatuMX0k4Dh41R64sbGj","voice_name":"Cécile - Interactive Customer Support","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"1fc5bd894bc8f68c6c55bae232810c8329835211ebe751c26998c5ae4a498ff5","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/a7795c7a4d6ecd49c23eb2eb014c254efd01ec7584aab8288e70db4024a20965.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_articles_and_objects_02:3 -> audio/generated/fr-FR/dialogues/a9da2b802f826bf6751907659987cb5c9b7a26a641ac7a011aba4f2aa86ed792.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5dbed26c-02d9-5ac9-8801-02bf7efd6191', 1)
  AND voice_key = 'character:claire:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_articles_and_objects_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1bb710e8ddfae4b78e3f81d56d1ca60c0f9bc486a83c42d1746baa63d490e8de'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9b0c23b7-c66f-5ae9-b203-bd3cf5d4bc44', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5dbed26c-02d9-5ac9-8801-02bf7efd6191', 1), '1bb710e8ddfae4b78e3f81d56d1ca60c0f9bc486a83c42d1746baa63d490e8de',
  'character:claire:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/a9da2b802f826bf6751907659987cb5c9b7a26a641ac7a011aba4f2aa86ed792.mp3', 1071, '2026-09-14 09:41:32.532217', 'cb31f8da44f7130d091ea88359df34c9ca637f98fb806d757baf5aabedab2fcb', 'validated', '{"audio_key":"a9da2b802f826bf6751907659987cb5c9b7a26a641ac7a011aba4f2aa86ed792","entity_key":"d_articles_and_objects_02:3","voice_id":"yatuMX0k4Dh41R64sbGj","voice_name":"Cécile - Interactive Customer Support","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"cb31f8da44f7130d091ea88359df34c9ca637f98fb806d757baf5aabedab2fcb","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/a9da2b802f826bf6751907659987cb5c9b7a26a641ac7a011aba4f2aa86ed792.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_identity_and_origin_02:4 -> audio/generated/fr-FR/dialogues/b0ab8ccebe66c7caf55f8af4fe2ea3da6df9306084f4aea1386caae90ece7e8b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d96579dc-a349-583e-a5b6-b1b707ad4e62', 1)
  AND voice_key = 'character:léa:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_identity_and_origin_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fb1fd3ab26cae2668c7d9c63be98480a7077b28c441c0468d46b5307e570d335'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e03a5199-be5e-5650-9e07-26a5418bbce0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d96579dc-a349-583e-a5b6-b1b707ad4e62', 1), 'fb1fd3ab26cae2668c7d9c63be98480a7077b28c441c0468d46b5307e570d335',
  'character:léa:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/b0ab8ccebe66c7caf55f8af4fe2ea3da6df9306084f4aea1386caae90ece7e8b.mp3', 1071, '2026-09-14 09:41:33.300007', 'f51cffe49fabf06ad6390ad0703299bbe1eadb1ea288e91a08732eda9c556f60', 'validated', '{"audio_key":"b0ab8ccebe66c7caf55f8af4fe2ea3da6df9306084f4aea1386caae90ece7e8b","entity_key":"d_identity_and_origin_02:4","voice_id":"fBpCO0Kf0krKLYGOu65w","voice_name":"Émilie - Customer service advisor","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"f51cffe49fabf06ad6390ad0703299bbe1eadb1ea288e91a08732eda9c556f60","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/b0ab8ccebe66c7caf55f8af4fe2ea3da6df9306084f4aea1386caae90ece7e8b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cafe_basics_02:2 -> audio/generated/fr-FR/dialogues/b149ef5cf19727c79c816a3434d252106e1314f8c7d494ffb0f9366a794a7477.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('916deed0-34a6-548d-9361-eb4d24228c4f', 1)
  AND voice_key = 'character:nicolas:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cafe_basics_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c24bd916a9922a1799e145bd2cb2da670a0cfbfd08622a105095b4b9bd21f6a3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3f3834f6-2d0f-5a58-a372-9276a28a6eb0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('916deed0-34a6-548d-9361-eb4d24228c4f', 1), 'c24bd916a9922a1799e145bd2cb2da670a0cfbfd08622a105095b4b9bd21f6a3',
  'character:nicolas:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/b149ef5cf19727c79c816a3434d252106e1314f8c7d494ffb0f9366a794a7477.mp3', 1149, '2026-09-14 09:41:33.592445', 'd15212eea070753ef7f9263067829d6957e53a31e2944e4aea9993b187e486e6', 'validated', '{"audio_key":"b149ef5cf19727c79c816a3434d252106e1314f8c7d494ffb0f9366a794a7477","entity_key":"d_cafe_basics_02:2","voice_id":"7Pm7442WzqlfkW9vjmO9","voice_name":"Maxime - Dynamic and Natural","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d15212eea070753ef7f9263067829d6957e53a31e2944e4aea9993b187e486e6","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/b149ef5cf19727c79c816a3434d252106e1314f8c7d494ffb0f9366a794a7477.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_home_and_location_02:2 -> audio/generated/fr-FR/dialogues/b6d59db12a98d7b8b794107bdb9406a133c2cc407f5eac50bac67dbf7b8a45fc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a0b21ddb-55ff-50d5-931f-d3608ffe24e5', 1)
  AND voice_key = 'character:julien:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_home_and_location_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '10da2b1f9db0a9623017d7d27bcd9f6f87bda18c4a6405628acfbf673db6ec69'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9f21945c-278c-5425-b15a-82370e6ccb38', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a0b21ddb-55ff-50d5-931f-d3608ffe24e5', 1), '10da2b1f9db0a9623017d7d27bcd9f6f87bda18c4a6405628acfbf673db6ec69',
  'character:julien:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/b6d59db12a98d7b8b794107bdb9406a133c2cc407f5eac50bac67dbf7b8a45fc.mp3', 1332, '2026-09-14 09:41:34.336715', 'a49d769496880c37f66ec0c94910729807521ba2dbe5a2424a097eb3bfcc1a25', 'validated', '{"audio_key":"b6d59db12a98d7b8b794107bdb9406a133c2cc407f5eac50bac67dbf7b8a45fc","entity_key":"d_home_and_location_02:2","voice_id":"xO2Q4ARMEd4BI2sGDH9c","voice_name":"Edouard - Confident and Polished","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"a49d769496880c37f66ec0c94910729807521ba2dbe5a2424a097eb3bfcc1a25","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/b6d59db12a98d7b8b794107bdb9406a133c2cc407f5eac50bac67dbf7b8a45fc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_family_and_people_02:4 -> audio/generated/fr-FR/dialogues/b7f44401cd10fe133146f10c90e89090ed6f2a29af8f20d462188674165e8335.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('df94ccdc-16de-54fc-b649-e7c939a56b67', 1)
  AND voice_key = 'character:nicolas:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_family_and_people_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '849e0869964e4c436bfe97df56da46deec49ee0ee28c569544d8b7a54e874759'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('031c963c-c676-5f18-8668-71e865b9e524', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('df94ccdc-16de-54fc-b649-e7c939a56b67', 1), '849e0869964e4c436bfe97df56da46deec49ee0ee28c569544d8b7a54e874759',
  'character:nicolas:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/b7f44401cd10fe133146f10c90e89090ed6f2a29af8f20d462188674165e8335.mp3', 1097, '2026-09-14 09:41:34.707209', '3a1b0d76463667cefc53992aab7ffa8037149b659ca3f6cc2d1eae58678d079f', 'validated', '{"audio_key":"b7f44401cd10fe133146f10c90e89090ed6f2a29af8f20d462188674165e8335","entity_key":"d_family_and_people_02:4","voice_id":"7Pm7442WzqlfkW9vjmO9","voice_name":"Maxime - Dynamic and Natural","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3a1b0d76463667cefc53992aab7ffa8037149b659ca3f6cc2d1eae58678d079f","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/b7f44401cd10fe133146f10c90e89090ed6f2a29af8f20d462188674165e8335.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_a1_day_capstone_01:3 -> audio/generated/fr-FR/dialogues/b97b416735dbb392fd023cb4da4dcf3a07937f4b4328ccab58bc971c3bcd4763.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c5db779a-ffb4-5d39-aeb7-4cc27e68bc12', 1)
  AND voice_key = 'character:inès:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_a1_day_capstone_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8583a62c430619351675e0329ebec46733932959ba1c344d3405d42d86e51e0d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9e8b43c4-34dd-5d31-8f05-7b08ef056c40', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c5db779a-ffb4-5d39-aeb7-4cc27e68bc12', 1), '8583a62c430619351675e0329ebec46733932959ba1c344d3405d42d86e51e0d',
  'character:inès:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/b97b416735dbb392fd023cb4da4dcf3a07937f4b4328ccab58bc971c3bcd4763.mp3', 1384, '2026-09-14 09:41:35.436956', 'a8518145dea81bf9961c96c79ea9d10ad47f7f403f376fb8f8b4fe679dbf42b9', 'validated', '{"audio_key":"b97b416735dbb392fd023cb4da4dcf3a07937f4b4328ccab58bc971c3bcd4763","entity_key":"d_a1_day_capstone_01:3","voice_id":"mNu8EQcIlFZdOJs7yfhe","voice_name":"Julia - Warm French Narrator","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a8518145dea81bf9961c96c79ea9d10ad47f7f403f376fb8f8b4fe679dbf42b9","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/b97b416735dbb392fd023cb4da4dcf3a07937f4b4328ccab58bc971c3bcd4763.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_articles_and_objects_01:4 -> audio/generated/fr-FR/dialogues/bc67b5f5aab8c33da0f4b1b4195749c2bf3e80a16d470453f37a29a37412f6de.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('dac8087f-e2d1-5a4a-8544-86d6b4af916d', 1)
  AND voice_key = 'character:hugo:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_articles_and_objects_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '355a6c7b846555b715ecdc80b8e625156d598ccd6abcc01eb826cb3073b275af'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('763f8329-2cbf-5bcf-848d-dfe9b5b8512b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('dac8087f-e2d1-5a4a-8544-86d6b4af916d', 1), '355a6c7b846555b715ecdc80b8e625156d598ccd6abcc01eb826cb3073b275af',
  'character:hugo:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/bc67b5f5aab8c33da0f4b1b4195749c2bf3e80a16d470453f37a29a37412f6de.mp3', 1071, '2026-09-14 09:41:35.782990', '5c66d2497e72addefb9b6211afca4a0842fa3e896d9f12cc0e9d8ded808272c4', 'validated', '{"audio_key":"bc67b5f5aab8c33da0f4b1b4195749c2bf3e80a16d470453f37a29a37412f6de","entity_key":"d_articles_and_objects_01:4","voice_id":"FRY6vOtGqwamgAf39SwP","voice_name":"Yanis","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5c66d2497e72addefb9b6211afca4a0842fa3e896d9f12cc0e9d8ded808272c4","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/bc67b5f5aab8c33da0f4b1b4195749c2bf3e80a16d470453f37a29a37412f6de.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_identity_and_origin_01:3 -> audio/generated/fr-FR/dialogues/bfceebc787dc0cc48a5fd7c2f55e11fa10287f7d252282963a58f931ff04bfaf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7379b54a-3e66-5b0b-bf41-803ba30731c1', 1)
  AND voice_key = 'character:camille:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_identity_and_origin_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3a1987203757f02353d5657be3f351299ac056fd9b0f7b01b0d8f1a960fcf545'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6f19ce1c-6aa7-5321-a328-df452c1be9c9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7379b54a-3e66-5b0b-bf41-803ba30731c1', 1), '3a1987203757f02353d5657be3f351299ac056fd9b0f7b01b0d8f1a960fcf545',
  'character:camille:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/bfceebc787dc0cc48a5fd7c2f55e11fa10287f7d252282963a58f931ff04bfaf.mp3', 1253, '2026-09-14 09:41:36.853867', '4e6c9e7ffbeeffa75f1e1c9ee242cc5004f67a9204668623c88944ac84807af9', 'validated', '{"audio_key":"bfceebc787dc0cc48a5fd7c2f55e11fa10287f7d252282963a58f931ff04bfaf","entity_key":"d_identity_and_origin_01:3","voice_id":"lvQdCgwZfBuOzxyV5pxu","voice_name":"Audia - Customer Support","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4e6c9e7ffbeeffa75f1e1c9ee242cc5004f67a9204668623c88944ac84807af9","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/bfceebc787dc0cc48a5fd7c2f55e11fa10287f7d252282963a58f931ff04bfaf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cafe_basics_01:2 -> audio/generated/fr-FR/dialogues/c0aeacccccc161f8b3323edf513a5afa2426d5bce9b2286e61726c09cd3ac0cb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('732af10e-1ce2-5434-8162-3f1849d978e7', 1)
  AND voice_key = 'character:camille:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cafe_basics_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '866ba5b0d9c5475789cb8255f476c94f1c2fc77f9158c1bb6f6858892e09a142'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b41cf905-9b21-5ed3-bbcb-0c892ff92b64', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('732af10e-1ce2-5434-8162-3f1849d978e7', 1), '866ba5b0d9c5475789cb8255f476c94f1c2fc77f9158c1bb6f6858892e09a142',
  'character:camille:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/c0aeacccccc161f8b3323edf513a5afa2426d5bce9b2286e61726c09cd3ac0cb.mp3', 1567, '2026-09-14 09:41:36.861418', '1ff00578f67e58042faa16e03943a2a07d0d933e02f851987525e235d01ee3af', 'validated', '{"audio_key":"c0aeacccccc161f8b3323edf513a5afa2426d5bce9b2286e61726c09cd3ac0cb","entity_key":"d_cafe_basics_01:2","voice_id":"lvQdCgwZfBuOzxyV5pxu","voice_name":"Audia - Customer Support","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1ff00578f67e58042faa16e03943a2a07d0d933e02f851987525e235d01ee3af","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/c0aeacccccc161f8b3323edf513a5afa2426d5bce9b2286e61726c09cd3ac0cb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_daily_actions_02:4 -> audio/generated/fr-FR/dialogues/c1794c119586313fc9bd6e945fa70fc0dc3e32b9b95d231adc9d20fde44113aa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('064d1412-f27d-5096-a304-b9f8bfeedea7', 1)
  AND voice_key = 'character:thomas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_daily_actions_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f3c1eaa9b63c25b0a8e6ad34640b98740d7c9213b06006d11d867715f98fb6e4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1b9d9a6d-4ee5-5a7c-8b75-df0f3f9eb5ed', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('064d1412-f27d-5096-a304-b9f8bfeedea7', 1), 'f3c1eaa9b63c25b0a8e6ad34640b98740d7c9213b06006d11d867715f98fb6e4',
  'character:thomas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/c1794c119586313fc9bd6e945fa70fc0dc3e32b9b95d231adc9d20fde44113aa.mp3', 1280, '2026-09-14 09:41:37.942875', '9fd5cee0a40fb2debe436e606ad961c61aaf637a873b02feea85641a9e2cf2b9', 'validated', '{"audio_key":"c1794c119586313fc9bd6e945fa70fc0dc3e32b9b95d231adc9d20fde44113aa","entity_key":"d_daily_actions_02:4","voice_id":"1WQXvbtj0rUYuB5yhY3N","voice_name":"Skel - Calm and Professional","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9fd5cee0a40fb2debe436e606ad961c61aaf637a873b02feea85641a9e2cf2b9","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/c1794c119586313fc9bd6e945fa70fc0dc3e32b9b95d231adc9d20fde44113aa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_home_and_location_01:3 -> audio/generated/fr-FR/dialogues/c58215224fc3109f798720f564c72a76cd5fd344b4515c1a6ef35f7f35899a65.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0194b71b-da39-50ee-8fbc-1646eb379fcf', 1)
  AND voice_key = 'character:hugo:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_home_and_location_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '68983d2d68ddddb88bff1321123fa3559ba4627d1b2afc5098b129b8fb127708'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ccb691ae-0294-5fe4-8897-0e832cc69a6b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0194b71b-da39-50ee-8fbc-1646eb379fcf', 1), '68983d2d68ddddb88bff1321123fa3559ba4627d1b2afc5098b129b8fb127708',
  'character:hugo:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/c58215224fc3109f798720f564c72a76cd5fd344b4515c1a6ef35f7f35899a65.mp3', 1201, '2026-09-14 09:41:37.934446', 'b1cc933c129613b67b22e74d9a152210fd98d2bb8b77d2d55ddbf8be81b4b03d', 'validated', '{"audio_key":"c58215224fc3109f798720f564c72a76cd5fd344b4515c1a6ef35f7f35899a65","entity_key":"d_home_and_location_01:3","voice_id":"FRY6vOtGqwamgAf39SwP","voice_name":"Yanis","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b1cc933c129613b67b22e74d9a152210fd98d2bb8b77d2d55ddbf8be81b4b03d","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/c58215224fc3109f798720f564c72a76cd5fd344b4515c1a6ef35f7f35899a65.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_time_and_schedule_01:3 -> audio/generated/fr-FR/dialogues/c6a9311a1bcb0068d2b51743e431a6e9be0dd2eb65ac6adc5078c0f2690e0e51.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f601a2a6-6b37-5ee4-8a95-5b4d79fc1970', 1)
  AND voice_key = 'character:inès:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_time_and_schedule_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4f98ef4cffb3e037d44d9dae877a7f4db5422062071c7202d22e4f7668e22827'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cfe99070-d050-5093-9007-10b38d734afa', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f601a2a6-6b37-5ee4-8a95-5b4d79fc1970', 1), '4f98ef4cffb3e037d44d9dae877a7f4db5422062071c7202d22e4f7668e22827',
  'character:inès:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/c6a9311a1bcb0068d2b51743e431a6e9be0dd2eb65ac6adc5078c0f2690e0e51.mp3', 1567, '2026-09-14 09:41:39.052521', 'b5db3426015f33772a7960676b54273a4a7d45a40faa4bee2d3a52745a63ad39', 'validated', '{"audio_key":"c6a9311a1bcb0068d2b51743e431a6e9be0dd2eb65ac6adc5078c0f2690e0e51","entity_key":"d_time_and_schedule_01:3","voice_id":"mNu8EQcIlFZdOJs7yfhe","voice_name":"Julia - Warm French Narrator","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b5db3426015f33772a7960676b54273a4a7d45a40faa4bee2d3a52745a63ad39","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/c6a9311a1bcb0068d2b51743e431a6e9be0dd2eb65ac6adc5078c0f2690e0e51.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_getting_around_02:2 -> audio/generated/fr-FR/dialogues/c8f2a9dcf09ac4076adee07ddd519b9e7ed41da24a9573acfba9bd122efc9fae.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d08323ca-6c1b-5e38-8f10-fbc56d6bc8b6', 1)
  AND voice_key = 'character:léa:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_getting_around_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2ed4647a3ffe7442e43c4d90ec725bda2e05ce544ccd563c4897d5ac7a9e283f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ae89f88d-9467-5b7a-a25d-c0d36c375d0d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d08323ca-6c1b-5e38-8f10-fbc56d6bc8b6', 1), '2ed4647a3ffe7442e43c4d90ec725bda2e05ce544ccd563c4897d5ac7a9e283f',
  'character:léa:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/c8f2a9dcf09ac4076adee07ddd519b9e7ed41da24a9573acfba9bd122efc9fae.mp3', 1671, '2026-09-14 09:41:39.094320', '5aef13913690e8e2ac5b53a271d082ebf05ce4bbf6fcf791d8c36bcf1f120ec1', 'validated', '{"audio_key":"c8f2a9dcf09ac4076adee07ddd519b9e7ed41da24a9573acfba9bd122efc9fae","entity_key":"d_getting_around_02:2","voice_id":"fBpCO0Kf0krKLYGOu65w","voice_name":"Émilie - Customer service advisor","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"5aef13913690e8e2ac5b53a271d082ebf05ce4bbf6fcf791d8c36bcf1f120ec1","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/c8f2a9dcf09ac4076adee07ddd519b9e7ed41da24a9573acfba9bd122efc9fae.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_home_and_location_02:3 -> audio/generated/fr-FR/dialogues/cbc6ef5e85e8c8793f2bcc7dbe3e461b4477015ca81c4ec8e183210ca040693d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('50f4728c-bf5f-573a-86d8-6788f7a38d31', 1)
  AND voice_key = 'character:claire:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_home_and_location_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a89ca2a88da9c09340bd0e4b28a2516327c06526aaf8883511c060fd523029d4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eb0d8548-8582-50fc-8cde-5a01d91d5379', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('50f4728c-bf5f-573a-86d8-6788f7a38d31', 1), 'a89ca2a88da9c09340bd0e4b28a2516327c06526aaf8883511c060fd523029d4',
  'character:claire:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/cbc6ef5e85e8c8793f2bcc7dbe3e461b4477015ca81c4ec8e183210ca040693d.mp3', 1201, '2026-09-14 09:41:40.107650', '47a2ff21065d3b54827096524f38733ba5b0eee4241ef1b1846ed7dcbe4600de', 'validated', '{"audio_key":"cbc6ef5e85e8c8793f2bcc7dbe3e461b4477015ca81c4ec8e183210ca040693d","entity_key":"d_home_and_location_02:3","voice_id":"yatuMX0k4Dh41R64sbGj","voice_name":"Cécile - Interactive Customer Support","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"47a2ff21065d3b54827096524f38733ba5b0eee4241ef1b1846ed7dcbe4600de","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/cbc6ef5e85e8c8793f2bcc7dbe3e461b4477015ca81c4ec8e183210ca040693d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_daily_actions_02:1 -> audio/generated/fr-FR/dialogues/d368a62ff19c25fc7f427b57cbef2ecc32fb3209885ab5bd5d00bc86d29b1a1f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('088bb6d7-fb4d-5eb2-b18c-dbd969efa938', 1)
  AND voice_key = 'character:camille:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_daily_actions_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b1d8b449a49b64b1afdd4eeaf7197a409e269bf9da5e5dac92d4a6ebfa5d9e13'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('988528c0-4e86-57a2-a311-84eb30ea6528', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('088bb6d7-fb4d-5eb2-b18c-dbd969efa938', 1), 'b1d8b449a49b64b1afdd4eeaf7197a409e269bf9da5e5dac92d4a6ebfa5d9e13',
  'character:camille:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/d368a62ff19c25fc7f427b57cbef2ecc32fb3209885ab5bd5d00bc86d29b1a1f.mp3', 1332, '2026-09-14 09:41:40.152278', '6f17ecf41d5089de3f9ce148b5b0da811c160839b79d1e4d8ca70fb47bc50158', 'validated', '{"audio_key":"d368a62ff19c25fc7f427b57cbef2ecc32fb3209885ab5bd5d00bc86d29b1a1f","entity_key":"d_daily_actions_02:1","voice_id":"lvQdCgwZfBuOzxyV5pxu","voice_name":"Audia - Customer Support","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6f17ecf41d5089de3f9ce148b5b0da811c160839b79d1e4d8ca70fb47bc50158","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/d368a62ff19c25fc7f427b57cbef2ecc32fb3209885ab5bd5d00bc86d29b1a1f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_identity_and_origin_02:3 -> audio/generated/fr-FR/dialogues/d4a1f0ccdf009a3eb743aa6e20e8a7332529543a006a501904cd6d2ea0d69103.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b101f585-eac1-56eb-85fb-65309e2272f6', 1)
  AND voice_key = 'character:nicolas:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_identity_and_origin_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '90e4ef6ea9a26fba183ebc932941ef312250c8da40e83e11fac698a7e9793769'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('07994dab-716f-5b2b-8e76-4164ce82ac26', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b101f585-eac1-56eb-85fb-65309e2272f6', 1), '90e4ef6ea9a26fba183ebc932941ef312250c8da40e83e11fac698a7e9793769',
  'character:nicolas:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/d4a1f0ccdf009a3eb743aa6e20e8a7332529543a006a501904cd6d2ea0d69103.mp3', 1201, '2026-09-14 09:41:41.341977', '072ae25c8e40e35df82ae8841deb807a698f3f09a405682e84a158a06cfa34b1', 'validated', '{"audio_key":"d4a1f0ccdf009a3eb743aa6e20e8a7332529543a006a501904cd6d2ea0d69103","entity_key":"d_identity_and_origin_02:3","voice_id":"7Pm7442WzqlfkW9vjmO9","voice_name":"Maxime - Dynamic and Natural","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"072ae25c8e40e35df82ae8841deb807a698f3f09a405682e84a158a06cfa34b1","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/d4a1f0ccdf009a3eb743aa6e20e8a7332529543a006a501904cd6d2ea0d69103.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_time_and_schedule_02:3 -> audio/generated/fr-FR/dialogues/d6943feebeaf91be67a09ad3d8a5bc61a26c1ef8e22aa2dec4c1dbf71a8d5f84.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('eecb984e-782f-5570-ba1b-6b515ada012e', 1)
  AND voice_key = 'character:julien:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_time_and_schedule_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a1f475d945113340eefe33d6f7a4b0479c197d65c0f7434adf890ae64c2ab019'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('75180264-17a4-5398-a13c-50130729492d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('eecb984e-782f-5570-ba1b-6b515ada012e', 1), 'a1f475d945113340eefe33d6f7a4b0479c197d65c0f7434adf890ae64c2ab019',
  'character:julien:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/d6943feebeaf91be67a09ad3d8a5bc61a26c1ef8e22aa2dec4c1dbf71a8d5f84.mp3', 1332, '2026-09-14 09:41:41.458895', '1ae7d3ba39f7ece311705fbbe8588941161b7c56044f6f79136a4a8ad826ad6f', 'validated', '{"audio_key":"d6943feebeaf91be67a09ad3d8a5bc61a26c1ef8e22aa2dec4c1dbf71a8d5f84","entity_key":"d_time_and_schedule_02:3","voice_id":"xO2Q4ARMEd4BI2sGDH9c","voice_name":"Edouard - Confident and Polished","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"1ae7d3ba39f7ece311705fbbe8588941161b7c56044f6f79136a4a8ad826ad6f","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/d6943feebeaf91be67a09ad3d8a5bc61a26c1ef8e22aa2dec4c1dbf71a8d5f84.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_family_and_people_02:2 -> audio/generated/fr-FR/dialogues/d88a8d8632fa44348ceb22c27541ec748771c5df1fd88acae5aa2dee4f723cfa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7ec196d3-fa1b-562c-a203-c5fe7218f0bd', 1)
  AND voice_key = 'character:nicolas:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_family_and_people_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b3a37968bd9e68f7b02a9f53ad3a8c9c9a7a1e53bed83e93a7488939e91ecdee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('79283dc5-01af-5f87-b35e-b5df1fe99627', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7ec196d3-fa1b-562c-a203-c5fe7218f0bd', 1), 'b3a37968bd9e68f7b02a9f53ad3a8c9c9a7a1e53bed83e93a7488939e91ecdee',
  'character:nicolas:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/d88a8d8632fa44348ceb22c27541ec748771c5df1fd88acae5aa2dee4f723cfa.mp3', 1515, '2026-09-14 09:41:42.426131', 'cbf75f513903ac678dae0405a660d076d79f116bd4caa5b9e1b333b62db167aa', 'validated', '{"audio_key":"d88a8d8632fa44348ceb22c27541ec748771c5df1fd88acae5aa2dee4f723cfa","entity_key":"d_family_and_people_02:2","voice_id":"7Pm7442WzqlfkW9vjmO9","voice_name":"Maxime - Dynamic and Natural","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"cbf75f513903ac678dae0405a660d076d79f116bd4caa5b9e1b333b62db167aa","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/d88a8d8632fa44348ceb22c27541ec748771c5df1fd88acae5aa2dee4f723cfa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_articles_and_objects_02:4 -> audio/generated/fr-FR/dialogues/d96b080e6a576bca4ef18fd0d503b809b03c49ef361b8b5fd69c8cfdddc5105f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('02fa3265-7a4d-5171-a326-0b7aa374724a', 1)
  AND voice_key = 'character:julien:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_articles_and_objects_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6bc927b6b68388b4f6ca7a43c39e961824af43d359557ae4ae2448d800ae00ee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('28faedc8-3631-5048-a1ce-d26a0369244c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('02fa3265-7a4d-5171-a326-0b7aa374724a', 1), '6bc927b6b68388b4f6ca7a43c39e961824af43d359557ae4ae2448d800ae00ee',
  'character:julien:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/d96b080e6a576bca4ef18fd0d503b809b03c49ef361b8b5fd69c8cfdddc5105f.mp3', 1071, '2026-09-14 09:41:42.515736', 'c68b7ef501e2f81c1b4d0ddea7daf07755e4119a76f1240a943eb197b67324ce', 'validated', '{"audio_key":"d96b080e6a576bca4ef18fd0d503b809b03c49ef361b8b5fd69c8cfdddc5105f","entity_key":"d_articles_and_objects_02:4","voice_id":"xO2Q4ARMEd4BI2sGDH9c","voice_name":"Edouard - Confident and Polished","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"c68b7ef501e2f81c1b4d0ddea7daf07755e4119a76f1240a943eb197b67324ce","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/d96b080e6a576bca4ef18fd0d503b809b03c49ef361b8b5fd69c8cfdddc5105f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_identity_and_origin_01:4 -> audio/generated/fr-FR/dialogues/db63f42677bb0b4049088213ff8850d467b50dc4e13e18ce8f1254a2b032b9b6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('35469a91-df32-5ef1-936a-4c61e7b670dc', 1)
  AND voice_key = 'character:thomas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_identity_and_origin_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2e7618e282ad10e2e441ae2de98570503896cd4877a29a20605d71b9c0b7ba98'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2731f93b-d3ba-5d0f-8a06-718a4c12bf5b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('35469a91-df32-5ef1-936a-4c61e7b670dc', 1), '2e7618e282ad10e2e441ae2de98570503896cd4877a29a20605d71b9c0b7ba98',
  'character:thomas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/db63f42677bb0b4049088213ff8850d467b50dc4e13e18ce8f1254a2b032b9b6.mp3', 966, '2026-09-14 09:41:43.458856', '818de26f7b5b2ba372f998a74863df19cbb5cf3129993c23c90ec496f7317cf2', 'validated', '{"audio_key":"db63f42677bb0b4049088213ff8850d467b50dc4e13e18ce8f1254a2b032b9b6","entity_key":"d_identity_and_origin_01:4","voice_id":"1WQXvbtj0rUYuB5yhY3N","voice_name":"Skel - Calm and Professional","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"818de26f7b5b2ba372f998a74863df19cbb5cf3129993c23c90ec496f7317cf2","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/db63f42677bb0b4049088213ff8850d467b50dc4e13e18ce8f1254a2b032b9b6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_family_and_people_01:4 -> audio/generated/fr-FR/dialogues/e0b529123122ca9d8a670b79952c0a92677ae08bd1a0f679b6b93af2b6235d44.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('591eab00-f42b-5659-b1f0-0349ad44fdde', 1)
  AND voice_key = 'character:thomas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_family_and_people_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '727a8c1ea65696e3c43f1cbb8a81955047b994f0c2e25723de151d4d927291cb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('77b71e0a-ea71-5f1d-9720-412e8551db12', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('591eab00-f42b-5659-b1f0-0349ad44fdde', 1), '727a8c1ea65696e3c43f1cbb8a81955047b994f0c2e25723de151d4d927291cb',
  'character:thomas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/e0b529123122ca9d8a670b79952c0a92677ae08bd1a0f679b6b93af2b6235d44.mp3', 1097, '2026-09-14 09:41:43.558073', '4aed5bfc749e5900b70411c715f60735c6af0fe34fb03e64f7da0915a11447d4', 'validated', '{"audio_key":"e0b529123122ca9d8a670b79952c0a92677ae08bd1a0f679b6b93af2b6235d44","entity_key":"d_family_and_people_01:4","voice_id":"1WQXvbtj0rUYuB5yhY3N","voice_name":"Skel - Calm and Professional","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4aed5bfc749e5900b70411c715f60735c6af0fe34fb03e64f7da0915a11447d4","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/e0b529123122ca9d8a670b79952c0a92677ae08bd1a0f679b6b93af2b6235d44.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_home_and_location_01:4 -> audio/generated/fr-FR/dialogues/e2227c64455154dbec01d421a8c49af15920943ea8af2468e721866d72f1cbc9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5a995079-906c-5780-970e-6ee3daeeb9d6', 1)
  AND voice_key = 'character:inès:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_home_and_location_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6ecafc1b04506c9cb1a7be9368f2818b3bafda54906ba7466fa375acb6dd78b9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2905aa76-4516-5670-8c07-7574b520abf3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5a995079-906c-5780-970e-6ee3daeeb9d6', 1), '6ecafc1b04506c9cb1a7be9368f2818b3bafda54906ba7466fa375acb6dd78b9',
  'character:inès:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/e2227c64455154dbec01d421a8c49af15920943ea8af2468e721866d72f1cbc9.mp3', 1280, '2026-09-14 09:41:44.543824', '78c20859d60990c5f9201d09c281a7fe8c368482bdd48842407e19a7c7e16c05', 'validated', '{"audio_key":"e2227c64455154dbec01d421a8c49af15920943ea8af2468e721866d72f1cbc9","entity_key":"d_home_and_location_01:4","voice_id":"mNu8EQcIlFZdOJs7yfhe","voice_name":"Julia - Warm French Narrator","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"78c20859d60990c5f9201d09c281a7fe8c368482bdd48842407e19a7c7e16c05","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/e2227c64455154dbec01d421a8c49af15920943ea8af2468e721866d72f1cbc9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_daily_actions_01:1 -> audio/generated/fr-FR/dialogues/e44b78ebd307736317543d0f3de08d7914419bfafd815bca0287696aa77b721f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2cfa6e9a-8062-5f64-a3a4-90f98b5f2f4e', 1)
  AND voice_key = 'character:nicolas:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_daily_actions_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '65091efb1ec2660b1757dc844e0040efb214318bb923b29f7710437dabd0b908'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c1db8919-c2a9-52d4-9ae7-b85e8d198e73', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2cfa6e9a-8062-5f64-a3a4-90f98b5f2f4e', 1), '65091efb1ec2660b1757dc844e0040efb214318bb923b29f7710437dabd0b908',
  'character:nicolas:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/e44b78ebd307736317543d0f3de08d7914419bfafd815bca0287696aa77b721f.mp3', 1384, '2026-09-14 09:41:44.669715', '0e5e3c5df1cda5bbc301a4e7d7d4b3efca3aceef8a9ca7a698eaed84a383bdea', 'validated', '{"audio_key":"e44b78ebd307736317543d0f3de08d7914419bfafd815bca0287696aa77b721f","entity_key":"d_daily_actions_01:1","voice_id":"7Pm7442WzqlfkW9vjmO9","voice_name":"Maxime - Dynamic and Natural","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0e5e3c5df1cda5bbc301a4e7d7d4b3efca3aceef8a9ca7a698eaed84a383bdea","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/e44b78ebd307736317543d0f3de08d7914419bfafd815bca0287696aa77b721f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cafe_basics_02:4 -> audio/generated/fr-FR/dialogues/e91f413e71d22e74cfdaee186ccb43aa4f680d91d6b959c72a552f9f5e27eaa4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('71dc2683-c300-5f31-a754-d189581823cf', 1)
  AND voice_key = 'character:nicolas:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cafe_basics_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '53d691272ba9207f89b8c53f6eeb4e1d46100f2b1ac939c26d6e14b83938cc26'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('de479fac-d24a-5ddf-9b2c-b8303a3c7961', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('71dc2683-c300-5f31-a754-d189581823cf', 1), '53d691272ba9207f89b8c53f6eeb4e1d46100f2b1ac939c26d6e14b83938cc26',
  'character:nicolas:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/e91f413e71d22e74cfdaee186ccb43aa4f680d91d6b959c72a552f9f5e27eaa4.mp3', 679, '2026-09-14 09:41:45.494844', '47ff25846e8dda913bffb7597dade26f1bb7541576c804523d090df10d4740d1', 'validated', '{"audio_key":"e91f413e71d22e74cfdaee186ccb43aa4f680d91d6b959c72a552f9f5e27eaa4","entity_key":"d_cafe_basics_02:4","voice_id":"7Pm7442WzqlfkW9vjmO9","voice_name":"Maxime - Dynamic and Natural","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"47ff25846e8dda913bffb7597dade26f1bb7541576c804523d090df10d4740d1","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/e91f413e71d22e74cfdaee186ccb43aa4f680d91d6b959c72a552f9f5e27eaa4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_daily_actions_02:2 -> audio/generated/fr-FR/dialogues/ecb38972740fa1402fd87fc9a13122ca293e1c424d8e876f0395475ebcf7ff21.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3c124561-29d1-5454-8eef-8b128759d5b6', 1)
  AND voice_key = 'character:thomas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_daily_actions_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4604fae992330073ad5a4fafe3db16352f49ea818282e0af7a9533e1cf92c28d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9e48570e-346d-588a-a191-4dbc33d85d06', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3c124561-29d1-5454-8eef-8b128759d5b6', 1), '4604fae992330073ad5a4fafe3db16352f49ea818282e0af7a9533e1cf92c28d',
  'character:thomas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/ecb38972740fa1402fd87fc9a13122ca293e1c424d8e876f0395475ebcf7ff21.mp3', 1149, '2026-09-14 09:41:45.701784', 'b5dcd263b1727fe0ef235b64d66fea81f30849e5ad11904f3cf6e21f73094b93', 'validated', '{"audio_key":"ecb38972740fa1402fd87fc9a13122ca293e1c424d8e876f0395475ebcf7ff21","entity_key":"d_daily_actions_02:2","voice_id":"1WQXvbtj0rUYuB5yhY3N","voice_name":"Skel - Calm and Professional","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b5dcd263b1727fe0ef235b64d66fea81f30849e5ad11904f3cf6e21f73094b93","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/ecb38972740fa1402fd87fc9a13122ca293e1c424d8e876f0395475ebcf7ff21.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_shopping_and_prices_02:3 -> audio/generated/fr-FR/dialogues/ef29da2fb418917f7e581c13e3b1276c4cda54ece3b04d91383e3f38894343d7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('94a31292-56a6-5db6-8ced-fcc766015682', 1)
  AND voice_key = 'character:claire:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_shopping_and_prices_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9cd9657571e68e362f244781bade2d0f91991655726d7e1231d8ca28cd1376de'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5044dba6-9930-58c8-a339-5dca97070fd2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('94a31292-56a6-5db6-8ced-fcc766015682', 1), '9cd9657571e68e362f244781bade2d0f91991655726d7e1231d8ca28cd1376de',
  'character:claire:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/ef29da2fb418917f7e581c13e3b1276c4cda54ece3b04d91383e3f38894343d7.mp3', 1671, '2026-09-14 09:41:46.630577', '32cdb8bfbef9b9829d5de8147b8587d1f8dcef434bd393a6eb42a3f6b98a0d6f', 'validated', '{"audio_key":"ef29da2fb418917f7e581c13e3b1276c4cda54ece3b04d91383e3f38894343d7","entity_key":"d_shopping_and_prices_02:3","voice_id":"yatuMX0k4Dh41R64sbGj","voice_name":"Cécile - Interactive Customer Support","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"32cdb8bfbef9b9829d5de8147b8587d1f8dcef434bd393a6eb42a3f6b98a0d6f","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/ef29da2fb418917f7e581c13e3b1276c4cda54ece3b04d91383e3f38894343d7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_time_and_schedule_02:2 -> audio/generated/fr-FR/dialogues/ef871e5de8313ee8cbf607e62db8da0689859bfb1feded275af3dd768ba7ebf4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('17f76b72-348e-5f03-918c-df3e1e9014bf', 1)
  AND voice_key = 'character:claire:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_time_and_schedule_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c2ae96f14313ad399a7f9f683c2cd678e2184121da6134f6baf9271c9154b1ad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fbd40d48-56d3-558f-8ded-9eb074a936c7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('17f76b72-348e-5f03-918c-df3e1e9014bf', 1), 'c2ae96f14313ad399a7f9f683c2cd678e2184121da6134f6baf9271c9154b1ad',
  'character:claire:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/ef871e5de8313ee8cbf607e62db8da0689859bfb1feded275af3dd768ba7ebf4.mp3', 1802, '2026-09-14 09:41:46.807814', '568ce32b9364e9a1c405b2e0a65909658beaad51b81be3fee311c218f831c2a6', 'validated', '{"audio_key":"ef871e5de8313ee8cbf607e62db8da0689859bfb1feded275af3dd768ba7ebf4","entity_key":"d_time_and_schedule_02:2","voice_id":"yatuMX0k4Dh41R64sbGj","voice_name":"Cécile - Interactive Customer Support","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"568ce32b9364e9a1c405b2e0a65909658beaad51b81be3fee311c218f831c2a6","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/ef871e5de8313ee8cbf607e62db8da0689859bfb1feded275af3dd768ba7ebf4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_family_and_people_01:2 -> audio/generated/fr-FR/dialogues/f067900f3e61dfafbb58112a3ef575b369b4e19549ebe72c53b6c59745c45e06.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ecf134c8-0ef1-5ee2-b8cc-b63d0b23cab4', 1)
  AND voice_key = 'character:thomas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_family_and_people_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a7eebd86ed6bea2a6e1fd8ba96224b1053963429faec716ba94765736923faaa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('038038e8-8ace-5f71-b88b-8233db0bf2c1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ecf134c8-0ef1-5ee2-b8cc-b63d0b23cab4', 1), 'a7eebd86ed6bea2a6e1fd8ba96224b1053963429faec716ba94765736923faaa',
  'character:thomas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/f067900f3e61dfafbb58112a3ef575b369b4e19549ebe72c53b6c59745c45e06.mp3', 1149, '2026-09-14 09:41:47.670479', '4e37e88432e5109ed44dc06e0d43cb21c8c4fb93bbcd1c8a667241e08c6d5912', 'validated', '{"audio_key":"f067900f3e61dfafbb58112a3ef575b369b4e19549ebe72c53b6c59745c45e06","entity_key":"d_family_and_people_01:2","voice_id":"1WQXvbtj0rUYuB5yhY3N","voice_name":"Skel - Calm and Professional","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4e37e88432e5109ed44dc06e0d43cb21c8c4fb93bbcd1c8a667241e08c6d5912","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/f067900f3e61dfafbb58112a3ef575b369b4e19549ebe72c53b6c59745c45e06.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_home_and_location_02:1 -> audio/generated/fr-FR/dialogues/f4e349afef587480667dd34727df99170eb38a457139bef60881cf5df728733d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4644e06f-1ce0-5ca0-8398-9d66deb269b7', 1)
  AND voice_key = 'character:claire:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_home_and_location_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '80a73dd1c4ceaf7443aafc2277b77f2f70a0069b49c36d9b5465faa160eef1f2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cf4b724d-57be-5ed3-af87-ee55344d9602', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4644e06f-1ce0-5ca0-8398-9d66deb269b7', 1), '80a73dd1c4ceaf7443aafc2277b77f2f70a0069b49c36d9b5465faa160eef1f2',
  'character:claire:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/f4e349afef587480667dd34727df99170eb38a457139bef60881cf5df728733d.mp3', 2507, '2026-09-14 09:41:47.998815', 'f1787b45b428b741288249522d5824f7be6383feef8ae759b49c42e735446bbc', 'validated', '{"audio_key":"f4e349afef587480667dd34727df99170eb38a457139bef60881cf5df728733d","entity_key":"d_home_and_location_02:1","voice_id":"yatuMX0k4Dh41R64sbGj","voice_name":"Cécile - Interactive Customer Support","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"f1787b45b428b741288249522d5824f7be6383feef8ae759b49c42e735446bbc","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/f4e349afef587480667dd34727df99170eb38a457139bef60881cf5df728733d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_articles_and_objects_01:1 -> audio/generated/fr-FR/dialogues/f8992654e90b18f5f35631d25013ff93b5f587ff4bdd7c1139ebef3d396e2e81.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('77a53c3d-045b-5f27-b9d7-6326f95f6d5a', 1)
  AND voice_key = 'character:inès:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_articles_and_objects_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6ee1d30cbd2d3a0da61683c5914379eb261e48a108c3098d4506ef7d4fe305b7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('49db1105-1b5a-5110-886c-51344ed74c93', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('77a53c3d-045b-5f27-b9d7-6326f95f6d5a', 1), '6ee1d30cbd2d3a0da61683c5914379eb261e48a108c3098d4506ef7d4fe305b7',
  'character:inès:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/f8992654e90b18f5f35631d25013ff93b5f587ff4bdd7c1139ebef3d396e2e81.mp3', 966, '2026-09-14 09:41:48.661161', 'fabcccf1cd075f90008d972906b3a3b67a763c27a595b6ed90aecb26b91694c5', 'validated', '{"audio_key":"f8992654e90b18f5f35631d25013ff93b5f587ff4bdd7c1139ebef3d396e2e81","entity_key":"d_articles_and_objects_01:1","voice_id":"mNu8EQcIlFZdOJs7yfhe","voice_name":"Julia - Warm French Narrator","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fabcccf1cd075f90008d972906b3a3b67a763c27a595b6ed90aecb26b91694c5","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/f8992654e90b18f5f35631d25013ff93b5f587ff4bdd7c1139ebef3d396e2e81.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_shopping_and_prices_02:2 -> audio/generated/fr-FR/dialogues/f8f8dedac25a9056d4ed1565d3b3a9a2110f43120cdf922b30ea977df647a5f2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e62e75ca-b8cd-5bb8-a71b-ca84eb44718d', 1)
  AND voice_key = 'character:julien:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_shopping_and_prices_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '90833ef7c6eb84d45d4647b19160aa4b8a6d5f0052f94e4d3e6f4cabb9c6c31d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8df37fb2-bbc1-5664-8c49-ff2fbbc72197', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e62e75ca-b8cd-5bb8-a71b-ca84eb44718d', 1), '90833ef7c6eb84d45d4647b19160aa4b8a6d5f0052f94e4d3e6f4cabb9c6c31d',
  'character:julien:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/f8f8dedac25a9056d4ed1565d3b3a9a2110f43120cdf922b30ea977df647a5f2.mp3', 1332, '2026-09-14 09:41:49.069962', '534514bf1d0a55894d9a22a9879f8ca05362129173b57391b71d1944dfcfbfea', 'validated', '{"audio_key":"f8f8dedac25a9056d4ed1565d3b3a9a2110f43120cdf922b30ea977df647a5f2","entity_key":"d_shopping_and_prices_02:2","voice_id":"xO2Q4ARMEd4BI2sGDH9c","voice_name":"Edouard - Confident and Polished","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"534514bf1d0a55894d9a22a9879f8ca05362129173b57391b71d1944dfcfbfea","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/f8f8dedac25a9056d4ed1565d3b3a9a2110f43120cdf922b30ea977df647a5f2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_articles_and_objects_02:2 -> audio/generated/fr-FR/dialogues/f9223cca909e0120b5422d86d5dc1a4d07008f7705a35fe5df2042dbe6870eff.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('12ae7726-96b0-5864-90f4-6c7316170e5a', 1)
  AND voice_key = 'character:julien:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_articles_and_objects_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '35c78acc35a838c2d010bc563cf08655ce428ded8c9f17f3d5340a2746aa929a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5dc80029-7d2f-5b74-a7c5-a7523a650018', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('12ae7726-96b0-5864-90f4-6c7316170e5a', 1), '35c78acc35a838c2d010bc563cf08655ce428ded8c9f17f3d5340a2746aa929a',
  'character:julien:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/f9223cca909e0120b5422d86d5dc1a4d07008f7705a35fe5df2042dbe6870eff.mp3', 1280, '2026-09-14 09:41:49.751979', '9290e4a76ea341ab7dafa1c0608570bbbad54e8a68b47d5fd34161e25bd6c42a', 'validated', '{"audio_key":"f9223cca909e0120b5422d86d5dc1a4d07008f7705a35fe5df2042dbe6870eff","entity_key":"d_articles_and_objects_02:2","voice_id":"xO2Q4ARMEd4BI2sGDH9c","voice_name":"Edouard - Confident and Polished","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"9290e4a76ea341ab7dafa1c0608570bbbad54e8a68b47d5fd34161e25bd6c42a","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/f9223cca909e0120b5422d86d5dc1a4d07008f7705a35fe5df2042dbe6870eff.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_getting_around_01:3 -> audio/generated/fr-FR/dialogues/fc94973a9ec48b4cef769c5b19b17e122e8052b86e4ae3d23b38d0b69df6bb5c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('80f58f38-9dbd-541b-b11c-48c5d32c5369', 1)
  AND voice_key = 'character:camille:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_getting_around_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9be6364150be0be6bcfb2b414e398118fb43dbf31461b74bfbfb431586fe01e9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4598abd5-70db-5f9d-a02d-e557715e4dba', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('80f58f38-9dbd-541b-b11c-48c5d32c5369', 1), '9be6364150be0be6bcfb2b414e398118fb43dbf31461b74bfbfb431586fe01e9',
  'character:camille:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/fc94973a9ec48b4cef769c5b19b17e122e8052b86e4ae3d23b38d0b69df6bb5c.mp3', 835, '2026-09-14 09:41:50.121659', '3d745c73253e24d447c4413e0d16f8418c6e709db325602b2f8ada5a11e323cf', 'validated', '{"audio_key":"fc94973a9ec48b4cef769c5b19b17e122e8052b86e4ae3d23b38d0b69df6bb5c","entity_key":"d_getting_around_01:3","voice_id":"lvQdCgwZfBuOzxyV5pxu","voice_name":"Audia - Customer Support","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3d745c73253e24d447c4413e0d16f8418c6e709db325602b2f8ada5a11e323cf","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/fc94973a9ec48b4cef769c5b19b17e122e8052b86e4ae3d23b38d0b69df6bb5c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_shopping_and_prices_06 -> audio/generated/fr-FR/lexical/03ee88101ed22717ee1a52216ecbc07a32dd124d57a09a16e2b108a549b785e1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7d3ca5fc-b701-535b-af67-7f56707bcd61', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_shopping_and_prices_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dbb41591cc01417efd7ad3c88dc18480a390b38ffbe303529421f6faedf41369'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0a53214e-f31a-5958-b6e7-dbf4d63adaf2', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7d3ca5fc-b701-535b-af67-7f56707bcd61', 1), 'dbb41591cc01417efd7ad3c88dc18480a390b38ffbe303529421f6faedf41369',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/03ee88101ed22717ee1a52216ecbc07a32dd124d57a09a16e2b108a549b785e1.mp3', 1018, '2026-09-14 09:41:50.826249', '550f8d494c358fc03b8db05f4bb84904db6f2364601ba8b73db5cd4d3f9fb77f', 'validated', '{"audio_key":"03ee88101ed22717ee1a52216ecbc07a32dd124d57a09a16e2b108a549b785e1","entity_key":"lx_shopping_and_prices_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"550f8d494c358fc03b8db05f4bb84904db6f2364601ba8b73db5cd4d3f9fb77f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/03ee88101ed22717ee1a52216ecbc07a32dd124d57a09a16e2b108a549b785e1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_shopping_and_prices_06 -> audio/generated/fr-FR/lexical/03ee88101ed22717ee1a52216ecbc07a32dd124d57a09a16e2b108a549b785e1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d1a53391-2f0f-5246-9a39-aee51d4af268', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_shopping_and_prices_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dbb41591cc01417efd7ad3c88dc18480a390b38ffbe303529421f6faedf41369'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dc028560-4f3f-5576-8551-573b1b9c0cad', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d1a53391-2f0f-5246-9a39-aee51d4af268', 1), 'dbb41591cc01417efd7ad3c88dc18480a390b38ffbe303529421f6faedf41369',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/03ee88101ed22717ee1a52216ecbc07a32dd124d57a09a16e2b108a549b785e1.mp3', 1018, '2026-09-14 09:41:50.826249', '550f8d494c358fc03b8db05f4bb84904db6f2364601ba8b73db5cd4d3f9fb77f', 'validated', '{"audio_key":"03ee88101ed22717ee1a52216ecbc07a32dd124d57a09a16e2b108a549b785e1","entity_key":"wf_shopping_and_prices_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"550f8d494c358fc03b8db05f4bb84904db6f2364601ba8b73db5cd4d3f9fb77f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/03ee88101ed22717ee1a52216ecbc07a32dd124d57a09a16e2b108a549b785e1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_articles_and_objects_02 -> audio/generated/fr-FR/lexical/0676cff75a8f02334919eb7748ba0abc41f6f5387db36d78b07a56c47bb857ad.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('68404b9a-0251-5f11-9006-611eef7efa2d', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_articles_and_objects_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '51cbcf30514d0802eb5c60a018f384ea3fb9b69307c554ee63ecb43177594de4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e7768c39-92bf-5ec9-b85f-06cdc2199ad2', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('68404b9a-0251-5f11-9006-611eef7efa2d', 1), '51cbcf30514d0802eb5c60a018f384ea3fb9b69307c554ee63ecb43177594de4',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/0676cff75a8f02334919eb7748ba0abc41f6f5387db36d78b07a56c47bb857ad.mp3', 783, '2026-09-14 09:41:51.144987', '1429f1ed10b803a5713dc3ec205c588692c9878bf0f20385a0de43642e33da78', 'validated', '{"audio_key":"0676cff75a8f02334919eb7748ba0abc41f6f5387db36d78b07a56c47bb857ad","entity_key":"lx_articles_and_objects_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1429f1ed10b803a5713dc3ec205c588692c9878bf0f20385a0de43642e33da78","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/0676cff75a8f02334919eb7748ba0abc41f6f5387db36d78b07a56c47bb857ad.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_articles_and_objects_02 -> audio/generated/fr-FR/lexical/0676cff75a8f02334919eb7748ba0abc41f6f5387db36d78b07a56c47bb857ad.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('17ad7ba7-aaa1-5cf1-a91e-03ecb2a9cd53', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_articles_and_objects_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '51cbcf30514d0802eb5c60a018f384ea3fb9b69307c554ee63ecb43177594de4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('10807015-13b2-54e5-9a63-f671e2abba91', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('17ad7ba7-aaa1-5cf1-a91e-03ecb2a9cd53', 1), '51cbcf30514d0802eb5c60a018f384ea3fb9b69307c554ee63ecb43177594de4',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/0676cff75a8f02334919eb7748ba0abc41f6f5387db36d78b07a56c47bb857ad.mp3', 783, '2026-09-14 09:41:51.144987', '1429f1ed10b803a5713dc3ec205c588692c9878bf0f20385a0de43642e33da78', 'validated', '{"audio_key":"0676cff75a8f02334919eb7748ba0abc41f6f5387db36d78b07a56c47bb857ad","entity_key":"wf_articles_and_objects_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1429f1ed10b803a5713dc3ec205c588692c9878bf0f20385a0de43642e33da78","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/0676cff75a8f02334919eb7748ba0abc41f6f5387db36d78b07a56c47bb857ad.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_articles_and_objects_05 -> audio/generated/fr-FR/lexical/0973448ed777e434c06a03b0b214b890703a929e259c614f24ad99c60bfd1b15.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('99295328-d31b-5e05-a226-bf7d068b14b3', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_articles_and_objects_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '52597892af72166c5a1b5a1ef53f51beb6de370dab847be9026fb145caf1c213'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c3866a39-fc0a-589b-9e2c-1fe9e3c82558', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('99295328-d31b-5e05-a226-bf7d068b14b3', 1), '52597892af72166c5a1b5a1ef53f51beb6de370dab847be9026fb145caf1c213',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/0973448ed777e434c06a03b0b214b890703a929e259c614f24ad99c60bfd1b15.mp3', 783, '2026-09-14 09:41:51.858687', '54a3995d3c968890240a054fbbbb936a2e29baabd30c94ed43e5ead115fae6fb', 'validated', '{"audio_key":"0973448ed777e434c06a03b0b214b890703a929e259c614f24ad99c60bfd1b15","entity_key":"lx_articles_and_objects_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"54a3995d3c968890240a054fbbbb936a2e29baabd30c94ed43e5ead115fae6fb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/0973448ed777e434c06a03b0b214b890703a929e259c614f24ad99c60bfd1b15.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_articles_and_objects_05 -> audio/generated/fr-FR/lexical/0973448ed777e434c06a03b0b214b890703a929e259c614f24ad99c60bfd1b15.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f80a1f7d-d291-58f1-a92b-8a41eab5f043', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_articles_and_objects_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '52597892af72166c5a1b5a1ef53f51beb6de370dab847be9026fb145caf1c213'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c383c528-f753-5af7-8db6-f33d023c963f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f80a1f7d-d291-58f1-a92b-8a41eab5f043', 1), '52597892af72166c5a1b5a1ef53f51beb6de370dab847be9026fb145caf1c213',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/0973448ed777e434c06a03b0b214b890703a929e259c614f24ad99c60bfd1b15.mp3', 783, '2026-09-14 09:41:51.858687', '54a3995d3c968890240a054fbbbb936a2e29baabd30c94ed43e5ead115fae6fb', 'validated', '{"audio_key":"0973448ed777e434c06a03b0b214b890703a929e259c614f24ad99c60bfd1b15","entity_key":"wf_articles_and_objects_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"54a3995d3c968890240a054fbbbb936a2e29baabd30c94ed43e5ead115fae6fb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/0973448ed777e434c06a03b0b214b890703a929e259c614f24ad99c60bfd1b15.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_home_and_location_01 -> audio/generated/fr-FR/lexical/0a7101c6c65e5c1d6405dbbe61c63a9963144e2dfc91ee7cec545921c50a4c1e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('4f1da6d1-e576-5b92-bff3-f3947dd9ec29', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_home_and_location_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ffd73d6baeb4efb7922347d91daf780335701edb022f86e7363073f714d7e8b0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1acd8679-67c8-5b0f-b3fb-735665d86fb3', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('4f1da6d1-e576-5b92-bff3-f3947dd9ec29', 1), 'ffd73d6baeb4efb7922347d91daf780335701edb022f86e7363073f714d7e8b0',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/0a7101c6c65e5c1d6405dbbe61c63a9963144e2dfc91ee7cec545921c50a4c1e.mp3', 862, '2026-09-14 09:41:52.112154', '3d0f6f7e4b13f7137bee1c66403053b5df780c7aa043a98668628ccd1a6c3174', 'validated', '{"audio_key":"0a7101c6c65e5c1d6405dbbe61c63a9963144e2dfc91ee7cec545921c50a4c1e","entity_key":"lx_home_and_location_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3d0f6f7e4b13f7137bee1c66403053b5df780c7aa043a98668628ccd1a6c3174","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/0a7101c6c65e5c1d6405dbbe61c63a9963144e2dfc91ee7cec545921c50a4c1e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_home_and_location_01 -> audio/generated/fr-FR/lexical/0a7101c6c65e5c1d6405dbbe61c63a9963144e2dfc91ee7cec545921c50a4c1e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('73953e9d-9601-5cd6-9336-b008f17d0d83', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_home_and_location_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ffd73d6baeb4efb7922347d91daf780335701edb022f86e7363073f714d7e8b0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('54f6c58e-2c04-588a-ab4a-367916d4f78d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('73953e9d-9601-5cd6-9336-b008f17d0d83', 1), 'ffd73d6baeb4efb7922347d91daf780335701edb022f86e7363073f714d7e8b0',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/0a7101c6c65e5c1d6405dbbe61c63a9963144e2dfc91ee7cec545921c50a4c1e.mp3', 862, '2026-09-14 09:41:52.112154', '3d0f6f7e4b13f7137bee1c66403053b5df780c7aa043a98668628ccd1a6c3174', 'validated', '{"audio_key":"0a7101c6c65e5c1d6405dbbe61c63a9963144e2dfc91ee7cec545921c50a4c1e","entity_key":"wf_home_and_location_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3d0f6f7e4b13f7137bee1c66403053b5df780c7aa043a98668628ccd1a6c3174","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/0a7101c6c65e5c1d6405dbbe61c63a9963144e2dfc91ee7cec545921c50a4c1e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_cafe_basics_01 -> audio/generated/fr-FR/lexical/0a9414ba08a7087fbf01b0b952b778f716808c99bd56b3d5aca3fd7e91b7ef96.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('4fe82612-8066-5fd4-9eb0-a8558cf90862', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_cafe_basics_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '850f7dc43910ff890f8879c0ed26fe697c93a067ad93a7d50f466a7028a9bf4e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b1449d33-d366-58b0-9bac-5e26fdeae913', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('4fe82612-8066-5fd4-9eb0-a8558cf90862', 1), '850f7dc43910ff890f8879c0ed26fe697c93a067ad93a7d50f466a7028a9bf4e',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/0a9414ba08a7087fbf01b0b952b778f716808c99bd56b3d5aca3fd7e91b7ef96.mp3', 914, '2026-09-14 09:41:52.894544', '0616983c7654ccc29e6574b6b0a7bae6c4791ce8822140f2811f1d448d93090c', 'validated', '{"audio_key":"0a9414ba08a7087fbf01b0b952b778f716808c99bd56b3d5aca3fd7e91b7ef96","entity_key":"lx_cafe_basics_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0616983c7654ccc29e6574b6b0a7bae6c4791ce8822140f2811f1d448d93090c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/0a9414ba08a7087fbf01b0b952b778f716808c99bd56b3d5aca3fd7e91b7ef96.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_cafe_basics_01 -> audio/generated/fr-FR/lexical/0a9414ba08a7087fbf01b0b952b778f716808c99bd56b3d5aca3fd7e91b7ef96.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('95d3dc88-9dc0-5714-a8ef-bbbd6990fd6b', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_cafe_basics_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '850f7dc43910ff890f8879c0ed26fe697c93a067ad93a7d50f466a7028a9bf4e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2202c669-b681-59a5-baca-299289869b62', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('95d3dc88-9dc0-5714-a8ef-bbbd6990fd6b', 1), '850f7dc43910ff890f8879c0ed26fe697c93a067ad93a7d50f466a7028a9bf4e',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/0a9414ba08a7087fbf01b0b952b778f716808c99bd56b3d5aca3fd7e91b7ef96.mp3', 914, '2026-09-14 09:41:52.894544', '0616983c7654ccc29e6574b6b0a7bae6c4791ce8822140f2811f1d448d93090c', 'validated', '{"audio_key":"0a9414ba08a7087fbf01b0b952b778f716808c99bd56b3d5aca3fd7e91b7ef96","entity_key":"wf_cafe_basics_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0616983c7654ccc29e6574b6b0a7bae6c4791ce8822140f2811f1d448d93090c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/0a9414ba08a7087fbf01b0b952b778f716808c99bd56b3d5aca3fd7e91b7ef96.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_time_and_schedule_03 -> audio/generated/fr-FR/lexical/0aa04656057b4894fcb73c459f34a6a65d1c45532bd46bd326f004dcfc371b5d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a25a5595-a0fe-5620-b910-e2f53806a60e', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_time_and_schedule_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8d87f74739c36a01a7800c7c80090b72158250f824c3db7b9a1809f876b64046'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d2e67769-e537-5a9a-bb0c-ff6730dcfa50', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a25a5595-a0fe-5620-b910-e2f53806a60e', 1), '8d87f74739c36a01a7800c7c80090b72158250f824c3db7b9a1809f876b64046',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/0aa04656057b4894fcb73c459f34a6a65d1c45532bd46bd326f004dcfc371b5d.mp3', 835, '2026-09-14 09:41:53.133618', '5bbf4f1c41a47c9b578dcc715a5ca6a1b6ecbeba674d25dea903f7615ef486d4', 'validated', '{"audio_key":"0aa04656057b4894fcb73c459f34a6a65d1c45532bd46bd326f004dcfc371b5d","entity_key":"lx_time_and_schedule_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5bbf4f1c41a47c9b578dcc715a5ca6a1b6ecbeba674d25dea903f7615ef486d4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/0aa04656057b4894fcb73c459f34a6a65d1c45532bd46bd326f004dcfc371b5d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_time_and_schedule_03 -> audio/generated/fr-FR/lexical/0aa04656057b4894fcb73c459f34a6a65d1c45532bd46bd326f004dcfc371b5d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('063463d2-23e3-579e-baed-b53c9493309a', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_time_and_schedule_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8d87f74739c36a01a7800c7c80090b72158250f824c3db7b9a1809f876b64046'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d0dc836d-6c77-5db8-b3cc-66c9498b8d63', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('063463d2-23e3-579e-baed-b53c9493309a', 1), '8d87f74739c36a01a7800c7c80090b72158250f824c3db7b9a1809f876b64046',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/0aa04656057b4894fcb73c459f34a6a65d1c45532bd46bd326f004dcfc371b5d.mp3', 835, '2026-09-14 09:41:53.133618', '5bbf4f1c41a47c9b578dcc715a5ca6a1b6ecbeba674d25dea903f7615ef486d4', 'validated', '{"audio_key":"0aa04656057b4894fcb73c459f34a6a65d1c45532bd46bd326f004dcfc371b5d","entity_key":"wf_time_and_schedule_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5bbf4f1c41a47c9b578dcc715a5ca6a1b6ecbeba674d25dea903f7615ef486d4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/0aa04656057b4894fcb73c459f34a6a65d1c45532bd46bd326f004dcfc371b5d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_shopping_and_prices_02 -> audio/generated/fr-FR/lexical/0e3cc77dc3cc2db3de4ff4b4fbd8c2cffde479a174186a61b37b09a43c8d51de.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d50cfef0-ddff-5d8a-bdbc-d0ec5cbdce45', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_shopping_and_prices_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '45fb665df5ac810ee3c017c61ce50ad5227a2d675309d7683c6ba71b519f6b5b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a0e2a910-bd62-5ba4-be2c-1f26d22462db', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d50cfef0-ddff-5d8a-bdbc-d0ec5cbdce45', 1), '45fb665df5ac810ee3c017c61ce50ad5227a2d675309d7683c6ba71b519f6b5b',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/0e3cc77dc3cc2db3de4ff4b4fbd8c2cffde479a174186a61b37b09a43c8d51de.mp3', 862, '2026-09-14 09:41:53.909225', '11b9de2836037461e039bf062dd6fe3f8c6594270ce586fbd5424642ed1b89a2', 'validated', '{"audio_key":"0e3cc77dc3cc2db3de4ff4b4fbd8c2cffde479a174186a61b37b09a43c8d51de","entity_key":"lx_shopping_and_prices_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"11b9de2836037461e039bf062dd6fe3f8c6594270ce586fbd5424642ed1b89a2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/0e3cc77dc3cc2db3de4ff4b4fbd8c2cffde479a174186a61b37b09a43c8d51de.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_shopping_and_prices_02 -> audio/generated/fr-FR/lexical/0e3cc77dc3cc2db3de4ff4b4fbd8c2cffde479a174186a61b37b09a43c8d51de.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5b1c99d3-a50c-5689-98c9-dcda4fc6a290', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_shopping_and_prices_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '45fb665df5ac810ee3c017c61ce50ad5227a2d675309d7683c6ba71b519f6b5b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1a5836ad-fd54-5615-9d4e-1df5b7239534', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5b1c99d3-a50c-5689-98c9-dcda4fc6a290', 1), '45fb665df5ac810ee3c017c61ce50ad5227a2d675309d7683c6ba71b519f6b5b',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/0e3cc77dc3cc2db3de4ff4b4fbd8c2cffde479a174186a61b37b09a43c8d51de.mp3', 862, '2026-09-14 09:41:53.909225', '11b9de2836037461e039bf062dd6fe3f8c6594270ce586fbd5424642ed1b89a2', 'validated', '{"audio_key":"0e3cc77dc3cc2db3de4ff4b4fbd8c2cffde479a174186a61b37b09a43c8d51de","entity_key":"wf_shopping_and_prices_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"11b9de2836037461e039bf062dd6fe3f8c6594270ce586fbd5424642ed1b89a2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/0e3cc77dc3cc2db3de4ff4b4fbd8c2cffde479a174186a61b37b09a43c8d51de.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_daily_actions_04 -> audio/generated/fr-FR/lexical/129795e4f76c85af82c446356f1b6ee573496556636508f84b1d501816939719.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3371c3da-7220-53cb-b52a-b061a3edfb1d', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_daily_actions_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '293562e3d393ffaa0f22d3cc08d8d82d868da749697c6335d02c8b3b65ad3c69'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1f69db04-0f0a-521c-96be-5a8dca5d991e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3371c3da-7220-53cb-b52a-b061a3edfb1d', 1), '293562e3d393ffaa0f22d3cc08d8d82d868da749697c6335d02c8b3b65ad3c69',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/129795e4f76c85af82c446356f1b6ee573496556636508f84b1d501816939719.mp3', 862, '2026-09-14 09:41:54.193567', 'd675732cf2c793313d30804d497763efdeeb2461a525b70df7f03866be0a16b4', 'validated', '{"audio_key":"129795e4f76c85af82c446356f1b6ee573496556636508f84b1d501816939719","entity_key":"lx_daily_actions_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d675732cf2c793313d30804d497763efdeeb2461a525b70df7f03866be0a16b4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/129795e4f76c85af82c446356f1b6ee573496556636508f84b1d501816939719.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_daily_actions_04 -> audio/generated/fr-FR/lexical/129795e4f76c85af82c446356f1b6ee573496556636508f84b1d501816939719.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('64791613-98a9-589a-98fd-29b2e93782bb', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_daily_actions_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '293562e3d393ffaa0f22d3cc08d8d82d868da749697c6335d02c8b3b65ad3c69'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('68b68630-d07f-53ff-85e1-efd5a27e8b30', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('64791613-98a9-589a-98fd-29b2e93782bb', 1), '293562e3d393ffaa0f22d3cc08d8d82d868da749697c6335d02c8b3b65ad3c69',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/129795e4f76c85af82c446356f1b6ee573496556636508f84b1d501816939719.mp3', 862, '2026-09-14 09:41:54.193567', 'd675732cf2c793313d30804d497763efdeeb2461a525b70df7f03866be0a16b4', 'validated', '{"audio_key":"129795e4f76c85af82c446356f1b6ee573496556636508f84b1d501816939719","entity_key":"wf_daily_actions_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d675732cf2c793313d30804d497763efdeeb2461a525b70df7f03866be0a16b4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/129795e4f76c85af82c446356f1b6ee573496556636508f84b1d501816939719.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_a1_day_capstone_05 -> audio/generated/fr-FR/lexical/15c013258ec3f86cd78ed4908c061ea3dc6265c678681037bb5e228dbdfba62d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('57f37e9f-f864-57c7-8ecc-8769fbe5d9a6', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_a1_day_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '901bf84e75c67b2bee00c8bff9e762a0c1ab65a75933f51ad7963e5fc33dbd40'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ca4c914e-0035-5f54-8281-12a451f31fbd', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('57f37e9f-f864-57c7-8ecc-8769fbe5d9a6', 1), '901bf84e75c67b2bee00c8bff9e762a0c1ab65a75933f51ad7963e5fc33dbd40',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/15c013258ec3f86cd78ed4908c061ea3dc6265c678681037bb5e228dbdfba62d.mp3', 966, '2026-09-14 09:41:54.924909', 'd63ad533d5287d3f8a72ca639ac72dd47d0f80a9fccbf879b1b0f862af2ddd68', 'validated', '{"audio_key":"15c013258ec3f86cd78ed4908c061ea3dc6265c678681037bb5e228dbdfba62d","entity_key":"lx_a1_day_capstone_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d63ad533d5287d3f8a72ca639ac72dd47d0f80a9fccbf879b1b0f862af2ddd68","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/15c013258ec3f86cd78ed4908c061ea3dc6265c678681037bb5e228dbdfba62d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_a1_day_capstone_05 -> audio/generated/fr-FR/lexical/15c013258ec3f86cd78ed4908c061ea3dc6265c678681037bb5e228dbdfba62d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6fb5671b-4c6e-5643-8fdd-76cb257e2168', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_a1_day_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '901bf84e75c67b2bee00c8bff9e762a0c1ab65a75933f51ad7963e5fc33dbd40'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('049128d0-9105-514a-88c6-783204a4bdbd', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6fb5671b-4c6e-5643-8fdd-76cb257e2168', 1), '901bf84e75c67b2bee00c8bff9e762a0c1ab65a75933f51ad7963e5fc33dbd40',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/15c013258ec3f86cd78ed4908c061ea3dc6265c678681037bb5e228dbdfba62d.mp3', 966, '2026-09-14 09:41:54.924909', 'd63ad533d5287d3f8a72ca639ac72dd47d0f80a9fccbf879b1b0f862af2ddd68', 'validated', '{"audio_key":"15c013258ec3f86cd78ed4908c061ea3dc6265c678681037bb5e228dbdfba62d","entity_key":"wf_a1_day_capstone_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d63ad533d5287d3f8a72ca639ac72dd47d0f80a9fccbf879b1b0f862af2ddd68","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/15c013258ec3f86cd78ed4908c061ea3dc6265c678681037bb5e228dbdfba62d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_home_and_location_06 -> audio/generated/fr-FR/lexical/15ca221ce6a525b9cd4a186b247c8341fa3f9c4f381585fb55d8332f2fa67072.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('12c5ae59-eaf9-5322-909d-89096c77c1d1', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_home_and_location_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'af133f1c3385f7f7739dc25349f5b212a7fa046c032bdf52999e91ab15e55ad1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3d92d1b5-7af2-55db-a181-d8da39a27931', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('12c5ae59-eaf9-5322-909d-89096c77c1d1', 1), 'af133f1c3385f7f7739dc25349f5b212a7fa046c032bdf52999e91ab15e55ad1',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/15ca221ce6a525b9cd4a186b247c8341fa3f9c4f381585fb55d8332f2fa67072.mp3', 862, '2026-09-14 09:41:55.198783', '5366c4f17d746f1aecf4bd84e11653a1b8a5109e2aee622aba9e8b4db86ac9bd', 'validated', '{"audio_key":"15ca221ce6a525b9cd4a186b247c8341fa3f9c4f381585fb55d8332f2fa67072","entity_key":"lx_home_and_location_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5366c4f17d746f1aecf4bd84e11653a1b8a5109e2aee622aba9e8b4db86ac9bd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/15ca221ce6a525b9cd4a186b247c8341fa3f9c4f381585fb55d8332f2fa67072.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_home_and_location_06 -> audio/generated/fr-FR/lexical/15ca221ce6a525b9cd4a186b247c8341fa3f9c4f381585fb55d8332f2fa67072.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0e1c15a6-94eb-5320-ae0e-665e475d7800', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_home_and_location_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'af133f1c3385f7f7739dc25349f5b212a7fa046c032bdf52999e91ab15e55ad1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('06cbdd94-6763-59db-b8eb-140db54051eb', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0e1c15a6-94eb-5320-ae0e-665e475d7800', 1), 'af133f1c3385f7f7739dc25349f5b212a7fa046c032bdf52999e91ab15e55ad1',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/15ca221ce6a525b9cd4a186b247c8341fa3f9c4f381585fb55d8332f2fa67072.mp3', 862, '2026-09-14 09:41:55.198783', '5366c4f17d746f1aecf4bd84e11653a1b8a5109e2aee622aba9e8b4db86ac9bd', 'validated', '{"audio_key":"15ca221ce6a525b9cd4a186b247c8341fa3f9c4f381585fb55d8332f2fa67072","entity_key":"wf_home_and_location_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5366c4f17d746f1aecf4bd84e11653a1b8a5109e2aee622aba9e8b4db86ac9bd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/15ca221ce6a525b9cd4a186b247c8341fa3f9c4f381585fb55d8332f2fa67072.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_shopping_and_prices_03 -> audio/generated/fr-FR/lexical/1c231ff04402a75e141cde08bd4ec7591eb8b1a685c198638e600dbe483113d5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c816555a-3238-5f7d-8a84-74328e5aecb9', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_shopping_and_prices_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5b62d9f168e0f71b62632500110368a84b41770477926a90d30ffeab09f83ded'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('480de7d8-92dc-5155-868f-82d21e11568f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c816555a-3238-5f7d-8a84-74328e5aecb9', 1), '5b62d9f168e0f71b62632500110368a84b41770477926a90d30ffeab09f83ded',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/1c231ff04402a75e141cde08bd4ec7591eb8b1a685c198638e600dbe483113d5.mp3', 914, '2026-09-14 09:41:55.901531', 'b9417fc3f4cb7c72dada8bcc052e95e69ca70b185d375c8598adcc1eb2c72bf0', 'validated', '{"audio_key":"1c231ff04402a75e141cde08bd4ec7591eb8b1a685c198638e600dbe483113d5","entity_key":"lx_shopping_and_prices_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b9417fc3f4cb7c72dada8bcc052e95e69ca70b185d375c8598adcc1eb2c72bf0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/1c231ff04402a75e141cde08bd4ec7591eb8b1a685c198638e600dbe483113d5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_shopping_and_prices_03 -> audio/generated/fr-FR/lexical/1c231ff04402a75e141cde08bd4ec7591eb8b1a685c198638e600dbe483113d5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9513d4a4-d25b-5db7-a927-a8363cf558d9', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_shopping_and_prices_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5b62d9f168e0f71b62632500110368a84b41770477926a90d30ffeab09f83ded'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d1dd2d2c-b382-5f4d-86bb-4ea1d29d0ec5', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9513d4a4-d25b-5db7-a927-a8363cf558d9', 1), '5b62d9f168e0f71b62632500110368a84b41770477926a90d30ffeab09f83ded',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/1c231ff04402a75e141cde08bd4ec7591eb8b1a685c198638e600dbe483113d5.mp3', 914, '2026-09-14 09:41:55.901531', 'b9417fc3f4cb7c72dada8bcc052e95e69ca70b185d375c8598adcc1eb2c72bf0', 'validated', '{"audio_key":"1c231ff04402a75e141cde08bd4ec7591eb8b1a685c198638e600dbe483113d5","entity_key":"wf_shopping_and_prices_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b9417fc3f4cb7c72dada8bcc052e95e69ca70b185d375c8598adcc1eb2c72bf0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/1c231ff04402a75e141cde08bd4ec7591eb8b1a685c198638e600dbe483113d5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_getting_around_06 -> audio/generated/fr-FR/lexical/1dd1abfdc8263ebafeae85d208b0ed161c4c2b2b58c046864893eed3fb42bda9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9c46b002-9a3d-5afe-9a0d-0010179c991c', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_getting_around_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '818ad222c9197a636f39a5b7a8b1cb1a8f161d19a5244aa013ffeeedc8592bd2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ef0b700c-9870-51c2-a75b-6d98dbcbd9b6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9c46b002-9a3d-5afe-9a0d-0010179c991c', 1), '818ad222c9197a636f39a5b7a8b1cb1a8f161d19a5244aa013ffeeedc8592bd2',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/1dd1abfdc8263ebafeae85d208b0ed161c4c2b2b58c046864893eed3fb42bda9.mp3', 966, '2026-09-14 09:41:56.241956', '5a7ca8ae095aa6e5c4f45de2f4474241611a098f4d25db82e3553701f9f4ffb9', 'validated', '{"audio_key":"1dd1abfdc8263ebafeae85d208b0ed161c4c2b2b58c046864893eed3fb42bda9","entity_key":"lx_getting_around_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5a7ca8ae095aa6e5c4f45de2f4474241611a098f4d25db82e3553701f9f4ffb9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/1dd1abfdc8263ebafeae85d208b0ed161c4c2b2b58c046864893eed3fb42bda9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_getting_around_06 -> audio/generated/fr-FR/lexical/1dd1abfdc8263ebafeae85d208b0ed161c4c2b2b58c046864893eed3fb42bda9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('fc188674-e221-529f-8551-2ce46bdedae6', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_getting_around_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '818ad222c9197a636f39a5b7a8b1cb1a8f161d19a5244aa013ffeeedc8592bd2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4c57bf92-7248-5369-9e51-81dc4da218fe', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('fc188674-e221-529f-8551-2ce46bdedae6', 1), '818ad222c9197a636f39a5b7a8b1cb1a8f161d19a5244aa013ffeeedc8592bd2',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/1dd1abfdc8263ebafeae85d208b0ed161c4c2b2b58c046864893eed3fb42bda9.mp3', 966, '2026-09-14 09:41:56.241956', '5a7ca8ae095aa6e5c4f45de2f4474241611a098f4d25db82e3553701f9f4ffb9', 'validated', '{"audio_key":"1dd1abfdc8263ebafeae85d208b0ed161c4c2b2b58c046864893eed3fb42bda9","entity_key":"wf_getting_around_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5a7ca8ae095aa6e5c4f45de2f4474241611a098f4d25db82e3553701f9f4ffb9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/1dd1abfdc8263ebafeae85d208b0ed161c4c2b2b58c046864893eed3fb42bda9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_identity_and_origin_04 -> audio/generated/fr-FR/lexical/2650e8f8cbceba075f3088f775eb8517c612a42dfbd085922256aab6c234cd5a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('898a62f5-d197-5948-8f0f-ee4e6622a4e0', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_identity_and_origin_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cd88e095da5404a45d44f8be8f68fd88371a134fd0b41c508027e20005b50142'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('79e6f35f-8ea4-5780-806b-3a9f4550f34d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('898a62f5-d197-5948-8f0f-ee4e6622a4e0', 1), 'cd88e095da5404a45d44f8be8f68fd88371a134fd0b41c508027e20005b50142',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/2650e8f8cbceba075f3088f775eb8517c612a42dfbd085922256aab6c234cd5a.mp3', 1097, '2026-09-14 09:41:56.939594', 'e29d57cddc79cc12870036a27148b20aff73812066c51acbb4a6ebca76aae17c', 'validated', '{"audio_key":"2650e8f8cbceba075f3088f775eb8517c612a42dfbd085922256aab6c234cd5a","entity_key":"lx_identity_and_origin_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e29d57cddc79cc12870036a27148b20aff73812066c51acbb4a6ebca76aae17c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/2650e8f8cbceba075f3088f775eb8517c612a42dfbd085922256aab6c234cd5a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_identity_and_origin_04 -> audio/generated/fr-FR/lexical/2650e8f8cbceba075f3088f775eb8517c612a42dfbd085922256aab6c234cd5a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('30eda152-0266-513f-b7a9-3ffe3ba34b75', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_identity_and_origin_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cd88e095da5404a45d44f8be8f68fd88371a134fd0b41c508027e20005b50142'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('98b1be4e-76fd-5522-a7c5-756b48d5ed8e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('30eda152-0266-513f-b7a9-3ffe3ba34b75', 1), 'cd88e095da5404a45d44f8be8f68fd88371a134fd0b41c508027e20005b50142',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/2650e8f8cbceba075f3088f775eb8517c612a42dfbd085922256aab6c234cd5a.mp3', 1097, '2026-09-14 09:41:56.939594', 'e29d57cddc79cc12870036a27148b20aff73812066c51acbb4a6ebca76aae17c', 'validated', '{"audio_key":"2650e8f8cbceba075f3088f775eb8517c612a42dfbd085922256aab6c234cd5a","entity_key":"wf_identity_and_origin_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e29d57cddc79cc12870036a27148b20aff73812066c51acbb4a6ebca76aae17c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/2650e8f8cbceba075f3088f775eb8517c612a42dfbd085922256aab6c234cd5a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_cafe_basics_03 -> audio/generated/fr-FR/lexical/29e95db333c6ef618be45196b849202b4ea4db57c97f1461e4bf3385fcb8505a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7b0f128a-b66c-5c68-97a1-184f14ab3d70', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_cafe_basics_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c9b12f5e43ffbe57f1befd178e207067f33e6862c64619af5fde3b405796263c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e8b7db9b-2a75-51e1-a86d-6fa61af337d5', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7b0f128a-b66c-5c68-97a1-184f14ab3d70', 1), 'c9b12f5e43ffbe57f1befd178e207067f33e6862c64619af5fde3b405796263c',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/29e95db333c6ef618be45196b849202b4ea4db57c97f1461e4bf3385fcb8505a.mp3', 783, '2026-09-14 09:41:57.348621', 'be62c857dfa978028f9aa9335d1a70acdf136b8ff676bf575048399d07a54ad4', 'validated', '{"audio_key":"29e95db333c6ef618be45196b849202b4ea4db57c97f1461e4bf3385fcb8505a","entity_key":"lx_cafe_basics_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"be62c857dfa978028f9aa9335d1a70acdf136b8ff676bf575048399d07a54ad4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/29e95db333c6ef618be45196b849202b4ea4db57c97f1461e4bf3385fcb8505a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_cafe_basics_03 -> audio/generated/fr-FR/lexical/29e95db333c6ef618be45196b849202b4ea4db57c97f1461e4bf3385fcb8505a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f85fc4ef-e05f-552b-a5a2-de0047939092', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_cafe_basics_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c9b12f5e43ffbe57f1befd178e207067f33e6862c64619af5fde3b405796263c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('db9c7383-fd0f-5e28-8c80-1ba863791d94', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f85fc4ef-e05f-552b-a5a2-de0047939092', 1), 'c9b12f5e43ffbe57f1befd178e207067f33e6862c64619af5fde3b405796263c',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/29e95db333c6ef618be45196b849202b4ea4db57c97f1461e4bf3385fcb8505a.mp3', 783, '2026-09-14 09:41:57.348621', 'be62c857dfa978028f9aa9335d1a70acdf136b8ff676bf575048399d07a54ad4', 'validated', '{"audio_key":"29e95db333c6ef618be45196b849202b4ea4db57c97f1461e4bf3385fcb8505a","entity_key":"wf_cafe_basics_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"be62c857dfa978028f9aa9335d1a70acdf136b8ff676bf575048399d07a54ad4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/29e95db333c6ef618be45196b849202b4ea4db57c97f1461e4bf3385fcb8505a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_family_and_people_05 -> audio/generated/fr-FR/lexical/336f325e0e51be9f2b486d17f0bf244a7b17da2a0931d27b10b1c023b7428102.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('333b4620-f32c-5397-bc2f-b8458e634b76', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_family_and_people_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'abd6a5db86b71e7b626757043b63fcb2e2d5ad9c26bfe91265eb1f44a46f8543'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('044387db-5162-54f6-a919-1ab3c2d6aeed', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('333b4620-f32c-5397-bc2f-b8458e634b76', 1), 'abd6a5db86b71e7b626757043b63fcb2e2d5ad9c26bfe91265eb1f44a46f8543',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/336f325e0e51be9f2b486d17f0bf244a7b17da2a0931d27b10b1c023b7428102.mp3', 966, '2026-09-14 09:41:57.980469', '764ecdcd7b6535c6788f5c2ea1d78b82ea6567f42fe438ad16f9d0e83553461a', 'validated', '{"audio_key":"336f325e0e51be9f2b486d17f0bf244a7b17da2a0931d27b10b1c023b7428102","entity_key":"lx_family_and_people_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"764ecdcd7b6535c6788f5c2ea1d78b82ea6567f42fe438ad16f9d0e83553461a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/336f325e0e51be9f2b486d17f0bf244a7b17da2a0931d27b10b1c023b7428102.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_family_and_people_05 -> audio/generated/fr-FR/lexical/336f325e0e51be9f2b486d17f0bf244a7b17da2a0931d27b10b1c023b7428102.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('84053907-f95d-5255-a2bb-529101077af5', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_family_and_people_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'abd6a5db86b71e7b626757043b63fcb2e2d5ad9c26bfe91265eb1f44a46f8543'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ea04dfad-0765-5382-8a23-a4e53c1891cc', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('84053907-f95d-5255-a2bb-529101077af5', 1), 'abd6a5db86b71e7b626757043b63fcb2e2d5ad9c26bfe91265eb1f44a46f8543',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/336f325e0e51be9f2b486d17f0bf244a7b17da2a0931d27b10b1c023b7428102.mp3', 966, '2026-09-14 09:41:57.980469', '764ecdcd7b6535c6788f5c2ea1d78b82ea6567f42fe438ad16f9d0e83553461a', 'validated', '{"audio_key":"336f325e0e51be9f2b486d17f0bf244a7b17da2a0931d27b10b1c023b7428102","entity_key":"wf_family_and_people_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"764ecdcd7b6535c6788f5c2ea1d78b82ea6567f42fe438ad16f9d0e83553461a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/336f325e0e51be9f2b486d17f0bf244a7b17da2a0931d27b10b1c023b7428102.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_family_and_people_03 -> audio/generated/fr-FR/lexical/39c568f94507d5563bd25de8733e8b811559da10eaa2361ded4253736a7f437a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7f5436f8-9a21-5f16-8ef3-741b08b9a4b9', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_family_and_people_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c8b85fc9f669213cf2e291b358a6f472076d61e1abc5211f68505067f34ed48c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ac564116-1c51-520f-9227-2f8fce171bb0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7f5436f8-9a21-5f16-8ef3-741b08b9a4b9', 1), 'c8b85fc9f669213cf2e291b358a6f472076d61e1abc5211f68505067f34ed48c',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/39c568f94507d5563bd25de8733e8b811559da10eaa2361ded4253736a7f437a.mp3', 914, '2026-09-14 09:41:58.371978', '5338830de88a6e64eeeda76f465cb2cc819b89de202e5b32e8019478bedce7ba', 'validated', '{"audio_key":"39c568f94507d5563bd25de8733e8b811559da10eaa2361ded4253736a7f437a","entity_key":"lx_family_and_people_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5338830de88a6e64eeeda76f465cb2cc819b89de202e5b32e8019478bedce7ba","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/39c568f94507d5563bd25de8733e8b811559da10eaa2361ded4253736a7f437a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_family_and_people_03 -> audio/generated/fr-FR/lexical/39c568f94507d5563bd25de8733e8b811559da10eaa2361ded4253736a7f437a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4f84b132-da24-556b-bb60-176418142d40', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_family_and_people_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c8b85fc9f669213cf2e291b358a6f472076d61e1abc5211f68505067f34ed48c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('04871c6d-ab27-5178-be91-246cdd7c1b38', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4f84b132-da24-556b-bb60-176418142d40', 1), 'c8b85fc9f669213cf2e291b358a6f472076d61e1abc5211f68505067f34ed48c',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/39c568f94507d5563bd25de8733e8b811559da10eaa2361ded4253736a7f437a.mp3', 914, '2026-09-14 09:41:58.371978', '5338830de88a6e64eeeda76f465cb2cc819b89de202e5b32e8019478bedce7ba', 'validated', '{"audio_key":"39c568f94507d5563bd25de8733e8b811559da10eaa2361ded4253736a7f437a","entity_key":"wf_family_and_people_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5338830de88a6e64eeeda76f465cb2cc819b89de202e5b32e8019478bedce7ba","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/39c568f94507d5563bd25de8733e8b811559da10eaa2361ded4253736a7f437a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_home_and_location_05 -> audio/generated/fr-FR/lexical/3a4d245ed3aad45129f02e1f1c8017d22c00757ef6a9e573669eebe8d2ccd587.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f06e2fb0-38aa-54ea-b0d1-9b83f27c3d6c', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_home_and_location_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e4e8fba40653212395e9ea3840b0dd6b13c5ba322e976ba3c88ed85d6411fd1a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('691580eb-3766-54f9-bbfe-9ad154246073', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f06e2fb0-38aa-54ea-b0d1-9b83f27c3d6c', 1), 'e4e8fba40653212395e9ea3840b0dd6b13c5ba322e976ba3c88ed85d6411fd1a',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/3a4d245ed3aad45129f02e1f1c8017d22c00757ef6a9e573669eebe8d2ccd587.mp3', 679, '2026-09-14 09:41:58.967831', '89cabe91119a1e304138585e338158ddae9c1b8a891c862db13454b8ec71b68f', 'validated', '{"audio_key":"3a4d245ed3aad45129f02e1f1c8017d22c00757ef6a9e573669eebe8d2ccd587","entity_key":"lx_home_and_location_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"89cabe91119a1e304138585e338158ddae9c1b8a891c862db13454b8ec71b68f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/3a4d245ed3aad45129f02e1f1c8017d22c00757ef6a9e573669eebe8d2ccd587.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_home_and_location_05 -> audio/generated/fr-FR/lexical/3a4d245ed3aad45129f02e1f1c8017d22c00757ef6a9e573669eebe8d2ccd587.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0c0b8936-4e7c-58bf-8e78-0ab0fe81aa9e', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_home_and_location_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e4e8fba40653212395e9ea3840b0dd6b13c5ba322e976ba3c88ed85d6411fd1a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('75e81007-7663-5aa5-a42d-11320b0cede3', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0c0b8936-4e7c-58bf-8e78-0ab0fe81aa9e', 1), 'e4e8fba40653212395e9ea3840b0dd6b13c5ba322e976ba3c88ed85d6411fd1a',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/3a4d245ed3aad45129f02e1f1c8017d22c00757ef6a9e573669eebe8d2ccd587.mp3', 679, '2026-09-14 09:41:58.967831', '89cabe91119a1e304138585e338158ddae9c1b8a891c862db13454b8ec71b68f', 'validated', '{"audio_key":"3a4d245ed3aad45129f02e1f1c8017d22c00757ef6a9e573669eebe8d2ccd587","entity_key":"wf_home_and_location_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"89cabe91119a1e304138585e338158ddae9c1b8a891c862db13454b8ec71b68f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/3a4d245ed3aad45129f02e1f1c8017d22c00757ef6a9e573669eebe8d2ccd587.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_identity_and_origin_05 -> audio/generated/fr-FR/lexical/3b29880545e16213406ab1d607e4e61884df32a209898d025feb8730a09e6e08.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2e8adf37-4357-526a-a7f1-2ef4abf02d9a', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_identity_and_origin_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '96b42153d4daca53ee788ee45ad9686b6722e904ea564a4a010e35972199d78e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b7489190-b7b9-5677-a930-763ee23db538', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2e8adf37-4357-526a-a7f1-2ef4abf02d9a', 1), '96b42153d4daca53ee788ee45ad9686b6722e904ea564a4a010e35972199d78e',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/3b29880545e16213406ab1d607e4e61884df32a209898d025feb8730a09e6e08.mp3', 1018, '2026-09-14 09:41:59.359254', 'b80cef4ddc042563c41637241de124787554ad278b2f1af058f0304c4dd48dc4', 'validated', '{"audio_key":"3b29880545e16213406ab1d607e4e61884df32a209898d025feb8730a09e6e08","entity_key":"lx_identity_and_origin_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b80cef4ddc042563c41637241de124787554ad278b2f1af058f0304c4dd48dc4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/3b29880545e16213406ab1d607e4e61884df32a209898d025feb8730a09e6e08.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_identity_and_origin_05 -> audio/generated/fr-FR/lexical/3b29880545e16213406ab1d607e4e61884df32a209898d025feb8730a09e6e08.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0ecb8ff9-93f4-5930-a7e8-d391f726ef1d', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_identity_and_origin_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '96b42153d4daca53ee788ee45ad9686b6722e904ea564a4a010e35972199d78e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e323c368-60b0-5058-8666-60953e0ff58f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0ecb8ff9-93f4-5930-a7e8-d391f726ef1d', 1), '96b42153d4daca53ee788ee45ad9686b6722e904ea564a4a010e35972199d78e',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/3b29880545e16213406ab1d607e4e61884df32a209898d025feb8730a09e6e08.mp3', 1018, '2026-09-14 09:41:59.359254', 'b80cef4ddc042563c41637241de124787554ad278b2f1af058f0304c4dd48dc4', 'validated', '{"audio_key":"3b29880545e16213406ab1d607e4e61884df32a209898d025feb8730a09e6e08","entity_key":"wf_identity_and_origin_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b80cef4ddc042563c41637241de124787554ad278b2f1af058f0304c4dd48dc4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/3b29880545e16213406ab1d607e4e61884df32a209898d025feb8730a09e6e08.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_family_and_people_02 -> audio/generated/fr-FR/lexical/42e96c74ea061f21e2044badc5f325cb1e773ee2f42c713d0e4355c5d67ef694.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('4fc1c233-01be-53cc-a989-d583d64271fa', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_family_and_people_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '485ef000344c201d24d44df3cf542f3b490a9fd553f03e396fe2fbd69d2324ee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e8409dbe-d822-5718-b02a-a1135c5eb7ad', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('4fc1c233-01be-53cc-a989-d583d64271fa', 1), '485ef000344c201d24d44df3cf542f3b490a9fd553f03e396fe2fbd69d2324ee',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/42e96c74ea061f21e2044badc5f325cb1e773ee2f42c713d0e4355c5d67ef694.mp3', 914, '2026-09-14 09:42:00.049309', '1cc679476904bf58505a9a494a50f3125a5435d7a287d4fc0e773b07a836b0e2', 'validated', '{"audio_key":"42e96c74ea061f21e2044badc5f325cb1e773ee2f42c713d0e4355c5d67ef694","entity_key":"lx_family_and_people_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1cc679476904bf58505a9a494a50f3125a5435d7a287d4fc0e773b07a836b0e2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/42e96c74ea061f21e2044badc5f325cb1e773ee2f42c713d0e4355c5d67ef694.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_family_and_people_02 -> audio/generated/fr-FR/lexical/42e96c74ea061f21e2044badc5f325cb1e773ee2f42c713d0e4355c5d67ef694.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('75a98c7f-a9cd-5ded-8732-9872e574e9a3', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_family_and_people_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '485ef000344c201d24d44df3cf542f3b490a9fd553f03e396fe2fbd69d2324ee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a04dfba0-4953-51a5-9582-43e11a7e413c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('75a98c7f-a9cd-5ded-8732-9872e574e9a3', 1), '485ef000344c201d24d44df3cf542f3b490a9fd553f03e396fe2fbd69d2324ee',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/42e96c74ea061f21e2044badc5f325cb1e773ee2f42c713d0e4355c5d67ef694.mp3', 914, '2026-09-14 09:42:00.049309', '1cc679476904bf58505a9a494a50f3125a5435d7a287d4fc0e773b07a836b0e2', 'validated', '{"audio_key":"42e96c74ea061f21e2044badc5f325cb1e773ee2f42c713d0e4355c5d67ef694","entity_key":"wf_family_and_people_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1cc679476904bf58505a9a494a50f3125a5435d7a287d4fc0e773b07a836b0e2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/42e96c74ea061f21e2044badc5f325cb1e773ee2f42c713d0e4355c5d67ef694.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_daily_actions_01 -> audio/generated/fr-FR/lexical/4a0440453257f3a0514e9deec49de8e3b738496681e44443fdfe08a3d73cdec7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3346076f-18f3-53b1-b73f-a75792776008', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_daily_actions_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '55c286af7ef60ef5fe9bad884d6970fe172bdba0b8d4bd1bed9f45c90f89347f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c86824d2-f9b8-5b23-bc42-6d14e5d1d7d3', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3346076f-18f3-53b1-b73f-a75792776008', 1), '55c286af7ef60ef5fe9bad884d6970fe172bdba0b8d4bd1bed9f45c90f89347f',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/4a0440453257f3a0514e9deec49de8e3b738496681e44443fdfe08a3d73cdec7.mp3', 1071, '2026-09-14 09:42:00.415744', '293b1d1f24fc76b15e44cb86803c9a95b10058fb9b576d97324deb97f2e78f34', 'validated', '{"audio_key":"4a0440453257f3a0514e9deec49de8e3b738496681e44443fdfe08a3d73cdec7","entity_key":"lx_daily_actions_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"293b1d1f24fc76b15e44cb86803c9a95b10058fb9b576d97324deb97f2e78f34","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/4a0440453257f3a0514e9deec49de8e3b738496681e44443fdfe08a3d73cdec7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_daily_actions_01 -> audio/generated/fr-FR/lexical/4a0440453257f3a0514e9deec49de8e3b738496681e44443fdfe08a3d73cdec7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('71b28bf2-f24f-5bd0-8fc2-2d94cc868dfd', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_daily_actions_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '55c286af7ef60ef5fe9bad884d6970fe172bdba0b8d4bd1bed9f45c90f89347f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0d48c575-09c4-5d70-bbd9-44406d28c7e2', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('71b28bf2-f24f-5bd0-8fc2-2d94cc868dfd', 1), '55c286af7ef60ef5fe9bad884d6970fe172bdba0b8d4bd1bed9f45c90f89347f',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/4a0440453257f3a0514e9deec49de8e3b738496681e44443fdfe08a3d73cdec7.mp3', 1071, '2026-09-14 09:42:00.415744', '293b1d1f24fc76b15e44cb86803c9a95b10058fb9b576d97324deb97f2e78f34', 'validated', '{"audio_key":"4a0440453257f3a0514e9deec49de8e3b738496681e44443fdfe08a3d73cdec7","entity_key":"wf_daily_actions_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"293b1d1f24fc76b15e44cb86803c9a95b10058fb9b576d97324deb97f2e78f34","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/4a0440453257f3a0514e9deec49de8e3b738496681e44443fdfe08a3d73cdec7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_a1_day_capstone_03 -> audio/generated/fr-FR/lexical/4a8f1e60e1c9a28d99e08b33ffb36323e515eb13a8aa9f5cc6d30cc291357fe7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('dbb4c6e9-0ebd-508c-9ad5-d3a3118eaf27', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_a1_day_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '80d6d96bc6f59cb8a238322fbe2c4bf61a46ffbfb3f5bbcc3216ef26f0d1f937'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8a06789c-1c18-5b89-87ab-6d5a58b7a34d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('dbb4c6e9-0ebd-508c-9ad5-d3a3118eaf27', 1), '80d6d96bc6f59cb8a238322fbe2c4bf61a46ffbfb3f5bbcc3216ef26f0d1f937',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/4a8f1e60e1c9a28d99e08b33ffb36323e515eb13a8aa9f5cc6d30cc291357fe7.mp3', 862, '2026-09-14 09:42:01.069189', 'be5bc53d3c7186172ac2567f65afc475cbc799b8133a2943a79af89f7c632d63', 'validated', '{"audio_key":"4a8f1e60e1c9a28d99e08b33ffb36323e515eb13a8aa9f5cc6d30cc291357fe7","entity_key":"lx_a1_day_capstone_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"be5bc53d3c7186172ac2567f65afc475cbc799b8133a2943a79af89f7c632d63","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/4a8f1e60e1c9a28d99e08b33ffb36323e515eb13a8aa9f5cc6d30cc291357fe7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_a1_day_capstone_03 -> audio/generated/fr-FR/lexical/4a8f1e60e1c9a28d99e08b33ffb36323e515eb13a8aa9f5cc6d30cc291357fe7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('da147c75-5dc8-5337-a0eb-b82659d42a5a', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_a1_day_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '80d6d96bc6f59cb8a238322fbe2c4bf61a46ffbfb3f5bbcc3216ef26f0d1f937'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('23bd715c-7d92-5c8b-b66a-4426f382ce1c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('da147c75-5dc8-5337-a0eb-b82659d42a5a', 1), '80d6d96bc6f59cb8a238322fbe2c4bf61a46ffbfb3f5bbcc3216ef26f0d1f937',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/4a8f1e60e1c9a28d99e08b33ffb36323e515eb13a8aa9f5cc6d30cc291357fe7.mp3', 862, '2026-09-14 09:42:01.069189', 'be5bc53d3c7186172ac2567f65afc475cbc799b8133a2943a79af89f7c632d63', 'validated', '{"audio_key":"4a8f1e60e1c9a28d99e08b33ffb36323e515eb13a8aa9f5cc6d30cc291357fe7","entity_key":"wf_a1_day_capstone_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"be5bc53d3c7186172ac2567f65afc475cbc799b8133a2943a79af89f7c632d63","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/4a8f1e60e1c9a28d99e08b33ffb36323e515eb13a8aa9f5cc6d30cc291357fe7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_identity_and_origin_02 -> audio/generated/fr-FR/lexical/4cd1b0b1a69728b3bf533a7180c399a3f9a0b760e43cca7bbfcffcf8f3645dc0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1a53cc7b-9fa0-5126-93da-027540530873', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_identity_and_origin_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b89ce679e603a9f436bc135461859ec3cc199306093419a9fbb0b6439e49032e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1a2d12c5-1b0d-5458-8fef-6f4e4036ade1', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1a53cc7b-9fa0-5126-93da-027540530873', 1), 'b89ce679e603a9f436bc135461859ec3cc199306093419a9fbb0b6439e49032e',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/4cd1b0b1a69728b3bf533a7180c399a3f9a0b760e43cca7bbfcffcf8f3645dc0.mp3', 1097, '2026-09-14 09:42:01.469592', '8dd710c9bb5272caadacd538e0fc935829e003feb6161555d947b6cb1226fa0a', 'validated', '{"audio_key":"4cd1b0b1a69728b3bf533a7180c399a3f9a0b760e43cca7bbfcffcf8f3645dc0","entity_key":"lx_identity_and_origin_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8dd710c9bb5272caadacd538e0fc935829e003feb6161555d947b6cb1226fa0a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/4cd1b0b1a69728b3bf533a7180c399a3f9a0b760e43cca7bbfcffcf8f3645dc0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_identity_and_origin_02 -> audio/generated/fr-FR/lexical/4cd1b0b1a69728b3bf533a7180c399a3f9a0b760e43cca7bbfcffcf8f3645dc0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('40fc3f73-2fc3-51ad-8da7-573611239c22', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_identity_and_origin_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b89ce679e603a9f436bc135461859ec3cc199306093419a9fbb0b6439e49032e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('14d097b7-3ef7-56e4-82cb-7a94eed7191a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('40fc3f73-2fc3-51ad-8da7-573611239c22', 1), 'b89ce679e603a9f436bc135461859ec3cc199306093419a9fbb0b6439e49032e',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/4cd1b0b1a69728b3bf533a7180c399a3f9a0b760e43cca7bbfcffcf8f3645dc0.mp3', 1097, '2026-09-14 09:42:01.469592', '8dd710c9bb5272caadacd538e0fc935829e003feb6161555d947b6cb1226fa0a', 'validated', '{"audio_key":"4cd1b0b1a69728b3bf533a7180c399a3f9a0b760e43cca7bbfcffcf8f3645dc0","entity_key":"wf_identity_and_origin_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8dd710c9bb5272caadacd538e0fc935829e003feb6161555d947b6cb1226fa0a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/4cd1b0b1a69728b3bf533a7180c399a3f9a0b760e43cca7bbfcffcf8f3645dc0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_cafe_basics_05 -> audio/generated/fr-FR/lexical/4f52347518f1c4686495c333767239505a1332be51f5b95413d3ea8265fbeab8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('602b9fed-1a9a-5e75-932e-24975b8901d5', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_cafe_basics_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a34b11de469c1d71448f7640d92e568f4554ea23710f0355d1f1d0991464ea6c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8b4a3bca-2156-58df-82c0-ea4b39d525fd', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('602b9fed-1a9a-5e75-932e-24975b8901d5', 1), 'a34b11de469c1d71448f7640d92e568f4554ea23710f0355d1f1d0991464ea6c',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/4f52347518f1c4686495c333767239505a1332be51f5b95413d3ea8265fbeab8.mp3', 1097, '2026-09-14 09:42:02.269556', '85569431aa6b3de27b0585aa164ed7f3d6689b0f2a2a8189e182f071d00d529d', 'validated', '{"audio_key":"4f52347518f1c4686495c333767239505a1332be51f5b95413d3ea8265fbeab8","entity_key":"lx_cafe_basics_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"85569431aa6b3de27b0585aa164ed7f3d6689b0f2a2a8189e182f071d00d529d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/4f52347518f1c4686495c333767239505a1332be51f5b95413d3ea8265fbeab8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_cafe_basics_05 -> audio/generated/fr-FR/lexical/4f52347518f1c4686495c333767239505a1332be51f5b95413d3ea8265fbeab8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c65667cf-9c29-5678-a32e-4fe041069fed', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_cafe_basics_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a34b11de469c1d71448f7640d92e568f4554ea23710f0355d1f1d0991464ea6c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8ec3bc90-f897-5021-aead-3629bdde2eb6', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c65667cf-9c29-5678-a32e-4fe041069fed', 1), 'a34b11de469c1d71448f7640d92e568f4554ea23710f0355d1f1d0991464ea6c',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/4f52347518f1c4686495c333767239505a1332be51f5b95413d3ea8265fbeab8.mp3', 1097, '2026-09-14 09:42:02.269556', '85569431aa6b3de27b0585aa164ed7f3d6689b0f2a2a8189e182f071d00d529d', 'validated', '{"audio_key":"4f52347518f1c4686495c333767239505a1332be51f5b95413d3ea8265fbeab8","entity_key":"wf_cafe_basics_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"85569431aa6b3de27b0585aa164ed7f3d6689b0f2a2a8189e182f071d00d529d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/4f52347518f1c4686495c333767239505a1332be51f5b95413d3ea8265fbeab8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_daily_actions_05 -> audio/generated/fr-FR/lexical/631cc6568002bcaf9371e482aa3e0287458aac3518670946a3bb91214f885a78.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('677661c9-c3a6-5b1a-87bd-35bae5bd95c1', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_daily_actions_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f3cce486ea320015c8e0ffae7cfda6bc2c449a8980b1fb4c632703a70a998246'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('56991c8b-d876-5501-94d0-6d79aa3320d2', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('677661c9-c3a6-5b1a-87bd-35bae5bd95c1', 1), 'f3cce486ea320015c8e0ffae7cfda6bc2c449a8980b1fb4c632703a70a998246',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/631cc6568002bcaf9371e482aa3e0287458aac3518670946a3bb91214f885a78.mp3', 1018, '2026-09-14 09:42:02.476995', '2a811ea959619f946b48d613810070a67732ea1ab36e51410019f1a00b827916', 'validated', '{"audio_key":"631cc6568002bcaf9371e482aa3e0287458aac3518670946a3bb91214f885a78","entity_key":"lx_daily_actions_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2a811ea959619f946b48d613810070a67732ea1ab36e51410019f1a00b827916","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/631cc6568002bcaf9371e482aa3e0287458aac3518670946a3bb91214f885a78.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_daily_actions_05 -> audio/generated/fr-FR/lexical/631cc6568002bcaf9371e482aa3e0287458aac3518670946a3bb91214f885a78.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d5a05e01-13cc-593e-a431-2beacfe991f1', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_daily_actions_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f3cce486ea320015c8e0ffae7cfda6bc2c449a8980b1fb4c632703a70a998246'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1de4a613-fe45-5c4c-9345-5bc2ec6beb35', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d5a05e01-13cc-593e-a431-2beacfe991f1', 1), 'f3cce486ea320015c8e0ffae7cfda6bc2c449a8980b1fb4c632703a70a998246',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/631cc6568002bcaf9371e482aa3e0287458aac3518670946a3bb91214f885a78.mp3', 1018, '2026-09-14 09:42:02.476995', '2a811ea959619f946b48d613810070a67732ea1ab36e51410019f1a00b827916', 'validated', '{"audio_key":"631cc6568002bcaf9371e482aa3e0287458aac3518670946a3bb91214f885a78","entity_key":"wf_daily_actions_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2a811ea959619f946b48d613810070a67732ea1ab36e51410019f1a00b827916","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/631cc6568002bcaf9371e482aa3e0287458aac3518670946a3bb91214f885a78.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_time_and_schedule_02 -> audio/generated/fr-FR/lexical/63235f96257c53c4c8142e1038c1d651dbada19ad5e89feda114ccb6b4e1a03b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0d99d289-0b48-5ebf-96f5-036cbc1b7fd7', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_time_and_schedule_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '074f3b0225ccaa3e1c237a52fe807374ef94d43a050b6da075621fbc5fd5ba38'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0a5bdc05-01c4-5810-a11b-a6fb558f3b5d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0d99d289-0b48-5ebf-96f5-036cbc1b7fd7', 1), '074f3b0225ccaa3e1c237a52fe807374ef94d43a050b6da075621fbc5fd5ba38',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/63235f96257c53c4c8142e1038c1d651dbada19ad5e89feda114ccb6b4e1a03b.mp3', 966, '2026-09-14 09:42:03.244669', 'f5a3f60691884f2874230b66b1f9f804f30b919a385252a2b0d24fc85dcde749', 'validated', '{"audio_key":"63235f96257c53c4c8142e1038c1d651dbada19ad5e89feda114ccb6b4e1a03b","entity_key":"lx_time_and_schedule_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f5a3f60691884f2874230b66b1f9f804f30b919a385252a2b0d24fc85dcde749","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/63235f96257c53c4c8142e1038c1d651dbada19ad5e89feda114ccb6b4e1a03b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_time_and_schedule_02 -> audio/generated/fr-FR/lexical/63235f96257c53c4c8142e1038c1d651dbada19ad5e89feda114ccb6b4e1a03b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f85b9484-3399-512c-b5e9-2a9a273bd219', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_time_and_schedule_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '074f3b0225ccaa3e1c237a52fe807374ef94d43a050b6da075621fbc5fd5ba38'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cdd1178a-ee6f-52e2-814e-d7a379a6f5f0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f85b9484-3399-512c-b5e9-2a9a273bd219', 1), '074f3b0225ccaa3e1c237a52fe807374ef94d43a050b6da075621fbc5fd5ba38',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/63235f96257c53c4c8142e1038c1d651dbada19ad5e89feda114ccb6b4e1a03b.mp3', 966, '2026-09-14 09:42:03.244669', 'f5a3f60691884f2874230b66b1f9f804f30b919a385252a2b0d24fc85dcde749', 'validated', '{"audio_key":"63235f96257c53c4c8142e1038c1d651dbada19ad5e89feda114ccb6b4e1a03b","entity_key":"wf_time_and_schedule_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f5a3f60691884f2874230b66b1f9f804f30b919a385252a2b0d24fc85dcde749","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/63235f96257c53c4c8142e1038c1d651dbada19ad5e89feda114ccb6b4e1a03b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_a1_day_capstone_01 -> audio/generated/fr-FR/lexical/677dfe1ad5509df1a8cf6acba448dfe5ba1a99112712a74b0dfec2ed88c0f8e2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0dad53cc-4bf3-5074-a006-5e1df65c26b7', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_a1_day_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '717257e6fdb91b994d68fd7b8f48efebd365171cfb80bebfeba25a68b9d5fd6e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('04e94742-10dc-5b63-af24-4e3d4984c0aa', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0dad53cc-4bf3-5074-a006-5e1df65c26b7', 1), '717257e6fdb91b994d68fd7b8f48efebd365171cfb80bebfeba25a68b9d5fd6e',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/677dfe1ad5509df1a8cf6acba448dfe5ba1a99112712a74b0dfec2ed88c0f8e2.mp3', 1071, '2026-09-14 09:42:03.584534', 'a35a85c12fce72790f593595c623a248fd26933f7ece6b110667f93e7cb405e5', 'validated', '{"audio_key":"677dfe1ad5509df1a8cf6acba448dfe5ba1a99112712a74b0dfec2ed88c0f8e2","entity_key":"lx_a1_day_capstone_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a35a85c12fce72790f593595c623a248fd26933f7ece6b110667f93e7cb405e5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/677dfe1ad5509df1a8cf6acba448dfe5ba1a99112712a74b0dfec2ed88c0f8e2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_a1_day_capstone_01 -> audio/generated/fr-FR/lexical/677dfe1ad5509df1a8cf6acba448dfe5ba1a99112712a74b0dfec2ed88c0f8e2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a3dae009-70e5-580b-b97b-f3c17616d570', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_a1_day_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '717257e6fdb91b994d68fd7b8f48efebd365171cfb80bebfeba25a68b9d5fd6e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('57d0e650-9634-5398-94f0-736cfaf85737', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a3dae009-70e5-580b-b97b-f3c17616d570', 1), '717257e6fdb91b994d68fd7b8f48efebd365171cfb80bebfeba25a68b9d5fd6e',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/677dfe1ad5509df1a8cf6acba448dfe5ba1a99112712a74b0dfec2ed88c0f8e2.mp3', 1071, '2026-09-14 09:42:03.584534', 'a35a85c12fce72790f593595c623a248fd26933f7ece6b110667f93e7cb405e5', 'validated', '{"audio_key":"677dfe1ad5509df1a8cf6acba448dfe5ba1a99112712a74b0dfec2ed88c0f8e2","entity_key":"wf_a1_day_capstone_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a35a85c12fce72790f593595c623a248fd26933f7ece6b110667f93e7cb405e5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/677dfe1ad5509df1a8cf6acba448dfe5ba1a99112712a74b0dfec2ed88c0f8e2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_daily_actions_03 -> audio/generated/fr-FR/lexical/68bb0b80b8472deff9e4d06d44b7a03ce81e554bab0c89c9c7641166f54df530.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2d9ba41f-5286-5b3b-9ef6-016339bed8fe', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_daily_actions_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c670b23a57410814670c1905e62ff9e31a93d5eefb523fc5728a4c9a87896a12'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1b301f54-96d6-569b-844d-ab096dc89548', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2d9ba41f-5286-5b3b-9ef6-016339bed8fe', 1), 'c670b23a57410814670c1905e62ff9e31a93d5eefb523fc5728a4c9a87896a12',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/68bb0b80b8472deff9e4d06d44b7a03ce81e554bab0c89c9c7641166f54df530.mp3', 862, '2026-09-14 09:42:04.282339', '075ed3c1a6916fb77bd5bd91d72bd5dbaa61c8d4f5cc9b840ecfbf8ef0a154ac', 'validated', '{"audio_key":"68bb0b80b8472deff9e4d06d44b7a03ce81e554bab0c89c9c7641166f54df530","entity_key":"lx_daily_actions_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"075ed3c1a6916fb77bd5bd91d72bd5dbaa61c8d4f5cc9b840ecfbf8ef0a154ac","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/68bb0b80b8472deff9e4d06d44b7a03ce81e554bab0c89c9c7641166f54df530.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_daily_actions_03 -> audio/generated/fr-FR/lexical/68bb0b80b8472deff9e4d06d44b7a03ce81e554bab0c89c9c7641166f54df530.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('beed698c-7618-5eea-bd9d-7404bec14740', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_daily_actions_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c670b23a57410814670c1905e62ff9e31a93d5eefb523fc5728a4c9a87896a12'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e4e873df-13ef-5bca-b336-c03645d8c601', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('beed698c-7618-5eea-bd9d-7404bec14740', 1), 'c670b23a57410814670c1905e62ff9e31a93d5eefb523fc5728a4c9a87896a12',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/68bb0b80b8472deff9e4d06d44b7a03ce81e554bab0c89c9c7641166f54df530.mp3', 862, '2026-09-14 09:42:04.282339', '075ed3c1a6916fb77bd5bd91d72bd5dbaa61c8d4f5cc9b840ecfbf8ef0a154ac', 'validated', '{"audio_key":"68bb0b80b8472deff9e4d06d44b7a03ce81e554bab0c89c9c7641166f54df530","entity_key":"wf_daily_actions_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"075ed3c1a6916fb77bd5bd91d72bd5dbaa61c8d4f5cc9b840ecfbf8ef0a154ac","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/68bb0b80b8472deff9e4d06d44b7a03ce81e554bab0c89c9c7641166f54df530.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_daily_actions_06 -> audio/generated/fr-FR/lexical/78459008ba2235f7cfc76d6c544935c031b7d6f3200ee1041832b0f6ab977d86.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7f836df4-8050-5d3d-a17a-28890a032da8', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_daily_actions_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5382d606a8f48af874115167d2dc4660ed34889f4526258cc1639b4f6bb9b7cf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f47b193f-ee5c-5469-842d-27ce9307d402', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7f836df4-8050-5d3d-a17a-28890a032da8', 1), '5382d606a8f48af874115167d2dc4660ed34889f4526258cc1639b4f6bb9b7cf',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/78459008ba2235f7cfc76d6c544935c031b7d6f3200ee1041832b0f6ab977d86.mp3', 914, '2026-09-14 09:42:04.635406', 'fa50f0b8fd3edd5517f0e9f0ae4978224f90481c40c169cd41336c6ce18b3d02', 'validated', '{"audio_key":"78459008ba2235f7cfc76d6c544935c031b7d6f3200ee1041832b0f6ab977d86","entity_key":"lx_daily_actions_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"fa50f0b8fd3edd5517f0e9f0ae4978224f90481c40c169cd41336c6ce18b3d02","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/78459008ba2235f7cfc76d6c544935c031b7d6f3200ee1041832b0f6ab977d86.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_daily_actions_06 -> audio/generated/fr-FR/lexical/78459008ba2235f7cfc76d6c544935c031b7d6f3200ee1041832b0f6ab977d86.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f9d503ac-77cf-5784-bf48-6bf379b1f291', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_daily_actions_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5382d606a8f48af874115167d2dc4660ed34889f4526258cc1639b4f6bb9b7cf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bf8b564b-03bc-5d47-b1d2-eab5924bf598', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f9d503ac-77cf-5784-bf48-6bf379b1f291', 1), '5382d606a8f48af874115167d2dc4660ed34889f4526258cc1639b4f6bb9b7cf',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/78459008ba2235f7cfc76d6c544935c031b7d6f3200ee1041832b0f6ab977d86.mp3', 914, '2026-09-14 09:42:04.635406', 'fa50f0b8fd3edd5517f0e9f0ae4978224f90481c40c169cd41336c6ce18b3d02', 'validated', '{"audio_key":"78459008ba2235f7cfc76d6c544935c031b7d6f3200ee1041832b0f6ab977d86","entity_key":"wf_daily_actions_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"fa50f0b8fd3edd5517f0e9f0ae4978224f90481c40c169cd41336c6ce18b3d02","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/78459008ba2235f7cfc76d6c544935c031b7d6f3200ee1041832b0f6ab977d86.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_shopping_and_prices_04 -> audio/generated/fr-FR/lexical/79de71bc80c5c69cefa558f8b9fb56804970ece741152beea10c2a422669becb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('60c5762a-f3eb-5c1b-8df7-72e7d1116a85', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_shopping_and_prices_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2d18187cbcaa07afa96918399f8f3d3e966c7eaef05bd5c4d0d00f247c1fd026'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6e6d9b8a-de79-547b-8c8e-339ba4ef72bf', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('60c5762a-f3eb-5c1b-8df7-72e7d1116a85', 1), '2d18187cbcaa07afa96918399f8f3d3e966c7eaef05bd5c4d0d00f247c1fd026',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/79de71bc80c5c69cefa558f8b9fb56804970ece741152beea10c2a422669becb.mp3', 1097, '2026-09-14 09:42:05.408593', '71a919defc79c9bc6056ba6387240777ce0b6b2616eb9c8280a691f3c0162b26', 'validated', '{"audio_key":"79de71bc80c5c69cefa558f8b9fb56804970ece741152beea10c2a422669becb","entity_key":"lx_shopping_and_prices_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"71a919defc79c9bc6056ba6387240777ce0b6b2616eb9c8280a691f3c0162b26","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/79de71bc80c5c69cefa558f8b9fb56804970ece741152beea10c2a422669becb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_shopping_and_prices_04 -> audio/generated/fr-FR/lexical/79de71bc80c5c69cefa558f8b9fb56804970ece741152beea10c2a422669becb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b9a73aa4-5560-546b-80c7-8fbf58390a41', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_shopping_and_prices_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2d18187cbcaa07afa96918399f8f3d3e966c7eaef05bd5c4d0d00f247c1fd026'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('30fdc605-8203-5164-9931-49e312bcdbc0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b9a73aa4-5560-546b-80c7-8fbf58390a41', 1), '2d18187cbcaa07afa96918399f8f3d3e966c7eaef05bd5c4d0d00f247c1fd026',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/79de71bc80c5c69cefa558f8b9fb56804970ece741152beea10c2a422669becb.mp3', 1097, '2026-09-14 09:42:05.408593', '71a919defc79c9bc6056ba6387240777ce0b6b2616eb9c8280a691f3c0162b26', 'validated', '{"audio_key":"79de71bc80c5c69cefa558f8b9fb56804970ece741152beea10c2a422669becb","entity_key":"wf_shopping_and_prices_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"71a919defc79c9bc6056ba6387240777ce0b6b2616eb9c8280a691f3c0162b26","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/79de71bc80c5c69cefa558f8b9fb56804970ece741152beea10c2a422669becb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_getting_around_05 -> audio/generated/fr-FR/lexical/7c46d59548af481d9f3660dedbd0f838a8848af39aa4c4bb7dd025e3b29cfad8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0ea82ef2-9850-5cb5-b7f7-c22141c6cf44', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_getting_around_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '612fd4b46b1ac21970d3f556cde9fa09b4205648e0cd503b7308140c59822369'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('41cc2cfb-18e2-502e-bdce-7e2364aee077', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0ea82ef2-9850-5cb5-b7f7-c22141c6cf44', 1), '612fd4b46b1ac21970d3f556cde9fa09b4205648e0cd503b7308140c59822369',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/7c46d59548af481d9f3660dedbd0f838a8848af39aa4c4bb7dd025e3b29cfad8.mp3', 914, '2026-09-14 09:42:05.650898', 'b1eb22cbc8a43dc15362839c157e47f523e1eeb1f9970d9a1c57dfa92deb26f8', 'validated', '{"audio_key":"7c46d59548af481d9f3660dedbd0f838a8848af39aa4c4bb7dd025e3b29cfad8","entity_key":"lx_getting_around_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b1eb22cbc8a43dc15362839c157e47f523e1eeb1f9970d9a1c57dfa92deb26f8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/7c46d59548af481d9f3660dedbd0f838a8848af39aa4c4bb7dd025e3b29cfad8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_getting_around_05 -> audio/generated/fr-FR/lexical/7c46d59548af481d9f3660dedbd0f838a8848af39aa4c4bb7dd025e3b29cfad8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5663ead3-e0e4-5513-ab84-cae8b3a13dae', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_getting_around_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '612fd4b46b1ac21970d3f556cde9fa09b4205648e0cd503b7308140c59822369'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7a4b1fff-4641-5128-b78e-3211a6fb9fcb', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5663ead3-e0e4-5513-ab84-cae8b3a13dae', 1), '612fd4b46b1ac21970d3f556cde9fa09b4205648e0cd503b7308140c59822369',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/7c46d59548af481d9f3660dedbd0f838a8848af39aa4c4bb7dd025e3b29cfad8.mp3', 914, '2026-09-14 09:42:05.650898', 'b1eb22cbc8a43dc15362839c157e47f523e1eeb1f9970d9a1c57dfa92deb26f8', 'validated', '{"audio_key":"7c46d59548af481d9f3660dedbd0f838a8848af39aa4c4bb7dd025e3b29cfad8","entity_key":"wf_getting_around_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b1eb22cbc8a43dc15362839c157e47f523e1eeb1f9970d9a1c57dfa92deb26f8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/7c46d59548af481d9f3660dedbd0f838a8848af39aa4c4bb7dd025e3b29cfad8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_home_and_location_02 -> audio/generated/fr-FR/lexical/7c6ebd6ae4f4c42b3ac0b5df4e518c362b96460b6044a76a2b939c67d4cdf178.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('cce977ac-2681-56e0-9076-91f481b274e1', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_home_and_location_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8144f66356b9464b503afd213dfe1bb1d80e9cb934dcad3c6d1450e93685a5f2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a1fec080-2eec-5aca-a8b2-bc15effc5e60', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('cce977ac-2681-56e0-9076-91f481b274e1', 1), '8144f66356b9464b503afd213dfe1bb1d80e9cb934dcad3c6d1450e93685a5f2',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/7c6ebd6ae4f4c42b3ac0b5df4e518c362b96460b6044a76a2b939c67d4cdf178.mp3', 914, '2026-09-14 09:42:06.386806', '0af41860dc1ef863853493c19dbdaddb8b63a5097544ce18197a52b2bca2808b', 'validated', '{"audio_key":"7c6ebd6ae4f4c42b3ac0b5df4e518c362b96460b6044a76a2b939c67d4cdf178","entity_key":"lx_home_and_location_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0af41860dc1ef863853493c19dbdaddb8b63a5097544ce18197a52b2bca2808b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/7c6ebd6ae4f4c42b3ac0b5df4e518c362b96460b6044a76a2b939c67d4cdf178.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_home_and_location_02 -> audio/generated/fr-FR/lexical/7c6ebd6ae4f4c42b3ac0b5df4e518c362b96460b6044a76a2b939c67d4cdf178.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('762ccf3f-12d9-5aff-b844-fc45a36f6929', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_home_and_location_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8144f66356b9464b503afd213dfe1bb1d80e9cb934dcad3c6d1450e93685a5f2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8a2354ab-d0ab-5365-98ca-8ec760b3b9a1', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('762ccf3f-12d9-5aff-b844-fc45a36f6929', 1), '8144f66356b9464b503afd213dfe1bb1d80e9cb934dcad3c6d1450e93685a5f2',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/7c6ebd6ae4f4c42b3ac0b5df4e518c362b96460b6044a76a2b939c67d4cdf178.mp3', 914, '2026-09-14 09:42:06.386806', '0af41860dc1ef863853493c19dbdaddb8b63a5097544ce18197a52b2bca2808b', 'validated', '{"audio_key":"7c6ebd6ae4f4c42b3ac0b5df4e518c362b96460b6044a76a2b939c67d4cdf178","entity_key":"wf_home_and_location_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0af41860dc1ef863853493c19dbdaddb8b63a5097544ce18197a52b2bca2808b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/7c6ebd6ae4f4c42b3ac0b5df4e518c362b96460b6044a76a2b939c67d4cdf178.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_cafe_basics_04 -> audio/generated/fr-FR/lexical/7f5bde43c3bb7289535ee2751d0eca87c4f274a1264db93dc3b298a3b8be4ed7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a12b7caa-26cd-5205-b3bb-e65b1fb3c442', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_cafe_basics_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fbb1eeb89d064f2680346a80fc5c249bde3f73179ebd955b226aadf6d9abec7b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('44bb787d-2751-5394-bee5-fefd86c175b7', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a12b7caa-26cd-5205-b3bb-e65b1fb3c442', 1), 'fbb1eeb89d064f2680346a80fc5c249bde3f73179ebd955b226aadf6d9abec7b',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/7f5bde43c3bb7289535ee2751d0eca87c4f274a1264db93dc3b298a3b8be4ed7.mp3', 1018, '2026-09-14 09:42:06.681327', 'c5d1614b78c2796407c465b6ef1a2421bf7b170d60013b4d598585c45d916a8f', 'validated', '{"audio_key":"7f5bde43c3bb7289535ee2751d0eca87c4f274a1264db93dc3b298a3b8be4ed7","entity_key":"lx_cafe_basics_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c5d1614b78c2796407c465b6ef1a2421bf7b170d60013b4d598585c45d916a8f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/7f5bde43c3bb7289535ee2751d0eca87c4f274a1264db93dc3b298a3b8be4ed7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_cafe_basics_04 -> audio/generated/fr-FR/lexical/7f5bde43c3bb7289535ee2751d0eca87c4f274a1264db93dc3b298a3b8be4ed7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('61470716-cb9a-57de-a892-a8a827c40734', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_cafe_basics_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fbb1eeb89d064f2680346a80fc5c249bde3f73179ebd955b226aadf6d9abec7b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('01182972-7c5d-5826-a191-1088be4f1ef8', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('61470716-cb9a-57de-a892-a8a827c40734', 1), 'fbb1eeb89d064f2680346a80fc5c249bde3f73179ebd955b226aadf6d9abec7b',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/7f5bde43c3bb7289535ee2751d0eca87c4f274a1264db93dc3b298a3b8be4ed7.mp3', 1018, '2026-09-14 09:42:06.681327', 'c5d1614b78c2796407c465b6ef1a2421bf7b170d60013b4d598585c45d916a8f', 'validated', '{"audio_key":"7f5bde43c3bb7289535ee2751d0eca87c4f274a1264db93dc3b298a3b8be4ed7","entity_key":"wf_cafe_basics_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c5d1614b78c2796407c465b6ef1a2421bf7b170d60013b4d598585c45d916a8f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/7f5bde43c3bb7289535ee2751d0eca87c4f274a1264db93dc3b298a3b8be4ed7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_family_and_people_04 -> audio/generated/fr-FR/lexical/808ca58578dc8a2830586fea6b43b8b1c23872c8f763df72730a7ecbb654be8f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3ba6f62c-150e-515d-b085-f00750868925', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_family_and_people_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '38213ce57af205dfbc766d01369e29ec1ab67d62f740f3502fd70b934f710639'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c1967e29-34e8-557e-9bf3-2b9b5a9f40d6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3ba6f62c-150e-515d-b085-f00750868925', 1), '38213ce57af205dfbc766d01369e29ec1ab67d62f740f3502fd70b934f710639',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/808ca58578dc8a2830586fea6b43b8b1c23872c8f763df72730a7ecbb654be8f.mp3', 914, '2026-09-14 09:42:07.411605', 'd4cecd0cf73f1c210467d905c6019ab2bed7b253ba09edc1f0c869f714ec94ef', 'validated', '{"audio_key":"808ca58578dc8a2830586fea6b43b8b1c23872c8f763df72730a7ecbb654be8f","entity_key":"lx_family_and_people_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d4cecd0cf73f1c210467d905c6019ab2bed7b253ba09edc1f0c869f714ec94ef","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/808ca58578dc8a2830586fea6b43b8b1c23872c8f763df72730a7ecbb654be8f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_family_and_people_04 -> audio/generated/fr-FR/lexical/808ca58578dc8a2830586fea6b43b8b1c23872c8f763df72730a7ecbb654be8f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('220d50d1-970d-5ed2-8ffb-3f5dafc441e1', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_family_and_people_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '38213ce57af205dfbc766d01369e29ec1ab67d62f740f3502fd70b934f710639'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('02051712-7bfb-5904-9932-6253a4566001', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('220d50d1-970d-5ed2-8ffb-3f5dafc441e1', 1), '38213ce57af205dfbc766d01369e29ec1ab67d62f740f3502fd70b934f710639',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/808ca58578dc8a2830586fea6b43b8b1c23872c8f763df72730a7ecbb654be8f.mp3', 914, '2026-09-14 09:42:07.411605', 'd4cecd0cf73f1c210467d905c6019ab2bed7b253ba09edc1f0c869f714ec94ef', 'validated', '{"audio_key":"808ca58578dc8a2830586fea6b43b8b1c23872c8f763df72730a7ecbb654be8f","entity_key":"wf_family_and_people_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d4cecd0cf73f1c210467d905c6019ab2bed7b253ba09edc1f0c869f714ec94ef","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/808ca58578dc8a2830586fea6b43b8b1c23872c8f763df72730a7ecbb654be8f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_a1_day_capstone_04 -> audio/generated/fr-FR/lexical/80b78307896c78f085e95fbd5addb468ca65cd1db92114790c96b64e43684317.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('03798829-15aa-54fa-899a-2f07656bd17c', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_a1_day_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a76eb07dfe33758fa122d895a4ce04f39380e5ee5a6c7ce2194d083677ff5c39'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9e47deaa-699d-5187-9bf1-808b754e59f0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('03798829-15aa-54fa-899a-2f07656bd17c', 1), 'a76eb07dfe33758fa122d895a4ce04f39380e5ee5a6c7ce2194d083677ff5c39',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/80b78307896c78f085e95fbd5addb468ca65cd1db92114790c96b64e43684317.mp3', 1149, '2026-09-14 09:42:07.722735', '7d29467d8bb2f8ab624ad44e7cd202771a0186c476f9f6bf7d87338d28ddd6ad', 'validated', '{"audio_key":"80b78307896c78f085e95fbd5addb468ca65cd1db92114790c96b64e43684317","entity_key":"lx_a1_day_capstone_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7d29467d8bb2f8ab624ad44e7cd202771a0186c476f9f6bf7d87338d28ddd6ad","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/80b78307896c78f085e95fbd5addb468ca65cd1db92114790c96b64e43684317.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_a1_day_capstone_04 -> audio/generated/fr-FR/lexical/80b78307896c78f085e95fbd5addb468ca65cd1db92114790c96b64e43684317.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d5d4726b-4c02-5c24-9e2d-9a09f92efee6', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_a1_day_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a76eb07dfe33758fa122d895a4ce04f39380e5ee5a6c7ce2194d083677ff5c39'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('938241ff-71b9-5bba-bb79-f8171ee9dd98', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d5d4726b-4c02-5c24-9e2d-9a09f92efee6', 1), 'a76eb07dfe33758fa122d895a4ce04f39380e5ee5a6c7ce2194d083677ff5c39',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/80b78307896c78f085e95fbd5addb468ca65cd1db92114790c96b64e43684317.mp3', 1149, '2026-09-14 09:42:07.722735', '7d29467d8bb2f8ab624ad44e7cd202771a0186c476f9f6bf7d87338d28ddd6ad', 'validated', '{"audio_key":"80b78307896c78f085e95fbd5addb468ca65cd1db92114790c96b64e43684317","entity_key":"wf_a1_day_capstone_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7d29467d8bb2f8ab624ad44e7cd202771a0186c476f9f6bf7d87338d28ddd6ad","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/80b78307896c78f085e95fbd5addb468ca65cd1db92114790c96b64e43684317.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_daily_actions_02 -> audio/generated/fr-FR/lexical/83c77801170a7c5d58438578aa8bc82b22ad47ab2e0067ff997f47b86a024511.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f96f1da9-20b3-5cd1-86fd-8a90569a633d', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_daily_actions_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1b66c80a0b1453f00615e300f673a76998fac6c8ebe9a05daec1ed201a6d4927'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c3c53f30-b50a-54ca-88b8-9bd0bbd126d5', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f96f1da9-20b3-5cd1-86fd-8a90569a633d', 1), '1b66c80a0b1453f00615e300f673a76998fac6c8ebe9a05daec1ed201a6d4927',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/83c77801170a7c5d58438578aa8bc82b22ad47ab2e0067ff997f47b86a024511.mp3', 1071, '2026-09-14 09:42:08.465177', 'c374d6475ee9883c24deb683b47ea2dcc8edc0c26395d91cbcfea8b36aa9135a', 'validated', '{"audio_key":"83c77801170a7c5d58438578aa8bc82b22ad47ab2e0067ff997f47b86a024511","entity_key":"lx_daily_actions_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c374d6475ee9883c24deb683b47ea2dcc8edc0c26395d91cbcfea8b36aa9135a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/83c77801170a7c5d58438578aa8bc82b22ad47ab2e0067ff997f47b86a024511.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_daily_actions_02 -> audio/generated/fr-FR/lexical/83c77801170a7c5d58438578aa8bc82b22ad47ab2e0067ff997f47b86a024511.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('fd64f32d-b878-51ce-b4e5-bd69c3317fb3', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_daily_actions_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1b66c80a0b1453f00615e300f673a76998fac6c8ebe9a05daec1ed201a6d4927'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('143ed435-e248-54a7-88d9-ab34c550e580', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('fd64f32d-b878-51ce-b4e5-bd69c3317fb3', 1), '1b66c80a0b1453f00615e300f673a76998fac6c8ebe9a05daec1ed201a6d4927',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/83c77801170a7c5d58438578aa8bc82b22ad47ab2e0067ff997f47b86a024511.mp3', 1071, '2026-09-14 09:42:08.465177', 'c374d6475ee9883c24deb683b47ea2dcc8edc0c26395d91cbcfea8b36aa9135a', 'validated', '{"audio_key":"83c77801170a7c5d58438578aa8bc82b22ad47ab2e0067ff997f47b86a024511","entity_key":"wf_daily_actions_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c374d6475ee9883c24deb683b47ea2dcc8edc0c26395d91cbcfea8b36aa9135a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/83c77801170a7c5d58438578aa8bc82b22ad47ab2e0067ff997f47b86a024511.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_getting_around_03 -> audio/generated/fr-FR/lexical/9cfc98fe6540d19b21cc58cc396010fca116418d4cd5d4f371f9e02ebac5f9ed.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f0b87610-aa96-5716-9e52-1efe7694511a', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_getting_around_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '04e027e4990a203f4899f7e87c2d5ff6b9019e9565795619a59ce06c099560d4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('60607e81-5ab7-5ce9-9148-3d663170dcb6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f0b87610-aa96-5716-9e52-1efe7694511a', 1), '04e027e4990a203f4899f7e87c2d5ff6b9019e9565795619a59ce06c099560d4',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/9cfc98fe6540d19b21cc58cc396010fca116418d4cd5d4f371f9e02ebac5f9ed.mp3', 862, '2026-09-14 09:42:08.769406', 'e3ca4d06471ac8a5f4b2ad085014edb112d9d44ea53a9df6d7b02ab1b9d0c4a0', 'validated', '{"audio_key":"9cfc98fe6540d19b21cc58cc396010fca116418d4cd5d4f371f9e02ebac5f9ed","entity_key":"lx_getting_around_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e3ca4d06471ac8a5f4b2ad085014edb112d9d44ea53a9df6d7b02ab1b9d0c4a0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/9cfc98fe6540d19b21cc58cc396010fca116418d4cd5d4f371f9e02ebac5f9ed.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_getting_around_03 -> audio/generated/fr-FR/lexical/9cfc98fe6540d19b21cc58cc396010fca116418d4cd5d4f371f9e02ebac5f9ed.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2a2abc5a-ef5c-524e-8cc4-efa55e5f500a', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_getting_around_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '04e027e4990a203f4899f7e87c2d5ff6b9019e9565795619a59ce06c099560d4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f89fbf86-0e87-52f8-b344-9977145805c5', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2a2abc5a-ef5c-524e-8cc4-efa55e5f500a', 1), '04e027e4990a203f4899f7e87c2d5ff6b9019e9565795619a59ce06c099560d4',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/9cfc98fe6540d19b21cc58cc396010fca116418d4cd5d4f371f9e02ebac5f9ed.mp3', 862, '2026-09-14 09:42:08.769406', 'e3ca4d06471ac8a5f4b2ad085014edb112d9d44ea53a9df6d7b02ab1b9d0c4a0', 'validated', '{"audio_key":"9cfc98fe6540d19b21cc58cc396010fca116418d4cd5d4f371f9e02ebac5f9ed","entity_key":"wf_getting_around_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e3ca4d06471ac8a5f4b2ad085014edb112d9d44ea53a9df6d7b02ab1b9d0c4a0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/9cfc98fe6540d19b21cc58cc396010fca116418d4cd5d4f371f9e02ebac5f9ed.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_family_and_people_06 -> audio/generated/fr-FR/lexical/9ea1fb153446a0fb15d44d0a05c01a32eb17d4afd1c7151667e031857da1cfa7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6839c3c2-c7d1-5027-ba10-a6d3192fa187', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_family_and_people_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '277875b970f03faef2d54af524435e5f1f37166381cae27307a7aa29c2fe5c1d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cb3ee05d-100b-5d52-aea6-144b43346088', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6839c3c2-c7d1-5027-ba10-a6d3192fa187', 1), '277875b970f03faef2d54af524435e5f1f37166381cae27307a7aa29c2fe5c1d',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/9ea1fb153446a0fb15d44d0a05c01a32eb17d4afd1c7151667e031857da1cfa7.mp3', 914, '2026-09-14 09:42:09.536246', 'e0a3de98cc9f8c464e1b65868f689df855e81a55116fd903b41ef3753586d6d4', 'validated', '{"audio_key":"9ea1fb153446a0fb15d44d0a05c01a32eb17d4afd1c7151667e031857da1cfa7","entity_key":"lx_family_and_people_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e0a3de98cc9f8c464e1b65868f689df855e81a55116fd903b41ef3753586d6d4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/9ea1fb153446a0fb15d44d0a05c01a32eb17d4afd1c7151667e031857da1cfa7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_family_and_people_06 -> audio/generated/fr-FR/lexical/9ea1fb153446a0fb15d44d0a05c01a32eb17d4afd1c7151667e031857da1cfa7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2a1ae969-d3a5-53d7-91f7-53aad0f9df45', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_family_and_people_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '277875b970f03faef2d54af524435e5f1f37166381cae27307a7aa29c2fe5c1d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('915ad254-c75b-5e52-8815-4dc45a925c1a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2a1ae969-d3a5-53d7-91f7-53aad0f9df45', 1), '277875b970f03faef2d54af524435e5f1f37166381cae27307a7aa29c2fe5c1d',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/9ea1fb153446a0fb15d44d0a05c01a32eb17d4afd1c7151667e031857da1cfa7.mp3', 914, '2026-09-14 09:42:09.536246', 'e0a3de98cc9f8c464e1b65868f689df855e81a55116fd903b41ef3753586d6d4', 'validated', '{"audio_key":"9ea1fb153446a0fb15d44d0a05c01a32eb17d4afd1c7151667e031857da1cfa7","entity_key":"wf_family_and_people_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e0a3de98cc9f8c464e1b65868f689df855e81a55116fd903b41ef3753586d6d4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/9ea1fb153446a0fb15d44d0a05c01a32eb17d4afd1c7151667e031857da1cfa7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_shopping_and_prices_05 -> audio/generated/fr-FR/lexical/a361046a99c8410745031a8b40e29707e6150abf52712c5ba6463212b6aa32dc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('84107235-ade2-584d-8cd8-cf2dd607d46d', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_shopping_and_prices_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '319814994806e48bc952ddaeaf3514562ef4639fc4ae103f1b3c3adcd2007cb6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5fbb04c9-9276-57dc-8e52-a12c2a6a39c9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('84107235-ade2-584d-8cd8-cf2dd607d46d', 1), '319814994806e48bc952ddaeaf3514562ef4639fc4ae103f1b3c3adcd2007cb6',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/a361046a99c8410745031a8b40e29707e6150abf52712c5ba6463212b6aa32dc.mp3', 1071, '2026-09-14 09:42:09.836731', '9ec53e13d43da5f2adfd9c71203a3c626f5b7ced1e1874e10411984896716a21', 'validated', '{"audio_key":"a361046a99c8410745031a8b40e29707e6150abf52712c5ba6463212b6aa32dc","entity_key":"lx_shopping_and_prices_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9ec53e13d43da5f2adfd9c71203a3c626f5b7ced1e1874e10411984896716a21","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/a361046a99c8410745031a8b40e29707e6150abf52712c5ba6463212b6aa32dc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_shopping_and_prices_05 -> audio/generated/fr-FR/lexical/a361046a99c8410745031a8b40e29707e6150abf52712c5ba6463212b6aa32dc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c2cf7c27-068f-572f-9bfd-a71f2f0336bf', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_shopping_and_prices_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '319814994806e48bc952ddaeaf3514562ef4639fc4ae103f1b3c3adcd2007cb6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b43751f4-6ef1-5561-ae06-9629c0e05f2f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c2cf7c27-068f-572f-9bfd-a71f2f0336bf', 1), '319814994806e48bc952ddaeaf3514562ef4639fc4ae103f1b3c3adcd2007cb6',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/a361046a99c8410745031a8b40e29707e6150abf52712c5ba6463212b6aa32dc.mp3', 1071, '2026-09-14 09:42:09.836731', '9ec53e13d43da5f2adfd9c71203a3c626f5b7ced1e1874e10411984896716a21', 'validated', '{"audio_key":"a361046a99c8410745031a8b40e29707e6150abf52712c5ba6463212b6aa32dc","entity_key":"wf_shopping_and_prices_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9ec53e13d43da5f2adfd9c71203a3c626f5b7ced1e1874e10411984896716a21","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/a361046a99c8410745031a8b40e29707e6150abf52712c5ba6463212b6aa32dc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_a1_day_capstone_02 -> audio/generated/fr-FR/lexical/a49b4ff0a30e39f451a8001c384b60b8fd1db9901fd1c31595bfbbeb3637e9ac.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ffaa05c8-c6e7-5283-b042-11f0a38e5ecc', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_a1_day_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b25974fb8efd13e967bc83ad182150bc048369a0fe7b34c18c705b43aa4e62cd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3ed11557-dad1-5f33-b74f-188f833e3f88', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ffaa05c8-c6e7-5283-b042-11f0a38e5ecc', 1), 'b25974fb8efd13e967bc83ad182150bc048369a0fe7b34c18c705b43aa4e62cd',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/a49b4ff0a30e39f451a8001c384b60b8fd1db9901fd1c31595bfbbeb3637e9ac.mp3', 835, '2026-09-14 09:42:10.519447', 'c83f29ce9b89619262f51e6ec96c9163708e161fc7fcac8098864a16e78358a2', 'validated', '{"audio_key":"a49b4ff0a30e39f451a8001c384b60b8fd1db9901fd1c31595bfbbeb3637e9ac","entity_key":"lx_a1_day_capstone_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c83f29ce9b89619262f51e6ec96c9163708e161fc7fcac8098864a16e78358a2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/a49b4ff0a30e39f451a8001c384b60b8fd1db9901fd1c31595bfbbeb3637e9ac.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_a1_day_capstone_02 -> audio/generated/fr-FR/lexical/a49b4ff0a30e39f451a8001c384b60b8fd1db9901fd1c31595bfbbeb3637e9ac.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2566a23b-3d2a-547d-998b-a9e0d5198211', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_a1_day_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b25974fb8efd13e967bc83ad182150bc048369a0fe7b34c18c705b43aa4e62cd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2ade2495-23fb-5d62-aede-41f8f946ea37', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2566a23b-3d2a-547d-998b-a9e0d5198211', 1), 'b25974fb8efd13e967bc83ad182150bc048369a0fe7b34c18c705b43aa4e62cd',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/a49b4ff0a30e39f451a8001c384b60b8fd1db9901fd1c31595bfbbeb3637e9ac.mp3', 835, '2026-09-14 09:42:10.519447', 'c83f29ce9b89619262f51e6ec96c9163708e161fc7fcac8098864a16e78358a2', 'validated', '{"audio_key":"a49b4ff0a30e39f451a8001c384b60b8fd1db9901fd1c31595bfbbeb3637e9ac","entity_key":"wf_a1_day_capstone_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c83f29ce9b89619262f51e6ec96c9163708e161fc7fcac8098864a16e78358a2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/a49b4ff0a30e39f451a8001c384b60b8fd1db9901fd1c31595bfbbeb3637e9ac.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_getting_around_01 -> audio/generated/fr-FR/lexical/a6a657982347b758f4f25da43b8b1a02c758b5860d379e594a43e300162d7367.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('89b34757-a26d-5320-9368-28d75d9d45d7', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_getting_around_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dc8e5e575bf8c0e5e91135b937f063d32ee54ff05bbec9a1f51c91ca26bc7a40'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5fd8802f-3660-5b0a-b92a-336cf2c87b6a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('89b34757-a26d-5320-9368-28d75d9d45d7', 1), 'dc8e5e575bf8c0e5e91135b937f063d32ee54ff05bbec9a1f51c91ca26bc7a40',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/a6a657982347b758f4f25da43b8b1a02c758b5860d379e594a43e300162d7367.mp3', 914, '2026-09-14 09:42:10.836287', 'dd1c540f7911c1fbcae3169a60b81aeefad4bfa73232ea477beafce188c56c10', 'validated', '{"audio_key":"a6a657982347b758f4f25da43b8b1a02c758b5860d379e594a43e300162d7367","entity_key":"lx_getting_around_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"dd1c540f7911c1fbcae3169a60b81aeefad4bfa73232ea477beafce188c56c10","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/a6a657982347b758f4f25da43b8b1a02c758b5860d379e594a43e300162d7367.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_getting_around_01 -> audio/generated/fr-FR/lexical/a6a657982347b758f4f25da43b8b1a02c758b5860d379e594a43e300162d7367.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('80cb458e-0eb4-5d70-a37a-022df47c1083', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_getting_around_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dc8e5e575bf8c0e5e91135b937f063d32ee54ff05bbec9a1f51c91ca26bc7a40'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d8bd62de-b5cb-54fe-8949-2c7fbeda9821', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('80cb458e-0eb4-5d70-a37a-022df47c1083', 1), 'dc8e5e575bf8c0e5e91135b937f063d32ee54ff05bbec9a1f51c91ca26bc7a40',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/a6a657982347b758f4f25da43b8b1a02c758b5860d379e594a43e300162d7367.mp3', 914, '2026-09-14 09:42:10.836287', 'dd1c540f7911c1fbcae3169a60b81aeefad4bfa73232ea477beafce188c56c10', 'validated', '{"audio_key":"a6a657982347b758f4f25da43b8b1a02c758b5860d379e594a43e300162d7367","entity_key":"wf_getting_around_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"dd1c540f7911c1fbcae3169a60b81aeefad4bfa73232ea477beafce188c56c10","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/a6a657982347b758f4f25da43b8b1a02c758b5860d379e594a43e300162d7367.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_home_and_location_04 -> audio/generated/fr-FR/lexical/a734faddef80857648ce33c8868c373b345dd8672f76f0def35adac4025f3539.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0a6e6914-b6c1-57c0-acf5-434d67e6c445', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_home_and_location_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e898d581eca0af32208dd419cd98efabc7b7f0f78ca2502965de32ea7d8308a0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7d20bf0c-f27a-5ecf-a918-25439b0d8c7e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0a6e6914-b6c1-57c0-acf5-434d67e6c445', 1), 'e898d581eca0af32208dd419cd98efabc7b7f0f78ca2502965de32ea7d8308a0',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/a734faddef80857648ce33c8868c373b345dd8672f76f0def35adac4025f3539.mp3', 1071, '2026-09-14 09:42:11.626540', '9414b062ccdd1c47d28b707f25f918303c420028557e482f837cb3cf9bfad3c8', 'validated', '{"audio_key":"a734faddef80857648ce33c8868c373b345dd8672f76f0def35adac4025f3539","entity_key":"lx_home_and_location_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9414b062ccdd1c47d28b707f25f918303c420028557e482f837cb3cf9bfad3c8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/a734faddef80857648ce33c8868c373b345dd8672f76f0def35adac4025f3539.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_home_and_location_04 -> audio/generated/fr-FR/lexical/a734faddef80857648ce33c8868c373b345dd8672f76f0def35adac4025f3539.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a1df48c0-ef6b-5224-8b90-51d8c95fa3d0', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_home_and_location_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e898d581eca0af32208dd419cd98efabc7b7f0f78ca2502965de32ea7d8308a0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('93ccf9b7-d263-539a-80fe-4225c231af41', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a1df48c0-ef6b-5224-8b90-51d8c95fa3d0', 1), 'e898d581eca0af32208dd419cd98efabc7b7f0f78ca2502965de32ea7d8308a0',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/a734faddef80857648ce33c8868c373b345dd8672f76f0def35adac4025f3539.mp3', 1071, '2026-09-14 09:42:11.626540', '9414b062ccdd1c47d28b707f25f918303c420028557e482f837cb3cf9bfad3c8', 'validated', '{"audio_key":"a734faddef80857648ce33c8868c373b345dd8672f76f0def35adac4025f3539","entity_key":"wf_home_and_location_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9414b062ccdd1c47d28b707f25f918303c420028557e482f837cb3cf9bfad3c8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/a734faddef80857648ce33c8868c373b345dd8672f76f0def35adac4025f3539.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_articles_and_objects_03 -> audio/generated/fr-FR/lexical/a9cb63a397a4fcd3e38311716bcb055567d65c444e480f62f2f0c827a73f2755.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2f528bcd-1221-54fa-8ca1-bc95d5d9c33e', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_articles_and_objects_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e0021777f405463edcfd8af608955ee47b8b4c575dc05d790d14f45bb5c3a540'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8f2f1064-f41b-529a-ae4b-48b254be2a60', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2f528bcd-1221-54fa-8ca1-bc95d5d9c33e', 1), 'e0021777f405463edcfd8af608955ee47b8b4c575dc05d790d14f45bb5c3a540',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/a9cb63a397a4fcd3e38311716bcb055567d65c444e480f62f2f0c827a73f2755.mp3', 1071, '2026-09-14 09:42:11.865111', 'f5aae265bf9cac59d5123412fcac1c9827c57b60c5d453fbf04d6a6dd12e7cc6', 'validated', '{"audio_key":"a9cb63a397a4fcd3e38311716bcb055567d65c444e480f62f2f0c827a73f2755","entity_key":"lx_articles_and_objects_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f5aae265bf9cac59d5123412fcac1c9827c57b60c5d453fbf04d6a6dd12e7cc6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/a9cb63a397a4fcd3e38311716bcb055567d65c444e480f62f2f0c827a73f2755.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_articles_and_objects_03 -> audio/generated/fr-FR/lexical/a9cb63a397a4fcd3e38311716bcb055567d65c444e480f62f2f0c827a73f2755.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f465fabe-29ed-5817-9715-156cddeb6674', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_articles_and_objects_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e0021777f405463edcfd8af608955ee47b8b4c575dc05d790d14f45bb5c3a540'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3056fd60-d307-510e-a65e-c70133f54b2a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f465fabe-29ed-5817-9715-156cddeb6674', 1), 'e0021777f405463edcfd8af608955ee47b8b4c575dc05d790d14f45bb5c3a540',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/a9cb63a397a4fcd3e38311716bcb055567d65c444e480f62f2f0c827a73f2755.mp3', 1071, '2026-09-14 09:42:11.865111', 'f5aae265bf9cac59d5123412fcac1c9827c57b60c5d453fbf04d6a6dd12e7cc6', 'validated', '{"audio_key":"a9cb63a397a4fcd3e38311716bcb055567d65c444e480f62f2f0c827a73f2755","entity_key":"wf_articles_and_objects_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f5aae265bf9cac59d5123412fcac1c9827c57b60c5d453fbf04d6a6dd12e7cc6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/a9cb63a397a4fcd3e38311716bcb055567d65c444e480f62f2f0c827a73f2755.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_family_and_people_01 -> audio/generated/fr-FR/lexical/abda985e373af9aaf200212118ad158ae614363f2f10e86d452e46ebee2c367b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('93e86262-b706-57bc-998e-e3f7d56a4d74', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_family_and_people_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '808483d88160710589a882d4106bb1a81866c56925cbc62084c138a51e640504'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8953d90b-a332-5467-8102-52875aead980', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('93e86262-b706-57bc-998e-e3f7d56a4d74', 1), '808483d88160710589a882d4106bb1a81866c56925cbc62084c138a51e640504',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/abda985e373af9aaf200212118ad158ae614363f2f10e86d452e46ebee2c367b.mp3', 783, '2026-09-14 09:42:12.736513', '524f6126703432997acef7a66054babbfd5dd713a4b11ff8053dcf83591f8424', 'validated', '{"audio_key":"abda985e373af9aaf200212118ad158ae614363f2f10e86d452e46ebee2c367b","entity_key":"lx_family_and_people_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"524f6126703432997acef7a66054babbfd5dd713a4b11ff8053dcf83591f8424","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/abda985e373af9aaf200212118ad158ae614363f2f10e86d452e46ebee2c367b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_family_and_people_01 -> audio/generated/fr-FR/lexical/abda985e373af9aaf200212118ad158ae614363f2f10e86d452e46ebee2c367b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1c1805c6-37d5-5082-a24f-b8299773ea86', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_family_and_people_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '808483d88160710589a882d4106bb1a81866c56925cbc62084c138a51e640504'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('719dbe57-eca2-5cf8-84f2-2e652d1884e2', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1c1805c6-37d5-5082-a24f-b8299773ea86', 1), '808483d88160710589a882d4106bb1a81866c56925cbc62084c138a51e640504',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/abda985e373af9aaf200212118ad158ae614363f2f10e86d452e46ebee2c367b.mp3', 783, '2026-09-14 09:42:12.736513', '524f6126703432997acef7a66054babbfd5dd713a4b11ff8053dcf83591f8424', 'validated', '{"audio_key":"abda985e373af9aaf200212118ad158ae614363f2f10e86d452e46ebee2c367b","entity_key":"wf_family_and_people_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"524f6126703432997acef7a66054babbfd5dd713a4b11ff8053dcf83591f8424","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/abda985e373af9aaf200212118ad158ae614363f2f10e86d452e46ebee2c367b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_cafe_basics_06 -> audio/generated/fr-FR/lexical/b044054ab1425bf4aed43a9502d061deea8387b3fd374d37e377ee7ae79d3093.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('56805d1d-8995-5d75-ac3e-4be40e4ed1f6', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_cafe_basics_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a96b5cac90bfd6200319f968cdb34c1311a98b19b01a246432e7e2767f17387f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('46bf4d5f-d654-5e04-bce8-906bf7f863e5', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('56805d1d-8995-5d75-ac3e-4be40e4ed1f6', 1), 'a96b5cac90bfd6200319f968cdb34c1311a98b19b01a246432e7e2767f17387f',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/b044054ab1425bf4aed43a9502d061deea8387b3fd374d37e377ee7ae79d3093.mp3', 835, '2026-09-14 09:42:12.884449', '421475bbfea50244d0bbfe0b09c10b042bbd62ab0e5692a006b55b146d1e55b1', 'validated', '{"audio_key":"b044054ab1425bf4aed43a9502d061deea8387b3fd374d37e377ee7ae79d3093","entity_key":"lx_cafe_basics_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"421475bbfea50244d0bbfe0b09c10b042bbd62ab0e5692a006b55b146d1e55b1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/b044054ab1425bf4aed43a9502d061deea8387b3fd374d37e377ee7ae79d3093.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_cafe_basics_06 -> audio/generated/fr-FR/lexical/b044054ab1425bf4aed43a9502d061deea8387b3fd374d37e377ee7ae79d3093.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b0ef3014-3e70-5cf8-a587-a07726eb4986', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_cafe_basics_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a96b5cac90bfd6200319f968cdb34c1311a98b19b01a246432e7e2767f17387f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5df36cbe-86ee-52fb-8454-b6615938d4f9', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b0ef3014-3e70-5cf8-a587-a07726eb4986', 1), 'a96b5cac90bfd6200319f968cdb34c1311a98b19b01a246432e7e2767f17387f',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/b044054ab1425bf4aed43a9502d061deea8387b3fd374d37e377ee7ae79d3093.mp3', 835, '2026-09-14 09:42:12.884449', '421475bbfea50244d0bbfe0b09c10b042bbd62ab0e5692a006b55b146d1e55b1', 'validated', '{"audio_key":"b044054ab1425bf4aed43a9502d061deea8387b3fd374d37e377ee7ae79d3093","entity_key":"wf_cafe_basics_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"421475bbfea50244d0bbfe0b09c10b042bbd62ab0e5692a006b55b146d1e55b1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/b044054ab1425bf4aed43a9502d061deea8387b3fd374d37e377ee7ae79d3093.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_articles_and_objects_01 -> audio/generated/fr-FR/lexical/be8da1f7edcb8aa1361137d74dd4c4257c11fc2e38ba643a123aad5f51fbfac2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('57d8d10b-2bc4-5c93-be68-d88e4c46bd40', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_articles_and_objects_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c8f071fcb45fc339fd31b5f26c93c26dbc0d0351b61df339aa94a046a5384931'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fcaa36d8-7a8f-52a2-81cc-8148ac8fe201', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('57d8d10b-2bc4-5c93-be68-d88e4c46bd40', 1), 'c8f071fcb45fc339fd31b5f26c93c26dbc0d0351b61df339aa94a046a5384931',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/be8da1f7edcb8aa1361137d74dd4c4257c11fc2e38ba643a123aad5f51fbfac2.mp3', 862, '2026-09-14 09:42:13.683684', 'aed3a449636c4381aa3fd8da520911855b990c8b330e0e11a717f2660122d662', 'validated', '{"audio_key":"be8da1f7edcb8aa1361137d74dd4c4257c11fc2e38ba643a123aad5f51fbfac2","entity_key":"lx_articles_and_objects_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"aed3a449636c4381aa3fd8da520911855b990c8b330e0e11a717f2660122d662","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/be8da1f7edcb8aa1361137d74dd4c4257c11fc2e38ba643a123aad5f51fbfac2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_articles_and_objects_01 -> audio/generated/fr-FR/lexical/be8da1f7edcb8aa1361137d74dd4c4257c11fc2e38ba643a123aad5f51fbfac2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4b9e56e1-4ac2-57a7-9151-851c37197533', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_articles_and_objects_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c8f071fcb45fc339fd31b5f26c93c26dbc0d0351b61df339aa94a046a5384931'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('346118c4-4d5d-5121-ac28-b5783047c878', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4b9e56e1-4ac2-57a7-9151-851c37197533', 1), 'c8f071fcb45fc339fd31b5f26c93c26dbc0d0351b61df339aa94a046a5384931',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/be8da1f7edcb8aa1361137d74dd4c4257c11fc2e38ba643a123aad5f51fbfac2.mp3', 862, '2026-09-14 09:42:13.683684', 'aed3a449636c4381aa3fd8da520911855b990c8b330e0e11a717f2660122d662', 'validated', '{"audio_key":"be8da1f7edcb8aa1361137d74dd4c4257c11fc2e38ba643a123aad5f51fbfac2","entity_key":"wf_articles_and_objects_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"aed3a449636c4381aa3fd8da520911855b990c8b330e0e11a717f2660122d662","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/be8da1f7edcb8aa1361137d74dd4c4257c11fc2e38ba643a123aad5f51fbfac2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_getting_around_02 -> audio/generated/fr-FR/lexical/c657d670d347f9f8be882e7b5392d28c9bdf0a8cbeeb0bb76e15c489184d290d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('dfecc632-4825-5b01-81e9-3b24eaef731a', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_getting_around_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ffb2fecf1c158f367f1cb92391e61e32e316586d63e2f685e1b9c77045c88ddb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7d4b986d-8e9c-5113-8741-2b63eced3ed7', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('dfecc632-4825-5b01-81e9-3b24eaef731a', 1), 'ffb2fecf1c158f367f1cb92391e61e32e316586d63e2f685e1b9c77045c88ddb',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/c657d670d347f9f8be882e7b5392d28c9bdf0a8cbeeb0bb76e15c489184d290d.mp3', 966, '2026-09-14 09:42:13.930508', 'c3c5ec269e51bd1fa112a449a04e4573a076e8d79f7f45f731a63a4d02af7139', 'validated', '{"audio_key":"c657d670d347f9f8be882e7b5392d28c9bdf0a8cbeeb0bb76e15c489184d290d","entity_key":"lx_getting_around_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c3c5ec269e51bd1fa112a449a04e4573a076e8d79f7f45f731a63a4d02af7139","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/c657d670d347f9f8be882e7b5392d28c9bdf0a8cbeeb0bb76e15c489184d290d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_getting_around_02 -> audio/generated/fr-FR/lexical/c657d670d347f9f8be882e7b5392d28c9bdf0a8cbeeb0bb76e15c489184d290d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0f9b8e06-6796-5138-8987-3e6672f1a52e', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_getting_around_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ffb2fecf1c158f367f1cb92391e61e32e316586d63e2f685e1b9c77045c88ddb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('68740b99-fbb7-5cc9-9c35-15090b9da748', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0f9b8e06-6796-5138-8987-3e6672f1a52e', 1), 'ffb2fecf1c158f367f1cb92391e61e32e316586d63e2f685e1b9c77045c88ddb',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/c657d670d347f9f8be882e7b5392d28c9bdf0a8cbeeb0bb76e15c489184d290d.mp3', 966, '2026-09-14 09:42:13.930508', 'c3c5ec269e51bd1fa112a449a04e4573a076e8d79f7f45f731a63a4d02af7139', 'validated', '{"audio_key":"c657d670d347f9f8be882e7b5392d28c9bdf0a8cbeeb0bb76e15c489184d290d","entity_key":"wf_getting_around_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c3c5ec269e51bd1fa112a449a04e4573a076e8d79f7f45f731a63a4d02af7139","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/c657d670d347f9f8be882e7b5392d28c9bdf0a8cbeeb0bb76e15c489184d290d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_articles_and_objects_06 -> audio/generated/fr-FR/lexical/cdaa99f4d4637d711fa32c2df1ae214270fd9a96af4073fbec45976fafa8e3d6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('93993acb-36b3-5283-8aa2-5b9cb6f9c1b5', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_articles_and_objects_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7e5fce1970ffa6f1d7f0927c8f30f97dfb618ef37d00a3aa8caac8b99fcb8cb6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('60081517-e353-5669-a20e-f255e010c06c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('93993acb-36b3-5283-8aa2-5b9cb6f9c1b5', 1), '7e5fce1970ffa6f1d7f0927c8f30f97dfb618ef37d00a3aa8caac8b99fcb8cb6',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/cdaa99f4d4637d711fa32c2df1ae214270fd9a96af4073fbec45976fafa8e3d6.mp3', 1071, '2026-09-14 09:42:14.707774', 'f8a1ba0f8f3d3da01343e305b8a2656c083f7b4fdc8a094885881926b6748679', 'validated', '{"audio_key":"cdaa99f4d4637d711fa32c2df1ae214270fd9a96af4073fbec45976fafa8e3d6","entity_key":"lx_articles_and_objects_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f8a1ba0f8f3d3da01343e305b8a2656c083f7b4fdc8a094885881926b6748679","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/cdaa99f4d4637d711fa32c2df1ae214270fd9a96af4073fbec45976fafa8e3d6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_articles_and_objects_06 -> audio/generated/fr-FR/lexical/cdaa99f4d4637d711fa32c2df1ae214270fd9a96af4073fbec45976fafa8e3d6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a88e0270-b150-5898-b11c-74e7fc079e5b', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_articles_and_objects_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7e5fce1970ffa6f1d7f0927c8f30f97dfb618ef37d00a3aa8caac8b99fcb8cb6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a63266a7-613c-5d14-8ad4-f2707e0f0b8a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a88e0270-b150-5898-b11c-74e7fc079e5b', 1), '7e5fce1970ffa6f1d7f0927c8f30f97dfb618ef37d00a3aa8caac8b99fcb8cb6',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/cdaa99f4d4637d711fa32c2df1ae214270fd9a96af4073fbec45976fafa8e3d6.mp3', 1071, '2026-09-14 09:42:14.707774', 'f8a1ba0f8f3d3da01343e305b8a2656c083f7b4fdc8a094885881926b6748679', 'validated', '{"audio_key":"cdaa99f4d4637d711fa32c2df1ae214270fd9a96af4073fbec45976fafa8e3d6","entity_key":"wf_articles_and_objects_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f8a1ba0f8f3d3da01343e305b8a2656c083f7b4fdc8a094885881926b6748679","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/cdaa99f4d4637d711fa32c2df1ae214270fd9a96af4073fbec45976fafa8e3d6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_shopping_and_prices_01 -> audio/generated/fr-FR/lexical/d2d64dbf81c1df05bb4f85c632f9a9a52fafa70eb550afe06f46698453a59d44.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('620e092e-ad12-5b11-8b11-cec413577edc', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_shopping_and_prices_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b54124f069a39c825ff04eabd8b8ccbe81264179e1783d4046a9eece93eb8cc7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fe967010-c24b-5bae-84ad-e7f5a21963d7', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('620e092e-ad12-5b11-8b11-cec413577edc', 1), 'b54124f069a39c825ff04eabd8b8ccbe81264179e1783d4046a9eece93eb8cc7',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/d2d64dbf81c1df05bb4f85c632f9a9a52fafa70eb550afe06f46698453a59d44.mp3', 835, '2026-09-14 09:42:14.978661', '3adc3bd229bd0991af2107f1047ea38a0de9c6088438ccc35c9d1adfacba2743', 'validated', '{"audio_key":"d2d64dbf81c1df05bb4f85c632f9a9a52fafa70eb550afe06f46698453a59d44","entity_key":"lx_shopping_and_prices_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3adc3bd229bd0991af2107f1047ea38a0de9c6088438ccc35c9d1adfacba2743","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/d2d64dbf81c1df05bb4f85c632f9a9a52fafa70eb550afe06f46698453a59d44.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_shopping_and_prices_01 -> audio/generated/fr-FR/lexical/d2d64dbf81c1df05bb4f85c632f9a9a52fafa70eb550afe06f46698453a59d44.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b909fabe-a63a-5f86-a31c-af7d9764f7ff', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_shopping_and_prices_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b54124f069a39c825ff04eabd8b8ccbe81264179e1783d4046a9eece93eb8cc7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('71b38534-2c6a-5dfa-95bf-2a331897b53e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b909fabe-a63a-5f86-a31c-af7d9764f7ff', 1), 'b54124f069a39c825ff04eabd8b8ccbe81264179e1783d4046a9eece93eb8cc7',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/d2d64dbf81c1df05bb4f85c632f9a9a52fafa70eb550afe06f46698453a59d44.mp3', 835, '2026-09-14 09:42:14.978661', '3adc3bd229bd0991af2107f1047ea38a0de9c6088438ccc35c9d1adfacba2743', 'validated', '{"audio_key":"d2d64dbf81c1df05bb4f85c632f9a9a52fafa70eb550afe06f46698453a59d44","entity_key":"wf_shopping_and_prices_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3adc3bd229bd0991af2107f1047ea38a0de9c6088438ccc35c9d1adfacba2743","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/d2d64dbf81c1df05bb4f85c632f9a9a52fafa70eb550afe06f46698453a59d44.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_a1_day_capstone_06 -> audio/generated/fr-FR/lexical/d4b9dc331da2bd7914c72e4c0bc3c0b35bc25bd7d02889355e394bee3e06fd47.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e0a223ce-fe9f-5995-98c6-c32a2e5a9474', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_a1_day_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fec29b7905c9a6250c093091b65ffe3ea56a17e32b0880f5ce3ccc703ae00e9d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8c332dfe-4f08-5202-b7e7-8fa538373575', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e0a223ce-fe9f-5995-98c6-c32a2e5a9474', 1), 'fec29b7905c9a6250c093091b65ffe3ea56a17e32b0880f5ce3ccc703ae00e9d',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/d4b9dc331da2bd7914c72e4c0bc3c0b35bc25bd7d02889355e394bee3e06fd47.mp3', 835, '2026-09-14 09:42:15.725835', '55e7d8976eb782ee5a8c502138d3e837dd801a369df5c26f5d2cf68b8c23dba5', 'validated', '{"audio_key":"d4b9dc331da2bd7914c72e4c0bc3c0b35bc25bd7d02889355e394bee3e06fd47","entity_key":"lx_a1_day_capstone_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"55e7d8976eb782ee5a8c502138d3e837dd801a369df5c26f5d2cf68b8c23dba5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/d4b9dc331da2bd7914c72e4c0bc3c0b35bc25bd7d02889355e394bee3e06fd47.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_a1_day_capstone_06 -> audio/generated/fr-FR/lexical/d4b9dc331da2bd7914c72e4c0bc3c0b35bc25bd7d02889355e394bee3e06fd47.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4495477d-7a7f-5455-ba43-df276f6f502e', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_a1_day_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fec29b7905c9a6250c093091b65ffe3ea56a17e32b0880f5ce3ccc703ae00e9d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a7bcfdfa-d7f4-50d4-bfb1-5bf398925c11', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4495477d-7a7f-5455-ba43-df276f6f502e', 1), 'fec29b7905c9a6250c093091b65ffe3ea56a17e32b0880f5ce3ccc703ae00e9d',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/d4b9dc331da2bd7914c72e4c0bc3c0b35bc25bd7d02889355e394bee3e06fd47.mp3', 835, '2026-09-14 09:42:15.725835', '55e7d8976eb782ee5a8c502138d3e837dd801a369df5c26f5d2cf68b8c23dba5', 'validated', '{"audio_key":"d4b9dc331da2bd7914c72e4c0bc3c0b35bc25bd7d02889355e394bee3e06fd47","entity_key":"wf_a1_day_capstone_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"55e7d8976eb782ee5a8c502138d3e837dd801a369df5c26f5d2cf68b8c23dba5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/d4b9dc331da2bd7914c72e4c0bc3c0b35bc25bd7d02889355e394bee3e06fd47.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_time_and_schedule_05 -> audio/generated/fr-FR/lexical/d4b9dc331da2bd7914c72e4c0bc3c0b35bc25bd7d02889355e394bee3e06fd47.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e0a223ce-fe9f-5995-98c6-c32a2e5a9474', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_time_and_schedule_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fec29b7905c9a6250c093091b65ffe3ea56a17e32b0880f5ce3ccc703ae00e9d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8c332dfe-4f08-5202-b7e7-8fa538373575', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e0a223ce-fe9f-5995-98c6-c32a2e5a9474', 1), 'fec29b7905c9a6250c093091b65ffe3ea56a17e32b0880f5ce3ccc703ae00e9d',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/d4b9dc331da2bd7914c72e4c0bc3c0b35bc25bd7d02889355e394bee3e06fd47.mp3', 835, '2026-09-14 09:42:15.725835', '55e7d8976eb782ee5a8c502138d3e837dd801a369df5c26f5d2cf68b8c23dba5', 'validated', '{"audio_key":"d4b9dc331da2bd7914c72e4c0bc3c0b35bc25bd7d02889355e394bee3e06fd47","entity_key":"lx_time_and_schedule_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"55e7d8976eb782ee5a8c502138d3e837dd801a369df5c26f5d2cf68b8c23dba5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/d4b9dc331da2bd7914c72e4c0bc3c0b35bc25bd7d02889355e394bee3e06fd47.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_time_and_schedule_05 -> audio/generated/fr-FR/lexical/d4b9dc331da2bd7914c72e4c0bc3c0b35bc25bd7d02889355e394bee3e06fd47.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b49b6c75-5b5d-5f1f-8dbe-9a3bb6339ede', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_time_and_schedule_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fec29b7905c9a6250c093091b65ffe3ea56a17e32b0880f5ce3ccc703ae00e9d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a00b9b1a-ca7e-510d-9922-b084ea34a06c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b49b6c75-5b5d-5f1f-8dbe-9a3bb6339ede', 1), 'fec29b7905c9a6250c093091b65ffe3ea56a17e32b0880f5ce3ccc703ae00e9d',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/d4b9dc331da2bd7914c72e4c0bc3c0b35bc25bd7d02889355e394bee3e06fd47.mp3', 835, '2026-09-14 09:42:15.725835', '55e7d8976eb782ee5a8c502138d3e837dd801a369df5c26f5d2cf68b8c23dba5', 'validated', '{"audio_key":"d4b9dc331da2bd7914c72e4c0bc3c0b35bc25bd7d02889355e394bee3e06fd47","entity_key":"wf_time_and_schedule_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"55e7d8976eb782ee5a8c502138d3e837dd801a369df5c26f5d2cf68b8c23dba5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/d4b9dc331da2bd7914c72e4c0bc3c0b35bc25bd7d02889355e394bee3e06fd47.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_time_and_schedule_04 -> audio/generated/fr-FR/lexical/e2d76879ecd74ea3fa22e9d92ae75b15d960f1b88414764ee5ed4f13a2f63aa1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('dfb3bd6c-93a8-57de-a98b-70feb702900b', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_time_and_schedule_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c5c1764a8b1824b5edfbd61a37cdf9986496181ed11aafb84098fa602e3c20ac'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ef49e45a-f536-5612-8fab-cd7fc618882f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('dfb3bd6c-93a8-57de-a98b-70feb702900b', 1), 'c5c1764a8b1824b5edfbd61a37cdf9986496181ed11aafb84098fa602e3c20ac',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/e2d76879ecd74ea3fa22e9d92ae75b15d960f1b88414764ee5ed4f13a2f63aa1.mp3', 966, '2026-09-14 09:42:16.004545', '2c0d7886034f1d8340952bed5c9833e37eeed7f2225de521f0b6aa6f7540cd97', 'validated', '{"audio_key":"e2d76879ecd74ea3fa22e9d92ae75b15d960f1b88414764ee5ed4f13a2f63aa1","entity_key":"lx_time_and_schedule_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2c0d7886034f1d8340952bed5c9833e37eeed7f2225de521f0b6aa6f7540cd97","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/e2d76879ecd74ea3fa22e9d92ae75b15d960f1b88414764ee5ed4f13a2f63aa1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_time_and_schedule_04 -> audio/generated/fr-FR/lexical/e2d76879ecd74ea3fa22e9d92ae75b15d960f1b88414764ee5ed4f13a2f63aa1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b57913c0-c5ae-5a3b-9f6a-30c9d6414ff2', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_time_and_schedule_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c5c1764a8b1824b5edfbd61a37cdf9986496181ed11aafb84098fa602e3c20ac'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5c2724c8-c3d7-5293-b386-fe240c1defd7', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b57913c0-c5ae-5a3b-9f6a-30c9d6414ff2', 1), 'c5c1764a8b1824b5edfbd61a37cdf9986496181ed11aafb84098fa602e3c20ac',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/e2d76879ecd74ea3fa22e9d92ae75b15d960f1b88414764ee5ed4f13a2f63aa1.mp3', 966, '2026-09-14 09:42:16.004545', '2c0d7886034f1d8340952bed5c9833e37eeed7f2225de521f0b6aa6f7540cd97', 'validated', '{"audio_key":"e2d76879ecd74ea3fa22e9d92ae75b15d960f1b88414764ee5ed4f13a2f63aa1","entity_key":"wf_time_and_schedule_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2c0d7886034f1d8340952bed5c9833e37eeed7f2225de521f0b6aa6f7540cd97","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/e2d76879ecd74ea3fa22e9d92ae75b15d960f1b88414764ee5ed4f13a2f63aa1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_identity_and_origin_01 -> audio/generated/fr-FR/lexical/e3760f05b3ef504a151c06e31a7c246453f73147c0616a6b6f135aa4679e97bd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('44c37257-eb85-5753-af20-d012b60e6a45', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_identity_and_origin_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fb62c0c2c296e4626dc55d728c2edef038e8351baf4e7a6aca4e1c263667ad9e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('569120c1-4b85-58ca-b57a-cddc136f55a9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('44c37257-eb85-5753-af20-d012b60e6a45', 1), 'fb62c0c2c296e4626dc55d728c2edef038e8351baf4e7a6aca4e1c263667ad9e',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/e3760f05b3ef504a151c06e31a7c246453f73147c0616a6b6f135aa4679e97bd.mp3', 1071, '2026-09-14 09:42:16.773269', '57f2a883f862af55f766ecd0f2a7adf3dabdce68fbc89f7d4e569d813c0a0c2c', 'validated', '{"audio_key":"e3760f05b3ef504a151c06e31a7c246453f73147c0616a6b6f135aa4679e97bd","entity_key":"lx_identity_and_origin_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"57f2a883f862af55f766ecd0f2a7adf3dabdce68fbc89f7d4e569d813c0a0c2c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/e3760f05b3ef504a151c06e31a7c246453f73147c0616a6b6f135aa4679e97bd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_identity_and_origin_01 -> audio/generated/fr-FR/lexical/e3760f05b3ef504a151c06e31a7c246453f73147c0616a6b6f135aa4679e97bd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5c4cb92e-8123-52a6-8d7c-b94fba099cd2', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_identity_and_origin_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fb62c0c2c296e4626dc55d728c2edef038e8351baf4e7a6aca4e1c263667ad9e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('019c829f-7134-595c-82f8-a683b4537b4c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5c4cb92e-8123-52a6-8d7c-b94fba099cd2', 1), 'fb62c0c2c296e4626dc55d728c2edef038e8351baf4e7a6aca4e1c263667ad9e',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/e3760f05b3ef504a151c06e31a7c246453f73147c0616a6b6f135aa4679e97bd.mp3', 1071, '2026-09-14 09:42:16.773269', '57f2a883f862af55f766ecd0f2a7adf3dabdce68fbc89f7d4e569d813c0a0c2c', 'validated', '{"audio_key":"e3760f05b3ef504a151c06e31a7c246453f73147c0616a6b6f135aa4679e97bd","entity_key":"wf_identity_and_origin_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"57f2a883f862af55f766ecd0f2a7adf3dabdce68fbc89f7d4e569d813c0a0c2c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/e3760f05b3ef504a151c06e31a7c246453f73147c0616a6b6f135aa4679e97bd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_time_and_schedule_06 -> audio/generated/fr-FR/lexical/ed7d96b69919b9b65960a03f506fad588ded145fb5a216c95853ab15474977b9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c1f51199-fc2b-5c0d-9bc9-ed4e480d0b69', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_time_and_schedule_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c45f177e1672b216ba5844bd0c95829521bb78db9ee29ba42a19dbfe092c19bb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4a5f250b-3da5-5da5-90bd-db4d8037252e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c1f51199-fc2b-5c0d-9bc9-ed4e480d0b69', 1), 'c45f177e1672b216ba5844bd0c95829521bb78db9ee29ba42a19dbfe092c19bb',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/ed7d96b69919b9b65960a03f506fad588ded145fb5a216c95853ab15474977b9.mp3', 835, '2026-09-14 09:42:17.030184', 'e1b73ebdee4bf8a149380632ffdffac3a1ceb61bd2a3493535fc2d9ee2408f1d', 'validated', '{"audio_key":"ed7d96b69919b9b65960a03f506fad588ded145fb5a216c95853ab15474977b9","entity_key":"lx_time_and_schedule_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e1b73ebdee4bf8a149380632ffdffac3a1ceb61bd2a3493535fc2d9ee2408f1d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/ed7d96b69919b9b65960a03f506fad588ded145fb5a216c95853ab15474977b9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_time_and_schedule_06 -> audio/generated/fr-FR/lexical/ed7d96b69919b9b65960a03f506fad588ded145fb5a216c95853ab15474977b9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ad36f0cc-d877-5d7f-a118-cc564f9df3e5', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_time_and_schedule_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c45f177e1672b216ba5844bd0c95829521bb78db9ee29ba42a19dbfe092c19bb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('57f4ea58-b431-58bf-b4a3-e47443e2c261', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ad36f0cc-d877-5d7f-a118-cc564f9df3e5', 1), 'c45f177e1672b216ba5844bd0c95829521bb78db9ee29ba42a19dbfe092c19bb',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/ed7d96b69919b9b65960a03f506fad588ded145fb5a216c95853ab15474977b9.mp3', 835, '2026-09-14 09:42:17.030184', 'e1b73ebdee4bf8a149380632ffdffac3a1ceb61bd2a3493535fc2d9ee2408f1d', 'validated', '{"audio_key":"ed7d96b69919b9b65960a03f506fad588ded145fb5a216c95853ab15474977b9","entity_key":"wf_time_and_schedule_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e1b73ebdee4bf8a149380632ffdffac3a1ceb61bd2a3493535fc2d9ee2408f1d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/ed7d96b69919b9b65960a03f506fad588ded145fb5a216c95853ab15474977b9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_identity_and_origin_06 -> audio/generated/fr-FR/lexical/ee266e0fabeaa828658da309fa72210a11439d9b2e99020243724c47473d5b24.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('944bc639-39e7-546f-b125-154d7e491de1', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_identity_and_origin_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e927fa95cb07212125c8dcf23cf8ddc0551c9755c4586a4fafc0a4cb8a54e285'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3ec45645-5208-501a-80b1-bde61605c617', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('944bc639-39e7-546f-b125-154d7e491de1', 1), 'e927fa95cb07212125c8dcf23cf8ddc0551c9755c4586a4fafc0a4cb8a54e285',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/ee266e0fabeaa828658da309fa72210a11439d9b2e99020243724c47473d5b24.mp3', 835, '2026-09-14 09:42:17.759222', '43b8287e8b6ab1b7cd6be09c1aa776f1cbbf41a56d981f7363bc3109a25d925b', 'validated', '{"audio_key":"ee266e0fabeaa828658da309fa72210a11439d9b2e99020243724c47473d5b24","entity_key":"lx_identity_and_origin_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"43b8287e8b6ab1b7cd6be09c1aa776f1cbbf41a56d981f7363bc3109a25d925b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/ee266e0fabeaa828658da309fa72210a11439d9b2e99020243724c47473d5b24.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_identity_and_origin_06 -> audio/generated/fr-FR/lexical/ee266e0fabeaa828658da309fa72210a11439d9b2e99020243724c47473d5b24.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('fa66707a-a0ff-5d5e-a2ed-d1b8e456ec4e', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_identity_and_origin_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e927fa95cb07212125c8dcf23cf8ddc0551c9755c4586a4fafc0a4cb8a54e285'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c8a6f6f5-a9de-5b81-9a47-90bfb9710205', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('fa66707a-a0ff-5d5e-a2ed-d1b8e456ec4e', 1), 'e927fa95cb07212125c8dcf23cf8ddc0551c9755c4586a4fafc0a4cb8a54e285',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/ee266e0fabeaa828658da309fa72210a11439d9b2e99020243724c47473d5b24.mp3', 835, '2026-09-14 09:42:17.759222', '43b8287e8b6ab1b7cd6be09c1aa776f1cbbf41a56d981f7363bc3109a25d925b', 'validated', '{"audio_key":"ee266e0fabeaa828658da309fa72210a11439d9b2e99020243724c47473d5b24","entity_key":"wf_identity_and_origin_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"43b8287e8b6ab1b7cd6be09c1aa776f1cbbf41a56d981f7363bc3109a25d925b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/ee266e0fabeaa828658da309fa72210a11439d9b2e99020243724c47473d5b24.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_identity_and_origin_03 -> audio/generated/fr-FR/lexical/f1027bc27a920097c02e99ebe7c23e0b0deee7404d3e315744d5292ad5ec8339.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('fc7c6cb9-7c3b-5cdd-8905-97e4041ffa17', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_identity_and_origin_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8d36c5ed82283056be4a1b40345c7605d470ba74e5b7c5c0feda7b0ce20ff0b7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3bc98d2b-a486-5ea7-a463-cf2c47ef65e8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('fc7c6cb9-7c3b-5cdd-8905-97e4041ffa17', 1), '8d36c5ed82283056be4a1b40345c7605d470ba74e5b7c5c0feda7b0ce20ff0b7',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/f1027bc27a920097c02e99ebe7c23e0b0deee7404d3e315744d5292ad5ec8339.mp3', 1097, '2026-09-14 09:42:18.068293', '397fc84c511aa6ae934da28090bf1cc30088db368437aa60d9565cd90545be50', 'validated', '{"audio_key":"f1027bc27a920097c02e99ebe7c23e0b0deee7404d3e315744d5292ad5ec8339","entity_key":"lx_identity_and_origin_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"397fc84c511aa6ae934da28090bf1cc30088db368437aa60d9565cd90545be50","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/f1027bc27a920097c02e99ebe7c23e0b0deee7404d3e315744d5292ad5ec8339.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_identity_and_origin_03 -> audio/generated/fr-FR/lexical/f1027bc27a920097c02e99ebe7c23e0b0deee7404d3e315744d5292ad5ec8339.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('daa99d38-675e-5158-9766-01d787bc2b63', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_identity_and_origin_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8d36c5ed82283056be4a1b40345c7605d470ba74e5b7c5c0feda7b0ce20ff0b7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('28543fa7-8cdc-50e8-a4b2-5ee5888823a7', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('daa99d38-675e-5158-9766-01d787bc2b63', 1), '8d36c5ed82283056be4a1b40345c7605d470ba74e5b7c5c0feda7b0ce20ff0b7',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/f1027bc27a920097c02e99ebe7c23e0b0deee7404d3e315744d5292ad5ec8339.mp3', 1097, '2026-09-14 09:42:18.068293', '397fc84c511aa6ae934da28090bf1cc30088db368437aa60d9565cd90545be50', 'validated', '{"audio_key":"f1027bc27a920097c02e99ebe7c23e0b0deee7404d3e315744d5292ad5ec8339","entity_key":"wf_identity_and_origin_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"397fc84c511aa6ae934da28090bf1cc30088db368437aa60d9565cd90545be50","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/f1027bc27a920097c02e99ebe7c23e0b0deee7404d3e315744d5292ad5ec8339.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_home_and_location_03 -> audio/generated/fr-FR/lexical/f28017b568132222f62d9a5c11c8d3fae28dd718c8309ed7487cd0321226c2c6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6fba2b88-9370-52f2-8766-e9b89ffac0bb', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_home_and_location_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2753cb15f1d6d34c2d6e101c9cd5b2b21ea938dd888de94436730734aad7f60d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dd7cb1c1-981a-5812-a1bc-e0b627aff6e4', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6fba2b88-9370-52f2-8766-e9b89ffac0bb', 1), '2753cb15f1d6d34c2d6e101c9cd5b2b21ea938dd888de94436730734aad7f60d',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/f28017b568132222f62d9a5c11c8d3fae28dd718c8309ed7487cd0321226c2c6.mp3', 1071, '2026-09-14 09:42:18.884711', '02cc0a72c60d85c6d57c32d347d691f44e337528afe55f007a36f4313d9e7e4e', 'validated', '{"audio_key":"f28017b568132222f62d9a5c11c8d3fae28dd718c8309ed7487cd0321226c2c6","entity_key":"lx_home_and_location_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"02cc0a72c60d85c6d57c32d347d691f44e337528afe55f007a36f4313d9e7e4e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/f28017b568132222f62d9a5c11c8d3fae28dd718c8309ed7487cd0321226c2c6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_home_and_location_03 -> audio/generated/fr-FR/lexical/f28017b568132222f62d9a5c11c8d3fae28dd718c8309ed7487cd0321226c2c6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('78fefc74-5989-5a2a-947a-ed60f3d0bc10', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_home_and_location_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2753cb15f1d6d34c2d6e101c9cd5b2b21ea938dd888de94436730734aad7f60d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a5de9f5b-c034-56b4-90e9-7732373483ed', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('78fefc74-5989-5a2a-947a-ed60f3d0bc10', 1), '2753cb15f1d6d34c2d6e101c9cd5b2b21ea938dd888de94436730734aad7f60d',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/f28017b568132222f62d9a5c11c8d3fae28dd718c8309ed7487cd0321226c2c6.mp3', 1071, '2026-09-14 09:42:18.884711', '02cc0a72c60d85c6d57c32d347d691f44e337528afe55f007a36f4313d9e7e4e', 'validated', '{"audio_key":"f28017b568132222f62d9a5c11c8d3fae28dd718c8309ed7487cd0321226c2c6","entity_key":"wf_home_and_location_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"02cc0a72c60d85c6d57c32d347d691f44e337528afe55f007a36f4313d9e7e4e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/f28017b568132222f62d9a5c11c8d3fae28dd718c8309ed7487cd0321226c2c6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_cafe_basics_02 -> audio/generated/fr-FR/lexical/f320ab6a6dd2d5880ff4983dc96180587567a6bb13dcb3e64533b779f6d99d5c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c41ff793-7dfc-57ce-ae47-39688c8683c0', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_cafe_basics_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'da45b8e2d4272d7ea02ee2b79c896cca9ed37722639d8e7fbd4f3fae857886b7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1c57e3ef-3bc2-5797-953e-653f4ead8f7c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c41ff793-7dfc-57ce-ae47-39688c8683c0', 1), 'da45b8e2d4272d7ea02ee2b79c896cca9ed37722639d8e7fbd4f3fae857886b7',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/f320ab6a6dd2d5880ff4983dc96180587567a6bb13dcb3e64533b779f6d99d5c.mp3', 966, '2026-09-14 09:42:19.091057', '1838ce3b5a8605c47635e658832d9653492e9a4ca6b0b78f670926d0531889ac', 'validated', '{"audio_key":"f320ab6a6dd2d5880ff4983dc96180587567a6bb13dcb3e64533b779f6d99d5c","entity_key":"lx_cafe_basics_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1838ce3b5a8605c47635e658832d9653492e9a4ca6b0b78f670926d0531889ac","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/f320ab6a6dd2d5880ff4983dc96180587567a6bb13dcb3e64533b779f6d99d5c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_cafe_basics_02 -> audio/generated/fr-FR/lexical/f320ab6a6dd2d5880ff4983dc96180587567a6bb13dcb3e64533b779f6d99d5c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d720b8d8-21b7-5603-8d70-c1e94c463c11', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_cafe_basics_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'da45b8e2d4272d7ea02ee2b79c896cca9ed37722639d8e7fbd4f3fae857886b7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('40648701-6e32-552e-b7ce-f28f7f2479f6', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d720b8d8-21b7-5603-8d70-c1e94c463c11', 1), 'da45b8e2d4272d7ea02ee2b79c896cca9ed37722639d8e7fbd4f3fae857886b7',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/f320ab6a6dd2d5880ff4983dc96180587567a6bb13dcb3e64533b779f6d99d5c.mp3', 966, '2026-09-14 09:42:19.091057', '1838ce3b5a8605c47635e658832d9653492e9a4ca6b0b78f670926d0531889ac', 'validated', '{"audio_key":"f320ab6a6dd2d5880ff4983dc96180587567a6bb13dcb3e64533b779f6d99d5c","entity_key":"wf_cafe_basics_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1838ce3b5a8605c47635e658832d9653492e9a4ca6b0b78f670926d0531889ac","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/f320ab6a6dd2d5880ff4983dc96180587567a6bb13dcb3e64533b779f6d99d5c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_articles_and_objects_04 -> audio/generated/fr-FR/lexical/fa45604331db0864895cc00f2ca24c47e41815fab9737e8c958bd08aa5628eea.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('871c313d-b57e-556f-8b40-6761acb02daf', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_articles_and_objects_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '68bca10eea2ba33f6f15a6ab0c7df2a49051a6541f9118d468b0585d5d60398b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ee61d942-d784-5e5b-ba1c-8f811a367b59', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('871c313d-b57e-556f-8b40-6761acb02daf', 1), '68bca10eea2ba33f6f15a6ab0c7df2a49051a6541f9118d468b0585d5d60398b',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/fa45604331db0864895cc00f2ca24c47e41815fab9737e8c958bd08aa5628eea.mp3', 862, '2026-09-14 08:52:54.344024', '9f30d48356d32af1ffeb64372438331b914c340118dc9b83afa806cb6b81b724', 'validated', '{"audio_key":"fa45604331db0864895cc00f2ca24c47e41815fab9737e8c958bd08aa5628eea","entity_key":"lx_articles_and_objects_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9f30d48356d32af1ffeb64372438331b914c340118dc9b83afa806cb6b81b724","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/fa45604331db0864895cc00f2ca24c47e41815fab9737e8c958bd08aa5628eea.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_articles_and_objects_04 -> audio/generated/fr-FR/lexical/fa45604331db0864895cc00f2ca24c47e41815fab9737e8c958bd08aa5628eea.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9ff78a0b-cddd-57a5-abe6-14a96ec10aea', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_articles_and_objects_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '68bca10eea2ba33f6f15a6ab0c7df2a49051a6541f9118d468b0585d5d60398b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a64ee700-fe7b-5327-967b-5a123fc85966', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9ff78a0b-cddd-57a5-abe6-14a96ec10aea', 1), '68bca10eea2ba33f6f15a6ab0c7df2a49051a6541f9118d468b0585d5d60398b',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/fa45604331db0864895cc00f2ca24c47e41815fab9737e8c958bd08aa5628eea.mp3', 862, '2026-09-14 08:52:54.344024', '9f30d48356d32af1ffeb64372438331b914c340118dc9b83afa806cb6b81b724', 'validated', '{"audio_key":"fa45604331db0864895cc00f2ca24c47e41815fab9737e8c958bd08aa5628eea","entity_key":"wf_articles_and_objects_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9f30d48356d32af1ffeb64372438331b914c340118dc9b83afa806cb6b81b724","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/fa45604331db0864895cc00f2ca24c47e41815fab9737e8c958bd08aa5628eea.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_getting_around_04 -> audio/generated/fr-FR/lexical/faeaefd2f39d32f7d8c8602baa4689cb021ad74f8eb9446b68201e8cc7169094.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('85111712-5d90-5a36-a838-f3590c1fa197', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_getting_around_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '96cbc489bf1f6d57f6477c4528a22059c1cddb7a316f0f2933803994502cbda6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6c407527-1050-5ce5-8d96-8e3dacbafb4b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('85111712-5d90-5a36-a838-f3590c1fa197', 1), '96cbc489bf1f6d57f6477c4528a22059c1cddb7a316f0f2933803994502cbda6',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/faeaefd2f39d32f7d8c8602baa4689cb021ad74f8eb9446b68201e8cc7169094.mp3', 835, '2026-09-14 09:42:19.905548', 'af2e435fd7cbbb43ef58e2c20c4b9c9d5257671a9bc6fee87567d6b83e3f6fe3', 'validated', '{"audio_key":"faeaefd2f39d32f7d8c8602baa4689cb021ad74f8eb9446b68201e8cc7169094","entity_key":"lx_getting_around_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"af2e435fd7cbbb43ef58e2c20c4b9c9d5257671a9bc6fee87567d6b83e3f6fe3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/faeaefd2f39d32f7d8c8602baa4689cb021ad74f8eb9446b68201e8cc7169094.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_getting_around_04 -> audio/generated/fr-FR/lexical/faeaefd2f39d32f7d8c8602baa4689cb021ad74f8eb9446b68201e8cc7169094.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6137e61b-8ae4-59b3-9544-9c2198ef9d82', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_getting_around_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '96cbc489bf1f6d57f6477c4528a22059c1cddb7a316f0f2933803994502cbda6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cd3a1985-3294-5448-966a-4f4bff9dd653', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6137e61b-8ae4-59b3-9544-9c2198ef9d82', 1), '96cbc489bf1f6d57f6477c4528a22059c1cddb7a316f0f2933803994502cbda6',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/faeaefd2f39d32f7d8c8602baa4689cb021ad74f8eb9446b68201e8cc7169094.mp3', 835, '2026-09-14 09:42:19.905548', 'af2e435fd7cbbb43ef58e2c20c4b9c9d5257671a9bc6fee87567d6b83e3f6fe3', 'validated', '{"audio_key":"faeaefd2f39d32f7d8c8602baa4689cb021ad74f8eb9446b68201e8cc7169094","entity_key":"wf_getting_around_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"af2e435fd7cbbb43ef58e2c20c4b9c9d5257671a9bc6fee87567d6b83e3f6fe3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/faeaefd2f39d32f7d8c8602baa4689cb021ad74f8eb9446b68201e8cc7169094.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_time_and_schedule_01 -> audio/generated/fr-FR/lexical/fb30ce7917647e72e311b33f88813aed5b9f0323fd276493cb78845936716475.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('816a4f2e-f7af-50d4-9e84-7ce1e5678180', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_time_and_schedule_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dc80905e9df6dac21816167b50509e5d5ecd551214df76f90717fe1093a166c3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c0dcb9ac-6744-54f4-bb23-d4e329003168', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('816a4f2e-f7af-50d4-9e84-7ce1e5678180', 1), 'dc80905e9df6dac21816167b50509e5d5ecd551214df76f90717fe1093a166c3',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/fb30ce7917647e72e311b33f88813aed5b9f0323fd276493cb78845936716475.mp3', 862, '2026-09-14 09:42:20.096283', '1ba1613dbdfc593069292f001b8ba277bb8803458f5ad1e3368aaf01fd9e14bb', 'validated', '{"audio_key":"fb30ce7917647e72e311b33f88813aed5b9f0323fd276493cb78845936716475","entity_key":"lx_time_and_schedule_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1ba1613dbdfc593069292f001b8ba277bb8803458f5ad1e3368aaf01fd9e14bb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/fb30ce7917647e72e311b33f88813aed5b9f0323fd276493cb78845936716475.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_time_and_schedule_01 -> audio/generated/fr-FR/lexical/fb30ce7917647e72e311b33f88813aed5b9f0323fd276493cb78845936716475.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('47548d01-96e9-55de-9acd-d451486b470e', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_time_and_schedule_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dc80905e9df6dac21816167b50509e5d5ecd551214df76f90717fe1093a166c3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a40a0c1c-f260-5131-b398-87cadd628329', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('47548d01-96e9-55de-9acd-d451486b470e', 1), 'dc80905e9df6dac21816167b50509e5d5ecd551214df76f90717fe1093a166c3',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/fb30ce7917647e72e311b33f88813aed5b9f0323fd276493cb78845936716475.mp3', 862, '2026-09-14 09:42:20.096283', '1ba1613dbdfc593069292f001b8ba277bb8803458f5ad1e3368aaf01fd9e14bb', 'validated', '{"audio_key":"fb30ce7917647e72e311b33f88813aed5b9f0323fd276493cb78845936716475","entity_key":"wf_time_and_schedule_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1ba1613dbdfc593069292f001b8ba277bb8803458f5ad1e3368aaf01fd9e14bb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/fb30ce7917647e72e311b33f88813aed5b9f0323fd276493cb78845936716475.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_cafe_basics_01 -> audio/generated/fr-FR/utterances/026fd07eae3bfd1c324daf356bbc69413d7f979b840db6a24cc481c4ca303d46.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2e408340-0716-56e6-bbf6-67ed68702942', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_cafe_basics_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1cc37a980f9cde55724083cf5a2baeb8296d8646e2e51f2b250cb30fda24a68a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8e89defd-5aed-5d89-b2ff-07dd253da34e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2e408340-0716-56e6-bbf6-67ed68702942', 1), '1cc37a980f9cde55724083cf5a2baeb8296d8646e2e51f2b250cb30fda24a68a',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/026fd07eae3bfd1c324daf356bbc69413d7f979b840db6a24cc481c4ca303d46.mp3', 1854, '2026-09-14 09:42:20.994025', '8da224cccd86161ea0ba89dd64913d0131e1aeb4b3ff0959fd16f1a47ea32cce', 'validated', '{"audio_key":"026fd07eae3bfd1c324daf356bbc69413d7f979b840db6a24cc481c4ca303d46","entity_key":"u_cafe_basics_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8da224cccd86161ea0ba89dd64913d0131e1aeb4b3ff0959fd16f1a47ea32cce","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/026fd07eae3bfd1c324daf356bbc69413d7f979b840db6a24cc481c4ca303d46.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_getting_around_01 -> audio/generated/fr-FR/utterances/057be710b537548b6c1446e906e901b64c51e1b7e483e9cd2585de5570cd8081.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('5ea22ada-fda6-5160-bd23-4f35c9ad23fc', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_getting_around_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4fda60c624c30903d7b42c3fea08a1df1371aad0e8e3447bcf39c9497d5dea3e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('836120b1-a4a9-562e-aecd-5d1a41c3ea23', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('5ea22ada-fda6-5160-bd23-4f35c9ad23fc', 1), '4fda60c624c30903d7b42c3fea08a1df1371aad0e8e3447bcf39c9497d5dea3e',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/057be710b537548b6c1446e906e901b64c51e1b7e483e9cd2585de5570cd8081.mp3', 1071, '2026-09-14 09:42:21.140966', 'ce3c8e5a521c9d37ec50937f774ce3cd7cae2cf7d67387ae16bbb28bde3529f4', 'validated', '{"audio_key":"057be710b537548b6c1446e906e901b64c51e1b7e483e9cd2585de5570cd8081","entity_key":"u_getting_around_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ce3c8e5a521c9d37ec50937f774ce3cd7cae2cf7d67387ae16bbb28bde3529f4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/057be710b537548b6c1446e906e901b64c51e1b7e483e9cd2585de5570cd8081.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_daily_actions_02 -> audio/generated/fr-FR/utterances/0701cdeaef70c65c903d105b0d1ffcd8c2cea1447c45e7c69c4c493cddff14b5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b5934791-802f-57c3-8277-74185d8edea6', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_daily_actions_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '538ef4d80f912447b3a04a16c65eb8f882e034de6cab63979878a6f43aef1e54'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3152f6b8-b763-5545-9bcc-03c15046893b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b5934791-802f-57c3-8277-74185d8edea6', 1), '538ef4d80f912447b3a04a16c65eb8f882e034de6cab63979878a6f43aef1e54',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/0701cdeaef70c65c903d105b0d1ffcd8c2cea1447c45e7c69c4c493cddff14b5.mp3', 1332, '2026-09-14 09:42:22.072698', 'b68944da3909db952b39cc0e2c2901c06acea4f40e9ae5837f438ab180f53ae3', 'validated', '{"audio_key":"0701cdeaef70c65c903d105b0d1ffcd8c2cea1447c45e7c69c4c493cddff14b5","entity_key":"u_daily_actions_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b68944da3909db952b39cc0e2c2901c06acea4f40e9ae5837f438ab180f53ae3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/0701cdeaef70c65c903d105b0d1ffcd8c2cea1447c45e7c69c4c493cddff14b5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_daily_actions_01_listen -> audio/generated/fr-FR/utterances/0701cdeaef70c65c903d105b0d1ffcd8c2cea1447c45e7c69c4c493cddff14b5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('d66c9eaf-aa85-5921-9061-d2789da6c461', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_daily_actions_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '538ef4d80f912447b3a04a16c65eb8f882e034de6cab63979878a6f43aef1e54'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e4243d2f-5f51-5e39-a179-652d18fe13e4', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('d66c9eaf-aa85-5921-9061-d2789da6c461', 1), '538ef4d80f912447b3a04a16c65eb8f882e034de6cab63979878a6f43aef1e54',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/0701cdeaef70c65c903d105b0d1ffcd8c2cea1447c45e7c69c4c493cddff14b5.mp3', 1332, '2026-09-14 09:42:22.072698', 'b68944da3909db952b39cc0e2c2901c06acea4f40e9ae5837f438ab180f53ae3', 'validated', '{"audio_key":"0701cdeaef70c65c903d105b0d1ffcd8c2cea1447c45e7c69c4c493cddff14b5","entity_key":"e_daily_actions_01_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b68944da3909db952b39cc0e2c2901c06acea4f40e9ae5837f438ab180f53ae3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/0701cdeaef70c65c903d105b0d1ffcd8c2cea1447c45e7c69c4c493cddff14b5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_identity_and_origin_01 -> audio/generated/fr-FR/utterances/0cfcbf40c923643fab227a32325d30dcb5b9e9985d0b18d2ee06fcbdf964089f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('8264f0f0-80dc-503f-8b8e-f7cd15f23112', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_identity_and_origin_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fdfc42d79f1e82dfe9c3bb2eafa347d9c19ab6dea0f1a8cbacf698243ad088c4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aa647423-2166-5251-9415-dd104d865029', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('8264f0f0-80dc-503f-8b8e-f7cd15f23112', 1), 'fdfc42d79f1e82dfe9c3bb2eafa347d9c19ab6dea0f1a8cbacf698243ad088c4',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/0cfcbf40c923643fab227a32325d30dcb5b9e9985d0b18d2ee06fcbdf964089f.mp3', 1149, '2026-09-14 09:42:22.225252', '6b750edd9c698128e7f1161e5c3f4d888eec575f0aa8e2ea045dc392676405fc', 'validated', '{"audio_key":"0cfcbf40c923643fab227a32325d30dcb5b9e9985d0b18d2ee06fcbdf964089f","entity_key":"u_identity_and_origin_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6b750edd9c698128e7f1161e5c3f4d888eec575f0aa8e2ea045dc392676405fc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/0cfcbf40c923643fab227a32325d30dcb5b9e9985d0b18d2ee06fcbdf964089f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_family_and_people_03 -> audio/generated/fr-FR/utterances/1872b883c6f91f3950e40f3426a24c2d225d7bbb0ff89a720b0d2309d6f55969.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('4cc2ac13-d683-56f4-823a-5b81d200a65b', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_family_and_people_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e33038dccf3475fd77150fac66118385f24b7c6a3ff1803b00642eb55a2e6f6b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ceebc395-0ea0-52d7-a5ca-208c8ed5992b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('4cc2ac13-d683-56f4-823a-5b81d200a65b', 1), 'e33038dccf3475fd77150fac66118385f24b7c6a3ff1803b00642eb55a2e6f6b',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/1872b883c6f91f3950e40f3426a24c2d225d7bbb0ff89a720b0d2309d6f55969.mp3', 1097, '2026-09-14 09:42:23.111726', '9cc1f657e83c651a75097a512d991a7fa6253597aa3cf13c423864ed0f1fa748', 'validated', '{"audio_key":"1872b883c6f91f3950e40f3426a24c2d225d7bbb0ff89a720b0d2309d6f55969","entity_key":"u_family_and_people_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9cc1f657e83c651a75097a512d991a7fa6253597aa3cf13c423864ed0f1fa748","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/1872b883c6f91f3950e40f3426a24c2d225d7bbb0ff89a720b0d2309d6f55969.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_time_and_schedule_04 -> audio/generated/fr-FR/utterances/1d91c40696540534c8f725dd4d75b959b584c63e6c60d6616485e2e7d8025e11.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('41031af7-6f80-56c5-8f7f-4aee8653c28a', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_time_and_schedule_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6cd6985f4055c78380053ab1aa51269c47dec4c28e7854c807a6bbcc1b1d0896'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('edec8ff9-b0df-5357-a767-45a5914fce38', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('41031af7-6f80-56c5-8f7f-4aee8653c28a', 1), '6cd6985f4055c78380053ab1aa51269c47dec4c28e7854c807a6bbcc1b1d0896',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/1d91c40696540534c8f725dd4d75b959b584c63e6c60d6616485e2e7d8025e11.mp3', 1671, '2026-09-14 09:42:23.393665', '6e927ce683fa481fb5fe2ce2c908c79a766a7a4f1307d64ba6a8f50aef46233f', 'validated', '{"audio_key":"1d91c40696540534c8f725dd4d75b959b584c63e6c60d6616485e2e7d8025e11","entity_key":"u_time_and_schedule_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6e927ce683fa481fb5fe2ce2c908c79a766a7a4f1307d64ba6a8f50aef46233f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/1d91c40696540534c8f725dd4d75b959b584c63e6c60d6616485e2e7d8025e11.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_time_and_schedule_02_listen -> audio/generated/fr-FR/utterances/1d91c40696540534c8f725dd4d75b959b584c63e6c60d6616485e2e7d8025e11.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('9f6da742-497e-5fd6-b61e-9cf7ec8712d4', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_time_and_schedule_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6cd6985f4055c78380053ab1aa51269c47dec4c28e7854c807a6bbcc1b1d0896'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6e3d7557-6855-54ec-9aef-e4c3715f2fb2', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('9f6da742-497e-5fd6-b61e-9cf7ec8712d4', 1), '6cd6985f4055c78380053ab1aa51269c47dec4c28e7854c807a6bbcc1b1d0896',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/1d91c40696540534c8f725dd4d75b959b584c63e6c60d6616485e2e7d8025e11.mp3', 1671, '2026-09-14 09:42:23.393665', '6e927ce683fa481fb5fe2ce2c908c79a766a7a4f1307d64ba6a8f50aef46233f', 'validated', '{"audio_key":"1d91c40696540534c8f725dd4d75b959b584c63e6c60d6616485e2e7d8025e11","entity_key":"e_time_and_schedule_02_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6e927ce683fa481fb5fe2ce2c908c79a766a7a4f1307d64ba6a8f50aef46233f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/1d91c40696540534c8f725dd4d75b959b584c63e6c60d6616485e2e7d8025e11.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_getting_around_04 -> audio/generated/fr-FR/utterances/21cdadd25875d8430c378eeac8598e8b11a5acf791a447fbc07ea90eccfad226.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('1dd416e6-aa29-57cc-8cda-40d971e758d0', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_getting_around_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd30c1478adca9af65c463f495bb9d796c675114db7feb06704be686f1d91a12f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('09ec5abb-ac10-5f1f-9ebd-3f96491a7d30', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('1dd416e6-aa29-57cc-8cda-40d971e758d0', 1), 'd30c1478adca9af65c463f495bb9d796c675114db7feb06704be686f1d91a12f',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/21cdadd25875d8430c378eeac8598e8b11a5acf791a447fbc07ea90eccfad226.mp3', 1018, '2026-09-14 09:42:24.143697', '73fdac4e284aa169fb5c0266086bf1f3c1acc467ebbf2f525197caf8d4ce7da6', 'validated', '{"audio_key":"21cdadd25875d8430c378eeac8598e8b11a5acf791a447fbc07ea90eccfad226","entity_key":"u_getting_around_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"73fdac4e284aa169fb5c0266086bf1f3c1acc467ebbf2f525197caf8d4ce7da6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/21cdadd25875d8430c378eeac8598e8b11a5acf791a447fbc07ea90eccfad226.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_getting_around_02_listen -> audio/generated/fr-FR/utterances/21cdadd25875d8430c378eeac8598e8b11a5acf791a447fbc07ea90eccfad226.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('23f09f1d-fef1-5e05-beb0-a354afe1e7b6', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_getting_around_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd30c1478adca9af65c463f495bb9d796c675114db7feb06704be686f1d91a12f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cf03f421-0017-5d9a-8450-e232c160b892', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('23f09f1d-fef1-5e05-beb0-a354afe1e7b6', 1), 'd30c1478adca9af65c463f495bb9d796c675114db7feb06704be686f1d91a12f',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/21cdadd25875d8430c378eeac8598e8b11a5acf791a447fbc07ea90eccfad226.mp3', 1018, '2026-09-14 09:42:24.143697', '73fdac4e284aa169fb5c0266086bf1f3c1acc467ebbf2f525197caf8d4ce7da6', 'validated', '{"audio_key":"21cdadd25875d8430c378eeac8598e8b11a5acf791a447fbc07ea90eccfad226","entity_key":"e_getting_around_02_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"73fdac4e284aa169fb5c0266086bf1f3c1acc467ebbf2f525197caf8d4ce7da6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/21cdadd25875d8430c378eeac8598e8b11a5acf791a447fbc07ea90eccfad226.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_articles_and_objects_03 -> audio/generated/fr-FR/utterances/229259beccacba55d7a939bbc384c564096051213dd621a92b7b532da589949f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ec2bc145-375b-5859-827f-f5761bf4e219', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_articles_and_objects_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '61228a78c49a5946ccb5f848eb35db4837375249867bc5ea3b3bf821c5a2ce08'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('08d964d6-60b3-5dfd-b25f-c9a399409aa2', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ec2bc145-375b-5859-827f-f5761bf4e219', 1), '61228a78c49a5946ccb5f848eb35db4837375249867bc5ea3b3bf821c5a2ce08',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/229259beccacba55d7a939bbc384c564096051213dd621a92b7b532da589949f.mp3', 1488, '2026-09-14 09:42:24.408605', '4c8237ba7a09fe683bc9768503646576dd647f4f074e4930a6268d942f9bd908', 'validated', '{"audio_key":"229259beccacba55d7a939bbc384c564096051213dd621a92b7b532da589949f","entity_key":"u_articles_and_objects_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4c8237ba7a09fe683bc9768503646576dd647f4f074e4930a6268d942f9bd908","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/229259beccacba55d7a939bbc384c564096051213dd621a92b7b532da589949f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_daily_actions_04 -> audio/generated/fr-FR/utterances/24836378ac7bf11ba1ce88de0491adb6719d54ed85181c8515982cb64323b033.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('48f84008-035f-5b62-b64b-48f81bbf867c', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_daily_actions_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '218f0f1a1e8bb8ee135aff43ad398322d793af2ec48b50f07150b6ae15e8930b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8cee7f94-122f-568e-99ac-b21ad0ad1c1c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('48f84008-035f-5b62-b64b-48f81bbf867c', 1), '218f0f1a1e8bb8ee135aff43ad398322d793af2ec48b50f07150b6ae15e8930b',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/24836378ac7bf11ba1ce88de0491adb6719d54ed85181c8515982cb64323b033.mp3', 1515, '2026-09-14 09:42:25.259221', '16c9b6fcd649d46152ec984665ed3764aadc2265f7472c5814b5a4b8264a72fd', 'validated', '{"audio_key":"24836378ac7bf11ba1ce88de0491adb6719d54ed85181c8515982cb64323b033","entity_key":"u_daily_actions_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"16c9b6fcd649d46152ec984665ed3764aadc2265f7472c5814b5a4b8264a72fd","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/24836378ac7bf11ba1ce88de0491adb6719d54ed85181c8515982cb64323b033.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_daily_actions_02_listen -> audio/generated/fr-FR/utterances/24836378ac7bf11ba1ce88de0491adb6719d54ed85181c8515982cb64323b033.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('04fdcbee-a53d-56ee-a50f-ad82b53a46a8', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_daily_actions_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '218f0f1a1e8bb8ee135aff43ad398322d793af2ec48b50f07150b6ae15e8930b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ec78ee60-9236-56ea-8976-cb8341f80346', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('04fdcbee-a53d-56ee-a50f-ad82b53a46a8', 1), '218f0f1a1e8bb8ee135aff43ad398322d793af2ec48b50f07150b6ae15e8930b',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/24836378ac7bf11ba1ce88de0491adb6719d54ed85181c8515982cb64323b033.mp3', 1515, '2026-09-14 09:42:25.259221', '16c9b6fcd649d46152ec984665ed3764aadc2265f7472c5814b5a4b8264a72fd', 'validated', '{"audio_key":"24836378ac7bf11ba1ce88de0491adb6719d54ed85181c8515982cb64323b033","entity_key":"e_daily_actions_02_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"16c9b6fcd649d46152ec984665ed3764aadc2265f7472c5814b5a4b8264a72fd","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/24836378ac7bf11ba1ce88de0491adb6719d54ed85181c8515982cb64323b033.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_getting_around_03 -> audio/generated/fr-FR/utterances/2ac8dcd0cbd42a0dde090f421b3ae1024bafe0e0eb799a1ff6375c6d013b814c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e1d1674e-460e-5f71-8c0f-3c68ba56a202', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_getting_around_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9a7957dea5b58fedcb960a3b8b8802d1724f731f4e774b344853a917821ecd67'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('af554bfe-ea1a-565b-8cfc-55a6b8b29c90', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e1d1674e-460e-5f71-8c0f-3c68ba56a202', 1), '9a7957dea5b58fedcb960a3b8b8802d1724f731f4e774b344853a917821ecd67',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/2ac8dcd0cbd42a0dde090f421b3ae1024bafe0e0eb799a1ff6375c6d013b814c.mp3', 1097, '2026-09-14 09:42:25.633361', '99117f9cc3bc3ad5738a0da10c6a46ffe6c1326c4d2f2d4f71c36d0e8c9e19a9', 'validated', '{"audio_key":"2ac8dcd0cbd42a0dde090f421b3ae1024bafe0e0eb799a1ff6375c6d013b814c","entity_key":"u_getting_around_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"99117f9cc3bc3ad5738a0da10c6a46ffe6c1326c4d2f2d4f71c36d0e8c9e19a9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/2ac8dcd0cbd42a0dde090f421b3ae1024bafe0e0eb799a1ff6375c6d013b814c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_a1_day_capstone_03 -> audio/generated/fr-FR/utterances/39250317ef7d1427b26171522be33ea0cef35c23161c97de587b12ae83de4f4f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e915c8b8-8526-5128-b944-fa7d818e5f17', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_a1_day_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a2148efed869fa3f55d1cfda57b2a5c78f6e67df9d3ffc45f734fb672d55c1a4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('09d6df8d-37fc-564a-b993-dc442f4fe9a3', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e915c8b8-8526-5128-b944-fa7d818e5f17', 1), 'a2148efed869fa3f55d1cfda57b2a5c78f6e67df9d3ffc45f734fb672d55c1a4',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/39250317ef7d1427b26171522be33ea0cef35c23161c97de587b12ae83de4f4f.mp3', 1253, '2026-09-14 09:42:26.323229', 'a26125e4d3b0d3277946881b8a974c3f4b98754e6d29f95f61b5f39e538e1939', 'validated', '{"audio_key":"39250317ef7d1427b26171522be33ea0cef35c23161c97de587b12ae83de4f4f","entity_key":"u_a1_day_capstone_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a26125e4d3b0d3277946881b8a974c3f4b98754e6d29f95f61b5f39e538e1939","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/39250317ef7d1427b26171522be33ea0cef35c23161c97de587b12ae83de4f4f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_shopping_and_prices_02 -> audio/generated/fr-FR/utterances/39b2d9be69be24f7eab5700702d767be6edab7656d429d102fa224e9efa2f360.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('fd7bb024-762a-56dd-a9b2-4b1c8a66bd50', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_shopping_and_prices_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '522ccfc302cdab66c53b535877fac1d3fddf6cd14e48fe53d2626e84b9c3a061'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('288975e8-2934-56a4-aae2-0106c99335f7', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('fd7bb024-762a-56dd-a9b2-4b1c8a66bd50', 1), '522ccfc302cdab66c53b535877fac1d3fddf6cd14e48fe53d2626e84b9c3a061',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/39b2d9be69be24f7eab5700702d767be6edab7656d429d102fa224e9efa2f360.mp3', 1280, '2026-09-14 09:42:26.691694', '01e7621e0d13eb04a27e25f513e70e3cc93f7d0f189f89871844735564849e9c', 'validated', '{"audio_key":"39b2d9be69be24f7eab5700702d767be6edab7656d429d102fa224e9efa2f360","entity_key":"u_shopping_and_prices_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"01e7621e0d13eb04a27e25f513e70e3cc93f7d0f189f89871844735564849e9c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/39b2d9be69be24f7eab5700702d767be6edab7656d429d102fa224e9efa2f360.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_shopping_and_prices_01_listen -> audio/generated/fr-FR/utterances/39b2d9be69be24f7eab5700702d767be6edab7656d429d102fa224e9efa2f360.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('268d51f0-71de-5118-a66c-c515226407e2', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_shopping_and_prices_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '522ccfc302cdab66c53b535877fac1d3fddf6cd14e48fe53d2626e84b9c3a061'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5c1402ce-1e49-5455-8ac7-86008aa66f41', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('268d51f0-71de-5118-a66c-c515226407e2', 1), '522ccfc302cdab66c53b535877fac1d3fddf6cd14e48fe53d2626e84b9c3a061',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/39b2d9be69be24f7eab5700702d767be6edab7656d429d102fa224e9efa2f360.mp3', 1280, '2026-09-14 09:42:26.691694', '01e7621e0d13eb04a27e25f513e70e3cc93f7d0f189f89871844735564849e9c', 'validated', '{"audio_key":"39b2d9be69be24f7eab5700702d767be6edab7656d429d102fa224e9efa2f360","entity_key":"e_shopping_and_prices_01_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"01e7621e0d13eb04a27e25f513e70e3cc93f7d0f189f89871844735564849e9c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/39b2d9be69be24f7eab5700702d767be6edab7656d429d102fa224e9efa2f360.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_a1_day_capstone_04 -> audio/generated/fr-FR/utterances/44add457edda45b27e5e9d288f6ab89d896d248e71db1ca6099f3b0b62ceec70.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('5bc96814-2213-5cb6-b451-b2d83ae72864', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_a1_day_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '44733e79741b3555776ac1fb6c0c5e70f5ebcdc41c0a30d3254fde7ce4a19176'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('38ac7364-ee87-59ef-bcbe-600c634e5bf3', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('5bc96814-2213-5cb6-b451-b2d83ae72864', 1), '44733e79741b3555776ac1fb6c0c5e70f5ebcdc41c0a30d3254fde7ce4a19176',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/44add457edda45b27e5e9d288f6ab89d896d248e71db1ca6099f3b0b62ceec70.mp3', 1802, '2026-09-14 09:42:27.422880', 'b67035755cf567e38a4d8ef62f46c264b34d8d4ea02ba09dc2fd39c26480f7a9', 'validated', '{"audio_key":"44add457edda45b27e5e9d288f6ab89d896d248e71db1ca6099f3b0b62ceec70","entity_key":"u_a1_day_capstone_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b67035755cf567e38a4d8ef62f46c264b34d8d4ea02ba09dc2fd39c26480f7a9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/44add457edda45b27e5e9d288f6ab89d896d248e71db1ca6099f3b0b62ceec70.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_a1_day_capstone_02_listen -> audio/generated/fr-FR/utterances/44add457edda45b27e5e9d288f6ab89d896d248e71db1ca6099f3b0b62ceec70.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('c5eb2dcf-d4e8-59ff-b478-e43a33171d57', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_a1_day_capstone_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '44733e79741b3555776ac1fb6c0c5e70f5ebcdc41c0a30d3254fde7ce4a19176'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d92fd146-13d5-5611-befa-47f4b8a1fd84', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('c5eb2dcf-d4e8-59ff-b478-e43a33171d57', 1), '44733e79741b3555776ac1fb6c0c5e70f5ebcdc41c0a30d3254fde7ce4a19176',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/44add457edda45b27e5e9d288f6ab89d896d248e71db1ca6099f3b0b62ceec70.mp3', 1802, '2026-09-14 09:42:27.422880', 'b67035755cf567e38a4d8ef62f46c264b34d8d4ea02ba09dc2fd39c26480f7a9', 'validated', '{"audio_key":"44add457edda45b27e5e9d288f6ab89d896d248e71db1ca6099f3b0b62ceec70","entity_key":"e_a1_day_capstone_02_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b67035755cf567e38a4d8ef62f46c264b34d8d4ea02ba09dc2fd39c26480f7a9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/44add457edda45b27e5e9d288f6ab89d896d248e71db1ca6099f3b0b62ceec70.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_getting_around_02 -> audio/generated/fr-FR/utterances/47bc43b4d88c2cc7ee9e53ad3a866c6ef5afd2f18ebd82e9096180372078581c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9af8740a-097e-5aac-90f1-a7077d44e26b', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_getting_around_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6abb09e0d841b89118483dcc8e2ccc98f28ba34e2014acaf7eeea8c9f223d24f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('05d104ca-393d-5a73-bb77-b8a36f6e5b2f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9af8740a-097e-5aac-90f1-a7077d44e26b', 1), '6abb09e0d841b89118483dcc8e2ccc98f28ba34e2014acaf7eeea8c9f223d24f',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/47bc43b4d88c2cc7ee9e53ad3a866c6ef5afd2f18ebd82e9096180372078581c.mp3', 1253, '2026-09-14 09:42:27.798755', 'd04c935e0c83b1afd1933d1a4c9584fe0d04f6fbdae10e41ea995a145f7188c8', 'validated', '{"audio_key":"47bc43b4d88c2cc7ee9e53ad3a866c6ef5afd2f18ebd82e9096180372078581c","entity_key":"u_getting_around_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d04c935e0c83b1afd1933d1a4c9584fe0d04f6fbdae10e41ea995a145f7188c8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/47bc43b4d88c2cc7ee9e53ad3a866c6ef5afd2f18ebd82e9096180372078581c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_getting_around_01_listen -> audio/generated/fr-FR/utterances/47bc43b4d88c2cc7ee9e53ad3a866c6ef5afd2f18ebd82e9096180372078581c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('23dd2c5f-95a1-57b5-a598-38c4533450f6', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_getting_around_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6abb09e0d841b89118483dcc8e2ccc98f28ba34e2014acaf7eeea8c9f223d24f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('914deef2-ca48-563d-92b8-537e184e0993', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('23dd2c5f-95a1-57b5-a598-38c4533450f6', 1), '6abb09e0d841b89118483dcc8e2ccc98f28ba34e2014acaf7eeea8c9f223d24f',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/47bc43b4d88c2cc7ee9e53ad3a866c6ef5afd2f18ebd82e9096180372078581c.mp3', 1253, '2026-09-14 09:42:27.798755', 'd04c935e0c83b1afd1933d1a4c9584fe0d04f6fbdae10e41ea995a145f7188c8', 'validated', '{"audio_key":"47bc43b4d88c2cc7ee9e53ad3a866c6ef5afd2f18ebd82e9096180372078581c","entity_key":"e_getting_around_01_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d04c935e0c83b1afd1933d1a4c9584fe0d04f6fbdae10e41ea995a145f7188c8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/47bc43b4d88c2cc7ee9e53ad3a866c6ef5afd2f18ebd82e9096180372078581c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_identity_and_origin_04 -> audio/generated/fr-FR/utterances/533bb45d533db8897239aa204faf8f1d0ad1c0a5523df9e7a41b83350e40fb56.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d767df0f-3b20-5d18-9a6e-15cb7fda09a3', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_identity_and_origin_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a6a8873e8cb804a43130965433bc0086c68354cb32dbd19f020297600054a77c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aa455379-8e32-5af0-948b-784628efd5c0', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d767df0f-3b20-5d18-9a6e-15cb7fda09a3', 1), 'a6a8873e8cb804a43130965433bc0086c68354cb32dbd19f020297600054a77c',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/533bb45d533db8897239aa204faf8f1d0ad1c0a5523df9e7a41b83350e40fb56.mp3', 1253, '2026-09-14 09:42:28.433345', 'e6463ea414425bcf70cee2424b4311fde2a5d5351f98f48231975c9c45491529', 'validated', '{"audio_key":"533bb45d533db8897239aa204faf8f1d0ad1c0a5523df9e7a41b83350e40fb56","entity_key":"u_identity_and_origin_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e6463ea414425bcf70cee2424b4311fde2a5d5351f98f48231975c9c45491529","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/533bb45d533db8897239aa204faf8f1d0ad1c0a5523df9e7a41b83350e40fb56.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_identity_and_origin_02_listen -> audio/generated/fr-FR/utterances/533bb45d533db8897239aa204faf8f1d0ad1c0a5523df9e7a41b83350e40fb56.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('c96ee74b-5abc-51f3-b20c-c849f6f9e7b3', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_identity_and_origin_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a6a8873e8cb804a43130965433bc0086c68354cb32dbd19f020297600054a77c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('743aa491-9e64-56ba-ad69-ea04e1967da2', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('c96ee74b-5abc-51f3-b20c-c849f6f9e7b3', 1), 'a6a8873e8cb804a43130965433bc0086c68354cb32dbd19f020297600054a77c',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/533bb45d533db8897239aa204faf8f1d0ad1c0a5523df9e7a41b83350e40fb56.mp3', 1253, '2026-09-14 09:42:28.433345', 'e6463ea414425bcf70cee2424b4311fde2a5d5351f98f48231975c9c45491529', 'validated', '{"audio_key":"533bb45d533db8897239aa204faf8f1d0ad1c0a5523df9e7a41b83350e40fb56","entity_key":"e_identity_and_origin_02_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e6463ea414425bcf70cee2424b4311fde2a5d5351f98f48231975c9c45491529","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/533bb45d533db8897239aa204faf8f1d0ad1c0a5523df9e7a41b83350e40fb56.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_articles_and_objects_04 -> audio/generated/fr-FR/utterances/573017b5523a0adaf6e1b3f535ddd059d28639c2df7ba606719bdae73f9f5efb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f49165c0-9ef4-5efe-9314-50ff40da974d', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_articles_and_objects_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b5af1f63a60ea594d1d24b061514f9f2ad50dbed6b2991fb76cb17cd0e66cdf6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f5956ead-55e0-5798-9c65-ac5f45e00b3e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f49165c0-9ef4-5efe-9314-50ff40da974d', 1), 'b5af1f63a60ea594d1d24b061514f9f2ad50dbed6b2991fb76cb17cd0e66cdf6',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/573017b5523a0adaf6e1b3f535ddd059d28639c2df7ba606719bdae73f9f5efb.mp3', 1332, '2026-09-14 09:42:29.070988', '86d39b38e7714dae768a3640ed8ddbf0a73b7510d7d523e8289e087d46129c0b', 'validated', '{"audio_key":"573017b5523a0adaf6e1b3f535ddd059d28639c2df7ba606719bdae73f9f5efb","entity_key":"u_articles_and_objects_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"86d39b38e7714dae768a3640ed8ddbf0a73b7510d7d523e8289e087d46129c0b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/573017b5523a0adaf6e1b3f535ddd059d28639c2df7ba606719bdae73f9f5efb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_articles_and_objects_02_listen -> audio/generated/fr-FR/utterances/573017b5523a0adaf6e1b3f535ddd059d28639c2df7ba606719bdae73f9f5efb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('8783335c-774c-5bd2-b889-e3abbf3596ed', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_articles_and_objects_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b5af1f63a60ea594d1d24b061514f9f2ad50dbed6b2991fb76cb17cd0e66cdf6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('91a0311b-789d-5739-a958-268ccdea9e23', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('8783335c-774c-5bd2-b889-e3abbf3596ed', 1), 'b5af1f63a60ea594d1d24b061514f9f2ad50dbed6b2991fb76cb17cd0e66cdf6',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/573017b5523a0adaf6e1b3f535ddd059d28639c2df7ba606719bdae73f9f5efb.mp3', 1332, '2026-09-14 09:42:29.070988', '86d39b38e7714dae768a3640ed8ddbf0a73b7510d7d523e8289e087d46129c0b', 'validated', '{"audio_key":"573017b5523a0adaf6e1b3f535ddd059d28639c2df7ba606719bdae73f9f5efb","entity_key":"e_articles_and_objects_02_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"86d39b38e7714dae768a3640ed8ddbf0a73b7510d7d523e8289e087d46129c0b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/573017b5523a0adaf6e1b3f535ddd059d28639c2df7ba606719bdae73f9f5efb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_identity_and_origin_03 -> audio/generated/fr-FR/utterances/5ddef7eb11e3802d8feeff218e1e4f9851e68b8fc5bcee82a88e32d60c3b506d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ac3f5d7a-2ca2-54b4-bca9-fe0d90e5e010', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_identity_and_origin_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '90e4ef6ea9a26fba183ebc932941ef312250c8da40e83e11fac698a7e9793769'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0c9e7a18-6405-5360-af43-111f0fb17b7d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ac3f5d7a-2ca2-54b4-bca9-fe0d90e5e010', 1), '90e4ef6ea9a26fba183ebc932941ef312250c8da40e83e11fac698a7e9793769',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/5ddef7eb11e3802d8feeff218e1e4f9851e68b8fc5bcee82a88e32d60c3b506d.mp3', 1253, '2026-09-14 09:42:29.545352', '1d84c5a177fd05cb5080ced04c92bfe0a442a497fde1acdea735ef9c934f7d27', 'validated', '{"audio_key":"5ddef7eb11e3802d8feeff218e1e4f9851e68b8fc5bcee82a88e32d60c3b506d","entity_key":"u_identity_and_origin_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1d84c5a177fd05cb5080ced04c92bfe0a442a497fde1acdea735ef9c934f7d27","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/5ddef7eb11e3802d8feeff218e1e4f9851e68b8fc5bcee82a88e32d60c3b506d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_time_and_schedule_02 -> audio/generated/fr-FR/utterances/70c50e5f9c12c85d24cfc65f0183dc3bb8f3b1b79e5c741920524d55fad13e9f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a05deb1f-46c9-500f-9dc1-fc23772cc8c3', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_time_and_schedule_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd23011a056e109b324608ca103c6ce6791ac32dec6c33cd20c6da21aa0f24f1a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('49b5497e-3df9-5ddb-9763-3d967b4f50cb', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a05deb1f-46c9-500f-9dc1-fc23772cc8c3', 1), 'd23011a056e109b324608ca103c6ce6791ac32dec6c33cd20c6da21aa0f24f1a',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/70c50e5f9c12c85d24cfc65f0183dc3bb8f3b1b79e5c741920524d55fad13e9f.mp3', 1201, '2026-09-14 09:42:30.151180', 'ed96b0d1e361b462e0bea96a16e004445d5ed255e65cfee483a05e87dc11fea0', 'validated', '{"audio_key":"70c50e5f9c12c85d24cfc65f0183dc3bb8f3b1b79e5c741920524d55fad13e9f","entity_key":"u_time_and_schedule_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ed96b0d1e361b462e0bea96a16e004445d5ed255e65cfee483a05e87dc11fea0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/70c50e5f9c12c85d24cfc65f0183dc3bb8f3b1b79e5c741920524d55fad13e9f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_time_and_schedule_01_listen -> audio/generated/fr-FR/utterances/70c50e5f9c12c85d24cfc65f0183dc3bb8f3b1b79e5c741920524d55fad13e9f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('844bc951-7df0-5419-96f4-1fc5b148ac4c', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_time_and_schedule_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd23011a056e109b324608ca103c6ce6791ac32dec6c33cd20c6da21aa0f24f1a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('94c73efa-1fc5-5728-9886-d3e0d8410b07', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('844bc951-7df0-5419-96f4-1fc5b148ac4c', 1), 'd23011a056e109b324608ca103c6ce6791ac32dec6c33cd20c6da21aa0f24f1a',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/70c50e5f9c12c85d24cfc65f0183dc3bb8f3b1b79e5c741920524d55fad13e9f.mp3', 1201, '2026-09-14 09:42:30.151180', 'ed96b0d1e361b462e0bea96a16e004445d5ed255e65cfee483a05e87dc11fea0', 'validated', '{"audio_key":"70c50e5f9c12c85d24cfc65f0183dc3bb8f3b1b79e5c741920524d55fad13e9f","entity_key":"e_time_and_schedule_01_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ed96b0d1e361b462e0bea96a16e004445d5ed255e65cfee483a05e87dc11fea0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/70c50e5f9c12c85d24cfc65f0183dc3bb8f3b1b79e5c741920524d55fad13e9f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_shopping_and_prices_01 -> audio/generated/fr-FR/utterances/75a603b9a09233f40bae6b5dbde4a5ab7d308e10d4549346f42d4786e18bd081.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7eb8afb8-0b44-583d-88b2-a5139daaa4b3', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_shopping_and_prices_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1b89398c35f2243ad193515d1f1d79f9351e06906b74dd3f090c23b7ba3d4e21'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6127a2de-736e-5364-bf22-5b23d55947f6', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7eb8afb8-0b44-583d-88b2-a5139daaa4b3', 1), '1b89398c35f2243ad193515d1f1d79f9351e06906b74dd3f090c23b7ba3d4e21',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/75a603b9a09233f40bae6b5dbde4a5ab7d308e10d4549346f42d4786e18bd081.mp3', 1149, '2026-09-14 09:42:30.706088', '0df4acb72b8e415086e3b3f574fbb644bf57694d5dca4317e17a909cb4ce23d5', 'validated', '{"audio_key":"75a603b9a09233f40bae6b5dbde4a5ab7d308e10d4549346f42d4786e18bd081","entity_key":"u_shopping_and_prices_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0df4acb72b8e415086e3b3f574fbb644bf57694d5dca4317e17a909cb4ce23d5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/75a603b9a09233f40bae6b5dbde4a5ab7d308e10d4549346f42d4786e18bd081.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_home_and_location_04 -> audio/generated/fr-FR/utterances/7ae0293611f7f8165ea2222aee0ef6e33b9cbd16d6ac39299dd81ff35eabe306.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('df09240c-b053-52fa-b568-9d088fc0dd8b', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_home_and_location_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fda9b744db1313b9003a272a1e0ed4e98854e07918d9c6c869aea2c8cbd7b042'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('68b1ee37-6655-5af7-82c2-923d5532fa3a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('df09240c-b053-52fa-b568-9d088fc0dd8b', 1), 'fda9b744db1313b9003a272a1e0ed4e98854e07918d9c6c869aea2c8cbd7b042',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/7ae0293611f7f8165ea2222aee0ef6e33b9cbd16d6ac39299dd81ff35eabe306.mp3', 1515, '2026-09-14 09:42:31.432623', 'b99e29423966f0bc74b18cf4c1082a9965f707969843754c2a0bc51630b2b2a2', 'validated', '{"audio_key":"7ae0293611f7f8165ea2222aee0ef6e33b9cbd16d6ac39299dd81ff35eabe306","entity_key":"u_home_and_location_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b99e29423966f0bc74b18cf4c1082a9965f707969843754c2a0bc51630b2b2a2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/7ae0293611f7f8165ea2222aee0ef6e33b9cbd16d6ac39299dd81ff35eabe306.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_home_and_location_02_listen -> audio/generated/fr-FR/utterances/7ae0293611f7f8165ea2222aee0ef6e33b9cbd16d6ac39299dd81ff35eabe306.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('457e6f6b-630c-5f45-92d7-f14fdd77b343', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_home_and_location_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fda9b744db1313b9003a272a1e0ed4e98854e07918d9c6c869aea2c8cbd7b042'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0df25664-c477-5884-a57d-7bc954f0cc94', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('457e6f6b-630c-5f45-92d7-f14fdd77b343', 1), 'fda9b744db1313b9003a272a1e0ed4e98854e07918d9c6c869aea2c8cbd7b042',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/7ae0293611f7f8165ea2222aee0ef6e33b9cbd16d6ac39299dd81ff35eabe306.mp3', 1515, '2026-09-14 09:42:31.432623', 'b99e29423966f0bc74b18cf4c1082a9965f707969843754c2a0bc51630b2b2a2', 'validated', '{"audio_key":"7ae0293611f7f8165ea2222aee0ef6e33b9cbd16d6ac39299dd81ff35eabe306","entity_key":"e_home_and_location_02_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b99e29423966f0bc74b18cf4c1082a9965f707969843754c2a0bc51630b2b2a2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/7ae0293611f7f8165ea2222aee0ef6e33b9cbd16d6ac39299dd81ff35eabe306.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_home_and_location_03 -> audio/generated/fr-FR/utterances/7c4660179c25c91420fc2107cf7592ee41bc7e9c441309ece7193405d870dce8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d2ac8c04-b391-55c2-9c96-ac38b90d7990', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_home_and_location_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd355f530aaa74bc0ccdcc8057d889e0386ae79f027558e112c6fbdb3c5e75666'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('40965ab3-bae6-5533-b219-0f63e6b0d7a2', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d2ac8c04-b391-55c2-9c96-ac38b90d7990', 1), 'd355f530aaa74bc0ccdcc8057d889e0386ae79f027558e112c6fbdb3c5e75666',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/7c4660179c25c91420fc2107cf7592ee41bc7e9c441309ece7193405d870dce8.mp3', 1253, '2026-09-14 09:42:31.700022', 'c182c869c4e48640971a4a3cb3acad2c643d2d33a49cef74093f66fcbe6b8b14', 'validated', '{"audio_key":"7c4660179c25c91420fc2107cf7592ee41bc7e9c441309ece7193405d870dce8","entity_key":"u_home_and_location_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c182c869c4e48640971a4a3cb3acad2c643d2d33a49cef74093f66fcbe6b8b14","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/7c4660179c25c91420fc2107cf7592ee41bc7e9c441309ece7193405d870dce8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_home_and_location_02 -> audio/generated/fr-FR/utterances/810aa0b678d2afe36a2249fab563e9449b76ed634e5e053b10700d71c4c9cf54.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a4c39d51-7b68-5fef-8173-02a45efc2b90', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_home_and_location_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '04f92c69a5145f67e12cc645532a36ebbc7514abf3c403ca19cf222793e6f906'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c2ef21fe-ea4f-5dd0-8848-a7a7946df193', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a4c39d51-7b68-5fef-8173-02a45efc2b90', 1), '04f92c69a5145f67e12cc645532a36ebbc7514abf3c403ca19cf222793e6f906',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/810aa0b678d2afe36a2249fab563e9449b76ed634e5e053b10700d71c4c9cf54.mp3', 1201, '2026-09-14 09:42:32.530579', '997bcc200d3e16b58d34d76f2792ec52ff7e8dc565906d3ef3dd49108805789e', 'validated', '{"audio_key":"810aa0b678d2afe36a2249fab563e9449b76ed634e5e053b10700d71c4c9cf54","entity_key":"u_home_and_location_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"997bcc200d3e16b58d34d76f2792ec52ff7e8dc565906d3ef3dd49108805789e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/810aa0b678d2afe36a2249fab563e9449b76ed634e5e053b10700d71c4c9cf54.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_home_and_location_01_listen -> audio/generated/fr-FR/utterances/810aa0b678d2afe36a2249fab563e9449b76ed634e5e053b10700d71c4c9cf54.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('3088b73d-8cb9-5783-940a-046ee36d7751', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_home_and_location_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '04f92c69a5145f67e12cc645532a36ebbc7514abf3c403ca19cf222793e6f906'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('31d39880-70be-5127-838f-4bad8d0c3d0c', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('3088b73d-8cb9-5783-940a-046ee36d7751', 1), '04f92c69a5145f67e12cc645532a36ebbc7514abf3c403ca19cf222793e6f906',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/810aa0b678d2afe36a2249fab563e9449b76ed634e5e053b10700d71c4c9cf54.mp3', 1201, '2026-09-14 09:42:32.530579', '997bcc200d3e16b58d34d76f2792ec52ff7e8dc565906d3ef3dd49108805789e', 'validated', '{"audio_key":"810aa0b678d2afe36a2249fab563e9449b76ed634e5e053b10700d71c4c9cf54","entity_key":"e_home_and_location_01_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"997bcc200d3e16b58d34d76f2792ec52ff7e8dc565906d3ef3dd49108805789e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/810aa0b678d2afe36a2249fab563e9449b76ed634e5e053b10700d71c4c9cf54.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_a1_day_capstone_01 -> audio/generated/fr-FR/utterances/881f32cdccccc187fd77cd0b1f48a9f51680175da8ad3ecb0d4952b1ae01de52.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('4e890750-0d42-5983-9d3c-902090c66cfe', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_a1_day_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8b56db5ce55ca7da695fe094bfb8246a29b4ac6a5b00e77b097fcb8a64159def'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0eaf35f5-5f48-5dd5-8450-a4abb83e53ce', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('4e890750-0d42-5983-9d3c-902090c66cfe', 1), '8b56db5ce55ca7da695fe094bfb8246a29b4ac6a5b00e77b097fcb8a64159def',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/881f32cdccccc187fd77cd0b1f48a9f51680175da8ad3ecb0d4952b1ae01de52.mp3', 1332, '2026-09-14 09:42:32.856288', '4eb274bd1b7193315e46dd0de0b460976de6654e70e99bec0b2bb34a6d0a16b2', 'validated', '{"audio_key":"881f32cdccccc187fd77cd0b1f48a9f51680175da8ad3ecb0d4952b1ae01de52","entity_key":"u_a1_day_capstone_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4eb274bd1b7193315e46dd0de0b460976de6654e70e99bec0b2bb34a6d0a16b2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/881f32cdccccc187fd77cd0b1f48a9f51680175da8ad3ecb0d4952b1ae01de52.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_cafe_basics_04 -> audio/generated/fr-FR/utterances/a00d05c1af2bd0524ae63a42bb815fa750e93b4daecc6f5f4adc5ffedb2126bd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d4d5bd0d-e780-5d08-956e-52402cc36e9d', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_cafe_basics_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e8037db1bb38cd37c91e939c5e3faca6d1d97028e92208b1998c2bae8866ad59'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('23b2bbcd-90d5-5f94-873a-d211c2f59c3b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d4d5bd0d-e780-5d08-956e-52402cc36e9d', 1), 'e8037db1bb38cd37c91e939c5e3faca6d1d97028e92208b1998c2bae8866ad59',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/a00d05c1af2bd0524ae63a42bb815fa750e93b4daecc6f5f4adc5ffedb2126bd.mp3', 1149, '2026-09-14 09:42:33.589146', 'cf742ffbe35e9a0f816fb92d5ae23eb34425d832deae439868c66c380d19bffc', 'validated', '{"audio_key":"a00d05c1af2bd0524ae63a42bb815fa750e93b4daecc6f5f4adc5ffedb2126bd","entity_key":"u_cafe_basics_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"cf742ffbe35e9a0f816fb92d5ae23eb34425d832deae439868c66c380d19bffc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/a00d05c1af2bd0524ae63a42bb815fa750e93b4daecc6f5f4adc5ffedb2126bd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_cafe_basics_02_listen -> audio/generated/fr-FR/utterances/a00d05c1af2bd0524ae63a42bb815fa750e93b4daecc6f5f4adc5ffedb2126bd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('13aaaf32-ad30-5187-98b6-e63966dc60fc', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_cafe_basics_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e8037db1bb38cd37c91e939c5e3faca6d1d97028e92208b1998c2bae8866ad59'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d9d79be8-bf4b-5e8e-96a7-51b6e8d3aadc', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('13aaaf32-ad30-5187-98b6-e63966dc60fc', 1), 'e8037db1bb38cd37c91e939c5e3faca6d1d97028e92208b1998c2bae8866ad59',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/a00d05c1af2bd0524ae63a42bb815fa750e93b4daecc6f5f4adc5ffedb2126bd.mp3', 1149, '2026-09-14 09:42:33.589146', 'cf742ffbe35e9a0f816fb92d5ae23eb34425d832deae439868c66c380d19bffc', 'validated', '{"audio_key":"a00d05c1af2bd0524ae63a42bb815fa750e93b4daecc6f5f4adc5ffedb2126bd","entity_key":"e_cafe_basics_02_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"cf742ffbe35e9a0f816fb92d5ae23eb34425d832deae439868c66c380d19bffc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/a00d05c1af2bd0524ae63a42bb815fa750e93b4daecc6f5f4adc5ffedb2126bd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_family_and_people_02 -> audio/generated/fr-FR/utterances/a1b5974575d4820bb8c3faa1e57e2c76e07cd09496c4fbae14aa9371a0ab9492.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d54adbed-937f-54e6-ad10-0b1f8e92b0d5', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_family_and_people_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '727a8c1ea65696e3c43f1cbb8a81955047b994f0c2e25723de151d4d927291cb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('21606f3d-93c5-55b7-9f8d-73a92bb2bf0c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d54adbed-937f-54e6-ad10-0b1f8e92b0d5', 1), '727a8c1ea65696e3c43f1cbb8a81955047b994f0c2e25723de151d4d927291cb',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/a1b5974575d4820bb8c3faa1e57e2c76e07cd09496c4fbae14aa9371a0ab9492.mp3', 1071, '2026-09-14 09:42:33.915276', 'b03497b051fc52461cfa88e28a57c79c870ab6aab3d910047465cda65203c5e2', 'validated', '{"audio_key":"a1b5974575d4820bb8c3faa1e57e2c76e07cd09496c4fbae14aa9371a0ab9492","entity_key":"u_family_and_people_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b03497b051fc52461cfa88e28a57c79c870ab6aab3d910047465cda65203c5e2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/a1b5974575d4820bb8c3faa1e57e2c76e07cd09496c4fbae14aa9371a0ab9492.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_family_and_people_01_listen -> audio/generated/fr-FR/utterances/a1b5974575d4820bb8c3faa1e57e2c76e07cd09496c4fbae14aa9371a0ab9492.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('aa20ac74-d957-5e16-a19f-fe7e956ffe5c', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_family_and_people_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '727a8c1ea65696e3c43f1cbb8a81955047b994f0c2e25723de151d4d927291cb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aebe809a-d3d6-5e91-8dff-a9b4b60bcc70', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('aa20ac74-d957-5e16-a19f-fe7e956ffe5c', 1), '727a8c1ea65696e3c43f1cbb8a81955047b994f0c2e25723de151d4d927291cb',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/a1b5974575d4820bb8c3faa1e57e2c76e07cd09496c4fbae14aa9371a0ab9492.mp3', 1071, '2026-09-14 09:42:33.915276', 'b03497b051fc52461cfa88e28a57c79c870ab6aab3d910047465cda65203c5e2', 'validated', '{"audio_key":"a1b5974575d4820bb8c3faa1e57e2c76e07cd09496c4fbae14aa9371a0ab9492","entity_key":"e_family_and_people_01_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b03497b051fc52461cfa88e28a57c79c870ab6aab3d910047465cda65203c5e2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/a1b5974575d4820bb8c3faa1e57e2c76e07cd09496c4fbae14aa9371a0ab9492.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_cafe_basics_02 -> audio/generated/fr-FR/utterances/a1e10a2bef604567cc9df48410b4a9b44c41753ced1d3b8e218bb419e003eae8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3f9c927d-f131-561f-95ae-3043009fd058', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_cafe_basics_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7e32c39e285ae6ff0a62461eed26e4eb81fde364b1e727d8c06d650e715760b8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dc5d3499-b731-5309-84e2-95e543990060', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3f9c927d-f131-561f-95ae-3043009fd058', 1), '7e32c39e285ae6ff0a62461eed26e4eb81fde364b1e727d8c06d650e715760b8',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/a1e10a2bef604567cc9df48410b4a9b44c41753ced1d3b8e218bb419e003eae8.mp3', 1280, '2026-09-14 09:42:34.653974', '8c1b5ab0bcac6d801571b3780e2ac81abc8ed665f39e69284de5becd6f41ad61', 'validated', '{"audio_key":"a1e10a2bef604567cc9df48410b4a9b44c41753ced1d3b8e218bb419e003eae8","entity_key":"u_cafe_basics_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8c1b5ab0bcac6d801571b3780e2ac81abc8ed665f39e69284de5becd6f41ad61","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/a1e10a2bef604567cc9df48410b4a9b44c41753ced1d3b8e218bb419e003eae8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_cafe_basics_01_listen -> audio/generated/fr-FR/utterances/a1e10a2bef604567cc9df48410b4a9b44c41753ced1d3b8e218bb419e003eae8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('82981569-5c75-5fee-a528-b3a9bd390583', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_cafe_basics_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7e32c39e285ae6ff0a62461eed26e4eb81fde364b1e727d8c06d650e715760b8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('37d5518a-0aa2-54fd-a875-bcca89e278df', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('82981569-5c75-5fee-a528-b3a9bd390583', 1), '7e32c39e285ae6ff0a62461eed26e4eb81fde364b1e727d8c06d650e715760b8',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/a1e10a2bef604567cc9df48410b4a9b44c41753ced1d3b8e218bb419e003eae8.mp3', 1280, '2026-09-14 09:42:34.653974', '8c1b5ab0bcac6d801571b3780e2ac81abc8ed665f39e69284de5becd6f41ad61', 'validated', '{"audio_key":"a1e10a2bef604567cc9df48410b4a9b44c41753ced1d3b8e218bb419e003eae8","entity_key":"e_cafe_basics_01_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8c1b5ab0bcac6d801571b3780e2ac81abc8ed665f39e69284de5becd6f41ad61","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/a1e10a2bef604567cc9df48410b4a9b44c41753ced1d3b8e218bb419e003eae8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_family_and_people_04 -> audio/generated/fr-FR/utterances/a9f18cb14bd46aaa6da5ff8fe771939cc40aa6f5e7126bc7404297a0c9b1fa3a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('bcd7c1cb-3c63-565a-8926-4f0074fa57a4', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_family_and_people_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b428d80d84cd9641e99159d652319a1cc4dce592559b1a2f5ecac0840b95b43f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4337ea97-bc5e-574c-a6d6-37ac358a3ac9', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('bcd7c1cb-3c63-565a-8926-4f0074fa57a4', 1), 'b428d80d84cd9641e99159d652319a1cc4dce592559b1a2f5ecac0840b95b43f',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/a9f18cb14bd46aaa6da5ff8fe771939cc40aa6f5e7126bc7404297a0c9b1fa3a.mp3', 1436, '2026-09-14 09:42:35.012180', 'a7095c787b614bb6d714faea147db82c64d529b0d3e672ea4d99cf7fe6ca0ff2', 'validated', '{"audio_key":"a9f18cb14bd46aaa6da5ff8fe771939cc40aa6f5e7126bc7404297a0c9b1fa3a","entity_key":"u_family_and_people_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a7095c787b614bb6d714faea147db82c64d529b0d3e672ea4d99cf7fe6ca0ff2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/a9f18cb14bd46aaa6da5ff8fe771939cc40aa6f5e7126bc7404297a0c9b1fa3a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_family_and_people_02_listen -> audio/generated/fr-FR/utterances/a9f18cb14bd46aaa6da5ff8fe771939cc40aa6f5e7126bc7404297a0c9b1fa3a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('3a5ee2df-15c7-5307-8d75-f6cf3779225a', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_family_and_people_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b428d80d84cd9641e99159d652319a1cc4dce592559b1a2f5ecac0840b95b43f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('969dfa26-4bd1-58f9-8374-75d8090cae79', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('3a5ee2df-15c7-5307-8d75-f6cf3779225a', 1), 'b428d80d84cd9641e99159d652319a1cc4dce592559b1a2f5ecac0840b95b43f',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/a9f18cb14bd46aaa6da5ff8fe771939cc40aa6f5e7126bc7404297a0c9b1fa3a.mp3', 1436, '2026-09-14 09:42:35.012180', 'a7095c787b614bb6d714faea147db82c64d529b0d3e672ea4d99cf7fe6ca0ff2', 'validated', '{"audio_key":"a9f18cb14bd46aaa6da5ff8fe771939cc40aa6f5e7126bc7404297a0c9b1fa3a","entity_key":"e_family_and_people_02_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a7095c787b614bb6d714faea147db82c64d529b0d3e672ea4d99cf7fe6ca0ff2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/a9f18cb14bd46aaa6da5ff8fe771939cc40aa6f5e7126bc7404297a0c9b1fa3a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_a1_day_capstone_02 -> audio/generated/fr-FR/utterances/a9f8305f9f060c72751b383411ecde2be3032f8efd08c0cbfebdfecef94c980d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('37a3256a-b877-51e9-9078-6437702ae044', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_a1_day_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f23ef45507f5beba6591b43d76522c1e66f223347e59b587426eceb119585b3e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('46511724-0f97-588e-9e34-e40bd680e4af', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('37a3256a-b877-51e9-9078-6437702ae044', 1), 'f23ef45507f5beba6591b43d76522c1e66f223347e59b587426eceb119585b3e',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/a9f8305f9f060c72751b383411ecde2be3032f8efd08c0cbfebdfecef94c980d.mp3', 1280, '2026-09-14 09:42:35.731357', '636122d6d61d86bff0b7236b52f5b4d4c79ff37381147d67f103ea32b31865c8', 'validated', '{"audio_key":"a9f8305f9f060c72751b383411ecde2be3032f8efd08c0cbfebdfecef94c980d","entity_key":"u_a1_day_capstone_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"636122d6d61d86bff0b7236b52f5b4d4c79ff37381147d67f103ea32b31865c8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/a9f8305f9f060c72751b383411ecde2be3032f8efd08c0cbfebdfecef94c980d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_a1_day_capstone_01_listen -> audio/generated/fr-FR/utterances/a9f8305f9f060c72751b383411ecde2be3032f8efd08c0cbfebdfecef94c980d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('658c5151-e446-5049-91d5-88e32788302b', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_a1_day_capstone_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f23ef45507f5beba6591b43d76522c1e66f223347e59b587426eceb119585b3e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d3b9aed5-3a07-54a7-ae5b-7dad52d44f5d', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('658c5151-e446-5049-91d5-88e32788302b', 1), 'f23ef45507f5beba6591b43d76522c1e66f223347e59b587426eceb119585b3e',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/a9f8305f9f060c72751b383411ecde2be3032f8efd08c0cbfebdfecef94c980d.mp3', 1280, '2026-09-14 09:42:35.731357', '636122d6d61d86bff0b7236b52f5b4d4c79ff37381147d67f103ea32b31865c8', 'validated', '{"audio_key":"a9f8305f9f060c72751b383411ecde2be3032f8efd08c0cbfebdfecef94c980d","entity_key":"e_a1_day_capstone_01_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"636122d6d61d86bff0b7236b52f5b4d4c79ff37381147d67f103ea32b31865c8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/a9f8305f9f060c72751b383411ecde2be3032f8efd08c0cbfebdfecef94c980d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_time_and_schedule_01 -> audio/generated/fr-FR/utterances/ab68c209c590bd329cb6951be0e732c25fc81d079f4df25d38f337f0b9d245e3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('700241a5-3ee6-58c2-9f81-e4652172a6df', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_time_and_schedule_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd593706bc8e3cd302972d6e440339f84695bb8178e30b8f712fe9b463b1b35c5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cbf6548b-dd23-56b3-bc3a-1e988565d15d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('700241a5-3ee6-58c2-9f81-e4652172a6df', 1), 'd593706bc8e3cd302972d6e440339f84695bb8178e30b8f712fe9b463b1b35c5',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/ab68c209c590bd329cb6951be0e732c25fc81d079f4df25d38f337f0b9d245e3.mp3', 1201, '2026-09-14 09:42:36.079906', '5602d34959dc4be462dc8f97f5733c1b0c0e66fd5985d5a305f492e293e406f7', 'validated', '{"audio_key":"ab68c209c590bd329cb6951be0e732c25fc81d079f4df25d38f337f0b9d245e3","entity_key":"u_time_and_schedule_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5602d34959dc4be462dc8f97f5733c1b0c0e66fd5985d5a305f492e293e406f7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/ab68c209c590bd329cb6951be0e732c25fc81d079f4df25d38f337f0b9d245e3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_home_and_location_01 -> audio/generated/fr-FR/utterances/ac9d2eebcdcdd8e856c0f0e185337b19e08c273392a7ebd70cadbc4f93e9eb41.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9ac76490-ef0d-54d8-a254-52482682c973', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_home_and_location_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b6d8db086c4912222112c8f2890b6e0533a19b403bc36f196190cbb980e08c1f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('43ee122a-3495-58b2-b1c8-5e2a64f1b07e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9ac76490-ef0d-54d8-a254-52482682c973', 1), 'b6d8db086c4912222112c8f2890b6e0533a19b403bc36f196190cbb980e08c1f',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/ac9d2eebcdcdd8e856c0f0e185337b19e08c273392a7ebd70cadbc4f93e9eb41.mp3', 1097, '2026-09-14 09:42:36.807883', '29e10dae9b4be5e89367d888ce07067317ef2dbe6ce6ea7bd7fe35ae8aa22346', 'validated', '{"audio_key":"ac9d2eebcdcdd8e856c0f0e185337b19e08c273392a7ebd70cadbc4f93e9eb41","entity_key":"u_home_and_location_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"29e10dae9b4be5e89367d888ce07067317ef2dbe6ce6ea7bd7fe35ae8aa22346","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/ac9d2eebcdcdd8e856c0f0e185337b19e08c273392a7ebd70cadbc4f93e9eb41.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_daily_actions_03 -> audio/generated/fr-FR/utterances/b4beff5b96bceabaa9ff43f5afc0d217d109454dfefe3c25d186c1fd2560f8ee.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('cf0cd5ab-ce97-5e8c-9616-eb489c9b9121', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_daily_actions_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '985aa02c9d85aa8b33534c74e74fd8233f191b1e18b4a10c3f10f99196db6e7b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ba0da85d-ddb0-5199-ade6-c98610155bd1', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('cf0cd5ab-ce97-5e8c-9616-eb489c9b9121', 1), '985aa02c9d85aa8b33534c74e74fd8233f191b1e18b4a10c3f10f99196db6e7b',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/b4beff5b96bceabaa9ff43f5afc0d217d109454dfefe3c25d186c1fd2560f8ee.mp3', 1332, '2026-09-14 09:42:37.162654', '91d3a28a05a334670e409cce80df53ee72fa2144f99cdffe59c921ae9afa0c50', 'validated', '{"audio_key":"b4beff5b96bceabaa9ff43f5afc0d217d109454dfefe3c25d186c1fd2560f8ee","entity_key":"u_daily_actions_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"91d3a28a05a334670e409cce80df53ee72fa2144f99cdffe59c921ae9afa0c50","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/b4beff5b96bceabaa9ff43f5afc0d217d109454dfefe3c25d186c1fd2560f8ee.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_articles_and_objects_02 -> audio/generated/fr-FR/utterances/bca5fbede5cc87aa2021b618e28ac6d16192e7b83fab01d0f15a8c6aa9e01a88.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a0a5227e-462d-5bcd-9cf3-32c02d2665fc', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_articles_and_objects_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '355a6c7b846555b715ecdc80b8e625156d598ccd6abcc01eb826cb3073b275af'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d9db6d37-944e-532e-8a32-8786d78f9362', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a0a5227e-462d-5bcd-9cf3-32c02d2665fc', 1), '355a6c7b846555b715ecdc80b8e625156d598ccd6abcc01eb826cb3073b275af',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/bca5fbede5cc87aa2021b618e28ac6d16192e7b83fab01d0f15a8c6aa9e01a88.mp3', 1071, '2026-09-14 08:53:07.906509', '042b55bf4d3b0df8f4ac166f61e78ce34510e3d318ea921cfed06731d7f550e9', 'validated', '{"audio_key":"bca5fbede5cc87aa2021b618e28ac6d16192e7b83fab01d0f15a8c6aa9e01a88","entity_key":"u_articles_and_objects_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"042b55bf4d3b0df8f4ac166f61e78ce34510e3d318ea921cfed06731d7f550e9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/bca5fbede5cc87aa2021b618e28ac6d16192e7b83fab01d0f15a8c6aa9e01a88.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_articles_and_objects_01_listen -> audio/generated/fr-FR/utterances/bca5fbede5cc87aa2021b618e28ac6d16192e7b83fab01d0f15a8c6aa9e01a88.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('1cbfd6a0-a8d6-5717-af3c-601f7ef2fd02', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_articles_and_objects_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '355a6c7b846555b715ecdc80b8e625156d598ccd6abcc01eb826cb3073b275af'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('543f8c62-7414-5c4d-8cd3-f2be3f15f21f', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('1cbfd6a0-a8d6-5717-af3c-601f7ef2fd02', 1), '355a6c7b846555b715ecdc80b8e625156d598ccd6abcc01eb826cb3073b275af',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/bca5fbede5cc87aa2021b618e28ac6d16192e7b83fab01d0f15a8c6aa9e01a88.mp3', 1071, '2026-09-14 08:53:07.906509', '042b55bf4d3b0df8f4ac166f61e78ce34510e3d318ea921cfed06731d7f550e9', 'validated', '{"audio_key":"bca5fbede5cc87aa2021b618e28ac6d16192e7b83fab01d0f15a8c6aa9e01a88","entity_key":"e_articles_and_objects_01_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"042b55bf4d3b0df8f4ac166f61e78ce34510e3d318ea921cfed06731d7f550e9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/bca5fbede5cc87aa2021b618e28ac6d16192e7b83fab01d0f15a8c6aa9e01a88.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_daily_actions_01 -> audio/generated/fr-FR/utterances/d1644530b96e79e1fb7eec6140a20c8a0919f4154ab0353fb2f729de9fd7ed57.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('20565d6f-287f-526e-bee5-f68348023ecf', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_daily_actions_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6ae03bf7a9c411f370360e6df94b1e338efe5d5bdb7c7ecdb6c8053ceb02afd8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('93eaf6a2-b2cf-5955-ab21-90b088e7f417', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('20565d6f-287f-526e-bee5-f68348023ecf', 1), '6ae03bf7a9c411f370360e6df94b1e338efe5d5bdb7c7ecdb6c8053ceb02afd8',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/d1644530b96e79e1fb7eec6140a20c8a0919f4154ab0353fb2f729de9fd7ed57.mp3', 1332, '2026-09-14 09:42:37.919917', '080c00351226632a0aadf4152c3d72521d9430cc398f0edaf0e9f4120ef444db', 'validated', '{"audio_key":"d1644530b96e79e1fb7eec6140a20c8a0919f4154ab0353fb2f729de9fd7ed57","entity_key":"u_daily_actions_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"080c00351226632a0aadf4152c3d72521d9430cc398f0edaf0e9f4120ef444db","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/d1644530b96e79e1fb7eec6140a20c8a0919f4154ab0353fb2f729de9fd7ed57.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_shopping_and_prices_04 -> audio/generated/fr-FR/utterances/dedb4b719a50667ce5abdb820ca7e2c48f92e526a0f2b2b183382cec6aaaa140.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9d663244-974c-5a30-95f8-204cd2b9a245', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_shopping_and_prices_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fd89989dc9c9b0f84a0f17976c6e5c08f65e8801936e49fc9b88ebe4d4ee17b9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8b3111cf-a73d-5990-b507-7d6951e200e7', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9d663244-974c-5a30-95f8-204cd2b9a245', 1), 'fd89989dc9c9b0f84a0f17976c6e5c08f65e8801936e49fc9b88ebe4d4ee17b9',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/dedb4b719a50667ce5abdb820ca7e2c48f92e526a0f2b2b183382cec6aaaa140.mp3', 1332, '2026-09-14 09:42:38.284939', '42fd455f607eb28490d19cb3080c398a5ee7b7082e7010519b375cc1fcd3e53e', 'validated', '{"audio_key":"dedb4b719a50667ce5abdb820ca7e2c48f92e526a0f2b2b183382cec6aaaa140","entity_key":"u_shopping_and_prices_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"42fd455f607eb28490d19cb3080c398a5ee7b7082e7010519b375cc1fcd3e53e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/dedb4b719a50667ce5abdb820ca7e2c48f92e526a0f2b2b183382cec6aaaa140.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_shopping_and_prices_02_listen -> audio/generated/fr-FR/utterances/dedb4b719a50667ce5abdb820ca7e2c48f92e526a0f2b2b183382cec6aaaa140.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('c69d06dc-81b7-5cfb-8c94-8eb647fab396', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_shopping_and_prices_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fd89989dc9c9b0f84a0f17976c6e5c08f65e8801936e49fc9b88ebe4d4ee17b9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4200ad13-d0bd-5221-b788-b0f7beedf862', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('c69d06dc-81b7-5cfb-8c94-8eb647fab396', 1), 'fd89989dc9c9b0f84a0f17976c6e5c08f65e8801936e49fc9b88ebe4d4ee17b9',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/dedb4b719a50667ce5abdb820ca7e2c48f92e526a0f2b2b183382cec6aaaa140.mp3', 1332, '2026-09-14 09:42:38.284939', '42fd455f607eb28490d19cb3080c398a5ee7b7082e7010519b375cc1fcd3e53e', 'validated', '{"audio_key":"dedb4b719a50667ce5abdb820ca7e2c48f92e526a0f2b2b183382cec6aaaa140","entity_key":"e_shopping_and_prices_02_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"42fd455f607eb28490d19cb3080c398a5ee7b7082e7010519b375cc1fcd3e53e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/dedb4b719a50667ce5abdb820ca7e2c48f92e526a0f2b2b183382cec6aaaa140.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_articles_and_objects_01 -> audio/generated/fr-FR/utterances/e05977f517e38da8f87fdc32b0fb0e7370da4e4f9204e99c336612063e77ee69.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('163ffc45-4f2a-5295-bcb6-8bfaec71df16', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_articles_and_objects_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a5698c9a8e7804a3f6dd02312a0f027835e0097deb3c8234283d908d6cf7c77e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('978058d0-4ab6-54cb-9619-acb72cd8da40', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('163ffc45-4f2a-5295-bcb6-8bfaec71df16', 1), 'a5698c9a8e7804a3f6dd02312a0f027835e0097deb3c8234283d908d6cf7c77e',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/e05977f517e38da8f87fdc32b0fb0e7370da4e4f9204e99c336612063e77ee69.mp3', 1097, '2026-09-14 08:53:09.782799', '2319cf35d5856d21044d6e20c782bea859cc2c3cb64c322559c778ddb472bf8e', 'validated', '{"audio_key":"e05977f517e38da8f87fdc32b0fb0e7370da4e4f9204e99c336612063e77ee69","entity_key":"u_articles_and_objects_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2319cf35d5856d21044d6e20c782bea859cc2c3cb64c322559c778ddb472bf8e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/e05977f517e38da8f87fdc32b0fb0e7370da4e4f9204e99c336612063e77ee69.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_family_and_people_01 -> audio/generated/fr-FR/utterances/e25d906d5a9c491999a6b8b25f16d9f1e85ae3dc09266f6a97413517cf9f50db.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('788ec17c-da14-50d4-8814-b36130bbece1', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_family_and_people_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a7eebd86ed6bea2a6e1fd8ba96224b1053963429faec716ba94765736923faaa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0c2104ff-6a60-5070-a487-00b4e25956b5', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('788ec17c-da14-50d4-8814-b36130bbece1', 1), 'a7eebd86ed6bea2a6e1fd8ba96224b1053963429faec716ba94765736923faaa',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/e25d906d5a9c491999a6b8b25f16d9f1e85ae3dc09266f6a97413517cf9f50db.mp3', 1018, '2026-09-14 09:42:38.897023', 'e4f4faa04a990a5e92fdfa98c43e620ae32191d015c7cc59375f7a77f4d84da5', 'validated', '{"audio_key":"e25d906d5a9c491999a6b8b25f16d9f1e85ae3dc09266f6a97413517cf9f50db","entity_key":"u_family_and_people_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e4f4faa04a990a5e92fdfa98c43e620ae32191d015c7cc59375f7a77f4d84da5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/e25d906d5a9c491999a6b8b25f16d9f1e85ae3dc09266f6a97413517cf9f50db.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_cafe_basics_03 -> audio/generated/fr-FR/utterances/e737d34c3040723fca842fbf9c4f69120a5ba00c357d1799356b00da784d99d7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9b772965-5b74-57cd-a883-f3b58b91ddd6', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_cafe_basics_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5de36aee8ab37d435e55d605829f3ec690d0be00274bcab8adb32b35468996cc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6704b79c-edb1-5623-8bdc-3b88995d8d8b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9b772965-5b74-57cd-a883-f3b58b91ddd6', 1), '5de36aee8ab37d435e55d605829f3ec690d0be00274bcab8adb32b35468996cc',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/e737d34c3040723fca842fbf9c4f69120a5ba00c357d1799356b00da784d99d7.mp3', 1515, '2026-09-14 09:42:39.401932', '84890950b8f4e41bb8fc436ba4aa166e6b620349d10c37c1bc37cc2fbd57cf83', 'validated', '{"audio_key":"e737d34c3040723fca842fbf9c4f69120a5ba00c357d1799356b00da784d99d7","entity_key":"u_cafe_basics_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"84890950b8f4e41bb8fc436ba4aa166e6b620349d10c37c1bc37cc2fbd57cf83","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/e737d34c3040723fca842fbf9c4f69120a5ba00c357d1799356b00da784d99d7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_time_and_schedule_03 -> audio/generated/fr-FR/utterances/ecf3b5ad588ec3fa990077a97cc68bb249ddbc277a8c2b549b2b9ba4d336e4fb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a3769d8d-d3a4-5a8d-8567-3206a2eaa1d8', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_time_and_schedule_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1008f6fbd924aece5e69474c0c44bba47ba61f9ee2dfdd300d1f1862f389a4a3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e3dfbbd7-e708-55a0-a001-7a34657430ef', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a3769d8d-d3a4-5a8d-8567-3206a2eaa1d8', 1), '1008f6fbd924aece5e69474c0c44bba47ba61f9ee2dfdd300d1f1862f389a4a3',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/ecf3b5ad588ec3fa990077a97cc68bb249ddbc277a8c2b549b2b9ba4d336e4fb.mp3', 1253, '2026-09-14 09:42:40.293065', '8600f4e05cb35e4371b7d8f37cf616acd5b082d8f47ed18addaf6e60d29b7637', 'validated', '{"audio_key":"ecf3b5ad588ec3fa990077a97cc68bb249ddbc277a8c2b549b2b9ba4d336e4fb","entity_key":"u_time_and_schedule_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8600f4e05cb35e4371b7d8f37cf616acd5b082d8f47ed18addaf6e60d29b7637","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/ecf3b5ad588ec3fa990077a97cc68bb249ddbc277a8c2b549b2b9ba4d336e4fb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_shopping_and_prices_03 -> audio/generated/fr-FR/utterances/ee42225e9e484f8cbb33c40bcb32986b4154e17c3daec88caf9ae2926e2e97e8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('53384fd0-8d17-5fc3-9648-60b48c3716a3', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_shopping_and_prices_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c09c0affc2a20f4a7c42a998b5c3561bbd34c71a6b9674d67840aa5aa843244f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('21866fea-de45-5e6c-8434-53ccd9b2629f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('53384fd0-8d17-5fc3-9648-60b48c3716a3', 1), 'c09c0affc2a20f4a7c42a998b5c3561bbd34c71a6b9674d67840aa5aa843244f',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/ee42225e9e484f8cbb33c40bcb32986b4154e17c3daec88caf9ae2926e2e97e8.mp3', 1071, '2026-09-14 09:42:40.497102', 'f724bcde3cf9f99750212ba1642e126f0e80a2c4c44186c2a70d67f57d6da88a', 'validated', '{"audio_key":"ee42225e9e484f8cbb33c40bcb32986b4154e17c3daec88caf9ae2926e2e97e8","entity_key":"u_shopping_and_prices_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f724bcde3cf9f99750212ba1642e126f0e80a2c4c44186c2a70d67f57d6da88a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/ee42225e9e484f8cbb33c40bcb32986b4154e17c3daec88caf9ae2926e2e97e8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_identity_and_origin_02 -> audio/generated/fr-FR/utterances/fd0426e205ad611a3bc83b7d9f132321624b76440cc29d78ae13f5618a8b0681.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2323ef5e-a0ca-51ec-8143-6062033fa9ca', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_identity_and_origin_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1fe507386eedbb4e09dbbf767965170d844485b74cc4ab96524fd0275d3b1000'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fb968217-fa38-5314-a21d-fbe8f2c4a70e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2323ef5e-a0ca-51ec-8143-6062033fa9ca', 1), '1fe507386eedbb4e09dbbf767965170d844485b74cc4ab96524fd0275d3b1000',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/fd0426e205ad611a3bc83b7d9f132321624b76440cc29d78ae13f5618a8b0681.mp3', 1097, '2026-09-14 09:42:41.314449', '545af633a55c729deb607aeae02d81758715b0c373af65695f053bd966ed4d29', 'validated', '{"audio_key":"fd0426e205ad611a3bc83b7d9f132321624b76440cc29d78ae13f5618a8b0681","entity_key":"u_identity_and_origin_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"545af633a55c729deb607aeae02d81758715b0c373af65695f053bd966ed4d29","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/fd0426e205ad611a3bc83b7d9f132321624b76440cc29d78ae13f5618a8b0681.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_identity_and_origin_01_listen -> audio/generated/fr-FR/utterances/fd0426e205ad611a3bc83b7d9f132321624b76440cc29d78ae13f5618a8b0681.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('2e311b2a-8815-5a3e-ac2a-1d355862a4fb', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_identity_and_origin_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1fe507386eedbb4e09dbbf767965170d844485b74cc4ab96524fd0275d3b1000'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('035a4739-6d46-576d-b323-be30db1753eb', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('2e311b2a-8815-5a3e-ac2a-1d355862a4fb', 1), '1fe507386eedbb4e09dbbf767965170d844485b74cc4ab96524fd0275d3b1000',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/fd0426e205ad611a3bc83b7d9f132321624b76440cc29d78ae13f5618a8b0681.mp3', 1097, '2026-09-14 09:42:41.314449', '545af633a55c729deb607aeae02d81758715b0c373af65695f053bd966ed4d29', 'validated', '{"audio_key":"fd0426e205ad611a3bc83b7d9f132321624b76440cc29d78ae13f5618a8b0681","entity_key":"e_identity_and_origin_01_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"545af633a55c729deb607aeae02d81758715b0c373af65695f053bd966ed4d29","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/fd0426e205ad611a3bc83b7d9f132321624b76440cc29d78ae13f5618a8b0681.mp3"}'
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

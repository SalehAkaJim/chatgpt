-- Generated audio link import for fr-FR Pre-A1
-- Source manifest: audio/manifests/fr/Pre-A1.json
-- Generated rows: 260
-- Storage mode: relative_path
-- storage_url is intentionally portable; prepend your server/CDN base URL at runtime.
-- Run AFTER the matching level content import.
SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci;
SET time_zone = '+00:00';
SET @audio_language_id = (SELECT id FROM languages WHERE code = 'fr' LIMIT 1);
SET @audio_variant_id = (SELECT id FROM language_variants WHERE code = 'fr-FR' LIMIT 1);
START TRANSACTION;

-- d_polite_words_01:4 -> audio/generated/fr-FR/dialogues/002ffa3e279fe5142518ce2d6669f6a0e2aff9a8272f58e64b99cb838f4466db.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d8901861-2ae5-5706-a35a-e8427f096bff', 1)
  AND voice_key = 'character:hugo:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_polite_words_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b92a341d8588a553b22bffecbcd499b4046e093149cd43c392f0a3a4a6d65c3d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b92a76b4-2b41-5f72-9107-38e0c535beeb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d8901861-2ae5-5706-a35a-e8427f096bff', 1), 'b92a341d8588a553b22bffecbcd499b4046e093149cd43c392f0a3a4a6d65c3d',
  'character:hugo:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/002ffa3e279fe5142518ce2d6669f6a0e2aff9a8272f58e64b99cb838f4466db.mp3', 783, '2026-09-14 08:51:51.638530', '5e6c661a477031825b20af8ad68c74e5ff7aa2f0c27dae26757f12be75b548c3', 'validated', '{"audio_key":"002ffa3e279fe5142518ce2d6669f6a0e2aff9a8272f58e64b99cb838f4466db","entity_key":"d_polite_words_01:4","voice_id":"FRY6vOtGqwamgAf39SwP","voice_name":"Yanis","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5e6c661a477031825b20af8ad68c74e5ff7aa2f0c27dae26757f12be75b548c3","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/002ffa3e279fe5142518ce2d6669f6a0e2aff9a8272f58e64b99cb838f4466db.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_objects_01:4 -> audio/generated/fr-FR/dialogues/00300f8a936a9951c1f57cbcc7186d114c914fd0cd9b640455b356f4da131d7b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b94db907-7121-5da9-85ad-a2ed3560b86c', 1)
  AND voice_key = 'character:julien:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_objects_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '104d02b2fad09ed8dfcfec4176a1a5ec8a4a5b71f063027b44307b4232d75ae4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('140165b6-401a-5619-8825-bebb674b90fd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b94db907-7121-5da9-85ad-a2ed3560b86c', 1), '104d02b2fad09ed8dfcfec4176a1a5ec8a4a5b71f063027b44307b4232d75ae4',
  'character:julien:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/00300f8a936a9951c1f57cbcc7186d114c914fd0cd9b640455b356f4da131d7b.mp3', 835, '2026-09-14 08:51:51.666374', '97741d4e2f5c3b2e1f9f7dc5a460f403b350c4eb7bf9df385433a4866a532035', 'validated', '{"audio_key":"00300f8a936a9951c1f57cbcc7186d114c914fd0cd9b640455b356f4da131d7b","entity_key":"d_first_objects_01:4","voice_id":"xO2Q4ARMEd4BI2sGDH9c","voice_name":"Edouard - Confident and Polished","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"97741d4e2f5c3b2e1f9f7dc5a460f403b350c4eb7bf9df385433a4866a532035","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/00300f8a936a9951c1f57cbcc7186d114c914fd0cd9b640455b356f4da131d7b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_how_are_you_02:3 -> audio/generated/fr-FR/dialogues/0191dec9654c6bfa95de4ed13c0a2c0f61c677cd6fd1fa47ffef6998dde6a449.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b9a93e63-6809-56e8-ae18-f10a8f9ecd74', 1)
  AND voice_key = 'character:claire:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_how_are_you_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5f9a25029500f4df9bb5f9156517eb893ff737d5c721fa4ffcbd69b1ab78238b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('280f2c9b-dc90-57ed-ad5e-83ecb6854c30', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b9a93e63-6809-56e8-ae18-f10a8f9ecd74', 1), '5f9a25029500f4df9bb5f9156517eb893ff737d5c721fa4ffcbd69b1ab78238b',
  'character:claire:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/0191dec9654c6bfa95de4ed13c0a2c0f61c677cd6fd1fa47ffef6998dde6a449.mp3', 862, '2026-09-14 08:51:52.549187', 'eba68bc3fb39e1d429520983ac618c60daf3dd04c2ca73d799062ba527c5013d', 'validated', '{"audio_key":"0191dec9654c6bfa95de4ed13c0a2c0f61c677cd6fd1fa47ffef6998dde6a449","entity_key":"d_how_are_you_02:3","voice_id":"yatuMX0k4Dh41R64sbGj","voice_name":"Cécile - Interactive Customer Support","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"eba68bc3fb39e1d429520983ac618c60daf3dd04c2ca73d799062ba527c5013d","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/0191dec9654c6bfa95de4ed13c0a2c0f61c677cd6fd1fa47ffef6998dde6a449.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_my_name_02:3 -> audio/generated/fr-FR/dialogues/0191dec9654c6bfa95de4ed13c0a2c0f61c677cd6fd1fa47ffef6998dde6a449.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('14a0f8a7-60b2-53ee-9aa7-8fe1bff27fef', 1)
  AND voice_key = 'character:claire:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_my_name_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5f9a25029500f4df9bb5f9156517eb893ff737d5c721fa4ffcbd69b1ab78238b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bc62e3d9-8153-592f-9eb5-fed159e94513', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('14a0f8a7-60b2-53ee-9aa7-8fe1bff27fef', 1), '5f9a25029500f4df9bb5f9156517eb893ff737d5c721fa4ffcbd69b1ab78238b',
  'character:claire:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/0191dec9654c6bfa95de4ed13c0a2c0f61c677cd6fd1fa47ffef6998dde6a449.mp3', 862, '2026-09-14 08:51:52.549187', 'eba68bc3fb39e1d429520983ac618c60daf3dd04c2ca73d799062ba527c5013d', 'validated', '{"audio_key":"0191dec9654c6bfa95de4ed13c0a2c0f61c677cd6fd1fa47ffef6998dde6a449","entity_key":"d_my_name_02:3","voice_id":"yatuMX0k4Dh41R64sbGj","voice_name":"Cécile - Interactive Customer Support","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"eba68bc3fb39e1d429520983ac618c60daf3dd04c2ca73d799062ba527c5013d","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/0191dec9654c6bfa95de4ed13c0a2c0f61c677cd6fd1fa47ffef6998dde6a449.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_survival_words_02:4 -> audio/generated/fr-FR/dialogues/01f816a766dd3adbadd6a76c233e0124ae29fb025f968dc2ea344d5a1ebe55d2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('687c38cb-80f8-5574-b74e-d3ac3ac17392', 1)
  AND voice_key = 'character:hugo:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_survival_words_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a89ca2a88da9c09340bd0e4b28a2516327c06526aaf8883511c060fd523029d4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7f84c90f-b4b6-555c-9e05-21a3f7292e0c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('687c38cb-80f8-5574-b74e-d3ac3ac17392', 1), 'a89ca2a88da9c09340bd0e4b28a2516327c06526aaf8883511c060fd523029d4',
  'character:hugo:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/01f816a766dd3adbadd6a76c233e0124ae29fb025f968dc2ea344d5a1ebe55d2.mp3', 1097, '2026-09-14 08:51:52.629715', '64f173a228d0dcaa9eb979d0a8dacab968984358e016b5f74be78d6ff34c0d13', 'validated', '{"audio_key":"01f816a766dd3adbadd6a76c233e0124ae29fb025f968dc2ea344d5a1ebe55d2","entity_key":"d_survival_words_02:4","voice_id":"FRY6vOtGqwamgAf39SwP","voice_name":"Yanis","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"64f173a228d0dcaa9eb979d0a8dacab968984358e016b5f74be78d6ff34c0d13","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/01f816a766dd3adbadd6a76c233e0124ae29fb025f968dc2ea344d5a1ebe55d2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_numbers_0_10_02:3 -> audio/generated/fr-FR/dialogues/10facc6af24fcfb99f65923960a50f3e169b676be0d032913a828a3c00b314db.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c92e0060-082f-54d8-b71c-e22d91cd5182', 1)
  AND voice_key = 'character:léa:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_numbers_0_10_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e8c7fbe1f1a9700b56572351755c8cecce20b1ccd7b9ee036d67950b1a5db96c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('edc8ec95-65dd-5520-855d-4122f118bedf', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c92e0060-082f-54d8-b71c-e22d91cd5182', 1), 'e8c7fbe1f1a9700b56572351755c8cecce20b1ccd7b9ee036d67950b1a5db96c',
  'character:léa:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/10facc6af24fcfb99f65923960a50f3e169b676be0d032913a828a3c00b314db.mp3', 862, '2026-09-14 08:51:53.867418', '85a76ff37e974ca0ff0d2b94b2f1acfbf02461cb8536704797c196cc5b200dfe', 'validated', '{"audio_key":"10facc6af24fcfb99f65923960a50f3e169b676be0d032913a828a3c00b314db","entity_key":"d_numbers_0_10_02:3","voice_id":"fBpCO0Kf0krKLYGOu65w","voice_name":"Émilie - Customer service advisor","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"85a76ff37e974ca0ff0d2b94b2f1acfbf02461cb8536704797c196cc5b200dfe","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/10facc6af24fcfb99f65923960a50f3e169b676be0d032913a828a3c00b314db.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_conversation_02:3 -> audio/generated/fr-FR/dialogues/198d3e1b2448c804e330369644d096ed2d1eb14259ba16a59f39dbb7916dd029.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4abfa0e2-22ac-5c0c-b966-87ac1500aba6', 1)
  AND voice_key = 'character:nicolas:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_conversation_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6e155277912516cb054159b995ef6244542adc2d0965b1a10723e40df1fe6332'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1926d966-507a-58e0-9f69-d22c7a6f2709', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4abfa0e2-22ac-5c0c-b966-87ac1500aba6', 1), '6e155277912516cb054159b995ef6244542adc2d0965b1a10723e40df1fe6332',
  'character:nicolas:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/198d3e1b2448c804e330369644d096ed2d1eb14259ba16a59f39dbb7916dd029.mp3', 1280, '2026-09-14 08:51:53.586586', '83132b993b64db890d00b345026640bea41d060ac76a4bd1636ccaac4b7ddace', 'validated', '{"audio_key":"198d3e1b2448c804e330369644d096ed2d1eb14259ba16a59f39dbb7916dd029","entity_key":"d_first_conversation_02:3","voice_id":"7Pm7442WzqlfkW9vjmO9","voice_name":"Maxime - Dynamic and Natural","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"83132b993b64db890d00b345026640bea41d060ac76a4bd1636ccaac4b7ddace","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/198d3e1b2448c804e330369644d096ed2d1eb14259ba16a59f39dbb7916dd029.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_objects_01:3 -> audio/generated/fr-FR/dialogues/1b6d8af88de1abea24cff75b28a7c311539cc6995bb3c068b0edf98e7bd4370d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f0b2229d-9f99-5d70-b4a7-3f57741467c3', 1)
  AND voice_key = 'character:camille:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_objects_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f112e0be292db50a1f5b3bc334094db1ac7219225843733104230d1617fca3eb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b0b9fe7d-cb42-5a9b-b1e3-ffb7a7535984', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f0b2229d-9f99-5d70-b4a7-3f57741467c3', 1), 'f112e0be292db50a1f5b3bc334094db1ac7219225843733104230d1617fca3eb',
  'character:camille:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/1b6d8af88de1abea24cff75b28a7c311539cc6995bb3c068b0edf98e7bd4370d.mp3', 783, '2026-09-14 08:51:54.495733', '824a208b1cba07e390d1f9fd637b62a548ed1ed1ca1bed106a2fdbb741a39940', 'validated', '{"audio_key":"1b6d8af88de1abea24cff75b28a7c311539cc6995bb3c068b0edf98e7bd4370d","entity_key":"d_first_objects_01:3","voice_id":"lvQdCgwZfBuOzxyV5pxu","voice_name":"Audia - Customer Support","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"824a208b1cba07e390d1f9fd637b62a548ed1ed1ca1bed106a2fdbb741a39940","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/1b6d8af88de1abea24cff75b28a7c311539cc6995bb3c068b0edf98e7bd4370d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_conversation_02:2 -> audio/generated/fr-FR/dialogues/1b88f7b824b6e3e24cbaacf34deacbf8e04bb3d2e15cbd077bfe6606bd04010b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b6735ac6-209c-5e9d-853f-d4beb5796977', 1)
  AND voice_key = 'character:julien:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_conversation_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c322d104f6a1397a4528d0695ef37ad30daac4d1866255ebc8896cc725387d78'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('637c3eb9-d4fa-51a2-885d-3a0ee167b798', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b6735ac6-209c-5e9d-853f-d4beb5796977', 1), 'c322d104f6a1397a4528d0695ef37ad30daac4d1866255ebc8896cc725387d78',
  'character:julien:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/1b88f7b824b6e3e24cbaacf34deacbf8e04bb3d2e15cbd077bfe6606bd04010b.mp3', 1436, '2026-09-14 08:51:54.850100', '83829fd29583f3b0e4535d8c46944ee132a4cbfc1ad5d44463e78e5ec7a44090', 'validated', '{"audio_key":"1b88f7b824b6e3e24cbaacf34deacbf8e04bb3d2e15cbd077bfe6606bd04010b","entity_key":"d_first_conversation_02:2","voice_id":"xO2Q4ARMEd4BI2sGDH9c","voice_name":"Edouard - Confident and Polished","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"83829fd29583f3b0e4535d8c46944ee132a4cbfc1ad5d44463e78e5ec7a44090","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/1b88f7b824b6e3e24cbaacf34deacbf8e04bb3d2e15cbd077bfe6606bd04010b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_my_name_01:4 -> audio/generated/fr-FR/dialogues/1e11e859b39240f80f421fbd534764f637d81bac1b5cf910eb2f893db42161b8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e0b9e627-7d5c-5be9-9eee-01247a11f76a', 1)
  AND voice_key = 'character:nicolas:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_my_name_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '444b87358c0a1619b4f4fbe733c8887d726ac5d8d0341d7106672e7baf7bff34'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2d433f48-8a2b-51eb-8ed0-10a2763932ea', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e0b9e627-7d5c-5be9-9eee-01247a11f76a', 1), '444b87358c0a1619b4f4fbe733c8887d726ac5d8d0341d7106672e7baf7bff34',
  'character:nicolas:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/1e11e859b39240f80f421fbd534764f637d81bac1b5cf910eb2f893db42161b8.mp3', 914, '2026-09-14 08:51:55.423236', '4c284efefd76cc22a18286bdecf30b03f67ed236a1b7ddccb44f25ceff15e0dd', 'validated', '{"audio_key":"1e11e859b39240f80f421fbd534764f637d81bac1b5cf910eb2f893db42161b8","entity_key":"d_my_name_01:4","voice_id":"7Pm7442WzqlfkW9vjmO9","voice_name":"Maxime - Dynamic and Natural","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4c284efefd76cc22a18286bdecf30b03f67ed236a1b7ddccb44f25ceff15e0dd","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/1e11e859b39240f80f421fbd534764f637d81bac1b5cf910eb2f893db42161b8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_conversation_01:1 -> audio/generated/fr-FR/dialogues/1f61a4226d8a395e238813ca6d74a930025a09a22cc11c040384b9c93847f02d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('188d633c-988e-50b7-abdb-f66b253929b6', 1)
  AND voice_key = 'character:léa:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_conversation_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4f5792fa0348c2ee656048447df4ca65e0588bf817366eeed65c96c965051977'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e3ba4701-2c83-5c3d-b6ec-db509cf78abc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('188d633c-988e-50b7-abdb-f66b253929b6', 1), '4f5792fa0348c2ee656048447df4ca65e0588bf817366eeed65c96c965051977',
  'character:léa:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/1f61a4226d8a395e238813ca6d74a930025a09a22cc11c040384b9c93847f02d.mp3', 1567, '2026-09-14 08:51:55.873021', 'd18ebb832a8775663e76e3ba3b5be93ba14d0ff1ed6f39006af252130e932140', 'validated', '{"audio_key":"1f61a4226d8a395e238813ca6d74a930025a09a22cc11c040384b9c93847f02d","entity_key":"d_first_conversation_01:1","voice_id":"fBpCO0Kf0krKLYGOu65w","voice_name":"Émilie - Customer service advisor","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"d18ebb832a8775663e76e3ba3b5be93ba14d0ff1ed6f39006af252130e932140","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/1f61a4226d8a395e238813ca6d74a930025a09a22cc11c040384b9c93847f02d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_polite_words_01:3 -> audio/generated/fr-FR/dialogues/27c0f3fae84e4cd191975aec34868b7c2b12bb8f7ca0dbb4472f45bb22ceca36.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8782c56e-10f4-52da-a17e-354cec4e384d', 1)
  AND voice_key = 'character:inès:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_polite_words_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a99c2d78a28b4eff487e13d99d586a2d2992b2466b91b4f734c1806b32467772'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dae0aa10-e9a4-53f1-9f46-fcd9d2553a20', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8782c56e-10f4-52da-a17e-354cec4e384d', 1), 'a99c2d78a28b4eff487e13d99d586a2d2992b2466b91b4f734c1806b32467772',
  'character:inès:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/27c0f3fae84e4cd191975aec34868b7c2b12bb8f7ca0dbb4472f45bb22ceca36.mp3', 914, '2026-09-14 08:51:56.355694', '2fa87f3776570fca63a2ba567ff8cc9ed9135e0de1afd78a54136f200ac358c3', 'validated', '{"audio_key":"27c0f3fae84e4cd191975aec34868b7c2b12bb8f7ca0dbb4472f45bb22ceca36","entity_key":"d_polite_words_01:3","voice_id":"mNu8EQcIlFZdOJs7yfhe","voice_name":"Julia - Warm French Narrator","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2fa87f3776570fca63a2ba567ff8cc9ed9135e0de1afd78a54136f200ac358c3","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/27c0f3fae84e4cd191975aec34868b7c2b12bb8f7ca0dbb4472f45bb22ceca36.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_sounds_02:1 -> audio/generated/fr-FR/dialogues/2fa0501bcc2e08b4eeef1bac9e486cf6f914cad383668ee1a79be9ccae438400.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e31dad02-2feb-5585-96d2-122750c1c743', 1)
  AND voice_key = 'character:léa:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_sounds_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c1d75d04b10b6821338ad091afd38b5e4ddc4efe0d5107772fc9978731569684'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8780eb70-140b-5ed6-a9e2-9f6a8cec71a3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e31dad02-2feb-5585-96d2-122750c1c743', 1), 'c1d75d04b10b6821338ad091afd38b5e4ddc4efe0d5107772fc9978731569684',
  'character:léa:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/2fa0501bcc2e08b4eeef1bac9e486cf6f914cad383668ee1a79be9ccae438400.mp3', 1384, '2026-09-14 08:51:56.836497', '7aa170e8d200d6bd4dd68c43b9addb0d738440d57e18f223a0a113056d062f8d', 'validated', '{"audio_key":"2fa0501bcc2e08b4eeef1bac9e486cf6f914cad383668ee1a79be9ccae438400","entity_key":"d_first_sounds_02:1","voice_id":"fBpCO0Kf0krKLYGOu65w","voice_name":"Émilie - Customer service advisor","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"7aa170e8d200d6bd4dd68c43b9addb0d738440d57e18f223a0a113056d062f8d","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/2fa0501bcc2e08b4eeef1bac9e486cf6f914cad383668ee1a79be9ccae438400.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_conversation_01:4 -> audio/generated/fr-FR/dialogues/3152de9635806ce0d306c38e1d464e821d2b1e474a68f0d6bed88ac46d67afdb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('60a48fce-60e0-5d96-8a7c-167951be77a3', 1)
  AND voice_key = 'character:inès:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_conversation_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b0ed028b59a0c28b16933b4951436453e846593906364cbd0f8cbbb1cb37adf4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cb575178-58fb-5465-9cb4-4ad0bf6aae22', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('60a48fce-60e0-5d96-8a7c-167951be77a3', 1), 'b0ed028b59a0c28b16933b4951436453e846593906364cbd0f8cbbb1cb37adf4',
  'character:inès:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/3152de9635806ce0d306c38e1d464e821d2b1e474a68f0d6bed88ac46d67afdb.mp3', 1384, '2026-09-14 08:51:57.379135', '3c39f674139fc56bb3fb815b4cca2378447044e9c00bd0d17e77d2860e522ace', 'validated', '{"audio_key":"3152de9635806ce0d306c38e1d464e821d2b1e474a68f0d6bed88ac46d67afdb","entity_key":"d_first_conversation_01:4","voice_id":"mNu8EQcIlFZdOJs7yfhe","voice_name":"Julia - Warm French Narrator","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3c39f674139fc56bb3fb815b4cca2378447044e9c00bd0d17e77d2860e522ace","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/3152de9635806ce0d306c38e1d464e821d2b1e474a68f0d6bed88ac46d67afdb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_survival_words_01:4 -> audio/generated/fr-FR/dialogues/3a49d96b21763d9ace4d5a2616fad6c034a171050171eb11aaf792259c1d9c63.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('17bf995e-75e9-5fb9-8b82-dd7347d98b67', 1)
  AND voice_key = 'character:claire:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_survival_words_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a99c2d78a28b4eff487e13d99d586a2d2992b2466b91b4f734c1806b32467772'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('acd6e64c-7986-5378-8507-90f2d8faf321', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('17bf995e-75e9-5fb9-8b82-dd7347d98b67', 1), 'a99c2d78a28b4eff487e13d99d586a2d2992b2466b91b4f734c1806b32467772',
  'character:claire:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/3a49d96b21763d9ace4d5a2616fad6c034a171050171eb11aaf792259c1d9c63.mp3', 862, '2026-09-14 08:51:58.438945', '1042595638482c2c92c5e91a332f586d92fe256e9aa561d87bb2e68a2542ea16', 'validated', '{"audio_key":"3a49d96b21763d9ace4d5a2616fad6c034a171050171eb11aaf792259c1d9c63","entity_key":"d_survival_words_01:4","voice_id":"yatuMX0k4Dh41R64sbGj","voice_name":"Cécile - Interactive Customer Support","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"1042595638482c2c92c5e91a332f586d92fe256e9aa561d87bb2e68a2542ea16","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/3a49d96b21763d9ace4d5a2616fad6c034a171050171eb11aaf792259c1d9c63.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_greetings_01:3 -> audio/generated/fr-FR/dialogues/3bc4f569f5b908d4d874abafb79f592467126c22dd1217233b789a4574160c8c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a07f0eb7-4f34-5778-8a2f-cd1850f76b96', 1)
  AND voice_key = 'character:camille:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_greetings_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '444b87358c0a1619b4f4fbe733c8887d726ac5d8d0341d7106672e7baf7bff34'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('675fe143-4cac-5495-9db5-00aec651387b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a07f0eb7-4f34-5778-8a2f-cd1850f76b96', 1), '444b87358c0a1619b4f4fbe733c8887d726ac5d8d0341d7106672e7baf7bff34',
  'character:camille:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/3bc4f569f5b908d4d874abafb79f592467126c22dd1217233b789a4574160c8c.mp3', 862, '2026-09-14 08:51:58.355782', '615964ed233130a240bafdddea7013daf93495e6b9cc39878cd4a453c71bffd9', 'validated', '{"audio_key":"3bc4f569f5b908d4d874abafb79f592467126c22dd1217233b789a4574160c8c","entity_key":"d_first_greetings_01:3","voice_id":"lvQdCgwZfBuOzxyV5pxu","voice_name":"Audia - Customer Support","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"615964ed233130a240bafdddea7013daf93495e6b9cc39878cd4a453c71bffd9","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/3bc4f569f5b908d4d874abafb79f592467126c22dd1217233b789a4574160c8c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_alphabet_accents_02:1 -> audio/generated/fr-FR/dialogues/41451954c74a92eb88f7071637421c83760c6f7654908ed90de2c9a4e8eb36cb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7cb1a97f-bb61-50e6-af39-95b2e0527f1a', 1)
  AND voice_key = 'character:claire:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_alphabet_accents_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '52a79790c35fc7b17d63b1a97b36d47a3339cb8bfdb24f55ef3b5b74bf8dad03'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b8f1a407-0c0d-5625-bdbc-3b909bbf8036', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7cb1a97f-bb61-50e6-af39-95b2e0527f1a', 1), '52a79790c35fc7b17d63b1a97b36d47a3339cb8bfdb24f55ef3b5b74bf8dad03',
  'character:claire:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/41451954c74a92eb88f7071637421c83760c6f7654908ed90de2c9a4e8eb36cb.mp3', 1488, '2026-09-14 08:51:59.323006', 'e205ba49684cf0509fd30fdbfa2015f187ba04e8cadec80955bb33d03571927e', 'validated', '{"audio_key":"41451954c74a92eb88f7071637421c83760c6f7654908ed90de2c9a4e8eb36cb","entity_key":"d_alphabet_accents_02:1","voice_id":"yatuMX0k4Dh41R64sbGj","voice_name":"Cécile - Interactive Customer Support","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"e205ba49684cf0509fd30fdbfa2015f187ba04e8cadec80955bb33d03571927e","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/41451954c74a92eb88f7071637421c83760c6f7654908ed90de2c9a4e8eb36cb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_objects_02:3 -> audio/generated/fr-FR/dialogues/4418c7716e8360f7967cfbc6fc64b5d42f1e8976601f035ebe08f345da165a14.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('855099fe-fea8-555a-9b96-9edad1647e18', 1)
  AND voice_key = 'character:léa:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_objects_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5d33138bb63d7d19b39c4b1926b8e5a313425842fd4f38509e66ec383ea581a3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3922b13d-9a14-5dd8-8f7a-5f004bf14b5f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('855099fe-fea8-555a-9b96-9edad1647e18', 1), '5d33138bb63d7d19b39c4b1926b8e5a313425842fd4f38509e66ec383ea581a3',
  'character:léa:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/4418c7716e8360f7967cfbc6fc64b5d42f1e8976601f035ebe08f345da165a14.mp3', 862, '2026-09-14 08:51:59.384945', 'c9c29149f48bd39e52e29b5ba5ddca7411bf0a8d108430deb73ee32457b0f86c', 'validated', '{"audio_key":"4418c7716e8360f7967cfbc6fc64b5d42f1e8976601f035ebe08f345da165a14","entity_key":"d_first_objects_02:3","voice_id":"fBpCO0Kf0krKLYGOu65w","voice_name":"Émilie - Customer service advisor","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"c9c29149f48bd39e52e29b5ba5ddca7411bf0a8d108430deb73ee32457b0f86c","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/4418c7716e8360f7967cfbc6fc64b5d42f1e8976601f035ebe08f345da165a14.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_objects_01:1 -> audio/generated/fr-FR/dialogues/456ea720e822c4a26a3ade3659883e9f4c33f032eeac5cd1d08b201198ab3dcd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6490292f-06dd-5d97-ba09-3b9fa70f5a28', 1)
  AND voice_key = 'character:camille:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_objects_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4a9a999c21ae0793cd3a006285c479c4dcdc2cd4b992f73800b5ef9d549ceb18'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6cf6dd6a-6fb3-54ff-a68c-b654e520c45e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6490292f-06dd-5d97-ba09-3b9fa70f5a28', 1), '4a9a999c21ae0793cd3a006285c479c4dcdc2cd4b992f73800b5ef9d549ceb18',
  'character:camille:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/456ea720e822c4a26a3ade3659883e9f4c33f032eeac5cd1d08b201198ab3dcd.mp3', 1280, '2026-09-14 08:52:00.314075', '1fbf4143cccfd510bf95a9f6e35615f09d9499e31937bf699c29739129e81984', 'validated', '{"audio_key":"456ea720e822c4a26a3ade3659883e9f4c33f032eeac5cd1d08b201198ab3dcd","entity_key":"d_first_objects_01:1","voice_id":"lvQdCgwZfBuOzxyV5pxu","voice_name":"Audia - Customer Support","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1fbf4143cccfd510bf95a9f6e35615f09d9499e31937bf699c29739129e81984","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/456ea720e822c4a26a3ade3659883e9f4c33f032eeac5cd1d08b201198ab3dcd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_alphabet_accents_02:4 -> audio/generated/fr-FR/dialogues/479955824a9ebafb69ec81c9d17b1d2bc02bfbc38a85b3d4737572a4eac4ca9e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ef7ad50d-0194-5669-8273-76d2fd7fac50', 1)
  AND voice_key = 'character:thomas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_alphabet_accents_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '90273eb53e8c6e66dd3d593838ece23a5e713a0f4f135d2c938b124bebf9b77c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2198b65f-d933-5365-a6ae-2ebebadbe58b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ef7ad50d-0194-5669-8273-76d2fd7fac50', 1), '90273eb53e8c6e66dd3d593838ece23a5e713a0f4f135d2c938b124bebf9b77c',
  'character:thomas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/479955824a9ebafb69ec81c9d17b1d2bc02bfbc38a85b3d4737572a4eac4ca9e.mp3', 1018, '2026-09-14 08:52:00.318256', 'a553d3257e2cfd32caf8f957d948dba204c7fb995617f9ffa48728f3677514f0', 'validated', '{"audio_key":"479955824a9ebafb69ec81c9d17b1d2bc02bfbc38a85b3d4737572a4eac4ca9e","entity_key":"d_alphabet_accents_02:4","voice_id":"1WQXvbtj0rUYuB5yhY3N","voice_name":"Skel - Calm and Professional","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a553d3257e2cfd32caf8f957d948dba204c7fb995617f9ffa48728f3677514f0","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/479955824a9ebafb69ec81c9d17b1d2bc02bfbc38a85b3d4737572a4eac4ca9e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_numbers_0_10_02:4 -> audio/generated/fr-FR/dialogues/4b3679b5dc57f8fa3901cbfb76499f17a478bc6b8293346004923dc87bbf4cfd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7216aa8f-2692-5245-ab57-81d7fec7a8d3', 1)
  AND voice_key = 'character:nicolas:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_numbers_0_10_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '16f9f81b6192278f91ffd4610b650aa2ff72ebbad4e45ad63048cc39fcb5de03'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('83e672d3-7e1a-5aaa-a080-658e7c7e44b1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7216aa8f-2692-5245-ab57-81d7fec7a8d3', 1), '16f9f81b6192278f91ffd4610b650aa2ff72ebbad4e45ad63048cc39fcb5de03',
  'character:nicolas:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/4b3679b5dc57f8fa3901cbfb76499f17a478bc6b8293346004923dc87bbf4cfd.mp3', 914, '2026-09-14 08:52:01.311230', 'ea3fa74aef3933e734cf8c79ad7a0e83e89929bd80152ff555d99b554b52aeb5', 'validated', '{"audio_key":"4b3679b5dc57f8fa3901cbfb76499f17a478bc6b8293346004923dc87bbf4cfd","entity_key":"d_numbers_0_10_02:4","voice_id":"7Pm7442WzqlfkW9vjmO9","voice_name":"Maxime - Dynamic and Natural","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ea3fa74aef3933e734cf8c79ad7a0e83e89929bd80152ff555d99b554b52aeb5","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/4b3679b5dc57f8fa3901cbfb76499f17a478bc6b8293346004923dc87bbf4cfd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_polite_words_01:1 -> audio/generated/fr-FR/dialogues/4bf682f845c4db30b0665f6b1b03b4cd9d58a0e2cfe2f4faa4e7a4a99537b0dc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9e35c0ca-ad2f-502a-a8e3-d22d0c25f9e9', 1)
  AND voice_key = 'character:inès:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_polite_words_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'abc92003d510331220fb96088955ff0a4276799aee2f3a6bae3c1b67e64490c2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e8c64eea-8ae5-5385-8076-c1f0bad729e4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9e35c0ca-ad2f-502a-a8e3-d22d0c25f9e9', 1), 'abc92003d510331220fb96088955ff0a4276799aee2f3a6bae3c1b67e64490c2',
  'character:inès:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/4bf682f845c4db30b0665f6b1b03b4cd9d58a0e2cfe2f4faa4e7a4a99537b0dc.mp3', 1567, '2026-09-14 08:52:01.314312', '7cafa57be3b3de00c5eda971f0ee85a3de5fb9f8b24c889af1bebfdaebdda0cc', 'validated', '{"audio_key":"4bf682f845c4db30b0665f6b1b03b4cd9d58a0e2cfe2f4faa4e7a4a99537b0dc","entity_key":"d_polite_words_01:1","voice_id":"mNu8EQcIlFZdOJs7yfhe","voice_name":"Julia - Warm French Narrator","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7cafa57be3b3de00c5eda971f0ee85a3de5fb9f8b24c889af1bebfdaebdda0cc","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/4bf682f845c4db30b0665f6b1b03b4cd9d58a0e2cfe2f4faa4e7a4a99537b0dc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_alphabet_accents_01:3 -> audio/generated/fr-FR/dialogues/52638f8a6c41105ab425f5ab1d6811e3f8fd05b84426e0c510958911a3260cd7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('12ff45ec-ca9f-5741-bec8-943047a923b4', 1)
  AND voice_key = 'character:inès:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_alphabet_accents_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f112e0be292db50a1f5b3bc334094db1ac7219225843733104230d1617fca3eb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dcb83cba-b497-538e-acec-3301c19d1301', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('12ff45ec-ca9f-5741-bec8-943047a923b4', 1), 'f112e0be292db50a1f5b3bc334094db1ac7219225843733104230d1617fca3eb',
  'character:inès:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/52638f8a6c41105ab425f5ab1d6811e3f8fd05b84426e0c510958911a3260cd7.mp3', 862, '2026-09-14 08:52:02.269693', '07ab2bf4e614f66c9c5683eb31226031ac785e592070c9710e4dd0c1691ed882', 'validated', '{"audio_key":"52638f8a6c41105ab425f5ab1d6811e3f8fd05b84426e0c510958911a3260cd7","entity_key":"d_alphabet_accents_01:3","voice_id":"mNu8EQcIlFZdOJs7yfhe","voice_name":"Julia - Warm French Narrator","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"07ab2bf4e614f66c9c5683eb31226031ac785e592070c9710e4dd0c1691ed882","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/52638f8a6c41105ab425f5ab1d6811e3f8fd05b84426e0c510958911a3260cd7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_how_are_you_01:2 -> audio/generated/fr-FR/dialogues/58bc05392ae5908e9fdd6d1e62afdbefc9ddb8e15877112616013a69c812b6d4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('45f40e31-dc38-5c37-8fa8-3f39661e78b1', 1)
  AND voice_key = 'character:thomas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_how_are_you_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '59ebeb1ff3d71786775583901fb5d9606f898aba3e84529872d0e15169d44e11'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c7146cdf-fc8a-5c29-b84e-294a27498b75', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('45f40e31-dc38-5c37-8fa8-3f39661e78b1', 1), '59ebeb1ff3d71786775583901fb5d9606f898aba3e84529872d0e15169d44e11',
  'character:thomas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/58bc05392ae5908e9fdd6d1e62afdbefc9ddb8e15877112616013a69c812b6d4.mp3', 1149, '2026-09-14 08:52:02.307551', 'a6cacc2a4904acb45ece7b3d85d3f2ceb9fb1066c5a82206e41a75be3951f707', 'validated', '{"audio_key":"58bc05392ae5908e9fdd6d1e62afdbefc9ddb8e15877112616013a69c812b6d4","entity_key":"d_how_are_you_01:2","voice_id":"1WQXvbtj0rUYuB5yhY3N","voice_name":"Skel - Calm and Professional","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a6cacc2a4904acb45ece7b3d85d3f2ceb9fb1066c5a82206e41a75be3951f707","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/58bc05392ae5908e9fdd6d1e62afdbefc9ddb8e15877112616013a69c812b6d4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_sounds_01:3 -> audio/generated/fr-FR/dialogues/5d532b263195e6060188a62466bc665409edc19598db13702e84360bcd78d58d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1a8a2ccd-31cd-5235-b40c-c8fdf5023304', 1)
  AND voice_key = 'character:camille:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_sounds_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f0ae3b545e5fe554dcd5bfc80a0249b709aafac6c5af044727729fdb850cdfdd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b056416a-f3a5-5b2e-a68a-83840a6dff97', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1a8a2ccd-31cd-5235-b40c-c8fdf5023304', 1), 'f0ae3b545e5fe554dcd5bfc80a0249b709aafac6c5af044727729fdb850cdfdd',
  'character:camille:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/5d532b263195e6060188a62466bc665409edc19598db13702e84360bcd78d58d.mp3', 1201, '2026-09-14 08:52:03.209402', '2eb2587f5a8f81343c568c16d2d3ec53f93adf77b65e1d4cc983007c428da6c7', 'validated', '{"audio_key":"5d532b263195e6060188a62466bc665409edc19598db13702e84360bcd78d58d","entity_key":"d_first_sounds_01:3","voice_id":"lvQdCgwZfBuOzxyV5pxu","voice_name":"Audia - Customer Support","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2eb2587f5a8f81343c568c16d2d3ec53f93adf77b65e1d4cc983007c428da6c7","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/5d532b263195e6060188a62466bc665409edc19598db13702e84360bcd78d58d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_my_name_01:3 -> audio/generated/fr-FR/dialogues/625dab0c2b9b2abf5c4cfb719cba9b13571d47b959392f5c58ae1a86f22bd919.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d1a600f6-408d-50c2-a00e-18ff1f6b0b05', 1)
  AND voice_key = 'character:inès:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_my_name_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '23bc259dcc03f99a23ab987a2a36ff3e1f67be2e43319c5da2871bf63ec6d55c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c2c5723e-b3fa-5c55-b706-1c1a027266c9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d1a600f6-408d-50c2-a00e-18ff1f6b0b05', 1), '23bc259dcc03f99a23ab987a2a36ff3e1f67be2e43319c5da2871bf63ec6d55c',
  'character:inès:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/625dab0c2b9b2abf5c4cfb719cba9b13571d47b959392f5c58ae1a86f22bd919.mp3', 1097, '2026-09-14 08:52:03.290716', 'c68227dc02d5427ddd49b0ff04e07a4723d7368f4a6c56a95b39a84d9ce5e9b6', 'validated', '{"audio_key":"625dab0c2b9b2abf5c4cfb719cba9b13571d47b959392f5c58ae1a86f22bd919","entity_key":"d_my_name_01:3","voice_id":"mNu8EQcIlFZdOJs7yfhe","voice_name":"Julia - Warm French Narrator","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c68227dc02d5427ddd49b0ff04e07a4723d7368f4a6c56a95b39a84d9ce5e9b6","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/625dab0c2b9b2abf5c4cfb719cba9b13571d47b959392f5c58ae1a86f22bd919.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_survival_words_01:2 -> audio/generated/fr-FR/dialogues/6735fe879a95086e0adcdbb6015418847f29df3411fa6bcdb8ed2c52e0da2bd0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ca3fceec-82fa-5ce9-a163-ad7108ab3c4e', 1)
  AND voice_key = 'character:claire:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_survival_words_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aa2bcb1fa3f64198f78e5fdc186fe0046cf1fb707cc0a11cb188c0b83c01770c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8c7643bd-136e-50a4-a8e7-6f66b8337539', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ca3fceec-82fa-5ce9-a163-ad7108ab3c4e', 1), 'aa2bcb1fa3f64198f78e5fdc186fe0046cf1fb707cc0a11cb188c0b83c01770c',
  'character:claire:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/6735fe879a95086e0adcdbb6015418847f29df3411fa6bcdb8ed2c52e0da2bd0.mp3', 1488, '2026-09-14 08:52:04.236438', '77ddd2770451b00598c223a42ff5207bd8ca6e2f5dad6643637a5aaf02ea70ca', 'validated', '{"audio_key":"6735fe879a95086e0adcdbb6015418847f29df3411fa6bcdb8ed2c52e0da2bd0","entity_key":"d_survival_words_01:2","voice_id":"yatuMX0k4Dh41R64sbGj","voice_name":"Cécile - Interactive Customer Support","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"77ddd2770451b00598c223a42ff5207bd8ca6e2f5dad6643637a5aaf02ea70ca","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/6735fe879a95086e0adcdbb6015418847f29df3411fa6bcdb8ed2c52e0da2bd0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_how_are_you_02:4 -> audio/generated/fr-FR/dialogues/6b2623ec3fa7b5056d41026cdde7edc84b04faa6650d45d823f5b88da3c0e32b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('74fe7b45-dfdc-52e1-84de-3eeb2aafdcd2', 1)
  AND voice_key = 'character:hugo:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_how_are_you_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4933751d204ac2229dd5d9afe6b0bc499f11031e300c6c5b835da6fa02696228'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0dc37a0c-d0ad-5ea4-a98b-df24b4fa6f20', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('74fe7b45-dfdc-52e1-84de-3eeb2aafdcd2', 1), '4933751d204ac2229dd5d9afe6b0bc499f11031e300c6c5b835da6fa02696228',
  'character:hugo:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/6b2623ec3fa7b5056d41026cdde7edc84b04faa6650d45d823f5b88da3c0e32b.mp3', 783, '2026-09-14 08:52:04.215288', '4f9ba77681fa8dec5a9eb457e45e271ce9a02360977e2210f59aa9df0fe397d2', 'validated', '{"audio_key":"6b2623ec3fa7b5056d41026cdde7edc84b04faa6650d45d823f5b88da3c0e32b","entity_key":"d_how_are_you_02:4","voice_id":"FRY6vOtGqwamgAf39SwP","voice_name":"Yanis","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4f9ba77681fa8dec5a9eb457e45e271ce9a02360977e2210f59aa9df0fe397d2","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/6b2623ec3fa7b5056d41026cdde7edc84b04faa6650d45d823f5b88da3c0e32b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_numbers_0_10_02:1 -> audio/generated/fr-FR/dialogues/6ed36b42208e77c136df5bbd68ca546274a69687b2248d0561551c3261406fbd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bc529970-a101-50c3-a0fb-da0ccd7b7fb5', 1)
  AND voice_key = 'character:léa:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_numbers_0_10_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9866946cdd36c74bd76a13de6ce1e78db98b9dd40686e271d7881ce1f5d23095'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d87251dd-2bd2-57da-a853-f546783543e9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bc529970-a101-50c3-a0fb-da0ccd7b7fb5', 1), '9866946cdd36c74bd76a13de6ce1e78db98b9dd40686e271d7881ce1f5d23095',
  'character:léa:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/6ed36b42208e77c136df5bbd68ca546274a69687b2248d0561551c3261406fbd.mp3', 1436, '2026-09-14 08:52:05.187193', '9be3e903b4e0913ddbf27807a8c44dbda662a40040c74bef97d188c544714b84', 'validated', '{"audio_key":"6ed36b42208e77c136df5bbd68ca546274a69687b2248d0561551c3261406fbd","entity_key":"d_numbers_0_10_02:1","voice_id":"fBpCO0Kf0krKLYGOu65w","voice_name":"Émilie - Customer service advisor","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"9be3e903b4e0913ddbf27807a8c44dbda662a40040c74bef97d188c544714b84","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/6ed36b42208e77c136df5bbd68ca546274a69687b2248d0561551c3261406fbd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_how_are_you_02:2 -> audio/generated/fr-FR/dialogues/6ee0b2593a3adb236cf80f2be0a821f8638a12b244783c61b1302582b2b80d2f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6499e98c-fc97-5f7b-ab4d-6636c2209de1', 1)
  AND voice_key = 'character:hugo:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_how_are_you_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b0ed028b59a0c28b16933b4951436453e846593906364cbd0f8cbbb1cb37adf4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dc865d81-a4c0-57f7-906b-037ce2b55e1e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6499e98c-fc97-5f7b-ab4d-6636c2209de1', 1), 'b0ed028b59a0c28b16933b4951436453e846593906364cbd0f8cbbb1cb37adf4',
  'character:hugo:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/6ee0b2593a3adb236cf80f2be0a821f8638a12b244783c61b1302582b2b80d2f.mp3', 1201, '2026-09-14 08:52:05.218713', '4019181ce03b66305a09547ae9d6ea8d29c5ae63669c2343a5c9596945e5074c', 'validated', '{"audio_key":"6ee0b2593a3adb236cf80f2be0a821f8638a12b244783c61b1302582b2b80d2f","entity_key":"d_how_are_you_02:2","voice_id":"FRY6vOtGqwamgAf39SwP","voice_name":"Yanis","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4019181ce03b66305a09547ae9d6ea8d29c5ae63669c2343a5c9596945e5074c","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/6ee0b2593a3adb236cf80f2be0a821f8638a12b244783c61b1302582b2b80d2f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_my_name_01:1 -> audio/generated/fr-FR/dialogues/767e28e8d6be05c3f7404f7ad0f8cdae1df3f97620fb49b8e5556a347cc3bfa9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8ffb6db0-eed8-54d2-8ea8-8b1759c153cd', 1)
  AND voice_key = 'character:inès:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_my_name_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '454fa1505569c9119fa6c5808b5836de8551052436ff1512fabd32bfbd95b737'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9506d559-7991-5d02-b5fa-4a9756276a09', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8ffb6db0-eed8-54d2-8ea8-8b1759c153cd', 1), '454fa1505569c9119fa6c5808b5836de8551052436ff1512fabd32bfbd95b737',
  'character:inès:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/767e28e8d6be05c3f7404f7ad0f8cdae1df3f97620fb49b8e5556a347cc3bfa9.mp3', 1750, '2026-09-14 08:52:06.192112', '741ff7c69db80b9a5d554657d7244903fcdf3bbf17478fd9439fe80f9429e5a1', 'validated', '{"audio_key":"767e28e8d6be05c3f7404f7ad0f8cdae1df3f97620fb49b8e5556a347cc3bfa9","entity_key":"d_my_name_01:1","voice_id":"mNu8EQcIlFZdOJs7yfhe","voice_name":"Julia - Warm French Narrator","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"741ff7c69db80b9a5d554657d7244903fcdf3bbf17478fd9439fe80f9429e5a1","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/767e28e8d6be05c3f7404f7ad0f8cdae1df3f97620fb49b8e5556a347cc3bfa9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_survival_words_02:2 -> audio/generated/fr-FR/dialogues/77b5c5079a9de99bd3dcf29c7a9fa1d77b3e3efdad5aab524e4bc02c4e9f3ffe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('14b97a2b-a089-5351-9b8c-1686bc00f1a4', 1)
  AND voice_key = 'character:hugo:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_survival_words_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c314bed70c6a03234a2245647993fb682e4e32abb0807efd70db41457475abf5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ea8eec94-de4c-59ab-a6ac-0a8ae69655a4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('14b97a2b-a089-5351-9b8c-1686bc00f1a4', 1), 'c314bed70c6a03234a2245647993fb682e4e32abb0807efd70db41457475abf5',
  'character:hugo:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/77b5c5079a9de99bd3dcf29c7a9fa1d77b3e3efdad5aab524e4bc02c4e9f3ffe.mp3', 862, '2026-09-14 08:52:06.188412', 'e596dae5833355b6e451be11aa7777ccf390b1e2bd5b19ff2c51525377669529', 'validated', '{"audio_key":"77b5c5079a9de99bd3dcf29c7a9fa1d77b3e3efdad5aab524e4bc02c4e9f3ffe","entity_key":"d_survival_words_02:2","voice_id":"FRY6vOtGqwamgAf39SwP","voice_name":"Yanis","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e596dae5833355b6e451be11aa7777ccf390b1e2bd5b19ff2c51525377669529","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/77b5c5079a9de99bd3dcf29c7a9fa1d77b3e3efdad5aab524e4bc02c4e9f3ffe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_objects_02:1 -> audio/generated/fr-FR/dialogues/7caa2907030126523263253f216e14f6e62ba9ac59106de63de6e53fcc7eefcf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('68593dc4-9833-5847-bb64-68cb1264ed7e', 1)
  AND voice_key = 'character:léa:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_objects_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b33b0747c5debea9290311e5d4eb88e4d7498568a8f624b7fa6709ef8e838b0b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9d43ca82-d405-5e25-ad32-78aa8907170c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('68593dc4-9833-5847-bb64-68cb1264ed7e', 1), 'b33b0747c5debea9290311e5d4eb88e4d7498568a8f624b7fa6709ef8e838b0b',
  'character:léa:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/7caa2907030126523263253f216e14f6e62ba9ac59106de63de6e53fcc7eefcf.mp3', 1253, '2026-09-14 08:52:07.156026', '6109d97f13ad049ed8a214cab4f6bad03ddfb97536db43efec4e937fe2b67e77', 'validated', '{"audio_key":"7caa2907030126523263253f216e14f6e62ba9ac59106de63de6e53fcc7eefcf","entity_key":"d_first_objects_02:1","voice_id":"fBpCO0Kf0krKLYGOu65w","voice_name":"Émilie - Customer service advisor","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"6109d97f13ad049ed8a214cab4f6bad03ddfb97536db43efec4e937fe2b67e77","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/7caa2907030126523263253f216e14f6e62ba9ac59106de63de6e53fcc7eefcf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_numbers_0_10_01:2 -> audio/generated/fr-FR/dialogues/7f6628c3d6d4ed3c8a483ff8edac982079c52c37cee49c35ff2a3bd5bd67581c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b7ea7cbe-4e6c-5f23-b6bb-ae9ab44618bb', 1)
  AND voice_key = 'character:hugo:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_numbers_0_10_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3ff3d76afdb83ea02b525cf1b98e6a81bae37c3b2f38bc5c9b6d52d5a41ff129'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ffc4adf7-0fee-57a0-9593-77312d5e34eb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b7ea7cbe-4e6c-5f23-b6bb-ae9ab44618bb', 1), '3ff3d76afdb83ea02b525cf1b98e6a81bae37c3b2f38bc5c9b6d52d5a41ff129',
  'character:hugo:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/7f6628c3d6d4ed3c8a483ff8edac982079c52c37cee49c35ff2a3bd5bd67581c.mp3', 1071, '2026-09-14 08:52:07.148115', 'f938e92a07c507926554d6ce1cbac842b5a625f8edf0ca670cc633a2a26ac4cf', 'validated', '{"audio_key":"7f6628c3d6d4ed3c8a483ff8edac982079c52c37cee49c35ff2a3bd5bd67581c","entity_key":"d_numbers_0_10_01:2","voice_id":"FRY6vOtGqwamgAf39SwP","voice_name":"Yanis","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f938e92a07c507926554d6ce1cbac842b5a625f8edf0ca670cc633a2a26ac4cf","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/7f6628c3d6d4ed3c8a483ff8edac982079c52c37cee49c35ff2a3bd5bd67581c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_greetings_02:4 -> audio/generated/fr-FR/dialogues/820699d4b9715b54c8b7f62a227250705b7615708601f3a00ac8a9c58f6da05a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b01b2dd2-edc0-5ad4-945f-b48c0bd49b4a', 1)
  AND voice_key = 'character:hugo:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_greetings_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '87abe05e57f1f1d81dc300bda01d5c5a8d9b34035e5190f4c5f4bdbcf40f53c6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fcd2ae68-9a4b-51f8-b086-b61b00316bf3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b01b2dd2-edc0-5ad4-945f-b48c0bd49b4a', 1), '87abe05e57f1f1d81dc300bda01d5c5a8d9b34035e5190f4c5f4bdbcf40f53c6',
  'character:hugo:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/820699d4b9715b54c8b7f62a227250705b7615708601f3a00ac8a9c58f6da05a.mp3', 1071, '2026-09-14 08:52:08.099022', 'dbea4e7966f6088e0603e09edd5965487285fa9de50153a523636321c103e0d8', 'validated', '{"audio_key":"820699d4b9715b54c8b7f62a227250705b7615708601f3a00ac8a9c58f6da05a","entity_key":"d_first_greetings_02:4","voice_id":"FRY6vOtGqwamgAf39SwP","voice_name":"Yanis","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"dbea4e7966f6088e0603e09edd5965487285fa9de50153a523636321c103e0d8","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/820699d4b9715b54c8b7f62a227250705b7615708601f3a00ac8a9c58f6da05a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_conversation_01:3 -> audio/generated/fr-FR/dialogues/835c1e56053ff27fba345d4b297e06f6798103355a047561abeb019ee58c6b7e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('02c2c300-cd3c-526b-b586-a87287a9a3f3', 1)
  AND voice_key = 'character:léa:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_conversation_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '22688b74284d5c73102da1f4bc7d27fa5002e63494cb117f919807c7f48e4dd0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7f44ae63-5008-56de-945b-532d8103bbce', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('02c2c300-cd3c-526b-b586-a87287a9a3f3', 1), '22688b74284d5c73102da1f4bc7d27fa5002e63494cb117f919807c7f48e4dd0',
  'character:léa:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/835c1e56053ff27fba345d4b297e06f6798103355a047561abeb019ee58c6b7e.mp3', 783, '2026-09-14 08:52:08.105441', '1dd03a23f7c144096af76267b8bee18244c0eb322d4446500d36ae32c458de37', 'validated', '{"audio_key":"835c1e56053ff27fba345d4b297e06f6798103355a047561abeb019ee58c6b7e","entity_key":"d_first_conversation_01:3","voice_id":"fBpCO0Kf0krKLYGOu65w","voice_name":"Émilie - Customer service advisor","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"1dd03a23f7c144096af76267b8bee18244c0eb322d4446500d36ae32c458de37","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/835c1e56053ff27fba345d4b297e06f6798103355a047561abeb019ee58c6b7e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_my_name_02:2 -> audio/generated/fr-FR/dialogues/83e8ebe1afa411020e01eb1fcf56334ceda4d976b72f2cfe768c5fa21c25032c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('15d068c7-d5c5-5a3e-b8d8-4d2957f9db01', 1)
  AND voice_key = 'character:julien:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_my_name_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9e66d54ff49c5cea5d3373f13970114fe47b7e98aba011ec0974f89c1af8c93a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('efe9db50-ef7c-5ae5-8085-882dc3390980', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('15d068c7-d5c5-5a3e-b8d8-4d2957f9db01', 1), '9e66d54ff49c5cea5d3373f13970114fe47b7e98aba011ec0974f89c1af8c93a',
  'character:julien:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/83e8ebe1afa411020e01eb1fcf56334ceda4d976b72f2cfe768c5fa21c25032c.mp3', 1488, '2026-09-14 08:52:09.101561', '2a02104940f5b002907600d7cfcb5def85d1ea5e8c2def2c619976c376ec5aa3', 'validated', '{"audio_key":"83e8ebe1afa411020e01eb1fcf56334ceda4d976b72f2cfe768c5fa21c25032c","entity_key":"d_my_name_02:2","voice_id":"xO2Q4ARMEd4BI2sGDH9c","voice_name":"Edouard - Confident and Polished","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"2a02104940f5b002907600d7cfcb5def85d1ea5e8c2def2c619976c376ec5aa3","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/83e8ebe1afa411020e01eb1fcf56334ceda4d976b72f2cfe768c5fa21c25032c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_alphabet_accents_02:3 -> audio/generated/fr-FR/dialogues/87d4db5b3da52edc0d22e73add21748036e941b3c9ef3ab8ca25461f4ad0cb82.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a2f6cb04-7284-50ac-b21c-44f323cabe9d', 1)
  AND voice_key = 'character:claire:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_alphabet_accents_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '234bc02a3ce48bef7d44411c1cbfa2836134f26ab7c74168d14dcb8c7db7d60e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('200f7b8b-e0d1-557f-b998-8ec66d6ec705', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a2f6cb04-7284-50ac-b21c-44f323cabe9d', 1), '234bc02a3ce48bef7d44411c1cbfa2836134f26ab7c74168d14dcb8c7db7d60e',
  'character:claire:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/87d4db5b3da52edc0d22e73add21748036e941b3c9ef3ab8ca25461f4ad0cb82.mp3', 1280, '2026-09-14 08:52:09.098945', 'ef7a1dcf2abde11c0ac6bce1b3ce1021efdac693256a972b423d72046fd96c73', 'validated', '{"audio_key":"87d4db5b3da52edc0d22e73add21748036e941b3c9ef3ab8ca25461f4ad0cb82","entity_key":"d_alphabet_accents_02:3","voice_id":"yatuMX0k4Dh41R64sbGj","voice_name":"Cécile - Interactive Customer Support","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"ef7a1dcf2abde11c0ac6bce1b3ce1021efdac693256a972b423d72046fd96c73","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/87d4db5b3da52edc0d22e73add21748036e941b3c9ef3ab8ca25461f4ad0cb82.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_survival_words_02:1 -> audio/generated/fr-FR/dialogues/88ec328fe64137f880de5001bdef7a3618ebc9156bd05f5973cb954c00a138b4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('dd74c56f-38ba-5f2f-a07d-526e3ca0c634', 1)
  AND voice_key = 'character:thomas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_survival_words_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b44fb56879097f416ee50463b0f0f6896e7496b050cebb372297567ebddfecb1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4f480b90-9f39-511e-8bec-25d87f54507c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('dd74c56f-38ba-5f2f-a07d-526e3ca0c634', 1), 'b44fb56879097f416ee50463b0f0f6896e7496b050cebb372297567ebddfecb1',
  'character:thomas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/88ec328fe64137f880de5001bdef7a3618ebc9156bd05f5973cb954c00a138b4.mp3', 1201, '2026-09-14 08:52:10.056602', '1dacdaae95b6267ba49578585764d1d57a6202a592f0f5b679d8cb0f7bcd3e40', 'validated', '{"audio_key":"88ec328fe64137f880de5001bdef7a3618ebc9156bd05f5973cb954c00a138b4","entity_key":"d_survival_words_02:1","voice_id":"1WQXvbtj0rUYuB5yhY3N","voice_name":"Skel - Calm and Professional","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1dacdaae95b6267ba49578585764d1d57a6202a592f0f5b679d8cb0f7bcd3e40","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/88ec328fe64137f880de5001bdef7a3618ebc9156bd05f5973cb954c00a138b4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_greetings_02:3 -> audio/generated/fr-FR/dialogues/8db4011dacf86018b8802773a1a71091a1e5e17cbdc1c57b16749d06cfb67401.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('55938c73-a153-5c42-bf8a-1aac7677def7', 1)
  AND voice_key = 'character:léa:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_greetings_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'af191e73d5a1a12ce21f4d9abcf1af989050bc6737d654ac671c85442bf400a6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3d401fb3-b909-516e-aaf1-1dcc6dd8abe6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('55938c73-a153-5c42-bf8a-1aac7677def7', 1), 'af191e73d5a1a12ce21f4d9abcf1af989050bc6737d654ac671c85442bf400a6',
  'character:léa:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/8db4011dacf86018b8802773a1a71091a1e5e17cbdc1c57b16749d06cfb67401.mp3', 914, '2026-09-14 08:52:10.060562', '7d72c541c7117516a572ac0aa35093b157a43a928be98151c005916fbd246873', 'validated', '{"audio_key":"8db4011dacf86018b8802773a1a71091a1e5e17cbdc1c57b16749d06cfb67401","entity_key":"d_first_greetings_02:3","voice_id":"fBpCO0Kf0krKLYGOu65w","voice_name":"Émilie - Customer service advisor","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"7d72c541c7117516a572ac0aa35093b157a43a928be98151c005916fbd246873","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/8db4011dacf86018b8802773a1a71091a1e5e17cbdc1c57b16749d06cfb67401.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_greetings_02:1 -> audio/generated/fr-FR/dialogues/8dd5f78d1ef0a2e2391da739586b008f58cce6134db82e3d1ca8daaa809c2cd5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('483616dc-eeed-5523-8a62-553e10bdaada', 1)
  AND voice_key = 'character:léa:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_greetings_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '212febfe999494533c29f6bf73cd2ed8d1343f023b8e6a04a3421be28da29b89'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5895c8af-ab31-5d6c-a99f-215935f2825c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('483616dc-eeed-5523-8a62-553e10bdaada', 1), '212febfe999494533c29f6bf73cd2ed8d1343f023b8e6a04a3421be28da29b89',
  'character:léa:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/8dd5f78d1ef0a2e2391da739586b008f58cce6134db82e3d1ca8daaa809c2cd5.mp3', 1018, '2026-09-14 08:52:11.250735', '2c441c07a0da8566ea0aa5f1fdd5d62fbe8e60152bee8f834c0f8e39a1e6ce78', 'validated', '{"audio_key":"8dd5f78d1ef0a2e2391da739586b008f58cce6134db82e3d1ca8daaa809c2cd5","entity_key":"d_first_greetings_02:1","voice_id":"fBpCO0Kf0krKLYGOu65w","voice_name":"Émilie - Customer service advisor","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"2c441c07a0da8566ea0aa5f1fdd5d62fbe8e60152bee8f834c0f8e39a1e6ce78","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/8dd5f78d1ef0a2e2391da739586b008f58cce6134db82e3d1ca8daaa809c2cd5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_alphabet_accents_01:4 -> audio/generated/fr-FR/dialogues/8f259e76e58d3cd6bc4c62ce2f6810936e8a4145fc1935b07cb0bca51e103c3d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a991cb30-f477-56a7-b70f-8e4cdf7990ba', 1)
  AND voice_key = 'character:julien:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_alphabet_accents_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5672c53720b48a5f613128eae231ef1e7e6389136641e0635346b35d6b01a8de'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f036ea79-0ae0-597c-814b-da6037bf97a3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a991cb30-f477-56a7-b70f-8e4cdf7990ba', 1), '5672c53720b48a5f613128eae231ef1e7e6389136641e0635346b35d6b01a8de',
  'character:julien:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/8f259e76e58d3cd6bc4c62ce2f6810936e8a4145fc1935b07cb0bca51e103c3d.mp3', 862, '2026-09-14 08:52:11.042581', 'd391e2de194e6beeabd1019bb248b2c571f9898dc11fe0c6436dcac647ab3f83', 'validated', '{"audio_key":"8f259e76e58d3cd6bc4c62ce2f6810936e8a4145fc1935b07cb0bca51e103c3d","entity_key":"d_alphabet_accents_01:4","voice_id":"xO2Q4ARMEd4BI2sGDH9c","voice_name":"Edouard - Confident and Polished","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"d391e2de194e6beeabd1019bb248b2c571f9898dc11fe0c6436dcac647ab3f83","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/8f259e76e58d3cd6bc4c62ce2f6810936e8a4145fc1935b07cb0bca51e103c3d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_greetings_01:4 -> audio/generated/fr-FR/dialogues/92c9f750593015ff7c9ff3c8f74eb06afc2aa85cb89533910eede1480565ba71.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c29ba433-d01f-5cd4-97e6-41a0d775fde5', 1)
  AND voice_key = 'character:thomas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_greetings_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '444b87358c0a1619b4f4fbe733c8887d726ac5d8d0341d7106672e7baf7bff34'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3fcd75fb-89fc-52a9-845e-b63cf690cfbf', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c29ba433-d01f-5cd4-97e6-41a0d775fde5', 1), '444b87358c0a1619b4f4fbe733c8887d726ac5d8d0341d7106672e7baf7bff34',
  'character:thomas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/92c9f750593015ff7c9ff3c8f74eb06afc2aa85cb89533910eede1480565ba71.mp3', 862, '2026-09-14 08:52:12.004977', 'c10b802ae136e7644e9c87624342a2d049f9c9ec7b11b4bb00240f1106b475fa', 'validated', '{"audio_key":"92c9f750593015ff7c9ff3c8f74eb06afc2aa85cb89533910eede1480565ba71","entity_key":"d_first_greetings_01:4","voice_id":"1WQXvbtj0rUYuB5yhY3N","voice_name":"Skel - Calm and Professional","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c10b802ae136e7644e9c87624342a2d049f9c9ec7b11b4bb00240f1106b475fa","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/92c9f750593015ff7c9ff3c8f74eb06afc2aa85cb89533910eede1480565ba71.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_greetings_01:1 -> audio/generated/fr-FR/dialogues/a10afcdb77e23683b5af172a8f2a26d7d48eca6d7067d154fefe580afaf3c795.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9f5689b1-aaaa-5c0b-b9cf-f64d6929058d', 1)
  AND voice_key = 'character:camille:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_greetings_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bc7444869484dd1ed34bfc4465724b887fecf604fcad0d0eaf40d3746d0bfeb7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('415e60bb-64c0-5a6e-971a-1638a75d1860', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9f5689b1-aaaa-5c0b-b9cf-f64d6929058d', 1), 'bc7444869484dd1ed34bfc4465724b887fecf604fcad0d0eaf40d3746d0bfeb7',
  'character:camille:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/a10afcdb77e23683b5af172a8f2a26d7d48eca6d7067d154fefe580afaf3c795.mp3', 914, '2026-09-14 08:52:12.172918', '8866cbe26d02ced710bd3d9944a6d4b1c027ca25d3927c22c4b4d02e0f8911f5', 'validated', '{"audio_key":"a10afcdb77e23683b5af172a8f2a26d7d48eca6d7067d154fefe580afaf3c795","entity_key":"d_first_greetings_01:1","voice_id":"lvQdCgwZfBuOzxyV5pxu","voice_name":"Audia - Customer Support","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8866cbe26d02ced710bd3d9944a6d4b1c027ca25d3927c22c4b4d02e0f8911f5","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/a10afcdb77e23683b5af172a8f2a26d7d48eca6d7067d154fefe580afaf3c795.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_objects_02:2 -> audio/generated/fr-FR/dialogues/a10f0ab3814cdb455d3cd77d9ae7f5d8d525e4bebb7db61d61bbeee3f85e2931.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7a6a3878-032b-5e3b-a3d8-090e71b284ad', 1)
  AND voice_key = 'character:thomas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_objects_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bf61bd432e1f09d2de94ad694fca605a0190815693416cea43a592f203fe3bf3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('529deb28-bbd7-5d21-a495-fd23ae812c53', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7a6a3878-032b-5e3b-a3d8-090e71b284ad', 1), 'bf61bd432e1f09d2de94ad694fca605a0190815693416cea43a592f203fe3bf3',
  'character:thomas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/a10f0ab3814cdb455d3cd77d9ae7f5d8d525e4bebb7db61d61bbeee3f85e2931.mp3', 1436, '2026-09-14 08:52:13.123630', '046958ef84653aee860f2b47d329718fc9e09e2060d77b8139c34fbfa81216dd', 'validated', '{"audio_key":"a10f0ab3814cdb455d3cd77d9ae7f5d8d525e4bebb7db61d61bbeee3f85e2931","entity_key":"d_first_objects_02:2","voice_id":"1WQXvbtj0rUYuB5yhY3N","voice_name":"Skel - Calm and Professional","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"046958ef84653aee860f2b47d329718fc9e09e2060d77b8139c34fbfa81216dd","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/a10f0ab3814cdb455d3cd77d9ae7f5d8d525e4bebb7db61d61bbeee3f85e2931.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_survival_words_01:1 -> audio/generated/fr-FR/dialogues/a1aba8fcb7d881bddcf5c131358863b4be6ce15a1799c2cb5f77aeab8fc807ee.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('44cebe7c-c35b-5b49-9b85-456fcb760791', 1)
  AND voice_key = 'character:camille:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_survival_words_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0c72800859127186fb46f21830bde1b29e60237a4b43013ccca6f8b3a8f91244'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('493e7f60-e987-5b13-b042-746962c42fea', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('44cebe7c-c35b-5b49-9b85-456fcb760791', 1), '0c72800859127186fb46f21830bde1b29e60237a4b43013ccca6f8b3a8f91244',
  'character:camille:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/a1aba8fcb7d881bddcf5c131358863b4be6ce15a1799c2cb5f77aeab8fc807ee.mp3', 1018, '2026-09-14 08:52:13.113514', '6ababe82cfd2935b18c58e7592ed23a9eadc536a8148bd3fb2442996c3084e90', 'validated', '{"audio_key":"a1aba8fcb7d881bddcf5c131358863b4be6ce15a1799c2cb5f77aeab8fc807ee","entity_key":"d_survival_words_01:1","voice_id":"lvQdCgwZfBuOzxyV5pxu","voice_name":"Audia - Customer Support","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6ababe82cfd2935b18c58e7592ed23a9eadc536a8148bd3fb2442996c3084e90","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/a1aba8fcb7d881bddcf5c131358863b4be6ce15a1799c2cb5f77aeab8fc807ee.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_numbers_0_10_01:1 -> audio/generated/fr-FR/dialogues/a30f81d695f45bccbb3071b06ec066e15daecc15e8f456f773ea59bf68e566d4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7d55d5fb-0546-585c-9a04-16d3babfaf89', 1)
  AND voice_key = 'character:camille:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_numbers_0_10_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '06124305fe4e5a9126321298cb346e1dfdbc1c387caa0ef2fa9ec1e726127872'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('33e86dbc-a40c-580a-938c-90c5103f5e04', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7d55d5fb-0546-585c-9a04-16d3babfaf89', 1), '06124305fe4e5a9126321298cb346e1dfdbc1c387caa0ef2fa9ec1e726127872',
  'character:camille:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/a30f81d695f45bccbb3071b06ec066e15daecc15e8f456f773ea59bf68e566d4.mp3', 1071, '2026-09-14 08:52:14.051979', '18a0151a4bab5bbd48568263fff15f6a867a72375583b8ccbb9fa75deb709e41', 'validated', '{"audio_key":"a30f81d695f45bccbb3071b06ec066e15daecc15e8f456f773ea59bf68e566d4","entity_key":"d_numbers_0_10_01:1","voice_id":"lvQdCgwZfBuOzxyV5pxu","voice_name":"Audia - Customer Support","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"18a0151a4bab5bbd48568263fff15f6a867a72375583b8ccbb9fa75deb709e41","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/a30f81d695f45bccbb3071b06ec066e15daecc15e8f456f773ea59bf68e566d4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_polite_words_02:1 -> audio/generated/fr-FR/dialogues/a3c4cab9acc3f860eedaa651237c12ead132ae9bcf64237adf45dfc4695c7333.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('71c4fad3-68c4-5c72-85da-eda5fd720ede', 1)
  AND voice_key = 'character:claire:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_polite_words_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '90dfa09aef0d97b06073d26e33e52ba937b63d089a9edf771865e0acb8c610de'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('91bb7c75-d04e-59f1-b919-0410f27303f1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('71c4fad3-68c4-5c72-85da-eda5fd720ede', 1), '90dfa09aef0d97b06073d26e33e52ba937b63d089a9edf771865e0acb8c610de',
  'character:claire:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/a3c4cab9acc3f860eedaa651237c12ead132ae9bcf64237adf45dfc4695c7333.mp3', 1149, '2026-09-14 08:52:14.085334', '8bbde1c40fc49ac8ce09bcf0b0785e0cb9360236b88693a813f7e1a0bf9ea4f7', 'validated', '{"audio_key":"a3c4cab9acc3f860eedaa651237c12ead132ae9bcf64237adf45dfc4695c7333","entity_key":"d_polite_words_02:1","voice_id":"yatuMX0k4Dh41R64sbGj","voice_name":"Cécile - Interactive Customer Support","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"8bbde1c40fc49ac8ce09bcf0b0785e0cb9360236b88693a813f7e1a0bf9ea4f7","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/a3c4cab9acc3f860eedaa651237c12ead132ae9bcf64237adf45dfc4695c7333.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_how_are_you_02:1 -> audio/generated/fr-FR/dialogues/a81a018ed70940f94dd686aa720283c54aac47244c6105049a0cfd7d76901095.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4c62dc7e-5198-5e39-a1b1-20f7250b6878', 1)
  AND voice_key = 'character:claire:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_how_are_you_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4bb89fa79a3cae07a83079e2a07f1feb74d8417a66edd529ad917620bad63830'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('80da69b6-e514-5888-a55f-a7e5e72f5d75', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4c62dc7e-5198-5e39-a1b1-20f7250b6878', 1), '4bb89fa79a3cae07a83079e2a07f1feb74d8417a66edd529ad917620bad63830',
  'character:claire:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/a81a018ed70940f94dd686aa720283c54aac47244c6105049a0cfd7d76901095.mp3', 1436, '2026-09-14 08:52:15.023032', 'bc780fa862999e871a64eb00d9e656efc363e5e7430cc13e242ea6469a450f07', 'validated', '{"audio_key":"a81a018ed70940f94dd686aa720283c54aac47244c6105049a0cfd7d76901095","entity_key":"d_how_are_you_02:1","voice_id":"yatuMX0k4Dh41R64sbGj","voice_name":"Cécile - Interactive Customer Support","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"bc780fa862999e871a64eb00d9e656efc363e5e7430cc13e242ea6469a450f07","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/a81a018ed70940f94dd686aa720283c54aac47244c6105049a0cfd7d76901095.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_survival_words_02:3 -> audio/generated/fr-FR/dialogues/b15f6082b685b049f6317299e8f8c284eb54a879d83c940fb7b57fb95255c2ae.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('57075c30-eefb-55bb-afa3-a76f96cd2e47', 1)
  AND voice_key = 'character:thomas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_survival_words_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c322d104f6a1397a4528d0695ef37ad30daac4d1866255ebc8896cc725387d78'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a4544b72-cf8c-5a39-99d4-c4847da88008', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('57075c30-eefb-55bb-afa3-a76f96cd2e47', 1), 'c322d104f6a1397a4528d0695ef37ad30daac4d1866255ebc8896cc725387d78',
  'character:thomas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/b15f6082b685b049f6317299e8f8c284eb54a879d83c940fb7b57fb95255c2ae.mp3', 1488, '2026-09-14 08:52:15.043247', '083931211288cb42ae216963e6579992391401b2310f27362663cf93be36ae8d', 'validated', '{"audio_key":"b15f6082b685b049f6317299e8f8c284eb54a879d83c940fb7b57fb95255c2ae","entity_key":"d_survival_words_02:3","voice_id":"1WQXvbtj0rUYuB5yhY3N","voice_name":"Skel - Calm and Professional","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"083931211288cb42ae216963e6579992391401b2310f27362663cf93be36ae8d","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/b15f6082b685b049f6317299e8f8c284eb54a879d83c940fb7b57fb95255c2ae.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_sounds_01:2 -> audio/generated/fr-FR/dialogues/b576fba3723da08bce0458137178289bab9fd837b726f1c0b7e88051eedca771.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('303c22da-3a89-54d0-a3e5-2edb7b7add2e', 1)
  AND voice_key = 'character:nicolas:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_sounds_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '914550e649f5d268e3a4fef2f64e7d7d7cc09a380baca6cb52292a6620b31e36'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d6b7410d-c681-5c68-85ef-3692de0045e9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('303c22da-3a89-54d0-a3e5-2edb7b7add2e', 1), '914550e649f5d268e3a4fef2f64e7d7d7cc09a380baca6cb52292a6620b31e36',
  'character:nicolas:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/b576fba3723da08bce0458137178289bab9fd837b726f1c0b7e88051eedca771.mp3', 1253, '2026-09-14 08:52:15.985032', '34420ee66e8b81c886f703eb265620eb13dfb60d88dcb1af730eb3852e18f23a', 'validated', '{"audio_key":"b576fba3723da08bce0458137178289bab9fd837b726f1c0b7e88051eedca771","entity_key":"d_first_sounds_01:2","voice_id":"7Pm7442WzqlfkW9vjmO9","voice_name":"Maxime - Dynamic and Natural","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"34420ee66e8b81c886f703eb265620eb13dfb60d88dcb1af730eb3852e18f23a","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/b576fba3723da08bce0458137178289bab9fd837b726f1c0b7e88051eedca771.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_polite_words_02:4 -> audio/generated/fr-FR/dialogues/b6406acad61eceddd37c68d1dee0eae83588ffc2fd8e252fb7928affd461be33.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('619d688c-f7ec-540a-a7df-c03e3247547f', 1)
  AND voice_key = 'character:nicolas:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_polite_words_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '85d39a0887c25dd94f0e9aad0ac7475c39f304c62dfbbbab31e704996a260e79'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a8b91741-4388-5009-8037-7829bec2c26c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('619d688c-f7ec-540a-a7df-c03e3247547f', 1), '85d39a0887c25dd94f0e9aad0ac7475c39f304c62dfbbbab31e704996a260e79',
  'character:nicolas:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/b6406acad61eceddd37c68d1dee0eae83588ffc2fd8e252fb7928affd461be33.mp3', 1201, '2026-09-14 08:52:16.134639', '0451cfbaf174c6668a55c1e8e7c0c3f04b53101c856e035c0acd22f67c8ef074', 'validated', '{"audio_key":"b6406acad61eceddd37c68d1dee0eae83588ffc2fd8e252fb7928affd461be33","entity_key":"d_polite_words_02:4","voice_id":"7Pm7442WzqlfkW9vjmO9","voice_name":"Maxime - Dynamic and Natural","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0451cfbaf174c6668a55c1e8e7c0c3f04b53101c856e035c0acd22f67c8ef074","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/b6406acad61eceddd37c68d1dee0eae83588ffc2fd8e252fb7928affd461be33.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_conversation_01:2 -> audio/generated/fr-FR/dialogues/b9e4a62f8e68d2291ab1a7ab2b638fe35563fe76f4f29d50bfaaf85a4094773d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e35431f7-bba6-5616-b5ab-bbfef86d7d45', 1)
  AND voice_key = 'character:inès:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_conversation_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5f4b554e0ff1e55e9dcbeb219c81d08c692a829f33282a4f6393e02a9598d551'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3fb41f8a-a708-5afb-be87-282074b8b656', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e35431f7-bba6-5616-b5ab-bbfef86d7d45', 1), '5f4b554e0ff1e55e9dcbeb219c81d08c692a829f33282a4f6393e02a9598d551',
  'character:inès:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/b9e4a62f8e68d2291ab1a7ab2b638fe35563fe76f4f29d50bfaaf85a4094773d.mp3', 1985, '2026-09-14 08:52:17.001036', 'e4ad2fef359a96ef667a8e13c312460905e0fa0d02757a57d95298290aec6c59', 'validated', '{"audio_key":"b9e4a62f8e68d2291ab1a7ab2b638fe35563fe76f4f29d50bfaaf85a4094773d","entity_key":"d_first_conversation_01:2","voice_id":"mNu8EQcIlFZdOJs7yfhe","voice_name":"Julia - Warm French Narrator","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e4ad2fef359a96ef667a8e13c312460905e0fa0d02757a57d95298290aec6c59","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/b9e4a62f8e68d2291ab1a7ab2b638fe35563fe76f4f29d50bfaaf85a4094773d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_survival_words_01:3 -> audio/generated/fr-FR/dialogues/baade39334093ce0635241cf1bd2f88e4a536c877f9d06fcd3cdb397df0a7410.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5027e693-613d-5ba5-8b65-9ac6359de2b4', 1)
  AND voice_key = 'character:camille:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_survival_words_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a2cfdc0d86527fabf0668ea431a9ee7e32a8a7a015f812f14d8e3adc5d2589b5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5af4ac61-89a0-5c38-8d84-c5a4f1f22f1d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5027e693-613d-5ba5-8b65-9ac6359de2b4', 1), 'a2cfdc0d86527fabf0668ea431a9ee7e32a8a7a015f812f14d8e3adc5d2589b5',
  'character:camille:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/baade39334093ce0635241cf1bd2f88e4a536c877f9d06fcd3cdb397df0a7410.mp3', 966, '2026-09-14 08:52:17.054739', '1f91e8e1cad25014fa0be192994b961b9f4375e29750b75c979fd19492c3637f', 'validated', '{"audio_key":"baade39334093ce0635241cf1bd2f88e4a536c877f9d06fcd3cdb397df0a7410","entity_key":"d_survival_words_01:3","voice_id":"lvQdCgwZfBuOzxyV5pxu","voice_name":"Audia - Customer Support","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1f91e8e1cad25014fa0be192994b961b9f4375e29750b75c979fd19492c3637f","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/baade39334093ce0635241cf1bd2f88e4a536c877f9d06fcd3cdb397df0a7410.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_polite_words_01:2 -> audio/generated/fr-FR/dialogues/be3bb18dcaf8506de7a80afabeb6be518d08f9177de86e9ba4f7b7281b059b53.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6f38330f-7fa5-597c-9136-3473f414b715', 1)
  AND voice_key = 'character:hugo:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_polite_words_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '340f5f9ece2c8c0a9481d187deef9682e67619aead69ad741ef842b1b52002bc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('29212a66-df2d-56f5-8b68-36d0c0f9e560', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6f38330f-7fa5-597c-9136-3473f414b715', 1), '340f5f9ece2c8c0a9481d187deef9682e67619aead69ad741ef842b1b52002bc',
  'character:hugo:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/be3bb18dcaf8506de7a80afabeb6be518d08f9177de86e9ba4f7b7281b059b53.mp3', 862, '2026-09-14 08:52:17.943988', '25b3d6b694de7b4423e0300f0aab685785b17b00f989f8c00e7944b6030931fc', 'validated', '{"audio_key":"be3bb18dcaf8506de7a80afabeb6be518d08f9177de86e9ba4f7b7281b059b53","entity_key":"d_polite_words_01:2","voice_id":"FRY6vOtGqwamgAf39SwP","voice_name":"Yanis","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"25b3d6b694de7b4423e0300f0aab685785b17b00f989f8c00e7944b6030931fc","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/be3bb18dcaf8506de7a80afabeb6be518d08f9177de86e9ba4f7b7281b059b53.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_objects_01:2 -> audio/generated/fr-FR/dialogues/c0a184f3c8febddfbd407282a733b88275f49fa9b73e7582f8a8d344573b9f5c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('40e7f966-1911-5b63-b20c-c96c7b61af77', 1)
  AND voice_key = 'character:julien:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_objects_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a5698c9a8e7804a3f6dd02312a0f027835e0097deb3c8234283d908d6cf7c77e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('271c38b9-22d3-5ce5-98c9-34a642ab5dd0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('40e7f966-1911-5b63-b20c-c96c7b61af77', 1), 'a5698c9a8e7804a3f6dd02312a0f027835e0097deb3c8234283d908d6cf7c77e',
  'character:julien:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/c0a184f3c8febddfbd407282a733b88275f49fa9b73e7582f8a8d344573b9f5c.mp3', 1384, '2026-09-14 08:52:18.118861', '3e420ae27da5dfe2b6a0820729a663a072bcf5a7bf2f48627d191e3987cf4964', 'validated', '{"audio_key":"c0a184f3c8febddfbd407282a733b88275f49fa9b73e7582f8a8d344573b9f5c","entity_key":"d_first_objects_01:2","voice_id":"xO2Q4ARMEd4BI2sGDH9c","voice_name":"Edouard - Confident and Polished","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"3e420ae27da5dfe2b6a0820729a663a072bcf5a7bf2f48627d191e3987cf4964","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/c0a184f3c8febddfbd407282a733b88275f49fa9b73e7582f8a8d344573b9f5c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_sounds_02:2 -> audio/generated/fr-FR/dialogues/c2c4d4c1f632c8eb71637c4f3b63fa5e2cef7684593be1b84dbd0fd910882291.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5ea96d3c-edb0-5cb1-9e16-f7f0f1dbc766', 1)
  AND voice_key = 'character:julien:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_sounds_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '956a3e5267eb22507c83ec5efedd896765aefdc811cb99f815aa604b8df62e82'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e38dcb33-a47c-5eca-986b-98835ce1b3a1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5ea96d3c-edb0-5cb1-9e16-f7f0f1dbc766', 1), '956a3e5267eb22507c83ec5efedd896765aefdc811cb99f815aa604b8df62e82',
  'character:julien:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/c2c4d4c1f632c8eb71637c4f3b63fa5e2cef7684593be1b84dbd0fd910882291.mp3', 1280, '2026-09-14 08:52:18.979892', '52fa43c611e077ea495918c286fa6f8a9ba509f2badcc1d3baf42f52a800f4f5', 'validated', '{"audio_key":"c2c4d4c1f632c8eb71637c4f3b63fa5e2cef7684593be1b84dbd0fd910882291","entity_key":"d_first_sounds_02:2","voice_id":"xO2Q4ARMEd4BI2sGDH9c","voice_name":"Edouard - Confident and Polished","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"52fa43c611e077ea495918c286fa6f8a9ba509f2badcc1d3baf42f52a800f4f5","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/c2c4d4c1f632c8eb71637c4f3b63fa5e2cef7684593be1b84dbd0fd910882291.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_how_are_you_01:1 -> audio/generated/fr-FR/dialogues/c9640fe0dfcde1982a6dda2f3e6d2a31fc7dba0c46d68d0d2e8facc78cbea7ba.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('eea2b042-058f-50b6-93c5-3380333b0b4a', 1)
  AND voice_key = 'character:inès:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_how_are_you_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8e2b07bbf777efc2390ea009f0b6463230f5bc80fa474a3ee3a144b85b7549da'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e632b27d-741d-5c06-a905-1827223182af', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('eea2b042-058f-50b6-93c5-3380333b0b4a', 1), '8e2b07bbf777efc2390ea009f0b6463230f5bc80fa474a3ee3a144b85b7549da',
  'character:inès:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/c9640fe0dfcde1982a6dda2f3e6d2a31fc7dba0c46d68d0d2e8facc78cbea7ba.mp3', 1384, '2026-09-14 08:52:19.083125', '7b6adecb7052ee8a3f2f62ebcd7f893d6aa38b74152061c75c8551e258d50a39', 'validated', '{"audio_key":"c9640fe0dfcde1982a6dda2f3e6d2a31fc7dba0c46d68d0d2e8facc78cbea7ba","entity_key":"d_how_are_you_01:1","voice_id":"mNu8EQcIlFZdOJs7yfhe","voice_name":"Julia - Warm French Narrator","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7b6adecb7052ee8a3f2f62ebcd7f893d6aa38b74152061c75c8551e258d50a39","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/c9640fe0dfcde1982a6dda2f3e6d2a31fc7dba0c46d68d0d2e8facc78cbea7ba.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_sounds_02:4 -> audio/generated/fr-FR/dialogues/cd6b4f2eb5a1eada0b3bb2c2979e11d6668c9f417f18a5858b4a901d0c1bb32d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f628b142-b2e8-5ffd-8a8b-8e8b2f2ae559', 1)
  AND voice_key = 'character:julien:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_sounds_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '823cd842fe5f42bf9c8c2482dbb36698ecb2a54abc8a93bf173355c20029c744'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fd53f83b-523b-5274-bbe5-a0f52c3f9e75', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f628b142-b2e8-5ffd-8a8b-8e8b2f2ae559', 1), '823cd842fe5f42bf9c8c2482dbb36698ecb2a54abc8a93bf173355c20029c744',
  'character:julien:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/cd6b4f2eb5a1eada0b3bb2c2979e11d6668c9f417f18a5858b4a901d0c1bb32d.mp3', 731, '2026-09-14 08:52:19.898655', '6ab4357299c55108e4ce4d4b9ecef8bee31bbfc4607be2f6f3d4782b978371dd', 'validated', '{"audio_key":"cd6b4f2eb5a1eada0b3bb2c2979e11d6668c9f417f18a5858b4a901d0c1bb32d","entity_key":"d_first_sounds_02:4","voice_id":"xO2Q4ARMEd4BI2sGDH9c","voice_name":"Edouard - Confident and Polished","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"6ab4357299c55108e4ce4d4b9ecef8bee31bbfc4607be2f6f3d4782b978371dd","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/cd6b4f2eb5a1eada0b3bb2c2979e11d6668c9f417f18a5858b4a901d0c1bb32d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_sounds_01:4 -> audio/generated/fr-FR/dialogues/cf9ee0e22c7a3e10239e2d45e1f1e9c10c37d4297247bce272a3467d9ad4c6f6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b059d1f6-c448-5ed0-bb85-d0507c092835', 1)
  AND voice_key = 'character:nicolas:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_sounds_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f60ad52fb226e19df86623e9984d7d601ff77c218837ab767e204e58a9170bba'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cb3e6abe-bc4d-5d11-9529-3d32870c30b0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b059d1f6-c448-5ed0-bb85-d0507c092835', 1), 'f60ad52fb226e19df86623e9984d7d601ff77c218837ab767e204e58a9170bba',
  'character:nicolas:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/cf9ee0e22c7a3e10239e2d45e1f1e9c10c37d4297247bce272a3467d9ad4c6f6.mp3', 1071, '2026-09-14 08:52:20.053796', 'f822b649eb057cc74839d9edf3fd7ed7f032d3962be6f227e4b31f44877b8b86', 'validated', '{"audio_key":"cf9ee0e22c7a3e10239e2d45e1f1e9c10c37d4297247bce272a3467d9ad4c6f6","entity_key":"d_first_sounds_01:4","voice_id":"7Pm7442WzqlfkW9vjmO9","voice_name":"Maxime - Dynamic and Natural","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f822b649eb057cc74839d9edf3fd7ed7f032d3962be6f227e4b31f44877b8b86","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/cf9ee0e22c7a3e10239e2d45e1f1e9c10c37d4297247bce272a3467d9ad4c6f6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_sounds_02:3 -> audio/generated/fr-FR/dialogues/d21ecb3598fcbfb79c685e5625900429814c682c81b86df3828b362008b3ceae.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a3e0cb6b-9329-5219-bed2-08122fe40215', 1)
  AND voice_key = 'character:léa:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_sounds_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2949741a4b7d698ef81e1c47f1284ad0e2e9bb066c2e83bf788604043f82650a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7f00202b-e903-563c-b334-4a13d85b209b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a3e0cb6b-9329-5219-bed2-08122fe40215', 1), '2949741a4b7d698ef81e1c47f1284ad0e2e9bb066c2e83bf788604043f82650a',
  'character:léa:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/d21ecb3598fcbfb79c685e5625900429814c682c81b86df3828b362008b3ceae.mp3', 966, '2026-09-14 08:52:20.843452', 'ac3d78df8ca0412b9a1bc9e2a0ccd5cd90dba3acd030b5c2ae713a3686bec0b7', 'validated', '{"audio_key":"d21ecb3598fcbfb79c685e5625900429814c682c81b86df3828b362008b3ceae","entity_key":"d_first_sounds_02:3","voice_id":"fBpCO0Kf0krKLYGOu65w","voice_name":"Émilie - Customer service advisor","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"ac3d78df8ca0412b9a1bc9e2a0ccd5cd90dba3acd030b5c2ae713a3686bec0b7","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/d21ecb3598fcbfb79c685e5625900429814c682c81b86df3828b362008b3ceae.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_conversation_02:4 -> audio/generated/fr-FR/dialogues/d36a50a3a97acb930543bc2ada2d2eb5375f8aa844fd9bd4208ef1cb57e585a3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d317b082-657a-500a-96d7-9af57c555121', 1)
  AND voice_key = 'character:julien:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_conversation_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6407cedd8d9758887022e4e97ff4d5eadc7aec96092e1438a143d69aba6179e5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7a024281-ded6-5cd5-b5bb-89923e0b2a89', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d317b082-657a-500a-96d7-9af57c555121', 1), '6407cedd8d9758887022e4e97ff4d5eadc7aec96092e1438a143d69aba6179e5',
  'character:julien:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/d36a50a3a97acb930543bc2ada2d2eb5375f8aa844fd9bd4208ef1cb57e585a3.mp3', 1253, '2026-09-14 08:52:21.030382', '2fb629ddf86c8c7b0f447db85bf117947f904deab8b0f16422a7902ebdc7aac0', 'validated', '{"audio_key":"d36a50a3a97acb930543bc2ada2d2eb5375f8aa844fd9bd4208ef1cb57e585a3","entity_key":"d_first_conversation_02:4","voice_id":"xO2Q4ARMEd4BI2sGDH9c","voice_name":"Edouard - Confident and Polished","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"2fb629ddf86c8c7b0f447db85bf117947f904deab8b0f16422a7902ebdc7aac0","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/d36a50a3a97acb930543bc2ada2d2eb5375f8aa844fd9bd4208ef1cb57e585a3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_conversation_02:1 -> audio/generated/fr-FR/dialogues/d44b003112923998ae68bf21a8e1f45b63216c13c7b51e09a6b96650eb5e9356.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0d5a1708-94ef-52e3-ab42-fe867aec22a6', 1)
  AND voice_key = 'character:nicolas:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_conversation_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '41250c92268d79eb7c48347c589aa4a26112a38ecfad55c2f9c3f11e564cb63c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dd921549-2ce7-5814-8488-9bce554cc7e9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0d5a1708-94ef-52e3-ab42-fe867aec22a6', 1), '41250c92268d79eb7c48347c589aa4a26112a38ecfad55c2f9c3f11e564cb63c',
  'character:nicolas:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/d44b003112923998ae68bf21a8e1f45b63216c13c7b51e09a6b96650eb5e9356.mp3', 1280, '2026-09-14 08:52:21.816361', '9f819f3b4c29d6bdb008e90b54daac735db5bb51c8b568b6970a4b34c2ef0c82', 'validated', '{"audio_key":"d44b003112923998ae68bf21a8e1f45b63216c13c7b51e09a6b96650eb5e9356","entity_key":"d_first_conversation_02:1","voice_id":"7Pm7442WzqlfkW9vjmO9","voice_name":"Maxime - Dynamic and Natural","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9f819f3b4c29d6bdb008e90b54daac735db5bb51c8b568b6970a4b34c2ef0c82","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/d44b003112923998ae68bf21a8e1f45b63216c13c7b51e09a6b96650eb5e9356.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_alphabet_accents_01:1 -> audio/generated/fr-FR/dialogues/d4d004d45143e5aacfad7b2701336a697920716ae303043fb80d9544694b12bf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('dc9861e6-54ca-5fba-a9b7-11ebbdb0f2e8', 1)
  AND voice_key = 'character:inès:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_alphabet_accents_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a29a567153001bf5e87429cfd2da147232d681130455d3ea1e5812f2f7becb9e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('13490ce9-1b7a-5760-aeb3-cef646c01f21', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('dc9861e6-54ca-5fba-a9b7-11ebbdb0f2e8', 1), 'a29a567153001bf5e87429cfd2da147232d681130455d3ea1e5812f2f7becb9e',
  'character:inès:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/d4d004d45143e5aacfad7b2701336a697920716ae303043fb80d9544694b12bf.mp3', 966, '2026-09-14 08:52:21.947355', '4cb9a975b67bd3409a140a1003dfa78934b130962433f1d24db5a1826ac23d54', 'validated', '{"audio_key":"d4d004d45143e5aacfad7b2701336a697920716ae303043fb80d9544694b12bf","entity_key":"d_alphabet_accents_01:1","voice_id":"mNu8EQcIlFZdOJs7yfhe","voice_name":"Julia - Warm French Narrator","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4cb9a975b67bd3409a140a1003dfa78934b130962433f1d24db5a1826ac23d54","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/d4d004d45143e5aacfad7b2701336a697920716ae303043fb80d9544694b12bf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_my_name_02:4 -> audio/generated/fr-FR/dialogues/d535a672aef378296cea02972a649286311e1d27643e32ebaceb47b864e74edb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('27993cb0-0435-5b76-b2a4-33cf2a715275', 1)
  AND voice_key = 'character:julien:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_my_name_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2ff71ba96b62261010ca0ba340cf25e8ee88f501ed8fa42f270d83cfdd172f32'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b384fade-5f12-5277-849c-cdb1df42a115', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('27993cb0-0435-5b76-b2a4-33cf2a715275', 1), '2ff71ba96b62261010ca0ba340cf25e8ee88f501ed8fa42f270d83cfdd172f32',
  'character:julien:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/d535a672aef378296cea02972a649286311e1d27643e32ebaceb47b864e74edb.mp3', 1201, '2026-09-14 08:52:22.740210', 'ce1bcca2c4dc55c8c99a20986c877b84beca82095d098a48893f5b55a543bfbe', 'validated', '{"audio_key":"d535a672aef378296cea02972a649286311e1d27643e32ebaceb47b864e74edb","entity_key":"d_my_name_02:4","voice_id":"xO2Q4ARMEd4BI2sGDH9c","voice_name":"Edouard - Confident and Polished","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"ce1bcca2c4dc55c8c99a20986c877b84beca82095d098a48893f5b55a543bfbe","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/d535a672aef378296cea02972a649286311e1d27643e32ebaceb47b864e74edb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_how_are_you_01:4 -> audio/generated/fr-FR/dialogues/d62cef42b4f08a505ff7158645743c2756515bda60ed58c467337e0690ab0dc6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('90146909-1b14-544c-b66c-9d7b0eeae346', 1)
  AND voice_key = 'character:thomas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_how_are_you_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5f9a25029500f4df9bb5f9156517eb893ff737d5c721fa4ffcbd69b1ab78238b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('45fc265d-c333-556b-b70f-8e34b4c69ce3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('90146909-1b14-544c-b66c-9d7b0eeae346', 1), '5f9a25029500f4df9bb5f9156517eb893ff737d5c721fa4ffcbd69b1ab78238b',
  'character:thomas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/d62cef42b4f08a505ff7158645743c2756515bda60ed58c467337e0690ab0dc6.mp3', 966, '2026-09-14 08:52:22.902597', '10530ad0aa31dc185a0d4c8536a549a70df51069753048f57361f98d743b7a89', 'validated', '{"audio_key":"d62cef42b4f08a505ff7158645743c2756515bda60ed58c467337e0690ab0dc6","entity_key":"d_how_are_you_01:4","voice_id":"1WQXvbtj0rUYuB5yhY3N","voice_name":"Skel - Calm and Professional","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"10530ad0aa31dc185a0d4c8536a549a70df51069753048f57361f98d743b7a89","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/d62cef42b4f08a505ff7158645743c2756515bda60ed58c467337e0690ab0dc6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_my_name_01:2 -> audio/generated/fr-FR/dialogues/d757ee26dd0c2f4f3cad214deed6baaa9b1cd348986d8b9c0477a1b21f78a8f0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('12fbb516-2321-50db-8732-19a23db64f65', 1)
  AND voice_key = 'character:nicolas:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_my_name_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9290841786733458d977ea40cdf1d42b4003011162dc1bdec5ff9816f40b39ce'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ff7f3d43-4903-57c4-b3a8-e537e1e2d200', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('12fbb516-2321-50db-8732-19a23db64f65', 1), '9290841786733458d977ea40cdf1d42b4003011162dc1bdec5ff9816f40b39ce',
  'character:nicolas:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/d757ee26dd0c2f4f3cad214deed6baaa9b1cd348986d8b9c0477a1b21f78a8f0.mp3', 1384, '2026-09-14 08:52:23.723638', 'a0b9650291e650489e4919b088219f35220afc7e5469ddabf96870d82f093aa6', 'validated', '{"audio_key":"d757ee26dd0c2f4f3cad214deed6baaa9b1cd348986d8b9c0477a1b21f78a8f0","entity_key":"d_my_name_01:2","voice_id":"7Pm7442WzqlfkW9vjmO9","voice_name":"Maxime - Dynamic and Natural","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a0b9650291e650489e4919b088219f35220afc7e5469ddabf96870d82f093aa6","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/d757ee26dd0c2f4f3cad214deed6baaa9b1cd348986d8b9c0477a1b21f78a8f0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_alphabet_accents_01:2 -> audio/generated/fr-FR/dialogues/d97b03ba37f52b7161b36072d0e783b46e3f1b8bec753731c2a4cd72c7a5f64b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9b0f0527-1001-525e-ae0e-a6b0c23be4c8', 1)
  AND voice_key = 'character:julien:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_alphabet_accents_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b0be78de2cac341c1c687ede4fd6833ef3c341a4eb2bd04bdfc4a582ecc27915'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bd559b6a-abac-5c91-8cc1-4aceefb1c18e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9b0f0527-1001-525e-ae0e-a6b0c23be4c8', 1), 'b0be78de2cac341c1c687ede4fd6833ef3c341a4eb2bd04bdfc4a582ecc27915',
  'character:julien:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/d97b03ba37f52b7161b36072d0e783b46e3f1b8bec753731c2a4cd72c7a5f64b.mp3', 1018, '2026-09-14 08:52:23.833270', '8d8ef79fcb74daef75065fb0b9de0cd69cd325b89b32b7f501911a439690cd7b', 'validated', '{"audio_key":"d97b03ba37f52b7161b36072d0e783b46e3f1b8bec753731c2a4cd72c7a5f64b","entity_key":"d_alphabet_accents_01:2","voice_id":"xO2Q4ARMEd4BI2sGDH9c","voice_name":"Edouard - Confident and Polished","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"8d8ef79fcb74daef75065fb0b9de0cd69cd325b89b32b7f501911a439690cd7b","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/d97b03ba37f52b7161b36072d0e783b46e3f1b8bec753731c2a4cd72c7a5f64b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_numbers_0_10_01:3 -> audio/generated/fr-FR/dialogues/dcc4526d1e062c9d50745fff19cb2611d6a4b272f5cbdc20a3a2a20f0e0e433d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('93f4e206-be69-5e67-961b-ce5e3240ab2e', 1)
  AND voice_key = 'character:camille:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_numbers_0_10_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '22356dd2a77d6654ce6e7cd2c4281448a9360f9b575d5b06904c9869335b6ba5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c9bcf5de-004b-5ca9-a93c-db2269117bcb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('93f4e206-be69-5e67-961b-ce5e3240ab2e', 1), '22356dd2a77d6654ce6e7cd2c4281448a9360f9b575d5b06904c9869335b6ba5',
  'character:camille:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/dcc4526d1e062c9d50745fff19cb2611d6a4b272f5cbdc20a3a2a20f0e0e433d.mp3', 966, '2026-09-14 08:52:24.721070', 'dd3117778b1f68276d60ab74a2cf87a3fff1b14b0805840f1eafa99ac9ec9483', 'validated', '{"audio_key":"dcc4526d1e062c9d50745fff19cb2611d6a4b272f5cbdc20a3a2a20f0e0e433d","entity_key":"d_numbers_0_10_01:3","voice_id":"lvQdCgwZfBuOzxyV5pxu","voice_name":"Audia - Customer Support","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"dd3117778b1f68276d60ab74a2cf87a3fff1b14b0805840f1eafa99ac9ec9483","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/dcc4526d1e062c9d50745fff19cb2611d6a4b272f5cbdc20a3a2a20f0e0e433d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_my_name_02:1 -> audio/generated/fr-FR/dialogues/e3a2c23c8a88fb029367be011ddf7282f7adfcd6c38683a4f9b3472336e5beba.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('53f57266-43e2-5b3c-9453-491773292be7', 1)
  AND voice_key = 'character:claire:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_my_name_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ae64bc6621df37558ac0f5c5a0276204c26c20d2d4e9082630fcfa2200469bcb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ea9f018b-57f4-5582-a964-141a61f061cc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('53f57266-43e2-5b3c-9453-491773292be7', 1), 'ae64bc6621df37558ac0f5c5a0276204c26c20d2d4e9082630fcfa2200469bcb',
  'character:claire:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/e3a2c23c8a88fb029367be011ddf7282f7adfcd6c38683a4f9b3472336e5beba.mp3', 1671, '2026-09-14 08:52:24.871166', '60583234a8be8071cf60a4fc5f8096ee0a047cb0cb786613002e37903465722b', 'validated', '{"audio_key":"e3a2c23c8a88fb029367be011ddf7282f7adfcd6c38683a4f9b3472336e5beba","entity_key":"d_my_name_02:1","voice_id":"yatuMX0k4Dh41R64sbGj","voice_name":"Cécile - Interactive Customer Support","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"60583234a8be8071cf60a4fc5f8096ee0a047cb0cb786613002e37903465722b","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/e3a2c23c8a88fb029367be011ddf7282f7adfcd6c38683a4f9b3472336e5beba.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_how_are_you_01:3 -> audio/generated/fr-FR/dialogues/e692995317a717ab79dcac14337a33d6880e283423fd6d6ef992ded04d024eaa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('120d8cae-7451-55e2-af47-7a5ac8719387', 1)
  AND voice_key = 'character:inès:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_how_are_you_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e7dda19487bf6e4413a713b26cd3573f70838341a5950d3ed73b6c2230840ba0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b7650ad1-f5bf-504a-9fce-158b01458aa4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('120d8cae-7451-55e2-af47-7a5ac8719387', 1), 'e7dda19487bf6e4413a713b26cd3573f70838341a5950d3ed73b6c2230840ba0',
  'character:inès:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/e692995317a717ab79dcac14337a33d6880e283423fd6d6ef992ded04d024eaa.mp3', 862, '2026-09-14 08:52:25.669999', 'd88baa09260b8dd4ae4aa2eaf0d6dcad913125a97212e88a84efa6b5924ef60c', 'validated', '{"audio_key":"e692995317a717ab79dcac14337a33d6880e283423fd6d6ef992ded04d024eaa","entity_key":"d_how_are_you_01:3","voice_id":"mNu8EQcIlFZdOJs7yfhe","voice_name":"Julia - Warm French Narrator","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d88baa09260b8dd4ae4aa2eaf0d6dcad913125a97212e88a84efa6b5924ef60c","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/e692995317a717ab79dcac14337a33d6880e283423fd6d6ef992ded04d024eaa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_numbers_0_10_01:4 -> audio/generated/fr-FR/dialogues/e7ae2446bf78641b976f2dd101729fa57d315fc02352acec04fa28b0ab3f4943.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d8fb95a7-4658-52ea-ac71-bf593f833d03', 1)
  AND voice_key = 'character:hugo:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_numbers_0_10_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '056e0da8ecef95e878f1fe8e3ffa8a5d884a5e818f6a9a0d0265491cc9c507a8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a711a49f-eea4-5f60-9f9b-78f91705a9fc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d8fb95a7-4658-52ea-ac71-bf593f833d03', 1), '056e0da8ecef95e878f1fe8e3ffa8a5d884a5e818f6a9a0d0265491cc9c507a8',
  'character:hugo:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/e7ae2446bf78641b976f2dd101729fa57d315fc02352acec04fa28b0ab3f4943.mp3', 731, '2026-09-14 08:52:25.795250', '22003c9d14a2d45d0493f760c09f80a49b09bc1c50e61f62560e5f7b11fa998e', 'validated', '{"audio_key":"e7ae2446bf78641b976f2dd101729fa57d315fc02352acec04fa28b0ab3f4943","entity_key":"d_numbers_0_10_01:4","voice_id":"FRY6vOtGqwamgAf39SwP","voice_name":"Yanis","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"22003c9d14a2d45d0493f760c09f80a49b09bc1c50e61f62560e5f7b11fa998e","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/e7ae2446bf78641b976f2dd101729fa57d315fc02352acec04fa28b0ab3f4943.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_sounds_01:1 -> audio/generated/fr-FR/dialogues/e810e2e6dd1ec869a92c8f219f56246a2cf618fc3f4f8efe8dac80592a00362c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9c935c55-5109-5bb3-b208-e5f48e9c3881', 1)
  AND voice_key = 'character:camille:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_sounds_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e40123a68f5b659db63d23e78978ecfcb75e3bf77fd6593b8820b2c0e3189a7a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1e9446d2-5e43-554a-b264-ffbaed6234e6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9c935c55-5109-5bb3-b208-e5f48e9c3881', 1), 'e40123a68f5b659db63d23e78978ecfcb75e3bf77fd6593b8820b2c0e3189a7a',
  'character:camille:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/e810e2e6dd1ec869a92c8f219f56246a2cf618fc3f4f8efe8dac80592a00362c.mp3', 1384, '2026-09-14 08:52:26.655165', '6eedb93be8badf1e6f0410c57fd1b7f9ba8779b27f15cc0f0de05e4c0154e1cb', 'validated', '{"audio_key":"e810e2e6dd1ec869a92c8f219f56246a2cf618fc3f4f8efe8dac80592a00362c","entity_key":"d_first_sounds_01:1","voice_id":"lvQdCgwZfBuOzxyV5pxu","voice_name":"Audia - Customer Support","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6eedb93be8badf1e6f0410c57fd1b7f9ba8779b27f15cc0f0de05e4c0154e1cb","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/e810e2e6dd1ec869a92c8f219f56246a2cf618fc3f4f8efe8dac80592a00362c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_greetings_01:2 -> audio/generated/fr-FR/dialogues/e95485d1af29fdfa61a7d9bea6c3452597f911c8fde91ace378fc10ae075e944.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ee45b643-b884-5955-ae6c-dfb0f4f365a4', 1)
  AND voice_key = 'character:thomas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_greetings_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bc7444869484dd1ed34bfc4465724b887fecf604fcad0d0eaf40d3746d0bfeb7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e67be5b3-7826-54a3-9502-f67b9e2573ec', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ee45b643-b884-5955-ae6c-dfb0f4f365a4', 1), 'bc7444869484dd1ed34bfc4465724b887fecf604fcad0d0eaf40d3746d0bfeb7',
  'character:thomas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/e95485d1af29fdfa61a7d9bea6c3452597f911c8fde91ace378fc10ae075e944.mp3', 1097, '2026-09-14 08:52:26.721584', 'a16824c9b12b051363f8d3328f007a853948ba493f36ea61bbd6befa0734d6ec', 'validated', '{"audio_key":"e95485d1af29fdfa61a7d9bea6c3452597f911c8fde91ace378fc10ae075e944","entity_key":"d_first_greetings_01:2","voice_id":"1WQXvbtj0rUYuB5yhY3N","voice_name":"Skel - Calm and Professional","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a16824c9b12b051363f8d3328f007a853948ba493f36ea61bbd6befa0734d6ec","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/e95485d1af29fdfa61a7d9bea6c3452597f911c8fde91ace378fc10ae075e944.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_alphabet_accents_02:2 -> audio/generated/fr-FR/dialogues/ec06dcbd4ceb6d8554cb74f9b2b1c4fee42e88cc17e327b21358c637816986f8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0a74cd32-3292-58ad-9068-1a72ddda8230', 1)
  AND voice_key = 'character:thomas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_alphabet_accents_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'acc108407b2303e91aa9f558fa285507fa2b936229b6e3d7a3990c2b8ffdac0c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6d0bac36-47e7-509a-a7c2-618bad6a0c60', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0a74cd32-3292-58ad-9068-1a72ddda8230', 1), 'acc108407b2303e91aa9f558fa285507fa2b936229b6e3d7a3990c2b8ffdac0c',
  'character:thomas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/ec06dcbd4ceb6d8554cb74f9b2b1c4fee42e88cc17e327b21358c637816986f8.mp3', 1149, '2026-09-14 08:52:27.622254', 'a4bc799e0284f7a96fec0e8b79316ff87204c3668112e67a764d490196d11c16', 'validated', '{"audio_key":"ec06dcbd4ceb6d8554cb74f9b2b1c4fee42e88cc17e327b21358c637816986f8","entity_key":"d_alphabet_accents_02:2","voice_id":"1WQXvbtj0rUYuB5yhY3N","voice_name":"Skel - Calm and Professional","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a4bc799e0284f7a96fec0e8b79316ff87204c3668112e67a764d490196d11c16","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/ec06dcbd4ceb6d8554cb74f9b2b1c4fee42e88cc17e327b21358c637816986f8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_polite_words_02:2 -> audio/generated/fr-FR/dialogues/ee97c6606ee28630580c32f30c614ed2871dc63f800fbf6c451f62173851fc69.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('eb77c1aa-218d-5148-86e3-8863eb0a114b', 1)
  AND voice_key = 'character:nicolas:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_polite_words_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '301a74b108e6bc2504c20be01ef6db601089e1e3671451e1f755d669780885ea'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('83082098-99f9-5e49-9931-dd7e29548c0f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('eb77c1aa-218d-5148-86e3-8863eb0a114b', 1), '301a74b108e6bc2504c20be01ef6db601089e1e3671451e1f755d669780885ea',
  'character:nicolas:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/ee97c6606ee28630580c32f30c614ed2871dc63f800fbf6c451f62173851fc69.mp3', 653, '2026-09-14 08:52:27.632920', '4c0b7886893e6303814e6eb504f30cdc9486c2c0753a42ca5beff3779774925f', 'validated', '{"audio_key":"ee97c6606ee28630580c32f30c614ed2871dc63f800fbf6c451f62173851fc69","entity_key":"d_polite_words_02:2","voice_id":"7Pm7442WzqlfkW9vjmO9","voice_name":"Maxime - Dynamic and Natural","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4c0b7886893e6303814e6eb504f30cdc9486c2c0753a42ca5beff3779774925f","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/ee97c6606ee28630580c32f30c614ed2871dc63f800fbf6c451f62173851fc69.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_numbers_0_10_02:2 -> audio/generated/fr-FR/dialogues/f204da5d12da7d151de7c56b0ac287c8bbb074d0c5fe3d12bacf4e69f58c3973.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('082f6a17-12e4-5f68-b4f1-e8287c0ed6c9', 1)
  AND voice_key = 'character:nicolas:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_numbers_0_10_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e6027cd8962a07662890a2082a7ed89af996c7c6c80325a34ee0fd8ab295178f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('52b387a6-a59b-5149-9ff9-12bddf4811e4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('082f6a17-12e4-5f68-b4f1-e8287c0ed6c9', 1), 'e6027cd8962a07662890a2082a7ed89af996c7c6c80325a34ee0fd8ab295178f',
  'character:nicolas:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/f204da5d12da7d151de7c56b0ac287c8bbb074d0c5fe3d12bacf4e69f58c3973.mp3', 1280, '2026-09-14 08:52:28.578736', '7aecf22d2194a35454f625c84675f0402691c29423b37f198b9120634f8d86b0', 'validated', '{"audio_key":"f204da5d12da7d151de7c56b0ac287c8bbb074d0c5fe3d12bacf4e69f58c3973","entity_key":"d_numbers_0_10_02:2","voice_id":"7Pm7442WzqlfkW9vjmO9","voice_name":"Maxime - Dynamic and Natural","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7aecf22d2194a35454f625c84675f0402691c29423b37f198b9120634f8d86b0","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/dialogues/f204da5d12da7d151de7c56b0ac287c8bbb074d0c5fe3d12bacf4e69f58c3973.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_polite_words_02:3 -> audio/generated/fr-FR/dialogues/f29ab61d07a8b45c58df68abe8beb4bdf037315ac6ebe9641df83f799ba79237.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a5f057bb-6802-5f30-9aab-e29186a73604', 1)
  AND voice_key = 'character:claire:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_polite_words_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5460d636bfaa36579836e748df7af715cce8c75b6a68afb062d0835f7e7374ec'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2de65ceb-d5e6-57f7-b101-209f65a48ba0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a5f057bb-6802-5f30-9aab-e29186a73604', 1), '5460d636bfaa36579836e748df7af715cce8c75b6a68afb062d0835f7e7374ec',
  'character:claire:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/f29ab61d07a8b45c58df68abe8beb4bdf037315ac6ebe9641df83f799ba79237.mp3', 783, '2026-09-14 08:52:28.548863', '1df64fdffb9621d5b4f165bb58e73fcb12d497a59ad4905a38aa6fc3c1eea83c', 'validated', '{"audio_key":"f29ab61d07a8b45c58df68abe8beb4bdf037315ac6ebe9641df83f799ba79237","entity_key":"d_polite_words_02:3","voice_id":"yatuMX0k4Dh41R64sbGj","voice_name":"Cécile - Interactive Customer Support","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"1df64fdffb9621d5b4f165bb58e73fcb12d497a59ad4905a38aa6fc3c1eea83c","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/fr-FR/dialogues/f29ab61d07a8b45c58df68abe8beb4bdf037315ac6ebe9641df83f799ba79237.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_greetings_02:2 -> audio/generated/fr-FR/dialogues/f6a29fc4728b4e9d97b08f8969c486a9ba5331235495fa8ded1a054be1bd3740.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('85c36485-135a-50e5-89fa-3d0a751dc6ee', 1)
  AND voice_key = 'character:hugo:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_greetings_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '212febfe999494533c29f6bf73cd2ed8d1343f023b8e6a04a3421be28da29b89'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6177ee87-3eee-5176-b57b-5b66ec893188', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('85c36485-135a-50e5-89fa-3d0a751dc6ee', 1), '212febfe999494533c29f6bf73cd2ed8d1343f023b8e6a04a3421be28da29b89',
  'character:hugo:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/f6a29fc4728b4e9d97b08f8969c486a9ba5331235495fa8ded1a054be1bd3740.mp3', 966, '2026-09-14 08:52:29.480645', '0cc98a681e330c0292c43a56d6a80aac597175e65c04a5a25871c3b19cde20f5', 'validated', '{"audio_key":"f6a29fc4728b4e9d97b08f8969c486a9ba5331235495fa8ded1a054be1bd3740","entity_key":"d_first_greetings_02:2","voice_id":"FRY6vOtGqwamgAf39SwP","voice_name":"Yanis","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0cc98a681e330c0292c43a56d6a80aac597175e65c04a5a25871c3b19cde20f5","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/fr-FR/dialogues/f6a29fc4728b4e9d97b08f8969c486a9ba5331235495fa8ded1a054be1bd3740.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_objects_02:4 -> audio/generated/fr-FR/dialogues/fde30656f54a1f221c11b72f4c9367b46d5d752f0baba6c85a3e2c9ae45c9397.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3c94c7c6-9283-54d7-8920-f0bafc95bf6b', 1)
  AND voice_key = 'character:thomas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_objects_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5063c66614f6702748e95c893b8634cb989f1cbaf98684c453aed827a34ecdeb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8da0e887-8c74-588f-a7b8-8955b11d9b91', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3c94c7c6-9283-54d7-8920-f0bafc95bf6b', 1), '5063c66614f6702748e95c893b8634cb989f1cbaf98684c453aed827a34ecdeb',
  'character:thomas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/dialogues/fde30656f54a1f221c11b72f4c9367b46d5d752f0baba6c85a3e2c9ae45c9397.mp3', 1280, '2026-09-14 08:52:29.563534', '1f58ccd84e848578dec321dc61419c4085ec8bf81b2d41328ac8d812ca32772b', 'validated', '{"audio_key":"fde30656f54a1f221c11b72f4c9367b46d5d752f0baba6c85a3e2c9ae45c9397","entity_key":"d_first_objects_02:4","voice_id":"1WQXvbtj0rUYuB5yhY3N","voice_name":"Skel - Calm and Professional","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"fr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1f58ccd84e848578dec321dc61419c4085ec8bf81b2d41328ac8d812ca32772b","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/fr-FR/dialogues/fde30656f54a1f221c11b72f4c9367b46d5d752f0baba6c85a3e2c9ae45c9397.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_greetings_02 -> audio/generated/fr-FR/lexical/0b49d922c27569ef683aaaa5ad7a5f87f0afce91bdf3a6e2e2023857f6d39059.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a8dc1177-ab99-57dc-a2d2-38bef5131221', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_greetings_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ec9c3a34e791bda21bbcb69ea0eb875857497e0d48c75771b3d1adb5073ce791'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('95646a05-ea3e-5e6c-bc5f-aba37db33de0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a8dc1177-ab99-57dc-a2d2-38bef5131221', 1), 'ec9c3a34e791bda21bbcb69ea0eb875857497e0d48c75771b3d1adb5073ce791',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/0b49d922c27569ef683aaaa5ad7a5f87f0afce91bdf3a6e2e2023857f6d39059.mp3', 835, '2026-09-14 08:52:30.392258', '2c64d42225e5cc27ca8962b0de13c8d46b17c244fa4ca3d53e9533d4277da814', 'validated', '{"audio_key":"0b49d922c27569ef683aaaa5ad7a5f87f0afce91bdf3a6e2e2023857f6d39059","entity_key":"lx_first_greetings_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2c64d42225e5cc27ca8962b0de13c8d46b17c244fa4ca3d53e9533d4277da814","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/0b49d922c27569ef683aaaa5ad7a5f87f0afce91bdf3a6e2e2023857f6d39059.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_greetings_02 -> audio/generated/fr-FR/lexical/0b49d922c27569ef683aaaa5ad7a5f87f0afce91bdf3a6e2e2023857f6d39059.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d3f3a3f9-072d-5d9c-a16b-acdca4fb629a', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_greetings_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ec9c3a34e791bda21bbcb69ea0eb875857497e0d48c75771b3d1adb5073ce791'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d85f374c-264b-57f4-9d15-d5d7340c2f64', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d3f3a3f9-072d-5d9c-a16b-acdca4fb629a', 1), 'ec9c3a34e791bda21bbcb69ea0eb875857497e0d48c75771b3d1adb5073ce791',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/0b49d922c27569ef683aaaa5ad7a5f87f0afce91bdf3a6e2e2023857f6d39059.mp3', 835, '2026-09-14 08:52:30.392258', '2c64d42225e5cc27ca8962b0de13c8d46b17c244fa4ca3d53e9533d4277da814', 'validated', '{"audio_key":"0b49d922c27569ef683aaaa5ad7a5f87f0afce91bdf3a6e2e2023857f6d39059","entity_key":"wf_first_greetings_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2c64d42225e5cc27ca8962b0de13c8d46b17c244fa4ca3d53e9533d4277da814","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/0b49d922c27569ef683aaaa5ad7a5f87f0afce91bdf3a6e2e2023857f6d39059.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_greetings_03 -> audio/generated/fr-FR/lexical/0e0419ab1fb45fc6975b4dc4a0187e10fd26e8fdc05851720bd5cb3150959516.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ed9e13da-7ba7-5389-9cc7-39a64f502bc7', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_greetings_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ba10d93b0145b965543427ce81d8d6ee6a6269df7520d5082400996145ee4d2b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d82d3246-9ea5-53e1-8e9c-be3b9ed51fad', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ed9e13da-7ba7-5389-9cc7-39a64f502bc7', 1), 'ba10d93b0145b965543427ce81d8d6ee6a6269df7520d5082400996145ee4d2b',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/0e0419ab1fb45fc6975b4dc4a0187e10fd26e8fdc05851720bd5cb3150959516.mp3', 1018, '2026-09-14 08:52:30.503143', '7d15e5bc83f668f2855a6c9d6c9e6917eccbb7d90ea1801a57779e97a92fde62', 'validated', '{"audio_key":"0e0419ab1fb45fc6975b4dc4a0187e10fd26e8fdc05851720bd5cb3150959516","entity_key":"lx_first_greetings_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7d15e5bc83f668f2855a6c9d6c9e6917eccbb7d90ea1801a57779e97a92fde62","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/0e0419ab1fb45fc6975b4dc4a0187e10fd26e8fdc05851720bd5cb3150959516.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_greetings_03 -> audio/generated/fr-FR/lexical/0e0419ab1fb45fc6975b4dc4a0187e10fd26e8fdc05851720bd5cb3150959516.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6ed34b5c-3ea2-504c-94b2-02c7c26ca801', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_greetings_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ba10d93b0145b965543427ce81d8d6ee6a6269df7520d5082400996145ee4d2b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4cb9cb26-4616-5074-9255-4dec18145643', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6ed34b5c-3ea2-504c-94b2-02c7c26ca801', 1), 'ba10d93b0145b965543427ce81d8d6ee6a6269df7520d5082400996145ee4d2b',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/0e0419ab1fb45fc6975b4dc4a0187e10fd26e8fdc05851720bd5cb3150959516.mp3', 1018, '2026-09-14 08:52:30.503143', '7d15e5bc83f668f2855a6c9d6c9e6917eccbb7d90ea1801a57779e97a92fde62', 'validated', '{"audio_key":"0e0419ab1fb45fc6975b4dc4a0187e10fd26e8fdc05851720bd5cb3150959516","entity_key":"wf_first_greetings_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7d15e5bc83f668f2855a6c9d6c9e6917eccbb7d90ea1801a57779e97a92fde62","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/0e0419ab1fb45fc6975b4dc4a0187e10fd26e8fdc05851720bd5cb3150959516.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_polite_words_01 -> audio/generated/fr-FR/lexical/195a153fbaa6aed7bbca5b1caa860b09728e183bd5fd9192e5709d015c5f81d7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('769b19b1-3872-563c-a335-0e78bf0f9980', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_polite_words_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '727b3034ae204835dd54e9440b172658ba5ab4fad5da5d135f1b18d3a408d679'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2052b406-a927-583c-8ae4-7baae409c0eb', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('769b19b1-3872-563c-a335-0e78bf0f9980', 1), '727b3034ae204835dd54e9440b172658ba5ab4fad5da5d135f1b18d3a408d679',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/195a153fbaa6aed7bbca5b1caa860b09728e183bd5fd9192e5709d015c5f81d7.mp3', 1018, '2026-09-14 08:52:31.359287', 'c69ea45d75ee1aa9193a4e4ebab9d3dd9f64df3bcdd4140d58f395acf5ea19bc', 'validated', '{"audio_key":"195a153fbaa6aed7bbca5b1caa860b09728e183bd5fd9192e5709d015c5f81d7","entity_key":"lx_polite_words_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c69ea45d75ee1aa9193a4e4ebab9d3dd9f64df3bcdd4140d58f395acf5ea19bc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/195a153fbaa6aed7bbca5b1caa860b09728e183bd5fd9192e5709d015c5f81d7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_polite_words_01 -> audio/generated/fr-FR/lexical/195a153fbaa6aed7bbca5b1caa860b09728e183bd5fd9192e5709d015c5f81d7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1befd36a-74d6-5ece-be49-94dc87e28eae', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_polite_words_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '727b3034ae204835dd54e9440b172658ba5ab4fad5da5d135f1b18d3a408d679'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4d182795-2054-599e-b11a-b08522b4150c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1befd36a-74d6-5ece-be49-94dc87e28eae', 1), '727b3034ae204835dd54e9440b172658ba5ab4fad5da5d135f1b18d3a408d679',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/195a153fbaa6aed7bbca5b1caa860b09728e183bd5fd9192e5709d015c5f81d7.mp3', 1018, '2026-09-14 08:52:31.359287', 'c69ea45d75ee1aa9193a4e4ebab9d3dd9f64df3bcdd4140d58f395acf5ea19bc', 'validated', '{"audio_key":"195a153fbaa6aed7bbca5b1caa860b09728e183bd5fd9192e5709d015c5f81d7","entity_key":"wf_polite_words_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c69ea45d75ee1aa9193a4e4ebab9d3dd9f64df3bcdd4140d58f395acf5ea19bc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/195a153fbaa6aed7bbca5b1caa860b09728e183bd5fd9192e5709d015c5f81d7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_numbers_0_10_01 -> audio/generated/fr-FR/lexical/1e588b095829adb32c5edcb55ac9b81e6c1267ca25205086e14992254d73a229.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('95ce7097-1d88-532f-83ec-5aa4f47ae817', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_numbers_0_10_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a701a906308542ed21fc20ca2bac4e8b805a6a6efb1467f6eb60ae35dc585afb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c53c2dae-98ab-5d6d-abd8-00d050a305c6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('95ce7097-1d88-532f-83ec-5aa4f47ae817', 1), 'a701a906308542ed21fc20ca2bac4e8b805a6a6efb1467f6eb60ae35dc585afb',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/1e588b095829adb32c5edcb55ac9b81e6c1267ca25205086e14992254d73a229.mp3', 862, '2026-09-14 08:52:31.426080', 'dcb6b0dfd381adb6ddcf793975448610d827dc3023e3e43b38bf06543d5497df', 'validated', '{"audio_key":"1e588b095829adb32c5edcb55ac9b81e6c1267ca25205086e14992254d73a229","entity_key":"lx_numbers_0_10_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"dcb6b0dfd381adb6ddcf793975448610d827dc3023e3e43b38bf06543d5497df","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/1e588b095829adb32c5edcb55ac9b81e6c1267ca25205086e14992254d73a229.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_numbers_0_10_01 -> audio/generated/fr-FR/lexical/1e588b095829adb32c5edcb55ac9b81e6c1267ca25205086e14992254d73a229.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0c94ed7b-149f-5cb2-92fe-a6e92b6cf8fe', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_numbers_0_10_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a701a906308542ed21fc20ca2bac4e8b805a6a6efb1467f6eb60ae35dc585afb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7273dce5-4e9e-50a5-af91-a1b6756850cd', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0c94ed7b-149f-5cb2-92fe-a6e92b6cf8fe', 1), 'a701a906308542ed21fc20ca2bac4e8b805a6a6efb1467f6eb60ae35dc585afb',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/1e588b095829adb32c5edcb55ac9b81e6c1267ca25205086e14992254d73a229.mp3', 862, '2026-09-14 08:52:31.426080', 'dcb6b0dfd381adb6ddcf793975448610d827dc3023e3e43b38bf06543d5497df', 'validated', '{"audio_key":"1e588b095829adb32c5edcb55ac9b81e6c1267ca25205086e14992254d73a229","entity_key":"wf_numbers_0_10_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"dcb6b0dfd381adb6ddcf793975448610d827dc3023e3e43b38bf06543d5497df","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/1e588b095829adb32c5edcb55ac9b81e6c1267ca25205086e14992254d73a229.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_alphabet_accents_06 -> audio/generated/fr-FR/lexical/2092e6cb5f47438073a9505a6cf7f23c5394de9e4e5c0c2a7a355d055024c0c8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('fe41d569-d0b3-54b8-b06c-3c1cec0fe309', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_alphabet_accents_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4dd4f3835505cd95950fc062a9b9418958b2d820eb07ef5d545f7c99de091e3b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('30db0f81-347a-54fa-a23b-2d28752ebab6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('fe41d569-d0b3-54b8-b06c-3c1cec0fe309', 1), '4dd4f3835505cd95950fc062a9b9418958b2d820eb07ef5d545f7c99de091e3b',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/2092e6cb5f47438073a9505a6cf7f23c5394de9e4e5c0c2a7a355d055024c0c8.mp3', 1071, '2026-09-14 08:52:32.313708', '4f6baae021f645fb9c351ae4f9999612e0e2caa09fc8b9fc9de2bf23102e2940', 'validated', '{"audio_key":"2092e6cb5f47438073a9505a6cf7f23c5394de9e4e5c0c2a7a355d055024c0c8","entity_key":"lx_alphabet_accents_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4f6baae021f645fb9c351ae4f9999612e0e2caa09fc8b9fc9de2bf23102e2940","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/2092e6cb5f47438073a9505a6cf7f23c5394de9e4e5c0c2a7a355d055024c0c8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_alphabet_accents_06 -> audio/generated/fr-FR/lexical/2092e6cb5f47438073a9505a6cf7f23c5394de9e4e5c0c2a7a355d055024c0c8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('49898cbb-4ed4-50b8-867e-e4b1fc8f6d26', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_alphabet_accents_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4dd4f3835505cd95950fc062a9b9418958b2d820eb07ef5d545f7c99de091e3b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e72ca77c-e69a-5156-b7a0-6b2b3340ce54', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('49898cbb-4ed4-50b8-867e-e4b1fc8f6d26', 1), '4dd4f3835505cd95950fc062a9b9418958b2d820eb07ef5d545f7c99de091e3b',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/2092e6cb5f47438073a9505a6cf7f23c5394de9e4e5c0c2a7a355d055024c0c8.mp3', 1071, '2026-09-14 08:52:32.313708', '4f6baae021f645fb9c351ae4f9999612e0e2caa09fc8b9fc9de2bf23102e2940', 'validated', '{"audio_key":"2092e6cb5f47438073a9505a6cf7f23c5394de9e4e5c0c2a7a355d055024c0c8","entity_key":"wf_alphabet_accents_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4f6baae021f645fb9c351ae4f9999612e0e2caa09fc8b9fc9de2bf23102e2940","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/2092e6cb5f47438073a9505a6cf7f23c5394de9e4e5c0c2a7a355d055024c0c8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_survival_words_01 -> audio/generated/fr-FR/lexical/2507ff903936675e8c832e55965e74b973217e2e146595e90002d69f6b303c2d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0cede61b-6b46-569e-ba6d-74690f8c5cf9', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_survival_words_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3a3468fa89b2ab7cbfe5400858a8ec0066e9e8defa9a64c993b5f24210244df8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b3ac68c2-32ad-5ff1-8585-3bb98cabe328', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0cede61b-6b46-569e-ba6d-74690f8c5cf9', 1), '3a3468fa89b2ab7cbfe5400858a8ec0066e9e8defa9a64c993b5f24210244df8',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/2507ff903936675e8c832e55965e74b973217e2e146595e90002d69f6b303c2d.mp3', 835, '2026-09-14 08:52:32.339501', '9fed9ef2eb250a6a833bb53f12f0305d684d61d829371c46f9603a52089d3689', 'validated', '{"audio_key":"2507ff903936675e8c832e55965e74b973217e2e146595e90002d69f6b303c2d","entity_key":"lx_survival_words_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9fed9ef2eb250a6a833bb53f12f0305d684d61d829371c46f9603a52089d3689","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/2507ff903936675e8c832e55965e74b973217e2e146595e90002d69f6b303c2d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_survival_words_01 -> audio/generated/fr-FR/lexical/2507ff903936675e8c832e55965e74b973217e2e146595e90002d69f6b303c2d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('868c998a-7c45-525c-b3bf-364b127c452d', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_survival_words_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3a3468fa89b2ab7cbfe5400858a8ec0066e9e8defa9a64c993b5f24210244df8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d17e32c0-10a5-5404-9176-b551bfd697dc', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('868c998a-7c45-525c-b3bf-364b127c452d', 1), '3a3468fa89b2ab7cbfe5400858a8ec0066e9e8defa9a64c993b5f24210244df8',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/2507ff903936675e8c832e55965e74b973217e2e146595e90002d69f6b303c2d.mp3', 835, '2026-09-14 08:52:32.339501', '9fed9ef2eb250a6a833bb53f12f0305d684d61d829371c46f9603a52089d3689', 'validated', '{"audio_key":"2507ff903936675e8c832e55965e74b973217e2e146595e90002d69f6b303c2d","entity_key":"wf_survival_words_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9fed9ef2eb250a6a833bb53f12f0305d684d61d829371c46f9603a52089d3689","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/2507ff903936675e8c832e55965e74b973217e2e146595e90002d69f6b303c2d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_sounds_02 -> audio/generated/fr-FR/lexical/27e27d08668ba00535cb163f8d80fc6a5241cb468fd3d97458bf26317ff67477.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3561fc44-ae57-5620-bf3f-8bbb004cf72d', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_sounds_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0bfe935e70c321c7ca3afc75ce0d0ca2f98b5422e008bb31c00c6d7f1f1c0ad6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4ccba192-fc39-5bed-8b9d-26d5590fa908', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3561fc44-ae57-5620-bf3f-8bbb004cf72d', 1), '0bfe935e70c321c7ca3afc75ce0d0ca2f98b5422e008bb31c00c6d7f1f1c0ad6',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/27e27d08668ba00535cb163f8d80fc6a5241cb468fd3d97458bf26317ff67477.mp3', 783, '2026-09-14 08:52:33.394267', '3f8aee72e489fea46f26c791a7fa8086d26b4ede06c29eddf47db749a8ced60c', 'validated', '{"audio_key":"27e27d08668ba00535cb163f8d80fc6a5241cb468fd3d97458bf26317ff67477","entity_key":"lx_first_sounds_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3f8aee72e489fea46f26c791a7fa8086d26b4ede06c29eddf47db749a8ced60c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/27e27d08668ba00535cb163f8d80fc6a5241cb468fd3d97458bf26317ff67477.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_sounds_02 -> audio/generated/fr-FR/lexical/27e27d08668ba00535cb163f8d80fc6a5241cb468fd3d97458bf26317ff67477.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('cbfc2ce3-c014-513f-990a-5a687ca6654f', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_sounds_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0bfe935e70c321c7ca3afc75ce0d0ca2f98b5422e008bb31c00c6d7f1f1c0ad6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1febe086-7475-5bac-becf-d6fd02a7f290', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('cbfc2ce3-c014-513f-990a-5a687ca6654f', 1), '0bfe935e70c321c7ca3afc75ce0d0ca2f98b5422e008bb31c00c6d7f1f1c0ad6',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/27e27d08668ba00535cb163f8d80fc6a5241cb468fd3d97458bf26317ff67477.mp3', 783, '2026-09-14 08:52:33.394267', '3f8aee72e489fea46f26c791a7fa8086d26b4ede06c29eddf47db749a8ced60c', 'validated', '{"audio_key":"27e27d08668ba00535cb163f8d80fc6a5241cb468fd3d97458bf26317ff67477","entity_key":"wf_first_sounds_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3f8aee72e489fea46f26c791a7fa8086d26b4ede06c29eddf47db749a8ced60c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/27e27d08668ba00535cb163f8d80fc6a5241cb468fd3d97458bf26317ff67477.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_how_are_you_04 -> audio/generated/fr-FR/lexical/2cf6e2343e8a7f4bfbeb1f628b7e86890892296ec15c1ef03aed5997dd57436f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c78c5b46-99a6-56e1-9063-ddfd9f56da78', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_how_are_you_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '66cf042eb95cec13662628b0bb006e3258bfc39ae0f7b0f6c394900b17651059'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('993560f9-aa70-5cb7-9dce-55041563ec4f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c78c5b46-99a6-56e1-9063-ddfd9f56da78', 1), '66cf042eb95cec13662628b0bb006e3258bfc39ae0f7b0f6c394900b17651059',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/2cf6e2343e8a7f4bfbeb1f628b7e86890892296ec15c1ef03aed5997dd57436f.mp3', 914, '2026-09-14 08:52:33.254732', 'de227ec9c5f49eebbf5a305057ec73cc59388c2d2564c851e263cfee429bc94b', 'validated', '{"audio_key":"2cf6e2343e8a7f4bfbeb1f628b7e86890892296ec15c1ef03aed5997dd57436f","entity_key":"lx_how_are_you_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"de227ec9c5f49eebbf5a305057ec73cc59388c2d2564c851e263cfee429bc94b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/2cf6e2343e8a7f4bfbeb1f628b7e86890892296ec15c1ef03aed5997dd57436f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_how_are_you_04 -> audio/generated/fr-FR/lexical/2cf6e2343e8a7f4bfbeb1f628b7e86890892296ec15c1ef03aed5997dd57436f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('cef50b0d-bce2-5cd7-8c13-8ce8d49bd40f', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_how_are_you_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '66cf042eb95cec13662628b0bb006e3258bfc39ae0f7b0f6c394900b17651059'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0781ffbf-8d97-5d78-9c14-c39e076f89ac', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('cef50b0d-bce2-5cd7-8c13-8ce8d49bd40f', 1), '66cf042eb95cec13662628b0bb006e3258bfc39ae0f7b0f6c394900b17651059',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/2cf6e2343e8a7f4bfbeb1f628b7e86890892296ec15c1ef03aed5997dd57436f.mp3', 914, '2026-09-14 08:52:33.254732', 'de227ec9c5f49eebbf5a305057ec73cc59388c2d2564c851e263cfee429bc94b', 'validated', '{"audio_key":"2cf6e2343e8a7f4bfbeb1f628b7e86890892296ec15c1ef03aed5997dd57436f","entity_key":"wf_how_are_you_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"de227ec9c5f49eebbf5a305057ec73cc59388c2d2564c851e263cfee429bc94b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/2cf6e2343e8a7f4bfbeb1f628b7e86890892296ec15c1ef03aed5997dd57436f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_my_name_06 -> audio/generated/fr-FR/lexical/31ff72857d6b988b6cddc0ef962b9487612ce5b7ff5be43889b3a293e513dd2d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8247fd78-a958-53aa-941b-7873bbf85478', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_my_name_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a4f0e1d1b5eb23e3482a14b4a9d4e8106e83f7887471e4a73c2557ade280bfe5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('67fd5fa2-f085-5581-b240-d41a5193e6cc', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8247fd78-a958-53aa-941b-7873bbf85478', 1), 'a4f0e1d1b5eb23e3482a14b4a9d4e8106e83f7887471e4a73c2557ade280bfe5',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/31ff72857d6b988b6cddc0ef962b9487612ce5b7ff5be43889b3a293e513dd2d.mp3', 914, '2026-09-14 08:52:34.192693', '56fe2dcdbedb0f38cf0876fc6a3dff67c1176cd3d29b63427c7fc38a17ee92be', 'validated', '{"audio_key":"31ff72857d6b988b6cddc0ef962b9487612ce5b7ff5be43889b3a293e513dd2d","entity_key":"lx_my_name_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"56fe2dcdbedb0f38cf0876fc6a3dff67c1176cd3d29b63427c7fc38a17ee92be","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/31ff72857d6b988b6cddc0ef962b9487612ce5b7ff5be43889b3a293e513dd2d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_my_name_06 -> audio/generated/fr-FR/lexical/31ff72857d6b988b6cddc0ef962b9487612ce5b7ff5be43889b3a293e513dd2d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4ffe9e6a-d891-5834-8485-c4769a5021f1', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_my_name_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a4f0e1d1b5eb23e3482a14b4a9d4e8106e83f7887471e4a73c2557ade280bfe5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('551b6b1c-7d32-5dd4-a31f-944618c5fb5e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4ffe9e6a-d891-5834-8485-c4769a5021f1', 1), 'a4f0e1d1b5eb23e3482a14b4a9d4e8106e83f7887471e4a73c2557ade280bfe5',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/31ff72857d6b988b6cddc0ef962b9487612ce5b7ff5be43889b3a293e513dd2d.mp3', 914, '2026-09-14 08:52:34.192693', '56fe2dcdbedb0f38cf0876fc6a3dff67c1176cd3d29b63427c7fc38a17ee92be', 'validated', '{"audio_key":"31ff72857d6b988b6cddc0ef962b9487612ce5b7ff5be43889b3a293e513dd2d","entity_key":"wf_my_name_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"56fe2dcdbedb0f38cf0876fc6a3dff67c1176cd3d29b63427c7fc38a17ee92be","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/31ff72857d6b988b6cddc0ef962b9487612ce5b7ff5be43889b3a293e513dd2d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_sounds_06 -> audio/generated/fr-FR/lexical/35308f08c75809b53f41a6b3e964c8274683a6e21c3d950ca302e645c48e1b57.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ea4257ae-547a-5247-ae64-c987f7cab34e', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_sounds_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '454349e422f05297191ead13e21d3db520e5abef52055e4964b82fb213f593a1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b6ad7d32-3f1e-5019-8486-79d34f2249cd', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ea4257ae-547a-5247-ae64-c987f7cab34e', 1), '454349e422f05297191ead13e21d3db520e5abef52055e4964b82fb213f593a1',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/35308f08c75809b53f41a6b3e964c8274683a6e21c3d950ca302e645c48e1b57.mp3', 835, '2026-09-14 08:52:34.322464', '6c991d34fd9fd8375d1c5f93f0449fe4ac69b7f5a146d40b1aa25b71e240b67d', 'validated', '{"audio_key":"35308f08c75809b53f41a6b3e964c8274683a6e21c3d950ca302e645c48e1b57","entity_key":"lx_first_sounds_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6c991d34fd9fd8375d1c5f93f0449fe4ac69b7f5a146d40b1aa25b71e240b67d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/35308f08c75809b53f41a6b3e964c8274683a6e21c3d950ca302e645c48e1b57.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_sounds_06 -> audio/generated/fr-FR/lexical/35308f08c75809b53f41a6b3e964c8274683a6e21c3d950ca302e645c48e1b57.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a57f2846-cc74-5b40-8ee7-61b2af861ebf', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_sounds_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '454349e422f05297191ead13e21d3db520e5abef52055e4964b82fb213f593a1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9c1661b1-810c-5c62-8bda-7be591acd2b4', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a57f2846-cc74-5b40-8ee7-61b2af861ebf', 1), '454349e422f05297191ead13e21d3db520e5abef52055e4964b82fb213f593a1',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/35308f08c75809b53f41a6b3e964c8274683a6e21c3d950ca302e645c48e1b57.mp3', 835, '2026-09-14 08:52:34.322464', '6c991d34fd9fd8375d1c5f93f0449fe4ac69b7f5a146d40b1aa25b71e240b67d', 'validated', '{"audio_key":"35308f08c75809b53f41a6b3e964c8274683a6e21c3d950ca302e645c48e1b57","entity_key":"wf_first_sounds_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6c991d34fd9fd8375d1c5f93f0449fe4ac69b7f5a146d40b1aa25b71e240b67d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/35308f08c75809b53f41a6b3e964c8274683a6e21c3d950ca302e645c48e1b57.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_survival_words_06 -> audio/generated/fr-FR/lexical/3f57b580b94f7ebb47e2a96f0de757be312132bd66371ac3c5c030550579d811.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a74a9f84-3e20-5225-ab8f-501279896096', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_survival_words_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '35c8da5acf67042eadad12a9c56b05f32ed6baf584aab23ed3786345690a4c5c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ccce64a0-566d-5a33-b51c-0c0cc97e38fd', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a74a9f84-3e20-5225-ab8f-501279896096', 1), '35c8da5acf67042eadad12a9c56b05f32ed6baf584aab23ed3786345690a4c5c',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/3f57b580b94f7ebb47e2a96f0de757be312132bd66371ac3c5c030550579d811.mp3', 914, '2026-09-14 08:52:35.103917', '8580bc42d4bb22bae2f2a51339e57709ab67cb88702392cd2612573665916470', 'validated', '{"audio_key":"3f57b580b94f7ebb47e2a96f0de757be312132bd66371ac3c5c030550579d811","entity_key":"lx_survival_words_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8580bc42d4bb22bae2f2a51339e57709ab67cb88702392cd2612573665916470","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/3f57b580b94f7ebb47e2a96f0de757be312132bd66371ac3c5c030550579d811.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_survival_words_06 -> audio/generated/fr-FR/lexical/3f57b580b94f7ebb47e2a96f0de757be312132bd66371ac3c5c030550579d811.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ae12e934-923a-528c-b947-7759950d7bab', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_survival_words_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '35c8da5acf67042eadad12a9c56b05f32ed6baf584aab23ed3786345690a4c5c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dfc8d5bc-1f15-53aa-9cdf-2347f9985394', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ae12e934-923a-528c-b947-7759950d7bab', 1), '35c8da5acf67042eadad12a9c56b05f32ed6baf584aab23ed3786345690a4c5c',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/3f57b580b94f7ebb47e2a96f0de757be312132bd66371ac3c5c030550579d811.mp3', 914, '2026-09-14 08:52:35.103917', '8580bc42d4bb22bae2f2a51339e57709ab67cb88702392cd2612573665916470', 'validated', '{"audio_key":"3f57b580b94f7ebb47e2a96f0de757be312132bd66371ac3c5c030550579d811","entity_key":"wf_survival_words_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8580bc42d4bb22bae2f2a51339e57709ab67cb88702392cd2612573665916470","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/3f57b580b94f7ebb47e2a96f0de757be312132bd66371ac3c5c030550579d811.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_polite_words_05 -> audio/generated/fr-FR/lexical/4a7c0ac5fd19aaade624f30025ef76540a4ef57a5f1c411490b154b8d5cb24f2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1ac0f1e4-e0bf-5d05-ab10-180d897a239b', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_polite_words_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5824ab38ef4c506f753f612397275a66836197efda30da6b1a6d17e17c290af1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5bb53b6a-d454-5b91-89e8-6fcc059e0620', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1ac0f1e4-e0bf-5d05-ab10-180d897a239b', 1), '5824ab38ef4c506f753f612397275a66836197efda30da6b1a6d17e17c290af1',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/4a7c0ac5fd19aaade624f30025ef76540a4ef57a5f1c411490b154b8d5cb24f2.mp3', 1018, '2026-09-14 08:52:35.260511', '0ae766abeb4176c8361f7a63b6dda7e01b8f596f7281044ba52f7925549d579a', 'validated', '{"audio_key":"4a7c0ac5fd19aaade624f30025ef76540a4ef57a5f1c411490b154b8d5cb24f2","entity_key":"lx_polite_words_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0ae766abeb4176c8361f7a63b6dda7e01b8f596f7281044ba52f7925549d579a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/4a7c0ac5fd19aaade624f30025ef76540a4ef57a5f1c411490b154b8d5cb24f2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_polite_words_05 -> audio/generated/fr-FR/lexical/4a7c0ac5fd19aaade624f30025ef76540a4ef57a5f1c411490b154b8d5cb24f2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('07c8099d-62d2-565c-9bcb-fc651ba5a91d', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_polite_words_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5824ab38ef4c506f753f612397275a66836197efda30da6b1a6d17e17c290af1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eb823640-3272-5e5e-9889-d24cf88ce52f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('07c8099d-62d2-565c-9bcb-fc651ba5a91d', 1), '5824ab38ef4c506f753f612397275a66836197efda30da6b1a6d17e17c290af1',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/4a7c0ac5fd19aaade624f30025ef76540a4ef57a5f1c411490b154b8d5cb24f2.mp3', 1018, '2026-09-14 08:52:35.260511', '0ae766abeb4176c8361f7a63b6dda7e01b8f596f7281044ba52f7925549d579a', 'validated', '{"audio_key":"4a7c0ac5fd19aaade624f30025ef76540a4ef57a5f1c411490b154b8d5cb24f2","entity_key":"wf_polite_words_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0ae766abeb4176c8361f7a63b6dda7e01b8f596f7281044ba52f7925549d579a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/4a7c0ac5fd19aaade624f30025ef76540a4ef57a5f1c411490b154b8d5cb24f2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_objects_05 -> audio/generated/fr-FR/lexical/4c0480c7ca612e93a4ab9eaffc25b1f3f16e7279eaa149715538d07cdea80ce2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5ec903fc-96a0-50ba-bedc-772a3bd2fb96', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_objects_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7718f861be8cdf6b4324389e44196c18bd076f734b44e50cae9dbc940dc936f6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('75e799b8-5568-5d8f-80b5-c37a6ceeba61', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5ec903fc-96a0-50ba-bedc-772a3bd2fb96', 1), '7718f861be8cdf6b4324389e44196c18bd076f734b44e50cae9dbc940dc936f6',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/4c0480c7ca612e93a4ab9eaffc25b1f3f16e7279eaa149715538d07cdea80ce2.mp3', 783, '2026-09-14 08:52:36.033235', 'd18598962cac0dd5287decd595b593a367f25a67359cfdfdf65ba700242312f8', 'validated', '{"audio_key":"4c0480c7ca612e93a4ab9eaffc25b1f3f16e7279eaa149715538d07cdea80ce2","entity_key":"lx_first_objects_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d18598962cac0dd5287decd595b593a367f25a67359cfdfdf65ba700242312f8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/4c0480c7ca612e93a4ab9eaffc25b1f3f16e7279eaa149715538d07cdea80ce2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_objects_05 -> audio/generated/fr-FR/lexical/4c0480c7ca612e93a4ab9eaffc25b1f3f16e7279eaa149715538d07cdea80ce2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('200cc11b-555b-58d2-b4bd-cdb1a1b9334d', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_objects_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7718f861be8cdf6b4324389e44196c18bd076f734b44e50cae9dbc940dc936f6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d88e1347-814a-58ec-94b4-a622f0894a13', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('200cc11b-555b-58d2-b4bd-cdb1a1b9334d', 1), '7718f861be8cdf6b4324389e44196c18bd076f734b44e50cae9dbc940dc936f6',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/4c0480c7ca612e93a4ab9eaffc25b1f3f16e7279eaa149715538d07cdea80ce2.mp3', 783, '2026-09-14 08:52:36.033235', 'd18598962cac0dd5287decd595b593a367f25a67359cfdfdf65ba700242312f8', 'validated', '{"audio_key":"4c0480c7ca612e93a4ab9eaffc25b1f3f16e7279eaa149715538d07cdea80ce2","entity_key":"wf_first_objects_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d18598962cac0dd5287decd595b593a367f25a67359cfdfdf65ba700242312f8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/4c0480c7ca612e93a4ab9eaffc25b1f3f16e7279eaa149715538d07cdea80ce2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_numbers_0_10_05 -> audio/generated/fr-FR/lexical/520839e89893bdf9296d6c01c4cc45306312071ae88603878575563573c4f1e4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a0d3f1d9-fe24-55a5-b794-e792d45c1465', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_numbers_0_10_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ab8bf5eb556405527d7decd6af32402672efe99071e8417f9928bfa568063da6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('43abeb0a-665a-5245-9b5a-5b10bb92e0cd', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a0d3f1d9-fe24-55a5-b794-e792d45c1465', 1), 'ab8bf5eb556405527d7decd6af32402672efe99071e8417f9928bfa568063da6',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/520839e89893bdf9296d6c01c4cc45306312071ae88603878575563573c4f1e4.mp3', 862, '2026-09-14 08:52:36.203311', '20ce88d4d43f1025b17a080c0d4b9a935d353c9f2c73c2847df7ed234e9915d7', 'validated', '{"audio_key":"520839e89893bdf9296d6c01c4cc45306312071ae88603878575563573c4f1e4","entity_key":"lx_numbers_0_10_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"20ce88d4d43f1025b17a080c0d4b9a935d353c9f2c73c2847df7ed234e9915d7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/520839e89893bdf9296d6c01c4cc45306312071ae88603878575563573c4f1e4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_numbers_0_10_05 -> audio/generated/fr-FR/lexical/520839e89893bdf9296d6c01c4cc45306312071ae88603878575563573c4f1e4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('22bea72f-e771-5999-a0b5-11edbfdeee07', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_numbers_0_10_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ab8bf5eb556405527d7decd6af32402672efe99071e8417f9928bfa568063da6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4bc4254b-37b0-5025-9ca5-e72fa97bc6e4', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('22bea72f-e771-5999-a0b5-11edbfdeee07', 1), 'ab8bf5eb556405527d7decd6af32402672efe99071e8417f9928bfa568063da6',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/520839e89893bdf9296d6c01c4cc45306312071ae88603878575563573c4f1e4.mp3', 862, '2026-09-14 08:52:36.203311', '20ce88d4d43f1025b17a080c0d4b9a935d353c9f2c73c2847df7ed234e9915d7', 'validated', '{"audio_key":"520839e89893bdf9296d6c01c4cc45306312071ae88603878575563573c4f1e4","entity_key":"wf_numbers_0_10_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"20ce88d4d43f1025b17a080c0d4b9a935d353c9f2c73c2847df7ed234e9915d7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/520839e89893bdf9296d6c01c4cc45306312071ae88603878575563573c4f1e4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_alphabet_accents_04 -> audio/generated/fr-FR/lexical/548c758703a258faf020c7eba57f80cc11b9c73260f027d7d84f80b8409a4162.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5befeb7a-18e8-5b7d-a092-e34106fed592', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_alphabet_accents_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8bfa829b8119a6f39b91fd8decec63830b556e4d88a9da29334d7b0558829f2d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ac3f4662-a995-5f89-9d43-72d65ecb9d8a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5befeb7a-18e8-5b7d-a092-e34106fed592', 1), '8bfa829b8119a6f39b91fd8decec63830b556e4d88a9da29334d7b0558829f2d',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/548c758703a258faf020c7eba57f80cc11b9c73260f027d7d84f80b8409a4162.mp3', 783, '2026-09-14 08:52:36.973955', 'f17099aad6b6661ad95123322f114bfa2a1ecbe6a10b7f02a5f6272abf56ce7d', 'validated', '{"audio_key":"548c758703a258faf020c7eba57f80cc11b9c73260f027d7d84f80b8409a4162","entity_key":"lx_alphabet_accents_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f17099aad6b6661ad95123322f114bfa2a1ecbe6a10b7f02a5f6272abf56ce7d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/548c758703a258faf020c7eba57f80cc11b9c73260f027d7d84f80b8409a4162.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_alphabet_accents_04 -> audio/generated/fr-FR/lexical/548c758703a258faf020c7eba57f80cc11b9c73260f027d7d84f80b8409a4162.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('567961cf-16e3-5020-8b81-0a0798052b3b', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_alphabet_accents_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8bfa829b8119a6f39b91fd8decec63830b556e4d88a9da29334d7b0558829f2d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3a98c00e-2338-5062-a97b-5a07c6d92934', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('567961cf-16e3-5020-8b81-0a0798052b3b', 1), '8bfa829b8119a6f39b91fd8decec63830b556e4d88a9da29334d7b0558829f2d',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/548c758703a258faf020c7eba57f80cc11b9c73260f027d7d84f80b8409a4162.mp3', 783, '2026-09-14 08:52:36.973955', 'f17099aad6b6661ad95123322f114bfa2a1ecbe6a10b7f02a5f6272abf56ce7d', 'validated', '{"audio_key":"548c758703a258faf020c7eba57f80cc11b9c73260f027d7d84f80b8409a4162","entity_key":"wf_alphabet_accents_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f17099aad6b6661ad95123322f114bfa2a1ecbe6a10b7f02a5f6272abf56ce7d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/548c758703a258faf020c7eba57f80cc11b9c73260f027d7d84f80b8409a4162.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_numbers_0_10_04 -> audio/generated/fr-FR/lexical/56d9b29ad27939afbb663dbdde9606f1d30fef8ad4f7011320abad8da42ddb74.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0b36aba9-b281-5207-87c6-d2b19f45c884', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_numbers_0_10_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a69cf3d89f86a8337ed4549d5f5726a7a88faff53fbd1e7fb323cf4b6c8bd865'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8b3361c9-3e82-521d-ba6d-fceb8af2cee9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0b36aba9-b281-5207-87c6-d2b19f45c884', 1), 'a69cf3d89f86a8337ed4549d5f5726a7a88faff53fbd1e7fb323cf4b6c8bd865',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/56d9b29ad27939afbb663dbdde9606f1d30fef8ad4f7011320abad8da42ddb74.mp3', 862, '2026-09-14 08:52:37.177581', '16b3c9f103c7979e5eea0166e6124877d9b58088a65b131d855780586067b905', 'validated', '{"audio_key":"56d9b29ad27939afbb663dbdde9606f1d30fef8ad4f7011320abad8da42ddb74","entity_key":"lx_numbers_0_10_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"16b3c9f103c7979e5eea0166e6124877d9b58088a65b131d855780586067b905","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/56d9b29ad27939afbb663dbdde9606f1d30fef8ad4f7011320abad8da42ddb74.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_numbers_0_10_04 -> audio/generated/fr-FR/lexical/56d9b29ad27939afbb663dbdde9606f1d30fef8ad4f7011320abad8da42ddb74.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6067cf0f-f5a5-5e42-aaa7-550ac3d6bf10', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_numbers_0_10_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a69cf3d89f86a8337ed4549d5f5726a7a88faff53fbd1e7fb323cf4b6c8bd865'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('28341eeb-c676-5a78-bc48-81fc0defcd76', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6067cf0f-f5a5-5e42-aaa7-550ac3d6bf10', 1), 'a69cf3d89f86a8337ed4549d5f5726a7a88faff53fbd1e7fb323cf4b6c8bd865',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/56d9b29ad27939afbb663dbdde9606f1d30fef8ad4f7011320abad8da42ddb74.mp3', 862, '2026-09-14 08:52:37.177581', '16b3c9f103c7979e5eea0166e6124877d9b58088a65b131d855780586067b905', 'validated', '{"audio_key":"56d9b29ad27939afbb663dbdde9606f1d30fef8ad4f7011320abad8da42ddb74","entity_key":"wf_numbers_0_10_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"16b3c9f103c7979e5eea0166e6124877d9b58088a65b131d855780586067b905","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/56d9b29ad27939afbb663dbdde9606f1d30fef8ad4f7011320abad8da42ddb74.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_my_name_02 -> audio/generated/fr-FR/lexical/5a5b56656661b8ff2de1c6aa3349583a8acd9713cb3a2387ab9407b360a65f39.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5505042f-dbfa-5c99-99a1-3c835c22f36c', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_my_name_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c44bb2fd516909dab78ae0bfedcd5672b131b996c4b7a4328ee55fba170da776'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cea4e01d-5a9b-5401-ba4d-f81ef3f2d153', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5505042f-dbfa-5c99-99a1-3c835c22f36c', 1), 'c44bb2fd516909dab78ae0bfedcd5672b131b996c4b7a4328ee55fba170da776',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/5a5b56656661b8ff2de1c6aa3349583a8acd9713cb3a2387ab9407b360a65f39.mp3', 862, '2026-09-14 08:52:37.903839', 'a363a8751999927299aad6e2bfed7dace4061bfaffb46748ca45df6ca7352431', 'validated', '{"audio_key":"5a5b56656661b8ff2de1c6aa3349583a8acd9713cb3a2387ab9407b360a65f39","entity_key":"lx_my_name_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a363a8751999927299aad6e2bfed7dace4061bfaffb46748ca45df6ca7352431","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/5a5b56656661b8ff2de1c6aa3349583a8acd9713cb3a2387ab9407b360a65f39.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_my_name_02 -> audio/generated/fr-FR/lexical/5a5b56656661b8ff2de1c6aa3349583a8acd9713cb3a2387ab9407b360a65f39.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b32cdc5b-d623-5a38-97cb-38a27f286208', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_my_name_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c44bb2fd516909dab78ae0bfedcd5672b131b996c4b7a4328ee55fba170da776'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2af01ed5-1363-5a44-9692-8316fd7eb0b7', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b32cdc5b-d623-5a38-97cb-38a27f286208', 1), 'c44bb2fd516909dab78ae0bfedcd5672b131b996c4b7a4328ee55fba170da776',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/5a5b56656661b8ff2de1c6aa3349583a8acd9713cb3a2387ab9407b360a65f39.mp3', 862, '2026-09-14 08:52:37.903839', 'a363a8751999927299aad6e2bfed7dace4061bfaffb46748ca45df6ca7352431', 'validated', '{"audio_key":"5a5b56656661b8ff2de1c6aa3349583a8acd9713cb3a2387ab9407b360a65f39","entity_key":"wf_my_name_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a363a8751999927299aad6e2bfed7dace4061bfaffb46748ca45df6ca7352431","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/5a5b56656661b8ff2de1c6aa3349583a8acd9713cb3a2387ab9407b360a65f39.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_how_are_you_03 -> audio/generated/fr-FR/lexical/5a6fb77f414b098afdbd19868477d4055ba1ee9b5d2e8a9e3f3d06f0be227b11.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('187f70d3-d354-5f49-800a-d2564ee19cdb', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_how_are_you_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '585e34ce2f60c3f61d8232196d144164b4d6b82ba44774f5eca2369101b148c3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('238c37f5-4774-5671-84a0-3d7b65af1607', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('187f70d3-d354-5f49-800a-d2564ee19cdb', 1), '585e34ce2f60c3f61d8232196d144164b4d6b82ba44774f5eca2369101b148c3',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/5a6fb77f414b098afdbd19868477d4055ba1ee9b5d2e8a9e3f3d06f0be227b11.mp3', 966, '2026-09-14 08:52:38.128210', 'aeb666d82df88250935df9a5aad57617bf278e4c7eec1fc08551cd6d58755dad', 'validated', '{"audio_key":"5a6fb77f414b098afdbd19868477d4055ba1ee9b5d2e8a9e3f3d06f0be227b11","entity_key":"lx_how_are_you_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"aeb666d82df88250935df9a5aad57617bf278e4c7eec1fc08551cd6d58755dad","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/5a6fb77f414b098afdbd19868477d4055ba1ee9b5d2e8a9e3f3d06f0be227b11.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_how_are_you_03 -> audio/generated/fr-FR/lexical/5a6fb77f414b098afdbd19868477d4055ba1ee9b5d2e8a9e3f3d06f0be227b11.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ef82e029-8103-565d-8c0c-9f46c698f068', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_how_are_you_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '585e34ce2f60c3f61d8232196d144164b4d6b82ba44774f5eca2369101b148c3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('83a8ff65-cb9f-5cf0-95c0-418ca8cb9039', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ef82e029-8103-565d-8c0c-9f46c698f068', 1), '585e34ce2f60c3f61d8232196d144164b4d6b82ba44774f5eca2369101b148c3',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/5a6fb77f414b098afdbd19868477d4055ba1ee9b5d2e8a9e3f3d06f0be227b11.mp3', 966, '2026-09-14 08:52:38.128210', 'aeb666d82df88250935df9a5aad57617bf278e4c7eec1fc08551cd6d58755dad', 'validated', '{"audio_key":"5a6fb77f414b098afdbd19868477d4055ba1ee9b5d2e8a9e3f3d06f0be227b11","entity_key":"wf_how_are_you_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"aeb666d82df88250935df9a5aad57617bf278e4c7eec1fc08551cd6d58755dad","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/5a6fb77f414b098afdbd19868477d4055ba1ee9b5d2e8a9e3f3d06f0be227b11.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_my_name_04 -> audio/generated/fr-FR/lexical/5add0fb21de5701d0580f515097341ddeceeefa213d3c6653e413321ba69335b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('55e863cb-c662-57cc-8458-3990732b5e69', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_my_name_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7feae7b421a7704f89345499402ec033079d22b02b9149e50b073558b7020fce'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('03d6cd6b-ddf1-52aa-8ee2-0148a6aacee4', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('55e863cb-c662-57cc-8458-3990732b5e69', 1), '7feae7b421a7704f89345499402ec033079d22b02b9149e50b073558b7020fce',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/5add0fb21de5701d0580f515097341ddeceeefa213d3c6653e413321ba69335b.mp3', 862, '2026-09-14 08:52:38.847050', '3e843cd7d69f8e53866b78a5dd6395629cc16b7a7983944f1dbc9407a87f6c4f', 'validated', '{"audio_key":"5add0fb21de5701d0580f515097341ddeceeefa213d3c6653e413321ba69335b","entity_key":"lx_my_name_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3e843cd7d69f8e53866b78a5dd6395629cc16b7a7983944f1dbc9407a87f6c4f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/5add0fb21de5701d0580f515097341ddeceeefa213d3c6653e413321ba69335b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_my_name_04 -> audio/generated/fr-FR/lexical/5add0fb21de5701d0580f515097341ddeceeefa213d3c6653e413321ba69335b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b711278f-8985-5c93-8b14-fe215e8e2464', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_my_name_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7feae7b421a7704f89345499402ec033079d22b02b9149e50b073558b7020fce'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('589959dc-23b9-5c0b-a62c-8c89fbfcc052', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b711278f-8985-5c93-8b14-fe215e8e2464', 1), '7feae7b421a7704f89345499402ec033079d22b02b9149e50b073558b7020fce',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/5add0fb21de5701d0580f515097341ddeceeefa213d3c6653e413321ba69335b.mp3', 862, '2026-09-14 08:52:38.847050', '3e843cd7d69f8e53866b78a5dd6395629cc16b7a7983944f1dbc9407a87f6c4f', 'validated', '{"audio_key":"5add0fb21de5701d0580f515097341ddeceeefa213d3c6653e413321ba69335b","entity_key":"wf_my_name_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3e843cd7d69f8e53866b78a5dd6395629cc16b7a7983944f1dbc9407a87f6c4f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/5add0fb21de5701d0580f515097341ddeceeefa213d3c6653e413321ba69335b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_conversation_03 -> audio/generated/fr-FR/lexical/610eafd1f683ed89c5e025bf2d4560b23fdd3daf198f13cde5c9515bb21c3a64.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9208078b-1080-51a8-aad2-3e031ca5e1d6', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_conversation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a27f05d56ed7df0abeb2b4e07243659587ad95f6bf295bc38489dc715e28e192'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ec25817d-2b54-50ba-b869-f6a1f57c449a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9208078b-1080-51a8-aad2-3e031ca5e1d6', 1), 'a27f05d56ed7df0abeb2b4e07243659587ad95f6bf295bc38489dc715e28e192',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/610eafd1f683ed89c5e025bf2d4560b23fdd3daf198f13cde5c9515bb21c3a64.mp3', 914, '2026-09-14 08:52:39.047368', '0e0a215f90d7fb940643652c9da3692bdbc6c704e6351b2bd6db622772213acc', 'validated', '{"audio_key":"610eafd1f683ed89c5e025bf2d4560b23fdd3daf198f13cde5c9515bb21c3a64","entity_key":"lx_first_conversation_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0e0a215f90d7fb940643652c9da3692bdbc6c704e6351b2bd6db622772213acc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/610eafd1f683ed89c5e025bf2d4560b23fdd3daf198f13cde5c9515bb21c3a64.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_conversation_03 -> audio/generated/fr-FR/lexical/610eafd1f683ed89c5e025bf2d4560b23fdd3daf198f13cde5c9515bb21c3a64.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('014a9e0d-359f-59fe-99ed-27c31b242b13', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_conversation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a27f05d56ed7df0abeb2b4e07243659587ad95f6bf295bc38489dc715e28e192'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8c085fae-6b18-5b49-b789-2734f0c5dadc', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('014a9e0d-359f-59fe-99ed-27c31b242b13', 1), 'a27f05d56ed7df0abeb2b4e07243659587ad95f6bf295bc38489dc715e28e192',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/610eafd1f683ed89c5e025bf2d4560b23fdd3daf198f13cde5c9515bb21c3a64.mp3', 914, '2026-09-14 08:52:39.047368', '0e0a215f90d7fb940643652c9da3692bdbc6c704e6351b2bd6db622772213acc', 'validated', '{"audio_key":"610eafd1f683ed89c5e025bf2d4560b23fdd3daf198f13cde5c9515bb21c3a64","entity_key":"wf_first_conversation_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0e0a215f90d7fb940643652c9da3692bdbc6c704e6351b2bd6db622772213acc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/610eafd1f683ed89c5e025bf2d4560b23fdd3daf198f13cde5c9515bb21c3a64.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_how_are_you_01 -> audio/generated/fr-FR/lexical/610eafd1f683ed89c5e025bf2d4560b23fdd3daf198f13cde5c9515bb21c3a64.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9208078b-1080-51a8-aad2-3e031ca5e1d6', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_how_are_you_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a27f05d56ed7df0abeb2b4e07243659587ad95f6bf295bc38489dc715e28e192'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ec25817d-2b54-50ba-b869-f6a1f57c449a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9208078b-1080-51a8-aad2-3e031ca5e1d6', 1), 'a27f05d56ed7df0abeb2b4e07243659587ad95f6bf295bc38489dc715e28e192',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/610eafd1f683ed89c5e025bf2d4560b23fdd3daf198f13cde5c9515bb21c3a64.mp3', 914, '2026-09-14 08:52:39.047368', '0e0a215f90d7fb940643652c9da3692bdbc6c704e6351b2bd6db622772213acc', 'validated', '{"audio_key":"610eafd1f683ed89c5e025bf2d4560b23fdd3daf198f13cde5c9515bb21c3a64","entity_key":"lx_how_are_you_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0e0a215f90d7fb940643652c9da3692bdbc6c704e6351b2bd6db622772213acc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/610eafd1f683ed89c5e025bf2d4560b23fdd3daf198f13cde5c9515bb21c3a64.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_how_are_you_01 -> audio/generated/fr-FR/lexical/610eafd1f683ed89c5e025bf2d4560b23fdd3daf198f13cde5c9515bb21c3a64.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('cef37e67-dc9f-5965-8c50-4a22b03acf38', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_how_are_you_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a27f05d56ed7df0abeb2b4e07243659587ad95f6bf295bc38489dc715e28e192'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b894d5bf-8896-51de-8443-bfa890516693', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('cef37e67-dc9f-5965-8c50-4a22b03acf38', 1), 'a27f05d56ed7df0abeb2b4e07243659587ad95f6bf295bc38489dc715e28e192',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/610eafd1f683ed89c5e025bf2d4560b23fdd3daf198f13cde5c9515bb21c3a64.mp3', 914, '2026-09-14 08:52:39.047368', '0e0a215f90d7fb940643652c9da3692bdbc6c704e6351b2bd6db622772213acc', 'validated', '{"audio_key":"610eafd1f683ed89c5e025bf2d4560b23fdd3daf198f13cde5c9515bb21c3a64","entity_key":"wf_how_are_you_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0e0a215f90d7fb940643652c9da3692bdbc6c704e6351b2bd6db622772213acc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/610eafd1f683ed89c5e025bf2d4560b23fdd3daf198f13cde5c9515bb21c3a64.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_sounds_03 -> audio/generated/fr-FR/lexical/691ffaa2b0ff8e37f3221005d76aa03a9ccdfce96619e776b617351911b7f3c5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('acf2a5a4-5f05-50b0-99c0-514024a992be', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_sounds_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b8d31e852725afb1e26d53bab6095b2bff1749c9275be13ed1c05a56ed31ec09'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b57ad369-8dab-58b3-ac7f-cca1da9922ec', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('acf2a5a4-5f05-50b0-99c0-514024a992be', 1), 'b8d31e852725afb1e26d53bab6095b2bff1749c9275be13ed1c05a56ed31ec09',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/691ffaa2b0ff8e37f3221005d76aa03a9ccdfce96619e776b617351911b7f3c5.mp3', 679, '2026-09-14 08:52:39.801188', 'd18a5613e464a963b5e2a5a9aca86efec00edf3142cbdbe90fff9bfac48c1484', 'validated', '{"audio_key":"691ffaa2b0ff8e37f3221005d76aa03a9ccdfce96619e776b617351911b7f3c5","entity_key":"lx_first_sounds_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d18a5613e464a963b5e2a5a9aca86efec00edf3142cbdbe90fff9bfac48c1484","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/691ffaa2b0ff8e37f3221005d76aa03a9ccdfce96619e776b617351911b7f3c5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_sounds_03 -> audio/generated/fr-FR/lexical/691ffaa2b0ff8e37f3221005d76aa03a9ccdfce96619e776b617351911b7f3c5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9c83a014-b670-5fdc-8448-75a376f4c30c', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_sounds_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b8d31e852725afb1e26d53bab6095b2bff1749c9275be13ed1c05a56ed31ec09'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fbe95693-3f0a-5cf0-b58a-8139177b098d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9c83a014-b670-5fdc-8448-75a376f4c30c', 1), 'b8d31e852725afb1e26d53bab6095b2bff1749c9275be13ed1c05a56ed31ec09',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/691ffaa2b0ff8e37f3221005d76aa03a9ccdfce96619e776b617351911b7f3c5.mp3', 679, '2026-09-14 08:52:39.801188', 'd18a5613e464a963b5e2a5a9aca86efec00edf3142cbdbe90fff9bfac48c1484', 'validated', '{"audio_key":"691ffaa2b0ff8e37f3221005d76aa03a9ccdfce96619e776b617351911b7f3c5","entity_key":"wf_first_sounds_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d18a5613e464a963b5e2a5a9aca86efec00edf3142cbdbe90fff9bfac48c1484","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/691ffaa2b0ff8e37f3221005d76aa03a9ccdfce96619e776b617351911b7f3c5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_survival_words_02 -> audio/generated/fr-FR/lexical/6a5232918c8959eee177d03a7c19d1a42cb6448c17579e221467ecf68fd15bd7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('cbd616d7-e24f-56b3-aeb8-fdf723f2fc0a', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_survival_words_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bcee72e6df5d56319125920f6c69d8001e938e122cd14597e547d49cc9126e42'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('34ff832b-a0d8-5d8e-8544-3de1c5f3cb5d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('cbd616d7-e24f-56b3-aeb8-fdf723f2fc0a', 1), 'bcee72e6df5d56319125920f6c69d8001e938e122cd14597e547d49cc9126e42',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/6a5232918c8959eee177d03a7c19d1a42cb6448c17579e221467ecf68fd15bd7.mp3', 835, '2026-09-14 08:52:39.990916', '05f9b8373b39708ac985d54432850ee9b4c60059f50e749b0ecf6716104a7a2f', 'validated', '{"audio_key":"6a5232918c8959eee177d03a7c19d1a42cb6448c17579e221467ecf68fd15bd7","entity_key":"lx_survival_words_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"05f9b8373b39708ac985d54432850ee9b4c60059f50e749b0ecf6716104a7a2f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/6a5232918c8959eee177d03a7c19d1a42cb6448c17579e221467ecf68fd15bd7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_survival_words_02 -> audio/generated/fr-FR/lexical/6a5232918c8959eee177d03a7c19d1a42cb6448c17579e221467ecf68fd15bd7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0479a8ee-fd16-5a43-9f0f-53f02c2e6e93', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_survival_words_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bcee72e6df5d56319125920f6c69d8001e938e122cd14597e547d49cc9126e42'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('43a5b83d-1aea-5c49-97ee-e2243b2e54d6', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0479a8ee-fd16-5a43-9f0f-53f02c2e6e93', 1), 'bcee72e6df5d56319125920f6c69d8001e938e122cd14597e547d49cc9126e42',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/6a5232918c8959eee177d03a7c19d1a42cb6448c17579e221467ecf68fd15bd7.mp3', 835, '2026-09-14 08:52:39.990916', '05f9b8373b39708ac985d54432850ee9b4c60059f50e749b0ecf6716104a7a2f', 'validated', '{"audio_key":"6a5232918c8959eee177d03a7c19d1a42cb6448c17579e221467ecf68fd15bd7","entity_key":"wf_survival_words_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"05f9b8373b39708ac985d54432850ee9b4c60059f50e749b0ecf6716104a7a2f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/6a5232918c8959eee177d03a7c19d1a42cb6448c17579e221467ecf68fd15bd7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_greetings_06 -> audio/generated/fr-FR/lexical/6bf7099067ff88c6a63120d5b1f61a9d93bc7252cab00d038caa3af1deb4727a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5c85a5d0-c3a3-57ae-bdb2-5f00ab67e0d3', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_greetings_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '29ef0fd8218a6ca435919cd25a590c47c04ce14554f2247ec65fe347b29f9553'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ab0d8c7a-3ec4-5035-a2d5-f9a6e539819f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5c85a5d0-c3a3-57ae-bdb2-5f00ab67e0d3', 1), '29ef0fd8218a6ca435919cd25a590c47c04ce14554f2247ec65fe347b29f9553',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/6bf7099067ff88c6a63120d5b1f61a9d93bc7252cab00d038caa3af1deb4727a.mp3', 1619, '2026-09-14 08:52:40.800705', '001115e280a6930ed045a21eec2caa0cc0945e7c7d06201be20cd0f355668459', 'validated', '{"audio_key":"6bf7099067ff88c6a63120d5b1f61a9d93bc7252cab00d038caa3af1deb4727a","entity_key":"lx_first_greetings_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"001115e280a6930ed045a21eec2caa0cc0945e7c7d06201be20cd0f355668459","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/6bf7099067ff88c6a63120d5b1f61a9d93bc7252cab00d038caa3af1deb4727a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_greetings_06 -> audio/generated/fr-FR/lexical/6bf7099067ff88c6a63120d5b1f61a9d93bc7252cab00d038caa3af1deb4727a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('88abcbaa-cf69-5741-acd9-3a56c81a371d', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_greetings_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '29ef0fd8218a6ca435919cd25a590c47c04ce14554f2247ec65fe347b29f9553'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2bd2a521-2141-5987-b081-ca4806246ab9', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('88abcbaa-cf69-5741-acd9-3a56c81a371d', 1), '29ef0fd8218a6ca435919cd25a590c47c04ce14554f2247ec65fe347b29f9553',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/6bf7099067ff88c6a63120d5b1f61a9d93bc7252cab00d038caa3af1deb4727a.mp3', 1619, '2026-09-14 08:52:40.800705', '001115e280a6930ed045a21eec2caa0cc0945e7c7d06201be20cd0f355668459', 'validated', '{"audio_key":"6bf7099067ff88c6a63120d5b1f61a9d93bc7252cab00d038caa3af1deb4727a","entity_key":"wf_first_greetings_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"001115e280a6930ed045a21eec2caa0cc0945e7c7d06201be20cd0f355668459","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/6bf7099067ff88c6a63120d5b1f61a9d93bc7252cab00d038caa3af1deb4727a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_alphabet_accents_05 -> audio/generated/fr-FR/lexical/6e5bca32f2feebb86c9fdc65c302fb971754a99abcee8ef43778a0edde16e927.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('cc2cb8fa-cd36-5288-a97d-b89a92436a40', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_alphabet_accents_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1403a369ecba7969b4a00fe5b80d0bfbdbda8bec10ed1f8208bdd8d45f3164c5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5bafed8d-6d6f-56a2-9419-306b53057dc4', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('cc2cb8fa-cd36-5288-a97d-b89a92436a40', 1), '1403a369ecba7969b4a00fe5b80d0bfbdbda8bec10ed1f8208bdd8d45f3164c5',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/6e5bca32f2feebb86c9fdc65c302fb971754a99abcee8ef43778a0edde16e927.mp3', 1201, '2026-09-14 08:52:41.181539', '61bec9f16ede150b1b40281ed9ec0e30e45dcde5efdd880d99f85e37b2f512a9', 'validated', '{"audio_key":"6e5bca32f2feebb86c9fdc65c302fb971754a99abcee8ef43778a0edde16e927","entity_key":"lx_alphabet_accents_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"61bec9f16ede150b1b40281ed9ec0e30e45dcde5efdd880d99f85e37b2f512a9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/6e5bca32f2feebb86c9fdc65c302fb971754a99abcee8ef43778a0edde16e927.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_alphabet_accents_05 -> audio/generated/fr-FR/lexical/6e5bca32f2feebb86c9fdc65c302fb971754a99abcee8ef43778a0edde16e927.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('476284ae-ba64-5118-a1f3-48ed1802ade0', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_alphabet_accents_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1403a369ecba7969b4a00fe5b80d0bfbdbda8bec10ed1f8208bdd8d45f3164c5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9a30b9c7-e8e9-58a3-9eb3-fb339f3a3625', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('476284ae-ba64-5118-a1f3-48ed1802ade0', 1), '1403a369ecba7969b4a00fe5b80d0bfbdbda8bec10ed1f8208bdd8d45f3164c5',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/6e5bca32f2feebb86c9fdc65c302fb971754a99abcee8ef43778a0edde16e927.mp3', 1201, '2026-09-14 08:52:41.181539', '61bec9f16ede150b1b40281ed9ec0e30e45dcde5efdd880d99f85e37b2f512a9', 'validated', '{"audio_key":"6e5bca32f2feebb86c9fdc65c302fb971754a99abcee8ef43778a0edde16e927","entity_key":"wf_alphabet_accents_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"61bec9f16ede150b1b40281ed9ec0e30e45dcde5efdd880d99f85e37b2f512a9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/6e5bca32f2feebb86c9fdc65c302fb971754a99abcee8ef43778a0edde16e927.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_polite_words_04 -> audio/generated/fr-FR/lexical/705d2e74073390e1b776e4ff483c07d17f26b48b502c053f71340ae1651ffed7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f895d9d7-244b-57a9-97f5-7d9fcba4dec5', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_polite_words_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '002d34a1ceba81d1594b613305bc03c331ccf635889a34f2b08f6df0c1affd06'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1ceccb26-27b2-5ded-9662-3d10a58f8f3a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f895d9d7-244b-57a9-97f5-7d9fcba4dec5', 1), '002d34a1ceba81d1594b613305bc03c331ccf635889a34f2b08f6df0c1affd06',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/705d2e74073390e1b776e4ff483c07d17f26b48b502c053f71340ae1651ffed7.mp3', 914, '2026-09-14 08:52:41.730035', '01a5877811efb8205e5a97b969b4536e2674e0db59d16a911933612d4379312a', 'validated', '{"audio_key":"705d2e74073390e1b776e4ff483c07d17f26b48b502c053f71340ae1651ffed7","entity_key":"lx_polite_words_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"01a5877811efb8205e5a97b969b4536e2674e0db59d16a911933612d4379312a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/705d2e74073390e1b776e4ff483c07d17f26b48b502c053f71340ae1651ffed7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_polite_words_04 -> audio/generated/fr-FR/lexical/705d2e74073390e1b776e4ff483c07d17f26b48b502c053f71340ae1651ffed7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('36fb0bba-1692-578a-824e-e5b6bb5de5d3', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_polite_words_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '002d34a1ceba81d1594b613305bc03c331ccf635889a34f2b08f6df0c1affd06'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b9bc26a8-9aa7-5ebf-bd2e-4a9aa8faaa5c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('36fb0bba-1692-578a-824e-e5b6bb5de5d3', 1), '002d34a1ceba81d1594b613305bc03c331ccf635889a34f2b08f6df0c1affd06',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/705d2e74073390e1b776e4ff483c07d17f26b48b502c053f71340ae1651ffed7.mp3', 914, '2026-09-14 08:52:41.730035', '01a5877811efb8205e5a97b969b4536e2674e0db59d16a911933612d4379312a', 'validated', '{"audio_key":"705d2e74073390e1b776e4ff483c07d17f26b48b502c053f71340ae1651ffed7","entity_key":"wf_polite_words_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"01a5877811efb8205e5a97b969b4536e2674e0db59d16a911933612d4379312a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/705d2e74073390e1b776e4ff483c07d17f26b48b502c053f71340ae1651ffed7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_how_are_you_02 -> audio/generated/fr-FR/lexical/73cfc320f4a136a212c6755a2107c21bae82a0f49f9fefd3909227ff53b8abdf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5b81fbdc-0115-5546-bc8c-cda6d6728c49', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_how_are_you_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '48b3f8392fb766ae5aa762acd11fd9d1ad1ac82a5f54ca5fb70fe4aa71dc6ba1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('585c6510-ef48-559b-8588-0072f9b2a79f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5b81fbdc-0115-5546-bc8c-cda6d6728c49', 1), '48b3f8392fb766ae5aa762acd11fd9d1ad1ac82a5f54ca5fb70fe4aa71dc6ba1',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/73cfc320f4a136a212c6755a2107c21bae82a0f49f9fefd3909227ff53b8abdf.mp3', 783, '2026-09-14 08:52:42.096565', '744b88f20b622f8602bc6e900d93137ee18ee0a7e88fa5e77cf622b8e0204549', 'validated', '{"audio_key":"73cfc320f4a136a212c6755a2107c21bae82a0f49f9fefd3909227ff53b8abdf","entity_key":"lx_how_are_you_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"744b88f20b622f8602bc6e900d93137ee18ee0a7e88fa5e77cf622b8e0204549","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/73cfc320f4a136a212c6755a2107c21bae82a0f49f9fefd3909227ff53b8abdf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_how_are_you_02 -> audio/generated/fr-FR/lexical/73cfc320f4a136a212c6755a2107c21bae82a0f49f9fefd3909227ff53b8abdf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1c9fcf41-d2eb-551d-abce-b457262787ef', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_how_are_you_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '48b3f8392fb766ae5aa762acd11fd9d1ad1ac82a5f54ca5fb70fe4aa71dc6ba1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c6f957e4-21ac-54d5-967b-2352020193e8', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1c9fcf41-d2eb-551d-abce-b457262787ef', 1), '48b3f8392fb766ae5aa762acd11fd9d1ad1ac82a5f54ca5fb70fe4aa71dc6ba1',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/73cfc320f4a136a212c6755a2107c21bae82a0f49f9fefd3909227ff53b8abdf.mp3', 783, '2026-09-14 08:52:42.096565', '744b88f20b622f8602bc6e900d93137ee18ee0a7e88fa5e77cf622b8e0204549', 'validated', '{"audio_key":"73cfc320f4a136a212c6755a2107c21bae82a0f49f9fefd3909227ff53b8abdf","entity_key":"wf_how_are_you_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"744b88f20b622f8602bc6e900d93137ee18ee0a7e88fa5e77cf622b8e0204549","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/73cfc320f4a136a212c6755a2107c21bae82a0f49f9fefd3909227ff53b8abdf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_objects_02 -> audio/generated/fr-FR/lexical/90d4a032f1935e32bd7b6d629ddc056d23abc1b3aefb41679df1d74ab30eb136.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0fa447a6-2278-5d00-b45e-1302b4dc09c4', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_objects_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '293b2ee4ba237e56e0b34ab17039dc3b595c39cbf2f83f228e2b148369ac6ceb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('13a9a9d2-c620-5fff-9b12-811f2c1fa4d8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0fa447a6-2278-5d00-b45e-1302b4dc09c4', 1), '293b2ee4ba237e56e0b34ab17039dc3b595c39cbf2f83f228e2b148369ac6ceb',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/90d4a032f1935e32bd7b6d629ddc056d23abc1b3aefb41679df1d74ab30eb136.mp3', 966, '2026-09-14 08:52:42.656337', '90d09388bd71861193e8fc77adc9fd83006a5f0587c4bf6d191dd54530176a6b', 'validated', '{"audio_key":"90d4a032f1935e32bd7b6d629ddc056d23abc1b3aefb41679df1d74ab30eb136","entity_key":"lx_first_objects_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"90d09388bd71861193e8fc77adc9fd83006a5f0587c4bf6d191dd54530176a6b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/90d4a032f1935e32bd7b6d629ddc056d23abc1b3aefb41679df1d74ab30eb136.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_objects_02 -> audio/generated/fr-FR/lexical/90d4a032f1935e32bd7b6d629ddc056d23abc1b3aefb41679df1d74ab30eb136.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d2248c69-124f-5cf0-928b-1e4599105c31', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_objects_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '293b2ee4ba237e56e0b34ab17039dc3b595c39cbf2f83f228e2b148369ac6ceb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('62f70600-1713-5c09-822e-7159a6872019', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d2248c69-124f-5cf0-928b-1e4599105c31', 1), '293b2ee4ba237e56e0b34ab17039dc3b595c39cbf2f83f228e2b148369ac6ceb',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/90d4a032f1935e32bd7b6d629ddc056d23abc1b3aefb41679df1d74ab30eb136.mp3', 966, '2026-09-14 08:52:42.656337', '90d09388bd71861193e8fc77adc9fd83006a5f0587c4bf6d191dd54530176a6b', 'validated', '{"audio_key":"90d4a032f1935e32bd7b6d629ddc056d23abc1b3aefb41679df1d74ab30eb136","entity_key":"wf_first_objects_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"90d09388bd71861193e8fc77adc9fd83006a5f0587c4bf6d191dd54530176a6b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/90d4a032f1935e32bd7b6d629ddc056d23abc1b3aefb41679df1d74ab30eb136.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_sounds_04 -> audio/generated/fr-FR/lexical/93b8e2fdd83250a09d7c33b2923fe5dca1a84f30d97b3f32659bd315d8501e5e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('116174d7-4b21-57a6-9d70-39fdd967064a', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_sounds_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ea325d761f98c6b73320e442b67f2a3574d9924716d788ddc0dbbdcaca853fe7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ba2cd802-6ac8-5a4b-95bd-70f33b89cf92', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('116174d7-4b21-57a6-9d70-39fdd967064a', 1), 'ea325d761f98c6b73320e442b67f2a3574d9924716d788ddc0dbbdcaca853fe7',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/93b8e2fdd83250a09d7c33b2923fe5dca1a84f30d97b3f32659bd315d8501e5e.mp3', 914, '2026-09-14 08:52:43.140134', '530447cdc3d3b9c759c2bcc9552970b11e4f5516204c827246fe21d0d7aa458e', 'validated', '{"audio_key":"93b8e2fdd83250a09d7c33b2923fe5dca1a84f30d97b3f32659bd315d8501e5e","entity_key":"lx_first_sounds_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"530447cdc3d3b9c759c2bcc9552970b11e4f5516204c827246fe21d0d7aa458e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/93b8e2fdd83250a09d7c33b2923fe5dca1a84f30d97b3f32659bd315d8501e5e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_sounds_04 -> audio/generated/fr-FR/lexical/93b8e2fdd83250a09d7c33b2923fe5dca1a84f30d97b3f32659bd315d8501e5e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('15fbe661-b950-5e87-9b7b-a5df80ab1930', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_sounds_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ea325d761f98c6b73320e442b67f2a3574d9924716d788ddc0dbbdcaca853fe7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6275cc02-de21-53f3-acb7-b4aca27b1606', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('15fbe661-b950-5e87-9b7b-a5df80ab1930', 1), 'ea325d761f98c6b73320e442b67f2a3574d9924716d788ddc0dbbdcaca853fe7',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/93b8e2fdd83250a09d7c33b2923fe5dca1a84f30d97b3f32659bd315d8501e5e.mp3', 914, '2026-09-14 08:52:43.140134', '530447cdc3d3b9c759c2bcc9552970b11e4f5516204c827246fe21d0d7aa458e', 'validated', '{"audio_key":"93b8e2fdd83250a09d7c33b2923fe5dca1a84f30d97b3f32659bd315d8501e5e","entity_key":"wf_first_sounds_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"530447cdc3d3b9c759c2bcc9552970b11e4f5516204c827246fe21d0d7aa458e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/93b8e2fdd83250a09d7c33b2923fe5dca1a84f30d97b3f32659bd315d8501e5e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_numbers_0_10_06 -> audio/generated/fr-FR/lexical/93c5e7c28905db54a4418d057b5d9fe042f936e0cd1c14afe8c07fd6e5baad47.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1ad2f0e9-ecfb-51de-86da-4a446902dde8', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_numbers_0_10_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1828cb7d38ef013910528534e7ca3716e9f2ddde751e15bffceeb0dc43144382'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('84e575bd-bb4b-556e-848e-026ef6ef9c65', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1ad2f0e9-ecfb-51de-86da-4a446902dde8', 1), '1828cb7d38ef013910528534e7ca3716e9f2ddde751e15bffceeb0dc43144382',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/93c5e7c28905db54a4418d057b5d9fe042f936e0cd1c14afe8c07fd6e5baad47.mp3', 862, '2026-09-14 08:52:43.563637', 'a6858a048ef16f7425e7f6ed7fabe8ac6cfbaea42ed2623a12b781594bbc2858', 'validated', '{"audio_key":"93c5e7c28905db54a4418d057b5d9fe042f936e0cd1c14afe8c07fd6e5baad47","entity_key":"lx_numbers_0_10_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a6858a048ef16f7425e7f6ed7fabe8ac6cfbaea42ed2623a12b781594bbc2858","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/93c5e7c28905db54a4418d057b5d9fe042f936e0cd1c14afe8c07fd6e5baad47.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_numbers_0_10_06 -> audio/generated/fr-FR/lexical/93c5e7c28905db54a4418d057b5d9fe042f936e0cd1c14afe8c07fd6e5baad47.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b2f19cb3-3a78-5faa-8ccf-19a3899abe12', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_numbers_0_10_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1828cb7d38ef013910528534e7ca3716e9f2ddde751e15bffceeb0dc43144382'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c73267e6-3595-5c8e-b867-fdfaca4df134', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b2f19cb3-3a78-5faa-8ccf-19a3899abe12', 1), '1828cb7d38ef013910528534e7ca3716e9f2ddde751e15bffceeb0dc43144382',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/93c5e7c28905db54a4418d057b5d9fe042f936e0cd1c14afe8c07fd6e5baad47.mp3', 862, '2026-09-14 08:52:43.563637', 'a6858a048ef16f7425e7f6ed7fabe8ac6cfbaea42ed2623a12b781594bbc2858', 'validated', '{"audio_key":"93c5e7c28905db54a4418d057b5d9fe042f936e0cd1c14afe8c07fd6e5baad47","entity_key":"wf_numbers_0_10_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a6858a048ef16f7425e7f6ed7fabe8ac6cfbaea42ed2623a12b781594bbc2858","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/93c5e7c28905db54a4418d057b5d9fe042f936e0cd1c14afe8c07fd6e5baad47.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_numbers_0_10_03 -> audio/generated/fr-FR/lexical/9a4507815b26190a7e16a1bc01569462c984062f75fa13b7024e4d304595c618.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7050aca2-73e9-5e55-a523-76d7c080416d', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_numbers_0_10_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '62007886b7f3c83235bfb71b2d5139a7df5bfbecff06be550c5e45ef9bcb509f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('df6dd7b8-a6cf-549e-8496-33d76d2d6a65', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7050aca2-73e9-5e55-a523-76d7c080416d', 1), '62007886b7f3c83235bfb71b2d5139a7df5bfbecff06be550c5e45ef9bcb509f',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/9a4507815b26190a7e16a1bc01569462c984062f75fa13b7024e4d304595c618.mp3', 731, '2026-09-14 08:52:44.035481', 'bfe513f8b18a2d986078e8169575d5cf97f3bd7b6fbae7f9286c470e8523e5c7', 'validated', '{"audio_key":"9a4507815b26190a7e16a1bc01569462c984062f75fa13b7024e4d304595c618","entity_key":"lx_numbers_0_10_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"bfe513f8b18a2d986078e8169575d5cf97f3bd7b6fbae7f9286c470e8523e5c7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/9a4507815b26190a7e16a1bc01569462c984062f75fa13b7024e4d304595c618.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_numbers_0_10_03 -> audio/generated/fr-FR/lexical/9a4507815b26190a7e16a1bc01569462c984062f75fa13b7024e4d304595c618.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1cd79883-27ae-510f-8a5b-2ee7bed08a26', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_numbers_0_10_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '62007886b7f3c83235bfb71b2d5139a7df5bfbecff06be550c5e45ef9bcb509f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('567172cd-273b-5010-861b-db0cde0e7535', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1cd79883-27ae-510f-8a5b-2ee7bed08a26', 1), '62007886b7f3c83235bfb71b2d5139a7df5bfbecff06be550c5e45ef9bcb509f',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/9a4507815b26190a7e16a1bc01569462c984062f75fa13b7024e4d304595c618.mp3', 731, '2026-09-14 08:52:44.035481', 'bfe513f8b18a2d986078e8169575d5cf97f3bd7b6fbae7f9286c470e8523e5c7', 'validated', '{"audio_key":"9a4507815b26190a7e16a1bc01569462c984062f75fa13b7024e4d304595c618","entity_key":"wf_numbers_0_10_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"bfe513f8b18a2d986078e8169575d5cf97f3bd7b6fbae7f9286c470e8523e5c7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/9a4507815b26190a7e16a1bc01569462c984062f75fa13b7024e4d304595c618.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_how_are_you_06 -> audio/generated/fr-FR/lexical/a50c29898ca77a042a2080596907b2cb41da2267c4f0dd4a1fafb239c1a4b879.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('000ce6b7-4cd6-5e9a-bf0a-5951172638a2', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_how_are_you_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2f0957c3b3ee4d63aaab2635efb8b545c6a3906f290a14ca73ba9373230f73a3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a6ed7e8b-af2f-5c24-ad41-b82d76af09f8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('000ce6b7-4cd6-5e9a-bf0a-5951172638a2', 1), '2f0957c3b3ee4d63aaab2635efb8b545c6a3906f290a14ca73ba9373230f73a3',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/a50c29898ca77a042a2080596907b2cb41da2267c4f0dd4a1fafb239c1a4b879.mp3', 914, '2026-09-14 08:52:44.516611', '5d2d05f7696dff1df027b88f6a056b26eb29b8a477bb2c2bf31fd74462b35027', 'validated', '{"audio_key":"a50c29898ca77a042a2080596907b2cb41da2267c4f0dd4a1fafb239c1a4b879","entity_key":"lx_how_are_you_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5d2d05f7696dff1df027b88f6a056b26eb29b8a477bb2c2bf31fd74462b35027","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/a50c29898ca77a042a2080596907b2cb41da2267c4f0dd4a1fafb239c1a4b879.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_how_are_you_06 -> audio/generated/fr-FR/lexical/a50c29898ca77a042a2080596907b2cb41da2267c4f0dd4a1fafb239c1a4b879.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('68bef96c-b366-5527-8657-f4f9e0d56659', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_how_are_you_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2f0957c3b3ee4d63aaab2635efb8b545c6a3906f290a14ca73ba9373230f73a3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('70b8435f-7a29-5223-b675-9cf42db275a6', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('68bef96c-b366-5527-8657-f4f9e0d56659', 1), '2f0957c3b3ee4d63aaab2635efb8b545c6a3906f290a14ca73ba9373230f73a3',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/a50c29898ca77a042a2080596907b2cb41da2267c4f0dd4a1fafb239c1a4b879.mp3', 914, '2026-09-14 08:52:44.516611', '5d2d05f7696dff1df027b88f6a056b26eb29b8a477bb2c2bf31fd74462b35027', 'validated', '{"audio_key":"a50c29898ca77a042a2080596907b2cb41da2267c4f0dd4a1fafb239c1a4b879","entity_key":"wf_how_are_you_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5d2d05f7696dff1df027b88f6a056b26eb29b8a477bb2c2bf31fd74462b35027","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/a50c29898ca77a042a2080596907b2cb41da2267c4f0dd4a1fafb239c1a4b879.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_conversation_05 -> audio/generated/fr-FR/lexical/a73084d219250ee8f75840a3809e69e787b35a09fee4fdfb0c09becdc91375d8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('47a212bd-909a-5eb3-9f31-967affb12275', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_conversation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f93c390afdcbdb8543db3365b51d2498ecf3709a446d850d64fe0bf91664de57'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('059e34c8-d85c-56d1-b102-b1f602942cbe', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('47a212bd-909a-5eb3-9f31-967affb12275', 1), 'f93c390afdcbdb8543db3365b51d2498ecf3709a446d850d64fe0bf91664de57',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/a73084d219250ee8f75840a3809e69e787b35a09fee4fdfb0c09becdc91375d8.mp3', 1018, '2026-09-14 08:52:44.982729', '1b072a0ff821bcb0a317734048de8e8c212b454fc5a3bdffe8f877c1c40924c9', 'validated', '{"audio_key":"a73084d219250ee8f75840a3809e69e787b35a09fee4fdfb0c09becdc91375d8","entity_key":"lx_first_conversation_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1b072a0ff821bcb0a317734048de8e8c212b454fc5a3bdffe8f877c1c40924c9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/a73084d219250ee8f75840a3809e69e787b35a09fee4fdfb0c09becdc91375d8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_conversation_05 -> audio/generated/fr-FR/lexical/a73084d219250ee8f75840a3809e69e787b35a09fee4fdfb0c09becdc91375d8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('be955cff-967e-5a96-bf50-6752224c5193', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_conversation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f93c390afdcbdb8543db3365b51d2498ecf3709a446d850d64fe0bf91664de57'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('03428bd2-7abd-541f-a265-60741118af44', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('be955cff-967e-5a96-bf50-6752224c5193', 1), 'f93c390afdcbdb8543db3365b51d2498ecf3709a446d850d64fe0bf91664de57',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/a73084d219250ee8f75840a3809e69e787b35a09fee4fdfb0c09becdc91375d8.mp3', 1018, '2026-09-14 08:52:44.982729', '1b072a0ff821bcb0a317734048de8e8c212b454fc5a3bdffe8f877c1c40924c9', 'validated', '{"audio_key":"a73084d219250ee8f75840a3809e69e787b35a09fee4fdfb0c09becdc91375d8","entity_key":"wf_first_conversation_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1b072a0ff821bcb0a317734048de8e8c212b454fc5a3bdffe8f877c1c40924c9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/a73084d219250ee8f75840a3809e69e787b35a09fee4fdfb0c09becdc91375d8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_greetings_04 -> audio/generated/fr-FR/lexical/a73084d219250ee8f75840a3809e69e787b35a09fee4fdfb0c09becdc91375d8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('47a212bd-909a-5eb3-9f31-967affb12275', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_greetings_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f93c390afdcbdb8543db3365b51d2498ecf3709a446d850d64fe0bf91664de57'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('059e34c8-d85c-56d1-b102-b1f602942cbe', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('47a212bd-909a-5eb3-9f31-967affb12275', 1), 'f93c390afdcbdb8543db3365b51d2498ecf3709a446d850d64fe0bf91664de57',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/a73084d219250ee8f75840a3809e69e787b35a09fee4fdfb0c09becdc91375d8.mp3', 1018, '2026-09-14 08:52:44.982729', '1b072a0ff821bcb0a317734048de8e8c212b454fc5a3bdffe8f877c1c40924c9', 'validated', '{"audio_key":"a73084d219250ee8f75840a3809e69e787b35a09fee4fdfb0c09becdc91375d8","entity_key":"lx_first_greetings_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1b072a0ff821bcb0a317734048de8e8c212b454fc5a3bdffe8f877c1c40924c9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/a73084d219250ee8f75840a3809e69e787b35a09fee4fdfb0c09becdc91375d8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_greetings_04 -> audio/generated/fr-FR/lexical/a73084d219250ee8f75840a3809e69e787b35a09fee4fdfb0c09becdc91375d8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('89a222c7-aa06-5162-a8e5-9010196c6bfc', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_greetings_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f93c390afdcbdb8543db3365b51d2498ecf3709a446d850d64fe0bf91664de57'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('523aa19f-4fc1-59b4-b826-bab684196000', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('89a222c7-aa06-5162-a8e5-9010196c6bfc', 1), 'f93c390afdcbdb8543db3365b51d2498ecf3709a446d850d64fe0bf91664de57',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/a73084d219250ee8f75840a3809e69e787b35a09fee4fdfb0c09becdc91375d8.mp3', 1018, '2026-09-14 08:52:44.982729', '1b072a0ff821bcb0a317734048de8e8c212b454fc5a3bdffe8f877c1c40924c9', 'validated', '{"audio_key":"a73084d219250ee8f75840a3809e69e787b35a09fee4fdfb0c09becdc91375d8","entity_key":"wf_first_greetings_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1b072a0ff821bcb0a317734048de8e8c212b454fc5a3bdffe8f877c1c40924c9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/a73084d219250ee8f75840a3809e69e787b35a09fee4fdfb0c09becdc91375d8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_sounds_05 -> audio/generated/fr-FR/lexical/ab0253dfc7603017c975433a35fedc7b307368da11fecc69e111791854cd550e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b90d5394-6969-52f7-809f-e63e76e7474b', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_sounds_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '343677762813eaeb65704cc8d9e96f7a444ba0cca92ff861af7f68648b3e6ef1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ac431f27-96fb-54a3-9f9f-9d2a1b72af68', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b90d5394-6969-52f7-809f-e63e76e7474b', 1), '343677762813eaeb65704cc8d9e96f7a444ba0cca92ff861af7f68648b3e6ef1',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/ab0253dfc7603017c975433a35fedc7b307368da11fecc69e111791854cd550e.mp3', 914, '2026-09-14 08:52:45.445624', '4855e8878740cebfe3f5804e663b72a5916ce65a2e1967c9bf9a89271826d5ec', 'validated', '{"audio_key":"ab0253dfc7603017c975433a35fedc7b307368da11fecc69e111791854cd550e","entity_key":"lx_first_sounds_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4855e8878740cebfe3f5804e663b72a5916ce65a2e1967c9bf9a89271826d5ec","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/ab0253dfc7603017c975433a35fedc7b307368da11fecc69e111791854cd550e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_sounds_05 -> audio/generated/fr-FR/lexical/ab0253dfc7603017c975433a35fedc7b307368da11fecc69e111791854cd550e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0634e2de-7c2d-5c90-97e5-3872072f0b3e', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_sounds_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '343677762813eaeb65704cc8d9e96f7a444ba0cca92ff861af7f68648b3e6ef1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5e2d1f22-1c5f-530b-99ec-4da908f52b90', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0634e2de-7c2d-5c90-97e5-3872072f0b3e', 1), '343677762813eaeb65704cc8d9e96f7a444ba0cca92ff861af7f68648b3e6ef1',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/ab0253dfc7603017c975433a35fedc7b307368da11fecc69e111791854cd550e.mp3', 914, '2026-09-14 08:52:45.445624', '4855e8878740cebfe3f5804e663b72a5916ce65a2e1967c9bf9a89271826d5ec', 'validated', '{"audio_key":"ab0253dfc7603017c975433a35fedc7b307368da11fecc69e111791854cd550e","entity_key":"wf_first_sounds_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4855e8878740cebfe3f5804e663b72a5916ce65a2e1967c9bf9a89271826d5ec","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/ab0253dfc7603017c975433a35fedc7b307368da11fecc69e111791854cd550e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_survival_words_05 -> audio/generated/fr-FR/lexical/af3f3029a1b2171f276bdca1e84b188ca92b264546dff2aca585cb273ad23a46.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('06c5323c-cb0d-5810-866c-4c7b59df7263', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_survival_words_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5c6c012d551bca3a4eb54843afe876e6b4bfb8bfee9e8900b4f276b4f33ef87b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('59cf780e-bff4-5102-9e6f-4a174edfb679', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('06c5323c-cb0d-5810-866c-4c7b59df7263', 1), '5c6c012d551bca3a4eb54843afe876e6b4bfb8bfee9e8900b4f276b4f33ef87b',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/af3f3029a1b2171f276bdca1e84b188ca92b264546dff2aca585cb273ad23a46.mp3', 1071, '2026-09-14 08:52:45.940962', '2c6aae1f5915a238ce3b1360d887a91582d54029e102b2e2aef9b78bc8a1689f', 'validated', '{"audio_key":"af3f3029a1b2171f276bdca1e84b188ca92b264546dff2aca585cb273ad23a46","entity_key":"lx_survival_words_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2c6aae1f5915a238ce3b1360d887a91582d54029e102b2e2aef9b78bc8a1689f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/af3f3029a1b2171f276bdca1e84b188ca92b264546dff2aca585cb273ad23a46.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_survival_words_05 -> audio/generated/fr-FR/lexical/af3f3029a1b2171f276bdca1e84b188ca92b264546dff2aca585cb273ad23a46.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('63b6b722-7e83-5765-84b8-e07da47c8724', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_survival_words_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5c6c012d551bca3a4eb54843afe876e6b4bfb8bfee9e8900b4f276b4f33ef87b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c51d2c1a-5da0-59f7-a8c7-9d2ebc754ac7', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('63b6b722-7e83-5765-84b8-e07da47c8724', 1), '5c6c012d551bca3a4eb54843afe876e6b4bfb8bfee9e8900b4f276b4f33ef87b',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/af3f3029a1b2171f276bdca1e84b188ca92b264546dff2aca585cb273ad23a46.mp3', 1071, '2026-09-14 08:52:45.940962', '2c6aae1f5915a238ce3b1360d887a91582d54029e102b2e2aef9b78bc8a1689f', 'validated', '{"audio_key":"af3f3029a1b2171f276bdca1e84b188ca92b264546dff2aca585cb273ad23a46","entity_key":"wf_survival_words_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2c6aae1f5915a238ce3b1360d887a91582d54029e102b2e2aef9b78bc8a1689f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/af3f3029a1b2171f276bdca1e84b188ca92b264546dff2aca585cb273ad23a46.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_objects_03 -> audio/generated/fr-FR/lexical/b91c728d976e15577bbaab59799b3f96f741c5e06441776baa3f3cda396cf44f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3b957cdd-b193-5716-8134-17960f2ce7b5', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_objects_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ece3e0fecebb5c6d69ecb09e4ed13311e8e67958fd76425fd5694233ad4a57f8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fc69d3ae-6641-553b-b505-93caf241f717', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3b957cdd-b193-5716-8134-17960f2ce7b5', 1), 'ece3e0fecebb5c6d69ecb09e4ed13311e8e67958fd76425fd5694233ad4a57f8',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/b91c728d976e15577bbaab59799b3f96f741c5e06441776baa3f3cda396cf44f.mp3', 1018, '2026-09-14 08:52:46.385902', 'f378a07fd4fa396a4527dbe5a3d375b671b6eaac75f02517f5e2c16d624eb9bd', 'validated', '{"audio_key":"b91c728d976e15577bbaab59799b3f96f741c5e06441776baa3f3cda396cf44f","entity_key":"lx_first_objects_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f378a07fd4fa396a4527dbe5a3d375b671b6eaac75f02517f5e2c16d624eb9bd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/b91c728d976e15577bbaab59799b3f96f741c5e06441776baa3f3cda396cf44f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_objects_03 -> audio/generated/fr-FR/lexical/b91c728d976e15577bbaab59799b3f96f741c5e06441776baa3f3cda396cf44f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('553216cb-1528-58e7-a988-f119071c9dd7', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_objects_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ece3e0fecebb5c6d69ecb09e4ed13311e8e67958fd76425fd5694233ad4a57f8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('84e9bfc3-3db3-58f5-ae77-75377b4fee9a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('553216cb-1528-58e7-a988-f119071c9dd7', 1), 'ece3e0fecebb5c6d69ecb09e4ed13311e8e67958fd76425fd5694233ad4a57f8',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/b91c728d976e15577bbaab59799b3f96f741c5e06441776baa3f3cda396cf44f.mp3', 1018, '2026-09-14 08:52:46.385902', 'f378a07fd4fa396a4527dbe5a3d375b671b6eaac75f02517f5e2c16d624eb9bd', 'validated', '{"audio_key":"b91c728d976e15577bbaab59799b3f96f741c5e06441776baa3f3cda396cf44f","entity_key":"wf_first_objects_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f378a07fd4fa396a4527dbe5a3d375b671b6eaac75f02517f5e2c16d624eb9bd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/b91c728d976e15577bbaab59799b3f96f741c5e06441776baa3f3cda396cf44f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_alphabet_accents_02 -> audio/generated/fr-FR/lexical/bccc99c128d415ce56d45c1d2569164f35db3049ec7c85967bfe5ffdaf57394b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('83ffc4af-21bf-5410-8784-031d373eda7b', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_alphabet_accents_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a9f51566bd6705f7ea6ad54bb9deb449f795582d6529a0e22207b8981233ec58'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('665c61eb-9996-5811-94e7-4d554349105d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('83ffc4af-21bf-5410-8784-031d373eda7b', 1), 'a9f51566bd6705f7ea6ad54bb9deb449f795582d6529a0e22207b8981233ec58',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/bccc99c128d415ce56d45c1d2569164f35db3049ec7c85967bfe5ffdaf57394b.mp3', 653, '2026-09-14 08:52:46.859623', '114b2d5993b8fd31ad034b4c92060135fd3f4ac6d14c917668f7be3419b460b3', 'validated', '{"audio_key":"bccc99c128d415ce56d45c1d2569164f35db3049ec7c85967bfe5ffdaf57394b","entity_key":"lx_alphabet_accents_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"114b2d5993b8fd31ad034b4c92060135fd3f4ac6d14c917668f7be3419b460b3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/bccc99c128d415ce56d45c1d2569164f35db3049ec7c85967bfe5ffdaf57394b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_alphabet_accents_02 -> audio/generated/fr-FR/lexical/bccc99c128d415ce56d45c1d2569164f35db3049ec7c85967bfe5ffdaf57394b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('69be7c52-6e7c-5559-98a5-7d76b2d1e5b5', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_alphabet_accents_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a9f51566bd6705f7ea6ad54bb9deb449f795582d6529a0e22207b8981233ec58'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d2231581-3dea-50a3-8f63-b5dc18a3e2b9', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('69be7c52-6e7c-5559-98a5-7d76b2d1e5b5', 1), 'a9f51566bd6705f7ea6ad54bb9deb449f795582d6529a0e22207b8981233ec58',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/bccc99c128d415ce56d45c1d2569164f35db3049ec7c85967bfe5ffdaf57394b.mp3', 653, '2026-09-14 08:52:46.859623', '114b2d5993b8fd31ad034b4c92060135fd3f4ac6d14c917668f7be3419b460b3', 'validated', '{"audio_key":"bccc99c128d415ce56d45c1d2569164f35db3049ec7c85967bfe5ffdaf57394b","entity_key":"wf_alphabet_accents_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"114b2d5993b8fd31ad034b4c92060135fd3f4ac6d14c917668f7be3419b460b3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/bccc99c128d415ce56d45c1d2569164f35db3049ec7c85967bfe5ffdaf57394b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_alphabet_accents_03 -> audio/generated/fr-FR/lexical/c254ad8305f1666adc05648fe9dc6f2d5165f9ae08e76bf8fa62daaf9e5028fb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e94a8c49-8814-58d8-8dfa-a984f1d9c3e5', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_alphabet_accents_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4a99557e4033c3539de2eb65472017cad5f9557f7a0625a09f1c3f6e2ba69c4c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e55051f1-c8d7-5843-8041-cccdfc7d9ed6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e94a8c49-8814-58d8-8dfa-a984f1d9c3e5', 1), '4a99557e4033c3539de2eb65472017cad5f9557f7a0625a09f1c3f6e2ba69c4c',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/c254ad8305f1666adc05648fe9dc6f2d5165f9ae08e76bf8fa62daaf9e5028fb.mp3', 835, '2026-09-14 08:52:47.305949', '3f34b3c0f435e235d3d345d5a7fa11cce931df37d9f7113d4e2262f321532404', 'validated', '{"audio_key":"c254ad8305f1666adc05648fe9dc6f2d5165f9ae08e76bf8fa62daaf9e5028fb","entity_key":"lx_alphabet_accents_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3f34b3c0f435e235d3d345d5a7fa11cce931df37d9f7113d4e2262f321532404","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/c254ad8305f1666adc05648fe9dc6f2d5165f9ae08e76bf8fa62daaf9e5028fb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_alphabet_accents_03 -> audio/generated/fr-FR/lexical/c254ad8305f1666adc05648fe9dc6f2d5165f9ae08e76bf8fa62daaf9e5028fb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('783f830a-2b41-5a8f-ab14-1249e567a1ef', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_alphabet_accents_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4a99557e4033c3539de2eb65472017cad5f9557f7a0625a09f1c3f6e2ba69c4c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6ddc489a-eb8b-5f4f-9a5e-ab4962495109', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('783f830a-2b41-5a8f-ab14-1249e567a1ef', 1), '4a99557e4033c3539de2eb65472017cad5f9557f7a0625a09f1c3f6e2ba69c4c',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/c254ad8305f1666adc05648fe9dc6f2d5165f9ae08e76bf8fa62daaf9e5028fb.mp3', 835, '2026-09-14 08:52:47.305949', '3f34b3c0f435e235d3d345d5a7fa11cce931df37d9f7113d4e2262f321532404', 'validated', '{"audio_key":"c254ad8305f1666adc05648fe9dc6f2d5165f9ae08e76bf8fa62daaf9e5028fb","entity_key":"wf_alphabet_accents_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3f34b3c0f435e235d3d345d5a7fa11cce931df37d9f7113d4e2262f321532404","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/c254ad8305f1666adc05648fe9dc6f2d5165f9ae08e76bf8fa62daaf9e5028fb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_conversation_06 -> audio/generated/fr-FR/lexical/c7692bfb866b9d3e286f573e802d853ba7a702b09d39d92fc8cd8931f99bc594.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f479d070-99c3-504d-887c-ad6e03b213da', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_conversation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f0c0bfab26747539b0aefe077933027ea160828cd4565ae6107b7c34ec4ab44f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b4d110c5-c137-5bcf-96da-cc6a47e45369', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f479d070-99c3-504d-887c-ad6e03b213da', 1), 'f0c0bfab26747539b0aefe077933027ea160828cd4565ae6107b7c34ec4ab44f',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/c7692bfb866b9d3e286f573e802d853ba7a702b09d39d92fc8cd8931f99bc594.mp3', 1018, '2026-09-14 08:52:47.823487', '141d240e7585cee17706fac49eb3aebc00efe3508555fa319cae982e3881f7f1', 'validated', '{"audio_key":"c7692bfb866b9d3e286f573e802d853ba7a702b09d39d92fc8cd8931f99bc594","entity_key":"lx_first_conversation_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"141d240e7585cee17706fac49eb3aebc00efe3508555fa319cae982e3881f7f1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/c7692bfb866b9d3e286f573e802d853ba7a702b09d39d92fc8cd8931f99bc594.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_conversation_06 -> audio/generated/fr-FR/lexical/c7692bfb866b9d3e286f573e802d853ba7a702b09d39d92fc8cd8931f99bc594.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2b545967-0f9a-51dd-8976-0fa73a91f9c9', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_conversation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f0c0bfab26747539b0aefe077933027ea160828cd4565ae6107b7c34ec4ab44f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('16b4aedf-ce2d-59c8-b93f-15392b7aae42', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2b545967-0f9a-51dd-8976-0fa73a91f9c9', 1), 'f0c0bfab26747539b0aefe077933027ea160828cd4565ae6107b7c34ec4ab44f',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/c7692bfb866b9d3e286f573e802d853ba7a702b09d39d92fc8cd8931f99bc594.mp3', 1018, '2026-09-14 08:52:47.823487', '141d240e7585cee17706fac49eb3aebc00efe3508555fa319cae982e3881f7f1', 'validated', '{"audio_key":"c7692bfb866b9d3e286f573e802d853ba7a702b09d39d92fc8cd8931f99bc594","entity_key":"wf_first_conversation_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"141d240e7585cee17706fac49eb3aebc00efe3508555fa319cae982e3881f7f1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/c7692bfb866b9d3e286f573e802d853ba7a702b09d39d92fc8cd8931f99bc594.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_greetings_05 -> audio/generated/fr-FR/lexical/c7692bfb866b9d3e286f573e802d853ba7a702b09d39d92fc8cd8931f99bc594.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f479d070-99c3-504d-887c-ad6e03b213da', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_greetings_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f0c0bfab26747539b0aefe077933027ea160828cd4565ae6107b7c34ec4ab44f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b4d110c5-c137-5bcf-96da-cc6a47e45369', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f479d070-99c3-504d-887c-ad6e03b213da', 1), 'f0c0bfab26747539b0aefe077933027ea160828cd4565ae6107b7c34ec4ab44f',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/c7692bfb866b9d3e286f573e802d853ba7a702b09d39d92fc8cd8931f99bc594.mp3', 1018, '2026-09-14 08:52:47.823487', '141d240e7585cee17706fac49eb3aebc00efe3508555fa319cae982e3881f7f1', 'validated', '{"audio_key":"c7692bfb866b9d3e286f573e802d853ba7a702b09d39d92fc8cd8931f99bc594","entity_key":"lx_first_greetings_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"141d240e7585cee17706fac49eb3aebc00efe3508555fa319cae982e3881f7f1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/c7692bfb866b9d3e286f573e802d853ba7a702b09d39d92fc8cd8931f99bc594.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_greetings_05 -> audio/generated/fr-FR/lexical/c7692bfb866b9d3e286f573e802d853ba7a702b09d39d92fc8cd8931f99bc594.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('09a4f05b-8c1c-5b6e-a41b-917636945fa6', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_greetings_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f0c0bfab26747539b0aefe077933027ea160828cd4565ae6107b7c34ec4ab44f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('34cd0fb2-8635-56cb-91e3-f5942452f1ec', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('09a4f05b-8c1c-5b6e-a41b-917636945fa6', 1), 'f0c0bfab26747539b0aefe077933027ea160828cd4565ae6107b7c34ec4ab44f',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/c7692bfb866b9d3e286f573e802d853ba7a702b09d39d92fc8cd8931f99bc594.mp3', 1018, '2026-09-14 08:52:47.823487', '141d240e7585cee17706fac49eb3aebc00efe3508555fa319cae982e3881f7f1', 'validated', '{"audio_key":"c7692bfb866b9d3e286f573e802d853ba7a702b09d39d92fc8cd8931f99bc594","entity_key":"wf_first_greetings_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"141d240e7585cee17706fac49eb3aebc00efe3508555fa319cae982e3881f7f1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/c7692bfb866b9d3e286f573e802d853ba7a702b09d39d92fc8cd8931f99bc594.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_objects_04 -> audio/generated/fr-FR/lexical/cca04786f15fe61accffa8c98ba3470632d102da69b47dcc49fa56a59c718488.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0ab26670-1c59-5e57-a797-b734e45f0eeb', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_objects_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2799ccda3e2f3d9b2123b839a058666b21a56aea695a39e6b423f47250759dd7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e1373dfb-91f5-5996-a301-69ef8d3197c8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0ab26670-1c59-5e57-a797-b734e45f0eeb', 1), '2799ccda3e2f3d9b2123b839a058666b21a56aea695a39e6b423f47250759dd7',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/cca04786f15fe61accffa8c98ba3470632d102da69b47dcc49fa56a59c718488.mp3', 914, '2026-09-14 08:52:48.271353', 'a4ac8ebd7b2ad9dab4d980726855a9b5e9bdb3fa80f228f943aefed3e59dfd48', 'validated', '{"audio_key":"cca04786f15fe61accffa8c98ba3470632d102da69b47dcc49fa56a59c718488","entity_key":"lx_first_objects_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a4ac8ebd7b2ad9dab4d980726855a9b5e9bdb3fa80f228f943aefed3e59dfd48","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/cca04786f15fe61accffa8c98ba3470632d102da69b47dcc49fa56a59c718488.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_objects_04 -> audio/generated/fr-FR/lexical/cca04786f15fe61accffa8c98ba3470632d102da69b47dcc49fa56a59c718488.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('281d320e-968a-52ef-96c5-25baed8a68cf', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_objects_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2799ccda3e2f3d9b2123b839a058666b21a56aea695a39e6b423f47250759dd7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2c32d84b-ae10-53f0-8dea-0e52e19e778a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('281d320e-968a-52ef-96c5-25baed8a68cf', 1), '2799ccda3e2f3d9b2123b839a058666b21a56aea695a39e6b423f47250759dd7',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/cca04786f15fe61accffa8c98ba3470632d102da69b47dcc49fa56a59c718488.mp3', 914, '2026-09-14 08:52:48.271353', 'a4ac8ebd7b2ad9dab4d980726855a9b5e9bdb3fa80f228f943aefed3e59dfd48', 'validated', '{"audio_key":"cca04786f15fe61accffa8c98ba3470632d102da69b47dcc49fa56a59c718488","entity_key":"wf_first_objects_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a4ac8ebd7b2ad9dab4d980726855a9b5e9bdb3fa80f228f943aefed3e59dfd48","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/cca04786f15fe61accffa8c98ba3470632d102da69b47dcc49fa56a59c718488.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_conversation_02 -> audio/generated/fr-FR/lexical/d2a9901f18605be1ef32c9306cec5a13229a786808a3c14ca01e1feead449973.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ddf2947e-d143-53c7-8da7-2c3554b9fd49', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_conversation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7bd7457667348e326641d7bb749f0d40c3335f4eb5788a65e81dc442b1ad1f6a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4a1ec775-ea12-5605-86fb-f4e8d5a74747', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ddf2947e-d143-53c7-8da7-2c3554b9fd49', 1), '7bd7457667348e326641d7bb749f0d40c3335f4eb5788a65e81dc442b1ad1f6a',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/d2a9901f18605be1ef32c9306cec5a13229a786808a3c14ca01e1feead449973.mp3', 1018, '2026-09-14 08:52:48.762793', '2a41750ace89d2995ce2ea9991dace315e4ca35fe4eda96775060a5662053ed0', 'validated', '{"audio_key":"d2a9901f18605be1ef32c9306cec5a13229a786808a3c14ca01e1feead449973","entity_key":"lx_first_conversation_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2a41750ace89d2995ce2ea9991dace315e4ca35fe4eda96775060a5662053ed0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/d2a9901f18605be1ef32c9306cec5a13229a786808a3c14ca01e1feead449973.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_conversation_02 -> audio/generated/fr-FR/lexical/d2a9901f18605be1ef32c9306cec5a13229a786808a3c14ca01e1feead449973.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4bde9a21-538f-5942-935b-e05bfcac03e8', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_conversation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7bd7457667348e326641d7bb749f0d40c3335f4eb5788a65e81dc442b1ad1f6a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b8c52af2-2993-5079-b76b-a17498d471ed', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4bde9a21-538f-5942-935b-e05bfcac03e8', 1), '7bd7457667348e326641d7bb749f0d40c3335f4eb5788a65e81dc442b1ad1f6a',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/d2a9901f18605be1ef32c9306cec5a13229a786808a3c14ca01e1feead449973.mp3', 1018, '2026-09-14 08:52:48.762793', '2a41750ace89d2995ce2ea9991dace315e4ca35fe4eda96775060a5662053ed0', 'validated', '{"audio_key":"d2a9901f18605be1ef32c9306cec5a13229a786808a3c14ca01e1feead449973","entity_key":"wf_first_conversation_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2a41750ace89d2995ce2ea9991dace315e4ca35fe4eda96775060a5662053ed0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/d2a9901f18605be1ef32c9306cec5a13229a786808a3c14ca01e1feead449973.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_my_name_01 -> audio/generated/fr-FR/lexical/d2a9901f18605be1ef32c9306cec5a13229a786808a3c14ca01e1feead449973.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ddf2947e-d143-53c7-8da7-2c3554b9fd49', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_my_name_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7bd7457667348e326641d7bb749f0d40c3335f4eb5788a65e81dc442b1ad1f6a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4a1ec775-ea12-5605-86fb-f4e8d5a74747', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ddf2947e-d143-53c7-8da7-2c3554b9fd49', 1), '7bd7457667348e326641d7bb749f0d40c3335f4eb5788a65e81dc442b1ad1f6a',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/d2a9901f18605be1ef32c9306cec5a13229a786808a3c14ca01e1feead449973.mp3', 1018, '2026-09-14 08:52:48.762793', '2a41750ace89d2995ce2ea9991dace315e4ca35fe4eda96775060a5662053ed0', 'validated', '{"audio_key":"d2a9901f18605be1ef32c9306cec5a13229a786808a3c14ca01e1feead449973","entity_key":"lx_my_name_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2a41750ace89d2995ce2ea9991dace315e4ca35fe4eda96775060a5662053ed0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/d2a9901f18605be1ef32c9306cec5a13229a786808a3c14ca01e1feead449973.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_my_name_01 -> audio/generated/fr-FR/lexical/d2a9901f18605be1ef32c9306cec5a13229a786808a3c14ca01e1feead449973.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2b0e8b3f-340d-5d7f-b987-e5c8fde33e61', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_my_name_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7bd7457667348e326641d7bb749f0d40c3335f4eb5788a65e81dc442b1ad1f6a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5aa7593b-6540-5a1a-880f-e716c320838e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2b0e8b3f-340d-5d7f-b987-e5c8fde33e61', 1), '7bd7457667348e326641d7bb749f0d40c3335f4eb5788a65e81dc442b1ad1f6a',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/d2a9901f18605be1ef32c9306cec5a13229a786808a3c14ca01e1feead449973.mp3', 1018, '2026-09-14 08:52:48.762793', '2a41750ace89d2995ce2ea9991dace315e4ca35fe4eda96775060a5662053ed0', 'validated', '{"audio_key":"d2a9901f18605be1ef32c9306cec5a13229a786808a3c14ca01e1feead449973","entity_key":"wf_my_name_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2a41750ace89d2995ce2ea9991dace315e4ca35fe4eda96775060a5662053ed0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/d2a9901f18605be1ef32c9306cec5a13229a786808a3c14ca01e1feead449973.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_objects_06 -> audio/generated/fr-FR/lexical/d42d7fee371ec2b7c59ddde165570c18734348b3d5b4992daf4479771971b2f7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2d7876fa-ff6b-5216-b87a-fe627ed9c664', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_objects_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3337ee7b93fbaa18a2c0a312ec05059ca0ccb8532c19072ef66df2705766ff50'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7a9a623c-e4f6-5217-bde6-0d2b211010cd', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2d7876fa-ff6b-5216-b87a-fe627ed9c664', 1), '3337ee7b93fbaa18a2c0a312ec05059ca0ccb8532c19072ef66df2705766ff50',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/d42d7fee371ec2b7c59ddde165570c18734348b3d5b4992daf4479771971b2f7.mp3', 1097, '2026-09-14 08:52:49.213648', '8bdc3b5d92ba25b2ed46a5458d129fdb1331bedd7f792f671212598f7c247819', 'validated', '{"audio_key":"d42d7fee371ec2b7c59ddde165570c18734348b3d5b4992daf4479771971b2f7","entity_key":"lx_first_objects_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8bdc3b5d92ba25b2ed46a5458d129fdb1331bedd7f792f671212598f7c247819","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/d42d7fee371ec2b7c59ddde165570c18734348b3d5b4992daf4479771971b2f7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_objects_06 -> audio/generated/fr-FR/lexical/d42d7fee371ec2b7c59ddde165570c18734348b3d5b4992daf4479771971b2f7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d6e302d9-41df-5c47-80ee-00ee3cf6069f', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_objects_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3337ee7b93fbaa18a2c0a312ec05059ca0ccb8532c19072ef66df2705766ff50'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9c987b8e-c766-53de-8017-ca420b1b31f7', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d6e302d9-41df-5c47-80ee-00ee3cf6069f', 1), '3337ee7b93fbaa18a2c0a312ec05059ca0ccb8532c19072ef66df2705766ff50',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/d42d7fee371ec2b7c59ddde165570c18734348b3d5b4992daf4479771971b2f7.mp3', 1097, '2026-09-14 08:52:49.213648', '8bdc3b5d92ba25b2ed46a5458d129fdb1331bedd7f792f671212598f7c247819', 'validated', '{"audio_key":"d42d7fee371ec2b7c59ddde165570c18734348b3d5b4992daf4479771971b2f7","entity_key":"wf_first_objects_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8bdc3b5d92ba25b2ed46a5458d129fdb1331bedd7f792f671212598f7c247819","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/d42d7fee371ec2b7c59ddde165570c18734348b3d5b4992daf4479771971b2f7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_conversation_01 -> audio/generated/fr-FR/lexical/d4d2ddd44229a31049790f225651eaab78b1e561cb5d0cb5f182d1bc9fbc5ac5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('bd20353b-5361-55cd-b0de-3e972a08ff09', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_conversation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2cb4b1431b84ec15d35ed83bb927e27e8967d75f4bcd9cc4b25c8d879ae23e18'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7db303a4-2457-58cd-8cc3-402511d00dd9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('bd20353b-5361-55cd-b0de-3e972a08ff09', 1), '2cb4b1431b84ec15d35ed83bb927e27e8967d75f4bcd9cc4b25c8d879ae23e18',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/d4d2ddd44229a31049790f225651eaab78b1e561cb5d0cb5f182d1bc9fbc5ac5.mp3', 862, '2026-09-14 08:52:49.685944', '9267513cc00776c248634b24717516ac051cdadea49d25b8845e5b2e00c6584b', 'validated', '{"audio_key":"d4d2ddd44229a31049790f225651eaab78b1e561cb5d0cb5f182d1bc9fbc5ac5","entity_key":"lx_first_conversation_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9267513cc00776c248634b24717516ac051cdadea49d25b8845e5b2e00c6584b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/d4d2ddd44229a31049790f225651eaab78b1e561cb5d0cb5f182d1bc9fbc5ac5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_conversation_01 -> audio/generated/fr-FR/lexical/d4d2ddd44229a31049790f225651eaab78b1e561cb5d0cb5f182d1bc9fbc5ac5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('88206992-c149-52e3-925b-027c0be23469', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_conversation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2cb4b1431b84ec15d35ed83bb927e27e8967d75f4bcd9cc4b25c8d879ae23e18'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2e01546b-39d2-5e0d-be0f-2ba8bc3fbf2a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('88206992-c149-52e3-925b-027c0be23469', 1), '2cb4b1431b84ec15d35ed83bb927e27e8967d75f4bcd9cc4b25c8d879ae23e18',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/d4d2ddd44229a31049790f225651eaab78b1e561cb5d0cb5f182d1bc9fbc5ac5.mp3', 862, '2026-09-14 08:52:49.685944', '9267513cc00776c248634b24717516ac051cdadea49d25b8845e5b2e00c6584b', 'validated', '{"audio_key":"d4d2ddd44229a31049790f225651eaab78b1e561cb5d0cb5f182d1bc9fbc5ac5","entity_key":"wf_first_conversation_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9267513cc00776c248634b24717516ac051cdadea49d25b8845e5b2e00c6584b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/d4d2ddd44229a31049790f225651eaab78b1e561cb5d0cb5f182d1bc9fbc5ac5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_greetings_01 -> audio/generated/fr-FR/lexical/d4d2ddd44229a31049790f225651eaab78b1e561cb5d0cb5f182d1bc9fbc5ac5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('bd20353b-5361-55cd-b0de-3e972a08ff09', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_greetings_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2cb4b1431b84ec15d35ed83bb927e27e8967d75f4bcd9cc4b25c8d879ae23e18'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7db303a4-2457-58cd-8cc3-402511d00dd9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('bd20353b-5361-55cd-b0de-3e972a08ff09', 1), '2cb4b1431b84ec15d35ed83bb927e27e8967d75f4bcd9cc4b25c8d879ae23e18',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/d4d2ddd44229a31049790f225651eaab78b1e561cb5d0cb5f182d1bc9fbc5ac5.mp3', 862, '2026-09-14 08:52:49.685944', '9267513cc00776c248634b24717516ac051cdadea49d25b8845e5b2e00c6584b', 'validated', '{"audio_key":"d4d2ddd44229a31049790f225651eaab78b1e561cb5d0cb5f182d1bc9fbc5ac5","entity_key":"lx_first_greetings_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9267513cc00776c248634b24717516ac051cdadea49d25b8845e5b2e00c6584b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/d4d2ddd44229a31049790f225651eaab78b1e561cb5d0cb5f182d1bc9fbc5ac5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_greetings_01 -> audio/generated/fr-FR/lexical/d4d2ddd44229a31049790f225651eaab78b1e561cb5d0cb5f182d1bc9fbc5ac5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('fdf18762-0496-5efa-8e9f-7a00fff41e57', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_greetings_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2cb4b1431b84ec15d35ed83bb927e27e8967d75f4bcd9cc4b25c8d879ae23e18'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('817a7183-53d0-542d-87b6-5f48877f95aa', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('fdf18762-0496-5efa-8e9f-7a00fff41e57', 1), '2cb4b1431b84ec15d35ed83bb927e27e8967d75f4bcd9cc4b25c8d879ae23e18',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/d4d2ddd44229a31049790f225651eaab78b1e561cb5d0cb5f182d1bc9fbc5ac5.mp3', 862, '2026-09-14 08:52:49.685944', '9267513cc00776c248634b24717516ac051cdadea49d25b8845e5b2e00c6584b', 'validated', '{"audio_key":"d4d2ddd44229a31049790f225651eaab78b1e561cb5d0cb5f182d1bc9fbc5ac5","entity_key":"wf_first_greetings_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9267513cc00776c248634b24717516ac051cdadea49d25b8845e5b2e00c6584b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/d4d2ddd44229a31049790f225651eaab78b1e561cb5d0cb5f182d1bc9fbc5ac5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_my_name_03 -> audio/generated/fr-FR/lexical/d7ae839cd7166924cba498585d2c8fbae1cb4de31f07424cfd2c5039cc7b00ea.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c21392f8-c4b1-5808-b1f7-a2484d8d2a4b', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_my_name_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9c652b6939c46551eae0cd2fd317a3138984ad331e3fa2168b5f7d0d1e50ba58'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8df82122-1521-5eb3-acaa-b5ee5822e202', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c21392f8-c4b1-5808-b1f7-a2484d8d2a4b', 1), '9c652b6939c46551eae0cd2fd317a3138984ad331e3fa2168b5f7d0d1e50ba58',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/d7ae839cd7166924cba498585d2c8fbae1cb4de31f07424cfd2c5039cc7b00ea.mp3', 1071, '2026-09-14 08:52:50.166538', '17f725e27068f7cdc6e794773d6b7627f03b08d2887a5bf79fc642c25b26a546', 'validated', '{"audio_key":"d7ae839cd7166924cba498585d2c8fbae1cb4de31f07424cfd2c5039cc7b00ea","entity_key":"lx_my_name_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"17f725e27068f7cdc6e794773d6b7627f03b08d2887a5bf79fc642c25b26a546","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/d7ae839cd7166924cba498585d2c8fbae1cb4de31f07424cfd2c5039cc7b00ea.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_my_name_03 -> audio/generated/fr-FR/lexical/d7ae839cd7166924cba498585d2c8fbae1cb4de31f07424cfd2c5039cc7b00ea.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f533df99-75d9-5702-8faa-0406f449a080', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_my_name_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9c652b6939c46551eae0cd2fd317a3138984ad331e3fa2168b5f7d0d1e50ba58'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9158ab66-a59d-5a22-84c1-d41fd94e56e6', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f533df99-75d9-5702-8faa-0406f449a080', 1), '9c652b6939c46551eae0cd2fd317a3138984ad331e3fa2168b5f7d0d1e50ba58',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/d7ae839cd7166924cba498585d2c8fbae1cb4de31f07424cfd2c5039cc7b00ea.mp3', 1071, '2026-09-14 08:52:50.166538', '17f725e27068f7cdc6e794773d6b7627f03b08d2887a5bf79fc642c25b26a546', 'validated', '{"audio_key":"d7ae839cd7166924cba498585d2c8fbae1cb4de31f07424cfd2c5039cc7b00ea","entity_key":"wf_my_name_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"17f725e27068f7cdc6e794773d6b7627f03b08d2887a5bf79fc642c25b26a546","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/d7ae839cd7166924cba498585d2c8fbae1cb4de31f07424cfd2c5039cc7b00ea.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_sounds_01 -> audio/generated/fr-FR/lexical/da356ddbe3ebb750079b6d2067ae28eb429c861afc723db41fc0e996ceb3a729.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('046741fa-c47e-54f3-8cfc-b12e957ae5ef', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_sounds_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fc74181ece96ac0d3a8d14da85058f9a336cab3ea77d797cfbb9fadcf49e86d0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b086e556-d7b5-59b8-b0f2-37fc369a7478', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('046741fa-c47e-54f3-8cfc-b12e957ae5ef', 1), 'fc74181ece96ac0d3a8d14da85058f9a336cab3ea77d797cfbb9fadcf49e86d0',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/da356ddbe3ebb750079b6d2067ae28eb429c861afc723db41fc0e996ceb3a729.mp3', 679, '2026-09-14 08:52:50.592196', '1d3ee58cdfd8c638789a8deef6cd56a29b1e0d1c4bad406148e8b8a6e03b365c', 'validated', '{"audio_key":"da356ddbe3ebb750079b6d2067ae28eb429c861afc723db41fc0e996ceb3a729","entity_key":"lx_first_sounds_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1d3ee58cdfd8c638789a8deef6cd56a29b1e0d1c4bad406148e8b8a6e03b365c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/da356ddbe3ebb750079b6d2067ae28eb429c861afc723db41fc0e996ceb3a729.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_sounds_01 -> audio/generated/fr-FR/lexical/da356ddbe3ebb750079b6d2067ae28eb429c861afc723db41fc0e996ceb3a729.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c8fcf169-5eaf-5aaa-814c-2806cad119af', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_sounds_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fc74181ece96ac0d3a8d14da85058f9a336cab3ea77d797cfbb9fadcf49e86d0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c0d8de27-35b0-5673-b9e6-ba1441260b8d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c8fcf169-5eaf-5aaa-814c-2806cad119af', 1), 'fc74181ece96ac0d3a8d14da85058f9a336cab3ea77d797cfbb9fadcf49e86d0',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/da356ddbe3ebb750079b6d2067ae28eb429c861afc723db41fc0e996ceb3a729.mp3', 679, '2026-09-14 08:52:50.592196', '1d3ee58cdfd8c638789a8deef6cd56a29b1e0d1c4bad406148e8b8a6e03b365c', 'validated', '{"audio_key":"da356ddbe3ebb750079b6d2067ae28eb429c861afc723db41fc0e996ceb3a729","entity_key":"wf_first_sounds_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1d3ee58cdfd8c638789a8deef6cd56a29b1e0d1c4bad406148e8b8a6e03b365c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/da356ddbe3ebb750079b6d2067ae28eb429c861afc723db41fc0e996ceb3a729.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_polite_words_02 -> audio/generated/fr-FR/lexical/e0022f2e89a2159502ad8c521920db1b86c4088858b7f9c65f40d16ba0e6d1af.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('da5b2e4e-6800-5b24-960b-82d39888e926', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_polite_words_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f4f1e5e2f2227d5a6972a58b1c1b9fd42fdd87e727c45e475ff0961be5a9a5c0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d233b0bb-7ec3-5b65-8d49-d14dabc8a46b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('da5b2e4e-6800-5b24-960b-82d39888e926', 1), 'f4f1e5e2f2227d5a6972a58b1c1b9fd42fdd87e727c45e475ff0961be5a9a5c0',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/e0022f2e89a2159502ad8c521920db1b86c4088858b7f9c65f40d16ba0e6d1af.mp3', 1071, '2026-09-14 08:52:51.107720', '9f6202c92a098669c73b3d0eecc4629d21fbf681f8e87dcf3eaff7d0a9d03576', 'validated', '{"audio_key":"e0022f2e89a2159502ad8c521920db1b86c4088858b7f9c65f40d16ba0e6d1af","entity_key":"lx_polite_words_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9f6202c92a098669c73b3d0eecc4629d21fbf681f8e87dcf3eaff7d0a9d03576","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/e0022f2e89a2159502ad8c521920db1b86c4088858b7f9c65f40d16ba0e6d1af.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_polite_words_02 -> audio/generated/fr-FR/lexical/e0022f2e89a2159502ad8c521920db1b86c4088858b7f9c65f40d16ba0e6d1af.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7b4fc912-e65d-5aec-98ea-a0d61e0bfb72', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_polite_words_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f4f1e5e2f2227d5a6972a58b1c1b9fd42fdd87e727c45e475ff0961be5a9a5c0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('663e0edf-7af5-54dc-b872-273beec7942e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7b4fc912-e65d-5aec-98ea-a0d61e0bfb72', 1), 'f4f1e5e2f2227d5a6972a58b1c1b9fd42fdd87e727c45e475ff0961be5a9a5c0',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/e0022f2e89a2159502ad8c521920db1b86c4088858b7f9c65f40d16ba0e6d1af.mp3', 1071, '2026-09-14 08:52:51.107720', '9f6202c92a098669c73b3d0eecc4629d21fbf681f8e87dcf3eaff7d0a9d03576', 'validated', '{"audio_key":"e0022f2e89a2159502ad8c521920db1b86c4088858b7f9c65f40d16ba0e6d1af","entity_key":"wf_polite_words_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9f6202c92a098669c73b3d0eecc4629d21fbf681f8e87dcf3eaff7d0a9d03576","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/e0022f2e89a2159502ad8c521920db1b86c4088858b7f9c65f40d16ba0e6d1af.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_conversation_04 -> audio/generated/fr-FR/lexical/e0921f685af336fae53fffee60fa499f4f45b8ec0da1dba08888cdbe5fc5bc30.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e13cc712-578e-5b40-a7a3-961aa616eec1', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_conversation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '38dbfe0f056f7846834b9b68abb7cc8e4d2ab1f27f287caffbabb98e74915356'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e7309673-c823-5f98-9708-21fbbb6947d6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e13cc712-578e-5b40-a7a3-961aa616eec1', 1), '38dbfe0f056f7846834b9b68abb7cc8e4d2ab1f27f287caffbabb98e74915356',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/e0921f685af336fae53fffee60fa499f4f45b8ec0da1dba08888cdbe5fc5bc30.mp3', 862, '2026-09-14 08:52:51.536370', 'c3dfd8b52a99728cba6808eaddb9efd13a143a4fa1fabb7c5448871aa4a9bb41', 'validated', '{"audio_key":"e0921f685af336fae53fffee60fa499f4f45b8ec0da1dba08888cdbe5fc5bc30","entity_key":"lx_first_conversation_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c3dfd8b52a99728cba6808eaddb9efd13a143a4fa1fabb7c5448871aa4a9bb41","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/e0921f685af336fae53fffee60fa499f4f45b8ec0da1dba08888cdbe5fc5bc30.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_conversation_04 -> audio/generated/fr-FR/lexical/e0921f685af336fae53fffee60fa499f4f45b8ec0da1dba08888cdbe5fc5bc30.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6610709f-9120-573d-8e34-18b6abddc45f', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_conversation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '38dbfe0f056f7846834b9b68abb7cc8e4d2ab1f27f287caffbabb98e74915356'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bc0f5ec5-a732-5dc1-a2c7-df88d24ac602', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6610709f-9120-573d-8e34-18b6abddc45f', 1), '38dbfe0f056f7846834b9b68abb7cc8e4d2ab1f27f287caffbabb98e74915356',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/e0921f685af336fae53fffee60fa499f4f45b8ec0da1dba08888cdbe5fc5bc30.mp3', 862, '2026-09-14 08:52:51.536370', 'c3dfd8b52a99728cba6808eaddb9efd13a143a4fa1fabb7c5448871aa4a9bb41', 'validated', '{"audio_key":"e0921f685af336fae53fffee60fa499f4f45b8ec0da1dba08888cdbe5fc5bc30","entity_key":"wf_first_conversation_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c3dfd8b52a99728cba6808eaddb9efd13a143a4fa1fabb7c5448871aa4a9bb41","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/e0921f685af336fae53fffee60fa499f4f45b8ec0da1dba08888cdbe5fc5bc30.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_how_are_you_05 -> audio/generated/fr-FR/lexical/e0921f685af336fae53fffee60fa499f4f45b8ec0da1dba08888cdbe5fc5bc30.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e13cc712-578e-5b40-a7a3-961aa616eec1', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_how_are_you_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '38dbfe0f056f7846834b9b68abb7cc8e4d2ab1f27f287caffbabb98e74915356'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e7309673-c823-5f98-9708-21fbbb6947d6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e13cc712-578e-5b40-a7a3-961aa616eec1', 1), '38dbfe0f056f7846834b9b68abb7cc8e4d2ab1f27f287caffbabb98e74915356',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/e0921f685af336fae53fffee60fa499f4f45b8ec0da1dba08888cdbe5fc5bc30.mp3', 862, '2026-09-14 08:52:51.536370', 'c3dfd8b52a99728cba6808eaddb9efd13a143a4fa1fabb7c5448871aa4a9bb41', 'validated', '{"audio_key":"e0921f685af336fae53fffee60fa499f4f45b8ec0da1dba08888cdbe5fc5bc30","entity_key":"lx_how_are_you_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c3dfd8b52a99728cba6808eaddb9efd13a143a4fa1fabb7c5448871aa4a9bb41","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/e0921f685af336fae53fffee60fa499f4f45b8ec0da1dba08888cdbe5fc5bc30.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_how_are_you_05 -> audio/generated/fr-FR/lexical/e0921f685af336fae53fffee60fa499f4f45b8ec0da1dba08888cdbe5fc5bc30.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('931d6d0c-ffb9-5531-b239-28e3d6340a27', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_how_are_you_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '38dbfe0f056f7846834b9b68abb7cc8e4d2ab1f27f287caffbabb98e74915356'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9945bd5c-348d-503f-b330-1824f2bd1b24', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('931d6d0c-ffb9-5531-b239-28e3d6340a27', 1), '38dbfe0f056f7846834b9b68abb7cc8e4d2ab1f27f287caffbabb98e74915356',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/e0921f685af336fae53fffee60fa499f4f45b8ec0da1dba08888cdbe5fc5bc30.mp3', 862, '2026-09-14 08:52:51.536370', 'c3dfd8b52a99728cba6808eaddb9efd13a143a4fa1fabb7c5448871aa4a9bb41', 'validated', '{"audio_key":"e0921f685af336fae53fffee60fa499f4f45b8ec0da1dba08888cdbe5fc5bc30","entity_key":"wf_how_are_you_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c3dfd8b52a99728cba6808eaddb9efd13a143a4fa1fabb7c5448871aa4a9bb41","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/e0921f685af336fae53fffee60fa499f4f45b8ec0da1dba08888cdbe5fc5bc30.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_polite_words_03 -> audio/generated/fr-FR/lexical/e0921f685af336fae53fffee60fa499f4f45b8ec0da1dba08888cdbe5fc5bc30.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e13cc712-578e-5b40-a7a3-961aa616eec1', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_polite_words_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '38dbfe0f056f7846834b9b68abb7cc8e4d2ab1f27f287caffbabb98e74915356'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e7309673-c823-5f98-9708-21fbbb6947d6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e13cc712-578e-5b40-a7a3-961aa616eec1', 1), '38dbfe0f056f7846834b9b68abb7cc8e4d2ab1f27f287caffbabb98e74915356',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/e0921f685af336fae53fffee60fa499f4f45b8ec0da1dba08888cdbe5fc5bc30.mp3', 862, '2026-09-14 08:52:51.536370', 'c3dfd8b52a99728cba6808eaddb9efd13a143a4fa1fabb7c5448871aa4a9bb41', 'validated', '{"audio_key":"e0921f685af336fae53fffee60fa499f4f45b8ec0da1dba08888cdbe5fc5bc30","entity_key":"lx_polite_words_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c3dfd8b52a99728cba6808eaddb9efd13a143a4fa1fabb7c5448871aa4a9bb41","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/e0921f685af336fae53fffee60fa499f4f45b8ec0da1dba08888cdbe5fc5bc30.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_polite_words_03 -> audio/generated/fr-FR/lexical/e0921f685af336fae53fffee60fa499f4f45b8ec0da1dba08888cdbe5fc5bc30.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c5dfe55b-2c44-5cc8-a47e-b4d90ac5e4c4', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_polite_words_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '38dbfe0f056f7846834b9b68abb7cc8e4d2ab1f27f287caffbabb98e74915356'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2be09af3-7369-5914-9c92-a9a5d5777820', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c5dfe55b-2c44-5cc8-a47e-b4d90ac5e4c4', 1), '38dbfe0f056f7846834b9b68abb7cc8e4d2ab1f27f287caffbabb98e74915356',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/e0921f685af336fae53fffee60fa499f4f45b8ec0da1dba08888cdbe5fc5bc30.mp3', 862, '2026-09-14 08:52:51.536370', 'c3dfd8b52a99728cba6808eaddb9efd13a143a4fa1fabb7c5448871aa4a9bb41', 'validated', '{"audio_key":"e0921f685af336fae53fffee60fa499f4f45b8ec0da1dba08888cdbe5fc5bc30","entity_key":"wf_polite_words_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c3dfd8b52a99728cba6808eaddb9efd13a143a4fa1fabb7c5448871aa4a9bb41","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/e0921f685af336fae53fffee60fa499f4f45b8ec0da1dba08888cdbe5fc5bc30.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_my_name_05 -> audio/generated/fr-FR/lexical/e227d3ae53cb3fdb56db8fb8e5bc640049a265b26a0c26ebaae7eea3479d3152.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('31045c54-23fb-58e2-922a-9d46fb7663ae', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_my_name_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2f588afe14a613cb44993b87574220e5af06f5e035cadaa682ec08a20b47c66f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0a250387-577b-5a67-972f-9199fbce7dc8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('31045c54-23fb-58e2-922a-9d46fb7663ae', 1), '2f588afe14a613cb44993b87574220e5af06f5e035cadaa682ec08a20b47c66f',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/e227d3ae53cb3fdb56db8fb8e5bc640049a265b26a0c26ebaae7eea3479d3152.mp3', 1018, '2026-09-14 08:52:52.042313', 'cfc6a0c3abeb5666f75553b96c134863cc438b79cb53fb28da90add2a5bd5f0e', 'validated', '{"audio_key":"e227d3ae53cb3fdb56db8fb8e5bc640049a265b26a0c26ebaae7eea3479d3152","entity_key":"lx_my_name_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"cfc6a0c3abeb5666f75553b96c134863cc438b79cb53fb28da90add2a5bd5f0e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/e227d3ae53cb3fdb56db8fb8e5bc640049a265b26a0c26ebaae7eea3479d3152.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_my_name_05 -> audio/generated/fr-FR/lexical/e227d3ae53cb3fdb56db8fb8e5bc640049a265b26a0c26ebaae7eea3479d3152.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('96658f68-4e03-5c37-8c44-7ba5dd27752d', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_my_name_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2f588afe14a613cb44993b87574220e5af06f5e035cadaa682ec08a20b47c66f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('95464c91-33d5-5c34-befc-9c2472919c3a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('96658f68-4e03-5c37-8c44-7ba5dd27752d', 1), '2f588afe14a613cb44993b87574220e5af06f5e035cadaa682ec08a20b47c66f',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/e227d3ae53cb3fdb56db8fb8e5bc640049a265b26a0c26ebaae7eea3479d3152.mp3', 1018, '2026-09-14 08:52:52.042313', 'cfc6a0c3abeb5666f75553b96c134863cc438b79cb53fb28da90add2a5bd5f0e', 'validated', '{"audio_key":"e227d3ae53cb3fdb56db8fb8e5bc640049a265b26a0c26ebaae7eea3479d3152","entity_key":"wf_my_name_05","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"cfc6a0c3abeb5666f75553b96c134863cc438b79cb53fb28da90add2a5bd5f0e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/e227d3ae53cb3fdb56db8fb8e5bc640049a265b26a0c26ebaae7eea3479d3152.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_polite_words_06 -> audio/generated/fr-FR/lexical/e3fe6838edce6a4943b8e4042d22ea9c4e3798035effafdf6b45cae5f7ac8470.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ef93d595-dda5-51fc-958a-aefc943deb48', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_polite_words_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a6cf7129217e10b4dfa702282c7766472598f5377ba98373a892ea552d19146a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('77217587-d33c-5cde-9693-6d50576791f4', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ef93d595-dda5-51fc-958a-aefc943deb48', 1), 'a6cf7129217e10b4dfa702282c7766472598f5377ba98373a892ea552d19146a',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/e3fe6838edce6a4943b8e4042d22ea9c4e3798035effafdf6b45cae5f7ac8470.mp3', 1071, '2026-09-14 08:52:52.478323', '681d106127478e4d8c05291b08b20ab4b6be17b1566a35097b76803a83ff9b92', 'validated', '{"audio_key":"e3fe6838edce6a4943b8e4042d22ea9c4e3798035effafdf6b45cae5f7ac8470","entity_key":"lx_polite_words_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"681d106127478e4d8c05291b08b20ab4b6be17b1566a35097b76803a83ff9b92","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/e3fe6838edce6a4943b8e4042d22ea9c4e3798035effafdf6b45cae5f7ac8470.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_polite_words_06 -> audio/generated/fr-FR/lexical/e3fe6838edce6a4943b8e4042d22ea9c4e3798035effafdf6b45cae5f7ac8470.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5665aad4-505f-5661-a171-3624ded38feb', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_polite_words_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a6cf7129217e10b4dfa702282c7766472598f5377ba98373a892ea552d19146a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0ee8efe4-b701-5a28-bb9e-1a00790f8f3e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5665aad4-505f-5661-a171-3624ded38feb', 1), 'a6cf7129217e10b4dfa702282c7766472598f5377ba98373a892ea552d19146a',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/e3fe6838edce6a4943b8e4042d22ea9c4e3798035effafdf6b45cae5f7ac8470.mp3', 1071, '2026-09-14 08:52:52.478323', '681d106127478e4d8c05291b08b20ab4b6be17b1566a35097b76803a83ff9b92', 'validated', '{"audio_key":"e3fe6838edce6a4943b8e4042d22ea9c4e3798035effafdf6b45cae5f7ac8470","entity_key":"wf_polite_words_06","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"681d106127478e4d8c05291b08b20ab4b6be17b1566a35097b76803a83ff9b92","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/e3fe6838edce6a4943b8e4042d22ea9c4e3798035effafdf6b45cae5f7ac8470.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_objects_01 -> audio/generated/fr-FR/lexical/ec89c2ae4e27fc2daf6d6a2493a6892a25cdf9c6aacdb3317049ccc8d6012607.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('32a3df10-4436-5d92-a697-221ee256a0b4', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_objects_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '648042b11fcc6b22c562f02517ecd7da74099567062ea4a76c8a66dc9948e354'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8b44bad0-2524-5754-b022-afcbbe50794a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('32a3df10-4436-5d92-a697-221ee256a0b4', 1), '648042b11fcc6b22c562f02517ecd7da74099567062ea4a76c8a66dc9948e354',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/ec89c2ae4e27fc2daf6d6a2493a6892a25cdf9c6aacdb3317049ccc8d6012607.mp3', 966, '2026-09-14 08:52:52.982766', 'a6ed946cefcea66ad0b41f949d6bd393bd7bc063f44e7d0f8453420a47190c02', 'validated', '{"audio_key":"ec89c2ae4e27fc2daf6d6a2493a6892a25cdf9c6aacdb3317049ccc8d6012607","entity_key":"lx_first_objects_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a6ed946cefcea66ad0b41f949d6bd393bd7bc063f44e7d0f8453420a47190c02","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/ec89c2ae4e27fc2daf6d6a2493a6892a25cdf9c6aacdb3317049ccc8d6012607.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_objects_01 -> audio/generated/fr-FR/lexical/ec89c2ae4e27fc2daf6d6a2493a6892a25cdf9c6aacdb3317049ccc8d6012607.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('dee09122-7e26-5ebb-9a3f-00c415191470', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_objects_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '648042b11fcc6b22c562f02517ecd7da74099567062ea4a76c8a66dc9948e354'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4712928c-6861-5065-a713-0922b74d7197', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('dee09122-7e26-5ebb-9a3f-00c415191470', 1), '648042b11fcc6b22c562f02517ecd7da74099567062ea4a76c8a66dc9948e354',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/ec89c2ae4e27fc2daf6d6a2493a6892a25cdf9c6aacdb3317049ccc8d6012607.mp3', 966, '2026-09-14 08:52:52.982766', 'a6ed946cefcea66ad0b41f949d6bd393bd7bc063f44e7d0f8453420a47190c02', 'validated', '{"audio_key":"ec89c2ae4e27fc2daf6d6a2493a6892a25cdf9c6aacdb3317049ccc8d6012607","entity_key":"wf_first_objects_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a6ed946cefcea66ad0b41f949d6bd393bd7bc063f44e7d0f8453420a47190c02","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/ec89c2ae4e27fc2daf6d6a2493a6892a25cdf9c6aacdb3317049ccc8d6012607.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_survival_words_03 -> audio/generated/fr-FR/lexical/f542dd55910cc9113c0ba59ca90bea5cbf49052b3bd21c72a906d59fd2b90ad7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('53563ab9-bea8-5fa9-ba96-e1c88a9404f1', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_survival_words_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '259d7779e52eb24303eb283432268850cb26198c3c3fddc8a8d9ee824001e41d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fe380022-c827-58eb-80d7-b08cc999a018', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('53563ab9-bea8-5fa9-ba96-e1c88a9404f1', 1), '259d7779e52eb24303eb283432268850cb26198c3c3fddc8a8d9ee824001e41d',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/f542dd55910cc9113c0ba59ca90bea5cbf49052b3bd21c72a906d59fd2b90ad7.mp3', 1018, '2026-09-14 08:52:53.429586', 'dee6155f8f90cc11d1e96625edd9e10b8870948a99ee240e13e012ee84a30b59', 'validated', '{"audio_key":"f542dd55910cc9113c0ba59ca90bea5cbf49052b3bd21c72a906d59fd2b90ad7","entity_key":"lx_survival_words_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"dee6155f8f90cc11d1e96625edd9e10b8870948a99ee240e13e012ee84a30b59","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/f542dd55910cc9113c0ba59ca90bea5cbf49052b3bd21c72a906d59fd2b90ad7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_survival_words_03 -> audio/generated/fr-FR/lexical/f542dd55910cc9113c0ba59ca90bea5cbf49052b3bd21c72a906d59fd2b90ad7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e4b6e549-9f49-5268-86f9-961630fc8982', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_survival_words_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '259d7779e52eb24303eb283432268850cb26198c3c3fddc8a8d9ee824001e41d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1ab24616-4f17-558b-a831-992eb74f9826', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e4b6e549-9f49-5268-86f9-961630fc8982', 1), '259d7779e52eb24303eb283432268850cb26198c3c3fddc8a8d9ee824001e41d',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/f542dd55910cc9113c0ba59ca90bea5cbf49052b3bd21c72a906d59fd2b90ad7.mp3', 1018, '2026-09-14 08:52:53.429586', 'dee6155f8f90cc11d1e96625edd9e10b8870948a99ee240e13e012ee84a30b59', 'validated', '{"audio_key":"f542dd55910cc9113c0ba59ca90bea5cbf49052b3bd21c72a906d59fd2b90ad7","entity_key":"wf_survival_words_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"dee6155f8f90cc11d1e96625edd9e10b8870948a99ee240e13e012ee84a30b59","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/f542dd55910cc9113c0ba59ca90bea5cbf49052b3bd21c72a906d59fd2b90ad7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_numbers_0_10_02 -> audio/generated/fr-FR/lexical/fa45604331db0864895cc00f2ca24c47e41815fab9737e8c958bd08aa5628eea.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5e0b0c1c-a3c6-531e-9f11-7157c7b2f02a', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_numbers_0_10_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '68bca10eea2ba33f6f15a6ab0c7df2a49051a6541f9118d468b0585d5d60398b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9fdb88cf-2f33-58ec-8afa-48da40b99ba9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5e0b0c1c-a3c6-531e-9f11-7157c7b2f02a', 1), '68bca10eea2ba33f6f15a6ab0c7df2a49051a6541f9118d468b0585d5d60398b',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/fa45604331db0864895cc00f2ca24c47e41815fab9737e8c958bd08aa5628eea.mp3', 862, '2026-09-14 08:52:54.344024', '9f30d48356d32af1ffeb64372438331b914c340118dc9b83afa806cb6b81b724', 'validated', '{"audio_key":"fa45604331db0864895cc00f2ca24c47e41815fab9737e8c958bd08aa5628eea","entity_key":"lx_numbers_0_10_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9f30d48356d32af1ffeb64372438331b914c340118dc9b83afa806cb6b81b724","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/fa45604331db0864895cc00f2ca24c47e41815fab9737e8c958bd08aa5628eea.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_numbers_0_10_02 -> audio/generated/fr-FR/lexical/fa45604331db0864895cc00f2ca24c47e41815fab9737e8c958bd08aa5628eea.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('265b967c-4bc3-551c-a2c7-460ddad2acf8', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_numbers_0_10_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '68bca10eea2ba33f6f15a6ab0c7df2a49051a6541f9118d468b0585d5d60398b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1a481eb2-7f50-54b5-b1b9-0750501fe1ea', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('265b967c-4bc3-551c-a2c7-460ddad2acf8', 1), '68bca10eea2ba33f6f15a6ab0c7df2a49051a6541f9118d468b0585d5d60398b',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/fa45604331db0864895cc00f2ca24c47e41815fab9737e8c958bd08aa5628eea.mp3', 862, '2026-09-14 08:52:54.344024', '9f30d48356d32af1ffeb64372438331b914c340118dc9b83afa806cb6b81b724', 'validated', '{"audio_key":"fa45604331db0864895cc00f2ca24c47e41815fab9737e8c958bd08aa5628eea","entity_key":"wf_numbers_0_10_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9f30d48356d32af1ffeb64372438331b914c340118dc9b83afa806cb6b81b724","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/fa45604331db0864895cc00f2ca24c47e41815fab9737e8c958bd08aa5628eea.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_alphabet_accents_01 -> audio/generated/fr-FR/lexical/fd3227cd837a848a42237389cb714ba3935ffe5c2a1c5093085fade89cc4d55c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2c7548bf-779a-5091-bc62-0306a2935a17', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_alphabet_accents_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '559aead08264d5795d3909718cdd05abd49572e84fe55590eef31a88a08fdffd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('84bd19c7-0446-51f4-a9be-b563c978e3c2', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2c7548bf-779a-5091-bc62-0306a2935a17', 1), '559aead08264d5795d3909718cdd05abd49572e84fe55590eef31a88a08fdffd',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/fd3227cd837a848a42237389cb714ba3935ffe5c2a1c5093085fade89cc4d55c.mp3', 783, '2026-09-14 08:52:54.462633', '38090804ed349985d5a8b8acbd922faa1388ec995afa2248590adbf6a5a048c4', 'validated', '{"audio_key":"fd3227cd837a848a42237389cb714ba3935ffe5c2a1c5093085fade89cc4d55c","entity_key":"lx_alphabet_accents_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"38090804ed349985d5a8b8acbd922faa1388ec995afa2248590adbf6a5a048c4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/fd3227cd837a848a42237389cb714ba3935ffe5c2a1c5093085fade89cc4d55c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_alphabet_accents_01 -> audio/generated/fr-FR/lexical/fd3227cd837a848a42237389cb714ba3935ffe5c2a1c5093085fade89cc4d55c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9c794fe1-5b83-505e-9cf7-66992ce6dd8e', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_alphabet_accents_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '559aead08264d5795d3909718cdd05abd49572e84fe55590eef31a88a08fdffd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ca373021-03f2-52c9-b8fe-43cd825f0b0f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9c794fe1-5b83-505e-9cf7-66992ce6dd8e', 1), '559aead08264d5795d3909718cdd05abd49572e84fe55590eef31a88a08fdffd',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/fd3227cd837a848a42237389cb714ba3935ffe5c2a1c5093085fade89cc4d55c.mp3', 783, '2026-09-14 08:52:54.462633', '38090804ed349985d5a8b8acbd922faa1388ec995afa2248590adbf6a5a048c4', 'validated', '{"audio_key":"fd3227cd837a848a42237389cb714ba3935ffe5c2a1c5093085fade89cc4d55c","entity_key":"wf_alphabet_accents_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"38090804ed349985d5a8b8acbd922faa1388ec995afa2248590adbf6a5a048c4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/fd3227cd837a848a42237389cb714ba3935ffe5c2a1c5093085fade89cc4d55c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_survival_words_04 -> audio/generated/fr-FR/lexical/fdf6bcf797e652be2d5fc7fae65e9c36157dbbc5c731e57e84aa183c9de69c63.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8b34638c-abf3-5ce7-9685-5e36234d558f', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_survival_words_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '647b29ff0ccad5373de3e2d914bea0161bbb6dd73070b9c5b0de19c19be071c0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9510b142-dd2a-55f0-b2a4-bfd3db01d0ee', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8b34638c-abf3-5ce7-9685-5e36234d558f', 1), '647b29ff0ccad5373de3e2d914bea0161bbb6dd73070b9c5b0de19c19be071c0',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/fdf6bcf797e652be2d5fc7fae65e9c36157dbbc5c731e57e84aa183c9de69c63.mp3', 1280, '2026-09-14 08:52:55.303552', '6f6e29c6614d9c485b21d50d669817cba8a069d78a35caf535a4a7330fab4530', 'validated', '{"audio_key":"fdf6bcf797e652be2d5fc7fae65e9c36157dbbc5c731e57e84aa183c9de69c63","entity_key":"lx_survival_words_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6f6e29c6614d9c485b21d50d669817cba8a069d78a35caf535a4a7330fab4530","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/fdf6bcf797e652be2d5fc7fae65e9c36157dbbc5c731e57e84aa183c9de69c63.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_survival_words_04 -> audio/generated/fr-FR/lexical/fdf6bcf797e652be2d5fc7fae65e9c36157dbbc5c731e57e84aa183c9de69c63.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8ad94e0e-577b-5771-8cd4-940df58fc8ad', 1)
  AND voice_key = 'fr-fr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_survival_words_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '647b29ff0ccad5373de3e2d914bea0161bbb6dd73070b9c5b0de19c19be071c0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8e299bab-a61d-5552-8c47-81e7b16379aa', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8ad94e0e-577b-5771-8cd4-940df58fc8ad', 1), '647b29ff0ccad5373de3e2d914bea0161bbb6dd73070b9c5b0de19c19be071c0',
  'fr-fr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/lexical/fdf6bcf797e652be2d5fc7fae65e9c36157dbbc5c731e57e84aa183c9de69c63.mp3', 1280, '2026-09-14 08:52:55.303552', '6f6e29c6614d9c485b21d50d669817cba8a069d78a35caf535a4a7330fab4530', 'validated', '{"audio_key":"fdf6bcf797e652be2d5fc7fae65e9c36157dbbc5c731e57e84aa183c9de69c63","entity_key":"wf_survival_words_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6f6e29c6614d9c485b21d50d669817cba8a069d78a35caf535a4a7330fab4530","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/fr-FR/lexical/fdf6bcf797e652be2d5fc7fae65e9c36157dbbc5c731e57e84aa183c9de69c63.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_survival_words_02 -> audio/generated/fr-FR/utterances/02831e96afb0fa9407694ff19526fee1b1eb441286eca43d614836e1757359fe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('8253a697-8aea-5944-8d12-dcf72e3194d0', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_survival_words_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bfd0b2bc7f155b17b1aea7aad8053aa09db23339527041996d6dee69aba415d4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('547e7eb1-ec2a-5e47-b6dd-d6c17813a434', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('8253a697-8aea-5944-8d12-dcf72e3194d0', 1), 'bfd0b2bc7f155b17b1aea7aad8053aa09db23339527041996d6dee69aba415d4',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/02831e96afb0fa9407694ff19526fee1b1eb441286eca43d614836e1757359fe.mp3', 653, '2026-09-14 08:52:55.353743', 'a439c0ed0648f8fc7c22b149ec9a6b70a16e9faeedefd4027aebd544870ddb4d', 'validated', '{"audio_key":"02831e96afb0fa9407694ff19526fee1b1eb441286eca43d614836e1757359fe","entity_key":"u_survival_words_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a439c0ed0648f8fc7c22b149ec9a6b70a16e9faeedefd4027aebd544870ddb4d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/02831e96afb0fa9407694ff19526fee1b1eb441286eca43d614836e1757359fe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_survival_words_01_listen -> audio/generated/fr-FR/utterances/02831e96afb0fa9407694ff19526fee1b1eb441286eca43d614836e1757359fe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('7a72af85-9f2e-5375-a8c8-59d48fd47a9f', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_survival_words_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bfd0b2bc7f155b17b1aea7aad8053aa09db23339527041996d6dee69aba415d4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d1e94a17-8f86-5504-8062-247fa3e54b2f', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('7a72af85-9f2e-5375-a8c8-59d48fd47a9f', 1), 'bfd0b2bc7f155b17b1aea7aad8053aa09db23339527041996d6dee69aba415d4',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/02831e96afb0fa9407694ff19526fee1b1eb441286eca43d614836e1757359fe.mp3', 653, '2026-09-14 08:52:55.353743', 'a439c0ed0648f8fc7c22b149ec9a6b70a16e9faeedefd4027aebd544870ddb4d', 'validated', '{"audio_key":"02831e96afb0fa9407694ff19526fee1b1eb441286eca43d614836e1757359fe","entity_key":"e_survival_words_01_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a439c0ed0648f8fc7c22b149ec9a6b70a16e9faeedefd4027aebd544870ddb4d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/02831e96afb0fa9407694ff19526fee1b1eb441286eca43d614836e1757359fe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_polite_words_02 -> audio/generated/fr-FR/utterances/03407316dd3a007c56367ca715913a4f5ebd58a4a5ccd3e2fb63bf201f08e857.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0a906c7e-a1a3-5280-9a9e-b1f1c3b6ac97', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_polite_words_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a89ca2a88da9c09340bd0e4b28a2516327c06526aaf8883511c060fd523029d4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('62061102-5894-55e1-abfa-2cbde07d4753', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0a906c7e-a1a3-5280-9a9e-b1f1c3b6ac97', 1), 'a89ca2a88da9c09340bd0e4b28a2516327c06526aaf8883511c060fd523029d4',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/03407316dd3a007c56367ca715913a4f5ebd58a4a5ccd3e2fb63bf201f08e857.mp3', 1071, '2026-09-14 08:52:56.273658', '1c6f7d96d6499f01060585cac8cfa15d2422a13b8df74ff55d8418608ece437d', 'validated', '{"audio_key":"03407316dd3a007c56367ca715913a4f5ebd58a4a5ccd3e2fb63bf201f08e857","entity_key":"u_polite_words_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1c6f7d96d6499f01060585cac8cfa15d2422a13b8df74ff55d8418608ece437d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/03407316dd3a007c56367ca715913a4f5ebd58a4a5ccd3e2fb63bf201f08e857.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_polite_words_01_listen -> audio/generated/fr-FR/utterances/03407316dd3a007c56367ca715913a4f5ebd58a4a5ccd3e2fb63bf201f08e857.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('595e0cf3-b0f0-59c6-a281-4bbd07927ad3', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_polite_words_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a89ca2a88da9c09340bd0e4b28a2516327c06526aaf8883511c060fd523029d4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c22431d8-a5e8-5554-9cdf-d2a4fb82607f', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('595e0cf3-b0f0-59c6-a281-4bbd07927ad3', 1), 'a89ca2a88da9c09340bd0e4b28a2516327c06526aaf8883511c060fd523029d4',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/03407316dd3a007c56367ca715913a4f5ebd58a4a5ccd3e2fb63bf201f08e857.mp3', 1071, '2026-09-14 08:52:56.273658', '1c6f7d96d6499f01060585cac8cfa15d2422a13b8df74ff55d8418608ece437d', 'validated', '{"audio_key":"03407316dd3a007c56367ca715913a4f5ebd58a4a5ccd3e2fb63bf201f08e857","entity_key":"e_polite_words_01_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1c6f7d96d6499f01060585cac8cfa15d2422a13b8df74ff55d8418608ece437d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/03407316dd3a007c56367ca715913a4f5ebd58a4a5ccd3e2fb63bf201f08e857.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_my_name_03 -> audio/generated/fr-FR/utterances/08457c81d1eb536f9107c7becb14b6695e7a3dea477b3f87c129d4faef15affb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('34939f5e-b2a3-588d-ba6f-ca5aceac4bfc', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_my_name_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f607805fe0f49dc0ace47da4d7a6266c675b87258868cbebb5ea678df95f0021'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a76b45ff-e189-543e-b023-5cf7097e333e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('34939f5e-b2a3-588d-ba6f-ca5aceac4bfc', 1), 'f607805fe0f49dc0ace47da4d7a6266c675b87258868cbebb5ea678df95f0021',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/08457c81d1eb536f9107c7becb14b6695e7a3dea477b3f87c129d4faef15affb.mp3', 1071, '2026-09-14 08:52:56.357568', '2844e5871b559cfce9cab18bc5e65838302c43dbcc032c553148a6eaf431dc61', 'validated', '{"audio_key":"08457c81d1eb536f9107c7becb14b6695e7a3dea477b3f87c129d4faef15affb","entity_key":"u_my_name_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2844e5871b559cfce9cab18bc5e65838302c43dbcc032c553148a6eaf431dc61","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/08457c81d1eb536f9107c7becb14b6695e7a3dea477b3f87c129d4faef15affb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_survival_words_01 -> audio/generated/fr-FR/utterances/0d057feedd96318257c6b3ff3ae514eaca2af9f1761dd6bee983738cfa8e0680.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2f573c85-7d8f-5a81-b5a2-a5351cc46b02', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_survival_words_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3ef8014022279d9eab210c2a7e6540e35e0592f15ee9491d1f58489152125160'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3f181d49-bfc2-57b2-94cc-cbd028fcf32f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2f573c85-7d8f-5a81-b5a2-a5351cc46b02', 1), '3ef8014022279d9eab210c2a7e6540e35e0592f15ee9491d1f58489152125160',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/0d057feedd96318257c6b3ff3ae514eaca2af9f1761dd6bee983738cfa8e0680.mp3', 600, '2026-09-14 08:52:57.157370', '23edcf56d64d2e93981bc63daebd09fab56280d2cf1c83ed6a07ec16a11d5682', 'validated', '{"audio_key":"0d057feedd96318257c6b3ff3ae514eaca2af9f1761dd6bee983738cfa8e0680","entity_key":"u_survival_words_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"23edcf56d64d2e93981bc63daebd09fab56280d2cf1c83ed6a07ec16a11d5682","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/0d057feedd96318257c6b3ff3ae514eaca2af9f1761dd6bee983738cfa8e0680.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_survival_words_04 -> audio/generated/fr-FR/utterances/12c6738b7205d66c38b761e8048cd6a854e3923893d8ebfe75f966f3c5c67b08.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('58d3d083-6205-543a-8787-33534acc67ce', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_survival_words_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aa0870e57148b8fc1680461bc679431b184a5770dd460ec53f99022dbd2e7b2e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('48880ba0-2a5e-5fed-aea6-5de5660bc876', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('58d3d083-6205-543a-8787-33534acc67ce', 1), 'aa0870e57148b8fc1680461bc679431b184a5770dd460ec53f99022dbd2e7b2e',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/12c6738b7205d66c38b761e8048cd6a854e3923893d8ebfe75f966f3c5c67b08.mp3', 1906, '2026-09-14 08:52:57.390405', '5b20da23a7cfdeed48e0211fb1877110076b19be2ab8abf8fdbee6e29d5c6b12', 'validated', '{"audio_key":"12c6738b7205d66c38b761e8048cd6a854e3923893d8ebfe75f966f3c5c67b08","entity_key":"u_survival_words_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5b20da23a7cfdeed48e0211fb1877110076b19be2ab8abf8fdbee6e29d5c6b12","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/12c6738b7205d66c38b761e8048cd6a854e3923893d8ebfe75f966f3c5c67b08.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_survival_words_02_listen -> audio/generated/fr-FR/utterances/12c6738b7205d66c38b761e8048cd6a854e3923893d8ebfe75f966f3c5c67b08.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('5e362d06-71a1-50b9-8ba3-54ecd5c8081c', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_survival_words_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aa0870e57148b8fc1680461bc679431b184a5770dd460ec53f99022dbd2e7b2e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('38df8a2c-86ad-5ed3-9245-35c9b4de9ad4', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('5e362d06-71a1-50b9-8ba3-54ecd5c8081c', 1), 'aa0870e57148b8fc1680461bc679431b184a5770dd460ec53f99022dbd2e7b2e',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/12c6738b7205d66c38b761e8048cd6a854e3923893d8ebfe75f966f3c5c67b08.mp3', 1906, '2026-09-14 08:52:57.390405', '5b20da23a7cfdeed48e0211fb1877110076b19be2ab8abf8fdbee6e29d5c6b12', 'validated', '{"audio_key":"12c6738b7205d66c38b761e8048cd6a854e3923893d8ebfe75f966f3c5c67b08","entity_key":"e_survival_words_02_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5b20da23a7cfdeed48e0211fb1877110076b19be2ab8abf8fdbee6e29d5c6b12","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/12c6738b7205d66c38b761e8048cd6a854e3923893d8ebfe75f966f3c5c67b08.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_numbers_0_10_02 -> audio/generated/fr-FR/utterances/13e1eb5734820d1f470ae1f4220a2dcd4e582e49b74cf91ca1400415db6c8f19.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e8667b88-a533-52cc-8ec6-0844ccaced2e', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_numbers_0_10_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '544ed29ee5da5dc7c880632182259d61ff85ce4d7e4382bd4793d05b08af56b5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('358fe48b-4651-56b9-9a54-1f73d7cf5f53', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e8667b88-a533-52cc-8ec6-0844ccaced2e', 1), '544ed29ee5da5dc7c880632182259d61ff85ce4d7e4382bd4793d05b08af56b5',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/13e1eb5734820d1f470ae1f4220a2dcd4e582e49b74cf91ca1400415db6c8f19.mp3', 1097, '2026-09-14 08:52:58.109100', '96246abe335f17ccf98bbdffd6e7d6efbd03fe76314ca592c28517a41d07bb48', 'validated', '{"audio_key":"13e1eb5734820d1f470ae1f4220a2dcd4e582e49b74cf91ca1400415db6c8f19","entity_key":"u_numbers_0_10_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"96246abe335f17ccf98bbdffd6e7d6efbd03fe76314ca592c28517a41d07bb48","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/13e1eb5734820d1f470ae1f4220a2dcd4e582e49b74cf91ca1400415db6c8f19.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_numbers_0_10_01_listen -> audio/generated/fr-FR/utterances/13e1eb5734820d1f470ae1f4220a2dcd4e582e49b74cf91ca1400415db6c8f19.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('60afd2eb-68fc-5f1d-aa0b-6b0ac918f316', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_numbers_0_10_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '544ed29ee5da5dc7c880632182259d61ff85ce4d7e4382bd4793d05b08af56b5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fbd5e5f4-a8d6-5a64-bc51-86dbcd93f4b6', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('60afd2eb-68fc-5f1d-aa0b-6b0ac918f316', 1), '544ed29ee5da5dc7c880632182259d61ff85ce4d7e4382bd4793d05b08af56b5',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/13e1eb5734820d1f470ae1f4220a2dcd4e582e49b74cf91ca1400415db6c8f19.mp3', 1097, '2026-09-14 08:52:58.109100', '96246abe335f17ccf98bbdffd6e7d6efbd03fe76314ca592c28517a41d07bb48', 'validated', '{"audio_key":"13e1eb5734820d1f470ae1f4220a2dcd4e582e49b74cf91ca1400415db6c8f19","entity_key":"e_numbers_0_10_01_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"96246abe335f17ccf98bbdffd6e7d6efbd03fe76314ca592c28517a41d07bb48","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/13e1eb5734820d1f470ae1f4220a2dcd4e582e49b74cf91ca1400415db6c8f19.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_polite_words_03 -> audio/generated/fr-FR/utterances/170e37df0876fe05a422ac143916e288ac0d90945f07ae4a6e3e3a1fa6dd362b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('4597a7aa-fa9d-5e5a-b16a-f2816d887bae', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_polite_words_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b92a341d8588a553b22bffecbcd499b4046e093149cd43c392f0a3a4a6d65c3d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f708db1c-ad2e-550c-b295-c486e43eba78', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('4597a7aa-fa9d-5e5a-b16a-f2816d887bae', 1), 'b92a341d8588a553b22bffecbcd499b4046e093149cd43c392f0a3a4a6d65c3d',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/170e37df0876fe05a422ac143916e288ac0d90945f07ae4a6e3e3a1fa6dd362b.mp3', 835, '2026-09-14 08:52:58.361247', '25e16f729c57d9011d7c30890ebbf506f284279c62addc6471b4ee6256aa65fc', 'validated', '{"audio_key":"170e37df0876fe05a422ac143916e288ac0d90945f07ae4a6e3e3a1fa6dd362b","entity_key":"u_polite_words_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"25e16f729c57d9011d7c30890ebbf506f284279c62addc6471b4ee6256aa65fc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/170e37df0876fe05a422ac143916e288ac0d90945f07ae4a6e3e3a1fa6dd362b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_numbers_0_10_04 -> audio/generated/fr-FR/utterances/27ccea0d7d0c852f0cace06b1af9c9ad0603c22cfd85136c01257f622cce61a8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('4e6abc6f-d8e6-5461-bbbc-37837a8d20e1', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_numbers_0_10_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a6889f761a0e303e485766608996ad4f200da4b4b9b7227d64fde525db864d50'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e2305deb-f184-5f2c-8955-83c3ee4b5d88', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('4e6abc6f-d8e6-5461-bbbc-37837a8d20e1', 1), 'a6889f761a0e303e485766608996ad4f200da4b4b9b7227d64fde525db864d50',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/27ccea0d7d0c852f0cace06b1af9c9ad0603c22cfd85136c01257f622cce61a8.mp3', 966, '2026-09-14 08:52:59.085142', '9fe34d5a7953bd3c116748c7447a5fb53433553bb32431176eda4c080c5da908', 'validated', '{"audio_key":"27ccea0d7d0c852f0cace06b1af9c9ad0603c22cfd85136c01257f622cce61a8","entity_key":"u_numbers_0_10_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9fe34d5a7953bd3c116748c7447a5fb53433553bb32431176eda4c080c5da908","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/27ccea0d7d0c852f0cace06b1af9c9ad0603c22cfd85136c01257f622cce61a8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_numbers_0_10_02_listen -> audio/generated/fr-FR/utterances/27ccea0d7d0c852f0cace06b1af9c9ad0603c22cfd85136c01257f622cce61a8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('7c00d0ae-4a5c-539d-a4b6-7b4c2771d7e8', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_numbers_0_10_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a6889f761a0e303e485766608996ad4f200da4b4b9b7227d64fde525db864d50'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4ac3af5d-be51-5c11-abbb-b5eed5268156', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('7c00d0ae-4a5c-539d-a4b6-7b4c2771d7e8', 1), 'a6889f761a0e303e485766608996ad4f200da4b4b9b7227d64fde525db864d50',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/27ccea0d7d0c852f0cace06b1af9c9ad0603c22cfd85136c01257f622cce61a8.mp3', 966, '2026-09-14 08:52:59.085142', '9fe34d5a7953bd3c116748c7447a5fb53433553bb32431176eda4c080c5da908', 'validated', '{"audio_key":"27ccea0d7d0c852f0cace06b1af9c9ad0603c22cfd85136c01257f622cce61a8","entity_key":"e_numbers_0_10_02_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9fe34d5a7953bd3c116748c7447a5fb53433553bb32431176eda4c080c5da908","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/27ccea0d7d0c852f0cace06b1af9c9ad0603c22cfd85136c01257f622cce61a8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_objects_03 -> audio/generated/fr-FR/utterances/28167ddbf4d0689f1bf9d90d0217701dcb8145018e5567fca72d4fbcf75c4762.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3c5d135a-99f5-5877-869a-29f2c4399366', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_objects_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4a9a999c21ae0793cd3a006285c479c4dcdc2cd4b992f73800b5ef9d549ceb18'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3c03fd8b-b88c-5348-a7bb-5d31dcebe0ec', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3c5d135a-99f5-5877-869a-29f2c4399366', 1), '4a9a999c21ae0793cd3a006285c479c4dcdc2cd4b992f73800b5ef9d549ceb18',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/28167ddbf4d0689f1bf9d90d0217701dcb8145018e5567fca72d4fbcf75c4762.mp3', 1201, '2026-09-14 08:52:59.331399', 'af642398f1e61bdaedff3b4a7e335ebe17de9887abbcbb849660baf558996418', 'validated', '{"audio_key":"28167ddbf4d0689f1bf9d90d0217701dcb8145018e5567fca72d4fbcf75c4762","entity_key":"u_first_objects_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"af642398f1e61bdaedff3b4a7e335ebe17de9887abbcbb849660baf558996418","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/28167ddbf4d0689f1bf9d90d0217701dcb8145018e5567fca72d4fbcf75c4762.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_alphabet_accents_03 -> audio/generated/fr-FR/utterances/34c2aae582eedbf2d8a5af094515497f9f2c3037af14d447cb956492d5de1bb5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d3783a9d-921d-5172-ac81-89098377ddfc', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_alphabet_accents_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2d2353fa0a96b94761554a840cbf580bee5cee4d9ea7b990e36f39a2ba60648c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('972ae06e-6091-5e88-b53c-e3494d529cae', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d3783a9d-921d-5172-ac81-89098377ddfc', 1), '2d2353fa0a96b94761554a840cbf580bee5cee4d9ea7b990e36f39a2ba60648c',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/34c2aae582eedbf2d8a5af094515497f9f2c3037af14d447cb956492d5de1bb5.mp3', 1384, '2026-09-14 08:53:00.069519', '1cc94b8eddd9fe47cad60bf6c8008c50210d581e736f6e030850a2f416142efa', 'validated', '{"audio_key":"34c2aae582eedbf2d8a5af094515497f9f2c3037af14d447cb956492d5de1bb5","entity_key":"u_alphabet_accents_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1cc94b8eddd9fe47cad60bf6c8008c50210d581e736f6e030850a2f416142efa","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/34c2aae582eedbf2d8a5af094515497f9f2c3037af14d447cb956492d5de1bb5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_sounds_02 -> audio/generated/fr-FR/utterances/63b1d9ff0ae5e916726c49529239f1acdb9ab0da20141bbe7f161b3c2548d80a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a831a052-d3cf-56e1-a2dc-787659028614', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_sounds_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '74e6df5f1f19a3c19bce2826ae6e5aa6ed7318abb287087e6c254745679802fe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('25051589-ac26-5a86-9c28-e3a7b8751978', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a831a052-d3cf-56e1-a2dc-787659028614', 1), '74e6df5f1f19a3c19bce2826ae6e5aa6ed7318abb287087e6c254745679802fe',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/63b1d9ff0ae5e916726c49529239f1acdb9ab0da20141bbe7f161b3c2548d80a.mp3', 914, '2026-09-14 08:53:00.241731', 'f390c9034f9b098dd652cf261e52c35893608c7e23e5bc8815fc6f2e16a20b3b', 'validated', '{"audio_key":"63b1d9ff0ae5e916726c49529239f1acdb9ab0da20141bbe7f161b3c2548d80a","entity_key":"u_first_sounds_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f390c9034f9b098dd652cf261e52c35893608c7e23e5bc8815fc6f2e16a20b3b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/63b1d9ff0ae5e916726c49529239f1acdb9ab0da20141bbe7f161b3c2548d80a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_first_sounds_01_listen -> audio/generated/fr-FR/utterances/63b1d9ff0ae5e916726c49529239f1acdb9ab0da20141bbe7f161b3c2548d80a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('586405e9-69ea-50ce-8b35-360b09689260', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_first_sounds_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '74e6df5f1f19a3c19bce2826ae6e5aa6ed7318abb287087e6c254745679802fe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('42e45afd-de57-565b-94bf-746142ee1633', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('586405e9-69ea-50ce-8b35-360b09689260', 1), '74e6df5f1f19a3c19bce2826ae6e5aa6ed7318abb287087e6c254745679802fe',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/63b1d9ff0ae5e916726c49529239f1acdb9ab0da20141bbe7f161b3c2548d80a.mp3', 914, '2026-09-14 08:53:00.241731', 'f390c9034f9b098dd652cf261e52c35893608c7e23e5bc8815fc6f2e16a20b3b', 'validated', '{"audio_key":"63b1d9ff0ae5e916726c49529239f1acdb9ab0da20141bbe7f161b3c2548d80a","entity_key":"e_first_sounds_01_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f390c9034f9b098dd652cf261e52c35893608c7e23e5bc8815fc6f2e16a20b3b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/63b1d9ff0ae5e916726c49529239f1acdb9ab0da20141bbe7f161b3c2548d80a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_sounds_01 -> audio/generated/fr-FR/utterances/64c635d1d568a3f17de51f51400da0a887cf7366850b2f076b3c21b153954e5c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2805b9ab-4646-5a3e-aff4-e149c79afd14', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_sounds_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '960d01e5fd8ce6e806294c2d36bf064d45bfd19c8d7bb6e33bd3e0163529a1a3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3e460481-cc8e-54be-acba-e313c5c71bfd', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2805b9ab-4646-5a3e-aff4-e149c79afd14', 1), '960d01e5fd8ce6e806294c2d36bf064d45bfd19c8d7bb6e33bd3e0163529a1a3',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/64c635d1d568a3f17de51f51400da0a887cf7366850b2f076b3c21b153954e5c.mp3', 1201, '2026-09-14 08:53:01.027076', 'f0dee58ccb9fb196aa851f7e0516108ccf3f5409374c70818881a8aa56825f9e', 'validated', '{"audio_key":"64c635d1d568a3f17de51f51400da0a887cf7366850b2f076b3c21b153954e5c","entity_key":"u_first_sounds_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f0dee58ccb9fb196aa851f7e0516108ccf3f5409374c70818881a8aa56825f9e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/64c635d1d568a3f17de51f51400da0a887cf7366850b2f076b3c21b153954e5c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_polite_words_01 -> audio/generated/fr-FR/utterances/65b61ef84ae0bfdd649643e6e25bf828af68bee6d367b270f6831b7ec346cd50.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('4678a8b2-a3a0-58fb-80d5-5df01c57ce2e', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_polite_words_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'abc92003d510331220fb96088955ff0a4276799aee2f3a6bae3c1b67e64490c2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3bef0303-987c-5c65-8085-7c4dd658b664', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('4678a8b2-a3a0-58fb-80d5-5df01c57ce2e', 1), 'abc92003d510331220fb96088955ff0a4276799aee2f3a6bae3c1b67e64490c2',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/65b61ef84ae0bfdd649643e6e25bf828af68bee6d367b270f6831b7ec346cd50.mp3', 1332, '2026-09-14 08:53:01.279832', '602450f15fc449dd2069f55d09a9b402b026dd0f484841efebaaf8466d0e3e69', 'validated', '{"audio_key":"65b61ef84ae0bfdd649643e6e25bf828af68bee6d367b270f6831b7ec346cd50","entity_key":"u_polite_words_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"602450f15fc449dd2069f55d09a9b402b026dd0f484841efebaaf8466d0e3e69","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/65b61ef84ae0bfdd649643e6e25bf828af68bee6d367b270f6831b7ec346cd50.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_sounds_03 -> audio/generated/fr-FR/utterances/77b7d15ef18d2919af6d2e1ac0199e25dd5efc3697f8e1bb583bde0647a338a2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3df00df8-1b50-5ffe-89e3-540f363aac89', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_sounds_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '178e9ea6ad878e304ca75b1bc5af19f54e673f04b5f3aeb1bb0ad5639c077764'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('45f7c417-c1cb-5d2a-aba8-5f12f9fad0ec', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3df00df8-1b50-5ffe-89e3-540f363aac89', 1), '178e9ea6ad878e304ca75b1bc5af19f54e673f04b5f3aeb1bb0ad5639c077764',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/77b7d15ef18d2919af6d2e1ac0199e25dd5efc3697f8e1bb583bde0647a338a2.mp3', 1750, '2026-09-14 08:53:02.081724', '0d282083aba1d0cdd48c085596bd826f7bea6358173dc0e4755d77c857deec97', 'validated', '{"audio_key":"77b7d15ef18d2919af6d2e1ac0199e25dd5efc3697f8e1bb583bde0647a338a2","entity_key":"u_first_sounds_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0d282083aba1d0cdd48c085596bd826f7bea6358173dc0e4755d77c857deec97","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/77b7d15ef18d2919af6d2e1ac0199e25dd5efc3697f8e1bb583bde0647a338a2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_how_are_you_03 -> audio/generated/fr-FR/utterances/7db741dccb4a3bc14f968033415d92a76aab53e35c1a4b8ff590ebe22649cddd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('42bf6ee0-fdf0-567f-b0d9-556fcfe28bfe', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_how_are_you_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b0ed028b59a0c28b16933b4951436453e846593906364cbd0f8cbbb1cb37adf4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7bd8c5a6-36da-5803-b36f-461b9cbdbc00', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('42bf6ee0-fdf0-567f-b0d9-556fcfe28bfe', 1), 'b0ed028b59a0c28b16933b4951436453e846593906364cbd0f8cbbb1cb37adf4',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/7db741dccb4a3bc14f968033415d92a76aab53e35c1a4b8ff590ebe22649cddd.mp3', 1201, '2026-09-14 08:53:02.236407', '2dec5f4e11996542fcb2a438be7a22d783628e9df816b5a5e3c1cac28b0c75cd', 'validated', '{"audio_key":"7db741dccb4a3bc14f968033415d92a76aab53e35c1a4b8ff590ebe22649cddd","entity_key":"u_how_are_you_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2dec5f4e11996542fcb2a438be7a22d783628e9df816b5a5e3c1cac28b0c75cd","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/7db741dccb4a3bc14f968033415d92a76aab53e35c1a4b8ff590ebe22649cddd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_my_name_02 -> audio/generated/fr-FR/utterances/7f5acefc4de1f85540cdb322ecfed6565980c1ccb0d198d6cfda0e69937a6c50.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0120a518-ef3d-5223-8f3d-da342ca58d0e', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_my_name_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '58c9cd2c9d4536074fc8eb3cebfe9c20e153f63354df18a72255994f3730ea63'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f1b8849d-9c7d-5954-b5ea-0a4e75c0ca12', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0120a518-ef3d-5223-8f3d-da342ca58d0e', 1), '58c9cd2c9d4536074fc8eb3cebfe9c20e153f63354df18a72255994f3730ea63',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/7f5acefc4de1f85540cdb322ecfed6565980c1ccb0d198d6cfda0e69937a6c50.mp3', 1280, '2026-09-14 08:53:03.055490', '18f7a52d3c508c944f12447c7bd25d96429ed864d422d6978b1a4cae0301e601', 'validated', '{"audio_key":"7f5acefc4de1f85540cdb322ecfed6565980c1ccb0d198d6cfda0e69937a6c50","entity_key":"u_my_name_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"18f7a52d3c508c944f12447c7bd25d96429ed864d422d6978b1a4cae0301e601","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/7f5acefc4de1f85540cdb322ecfed6565980c1ccb0d198d6cfda0e69937a6c50.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_my_name_01_listen -> audio/generated/fr-FR/utterances/7f5acefc4de1f85540cdb322ecfed6565980c1ccb0d198d6cfda0e69937a6c50.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('51603df5-9933-5a19-adea-933820950b79', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_my_name_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '58c9cd2c9d4536074fc8eb3cebfe9c20e153f63354df18a72255994f3730ea63'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4051da1a-8b3f-58cb-b2c6-ed6d0668f894', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('51603df5-9933-5a19-adea-933820950b79', 1), '58c9cd2c9d4536074fc8eb3cebfe9c20e153f63354df18a72255994f3730ea63',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/7f5acefc4de1f85540cdb322ecfed6565980c1ccb0d198d6cfda0e69937a6c50.mp3', 1280, '2026-09-14 08:53:03.055490', '18f7a52d3c508c944f12447c7bd25d96429ed864d422d6978b1a4cae0301e601', 'validated', '{"audio_key":"7f5acefc4de1f85540cdb322ecfed6565980c1ccb0d198d6cfda0e69937a6c50","entity_key":"e_my_name_01_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"18f7a52d3c508c944f12447c7bd25d96429ed864d422d6978b1a4cae0301e601","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/7f5acefc4de1f85540cdb322ecfed6565980c1ccb0d198d6cfda0e69937a6c50.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_conversation_03 -> audio/generated/fr-FR/utterances/7f933e7aa7bf61a04959df9f92d7c066760c8001412e02ab0ee77f6c0f684c25.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('196ba7b5-463a-5999-8603-e6ae3aa8b84c', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_conversation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5a0c591100dab1a85dcf1bf26e419012caa0effd2f477c1a29a2efd29909fa84'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2ee93f74-7ad3-5d51-a34b-c096d1d5440b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('196ba7b5-463a-5999-8603-e6ae3aa8b84c', 1), '5a0c591100dab1a85dcf1bf26e419012caa0effd2f477c1a29a2efd29909fa84',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/7f933e7aa7bf61a04959df9f92d7c066760c8001412e02ab0ee77f6c0f684c25.mp3', 1280, '2026-09-14 08:53:03.187154', '94a933db02319a54b97bff953a0f44ee566dba41ab18bf0ce9d32d9c229f1b4c', 'validated', '{"audio_key":"7f933e7aa7bf61a04959df9f92d7c066760c8001412e02ab0ee77f6c0f684c25","entity_key":"u_first_conversation_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"94a933db02319a54b97bff953a0f44ee566dba41ab18bf0ce9d32d9c229f1b4c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/7f933e7aa7bf61a04959df9f92d7c066760c8001412e02ab0ee77f6c0f684c25.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_conversation_02 -> audio/generated/fr-FR/utterances/846fd4a66c4a5c56521f08119c31e8309736f6f8276496f552519eadd83e7445.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('26b94dca-8ea5-5eae-ae9f-ff52436b56f5', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_conversation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '22688b74284d5c73102da1f4bc7d27fa5002e63494cb117f919807c7f48e4dd0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('10e2ab52-9223-5025-879b-4f6ed290a043', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('26b94dca-8ea5-5eae-ae9f-ff52436b56f5', 1), '22688b74284d5c73102da1f4bc7d27fa5002e63494cb117f919807c7f48e4dd0',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/846fd4a66c4a5c56521f08119c31e8309736f6f8276496f552519eadd83e7445.mp3', 835, '2026-09-14 08:53:03.965835', 'cdd75c30a4e50b234f47e8cf6438a9bc96caafe1c38a7f52f949028eb6662513', 'validated', '{"audio_key":"846fd4a66c4a5c56521f08119c31e8309736f6f8276496f552519eadd83e7445","entity_key":"u_first_conversation_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"cdd75c30a4e50b234f47e8cf6438a9bc96caafe1c38a7f52f949028eb6662513","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/846fd4a66c4a5c56521f08119c31e8309736f6f8276496f552519eadd83e7445.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_first_conversation_01_listen -> audio/generated/fr-FR/utterances/846fd4a66c4a5c56521f08119c31e8309736f6f8276496f552519eadd83e7445.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('7352896f-fe4f-5556-8f3a-fa6010f33777', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_first_conversation_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '22688b74284d5c73102da1f4bc7d27fa5002e63494cb117f919807c7f48e4dd0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('926c2294-b8ff-5142-bd6c-149670acc544', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('7352896f-fe4f-5556-8f3a-fa6010f33777', 1), '22688b74284d5c73102da1f4bc7d27fa5002e63494cb117f919807c7f48e4dd0',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/846fd4a66c4a5c56521f08119c31e8309736f6f8276496f552519eadd83e7445.mp3', 835, '2026-09-14 08:53:03.965835', 'cdd75c30a4e50b234f47e8cf6438a9bc96caafe1c38a7f52f949028eb6662513', 'validated', '{"audio_key":"846fd4a66c4a5c56521f08119c31e8309736f6f8276496f552519eadd83e7445","entity_key":"e_first_conversation_01_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"cdd75c30a4e50b234f47e8cf6438a9bc96caafe1c38a7f52f949028eb6662513","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/846fd4a66c4a5c56521f08119c31e8309736f6f8276496f552519eadd83e7445.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_how_are_you_01 -> audio/generated/fr-FR/utterances/846fd4a66c4a5c56521f08119c31e8309736f6f8276496f552519eadd83e7445.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('85f9b84c-f318-5d13-b9af-39e9cfccf04c', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_how_are_you_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '22688b74284d5c73102da1f4bc7d27fa5002e63494cb117f919807c7f48e4dd0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('578e57e3-614c-5e5b-b34e-a73c876c462b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('85f9b84c-f318-5d13-b9af-39e9cfccf04c', 1), '22688b74284d5c73102da1f4bc7d27fa5002e63494cb117f919807c7f48e4dd0',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/846fd4a66c4a5c56521f08119c31e8309736f6f8276496f552519eadd83e7445.mp3', 835, '2026-09-14 08:53:03.965835', 'cdd75c30a4e50b234f47e8cf6438a9bc96caafe1c38a7f52f949028eb6662513', 'validated', '{"audio_key":"846fd4a66c4a5c56521f08119c31e8309736f6f8276496f552519eadd83e7445","entity_key":"u_how_are_you_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"cdd75c30a4e50b234f47e8cf6438a9bc96caafe1c38a7f52f949028eb6662513","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/846fd4a66c4a5c56521f08119c31e8309736f6f8276496f552519eadd83e7445.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_how_are_you_04 -> audio/generated/fr-FR/utterances/8b2b528ff101608a0a31c5de4f21c1cfea8f8db81acba1ab6642b8daec562670.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('85148d00-f338-5d06-8a66-0cea981ab600', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_how_are_you_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5f9a25029500f4df9bb5f9156517eb893ff737d5c721fa4ffcbd69b1ab78238b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('06609fd7-23c9-5bad-b9fa-6fdea62a2e27', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('85148d00-f338-5d06-8a66-0cea981ab600', 1), '5f9a25029500f4df9bb5f9156517eb893ff737d5c721fa4ffcbd69b1ab78238b',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/8b2b528ff101608a0a31c5de4f21c1cfea8f8db81acba1ab6642b8daec562670.mp3', 783, '2026-09-14 08:53:04.106281', '2a661b798ac15d4d8cae5b46677c13e16982108277bcdd12158b00fc1a902a39', 'validated', '{"audio_key":"8b2b528ff101608a0a31c5de4f21c1cfea8f8db81acba1ab6642b8daec562670","entity_key":"u_how_are_you_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2a661b798ac15d4d8cae5b46677c13e16982108277bcdd12158b00fc1a902a39","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/8b2b528ff101608a0a31c5de4f21c1cfea8f8db81acba1ab6642b8daec562670.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_how_are_you_02_listen -> audio/generated/fr-FR/utterances/8b2b528ff101608a0a31c5de4f21c1cfea8f8db81acba1ab6642b8daec562670.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('bec2e000-2777-5d05-ba38-9a317cd85298', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_how_are_you_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5f9a25029500f4df9bb5f9156517eb893ff737d5c721fa4ffcbd69b1ab78238b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('df13bd0c-18a1-5765-83ba-8d9958152f6e', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('bec2e000-2777-5d05-ba38-9a317cd85298', 1), '5f9a25029500f4df9bb5f9156517eb893ff737d5c721fa4ffcbd69b1ab78238b',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/8b2b528ff101608a0a31c5de4f21c1cfea8f8db81acba1ab6642b8daec562670.mp3', 783, '2026-09-14 08:53:04.106281', '2a661b798ac15d4d8cae5b46677c13e16982108277bcdd12158b00fc1a902a39', 'validated', '{"audio_key":"8b2b528ff101608a0a31c5de4f21c1cfea8f8db81acba1ab6642b8daec562670","entity_key":"e_how_are_you_02_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2a661b798ac15d4d8cae5b46677c13e16982108277bcdd12158b00fc1a902a39","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/8b2b528ff101608a0a31c5de4f21c1cfea8f8db81acba1ab6642b8daec562670.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_my_name_04 -> audio/generated/fr-FR/utterances/8b2b528ff101608a0a31c5de4f21c1cfea8f8db81acba1ab6642b8daec562670.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c62a3fe2-ba08-5717-a99e-5dee0ee01e22', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_my_name_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5f9a25029500f4df9bb5f9156517eb893ff737d5c721fa4ffcbd69b1ab78238b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9162c660-be57-5a1e-a2ed-c3549a31b46a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c62a3fe2-ba08-5717-a99e-5dee0ee01e22', 1), '5f9a25029500f4df9bb5f9156517eb893ff737d5c721fa4ffcbd69b1ab78238b',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/8b2b528ff101608a0a31c5de4f21c1cfea8f8db81acba1ab6642b8daec562670.mp3', 783, '2026-09-14 08:53:04.106281', '2a661b798ac15d4d8cae5b46677c13e16982108277bcdd12158b00fc1a902a39', 'validated', '{"audio_key":"8b2b528ff101608a0a31c5de4f21c1cfea8f8db81acba1ab6642b8daec562670","entity_key":"u_my_name_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2a661b798ac15d4d8cae5b46677c13e16982108277bcdd12158b00fc1a902a39","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/8b2b528ff101608a0a31c5de4f21c1cfea8f8db81acba1ab6642b8daec562670.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_my_name_02_listen -> audio/generated/fr-FR/utterances/8b2b528ff101608a0a31c5de4f21c1cfea8f8db81acba1ab6642b8daec562670.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('6de32818-f48b-506c-b023-7ce3b40ea7e7', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_my_name_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5f9a25029500f4df9bb5f9156517eb893ff737d5c721fa4ffcbd69b1ab78238b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('09a755de-71bb-560d-993c-41538fe05ce3', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('6de32818-f48b-506c-b023-7ce3b40ea7e7', 1), '5f9a25029500f4df9bb5f9156517eb893ff737d5c721fa4ffcbd69b1ab78238b',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/8b2b528ff101608a0a31c5de4f21c1cfea8f8db81acba1ab6642b8daec562670.mp3', 783, '2026-09-14 08:53:04.106281', '2a661b798ac15d4d8cae5b46677c13e16982108277bcdd12158b00fc1a902a39', 'validated', '{"audio_key":"8b2b528ff101608a0a31c5de4f21c1cfea8f8db81acba1ab6642b8daec562670","entity_key":"e_my_name_02_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2a661b798ac15d4d8cae5b46677c13e16982108277bcdd12158b00fc1a902a39","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/8b2b528ff101608a0a31c5de4f21c1cfea8f8db81acba1ab6642b8daec562670.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_alphabet_accents_04 -> audio/generated/fr-FR/utterances/99275ea8e6d9da3ea144dbb41d1b00a29c973b94045e4d2d5b68f7a68c4bc123.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('92407d8a-be01-5db1-9eb3-0a5f5788f120', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_alphabet_accents_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fb79452b553e69dc973196bebbd2b24ace788ba2c3893e96f3fd98fbce93e942'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bc611d76-7a10-5931-9a4c-76151089d2e4', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('92407d8a-be01-5db1-9eb3-0a5f5788f120', 1), 'fb79452b553e69dc973196bebbd2b24ace788ba2c3893e96f3fd98fbce93e942',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/99275ea8e6d9da3ea144dbb41d1b00a29c973b94045e4d2d5b68f7a68c4bc123.mp3', 1384, '2026-09-14 08:53:04.951841', '4c3b3cd4780fa7c75b5f7e61ac2465621f3f2dcfec2f01f03e6346c9e847d9e2', 'validated', '{"audio_key":"99275ea8e6d9da3ea144dbb41d1b00a29c973b94045e4d2d5b68f7a68c4bc123","entity_key":"u_alphabet_accents_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4c3b3cd4780fa7c75b5f7e61ac2465621f3f2dcfec2f01f03e6346c9e847d9e2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/99275ea8e6d9da3ea144dbb41d1b00a29c973b94045e4d2d5b68f7a68c4bc123.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_alphabet_accents_02_listen -> audio/generated/fr-FR/utterances/99275ea8e6d9da3ea144dbb41d1b00a29c973b94045e4d2d5b68f7a68c4bc123.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('9e392f0b-74aa-5e93-8f75-002ff9c6d3bb', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_alphabet_accents_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fb79452b553e69dc973196bebbd2b24ace788ba2c3893e96f3fd98fbce93e942'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0b088230-7797-5559-af1f-a46f3805f366', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('9e392f0b-74aa-5e93-8f75-002ff9c6d3bb', 1), 'fb79452b553e69dc973196bebbd2b24ace788ba2c3893e96f3fd98fbce93e942',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/99275ea8e6d9da3ea144dbb41d1b00a29c973b94045e4d2d5b68f7a68c4bc123.mp3', 1384, '2026-09-14 08:53:04.951841', '4c3b3cd4780fa7c75b5f7e61ac2465621f3f2dcfec2f01f03e6346c9e847d9e2', 'validated', '{"audio_key":"99275ea8e6d9da3ea144dbb41d1b00a29c973b94045e4d2d5b68f7a68c4bc123","entity_key":"e_alphabet_accents_02_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4c3b3cd4780fa7c75b5f7e61ac2465621f3f2dcfec2f01f03e6346c9e847d9e2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/99275ea8e6d9da3ea144dbb41d1b00a29c973b94045e4d2d5b68f7a68c4bc123.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_greetings_01 -> audio/generated/fr-FR/utterances/9b18815d361d7f81c2a3e37a666630b8a05704c84e3eef1b0c9b1a2dcafeec08.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d728c72d-48fa-5e01-a4f1-f4dc3888c5ca', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_greetings_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bc7444869484dd1ed34bfc4465724b887fecf604fcad0d0eaf40d3746d0bfeb7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('553f161b-c776-57c3-ba2e-c220d3d41209', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d728c72d-48fa-5e01-a4f1-f4dc3888c5ca', 1), 'bc7444869484dd1ed34bfc4465724b887fecf604fcad0d0eaf40d3746d0bfeb7',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/9b18815d361d7f81c2a3e37a666630b8a05704c84e3eef1b0c9b1a2dcafeec08.mp3', 835, '2026-09-14 08:53:05.046259', '615d85d6435e2482b6d92e552313dddaf3c51558f878d8beba693e00c69e1f7a', 'validated', '{"audio_key":"9b18815d361d7f81c2a3e37a666630b8a05704c84e3eef1b0c9b1a2dcafeec08","entity_key":"u_first_greetings_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"615d85d6435e2482b6d92e552313dddaf3c51558f878d8beba693e00c69e1f7a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/9b18815d361d7f81c2a3e37a666630b8a05704c84e3eef1b0c9b1a2dcafeec08.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_how_are_you_02 -> audio/generated/fr-FR/utterances/9d318c158337850982487627d68ffb42ab48e6c9cfcf9e537a0bf1b5d6272b7e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('4492ab45-518b-5b18-9614-ad920bb32e6e', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_how_are_you_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6371065763bcb90116ea3f8030224d9b5d858360973903c9bce1a12780fb3173'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7529b480-7e00-5b28-90e4-cab1c3f357f1', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('4492ab45-518b-5b18-9614-ad920bb32e6e', 1), '6371065763bcb90116ea3f8030224d9b5d858360973903c9bce1a12780fb3173',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/9d318c158337850982487627d68ffb42ab48e6c9cfcf9e537a0bf1b5d6272b7e.mp3', 966, '2026-09-14 08:53:05.920738', '4f1997f9e66a11985b7e41194558dc0000225e1ac7522135805678bd713a557a', 'validated', '{"audio_key":"9d318c158337850982487627d68ffb42ab48e6c9cfcf9e537a0bf1b5d6272b7e","entity_key":"u_how_are_you_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4f1997f9e66a11985b7e41194558dc0000225e1ac7522135805678bd713a557a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/9d318c158337850982487627d68ffb42ab48e6c9cfcf9e537a0bf1b5d6272b7e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_how_are_you_01_listen -> audio/generated/fr-FR/utterances/9d318c158337850982487627d68ffb42ab48e6c9cfcf9e537a0bf1b5d6272b7e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('7444f89c-67f4-51a1-9c71-a2797e121e65', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_how_are_you_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6371065763bcb90116ea3f8030224d9b5d858360973903c9bce1a12780fb3173'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7ce120a4-5046-5089-834a-7e58ec828bc6', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('7444f89c-67f4-51a1-9c71-a2797e121e65', 1), '6371065763bcb90116ea3f8030224d9b5d858360973903c9bce1a12780fb3173',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/9d318c158337850982487627d68ffb42ab48e6c9cfcf9e537a0bf1b5d6272b7e.mp3', 966, '2026-09-14 08:53:05.920738', '4f1997f9e66a11985b7e41194558dc0000225e1ac7522135805678bd713a557a', 'validated', '{"audio_key":"9d318c158337850982487627d68ffb42ab48e6c9cfcf9e537a0bf1b5d6272b7e","entity_key":"e_how_are_you_01_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4f1997f9e66a11985b7e41194558dc0000225e1ac7522135805678bd713a557a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/9d318c158337850982487627d68ffb42ab48e6c9cfcf9e537a0bf1b5d6272b7e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_my_name_01 -> audio/generated/fr-FR/utterances/aa897bb2f8a3306b12e72ba92b3c3a823e172adcd38dd7cb4ae506170c1b7a1c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('bab8071a-2dc6-525a-8a9b-271ea6fca4af', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_my_name_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0ca0fed4c85761894a73ba5352acd70504a638a38659b2e45c7b043b66e8734f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4c19f079-19dc-536c-a161-ea9b179560f7', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('bab8071a-2dc6-525a-8a9b-271ea6fca4af', 1), '0ca0fed4c85761894a73ba5352acd70504a638a38659b2e45c7b043b66e8734f',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/aa897bb2f8a3306b12e72ba92b3c3a823e172adcd38dd7cb4ae506170c1b7a1c.mp3', 1253, '2026-09-14 08:53:05.995457', '213d75193d48b8ee4ed64300ffbafb2aae8d597eca96768d4436fa7f4d5f5ff6', 'validated', '{"audio_key":"aa897bb2f8a3306b12e72ba92b3c3a823e172adcd38dd7cb4ae506170c1b7a1c","entity_key":"u_my_name_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"213d75193d48b8ee4ed64300ffbafb2aae8d597eca96768d4436fa7f4d5f5ff6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/aa897bb2f8a3306b12e72ba92b3c3a823e172adcd38dd7cb4ae506170c1b7a1c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_numbers_0_10_03 -> audio/generated/fr-FR/utterances/b4864480d7d942fc4be72403d9fc334203c95855fafe1be46e2317661e05b206.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3cfaa1c5-59f7-5263-b5e3-81e6268eaced', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_numbers_0_10_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b862710a30c451a3c1cceac86e7a045c630b9ec5b6294d59f522c98bd2bcf33f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9d1e1371-b1f4-566e-9b10-62465750fea0', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3cfaa1c5-59f7-5263-b5e3-81e6268eaced', 1), 'b862710a30c451a3c1cceac86e7a045c630b9ec5b6294d59f522c98bd2bcf33f',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/b4864480d7d942fc4be72403d9fc334203c95855fafe1be46e2317661e05b206.mp3', 1071, '2026-09-14 08:53:06.863175', 'a149e626276e6506940ac6cffbcc9c4468d2616f1b0db4a404db8978a6c8d77a', 'validated', '{"audio_key":"b4864480d7d942fc4be72403d9fc334203c95855fafe1be46e2317661e05b206","entity_key":"u_numbers_0_10_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a149e626276e6506940ac6cffbcc9c4468d2616f1b0db4a404db8978a6c8d77a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/b4864480d7d942fc4be72403d9fc334203c95855fafe1be46e2317661e05b206.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_sounds_04 -> audio/generated/fr-FR/utterances/b6d1e4ef397e012b2863df05345ddb09a7121a8f3c8b1646628bc3a990b860b3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('1f16bc91-da97-50ea-85a4-87c8b5dab479', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_sounds_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ab1493df285a755797a563123fa82b49e84885c84a12ebe0c06ba254a8cf402c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7b411597-7786-51ab-b963-0336901d47e4', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('1f16bc91-da97-50ea-85a4-87c8b5dab479', 1), 'ab1493df285a755797a563123fa82b49e84885c84a12ebe0c06ba254a8cf402c',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/b6d1e4ef397e012b2863df05345ddb09a7121a8f3c8b1646628bc3a990b860b3.mp3', 1280, '2026-09-14 08:53:06.955501', 'e64557c53f6bca53b133523d3711d7bce310f3eec4dcc6550e9c198b47624808', 'validated', '{"audio_key":"b6d1e4ef397e012b2863df05345ddb09a7121a8f3c8b1646628bc3a990b860b3","entity_key":"u_first_sounds_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e64557c53f6bca53b133523d3711d7bce310f3eec4dcc6550e9c198b47624808","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/b6d1e4ef397e012b2863df05345ddb09a7121a8f3c8b1646628bc3a990b860b3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_first_sounds_02_listen -> audio/generated/fr-FR/utterances/b6d1e4ef397e012b2863df05345ddb09a7121a8f3c8b1646628bc3a990b860b3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('6b9d841a-0b5e-5ff7-80d5-45fa3b26ef59', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_first_sounds_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ab1493df285a755797a563123fa82b49e84885c84a12ebe0c06ba254a8cf402c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('75a8fac9-f815-5120-84cb-4a350caf3fa1', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('6b9d841a-0b5e-5ff7-80d5-45fa3b26ef59', 1), 'ab1493df285a755797a563123fa82b49e84885c84a12ebe0c06ba254a8cf402c',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/b6d1e4ef397e012b2863df05345ddb09a7121a8f3c8b1646628bc3a990b860b3.mp3', 1280, '2026-09-14 08:53:06.955501', 'e64557c53f6bca53b133523d3711d7bce310f3eec4dcc6550e9c198b47624808', 'validated', '{"audio_key":"b6d1e4ef397e012b2863df05345ddb09a7121a8f3c8b1646628bc3a990b860b3","entity_key":"e_first_sounds_02_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e64557c53f6bca53b133523d3711d7bce310f3eec4dcc6550e9c198b47624808","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/b6d1e4ef397e012b2863df05345ddb09a7121a8f3c8b1646628bc3a990b860b3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_conversation_04 -> audio/generated/fr-FR/utterances/b7dc673704befe893c8e96d1c9b504b5a68966d8fea73536e7f7684079e533a8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a0796fe9-8ac9-5c9c-9c5f-9ea2922965c6', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_conversation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dbbb86ace387c9f077b9b5f59944bb4d99a261c9aa1f4e5dd859dd2cc8df3eca'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2f0f0d80-72d7-5ff7-b260-00be6be8ab76', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a0796fe9-8ac9-5c9c-9c5f-9ea2922965c6', 1), 'dbbb86ace387c9f077b9b5f59944bb4d99a261c9aa1f4e5dd859dd2cc8df3eca',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/b7dc673704befe893c8e96d1c9b504b5a68966d8fea73536e7f7684079e533a8.mp3', 1332, '2026-09-14 08:53:07.854942', '200ef7d69b2a684ef6631fc439f4119b0a9fc8f79401aa715b4a8b742d8c2ecc', 'validated', '{"audio_key":"b7dc673704befe893c8e96d1c9b504b5a68966d8fea73536e7f7684079e533a8","entity_key":"u_first_conversation_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"200ef7d69b2a684ef6631fc439f4119b0a9fc8f79401aa715b4a8b742d8c2ecc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/b7dc673704befe893c8e96d1c9b504b5a68966d8fea73536e7f7684079e533a8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_first_conversation_02_listen -> audio/generated/fr-FR/utterances/b7dc673704befe893c8e96d1c9b504b5a68966d8fea73536e7f7684079e533a8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('59d966d6-e42d-5ba2-883e-e5d974229cd9', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_first_conversation_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dbbb86ace387c9f077b9b5f59944bb4d99a261c9aa1f4e5dd859dd2cc8df3eca'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('800057ee-21ff-5c33-8e9f-e3c5586c97a4', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('59d966d6-e42d-5ba2-883e-e5d974229cd9', 1), 'dbbb86ace387c9f077b9b5f59944bb4d99a261c9aa1f4e5dd859dd2cc8df3eca',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/b7dc673704befe893c8e96d1c9b504b5a68966d8fea73536e7f7684079e533a8.mp3', 1332, '2026-09-14 08:53:07.854942', '200ef7d69b2a684ef6631fc439f4119b0a9fc8f79401aa715b4a8b742d8c2ecc', 'validated', '{"audio_key":"b7dc673704befe893c8e96d1c9b504b5a68966d8fea73536e7f7684079e533a8","entity_key":"e_first_conversation_02_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"200ef7d69b2a684ef6631fc439f4119b0a9fc8f79401aa715b4a8b742d8c2ecc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/b7dc673704befe893c8e96d1c9b504b5a68966d8fea73536e7f7684079e533a8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_greetings_04 -> audio/generated/fr-FR/utterances/b7dc673704befe893c8e96d1c9b504b5a68966d8fea73536e7f7684079e533a8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('25b811f5-c834-5a16-b7df-6fa1ca739fc5', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_greetings_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dbbb86ace387c9f077b9b5f59944bb4d99a261c9aa1f4e5dd859dd2cc8df3eca'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fdf64010-8e01-5f48-9576-9cc5ad09ba09', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('25b811f5-c834-5a16-b7df-6fa1ca739fc5', 1), 'dbbb86ace387c9f077b9b5f59944bb4d99a261c9aa1f4e5dd859dd2cc8df3eca',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/b7dc673704befe893c8e96d1c9b504b5a68966d8fea73536e7f7684079e533a8.mp3', 1332, '2026-09-14 08:53:07.854942', '200ef7d69b2a684ef6631fc439f4119b0a9fc8f79401aa715b4a8b742d8c2ecc', 'validated', '{"audio_key":"b7dc673704befe893c8e96d1c9b504b5a68966d8fea73536e7f7684079e533a8","entity_key":"u_first_greetings_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"200ef7d69b2a684ef6631fc439f4119b0a9fc8f79401aa715b4a8b742d8c2ecc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/b7dc673704befe893c8e96d1c9b504b5a68966d8fea73536e7f7684079e533a8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_first_greetings_02_listen -> audio/generated/fr-FR/utterances/b7dc673704befe893c8e96d1c9b504b5a68966d8fea73536e7f7684079e533a8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('e254d1ec-a3aa-5c2f-8ac3-a1f9c85ee7f5', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_first_greetings_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dbbb86ace387c9f077b9b5f59944bb4d99a261c9aa1f4e5dd859dd2cc8df3eca'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f2d5d05e-864b-5f1a-a8f4-d6f99928b2d1', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('e254d1ec-a3aa-5c2f-8ac3-a1f9c85ee7f5', 1), 'dbbb86ace387c9f077b9b5f59944bb4d99a261c9aa1f4e5dd859dd2cc8df3eca',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/b7dc673704befe893c8e96d1c9b504b5a68966d8fea73536e7f7684079e533a8.mp3', 1332, '2026-09-14 08:53:07.854942', '200ef7d69b2a684ef6631fc439f4119b0a9fc8f79401aa715b4a8b742d8c2ecc', 'validated', '{"audio_key":"b7dc673704befe893c8e96d1c9b504b5a68966d8fea73536e7f7684079e533a8","entity_key":"e_first_greetings_02_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"200ef7d69b2a684ef6631fc439f4119b0a9fc8f79401aa715b4a8b742d8c2ecc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/b7dc673704befe893c8e96d1c9b504b5a68966d8fea73536e7f7684079e533a8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_objects_04 -> audio/generated/fr-FR/utterances/bca5fbede5cc87aa2021b618e28ac6d16192e7b83fab01d0f15a8c6aa9e01a88.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('345c7967-6d3c-5012-9f4a-c7c6d7252f1d', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_objects_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '355a6c7b846555b715ecdc80b8e625156d598ccd6abcc01eb826cb3073b275af'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0c48dc10-bf92-5e04-854d-276a755fda85', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('345c7967-6d3c-5012-9f4a-c7c6d7252f1d', 1), '355a6c7b846555b715ecdc80b8e625156d598ccd6abcc01eb826cb3073b275af',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/bca5fbede5cc87aa2021b618e28ac6d16192e7b83fab01d0f15a8c6aa9e01a88.mp3', 1071, '2026-09-14 08:53:07.906509', '042b55bf4d3b0df8f4ac166f61e78ce34510e3d318ea921cfed06731d7f550e9', 'validated', '{"audio_key":"bca5fbede5cc87aa2021b618e28ac6d16192e7b83fab01d0f15a8c6aa9e01a88","entity_key":"u_first_objects_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"042b55bf4d3b0df8f4ac166f61e78ce34510e3d318ea921cfed06731d7f550e9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/bca5fbede5cc87aa2021b618e28ac6d16192e7b83fab01d0f15a8c6aa9e01a88.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_first_objects_02_listen -> audio/generated/fr-FR/utterances/bca5fbede5cc87aa2021b618e28ac6d16192e7b83fab01d0f15a8c6aa9e01a88.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('4d4faaf8-5575-5c59-b5f0-b33e591f788c', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_first_objects_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '355a6c7b846555b715ecdc80b8e625156d598ccd6abcc01eb826cb3073b275af'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c0eaada9-ac7e-5628-94b2-de8f1a74f915', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('4d4faaf8-5575-5c59-b5f0-b33e591f788c', 1), '355a6c7b846555b715ecdc80b8e625156d598ccd6abcc01eb826cb3073b275af',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/bca5fbede5cc87aa2021b618e28ac6d16192e7b83fab01d0f15a8c6aa9e01a88.mp3', 1071, '2026-09-14 08:53:07.906509', '042b55bf4d3b0df8f4ac166f61e78ce34510e3d318ea921cfed06731d7f550e9', 'validated', '{"audio_key":"bca5fbede5cc87aa2021b618e28ac6d16192e7b83fab01d0f15a8c6aa9e01a88","entity_key":"e_first_objects_02_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"042b55bf4d3b0df8f4ac166f61e78ce34510e3d318ea921cfed06731d7f550e9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/bca5fbede5cc87aa2021b618e28ac6d16192e7b83fab01d0f15a8c6aa9e01a88.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_alphabet_accents_01 -> audio/generated/fr-FR/utterances/c05e80acf6f06544e7fa66ffb5fb8deb6e27ba866f7d9ecbe08c477a5afe06ba.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a112589c-e518-54f1-9e8c-5e3461bbd3f1', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_alphabet_accents_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1743208f8d12e9ce0fc2a439d90af0621ca76e3b638e98f47c3eecfb7354a944'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a99322a6-370e-51af-a65a-e17220313f27', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a112589c-e518-54f1-9e8c-5e3461bbd3f1', 1), '1743208f8d12e9ce0fc2a439d90af0621ca76e3b638e98f47c3eecfb7354a944',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/c05e80acf6f06544e7fa66ffb5fb8deb6e27ba866f7d9ecbe08c477a5afe06ba.mp3', 1253, '2026-09-14 08:53:08.849596', 'f4421543e20b7083402c312fb2366cd332827ecdb443f480b969f01ff582005f', 'validated', '{"audio_key":"c05e80acf6f06544e7fa66ffb5fb8deb6e27ba866f7d9ecbe08c477a5afe06ba","entity_key":"u_alphabet_accents_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f4421543e20b7083402c312fb2366cd332827ecdb443f480b969f01ff582005f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/c05e80acf6f06544e7fa66ffb5fb8deb6e27ba866f7d9ecbe08c477a5afe06ba.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_greetings_03 -> audio/generated/fr-FR/utterances/daf7c8f77e22090a652295334d7ea606425ece368509dc587fd5870a61cce726.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('58a29a4f-9c14-5ea6-90ae-6f26875ca10c', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_greetings_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2e7618e282ad10e2e441ae2de98570503896cd4877a29a20605d71b9c0b7ba98'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cfb14191-03a7-5310-949e-7274188aed9c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('58a29a4f-9c14-5ea6-90ae-6f26875ca10c', 1), '2e7618e282ad10e2e441ae2de98570503896cd4877a29a20605d71b9c0b7ba98',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/daf7c8f77e22090a652295334d7ea606425ece368509dc587fd5870a61cce726.mp3', 914, '2026-09-14 08:53:08.840134', 'ebf3bf62cd1589ac420590414c0acafb2b31039127d846adde4d627ba632194c', 'validated', '{"audio_key":"daf7c8f77e22090a652295334d7ea606425ece368509dc587fd5870a61cce726","entity_key":"u_first_greetings_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ebf3bf62cd1589ac420590414c0acafb2b31039127d846adde4d627ba632194c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/daf7c8f77e22090a652295334d7ea606425ece368509dc587fd5870a61cce726.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_polite_words_04 -> audio/generated/fr-FR/utterances/db4c8c0fa7ddb6a962b74eea83da458a8868c30d85562444a61fa8d87a6ea92b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('56418924-54c1-566c-9509-2a59085e4a62', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_polite_words_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '90dfa09aef0d97b06073d26e33e52ba937b63d089a9edf771865e0acb8c610de'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1968bba4-e528-5f84-9087-52a5b4b24f82', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('56418924-54c1-566c-9509-2a59085e4a62', 1), '90dfa09aef0d97b06073d26e33e52ba937b63d089a9edf771865e0acb8c610de',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/db4c8c0fa7ddb6a962b74eea83da458a8868c30d85562444a61fa8d87a6ea92b.mp3', 1097, '2026-09-14 08:53:09.830982', '30dadf78ff535e531bd841333bf52f422472f5387694f1c84410eab3bb950ea2', 'validated', '{"audio_key":"db4c8c0fa7ddb6a962b74eea83da458a8868c30d85562444a61fa8d87a6ea92b","entity_key":"u_polite_words_04","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"30dadf78ff535e531bd841333bf52f422472f5387694f1c84410eab3bb950ea2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/db4c8c0fa7ddb6a962b74eea83da458a8868c30d85562444a61fa8d87a6ea92b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_polite_words_02_listen -> audio/generated/fr-FR/utterances/db4c8c0fa7ddb6a962b74eea83da458a8868c30d85562444a61fa8d87a6ea92b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('fba36d97-8146-5e50-be40-a0548eb3ab13', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_polite_words_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '90dfa09aef0d97b06073d26e33e52ba937b63d089a9edf771865e0acb8c610de'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('37b20bc0-e52b-5145-91f8-45de1ee92075', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('fba36d97-8146-5e50-be40-a0548eb3ab13', 1), '90dfa09aef0d97b06073d26e33e52ba937b63d089a9edf771865e0acb8c610de',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/db4c8c0fa7ddb6a962b74eea83da458a8868c30d85562444a61fa8d87a6ea92b.mp3', 1097, '2026-09-14 08:53:09.830982', '30dadf78ff535e531bd841333bf52f422472f5387694f1c84410eab3bb950ea2', 'validated', '{"audio_key":"db4c8c0fa7ddb6a962b74eea83da458a8868c30d85562444a61fa8d87a6ea92b","entity_key":"e_polite_words_02_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"30dadf78ff535e531bd841333bf52f422472f5387694f1c84410eab3bb950ea2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/db4c8c0fa7ddb6a962b74eea83da458a8868c30d85562444a61fa8d87a6ea92b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_objects_01 -> audio/generated/fr-FR/utterances/e05977f517e38da8f87fdc32b0fb0e7370da4e4f9204e99c336612063e77ee69.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('53908958-59bf-559c-8c7f-cd6e97644184', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_objects_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a5698c9a8e7804a3f6dd02312a0f027835e0097deb3c8234283d908d6cf7c77e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('17ad26ce-0417-5bac-a4d0-5d0763aad4dc', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('53908958-59bf-559c-8c7f-cd6e97644184', 1), 'a5698c9a8e7804a3f6dd02312a0f027835e0097deb3c8234283d908d6cf7c77e',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/e05977f517e38da8f87fdc32b0fb0e7370da4e4f9204e99c336612063e77ee69.mp3', 1097, '2026-09-14 08:53:09.782799', '2319cf35d5856d21044d6e20c782bea859cc2c3cb64c322559c778ddb472bf8e', 'validated', '{"audio_key":"e05977f517e38da8f87fdc32b0fb0e7370da4e4f9204e99c336612063e77ee69","entity_key":"u_first_objects_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2319cf35d5856d21044d6e20c782bea859cc2c3cb64c322559c778ddb472bf8e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/e05977f517e38da8f87fdc32b0fb0e7370da4e4f9204e99c336612063e77ee69.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_numbers_0_10_01 -> audio/generated/fr-FR/utterances/e0f5d999e9e79d6a9eed4820044beaa2f8f94f822345fbd32acc15104afaf323.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('00121bb5-8499-5e3f-89ba-37cc4af708d3', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_numbers_0_10_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b444dd71bbdcf89aef1bbc615abe41de248719a11bb5fc194e890254fad4c3a2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2cbe9c07-518d-514e-bfff-5d99080df616', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('00121bb5-8499-5e3f-89ba-37cc4af708d3', 1), 'b444dd71bbdcf89aef1bbc615abe41de248719a11bb5fc194e890254fad4c3a2',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/e0f5d999e9e79d6a9eed4820044beaa2f8f94f822345fbd32acc15104afaf323.mp3', 1384, '2026-09-14 08:53:10.904160', '6401ef1cc0644d26d983f9533c9c9e183960ac016dc840b964079134a3249678', 'validated', '{"audio_key":"e0f5d999e9e79d6a9eed4820044beaa2f8f94f822345fbd32acc15104afaf323","entity_key":"u_numbers_0_10_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6401ef1cc0644d26d983f9533c9c9e183960ac016dc840b964079134a3249678","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/e0f5d999e9e79d6a9eed4820044beaa2f8f94f822345fbd32acc15104afaf323.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_survival_words_03 -> audio/generated/fr-FR/utterances/ef89be8ff044a70cd7261b0c381b46f3fa163f615ec6c59c0bba929c6a6c6444.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f242a403-fc18-5916-89e4-d819be80838f', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_survival_words_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '41250c92268d79eb7c48347c589aa4a26112a38ecfad55c2f9c3f11e564cb63c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bd68b9c8-98a0-5b44-8d41-8fe61a8dd7fa', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f242a403-fc18-5916-89e4-d819be80838f', 1), '41250c92268d79eb7c48347c589aa4a26112a38ecfad55c2f9c3f11e564cb63c',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/ef89be8ff044a70cd7261b0c381b46f3fa163f615ec6c59c0bba929c6a6c6444.mp3', 1253, '2026-09-14 08:53:10.901418', 'af10c89576e96d56bc9e2b1c601cdb6c54164840ad121c3310fd0e38b79e5c58', 'validated', '{"audio_key":"ef89be8ff044a70cd7261b0c381b46f3fa163f615ec6c59c0bba929c6a6c6444","entity_key":"u_survival_words_03","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"af10c89576e96d56bc9e2b1c601cdb6c54164840ad121c3310fd0e38b79e5c58","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/ef89be8ff044a70cd7261b0c381b46f3fa163f615ec6c59c0bba929c6a6c6444.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_objects_02 -> audio/generated/fr-FR/utterances/f27e2c82ba29664429e114b50d344e106e3e9637a21043d07c95d4050cec6ed7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9e8f05a4-5008-5763-927e-e9f9bdc8bc65', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_objects_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ffc695497dfd18bc13d3db49cd8cafde0c8df4a928945c0d6028037cc9c2ef70'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('77bda4d0-7dc2-5b93-a713-36e221294a5c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9e8f05a4-5008-5763-927e-e9f9bdc8bc65', 1), 'ffc695497dfd18bc13d3db49cd8cafde0c8df4a928945c0d6028037cc9c2ef70',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/f27e2c82ba29664429e114b50d344e106e3e9637a21043d07c95d4050cec6ed7.mp3', 1149, '2026-09-14 08:53:11.863923', '47a2177c43e2015ba45611c4bb9b30c6995568a74561e5d3bb7de42423d33657', 'validated', '{"audio_key":"f27e2c82ba29664429e114b50d344e106e3e9637a21043d07c95d4050cec6ed7","entity_key":"u_first_objects_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"47a2177c43e2015ba45611c4bb9b30c6995568a74561e5d3bb7de42423d33657","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/f27e2c82ba29664429e114b50d344e106e3e9637a21043d07c95d4050cec6ed7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_first_objects_01_listen -> audio/generated/fr-FR/utterances/f27e2c82ba29664429e114b50d344e106e3e9637a21043d07c95d4050cec6ed7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('71f07eef-4ce7-53b2-90d3-f86d419c13e6', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_first_objects_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ffc695497dfd18bc13d3db49cd8cafde0c8df4a928945c0d6028037cc9c2ef70'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0ef590e9-2276-5b4a-a51d-191e4c809688', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('71f07eef-4ce7-53b2-90d3-f86d419c13e6', 1), 'ffc695497dfd18bc13d3db49cd8cafde0c8df4a928945c0d6028037cc9c2ef70',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/f27e2c82ba29664429e114b50d344e106e3e9637a21043d07c95d4050cec6ed7.mp3', 1149, '2026-09-14 08:53:11.863923', '47a2177c43e2015ba45611c4bb9b30c6995568a74561e5d3bb7de42423d33657', 'validated', '{"audio_key":"f27e2c82ba29664429e114b50d344e106e3e9637a21043d07c95d4050cec6ed7","entity_key":"e_first_objects_01_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"47a2177c43e2015ba45611c4bb9b30c6995568a74561e5d3bb7de42423d33657","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/f27e2c82ba29664429e114b50d344e106e3e9637a21043d07c95d4050cec6ed7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_greetings_02 -> audio/generated/fr-FR/utterances/fa04ad2ef9a2a9d8bb825fc80fd40f78620038c97f9e337ce3a11877b2d64ae6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('eb344ab7-aeb6-58b6-9243-ff564ad65ae5', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_greetings_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '212febfe999494533c29f6bf73cd2ed8d1343f023b8e6a04a3421be28da29b89'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ed1d78f3-7fe0-5755-bc2e-cb16a069d907', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('eb344ab7-aeb6-58b6-9243-ff564ad65ae5', 1), '212febfe999494533c29f6bf73cd2ed8d1343f023b8e6a04a3421be28da29b89',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/fa04ad2ef9a2a9d8bb825fc80fd40f78620038c97f9e337ce3a11877b2d64ae6.mp3', 835, '2026-09-14 08:53:11.851047', '3f275aa597db8ff383cfb9eca4de814a7154b1b0979b632024b92bf8d04edc99', 'validated', '{"audio_key":"fa04ad2ef9a2a9d8bb825fc80fd40f78620038c97f9e337ce3a11877b2d64ae6","entity_key":"u_first_greetings_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3f275aa597db8ff383cfb9eca4de814a7154b1b0979b632024b92bf8d04edc99","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/fa04ad2ef9a2a9d8bb825fc80fd40f78620038c97f9e337ce3a11877b2d64ae6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_first_greetings_01_listen -> audio/generated/fr-FR/utterances/fa04ad2ef9a2a9d8bb825fc80fd40f78620038c97f9e337ce3a11877b2d64ae6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('8b9d91e8-e5f0-577d-b6d4-e2913f31abb9', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_first_greetings_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '212febfe999494533c29f6bf73cd2ed8d1343f023b8e6a04a3421be28da29b89'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0b85f963-a12d-5f21-8bdd-28e026338355', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('8b9d91e8-e5f0-577d-b6d4-e2913f31abb9', 1), '212febfe999494533c29f6bf73cd2ed8d1343f023b8e6a04a3421be28da29b89',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/fa04ad2ef9a2a9d8bb825fc80fd40f78620038c97f9e337ce3a11877b2d64ae6.mp3', 835, '2026-09-14 08:53:11.851047', '3f275aa597db8ff383cfb9eca4de814a7154b1b0979b632024b92bf8d04edc99', 'validated', '{"audio_key":"fa04ad2ef9a2a9d8bb825fc80fd40f78620038c97f9e337ce3a11877b2d64ae6","entity_key":"e_first_greetings_01_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3f275aa597db8ff383cfb9eca4de814a7154b1b0979b632024b92bf8d04edc99","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/fa04ad2ef9a2a9d8bb825fc80fd40f78620038c97f9e337ce3a11877b2d64ae6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_conversation_01 -> audio/generated/fr-FR/utterances/fea6babc37cf9a46cdfa724d8b752d5d97a8fa577cea43adacc384ea40f461e7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('1579b0b0-f7ef-5767-91e1-e215fd37bba6', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_conversation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ae64bc6621df37558ac0f5c5a0276204c26c20d2d4e9082630fcfa2200469bcb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('da49a730-1357-5836-a37a-4eb565f4e599', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('1579b0b0-f7ef-5767-91e1-e215fd37bba6', 1), 'ae64bc6621df37558ac0f5c5a0276204c26c20d2d4e9082630fcfa2200469bcb',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/fea6babc37cf9a46cdfa724d8b752d5d97a8fa577cea43adacc384ea40f461e7.mp3', 1436, '2026-09-14 08:53:12.858672', '248533866c75f5ee0fe3a1959b1f9ff19ab755f036d79f9a7ecd83f1b0a6fa66', 'validated', '{"audio_key":"fea6babc37cf9a46cdfa724d8b752d5d97a8fa577cea43adacc384ea40f461e7","entity_key":"u_first_conversation_01","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"248533866c75f5ee0fe3a1959b1f9ff19ab755f036d79f9a7ecd83f1b0a6fa66","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/fea6babc37cf9a46cdfa724d8b752d5d97a8fa577cea43adacc384ea40f461e7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_alphabet_accents_02 -> audio/generated/fr-FR/utterances/ff44b8d6751ebcd399fe4e0a6d43cd3d7bb2df12cfb4189f5c91d11467c7f202.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('284f4d04-48a5-5559-8e6c-caa9f3d83ac4', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_alphabet_accents_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fe4c36ebc9b60a61931831a4e73f11004884346936f760673771a13e1f04dfad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2f1bad62-42d7-5a67-98b5-140f67941e28', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('284f4d04-48a5-5559-8e6c-caa9f3d83ac4', 1), 'fe4c36ebc9b60a61931831a4e73f11004884346936f760673771a13e1f04dfad',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/ff44b8d6751ebcd399fe4e0a6d43cd3d7bb2df12cfb4189f5c91d11467c7f202.mp3', 1149, '2026-09-14 08:53:12.836688', '7b8185b7f9dc7204243f1e0f5e696365962de6709265c352cf7ba9a790008487', 'validated', '{"audio_key":"ff44b8d6751ebcd399fe4e0a6d43cd3d7bb2df12cfb4189f5c91d11467c7f202","entity_key":"u_alphabet_accents_02","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7b8185b7f9dc7204243f1e0f5e696365962de6709265c352cf7ba9a790008487","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/ff44b8d6751ebcd399fe4e0a6d43cd3d7bb2df12cfb4189f5c91d11467c7f202.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_alphabet_accents_01_listen -> audio/generated/fr-FR/utterances/ff44b8d6751ebcd399fe4e0a6d43cd3d7bb2df12cfb4189f5c91d11467c7f202.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('05f579f3-d758-5fde-a770-0fc9f1f7bb54', 1)
  AND voice_key = 'fr-fr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_alphabet_accents_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fe4c36ebc9b60a61931831a4e73f11004884346936f760673771a13e1f04dfad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('500b0556-6134-5351-a393-a4c056cbc797', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('05f579f3-d758-5fde-a770-0fc9f1f7bb54', 1), 'fe4c36ebc9b60a61931831a4e73f11004884346936f760673771a13e1f04dfad',
  'fr-fr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/fr-FR/utterances/ff44b8d6751ebcd399fe4e0a6d43cd3d7bb2df12cfb4189f5c91d11467c7f202.mp3', 1149, '2026-09-14 08:53:12.836688', '7b8185b7f9dc7204243f1e0f5e696365962de6709265c352cf7ba9a790008487', 'validated', '{"audio_key":"ff44b8d6751ebcd399fe4e0a6d43cd3d7bb2df12cfb4189f5c91d11467c7f202","entity_key":"e_alphabet_accents_01_listen","voice_id":"6FXyooAOTqUK8m2HWm32","voice_name":"Marine - Premium Conversational AI","voice_labels":{"gender":"female","accent":"parisian","age":"young","category":"professional","language":"fr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7b8185b7f9dc7204243f1e0f5e696365962de6709265c352cf7ba9a790008487","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/fr-FR/utterances/ff44b8d6751ebcd399fe4e0a6d43cd3d7bb2df12cfb4189f5c91d11467c7f202.mp3"}'
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

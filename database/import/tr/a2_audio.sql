-- Generated audio link import for tr-TR A2
-- Source manifest: audio/manifests/tr/A2.json
-- Generated rows: 260
-- Storage mode: relative_path
-- storage_url is intentionally portable; prepend your server/CDN base URL at runtime.
-- Run AFTER the matching level content import.
SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci;
SET time_zone = '+00:00';
SET @audio_language_id = (SELECT id FROM languages WHERE code = 'tr' LIMIT 1);
SET @audio_variant_id = (SELECT id FROM language_variants WHERE code = 'tr-TR' LIMIT 1);
START TRANSACTION;

-- d_appointments_and_plans_02:3 -> audio/generated/tr-TR/dialogues/0434e9fd6e5b8120244b695848cd7d0dc3c01255ef17f68dd0be293882f4ef13.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9d3ee0b6-78a8-5bea-bf26-47372bfc2cda', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_appointments_and_plans_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '93f275e6e94dc2e6278c2e5af4a45b3429501ddfe4c21f81a9ed1153583bc00e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('22462d21-fe7e-5125-b0e5-18dd77e57efc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9d3ee0b6-78a8-5bea-bf26-47372bfc2cda', 1), '93f275e6e94dc2e6278c2e5af4a45b3429501ddfe4c21f81a9ed1153583bc00e',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/0434e9fd6e5b8120244b695848cd7d0dc3c01255ef17f68dd0be293882f4ef13.mp3', 1567, '2026-09-13 17:07:33.173788', 'ab604a15dc2a1a8e748bfb2ad3bb965186e15b0b55fa075cde0de83d67584645', 'validated', '{"audio_key":"0434e9fd6e5b8120244b695848cd7d0dc3c01255ef17f68dd0be293882f4ef13","entity_key":"d_appointments_and_plans_02:3","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ab604a15dc2a1a8e748bfb2ad3bb965186e15b0b55fa075cde0de83d67584645","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/0434e9fd6e5b8120244b695848cd7d0dc3c01255ef17f68dd0be293882f4ef13.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_appointments_and_plans_01:3 -> audio/generated/tr-TR/dialogues/04768d9b0a8326acd8ea48828dec32353c5b9c8cf2aae0b202ebd726ec2fb4e7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('531e9035-301d-5256-b936-52d66a36497b', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_appointments_and_plans_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6001e58f39b8a689c5f80e18534e13b661d32ba6142d4f6cf2e6d92b63ba3f64'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ecedb85d-5168-5287-8d2c-4c6a19ad17dc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('531e9035-301d-5256-b936-52d66a36497b', 1), '6001e58f39b8a689c5f80e18534e13b661d32ba6142d4f6cf2e6d92b63ba3f64',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/04768d9b0a8326acd8ea48828dec32353c5b9c8cf2aae0b202ebd726ec2fb4e7.mp3', 1567, '2026-09-13 17:07:33.141521', '375cfdd8dcf8bea11805da18e565bf2a9323878da79204fe72e5b0c0d8f2e46d', 'validated', '{"audio_key":"04768d9b0a8326acd8ea48828dec32353c5b9c8cf2aae0b202ebd726ec2fb4e7","entity_key":"d_appointments_and_plans_01:3","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"375cfdd8dcf8bea11805da18e565bf2a9323878da79204fe72e5b0c0d8f2e46d","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/04768d9b0a8326acd8ea48828dec32353c5b9c8cf2aae0b202ebd726ec2fb4e7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_appointments_and_plans_01:2 -> audio/generated/tr-TR/dialogues/077bff92dfae6745ac3c282bb143fe6bfcc6424aa00aa81063d0e4bf9a728a04.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1ea5e8a3-6821-5290-a0cf-f2c07db50f7e', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_appointments_and_plans_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4ca1a7feedffb7031fdd18abdc7183147c8b5cd46dc772c97c06b1f66b014534'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('684d9d6f-8ca3-508e-9ade-30bbaafc01d0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1ea5e8a3-6821-5290-a0cf-f2c07db50f7e', 1), '4ca1a7feedffb7031fdd18abdc7183147c8b5cd46dc772c97c06b1f66b014534',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/077bff92dfae6745ac3c282bb143fe6bfcc6424aa00aa81063d0e4bf9a728a04.mp3', 1619, '2026-09-13 17:07:34.491888', '811c6cc80c7a57f71122fd2a0bd9aae52262a860da37d4ed597f3ef6cd53453c', 'validated', '{"audio_key":"077bff92dfae6745ac3c282bb143fe6bfcc6424aa00aa81063d0e4bf9a728a04","entity_key":"d_appointments_and_plans_01:2","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"811c6cc80c7a57f71122fd2a0bd9aae52262a860da37d4ed597f3ef6cd53453c","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/077bff92dfae6745ac3c282bb143fe6bfcc6424aa00aa81063d0e4bf9a728a04.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_past_weekend_02:3 -> audio/generated/tr-TR/dialogues/0ee98943de7f05f87d51fe501edc0000c65e92464fc32f097501528c826613f6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cea46bc9-dc89-5a04-a621-fb85e71b5d89', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_past_weekend_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2766c9cc265eacaf906287286bfe7f6f317f9323e4f953fc6c2c95b7c9752378'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('458238b3-277d-552b-b10f-0af6a474703a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cea46bc9-dc89-5a04-a621-fb85e71b5d89', 1), '2766c9cc265eacaf906287286bfe7f6f317f9323e4f953fc6c2c95b7c9752378',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/0ee98943de7f05f87d51fe501edc0000c65e92464fc32f097501528c826613f6.mp3', 1280, '2026-09-13 17:07:34.169947', 'e64ea4ecb92ccb27756c4d201bade11bb80a28be0343cef62e11bf25a011aeb4', 'validated', '{"audio_key":"0ee98943de7f05f87d51fe501edc0000c65e92464fc32f097501528c826613f6","entity_key":"d_past_weekend_02:3","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e64ea4ecb92ccb27756c4d201bade11bb80a28be0343cef62e11bf25a011aeb4","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/0ee98943de7f05f87d51fe501edc0000c65e92464fc32f097501528c826613f6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_a2_city_day_capstone_01:3 -> audio/generated/tr-TR/dialogues/16057eeed40c3bf0bded9a54685132a993a9e34082928214e448499fda86638d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('508177c3-4f90-5480-8b12-9635ad7a92d8', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_a2_city_day_capstone_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '076d1b550f40e44af85c44db24fd1cb3d6fb4b594c8b7dce043601c3c92a46a8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('78003876-bc2b-5a9b-82f0-5b3e41bb079b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('508177c3-4f90-5480-8b12-9635ad7a92d8', 1), '076d1b550f40e44af85c44db24fd1cb3d6fb4b594c8b7dce043601c3c92a46a8',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/16057eeed40c3bf0bded9a54685132a993a9e34082928214e448499fda86638d.mp3', 1515, '2026-09-13 17:07:35.245732', '84739b12edeb68bca71792a01822e2abe7af10c3f3aa23bf85e56fe387f87969', 'validated', '{"audio_key":"16057eeed40c3bf0bded9a54685132a993a9e34082928214e448499fda86638d","entity_key":"d_a2_city_day_capstone_01:3","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"84739b12edeb68bca71792a01822e2abe7af10c3f3aa23bf85e56fe387f87969","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/16057eeed40c3bf0bded9a54685132a993a9e34082928214e448499fda86638d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_habits_and_frequency_01:4 -> audio/generated/tr-TR/dialogues/16bb1ca4bf41e77bb7f4e5aa45b6d8143d5983c4dc8c505f8b14be28706d437b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2aaf95cf-094a-566a-88f1-96bca910738f', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_habits_and_frequency_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fc340c8e8410a4d8bfeb2667f29e97e8a343ca62adee6701d3f0224e28e0c5cc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d56d8398-ad2f-5a76-ba48-84de425d15c9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2aaf95cf-094a-566a-88f1-96bca910738f', 1), 'fc340c8e8410a4d8bfeb2667f29e97e8a343ca62adee6701d3f0224e28e0c5cc',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/16bb1ca4bf41e77bb7f4e5aa45b6d8143d5983c4dc8c505f8b14be28706d437b.mp3', 1436, '2026-09-13 17:07:35.686901', '644ae5671a43ea4827b24cd0f8a632db7c486e2b40779a9752bad98445b854e7', 'validated', '{"audio_key":"16bb1ca4bf41e77bb7f4e5aa45b6d8143d5983c4dc8c505f8b14be28706d437b","entity_key":"d_habits_and_frequency_01:4","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"644ae5671a43ea4827b24cd0f8a632db7c486e2b40779a9752bad98445b854e7","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/16bb1ca4bf41e77bb7f4e5aa45b6d8143d5983c4dc8c505f8b14be28706d437b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_appointments_and_plans_01:4 -> audio/generated/tr-TR/dialogues/192d5bff4c95264a2b65134c12cf909acc9147a94a95b7b45f9efd31f06084e7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('12769491-fd8f-5f54-90f4-088eb30eb03d', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_appointments_and_plans_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a01aebada0119a7679bf91118371f226325f1d22bfc3e68d237fb13146646805'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dc05a7cb-2275-5633-b07f-226e22c3d608', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('12769491-fd8f-5f54-90f4-088eb30eb03d', 1), 'a01aebada0119a7679bf91118371f226325f1d22bfc3e68d237fb13146646805',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/192d5bff4c95264a2b65134c12cf909acc9147a94a95b7b45f9efd31f06084e7.mp3', 1332, '2026-09-13 17:07:36.312224', 'c5bb9d2486365b1b3d5f496fd70e3ac54144da8ce026d8810f2bd5ac5f25deaa', 'validated', '{"audio_key":"192d5bff4c95264a2b65134c12cf909acc9147a94a95b7b45f9efd31f06084e7","entity_key":"d_appointments_and_plans_01:4","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c5bb9d2486365b1b3d5f496fd70e3ac54144da8ce026d8810f2bd5ac5f25deaa","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/192d5bff4c95264a2b65134c12cf909acc9147a94a95b7b45f9efd31f06084e7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reasons_and_results_02:2 -> audio/generated/tr-TR/dialogues/1de9652322a39eabb70b595c4a68ec85c35b6f73688de462a96ce502dd44acd3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f9bb8e39-e212-5b06-8bb8-f6e2df0f6712', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reasons_and_results_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5b9a6866a8f3ba7a51f3df4e50ee6edccc0616ced9b01fb4a656b8a9235b2aa1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('abe4dba6-b255-5c4f-b969-91e440679dfd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f9bb8e39-e212-5b06-8bb8-f6e2df0f6712', 1), '5b9a6866a8f3ba7a51f3df4e50ee6edccc0616ced9b01fb4a656b8a9235b2aa1',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/1de9652322a39eabb70b595c4a68ec85c35b6f73688de462a96ce502dd44acd3.mp3', 1436, '2026-09-13 17:07:36.916031', 'b8ed1d80e134ebd87b0cf3d31d2ad59d65651812836d47cbf55bef5df73b8263', 'validated', '{"audio_key":"1de9652322a39eabb70b595c4a68ec85c35b6f73688de462a96ce502dd44acd3","entity_key":"d_reasons_and_results_02:2","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b8ed1d80e134ebd87b0cf3d31d2ad59d65651812836d47cbf55bef5df73b8263","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/1de9652322a39eabb70b595c4a68ec85c35b6f73688de462a96ce502dd44acd3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_choices_and_preferences_01:3 -> audio/generated/tr-TR/dialogues/2253a6b943bffe0ef201cdc29f7cafed90e9d94340b8c529ac66e26993e8fea6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('be4f0842-160c-55e0-989b-3e80da61d281', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_choices_and_preferences_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c9338bea98f4732aaa45a9815ab305ed07044f9dbef30cb0094b9865450ea340'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c31128b5-2b34-5338-a10b-f453b0eeefae', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('be4f0842-160c-55e0-989b-3e80da61d281', 1), 'c9338bea98f4732aaa45a9815ab305ed07044f9dbef30cb0094b9865450ea340',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/2253a6b943bffe0ef201cdc29f7cafed90e9d94340b8c529ac66e26993e8fea6.mp3', 1436, '2026-09-13 17:07:37.331117', '462c22b0b16ad0c39b4db6d12fce159a03e07c3786c12a03b77d57018b7d1031', 'validated', '{"audio_key":"2253a6b943bffe0ef201cdc29f7cafed90e9d94340b8c529ac66e26993e8fea6","entity_key":"d_choices_and_preferences_01:3","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"462c22b0b16ad0c39b4db6d12fce159a03e07c3786c12a03b77d57018b7d1031","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/2253a6b943bffe0ef201cdc29f7cafed90e9d94340b8c529ac66e26993e8fea6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reasons_and_results_01:1 -> audio/generated/tr-TR/dialogues/237ef6fc3015da00c669ef04b17206c7434757b4420202725065b6ddadd77127.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('950e2106-d829-5c85-b239-f255a8b70a35', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reasons_and_results_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fc709a780670a9e388e4e67737f4cece1dc132acf7103b933c0d28cc5c16d4ca'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b13ad2a4-7582-5bee-b66f-343886f1566b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('950e2106-d829-5c85-b239-f255a8b70a35', 1), 'fc709a780670a9e388e4e67737f4cece1dc132acf7103b933c0d28cc5c16d4ca',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/237ef6fc3015da00c669ef04b17206c7434757b4420202725065b6ddadd77127.mp3', 1280, '2026-09-13 17:07:37.995357', '0ca3614b5a87f93ecb7a6aaad44d6d18793b29fd43ea83be7048de29dd420070', 'validated', '{"audio_key":"237ef6fc3015da00c669ef04b17206c7434757b4420202725065b6ddadd77127","entity_key":"d_reasons_and_results_01:1","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0ca3614b5a87f93ecb7a6aaad44d6d18793b29fd43ea83be7048de29dd420070","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/237ef6fc3015da00c669ef04b17206c7434757b4420202725065b6ddadd77127.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_health_and_advice_01:2 -> audio/generated/tr-TR/dialogues/28acee76d6551c8a02d72495d69eae19e0a8ff4c7d87753636fb683f857859a9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e1dae126-dc06-5064-8096-80c3190e4dfc', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_health_and_advice_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '70d013cd801710481f3f44859964cf6d9446ec1a312dc9d648756e8096c3e125'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ae236f84-5992-57eb-95a2-f075df731fe2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e1dae126-dc06-5064-8096-80c3190e4dfc', 1), '70d013cd801710481f3f44859964cf6d9446ec1a312dc9d648756e8096c3e125',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/28acee76d6551c8a02d72495d69eae19e0a8ff4c7d87753636fb683f857859a9.mp3', 1697, '2026-09-13 17:07:38.398869', 'bcc6cdb89f5c78844ccf181e1dcbdf62ba3a8acc237047dd38083f0b64359548', 'validated', '{"audio_key":"28acee76d6551c8a02d72495d69eae19e0a8ff4c7d87753636fb683f857859a9","entity_key":"d_health_and_advice_01:2","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bcc6cdb89f5c78844ccf181e1dcbdf62ba3a8acc237047dd38083f0b64359548","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/28acee76d6551c8a02d72495d69eae19e0a8ff4c7d87753636fb683f857859a9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_past_weekend_01:1 -> audio/generated/tr-TR/dialogues/2afd83e5bfb7650d58fe6217d4ecb297f98e7785c8f4002053482362ebc29764.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8f9b7a04-031c-559b-bf08-2fd6eb2d48b8', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_past_weekend_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '03b5ed3d0c7e6746607da802e721f0b87d3ce079560bf99488290243986844f2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5c2f09f1-70eb-5ca1-8edb-5cd868e778fb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8f9b7a04-031c-559b-bf08-2fd6eb2d48b8', 1), '03b5ed3d0c7e6746607da802e721f0b87d3ce079560bf99488290243986844f2',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/2afd83e5bfb7650d58fe6217d4ecb297f98e7785c8f4002053482362ebc29764.mp3', 1515, '2026-09-13 17:07:39.004570', '91ed12977aa5f48fd6427c90c3f36387d6203a1d961b2b465ea87539d75ea739', 'validated', '{"audio_key":"2afd83e5bfb7650d58fe6217d4ecb297f98e7785c8f4002053482362ebc29764","entity_key":"d_past_weekend_01:1","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"91ed12977aa5f48fd6427c90c3f36387d6203a1d961b2b465ea87539d75ea739","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/2afd83e5bfb7650d58fe6217d4ecb297f98e7785c8f4002053482362ebc29764.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_travel_and_hotel_02:3 -> audio/generated/tr-TR/dialogues/2d5be24f9e8398347d5c0e6c65db97d6ff4e9ddb4a47591397e4cdee03570181.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f13c9647-c7ef-5c76-bf7c-9a50afc08485', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_travel_and_hotel_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4083df5f0438bbdf883f16676b7099cbbc90d6d3b71fe1e0edf432ad8046d63e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b946b8aa-a662-5bae-9d52-65f3ad2956d7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f13c9647-c7ef-5c76-bf7c-9a50afc08485', 1), '4083df5f0438bbdf883f16676b7099cbbc90d6d3b71fe1e0edf432ad8046d63e',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/2d5be24f9e8398347d5c0e6c65db97d6ff4e9ddb4a47591397e4cdee03570181.mp3', 1149, '2026-09-13 17:07:39.443339', '0da3833721b2bb231a0bfc50a64303a1affb4d6cdb3c123e52b455bbc50cd685', 'validated', '{"audio_key":"2d5be24f9e8398347d5c0e6c65db97d6ff4e9ddb4a47591397e4cdee03570181","entity_key":"d_travel_and_hotel_02:3","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"0da3833721b2bb231a0bfc50a64303a1affb4d6cdb3c123e52b455bbc50cd685","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/2d5be24f9e8398347d5c0e6c65db97d6ff4e9ddb4a47591397e4cdee03570181.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_past_weekend_02:2 -> audio/generated/tr-TR/dialogues/2f3763a426b38a30fa839e3308d3ed3fa8078f4a7ad7a3b14241832de0f17aaf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f38b171f-44eb-5d0f-a568-14299cc40ba3', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_past_weekend_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0fab66538f1ddf3bbddae5cf42e86f25f8168df3466f79e4fbce222d45042c31'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('607e9b22-ae95-57d3-8632-206a603d2112', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f38b171f-44eb-5d0f-a568-14299cc40ba3', 1), '0fab66538f1ddf3bbddae5cf42e86f25f8168df3466f79e4fbce222d45042c31',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/2f3763a426b38a30fa839e3308d3ed3fa8078f4a7ad7a3b14241832de0f17aaf.mp3', 1515, '2026-09-13 17:07:40.105433', 'bdba22a60ce73eb15e4b302d9042d1ca0306bc97907ac9cddaf43cd3cbf9008e', 'validated', '{"audio_key":"2f3763a426b38a30fa839e3308d3ed3fa8078f4a7ad7a3b14241832de0f17aaf","entity_key":"d_past_weekend_02:2","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bdba22a60ce73eb15e4b302d9042d1ca0306bc97907ac9cddaf43cd3cbf9008e","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/2f3763a426b38a30fa839e3308d3ed3fa8078f4a7ad7a3b14241832de0f17aaf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reasons_and_results_01:4 -> audio/generated/tr-TR/dialogues/2f696090906e79ee4b271a7462cd345a95e246b143b2769acc960549bea59570.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('52f66a81-498e-5da4-b1dc-4980c46e050c', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reasons_and_results_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3cae08a0fefd695647d415dfed746441205c1150b3c398cebff37b6e19331de4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('987a07ec-ada8-5801-b4a0-e5d418ff6967', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('52f66a81-498e-5da4-b1dc-4980c46e050c', 1), '3cae08a0fefd695647d415dfed746441205c1150b3c398cebff37b6e19331de4',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/2f696090906e79ee4b271a7462cd345a95e246b143b2769acc960549bea59570.mp3', 1750, '2026-09-13 17:07:40.495205', 'f48195da7b3eaeb078c990ce5fcfb7f47eb57649c3ac43f899b14dc7a4f2160e', 'validated', '{"audio_key":"2f696090906e79ee4b271a7462cd345a95e246b143b2769acc960549bea59570","entity_key":"d_reasons_and_results_01:4","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f48195da7b3eaeb078c990ce5fcfb7f47eb57649c3ac43f899b14dc7a4f2160e","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/2f696090906e79ee4b271a7462cd345a95e246b143b2769acc960549bea59570.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_comparisons_02:2 -> audio/generated/tr-TR/dialogues/3194082ebd6eacf92c767240945460a2c006b5e219bae816ce4da5396fdaa43f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0c3212cf-4791-5a72-aac9-6d72de7e2256', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_comparisons_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4bc68e6942f6f1f3c6565245c39a9ac1918d4a7a417235d97a5a56930d2e6774'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0198e444-9cbc-578e-84d3-43461fbdbbfc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0c3212cf-4791-5a72-aac9-6d72de7e2256', 1), '4bc68e6942f6f1f3c6565245c39a9ac1918d4a7a417235d97a5a56930d2e6774',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/3194082ebd6eacf92c767240945460a2c006b5e219bae816ce4da5396fdaa43f.mp3', 1515, '2026-09-13 17:07:41.106576', '216cb48a069784e389ecfdc148a45b43991e91f9691e1732205c47e84a805951', 'validated', '{"audio_key":"3194082ebd6eacf92c767240945460a2c006b5e219bae816ce4da5396fdaa43f","entity_key":"d_comparisons_02:2","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"216cb48a069784e389ecfdc148a45b43991e91f9691e1732205c47e84a805951","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/3194082ebd6eacf92c767240945460a2c006b5e219bae816ce4da5396fdaa43f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_appointments_and_plans_02:2 -> audio/generated/tr-TR/dialogues/323fa9f17a8a8177a2624a7d0bb1f45de3d4071c719116d56f760ce74673d30d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cdd2673e-fa58-516e-bbab-ba31d61e7309', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_appointments_and_plans_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aba9bf368d82afc976aee677307120aba14eff4b4f9ea3031593b626a77d9732'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7359e08b-e94f-5368-8a23-3b7a512582ca', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cdd2673e-fa58-516e-bbab-ba31d61e7309', 1), 'aba9bf368d82afc976aee677307120aba14eff4b4f9ea3031593b626a77d9732',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/323fa9f17a8a8177a2624a7d0bb1f45de3d4071c719116d56f760ce74673d30d.mp3', 1280, '2026-09-13 17:07:41.508481', 'df486ec1d23a50ca5737266f9a4821e9dac5c326f50f57208283fd6f37bcaed9', 'validated', '{"audio_key":"323fa9f17a8a8177a2624a7d0bb1f45de3d4071c719116d56f760ce74673d30d","entity_key":"d_appointments_and_plans_02:2","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"df486ec1d23a50ca5737266f9a4821e9dac5c326f50f57208283fd6f37bcaed9","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/323fa9f17a8a8177a2624a7d0bb1f45de3d4071c719116d56f760ce74673d30d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_health_and_advice_01:3 -> audio/generated/tr-TR/dialogues/33cad75e644d57e077b173579abc0bcbf2cd8594cc3f32c58d8510dcbd4a6532.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1f64790c-17b8-5546-a454-18d9acb5992c', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_health_and_advice_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '15c94b0416f7cebfd718125c0da4d637b4c2a196a2ad74dfdb43044c74f36d44'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2bdc4123-b2d2-55d0-98a4-d5bf291978ea', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1f64790c-17b8-5546-a454-18d9acb5992c', 1), '15c94b0416f7cebfd718125c0da4d637b4c2a196a2ad74dfdb43044c74f36d44',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/33cad75e644d57e077b173579abc0bcbf2cd8594cc3f32c58d8510dcbd4a6532.mp3', 1515, '2026-09-13 17:07:42.375281', '2b96ea1b4c2e991c0fc3692c44894a1e8244bee0b253b2930245a0fecb4e11a0', 'validated', '{"audio_key":"33cad75e644d57e077b173579abc0bcbf2cd8594cc3f32c58d8510dcbd4a6532","entity_key":"d_health_and_advice_01:3","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2b96ea1b4c2e991c0fc3692c44894a1e8244bee0b253b2930245a0fecb4e11a0","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/33cad75e644d57e077b173579abc0bcbf2cd8594cc3f32c58d8510dcbd4a6532.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_choices_and_preferences_02:3 -> audio/generated/tr-TR/dialogues/344fff8f59929199189047a36fbc4131508cd73d4afb1282985ae13927d64ba1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f06d54ed-f0c5-5c03-80d6-ed5b63657758', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_choices_and_preferences_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4272da1bea20b9c2d1de180e341d922e54642e518758c5ec33580ece3041fe3e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3ac52e7f-24a1-5345-8b4c-20f52ff0bf38', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f06d54ed-f0c5-5c03-80d6-ed5b63657758', 1), '4272da1bea20b9c2d1de180e341d922e54642e518758c5ec33580ece3041fe3e',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/344fff8f59929199189047a36fbc4131508cd73d4afb1282985ae13927d64ba1.mp3', 835, '2026-09-13 17:07:42.481032', '528805f967d541fbd57f12136cc13064c989ba168d46b7c068d8f57ad2ebe43e', 'validated', '{"audio_key":"344fff8f59929199189047a36fbc4131508cd73d4afb1282985ae13927d64ba1","entity_key":"d_choices_and_preferences_02:3","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"528805f967d541fbd57f12136cc13064c989ba168d46b7c068d8f57ad2ebe43e","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/344fff8f59929199189047a36fbc4131508cd73d4afb1282985ae13927d64ba1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_choices_and_preferences_02:4 -> audio/generated/tr-TR/dialogues/3539c78c78690c47a7780f47595437d05ecbd55c9534bc6ab1ef5b5b161c43ae.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d91903ac-35aa-5574-80ac-04f0ee49ee5b', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_choices_and_preferences_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1d2bdaa23d40e350b7db978114320896f26e778c821cbf0130966cb2e052b4bd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c3fe43d6-148a-5a57-a2d4-50904d555e63', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d91903ac-35aa-5574-80ac-04f0ee49ee5b', 1), '1d2bdaa23d40e350b7db978114320896f26e778c821cbf0130966cb2e052b4bd',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/3539c78c78690c47a7780f47595437d05ecbd55c9534bc6ab1ef5b5b161c43ae.mp3', 1671, '2026-09-13 17:07:43.443002', 'b1ff77224d72b2dd9f1de86ebf63a3348473979bcb581b5b19a2f9548ef252bd', 'validated', '{"audio_key":"3539c78c78690c47a7780f47595437d05ecbd55c9534bc6ab1ef5b5b161c43ae","entity_key":"d_choices_and_preferences_02:4","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"b1ff77224d72b2dd9f1de86ebf63a3348473979bcb581b5b19a2f9548ef252bd","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/3539c78c78690c47a7780f47595437d05ecbd55c9534bc6ab1ef5b5b161c43ae.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_polite_requests_02:4 -> audio/generated/tr-TR/dialogues/380987668c6522461b790cc56b9ca75a482ac8982910f942553dd6ea310fdaf7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c2cbb15c-7e1f-5cad-a457-fae193b461e0', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_polite_requests_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a6c49b2466f08d89ace9502b4acf2f251e4b0600aaf5a67e99b63e6d12454b87'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0a4f09c5-8c04-587e-950c-a7580871b129', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c2cbb15c-7e1f-5cad-a457-fae193b461e0', 1), 'a6c49b2466f08d89ace9502b4acf2f251e4b0600aaf5a67e99b63e6d12454b87',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/380987668c6522461b790cc56b9ca75a482ac8982910f942553dd6ea310fdaf7.mp3', 966, '2026-09-13 17:07:43.535908', 'b9c8155c021b3c494ff1bf287a64d585d7b4936c1976f4c623d1c3407793a930', 'validated', '{"audio_key":"380987668c6522461b790cc56b9ca75a482ac8982910f942553dd6ea310fdaf7","entity_key":"d_polite_requests_02:4","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"b9c8155c021b3c494ff1bf287a64d585d7b4936c1976f4c623d1c3407793a930","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/380987668c6522461b790cc56b9ca75a482ac8982910f942553dd6ea310fdaf7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_a2_city_day_capstone_02:4 -> audio/generated/tr-TR/dialogues/3b26ee83867765145b707e7fa3e98addf74e2bf6dc0f235324c691b2ecfcca9d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7026f5aa-5e95-59f0-88d1-1ba6df80f9ff', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_a2_city_day_capstone_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6280a696e619c8f7b216c98eb8b81140c3f32e83cac8c349df7d8d792a108a43'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('800de7de-6a82-59da-a66f-d6f861e21409', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7026f5aa-5e95-59f0-88d1-1ba6df80f9ff', 1), '6280a696e619c8f7b216c98eb8b81140c3f32e83cac8c349df7d8d792a108a43',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/3b26ee83867765145b707e7fa3e98addf74e2bf6dc0f235324c691b2ecfcca9d.mp3', 1515, '2026-09-13 17:07:44.512671', '74a976ddf9329d70c58b6730d6ac8bba0d1169dfadde1b96318bdd3511890afa', 'validated', '{"audio_key":"3b26ee83867765145b707e7fa3e98addf74e2bf6dc0f235324c691b2ecfcca9d","entity_key":"d_a2_city_day_capstone_02:4","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"74a976ddf9329d70c58b6730d6ac8bba0d1169dfadde1b96318bdd3511890afa","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/3b26ee83867765145b707e7fa3e98addf74e2bf6dc0f235324c691b2ecfcca9d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_comparisons_02:1 -> audio/generated/tr-TR/dialogues/3ff677da7199bf0b52ca4f1cee1aa3dce80120d23ecccebde2e08bac583169c4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('647a35b1-d667-59ca-9f09-7d6a9b9b9f26', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_comparisons_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7e0e15f84e8a2f2748ff9ade56d297093ff62790c35cbbf1bf6d172f6e9f0755'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ed48c3b6-5f78-5e4e-b6a5-039a9f369cd5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('647a35b1-d667-59ca-9f09-7d6a9b9b9f26', 1), '7e0e15f84e8a2f2748ff9ade56d297093ff62790c35cbbf1bf6d172f6e9f0755',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/3ff677da7199bf0b52ca4f1cee1aa3dce80120d23ecccebde2e08bac583169c4.mp3', 1436, '2026-09-13 17:07:44.540095', 'afc2d00d08e7e72be26158c9b423b0b97f2d809dd3b4c2cf7a7145a44a7406d8', 'validated', '{"audio_key":"3ff677da7199bf0b52ca4f1cee1aa3dce80120d23ecccebde2e08bac583169c4","entity_key":"d_comparisons_02:1","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"afc2d00d08e7e72be26158c9b423b0b97f2d809dd3b4c2cf7a7145a44a7406d8","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/3ff677da7199bf0b52ca4f1cee1aa3dce80120d23ecccebde2e08bac583169c4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_appointments_and_plans_02:4 -> audio/generated/tr-TR/dialogues/400951e57b941baa041dda8c7b5321761777a32b0f1ec6e294d01d040ae2b77d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3225fd5f-8a64-5dd8-874c-aa6dc7e46ae1', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_appointments_and_plans_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a5bd8b48ca8e0628004ac5208e49f3c635d3e3ae133ae83b1ef6f14c38cf8e57'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('68c1c7c7-6548-5ece-b7c8-bb5005b9d68d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3225fd5f-8a64-5dd8-874c-aa6dc7e46ae1', 1), 'a5bd8b48ca8e0628004ac5208e49f3c635d3e3ae133ae83b1ef6f14c38cf8e57',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/400951e57b941baa041dda8c7b5321761777a32b0f1ec6e294d01d040ae2b77d.mp3', 1384, '2026-09-13 17:07:45.513653', 'ca917339e5a11100a05c8c2cb86466985d94f2e991ce6b5c28c1a15f614bab46', 'validated', '{"audio_key":"400951e57b941baa041dda8c7b5321761777a32b0f1ec6e294d01d040ae2b77d","entity_key":"d_appointments_and_plans_02:4","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ca917339e5a11100a05c8c2cb86466985d94f2e991ce6b5c28c1a15f614bab46","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/400951e57b941baa041dda8c7b5321761777a32b0f1ec6e294d01d040ae2b77d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_polite_requests_02:1 -> audio/generated/tr-TR/dialogues/4205f8b7d16bf244447c5dda7a7c6149b8f37ec5a8403300e1fbcb19bd8999d1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('32a01da8-f0fc-55c2-802a-181dadbc6554', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_polite_requests_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd0fa6a89cc45c565bafa56732edfa21a364aacb7aafdbf95cd2a6ca3f1995586'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1dd3a2a4-90b1-56aa-8faa-151a1355376a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('32a01da8-f0fc-55c2-802a-181dadbc6554', 1), 'd0fa6a89cc45c565bafa56732edfa21a364aacb7aafdbf95cd2a6ca3f1995586',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/4205f8b7d16bf244447c5dda7a7c6149b8f37ec5a8403300e1fbcb19bd8999d1.mp3', 1488, '2026-09-13 17:07:45.528385', '8fbd55153f8232a392144a24c1597da1659cf88f0c5112730a535afa995421c5', 'validated', '{"audio_key":"4205f8b7d16bf244447c5dda7a7c6149b8f37ec5a8403300e1fbcb19bd8999d1","entity_key":"d_polite_requests_02:1","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8fbd55153f8232a392144a24c1597da1659cf88f0c5112730a535afa995421c5","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/4205f8b7d16bf244447c5dda7a7c6149b8f37ec5a8403300e1fbcb19bd8999d1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_habits_and_frequency_01:1 -> audio/generated/tr-TR/dialogues/42157d5998ef20be79f54de25bea5320d73f241818a66bd3af9b8cc1ef2a55a5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fb6f99e5-90a5-5630-96b1-474d705649fc', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_habits_and_frequency_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '97905d3e2a96faeb64b06b97c8ec4d4024cd97f807dd7c99165089c1ecbe461d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ac8d7252-5e0f-59ff-8ada-41dcc3abee09', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fb6f99e5-90a5-5630-96b1-474d705649fc', 1), '97905d3e2a96faeb64b06b97c8ec4d4024cd97f807dd7c99165089c1ecbe461d',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/42157d5998ef20be79f54de25bea5320d73f241818a66bd3af9b8cc1ef2a55a5.mp3', 1619, '2026-09-13 17:07:46.575235', '11ed6727d5bb8c353e90913507607f045685ddf207d8adb5680c4495469d7e91', 'validated', '{"audio_key":"42157d5998ef20be79f54de25bea5320d73f241818a66bd3af9b8cc1ef2a55a5","entity_key":"d_habits_and_frequency_01:1","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"11ed6727d5bb8c353e90913507607f045685ddf207d8adb5680c4495469d7e91","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/42157d5998ef20be79f54de25bea5320d73f241818a66bd3af9b8cc1ef2a55a5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_health_and_advice_01:4 -> audio/generated/tr-TR/dialogues/48baafa7f8bec8ec65aba966c212e42c06f6e009db99181eecde6863a0f66fc2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('febdb53c-6378-5523-92e5-ad4bafb492d3', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_health_and_advice_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fa9ed599b42bd5439aeaa4664e769fb7efc4133ab7731b069cf3aca3fae06869'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('55680d7b-70cf-51aa-b886-2e56087bdaf0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('febdb53c-6378-5523-92e5-ad4bafb492d3', 1), 'fa9ed599b42bd5439aeaa4664e769fb7efc4133ab7731b069cf3aca3fae06869',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/48baafa7f8bec8ec65aba966c212e42c06f6e009db99181eecde6863a0f66fc2.mp3', 966, '2026-09-13 17:07:46.501370', 'ae43ebcf3c05a8510279d1df03b374dee7b978325c2b45159527f0a261a7ac08', 'validated', '{"audio_key":"48baafa7f8bec8ec65aba966c212e42c06f6e009db99181eecde6863a0f66fc2","entity_key":"d_health_and_advice_01:4","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ae43ebcf3c05a8510279d1df03b374dee7b978325c2b45159527f0a261a7ac08","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/48baafa7f8bec8ec65aba966c212e42c06f6e009db99181eecde6863a0f66fc2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reasons_and_results_02:1 -> audio/generated/tr-TR/dialogues/5459da75e9202322d72a0dfe8658deceaadcc833d3b2c47193cbe2b34ab4a69a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('93b1cbbe-23c6-5cdc-8c9b-509f6bd66c78', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reasons_and_results_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '252fb5d4bab6b3cfe0ac1512735957d3e9d01ade57917acf44de431e3aea0c4d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('14491d9a-7b59-582f-8176-d73da69009f1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('93b1cbbe-23c6-5cdc-8c9b-509f6bd66c78', 1), '252fb5d4bab6b3cfe0ac1512735957d3e9d01ade57917acf44de431e3aea0c4d',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/5459da75e9202322d72a0dfe8658deceaadcc833d3b2c47193cbe2b34ab4a69a.mp3', 1567, '2026-09-13 17:07:47.518619', '35e041d08fa74816ac741e45a7a0c5bb6c20f04a1dfaa336391c3a4d1431be44', 'validated', '{"audio_key":"5459da75e9202322d72a0dfe8658deceaadcc833d3b2c47193cbe2b34ab4a69a","entity_key":"d_reasons_and_results_02:1","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"35e041d08fa74816ac741e45a7a0c5bb6c20f04a1dfaa336391c3a4d1431be44","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/5459da75e9202322d72a0dfe8658deceaadcc833d3b2c47193cbe2b34ab4a69a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_health_and_advice_01:1 -> audio/generated/tr-TR/dialogues/5464c8571fff54e3c4e768a61335317a721578b753f0a8ea6a3afff7ccda77fc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('01221ec2-48f1-54b4-868f-771c39b5401d', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_health_and_advice_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8966c189253b70b76ec00f75ca0917c0569a3603ee831f50c120c09e6d6262ea'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('557ec41f-28ab-5237-8dca-b5a326fa0ed8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('01221ec2-48f1-54b4-868f-771c39b5401d', 1), '8966c189253b70b76ec00f75ca0917c0569a3603ee831f50c120c09e6d6262ea',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/5464c8571fff54e3c4e768a61335317a721578b753f0a8ea6a3afff7ccda77fc.mp3', 1018, '2026-09-13 17:07:47.541520', '98b72855eb0167e290434272741c7353094e840ea7b146e519f1a13563db96a5', 'validated', '{"audio_key":"5464c8571fff54e3c4e768a61335317a721578b753f0a8ea6a3afff7ccda77fc","entity_key":"d_health_and_advice_01:1","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"98b72855eb0167e290434272741c7353094e840ea7b146e519f1a13563db96a5","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/5464c8571fff54e3c4e768a61335317a721578b753f0a8ea6a3afff7ccda77fc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_past_weekend_02:4 -> audio/generated/tr-TR/dialogues/59c71d9b3883eebe8253ce27211993a1bdc8db25f921ec3afdde24d2bab86451.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c3c8413f-4434-5c40-a277-d0564001af31', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_past_weekend_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '81642c6680951211f2123bda756ee16bcdb40f6aa889558e8341191ce2d81aa1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a7b07f00-b557-5771-94f1-f521dc857f74', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c3c8413f-4434-5c40-a277-d0564001af31', 1), '81642c6680951211f2123bda756ee16bcdb40f6aa889558e8341191ce2d81aa1',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/59c71d9b3883eebe8253ce27211993a1bdc8db25f921ec3afdde24d2bab86451.mp3', 966, '2026-09-13 17:07:48.495243', 'fc432658aa3c4e3a6c0ac17af670d6ac75e5b9ae5c6c1f34b646898aec32a2d5', 'validated', '{"audio_key":"59c71d9b3883eebe8253ce27211993a1bdc8db25f921ec3afdde24d2bab86451","entity_key":"d_past_weekend_02:4","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fc432658aa3c4e3a6c0ac17af670d6ac75e5b9ae5c6c1f34b646898aec32a2d5","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/59c71d9b3883eebe8253ce27211993a1bdc8db25f921ec3afdde24d2bab86451.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_polite_requests_02:3 -> audio/generated/tr-TR/dialogues/5b891991eb03e644c39914b994684fc2943c11546dc917389315e413f9a8c384.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6ae05fe0-9597-513c-bad5-2202279fe358', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_polite_requests_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a027aa7731513472dc4400b5ae934dc0c14c5569c9d4c4af90678163644ab79c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fcfa159f-5764-5ccc-b854-26e16dcc06cb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6ae05fe0-9597-513c-bad5-2202279fe358', 1), 'a027aa7731513472dc4400b5ae934dc0c14c5569c9d4c4af90678163644ab79c',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/5b891991eb03e644c39914b994684fc2943c11546dc917389315e413f9a8c384.mp3', 2037, '2026-09-13 17:07:48.645165', '34af128615b8e4ad5ffe6501d5e34a776974db3bca148380cd9139e103a287cc', 'validated', '{"audio_key":"5b891991eb03e644c39914b994684fc2943c11546dc917389315e413f9a8c384","entity_key":"d_polite_requests_02:3","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"34af128615b8e4ad5ffe6501d5e34a776974db3bca148380cd9139e103a287cc","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/5b891991eb03e644c39914b994684fc2943c11546dc917389315e413f9a8c384.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_polite_requests_01:1 -> audio/generated/tr-TR/dialogues/5f85ba3444543aa56c16fa6953d027ff9b3e2211e031b9406bc787ccc4aa6d65.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8df14735-dce4-512d-8b41-5adee99bc427', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_polite_requests_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4dabaa79b5d44e625d29759f6e360185e15d19e6c3739a76ba94ce31f12b735a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('24239624-a796-56ce-bb31-c2d819738166', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8df14735-dce4-512d-8b41-5adee99bc427', 1), '4dabaa79b5d44e625d29759f6e360185e15d19e6c3739a76ba94ce31f12b735a',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/5f85ba3444543aa56c16fa6953d027ff9b3e2211e031b9406bc787ccc4aa6d65.mp3', 2455, '2026-09-13 17:07:49.592039', 'a264e8623150463f73d0cd2716fc4492dbc3140412573f64b4aa070e88ff5c25', 'validated', '{"audio_key":"5f85ba3444543aa56c16fa6953d027ff9b3e2211e031b9406bc787ccc4aa6d65","entity_key":"d_polite_requests_01:1","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a264e8623150463f73d0cd2716fc4492dbc3140412573f64b4aa070e88ff5c25","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/5f85ba3444543aa56c16fa6953d027ff9b3e2211e031b9406bc787ccc4aa6d65.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_travel_and_hotel_01:1 -> audio/generated/tr-TR/dialogues/5fe9f59ed26de1b12cf1fd7896196304c3f0291d701ea29a21530a4ebdb55ba4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('70059cec-7994-5a28-948b-d993d889cdf5', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_travel_and_hotel_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ac0ed29d7727dc0be607a4b5dd404f47b65cd1470f32526335ee78342896b75e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('73386d8a-84d4-5a29-be7c-3eea84ce51f4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('70059cec-7994-5a28-948b-d993d889cdf5', 1), 'ac0ed29d7727dc0be607a4b5dd404f47b65cd1470f32526335ee78342896b75e',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/5fe9f59ed26de1b12cf1fd7896196304c3f0291d701ea29a21530a4ebdb55ba4.mp3', 1802, '2026-09-13 17:07:49.669282', 'be2d537093e246375f24c923ef4f04712af4e27670b7fbc881e0cc597ff56b5f', 'validated', '{"audio_key":"5fe9f59ed26de1b12cf1fd7896196304c3f0291d701ea29a21530a4ebdb55ba4","entity_key":"d_travel_and_hotel_01:1","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"be2d537093e246375f24c923ef4f04712af4e27670b7fbc881e0cc597ff56b5f","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/5fe9f59ed26de1b12cf1fd7896196304c3f0291d701ea29a21530a4ebdb55ba4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_polite_requests_02:2 -> audio/generated/tr-TR/dialogues/6082c12f95de4c6d124f7c21eef23dcb3d42bc363542f7aeaf80cded4ef59703.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b67f0341-4533-545e-b273-0a8cef4c5c60', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_polite_requests_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4c9dd0123d0a884367dd11442fe44c9b250727a01d51574bbfb8cfabfc3617ec'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('67e56649-5cba-5bb7-aeb1-09badc481424', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b67f0341-4533-545e-b273-0a8cef4c5c60', 1), '4c9dd0123d0a884367dd11442fe44c9b250727a01d51574bbfb8cfabfc3617ec',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/6082c12f95de4c6d124f7c21eef23dcb3d42bc363542f7aeaf80cded4ef59703.mp3', 1567, '2026-09-13 17:07:50.638701', 'eb262991f0241bf017d85caceb40be378834ce528cff39402e0148c42c00299a', 'validated', '{"audio_key":"6082c12f95de4c6d124f7c21eef23dcb3d42bc363542f7aeaf80cded4ef59703","entity_key":"d_polite_requests_02:2","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"eb262991f0241bf017d85caceb40be378834ce528cff39402e0148c42c00299a","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/6082c12f95de4c6d124f7c21eef23dcb3d42bc363542f7aeaf80cded4ef59703.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_past_weekend_02:1 -> audio/generated/tr-TR/dialogues/63b1bb07299383e52d87f4186b77e7ca48da0a1aa458f6871c1be7eff7e23fb6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9b7c1145-5d46-5a5c-976a-4b6ab944a918', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_past_weekend_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '69cd4561aab8f83cf08384ebcf85ab0c081b33a981d22604bf0aa18edbf52919'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('df8cbe4c-48ea-5e2f-9b7b-043b56f172b7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9b7c1145-5d46-5a5c-976a-4b6ab944a918', 1), '69cd4561aab8f83cf08384ebcf85ab0c081b33a981d22604bf0aa18edbf52919',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/63b1bb07299383e52d87f4186b77e7ca48da0a1aa458f6871c1be7eff7e23fb6.mp3', 1436, '2026-09-13 17:07:50.659123', '0f80ad29b1d1693b595729f35ce11d6f16755c2d0deea05d7c33da2142bf5adb', 'validated', '{"audio_key":"63b1bb07299383e52d87f4186b77e7ca48da0a1aa458f6871c1be7eff7e23fb6","entity_key":"d_past_weekend_02:1","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0f80ad29b1d1693b595729f35ce11d6f16755c2d0deea05d7c33da2142bf5adb","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/63b1bb07299383e52d87f4186b77e7ca48da0a1aa458f6871c1be7eff7e23fb6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_health_and_advice_02:1 -> audio/generated/tr-TR/dialogues/694f8e6904085a831f85d48400b7ca7b0d1d6f4b53f7266cd9ebd83ea81dedda.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ee951f25-ca38-596b-a345-ae5fea4b3d4c', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_health_and_advice_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ad931a57063b52e5259dae762d4a5baad784aaa44843b0623aa2d1c429645e70'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6580080a-d118-5d1f-929d-8cd8f4bcb65c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ee951f25-ca38-596b-a345-ae5fea4b3d4c', 1), 'ad931a57063b52e5259dae762d4a5baad784aaa44843b0623aa2d1c429645e70',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/694f8e6904085a831f85d48400b7ca7b0d1d6f4b53f7266cd9ebd83ea81dedda.mp3', 1619, '2026-09-13 17:07:51.654952', 'bb9c673951fd976301cc78a9760069b8ee0682a87c3c31e83781e099aee8adbd', 'validated', '{"audio_key":"694f8e6904085a831f85d48400b7ca7b0d1d6f4b53f7266cd9ebd83ea81dedda","entity_key":"d_health_and_advice_02:1","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bb9c673951fd976301cc78a9760069b8ee0682a87c3c31e83781e099aee8adbd","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/694f8e6904085a831f85d48400b7ca7b0d1d6f4b53f7266cd9ebd83ea81dedda.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reasons_and_results_02:4 -> audio/generated/tr-TR/dialogues/69b849045314df92a483ae800a360786f4ef84f0d7530d893dbba65ef4b7e050.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('58f8d1b1-4b76-5a4a-9f9a-492d0a5c95b2', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reasons_and_results_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c02035980dae7b4096ffb9b1ba8984c7d42c99e3f5c09652fa283762781b58a1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b98c0a85-87dc-5f76-b93b-54007059c587', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('58f8d1b1-4b76-5a4a-9f9a-492d0a5c95b2', 1), 'c02035980dae7b4096ffb9b1ba8984c7d42c99e3f5c09652fa283762781b58a1',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/69b849045314df92a483ae800a360786f4ef84f0d7530d893dbba65ef4b7e050.mp3', 1280, '2026-09-13 17:07:51.636905', 'bbbd813efb4ca2227fa6554079bce59c8cbba5dfe60a4d55f0b92d79dca845cd', 'validated', '{"audio_key":"69b849045314df92a483ae800a360786f4ef84f0d7530d893dbba65ef4b7e050","entity_key":"d_reasons_and_results_02:4","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"bbbd813efb4ca2227fa6554079bce59c8cbba5dfe60a4d55f0b92d79dca845cd","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/69b849045314df92a483ae800a360786f4ef84f0d7530d893dbba65ef4b7e050.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_health_and_advice_02:4 -> audio/generated/tr-TR/dialogues/6bbf561010c49632c388eb9777dd83edc6d41aaff7ae40120ca1834346fdb3e3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('27ed6814-48a2-5c1d-b342-ac32e396f4a5', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_health_and_advice_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '85bd78f55873186a1ac5beac5ce5e5184858267e8e57e9b6951f4d6ceca19cf8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1d13c93d-207d-5d02-ab3f-64e5e9138737', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('27ed6814-48a2-5c1d-b342-ac32e396f4a5', 1), '85bd78f55873186a1ac5beac5ce5e5184858267e8e57e9b6951f4d6ceca19cf8',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/6bbf561010c49632c388eb9777dd83edc6d41aaff7ae40120ca1834346fdb3e3.mp3', 1097, '2026-09-13 17:07:52.607238', 'eef8a0e3a581cf080ea4ee002267fd21463c501b01df1ed451d1f7eb802addff', 'validated', '{"audio_key":"6bbf561010c49632c388eb9777dd83edc6d41aaff7ae40120ca1834346fdb3e3","entity_key":"d_health_and_advice_02:4","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"eef8a0e3a581cf080ea4ee002267fd21463c501b01df1ed451d1f7eb802addff","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/6bbf561010c49632c388eb9777dd83edc6d41aaff7ae40120ca1834346fdb3e3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_habits_and_frequency_01:2 -> audio/generated/tr-TR/dialogues/6e100ddd641f883150ea6105e0f9fe2ae6f35447e20c37f2afe1f5bb6545b72b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4e8d2618-f28d-5f51-b7ea-aa7bd94aeba3', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_habits_and_frequency_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4139583bcb1bed0b5cd83ab1e3b573316c3ef0cde237f09f2b2af7a9dcaebe4a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0c7f01f7-577f-55de-b218-af49572f1de3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4e8d2618-f28d-5f51-b7ea-aa7bd94aeba3', 1), '4139583bcb1bed0b5cd83ab1e3b573316c3ef0cde237f09f2b2af7a9dcaebe4a',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/6e100ddd641f883150ea6105e0f9fe2ae6f35447e20c37f2afe1f5bb6545b72b.mp3', 1280, '2026-09-13 17:07:52.666225', '3b3a312d19126c709d9cd47159a5a80136f5fc607d99f6f9c95bfcb0e1617e1d', 'validated', '{"audio_key":"6e100ddd641f883150ea6105e0f9fe2ae6f35447e20c37f2afe1f5bb6545b72b","entity_key":"d_habits_and_frequency_01:2","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3b3a312d19126c709d9cd47159a5a80136f5fc607d99f6f9c95bfcb0e1617e1d","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/6e100ddd641f883150ea6105e0f9fe2ae6f35447e20c37f2afe1f5bb6545b72b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_travel_and_hotel_02:1 -> audio/generated/tr-TR/dialogues/73330476c934ccb797121be9fdcdc6d1eea183155d860d76b39c613008d1d8cf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('dd12468d-cb21-5ab7-ada8-d7134624d132', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_travel_and_hotel_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a849bea8107e2862c7eb85c02336f6cba68b83979caf7dea57a7d89b6f7bf487'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7afad9e7-e9e2-5eb6-b5d9-2c04b6385883', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('dd12468d-cb21-5ab7-ada8-d7134624d132', 1), 'a849bea8107e2862c7eb85c02336f6cba68b83979caf7dea57a7d89b6f7bf487',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/73330476c934ccb797121be9fdcdc6d1eea183155d860d76b39c613008d1d8cf.mp3', 2586, '2026-09-13 17:07:53.777063', 'f52620f1829f27bfc16bcf3b71e3a61d81d72e4dd549c29da1f80858b3d6b6b5', 'validated', '{"audio_key":"73330476c934ccb797121be9fdcdc6d1eea183155d860d76b39c613008d1d8cf","entity_key":"d_travel_and_hotel_02:1","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"f52620f1829f27bfc16bcf3b71e3a61d81d72e4dd549c29da1f80858b3d6b6b5","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/73330476c934ccb797121be9fdcdc6d1eea183155d860d76b39c613008d1d8cf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_a2_city_day_capstone_01:4 -> audio/generated/tr-TR/dialogues/73c9e475f1ad51abafaa41de1ef7fa28bca790bc1527cf19ea0210b5e7a45980.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7af4ce5b-c5a9-5ede-ba76-faf45e30c8b5', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_a2_city_day_capstone_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '85c29b682e8a45eec8ab334fe39c75ba70b5c04ab0b929ccf7934ac4ca0d5ee5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8c61d305-e67e-53e2-8a3a-cca81b5d987d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7af4ce5b-c5a9-5ede-ba76-faf45e30c8b5', 1), '85c29b682e8a45eec8ab334fe39c75ba70b5c04ab0b929ccf7934ac4ca0d5ee5',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/73c9e475f1ad51abafaa41de1ef7fa28bca790bc1527cf19ea0210b5e7a45980.mp3', 1436, '2026-09-13 17:07:53.671556', '75209d98baf738938666eac6134611668d37db956182fcca5454af931f82a164', 'validated', '{"audio_key":"73c9e475f1ad51abafaa41de1ef7fa28bca790bc1527cf19ea0210b5e7a45980","entity_key":"d_a2_city_day_capstone_01:4","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"75209d98baf738938666eac6134611668d37db956182fcca5454af931f82a164","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/73c9e475f1ad51abafaa41de1ef7fa28bca790bc1527cf19ea0210b5e7a45980.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_past_weekend_01:3 -> audio/generated/tr-TR/dialogues/7da1924ddb6a19187201fa0582ae975898157c2106b50c58c4f868a6a8a954b4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d86673fa-7635-5122-8e63-eab9994f2354', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_past_weekend_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cd3e574299740427381476909b6ee2490f8081e94a56d276dc6121f58bf2a597'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('39e8b22a-9819-5571-9ad3-f683b8fdef6f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d86673fa-7635-5122-8e63-eab9994f2354', 1), 'cd3e574299740427381476909b6ee2490f8081e94a56d276dc6121f58bf2a597',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/7da1924ddb6a19187201fa0582ae975898157c2106b50c58c4f868a6a8a954b4.mp3', 1802, '2026-09-13 17:07:54.719103', 'a6f04609f6ee49f4b0635041cb917b200cf23c57897eef68a42a37c8b2689c82', 'validated', '{"audio_key":"7da1924ddb6a19187201fa0582ae975898157c2106b50c58c4f868a6a8a954b4","entity_key":"d_past_weekend_01:3","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a6f04609f6ee49f4b0635041cb917b200cf23c57897eef68a42a37c8b2689c82","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/7da1924ddb6a19187201fa0582ae975898157c2106b50c58c4f868a6a8a954b4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_choices_and_preferences_02:1 -> audio/generated/tr-TR/dialogues/86b375fac9a0f197f5769bc7942f384f5ca4043bf243ec77743672394109f1e8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('afedbe72-4fe3-51c2-bcfe-ad0cc51f695d', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_choices_and_preferences_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a8a4adb20484ae90b49f23268456d4a4f8cb28dfba3011030e1795650f51a0c7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9656bbee-c7f2-5d31-9e72-b43412537653', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('afedbe72-4fe3-51c2-bcfe-ad0cc51f695d', 1), 'a8a4adb20484ae90b49f23268456d4a4f8cb28dfba3011030e1795650f51a0c7',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/86b375fac9a0f197f5769bc7942f384f5ca4043bf243ec77743672394109f1e8.mp3', 1488, '2026-09-13 17:07:54.818360', 'b21cf5f218d886087864241406f5f39684213861078ba4a8ec06c826357da891', 'validated', '{"audio_key":"86b375fac9a0f197f5769bc7942f384f5ca4043bf243ec77743672394109f1e8","entity_key":"d_choices_and_preferences_02:1","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b21cf5f218d886087864241406f5f39684213861078ba4a8ec06c826357da891","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/86b375fac9a0f197f5769bc7942f384f5ca4043bf243ec77743672394109f1e8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_a2_city_day_capstone_01:2 -> audio/generated/tr-TR/dialogues/88940633b8cfdae845628d2f84ee2e499a1d7124813dad982bef2833b93faa0f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8011ed1b-4739-5651-888c-a2be4672e0cc', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_a2_city_day_capstone_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '93ff620116fa05bf85f841b81e8b06f880030eb8a06a30939f74549355e3884c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c30e32a1-1010-56f5-9834-ffbd358ffa2a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8011ed1b-4739-5651-888c-a2be4672e0cc', 1), '93ff620116fa05bf85f841b81e8b06f880030eb8a06a30939f74549355e3884c',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/88940633b8cfdae845628d2f84ee2e499a1d7124813dad982bef2833b93faa0f.mp3', 1488, '2026-09-13 17:07:55.816609', '932512fce5fd7f199ea1df3ce3e87ea58bbc9c498af7653f4a911ccbe2b59516', 'validated', '{"audio_key":"88940633b8cfdae845628d2f84ee2e499a1d7124813dad982bef2833b93faa0f","entity_key":"d_a2_city_day_capstone_01:2","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"932512fce5fd7f199ea1df3ce3e87ea58bbc9c498af7653f4a911ccbe2b59516","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/88940633b8cfdae845628d2f84ee2e499a1d7124813dad982bef2833b93faa0f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_comparisons_01:3 -> audio/generated/tr-TR/dialogues/8912c0d67afe4437ffb53c90300e7debd57836923e8e77847b6ddcd10c7cf55c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8111462a-fcbb-5f2f-9b5a-131d13f999b7', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_comparisons_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bf42576fa7afacf84b9ef460fb39dbc806216d431240bb1ac821ae2aa8990897'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('12ee6566-34a9-5bc2-8823-3e60e8ef4cdb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8111462a-fcbb-5f2f-9b5a-131d13f999b7', 1), 'bf42576fa7afacf84b9ef460fb39dbc806216d431240bb1ac821ae2aa8990897',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/8912c0d67afe4437ffb53c90300e7debd57836923e8e77847b6ddcd10c7cf55c.mp3', 1384, '2026-09-13 17:07:55.826120', 'd0e24d66c8b0ef5e2fb8f1698b8a4976d9193e7f378f9086e40d617942b73e05', 'validated', '{"audio_key":"8912c0d67afe4437ffb53c90300e7debd57836923e8e77847b6ddcd10c7cf55c","entity_key":"d_comparisons_01:3","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d0e24d66c8b0ef5e2fb8f1698b8a4976d9193e7f378f9086e40d617942b73e05","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/8912c0d67afe4437ffb53c90300e7debd57836923e8e77847b6ddcd10c7cf55c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_travel_and_hotel_01:2 -> audio/generated/tr-TR/dialogues/8e2e47481626e1c2124c0e10769cf7b9f01d126f4b13553db2a63c692f920b49.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5f98a5c4-d7ee-5bfa-9cdb-e3589aaaa8e5', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_travel_and_hotel_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '484fd5a563bdc08bcf2ea86e89d75f154657aaf1863ff5f68c5c55a864969bf2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0d8f488b-4295-5fb5-ac8f-d0b833e444f5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5f98a5c4-d7ee-5bfa-9cdb-e3589aaaa8e5', 1), '484fd5a563bdc08bcf2ea86e89d75f154657aaf1863ff5f68c5c55a864969bf2',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/8e2e47481626e1c2124c0e10769cf7b9f01d126f4b13553db2a63c692f920b49.mp3', 1149, '2026-09-13 17:07:56.926028', 'd865b0c445f55c286e5303eca648f58cb93c7253a6426fa556438c3ff2f991e2', 'validated', '{"audio_key":"8e2e47481626e1c2124c0e10769cf7b9f01d126f4b13553db2a63c692f920b49","entity_key":"d_travel_and_hotel_01:2","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d865b0c445f55c286e5303eca648f58cb93c7253a6426fa556438c3ff2f991e2","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/8e2e47481626e1c2124c0e10769cf7b9f01d126f4b13553db2a63c692f920b49.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_travel_and_hotel_01:3 -> audio/generated/tr-TR/dialogues/8e5a70dfe1231075df9d7082881c40b737bbb55f1de46c8e27bf989df55a79bc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cf762c29-5164-5fc5-b932-e1d187a4bbdc', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_travel_and_hotel_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '10d354dc14f00200b572242e5b10dca99da178cc03b12b43068909edca47d34b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('615ddf75-71a2-595d-94dd-eadd9e704d7e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cf762c29-5164-5fc5-b932-e1d187a4bbdc', 1), '10d354dc14f00200b572242e5b10dca99da178cc03b12b43068909edca47d34b',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/8e5a70dfe1231075df9d7082881c40b737bbb55f1de46c8e27bf989df55a79bc.mp3', 1201, '2026-09-13 17:07:56.926875', '56ff31b73cc592e1d67a784459d8019db9a6297201d19929d418e51f70e24583', 'validated', '{"audio_key":"8e5a70dfe1231075df9d7082881c40b737bbb55f1de46c8e27bf989df55a79bc","entity_key":"d_travel_and_hotel_01:3","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"56ff31b73cc592e1d67a784459d8019db9a6297201d19929d418e51f70e24583","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/8e5a70dfe1231075df9d7082881c40b737bbb55f1de46c8e27bf989df55a79bc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_choices_and_preferences_02:2 -> audio/generated/tr-TR/dialogues/90a5dbc2a596451570568bb37e8bb5eb6e527f1724cd1df5b2b545fda12027f8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('84e00513-8439-574c-8488-691be4b42116', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_choices_and_preferences_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c57a4ae4c67c67992951867fd3f0f14c4ed5bbb3e5ac094b362000d349226699'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('78a19b63-ad7a-5316-b0d0-da43d224812f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('84e00513-8439-574c-8488-691be4b42116', 1), 'c57a4ae4c67c67992951867fd3f0f14c4ed5bbb3e5ac094b362000d349226699',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/90a5dbc2a596451570568bb37e8bb5eb6e527f1724cd1df5b2b545fda12027f8.mp3', 1567, '2026-09-13 17:07:57.964122', '41d65ed502abbf920eabb66f67e6005b03d00009e2d36e5d75db237207d29276', 'validated', '{"audio_key":"90a5dbc2a596451570568bb37e8bb5eb6e527f1724cd1df5b2b545fda12027f8","entity_key":"d_choices_and_preferences_02:2","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"41d65ed502abbf920eabb66f67e6005b03d00009e2d36e5d75db237207d29276","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/90a5dbc2a596451570568bb37e8bb5eb6e527f1724cd1df5b2b545fda12027f8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_past_weekend_01:2 -> audio/generated/tr-TR/dialogues/91a8c0cefc5e7a1d12279eb7c904346f14ce5e9d110d178360b9558bc4c9394d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e625964d-1769-5f5e-8260-99a75b073678', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_past_weekend_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '73a5a43ff6779bfd07c705620d9f9d6a34dff6b3bc96dd59d608359942d8daab'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fe230fcc-129c-5b0b-b2ea-fcbba8c67524', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e625964d-1769-5f5e-8260-99a75b073678', 1), '73a5a43ff6779bfd07c705620d9f9d6a34dff6b3bc96dd59d608359942d8daab',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/91a8c0cefc5e7a1d12279eb7c904346f14ce5e9d110d178360b9558bc4c9394d.mp3', 1567, '2026-09-13 17:07:57.963234', '5915529b1247e36a9c0829124a92850688d6fb00474f1080b275a5bb53acfc9b', 'validated', '{"audio_key":"91a8c0cefc5e7a1d12279eb7c904346f14ce5e9d110d178360b9558bc4c9394d","entity_key":"d_past_weekend_01:2","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5915529b1247e36a9c0829124a92850688d6fb00474f1080b275a5bb53acfc9b","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/91a8c0cefc5e7a1d12279eb7c904346f14ce5e9d110d178360b9558bc4c9394d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_comparisons_01:2 -> audio/generated/tr-TR/dialogues/937611dc1d8d25a7361e47d925544cb049743604979e2fc422d0436e9edf1321.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7de5f59c-a568-5969-9b63-411f53b894b6', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_comparisons_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '104330f89bba88867576b3d88ec6357c2da410e23187d98872f5f6e1f7bdb170'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2fab7d08-8d3c-54d6-8247-28091dc0d1d0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7de5f59c-a568-5969-9b63-411f53b894b6', 1), '104330f89bba88867576b3d88ec6357c2da410e23187d98872f5f6e1f7bdb170',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/937611dc1d8d25a7361e47d925544cb049743604979e2fc422d0436e9edf1321.mp3', 1280, '2026-09-13 17:07:58.971885', 'a548538e805e4fd976c0688a246aa6e28a9eedefea87b660b256a5b422a97126', 'validated', '{"audio_key":"937611dc1d8d25a7361e47d925544cb049743604979e2fc422d0436e9edf1321","entity_key":"d_comparisons_01:2","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a548538e805e4fd976c0688a246aa6e28a9eedefea87b660b256a5b422a97126","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/937611dc1d8d25a7361e47d925544cb049743604979e2fc422d0436e9edf1321.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_health_and_advice_02:3 -> audio/generated/tr-TR/dialogues/94038aef04812983f12b305c375007bd4df36862047da847f864d242e0f75ce6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('152ffb99-054c-5ead-91a2-a8f37b31c3d2', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_health_and_advice_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f2f3fdc716b90211f1318ff9630de0aeeb02a090a9a56c620e144c1f727666f9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3aba87e1-ee82-5b2a-ab23-db35ce25cdb8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('152ffb99-054c-5ead-91a2-a8f37b31c3d2', 1), 'f2f3fdc716b90211f1318ff9630de0aeeb02a090a9a56c620e144c1f727666f9',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/94038aef04812983f12b305c375007bd4df36862047da847f864d242e0f75ce6.mp3', 1201, '2026-09-13 17:07:58.970245', '994ac52f3cfa3b86dc19ea4b90cc79c383ce3d3b15609d63f7155c51ce71c066', 'validated', '{"audio_key":"94038aef04812983f12b305c375007bd4df36862047da847f864d242e0f75ce6","entity_key":"d_health_and_advice_02:3","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"994ac52f3cfa3b86dc19ea4b90cc79c383ce3d3b15609d63f7155c51ce71c066","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/94038aef04812983f12b305c375007bd4df36862047da847f864d242e0f75ce6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_travel_and_hotel_02:2 -> audio/generated/tr-TR/dialogues/a4664918aa72e3121392263088a1fb6665e4c100724f9d03c06d123846b1b3c7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e1ef17b3-668a-5443-a18d-330396b1d5a0', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_travel_and_hotel_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd1e8d2a421502e9814e85c246559c16c705c7dc22c4d88f596955d93a725651b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d15c6bfa-0086-5395-be5b-16a702c634aa', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e1ef17b3-668a-5443-a18d-330396b1d5a0', 1), 'd1e8d2a421502e9814e85c246559c16c705c7dc22c4d88f596955d93a725651b',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/a4664918aa72e3121392263088a1fb6665e4c100724f9d03c06d123846b1b3c7.mp3', 1280, '2026-09-13 17:08:00.008998', '6ab96af0240f08a8471379be8fa2ae22755386559b87da9fb607cdd28cce2b66', 'validated', '{"audio_key":"a4664918aa72e3121392263088a1fb6665e4c100724f9d03c06d123846b1b3c7","entity_key":"d_travel_and_hotel_02:2","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6ab96af0240f08a8471379be8fa2ae22755386559b87da9fb607cdd28cce2b66","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/a4664918aa72e3121392263088a1fb6665e4c100724f9d03c06d123846b1b3c7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_past_weekend_01:4 -> audio/generated/tr-TR/dialogues/ba78ff2d750ec373efb450281fcca2e7e36e64513e93c8065a708c1e48949832.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('227f66c2-069e-502f-8a9b-5db0d90fa3a1', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_past_weekend_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '440e5c2e78fd5b26f4b7499566faa6e9f93db049673f30c0745c9d9d362b07e3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cf129d2f-17b5-5d1a-a933-6c77631ea059', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('227f66c2-069e-502f-8a9b-5db0d90fa3a1', 1), '440e5c2e78fd5b26f4b7499566faa6e9f93db049673f30c0745c9d9d362b07e3',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/ba78ff2d750ec373efb450281fcca2e7e36e64513e93c8065a708c1e48949832.mp3', 1097, '2026-09-13 17:07:59.952379', 'edf62efc48337af26d4471443f57a0e59095dd6fecd672f6e216aa5da19970f3', 'validated', '{"audio_key":"ba78ff2d750ec373efb450281fcca2e7e36e64513e93c8065a708c1e48949832","entity_key":"d_past_weekend_01:4","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"edf62efc48337af26d4471443f57a0e59095dd6fecd672f6e216aa5da19970f3","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/ba78ff2d750ec373efb450281fcca2e7e36e64513e93c8065a708c1e48949832.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reasons_and_results_02:3 -> audio/generated/tr-TR/dialogues/be9dbea45bbb989f87b698d9d1b3a93139f7e28555a69463bc8d210dba05f461.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('83067101-0b18-5131-923a-4189fb93a076', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reasons_and_results_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ec7c2746cdad5acd2a91d2c1a9d8090effc1e7a6d442fee45fa29287428d560e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0062b0a9-9824-55c1-989c-cf5ca174e2b5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('83067101-0b18-5131-923a-4189fb93a076', 1), 'ec7c2746cdad5acd2a91d2c1a9d8090effc1e7a6d442fee45fa29287428d560e',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/be9dbea45bbb989f87b698d9d1b3a93139f7e28555a69463bc8d210dba05f461.mp3', 1488, '2026-09-13 17:08:01.039336', '0fdfb9afb89c7f78ecf922313b188fee78cfd1a945cd38ecf315e63cdfd8bdd9', 'validated', '{"audio_key":"be9dbea45bbb989f87b698d9d1b3a93139f7e28555a69463bc8d210dba05f461","entity_key":"d_reasons_and_results_02:3","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0fdfb9afb89c7f78ecf922313b188fee78cfd1a945cd38ecf315e63cdfd8bdd9","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/be9dbea45bbb989f87b698d9d1b3a93139f7e28555a69463bc8d210dba05f461.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_habits_and_frequency_02:3 -> audio/generated/tr-TR/dialogues/beeaf8fdd97c41f684c7eea3ab4392e19339e94bfaf57f404e0def495afb7446.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('34876c50-eb44-56d4-9e20-1409d12dddd8', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_habits_and_frequency_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8314da7a96eb1cc21a61916b45c64ac8d5fbea59459114425c02e13974c982d4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e94f268d-31f1-50ec-af4f-6035bbb78a89', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('34876c50-eb44-56d4-9e20-1409d12dddd8', 1), '8314da7a96eb1cc21a61916b45c64ac8d5fbea59459114425c02e13974c982d4',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/beeaf8fdd97c41f684c7eea3ab4392e19339e94bfaf57f404e0def495afb7446.mp3', 1515, '2026-09-13 17:08:01.089872', 'b93a42c2f227e580bc9c6e58dcb029f8ea01e9d6e60219266bd80caf8153b111', 'validated', '{"audio_key":"beeaf8fdd97c41f684c7eea3ab4392e19339e94bfaf57f404e0def495afb7446","entity_key":"d_habits_and_frequency_02:3","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b93a42c2f227e580bc9c6e58dcb029f8ea01e9d6e60219266bd80caf8153b111","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/beeaf8fdd97c41f684c7eea3ab4392e19339e94bfaf57f404e0def495afb7446.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_appointments_and_plans_02:1 -> audio/generated/tr-TR/dialogues/c0cf6a950f811f634970d525b104d33bbbdb8038563107f2dd25f16d0a8026e0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ab250504-bb52-5960-8ff0-3b988a9f4a42', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_appointments_and_plans_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '66af5dd38327f3976f271443074db70c784ca32cbca145dff92064cd34ebf714'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d3d8ffc5-cd25-5358-9489-b41c0dc2b78e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ab250504-bb52-5960-8ff0-3b988a9f4a42', 1), '66af5dd38327f3976f271443074db70c784ca32cbca145dff92064cd34ebf714',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/c0cf6a950f811f634970d525b104d33bbbdb8038563107f2dd25f16d0a8026e0.mp3', 2115, '2026-09-13 17:08:02.247954', 'e023233faec6127c94ee2e3465e80318cde65d7b591c8311ae7b2bae8c6a2cd9', 'validated', '{"audio_key":"c0cf6a950f811f634970d525b104d33bbbdb8038563107f2dd25f16d0a8026e0","entity_key":"d_appointments_and_plans_02:1","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e023233faec6127c94ee2e3465e80318cde65d7b591c8311ae7b2bae8c6a2cd9","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/c0cf6a950f811f634970d525b104d33bbbdb8038563107f2dd25f16d0a8026e0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_a2_city_day_capstone_01:1 -> audio/generated/tr-TR/dialogues/c35a8551e87ee379aebdad4e12a20eb90699d78147c2bebdbb1ba5f795c7fa8c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('97d2b2b3-7a9d-50f7-83c7-b74a7bfa2513', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_a2_city_day_capstone_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '44d5eaa58870717d429df0af1beb6e88a699f19b9bc738174e584658461adf57'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b604c8d3-aee3-5e6d-a67c-04644ab9164a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('97d2b2b3-7a9d-50f7-83c7-b74a7bfa2513', 1), '44d5eaa58870717d429df0af1beb6e88a699f19b9bc738174e584658461adf57',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/c35a8551e87ee379aebdad4e12a20eb90699d78147c2bebdbb1ba5f795c7fa8c.mp3', 1567, '2026-09-13 17:08:02.248053', '5772ab18bd774cd64616601a2b8db17e00d9496f2dd8519f5fc0c64f5ab7b9dc', 'validated', '{"audio_key":"c35a8551e87ee379aebdad4e12a20eb90699d78147c2bebdbb1ba5f795c7fa8c","entity_key":"d_a2_city_day_capstone_01:1","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5772ab18bd774cd64616601a2b8db17e00d9496f2dd8519f5fc0c64f5ab7b9dc","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/c35a8551e87ee379aebdad4e12a20eb90699d78147c2bebdbb1ba5f795c7fa8c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_choices_and_preferences_01:1 -> audio/generated/tr-TR/dialogues/c6917ddf3d4c49198a39a1369f8425d3f5efaaca01bfb5b598efb6603af5c6b3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7bda7a5f-f754-562b-82ca-faacbc3e55ba', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_choices_and_preferences_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '77c2c5271538272bbe00b3c0adc96c30970696e436f821e283092c7e9c4fecff'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0401b6f6-3f89-547a-8fe6-7d79347d446d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7bda7a5f-f754-562b-82ca-faacbc3e55ba', 1), '77c2c5271538272bbe00b3c0adc96c30970696e436f821e283092c7e9c4fecff',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/c6917ddf3d4c49198a39a1369f8425d3f5efaaca01bfb5b598efb6603af5c6b3.mp3', 1567, '2026-09-13 17:08:03.305319', '5ea44a6726838db3815de3ca4f80ecc107f46eb0c6849a9d9551f51af56220ff', 'validated', '{"audio_key":"c6917ddf3d4c49198a39a1369f8425d3f5efaaca01bfb5b598efb6603af5c6b3","entity_key":"d_choices_and_preferences_01:1","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5ea44a6726838db3815de3ca4f80ecc107f46eb0c6849a9d9551f51af56220ff","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/c6917ddf3d4c49198a39a1369f8425d3f5efaaca01bfb5b598efb6603af5c6b3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_polite_requests_01:4 -> audio/generated/tr-TR/dialogues/c7851ef8b1fce34f901685760169c39c7d669e4dfaa5f38b3f87e2461186fa04.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e843be4e-fee0-5ed4-ab0e-dd264bd7e274', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_polite_requests_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f7dc53bb4a215845c0a12b760f8ec0cf56e0f5ff74386199902c1dd8cc899487'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c8bf9b2b-46af-578f-9687-1f64c2fc1732', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e843be4e-fee0-5ed4-ab0e-dd264bd7e274', 1), 'f7dc53bb4a215845c0a12b760f8ec0cf56e0f5ff74386199902c1dd8cc899487',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/c7851ef8b1fce34f901685760169c39c7d669e4dfaa5f38b3f87e2461186fa04.mp3', 966, '2026-09-13 17:08:03.237542', '5f40d3ebe756ed80f23fe2e4e95b258053a4bc24591ad26c7b0be6acf795727c', 'validated', '{"audio_key":"c7851ef8b1fce34f901685760169c39c7d669e4dfaa5f38b3f87e2461186fa04","entity_key":"d_polite_requests_01:4","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5f40d3ebe756ed80f23fe2e4e95b258053a4bc24591ad26c7b0be6acf795727c","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/c7851ef8b1fce34f901685760169c39c7d669e4dfaa5f38b3f87e2461186fa04.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reasons_and_results_01:3 -> audio/generated/tr-TR/dialogues/c8d896118e94e1074518fdc7b611297f6d899b3c5f07affe7cf83997918e237c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bb1902b3-882e-53e2-ad98-c211e037d90b', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reasons_and_results_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd0b437a9113226f705a42c164e6e47e2c0f363bb9cac2c90287c82e64c872baf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('207220e1-6cfc-5a40-8ccd-22a11f2527c2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bb1902b3-882e-53e2-ad98-c211e037d90b', 1), 'd0b437a9113226f705a42c164e6e47e2c0f363bb9cac2c90287c82e64c872baf',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/c8d896118e94e1074518fdc7b611297f6d899b3c5f07affe7cf83997918e237c.mp3', 1567, '2026-09-13 17:08:04.252089', '9e661808e8068215f9ffe28edb3308a36120e459ec2b04b30f31aa50b7a3fe71', 'validated', '{"audio_key":"c8d896118e94e1074518fdc7b611297f6d899b3c5f07affe7cf83997918e237c","entity_key":"d_reasons_and_results_01:3","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9e661808e8068215f9ffe28edb3308a36120e459ec2b04b30f31aa50b7a3fe71","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/c8d896118e94e1074518fdc7b611297f6d899b3c5f07affe7cf83997918e237c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_polite_requests_01:2 -> audio/generated/tr-TR/dialogues/ca3d31e50ab6181868b478636b40dd239f2a471ce224d6d50336eb69082fcc83.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('610c7c34-39e4-5fe1-bda6-a1454d225d82', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_polite_requests_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '834d686d22117fa3040a7c52734e6f6b00e306a58ff8e86c598d7772355a3b6a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1c782aad-5c5d-57b1-b189-b970b3da3f35', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('610c7c34-39e4-5fe1-bda6-a1454d225d82', 1), '834d686d22117fa3040a7c52734e6f6b00e306a58ff8e86c598d7772355a3b6a',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/ca3d31e50ab6181868b478636b40dd239f2a471ce224d6d50336eb69082fcc83.mp3', 1671, '2026-09-13 17:08:04.381420', 'b4cc8df7925dcdfd7cc1f668d5e51749ecdd84ceb971a9b66307f6c0f7fe8107', 'validated', '{"audio_key":"ca3d31e50ab6181868b478636b40dd239f2a471ce224d6d50336eb69082fcc83","entity_key":"d_polite_requests_01:2","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b4cc8df7925dcdfd7cc1f668d5e51749ecdd84ceb971a9b66307f6c0f7fe8107","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/ca3d31e50ab6181868b478636b40dd239f2a471ce224d6d50336eb69082fcc83.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_comparisons_01:4 -> audio/generated/tr-TR/dialogues/cd1c6ba6605d4e722ceea2b12d9d45fabc142fc49853f43996018f746095ce1b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f7bc8fde-badc-5775-813c-8c1d5732a44c', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_comparisons_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3d5e92c0d4dfc7f6f11b86b39d987eadfe0f7e4deb3b906777e8027f5a9f15f3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ea0dc509-fab1-555e-8ca0-532c322f2c32', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f7bc8fde-badc-5775-813c-8c1d5732a44c', 1), '3d5e92c0d4dfc7f6f11b86b39d987eadfe0f7e4deb3b906777e8027f5a9f15f3',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/cd1c6ba6605d4e722ceea2b12d9d45fabc142fc49853f43996018f746095ce1b.mp3', 1488, '2026-09-13 17:08:05.297812', '59af6ee58b420b7f53815246480e8258792e5b13a62eb7f9785d1c906313bf91', 'validated', '{"audio_key":"cd1c6ba6605d4e722ceea2b12d9d45fabc142fc49853f43996018f746095ce1b","entity_key":"d_comparisons_01:4","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"59af6ee58b420b7f53815246480e8258792e5b13a62eb7f9785d1c906313bf91","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/cd1c6ba6605d4e722ceea2b12d9d45fabc142fc49853f43996018f746095ce1b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_habits_and_frequency_02:4 -> audio/generated/tr-TR/dialogues/d69adf0520b0c6578d508509f645a8f12a59030a95714d4a823dff41f3bf548f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c285a7c0-e9cc-5781-a47e-761ce5e59240', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_habits_and_frequency_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e354834d8f29a00d170b0a4dff5e39bf9446d8f38440db7046afa950d1b04890'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cf9a639f-06d1-56ad-ac3d-9fa8afb3b156', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c285a7c0-e9cc-5781-a47e-761ce5e59240', 1), 'e354834d8f29a00d170b0a4dff5e39bf9446d8f38440db7046afa950d1b04890',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/d69adf0520b0c6578d508509f645a8f12a59030a95714d4a823dff41f3bf548f.mp3', 1515, '2026-09-13 17:08:05.434303', 'c8902aec7bb75b5c1745df627927c681957e8a76f0f5bf0606f207a01f02fa80', 'validated', '{"audio_key":"d69adf0520b0c6578d508509f645a8f12a59030a95714d4a823dff41f3bf548f","entity_key":"d_habits_and_frequency_02:4","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"c8902aec7bb75b5c1745df627927c681957e8a76f0f5bf0606f207a01f02fa80","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/d69adf0520b0c6578d508509f645a8f12a59030a95714d4a823dff41f3bf548f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_travel_and_hotel_01:4 -> audio/generated/tr-TR/dialogues/d93c63b8ac49cc721ea9c50a23f28a8de0515d9716737d80d134fb016da63e5f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2cba257c-d932-5b69-94e1-8c2520dcf1e8', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_travel_and_hotel_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0b3f7ea4994973f2593be3aaff3c75b094b1ea4d0b163cadcbc7f2ad9548c8ef'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('24ad499e-d7a2-5313-8dba-ab4a04960acf', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2cba257c-d932-5b69-94e1-8c2520dcf1e8', 1), '0b3f7ea4994973f2593be3aaff3c75b094b1ea4d0b163cadcbc7f2ad9548c8ef',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/d93c63b8ac49cc721ea9c50a23f28a8de0515d9716737d80d134fb016da63e5f.mp3', 1488, '2026-09-13 17:08:06.345268', '44fb2bb6f67472856f44d31b3618c05e7ff40f7d9f8cb691a1ad5b7267783bf1', 'validated', '{"audio_key":"d93c63b8ac49cc721ea9c50a23f28a8de0515d9716737d80d134fb016da63e5f","entity_key":"d_travel_and_hotel_01:4","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"44fb2bb6f67472856f44d31b3618c05e7ff40f7d9f8cb691a1ad5b7267783bf1","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/d93c63b8ac49cc721ea9c50a23f28a8de0515d9716737d80d134fb016da63e5f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_habits_and_frequency_02:1 -> audio/generated/tr-TR/dialogues/d9780a9d71d505505628a8fb2ff1f83cda74b164b8d325b7aa8fb6970faede6e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2e1f98a7-86c3-5c04-950f-e3b410d5dff8', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_habits_and_frequency_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd751852a8d5eed05213f3053731a62bbebcd478a2de917148a2a1e03d2308ea5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3744762b-2311-5b8d-bf61-120d42612ea7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2e1f98a7-86c3-5c04-950f-e3b410d5dff8', 1), 'd751852a8d5eed05213f3053731a62bbebcd478a2de917148a2a1e03d2308ea5',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/d9780a9d71d505505628a8fb2ff1f83cda74b164b8d325b7aa8fb6970faede6e.mp3', 1515, '2026-09-13 17:08:06.534244', '903dc21cc7b70984dbdbe18d3ecb44e6a6fdd98014ff7e03c319697073cf34f1', 'validated', '{"audio_key":"d9780a9d71d505505628a8fb2ff1f83cda74b164b8d325b7aa8fb6970faede6e","entity_key":"d_habits_and_frequency_02:1","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"903dc21cc7b70984dbdbe18d3ecb44e6a6fdd98014ff7e03c319697073cf34f1","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/d9780a9d71d505505628a8fb2ff1f83cda74b164b8d325b7aa8fb6970faede6e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_appointments_and_plans_01:1 -> audio/generated/tr-TR/dialogues/e2083246f6f4f4cbdd8e2ca042176c22ae3a236a20b924e8ffb5268c6a9af500.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('86ab5c11-9971-5f0b-a035-e02b98c66354', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_appointments_and_plans_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ca088c6095c6ef4289f6b93c4cd9d20cb70cceade457ffe4be45340146a1d51f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7473a5a7-12d2-5448-b7c6-9af494e17239', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('86ab5c11-9971-5f0b-a035-e02b98c66354', 1), 'ca088c6095c6ef4289f6b93c4cd9d20cb70cceade457ffe4be45340146a1d51f',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/e2083246f6f4f4cbdd8e2ca042176c22ae3a236a20b924e8ffb5268c6a9af500.mp3', 1384, '2026-09-13 17:08:07.392563', '6aa03e207c2c673d9c5ad41834c02535c72b3a3c13f23d876f4cb63085a5073c', 'validated', '{"audio_key":"e2083246f6f4f4cbdd8e2ca042176c22ae3a236a20b924e8ffb5268c6a9af500","entity_key":"d_appointments_and_plans_01:1","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6aa03e207c2c673d9c5ad41834c02535c72b3a3c13f23d876f4cb63085a5073c","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/e2083246f6f4f4cbdd8e2ca042176c22ae3a236a20b924e8ffb5268c6a9af500.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_travel_and_hotel_02:4 -> audio/generated/tr-TR/dialogues/e45c25ea51c6df50d3e10afa1ceba1b005118c7c9f3d5e3aa0a5e2b4bedcc3ce.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('eda29eba-1345-5fc4-9fda-a26dbd072b6d', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_travel_and_hotel_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1f711a4bdf2b291a64ba5882719674be3c999f55939ec9200f8d5dddee75b3e1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9c388b87-ea84-5f83-994c-541fb6cc6369', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('eda29eba-1345-5fc4-9fda-a26dbd072b6d', 1), '1f711a4bdf2b291a64ba5882719674be3c999f55939ec9200f8d5dddee75b3e1',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/e45c25ea51c6df50d3e10afa1ceba1b005118c7c9f3d5e3aa0a5e2b4bedcc3ce.mp3', 1567, '2026-09-13 17:08:07.577043', '70d4c1aca011cae6f140018ba55465f05fbc62d17d19d3917eea577c724761c3', 'validated', '{"audio_key":"e45c25ea51c6df50d3e10afa1ceba1b005118c7c9f3d5e3aa0a5e2b4bedcc3ce","entity_key":"d_travel_and_hotel_02:4","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"70d4c1aca011cae6f140018ba55465f05fbc62d17d19d3917eea577c724761c3","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/e45c25ea51c6df50d3e10afa1ceba1b005118c7c9f3d5e3aa0a5e2b4bedcc3ce.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_a2_city_day_capstone_02:1 -> audio/generated/tr-TR/dialogues/e7cb819612ace1b495906da78a4cff2dc2a3b5ab72a5c6394206645f57643933.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4c9408ac-f5ad-551e-a0c3-920d88774773', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_a2_city_day_capstone_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5584bd6fe9e22ea5d64b5b84ed7db62929c332070a55ccab83624cef154c3953'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('61360fd8-0d80-5c1c-ae64-5734733fe1ea', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4c9408ac-f5ad-551e-a0c3-920d88774773', 1), '5584bd6fe9e22ea5d64b5b84ed7db62929c332070a55ccab83624cef154c3953',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/e7cb819612ace1b495906da78a4cff2dc2a3b5ab72a5c6394206645f57643933.mp3', 1280, '2026-09-13 17:08:08.467858', '87c4dcbfba8d51204528bfebcc3709fd94c58255b50cc507f04d9e23c786ebde', 'validated', '{"audio_key":"e7cb819612ace1b495906da78a4cff2dc2a3b5ab72a5c6394206645f57643933","entity_key":"d_a2_city_day_capstone_02:1","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"87c4dcbfba8d51204528bfebcc3709fd94c58255b50cc507f04d9e23c786ebde","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/e7cb819612ace1b495906da78a4cff2dc2a3b5ab72a5c6394206645f57643933.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_choices_and_preferences_01:4 -> audio/generated/tr-TR/dialogues/ea10833bf79a17444e49fa1e3671c7a3e093861ab1b7e507845a53d7c9bda648.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('10c164cb-7ac3-5f5a-8f5c-3224d7acfebf', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_choices_and_preferences_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3819a0dcefa97f16b39ee5a610777123c534057a3bed89208815881611125b75'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b2e895a7-e8c6-509b-bf69-5cb005d09fad', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('10c164cb-7ac3-5f5a-8f5c-3224d7acfebf', 1), '3819a0dcefa97f16b39ee5a610777123c534057a3bed89208815881611125b75',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/ea10833bf79a17444e49fa1e3671c7a3e093861ab1b7e507845a53d7c9bda648.mp3', 1384, '2026-09-13 17:08:08.573557', 'c632a627a441a6265e28aabf0bc92aac2a2e50288218ff01b8aa0100c8f4518a', 'validated', '{"audio_key":"ea10833bf79a17444e49fa1e3671c7a3e093861ab1b7e507845a53d7c9bda648","entity_key":"d_choices_and_preferences_01:4","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c632a627a441a6265e28aabf0bc92aac2a2e50288218ff01b8aa0100c8f4518a","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/ea10833bf79a17444e49fa1e3671c7a3e093861ab1b7e507845a53d7c9bda648.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_comparisons_01:1 -> audio/generated/tr-TR/dialogues/ec104ae1309a7a390d839b09c574d16939de6b18cc8c3e34b292bdc1af50084a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('06578485-f2fb-557b-91ba-2e5f863ab17a', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_comparisons_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a6e644a0920893c6127290a18035a192f807f3f02ac36d947520d24c14ddb865'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6bbde2a6-1fb4-5584-badd-e9592e0297fd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('06578485-f2fb-557b-91ba-2e5f863ab17a', 1), 'a6e644a0920893c6127290a18035a192f807f3f02ac36d947520d24c14ddb865',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/ec104ae1309a7a390d839b09c574d16939de6b18cc8c3e34b292bdc1af50084a.mp3', 1515, '2026-09-13 17:08:09.486427', 'e833c2dfe853bac834163bfa8177995c83c920d2960f1be6c1fb82a62843ee79', 'validated', '{"audio_key":"ec104ae1309a7a390d839b09c574d16939de6b18cc8c3e34b292bdc1af50084a","entity_key":"d_comparisons_01:1","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e833c2dfe853bac834163bfa8177995c83c920d2960f1be6c1fb82a62843ee79","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/ec104ae1309a7a390d839b09c574d16939de6b18cc8c3e34b292bdc1af50084a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_habits_and_frequency_02:2 -> audio/generated/tr-TR/dialogues/f0187566e475071ffc4dbbe4cf4894d5500de112baabc75d47fe6c1aaa0366a1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2c203060-83e4-522f-ac0b-1a691a117a9f', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_habits_and_frequency_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '40bd2c7330a2b3fef6b411f737f402dfcebc2c926368c2f2cc0ccd2bc13cd508'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b04e3b52-9718-5858-a549-ba936542eee6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2c203060-83e4-522f-ac0b-1a691a117a9f', 1), '40bd2c7330a2b3fef6b411f737f402dfcebc2c926368c2f2cc0ccd2bc13cd508',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/f0187566e475071ffc4dbbe4cf4894d5500de112baabc75d47fe6c1aaa0366a1.mp3', 1906, '2026-09-13 17:08:09.647075', '6b1edadbdd67762f8188fced33288dd136dcca48e74b0fb9094dcb75571884b0', 'validated', '{"audio_key":"f0187566e475071ffc4dbbe4cf4894d5500de112baabc75d47fe6c1aaa0366a1","entity_key":"d_habits_and_frequency_02:2","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"6b1edadbdd67762f8188fced33288dd136dcca48e74b0fb9094dcb75571884b0","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/f0187566e475071ffc4dbbe4cf4894d5500de112baabc75d47fe6c1aaa0366a1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reasons_and_results_01:2 -> audio/generated/tr-TR/dialogues/f3441742c4fee3e95c3ad4320566f51b18a79d1b1fb46bf6561de1d36bdb728d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('48b5902c-e66f-5c18-b221-7b103c0494b3', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reasons_and_results_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3c85c5ad8e0bf08a88af13418c8e6e7367cc668fac61a55c4420cc5070b6c66c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eff033ad-d3b5-5d89-b70d-50ca58ee3cdb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('48b5902c-e66f-5c18-b221-7b103c0494b3', 1), '3c85c5ad8e0bf08a88af13418c8e6e7367cc668fac61a55c4420cc5070b6c66c',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/f3441742c4fee3e95c3ad4320566f51b18a79d1b1fb46bf6561de1d36bdb728d.mp3', 1436, '2026-09-13 17:08:10.509046', '500d045e92aa4bb89f0181f56a67d2a4c56ec89d8abd2f944d573d96bb69d091', 'validated', '{"audio_key":"f3441742c4fee3e95c3ad4320566f51b18a79d1b1fb46bf6561de1d36bdb728d","entity_key":"d_reasons_and_results_01:2","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"500d045e92aa4bb89f0181f56a67d2a4c56ec89d8abd2f944d573d96bb69d091","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/f3441742c4fee3e95c3ad4320566f51b18a79d1b1fb46bf6561de1d36bdb728d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_polite_requests_01:3 -> audio/generated/tr-TR/dialogues/f3e7f3f193e04c5310ccc9090e9d9f02afd92134a3b7d01b28d2a68b70fbabd8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1959eb9d-ebd4-5a85-bea4-ebd4b552033e', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_polite_requests_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0a20d1c8c302e582cf8aa268769113e644d561cae815a98bf932eba0ce7f59e7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('30f526a8-934e-5743-a22d-fb247d651556', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1959eb9d-ebd4-5a85-bea4-ebd4b552033e', 1), '0a20d1c8c302e582cf8aa268769113e644d561cae815a98bf932eba0ce7f59e7',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/f3e7f3f193e04c5310ccc9090e9d9f02afd92134a3b7d01b28d2a68b70fbabd8.mp3', 1436, '2026-09-13 17:08:10.670455', 'b8d9593b163f929e1878f192a9fc7c496cfa63a097b64fe75749e7679e4639af', 'validated', '{"audio_key":"f3e7f3f193e04c5310ccc9090e9d9f02afd92134a3b7d01b28d2a68b70fbabd8","entity_key":"d_polite_requests_01:3","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b8d9593b163f929e1878f192a9fc7c496cfa63a097b64fe75749e7679e4639af","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/f3e7f3f193e04c5310ccc9090e9d9f02afd92134a3b7d01b28d2a68b70fbabd8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_comparisons_02:3 -> audio/generated/tr-TR/dialogues/f488893ad2ee566cede62e819f759b98acd6c512eac02325ed90309d955bbad8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e450338f-d6b6-5cab-965d-ba5f7d346393', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_comparisons_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd78f48f099a377d816a7c34c15d64e419df5796777ddb20f0b5c74590a5c2d9b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1a335e48-0fb5-5438-948e-0ae107ff1ce6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e450338f-d6b6-5cab-965d-ba5f7d346393', 1), 'd78f48f099a377d816a7c34c15d64e419df5796777ddb20f0b5c74590a5c2d9b',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/f488893ad2ee566cede62e819f759b98acd6c512eac02325ed90309d955bbad8.mp3', 1384, '2026-09-13 17:08:11.568490', '9b369462aeaedbeb2d96e6f4e34812b27cb188cb196bc8c1195c178828cd22ab', 'validated', '{"audio_key":"f488893ad2ee566cede62e819f759b98acd6c512eac02325ed90309d955bbad8","entity_key":"d_comparisons_02:3","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9b369462aeaedbeb2d96e6f4e34812b27cb188cb196bc8c1195c178828cd22ab","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/f488893ad2ee566cede62e819f759b98acd6c512eac02325ed90309d955bbad8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_habits_and_frequency_01:3 -> audio/generated/tr-TR/dialogues/f584241676064231a32c66cbadc79505121e99e10bf6f02061ae1858e94088cd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('dc3bc9ce-e277-5421-af54-91b5032f9a16', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_habits_and_frequency_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '89c1bb67057c0e5399c4a8f05d1b16b21807d16576e09d346ab9ef098d08d828'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('afb6a2b3-bd91-5090-9eba-f3a002934b34', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('dc3bc9ce-e277-5421-af54-91b5032f9a16', 1), '89c1bb67057c0e5399c4a8f05d1b16b21807d16576e09d346ab9ef098d08d828',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/f584241676064231a32c66cbadc79505121e99e10bf6f02061ae1858e94088cd.mp3', 1515, '2026-09-13 17:08:11.715979', '23fa264f564624484d2fce5ed22b434e30808a7f843d9a014d9cb2d0a19a7944', 'validated', '{"audio_key":"f584241676064231a32c66cbadc79505121e99e10bf6f02061ae1858e94088cd","entity_key":"d_habits_and_frequency_01:3","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"23fa264f564624484d2fce5ed22b434e30808a7f843d9a014d9cb2d0a19a7944","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/f584241676064231a32c66cbadc79505121e99e10bf6f02061ae1858e94088cd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_a2_city_day_capstone_02:3 -> audio/generated/tr-TR/dialogues/f8e0bdbd99b30f2a8871e27927a3753cfdab9804c88c9db5ae88fd5a2e0b76ad.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a6062909-f540-5047-bc65-2e95b82136f2', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_a2_city_day_capstone_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '95b2c70dafde38863e59f114759b30102cd5f23ab6fb9075afee1ab6276b0793'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d375dd61-70c8-530c-9397-50bc2f69d48b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a6062909-f540-5047-bc65-2e95b82136f2', 1), '95b2c70dafde38863e59f114759b30102cd5f23ab6fb9075afee1ab6276b0793',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/f8e0bdbd99b30f2a8871e27927a3753cfdab9804c88c9db5ae88fd5a2e0b76ad.mp3', 2220, '2026-09-13 17:08:12.646850', 'e104f2d1c9b6db0998e8edbcd5959bdfa2015ca59473d855a5afc881972a1ec5', 'validated', '{"audio_key":"f8e0bdbd99b30f2a8871e27927a3753cfdab9804c88c9db5ae88fd5a2e0b76ad","entity_key":"d_a2_city_day_capstone_02:3","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e104f2d1c9b6db0998e8edbcd5959bdfa2015ca59473d855a5afc881972a1ec5","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/f8e0bdbd99b30f2a8871e27927a3753cfdab9804c88c9db5ae88fd5a2e0b76ad.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_choices_and_preferences_01:2 -> audio/generated/tr-TR/dialogues/f9b769814af5ea9856e208ee66e4a804e9f772ea7d8dbd566911a0d483cc51d1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d059da11-b8ca-55cf-85ae-aeb325c8cdce', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_choices_and_preferences_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '65534ae44d10b7432c1638eba7019262a844d1bfd27412eb58e6bf26401bbea0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('446916c5-2429-5711-bc75-6ecc62bda2b6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d059da11-b8ca-55cf-85ae-aeb325c8cdce', 1), '65534ae44d10b7432c1638eba7019262a844d1bfd27412eb58e6bf26401bbea0',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/f9b769814af5ea9856e208ee66e4a804e9f772ea7d8dbd566911a0d483cc51d1.mp3', 1697, '2026-09-13 17:08:12.777889', 'da974900d065a3a02263b7594a4f3342af2522a9cc6478f581ec42d93ea23cef', 'validated', '{"audio_key":"f9b769814af5ea9856e208ee66e4a804e9f772ea7d8dbd566911a0d483cc51d1","entity_key":"d_choices_and_preferences_01:2","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"da974900d065a3a02263b7594a4f3342af2522a9cc6478f581ec42d93ea23cef","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/f9b769814af5ea9856e208ee66e4a804e9f772ea7d8dbd566911a0d483cc51d1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_a2_city_day_capstone_02:2 -> audio/generated/tr-TR/dialogues/fa96b0db89e9f530e7115efb4c239d63693bae390875b20c53a299cfc29a8980.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c3ffc334-24d6-5908-98b9-09cbed8cd93b', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_a2_city_day_capstone_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '15c94b0416f7cebfd718125c0da4d637b4c2a196a2ad74dfdb43044c74f36d44'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8997325f-0f1e-5aa7-9cd4-220cf5da669f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c3ffc334-24d6-5908-98b9-09cbed8cd93b', 1), '15c94b0416f7cebfd718125c0da4d637b4c2a196a2ad74dfdb43044c74f36d44',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/fa96b0db89e9f530e7115efb4c239d63693bae390875b20c53a299cfc29a8980.mp3', 1488, '2026-09-13 17:08:14.011754', 'ab5574ea3471405076d46bddd454c6c5c2d77130e188c14fc69c14d1470b3211', 'validated', '{"audio_key":"fa96b0db89e9f530e7115efb4c239d63693bae390875b20c53a299cfc29a8980","entity_key":"d_a2_city_day_capstone_02:2","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ab5574ea3471405076d46bddd454c6c5c2d77130e188c14fc69c14d1470b3211","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/fa96b0db89e9f530e7115efb4c239d63693bae390875b20c53a299cfc29a8980.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_health_and_advice_02:2 -> audio/generated/tr-TR/dialogues/fd35133ab3984e1afa3234f2aa9d64ad9c93506a6b1517afdd71abe2396925bc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2d982bf8-b4ba-525d-89fd-6e34701eba7a', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_health_and_advice_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '53776690f2815fcf4ba9b0b059d5eb0178ff5f550a8fc9a097b9ee760dd860df'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6dcf9e88-7f49-570b-8735-7f363fb78e0d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2d982bf8-b4ba-525d-89fd-6e34701eba7a', 1), '53776690f2815fcf4ba9b0b059d5eb0178ff5f550a8fc9a097b9ee760dd860df',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/fd35133ab3984e1afa3234f2aa9d64ad9c93506a6b1517afdd71abe2396925bc.mp3', 1750, '2026-09-13 17:08:13.848437', 'fc4a330e3308a1f2b2c8c828c42feb6405fed1b71f3af5dd04830ec52439cb9f', 'validated', '{"audio_key":"fd35133ab3984e1afa3234f2aa9d64ad9c93506a6b1517afdd71abe2396925bc","entity_key":"d_health_and_advice_02:2","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"fc4a330e3308a1f2b2c8c828c42feb6405fed1b71f3af5dd04830ec52439cb9f","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/fd35133ab3984e1afa3234f2aa9d64ad9c93506a6b1517afdd71abe2396925bc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_comparisons_02:4 -> audio/generated/tr-TR/dialogues/feb18f2efb7962b9b8fb28ee3c8304827a8354453344d6892e9a4b7d069a4f30.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bbb6d76d-adc7-5ff0-92b6-0299a73954c3', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_comparisons_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'deb3734b8a6572c5c6eb2e7c51af7e555035146a003c069e2542e44f7828ae48'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('129b80ff-5b98-55fb-adf1-182bd85f177c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bbb6d76d-adc7-5ff0-92b6-0299a73954c3', 1), 'deb3734b8a6572c5c6eb2e7c51af7e555035146a003c069e2542e44f7828ae48',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/feb18f2efb7962b9b8fb28ee3c8304827a8354453344d6892e9a4b7d069a4f30.mp3', 1488, '2026-09-13 17:08:14.869696', '6bd5fbc6a7611cf423f88e523d3cf865d4f8154ea74762627666664f0292f9c9', 'validated', '{"audio_key":"feb18f2efb7962b9b8fb28ee3c8304827a8354453344d6892e9a4b7d069a4f30","entity_key":"d_comparisons_02:4","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6bd5fbc6a7611cf423f88e523d3cf865d4f8154ea74762627666664f0292f9c9","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/feb18f2efb7962b9b8fb28ee3c8304827a8354453344d6892e9a4b7d069a4f30.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_health_and_advice_03 -> audio/generated/tr-TR/lexical/015f309a2db1b19a73f9b6ac65c8b1acffce9b5d2c01322e12190bcfcf55f550.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('193b558c-6c2a-5f4b-8669-8db193454aa6', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_health_and_advice_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2232c81c4118f6676769d59fd30564d2626c4435883614db22a3e9a4ec873611'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('242c79b1-e5f7-5659-82ff-737eddf06488', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('193b558c-6c2a-5f4b-8669-8db193454aa6', 1), '2232c81c4118f6676769d59fd30564d2626c4435883614db22a3e9a4ec873611',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/015f309a2db1b19a73f9b6ac65c8b1acffce9b5d2c01322e12190bcfcf55f550.mp3', 1253, '2026-09-13 17:08:15.187311', '29c6f632c4985fdf968ecfec8e42423cd117cc3942e889b87a9c81f8836d8fea', 'validated', '{"audio_key":"015f309a2db1b19a73f9b6ac65c8b1acffce9b5d2c01322e12190bcfcf55f550","entity_key":"lx_health_and_advice_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"29c6f632c4985fdf968ecfec8e42423cd117cc3942e889b87a9c81f8836d8fea","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/015f309a2db1b19a73f9b6ac65c8b1acffce9b5d2c01322e12190bcfcf55f550.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_health_and_advice_03 -> audio/generated/tr-TR/lexical/015f309a2db1b19a73f9b6ac65c8b1acffce9b5d2c01322e12190bcfcf55f550.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('07643367-459e-560e-b208-7a83edac75fe', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_health_and_advice_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2232c81c4118f6676769d59fd30564d2626c4435883614db22a3e9a4ec873611'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('09958e91-5510-5a9b-8775-69bf442cbfb7', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('07643367-459e-560e-b208-7a83edac75fe', 1), '2232c81c4118f6676769d59fd30564d2626c4435883614db22a3e9a4ec873611',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/015f309a2db1b19a73f9b6ac65c8b1acffce9b5d2c01322e12190bcfcf55f550.mp3', 1253, '2026-09-13 17:08:15.187311', '29c6f632c4985fdf968ecfec8e42423cd117cc3942e889b87a9c81f8836d8fea', 'validated', '{"audio_key":"015f309a2db1b19a73f9b6ac65c8b1acffce9b5d2c01322e12190bcfcf55f550","entity_key":"wf_health_and_advice_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"29c6f632c4985fdf968ecfec8e42423cd117cc3942e889b87a9c81f8836d8fea","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/015f309a2db1b19a73f9b6ac65c8b1acffce9b5d2c01322e12190bcfcf55f550.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_reasons_and_results_04 -> audio/generated/tr-TR/lexical/01b6c8d242d238f15daa5c81c7a18d035a22e64e96f28427078a1f092971a692.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b7b66ec7-6f59-5bd8-8ebb-23ab04e22de9', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_reasons_and_results_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '854546d1e42c14a919fa1cff548eed4c31eee51fe5cc9036bb851d93177cf1e7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e33b436b-7f87-5312-824b-1a3edff9aef7', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b7b66ec7-6f59-5bd8-8ebb-23ab04e22de9', 1), '854546d1e42c14a919fa1cff548eed4c31eee51fe5cc9036bb851d93177cf1e7',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/01b6c8d242d238f15daa5c81c7a18d035a22e64e96f28427078a1f092971a692.mp3', 1280, '2026-09-13 17:08:15.890167', '4eff23d7a87290bf03adb1adaa7d16b310b6848fd76331752240f36eee301c38', 'validated', '{"audio_key":"01b6c8d242d238f15daa5c81c7a18d035a22e64e96f28427078a1f092971a692","entity_key":"lx_reasons_and_results_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4eff23d7a87290bf03adb1adaa7d16b310b6848fd76331752240f36eee301c38","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/01b6c8d242d238f15daa5c81c7a18d035a22e64e96f28427078a1f092971a692.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_reasons_and_results_04 -> audio/generated/tr-TR/lexical/01b6c8d242d238f15daa5c81c7a18d035a22e64e96f28427078a1f092971a692.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('50e5ae75-65be-514b-b0b8-1c8763867ce8', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_reasons_and_results_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '854546d1e42c14a919fa1cff548eed4c31eee51fe5cc9036bb851d93177cf1e7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('93ac587f-fa0a-56ed-bce0-786127fec1e9', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('50e5ae75-65be-514b-b0b8-1c8763867ce8', 1), '854546d1e42c14a919fa1cff548eed4c31eee51fe5cc9036bb851d93177cf1e7',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/01b6c8d242d238f15daa5c81c7a18d035a22e64e96f28427078a1f092971a692.mp3', 1280, '2026-09-13 17:08:15.890167', '4eff23d7a87290bf03adb1adaa7d16b310b6848fd76331752240f36eee301c38', 'validated', '{"audio_key":"01b6c8d242d238f15daa5c81c7a18d035a22e64e96f28427078a1f092971a692","entity_key":"wf_reasons_and_results_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4eff23d7a87290bf03adb1adaa7d16b310b6848fd76331752240f36eee301c38","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/01b6c8d242d238f15daa5c81c7a18d035a22e64e96f28427078a1f092971a692.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_past_weekend_02 -> audio/generated/tr-TR/lexical/0d1fde49a9263e09a23a1dc69ddab5900829c9cbe05237f2ad9142e481bd9a25.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('33728fee-f5d8-50b6-beaf-5bedb7ff28cc', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_past_weekend_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1a6f0a4f636ededd69523aef398c19e011f6b9fd01e26d8cd405febded0e0280'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('adb69353-3c74-5c62-8756-4486c58d3542', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('33728fee-f5d8-50b6-beaf-5bedb7ff28cc', 1), '1a6f0a4f636ededd69523aef398c19e011f6b9fd01e26d8cd405febded0e0280',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/0d1fde49a9263e09a23a1dc69ddab5900829c9cbe05237f2ad9142e481bd9a25.mp3', 1280, '2026-09-13 17:08:16.369020', '650ecd7e3662af59c1398d2c738d64c34361becf06b69497489d4127617d877c', 'validated', '{"audio_key":"0d1fde49a9263e09a23a1dc69ddab5900829c9cbe05237f2ad9142e481bd9a25","entity_key":"lx_past_weekend_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"650ecd7e3662af59c1398d2c738d64c34361becf06b69497489d4127617d877c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/0d1fde49a9263e09a23a1dc69ddab5900829c9cbe05237f2ad9142e481bd9a25.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_past_weekend_02 -> audio/generated/tr-TR/lexical/0d1fde49a9263e09a23a1dc69ddab5900829c9cbe05237f2ad9142e481bd9a25.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('62b8c62f-342b-5cbe-905d-38261e31af2e', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_past_weekend_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1a6f0a4f636ededd69523aef398c19e011f6b9fd01e26d8cd405febded0e0280'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8aa21af6-aa15-5368-bf11-92bad0e2ceaf', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('62b8c62f-342b-5cbe-905d-38261e31af2e', 1), '1a6f0a4f636ededd69523aef398c19e011f6b9fd01e26d8cd405febded0e0280',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/0d1fde49a9263e09a23a1dc69ddab5900829c9cbe05237f2ad9142e481bd9a25.mp3', 1280, '2026-09-13 17:08:16.369020', '650ecd7e3662af59c1398d2c738d64c34361becf06b69497489d4127617d877c', 'validated', '{"audio_key":"0d1fde49a9263e09a23a1dc69ddab5900829c9cbe05237f2ad9142e481bd9a25","entity_key":"wf_past_weekend_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"650ecd7e3662af59c1398d2c738d64c34361becf06b69497489d4127617d877c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/0d1fde49a9263e09a23a1dc69ddab5900829c9cbe05237f2ad9142e481bd9a25.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_past_weekend_01 -> audio/generated/tr-TR/lexical/0dfd2e20abe5580f9821a273cc52bb0946fd5c46c45a26e513615d70c37a8428.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a44b777d-e276-5aed-b1e7-1caab1c9022f', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_past_weekend_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '78b0274970cc27c07d8b687040514e67d1e9bfa2f4b1952af1d752cdd46334a0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9b9f512c-f550-58fe-9e9a-6cee8537b31f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a44b777d-e276-5aed-b1e7-1caab1c9022f', 1), '78b0274970cc27c07d8b687040514e67d1e9bfa2f4b1952af1d752cdd46334a0',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/0dfd2e20abe5580f9821a273cc52bb0946fd5c46c45a26e513615d70c37a8428.mp3', 914, '2026-09-13 17:08:16.900598', '9737943c5fe51fafdcb1a43254d759c9d1b04cc38f7488d44bff36363d4c901c', 'validated', '{"audio_key":"0dfd2e20abe5580f9821a273cc52bb0946fd5c46c45a26e513615d70c37a8428","entity_key":"lx_past_weekend_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9737943c5fe51fafdcb1a43254d759c9d1b04cc38f7488d44bff36363d4c901c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/0dfd2e20abe5580f9821a273cc52bb0946fd5c46c45a26e513615d70c37a8428.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_past_weekend_01 -> audio/generated/tr-TR/lexical/0dfd2e20abe5580f9821a273cc52bb0946fd5c46c45a26e513615d70c37a8428.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f8dc0c97-c682-5648-bbeb-3eea6bb68f9d', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_past_weekend_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '78b0274970cc27c07d8b687040514e67d1e9bfa2f4b1952af1d752cdd46334a0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b746fec2-9205-516b-9fac-d7e10677d223', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f8dc0c97-c682-5648-bbeb-3eea6bb68f9d', 1), '78b0274970cc27c07d8b687040514e67d1e9bfa2f4b1952af1d752cdd46334a0',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/0dfd2e20abe5580f9821a273cc52bb0946fd5c46c45a26e513615d70c37a8428.mp3', 914, '2026-09-13 17:08:16.900598', '9737943c5fe51fafdcb1a43254d759c9d1b04cc38f7488d44bff36363d4c901c', 'validated', '{"audio_key":"0dfd2e20abe5580f9821a273cc52bb0946fd5c46c45a26e513615d70c37a8428","entity_key":"wf_past_weekend_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9737943c5fe51fafdcb1a43254d759c9d1b04cc38f7488d44bff36363d4c901c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/0dfd2e20abe5580f9821a273cc52bb0946fd5c46c45a26e513615d70c37a8428.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_appointments_and_plans_05 -> audio/generated/tr-TR/lexical/0edac6d256bce9c765b1e8fd76da7587b72d8da1a7afd3531a5a2ee97fae858b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('dcef88df-8e8d-5565-88fc-e216cbfa5298', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_appointments_and_plans_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c4f3a2bc5571cd5b7cb27f4c90ed0416d947f7d2e521f657e5c95ae5328d33d3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cc78b70c-896c-52c9-8f68-51253b1f081d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('dcef88df-8e8d-5565-88fc-e216cbfa5298', 1), 'c4f3a2bc5571cd5b7cb27f4c90ed0416d947f7d2e521f657e5c95ae5328d33d3',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/0edac6d256bce9c765b1e8fd76da7587b72d8da1a7afd3531a5a2ee97fae858b.mp3', 1280, '2026-09-13 17:08:17.371028', '51c63701ee62d71cb0d5e39445342fff6132333b022514b1b2a4c0564c46a8b5', 'validated', '{"audio_key":"0edac6d256bce9c765b1e8fd76da7587b72d8da1a7afd3531a5a2ee97fae858b","entity_key":"lx_appointments_and_plans_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"51c63701ee62d71cb0d5e39445342fff6132333b022514b1b2a4c0564c46a8b5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/0edac6d256bce9c765b1e8fd76da7587b72d8da1a7afd3531a5a2ee97fae858b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_appointments_and_plans_05 -> audio/generated/tr-TR/lexical/0edac6d256bce9c765b1e8fd76da7587b72d8da1a7afd3531a5a2ee97fae858b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0eb5c48d-43dc-5870-b923-9cd392693963', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_appointments_and_plans_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c4f3a2bc5571cd5b7cb27f4c90ed0416d947f7d2e521f657e5c95ae5328d33d3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('590ff103-f6aa-53bc-85e5-89ca8212aaa6', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0eb5c48d-43dc-5870-b923-9cd392693963', 1), 'c4f3a2bc5571cd5b7cb27f4c90ed0416d947f7d2e521f657e5c95ae5328d33d3',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/0edac6d256bce9c765b1e8fd76da7587b72d8da1a7afd3531a5a2ee97fae858b.mp3', 1280, '2026-09-13 17:08:17.371028', '51c63701ee62d71cb0d5e39445342fff6132333b022514b1b2a4c0564c46a8b5', 'validated', '{"audio_key":"0edac6d256bce9c765b1e8fd76da7587b72d8da1a7afd3531a5a2ee97fae858b","entity_key":"wf_appointments_and_plans_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"51c63701ee62d71cb0d5e39445342fff6132333b022514b1b2a4c0564c46a8b5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/0edac6d256bce9c765b1e8fd76da7587b72d8da1a7afd3531a5a2ee97fae858b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_past_weekend_03 -> audio/generated/tr-TR/lexical/122ef70c431ed39e2f859681416b6d97fbc6bbd66afdd9a9be60b18969d11c75.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5bb7dcc6-4f90-5e01-a3e9-1f0e8979a4ed', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_past_weekend_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '274a1556dc8768e6b67bcc5252d647e659afeb317ce098cdf368a8ebf9dc4757'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('619014b4-f5ec-5fdb-abef-8829a49db021', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5bb7dcc6-4f90-5e01-a3e9-1f0e8979a4ed', 1), '274a1556dc8768e6b67bcc5252d647e659afeb317ce098cdf368a8ebf9dc4757',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/122ef70c431ed39e2f859681416b6d97fbc6bbd66afdd9a9be60b18969d11c75.mp3', 1071, '2026-09-13 17:08:17.886260', '3279924082bb459888c1dd7bebabfb627963f9685f2fd05523451d5cea2f3c69', 'validated', '{"audio_key":"122ef70c431ed39e2f859681416b6d97fbc6bbd66afdd9a9be60b18969d11c75","entity_key":"lx_past_weekend_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3279924082bb459888c1dd7bebabfb627963f9685f2fd05523451d5cea2f3c69","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/122ef70c431ed39e2f859681416b6d97fbc6bbd66afdd9a9be60b18969d11c75.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_past_weekend_03 -> audio/generated/tr-TR/lexical/122ef70c431ed39e2f859681416b6d97fbc6bbd66afdd9a9be60b18969d11c75.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('31ff125a-c339-5865-bc0c-ab575b6131fa', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_past_weekend_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '274a1556dc8768e6b67bcc5252d647e659afeb317ce098cdf368a8ebf9dc4757'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('80bb1822-4c9f-5c92-830f-c71510366b45', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('31ff125a-c339-5865-bc0c-ab575b6131fa', 1), '274a1556dc8768e6b67bcc5252d647e659afeb317ce098cdf368a8ebf9dc4757',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/122ef70c431ed39e2f859681416b6d97fbc6bbd66afdd9a9be60b18969d11c75.mp3', 1071, '2026-09-13 17:08:17.886260', '3279924082bb459888c1dd7bebabfb627963f9685f2fd05523451d5cea2f3c69', 'validated', '{"audio_key":"122ef70c431ed39e2f859681416b6d97fbc6bbd66afdd9a9be60b18969d11c75","entity_key":"wf_past_weekend_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3279924082bb459888c1dd7bebabfb627963f9685f2fd05523451d5cea2f3c69","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/122ef70c431ed39e2f859681416b6d97fbc6bbd66afdd9a9be60b18969d11c75.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_habits_and_frequency_04 -> audio/generated/tr-TR/lexical/33b02146043d5b0a935b3ccab4be9d3a6328ad46579ccccb48765a1609281079.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('091054a6-ba82-5a12-9ead-d462c8da62e6', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_habits_and_frequency_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cfddfc65214f04d92ececc39b61bf318fd937565498dd6ee476487cb0e5abfae'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('df04556b-e9af-5688-81c4-6c34eb5cc5b6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('091054a6-ba82-5a12-9ead-d462c8da62e6', 1), 'cfddfc65214f04d92ececc39b61bf318fd937565498dd6ee476487cb0e5abfae',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/33b02146043d5b0a935b3ccab4be9d3a6328ad46579ccccb48765a1609281079.mp3', 1018, '2026-09-13 17:08:18.330876', '61da2734a066e123910d604543e240a4a612649c17c4b043afc0e76fd4559a40', 'validated', '{"audio_key":"33b02146043d5b0a935b3ccab4be9d3a6328ad46579ccccb48765a1609281079","entity_key":"lx_habits_and_frequency_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"61da2734a066e123910d604543e240a4a612649c17c4b043afc0e76fd4559a40","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/33b02146043d5b0a935b3ccab4be9d3a6328ad46579ccccb48765a1609281079.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_habits_and_frequency_04 -> audio/generated/tr-TR/lexical/33b02146043d5b0a935b3ccab4be9d3a6328ad46579ccccb48765a1609281079.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('50806e52-0b88-5b0e-8ebb-b2f7f8ee2974', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_habits_and_frequency_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cfddfc65214f04d92ececc39b61bf318fd937565498dd6ee476487cb0e5abfae'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fcfc21c1-8390-5ab5-b6aa-776c0fa9737d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('50806e52-0b88-5b0e-8ebb-b2f7f8ee2974', 1), 'cfddfc65214f04d92ececc39b61bf318fd937565498dd6ee476487cb0e5abfae',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/33b02146043d5b0a935b3ccab4be9d3a6328ad46579ccccb48765a1609281079.mp3', 1018, '2026-09-13 17:08:18.330876', '61da2734a066e123910d604543e240a4a612649c17c4b043afc0e76fd4559a40', 'validated', '{"audio_key":"33b02146043d5b0a935b3ccab4be9d3a6328ad46579ccccb48765a1609281079","entity_key":"wf_habits_and_frequency_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"61da2734a066e123910d604543e240a4a612649c17c4b043afc0e76fd4559a40","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/33b02146043d5b0a935b3ccab4be9d3a6328ad46579ccccb48765a1609281079.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_habits_and_frequency_05 -> audio/generated/tr-TR/lexical/37fb27327bc755fc3dfdf7d086e778b6a5b83bc920f8cf36206ffa1502366a25.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('49c42458-d6ec-5f35-b0d8-5263c9eb12ee', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_habits_and_frequency_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '32ccd59351fa3df266ecdedf3b5d4306b5720b39589bc9cc1408f1cc564b7d54'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b2338f5e-ac59-52a5-81b5-730ffa38750d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('49c42458-d6ec-5f35-b0d8-5263c9eb12ee', 1), '32ccd59351fa3df266ecdedf3b5d4306b5720b39589bc9cc1408f1cc564b7d54',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/37fb27327bc755fc3dfdf7d086e778b6a5b83bc920f8cf36206ffa1502366a25.mp3', 914, '2026-09-13 17:08:18.847208', 'eb0666b3881faac360f4c9aba14bc0eb1d58bd3b00388e194f68b7df717b2705', 'validated', '{"audio_key":"37fb27327bc755fc3dfdf7d086e778b6a5b83bc920f8cf36206ffa1502366a25","entity_key":"lx_habits_and_frequency_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"eb0666b3881faac360f4c9aba14bc0eb1d58bd3b00388e194f68b7df717b2705","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/37fb27327bc755fc3dfdf7d086e778b6a5b83bc920f8cf36206ffa1502366a25.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_habits_and_frequency_05 -> audio/generated/tr-TR/lexical/37fb27327bc755fc3dfdf7d086e778b6a5b83bc920f8cf36206ffa1502366a25.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('99d6d627-84c2-5d1b-9910-9a4adb8fb563', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_habits_and_frequency_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '32ccd59351fa3df266ecdedf3b5d4306b5720b39589bc9cc1408f1cc564b7d54'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('976108c3-8c7a-5486-a996-39e57b92df14', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('99d6d627-84c2-5d1b-9910-9a4adb8fb563', 1), '32ccd59351fa3df266ecdedf3b5d4306b5720b39589bc9cc1408f1cc564b7d54',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/37fb27327bc755fc3dfdf7d086e778b6a5b83bc920f8cf36206ffa1502366a25.mp3', 914, '2026-09-13 17:08:18.847208', 'eb0666b3881faac360f4c9aba14bc0eb1d58bd3b00388e194f68b7df717b2705', 'validated', '{"audio_key":"37fb27327bc755fc3dfdf7d086e778b6a5b83bc920f8cf36206ffa1502366a25","entity_key":"wf_habits_and_frequency_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"eb0666b3881faac360f4c9aba14bc0eb1d58bd3b00388e194f68b7df717b2705","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/37fb27327bc755fc3dfdf7d086e778b6a5b83bc920f8cf36206ffa1502366a25.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_past_weekend_04 -> audio/generated/tr-TR/lexical/39dff4df5d8f7b06fb27acabde39ed055ca20bd41ce518f6c0dc0cb06d4ce518.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('fd6d6836-d2d4-5d85-ba7b-ad90d9684731', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_past_weekend_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '584e77ab52a4ab3992770490460869e7c7de4c7102d94c820131815dcf712050'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4ea85a59-942d-5927-a927-aa009a6fcd5c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('fd6d6836-d2d4-5d85-ba7b-ad90d9684731', 1), '584e77ab52a4ab3992770490460869e7c7de4c7102d94c820131815dcf712050',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/39dff4df5d8f7b06fb27acabde39ed055ca20bd41ce518f6c0dc0cb06d4ce518.mp3', 1018, '2026-09-13 17:08:19.301175', '0c8b89c7cba5a3c2be97dcb4b328f360196084c2189112f100bd513fd10b8816', 'validated', '{"audio_key":"39dff4df5d8f7b06fb27acabde39ed055ca20bd41ce518f6c0dc0cb06d4ce518","entity_key":"lx_past_weekend_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0c8b89c7cba5a3c2be97dcb4b328f360196084c2189112f100bd513fd10b8816","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/39dff4df5d8f7b06fb27acabde39ed055ca20bd41ce518f6c0dc0cb06d4ce518.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_past_weekend_04 -> audio/generated/tr-TR/lexical/39dff4df5d8f7b06fb27acabde39ed055ca20bd41ce518f6c0dc0cb06d4ce518.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('dee1862b-ba14-52b7-ab09-21e786d7df20', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_past_weekend_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '584e77ab52a4ab3992770490460869e7c7de4c7102d94c820131815dcf712050'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('53933980-0b06-567b-95d1-0e4def1fe0ea', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('dee1862b-ba14-52b7-ab09-21e786d7df20', 1), '584e77ab52a4ab3992770490460869e7c7de4c7102d94c820131815dcf712050',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/39dff4df5d8f7b06fb27acabde39ed055ca20bd41ce518f6c0dc0cb06d4ce518.mp3', 1018, '2026-09-13 17:08:19.301175', '0c8b89c7cba5a3c2be97dcb4b328f360196084c2189112f100bd513fd10b8816', 'validated', '{"audio_key":"39dff4df5d8f7b06fb27acabde39ed055ca20bd41ce518f6c0dc0cb06d4ce518","entity_key":"wf_past_weekend_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0c8b89c7cba5a3c2be97dcb4b328f360196084c2189112f100bd513fd10b8816","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/39dff4df5d8f7b06fb27acabde39ed055ca20bd41ce518f6c0dc0cb06d4ce518.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_health_and_advice_01 -> audio/generated/tr-TR/lexical/3d74224eb4bf70a537ce698560a46986ec2b8965ffa0d4ccadcccaded301d7a4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('45102fe9-8372-5765-98a2-a33d2e4e33b5', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_health_and_advice_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9bb8d1f8471aad0e1896e8e1b14706fbef36e911041885adce68c8282cefc634'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6d690ddc-25eb-5cc8-84f7-4e549000680d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('45102fe9-8372-5765-98a2-a33d2e4e33b5', 1), '9bb8d1f8471aad0e1896e8e1b14706fbef36e911041885adce68c8282cefc634',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/3d74224eb4bf70a537ce698560a46986ec2b8965ffa0d4ccadcccaded301d7a4.mp3', 966, '2026-09-13 17:08:19.805265', '43bb4e34020294cbc06920b535519bcc5327ed3b496af193495cc848fe216b53', 'validated', '{"audio_key":"3d74224eb4bf70a537ce698560a46986ec2b8965ffa0d4ccadcccaded301d7a4","entity_key":"lx_health_and_advice_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"43bb4e34020294cbc06920b535519bcc5327ed3b496af193495cc848fe216b53","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/3d74224eb4bf70a537ce698560a46986ec2b8965ffa0d4ccadcccaded301d7a4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_health_and_advice_01 -> audio/generated/tr-TR/lexical/3d74224eb4bf70a537ce698560a46986ec2b8965ffa0d4ccadcccaded301d7a4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1d16d5f3-98b8-550f-a290-9873b7ca182e', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_health_and_advice_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9bb8d1f8471aad0e1896e8e1b14706fbef36e911041885adce68c8282cefc634'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c75da1b3-21bf-5199-8706-9607da88a9cc', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1d16d5f3-98b8-550f-a290-9873b7ca182e', 1), '9bb8d1f8471aad0e1896e8e1b14706fbef36e911041885adce68c8282cefc634',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/3d74224eb4bf70a537ce698560a46986ec2b8965ffa0d4ccadcccaded301d7a4.mp3', 966, '2026-09-13 17:08:19.805265', '43bb4e34020294cbc06920b535519bcc5327ed3b496af193495cc848fe216b53', 'validated', '{"audio_key":"3d74224eb4bf70a537ce698560a46986ec2b8965ffa0d4ccadcccaded301d7a4","entity_key":"wf_health_and_advice_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"43bb4e34020294cbc06920b535519bcc5327ed3b496af193495cc848fe216b53","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/3d74224eb4bf70a537ce698560a46986ec2b8965ffa0d4ccadcccaded301d7a4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_choices_and_preferences_01 -> audio/generated/tr-TR/lexical/4012c5604f124ac70402d06134fbfe6170630c9c691c36c5f0441f4f807a7407.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b046d29d-0809-55b6-a620-ae06f581d72a', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_choices_and_preferences_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '22ad643b16b078c9bfc12aedc77e7181626423422c586c735251233c280a83e6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f773f8b6-5ebf-5663-a933-6ba766202bc8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b046d29d-0809-55b6-a620-ae06f581d72a', 1), '22ad643b16b078c9bfc12aedc77e7181626423422c586c735251233c280a83e6',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/4012c5604f124ac70402d06134fbfe6170630c9c691c36c5f0441f4f807a7407.mp3', 1201, '2026-09-13 17:08:20.308564', 'dcd6fe9e15426821edc25fdc4f991275307d2ec25fb8da2b724f34522639d8a5', 'validated', '{"audio_key":"4012c5604f124ac70402d06134fbfe6170630c9c691c36c5f0441f4f807a7407","entity_key":"lx_choices_and_preferences_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dcd6fe9e15426821edc25fdc4f991275307d2ec25fb8da2b724f34522639d8a5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/4012c5604f124ac70402d06134fbfe6170630c9c691c36c5f0441f4f807a7407.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_choices_and_preferences_01 -> audio/generated/tr-TR/lexical/4012c5604f124ac70402d06134fbfe6170630c9c691c36c5f0441f4f807a7407.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d0b4de56-a960-5c0b-b432-6e8ebf053fe4', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_choices_and_preferences_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '22ad643b16b078c9bfc12aedc77e7181626423422c586c735251233c280a83e6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c4bdf669-62a3-56a3-a9ed-088878f975b3', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d0b4de56-a960-5c0b-b432-6e8ebf053fe4', 1), '22ad643b16b078c9bfc12aedc77e7181626423422c586c735251233c280a83e6',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/4012c5604f124ac70402d06134fbfe6170630c9c691c36c5f0441f4f807a7407.mp3', 1201, '2026-09-13 17:08:20.308564', 'dcd6fe9e15426821edc25fdc4f991275307d2ec25fb8da2b724f34522639d8a5', 'validated', '{"audio_key":"4012c5604f124ac70402d06134fbfe6170630c9c691c36c5f0441f4f807a7407","entity_key":"wf_choices_and_preferences_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dcd6fe9e15426821edc25fdc4f991275307d2ec25fb8da2b724f34522639d8a5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/4012c5604f124ac70402d06134fbfe6170630c9c691c36c5f0441f4f807a7407.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_polite_requests_01 -> audio/generated/tr-TR/lexical/406a397f2b5cc065b3a6c2cf276f45e2a93bf4eab915b0053bffd0b4ac624b9c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('fee6f0ed-2b29-58db-b747-c0403fd1f122', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_polite_requests_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e68e851a5503866fbe10225ecfc3fe6843643df01317c6d6e2ebd40551531500'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('013cd608-2383-5a49-b3a4-fa9c37cae5bd', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('fee6f0ed-2b29-58db-b747-c0403fd1f122', 1), 'e68e851a5503866fbe10225ecfc3fe6843643df01317c6d6e2ebd40551531500',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/406a397f2b5cc065b3a6c2cf276f45e2a93bf4eab915b0053bffd0b4ac624b9c.mp3', 1201, '2026-09-13 17:08:20.766176', 'e518ca488ffdd03302fd308ab1d923afb6c241c09630fc150eefd3897e12d334', 'validated', '{"audio_key":"406a397f2b5cc065b3a6c2cf276f45e2a93bf4eab915b0053bffd0b4ac624b9c","entity_key":"lx_polite_requests_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e518ca488ffdd03302fd308ab1d923afb6c241c09630fc150eefd3897e12d334","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/406a397f2b5cc065b3a6c2cf276f45e2a93bf4eab915b0053bffd0b4ac624b9c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_polite_requests_01 -> audio/generated/tr-TR/lexical/406a397f2b5cc065b3a6c2cf276f45e2a93bf4eab915b0053bffd0b4ac624b9c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('89f12fac-6946-5470-9230-fce46ea4ca33', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_polite_requests_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e68e851a5503866fbe10225ecfc3fe6843643df01317c6d6e2ebd40551531500'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e0a36613-103b-5c18-98aa-33ab58703f96', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('89f12fac-6946-5470-9230-fce46ea4ca33', 1), 'e68e851a5503866fbe10225ecfc3fe6843643df01317c6d6e2ebd40551531500',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/406a397f2b5cc065b3a6c2cf276f45e2a93bf4eab915b0053bffd0b4ac624b9c.mp3', 1201, '2026-09-13 17:08:20.766176', 'e518ca488ffdd03302fd308ab1d923afb6c241c09630fc150eefd3897e12d334', 'validated', '{"audio_key":"406a397f2b5cc065b3a6c2cf276f45e2a93bf4eab915b0053bffd0b4ac624b9c","entity_key":"wf_polite_requests_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e518ca488ffdd03302fd308ab1d923afb6c241c09630fc150eefd3897e12d334","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/406a397f2b5cc065b3a6c2cf276f45e2a93bf4eab915b0053bffd0b4ac624b9c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_appointments_and_plans_01 -> audio/generated/tr-TR/lexical/40bc504b40dfbba61961332f0a82a54a86d37efdf5c43c174d64d7fceb4388a7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b5e6e008-c528-59f5-b8fc-207c88ff32fd', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_appointments_and_plans_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '726ea07fe894f5e2c4be85b24b5e8c19bc8c970963caffb8e7820257d4390410'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('582ae79e-a580-5bae-bc03-7abfed31fb09', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b5e6e008-c528-59f5-b8fc-207c88ff32fd', 1), '726ea07fe894f5e2c4be85b24b5e8c19bc8c970963caffb8e7820257d4390410',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/40bc504b40dfbba61961332f0a82a54a86d37efdf5c43c174d64d7fceb4388a7.mp3', 1201, '2026-09-13 17:08:21.292672', '47cae3f74820a50e1388220c53c89a3a3f5de23a29879ed657298b477efc74df', 'validated', '{"audio_key":"40bc504b40dfbba61961332f0a82a54a86d37efdf5c43c174d64d7fceb4388a7","entity_key":"lx_appointments_and_plans_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"47cae3f74820a50e1388220c53c89a3a3f5de23a29879ed657298b477efc74df","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/40bc504b40dfbba61961332f0a82a54a86d37efdf5c43c174d64d7fceb4388a7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_appointments_and_plans_01 -> audio/generated/tr-TR/lexical/40bc504b40dfbba61961332f0a82a54a86d37efdf5c43c174d64d7fceb4388a7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b16db1c1-9b25-5893-a4d6-26a718a57af8', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_appointments_and_plans_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '726ea07fe894f5e2c4be85b24b5e8c19bc8c970963caffb8e7820257d4390410'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d8453561-0ea1-5dcb-bcc4-bbfba605cbc6', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b16db1c1-9b25-5893-a4d6-26a718a57af8', 1), '726ea07fe894f5e2c4be85b24b5e8c19bc8c970963caffb8e7820257d4390410',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/40bc504b40dfbba61961332f0a82a54a86d37efdf5c43c174d64d7fceb4388a7.mp3', 1201, '2026-09-13 17:08:21.292672', '47cae3f74820a50e1388220c53c89a3a3f5de23a29879ed657298b477efc74df', 'validated', '{"audio_key":"40bc504b40dfbba61961332f0a82a54a86d37efdf5c43c174d64d7fceb4388a7","entity_key":"wf_appointments_and_plans_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"47cae3f74820a50e1388220c53c89a3a3f5de23a29879ed657298b477efc74df","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/40bc504b40dfbba61961332f0a82a54a86d37efdf5c43c174d64d7fceb4388a7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_travel_and_hotel_03 -> audio/generated/tr-TR/lexical/52cc66dbd3f4a0c4228d4320d877455aab415128e71035b870518d71644ba1b6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('71b045c5-5d6f-56d3-8e45-fd5198fb9ce4', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_travel_and_hotel_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd4a2e305f47f5e2bec353ac6aae7f08a44821c24124b515763e658a4ca6c9c67'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ab8344c6-0b4c-51f3-8668-f6cba04d0a8f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('71b045c5-5d6f-56d3-8e45-fd5198fb9ce4', 1), 'd4a2e305f47f5e2bec353ac6aae7f08a44821c24124b515763e658a4ca6c9c67',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/52cc66dbd3f4a0c4228d4320d877455aab415128e71035b870518d71644ba1b6.mp3', 1097, '2026-09-13 17:08:21.748695', 'd91f3976e38e31908fa000f1acb6891798b1bdbf378e39d54c7c68edcefe6c97', 'validated', '{"audio_key":"52cc66dbd3f4a0c4228d4320d877455aab415128e71035b870518d71644ba1b6","entity_key":"lx_travel_and_hotel_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d91f3976e38e31908fa000f1acb6891798b1bdbf378e39d54c7c68edcefe6c97","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/52cc66dbd3f4a0c4228d4320d877455aab415128e71035b870518d71644ba1b6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_travel_and_hotel_03 -> audio/generated/tr-TR/lexical/52cc66dbd3f4a0c4228d4320d877455aab415128e71035b870518d71644ba1b6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4233b7d8-5075-5763-8c65-7759b98cc4fe', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_travel_and_hotel_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd4a2e305f47f5e2bec353ac6aae7f08a44821c24124b515763e658a4ca6c9c67'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2cb0d3f3-190d-575c-bd6d-413b0feba47e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4233b7d8-5075-5763-8c65-7759b98cc4fe', 1), 'd4a2e305f47f5e2bec353ac6aae7f08a44821c24124b515763e658a4ca6c9c67',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/52cc66dbd3f4a0c4228d4320d877455aab415128e71035b870518d71644ba1b6.mp3', 1097, '2026-09-13 17:08:21.748695', 'd91f3976e38e31908fa000f1acb6891798b1bdbf378e39d54c7c68edcefe6c97', 'validated', '{"audio_key":"52cc66dbd3f4a0c4228d4320d877455aab415128e71035b870518d71644ba1b6","entity_key":"wf_travel_and_hotel_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d91f3976e38e31908fa000f1acb6891798b1bdbf378e39d54c7c68edcefe6c97","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/52cc66dbd3f4a0c4228d4320d877455aab415128e71035b870518d71644ba1b6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_past_weekend_05 -> audio/generated/tr-TR/lexical/5e74127083aa4fddc5b20c3796dff1660442241bdc8001e8e0a6592cc28e98f4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('02aded96-15b5-5516-a3bb-a85bcc2839fc', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_past_weekend_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '73e35ffd183b85425cd1b5f124723aa6a92510ef6378a82d9f5216d40b6f994b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d1be0e52-7dbd-5d07-8462-c9770d2e2b36', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('02aded96-15b5-5516-a3bb-a85bcc2839fc', 1), '73e35ffd183b85425cd1b5f124723aa6a92510ef6378a82d9f5216d40b6f994b',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/5e74127083aa4fddc5b20c3796dff1660442241bdc8001e8e0a6592cc28e98f4.mp3', 1097, '2026-09-13 17:08:22.287672', 'd959a949499948de4f13d02a6d920e78a951d5853ff6062775db60790746396d', 'validated', '{"audio_key":"5e74127083aa4fddc5b20c3796dff1660442241bdc8001e8e0a6592cc28e98f4","entity_key":"lx_past_weekend_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d959a949499948de4f13d02a6d920e78a951d5853ff6062775db60790746396d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/5e74127083aa4fddc5b20c3796dff1660442241bdc8001e8e0a6592cc28e98f4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_past_weekend_05 -> audio/generated/tr-TR/lexical/5e74127083aa4fddc5b20c3796dff1660442241bdc8001e8e0a6592cc28e98f4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('caa4b5e3-32b3-599b-ba5e-2e1d2c05ae10', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_past_weekend_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '73e35ffd183b85425cd1b5f124723aa6a92510ef6378a82d9f5216d40b6f994b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2f0ed92c-5f63-57f3-9a0e-376b2e0cf3da', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('caa4b5e3-32b3-599b-ba5e-2e1d2c05ae10', 1), '73e35ffd183b85425cd1b5f124723aa6a92510ef6378a82d9f5216d40b6f994b',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/5e74127083aa4fddc5b20c3796dff1660442241bdc8001e8e0a6592cc28e98f4.mp3', 1097, '2026-09-13 17:08:22.287672', 'd959a949499948de4f13d02a6d920e78a951d5853ff6062775db60790746396d', 'validated', '{"audio_key":"5e74127083aa4fddc5b20c3796dff1660442241bdc8001e8e0a6592cc28e98f4","entity_key":"wf_past_weekend_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d959a949499948de4f13d02a6d920e78a951d5853ff6062775db60790746396d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/5e74127083aa4fddc5b20c3796dff1660442241bdc8001e8e0a6592cc28e98f4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_a2_city_day_capstone_02 -> audio/generated/tr-TR/lexical/60fb7e3f9277445de39281cdd2c90143c3ea703d309e8c923180e3c2d8c2fdad.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e0389cb2-f2c2-5513-ab7f-09132ad4bacb', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_a2_city_day_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fd2d641c1741b232738a4a560ff981f41c7e9221231ba0cb4a2613a0dbe8e46d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cbf7759a-f6fa-5440-8da4-732b2c9bd047', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e0389cb2-f2c2-5513-ab7f-09132ad4bacb', 1), 'fd2d641c1741b232738a4a560ff981f41c7e9221231ba0cb4a2613a0dbe8e46d',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/60fb7e3f9277445de39281cdd2c90143c3ea703d309e8c923180e3c2d8c2fdad.mp3', 1253, '2026-09-13 17:08:22.792629', 'dcbfb99f19a4ff511385883d1100ded956688cc418c31af74c76ee7289328668', 'validated', '{"audio_key":"60fb7e3f9277445de39281cdd2c90143c3ea703d309e8c923180e3c2d8c2fdad","entity_key":"lx_a2_city_day_capstone_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dcbfb99f19a4ff511385883d1100ded956688cc418c31af74c76ee7289328668","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/60fb7e3f9277445de39281cdd2c90143c3ea703d309e8c923180e3c2d8c2fdad.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_a2_city_day_capstone_02 -> audio/generated/tr-TR/lexical/60fb7e3f9277445de39281cdd2c90143c3ea703d309e8c923180e3c2d8c2fdad.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3fecb74c-2538-55fa-bd28-af1a288385e7', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_a2_city_day_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fd2d641c1741b232738a4a560ff981f41c7e9221231ba0cb4a2613a0dbe8e46d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bc6d449e-d5db-53ec-a0ec-af907a7ba0eb', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3fecb74c-2538-55fa-bd28-af1a288385e7', 1), 'fd2d641c1741b232738a4a560ff981f41c7e9221231ba0cb4a2613a0dbe8e46d',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/60fb7e3f9277445de39281cdd2c90143c3ea703d309e8c923180e3c2d8c2fdad.mp3', 1253, '2026-09-13 17:08:22.792629', 'dcbfb99f19a4ff511385883d1100ded956688cc418c31af74c76ee7289328668', 'validated', '{"audio_key":"60fb7e3f9277445de39281cdd2c90143c3ea703d309e8c923180e3c2d8c2fdad","entity_key":"wf_a2_city_day_capstone_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dcbfb99f19a4ff511385883d1100ded956688cc418c31af74c76ee7289328668","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/60fb7e3f9277445de39281cdd2c90143c3ea703d309e8c923180e3c2d8c2fdad.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_comparisons_05 -> audio/generated/tr-TR/lexical/6b65fa2fca06ca57470273abf7302fde9e1e725d74ad8130f5ef9518f31321d4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6bdef525-21fa-5d35-af86-236859f24437', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_comparisons_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c22df8808308b6770ba0644e4e3f071a12e8aee379d600797f0a95b6e134f0f4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a3b97722-264d-5111-9da2-e3269a29c425', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6bdef525-21fa-5d35-af86-236859f24437', 1), 'c22df8808308b6770ba0644e4e3f071a12e8aee379d600797f0a95b6e134f0f4',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/6b65fa2fca06ca57470273abf7302fde9e1e725d74ad8130f5ef9518f31321d4.mp3', 1097, '2026-09-13 17:08:23.271336', 'daf38af68369075fa81d4d27e34f890cbb46305fb5bf5ab58b03d85b1829f921', 'validated', '{"audio_key":"6b65fa2fca06ca57470273abf7302fde9e1e725d74ad8130f5ef9518f31321d4","entity_key":"lx_comparisons_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"daf38af68369075fa81d4d27e34f890cbb46305fb5bf5ab58b03d85b1829f921","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/6b65fa2fca06ca57470273abf7302fde9e1e725d74ad8130f5ef9518f31321d4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_comparisons_05 -> audio/generated/tr-TR/lexical/6b65fa2fca06ca57470273abf7302fde9e1e725d74ad8130f5ef9518f31321d4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6a8ac272-c853-581c-9473-b8a5b0eeffe3', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_comparisons_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c22df8808308b6770ba0644e4e3f071a12e8aee379d600797f0a95b6e134f0f4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('81a12bf7-7633-52d0-b1a9-01a01658f01e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6a8ac272-c853-581c-9473-b8a5b0eeffe3', 1), 'c22df8808308b6770ba0644e4e3f071a12e8aee379d600797f0a95b6e134f0f4',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/6b65fa2fca06ca57470273abf7302fde9e1e725d74ad8130f5ef9518f31321d4.mp3', 1097, '2026-09-13 17:08:23.271336', 'daf38af68369075fa81d4d27e34f890cbb46305fb5bf5ab58b03d85b1829f921', 'validated', '{"audio_key":"6b65fa2fca06ca57470273abf7302fde9e1e725d74ad8130f5ef9518f31321d4","entity_key":"wf_comparisons_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"daf38af68369075fa81d4d27e34f890cbb46305fb5bf5ab58b03d85b1829f921","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/6b65fa2fca06ca57470273abf7302fde9e1e725d74ad8130f5ef9518f31321d4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_choices_and_preferences_04 -> audio/generated/tr-TR/lexical/6d0ff2c8ff669952a0093abc790f2c1a2ca833e44c3f151349c9375b3c29bf77.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('4ddc2bfa-6117-58ed-adab-f268de4efc2c', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_choices_and_preferences_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b221484b0dadc133aceeebd49e17ada9e58f5d6d988b8cab02f118036689f26c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d1efc803-59e5-5265-8ec4-33b9efc97e60', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('4ddc2bfa-6117-58ed-adab-f268de4efc2c', 1), 'b221484b0dadc133aceeebd49e17ada9e58f5d6d988b8cab02f118036689f26c',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/6d0ff2c8ff669952a0093abc790f2c1a2ca833e44c3f151349c9375b3c29bf77.mp3', 1071, '2026-09-13 17:08:23.750698', '7f2353c2b6f2aa4989165428e9a0e510705517878c998b41a57c9a8e206a8ec6', 'validated', '{"audio_key":"6d0ff2c8ff669952a0093abc790f2c1a2ca833e44c3f151349c9375b3c29bf77","entity_key":"lx_choices_and_preferences_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7f2353c2b6f2aa4989165428e9a0e510705517878c998b41a57c9a8e206a8ec6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/6d0ff2c8ff669952a0093abc790f2c1a2ca833e44c3f151349c9375b3c29bf77.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_choices_and_preferences_04 -> audio/generated/tr-TR/lexical/6d0ff2c8ff669952a0093abc790f2c1a2ca833e44c3f151349c9375b3c29bf77.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('63968f2b-0178-581b-9593-82318a48a14f', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_choices_and_preferences_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b221484b0dadc133aceeebd49e17ada9e58f5d6d988b8cab02f118036689f26c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('041e21af-9289-56d8-81b4-4e50024ba88e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('63968f2b-0178-581b-9593-82318a48a14f', 1), 'b221484b0dadc133aceeebd49e17ada9e58f5d6d988b8cab02f118036689f26c',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/6d0ff2c8ff669952a0093abc790f2c1a2ca833e44c3f151349c9375b3c29bf77.mp3', 1071, '2026-09-13 17:08:23.750698', '7f2353c2b6f2aa4989165428e9a0e510705517878c998b41a57c9a8e206a8ec6', 'validated', '{"audio_key":"6d0ff2c8ff669952a0093abc790f2c1a2ca833e44c3f151349c9375b3c29bf77","entity_key":"wf_choices_and_preferences_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7f2353c2b6f2aa4989165428e9a0e510705517878c998b41a57c9a8e206a8ec6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/6d0ff2c8ff669952a0093abc790f2c1a2ca833e44c3f151349c9375b3c29bf77.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_comparisons_02 -> audio/generated/tr-TR/lexical/6ec2b478fd01fbace83fb622767863054770ca0f3679a798f05e82349effa66a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a823eb31-6886-579e-8034-0eb9f82b2b23', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_comparisons_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9346d8f88882b76b8733c463376fa97c2235e5c2c0bc8243e0ca8f45cb00cea1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6abb57f2-33ac-5d13-9292-c139c29ba7e1', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a823eb31-6886-579e-8034-0eb9f82b2b23', 1), '9346d8f88882b76b8733c463376fa97c2235e5c2c0bc8243e0ca8f45cb00cea1',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/6ec2b478fd01fbace83fb622767863054770ca0f3679a798f05e82349effa66a.mp3', 1071, '2026-09-13 15:55:21.640498', '66f92faed4c3637b66ae19f15319b3568989e890f2ea1487b80748cd6048fa47', 'validated', '{"audio_key":"6ec2b478fd01fbace83fb622767863054770ca0f3679a798f05e82349effa66a","entity_key":"lx_comparisons_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"66f92faed4c3637b66ae19f15319b3568989e890f2ea1487b80748cd6048fa47","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/6ec2b478fd01fbace83fb622767863054770ca0f3679a798f05e82349effa66a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_comparisons_02 -> audio/generated/tr-TR/lexical/6ec2b478fd01fbace83fb622767863054770ca0f3679a798f05e82349effa66a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5e195d79-1486-58cf-9e13-696f2523ae34', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_comparisons_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9346d8f88882b76b8733c463376fa97c2235e5c2c0bc8243e0ca8f45cb00cea1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eeea3643-af39-5578-9658-8a5a7e0f92d3', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5e195d79-1486-58cf-9e13-696f2523ae34', 1), '9346d8f88882b76b8733c463376fa97c2235e5c2c0bc8243e0ca8f45cb00cea1',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/6ec2b478fd01fbace83fb622767863054770ca0f3679a798f05e82349effa66a.mp3', 1071, '2026-09-13 15:55:21.640498', '66f92faed4c3637b66ae19f15319b3568989e890f2ea1487b80748cd6048fa47', 'validated', '{"audio_key":"6ec2b478fd01fbace83fb622767863054770ca0f3679a798f05e82349effa66a","entity_key":"wf_comparisons_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"66f92faed4c3637b66ae19f15319b3568989e890f2ea1487b80748cd6048fa47","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/6ec2b478fd01fbace83fb622767863054770ca0f3679a798f05e82349effa66a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_health_and_advice_04 -> audio/generated/tr-TR/lexical/6f353ee0139e6e2fa4efd7df0408eac5dcee30c43290242e251e746e693f55e2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e6a3b995-ccc9-56b5-9968-e4cc12f1fe70', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_health_and_advice_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '553cee683d7e46c0df7ce1ccf6cbbf78e3e6e8c9d0fe95079aca7ad3de738530'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('65395372-df06-53cc-ba93-bfb45bb1968a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e6a3b995-ccc9-56b5-9968-e4cc12f1fe70', 1), '553cee683d7e46c0df7ce1ccf6cbbf78e3e6e8c9d0fe95079aca7ad3de738530',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/6f353ee0139e6e2fa4efd7df0408eac5dcee30c43290242e251e746e693f55e2.mp3', 1018, '2026-09-13 17:08:24.238043', '5ba4da80e555d95eaacb6fd012d11acaf25248b9d79de280f50fb22e8dc22b32', 'validated', '{"audio_key":"6f353ee0139e6e2fa4efd7df0408eac5dcee30c43290242e251e746e693f55e2","entity_key":"lx_health_and_advice_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5ba4da80e555d95eaacb6fd012d11acaf25248b9d79de280f50fb22e8dc22b32","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/6f353ee0139e6e2fa4efd7df0408eac5dcee30c43290242e251e746e693f55e2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_health_and_advice_04 -> audio/generated/tr-TR/lexical/6f353ee0139e6e2fa4efd7df0408eac5dcee30c43290242e251e746e693f55e2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a1729135-42c7-5f14-81f1-535e300bc6af', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_health_and_advice_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '553cee683d7e46c0df7ce1ccf6cbbf78e3e6e8c9d0fe95079aca7ad3de738530'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('587d8619-1625-52c8-b908-c8abdd66781f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a1729135-42c7-5f14-81f1-535e300bc6af', 1), '553cee683d7e46c0df7ce1ccf6cbbf78e3e6e8c9d0fe95079aca7ad3de738530',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/6f353ee0139e6e2fa4efd7df0408eac5dcee30c43290242e251e746e693f55e2.mp3', 1018, '2026-09-13 17:08:24.238043', '5ba4da80e555d95eaacb6fd012d11acaf25248b9d79de280f50fb22e8dc22b32', 'validated', '{"audio_key":"6f353ee0139e6e2fa4efd7df0408eac5dcee30c43290242e251e746e693f55e2","entity_key":"wf_health_and_advice_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5ba4da80e555d95eaacb6fd012d11acaf25248b9d79de280f50fb22e8dc22b32","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/6f353ee0139e6e2fa4efd7df0408eac5dcee30c43290242e251e746e693f55e2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_choices_and_preferences_05 -> audio/generated/tr-TR/lexical/70a80ff6921a863a8d0610c5755e6c2001eb400948cfb23f24b8d2fb1179f0e9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('850133c8-3511-5065-b110-4408746098cf', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_choices_and_preferences_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '059c7dc86e2d3fca7b2e566460907bbac32148e3958c693642519d7f314b79c8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cf8e4caa-ea21-5523-8b51-9cf12d5dd360', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('850133c8-3511-5065-b110-4408746098cf', 1), '059c7dc86e2d3fca7b2e566460907bbac32148e3958c693642519d7f314b79c8',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/70a80ff6921a863a8d0610c5755e6c2001eb400948cfb23f24b8d2fb1179f0e9.mp3', 1018, '2026-09-13 17:08:24.715058', '2b610d98e5fbe3264a0cf9419f5fb21381b922327b6f850f7bb3e905ccefb13c', 'validated', '{"audio_key":"70a80ff6921a863a8d0610c5755e6c2001eb400948cfb23f24b8d2fb1179f0e9","entity_key":"lx_choices_and_preferences_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2b610d98e5fbe3264a0cf9419f5fb21381b922327b6f850f7bb3e905ccefb13c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/70a80ff6921a863a8d0610c5755e6c2001eb400948cfb23f24b8d2fb1179f0e9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_choices_and_preferences_05 -> audio/generated/tr-TR/lexical/70a80ff6921a863a8d0610c5755e6c2001eb400948cfb23f24b8d2fb1179f0e9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d75958d5-a769-5526-9637-fb11e16e0f35', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_choices_and_preferences_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '059c7dc86e2d3fca7b2e566460907bbac32148e3958c693642519d7f314b79c8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fe877329-6f41-561a-88e0-45ff8cc2c378', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d75958d5-a769-5526-9637-fb11e16e0f35', 1), '059c7dc86e2d3fca7b2e566460907bbac32148e3958c693642519d7f314b79c8',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/70a80ff6921a863a8d0610c5755e6c2001eb400948cfb23f24b8d2fb1179f0e9.mp3', 1018, '2026-09-13 17:08:24.715058', '2b610d98e5fbe3264a0cf9419f5fb21381b922327b6f850f7bb3e905ccefb13c', 'validated', '{"audio_key":"70a80ff6921a863a8d0610c5755e6c2001eb400948cfb23f24b8d2fb1179f0e9","entity_key":"wf_choices_and_preferences_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2b610d98e5fbe3264a0cf9419f5fb21381b922327b6f850f7bb3e905ccefb13c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/70a80ff6921a863a8d0610c5755e6c2001eb400948cfb23f24b8d2fb1179f0e9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_habits_and_frequency_06 -> audio/generated/tr-TR/lexical/71ae31a23866eac06e68f4b5a8db6e4439106c3d09c01638b9cf62f2c5394626.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c75aae26-3129-56e1-af30-fb9c605feffe', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_habits_and_frequency_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b3328b8d104e18a4228f502d64af9ce2d60e0c214ba33a961a54a6cfb534b8e7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('07cd9bcd-1843-53a9-a0c7-095144963783', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c75aae26-3129-56e1-af30-fb9c605feffe', 1), 'b3328b8d104e18a4228f502d64af9ce2d60e0c214ba33a961a54a6cfb534b8e7',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/71ae31a23866eac06e68f4b5a8db6e4439106c3d09c01638b9cf62f2c5394626.mp3', 1201, '2026-09-13 17:08:25.218536', 'aae1ba865cc8305c44d8cf826fb673ccf424971984cb9f929c7edad9b5d3df9a', 'validated', '{"audio_key":"71ae31a23866eac06e68f4b5a8db6e4439106c3d09c01638b9cf62f2c5394626","entity_key":"lx_habits_and_frequency_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"aae1ba865cc8305c44d8cf826fb673ccf424971984cb9f929c7edad9b5d3df9a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/71ae31a23866eac06e68f4b5a8db6e4439106c3d09c01638b9cf62f2c5394626.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_habits_and_frequency_06 -> audio/generated/tr-TR/lexical/71ae31a23866eac06e68f4b5a8db6e4439106c3d09c01638b9cf62f2c5394626.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5875e46c-b7b4-514e-b3b1-f4c0f5691dec', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_habits_and_frequency_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b3328b8d104e18a4228f502d64af9ce2d60e0c214ba33a961a54a6cfb534b8e7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8891fab3-139e-5738-83df-daf223d056fb', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5875e46c-b7b4-514e-b3b1-f4c0f5691dec', 1), 'b3328b8d104e18a4228f502d64af9ce2d60e0c214ba33a961a54a6cfb534b8e7',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/71ae31a23866eac06e68f4b5a8db6e4439106c3d09c01638b9cf62f2c5394626.mp3', 1201, '2026-09-13 17:08:25.218536', 'aae1ba865cc8305c44d8cf826fb673ccf424971984cb9f929c7edad9b5d3df9a', 'validated', '{"audio_key":"71ae31a23866eac06e68f4b5a8db6e4439106c3d09c01638b9cf62f2c5394626","entity_key":"wf_habits_and_frequency_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"aae1ba865cc8305c44d8cf826fb673ccf424971984cb9f929c7edad9b5d3df9a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/71ae31a23866eac06e68f4b5a8db6e4439106c3d09c01638b9cf62f2c5394626.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_choices_and_preferences_02 -> audio/generated/tr-TR/lexical/7319ec032957dcf0d13b9fb5912403a837ea25a356def737915995d929d51e38.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('64d56f1f-2332-5205-acd6-947fd8e8561d', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_choices_and_preferences_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1ed26f323e9686b728fcc2d368b9926a2dfe9fb9271c70f600eead9e7150c723'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b656eb00-2551-502b-b5ef-0f9ee2a895f6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('64d56f1f-2332-5205-acd6-947fd8e8561d', 1), '1ed26f323e9686b728fcc2d368b9926a2dfe9fb9271c70f600eead9e7150c723',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/7319ec032957dcf0d13b9fb5912403a837ea25a356def737915995d929d51e38.mp3', 1097, '2026-09-13 17:08:25.696771', '465b758e3e8a4f1730d7847de421a092b5ef0ee11f66cd352c6b132cd0b36c5e', 'validated', '{"audio_key":"7319ec032957dcf0d13b9fb5912403a837ea25a356def737915995d929d51e38","entity_key":"lx_choices_and_preferences_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"465b758e3e8a4f1730d7847de421a092b5ef0ee11f66cd352c6b132cd0b36c5e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/7319ec032957dcf0d13b9fb5912403a837ea25a356def737915995d929d51e38.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_choices_and_preferences_02 -> audio/generated/tr-TR/lexical/7319ec032957dcf0d13b9fb5912403a837ea25a356def737915995d929d51e38.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5f7bf85f-274d-53b1-ab57-46e77e7a8b3a', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_choices_and_preferences_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1ed26f323e9686b728fcc2d368b9926a2dfe9fb9271c70f600eead9e7150c723'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('81033024-b268-5b85-ac51-b2f80fc03213', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5f7bf85f-274d-53b1-ab57-46e77e7a8b3a', 1), '1ed26f323e9686b728fcc2d368b9926a2dfe9fb9271c70f600eead9e7150c723',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/7319ec032957dcf0d13b9fb5912403a837ea25a356def737915995d929d51e38.mp3', 1097, '2026-09-13 17:08:25.696771', '465b758e3e8a4f1730d7847de421a092b5ef0ee11f66cd352c6b132cd0b36c5e', 'validated', '{"audio_key":"7319ec032957dcf0d13b9fb5912403a837ea25a356def737915995d929d51e38","entity_key":"wf_choices_and_preferences_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"465b758e3e8a4f1730d7847de421a092b5ef0ee11f66cd352c6b132cd0b36c5e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/7319ec032957dcf0d13b9fb5912403a837ea25a356def737915995d929d51e38.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_a2_city_day_capstone_06 -> audio/generated/tr-TR/lexical/771440b223747bab9dccdfecace74db151691d977e91df14b5d4c3ef679cc5b9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8dd2a76e-5811-5482-b6b1-7e778b2b3100', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_a2_city_day_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7619a7e392e030a12800191e283e275343b02958d4f1d62f4b4dc0a21f515d9d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5c54f504-2c2b-5322-b0da-4994d44edba3', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8dd2a76e-5811-5482-b6b1-7e778b2b3100', 1), '7619a7e392e030a12800191e283e275343b02958d4f1d62f4b4dc0a21f515d9d',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/771440b223747bab9dccdfecace74db151691d977e91df14b5d4c3ef679cc5b9.mp3', 1332, '2026-09-13 17:08:26.219009', '145b30771888959e01836c9b193a6e8c50e892c98434c5890f9eed7826897adf', 'validated', '{"audio_key":"771440b223747bab9dccdfecace74db151691d977e91df14b5d4c3ef679cc5b9","entity_key":"lx_a2_city_day_capstone_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"145b30771888959e01836c9b193a6e8c50e892c98434c5890f9eed7826897adf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/771440b223747bab9dccdfecace74db151691d977e91df14b5d4c3ef679cc5b9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_a2_city_day_capstone_06 -> audio/generated/tr-TR/lexical/771440b223747bab9dccdfecace74db151691d977e91df14b5d4c3ef679cc5b9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b83abfc0-74ba-58b5-94fa-d030004e69c3', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_a2_city_day_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7619a7e392e030a12800191e283e275343b02958d4f1d62f4b4dc0a21f515d9d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('12a73c24-f77e-50a9-bd1c-98fc310f1ce3', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b83abfc0-74ba-58b5-94fa-d030004e69c3', 1), '7619a7e392e030a12800191e283e275343b02958d4f1d62f4b4dc0a21f515d9d',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/771440b223747bab9dccdfecace74db151691d977e91df14b5d4c3ef679cc5b9.mp3', 1332, '2026-09-13 17:08:26.219009', '145b30771888959e01836c9b193a6e8c50e892c98434c5890f9eed7826897adf', 'validated', '{"audio_key":"771440b223747bab9dccdfecace74db151691d977e91df14b5d4c3ef679cc5b9","entity_key":"wf_a2_city_day_capstone_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"145b30771888959e01836c9b193a6e8c50e892c98434c5890f9eed7826897adf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/771440b223747bab9dccdfecace74db151691d977e91df14b5d4c3ef679cc5b9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_health_and_advice_02 -> audio/generated/tr-TR/lexical/797139595480dc78dc93acd997167772462c364d2b2ae5004b98767bee9534e6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('45e11dbc-8b56-5035-9b21-edfaaa4f9ee1', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_health_and_advice_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ea78ce6bb4a56d1fcc3df9b479502cead85a69ca75673cad5cf466f8da7976ca'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f342e21a-dfc4-5cbc-89c7-03f9d281f9a5', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('45e11dbc-8b56-5035-9b21-edfaaa4f9ee1', 1), 'ea78ce6bb4a56d1fcc3df9b479502cead85a69ca75673cad5cf466f8da7976ca',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/797139595480dc78dc93acd997167772462c364d2b2ae5004b98767bee9534e6.mp3', 1018, '2026-09-13 17:08:26.670606', 'cceda9f6e0a59cbd933359750c82578f4a400f8cfd880e09fb029acdb7129f70', 'validated', '{"audio_key":"797139595480dc78dc93acd997167772462c364d2b2ae5004b98767bee9534e6","entity_key":"lx_health_and_advice_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cceda9f6e0a59cbd933359750c82578f4a400f8cfd880e09fb029acdb7129f70","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/797139595480dc78dc93acd997167772462c364d2b2ae5004b98767bee9534e6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_health_and_advice_02 -> audio/generated/tr-TR/lexical/797139595480dc78dc93acd997167772462c364d2b2ae5004b98767bee9534e6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7bfe2e8f-e5e1-5db4-907d-cbee5e2a9d6a', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_health_and_advice_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ea78ce6bb4a56d1fcc3df9b479502cead85a69ca75673cad5cf466f8da7976ca'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ddc135c3-daeb-5067-bb24-357c8ccfcef6', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7bfe2e8f-e5e1-5db4-907d-cbee5e2a9d6a', 1), 'ea78ce6bb4a56d1fcc3df9b479502cead85a69ca75673cad5cf466f8da7976ca',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/797139595480dc78dc93acd997167772462c364d2b2ae5004b98767bee9534e6.mp3', 1018, '2026-09-13 17:08:26.670606', 'cceda9f6e0a59cbd933359750c82578f4a400f8cfd880e09fb029acdb7129f70', 'validated', '{"audio_key":"797139595480dc78dc93acd997167772462c364d2b2ae5004b98767bee9534e6","entity_key":"wf_health_and_advice_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cceda9f6e0a59cbd933359750c82578f4a400f8cfd880e09fb029acdb7129f70","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/797139595480dc78dc93acd997167772462c364d2b2ae5004b98767bee9534e6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_health_and_advice_05 -> audio/generated/tr-TR/lexical/7cd125e06bd147930089126d55ac3f49b1bb7dd57eeac4ef091ac43fc4b4277a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f18444a2-dd89-5385-9733-ff233a82d275', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_health_and_advice_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f62775648a613bc96ee222caadee72176b5b21b74c799229f24835116de4012f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aeaf1ee7-f0cf-5870-bf6c-31cc8e3f55cc', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f18444a2-dd89-5385-9733-ff233a82d275', 1), 'f62775648a613bc96ee222caadee72176b5b21b74c799229f24835116de4012f',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/7cd125e06bd147930089126d55ac3f49b1bb7dd57eeac4ef091ac43fc4b4277a.mp3', 1149, '2026-09-13 17:08:27.209720', 'c914c9b810f62cefd9d574222bcd930cb45ddc64a699210470953bc86c21cb19', 'validated', '{"audio_key":"7cd125e06bd147930089126d55ac3f49b1bb7dd57eeac4ef091ac43fc4b4277a","entity_key":"lx_health_and_advice_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c914c9b810f62cefd9d574222bcd930cb45ddc64a699210470953bc86c21cb19","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/7cd125e06bd147930089126d55ac3f49b1bb7dd57eeac4ef091ac43fc4b4277a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_health_and_advice_05 -> audio/generated/tr-TR/lexical/7cd125e06bd147930089126d55ac3f49b1bb7dd57eeac4ef091ac43fc4b4277a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d315b8ca-3aa2-5d43-a3e9-c2ce4e8c00b3', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_health_and_advice_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f62775648a613bc96ee222caadee72176b5b21b74c799229f24835116de4012f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ee2db919-8040-5a17-9ea7-88b902a4b721', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d315b8ca-3aa2-5d43-a3e9-c2ce4e8c00b3', 1), 'f62775648a613bc96ee222caadee72176b5b21b74c799229f24835116de4012f',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/7cd125e06bd147930089126d55ac3f49b1bb7dd57eeac4ef091ac43fc4b4277a.mp3', 1149, '2026-09-13 17:08:27.209720', 'c914c9b810f62cefd9d574222bcd930cb45ddc64a699210470953bc86c21cb19', 'validated', '{"audio_key":"7cd125e06bd147930089126d55ac3f49b1bb7dd57eeac4ef091ac43fc4b4277a","entity_key":"wf_health_and_advice_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c914c9b810f62cefd9d574222bcd930cb45ddc64a699210470953bc86c21cb19","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/7cd125e06bd147930089126d55ac3f49b1bb7dd57eeac4ef091ac43fc4b4277a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_past_weekend_06 -> audio/generated/tr-TR/lexical/82758c77a77a8aea653ed273f0ccdf30db10198d1df746f69cc9495bb68adfab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('503ada81-ffdb-5423-bdd7-da23520a914d', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_past_weekend_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8c10715386ffd0dee2ad63e0635abcecaf01c6067de01ec7452ec6e5c5f51e3c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6cbfb570-c0ec-5aa0-a4ab-35d9ab510dfe', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('503ada81-ffdb-5423-bdd7-da23520a914d', 1), '8c10715386ffd0dee2ad63e0635abcecaf01c6067de01ec7452ec6e5c5f51e3c',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/82758c77a77a8aea653ed273f0ccdf30db10198d1df746f69cc9495bb68adfab.mp3', 1097, '2026-09-13 15:55:23.798279', 'c5034baf129b1884d13446e7f685062cf7ddc3f50aa358f167eaca889810f60e', 'validated', '{"audio_key":"82758c77a77a8aea653ed273f0ccdf30db10198d1df746f69cc9495bb68adfab","entity_key":"lx_past_weekend_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c5034baf129b1884d13446e7f685062cf7ddc3f50aa358f167eaca889810f60e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/82758c77a77a8aea653ed273f0ccdf30db10198d1df746f69cc9495bb68adfab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_past_weekend_06 -> audio/generated/tr-TR/lexical/82758c77a77a8aea653ed273f0ccdf30db10198d1df746f69cc9495bb68adfab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c96ae11a-3a55-5966-a3fc-c7c9d31f0ffc', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_past_weekend_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8c10715386ffd0dee2ad63e0635abcecaf01c6067de01ec7452ec6e5c5f51e3c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c983885f-92db-56ad-a1df-f68f2dfccec3', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c96ae11a-3a55-5966-a3fc-c7c9d31f0ffc', 1), '8c10715386ffd0dee2ad63e0635abcecaf01c6067de01ec7452ec6e5c5f51e3c',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/82758c77a77a8aea653ed273f0ccdf30db10198d1df746f69cc9495bb68adfab.mp3', 1097, '2026-09-13 15:55:23.798279', 'c5034baf129b1884d13446e7f685062cf7ddc3f50aa358f167eaca889810f60e', 'validated', '{"audio_key":"82758c77a77a8aea653ed273f0ccdf30db10198d1df746f69cc9495bb68adfab","entity_key":"wf_past_weekend_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c5034baf129b1884d13446e7f685062cf7ddc3f50aa358f167eaca889810f60e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/82758c77a77a8aea653ed273f0ccdf30db10198d1df746f69cc9495bb68adfab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_habits_and_frequency_02 -> audio/generated/tr-TR/lexical/83ddc6a76eec842bcd9be7f7dace7b40990c299d770eeaf338eab09dd19b68ab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ac83007c-57c3-590b-b855-db8f8e1cf815', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_habits_and_frequency_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0d2c1377bfe8a39a09fd4b0db9a6f9652c301860912ca8342348f456597020f6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('68e7d2c3-0cb8-5761-afc8-6c71558a063a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ac83007c-57c3-590b-b855-db8f8e1cf815', 1), '0d2c1377bfe8a39a09fd4b0db9a6f9652c301860912ca8342348f456597020f6',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/83ddc6a76eec842bcd9be7f7dace7b40990c299d770eeaf338eab09dd19b68ab.mp3', 1149, '2026-09-13 17:08:27.648619', '987370a19bef175b27d97d180c2abb404a5dec34151ee25be6098488a3668937', 'validated', '{"audio_key":"83ddc6a76eec842bcd9be7f7dace7b40990c299d770eeaf338eab09dd19b68ab","entity_key":"lx_habits_and_frequency_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"987370a19bef175b27d97d180c2abb404a5dec34151ee25be6098488a3668937","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/83ddc6a76eec842bcd9be7f7dace7b40990c299d770eeaf338eab09dd19b68ab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_habits_and_frequency_02 -> audio/generated/tr-TR/lexical/83ddc6a76eec842bcd9be7f7dace7b40990c299d770eeaf338eab09dd19b68ab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0fc70809-8f7c-5ccb-be15-b2d1a914927c', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_habits_and_frequency_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0d2c1377bfe8a39a09fd4b0db9a6f9652c301860912ca8342348f456597020f6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c29b0085-13f7-54ff-9a43-4ea7ae2d8f8b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0fc70809-8f7c-5ccb-be15-b2d1a914927c', 1), '0d2c1377bfe8a39a09fd4b0db9a6f9652c301860912ca8342348f456597020f6',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/83ddc6a76eec842bcd9be7f7dace7b40990c299d770eeaf338eab09dd19b68ab.mp3', 1149, '2026-09-13 17:08:27.648619', '987370a19bef175b27d97d180c2abb404a5dec34151ee25be6098488a3668937', 'validated', '{"audio_key":"83ddc6a76eec842bcd9be7f7dace7b40990c299d770eeaf338eab09dd19b68ab","entity_key":"wf_habits_and_frequency_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"987370a19bef175b27d97d180c2abb404a5dec34151ee25be6098488a3668937","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/83ddc6a76eec842bcd9be7f7dace7b40990c299d770eeaf338eab09dd19b68ab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_polite_requests_02 -> audio/generated/tr-TR/lexical/84f208e22e25ae8873424207ce30d25393021d1c75d974116ed5175e34b76cfc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0a9a5057-1802-5a52-bcc1-c439b41c5c60', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_polite_requests_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b5054701dec15cb10eea88ff648cbf1da14f62395da73fb153498fe1928cf6c4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('94b06fb2-d113-54eb-b94c-51831667835c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0a9a5057-1802-5a52-bcc1-c439b41c5c60', 1), 'b5054701dec15cb10eea88ff648cbf1da14f62395da73fb153498fe1928cf6c4',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/84f208e22e25ae8873424207ce30d25393021d1c75d974116ed5175e34b76cfc.mp3', 1097, '2026-09-13 17:08:28.177504', '1886a4dc8dc2f767ec61f94b6c79bc8c4dc2d2f3e75549f159813b392b9fe0ba', 'validated', '{"audio_key":"84f208e22e25ae8873424207ce30d25393021d1c75d974116ed5175e34b76cfc","entity_key":"lx_polite_requests_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1886a4dc8dc2f767ec61f94b6c79bc8c4dc2d2f3e75549f159813b392b9fe0ba","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/84f208e22e25ae8873424207ce30d25393021d1c75d974116ed5175e34b76cfc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_polite_requests_02 -> audio/generated/tr-TR/lexical/84f208e22e25ae8873424207ce30d25393021d1c75d974116ed5175e34b76cfc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('bc35958c-269a-5d16-ad64-0d5ff2d41c66', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_polite_requests_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b5054701dec15cb10eea88ff648cbf1da14f62395da73fb153498fe1928cf6c4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('30aea6b0-0991-5487-a565-796c4a10b5af', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('bc35958c-269a-5d16-ad64-0d5ff2d41c66', 1), 'b5054701dec15cb10eea88ff648cbf1da14f62395da73fb153498fe1928cf6c4',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/84f208e22e25ae8873424207ce30d25393021d1c75d974116ed5175e34b76cfc.mp3', 1097, '2026-09-13 17:08:28.177504', '1886a4dc8dc2f767ec61f94b6c79bc8c4dc2d2f3e75549f159813b392b9fe0ba', 'validated', '{"audio_key":"84f208e22e25ae8873424207ce30d25393021d1c75d974116ed5175e34b76cfc","entity_key":"wf_polite_requests_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1886a4dc8dc2f767ec61f94b6c79bc8c4dc2d2f3e75549f159813b392b9fe0ba","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/84f208e22e25ae8873424207ce30d25393021d1c75d974116ed5175e34b76cfc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_a2_city_day_capstone_03 -> audio/generated/tr-TR/lexical/86ff72462480e2ff20c0d74166ee06dcc5b87609cb45ca60271ceaed61058eff.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b074fc1e-e6dc-5173-8ab6-f5f314978955', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_a2_city_day_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9a7c94a5811c9808db21cf524b40b0b6bd0d134c2aba8714b7a48e4940a87c00'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7a25ddf5-cea2-54ed-8afc-5978ebaf6cf8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b074fc1e-e6dc-5173-8ab6-f5f314978955', 1), '9a7c94a5811c9808db21cf524b40b0b6bd0d134c2aba8714b7a48e4940a87c00',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/86ff72462480e2ff20c0d74166ee06dcc5b87609cb45ca60271ceaed61058eff.mp3', 1071, '2026-09-13 17:08:28.636052', '3317bb3062bf6429cd538889f806f5d86fbc0a84365648e4c09e0ca160934624', 'validated', '{"audio_key":"86ff72462480e2ff20c0d74166ee06dcc5b87609cb45ca60271ceaed61058eff","entity_key":"lx_a2_city_day_capstone_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3317bb3062bf6429cd538889f806f5d86fbc0a84365648e4c09e0ca160934624","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/86ff72462480e2ff20c0d74166ee06dcc5b87609cb45ca60271ceaed61058eff.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_a2_city_day_capstone_03 -> audio/generated/tr-TR/lexical/86ff72462480e2ff20c0d74166ee06dcc5b87609cb45ca60271ceaed61058eff.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('865bea3b-c9d3-5ce6-9d8d-dcb70ebc9330', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_a2_city_day_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9a7c94a5811c9808db21cf524b40b0b6bd0d134c2aba8714b7a48e4940a87c00'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('271ca305-67c4-55ea-b7cb-963b807ac363', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('865bea3b-c9d3-5ce6-9d8d-dcb70ebc9330', 1), '9a7c94a5811c9808db21cf524b40b0b6bd0d134c2aba8714b7a48e4940a87c00',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/86ff72462480e2ff20c0d74166ee06dcc5b87609cb45ca60271ceaed61058eff.mp3', 1071, '2026-09-13 17:08:28.636052', '3317bb3062bf6429cd538889f806f5d86fbc0a84365648e4c09e0ca160934624', 'validated', '{"audio_key":"86ff72462480e2ff20c0d74166ee06dcc5b87609cb45ca60271ceaed61058eff","entity_key":"wf_a2_city_day_capstone_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3317bb3062bf6429cd538889f806f5d86fbc0a84365648e4c09e0ca160934624","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/86ff72462480e2ff20c0d74166ee06dcc5b87609cb45ca60271ceaed61058eff.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_travel_and_hotel_06 -> audio/generated/tr-TR/lexical/887029d1f38526ab51e2ef7337277925bc336ace678aa7fc6805393190658883.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d926d130-29b4-5eaa-b33a-6a90e2ffdd35', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_travel_and_hotel_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4904879d06869b26fb2942b0b05629f73164f2d273aaa69d8d504c0c5f4121db'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ad13bbb8-e1e8-5df9-a5fe-a2d6f191414c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d926d130-29b4-5eaa-b33a-6a90e2ffdd35', 1), '4904879d06869b26fb2942b0b05629f73164f2d273aaa69d8d504c0c5f4121db',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/887029d1f38526ab51e2ef7337277925bc336ace678aa7fc6805393190658883.mp3', 1071, '2026-09-13 17:08:29.138812', 'fe3f61dddf740c36fed95da73898858a7c52a4d0aa4677dbb564d62eb8ead226', 'validated', '{"audio_key":"887029d1f38526ab51e2ef7337277925bc336ace678aa7fc6805393190658883","entity_key":"lx_travel_and_hotel_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fe3f61dddf740c36fed95da73898858a7c52a4d0aa4677dbb564d62eb8ead226","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/887029d1f38526ab51e2ef7337277925bc336ace678aa7fc6805393190658883.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_travel_and_hotel_06 -> audio/generated/tr-TR/lexical/887029d1f38526ab51e2ef7337277925bc336ace678aa7fc6805393190658883.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5a7ada1c-685f-5025-bf9c-d5793b2f79b9', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_travel_and_hotel_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4904879d06869b26fb2942b0b05629f73164f2d273aaa69d8d504c0c5f4121db'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6e3098a9-0528-5c3c-863b-f088654fe089', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5a7ada1c-685f-5025-bf9c-d5793b2f79b9', 1), '4904879d06869b26fb2942b0b05629f73164f2d273aaa69d8d504c0c5f4121db',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/887029d1f38526ab51e2ef7337277925bc336ace678aa7fc6805393190658883.mp3', 1071, '2026-09-13 17:08:29.138812', 'fe3f61dddf740c36fed95da73898858a7c52a4d0aa4677dbb564d62eb8ead226', 'validated', '{"audio_key":"887029d1f38526ab51e2ef7337277925bc336ace678aa7fc6805393190658883","entity_key":"wf_travel_and_hotel_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fe3f61dddf740c36fed95da73898858a7c52a4d0aa4677dbb564d62eb8ead226","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/887029d1f38526ab51e2ef7337277925bc336ace678aa7fc6805393190658883.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_comparisons_04 -> audio/generated/tr-TR/lexical/88b74f8d0f29085fa17433c23eb09e72699a218f3c2a8f4f5f1de1d40b37d021.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('651ab50a-4e2e-5934-99e0-45504b8fc57b', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_comparisons_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5e504b4fd790a47478fe5c9b9691ebc848c6a8be8127a9778a869ce4de907cd3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('407b64df-2c7d-549b-8ac1-4f4766e03f8c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('651ab50a-4e2e-5934-99e0-45504b8fc57b', 1), '5e504b4fd790a47478fe5c9b9691ebc848c6a8be8127a9778a869ce4de907cd3',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/88b74f8d0f29085fa17433c23eb09e72699a218f3c2a8f4f5f1de1d40b37d021.mp3', 1097, '2026-09-13 17:08:29.631006', '5ea072269ffbf90235cad952e94eaf933fbc0a8be276f836f2c5763d4dd6b140', 'validated', '{"audio_key":"88b74f8d0f29085fa17433c23eb09e72699a218f3c2a8f4f5f1de1d40b37d021","entity_key":"lx_comparisons_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5ea072269ffbf90235cad952e94eaf933fbc0a8be276f836f2c5763d4dd6b140","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/88b74f8d0f29085fa17433c23eb09e72699a218f3c2a8f4f5f1de1d40b37d021.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_comparisons_04 -> audio/generated/tr-TR/lexical/88b74f8d0f29085fa17433c23eb09e72699a218f3c2a8f4f5f1de1d40b37d021.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b5318567-ed7a-5128-a1fe-72d0b0b35f41', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_comparisons_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5e504b4fd790a47478fe5c9b9691ebc848c6a8be8127a9778a869ce4de907cd3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fe754b2d-a033-51c7-a75b-871818a31dd9', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b5318567-ed7a-5128-a1fe-72d0b0b35f41', 1), '5e504b4fd790a47478fe5c9b9691ebc848c6a8be8127a9778a869ce4de907cd3',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/88b74f8d0f29085fa17433c23eb09e72699a218f3c2a8f4f5f1de1d40b37d021.mp3', 1097, '2026-09-13 17:08:29.631006', '5ea072269ffbf90235cad952e94eaf933fbc0a8be276f836f2c5763d4dd6b140', 'validated', '{"audio_key":"88b74f8d0f29085fa17433c23eb09e72699a218f3c2a8f4f5f1de1d40b37d021","entity_key":"wf_comparisons_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5ea072269ffbf90235cad952e94eaf933fbc0a8be276f836f2c5763d4dd6b140","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/88b74f8d0f29085fa17433c23eb09e72699a218f3c2a8f4f5f1de1d40b37d021.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_a2_city_day_capstone_04 -> audio/generated/tr-TR/lexical/8b07a37210c9dbe3d323a27e70528fdcf6c347e69eb79d43d947526e680bd41e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5ee270f6-4256-5af5-8bea-8b89a3235841', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_a2_city_day_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '888350113b4928694b6e4b66156da0cd88dd67c1528398122e24685c650df120'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cd4c6d2c-e78e-55a7-8bee-5d3e28fba332', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5ee270f6-4256-5af5-8bea-8b89a3235841', 1), '888350113b4928694b6e4b66156da0cd88dd67c1528398122e24685c650df120',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/8b07a37210c9dbe3d323a27e70528fdcf6c347e69eb79d43d947526e680bd41e.mp3', 1071, '2026-09-13 17:08:30.146121', 'b3694d8c501ce55cb20e4da77ee3edb9b67b7e175461f364b761b5cc976cf3e5', 'validated', '{"audio_key":"8b07a37210c9dbe3d323a27e70528fdcf6c347e69eb79d43d947526e680bd41e","entity_key":"lx_a2_city_day_capstone_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b3694d8c501ce55cb20e4da77ee3edb9b67b7e175461f364b761b5cc976cf3e5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/8b07a37210c9dbe3d323a27e70528fdcf6c347e69eb79d43d947526e680bd41e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_a2_city_day_capstone_04 -> audio/generated/tr-TR/lexical/8b07a37210c9dbe3d323a27e70528fdcf6c347e69eb79d43d947526e680bd41e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c8f59159-49cd-581c-a5bb-069b9a7561a4', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_a2_city_day_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '888350113b4928694b6e4b66156da0cd88dd67c1528398122e24685c650df120'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2bb94458-c974-5578-86ae-bb324d6a4754', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c8f59159-49cd-581c-a5bb-069b9a7561a4', 1), '888350113b4928694b6e4b66156da0cd88dd67c1528398122e24685c650df120',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/8b07a37210c9dbe3d323a27e70528fdcf6c347e69eb79d43d947526e680bd41e.mp3', 1071, '2026-09-13 17:08:30.146121', 'b3694d8c501ce55cb20e4da77ee3edb9b67b7e175461f364b761b5cc976cf3e5', 'validated', '{"audio_key":"8b07a37210c9dbe3d323a27e70528fdcf6c347e69eb79d43d947526e680bd41e","entity_key":"wf_a2_city_day_capstone_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b3694d8c501ce55cb20e4da77ee3edb9b67b7e175461f364b761b5cc976cf3e5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/8b07a37210c9dbe3d323a27e70528fdcf6c347e69eb79d43d947526e680bd41e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_polite_requests_06 -> audio/generated/tr-TR/lexical/8d897382e7b6158d2fc9ce4a263fce21168b70caec69e4b41534d2c7a0ecdc89.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b5e9c11e-fb92-57e3-bf47-06d221511386', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_polite_requests_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '19093b4d3eeeaaab1386f088cf4075cdf0b27886179ae4800b01e6f4ee2277e6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('214cc5d6-5a03-5d8e-bc87-76d8372bbb15', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b5e9c11e-fb92-57e3-bf47-06d221511386', 1), '19093b4d3eeeaaab1386f088cf4075cdf0b27886179ae4800b01e6f4ee2277e6',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/8d897382e7b6158d2fc9ce4a263fce21168b70caec69e4b41534d2c7a0ecdc89.mp3', 1071, '2026-09-13 15:17:28.896862', '34ccbf5ae36ef8e44a350b6c8742b05260b6913d09de4cb4a728fc32a5328759', 'validated', '{"audio_key":"8d897382e7b6158d2fc9ce4a263fce21168b70caec69e4b41534d2c7a0ecdc89","entity_key":"lx_polite_requests_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"34ccbf5ae36ef8e44a350b6c8742b05260b6913d09de4cb4a728fc32a5328759","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/8d897382e7b6158d2fc9ce4a263fce21168b70caec69e4b41534d2c7a0ecdc89.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_polite_requests_06 -> audio/generated/tr-TR/lexical/8d897382e7b6158d2fc9ce4a263fce21168b70caec69e4b41534d2c7a0ecdc89.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c744b9a4-93ff-5624-b1c2-bb23c72825e6', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_polite_requests_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '19093b4d3eeeaaab1386f088cf4075cdf0b27886179ae4800b01e6f4ee2277e6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8634119f-3081-5a6a-b4aa-0cd273c02627', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c744b9a4-93ff-5624-b1c2-bb23c72825e6', 1), '19093b4d3eeeaaab1386f088cf4075cdf0b27886179ae4800b01e6f4ee2277e6',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/8d897382e7b6158d2fc9ce4a263fce21168b70caec69e4b41534d2c7a0ecdc89.mp3', 1071, '2026-09-13 15:17:28.896862', '34ccbf5ae36ef8e44a350b6c8742b05260b6913d09de4cb4a728fc32a5328759', 'validated', '{"audio_key":"8d897382e7b6158d2fc9ce4a263fce21168b70caec69e4b41534d2c7a0ecdc89","entity_key":"wf_polite_requests_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"34ccbf5ae36ef8e44a350b6c8742b05260b6913d09de4cb4a728fc32a5328759","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/8d897382e7b6158d2fc9ce4a263fce21168b70caec69e4b41534d2c7a0ecdc89.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_health_and_advice_06 -> audio/generated/tr-TR/lexical/929958807bbf430312af04111bf05fc6d61cbaa10ff88b5665bc968730412377.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('584bd1ce-4758-5563-9184-18159005ae63', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_health_and_advice_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ee73e0bb7a5c6ea7e8384413595af56621555e2e622a5674fdc59e2fffc10b28'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('79c02e2b-9f6b-52ab-8937-4ac0d40dd0b8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('584bd1ce-4758-5563-9184-18159005ae63', 1), 'ee73e0bb7a5c6ea7e8384413595af56621555e2e622a5674fdc59e2fffc10b28',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/929958807bbf430312af04111bf05fc6d61cbaa10ff88b5665bc968730412377.mp3', 1018, '2026-09-13 17:08:30.591541', '77e7707c46914e1a12614ee916701f8b0ebdbe7caf5efc7eacba27d2ef357fb4', 'validated', '{"audio_key":"929958807bbf430312af04111bf05fc6d61cbaa10ff88b5665bc968730412377","entity_key":"lx_health_and_advice_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"77e7707c46914e1a12614ee916701f8b0ebdbe7caf5efc7eacba27d2ef357fb4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/929958807bbf430312af04111bf05fc6d61cbaa10ff88b5665bc968730412377.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_health_and_advice_06 -> audio/generated/tr-TR/lexical/929958807bbf430312af04111bf05fc6d61cbaa10ff88b5665bc968730412377.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1d0a2804-af55-5def-b320-e7c2cc9965a7', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_health_and_advice_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ee73e0bb7a5c6ea7e8384413595af56621555e2e622a5674fdc59e2fffc10b28'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6e42c7dc-87f4-5fa6-9221-b612870b6fe8', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1d0a2804-af55-5def-b320-e7c2cc9965a7', 1), 'ee73e0bb7a5c6ea7e8384413595af56621555e2e622a5674fdc59e2fffc10b28',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/929958807bbf430312af04111bf05fc6d61cbaa10ff88b5665bc968730412377.mp3', 1018, '2026-09-13 17:08:30.591541', '77e7707c46914e1a12614ee916701f8b0ebdbe7caf5efc7eacba27d2ef357fb4', 'validated', '{"audio_key":"929958807bbf430312af04111bf05fc6d61cbaa10ff88b5665bc968730412377","entity_key":"wf_health_and_advice_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"77e7707c46914e1a12614ee916701f8b0ebdbe7caf5efc7eacba27d2ef357fb4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/929958807bbf430312af04111bf05fc6d61cbaa10ff88b5665bc968730412377.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_polite_requests_04 -> audio/generated/tr-TR/lexical/951576297ce924ef589ad7393d20a9f836f700c891ed6e400df084200da2dc1e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b1d0f2ac-b224-5cc9-aaad-e1e9e8fd49c0', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_polite_requests_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '43e298c7c288e00f08f3e34ed0e59abe8a1ef7fd2ec9d646f73fa62983dd7f73'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('66ee0eac-0c1f-5d09-80ef-5c452284a558', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b1d0f2ac-b224-5cc9-aaad-e1e9e8fd49c0', 1), '43e298c7c288e00f08f3e34ed0e59abe8a1ef7fd2ec9d646f73fa62983dd7f73',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/951576297ce924ef589ad7393d20a9f836f700c891ed6e400df084200da2dc1e.mp3', 1071, '2026-09-13 17:08:31.110731', 'f9f678d02ba3222b40caba4e83694f9bda85932d593a00967a490b03f33063a5', 'validated', '{"audio_key":"951576297ce924ef589ad7393d20a9f836f700c891ed6e400df084200da2dc1e","entity_key":"lx_polite_requests_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f9f678d02ba3222b40caba4e83694f9bda85932d593a00967a490b03f33063a5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/951576297ce924ef589ad7393d20a9f836f700c891ed6e400df084200da2dc1e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_polite_requests_04 -> audio/generated/tr-TR/lexical/951576297ce924ef589ad7393d20a9f836f700c891ed6e400df084200da2dc1e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b818205c-896a-54d3-b69a-2a3250c49366', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_polite_requests_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '43e298c7c288e00f08f3e34ed0e59abe8a1ef7fd2ec9d646f73fa62983dd7f73'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2cd6fa65-462d-539c-b80d-68d8cc9f0b00', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b818205c-896a-54d3-b69a-2a3250c49366', 1), '43e298c7c288e00f08f3e34ed0e59abe8a1ef7fd2ec9d646f73fa62983dd7f73',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/951576297ce924ef589ad7393d20a9f836f700c891ed6e400df084200da2dc1e.mp3', 1071, '2026-09-13 17:08:31.110731', 'f9f678d02ba3222b40caba4e83694f9bda85932d593a00967a490b03f33063a5', 'validated', '{"audio_key":"951576297ce924ef589ad7393d20a9f836f700c891ed6e400df084200da2dc1e","entity_key":"wf_polite_requests_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f9f678d02ba3222b40caba4e83694f9bda85932d593a00967a490b03f33063a5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/951576297ce924ef589ad7393d20a9f836f700c891ed6e400df084200da2dc1e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_comparisons_01 -> audio/generated/tr-TR/lexical/9da76a2d2d29e48baffb406d7c8798cc657d832293000af1c65e0b5668f4f1c2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c761527e-87fc-5653-b5b3-22b5fc7a6a55', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_comparisons_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '784d2fbb38b9752cadc4f2f5386be760c7e9fbb1c7215ec6a72aab6c1df4d61f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7cd2affa-1ce0-57b1-8a6c-2e6548dbe82e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c761527e-87fc-5653-b5b3-22b5fc7a6a55', 1), '784d2fbb38b9752cadc4f2f5386be760c7e9fbb1c7215ec6a72aab6c1df4d61f',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/9da76a2d2d29e48baffb406d7c8798cc657d832293000af1c65e0b5668f4f1c2.mp3', 1071, '2026-09-13 17:08:31.571322', '881252fdd1e213887fe61f94c4c40a5e78fa425a22560e5b91cf17c38b7ee169', 'validated', '{"audio_key":"9da76a2d2d29e48baffb406d7c8798cc657d832293000af1c65e0b5668f4f1c2","entity_key":"lx_comparisons_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"881252fdd1e213887fe61f94c4c40a5e78fa425a22560e5b91cf17c38b7ee169","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/9da76a2d2d29e48baffb406d7c8798cc657d832293000af1c65e0b5668f4f1c2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_comparisons_01 -> audio/generated/tr-TR/lexical/9da76a2d2d29e48baffb406d7c8798cc657d832293000af1c65e0b5668f4f1c2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('80eae1af-73e4-591e-b98a-634f505fd4d6', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_comparisons_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '784d2fbb38b9752cadc4f2f5386be760c7e9fbb1c7215ec6a72aab6c1df4d61f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bb0d8efe-ae66-5b46-975f-8afb3b1b6d91', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('80eae1af-73e4-591e-b98a-634f505fd4d6', 1), '784d2fbb38b9752cadc4f2f5386be760c7e9fbb1c7215ec6a72aab6c1df4d61f',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/9da76a2d2d29e48baffb406d7c8798cc657d832293000af1c65e0b5668f4f1c2.mp3', 1071, '2026-09-13 17:08:31.571322', '881252fdd1e213887fe61f94c4c40a5e78fa425a22560e5b91cf17c38b7ee169', 'validated', '{"audio_key":"9da76a2d2d29e48baffb406d7c8798cc657d832293000af1c65e0b5668f4f1c2","entity_key":"wf_comparisons_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"881252fdd1e213887fe61f94c4c40a5e78fa425a22560e5b91cf17c38b7ee169","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/9da76a2d2d29e48baffb406d7c8798cc657d832293000af1c65e0b5668f4f1c2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_polite_requests_05 -> audio/generated/tr-TR/lexical/a49354354c8658501a556e25649261306e41528971d6f47a20ca8975ed1e1e81.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0b0456cf-03e5-5b92-beae-2cd23e4e952f', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_polite_requests_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bedfa621a3de48a354a0f044209cca6319a440282fe960e2dba5bf67e5290ad7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9d516d94-1df9-58bc-9dac-b7fdf317cde3', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0b0456cf-03e5-5b92-beae-2cd23e4e952f', 1), 'bedfa621a3de48a354a0f044209cca6319a440282fe960e2dba5bf67e5290ad7',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/a49354354c8658501a556e25649261306e41528971d6f47a20ca8975ed1e1e81.mp3', 1097, '2026-09-13 17:08:32.101530', '383575b5d5498e6b3933075f98917b3f7b15a35186cd5422b4a89ec6320806b1', 'validated', '{"audio_key":"a49354354c8658501a556e25649261306e41528971d6f47a20ca8975ed1e1e81","entity_key":"lx_polite_requests_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"383575b5d5498e6b3933075f98917b3f7b15a35186cd5422b4a89ec6320806b1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/a49354354c8658501a556e25649261306e41528971d6f47a20ca8975ed1e1e81.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_polite_requests_05 -> audio/generated/tr-TR/lexical/a49354354c8658501a556e25649261306e41528971d6f47a20ca8975ed1e1e81.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2793fabd-6ecb-5cfb-b596-29e424ddb9fc', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_polite_requests_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bedfa621a3de48a354a0f044209cca6319a440282fe960e2dba5bf67e5290ad7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4f29dbd0-50cb-593c-a312-9b3228dbda2e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2793fabd-6ecb-5cfb-b596-29e424ddb9fc', 1), 'bedfa621a3de48a354a0f044209cca6319a440282fe960e2dba5bf67e5290ad7',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/a49354354c8658501a556e25649261306e41528971d6f47a20ca8975ed1e1e81.mp3', 1097, '2026-09-13 17:08:32.101530', '383575b5d5498e6b3933075f98917b3f7b15a35186cd5422b4a89ec6320806b1', 'validated', '{"audio_key":"a49354354c8658501a556e25649261306e41528971d6f47a20ca8975ed1e1e81","entity_key":"wf_polite_requests_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"383575b5d5498e6b3933075f98917b3f7b15a35186cd5422b4a89ec6320806b1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/a49354354c8658501a556e25649261306e41528971d6f47a20ca8975ed1e1e81.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_comparisons_03 -> audio/generated/tr-TR/lexical/a7460c35e68c47535a9c076ec1d4d99d9d9354e96bbeb19b3a2082f5fb0bbb54.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2d35e9dc-171c-548a-8b70-03f8ebda0387', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_comparisons_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bf7d53f1768c33caa217e80d6b5f193961ca882ac98997283cdd2c09acb940ad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b4899e80-a133-5b6e-b624-c44809e8f1e9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2d35e9dc-171c-548a-8b70-03f8ebda0387', 1), 'bf7d53f1768c33caa217e80d6b5f193961ca882ac98997283cdd2c09acb940ad',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/a7460c35e68c47535a9c076ec1d4d99d9d9354e96bbeb19b3a2082f5fb0bbb54.mp3', 1149, '2026-09-13 15:55:28.021539', '97142ab3798d1ff3f5ff60b26f26bc68b18072f1bea90548ac715190597458dc', 'validated', '{"audio_key":"a7460c35e68c47535a9c076ec1d4d99d9d9354e96bbeb19b3a2082f5fb0bbb54","entity_key":"lx_comparisons_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"97142ab3798d1ff3f5ff60b26f26bc68b18072f1bea90548ac715190597458dc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/a7460c35e68c47535a9c076ec1d4d99d9d9354e96bbeb19b3a2082f5fb0bbb54.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_comparisons_03 -> audio/generated/tr-TR/lexical/a7460c35e68c47535a9c076ec1d4d99d9d9354e96bbeb19b3a2082f5fb0bbb54.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b01105aa-215c-567a-8597-7e91e5fb262b', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_comparisons_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bf7d53f1768c33caa217e80d6b5f193961ca882ac98997283cdd2c09acb940ad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('26213501-6f2b-536d-af16-f75b5977881e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b01105aa-215c-567a-8597-7e91e5fb262b', 1), 'bf7d53f1768c33caa217e80d6b5f193961ca882ac98997283cdd2c09acb940ad',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/a7460c35e68c47535a9c076ec1d4d99d9d9354e96bbeb19b3a2082f5fb0bbb54.mp3', 1149, '2026-09-13 15:55:28.021539', '97142ab3798d1ff3f5ff60b26f26bc68b18072f1bea90548ac715190597458dc', 'validated', '{"audio_key":"a7460c35e68c47535a9c076ec1d4d99d9d9354e96bbeb19b3a2082f5fb0bbb54","entity_key":"wf_comparisons_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"97142ab3798d1ff3f5ff60b26f26bc68b18072f1bea90548ac715190597458dc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/a7460c35e68c47535a9c076ec1d4d99d9d9354e96bbeb19b3a2082f5fb0bbb54.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_appointments_and_plans_02 -> audio/generated/tr-TR/lexical/a88ea87331edae7caf6f944d3e70b242f8ff0f033d93683a5840df952486a7a2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d8637ed9-578b-5350-ab85-fd77862e56b2', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_appointments_and_plans_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '15a882caa440f67cb3691c3b64a58e552c8944aecf5f72b274b15c9c1827a0e8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fba3581b-9514-50bc-a431-8eeb66f81068', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d8637ed9-578b-5350-ab85-fd77862e56b2', 1), '15a882caa440f67cb3691c3b64a58e552c8944aecf5f72b274b15c9c1827a0e8',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/a88ea87331edae7caf6f944d3e70b242f8ff0f033d93683a5840df952486a7a2.mp3', 1149, '2026-09-13 17:08:32.546425', '8488c8528deac938d3e56d470ff777541fe5f311dbdeb13c70de86efd553e104', 'validated', '{"audio_key":"a88ea87331edae7caf6f944d3e70b242f8ff0f033d93683a5840df952486a7a2","entity_key":"lx_appointments_and_plans_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8488c8528deac938d3e56d470ff777541fe5f311dbdeb13c70de86efd553e104","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/a88ea87331edae7caf6f944d3e70b242f8ff0f033d93683a5840df952486a7a2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_appointments_and_plans_02 -> audio/generated/tr-TR/lexical/a88ea87331edae7caf6f944d3e70b242f8ff0f033d93683a5840df952486a7a2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c58c6ab0-84dc-5593-a2a3-f660f5d72786', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_appointments_and_plans_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '15a882caa440f67cb3691c3b64a58e552c8944aecf5f72b274b15c9c1827a0e8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9337f846-1951-5035-9a3c-15e0d79bae9c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c58c6ab0-84dc-5593-a2a3-f660f5d72786', 1), '15a882caa440f67cb3691c3b64a58e552c8944aecf5f72b274b15c9c1827a0e8',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/a88ea87331edae7caf6f944d3e70b242f8ff0f033d93683a5840df952486a7a2.mp3', 1149, '2026-09-13 17:08:32.546425', '8488c8528deac938d3e56d470ff777541fe5f311dbdeb13c70de86efd553e104', 'validated', '{"audio_key":"a88ea87331edae7caf6f944d3e70b242f8ff0f033d93683a5840df952486a7a2","entity_key":"wf_appointments_and_plans_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8488c8528deac938d3e56d470ff777541fe5f311dbdeb13c70de86efd553e104","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/a88ea87331edae7caf6f944d3e70b242f8ff0f033d93683a5840df952486a7a2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_a2_city_day_capstone_05 -> audio/generated/tr-TR/lexical/aa07d45b766d7a273c527814705e4970a6df34f247ac58d03fefaa97e92c29b3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('bc81b3f8-baac-5610-a8a5-59cedb9d528c', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_a2_city_day_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5bef9a0cd1412dc478d5201e27ffc2fef72f67d463f9876b91274d2901ad08cb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0e2cb714-8245-5adc-9ec4-10eef81ea0a7', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('bc81b3f8-baac-5610-a8a5-59cedb9d528c', 1), '5bef9a0cd1412dc478d5201e27ffc2fef72f67d463f9876b91274d2901ad08cb',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/aa07d45b766d7a273c527814705e4970a6df34f247ac58d03fefaa97e92c29b3.mp3', 1149, '2026-09-13 17:08:33.112477', 'f6d9e15bd4f68e91f23a61497045ca8b2f9ff58720ee0d58e7f9256cd9923288', 'validated', '{"audio_key":"aa07d45b766d7a273c527814705e4970a6df34f247ac58d03fefaa97e92c29b3","entity_key":"lx_a2_city_day_capstone_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f6d9e15bd4f68e91f23a61497045ca8b2f9ff58720ee0d58e7f9256cd9923288","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/aa07d45b766d7a273c527814705e4970a6df34f247ac58d03fefaa97e92c29b3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_a2_city_day_capstone_05 -> audio/generated/tr-TR/lexical/aa07d45b766d7a273c527814705e4970a6df34f247ac58d03fefaa97e92c29b3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8efea3eb-5995-575a-b7af-73eeee0f9bb4', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_a2_city_day_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5bef9a0cd1412dc478d5201e27ffc2fef72f67d463f9876b91274d2901ad08cb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9753b6c9-d033-5401-9059-1e697b1e3cd5', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8efea3eb-5995-575a-b7af-73eeee0f9bb4', 1), '5bef9a0cd1412dc478d5201e27ffc2fef72f67d463f9876b91274d2901ad08cb',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/aa07d45b766d7a273c527814705e4970a6df34f247ac58d03fefaa97e92c29b3.mp3', 1149, '2026-09-13 17:08:33.112477', 'f6d9e15bd4f68e91f23a61497045ca8b2f9ff58720ee0d58e7f9256cd9923288', 'validated', '{"audio_key":"aa07d45b766d7a273c527814705e4970a6df34f247ac58d03fefaa97e92c29b3","entity_key":"wf_a2_city_day_capstone_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f6d9e15bd4f68e91f23a61497045ca8b2f9ff58720ee0d58e7f9256cd9923288","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/aa07d45b766d7a273c527814705e4970a6df34f247ac58d03fefaa97e92c29b3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_reasons_and_results_05 -> audio/generated/tr-TR/lexical/ab29af2012fed0071642670907726c21433becf16121c4d9283155770ca95a00.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('361d70de-3bb3-5795-b2bd-9e08c1a35bfb', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_reasons_and_results_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ade3ee1abdb901dfaeb579ad890d7cc4a6d586bc8b202c32245405f881db82b0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1b1b80a5-310a-5146-b65f-1426c4f43a8d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('361d70de-3bb3-5795-b2bd-9e08c1a35bfb', 1), 'ade3ee1abdb901dfaeb579ad890d7cc4a6d586bc8b202c32245405f881db82b0',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/ab29af2012fed0071642670907726c21433becf16121c4d9283155770ca95a00.mp3', 1097, '2026-09-13 17:08:33.522672', '220b2597d10b88c331beaa07c1c2a6648c7bf250751b680cfd644fce456455fb', 'validated', '{"audio_key":"ab29af2012fed0071642670907726c21433becf16121c4d9283155770ca95a00","entity_key":"lx_reasons_and_results_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"220b2597d10b88c331beaa07c1c2a6648c7bf250751b680cfd644fce456455fb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/ab29af2012fed0071642670907726c21433becf16121c4d9283155770ca95a00.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_reasons_and_results_05 -> audio/generated/tr-TR/lexical/ab29af2012fed0071642670907726c21433becf16121c4d9283155770ca95a00.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2ccc036b-bc51-5e8c-92ba-1d0fcbe72a0f', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_reasons_and_results_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ade3ee1abdb901dfaeb579ad890d7cc4a6d586bc8b202c32245405f881db82b0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b64365b3-398c-5e3f-aaa0-89cb737def31', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2ccc036b-bc51-5e8c-92ba-1d0fcbe72a0f', 1), 'ade3ee1abdb901dfaeb579ad890d7cc4a6d586bc8b202c32245405f881db82b0',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/ab29af2012fed0071642670907726c21433becf16121c4d9283155770ca95a00.mp3', 1097, '2026-09-13 17:08:33.522672', '220b2597d10b88c331beaa07c1c2a6648c7bf250751b680cfd644fce456455fb', 'validated', '{"audio_key":"ab29af2012fed0071642670907726c21433becf16121c4d9283155770ca95a00","entity_key":"wf_reasons_and_results_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"220b2597d10b88c331beaa07c1c2a6648c7bf250751b680cfd644fce456455fb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/ab29af2012fed0071642670907726c21433becf16121c4d9283155770ca95a00.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_travel_and_hotel_05 -> audio/generated/tr-TR/lexical/c13f945bef8b64d59889133a1e0a4f305648f74652ff941c272e559562133c53.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e8abc095-04ed-5bf3-8177-b981aa60da10', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_travel_and_hotel_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cca70e4493fdb5a42d2900068f53ae71f9b528ebbd16fdd6629812f0150d24bd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4ed62954-6bc7-5073-a62c-748e797d8aef', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e8abc095-04ed-5bf3-8177-b981aa60da10', 1), 'cca70e4493fdb5a42d2900068f53ae71f9b528ebbd16fdd6629812f0150d24bd',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/c13f945bef8b64d59889133a1e0a4f305648f74652ff941c272e559562133c53.mp3', 1018, '2026-09-13 17:08:34.088987', '62cb451d0c80cbf625ac2c50cbc625700d44d913786b501b15eb72b4a5155ab7', 'validated', '{"audio_key":"c13f945bef8b64d59889133a1e0a4f305648f74652ff941c272e559562133c53","entity_key":"lx_travel_and_hotel_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"62cb451d0c80cbf625ac2c50cbc625700d44d913786b501b15eb72b4a5155ab7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/c13f945bef8b64d59889133a1e0a4f305648f74652ff941c272e559562133c53.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_travel_and_hotel_05 -> audio/generated/tr-TR/lexical/c13f945bef8b64d59889133a1e0a4f305648f74652ff941c272e559562133c53.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9398b7be-89a0-5e80-991a-953efbbf5fb1', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_travel_and_hotel_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cca70e4493fdb5a42d2900068f53ae71f9b528ebbd16fdd6629812f0150d24bd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b2328d89-a06f-5c4d-b697-06812f9444bf', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9398b7be-89a0-5e80-991a-953efbbf5fb1', 1), 'cca70e4493fdb5a42d2900068f53ae71f9b528ebbd16fdd6629812f0150d24bd',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/c13f945bef8b64d59889133a1e0a4f305648f74652ff941c272e559562133c53.mp3', 1018, '2026-09-13 17:08:34.088987', '62cb451d0c80cbf625ac2c50cbc625700d44d913786b501b15eb72b4a5155ab7', 'validated', '{"audio_key":"c13f945bef8b64d59889133a1e0a4f305648f74652ff941c272e559562133c53","entity_key":"wf_travel_and_hotel_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"62cb451d0c80cbf625ac2c50cbc625700d44d913786b501b15eb72b4a5155ab7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/c13f945bef8b64d59889133a1e0a4f305648f74652ff941c272e559562133c53.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_travel_and_hotel_04 -> audio/generated/tr-TR/lexical/ce1d03c9dbdbe9f70858d3342312660985f592873e6034fa8fced1200069b59f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9fa2edd0-d796-5ec4-bc9a-2676267c67a4', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_travel_and_hotel_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '55f10450eadfaf186e162ff9655cdd4bec8ea935fb1fa6ee69b322f49975c0ee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c647a858-5613-5208-9c08-842277f7183d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9fa2edd0-d796-5ec4-bc9a-2676267c67a4', 1), '55f10450eadfaf186e162ff9655cdd4bec8ea935fb1fa6ee69b322f49975c0ee',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/ce1d03c9dbdbe9f70858d3342312660985f592873e6034fa8fced1200069b59f.mp3', 1201, '2026-09-13 15:17:36.597841', 'e3d6134a9755a9220904981f5868486a3d6a1882489e304f4e176307fd0a06b2', 'validated', '{"audio_key":"ce1d03c9dbdbe9f70858d3342312660985f592873e6034fa8fced1200069b59f","entity_key":"lx_travel_and_hotel_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e3d6134a9755a9220904981f5868486a3d6a1882489e304f4e176307fd0a06b2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/ce1d03c9dbdbe9f70858d3342312660985f592873e6034fa8fced1200069b59f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_travel_and_hotel_04 -> audio/generated/tr-TR/lexical/ce1d03c9dbdbe9f70858d3342312660985f592873e6034fa8fced1200069b59f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ebbd29c8-8f62-5046-a422-e34194ba754b', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_travel_and_hotel_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '55f10450eadfaf186e162ff9655cdd4bec8ea935fb1fa6ee69b322f49975c0ee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6b23e8fa-0046-58ce-b5fa-17013d224d5e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ebbd29c8-8f62-5046-a422-e34194ba754b', 1), '55f10450eadfaf186e162ff9655cdd4bec8ea935fb1fa6ee69b322f49975c0ee',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/ce1d03c9dbdbe9f70858d3342312660985f592873e6034fa8fced1200069b59f.mp3', 1201, '2026-09-13 15:17:36.597841', 'e3d6134a9755a9220904981f5868486a3d6a1882489e304f4e176307fd0a06b2', 'validated', '{"audio_key":"ce1d03c9dbdbe9f70858d3342312660985f592873e6034fa8fced1200069b59f","entity_key":"wf_travel_and_hotel_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e3d6134a9755a9220904981f5868486a3d6a1882489e304f4e176307fd0a06b2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/ce1d03c9dbdbe9f70858d3342312660985f592873e6034fa8fced1200069b59f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_travel_and_hotel_02 -> audio/generated/tr-TR/lexical/d0e9392d57407a8f9d58af1cd96f53f5c527fa4e930b22f636614e702f19ee5b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0a3bb9f7-1999-5e9d-be48-dc4902df1242', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_travel_and_hotel_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '73084ce0babe20e37b1e09d91b4f41037ff14a322171d6b843cafe2d33d5c8b2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('582903dc-2d31-5bac-90f1-1a7d653d3a6d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0a3bb9f7-1999-5e9d-be48-dc4902df1242', 1), '73084ce0babe20e37b1e09d91b4f41037ff14a322171d6b843cafe2d33d5c8b2',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/d0e9392d57407a8f9d58af1cd96f53f5c527fa4e930b22f636614e702f19ee5b.mp3', 966, '2026-09-13 15:55:32.154945', '0b1357bde3dc684fa495069aa3c55eceba3c9ac22de20a7423ee835ec94bfadf', 'validated', '{"audio_key":"d0e9392d57407a8f9d58af1cd96f53f5c527fa4e930b22f636614e702f19ee5b","entity_key":"lx_travel_and_hotel_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0b1357bde3dc684fa495069aa3c55eceba3c9ac22de20a7423ee835ec94bfadf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/d0e9392d57407a8f9d58af1cd96f53f5c527fa4e930b22f636614e702f19ee5b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_travel_and_hotel_02 -> audio/generated/tr-TR/lexical/d0e9392d57407a8f9d58af1cd96f53f5c527fa4e930b22f636614e702f19ee5b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0750650c-6e6e-5bfb-a04c-dea2df6f7014', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_travel_and_hotel_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '73084ce0babe20e37b1e09d91b4f41037ff14a322171d6b843cafe2d33d5c8b2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e06aeb51-0fb9-5d30-ae2d-44982e3dbf67', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0750650c-6e6e-5bfb-a04c-dea2df6f7014', 1), '73084ce0babe20e37b1e09d91b4f41037ff14a322171d6b843cafe2d33d5c8b2',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/d0e9392d57407a8f9d58af1cd96f53f5c527fa4e930b22f636614e702f19ee5b.mp3', 966, '2026-09-13 15:55:32.154945', '0b1357bde3dc684fa495069aa3c55eceba3c9ac22de20a7423ee835ec94bfadf', 'validated', '{"audio_key":"d0e9392d57407a8f9d58af1cd96f53f5c527fa4e930b22f636614e702f19ee5b","entity_key":"wf_travel_and_hotel_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0b1357bde3dc684fa495069aa3c55eceba3c9ac22de20a7423ee835ec94bfadf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/d0e9392d57407a8f9d58af1cd96f53f5c527fa4e930b22f636614e702f19ee5b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_reasons_and_results_03 -> audio/generated/tr-TR/lexical/d0f67472ec7d2c420e270abaa454af0c2f97930b511b5b6f17dd32043441c51d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('36d32b50-b7fc-558f-b948-68af419e6b8a', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_reasons_and_results_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3dc9d630bfb027ce96181c21c7fea38d6a3092a86ee8926414e376343217faad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a4d2ff5d-8dd4-57cb-9e13-124599818fde', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('36d32b50-b7fc-558f-b948-68af419e6b8a', 1), '3dc9d630bfb027ce96181c21c7fea38d6a3092a86ee8926414e376343217faad',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/d0f67472ec7d2c420e270abaa454af0c2f97930b511b5b6f17dd32043441c51d.mp3', 1097, '2026-09-13 17:08:34.516102', '0db13f492ee33052e22f97fd041e8ac9952723e1ed3e98adc35c386d935b5673', 'validated', '{"audio_key":"d0f67472ec7d2c420e270abaa454af0c2f97930b511b5b6f17dd32043441c51d","entity_key":"lx_reasons_and_results_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0db13f492ee33052e22f97fd041e8ac9952723e1ed3e98adc35c386d935b5673","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/d0f67472ec7d2c420e270abaa454af0c2f97930b511b5b6f17dd32043441c51d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_reasons_and_results_03 -> audio/generated/tr-TR/lexical/d0f67472ec7d2c420e270abaa454af0c2f97930b511b5b6f17dd32043441c51d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('aac7e078-80be-5fca-a8ab-49457c3ed9fb', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_reasons_and_results_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3dc9d630bfb027ce96181c21c7fea38d6a3092a86ee8926414e376343217faad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7b4aac47-541b-5fdf-a02d-d2f3f56ff941', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('aac7e078-80be-5fca-a8ab-49457c3ed9fb', 1), '3dc9d630bfb027ce96181c21c7fea38d6a3092a86ee8926414e376343217faad',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/d0f67472ec7d2c420e270abaa454af0c2f97930b511b5b6f17dd32043441c51d.mp3', 1097, '2026-09-13 17:08:34.516102', '0db13f492ee33052e22f97fd041e8ac9952723e1ed3e98adc35c386d935b5673', 'validated', '{"audio_key":"d0f67472ec7d2c420e270abaa454af0c2f97930b511b5b6f17dd32043441c51d","entity_key":"wf_reasons_and_results_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0db13f492ee33052e22f97fd041e8ac9952723e1ed3e98adc35c386d935b5673","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/d0f67472ec7d2c420e270abaa454af0c2f97930b511b5b6f17dd32043441c51d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_habits_and_frequency_03 -> audio/generated/tr-TR/lexical/d353df50c7a702f9390f54a66afed7e228ce93f99804f0f11ee57a1356f070e7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b801e42d-7e8f-5725-b58a-34349e54952b', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_habits_and_frequency_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9fad49dc1d9e8af1aae83bb7992d3d5d24b8184cbcd62bf4112b96a1d57bbb2e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d5577e7a-4ede-52c1-897c-23dea9199fc9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b801e42d-7e8f-5725-b58a-34349e54952b', 1), '9fad49dc1d9e8af1aae83bb7992d3d5d24b8184cbcd62bf4112b96a1d57bbb2e',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/d353df50c7a702f9390f54a66afed7e228ce93f99804f0f11ee57a1356f070e7.mp3', 1071, '2026-09-13 17:08:35.050360', '3f89cf975cbd287a9d54ce3e4872a29b498b0d84c53e29ff0c06329770158591', 'validated', '{"audio_key":"d353df50c7a702f9390f54a66afed7e228ce93f99804f0f11ee57a1356f070e7","entity_key":"lx_habits_and_frequency_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3f89cf975cbd287a9d54ce3e4872a29b498b0d84c53e29ff0c06329770158591","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/d353df50c7a702f9390f54a66afed7e228ce93f99804f0f11ee57a1356f070e7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_habits_and_frequency_03 -> audio/generated/tr-TR/lexical/d353df50c7a702f9390f54a66afed7e228ce93f99804f0f11ee57a1356f070e7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('85b4f7e6-927d-5771-b1f9-1151aa520077', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_habits_and_frequency_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9fad49dc1d9e8af1aae83bb7992d3d5d24b8184cbcd62bf4112b96a1d57bbb2e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5229639b-ffcc-558c-9764-e8db8e9863ff', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('85b4f7e6-927d-5771-b1f9-1151aa520077', 1), '9fad49dc1d9e8af1aae83bb7992d3d5d24b8184cbcd62bf4112b96a1d57bbb2e',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/d353df50c7a702f9390f54a66afed7e228ce93f99804f0f11ee57a1356f070e7.mp3', 1071, '2026-09-13 17:08:35.050360', '3f89cf975cbd287a9d54ce3e4872a29b498b0d84c53e29ff0c06329770158591', 'validated', '{"audio_key":"d353df50c7a702f9390f54a66afed7e228ce93f99804f0f11ee57a1356f070e7","entity_key":"wf_habits_and_frequency_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3f89cf975cbd287a9d54ce3e4872a29b498b0d84c53e29ff0c06329770158591","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/d353df50c7a702f9390f54a66afed7e228ce93f99804f0f11ee57a1356f070e7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_reasons_and_results_06 -> audio/generated/tr-TR/lexical/d78abade31e1df9600403cd98108e04215248b6110bb9686761b311255392e14.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('4b5b07bc-6ebc-5298-a040-995d6039333f', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_reasons_and_results_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7cde91f5c90a47a5e2e1be38f231d2b7565866a122c2f0081a1d08127b0fbb5a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0ade9583-a55d-521f-a7b9-2da317804743', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('4b5b07bc-6ebc-5298-a040-995d6039333f', 1), '7cde91f5c90a47a5e2e1be38f231d2b7565866a122c2f0081a1d08127b0fbb5a',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/d78abade31e1df9600403cd98108e04215248b6110bb9686761b311255392e14.mp3', 1253, '2026-09-13 17:08:35.499800', '7a889b3dc485d8aa22e52b5acc47c6332d0c32d4c75a83042934db1e69d5b193', 'validated', '{"audio_key":"d78abade31e1df9600403cd98108e04215248b6110bb9686761b311255392e14","entity_key":"lx_reasons_and_results_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7a889b3dc485d8aa22e52b5acc47c6332d0c32d4c75a83042934db1e69d5b193","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/d78abade31e1df9600403cd98108e04215248b6110bb9686761b311255392e14.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_reasons_and_results_06 -> audio/generated/tr-TR/lexical/d78abade31e1df9600403cd98108e04215248b6110bb9686761b311255392e14.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('185b485a-92d6-53f1-b48a-7b9c6c8cc389', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_reasons_and_results_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7cde91f5c90a47a5e2e1be38f231d2b7565866a122c2f0081a1d08127b0fbb5a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8acf92b0-8927-50ea-a8e2-43075483db64', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('185b485a-92d6-53f1-b48a-7b9c6c8cc389', 1), '7cde91f5c90a47a5e2e1be38f231d2b7565866a122c2f0081a1d08127b0fbb5a',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/d78abade31e1df9600403cd98108e04215248b6110bb9686761b311255392e14.mp3', 1253, '2026-09-13 17:08:35.499800', '7a889b3dc485d8aa22e52b5acc47c6332d0c32d4c75a83042934db1e69d5b193', 'validated', '{"audio_key":"d78abade31e1df9600403cd98108e04215248b6110bb9686761b311255392e14","entity_key":"wf_reasons_and_results_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7a889b3dc485d8aa22e52b5acc47c6332d0c32d4c75a83042934db1e69d5b193","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/d78abade31e1df9600403cd98108e04215248b6110bb9686761b311255392e14.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_polite_requests_03 -> audio/generated/tr-TR/lexical/d96cc80462623c723377c73b0701ad87be6bce2c3fa25bfe55d26d69bce356f5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('153d78f9-7fe6-57db-8b86-64d199b8f560', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_polite_requests_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ac9b667ce5e2fb843cc72e83354d21555b9d3a3705832eb92d4dc8ba4fcdf3e5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('87d16c5b-40ce-5149-bfeb-d070a5bb243b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('153d78f9-7fe6-57db-8b86-64d199b8f560', 1), 'ac9b667ce5e2fb843cc72e83354d21555b9d3a3705832eb92d4dc8ba4fcdf3e5',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/d96cc80462623c723377c73b0701ad87be6bce2c3fa25bfe55d26d69bce356f5.mp3', 1201, '2026-09-13 17:08:36.237579', 'd2629a01b1a6abfe29a8b68f2bb9ff45678987603a32badd30e992cbf9de95d0', 'validated', '{"audio_key":"d96cc80462623c723377c73b0701ad87be6bce2c3fa25bfe55d26d69bce356f5","entity_key":"lx_polite_requests_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d2629a01b1a6abfe29a8b68f2bb9ff45678987603a32badd30e992cbf9de95d0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/d96cc80462623c723377c73b0701ad87be6bce2c3fa25bfe55d26d69bce356f5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_polite_requests_03 -> audio/generated/tr-TR/lexical/d96cc80462623c723377c73b0701ad87be6bce2c3fa25bfe55d26d69bce356f5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e6ae397a-5481-5ff4-bdc5-ca44696e02e5', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_polite_requests_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ac9b667ce5e2fb843cc72e83354d21555b9d3a3705832eb92d4dc8ba4fcdf3e5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ad6f580e-ca1d-5acf-a686-58258d2ebbd2', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e6ae397a-5481-5ff4-bdc5-ca44696e02e5', 1), 'ac9b667ce5e2fb843cc72e83354d21555b9d3a3705832eb92d4dc8ba4fcdf3e5',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/d96cc80462623c723377c73b0701ad87be6bce2c3fa25bfe55d26d69bce356f5.mp3', 1201, '2026-09-13 17:08:36.237579', 'd2629a01b1a6abfe29a8b68f2bb9ff45678987603a32badd30e992cbf9de95d0', 'validated', '{"audio_key":"d96cc80462623c723377c73b0701ad87be6bce2c3fa25bfe55d26d69bce356f5","entity_key":"wf_polite_requests_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d2629a01b1a6abfe29a8b68f2bb9ff45678987603a32badd30e992cbf9de95d0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/d96cc80462623c723377c73b0701ad87be6bce2c3fa25bfe55d26d69bce356f5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_appointments_and_plans_06 -> audio/generated/tr-TR/lexical/dce5af74e4e09b80c93ef3168b6ddef72f0f4cb03b5c74d3bf54889a5766132a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c1a87952-d44f-57d7-b089-e2de6c05d7f7', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_appointments_and_plans_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4bee78a14d62478e3bb30cdb55738512ea68163238c7fa4766cddcdd244dd0cf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3c1594dd-265d-54d3-93d9-5e8d099a0490', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c1a87952-d44f-57d7-b089-e2de6c05d7f7', 1), '4bee78a14d62478e3bb30cdb55738512ea68163238c7fa4766cddcdd244dd0cf',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/dce5af74e4e09b80c93ef3168b6ddef72f0f4cb03b5c74d3bf54889a5766132a.mp3', 1071, '2026-09-13 17:08:36.499780', '5bab927cb7720c9c2e5e1f882bea25896e72befee9bcbb4f0838ad42b0b7adc0', 'validated', '{"audio_key":"dce5af74e4e09b80c93ef3168b6ddef72f0f4cb03b5c74d3bf54889a5766132a","entity_key":"lx_appointments_and_plans_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5bab927cb7720c9c2e5e1f882bea25896e72befee9bcbb4f0838ad42b0b7adc0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/dce5af74e4e09b80c93ef3168b6ddef72f0f4cb03b5c74d3bf54889a5766132a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_appointments_and_plans_06 -> audio/generated/tr-TR/lexical/dce5af74e4e09b80c93ef3168b6ddef72f0f4cb03b5c74d3bf54889a5766132a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c0f31eeb-2c8b-53b6-b3c4-f671b101ef02', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_appointments_and_plans_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4bee78a14d62478e3bb30cdb55738512ea68163238c7fa4766cddcdd244dd0cf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dbad08ba-c22d-508f-b65f-2c19af098dae', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c0f31eeb-2c8b-53b6-b3c4-f671b101ef02', 1), '4bee78a14d62478e3bb30cdb55738512ea68163238c7fa4766cddcdd244dd0cf',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/dce5af74e4e09b80c93ef3168b6ddef72f0f4cb03b5c74d3bf54889a5766132a.mp3', 1071, '2026-09-13 17:08:36.499780', '5bab927cb7720c9c2e5e1f882bea25896e72befee9bcbb4f0838ad42b0b7adc0', 'validated', '{"audio_key":"dce5af74e4e09b80c93ef3168b6ddef72f0f4cb03b5c74d3bf54889a5766132a","entity_key":"wf_appointments_and_plans_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5bab927cb7720c9c2e5e1f882bea25896e72befee9bcbb4f0838ad42b0b7adc0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/dce5af74e4e09b80c93ef3168b6ddef72f0f4cb03b5c74d3bf54889a5766132a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_comparisons_06 -> audio/generated/tr-TR/lexical/dce5af74e4e09b80c93ef3168b6ddef72f0f4cb03b5c74d3bf54889a5766132a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c1a87952-d44f-57d7-b089-e2de6c05d7f7', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_comparisons_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4bee78a14d62478e3bb30cdb55738512ea68163238c7fa4766cddcdd244dd0cf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3c1594dd-265d-54d3-93d9-5e8d099a0490', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c1a87952-d44f-57d7-b089-e2de6c05d7f7', 1), '4bee78a14d62478e3bb30cdb55738512ea68163238c7fa4766cddcdd244dd0cf',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/dce5af74e4e09b80c93ef3168b6ddef72f0f4cb03b5c74d3bf54889a5766132a.mp3', 1071, '2026-09-13 17:08:36.499780', '5bab927cb7720c9c2e5e1f882bea25896e72befee9bcbb4f0838ad42b0b7adc0', 'validated', '{"audio_key":"dce5af74e4e09b80c93ef3168b6ddef72f0f4cb03b5c74d3bf54889a5766132a","entity_key":"lx_comparisons_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5bab927cb7720c9c2e5e1f882bea25896e72befee9bcbb4f0838ad42b0b7adc0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/dce5af74e4e09b80c93ef3168b6ddef72f0f4cb03b5c74d3bf54889a5766132a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_comparisons_06 -> audio/generated/tr-TR/lexical/dce5af74e4e09b80c93ef3168b6ddef72f0f4cb03b5c74d3bf54889a5766132a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('baf1ea49-62ec-5b51-9b10-77c055821cc0', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_comparisons_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4bee78a14d62478e3bb30cdb55738512ea68163238c7fa4766cddcdd244dd0cf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('de5f6a56-1ba7-5ddf-96e8-d26e6ef67fe0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('baf1ea49-62ec-5b51-9b10-77c055821cc0', 1), '4bee78a14d62478e3bb30cdb55738512ea68163238c7fa4766cddcdd244dd0cf',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/dce5af74e4e09b80c93ef3168b6ddef72f0f4cb03b5c74d3bf54889a5766132a.mp3', 1071, '2026-09-13 17:08:36.499780', '5bab927cb7720c9c2e5e1f882bea25896e72befee9bcbb4f0838ad42b0b7adc0', 'validated', '{"audio_key":"dce5af74e4e09b80c93ef3168b6ddef72f0f4cb03b5c74d3bf54889a5766132a","entity_key":"wf_comparisons_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5bab927cb7720c9c2e5e1f882bea25896e72befee9bcbb4f0838ad42b0b7adc0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/dce5af74e4e09b80c93ef3168b6ddef72f0f4cb03b5c74d3bf54889a5766132a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_reasons_and_results_01 -> audio/generated/tr-TR/lexical/dd993e1e972599891feb030f2c69a22a6fb9a76c88f2992979df7a67b8abfcc8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e8820744-cfa6-5550-b331-9053ac175d3e', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_reasons_and_results_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '65aa8f64875d1b0494a305b2a679b50a2ccb40cfbfe8363d78a61ee7caffa5b5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9d2d82fd-b07f-5abe-9f71-cb2ed42cea01', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e8820744-cfa6-5550-b331-9053ac175d3e', 1), '65aa8f64875d1b0494a305b2a679b50a2ccb40cfbfe8363d78a61ee7caffa5b5',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/dd993e1e972599891feb030f2c69a22a6fb9a76c88f2992979df7a67b8abfcc8.mp3', 1097, '2026-09-13 17:08:37.237053', 'f9a47074a00f168d86a8757dbbcbe2d9b54eb2c25d6670d405a0fa85fab8f6de', 'validated', '{"audio_key":"dd993e1e972599891feb030f2c69a22a6fb9a76c88f2992979df7a67b8abfcc8","entity_key":"lx_reasons_and_results_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f9a47074a00f168d86a8757dbbcbe2d9b54eb2c25d6670d405a0fa85fab8f6de","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/dd993e1e972599891feb030f2c69a22a6fb9a76c88f2992979df7a67b8abfcc8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_reasons_and_results_01 -> audio/generated/tr-TR/lexical/dd993e1e972599891feb030f2c69a22a6fb9a76c88f2992979df7a67b8abfcc8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('61ec329e-e4eb-59a6-add3-5a325ee5b234', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_reasons_and_results_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '65aa8f64875d1b0494a305b2a679b50a2ccb40cfbfe8363d78a61ee7caffa5b5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('57d0823d-2a7e-588c-a28c-e948072d9f12', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('61ec329e-e4eb-59a6-add3-5a325ee5b234', 1), '65aa8f64875d1b0494a305b2a679b50a2ccb40cfbfe8363d78a61ee7caffa5b5',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/dd993e1e972599891feb030f2c69a22a6fb9a76c88f2992979df7a67b8abfcc8.mp3', 1097, '2026-09-13 17:08:37.237053', 'f9a47074a00f168d86a8757dbbcbe2d9b54eb2c25d6670d405a0fa85fab8f6de', 'validated', '{"audio_key":"dd993e1e972599891feb030f2c69a22a6fb9a76c88f2992979df7a67b8abfcc8","entity_key":"wf_reasons_and_results_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f9a47074a00f168d86a8757dbbcbe2d9b54eb2c25d6670d405a0fa85fab8f6de","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/dd993e1e972599891feb030f2c69a22a6fb9a76c88f2992979df7a67b8abfcc8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_choices_and_preferences_03 -> audio/generated/tr-TR/lexical/e86829608c5e51ac9ae3e39d39a01e38cbbb73ef944e9302f85da79968a118a9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('754a5b48-d343-5ef8-a669-c42eec65584b', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_choices_and_preferences_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f42ff7247c899db28b1e5daeb5e05f69e2538521fbe6046b84e8fb8697381f4f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('01c2bcad-879e-560a-bdf3-09aa1b382edc', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('754a5b48-d343-5ef8-a669-c42eec65584b', 1), 'f42ff7247c899db28b1e5daeb5e05f69e2538521fbe6046b84e8fb8697381f4f',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/e86829608c5e51ac9ae3e39d39a01e38cbbb73ef944e9302f85da79968a118a9.mp3', 966, '2026-09-13 17:08:37.461600', '38616c5bf9019486c1bd27006abce691f41261dcd7116646c5a34343d913cbe9', 'validated', '{"audio_key":"e86829608c5e51ac9ae3e39d39a01e38cbbb73ef944e9302f85da79968a118a9","entity_key":"lx_choices_and_preferences_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"38616c5bf9019486c1bd27006abce691f41261dcd7116646c5a34343d913cbe9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/e86829608c5e51ac9ae3e39d39a01e38cbbb73ef944e9302f85da79968a118a9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_choices_and_preferences_03 -> audio/generated/tr-TR/lexical/e86829608c5e51ac9ae3e39d39a01e38cbbb73ef944e9302f85da79968a118a9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f885dead-edd4-547e-9eb1-c162a0bee3bb', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_choices_and_preferences_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f42ff7247c899db28b1e5daeb5e05f69e2538521fbe6046b84e8fb8697381f4f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2f5a0067-97ab-5fd1-a9e8-9f2e2677ddcf', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f885dead-edd4-547e-9eb1-c162a0bee3bb', 1), 'f42ff7247c899db28b1e5daeb5e05f69e2538521fbe6046b84e8fb8697381f4f',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/e86829608c5e51ac9ae3e39d39a01e38cbbb73ef944e9302f85da79968a118a9.mp3', 966, '2026-09-13 17:08:37.461600', '38616c5bf9019486c1bd27006abce691f41261dcd7116646c5a34343d913cbe9', 'validated', '{"audio_key":"e86829608c5e51ac9ae3e39d39a01e38cbbb73ef944e9302f85da79968a118a9","entity_key":"wf_choices_and_preferences_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"38616c5bf9019486c1bd27006abce691f41261dcd7116646c5a34343d913cbe9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/e86829608c5e51ac9ae3e39d39a01e38cbbb73ef944e9302f85da79968a118a9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_habits_and_frequency_01 -> audio/generated/tr-TR/lexical/e90772acabdcae852d938f00bc1ebc8c86d47e329fd36a26b89dabd851653870.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('91f194f1-55df-538d-9488-96da38e1bb7f', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_habits_and_frequency_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2cbd6cf44cc819ddcc348c24aabea2ef6c66133ccec9b0d2513502527061aa67'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e3f0901e-280c-5c22-a755-9f2ee3e37a71', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('91f194f1-55df-538d-9488-96da38e1bb7f', 1), '2cbd6cf44cc819ddcc348c24aabea2ef6c66133ccec9b0d2513502527061aa67',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/e90772acabdcae852d938f00bc1ebc8c86d47e329fd36a26b89dabd851653870.mp3', 1097, '2026-09-13 17:08:38.222577', '04c170f2a97d699ff506b18a12abfc37384c7926d77c62879ce785a676f79d7c', 'validated', '{"audio_key":"e90772acabdcae852d938f00bc1ebc8c86d47e329fd36a26b89dabd851653870","entity_key":"lx_habits_and_frequency_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"04c170f2a97d699ff506b18a12abfc37384c7926d77c62879ce785a676f79d7c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/e90772acabdcae852d938f00bc1ebc8c86d47e329fd36a26b89dabd851653870.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_habits_and_frequency_01 -> audio/generated/tr-TR/lexical/e90772acabdcae852d938f00bc1ebc8c86d47e329fd36a26b89dabd851653870.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('dc23fde0-8524-5c96-9ffb-31a3c4868605', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_habits_and_frequency_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2cbd6cf44cc819ddcc348c24aabea2ef6c66133ccec9b0d2513502527061aa67'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1f3a8bb9-047b-5d8b-91c0-1502bfa88199', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('dc23fde0-8524-5c96-9ffb-31a3c4868605', 1), '2cbd6cf44cc819ddcc348c24aabea2ef6c66133ccec9b0d2513502527061aa67',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/e90772acabdcae852d938f00bc1ebc8c86d47e329fd36a26b89dabd851653870.mp3', 1097, '2026-09-13 17:08:38.222577', '04c170f2a97d699ff506b18a12abfc37384c7926d77c62879ce785a676f79d7c', 'validated', '{"audio_key":"e90772acabdcae852d938f00bc1ebc8c86d47e329fd36a26b89dabd851653870","entity_key":"wf_habits_and_frequency_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"04c170f2a97d699ff506b18a12abfc37384c7926d77c62879ce785a676f79d7c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/e90772acabdcae852d938f00bc1ebc8c86d47e329fd36a26b89dabd851653870.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_appointments_and_plans_03 -> audio/generated/tr-TR/lexical/ea471eb877e697fdad0857c0be7e7a7a4899fed79ed1b3370362734c12c387a0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b955044b-e519-5190-9937-4568d9181c8c', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_appointments_and_plans_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7eb7b1f325e3120abebd421ffd175f65e7674c017cfea8064001fc4a7b7ff76d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d387bda6-93bc-5d2c-bb2c-0a0755b6084e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b955044b-e519-5190-9937-4568d9181c8c', 1), '7eb7b1f325e3120abebd421ffd175f65e7674c017cfea8064001fc4a7b7ff76d',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/ea471eb877e697fdad0857c0be7e7a7a4899fed79ed1b3370362734c12c387a0.mp3', 1097, '2026-09-13 17:08:38.462215', 'f5aa35ac8a6e1e09d0964eb47f15f1ff8cbae9914f0ab3180e6c16f28b677152', 'validated', '{"audio_key":"ea471eb877e697fdad0857c0be7e7a7a4899fed79ed1b3370362734c12c387a0","entity_key":"lx_appointments_and_plans_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f5aa35ac8a6e1e09d0964eb47f15f1ff8cbae9914f0ab3180e6c16f28b677152","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/ea471eb877e697fdad0857c0be7e7a7a4899fed79ed1b3370362734c12c387a0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_appointments_and_plans_03 -> audio/generated/tr-TR/lexical/ea471eb877e697fdad0857c0be7e7a7a4899fed79ed1b3370362734c12c387a0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('92f6b016-efdc-5f5d-aa61-bde85f62cc51', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_appointments_and_plans_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7eb7b1f325e3120abebd421ffd175f65e7674c017cfea8064001fc4a7b7ff76d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('35897a04-64ea-5bed-bd65-83a7334b6c35', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('92f6b016-efdc-5f5d-aa61-bde85f62cc51', 1), '7eb7b1f325e3120abebd421ffd175f65e7674c017cfea8064001fc4a7b7ff76d',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/ea471eb877e697fdad0857c0be7e7a7a4899fed79ed1b3370362734c12c387a0.mp3', 1097, '2026-09-13 17:08:38.462215', 'f5aa35ac8a6e1e09d0964eb47f15f1ff8cbae9914f0ab3180e6c16f28b677152', 'validated', '{"audio_key":"ea471eb877e697fdad0857c0be7e7a7a4899fed79ed1b3370362734c12c387a0","entity_key":"wf_appointments_and_plans_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f5aa35ac8a6e1e09d0964eb47f15f1ff8cbae9914f0ab3180e6c16f28b677152","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/ea471eb877e697fdad0857c0be7e7a7a4899fed79ed1b3370362734c12c387a0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_travel_and_hotel_01 -> audio/generated/tr-TR/lexical/f44c577f4d566fc5d54ec62af06d88414344f088d5447dd0fd7415e8479e5265.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1ea3c83d-4ae0-5fc8-92e1-ec7996797a14', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_travel_and_hotel_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '527a6564a940fc2bbfb3fbc048c98cffc0a1c4a2aaa2f80392d296caf88ba1da'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('07dda832-a73a-58db-a9f4-ad833c192c52', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1ea3c83d-4ae0-5fc8-92e1-ec7996797a14', 1), '527a6564a940fc2bbfb3fbc048c98cffc0a1c4a2aaa2f80392d296caf88ba1da',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/f44c577f4d566fc5d54ec62af06d88414344f088d5447dd0fd7415e8479e5265.mp3', 1436, '2026-09-13 17:08:39.276035', '79f7cc4b43b6fc1dc9ada8b9793d7bad4f9ee32c3d0679bf74de01f13b092767', 'validated', '{"audio_key":"f44c577f4d566fc5d54ec62af06d88414344f088d5447dd0fd7415e8479e5265","entity_key":"lx_travel_and_hotel_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"79f7cc4b43b6fc1dc9ada8b9793d7bad4f9ee32c3d0679bf74de01f13b092767","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/f44c577f4d566fc5d54ec62af06d88414344f088d5447dd0fd7415e8479e5265.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_travel_and_hotel_01 -> audio/generated/tr-TR/lexical/f44c577f4d566fc5d54ec62af06d88414344f088d5447dd0fd7415e8479e5265.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0cf74d56-b9d9-5187-9eb4-092e1a5dabfb', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_travel_and_hotel_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '527a6564a940fc2bbfb3fbc048c98cffc0a1c4a2aaa2f80392d296caf88ba1da'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1e6304b3-67fd-51dc-8f8b-542f82b62f79', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0cf74d56-b9d9-5187-9eb4-092e1a5dabfb', 1), '527a6564a940fc2bbfb3fbc048c98cffc0a1c4a2aaa2f80392d296caf88ba1da',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/f44c577f4d566fc5d54ec62af06d88414344f088d5447dd0fd7415e8479e5265.mp3', 1436, '2026-09-13 17:08:39.276035', '79f7cc4b43b6fc1dc9ada8b9793d7bad4f9ee32c3d0679bf74de01f13b092767', 'validated', '{"audio_key":"f44c577f4d566fc5d54ec62af06d88414344f088d5447dd0fd7415e8479e5265","entity_key":"wf_travel_and_hotel_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"79f7cc4b43b6fc1dc9ada8b9793d7bad4f9ee32c3d0679bf74de01f13b092767","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/f44c577f4d566fc5d54ec62af06d88414344f088d5447dd0fd7415e8479e5265.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_choices_and_preferences_06 -> audio/generated/tr-TR/lexical/f64d7fc2d3c5b28a9cad1b4c6f8be7e26824fb71c4c5e93aa09a068966837cd4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('78599ce6-18bb-5a49-b375-890b718c81fd', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_choices_and_preferences_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '153e2d4655e03d146166eaffa92bbd28d5da09d44f06c6ee75676894fb1beda6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('86d3a566-820a-54ee-a427-424a792a496d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('78599ce6-18bb-5a49-b375-890b718c81fd', 1), '153e2d4655e03d146166eaffa92bbd28d5da09d44f06c6ee75676894fb1beda6',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/f64d7fc2d3c5b28a9cad1b4c6f8be7e26824fb71c4c5e93aa09a068966837cd4.mp3', 1097, '2026-09-13 17:08:39.682181', '4af29de0848eb692a0afb27fd53c5ba513196da51249667a264c1f44f77817bd', 'validated', '{"audio_key":"f64d7fc2d3c5b28a9cad1b4c6f8be7e26824fb71c4c5e93aa09a068966837cd4","entity_key":"lx_choices_and_preferences_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4af29de0848eb692a0afb27fd53c5ba513196da51249667a264c1f44f77817bd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/f64d7fc2d3c5b28a9cad1b4c6f8be7e26824fb71c4c5e93aa09a068966837cd4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_choices_and_preferences_06 -> audio/generated/tr-TR/lexical/f64d7fc2d3c5b28a9cad1b4c6f8be7e26824fb71c4c5e93aa09a068966837cd4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('13bd82e9-745b-5efa-962e-6bc773b56302', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_choices_and_preferences_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '153e2d4655e03d146166eaffa92bbd28d5da09d44f06c6ee75676894fb1beda6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2235243f-6b5b-5547-a7cb-6c719e3bf16f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('13bd82e9-745b-5efa-962e-6bc773b56302', 1), '153e2d4655e03d146166eaffa92bbd28d5da09d44f06c6ee75676894fb1beda6',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/f64d7fc2d3c5b28a9cad1b4c6f8be7e26824fb71c4c5e93aa09a068966837cd4.mp3', 1097, '2026-09-13 17:08:39.682181', '4af29de0848eb692a0afb27fd53c5ba513196da51249667a264c1f44f77817bd', 'validated', '{"audio_key":"f64d7fc2d3c5b28a9cad1b4c6f8be7e26824fb71c4c5e93aa09a068966837cd4","entity_key":"wf_choices_and_preferences_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4af29de0848eb692a0afb27fd53c5ba513196da51249667a264c1f44f77817bd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/f64d7fc2d3c5b28a9cad1b4c6f8be7e26824fb71c4c5e93aa09a068966837cd4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_appointments_and_plans_04 -> audio/generated/tr-TR/lexical/f8667360d6b032098a7eb8d4cd74d194ef4be1de7ee0f5eb26a6a4dc5d474d57.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('56cf10c9-805d-5606-bbbd-af9fcfdd6f58', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_appointments_and_plans_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0b132cffc39d1212c58e36669369a25e846bbf855fabfd77cf93b8bd26930ca3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6c25b028-e812-5384-b30f-b91ee23674db', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('56cf10c9-805d-5606-bbbd-af9fcfdd6f58', 1), '0b132cffc39d1212c58e36669369a25e846bbf855fabfd77cf93b8bd26930ca3',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/f8667360d6b032098a7eb8d4cd74d194ef4be1de7ee0f5eb26a6a4dc5d474d57.mp3', 1515, '2026-09-13 17:08:40.270007', '392b840b9ecba295d10293c5861bacbe04fb86e1b7c5e9529eec26a8a95b387e', 'validated', '{"audio_key":"f8667360d6b032098a7eb8d4cd74d194ef4be1de7ee0f5eb26a6a4dc5d474d57","entity_key":"lx_appointments_and_plans_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"392b840b9ecba295d10293c5861bacbe04fb86e1b7c5e9529eec26a8a95b387e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/f8667360d6b032098a7eb8d4cd74d194ef4be1de7ee0f5eb26a6a4dc5d474d57.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_appointments_and_plans_04 -> audio/generated/tr-TR/lexical/f8667360d6b032098a7eb8d4cd74d194ef4be1de7ee0f5eb26a6a4dc5d474d57.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7d10a0c1-1270-5694-b420-aec66f85434f', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_appointments_and_plans_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0b132cffc39d1212c58e36669369a25e846bbf855fabfd77cf93b8bd26930ca3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('53272139-46c3-5423-a7b1-8ec40da5d8ec', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7d10a0c1-1270-5694-b420-aec66f85434f', 1), '0b132cffc39d1212c58e36669369a25e846bbf855fabfd77cf93b8bd26930ca3',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/f8667360d6b032098a7eb8d4cd74d194ef4be1de7ee0f5eb26a6a4dc5d474d57.mp3', 1515, '2026-09-13 17:08:40.270007', '392b840b9ecba295d10293c5861bacbe04fb86e1b7c5e9529eec26a8a95b387e', 'validated', '{"audio_key":"f8667360d6b032098a7eb8d4cd74d194ef4be1de7ee0f5eb26a6a4dc5d474d57","entity_key":"wf_appointments_and_plans_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"392b840b9ecba295d10293c5861bacbe04fb86e1b7c5e9529eec26a8a95b387e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/f8667360d6b032098a7eb8d4cd74d194ef4be1de7ee0f5eb26a6a4dc5d474d57.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_a2_city_day_capstone_01 -> audio/generated/tr-TR/lexical/fe57130c8ecf33169674c2ee637d88c482337451360159c4f7f5d0c51270feda.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b74ca510-17c7-5a42-8721-ff18222af9c5', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_a2_city_day_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '64879f7d6b960a01909762d911a32d4582c20010c5641ee90278b644a9e3b525'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f8f52660-1433-5b7f-b267-3311ee65437d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b74ca510-17c7-5a42-8721-ff18222af9c5', 1), '64879f7d6b960a01909762d911a32d4582c20010c5641ee90278b644a9e3b525',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/fe57130c8ecf33169674c2ee637d88c482337451360159c4f7f5d0c51270feda.mp3', 966, '2026-09-13 17:08:40.623820', '5030fab4c2fe1598dc441a9521e4db5a7559b49abbc2101e9e95e99a817ebff2', 'validated', '{"audio_key":"fe57130c8ecf33169674c2ee637d88c482337451360159c4f7f5d0c51270feda","entity_key":"lx_a2_city_day_capstone_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5030fab4c2fe1598dc441a9521e4db5a7559b49abbc2101e9e95e99a817ebff2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/fe57130c8ecf33169674c2ee637d88c482337451360159c4f7f5d0c51270feda.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_a2_city_day_capstone_01 -> audio/generated/tr-TR/lexical/fe57130c8ecf33169674c2ee637d88c482337451360159c4f7f5d0c51270feda.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('cb4ff9c6-d99f-50c9-b542-1d083fa9a8ef', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_a2_city_day_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '64879f7d6b960a01909762d911a32d4582c20010c5641ee90278b644a9e3b525'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a5216aef-bba4-54e6-8b86-9387568428b8', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('cb4ff9c6-d99f-50c9-b542-1d083fa9a8ef', 1), '64879f7d6b960a01909762d911a32d4582c20010c5641ee90278b644a9e3b525',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/fe57130c8ecf33169674c2ee637d88c482337451360159c4f7f5d0c51270feda.mp3', 966, '2026-09-13 17:08:40.623820', '5030fab4c2fe1598dc441a9521e4db5a7559b49abbc2101e9e95e99a817ebff2', 'validated', '{"audio_key":"fe57130c8ecf33169674c2ee637d88c482337451360159c4f7f5d0c51270feda","entity_key":"wf_a2_city_day_capstone_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5030fab4c2fe1598dc441a9521e4db5a7559b49abbc2101e9e95e99a817ebff2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/fe57130c8ecf33169674c2ee637d88c482337451360159c4f7f5d0c51270feda.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_reasons_and_results_02 -> audio/generated/tr-TR/lexical/ffe6b837ea2a63baa7af1fc327372896bb31ea577a3f39449ef886785ad8da10.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c473feb6-eec3-57ab-a34a-1dce5ebd29c2', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_reasons_and_results_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3b2ac55a465ade4c53448e4145f9e727a082305789a908b79ec87a202d7a2db2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('431e6348-63dd-573c-802b-0a00ae8cbc6f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c473feb6-eec3-57ab-a34a-1dce5ebd29c2', 1), '3b2ac55a465ade4c53448e4145f9e727a082305789a908b79ec87a202d7a2db2',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/ffe6b837ea2a63baa7af1fc327372896bb31ea577a3f39449ef886785ad8da10.mp3', 914, '2026-09-13 17:08:41.598361', 'd787520cd186cee7c7e9aa1095debc0873013c65e11a418d6dcfffa65986097c', 'validated', '{"audio_key":"ffe6b837ea2a63baa7af1fc327372896bb31ea577a3f39449ef886785ad8da10","entity_key":"lx_reasons_and_results_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d787520cd186cee7c7e9aa1095debc0873013c65e11a418d6dcfffa65986097c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/ffe6b837ea2a63baa7af1fc327372896bb31ea577a3f39449ef886785ad8da10.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_reasons_and_results_02 -> audio/generated/tr-TR/lexical/ffe6b837ea2a63baa7af1fc327372896bb31ea577a3f39449ef886785ad8da10.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6e6c51fc-c084-5a6d-bd6f-72b82fd7ef11', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_reasons_and_results_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3b2ac55a465ade4c53448e4145f9e727a082305789a908b79ec87a202d7a2db2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ac736ab8-eca8-56cc-9c0b-acff1470b627', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6e6c51fc-c084-5a6d-bd6f-72b82fd7ef11', 1), '3b2ac55a465ade4c53448e4145f9e727a082305789a908b79ec87a202d7a2db2',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/ffe6b837ea2a63baa7af1fc327372896bb31ea577a3f39449ef886785ad8da10.mp3', 914, '2026-09-13 17:08:41.598361', 'd787520cd186cee7c7e9aa1095debc0873013c65e11a418d6dcfffa65986097c', 'validated', '{"audio_key":"ffe6b837ea2a63baa7af1fc327372896bb31ea577a3f39449ef886785ad8da10","entity_key":"wf_reasons_and_results_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d787520cd186cee7c7e9aa1095debc0873013c65e11a418d6dcfffa65986097c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/ffe6b837ea2a63baa7af1fc327372896bb31ea577a3f39449ef886785ad8da10.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_choices_and_preferences_04 -> audio/generated/tr-TR/utterances/024db93fc6c1976f3e3dbe473220339335500e86c7215d0ec6d6c3f858c66096.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ec2bdd32-cb87-5ada-aea5-f4e675839995', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_choices_and_preferences_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c5dcbe2ed613db20bdf65ca26e801dd21e3d0ad44fae298ffe1a3f89e73feb9f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('821ec9c7-fe36-5128-b6c7-9edee58f501e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ec2bdd32-cb87-5ada-aea5-f4e675839995', 1), 'c5dcbe2ed613db20bdf65ca26e801dd21e3d0ad44fae298ffe1a3f89e73feb9f',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/024db93fc6c1976f3e3dbe473220339335500e86c7215d0ec6d6c3f858c66096.mp3', 1854, '2026-09-13 17:08:41.683047', 'ebc884d165eb1a54fd013fd99aecd21dc93046fac3e8397edc278783f38a2ae8', 'validated', '{"audio_key":"024db93fc6c1976f3e3dbe473220339335500e86c7215d0ec6d6c3f858c66096","entity_key":"u_choices_and_preferences_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ebc884d165eb1a54fd013fd99aecd21dc93046fac3e8397edc278783f38a2ae8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/024db93fc6c1976f3e3dbe473220339335500e86c7215d0ec6d6c3f858c66096.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_choices_and_preferences_02_listen -> audio/generated/tr-TR/utterances/024db93fc6c1976f3e3dbe473220339335500e86c7215d0ec6d6c3f858c66096.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('8ccac20a-f4b3-550e-aff1-f4e4b8fce6e2', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_choices_and_preferences_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c5dcbe2ed613db20bdf65ca26e801dd21e3d0ad44fae298ffe1a3f89e73feb9f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3c7fedc4-e712-5ba7-a66c-47771bb57f48', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('8ccac20a-f4b3-550e-aff1-f4e4b8fce6e2', 1), 'c5dcbe2ed613db20bdf65ca26e801dd21e3d0ad44fae298ffe1a3f89e73feb9f',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/024db93fc6c1976f3e3dbe473220339335500e86c7215d0ec6d6c3f858c66096.mp3', 1854, '2026-09-13 17:08:41.683047', 'ebc884d165eb1a54fd013fd99aecd21dc93046fac3e8397edc278783f38a2ae8', 'validated', '{"audio_key":"024db93fc6c1976f3e3dbe473220339335500e86c7215d0ec6d6c3f858c66096","entity_key":"e_choices_and_preferences_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ebc884d165eb1a54fd013fd99aecd21dc93046fac3e8397edc278783f38a2ae8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/024db93fc6c1976f3e3dbe473220339335500e86c7215d0ec6d6c3f858c66096.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_habits_and_frequency_02 -> audio/generated/tr-TR/utterances/0481346d8ca0e4a199d0a6264f1f6d87de558c4655960a0802ecace181c5f2d5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('dea6134d-2465-5bb6-9925-29c90e913a59', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_habits_and_frequency_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '30731554889eccf6a3791d0cc9795c53c6fb4e4ca0e02a4d2cc7f2bdabcd7ef8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('25577e29-6626-58a8-80c1-e1b5e898d21d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('dea6134d-2465-5bb6-9925-29c90e913a59', 1), '30731554889eccf6a3791d0cc9795c53c6fb4e4ca0e02a4d2cc7f2bdabcd7ef8',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/0481346d8ca0e4a199d0a6264f1f6d87de558c4655960a0802ecace181c5f2d5.mp3', 1906, '2026-09-13 17:08:42.637265', '215e224cea923a9bb6e0aec0d0f77724e4e087b9dda5846f97a3ab32fc36c11b', 'validated', '{"audio_key":"0481346d8ca0e4a199d0a6264f1f6d87de558c4655960a0802ecace181c5f2d5","entity_key":"u_habits_and_frequency_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"215e224cea923a9bb6e0aec0d0f77724e4e087b9dda5846f97a3ab32fc36c11b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/0481346d8ca0e4a199d0a6264f1f6d87de558c4655960a0802ecace181c5f2d5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_habits_and_frequency_01_listen -> audio/generated/tr-TR/utterances/0481346d8ca0e4a199d0a6264f1f6d87de558c4655960a0802ecace181c5f2d5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('7e2deee7-efb8-58f6-93b6-eec02025adc7', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_habits_and_frequency_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '30731554889eccf6a3791d0cc9795c53c6fb4e4ca0e02a4d2cc7f2bdabcd7ef8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1bace71d-7689-5579-bb43-9a744f2d24c8', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('7e2deee7-efb8-58f6-93b6-eec02025adc7', 1), '30731554889eccf6a3791d0cc9795c53c6fb4e4ca0e02a4d2cc7f2bdabcd7ef8',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/0481346d8ca0e4a199d0a6264f1f6d87de558c4655960a0802ecace181c5f2d5.mp3', 1906, '2026-09-13 17:08:42.637265', '215e224cea923a9bb6e0aec0d0f77724e4e087b9dda5846f97a3ab32fc36c11b', 'validated', '{"audio_key":"0481346d8ca0e4a199d0a6264f1f6d87de558c4655960a0802ecace181c5f2d5","entity_key":"e_habits_and_frequency_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"215e224cea923a9bb6e0aec0d0f77724e4e087b9dda5846f97a3ab32fc36c11b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/0481346d8ca0e4a199d0a6264f1f6d87de558c4655960a0802ecace181c5f2d5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_travel_and_hotel_04 -> audio/generated/tr-TR/utterances/05b2571b7969af468be86cd8a97fd1b4cbfef5b6c2cd3f71460552211a0472ff.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('260fe349-e35c-5928-8099-e337619ce931', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_travel_and_hotel_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ffacd7a9823ce5dc2d8f34e5d88389f6de4e8baea9909420a7777ec978232d11'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c253657c-aab5-5f87-8a44-c39ea94cc127', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('260fe349-e35c-5928-8099-e337619ce931', 1), 'ffacd7a9823ce5dc2d8f34e5d88389f6de4e8baea9909420a7777ec978232d11',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/05b2571b7969af468be86cd8a97fd1b4cbfef5b6c2cd3f71460552211a0472ff.mp3', 1697, '2026-09-13 17:08:42.762099', '9624a4b959721a4f793deca6f02e2ab7cdbe66352f41750f864648070f3698e6', 'validated', '{"audio_key":"05b2571b7969af468be86cd8a97fd1b4cbfef5b6c2cd3f71460552211a0472ff","entity_key":"u_travel_and_hotel_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9624a4b959721a4f793deca6f02e2ab7cdbe66352f41750f864648070f3698e6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/05b2571b7969af468be86cd8a97fd1b4cbfef5b6c2cd3f71460552211a0472ff.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_travel_and_hotel_02_listen -> audio/generated/tr-TR/utterances/05b2571b7969af468be86cd8a97fd1b4cbfef5b6c2cd3f71460552211a0472ff.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('87e72495-844f-5f26-8f3b-28c42522feef', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_travel_and_hotel_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ffacd7a9823ce5dc2d8f34e5d88389f6de4e8baea9909420a7777ec978232d11'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a39462c2-c819-5c34-a8bb-319ff0ed3361', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('87e72495-844f-5f26-8f3b-28c42522feef', 1), 'ffacd7a9823ce5dc2d8f34e5d88389f6de4e8baea9909420a7777ec978232d11',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/05b2571b7969af468be86cd8a97fd1b4cbfef5b6c2cd3f71460552211a0472ff.mp3', 1697, '2026-09-13 17:08:42.762099', '9624a4b959721a4f793deca6f02e2ab7cdbe66352f41750f864648070f3698e6', 'validated', '{"audio_key":"05b2571b7969af468be86cd8a97fd1b4cbfef5b6c2cd3f71460552211a0472ff","entity_key":"e_travel_and_hotel_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9624a4b959721a4f793deca6f02e2ab7cdbe66352f41750f864648070f3698e6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/05b2571b7969af468be86cd8a97fd1b4cbfef5b6c2cd3f71460552211a0472ff.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_choices_and_preferences_02 -> audio/generated/tr-TR/utterances/082936a7210895fd7ebc89c8a4ce3c5d452f8b680598135f2b5a83372b45a453.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0c149f06-5545-5e83-9260-0f2a850229e2', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_choices_and_preferences_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '251ba74c0da41810f85a794fd72cb137ef9c85d8c6ee46f3c5de31d8859f3733'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e432a14f-8c54-5cd8-9e75-77154e8f8eea', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0c149f06-5545-5e83-9260-0f2a850229e2', 1), '251ba74c0da41810f85a794fd72cb137ef9c85d8c6ee46f3c5de31d8859f3733',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/082936a7210895fd7ebc89c8a4ce3c5d452f8b680598135f2b5a83372b45a453.mp3', 1697, '2026-09-13 17:08:43.747793', 'c8ed26a408bf238841539d20215a0c591fa1605045b1025ea1aebbbfbf354ab5', 'validated', '{"audio_key":"082936a7210895fd7ebc89c8a4ce3c5d452f8b680598135f2b5a83372b45a453","entity_key":"u_choices_and_preferences_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c8ed26a408bf238841539d20215a0c591fa1605045b1025ea1aebbbfbf354ab5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/082936a7210895fd7ebc89c8a4ce3c5d452f8b680598135f2b5a83372b45a453.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_choices_and_preferences_01_listen -> audio/generated/tr-TR/utterances/082936a7210895fd7ebc89c8a4ce3c5d452f8b680598135f2b5a83372b45a453.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('fb69e11e-3d05-57a3-8864-2808aef9a5af', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_choices_and_preferences_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '251ba74c0da41810f85a794fd72cb137ef9c85d8c6ee46f3c5de31d8859f3733'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a6b0ab7c-9033-5b07-9cce-fee963d4bb6b', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('fb69e11e-3d05-57a3-8864-2808aef9a5af', 1), '251ba74c0da41810f85a794fd72cb137ef9c85d8c6ee46f3c5de31d8859f3733',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/082936a7210895fd7ebc89c8a4ce3c5d452f8b680598135f2b5a83372b45a453.mp3', 1697, '2026-09-13 17:08:43.747793', 'c8ed26a408bf238841539d20215a0c591fa1605045b1025ea1aebbbfbf354ab5', 'validated', '{"audio_key":"082936a7210895fd7ebc89c8a4ce3c5d452f8b680598135f2b5a83372b45a453","entity_key":"e_choices_and_preferences_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c8ed26a408bf238841539d20215a0c591fa1605045b1025ea1aebbbfbf354ab5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/082936a7210895fd7ebc89c8a4ce3c5d452f8b680598135f2b5a83372b45a453.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_past_weekend_03 -> audio/generated/tr-TR/utterances/137dcde8647b76f9f56c8cac22d43009086513b8719ae71e389f0d5afca4a44c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ef87dc3a-e676-5723-a4fc-89028f25ab1e', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_past_weekend_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'efbb1f9612c4fe877cfca91fd93ec64a5dc8564280d86808d59999adc99d2161'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1c36642e-9cf0-525b-82b1-9b5868f3a74c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ef87dc3a-e676-5723-a4fc-89028f25ab1e', 1), 'efbb1f9612c4fe877cfca91fd93ec64a5dc8564280d86808d59999adc99d2161',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/137dcde8647b76f9f56c8cac22d43009086513b8719ae71e389f0d5afca4a44c.mp3', 1384, '2026-09-13 17:08:43.785752', '30c56e3818012362083dbbc60432e8dc511b0b0454482ed1719c4866095ab064', 'validated', '{"audio_key":"137dcde8647b76f9f56c8cac22d43009086513b8719ae71e389f0d5afca4a44c","entity_key":"u_past_weekend_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"30c56e3818012362083dbbc60432e8dc511b0b0454482ed1719c4866095ab064","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/137dcde8647b76f9f56c8cac22d43009086513b8719ae71e389f0d5afca4a44c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_appointments_and_plans_01 -> audio/generated/tr-TR/utterances/1b5f2d9496e35c5cd6b33112e51e1da5b58203a5ad19cdd990ab2769ea2839bb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('bea36b62-559f-5b34-9700-68f48cc43b1a', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_appointments_and_plans_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '50c9d57ee1704dd71bf0a8ba68800669ba23f4521992225c9f75490293c3794d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f9671bab-90ec-5615-b599-5d7eb40911d9', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('bea36b62-559f-5b34-9700-68f48cc43b1a', 1), '50c9d57ee1704dd71bf0a8ba68800669ba23f4521992225c9f75490293c3794d',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/1b5f2d9496e35c5cd6b33112e51e1da5b58203a5ad19cdd990ab2769ea2839bb.mp3', 1567, '2026-09-13 17:08:44.776862', 'cc9cdf388b56e7937be727d826d7b3e496bc729114cb19e3abb27c7c5b90b90b', 'validated', '{"audio_key":"1b5f2d9496e35c5cd6b33112e51e1da5b58203a5ad19cdd990ab2769ea2839bb","entity_key":"u_appointments_and_plans_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cc9cdf388b56e7937be727d826d7b3e496bc729114cb19e3abb27c7c5b90b90b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/1b5f2d9496e35c5cd6b33112e51e1da5b58203a5ad19cdd990ab2769ea2839bb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_comparisons_01 -> audio/generated/tr-TR/utterances/203f9b7a61c1f38c919c8ef153b6dc66da839c8c261ca1a46a1a33e648ce6749.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('5621ec23-7b49-567f-892c-390e2f1d2100', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_comparisons_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b3b86e39375956b0457c81fb97d127ca7895bd7802517d5237916aee4382755e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ad07cb88-938a-5408-8365-48225c252574', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('5621ec23-7b49-567f-892c-390e2f1d2100', 1), 'b3b86e39375956b0457c81fb97d127ca7895bd7802517d5237916aee4382755e',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/203f9b7a61c1f38c919c8ef153b6dc66da839c8c261ca1a46a1a33e648ce6749.mp3', 1619, '2026-09-13 17:08:44.853137', 'ac3a925364b3659436d539a181a6278c5d29e0d1661c8e685ed3de8f0c1657dc', 'validated', '{"audio_key":"203f9b7a61c1f38c919c8ef153b6dc66da839c8c261ca1a46a1a33e648ce6749","entity_key":"u_comparisons_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ac3a925364b3659436d539a181a6278c5d29e0d1661c8e685ed3de8f0c1657dc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/203f9b7a61c1f38c919c8ef153b6dc66da839c8c261ca1a46a1a33e648ce6749.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_appointments_and_plans_03 -> audio/generated/tr-TR/utterances/2505a269454c41cb802d80ab1f3048c395a871878da5f79650f5e3dcdd37812b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('840abc8b-eb1b-5010-8a80-6cfcfb882fc9', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_appointments_and_plans_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '66af5dd38327f3976f271443074db70c784ca32cbca145dff92064cd34ebf714'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('54f641c6-4e15-5fe1-96f3-c95294816290', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('840abc8b-eb1b-5010-8a80-6cfcfb882fc9', 1), '66af5dd38327f3976f271443074db70c784ca32cbca145dff92064cd34ebf714',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/2505a269454c41cb802d80ab1f3048c395a871878da5f79650f5e3dcdd37812b.mp3', 2220, '2026-09-13 17:08:45.927834', 'c012b97e2980bfe5e152df938c89c7cd9efba313b67c1ca4a126c40490602114', 'validated', '{"audio_key":"2505a269454c41cb802d80ab1f3048c395a871878da5f79650f5e3dcdd37812b","entity_key":"u_appointments_and_plans_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c012b97e2980bfe5e152df938c89c7cd9efba313b67c1ca4a126c40490602114","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/2505a269454c41cb802d80ab1f3048c395a871878da5f79650f5e3dcdd37812b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_polite_requests_04 -> audio/generated/tr-TR/utterances/2b35a6fed500f63a16931ff1fbe1feb012973fdb63aadbb79884952d5c5f3d30.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a18cef32-5529-5bc9-8eac-3178817cde4a', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_polite_requests_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8282d07af04806fba33b28f2c5b662824f36723e549e47ba13f63ec58d15b27d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c944e16a-2594-5acd-b335-00f419af342d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a18cef32-5529-5bc9-8eac-3178817cde4a', 1), '8282d07af04806fba33b28f2c5b662824f36723e549e47ba13f63ec58d15b27d',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/2b35a6fed500f63a16931ff1fbe1feb012973fdb63aadbb79884952d5c5f3d30.mp3', 1933, '2026-09-13 17:08:45.936048', '48b0ee3335389b31b9faf8969639c14114b4a6c52eca420f515ff1d29b01bc69', 'validated', '{"audio_key":"2b35a6fed500f63a16931ff1fbe1feb012973fdb63aadbb79884952d5c5f3d30","entity_key":"u_polite_requests_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"48b0ee3335389b31b9faf8969639c14114b4a6c52eca420f515ff1d29b01bc69","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/2b35a6fed500f63a16931ff1fbe1feb012973fdb63aadbb79884952d5c5f3d30.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_polite_requests_02_listen -> audio/generated/tr-TR/utterances/2b35a6fed500f63a16931ff1fbe1feb012973fdb63aadbb79884952d5c5f3d30.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('e738e8cd-eb58-574b-ada2-ff76f95c38c8', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_polite_requests_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8282d07af04806fba33b28f2c5b662824f36723e549e47ba13f63ec58d15b27d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('93c0c3ac-61c2-53d6-ab35-0b357be44c27', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('e738e8cd-eb58-574b-ada2-ff76f95c38c8', 1), '8282d07af04806fba33b28f2c5b662824f36723e549e47ba13f63ec58d15b27d',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/2b35a6fed500f63a16931ff1fbe1feb012973fdb63aadbb79884952d5c5f3d30.mp3', 1933, '2026-09-13 17:08:45.936048', '48b0ee3335389b31b9faf8969639c14114b4a6c52eca420f515ff1d29b01bc69', 'validated', '{"audio_key":"2b35a6fed500f63a16931ff1fbe1feb012973fdb63aadbb79884952d5c5f3d30","entity_key":"e_polite_requests_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"48b0ee3335389b31b9faf8969639c14114b4a6c52eca420f515ff1d29b01bc69","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/2b35a6fed500f63a16931ff1fbe1feb012973fdb63aadbb79884952d5c5f3d30.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_habits_and_frequency_01 -> audio/generated/tr-TR/utterances/30b1255c02c2a5d874eb80586864c3c5230e4d17531d08321962c34817a11a77.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3e439f1e-1c5a-5b71-b16a-31a10bf66d08', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_habits_and_frequency_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f89ed6f9ff6ce915ca6a9c2a8b1669bb381a8d779114ec2f10f592916c863cf5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('21d46a56-f3f5-544f-8788-3defdd43003f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3e439f1e-1c5a-5b71-b16a-31a10bf66d08', 1), 'f89ed6f9ff6ce915ca6a9c2a8b1669bb381a8d779114ec2f10f592916c863cf5',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/30b1255c02c2a5d874eb80586864c3c5230e4d17531d08321962c34817a11a77.mp3', 1697, '2026-09-13 17:08:46.967454', '41378d3353f776177db604e56a8d0c713ad1ff66dbe33ae3a8df357e58d1357e', 'validated', '{"audio_key":"30b1255c02c2a5d874eb80586864c3c5230e4d17531d08321962c34817a11a77","entity_key":"u_habits_and_frequency_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"41378d3353f776177db604e56a8d0c713ad1ff66dbe33ae3a8df357e58d1357e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/30b1255c02c2a5d874eb80586864c3c5230e4d17531d08321962c34817a11a77.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_reasons_and_results_03 -> audio/generated/tr-TR/utterances/37717beddc0a27c96c1b0ece127ac2a4eea2c7d5dd6d240716ea5dca543a812d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0625392f-4c4b-5166-9a08-7557a4e03bf2', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_reasons_and_results_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5b9a6866a8f3ba7a51f3df4e50ee6edccc0616ced9b01fb4a656b8a9235b2aa1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('30bb2447-8aaa-517a-9124-90703bf3ca84', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0625392f-4c4b-5166-9a08-7557a4e03bf2', 1), '5b9a6866a8f3ba7a51f3df4e50ee6edccc0616ced9b01fb4a656b8a9235b2aa1',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/37717beddc0a27c96c1b0ece127ac2a4eea2c7d5dd6d240716ea5dca543a812d.mp3', 1567, '2026-09-13 17:08:46.956218', '1449ffef0e2454965d99a18494c00937da3fc4b4460ab8d26365214ee2a1cdba', 'validated', '{"audio_key":"37717beddc0a27c96c1b0ece127ac2a4eea2c7d5dd6d240716ea5dca543a812d","entity_key":"u_reasons_and_results_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1449ffef0e2454965d99a18494c00937da3fc4b4460ab8d26365214ee2a1cdba","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/37717beddc0a27c96c1b0ece127ac2a4eea2c7d5dd6d240716ea5dca543a812d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_travel_and_hotel_03 -> audio/generated/tr-TR/utterances/4578c3024c46dd4d869184a0b56934e6ec2661d82a10ed4a2fcdb99bd9c7e771.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('49ed5340-3184-5755-a616-46f5644b7ffb', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_travel_and_hotel_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '29e5be51f5c3517b26d94c00f4739a95eab2d7351ec770eaae1c5664533ad263'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f5b7acf1-6917-50bb-862a-158b1682fcef', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('49ed5340-3184-5755-a616-46f5644b7ffb', 1), '29e5be51f5c3517b26d94c00f4739a95eab2d7351ec770eaae1c5664533ad263',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/4578c3024c46dd4d869184a0b56934e6ec2661d82a10ed4a2fcdb99bd9c7e771.mp3', 1750, '2026-09-13 17:08:47.987210', 'dfc12e77e3e1fe7b076b31905b47f8703cafb20c523721f526561a79bee43b50', 'validated', '{"audio_key":"4578c3024c46dd4d869184a0b56934e6ec2661d82a10ed4a2fcdb99bd9c7e771","entity_key":"u_travel_and_hotel_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dfc12e77e3e1fe7b076b31905b47f8703cafb20c523721f526561a79bee43b50","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/4578c3024c46dd4d869184a0b56934e6ec2661d82a10ed4a2fcdb99bd9c7e771.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_travel_and_hotel_02 -> audio/generated/tr-TR/utterances/459d3a8fd5406996a2dee2ead97234cbf7ed44445b76a0985d90529a979b2d59.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9129eddd-ee06-55b0-9fac-08c84f6ff9a3', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_travel_and_hotel_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd60148e27319bc14ea7992c24e856c0ccf29fc266173302d3636586566674ad5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('106b48c4-3911-54a4-88e0-c6911a57b95d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9129eddd-ee06-55b0-9fac-08c84f6ff9a3', 1), 'd60148e27319bc14ea7992c24e856c0ccf29fc266173302d3636586566674ad5',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/459d3a8fd5406996a2dee2ead97234cbf7ed44445b76a0985d90529a979b2d59.mp3', 1567, '2026-09-13 17:08:47.988260', '66564b38a66e50cc8574485f7d02e87c4a46dc54758ca03a6ea72ca2f6d01628', 'validated', '{"audio_key":"459d3a8fd5406996a2dee2ead97234cbf7ed44445b76a0985d90529a979b2d59","entity_key":"u_travel_and_hotel_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"66564b38a66e50cc8574485f7d02e87c4a46dc54758ca03a6ea72ca2f6d01628","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/459d3a8fd5406996a2dee2ead97234cbf7ed44445b76a0985d90529a979b2d59.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_travel_and_hotel_01_listen -> audio/generated/tr-TR/utterances/459d3a8fd5406996a2dee2ead97234cbf7ed44445b76a0985d90529a979b2d59.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('2635ae54-a084-5e47-bea9-6da575d70a4e', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_travel_and_hotel_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd60148e27319bc14ea7992c24e856c0ccf29fc266173302d3636586566674ad5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a707f2f6-8f0d-59df-8fbd-77b480fe2615', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('2635ae54-a084-5e47-bea9-6da575d70a4e', 1), 'd60148e27319bc14ea7992c24e856c0ccf29fc266173302d3636586566674ad5',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/459d3a8fd5406996a2dee2ead97234cbf7ed44445b76a0985d90529a979b2d59.mp3', 1567, '2026-09-13 17:08:47.988260', '66564b38a66e50cc8574485f7d02e87c4a46dc54758ca03a6ea72ca2f6d01628', 'validated', '{"audio_key":"459d3a8fd5406996a2dee2ead97234cbf7ed44445b76a0985d90529a979b2d59","entity_key":"e_travel_and_hotel_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"66564b38a66e50cc8574485f7d02e87c4a46dc54758ca03a6ea72ca2f6d01628","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/459d3a8fd5406996a2dee2ead97234cbf7ed44445b76a0985d90529a979b2d59.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_appointments_and_plans_04 -> audio/generated/tr-TR/utterances/5950f6b08ce8b0cccfa841acfe533ba348a337316357fadbfc7b1fff6c7ae5a5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('275f4ccc-f513-5fde-aad9-328996d84a04', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_appointments_and_plans_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3a98a585df1da482078a9033aeb472ec7d20cbc468e1618f60b31c59023077ce'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9745f899-5180-5451-afdc-2d0808468f56', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('275f4ccc-f513-5fde-aad9-328996d84a04', 1), '3a98a585df1da482078a9033aeb472ec7d20cbc468e1618f60b31c59023077ce',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/5950f6b08ce8b0cccfa841acfe533ba348a337316357fadbfc7b1fff6c7ae5a5.mp3', 1802, '2026-09-13 17:08:49.042386', 'b51782e1318df25c8ec5fc8b3b59e048b388603c77ecabbc4526fc3a170182e3', 'validated', '{"audio_key":"5950f6b08ce8b0cccfa841acfe533ba348a337316357fadbfc7b1fff6c7ae5a5","entity_key":"u_appointments_and_plans_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b51782e1318df25c8ec5fc8b3b59e048b388603c77ecabbc4526fc3a170182e3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/5950f6b08ce8b0cccfa841acfe533ba348a337316357fadbfc7b1fff6c7ae5a5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_appointments_and_plans_02_listen -> audio/generated/tr-TR/utterances/5950f6b08ce8b0cccfa841acfe533ba348a337316357fadbfc7b1fff6c7ae5a5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('3ca5c8db-1464-540d-b5c4-e76463e1d64c', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_appointments_and_plans_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3a98a585df1da482078a9033aeb472ec7d20cbc468e1618f60b31c59023077ce'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8f5e368f-81c1-5b67-ba0c-ca06da96dd0c', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('3ca5c8db-1464-540d-b5c4-e76463e1d64c', 1), '3a98a585df1da482078a9033aeb472ec7d20cbc468e1618f60b31c59023077ce',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/5950f6b08ce8b0cccfa841acfe533ba348a337316357fadbfc7b1fff6c7ae5a5.mp3', 1802, '2026-09-13 17:08:49.042386', 'b51782e1318df25c8ec5fc8b3b59e048b388603c77ecabbc4526fc3a170182e3', 'validated', '{"audio_key":"5950f6b08ce8b0cccfa841acfe533ba348a337316357fadbfc7b1fff6c7ae5a5","entity_key":"e_appointments_and_plans_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b51782e1318df25c8ec5fc8b3b59e048b388603c77ecabbc4526fc3a170182e3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/5950f6b08ce8b0cccfa841acfe533ba348a337316357fadbfc7b1fff6c7ae5a5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_past_weekend_04 -> audio/generated/tr-TR/utterances/5a06c2986288637648c0ebb9ef459c6c0ea4590246107b6637937989c562b4a1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e264fbbb-516b-5e84-a455-7e1ca60b07e3', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_past_weekend_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '99678ab6e7e94d08b92505f6f01be5956beb4d076b4f11922ad5240f344f5533'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3b3159ca-2493-5451-b2a9-da02bdf46e45', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e264fbbb-516b-5e84-a455-7e1ca60b07e3', 1), '99678ab6e7e94d08b92505f6f01be5956beb4d076b4f11922ad5240f344f5533',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/5a06c2986288637648c0ebb9ef459c6c0ea4590246107b6637937989c562b4a1.mp3', 1488, '2026-09-13 17:08:48.996485', '6e440cf45f3c34c73414e9b3ed08ab2b6e48fff16478c5ef9a8927fb70c2dab7', 'validated', '{"audio_key":"5a06c2986288637648c0ebb9ef459c6c0ea4590246107b6637937989c562b4a1","entity_key":"u_past_weekend_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6e440cf45f3c34c73414e9b3ed08ab2b6e48fff16478c5ef9a8927fb70c2dab7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/5a06c2986288637648c0ebb9ef459c6c0ea4590246107b6637937989c562b4a1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_past_weekend_02_listen -> audio/generated/tr-TR/utterances/5a06c2986288637648c0ebb9ef459c6c0ea4590246107b6637937989c562b4a1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('00389699-b5dd-5c0c-bffb-b55db0e44d70', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_past_weekend_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '99678ab6e7e94d08b92505f6f01be5956beb4d076b4f11922ad5240f344f5533'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0c01a6c6-4b16-5698-93a6-928291aba496', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('00389699-b5dd-5c0c-bffb-b55db0e44d70', 1), '99678ab6e7e94d08b92505f6f01be5956beb4d076b4f11922ad5240f344f5533',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/5a06c2986288637648c0ebb9ef459c6c0ea4590246107b6637937989c562b4a1.mp3', 1488, '2026-09-13 17:08:48.996485', '6e440cf45f3c34c73414e9b3ed08ab2b6e48fff16478c5ef9a8927fb70c2dab7', 'validated', '{"audio_key":"5a06c2986288637648c0ebb9ef459c6c0ea4590246107b6637937989c562b4a1","entity_key":"e_past_weekend_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6e440cf45f3c34c73414e9b3ed08ab2b6e48fff16478c5ef9a8927fb70c2dab7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/5a06c2986288637648c0ebb9ef459c6c0ea4590246107b6637937989c562b4a1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_health_and_advice_04 -> audio/generated/tr-TR/utterances/5d0743bf76054d685b7399d4ec8602e80b863d879db00499ead0519cfedef55a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('69635f43-a933-5eae-9c90-7228614a383f', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_health_and_advice_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ee99a07a8ffffa7411a1a233e8a9ee2765905e182b8b269cf26bacdd7912fb52'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('61b1503c-c0fa-5be4-83d3-ce8ea7314b85', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('69635f43-a933-5eae-9c90-7228614a383f', 1), 'ee99a07a8ffffa7411a1a233e8a9ee2765905e182b8b269cf26bacdd7912fb52',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/5d0743bf76054d685b7399d4ec8602e80b863d879db00499ead0519cfedef55a.mp3', 1750, '2026-09-13 17:08:50.072290', '876896535c7ab726014adbc63f1121e416b6438d0935d99b6fc7261b1da4db09', 'validated', '{"audio_key":"5d0743bf76054d685b7399d4ec8602e80b863d879db00499ead0519cfedef55a","entity_key":"u_health_and_advice_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"876896535c7ab726014adbc63f1121e416b6438d0935d99b6fc7261b1da4db09","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/5d0743bf76054d685b7399d4ec8602e80b863d879db00499ead0519cfedef55a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_health_and_advice_02_listen -> audio/generated/tr-TR/utterances/5d0743bf76054d685b7399d4ec8602e80b863d879db00499ead0519cfedef55a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('ae9c8670-064b-5222-aade-a40d1cdeee95', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_health_and_advice_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ee99a07a8ffffa7411a1a233e8a9ee2765905e182b8b269cf26bacdd7912fb52'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('54120ae8-b324-502a-b267-2f5990c042d4', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('ae9c8670-064b-5222-aade-a40d1cdeee95', 1), 'ee99a07a8ffffa7411a1a233e8a9ee2765905e182b8b269cf26bacdd7912fb52',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/5d0743bf76054d685b7399d4ec8602e80b863d879db00499ead0519cfedef55a.mp3', 1750, '2026-09-13 17:08:50.072290', '876896535c7ab726014adbc63f1121e416b6438d0935d99b6fc7261b1da4db09', 'validated', '{"audio_key":"5d0743bf76054d685b7399d4ec8602e80b863d879db00499ead0519cfedef55a","entity_key":"e_health_and_advice_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"876896535c7ab726014adbc63f1121e416b6438d0935d99b6fc7261b1da4db09","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/5d0743bf76054d685b7399d4ec8602e80b863d879db00499ead0519cfedef55a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_past_weekend_02 -> audio/generated/tr-TR/utterances/60b8342b3320e5ed4fd8d907ff8624bd34c428db09a9742e9ea8126bf5c3e8f8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('050da2ad-b030-50a3-a046-db1d2a592de2', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_past_weekend_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '03b5ed3d0c7e6746607da802e721f0b87d3ce079560bf99488290243986844f2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ecd4bc6f-f818-5833-bd68-6aa1249e5fc3', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('050da2ad-b030-50a3-a046-db1d2a592de2', 1), '03b5ed3d0c7e6746607da802e721f0b87d3ce079560bf99488290243986844f2',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/60b8342b3320e5ed4fd8d907ff8624bd34c428db09a9742e9ea8126bf5c3e8f8.mp3', 1697, '2026-09-13 17:08:50.098034', '58cce51acdc3bca4ebcd8b9abdb543693a14b00acfd50dd4c20e70d945a95bf6', 'validated', '{"audio_key":"60b8342b3320e5ed4fd8d907ff8624bd34c428db09a9742e9ea8126bf5c3e8f8","entity_key":"u_past_weekend_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"58cce51acdc3bca4ebcd8b9abdb543693a14b00acfd50dd4c20e70d945a95bf6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/60b8342b3320e5ed4fd8d907ff8624bd34c428db09a9742e9ea8126bf5c3e8f8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_past_weekend_01_listen -> audio/generated/tr-TR/utterances/60b8342b3320e5ed4fd8d907ff8624bd34c428db09a9742e9ea8126bf5c3e8f8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('b2c4fd8e-121c-5db6-8cb3-61a3feeec87d', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_past_weekend_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '03b5ed3d0c7e6746607da802e721f0b87d3ce079560bf99488290243986844f2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ac7f839a-65b4-5c8a-8732-86f1d81e2147', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('b2c4fd8e-121c-5db6-8cb3-61a3feeec87d', 1), '03b5ed3d0c7e6746607da802e721f0b87d3ce079560bf99488290243986844f2',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/60b8342b3320e5ed4fd8d907ff8624bd34c428db09a9742e9ea8126bf5c3e8f8.mp3', 1697, '2026-09-13 17:08:50.098034', '58cce51acdc3bca4ebcd8b9abdb543693a14b00acfd50dd4c20e70d945a95bf6', 'validated', '{"audio_key":"60b8342b3320e5ed4fd8d907ff8624bd34c428db09a9742e9ea8126bf5c3e8f8","entity_key":"e_past_weekend_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"58cce51acdc3bca4ebcd8b9abdb543693a14b00acfd50dd4c20e70d945a95bf6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/60b8342b3320e5ed4fd8d907ff8624bd34c428db09a9742e9ea8126bf5c3e8f8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_polite_requests_02 -> audio/generated/tr-TR/utterances/61c8a900dce0627f51ccf27c9c91d1dc648ec78aa9f470d5a7512d8178408a88.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e8b037ec-ff71-5b9b-ae1e-713c9a154962', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_polite_requests_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3a7949e0a5f15b805ff954bbb7eb38fbc331e13648734d96fe2d56eb662b0ba7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9861f28e-a042-5ec0-a26b-a69d52bec52d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e8b037ec-ff71-5b9b-ae1e-713c9a154962', 1), '3a7949e0a5f15b805ff954bbb7eb38fbc331e13648734d96fe2d56eb662b0ba7',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/61c8a900dce0627f51ccf27c9c91d1dc648ec78aa9f470d5a7512d8178408a88.mp3', 1854, '2026-09-13 17:08:51.153547', 'eca71d64bd20d7642e262efc8bf05a4eb5e4e2aba8eba3b71114dbbb052b8f9c', 'validated', '{"audio_key":"61c8a900dce0627f51ccf27c9c91d1dc648ec78aa9f470d5a7512d8178408a88","entity_key":"u_polite_requests_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"eca71d64bd20d7642e262efc8bf05a4eb5e4e2aba8eba3b71114dbbb052b8f9c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/61c8a900dce0627f51ccf27c9c91d1dc648ec78aa9f470d5a7512d8178408a88.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_polite_requests_01_listen -> audio/generated/tr-TR/utterances/61c8a900dce0627f51ccf27c9c91d1dc648ec78aa9f470d5a7512d8178408a88.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('f0252b9f-c628-58d8-81f5-36fb2242564c', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_polite_requests_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3a7949e0a5f15b805ff954bbb7eb38fbc331e13648734d96fe2d56eb662b0ba7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4545df1c-f67b-5e4e-bdb7-c3f595305ba8', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('f0252b9f-c628-58d8-81f5-36fb2242564c', 1), '3a7949e0a5f15b805ff954bbb7eb38fbc331e13648734d96fe2d56eb662b0ba7',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/61c8a900dce0627f51ccf27c9c91d1dc648ec78aa9f470d5a7512d8178408a88.mp3', 1854, '2026-09-13 17:08:51.153547', 'eca71d64bd20d7642e262efc8bf05a4eb5e4e2aba8eba3b71114dbbb052b8f9c', 'validated', '{"audio_key":"61c8a900dce0627f51ccf27c9c91d1dc648ec78aa9f470d5a7512d8178408a88","entity_key":"e_polite_requests_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"eca71d64bd20d7642e262efc8bf05a4eb5e4e2aba8eba3b71114dbbb052b8f9c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/61c8a900dce0627f51ccf27c9c91d1dc648ec78aa9f470d5a7512d8178408a88.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_polite_requests_01 -> audio/generated/tr-TR/utterances/649917c0cd21ad84f1107b2556e354998ad73b6029916c340af952f021ff66e6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('13f7a137-b089-5714-b0e3-c481604f9188', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_polite_requests_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd0fa6a89cc45c565bafa56732edfa21a364aacb7aafdbf95cd2a6ca3f1995586'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('18400687-b96b-5141-b6c6-99db528d7627', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('13f7a137-b089-5714-b0e3-c481604f9188', 1), 'd0fa6a89cc45c565bafa56732edfa21a364aacb7aafdbf95cd2a6ca3f1995586',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/649917c0cd21ad84f1107b2556e354998ad73b6029916c340af952f021ff66e6.mp3', 1671, '2026-09-13 17:08:51.119890', '534bb3938af2b8c7220292f6e3ad3da8d5e4daa1cccb7e6e6df618a5b00896df', 'validated', '{"audio_key":"649917c0cd21ad84f1107b2556e354998ad73b6029916c340af952f021ff66e6","entity_key":"u_polite_requests_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"534bb3938af2b8c7220292f6e3ad3da8d5e4daa1cccb7e6e6df618a5b00896df","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/649917c0cd21ad84f1107b2556e354998ad73b6029916c340af952f021ff66e6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_reasons_and_results_02 -> audio/generated/tr-TR/utterances/7082c50a79051206806cea19b811c7b7240f79e46ba75c31e0be50c27f49e29c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f6c1ba36-5c87-529f-a9b0-261588ce7b75', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_reasons_and_results_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '157cb6652b3aa5a576555570f78bb0d65fa0f79969b152e68ac9416e86684597'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fda5d778-cbaa-5261-b1e5-e62b17052880', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f6c1ba36-5c87-529f-a9b0-261588ce7b75', 1), '157cb6652b3aa5a576555570f78bb0d65fa0f79969b152e68ac9416e86684597',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/7082c50a79051206806cea19b811c7b7240f79e46ba75c31e0be50c27f49e29c.mp3', 1436, '2026-09-13 17:08:52.118932', '3901244e3f5bb3def40700f33596b442307c5b103c015acd35d0092ced0cdedf', 'validated', '{"audio_key":"7082c50a79051206806cea19b811c7b7240f79e46ba75c31e0be50c27f49e29c","entity_key":"u_reasons_and_results_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3901244e3f5bb3def40700f33596b442307c5b103c015acd35d0092ced0cdedf","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/7082c50a79051206806cea19b811c7b7240f79e46ba75c31e0be50c27f49e29c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_reasons_and_results_01_listen -> audio/generated/tr-TR/utterances/7082c50a79051206806cea19b811c7b7240f79e46ba75c31e0be50c27f49e29c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('e90d8cd0-c6cb-5ffe-8a55-d54788b6c1a7', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_reasons_and_results_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '157cb6652b3aa5a576555570f78bb0d65fa0f79969b152e68ac9416e86684597'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1f2d38af-070c-5db6-93e6-29b39ed6a260', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('e90d8cd0-c6cb-5ffe-8a55-d54788b6c1a7', 1), '157cb6652b3aa5a576555570f78bb0d65fa0f79969b152e68ac9416e86684597',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/7082c50a79051206806cea19b811c7b7240f79e46ba75c31e0be50c27f49e29c.mp3', 1436, '2026-09-13 17:08:52.118932', '3901244e3f5bb3def40700f33596b442307c5b103c015acd35d0092ced0cdedf', 'validated', '{"audio_key":"7082c50a79051206806cea19b811c7b7240f79e46ba75c31e0be50c27f49e29c","entity_key":"e_reasons_and_results_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3901244e3f5bb3def40700f33596b442307c5b103c015acd35d0092ced0cdedf","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/7082c50a79051206806cea19b811c7b7240f79e46ba75c31e0be50c27f49e29c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_comparisons_03 -> audio/generated/tr-TR/utterances/7610c943559679ddf04868c9898e76b16a7754be8a1e7471e398bb0cc5cc1d6f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a25b3c3f-aad1-5677-9042-2d021ecfcd92', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_comparisons_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fb23f422e480173b3a672346d7ff66d23b4ea27be9849eb49d06e30f59cfbc81'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('db4a951a-f3cd-5c47-911f-b9862b59bcd0', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a25b3c3f-aad1-5677-9042-2d021ecfcd92', 1), 'fb23f422e480173b3a672346d7ff66d23b4ea27be9849eb49d06e30f59cfbc81',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/7610c943559679ddf04868c9898e76b16a7754be8a1e7471e398bb0cc5cc1d6f.mp3', 1671, '2026-09-13 17:08:52.174762', '96bdbbd97bd7373d03a34a4f386e2946201dce0b1376914d5715a4ef8cba980a', 'validated', '{"audio_key":"7610c943559679ddf04868c9898e76b16a7754be8a1e7471e398bb0cc5cc1d6f","entity_key":"u_comparisons_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"96bdbbd97bd7373d03a34a4f386e2946201dce0b1376914d5715a4ef8cba980a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/7610c943559679ddf04868c9898e76b16a7754be8a1e7471e398bb0cc5cc1d6f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_comparisons_02 -> audio/generated/tr-TR/utterances/79f77c6e8870914f4d58dfffcb3ab8904b9c66d7064c662f4540a4bb57978ebb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('4fff746a-7197-52af-8206-6c4372b8452d', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_comparisons_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a6e644a0920893c6127290a18035a192f807f3f02ac36d947520d24c14ddb865'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('76fc6118-a6ed-5732-bc95-1af31556003e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('4fff746a-7197-52af-8206-6c4372b8452d', 1), 'a6e644a0920893c6127290a18035a192f807f3f02ac36d947520d24c14ddb865',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/79f77c6e8870914f4d58dfffcb3ab8904b9c66d7064c662f4540a4bb57978ebb.mp3', 1567, '2026-09-13 17:08:53.143477', '4d42776ab1988fc34f3ac6664fe04aacf0ce6f168894207b2edd94b968b8fc03', 'validated', '{"audio_key":"79f77c6e8870914f4d58dfffcb3ab8904b9c66d7064c662f4540a4bb57978ebb","entity_key":"u_comparisons_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4d42776ab1988fc34f3ac6664fe04aacf0ce6f168894207b2edd94b968b8fc03","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/79f77c6e8870914f4d58dfffcb3ab8904b9c66d7064c662f4540a4bb57978ebb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_comparisons_01_listen -> audio/generated/tr-TR/utterances/79f77c6e8870914f4d58dfffcb3ab8904b9c66d7064c662f4540a4bb57978ebb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('d1550dfe-22d9-5ffd-bc2c-f47c7d4269e8', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_comparisons_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a6e644a0920893c6127290a18035a192f807f3f02ac36d947520d24c14ddb865'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eff7dbd3-7672-56c1-8437-80339eafe056', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('d1550dfe-22d9-5ffd-bc2c-f47c7d4269e8', 1), 'a6e644a0920893c6127290a18035a192f807f3f02ac36d947520d24c14ddb865',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/79f77c6e8870914f4d58dfffcb3ab8904b9c66d7064c662f4540a4bb57978ebb.mp3', 1567, '2026-09-13 17:08:53.143477', '4d42776ab1988fc34f3ac6664fe04aacf0ce6f168894207b2edd94b968b8fc03', 'validated', '{"audio_key":"79f77c6e8870914f4d58dfffcb3ab8904b9c66d7064c662f4540a4bb57978ebb","entity_key":"e_comparisons_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4d42776ab1988fc34f3ac6664fe04aacf0ce6f168894207b2edd94b968b8fc03","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/79f77c6e8870914f4d58dfffcb3ab8904b9c66d7064c662f4540a4bb57978ebb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_habits_and_frequency_03 -> audio/generated/tr-TR/utterances/7b5a51d3b7b84aad0dae9c81270492deee7f50ecca4a65cb2b012a59ebf86e22.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('1e00e61d-c562-5a8f-94e5-e6b30be25b96', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_habits_and_frequency_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eca106b37f18017ddaba02b7849bfadf637ffb6d3996201f75833acb666c0186'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9431f873-54cd-50a9-a513-f5d0fed3ce56', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('1e00e61d-c562-5a8f-94e5-e6b30be25b96', 1), 'eca106b37f18017ddaba02b7849bfadf637ffb6d3996201f75833acb666c0186',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/7b5a51d3b7b84aad0dae9c81270492deee7f50ecca4a65cb2b012a59ebf86e22.mp3', 1567, '2026-09-13 17:08:53.197030', 'e6a898c833a0e75562b68bec1eac572b89dad92ba8a9951f17f7b46ee966f496', 'validated', '{"audio_key":"7b5a51d3b7b84aad0dae9c81270492deee7f50ecca4a65cb2b012a59ebf86e22","entity_key":"u_habits_and_frequency_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e6a898c833a0e75562b68bec1eac572b89dad92ba8a9951f17f7b46ee966f496","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/7b5a51d3b7b84aad0dae9c81270492deee7f50ecca4a65cb2b012a59ebf86e22.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_health_and_advice_01 -> audio/generated/tr-TR/utterances/7fc7e81f0ed6f8a3a1b65cd8b3948c78c0aeb190415fb25b6cb7a3915bcf08b5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d93ec853-57eb-57b3-b291-57a305671e61', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_health_and_advice_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e69c0210833a7f56129980139000067595b98dd9ec6fc01feb2ae9e9d81c53b5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('13c186f9-f035-591a-9a21-2f7a23793813', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d93ec853-57eb-57b3-b291-57a305671e61', 1), 'e69c0210833a7f56129980139000067595b98dd9ec6fc01feb2ae9e9d81c53b5',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/7fc7e81f0ed6f8a3a1b65cd8b3948c78c0aeb190415fb25b6cb7a3915bcf08b5.mp3', 1280, '2026-09-13 17:08:54.153095', 'b75dbde6e2876f4b3ac4fe2afebface2c513852b952c57b94d79aead750fb36d', 'validated', '{"audio_key":"7fc7e81f0ed6f8a3a1b65cd8b3948c78c0aeb190415fb25b6cb7a3915bcf08b5","entity_key":"u_health_and_advice_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b75dbde6e2876f4b3ac4fe2afebface2c513852b952c57b94d79aead750fb36d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/7fc7e81f0ed6f8a3a1b65cd8b3948c78c0aeb190415fb25b6cb7a3915bcf08b5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_past_weekend_01 -> audio/generated/tr-TR/utterances/8715c3cb2d47a0bb86f4f6135b7cb7edd776490085be32237ff9aaf7007ed316.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('df6e5008-0861-5566-8eef-1886068de5cc', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_past_weekend_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6b311ff34cb7e770c1cef7c134648f58b08902081da97f84885e29d72817e681'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d07aa05d-638d-5622-8eb1-c7993cf1f690', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('df6e5008-0861-5566-8eef-1886068de5cc', 1), '6b311ff34cb7e770c1cef7c134648f58b08902081da97f84885e29d72817e681',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/8715c3cb2d47a0bb86f4f6135b7cb7edd776490085be32237ff9aaf7007ed316.mp3', 1906, '2026-09-13 17:08:54.237717', '97665dad583ee8a1d6c45d44ace10468e02f86edeb8731d2ee6a84e91105976d', 'validated', '{"audio_key":"8715c3cb2d47a0bb86f4f6135b7cb7edd776490085be32237ff9aaf7007ed316","entity_key":"u_past_weekend_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"97665dad583ee8a1d6c45d44ace10468e02f86edeb8731d2ee6a84e91105976d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/8715c3cb2d47a0bb86f4f6135b7cb7edd776490085be32237ff9aaf7007ed316.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_health_and_advice_02 -> audio/generated/tr-TR/utterances/884df553e11ddb8d7fa0d87e90845b4c372dc8469c68a3d1695ae1e69ba6a98b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('1d7d04f0-f07b-56d5-84a8-f821120daa23', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_health_and_advice_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '15c94b0416f7cebfd718125c0da4d637b4c2a196a2ad74dfdb43044c74f36d44'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ffa1a870-0f81-5c66-b93e-751e54322f6c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('1d7d04f0-f07b-56d5-84a8-f821120daa23', 1), '15c94b0416f7cebfd718125c0da4d637b4c2a196a2ad74dfdb43044c74f36d44',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/884df553e11ddb8d7fa0d87e90845b4c372dc8469c68a3d1695ae1e69ba6a98b.mp3', 1671, '2026-09-13 17:08:55.192808', '28e9e69282ef814d8b6cdb7c8b3a253210df162c6d2932b481f6255f82ff2611', 'validated', '{"audio_key":"884df553e11ddb8d7fa0d87e90845b4c372dc8469c68a3d1695ae1e69ba6a98b","entity_key":"u_health_and_advice_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"28e9e69282ef814d8b6cdb7c8b3a253210df162c6d2932b481f6255f82ff2611","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/884df553e11ddb8d7fa0d87e90845b4c372dc8469c68a3d1695ae1e69ba6a98b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_health_and_advice_01_listen -> audio/generated/tr-TR/utterances/884df553e11ddb8d7fa0d87e90845b4c372dc8469c68a3d1695ae1e69ba6a98b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('7b65c779-7fd8-509d-8db0-f31b70772135', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_health_and_advice_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '15c94b0416f7cebfd718125c0da4d637b4c2a196a2ad74dfdb43044c74f36d44'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0a2928f6-e47b-573f-b9d7-66ef58ee25a0', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('7b65c779-7fd8-509d-8db0-f31b70772135', 1), '15c94b0416f7cebfd718125c0da4d637b4c2a196a2ad74dfdb43044c74f36d44',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/884df553e11ddb8d7fa0d87e90845b4c372dc8469c68a3d1695ae1e69ba6a98b.mp3', 1671, '2026-09-13 17:08:55.192808', '28e9e69282ef814d8b6cdb7c8b3a253210df162c6d2932b481f6255f82ff2611', 'validated', '{"audio_key":"884df553e11ddb8d7fa0d87e90845b4c372dc8469c68a3d1695ae1e69ba6a98b","entity_key":"e_health_and_advice_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"28e9e69282ef814d8b6cdb7c8b3a253210df162c6d2932b481f6255f82ff2611","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/884df553e11ddb8d7fa0d87e90845b4c372dc8469c68a3d1695ae1e69ba6a98b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_a2_city_day_capstone_04 -> audio/generated/tr-TR/utterances/8f039edf88bc1259287fef1f1fc73d92aa1c23ee03af33d7aab9a495fe219213.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('48ee49db-88f1-58f8-8198-ad31ed338728', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_a2_city_day_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '85c29b682e8a45eec8ab334fe39c75ba70b5c04ab0b929ccf7934ac4ca0d5ee5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e1b73fa6-af93-59f6-bfe0-b71f1940e4fe', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('48ee49db-88f1-58f8-8198-ad31ed338728', 1), '85c29b682e8a45eec8ab334fe39c75ba70b5c04ab0b929ccf7934ac4ca0d5ee5',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/8f039edf88bc1259287fef1f1fc73d92aa1c23ee03af33d7aab9a495fe219213.mp3', 1619, '2026-09-13 17:08:55.249943', 'b6a4b1877aec73ba6c52c7cd769f0a432db162c4adfc7068d5c8130c60f75b0c', 'validated', '{"audio_key":"8f039edf88bc1259287fef1f1fc73d92aa1c23ee03af33d7aab9a495fe219213","entity_key":"u_a2_city_day_capstone_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b6a4b1877aec73ba6c52c7cd769f0a432db162c4adfc7068d5c8130c60f75b0c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/8f039edf88bc1259287fef1f1fc73d92aa1c23ee03af33d7aab9a495fe219213.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_a2_city_day_capstone_02_listen -> audio/generated/tr-TR/utterances/8f039edf88bc1259287fef1f1fc73d92aa1c23ee03af33d7aab9a495fe219213.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('73b5176a-8268-5c0b-a1ea-c114c0abfb64', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_a2_city_day_capstone_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '85c29b682e8a45eec8ab334fe39c75ba70b5c04ab0b929ccf7934ac4ca0d5ee5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('19c81e2c-8568-519f-b455-8fe82ff9add7', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('73b5176a-8268-5c0b-a1ea-c114c0abfb64', 1), '85c29b682e8a45eec8ab334fe39c75ba70b5c04ab0b929ccf7934ac4ca0d5ee5',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/8f039edf88bc1259287fef1f1fc73d92aa1c23ee03af33d7aab9a495fe219213.mp3', 1619, '2026-09-13 17:08:55.249943', 'b6a4b1877aec73ba6c52c7cd769f0a432db162c4adfc7068d5c8130c60f75b0c', 'validated', '{"audio_key":"8f039edf88bc1259287fef1f1fc73d92aa1c23ee03af33d7aab9a495fe219213","entity_key":"e_a2_city_day_capstone_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b6a4b1877aec73ba6c52c7cd769f0a432db162c4adfc7068d5c8130c60f75b0c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/8f039edf88bc1259287fef1f1fc73d92aa1c23ee03af33d7aab9a495fe219213.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_health_and_advice_03 -> audio/generated/tr-TR/utterances/98eed05183e6cf93df292b553d2c23ac8a75ebb52f30b29573264ffff1b4076e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('fe49cb6d-c28e-5974-918f-d8c6e3d4b88f', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_health_and_advice_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0de2b22467994f684b81103aa8526fff0c52f76658c0f2f4ec6341d2785dcab5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ae30406c-f7dd-597a-9103-7e7eab98cc2e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('fe49cb6d-c28e-5974-918f-d8c6e3d4b88f', 1), '0de2b22467994f684b81103aa8526fff0c52f76658c0f2f4ec6341d2785dcab5',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/98eed05183e6cf93df292b553d2c23ac8a75ebb52f30b29573264ffff1b4076e.mp3', 1515, '2026-09-13 17:08:56.234772', 'b2b6926f4412909727a3b16f03d2f52ef88b0ae41dde360ce51db8c6ceca5130', 'validated', '{"audio_key":"98eed05183e6cf93df292b553d2c23ac8a75ebb52f30b29573264ffff1b4076e","entity_key":"u_health_and_advice_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b2b6926f4412909727a3b16f03d2f52ef88b0ae41dde360ce51db8c6ceca5130","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/98eed05183e6cf93df292b553d2c23ac8a75ebb52f30b29573264ffff1b4076e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_reasons_and_results_01 -> audio/generated/tr-TR/utterances/9922a4da8af62441b351a5a61aa83392e6d851a0d4fc39b04b83c990b77b916a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('209e692d-f05a-5fe3-8135-bea4f9f26e11', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_reasons_and_results_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3c60e2dad538ab0dbb7526c21bfb747968bb4c324a2099a22c3c18c0961c3f1f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6e137d32-71fa-542c-8cd4-f7b07a425a28', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('209e692d-f05a-5fe3-8135-bea4f9f26e11', 1), '3c60e2dad538ab0dbb7526c21bfb747968bb4c324a2099a22c3c18c0961c3f1f',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/9922a4da8af62441b351a5a61aa83392e6d851a0d4fc39b04b83c990b77b916a.mp3', 2220, '2026-09-13 17:08:56.341455', '90487d185dfd05a24235936ab996b27f2338ac30dd3d615a9498ec943bb6a821', 'validated', '{"audio_key":"9922a4da8af62441b351a5a61aa83392e6d851a0d4fc39b04b83c990b77b916a","entity_key":"u_reasons_and_results_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"90487d185dfd05a24235936ab996b27f2338ac30dd3d615a9498ec943bb6a821","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/9922a4da8af62441b351a5a61aa83392e6d851a0d4fc39b04b83c990b77b916a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_comparisons_04 -> audio/generated/tr-TR/utterances/99a9279406f7e381719782b47d28b9346d3de462d56534d43b8b16514a8d91cc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b5fef0e4-6d22-51a6-89f0-68ba12e7422a', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_comparisons_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '23c2b4f7614d9eadf3e6c2df7b5cf1ebe950076f2017276318e7a8e6770b5d34'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bf3642f7-061a-5c17-862c-e770bac9573d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b5fef0e4-6d22-51a6-89f0-68ba12e7422a', 1), '23c2b4f7614d9eadf3e6c2df7b5cf1ebe950076f2017276318e7a8e6770b5d34',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/99a9279406f7e381719782b47d28b9346d3de462d56534d43b8b16514a8d91cc.mp3', 2272, '2026-09-13 17:08:57.357490', 'd26aa279d35a6f42ad2e3f33efefa04aa08783f89b0fdfa72a7ca305681d09be', 'validated', '{"audio_key":"99a9279406f7e381719782b47d28b9346d3de462d56534d43b8b16514a8d91cc","entity_key":"u_comparisons_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d26aa279d35a6f42ad2e3f33efefa04aa08783f89b0fdfa72a7ca305681d09be","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/99a9279406f7e381719782b47d28b9346d3de462d56534d43b8b16514a8d91cc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_comparisons_02_listen -> audio/generated/tr-TR/utterances/99a9279406f7e381719782b47d28b9346d3de462d56534d43b8b16514a8d91cc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('7c367baa-1b0f-501a-9936-5c54e31e8304', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_comparisons_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '23c2b4f7614d9eadf3e6c2df7b5cf1ebe950076f2017276318e7a8e6770b5d34'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0822da8c-9f55-5136-a24a-81fecf9d3a59', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('7c367baa-1b0f-501a-9936-5c54e31e8304', 1), '23c2b4f7614d9eadf3e6c2df7b5cf1ebe950076f2017276318e7a8e6770b5d34',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/99a9279406f7e381719782b47d28b9346d3de462d56534d43b8b16514a8d91cc.mp3', 2272, '2026-09-13 17:08:57.357490', 'd26aa279d35a6f42ad2e3f33efefa04aa08783f89b0fdfa72a7ca305681d09be', 'validated', '{"audio_key":"99a9279406f7e381719782b47d28b9346d3de462d56534d43b8b16514a8d91cc","entity_key":"e_comparisons_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d26aa279d35a6f42ad2e3f33efefa04aa08783f89b0fdfa72a7ca305681d09be","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/99a9279406f7e381719782b47d28b9346d3de462d56534d43b8b16514a8d91cc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_a2_city_day_capstone_01 -> audio/generated/tr-TR/utterances/a38f9c0a37427aa3ea27ab8d8762522373c3e568cb0b4c50cbfc0dc278ad26c2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('5666d0c4-1b3c-51bd-9457-e66d75589bf0', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_a2_city_day_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '076d1b550f40e44af85c44db24fd1cb3d6fb4b594c8b7dce043601c3c92a46a8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5be282c7-d006-511c-a1f1-85e5552ab28f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('5666d0c4-1b3c-51bd-9457-e66d75589bf0', 1), '076d1b550f40e44af85c44db24fd1cb3d6fb4b594c8b7dce043601c3c92a46a8',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/a38f9c0a37427aa3ea27ab8d8762522373c3e568cb0b4c50cbfc0dc278ad26c2.mp3', 1802, '2026-09-13 17:08:57.422558', 'f3a31b6f2d71088d16bbb7f100fdc519e24fe55886fc995cb7d9028413c10bfd', 'validated', '{"audio_key":"a38f9c0a37427aa3ea27ab8d8762522373c3e568cb0b4c50cbfc0dc278ad26c2","entity_key":"u_a2_city_day_capstone_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f3a31b6f2d71088d16bbb7f100fdc519e24fe55886fc995cb7d9028413c10bfd","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/a38f9c0a37427aa3ea27ab8d8762522373c3e568cb0b4c50cbfc0dc278ad26c2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_choices_and_preferences_01 -> audio/generated/tr-TR/utterances/a392a3fc343aa6fe883957364a6844853c1e5b79f993030efdb98dfe6c310672.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('4f2205e0-9bc3-5d96-84fb-565314d0bd0a', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_choices_and_preferences_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '952e3bbee58a71aaf2eb64e683107cbdbee013d4502f8ffe721153454907b9ef'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('572d13ab-b23d-5223-8805-71587f005f3e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('4f2205e0-9bc3-5d96-84fb-565314d0bd0a', 1), '952e3bbee58a71aaf2eb64e683107cbdbee013d4502f8ffe721153454907b9ef',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/a392a3fc343aa6fe883957364a6844853c1e5b79f993030efdb98dfe6c310672.mp3', 1619, '2026-09-13 17:08:58.379730', '3d7db2a284297e249dd455367b5bb2b56ee2af7af1d2326df9de9e8d103544ba', 'validated', '{"audio_key":"a392a3fc343aa6fe883957364a6844853c1e5b79f993030efdb98dfe6c310672","entity_key":"u_choices_and_preferences_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3d7db2a284297e249dd455367b5bb2b56ee2af7af1d2326df9de9e8d103544ba","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/a392a3fc343aa6fe883957364a6844853c1e5b79f993030efdb98dfe6c310672.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_habits_and_frequency_04 -> audio/generated/tr-TR/utterances/a7c9aed35c9033a71fc1b79283657973ab8c6d832b9313cf05da1e152e41d1f0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c4baecd7-c515-558d-b924-5ba7512ee3a3', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_habits_and_frequency_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '57800d657bf95503e995fb34690df75e48b593da5fc6d65bdbb6982e250865d1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7124eb15-28fd-5cc0-a35d-eb4dfbe43cf1', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c4baecd7-c515-558d-b924-5ba7512ee3a3', 1), '57800d657bf95503e995fb34690df75e48b593da5fc6d65bdbb6982e250865d1',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/a7c9aed35c9033a71fc1b79283657973ab8c6d832b9313cf05da1e152e41d1f0.mp3', 2351, '2026-09-13 17:08:58.531546', '671793ff68aa3bbb46ca7cedc79dfcfa711922c41c8f01dce512aac8a62c2ee9', 'validated', '{"audio_key":"a7c9aed35c9033a71fc1b79283657973ab8c6d832b9313cf05da1e152e41d1f0","entity_key":"u_habits_and_frequency_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"671793ff68aa3bbb46ca7cedc79dfcfa711922c41c8f01dce512aac8a62c2ee9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/a7c9aed35c9033a71fc1b79283657973ab8c6d832b9313cf05da1e152e41d1f0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_habits_and_frequency_02_listen -> audio/generated/tr-TR/utterances/a7c9aed35c9033a71fc1b79283657973ab8c6d832b9313cf05da1e152e41d1f0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('ace9fdee-121a-5ee2-a63d-9c8bf24e4879', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_habits_and_frequency_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '57800d657bf95503e995fb34690df75e48b593da5fc6d65bdbb6982e250865d1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6d482bab-e3ed-5f61-94ac-d018a9203877', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('ace9fdee-121a-5ee2-a63d-9c8bf24e4879', 1), '57800d657bf95503e995fb34690df75e48b593da5fc6d65bdbb6982e250865d1',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/a7c9aed35c9033a71fc1b79283657973ab8c6d832b9313cf05da1e152e41d1f0.mp3', 2351, '2026-09-13 17:08:58.531546', '671793ff68aa3bbb46ca7cedc79dfcfa711922c41c8f01dce512aac8a62c2ee9', 'validated', '{"audio_key":"a7c9aed35c9033a71fc1b79283657973ab8c6d832b9313cf05da1e152e41d1f0","entity_key":"e_habits_and_frequency_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"671793ff68aa3bbb46ca7cedc79dfcfa711922c41c8f01dce512aac8a62c2ee9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/a7c9aed35c9033a71fc1b79283657973ab8c6d832b9313cf05da1e152e41d1f0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_travel_and_hotel_01 -> audio/generated/tr-TR/utterances/b19aa0c9006a877a2a7b3ab3c39a045bebfb8429362baf4b038d39647f6a5086.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b6322971-2f61-5a9c-841e-418f1f977d60', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_travel_and_hotel_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '63a88dc20ebf0e0899b05438ac893a7c072218063021ea80f65ad8eed4aec024'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('446e06e2-b1fc-5a64-81ed-0217b292cf9e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b6322971-2f61-5a9c-841e-418f1f977d60', 1), '63a88dc20ebf0e0899b05438ac893a7c072218063021ea80f65ad8eed4aec024',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/b19aa0c9006a877a2a7b3ab3c39a045bebfb8429362baf4b038d39647f6a5086.mp3', 1567, '2026-09-13 17:08:59.478785', 'f23b70a07f117923c8aef7f9d66b9d9926cb347ff8c1afaaf03fb57c918017a0', 'validated', '{"audio_key":"b19aa0c9006a877a2a7b3ab3c39a045bebfb8429362baf4b038d39647f6a5086","entity_key":"u_travel_and_hotel_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f23b70a07f117923c8aef7f9d66b9d9926cb347ff8c1afaaf03fb57c918017a0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/b19aa0c9006a877a2a7b3ab3c39a045bebfb8429362baf4b038d39647f6a5086.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_a2_city_day_capstone_02 -> audio/generated/tr-TR/utterances/cbb00b402519cfa3d737698f7497d08cd874e9b57fb350a93fd9392c167e3654.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3d087bf9-8e45-5c5a-a874-75b44f1c6b6c', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_a2_city_day_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0aa6b12deab56ed5b9f7420945c89375c84692ed3e4726fb8241c534a1a80286'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a8f9d308-b366-5b94-b152-d6cb7470bb5c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3d087bf9-8e45-5c5a-a874-75b44f1c6b6c', 1), '0aa6b12deab56ed5b9f7420945c89375c84692ed3e4726fb8241c534a1a80286',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/cbb00b402519cfa3d737698f7497d08cd874e9b57fb350a93fd9392c167e3654.mp3', 2455, '2026-09-13 17:08:59.693343', 'd1cb5314abe31c3a6fa91246b3fa695bf618821f6f52410da91a5dbe3768d923', 'validated', '{"audio_key":"cbb00b402519cfa3d737698f7497d08cd874e9b57fb350a93fd9392c167e3654","entity_key":"u_a2_city_day_capstone_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d1cb5314abe31c3a6fa91246b3fa695bf618821f6f52410da91a5dbe3768d923","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/cbb00b402519cfa3d737698f7497d08cd874e9b57fb350a93fd9392c167e3654.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_a2_city_day_capstone_01_listen -> audio/generated/tr-TR/utterances/cbb00b402519cfa3d737698f7497d08cd874e9b57fb350a93fd9392c167e3654.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('a1670c33-a347-5b2f-a59e-f96d0aca6e4b', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_a2_city_day_capstone_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0aa6b12deab56ed5b9f7420945c89375c84692ed3e4726fb8241c534a1a80286'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7f803ac7-5332-563c-9617-b538c615ff85', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('a1670c33-a347-5b2f-a59e-f96d0aca6e4b', 1), '0aa6b12deab56ed5b9f7420945c89375c84692ed3e4726fb8241c534a1a80286',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/cbb00b402519cfa3d737698f7497d08cd874e9b57fb350a93fd9392c167e3654.mp3', 2455, '2026-09-13 17:08:59.693343', 'd1cb5314abe31c3a6fa91246b3fa695bf618821f6f52410da91a5dbe3768d923', 'validated', '{"audio_key":"cbb00b402519cfa3d737698f7497d08cd874e9b57fb350a93fd9392c167e3654","entity_key":"e_a2_city_day_capstone_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d1cb5314abe31c3a6fa91246b3fa695bf618821f6f52410da91a5dbe3768d923","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/cbb00b402519cfa3d737698f7497d08cd874e9b57fb350a93fd9392c167e3654.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_a2_city_day_capstone_03 -> audio/generated/tr-TR/utterances/ce29af420aa5b5bd4a5d184d9923697063beb537881b177c6d94803bec30255f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('bd54da26-2762-52a9-90ec-ecfeda270816', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_a2_city_day_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '090b3c7518244b6218f746f46e8134d5e81821961898f042f7ffdcb3075c9f89'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ffcf2972-7965-5890-b22c-5f5eefcd0b50', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('bd54da26-2762-52a9-90ec-ecfeda270816', 1), '090b3c7518244b6218f746f46e8134d5e81821961898f042f7ffdcb3075c9f89',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/ce29af420aa5b5bd4a5d184d9923697063beb537881b177c6d94803bec30255f.mp3', 2403, '2026-09-13 17:09:00.857695', 'bf968d3ac4e16394fbb00228563115d20a3229e014f83848c7a5c711c75e4972', 'validated', '{"audio_key":"ce29af420aa5b5bd4a5d184d9923697063beb537881b177c6d94803bec30255f","entity_key":"u_a2_city_day_capstone_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bf968d3ac4e16394fbb00228563115d20a3229e014f83848c7a5c711c75e4972","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/ce29af420aa5b5bd4a5d184d9923697063beb537881b177c6d94803bec30255f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_reasons_and_results_04 -> audio/generated/tr-TR/utterances/d4e2782411874a301915fe40b7c46915bfee0c63d32f3eabdee55cc039a35c46.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('09395ef6-ca84-500a-b3cc-2bede1853633', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_reasons_and_results_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b007dd66452eca931d6fa7e32196d74590db42aefdb4f7e74b28045e94599ef1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('706d5798-5806-5cef-8c41-ed6d7f59154b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('09395ef6-ca84-500a-b3cc-2bede1853633', 1), 'b007dd66452eca931d6fa7e32196d74590db42aefdb4f7e74b28045e94599ef1',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/d4e2782411874a301915fe40b7c46915bfee0c63d32f3eabdee55cc039a35c46.mp3', 2586, '2026-09-13 17:09:00.884502', '696d78302de106dbea5a0f3874fcc5e1aaa361d88b221eb112afc4bf402b58bc', 'validated', '{"audio_key":"d4e2782411874a301915fe40b7c46915bfee0c63d32f3eabdee55cc039a35c46","entity_key":"u_reasons_and_results_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"696d78302de106dbea5a0f3874fcc5e1aaa361d88b221eb112afc4bf402b58bc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/d4e2782411874a301915fe40b7c46915bfee0c63d32f3eabdee55cc039a35c46.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_reasons_and_results_02_listen -> audio/generated/tr-TR/utterances/d4e2782411874a301915fe40b7c46915bfee0c63d32f3eabdee55cc039a35c46.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('41bd86ef-bb9c-5b4d-b64e-c4101741cf39', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_reasons_and_results_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b007dd66452eca931d6fa7e32196d74590db42aefdb4f7e74b28045e94599ef1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ea93980a-d732-5d8b-b0d1-4af60340824d', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('41bd86ef-bb9c-5b4d-b64e-c4101741cf39', 1), 'b007dd66452eca931d6fa7e32196d74590db42aefdb4f7e74b28045e94599ef1',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/d4e2782411874a301915fe40b7c46915bfee0c63d32f3eabdee55cc039a35c46.mp3', 2586, '2026-09-13 17:09:00.884502', '696d78302de106dbea5a0f3874fcc5e1aaa361d88b221eb112afc4bf402b58bc', 'validated', '{"audio_key":"d4e2782411874a301915fe40b7c46915bfee0c63d32f3eabdee55cc039a35c46","entity_key":"e_reasons_and_results_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"696d78302de106dbea5a0f3874fcc5e1aaa361d88b221eb112afc4bf402b58bc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/d4e2782411874a301915fe40b7c46915bfee0c63d32f3eabdee55cc039a35c46.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_appointments_and_plans_02 -> audio/generated/tr-TR/utterances/e40daa8dd0628e0b1b1a982c1946c515d7d8c4c9b1c4116890abf59572764cd1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('71ff5ebb-c728-5e1e-a836-3999dc23fcb5', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_appointments_and_plans_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e8da038445321e99b9cc064b4172684c2c82d0522da6964053380fcd34a654f7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4a04a46f-e53c-532b-b75d-d22b084a8400', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('71ff5ebb-c728-5e1e-a836-3999dc23fcb5', 1), 'e8da038445321e99b9cc064b4172684c2c82d0522da6964053380fcd34a654f7',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/e40daa8dd0628e0b1b1a982c1946c515d7d8c4c9b1c4116890abf59572764cd1.mp3', 1906, '2026-09-13 17:09:01.965702', '3efcec6ef81cedb1b10bfca2fb07d939a81d07cc48a9b780a6d5c7547891c3dc', 'validated', '{"audio_key":"e40daa8dd0628e0b1b1a982c1946c515d7d8c4c9b1c4116890abf59572764cd1","entity_key":"u_appointments_and_plans_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3efcec6ef81cedb1b10bfca2fb07d939a81d07cc48a9b780a6d5c7547891c3dc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/e40daa8dd0628e0b1b1a982c1946c515d7d8c4c9b1c4116890abf59572764cd1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_appointments_and_plans_01_listen -> audio/generated/tr-TR/utterances/e40daa8dd0628e0b1b1a982c1946c515d7d8c4c9b1c4116890abf59572764cd1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('ff628785-0d67-5606-80c7-0c17e22a5058', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_appointments_and_plans_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e8da038445321e99b9cc064b4172684c2c82d0522da6964053380fcd34a654f7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cf4413ca-de01-5688-855b-a3accefae0b5', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('ff628785-0d67-5606-80c7-0c17e22a5058', 1), 'e8da038445321e99b9cc064b4172684c2c82d0522da6964053380fcd34a654f7',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/e40daa8dd0628e0b1b1a982c1946c515d7d8c4c9b1c4116890abf59572764cd1.mp3', 1906, '2026-09-13 17:09:01.965702', '3efcec6ef81cedb1b10bfca2fb07d939a81d07cc48a9b780a6d5c7547891c3dc', 'validated', '{"audio_key":"e40daa8dd0628e0b1b1a982c1946c515d7d8c4c9b1c4116890abf59572764cd1","entity_key":"e_appointments_and_plans_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3efcec6ef81cedb1b10bfca2fb07d939a81d07cc48a9b780a6d5c7547891c3dc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/e40daa8dd0628e0b1b1a982c1946c515d7d8c4c9b1c4116890abf59572764cd1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_choices_and_preferences_03 -> audio/generated/tr-TR/utterances/e63df6ca27364dd9e47030b4ba620d8eb9269d9af4664ce84efd1a80a2e49204.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('39158aa5-a089-5401-b3f1-ea1b23b4bb31', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_choices_and_preferences_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aab3a6f08883503660c484ffd01cfdd37f3ff756f9289c7ff46511e0b93a5aaa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a1419433-3077-5392-896c-3897d3c74746', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('39158aa5-a089-5401-b3f1-ea1b23b4bb31', 1), 'aab3a6f08883503660c484ffd01cfdd37f3ff756f9289c7ff46511e0b93a5aaa',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/e63df6ca27364dd9e47030b4ba620d8eb9269d9af4664ce84efd1a80a2e49204.mp3', 1515, '2026-09-13 17:09:02.148341', 'e99510f2146b175ed53c53b06d44090ed338b534df28039ce592b659b93c3163', 'validated', '{"audio_key":"e63df6ca27364dd9e47030b4ba620d8eb9269d9af4664ce84efd1a80a2e49204","entity_key":"u_choices_and_preferences_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e99510f2146b175ed53c53b06d44090ed338b534df28039ce592b659b93c3163","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/e63df6ca27364dd9e47030b4ba620d8eb9269d9af4664ce84efd1a80a2e49204.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_polite_requests_03 -> audio/generated/tr-TR/utterances/f089fb0f2ce6bfc313f4dcbac6237d1d6d2582b7d7736a63e1908d08f4518356.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c556a756-ffdf-51fc-b9e0-8329ca51a24f', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_polite_requests_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7c749e4d7f43c6101a7a702dec791914b53f527d6d108f4a332f5782b5f20df7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b95e05d9-5eeb-5c35-bc9e-853c38e3bc18', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c556a756-ffdf-51fc-b9e0-8329ca51a24f', 1), '7c749e4d7f43c6101a7a702dec791914b53f527d6d108f4a332f5782b5f20df7',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/f089fb0f2ce6bfc313f4dcbac6237d1d6d2582b7d7736a63e1908d08f4518356.mp3', 2168, '2026-09-13 17:09:03.140969', 'eb78d74003b07902d0710e2ed40a4513783a404a28c5b3cd64161763defeb023', 'validated', '{"audio_key":"f089fb0f2ce6bfc313f4dcbac6237d1d6d2582b7d7736a63e1908d08f4518356","entity_key":"u_polite_requests_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"eb78d74003b07902d0710e2ed40a4513783a404a28c5b3cd64161763defeb023","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/f089fb0f2ce6bfc313f4dcbac6237d1d6d2582b7d7736a63e1908d08f4518356.mp3"}'
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

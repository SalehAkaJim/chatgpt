-- Generated audio link import for de-DE B2
-- Source manifest: audio/manifests/de/B2-batch-4.json
-- Generated rows: 330
-- Storage mode: relative_path
-- storage_url is intentionally portable; prepend your server/CDN base URL at runtime.
-- Run AFTER the matching level content import.
SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci;
SET time_zone = '+00:00';
SET @audio_language_id = (SELECT id FROM languages WHERE code = 'de' LIMIT 1);
SET @audio_variant_id = (SELECT id FROM language_variants WHERE code = 'de-DE' LIMIT 1);
START TRANSACTION;

-- d_rules_requirements_01:3 -> audio/generated/de-DE/dialogues/06bad3e57df2195c8a3c20a8c5c9558bb7b3f672576170558758a30b788ddef0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('75b6f46b-6a93-5bbb-b8c4-27d11a216d53', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_rules_requirements_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd7d04b1fb4ea4d9075c50f8f06348f729d87eb8664f566cc95fe3f299468bc06'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ded73f46-2996-5881-951e-afc485e3096c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('75b6f46b-6a93-5bbb-b8c4-27d11a216d53', 1), 'd7d04b1fb4ea4d9075c50f8f06348f729d87eb8664f566cc95fe3f299468bc06',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/06bad3e57df2195c8a3c20a8c5c9558bb7b3f672576170558758a30b788ddef0.mp3', 3604, '2026-09-13 08:46:41.467436', 'f7b64a00b3bccf274f1f7acd1474cd83918d44e6ca93bf171a22c608ab07544b', 'validated', '{"audio_key":"06bad3e57df2195c8a3c20a8c5c9558bb7b3f672576170558758a30b788ddef0","entity_key":"d_rules_requirements_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"f7b64a00b3bccf274f1f7acd1474cd83918d44e6ca93bf171a22c608ab07544b","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/06bad3e57df2195c8a3c20a8c5c9558bb7b3f672576170558758a30b788ddef0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_venue_comparison_02:2 -> audio/generated/de-DE/dialogues/0f7f5d561488ae3a4e627f4b5623c0d1f8278f87f51d771ca21afaae8be8b53c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('60dc8023-a4cf-55e0-950d-c3c89ecfe73b', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_venue_comparison_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b9dd893028b3023c6da1939e2ba2d127d8b403c9ddfea8f9189991c9d16731bf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1cd9396d-c44a-5779-8bdf-5d86a99c947d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('60dc8023-a4cf-55e0-950d-c3c89ecfe73b', 1), 'b9dd893028b3023c6da1939e2ba2d127d8b403c9ddfea8f9189991c9d16731bf',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/0f7f5d561488ae3a4e627f4b5623c0d1f8278f87f51d771ca21afaae8be8b53c.mp3', 3291, '2026-09-13 08:46:41.497488', '7d06c253bf357783844849c573d7d14cd41d25053c19cf8d9cadefdc36c142ac', 'validated', '{"audio_key":"0f7f5d561488ae3a4e627f4b5623c0d1f8278f87f51d771ca21afaae8be8b53c","entity_key":"d_venue_comparison_02:2","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7d06c253bf357783844849c573d7d14cd41d25053c19cf8d9cadefdc36c142ac","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/0f7f5d561488ae3a4e627f4b5623c0d1f8278f87f51d771ca21afaae8be8b53c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_learning_goals_03:4 -> audio/generated/de-DE/dialogues/0fabcf9b0b9a33e51a5fc6401bc51c472961bcd06e7c880420882eb5cf6785e1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('48b657df-452f-59e1-a657-eec7f51b7777', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_learning_goals_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '66f3bbd8754f937f3b5f1f5af2f9dd98a722daafeba97eba3caee398a1cc2719'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('edddcc26-98ea-5cf4-a153-9d1263bccf75', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('48b657df-452f-59e1-a657-eec7f51b7777', 1), '66f3bbd8754f937f3b5f1f5af2f9dd98a722daafeba97eba3caee398a1cc2719',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/0fabcf9b0b9a33e51a5fc6401bc51c472961bcd06e7c880420882eb5cf6785e1.mp3', 3291, '2026-09-13 08:46:42.770321', 'b7fe0e8993f60a2377c7b02d62e851140a2218af95014c618b967c3ec27bff4d', 'validated', '{"audio_key":"0fabcf9b0b9a33e51a5fc6401bc51c472961bcd06e7c880420882eb5cf6785e1","entity_key":"d_learning_goals_03:4","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b7fe0e8993f60a2377c7b02d62e851140a2218af95014c618b967c3ec27bff4d","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/0fabcf9b0b9a33e51a5fc6401bc51c472961bcd06e7c880420882eb5cf6785e1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_responsibility_corrections_02:2 -> audio/generated/de-DE/dialogues/11d06d872ccba342ce4936b2171c100d71787f8038ea92e5beb70568d7d6f940.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1f96318a-ef03-5257-a393-65bf485a36ae', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_responsibility_corrections_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '250dcd913dadb0398a094fdd11837d238b45fd55cdc2414d4087e0fe09faa449'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f9bb51a5-2a04-5108-89a7-de52c4573997', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1f96318a-ef03-5257-a393-65bf485a36ae', 1), '250dcd913dadb0398a094fdd11837d238b45fd55cdc2414d4087e0fe09faa449',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/11d06d872ccba342ce4936b2171c100d71787f8038ea92e5beb70568d7d6f940.mp3', 1933, '2026-09-13 08:46:42.650981', 'a9254fad6dbf6de5c784edf07fb7a70e3fd9b9867589c199f36de8c6a88efe90', 'validated', '{"audio_key":"11d06d872ccba342ce4936b2171c100d71787f8038ea92e5beb70568d7d6f940","entity_key":"d_responsibility_corrections_02:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"a9254fad6dbf6de5c784edf07fb7a70e3fd9b9867589c199f36de8c6a88efe90","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/11d06d872ccba342ce4936b2171c100d71787f8038ea92e5beb70568d7d6f940.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_resource_priorities_03:4 -> audio/generated/de-DE/dialogues/11e82c57bb3ff28ffef89ccb8fd53a29b5eff219913e0a29763ca0e2ad62af6f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9d1a7688-df86-5310-a9d0-ac6510ce5c7a', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_resource_priorities_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'adb0b93c98bf8d84457e29c35a6d1d9fc211ede34a37c1943838808062991d22'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d98de4cf-0300-5e07-bc87-23f5904f2ee3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9d1a7688-df86-5310-a9d0-ac6510ce5c7a', 1), 'adb0b93c98bf8d84457e29c35a6d1d9fc211ede34a37c1943838808062991d22',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/11e82c57bb3ff28ffef89ccb8fd53a29b5eff219913e0a29763ca0e2ad62af6f.mp3', 2220, '2026-09-13 08:46:43.815906', 'a3ca422e8d1ddc922dc0ec231c6bb7fa1a02831e3d1a7a27e421db41c229ed88', 'validated', '{"audio_key":"11e82c57bb3ff28ffef89ccb8fd53a29b5eff219913e0a29763ca0e2ad62af6f","entity_key":"d_resource_priorities_03:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"a3ca422e8d1ddc922dc0ec231c6bb7fa1a02831e3d1a7a27e421db41c229ed88","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/11e82c57bb3ff28ffef89ccb8fd53a29b5eff219913e0a29763ca0e2ad62af6f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_experience_reflection_01:4 -> audio/generated/de-DE/dialogues/120b6c3cce18f05105b6adb4c5306634c3ce80dd725d7538efd89caf1660c25e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('defa5513-ac82-5aa8-ab85-5a6f3be0806a', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_experience_reflection_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2b7c2f37dfd2a3af0b85d4049c2f8d2aa8a2ab542e68b1626338644a121c9826'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9a86a683-56ba-5d61-9317-0a19b53832a0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('defa5513-ac82-5aa8-ab85-5a6f3be0806a', 1), '2b7c2f37dfd2a3af0b85d4049c2f8d2aa8a2ab542e68b1626338644a121c9826',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/120b6c3cce18f05105b6adb4c5306634c3ce80dd725d7538efd89caf1660c25e.mp3', 3239, '2026-09-13 08:46:44.027471', '3369e2f22381d90e145097027262b3885d65651859d8f7105ccc1c38cf7070bc', 'validated', '{"audio_key":"120b6c3cce18f05105b6adb4c5306634c3ce80dd725d7538efd89caf1660c25e","entity_key":"d_experience_reflection_01:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"3369e2f22381d90e145097027262b3885d65651859d8f7105ccc1c38cf7070bc","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/120b6c3cce18f05105b6adb4c5306634c3ce80dd725d7538efd89caf1660c25e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_structured_meetings_01:1 -> audio/generated/de-DE/dialogues/15a1118ec9f6ffc30e1356d0a6432779e5dcb2e4f46ae44a4b5d429375cb5835.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d85a0de7-15c2-5c94-b2e8-9b54e124c5ae', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_structured_meetings_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f838ac59a113e9b481d80ab2efe778b0bb04f66ae357026fd55948303e1bf4dd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dc2920c6-3ccd-5bb4-a413-a53f3db077fc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d85a0de7-15c2-5c94-b2e8-9b54e124c5ae', 1), 'f838ac59a113e9b481d80ab2efe778b0bb04f66ae357026fd55948303e1bf4dd',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/15a1118ec9f6ffc30e1356d0a6432779e5dcb2e4f46ae44a4b5d429375cb5835.mp3', 2951, '2026-09-13 08:46:45.012800', '3fcc9df0c3be85a12e4bf335de87e78b5a0f82c37b325317a3953bde2ad4c7cc', 'validated', '{"audio_key":"15a1118ec9f6ffc30e1356d0a6432779e5dcb2e4f46ae44a4b5d429375cb5835","entity_key":"d_structured_meetings_01:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3fcc9df0c3be85a12e4bf335de87e78b5a0f82c37b325317a3953bde2ad4c7cc","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/15a1118ec9f6ffc30e1356d0a6432779e5dcb2e4f46ae44a4b5d429375cb5835.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_learning_goals_01:3 -> audio/generated/de-DE/dialogues/16ea9e2afcc719d3fdc57a2cd942b06f46b19e9f0ffbc70f16b5347471b3ba7e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('abc54ddd-577c-52b8-ab05-c868d8026d42', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_learning_goals_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '04416ba7feeb4185a7dd5be767c030abdf15af4d6b71a22294b93ec90a5a59c6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('21773558-99af-5e45-946e-945b73facd5a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('abc54ddd-577c-52b8-ab05-c868d8026d42', 1), '04416ba7feeb4185a7dd5be767c030abdf15af4d6b71a22294b93ec90a5a59c6',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/16ea9e2afcc719d3fdc57a2cd942b06f46b19e9f0ffbc70f16b5347471b3ba7e.mp3', 2951, '2026-09-13 08:46:45.220984', '3aa40450d0d7d3aae73ea6edb02d9a4e8d3369874a8ebbdc1616f2e5a902eb9a', 'validated', '{"audio_key":"16ea9e2afcc719d3fdc57a2cd942b06f46b19e9f0ffbc70f16b5347471b3ba7e","entity_key":"d_learning_goals_01:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"3aa40450d0d7d3aae73ea6edb02d9a4e8d3369874a8ebbdc1616f2e5a902eb9a","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/16ea9e2afcc719d3fdc57a2cd942b06f46b19e9f0ffbc70f16b5347471b3ba7e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cultural_reviews_01:2 -> audio/generated/de-DE/dialogues/1a62a0d6d40da84d4bb37dd5c838007877287b9cd4c1aaa82a07c8dcec018288.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9d5b5786-3b8c-56fa-a2ef-f780aab01bbe', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cultural_reviews_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fd3c1805373498bf2d5f3af9f8c3e4bf58db3762720db8af0324648b0380e0c8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f9d3b051-6fec-5119-ad09-a698737d0a12', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9d5b5786-3b8c-56fa-a2ef-f780aab01bbe', 1), 'fd3c1805373498bf2d5f3af9f8c3e4bf58db3762720db8af0324648b0380e0c8',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1a62a0d6d40da84d4bb37dd5c838007877287b9cd4c1aaa82a07c8dcec018288.mp3', 1854, '2026-09-13 08:46:46.131079', '52a96210da84e76b46eaad6eb1489ff37a33a40c518b6ce48fae6c284b5226e8', 'validated', '{"audio_key":"1a62a0d6d40da84d4bb37dd5c838007877287b9cd4c1aaa82a07c8dcec018288","entity_key":"d_cultural_reviews_01:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"52a96210da84e76b46eaad6eb1489ff37a33a40c518b6ce48fae6c284b5226e8","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/1a62a0d6d40da84d4bb37dd5c838007877287b9cd4c1aaa82a07c8dcec018288.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cultural_reviews_01:1 -> audio/generated/de-DE/dialogues/1b69d73158321fb5544abe995c074d0d6c9cec542852d6c4305cf08cf8b7f188.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ac22901a-02da-5012-975e-4bc482c785a8', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cultural_reviews_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '10dc6228f371756cd58e0031af21ae01bb4f322dce240ad840154cddb2b8b26b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a1ff72f7-2419-5bdf-87fc-890574d0578c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ac22901a-02da-5012-975e-4bc482c785a8', 1), '10dc6228f371756cd58e0031af21ae01bb4f322dce240ad840154cddb2b8b26b',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1b69d73158321fb5544abe995c074d0d6c9cec542852d6c4305cf08cf8b7f188.mp3', 2821, '2026-09-13 08:46:46.528903', '1fab6f4ec4fc7d9926041e6dc9ca3c726ce1f0727432f49f45c58e6371dc89cd', 'validated', '{"audio_key":"1b69d73158321fb5544abe995c074d0d6c9cec542852d6c4305cf08cf8b7f188","entity_key":"d_cultural_reviews_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"1fab6f4ec4fc7d9926041e6dc9ca3c726ce1f0727432f49f45c58e6371dc89cd","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/1b69d73158321fb5544abe995c074d0d6c9cec542852d6c4305cf08cf8b7f188.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_experience_reflection_01:2 -> audio/generated/de-DE/dialogues/2167d74a6e40e047997eb8789ad896b222d066debb4d8f734f8e35e10c302266.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2b842b30-cb20-5227-8f32-571eaacf5704', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_experience_reflection_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9fdeb76fcd1ed8d6afa05f7edee23ef272d177591c6f48fe69900317ca6ab0c4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('55b4fac3-a1eb-541d-b77f-d5e5358911e1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2b842b30-cb20-5227-8f32-571eaacf5704', 1), '9fdeb76fcd1ed8d6afa05f7edee23ef272d177591c6f48fe69900317ca6ab0c4',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2167d74a6e40e047997eb8789ad896b222d066debb4d8f734f8e35e10c302266.mp3', 3944, '2026-09-13 08:46:47.438358', 'c6ab212d16a57f698815f425227f5c00b7e38e9b11e5bd1e3d6b8e523fcd683a', 'validated', '{"audio_key":"2167d74a6e40e047997eb8789ad896b222d066debb4d8f734f8e35e10c302266","entity_key":"d_experience_reflection_01:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"c6ab212d16a57f698815f425227f5c00b7e38e9b11e5bd1e3d6b8e523fcd683a","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/2167d74a6e40e047997eb8789ad896b222d066debb4d8f734f8e35e10c302266.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_project_documentation_01:4 -> audio/generated/de-DE/dialogues/2201d640ea4379d2a2de7384583dace587052a7568a2a75d7ffc66175a71f070.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('198bf6ce-20e4-50b1-b4c7-20220358ac8e', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_project_documentation_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cca977b20259f6fb280145a929d997b0a4d33ed24163fd91318b107d36f13fa5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('50484bdb-f408-5389-8de4-9e2ba2fbfdf1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('198bf6ce-20e4-50b1-b4c7-20220358ac8e', 1), 'cca977b20259f6fb280145a929d997b0a4d33ed24163fd91318b107d36f13fa5',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2201d640ea4379d2a2de7384583dace587052a7568a2a75d7ffc66175a71f070.mp3', 3056, '2026-09-13 08:46:47.760263', '4d7698f3f0709be0661f5d1aba9f446589c68f6cb221b76a05a5421ac503577c', 'validated', '{"audio_key":"2201d640ea4379d2a2de7384583dace587052a7568a2a75d7ffc66175a71f070","entity_key":"d_project_documentation_01:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"4d7698f3f0709be0661f5d1aba9f446589c68f6cb221b76a05a5421ac503577c","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/2201d640ea4379d2a2de7384583dace587052a7568a2a75d7ffc66175a71f070.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cultural_reviews_01:4 -> audio/generated/de-DE/dialogues/224112072e7d5bf7d533021c89630fc870833ec7ae52220de81be71d0802f650.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('aa0f6015-c04f-5186-9d67-33fd223c74c5', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cultural_reviews_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '264f44bed43258629a9c445934443b86ba258f1a4aa33189d73e27a15ec54229'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('971d6b94-fb73-5e21-a71f-54243905e1a5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('aa0f6015-c04f-5186-9d67-33fd223c74c5', 1), '264f44bed43258629a9c445934443b86ba258f1a4aa33189d73e27a15ec54229',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/224112072e7d5bf7d533021c89630fc870833ec7ae52220de81be71d0802f650.mp3', 2638, '2026-09-13 08:46:48.661880', '62c211764001b20f094b01eb2344295dc31e628ddb65474a13c798eeb9191786', 'validated', '{"audio_key":"224112072e7d5bf7d533021c89630fc870833ec7ae52220de81be71d0802f650","entity_key":"d_cultural_reviews_01:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"62c211764001b20f094b01eb2344295dc31e628ddb65474a13c798eeb9191786","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/224112072e7d5bf7d533021c89630fc870833ec7ae52220de81be71d0802f650.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_experience_reflection_01:1 -> audio/generated/de-DE/dialogues/22f14332863fbc0d57717081e762b7e097cb2240b44c182ef9d0665386415b7f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('eeb25105-239c-54b9-a3ac-306a27d4d6b5', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_experience_reflection_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5f43ba1d353edd710925c7f380ca2c45920e18a54c0ba7882cc129fb6140ed18'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9da16a17-9fd3-58c1-9db0-13f45ceeaa7e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('eeb25105-239c-54b9-a3ac-306a27d4d6b5', 1), '5f43ba1d353edd710925c7f380ca2c45920e18a54c0ba7882cc129fb6140ed18',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/22f14332863fbc0d57717081e762b7e097cb2240b44c182ef9d0665386415b7f.mp3', 2351, '2026-09-13 08:46:48.911293', 'f1b2aef1fe708f12e6fdb7ff440c7fd6b96e0cab682761a6ca34fafb174d5145', 'validated', '{"audio_key":"22f14332863fbc0d57717081e762b7e097cb2240b44c182ef9d0665386415b7f","entity_key":"d_experience_reflection_01:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f1b2aef1fe708f12e6fdb7ff440c7fd6b96e0cab682761a6ca34fafb174d5145","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/22f14332863fbc0d57717081e762b7e097cb2240b44c182ef9d0665386415b7f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_project_documentation_03:4 -> audio/generated/de-DE/dialogues/246afea1dac693d86d1162d69f61a1cf48244025c51ff39f2f7882698e8ac876.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1701634f-2a35-5f21-87de-6e3e27738f89', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_project_documentation_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd25bad56a03bcd2043868825e69e6b73c4527d15b23abebe43ee9424632ed6a7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6e912e15-b1b7-523e-a0bb-9be3dafc743a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1701634f-2a35-5f21-87de-6e3e27738f89', 1), 'd25bad56a03bcd2043868825e69e6b73c4527d15b23abebe43ee9424632ed6a7',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/246afea1dac693d86d1162d69f61a1cf48244025c51ff39f2f7882698e8ac876.mp3', 2324, '2026-09-13 08:46:49.795981', 'f4a5bf511b1c1963b4502d1b3070c5887059f37ad4a2a1beabaeda0f4fed11bd', 'validated', '{"audio_key":"246afea1dac693d86d1162d69f61a1cf48244025c51ff39f2f7882698e8ac876","entity_key":"d_project_documentation_03:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"f4a5bf511b1c1963b4502d1b3070c5887059f37ad4a2a1beabaeda0f4fed11bd","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/246afea1dac693d86d1162d69f61a1cf48244025c51ff39f2f7882698e8ac876.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_learning_goals_03:2 -> audio/generated/de-DE/dialogues/248d97c8e52221fa08bc647670bd3b03829f36835d58a97b120cffed7982780a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7244023b-dcea-5372-8ece-3ce12f143cc8', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_learning_goals_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6a76d71512ff6c1b1cdd2ebcbbe31277769522e771d7a0bd7a126a1f14361dac'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a77f6588-369d-5c09-b92a-14eeb5871bf7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7244023b-dcea-5372-8ece-3ce12f143cc8', 1), '6a76d71512ff6c1b1cdd2ebcbbe31277769522e771d7a0bd7a126a1f14361dac',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/248d97c8e52221fa08bc647670bd3b03829f36835d58a97b120cffed7982780a.mp3', 3160, '2026-09-13 08:46:50.140551', 'd958c06fa725f71f7496736f8d33f7a86f556ed6dc23fb2ecaf6ecab24b20841', 'validated', '{"audio_key":"248d97c8e52221fa08bc647670bd3b03829f36835d58a97b120cffed7982780a","entity_key":"d_learning_goals_03:2","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d958c06fa725f71f7496736f8d33f7a86f556ed6dc23fb2ecaf6ecab24b20841","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/248d97c8e52221fa08bc647670bd3b03829f36835d58a97b120cffed7982780a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_resource_priorities_01:2 -> audio/generated/de-DE/dialogues/2621f4b66ea6c679c7935e34a6559c26460f6a6c48ade2d37cfc6516e50828a3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b9541227-a4e8-5da0-96ea-4c9a959ebaba', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_resource_priorities_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9acd1efa4cb40eb2bcc89a12648b13705463057800ec02d23d5f86cfa33104e5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('196a2efd-8323-5a88-b1d7-17206b117708', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b9541227-a4e8-5da0-96ea-4c9a959ebaba', 1), '9acd1efa4cb40eb2bcc89a12648b13705463057800ec02d23d5f86cfa33104e5',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2621f4b66ea6c679c7935e34a6559c26460f6a6c48ade2d37cfc6516e50828a3.mp3', 2690, '2026-09-13 08:46:50.966211', '9e5dc11acc2ff2af2e31ddbed9b5e4384ad06000c383e4f341e5f6d100616775', 'validated', '{"audio_key":"2621f4b66ea6c679c7935e34a6559c26460f6a6c48ade2d37cfc6516e50828a3","entity_key":"d_resource_priorities_01:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"9e5dc11acc2ff2af2e31ddbed9b5e4384ad06000c383e4f341e5f6d100616775","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/2621f4b66ea6c679c7935e34a6559c26460f6a6c48ade2d37cfc6516e50828a3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_venue_comparison_03:4 -> audio/generated/de-DE/dialogues/27ae78c65fa581b03c63d4ca6a884ae736a4f7e26f69fa2a151058df1759efb9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9a4630e3-fa8f-53e9-a989-640e5c87c46f', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_venue_comparison_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd7ee12471a9168401deb45a7511cbe85313a15e6987f50aa1e6f0e3d07573f9b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7a9ce1a0-e051-5c27-a50b-4c7b7ab77251', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9a4630e3-fa8f-53e9-a989-640e5c87c46f', 1), 'd7ee12471a9168401deb45a7511cbe85313a15e6987f50aa1e6f0e3d07573f9b',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/27ae78c65fa581b03c63d4ca6a884ae736a4f7e26f69fa2a151058df1759efb9.mp3', 2403, '2026-09-13 08:46:51.299357', 'ae80e855c1b7a696af34773d36723c75816175f72a505971860e1c41e3e88402', 'validated', '{"audio_key":"27ae78c65fa581b03c63d4ca6a884ae736a4f7e26f69fa2a151058df1759efb9","entity_key":"d_venue_comparison_03:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"ae80e855c1b7a696af34773d36723c75816175f72a505971860e1c41e3e88402","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/27ae78c65fa581b03c63d4ca6a884ae736a4f7e26f69fa2a151058df1759efb9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_shared_planning_02:4 -> audio/generated/de-DE/dialogues/29c9d628c2e7619bd5fc9c75ad5bc6c7e53fca31288073b4e6906507bea41c87.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1ea8f103-dbae-54cf-ad97-6cf7ff2a7fbd', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_shared_planning_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ddc5d65f305caac8d396b944fc6c581655e0fcfbc804e218e89f9807d54c60f1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c3319e67-445a-50d3-b48d-55446cd13879', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1ea8f103-dbae-54cf-ad97-6cf7ff2a7fbd', 1), 'ddc5d65f305caac8d396b944fc6c581655e0fcfbc804e218e89f9807d54c60f1',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/29c9d628c2e7619bd5fc9c75ad5bc6c7e53fca31288073b4e6906507bea41c87.mp3', 1619, '2026-09-13 08:46:52.072866', 'da2814b770ff25c2e91705037c63691cd6a7892615ae0ff1b73a8d6aed43862a', 'validated', '{"audio_key":"29c9d628c2e7619bd5fc9c75ad5bc6c7e53fca31288073b4e6906507bea41c87","entity_key":"d_shared_planning_02:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"da2814b770ff25c2e91705037c63691cd6a7892615ae0ff1b73a8d6aed43862a","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/29c9d628c2e7619bd5fc9c75ad5bc6c7e53fca31288073b4e6906507bea41c87.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_structured_meetings_01:4 -> audio/generated/de-DE/dialogues/2c12051050786d18eebaadd746155644fd6b5990e816090be078bd7e38039102.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e74a2bbf-d4d1-54d5-b864-94d1c41ef2b8', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_structured_meetings_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fca21f7553abb85353ffddc6bab225ae0142d73852078b37beb20fdd42c6af4a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fe18ab0a-c5eb-53bc-9f29-db51b2204f69', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e74a2bbf-d4d1-54d5-b864-94d1c41ef2b8', 1), 'fca21f7553abb85353ffddc6bab225ae0142d73852078b37beb20fdd42c6af4a',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2c12051050786d18eebaadd746155644fd6b5990e816090be078bd7e38039102.mp3', 1854, '2026-09-13 08:46:52.364732', 'a60a5d636e5d4f79c582ac33d3f2b87d755ed594c48d3bb98fe26b26cec6e092', 'validated', '{"audio_key":"2c12051050786d18eebaadd746155644fd6b5990e816090be078bd7e38039102","entity_key":"d_structured_meetings_01:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"a60a5d636e5d4f79c582ac33d3f2b87d755ed594c48d3bb98fe26b26cec6e092","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/2c12051050786d18eebaadd746155644fd6b5990e816090be078bd7e38039102.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_structured_meetings_02:1 -> audio/generated/de-DE/dialogues/2c4524d274e3c3637fe386be137c57dbd9489013e89d12e73790e0bb9b4bc87c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6c60995e-0f5c-5062-b95d-3b102b7660d9', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_structured_meetings_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1be518a0bc75b0244282eda37a71a35d85e444b7d04be96125adfeaab5fe1e9e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f381235c-b903-50bc-ae75-849400ae34f0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6c60995e-0f5c-5062-b95d-3b102b7660d9', 1), '1be518a0bc75b0244282eda37a71a35d85e444b7d04be96125adfeaab5fe1e9e',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2c4524d274e3c3637fe386be137c57dbd9489013e89d12e73790e0bb9b4bc87c.mp3', 3004, '2026-09-13 08:46:53.263244', '156492f5f9e45f22895c44faa2462c68dc69a4bf9654b1225b615da83a15e107', 'validated', '{"audio_key":"2c4524d274e3c3637fe386be137c57dbd9489013e89d12e73790e0bb9b4bc87c","entity_key":"d_structured_meetings_02:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"156492f5f9e45f22895c44faa2462c68dc69a4bf9654b1225b615da83a15e107","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/2c4524d274e3c3637fe386be137c57dbd9489013e89d12e73790e0bb9b4bc87c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_experience_reflection_03:3 -> audio/generated/de-DE/dialogues/2f66262138eec4e0dda0ab98b1cd1db00284713d813074f451dfb57f66ed1d17.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1fe69518-a00e-5167-ae82-9bc384a589d2', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_experience_reflection_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '54f09a9783ace786b2df47c5785d21025f93e0af75b2a708f55b7f00649c4c66'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d81958c7-c481-5002-a89a-ce6c654421dc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1fe69518-a00e-5167-ae82-9bc384a589d2', 1), '54f09a9783ace786b2df47c5785d21025f93e0af75b2a708f55b7f00649c4c66',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2f66262138eec4e0dda0ab98b1cd1db00284713d813074f451dfb57f66ed1d17.mp3', 2533, '2026-09-13 08:46:53.570606', '850fcb96e19996a81ad4e0642929490f9f804558f93b7378028b1ae5b032d67c', 'validated', '{"audio_key":"2f66262138eec4e0dda0ab98b1cd1db00284713d813074f451dfb57f66ed1d17","entity_key":"d_experience_reflection_03:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"850fcb96e19996a81ad4e0642929490f9f804558f93b7378028b1ae5b032d67c","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/2f66262138eec4e0dda0ab98b1cd1db00284713d813074f451dfb57f66ed1d17.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_shared_planning_03:2 -> audio/generated/de-DE/dialogues/30894260bbad12c0a93e8682eb9375ec48be88dac18b3c4b0cd5007de857bb67.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b7f30c3e-469a-5274-bee5-7800780001a5', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_shared_planning_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '57ae7c4c64d1608e404305811410cd50bfb8d7289e4c05fbc87bfc9eb323b726'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5f456915-be8e-5698-87b4-3b3fb988ff54', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b7f30c3e-469a-5274-bee5-7800780001a5', 1), '57ae7c4c64d1608e404305811410cd50bfb8d7289e4c05fbc87bfc9eb323b726',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/30894260bbad12c0a93e8682eb9375ec48be88dac18b3c4b0cd5007de857bb67.mp3', 2690, '2026-09-13 08:46:54.403123', '8fe78d415f833648fb2cd611de8c48c51e5b1fd72c1613f405d306e29658aa4d', 'validated', '{"audio_key":"30894260bbad12c0a93e8682eb9375ec48be88dac18b3c4b0cd5007de857bb67","entity_key":"d_shared_planning_03:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"8fe78d415f833648fb2cd611de8c48c51e5b1fd72c1613f405d306e29658aa4d","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/30894260bbad12c0a93e8682eb9375ec48be88dac18b3c4b0cd5007de857bb67.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_shared_planning_02:2 -> audio/generated/de-DE/dialogues/31a00aa4df1a134d453425f48e00076eca6344fbb9462dd3541dfc9ab9d21a9a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('52ffd2ff-afd3-5c11-8baa-e1507b181774', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_shared_planning_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '73db3ca244cb7757c0d1bbe531c0a68a4fc35681a687dab1ba51193ff2120727'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c592804e-a0f2-5a0a-b9e9-cf45d11dd2bb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('52ffd2ff-afd3-5c11-8baa-e1507b181774', 1), '73db3ca244cb7757c0d1bbe531c0a68a4fc35681a687dab1ba51193ff2120727',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/31a00aa4df1a134d453425f48e00076eca6344fbb9462dd3541dfc9ab9d21a9a.mp3', 2168, '2026-09-13 08:46:54.899864', 'd0097412d53695f444d151c3d10ffad777939505a27ad0dd8e504db7a4e30d70', 'validated', '{"audio_key":"31a00aa4df1a134d453425f48e00076eca6344fbb9462dd3541dfc9ab9d21a9a","entity_key":"d_shared_planning_02:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"d0097412d53695f444d151c3d10ffad777939505a27ad0dd8e504db7a4e30d70","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/31a00aa4df1a134d453425f48e00076eca6344fbb9462dd3541dfc9ab9d21a9a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cultural_reviews_02:3 -> audio/generated/de-DE/dialogues/31bc97389f36b5b457e9ec24c8492c98f0f483dbcdf05e3151cc11b1cb9b0e88.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('dbc46b55-43a0-506d-9dae-695a89314b6e', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cultural_reviews_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '81182db2b2dca7fce0ff225580948f774a2db1d711fddc1d887fa312c5d7c41e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('832fdd3f-882f-5fec-b94e-51132fe24bd5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('dbc46b55-43a0-506d-9dae-695a89314b6e', 1), '81182db2b2dca7fce0ff225580948f774a2db1d711fddc1d887fa312c5d7c41e',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/31bc97389f36b5b457e9ec24c8492c98f0f483dbcdf05e3151cc11b1cb9b0e88.mp3', 1201, '2026-09-13 08:46:55.439875', 'a489b8d1eaa9cc1a272efb8b69832747dd56861298d518bc97ef2fb2fbd034f5', 'validated', '{"audio_key":"31bc97389f36b5b457e9ec24c8492c98f0f483dbcdf05e3151cc11b1cb9b0e88","entity_key":"d_cultural_reviews_02:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"a489b8d1eaa9cc1a272efb8b69832747dd56861298d518bc97ef2fb2fbd034f5","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/31bc97389f36b5b457e9ec24c8492c98f0f483dbcdf05e3151cc11b1cb9b0e88.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cultural_reviews_02:4 -> audio/generated/de-DE/dialogues/337c7658f98ae20bcb214fad5133af63ac041a572e20fc3f981cc4119decb96c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cdc4ef7a-0df2-5211-ae32-69d93dc98272', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cultural_reviews_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'af719106342d5e2738d67f78fc06f8c9ebb3c43a44fb4f5f47af8fb026bb1fd4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bf5d91e5-d4f1-5ffc-9511-24d0e1a4662c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cdc4ef7a-0df2-5211-ae32-69d93dc98272', 1), 'af719106342d5e2738d67f78fc06f8c9ebb3c43a44fb4f5f47af8fb026bb1fd4',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/337c7658f98ae20bcb214fad5133af63ac041a572e20fc3f981cc4119decb96c.mp3', 2403, '2026-09-13 08:46:56.063856', 'd73bc00b84cc67f0d61f3c6efad9a7b1b5d4d024e969dc99790bd74b9c8ad9a1', 'validated', '{"audio_key":"337c7658f98ae20bcb214fad5133af63ac041a572e20fc3f981cc4119decb96c","entity_key":"d_cultural_reviews_02:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"d73bc00b84cc67f0d61f3c6efad9a7b1b5d4d024e969dc99790bd74b9c8ad9a1","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/337c7658f98ae20bcb214fad5133af63ac041a572e20fc3f981cc4119decb96c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_shared_planning_01:3 -> audio/generated/de-DE/dialogues/37a80723275c0ce8acecce35e574713343401270dcdd7be879bea2a1856e337b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9312c0e0-e4cc-5a45-81e9-f687c08f8307', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_shared_planning_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '803f06d95471ef66f90b492341196bd42ab4b8dd2ab9ced3e5fc892a7ac9a008'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c49d616a-7e84-5104-8110-571fd11e4f8d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9312c0e0-e4cc-5a45-81e9-f687c08f8307', 1), '803f06d95471ef66f90b492341196bd42ab4b8dd2ab9ced3e5fc892a7ac9a008',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/37a80723275c0ce8acecce35e574713343401270dcdd7be879bea2a1856e337b.mp3', 3004, '2026-09-13 08:46:56.644919', '7b278c163f35d763376e914271d7609a3d0d95571f9891bb801037c25934050f', 'validated', '{"audio_key":"37a80723275c0ce8acecce35e574713343401270dcdd7be879bea2a1856e337b","entity_key":"d_shared_planning_01:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"7b278c163f35d763376e914271d7609a3d0d95571f9891bb801037c25934050f","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/37a80723275c0ce8acecce35e574713343401270dcdd7be879bea2a1856e337b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_responsibility_corrections_02:4 -> audio/generated/de-DE/dialogues/38adc17f45336f3760119817601cc4fdac4774fceb082f43436fdde979a2554a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bfd96083-92b8-51dc-839e-2a1779434509', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_responsibility_corrections_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '985511d3a947e626b5292dd8090451b1f43dbc21d77ce03f3c9aaf3315ce95d7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c2e04b8b-bb03-510c-bca2-0e0d4a531401', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bfd96083-92b8-51dc-839e-2a1779434509', 1), '985511d3a947e626b5292dd8090451b1f43dbc21d77ce03f3c9aaf3315ce95d7',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/38adc17f45336f3760119817601cc4fdac4774fceb082f43436fdde979a2554a.mp3', 1985, '2026-09-13 08:46:57.185255', '4c120a2b0a3cd11549f0b358d0c74baf55bd7962d755faf57cc1c2d486fe6223', 'validated', '{"audio_key":"38adc17f45336f3760119817601cc4fdac4774fceb082f43436fdde979a2554a","entity_key":"d_responsibility_corrections_02:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"4c120a2b0a3cd11549f0b358d0c74baf55bd7962d755faf57cc1c2d486fe6223","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/38adc17f45336f3760119817601cc4fdac4774fceb082f43436fdde979a2554a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_resource_priorities_01:3 -> audio/generated/de-DE/dialogues/3d5cffc5ad1d540a179a072f14490a813ed989984437415ae072e608f99e4b35.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b9a34165-c19f-5b37-9c3a-9f6f747bd171', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_resource_priorities_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '312433075b56d285d1a14fa5fad78b3822e53b301e98597f5dedb71993e13cf0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ed043403-11ca-5e4d-a6fd-cca1d01471ae', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b9a34165-c19f-5b37-9c3a-9f6f747bd171', 1), '312433075b56d285d1a14fa5fad78b3822e53b301e98597f5dedb71993e13cf0',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3d5cffc5ad1d540a179a072f14490a813ed989984437415ae072e608f99e4b35.mp3', 4205, '2026-09-13 08:46:58.000456', 'fa35020218458673cbf11f01ca58f1dd6fe3c96eda1d882cc76fecf15a410e04', 'validated', '{"audio_key":"3d5cffc5ad1d540a179a072f14490a813ed989984437415ae072e608f99e4b35","entity_key":"d_resource_priorities_01:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"fa35020218458673cbf11f01ca58f1dd6fe3c96eda1d882cc76fecf15a410e04","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/3d5cffc5ad1d540a179a072f14490a813ed989984437415ae072e608f99e4b35.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_responsibility_corrections_02:3 -> audio/generated/de-DE/dialogues/3ecc33b4c6cb5f30ee8743546043776b736b709126740e90c525baff31a3084a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bca1763b-abc7-56fc-a79a-39c5405c07be', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_responsibility_corrections_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3657d3155ae258e1b59d1b95a2db67c5da76329a855b134015eedb0f5025b478'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('79e5937d-5cb4-53c0-95ab-3224db7d5ef2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bca1763b-abc7-56fc-a79a-39c5405c07be', 1), '3657d3155ae258e1b59d1b95a2db67c5da76329a855b134015eedb0f5025b478',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3ecc33b4c6cb5f30ee8743546043776b736b709126740e90c525baff31a3084a.mp3', 3474, '2026-09-13 08:46:58.501076', '66cb9c23d446faf7453f1a7c400b6b51cafa7d19fc97174bdfa884d16d382fa0', 'validated', '{"audio_key":"3ecc33b4c6cb5f30ee8743546043776b736b709126740e90c525baff31a3084a","entity_key":"d_responsibility_corrections_02:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"66cb9c23d446faf7453f1a7c400b6b51cafa7d19fc97174bdfa884d16d382fa0","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/3ecc33b4c6cb5f30ee8743546043776b736b709126740e90c525baff31a3084a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_shared_planning_03:3 -> audio/generated/de-DE/dialogues/3f595c2759c2b8ebaa88158ea5e874705f646b22ccfec3b9e71863eeeff54b65.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c8ec8db1-943f-5765-96a6-23ef35ca26f3', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_shared_planning_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '541830eae0e99ff4c339ebaaffc78b535c26862f7c8b5aba20a3ace1867ddd91'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8d6096d7-d77a-5247-a542-3b968fdcec0b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c8ec8db1-943f-5765-96a6-23ef35ca26f3', 1), '541830eae0e99ff4c339ebaaffc78b535c26862f7c8b5aba20a3ace1867ddd91',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3f595c2759c2b8ebaa88158ea5e874705f646b22ccfec3b9e71863eeeff54b65.mp3', 2351, '2026-09-13 08:46:59.115359', '939aec6107eb57ba39d7b7b4ee04a3551459a9598d532301a7e04bf2cc3ddbb7', 'validated', '{"audio_key":"3f595c2759c2b8ebaa88158ea5e874705f646b22ccfec3b9e71863eeeff54b65","entity_key":"d_shared_planning_03:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"939aec6107eb57ba39d7b7b4ee04a3551459a9598d532301a7e04bf2cc3ddbb7","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/3f595c2759c2b8ebaa88158ea5e874705f646b22ccfec3b9e71863eeeff54b65.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_shared_planning_03:4 -> audio/generated/de-DE/dialogues/4b3e05cbeeabebeab5a1a0a57751c21ed4438a7d323a5d423976867e515ae601.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fe38ce25-6e1a-5cbf-9536-39a00b50e37e', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_shared_planning_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7ac547a4309c6c0aec1f693c16c07ffa9fe3da3614dbc9422bc809c7ec2c41a6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a211e216-2fab-5d55-8c2f-7f2fb7792f3f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fe38ce25-6e1a-5cbf-9536-39a00b50e37e', 1), '7ac547a4309c6c0aec1f693c16c07ffa9fe3da3614dbc9422bc809c7ec2c41a6',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4b3e05cbeeabebeab5a1a0a57751c21ed4438a7d323a5d423976867e515ae601.mp3', 2768, '2026-09-13 08:46:59.691450', '2963d39866b33ce140d2e5831fb536849864fd117775150438ed41f315836711', 'validated', '{"audio_key":"4b3e05cbeeabebeab5a1a0a57751c21ed4438a7d323a5d423976867e515ae601","entity_key":"d_shared_planning_03:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"2963d39866b33ce140d2e5831fb536849864fd117775150438ed41f315836711","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/4b3e05cbeeabebeab5a1a0a57751c21ed4438a7d323a5d423976867e515ae601.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_resource_priorities_02:3 -> audio/generated/de-DE/dialogues/4bfe7a5accb83706fbde684a48c62c14e5e297cfdca9191a669421cfbeee8143.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('08c03673-a3cc-563e-8e97-e3fc2a72e1e5', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_resource_priorities_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fd6162bf8bd8893a629f762cf804d546813ec673e3e76c602c99ab054dcb078d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5f68dc7e-651e-517d-b39f-a49aa5562482', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('08c03673-a3cc-563e-8e97-e3fc2a72e1e5', 1), 'fd6162bf8bd8893a629f762cf804d546813ec673e3e76c602c99ab054dcb078d',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4bfe7a5accb83706fbde684a48c62c14e5e297cfdca9191a669421cfbeee8143.mp3', 3186, '2026-09-13 08:47:00.360121', '471fadac98b329fb266fcc8044d914ac61472d571dfc788f0c6149d5815f0f6e', 'validated', '{"audio_key":"4bfe7a5accb83706fbde684a48c62c14e5e297cfdca9191a669421cfbeee8143","entity_key":"d_resource_priorities_02:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"471fadac98b329fb266fcc8044d914ac61472d571dfc788f0c6149d5815f0f6e","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/4bfe7a5accb83706fbde684a48c62c14e5e297cfdca9191a669421cfbeee8143.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_rules_requirements_03:3 -> audio/generated/de-DE/dialogues/4d45313642cc83a4b4bc7526c0190619aaeb6e5d7fc9a26b0f76aeb11cfddfb0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2bc31ef0-2ef3-57f6-afe8-b5c28606216f', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_rules_requirements_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a6572d0944298bf1594d82d7aacb38982d719c8ca917b825ee134d56448e9c91'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6e1d984e-25e8-5738-ba9d-d320b22cab9c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2bc31ef0-2ef3-57f6-afe8-b5c28606216f', 1), 'a6572d0944298bf1594d82d7aacb38982d719c8ca917b825ee134d56448e9c91',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4d45313642cc83a4b4bc7526c0190619aaeb6e5d7fc9a26b0f76aeb11cfddfb0.mp3', 3004, '2026-09-13 08:47:00.866951', '4b09c3204575c6e0682bae88e0c1ae391c2710df45be8be2a9bb38349a9fb4b4', 'validated', '{"audio_key":"4d45313642cc83a4b4bc7526c0190619aaeb6e5d7fc9a26b0f76aeb11cfddfb0","entity_key":"d_rules_requirements_03:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"4b09c3204575c6e0682bae88e0c1ae391c2710df45be8be2a9bb38349a9fb4b4","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/4d45313642cc83a4b4bc7526c0190619aaeb6e5d7fc9a26b0f76aeb11cfddfb0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_venue_comparison_02:1 -> audio/generated/de-DE/dialogues/4f99ab6547791fe5a93433bea279deccf7f44335eb095280a088fd802d50c355.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('357fec13-7816-59e3-9d79-49c0f808fffa', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_venue_comparison_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5689d140ab23e6d39ced59988bb075cd61724a2a69539acdd500434d1c8d7e87'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6cbe43c7-05fe-5d80-83c9-8fd4aefb5977', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('357fec13-7816-59e3-9d79-49c0f808fffa', 1), '5689d140ab23e6d39ced59988bb075cd61724a2a69539acdd500434d1c8d7e87',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4f99ab6547791fe5a93433bea279deccf7f44335eb095280a088fd802d50c355.mp3', 3657, '2026-09-13 08:47:01.671671', 'e18885e9fa5713e612d65c7df3668ab7037b39cdffc8f37bd28d5e30a8ff7f2c', 'validated', '{"audio_key":"4f99ab6547791fe5a93433bea279deccf7f44335eb095280a088fd802d50c355","entity_key":"d_venue_comparison_02:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"e18885e9fa5713e612d65c7df3668ab7037b39cdffc8f37bd28d5e30a8ff7f2c","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/4f99ab6547791fe5a93433bea279deccf7f44335eb095280a088fd802d50c355.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_rules_requirements_01:2 -> audio/generated/de-DE/dialogues/4fe2132f5d5cbcaaa29941771878ff8225bc24ddae1bc880ccc8773ca43b7aac.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cd46a290-6122-5df8-896c-95fd4339ecc3', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_rules_requirements_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8726c6ecac36ce105672f927a6d5eaec10937286dd924204500a2808eb34c3bf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('70c8f97a-4ca7-51f1-875a-fa0e84228335', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cd46a290-6122-5df8-896c-95fd4339ecc3', 1), '8726c6ecac36ce105672f927a6d5eaec10937286dd924204500a2808eb34c3bf',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4fe2132f5d5cbcaaa29941771878ff8225bc24ddae1bc880ccc8773ca43b7aac.mp3', 3369, '2026-09-13 08:47:02.149121', 'c292068e8545ed161a61b576d0fb4cecccbab01aa0494734611acb6e630a3233', 'validated', '{"audio_key":"4fe2132f5d5cbcaaa29941771878ff8225bc24ddae1bc880ccc8773ca43b7aac","entity_key":"d_rules_requirements_01:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"c292068e8545ed161a61b576d0fb4cecccbab01aa0494734611acb6e630a3233","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/4fe2132f5d5cbcaaa29941771878ff8225bc24ddae1bc880ccc8773ca43b7aac.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_resource_priorities_01:1 -> audio/generated/de-DE/dialogues/50b4ee550bb6e38be64597d1b99cce0a456ee41695d9305b4c4e77bca339ec9b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bca1d8fd-576d-5b72-a0a1-ba59018743e7', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_resource_priorities_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5012924002066ea4b4920ba82299875c884e05c06429c7a026cc86662a6a9dcd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4a0a562d-0b5d-5f55-9974-6087df2a3572', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bca1d8fd-576d-5b72-a0a1-ba59018743e7', 1), '5012924002066ea4b4920ba82299875c884e05c06429c7a026cc86662a6a9dcd',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/50b4ee550bb6e38be64597d1b99cce0a456ee41695d9305b4c4e77bca339ec9b.mp3', 3004, '2026-09-13 08:47:02.898660', '10b71e28033313cac70feb75ef26add508c49430082603cb87a8b554345715d3', 'validated', '{"audio_key":"50b4ee550bb6e38be64597d1b99cce0a456ee41695d9305b4c4e77bca339ec9b","entity_key":"d_resource_priorities_01:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"10b71e28033313cac70feb75ef26add508c49430082603cb87a8b554345715d3","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/50b4ee550bb6e38be64597d1b99cce0a456ee41695d9305b4c4e77bca339ec9b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_responsibility_corrections_01:1 -> audio/generated/de-DE/dialogues/50f026125edb7f17765d299585fa77a715a563b56b89424a4352b2e6443e4729.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8858666b-5c50-510e-98ab-dd720e9422ac', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_responsibility_corrections_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0478a1f7b3b85d1665b3cf15b86fe2b9a103c9f942f3d9c87ac1c7519b768eff'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0de1ae80-2bff-5968-8071-be32eab1b8d8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8858666b-5c50-510e-98ab-dd720e9422ac', 1), '0478a1f7b3b85d1665b3cf15b86fe2b9a103c9f942f3d9c87ac1c7519b768eff',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/50f026125edb7f17765d299585fa77a715a563b56b89424a4352b2e6443e4729.mp3', 2925, '2026-09-13 08:47:03.355332', 'e229c59f872ed2291378158918c7a5f7765b918ffa5faabb6f667c1792b9018d', 'validated', '{"audio_key":"50f026125edb7f17765d299585fa77a715a563b56b89424a4352b2e6443e4729","entity_key":"d_responsibility_corrections_01:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"e229c59f872ed2291378158918c7a5f7765b918ffa5faabb6f667c1792b9018d","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/50f026125edb7f17765d299585fa77a715a563b56b89424a4352b2e6443e4729.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_venue_comparison_02:4 -> audio/generated/de-DE/dialogues/51266bd48c2f51ad4bad6b8c400f9c1d4a970d8ac0bb940677079dd896b8f64c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('75d4e3e4-c27b-51d5-b885-91f69963e221', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_venue_comparison_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5a81fc2acbafe63fa2d0120cbfc6648bf11a5db1b2ae2671b895c0b9d03c1fd9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a64321d6-3cbc-5730-8805-3b6b238570f1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('75d4e3e4-c27b-51d5-b885-91f69963e221', 1), '5a81fc2acbafe63fa2d0120cbfc6648bf11a5db1b2ae2671b895c0b9d03c1fd9',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/51266bd48c2f51ad4bad6b8c400f9c1d4a970d8ac0bb940677079dd896b8f64c.mp3', 1906, '2026-09-13 08:47:04.150570', '3d46a550a10ae6587a13e64e247b970caf28ed4947b3ae7b591e8201b9e8684d', 'validated', '{"audio_key":"51266bd48c2f51ad4bad6b8c400f9c1d4a970d8ac0bb940677079dd896b8f64c","entity_key":"d_venue_comparison_02:4","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3d46a550a10ae6587a13e64e247b970caf28ed4947b3ae7b591e8201b9e8684d","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/51266bd48c2f51ad4bad6b8c400f9c1d4a970d8ac0bb940677079dd896b8f64c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_shared_planning_01:2 -> audio/generated/de-DE/dialogues/5174100fcebca1650fcd33c2e218ae7944ce68ba9c12bf9578b325c144656891.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5f144e13-bc9c-555c-85ec-dfb6429e954b', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_shared_planning_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bcdf13befdfd2cefd38b437c8ea4f000c257361d337507e5d1cd9e4b5472641f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7bb0e8bb-3958-59f2-b790-22f4e96aa936', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5f144e13-bc9c-555c-85ec-dfb6429e954b', 1), 'bcdf13befdfd2cefd38b437c8ea4f000c257361d337507e5d1cd9e4b5472641f',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5174100fcebca1650fcd33c2e218ae7944ce68ba9c12bf9578b325c144656891.mp3', 2638, '2026-09-13 08:47:04.498535', '8456161e9eb74b9d3fc720453c3fa6b07e825e1e2f71f08e9b3b05ae03352e85', 'validated', '{"audio_key":"5174100fcebca1650fcd33c2e218ae7944ce68ba9c12bf9578b325c144656891","entity_key":"d_shared_planning_01:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"8456161e9eb74b9d3fc720453c3fa6b07e825e1e2f71f08e9b3b05ae03352e85","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/5174100fcebca1650fcd33c2e218ae7944ce68ba9c12bf9578b325c144656891.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_learning_goals_01:4 -> audio/generated/de-DE/dialogues/51879b6618454192b95d50b655d1f796f8e57dbde5506f251d4ec755bc5d53fa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0862d54b-8d10-550b-b800-8740ab700057', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_learning_goals_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aac74d10ce77c42fdbdf7dce70f76973e29fdb05009787cdc76acd17be67468a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d9a5a7fc-cc7b-5b9f-b4b9-4d672771e549', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0862d54b-8d10-550b-b800-8740ab700057', 1), 'aac74d10ce77c42fdbdf7dce70f76973e29fdb05009787cdc76acd17be67468a',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/51879b6618454192b95d50b655d1f796f8e57dbde5506f251d4ec755bc5d53fa.mp3', 2533, '2026-09-13 08:47:05.505071', 'b7908497a32d49acec43cecb4ae587a572d1ad891f0c2e1c693bdf84537c3a06', 'validated', '{"audio_key":"51879b6618454192b95d50b655d1f796f8e57dbde5506f251d4ec755bc5d53fa","entity_key":"d_learning_goals_01:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"b7908497a32d49acec43cecb4ae587a572d1ad891f0c2e1c693bdf84537c3a06","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/51879b6618454192b95d50b655d1f796f8e57dbde5506f251d4ec755bc5d53fa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_resource_priorities_03:3 -> audio/generated/de-DE/dialogues/537776cc9b53636c50f004d8bb94a0e0d9d866145af6e967efa3c12400cff0b7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('33111283-12ee-51cf-a985-33be8a108a1e', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_resource_priorities_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9bd594794be9e9c70da03f1c41245ebcabcf4e4cef55ebbf82ffe6eeed46019a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('08f61778-55f1-5958-83f7-6fe8f6aa0b2e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('33111283-12ee-51cf-a985-33be8a108a1e', 1), '9bd594794be9e9c70da03f1c41245ebcabcf4e4cef55ebbf82ffe6eeed46019a',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/537776cc9b53636c50f004d8bb94a0e0d9d866145af6e967efa3c12400cff0b7.mp3', 4597, '2026-09-13 08:47:05.907405', 'a8c3dad7128edd832d00ce4b30c1c57d077b739280bed155ca4cc11797c1452d', 'validated', '{"audio_key":"537776cc9b53636c50f004d8bb94a0e0d9d866145af6e967efa3c12400cff0b7","entity_key":"d_resource_priorities_03:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"a8c3dad7128edd832d00ce4b30c1c57d077b739280bed155ca4cc11797c1452d","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/537776cc9b53636c50f004d8bb94a0e0d9d866145af6e967efa3c12400cff0b7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_structured_meetings_03:3 -> audio/generated/de-DE/dialogues/542500f9620ac02cb8767231699ae4dcb002ba284323f76e2c9118036466491a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b4921c77-7ee3-5ce0-8a7e-4464056ba230', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_structured_meetings_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '14ade399adf4f53984adc67adcaa8c508e8345f3013924db4b6f60f514754a0c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6499c27c-7817-5f18-bb81-c60db657de3b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b4921c77-7ee3-5ce0-8a7e-4464056ba230', 1), '14ade399adf4f53984adc67adcaa8c508e8345f3013924db4b6f60f514754a0c',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/542500f9620ac02cb8767231699ae4dcb002ba284323f76e2c9118036466491a.mp3', 2507, '2026-09-13 08:47:06.694210', 'b2e91bb42ecfe5ca0039aab6d77e93050cf211fbc3066ab618529042015f0d87', 'validated', '{"audio_key":"542500f9620ac02cb8767231699ae4dcb002ba284323f76e2c9118036466491a","entity_key":"d_structured_meetings_03:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"b2e91bb42ecfe5ca0039aab6d77e93050cf211fbc3066ab618529042015f0d87","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/542500f9620ac02cb8767231699ae4dcb002ba284323f76e2c9118036466491a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cultural_reviews_01:3 -> audio/generated/de-DE/dialogues/5721448871b79dc1d5c0f329a170552266de7ece4625e50f5681c56fe965cdca.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f40ed490-eb41-526c-8c9c-be7b95402c75', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cultural_reviews_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '69149ec2293a536c460470dcd407769ec801effb95539ba82c7dfce9c7a9beb6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1e3be19c-66bb-5c5d-89fd-ad32db64f4df', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f40ed490-eb41-526c-8c9c-be7b95402c75', 1), '69149ec2293a536c460470dcd407769ec801effb95539ba82c7dfce9c7a9beb6',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5721448871b79dc1d5c0f329a170552266de7ece4625e50f5681c56fe965cdca.mp3', 3186, '2026-09-13 08:47:07.148785', '7bdef9af63128970fea88abfd29ebeb733fc61cca5689c03c8a840ccda86cd9b', 'validated', '{"audio_key":"5721448871b79dc1d5c0f329a170552266de7ece4625e50f5681c56fe965cdca","entity_key":"d_cultural_reviews_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"7bdef9af63128970fea88abfd29ebeb733fc61cca5689c03c8a840ccda86cd9b","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/5721448871b79dc1d5c0f329a170552266de7ece4625e50f5681c56fe965cdca.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cultural_reviews_03:4 -> audio/generated/de-DE/dialogues/5a1ec81a95addfe5941d90a8b7cbb3bbf35964d24cb1b698ca19428683a52c7c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b764d1d7-2a33-52a3-8d3f-17229ed0be76', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cultural_reviews_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '03a316d05bb0fcacc2ff501fd5758adbf881d07a0e3528da16d243a783a0a215'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('38dcf784-09d3-5aa6-af9b-e2936c79225f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b764d1d7-2a33-52a3-8d3f-17229ed0be76', 1), '03a316d05bb0fcacc2ff501fd5758adbf881d07a0e3528da16d243a783a0a215',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5a1ec81a95addfe5941d90a8b7cbb3bbf35964d24cb1b698ca19428683a52c7c.mp3', 2351, '2026-09-13 08:47:07.853885', 'd911089033b973f734d96db8a4833e0918bc660e60e5cc45b25cc517cc16c825', 'validated', '{"audio_key":"5a1ec81a95addfe5941d90a8b7cbb3bbf35964d24cb1b698ca19428683a52c7c","entity_key":"d_cultural_reviews_03:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"d911089033b973f734d96db8a4833e0918bc660e60e5cc45b25cc517cc16c825","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/5a1ec81a95addfe5941d90a8b7cbb3bbf35964d24cb1b698ca19428683a52c7c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_experience_reflection_03:2 -> audio/generated/de-DE/dialogues/5a865db66d3fbe4271a45be206541361bcd7b971dd086faa3020715faab41cc1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('280c8cd9-f755-5162-a0bd-eb391f59efb7', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_experience_reflection_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7be15b3cdffcbcf704890567ccbee6301b1987ab71a9f673b559d9e6e92f24db'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('65e3edb7-2d0f-5cc7-96a7-385010c015f4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('280c8cd9-f755-5162-a0bd-eb391f59efb7', 1), '7be15b3cdffcbcf704890567ccbee6301b1987ab71a9f673b559d9e6e92f24db',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5a865db66d3fbe4271a45be206541361bcd7b971dd086faa3020715faab41cc1.mp3', 2586, '2026-09-13 08:47:08.312833', '004aa785b7067f97689762c91bcc71bf6118e7d0d9312b655a2615a9f3a6bf0d', 'validated', '{"audio_key":"5a865db66d3fbe4271a45be206541361bcd7b971dd086faa3020715faab41cc1","entity_key":"d_experience_reflection_03:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"004aa785b7067f97689762c91bcc71bf6118e7d0d9312b655a2615a9f3a6bf0d","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/5a865db66d3fbe4271a45be206541361bcd7b971dd086faa3020715faab41cc1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_learning_goals_01:2 -> audio/generated/de-DE/dialogues/5cdcc9a93b961db021a75a1f3021113f856c631915a293f5cf38823817c25d02.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c72bb1ca-a85b-51e9-86a6-5b9bf758aaa8', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_learning_goals_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bc71c65c35cfdccb5f613f013b1dcaf9e92ce15c2166e3b4439907a9da1acc06'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ddeaceb0-d940-513d-a00c-daa43d8cd618', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c72bb1ca-a85b-51e9-86a6-5b9bf758aaa8', 1), 'bc71c65c35cfdccb5f613f013b1dcaf9e92ce15c2166e3b4439907a9da1acc06',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5cdcc9a93b961db021a75a1f3021113f856c631915a293f5cf38823817c25d02.mp3', 2742, '2026-09-13 08:47:09.010992', '481666df529ef409d3d6371a964af48bbef40dd9fdfd846616ab4f1ff4de6224', 'validated', '{"audio_key":"5cdcc9a93b961db021a75a1f3021113f856c631915a293f5cf38823817c25d02","entity_key":"d_learning_goals_01:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"481666df529ef409d3d6371a964af48bbef40dd9fdfd846616ab4f1ff4de6224","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/5cdcc9a93b961db021a75a1f3021113f856c631915a293f5cf38823817c25d02.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_responsibility_corrections_01:2 -> audio/generated/de-DE/dialogues/5dfaae885899ec537543ece054f437998a0e750960ded0048608261ecfe00c10.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('daf93f66-9a1b-52c3-bfc7-66af4393943a', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_responsibility_corrections_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '919214bf2c23941fcd4788e09e9aba09f8cf6891efa82b7961c87f01545de5a8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c6f36683-845b-51c4-a295-396bfd703993', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('daf93f66-9a1b-52c3-bfc7-66af4393943a', 1), '919214bf2c23941fcd4788e09e9aba09f8cf6891efa82b7961c87f01545de5a8',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5dfaae885899ec537543ece054f437998a0e750960ded0048608261ecfe00c10.mp3', 1906, '2026-09-13 08:47:09.464969', 'cb849f4b18c73a546caf60dd49bc534d63d222bb6bec9e4fbce6d153d0c3361d', 'validated', '{"audio_key":"5dfaae885899ec537543ece054f437998a0e750960ded0048608261ecfe00c10","entity_key":"d_responsibility_corrections_01:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"cb849f4b18c73a546caf60dd49bc534d63d222bb6bec9e4fbce6d153d0c3361d","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/5dfaae885899ec537543ece054f437998a0e750960ded0048608261ecfe00c10.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_learning_goals_02:1 -> audio/generated/de-DE/dialogues/619f8a835ae6e169abc41db4efdc805f15d7d70027c6e56595eff3f61205cdce.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('37803956-ab85-532f-a0bb-c80049f3c760', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_learning_goals_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eb9cca5c70dd3024279ef8358c665d66bc160720a6f55e4f4eea51a3a26f7b70'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('556759d6-d63a-552e-9341-985db6734e81', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('37803956-ab85-532f-a0bb-c80049f3c760', 1), 'eb9cca5c70dd3024279ef8358c665d66bc160720a6f55e4f4eea51a3a26f7b70',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/619f8a835ae6e169abc41db4efdc805f15d7d70027c6e56595eff3f61205cdce.mp3', 2638, '2026-09-13 08:47:10.190857', '9b044912a96239d88886a2d6885ba9e89a35947d6a9add79df5eba0fae365cc2', 'validated', '{"audio_key":"619f8a835ae6e169abc41db4efdc805f15d7d70027c6e56595eff3f61205cdce","entity_key":"d_learning_goals_02:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"9b044912a96239d88886a2d6885ba9e89a35947d6a9add79df5eba0fae365cc2","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/619f8a835ae6e169abc41db4efdc805f15d7d70027c6e56595eff3f61205cdce.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_shared_planning_01:1 -> audio/generated/de-DE/dialogues/634937b08777e1b113fe64a5b15034e129523b6f39f5e03cef3312bc8596b48b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('53bb08a4-dd15-5c9f-8c78-8153a3743849', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_shared_planning_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4becc0c32c1fac5c567b77749f50ba36b873699ef3c3b76bddfcc1e0fc81cbca'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ee1fd778-0953-549f-a0f0-0b60863edc25', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('53bb08a4-dd15-5c9f-8c78-8153a3743849', 1), '4becc0c32c1fac5c567b77749f50ba36b873699ef3c3b76bddfcc1e0fc81cbca',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/634937b08777e1b113fe64a5b15034e129523b6f39f5e03cef3312bc8596b48b.mp3', 3343, '2026-09-13 08:47:10.707132', '63afc98a22cf29ab69cbcbce9aedec54b2e94b785da1d1cb99bdee446e38211b', 'validated', '{"audio_key":"634937b08777e1b113fe64a5b15034e129523b6f39f5e03cef3312bc8596b48b","entity_key":"d_shared_planning_01:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"63afc98a22cf29ab69cbcbce9aedec54b2e94b785da1d1cb99bdee446e38211b","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/634937b08777e1b113fe64a5b15034e129523b6f39f5e03cef3312bc8596b48b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_experience_reflection_03:1 -> audio/generated/de-DE/dialogues/65656b0eb86de3073740c49257a56fe209ed86da7f967926920aeb4b97c30624.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6c0e28c3-ed21-51f0-a330-52f43e2d7405', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_experience_reflection_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b06aa88891bfcde3125c75f2ef3981e0517f9f2294c4cad42dd8e75e5245ce8a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e5bcffe4-f5a0-5944-a3dd-7971248f3feb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6c0e28c3-ed21-51f0-a330-52f43e2d7405', 1), 'b06aa88891bfcde3125c75f2ef3981e0517f9f2294c4cad42dd8e75e5245ce8a',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/65656b0eb86de3073740c49257a56fe209ed86da7f967926920aeb4b97c30624.mp3', 2115, '2026-09-13 08:47:11.307921', '9e47650421a2fdd6ee4fd234de24d8ae1f1b52a92c5e7070a1e04a3074837935', 'validated', '{"audio_key":"65656b0eb86de3073740c49257a56fe209ed86da7f967926920aeb4b97c30624","entity_key":"d_experience_reflection_03:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"9e47650421a2fdd6ee4fd234de24d8ae1f1b52a92c5e7070a1e04a3074837935","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/65656b0eb86de3073740c49257a56fe209ed86da7f967926920aeb4b97c30624.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_venue_comparison_01:3 -> audio/generated/de-DE/dialogues/68bfa77fd7ba7d6e2cc05961f5f7db42381679bf8a8944666df513c5cd1c44d6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bb71eba2-b304-5a89-a057-8be0b57cea4d', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_venue_comparison_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b60e7d29059f0d2abe40de3a65806eddd76e68ebdbfa7e307b13e7553a47105e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a8017551-fb43-5c03-80d4-d2c85edb59c5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bb71eba2-b304-5a89-a057-8be0b57cea4d', 1), 'b60e7d29059f0d2abe40de3a65806eddd76e68ebdbfa7e307b13e7553a47105e',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/68bfa77fd7ba7d6e2cc05961f5f7db42381679bf8a8944666df513c5cd1c44d6.mp3', 3369, '2026-09-13 08:47:11.944685', '15a9c640f1615e54d706fa1b8302f6cdee5e77aa4e674e5198b9fb4e70b696c1', 'validated', '{"audio_key":"68bfa77fd7ba7d6e2cc05961f5f7db42381679bf8a8944666df513c5cd1c44d6","entity_key":"d_venue_comparison_01:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"15a9c640f1615e54d706fa1b8302f6cdee5e77aa4e674e5198b9fb4e70b696c1","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/68bfa77fd7ba7d6e2cc05961f5f7db42381679bf8a8944666df513c5cd1c44d6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_project_documentation_02:2 -> audio/generated/de-DE/dialogues/6bf60ea9c0d8c1d8808418f98cae7fc0c3192573d20e7ecfd1957d3173c408ae.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('462bc754-d01f-57fc-819e-6dd70efdb7b7', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_project_documentation_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c7a312534eac23a1f23b6ec7b3d5bdbb67bb3549cd7a86d8510c7fbea579f8b5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('49ca6b85-0920-5a9a-abca-837250bc884b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('462bc754-d01f-57fc-819e-6dd70efdb7b7', 1), 'c7a312534eac23a1f23b6ec7b3d5bdbb67bb3549cd7a86d8510c7fbea579f8b5',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6bf60ea9c0d8c1d8808418f98cae7fc0c3192573d20e7ecfd1957d3173c408ae.mp3', 2403, '2026-09-13 08:47:12.415576', '80f02de804af7af9de3550d4ca1942b82a3e9c5801ddf545f25b282911909f0c', 'validated', '{"audio_key":"6bf60ea9c0d8c1d8808418f98cae7fc0c3192573d20e7ecfd1957d3173c408ae","entity_key":"d_project_documentation_02:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"80f02de804af7af9de3550d4ca1942b82a3e9c5801ddf545f25b282911909f0c","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/6bf60ea9c0d8c1d8808418f98cae7fc0c3192573d20e7ecfd1957d3173c408ae.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_rules_requirements_02:3 -> audio/generated/de-DE/dialogues/6cdbe5af9b676ad640a32ff1c11175ed1fefc79059432624a04ce445dc80f92f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('dac36461-93b3-5408-baaa-a7839bc6697e', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_rules_requirements_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '586848f2d31c1c8a8f072b6edd93bc6cee866a83d87c7b0e9a74e5b4cf7ebcdf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c3797589-cc0c-539a-8964-41d8fbe72700', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('dac36461-93b3-5408-baaa-a7839bc6697e', 1), '586848f2d31c1c8a8f072b6edd93bc6cee866a83d87c7b0e9a74e5b4cf7ebcdf',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6cdbe5af9b676ad640a32ff1c11175ed1fefc79059432624a04ce445dc80f92f.mp3', 2925, '2026-09-13 08:47:13.108081', 'b4a70d2c50116915b23520477b1f3d0967b93823d01b0dbeaa4df8e5d8b3a4a7', 'validated', '{"audio_key":"6cdbe5af9b676ad640a32ff1c11175ed1fefc79059432624a04ce445dc80f92f","entity_key":"d_rules_requirements_02:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b4a70d2c50116915b23520477b1f3d0967b93823d01b0dbeaa4df8e5d8b3a4a7","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/6cdbe5af9b676ad640a32ff1c11175ed1fefc79059432624a04ce445dc80f92f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_rules_requirements_03:2 -> audio/generated/de-DE/dialogues/6d49b6ef294f2f2d63d7563b2862e8c77c06e1b8b7f0a74d5714abd1e8e92321.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a8983353-eb0f-5f2b-adce-19e43f72561d', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_rules_requirements_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0933993b2ce4dad565f2141bce3debd37e69224632ccdba4180c68d60be80807'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b92dffd1-73a9-5494-8333-ddbe57a328b9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a8983353-eb0f-5f2b-adce-19e43f72561d', 1), '0933993b2ce4dad565f2141bce3debd37e69224632ccdba4180c68d60be80807',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6d49b6ef294f2f2d63d7563b2862e8c77c06e1b8b7f0a74d5714abd1e8e92321.mp3', 2690, '2026-09-13 08:47:13.567681', '3af5f6adf97e4dde8f844d969b7b3e1d1887e557d173cb5f339cffe04a35c6ff', 'validated', '{"audio_key":"6d49b6ef294f2f2d63d7563b2862e8c77c06e1b8b7f0a74d5714abd1e8e92321","entity_key":"d_rules_requirements_03:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"3af5f6adf97e4dde8f844d969b7b3e1d1887e557d173cb5f339cffe04a35c6ff","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/6d49b6ef294f2f2d63d7563b2862e8c77c06e1b8b7f0a74d5714abd1e8e92321.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_responsibility_corrections_02:1 -> audio/generated/de-DE/dialogues/6e0121c8e89df57935abd809ee14073ae4ccfe5958d033be09604758a1c01106.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3b7754ea-f93d-57df-a790-a78d03ef33ba', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_responsibility_corrections_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ffd7e9953caf4f1570e75c283078a4063a326681ff26b15c63dc2f0ba5e70a2f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bd3cbb76-b165-5ba0-a11c-26338b068010', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3b7754ea-f93d-57df-a790-a78d03ef33ba', 1), 'ffd7e9953caf4f1570e75c283078a4063a326681ff26b15c63dc2f0ba5e70a2f',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6e0121c8e89df57935abd809ee14073ae4ccfe5958d033be09604758a1c01106.mp3', 2351, '2026-09-13 08:47:14.264839', '8cbe21e9fb74f7d55b45daf378aeb46603e549f2e84400f41cecf5d5aa92aa32', 'validated', '{"audio_key":"6e0121c8e89df57935abd809ee14073ae4ccfe5958d033be09604758a1c01106","entity_key":"d_responsibility_corrections_02:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"8cbe21e9fb74f7d55b45daf378aeb46603e549f2e84400f41cecf5d5aa92aa32","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/6e0121c8e89df57935abd809ee14073ae4ccfe5958d033be09604758a1c01106.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_project_documentation_01:2 -> audio/generated/de-DE/dialogues/72f4fcbf8afe2d10fdd821eb0aa9ae5bd688333e380b0b4edaefcccf6ebbe652.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5ce84025-1f21-5ed6-bed5-5737b584b699', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_project_documentation_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bb2595e4c84ce89ece9c3926872111a20ed0a0797516ec85a7f478af87a34aae'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f8ee4f01-e684-554e-af3b-e288f88965a9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5ce84025-1f21-5ed6-bed5-5737b584b699', 1), 'bb2595e4c84ce89ece9c3926872111a20ed0a0797516ec85a7f478af87a34aae',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/72f4fcbf8afe2d10fdd821eb0aa9ae5bd688333e380b0b4edaefcccf6ebbe652.mp3', 3996, '2026-09-13 08:47:14.900256', '307f98f9feaaa367fc01896734d947380622d7579d660aec6e6e3c431c06be02', 'validated', '{"audio_key":"72f4fcbf8afe2d10fdd821eb0aa9ae5bd688333e380b0b4edaefcccf6ebbe652","entity_key":"d_project_documentation_01:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"307f98f9feaaa367fc01896734d947380622d7579d660aec6e6e3c431c06be02","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/72f4fcbf8afe2d10fdd821eb0aa9ae5bd688333e380b0b4edaefcccf6ebbe652.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_shared_planning_03:1 -> audio/generated/de-DE/dialogues/76fac18638358581bcfec41c5f57ced79e90b881ae984403304ef9e91a7f4f62.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fc15e08b-06af-55a9-8a78-8e6cc6054fef', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_shared_planning_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '993e0cbd0776c081da4e79b1d15999f585c29de41aeacaa1b0b5f6b8ba661179'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d04e3f62-25b6-5a59-b88a-710f23c24cce', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fc15e08b-06af-55a9-8a78-8e6cc6054fef', 1), '993e0cbd0776c081da4e79b1d15999f585c29de41aeacaa1b0b5f6b8ba661179',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/76fac18638358581bcfec41c5f57ced79e90b881ae984403304ef9e91a7f4f62.mp3', 2403, '2026-09-13 08:47:15.459551', 'd0638389fefccf2e79c08cb104bc0e84a45c04d05b6a651b5c00a4960ab18fe1', 'validated', '{"audio_key":"76fac18638358581bcfec41c5f57ced79e90b881ae984403304ef9e91a7f4f62","entity_key":"d_shared_planning_03:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"d0638389fefccf2e79c08cb104bc0e84a45c04d05b6a651b5c00a4960ab18fe1","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/76fac18638358581bcfec41c5f57ced79e90b881ae984403304ef9e91a7f4f62.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_project_documentation_01:3 -> audio/generated/de-DE/dialogues/772b2af3db6101c2d83cb5e0d9be32d41451b5df5bdb7f20b8d63be6c9cd2d5f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ad752ecf-7854-50f3-b5bd-568e0d5e1c41', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_project_documentation_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dc61e3fa43c6e60feb4b7f5a1f1cef12b6f786fa941748f09d16a13a890cc72c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9333bfcc-1a3c-52fc-835d-e1bd651a952c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ad752ecf-7854-50f3-b5bd-568e0d5e1c41', 1), 'dc61e3fa43c6e60feb4b7f5a1f1cef12b6f786fa941748f09d16a13a890cc72c',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/772b2af3db6101c2d83cb5e0d9be32d41451b5df5bdb7f20b8d63be6c9cd2d5f.mp3', 2324, '2026-09-13 08:47:16.033378', '104cbf2668fdf9702142e15e8da106186443d7c5304ca4d5058bc99842e47b26', 'validated', '{"audio_key":"772b2af3db6101c2d83cb5e0d9be32d41451b5df5bdb7f20b8d63be6c9cd2d5f","entity_key":"d_project_documentation_01:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"104cbf2668fdf9702142e15e8da106186443d7c5304ca4d5058bc99842e47b26","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/772b2af3db6101c2d83cb5e0d9be32d41451b5df5bdb7f20b8d63be6c9cd2d5f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_resource_priorities_02:2 -> audio/generated/de-DE/dialogues/78ca75812b0a392864be7ef587b70f5f83fd546966f7514f27788ef72b1e382c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('424bf3ea-bf0e-58e5-8be0-c7d5c977ac37', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_resource_priorities_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '28fc0fce3045890af62d7b79816ccf36a4c2318207666bd057e6c3cc4c37a5f6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a89d1bba-8bba-522d-8fb5-0d241e3bdd88', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('424bf3ea-bf0e-58e5-8be0-c7d5c977ac37', 1), '28fc0fce3045890af62d7b79816ccf36a4c2318207666bd057e6c3cc4c37a5f6',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/78ca75812b0a392864be7ef587b70f5f83fd546966f7514f27788ef72b1e382c.mp3', 2403, '2026-09-13 08:47:16.609273', 'e54ca286f73ee65b16410d9e8150238392a9dd3d187b61f5586808bac61df370', 'validated', '{"audio_key":"78ca75812b0a392864be7ef587b70f5f83fd546966f7514f27788ef72b1e382c","entity_key":"d_resource_priorities_02:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"e54ca286f73ee65b16410d9e8150238392a9dd3d187b61f5586808bac61df370","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/78ca75812b0a392864be7ef587b70f5f83fd546966f7514f27788ef72b1e382c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_rules_requirements_03:1 -> audio/generated/de-DE/dialogues/78fef28a86c2b740d5c4614d4a0fca9bbe8c5bde6d42c709f156aab80adc3b8d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('45830d35-7f62-5a50-be46-5ee189d7be42', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_rules_requirements_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '892fabaff37b7d26ee68cf8bd02012c3ad5fb1455ee1fcbf5d18d898144c369a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9e1733d2-3d19-574e-a189-6e52e8575d6b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('45830d35-7f62-5a50-be46-5ee189d7be42', 1), '892fabaff37b7d26ee68cf8bd02012c3ad5fb1455ee1fcbf5d18d898144c369a',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/78fef28a86c2b740d5c4614d4a0fca9bbe8c5bde6d42c709f156aab80adc3b8d.mp3', 3239, '2026-09-13 08:47:17.299012', '64ae1f4aafa3c14938efa348a7381f5bc448cac18f2dcb5421f4a5e3d15e775e', 'validated', '{"audio_key":"78fef28a86c2b740d5c4614d4a0fca9bbe8c5bde6d42c709f156aab80adc3b8d","entity_key":"d_rules_requirements_03:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"64ae1f4aafa3c14938efa348a7381f5bc448cac18f2dcb5421f4a5e3d15e775e","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/78fef28a86c2b740d5c4614d4a0fca9bbe8c5bde6d42c709f156aab80adc3b8d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_rules_requirements_02:4 -> audio/generated/de-DE/dialogues/7b95ba46c317b29ef0058bf7ba474e896b09419f5d39249badbb2048bc2bca1c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0d8001e6-4de6-5154-b800-c19ed1de8ed2', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_rules_requirements_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0f7d58b1f31ce143d7ab076411dac68cf38ab052be5427d26e4d9bd0c165d85d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8596a9ba-51b1-5d3b-bcfd-95f7f5d69749', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0d8001e6-4de6-5154-b800-c19ed1de8ed2', 1), '0f7d58b1f31ce143d7ab076411dac68cf38ab052be5427d26e4d9bd0c165d85d',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7b95ba46c317b29ef0058bf7ba474e896b09419f5d39249badbb2048bc2bca1c.mp3', 3422, '2026-09-13 08:47:17.827731', '608129eefc76c7d94bdd8d2ab5e843e033a35f11aab5cacd5027d75a2042728b', 'validated', '{"audio_key":"7b95ba46c317b29ef0058bf7ba474e896b09419f5d39249badbb2048bc2bca1c","entity_key":"d_rules_requirements_02:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"608129eefc76c7d94bdd8d2ab5e843e033a35f11aab5cacd5027d75a2042728b","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/7b95ba46c317b29ef0058bf7ba474e896b09419f5d39249badbb2048bc2bca1c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_responsibility_corrections_01:3 -> audio/generated/de-DE/dialogues/7ca8143c0de9bf6fbef80df592cb5608674b694638eaa2893fbb2f3be7e318a4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e42372e6-0a62-5504-9cd7-46233e2287f4', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_responsibility_corrections_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'db4f581c9c9aa31a8f751ee6e93ad5508d48071e457585064cbef1619fbdc447'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ab0d5352-532c-588e-925c-e812435aab2f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e42372e6-0a62-5504-9cd7-46233e2287f4', 1), 'db4f581c9c9aa31a8f751ee6e93ad5508d48071e457585064cbef1619fbdc447',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7ca8143c0de9bf6fbef80df592cb5608674b694638eaa2893fbb2f3be7e318a4.mp3', 4832, '2026-09-13 08:47:18.801210', 'c4066eeba340397f2f1d74dbd3e8ef939a31841ab81dd4d7f3cf76e541a78b07', 'validated', '{"audio_key":"7ca8143c0de9bf6fbef80df592cb5608674b694638eaa2893fbb2f3be7e318a4","entity_key":"d_responsibility_corrections_01:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"c4066eeba340397f2f1d74dbd3e8ef939a31841ab81dd4d7f3cf76e541a78b07","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/7ca8143c0de9bf6fbef80df592cb5608674b694638eaa2893fbb2f3be7e318a4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_venue_comparison_03:2 -> audio/generated/de-DE/dialogues/82335e7d8762a5abd3f18dbee9e240e1fe456a1a9cfe428e35576f715ac90a11.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5e684272-d3fc-52f4-a5b0-8ed089dc6593', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_venue_comparison_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e75ca4a2739ceafb20e893724cd0780d14780ab6c4830498c8a9e194cd21be36'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ce9b1b5c-2edd-5071-8793-90aab14d22ad', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5e684272-d3fc-52f4-a5b0-8ed089dc6593', 1), 'e75ca4a2739ceafb20e893724cd0780d14780ab6c4830498c8a9e194cd21be36',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/82335e7d8762a5abd3f18dbee9e240e1fe456a1a9cfe428e35576f715ac90a11.mp3', 4545, '2026-09-13 08:47:19.235934', '1547fc9d92642b4d2d6fc7ea66182ded1ca84bb115b9048075e57f3131a1c988', 'validated', '{"audio_key":"82335e7d8762a5abd3f18dbee9e240e1fe456a1a9cfe428e35576f715ac90a11","entity_key":"d_venue_comparison_03:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"1547fc9d92642b4d2d6fc7ea66182ded1ca84bb115b9048075e57f3131a1c988","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/82335e7d8762a5abd3f18dbee9e240e1fe456a1a9cfe428e35576f715ac90a11.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_responsibility_corrections_03:4 -> audio/generated/de-DE/dialogues/856a3e4e7119960d96659491a36ac239affdce1534f580f956636032ca0e2178.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0697fcac-dfe7-5a2d-99f3-76ea3e13a706', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_responsibility_corrections_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e8e615a4af324b7c2b4b871f18cd708f7adf497fbb6aaa6bf809002a24d3a000'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5369fc4d-2abf-5efe-a14e-3ec9d5b7b894', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0697fcac-dfe7-5a2d-99f3-76ea3e13a706', 1), 'e8e615a4af324b7c2b4b871f18cd708f7adf497fbb6aaa6bf809002a24d3a000',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/856a3e4e7119960d96659491a36ac239affdce1534f580f956636032ca0e2178.mp3', 2507, '2026-09-13 08:47:19.933517', '98b6a8b612111ac2e62abcc1ff99992566781e16697f6f9f8a27ad65eb02d7cb', 'validated', '{"audio_key":"856a3e4e7119960d96659491a36ac239affdce1534f580f956636032ca0e2178","entity_key":"d_responsibility_corrections_03:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"98b6a8b612111ac2e62abcc1ff99992566781e16697f6f9f8a27ad65eb02d7cb","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/856a3e4e7119960d96659491a36ac239affdce1534f580f956636032ca0e2178.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_resource_priorities_01:4 -> audio/generated/de-DE/dialogues/8662758f1cb8cde29c4a343909ca0af695b405282650ab2cd35156929d325b2f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('09b93d70-45c5-5245-9321-69a5b59277f7', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_resource_priorities_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e52ed659afbf668b1c3be531a3ff1fcca5d8ac99ecab2a3aa01e1454dcf6b547'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a172c11f-ebc6-56b7-9192-9be9e4724883', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('09b93d70-45c5-5245-9321-69a5b59277f7', 1), 'e52ed659afbf668b1c3be531a3ff1fcca5d8ac99ecab2a3aa01e1454dcf6b547',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8662758f1cb8cde29c4a343909ca0af695b405282650ab2cd35156929d325b2f.mp3', 2455, '2026-09-13 08:47:20.382477', '7f67f2f6503d6f598577b51efaaa7d7aa1f8c0d3aa5ab86091421b499b699193', 'validated', '{"audio_key":"8662758f1cb8cde29c4a343909ca0af695b405282650ab2cd35156929d325b2f","entity_key":"d_resource_priorities_01:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"7f67f2f6503d6f598577b51efaaa7d7aa1f8c0d3aa5ab86091421b499b699193","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/8662758f1cb8cde29c4a343909ca0af695b405282650ab2cd35156929d325b2f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_experience_reflection_02:4 -> audio/generated/de-DE/dialogues/89bb1f18c539061c930d62f034eadc81a980e15d41b2e64814e153912dac8629.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('da3b04a9-8754-592a-ba24-51e3468c7a86', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_experience_reflection_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2413bf4ef220f81167e80f2750e581f1f1e483725bcc3f36ed606e74a71a0f51'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f4052ff1-e3b5-5cf9-bea4-0f303f186f66', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('da3b04a9-8754-592a-ba24-51e3468c7a86', 1), '2413bf4ef220f81167e80f2750e581f1f1e483725bcc3f36ed606e74a71a0f51',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/89bb1f18c539061c930d62f034eadc81a980e15d41b2e64814e153912dac8629.mp3', 2951, '2026-09-13 08:47:21.137454', 'b11b8fe032becd513244fea5a24acb4179a4f48495b5cbe64aae671662c89ea8', 'validated', '{"audio_key":"89bb1f18c539061c930d62f034eadc81a980e15d41b2e64814e153912dac8629","entity_key":"d_experience_reflection_02:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"b11b8fe032becd513244fea5a24acb4179a4f48495b5cbe64aae671662c89ea8","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/89bb1f18c539061c930d62f034eadc81a980e15d41b2e64814e153912dac8629.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cultural_reviews_02:2 -> audio/generated/de-DE/dialogues/89e38b0df39f4c4a203d0db9bd02c4214d6864c9e801f9aeac4d6e54613176a4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fe4618fb-a20b-5d88-b919-597b52a1e4dc', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cultural_reviews_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b2584c1eb8236ca6a60a0ef8d969704cda6cf2a664a4a581906404284fffc1b6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1a0740b3-e6c0-5b43-8007-7297c098501f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fe4618fb-a20b-5d88-b919-597b52a1e4dc', 1), 'b2584c1eb8236ca6a60a0ef8d969704cda6cf2a664a4a581906404284fffc1b6',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/89e38b0df39f4c4a203d0db9bd02c4214d6864c9e801f9aeac4d6e54613176a4.mp3', 3604, '2026-09-13 08:47:21.642824', 'd8c5db4211ea01b795a4403bcc97c3a90545fe967e7cfa141d8813932a2b705a', 'validated', '{"audio_key":"89e38b0df39f4c4a203d0db9bd02c4214d6864c9e801f9aeac4d6e54613176a4","entity_key":"d_cultural_reviews_02:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"d8c5db4211ea01b795a4403bcc97c3a90545fe967e7cfa141d8813932a2b705a","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/89e38b0df39f4c4a203d0db9bd02c4214d6864c9e801f9aeac4d6e54613176a4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_venue_comparison_01:1 -> audio/generated/de-DE/dialogues/8bbd07057e561483fa556cf2a4cfed48794762c39aed25982d0e3327ad1f4fcf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9030b60a-95fa-54a0-be4d-a269d17a34bd', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_venue_comparison_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e03b93a04ff3b0f7e0eabce6cd56ed82c618b766d92f6e6c3d014fcaa972f9de'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d1c65028-7e3d-5256-b507-58dae52c9f24', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9030b60a-95fa-54a0-be4d-a269d17a34bd', 1), 'e03b93a04ff3b0f7e0eabce6cd56ed82c618b766d92f6e6c3d014fcaa972f9de',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8bbd07057e561483fa556cf2a4cfed48794762c39aed25982d0e3327ad1f4fcf.mp3', 2455, '2026-09-13 08:47:22.317508', '58c900eb4d2b26daec4f5c64c2f8532c7a3f12f758b3dd3c70cefb34a2a1645d', 'validated', '{"audio_key":"8bbd07057e561483fa556cf2a4cfed48794762c39aed25982d0e3327ad1f4fcf","entity_key":"d_venue_comparison_01:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"58c900eb4d2b26daec4f5c64c2f8532c7a3f12f758b3dd3c70cefb34a2a1645d","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/8bbd07057e561483fa556cf2a4cfed48794762c39aed25982d0e3327ad1f4fcf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_venue_comparison_03:3 -> audio/generated/de-DE/dialogues/8ed5c3882ab33d3840375aa74135ca04540cebb45cc4d60a152db051022f5d44.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('873f5c6e-ab73-55f8-bff7-afbc6559a610', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_venue_comparison_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ad14f4567c476dcb8784bc8fc24e0540fd383b10763f953c98d42c2e83ab2902'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('630e088d-d3e2-5731-bbba-3e7c7f0a3922', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('873f5c6e-ab73-55f8-bff7-afbc6559a610', 1), 'ad14f4567c476dcb8784bc8fc24e0540fd383b10763f953c98d42c2e83ab2902',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8ed5c3882ab33d3840375aa74135ca04540cebb45cc4d60a152db051022f5d44.mp3', 3343, '2026-09-13 08:47:22.963996', 'b211c835edbf3568805bccdfe8225001e99a6ba4033eb223032d9f557c750079', 'validated', '{"audio_key":"8ed5c3882ab33d3840375aa74135ca04540cebb45cc4d60a152db051022f5d44","entity_key":"d_venue_comparison_03:3","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"b211c835edbf3568805bccdfe8225001e99a6ba4033eb223032d9f557c750079","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/8ed5c3882ab33d3840375aa74135ca04540cebb45cc4d60a152db051022f5d44.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_rules_requirements_01:4 -> audio/generated/de-DE/dialogues/91c9fee4e1ac508815304bd42e9364cadbbd2abd6f38431edc29186d79622fe6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5b02a690-866b-5d7e-9845-d67651c95272', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_rules_requirements_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '888b7f6f4c046b6bcbe7aac0d0230b4165acf065fd0b6d5c0d986b2651be333c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1f43693a-85fa-533f-8a3f-904814325ad4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5b02a690-866b-5d7e-9845-d67651c95272', 1), '888b7f6f4c046b6bcbe7aac0d0230b4165acf065fd0b6d5c0d986b2651be333c',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/91c9fee4e1ac508815304bd42e9364cadbbd2abd6f38431edc29186d79622fe6.mp3', 2507, '2026-09-13 08:47:23.556184', '7332b508e496329490ee0b92ac156cd3dfa9e540d28fa6d72dfb017c32079fdf', 'validated', '{"audio_key":"91c9fee4e1ac508815304bd42e9364cadbbd2abd6f38431edc29186d79622fe6","entity_key":"d_rules_requirements_01:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"7332b508e496329490ee0b92ac156cd3dfa9e540d28fa6d72dfb017c32079fdf","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/91c9fee4e1ac508815304bd42e9364cadbbd2abd6f38431edc29186d79622fe6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_rules_requirements_01:1 -> audio/generated/de-DE/dialogues/9789f48e88c8b194aee84c440b694ba167e8ddc1f56d0f15fbc67a498e6120f4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3b45fcec-6894-53b0-975a-9e5fca00362e', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_rules_requirements_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eba7e963cfcf69c2193019515819e7a8cba71be1571ec91a6d5861291d96eb17'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('92384083-9845-550b-ad5a-d80e5b7456e1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3b45fcec-6894-53b0-975a-9e5fca00362e', 1), 'eba7e963cfcf69c2193019515819e7a8cba71be1571ec91a6d5861291d96eb17',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/9789f48e88c8b194aee84c440b694ba167e8ddc1f56d0f15fbc67a498e6120f4.mp3', 3291, '2026-09-13 08:47:24.215574', '30419b6545ebf53f0c827e7674965b015f0b76f25aca6c566f05b3574dc5a1ef', 'validated', '{"audio_key":"9789f48e88c8b194aee84c440b694ba167e8ddc1f56d0f15fbc67a498e6120f4","entity_key":"d_rules_requirements_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"30419b6545ebf53f0c827e7674965b015f0b76f25aca6c566f05b3574dc5a1ef","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/9789f48e88c8b194aee84c440b694ba167e8ddc1f56d0f15fbc67a498e6120f4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_structured_meetings_03:1 -> audio/generated/de-DE/dialogues/9ba35157aea305d0c003c18bdc478da73a13ab8fee4fb5f6244fd5f6ea31eca5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('da095920-aeb3-5d5a-845a-2c19351246cc', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_structured_meetings_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b65e5fc6590065ea5f780cf31408624f5bb33a2d3a2f2afa4a7f5bd515eef43d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d497771d-7d48-5e50-858a-4e83666b36ba', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('da095920-aeb3-5d5a-845a-2c19351246cc', 1), 'b65e5fc6590065ea5f780cf31408624f5bb33a2d3a2f2afa4a7f5bd515eef43d',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/9ba35157aea305d0c003c18bdc478da73a13ab8fee4fb5f6244fd5f6ea31eca5.mp3', 4075, '2026-09-13 08:47:24.894598', '3dd29464a8165b1388d539ec025aefda69e002cabba361dd9897036f811ec33b', 'validated', '{"audio_key":"9ba35157aea305d0c003c18bdc478da73a13ab8fee4fb5f6244fd5f6ea31eca5","entity_key":"d_structured_meetings_03:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"3dd29464a8165b1388d539ec025aefda69e002cabba361dd9897036f811ec33b","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/9ba35157aea305d0c003c18bdc478da73a13ab8fee4fb5f6244fd5f6ea31eca5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_resource_priorities_02:1 -> audio/generated/de-DE/dialogues/9c0117f8d892c6ae296eef9035c10dd431743720792d5d5e88e2a89b95997a21.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0cff57c4-aee0-5172-9867-e36333ce0485', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_resource_priorities_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f6a837a8da81d4dedb49c719244983cbc8eb110ada06dafcd26c9926850d5c04'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('082813d4-2186-5d2f-ad12-232dd231c22b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0cff57c4-aee0-5172-9867-e36333ce0485', 1), 'f6a837a8da81d4dedb49c719244983cbc8eb110ada06dafcd26c9926850d5c04',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/9c0117f8d892c6ae296eef9035c10dd431743720792d5d5e88e2a89b95997a21.mp3', 3186, '2026-09-13 08:47:25.451231', '8dc4dad54eceb59fac5e5dceee2e7254bf4b1df9467690860cf0cf1332925619', 'validated', '{"audio_key":"9c0117f8d892c6ae296eef9035c10dd431743720792d5d5e88e2a89b95997a21","entity_key":"d_resource_priorities_02:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"8dc4dad54eceb59fac5e5dceee2e7254bf4b1df9467690860cf0cf1332925619","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/9c0117f8d892c6ae296eef9035c10dd431743720792d5d5e88e2a89b95997a21.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_shared_planning_01:4 -> audio/generated/de-DE/dialogues/a1a2c5adaecdf28ab5785bf432ac72141ce2164511dd4e1b536052bae0b3727e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e1c57fe1-c6d8-5110-9a7f-76c47693adb7', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_shared_planning_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6927cb1d1dc3d05e1860aa4c7c82c4c0dd52b5d0d625e9cfb98737ec06cc8942'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3560f0d5-b4d9-5868-92b1-751c1aecd671', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e1c57fe1-c6d8-5110-9a7f-76c47693adb7', 1), '6927cb1d1dc3d05e1860aa4c7c82c4c0dd52b5d0d625e9cfb98737ec06cc8942',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a1a2c5adaecdf28ab5785bf432ac72141ce2164511dd4e1b536052bae0b3727e.mp3', 2089, '2026-09-13 08:47:26.007011', 'b3d11a396fa93fd1beea457492186d110b747557e94d3f1aec73d979c2e48889', 'validated', '{"audio_key":"a1a2c5adaecdf28ab5785bf432ac72141ce2164511dd4e1b536052bae0b3727e","entity_key":"d_shared_planning_01:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"b3d11a396fa93fd1beea457492186d110b747557e94d3f1aec73d979c2e48889","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/a1a2c5adaecdf28ab5785bf432ac72141ce2164511dd4e1b536052bae0b3727e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cultural_reviews_02:1 -> audio/generated/de-DE/dialogues/a268222420f38814b295385d541fb94e1ec0678eda694b7d3f5e2de025620251.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('811aeeb5-a344-52e2-86ca-b26e85cb39ea', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cultural_reviews_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '471b41b5876877c0314890b665bebb8d66cbe051ff295e1dcdb129102d58b829'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5940485f-fa07-586b-8af7-ac2219aa0bd7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('811aeeb5-a344-52e2-86ca-b26e85cb39ea', 1), '471b41b5876877c0314890b665bebb8d66cbe051ff295e1dcdb129102d58b829',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a268222420f38814b295385d541fb94e1ec0678eda694b7d3f5e2de025620251.mp3', 2324, '2026-09-13 08:47:26.609823', '8ba9232ebabddc36ee5218e09709adef6ffbafc0495801e756a30938fa0e96f2', 'validated', '{"audio_key":"a268222420f38814b295385d541fb94e1ec0678eda694b7d3f5e2de025620251","entity_key":"d_cultural_reviews_02:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"8ba9232ebabddc36ee5218e09709adef6ffbafc0495801e756a30938fa0e96f2","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/a268222420f38814b295385d541fb94e1ec0678eda694b7d3f5e2de025620251.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_structured_meetings_01:2 -> audio/generated/de-DE/dialogues/a5b963d0fbd3a61e5e298d20bd16c0e68479ada0a707d9fea35534eabf19ad29.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('841e309f-16be-57e5-9d00-9f5537089804', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_structured_meetings_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a7991cb7ed5e587afb389f6ceb12c7eb6dd0ac2d2f91b517a8553bc51403ae42'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b2c936e9-0f2f-5ae9-9c06-27ffaa4523fb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('841e309f-16be-57e5-9d00-9f5537089804', 1), 'a7991cb7ed5e587afb389f6ceb12c7eb6dd0ac2d2f91b517a8553bc51403ae42',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a5b963d0fbd3a61e5e298d20bd16c0e68479ada0a707d9fea35534eabf19ad29.mp3', 2768, '2026-09-13 08:47:27.194024', '478ff8100f10d51f61317057f0523f86dc977a25cca4c8a164fe0b6c539b6907', 'validated', '{"audio_key":"a5b963d0fbd3a61e5e298d20bd16c0e68479ada0a707d9fea35534eabf19ad29","entity_key":"d_structured_meetings_01:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"478ff8100f10d51f61317057f0523f86dc977a25cca4c8a164fe0b6c539b6907","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/a5b963d0fbd3a61e5e298d20bd16c0e68479ada0a707d9fea35534eabf19ad29.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_responsibility_corrections_03:1 -> audio/generated/de-DE/dialogues/ad18ecdcf7aba6f9cea751810b2d518e7a302cb323703bcbbeb64f89ea0d80a0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d7265a78-ac94-56b0-9198-fc398aba0293', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_responsibility_corrections_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'da9001c97ddeafe445fe6a93ef638cdce95a5b95d6e8fa0dec2062988b480a96'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2ffb18f1-47b7-5a4d-8158-d4e988b65953', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d7265a78-ac94-56b0-9198-fc398aba0293', 1), 'da9001c97ddeafe445fe6a93ef638cdce95a5b95d6e8fa0dec2062988b480a96',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ad18ecdcf7aba6f9cea751810b2d518e7a302cb323703bcbbeb64f89ea0d80a0.mp3', 4493, '2026-09-13 08:47:27.976979', '64f31f89e2147ac8eae3280928150f9d3bd9aebcc14b21c10e8956773d0625cd', 'validated', '{"audio_key":"ad18ecdcf7aba6f9cea751810b2d518e7a302cb323703bcbbeb64f89ea0d80a0","entity_key":"d_responsibility_corrections_03:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"64f31f89e2147ac8eae3280928150f9d3bd9aebcc14b21c10e8956773d0625cd","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/ad18ecdcf7aba6f9cea751810b2d518e7a302cb323703bcbbeb64f89ea0d80a0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_responsibility_corrections_03:2 -> audio/generated/de-DE/dialogues/af469fbd376c4c8a3546f6fb585075f0706b3f7a2d22a8b10cf19d3f2c92ae4b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('91b75235-5e06-58d1-acf4-e0b7542a8bf3', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_responsibility_corrections_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4e7b8ac875c5f04f6e602c091ea3edf873497528332f8f7fcf6fcf4eed6a9881'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1a6cb873-2fae-5cc1-93f1-2ffe80ca0839', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('91b75235-5e06-58d1-acf4-e0b7542a8bf3', 1), '4e7b8ac875c5f04f6e602c091ea3edf873497528332f8f7fcf6fcf4eed6a9881',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/af469fbd376c4c8a3546f6fb585075f0706b3f7a2d22a8b10cf19d3f2c92ae4b.mp3', 3761, '2026-09-13 08:47:28.462089', '37fb78558999cf96bf2127087400c63925b6ea187c1a2f9a2e0e26304680fad0', 'validated', '{"audio_key":"af469fbd376c4c8a3546f6fb585075f0706b3f7a2d22a8b10cf19d3f2c92ae4b","entity_key":"d_responsibility_corrections_03:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"37fb78558999cf96bf2127087400c63925b6ea187c1a2f9a2e0e26304680fad0","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/af469fbd376c4c8a3546f6fb585075f0706b3f7a2d22a8b10cf19d3f2c92ae4b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_resource_priorities_03:1 -> audio/generated/de-DE/dialogues/af7c7dbc98b659291e6bed403124f36759e11e1e93de389c763742fb517b00e6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e7fea4b0-7fd8-5859-9329-f1861a198017', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_resource_priorities_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c24fed8492cc632b20e25417b3c3e777f97c4e30bed9d3a4fc3db3a4984c91d1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a9cd59b8-8e42-5983-94ee-c7f110dad67a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e7fea4b0-7fd8-5859-9329-f1861a198017', 1), 'c24fed8492cc632b20e25417b3c3e777f97c4e30bed9d3a4fc3db3a4984c91d1',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/af7c7dbc98b659291e6bed403124f36759e11e1e93de389c763742fb517b00e6.mp3', 3709, '2026-09-13 08:47:29.298602', 'eaca21311022e0d1ee4c412d4ff18e4fba14203372b455b55e63618a8509779f', 'validated', '{"audio_key":"af7c7dbc98b659291e6bed403124f36759e11e1e93de389c763742fb517b00e6","entity_key":"d_resource_priorities_03:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"eaca21311022e0d1ee4c412d4ff18e4fba14203372b455b55e63618a8509779f","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/af7c7dbc98b659291e6bed403124f36759e11e1e93de389c763742fb517b00e6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_structured_meetings_03:2 -> audio/generated/de-DE/dialogues/afa907f5a3e081a26cbae30b74f6116281b810da15e485121871b5df2d88c190.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('465c348f-1df1-5441-9191-93ea501511dc', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_structured_meetings_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2ab18c057f9a2066fd9f7834695c7f9ce886c248cce08523e9b6c66f3789819f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2753a98e-e198-5f57-a61a-756baf53e49f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('465c348f-1df1-5441-9191-93ea501511dc', 1), '2ab18c057f9a2066fd9f7834695c7f9ce886c248cce08523e9b6c66f3789819f',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/afa907f5a3e081a26cbae30b74f6116281b810da15e485121871b5df2d88c190.mp3', 1854, '2026-09-13 08:47:29.548411', 'dbe54eda8444cd2c0b432741d654bcba3f222566553d840a361e5ca6271e2343', 'validated', '{"audio_key":"afa907f5a3e081a26cbae30b74f6116281b810da15e485121871b5df2d88c190","entity_key":"d_structured_meetings_03:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"dbe54eda8444cd2c0b432741d654bcba3f222566553d840a361e5ca6271e2343","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/afa907f5a3e081a26cbae30b74f6116281b810da15e485121871b5df2d88c190.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_experience_reflection_02:2 -> audio/generated/de-DE/dialogues/b0a68507a2270dbc793a94ef829c8fb465a207cb07f469481c2087f38d2f0a14.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('397a6075-bed4-58fa-b668-db11f6f06cca', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_experience_reflection_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '53485012f0b0a115224373211d23fb43f14de9daf52585d33112e184ab90721a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d5c10d84-f8c1-53d4-a3cc-ab158229abd5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('397a6075-bed4-58fa-b668-db11f6f06cca', 1), '53485012f0b0a115224373211d23fb43f14de9daf52585d33112e184ab90721a',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b0a68507a2270dbc793a94ef829c8fb465a207cb07f469481c2087f38d2f0a14.mp3', 2821, '2026-09-13 08:47:30.491861', 'ed31cd1a8586969aab41a2e82082eeb1a26deef75b37f4a424678c98202b4253', 'validated', '{"audio_key":"b0a68507a2270dbc793a94ef829c8fb465a207cb07f469481c2087f38d2f0a14","entity_key":"d_experience_reflection_02:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"ed31cd1a8586969aab41a2e82082eeb1a26deef75b37f4a424678c98202b4253","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/b0a68507a2270dbc793a94ef829c8fb465a207cb07f469481c2087f38d2f0a14.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_learning_goals_02:3 -> audio/generated/de-DE/dialogues/b4446614a288df18042c46e8bd450e05406d40ae885c959f802e2f85ca9bb1ab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('dafd9a10-dd47-551b-90b1-de6481faddde', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_learning_goals_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a2e107d1a00f33916fd19cf6d0e5e97da9635ef832f17590bc252929f7a40efb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('61550923-4be3-5e15-bcc7-668ec6324eac', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('dafd9a10-dd47-551b-90b1-de6481faddde', 1), 'a2e107d1a00f33916fd19cf6d0e5e97da9635ef832f17590bc252929f7a40efb',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b4446614a288df18042c46e8bd450e05406d40ae885c959f802e2f85ca9bb1ab.mp3', 3944, '2026-09-13 08:47:30.865069', '3014251e494be799d074910cda28f56179c398a8ebf3c1aa355f625923f3b66a', 'validated', '{"audio_key":"b4446614a288df18042c46e8bd450e05406d40ae885c959f802e2f85ca9bb1ab","entity_key":"d_learning_goals_02:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"3014251e494be799d074910cda28f56179c398a8ebf3c1aa355f625923f3b66a","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/b4446614a288df18042c46e8bd450e05406d40ae885c959f802e2f85ca9bb1ab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_rules_requirements_02:1 -> audio/generated/de-DE/dialogues/b5f6ce2810a174931a93a3475f40c42c60593b22cb5131cfe2ad1a1031514b37.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('eff7f297-cafe-5557-a418-cb89901afe41', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_rules_requirements_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '05167936d7eb33d5f9df834ea1c7eb066ae4379177baac5ab01c23fbe03c5fc8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7693ad44-489c-5e2a-acd3-c1a8084facf2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('eff7f297-cafe-5557-a418-cb89901afe41', 1), '05167936d7eb33d5f9df834ea1c7eb066ae4379177baac5ab01c23fbe03c5fc8',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b5f6ce2810a174931a93a3475f40c42c60593b22cb5131cfe2ad1a1031514b37.mp3', 2403, '2026-09-13 08:47:31.691130', 'e51b92c6499c2a2885ae1dd253de4f5ff58f5e33b0fc32ed23444d8876bdfdcf', 'validated', '{"audio_key":"b5f6ce2810a174931a93a3475f40c42c60593b22cb5131cfe2ad1a1031514b37","entity_key":"d_rules_requirements_02:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e51b92c6499c2a2885ae1dd253de4f5ff58f5e33b0fc32ed23444d8876bdfdcf","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/b5f6ce2810a174931a93a3475f40c42c60593b22cb5131cfe2ad1a1031514b37.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_structured_meetings_01:3 -> audio/generated/de-DE/dialogues/b616a07d6c1b21224a20ccadfe9356af12b921116e539591c13273129c850f30.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1acabc24-0a90-558d-9ef8-f4628eefb280', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_structured_meetings_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '310d48ca641b8099ab77535af0fe7b3695c41d708ad83dcbe6b340aeb2aa2fe6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1df0809a-fdaa-5744-9838-80fc544099e4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1acabc24-0a90-558d-9ef8-f4628eefb280', 1), '310d48ca641b8099ab77535af0fe7b3695c41d708ad83dcbe6b340aeb2aa2fe6',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b616a07d6c1b21224a20ccadfe9356af12b921116e539591c13273129c850f30.mp3', 4205, '2026-09-13 08:47:32.226554', '0db5ad701a467894b9a1c4f25237a3cb868fe1355a9e3369b73f807c092f25b2', 'validated', '{"audio_key":"b616a07d6c1b21224a20ccadfe9356af12b921116e539591c13273129c850f30","entity_key":"d_structured_meetings_01:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0db5ad701a467894b9a1c4f25237a3cb868fe1355a9e3369b73f807c092f25b2","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/b616a07d6c1b21224a20ccadfe9356af12b921116e539591c13273129c850f30.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_resource_priorities_03:2 -> audio/generated/de-DE/dialogues/bb6a8b480283baba73858304af397d9481e008ee738544977346b35cf33608cb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6bc17e19-23b5-575f-be74-93fe17344d38', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_resource_priorities_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e484c2a20e5e106fb2e8d6ee6f7d13c13d1195c075349635e4da43fa2539315e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0def0685-416e-520c-b4d6-5e3ca6880d9d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6bc17e19-23b5-575f-be74-93fe17344d38', 1), 'e484c2a20e5e106fb2e8d6ee6f7d13c13d1195c075349635e4da43fa2539315e',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/bb6a8b480283baba73858304af397d9481e008ee738544977346b35cf33608cb.mp3', 4022, '2026-09-13 08:47:33.047160', '099dc47abc245db46b5cecc15de84c8855a8bf7b7657bbb6a88c742d19b94741', 'validated', '{"audio_key":"bb6a8b480283baba73858304af397d9481e008ee738544977346b35cf33608cb","entity_key":"d_resource_priorities_03:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"099dc47abc245db46b5cecc15de84c8855a8bf7b7657bbb6a88c742d19b94741","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/bb6a8b480283baba73858304af397d9481e008ee738544977346b35cf33608cb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_rules_requirements_02:2 -> audio/generated/de-DE/dialogues/c00101b20b2322a06aeb556a7e2edb83b51fbb7d04c643cf2f27f2ea8c4c74c9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('02f21ced-177e-5423-8b84-1a25eace9118', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_rules_requirements_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '18fdb1f2b41ff733df09afd6f5f4f3a853c5f80d3a9cedc3eb0bd6b3d6cb444e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a3b2083a-6ac9-5cc9-a268-eaf67e0c3314', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('02f21ced-177e-5423-8b84-1a25eace9118', 1), '18fdb1f2b41ff733df09afd6f5f4f3a853c5f80d3a9cedc3eb0bd6b3d6cb444e',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c00101b20b2322a06aeb556a7e2edb83b51fbb7d04c643cf2f27f2ea8c4c74c9.mp3', 3892, '2026-09-13 08:47:33.531418', '3ab033e93011f5dbeee22c1b3a75ebe3729bcb01a3162afaaae51e24473e5f65', 'validated', '{"audio_key":"c00101b20b2322a06aeb556a7e2edb83b51fbb7d04c643cf2f27f2ea8c4c74c9","entity_key":"d_rules_requirements_02:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"3ab033e93011f5dbeee22c1b3a75ebe3729bcb01a3162afaaae51e24473e5f65","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/c00101b20b2322a06aeb556a7e2edb83b51fbb7d04c643cf2f27f2ea8c4c74c9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_project_documentation_01:1 -> audio/generated/de-DE/dialogues/c220e88cd99603e26b62f670b8dbfe47405d42511bb4431d16eea64a3793a1cd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a6f16c81-10a3-5c9c-86c1-1a323790c130', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_project_documentation_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7f3000f2ada264e1b7ab4007338ab4ab385d81a778b8d0bd7b433c11cde8b74f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('11f4993b-b1cd-52e8-b5b9-56932aaf9c98', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a6f16c81-10a3-5c9c-86c1-1a323790c130', 1), '7f3000f2ada264e1b7ab4007338ab4ab385d81a778b8d0bd7b433c11cde8b74f',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c220e88cd99603e26b62f670b8dbfe47405d42511bb4431d16eea64a3793a1cd.mp3', 2821, '2026-09-13 08:47:34.230061', '0b89408478f68eee596bd76f5962dc4e6c1d512b6c55ccef6fe09e04e35a99af', 'validated', '{"audio_key":"c220e88cd99603e26b62f670b8dbfe47405d42511bb4431d16eea64a3793a1cd","entity_key":"d_project_documentation_01:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"0b89408478f68eee596bd76f5962dc4e6c1d512b6c55ccef6fe09e04e35a99af","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/c220e88cd99603e26b62f670b8dbfe47405d42511bb4431d16eea64a3793a1cd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_shared_planning_02:3 -> audio/generated/de-DE/dialogues/c7ed4bef110c9d4eadd4b2ce8e94e0c2154e82f77a7b76954c14b7b485caf164.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('225b8d55-10e9-5fad-9e39-5071d6e86b6d', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_shared_planning_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7d887822879887f4065dfd7490c0e7226b2b806b7d15965dacb861d5a52e993e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c817f0a8-8774-5aca-89e0-07a3242f6887', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('225b8d55-10e9-5fad-9e39-5071d6e86b6d', 1), '7d887822879887f4065dfd7490c0e7226b2b806b7d15965dacb861d5a52e993e',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c7ed4bef110c9d4eadd4b2ce8e94e0c2154e82f77a7b76954c14b7b485caf164.mp3', 1384, '2026-09-13 08:47:34.571855', 'ea11816f09b3784beaed07ee36f4e03b189f7c13a7c4a796cbb0d98df4230f94', 'validated', '{"audio_key":"c7ed4bef110c9d4eadd4b2ce8e94e0c2154e82f77a7b76954c14b7b485caf164","entity_key":"d_shared_planning_02:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"ea11816f09b3784beaed07ee36f4e03b189f7c13a7c4a796cbb0d98df4230f94","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/c7ed4bef110c9d4eadd4b2ce8e94e0c2154e82f77a7b76954c14b7b485caf164.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_project_documentation_02:4 -> audio/generated/de-DE/dialogues/c898a99181ef57d8ab1b1fd7aba2a33d71511a7dc02b9165fe18a748bc618d4e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('74657f21-9fb9-5098-ade8-2ea8c91274c1', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_project_documentation_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0ea5b90e92b8fab4991a3ca9f39b50463d4cff2428673e40061b24ce368f9986'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c5f8eafe-8a6c-54f6-82d5-df5887d75e46', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('74657f21-9fb9-5098-ade8-2ea8c91274c1', 1), '0ea5b90e92b8fab4991a3ca9f39b50463d4cff2428673e40061b24ce368f9986',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c898a99181ef57d8ab1b1fd7aba2a33d71511a7dc02b9165fe18a748bc618d4e.mp3', 2533, '2026-09-13 08:47:35.429144', '9a90979fd4e3d309cdd37c98bec53d1e79e7db3a50b05f841b47d3ed7645d10a', 'validated', '{"audio_key":"c898a99181ef57d8ab1b1fd7aba2a33d71511a7dc02b9165fe18a748bc618d4e","entity_key":"d_project_documentation_02:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"9a90979fd4e3d309cdd37c98bec53d1e79e7db3a50b05f841b47d3ed7645d10a","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/c898a99181ef57d8ab1b1fd7aba2a33d71511a7dc02b9165fe18a748bc618d4e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_learning_goals_01:1 -> audio/generated/de-DE/dialogues/c90cff0725b7109031f2281522f5d5b88f1c4af4a270bcfa36d147a0be405729.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('62d5d238-4d8c-50c0-9c83-ae7e4e430022', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_learning_goals_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b5546d45eb9c9603f7eb69aa543748370ef789396cd35c9a54d6a8e8b61e9002'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7c78caa9-16a7-51e6-a183-cb4d94075ca3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('62d5d238-4d8c-50c0-9c83-ae7e4e430022', 1), 'b5546d45eb9c9603f7eb69aa543748370ef789396cd35c9a54d6a8e8b61e9002',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c90cff0725b7109031f2281522f5d5b88f1c4af4a270bcfa36d147a0be405729.mp3', 2115, '2026-09-13 08:47:35.697162', 'eb418c482d8b1f48de2f4a8ebd7e18f2213bb2d322b922bc66343ed6b55a8a89', 'validated', '{"audio_key":"c90cff0725b7109031f2281522f5d5b88f1c4af4a270bcfa36d147a0be405729","entity_key":"d_learning_goals_01:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"eb418c482d8b1f48de2f4a8ebd7e18f2213bb2d322b922bc66343ed6b55a8a89","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/c90cff0725b7109031f2281522f5d5b88f1c4af4a270bcfa36d147a0be405729.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_venue_comparison_03:1 -> audio/generated/de-DE/dialogues/ccc35e49b2e13eb2f58578e108587b2d428c057b49dc1d9f92fe67086a2d55ee.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8872e3bd-dd27-5970-a965-879614fc6c2b', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_venue_comparison_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6774994686891ef99309c5f3f0d4c7fab046b2971493eaa01f046a5ccca03c8d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0b72d5aa-2ac6-5d66-b1e3-ef42c89272e3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8872e3bd-dd27-5970-a965-879614fc6c2b', 1), '6774994686891ef99309c5f3f0d4c7fab046b2971493eaa01f046a5ccca03c8d',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ccc35e49b2e13eb2f58578e108587b2d428c057b49dc1d9f92fe67086a2d55ee.mp3', 4675, '2026-09-13 08:47:36.930985', '833d9216d63e1840739ed2e008a7b512224499dc34ccbde09b46c1576a7dc1a3', 'validated', '{"audio_key":"ccc35e49b2e13eb2f58578e108587b2d428c057b49dc1d9f92fe67086a2d55ee","entity_key":"d_venue_comparison_03:1","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"833d9216d63e1840739ed2e008a7b512224499dc34ccbde09b46c1576a7dc1a3","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/ccc35e49b2e13eb2f58578e108587b2d428c057b49dc1d9f92fe67086a2d55ee.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_responsibility_corrections_01:4 -> audio/generated/de-DE/dialogues/cd79fea97cc2dccfd0c46876ccdf77679cfcc60d3be3a367c285fd7be2ad1698.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ba18a6ff-e62b-5c10-b2e1-190a8e2dbaf5', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_responsibility_corrections_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7caa41778050b1e7b5d7a24f6e6eb606abe1b525074ae4429853b24a15f3f589'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('42828b86-47e7-53fb-90de-33d66d085141', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ba18a6ff-e62b-5c10-b2e1-190a8e2dbaf5', 1), '7caa41778050b1e7b5d7a24f6e6eb606abe1b525074ae4429853b24a15f3f589',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/cd79fea97cc2dccfd0c46876ccdf77679cfcc60d3be3a367c285fd7be2ad1698.mp3', 2168, '2026-09-13 08:47:36.810038', '6c7112e3c9f296368a94331fe1082171b40a06e5c605c621b5151672438d0d77', 'validated', '{"audio_key":"cd79fea97cc2dccfd0c46876ccdf77679cfcc60d3be3a367c285fd7be2ad1698","entity_key":"d_responsibility_corrections_01:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"6c7112e3c9f296368a94331fe1082171b40a06e5c605c621b5151672438d0d77","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/cd79fea97cc2dccfd0c46876ccdf77679cfcc60d3be3a367c285fd7be2ad1698.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_structured_meetings_03:4 -> audio/generated/de-DE/dialogues/cf3a3298461da790f8994074c9ab5fa309a8f0db1985433d33b38c69e9e92d9c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('91780a8d-6949-52c0-bd7e-49911b966752', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_structured_meetings_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3f90b1e8b76f50cf39cec365323093cd9edee76c5d9bfad5b58b410036198815'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9b664340-e54e-5d30-9476-0afbc6aa5c80', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('91780a8d-6949-52c0-bd7e-49911b966752', 1), '3f90b1e8b76f50cf39cec365323093cd9edee76c5d9bfad5b58b410036198815',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/cf3a3298461da790f8994074c9ab5fa309a8f0db1985433d33b38c69e9e92d9c.mp3', 1906, '2026-09-13 08:47:37.866274', 'd20316c5f08bf232c3f524425f7f2712e0ff9960aadfc99ef45f8577a2255a75', 'validated', '{"audio_key":"cf3a3298461da790f8994074c9ab5fa309a8f0db1985433d33b38c69e9e92d9c","entity_key":"d_structured_meetings_03:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"d20316c5f08bf232c3f524425f7f2712e0ff9960aadfc99ef45f8577a2255a75","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/cf3a3298461da790f8994074c9ab5fa309a8f0db1985433d33b38c69e9e92d9c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_project_documentation_03:3 -> audio/generated/de-DE/dialogues/d162aa46d8ad803575b1b27a91f810a02a79de024931c884e135b540259e458b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0857def6-3f90-5a7f-97b4-418f9d6156f6', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_project_documentation_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7ade7afc431e69d3d41c40fa006622f132ce52cbf784f4dc763f0ea974d70abb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('459192f6-31c3-56c8-b726-d5a411876c21', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0857def6-3f90-5a7f-97b4-418f9d6156f6', 1), '7ade7afc431e69d3d41c40fa006622f132ce52cbf784f4dc763f0ea974d70abb',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d162aa46d8ad803575b1b27a91f810a02a79de024931c884e135b540259e458b.mp3', 2821, '2026-09-13 08:47:38.106137', '8f70ca1e69b9f18b5f6ff936323af1b507beec376543f1c09d286b19e00a3440', 'validated', '{"audio_key":"d162aa46d8ad803575b1b27a91f810a02a79de024931c884e135b540259e458b","entity_key":"d_project_documentation_03:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8f70ca1e69b9f18b5f6ff936323af1b507beec376543f1c09d286b19e00a3440","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/d162aa46d8ad803575b1b27a91f810a02a79de024931c884e135b540259e458b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_experience_reflection_02:3 -> audio/generated/de-DE/dialogues/d47983f296282fe0185c717282e31cde4fb1eed602df3011837397cb670e1cb4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fa828098-d83e-5ec9-9182-69db0fe9dbb4', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_experience_reflection_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f02bfd605537ea29149e7ed3a100fb724c8b3a1e8dc6a1fb2f2eacc7684eeb4a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1a0990b2-38cb-5307-a00e-05f7df9bc7c2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fa828098-d83e-5ec9-9182-69db0fe9dbb4', 1), 'f02bfd605537ea29149e7ed3a100fb724c8b3a1e8dc6a1fb2f2eacc7684eeb4a',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d47983f296282fe0185c717282e31cde4fb1eed602df3011837397cb670e1cb4.mp3', 1488, '2026-09-13 08:47:38.912651', '73a932afa59113dd36d7c59df0fec7bbc4b2ba51a6dcc12da4ebce506300dfa1', 'validated', '{"audio_key":"d47983f296282fe0185c717282e31cde4fb1eed602df3011837397cb670e1cb4","entity_key":"d_experience_reflection_02:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"73a932afa59113dd36d7c59df0fec7bbc4b2ba51a6dcc12da4ebce506300dfa1","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/d47983f296282fe0185c717282e31cde4fb1eed602df3011837397cb670e1cb4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cultural_reviews_03:1 -> audio/generated/de-DE/dialogues/d5b77e71c563195a92a20d4c64027777146a0c533b651ce7cb07fded2ed07bb0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('633ecd35-9db1-5a08-b75d-e6fe91ef473b', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cultural_reviews_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '68e49e9347655fa70c901876a18aacc7845f3f7d602b295aeebaa54f36d92180'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b3ef0c6b-0ab6-5f5b-b8bc-c43a38addba8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('633ecd35-9db1-5a08-b75d-e6fe91ef473b', 1), '68e49e9347655fa70c901876a18aacc7845f3f7d602b295aeebaa54f36d92180',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d5b77e71c563195a92a20d4c64027777146a0c533b651ce7cb07fded2ed07bb0.mp3', 2272, '2026-09-13 08:47:39.289248', '611096ff80d6bb9b527dbfae7dc8d3aa514cb0f045f5a68d56864785e8ff3e87', 'validated', '{"audio_key":"d5b77e71c563195a92a20d4c64027777146a0c533b651ce7cb07fded2ed07bb0","entity_key":"d_cultural_reviews_03:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"611096ff80d6bb9b527dbfae7dc8d3aa514cb0f045f5a68d56864785e8ff3e87","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/d5b77e71c563195a92a20d4c64027777146a0c533b651ce7cb07fded2ed07bb0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_experience_reflection_02:1 -> audio/generated/de-DE/dialogues/d8ca1e4f949707d27024d2748d5af6e7314b3337d749cf064f2072459ce25fdf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('adf51934-54ba-5d17-a9b5-aac281eb9f7c', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_experience_reflection_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2dbab7afa0e4e2b03aab427b3a74cfd209ae4ef3bc203bf6958692e05451c29f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d178ed97-c5fa-5eaa-b5c8-7cc0d012c67b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('adf51934-54ba-5d17-a9b5-aac281eb9f7c', 1), '2dbab7afa0e4e2b03aab427b3a74cfd209ae4ef3bc203bf6958692e05451c29f',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d8ca1e4f949707d27024d2748d5af6e7314b3337d749cf064f2072459ce25fdf.mp3', 2873, '2026-09-13 08:47:40.101510', 'ee1e7a9e52a739cb540706ec0246e631f12b2880ef9b91e4f79e3c6e3edb3192', 'validated', '{"audio_key":"d8ca1e4f949707d27024d2748d5af6e7314b3337d749cf064f2072459ce25fdf","entity_key":"d_experience_reflection_02:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"ee1e7a9e52a739cb540706ec0246e631f12b2880ef9b91e4f79e3c6e3edb3192","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/d8ca1e4f949707d27024d2748d5af6e7314b3337d749cf064f2072459ce25fdf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_learning_goals_02:2 -> audio/generated/de-DE/dialogues/d9a3862d48d59836b9ce754ceb0b7f05105178535c5006da07f52d556088f829.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6a28a16c-7fb3-5b04-9ceb-c374d658283c', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_learning_goals_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e073253de88f433a2d6b3335d6213a3f302b723722ebb513f75571d85504664d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1c873c3a-1a4a-51d0-9628-4991587c3607', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6a28a16c-7fb3-5b04-9ceb-c374d658283c', 1), 'e073253de88f433a2d6b3335d6213a3f302b723722ebb513f75571d85504664d',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d9a3862d48d59836b9ce754ceb0b7f05105178535c5006da07f52d556088f829.mp3', 3160, '2026-09-13 08:47:40.553140', 'eff94d1ee25050cb8c416f8dbc83fc710ee9f2bb44cc847ff375e31b2db6a20c', 'validated', '{"audio_key":"d9a3862d48d59836b9ce754ceb0b7f05105178535c5006da07f52d556088f829","entity_key":"d_learning_goals_02:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"eff94d1ee25050cb8c416f8dbc83fc710ee9f2bb44cc847ff375e31b2db6a20c","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/d9a3862d48d59836b9ce754ceb0b7f05105178535c5006da07f52d556088f829.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_rules_requirements_03:4 -> audio/generated/de-DE/dialogues/dbfdc7838b83261d4180ecca79f4b72f71023d38b56c39fd7c28e0bcd7d48420.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('27c78e84-a138-5f4b-83d2-68524e926757', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_rules_requirements_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9dcfdf41e965879789ac1a7433707c65ef4f46276c0d50c0700e1a57d5ed98fc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('acb7f5f1-7a5e-5b60-b1ab-ead24906d3e8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('27c78e84-a138-5f4b-83d2-68524e926757', 1), '9dcfdf41e965879789ac1a7433707c65ef4f46276c0d50c0700e1a57d5ed98fc',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/dbfdc7838b83261d4180ecca79f4b72f71023d38b56c39fd7c28e0bcd7d48420.mp3', 2403, '2026-09-13 08:47:41.278272', 'fb47e33ebdcf55ad1e10daf3ca1b9377e66a27b4b878899faf397b6364745ecd', 'validated', '{"audio_key":"dbfdc7838b83261d4180ecca79f4b72f71023d38b56c39fd7c28e0bcd7d48420","entity_key":"d_rules_requirements_03:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"fb47e33ebdcf55ad1e10daf3ca1b9377e66a27b4b878899faf397b6364745ecd","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/dbfdc7838b83261d4180ecca79f4b72f71023d38b56c39fd7c28e0bcd7d48420.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_learning_goals_03:3 -> audio/generated/de-DE/dialogues/dfd55f195f36a0b7db1942958d46afae994819cda34e2c755c6b429cb1df9d58.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('45fe2185-d887-597a-b452-07ce517298ca', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_learning_goals_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '298ad7db155d8f29f12821a581126ebebe0e36730bf823a958af5bb476f2b511'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('54e49a4c-8445-5db0-9aa8-9d282c3c4ae6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('45fe2185-d887-597a-b452-07ce517298ca', 1), '298ad7db155d8f29f12821a581126ebebe0e36730bf823a958af5bb476f2b511',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/dfd55f195f36a0b7db1942958d46afae994819cda34e2c755c6b429cb1df9d58.mp3', 2690, '2026-09-13 08:47:41.716036', 'c569f78a3d071bf9e65b97f3f815fc668b9043a7dec433f04680ab125f3baf5e', 'validated', '{"audio_key":"dfd55f195f36a0b7db1942958d46afae994819cda34e2c755c6b429cb1df9d58","entity_key":"d_learning_goals_03:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"c569f78a3d071bf9e65b97f3f815fc668b9043a7dec433f04680ab125f3baf5e","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/dfd55f195f36a0b7db1942958d46afae994819cda34e2c755c6b429cb1df9d58.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_project_documentation_02:1 -> audio/generated/de-DE/dialogues/e1b75ea4ad5a85b69c737008e0072f4138ad980751949a02526d6b0db539559b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e497e685-ec4a-5048-aef1-1e4b62e6c7b9', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_project_documentation_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'af176808a7b8044699fe43904a76a20b874fe8ff751fe532cc6920c22993395d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4533205d-ff0a-5268-a50c-5c26df2c3939', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e497e685-ec4a-5048-aef1-1e4b62e6c7b9', 1), 'af176808a7b8044699fe43904a76a20b874fe8ff751fe532cc6920c22993395d',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e1b75ea4ad5a85b69c737008e0072f4138ad980751949a02526d6b0db539559b.mp3', 2768, '2026-09-13 08:47:42.468691', '5e314fc69d105664f5f37041fe099780f4f610cedf0adf8a3df1125e06993e03', 'validated', '{"audio_key":"e1b75ea4ad5a85b69c737008e0072f4138ad980751949a02526d6b0db539559b","entity_key":"d_project_documentation_02:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"5e314fc69d105664f5f37041fe099780f4f610cedf0adf8a3df1125e06993e03","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/e1b75ea4ad5a85b69c737008e0072f4138ad980751949a02526d6b0db539559b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_venue_comparison_01:2 -> audio/generated/de-DE/dialogues/e32dc21017947ee9b1109defe6c9d76804fc1bab7ac27900bd7f421a00b83120.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('127c6467-e2ae-52f5-838d-962f3c0f6fce', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_venue_comparison_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0340658ea1b1920437c27ece925239918c7664770a1defbc8d86888c6a6d7bc6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d6917d7c-0f01-51ca-b7af-d22ed0eb30f8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('127c6467-e2ae-52f5-838d-962f3c0f6fce', 1), '0340658ea1b1920437c27ece925239918c7664770a1defbc8d86888c6a6d7bc6',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e32dc21017947ee9b1109defe6c9d76804fc1bab7ac27900bd7f421a00b83120.mp3', 2351, '2026-09-13 08:47:42.825838', 'c737131a20133c795ead23ff3c767dc93e1f7350083ab9c7fc7e0fd6b1836826', 'validated', '{"audio_key":"e32dc21017947ee9b1109defe6c9d76804fc1bab7ac27900bd7f421a00b83120","entity_key":"d_venue_comparison_01:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"c737131a20133c795ead23ff3c767dc93e1f7350083ab9c7fc7e0fd6b1836826","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/e32dc21017947ee9b1109defe6c9d76804fc1bab7ac27900bd7f421a00b83120.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_project_documentation_03:2 -> audio/generated/de-DE/dialogues/e75814c72358b1a3ede307cae896b3a3acfb491f2e61ce023833a89b6701873b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('abef6cca-3871-572b-b29e-b74b9581aada', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_project_documentation_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '464a6d1f757a6e5cbfb0a0d3fd758923c5098601128c2328cf9689b014df4e5c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8d0c3ffc-b2eb-5e0e-acb6-09358d887f78', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('abef6cca-3871-572b-b29e-b74b9581aada', 1), '464a6d1f757a6e5cbfb0a0d3fd758923c5098601128c2328cf9689b014df4e5c',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e75814c72358b1a3ede307cae896b3a3acfb491f2e61ce023833a89b6701873b.mp3', 2037, '2026-09-13 08:47:43.579055', '7b33768d1013e0142e14a0bb809903dabfcc7ec8c7c679265239199fef4d7865', 'validated', '{"audio_key":"e75814c72358b1a3ede307cae896b3a3acfb491f2e61ce023833a89b6701873b","entity_key":"d_project_documentation_03:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"7b33768d1013e0142e14a0bb809903dabfcc7ec8c7c679265239199fef4d7865","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/e75814c72358b1a3ede307cae896b3a3acfb491f2e61ce023833a89b6701873b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_shared_planning_02:1 -> audio/generated/de-DE/dialogues/e9db765615d1f96583321bf3844e3eafed82f41368ff6655c1c552636b13b584.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('34e8175b-f137-541c-98cd-6cf3b3712808', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_shared_planning_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a75a7b6765297f7231521c91e7c42c53f68e7b141ac7c7285dc581a031807926'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3e5c8052-5d23-5b9e-b6b0-aad5d2459577', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('34e8175b-f137-541c-98cd-6cf3b3712808', 1), 'a75a7b6765297f7231521c91e7c42c53f68e7b141ac7c7285dc581a031807926',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e9db765615d1f96583321bf3844e3eafed82f41368ff6655c1c552636b13b584.mp3', 3578, '2026-09-13 08:47:44.154200', '8bef8b6e1db9ad893d80e576b71608316d41cccf256f01900fcb853a5a712bc1', 'validated', '{"audio_key":"e9db765615d1f96583321bf3844e3eafed82f41368ff6655c1c552636b13b584","entity_key":"d_shared_planning_02:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"8bef8b6e1db9ad893d80e576b71608316d41cccf256f01900fcb853a5a712bc1","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/e9db765615d1f96583321bf3844e3eafed82f41368ff6655c1c552636b13b584.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_experience_reflection_03:4 -> audio/generated/de-DE/dialogues/eb7614b0b52589f6a9485dd7a7bbfc3fe0767b5afe670b57ad9a139a5786b97c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('08e50e59-da9f-59e8-abd8-0c886c41ef7a', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_experience_reflection_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '97a4ae3f08935c740d4530b0dd341ee23a65bb54975a878a7b0b1cb76828a6ae'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6f7ec72f-0513-540a-bfa5-ff9cf32b6b66', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('08e50e59-da9f-59e8-abd8-0c886c41ef7a', 1), '97a4ae3f08935c740d4530b0dd341ee23a65bb54975a878a7b0b1cb76828a6ae',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/eb7614b0b52589f6a9485dd7a7bbfc3fe0767b5afe670b57ad9a139a5786b97c.mp3', 3709, '2026-09-13 08:47:44.895489', '77d8a076bc251897bdddf8fd8d3636434f2fa0b555bbb939f3ae03e25d08e7ae', 'validated', '{"audio_key":"eb7614b0b52589f6a9485dd7a7bbfc3fe0767b5afe670b57ad9a139a5786b97c","entity_key":"d_experience_reflection_03:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"77d8a076bc251897bdddf8fd8d3636434f2fa0b555bbb939f3ae03e25d08e7ae","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/eb7614b0b52589f6a9485dd7a7bbfc3fe0767b5afe670b57ad9a139a5786b97c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_experience_reflection_01:3 -> audio/generated/de-DE/dialogues/eb8784f210475812ad8a5f40dcec38b075b8e07e4326de3a2ee734ad3990425b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('73ddbbc3-3347-5936-9a54-a1546b622a71', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_experience_reflection_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd6ef7a3bf9ad7e525f0b2e76ffca8a285c6b6b283d9365ea5ba4f4ba60f53c13'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8f1cb5df-30a8-5182-a6f0-274d97eb8d5c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('73ddbbc3-3347-5936-9a54-a1546b622a71', 1), 'd6ef7a3bf9ad7e525f0b2e76ffca8a285c6b6b283d9365ea5ba4f4ba60f53c13',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/eb8784f210475812ad8a5f40dcec38b075b8e07e4326de3a2ee734ad3990425b.mp3', 1488, '2026-09-13 08:47:45.278120', '57cf4ca24788ab2eda14a5d118886d7a0f4be7ec2188135d65aa1480dc5c962b', 'validated', '{"audio_key":"eb8784f210475812ad8a5f40dcec38b075b8e07e4326de3a2ee734ad3990425b","entity_key":"d_experience_reflection_01:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"57cf4ca24788ab2eda14a5d118886d7a0f4be7ec2188135d65aa1480dc5c962b","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/eb8784f210475812ad8a5f40dcec38b075b8e07e4326de3a2ee734ad3990425b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_learning_goals_02:4 -> audio/generated/de-DE/dialogues/ecf1abbfee6e73195b53ad45c9e44c87e0b57f33b81134a53555bbff45ddd28f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('13b2c0ed-9603-548d-a475-85d00e19bff8', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_learning_goals_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd942afd5c52d36e1435552c4d1d7bf21deb11e44e863e09c134ef6abce3b14c2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dcc069f4-f414-54fd-b5ed-df9a761d7cb3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('13b2c0ed-9603-548d-a475-85d00e19bff8', 1), 'd942afd5c52d36e1435552c4d1d7bf21deb11e44e863e09c134ef6abce3b14c2',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ecf1abbfee6e73195b53ad45c9e44c87e0b57f33b81134a53555bbff45ddd28f.mp3', 2324, '2026-09-13 08:47:46.045220', '58dc8ff7e2ada4511bb0d2d3175dbd08aed6fe35af9651de75e7fa2b3aa7198d', 'validated', '{"audio_key":"ecf1abbfee6e73195b53ad45c9e44c87e0b57f33b81134a53555bbff45ddd28f","entity_key":"d_learning_goals_02:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"58dc8ff7e2ada4511bb0d2d3175dbd08aed6fe35af9651de75e7fa2b3aa7198d","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/ecf1abbfee6e73195b53ad45c9e44c87e0b57f33b81134a53555bbff45ddd28f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cultural_reviews_03:2 -> audio/generated/de-DE/dialogues/eedfeb3a0cbb81815e861aaabe60e931a5bc079059a1dd7ed139e9ea45fea759.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('049d2fee-937d-513c-a23f-d917a046ef3f', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cultural_reviews_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '80ffff9474ff4fb52f8e9a64b9a904226496fc5a63cfda03731397e066be28a6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4c70d3c9-336c-5599-b92f-520f7fc12c20', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('049d2fee-937d-513c-a23f-d917a046ef3f', 1), '80ffff9474ff4fb52f8e9a64b9a904226496fc5a63cfda03731397e066be28a6',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/eedfeb3a0cbb81815e861aaabe60e931a5bc079059a1dd7ed139e9ea45fea759.mp3', 2638, '2026-09-13 08:47:46.449756', 'a54d72a616d6f97134398f10d2e497a1b7c17332bbedcc7a0ab31eb0cd386772', 'validated', '{"audio_key":"eedfeb3a0cbb81815e861aaabe60e931a5bc079059a1dd7ed139e9ea45fea759","entity_key":"d_cultural_reviews_03:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"a54d72a616d6f97134398f10d2e497a1b7c17332bbedcc7a0ab31eb0cd386772","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/eedfeb3a0cbb81815e861aaabe60e931a5bc079059a1dd7ed139e9ea45fea759.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_venue_comparison_02:3 -> audio/generated/de-DE/dialogues/ef2abcfcdb7b11c31170e1eb217a8e85752fcf4b29304bc1d2a1e27559a5d6f2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d163be1b-750a-5025-ac17-520755a03489', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_venue_comparison_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3b7b14dbb130f8afc6675c97e8d6cea55e94046b295de31b68a8efe18d895856'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3b7d53f7-ce07-571d-9248-c2ed33de7a02', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d163be1b-750a-5025-ac17-520755a03489', 1), '3b7b14dbb130f8afc6675c97e8d6cea55e94046b295de31b68a8efe18d895856',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ef2abcfcdb7b11c31170e1eb217a8e85752fcf4b29304bc1d2a1e27559a5d6f2.mp3', 2324, '2026-09-13 08:47:47.186758', 'f2f515f67de851a3cf5eee2701d0194c18654be5be8427614445620d7d5d6a6e', 'validated', '{"audio_key":"ef2abcfcdb7b11c31170e1eb217a8e85752fcf4b29304bc1d2a1e27559a5d6f2","entity_key":"d_venue_comparison_02:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"f2f515f67de851a3cf5eee2701d0194c18654be5be8427614445620d7d5d6a6e","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/ef2abcfcdb7b11c31170e1eb217a8e85752fcf4b29304bc1d2a1e27559a5d6f2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_venue_comparison_01:4 -> audio/generated/de-DE/dialogues/ef5db1c56bce336ba3a4fe55fe5db15fa02ea79f27a20ea6d953bef8836ea0ec.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0c97edfb-d602-5aa2-af5d-134027832268', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_venue_comparison_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '12270e2be7bc186153e97809712361e4e79a99a7f03cb839017495ee51da2868'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6ee2e26f-18f0-57ae-ac37-1cc4c321291e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0c97edfb-d602-5aa2-af5d-134027832268', 1), '12270e2be7bc186153e97809712361e4e79a99a7f03cb839017495ee51da2868',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ef5db1c56bce336ba3a4fe55fe5db15fa02ea79f27a20ea6d953bef8836ea0ec.mp3', 3108, '2026-09-13 08:47:47.736306', '7123e7022a5d7a64cf1c6f57f1373d38eddfee25a8db50f80010161581c43c86', 'validated', '{"audio_key":"ef5db1c56bce336ba3a4fe55fe5db15fa02ea79f27a20ea6d953bef8836ea0ec","entity_key":"d_venue_comparison_01:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"7123e7022a5d7a64cf1c6f57f1373d38eddfee25a8db50f80010161581c43c86","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/ef5db1c56bce336ba3a4fe55fe5db15fa02ea79f27a20ea6d953bef8836ea0ec.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_structured_meetings_02:4 -> audio/generated/de-DE/dialogues/efcbb54621853799ba10128acc6dd0ca84f3d6e93bcbbb37d19891fd41694956.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e8420652-5575-5d9d-b2ea-005fdc369baa', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_structured_meetings_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4102f46261645e178f87ed4404844cfbaca8c9dd86d1c1f5adb103e02e099a91'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d6747bfc-fb96-5636-8a01-a7a84c2a3df5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e8420652-5575-5d9d-b2ea-005fdc369baa', 1), '4102f46261645e178f87ed4404844cfbaca8c9dd86d1c1f5adb103e02e099a91',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/efcbb54621853799ba10128acc6dd0ca84f3d6e93bcbbb37d19891fd41694956.mp3', 2455, '2026-09-13 08:47:48.371121', '4013f8467d29cf076487cedb252808604516cb3595d0cfdc3bac7cb5bf11cade', 'validated', '{"audio_key":"efcbb54621853799ba10128acc6dd0ca84f3d6e93bcbbb37d19891fd41694956","entity_key":"d_structured_meetings_02:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"4013f8467d29cf076487cedb252808604516cb3595d0cfdc3bac7cb5bf11cade","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/efcbb54621853799ba10128acc6dd0ca84f3d6e93bcbbb37d19891fd41694956.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_learning_goals_03:1 -> audio/generated/de-DE/dialogues/f00b64fc17634d77adc725e1036e6c9a82d37b7fc9be61e92d8b4a7cbdee9983.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2ab0e586-f6cb-592c-90ef-5c15ba363f0a', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_learning_goals_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f2e44cbb8cf39248fb7fef736f4750ccad215f8295c44c4af4b8f6d2943899d6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('390bf636-d649-5c29-82dd-d6218fc917b6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2ab0e586-f6cb-592c-90ef-5c15ba363f0a', 1), 'f2e44cbb8cf39248fb7fef736f4750ccad215f8295c44c4af4b8f6d2943899d6',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f00b64fc17634d77adc725e1036e6c9a82d37b7fc9be61e92d8b4a7cbdee9983.mp3', 3657, '2026-09-13 08:47:49.078958', '80b256fedf7f16d4eef91f6a51f24c7a75e845b379a0a50f2336941d87191af8', 'validated', '{"audio_key":"f00b64fc17634d77adc725e1036e6c9a82d37b7fc9be61e92d8b4a7cbdee9983","entity_key":"d_learning_goals_03:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"80b256fedf7f16d4eef91f6a51f24c7a75e845b379a0a50f2336941d87191af8","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/f00b64fc17634d77adc725e1036e6c9a82d37b7fc9be61e92d8b4a7cbdee9983.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_project_documentation_03:1 -> audio/generated/de-DE/dialogues/f0802f2d2e25cc1f0657b1ce77aa89d955d62c725ec6c443eaeb7307e2e1eeb0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d68d9e43-9331-5ae3-bda4-732d37128a6e', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_project_documentation_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bee6e165cb16781e297c4058b7af93cc8f62bc90a7a21a0eee77f753e63de338'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('788dbb45-ae75-5eba-9b69-9607bf58154c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d68d9e43-9331-5ae3-bda4-732d37128a6e', 1), 'bee6e165cb16781e297c4058b7af93cc8f62bc90a7a21a0eee77f753e63de338',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f0802f2d2e25cc1f0657b1ce77aa89d955d62c725ec6c443eaeb7307e2e1eeb0.mp3', 3996, '2026-09-13 08:47:49.700057', 'f393204260e4cd51d04552c70d30704c996021d888072baa41c92f1e34924c80', 'validated', '{"audio_key":"f0802f2d2e25cc1f0657b1ce77aa89d955d62c725ec6c443eaeb7307e2e1eeb0","entity_key":"d_project_documentation_03:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f393204260e4cd51d04552c70d30704c996021d888072baa41c92f1e34924c80","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/f0802f2d2e25cc1f0657b1ce77aa89d955d62c725ec6c443eaeb7307e2e1eeb0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_structured_meetings_02:2 -> audio/generated/de-DE/dialogues/f20fbb8d137ff4904d18e9e0236ebebd7158556f479bde0d46c2d017ced336e1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('19cd4039-362a-5895-b03a-b6fca656ffdb', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_structured_meetings_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3f3a7934e827923fdf6dfd46a129544325840a5edeba09bb8204cfa3610cc9c9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b0c6c147-904a-51a3-8435-b12e736f8b8d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('19cd4039-362a-5895-b03a-b6fca656ffdb', 1), '3f3a7934e827923fdf6dfd46a129544325840a5edeba09bb8204cfa3610cc9c9',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f20fbb8d137ff4904d18e9e0236ebebd7158556f479bde0d46c2d017ced336e1.mp3', 1933, '2026-09-13 08:47:50.207877', 'f6205eaeb7c95cdb033029d5abefc5f8f3d2e90e51652d3ee1cfe8c9060a48d6', 'validated', '{"audio_key":"f20fbb8d137ff4904d18e9e0236ebebd7158556f479bde0d46c2d017ced336e1","entity_key":"d_structured_meetings_02:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"f6205eaeb7c95cdb033029d5abefc5f8f3d2e90e51652d3ee1cfe8c9060a48d6","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/f20fbb8d137ff4904d18e9e0236ebebd7158556f479bde0d46c2d017ced336e1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_structured_meetings_02:3 -> audio/generated/de-DE/dialogues/f22a71b5b4fa6dbedaf62be379c03e7a18f05b03975c6bb4ede29df57b6117e3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('dee7d317-fa02-5886-b37a-770ae8a7b74e', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_structured_meetings_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '126d7322c9ed4b6d3a84756b0889eb18d257a937b9f7c26aa9273aeb2828ff71'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cff2cf8f-f29d-5cc5-97bc-d02246eb8388', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('dee7d317-fa02-5886-b37a-770ae8a7b74e', 1), '126d7322c9ed4b6d3a84756b0889eb18d257a937b9f7c26aa9273aeb2828ff71',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f22a71b5b4fa6dbedaf62be379c03e7a18f05b03975c6bb4ede29df57b6117e3.mp3', 2115, '2026-09-13 08:47:50.826514', '0f86f50b3f4d6c2afa3161e70d1b32c2e28bd185f2054e31a78e78994be68729', 'validated', '{"audio_key":"f22a71b5b4fa6dbedaf62be379c03e7a18f05b03975c6bb4ede29df57b6117e3","entity_key":"d_structured_meetings_02:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"0f86f50b3f4d6c2afa3161e70d1b32c2e28bd185f2054e31a78e78994be68729","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/f22a71b5b4fa6dbedaf62be379c03e7a18f05b03975c6bb4ede29df57b6117e3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cultural_reviews_03:3 -> audio/generated/de-DE/dialogues/f5c1e588cee59c40ba9f37116585b123d93f97662ffe681658347f9e3612a9de.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b609aee4-b60a-557c-9da3-1731f955c48e', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cultural_reviews_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4e2ae8ebd7c2cf8c7c1ee3f2bf3910db92c2f00e05150180cd677d4a5e7deab6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('42a8c245-69af-571a-9dee-339807a92263', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b609aee4-b60a-557c-9da3-1731f955c48e', 1), '4e2ae8ebd7c2cf8c7c1ee3f2bf3910db92c2f00e05150180cd677d4a5e7deab6',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f5c1e588cee59c40ba9f37116585b123d93f97662ffe681658347f9e3612a9de.mp3', 2220, '2026-09-13 08:47:51.324321', '95dbae96243f0b5ec3320c6d621e64d051ae1497629efab920bff263e9eb7af8', 'validated', '{"audio_key":"f5c1e588cee59c40ba9f37116585b123d93f97662ffe681658347f9e3612a9de","entity_key":"d_cultural_reviews_03:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"95dbae96243f0b5ec3320c6d621e64d051ae1497629efab920bff263e9eb7af8","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/f5c1e588cee59c40ba9f37116585b123d93f97662ffe681658347f9e3612a9de.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_responsibility_corrections_03:3 -> audio/generated/de-DE/dialogues/fa8c68570498abcd1286b4fa65e40c7a56c39fb316dfac8e7d6a251a7ce948cb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9d2e5655-b783-5d40-b100-2bb1ca81d99b', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_responsibility_corrections_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '38a70c4add82ff27e2466c0881dff76d5b16ba4268af30f8c9c9011de13fb9c7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ca0bed41-fde0-5eec-90f6-0f66e12636ce', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9d2e5655-b783-5d40-b100-2bb1ca81d99b', 1), '38a70c4add82ff27e2466c0881dff76d5b16ba4268af30f8c9c9011de13fb9c7',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/fa8c68570498abcd1286b4fa65e40c7a56c39fb316dfac8e7d6a251a7ce948cb.mp3', 1854, '2026-09-13 08:47:51.970438', '7517fa89d7922b3a5eeb5e6a86434d3a46f322d53f76c15144c301014e18f8ac', 'validated', '{"audio_key":"fa8c68570498abcd1286b4fa65e40c7a56c39fb316dfac8e7d6a251a7ce948cb","entity_key":"d_responsibility_corrections_03:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"7517fa89d7922b3a5eeb5e6a86434d3a46f322d53f76c15144c301014e18f8ac","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/fa8c68570498abcd1286b4fa65e40c7a56c39fb316dfac8e7d6a251a7ce948cb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_project_documentation_02:3 -> audio/generated/de-DE/dialogues/fd50c45f376a7f18b915fedef39fe9b870bd1d6e6a741a65cc4857b988f46e8e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cf7f23ab-d141-5d2e-8664-fbd10299d3a8', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_project_documentation_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9ff99332decd0467d3ec365f8f8b843d5976ef742e1cfc6bdf06290f28ef1a27'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('acb7b8fa-307e-5ce7-9837-4f0676b5437f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cf7f23ab-d141-5d2e-8664-fbd10299d3a8', 1), '9ff99332decd0467d3ec365f8f8b843d5976ef742e1cfc6bdf06290f28ef1a27',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/fd50c45f376a7f18b915fedef39fe9b870bd1d6e6a741a65cc4857b988f46e8e.mp3', 3291, '2026-09-13 08:47:52.558801', '74a7c71c6aa1b14f24cffaa6c5f4647582beb7501f3a93dfd2800d871998f57f', 'validated', '{"audio_key":"fd50c45f376a7f18b915fedef39fe9b870bd1d6e6a741a65cc4857b988f46e8e","entity_key":"d_project_documentation_02:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"74a7c71c6aa1b14f24cffaa6c5f4647582beb7501f3a93dfd2800d871998f57f","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/fd50c45f376a7f18b915fedef39fe9b870bd1d6e6a741a65cc4857b988f46e8e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_resource_priorities_02:4 -> audio/generated/de-DE/dialogues/fe2cbbaa936891d546ef994477686c9ca0c25f4ddc0a140edb3849ee40ea552e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e33597c9-f9de-5f13-a668-4c6cd3db6ee0', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_resource_priorities_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '914858040dd3917e864c8a5981afa1fc173394a42c1012cd15c7da806da985ff'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2e3f7d80-6bea-57c5-9644-2c655921bed7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e33597c9-f9de-5f13-a668-4c6cd3db6ee0', 1), '914858040dd3917e864c8a5981afa1fc173394a42c1012cd15c7da806da985ff',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/fe2cbbaa936891d546ef994477686c9ca0c25f4ddc0a140edb3849ee40ea552e.mp3', 2925, '2026-09-13 08:47:53.177487', '064c9878eab95556a68bff37ee8691878d3ce0943988f86b4116f940695c6a5d', 'validated', '{"audio_key":"fe2cbbaa936891d546ef994477686c9ca0c25f4ddc0a140edb3849ee40ea552e","entity_key":"d_resource_priorities_02:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"064c9878eab95556a68bff37ee8691878d3ce0943988f86b4116f940695c6a5d","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/fe2cbbaa936891d546ef994477686c9ca0c25f4ddc0a140edb3849ee40ea552e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_learning_goals_04 -> audio/generated/de-DE/lexical/02fb479ece46ccb433250971524a1065879a232e0d8e676884216a4e1b75f8e5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('03b8e708-4527-56cf-9fc8-e81a9aa39637', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_learning_goals_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a687ae4269540230d1eb00962bad5dcf0e5aff8a07fe540f43d78441ccfd5f4a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0809c6f7-e82e-5a49-be24-6e498f18173b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('03b8e708-4527-56cf-9fc8-e81a9aa39637', 1), 'a687ae4269540230d1eb00962bad5dcf0e5aff8a07fe540f43d78441ccfd5f4a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/02fb479ece46ccb433250971524a1065879a232e0d8e676884216a4e1b75f8e5.mp3', 1097, '2026-09-13 08:47:53.556730', '570df9d489f8634704dc81952aa6f9f2af3b359b14770bdf1f5fb1e5a0a57f5b', 'validated', '{"audio_key":"02fb479ece46ccb433250971524a1065879a232e0d8e676884216a4e1b75f8e5","entity_key":"lx_learning_goals_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"570df9d489f8634704dc81952aa6f9f2af3b359b14770bdf1f5fb1e5a0a57f5b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/02fb479ece46ccb433250971524a1065879a232e0d8e676884216a4e1b75f8e5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_learning_goals_04 -> audio/generated/de-DE/lexical/02fb479ece46ccb433250971524a1065879a232e0d8e676884216a4e1b75f8e5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ea7f0eeb-fb21-5510-becc-f34018aa4656', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_learning_goals_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a687ae4269540230d1eb00962bad5dcf0e5aff8a07fe540f43d78441ccfd5f4a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7c156354-a8f1-52db-9001-a91bbe511267', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ea7f0eeb-fb21-5510-becc-f34018aa4656', 1), 'a687ae4269540230d1eb00962bad5dcf0e5aff8a07fe540f43d78441ccfd5f4a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/02fb479ece46ccb433250971524a1065879a232e0d8e676884216a4e1b75f8e5.mp3', 1097, '2026-09-13 08:47:53.556730', '570df9d489f8634704dc81952aa6f9f2af3b359b14770bdf1f5fb1e5a0a57f5b', 'validated', '{"audio_key":"02fb479ece46ccb433250971524a1065879a232e0d8e676884216a4e1b75f8e5","entity_key":"wf_learning_goals_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"570df9d489f8634704dc81952aa6f9f2af3b359b14770bdf1f5fb1e5a0a57f5b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/02fb479ece46ccb433250971524a1065879a232e0d8e676884216a4e1b75f8e5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_venue_comparison_06 -> audio/generated/de-DE/lexical/0d42499cac201ec464faf8335e267f5fa76b404d2453679f1b54ab48924768da.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6e91a168-7f43-5bcf-ad58-a259894bbae2', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_venue_comparison_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b6832d4e5114d67a7aad537aaff1b8ca3f10caf99cd746bcdc207c2d8e6f4849'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('86073aa7-f85f-5c70-a6f9-0cfcc761c5e8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6e91a168-7f43-5bcf-ad58-a259894bbae2', 1), 'b6832d4e5114d67a7aad537aaff1b8ca3f10caf99cd746bcdc207c2d8e6f4849',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0d42499cac201ec464faf8335e267f5fa76b404d2453679f1b54ab48924768da.mp3', 1149, '2026-09-13 08:16:29.660361', '8e51892d014d39e8198c6b981a7572ba14c62a33a0bffa345ce0769375233ba2', 'validated', '{"audio_key":"0d42499cac201ec464faf8335e267f5fa76b404d2453679f1b54ab48924768da","entity_key":"lx_venue_comparison_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8e51892d014d39e8198c6b981a7572ba14c62a33a0bffa345ce0769375233ba2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0d42499cac201ec464faf8335e267f5fa76b404d2453679f1b54ab48924768da.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_venue_comparison_06 -> audio/generated/de-DE/lexical/0d42499cac201ec464faf8335e267f5fa76b404d2453679f1b54ab48924768da.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('50747deb-78ab-540a-b64e-3755ceff9c76', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_venue_comparison_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b6832d4e5114d67a7aad537aaff1b8ca3f10caf99cd746bcdc207c2d8e6f4849'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d276c7ef-dba5-54d9-9041-7d018497db57', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('50747deb-78ab-540a-b64e-3755ceff9c76', 1), 'b6832d4e5114d67a7aad537aaff1b8ca3f10caf99cd746bcdc207c2d8e6f4849',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0d42499cac201ec464faf8335e267f5fa76b404d2453679f1b54ab48924768da.mp3', 1149, '2026-09-13 08:16:29.660361', '8e51892d014d39e8198c6b981a7572ba14c62a33a0bffa345ce0769375233ba2', 'validated', '{"audio_key":"0d42499cac201ec464faf8335e267f5fa76b404d2453679f1b54ab48924768da","entity_key":"wf_venue_comparison_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8e51892d014d39e8198c6b981a7572ba14c62a33a0bffa345ce0769375233ba2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0d42499cac201ec464faf8335e267f5fa76b404d2453679f1b54ab48924768da.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_responsibility_corrections_06 -> audio/generated/de-DE/lexical/14f8993f86fc93cfa47761606668e5e9dbea45585f45b2e9b2f62d64c590a86c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0963995b-f597-564d-9267-5217dff9b486', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_responsibility_corrections_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'da9c1afc3dd0781e75da35362a3a4f526d3bf4dd75e70ac6a4c8e953a0b6e4f7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c1fbc6b5-631c-541c-8dd1-d4d5d11f3a57', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0963995b-f597-564d-9267-5217dff9b486', 1), 'da9c1afc3dd0781e75da35362a3a4f526d3bf4dd75e70ac6a4c8e953a0b6e4f7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/14f8993f86fc93cfa47761606668e5e9dbea45585f45b2e9b2f62d64c590a86c.mp3', 1280, '2026-09-13 07:53:10.388639', '07134a966cc111fab6e47a3dd30e0f5b81a100a7055ae6c0341295f208a1ee57', 'validated', '{"audio_key":"14f8993f86fc93cfa47761606668e5e9dbea45585f45b2e9b2f62d64c590a86c","entity_key":"lx_responsibility_corrections_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"07134a966cc111fab6e47a3dd30e0f5b81a100a7055ae6c0341295f208a1ee57","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/14f8993f86fc93cfa47761606668e5e9dbea45585f45b2e9b2f62d64c590a86c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_responsibility_corrections_06 -> audio/generated/de-DE/lexical/14f8993f86fc93cfa47761606668e5e9dbea45585f45b2e9b2f62d64c590a86c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1f03a160-1923-5093-bd37-489008ac0eeb', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_responsibility_corrections_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'da9c1afc3dd0781e75da35362a3a4f526d3bf4dd75e70ac6a4c8e953a0b6e4f7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fc81b23a-0582-5c55-8ed5-12c4b523a8bf', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1f03a160-1923-5093-bd37-489008ac0eeb', 1), 'da9c1afc3dd0781e75da35362a3a4f526d3bf4dd75e70ac6a4c8e953a0b6e4f7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/14f8993f86fc93cfa47761606668e5e9dbea45585f45b2e9b2f62d64c590a86c.mp3', 1280, '2026-09-13 07:53:10.388639', '07134a966cc111fab6e47a3dd30e0f5b81a100a7055ae6c0341295f208a1ee57', 'validated', '{"audio_key":"14f8993f86fc93cfa47761606668e5e9dbea45585f45b2e9b2f62d64c590a86c","entity_key":"wf_responsibility_corrections_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"07134a966cc111fab6e47a3dd30e0f5b81a100a7055ae6c0341295f208a1ee57","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/14f8993f86fc93cfa47761606668e5e9dbea45585f45b2e9b2f62d64c590a86c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_shared_planning_05 -> audio/generated/de-DE/lexical/15c674238c847e5d5729f837730ae7cad45fa18c43fd7527e7ab6a7d1d807498.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8013ebf3-847d-55e1-a137-f67b26f03a4f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_shared_planning_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd936521ef174eebb23bdc9bad4100a3bfdbd33c1dfc281b27374b4843288f565'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d8aee2dc-2176-5bfb-8201-399be026144f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8013ebf3-847d-55e1-a137-f67b26f03a4f', 1), 'd936521ef174eebb23bdc9bad4100a3bfdbd33c1dfc281b27374b4843288f565',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/15c674238c847e5d5729f837730ae7cad45fa18c43fd7527e7ab6a7d1d807498.mp3', 1149, '2026-09-13 08:47:54.179210', 'abde97d50eeee36eddf91c258fd6f71eae40b4887f1e6361d2f545d8c4d127bf', 'validated', '{"audio_key":"15c674238c847e5d5729f837730ae7cad45fa18c43fd7527e7ab6a7d1d807498","entity_key":"lx_shared_planning_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"abde97d50eeee36eddf91c258fd6f71eae40b4887f1e6361d2f545d8c4d127bf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/15c674238c847e5d5729f837730ae7cad45fa18c43fd7527e7ab6a7d1d807498.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_shared_planning_05 -> audio/generated/de-DE/lexical/15c674238c847e5d5729f837730ae7cad45fa18c43fd7527e7ab6a7d1d807498.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a7eb0f52-2a15-53d0-b40d-11f27c1e9843', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_shared_planning_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd936521ef174eebb23bdc9bad4100a3bfdbd33c1dfc281b27374b4843288f565'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3871b32e-6516-589c-968b-e4622ff1aee5', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a7eb0f52-2a15-53d0-b40d-11f27c1e9843', 1), 'd936521ef174eebb23bdc9bad4100a3bfdbd33c1dfc281b27374b4843288f565',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/15c674238c847e5d5729f837730ae7cad45fa18c43fd7527e7ab6a7d1d807498.mp3', 1149, '2026-09-13 08:47:54.179210', 'abde97d50eeee36eddf91c258fd6f71eae40b4887f1e6361d2f545d8c4d127bf', 'validated', '{"audio_key":"15c674238c847e5d5729f837730ae7cad45fa18c43fd7527e7ab6a7d1d807498","entity_key":"wf_shared_planning_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"abde97d50eeee36eddf91c258fd6f71eae40b4887f1e6361d2f545d8c4d127bf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/15c674238c847e5d5729f837730ae7cad45fa18c43fd7527e7ab6a7d1d807498.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_project_documentation_02 -> audio/generated/de-DE/lexical/2b99e4d16426cc3add738aee89edb8ae0d1da80adccfa96b0cc2a0d104c3bfea.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('dc3c2f0f-6a3b-5c35-8830-2f895506cd1b', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_project_documentation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9a80891df52590c29e14333b82e3356d58a2dd786ed6d1debe6f3589e4254d33'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f7ec5bca-16e3-517b-8526-5bc17c6aadb6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('dc3c2f0f-6a3b-5c35-8830-2f895506cd1b', 1), '9a80891df52590c29e14333b82e3356d58a2dd786ed6d1debe6f3589e4254d33',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2b99e4d16426cc3add738aee89edb8ae0d1da80adccfa96b0cc2a0d104c3bfea.mp3', 835, '2026-09-13 08:47:54.544649', 'bcaf2cd680b293d183d308bd024363f78de1a03cbe074e1987c39f8208ed2503', 'validated', '{"audio_key":"2b99e4d16426cc3add738aee89edb8ae0d1da80adccfa96b0cc2a0d104c3bfea","entity_key":"lx_project_documentation_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bcaf2cd680b293d183d308bd024363f78de1a03cbe074e1987c39f8208ed2503","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2b99e4d16426cc3add738aee89edb8ae0d1da80adccfa96b0cc2a0d104c3bfea.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_project_documentation_02 -> audio/generated/de-DE/lexical/2b99e4d16426cc3add738aee89edb8ae0d1da80adccfa96b0cc2a0d104c3bfea.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('622dd479-78a9-55e3-bc36-d84e44fc632d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_project_documentation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9a80891df52590c29e14333b82e3356d58a2dd786ed6d1debe6f3589e4254d33'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('91ae2db8-5c0d-5741-a251-c312aceb5a5d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('622dd479-78a9-55e3-bc36-d84e44fc632d', 1), '9a80891df52590c29e14333b82e3356d58a2dd786ed6d1debe6f3589e4254d33',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2b99e4d16426cc3add738aee89edb8ae0d1da80adccfa96b0cc2a0d104c3bfea.mp3', 835, '2026-09-13 08:47:54.544649', 'bcaf2cd680b293d183d308bd024363f78de1a03cbe074e1987c39f8208ed2503', 'validated', '{"audio_key":"2b99e4d16426cc3add738aee89edb8ae0d1da80adccfa96b0cc2a0d104c3bfea","entity_key":"wf_project_documentation_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bcaf2cd680b293d183d308bd024363f78de1a03cbe074e1987c39f8208ed2503","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2b99e4d16426cc3add738aee89edb8ae0d1da80adccfa96b0cc2a0d104c3bfea.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_structured_meetings_04 -> audio/generated/de-DE/lexical/2b99e4d16426cc3add738aee89edb8ae0d1da80adccfa96b0cc2a0d104c3bfea.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('dc3c2f0f-6a3b-5c35-8830-2f895506cd1b', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_structured_meetings_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9a80891df52590c29e14333b82e3356d58a2dd786ed6d1debe6f3589e4254d33'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f7ec5bca-16e3-517b-8526-5bc17c6aadb6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('dc3c2f0f-6a3b-5c35-8830-2f895506cd1b', 1), '9a80891df52590c29e14333b82e3356d58a2dd786ed6d1debe6f3589e4254d33',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2b99e4d16426cc3add738aee89edb8ae0d1da80adccfa96b0cc2a0d104c3bfea.mp3', 835, '2026-09-13 08:47:54.544649', 'bcaf2cd680b293d183d308bd024363f78de1a03cbe074e1987c39f8208ed2503', 'validated', '{"audio_key":"2b99e4d16426cc3add738aee89edb8ae0d1da80adccfa96b0cc2a0d104c3bfea","entity_key":"lx_structured_meetings_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bcaf2cd680b293d183d308bd024363f78de1a03cbe074e1987c39f8208ed2503","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2b99e4d16426cc3add738aee89edb8ae0d1da80adccfa96b0cc2a0d104c3bfea.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_structured_meetings_04 -> audio/generated/de-DE/lexical/2b99e4d16426cc3add738aee89edb8ae0d1da80adccfa96b0cc2a0d104c3bfea.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('78878232-54bc-5985-8a2a-b6bf6453c48e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_structured_meetings_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9a80891df52590c29e14333b82e3356d58a2dd786ed6d1debe6f3589e4254d33'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0f650201-ec0c-5a52-b0a3-7546c1bb8263', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('78878232-54bc-5985-8a2a-b6bf6453c48e', 1), '9a80891df52590c29e14333b82e3356d58a2dd786ed6d1debe6f3589e4254d33',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2b99e4d16426cc3add738aee89edb8ae0d1da80adccfa96b0cc2a0d104c3bfea.mp3', 835, '2026-09-13 08:47:54.544649', 'bcaf2cd680b293d183d308bd024363f78de1a03cbe074e1987c39f8208ed2503', 'validated', '{"audio_key":"2b99e4d16426cc3add738aee89edb8ae0d1da80adccfa96b0cc2a0d104c3bfea","entity_key":"wf_structured_meetings_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bcaf2cd680b293d183d308bd024363f78de1a03cbe074e1987c39f8208ed2503","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2b99e4d16426cc3add738aee89edb8ae0d1da80adccfa96b0cc2a0d104c3bfea.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_shared_planning_02 -> audio/generated/de-DE/lexical/2bab6d92470f73b70c10479c44c9bc01fa3dfbaa897e27baf6c5be0b4e1b610b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('317173ca-6386-5581-a58d-583220af74a6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_shared_planning_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '787e02f4cc6510e0c0cd1ffad687ecc0dd2dc3a02ab0fecb5ace2702f6d45761'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('923f1fdb-70d8-5641-99b9-78a606b22dbc', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('317173ca-6386-5581-a58d-583220af74a6', 1), '787e02f4cc6510e0c0cd1ffad687ecc0dd2dc3a02ab0fecb5ace2702f6d45761',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2bab6d92470f73b70c10479c44c9bc01fa3dfbaa897e27baf6c5be0b4e1b610b.mp3', 1201, '2026-09-13 06:17:27.328979', '2f55fe85b08ee050c371c3b08358263aef270bd2b2f3d183b5a2ef95b2a81944', 'validated', '{"audio_key":"2bab6d92470f73b70c10479c44c9bc01fa3dfbaa897e27baf6c5be0b4e1b610b","entity_key":"lx_shared_planning_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2f55fe85b08ee050c371c3b08358263aef270bd2b2f3d183b5a2ef95b2a81944","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2bab6d92470f73b70c10479c44c9bc01fa3dfbaa897e27baf6c5be0b4e1b610b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_shared_planning_02 -> audio/generated/de-DE/lexical/2bab6d92470f73b70c10479c44c9bc01fa3dfbaa897e27baf6c5be0b4e1b610b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('cf42d396-afbe-50ef-97a5-c2137f1bd83a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_shared_planning_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '787e02f4cc6510e0c0cd1ffad687ecc0dd2dc3a02ab0fecb5ace2702f6d45761'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e7aac35e-cad4-5743-96d4-281d09ccb569', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('cf42d396-afbe-50ef-97a5-c2137f1bd83a', 1), '787e02f4cc6510e0c0cd1ffad687ecc0dd2dc3a02ab0fecb5ace2702f6d45761',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2bab6d92470f73b70c10479c44c9bc01fa3dfbaa897e27baf6c5be0b4e1b610b.mp3', 1201, '2026-09-13 06:17:27.328979', '2f55fe85b08ee050c371c3b08358263aef270bd2b2f3d183b5a2ef95b2a81944', 'validated', '{"audio_key":"2bab6d92470f73b70c10479c44c9bc01fa3dfbaa897e27baf6c5be0b4e1b610b","entity_key":"wf_shared_planning_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2f55fe85b08ee050c371c3b08358263aef270bd2b2f3d183b5a2ef95b2a81944","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2bab6d92470f73b70c10479c44c9bc01fa3dfbaa897e27baf6c5be0b4e1b610b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_experience_reflection_01 -> audio/generated/de-DE/lexical/35953967a238c5b040873724d59eeb08b3b7efd03f95b635f71297b0bc8b632a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7cbe008f-7935-5f99-866e-97050782e77e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_experience_reflection_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8903b7274323f484994f6629f9ad8998c67777ae95b41d5035881b245f2b3614'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2fe81225-2052-53f3-902a-f65343833119', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7cbe008f-7935-5f99-866e-97050782e77e', 1), '8903b7274323f484994f6629f9ad8998c67777ae95b41d5035881b245f2b3614',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/35953967a238c5b040873724d59eeb08b3b7efd03f95b635f71297b0bc8b632a.mp3', 1097, '2026-09-13 08:47:55.168199', 'a839a060d2ff8e69c852813b84a503346aa85da2e3bb4c32f2754b2216f24afd', 'validated', '{"audio_key":"35953967a238c5b040873724d59eeb08b3b7efd03f95b635f71297b0bc8b632a","entity_key":"lx_experience_reflection_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a839a060d2ff8e69c852813b84a503346aa85da2e3bb4c32f2754b2216f24afd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/35953967a238c5b040873724d59eeb08b3b7efd03f95b635f71297b0bc8b632a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_experience_reflection_01 -> audio/generated/de-DE/lexical/35953967a238c5b040873724d59eeb08b3b7efd03f95b635f71297b0bc8b632a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('aab60cc0-4b88-5813-88e5-72ee825c8f4c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_experience_reflection_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8903b7274323f484994f6629f9ad8998c67777ae95b41d5035881b245f2b3614'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('767f4fae-5463-50ae-8284-b81e54401938', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('aab60cc0-4b88-5813-88e5-72ee825c8f4c', 1), '8903b7274323f484994f6629f9ad8998c67777ae95b41d5035881b245f2b3614',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/35953967a238c5b040873724d59eeb08b3b7efd03f95b635f71297b0bc8b632a.mp3', 1097, '2026-09-13 08:47:55.168199', 'a839a060d2ff8e69c852813b84a503346aa85da2e3bb4c32f2754b2216f24afd', 'validated', '{"audio_key":"35953967a238c5b040873724d59eeb08b3b7efd03f95b635f71297b0bc8b632a","entity_key":"wf_experience_reflection_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a839a060d2ff8e69c852813b84a503346aa85da2e3bb4c32f2754b2216f24afd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/35953967a238c5b040873724d59eeb08b3b7efd03f95b635f71297b0bc8b632a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_project_documentation_06 -> audio/generated/de-DE/lexical/35f582b5aedd89dfe262ca1487d97f612f3f7e3b05b8600d57d2909baed5707a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('17bdf3e0-a7ef-5384-b77b-cbdc6798a55a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_project_documentation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4ee0e814f3fe1a63553176fdee9b53295cf121fd2531a6d371532676fb50499b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2bae0edf-47e0-53a6-bbe1-d7955fe70dfe', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('17bdf3e0-a7ef-5384-b77b-cbdc6798a55a', 1), '4ee0e814f3fe1a63553176fdee9b53295cf121fd2531a6d371532676fb50499b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/35f582b5aedd89dfe262ca1487d97f612f3f7e3b05b8600d57d2909baed5707a.mp3', 1384, '2026-09-13 08:16:32.762418', '7aebb55fda86097349340d8109d40feee4e6020d68592f633abad7488d6b324b', 'validated', '{"audio_key":"35f582b5aedd89dfe262ca1487d97f612f3f7e3b05b8600d57d2909baed5707a","entity_key":"lx_project_documentation_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7aebb55fda86097349340d8109d40feee4e6020d68592f633abad7488d6b324b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/35f582b5aedd89dfe262ca1487d97f612f3f7e3b05b8600d57d2909baed5707a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_project_documentation_06 -> audio/generated/de-DE/lexical/35f582b5aedd89dfe262ca1487d97f612f3f7e3b05b8600d57d2909baed5707a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f1999b44-62c7-5391-ab7e-167139edf27b', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_project_documentation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4ee0e814f3fe1a63553176fdee9b53295cf121fd2531a6d371532676fb50499b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bd90c959-6599-5c4e-a5a3-7521d2153779', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f1999b44-62c7-5391-ab7e-167139edf27b', 1), '4ee0e814f3fe1a63553176fdee9b53295cf121fd2531a6d371532676fb50499b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/35f582b5aedd89dfe262ca1487d97f612f3f7e3b05b8600d57d2909baed5707a.mp3', 1384, '2026-09-13 08:16:32.762418', '7aebb55fda86097349340d8109d40feee4e6020d68592f633abad7488d6b324b', 'validated', '{"audio_key":"35f582b5aedd89dfe262ca1487d97f612f3f7e3b05b8600d57d2909baed5707a","entity_key":"wf_project_documentation_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7aebb55fda86097349340d8109d40feee4e6020d68592f633abad7488d6b324b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/35f582b5aedd89dfe262ca1487d97f612f3f7e3b05b8600d57d2909baed5707a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_experience_reflection_04 -> audio/generated/de-DE/lexical/3929ecc7f6955f1a488a9f3586657684d953d003e110cd56d2225b4d636020dc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e16d0336-8c66-5c50-a7c5-5e4bfe0fbc1d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_experience_reflection_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a75d21a34bc2f3d6d701228bb1fd6bc327e69ed10a9fb80ddfd9f42ac2f3dc34'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6dbe5a40-ece9-5922-b836-8ebbf6a446d8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e16d0336-8c66-5c50-a7c5-5e4bfe0fbc1d', 1), 'a75d21a34bc2f3d6d701228bb1fd6bc327e69ed10a9fb80ddfd9f42ac2f3dc34',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3929ecc7f6955f1a488a9f3586657684d953d003e110cd56d2225b4d636020dc.mp3', 1071, '2026-09-13 08:47:55.552738', '3bcb04f097d1bb70964c6ab8478216d828e8cf59b98c2e59fde6ce7bba93ff4b', 'validated', '{"audio_key":"3929ecc7f6955f1a488a9f3586657684d953d003e110cd56d2225b4d636020dc","entity_key":"lx_experience_reflection_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3bcb04f097d1bb70964c6ab8478216d828e8cf59b98c2e59fde6ce7bba93ff4b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3929ecc7f6955f1a488a9f3586657684d953d003e110cd56d2225b4d636020dc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_experience_reflection_04 -> audio/generated/de-DE/lexical/3929ecc7f6955f1a488a9f3586657684d953d003e110cd56d2225b4d636020dc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d9f4c1c0-45fd-563b-be25-83c30eba66a3', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_experience_reflection_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a75d21a34bc2f3d6d701228bb1fd6bc327e69ed10a9fb80ddfd9f42ac2f3dc34'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('207b5bc4-afb0-5996-ae27-1556285ff13e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d9f4c1c0-45fd-563b-be25-83c30eba66a3', 1), 'a75d21a34bc2f3d6d701228bb1fd6bc327e69ed10a9fb80ddfd9f42ac2f3dc34',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3929ecc7f6955f1a488a9f3586657684d953d003e110cd56d2225b4d636020dc.mp3', 1071, '2026-09-13 08:47:55.552738', '3bcb04f097d1bb70964c6ab8478216d828e8cf59b98c2e59fde6ce7bba93ff4b', 'validated', '{"audio_key":"3929ecc7f6955f1a488a9f3586657684d953d003e110cd56d2225b4d636020dc","entity_key":"wf_experience_reflection_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3bcb04f097d1bb70964c6ab8478216d828e8cf59b98c2e59fde6ce7bba93ff4b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3929ecc7f6955f1a488a9f3586657684d953d003e110cd56d2225b4d636020dc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_venue_comparison_05 -> audio/generated/de-DE/lexical/3962bf135aa2ae32f3da9fbd62b6f60811e84b1262b7536bac72be95348d210d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6aa1dde9-84eb-5019-95ea-47c4675c501c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_venue_comparison_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e23d8b281b7378ecd57d6cf95aedd8ed8f08159c05156bc1ae55eb7ec443a0ea'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('42c00f5a-e9c6-5680-b8df-036bce18e90b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6aa1dde9-84eb-5019-95ea-47c4675c501c', 1), 'e23d8b281b7378ecd57d6cf95aedd8ed8f08159c05156bc1ae55eb7ec443a0ea',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3962bf135aa2ae32f3da9fbd62b6f60811e84b1262b7536bac72be95348d210d.mp3', 1253, '2026-09-13 06:17:29.239154', '092c973bf7ec5d3122b949b660ab77dec0852447f2f01a54ec262cbe1b1810ee', 'validated', '{"audio_key":"3962bf135aa2ae32f3da9fbd62b6f60811e84b1262b7536bac72be95348d210d","entity_key":"lx_venue_comparison_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"092c973bf7ec5d3122b949b660ab77dec0852447f2f01a54ec262cbe1b1810ee","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3962bf135aa2ae32f3da9fbd62b6f60811e84b1262b7536bac72be95348d210d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_venue_comparison_05 -> audio/generated/de-DE/lexical/3962bf135aa2ae32f3da9fbd62b6f60811e84b1262b7536bac72be95348d210d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('55e71f82-efcd-5d62-bfd5-22a3be965a20', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_venue_comparison_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e23d8b281b7378ecd57d6cf95aedd8ed8f08159c05156bc1ae55eb7ec443a0ea'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('be8f6236-6e73-57ca-b5d6-40d5f2cc2c77', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('55e71f82-efcd-5d62-bfd5-22a3be965a20', 1), 'e23d8b281b7378ecd57d6cf95aedd8ed8f08159c05156bc1ae55eb7ec443a0ea',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3962bf135aa2ae32f3da9fbd62b6f60811e84b1262b7536bac72be95348d210d.mp3', 1253, '2026-09-13 06:17:29.239154', '092c973bf7ec5d3122b949b660ab77dec0852447f2f01a54ec262cbe1b1810ee', 'validated', '{"audio_key":"3962bf135aa2ae32f3da9fbd62b6f60811e84b1262b7536bac72be95348d210d","entity_key":"wf_venue_comparison_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"092c973bf7ec5d3122b949b660ab77dec0852447f2f01a54ec262cbe1b1810ee","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3962bf135aa2ae32f3da9fbd62b6f60811e84b1262b7536bac72be95348d210d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_project_documentation_05 -> audio/generated/de-DE/lexical/39aa3d9b6bb4fdc5195d8e2ec32610c8e0a8f9de5a3a23264c73d241bedd6d73.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('23c8b43e-e4b8-5501-b7e6-6b978e769b29', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_project_documentation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9e5eaf7017e39f80c05169fc854e32e9ab5789c37afb2fa880312b38cbcbcfab'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9ab75f2e-eb12-5603-bf87-527285a201c9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('23c8b43e-e4b8-5501-b7e6-6b978e769b29', 1), '9e5eaf7017e39f80c05169fc854e32e9ab5789c37afb2fa880312b38cbcbcfab',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/39aa3d9b6bb4fdc5195d8e2ec32610c8e0a8f9de5a3a23264c73d241bedd6d73.mp3', 1201, '2026-09-13 08:32:25.074844', 'ac18b260f357b0f79853ce42a90737945bac059594128529ad20c0c8177235c3', 'validated', '{"audio_key":"39aa3d9b6bb4fdc5195d8e2ec32610c8e0a8f9de5a3a23264c73d241bedd6d73","entity_key":"lx_project_documentation_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ac18b260f357b0f79853ce42a90737945bac059594128529ad20c0c8177235c3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/39aa3d9b6bb4fdc5195d8e2ec32610c8e0a8f9de5a3a23264c73d241bedd6d73.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_project_documentation_05 -> audio/generated/de-DE/lexical/39aa3d9b6bb4fdc5195d8e2ec32610c8e0a8f9de5a3a23264c73d241bedd6d73.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b20540ae-2290-5ac3-b111-9f539ec09530', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_project_documentation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9e5eaf7017e39f80c05169fc854e32e9ab5789c37afb2fa880312b38cbcbcfab'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f48768cd-b113-51a7-8308-f90c304b5e7f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b20540ae-2290-5ac3-b111-9f539ec09530', 1), '9e5eaf7017e39f80c05169fc854e32e9ab5789c37afb2fa880312b38cbcbcfab',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/39aa3d9b6bb4fdc5195d8e2ec32610c8e0a8f9de5a3a23264c73d241bedd6d73.mp3', 1201, '2026-09-13 08:32:25.074844', 'ac18b260f357b0f79853ce42a90737945bac059594128529ad20c0c8177235c3', 'validated', '{"audio_key":"39aa3d9b6bb4fdc5195d8e2ec32610c8e0a8f9de5a3a23264c73d241bedd6d73","entity_key":"wf_project_documentation_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ac18b260f357b0f79853ce42a90737945bac059594128529ad20c0c8177235c3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/39aa3d9b6bb4fdc5195d8e2ec32610c8e0a8f9de5a3a23264c73d241bedd6d73.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_shared_planning_06 -> audio/generated/de-DE/lexical/3df21cf6d689e9d8cc8fe2408044291cada08616f0baf2a833b54b5350c86d71.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f9b04932-7ec4-523f-8c53-a9723ae4ebb5', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_shared_planning_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd0fe933e766fbabef6e59de2fb98ef7b8aef005eb0e5ac051a011f3d89b6133f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('315948e8-aa29-58e5-addd-faa1b62132af', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f9b04932-7ec4-523f-8c53-a9723ae4ebb5', 1), 'd0fe933e766fbabef6e59de2fb98ef7b8aef005eb0e5ac051a011f3d89b6133f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3df21cf6d689e9d8cc8fe2408044291cada08616f0baf2a833b54b5350c86d71.mp3', 1097, '2026-09-13 06:43:01.399145', '4d2b9a62c6cec3c73bb47c01072065fc6f89a20984d38bf3f0ff3ea46d9cee27', 'validated', '{"audio_key":"3df21cf6d689e9d8cc8fe2408044291cada08616f0baf2a833b54b5350c86d71","entity_key":"lx_shared_planning_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4d2b9a62c6cec3c73bb47c01072065fc6f89a20984d38bf3f0ff3ea46d9cee27","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3df21cf6d689e9d8cc8fe2408044291cada08616f0baf2a833b54b5350c86d71.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_shared_planning_06 -> audio/generated/de-DE/lexical/3df21cf6d689e9d8cc8fe2408044291cada08616f0baf2a833b54b5350c86d71.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a12b786f-d0d8-538f-baaa-81b45744deb3', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_shared_planning_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd0fe933e766fbabef6e59de2fb98ef7b8aef005eb0e5ac051a011f3d89b6133f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5c024b98-1d3f-5b9b-a453-0e2a033c1597', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a12b786f-d0d8-538f-baaa-81b45744deb3', 1), 'd0fe933e766fbabef6e59de2fb98ef7b8aef005eb0e5ac051a011f3d89b6133f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3df21cf6d689e9d8cc8fe2408044291cada08616f0baf2a833b54b5350c86d71.mp3', 1097, '2026-09-13 06:43:01.399145', '4d2b9a62c6cec3c73bb47c01072065fc6f89a20984d38bf3f0ff3ea46d9cee27', 'validated', '{"audio_key":"3df21cf6d689e9d8cc8fe2408044291cada08616f0baf2a833b54b5350c86d71","entity_key":"wf_shared_planning_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4d2b9a62c6cec3c73bb47c01072065fc6f89a20984d38bf3f0ff3ea46d9cee27","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3df21cf6d689e9d8cc8fe2408044291cada08616f0baf2a833b54b5350c86d71.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_rules_requirements_02 -> audio/generated/de-DE/lexical/3df7928a373b1653d0644676153b67b117aa8f918b699ec3c076d250c3a94690.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6b03f24f-fc27-53db-9e5b-2346ec3670ee', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_rules_requirements_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd2393a5d4cc33b11a751cdb95c8695ca28ae03caaba00195838fbf75417c3c8b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5d17c99a-690b-53b5-ad47-9c13bcd58e9c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6b03f24f-fc27-53db-9e5b-2346ec3670ee', 1), 'd2393a5d4cc33b11a751cdb95c8695ca28ae03caaba00195838fbf75417c3c8b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3df7928a373b1653d0644676153b67b117aa8f918b699ec3c076d250c3a94690.mp3', 1018, '2026-09-13 06:59:25.661838', '1780f2051644569fb8216dfe11855a2033dc52a852c061838660e95a07136a2d', 'validated', '{"audio_key":"3df7928a373b1653d0644676153b67b117aa8f918b699ec3c076d250c3a94690","entity_key":"lx_rules_requirements_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1780f2051644569fb8216dfe11855a2033dc52a852c061838660e95a07136a2d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3df7928a373b1653d0644676153b67b117aa8f918b699ec3c076d250c3a94690.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_rules_requirements_02 -> audio/generated/de-DE/lexical/3df7928a373b1653d0644676153b67b117aa8f918b699ec3c076d250c3a94690.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6bdbc7fe-b23f-5694-87bd-4914403b7098', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_rules_requirements_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd2393a5d4cc33b11a751cdb95c8695ca28ae03caaba00195838fbf75417c3c8b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ba53baf9-9fc6-531e-962e-0e7ae592ec89', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6bdbc7fe-b23f-5694-87bd-4914403b7098', 1), 'd2393a5d4cc33b11a751cdb95c8695ca28ae03caaba00195838fbf75417c3c8b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3df7928a373b1653d0644676153b67b117aa8f918b699ec3c076d250c3a94690.mp3', 1018, '2026-09-13 06:59:25.661838', '1780f2051644569fb8216dfe11855a2033dc52a852c061838660e95a07136a2d', 'validated', '{"audio_key":"3df7928a373b1653d0644676153b67b117aa8f918b699ec3c076d250c3a94690","entity_key":"wf_rules_requirements_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1780f2051644569fb8216dfe11855a2033dc52a852c061838660e95a07136a2d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3df7928a373b1653d0644676153b67b117aa8f918b699ec3c076d250c3a94690.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_structured_meetings_03 -> audio/generated/de-DE/lexical/420ec6afc5cb8bad8cc25d09a189680c39f04315e57279812f5cf4ba3254fd3f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8719bdb0-3a54-53d4-a7e4-b4fbe45b4d0e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_structured_meetings_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b85992f11603b7c6b0af5c3fd3b6aa282ff537fa376cf703780e9a723d79dd6c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8cae342e-9821-5375-bddd-8be8e6651925', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8719bdb0-3a54-53d4-a7e4-b4fbe45b4d0e', 1), 'b85992f11603b7c6b0af5c3fd3b6aa282ff537fa376cf703780e9a723d79dd6c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/420ec6afc5cb8bad8cc25d09a189680c39f04315e57279812f5cf4ba3254fd3f.mp3', 1436, '2026-09-13 07:35:33.432112', 'f0c23a389bff4c73c9ca875069351af24a9e617f315adf0a2bbb508013158c38', 'validated', '{"audio_key":"420ec6afc5cb8bad8cc25d09a189680c39f04315e57279812f5cf4ba3254fd3f","entity_key":"lx_structured_meetings_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f0c23a389bff4c73c9ca875069351af24a9e617f315adf0a2bbb508013158c38","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/420ec6afc5cb8bad8cc25d09a189680c39f04315e57279812f5cf4ba3254fd3f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_structured_meetings_03 -> audio/generated/de-DE/lexical/420ec6afc5cb8bad8cc25d09a189680c39f04315e57279812f5cf4ba3254fd3f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a101cbea-171f-558f-8221-84aac179392d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_structured_meetings_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b85992f11603b7c6b0af5c3fd3b6aa282ff537fa376cf703780e9a723d79dd6c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7889ac4d-29b9-5dfe-9237-62ea94ebeabd', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a101cbea-171f-558f-8221-84aac179392d', 1), 'b85992f11603b7c6b0af5c3fd3b6aa282ff537fa376cf703780e9a723d79dd6c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/420ec6afc5cb8bad8cc25d09a189680c39f04315e57279812f5cf4ba3254fd3f.mp3', 1436, '2026-09-13 07:35:33.432112', 'f0c23a389bff4c73c9ca875069351af24a9e617f315adf0a2bbb508013158c38', 'validated', '{"audio_key":"420ec6afc5cb8bad8cc25d09a189680c39f04315e57279812f5cf4ba3254fd3f","entity_key":"wf_structured_meetings_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f0c23a389bff4c73c9ca875069351af24a9e617f315adf0a2bbb508013158c38","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/420ec6afc5cb8bad8cc25d09a189680c39f04315e57279812f5cf4ba3254fd3f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_learning_goals_01 -> audio/generated/de-DE/lexical/4616399ebcdd255a92a90b375a7f30748664fba8b5b4ec980561ae13a73c2cd9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8662261b-5a66-5f0a-8f69-63fa314ab62c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_learning_goals_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ad587df9e2a394727867b9ea56e24baccfb7b4b269945cb533c33981e3301316'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('549e4da9-8dff-5d47-8481-229e44f9ae74', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8662261b-5a66-5f0a-8f69-63fa314ab62c', 1), 'ad587df9e2a394727867b9ea56e24baccfb7b4b269945cb533c33981e3301316',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4616399ebcdd255a92a90b375a7f30748664fba8b5b4ec980561ae13a73c2cd9.mp3', 1097, '2026-09-13 08:47:56.162813', 'edacc966b21a800d03a2cfc9d1ae7ec822d931e1e35b4f2738e0516e5d71a9a8', 'validated', '{"audio_key":"4616399ebcdd255a92a90b375a7f30748664fba8b5b4ec980561ae13a73c2cd9","entity_key":"lx_learning_goals_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"edacc966b21a800d03a2cfc9d1ae7ec822d931e1e35b4f2738e0516e5d71a9a8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4616399ebcdd255a92a90b375a7f30748664fba8b5b4ec980561ae13a73c2cd9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_learning_goals_01 -> audio/generated/de-DE/lexical/4616399ebcdd255a92a90b375a7f30748664fba8b5b4ec980561ae13a73c2cd9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('229326d6-7300-519b-8241-fd2a2b186b71', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_learning_goals_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ad587df9e2a394727867b9ea56e24baccfb7b4b269945cb533c33981e3301316'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dff6b1f3-d6be-54a8-91c4-d3c346211709', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('229326d6-7300-519b-8241-fd2a2b186b71', 1), 'ad587df9e2a394727867b9ea56e24baccfb7b4b269945cb533c33981e3301316',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4616399ebcdd255a92a90b375a7f30748664fba8b5b4ec980561ae13a73c2cd9.mp3', 1097, '2026-09-13 08:47:56.162813', 'edacc966b21a800d03a2cfc9d1ae7ec822d931e1e35b4f2738e0516e5d71a9a8', 'validated', '{"audio_key":"4616399ebcdd255a92a90b375a7f30748664fba8b5b4ec980561ae13a73c2cd9","entity_key":"wf_learning_goals_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"edacc966b21a800d03a2cfc9d1ae7ec822d931e1e35b4f2738e0516e5d71a9a8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4616399ebcdd255a92a90b375a7f30748664fba8b5b4ec980561ae13a73c2cd9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_learning_goals_05 -> audio/generated/de-DE/lexical/497983e09fc85dc1a12fd62a39eaf3bd170397d41dac4a51b173f45350fd9060.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('11a14208-a06c-5521-aa27-0f309d150dd1', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_learning_goals_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cdd870533f98f822013629155dc907c9314f2ae969bb18ea6c059561b049b6d0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ff2fe838-8bf6-590e-a1e7-8bb4d41e84c9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('11a14208-a06c-5521-aa27-0f309d150dd1', 1), 'cdd870533f98f822013629155dc907c9314f2ae969bb18ea6c059561b049b6d0',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/497983e09fc85dc1a12fd62a39eaf3bd170397d41dac4a51b173f45350fd9060.mp3', 1018, '2026-09-13 08:47:56.537326', 'f02d81761c77b1a6bad35bd5e8ff1173f90990bb14a9e8d8b4b65f6bfb8d6e5b', 'validated', '{"audio_key":"497983e09fc85dc1a12fd62a39eaf3bd170397d41dac4a51b173f45350fd9060","entity_key":"lx_learning_goals_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f02d81761c77b1a6bad35bd5e8ff1173f90990bb14a9e8d8b4b65f6bfb8d6e5b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/497983e09fc85dc1a12fd62a39eaf3bd170397d41dac4a51b173f45350fd9060.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_learning_goals_05 -> audio/generated/de-DE/lexical/497983e09fc85dc1a12fd62a39eaf3bd170397d41dac4a51b173f45350fd9060.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d7c2ba13-3973-5e9b-a778-a38c6933af25', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_learning_goals_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cdd870533f98f822013629155dc907c9314f2ae969bb18ea6c059561b049b6d0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('48575c9e-ff11-5b6e-b40b-e08705a50bd6', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d7c2ba13-3973-5e9b-a778-a38c6933af25', 1), 'cdd870533f98f822013629155dc907c9314f2ae969bb18ea6c059561b049b6d0',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/497983e09fc85dc1a12fd62a39eaf3bd170397d41dac4a51b173f45350fd9060.mp3', 1018, '2026-09-13 08:47:56.537326', 'f02d81761c77b1a6bad35bd5e8ff1173f90990bb14a9e8d8b4b65f6bfb8d6e5b', 'validated', '{"audio_key":"497983e09fc85dc1a12fd62a39eaf3bd170397d41dac4a51b173f45350fd9060","entity_key":"wf_learning_goals_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f02d81761c77b1a6bad35bd5e8ff1173f90990bb14a9e8d8b4b65f6bfb8d6e5b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/497983e09fc85dc1a12fd62a39eaf3bd170397d41dac4a51b173f45350fd9060.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_responsibility_corrections_04 -> audio/generated/de-DE/lexical/4c7c9ef5b0cb6fd15d808ae06e2636151a62355bfc476f2a4d45b1a312a7999a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('efbd24da-946c-5fb1-8765-ca3fda11802d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_responsibility_corrections_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3911f0e7cb86ccbaa405ff6c3900c32807f330822d24c417a59d4cfe2a403453'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f6d22948-ca34-5e9d-9061-626046cf5837', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('efbd24da-946c-5fb1-8765-ca3fda11802d', 1), '3911f0e7cb86ccbaa405ff6c3900c32807f330822d24c417a59d4cfe2a403453',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4c7c9ef5b0cb6fd15d808ae06e2636151a62355bfc476f2a4d45b1a312a7999a.mp3', 1071, '2026-09-13 07:53:14.571982', '57bd55961536efbf30cf569e2acd425efd06e7712e84f201e41d191bbba1cc51', 'validated', '{"audio_key":"4c7c9ef5b0cb6fd15d808ae06e2636151a62355bfc476f2a4d45b1a312a7999a","entity_key":"lx_responsibility_corrections_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"57bd55961536efbf30cf569e2acd425efd06e7712e84f201e41d191bbba1cc51","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4c7c9ef5b0cb6fd15d808ae06e2636151a62355bfc476f2a4d45b1a312a7999a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_responsibility_corrections_04 -> audio/generated/de-DE/lexical/4c7c9ef5b0cb6fd15d808ae06e2636151a62355bfc476f2a4d45b1a312a7999a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('12a4a9fd-5ac5-5612-803d-4ab4cb18c428', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_responsibility_corrections_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3911f0e7cb86ccbaa405ff6c3900c32807f330822d24c417a59d4cfe2a403453'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('54028280-412a-51a0-8136-9ec03a57a297', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('12a4a9fd-5ac5-5612-803d-4ab4cb18c428', 1), '3911f0e7cb86ccbaa405ff6c3900c32807f330822d24c417a59d4cfe2a403453',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4c7c9ef5b0cb6fd15d808ae06e2636151a62355bfc476f2a4d45b1a312a7999a.mp3', 1071, '2026-09-13 07:53:14.571982', '57bd55961536efbf30cf569e2acd425efd06e7712e84f201e41d191bbba1cc51', 'validated', '{"audio_key":"4c7c9ef5b0cb6fd15d808ae06e2636151a62355bfc476f2a4d45b1a312a7999a","entity_key":"wf_responsibility_corrections_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"57bd55961536efbf30cf569e2acd425efd06e7712e84f201e41d191bbba1cc51","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4c7c9ef5b0cb6fd15d808ae06e2636151a62355bfc476f2a4d45b1a312a7999a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_resource_priorities_02 -> audio/generated/de-DE/lexical/4d54b6f9a70b47b2ae36d649dfefa46d11fed6659f129f8095948f99e41b4e66.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d5fdc7ca-855f-51ce-b449-2345ac680616', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_resource_priorities_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd24e65aa9de66e287f861f2448f6514aefbaec2e218599ea50c0c806d386dc92'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6ca52f6d-afc7-538f-a6ea-d6f2cc8333e8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d5fdc7ca-855f-51ce-b449-2345ac680616', 1), 'd24e65aa9de66e287f861f2448f6514aefbaec2e218599ea50c0c806d386dc92',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4d54b6f9a70b47b2ae36d649dfefa46d11fed6659f129f8095948f99e41b4e66.mp3', 1097, '2026-09-13 08:47:57.177107', '1427fd6e4cf0a197bf4b5e675a873cf8835d67345454dbe12af8e420fb8461a4', 'validated', '{"audio_key":"4d54b6f9a70b47b2ae36d649dfefa46d11fed6659f129f8095948f99e41b4e66","entity_key":"lx_resource_priorities_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1427fd6e4cf0a197bf4b5e675a873cf8835d67345454dbe12af8e420fb8461a4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4d54b6f9a70b47b2ae36d649dfefa46d11fed6659f129f8095948f99e41b4e66.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_resource_priorities_02 -> audio/generated/de-DE/lexical/4d54b6f9a70b47b2ae36d649dfefa46d11fed6659f129f8095948f99e41b4e66.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6f65630b-1599-59ae-8568-1ef336a05070', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_resource_priorities_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd24e65aa9de66e287f861f2448f6514aefbaec2e218599ea50c0c806d386dc92'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('63d61208-f297-5241-a7a6-9fcff179f7e8', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6f65630b-1599-59ae-8568-1ef336a05070', 1), 'd24e65aa9de66e287f861f2448f6514aefbaec2e218599ea50c0c806d386dc92',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4d54b6f9a70b47b2ae36d649dfefa46d11fed6659f129f8095948f99e41b4e66.mp3', 1097, '2026-09-13 08:47:57.177107', '1427fd6e4cf0a197bf4b5e675a873cf8835d67345454dbe12af8e420fb8461a4', 'validated', '{"audio_key":"4d54b6f9a70b47b2ae36d649dfefa46d11fed6659f129f8095948f99e41b4e66","entity_key":"wf_resource_priorities_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1427fd6e4cf0a197bf4b5e675a873cf8835d67345454dbe12af8e420fb8461a4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4d54b6f9a70b47b2ae36d649dfefa46d11fed6659f129f8095948f99e41b4e66.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_resource_priorities_06 -> audio/generated/de-DE/lexical/4f2941953d2890217801b240d21a48e408d8d47cb060b6781d92726555944223.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3c199918-e33b-5b3b-a7fe-319d2d296fd6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_resource_priorities_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '54d8c0496ea36386747f1bf7cc9fb88caecb4f55b1f056ccc846a3e0475ccae1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('219efc04-7f40-5cd6-872b-2958d68d7b60', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3c199918-e33b-5b3b-a7fe-319d2d296fd6', 1), '54d8c0496ea36386747f1bf7cc9fb88caecb4f55b1f056ccc846a3e0475ccae1',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4f2941953d2890217801b240d21a48e408d8d47cb060b6781d92726555944223.mp3', 1332, '2026-09-13 07:53:15.641395', '557bd7b70dc10cd8c8cb0d64839896a54afbfe79d00c165444fcba85eff967ac', 'validated', '{"audio_key":"4f2941953d2890217801b240d21a48e408d8d47cb060b6781d92726555944223","entity_key":"lx_resource_priorities_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"557bd7b70dc10cd8c8cb0d64839896a54afbfe79d00c165444fcba85eff967ac","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4f2941953d2890217801b240d21a48e408d8d47cb060b6781d92726555944223.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_resource_priorities_06 -> audio/generated/de-DE/lexical/4f2941953d2890217801b240d21a48e408d8d47cb060b6781d92726555944223.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b475435d-044b-5cf3-a4ae-d2be97954ff3', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_resource_priorities_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '54d8c0496ea36386747f1bf7cc9fb88caecb4f55b1f056ccc846a3e0475ccae1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9baf8e11-b68a-5300-9c68-021cc563d74c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b475435d-044b-5cf3-a4ae-d2be97954ff3', 1), '54d8c0496ea36386747f1bf7cc9fb88caecb4f55b1f056ccc846a3e0475ccae1',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4f2941953d2890217801b240d21a48e408d8d47cb060b6781d92726555944223.mp3', 1332, '2026-09-13 07:53:15.641395', '557bd7b70dc10cd8c8cb0d64839896a54afbfe79d00c165444fcba85eff967ac', 'validated', '{"audio_key":"4f2941953d2890217801b240d21a48e408d8d47cb060b6781d92726555944223","entity_key":"wf_resource_priorities_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"557bd7b70dc10cd8c8cb0d64839896a54afbfe79d00c165444fcba85eff967ac","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4f2941953d2890217801b240d21a48e408d8d47cb060b6781d92726555944223.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_cultural_reviews_05 -> audio/generated/de-DE/lexical/5bf53d407bc048a72e460e46ccc1dc477e96a825364ec2d68f7b70c2cfa79cf0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f584feed-400d-5266-9887-e01f7e41a0b5', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_cultural_reviews_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f515395fd4389bed4fbbd474da69f9fc7bff7f5f66510f6d62ffa8f0bf90cf15'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('24779249-aebf-51b1-b4ba-da09238c782a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f584feed-400d-5266-9887-e01f7e41a0b5', 1), 'f515395fd4389bed4fbbd474da69f9fc7bff7f5f66510f6d62ffa8f0bf90cf15',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/5bf53d407bc048a72e460e46ccc1dc477e96a825364ec2d68f7b70c2cfa79cf0.mp3', 1149, '2026-09-13 08:47:57.609761', '8bbdc472a58cce1fee94cb467024be40ad21f29adfd58c699021561cb7bffccc', 'validated', '{"audio_key":"5bf53d407bc048a72e460e46ccc1dc477e96a825364ec2d68f7b70c2cfa79cf0","entity_key":"lx_cultural_reviews_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8bbdc472a58cce1fee94cb467024be40ad21f29adfd58c699021561cb7bffccc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/5bf53d407bc048a72e460e46ccc1dc477e96a825364ec2d68f7b70c2cfa79cf0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_cultural_reviews_05 -> audio/generated/de-DE/lexical/5bf53d407bc048a72e460e46ccc1dc477e96a825364ec2d68f7b70c2cfa79cf0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('714a26ee-8a6a-5fd2-8709-eeed178dca68', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_cultural_reviews_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f515395fd4389bed4fbbd474da69f9fc7bff7f5f66510f6d62ffa8f0bf90cf15'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ac4e0cb4-eb68-5131-908e-9ee1ee3e6ce4', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('714a26ee-8a6a-5fd2-8709-eeed178dca68', 1), 'f515395fd4389bed4fbbd474da69f9fc7bff7f5f66510f6d62ffa8f0bf90cf15',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/5bf53d407bc048a72e460e46ccc1dc477e96a825364ec2d68f7b70c2cfa79cf0.mp3', 1149, '2026-09-13 08:47:57.609761', '8bbdc472a58cce1fee94cb467024be40ad21f29adfd58c699021561cb7bffccc', 'validated', '{"audio_key":"5bf53d407bc048a72e460e46ccc1dc477e96a825364ec2d68f7b70c2cfa79cf0","entity_key":"wf_cultural_reviews_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8bbdc472a58cce1fee94cb467024be40ad21f29adfd58c699021561cb7bffccc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/5bf53d407bc048a72e460e46ccc1dc477e96a825364ec2d68f7b70c2cfa79cf0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_structured_meetings_02 -> audio/generated/de-DE/lexical/5ce9579f985e8ea42745b04859962fe438842178c982e5d8f603bb1fa42421ba.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a47ce2f1-aace-50bd-86a6-58b25de3aaf1', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_structured_meetings_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '667a554f16af548bc4792f695e0e3950ca0548b1bfb811c1e0af3954a5cf4e0f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('92518cc9-50b7-5c3e-b9d2-e0d7ec599e8b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a47ce2f1-aace-50bd-86a6-58b25de3aaf1', 1), '667a554f16af548bc4792f695e0e3950ca0548b1bfb811c1e0af3954a5cf4e0f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/5ce9579f985e8ea42745b04859962fe438842178c982e5d8f603bb1fa42421ba.mp3', 1332, '2026-09-13 05:30:06.238000', 'e011c221dac60891a291c116a5e46dd8d396713a7d5e0c084bcee100a184599f', 'validated', '{"audio_key":"5ce9579f985e8ea42745b04859962fe438842178c982e5d8f603bb1fa42421ba","entity_key":"lx_structured_meetings_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e011c221dac60891a291c116a5e46dd8d396713a7d5e0c084bcee100a184599f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/5ce9579f985e8ea42745b04859962fe438842178c982e5d8f603bb1fa42421ba.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_structured_meetings_02 -> audio/generated/de-DE/lexical/5ce9579f985e8ea42745b04859962fe438842178c982e5d8f603bb1fa42421ba.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ddf4e214-b3ad-5d08-9b01-7f6bc31b949e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_structured_meetings_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '667a554f16af548bc4792f695e0e3950ca0548b1bfb811c1e0af3954a5cf4e0f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3333da7a-4110-5e1f-9fb7-8421159d9017', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ddf4e214-b3ad-5d08-9b01-7f6bc31b949e', 1), '667a554f16af548bc4792f695e0e3950ca0548b1bfb811c1e0af3954a5cf4e0f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/5ce9579f985e8ea42745b04859962fe438842178c982e5d8f603bb1fa42421ba.mp3', 1332, '2026-09-13 05:30:06.238000', 'e011c221dac60891a291c116a5e46dd8d396713a7d5e0c084bcee100a184599f', 'validated', '{"audio_key":"5ce9579f985e8ea42745b04859962fe438842178c982e5d8f603bb1fa42421ba","entity_key":"wf_structured_meetings_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e011c221dac60891a291c116a5e46dd8d396713a7d5e0c084bcee100a184599f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/5ce9579f985e8ea42745b04859962fe438842178c982e5d8f603bb1fa42421ba.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_responsibility_corrections_03 -> audio/generated/de-DE/lexical/611198c3d00e548aa88cbc41396af0edee8782bb465fa4bd5ca242df2875a9ab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('133efef0-6544-5896-8aad-741a9aca92f5', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_responsibility_corrections_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3309d12e62bc3d72821d643c523a75f04a4fbb8a776424040fd097dbe49317d9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0f7fd7e5-5f8d-51d7-a7d5-908080ab821a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('133efef0-6544-5896-8aad-741a9aca92f5', 1), '3309d12e62bc3d72821d643c523a75f04a4fbb8a776424040fd097dbe49317d9',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/611198c3d00e548aa88cbc41396af0edee8782bb465fa4bd5ca242df2875a9ab.mp3', 1201, '2026-09-13 08:47:58.192746', '877c47b28a6ae35388c8ecf17f879cdb0e466f63e22990b900acc36ddf1b7336', 'validated', '{"audio_key":"611198c3d00e548aa88cbc41396af0edee8782bb465fa4bd5ca242df2875a9ab","entity_key":"lx_responsibility_corrections_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"877c47b28a6ae35388c8ecf17f879cdb0e466f63e22990b900acc36ddf1b7336","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/611198c3d00e548aa88cbc41396af0edee8782bb465fa4bd5ca242df2875a9ab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_responsibility_corrections_03 -> audio/generated/de-DE/lexical/611198c3d00e548aa88cbc41396af0edee8782bb465fa4bd5ca242df2875a9ab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('644b2734-c316-51af-b5ac-28a98b675c15', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_responsibility_corrections_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3309d12e62bc3d72821d643c523a75f04a4fbb8a776424040fd097dbe49317d9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('360cd006-4af7-5cbc-80bd-b645d8416501', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('644b2734-c316-51af-b5ac-28a98b675c15', 1), '3309d12e62bc3d72821d643c523a75f04a4fbb8a776424040fd097dbe49317d9',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/611198c3d00e548aa88cbc41396af0edee8782bb465fa4bd5ca242df2875a9ab.mp3', 1201, '2026-09-13 08:47:58.192746', '877c47b28a6ae35388c8ecf17f879cdb0e466f63e22990b900acc36ddf1b7336', 'validated', '{"audio_key":"611198c3d00e548aa88cbc41396af0edee8782bb465fa4bd5ca242df2875a9ab","entity_key":"wf_responsibility_corrections_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"877c47b28a6ae35388c8ecf17f879cdb0e466f63e22990b900acc36ddf1b7336","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/611198c3d00e548aa88cbc41396af0edee8782bb465fa4bd5ca242df2875a9ab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_structured_meetings_01 -> audio/generated/de-DE/lexical/685550f52a080a66cb43dc76069adc22740ce56ffdc2083591c904763d704d01.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('75f878bb-beef-5b67-bbe9-cf5b2c39a984', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_structured_meetings_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2a5b9c60e44364ec6fbca0b02501f106457a2734926ff4418326e8a0c106527d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('45b51d43-b1b6-5944-9ae2-92a0d75743b0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('75f878bb-beef-5b67-bbe9-cf5b2c39a984', 1), '2a5b9c60e44364ec6fbca0b02501f106457a2734926ff4418326e8a0c106527d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/685550f52a080a66cb43dc76069adc22740ce56ffdc2083591c904763d704d01.mp3', 1253, '2026-09-13 07:53:17.803943', '73f9e52cb9992e870c3cc984ba6f841b022831e54282fb615b0cbf71113ad2d9', 'validated', '{"audio_key":"685550f52a080a66cb43dc76069adc22740ce56ffdc2083591c904763d704d01","entity_key":"lx_structured_meetings_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"73f9e52cb9992e870c3cc984ba6f841b022831e54282fb615b0cbf71113ad2d9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/685550f52a080a66cb43dc76069adc22740ce56ffdc2083591c904763d704d01.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_structured_meetings_01 -> audio/generated/de-DE/lexical/685550f52a080a66cb43dc76069adc22740ce56ffdc2083591c904763d704d01.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('beb5ec95-e50d-5af6-93c8-7319238ed0ed', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_structured_meetings_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2a5b9c60e44364ec6fbca0b02501f106457a2734926ff4418326e8a0c106527d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e95748ad-9a0c-5306-a8f9-023541d305a8', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('beb5ec95-e50d-5af6-93c8-7319238ed0ed', 1), '2a5b9c60e44364ec6fbca0b02501f106457a2734926ff4418326e8a0c106527d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/685550f52a080a66cb43dc76069adc22740ce56ffdc2083591c904763d704d01.mp3', 1253, '2026-09-13 07:53:17.803943', '73f9e52cb9992e870c3cc984ba6f841b022831e54282fb615b0cbf71113ad2d9', 'validated', '{"audio_key":"685550f52a080a66cb43dc76069adc22740ce56ffdc2083591c904763d704d01","entity_key":"wf_structured_meetings_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"73f9e52cb9992e870c3cc984ba6f841b022831e54282fb615b0cbf71113ad2d9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/685550f52a080a66cb43dc76069adc22740ce56ffdc2083591c904763d704d01.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_shared_planning_01 -> audio/generated/de-DE/lexical/69821222cfc3750b3209d02263a581405e103646ed3f5d3964a3729a5d0536ab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('10c13afa-5118-5b38-9554-750c7209f78c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_shared_planning_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '17463bd374cae30a025dd0d932835ce8ec352f369c2149bc2547f0147c3e865f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b4080e89-05f4-50ed-ad36-588225f7aca1', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('10c13afa-5118-5b38-9554-750c7209f78c', 1), '17463bd374cae30a025dd0d932835ce8ec352f369c2149bc2547f0147c3e865f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/69821222cfc3750b3209d02263a581405e103646ed3f5d3964a3729a5d0536ab.mp3', 1097, '2026-09-13 08:47:58.653881', 'ba746e33a5495f9974d3f2015bc6b9551264beb5742d1b6f62467003ef9fa21f', 'validated', '{"audio_key":"69821222cfc3750b3209d02263a581405e103646ed3f5d3964a3729a5d0536ab","entity_key":"lx_shared_planning_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ba746e33a5495f9974d3f2015bc6b9551264beb5742d1b6f62467003ef9fa21f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/69821222cfc3750b3209d02263a581405e103646ed3f5d3964a3729a5d0536ab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_shared_planning_01 -> audio/generated/de-DE/lexical/69821222cfc3750b3209d02263a581405e103646ed3f5d3964a3729a5d0536ab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('511f97dc-fa46-52be-99c6-d8d22377d225', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_shared_planning_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '17463bd374cae30a025dd0d932835ce8ec352f369c2149bc2547f0147c3e865f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e8188e93-a415-51a7-a7fa-2c49a38d8a6e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('511f97dc-fa46-52be-99c6-d8d22377d225', 1), '17463bd374cae30a025dd0d932835ce8ec352f369c2149bc2547f0147c3e865f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/69821222cfc3750b3209d02263a581405e103646ed3f5d3964a3729a5d0536ab.mp3', 1097, '2026-09-13 08:47:58.653881', 'ba746e33a5495f9974d3f2015bc6b9551264beb5742d1b6f62467003ef9fa21f', 'validated', '{"audio_key":"69821222cfc3750b3209d02263a581405e103646ed3f5d3964a3729a5d0536ab","entity_key":"wf_shared_planning_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ba746e33a5495f9974d3f2015bc6b9551264beb5742d1b6f62467003ef9fa21f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/69821222cfc3750b3209d02263a581405e103646ed3f5d3964a3729a5d0536ab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_cultural_reviews_03 -> audio/generated/de-DE/lexical/6c1813fb991a2787d8589d8bd5f109524ded55ee9a9e64c8ea5dcb5d7fed65b5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('312c19ff-e840-50c6-9b75-d1cca0c6782d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_cultural_reviews_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '214db645f4dbe6a8b6b90eee1f2fb03c9bea2dcbe63d4fa24df13397bdd82ae7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3559d606-2cce-530d-916d-81fa934912b4', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('312c19ff-e840-50c6-9b75-d1cca0c6782d', 1), '214db645f4dbe6a8b6b90eee1f2fb03c9bea2dcbe63d4fa24df13397bdd82ae7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/6c1813fb991a2787d8589d8bd5f109524ded55ee9a9e64c8ea5dcb5d7fed65b5.mp3', 1018, '2026-09-13 08:47:59.176259', 'b300d0af12f8deb3c00738812e2af4f34e417bec70ad8add7d88255b6f6143b3', 'validated', '{"audio_key":"6c1813fb991a2787d8589d8bd5f109524ded55ee9a9e64c8ea5dcb5d7fed65b5","entity_key":"lx_cultural_reviews_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b300d0af12f8deb3c00738812e2af4f34e417bec70ad8add7d88255b6f6143b3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/6c1813fb991a2787d8589d8bd5f109524ded55ee9a9e64c8ea5dcb5d7fed65b5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_cultural_reviews_03 -> audio/generated/de-DE/lexical/6c1813fb991a2787d8589d8bd5f109524ded55ee9a9e64c8ea5dcb5d7fed65b5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('183ff7e9-f59d-57b9-ac76-03ef848f71fc', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_cultural_reviews_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '214db645f4dbe6a8b6b90eee1f2fb03c9bea2dcbe63d4fa24df13397bdd82ae7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4cab962e-c17b-5ab3-a781-e5a625904321', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('183ff7e9-f59d-57b9-ac76-03ef848f71fc', 1), '214db645f4dbe6a8b6b90eee1f2fb03c9bea2dcbe63d4fa24df13397bdd82ae7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/6c1813fb991a2787d8589d8bd5f109524ded55ee9a9e64c8ea5dcb5d7fed65b5.mp3', 1018, '2026-09-13 08:47:59.176259', 'b300d0af12f8deb3c00738812e2af4f34e417bec70ad8add7d88255b6f6143b3', 'validated', '{"audio_key":"6c1813fb991a2787d8589d8bd5f109524ded55ee9a9e64c8ea5dcb5d7fed65b5","entity_key":"wf_cultural_reviews_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b300d0af12f8deb3c00738812e2af4f34e417bec70ad8add7d88255b6f6143b3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/6c1813fb991a2787d8589d8bd5f109524ded55ee9a9e64c8ea5dcb5d7fed65b5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_responsibility_corrections_05 -> audio/generated/de-DE/lexical/6ddc2581d8288698b5051b6e6a5c6f3e9098b923f93a0ae4c0a654d955590f54.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3120080d-0116-5f3f-99d0-d382f8dd2af2', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_responsibility_corrections_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b4d337a3104150f55450911add6a68849fbdafb7f4126cab7f7fa945e7e3db35'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f91ea6d1-65b1-5cce-8efa-6ea398ab074b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3120080d-0116-5f3f-99d0-d382f8dd2af2', 1), 'b4d337a3104150f55450911add6a68849fbdafb7f4126cab7f7fa945e7e3db35',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/6ddc2581d8288698b5051b6e6a5c6f3e9098b923f93a0ae4c0a654d955590f54.mp3', 1097, '2026-09-13 08:47:59.692915', '4b37885dba19e95f5ae3915f10ac63c11d1392a9bf096c54fa18f5d047956ea3', 'validated', '{"audio_key":"6ddc2581d8288698b5051b6e6a5c6f3e9098b923f93a0ae4c0a654d955590f54","entity_key":"lx_responsibility_corrections_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4b37885dba19e95f5ae3915f10ac63c11d1392a9bf096c54fa18f5d047956ea3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/6ddc2581d8288698b5051b6e6a5c6f3e9098b923f93a0ae4c0a654d955590f54.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_responsibility_corrections_05 -> audio/generated/de-DE/lexical/6ddc2581d8288698b5051b6e6a5c6f3e9098b923f93a0ae4c0a654d955590f54.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8bc1e4c3-b795-583f-86db-7a75a5c8cfbe', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_responsibility_corrections_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b4d337a3104150f55450911add6a68849fbdafb7f4126cab7f7fa945e7e3db35'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('848b97af-5c83-5ffe-91c2-7eb0ee234998', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8bc1e4c3-b795-583f-86db-7a75a5c8cfbe', 1), 'b4d337a3104150f55450911add6a68849fbdafb7f4126cab7f7fa945e7e3db35',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/6ddc2581d8288698b5051b6e6a5c6f3e9098b923f93a0ae4c0a654d955590f54.mp3', 1097, '2026-09-13 08:47:59.692915', '4b37885dba19e95f5ae3915f10ac63c11d1392a9bf096c54fa18f5d047956ea3', 'validated', '{"audio_key":"6ddc2581d8288698b5051b6e6a5c6f3e9098b923f93a0ae4c0a654d955590f54","entity_key":"wf_responsibility_corrections_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4b37885dba19e95f5ae3915f10ac63c11d1392a9bf096c54fa18f5d047956ea3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/6ddc2581d8288698b5051b6e6a5c6f3e9098b923f93a0ae4c0a654d955590f54.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_resource_priorities_04 -> audio/generated/de-DE/lexical/6e70e7eab97d3aebc1c667f44fbab382e237588039fbe599ea7ce238657f2c96.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2205023f-55cd-5c21-91ec-6d474f351eff', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_resource_priorities_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '495c955318824797de62dbc210834e34d0dd7ed6280ae4d52d5342b8c6686bcd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('39574345-edd8-5a7a-9610-27ed213f5249', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2205023f-55cd-5c21-91ec-6d474f351eff', 1), '495c955318824797de62dbc210834e34d0dd7ed6280ae4d52d5342b8c6686bcd',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/6e70e7eab97d3aebc1c667f44fbab382e237588039fbe599ea7ce238657f2c96.mp3', 1097, '2026-09-13 08:48:00.378535', '7562ace5a693055b1b82ab4694d02fa7da43d0d700e35cf3ac817cf8eacf0cbf', 'validated', '{"audio_key":"6e70e7eab97d3aebc1c667f44fbab382e237588039fbe599ea7ce238657f2c96","entity_key":"lx_resource_priorities_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7562ace5a693055b1b82ab4694d02fa7da43d0d700e35cf3ac817cf8eacf0cbf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/6e70e7eab97d3aebc1c667f44fbab382e237588039fbe599ea7ce238657f2c96.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_resource_priorities_04 -> audio/generated/de-DE/lexical/6e70e7eab97d3aebc1c667f44fbab382e237588039fbe599ea7ce238657f2c96.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('26bbda94-bfd8-5352-94fd-ae65c90f9009', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_resource_priorities_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '495c955318824797de62dbc210834e34d0dd7ed6280ae4d52d5342b8c6686bcd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6c236330-208e-579b-9242-aee7a526d684', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('26bbda94-bfd8-5352-94fd-ae65c90f9009', 1), '495c955318824797de62dbc210834e34d0dd7ed6280ae4d52d5342b8c6686bcd',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/6e70e7eab97d3aebc1c667f44fbab382e237588039fbe599ea7ce238657f2c96.mp3', 1097, '2026-09-13 08:48:00.378535', '7562ace5a693055b1b82ab4694d02fa7da43d0d700e35cf3ac817cf8eacf0cbf', 'validated', '{"audio_key":"6e70e7eab97d3aebc1c667f44fbab382e237588039fbe599ea7ce238657f2c96","entity_key":"wf_resource_priorities_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7562ace5a693055b1b82ab4694d02fa7da43d0d700e35cf3ac817cf8eacf0cbf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/6e70e7eab97d3aebc1c667f44fbab382e237588039fbe599ea7ce238657f2c96.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_venue_comparison_04 -> audio/generated/de-DE/lexical/75fbf27c74390e14b00df0b9dc1ccb13a7ce1a6718c3319d7c7675a73a63636d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f74fc191-7e06-5632-8204-233af57e8b2c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_venue_comparison_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'becf4edf1009e2efe1b27d181445078b6f882bca8bc2ed1a5ef179119e33dc2c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('47eb1498-39d2-5441-9b1b-2ecdfbb2ebf4', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f74fc191-7e06-5632-8204-233af57e8b2c', 1), 'becf4edf1009e2efe1b27d181445078b6f882bca8bc2ed1a5ef179119e33dc2c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/75fbf27c74390e14b00df0b9dc1ccb13a7ce1a6718c3319d7c7675a73a63636d.mp3', 1280, '2026-09-13 08:48:00.728122', '4dfa9e283a959428ac5baa5319bc64906cf26683b4f9e63be9878626c1c3ef3e', 'validated', '{"audio_key":"75fbf27c74390e14b00df0b9dc1ccb13a7ce1a6718c3319d7c7675a73a63636d","entity_key":"lx_venue_comparison_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4dfa9e283a959428ac5baa5319bc64906cf26683b4f9e63be9878626c1c3ef3e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/75fbf27c74390e14b00df0b9dc1ccb13a7ce1a6718c3319d7c7675a73a63636d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_venue_comparison_04 -> audio/generated/de-DE/lexical/75fbf27c74390e14b00df0b9dc1ccb13a7ce1a6718c3319d7c7675a73a63636d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e23aba7d-f486-54b8-b4ac-38d539908d05', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_venue_comparison_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'becf4edf1009e2efe1b27d181445078b6f882bca8bc2ed1a5ef179119e33dc2c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0171d4c2-5d50-51c8-a2a5-fbb2ddf49502', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e23aba7d-f486-54b8-b4ac-38d539908d05', 1), 'becf4edf1009e2efe1b27d181445078b6f882bca8bc2ed1a5ef179119e33dc2c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/75fbf27c74390e14b00df0b9dc1ccb13a7ce1a6718c3319d7c7675a73a63636d.mp3', 1280, '2026-09-13 08:48:00.728122', '4dfa9e283a959428ac5baa5319bc64906cf26683b4f9e63be9878626c1c3ef3e', 'validated', '{"audio_key":"75fbf27c74390e14b00df0b9dc1ccb13a7ce1a6718c3319d7c7675a73a63636d","entity_key":"wf_venue_comparison_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4dfa9e283a959428ac5baa5319bc64906cf26683b4f9e63be9878626c1c3ef3e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/75fbf27c74390e14b00df0b9dc1ccb13a7ce1a6718c3319d7c7675a73a63636d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_rules_requirements_04 -> audio/generated/de-DE/lexical/762fc799cd82956785a6e104ebcf65d28cba54a5ad0e2845ac36cef33736a110.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('fa03b8d8-66ef-5f08-8f40-2075f17b5a0d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_rules_requirements_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6cb7c74a5b0ee54df7901aa77a65ab9f216e7737232c9afd622b3d2ecd9d89e6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('76df5c4c-c81f-5d87-b078-9cfeac959abc', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('fa03b8d8-66ef-5f08-8f40-2075f17b5a0d', 1), '6cb7c74a5b0ee54df7901aa77a65ab9f216e7737232c9afd622b3d2ecd9d89e6',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/762fc799cd82956785a6e104ebcf65d28cba54a5ad0e2845ac36cef33736a110.mp3', 1253, '2026-09-13 08:48:01.388368', 'f794532ecf9221cb8795abd694de5ab2a622bbe0a559b1c6f736c53b32c88b58', 'validated', '{"audio_key":"762fc799cd82956785a6e104ebcf65d28cba54a5ad0e2845ac36cef33736a110","entity_key":"lx_rules_requirements_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f794532ecf9221cb8795abd694de5ab2a622bbe0a559b1c6f736c53b32c88b58","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/762fc799cd82956785a6e104ebcf65d28cba54a5ad0e2845ac36cef33736a110.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_rules_requirements_04 -> audio/generated/de-DE/lexical/762fc799cd82956785a6e104ebcf65d28cba54a5ad0e2845ac36cef33736a110.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('46cd7ccf-3c33-5763-befd-460310b83113', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_rules_requirements_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6cb7c74a5b0ee54df7901aa77a65ab9f216e7737232c9afd622b3d2ecd9d89e6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b7f6625d-8b54-5217-b78a-3de7d44e0af2', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('46cd7ccf-3c33-5763-befd-460310b83113', 1), '6cb7c74a5b0ee54df7901aa77a65ab9f216e7737232c9afd622b3d2ecd9d89e6',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/762fc799cd82956785a6e104ebcf65d28cba54a5ad0e2845ac36cef33736a110.mp3', 1253, '2026-09-13 08:48:01.388368', 'f794532ecf9221cb8795abd694de5ab2a622bbe0a559b1c6f736c53b32c88b58', 'validated', '{"audio_key":"762fc799cd82956785a6e104ebcf65d28cba54a5ad0e2845ac36cef33736a110","entity_key":"wf_rules_requirements_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f794532ecf9221cb8795abd694de5ab2a622bbe0a559b1c6f736c53b32c88b58","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/762fc799cd82956785a6e104ebcf65d28cba54a5ad0e2845ac36cef33736a110.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_venue_comparison_02 -> audio/generated/de-DE/lexical/77068780b3bc4c8f1aad9d7e4dd49270d9364751a6839f0c4661e233db425063.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('72f649c2-ac3e-59d7-8353-6cf9a0e03e76', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_venue_comparison_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '97b15223593d89720125d3dc4ada318d8d6804561dad9e80382aa641bd3a4654'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('107bd520-2892-5c2d-9037-18d32dd534d6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('72f649c2-ac3e-59d7-8353-6cf9a0e03e76', 1), '97b15223593d89720125d3dc4ada318d8d6804561dad9e80382aa641bd3a4654',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/77068780b3bc4c8f1aad9d7e4dd49270d9364751a6839f0c4661e233db425063.mp3', 1253, '2026-09-13 08:32:30.316563', 'aabc2b47d952667a7df01cad85c1ccaf955c1e1c826eddf436b64a0981536b45', 'validated', '{"audio_key":"77068780b3bc4c8f1aad9d7e4dd49270d9364751a6839f0c4661e233db425063","entity_key":"lx_venue_comparison_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"aabc2b47d952667a7df01cad85c1ccaf955c1e1c826eddf436b64a0981536b45","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/77068780b3bc4c8f1aad9d7e4dd49270d9364751a6839f0c4661e233db425063.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_venue_comparison_02 -> audio/generated/de-DE/lexical/77068780b3bc4c8f1aad9d7e4dd49270d9364751a6839f0c4661e233db425063.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1ba67caf-50c1-5628-8337-bddd3e0f49d0', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_venue_comparison_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '97b15223593d89720125d3dc4ada318d8d6804561dad9e80382aa641bd3a4654'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3edfd708-2556-5c79-bf0c-64b066c9f924', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1ba67caf-50c1-5628-8337-bddd3e0f49d0', 1), '97b15223593d89720125d3dc4ada318d8d6804561dad9e80382aa641bd3a4654',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/77068780b3bc4c8f1aad9d7e4dd49270d9364751a6839f0c4661e233db425063.mp3', 1253, '2026-09-13 08:32:30.316563', 'aabc2b47d952667a7df01cad85c1ccaf955c1e1c826eddf436b64a0981536b45', 'validated', '{"audio_key":"77068780b3bc4c8f1aad9d7e4dd49270d9364751a6839f0c4661e233db425063","entity_key":"wf_venue_comparison_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"aabc2b47d952667a7df01cad85c1ccaf955c1e1c826eddf436b64a0981536b45","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/77068780b3bc4c8f1aad9d7e4dd49270d9364751a6839f0c4661e233db425063.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_rules_requirements_06 -> audio/generated/de-DE/lexical/7b29ffc2b8806b581bee84168d75b420cc890a1968ba571520ddd183f35c0c0a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('02119228-1f23-5439-916d-bb17852aab55', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_rules_requirements_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '88f1b9555864d6b30b444277c2905aa5ee68a812cfa1937ccd718e094336d68b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8136e613-5df0-527b-ae0c-229f283a4409', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('02119228-1f23-5439-916d-bb17852aab55', 1), '88f1b9555864d6b30b444277c2905aa5ee68a812cfa1937ccd718e094336d68b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7b29ffc2b8806b581bee84168d75b420cc890a1968ba571520ddd183f35c0c0a.mp3', 1332, '2026-09-13 06:17:34.057551', '6241bc03d1f54abf4eec43d5e817a4f57f4c05a907442bcf8950c2b6a8c12c67', 'validated', '{"audio_key":"7b29ffc2b8806b581bee84168d75b420cc890a1968ba571520ddd183f35c0c0a","entity_key":"lx_rules_requirements_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6241bc03d1f54abf4eec43d5e817a4f57f4c05a907442bcf8950c2b6a8c12c67","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7b29ffc2b8806b581bee84168d75b420cc890a1968ba571520ddd183f35c0c0a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_rules_requirements_06 -> audio/generated/de-DE/lexical/7b29ffc2b8806b581bee84168d75b420cc890a1968ba571520ddd183f35c0c0a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6b97428c-e0cf-5d19-af1c-8d0a21b46819', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_rules_requirements_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '88f1b9555864d6b30b444277c2905aa5ee68a812cfa1937ccd718e094336d68b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d5502167-806a-55c4-bbf1-11611308a665', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6b97428c-e0cf-5d19-af1c-8d0a21b46819', 1), '88f1b9555864d6b30b444277c2905aa5ee68a812cfa1937ccd718e094336d68b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7b29ffc2b8806b581bee84168d75b420cc890a1968ba571520ddd183f35c0c0a.mp3', 1332, '2026-09-13 06:17:34.057551', '6241bc03d1f54abf4eec43d5e817a4f57f4c05a907442bcf8950c2b6a8c12c67', 'validated', '{"audio_key":"7b29ffc2b8806b581bee84168d75b420cc890a1968ba571520ddd183f35c0c0a","entity_key":"wf_rules_requirements_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6241bc03d1f54abf4eec43d5e817a4f57f4c05a907442bcf8950c2b6a8c12c67","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7b29ffc2b8806b581bee84168d75b420cc890a1968ba571520ddd183f35c0c0a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_experience_reflection_06 -> audio/generated/de-DE/lexical/7e9b2bff67f0228ced776966ff437cc1da1eb90578bc3b94691bbbbf752fc6b2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('eba5a61e-da41-5b7a-8de6-3724c83cd7de', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_experience_reflection_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bc7bf956244d6a35a18e1aaf205d5a9e94ec878d2c71f26eb49ca86cb0d4e381'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('48086a04-3fb6-56d7-90e3-3d4916b1abaa', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('eba5a61e-da41-5b7a-8de6-3724c83cd7de', 1), 'bc7bf956244d6a35a18e1aaf205d5a9e94ec878d2c71f26eb49ca86cb0d4e381',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7e9b2bff67f0228ced776966ff437cc1da1eb90578bc3b94691bbbbf752fc6b2.mp3', 1280, '2026-09-13 08:48:01.727802', '7918ce5f440bd9501564d86fbbb29309e237bedb3aea3b70a646e4ff2e533ea8', 'validated', '{"audio_key":"7e9b2bff67f0228ced776966ff437cc1da1eb90578bc3b94691bbbbf752fc6b2","entity_key":"lx_experience_reflection_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7918ce5f440bd9501564d86fbbb29309e237bedb3aea3b70a646e4ff2e533ea8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7e9b2bff67f0228ced776966ff437cc1da1eb90578bc3b94691bbbbf752fc6b2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_experience_reflection_06 -> audio/generated/de-DE/lexical/7e9b2bff67f0228ced776966ff437cc1da1eb90578bc3b94691bbbbf752fc6b2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c3b2bf73-2f74-5d23-9fdd-943ed7227f10', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_experience_reflection_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bc7bf956244d6a35a18e1aaf205d5a9e94ec878d2c71f26eb49ca86cb0d4e381'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bf1fe8d3-3a60-5a7a-969e-11c0f07fb890', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c3b2bf73-2f74-5d23-9fdd-943ed7227f10', 1), 'bc7bf956244d6a35a18e1aaf205d5a9e94ec878d2c71f26eb49ca86cb0d4e381',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7e9b2bff67f0228ced776966ff437cc1da1eb90578bc3b94691bbbbf752fc6b2.mp3', 1280, '2026-09-13 08:48:01.727802', '7918ce5f440bd9501564d86fbbb29309e237bedb3aea3b70a646e4ff2e533ea8', 'validated', '{"audio_key":"7e9b2bff67f0228ced776966ff437cc1da1eb90578bc3b94691bbbbf752fc6b2","entity_key":"wf_experience_reflection_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7918ce5f440bd9501564d86fbbb29309e237bedb3aea3b70a646e4ff2e533ea8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7e9b2bff67f0228ced776966ff437cc1da1eb90578bc3b94691bbbbf752fc6b2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_experience_reflection_02 -> audio/generated/de-DE/lexical/88f557e867ada0a650a49cf36532895a7416af843081ceb824d9bd858b308453.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2c24d82b-9bf4-5a51-9d94-522a82498ad3', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_experience_reflection_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5fd70311d1c0f57d206b643ecab4de1560fdddac3b190cf686214e5b0d8469fa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('efd2d73b-f38e-5d20-959f-afd29445e1fd', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2c24d82b-9bf4-5a51-9d94-522a82498ad3', 1), '5fd70311d1c0f57d206b643ecab4de1560fdddac3b190cf686214e5b0d8469fa',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/88f557e867ada0a650a49cf36532895a7416af843081ceb824d9bd858b308453.mp3', 1018, '2026-09-13 08:48:02.376473', '0d15f0675f56cb765372bab7b263688180e8b1f73285fcb99b8c4f021d664517', 'validated', '{"audio_key":"88f557e867ada0a650a49cf36532895a7416af843081ceb824d9bd858b308453","entity_key":"lx_experience_reflection_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0d15f0675f56cb765372bab7b263688180e8b1f73285fcb99b8c4f021d664517","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/88f557e867ada0a650a49cf36532895a7416af843081ceb824d9bd858b308453.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_experience_reflection_02 -> audio/generated/de-DE/lexical/88f557e867ada0a650a49cf36532895a7416af843081ceb824d9bd858b308453.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4eb53d87-579f-5832-8b96-6fa46c629e7a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_experience_reflection_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5fd70311d1c0f57d206b643ecab4de1560fdddac3b190cf686214e5b0d8469fa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3d2bc4c1-297e-586f-b236-9457d8cfa098', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4eb53d87-579f-5832-8b96-6fa46c629e7a', 1), '5fd70311d1c0f57d206b643ecab4de1560fdddac3b190cf686214e5b0d8469fa',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/88f557e867ada0a650a49cf36532895a7416af843081ceb824d9bd858b308453.mp3', 1018, '2026-09-13 08:48:02.376473', '0d15f0675f56cb765372bab7b263688180e8b1f73285fcb99b8c4f021d664517', 'validated', '{"audio_key":"88f557e867ada0a650a49cf36532895a7416af843081ceb824d9bd858b308453","entity_key":"wf_experience_reflection_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0d15f0675f56cb765372bab7b263688180e8b1f73285fcb99b8c4f021d664517","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/88f557e867ada0a650a49cf36532895a7416af843081ceb824d9bd858b308453.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_rules_requirements_01 -> audio/generated/de-DE/lexical/973c66fec296710c3bb9627928272e5a6567ac21fcc1e899e35c202e519ba2ae.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0c2960b6-d5c5-5939-9b33-2020d30fe8af', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_rules_requirements_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ce430944a1c5f9036b94e2de97dbf10a299039d4e59c1ca8066f7ea4b117a4f4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('68cc0714-06e9-5d74-9697-84a8d74ee5f5', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0c2960b6-d5c5-5939-9b33-2020d30fe8af', 1), 'ce430944a1c5f9036b94e2de97dbf10a299039d4e59c1ca8066f7ea4b117a4f4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/973c66fec296710c3bb9627928272e5a6567ac21fcc1e899e35c202e519ba2ae.mp3', 1071, '2026-09-13 08:48:02.718181', 'f0f0b387b4116118cbbf2070960d7989a3bbd604989a66a213f37fe952b8bb12', 'validated', '{"audio_key":"973c66fec296710c3bb9627928272e5a6567ac21fcc1e899e35c202e519ba2ae","entity_key":"lx_rules_requirements_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f0f0b387b4116118cbbf2070960d7989a3bbd604989a66a213f37fe952b8bb12","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/973c66fec296710c3bb9627928272e5a6567ac21fcc1e899e35c202e519ba2ae.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_rules_requirements_01 -> audio/generated/de-DE/lexical/973c66fec296710c3bb9627928272e5a6567ac21fcc1e899e35c202e519ba2ae.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('fc269c17-3126-565b-b6dd-f6d753b99563', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_rules_requirements_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ce430944a1c5f9036b94e2de97dbf10a299039d4e59c1ca8066f7ea4b117a4f4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2faaf7f9-9fe3-5a5e-92fb-bd63296e0536', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('fc269c17-3126-565b-b6dd-f6d753b99563', 1), 'ce430944a1c5f9036b94e2de97dbf10a299039d4e59c1ca8066f7ea4b117a4f4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/973c66fec296710c3bb9627928272e5a6567ac21fcc1e899e35c202e519ba2ae.mp3', 1071, '2026-09-13 08:48:02.718181', 'f0f0b387b4116118cbbf2070960d7989a3bbd604989a66a213f37fe952b8bb12', 'validated', '{"audio_key":"973c66fec296710c3bb9627928272e5a6567ac21fcc1e899e35c202e519ba2ae","entity_key":"wf_rules_requirements_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f0f0b387b4116118cbbf2070960d7989a3bbd604989a66a213f37fe952b8bb12","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/973c66fec296710c3bb9627928272e5a6567ac21fcc1e899e35c202e519ba2ae.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_rules_requirements_05 -> audio/generated/de-DE/lexical/a11bebcb7ae725cee292198830a6ea29c0563f1db664a3ba4bc8e681ba31d4aa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8a797cc7-d5f3-5a65-bbd5-5e4ffe46fa18', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_rules_requirements_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0b1d78ef51025b5982daf513011eec76ccacbf6c4b824c3d68f4aa9228b8b4f8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('652e2e04-8bd7-52e7-a4c0-9e5ebb9b79dd', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8a797cc7-d5f3-5a65-bbd5-5e4ffe46fa18', 1), '0b1d78ef51025b5982daf513011eec76ccacbf6c4b824c3d68f4aa9228b8b4f8',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a11bebcb7ae725cee292198830a6ea29c0563f1db664a3ba4bc8e681ba31d4aa.mp3', 1071, '2026-09-13 08:48:03.370338', '20b74a359d4d8e39c806e4da24eba888ab958bf9ff932581c30196bae624fda7', 'validated', '{"audio_key":"a11bebcb7ae725cee292198830a6ea29c0563f1db664a3ba4bc8e681ba31d4aa","entity_key":"lx_rules_requirements_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"20b74a359d4d8e39c806e4da24eba888ab958bf9ff932581c30196bae624fda7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a11bebcb7ae725cee292198830a6ea29c0563f1db664a3ba4bc8e681ba31d4aa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_rules_requirements_05 -> audio/generated/de-DE/lexical/a11bebcb7ae725cee292198830a6ea29c0563f1db664a3ba4bc8e681ba31d4aa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c105f4f5-182b-5def-834d-39efea3f0fea', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_rules_requirements_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0b1d78ef51025b5982daf513011eec76ccacbf6c4b824c3d68f4aa9228b8b4f8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dba2bcb9-dbfe-5f1f-9aba-170de7c4042d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c105f4f5-182b-5def-834d-39efea3f0fea', 1), '0b1d78ef51025b5982daf513011eec76ccacbf6c4b824c3d68f4aa9228b8b4f8',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a11bebcb7ae725cee292198830a6ea29c0563f1db664a3ba4bc8e681ba31d4aa.mp3', 1071, '2026-09-13 08:48:03.370338', '20b74a359d4d8e39c806e4da24eba888ab958bf9ff932581c30196bae624fda7', 'validated', '{"audio_key":"a11bebcb7ae725cee292198830a6ea29c0563f1db664a3ba4bc8e681ba31d4aa","entity_key":"wf_rules_requirements_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"20b74a359d4d8e39c806e4da24eba888ab958bf9ff932581c30196bae624fda7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a11bebcb7ae725cee292198830a6ea29c0563f1db664a3ba4bc8e681ba31d4aa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_learning_goals_06 -> audio/generated/de-DE/lexical/a38434f79a1076cefd2fe7982cfd8a91da5c0d66612b14b3d47bb9eb4065de08.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2e7cd3c5-a119-55bf-9c37-8c6f89009e87', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_learning_goals_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9c7e051fdab5ce509712cf31805708e30d168c3948a737cf121ec451846715e5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2abbd542-5b7a-5502-82e9-c0adec735768', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2e7cd3c5-a119-55bf-9c37-8c6f89009e87', 1), '9c7e051fdab5ce509712cf31805708e30d168c3948a737cf121ec451846715e5',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a38434f79a1076cefd2fe7982cfd8a91da5c0d66612b14b3d47bb9eb4065de08.mp3', 1201, '2026-09-13 06:59:32.737181', '4a2e63e789fdb5b5b077b384b7175cc8633ce7c11eb1fce1e531a093e8fb8040', 'validated', '{"audio_key":"a38434f79a1076cefd2fe7982cfd8a91da5c0d66612b14b3d47bb9eb4065de08","entity_key":"lx_learning_goals_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4a2e63e789fdb5b5b077b384b7175cc8633ce7c11eb1fce1e531a093e8fb8040","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a38434f79a1076cefd2fe7982cfd8a91da5c0d66612b14b3d47bb9eb4065de08.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_learning_goals_06 -> audio/generated/de-DE/lexical/a38434f79a1076cefd2fe7982cfd8a91da5c0d66612b14b3d47bb9eb4065de08.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('02e59f43-609d-5c1a-a860-244763d6122e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_learning_goals_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9c7e051fdab5ce509712cf31805708e30d168c3948a737cf121ec451846715e5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a4852f6e-fa94-5f62-a28b-f926aacf957a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('02e59f43-609d-5c1a-a860-244763d6122e', 1), '9c7e051fdab5ce509712cf31805708e30d168c3948a737cf121ec451846715e5',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a38434f79a1076cefd2fe7982cfd8a91da5c0d66612b14b3d47bb9eb4065de08.mp3', 1201, '2026-09-13 06:59:32.737181', '4a2e63e789fdb5b5b077b384b7175cc8633ce7c11eb1fce1e531a093e8fb8040', 'validated', '{"audio_key":"a38434f79a1076cefd2fe7982cfd8a91da5c0d66612b14b3d47bb9eb4065de08","entity_key":"wf_learning_goals_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4a2e63e789fdb5b5b077b384b7175cc8633ce7c11eb1fce1e531a093e8fb8040","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a38434f79a1076cefd2fe7982cfd8a91da5c0d66612b14b3d47bb9eb4065de08.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_learning_goals_03 -> audio/generated/de-DE/lexical/a535aaa4042bc240c121e4b61366bf9a34658b96b04b2759528bbc01762b2cb7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c534a653-6423-5c48-bbd4-31e238ae9c90', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_learning_goals_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dbe5f9bf8c4010e5ea7b27ba555b49dd50de945fb3a98586ee80bec37d443e3f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('592ddea1-b03a-59d0-9b1e-a4a054145b4d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c534a653-6423-5c48-bbd4-31e238ae9c90', 1), 'dbe5f9bf8c4010e5ea7b27ba555b49dd50de945fb3a98586ee80bec37d443e3f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a535aaa4042bc240c121e4b61366bf9a34658b96b04b2759528bbc01762b2cb7.mp3', 1149, '2026-09-13 08:32:32.825276', 'cacd23065c0c36855265454020d126532ba9a414661c06cb77f6f8c4e9dd2971', 'validated', '{"audio_key":"a535aaa4042bc240c121e4b61366bf9a34658b96b04b2759528bbc01762b2cb7","entity_key":"lx_learning_goals_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cacd23065c0c36855265454020d126532ba9a414661c06cb77f6f8c4e9dd2971","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a535aaa4042bc240c121e4b61366bf9a34658b96b04b2759528bbc01762b2cb7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_learning_goals_03 -> audio/generated/de-DE/lexical/a535aaa4042bc240c121e4b61366bf9a34658b96b04b2759528bbc01762b2cb7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('56ee8d4c-d986-5a50-b57e-f580be16ee25', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_learning_goals_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dbe5f9bf8c4010e5ea7b27ba555b49dd50de945fb3a98586ee80bec37d443e3f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ae7db777-e1a4-53b4-a083-5de34059c1f3', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('56ee8d4c-d986-5a50-b57e-f580be16ee25', 1), 'dbe5f9bf8c4010e5ea7b27ba555b49dd50de945fb3a98586ee80bec37d443e3f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a535aaa4042bc240c121e4b61366bf9a34658b96b04b2759528bbc01762b2cb7.mp3', 1149, '2026-09-13 08:32:32.825276', 'cacd23065c0c36855265454020d126532ba9a414661c06cb77f6f8c4e9dd2971', 'validated', '{"audio_key":"a535aaa4042bc240c121e4b61366bf9a34658b96b04b2759528bbc01762b2cb7","entity_key":"wf_learning_goals_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cacd23065c0c36855265454020d126532ba9a414661c06cb77f6f8c4e9dd2971","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a535aaa4042bc240c121e4b61366bf9a34658b96b04b2759528bbc01762b2cb7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_cultural_reviews_01 -> audio/generated/de-DE/lexical/a8cf16806fd60e9051a7930674174a19dedd4ec917360fd9587adc9ccdd9641f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('661d9149-dc03-50c7-8b56-32f2de9c43c7', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_cultural_reviews_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '163b9cc3d05f8b4bec6781f8f0b40ded0474d12a99cbee5b397d1e8c72836ab9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('36873026-98be-539d-a9d9-015987d4c4d0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('661d9149-dc03-50c7-8b56-32f2de9c43c7', 1), '163b9cc3d05f8b4bec6781f8f0b40ded0474d12a99cbee5b397d1e8c72836ab9',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a8cf16806fd60e9051a7930674174a19dedd4ec917360fd9587adc9ccdd9641f.mp3', 914, '2026-09-13 08:16:42.850632', 'ab35a1b8e7c6df643214074145392bdee5dd30b09ee3f2013f6ed489a4a63fe2', 'validated', '{"audio_key":"a8cf16806fd60e9051a7930674174a19dedd4ec917360fd9587adc9ccdd9641f","entity_key":"lx_cultural_reviews_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ab35a1b8e7c6df643214074145392bdee5dd30b09ee3f2013f6ed489a4a63fe2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a8cf16806fd60e9051a7930674174a19dedd4ec917360fd9587adc9ccdd9641f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_cultural_reviews_01 -> audio/generated/de-DE/lexical/a8cf16806fd60e9051a7930674174a19dedd4ec917360fd9587adc9ccdd9641f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5820d833-e7f1-56af-8867-e5576eedf6f2', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_cultural_reviews_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '163b9cc3d05f8b4bec6781f8f0b40ded0474d12a99cbee5b397d1e8c72836ab9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('66f3ef3b-664f-5a29-9600-def058274d5f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5820d833-e7f1-56af-8867-e5576eedf6f2', 1), '163b9cc3d05f8b4bec6781f8f0b40ded0474d12a99cbee5b397d1e8c72836ab9',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a8cf16806fd60e9051a7930674174a19dedd4ec917360fd9587adc9ccdd9641f.mp3', 914, '2026-09-13 08:16:42.850632', 'ab35a1b8e7c6df643214074145392bdee5dd30b09ee3f2013f6ed489a4a63fe2', 'validated', '{"audio_key":"a8cf16806fd60e9051a7930674174a19dedd4ec917360fd9587adc9ccdd9641f","entity_key":"wf_cultural_reviews_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ab35a1b8e7c6df643214074145392bdee5dd30b09ee3f2013f6ed489a4a63fe2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a8cf16806fd60e9051a7930674174a19dedd4ec917360fd9587adc9ccdd9641f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_venue_comparison_03 -> audio/generated/de-DE/lexical/b39680b64f0bdc4a09fd91978ca57e89881fa3658596785f8668914e5e440e55.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8a67a6c4-5231-5a19-ab65-894c65573f2c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_venue_comparison_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c45a0ad00340cba8c6e4ac06873f3ac1e5571dcb67bdd548ca3a4be575f929e7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7f4f1fcf-b399-5c2f-88f6-89a482f9b8d9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8a67a6c4-5231-5a19-ab65-894c65573f2c', 1), 'c45a0ad00340cba8c6e4ac06873f3ac1e5571dcb67bdd548ca3a4be575f929e7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b39680b64f0bdc4a09fd91978ca57e89881fa3658596785f8668914e5e440e55.mp3', 1071, '2026-09-13 08:32:34.110616', '555a04a9bcf3e46086a6e9c3582e76462459fb73207f158f95164340497f16bf', 'validated', '{"audio_key":"b39680b64f0bdc4a09fd91978ca57e89881fa3658596785f8668914e5e440e55","entity_key":"lx_venue_comparison_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"555a04a9bcf3e46086a6e9c3582e76462459fb73207f158f95164340497f16bf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b39680b64f0bdc4a09fd91978ca57e89881fa3658596785f8668914e5e440e55.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_venue_comparison_03 -> audio/generated/de-DE/lexical/b39680b64f0bdc4a09fd91978ca57e89881fa3658596785f8668914e5e440e55.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4b87d497-c951-5cfd-82df-5a4f1ddbb54a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_venue_comparison_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c45a0ad00340cba8c6e4ac06873f3ac1e5571dcb67bdd548ca3a4be575f929e7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5c5c2283-75da-51eb-9be5-674e8571e7bb', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4b87d497-c951-5cfd-82df-5a4f1ddbb54a', 1), 'c45a0ad00340cba8c6e4ac06873f3ac1e5571dcb67bdd548ca3a4be575f929e7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b39680b64f0bdc4a09fd91978ca57e89881fa3658596785f8668914e5e440e55.mp3', 1071, '2026-09-13 08:32:34.110616', '555a04a9bcf3e46086a6e9c3582e76462459fb73207f158f95164340497f16bf', 'validated', '{"audio_key":"b39680b64f0bdc4a09fd91978ca57e89881fa3658596785f8668914e5e440e55","entity_key":"wf_venue_comparison_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"555a04a9bcf3e46086a6e9c3582e76462459fb73207f158f95164340497f16bf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b39680b64f0bdc4a09fd91978ca57e89881fa3658596785f8668914e5e440e55.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_rules_requirements_03 -> audio/generated/de-DE/lexical/b6ba3f0e105f5ea9e9430f2919c037be69b6f938ca087262d09ec5b154466471.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b78d4dde-a70c-52a8-b3ee-ef44321ff3cf', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_rules_requirements_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9507b5036d6cba613d64ebd9fbb37d2ea7f9461630a4c96509308e1c0dd4f5eb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('32476ffe-c8c1-5cc7-a9d2-1ec1ac039d37', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b78d4dde-a70c-52a8-b3ee-ef44321ff3cf', 1), '9507b5036d6cba613d64ebd9fbb37d2ea7f9461630a4c96509308e1c0dd4f5eb',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b6ba3f0e105f5ea9e9430f2919c037be69b6f938ca087262d09ec5b154466471.mp3', 1071, '2026-09-13 08:48:03.745620', '684ad3de06be51a124a532067ef58b47f733d3eb6cfcf7c5643758e18d92aa78', 'validated', '{"audio_key":"b6ba3f0e105f5ea9e9430f2919c037be69b6f938ca087262d09ec5b154466471","entity_key":"lx_rules_requirements_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"684ad3de06be51a124a532067ef58b47f733d3eb6cfcf7c5643758e18d92aa78","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b6ba3f0e105f5ea9e9430f2919c037be69b6f938ca087262d09ec5b154466471.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_rules_requirements_03 -> audio/generated/de-DE/lexical/b6ba3f0e105f5ea9e9430f2919c037be69b6f938ca087262d09ec5b154466471.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0db3332b-7186-5845-a440-e89206749b5f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_rules_requirements_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9507b5036d6cba613d64ebd9fbb37d2ea7f9461630a4c96509308e1c0dd4f5eb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bbc07d4c-2f22-58e4-af17-6ada95cae3b3', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0db3332b-7186-5845-a440-e89206749b5f', 1), '9507b5036d6cba613d64ebd9fbb37d2ea7f9461630a4c96509308e1c0dd4f5eb',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b6ba3f0e105f5ea9e9430f2919c037be69b6f938ca087262d09ec5b154466471.mp3', 1071, '2026-09-13 08:48:03.745620', '684ad3de06be51a124a532067ef58b47f733d3eb6cfcf7c5643758e18d92aa78', 'validated', '{"audio_key":"b6ba3f0e105f5ea9e9430f2919c037be69b6f938ca087262d09ec5b154466471","entity_key":"wf_rules_requirements_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"684ad3de06be51a124a532067ef58b47f733d3eb6cfcf7c5643758e18d92aa78","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b6ba3f0e105f5ea9e9430f2919c037be69b6f938ca087262d09ec5b154466471.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_project_documentation_03 -> audio/generated/de-DE/lexical/b6bd7f9e8725f2abffe90ea51e2d3d0e9f1b71686aee903a88f13d2c5dee93e1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8f36ae77-cd95-5921-85c2-247aa16e1052', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_project_documentation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '84b5bbbb43d143e6c057d492c920a2cce5fb810899065193ba5b46fdb80a97de'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b91b2c85-aeb2-5fc7-9977-cfb89a0ba76a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8f36ae77-cd95-5921-85c2-247aa16e1052', 1), '84b5bbbb43d143e6c057d492c920a2cce5fb810899065193ba5b46fdb80a97de',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b6bd7f9e8725f2abffe90ea51e2d3d0e9f1b71686aee903a88f13d2c5dee93e1.mp3', 1018, '2026-09-13 06:17:40.823775', '8c2e1aff18a67d72ba8fd668e12c1b893cdd9bba6c33a2a2d81b0d61a0b35f39', 'validated', '{"audio_key":"b6bd7f9e8725f2abffe90ea51e2d3d0e9f1b71686aee903a88f13d2c5dee93e1","entity_key":"lx_project_documentation_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8c2e1aff18a67d72ba8fd668e12c1b893cdd9bba6c33a2a2d81b0d61a0b35f39","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b6bd7f9e8725f2abffe90ea51e2d3d0e9f1b71686aee903a88f13d2c5dee93e1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_project_documentation_03 -> audio/generated/de-DE/lexical/b6bd7f9e8725f2abffe90ea51e2d3d0e9f1b71686aee903a88f13d2c5dee93e1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f727c41e-27e6-5def-9630-1265139299b2', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_project_documentation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '84b5bbbb43d143e6c057d492c920a2cce5fb810899065193ba5b46fdb80a97de'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1902ca08-0706-5d95-9d34-d55346e452d8', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f727c41e-27e6-5def-9630-1265139299b2', 1), '84b5bbbb43d143e6c057d492c920a2cce5fb810899065193ba5b46fdb80a97de',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b6bd7f9e8725f2abffe90ea51e2d3d0e9f1b71686aee903a88f13d2c5dee93e1.mp3', 1018, '2026-09-13 06:17:40.823775', '8c2e1aff18a67d72ba8fd668e12c1b893cdd9bba6c33a2a2d81b0d61a0b35f39', 'validated', '{"audio_key":"b6bd7f9e8725f2abffe90ea51e2d3d0e9f1b71686aee903a88f13d2c5dee93e1","entity_key":"wf_project_documentation_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8c2e1aff18a67d72ba8fd668e12c1b893cdd9bba6c33a2a2d81b0d61a0b35f39","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b6bd7f9e8725f2abffe90ea51e2d3d0e9f1b71686aee903a88f13d2c5dee93e1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_shared_planning_04 -> audio/generated/de-DE/lexical/c2d9bbf338d2084aba59feef406a4177add6d244095726d100598d384c620d74.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b144678e-67be-5790-9dca-e66ac9acce6a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_shared_planning_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bd05399286fe4fce01585a0f94e13a644cd2d014e735402f35499760a604d26d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6d25d341-8a5e-5f95-96ce-1f62664055b8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b144678e-67be-5790-9dca-e66ac9acce6a', 1), 'bd05399286fe4fce01585a0f94e13a644cd2d014e735402f35499760a604d26d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c2d9bbf338d2084aba59feef406a4177add6d244095726d100598d384c620d74.mp3', 966, '2026-09-13 06:43:11.391768', 'f26bf6b4db7db1470f9b80f9520ce6d3fa87ba446541919c37c0106e99a2f08d', 'validated', '{"audio_key":"c2d9bbf338d2084aba59feef406a4177add6d244095726d100598d384c620d74","entity_key":"lx_shared_planning_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f26bf6b4db7db1470f9b80f9520ce6d3fa87ba446541919c37c0106e99a2f08d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c2d9bbf338d2084aba59feef406a4177add6d244095726d100598d384c620d74.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_shared_planning_04 -> audio/generated/de-DE/lexical/c2d9bbf338d2084aba59feef406a4177add6d244095726d100598d384c620d74.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('25d70c7d-c59c-5891-b370-8f934444c7b7', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_shared_planning_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bd05399286fe4fce01585a0f94e13a644cd2d014e735402f35499760a604d26d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d6b8583f-46b6-5d76-95d7-17e540b6fc64', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('25d70c7d-c59c-5891-b370-8f934444c7b7', 1), 'bd05399286fe4fce01585a0f94e13a644cd2d014e735402f35499760a604d26d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c2d9bbf338d2084aba59feef406a4177add6d244095726d100598d384c620d74.mp3', 966, '2026-09-13 06:43:11.391768', 'f26bf6b4db7db1470f9b80f9520ce6d3fa87ba446541919c37c0106e99a2f08d', 'validated', '{"audio_key":"c2d9bbf338d2084aba59feef406a4177add6d244095726d100598d384c620d74","entity_key":"wf_shared_planning_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f26bf6b4db7db1470f9b80f9520ce6d3fa87ba446541919c37c0106e99a2f08d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c2d9bbf338d2084aba59feef406a4177add6d244095726d100598d384c620d74.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_resource_priorities_01 -> audio/generated/de-DE/lexical/c65bf6c817116bdaf41c72f0735880a08806aca16bf0745adc99cab6d33c5cb4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9a2abdd8-863f-5d0b-881a-cd4e09dc2646', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_resource_priorities_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5b93c6897c0e63aa5f81c752e6bbdc82d1725fb5d494c716c188fadcd7b1a8cc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('02b5f369-083e-5dd7-87fe-bf4b98f8726a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9a2abdd8-863f-5d0b-881a-cd4e09dc2646', 1), '5b93c6897c0e63aa5f81c752e6bbdc82d1725fb5d494c716c188fadcd7b1a8cc',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c65bf6c817116bdaf41c72f0735880a08806aca16bf0745adc99cab6d33c5cb4.mp3', 1253, '2026-09-13 08:48:04.737567', 'd0c373b4c8d4cbc251aa3c82160a7c5ef0aae46747f1de0732aa2cb87efd07ac', 'validated', '{"audio_key":"c65bf6c817116bdaf41c72f0735880a08806aca16bf0745adc99cab6d33c5cb4","entity_key":"lx_resource_priorities_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d0c373b4c8d4cbc251aa3c82160a7c5ef0aae46747f1de0732aa2cb87efd07ac","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c65bf6c817116bdaf41c72f0735880a08806aca16bf0745adc99cab6d33c5cb4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_resource_priorities_01 -> audio/generated/de-DE/lexical/c65bf6c817116bdaf41c72f0735880a08806aca16bf0745adc99cab6d33c5cb4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2bde10a2-fab7-5168-9b32-8026a57b5535', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_resource_priorities_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5b93c6897c0e63aa5f81c752e6bbdc82d1725fb5d494c716c188fadcd7b1a8cc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c4484277-3968-5763-a9ee-24fe17374a25', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2bde10a2-fab7-5168-9b32-8026a57b5535', 1), '5b93c6897c0e63aa5f81c752e6bbdc82d1725fb5d494c716c188fadcd7b1a8cc',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c65bf6c817116bdaf41c72f0735880a08806aca16bf0745adc99cab6d33c5cb4.mp3', 1253, '2026-09-13 08:48:04.737567', 'd0c373b4c8d4cbc251aa3c82160a7c5ef0aae46747f1de0732aa2cb87efd07ac', 'validated', '{"audio_key":"c65bf6c817116bdaf41c72f0735880a08806aca16bf0745adc99cab6d33c5cb4","entity_key":"wf_resource_priorities_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d0c373b4c8d4cbc251aa3c82160a7c5ef0aae46747f1de0732aa2cb87efd07ac","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c65bf6c817116bdaf41c72f0735880a08806aca16bf0745adc99cab6d33c5cb4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_project_documentation_01 -> audio/generated/de-DE/lexical/c7fd7d5581b3d1f84bfc2a2176d2318edba4fee9a8e199c0922c6f2e57dfc8fe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5001b9de-d80b-5798-bac1-3be2e2a6c691', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_project_documentation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9ac2f1ee9eee4900105f357cb4a55d8167d510bf91ed4278a60ea5263132274c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2a27fd80-7723-5a88-a3d1-7d39155a9fce', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5001b9de-d80b-5798-bac1-3be2e2a6c691', 1), '9ac2f1ee9eee4900105f357cb4a55d8167d510bf91ed4278a60ea5263132274c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c7fd7d5581b3d1f84bfc2a2176d2318edba4fee9a8e199c0922c6f2e57dfc8fe.mp3', 1253, '2026-09-13 08:48:04.750996', '220e609601a23eee73fa9772c56793208442bfb9c55bf19bdb4ce0bdcc5e8c8a', 'validated', '{"audio_key":"c7fd7d5581b3d1f84bfc2a2176d2318edba4fee9a8e199c0922c6f2e57dfc8fe","entity_key":"lx_project_documentation_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"220e609601a23eee73fa9772c56793208442bfb9c55bf19bdb4ce0bdcc5e8c8a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c7fd7d5581b3d1f84bfc2a2176d2318edba4fee9a8e199c0922c6f2e57dfc8fe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_project_documentation_01 -> audio/generated/de-DE/lexical/c7fd7d5581b3d1f84bfc2a2176d2318edba4fee9a8e199c0922c6f2e57dfc8fe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3fedc569-5d9a-5220-9e07-ffc8eae0241f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_project_documentation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9ac2f1ee9eee4900105f357cb4a55d8167d510bf91ed4278a60ea5263132274c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b47eadd5-86a6-56e2-9023-301fb210c32c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3fedc569-5d9a-5220-9e07-ffc8eae0241f', 1), '9ac2f1ee9eee4900105f357cb4a55d8167d510bf91ed4278a60ea5263132274c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c7fd7d5581b3d1f84bfc2a2176d2318edba4fee9a8e199c0922c6f2e57dfc8fe.mp3', 1253, '2026-09-13 08:48:04.750996', '220e609601a23eee73fa9772c56793208442bfb9c55bf19bdb4ce0bdcc5e8c8a', 'validated', '{"audio_key":"c7fd7d5581b3d1f84bfc2a2176d2318edba4fee9a8e199c0922c6f2e57dfc8fe","entity_key":"wf_project_documentation_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"220e609601a23eee73fa9772c56793208442bfb9c55bf19bdb4ce0bdcc5e8c8a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c7fd7d5581b3d1f84bfc2a2176d2318edba4fee9a8e199c0922c6f2e57dfc8fe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_structured_meetings_06 -> audio/generated/de-DE/lexical/ceab79cf4bdc2e5b53b1b56ceb57ac6f033386688d123f6f15cc5516b48276f2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('81872b66-e8a1-5368-a371-622212a98f02', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_structured_meetings_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7b7ac7765e802beb89bfd3c503dbd47445b0648ec5ae8f0432f0c8e0f69e7a01'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a8f15cf4-84bc-53e0-a46e-2ace42f0af60', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('81872b66-e8a1-5368-a371-622212a98f02', 1), '7b7ac7765e802beb89bfd3c503dbd47445b0648ec5ae8f0432f0c8e0f69e7a01',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ceab79cf4bdc2e5b53b1b56ceb57ac6f033386688d123f6f15cc5516b48276f2.mp3', 1201, '2026-09-13 05:30:55.294872', '26885c96b9232d3f859115cdde73c942d7c6b6711e5212504fc889d014fbe065', 'validated', '{"audio_key":"ceab79cf4bdc2e5b53b1b56ceb57ac6f033386688d123f6f15cc5516b48276f2","entity_key":"lx_structured_meetings_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"26885c96b9232d3f859115cdde73c942d7c6b6711e5212504fc889d014fbe065","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ceab79cf4bdc2e5b53b1b56ceb57ac6f033386688d123f6f15cc5516b48276f2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_structured_meetings_06 -> audio/generated/de-DE/lexical/ceab79cf4bdc2e5b53b1b56ceb57ac6f033386688d123f6f15cc5516b48276f2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('df3c3781-0bc6-5ff8-ad7d-8cfef806788c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_structured_meetings_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7b7ac7765e802beb89bfd3c503dbd47445b0648ec5ae8f0432f0c8e0f69e7a01'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('263e03d0-de1f-516d-9363-f9210a0aef17', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('df3c3781-0bc6-5ff8-ad7d-8cfef806788c', 1), '7b7ac7765e802beb89bfd3c503dbd47445b0648ec5ae8f0432f0c8e0f69e7a01',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ceab79cf4bdc2e5b53b1b56ceb57ac6f033386688d123f6f15cc5516b48276f2.mp3', 1201, '2026-09-13 05:30:55.294872', '26885c96b9232d3f859115cdde73c942d7c6b6711e5212504fc889d014fbe065', 'validated', '{"audio_key":"ceab79cf4bdc2e5b53b1b56ceb57ac6f033386688d123f6f15cc5516b48276f2","entity_key":"wf_structured_meetings_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"26885c96b9232d3f859115cdde73c942d7c6b6711e5212504fc889d014fbe065","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ceab79cf4bdc2e5b53b1b56ceb57ac6f033386688d123f6f15cc5516b48276f2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_experience_reflection_05 -> audio/generated/de-DE/lexical/cfb919ffa6766681a94f247e6a3d755c9d3c48c5f34e8f3bc1f8cb534189279e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('22bdbfb6-9586-5a9d-9f73-2dca90ff944d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_experience_reflection_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0018ffd4bb52b9b47113f51ff54d8c6de2945402b613ef56a456021832c94c27'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d36733d0-c790-5ed6-a3cc-c6b4320061b5', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('22bdbfb6-9586-5a9d-9f73-2dca90ff944d', 1), '0018ffd4bb52b9b47113f51ff54d8c6de2945402b613ef56a456021832c94c27',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/cfb919ffa6766681a94f247e6a3d755c9d3c48c5f34e8f3bc1f8cb534189279e.mp3', 1201, '2026-09-13 08:48:05.747316', 'cb568d11caca2b498ae0a205f2e8384c78f17feac8fdcd96b340775f80f97aaf', 'validated', '{"audio_key":"cfb919ffa6766681a94f247e6a3d755c9d3c48c5f34e8f3bc1f8cb534189279e","entity_key":"lx_experience_reflection_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cb568d11caca2b498ae0a205f2e8384c78f17feac8fdcd96b340775f80f97aaf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/cfb919ffa6766681a94f247e6a3d755c9d3c48c5f34e8f3bc1f8cb534189279e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_experience_reflection_05 -> audio/generated/de-DE/lexical/cfb919ffa6766681a94f247e6a3d755c9d3c48c5f34e8f3bc1f8cb534189279e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0333ea92-0cbd-5494-a876-f80b03c02fbb', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_experience_reflection_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0018ffd4bb52b9b47113f51ff54d8c6de2945402b613ef56a456021832c94c27'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fe8a43c4-c104-5c01-959e-74fec0ea4455', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0333ea92-0cbd-5494-a876-f80b03c02fbb', 1), '0018ffd4bb52b9b47113f51ff54d8c6de2945402b613ef56a456021832c94c27',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/cfb919ffa6766681a94f247e6a3d755c9d3c48c5f34e8f3bc1f8cb534189279e.mp3', 1201, '2026-09-13 08:48:05.747316', 'cb568d11caca2b498ae0a205f2e8384c78f17feac8fdcd96b340775f80f97aaf', 'validated', '{"audio_key":"cfb919ffa6766681a94f247e6a3d755c9d3c48c5f34e8f3bc1f8cb534189279e","entity_key":"wf_experience_reflection_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cb568d11caca2b498ae0a205f2e8384c78f17feac8fdcd96b340775f80f97aaf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/cfb919ffa6766681a94f247e6a3d755c9d3c48c5f34e8f3bc1f8cb534189279e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_cultural_reviews_04 -> audio/generated/de-DE/lexical/de56107a7dbf43ffee9f33674faaa1bac05d5a87cfb4c97e452c89f0e9d9fac5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('62c2ff3f-e87d-5b31-9ec0-1bc436bf39c6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_cultural_reviews_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c5c2a97101e712a2760cdf0eb04c6c2b272504a2827f4494cfb9d34f7a858fb3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8b8b9d5a-ded6-5c7c-a040-515c19819c17', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('62c2ff3f-e87d-5b31-9ec0-1bc436bf39c6', 1), 'c5c2a97101e712a2760cdf0eb04c6c2b272504a2827f4494cfb9d34f7a858fb3',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/de56107a7dbf43ffee9f33674faaa1bac05d5a87cfb4c97e452c89f0e9d9fac5.mp3', 1280, '2026-09-13 07:53:29.712729', 'ceda3f0a5f2526ad4e2d3f2bc8ebe78f3dbd3ee123607b6f246c4ebf3e630663', 'validated', '{"audio_key":"de56107a7dbf43ffee9f33674faaa1bac05d5a87cfb4c97e452c89f0e9d9fac5","entity_key":"lx_cultural_reviews_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ceda3f0a5f2526ad4e2d3f2bc8ebe78f3dbd3ee123607b6f246c4ebf3e630663","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/de56107a7dbf43ffee9f33674faaa1bac05d5a87cfb4c97e452c89f0e9d9fac5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_cultural_reviews_04 -> audio/generated/de-DE/lexical/de56107a7dbf43ffee9f33674faaa1bac05d5a87cfb4c97e452c89f0e9d9fac5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('712766fa-6c46-5da5-9f70-cbf172c98c72', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_cultural_reviews_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c5c2a97101e712a2760cdf0eb04c6c2b272504a2827f4494cfb9d34f7a858fb3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0023257c-40b8-5223-aa71-4a275be95464', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('712766fa-6c46-5da5-9f70-cbf172c98c72', 1), 'c5c2a97101e712a2760cdf0eb04c6c2b272504a2827f4494cfb9d34f7a858fb3',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/de56107a7dbf43ffee9f33674faaa1bac05d5a87cfb4c97e452c89f0e9d9fac5.mp3', 1280, '2026-09-13 07:53:29.712729', 'ceda3f0a5f2526ad4e2d3f2bc8ebe78f3dbd3ee123607b6f246c4ebf3e630663', 'validated', '{"audio_key":"de56107a7dbf43ffee9f33674faaa1bac05d5a87cfb4c97e452c89f0e9d9fac5","entity_key":"wf_cultural_reviews_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ceda3f0a5f2526ad4e2d3f2bc8ebe78f3dbd3ee123607b6f246c4ebf3e630663","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/de56107a7dbf43ffee9f33674faaa1bac05d5a87cfb4c97e452c89f0e9d9fac5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_structured_meetings_05 -> audio/generated/de-DE/lexical/e061f16fed4a051ffaa4ae68242c0b5c9f091772bfdcd54e1e9b7bd9cc482113.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('29b5b5ad-62dd-5b48-abbe-597898dadf00', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_structured_meetings_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5d14aa60259948cad835f3341f5f57037015efe9ac41651bf192281e21f327f9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1b70f6b4-1de6-54d4-80ae-3225c21ec35e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('29b5b5ad-62dd-5b48-abbe-597898dadf00', 1), '5d14aa60259948cad835f3341f5f57037015efe9ac41651bf192281e21f327f9',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e061f16fed4a051ffaa4ae68242c0b5c9f091772bfdcd54e1e9b7bd9cc482113.mp3', 1201, '2026-09-13 07:53:30.496260', 'dba266dd6d0a1d12edc113e2a840174346479695442ea18f713c6555e8e95596', 'validated', '{"audio_key":"e061f16fed4a051ffaa4ae68242c0b5c9f091772bfdcd54e1e9b7bd9cc482113","entity_key":"lx_structured_meetings_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dba266dd6d0a1d12edc113e2a840174346479695442ea18f713c6555e8e95596","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e061f16fed4a051ffaa4ae68242c0b5c9f091772bfdcd54e1e9b7bd9cc482113.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_structured_meetings_05 -> audio/generated/de-DE/lexical/e061f16fed4a051ffaa4ae68242c0b5c9f091772bfdcd54e1e9b7bd9cc482113.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('73ab509e-796e-5431-b1b8-018635e37e9e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_structured_meetings_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5d14aa60259948cad835f3341f5f57037015efe9ac41651bf192281e21f327f9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7377448e-93ca-5f8d-bdb4-1ce44518eb55', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('73ab509e-796e-5431-b1b8-018635e37e9e', 1), '5d14aa60259948cad835f3341f5f57037015efe9ac41651bf192281e21f327f9',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e061f16fed4a051ffaa4ae68242c0b5c9f091772bfdcd54e1e9b7bd9cc482113.mp3', 1201, '2026-09-13 07:53:30.496260', 'dba266dd6d0a1d12edc113e2a840174346479695442ea18f713c6555e8e95596', 'validated', '{"audio_key":"e061f16fed4a051ffaa4ae68242c0b5c9f091772bfdcd54e1e9b7bd9cc482113","entity_key":"wf_structured_meetings_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dba266dd6d0a1d12edc113e2a840174346479695442ea18f713c6555e8e95596","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e061f16fed4a051ffaa4ae68242c0b5c9f091772bfdcd54e1e9b7bd9cc482113.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_resource_priorities_05 -> audio/generated/de-DE/lexical/e3f8a339f9d9dc8ba2d16cf7b39ea0a38c153427203d9f4457b89d26b87e1433.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7d856b01-1d58-5962-aa6d-bafa730e20da', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_resource_priorities_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b41787ef39d1ab75c2ca6076926148eb3926eef6afebbe4d793e1b35f6f29699'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e6c041ff-4d52-5dee-b041-73478325e265', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7d856b01-1d58-5962-aa6d-bafa730e20da', 1), 'b41787ef39d1ab75c2ca6076926148eb3926eef6afebbe4d793e1b35f6f29699',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e3f8a339f9d9dc8ba2d16cf7b39ea0a38c153427203d9f4457b89d26b87e1433.mp3', 1018, '2026-09-13 06:17:46.583235', 'c3911b1f5d3d9850ffe15cd520932836f11b8fdffcffdf945f73a66434ac51df', 'validated', '{"audio_key":"e3f8a339f9d9dc8ba2d16cf7b39ea0a38c153427203d9f4457b89d26b87e1433","entity_key":"lx_resource_priorities_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c3911b1f5d3d9850ffe15cd520932836f11b8fdffcffdf945f73a66434ac51df","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e3f8a339f9d9dc8ba2d16cf7b39ea0a38c153427203d9f4457b89d26b87e1433.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_resource_priorities_05 -> audio/generated/de-DE/lexical/e3f8a339f9d9dc8ba2d16cf7b39ea0a38c153427203d9f4457b89d26b87e1433.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('956762a8-0235-50a8-acfe-f5fa8ba70cbc', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_resource_priorities_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b41787ef39d1ab75c2ca6076926148eb3926eef6afebbe4d793e1b35f6f29699'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('991005c4-011f-5733-baf2-cfc614b4e2d3', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('956762a8-0235-50a8-acfe-f5fa8ba70cbc', 1), 'b41787ef39d1ab75c2ca6076926148eb3926eef6afebbe4d793e1b35f6f29699',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e3f8a339f9d9dc8ba2d16cf7b39ea0a38c153427203d9f4457b89d26b87e1433.mp3', 1018, '2026-09-13 06:17:46.583235', 'c3911b1f5d3d9850ffe15cd520932836f11b8fdffcffdf945f73a66434ac51df', 'validated', '{"audio_key":"e3f8a339f9d9dc8ba2d16cf7b39ea0a38c153427203d9f4457b89d26b87e1433","entity_key":"wf_resource_priorities_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c3911b1f5d3d9850ffe15cd520932836f11b8fdffcffdf945f73a66434ac51df","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e3f8a339f9d9dc8ba2d16cf7b39ea0a38c153427203d9f4457b89d26b87e1433.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_venue_comparison_01 -> audio/generated/de-DE/lexical/e50e6327f19fe7b4cc8fbf659f0ae795bbca4525be33a28d2017eaeb1868631a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('503fbbed-80ab-5456-b295-e2a97e275722', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_venue_comparison_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '83863b3f383d69f608a9ee0e75b53b0fc9298e6d4ed56f80c70b859c826728e7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('89dffe42-e3c2-5932-b586-f58dcb2f7b24', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('503fbbed-80ab-5456-b295-e2a97e275722', 1), '83863b3f383d69f608a9ee0e75b53b0fc9298e6d4ed56f80c70b859c826728e7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e50e6327f19fe7b4cc8fbf659f0ae795bbca4525be33a28d2017eaeb1868631a.mp3', 1515, '2026-09-13 06:17:47.572721', '5ccbb6ce591b3d8a6900e791d3288c1cb0322af01ea0c99bffb5dc31c06d828e', 'validated', '{"audio_key":"e50e6327f19fe7b4cc8fbf659f0ae795bbca4525be33a28d2017eaeb1868631a","entity_key":"lx_venue_comparison_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5ccbb6ce591b3d8a6900e791d3288c1cb0322af01ea0c99bffb5dc31c06d828e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e50e6327f19fe7b4cc8fbf659f0ae795bbca4525be33a28d2017eaeb1868631a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_venue_comparison_01 -> audio/generated/de-DE/lexical/e50e6327f19fe7b4cc8fbf659f0ae795bbca4525be33a28d2017eaeb1868631a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('821d787f-c416-5f17-969c-c4c36d2d9719', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_venue_comparison_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '83863b3f383d69f608a9ee0e75b53b0fc9298e6d4ed56f80c70b859c826728e7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('485f8b13-234f-58fb-89c3-51e42fbe1cfc', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('821d787f-c416-5f17-969c-c4c36d2d9719', 1), '83863b3f383d69f608a9ee0e75b53b0fc9298e6d4ed56f80c70b859c826728e7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e50e6327f19fe7b4cc8fbf659f0ae795bbca4525be33a28d2017eaeb1868631a.mp3', 1515, '2026-09-13 06:17:47.572721', '5ccbb6ce591b3d8a6900e791d3288c1cb0322af01ea0c99bffb5dc31c06d828e', 'validated', '{"audio_key":"e50e6327f19fe7b4cc8fbf659f0ae795bbca4525be33a28d2017eaeb1868631a","entity_key":"wf_venue_comparison_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5ccbb6ce591b3d8a6900e791d3288c1cb0322af01ea0c99bffb5dc31c06d828e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e50e6327f19fe7b4cc8fbf659f0ae795bbca4525be33a28d2017eaeb1868631a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_cultural_reviews_06 -> audio/generated/de-DE/lexical/e9f4509904b0d8964f2f519bfd3a3fd57d275d373e6000e39efb2271582ed37c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('083bacd9-f31f-50bd-ba32-5e03783820d7', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_cultural_reviews_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd2503960ccd5c81308dff906816761e2f9e01af15a1e0463725df1ada691f60e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f7778f03-b6e9-5f7f-92b7-dfbc70b13db6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('083bacd9-f31f-50bd-ba32-5e03783820d7', 1), 'd2503960ccd5c81308dff906816761e2f9e01af15a1e0463725df1ada691f60e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e9f4509904b0d8964f2f519bfd3a3fd57d275d373e6000e39efb2271582ed37c.mp3', 1384, '2026-09-13 08:48:05.776774', '176bc086f02d1aa24eeb4be6d89489ef0ae28cce5309c3e3a910c50d259350c8', 'validated', '{"audio_key":"e9f4509904b0d8964f2f519bfd3a3fd57d275d373e6000e39efb2271582ed37c","entity_key":"lx_cultural_reviews_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"176bc086f02d1aa24eeb4be6d89489ef0ae28cce5309c3e3a910c50d259350c8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e9f4509904b0d8964f2f519bfd3a3fd57d275d373e6000e39efb2271582ed37c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_cultural_reviews_06 -> audio/generated/de-DE/lexical/e9f4509904b0d8964f2f519bfd3a3fd57d275d373e6000e39efb2271582ed37c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d386810a-c85a-5296-9106-fecd144644f3', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_cultural_reviews_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd2503960ccd5c81308dff906816761e2f9e01af15a1e0463725df1ada691f60e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bff4ecd2-c11e-576d-ab13-a7ad8c7ab329', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d386810a-c85a-5296-9106-fecd144644f3', 1), 'd2503960ccd5c81308dff906816761e2f9e01af15a1e0463725df1ada691f60e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e9f4509904b0d8964f2f519bfd3a3fd57d275d373e6000e39efb2271582ed37c.mp3', 1384, '2026-09-13 08:48:05.776774', '176bc086f02d1aa24eeb4be6d89489ef0ae28cce5309c3e3a910c50d259350c8', 'validated', '{"audio_key":"e9f4509904b0d8964f2f519bfd3a3fd57d275d373e6000e39efb2271582ed37c","entity_key":"wf_cultural_reviews_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"176bc086f02d1aa24eeb4be6d89489ef0ae28cce5309c3e3a910c50d259350c8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e9f4509904b0d8964f2f519bfd3a3fd57d275d373e6000e39efb2271582ed37c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_experience_reflection_03 -> audio/generated/de-DE/lexical/eae096cda8df1c7fd5c4a817caab86b5b34b2fb2a1c635596001373246904c64.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('4d0b4ba8-91a1-5061-bd36-0633b35862dc', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_experience_reflection_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aadb609c7fb7046625c94e688c31d57755e418a0ddf9638ba5b96906dad0ef6a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7c1e5117-1730-512a-a945-d39de752a831', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('4d0b4ba8-91a1-5061-bd36-0633b35862dc', 1), 'aadb609c7fb7046625c94e688c31d57755e418a0ddf9638ba5b96906dad0ef6a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/eae096cda8df1c7fd5c4a817caab86b5b34b2fb2a1c635596001373246904c64.mp3', 1201, '2026-09-13 08:48:06.764540', 'c61ccdee3c24fbcac7b5ec62555d518d810ea153ea2a1a6a3d1f2066f2442387', 'validated', '{"audio_key":"eae096cda8df1c7fd5c4a817caab86b5b34b2fb2a1c635596001373246904c64","entity_key":"lx_experience_reflection_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c61ccdee3c24fbcac7b5ec62555d518d810ea153ea2a1a6a3d1f2066f2442387","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/eae096cda8df1c7fd5c4a817caab86b5b34b2fb2a1c635596001373246904c64.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_experience_reflection_03 -> audio/generated/de-DE/lexical/eae096cda8df1c7fd5c4a817caab86b5b34b2fb2a1c635596001373246904c64.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1efe4f1f-97d1-5d03-a2d9-156ed3f27069', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_experience_reflection_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aadb609c7fb7046625c94e688c31d57755e418a0ddf9638ba5b96906dad0ef6a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ea05d987-44b2-5d9b-9b29-bb2134c210b8', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1efe4f1f-97d1-5d03-a2d9-156ed3f27069', 1), 'aadb609c7fb7046625c94e688c31d57755e418a0ddf9638ba5b96906dad0ef6a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/eae096cda8df1c7fd5c4a817caab86b5b34b2fb2a1c635596001373246904c64.mp3', 1201, '2026-09-13 08:48:06.764540', 'c61ccdee3c24fbcac7b5ec62555d518d810ea153ea2a1a6a3d1f2066f2442387', 'validated', '{"audio_key":"eae096cda8df1c7fd5c4a817caab86b5b34b2fb2a1c635596001373246904c64","entity_key":"wf_experience_reflection_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c61ccdee3c24fbcac7b5ec62555d518d810ea153ea2a1a6a3d1f2066f2442387","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/eae096cda8df1c7fd5c4a817caab86b5b34b2fb2a1c635596001373246904c64.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_project_documentation_04 -> audio/generated/de-DE/lexical/eb5fa9b4e9d7d9cd7f1d463a3946f43ec523bc166edcd029e6f12ee4874da4f6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('30ccf5b8-8cb0-5d6d-8ae6-200fc08d2086', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_project_documentation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8a5c6ffd3497411e085a6a89c2a7d35929ca105e588f7125fe44d4d8ba7b53be'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c275d3bd-bb50-54c4-98f0-6cd5d631e3ab', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('30ccf5b8-8cb0-5d6d-8ae6-200fc08d2086', 1), '8a5c6ffd3497411e085a6a89c2a7d35929ca105e588f7125fe44d4d8ba7b53be',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/eb5fa9b4e9d7d9cd7f1d463a3946f43ec523bc166edcd029e6f12ee4874da4f6.mp3', 1280, '2026-09-13 08:48:06.802057', 'ef9bf85a0c6eeb6c1cba6e4fbf55130912ca4000393c268c9d47bee34698e76f', 'validated', '{"audio_key":"eb5fa9b4e9d7d9cd7f1d463a3946f43ec523bc166edcd029e6f12ee4874da4f6","entity_key":"lx_project_documentation_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ef9bf85a0c6eeb6c1cba6e4fbf55130912ca4000393c268c9d47bee34698e76f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/eb5fa9b4e9d7d9cd7f1d463a3946f43ec523bc166edcd029e6f12ee4874da4f6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_project_documentation_04 -> audio/generated/de-DE/lexical/eb5fa9b4e9d7d9cd7f1d463a3946f43ec523bc166edcd029e6f12ee4874da4f6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c3be23a4-5383-5fea-86c7-b86263db368e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_project_documentation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8a5c6ffd3497411e085a6a89c2a7d35929ca105e588f7125fe44d4d8ba7b53be'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ede92539-9ff4-5637-84d6-a7629eaf9c89', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c3be23a4-5383-5fea-86c7-b86263db368e', 1), '8a5c6ffd3497411e085a6a89c2a7d35929ca105e588f7125fe44d4d8ba7b53be',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/eb5fa9b4e9d7d9cd7f1d463a3946f43ec523bc166edcd029e6f12ee4874da4f6.mp3', 1280, '2026-09-13 08:48:06.802057', 'ef9bf85a0c6eeb6c1cba6e4fbf55130912ca4000393c268c9d47bee34698e76f', 'validated', '{"audio_key":"eb5fa9b4e9d7d9cd7f1d463a3946f43ec523bc166edcd029e6f12ee4874da4f6","entity_key":"wf_project_documentation_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ef9bf85a0c6eeb6c1cba6e4fbf55130912ca4000393c268c9d47bee34698e76f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/eb5fa9b4e9d7d9cd7f1d463a3946f43ec523bc166edcd029e6f12ee4874da4f6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_learning_goals_02 -> audio/generated/de-DE/lexical/ef9b8b411e68396fde6efc108c41ac1c7cf589c13368e2407405b2a71a6ebad3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f666c66e-75ff-5c90-88e9-418276d7a38e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_learning_goals_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'abfc3f29bb604493a66d8e5ae703b97bbb5e0c424d7b195a672280b70f31060b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e8166d85-bb84-5b0c-9bce-ac2b757f2973', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f666c66e-75ff-5c90-88e9-418276d7a38e', 1), 'abfc3f29bb604493a66d8e5ae703b97bbb5e0c424d7b195a672280b70f31060b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ef9b8b411e68396fde6efc108c41ac1c7cf589c13368e2407405b2a71a6ebad3.mp3', 1071, '2026-09-13 05:31:08.540973', 'd084a2298937026b832300c497875d9329270ef478d4453d3ff1af70f403a5ce', 'validated', '{"audio_key":"ef9b8b411e68396fde6efc108c41ac1c7cf589c13368e2407405b2a71a6ebad3","entity_key":"lx_learning_goals_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d084a2298937026b832300c497875d9329270ef478d4453d3ff1af70f403a5ce","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ef9b8b411e68396fde6efc108c41ac1c7cf589c13368e2407405b2a71a6ebad3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_learning_goals_02 -> audio/generated/de-DE/lexical/ef9b8b411e68396fde6efc108c41ac1c7cf589c13368e2407405b2a71a6ebad3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('71cf875c-5bb8-5ea1-bcf1-ba32712a2c0f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_learning_goals_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'abfc3f29bb604493a66d8e5ae703b97bbb5e0c424d7b195a672280b70f31060b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4ffc914c-75a2-5c42-8477-811bdc2d651c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('71cf875c-5bb8-5ea1-bcf1-ba32712a2c0f', 1), 'abfc3f29bb604493a66d8e5ae703b97bbb5e0c424d7b195a672280b70f31060b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ef9b8b411e68396fde6efc108c41ac1c7cf589c13368e2407405b2a71a6ebad3.mp3', 1071, '2026-09-13 05:31:08.540973', 'd084a2298937026b832300c497875d9329270ef478d4453d3ff1af70f403a5ce', 'validated', '{"audio_key":"ef9b8b411e68396fde6efc108c41ac1c7cf589c13368e2407405b2a71a6ebad3","entity_key":"wf_learning_goals_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d084a2298937026b832300c497875d9329270ef478d4453d3ff1af70f403a5ce","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ef9b8b411e68396fde6efc108c41ac1c7cf589c13368e2407405b2a71a6ebad3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_cultural_reviews_02 -> audio/generated/de-DE/lexical/f042b24e52570663a7c5f09480493bb35afe7a63f1f56446b6c7cd81cba4424b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('63ef3999-9781-532e-8017-0dc8c6caa293', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_cultural_reviews_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b68c188d28e5c9e6dc5892a95b4a6adc611f7e1aceef8962898cf0e857cd4699'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6f995a7a-656a-53b4-bcae-8f6bdf0acf3b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('63ef3999-9781-532e-8017-0dc8c6caa293', 1), 'b68c188d28e5c9e6dc5892a95b4a6adc611f7e1aceef8962898cf0e857cd4699',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f042b24e52570663a7c5f09480493bb35afe7a63f1f56446b6c7cd81cba4424b.mp3', 1253, '2026-09-13 08:48:07.808444', 'e81a2cbf8e232cc236ff43411b941f0f5105ef6b8cc3b7ee453f8133a097d96b', 'validated', '{"audio_key":"f042b24e52570663a7c5f09480493bb35afe7a63f1f56446b6c7cd81cba4424b","entity_key":"lx_cultural_reviews_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e81a2cbf8e232cc236ff43411b941f0f5105ef6b8cc3b7ee453f8133a097d96b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f042b24e52570663a7c5f09480493bb35afe7a63f1f56446b6c7cd81cba4424b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_cultural_reviews_02 -> audio/generated/de-DE/lexical/f042b24e52570663a7c5f09480493bb35afe7a63f1f56446b6c7cd81cba4424b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3b529515-a5c5-5018-a9ea-b2c892686963', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_cultural_reviews_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b68c188d28e5c9e6dc5892a95b4a6adc611f7e1aceef8962898cf0e857cd4699'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6ec216e5-34d2-5817-b813-a522a937e882', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3b529515-a5c5-5018-a9ea-b2c892686963', 1), 'b68c188d28e5c9e6dc5892a95b4a6adc611f7e1aceef8962898cf0e857cd4699',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f042b24e52570663a7c5f09480493bb35afe7a63f1f56446b6c7cd81cba4424b.mp3', 1253, '2026-09-13 08:48:07.808444', 'e81a2cbf8e232cc236ff43411b941f0f5105ef6b8cc3b7ee453f8133a097d96b', 'validated', '{"audio_key":"f042b24e52570663a7c5f09480493bb35afe7a63f1f56446b6c7cd81cba4424b","entity_key":"wf_cultural_reviews_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e81a2cbf8e232cc236ff43411b941f0f5105ef6b8cc3b7ee453f8133a097d96b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f042b24e52570663a7c5f09480493bb35afe7a63f1f56446b6c7cd81cba4424b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_shared_planning_03 -> audio/generated/de-DE/lexical/f552d58505bf9c45aabe3cad1afe004db66ad02b4345cac72ebf71b66707f894.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e4c642cb-dec5-5878-baeb-b0109f1b53a2', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_shared_planning_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e171e65ac5ae5e3ce641bc6649bccf79b46ef2e37c7fe94136e97b29e17f31e0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('08eb6bad-8009-5934-969b-234f91dcff44', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e4c642cb-dec5-5878-baeb-b0109f1b53a2', 1), 'e171e65ac5ae5e3ce641bc6649bccf79b46ef2e37c7fe94136e97b29e17f31e0',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f552d58505bf9c45aabe3cad1afe004db66ad02b4345cac72ebf71b66707f894.mp3', 1253, '2026-09-13 08:16:47.949839', 'ff04cbf9393a638c456310bea56086baabe149a3a589eeda3d3580448d6e64d7', 'validated', '{"audio_key":"f552d58505bf9c45aabe3cad1afe004db66ad02b4345cac72ebf71b66707f894","entity_key":"lx_shared_planning_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ff04cbf9393a638c456310bea56086baabe149a3a589eeda3d3580448d6e64d7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f552d58505bf9c45aabe3cad1afe004db66ad02b4345cac72ebf71b66707f894.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_shared_planning_03 -> audio/generated/de-DE/lexical/f552d58505bf9c45aabe3cad1afe004db66ad02b4345cac72ebf71b66707f894.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('fa2de7e5-54ec-58b0-80d2-0c277b65779f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_shared_planning_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e171e65ac5ae5e3ce641bc6649bccf79b46ef2e37c7fe94136e97b29e17f31e0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0c7a5a3f-59db-5c7b-8f9c-f081ee8d8172', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('fa2de7e5-54ec-58b0-80d2-0c277b65779f', 1), 'e171e65ac5ae5e3ce641bc6649bccf79b46ef2e37c7fe94136e97b29e17f31e0',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f552d58505bf9c45aabe3cad1afe004db66ad02b4345cac72ebf71b66707f894.mp3', 1253, '2026-09-13 08:16:47.949839', 'ff04cbf9393a638c456310bea56086baabe149a3a589eeda3d3580448d6e64d7', 'validated', '{"audio_key":"f552d58505bf9c45aabe3cad1afe004db66ad02b4345cac72ebf71b66707f894","entity_key":"wf_shared_planning_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ff04cbf9393a638c456310bea56086baabe149a3a589eeda3d3580448d6e64d7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f552d58505bf9c45aabe3cad1afe004db66ad02b4345cac72ebf71b66707f894.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_responsibility_corrections_02 -> audio/generated/de-DE/lexical/f61ba081de848b5ce9d4b443fbbb3253e82028e6e42c200255d41947f86ce688.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2c19d3b9-9581-5a54-b332-f5c4e98d461d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_responsibility_corrections_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '269d3d873f156bd37a61b56573c6732822017ff6912dfa0258b376f76f39ff19'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1fb0e6d0-33b7-5be7-9f6b-adee23e02d22', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2c19d3b9-9581-5a54-b332-f5c4e98d461d', 1), '269d3d873f156bd37a61b56573c6732822017ff6912dfa0258b376f76f39ff19',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f61ba081de848b5ce9d4b443fbbb3253e82028e6e42c200255d41947f86ce688.mp3', 1253, '2026-09-13 05:54:51.804446', 'e9645767fdc4b47111950a3363ed9f8e6a42e7b3d00696ac7c94830179b001cd', 'validated', '{"audio_key":"f61ba081de848b5ce9d4b443fbbb3253e82028e6e42c200255d41947f86ce688","entity_key":"lx_responsibility_corrections_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e9645767fdc4b47111950a3363ed9f8e6a42e7b3d00696ac7c94830179b001cd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f61ba081de848b5ce9d4b443fbbb3253e82028e6e42c200255d41947f86ce688.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_responsibility_corrections_02 -> audio/generated/de-DE/lexical/f61ba081de848b5ce9d4b443fbbb3253e82028e6e42c200255d41947f86ce688.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('96c6ab14-fe9b-5f49-a6e6-703444f35675', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_responsibility_corrections_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '269d3d873f156bd37a61b56573c6732822017ff6912dfa0258b376f76f39ff19'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9aea8053-4de6-50b8-afff-701461838cc3', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('96c6ab14-fe9b-5f49-a6e6-703444f35675', 1), '269d3d873f156bd37a61b56573c6732822017ff6912dfa0258b376f76f39ff19',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f61ba081de848b5ce9d4b443fbbb3253e82028e6e42c200255d41947f86ce688.mp3', 1253, '2026-09-13 05:54:51.804446', 'e9645767fdc4b47111950a3363ed9f8e6a42e7b3d00696ac7c94830179b001cd', 'validated', '{"audio_key":"f61ba081de848b5ce9d4b443fbbb3253e82028e6e42c200255d41947f86ce688","entity_key":"wf_responsibility_corrections_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e9645767fdc4b47111950a3363ed9f8e6a42e7b3d00696ac7c94830179b001cd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f61ba081de848b5ce9d4b443fbbb3253e82028e6e42c200255d41947f86ce688.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_responsibility_corrections_01 -> audio/generated/de-DE/lexical/f6ae90c9f360560ac57cb489e42f4deb53779c771422a551dac886f0c4a7cb3c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f50e4655-e93c-5076-9a2b-951b83a78c0c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_responsibility_corrections_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ddeb60b3ed1cb5258824294dade217ed45d890108ef21cd998d61c3838fc2ee5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ed75287b-2907-5c56-8450-dd55c2360bb0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f50e4655-e93c-5076-9a2b-951b83a78c0c', 1), 'ddeb60b3ed1cb5258824294dade217ed45d890108ef21cd998d61c3838fc2ee5',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f6ae90c9f360560ac57cb489e42f4deb53779c771422a551dac886f0c4a7cb3c.mp3', 1071, '2026-09-13 08:48:07.903042', '9ac8aba8ba08ff462c5e92ec81df1f09855f51d6e94c68be7a38add9b7f6eede', 'validated', '{"audio_key":"f6ae90c9f360560ac57cb489e42f4deb53779c771422a551dac886f0c4a7cb3c","entity_key":"lx_responsibility_corrections_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9ac8aba8ba08ff462c5e92ec81df1f09855f51d6e94c68be7a38add9b7f6eede","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f6ae90c9f360560ac57cb489e42f4deb53779c771422a551dac886f0c4a7cb3c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_responsibility_corrections_01 -> audio/generated/de-DE/lexical/f6ae90c9f360560ac57cb489e42f4deb53779c771422a551dac886f0c4a7cb3c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c28f8466-6b67-558a-9ef8-c39f141f20f1', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_responsibility_corrections_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ddeb60b3ed1cb5258824294dade217ed45d890108ef21cd998d61c3838fc2ee5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('32b2ebb9-fd21-5963-a380-89478bb35ac3', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c28f8466-6b67-558a-9ef8-c39f141f20f1', 1), 'ddeb60b3ed1cb5258824294dade217ed45d890108ef21cd998d61c3838fc2ee5',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f6ae90c9f360560ac57cb489e42f4deb53779c771422a551dac886f0c4a7cb3c.mp3', 1071, '2026-09-13 08:48:07.903042', '9ac8aba8ba08ff462c5e92ec81df1f09855f51d6e94c68be7a38add9b7f6eede', 'validated', '{"audio_key":"f6ae90c9f360560ac57cb489e42f4deb53779c771422a551dac886f0c4a7cb3c","entity_key":"wf_responsibility_corrections_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9ac8aba8ba08ff462c5e92ec81df1f09855f51d6e94c68be7a38add9b7f6eede","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f6ae90c9f360560ac57cb489e42f4deb53779c771422a551dac886f0c4a7cb3c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_resource_priorities_03 -> audio/generated/de-DE/lexical/f74bd12bc3cda2060e58df652d47330a0365c11c01cf577fd19c206b56bea4db.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('dc02d11b-6b35-5279-89de-7eb1329af8df', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_resource_priorities_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '057ac2118a4a70304b0c8d03aeb754304bac6fb9b869d258719fa435b2f16d9a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c0affef6-c64c-5d10-84f2-77cabebb6edc', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('dc02d11b-6b35-5279-89de-7eb1329af8df', 1), '057ac2118a4a70304b0c8d03aeb754304bac6fb9b869d258719fa435b2f16d9a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f74bd12bc3cda2060e58df652d47330a0365c11c01cf577fd19c206b56bea4db.mp3', 1097, '2026-09-13 08:16:47.938442', 'f86f206074b9ed3cfa1db0e24dacb855201736634f4cf48169b92bcff11fc8a1', 'validated', '{"audio_key":"f74bd12bc3cda2060e58df652d47330a0365c11c01cf577fd19c206b56bea4db","entity_key":"lx_resource_priorities_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f86f206074b9ed3cfa1db0e24dacb855201736634f4cf48169b92bcff11fc8a1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f74bd12bc3cda2060e58df652d47330a0365c11c01cf577fd19c206b56bea4db.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_resource_priorities_03 -> audio/generated/de-DE/lexical/f74bd12bc3cda2060e58df652d47330a0365c11c01cf577fd19c206b56bea4db.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8242f066-8976-5ffb-ab19-029e075dcd6c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_resource_priorities_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '057ac2118a4a70304b0c8d03aeb754304bac6fb9b869d258719fa435b2f16d9a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('01cdae9e-bd99-5a63-abc6-b611b1dfac9d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8242f066-8976-5ffb-ab19-029e075dcd6c', 1), '057ac2118a4a70304b0c8d03aeb754304bac6fb9b869d258719fa435b2f16d9a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f74bd12bc3cda2060e58df652d47330a0365c11c01cf577fd19c206b56bea4db.mp3', 1097, '2026-09-13 08:16:47.938442', 'f86f206074b9ed3cfa1db0e24dacb855201736634f4cf48169b92bcff11fc8a1', 'validated', '{"audio_key":"f74bd12bc3cda2060e58df652d47330a0365c11c01cf577fd19c206b56bea4db","entity_key":"wf_resource_priorities_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f86f206074b9ed3cfa1db0e24dacb855201736634f4cf48169b92bcff11fc8a1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f74bd12bc3cda2060e58df652d47330a0365c11c01cf577fd19c206b56bea4db.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_structured_meetings_01 -> audio/generated/de-DE/utterances/07bf83b057e49c64ec2580a4611e7b28c2a3321d7fa2d3ca23dd1f1130d863e0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('40a4782d-2211-54ed-a14b-c5617fa1d009', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_structured_meetings_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '64c4e5c557064cefccd78f2bb47a12f5bced60e6de009e708ff58c29d1783598'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f8ba0c93-10db-5164-a4f4-285760411064', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('40a4782d-2211-54ed-a14b-c5617fa1d009', 1), '64c4e5c557064cefccd78f2bb47a12f5bced60e6de009e708ff58c29d1783598',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/07bf83b057e49c64ec2580a4611e7b28c2a3321d7fa2d3ca23dd1f1130d863e0.mp3', 3422, '2026-09-13 08:48:09.117002', 'fdd580f0569bee564cceb71ea262cef225d64d1f8e86dbc810675b2ef98eb4da', 'validated', '{"audio_key":"07bf83b057e49c64ec2580a4611e7b28c2a3321d7fa2d3ca23dd1f1130d863e0","entity_key":"u_structured_meetings_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fdd580f0569bee564cceb71ea262cef225d64d1f8e86dbc810675b2ef98eb4da","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/07bf83b057e49c64ec2580a4611e7b28c2a3321d7fa2d3ca23dd1f1130d863e0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_structured_meetings_01_listen -> audio/generated/de-DE/utterances/07bf83b057e49c64ec2580a4611e7b28c2a3321d7fa2d3ca23dd1f1130d863e0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('1b138364-f637-5cb1-a11e-96f1a9ed31d0', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_structured_meetings_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '64c4e5c557064cefccd78f2bb47a12f5bced60e6de009e708ff58c29d1783598'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7bc2f432-fafd-5d83-94aa-5f69844d7a9c', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('1b138364-f637-5cb1-a11e-96f1a9ed31d0', 1), '64c4e5c557064cefccd78f2bb47a12f5bced60e6de009e708ff58c29d1783598',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/07bf83b057e49c64ec2580a4611e7b28c2a3321d7fa2d3ca23dd1f1130d863e0.mp3', 3422, '2026-09-13 08:48:09.117002', 'fdd580f0569bee564cceb71ea262cef225d64d1f8e86dbc810675b2ef98eb4da', 'validated', '{"audio_key":"07bf83b057e49c64ec2580a4611e7b28c2a3321d7fa2d3ca23dd1f1130d863e0","entity_key":"ex_structured_meetings_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fdd580f0569bee564cceb71ea262cef225d64d1f8e86dbc810675b2ef98eb4da","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/07bf83b057e49c64ec2580a4611e7b28c2a3321d7fa2d3ca23dd1f1130d863e0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_experience_reflection_05 -> audio/generated/de-DE/utterances/0ec4faee8cf309e6e9a1ce1847c0f15fbbe684cc9378e24107009c5ae312a9b2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f9f8cfc4-3bf2-5984-9ac8-cb4af997555d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_experience_reflection_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '92fdbc525d1ec45661348221886954a5476eac07531d10a16f71377b07e5c9a9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('54c68967-270b-5615-8a4f-c3b3e0fa1627', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f9f8cfc4-3bf2-5984-9ac8-cb4af997555d', 1), '92fdbc525d1ec45661348221886954a5476eac07531d10a16f71377b07e5c9a9',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/0ec4faee8cf309e6e9a1ce1847c0f15fbbe684cc9378e24107009c5ae312a9b2.mp3', 3160, '2026-09-13 08:48:09.166193', 'befd8f07bcba0f459ae6228a1280da5d365d36cf804d6cc836ef3868992eb3e0', 'validated', '{"audio_key":"0ec4faee8cf309e6e9a1ce1847c0f15fbbe684cc9378e24107009c5ae312a9b2","entity_key":"u_experience_reflection_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"befd8f07bcba0f459ae6228a1280da5d365d36cf804d6cc836ef3868992eb3e0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/0ec4faee8cf309e6e9a1ce1847c0f15fbbe684cc9378e24107009c5ae312a9b2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_experience_reflection_03_listen -> audio/generated/de-DE/utterances/0ec4faee8cf309e6e9a1ce1847c0f15fbbe684cc9378e24107009c5ae312a9b2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('f7e787ac-8c49-5056-9ea5-57e994dac00e', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_experience_reflection_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '92fdbc525d1ec45661348221886954a5476eac07531d10a16f71377b07e5c9a9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a0bc03a3-12b5-507a-9e26-192db27c239e', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('f7e787ac-8c49-5056-9ea5-57e994dac00e', 1), '92fdbc525d1ec45661348221886954a5476eac07531d10a16f71377b07e5c9a9',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/0ec4faee8cf309e6e9a1ce1847c0f15fbbe684cc9378e24107009c5ae312a9b2.mp3', 3160, '2026-09-13 08:48:09.166193', 'befd8f07bcba0f459ae6228a1280da5d365d36cf804d6cc836ef3868992eb3e0', 'validated', '{"audio_key":"0ec4faee8cf309e6e9a1ce1847c0f15fbbe684cc9378e24107009c5ae312a9b2","entity_key":"ex_experience_reflection_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"befd8f07bcba0f459ae6228a1280da5d365d36cf804d6cc836ef3868992eb3e0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/0ec4faee8cf309e6e9a1ce1847c0f15fbbe684cc9378e24107009c5ae312a9b2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_responsibility_corrections_05 -> audio/generated/de-DE/utterances/108dd756d1ceb0304193729c139d08f3e098fc8342bbe060073d568dfb6d0752.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('835757fc-5808-5a58-9677-5d12a64c58b5', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_responsibility_corrections_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9d12d4aa33e8abbfa458f2d081b63ed2e57463492bf118311f6058e995376824'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('02d295d2-e47a-5e73-883f-bd7be25b59bc', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('835757fc-5808-5a58-9677-5d12a64c58b5', 1), '9d12d4aa33e8abbfa458f2d081b63ed2e57463492bf118311f6058e995376824',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/108dd756d1ceb0304193729c139d08f3e098fc8342bbe060073d568dfb6d0752.mp3', 4414, '2026-09-13 08:48:10.501517', '5033954934b2e6ad5277b909c6c4a64de1799f13ebc73ad20c832cfd8c29ac63', 'validated', '{"audio_key":"108dd756d1ceb0304193729c139d08f3e098fc8342bbe060073d568dfb6d0752","entity_key":"u_responsibility_corrections_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5033954934b2e6ad5277b909c6c4a64de1799f13ebc73ad20c832cfd8c29ac63","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/108dd756d1ceb0304193729c139d08f3e098fc8342bbe060073d568dfb6d0752.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_responsibility_corrections_03_listen -> audio/generated/de-DE/utterances/108dd756d1ceb0304193729c139d08f3e098fc8342bbe060073d568dfb6d0752.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('067c36d4-9f28-5e96-912c-cdf8b21ddf6e', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_responsibility_corrections_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9d12d4aa33e8abbfa458f2d081b63ed2e57463492bf118311f6058e995376824'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7ed951bf-4c80-528d-84af-bb452e85b1c9', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('067c36d4-9f28-5e96-912c-cdf8b21ddf6e', 1), '9d12d4aa33e8abbfa458f2d081b63ed2e57463492bf118311f6058e995376824',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/108dd756d1ceb0304193729c139d08f3e098fc8342bbe060073d568dfb6d0752.mp3', 4414, '2026-09-13 08:48:10.501517', '5033954934b2e6ad5277b909c6c4a64de1799f13ebc73ad20c832cfd8c29ac63', 'validated', '{"audio_key":"108dd756d1ceb0304193729c139d08f3e098fc8342bbe060073d568dfb6d0752","entity_key":"ex_responsibility_corrections_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5033954934b2e6ad5277b909c6c4a64de1799f13ebc73ad20c832cfd8c29ac63","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/108dd756d1ceb0304193729c139d08f3e098fc8342bbe060073d568dfb6d0752.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_project_documentation_02 -> audio/generated/de-DE/utterances/15c5265acbde9eeb19273f29111109459b90739236b6797413148947c649ff7f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('30b00a2b-8c53-539c-9558-39db7d1ff9c0', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_project_documentation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7fb912e139ca74f39282e266d92f0054789878334c837031304c53fbe9fb894b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a0d35961-4d35-51f8-97bb-04237937f8cd', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('30b00a2b-8c53-539c-9558-39db7d1ff9c0', 1), '7fb912e139ca74f39282e266d92f0054789878334c837031304c53fbe9fb894b',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/15c5265acbde9eeb19273f29111109459b90739236b6797413148947c649ff7f.mp3', 3787, '2026-09-13 08:48:10.675454', '69a4e37420a1d2a99e60d5c130acebb64599c1a0e26fe6d411a179216865943d', 'validated', '{"audio_key":"15c5265acbde9eeb19273f29111109459b90739236b6797413148947c649ff7f","entity_key":"u_project_documentation_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"69a4e37420a1d2a99e60d5c130acebb64599c1a0e26fe6d411a179216865943d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/15c5265acbde9eeb19273f29111109459b90739236b6797413148947c649ff7f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_venue_comparison_04 -> audio/generated/de-DE/utterances/167c9569472c5fa7d8f3cb1c203470aec6f72de7c38d97d05799ca3194d7bd0a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('4a705b11-b314-5bf3-b395-bbb496542c3c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_venue_comparison_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '80689364982571195b6e8817cd0a1df367f468290124ed34d32ac8baab175e36'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('04ce86f3-dbbc-5a2a-8ff1-8fa67c6fd4f9', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('4a705b11-b314-5bf3-b395-bbb496542c3c', 1), '80689364982571195b6e8817cd0a1df367f468290124ed34d32ac8baab175e36',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/167c9569472c5fa7d8f3cb1c203470aec6f72de7c38d97d05799ca3194d7bd0a.mp3', 3369, '2026-09-13 08:48:11.757864', 'c70be9b0b0460742cd519a9e405ab0a4cb19d455383971bc899e07a6493d754e', 'validated', '{"audio_key":"167c9569472c5fa7d8f3cb1c203470aec6f72de7c38d97d05799ca3194d7bd0a","entity_key":"u_venue_comparison_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c70be9b0b0460742cd519a9e405ab0a4cb19d455383971bc899e07a6493d754e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/167c9569472c5fa7d8f3cb1c203470aec6f72de7c38d97d05799ca3194d7bd0a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_experience_reflection_06 -> audio/generated/de-DE/utterances/1a662407d765597eb8ca11c1333d965ed4c0756864e00a64b71195100655cf5a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b94570d1-9af1-53d1-93bf-c771a1c6c3f5', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_experience_reflection_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '324aaea28c96a7ff297046b998195c9f75adcbe24ad2f2cb8a8ccbe40624b78f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0667aca3-2619-54b7-8e7d-56a37b8d5aa7', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b94570d1-9af1-53d1-93bf-c771a1c6c3f5', 1), '324aaea28c96a7ff297046b998195c9f75adcbe24ad2f2cb8a8ccbe40624b78f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/1a662407d765597eb8ca11c1333d965ed4c0756864e00a64b71195100655cf5a.mp3', 5616, '2026-09-13 08:48:12.224655', '98fd4a7c8c664e22bef9b184c6288a4282f8cc6bdf5b7bddccf1bd89c310f217', 'validated', '{"audio_key":"1a662407d765597eb8ca11c1333d965ed4c0756864e00a64b71195100655cf5a","entity_key":"u_experience_reflection_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"98fd4a7c8c664e22bef9b184c6288a4282f8cc6bdf5b7bddccf1bd89c310f217","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/1a662407d765597eb8ca11c1333d965ed4c0756864e00a64b71195100655cf5a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_structured_meetings_06 -> audio/generated/de-DE/utterances/1ea5cbcdd4f50c5e199c948d22f09001222c18e113fd2f0730a1eb92be35069f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('206e04a2-e3e4-5a41-890e-5b98f396ac95', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_structured_meetings_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '00695a38da4e11fc53d609c439f695e7167f25b833c3916b7174b013d62be043'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1007c8e1-b2b3-56e6-a64b-c80a7f29e2a1', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('206e04a2-e3e4-5a41-890e-5b98f396ac95', 1), '00695a38da4e11fc53d609c439f695e7167f25b833c3916b7174b013d62be043',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/1ea5cbcdd4f50c5e199c948d22f09001222c18e113fd2f0730a1eb92be35069f.mp3', 3657, '2026-09-13 08:48:13.029735', '04a641ab64023dba29085ff47b5ab5b7beeacb3f41b331aca4dd0ac4dfac7a61', 'validated', '{"audio_key":"1ea5cbcdd4f50c5e199c948d22f09001222c18e113fd2f0730a1eb92be35069f","entity_key":"u_structured_meetings_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"04a641ab64023dba29085ff47b5ab5b7beeacb3f41b331aca4dd0ac4dfac7a61","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/1ea5cbcdd4f50c5e199c948d22f09001222c18e113fd2f0730a1eb92be35069f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_shared_planning_06 -> audio/generated/de-DE/utterances/22468afb0b1a5cd2db4acb584c0a1d4e8d1ecb061067427eb2078b7fce278908.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('fef98cee-707f-5038-babd-3c1a07617e73', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_shared_planning_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ad2a84106dab6aae04e1650116eb2b356e5b1d76a628573394980f5a83e27987'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1303f1c3-64e3-5c95-a19d-36fe02e6f4b2', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('fef98cee-707f-5038-babd-3c1a07617e73', 1), 'ad2a84106dab6aae04e1650116eb2b356e5b1d76a628573394980f5a83e27987',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/22468afb0b1a5cd2db4acb584c0a1d4e8d1ecb061067427eb2078b7fce278908.mp3', 3422, '2026-09-13 08:48:13.504916', '594747771305616b687ded09624a4f6a990f326c58684d9245dde99f595d775b', 'validated', '{"audio_key":"22468afb0b1a5cd2db4acb584c0a1d4e8d1ecb061067427eb2078b7fce278908","entity_key":"u_shared_planning_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"594747771305616b687ded09624a4f6a990f326c58684d9245dde99f595d775b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/22468afb0b1a5cd2db4acb584c0a1d4e8d1ecb061067427eb2078b7fce278908.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_venue_comparison_02 -> audio/generated/de-DE/utterances/22475bc5c64d8e0bdab13267a1d931ba8fcfa719850b49edc835a0c7a2b60474.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('22c0a801-10f0-56f5-b046-33292b5f30dc', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_venue_comparison_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ec4bb9ec4087a0f56634873287f50614b542046193b7535bf4f15e8ad8e54118'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('37e3768f-6b22-5a86-b1c9-e5d262dd9812', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('22c0a801-10f0-56f5-b046-33292b5f30dc', 1), 'ec4bb9ec4087a0f56634873287f50614b542046193b7535bf4f15e8ad8e54118',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/22475bc5c64d8e0bdab13267a1d931ba8fcfa719850b49edc835a0c7a2b60474.mp3', 3369, '2026-09-13 08:48:14.323867', '3ad295d28bd44d291c8afea335d5f501b64d5a6fe09ce6e5d7fd35d844f348f4', 'validated', '{"audio_key":"22475bc5c64d8e0bdab13267a1d931ba8fcfa719850b49edc835a0c7a2b60474","entity_key":"u_venue_comparison_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3ad295d28bd44d291c8afea335d5f501b64d5a6fe09ce6e5d7fd35d844f348f4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/22475bc5c64d8e0bdab13267a1d931ba8fcfa719850b49edc835a0c7a2b60474.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_experience_reflection_02 -> audio/generated/de-DE/utterances/2311122c0292446a595b4efacb851c1ed546934a9b1d0da3d7ce6c8c9d3adbe8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ff4d472f-85ee-5806-8327-5635664aa115', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_experience_reflection_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '37e547c92e9c6d66578059f216e2472835f3b3a77c276eab1f6ca37b64b7c281'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('74a3d124-9c15-5c1d-9d42-26083dd0e768', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ff4d472f-85ee-5806-8327-5635664aa115', 1), '37e547c92e9c6d66578059f216e2472835f3b3a77c276eab1f6ca37b64b7c281',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/2311122c0292446a595b4efacb851c1ed546934a9b1d0da3d7ce6c8c9d3adbe8.mp3', 4675, '2026-09-13 08:48:14.986019', '117d5231ae07970d2cd83e01caf1febc38344174bd2bbb0c646c67a6bfe5cf26', 'validated', '{"audio_key":"2311122c0292446a595b4efacb851c1ed546934a9b1d0da3d7ce6c8c9d3adbe8","entity_key":"u_experience_reflection_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"117d5231ae07970d2cd83e01caf1febc38344174bd2bbb0c646c67a6bfe5cf26","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/2311122c0292446a595b4efacb851c1ed546934a9b1d0da3d7ce6c8c9d3adbe8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_resource_priorities_04 -> audio/generated/de-DE/utterances/27869195c59439ba1c002b37a72580f3d2575479d5cbdb961a60fb22668ed4af.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3c8b1489-07f1-5468-88e6-2f4d17e0230e', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_resource_priorities_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8df18df7531e43c8c9ed281b1b74c079dc89036a288e0510a8ab6c73260d175f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6ef14a64-8a3d-5c36-8d32-77541ecf9446', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3c8b1489-07f1-5468-88e6-2f4d17e0230e', 1), '8df18df7531e43c8c9ed281b1b74c079dc89036a288e0510a8ab6c73260d175f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/27869195c59439ba1c002b37a72580f3d2575479d5cbdb961a60fb22668ed4af.mp3', 3604, '2026-09-13 08:48:15.847954', '4084e01c3021fdedc1b773138b15dc0724cd9f653c9d552f29042796c57ad7ed', 'validated', '{"audio_key":"27869195c59439ba1c002b37a72580f3d2575479d5cbdb961a60fb22668ed4af","entity_key":"u_resource_priorities_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4084e01c3021fdedc1b773138b15dc0724cd9f653c9d552f29042796c57ad7ed","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/27869195c59439ba1c002b37a72580f3d2575479d5cbdb961a60fb22668ed4af.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_learning_goals_01 -> audio/generated/de-DE/utterances/27ec0320ee1e4aa698ddfcc167d2a374b63d3c459612ba5a650e7719e8de0373.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('df936efe-3647-5aec-8bed-f16d773b024a', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_learning_goals_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4a276fecbbd13a708c3f76400a3e71e7c62ba5679c1f035d7e3ea9184a8f8f84'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fd09c5e4-67c3-5b8a-a9d2-744bbbe6a8eb', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('df936efe-3647-5aec-8bed-f16d773b024a', 1), '4a276fecbbd13a708c3f76400a3e71e7c62ba5679c1f035d7e3ea9184a8f8f84',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/27ec0320ee1e4aa698ddfcc167d2a374b63d3c459612ba5a650e7719e8de0373.mp3', 4963, '2026-09-13 08:48:16.474488', '5abdf5afb907e4c433ed513ac992dbcc2cb790505e90c1d78c7523071c1b3c7a', 'validated', '{"audio_key":"27ec0320ee1e4aa698ddfcc167d2a374b63d3c459612ba5a650e7719e8de0373","entity_key":"u_learning_goals_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5abdf5afb907e4c433ed513ac992dbcc2cb790505e90c1d78c7523071c1b3c7a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/27ec0320ee1e4aa698ddfcc167d2a374b63d3c459612ba5a650e7719e8de0373.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_learning_goals_01_listen -> audio/generated/de-DE/utterances/27ec0320ee1e4aa698ddfcc167d2a374b63d3c459612ba5a650e7719e8de0373.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('44a5a4b4-419d-54af-8e15-daff03006ad2', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_learning_goals_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4a276fecbbd13a708c3f76400a3e71e7c62ba5679c1f035d7e3ea9184a8f8f84'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6d4cb903-baf7-5ab1-aed9-20006d7c3f55', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('44a5a4b4-419d-54af-8e15-daff03006ad2', 1), '4a276fecbbd13a708c3f76400a3e71e7c62ba5679c1f035d7e3ea9184a8f8f84',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/27ec0320ee1e4aa698ddfcc167d2a374b63d3c459612ba5a650e7719e8de0373.mp3', 4963, '2026-09-13 08:48:16.474488', '5abdf5afb907e4c433ed513ac992dbcc2cb790505e90c1d78c7523071c1b3c7a', 'validated', '{"audio_key":"27ec0320ee1e4aa698ddfcc167d2a374b63d3c459612ba5a650e7719e8de0373","entity_key":"ex_learning_goals_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5abdf5afb907e4c433ed513ac992dbcc2cb790505e90c1d78c7523071c1b3c7a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/27ec0320ee1e4aa698ddfcc167d2a374b63d3c459612ba5a650e7719e8de0373.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_project_documentation_04 -> audio/generated/de-DE/utterances/2912b370d61fea9aece42996a8cabaa79198f1079a883d64b095f60042eab493.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c6ffd213-f68e-5bc0-b288-fb9b5c62015e', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_project_documentation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9f3cc48076ab84154089bd9555d58aff9e34df3470ed506a48188f0d9d615dc0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ae89b876-ea8f-5afe-8b44-a9f68947ea0d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c6ffd213-f68e-5bc0-b288-fb9b5c62015e', 1), '9f3cc48076ab84154089bd9555d58aff9e34df3470ed506a48188f0d9d615dc0',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/2912b370d61fea9aece42996a8cabaa79198f1079a883d64b095f60042eab493.mp3', 4414, '2026-09-13 08:48:17.282887', '8d76f08cdaae8aba962421a6882f41a25c504a7d2469e612174f7731b92ce5d5', 'validated', '{"audio_key":"2912b370d61fea9aece42996a8cabaa79198f1079a883d64b095f60042eab493","entity_key":"u_project_documentation_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8d76f08cdaae8aba962421a6882f41a25c504a7d2469e612174f7731b92ce5d5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/2912b370d61fea9aece42996a8cabaa79198f1079a883d64b095f60042eab493.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_responsibility_corrections_03 -> audio/generated/de-DE/utterances/2c68fd9879170c74b4a57fc10a62b1e06c036406227d2d473da1f49c2cebb353.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a91f3fa7-329d-5a66-bb41-168314a318db', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_responsibility_corrections_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '616b1855d1f9f8ffde870ac46d4585cb565986cac478d987e9edd01509ce27fe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('52c8bb82-8f4a-5e15-800d-1bdf3498fb30', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a91f3fa7-329d-5a66-bb41-168314a318db', 1), '616b1855d1f9f8ffde870ac46d4585cb565986cac478d987e9edd01509ce27fe',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/2c68fd9879170c74b4a57fc10a62b1e06c036406227d2d473da1f49c2cebb353.mp3', 4310, '2026-09-13 08:48:17.871970', '6fe4667beb19917759c310e4b7691adee78b4a009c60105dbe551b1e8bab1b51', 'validated', '{"audio_key":"2c68fd9879170c74b4a57fc10a62b1e06c036406227d2d473da1f49c2cebb353","entity_key":"u_responsibility_corrections_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6fe4667beb19917759c310e4b7691adee78b4a009c60105dbe551b1e8bab1b51","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/2c68fd9879170c74b4a57fc10a62b1e06c036406227d2d473da1f49c2cebb353.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_responsibility_corrections_02_listen -> audio/generated/de-DE/utterances/2c68fd9879170c74b4a57fc10a62b1e06c036406227d2d473da1f49c2cebb353.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('3dba8fb4-c6ea-57c0-acd4-cd495971e4c8', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_responsibility_corrections_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '616b1855d1f9f8ffde870ac46d4585cb565986cac478d987e9edd01509ce27fe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('17bcc979-d480-5669-824a-9df4eb704447', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('3dba8fb4-c6ea-57c0-acd4-cd495971e4c8', 1), '616b1855d1f9f8ffde870ac46d4585cb565986cac478d987e9edd01509ce27fe',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/2c68fd9879170c74b4a57fc10a62b1e06c036406227d2d473da1f49c2cebb353.mp3', 4310, '2026-09-13 08:48:17.871970', '6fe4667beb19917759c310e4b7691adee78b4a009c60105dbe551b1e8bab1b51', 'validated', '{"audio_key":"2c68fd9879170c74b4a57fc10a62b1e06c036406227d2d473da1f49c2cebb353","entity_key":"ex_responsibility_corrections_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6fe4667beb19917759c310e4b7691adee78b4a009c60105dbe551b1e8bab1b51","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/2c68fd9879170c74b4a57fc10a62b1e06c036406227d2d473da1f49c2cebb353.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_project_documentation_05 -> audio/generated/de-DE/utterances/2ed66cfb8c35ca9e0b4207edf6f7f7873555a1bb29303d17659e63354f615722.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('116c470e-02cc-53f2-afee-f8800f6cb2c8', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_project_documentation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9c57872f15922736cf4fcecd0a376981b06dd4485987d9ff5d04d50d1ad0078d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('284cc0c2-05eb-557c-b264-677f720eed31', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('116c470e-02cc-53f2-afee-f8800f6cb2c8', 1), '9c57872f15922736cf4fcecd0a376981b06dd4485987d9ff5d04d50d1ad0078d',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/2ed66cfb8c35ca9e0b4207edf6f7f7873555a1bb29303d17659e63354f615722.mp3', 5982, '2026-09-13 08:48:18.857197', 'c598af61e97933278045267475c3535c94a945ac7e1a38bea5c7b70cd3fd74da', 'validated', '{"audio_key":"2ed66cfb8c35ca9e0b4207edf6f7f7873555a1bb29303d17659e63354f615722","entity_key":"u_project_documentation_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c598af61e97933278045267475c3535c94a945ac7e1a38bea5c7b70cd3fd74da","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/2ed66cfb8c35ca9e0b4207edf6f7f7873555a1bb29303d17659e63354f615722.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_project_documentation_03_listen -> audio/generated/de-DE/utterances/2ed66cfb8c35ca9e0b4207edf6f7f7873555a1bb29303d17659e63354f615722.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('624bf61a-2fdc-5e76-a008-06a103323c0b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_project_documentation_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9c57872f15922736cf4fcecd0a376981b06dd4485987d9ff5d04d50d1ad0078d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0ab26a9c-90cf-57ae-a00a-45288834de32', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('624bf61a-2fdc-5e76-a008-06a103323c0b', 1), '9c57872f15922736cf4fcecd0a376981b06dd4485987d9ff5d04d50d1ad0078d',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/2ed66cfb8c35ca9e0b4207edf6f7f7873555a1bb29303d17659e63354f615722.mp3', 5982, '2026-09-13 08:48:18.857197', 'c598af61e97933278045267475c3535c94a945ac7e1a38bea5c7b70cd3fd74da', 'validated', '{"audio_key":"2ed66cfb8c35ca9e0b4207edf6f7f7873555a1bb29303d17659e63354f615722","entity_key":"ex_project_documentation_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c598af61e97933278045267475c3535c94a945ac7e1a38bea5c7b70cd3fd74da","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/2ed66cfb8c35ca9e0b4207edf6f7f7873555a1bb29303d17659e63354f615722.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_cultural_reviews_02 -> audio/generated/de-DE/utterances/2f0ba3f04f785574d1bbfbdacaa7659f244a775ef148090300e884b0f3dfde7d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('8bfefc7a-4a78-52b2-900c-0e7dd0b27adf', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_cultural_reviews_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f34768ef0a7814ece956f3c7700ed75bfbdc7225344dd482f8f2d05609d14c68'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d9f6cc62-ac84-51e6-a699-7f8ff7bbb5d6', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('8bfefc7a-4a78-52b2-900c-0e7dd0b27adf', 1), 'f34768ef0a7814ece956f3c7700ed75bfbdc7225344dd482f8f2d05609d14c68',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/2f0ba3f04f785574d1bbfbdacaa7659f244a775ef148090300e884b0f3dfde7d.mp3', 5459, '2026-09-13 08:48:19.391968', 'e6c4b1ac477133ea4326293bec1ca660526838bfb4267809c89698aa740dc906', 'validated', '{"audio_key":"2f0ba3f04f785574d1bbfbdacaa7659f244a775ef148090300e884b0f3dfde7d","entity_key":"u_cultural_reviews_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e6c4b1ac477133ea4326293bec1ca660526838bfb4267809c89698aa740dc906","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/2f0ba3f04f785574d1bbfbdacaa7659f244a775ef148090300e884b0f3dfde7d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_cultural_reviews_05 -> audio/generated/de-DE/utterances/3108b430d99d430e236c88eacc690e5773b8ef3ae6d8af996912d00b490c6151.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('47e9c28a-72eb-5b51-a32b-0f834f7508b9', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_cultural_reviews_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e64e17eb2e872a45d7d2d71c84a3039ef0a9aa121b867fdc33083fd44050ffd0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3829de7c-7548-5ffe-ac54-3c9a99067d8b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('47e9c28a-72eb-5b51-a32b-0f834f7508b9', 1), 'e64e17eb2e872a45d7d2d71c84a3039ef0a9aa121b867fdc33083fd44050ffd0',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/3108b430d99d430e236c88eacc690e5773b8ef3ae6d8af996912d00b490c6151.mp3', 4675, '2026-09-13 08:48:20.287930', '22520a9c8ab4d5fe53351b7b320fb9319d15c880203c874e0aacb77ac1ded455', 'validated', '{"audio_key":"3108b430d99d430e236c88eacc690e5773b8ef3ae6d8af996912d00b490c6151","entity_key":"u_cultural_reviews_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"22520a9c8ab4d5fe53351b7b320fb9319d15c880203c874e0aacb77ac1ded455","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/3108b430d99d430e236c88eacc690e5773b8ef3ae6d8af996912d00b490c6151.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_cultural_reviews_03_listen -> audio/generated/de-DE/utterances/3108b430d99d430e236c88eacc690e5773b8ef3ae6d8af996912d00b490c6151.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('6678a7cb-947b-5b4b-b508-c9cb06221df2', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_cultural_reviews_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e64e17eb2e872a45d7d2d71c84a3039ef0a9aa121b867fdc33083fd44050ffd0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('586b77e9-f5c4-5102-b717-4a4fd1b56228', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('6678a7cb-947b-5b4b-b508-c9cb06221df2', 1), 'e64e17eb2e872a45d7d2d71c84a3039ef0a9aa121b867fdc33083fd44050ffd0',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/3108b430d99d430e236c88eacc690e5773b8ef3ae6d8af996912d00b490c6151.mp3', 4675, '2026-09-13 08:48:20.287930', '22520a9c8ab4d5fe53351b7b320fb9319d15c880203c874e0aacb77ac1ded455', 'validated', '{"audio_key":"3108b430d99d430e236c88eacc690e5773b8ef3ae6d8af996912d00b490c6151","entity_key":"ex_cultural_reviews_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"22520a9c8ab4d5fe53351b7b320fb9319d15c880203c874e0aacb77ac1ded455","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/3108b430d99d430e236c88eacc690e5773b8ef3ae6d8af996912d00b490c6151.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_shared_planning_04 -> audio/generated/de-DE/utterances/3712d4207c3ac091152dbdb1ed89af0903444f3ee421289654721065e3e62dc0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('fe7fc1d1-943e-59fd-87a8-3f695f7fdd22', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_shared_planning_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b4c5761d0dd005b4fe7bc5e17af7087ad6b5586c61ee2dca48f675f5b9585fc8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7c035679-8f6d-5fea-be7a-0a8f0e824686', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('fe7fc1d1-943e-59fd-87a8-3f695f7fdd22', 1), 'b4c5761d0dd005b4fe7bc5e17af7087ad6b5586c61ee2dca48f675f5b9585fc8',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/3712d4207c3ac091152dbdb1ed89af0903444f3ee421289654721065e3e62dc0.mp3', 3709, '2026-09-13 08:48:20.720997', '8b6bc5ebbf6189afe95d7de37dc177badbaa693ea3262131eac1530839c7ff7d', 'validated', '{"audio_key":"3712d4207c3ac091152dbdb1ed89af0903444f3ee421289654721065e3e62dc0","entity_key":"u_shared_planning_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8b6bc5ebbf6189afe95d7de37dc177badbaa693ea3262131eac1530839c7ff7d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/3712d4207c3ac091152dbdb1ed89af0903444f3ee421289654721065e3e62dc0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_cultural_reviews_03 -> audio/generated/de-DE/utterances/3c4d6677a8ac3d83718601f5d532ba11a5045a90b8a869b4f47d3a66a08a18a5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('107374c1-ce88-5fab-b002-c23456984c21', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_cultural_reviews_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '47fb274ca7e5a98b76ef79a24e0c098c76803a42ca7909bd7efd0727d81df886'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cd22f5f3-c066-50ff-ba8e-8d4aa845307e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('107374c1-ce88-5fab-b002-c23456984c21', 1), '47fb274ca7e5a98b76ef79a24e0c098c76803a42ca7909bd7efd0727d81df886',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/3c4d6677a8ac3d83718601f5d532ba11a5045a90b8a869b4f47d3a66a08a18a5.mp3', 4075, '2026-09-13 08:48:21.688932', 'ee91d865b73d62a75e403e4ab3c660a4992483f27c4349d2439d89b99de3dea5', 'validated', '{"audio_key":"3c4d6677a8ac3d83718601f5d532ba11a5045a90b8a869b4f47d3a66a08a18a5","entity_key":"u_cultural_reviews_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ee91d865b73d62a75e403e4ab3c660a4992483f27c4349d2439d89b99de3dea5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/3c4d6677a8ac3d83718601f5d532ba11a5045a90b8a869b4f47d3a66a08a18a5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_cultural_reviews_02_listen -> audio/generated/de-DE/utterances/3c4d6677a8ac3d83718601f5d532ba11a5045a90b8a869b4f47d3a66a08a18a5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('bcb6a18a-70dc-5f8d-9330-238bacfd8619', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_cultural_reviews_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '47fb274ca7e5a98b76ef79a24e0c098c76803a42ca7909bd7efd0727d81df886'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e6792742-1944-5881-a2d8-61f44021475c', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('bcb6a18a-70dc-5f8d-9330-238bacfd8619', 1), '47fb274ca7e5a98b76ef79a24e0c098c76803a42ca7909bd7efd0727d81df886',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/3c4d6677a8ac3d83718601f5d532ba11a5045a90b8a869b4f47d3a66a08a18a5.mp3', 4075, '2026-09-13 08:48:21.688932', 'ee91d865b73d62a75e403e4ab3c660a4992483f27c4349d2439d89b99de3dea5', 'validated', '{"audio_key":"3c4d6677a8ac3d83718601f5d532ba11a5045a90b8a869b4f47d3a66a08a18a5","entity_key":"ex_cultural_reviews_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ee91d865b73d62a75e403e4ab3c660a4992483f27c4349d2439d89b99de3dea5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/3c4d6677a8ac3d83718601f5d532ba11a5045a90b8a869b4f47d3a66a08a18a5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_structured_meetings_03 -> audio/generated/de-DE/utterances/3d6a322018eb8adf282d1d80ceb0dd6a6c3e54ed9e2162141112fa0dd37badc4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('341b846f-3621-58c2-832b-e11067854f68', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_structured_meetings_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'af9f1959fb7fd27748cb5d5507157b65f651390c643c0a7db7c6be69080ace6a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2dfb86d2-2c83-5086-a4f2-1bdf5caecfa0', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('341b846f-3621-58c2-832b-e11067854f68', 1), 'af9f1959fb7fd27748cb5d5507157b65f651390c643c0a7db7c6be69080ace6a',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/3d6a322018eb8adf282d1d80ceb0dd6a6c3e54ed9e2162141112fa0dd37badc4.mp3', 4205, '2026-09-13 08:48:22.063839', 'd45da0c92898b2ec37ff48c3e38393a35decb8b322366a1bbf2dfc842af86c9c', 'validated', '{"audio_key":"3d6a322018eb8adf282d1d80ceb0dd6a6c3e54ed9e2162141112fa0dd37badc4","entity_key":"u_structured_meetings_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d45da0c92898b2ec37ff48c3e38393a35decb8b322366a1bbf2dfc842af86c9c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/3d6a322018eb8adf282d1d80ceb0dd6a6c3e54ed9e2162141112fa0dd37badc4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_structured_meetings_02_listen -> audio/generated/de-DE/utterances/3d6a322018eb8adf282d1d80ceb0dd6a6c3e54ed9e2162141112fa0dd37badc4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('5401f103-c87a-5efe-8d92-4546cae2dac7', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_structured_meetings_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'af9f1959fb7fd27748cb5d5507157b65f651390c643c0a7db7c6be69080ace6a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0830acb0-067b-5442-b379-920498aa59b9', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('5401f103-c87a-5efe-8d92-4546cae2dac7', 1), 'af9f1959fb7fd27748cb5d5507157b65f651390c643c0a7db7c6be69080ace6a',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/3d6a322018eb8adf282d1d80ceb0dd6a6c3e54ed9e2162141112fa0dd37badc4.mp3', 4205, '2026-09-13 08:48:22.063839', 'd45da0c92898b2ec37ff48c3e38393a35decb8b322366a1bbf2dfc842af86c9c', 'validated', '{"audio_key":"3d6a322018eb8adf282d1d80ceb0dd6a6c3e54ed9e2162141112fa0dd37badc4","entity_key":"ex_structured_meetings_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d45da0c92898b2ec37ff48c3e38393a35decb8b322366a1bbf2dfc842af86c9c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/3d6a322018eb8adf282d1d80ceb0dd6a6c3e54ed9e2162141112fa0dd37badc4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_venue_comparison_03 -> audio/generated/de-DE/utterances/3e2b8614b8dbfe8d4f21c3dba698fc561cab8b5912161e0b230916bc59814196.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('4bc32000-e8b6-5223-be80-fc585dfa7f4c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_venue_comparison_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '505d862f830d51d048f2ea0b4cd36f93396872f3136b8f912ef32ca72e738fcb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2b76b4e0-62da-551f-9ecd-6f3cd8ddc51c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('4bc32000-e8b6-5223-be80-fc585dfa7f4c', 1), '505d862f830d51d048f2ea0b4cd36f93396872f3136b8f912ef32ca72e738fcb',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/3e2b8614b8dbfe8d4f21c3dba698fc561cab8b5912161e0b230916bc59814196.mp3', 3239, '2026-09-13 08:48:22.982514', '192c8eb8db6e048fc4588077a7cac38398a2bd443ecc042c1dd27227706f20b8', 'validated', '{"audio_key":"3e2b8614b8dbfe8d4f21c3dba698fc561cab8b5912161e0b230916bc59814196","entity_key":"u_venue_comparison_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"192c8eb8db6e048fc4588077a7cac38398a2bd443ecc042c1dd27227706f20b8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/3e2b8614b8dbfe8d4f21c3dba698fc561cab8b5912161e0b230916bc59814196.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_venue_comparison_02_listen -> audio/generated/de-DE/utterances/3e2b8614b8dbfe8d4f21c3dba698fc561cab8b5912161e0b230916bc59814196.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('70945a9a-aee5-52e2-ad04-376208210540', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_venue_comparison_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '505d862f830d51d048f2ea0b4cd36f93396872f3136b8f912ef32ca72e738fcb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('115fea3c-4ef9-5896-ae93-5604a0ae96ef', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('70945a9a-aee5-52e2-ad04-376208210540', 1), '505d862f830d51d048f2ea0b4cd36f93396872f3136b8f912ef32ca72e738fcb',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/3e2b8614b8dbfe8d4f21c3dba698fc561cab8b5912161e0b230916bc59814196.mp3', 3239, '2026-09-13 08:48:22.982514', '192c8eb8db6e048fc4588077a7cac38398a2bd443ecc042c1dd27227706f20b8', 'validated', '{"audio_key":"3e2b8614b8dbfe8d4f21c3dba698fc561cab8b5912161e0b230916bc59814196","entity_key":"ex_venue_comparison_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"192c8eb8db6e048fc4588077a7cac38398a2bd443ecc042c1dd27227706f20b8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/3e2b8614b8dbfe8d4f21c3dba698fc561cab8b5912161e0b230916bc59814196.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_shared_planning_05 -> audio/generated/de-DE/utterances/4a508302e43c3de8ce915274373da7889d72ffd51bb33f8a670b46fd2175a21b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('bfd5a4c2-e1c1-5037-8378-2744af4f0720', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_shared_planning_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fca28b820e6cd4aeb31800892ea3f02b12fc4a474af07736802f0329ad737da3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('536a45fb-c8b2-5cee-ae90-08d8ae8988f9', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('bfd5a4c2-e1c1-5037-8378-2744af4f0720', 1), 'fca28b820e6cd4aeb31800892ea3f02b12fc4a474af07736802f0329ad737da3',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4a508302e43c3de8ce915274373da7889d72ffd51bb33f8a670b46fd2175a21b.mp3', 3892, '2026-09-13 08:48:23.371682', 'ef6ab1915d4d506e3e0948088dc2c6e3e26f01360622e6dcb0a1d595b66189cf', 'validated', '{"audio_key":"4a508302e43c3de8ce915274373da7889d72ffd51bb33f8a670b46fd2175a21b","entity_key":"u_shared_planning_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ef6ab1915d4d506e3e0948088dc2c6e3e26f01360622e6dcb0a1d595b66189cf","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4a508302e43c3de8ce915274373da7889d72ffd51bb33f8a670b46fd2175a21b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_shared_planning_03_listen -> audio/generated/de-DE/utterances/4a508302e43c3de8ce915274373da7889d72ffd51bb33f8a670b46fd2175a21b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('d046d079-b939-5a18-9789-f98787f76dd3', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_shared_planning_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fca28b820e6cd4aeb31800892ea3f02b12fc4a474af07736802f0329ad737da3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4a47bf25-ccdb-58c8-be0f-ff64a3dec652', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('d046d079-b939-5a18-9789-f98787f76dd3', 1), 'fca28b820e6cd4aeb31800892ea3f02b12fc4a474af07736802f0329ad737da3',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4a508302e43c3de8ce915274373da7889d72ffd51bb33f8a670b46fd2175a21b.mp3', 3892, '2026-09-13 08:48:23.371682', 'ef6ab1915d4d506e3e0948088dc2c6e3e26f01360622e6dcb0a1d595b66189cf', 'validated', '{"audio_key":"4a508302e43c3de8ce915274373da7889d72ffd51bb33f8a670b46fd2175a21b","entity_key":"ex_shared_planning_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ef6ab1915d4d506e3e0948088dc2c6e3e26f01360622e6dcb0a1d595b66189cf","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4a508302e43c3de8ce915274373da7889d72ffd51bb33f8a670b46fd2175a21b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_learning_goals_02 -> audio/generated/de-DE/utterances/4b7a7e8247766d2990f97e66c360e27bf348d06d280fc91cbdf03ad01c1b02fc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ada31f90-eb7d-54e7-88b6-88974dc28fed', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_learning_goals_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e7ee784af1e6a41892b72ac297e998bbafb3c4c6e2abbbcf1e85dcacbda179b2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3243ed32-0b67-5bde-9ab4-3cd202dc3a43', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ada31f90-eb7d-54e7-88b6-88974dc28fed', 1), 'e7ee784af1e6a41892b72ac297e998bbafb3c4c6e2abbbcf1e85dcacbda179b2',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4b7a7e8247766d2990f97e66c360e27bf348d06d280fc91cbdf03ad01c1b02fc.mp3', 3160, '2026-09-13 08:48:24.215257', '6f9802a24be39652913c34bc2cfa427ec1129617cdb42ed94b4dfcf583e9b7d8', 'validated', '{"audio_key":"4b7a7e8247766d2990f97e66c360e27bf348d06d280fc91cbdf03ad01c1b02fc","entity_key":"u_learning_goals_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6f9802a24be39652913c34bc2cfa427ec1129617cdb42ed94b4dfcf583e9b7d8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4b7a7e8247766d2990f97e66c360e27bf348d06d280fc91cbdf03ad01c1b02fc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_structured_meetings_05 -> audio/generated/de-DE/utterances/4f55cfe2207cef361110c153128b15239e959ac732dfdc953336bc227820dbbc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('5c355cca-48ce-50b8-8323-af51efd73a19', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_structured_meetings_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cb509dc53c05ebe2f8edf3457ae95c1335a7398c0cf4777499ae6de58c450d4c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('53165fe8-36df-55d5-a30d-b7079c70d017', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('5c355cca-48ce-50b8-8323-af51efd73a19', 1), 'cb509dc53c05ebe2f8edf3457ae95c1335a7398c0cf4777499ae6de58c450d4c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4f55cfe2207cef361110c153128b15239e959ac732dfdc953336bc227820dbbc.mp3', 3004, '2026-09-13 08:48:24.597441', 'f766be1b340969533501e9e133ce7c090acbfefe8dd0446cdaae6323abba0023', 'validated', '{"audio_key":"4f55cfe2207cef361110c153128b15239e959ac732dfdc953336bc227820dbbc","entity_key":"u_structured_meetings_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f766be1b340969533501e9e133ce7c090acbfefe8dd0446cdaae6323abba0023","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4f55cfe2207cef361110c153128b15239e959ac732dfdc953336bc227820dbbc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_structured_meetings_03_listen -> audio/generated/de-DE/utterances/4f55cfe2207cef361110c153128b15239e959ac732dfdc953336bc227820dbbc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('af2cbc12-59c9-5b95-ac3a-2aecc9caedc1', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_structured_meetings_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cb509dc53c05ebe2f8edf3457ae95c1335a7398c0cf4777499ae6de58c450d4c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cacc734d-c059-5d9a-b555-0a20ae8fe0ef', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('af2cbc12-59c9-5b95-ac3a-2aecc9caedc1', 1), 'cb509dc53c05ebe2f8edf3457ae95c1335a7398c0cf4777499ae6de58c450d4c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4f55cfe2207cef361110c153128b15239e959ac732dfdc953336bc227820dbbc.mp3', 3004, '2026-09-13 08:48:24.597441', 'f766be1b340969533501e9e133ce7c090acbfefe8dd0446cdaae6323abba0023', 'validated', '{"audio_key":"4f55cfe2207cef361110c153128b15239e959ac732dfdc953336bc227820dbbc","entity_key":"ex_structured_meetings_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f766be1b340969533501e9e133ce7c090acbfefe8dd0446cdaae6323abba0023","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4f55cfe2207cef361110c153128b15239e959ac732dfdc953336bc227820dbbc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_learning_goals_04 -> audio/generated/de-DE/utterances/5bb436cec00473c88cbe7c55c88ce8bece1a92dd0eeabf4ad172568d83517eb6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9386539c-48d1-55b0-9d8c-50f268bdb4f5', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_learning_goals_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '63e740b3c38e655eaad8335f7dc388deca280d7751fde18595e98776c8ea3f73'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7de1188f-95c4-56c3-a2b8-d588a056fd97', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9386539c-48d1-55b0-9d8c-50f268bdb4f5', 1), '63e740b3c38e655eaad8335f7dc388deca280d7751fde18595e98776c8ea3f73',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5bb436cec00473c88cbe7c55c88ce8bece1a92dd0eeabf4ad172568d83517eb6.mp3', 5146, '2026-09-13 08:48:25.703926', '4c33bf76219de1259849e94405ebdf219bf45e73d7f017191e4928d1d4065b8d', 'validated', '{"audio_key":"5bb436cec00473c88cbe7c55c88ce8bece1a92dd0eeabf4ad172568d83517eb6","entity_key":"u_learning_goals_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4c33bf76219de1259849e94405ebdf219bf45e73d7f017191e4928d1d4065b8d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5bb436cec00473c88cbe7c55c88ce8bece1a92dd0eeabf4ad172568d83517eb6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_rules_requirements_01 -> audio/generated/de-DE/utterances/5cf9577a01c6f25f8d1f27fabe0dce311fcf3db8d0df959139afc008dcc7d322.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f2709760-880e-513c-b9ae-a894cd3d5eca', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_rules_requirements_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dfb744c9a82e56f01a779fa238c58b1fed444087d84bd185d8748f75e63de583'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c3bf4775-bd35-54cc-b906-54f61e77adc2', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f2709760-880e-513c-b9ae-a894cd3d5eca', 1), 'dfb744c9a82e56f01a779fa238c58b1fed444087d84bd185d8748f75e63de583',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5cf9577a01c6f25f8d1f27fabe0dce311fcf3db8d0df959139afc008dcc7d322.mp3', 3761, '2026-09-13 08:48:25.941844', '3dcf8dfa17f7e3bf8bb062d6f460994742e504e1318483c2b902c8b98715e424', 'validated', '{"audio_key":"5cf9577a01c6f25f8d1f27fabe0dce311fcf3db8d0df959139afc008dcc7d322","entity_key":"u_rules_requirements_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3dcf8dfa17f7e3bf8bb062d6f460994742e504e1318483c2b902c8b98715e424","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5cf9577a01c6f25f8d1f27fabe0dce311fcf3db8d0df959139afc008dcc7d322.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_rules_requirements_01_listen -> audio/generated/de-DE/utterances/5cf9577a01c6f25f8d1f27fabe0dce311fcf3db8d0df959139afc008dcc7d322.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('9e8d3fe1-5403-505c-a50d-aae5d0f1957b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_rules_requirements_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dfb744c9a82e56f01a779fa238c58b1fed444087d84bd185d8748f75e63de583'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4fdfdeaa-079a-538d-a7d3-840e7d52973c', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('9e8d3fe1-5403-505c-a50d-aae5d0f1957b', 1), 'dfb744c9a82e56f01a779fa238c58b1fed444087d84bd185d8748f75e63de583',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5cf9577a01c6f25f8d1f27fabe0dce311fcf3db8d0df959139afc008dcc7d322.mp3', 3761, '2026-09-13 08:48:25.941844', '3dcf8dfa17f7e3bf8bb062d6f460994742e504e1318483c2b902c8b98715e424', 'validated', '{"audio_key":"5cf9577a01c6f25f8d1f27fabe0dce311fcf3db8d0df959139afc008dcc7d322","entity_key":"ex_rules_requirements_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3dcf8dfa17f7e3bf8bb062d6f460994742e504e1318483c2b902c8b98715e424","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5cf9577a01c6f25f8d1f27fabe0dce311fcf3db8d0df959139afc008dcc7d322.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_rules_requirements_03 -> audio/generated/de-DE/utterances/634d9ee158e477f50fc729841bfa171b9d0a073dac7fc4c9b26ef58f19c8b909.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2aa8664f-081d-51d7-af43-c13d522b6992', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_rules_requirements_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '11ef18e88b7b6eac6ff6dd98c298edaada081f95593638c1acb58ac438b872c5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9946dd91-e442-5151-88bc-1239bdf13e2a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2aa8664f-081d-51d7-af43-c13d522b6992', 1), '11ef18e88b7b6eac6ff6dd98c298edaada081f95593638c1acb58ac438b872c5',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/634d9ee158e477f50fc729841bfa171b9d0a073dac7fc4c9b26ef58f19c8b909.mp3', 4257, '2026-09-13 08:48:27.054445', '2244079090111ee1fc135fc73ddbd00732158d39972fe8188718bde66d4a9f28', 'validated', '{"audio_key":"634d9ee158e477f50fc729841bfa171b9d0a073dac7fc4c9b26ef58f19c8b909","entity_key":"u_rules_requirements_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2244079090111ee1fc135fc73ddbd00732158d39972fe8188718bde66d4a9f28","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/634d9ee158e477f50fc729841bfa171b9d0a073dac7fc4c9b26ef58f19c8b909.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_rules_requirements_02_listen -> audio/generated/de-DE/utterances/634d9ee158e477f50fc729841bfa171b9d0a073dac7fc4c9b26ef58f19c8b909.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('483b6306-5231-5d92-b6d5-0dd36f0e2380', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_rules_requirements_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '11ef18e88b7b6eac6ff6dd98c298edaada081f95593638c1acb58ac438b872c5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4a838858-3422-5180-bbd1-b0506c7c564c', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('483b6306-5231-5d92-b6d5-0dd36f0e2380', 1), '11ef18e88b7b6eac6ff6dd98c298edaada081f95593638c1acb58ac438b872c5',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/634d9ee158e477f50fc729841bfa171b9d0a073dac7fc4c9b26ef58f19c8b909.mp3', 4257, '2026-09-13 08:48:27.054445', '2244079090111ee1fc135fc73ddbd00732158d39972fe8188718bde66d4a9f28', 'validated', '{"audio_key":"634d9ee158e477f50fc729841bfa171b9d0a073dac7fc4c9b26ef58f19c8b909","entity_key":"ex_rules_requirements_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2244079090111ee1fc135fc73ddbd00732158d39972fe8188718bde66d4a9f28","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/634d9ee158e477f50fc729841bfa171b9d0a073dac7fc4c9b26ef58f19c8b909.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_rules_requirements_05 -> audio/generated/de-DE/utterances/64988086430af85bf40e9b08be3755ac6140012998fc110020acfd87b44b7200.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3fe1089b-0738-5fcc-ab3a-a54f55de5afb', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_rules_requirements_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1cc8ec6f77e3d26072665e5718be0b81f41ff5722b86260fac6e360e9a5ee262'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d1194394-46e9-5982-8ac6-e99f1569e40c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3fe1089b-0738-5fcc-ab3a-a54f55de5afb', 1), '1cc8ec6f77e3d26072665e5718be0b81f41ff5722b86260fac6e360e9a5ee262',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/64988086430af85bf40e9b08be3755ac6140012998fc110020acfd87b44b7200.mp3', 5041, '2026-09-13 08:48:27.415677', 'e25a1ff34d2753c8a484e384ea1b785ffb9de9ab5f54c416f99ba9b611f6b0dd', 'validated', '{"audio_key":"64988086430af85bf40e9b08be3755ac6140012998fc110020acfd87b44b7200","entity_key":"u_rules_requirements_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e25a1ff34d2753c8a484e384ea1b785ffb9de9ab5f54c416f99ba9b611f6b0dd","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/64988086430af85bf40e9b08be3755ac6140012998fc110020acfd87b44b7200.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_rules_requirements_03_listen -> audio/generated/de-DE/utterances/64988086430af85bf40e9b08be3755ac6140012998fc110020acfd87b44b7200.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('77e3b5d0-6a02-5e80-b6a5-5f342b873cc6', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_rules_requirements_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1cc8ec6f77e3d26072665e5718be0b81f41ff5722b86260fac6e360e9a5ee262'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3962e19f-d648-526f-a222-aa691a934c01', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('77e3b5d0-6a02-5e80-b6a5-5f342b873cc6', 1), '1cc8ec6f77e3d26072665e5718be0b81f41ff5722b86260fac6e360e9a5ee262',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/64988086430af85bf40e9b08be3755ac6140012998fc110020acfd87b44b7200.mp3', 5041, '2026-09-13 08:48:27.415677', 'e25a1ff34d2753c8a484e384ea1b785ffb9de9ab5f54c416f99ba9b611f6b0dd', 'validated', '{"audio_key":"64988086430af85bf40e9b08be3755ac6140012998fc110020acfd87b44b7200","entity_key":"ex_rules_requirements_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e25a1ff34d2753c8a484e384ea1b785ffb9de9ab5f54c416f99ba9b611f6b0dd","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/64988086430af85bf40e9b08be3755ac6140012998fc110020acfd87b44b7200.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_responsibility_corrections_02 -> audio/generated/de-DE/utterances/64d2bdaffd36dfdc0e28223fa1a5a566e4c1d9ebf9f8415a0b4696e78006d876.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a956d688-3dcb-5c2f-a095-985e4cc6c314', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_responsibility_corrections_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f559025e2ba5cd8e18a986a1a69760ed6f543f4798cdc5c8f58181e2ce6fcc2d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('348c4452-fcc8-5765-95a3-6082d4a081cc', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a956d688-3dcb-5c2f-a095-985e4cc6c314', 1), 'f559025e2ba5cd8e18a986a1a69760ed6f543f4798cdc5c8f58181e2ce6fcc2d',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/64d2bdaffd36dfdc0e28223fa1a5a566e4c1d9ebf9f8415a0b4696e78006d876.mp3', 4545, '2026-09-13 08:48:28.497990', '2476401b2d037011cc45d3f6db68dc73d761988dd5a330e549bd6b58d6e92bcf', 'validated', '{"audio_key":"64d2bdaffd36dfdc0e28223fa1a5a566e4c1d9ebf9f8415a0b4696e78006d876","entity_key":"u_responsibility_corrections_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2476401b2d037011cc45d3f6db68dc73d761988dd5a330e549bd6b58d6e92bcf","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/64d2bdaffd36dfdc0e28223fa1a5a566e4c1d9ebf9f8415a0b4696e78006d876.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_experience_reflection_01 -> audio/generated/de-DE/utterances/66280570126c8f3240783b25dfe155c952fbdddfc8e033eb00a0e2c0cbbdfc21.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('10b89349-8ac9-536f-b5d6-c9105e8d2a60', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_experience_reflection_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f4ebd74551e119d2d9009f0398eb62748deec5cd12ae5a40f670da2bc3ddd8cf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3a1997d2-7efa-59f3-83af-33546bdaf930', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('10b89349-8ac9-536f-b5d6-c9105e8d2a60', 1), 'f4ebd74551e119d2d9009f0398eb62748deec5cd12ae5a40f670da2bc3ddd8cf',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/66280570126c8f3240783b25dfe155c952fbdddfc8e033eb00a0e2c0cbbdfc21.mp3', 4022, '2026-09-13 08:48:28.734396', '5d875cb2e9dc8a2397121731a60616ac3760cfd0c21750f0e3ea22ab5a2bc225', 'validated', '{"audio_key":"66280570126c8f3240783b25dfe155c952fbdddfc8e033eb00a0e2c0cbbdfc21","entity_key":"u_experience_reflection_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5d875cb2e9dc8a2397121731a60616ac3760cfd0c21750f0e3ea22ab5a2bc225","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/66280570126c8f3240783b25dfe155c952fbdddfc8e033eb00a0e2c0cbbdfc21.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_experience_reflection_01_listen -> audio/generated/de-DE/utterances/66280570126c8f3240783b25dfe155c952fbdddfc8e033eb00a0e2c0cbbdfc21.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('3c2d333b-3c51-5325-b12c-0c636d6e51ef', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_experience_reflection_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f4ebd74551e119d2d9009f0398eb62748deec5cd12ae5a40f670da2bc3ddd8cf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1220ecd4-20bb-55de-a43c-6b4fc4a278c5', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('3c2d333b-3c51-5325-b12c-0c636d6e51ef', 1), 'f4ebd74551e119d2d9009f0398eb62748deec5cd12ae5a40f670da2bc3ddd8cf',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/66280570126c8f3240783b25dfe155c952fbdddfc8e033eb00a0e2c0cbbdfc21.mp3', 4022, '2026-09-13 08:48:28.734396', '5d875cb2e9dc8a2397121731a60616ac3760cfd0c21750f0e3ea22ab5a2bc225', 'validated', '{"audio_key":"66280570126c8f3240783b25dfe155c952fbdddfc8e033eb00a0e2c0cbbdfc21","entity_key":"ex_experience_reflection_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5d875cb2e9dc8a2397121731a60616ac3760cfd0c21750f0e3ea22ab5a2bc225","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/66280570126c8f3240783b25dfe155c952fbdddfc8e033eb00a0e2c0cbbdfc21.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_shared_planning_03 -> audio/generated/de-DE/utterances/6652921d7a494ea712ca2e42f329c3d8f5e1291c7b3274afc49672fc450f7afb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('53f05b09-d5ef-5b8f-8487-a595a99afa76', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_shared_planning_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4078268d61fa3355428a1ae1698bc4fe6e1d5bd27f074cdeb2fd914d365d7645'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e1ae9096-0627-5288-93b9-9d730ea9cfc5', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('53f05b09-d5ef-5b8f-8487-a595a99afa76', 1), '4078268d61fa3355428a1ae1698bc4fe6e1d5bd27f074cdeb2fd914d365d7645',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/6652921d7a494ea712ca2e42f329c3d8f5e1291c7b3274afc49672fc450f7afb.mp3', 3892, '2026-09-13 08:48:29.828388', '1a58dc298ef54dd8e23895894006009ea8a090d7778f4bc4cd4746c23be81da1', 'validated', '{"audio_key":"6652921d7a494ea712ca2e42f329c3d8f5e1291c7b3274afc49672fc450f7afb","entity_key":"u_shared_planning_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1a58dc298ef54dd8e23895894006009ea8a090d7778f4bc4cd4746c23be81da1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/6652921d7a494ea712ca2e42f329c3d8f5e1291c7b3274afc49672fc450f7afb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_shared_planning_02_listen -> audio/generated/de-DE/utterances/6652921d7a494ea712ca2e42f329c3d8f5e1291c7b3274afc49672fc450f7afb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('a3e32f7a-2bd0-5582-b48b-a4acfd5c176f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_shared_planning_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4078268d61fa3355428a1ae1698bc4fe6e1d5bd27f074cdeb2fd914d365d7645'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9764fae6-936b-5f35-b2fe-136c99aa73de', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('a3e32f7a-2bd0-5582-b48b-a4acfd5c176f', 1), '4078268d61fa3355428a1ae1698bc4fe6e1d5bd27f074cdeb2fd914d365d7645',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/6652921d7a494ea712ca2e42f329c3d8f5e1291c7b3274afc49672fc450f7afb.mp3', 3892, '2026-09-13 08:48:29.828388', '1a58dc298ef54dd8e23895894006009ea8a090d7778f4bc4cd4746c23be81da1', 'validated', '{"audio_key":"6652921d7a494ea712ca2e42f329c3d8f5e1291c7b3274afc49672fc450f7afb","entity_key":"ex_shared_planning_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1a58dc298ef54dd8e23895894006009ea8a090d7778f4bc4cd4746c23be81da1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/6652921d7a494ea712ca2e42f329c3d8f5e1291c7b3274afc49672fc450f7afb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_responsibility_corrections_06 -> audio/generated/de-DE/utterances/687f4359a9de9c79e4f19e4f233159dc4c96419c51c5712d0e012dbd6e765c2e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('8e4d5f7c-f95a-5b84-b4ce-322046544938', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_responsibility_corrections_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f8e3b10cb6493f6cf3401f1dc81d8fa1e73e81853a83adac9bd21e1d5f6a412c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cc02eb2d-e67b-5285-aa2b-e73766092486', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('8e4d5f7c-f95a-5b84-b4ce-322046544938', 1), 'f8e3b10cb6493f6cf3401f1dc81d8fa1e73e81853a83adac9bd21e1d5f6a412c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/687f4359a9de9c79e4f19e4f233159dc4c96419c51c5712d0e012dbd6e765c2e.mp3', 4414, '2026-09-13 08:48:30.220464', 'a6d3efd013cdae8dfb14a7e8ece645fc5b1729d67e085adbab60b8f37db5617c', 'validated', '{"audio_key":"687f4359a9de9c79e4f19e4f233159dc4c96419c51c5712d0e012dbd6e765c2e","entity_key":"u_responsibility_corrections_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a6d3efd013cdae8dfb14a7e8ece645fc5b1729d67e085adbab60b8f37db5617c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/687f4359a9de9c79e4f19e4f233159dc4c96419c51c5712d0e012dbd6e765c2e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_structured_meetings_02 -> audio/generated/de-DE/utterances/692d8f558bc8aad68e1395a2297ed498fe4624b26bde0970c69b213c13d893d7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('880aec33-3863-54ed-84c5-d569f94afc7f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_structured_meetings_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ec9f5107bd01adeec4bf6300da28897c1d72a75600e2b18926eaddc684115cd7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e5d3b668-8764-555b-af00-9977f450076c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('880aec33-3863-54ed-84c5-d569f94afc7f', 1), 'ec9f5107bd01adeec4bf6300da28897c1d72a75600e2b18926eaddc684115cd7',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/692d8f558bc8aad68e1395a2297ed498fe4624b26bde0970c69b213c13d893d7.mp3', 3840, '2026-09-13 08:48:31.120303', 'd72202fd31ed200a245b1109fa1578c16c6c4b2709d9bd6eda810277b78ec991', 'validated', '{"audio_key":"692d8f558bc8aad68e1395a2297ed498fe4624b26bde0970c69b213c13d893d7","entity_key":"u_structured_meetings_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d72202fd31ed200a245b1109fa1578c16c6c4b2709d9bd6eda810277b78ec991","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/692d8f558bc8aad68e1395a2297ed498fe4624b26bde0970c69b213c13d893d7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_venue_comparison_05 -> audio/generated/de-DE/utterances/79985fa4b92c6f509946c966a4bd7c873dcf45529fb9694ecdbb8db03cdd7272.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('68bf838f-87d6-5107-9095-215b94723edb', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_venue_comparison_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a081bb293548999f60a2db5bc0d2965f28a25869277c09b39484936816d70b32'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2def5186-c531-593f-8cf0-76255e41b246', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('68bf838f-87d6-5107-9095-215b94723edb', 1), 'a081bb293548999f60a2db5bc0d2965f28a25869277c09b39484936816d70b32',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/79985fa4b92c6f509946c966a4bd7c873dcf45529fb9694ecdbb8db03cdd7272.mp3', 4963, '2026-09-13 08:48:31.658585', '14916c32f5fa064b4e49a1b366f8408eab98c7bafe4f8083ceef0ec824ece6cf', 'validated', '{"audio_key":"79985fa4b92c6f509946c966a4bd7c873dcf45529fb9694ecdbb8db03cdd7272","entity_key":"u_venue_comparison_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"14916c32f5fa064b4e49a1b366f8408eab98c7bafe4f8083ceef0ec824ece6cf","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/79985fa4b92c6f509946c966a4bd7c873dcf45529fb9694ecdbb8db03cdd7272.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_venue_comparison_03_listen -> audio/generated/de-DE/utterances/79985fa4b92c6f509946c966a4bd7c873dcf45529fb9694ecdbb8db03cdd7272.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('7461e99f-88d5-5a3a-a171-76aba9d389ff', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_venue_comparison_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a081bb293548999f60a2db5bc0d2965f28a25869277c09b39484936816d70b32'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c788e0ec-59ae-5985-bbb2-bcbf3cbfe127', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('7461e99f-88d5-5a3a-a171-76aba9d389ff', 1), 'a081bb293548999f60a2db5bc0d2965f28a25869277c09b39484936816d70b32',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/79985fa4b92c6f509946c966a4bd7c873dcf45529fb9694ecdbb8db03cdd7272.mp3', 4963, '2026-09-13 08:48:31.658585', '14916c32f5fa064b4e49a1b366f8408eab98c7bafe4f8083ceef0ec824ece6cf', 'validated', '{"audio_key":"79985fa4b92c6f509946c966a4bd7c873dcf45529fb9694ecdbb8db03cdd7272","entity_key":"ex_venue_comparison_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"14916c32f5fa064b4e49a1b366f8408eab98c7bafe4f8083ceef0ec824ece6cf","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/79985fa4b92c6f509946c966a4bd7c873dcf45529fb9694ecdbb8db03cdd7272.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_learning_goals_06 -> audio/generated/de-DE/utterances/7ebb73c74e0e8770832d4ce97dc03c4cae119beb312bd6b5b5c7f866555bf959.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7c9550d4-04ec-5ddd-bba1-7faad50272ff', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_learning_goals_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1de15ac86341ea7ea44aec66d9951dae6eaee56b9f45eebea5d38e722783eecc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2f863271-9200-5a64-8963-790a16358252', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7c9550d4-04ec-5ddd-bba1-7faad50272ff', 1), '1de15ac86341ea7ea44aec66d9951dae6eaee56b9f45eebea5d38e722783eecc',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/7ebb73c74e0e8770832d4ce97dc03c4cae119beb312bd6b5b5c7f866555bf959.mp3', 6034, '2026-09-13 08:48:32.730070', 'd0bae7b8f4ed583a6dcce56fb3458ef8cfab6f3cdb3b25bc01c25d56af4130c0', 'validated', '{"audio_key":"7ebb73c74e0e8770832d4ce97dc03c4cae119beb312bd6b5b5c7f866555bf959","entity_key":"u_learning_goals_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d0bae7b8f4ed583a6dcce56fb3458ef8cfab6f3cdb3b25bc01c25d56af4130c0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/7ebb73c74e0e8770832d4ce97dc03c4cae119beb312bd6b5b5c7f866555bf959.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_learning_goals_05 -> audio/generated/de-DE/utterances/84e4983adb45aa982b4f18ae2871496ba5b4fadad4010c6bff3542980ce359e6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b6435ec4-06d6-5e72-af0d-7b66ab0505c8', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_learning_goals_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5bd6c0247c16239253a7a7e55c9d999aeb5775a20dec5a0057edea1bd5f2848e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bc982eab-f87b-550b-85b9-5a61726b7789', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b6435ec4-06d6-5e72-af0d-7b66ab0505c8', 1), '5bd6c0247c16239253a7a7e55c9d999aeb5775a20dec5a0057edea1bd5f2848e',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/84e4983adb45aa982b4f18ae2871496ba5b4fadad4010c6bff3542980ce359e6.mp3', 3996, '2026-09-13 08:48:33.022125', '37b1401b1d7ed1272136b6533a00cdaf7621629e5628a0c3073d9c51a5c32ccf', 'validated', '{"audio_key":"84e4983adb45aa982b4f18ae2871496ba5b4fadad4010c6bff3542980ce359e6","entity_key":"u_learning_goals_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"37b1401b1d7ed1272136b6533a00cdaf7621629e5628a0c3073d9c51a5c32ccf","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/84e4983adb45aa982b4f18ae2871496ba5b4fadad4010c6bff3542980ce359e6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_learning_goals_03_listen -> audio/generated/de-DE/utterances/84e4983adb45aa982b4f18ae2871496ba5b4fadad4010c6bff3542980ce359e6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('b91ceb9b-5698-57e4-a78e-e1cf758f89d5', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_learning_goals_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5bd6c0247c16239253a7a7e55c9d999aeb5775a20dec5a0057edea1bd5f2848e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5f1ba2be-9050-5999-be9f-83df3c7f8de3', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('b91ceb9b-5698-57e4-a78e-e1cf758f89d5', 1), '5bd6c0247c16239253a7a7e55c9d999aeb5775a20dec5a0057edea1bd5f2848e',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/84e4983adb45aa982b4f18ae2871496ba5b4fadad4010c6bff3542980ce359e6.mp3', 3996, '2026-09-13 08:48:33.022125', '37b1401b1d7ed1272136b6533a00cdaf7621629e5628a0c3073d9c51a5c32ccf', 'validated', '{"audio_key":"84e4983adb45aa982b4f18ae2871496ba5b4fadad4010c6bff3542980ce359e6","entity_key":"ex_learning_goals_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"37b1401b1d7ed1272136b6533a00cdaf7621629e5628a0c3073d9c51a5c32ccf","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/84e4983adb45aa982b4f18ae2871496ba5b4fadad4010c6bff3542980ce359e6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_venue_comparison_06 -> audio/generated/de-DE/utterances/87bfd1b12e3bdf1c35199536299f132adaecad90b2025ebc82c7801ac730182c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('87c9f350-01ec-5ece-ba55-8849572082bc', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_venue_comparison_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cb56f60f5d1ae6164e9cd599683e31872e8631d7d8e807c139423c8a47438342'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d2315d07-cc11-55ca-a37c-f44f606b5865', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('87c9f350-01ec-5ece-ba55-8849572082bc', 1), 'cb56f60f5d1ae6164e9cd599683e31872e8631d7d8e807c139423c8a47438342',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/87bfd1b12e3bdf1c35199536299f132adaecad90b2025ebc82c7801ac730182c.mp3', 5929, '2026-09-13 08:48:34.291326', 'd83bd510106bbd7c626b57e77348cccc3d99400b6ff015f5bf0acf4017a2e59e', 'validated', '{"audio_key":"87bfd1b12e3bdf1c35199536299f132adaecad90b2025ebc82c7801ac730182c","entity_key":"u_venue_comparison_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d83bd510106bbd7c626b57e77348cccc3d99400b6ff015f5bf0acf4017a2e59e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/87bfd1b12e3bdf1c35199536299f132adaecad90b2025ebc82c7801ac730182c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_project_documentation_03 -> audio/generated/de-DE/utterances/89d7e178f5f28e5e41fa815bca9c5598c6c061e3a54e75feaf93eb56dfd1d532.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b0efd9bc-9353-52c5-9fd3-fc07ec9115ab', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_project_documentation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5f5f8a00c5261fe087f0ce1b811d74f89a7b32b4826e3802c05ec18f421caa42'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bdfab87c-ada2-53b5-a1bd-096d872654da', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b0efd9bc-9353-52c5-9fd3-fc07ec9115ab', 1), '5f5f8a00c5261fe087f0ce1b811d74f89a7b32b4826e3802c05ec18f421caa42',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/89d7e178f5f28e5e41fa815bca9c5598c6c061e3a54e75feaf93eb56dfd1d532.mp3', 3892, '2026-09-13 08:48:34.377798', '0660289b01913addd24fbc84a78e312d4dfae5ff554794207836033b0012a58b', 'validated', '{"audio_key":"89d7e178f5f28e5e41fa815bca9c5598c6c061e3a54e75feaf93eb56dfd1d532","entity_key":"u_project_documentation_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0660289b01913addd24fbc84a78e312d4dfae5ff554794207836033b0012a58b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/89d7e178f5f28e5e41fa815bca9c5598c6c061e3a54e75feaf93eb56dfd1d532.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_project_documentation_02_listen -> audio/generated/de-DE/utterances/89d7e178f5f28e5e41fa815bca9c5598c6c061e3a54e75feaf93eb56dfd1d532.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('44d46276-b8b2-5b84-b943-abf620bf748f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_project_documentation_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5f5f8a00c5261fe087f0ce1b811d74f89a7b32b4826e3802c05ec18f421caa42'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('096de237-f5f1-5d51-b1ed-aba13980eaa1', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('44d46276-b8b2-5b84-b943-abf620bf748f', 1), '5f5f8a00c5261fe087f0ce1b811d74f89a7b32b4826e3802c05ec18f421caa42',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/89d7e178f5f28e5e41fa815bca9c5598c6c061e3a54e75feaf93eb56dfd1d532.mp3', 3892, '2026-09-13 08:48:34.377798', '0660289b01913addd24fbc84a78e312d4dfae5ff554794207836033b0012a58b', 'validated', '{"audio_key":"89d7e178f5f28e5e41fa815bca9c5598c6c061e3a54e75feaf93eb56dfd1d532","entity_key":"ex_project_documentation_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0660289b01913addd24fbc84a78e312d4dfae5ff554794207836033b0012a58b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/89d7e178f5f28e5e41fa815bca9c5598c6c061e3a54e75feaf93eb56dfd1d532.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_resource_priorities_03 -> audio/generated/de-DE/utterances/8b96ad6673714808f28e2cfbaa9ca807f6e0f2f5ac666fae454c2ea93ca797e6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('83d5c496-c271-5151-837d-5b84b9a9637e', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_resource_priorities_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8a7b2a344f563cd3add911ebfc6f1a3eac8759f36180906fa54b61417f24f762'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a881bc65-8894-5787-a15f-e7fbfae252a7', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('83d5c496-c271-5151-837d-5b84b9a9637e', 1), '8a7b2a344f563cd3add911ebfc6f1a3eac8759f36180906fa54b61417f24f762',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/8b96ad6673714808f28e2cfbaa9ca807f6e0f2f5ac666fae454c2ea93ca797e6.mp3', 4545, '2026-09-13 08:48:35.724352', '726d69605cd369a496d74af3bdb7a2ace9509a0a5a1c9a90a3d4e0526d50783b', 'validated', '{"audio_key":"8b96ad6673714808f28e2cfbaa9ca807f6e0f2f5ac666fae454c2ea93ca797e6","entity_key":"u_resource_priorities_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"726d69605cd369a496d74af3bdb7a2ace9509a0a5a1c9a90a3d4e0526d50783b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/8b96ad6673714808f28e2cfbaa9ca807f6e0f2f5ac666fae454c2ea93ca797e6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_resource_priorities_02_listen -> audio/generated/de-DE/utterances/8b96ad6673714808f28e2cfbaa9ca807f6e0f2f5ac666fae454c2ea93ca797e6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('2d421b59-e29c-5c4e-94d9-f00581db1f9c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_resource_priorities_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8a7b2a344f563cd3add911ebfc6f1a3eac8759f36180906fa54b61417f24f762'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('19360d5d-2a8b-5f2c-9e8c-dc9ef07f9c42', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('2d421b59-e29c-5c4e-94d9-f00581db1f9c', 1), '8a7b2a344f563cd3add911ebfc6f1a3eac8759f36180906fa54b61417f24f762',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/8b96ad6673714808f28e2cfbaa9ca807f6e0f2f5ac666fae454c2ea93ca797e6.mp3', 4545, '2026-09-13 08:48:35.724352', '726d69605cd369a496d74af3bdb7a2ace9509a0a5a1c9a90a3d4e0526d50783b', 'validated', '{"audio_key":"8b96ad6673714808f28e2cfbaa9ca807f6e0f2f5ac666fae454c2ea93ca797e6","entity_key":"ex_resource_priorities_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"726d69605cd369a496d74af3bdb7a2ace9509a0a5a1c9a90a3d4e0526d50783b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/8b96ad6673714808f28e2cfbaa9ca807f6e0f2f5ac666fae454c2ea93ca797e6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_responsibility_corrections_01 -> audio/generated/de-DE/utterances/99f7da9c99c0f5322684509ad88a54938e8b87039fb2af07973bf1986df83045.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2a21a201-9c9c-5872-ac25-19fb66c563cc', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_responsibility_corrections_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bf4a26cff3dcf96f95bc19a098ede7c3c49b8b7073b6c04ce42604ffc32f7c00'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4ea265ec-1329-5e9a-bc8c-7e9f623db803', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2a21a201-9c9c-5872-ac25-19fb66c563cc', 1), 'bf4a26cff3dcf96f95bc19a098ede7c3c49b8b7073b6c04ce42604ffc32f7c00',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/99f7da9c99c0f5322684509ad88a54938e8b87039fb2af07973bf1986df83045.mp3', 3604, '2026-09-13 08:48:35.664465', 'ce07baa8cff399ee02c36d089063c216e69eee18ac3e3f2fbc61db5b7edccdc6', 'validated', '{"audio_key":"99f7da9c99c0f5322684509ad88a54938e8b87039fb2af07973bf1986df83045","entity_key":"u_responsibility_corrections_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ce07baa8cff399ee02c36d089063c216e69eee18ac3e3f2fbc61db5b7edccdc6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/99f7da9c99c0f5322684509ad88a54938e8b87039fb2af07973bf1986df83045.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_responsibility_corrections_01_listen -> audio/generated/de-DE/utterances/99f7da9c99c0f5322684509ad88a54938e8b87039fb2af07973bf1986df83045.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('305e8ad8-df0a-5a55-8a77-d36994790cff', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_responsibility_corrections_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bf4a26cff3dcf96f95bc19a098ede7c3c49b8b7073b6c04ce42604ffc32f7c00'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d1ec3e72-a65a-5303-a754-022b1ef94a16', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('305e8ad8-df0a-5a55-8a77-d36994790cff', 1), 'bf4a26cff3dcf96f95bc19a098ede7c3c49b8b7073b6c04ce42604ffc32f7c00',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/99f7da9c99c0f5322684509ad88a54938e8b87039fb2af07973bf1986df83045.mp3', 3604, '2026-09-13 08:48:35.664465', 'ce07baa8cff399ee02c36d089063c216e69eee18ac3e3f2fbc61db5b7edccdc6', 'validated', '{"audio_key":"99f7da9c99c0f5322684509ad88a54938e8b87039fb2af07973bf1986df83045","entity_key":"ex_responsibility_corrections_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ce07baa8cff399ee02c36d089063c216e69eee18ac3e3f2fbc61db5b7edccdc6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/99f7da9c99c0f5322684509ad88a54938e8b87039fb2af07973bf1986df83045.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_project_documentation_06 -> audio/generated/de-DE/utterances/9ba803c4162ed6996e6ec1fd142e390814baa63e6ec37dc68fc73ec7facf41fe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('80b9b67e-d042-5793-a51a-e4296c9b32f6', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_project_documentation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5bae5fec07b7027f341810ce9fc1b21377d7ee352734c4880db2a77fda017780'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6134ecef-f204-5147-a9f1-31db43765eba', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('80b9b67e-d042-5793-a51a-e4296c9b32f6', 1), '5bae5fec07b7027f341810ce9fc1b21377d7ee352734c4880db2a77fda017780',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/9ba803c4162ed6996e6ec1fd142e390814baa63e6ec37dc68fc73ec7facf41fe.mp3', 4257, '2026-09-13 08:48:37.045765', 'ab3f5c823144b479e1b2b5910d725a0ec0a717dfc7367c4e706140e7a6c8c156', 'validated', '{"audio_key":"9ba803c4162ed6996e6ec1fd142e390814baa63e6ec37dc68fc73ec7facf41fe","entity_key":"u_project_documentation_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ab3f5c823144b479e1b2b5910d725a0ec0a717dfc7367c4e706140e7a6c8c156","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/9ba803c4162ed6996e6ec1fd142e390814baa63e6ec37dc68fc73ec7facf41fe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_cultural_reviews_04 -> audio/generated/de-DE/utterances/9ce5914fd7c6c6cf12c4d680434840c786f6e403cb862d9331b804fc6f9cafbf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b1473e8f-a8e6-537e-b39a-dbb899508ee0', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_cultural_reviews_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '854b0492ed3fd1e47cf229f251384fefd93d98b405e310c528510ddc74eec5da'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5763fa8f-7f9b-5e77-9278-19321917d45c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b1473e8f-a8e6-537e-b39a-dbb899508ee0', 1), '854b0492ed3fd1e47cf229f251384fefd93d98b405e310c528510ddc74eec5da',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/9ce5914fd7c6c6cf12c4d680434840c786f6e403cb862d9331b804fc6f9cafbf.mp3', 3474, '2026-09-13 08:48:36.998579', 'b805ab1ccd8b52e71703fc7b8c990372d6bc2a11dfaf58b90fa07320b1e753f1', 'validated', '{"audio_key":"9ce5914fd7c6c6cf12c4d680434840c786f6e403cb862d9331b804fc6f9cafbf","entity_key":"u_cultural_reviews_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b805ab1ccd8b52e71703fc7b8c990372d6bc2a11dfaf58b90fa07320b1e753f1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/9ce5914fd7c6c6cf12c4d680434840c786f6e403cb862d9331b804fc6f9cafbf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_structured_meetings_04 -> audio/generated/de-DE/utterances/a79b6b5b8794673bc1a060f6a2b4550b36826e33f73918a2919a1efbbe777d55.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0b4d6176-5835-5c5e-b39f-afd587c63202', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_structured_meetings_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2a3028e1e3d1fbaa829df03fd92135e53bf4aa743944fe48d470dd5419080c17'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7c546900-3e7f-50ce-bbfd-799a805e7449', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0b4d6176-5835-5c5e-b39f-afd587c63202', 1), '2a3028e1e3d1fbaa829df03fd92135e53bf4aa743944fe48d470dd5419080c17',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/a79b6b5b8794673bc1a060f6a2b4550b36826e33f73918a2919a1efbbe777d55.mp3', 3108, '2026-09-13 08:48:38.244058', '12a9974be2f3bc15515248fff61c9e79d6c6adef2f4bbb5cacd8c921b5ab6bd5', 'validated', '{"audio_key":"a79b6b5b8794673bc1a060f6a2b4550b36826e33f73918a2919a1efbbe777d55","entity_key":"u_structured_meetings_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"12a9974be2f3bc15515248fff61c9e79d6c6adef2f4bbb5cacd8c921b5ab6bd5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/a79b6b5b8794673bc1a060f6a2b4550b36826e33f73918a2919a1efbbe777d55.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_rules_requirements_04 -> audio/generated/de-DE/utterances/a9fdd1dd1647367a0ba221632c2fc2adb5afdfe83308de13ef568cdee567fff1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('4275e6d7-9192-5c4a-b584-51902325c261', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_rules_requirements_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '57fcabac527cb3f987ca11cf0a7afebf75d2e003335a95945c6e4da6785404b9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4f8bfc6d-8998-5af4-b83d-31d5e7d2fd00', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('4275e6d7-9192-5c4a-b584-51902325c261', 1), '57fcabac527cb3f987ca11cf0a7afebf75d2e003335a95945c6e4da6785404b9',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/a9fdd1dd1647367a0ba221632c2fc2adb5afdfe83308de13ef568cdee567fff1.mp3', 3239, '2026-09-13 08:48:38.324886', '285f008f95f73ea19aa7b377f168e0617a0a5b052fe6747c203540ec597bd3f4', 'validated', '{"audio_key":"a9fdd1dd1647367a0ba221632c2fc2adb5afdfe83308de13ef568cdee567fff1","entity_key":"u_rules_requirements_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"285f008f95f73ea19aa7b377f168e0617a0a5b052fe6747c203540ec597bd3f4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/a9fdd1dd1647367a0ba221632c2fc2adb5afdfe83308de13ef568cdee567fff1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_resource_priorities_01 -> audio/generated/de-DE/utterances/b1b94a4ec306deeeb5dc1b2940cd63eeeb69252610cd412c0b2d946403a8b64b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2c8dcf84-c04a-5f0b-95a1-2804936e338c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_resource_priorities_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8afa2f9ac7e3efe3996db7945313f2c7a2d49d3ae68511321bd44365c3408b13'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('28b951ef-dc54-598e-9c72-b1ffabf429b8', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2c8dcf84-c04a-5f0b-95a1-2804936e338c', 1), '8afa2f9ac7e3efe3996db7945313f2c7a2d49d3ae68511321bd44365c3408b13',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/b1b94a4ec306deeeb5dc1b2940cd63eeeb69252610cd412c0b2d946403a8b64b.mp3', 5511, '2026-09-13 08:48:39.762502', '27f1a64964d2c54deb4cee6aee934216de30d52d045c57d8dd12539f8a0c86b2', 'validated', '{"audio_key":"b1b94a4ec306deeeb5dc1b2940cd63eeeb69252610cd412c0b2d946403a8b64b","entity_key":"u_resource_priorities_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"27f1a64964d2c54deb4cee6aee934216de30d52d045c57d8dd12539f8a0c86b2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/b1b94a4ec306deeeb5dc1b2940cd63eeeb69252610cd412c0b2d946403a8b64b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_resource_priorities_01_listen -> audio/generated/de-DE/utterances/b1b94a4ec306deeeb5dc1b2940cd63eeeb69252610cd412c0b2d946403a8b64b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('ab36b179-23e6-5473-b0ce-83b3a20c4c5b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_resource_priorities_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8afa2f9ac7e3efe3996db7945313f2c7a2d49d3ae68511321bd44365c3408b13'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('44ceba65-29c8-50c8-8712-b1c065f50413', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('ab36b179-23e6-5473-b0ce-83b3a20c4c5b', 1), '8afa2f9ac7e3efe3996db7945313f2c7a2d49d3ae68511321bd44365c3408b13',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/b1b94a4ec306deeeb5dc1b2940cd63eeeb69252610cd412c0b2d946403a8b64b.mp3', 5511, '2026-09-13 08:48:39.762502', '27f1a64964d2c54deb4cee6aee934216de30d52d045c57d8dd12539f8a0c86b2', 'validated', '{"audio_key":"b1b94a4ec306deeeb5dc1b2940cd63eeeb69252610cd412c0b2d946403a8b64b","entity_key":"ex_resource_priorities_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"27f1a64964d2c54deb4cee6aee934216de30d52d045c57d8dd12539f8a0c86b2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/b1b94a4ec306deeeb5dc1b2940cd63eeeb69252610cd412c0b2d946403a8b64b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_shared_planning_01 -> audio/generated/de-DE/utterances/b2e52d68db2b21f861614098cbcb2b01e44e673cfc3f5d8d8f4fd55c997f7225.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('8c222f62-749f-5c41-a2ed-03b8413cf945', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_shared_planning_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c3e205d848f1f781ee2a12d4841701c62378142c6028713ac5e193354c738c90'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c10ad335-1a27-5523-a595-35a3c7e86029', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('8c222f62-749f-5c41-a2ed-03b8413cf945', 1), 'c3e205d848f1f781ee2a12d4841701c62378142c6028713ac5e193354c738c90',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/b2e52d68db2b21f861614098cbcb2b01e44e673cfc3f5d8d8f4fd55c997f7225.mp3', 4493, '2026-09-13 08:48:39.700319', '417c6b8bd64bbe9fde2c25704b3e7325b5024c2406a13664c72329ab46d6398e', 'validated', '{"audio_key":"b2e52d68db2b21f861614098cbcb2b01e44e673cfc3f5d8d8f4fd55c997f7225","entity_key":"u_shared_planning_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"417c6b8bd64bbe9fde2c25704b3e7325b5024c2406a13664c72329ab46d6398e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/b2e52d68db2b21f861614098cbcb2b01e44e673cfc3f5d8d8f4fd55c997f7225.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_shared_planning_01_listen -> audio/generated/de-DE/utterances/b2e52d68db2b21f861614098cbcb2b01e44e673cfc3f5d8d8f4fd55c997f7225.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('634bf222-e260-5a04-a7d2-3e6dfb30c0f3', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_shared_planning_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c3e205d848f1f781ee2a12d4841701c62378142c6028713ac5e193354c738c90'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3903eae2-1e20-5d55-a147-fea1f7a277d2', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('634bf222-e260-5a04-a7d2-3e6dfb30c0f3', 1), 'c3e205d848f1f781ee2a12d4841701c62378142c6028713ac5e193354c738c90',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/b2e52d68db2b21f861614098cbcb2b01e44e673cfc3f5d8d8f4fd55c997f7225.mp3', 4493, '2026-09-13 08:48:39.700319', '417c6b8bd64bbe9fde2c25704b3e7325b5024c2406a13664c72329ab46d6398e', 'validated', '{"audio_key":"b2e52d68db2b21f861614098cbcb2b01e44e673cfc3f5d8d8f4fd55c997f7225","entity_key":"ex_shared_planning_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"417c6b8bd64bbe9fde2c25704b3e7325b5024c2406a13664c72329ab46d6398e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/b2e52d68db2b21f861614098cbcb2b01e44e673cfc3f5d8d8f4fd55c997f7225.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_venue_comparison_01 -> audio/generated/de-DE/utterances/b678d0938edbd98577b7fd560fa3b1b817c87770b26aafcf3882f6b42035fe6f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('748ef29c-345e-5992-a75e-b4e427a65d41', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_venue_comparison_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '78194c74f5f33676bbfbf748ab32a4cac301c61e1f2cc48e953f0c10849cb617'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cc52502d-ef46-55e4-9a70-454b94ba693f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('748ef29c-345e-5992-a75e-b4e427a65d41', 1), '78194c74f5f33676bbfbf748ab32a4cac301c61e1f2cc48e953f0c10849cb617',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/b678d0938edbd98577b7fd560fa3b1b817c87770b26aafcf3882f6b42035fe6f.mp3', 4440, '2026-09-13 08:48:41.049457', '8cd64bc845be0491125cfb1fd76fb7fb795afb9e8ff89a2ae0ad0007e1004934', 'validated', '{"audio_key":"b678d0938edbd98577b7fd560fa3b1b817c87770b26aafcf3882f6b42035fe6f","entity_key":"u_venue_comparison_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8cd64bc845be0491125cfb1fd76fb7fb795afb9e8ff89a2ae0ad0007e1004934","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/b678d0938edbd98577b7fd560fa3b1b817c87770b26aafcf3882f6b42035fe6f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_venue_comparison_01_listen -> audio/generated/de-DE/utterances/b678d0938edbd98577b7fd560fa3b1b817c87770b26aafcf3882f6b42035fe6f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('b2aef2e6-ac62-55e6-924a-9146ab68f29c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_venue_comparison_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '78194c74f5f33676bbfbf748ab32a4cac301c61e1f2cc48e953f0c10849cb617'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b65ec937-7098-5935-a1c3-db05b16506ec', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('b2aef2e6-ac62-55e6-924a-9146ab68f29c', 1), '78194c74f5f33676bbfbf748ab32a4cac301c61e1f2cc48e953f0c10849cb617',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/b678d0938edbd98577b7fd560fa3b1b817c87770b26aafcf3882f6b42035fe6f.mp3', 4440, '2026-09-13 08:48:41.049457', '8cd64bc845be0491125cfb1fd76fb7fb795afb9e8ff89a2ae0ad0007e1004934', 'validated', '{"audio_key":"b678d0938edbd98577b7fd560fa3b1b817c87770b26aafcf3882f6b42035fe6f","entity_key":"ex_venue_comparison_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8cd64bc845be0491125cfb1fd76fb7fb795afb9e8ff89a2ae0ad0007e1004934","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/b678d0938edbd98577b7fd560fa3b1b817c87770b26aafcf3882f6b42035fe6f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_cultural_reviews_06 -> audio/generated/de-DE/utterances/bdae4081df87c2dd6a9ba14ab0ca986cbe4f8baf08a59600b786d50925bc8312.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e5956c4b-2fed-53f7-afca-1e9897b194b5', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_cultural_reviews_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1987eeac9d3f7275bb129ae9e8ec784682a4a2bdeb5fa0ec214d58cf23ae4f52'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6ea6bd00-f96f-5a0a-979c-89975bd85bb5', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e5956c4b-2fed-53f7-afca-1e9897b194b5', 1), '1987eeac9d3f7275bb129ae9e8ec784682a4a2bdeb5fa0ec214d58cf23ae4f52',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/bdae4081df87c2dd6a9ba14ab0ca986cbe4f8baf08a59600b786d50925bc8312.mp3', 5276, '2026-09-13 08:48:41.256368', 'b71d99cb9c54d66882aac801516bfcb4f1d69f94677b281b528fa7cd899b5d42', 'validated', '{"audio_key":"bdae4081df87c2dd6a9ba14ab0ca986cbe4f8baf08a59600b786d50925bc8312","entity_key":"u_cultural_reviews_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b71d99cb9c54d66882aac801516bfcb4f1d69f94677b281b528fa7cd899b5d42","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/bdae4081df87c2dd6a9ba14ab0ca986cbe4f8baf08a59600b786d50925bc8312.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_resource_priorities_02 -> audio/generated/de-DE/utterances/c13edc724ece3779c4b87b3b74bbb9865ef51accb569d083bfeb037c54be8f4f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7cee3401-d627-51cc-aaa1-75a4cc4d0c93', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_resource_priorities_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9905b1847838829136f3436244b122cf88811a0a9bdb012ef5c7eff92d18c5a0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1888295e-8e27-5130-afc1-be352e40bb05', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7cee3401-d627-51cc-aaa1-75a4cc4d0c93', 1), '9905b1847838829136f3436244b122cf88811a0a9bdb012ef5c7eff92d18c5a0',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/c13edc724ece3779c4b87b3b74bbb9865ef51accb569d083bfeb037c54be8f4f.mp3', 4310, '2026-09-13 08:48:42.411821', '4fc6d9fc937c9fcc0ebcff363cfe580a2d863627a4f5cbd1205d13242a448d3c', 'validated', '{"audio_key":"c13edc724ece3779c4b87b3b74bbb9865ef51accb569d083bfeb037c54be8f4f","entity_key":"u_resource_priorities_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4fc6d9fc937c9fcc0ebcff363cfe580a2d863627a4f5cbd1205d13242a448d3c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/c13edc724ece3779c4b87b3b74bbb9865ef51accb569d083bfeb037c54be8f4f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_experience_reflection_04 -> audio/generated/de-DE/utterances/c618a71c705640156695d7c75c2fe857cc0e60a57b014925db94e86d0a742119.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a60a71b6-cd1a-59f3-9ecf-135ba626c37a', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_experience_reflection_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4e1c48742a31cc213f8e06a1173bdfe06563305f0329e1ff70546320d339538a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3043bb92-9207-595b-bb82-593762354d2a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a60a71b6-cd1a-59f3-9ecf-135ba626c37a', 1), '4e1c48742a31cc213f8e06a1173bdfe06563305f0329e1ff70546320d339538a',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/c618a71c705640156695d7c75c2fe857cc0e60a57b014925db94e86d0a742119.mp3', 4728, '2026-09-13 08:48:42.733504', 'e47645b6076d82ae7d5dcc3e4c85591d0f2eead604758cb30ea131b151f0e673', 'validated', '{"audio_key":"c618a71c705640156695d7c75c2fe857cc0e60a57b014925db94e86d0a742119","entity_key":"u_experience_reflection_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e47645b6076d82ae7d5dcc3e4c85591d0f2eead604758cb30ea131b151f0e673","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/c618a71c705640156695d7c75c2fe857cc0e60a57b014925db94e86d0a742119.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_cultural_reviews_01 -> audio/generated/de-DE/utterances/c9fa7bd58ce32fa1fa5b1343ecd8d2bf0e71857ea78d5620ba9c7e5a3a329d9a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('1692892d-38e1-55ba-b471-419dcbc5af62', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_cultural_reviews_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3dda1b3da86b41cdcf2d9c61055dfa6f3ffa166c135c0bee7c9a8116052d1843'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0664af3e-64b9-59eb-840a-9f7e707c399a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('1692892d-38e1-55ba-b471-419dcbc5af62', 1), '3dda1b3da86b41cdcf2d9c61055dfa6f3ffa166c135c0bee7c9a8116052d1843',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/c9fa7bd58ce32fa1fa5b1343ecd8d2bf0e71857ea78d5620ba9c7e5a3a329d9a.mp3', 3578, '2026-09-13 08:48:43.682159', '3a2bfefb1ec4491f28e140c53da8c87312a355c6d7d85f850bd326a2d1e21097', 'validated', '{"audio_key":"c9fa7bd58ce32fa1fa5b1343ecd8d2bf0e71857ea78d5620ba9c7e5a3a329d9a","entity_key":"u_cultural_reviews_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3a2bfefb1ec4491f28e140c53da8c87312a355c6d7d85f850bd326a2d1e21097","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/c9fa7bd58ce32fa1fa5b1343ecd8d2bf0e71857ea78d5620ba9c7e5a3a329d9a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_cultural_reviews_01_listen -> audio/generated/de-DE/utterances/c9fa7bd58ce32fa1fa5b1343ecd8d2bf0e71857ea78d5620ba9c7e5a3a329d9a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('3c82a9cc-00b0-5666-a318-f2a471213924', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_cultural_reviews_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3dda1b3da86b41cdcf2d9c61055dfa6f3ffa166c135c0bee7c9a8116052d1843'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('989a977f-6e04-5adc-8511-1bc46b6b1e35', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('3c82a9cc-00b0-5666-a318-f2a471213924', 1), '3dda1b3da86b41cdcf2d9c61055dfa6f3ffa166c135c0bee7c9a8116052d1843',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/c9fa7bd58ce32fa1fa5b1343ecd8d2bf0e71857ea78d5620ba9c7e5a3a329d9a.mp3', 3578, '2026-09-13 08:48:43.682159', '3a2bfefb1ec4491f28e140c53da8c87312a355c6d7d85f850bd326a2d1e21097', 'validated', '{"audio_key":"c9fa7bd58ce32fa1fa5b1343ecd8d2bf0e71857ea78d5620ba9c7e5a3a329d9a","entity_key":"ex_cultural_reviews_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3a2bfefb1ec4491f28e140c53da8c87312a355c6d7d85f850bd326a2d1e21097","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/c9fa7bd58ce32fa1fa5b1343ecd8d2bf0e71857ea78d5620ba9c7e5a3a329d9a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_resource_priorities_06 -> audio/generated/de-DE/utterances/cd3f8f169c57f4f9ae73182f2f0914f52f702ffeb165c7bc9ca3cdf6389862bc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('19c4f3b3-d131-5eff-aa57-791750678ce5', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_resource_priorities_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f79799d9a95847aea5fe260e713bdeb0701b01414f9b543275c4fcdc069dcb71'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('18f23963-598c-5f5c-9de7-7d84706efc82', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('19c4f3b3-d131-5eff-aa57-791750678ce5', 1), 'f79799d9a95847aea5fe260e713bdeb0701b01414f9b543275c4fcdc069dcb71',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/cd3f8f169c57f4f9ae73182f2f0914f52f702ffeb165c7bc9ca3cdf6389862bc.mp3', 5851, '2026-09-13 08:48:44.284129', 'fc275d0abe00f0e3f68a92d895188d73e7a1b4904231566d4a13dcb9e814eae1', 'validated', '{"audio_key":"cd3f8f169c57f4f9ae73182f2f0914f52f702ffeb165c7bc9ca3cdf6389862bc","entity_key":"u_resource_priorities_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fc275d0abe00f0e3f68a92d895188d73e7a1b4904231566d4a13dcb9e814eae1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/cd3f8f169c57f4f9ae73182f2f0914f52f702ffeb165c7bc9ca3cdf6389862bc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_rules_requirements_02 -> audio/generated/de-DE/utterances/cf134f015c403563d6421d282b607d83f4648aa2f754034ad5c342ebc0ef9bd8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2f820cf7-5839-55a6-9af7-19775d7fba0a', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_rules_requirements_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '31c7f17cd550468611717b11422837ca42f7352786150ad60c4cb2714570b0c1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2b07214e-d668-5bfb-942c-a86e29a798e7', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2f820cf7-5839-55a6-9af7-19775d7fba0a', 1), '31c7f17cd550468611717b11422837ca42f7352786150ad60c4cb2714570b0c1',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/cf134f015c403563d6421d282b607d83f4648aa2f754034ad5c342ebc0ef9bd8.mp3', 4440, '2026-09-13 08:48:45.046734', 'f7f4b5746052bf813980b6950eb6ec2d051109d6b52c8fb567698d15910f376f', 'validated', '{"audio_key":"cf134f015c403563d6421d282b607d83f4648aa2f754034ad5c342ebc0ef9bd8","entity_key":"u_rules_requirements_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f7f4b5746052bf813980b6950eb6ec2d051109d6b52c8fb567698d15910f376f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/cf134f015c403563d6421d282b607d83f4648aa2f754034ad5c342ebc0ef9bd8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_rules_requirements_06 -> audio/generated/de-DE/utterances/d53b3a0ac6f7b6f9798a6d0ea5dffd5f4d4f2648a41c7b19f5bc3b8bafb1bba8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('fc53393d-12ea-539b-8d42-3013f0d2eea7', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_rules_requirements_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '48101d986fba18baef5960821ad7dac7177d99fcb713d502aefdb816dccd5121'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('78885368-edfc-5fce-ac1f-4632c49a2cba', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('fc53393d-12ea-539b-8d42-3013f0d2eea7', 1), '48101d986fba18baef5960821ad7dac7177d99fcb713d502aefdb816dccd5121',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d53b3a0ac6f7b6f9798a6d0ea5dffd5f4d4f2648a41c7b19f5bc3b8bafb1bba8.mp3', 3996, '2026-09-13 08:48:45.611652', '4f94007dff3b45a88cfaad528e08bca2ac55f263609cb50c02c90971ce8679b4', 'validated', '{"audio_key":"d53b3a0ac6f7b6f9798a6d0ea5dffd5f4d4f2648a41c7b19f5bc3b8bafb1bba8","entity_key":"u_rules_requirements_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4f94007dff3b45a88cfaad528e08bca2ac55f263609cb50c02c90971ce8679b4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d53b3a0ac6f7b6f9798a6d0ea5dffd5f4d4f2648a41c7b19f5bc3b8bafb1bba8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_learning_goals_03 -> audio/generated/de-DE/utterances/d724ef1f901234dcec706ff9ebd69fb386de40ec9e1f14032537149603165975.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('804de7b0-a2ba-524e-ac23-193e4412624c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_learning_goals_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '375eea01ed48a8d0d249bf154faa601f376a75a6e2174ea51bcca703d73efcaf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9d2a9a77-6810-5af0-b5f8-d3096e81d854', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('804de7b0-a2ba-524e-ac23-193e4412624c', 1), '375eea01ed48a8d0d249bf154faa601f376a75a6e2174ea51bcca703d73efcaf',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d724ef1f901234dcec706ff9ebd69fb386de40ec9e1f14032537149603165975.mp3', 4597, '2026-09-13 08:48:46.490122', '9fc4a5a811acc57c00436f578d815aa02db91e75f32954094fd8f9ad6a80a3e7', 'validated', '{"audio_key":"d724ef1f901234dcec706ff9ebd69fb386de40ec9e1f14032537149603165975","entity_key":"u_learning_goals_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9fc4a5a811acc57c00436f578d815aa02db91e75f32954094fd8f9ad6a80a3e7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d724ef1f901234dcec706ff9ebd69fb386de40ec9e1f14032537149603165975.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_learning_goals_02_listen -> audio/generated/de-DE/utterances/d724ef1f901234dcec706ff9ebd69fb386de40ec9e1f14032537149603165975.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('c9874980-9e20-5e4d-9a94-ef2fcaa41522', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_learning_goals_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '375eea01ed48a8d0d249bf154faa601f376a75a6e2174ea51bcca703d73efcaf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('baa55b2d-962e-5918-93b4-78fb9a32ec0e', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('c9874980-9e20-5e4d-9a94-ef2fcaa41522', 1), '375eea01ed48a8d0d249bf154faa601f376a75a6e2174ea51bcca703d73efcaf',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d724ef1f901234dcec706ff9ebd69fb386de40ec9e1f14032537149603165975.mp3', 4597, '2026-09-13 08:48:46.490122', '9fc4a5a811acc57c00436f578d815aa02db91e75f32954094fd8f9ad6a80a3e7', 'validated', '{"audio_key":"d724ef1f901234dcec706ff9ebd69fb386de40ec9e1f14032537149603165975","entity_key":"ex_learning_goals_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9fc4a5a811acc57c00436f578d815aa02db91e75f32954094fd8f9ad6a80a3e7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d724ef1f901234dcec706ff9ebd69fb386de40ec9e1f14032537149603165975.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_responsibility_corrections_04 -> audio/generated/de-DE/utterances/dc4c92bfaf5e5742fe42fe880c9e29f8d1eea12ad95e08f5bce2d15fca25c7e3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('58fb09ed-3a54-5b41-a04e-dd38086789e7', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_responsibility_corrections_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'da513a50d80226ce0aaebfbb823306ce4a2faa4fd387e25df94e052089d4bf52'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cb7698ad-6dbd-567d-9ce6-8e935b89e0e2', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('58fb09ed-3a54-5b41-a04e-dd38086789e7', 1), 'da513a50d80226ce0aaebfbb823306ce4a2faa4fd387e25df94e052089d4bf52',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/dc4c92bfaf5e5742fe42fe880c9e29f8d1eea12ad95e08f5bce2d15fca25c7e3.mp3', 2768, '2026-09-13 08:48:46.788928', '64f3343e4012e5da8065074adefd2d9536781ddda03a088b3a1d6ac71c528f51', 'validated', '{"audio_key":"dc4c92bfaf5e5742fe42fe880c9e29f8d1eea12ad95e08f5bce2d15fca25c7e3","entity_key":"u_responsibility_corrections_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"64f3343e4012e5da8065074adefd2d9536781ddda03a088b3a1d6ac71c528f51","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/dc4c92bfaf5e5742fe42fe880c9e29f8d1eea12ad95e08f5bce2d15fca25c7e3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_shared_planning_02 -> audio/generated/de-DE/utterances/e624c854b76b35a4712411dedb76a594ca2007ecc2ef7a42729c2516ef5205ec.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f9b09a1b-acab-5e53-a72f-a3594024105e', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_shared_planning_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '14f5ce5b90446c5473a2b250502aba3c43c707e9d980d0d3486749119a3cc7d3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('98548252-1a50-5caf-a9ce-b479dbd24fb4', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f9b09a1b-acab-5e53-a72f-a3594024105e', 1), '14f5ce5b90446c5473a2b250502aba3c43c707e9d980d0d3486749119a3cc7d3',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e624c854b76b35a4712411dedb76a594ca2007ecc2ef7a42729c2516ef5205ec.mp3', 4911, '2026-09-13 08:48:47.989371', 'ab245263b4d2ad0ac7fe04fd9450c01fea16d9128a2bf8a5c9e06d2ba55e441c', 'validated', '{"audio_key":"e624c854b76b35a4712411dedb76a594ca2007ecc2ef7a42729c2516ef5205ec","entity_key":"u_shared_planning_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ab245263b4d2ad0ac7fe04fd9450c01fea16d9128a2bf8a5c9e06d2ba55e441c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e624c854b76b35a4712411dedb76a594ca2007ecc2ef7a42729c2516ef5205ec.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_experience_reflection_03 -> audio/generated/de-DE/utterances/ece8788c01451e9682f67e556db7c53c91862604d27175a3529221de1bbd4740.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d21740c8-783a-5119-90ee-453447c93647', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_experience_reflection_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dc2f247394743eeb5a4fc0c0003bbc1b670469aba302a97da68656f33edcf4eb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ba739b5f-a177-596e-a527-d8ecd57ce019', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d21740c8-783a-5119-90ee-453447c93647', 1), 'dc2f247394743eeb5a4fc0c0003bbc1b670469aba302a97da68656f33edcf4eb',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ece8788c01451e9682f67e556db7c53c91862604d27175a3529221de1bbd4740.mp3', 5015, '2026-09-13 08:48:48.274848', '5e1776b548feb75c5bb6e4299048b278463aa76d8865164b7ab0b72ff1598974', 'validated', '{"audio_key":"ece8788c01451e9682f67e556db7c53c91862604d27175a3529221de1bbd4740","entity_key":"u_experience_reflection_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5e1776b548feb75c5bb6e4299048b278463aa76d8865164b7ab0b72ff1598974","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ece8788c01451e9682f67e556db7c53c91862604d27175a3529221de1bbd4740.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_experience_reflection_02_listen -> audio/generated/de-DE/utterances/ece8788c01451e9682f67e556db7c53c91862604d27175a3529221de1bbd4740.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('e36aec02-d07a-510e-9f76-f6e68e9e35ac', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_experience_reflection_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dc2f247394743eeb5a4fc0c0003bbc1b670469aba302a97da68656f33edcf4eb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8be85c7a-366e-5768-9e96-9fd33747dc78', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('e36aec02-d07a-510e-9f76-f6e68e9e35ac', 1), 'dc2f247394743eeb5a4fc0c0003bbc1b670469aba302a97da68656f33edcf4eb',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ece8788c01451e9682f67e556db7c53c91862604d27175a3529221de1bbd4740.mp3', 5015, '2026-09-13 08:48:48.274848', '5e1776b548feb75c5bb6e4299048b278463aa76d8865164b7ab0b72ff1598974', 'validated', '{"audio_key":"ece8788c01451e9682f67e556db7c53c91862604d27175a3529221de1bbd4740","entity_key":"ex_experience_reflection_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5e1776b548feb75c5bb6e4299048b278463aa76d8865164b7ab0b72ff1598974","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ece8788c01451e9682f67e556db7c53c91862604d27175a3529221de1bbd4740.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_project_documentation_01 -> audio/generated/de-DE/utterances/f0a32a0d4913d7fd1de6a07c6628305bf073ad4459a56f9d65c63898dfa5a678.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('bb77df00-9cec-5e63-a842-4bc2c823d862', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_project_documentation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd41237f4533d289d099ac0e834aa960ace29f63633205f53f93efe6b23ca4527'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dc01ae42-1904-57cf-af95-6157664e61d2', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('bb77df00-9cec-5e63-a842-4bc2c823d862', 1), 'd41237f4533d289d099ac0e834aa960ace29f63633205f53f93efe6b23ca4527',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f0a32a0d4913d7fd1de6a07c6628305bf073ad4459a56f9d65c63898dfa5a678.mp3', 4362, '2026-09-13 08:48:49.337691', '5793b1e397f8dc13afca738d47a8accaab3d61a39460aa18c4882a50f6e9bb1b', 'validated', '{"audio_key":"f0a32a0d4913d7fd1de6a07c6628305bf073ad4459a56f9d65c63898dfa5a678","entity_key":"u_project_documentation_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5793b1e397f8dc13afca738d47a8accaab3d61a39460aa18c4882a50f6e9bb1b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f0a32a0d4913d7fd1de6a07c6628305bf073ad4459a56f9d65c63898dfa5a678.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_project_documentation_01_listen -> audio/generated/de-DE/utterances/f0a32a0d4913d7fd1de6a07c6628305bf073ad4459a56f9d65c63898dfa5a678.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('0a3f77b7-2790-518e-9348-b7092fbec18e', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_project_documentation_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd41237f4533d289d099ac0e834aa960ace29f63633205f53f93efe6b23ca4527'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a3ef0d9d-49f0-56a6-8819-c4699e786032', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('0a3f77b7-2790-518e-9348-b7092fbec18e', 1), 'd41237f4533d289d099ac0e834aa960ace29f63633205f53f93efe6b23ca4527',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f0a32a0d4913d7fd1de6a07c6628305bf073ad4459a56f9d65c63898dfa5a678.mp3', 4362, '2026-09-13 08:48:49.337691', '5793b1e397f8dc13afca738d47a8accaab3d61a39460aa18c4882a50f6e9bb1b', 'validated', '{"audio_key":"f0a32a0d4913d7fd1de6a07c6628305bf073ad4459a56f9d65c63898dfa5a678","entity_key":"ex_project_documentation_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5793b1e397f8dc13afca738d47a8accaab3d61a39460aa18c4882a50f6e9bb1b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f0a32a0d4913d7fd1de6a07c6628305bf073ad4459a56f9d65c63898dfa5a678.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_resource_priorities_05 -> audio/generated/de-DE/utterances/fad795cb2f0e3ba73dd2511e92e82a0397c8335a05b049c50a04b5f51c966b11.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('35881f16-d6c1-5e4e-9e92-86eb48f7010c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_resource_priorities_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7f396d02df35424cac0445c43668864446d78cca6655c2d48f39e145ed2e0b1c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eab18bc7-faf0-59f7-b477-cdfda18262f7', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('35881f16-d6c1-5e4e-9e92-86eb48f7010c', 1), '7f396d02df35424cac0445c43668864446d78cca6655c2d48f39e145ed2e0b1c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/fad795cb2f0e3ba73dd2511e92e82a0397c8335a05b049c50a04b5f51c966b11.mp3', 4545, '2026-09-13 08:48:49.710856', '2dd03d03105e4e3a9f685a22cab65e887cdbb44f07fa86755f54d58083252c27', 'validated', '{"audio_key":"fad795cb2f0e3ba73dd2511e92e82a0397c8335a05b049c50a04b5f51c966b11","entity_key":"u_resource_priorities_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2dd03d03105e4e3a9f685a22cab65e887cdbb44f07fa86755f54d58083252c27","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/fad795cb2f0e3ba73dd2511e92e82a0397c8335a05b049c50a04b5f51c966b11.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_resource_priorities_03_listen -> audio/generated/de-DE/utterances/fad795cb2f0e3ba73dd2511e92e82a0397c8335a05b049c50a04b5f51c966b11.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('5670d742-629b-524a-91c2-8bfce1553275', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_resource_priorities_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7f396d02df35424cac0445c43668864446d78cca6655c2d48f39e145ed2e0b1c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eb3eab73-17cb-5035-b5b2-9f9b92c8330c', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('5670d742-629b-524a-91c2-8bfce1553275', 1), '7f396d02df35424cac0445c43668864446d78cca6655c2d48f39e145ed2e0b1c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/fad795cb2f0e3ba73dd2511e92e82a0397c8335a05b049c50a04b5f51c966b11.mp3', 4545, '2026-09-13 08:48:49.710856', '2dd03d03105e4e3a9f685a22cab65e887cdbb44f07fa86755f54d58083252c27', 'validated', '{"audio_key":"fad795cb2f0e3ba73dd2511e92e82a0397c8335a05b049c50a04b5f51c966b11","entity_key":"ex_resource_priorities_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2dd03d03105e4e3a9f685a22cab65e887cdbb44f07fa86755f54d58083252c27","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/fad795cb2f0e3ba73dd2511e92e82a0397c8335a05b049c50a04b5f51c966b11.mp3"}'
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

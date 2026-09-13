-- Generated audio link import for tr-TR A1
-- Source manifest: audio/manifests/tr/A1.json
-- Generated rows: 261
-- Storage mode: relative_path
-- storage_url is intentionally portable; prepend your server/CDN base URL at runtime.
-- Run AFTER the matching level content import.
SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci;
SET time_zone = '+00:00';
SET @audio_language_id = (SELECT id FROM languages WHERE code = 'tr' LIMIT 1);
SET @audio_variant_id = (SELECT id FROM language_variants WHERE code = 'tr-TR' LIMIT 1);
START TRANSACTION;

-- d_time_and_plans_01:4 -> audio/generated/tr-TR/dialogues/007bbfe6af03f6bcbb414d87f2f9eb22930a17ad7d14efdc745dbf7e80234660.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8591acc9-780f-52ed-90b2-4401bb812d5f', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_time_and_plans_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '038fa7679f76611b069f259f6f78807a0622ae44bd4f181dabe67dc7b01048e5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('57365710-4eb3-5c1a-8c45-ef44686b6428', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8591acc9-780f-52ed-90b2-4401bb812d5f', 1), '038fa7679f76611b069f259f6f78807a0622ae44bd4f181dabe67dc7b01048e5',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/007bbfe6af03f6bcbb414d87f2f9eb22930a17ad7d14efdc745dbf7e80234660.mp3', 1097, '2026-09-13 15:16:14.398219', '383f7ed22bfa28d8268cb610418222605e9847a165a76373fa80ad7ee278bcc0', 'validated', '{"audio_key":"007bbfe6af03f6bcbb414d87f2f9eb22930a17ad7d14efdc745dbf7e80234660","entity_key":"d_time_and_plans_01:4","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"383f7ed22bfa28d8268cb610418222605e9847a165a76373fa80ad7ee278bcc0","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/007bbfe6af03f6bcbb414d87f2f9eb22930a17ad7d14efdc745dbf7e80234660.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_my_family_01:4 -> audio/generated/tr-TR/dialogues/02707b4db44b1b6ebfe92264f391e230b2b1e056e38076dd007379d3a8f02bde.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3213c994-68a2-564a-a4db-f2923feaa8ed', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_my_family_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0f1660b952ef0a1666a488e97ba88e346d30bb2c5f5b28e8bede83212c40a50d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dde2ebe3-6bfc-5e50-a0f4-57187a2c775a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3213c994-68a2-564a-a4db-f2923feaa8ed', 1), '0f1660b952ef0a1666a488e97ba88e346d30bb2c5f5b28e8bede83212c40a50d',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/02707b4db44b1b6ebfe92264f391e230b2b1e056e38076dd007379d3a8f02bde.mp3', 1201, '2026-09-13 15:54:27.494739', 'cca64ef4359469e05e32d576c62efa5377d6826ac0e466fc1f66233e2f9076ee', 'validated', '{"audio_key":"02707b4db44b1b6ebfe92264f391e230b2b1e056e38076dd007379d3a8f02bde","entity_key":"d_my_family_01:4","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"cca64ef4359469e05e32d576c62efa5377d6826ac0e466fc1f66233e2f9076ee","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/02707b4db44b1b6ebfe92264f391e230b2b1e056e38076dd007379d3a8f02bde.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_who_i_am_01:2 -> audio/generated/tr-TR/dialogues/07cf707368243d93769db398ce76b2c821109462fbc1157bf64e059b2108e95e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b418679f-0b0e-5fb0-9375-cb2e4a1d2317', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_who_i_am_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '549738f09a099ce51a4fe79c996c0ef9bd7d77910c6014186f01aa175a3f9604'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a83915eb-ec6d-5aa9-b3e9-9130852f6b0a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b418679f-0b0e-5fb0-9375-cb2e4a1d2317', 1), '549738f09a099ce51a4fe79c996c0ef9bd7d77910c6014186f01aa175a3f9604',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/07cf707368243d93769db398ce76b2c821109462fbc1157bf64e059b2108e95e.mp3', 1436, '2026-09-13 15:54:27.546529', '9f5adb5a182a8203049452f84d1ab9b4ce2dc1f3ccebdb6d66438084f9a95fd8', 'validated', '{"audio_key":"07cf707368243d93769db398ce76b2c821109462fbc1157bf64e059b2108e95e","entity_key":"d_who_i_am_01:2","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9f5adb5a182a8203049452f84d1ab9b4ce2dc1f3ccebdb6d66438084f9a95fd8","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/07cf707368243d93769db398ce76b2c821109462fbc1157bf64e059b2108e95e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_this_and_these_01:2 -> audio/generated/tr-TR/dialogues/0cffc3e6970f06710ebbd78d0f462df22266e59e399af92e4c89699061c28056.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('94bb4ca0-bc38-5f05-80de-72b68d0de99e', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_this_and_these_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ff523481006e09a6183346e3f001fad11fc2690ce2af1db11d95f8f028586362'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b1a84a70-b718-5c40-8bd1-0938590aee86', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('94bb4ca0-bc38-5f05-80de-72b68d0de99e', 1), 'ff523481006e09a6183346e3f001fad11fc2690ce2af1db11d95f8f028586362',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/0cffc3e6970f06710ebbd78d0f462df22266e59e399af92e4c89699061c28056.mp3', 1071, '2026-09-13 15:54:28.515635', 'd2eac75906a9607630ab2871b4c6fabdabb92b3a4b1926bab8b738e855d514a1', 'validated', '{"audio_key":"0cffc3e6970f06710ebbd78d0f462df22266e59e399af92e4c89699061c28056","entity_key":"d_this_and_these_01:2","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d2eac75906a9607630ab2871b4c6fabdabb92b3a4b1926bab8b738e855d514a1","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/0cffc3e6970f06710ebbd78d0f462df22266e59e399af92e4c89699061c28056.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_who_i_am_01:3 -> audio/generated/tr-TR/dialogues/0f1ead35a74fd72ad7cd0ebfb9ba0c3f6e48f475e31429eeafe1aa91ffccc510.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5ff4b1f4-841f-500b-b8c2-1737d0461d80', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_who_i_am_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a386b65e71317b358b54a94f8378d3d9b64c1c7bf2ad62bbcff0a676c75736fe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3820228c-69c2-555c-b118-5f54e654e7eb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5ff4b1f4-841f-500b-b8c2-1737d0461d80', 1), 'a386b65e71317b358b54a94f8378d3d9b64c1c7bf2ad62bbcff0a676c75736fe',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/0f1ead35a74fd72ad7cd0ebfb9ba0c3f6e48f475e31429eeafe1aa91ffccc510.mp3', 1515, '2026-09-13 15:54:28.639193', '473321ddad355bb74329eed71692610b482a4bfe88ed0ec64bb852fc5ad4867c', 'validated', '{"audio_key":"0f1ead35a74fd72ad7cd0ebfb9ba0c3f6e48f475e31429eeafe1aa91ffccc510","entity_key":"d_who_i_am_01:3","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"473321ddad355bb74329eed71692610b482a4bfe88ed0ec64bb852fc5ad4867c","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/0f1ead35a74fd72ad7cd0ebfb9ba0c3f6e48f475e31429eeafe1aa91ffccc510.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_who_i_am_01:1 -> audio/generated/tr-TR/dialogues/11dff707101921fe0a96712a1fb474814a2585bc6374b75931afab7a6ee35f1b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('63544409-0cbc-5aea-853d-65947ec18ddc', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_who_i_am_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c97b7d33c5532d3e99f3a03e81a9d6a65e191297583b3aeb40458d29a9fc91e0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('302dee4a-a79b-5630-8c2b-6cdf81620d1c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('63544409-0cbc-5aea-853d-65947ec18ddc', 1), 'c97b7d33c5532d3e99f3a03e81a9d6a65e191297583b3aeb40458d29a9fc91e0',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/11dff707101921fe0a96712a1fb474814a2585bc6374b75931afab7a6ee35f1b.mp3', 1201, '2026-09-13 15:54:29.576656', 'ec2d45280335f6e8a43d84699b633764005d590f12c3b2171efa7f75c97d5a2b', 'validated', '{"audio_key":"11dff707101921fe0a96712a1fb474814a2585bc6374b75931afab7a6ee35f1b","entity_key":"d_who_i_am_01:1","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ec2d45280335f6e8a43d84699b633764005d590f12c3b2171efa7f75c97d5a2b","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/11dff707101921fe0a96712a1fb474814a2585bc6374b75931afab7a6ee35f1b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_who_i_am_02:4 -> audio/generated/tr-TR/dialogues/1209d916038a84fbd3fc755e1867eef85334498256c9a10dd0348f9d423e9f0b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('95644eec-dbc9-507e-a790-267b30fa76f8', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_who_i_am_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '36af2e287f98c6d454908107d2b3ea3c1f6fd36272e33550c12a4897a3d7b156'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('37c3f5b6-b201-5e5b-81f2-41216420fc70', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('95644eec-dbc9-507e-a790-267b30fa76f8', 1), '36af2e287f98c6d454908107d2b3ea3c1f6fd36272e33550c12a4897a3d7b156',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/1209d916038a84fbd3fc755e1867eef85334498256c9a10dd0348f9d423e9f0b.mp3', 966, '2026-09-13 15:54:29.656359', 'b0742d2c755e25b2accfac4559e49d5bc1fe35d7fee11ed00b63654c94a97b99', 'validated', '{"audio_key":"1209d916038a84fbd3fc755e1867eef85334498256c9a10dd0348f9d423e9f0b","entity_key":"d_who_i_am_02:4","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b0742d2c755e25b2accfac4559e49d5bc1fe35d7fee11ed00b63654c94a97b99","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/1209d916038a84fbd3fc755e1867eef85334498256c9a10dd0348f9d423e9f0b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_at_the_cafe_01:1 -> audio/generated/tr-TR/dialogues/159757a6e2f143753f08c3ccf03bb84960f789f2b0a9cae4ddaad0c389d2ac0e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('679347d6-6c67-5a36-9b46-e2523eca3b0e', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_at_the_cafe_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8dcf7f9987acc28551333e53e7e19e6db5720e40d43f0f9587c6f2b103d1f7b2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7291bea9-5129-551d-9a4e-cdbe2c582cd3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('679347d6-6c67-5a36-9b46-e2523eca3b0e', 1), '8dcf7f9987acc28551333e53e7e19e6db5720e40d43f0f9587c6f2b103d1f7b2',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/159757a6e2f143753f08c3ccf03bb84960f789f2b0a9cae4ddaad0c389d2ac0e.mp3', 1985, '2026-09-13 15:54:30.763839', '9f845d2bfc7eee60ed9d93e9cd65aaed35467cfac986317fb1ba8a61904d5892', 'validated', '{"audio_key":"159757a6e2f143753f08c3ccf03bb84960f789f2b0a9cae4ddaad0c389d2ac0e","entity_key":"d_at_the_cafe_01:1","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9f845d2bfc7eee60ed9d93e9cd65aaed35467cfac986317fb1ba8a61904d5892","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/159757a6e2f143753f08c3ccf03bb84960f789f2b0a9cae4ddaad0c389d2ac0e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_shopping_basics_01:4 -> audio/generated/tr-TR/dialogues/15b07bf1453148f2f80d167eb570ecf6c47f04390bb133055c92c8d0bb789501.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('161e0e45-ac59-5657-ac35-12741d0acc00', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_shopping_basics_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2e8e5bee0543e566c24b469a3f88555f04b428704dee3602a57a438abd144d23'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ca9b9922-304d-53bb-95de-9597213110b1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('161e0e45-ac59-5657-ac35-12741d0acc00', 1), '2e8e5bee0543e566c24b469a3f88555f04b428704dee3602a57a438abd144d23',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/15b07bf1453148f2f80d167eb570ecf6c47f04390bb133055c92c8d0bb789501.mp3', 835, '2026-09-13 15:54:30.681217', '2aee88f99310ae469ec216af26fd57d4b2c3e146f5f6c4f7753687fa57034148', 'validated', '{"audio_key":"15b07bf1453148f2f80d167eb570ecf6c47f04390bb133055c92c8d0bb789501","entity_key":"d_shopping_basics_01:4","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"2aee88f99310ae469ec216af26fd57d4b2c3e146f5f6c4f7753687fa57034148","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/15b07bf1453148f2f80d167eb570ecf6c47f04390bb133055c92c8d0bb789501.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_shopping_basics_02:4 -> audio/generated/tr-TR/dialogues/198a03b72d9bcae5563c4dc984c15bdad78cf40f620c74877f10c7913fa505b5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a5756bef-6e96-5179-a97a-86e1b2c5d120', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_shopping_basics_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '32cfe82e39e1ef40d3f6a6b547e984c29d5c397d361b4dc1098236800d0b8261'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('536de540-ac44-5e78-babc-201398b7d2cf', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a5756bef-6e96-5179-a97a-86e1b2c5d120', 1), '32cfe82e39e1ef40d3f6a6b547e984c29d5c397d361b4dc1098236800d0b8261',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/198a03b72d9bcae5563c4dc984c15bdad78cf40f620c74877f10c7913fa505b5.mp3', 1515, '2026-09-13 15:54:31.823516', '42f54f5f255a81d0883d7e8208bb4c3dde24af3cd2c7032e3e789852df954c77', 'validated', '{"audio_key":"198a03b72d9bcae5563c4dc984c15bdad78cf40f620c74877f10c7913fa505b5","entity_key":"d_shopping_basics_02:4","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"42f54f5f255a81d0883d7e8208bb4c3dde24af3cd2c7032e3e789852df954c77","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/198a03b72d9bcae5563c4dc984c15bdad78cf40f620c74877f10c7913fa505b5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_getting_around_01:3 -> audio/generated/tr-TR/dialogues/1b655fbd9556a1bd6ba3a1498b55e7c4e0ecc7b539edbe79e294477ddf8bf0a8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('44bcaf59-aa1f-56d3-90f5-d7824b544831', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_getting_around_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '78ac210e866afaecace75e6bc68e2e58c8825b351822b1e77f4103c41d680b6c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1dc5f14a-7a0f-5717-a2f9-4fbed147742d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('44bcaf59-aa1f-56d3-90f5-d7824b544831', 1), '78ac210e866afaecace75e6bc68e2e58c8825b351822b1e77f4103c41d680b6c',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/1b655fbd9556a1bd6ba3a1498b55e7c4e0ecc7b539edbe79e294477ddf8bf0a8.mp3', 835, '2026-09-13 15:54:31.792515', 'dd555db8ac831d80c8d3a8fb92d0e1af8f763fda703f604b4a42fdafc2f19181', 'validated', '{"audio_key":"1b655fbd9556a1bd6ba3a1498b55e7c4e0ecc7b539edbe79e294477ddf8bf0a8","entity_key":"d_getting_around_01:3","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"dd555db8ac831d80c8d3a8fb92d0e1af8f763fda703f604b4a42fdafc2f19181","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/1b655fbd9556a1bd6ba3a1498b55e7c4e0ecc7b539edbe79e294477ddf8bf0a8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_shopping_basics_01:1 -> audio/generated/tr-TR/dialogues/1c9b3a70973460d0aef0b7455abb305073c7a688df6343f572501fc5e79579d8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2e7ecd08-f31f-599b-81c4-a92713b029d1', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_shopping_basics_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b8687dc79a33c1ea4e9e59b86a0cfef1a4c827ac358307b0cc2ef5c492206b3d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0a2baa39-47ae-5f19-9b96-409356bd6f32', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2e7ecd08-f31f-599b-81c4-a92713b029d1', 1), 'b8687dc79a33c1ea4e9e59b86a0cfef1a4c827ac358307b0cc2ef5c492206b3d',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/1c9b3a70973460d0aef0b7455abb305073c7a688df6343f572501fc5e79579d8.mp3', 1018, '2026-09-13 15:54:32.815875', '6b73d63aa61edb1a1d5a85fdbfa0aacb1ebac3b54b3ce6046f0052f9ad7e6e10', 'validated', '{"audio_key":"1c9b3a70973460d0aef0b7455abb305073c7a688df6343f572501fc5e79579d8","entity_key":"d_shopping_basics_01:1","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6b73d63aa61edb1a1d5a85fdbfa0aacb1ebac3b54b3ce6046f0052f9ad7e6e10","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/1c9b3a70973460d0aef0b7455abb305073c7a688df6343f572501fc5e79579d8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_at_home_02:2 -> audio/generated/tr-TR/dialogues/1e5b650babc3c8a91db8c7c7fc10f38529c185ff7db96ce327153b000a09e6ac.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fc86da8e-2755-551d-a406-c4ce0ba2aa3b', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_at_home_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '544cf6b87cb456ee9aed76af76671831186102ee2c353177d5100cd4e5ee14b4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1d70ad79-5d41-5e92-948f-74b1d7ab3b63', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fc86da8e-2755-551d-a406-c4ce0ba2aa3b', 1), '544cf6b87cb456ee9aed76af76671831186102ee2c353177d5100cd4e5ee14b4',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/1e5b650babc3c8a91db8c7c7fc10f38529c185ff7db96ce327153b000a09e6ac.mp3', 1097, '2026-09-13 15:54:32.846801', 'ec7429ca008956ef90e41bd7060b0e66b116ed53434f4cde08b2f8727435d2d5', 'validated', '{"audio_key":"1e5b650babc3c8a91db8c7c7fc10f38529c185ff7db96ce327153b000a09e6ac","entity_key":"d_at_home_02:2","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ec7429ca008956ef90e41bd7060b0e66b116ed53434f4cde08b2f8727435d2d5","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/1e5b650babc3c8a91db8c7c7fc10f38529c185ff7db96ce327153b000a09e6ac.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_this_and_these_01:4 -> audio/generated/tr-TR/dialogues/2190205939a903d549fa82900525f23dc30716f5f45360e29da99e52f6bf4b36.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('11033309-cfd0-5a7d-9deb-4d9af346d55b', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_this_and_these_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7d936fafb214898bd836030a23d79feac5b7f15ed6e48509b2ca91f854ea786c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('90851afe-0802-5164-b7af-37afcb79c321', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('11033309-cfd0-5a7d-9deb-4d9af346d55b', 1), '7d936fafb214898bd836030a23d79feac5b7f15ed6e48509b2ca91f854ea786c',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/2190205939a903d549fa82900525f23dc30716f5f45360e29da99e52f6bf4b36.mp3', 1253, '2026-09-13 15:54:33.929256', '05f635e86f00dbcb91f9c9f3c240df313c905afc5aecd9432a1d567d38b84db8', 'validated', '{"audio_key":"2190205939a903d549fa82900525f23dc30716f5f45360e29da99e52f6bf4b36","entity_key":"d_this_and_these_01:4","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"05f635e86f00dbcb91f9c9f3c240df313c905afc5aecd9432a1d567d38b84db8","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/2190205939a903d549fa82900525f23dc30716f5f45360e29da99e52f6bf4b36.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_a1_first_day_capstone_02:2 -> audio/generated/tr-TR/dialogues/2548d614dda5a34a9941be061b11b87ccd457482d17de38faec69a0ab45aa889.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5c62e5ad-e807-5e4b-8b13-0838ec4af4e6', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_a1_first_day_capstone_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4c6262b9cd388f30924f0301edd5c53da99d99cd5e2475c1a97873ac141ea0bd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('43f380cf-7e60-5d26-ae8f-0cf710c705fa', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5c62e5ad-e807-5e4b-8b13-0838ec4af4e6', 1), '4c6262b9cd388f30924f0301edd5c53da99d99cd5e2475c1a97873ac141ea0bd',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/2548d614dda5a34a9941be061b11b87ccd457482d17de38faec69a0ab45aa889.mp3', 1332, '2026-09-13 15:54:33.906378', '8b831fc1df03443116dacd163608f0bdcbe13f92d0078420a97da2faa5697b5a', 'validated', '{"audio_key":"2548d614dda5a34a9941be061b11b87ccd457482d17de38faec69a0ab45aa889","entity_key":"d_a1_first_day_capstone_02:2","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8b831fc1df03443116dacd163608f0bdcbe13f92d0078420a97da2faa5697b5a","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/2548d614dda5a34a9941be061b11b87ccd457482d17de38faec69a0ab45aa889.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_time_and_plans_02:1 -> audio/generated/tr-TR/dialogues/2a35418e305829895782c572f53a1fe3ab0f83a7ff5947dff57981645591db7a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('08f94d34-e16b-5fe9-919d-1fb611d5b3d6', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_time_and_plans_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '441de20a696dd073d70fa8d3cc1b06b56b70f993dc68eb4b5cab1386b2329824'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('43d3145e-9657-51c1-8ad1-30ccfb7e40c9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('08f94d34-e16b-5fe9-919d-1fb611d5b3d6', 1), '441de20a696dd073d70fa8d3cc1b06b56b70f993dc68eb4b5cab1386b2329824',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/2a35418e305829895782c572f53a1fe3ab0f83a7ff5947dff57981645591db7a.mp3', 1567, '2026-09-13 15:54:35.031729', 'd104eca7027d36065182b44a1f7621dcffbd7b24e747810f45cafb672c2ff0e1', 'validated', '{"audio_key":"2a35418e305829895782c572f53a1fe3ab0f83a7ff5947dff57981645591db7a","entity_key":"d_time_and_plans_02:1","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"d104eca7027d36065182b44a1f7621dcffbd7b24e747810f45cafb672c2ff0e1","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/2a35418e305829895782c572f53a1fe3ab0f83a7ff5947dff57981645591db7a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_getting_around_01:2 -> audio/generated/tr-TR/dialogues/2aecf8bf7dec84fff52288a181941344445c744e180c4f84d66b51178afb27f1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c689c15d-6c19-5c39-9e48-543088f578f6', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_getting_around_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '44ec6b89ebef4da05c6e002695a34b8be511df7ae4634cc3681498e016c0662e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('373198e9-1665-58ab-af81-d5a08a66a8f9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c689c15d-6c19-5c39-9e48-543088f578f6', 1), '44ec6b89ebef4da05c6e002695a34b8be511df7ae4634cc3681498e016c0662e',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/2aecf8bf7dec84fff52288a181941344445c744e180c4f84d66b51178afb27f1.mp3', 914, '2026-09-13 15:54:34.964689', '8f4da25f430e2217f292d896c5cea626268c77fede423a867c8e7df6d1796035', 'validated', '{"audio_key":"2aecf8bf7dec84fff52288a181941344445c744e180c4f84d66b51178afb27f1","entity_key":"d_getting_around_01:2","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8f4da25f430e2217f292d896c5cea626268c77fede423a867c8e7df6d1796035","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/2aecf8bf7dec84fff52288a181941344445c744e180c4f84d66b51178afb27f1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_a1_first_day_capstone_02:5 -> audio/generated/tr-TR/dialogues/2b91cfcfcfe3a71136a9e5d5b7463c357a2df02ea075026cb3fee0fc813d2f45.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e03bdfc3-3363-5642-be49-e9e72dc0b478', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_a1_first_day_capstone_02:5')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '968b0a2d07b5a96691004ca2b24549d61f3fbe139ce36ed7b3bf220daffb8648'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f81ae0c3-32e6-54bb-8371-ed6187299e5a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e03bdfc3-3363-5642-be49-e9e72dc0b478', 1), '968b0a2d07b5a96691004ca2b24549d61f3fbe139ce36ed7b3bf220daffb8648',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/2b91cfcfcfe3a71136a9e5d5b7463c357a2df02ea075026cb3fee0fc813d2f45.mp3', 1515, '2026-09-13 15:54:36.146767', 'd8c3920eadd939e95940296c5d0e7d57c107295d84145bdea6c05d8d1efbb0f9', 'validated', '{"audio_key":"2b91cfcfcfe3a71136a9e5d5b7463c357a2df02ea075026cb3fee0fc813d2f45","entity_key":"d_a1_first_day_capstone_02:5","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"d8c3920eadd939e95940296c5d0e7d57c107295d84145bdea6c05d8d1efbb0f9","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/2b91cfcfcfe3a71136a9e5d5b7463c357a2df02ea075026cb3fee0fc813d2f45.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_a1_first_day_capstone_01:2 -> audio/generated/tr-TR/dialogues/2c50c8191d3ba71e1f1f34adf800063ccf6750268fb65adb2b53838d46f800f7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('658715ff-b69e-5c46-a169-0aa0764ffe76', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_a1_first_day_capstone_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dcabea63d0e223c22fc5bcae27f4423c9919e17c8fc4e9b74eedac8b3fbbca73'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f667047b-f9a0-5f69-bc4b-914a1d89f7f8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('658715ff-b69e-5c46-a169-0aa0764ffe76', 1), 'dcabea63d0e223c22fc5bcae27f4423c9919e17c8fc4e9b74eedac8b3fbbca73',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/2c50c8191d3ba71e1f1f34adf800063ccf6750268fb65adb2b53838d46f800f7.mp3', 2272, '2026-09-13 15:54:36.206773', '813fef52b1d14a2e44c392b9d2adff0c9c256a54acb2eafe64fa1f97f0f45b43', 'validated', '{"audio_key":"2c50c8191d3ba71e1f1f34adf800063ccf6750268fb65adb2b53838d46f800f7","entity_key":"d_a1_first_day_capstone_01:2","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"813fef52b1d14a2e44c392b9d2adff0c9c256a54acb2eafe64fa1f97f0f45b43","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/2c50c8191d3ba71e1f1f34adf800063ccf6750268fb65adb2b53838d46f800f7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_my_family_02:2 -> audio/generated/tr-TR/dialogues/2e38cbf2f24281b4baa2efc83e879f679a10f232e1c79ad1567b6923ae220e71.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fea77f68-8b3f-510b-9e0a-29e5b35c6e2b', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_my_family_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '50c9af9645210d18a0065a942f617318e53644595823f517ffce757ee8e4a965'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('884d6405-62da-57c3-b073-aaf5e55cfc47', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fea77f68-8b3f-510b-9e0a-29e5b35c6e2b', 1), '50c9af9645210d18a0065a942f617318e53644595823f517ffce757ee8e4a965',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/2e38cbf2f24281b4baa2efc83e879f679a10f232e1c79ad1567b6923ae220e71.mp3', 1384, '2026-09-13 15:54:37.190978', '11610f594611f80fddf23028135efe9b81d7b6bd369985876012f5ed317cb556', 'validated', '{"audio_key":"2e38cbf2f24281b4baa2efc83e879f679a10f232e1c79ad1567b6923ae220e71","entity_key":"d_my_family_02:2","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"11610f594611f80fddf23028135efe9b81d7b6bd369985876012f5ed317cb556","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/2e38cbf2f24281b4baa2efc83e879f679a10f232e1c79ad1567b6923ae220e71.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_at_the_cafe_02:1 -> audio/generated/tr-TR/dialogues/2edfac30a36eaea09442086c537d534ba159531a60b7136c39833563ba850edc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('75202587-9767-5ddd-a009-790925a68cec', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_at_the_cafe_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8b11ff41a18e3288de28b19574d2b76b4ee88f65fbd9c8ccb0332e2346e27229'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('be8b1b3b-49cf-5a3b-915d-6a161d95cc58', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('75202587-9767-5ddd-a009-790925a68cec', 1), '8b11ff41a18e3288de28b19574d2b76b4ee88f65fbd9c8ccb0332e2346e27229',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/2edfac30a36eaea09442086c537d534ba159531a60b7136c39833563ba850edc.mp3', 1384, '2026-09-13 15:54:37.263718', '27e64f006131602a945d68849469295edcfb191cb2d8139f09f0bf6f295963bb', 'validated', '{"audio_key":"2edfac30a36eaea09442086c537d534ba159531a60b7136c39833563ba850edc","entity_key":"d_at_the_cafe_02:1","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"27e64f006131602a945d68849469295edcfb191cb2d8139f09f0bf6f295963bb","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/2edfac30a36eaea09442086c537d534ba159531a60b7136c39833563ba850edc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_time_and_plans_02:4 -> audio/generated/tr-TR/dialogues/2f43e443bda5eac23fcf3d56fca52e52709615f109aa1b27ae265e258c0f1aec.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('82d2dd70-0fbb-5582-9221-2ec03e602a57', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_time_and_plans_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '007fd197599e9ebda7823fb53e223e921021a45a4ef867894d7fa70cbe025bee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('13294b2d-7b99-5919-9196-c2bd1541958c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('82d2dd70-0fbb-5582-9221-2ec03e602a57', 1), '007fd197599e9ebda7823fb53e223e921021a45a4ef867894d7fa70cbe025bee',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/2f43e443bda5eac23fcf3d56fca52e52709615f109aa1b27ae265e258c0f1aec.mp3', 1149, '2026-09-13 15:54:38.215910', 'cd29f600657a3a8264862e868f0732ff4029e5ff3bf5dfb893726d836e453e06', 'validated', '{"audio_key":"2f43e443bda5eac23fcf3d56fca52e52709615f109aa1b27ae265e258c0f1aec","entity_key":"d_time_and_plans_02:4","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cd29f600657a3a8264862e868f0732ff4029e5ff3bf5dfb893726d836e453e06","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/2f43e443bda5eac23fcf3d56fca52e52709615f109aa1b27ae265e258c0f1aec.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_what_im_doing_02:3 -> audio/generated/tr-TR/dialogues/378f80c548aa8300a7a6e2e003314fbf4728281e6313af85bf5b375272751526.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7533e586-90a5-55ad-8653-6934ed29e94c', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_what_im_doing_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dc304805978dbff9da3b3cec4f16339c66b30e897c1a818dc61455727c8c2444'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e5e954dc-e13b-557a-b057-e89c5c70c3be', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7533e586-90a5-55ad-8653-6934ed29e94c', 1), 'dc304805978dbff9da3b3cec4f16339c66b30e897c1a818dc61455727c8c2444',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/378f80c548aa8300a7a6e2e003314fbf4728281e6313af85bf5b375272751526.mp3', 1280, '2026-09-13 15:54:38.358897', '1fcd44f8c67b0eca2adfd6aaa8d9a659e4307d4c4961fc139e09d6ef118b1333', 'validated', '{"audio_key":"378f80c548aa8300a7a6e2e003314fbf4728281e6313af85bf5b375272751526","entity_key":"d_what_im_doing_02:3","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1fcd44f8c67b0eca2adfd6aaa8d9a659e4307d4c4961fc139e09d6ef118b1333","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/378f80c548aa8300a7a6e2e003314fbf4728281e6313af85bf5b375272751526.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_getting_around_01:4 -> audio/generated/tr-TR/dialogues/3ed044f96a412d718f05980641d0a2d9f97405d83a31803290ffbc7caf7bb5ef.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6ea43ba1-71db-5df6-9508-0023810af346', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_getting_around_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b4515caa4c670b7169ff83ba0027cbe845d3d4f655fd092642cc989a23fa8d90'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bcfd4815-079f-52ab-b987-908c28e2e69f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6ea43ba1-71db-5df6-9508-0023810af346', 1), 'b4515caa4c670b7169ff83ba0027cbe845d3d4f655fd092642cc989a23fa8d90',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/3ed044f96a412d718f05980641d0a2d9f97405d83a31803290ffbc7caf7bb5ef.mp3', 1201, '2026-09-13 15:54:39.248801', 'bf9be9f3f9f41ceb46f1424786b1f2a8a1c2ea9be7fd1fa0788fd87c5a98d209', 'validated', '{"audio_key":"3ed044f96a412d718f05980641d0a2d9f97405d83a31803290ffbc7caf7bb5ef","entity_key":"d_getting_around_01:4","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bf9be9f3f9f41ceb46f1424786b1f2a8a1c2ea9be7fd1fa0788fd87c5a98d209","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/3ed044f96a412d718f05980641d0a2d9f97405d83a31803290ffbc7caf7bb5ef.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_this_and_these_02:2 -> audio/generated/tr-TR/dialogues/460b3c8a69dec452cf466e6c4cdf8811099ae55da62ed3345c6597088f53c1ef.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8bcfd34e-0ac3-5a06-ad10-1ff4f1f3ca0e', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_this_and_these_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4869d88355ccb8729781c47c1194b10f84b760c41d9ab9eef7ad7fd2b90a83cf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a4533e7d-4f03-588f-a88e-42c48fd87bb7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8bcfd34e-0ac3-5a06-ad10-1ff4f1f3ca0e', 1), '4869d88355ccb8729781c47c1194b10f84b760c41d9ab9eef7ad7fd2b90a83cf',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/460b3c8a69dec452cf466e6c4cdf8811099ae55da62ed3345c6597088f53c1ef.mp3', 1436, '2026-09-13 15:54:39.438618', '259bc514925b5b943174af9bce2d8fb5553b1361d31a4843f82dccbf412486bf', 'validated', '{"audio_key":"460b3c8a69dec452cf466e6c4cdf8811099ae55da62ed3345c6597088f53c1ef","entity_key":"d_this_and_these_02:2","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"259bc514925b5b943174af9bce2d8fb5553b1361d31a4843f82dccbf412486bf","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/460b3c8a69dec452cf466e6c4cdf8811099ae55da62ed3345c6597088f53c1ef.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_at_home_01:2 -> audio/generated/tr-TR/dialogues/58b906fe9971149db8435b18c23e82a23dc5a689950713258f642dd7412fe00e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('15c8bfdb-62dd-54f6-b4ee-ebf42fafebcb', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_at_home_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '58184b001c8f776ec0ae3f73c056bdf3a21d7ca9fbf32b6f33f788f2cfa96e3e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9e83e5e7-593d-5c02-98d5-e4227ee7033c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('15c8bfdb-62dd-54f6-b4ee-ebf42fafebcb', 1), '58184b001c8f776ec0ae3f73c056bdf3a21d7ca9fbf32b6f33f788f2cfa96e3e',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/58b906fe9971149db8435b18c23e82a23dc5a689950713258f642dd7412fe00e.mp3', 1201, '2026-09-13 15:54:40.330029', '242df5189031df7367425914188177cdbc12906d07633bd3014e2f1fce24782a', 'validated', '{"audio_key":"58b906fe9971149db8435b18c23e82a23dc5a689950713258f642dd7412fe00e","entity_key":"d_at_home_01:2","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"242df5189031df7367425914188177cdbc12906d07633bd3014e2f1fce24782a","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/58b906fe9971149db8435b18c23e82a23dc5a689950713258f642dd7412fe00e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_this_and_these_02:1 -> audio/generated/tr-TR/dialogues/59cf5c55f36c4d39265647862c1f3b2885800eb309a5ab66d679abd0d003f7be.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4dc1c9fe-87e7-5de7-9b3c-b8c026901adb', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_this_and_these_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'be821e544d0ae59ff905c4bd6690daeda7363b3c2288920419567394265e401d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a38097a5-0724-5597-8801-3cf4c9d53833', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4dc1c9fe-87e7-5de7-9b3c-b8c026901adb', 1), 'be821e544d0ae59ff905c4bd6690daeda7363b3c2288920419567394265e401d',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/59cf5c55f36c4d39265647862c1f3b2885800eb309a5ab66d679abd0d003f7be.mp3', 1071, '2026-09-13 15:54:40.460665', '4d052ee70e4eaf3a28dfea86f20d960a3e7e5700ef9b48417d21e6b8f4628f1f', 'validated', '{"audio_key":"59cf5c55f36c4d39265647862c1f3b2885800eb309a5ab66d679abd0d003f7be","entity_key":"d_this_and_these_02:1","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4d052ee70e4eaf3a28dfea86f20d960a3e7e5700ef9b48417d21e6b8f4628f1f","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/59cf5c55f36c4d39265647862c1f3b2885800eb309a5ab66d679abd0d003f7be.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_what_im_doing_02:1 -> audio/generated/tr-TR/dialogues/5f3b386fc9f9256a75b6466712d531be967ba0fdf7c797f595db0fee926e7f3f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('83801805-6297-5db6-b24b-b8b7e9fcb78c', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_what_im_doing_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6313ed5d17b7ae46801afc223628db50c0cee0a897eed4dbb197cfc9117c0dee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('379b45d3-1432-5b0f-9626-f04b4cdc00b1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('83801805-6297-5db6-b24b-b8b7e9fcb78c', 1), '6313ed5d17b7ae46801afc223628db50c0cee0a897eed4dbb197cfc9117c0dee',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/5f3b386fc9f9256a75b6466712d531be967ba0fdf7c797f595db0fee926e7f3f.mp3', 1071, '2026-09-13 15:54:41.518765', 'fdd4f620f13fb8e48fed2f58f392c6977617a21140f99b62b958f789f1a7f6ae', 'validated', '{"audio_key":"5f3b386fc9f9256a75b6466712d531be967ba0fdf7c797f595db0fee926e7f3f","entity_key":"d_what_im_doing_02:1","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"fdd4f620f13fb8e48fed2f58f392c6977617a21140f99b62b958f789f1a7f6ae","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/5f3b386fc9f9256a75b6466712d531be967ba0fdf7c797f595db0fee926e7f3f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_this_and_these_01:3 -> audio/generated/tr-TR/dialogues/60e674ac348910fa905f95b315296214d88a054b0f036e9e3e7886c48bf01457.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9feb1b3e-8043-5964-80f6-da62fbe171da', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_this_and_these_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3bcac5dda9d28e7b5e4b964dc9cf48310cfec5c8f834b6c92db18e80430a9edc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('59a1a1bb-1c8e-5ede-a9e0-7f23ef84e752', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9feb1b3e-8043-5964-80f6-da62fbe171da', 1), '3bcac5dda9d28e7b5e4b964dc9cf48310cfec5c8f834b6c92db18e80430a9edc',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/60e674ac348910fa905f95b315296214d88a054b0f036e9e3e7886c48bf01457.mp3', 1384, '2026-09-13 15:54:41.549794', '9df3713007e4ffb335435e58bab82142049764e5ceb67c08937aa2004dc60890', 'validated', '{"audio_key":"60e674ac348910fa905f95b315296214d88a054b0f036e9e3e7886c48bf01457","entity_key":"d_this_and_these_01:3","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9df3713007e4ffb335435e58bab82142049764e5ceb67c08937aa2004dc60890","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/60e674ac348910fa905f95b315296214d88a054b0f036e9e3e7886c48bf01457.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_a1_first_day_capstone_02:1 -> audio/generated/tr-TR/dialogues/6112793233011b292b56c90f7b772ef8359d6b3b4e37d12aedc3a5fab1cee39a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('649afcbc-bae3-5410-b704-2e64b760ebb8', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_a1_first_day_capstone_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c8079cbb6b52853466a6dba99dcc3626a2fcff917116738e92fffdc00710cdcb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d709333c-6654-5ed3-83e1-c1cba747373b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('649afcbc-bae3-5410-b704-2e64b760ebb8', 1), 'c8079cbb6b52853466a6dba99dcc3626a2fcff917116738e92fffdc00710cdcb',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/6112793233011b292b56c90f7b772ef8359d6b3b4e37d12aedc3a5fab1cee39a.mp3', 1619, '2026-09-13 15:54:42.664717', 'a49c431fd6fb42481b56b403f402091331ad090255627013a652992506fba2f4', 'validated', '{"audio_key":"6112793233011b292b56c90f7b772ef8359d6b3b4e37d12aedc3a5fab1cee39a","entity_key":"d_a1_first_day_capstone_02:1","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"a49c431fd6fb42481b56b403f402091331ad090255627013a652992506fba2f4","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/6112793233011b292b56c90f7b772ef8359d6b3b4e37d12aedc3a5fab1cee39a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_shopping_basics_02:2 -> audio/generated/tr-TR/dialogues/65fb7a1ec0834ff737e9399a71e12ebbf6d9443625928c4db633a88c59b787c9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('be1bb7e8-1d39-5301-b01d-15d2ce3a0cd9', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_shopping_basics_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '17962ecf4872ab8999e09a478c3e1eaedf373679e0757d4ca64dcd317e112593'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7b1e5ffd-4db9-51ea-af91-d903294f0e63', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('be1bb7e8-1d39-5301-b01d-15d2ce3a0cd9', 1), '17962ecf4872ab8999e09a478c3e1eaedf373679e0757d4ca64dcd317e112593',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/65fb7a1ec0834ff737e9399a71e12ebbf6d9443625928c4db633a88c59b787c9.mp3', 1515, '2026-09-13 15:54:42.643709', 'f1430ba01688067500ac4a00972883ea938ab23fa7032526fa2bf164f9c8d531', 'validated', '{"audio_key":"65fb7a1ec0834ff737e9399a71e12ebbf6d9443625928c4db633a88c59b787c9","entity_key":"d_shopping_basics_02:2","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f1430ba01688067500ac4a00972883ea938ab23fa7032526fa2bf164f9c8d531","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/65fb7a1ec0834ff737e9399a71e12ebbf6d9443625928c4db633a88c59b787c9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_my_family_02:1 -> audio/generated/tr-TR/dialogues/666c990e0a41817c8724ae17260f9dc2402d3ea6d43c76223d6dccbec137ba9f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7c3dc9f9-78ae-5c3e-ae24-f351af3acf62', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_my_family_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '50df3673fdb5f08d17c810f47343df090ad2bf4cfe9a3526a40ac819bad25678'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7cbaae16-bb36-5d8f-88cf-4acb160a70d2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7c3dc9f9-78ae-5c3e-ae24-f351af3acf62', 1), '50df3673fdb5f08d17c810f47343df090ad2bf4cfe9a3526a40ac819bad25678',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/666c990e0a41817c8724ae17260f9dc2402d3ea6d43c76223d6dccbec137ba9f.mp3', 1149, '2026-09-13 15:54:44.116492', '13cd1a9bf57d1aa6d3c3149f9720f2d7d44e800278f2719446dd9d1da9f4eee3', 'validated', '{"audio_key":"666c990e0a41817c8724ae17260f9dc2402d3ea6d43c76223d6dccbec137ba9f","entity_key":"d_my_family_02:1","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"13cd1a9bf57d1aa6d3c3149f9720f2d7d44e800278f2719446dd9d1da9f4eee3","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/666c990e0a41817c8724ae17260f9dc2402d3ea6d43c76223d6dccbec137ba9f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_getting_around_02:2 -> audio/generated/tr-TR/dialogues/6703491ebff0e27d67135f42acbaf0bf6b9eaa419d3faffb1488b87022bc8612.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('04fa8b7b-b323-57d2-89dc-cd0038c10db0', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_getting_around_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b0eddaa77035c67c6e5368422139c2a2580d53f617f5f636adc7f55c47c57dd8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4814f0af-ede9-534c-9a5d-595d12c03b42', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('04fa8b7b-b323-57d2-89dc-cd0038c10db0', 1), 'b0eddaa77035c67c6e5368422139c2a2580d53f617f5f636adc7f55c47c57dd8',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/6703491ebff0e27d67135f42acbaf0bf6b9eaa419d3faffb1488b87022bc8612.mp3', 1671, '2026-09-13 15:54:43.750600', '5714c200e8beb3b72c045d1bacb388c83e7a9a11cd4e542b26f149b71fc04389', 'validated', '{"audio_key":"6703491ebff0e27d67135f42acbaf0bf6b9eaa419d3faffb1488b87022bc8612","entity_key":"d_getting_around_02:2","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5714c200e8beb3b72c045d1bacb388c83e7a9a11cd4e542b26f149b71fc04389","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/6703491ebff0e27d67135f42acbaf0bf6b9eaa419d3faffb1488b87022bc8612.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_who_i_am_02:2 -> audio/generated/tr-TR/dialogues/6ea7cd8880a2cfce62e271e8037671d9f697a250d839d44f334a37116789200e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fb529be3-470e-5c99-b669-6381374559ad', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_who_i_am_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6898b68bff741d3717bdff509da47c1027f1082ecd603a9aada0c2753dc6da93'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5e250f40-3c11-50d1-bde1-07d85ac1dc01', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fb529be3-470e-5c99-b669-6381374559ad', 1), '6898b68bff741d3717bdff509da47c1027f1082ecd603a9aada0c2753dc6da93',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/6ea7cd8880a2cfce62e271e8037671d9f697a250d839d44f334a37116789200e.mp3', 1488, '2026-09-13 15:54:44.830496', '5666a0721d887dcd51dc31523daec97e0e92e556fedb771924446a556c055bf6', 'validated', '{"audio_key":"6ea7cd8880a2cfce62e271e8037671d9f697a250d839d44f334a37116789200e","entity_key":"d_who_i_am_02:2","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5666a0721d887dcd51dc31523daec97e0e92e556fedb771924446a556c055bf6","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/6ea7cd8880a2cfce62e271e8037671d9f697a250d839d44f334a37116789200e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_getting_around_02:4 -> audio/generated/tr-TR/dialogues/6feff3cd5128aeee860d37f6de2cab4e96fb1e330c69ff78dc7c6235a74dc619.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('838b8987-bd91-5baf-bc1b-3ea086fda0b5', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_getting_around_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '038fa7679f76611b069f259f6f78807a0622ae44bd4f181dabe67dc7b01048e5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3421bbd6-9c1f-5075-b4ba-1287dc746c96', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('838b8987-bd91-5baf-bc1b-3ea086fda0b5', 1), '038fa7679f76611b069f259f6f78807a0622ae44bd4f181dabe67dc7b01048e5',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/6feff3cd5128aeee860d37f6de2cab4e96fb1e330c69ff78dc7c6235a74dc619.mp3', 1201, '2026-09-13 15:54:45.196228', '808a7e807beab0702c6441da9ec49e76d597efa784a2f5b4d851dfabeda15f7c', 'validated', '{"audio_key":"6feff3cd5128aeee860d37f6de2cab4e96fb1e330c69ff78dc7c6235a74dc619","entity_key":"d_getting_around_02:4","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"808a7e807beab0702c6441da9ec49e76d597efa784a2f5b4d851dfabeda15f7c","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/6feff3cd5128aeee860d37f6de2cab4e96fb1e330c69ff78dc7c6235a74dc619.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_time_and_plans_02:3 -> audio/generated/tr-TR/dialogues/75a48bc9c58e99337fb5c32dd8e28a86afa76ce56a14c820732c8dfe237093ae.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cad9dc8a-171b-5181-8587-e8bf35cbc0ab', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_time_and_plans_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4c6262b9cd388f30924f0301edd5c53da99d99cd5e2475c1a97873ac141ea0bd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8fc4092e-b8cb-556a-b4e9-82e7622af616', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cad9dc8a-171b-5181-8587-e8bf35cbc0ab', 1), '4c6262b9cd388f30924f0301edd5c53da99d99cd5e2475c1a97873ac141ea0bd',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/75a48bc9c58e99337fb5c32dd8e28a86afa76ce56a14c820732c8dfe237093ae.mp3', 1253, '2026-09-13 15:54:46.394209', 'dc1bae72c98eae09206a5918961b1f15e7cd3c3008606ac6ad669effd4544056', 'validated', '{"audio_key":"75a48bc9c58e99337fb5c32dd8e28a86afa76ce56a14c820732c8dfe237093ae","entity_key":"d_time_and_plans_02:3","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"dc1bae72c98eae09206a5918961b1f15e7cd3c3008606ac6ad669effd4544056","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/75a48bc9c58e99337fb5c32dd8e28a86afa76ce56a14c820732c8dfe237093ae.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_getting_around_02:1 -> audio/generated/tr-TR/dialogues/7fc3c0fa079ff76fb3f3707ff8c8a2444882e0aefc91273871ed601ce6cab423.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('daeca381-85c5-5120-9a4c-74397e967017', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_getting_around_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6e807db4a828a3a71a36f157a183f29c123cbf8d7d4499e0baa8411f60af9a1c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e4c8fadf-b217-50f9-adaf-ad96df41542e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('daeca381-85c5-5120-9a4c-74397e967017', 1), '6e807db4a828a3a71a36f157a183f29c123cbf8d7d4499e0baa8411f60af9a1c',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/7fc3c0fa079ff76fb3f3707ff8c8a2444882e0aefc91273871ed601ce6cab423.mp3', 1384, '2026-09-13 15:54:46.352885', '4830b4d4248cec8c5838bc236b9d381f993de6c692939b50ea4bc3b35fb0bfa0', 'validated', '{"audio_key":"7fc3c0fa079ff76fb3f3707ff8c8a2444882e0aefc91273871ed601ce6cab423","entity_key":"d_getting_around_02:1","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4830b4d4248cec8c5838bc236b9d381f993de6c692939b50ea4bc3b35fb0bfa0","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/7fc3c0fa079ff76fb3f3707ff8c8a2444882e0aefc91273871ed601ce6cab423.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_my_family_01:3 -> audio/generated/tr-TR/dialogues/7ffbc1d3fc57404e4741412a94ba93107361aed5819d545e2f1848fdc18eae00.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d094785e-941f-5bf6-8cbf-605d9ec52684', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_my_family_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5b46155acaa04b7f4eca6f747a9e4a8d46367258595a4ed5c93bc5d19c087d4f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('63476f12-abb0-5e2c-853e-bb817b80dd55', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d094785e-941f-5bf6-8cbf-605d9ec52684', 1), '5b46155acaa04b7f4eca6f747a9e4a8d46367258595a4ed5c93bc5d19c087d4f',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/7ffbc1d3fc57404e4741412a94ba93107361aed5819d545e2f1848fdc18eae00.mp3', 1253, '2026-09-13 15:54:47.432196', 'f9f0fdd5d21eed7a99549f7a64082b6de98a45b1fa740e30057bdc32518682fa', 'validated', '{"audio_key":"7ffbc1d3fc57404e4741412a94ba93107361aed5819d545e2f1848fdc18eae00","entity_key":"d_my_family_01:3","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f9f0fdd5d21eed7a99549f7a64082b6de98a45b1fa740e30057bdc32518682fa","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/7ffbc1d3fc57404e4741412a94ba93107361aed5819d545e2f1848fdc18eae00.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_who_i_am_02:3 -> audio/generated/tr-TR/dialogues/812caa7db14dda6a05b81e3aa9e027c67394c0545dfa52d5b34d3cf5ad2c285c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1f3f91e8-7c69-58a0-a736-80798855c0d8', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_who_i_am_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e2d18f068413356c23d655ddd0e3ce09fb9694c5c4de13f2888f578a51049130'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('804cf7cb-9af6-5a53-8a1f-2acb4864c509', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1f3f91e8-7c69-58a0-a736-80798855c0d8', 1), 'e2d18f068413356c23d655ddd0e3ce09fb9694c5c4de13f2888f578a51049130',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/812caa7db14dda6a05b81e3aa9e027c67394c0545dfa52d5b34d3cf5ad2c285c.mp3', 1280, '2026-09-13 15:54:47.497940', '56aa50f024ecc46f6b4003e79e5362aee17685acbc5080b0ceba3ca02f36be0a', 'validated', '{"audio_key":"812caa7db14dda6a05b81e3aa9e027c67394c0545dfa52d5b34d3cf5ad2c285c","entity_key":"d_who_i_am_02:3","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"56aa50f024ecc46f6b4003e79e5362aee17685acbc5080b0ceba3ca02f36be0a","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/812caa7db14dda6a05b81e3aa9e027c67394c0545dfa52d5b34d3cf5ad2c285c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_who_i_am_02:1 -> audio/generated/tr-TR/dialogues/820741ae5ac043a4044efd9ef73566c7b3f97ef6e99304be730e4dacdcfcac67.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('acd17ac0-082c-5b20-8e31-9ca31ffbe591', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_who_i_am_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4cb0523c8f039469e2b3547ca1b6bc7b67f9c32e2da3d49b721d019f9f9187a0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fd995e43-7de8-5348-a792-f28ff29044ff', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('acd17ac0-082c-5b20-8e31-9ca31ffbe591', 1), '4cb0523c8f039469e2b3547ca1b6bc7b67f9c32e2da3d49b721d019f9f9187a0',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/820741ae5ac043a4044efd9ef73566c7b3f97ef6e99304be730e4dacdcfcac67.mp3', 1436, '2026-09-13 15:54:48.513660', 'f5a0f5f69ebecf8597127dc92ab90275c42e626c6f47e1ab5396aee1819be64b', 'validated', '{"audio_key":"820741ae5ac043a4044efd9ef73566c7b3f97ef6e99304be730e4dacdcfcac67","entity_key":"d_who_i_am_02:1","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f5a0f5f69ebecf8597127dc92ab90275c42e626c6f47e1ab5396aee1819be64b","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/820741ae5ac043a4044efd9ef73566c7b3f97ef6e99304be730e4dacdcfcac67.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_my_family_02:3 -> audio/generated/tr-TR/dialogues/905f6086e92d36fb914d178457d2834dfdec62c1bc6ebc5f0b4739898b7ab566.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('02c6f81c-b2ba-5639-a86f-69401c9ed453', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_my_family_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '17fe3d68df8c76d5fdb330d628b7771cb2519643b49932e9e5d296b35eb63040'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('04185702-0d22-58e6-9ccc-d72fd34ae5cc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('02c6f81c-b2ba-5639-a86f-69401c9ed453', 1), '17fe3d68df8c76d5fdb330d628b7771cb2519643b49932e9e5d296b35eb63040',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/905f6086e92d36fb914d178457d2834dfdec62c1bc6ebc5f0b4739898b7ab566.mp3', 1515, '2026-09-13 15:54:48.647207', '1ca269e59694e1ffaebf65a42933825129e467434e96bdc90155ed92d04115f4', 'validated', '{"audio_key":"905f6086e92d36fb914d178457d2834dfdec62c1bc6ebc5f0b4739898b7ab566","entity_key":"d_my_family_02:3","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1ca269e59694e1ffaebf65a42933825129e467434e96bdc90155ed92d04115f4","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/905f6086e92d36fb914d178457d2834dfdec62c1bc6ebc5f0b4739898b7ab566.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_getting_around_02:3 -> audio/generated/tr-TR/dialogues/931e87e9a1ed5b2f2af12f79c904ba51bc262ee2569242cc34a99a28a0e94a0e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('23bf4a23-8047-50f4-9784-43b565e4ec4f', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_getting_around_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4083df5f0438bbdf883f16676b7099cbbc90d6d3b71fe1e0edf432ad8046d63e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f0b9b8fd-de80-5995-a419-620714605496', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('23bf4a23-8047-50f4-9784-43b565e4ec4f', 1), '4083df5f0438bbdf883f16676b7099cbbc90d6d3b71fe1e0edf432ad8046d63e',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/931e87e9a1ed5b2f2af12f79c904ba51bc262ee2569242cc34a99a28a0e94a0e.mp3', 1149, '2026-09-13 15:54:49.582129', 'c5ed5a63391cfd96fa397ccf74fffb5ca4519bb2bbf87f315f7c57e993d16181', 'validated', '{"audio_key":"931e87e9a1ed5b2f2af12f79c904ba51bc262ee2569242cc34a99a28a0e94a0e","entity_key":"d_getting_around_02:3","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c5ed5a63391cfd96fa397ccf74fffb5ca4519bb2bbf87f315f7c57e993d16181","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/931e87e9a1ed5b2f2af12f79c904ba51bc262ee2569242cc34a99a28a0e94a0e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_my_family_02:4 -> audio/generated/tr-TR/dialogues/962a613cfb857fd6bfebd79c43d8a6dc494c09ec3faa19618f654db503d002d7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('18130cff-3ad3-59b2-997a-4033e2776e20', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_my_family_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cf4aa4cfc2c66b8c94f5cceec0edd94b61616cd485a5a96367a6e6d7e7ea5b93'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1be4dbc2-d68e-531d-8407-1935c5e0c924', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('18130cff-3ad3-59b2-997a-4033e2776e20', 1), 'cf4aa4cfc2c66b8c94f5cceec0edd94b61616cd485a5a96367a6e6d7e7ea5b93',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/962a613cfb857fd6bfebd79c43d8a6dc494c09ec3faa19618f654db503d002d7.mp3', 1018, '2026-09-13 15:54:49.669106', 'be8ca166095af2f350aab0c5b5233de92de1b48648d241542aa09fed920123af', 'validated', '{"audio_key":"962a613cfb857fd6bfebd79c43d8a6dc494c09ec3faa19618f654db503d002d7","entity_key":"d_my_family_02:4","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"be8ca166095af2f350aab0c5b5233de92de1b48648d241542aa09fed920123af","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/962a613cfb857fd6bfebd79c43d8a6dc494c09ec3faa19618f654db503d002d7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_time_and_plans_01:1 -> audio/generated/tr-TR/dialogues/9fddb42f36826506823e56f07b6e56a210ba1b92621c0257b6ba9d08690f6db5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('afb90718-10bf-5319-8786-b5a82e7987f4', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_time_and_plans_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0452ceadda5b16d2f2e5cd4a5ea3470deba5b7a7162162f322c46d1da824517e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1e1eea82-882a-519f-8405-901eae30d04a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('afb90718-10bf-5319-8786-b5a82e7987f4', 1), '0452ceadda5b16d2f2e5cd4a5ea3470deba5b7a7162162f322c46d1da824517e',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/9fddb42f36826506823e56f07b6e56a210ba1b92621c0257b6ba9d08690f6db5.mp3', 1149, '2026-09-13 15:54:50.629463', 'cf0a994c9db1bce88b595d84236c00b022ec66c3b4a213e6e004f63ddfb9c7b1', 'validated', '{"audio_key":"9fddb42f36826506823e56f07b6e56a210ba1b92621c0257b6ba9d08690f6db5","entity_key":"d_time_and_plans_01:1","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cf0a994c9db1bce88b595d84236c00b022ec66c3b4a213e6e004f63ddfb9c7b1","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/9fddb42f36826506823e56f07b6e56a210ba1b92621c0257b6ba9d08690f6db5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_at_home_01:4 -> audio/generated/tr-TR/dialogues/a3fd8d4dc79a1cf58e6f25b37b100972877083292f6c29bdc0fa3664bace60b3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2ba52019-f455-51b4-952e-bb7d1ae90559', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_at_home_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '13563be54728de7ab4fa319dc07ba33813142f9035000cdc3293d6d1d223ccbe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ddadda3c-5a00-5671-960f-b65a033439af', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2ba52019-f455-51b4-952e-bb7d1ae90559', 1), '13563be54728de7ab4fa319dc07ba33813142f9035000cdc3293d6d1d223ccbe',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/a3fd8d4dc79a1cf58e6f25b37b100972877083292f6c29bdc0fa3664bace60b3.mp3', 966, '2026-09-13 15:54:51.073911', '834917eedb6889cfc35ecc1942489a9bc7b9e09f300bff0d21fc27378beeac2b', 'validated', '{"audio_key":"a3fd8d4dc79a1cf58e6f25b37b100972877083292f6c29bdc0fa3664bace60b3","entity_key":"d_at_home_01:4","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"834917eedb6889cfc35ecc1942489a9bc7b9e09f300bff0d21fc27378beeac2b","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/a3fd8d4dc79a1cf58e6f25b37b100972877083292f6c29bdc0fa3664bace60b3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_this_and_these_02:4 -> audio/generated/tr-TR/dialogues/a3fd8d4dc79a1cf58e6f25b37b100972877083292f6c29bdc0fa3664bace60b3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4bd57401-3794-5851-85f5-509d9052bdd4', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_this_and_these_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '13563be54728de7ab4fa319dc07ba33813142f9035000cdc3293d6d1d223ccbe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('319e852c-183b-5ffe-b412-c226abba76a0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4bd57401-3794-5851-85f5-509d9052bdd4', 1), '13563be54728de7ab4fa319dc07ba33813142f9035000cdc3293d6d1d223ccbe',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/a3fd8d4dc79a1cf58e6f25b37b100972877083292f6c29bdc0fa3664bace60b3.mp3', 966, '2026-09-13 15:54:51.073911', '834917eedb6889cfc35ecc1942489a9bc7b9e09f300bff0d21fc27378beeac2b', 'validated', '{"audio_key":"a3fd8d4dc79a1cf58e6f25b37b100972877083292f6c29bdc0fa3664bace60b3","entity_key":"d_this_and_these_02:4","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"834917eedb6889cfc35ecc1942489a9bc7b9e09f300bff0d21fc27378beeac2b","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/a3fd8d4dc79a1cf58e6f25b37b100972877083292f6c29bdc0fa3664bace60b3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_at_home_02:4 -> audio/generated/tr-TR/dialogues/a58e8fea6227254b8f379985e10c53824ab0daf8d76bf0856714db9365c60209.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('66600329-4660-5d86-a679-2207e4c07ca5', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_at_home_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3b45c2deaa55799ec6c7fd725141a0e381b3187693b375a07a127ee770b29279'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('80358ebe-b108-59ac-99b0-b689142d68c8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('66600329-4660-5d86-a679-2207e4c07ca5', 1), '3b45c2deaa55799ec6c7fd725141a0e381b3187693b375a07a127ee770b29279',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/a58e8fea6227254b8f379985e10c53824ab0daf8d76bf0856714db9365c60209.mp3', 1018, '2026-09-13 15:54:51.734206', '5e6290df01d56ed28bed5454174416c5c41bdeaf241719fca02f948ae80af0e0', 'validated', '{"audio_key":"a58e8fea6227254b8f379985e10c53824ab0daf8d76bf0856714db9365c60209","entity_key":"d_at_home_02:4","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5e6290df01d56ed28bed5454174416c5c41bdeaf241719fca02f948ae80af0e0","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/a58e8fea6227254b8f379985e10c53824ab0daf8d76bf0856714db9365c60209.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_at_home_02:1 -> audio/generated/tr-TR/dialogues/a6e0cab19d8766441b678c2b21b407550e6311b11e156446abc8214c5bf06436.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8b174986-5d60-51da-b13b-108ab143822b', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_at_home_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6c7d6050b23cde1a3e9f78d5fddd5c0541d71d981f1e1fe68e60033a3927fac6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('38a2c9f8-3e74-5499-a058-5b64c6b484ca', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8b174986-5d60-51da-b13b-108ab143822b', 1), '6c7d6050b23cde1a3e9f78d5fddd5c0541d71d981f1e1fe68e60033a3927fac6',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/a6e0cab19d8766441b678c2b21b407550e6311b11e156446abc8214c5bf06436.mp3', 1332, '2026-09-13 15:54:52.159156', '5692a351e263ef37042a1d8c90d73791da2719c8c3702bf34f519d8152dabb2b', 'validated', '{"audio_key":"a6e0cab19d8766441b678c2b21b407550e6311b11e156446abc8214c5bf06436","entity_key":"d_at_home_02:1","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5692a351e263ef37042a1d8c90d73791da2719c8c3702bf34f519d8152dabb2b","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/a6e0cab19d8766441b678c2b21b407550e6311b11e156446abc8214c5bf06436.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_what_im_doing_02:2 -> audio/generated/tr-TR/dialogues/a9591a68c15f37f9cd6061b2314d53a27c6368914ef42f75a550833243b6c96b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('278ab736-7976-514b-943b-830285789e60', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_what_im_doing_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6503f41b35d37a8119a05678c8a0985f4407c890f54c12880b42c4542a46145d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2ddfc8dd-1e11-5fb3-953f-b0e78ed619eb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('278ab736-7976-514b-943b-830285789e60', 1), '6503f41b35d37a8119a05678c8a0985f4407c890f54c12880b42c4542a46145d',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/a9591a68c15f37f9cd6061b2314d53a27c6368914ef42f75a550833243b6c96b.mp3', 1097, '2026-09-13 15:54:52.785801', 'd378772d6a8d9c0acdf1876d9e9a517a3a3fe7cab622599c35b181b9f1d7d4c1', 'validated', '{"audio_key":"a9591a68c15f37f9cd6061b2314d53a27c6368914ef42f75a550833243b6c96b","entity_key":"d_what_im_doing_02:2","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d378772d6a8d9c0acdf1876d9e9a517a3a3fe7cab622599c35b181b9f1d7d4c1","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/a9591a68c15f37f9cd6061b2314d53a27c6368914ef42f75a550833243b6c96b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_time_and_plans_01:2 -> audio/generated/tr-TR/dialogues/b2207beb972218461d87412cca62da743a0348958b724f2346a4c9c103942415.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('734f55ce-ffad-58e5-9835-40affd737235', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_time_and_plans_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6330212a57d69dde3454605f930d4adf221086e640ed3a60b592d709c177b065'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('36380408-517c-5eae-b5d2-cee6767fcaa4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('734f55ce-ffad-58e5-9835-40affd737235', 1), '6330212a57d69dde3454605f930d4adf221086e640ed3a60b592d709c177b065',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/b2207beb972218461d87412cca62da743a0348958b724f2346a4c9c103942415.mp3', 1097, '2026-09-13 15:54:53.210933', '6491fa63afc8f4e61467508449204d4edf0efda1e95a90f41bc29c4ced0e13e5', 'validated', '{"audio_key":"b2207beb972218461d87412cca62da743a0348958b724f2346a4c9c103942415","entity_key":"d_time_and_plans_01:2","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6491fa63afc8f4e61467508449204d4edf0efda1e95a90f41bc29c4ced0e13e5","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/b2207beb972218461d87412cca62da743a0348958b724f2346a4c9c103942415.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_what_im_doing_02:4 -> audio/generated/tr-TR/dialogues/b2fb1718a7dc01399d04cb63944c46a648aa9d35d207868da45e503b8562bbe2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('604ae5dd-b03f-50de-b299-69e537c2f0a2', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_what_im_doing_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3ec4fd474460563d39aed1dae3aee5d9dcedc48978ee7ff4cbcf86f921639dcb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('76871cc8-7795-5cef-bfc0-9dfc6a12ab1f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('604ae5dd-b03f-50de-b299-69e537c2f0a2', 1), '3ec4fd474460563d39aed1dae3aee5d9dcedc48978ee7ff4cbcf86f921639dcb',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/b2fb1718a7dc01399d04cb63944c46a648aa9d35d207868da45e503b8562bbe2.mp3', 1253, '2026-09-13 15:54:53.899677', 'dc77353fde3e35f64cedee0dc001e07d7bb99ddb051a51def81ac49b3fb2ca66', 'validated', '{"audio_key":"b2fb1718a7dc01399d04cb63944c46a648aa9d35d207868da45e503b8562bbe2","entity_key":"d_what_im_doing_02:4","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dc77353fde3e35f64cedee0dc001e07d7bb99ddb051a51def81ac49b3fb2ca66","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/b2fb1718a7dc01399d04cb63944c46a648aa9d35d207868da45e503b8562bbe2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_what_im_doing_01:2 -> audio/generated/tr-TR/dialogues/b302a3a6e7dd6415e4db5d935970d451ced7a60f2b66bdd3351d916b1e59f97c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('df657621-7030-51fc-8294-3e0e0b7f1fe5', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_what_im_doing_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '233b35b36e1acfc0297ada9f7b14d9b421c3c65fa8b53b294dbd7ad3647eea63'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e3b7cdd3-8fc0-5f6e-91b2-6c65fd6e2032', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('df657621-7030-51fc-8294-3e0e0b7f1fe5', 1), '233b35b36e1acfc0297ada9f7b14d9b421c3c65fa8b53b294dbd7ad3647eea63',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/b302a3a6e7dd6415e4db5d935970d451ced7a60f2b66bdd3351d916b1e59f97c.mp3', 1332, '2026-09-13 15:54:54.287098', 'def02bf23ded0e3c216890283cc8cf6b30fc04d10896f3baf33a19627ff61cba', 'validated', '{"audio_key":"b302a3a6e7dd6415e4db5d935970d451ced7a60f2b66bdd3351d916b1e59f97c","entity_key":"d_what_im_doing_01:2","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"def02bf23ded0e3c216890283cc8cf6b30fc04d10896f3baf33a19627ff61cba","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/b302a3a6e7dd6415e4db5d935970d451ced7a60f2b66bdd3351d916b1e59f97c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_a1_first_day_capstone_02:3 -> audio/generated/tr-TR/dialogues/b4c3182ace8bb69012298c45bc4bb80f99fd654aa9e3f40a53edc36d5f56b2a6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5cff48f8-e0e2-5388-91ea-3eefa7decdef', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_a1_first_day_capstone_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '52fe93f5c5f0ea3596dd21cb8cc7e73ed9e056cc27decaba1abd70edd9671e1f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f51eab21-2671-5f28-90e1-f377d0e18010', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5cff48f8-e0e2-5388-91ea-3eefa7decdef', 1), '52fe93f5c5f0ea3596dd21cb8cc7e73ed9e056cc27decaba1abd70edd9671e1f',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/b4c3182ace8bb69012298c45bc4bb80f99fd654aa9e3f40a53edc36d5f56b2a6.mp3', 914, '2026-09-13 15:54:55.012427', '518a768b9202770ba3e42a47af95611627391bccde2b211eccccd2691194658f', 'validated', '{"audio_key":"b4c3182ace8bb69012298c45bc4bb80f99fd654aa9e3f40a53edc36d5f56b2a6","entity_key":"d_a1_first_day_capstone_02:3","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"518a768b9202770ba3e42a47af95611627391bccde2b211eccccd2691194658f","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/b4c3182ace8bb69012298c45bc4bb80f99fd654aa9e3f40a53edc36d5f56b2a6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_at_the_cafe_01:2 -> audio/generated/tr-TR/dialogues/b5aae1220a8cad2b7d1fab2dc8e875ec9dd568fa24a42b263465f6816819d73d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('256c8b63-d18e-5d1b-8c1a-60b004b72dfc', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_at_the_cafe_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a588c5fcc7ad28341c67ded829a6b0cbbaceac038fd6c6b5b1267bb30833b4d4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('01bf3ff9-67da-56c8-933e-95b54b7f3ab9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('256c8b63-d18e-5d1b-8c1a-60b004b72dfc', 1), 'a588c5fcc7ad28341c67ded829a6b0cbbaceac038fd6c6b5b1267bb30833b4d4',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/b5aae1220a8cad2b7d1fab2dc8e875ec9dd568fa24a42b263465f6816819d73d.mp3', 1488, '2026-09-13 15:54:55.474182', '11b24ec2e3e0d0d648ac810f1eceac4774f6232a35e02437d6aaaceca0837513', 'validated', '{"audio_key":"b5aae1220a8cad2b7d1fab2dc8e875ec9dd568fa24a42b263465f6816819d73d","entity_key":"d_at_the_cafe_01:2","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"11b24ec2e3e0d0d648ac810f1eceac4774f6232a35e02437d6aaaceca0837513","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/b5aae1220a8cad2b7d1fab2dc8e875ec9dd568fa24a42b263465f6816819d73d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_at_the_cafe_01:4 -> audio/generated/tr-TR/dialogues/b973e1990f5d7ef6d0e02949f300b6423d06e433121c5c9ea045085f1f1ee320.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('991d8299-ec49-5f49-bdfa-2c918b5cdc29', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_at_the_cafe_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '007fd197599e9ebda7823fb53e223e921021a45a4ef867894d7fa70cbe025bee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('855adb6b-204c-50f0-9583-6b378d95aebc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('991d8299-ec49-5f49-bdfa-2c918b5cdc29', 1), '007fd197599e9ebda7823fb53e223e921021a45a4ef867894d7fa70cbe025bee',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/b973e1990f5d7ef6d0e02949f300b6423d06e433121c5c9ea045085f1f1ee320.mp3', 914, '2026-09-13 15:54:56.247324', '45dd025a36d686f0675f3bbd33fbd11c1245487950225ab64d42d36523c7fa23', 'validated', '{"audio_key":"b973e1990f5d7ef6d0e02949f300b6423d06e433121c5c9ea045085f1f1ee320","entity_key":"d_at_the_cafe_01:4","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"45dd025a36d686f0675f3bbd33fbd11c1245487950225ab64d42d36523c7fa23","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/b973e1990f5d7ef6d0e02949f300b6423d06e433121c5c9ea045085f1f1ee320.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_at_the_cafe_02:3 -> audio/generated/tr-TR/dialogues/ba0fc0d42e46ca013f940c5554f3d6969cbe2fd2b7f8248560bb688f9060c7a8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('18c33593-17df-5701-8c32-7ab16ab14d9b', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_at_the_cafe_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4083df5f0438bbdf883f16676b7099cbbc90d6d3b71fe1e0edf432ad8046d63e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('83fd13ea-84e5-50da-89bd-68013597f0ef', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('18c33593-17df-5701-8c32-7ab16ab14d9b', 1), '4083df5f0438bbdf883f16676b7099cbbc90d6d3b71fe1e0edf432ad8046d63e',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/ba0fc0d42e46ca013f940c5554f3d6969cbe2fd2b7f8248560bb688f9060c7a8.mp3', 1280, '2026-09-13 15:54:56.557551', '7a5846c27f616841ffb95021633a25a9eb8c63f10fac0d5582a0ab1a7142cc4e', 'validated', '{"audio_key":"ba0fc0d42e46ca013f940c5554f3d6969cbe2fd2b7f8248560bb688f9060c7a8","entity_key":"d_at_the_cafe_02:3","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7a5846c27f616841ffb95021633a25a9eb8c63f10fac0d5582a0ab1a7142cc4e","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/ba0fc0d42e46ca013f940c5554f3d6969cbe2fd2b7f8248560bb688f9060c7a8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_at_home_01:3 -> audio/generated/tr-TR/dialogues/bde29aa35271f06d72cc917b5ab3a491c8f52eb148d8a4c438afd4e3a4e929eb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('739374e0-ba33-5e7d-9e51-0fe13898ca1a', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_at_home_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '50d874081495a70319ad53dc5424ac1f20a5aecf5b62ffbd5b3115024c00defb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fe100619-27e5-59cc-9956-12e7138b57c4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('739374e0-ba33-5e7d-9e51-0fe13898ca1a', 1), '50d874081495a70319ad53dc5424ac1f20a5aecf5b62ffbd5b3115024c00defb',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/bde29aa35271f06d72cc917b5ab3a491c8f52eb148d8a4c438afd4e3a4e929eb.mp3', 1253, '2026-09-13 15:54:57.869390', 'fe8d6ac9b89ded6e27aed2af492ef7bebd946291f671afe8bc48ecfbcb5c669c', 'validated', '{"audio_key":"bde29aa35271f06d72cc917b5ab3a491c8f52eb148d8a4c438afd4e3a4e929eb","entity_key":"d_at_home_01:3","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fe8d6ac9b89ded6e27aed2af492ef7bebd946291f671afe8bc48ecfbcb5c669c","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/bde29aa35271f06d72cc917b5ab3a491c8f52eb148d8a4c438afd4e3a4e929eb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_my_family_01:2 -> audio/generated/tr-TR/dialogues/bf949d2d3bb64452543ea552c9ce33713e13e7a8652d448c18c297d735e614de.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('34292eaa-a026-5cd1-bee2-b1bc19c83927', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_my_family_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '84871a8cf65fe9b5ca36cfbbcfbea99f506a9f5abbf86ad49efdd0460b17270c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f526718a-75d8-5b07-86c5-890c958f1ead', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('34292eaa-a026-5cd1-bee2-b1bc19c83927', 1), '84871a8cf65fe9b5ca36cfbbcfbea99f506a9f5abbf86ad49efdd0460b17270c',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/bf949d2d3bb64452543ea552c9ce33713e13e7a8652d448c18c297d735e614de.mp3', 1253, '2026-09-13 15:54:57.607570', '5307c8b6c343e84cb3816de8ff44c158ef3e28cf825c688dae9581489234e201', 'validated', '{"audio_key":"bf949d2d3bb64452543ea552c9ce33713e13e7a8652d448c18c297d735e614de","entity_key":"d_my_family_01:2","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5307c8b6c343e84cb3816de8ff44c158ef3e28cf825c688dae9581489234e201","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/bf949d2d3bb64452543ea552c9ce33713e13e7a8652d448c18c297d735e614de.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_at_the_cafe_01:3 -> audio/generated/tr-TR/dialogues/c2135a8605980a4355c9327358f79ebb662f950aead991cc104d582502e7fa75.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c823d2b8-a078-5dc7-a6b7-a9326eddb0c3', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_at_the_cafe_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a97056321ef03e65ffc89c053152cd4023f80b08b4fe1c63f6b6b060b93d1028'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c975251a-b1c8-534e-8c1f-e23dde5d6268', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c823d2b8-a078-5dc7-a6b7-a9326eddb0c3', 1), 'a97056321ef03e65ffc89c053152cd4023f80b08b4fe1c63f6b6b060b93d1028',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/c2135a8605980a4355c9327358f79ebb662f950aead991cc104d582502e7fa75.mp3', 1567, '2026-09-13 15:54:58.757641', '0c4806b793642d8a5e06b65d7c6958281cc8c4f277284da16a3bfc7255b2cae7', 'validated', '{"audio_key":"c2135a8605980a4355c9327358f79ebb662f950aead991cc104d582502e7fa75","entity_key":"d_at_the_cafe_01:3","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0c4806b793642d8a5e06b65d7c6958281cc8c4f277284da16a3bfc7255b2cae7","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/c2135a8605980a4355c9327358f79ebb662f950aead991cc104d582502e7fa75.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_shopping_basics_01:2 -> audio/generated/tr-TR/dialogues/c7a983c6d073d58131cbf13a18d46fc917125555001b73d2ac01ae7c3233783a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('414d78ff-9e25-53d3-bdfa-453b0e123fdb', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_shopping_basics_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aff14dfaa0522af23a094ed4b501ff4cbabfec734af6427fccdd16fe63f1f730'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b239ba12-05dd-5e11-acfd-155d0e2d9bee', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('414d78ff-9e25-53d3-bdfa-453b0e123fdb', 1), 'aff14dfaa0522af23a094ed4b501ff4cbabfec734af6427fccdd16fe63f1f730',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/c7a983c6d073d58131cbf13a18d46fc917125555001b73d2ac01ae7c3233783a.mp3', 1018, '2026-09-13 15:54:58.976222', '3c9b1cb7595d3cc08d6a48744207da45c9f13e9c46494ecc6618710fc1577c24', 'validated', '{"audio_key":"c7a983c6d073d58131cbf13a18d46fc917125555001b73d2ac01ae7c3233783a","entity_key":"d_shopping_basics_01:2","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"3c9b1cb7595d3cc08d6a48744207da45c9f13e9c46494ecc6618710fc1577c24","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/c7a983c6d073d58131cbf13a18d46fc917125555001b73d2ac01ae7c3233783a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_time_and_plans_02:2 -> audio/generated/tr-TR/dialogues/c879f1ce989cb2088bf821494e0f74f33da0f9c5bbadf3e87e2e40b3c91e5f3b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('36f65eb1-8452-5f5a-bf50-48594ac00bfd', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_time_and_plans_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '338f022c6afd832b03f9d9a6794a61a45702840619e4b863bb9d01e45883721a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0b2cc044-ce2f-5446-b7a7-51b1a92a260a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('36f65eb1-8452-5f5a-bf50-48594ac00bfd', 1), '338f022c6afd832b03f9d9a6794a61a45702840619e4b863bb9d01e45883721a',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/c879f1ce989cb2088bf821494e0f74f33da0f9c5bbadf3e87e2e40b3c91e5f3b.mp3', 1515, '2026-09-13 15:55:00.272716', 'abdbb53298ab3afb98b9ced0ea63c8ec7124137a4e3a9e115262c531c08ace2d', 'validated', '{"audio_key":"c879f1ce989cb2088bf821494e0f74f33da0f9c5bbadf3e87e2e40b3c91e5f3b","entity_key":"d_time_and_plans_02:2","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"abdbb53298ab3afb98b9ced0ea63c8ec7124137a4e3a9e115262c531c08ace2d","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/c879f1ce989cb2088bf821494e0f74f33da0f9c5bbadf3e87e2e40b3c91e5f3b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_at_home_01:1 -> audio/generated/tr-TR/dialogues/cbec9044a5fc3bdc0d387e063e708eaa97e644c7fd0503a68659c1dd5ff966be.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('138cf5f1-8022-593b-a32c-43ddbcff0e0c', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_at_home_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c5aebbb40991ef4416f6d0a34d08669c09ba0e16b5b4833502c4991da6aed78e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1ce38207-890d-5f87-b344-244043a210be', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('138cf5f1-8022-593b-a32c-43ddbcff0e0c', 1), 'c5aebbb40991ef4416f6d0a34d08669c09ba0e16b5b4833502c4991da6aed78e',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/cbec9044a5fc3bdc0d387e063e708eaa97e644c7fd0503a68659c1dd5ff966be.mp3', 1280, '2026-09-13 15:55:00.052164', '263d2b563ef262cd78fde9479a7652c5d9f0458466fb5e51fde5c30b0e4c9761', 'validated', '{"audio_key":"cbec9044a5fc3bdc0d387e063e708eaa97e644c7fd0503a68659c1dd5ff966be","entity_key":"d_at_home_01:1","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"263d2b563ef262cd78fde9479a7652c5d9f0458466fb5e51fde5c30b0e4c9761","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/cbec9044a5fc3bdc0d387e063e708eaa97e644c7fd0503a68659c1dd5ff966be.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_a1_first_day_capstone_01:1 -> audio/generated/tr-TR/dialogues/cc89bc2b22f7f36eca14ac2c3f4eae1288da244b7e56fdd581b972e2c1a2dc2b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fe371425-114e-51ac-825a-6c11b29e5da5', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_a1_first_day_capstone_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7ec45d2f854436e1d29088e8d631da85c07c2cab69eccf64979adb12715e07dc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('66f9cbb7-6f8a-56f9-9022-d3095bd8634c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fe371425-114e-51ac-825a-6c11b29e5da5', 1), '7ec45d2f854436e1d29088e8d631da85c07c2cab69eccf64979adb12715e07dc',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/cc89bc2b22f7f36eca14ac2c3f4eae1288da244b7e56fdd581b972e2c1a2dc2b.mp3', 2037, '2026-09-13 15:55:01.248460', '7573ee79fcbb8a900fab4d35ac5aae2ed437bd1cd7a4dbd8d64e904b0060a2d6', 'validated', '{"audio_key":"cc89bc2b22f7f36eca14ac2c3f4eae1288da244b7e56fdd581b972e2c1a2dc2b","entity_key":"d_a1_first_day_capstone_01:1","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7573ee79fcbb8a900fab4d35ac5aae2ed437bd1cd7a4dbd8d64e904b0060a2d6","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/cc89bc2b22f7f36eca14ac2c3f4eae1288da244b7e56fdd581b972e2c1a2dc2b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_getting_around_01:1 -> audio/generated/tr-TR/dialogues/ccbc3e05f312a2e3776d8aa3fa8f3af719923b0829bf0a198ef6827497f370fa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7078d49d-b3d2-55cd-b3da-102b5cb52275', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_getting_around_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e2559f28ea9b01d6c5f07cbb50d855ee80ea7d8e090d95b1c33dcde47c6adf62'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8a50a8c1-7c9a-50f6-b5e1-8298fc290599', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7078d49d-b3d2-55cd-b3da-102b5cb52275', 1), 'e2559f28ea9b01d6c5f07cbb50d855ee80ea7d8e090d95b1c33dcde47c6adf62',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/ccbc3e05f312a2e3776d8aa3fa8f3af719923b0829bf0a198ef6827497f370fa.mp3', 1567, '2026-09-13 15:55:01.419441', 'f221a1218442a4c1512de25ab8df4186a609bad920a39b79cac0400f4f5a965c', 'validated', '{"audio_key":"ccbc3e05f312a2e3776d8aa3fa8f3af719923b0829bf0a198ef6827497f370fa","entity_key":"d_getting_around_01:1","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f221a1218442a4c1512de25ab8df4186a609bad920a39b79cac0400f4f5a965c","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/ccbc3e05f312a2e3776d8aa3fa8f3af719923b0829bf0a198ef6827497f370fa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_at_the_cafe_02:4 -> audio/generated/tr-TR/dialogues/cd8fa398e2abab874835eb078b1330ef5efbc09126a1623649a58b5b6aea077f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8bc0a718-9fff-515a-94f2-630f6be0bb24', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_at_the_cafe_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '038fa7679f76611b069f259f6f78807a0622ae44bd4f181dabe67dc7b01048e5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f35618c0-f525-5b69-8b55-ffb9201e7a78', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8bc0a718-9fff-515a-94f2-630f6be0bb24', 1), '038fa7679f76611b069f259f6f78807a0622ae44bd4f181dabe67dc7b01048e5',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/cd8fa398e2abab874835eb078b1330ef5efbc09126a1623649a58b5b6aea077f.mp3', 966, '2026-09-13 15:55:02.318727', 'de8354f2852cf704719240048c9520a3f3a6acd0fc83d2ec1974f5425e081cf8', 'validated', '{"audio_key":"cd8fa398e2abab874835eb078b1330ef5efbc09126a1623649a58b5b6aea077f","entity_key":"d_at_the_cafe_02:4","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"de8354f2852cf704719240048c9520a3f3a6acd0fc83d2ec1974f5425e081cf8","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/cd8fa398e2abab874835eb078b1330ef5efbc09126a1623649a58b5b6aea077f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_a1_first_day_capstone_02:4 -> audio/generated/tr-TR/dialogues/d05bd69fa37924ba98734029ae621bb1b757924a5037c5c68d804d9d26fd869a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c8454c26-eed4-53e3-9842-8c2a2a1c991b', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_a1_first_day_capstone_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7bb789c223bc57f3a7b016626f51f792e8e48cbda7dfe87b31c8ad2a52b58de4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bcadc1df-fa22-5c2c-acaa-6549d797552b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c8454c26-eed4-53e3-9842-8c2a2a1c991b', 1), '7bb789c223bc57f3a7b016626f51f792e8e48cbda7dfe87b31c8ad2a52b58de4',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/d05bd69fa37924ba98734029ae621bb1b757924a5037c5c68d804d9d26fd869a.mp3', 1515, '2026-09-13 15:55:02.512016', '9e2159ea9a97137547c68039b5fd0edd851632926cb45f304ece6210f76e11a2', 'validated', '{"audio_key":"d05bd69fa37924ba98734029ae621bb1b757924a5037c5c68d804d9d26fd869a","entity_key":"d_a1_first_day_capstone_02:4","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9e2159ea9a97137547c68039b5fd0edd851632926cb45f304ece6210f76e11a2","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/d05bd69fa37924ba98734029ae621bb1b757924a5037c5c68d804d9d26fd869a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_time_and_plans_01:3 -> audio/generated/tr-TR/dialogues/dd85e984f19c500fb21aace7d0169ebf603f0fc6ef4e6315bdf004ee7dfc7ebf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1ff896e7-cb63-5813-ab62-5cb976979eb6', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_time_and_plans_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '023a1e9c9eb3efac034357659859785cee7b618a1f6a6190b486946568fe82a2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ea84c085-abb2-5768-a44a-468b64b2c000', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1ff896e7-cb63-5813-ab62-5cb976979eb6', 1), '023a1e9c9eb3efac034357659859785cee7b618a1f6a6190b486946568fe82a2',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/dd85e984f19c500fb21aace7d0169ebf603f0fc6ef4e6315bdf004ee7dfc7ebf.mp3', 1149, '2026-09-13 15:55:03.402818', '4981fe97e6a799b74096248cc105be365637d502a5419db449eb673199b87ddd', 'validated', '{"audio_key":"dd85e984f19c500fb21aace7d0169ebf603f0fc6ef4e6315bdf004ee7dfc7ebf","entity_key":"d_time_and_plans_01:3","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4981fe97e6a799b74096248cc105be365637d502a5419db449eb673199b87ddd","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/dd85e984f19c500fb21aace7d0169ebf603f0fc6ef4e6315bdf004ee7dfc7ebf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_at_the_cafe_02:2 -> audio/generated/tr-TR/dialogues/e01f284424c9ea0aecf2c95f512543a1b45d08e2ec0675ea79b18d43c1be0cef.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c85022f0-4fa3-53c0-b168-7b45313e5173', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_at_the_cafe_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '72c15cd90db7e494f0300ae5dc406c9483e07d3f59b4f46a674e6d49cc984ad2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e2dd3e63-aa53-516e-b539-5269f7216980', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c85022f0-4fa3-53c0-b168-7b45313e5173', 1), '72c15cd90db7e494f0300ae5dc406c9483e07d3f59b4f46a674e6d49cc984ad2',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/e01f284424c9ea0aecf2c95f512543a1b45d08e2ec0675ea79b18d43c1be0cef.mp3', 1201, '2026-09-13 15:55:03.647705', 'b1697bb34d7b5c177603f4bfe68d633a652087c8cb1861d3e533b22525280b54', 'validated', '{"audio_key":"e01f284424c9ea0aecf2c95f512543a1b45d08e2ec0675ea79b18d43c1be0cef","entity_key":"d_at_the_cafe_02:2","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b1697bb34d7b5c177603f4bfe68d633a652087c8cb1861d3e533b22525280b54","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/e01f284424c9ea0aecf2c95f512543a1b45d08e2ec0675ea79b18d43c1be0cef.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_who_i_am_01:4 -> audio/generated/tr-TR/dialogues/e413eb7265bfd53a278531d0a25b6386f2b8a557deef87b5a85f539c87cee5c4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('54929c40-6a5e-5286-af42-6e1ef18738b8', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_who_i_am_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '274f6862a7f45de4edfb83b55c7260591b9bacd4aee27b8233201410c7c12be9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('25df09fb-f822-51e0-9123-74f3f99592ce', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('54929c40-6a5e-5286-af42-6e1ef18738b8', 1), '274f6862a7f45de4edfb83b55c7260591b9bacd4aee27b8233201410c7c12be9',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/e413eb7265bfd53a278531d0a25b6386f2b8a557deef87b5a85f539c87cee5c4.mp3', 1071, '2026-09-13 15:55:04.486370', '08b4e733ae93fb5f80ec41cb4cd044171bb3f6cae1982b8c856ce1cefa1c1785', 'validated', '{"audio_key":"e413eb7265bfd53a278531d0a25b6386f2b8a557deef87b5a85f539c87cee5c4","entity_key":"d_who_i_am_01:4","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"08b4e733ae93fb5f80ec41cb4cd044171bb3f6cae1982b8c856ce1cefa1c1785","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/e413eb7265bfd53a278531d0a25b6386f2b8a557deef87b5a85f539c87cee5c4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_shopping_basics_02:3 -> audio/generated/tr-TR/dialogues/e5694558c73a126cd961033f4865829ee4a66f8bf4aad4082a78a2025b850437.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6b50aade-fef9-513a-a3c7-f9167cc6fdee', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_shopping_basics_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0a2394a0cf50c36a6c0fb1365b6d7be4f3f7165d1cf4cc53f47e1041aba9401e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f4442892-0be0-5f63-81ef-4c3026a90822', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6b50aade-fef9-513a-a3c7-f9167cc6fdee', 1), '0a2394a0cf50c36a6c0fb1365b6d7be4f3f7165d1cf4cc53f47e1041aba9401e',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/e5694558c73a126cd961033f4865829ee4a66f8bf4aad4082a78a2025b850437.mp3', 1018, '2026-09-13 15:55:04.693730', '9382c82da1b20996f79b784d9c85b906cba5e315a1e12bef1adbfc63bbdd2a25', 'validated', '{"audio_key":"e5694558c73a126cd961033f4865829ee4a66f8bf4aad4082a78a2025b850437","entity_key":"d_shopping_basics_02:3","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9382c82da1b20996f79b784d9c85b906cba5e315a1e12bef1adbfc63bbdd2a25","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/e5694558c73a126cd961033f4865829ee4a66f8bf4aad4082a78a2025b850437.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_at_home_02:3 -> audio/generated/tr-TR/dialogues/e9f660ea003a288127614838b5a8fc0567e4e1423dd472010a04bc0d044aaa90.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b1aa4818-8341-5bf4-9a6d-0c4304bb5ed7', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_at_home_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a14a83bdd303a9de026f264d762a6a557b12ad6799af82f204021d573edc6682'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('086bfe6e-aed7-5cc5-8862-14c1a683cc04', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b1aa4818-8341-5bf4-9a6d-0c4304bb5ed7', 1), 'a14a83bdd303a9de026f264d762a6a557b12ad6799af82f204021d573edc6682',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/e9f660ea003a288127614838b5a8fc0567e4e1423dd472010a04bc0d044aaa90.mp3', 1201, '2026-09-13 15:55:05.555450', 'f7252ac466a72754d68a15133ee1c85bc3c2ec0b3fd4e181f84ef815cb5229fa', 'validated', '{"audio_key":"e9f660ea003a288127614838b5a8fc0567e4e1423dd472010a04bc0d044aaa90","entity_key":"d_at_home_02:3","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f7252ac466a72754d68a15133ee1c85bc3c2ec0b3fd4e181f84ef815cb5229fa","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/e9f660ea003a288127614838b5a8fc0567e4e1423dd472010a04bc0d044aaa90.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_what_im_doing_01:4 -> audio/generated/tr-TR/dialogues/ea16d8af8349f8efe558aac4521bba6e5780823a6fb3bb09a78c08259d7303f6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fc5f2f68-af0e-5f94-a891-9e91dd7bca44', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_what_im_doing_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '968b0a2d07b5a96691004ca2b24549d61f3fbe139ce36ed7b3bf220daffb8648'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('acd7a445-4b27-522d-a8fb-39816c345cc1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fc5f2f68-af0e-5f94-a891-9e91dd7bca44', 1), '968b0a2d07b5a96691004ca2b24549d61f3fbe139ce36ed7b3bf220daffb8648',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/ea16d8af8349f8efe558aac4521bba6e5780823a6fb3bb09a78c08259d7303f6.mp3', 1384, '2026-09-13 15:55:05.820528', 'fbb4b7fcb65f3294d474d15674ca13165e14a556a32c038c7a6cbd606d2674b3', 'validated', '{"audio_key":"ea16d8af8349f8efe558aac4521bba6e5780823a6fb3bb09a78c08259d7303f6","entity_key":"d_what_im_doing_01:4","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"fbb4b7fcb65f3294d474d15674ca13165e14a556a32c038c7a6cbd606d2674b3","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/ea16d8af8349f8efe558aac4521bba6e5780823a6fb3bb09a78c08259d7303f6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_this_and_these_02:3 -> audio/generated/tr-TR/dialogues/edd4692444070ec34a561bb370fcd05c56b5e52575d4a38820f218d025faa2b3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('90c7ead1-bebe-52b2-90d3-e72dd322737b', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_this_and_these_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '769edf12b0457f5c79626ac53b925fb7a52d64d02184cb4671855577c5f9e959'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6d4d8243-992d-5241-b4a6-0a5d106bd72a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('90c7ead1-bebe-52b2-90d3-e72dd322737b', 1), '769edf12b0457f5c79626ac53b925fb7a52d64d02184cb4671855577c5f9e959',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/edd4692444070ec34a561bb370fcd05c56b5e52575d4a38820f218d025faa2b3.mp3', 1436, '2026-09-13 15:55:06.679016', '03152edd2bd17815b6643dfeab57e92ec72f703341e64361d5aa605979c8f95b', 'validated', '{"audio_key":"edd4692444070ec34a561bb370fcd05c56b5e52575d4a38820f218d025faa2b3","entity_key":"d_this_and_these_02:3","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"03152edd2bd17815b6643dfeab57e92ec72f703341e64361d5aa605979c8f95b","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/edd4692444070ec34a561bb370fcd05c56b5e52575d4a38820f218d025faa2b3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_this_and_these_01:1 -> audio/generated/tr-TR/dialogues/ef46d0046246215c1c0ecea6c4a88e525f7468d2f9e869dec8f3ab5cced673bd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('70c9d9df-8a04-583e-8572-dfca22293865', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_this_and_these_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '322c2cfd79253d10098cd5856c9259e5bc4276e8fd6c81e22746596e9bf9d599'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('645bf377-7e32-54cb-a320-e981a805bf4d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('70c9d9df-8a04-583e-8572-dfca22293865', 1), '322c2cfd79253d10098cd5856c9259e5bc4276e8fd6c81e22746596e9bf9d599',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/ef46d0046246215c1c0ecea6c4a88e525f7468d2f9e869dec8f3ab5cced673bd.mp3', 862, '2026-09-13 15:55:06.832677', '5204287e7b769f3dd33408f42388f6d72d7edf358afb162008b358d68ca68e8a', 'validated', '{"audio_key":"ef46d0046246215c1c0ecea6c4a88e525f7468d2f9e869dec8f3ab5cced673bd","entity_key":"d_this_and_these_01:1","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5204287e7b769f3dd33408f42388f6d72d7edf358afb162008b358d68ca68e8a","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/ef46d0046246215c1c0ecea6c4a88e525f7468d2f9e869dec8f3ab5cced673bd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_shopping_basics_01:3 -> audio/generated/tr-TR/dialogues/ef6f0610b529ec5960ffb5c0f04d3c5761e25aa432a97ef22a8a22706bfe0904.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0e0a4927-3da4-5bf3-9407-881097d1046f', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_shopping_basics_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '21d70be5ad95b296de986a05cf301545f5e6485bd50e59fc412b013d0287015e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a6a58a13-f65c-5462-b68a-5233635629e4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0e0a4927-3da4-5bf3-9407-881097d1046f', 1), '21d70be5ad95b296de986a05cf301545f5e6485bd50e59fc412b013d0287015e',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/ef6f0610b529ec5960ffb5c0f04d3c5761e25aa432a97ef22a8a22706bfe0904.mp3', 1280, '2026-09-13 15:55:07.740202', '6fbd43ec7933a06a393d847616279c30bff35989a68606f68bb39de99939235d', 'validated', '{"audio_key":"ef6f0610b529ec5960ffb5c0f04d3c5761e25aa432a97ef22a8a22706bfe0904","entity_key":"d_shopping_basics_01:3","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6fbd43ec7933a06a393d847616279c30bff35989a68606f68bb39de99939235d","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/ef6f0610b529ec5960ffb5c0f04d3c5761e25aa432a97ef22a8a22706bfe0904.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_my_family_01:1 -> audio/generated/tr-TR/dialogues/ef9dd10c19fa4a1d59841f4207827b5786223fbe19744da14255df01bbde040f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7f761012-549f-5437-b40c-07a285eaa3b8', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_my_family_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7deeac1ef1e90a27379553af01bd849789cfc1a67313c80eaa0f7c117ef178be'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eb4eb6bd-78c7-5073-86cf-87ede446281d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7f761012-549f-5437-b40c-07a285eaa3b8', 1), '7deeac1ef1e90a27379553af01bd849789cfc1a67313c80eaa0f7c117ef178be',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/ef9dd10c19fa4a1d59841f4207827b5786223fbe19744da14255df01bbde040f.mp3', 1018, '2026-09-13 15:55:07.961787', '7cb99c8269467bad54e23404717f9c63f209ee916a1027519a1662ab5923e3cf', 'validated', '{"audio_key":"ef9dd10c19fa4a1d59841f4207827b5786223fbe19744da14255df01bbde040f","entity_key":"d_my_family_01:1","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7cb99c8269467bad54e23404717f9c63f209ee916a1027519a1662ab5923e3cf","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/ef9dd10c19fa4a1d59841f4207827b5786223fbe19744da14255df01bbde040f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_what_im_doing_01:3 -> audio/generated/tr-TR/dialogues/f56f9ba6dc53f1a92789f4ae8b7b9dc9421b25c1ae631c04993717b3c4134e03.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('121cdc41-0b99-5868-9d4c-53cd388cebe5', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_what_im_doing_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1625d421833289fb621c1fa044e79e45360c54aacbb22f86042625ed534d5e5b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cdd7ce0c-ef60-53de-ab79-354bf68e01de', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('121cdc41-0b99-5868-9d4c-53cd388cebe5', 1), '1625d421833289fb621c1fa044e79e45360c54aacbb22f86042625ed534d5e5b',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/f56f9ba6dc53f1a92789f4ae8b7b9dc9421b25c1ae631c04993717b3c4134e03.mp3', 1071, '2026-09-13 15:55:08.843591', '50f32b2d29eaf10f7bbf989b167d7fd8aa10c3c0f5da2dfa8d1c20cb2f5147dc', 'validated', '{"audio_key":"f56f9ba6dc53f1a92789f4ae8b7b9dc9421b25c1ae631c04993717b3c4134e03","entity_key":"d_what_im_doing_01:3","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"50f32b2d29eaf10f7bbf989b167d7fd8aa10c3c0f5da2dfa8d1c20cb2f5147dc","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/f56f9ba6dc53f1a92789f4ae8b7b9dc9421b25c1ae631c04993717b3c4134e03.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_what_im_doing_01:1 -> audio/generated/tr-TR/dialogues/f7f9e8da673db7e70a8254711fefaeb43c82ac52e2bf3dda702834d41a66dc7f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('671ee0d1-a6f2-5ba4-8d6c-c64b3ccbe1f9', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_what_im_doing_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4ce98d5a80868deeb18a478379ee826f99c02f4ac26c9158714c0c305482ede7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5f79f294-64a1-5984-99df-e474c8998743', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('671ee0d1-a6f2-5ba4-8d6c-c64b3ccbe1f9', 1), '4ce98d5a80868deeb18a478379ee826f99c02f4ac26c9158714c0c305482ede7',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/f7f9e8da673db7e70a8254711fefaeb43c82ac52e2bf3dda702834d41a66dc7f.mp3', 1149, '2026-09-13 15:55:09.074404', '0c59edb7367c65d289f61abda0ce5d9d81bbd2275850b6266f09aece8e28fbf8', 'validated', '{"audio_key":"f7f9e8da673db7e70a8254711fefaeb43c82ac52e2bf3dda702834d41a66dc7f","entity_key":"d_what_im_doing_01:1","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0c59edb7367c65d289f61abda0ce5d9d81bbd2275850b6266f09aece8e28fbf8","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/f7f9e8da673db7e70a8254711fefaeb43c82ac52e2bf3dda702834d41a66dc7f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_a1_first_day_capstone_01:4 -> audio/generated/tr-TR/dialogues/f85a7a24ae54c6ac91ea3d035f2639958de3de7a28214c1e37f0946d3a0c8a76.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a96deac7-0764-53b1-9667-ab5d64aa67bc', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_a1_first_day_capstone_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eb71d4c6dc104619e907aee13d780cc26f5b325f9e4133b4ce10cd6145fc9787'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('39c5f12b-a672-57f3-9537-8ad81db85c7c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a96deac7-0764-53b1-9667-ab5d64aa67bc', 1), 'eb71d4c6dc104619e907aee13d780cc26f5b325f9e4133b4ce10cd6145fc9787',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/f85a7a24ae54c6ac91ea3d035f2639958de3de7a28214c1e37f0946d3a0c8a76.mp3', 862, '2026-09-13 15:55:09.897576', '96e67193acf272de3e064df8d04938228c9cd777b0b8bc5577b7c73d6eee005d', 'validated', '{"audio_key":"f85a7a24ae54c6ac91ea3d035f2639958de3de7a28214c1e37f0946d3a0c8a76","entity_key":"d_a1_first_day_capstone_01:4","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"96e67193acf272de3e064df8d04938228c9cd777b0b8bc5577b7c73d6eee005d","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/f85a7a24ae54c6ac91ea3d035f2639958de3de7a28214c1e37f0946d3a0c8a76.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_shopping_basics_02:1 -> audio/generated/tr-TR/dialogues/fc84f12411d7f2f106265f14b7eccac8b53cb877d1a124cef17947e656b0c81f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('332b664a-92cf-578c-bff7-cb2050e39440', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_shopping_basics_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd590e748e57d6209aa4ed35746ebe1a6e2a95609f12ffd9320d3876220928905'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('758027a4-88f5-5e86-85cb-c9e35e7c3ba9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('332b664a-92cf-578c-bff7-cb2050e39440', 1), 'd590e748e57d6209aa4ed35746ebe1a6e2a95609f12ffd9320d3876220928905',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/fc84f12411d7f2f106265f14b7eccac8b53cb877d1a124cef17947e656b0c81f.mp3', 1149, '2026-09-13 15:55:10.117332', '7147941fab1b9d6d1d7cf9961d112f768d8c9bd6cac8f45bfd563f0830057f83', 'validated', '{"audio_key":"fc84f12411d7f2f106265f14b7eccac8b53cb877d1a124cef17947e656b0c81f","entity_key":"d_shopping_basics_02:1","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7147941fab1b9d6d1d7cf9961d112f768d8c9bd6cac8f45bfd563f0830057f83","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/fc84f12411d7f2f106265f14b7eccac8b53cb877d1a124cef17947e656b0c81f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_a1_first_day_capstone_01:3 -> audio/generated/tr-TR/dialogues/fe6bd44b3eda1993386afe6fdb9a6fbd76d9ad0a0c112cbb81698d439ac6927d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('553edd8f-cc06-5392-bcb4-017745d6cf70', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_a1_first_day_capstone_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c3d3423f8f9ee75ac4b58dbd7c2e2737810cfca0736136fba79a655622aa8ce0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2f92b26d-790a-549b-a62c-44d757b37960', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('553edd8f-cc06-5392-bcb4-017745d6cf70', 1), 'c3d3423f8f9ee75ac4b58dbd7c2e2737810cfca0736136fba79a655622aa8ce0',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/fe6bd44b3eda1993386afe6fdb9a6fbd76d9ad0a0c112cbb81698d439ac6927d.mp3', 1985, '2026-09-13 15:55:11.013991', '23d0a14421124e3db1c5aa494ea9f181a522890e7c32d151905afcbb0b88ec35', 'validated', '{"audio_key":"fe6bd44b3eda1993386afe6fdb9a6fbd76d9ad0a0c112cbb81698d439ac6927d","entity_key":"d_a1_first_day_capstone_01:3","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"23d0a14421124e3db1c5aa494ea9f181a522890e7c32d151905afcbb0b88ec35","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/fe6bd44b3eda1993386afe6fdb9a6fbd76d9ad0a0c112cbb81698d439ac6927d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_at_the_cafe_01 -> audio/generated/tr-TR/lexical/0fd4ca86c6f1e0dedb88c5e00e3614115716d9f94ed0b11e95f530721a608036.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2ece5c5a-381f-5c53-9d94-2b9d320ebf0f', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_at_the_cafe_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6009bb34c985c82dc2e2fa0a278e02f15ae99b1af225836a8fde7cc4ad071d3b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('79342782-5806-5e90-b845-7c34befb79fa', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2ece5c5a-381f-5c53-9d94-2b9d320ebf0f', 1), '6009bb34c985c82dc2e2fa0a278e02f15ae99b1af225836a8fde7cc4ad071d3b',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/0fd4ca86c6f1e0dedb88c5e00e3614115716d9f94ed0b11e95f530721a608036.mp3', 1201, '2026-09-13 15:55:11.164325', '2b355fad021e84c41337bcca8bf1339dce0cc80ea3116a6bb4e62b9f25ec1c22', 'validated', '{"audio_key":"0fd4ca86c6f1e0dedb88c5e00e3614115716d9f94ed0b11e95f530721a608036","entity_key":"lx_at_the_cafe_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2b355fad021e84c41337bcca8bf1339dce0cc80ea3116a6bb4e62b9f25ec1c22","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/0fd4ca86c6f1e0dedb88c5e00e3614115716d9f94ed0b11e95f530721a608036.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_at_the_cafe_01 -> audio/generated/tr-TR/lexical/0fd4ca86c6f1e0dedb88c5e00e3614115716d9f94ed0b11e95f530721a608036.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('faf1ea6c-a20f-5b44-b0b2-c7b8f9c871c4', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_at_the_cafe_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6009bb34c985c82dc2e2fa0a278e02f15ae99b1af225836a8fde7cc4ad071d3b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8def9fdf-9caa-56d1-8fc9-b72d9088200e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('faf1ea6c-a20f-5b44-b0b2-c7b8f9c871c4', 1), '6009bb34c985c82dc2e2fa0a278e02f15ae99b1af225836a8fde7cc4ad071d3b',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/0fd4ca86c6f1e0dedb88c5e00e3614115716d9f94ed0b11e95f530721a608036.mp3', 1201, '2026-09-13 15:55:11.164325', '2b355fad021e84c41337bcca8bf1339dce0cc80ea3116a6bb4e62b9f25ec1c22', 'validated', '{"audio_key":"0fd4ca86c6f1e0dedb88c5e00e3614115716d9f94ed0b11e95f530721a608036","entity_key":"wf_at_the_cafe_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2b355fad021e84c41337bcca8bf1339dce0cc80ea3116a6bb4e62b9f25ec1c22","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/0fd4ca86c6f1e0dedb88c5e00e3614115716d9f94ed0b11e95f530721a608036.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_who_i_am_06 -> audio/generated/tr-TR/lexical/102c2367a59609698b0f419e9944407a0024ce8027631286066ea0102f36bb58.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('295abe29-683c-578c-8abc-3ae1dfd5c33e', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_who_i_am_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c68134a3e0c54430e10dac26f20eb6d65b8e53c32be5612d50cf02299139bcd4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c12483e0-d242-59b3-855e-6e6ab5dea9f0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('295abe29-683c-578c-8abc-3ae1dfd5c33e', 1), 'c68134a3e0c54430e10dac26f20eb6d65b8e53c32be5612d50cf02299139bcd4',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/102c2367a59609698b0f419e9944407a0024ce8027631286066ea0102f36bb58.mp3', 1018, '2026-09-13 15:55:12.145381', '685d41b406d72b910de4417cf279d0c61022a2aa5ec9c873593cb24d1f9fab58', 'validated', '{"audio_key":"102c2367a59609698b0f419e9944407a0024ce8027631286066ea0102f36bb58","entity_key":"lx_who_i_am_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"685d41b406d72b910de4417cf279d0c61022a2aa5ec9c873593cb24d1f9fab58","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/102c2367a59609698b0f419e9944407a0024ce8027631286066ea0102f36bb58.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_who_i_am_06 -> audio/generated/tr-TR/lexical/102c2367a59609698b0f419e9944407a0024ce8027631286066ea0102f36bb58.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8718046f-ade1-518b-9b94-30c7959b46f2', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_who_i_am_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c68134a3e0c54430e10dac26f20eb6d65b8e53c32be5612d50cf02299139bcd4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('de3c2bee-b8eb-586b-b128-dc685b4a4157', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8718046f-ade1-518b-9b94-30c7959b46f2', 1), 'c68134a3e0c54430e10dac26f20eb6d65b8e53c32be5612d50cf02299139bcd4',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/102c2367a59609698b0f419e9944407a0024ce8027631286066ea0102f36bb58.mp3', 1018, '2026-09-13 15:55:12.145381', '685d41b406d72b910de4417cf279d0c61022a2aa5ec9c873593cb24d1f9fab58', 'validated', '{"audio_key":"102c2367a59609698b0f419e9944407a0024ce8027631286066ea0102f36bb58","entity_key":"wf_who_i_am_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"685d41b406d72b910de4417cf279d0c61022a2aa5ec9c873593cb24d1f9fab58","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/102c2367a59609698b0f419e9944407a0024ce8027631286066ea0102f36bb58.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_getting_around_04 -> audio/generated/tr-TR/lexical/12f880e8d186bc6078325065066a086177c5863afb65f268798df8cc81fc1933.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a15dc892-03fe-54f7-8184-d7f91c4d1531', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_getting_around_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8db59feb4d217f26c79d6e76eea6ff80398e8b823e376bb783be870a96cab9e7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6531393a-5a9a-577b-8aea-ef6557fdafb2', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a15dc892-03fe-54f7-8184-d7f91c4d1531', 1), '8db59feb4d217f26c79d6e76eea6ff80398e8b823e376bb783be870a96cab9e7',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/12f880e8d186bc6078325065066a086177c5863afb65f268798df8cc81fc1933.mp3', 914, '2026-09-13 15:55:12.240830', 'be60c52af86e471858ef74996194e51671ed1c044a15992424a00abce7fdb433', 'validated', '{"audio_key":"12f880e8d186bc6078325065066a086177c5863afb65f268798df8cc81fc1933","entity_key":"lx_getting_around_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"be60c52af86e471858ef74996194e51671ed1c044a15992424a00abce7fdb433","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/12f880e8d186bc6078325065066a086177c5863afb65f268798df8cc81fc1933.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_getting_around_04 -> audio/generated/tr-TR/lexical/12f880e8d186bc6078325065066a086177c5863afb65f268798df8cc81fc1933.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('62ff9b43-092b-5928-8373-1facdea4d8b5', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_getting_around_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8db59feb4d217f26c79d6e76eea6ff80398e8b823e376bb783be870a96cab9e7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1485d946-7073-5ca9-a25e-6b69f6823073', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('62ff9b43-092b-5928-8373-1facdea4d8b5', 1), '8db59feb4d217f26c79d6e76eea6ff80398e8b823e376bb783be870a96cab9e7',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/12f880e8d186bc6078325065066a086177c5863afb65f268798df8cc81fc1933.mp3', 914, '2026-09-13 15:55:12.240830', 'be60c52af86e471858ef74996194e51671ed1c044a15992424a00abce7fdb433', 'validated', '{"audio_key":"12f880e8d186bc6078325065066a086177c5863afb65f268798df8cc81fc1933","entity_key":"wf_getting_around_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"be60c52af86e471858ef74996194e51671ed1c044a15992424a00abce7fdb433","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/12f880e8d186bc6078325065066a086177c5863afb65f268798df8cc81fc1933.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_time_and_plans_03 -> audio/generated/tr-TR/lexical/15ed151cdb1158b20a229e8257278bcf73ca96d00956eb0a9075e513971a5dde.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('112fabcd-742c-5eb3-be08-7141b59cdd3e', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_time_and_plans_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5135273dbfec63822642df690ca0bcdaa10f5c44974af292d677f0e40dc3496d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('811a8c07-344a-5296-ac1c-dff261a9c19c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('112fabcd-742c-5eb3-be08-7141b59cdd3e', 1), '5135273dbfec63822642df690ca0bcdaa10f5c44974af292d677f0e40dc3496d',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/15ed151cdb1158b20a229e8257278bcf73ca96d00956eb0a9075e513971a5dde.mp3', 1071, '2026-09-13 15:55:13.175823', '00abd2ef91e906b06f3aedb277d21e188a0c936d7e7a983fd791bd96fc179b4a', 'validated', '{"audio_key":"15ed151cdb1158b20a229e8257278bcf73ca96d00956eb0a9075e513971a5dde","entity_key":"lx_time_and_plans_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"00abd2ef91e906b06f3aedb277d21e188a0c936d7e7a983fd791bd96fc179b4a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/15ed151cdb1158b20a229e8257278bcf73ca96d00956eb0a9075e513971a5dde.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_time_and_plans_03 -> audio/generated/tr-TR/lexical/15ed151cdb1158b20a229e8257278bcf73ca96d00956eb0a9075e513971a5dde.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b38a1061-3f05-53f9-ac3f-9607173dd5c7', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_time_and_plans_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5135273dbfec63822642df690ca0bcdaa10f5c44974af292d677f0e40dc3496d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f5e798ff-8c2a-534b-8178-29d764dfa108', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b38a1061-3f05-53f9-ac3f-9607173dd5c7', 1), '5135273dbfec63822642df690ca0bcdaa10f5c44974af292d677f0e40dc3496d',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/15ed151cdb1158b20a229e8257278bcf73ca96d00956eb0a9075e513971a5dde.mp3', 1071, '2026-09-13 15:55:13.175823', '00abd2ef91e906b06f3aedb277d21e188a0c936d7e7a983fd791bd96fc179b4a', 'validated', '{"audio_key":"15ed151cdb1158b20a229e8257278bcf73ca96d00956eb0a9075e513971a5dde","entity_key":"wf_time_and_plans_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"00abd2ef91e906b06f3aedb277d21e188a0c936d7e7a983fd791bd96fc179b4a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/15ed151cdb1158b20a229e8257278bcf73ca96d00956eb0a9075e513971a5dde.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_a1_first_day_capstone_02 -> audio/generated/tr-TR/lexical/16cfc5a001c08e631ba532121df62853424ef283e72ac3b2b156485b4786d164.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0ad33dd2-a270-5453-80a1-b076ffe3b656', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_a1_first_day_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'febb8f9eba70a77fd5ec2b65af291361f037683ddfbcddb6bad7f983b552e7d9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dd7c3ffb-d151-50c9-bcac-9a69224c3f82', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0ad33dd2-a270-5453-80a1-b076ffe3b656', 1), 'febb8f9eba70a77fd5ec2b65af291361f037683ddfbcddb6bad7f983b552e7d9',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/16cfc5a001c08e631ba532121df62853424ef283e72ac3b2b156485b4786d164.mp3', 1071, '2026-09-13 15:55:13.287815', '398c55d6a46419fdc77fa95d6b2a4a1f7d11bb0e2a508bc8ede42234d1ab78dc', 'validated', '{"audio_key":"16cfc5a001c08e631ba532121df62853424ef283e72ac3b2b156485b4786d164","entity_key":"lx_a1_first_day_capstone_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"398c55d6a46419fdc77fa95d6b2a4a1f7d11bb0e2a508bc8ede42234d1ab78dc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/16cfc5a001c08e631ba532121df62853424ef283e72ac3b2b156485b4786d164.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_a1_first_day_capstone_02 -> audio/generated/tr-TR/lexical/16cfc5a001c08e631ba532121df62853424ef283e72ac3b2b156485b4786d164.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2a21a4ab-a21a-57b4-b9f8-32b8155a16f6', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_a1_first_day_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'febb8f9eba70a77fd5ec2b65af291361f037683ddfbcddb6bad7f983b552e7d9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3b5832ac-8627-5ec4-9aa2-3f30a2665317', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2a21a4ab-a21a-57b4-b9f8-32b8155a16f6', 1), 'febb8f9eba70a77fd5ec2b65af291361f037683ddfbcddb6bad7f983b552e7d9',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/16cfc5a001c08e631ba532121df62853424ef283e72ac3b2b156485b4786d164.mp3', 1071, '2026-09-13 15:55:13.287815', '398c55d6a46419fdc77fa95d6b2a4a1f7d11bb0e2a508bc8ede42234d1ab78dc', 'validated', '{"audio_key":"16cfc5a001c08e631ba532121df62853424ef283e72ac3b2b156485b4786d164","entity_key":"wf_a1_first_day_capstone_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"398c55d6a46419fdc77fa95d6b2a4a1f7d11bb0e2a508bc8ede42234d1ab78dc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/16cfc5a001c08e631ba532121df62853424ef283e72ac3b2b156485b4786d164.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_my_family_01 -> audio/generated/tr-TR/lexical/1e75afd8017b0645797272ee75bdfaa4154067ee0f30283ba789d72f3996c2c6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('703717e7-16a5-52ea-a239-e6f26dc7d891', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_my_family_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '90b8de4051f02b7a29484341f3a903e1b2c6a233f5465e19c634535c7b315e6f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('58a9e699-2400-5eb0-b2b2-e6bc39bc5537', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('703717e7-16a5-52ea-a239-e6f26dc7d891', 1), '90b8de4051f02b7a29484341f3a903e1b2c6a233f5465e19c634535c7b315e6f',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/1e75afd8017b0645797272ee75bdfaa4154067ee0f30283ba789d72f3996c2c6.mp3', 966, '2026-09-13 15:55:14.231068', '924eb2800eb8b76a7ed5d3198289d7f2b3db712049d9312703553acb83ac6fe9', 'validated', '{"audio_key":"1e75afd8017b0645797272ee75bdfaa4154067ee0f30283ba789d72f3996c2c6","entity_key":"lx_my_family_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"924eb2800eb8b76a7ed5d3198289d7f2b3db712049d9312703553acb83ac6fe9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/1e75afd8017b0645797272ee75bdfaa4154067ee0f30283ba789d72f3996c2c6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_my_family_01 -> audio/generated/tr-TR/lexical/1e75afd8017b0645797272ee75bdfaa4154067ee0f30283ba789d72f3996c2c6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3a943da5-dcdd-5007-8067-2051b90ebb18', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_my_family_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '90b8de4051f02b7a29484341f3a903e1b2c6a233f5465e19c634535c7b315e6f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b5dfd978-5b34-5fa1-aefc-5fbb1498d345', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3a943da5-dcdd-5007-8067-2051b90ebb18', 1), '90b8de4051f02b7a29484341f3a903e1b2c6a233f5465e19c634535c7b315e6f',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/1e75afd8017b0645797272ee75bdfaa4154067ee0f30283ba789d72f3996c2c6.mp3', 966, '2026-09-13 15:55:14.231068', '924eb2800eb8b76a7ed5d3198289d7f2b3db712049d9312703553acb83ac6fe9', 'validated', '{"audio_key":"1e75afd8017b0645797272ee75bdfaa4154067ee0f30283ba789d72f3996c2c6","entity_key":"wf_my_family_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"924eb2800eb8b76a7ed5d3198289d7f2b3db712049d9312703553acb83ac6fe9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/1e75afd8017b0645797272ee75bdfaa4154067ee0f30283ba789d72f3996c2c6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_getting_around_05 -> audio/generated/tr-TR/lexical/221405cd32b1ad2a28bbee375baac5d3cd4a6c86da72f5a9788cd092772477e9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('74f73041-275c-58ec-b2b9-9fd8d6054dd3', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_getting_around_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8d736b4818880c31cd924c794ad5cba3bcccbee19773d205e1e6e8ce02283294'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d836b0fe-11ba-56a8-82d0-af4ea57971c7', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('74f73041-275c-58ec-b2b9-9fd8d6054dd3', 1), '8d736b4818880c31cd924c794ad5cba3bcccbee19773d205e1e6e8ce02283294',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/221405cd32b1ad2a28bbee375baac5d3cd4a6c86da72f5a9788cd092772477e9.mp3', 914, '2026-09-13 15:55:14.301122', '58e79a23409c4e07b4b9557ab91a68df3e1ce3fe6df1b4f52c0b159673501587', 'validated', '{"audio_key":"221405cd32b1ad2a28bbee375baac5d3cd4a6c86da72f5a9788cd092772477e9","entity_key":"lx_getting_around_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"58e79a23409c4e07b4b9557ab91a68df3e1ce3fe6df1b4f52c0b159673501587","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/221405cd32b1ad2a28bbee375baac5d3cd4a6c86da72f5a9788cd092772477e9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_getting_around_05 -> audio/generated/tr-TR/lexical/221405cd32b1ad2a28bbee375baac5d3cd4a6c86da72f5a9788cd092772477e9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('fc875e8a-afde-5ac8-8ddc-85dc4ae110e8', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_getting_around_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8d736b4818880c31cd924c794ad5cba3bcccbee19773d205e1e6e8ce02283294'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a25cbbcb-14ce-5269-aee3-7e294b8be74a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('fc875e8a-afde-5ac8-8ddc-85dc4ae110e8', 1), '8d736b4818880c31cd924c794ad5cba3bcccbee19773d205e1e6e8ce02283294',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/221405cd32b1ad2a28bbee375baac5d3cd4a6c86da72f5a9788cd092772477e9.mp3', 914, '2026-09-13 15:55:14.301122', '58e79a23409c4e07b4b9557ab91a68df3e1ce3fe6df1b4f52c0b159673501587', 'validated', '{"audio_key":"221405cd32b1ad2a28bbee375baac5d3cd4a6c86da72f5a9788cd092772477e9","entity_key":"wf_getting_around_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"58e79a23409c4e07b4b9557ab91a68df3e1ce3fe6df1b4f52c0b159673501587","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/221405cd32b1ad2a28bbee375baac5d3cd4a6c86da72f5a9788cd092772477e9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_at_home_05 -> audio/generated/tr-TR/lexical/2c17209ec5060817585420ec5d0b771816c34834e3ce67ac5145fe81bb6d80ab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d43cbe5f-4512-504e-8f28-5961285a12f7', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_at_home_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '64dbd97d5543b7c994b161c2661e3c8617e78a9458df376084fe8d46053670fb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fa197877-39c7-57d9-b696-c473f43d491a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d43cbe5f-4512-504e-8f28-5961285a12f7', 1), '64dbd97d5543b7c994b161c2661e3c8617e78a9458df376084fe8d46053670fb',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/2c17209ec5060817585420ec5d0b771816c34834e3ce67ac5145fe81bb6d80ab.mp3', 1149, '2026-09-13 15:55:15.285170', '69f4645e7a80115e2e949a58cfc977667e6156b1b3398885477d01d43fa66cc9', 'validated', '{"audio_key":"2c17209ec5060817585420ec5d0b771816c34834e3ce67ac5145fe81bb6d80ab","entity_key":"lx_at_home_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"69f4645e7a80115e2e949a58cfc977667e6156b1b3398885477d01d43fa66cc9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/2c17209ec5060817585420ec5d0b771816c34834e3ce67ac5145fe81bb6d80ab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_at_home_05 -> audio/generated/tr-TR/lexical/2c17209ec5060817585420ec5d0b771816c34834e3ce67ac5145fe81bb6d80ab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0899abe1-6eb0-5466-bfec-a49d53dd4d51', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_at_home_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '64dbd97d5543b7c994b161c2661e3c8617e78a9458df376084fe8d46053670fb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('355b1cc1-cb81-5c75-b7eb-82a1140dd0e6', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0899abe1-6eb0-5466-bfec-a49d53dd4d51', 1), '64dbd97d5543b7c994b161c2661e3c8617e78a9458df376084fe8d46053670fb',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/2c17209ec5060817585420ec5d0b771816c34834e3ce67ac5145fe81bb6d80ab.mp3', 1149, '2026-09-13 15:55:15.285170', '69f4645e7a80115e2e949a58cfc977667e6156b1b3398885477d01d43fa66cc9', 'validated', '{"audio_key":"2c17209ec5060817585420ec5d0b771816c34834e3ce67ac5145fe81bb6d80ab","entity_key":"wf_at_home_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"69f4645e7a80115e2e949a58cfc977667e6156b1b3398885477d01d43fa66cc9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/2c17209ec5060817585420ec5d0b771816c34834e3ce67ac5145fe81bb6d80ab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_time_and_plans_06 -> audio/generated/tr-TR/lexical/35f0a94b5eaa759108684d5c6e601e5725c29a7d9fe9dd027086cb77947e6a1b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('92926520-6440-59cc-86a1-f5e56bd94ebe', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_time_and_plans_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bf2c0478962ee90d70a4c79cd9a02a6ec9b7d4f3330ce4191b0b1d9d7c796f7f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2a199f75-67e4-5144-a0c6-3a8879a56408', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('92926520-6440-59cc-86a1-f5e56bd94ebe', 1), 'bf2c0478962ee90d70a4c79cd9a02a6ec9b7d4f3330ce4191b0b1d9d7c796f7f',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/35f0a94b5eaa759108684d5c6e601e5725c29a7d9fe9dd027086cb77947e6a1b.mp3', 1201, '2026-09-13 15:55:15.365832', '2837984649fa96b5f00e87eac94b3959565bb77d99c69f0681de3b01eacc8128', 'validated', '{"audio_key":"35f0a94b5eaa759108684d5c6e601e5725c29a7d9fe9dd027086cb77947e6a1b","entity_key":"lx_time_and_plans_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2837984649fa96b5f00e87eac94b3959565bb77d99c69f0681de3b01eacc8128","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/35f0a94b5eaa759108684d5c6e601e5725c29a7d9fe9dd027086cb77947e6a1b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_time_and_plans_06 -> audio/generated/tr-TR/lexical/35f0a94b5eaa759108684d5c6e601e5725c29a7d9fe9dd027086cb77947e6a1b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7be42e47-cb0a-5b57-934b-88e5f3050b52', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_time_and_plans_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bf2c0478962ee90d70a4c79cd9a02a6ec9b7d4f3330ce4191b0b1d9d7c796f7f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('76027217-109b-5999-98a3-c408e039aeee', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7be42e47-cb0a-5b57-934b-88e5f3050b52', 1), 'bf2c0478962ee90d70a4c79cd9a02a6ec9b7d4f3330ce4191b0b1d9d7c796f7f',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/35f0a94b5eaa759108684d5c6e601e5725c29a7d9fe9dd027086cb77947e6a1b.mp3', 1201, '2026-09-13 15:55:15.365832', '2837984649fa96b5f00e87eac94b3959565bb77d99c69f0681de3b01eacc8128', 'validated', '{"audio_key":"35f0a94b5eaa759108684d5c6e601e5725c29a7d9fe9dd027086cb77947e6a1b","entity_key":"wf_time_and_plans_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2837984649fa96b5f00e87eac94b3959565bb77d99c69f0681de3b01eacc8128","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/35f0a94b5eaa759108684d5c6e601e5725c29a7d9fe9dd027086cb77947e6a1b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_shopping_basics_06 -> audio/generated/tr-TR/lexical/434e0f0450f8e4c2d3e3f08c92d4cd6272364086d68d1736d6940d10ad0700db.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d5915117-cd2a-568b-a5b8-09989959d75a', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_shopping_basics_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '21a06ccc8da087d4c0eeb9c2a8e28a7e3bf5d5fb4f6cfa1e869ae3a524ff70db'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6b151b5a-a06a-5736-bb1d-de4951df6398', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d5915117-cd2a-568b-a5b8-09989959d75a', 1), '21a06ccc8da087d4c0eeb9c2a8e28a7e3bf5d5fb4f6cfa1e869ae3a524ff70db',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/434e0f0450f8e4c2d3e3f08c92d4cd6272364086d68d1736d6940d10ad0700db.mp3', 1097, '2026-09-13 15:55:16.317177', 'ca5f14f09d415726454432245f42f2a7fb8d35092e7368c908aec6800591292c', 'validated', '{"audio_key":"434e0f0450f8e4c2d3e3f08c92d4cd6272364086d68d1736d6940d10ad0700db","entity_key":"lx_shopping_basics_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ca5f14f09d415726454432245f42f2a7fb8d35092e7368c908aec6800591292c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/434e0f0450f8e4c2d3e3f08c92d4cd6272364086d68d1736d6940d10ad0700db.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_shopping_basics_06 -> audio/generated/tr-TR/lexical/434e0f0450f8e4c2d3e3f08c92d4cd6272364086d68d1736d6940d10ad0700db.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3a986cf6-ee2c-52e0-9930-4808cb77aa48', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_shopping_basics_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '21a06ccc8da087d4c0eeb9c2a8e28a7e3bf5d5fb4f6cfa1e869ae3a524ff70db'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b3520e13-34b8-524a-8d02-80cbc203031f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3a986cf6-ee2c-52e0-9930-4808cb77aa48', 1), '21a06ccc8da087d4c0eeb9c2a8e28a7e3bf5d5fb4f6cfa1e869ae3a524ff70db',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/434e0f0450f8e4c2d3e3f08c92d4cd6272364086d68d1736d6940d10ad0700db.mp3', 1097, '2026-09-13 15:55:16.317177', 'ca5f14f09d415726454432245f42f2a7fb8d35092e7368c908aec6800591292c', 'validated', '{"audio_key":"434e0f0450f8e4c2d3e3f08c92d4cd6272364086d68d1736d6940d10ad0700db","entity_key":"wf_shopping_basics_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ca5f14f09d415726454432245f42f2a7fb8d35092e7368c908aec6800591292c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/434e0f0450f8e4c2d3e3f08c92d4cd6272364086d68d1736d6940d10ad0700db.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_a1_first_day_capstone_06 -> audio/generated/tr-TR/lexical/437ed041ed21f653069e71f99dac302036de8b40f17af391f7a4c88f243e0246.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7fe222d0-b6d3-5d53-bf0d-afd9f897cf23', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_a1_first_day_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '946b8a7467b48d5a4fafc877672884a4f7659ccad78c9bc80a8daaa0c09cc1b4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eaf4442f-d631-5448-beb1-06c4709e624f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7fe222d0-b6d3-5d53-bf0d-afd9f897cf23', 1), '946b8a7467b48d5a4fafc877672884a4f7659ccad78c9bc80a8daaa0c09cc1b4',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/437ed041ed21f653069e71f99dac302036de8b40f17af391f7a4c88f243e0246.mp3', 1071, '2026-09-13 15:17:20.417735', '5bc2c255daae91caab0cdd08d4e54b465d88813aa13c12a561bc3bbad2f2a8aa', 'validated', '{"audio_key":"437ed041ed21f653069e71f99dac302036de8b40f17af391f7a4c88f243e0246","entity_key":"lx_a1_first_day_capstone_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5bc2c255daae91caab0cdd08d4e54b465d88813aa13c12a561bc3bbad2f2a8aa","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/437ed041ed21f653069e71f99dac302036de8b40f17af391f7a4c88f243e0246.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_a1_first_day_capstone_06 -> audio/generated/tr-TR/lexical/437ed041ed21f653069e71f99dac302036de8b40f17af391f7a4c88f243e0246.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('70f9de4e-5ee8-5450-a1a2-4844440c42d1', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_a1_first_day_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '946b8a7467b48d5a4fafc877672884a4f7659ccad78c9bc80a8daaa0c09cc1b4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a189cba6-2678-5c24-8bdb-21037e55a098', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('70f9de4e-5ee8-5450-a1a2-4844440c42d1', 1), '946b8a7467b48d5a4fafc877672884a4f7659ccad78c9bc80a8daaa0c09cc1b4',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/437ed041ed21f653069e71f99dac302036de8b40f17af391f7a4c88f243e0246.mp3', 1071, '2026-09-13 15:17:20.417735', '5bc2c255daae91caab0cdd08d4e54b465d88813aa13c12a561bc3bbad2f2a8aa', 'validated', '{"audio_key":"437ed041ed21f653069e71f99dac302036de8b40f17af391f7a4c88f243e0246","entity_key":"wf_a1_first_day_capstone_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5bc2c255daae91caab0cdd08d4e54b465d88813aa13c12a561bc3bbad2f2a8aa","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/437ed041ed21f653069e71f99dac302036de8b40f17af391f7a4c88f243e0246.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_what_im_doing_04 -> audio/generated/tr-TR/lexical/450f61021e575a92ba131751b899af2f2c899f928efc8ae020c06c9951a0888e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e3163f13-4291-5938-ac35-9bf191ba2e05', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_what_im_doing_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '93f612d096fa3ff80e5ca43d51c6ab4249b045e1a672e509e18d02f0ec12bf88'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('45419e86-fdd6-5083-8923-185859eada0f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e3163f13-4291-5938-ac35-9bf191ba2e05', 1), '93f612d096fa3ff80e5ca43d51c6ab4249b045e1a672e509e18d02f0ec12bf88',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/450f61021e575a92ba131751b899af2f2c899f928efc8ae020c06c9951a0888e.mp3', 1097, '2026-09-13 15:55:16.380439', 'd9745880c438894696f94969b4389c8238434385d1df5c78000c670afd54dd26', 'validated', '{"audio_key":"450f61021e575a92ba131751b899af2f2c899f928efc8ae020c06c9951a0888e","entity_key":"lx_what_im_doing_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d9745880c438894696f94969b4389c8238434385d1df5c78000c670afd54dd26","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/450f61021e575a92ba131751b899af2f2c899f928efc8ae020c06c9951a0888e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_what_im_doing_04 -> audio/generated/tr-TR/lexical/450f61021e575a92ba131751b899af2f2c899f928efc8ae020c06c9951a0888e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a152b0ff-ab10-55e4-86f3-bdc8f9a0c836', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_what_im_doing_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '93f612d096fa3ff80e5ca43d51c6ab4249b045e1a672e509e18d02f0ec12bf88'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('73ddea95-eabe-55a2-968a-bc45d3905fb2', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a152b0ff-ab10-55e4-86f3-bdc8f9a0c836', 1), '93f612d096fa3ff80e5ca43d51c6ab4249b045e1a672e509e18d02f0ec12bf88',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/450f61021e575a92ba131751b899af2f2c899f928efc8ae020c06c9951a0888e.mp3', 1097, '2026-09-13 15:55:16.380439', 'd9745880c438894696f94969b4389c8238434385d1df5c78000c670afd54dd26', 'validated', '{"audio_key":"450f61021e575a92ba131751b899af2f2c899f928efc8ae020c06c9951a0888e","entity_key":"wf_what_im_doing_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d9745880c438894696f94969b4389c8238434385d1df5c78000c670afd54dd26","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/450f61021e575a92ba131751b899af2f2c899f928efc8ae020c06c9951a0888e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_shopping_basics_05 -> audio/generated/tr-TR/lexical/462a6571a564884cc0bb828995d02a3fe30454f6da2387130297deb08db6d3ae.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('cdb07295-ba7f-59b6-aa08-204ff4cb15c2', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_shopping_basics_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e6b2cc2ee3d9d3fe0d7794e8c8050e3af9d81e7b0f9c8a5d8fbff0854802ac91'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1dd370d4-0729-5aed-9bb4-bd96f75c0816', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('cdb07295-ba7f-59b6-aa08-204ff4cb15c2', 1), 'e6b2cc2ee3d9d3fe0d7794e8c8050e3af9d81e7b0f9c8a5d8fbff0854802ac91',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/462a6571a564884cc0bb828995d02a3fe30454f6da2387130297deb08db6d3ae.mp3', 1018, '2026-09-13 15:55:17.367642', '4b273c6fd40ca1de653ed57a53a7ba86f88bb62568175c57eb1aae990932232e', 'validated', '{"audio_key":"462a6571a564884cc0bb828995d02a3fe30454f6da2387130297deb08db6d3ae","entity_key":"lx_shopping_basics_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4b273c6fd40ca1de653ed57a53a7ba86f88bb62568175c57eb1aae990932232e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/462a6571a564884cc0bb828995d02a3fe30454f6da2387130297deb08db6d3ae.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_shopping_basics_05 -> audio/generated/tr-TR/lexical/462a6571a564884cc0bb828995d02a3fe30454f6da2387130297deb08db6d3ae.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('02815813-7e4f-51e4-8745-4013b1a3c4f7', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_shopping_basics_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e6b2cc2ee3d9d3fe0d7794e8c8050e3af9d81e7b0f9c8a5d8fbff0854802ac91'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('52e714dc-dbf3-59e5-86ef-1b90f8acc94a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('02815813-7e4f-51e4-8745-4013b1a3c4f7', 1), 'e6b2cc2ee3d9d3fe0d7794e8c8050e3af9d81e7b0f9c8a5d8fbff0854802ac91',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/462a6571a564884cc0bb828995d02a3fe30454f6da2387130297deb08db6d3ae.mp3', 1018, '2026-09-13 15:55:17.367642', '4b273c6fd40ca1de653ed57a53a7ba86f88bb62568175c57eb1aae990932232e', 'validated', '{"audio_key":"462a6571a564884cc0bb828995d02a3fe30454f6da2387130297deb08db6d3ae","entity_key":"wf_shopping_basics_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4b273c6fd40ca1de653ed57a53a7ba86f88bb62568175c57eb1aae990932232e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/462a6571a564884cc0bb828995d02a3fe30454f6da2387130297deb08db6d3ae.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_at_home_06 -> audio/generated/tr-TR/lexical/47ed1aff042ef9d909d157b2f95208b7440a151f3d39d9d9d2a778b565b04ffb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('97a260b7-5df6-5cda-b2ed-8f03c9cae03e', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_at_home_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b83cecac4fb83e0922ed85a3dd60090f00dd3821a8e441faa6a2978e8e1c7c16'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fa002085-b103-5a76-b95b-6980a1517d99', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('97a260b7-5df6-5cda-b2ed-8f03c9cae03e', 1), 'b83cecac4fb83e0922ed85a3dd60090f00dd3821a8e441faa6a2978e8e1c7c16',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/47ed1aff042ef9d909d157b2f95208b7440a151f3d39d9d9d2a778b565b04ffb.mp3', 862, '2026-09-13 15:55:17.482809', '78ec0e8de05aabd47267a1e211d43c0339b383ee471dd7222e1ca079f8e64186', 'validated', '{"audio_key":"47ed1aff042ef9d909d157b2f95208b7440a151f3d39d9d9d2a778b565b04ffb","entity_key":"lx_at_home_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"78ec0e8de05aabd47267a1e211d43c0339b383ee471dd7222e1ca079f8e64186","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/47ed1aff042ef9d909d157b2f95208b7440a151f3d39d9d9d2a778b565b04ffb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_at_home_06 -> audio/generated/tr-TR/lexical/47ed1aff042ef9d909d157b2f95208b7440a151f3d39d9d9d2a778b565b04ffb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5aad715c-a121-5613-8bd9-c51b0fe89002', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_at_home_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b83cecac4fb83e0922ed85a3dd60090f00dd3821a8e441faa6a2978e8e1c7c16'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9d110d25-e9b1-5f73-ba8f-9ca8d0e2c378', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5aad715c-a121-5613-8bd9-c51b0fe89002', 1), 'b83cecac4fb83e0922ed85a3dd60090f00dd3821a8e441faa6a2978e8e1c7c16',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/47ed1aff042ef9d909d157b2f95208b7440a151f3d39d9d9d2a778b565b04ffb.mp3', 862, '2026-09-13 15:55:17.482809', '78ec0e8de05aabd47267a1e211d43c0339b383ee471dd7222e1ca079f8e64186', 'validated', '{"audio_key":"47ed1aff042ef9d909d157b2f95208b7440a151f3d39d9d9d2a778b565b04ffb","entity_key":"wf_at_home_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"78ec0e8de05aabd47267a1e211d43c0339b383ee471dd7222e1ca079f8e64186","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/47ed1aff042ef9d909d157b2f95208b7440a151f3d39d9d9d2a778b565b04ffb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_at_home_04 -> audio/generated/tr-TR/lexical/52566e0c5353a8f9b1b1a289025e2d107e7e5ee17b87564aa8a4d72c07bbd846.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ccc2b2ee-a812-581c-9c54-a67da6815cce', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_at_home_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '626ff5aad36e2141e8f03cbb5ba7ee3e6ec354b8f845dac1cf83d700a20d775d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8b0f9579-42e8-513a-9582-8a3963db52a0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ccc2b2ee-a812-581c-9c54-a67da6815cce', 1), '626ff5aad36e2141e8f03cbb5ba7ee3e6ec354b8f845dac1cf83d700a20d775d',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/52566e0c5353a8f9b1b1a289025e2d107e7e5ee17b87564aa8a4d72c07bbd846.mp3', 966, '2026-09-13 15:55:18.404647', '8d4256edd0410ed2ca883bc5d390f0be5a1647275f0d36263d6baee42a43141f', 'validated', '{"audio_key":"52566e0c5353a8f9b1b1a289025e2d107e7e5ee17b87564aa8a4d72c07bbd846","entity_key":"lx_at_home_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8d4256edd0410ed2ca883bc5d390f0be5a1647275f0d36263d6baee42a43141f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/52566e0c5353a8f9b1b1a289025e2d107e7e5ee17b87564aa8a4d72c07bbd846.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_at_home_04 -> audio/generated/tr-TR/lexical/52566e0c5353a8f9b1b1a289025e2d107e7e5ee17b87564aa8a4d72c07bbd846.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7f604f84-5362-56dd-99bd-d3f275c726d6', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_at_home_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '626ff5aad36e2141e8f03cbb5ba7ee3e6ec354b8f845dac1cf83d700a20d775d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7c14e0a7-658f-5cd2-b9e1-cdd14eb85699', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7f604f84-5362-56dd-99bd-d3f275c726d6', 1), '626ff5aad36e2141e8f03cbb5ba7ee3e6ec354b8f845dac1cf83d700a20d775d',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/52566e0c5353a8f9b1b1a289025e2d107e7e5ee17b87564aa8a4d72c07bbd846.mp3', 966, '2026-09-13 15:55:18.404647', '8d4256edd0410ed2ca883bc5d390f0be5a1647275f0d36263d6baee42a43141f', 'validated', '{"audio_key":"52566e0c5353a8f9b1b1a289025e2d107e7e5ee17b87564aa8a4d72c07bbd846","entity_key":"wf_at_home_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8d4256edd0410ed2ca883bc5d390f0be5a1647275f0d36263d6baee42a43141f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/52566e0c5353a8f9b1b1a289025e2d107e7e5ee17b87564aa8a4d72c07bbd846.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_what_im_doing_03 -> audio/generated/tr-TR/lexical/5b75dad4fa4fe7b2091101d14b632525cefb0a11d5e760962c4b8e7041e69783.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('dcbd541c-cf42-5289-8005-df218f14cf4c', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_what_im_doing_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0a2d6055fc4d4e653bf88660a70fedbf5d4655b1ff2d4b55d81fd96353edd0f0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('61ef98e4-1b5b-5d98-b16e-6c2302056090', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('dcbd541c-cf42-5289-8005-df218f14cf4c', 1), '0a2d6055fc4d4e653bf88660a70fedbf5d4655b1ff2d4b55d81fd96353edd0f0',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/5b75dad4fa4fe7b2091101d14b632525cefb0a11d5e760962c4b8e7041e69783.mp3', 1149, '2026-09-13 15:55:18.561579', '714e521cfbf466ccaec1b9d07c7c2275b35e99291de124af491ff4a377b10557', 'validated', '{"audio_key":"5b75dad4fa4fe7b2091101d14b632525cefb0a11d5e760962c4b8e7041e69783","entity_key":"lx_what_im_doing_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"714e521cfbf466ccaec1b9d07c7c2275b35e99291de124af491ff4a377b10557","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/5b75dad4fa4fe7b2091101d14b632525cefb0a11d5e760962c4b8e7041e69783.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_what_im_doing_03 -> audio/generated/tr-TR/lexical/5b75dad4fa4fe7b2091101d14b632525cefb0a11d5e760962c4b8e7041e69783.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('34423a54-fb2f-5407-8c33-709c242a75cb', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_what_im_doing_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0a2d6055fc4d4e653bf88660a70fedbf5d4655b1ff2d4b55d81fd96353edd0f0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ad09ed99-6417-5ef9-957d-6635a3bd8101', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('34423a54-fb2f-5407-8c33-709c242a75cb', 1), '0a2d6055fc4d4e653bf88660a70fedbf5d4655b1ff2d4b55d81fd96353edd0f0',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/5b75dad4fa4fe7b2091101d14b632525cefb0a11d5e760962c4b8e7041e69783.mp3', 1149, '2026-09-13 15:55:18.561579', '714e521cfbf466ccaec1b9d07c7c2275b35e99291de124af491ff4a377b10557', 'validated', '{"audio_key":"5b75dad4fa4fe7b2091101d14b632525cefb0a11d5e760962c4b8e7041e69783","entity_key":"wf_what_im_doing_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"714e521cfbf466ccaec1b9d07c7c2275b35e99291de124af491ff4a377b10557","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/5b75dad4fa4fe7b2091101d14b632525cefb0a11d5e760962c4b8e7041e69783.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_who_i_am_05 -> audio/generated/tr-TR/lexical/5d0a9aace704c1af0a3c01a258f66e6d35edc7040adf03c479baed82e4bdbd95.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('091ea0d4-d88b-5fab-9f8e-1f77b01cd50f', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_who_i_am_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '64cb68142ac565e2a79e07d03aacd994b36bfccb5aeefaab3310df1604c764ea'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f9677e96-23fd-565f-97c7-0b536ce1f828', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('091ea0d4-d88b-5fab-9f8e-1f77b01cd50f', 1), '64cb68142ac565e2a79e07d03aacd994b36bfccb5aeefaab3310df1604c764ea',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/5d0a9aace704c1af0a3c01a258f66e6d35edc7040adf03c479baed82e4bdbd95.mp3', 1201, '2026-09-13 15:55:19.575418', 'a69ee4d773a55cdb573b13d6b30c54e57d789b6f96f0fb3af6cae4fb4e5f0989', 'validated', '{"audio_key":"5d0a9aace704c1af0a3c01a258f66e6d35edc7040adf03c479baed82e4bdbd95","entity_key":"lx_who_i_am_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a69ee4d773a55cdb573b13d6b30c54e57d789b6f96f0fb3af6cae4fb4e5f0989","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/5d0a9aace704c1af0a3c01a258f66e6d35edc7040adf03c479baed82e4bdbd95.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_who_i_am_05 -> audio/generated/tr-TR/lexical/5d0a9aace704c1af0a3c01a258f66e6d35edc7040adf03c479baed82e4bdbd95.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d6bb98fd-7850-58c6-83b1-f29de64486fd', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_who_i_am_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '64cb68142ac565e2a79e07d03aacd994b36bfccb5aeefaab3310df1604c764ea'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f643ff75-d86b-5fae-9dd4-df63a0c48f54', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d6bb98fd-7850-58c6-83b1-f29de64486fd', 1), '64cb68142ac565e2a79e07d03aacd994b36bfccb5aeefaab3310df1604c764ea',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/5d0a9aace704c1af0a3c01a258f66e6d35edc7040adf03c479baed82e4bdbd95.mp3', 1201, '2026-09-13 15:55:19.575418', 'a69ee4d773a55cdb573b13d6b30c54e57d789b6f96f0fb3af6cae4fb4e5f0989', 'validated', '{"audio_key":"5d0a9aace704c1af0a3c01a258f66e6d35edc7040adf03c479baed82e4bdbd95","entity_key":"wf_who_i_am_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a69ee4d773a55cdb573b13d6b30c54e57d789b6f96f0fb3af6cae4fb4e5f0989","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/5d0a9aace704c1af0a3c01a258f66e6d35edc7040adf03c479baed82e4bdbd95.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_getting_around_01 -> audio/generated/tr-TR/lexical/5e83bf4d202b40b86945448f91642bad5c1764f96a684a002ec1767600626e7c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('4412f9f7-fab8-5c7e-b978-4cc165930b56', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_getting_around_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0bc851d8e8861b20da271d23994b9bc2604785313d3369acd3a2f8121b97be61'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3fb6a8aa-ab9b-53f8-a053-0b66170794dd', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('4412f9f7-fab8-5c7e-b978-4cc165930b56', 1), '0bc851d8e8861b20da271d23994b9bc2604785313d3369acd3a2f8121b97be61',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/5e83bf4d202b40b86945448f91642bad5c1764f96a684a002ec1767600626e7c.mp3', 1071, '2026-09-13 15:55:19.625043', '343ab39048fe06322585ba1909b5f23b7fd3c07f58d60ccbf09f8a71a9e41536', 'validated', '{"audio_key":"5e83bf4d202b40b86945448f91642bad5c1764f96a684a002ec1767600626e7c","entity_key":"lx_getting_around_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"343ab39048fe06322585ba1909b5f23b7fd3c07f58d60ccbf09f8a71a9e41536","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/5e83bf4d202b40b86945448f91642bad5c1764f96a684a002ec1767600626e7c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_getting_around_01 -> audio/generated/tr-TR/lexical/5e83bf4d202b40b86945448f91642bad5c1764f96a684a002ec1767600626e7c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('58d76550-2257-549a-b455-be881de29005', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_getting_around_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0bc851d8e8861b20da271d23994b9bc2604785313d3369acd3a2f8121b97be61'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c7808e00-aefa-51c7-bbc5-e37288dde334', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('58d76550-2257-549a-b455-be881de29005', 1), '0bc851d8e8861b20da271d23994b9bc2604785313d3369acd3a2f8121b97be61',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/5e83bf4d202b40b86945448f91642bad5c1764f96a684a002ec1767600626e7c.mp3', 1071, '2026-09-13 15:55:19.625043', '343ab39048fe06322585ba1909b5f23b7fd3c07f58d60ccbf09f8a71a9e41536', 'validated', '{"audio_key":"5e83bf4d202b40b86945448f91642bad5c1764f96a684a002ec1767600626e7c","entity_key":"wf_getting_around_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"343ab39048fe06322585ba1909b5f23b7fd3c07f58d60ccbf09f8a71a9e41536","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/5e83bf4d202b40b86945448f91642bad5c1764f96a684a002ec1767600626e7c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_at_home_03 -> audio/generated/tr-TR/lexical/66c3637e65f7a4cf02269a71eeb4f9bbdc362fd3ce150f6bbacadc89567f97ad.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('356152e2-5048-5ec6-b4e7-df52dd23f2ed', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_at_home_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f3017d75585a0e330315a5166adf0b3623636e53e6b7f8bc248bd7c6961369d1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e0acaa75-5f90-5704-8553-5369425fe603', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('356152e2-5048-5ec6-b4e7-df52dd23f2ed', 1), 'f3017d75585a0e330315a5166adf0b3623636e53e6b7f8bc248bd7c6961369d1',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/66c3637e65f7a4cf02269a71eeb4f9bbdc362fd3ce150f6bbacadc89567f97ad.mp3', 1018, '2026-09-13 15:55:20.598625', '75bd77a75219782edd223084b00b7f2e763517012a23c7bd94c315d6abc8db56', 'validated', '{"audio_key":"66c3637e65f7a4cf02269a71eeb4f9bbdc362fd3ce150f6bbacadc89567f97ad","entity_key":"lx_at_home_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"75bd77a75219782edd223084b00b7f2e763517012a23c7bd94c315d6abc8db56","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/66c3637e65f7a4cf02269a71eeb4f9bbdc362fd3ce150f6bbacadc89567f97ad.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_at_home_03 -> audio/generated/tr-TR/lexical/66c3637e65f7a4cf02269a71eeb4f9bbdc362fd3ce150f6bbacadc89567f97ad.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('23d4d66d-0012-5960-9b31-464b5c5993bf', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_at_home_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f3017d75585a0e330315a5166adf0b3623636e53e6b7f8bc248bd7c6961369d1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4fa08cba-50d9-5687-9daa-0f5190b37021', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('23d4d66d-0012-5960-9b31-464b5c5993bf', 1), 'f3017d75585a0e330315a5166adf0b3623636e53e6b7f8bc248bd7c6961369d1',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/66c3637e65f7a4cf02269a71eeb4f9bbdc362fd3ce150f6bbacadc89567f97ad.mp3', 1018, '2026-09-13 15:55:20.598625', '75bd77a75219782edd223084b00b7f2e763517012a23c7bd94c315d6abc8db56', 'validated', '{"audio_key":"66c3637e65f7a4cf02269a71eeb4f9bbdc362fd3ce150f6bbacadc89567f97ad","entity_key":"wf_at_home_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"75bd77a75219782edd223084b00b7f2e763517012a23c7bd94c315d6abc8db56","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/66c3637e65f7a4cf02269a71eeb4f9bbdc362fd3ce150f6bbacadc89567f97ad.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_time_and_plans_04 -> audio/generated/tr-TR/lexical/6d3b74d7586269eb943e753597dcd4cae747f9dc0aabc9a504479db6c71934d8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('4dcf9085-47ab-5f20-94db-d093c9b454aa', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_time_and_plans_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd06c029d33a72e49940f4adabbae02553642c9ccea25a05ae89f5704998395ad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5383056f-bd18-55ae-9772-63470401dab9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('4dcf9085-47ab-5f20-94db-d093c9b454aa', 1), 'd06c029d33a72e49940f4adabbae02553642c9ccea25a05ae89f5704998395ad',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/6d3b74d7586269eb943e753597dcd4cae747f9dc0aabc9a504479db6c71934d8.mp3', 1071, '2026-09-13 15:55:20.682562', '7d4a653762ee7c23011bdc7e49b366d192c785cd7e0c3323c29f491fed877d1a', 'validated', '{"audio_key":"6d3b74d7586269eb943e753597dcd4cae747f9dc0aabc9a504479db6c71934d8","entity_key":"lx_time_and_plans_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7d4a653762ee7c23011bdc7e49b366d192c785cd7e0c3323c29f491fed877d1a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/6d3b74d7586269eb943e753597dcd4cae747f9dc0aabc9a504479db6c71934d8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_time_and_plans_04 -> audio/generated/tr-TR/lexical/6d3b74d7586269eb943e753597dcd4cae747f9dc0aabc9a504479db6c71934d8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('77470304-fe4d-5a65-80cf-6bfdadd9f3a2', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_time_and_plans_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd06c029d33a72e49940f4adabbae02553642c9ccea25a05ae89f5704998395ad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ac161d07-e5fa-5c7f-9d55-a14f1913a514', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('77470304-fe4d-5a65-80cf-6bfdadd9f3a2', 1), 'd06c029d33a72e49940f4adabbae02553642c9ccea25a05ae89f5704998395ad',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/6d3b74d7586269eb943e753597dcd4cae747f9dc0aabc9a504479db6c71934d8.mp3', 1071, '2026-09-13 15:55:20.682562', '7d4a653762ee7c23011bdc7e49b366d192c785cd7e0c3323c29f491fed877d1a', 'validated', '{"audio_key":"6d3b74d7586269eb943e753597dcd4cae747f9dc0aabc9a504479db6c71934d8","entity_key":"wf_time_and_plans_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7d4a653762ee7c23011bdc7e49b366d192c785cd7e0c3323c29f491fed877d1a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/6d3b74d7586269eb943e753597dcd4cae747f9dc0aabc9a504479db6c71934d8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_shopping_basics_02 -> audio/generated/tr-TR/lexical/6ec2b478fd01fbace83fb622767863054770ca0f3679a798f05e82349effa66a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a823eb31-6886-579e-8034-0eb9f82b2b23', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_shopping_basics_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9346d8f88882b76b8733c463376fa97c2235e5c2c0bc8243e0ca8f45cb00cea1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6abb57f2-33ac-5d13-9292-c139c29ba7e1', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a823eb31-6886-579e-8034-0eb9f82b2b23', 1), '9346d8f88882b76b8733c463376fa97c2235e5c2c0bc8243e0ca8f45cb00cea1',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/6ec2b478fd01fbace83fb622767863054770ca0f3679a798f05e82349effa66a.mp3', 1071, '2026-09-13 15:55:21.640498', '66f92faed4c3637b66ae19f15319b3568989e890f2ea1487b80748cd6048fa47', 'validated', '{"audio_key":"6ec2b478fd01fbace83fb622767863054770ca0f3679a798f05e82349effa66a","entity_key":"lx_shopping_basics_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"66f92faed4c3637b66ae19f15319b3568989e890f2ea1487b80748cd6048fa47","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/6ec2b478fd01fbace83fb622767863054770ca0f3679a798f05e82349effa66a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_shopping_basics_02 -> audio/generated/tr-TR/lexical/6ec2b478fd01fbace83fb622767863054770ca0f3679a798f05e82349effa66a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a263b37b-6692-5279-a08b-89d9cba0dd74', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_shopping_basics_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9346d8f88882b76b8733c463376fa97c2235e5c2c0bc8243e0ca8f45cb00cea1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c8367125-d57f-5199-849f-359ab638a4af', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a263b37b-6692-5279-a08b-89d9cba0dd74', 1), '9346d8f88882b76b8733c463376fa97c2235e5c2c0bc8243e0ca8f45cb00cea1',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/6ec2b478fd01fbace83fb622767863054770ca0f3679a798f05e82349effa66a.mp3', 1071, '2026-09-13 15:55:21.640498', '66f92faed4c3637b66ae19f15319b3568989e890f2ea1487b80748cd6048fa47', 'validated', '{"audio_key":"6ec2b478fd01fbace83fb622767863054770ca0f3679a798f05e82349effa66a","entity_key":"wf_shopping_basics_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"66f92faed4c3637b66ae19f15319b3568989e890f2ea1487b80748cd6048fa47","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/6ec2b478fd01fbace83fb622767863054770ca0f3679a798f05e82349effa66a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_at_home_01 -> audio/generated/tr-TR/lexical/70111dde39936b70e1b28afba44afa662bd16766fe03d7eda5e66026783d944c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f570badc-809f-58a7-bf58-c4eae52b4433', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_at_home_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '67d35554c1f60638d6d72a0edc045450a841f7efabe0f9843b7e653499094538'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('daa7308a-fa5f-5083-aca4-e9188d747521', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f570badc-809f-58a7-bf58-c4eae52b4433', 1), '67d35554c1f60638d6d72a0edc045450a841f7efabe0f9843b7e653499094538',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/70111dde39936b70e1b28afba44afa662bd16766fe03d7eda5e66026783d944c.mp3', 835, '2026-09-13 15:55:21.696693', '364605f81cdb808944c91394f85887eb1a03d45be32527971ca11cecbd04aae7', 'validated', '{"audio_key":"70111dde39936b70e1b28afba44afa662bd16766fe03d7eda5e66026783d944c","entity_key":"lx_at_home_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"364605f81cdb808944c91394f85887eb1a03d45be32527971ca11cecbd04aae7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/70111dde39936b70e1b28afba44afa662bd16766fe03d7eda5e66026783d944c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_at_home_01 -> audio/generated/tr-TR/lexical/70111dde39936b70e1b28afba44afa662bd16766fe03d7eda5e66026783d944c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('91b2209e-4c82-5268-a94f-dee32e63199f', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_at_home_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '67d35554c1f60638d6d72a0edc045450a841f7efabe0f9843b7e653499094538'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('16e472dc-c0a4-5c98-a61c-cadab1314794', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('91b2209e-4c82-5268-a94f-dee32e63199f', 1), '67d35554c1f60638d6d72a0edc045450a841f7efabe0f9843b7e653499094538',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/70111dde39936b70e1b28afba44afa662bd16766fe03d7eda5e66026783d944c.mp3', 835, '2026-09-13 15:55:21.696693', '364605f81cdb808944c91394f85887eb1a03d45be32527971ca11cecbd04aae7', 'validated', '{"audio_key":"70111dde39936b70e1b28afba44afa662bd16766fe03d7eda5e66026783d944c","entity_key":"wf_at_home_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"364605f81cdb808944c91394f85887eb1a03d45be32527971ca11cecbd04aae7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/70111dde39936b70e1b28afba44afa662bd16766fe03d7eda5e66026783d944c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_at_the_cafe_04 -> audio/generated/tr-TR/lexical/706a8eee2cbcf238bc59e9950f3e5b250ea41b2bffdb55c380e3c6bc5f8b2858.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('684f9391-31cc-5b5f-8b18-de2efa4a0a1a', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_at_the_cafe_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f1cbbbff90ea4ea3edcf5d89261e05de2aebecd7c31109f7bb15afdb895898bd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d5010689-50e4-57b9-8038-51220de1707c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('684f9391-31cc-5b5f-8b18-de2efa4a0a1a', 1), 'f1cbbbff90ea4ea3edcf5d89261e05de2aebecd7c31109f7bb15afdb895898bd',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/706a8eee2cbcf238bc59e9950f3e5b250ea41b2bffdb55c380e3c6bc5f8b2858.mp3', 1149, '2026-09-13 15:55:22.705857', 'f078167c4416cff586d452bae8a76db15887ae7e5a96332cf5e3e5d3e41f0226', 'validated', '{"audio_key":"706a8eee2cbcf238bc59e9950f3e5b250ea41b2bffdb55c380e3c6bc5f8b2858","entity_key":"lx_at_the_cafe_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f078167c4416cff586d452bae8a76db15887ae7e5a96332cf5e3e5d3e41f0226","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/706a8eee2cbcf238bc59e9950f3e5b250ea41b2bffdb55c380e3c6bc5f8b2858.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_at_the_cafe_04 -> audio/generated/tr-TR/lexical/706a8eee2cbcf238bc59e9950f3e5b250ea41b2bffdb55c380e3c6bc5f8b2858.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6e94fcca-26ba-502f-aaa3-1e23c30a6c30', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_at_the_cafe_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f1cbbbff90ea4ea3edcf5d89261e05de2aebecd7c31109f7bb15afdb895898bd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bb06d8cd-ad11-5f16-871d-5846e558372f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6e94fcca-26ba-502f-aaa3-1e23c30a6c30', 1), 'f1cbbbff90ea4ea3edcf5d89261e05de2aebecd7c31109f7bb15afdb895898bd',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/706a8eee2cbcf238bc59e9950f3e5b250ea41b2bffdb55c380e3c6bc5f8b2858.mp3', 1149, '2026-09-13 15:55:22.705857', 'f078167c4416cff586d452bae8a76db15887ae7e5a96332cf5e3e5d3e41f0226', 'validated', '{"audio_key":"706a8eee2cbcf238bc59e9950f3e5b250ea41b2bffdb55c380e3c6bc5f8b2858","entity_key":"wf_at_the_cafe_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f078167c4416cff586d452bae8a76db15887ae7e5a96332cf5e3e5d3e41f0226","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/706a8eee2cbcf238bc59e9950f3e5b250ea41b2bffdb55c380e3c6bc5f8b2858.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_at_the_cafe_05 -> audio/generated/tr-TR/lexical/749cf4e5e83bb394aef0b3a613cc4731deaeca8b8fd6a8c198dc5adb5c3231ec.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e3e99b87-e79b-5a06-9b3e-6a1b8f6ee906', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_at_the_cafe_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a80ca36e991fc0585e6b628d65d57225a91520e627f29de3cc707164a9626971'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d92e1800-a194-57f3-9378-f3db6a39c09c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e3e99b87-e79b-5a06-9b3e-6a1b8f6ee906', 1), 'a80ca36e991fc0585e6b628d65d57225a91520e627f29de3cc707164a9626971',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/749cf4e5e83bb394aef0b3a613cc4731deaeca8b8fd6a8c198dc5adb5c3231ec.mp3', 1018, '2026-09-13 15:55:22.742462', 'c1b3db89630fe173a8ba6816b0ff248bcfacebfad30e8c058d4e26bdd9f47bc6', 'validated', '{"audio_key":"749cf4e5e83bb394aef0b3a613cc4731deaeca8b8fd6a8c198dc5adb5c3231ec","entity_key":"lx_at_the_cafe_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c1b3db89630fe173a8ba6816b0ff248bcfacebfad30e8c058d4e26bdd9f47bc6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/749cf4e5e83bb394aef0b3a613cc4731deaeca8b8fd6a8c198dc5adb5c3231ec.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_at_the_cafe_05 -> audio/generated/tr-TR/lexical/749cf4e5e83bb394aef0b3a613cc4731deaeca8b8fd6a8c198dc5adb5c3231ec.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('33e8f672-3fa6-58ea-9f92-e33aaeea88ce', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_at_the_cafe_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a80ca36e991fc0585e6b628d65d57225a91520e627f29de3cc707164a9626971'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a467eb68-1526-5be5-80b6-a9a5b0e8fee4', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('33e8f672-3fa6-58ea-9f92-e33aaeea88ce', 1), 'a80ca36e991fc0585e6b628d65d57225a91520e627f29de3cc707164a9626971',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/749cf4e5e83bb394aef0b3a613cc4731deaeca8b8fd6a8c198dc5adb5c3231ec.mp3', 1018, '2026-09-13 15:55:22.742462', 'c1b3db89630fe173a8ba6816b0ff248bcfacebfad30e8c058d4e26bdd9f47bc6', 'validated', '{"audio_key":"749cf4e5e83bb394aef0b3a613cc4731deaeca8b8fd6a8c198dc5adb5c3231ec","entity_key":"wf_at_the_cafe_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c1b3db89630fe173a8ba6816b0ff248bcfacebfad30e8c058d4e26bdd9f47bc6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/749cf4e5e83bb394aef0b3a613cc4731deaeca8b8fd6a8c198dc5adb5c3231ec.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_this_and_these_04 -> audio/generated/tr-TR/lexical/77f0dc1a5e38297115461e7a428f845953c88bc7ab67eb83bfc2895a18abcaad.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('94871771-3805-5be2-8126-f3635fc0aa98', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_this_and_these_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9508394fe63a491fdcc07886367a676baac5e1207bfcc5ae13b08f37b3a31b49'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9b17455c-2644-53c3-af64-c9d456257b9e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('94871771-3805-5be2-8126-f3635fc0aa98', 1), '9508394fe63a491fdcc07886367a676baac5e1207bfcc5ae13b08f37b3a31b49',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/77f0dc1a5e38297115461e7a428f845953c88bc7ab67eb83bfc2895a18abcaad.mp3', 966, '2026-09-13 15:55:23.730028', 'be605b6666b03425230b4d16b8093b574a67b69afbbcd8924b5f793281ab1ad9', 'validated', '{"audio_key":"77f0dc1a5e38297115461e7a428f845953c88bc7ab67eb83bfc2895a18abcaad","entity_key":"lx_this_and_these_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"be605b6666b03425230b4d16b8093b574a67b69afbbcd8924b5f793281ab1ad9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/77f0dc1a5e38297115461e7a428f845953c88bc7ab67eb83bfc2895a18abcaad.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_this_and_these_04 -> audio/generated/tr-TR/lexical/77f0dc1a5e38297115461e7a428f845953c88bc7ab67eb83bfc2895a18abcaad.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('06834b8e-7205-5061-9774-5b1e9e31b309', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_this_and_these_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9508394fe63a491fdcc07886367a676baac5e1207bfcc5ae13b08f37b3a31b49'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c0e5c104-0438-5f8b-a802-4cdf1705cb7c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('06834b8e-7205-5061-9774-5b1e9e31b309', 1), '9508394fe63a491fdcc07886367a676baac5e1207bfcc5ae13b08f37b3a31b49',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/77f0dc1a5e38297115461e7a428f845953c88bc7ab67eb83bfc2895a18abcaad.mp3', 966, '2026-09-13 15:55:23.730028', 'be605b6666b03425230b4d16b8093b574a67b69afbbcd8924b5f793281ab1ad9', 'validated', '{"audio_key":"77f0dc1a5e38297115461e7a428f845953c88bc7ab67eb83bfc2895a18abcaad","entity_key":"wf_this_and_these_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"be605b6666b03425230b4d16b8093b574a67b69afbbcd8924b5f793281ab1ad9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/77f0dc1a5e38297115461e7a428f845953c88bc7ab67eb83bfc2895a18abcaad.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_a1_first_day_capstone_04 -> audio/generated/tr-TR/lexical/82758c77a77a8aea653ed273f0ccdf30db10198d1df746f69cc9495bb68adfab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('503ada81-ffdb-5423-bdd7-da23520a914d', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_a1_first_day_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8c10715386ffd0dee2ad63e0635abcecaf01c6067de01ec7452ec6e5c5f51e3c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6cbfb570-c0ec-5aa0-a4ab-35d9ab510dfe', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('503ada81-ffdb-5423-bdd7-da23520a914d', 1), '8c10715386ffd0dee2ad63e0635abcecaf01c6067de01ec7452ec6e5c5f51e3c',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/82758c77a77a8aea653ed273f0ccdf30db10198d1df746f69cc9495bb68adfab.mp3', 1097, '2026-09-13 15:55:23.798279', 'c5034baf129b1884d13446e7f685062cf7ddc3f50aa358f167eaca889810f60e', 'validated', '{"audio_key":"82758c77a77a8aea653ed273f0ccdf30db10198d1df746f69cc9495bb68adfab","entity_key":"lx_a1_first_day_capstone_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c5034baf129b1884d13446e7f685062cf7ddc3f50aa358f167eaca889810f60e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/82758c77a77a8aea653ed273f0ccdf30db10198d1df746f69cc9495bb68adfab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_a1_first_day_capstone_04 -> audio/generated/tr-TR/lexical/82758c77a77a8aea653ed273f0ccdf30db10198d1df746f69cc9495bb68adfab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('12c7b69c-73ac-548e-aa36-3ca09d685533', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_a1_first_day_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8c10715386ffd0dee2ad63e0635abcecaf01c6067de01ec7452ec6e5c5f51e3c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9871e706-e6e7-58f6-b883-4474bae085a4', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('12c7b69c-73ac-548e-aa36-3ca09d685533', 1), '8c10715386ffd0dee2ad63e0635abcecaf01c6067de01ec7452ec6e5c5f51e3c',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/82758c77a77a8aea653ed273f0ccdf30db10198d1df746f69cc9495bb68adfab.mp3', 1097, '2026-09-13 15:55:23.798279', 'c5034baf129b1884d13446e7f685062cf7ddc3f50aa358f167eaca889810f60e', 'validated', '{"audio_key":"82758c77a77a8aea653ed273f0ccdf30db10198d1df746f69cc9495bb68adfab","entity_key":"wf_a1_first_day_capstone_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c5034baf129b1884d13446e7f685062cf7ddc3f50aa358f167eaca889810f60e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/82758c77a77a8aea653ed273f0ccdf30db10198d1df746f69cc9495bb68adfab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_what_im_doing_01 -> audio/generated/tr-TR/lexical/84970cf25603c9f7e6bfa857d2e99c3b6520cc5fb8105b37c152d49cee4edd01.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3e4e3627-0d02-5edc-83ed-96c77d61140d', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_what_im_doing_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '012f822eb6adf6278c43f8cb4a4b085ad2b4990038b11a53ac77e42e258abadc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e1c826e7-1485-5904-a35d-98f8d7df6c77', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3e4e3627-0d02-5edc-83ed-96c77d61140d', 1), '012f822eb6adf6278c43f8cb4a4b085ad2b4990038b11a53ac77e42e258abadc',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/84970cf25603c9f7e6bfa857d2e99c3b6520cc5fb8105b37c152d49cee4edd01.mp3', 1018, '2026-09-13 15:55:24.827756', '5089b9cd9970800261e2b8f06a9958a649c83596eb954ba088777c8fb941735b', 'validated', '{"audio_key":"84970cf25603c9f7e6bfa857d2e99c3b6520cc5fb8105b37c152d49cee4edd01","entity_key":"lx_what_im_doing_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5089b9cd9970800261e2b8f06a9958a649c83596eb954ba088777c8fb941735b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/84970cf25603c9f7e6bfa857d2e99c3b6520cc5fb8105b37c152d49cee4edd01.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_what_im_doing_01 -> audio/generated/tr-TR/lexical/84970cf25603c9f7e6bfa857d2e99c3b6520cc5fb8105b37c152d49cee4edd01.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('505513c5-0ff6-57a3-b120-679a175c7b18', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_what_im_doing_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '012f822eb6adf6278c43f8cb4a4b085ad2b4990038b11a53ac77e42e258abadc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('edf48448-460c-55f7-ab9a-19ead05d4e65', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('505513c5-0ff6-57a3-b120-679a175c7b18', 1), '012f822eb6adf6278c43f8cb4a4b085ad2b4990038b11a53ac77e42e258abadc',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/84970cf25603c9f7e6bfa857d2e99c3b6520cc5fb8105b37c152d49cee4edd01.mp3', 1018, '2026-09-13 15:55:24.827756', '5089b9cd9970800261e2b8f06a9958a649c83596eb954ba088777c8fb941735b', 'validated', '{"audio_key":"84970cf25603c9f7e6bfa857d2e99c3b6520cc5fb8105b37c152d49cee4edd01","entity_key":"wf_what_im_doing_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5089b9cd9970800261e2b8f06a9958a649c83596eb954ba088777c8fb941735b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/84970cf25603c9f7e6bfa857d2e99c3b6520cc5fb8105b37c152d49cee4edd01.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_who_i_am_02 -> audio/generated/tr-TR/lexical/87f83ce32df5da015c7515dc19ddb55608351e584084c8bf58c244e7576b05ee.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('920258b7-9833-507b-93fa-67f8ac7e46ae', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_who_i_am_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5c34cd5554d4a72765cc8189ee824eb36c464a768e80c2749272b906846d9700'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9784f650-09b5-517c-827e-2c2ee68a0ec5', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('920258b7-9833-507b-93fa-67f8ac7e46ae', 1), '5c34cd5554d4a72765cc8189ee824eb36c464a768e80c2749272b906846d9700',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/87f83ce32df5da015c7515dc19ddb55608351e584084c8bf58c244e7576b05ee.mp3', 1201, '2026-09-13 15:55:24.868717', 'c995e96a9bd88811f20d960cb38d71ba7fc5a552109d5281704111f9a94d06bd', 'validated', '{"audio_key":"87f83ce32df5da015c7515dc19ddb55608351e584084c8bf58c244e7576b05ee","entity_key":"lx_who_i_am_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c995e96a9bd88811f20d960cb38d71ba7fc5a552109d5281704111f9a94d06bd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/87f83ce32df5da015c7515dc19ddb55608351e584084c8bf58c244e7576b05ee.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_who_i_am_02 -> audio/generated/tr-TR/lexical/87f83ce32df5da015c7515dc19ddb55608351e584084c8bf58c244e7576b05ee.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('145a9d4f-6c1b-53d7-a4b7-0a9327d229b2', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_who_i_am_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5c34cd5554d4a72765cc8189ee824eb36c464a768e80c2749272b906846d9700'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6f983d44-0768-58ef-9dff-d27308dee912', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('145a9d4f-6c1b-53d7-a4b7-0a9327d229b2', 1), '5c34cd5554d4a72765cc8189ee824eb36c464a768e80c2749272b906846d9700',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/87f83ce32df5da015c7515dc19ddb55608351e584084c8bf58c244e7576b05ee.mp3', 1201, '2026-09-13 15:55:24.868717', 'c995e96a9bd88811f20d960cb38d71ba7fc5a552109d5281704111f9a94d06bd', 'validated', '{"audio_key":"87f83ce32df5da015c7515dc19ddb55608351e584084c8bf58c244e7576b05ee","entity_key":"wf_who_i_am_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c995e96a9bd88811f20d960cb38d71ba7fc5a552109d5281704111f9a94d06bd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/87f83ce32df5da015c7515dc19ddb55608351e584084c8bf58c244e7576b05ee.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_at_the_cafe_06 -> audio/generated/tr-TR/lexical/8d897382e7b6158d2fc9ce4a263fce21168b70caec69e4b41534d2c7a0ecdc89.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b5e9c11e-fb92-57e3-bf47-06d221511386', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_at_the_cafe_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '19093b4d3eeeaaab1386f088cf4075cdf0b27886179ae4800b01e6f4ee2277e6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('214cc5d6-5a03-5d8e-bc87-76d8372bbb15', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b5e9c11e-fb92-57e3-bf47-06d221511386', 1), '19093b4d3eeeaaab1386f088cf4075cdf0b27886179ae4800b01e6f4ee2277e6',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/8d897382e7b6158d2fc9ce4a263fce21168b70caec69e4b41534d2c7a0ecdc89.mp3', 1071, '2026-09-13 15:17:28.896862', '34ccbf5ae36ef8e44a350b6c8742b05260b6913d09de4cb4a728fc32a5328759', 'validated', '{"audio_key":"8d897382e7b6158d2fc9ce4a263fce21168b70caec69e4b41534d2c7a0ecdc89","entity_key":"lx_at_the_cafe_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"34ccbf5ae36ef8e44a350b6c8742b05260b6913d09de4cb4a728fc32a5328759","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/8d897382e7b6158d2fc9ce4a263fce21168b70caec69e4b41534d2c7a0ecdc89.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_at_the_cafe_06 -> audio/generated/tr-TR/lexical/8d897382e7b6158d2fc9ce4a263fce21168b70caec69e4b41534d2c7a0ecdc89.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2ddc9185-45dd-54ac-ae8b-9663418f1078', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_at_the_cafe_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '19093b4d3eeeaaab1386f088cf4075cdf0b27886179ae4800b01e6f4ee2277e6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1fd8d414-7bbd-5f9e-b777-d2377fc1f322', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2ddc9185-45dd-54ac-ae8b-9663418f1078', 1), '19093b4d3eeeaaab1386f088cf4075cdf0b27886179ae4800b01e6f4ee2277e6',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/8d897382e7b6158d2fc9ce4a263fce21168b70caec69e4b41534d2c7a0ecdc89.mp3', 1071, '2026-09-13 15:17:28.896862', '34ccbf5ae36ef8e44a350b6c8742b05260b6913d09de4cb4a728fc32a5328759', 'validated', '{"audio_key":"8d897382e7b6158d2fc9ce4a263fce21168b70caec69e4b41534d2c7a0ecdc89","entity_key":"wf_at_the_cafe_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"34ccbf5ae36ef8e44a350b6c8742b05260b6913d09de4cb4a728fc32a5328759","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/8d897382e7b6158d2fc9ce4a263fce21168b70caec69e4b41534d2c7a0ecdc89.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_this_and_these_05 -> audio/generated/tr-TR/lexical/918fb11befa2f48aca8fb9eb9588f9a8ff733cb5c7581b2458664eac3a99bbf1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('4d14a49f-fd92-5e3a-a316-9dcdaaba436c', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_this_and_these_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd6e59015d008c12131533452d6ba5885aca9d1f087659529653dc8778ba84865'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eaf8541c-5e18-5fa1-9d68-b593c5b021a5', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('4d14a49f-fd92-5e3a-a316-9dcdaaba436c', 1), 'd6e59015d008c12131533452d6ba5885aca9d1f087659529653dc8778ba84865',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/918fb11befa2f48aca8fb9eb9588f9a8ff733cb5c7581b2458664eac3a99bbf1.mp3', 1201, '2026-09-13 15:55:25.894129', 'e702b7983196eca85c8d01786fec3ffaba1f32383d027f44ac5096b3e3d681b3', 'validated', '{"audio_key":"918fb11befa2f48aca8fb9eb9588f9a8ff733cb5c7581b2458664eac3a99bbf1","entity_key":"lx_this_and_these_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e702b7983196eca85c8d01786fec3ffaba1f32383d027f44ac5096b3e3d681b3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/918fb11befa2f48aca8fb9eb9588f9a8ff733cb5c7581b2458664eac3a99bbf1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_this_and_these_05 -> audio/generated/tr-TR/lexical/918fb11befa2f48aca8fb9eb9588f9a8ff733cb5c7581b2458664eac3a99bbf1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('322f399f-daaf-59df-a142-440e7321d381', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_this_and_these_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd6e59015d008c12131533452d6ba5885aca9d1f087659529653dc8778ba84865'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('955d3773-b769-5b3d-983b-3c28db4c6766', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('322f399f-daaf-59df-a142-440e7321d381', 1), 'd6e59015d008c12131533452d6ba5885aca9d1f087659529653dc8778ba84865',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/918fb11befa2f48aca8fb9eb9588f9a8ff733cb5c7581b2458664eac3a99bbf1.mp3', 1201, '2026-09-13 15:55:25.894129', 'e702b7983196eca85c8d01786fec3ffaba1f32383d027f44ac5096b3e3d681b3', 'validated', '{"audio_key":"918fb11befa2f48aca8fb9eb9588f9a8ff733cb5c7581b2458664eac3a99bbf1","entity_key":"wf_this_and_these_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e702b7983196eca85c8d01786fec3ffaba1f32383d027f44ac5096b3e3d681b3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/918fb11befa2f48aca8fb9eb9588f9a8ff733cb5c7581b2458664eac3a99bbf1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_what_im_doing_06 -> audio/generated/tr-TR/lexical/99f4c03247c0f0be4fa55b55f60f84fc40ddcac1c425dea3e3a1cda34f89d79a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c98a5b1f-278f-54ed-a0c7-f5dcd2b32af8', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_what_im_doing_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '68af8fa2989ea392968866e0251a89361b9c7b1895d1cef9ce6b7d2297bc79a6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8d965b51-1d1b-505d-a5d4-fd7dbfbf621b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c98a5b1f-278f-54ed-a0c7-f5dcd2b32af8', 1), '68af8fa2989ea392968866e0251a89361b9c7b1895d1cef9ce6b7d2297bc79a6',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/99f4c03247c0f0be4fa55b55f60f84fc40ddcac1c425dea3e3a1cda34f89d79a.mp3', 1071, '2026-09-13 15:55:25.895715', '48879f13a5fd58b4e938fe58d0cc3da6459f94664698c938e80148c4c6574b3d', 'validated', '{"audio_key":"99f4c03247c0f0be4fa55b55f60f84fc40ddcac1c425dea3e3a1cda34f89d79a","entity_key":"lx_what_im_doing_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"48879f13a5fd58b4e938fe58d0cc3da6459f94664698c938e80148c4c6574b3d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/99f4c03247c0f0be4fa55b55f60f84fc40ddcac1c425dea3e3a1cda34f89d79a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_what_im_doing_06 -> audio/generated/tr-TR/lexical/99f4c03247c0f0be4fa55b55f60f84fc40ddcac1c425dea3e3a1cda34f89d79a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('17f5e4a9-3e7f-5b2e-b5c2-8c8134f9e916', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_what_im_doing_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '68af8fa2989ea392968866e0251a89361b9c7b1895d1cef9ce6b7d2297bc79a6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8b6cbd03-553f-51d5-acfd-d763315bd0a7', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('17f5e4a9-3e7f-5b2e-b5c2-8c8134f9e916', 1), '68af8fa2989ea392968866e0251a89361b9c7b1895d1cef9ce6b7d2297bc79a6',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/99f4c03247c0f0be4fa55b55f60f84fc40ddcac1c425dea3e3a1cda34f89d79a.mp3', 1071, '2026-09-13 15:55:25.895715', '48879f13a5fd58b4e938fe58d0cc3da6459f94664698c938e80148c4c6574b3d', 'validated', '{"audio_key":"99f4c03247c0f0be4fa55b55f60f84fc40ddcac1c425dea3e3a1cda34f89d79a","entity_key":"wf_what_im_doing_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"48879f13a5fd58b4e938fe58d0cc3da6459f94664698c938e80148c4c6574b3d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/99f4c03247c0f0be4fa55b55f60f84fc40ddcac1c425dea3e3a1cda34f89d79a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_at_the_cafe_03 -> audio/generated/tr-TR/lexical/a072f65ea74b4337227d25918abe95bcbc5f016f6a090e92e61245c546cb8169.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5594d5ad-f433-55e9-ba65-5b25e585ff9b', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_at_the_cafe_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9691bb22897cbc2b9ddd02806a8fc27e76d69a884df07726e03cc0e9e716c1e3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3b325a7a-3955-53a7-a8c2-58d2301244f8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5594d5ad-f433-55e9-ba65-5b25e585ff9b', 1), '9691bb22897cbc2b9ddd02806a8fc27e76d69a884df07726e03cc0e9e716c1e3',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/a072f65ea74b4337227d25918abe95bcbc5f016f6a090e92e61245c546cb8169.mp3', 1018, '2026-09-13 15:55:26.954708', '9363ee8b495a04d9e34d85addf7e4fa188f6c9ba0ec96784fcc458def7a8af11', 'validated', '{"audio_key":"a072f65ea74b4337227d25918abe95bcbc5f016f6a090e92e61245c546cb8169","entity_key":"lx_at_the_cafe_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9363ee8b495a04d9e34d85addf7e4fa188f6c9ba0ec96784fcc458def7a8af11","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/a072f65ea74b4337227d25918abe95bcbc5f016f6a090e92e61245c546cb8169.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_at_the_cafe_03 -> audio/generated/tr-TR/lexical/a072f65ea74b4337227d25918abe95bcbc5f016f6a090e92e61245c546cb8169.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8c383b36-9776-5677-a96b-3f11cd317226', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_at_the_cafe_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9691bb22897cbc2b9ddd02806a8fc27e76d69a884df07726e03cc0e9e716c1e3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4df98877-d8f8-544e-8ce3-08be39eb97e7', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8c383b36-9776-5677-a96b-3f11cd317226', 1), '9691bb22897cbc2b9ddd02806a8fc27e76d69a884df07726e03cc0e9e716c1e3',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/a072f65ea74b4337227d25918abe95bcbc5f016f6a090e92e61245c546cb8169.mp3', 1018, '2026-09-13 15:55:26.954708', '9363ee8b495a04d9e34d85addf7e4fa188f6c9ba0ec96784fcc458def7a8af11', 'validated', '{"audio_key":"a072f65ea74b4337227d25918abe95bcbc5f016f6a090e92e61245c546cb8169","entity_key":"wf_at_the_cafe_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9363ee8b495a04d9e34d85addf7e4fa188f6c9ba0ec96784fcc458def7a8af11","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/a072f65ea74b4337227d25918abe95bcbc5f016f6a090e92e61245c546cb8169.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_my_family_05 -> audio/generated/tr-TR/lexical/a16c8dd1dcfeac7a7b5592c4541cfb548171bdbdb27caf1750128abd46b9a94c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1a29779a-cfb8-540f-b627-6ba5a6e3a2e8', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_my_family_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0ae941bed711ee00671668d66e21f31f8e45ad42aeccede9d15098d9f1466ab8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c3528389-0ba2-52a4-9524-ea3b88965b85', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1a29779a-cfb8-540f-b627-6ba5a6e3a2e8', 1), '0ae941bed711ee00671668d66e21f31f8e45ad42aeccede9d15098d9f1466ab8',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/a16c8dd1dcfeac7a7b5592c4541cfb548171bdbdb27caf1750128abd46b9a94c.mp3', 1071, '2026-09-13 15:55:26.963368', '66d10e55554f19fa8a401ea6732694668d9522b5f61940504f9085e14ded8994', 'validated', '{"audio_key":"a16c8dd1dcfeac7a7b5592c4541cfb548171bdbdb27caf1750128abd46b9a94c","entity_key":"lx_my_family_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"66d10e55554f19fa8a401ea6732694668d9522b5f61940504f9085e14ded8994","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/a16c8dd1dcfeac7a7b5592c4541cfb548171bdbdb27caf1750128abd46b9a94c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_my_family_05 -> audio/generated/tr-TR/lexical/a16c8dd1dcfeac7a7b5592c4541cfb548171bdbdb27caf1750128abd46b9a94c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c14cb1d4-fa60-5b65-937c-e7ecaafbe8ca', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_my_family_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0ae941bed711ee00671668d66e21f31f8e45ad42aeccede9d15098d9f1466ab8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1a805963-b17e-5dc3-b619-54220107688c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c14cb1d4-fa60-5b65-937c-e7ecaafbe8ca', 1), '0ae941bed711ee00671668d66e21f31f8e45ad42aeccede9d15098d9f1466ab8',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/a16c8dd1dcfeac7a7b5592c4541cfb548171bdbdb27caf1750128abd46b9a94c.mp3', 1071, '2026-09-13 15:55:26.963368', '66d10e55554f19fa8a401ea6732694668d9522b5f61940504f9085e14ded8994', 'validated', '{"audio_key":"a16c8dd1dcfeac7a7b5592c4541cfb548171bdbdb27caf1750128abd46b9a94c","entity_key":"wf_my_family_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"66d10e55554f19fa8a401ea6732694668d9522b5f61940504f9085e14ded8994","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/a16c8dd1dcfeac7a7b5592c4541cfb548171bdbdb27caf1750128abd46b9a94c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_shopping_basics_03 -> audio/generated/tr-TR/lexical/a7460c35e68c47535a9c076ec1d4d99d9d9354e96bbeb19b3a2082f5fb0bbb54.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2d35e9dc-171c-548a-8b70-03f8ebda0387', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_shopping_basics_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bf7d53f1768c33caa217e80d6b5f193961ca882ac98997283cdd2c09acb940ad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b4899e80-a133-5b6e-b624-c44809e8f1e9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2d35e9dc-171c-548a-8b70-03f8ebda0387', 1), 'bf7d53f1768c33caa217e80d6b5f193961ca882ac98997283cdd2c09acb940ad',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/a7460c35e68c47535a9c076ec1d4d99d9d9354e96bbeb19b3a2082f5fb0bbb54.mp3', 1149, '2026-09-13 15:55:28.021539', '97142ab3798d1ff3f5ff60b26f26bc68b18072f1bea90548ac715190597458dc', 'validated', '{"audio_key":"a7460c35e68c47535a9c076ec1d4d99d9d9354e96bbeb19b3a2082f5fb0bbb54","entity_key":"lx_shopping_basics_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"97142ab3798d1ff3f5ff60b26f26bc68b18072f1bea90548ac715190597458dc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/a7460c35e68c47535a9c076ec1d4d99d9d9354e96bbeb19b3a2082f5fb0bbb54.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_shopping_basics_03 -> audio/generated/tr-TR/lexical/a7460c35e68c47535a9c076ec1d4d99d9d9354e96bbeb19b3a2082f5fb0bbb54.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3a7a8609-6d5f-5c75-aac9-7f36b9921dd4', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_shopping_basics_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bf7d53f1768c33caa217e80d6b5f193961ca882ac98997283cdd2c09acb940ad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('061b973a-ea4a-50fb-9717-29fb1463e93a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3a7a8609-6d5f-5c75-aac9-7f36b9921dd4', 1), 'bf7d53f1768c33caa217e80d6b5f193961ca882ac98997283cdd2c09acb940ad',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/a7460c35e68c47535a9c076ec1d4d99d9d9354e96bbeb19b3a2082f5fb0bbb54.mp3', 1149, '2026-09-13 15:55:28.021539', '97142ab3798d1ff3f5ff60b26f26bc68b18072f1bea90548ac715190597458dc', 'validated', '{"audio_key":"a7460c35e68c47535a9c076ec1d4d99d9d9354e96bbeb19b3a2082f5fb0bbb54","entity_key":"wf_shopping_basics_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"97142ab3798d1ff3f5ff60b26f26bc68b18072f1bea90548ac715190597458dc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/a7460c35e68c47535a9c076ec1d4d99d9d9354e96bbeb19b3a2082f5fb0bbb54.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_who_i_am_04 -> audio/generated/tr-TR/lexical/ac7d59d2a860a41d82f2727ceb72ec64983e256ebef656c5f4687093bb8734c5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('16c1265c-d9fd-5e71-ae79-471f4393b67d', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_who_i_am_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0437c4d263465981757515d63d8a20f4f44fc64256ee7b057815f078c0e85915'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('261eeba3-7eaa-5355-b554-4093146f6d5c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('16c1265c-d9fd-5e71-ae79-471f4393b67d', 1), '0437c4d263465981757515d63d8a20f4f44fc64256ee7b057815f078c0e85915',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/ac7d59d2a860a41d82f2727ceb72ec64983e256ebef656c5f4687093bb8734c5.mp3', 1149, '2026-09-13 15:55:28.021635', 'cdc654df4fc265ee8a013a62c38b4d7a9bb6273c8d6adba14bfb874bbd9d7690', 'validated', '{"audio_key":"ac7d59d2a860a41d82f2727ceb72ec64983e256ebef656c5f4687093bb8734c5","entity_key":"lx_who_i_am_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cdc654df4fc265ee8a013a62c38b4d7a9bb6273c8d6adba14bfb874bbd9d7690","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/ac7d59d2a860a41d82f2727ceb72ec64983e256ebef656c5f4687093bb8734c5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_who_i_am_04 -> audio/generated/tr-TR/lexical/ac7d59d2a860a41d82f2727ceb72ec64983e256ebef656c5f4687093bb8734c5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b6147fa6-9dc6-5250-8511-7dc2da05729d', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_who_i_am_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0437c4d263465981757515d63d8a20f4f44fc64256ee7b057815f078c0e85915'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('56962376-6e30-5f30-be1b-80401368b5a5', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b6147fa6-9dc6-5250-8511-7dc2da05729d', 1), '0437c4d263465981757515d63d8a20f4f44fc64256ee7b057815f078c0e85915',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/ac7d59d2a860a41d82f2727ceb72ec64983e256ebef656c5f4687093bb8734c5.mp3', 1149, '2026-09-13 15:55:28.021635', 'cdc654df4fc265ee8a013a62c38b4d7a9bb6273c8d6adba14bfb874bbd9d7690', 'validated', '{"audio_key":"ac7d59d2a860a41d82f2727ceb72ec64983e256ebef656c5f4687093bb8734c5","entity_key":"wf_who_i_am_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cdc654df4fc265ee8a013a62c38b4d7a9bb6273c8d6adba14bfb874bbd9d7690","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/ac7d59d2a860a41d82f2727ceb72ec64983e256ebef656c5f4687093bb8734c5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_a1_first_day_capstone_05 -> audio/generated/tr-TR/lexical/aeeb8294d9fc9c495a1892e1784fcf879ae66b6cbd1582c9b4096e8dcb1a7bdf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8ea064cd-ccbc-560c-83dd-75641de98a17', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_a1_first_day_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e1d51a9d142940cc47cf7c9b430472aa782285cacd9afeb75cbb24b4df04c82c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4fa74bc5-ddca-5eb8-ba91-6cd516f4de68', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8ea064cd-ccbc-560c-83dd-75641de98a17', 1), 'e1d51a9d142940cc47cf7c9b430472aa782285cacd9afeb75cbb24b4df04c82c',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/aeeb8294d9fc9c495a1892e1784fcf879ae66b6cbd1582c9b4096e8dcb1a7bdf.mp3', 1149, '2026-09-13 15:55:29.081768', '3fc69c5486b4018f0355f74e484013e47480d9aa691e54cedab542f3cd9fff72', 'validated', '{"audio_key":"aeeb8294d9fc9c495a1892e1784fcf879ae66b6cbd1582c9b4096e8dcb1a7bdf","entity_key":"lx_a1_first_day_capstone_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3fc69c5486b4018f0355f74e484013e47480d9aa691e54cedab542f3cd9fff72","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/aeeb8294d9fc9c495a1892e1784fcf879ae66b6cbd1582c9b4096e8dcb1a7bdf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_a1_first_day_capstone_05 -> audio/generated/tr-TR/lexical/aeeb8294d9fc9c495a1892e1784fcf879ae66b6cbd1582c9b4096e8dcb1a7bdf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('cab0f8ca-4030-5c03-bd53-3fa90bb44dc6', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_a1_first_day_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e1d51a9d142940cc47cf7c9b430472aa782285cacd9afeb75cbb24b4df04c82c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('76c3721b-6e78-5c5d-9001-f67aef42e4a4', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('cab0f8ca-4030-5c03-bd53-3fa90bb44dc6', 1), 'e1d51a9d142940cc47cf7c9b430472aa782285cacd9afeb75cbb24b4df04c82c',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/aeeb8294d9fc9c495a1892e1784fcf879ae66b6cbd1582c9b4096e8dcb1a7bdf.mp3', 1149, '2026-09-13 15:55:29.081768', '3fc69c5486b4018f0355f74e484013e47480d9aa691e54cedab542f3cd9fff72', 'validated', '{"audio_key":"aeeb8294d9fc9c495a1892e1784fcf879ae66b6cbd1582c9b4096e8dcb1a7bdf","entity_key":"wf_a1_first_day_capstone_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3fc69c5486b4018f0355f74e484013e47480d9aa691e54cedab542f3cd9fff72","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/aeeb8294d9fc9c495a1892e1784fcf879ae66b6cbd1582c9b4096e8dcb1a7bdf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_this_and_these_01 -> audio/generated/tr-TR/lexical/b72fc166dd1dcec230c38d9d8fbfc61694570353f140c82662692c2332908321.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6006d0c6-d9e0-5f39-b614-a1cf79b747ed', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_this_and_these_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e2c462e3e1f260a9130d09c099a7220e83762adac65536eb38b3e09b81418343'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('78e94db1-0eca-5166-ba03-700a35efe601', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6006d0c6-d9e0-5f39-b614-a1cf79b747ed', 1), 'e2c462e3e1f260a9130d09c099a7220e83762adac65536eb38b3e09b81418343',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/b72fc166dd1dcec230c38d9d8fbfc61694570353f140c82662692c2332908321.mp3', 1097, '2026-09-13 15:17:33.559042', 'ebdd9fcdcf89888df4e160981231ff4bb7c620658ef83d12d91f189a1e4b4f3a', 'validated', '{"audio_key":"b72fc166dd1dcec230c38d9d8fbfc61694570353f140c82662692c2332908321","entity_key":"lx_this_and_these_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ebdd9fcdcf89888df4e160981231ff4bb7c620658ef83d12d91f189a1e4b4f3a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/b72fc166dd1dcec230c38d9d8fbfc61694570353f140c82662692c2332908321.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_this_and_these_01 -> audio/generated/tr-TR/lexical/b72fc166dd1dcec230c38d9d8fbfc61694570353f140c82662692c2332908321.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('03ed9da5-962f-5833-9e6f-d86074fe037a', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_this_and_these_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e2c462e3e1f260a9130d09c099a7220e83762adac65536eb38b3e09b81418343'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2c6b31cb-e2c9-5972-9eb5-766363aa26ff', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('03ed9da5-962f-5833-9e6f-d86074fe037a', 1), 'e2c462e3e1f260a9130d09c099a7220e83762adac65536eb38b3e09b81418343',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/b72fc166dd1dcec230c38d9d8fbfc61694570353f140c82662692c2332908321.mp3', 1097, '2026-09-13 15:17:33.559042', 'ebdd9fcdcf89888df4e160981231ff4bb7c620658ef83d12d91f189a1e4b4f3a', 'validated', '{"audio_key":"b72fc166dd1dcec230c38d9d8fbfc61694570353f140c82662692c2332908321","entity_key":"wf_this_and_these_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ebdd9fcdcf89888df4e160981231ff4bb7c620658ef83d12d91f189a1e4b4f3a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/b72fc166dd1dcec230c38d9d8fbfc61694570353f140c82662692c2332908321.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_what_im_doing_02 -> audio/generated/tr-TR/lexical/bf8a85617906fcbbca058d570e988ec50d21d8ef96f9d0e4ea9934b50c31a51b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7b348409-82f5-509c-8d78-73d136a7c10c', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_what_im_doing_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e8597c35c358cf3b54ac5f6ccce520e7622cfaf8ed62aea73800f053dd835855'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('456eb88e-0deb-5b7c-b7e7-75ad3bab77a5', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7b348409-82f5-509c-8d78-73d136a7c10c', 1), 'e8597c35c358cf3b54ac5f6ccce520e7622cfaf8ed62aea73800f053dd835855',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/bf8a85617906fcbbca058d570e988ec50d21d8ef96f9d0e4ea9934b50c31a51b.mp3', 1071, '2026-09-13 15:55:29.067984', '524dd4c2bf1f47ba98e01455bc6ef97ca2bde16bbaf451ba61f7678f30f42d32', 'validated', '{"audio_key":"bf8a85617906fcbbca058d570e988ec50d21d8ef96f9d0e4ea9934b50c31a51b","entity_key":"lx_what_im_doing_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"524dd4c2bf1f47ba98e01455bc6ef97ca2bde16bbaf451ba61f7678f30f42d32","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/bf8a85617906fcbbca058d570e988ec50d21d8ef96f9d0e4ea9934b50c31a51b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_what_im_doing_02 -> audio/generated/tr-TR/lexical/bf8a85617906fcbbca058d570e988ec50d21d8ef96f9d0e4ea9934b50c31a51b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('02a91167-1546-5ed2-90b4-cfb6a27d4c7f', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_what_im_doing_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e8597c35c358cf3b54ac5f6ccce520e7622cfaf8ed62aea73800f053dd835855'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a9566c93-6ef3-5736-a881-12b989721e47', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('02a91167-1546-5ed2-90b4-cfb6a27d4c7f', 1), 'e8597c35c358cf3b54ac5f6ccce520e7622cfaf8ed62aea73800f053dd835855',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/bf8a85617906fcbbca058d570e988ec50d21d8ef96f9d0e4ea9934b50c31a51b.mp3', 1071, '2026-09-13 15:55:29.067984', '524dd4c2bf1f47ba98e01455bc6ef97ca2bde16bbaf451ba61f7678f30f42d32', 'validated', '{"audio_key":"bf8a85617906fcbbca058d570e988ec50d21d8ef96f9d0e4ea9934b50c31a51b","entity_key":"wf_what_im_doing_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"524dd4c2bf1f47ba98e01455bc6ef97ca2bde16bbaf451ba61f7678f30f42d32","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/bf8a85617906fcbbca058d570e988ec50d21d8ef96f9d0e4ea9934b50c31a51b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_who_i_am_01 -> audio/generated/tr-TR/lexical/c96b0d122217b246080810cda0399b67b6fbded1b0cb2d1651c441c87a48dada.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('495426a4-0201-5cd5-b201-769e5feb11bb', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_who_i_am_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '19f80bddfbbf20003f9d59304630eb02793d7f858c2c9727292c355e8088cbe4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('70596922-9f8f-5a45-924f-8ee12929e8fd', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('495426a4-0201-5cd5-b201-769e5feb11bb', 1), '19f80bddfbbf20003f9d59304630eb02793d7f858c2c9727292c355e8088cbe4',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/c96b0d122217b246080810cda0399b67b6fbded1b0cb2d1651c441c87a48dada.mp3', 1071, '2026-09-13 15:55:30.086913', '7f41324e8372edebdd895dcf41a924484c92f852e360efbfc231b6a077ab5456', 'validated', '{"audio_key":"c96b0d122217b246080810cda0399b67b6fbded1b0cb2d1651c441c87a48dada","entity_key":"lx_who_i_am_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7f41324e8372edebdd895dcf41a924484c92f852e360efbfc231b6a077ab5456","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/c96b0d122217b246080810cda0399b67b6fbded1b0cb2d1651c441c87a48dada.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_who_i_am_01 -> audio/generated/tr-TR/lexical/c96b0d122217b246080810cda0399b67b6fbded1b0cb2d1651c441c87a48dada.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5c0f63c1-5baa-5f5f-a059-6c9dbc89bc44', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_who_i_am_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '19f80bddfbbf20003f9d59304630eb02793d7f858c2c9727292c355e8088cbe4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('47b18c4c-77ff-5925-afeb-4d047ffc62b9', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5c0f63c1-5baa-5f5f-a059-6c9dbc89bc44', 1), '19f80bddfbbf20003f9d59304630eb02793d7f858c2c9727292c355e8088cbe4',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/c96b0d122217b246080810cda0399b67b6fbded1b0cb2d1651c441c87a48dada.mp3', 1071, '2026-09-13 15:55:30.086913', '7f41324e8372edebdd895dcf41a924484c92f852e360efbfc231b6a077ab5456', 'validated', '{"audio_key":"c96b0d122217b246080810cda0399b67b6fbded1b0cb2d1651c441c87a48dada","entity_key":"wf_who_i_am_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7f41324e8372edebdd895dcf41a924484c92f852e360efbfc231b6a077ab5456","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/c96b0d122217b246080810cda0399b67b6fbded1b0cb2d1651c441c87a48dada.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_time_and_plans_01 -> audio/generated/tr-TR/lexical/ca9a3c1e060b973f7618661b087b378d92c9a70aa1c0a933007f52edddac5c4c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f5d7f794-afdb-511f-bbb7-f50af178d39e', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_time_and_plans_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e6ce377bac3feb9c7461c0816c6081a23db628d8a96e200ef12b6ee58590d854'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dc2bb49f-69f8-50a6-aa4f-93dff4eeddb0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f5d7f794-afdb-511f-bbb7-f50af178d39e', 1), 'e6ce377bac3feb9c7461c0816c6081a23db628d8a96e200ef12b6ee58590d854',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/ca9a3c1e060b973f7618661b087b378d92c9a70aa1c0a933007f52edddac5c4c.mp3', 1071, '2026-09-13 15:55:30.124738', '41553f5e4e1bde9c819ecce5c86077a578f03957c8ee24d7c7c318e5e9291ad3', 'validated', '{"audio_key":"ca9a3c1e060b973f7618661b087b378d92c9a70aa1c0a933007f52edddac5c4c","entity_key":"lx_time_and_plans_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"41553f5e4e1bde9c819ecce5c86077a578f03957c8ee24d7c7c318e5e9291ad3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/ca9a3c1e060b973f7618661b087b378d92c9a70aa1c0a933007f52edddac5c4c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_time_and_plans_01 -> audio/generated/tr-TR/lexical/ca9a3c1e060b973f7618661b087b378d92c9a70aa1c0a933007f52edddac5c4c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('85cccdc9-21ae-5b3c-a4ac-efadbe05f8ba', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_time_and_plans_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e6ce377bac3feb9c7461c0816c6081a23db628d8a96e200ef12b6ee58590d854'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('59a8d9a7-175c-5bff-a355-1ae032416734', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('85cccdc9-21ae-5b3c-a4ac-efadbe05f8ba', 1), 'e6ce377bac3feb9c7461c0816c6081a23db628d8a96e200ef12b6ee58590d854',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/ca9a3c1e060b973f7618661b087b378d92c9a70aa1c0a933007f52edddac5c4c.mp3', 1071, '2026-09-13 15:55:30.124738', '41553f5e4e1bde9c819ecce5c86077a578f03957c8ee24d7c7c318e5e9291ad3', 'validated', '{"audio_key":"ca9a3c1e060b973f7618661b087b378d92c9a70aa1c0a933007f52edddac5c4c","entity_key":"wf_time_and_plans_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"41553f5e4e1bde9c819ecce5c86077a578f03957c8ee24d7c7c318e5e9291ad3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/ca9a3c1e060b973f7618661b087b378d92c9a70aa1c0a933007f52edddac5c4c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_getting_around_06 -> audio/generated/tr-TR/lexical/cba4a415db36111194a02a6e4d1621b0755ca69afbe105f95f159bff3e125db8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0bf2a064-0280-5b94-b7d9-60d133e8567c', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_getting_around_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ba480b87a27bafd23175194e53de366f64f6b8dcb0456bb2e987948b5e507385'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9e751f49-1cae-518e-aafe-9159315d7ca3', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0bf2a064-0280-5b94-b7d9-60d133e8567c', 1), 'ba480b87a27bafd23175194e53de366f64f6b8dcb0456bb2e987948b5e507385',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/cba4a415db36111194a02a6e4d1621b0755ca69afbe105f95f159bff3e125db8.mp3', 1018, '2026-09-13 15:55:31.104463', 'cc66b4ad3062ce0830aa7a6b3143c1b0d9e0236e2f1bab346311d8d28f760b12', 'validated', '{"audio_key":"cba4a415db36111194a02a6e4d1621b0755ca69afbe105f95f159bff3e125db8","entity_key":"lx_getting_around_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cc66b4ad3062ce0830aa7a6b3143c1b0d9e0236e2f1bab346311d8d28f760b12","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/cba4a415db36111194a02a6e4d1621b0755ca69afbe105f95f159bff3e125db8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_getting_around_06 -> audio/generated/tr-TR/lexical/cba4a415db36111194a02a6e4d1621b0755ca69afbe105f95f159bff3e125db8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d5a14deb-13e4-5d96-8c85-430eb595397b', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_getting_around_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ba480b87a27bafd23175194e53de366f64f6b8dcb0456bb2e987948b5e507385'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b9101337-6ebb-56c8-bc71-b77c8cce685d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d5a14deb-13e4-5d96-8c85-430eb595397b', 1), 'ba480b87a27bafd23175194e53de366f64f6b8dcb0456bb2e987948b5e507385',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/cba4a415db36111194a02a6e4d1621b0755ca69afbe105f95f159bff3e125db8.mp3', 1018, '2026-09-13 15:55:31.104463', 'cc66b4ad3062ce0830aa7a6b3143c1b0d9e0236e2f1bab346311d8d28f760b12', 'validated', '{"audio_key":"cba4a415db36111194a02a6e4d1621b0755ca69afbe105f95f159bff3e125db8","entity_key":"wf_getting_around_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cc66b4ad3062ce0830aa7a6b3143c1b0d9e0236e2f1bab346311d8d28f760b12","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/cba4a415db36111194a02a6e4d1621b0755ca69afbe105f95f159bff3e125db8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_this_and_these_03 -> audio/generated/tr-TR/lexical/ce1d03c9dbdbe9f70858d3342312660985f592873e6034fa8fced1200069b59f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9fa2edd0-d796-5ec4-bc9a-2676267c67a4', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_this_and_these_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '55f10450eadfaf186e162ff9655cdd4bec8ea935fb1fa6ee69b322f49975c0ee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c647a858-5613-5208-9c08-842277f7183d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9fa2edd0-d796-5ec4-bc9a-2676267c67a4', 1), '55f10450eadfaf186e162ff9655cdd4bec8ea935fb1fa6ee69b322f49975c0ee',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/ce1d03c9dbdbe9f70858d3342312660985f592873e6034fa8fced1200069b59f.mp3', 1201, '2026-09-13 15:17:36.597841', 'e3d6134a9755a9220904981f5868486a3d6a1882489e304f4e176307fd0a06b2', 'validated', '{"audio_key":"ce1d03c9dbdbe9f70858d3342312660985f592873e6034fa8fced1200069b59f","entity_key":"lx_this_and_these_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e3d6134a9755a9220904981f5868486a3d6a1882489e304f4e176307fd0a06b2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/ce1d03c9dbdbe9f70858d3342312660985f592873e6034fa8fced1200069b59f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_this_and_these_03 -> audio/generated/tr-TR/lexical/ce1d03c9dbdbe9f70858d3342312660985f592873e6034fa8fced1200069b59f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1fe02d8a-2539-5000-a74a-319e672a44c1', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_this_and_these_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '55f10450eadfaf186e162ff9655cdd4bec8ea935fb1fa6ee69b322f49975c0ee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dc55b203-df0a-5272-8c8c-ceb2f03f1988', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1fe02d8a-2539-5000-a74a-319e672a44c1', 1), '55f10450eadfaf186e162ff9655cdd4bec8ea935fb1fa6ee69b322f49975c0ee',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/ce1d03c9dbdbe9f70858d3342312660985f592873e6034fa8fced1200069b59f.mp3', 1201, '2026-09-13 15:17:36.597841', 'e3d6134a9755a9220904981f5868486a3d6a1882489e304f4e176307fd0a06b2', 'validated', '{"audio_key":"ce1d03c9dbdbe9f70858d3342312660985f592873e6034fa8fced1200069b59f","entity_key":"wf_this_and_these_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e3d6134a9755a9220904981f5868486a3d6a1882489e304f4e176307fd0a06b2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/ce1d03c9dbdbe9f70858d3342312660985f592873e6034fa8fced1200069b59f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_this_and_these_06 -> audio/generated/tr-TR/lexical/ce33f0831181cdc29a322406173fcf924273b21db3fac6d7f1d061ec3616b7ac.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d74291ed-5497-5604-aaee-b9ce805708f1', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_this_and_these_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '855fe02c13b87e2a15b8b25e837c008260b891574c427033df1df54f409768f3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3b6ac2a8-35a6-5afb-973e-aba02e7e3f2e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d74291ed-5497-5604-aaee-b9ce805708f1', 1), '855fe02c13b87e2a15b8b25e837c008260b891574c427033df1df54f409768f3',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/ce33f0831181cdc29a322406173fcf924273b21db3fac6d7f1d061ec3616b7ac.mp3', 1280, '2026-09-13 15:55:31.159657', '68dd70dfc0eeb9086bae3431f9ca355cca45888810c41862d81588e32bf71e76', 'validated', '{"audio_key":"ce33f0831181cdc29a322406173fcf924273b21db3fac6d7f1d061ec3616b7ac","entity_key":"lx_this_and_these_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"68dd70dfc0eeb9086bae3431f9ca355cca45888810c41862d81588e32bf71e76","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/ce33f0831181cdc29a322406173fcf924273b21db3fac6d7f1d061ec3616b7ac.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_this_and_these_06 -> audio/generated/tr-TR/lexical/ce33f0831181cdc29a322406173fcf924273b21db3fac6d7f1d061ec3616b7ac.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0aa3ddd3-ad8e-57d2-9f54-a74eb00f73d5', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_this_and_these_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '855fe02c13b87e2a15b8b25e837c008260b891574c427033df1df54f409768f3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('048672d4-0133-5278-8d50-e7e0e8ce64e5', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0aa3ddd3-ad8e-57d2-9f54-a74eb00f73d5', 1), '855fe02c13b87e2a15b8b25e837c008260b891574c427033df1df54f409768f3',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/ce33f0831181cdc29a322406173fcf924273b21db3fac6d7f1d061ec3616b7ac.mp3', 1280, '2026-09-13 15:55:31.159657', '68dd70dfc0eeb9086bae3431f9ca355cca45888810c41862d81588e32bf71e76', 'validated', '{"audio_key":"ce33f0831181cdc29a322406173fcf924273b21db3fac6d7f1d061ec3616b7ac","entity_key":"wf_this_and_these_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"68dd70dfc0eeb9086bae3431f9ca355cca45888810c41862d81588e32bf71e76","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/ce33f0831181cdc29a322406173fcf924273b21db3fac6d7f1d061ec3616b7ac.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_at_home_02 -> audio/generated/tr-TR/lexical/d0e9392d57407a8f9d58af1cd96f53f5c527fa4e930b22f636614e702f19ee5b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0a3bb9f7-1999-5e9d-be48-dc4902df1242', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_at_home_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '73084ce0babe20e37b1e09d91b4f41037ff14a322171d6b843cafe2d33d5c8b2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('582903dc-2d31-5bac-90f1-1a7d653d3a6d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0a3bb9f7-1999-5e9d-be48-dc4902df1242', 1), '73084ce0babe20e37b1e09d91b4f41037ff14a322171d6b843cafe2d33d5c8b2',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/d0e9392d57407a8f9d58af1cd96f53f5c527fa4e930b22f636614e702f19ee5b.mp3', 966, '2026-09-13 15:55:32.154945', '0b1357bde3dc684fa495069aa3c55eceba3c9ac22de20a7423ee835ec94bfadf', 'validated', '{"audio_key":"d0e9392d57407a8f9d58af1cd96f53f5c527fa4e930b22f636614e702f19ee5b","entity_key":"lx_at_home_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0b1357bde3dc684fa495069aa3c55eceba3c9ac22de20a7423ee835ec94bfadf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/d0e9392d57407a8f9d58af1cd96f53f5c527fa4e930b22f636614e702f19ee5b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_at_home_02 -> audio/generated/tr-TR/lexical/d0e9392d57407a8f9d58af1cd96f53f5c527fa4e930b22f636614e702f19ee5b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5f06cb6a-0e48-5b4c-97aa-d0dbe97ed622', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_at_home_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '73084ce0babe20e37b1e09d91b4f41037ff14a322171d6b843cafe2d33d5c8b2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('caa2b7e3-205a-5030-baa7-4e5eed69fac3', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5f06cb6a-0e48-5b4c-97aa-d0dbe97ed622', 1), '73084ce0babe20e37b1e09d91b4f41037ff14a322171d6b843cafe2d33d5c8b2',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/d0e9392d57407a8f9d58af1cd96f53f5c527fa4e930b22f636614e702f19ee5b.mp3', 966, '2026-09-13 15:55:32.154945', '0b1357bde3dc684fa495069aa3c55eceba3c9ac22de20a7423ee835ec94bfadf', 'validated', '{"audio_key":"d0e9392d57407a8f9d58af1cd96f53f5c527fa4e930b22f636614e702f19ee5b","entity_key":"wf_at_home_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0b1357bde3dc684fa495069aa3c55eceba3c9ac22de20a7423ee835ec94bfadf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/d0e9392d57407a8f9d58af1cd96f53f5c527fa4e930b22f636614e702f19ee5b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_at_the_cafe_02 -> audio/generated/tr-TR/lexical/d2ca8a9c8539fd5487abe1a62d5bfa0807a3dd0d83a41ee97492c852ffa570b2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('bb5b08cd-dc3c-5207-aa83-51c0ff8b5ebd', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_at_the_cafe_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0a64ce10853f25cb3dc3f7d498f62d72b406be37ba8caf5aa7671414d9696049'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('34019e7c-51eb-5e50-a852-5f1019d26c74', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('bb5b08cd-dc3c-5207-aa83-51c0ff8b5ebd', 1), '0a64ce10853f25cb3dc3f7d498f62d72b406be37ba8caf5aa7671414d9696049',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/d2ca8a9c8539fd5487abe1a62d5bfa0807a3dd0d83a41ee97492c852ffa570b2.mp3', 914, '2026-09-13 15:55:32.178690', '1dff3590eb95dc4552c8217dcf1e5891c61c2e049af45911ca04d3d3592266de', 'validated', '{"audio_key":"d2ca8a9c8539fd5487abe1a62d5bfa0807a3dd0d83a41ee97492c852ffa570b2","entity_key":"lx_at_the_cafe_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1dff3590eb95dc4552c8217dcf1e5891c61c2e049af45911ca04d3d3592266de","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/d2ca8a9c8539fd5487abe1a62d5bfa0807a3dd0d83a41ee97492c852ffa570b2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_at_the_cafe_02 -> audio/generated/tr-TR/lexical/d2ca8a9c8539fd5487abe1a62d5bfa0807a3dd0d83a41ee97492c852ffa570b2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b9f5f9a6-a41a-51e8-b4a2-c52d510fe50b', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_at_the_cafe_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0a64ce10853f25cb3dc3f7d498f62d72b406be37ba8caf5aa7671414d9696049'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8c01584d-ef6a-50e8-8cdf-d7d5192bbf31', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b9f5f9a6-a41a-51e8-b4a2-c52d510fe50b', 1), '0a64ce10853f25cb3dc3f7d498f62d72b406be37ba8caf5aa7671414d9696049',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/d2ca8a9c8539fd5487abe1a62d5bfa0807a3dd0d83a41ee97492c852ffa570b2.mp3', 914, '2026-09-13 15:55:32.178690', '1dff3590eb95dc4552c8217dcf1e5891c61c2e049af45911ca04d3d3592266de', 'validated', '{"audio_key":"d2ca8a9c8539fd5487abe1a62d5bfa0807a3dd0d83a41ee97492c852ffa570b2","entity_key":"wf_at_the_cafe_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1dff3590eb95dc4552c8217dcf1e5891c61c2e049af45911ca04d3d3592266de","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/d2ca8a9c8539fd5487abe1a62d5bfa0807a3dd0d83a41ee97492c852ffa570b2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_my_family_02 -> audio/generated/tr-TR/lexical/db03d87aba890af731bd35acd21fadb189d9d874c7a2399f3cbdd8d8508cce27.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('88788731-6c96-5e60-9420-1a0aec67d834', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_my_family_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e75a6cd43a16c2f31d1a3c17700af64d3658a380c49d65b20cc75b1f7c0e001b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('03d085da-1856-537a-9dfa-c91e3d0e1276', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('88788731-6c96-5e60-9420-1a0aec67d834', 1), 'e75a6cd43a16c2f31d1a3c17700af64d3658a380c49d65b20cc75b1f7c0e001b',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/db03d87aba890af731bd35acd21fadb189d9d874c7a2399f3cbdd8d8508cce27.mp3', 966, '2026-09-13 15:55:33.189713', '585b834914440d9e6db8f5195ce604f00736e5af4ac313fcc38b2aa7ed1c38a1', 'validated', '{"audio_key":"db03d87aba890af731bd35acd21fadb189d9d874c7a2399f3cbdd8d8508cce27","entity_key":"lx_my_family_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"585b834914440d9e6db8f5195ce604f00736e5af4ac313fcc38b2aa7ed1c38a1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/db03d87aba890af731bd35acd21fadb189d9d874c7a2399f3cbdd8d8508cce27.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_my_family_02 -> audio/generated/tr-TR/lexical/db03d87aba890af731bd35acd21fadb189d9d874c7a2399f3cbdd8d8508cce27.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('369a0808-67dd-55bd-adfb-918ef69ca640', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_my_family_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e75a6cd43a16c2f31d1a3c17700af64d3658a380c49d65b20cc75b1f7c0e001b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('91f5c927-4c07-5bc3-9f92-9f5ad7336431', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('369a0808-67dd-55bd-adfb-918ef69ca640', 1), 'e75a6cd43a16c2f31d1a3c17700af64d3658a380c49d65b20cc75b1f7c0e001b',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/db03d87aba890af731bd35acd21fadb189d9d874c7a2399f3cbdd8d8508cce27.mp3', 966, '2026-09-13 15:55:33.189713', '585b834914440d9e6db8f5195ce604f00736e5af4ac313fcc38b2aa7ed1c38a1', 'validated', '{"audio_key":"db03d87aba890af731bd35acd21fadb189d9d874c7a2399f3cbdd8d8508cce27","entity_key":"wf_my_family_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"585b834914440d9e6db8f5195ce604f00736e5af4ac313fcc38b2aa7ed1c38a1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/db03d87aba890af731bd35acd21fadb189d9d874c7a2399f3cbdd8d8508cce27.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_who_i_am_03 -> audio/generated/tr-TR/lexical/dcbc519c3301bdc81d30c5e28de348823787e8e780c5dc78e74e5c04e8941e7d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('26e04620-eb53-5a6c-a34f-e462961ca5be', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_who_i_am_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b46311df7e94caf8fe81b953ee3e9642cbfe6a37164297021b13401b469e234a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7542cd21-133e-5a45-b374-059970245ef0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('26e04620-eb53-5a6c-a34f-e462961ca5be', 1), 'b46311df7e94caf8fe81b953ee3e9642cbfe6a37164297021b13401b469e234a',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/dcbc519c3301bdc81d30c5e28de348823787e8e780c5dc78e74e5c04e8941e7d.mp3', 1280, '2026-09-13 15:55:33.313049', '78f856a3727040681601dd4d6ae358e371062551f55a79ad069208f2a766a2f6', 'validated', '{"audio_key":"dcbc519c3301bdc81d30c5e28de348823787e8e780c5dc78e74e5c04e8941e7d","entity_key":"lx_who_i_am_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"78f856a3727040681601dd4d6ae358e371062551f55a79ad069208f2a766a2f6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/dcbc519c3301bdc81d30c5e28de348823787e8e780c5dc78e74e5c04e8941e7d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_who_i_am_03 -> audio/generated/tr-TR/lexical/dcbc519c3301bdc81d30c5e28de348823787e8e780c5dc78e74e5c04e8941e7d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ad2730bf-6a4d-5d96-b003-d3664b90f41b', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_who_i_am_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b46311df7e94caf8fe81b953ee3e9642cbfe6a37164297021b13401b469e234a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('21dc1d9e-2d75-5566-af95-057d966921e3', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ad2730bf-6a4d-5d96-b003-d3664b90f41b', 1), 'b46311df7e94caf8fe81b953ee3e9642cbfe6a37164297021b13401b469e234a',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/dcbc519c3301bdc81d30c5e28de348823787e8e780c5dc78e74e5c04e8941e7d.mp3', 1280, '2026-09-13 15:55:33.313049', '78f856a3727040681601dd4d6ae358e371062551f55a79ad069208f2a766a2f6', 'validated', '{"audio_key":"dcbc519c3301bdc81d30c5e28de348823787e8e780c5dc78e74e5c04e8941e7d","entity_key":"wf_who_i_am_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"78f856a3727040681601dd4d6ae358e371062551f55a79ad069208f2a766a2f6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/dcbc519c3301bdc81d30c5e28de348823787e8e780c5dc78e74e5c04e8941e7d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_shopping_basics_01 -> audio/generated/tr-TR/lexical/dcbd33ba6341b6a44128a9dfd420cd76b05a4acb8093c636f061cf4c3e753c77.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6cb446e9-a4a3-587e-a17b-c34892086887', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_shopping_basics_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6955dafb3de4534055ddf814bf75cc30239e2ce5b999c2586803957305dc1622'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a493bb1d-7bc5-5981-a3d6-75014b6f743a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6cb446e9-a4a3-587e-a17b-c34892086887', 1), '6955dafb3de4534055ddf814bf75cc30239e2ce5b999c2586803957305dc1622',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/dcbd33ba6341b6a44128a9dfd420cd76b05a4acb8093c636f061cf4c3e753c77.mp3', 1071, '2026-09-13 15:55:34.268118', 'ff0b5184a531eb224aafd4d25af1d8e1caa8b38b5b9e86faa30723ffdf549cfb', 'validated', '{"audio_key":"dcbd33ba6341b6a44128a9dfd420cd76b05a4acb8093c636f061cf4c3e753c77","entity_key":"lx_shopping_basics_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ff0b5184a531eb224aafd4d25af1d8e1caa8b38b5b9e86faa30723ffdf549cfb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/dcbd33ba6341b6a44128a9dfd420cd76b05a4acb8093c636f061cf4c3e753c77.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_shopping_basics_01 -> audio/generated/tr-TR/lexical/dcbd33ba6341b6a44128a9dfd420cd76b05a4acb8093c636f061cf4c3e753c77.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a447c43e-39a6-5d6f-957d-cb6b77e100a0', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_shopping_basics_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6955dafb3de4534055ddf814bf75cc30239e2ce5b999c2586803957305dc1622'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8bef79f6-6fa8-5660-b3f9-9ff6df173720', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a447c43e-39a6-5d6f-957d-cb6b77e100a0', 1), '6955dafb3de4534055ddf814bf75cc30239e2ce5b999c2586803957305dc1622',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/dcbd33ba6341b6a44128a9dfd420cd76b05a4acb8093c636f061cf4c3e753c77.mp3', 1071, '2026-09-13 15:55:34.268118', 'ff0b5184a531eb224aafd4d25af1d8e1caa8b38b5b9e86faa30723ffdf549cfb', 'validated', '{"audio_key":"dcbd33ba6341b6a44128a9dfd420cd76b05a4acb8093c636f061cf4c3e753c77","entity_key":"wf_shopping_basics_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ff0b5184a531eb224aafd4d25af1d8e1caa8b38b5b9e86faa30723ffdf549cfb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/dcbd33ba6341b6a44128a9dfd420cd76b05a4acb8093c636f061cf4c3e753c77.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_time_and_plans_05 -> audio/generated/tr-TR/lexical/e02b0802e2de6b9f7e71484d738ccf8ba79eec88b3882a466071a21500f1e623.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('4740db72-9373-58c9-8029-018a2c364276', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_time_and_plans_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9b3f5edee5a5d0dcf0cf07bff1d9dd9c0e3a96f506a3ed5bc95932debfb2ee27'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0c8c493c-abc8-5128-9644-9205f4694253', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('4740db72-9373-58c9-8029-018a2c364276', 1), '9b3f5edee5a5d0dcf0cf07bff1d9dd9c0e3a96f506a3ed5bc95932debfb2ee27',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/e02b0802e2de6b9f7e71484d738ccf8ba79eec88b3882a466071a21500f1e623.mp3', 1097, '2026-09-13 15:55:34.383900', '966d5b5f7b41fc7a502d8ce0e2b7b89975a3683cd6011dee326fbcc39e80e266', 'validated', '{"audio_key":"e02b0802e2de6b9f7e71484d738ccf8ba79eec88b3882a466071a21500f1e623","entity_key":"lx_time_and_plans_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"966d5b5f7b41fc7a502d8ce0e2b7b89975a3683cd6011dee326fbcc39e80e266","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/e02b0802e2de6b9f7e71484d738ccf8ba79eec88b3882a466071a21500f1e623.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_time_and_plans_05 -> audio/generated/tr-TR/lexical/e02b0802e2de6b9f7e71484d738ccf8ba79eec88b3882a466071a21500f1e623.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('808bb92e-51ed-5b5f-a723-050383a44f57', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_time_and_plans_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9b3f5edee5a5d0dcf0cf07bff1d9dd9c0e3a96f506a3ed5bc95932debfb2ee27'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c1b46d01-f0e3-542f-a49b-80b39b062216', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('808bb92e-51ed-5b5f-a723-050383a44f57', 1), '9b3f5edee5a5d0dcf0cf07bff1d9dd9c0e3a96f506a3ed5bc95932debfb2ee27',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/e02b0802e2de6b9f7e71484d738ccf8ba79eec88b3882a466071a21500f1e623.mp3', 1097, '2026-09-13 15:55:34.383900', '966d5b5f7b41fc7a502d8ce0e2b7b89975a3683cd6011dee326fbcc39e80e266', 'validated', '{"audio_key":"e02b0802e2de6b9f7e71484d738ccf8ba79eec88b3882a466071a21500f1e623","entity_key":"wf_time_and_plans_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"966d5b5f7b41fc7a502d8ce0e2b7b89975a3683cd6011dee326fbcc39e80e266","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/e02b0802e2de6b9f7e71484d738ccf8ba79eec88b3882a466071a21500f1e623.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_my_family_04 -> audio/generated/tr-TR/lexical/e1c5006e83efcb0620bb66fe7ed73c6a8aecfd19ffa85a54dd3ea53f0995ed1d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6ec049a8-69fb-563c-a48d-538286a037c3', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_my_family_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '02f4811e4df83dbe2e90ac4b1a957ca0929b56e5dbe3dd025924475257092e55'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('932a9800-96ac-5d26-8b3c-1cb8d34d09ad', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6ec049a8-69fb-563c-a48d-538286a037c3', 1), '02f4811e4df83dbe2e90ac4b1a957ca0929b56e5dbe3dd025924475257092e55',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/e1c5006e83efcb0620bb66fe7ed73c6a8aecfd19ffa85a54dd3ea53f0995ed1d.mp3', 1018, '2026-09-13 15:55:35.338909', 'a27795cff27b48c6eee72db68b3d4aa4a9e2e4283e8dd8be9d80fab62c2d621c', 'validated', '{"audio_key":"e1c5006e83efcb0620bb66fe7ed73c6a8aecfd19ffa85a54dd3ea53f0995ed1d","entity_key":"lx_my_family_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a27795cff27b48c6eee72db68b3d4aa4a9e2e4283e8dd8be9d80fab62c2d621c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/e1c5006e83efcb0620bb66fe7ed73c6a8aecfd19ffa85a54dd3ea53f0995ed1d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_my_family_04 -> audio/generated/tr-TR/lexical/e1c5006e83efcb0620bb66fe7ed73c6a8aecfd19ffa85a54dd3ea53f0995ed1d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('76db047e-b955-5053-be3f-4040fa2a4358', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_my_family_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '02f4811e4df83dbe2e90ac4b1a957ca0929b56e5dbe3dd025924475257092e55'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5c4a8a10-aef1-5b70-bb5e-c38811726631', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('76db047e-b955-5053-be3f-4040fa2a4358', 1), '02f4811e4df83dbe2e90ac4b1a957ca0929b56e5dbe3dd025924475257092e55',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/e1c5006e83efcb0620bb66fe7ed73c6a8aecfd19ffa85a54dd3ea53f0995ed1d.mp3', 1018, '2026-09-13 15:55:35.338909', 'a27795cff27b48c6eee72db68b3d4aa4a9e2e4283e8dd8be9d80fab62c2d621c', 'validated', '{"audio_key":"e1c5006e83efcb0620bb66fe7ed73c6a8aecfd19ffa85a54dd3ea53f0995ed1d","entity_key":"wf_my_family_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a27795cff27b48c6eee72db68b3d4aa4a9e2e4283e8dd8be9d80fab62c2d621c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/e1c5006e83efcb0620bb66fe7ed73c6a8aecfd19ffa85a54dd3ea53f0995ed1d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_a1_first_day_capstone_03 -> audio/generated/tr-TR/lexical/e5ec88277380e70e457fd75fecfedca49592709b5f4c77186fa6005fc655408f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0812918f-e866-538e-8f42-ef76d79cb233', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_a1_first_day_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ee16fc387e775553fa27953f7f906d82f59b3b504991585bc170cf801d6f2a35'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d05545c9-c583-571d-99f4-5d7b27ba09c1', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0812918f-e866-538e-8f42-ef76d79cb233', 1), 'ee16fc387e775553fa27953f7f906d82f59b3b504991585bc170cf801d6f2a35',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/e5ec88277380e70e457fd75fecfedca49592709b5f4c77186fa6005fc655408f.mp3', 966, '2026-09-13 15:55:35.451339', '21f251cc6b5ad7753a652f317cde677850364183ab6d3dddaa90710139e41fa3', 'validated', '{"audio_key":"e5ec88277380e70e457fd75fecfedca49592709b5f4c77186fa6005fc655408f","entity_key":"lx_a1_first_day_capstone_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"21f251cc6b5ad7753a652f317cde677850364183ab6d3dddaa90710139e41fa3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/e5ec88277380e70e457fd75fecfedca49592709b5f4c77186fa6005fc655408f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_a1_first_day_capstone_03 -> audio/generated/tr-TR/lexical/e5ec88277380e70e457fd75fecfedca49592709b5f4c77186fa6005fc655408f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('68828de1-bda6-55f2-8cc9-cc733e8a9562', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_a1_first_day_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ee16fc387e775553fa27953f7f906d82f59b3b504991585bc170cf801d6f2a35'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7760b638-f745-5ef6-bead-b013355b48c6', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('68828de1-bda6-55f2-8cc9-cc733e8a9562', 1), 'ee16fc387e775553fa27953f7f906d82f59b3b504991585bc170cf801d6f2a35',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/e5ec88277380e70e457fd75fecfedca49592709b5f4c77186fa6005fc655408f.mp3', 966, '2026-09-13 15:55:35.451339', '21f251cc6b5ad7753a652f317cde677850364183ab6d3dddaa90710139e41fa3', 'validated', '{"audio_key":"e5ec88277380e70e457fd75fecfedca49592709b5f4c77186fa6005fc655408f","entity_key":"wf_a1_first_day_capstone_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"21f251cc6b5ad7753a652f317cde677850364183ab6d3dddaa90710139e41fa3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/e5ec88277380e70e457fd75fecfedca49592709b5f4c77186fa6005fc655408f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_this_and_these_02 -> audio/generated/tr-TR/lexical/e73312e157d8178bf0bb6756ffaf583c6b57e1f2a3a23f9a264520a0acfba196.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6075ca8e-f653-546c-8ef8-cea7b757062a', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_this_and_these_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b7367edaa7bb675764606b5a9343e09ee90242ce419eabfca14c7c7325e550f6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6adda0d9-45f5-5251-8781-65b3cef2d8e4', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6075ca8e-f653-546c-8ef8-cea7b757062a', 1), 'b7367edaa7bb675764606b5a9343e09ee90242ce419eabfca14c7c7325e550f6',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/e73312e157d8178bf0bb6756ffaf583c6b57e1f2a3a23f9a264520a0acfba196.mp3', 1253, '2026-09-13 15:17:38.664584', 'f303b4ceb07cc4ca1151aad64d44fead3352f363d0ec92f61d9197f4bea72f35', 'validated', '{"audio_key":"e73312e157d8178bf0bb6756ffaf583c6b57e1f2a3a23f9a264520a0acfba196","entity_key":"lx_this_and_these_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f303b4ceb07cc4ca1151aad64d44fead3352f363d0ec92f61d9197f4bea72f35","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/e73312e157d8178bf0bb6756ffaf583c6b57e1f2a3a23f9a264520a0acfba196.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_this_and_these_02 -> audio/generated/tr-TR/lexical/e73312e157d8178bf0bb6756ffaf583c6b57e1f2a3a23f9a264520a0acfba196.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f50fd4ab-be35-513f-965c-fe1573754b06', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_this_and_these_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b7367edaa7bb675764606b5a9343e09ee90242ce419eabfca14c7c7325e550f6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('341479c3-daa4-5f54-be3c-74b8f99fbf9b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f50fd4ab-be35-513f-965c-fe1573754b06', 1), 'b7367edaa7bb675764606b5a9343e09ee90242ce419eabfca14c7c7325e550f6',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/e73312e157d8178bf0bb6756ffaf583c6b57e1f2a3a23f9a264520a0acfba196.mp3', 1253, '2026-09-13 15:17:38.664584', 'f303b4ceb07cc4ca1151aad64d44fead3352f363d0ec92f61d9197f4bea72f35', 'validated', '{"audio_key":"e73312e157d8178bf0bb6756ffaf583c6b57e1f2a3a23f9a264520a0acfba196","entity_key":"wf_this_and_these_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f303b4ceb07cc4ca1151aad64d44fead3352f363d0ec92f61d9197f4bea72f35","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/e73312e157d8178bf0bb6756ffaf583c6b57e1f2a3a23f9a264520a0acfba196.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_my_family_06 -> audio/generated/tr-TR/lexical/e7c8bdb489eedc75c2ddf66435586e442c15893a68e17bd0650ec93d9ebf24dc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('24089465-c3c7-511b-b738-0cea3a0718da', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_my_family_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c86872dc97dd35aabbbd845130a5fcd6262d80a5c0da34e11e6411efd1e837e9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2a3e732f-9579-5040-bc3e-7d8f1e5ca49b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('24089465-c3c7-511b-b738-0cea3a0718da', 1), 'c86872dc97dd35aabbbd845130a5fcd6262d80a5c0da34e11e6411efd1e837e9',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/e7c8bdb489eedc75c2ddf66435586e442c15893a68e17bd0650ec93d9ebf24dc.mp3', 862, '2026-09-13 15:55:36.356137', '5abd3c6455a5a3d93250f4ada6cf5e421b81dc9686cc11395d31f46297a7b915', 'validated', '{"audio_key":"e7c8bdb489eedc75c2ddf66435586e442c15893a68e17bd0650ec93d9ebf24dc","entity_key":"lx_my_family_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5abd3c6455a5a3d93250f4ada6cf5e421b81dc9686cc11395d31f46297a7b915","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/e7c8bdb489eedc75c2ddf66435586e442c15893a68e17bd0650ec93d9ebf24dc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_my_family_06 -> audio/generated/tr-TR/lexical/e7c8bdb489eedc75c2ddf66435586e442c15893a68e17bd0650ec93d9ebf24dc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('217df495-a0e6-588e-9064-6d886c2fe3c4', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_my_family_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c86872dc97dd35aabbbd845130a5fcd6262d80a5c0da34e11e6411efd1e837e9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eddb494b-a5e6-5de7-82f3-727137500577', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('217df495-a0e6-588e-9064-6d886c2fe3c4', 1), 'c86872dc97dd35aabbbd845130a5fcd6262d80a5c0da34e11e6411efd1e837e9',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/e7c8bdb489eedc75c2ddf66435586e442c15893a68e17bd0650ec93d9ebf24dc.mp3', 862, '2026-09-13 15:55:36.356137', '5abd3c6455a5a3d93250f4ada6cf5e421b81dc9686cc11395d31f46297a7b915', 'validated', '{"audio_key":"e7c8bdb489eedc75c2ddf66435586e442c15893a68e17bd0650ec93d9ebf24dc","entity_key":"wf_my_family_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5abd3c6455a5a3d93250f4ada6cf5e421b81dc9686cc11395d31f46297a7b915","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/e7c8bdb489eedc75c2ddf66435586e442c15893a68e17bd0650ec93d9ebf24dc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_shopping_basics_04 -> audio/generated/tr-TR/lexical/e8c248e5450d555a739ab699b5f8197ef18e8f4025fd0620bcbfaddab64f4142.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d911bb73-3041-5587-953c-91633bbba0b7', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_shopping_basics_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a3ed92efa59a17c0169e151098e479b4349d726704cafab4a8edfd62e53073f9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fcec5f4d-d64e-57be-9f8d-b19206e7287b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d911bb73-3041-5587-953c-91633bbba0b7', 1), 'a3ed92efa59a17c0169e151098e479b4349d726704cafab4a8edfd62e53073f9',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/e8c248e5450d555a739ab699b5f8197ef18e8f4025fd0620bcbfaddab64f4142.mp3', 1071, '2026-09-13 15:55:36.545744', '4b9a49055b4cb57ff9d9342d779318bfe64d91f722a938a37830a8115729330d', 'validated', '{"audio_key":"e8c248e5450d555a739ab699b5f8197ef18e8f4025fd0620bcbfaddab64f4142","entity_key":"lx_shopping_basics_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4b9a49055b4cb57ff9d9342d779318bfe64d91f722a938a37830a8115729330d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/e8c248e5450d555a739ab699b5f8197ef18e8f4025fd0620bcbfaddab64f4142.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_shopping_basics_04 -> audio/generated/tr-TR/lexical/e8c248e5450d555a739ab699b5f8197ef18e8f4025fd0620bcbfaddab64f4142.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c8ead54e-2b35-51a4-8a4b-7d94eefa52c3', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_shopping_basics_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a3ed92efa59a17c0169e151098e479b4349d726704cafab4a8edfd62e53073f9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a5fab41f-a904-52be-86ca-2f2e7a024588', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c8ead54e-2b35-51a4-8a4b-7d94eefa52c3', 1), 'a3ed92efa59a17c0169e151098e479b4349d726704cafab4a8edfd62e53073f9',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/e8c248e5450d555a739ab699b5f8197ef18e8f4025fd0620bcbfaddab64f4142.mp3', 1071, '2026-09-13 15:55:36.545744', '4b9a49055b4cb57ff9d9342d779318bfe64d91f722a938a37830a8115729330d', 'validated', '{"audio_key":"e8c248e5450d555a739ab699b5f8197ef18e8f4025fd0620bcbfaddab64f4142","entity_key":"wf_shopping_basics_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4b9a49055b4cb57ff9d9342d779318bfe64d91f722a938a37830a8115729330d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/e8c248e5450d555a739ab699b5f8197ef18e8f4025fd0620bcbfaddab64f4142.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_getting_around_02 -> audio/generated/tr-TR/lexical/f0cea59886c647ae342a96a063594750c4839b9b3ebf7f1ffaf6b7da9f2fea94.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7d89150f-1ec5-5bf7-ac24-3e41dadb9bf7', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_getting_around_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b079099f43e888e356a2259dfd64e464035d174ec93844c2c7d8edb990a54004'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1676a957-7bfa-57cc-846d-da603176b163', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7d89150f-1ec5-5bf7-ac24-3e41dadb9bf7', 1), 'b079099f43e888e356a2259dfd64e464035d174ec93844c2c7d8edb990a54004',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/f0cea59886c647ae342a96a063594750c4839b9b3ebf7f1ffaf6b7da9f2fea94.mp3', 1018, '2026-09-13 15:55:37.395444', 'c710398b20e8822ec11f7ff155b51332f2aa692ad72f3b55830cc0abfed9f5a7', 'validated', '{"audio_key":"f0cea59886c647ae342a96a063594750c4839b9b3ebf7f1ffaf6b7da9f2fea94","entity_key":"lx_getting_around_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c710398b20e8822ec11f7ff155b51332f2aa692ad72f3b55830cc0abfed9f5a7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/f0cea59886c647ae342a96a063594750c4839b9b3ebf7f1ffaf6b7da9f2fea94.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_getting_around_02 -> audio/generated/tr-TR/lexical/f0cea59886c647ae342a96a063594750c4839b9b3ebf7f1ffaf6b7da9f2fea94.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6c587a22-a5c8-56a5-8543-f3f743384a5a', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_getting_around_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b079099f43e888e356a2259dfd64e464035d174ec93844c2c7d8edb990a54004'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c47f3a48-15e8-511e-abea-d107862b268f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6c587a22-a5c8-56a5-8543-f3f743384a5a', 1), 'b079099f43e888e356a2259dfd64e464035d174ec93844c2c7d8edb990a54004',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/f0cea59886c647ae342a96a063594750c4839b9b3ebf7f1ffaf6b7da9f2fea94.mp3', 1018, '2026-09-13 15:55:37.395444', 'c710398b20e8822ec11f7ff155b51332f2aa692ad72f3b55830cc0abfed9f5a7', 'validated', '{"audio_key":"f0cea59886c647ae342a96a063594750c4839b9b3ebf7f1ffaf6b7da9f2fea94","entity_key":"wf_getting_around_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c710398b20e8822ec11f7ff155b51332f2aa692ad72f3b55830cc0abfed9f5a7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/f0cea59886c647ae342a96a063594750c4839b9b3ebf7f1ffaf6b7da9f2fea94.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_a1_first_day_capstone_01 -> audio/generated/tr-TR/lexical/f5aa9e3707e263061b764695ae61fb2a7ea9a0d362026fe4a9a5c3242321ff9c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3ceebd52-0557-58e0-8cf9-bd82e306ed7a', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_a1_first_day_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5b09d3fe743098b8a621ceae4098c0fc52bd712e526c474fb02a28a375654c65'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('47b419f1-9599-5168-8144-dcca5784a355', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3ceebd52-0557-58e0-8cf9-bd82e306ed7a', 1), '5b09d3fe743098b8a621ceae4098c0fc52bd712e526c474fb02a28a375654c65',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/f5aa9e3707e263061b764695ae61fb2a7ea9a0d362026fe4a9a5c3242321ff9c.mp3', 1071, '2026-09-13 15:55:37.696066', 'd06244427dc86d65eb26909dfef0007ec94a79648e46519c14f3acac570a7e40', 'validated', '{"audio_key":"f5aa9e3707e263061b764695ae61fb2a7ea9a0d362026fe4a9a5c3242321ff9c","entity_key":"lx_a1_first_day_capstone_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d06244427dc86d65eb26909dfef0007ec94a79648e46519c14f3acac570a7e40","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/f5aa9e3707e263061b764695ae61fb2a7ea9a0d362026fe4a9a5c3242321ff9c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_a1_first_day_capstone_01 -> audio/generated/tr-TR/lexical/f5aa9e3707e263061b764695ae61fb2a7ea9a0d362026fe4a9a5c3242321ff9c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('919c3352-d780-5ccd-8d2d-1ef83f981cc1', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_a1_first_day_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5b09d3fe743098b8a621ceae4098c0fc52bd712e526c474fb02a28a375654c65'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ef9fe826-42bb-50fc-81e7-6e395c023089', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('919c3352-d780-5ccd-8d2d-1ef83f981cc1', 1), '5b09d3fe743098b8a621ceae4098c0fc52bd712e526c474fb02a28a375654c65',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/f5aa9e3707e263061b764695ae61fb2a7ea9a0d362026fe4a9a5c3242321ff9c.mp3', 1071, '2026-09-13 15:55:37.696066', 'd06244427dc86d65eb26909dfef0007ec94a79648e46519c14f3acac570a7e40', 'validated', '{"audio_key":"f5aa9e3707e263061b764695ae61fb2a7ea9a0d362026fe4a9a5c3242321ff9c","entity_key":"wf_a1_first_day_capstone_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d06244427dc86d65eb26909dfef0007ec94a79648e46519c14f3acac570a7e40","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/f5aa9e3707e263061b764695ae61fb2a7ea9a0d362026fe4a9a5c3242321ff9c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_time_and_plans_02 -> audio/generated/tr-TR/lexical/f5aa9e3707e263061b764695ae61fb2a7ea9a0d362026fe4a9a5c3242321ff9c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3ceebd52-0557-58e0-8cf9-bd82e306ed7a', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_time_and_plans_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5b09d3fe743098b8a621ceae4098c0fc52bd712e526c474fb02a28a375654c65'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('47b419f1-9599-5168-8144-dcca5784a355', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3ceebd52-0557-58e0-8cf9-bd82e306ed7a', 1), '5b09d3fe743098b8a621ceae4098c0fc52bd712e526c474fb02a28a375654c65',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/f5aa9e3707e263061b764695ae61fb2a7ea9a0d362026fe4a9a5c3242321ff9c.mp3', 1071, '2026-09-13 15:55:37.696066', 'd06244427dc86d65eb26909dfef0007ec94a79648e46519c14f3acac570a7e40', 'validated', '{"audio_key":"f5aa9e3707e263061b764695ae61fb2a7ea9a0d362026fe4a9a5c3242321ff9c","entity_key":"lx_time_and_plans_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d06244427dc86d65eb26909dfef0007ec94a79648e46519c14f3acac570a7e40","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/f5aa9e3707e263061b764695ae61fb2a7ea9a0d362026fe4a9a5c3242321ff9c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_time_and_plans_02 -> audio/generated/tr-TR/lexical/f5aa9e3707e263061b764695ae61fb2a7ea9a0d362026fe4a9a5c3242321ff9c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('fbb255df-2502-5501-91c6-7b7a80b08674', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_time_and_plans_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5b09d3fe743098b8a621ceae4098c0fc52bd712e526c474fb02a28a375654c65'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('475122cc-9538-58bf-84c7-7cd9ba5593db', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('fbb255df-2502-5501-91c6-7b7a80b08674', 1), '5b09d3fe743098b8a621ceae4098c0fc52bd712e526c474fb02a28a375654c65',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/f5aa9e3707e263061b764695ae61fb2a7ea9a0d362026fe4a9a5c3242321ff9c.mp3', 1071, '2026-09-13 15:55:37.696066', 'd06244427dc86d65eb26909dfef0007ec94a79648e46519c14f3acac570a7e40', 'validated', '{"audio_key":"f5aa9e3707e263061b764695ae61fb2a7ea9a0d362026fe4a9a5c3242321ff9c","entity_key":"wf_time_and_plans_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d06244427dc86d65eb26909dfef0007ec94a79648e46519c14f3acac570a7e40","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/f5aa9e3707e263061b764695ae61fb2a7ea9a0d362026fe4a9a5c3242321ff9c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_getting_around_03 -> audio/generated/tr-TR/lexical/fc33e21de8e422d543239bf68f3c5c23dca6b7588e9bf02f5441087d0f0c0d5d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2297e95c-9815-5627-b456-0dce970c58b6', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_getting_around_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '830be9b26f921da0cbfc07a4e998a91c81bcb8284ecc7efcffc822407e465dc9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6b2f8452-929d-537a-bd73-4d9984e67a82', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2297e95c-9815-5627-b456-0dce970c58b6', 1), '830be9b26f921da0cbfc07a4e998a91c81bcb8284ecc7efcffc822407e465dc9',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/fc33e21de8e422d543239bf68f3c5c23dca6b7588e9bf02f5441087d0f0c0d5d.mp3', 1149, '2026-09-13 15:55:38.501034', 'e62d6ac2e8637b9f7006ce402ddffb14442b19ac2c039f412fbfb55095efe0dc', 'validated', '{"audio_key":"fc33e21de8e422d543239bf68f3c5c23dca6b7588e9bf02f5441087d0f0c0d5d","entity_key":"lx_getting_around_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e62d6ac2e8637b9f7006ce402ddffb14442b19ac2c039f412fbfb55095efe0dc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/fc33e21de8e422d543239bf68f3c5c23dca6b7588e9bf02f5441087d0f0c0d5d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_getting_around_03 -> audio/generated/tr-TR/lexical/fc33e21de8e422d543239bf68f3c5c23dca6b7588e9bf02f5441087d0f0c0d5d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6524fdc1-de4c-564a-8f45-ffdc155534fc', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_getting_around_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '830be9b26f921da0cbfc07a4e998a91c81bcb8284ecc7efcffc822407e465dc9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5a963005-71fc-5806-bc36-108d98444bab', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6524fdc1-de4c-564a-8f45-ffdc155534fc', 1), '830be9b26f921da0cbfc07a4e998a91c81bcb8284ecc7efcffc822407e465dc9',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/fc33e21de8e422d543239bf68f3c5c23dca6b7588e9bf02f5441087d0f0c0d5d.mp3', 1149, '2026-09-13 15:55:38.501034', 'e62d6ac2e8637b9f7006ce402ddffb14442b19ac2c039f412fbfb55095efe0dc', 'validated', '{"audio_key":"fc33e21de8e422d543239bf68f3c5c23dca6b7588e9bf02f5441087d0f0c0d5d","entity_key":"wf_getting_around_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e62d6ac2e8637b9f7006ce402ddffb14442b19ac2c039f412fbfb55095efe0dc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/fc33e21de8e422d543239bf68f3c5c23dca6b7588e9bf02f5441087d0f0c0d5d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_my_family_03 -> audio/generated/tr-TR/lexical/fd1f765a202963dbc31ab2c34fb9d2490c63c88dced569f4e549f64729aa8371.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8431eefe-abbf-5fdc-a975-a9329138daee', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_my_family_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2a4d39fc910054099b18f111c73ed6ce311f2027f673644708256be3d3fe2e49'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bafe6f75-c5eb-5d5b-bfa0-181f592ae189', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8431eefe-abbf-5fdc-a975-a9329138daee', 1), '2a4d39fc910054099b18f111c73ed6ce311f2027f673644708256be3d3fe2e49',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/fd1f765a202963dbc31ab2c34fb9d2490c63c88dced569f4e549f64729aa8371.mp3', 1149, '2026-09-13 15:55:38.779045', '9ca21f73376f838c3af440b7a3b8cf56ab071c9c1b2f587c5e30515fc9a2acf4', 'validated', '{"audio_key":"fd1f765a202963dbc31ab2c34fb9d2490c63c88dced569f4e549f64729aa8371","entity_key":"lx_my_family_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9ca21f73376f838c3af440b7a3b8cf56ab071c9c1b2f587c5e30515fc9a2acf4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/fd1f765a202963dbc31ab2c34fb9d2490c63c88dced569f4e549f64729aa8371.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_my_family_03 -> audio/generated/tr-TR/lexical/fd1f765a202963dbc31ab2c34fb9d2490c63c88dced569f4e549f64729aa8371.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('fa3964a9-d65a-5ae2-815d-50af7b019f59', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_my_family_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2a4d39fc910054099b18f111c73ed6ce311f2027f673644708256be3d3fe2e49'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5a51e85b-b853-5d9d-b0be-595381d8cb5b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('fa3964a9-d65a-5ae2-815d-50af7b019f59', 1), '2a4d39fc910054099b18f111c73ed6ce311f2027f673644708256be3d3fe2e49',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/fd1f765a202963dbc31ab2c34fb9d2490c63c88dced569f4e549f64729aa8371.mp3', 1149, '2026-09-13 15:55:38.779045', '9ca21f73376f838c3af440b7a3b8cf56ab071c9c1b2f587c5e30515fc9a2acf4', 'validated', '{"audio_key":"fd1f765a202963dbc31ab2c34fb9d2490c63c88dced569f4e549f64729aa8371","entity_key":"wf_my_family_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9ca21f73376f838c3af440b7a3b8cf56ab071c9c1b2f587c5e30515fc9a2acf4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/fd1f765a202963dbc31ab2c34fb9d2490c63c88dced569f4e549f64729aa8371.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_what_im_doing_05 -> audio/generated/tr-TR/lexical/fefc691ecc31a73720ab8792460d7e7a8a2a9d5c53bc70e71d3f0361f3fbe91e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9f40f665-ca58-54ff-acf5-3f85e564268a', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_what_im_doing_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3e8e95db55dc3d4cac9e4b4856e07822162a08e9f41f5cbe2467c271e0bf3d06'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5469b649-3a90-5528-804b-ab6b6b990643', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9f40f665-ca58-54ff-acf5-3f85e564268a', 1), '3e8e95db55dc3d4cac9e4b4856e07822162a08e9f41f5cbe2467c271e0bf3d06',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/fefc691ecc31a73720ab8792460d7e7a8a2a9d5c53bc70e71d3f0361f3fbe91e.mp3', 1018, '2026-09-13 15:55:39.530686', 'dfabe9cd405aad9ab720b4720f09f7d5951dd9066af6b1f1e24d2e7e8f6ba81f', 'validated', '{"audio_key":"fefc691ecc31a73720ab8792460d7e7a8a2a9d5c53bc70e71d3f0361f3fbe91e","entity_key":"lx_what_im_doing_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dfabe9cd405aad9ab720b4720f09f7d5951dd9066af6b1f1e24d2e7e8f6ba81f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/fefc691ecc31a73720ab8792460d7e7a8a2a9d5c53bc70e71d3f0361f3fbe91e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_what_im_doing_05 -> audio/generated/tr-TR/lexical/fefc691ecc31a73720ab8792460d7e7a8a2a9d5c53bc70e71d3f0361f3fbe91e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d0a3c7d0-0de7-5942-a573-16349f06abd5', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_what_im_doing_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3e8e95db55dc3d4cac9e4b4856e07822162a08e9f41f5cbe2467c271e0bf3d06'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e0a2473e-4104-536a-8bbb-1f3a7e46e008', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d0a3c7d0-0de7-5942-a573-16349f06abd5', 1), '3e8e95db55dc3d4cac9e4b4856e07822162a08e9f41f5cbe2467c271e0bf3d06',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/fefc691ecc31a73720ab8792460d7e7a8a2a9d5c53bc70e71d3f0361f3fbe91e.mp3', 1018, '2026-09-13 15:55:39.530686', 'dfabe9cd405aad9ab720b4720f09f7d5951dd9066af6b1f1e24d2e7e8f6ba81f', 'validated', '{"audio_key":"fefc691ecc31a73720ab8792460d7e7a8a2a9d5c53bc70e71d3f0361f3fbe91e","entity_key":"wf_what_im_doing_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dfabe9cd405aad9ab720b4720f09f7d5951dd9066af6b1f1e24d2e7e8f6ba81f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/fefc691ecc31a73720ab8792460d7e7a8a2a9d5c53bc70e71d3f0361f3fbe91e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_a1_first_day_capstone_03 -> audio/generated/tr-TR/utterances/0056a4ef0430a20a282bcae39ee4fa476187fd61e466b7c36dbb62465634b6ce.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('cbe69a98-dded-5fe3-8abf-301e2187d145', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_a1_first_day_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '712ff41904875e16aa583f09113d08107ea8dfdc44fc2f52cf20ed828a9cda01'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('63b810b7-fe17-5a9b-aca4-d530c310595a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('cbe69a98-dded-5fe3-8abf-301e2187d145', 1), '712ff41904875e16aa583f09113d08107ea8dfdc44fc2f52cf20ed828a9cda01',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/0056a4ef0430a20a282bcae39ee4fa476187fd61e466b7c36dbb62465634b6ce.mp3', 2115, '2026-09-13 15:55:39.945791', 'bba05479522351fbd575ae4bae6fd6e2a762785e13c19b35017c26a21c53f002', 'validated', '{"audio_key":"0056a4ef0430a20a282bcae39ee4fa476187fd61e466b7c36dbb62465634b6ce","entity_key":"u_a1_first_day_capstone_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bba05479522351fbd575ae4bae6fd6e2a762785e13c19b35017c26a21c53f002","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/0056a4ef0430a20a282bcae39ee4fa476187fd61e466b7c36dbb62465634b6ce.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_what_im_doing_03 -> audio/generated/tr-TR/utterances/02e8804a715f942e657e093cd66bc8413b2ab6bcb1904e0c8e101b92aa93fb71.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2fa1c55f-2fbf-5220-af74-f9e7319ac8c1', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_what_im_doing_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6503f41b35d37a8119a05678c8a0985f4407c890f54c12880b42c4542a46145d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('de9ececa-4e64-5200-8960-62e258e135ae', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2fa1c55f-2fbf-5220-af74-f9e7319ac8c1', 1), '6503f41b35d37a8119a05678c8a0985f4407c890f54c12880b42c4542a46145d',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/02e8804a715f942e657e093cd66bc8413b2ab6bcb1904e0c8e101b92aa93fb71.mp3', 1332, '2026-09-13 15:55:40.583197', 'b827ae5f49e61413569b45e8159d2eec724e024c5ccdc3fd0e0174d81f6f725d', 'validated', '{"audio_key":"02e8804a715f942e657e093cd66bc8413b2ab6bcb1904e0c8e101b92aa93fb71","entity_key":"u_what_im_doing_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b827ae5f49e61413569b45e8159d2eec724e024c5ccdc3fd0e0174d81f6f725d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/02e8804a715f942e657e093cd66bc8413b2ab6bcb1904e0c8e101b92aa93fb71.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_what_im_doing_01 -> audio/generated/tr-TR/utterances/1082f334d66e200a0c329e0c4fcbf323b46ee12f11a3f70d1db53357970002aa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c940f8b0-eaa0-563d-b46a-8399942cbdd9', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_what_im_doing_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7d980e58e11ba202544a7af1166a92b260411c72a60f9641a5920e12c550c8a0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eff08aab-1e8c-500e-90b8-82abd1c0b538', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c940f8b0-eaa0-563d-b46a-8399942cbdd9', 1), '7d980e58e11ba202544a7af1166a92b260411c72a60f9641a5920e12c550c8a0',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/1082f334d66e200a0c329e0c4fcbf323b46ee12f11a3f70d1db53357970002aa.mp3', 1436, '2026-09-13 15:55:41.033956', 'ec801095243160d9696fccd100d85f8c8439351d6d5e5493264e8399c1979469', 'validated', '{"audio_key":"1082f334d66e200a0c329e0c4fcbf323b46ee12f11a3f70d1db53357970002aa","entity_key":"u_what_im_doing_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ec801095243160d9696fccd100d85f8c8439351d6d5e5493264e8399c1979469","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/1082f334d66e200a0c329e0c4fcbf323b46ee12f11a3f70d1db53357970002aa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_shopping_basics_04 -> audio/generated/tr-TR/utterances/188e144a3246f4260c094116f42a756acdf2d06fcbf9e5ce761ea30550e9a01a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('1efc07e3-31b6-55b3-9a07-0aa055cd4c3d', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_shopping_basics_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dbf50c6d5ba3a2e7dfab46b1e5723762b1726c1beab10daa55d92ebdf1297cb8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b26dd37c-e373-557c-b7ee-3d4c52b7310b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('1efc07e3-31b6-55b3-9a07-0aa055cd4c3d', 1), 'dbf50c6d5ba3a2e7dfab46b1e5723762b1726c1beab10daa55d92ebdf1297cb8',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/188e144a3246f4260c094116f42a756acdf2d06fcbf9e5ce761ea30550e9a01a.mp3', 1436, '2026-09-13 15:55:41.792038', 'a7b95e423089c794acd71ad56e21cb9da7d349bcf0031e0805b489aee649f0a4', 'validated', '{"audio_key":"188e144a3246f4260c094116f42a756acdf2d06fcbf9e5ce761ea30550e9a01a","entity_key":"u_shopping_basics_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a7b95e423089c794acd71ad56e21cb9da7d349bcf0031e0805b489aee649f0a4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/188e144a3246f4260c094116f42a756acdf2d06fcbf9e5ce761ea30550e9a01a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_shopping_basics_02_listen -> audio/generated/tr-TR/utterances/188e144a3246f4260c094116f42a756acdf2d06fcbf9e5ce761ea30550e9a01a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('734aaf54-3a87-5d29-8693-c5a32c74179e', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_shopping_basics_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dbf50c6d5ba3a2e7dfab46b1e5723762b1726c1beab10daa55d92ebdf1297cb8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f3a406eb-ebce-5687-b2b1-74a2dc75a7be', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('734aaf54-3a87-5d29-8693-c5a32c74179e', 1), 'dbf50c6d5ba3a2e7dfab46b1e5723762b1726c1beab10daa55d92ebdf1297cb8',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/188e144a3246f4260c094116f42a756acdf2d06fcbf9e5ce761ea30550e9a01a.mp3', 1436, '2026-09-13 15:55:41.792038', 'a7b95e423089c794acd71ad56e21cb9da7d349bcf0031e0805b489aee649f0a4', 'validated', '{"audio_key":"188e144a3246f4260c094116f42a756acdf2d06fcbf9e5ce761ea30550e9a01a","entity_key":"e_shopping_basics_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a7b95e423089c794acd71ad56e21cb9da7d349bcf0031e0805b489aee649f0a4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/188e144a3246f4260c094116f42a756acdf2d06fcbf9e5ce761ea30550e9a01a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_time_and_plans_01 -> audio/generated/tr-TR/utterances/1a50058969d7112cdcd655c88b55d842604d793c9650e76ada3326b6ec62c222.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('5027cfdd-841d-5151-a179-030c95ee0104', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_time_and_plans_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0452ceadda5b16d2f2e5cd4a5ea3470deba5b7a7162162f322c46d1da824517e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f5b0766f-ffe4-5b1a-a48f-8ffffc5fd8ea', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('5027cfdd-841d-5151-a179-030c95ee0104', 1), '0452ceadda5b16d2f2e5cd4a5ea3470deba5b7a7162162f322c46d1da824517e',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/1a50058969d7112cdcd655c88b55d842604d793c9650e76ada3326b6ec62c222.mp3', 1253, '2026-09-13 15:55:42.113094', 'dcddeeda0c8078d8fd5bff0b3df7a70dfc70b48f25d7678897101a3403e3c13c', 'validated', '{"audio_key":"1a50058969d7112cdcd655c88b55d842604d793c9650e76ada3326b6ec62c222","entity_key":"u_time_and_plans_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dcddeeda0c8078d8fd5bff0b3df7a70dfc70b48f25d7678897101a3403e3c13c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/1a50058969d7112cdcd655c88b55d842604d793c9650e76ada3326b6ec62c222.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_shopping_basics_03 -> audio/generated/tr-TR/utterances/1c7690afa33a320fd5f652c6e1b8c49181288f4813c2586bbb6cfbd3423010c7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('5eb68098-f998-57d4-954f-3e0737b00b48', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_shopping_basics_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '44ea1b87bcea587cdcf45a13a33deeaadb7e050fd05bd2df4ef93ad374c2f098'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('30d7855e-8c15-53a9-b65b-c1f07726ed6d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('5eb68098-f998-57d4-954f-3e0737b00b48', 1), '44ea1b87bcea587cdcf45a13a33deeaadb7e050fd05bd2df4ef93ad374c2f098',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/1c7690afa33a320fd5f652c6e1b8c49181288f4813c2586bbb6cfbd3423010c7.mp3', 1332, '2026-09-13 15:55:42.871593', '5ac006cc13a0aeb84f7c2b23035bb6548df4da0040d1ec90f2c861ca913ad05b', 'validated', '{"audio_key":"1c7690afa33a320fd5f652c6e1b8c49181288f4813c2586bbb6cfbd3423010c7","entity_key":"u_shopping_basics_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5ac006cc13a0aeb84f7c2b23035bb6548df4da0040d1ec90f2c861ca913ad05b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/1c7690afa33a320fd5f652c6e1b8c49181288f4813c2586bbb6cfbd3423010c7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_getting_around_01 -> audio/generated/tr-TR/utterances/1dfff3483be733e2fc16ef8a9ec42cf11e87c3a11159c90d466c0d3ca5f6466a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('375670d7-bd6e-5399-8e64-843e66f205a0', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_getting_around_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ba39242092a78a178ee5fd142de23a257555cff3adb7dfb0a5e28c8c2b33ce9d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9ba2eff5-5ad8-5e4e-bca8-6ddde321c766', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('375670d7-bd6e-5399-8e64-843e66f205a0', 1), 'ba39242092a78a178ee5fd142de23a257555cff3adb7dfb0a5e28c8c2b33ce9d',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/1dfff3483be733e2fc16ef8a9ec42cf11e87c3a11159c90d466c0d3ca5f6466a.mp3', 1280, '2026-09-13 15:55:43.179637', 'bd9305a50a8482f279621a5a8703a5cdff68886eb04b6b641fa006cdda659b7a', 'validated', '{"audio_key":"1dfff3483be733e2fc16ef8a9ec42cf11e87c3a11159c90d466c0d3ca5f6466a","entity_key":"u_getting_around_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bd9305a50a8482f279621a5a8703a5cdff68886eb04b6b641fa006cdda659b7a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/1dfff3483be733e2fc16ef8a9ec42cf11e87c3a11159c90d466c0d3ca5f6466a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_at_home_03 -> audio/generated/tr-TR/utterances/232dfa1bfdeb490a4c662e4b8e8433366914f0bcbf6ab1facad53c311173c3ed.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('38d69e2f-6fb3-5b75-a64e-1c0e0598909e', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_at_home_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '48a80153a58d9e3ccd33f16bf1614a26c6a769d26c4690685f0fe456596ee175'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7a18b0f8-c33d-5189-afbb-1b85f139faeb', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('38d69e2f-6fb3-5b75-a64e-1c0e0598909e', 1), '48a80153a58d9e3ccd33f16bf1614a26c6a769d26c4690685f0fe456596ee175',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/232dfa1bfdeb490a4c662e4b8e8433366914f0bcbf6ab1facad53c311173c3ed.mp3', 1436, '2026-09-13 15:55:44.017205', '39e9611873853a3f51200eb95c79197f061aa951a386e149b83e175fc0ba8924', 'validated', '{"audio_key":"232dfa1bfdeb490a4c662e4b8e8433366914f0bcbf6ab1facad53c311173c3ed","entity_key":"u_at_home_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"39e9611873853a3f51200eb95c79197f061aa951a386e149b83e175fc0ba8924","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/232dfa1bfdeb490a4c662e4b8e8433366914f0bcbf6ab1facad53c311173c3ed.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_getting_around_04 -> audio/generated/tr-TR/utterances/26db2470f4fa55a15416d115b7eb062f64a708f26ec67eaa9b1477f99ce66782.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c2710a9f-b937-5182-855d-b77f4542e34b', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_getting_around_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '073149e0c6b8712afd3d974fee96d8aa979273bde1833e38a6b5fe724a737ae7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e1fb7e46-dbae-59c6-88d9-fba695dc4660', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c2710a9f-b937-5182-855d-b77f4542e34b', 1), '073149e0c6b8712afd3d974fee96d8aa979273bde1833e38a6b5fe724a737ae7',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/26db2470f4fa55a15416d115b7eb062f64a708f26ec67eaa9b1477f99ce66782.mp3', 1488, '2026-09-13 15:55:44.288140', 'c59a252ff5dae61878d76119a04caa7e49d51bf3de2c3d901565b1d29bef729e', 'validated', '{"audio_key":"26db2470f4fa55a15416d115b7eb062f64a708f26ec67eaa9b1477f99ce66782","entity_key":"u_getting_around_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c59a252ff5dae61878d76119a04caa7e49d51bf3de2c3d901565b1d29bef729e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/26db2470f4fa55a15416d115b7eb062f64a708f26ec67eaa9b1477f99ce66782.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_getting_around_02_listen -> audio/generated/tr-TR/utterances/26db2470f4fa55a15416d115b7eb062f64a708f26ec67eaa9b1477f99ce66782.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('07e0a219-b1ef-5528-a759-3739019ba079', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_getting_around_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '073149e0c6b8712afd3d974fee96d8aa979273bde1833e38a6b5fe724a737ae7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cabbe263-ccdb-5d03-8de6-428406d30eec', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('07e0a219-b1ef-5528-a759-3739019ba079', 1), '073149e0c6b8712afd3d974fee96d8aa979273bde1833e38a6b5fe724a737ae7',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/26db2470f4fa55a15416d115b7eb062f64a708f26ec67eaa9b1477f99ce66782.mp3', 1488, '2026-09-13 15:55:44.288140', 'c59a252ff5dae61878d76119a04caa7e49d51bf3de2c3d901565b1d29bef729e', 'validated', '{"audio_key":"26db2470f4fa55a15416d115b7eb062f64a708f26ec67eaa9b1477f99ce66782","entity_key":"e_getting_around_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c59a252ff5dae61878d76119a04caa7e49d51bf3de2c3d901565b1d29bef729e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/26db2470f4fa55a15416d115b7eb062f64a708f26ec67eaa9b1477f99ce66782.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_a1_first_day_capstone_04 -> audio/generated/tr-TR/utterances/3958921319e5ba338c7d15bf51a4577e827c66827262221fa86d4c6a53ede76c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('154b69b0-19ec-5ad9-a5f5-837810dcdff6', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_a1_first_day_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0f5bf4608062a178845eda10f7f5c8370d2c3a2b0790af5c94c7bd5959f45436'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('379b4f0d-4736-5e49-a91d-20312d6e0d3e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('154b69b0-19ec-5ad9-a5f5-837810dcdff6', 1), '0f5bf4608062a178845eda10f7f5c8370d2c3a2b0790af5c94c7bd5959f45436',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/3958921319e5ba338c7d15bf51a4577e827c66827262221fa86d4c6a53ede76c.mp3', 2168, '2026-09-13 15:55:45.194195', 'f51557231dccb69d1f7a94330344fd0f3c1bfb8dc01f40a7ec0e5a98620f2a10', 'validated', '{"audio_key":"3958921319e5ba338c7d15bf51a4577e827c66827262221fa86d4c6a53ede76c","entity_key":"u_a1_first_day_capstone_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f51557231dccb69d1f7a94330344fd0f3c1bfb8dc01f40a7ec0e5a98620f2a10","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/3958921319e5ba338c7d15bf51a4577e827c66827262221fa86d4c6a53ede76c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_a1_first_day_capstone_02_listen -> audio/generated/tr-TR/utterances/3958921319e5ba338c7d15bf51a4577e827c66827262221fa86d4c6a53ede76c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('4831b454-6703-5435-9cec-a099e6d06c02', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_a1_first_day_capstone_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0f5bf4608062a178845eda10f7f5c8370d2c3a2b0790af5c94c7bd5959f45436'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ff3152c1-6a08-554a-85ee-848ad207ffad', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('4831b454-6703-5435-9cec-a099e6d06c02', 1), '0f5bf4608062a178845eda10f7f5c8370d2c3a2b0790af5c94c7bd5959f45436',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/3958921319e5ba338c7d15bf51a4577e827c66827262221fa86d4c6a53ede76c.mp3', 2168, '2026-09-13 15:55:45.194195', 'f51557231dccb69d1f7a94330344fd0f3c1bfb8dc01f40a7ec0e5a98620f2a10', 'validated', '{"audio_key":"3958921319e5ba338c7d15bf51a4577e827c66827262221fa86d4c6a53ede76c","entity_key":"e_a1_first_day_capstone_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f51557231dccb69d1f7a94330344fd0f3c1bfb8dc01f40a7ec0e5a98620f2a10","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/3958921319e5ba338c7d15bf51a4577e827c66827262221fa86d4c6a53ede76c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_this_and_these_04 -> audio/generated/tr-TR/utterances/3c290c46cb7a871b299bdb948f86ce07948f249227095b3fee3082d8044b5a3b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('8b7996b5-1334-5c54-8c2a-332021b2dd53', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_this_and_these_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5b8120bb60d5d62f9d9f762e27089150770ac9a45d50f8644fa6ad4978d582fd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0407f7cf-6265-5372-92bc-eedb62266109', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('8b7996b5-1334-5c54-8c2a-332021b2dd53', 1), '5b8120bb60d5d62f9d9f762e27089150770ac9a45d50f8644fa6ad4978d582fd',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/3c290c46cb7a871b299bdb948f86ce07948f249227095b3fee3082d8044b5a3b.mp3', 1567, '2026-09-13 15:55:45.359891', '52c3671c0ba8758340d6a08474c59983887a7a3c55e54bd23995e468d7879123', 'validated', '{"audio_key":"3c290c46cb7a871b299bdb948f86ce07948f249227095b3fee3082d8044b5a3b","entity_key":"u_this_and_these_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"52c3671c0ba8758340d6a08474c59983887a7a3c55e54bd23995e468d7879123","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/3c290c46cb7a871b299bdb948f86ce07948f249227095b3fee3082d8044b5a3b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_this_and_these_02_listen -> audio/generated/tr-TR/utterances/3c290c46cb7a871b299bdb948f86ce07948f249227095b3fee3082d8044b5a3b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('e1d22d56-a91b-55b2-a48a-d5fbfb932542', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_this_and_these_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5b8120bb60d5d62f9d9f762e27089150770ac9a45d50f8644fa6ad4978d582fd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e506869b-8194-54dd-829a-fd0d8e1d4da4', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('e1d22d56-a91b-55b2-a48a-d5fbfb932542', 1), '5b8120bb60d5d62f9d9f762e27089150770ac9a45d50f8644fa6ad4978d582fd',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/3c290c46cb7a871b299bdb948f86ce07948f249227095b3fee3082d8044b5a3b.mp3', 1567, '2026-09-13 15:55:45.359891', '52c3671c0ba8758340d6a08474c59983887a7a3c55e54bd23995e468d7879123', 'validated', '{"audio_key":"3c290c46cb7a871b299bdb948f86ce07948f249227095b3fee3082d8044b5a3b","entity_key":"e_this_and_these_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"52c3671c0ba8758340d6a08474c59983887a7a3c55e54bd23995e468d7879123","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/3c290c46cb7a871b299bdb948f86ce07948f249227095b3fee3082d8044b5a3b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_shopping_basics_01 -> audio/generated/tr-TR/utterances/470ba54bca4cd0e94705a25245119bcc7fc634a51e58eb7cfc709a156564feb3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a5c56154-c465-55cc-afc6-662696d6bae0', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_shopping_basics_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b8687dc79a33c1ea4e9e59b86a0cfef1a4c827ac358307b0cc2ef5c492206b3d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('17df3364-bd60-5594-9524-a1a330c8ac0f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a5c56154-c465-55cc-afc6-662696d6bae0', 1), 'b8687dc79a33c1ea4e9e59b86a0cfef1a4c827ac358307b0cc2ef5c492206b3d',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/470ba54bca4cd0e94705a25245119bcc7fc634a51e58eb7cfc709a156564feb3.mp3', 1201, '2026-09-13 15:55:46.328704', '12d223cdf1f1ad897ec0c1ce1b39c28ed9104bc73202c8573df25adf4687abe3', 'validated', '{"audio_key":"470ba54bca4cd0e94705a25245119bcc7fc634a51e58eb7cfc709a156564feb3","entity_key":"u_shopping_basics_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"12d223cdf1f1ad897ec0c1ce1b39c28ed9104bc73202c8573df25adf4687abe3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/470ba54bca4cd0e94705a25245119bcc7fc634a51e58eb7cfc709a156564feb3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_time_and_plans_03 -> audio/generated/tr-TR/utterances/53e46cfe7d4652175832bef4e401d2ec5126520f8045c7f56d7a392246289d4d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('eaf81704-375e-5550-99b0-5bb9a57aa361', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_time_and_plans_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '73a8dfa684327873905e61cde6710ef9dbb30c5d19c0e69611515d6bd8622c75'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9b311987-12d4-5af9-b830-e015fa4278bf', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('eaf81704-375e-5550-99b0-5bb9a57aa361', 1), '73a8dfa684327873905e61cde6710ef9dbb30c5d19c0e69611515d6bd8622c75',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/53e46cfe7d4652175832bef4e401d2ec5126520f8045c7f56d7a392246289d4d.mp3', 1750, '2026-09-13 15:55:46.432707', '7b3f4781edcce4e2694a2a6d2c8ad9493175abd402051d0d6f91e7e83ebdb84c', 'validated', '{"audio_key":"53e46cfe7d4652175832bef4e401d2ec5126520f8045c7f56d7a392246289d4d","entity_key":"u_time_and_plans_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7b3f4781edcce4e2694a2a6d2c8ad9493175abd402051d0d6f91e7e83ebdb84c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/53e46cfe7d4652175832bef4e401d2ec5126520f8045c7f56d7a392246289d4d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_time_and_plans_04 -> audio/generated/tr-TR/utterances/5a40f4a87d20cfb7131bafac5f521bfcc8a7333593addcf00aa1017c1947b6f0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b104d722-ee94-5980-a221-dec2d2e9f361', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_time_and_plans_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '66153a328a00568e8a51c05daf7aff23a95fe6b81719dd329383d18b531b0dbe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5628f563-d3d3-51c5-a751-377388af649d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b104d722-ee94-5980-a221-dec2d2e9f361', 1), '66153a328a00568e8a51c05daf7aff23a95fe6b81719dd329383d18b531b0dbe',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/5a40f4a87d20cfb7131bafac5f521bfcc8a7333593addcf00aa1017c1947b6f0.mp3', 1619, '2026-09-13 15:55:47.438213', '09ab1062470297fa2cd1409a0d432b67be2bcc55471ebf3636005afa024f2201', 'validated', '{"audio_key":"5a40f4a87d20cfb7131bafac5f521bfcc8a7333593addcf00aa1017c1947b6f0","entity_key":"u_time_and_plans_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"09ab1062470297fa2cd1409a0d432b67be2bcc55471ebf3636005afa024f2201","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/5a40f4a87d20cfb7131bafac5f521bfcc8a7333593addcf00aa1017c1947b6f0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_time_and_plans_02_listen -> audio/generated/tr-TR/utterances/5a40f4a87d20cfb7131bafac5f521bfcc8a7333593addcf00aa1017c1947b6f0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('d0ae664b-e6b0-534f-89e9-36571e8f778b', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_time_and_plans_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '66153a328a00568e8a51c05daf7aff23a95fe6b81719dd329383d18b531b0dbe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('38d36807-cbf8-5635-b272-1763277f5bc9', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('d0ae664b-e6b0-534f-89e9-36571e8f778b', 1), '66153a328a00568e8a51c05daf7aff23a95fe6b81719dd329383d18b531b0dbe',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/5a40f4a87d20cfb7131bafac5f521bfcc8a7333593addcf00aa1017c1947b6f0.mp3', 1619, '2026-09-13 15:55:47.438213', '09ab1062470297fa2cd1409a0d432b67be2bcc55471ebf3636005afa024f2201', 'validated', '{"audio_key":"5a40f4a87d20cfb7131bafac5f521bfcc8a7333593addcf00aa1017c1947b6f0","entity_key":"e_time_and_plans_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"09ab1062470297fa2cd1409a0d432b67be2bcc55471ebf3636005afa024f2201","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/5a40f4a87d20cfb7131bafac5f521bfcc8a7333593addcf00aa1017c1947b6f0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_my_family_01 -> audio/generated/tr-TR/utterances/5a6ce9ac2cdf2bd1019a4708c90ea2d644c0317272e0474cc9e0c6efaa1f5a50.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('6850b9e3-a4e2-5295-adc2-6224ddde022f', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_my_family_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '84871a8cf65fe9b5ca36cfbbcfbea99f506a9f5abbf86ad49efdd0460b17270c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c513de9d-5598-5950-8704-fc4920d196b9', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('6850b9e3-a4e2-5295-adc2-6224ddde022f', 1), '84871a8cf65fe9b5ca36cfbbcfbea99f506a9f5abbf86ad49efdd0460b17270c',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/5a6ce9ac2cdf2bd1019a4708c90ea2d644c0317272e0474cc9e0c6efaa1f5a50.mp3', 1515, '2026-09-13 15:55:47.502420', 'fb717bf42799e5d938f2f32fc76ea7f69215ed7f612bcf20b2270499e7a9abcb', 'validated', '{"audio_key":"5a6ce9ac2cdf2bd1019a4708c90ea2d644c0317272e0474cc9e0c6efaa1f5a50","entity_key":"u_my_family_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fb717bf42799e5d938f2f32fc76ea7f69215ed7f612bcf20b2270499e7a9abcb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/5a6ce9ac2cdf2bd1019a4708c90ea2d644c0317272e0474cc9e0c6efaa1f5a50.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_at_the_cafe_03 -> audio/generated/tr-TR/utterances/5b45f38320f1975445dd32e35f567d06152d0b1211b22ce7eb7ec195f17f9bcc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c7ad5292-df40-55c2-a5b7-9375e57e1fd9', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_at_the_cafe_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5ecf58d65333ba8feeb333a11d513246a051b7adb7186b28705144418d1ecd65'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cc000030-4c50-5f20-869b-563b4f42983a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c7ad5292-df40-55c2-a5b7-9375e57e1fd9', 1), '5ecf58d65333ba8feeb333a11d513246a051b7adb7186b28705144418d1ecd65',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/5b45f38320f1975445dd32e35f567d06152d0b1211b22ce7eb7ec195f17f9bcc.mp3', 1488, '2026-09-13 15:55:48.526076', '8433c924283487a67d8ff3e884588c5fdba8219c51bd04e8bb1ed0aefa4736fd', 'validated', '{"audio_key":"5b45f38320f1975445dd32e35f567d06152d0b1211b22ce7eb7ec195f17f9bcc","entity_key":"u_at_the_cafe_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8433c924283487a67d8ff3e884588c5fdba8219c51bd04e8bb1ed0aefa4736fd","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/5b45f38320f1975445dd32e35f567d06152d0b1211b22ce7eb7ec195f17f9bcc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_my_family_02 -> audio/generated/tr-TR/utterances/600da3eb243c699f5dab421e315e5d264a0817bc3d5e1b00b2b65219923c1c9a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f9d0d077-0ccf-5e42-b5a8-eee2578acbc9', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_my_family_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8b916a10d3a612ad6a3ef6f503c19e2bf7917b83634a795ca9f9ff24a81ac5e5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('48a48d18-fbb4-5f23-b0f7-b398cf41e696', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f9d0d077-0ccf-5e42-b5a8-eee2578acbc9', 1), '8b916a10d3a612ad6a3ef6f503c19e2bf7917b83634a795ca9f9ff24a81ac5e5',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/600da3eb243c699f5dab421e315e5d264a0817bc3d5e1b00b2b65219923c1c9a.mp3', 1332, '2026-09-13 15:55:48.550133', 'ccc0ac56fe9a1ec4c22465df9b9d5b39a5cc8d0f373cce66565041f3b2aec116', 'validated', '{"audio_key":"600da3eb243c699f5dab421e315e5d264a0817bc3d5e1b00b2b65219923c1c9a","entity_key":"u_my_family_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ccc0ac56fe9a1ec4c22465df9b9d5b39a5cc8d0f373cce66565041f3b2aec116","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/600da3eb243c699f5dab421e315e5d264a0817bc3d5e1b00b2b65219923c1c9a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_my_family_01_listen -> audio/generated/tr-TR/utterances/600da3eb243c699f5dab421e315e5d264a0817bc3d5e1b00b2b65219923c1c9a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('dd06e570-14f1-5aa2-98f5-b594f30699b8', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_my_family_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8b916a10d3a612ad6a3ef6f503c19e2bf7917b83634a795ca9f9ff24a81ac5e5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('26ec123f-163f-51e7-857f-37e9310d07fa', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('dd06e570-14f1-5aa2-98f5-b594f30699b8', 1), '8b916a10d3a612ad6a3ef6f503c19e2bf7917b83634a795ca9f9ff24a81ac5e5',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/600da3eb243c699f5dab421e315e5d264a0817bc3d5e1b00b2b65219923c1c9a.mp3', 1332, '2026-09-13 15:55:48.550133', 'ccc0ac56fe9a1ec4c22465df9b9d5b39a5cc8d0f373cce66565041f3b2aec116', 'validated', '{"audio_key":"600da3eb243c699f5dab421e315e5d264a0817bc3d5e1b00b2b65219923c1c9a","entity_key":"e_my_family_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ccc0ac56fe9a1ec4c22465df9b9d5b39a5cc8d0f373cce66565041f3b2aec116","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/600da3eb243c699f5dab421e315e5d264a0817bc3d5e1b00b2b65219923c1c9a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_at_the_cafe_01 -> audio/generated/tr-TR/utterances/6b20c844c54a7b3ec9005c19192792d0673922f561fca467dea33ccc48085dff.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('aa7c344c-dee2-556d-ac4d-957314f7369b', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_at_the_cafe_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '18c9531e1e415436fd0ddc2c0ab2260b8c49c62c42ef1464f4e2aa2857245c27'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a5070347-8ccd-5bfa-b31b-63d153353c04', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('aa7c344c-dee2-556d-ac4d-957314f7369b', 1), '18c9531e1e415436fd0ddc2c0ab2260b8c49c62c42ef1464f4e2aa2857245c27',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/6b20c844c54a7b3ec9005c19192792d0673922f561fca467dea33ccc48085dff.mp3', 1619, '2026-09-13 15:55:49.691804', '717b978762ac66d3c18fbd5d13ea95aec572129cc88b3e7c498488426ed79036', 'validated', '{"audio_key":"6b20c844c54a7b3ec9005c19192792d0673922f561fca467dea33ccc48085dff","entity_key":"u_at_the_cafe_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"717b978762ac66d3c18fbd5d13ea95aec572129cc88b3e7c498488426ed79036","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/6b20c844c54a7b3ec9005c19192792d0673922f561fca467dea33ccc48085dff.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_at_the_cafe_02 -> audio/generated/tr-TR/utterances/731394d4741b46399a50afe3065287c1a0fab9bdc96c171859b2bcbfd7086627.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f5d393c3-f823-596a-a4f3-6abf043f3ced', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_at_the_cafe_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3cc038f5fb6c64579dbd1673e3b403fd92d146a52adb54e6acc2db72b117134f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('486ac171-d49b-543d-8eee-0da2fafadecc', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f5d393c3-f823-596a-a4f3-6abf043f3ced', 1), '3cc038f5fb6c64579dbd1673e3b403fd92d146a52adb54e6acc2db72b117134f',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/731394d4741b46399a50afe3065287c1a0fab9bdc96c171859b2bcbfd7086627.mp3', 1515, '2026-09-13 15:55:49.597720', '3f7d2a16d0ad54658dbb5a61145670d5c0ba293c12154bb66a3a19f08dcf90ac', 'validated', '{"audio_key":"731394d4741b46399a50afe3065287c1a0fab9bdc96c171859b2bcbfd7086627","entity_key":"u_at_the_cafe_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3f7d2a16d0ad54658dbb5a61145670d5c0ba293c12154bb66a3a19f08dcf90ac","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/731394d4741b46399a50afe3065287c1a0fab9bdc96c171859b2bcbfd7086627.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_at_the_cafe_01_listen -> audio/generated/tr-TR/utterances/731394d4741b46399a50afe3065287c1a0fab9bdc96c171859b2bcbfd7086627.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('b7046bd0-b6ac-5c23-8ef0-538743a2c802', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_at_the_cafe_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3cc038f5fb6c64579dbd1673e3b403fd92d146a52adb54e6acc2db72b117134f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('383288ab-8182-5cc1-9ba9-03b88796fa65', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('b7046bd0-b6ac-5c23-8ef0-538743a2c802', 1), '3cc038f5fb6c64579dbd1673e3b403fd92d146a52adb54e6acc2db72b117134f',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/731394d4741b46399a50afe3065287c1a0fab9bdc96c171859b2bcbfd7086627.mp3', 1515, '2026-09-13 15:55:49.597720', '3f7d2a16d0ad54658dbb5a61145670d5c0ba293c12154bb66a3a19f08dcf90ac', 'validated', '{"audio_key":"731394d4741b46399a50afe3065287c1a0fab9bdc96c171859b2bcbfd7086627","entity_key":"e_at_the_cafe_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3f7d2a16d0ad54658dbb5a61145670d5c0ba293c12154bb66a3a19f08dcf90ac","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/731394d4741b46399a50afe3065287c1a0fab9bdc96c171859b2bcbfd7086627.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_what_im_doing_04 -> audio/generated/tr-TR/utterances/74da720f70ac9911e9bb89c193b19ebdaf4604d999cfbdc3aff5c6f4fb5054d7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2c3c0b08-a009-5ead-8d30-7d9b11aa0314', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_what_im_doing_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1625d421833289fb621c1fa044e79e45360c54aacbb22f86042625ed534d5e5b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('27fa1c6a-4cdc-5e11-8cca-beb706912a3e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2c3c0b08-a009-5ead-8d30-7d9b11aa0314', 1), '1625d421833289fb621c1fa044e79e45360c54aacbb22f86042625ed534d5e5b',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/74da720f70ac9911e9bb89c193b19ebdaf4604d999cfbdc3aff5c6f4fb5054d7.mp3', 1280, '2026-09-13 15:55:50.800132', 'ff07c6ec3e6ea7aad42fd0bcf2dc8f3e4f0996f60f3722a435c9c1ef7599da85', 'validated', '{"audio_key":"74da720f70ac9911e9bb89c193b19ebdaf4604d999cfbdc3aff5c6f4fb5054d7","entity_key":"u_what_im_doing_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ff07c6ec3e6ea7aad42fd0bcf2dc8f3e4f0996f60f3722a435c9c1ef7599da85","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/74da720f70ac9911e9bb89c193b19ebdaf4604d999cfbdc3aff5c6f4fb5054d7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_what_im_doing_02_listen -> audio/generated/tr-TR/utterances/74da720f70ac9911e9bb89c193b19ebdaf4604d999cfbdc3aff5c6f4fb5054d7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('c59f43dc-9535-5ef5-9993-26d0ba53b479', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_what_im_doing_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1625d421833289fb621c1fa044e79e45360c54aacbb22f86042625ed534d5e5b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('02b2a798-7aac-5221-8404-7bfccee93f19', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('c59f43dc-9535-5ef5-9993-26d0ba53b479', 1), '1625d421833289fb621c1fa044e79e45360c54aacbb22f86042625ed534d5e5b',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/74da720f70ac9911e9bb89c193b19ebdaf4604d999cfbdc3aff5c6f4fb5054d7.mp3', 1280, '2026-09-13 15:55:50.800132', 'ff07c6ec3e6ea7aad42fd0bcf2dc8f3e4f0996f60f3722a435c9c1ef7599da85', 'validated', '{"audio_key":"74da720f70ac9911e9bb89c193b19ebdaf4604d999cfbdc3aff5c6f4fb5054d7","entity_key":"e_what_im_doing_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ff07c6ec3e6ea7aad42fd0bcf2dc8f3e4f0996f60f3722a435c9c1ef7599da85","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/74da720f70ac9911e9bb89c193b19ebdaf4604d999cfbdc3aff5c6f4fb5054d7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_at_home_01 -> audio/generated/tr-TR/utterances/7fce274376e225f7f4abcca51614a63dbebfe3b95f55f11cbb0d035e621df4f3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('4e1ed135-027b-5df1-b419-e7281808fc82', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_at_home_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9ca194e0a833631f942c2ce1cd486e00af39e037ae98ea9502da84a7ca14001d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c5edba7b-e0d9-5108-9930-0c4b4a5723eb', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('4e1ed135-027b-5df1-b419-e7281808fc82', 1), '9ca194e0a833631f942c2ce1cd486e00af39e037ae98ea9502da84a7ca14001d',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/7fce274376e225f7f4abcca51614a63dbebfe3b95f55f11cbb0d035e621df4f3.mp3', 1515, '2026-09-13 15:55:50.758109', 'c5b8fb005db87e450d2afe21df9a27f1a157f00f0c1eb60c107f162b5bb0974d', 'validated', '{"audio_key":"7fce274376e225f7f4abcca51614a63dbebfe3b95f55f11cbb0d035e621df4f3","entity_key":"u_at_home_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c5b8fb005db87e450d2afe21df9a27f1a157f00f0c1eb60c107f162b5bb0974d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/7fce274376e225f7f4abcca51614a63dbebfe3b95f55f11cbb0d035e621df4f3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_my_family_04 -> audio/generated/tr-TR/utterances/815db0a533670dafd340b962062b14aa8092e6fa7d740dd80cbf6f577fffcc2b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('64464f1b-3ec6-5fe9-b84f-073c6dac180b', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_my_family_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2e3c2c338a58659136549bc9d79521ee688dec69565492721ff519efec25ae43'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2598a24f-1b14-5f54-8b61-6b9a89d781d5', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('64464f1b-3ec6-5fe9-b84f-073c6dac180b', 1), '2e3c2c338a58659136549bc9d79521ee688dec69565492721ff519efec25ae43',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/815db0a533670dafd340b962062b14aa8092e6fa7d740dd80cbf6f577fffcc2b.mp3', 1567, '2026-09-13 15:55:51.853197', 'bb22781a99589f2cc86066491b4a2ca6182a5be3aa7b9209e2dab45f29c79e5f', 'validated', '{"audio_key":"815db0a533670dafd340b962062b14aa8092e6fa7d740dd80cbf6f577fffcc2b","entity_key":"u_my_family_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bb22781a99589f2cc86066491b4a2ca6182a5be3aa7b9209e2dab45f29c79e5f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/815db0a533670dafd340b962062b14aa8092e6fa7d740dd80cbf6f577fffcc2b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_my_family_02_listen -> audio/generated/tr-TR/utterances/815db0a533670dafd340b962062b14aa8092e6fa7d740dd80cbf6f577fffcc2b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('cded7ba4-7610-522c-8ccd-052318a959f0', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_my_family_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2e3c2c338a58659136549bc9d79521ee688dec69565492721ff519efec25ae43'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('84834e0e-a520-54cb-9586-43228ac9b19b', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('cded7ba4-7610-522c-8ccd-052318a959f0', 1), '2e3c2c338a58659136549bc9d79521ee688dec69565492721ff519efec25ae43',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/815db0a533670dafd340b962062b14aa8092e6fa7d740dd80cbf6f577fffcc2b.mp3', 1567, '2026-09-13 15:55:51.853197', 'bb22781a99589f2cc86066491b4a2ca6182a5be3aa7b9209e2dab45f29c79e5f', 'validated', '{"audio_key":"815db0a533670dafd340b962062b14aa8092e6fa7d740dd80cbf6f577fffcc2b","entity_key":"e_my_family_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bb22781a99589f2cc86066491b4a2ca6182a5be3aa7b9209e2dab45f29c79e5f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/815db0a533670dafd340b962062b14aa8092e6fa7d740dd80cbf6f577fffcc2b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_what_im_doing_02 -> audio/generated/tr-TR/utterances/89e1c04aa3f31ab9131b5640a4fa2c4d8c54afa0d6ed0b43a03da8ec3b3f639c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f94086c1-1af7-59b1-8074-ca9fcf5a1054', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_what_im_doing_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9b19d1df00c69872ab97fc212e9d351dbe5b7b8e810d042e906e0ece8f2dcf2e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ef3e5f9d-66a8-5cc1-a2f7-3092134b67ee', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f94086c1-1af7-59b1-8074-ca9fcf5a1054', 1), '9b19d1df00c69872ab97fc212e9d351dbe5b7b8e810d042e906e0ece8f2dcf2e',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/89e1c04aa3f31ab9131b5640a4fa2c4d8c54afa0d6ed0b43a03da8ec3b3f639c.mp3', 1488, '2026-09-13 15:55:51.905692', 'd0a6fcca9e7333fcda0e1a65f141877639f4cd1fa8990219b446a327b586f7a5', 'validated', '{"audio_key":"89e1c04aa3f31ab9131b5640a4fa2c4d8c54afa0d6ed0b43a03da8ec3b3f639c","entity_key":"u_what_im_doing_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d0a6fcca9e7333fcda0e1a65f141877639f4cd1fa8990219b446a327b586f7a5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/89e1c04aa3f31ab9131b5640a4fa2c4d8c54afa0d6ed0b43a03da8ec3b3f639c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_what_im_doing_01_listen -> audio/generated/tr-TR/utterances/89e1c04aa3f31ab9131b5640a4fa2c4d8c54afa0d6ed0b43a03da8ec3b3f639c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('6608e7cf-4b78-589e-9dd6-879782c1258a', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_what_im_doing_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9b19d1df00c69872ab97fc212e9d351dbe5b7b8e810d042e906e0ece8f2dcf2e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3662b6f3-6be2-52e4-ba62-66267939c8b8', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('6608e7cf-4b78-589e-9dd6-879782c1258a', 1), '9b19d1df00c69872ab97fc212e9d351dbe5b7b8e810d042e906e0ece8f2dcf2e',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/89e1c04aa3f31ab9131b5640a4fa2c4d8c54afa0d6ed0b43a03da8ec3b3f639c.mp3', 1488, '2026-09-13 15:55:51.905692', 'd0a6fcca9e7333fcda0e1a65f141877639f4cd1fa8990219b446a327b586f7a5', 'validated', '{"audio_key":"89e1c04aa3f31ab9131b5640a4fa2c4d8c54afa0d6ed0b43a03da8ec3b3f639c","entity_key":"e_what_im_doing_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d0a6fcca9e7333fcda0e1a65f141877639f4cd1fa8990219b446a327b586f7a5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/89e1c04aa3f31ab9131b5640a4fa2c4d8c54afa0d6ed0b43a03da8ec3b3f639c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_my_family_03 -> audio/generated/tr-TR/utterances/8ba19be8cc77c116b71752df55edcfefc2d8a5ff92ef3ced19d9639d3218b4ff.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('00d4b18e-48ae-5759-ad38-18bba5cb0f4b', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_my_family_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e27b3240ee5a99639d85dcd37d7ec9942697d342dce45d004c3d95e08bb7f90e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8f6e429c-3599-58a8-8c38-d8c3a3062168', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('00d4b18e-48ae-5759-ad38-18bba5cb0f4b', 1), 'e27b3240ee5a99639d85dcd37d7ec9942697d342dce45d004c3d95e08bb7f90e',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/8ba19be8cc77c116b71752df55edcfefc2d8a5ff92ef3ced19d9639d3218b4ff.mp3', 1619, '2026-09-13 15:55:52.948639', '9a695e568cd48e194296be75f1293f49c11d8522132ac84ab4bec009dad27e27', 'validated', '{"audio_key":"8ba19be8cc77c116b71752df55edcfefc2d8a5ff92ef3ced19d9639d3218b4ff","entity_key":"u_my_family_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9a695e568cd48e194296be75f1293f49c11d8522132ac84ab4bec009dad27e27","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/8ba19be8cc77c116b71752df55edcfefc2d8a5ff92ef3ced19d9639d3218b4ff.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_a1_first_day_capstone_02 -> audio/generated/tr-TR/utterances/8ed917d7f64740618d045d2db84497ae69684765b8913afff992e555a7dcda9f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a7f71bcf-b606-5162-ab9e-d9e69642b631', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_a1_first_day_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f531fba455f7518e62081ffc52dd9227a261af3ba8d43323a2728a70cb5105e1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('446d41fc-2368-59f9-8dde-52df0eb4658c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a7f71bcf-b606-5162-ab9e-d9e69642b631', 1), 'f531fba455f7518e62081ffc52dd9227a261af3ba8d43323a2728a70cb5105e1',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/8ed917d7f64740618d045d2db84497ae69684765b8913afff992e555a7dcda9f.mp3', 1280, '2026-09-13 15:55:52.980876', '3077adbce13f05e96008d4e1da8011c073ad260bee56eca0da5ca675e92fb89c', 'validated', '{"audio_key":"8ed917d7f64740618d045d2db84497ae69684765b8913afff992e555a7dcda9f","entity_key":"u_a1_first_day_capstone_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3077adbce13f05e96008d4e1da8011c073ad260bee56eca0da5ca675e92fb89c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/8ed917d7f64740618d045d2db84497ae69684765b8913afff992e555a7dcda9f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_a1_first_day_capstone_01_listen -> audio/generated/tr-TR/utterances/8ed917d7f64740618d045d2db84497ae69684765b8913afff992e555a7dcda9f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('a693460e-d98d-57a4-8102-27ebd636a97f', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_a1_first_day_capstone_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f531fba455f7518e62081ffc52dd9227a261af3ba8d43323a2728a70cb5105e1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e584dc7d-76ac-57bb-a343-0a921f52f079', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('a693460e-d98d-57a4-8102-27ebd636a97f', 1), 'f531fba455f7518e62081ffc52dd9227a261af3ba8d43323a2728a70cb5105e1',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/8ed917d7f64740618d045d2db84497ae69684765b8913afff992e555a7dcda9f.mp3', 1280, '2026-09-13 15:55:52.980876', '3077adbce13f05e96008d4e1da8011c073ad260bee56eca0da5ca675e92fb89c', 'validated', '{"audio_key":"8ed917d7f64740618d045d2db84497ae69684765b8913afff992e555a7dcda9f","entity_key":"e_a1_first_day_capstone_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3077adbce13f05e96008d4e1da8011c073ad260bee56eca0da5ca675e92fb89c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/8ed917d7f64740618d045d2db84497ae69684765b8913afff992e555a7dcda9f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_this_and_these_02 -> audio/generated/tr-TR/utterances/94cf63712ea7ae04ddd976e375f5142154af3d8539c4efa6741758ae2ad9dda7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d7e7d26c-d5d0-5990-b598-a07d27540dd5', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_this_and_these_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b1a019e94079880e60574dfa33b9feff41ae740a4267adcdcd14b59608b2ddf2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6df8da22-240d-54f2-9cc1-e08a41ca4b7f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d7e7d26c-d5d0-5990-b598-a07d27540dd5', 1), 'b1a019e94079880e60574dfa33b9feff41ae740a4267adcdcd14b59608b2ddf2',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/94cf63712ea7ae04ddd976e375f5142154af3d8539c4efa6741758ae2ad9dda7.mp3', 1436, '2026-09-13 15:55:54.108322', 'ce307c7cc5a1bdd4bceb6acc1122bbea3a98514a909b76593f98c3b73951b4df', 'validated', '{"audio_key":"94cf63712ea7ae04ddd976e375f5142154af3d8539c4efa6741758ae2ad9dda7","entity_key":"u_this_and_these_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ce307c7cc5a1bdd4bceb6acc1122bbea3a98514a909b76593f98c3b73951b4df","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/94cf63712ea7ae04ddd976e375f5142154af3d8539c4efa6741758ae2ad9dda7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_this_and_these_01_listen -> audio/generated/tr-TR/utterances/94cf63712ea7ae04ddd976e375f5142154af3d8539c4efa6741758ae2ad9dda7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('119ddf1f-6526-589f-bdd4-714585933a06', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_this_and_these_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b1a019e94079880e60574dfa33b9feff41ae740a4267adcdcd14b59608b2ddf2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('77b202c2-b001-55bb-9617-bce25c77a9ee', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('119ddf1f-6526-589f-bdd4-714585933a06', 1), 'b1a019e94079880e60574dfa33b9feff41ae740a4267adcdcd14b59608b2ddf2',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/94cf63712ea7ae04ddd976e375f5142154af3d8539c4efa6741758ae2ad9dda7.mp3', 1436, '2026-09-13 15:55:54.108322', 'ce307c7cc5a1bdd4bceb6acc1122bbea3a98514a909b76593f98c3b73951b4df', 'validated', '{"audio_key":"94cf63712ea7ae04ddd976e375f5142154af3d8539c4efa6741758ae2ad9dda7","entity_key":"e_this_and_these_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ce307c7cc5a1bdd4bceb6acc1122bbea3a98514a909b76593f98c3b73951b4df","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/94cf63712ea7ae04ddd976e375f5142154af3d8539c4efa6741758ae2ad9dda7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_who_i_am_04 -> audio/generated/tr-TR/utterances/9a2097ca9885030dbd4d3a81edb0bd0992ee9af4a58fef650ba8fb6fae25c6c5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a42e5651-f2c0-58a2-85c4-d2d8f30f68c6', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_who_i_am_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f410bd417b61d335cb70725ecbb6cde697d16116cba03e4c09e612ded7a2259e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e1ccecd6-be2a-5091-b764-5c07807e8438', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a42e5651-f2c0-58a2-85c4-d2d8f30f68c6', 1), 'f410bd417b61d335cb70725ecbb6cde697d16116cba03e4c09e612ded7a2259e',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/9a2097ca9885030dbd4d3a81edb0bd0992ee9af4a58fef650ba8fb6fae25c6c5.mp3', 1802, '2026-09-13 15:55:54.178057', '1c66bcc0b740cdd6b4178efd6af1d43ed2c3a266311a4e64baf0f72ba962b1d6', 'validated', '{"audio_key":"9a2097ca9885030dbd4d3a81edb0bd0992ee9af4a58fef650ba8fb6fae25c6c5","entity_key":"u_who_i_am_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1c66bcc0b740cdd6b4178efd6af1d43ed2c3a266311a4e64baf0f72ba962b1d6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/9a2097ca9885030dbd4d3a81edb0bd0992ee9af4a58fef650ba8fb6fae25c6c5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_who_i_am_02_listen -> audio/generated/tr-TR/utterances/9a2097ca9885030dbd4d3a81edb0bd0992ee9af4a58fef650ba8fb6fae25c6c5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('eba08b41-c4cd-5cc7-8928-c8e868f47caf', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_who_i_am_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f410bd417b61d335cb70725ecbb6cde697d16116cba03e4c09e612ded7a2259e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('63475e18-2ebf-51a4-b6cd-4c9948fb7ecd', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('eba08b41-c4cd-5cc7-8928-c8e868f47caf', 1), 'f410bd417b61d335cb70725ecbb6cde697d16116cba03e4c09e612ded7a2259e',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/9a2097ca9885030dbd4d3a81edb0bd0992ee9af4a58fef650ba8fb6fae25c6c5.mp3', 1802, '2026-09-13 15:55:54.178057', '1c66bcc0b740cdd6b4178efd6af1d43ed2c3a266311a4e64baf0f72ba962b1d6', 'validated', '{"audio_key":"9a2097ca9885030dbd4d3a81edb0bd0992ee9af4a58fef650ba8fb6fae25c6c5","entity_key":"e_who_i_am_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1c66bcc0b740cdd6b4178efd6af1d43ed2c3a266311a4e64baf0f72ba962b1d6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/9a2097ca9885030dbd4d3a81edb0bd0992ee9af4a58fef650ba8fb6fae25c6c5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_who_i_am_03 -> audio/generated/tr-TR/utterances/a0923bb5aa9f29061f5afb96f78d074b35140fb3430527ad44a05e7d574cb9ae.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('cbe05f24-61ee-5069-8d58-95e9fa64ca79', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_who_i_am_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9ed938b7276b68c66ba2b8b760e40d3c778ff43d021aa34c7cad7e8ae1520b18'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fa9575e2-3ea1-54d6-aa28-9abaafd27494', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('cbe05f24-61ee-5069-8d58-95e9fa64ca79', 1), '9ed938b7276b68c66ba2b8b760e40d3c778ff43d021aa34c7cad7e8ae1520b18',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/a0923bb5aa9f29061f5afb96f78d074b35140fb3430527ad44a05e7d574cb9ae.mp3', 1567, '2026-09-13 15:55:55.250795', '386eb348ee32a505a9ee9f3520eb7f39b43a31a8729cbad7a60a57ad13aff352', 'validated', '{"audio_key":"a0923bb5aa9f29061f5afb96f78d074b35140fb3430527ad44a05e7d574cb9ae","entity_key":"u_who_i_am_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"386eb348ee32a505a9ee9f3520eb7f39b43a31a8729cbad7a60a57ad13aff352","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/a0923bb5aa9f29061f5afb96f78d074b35140fb3430527ad44a05e7d574cb9ae.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_this_and_these_01 -> audio/generated/tr-TR/utterances/a1f59a507290f5090fbf16100119033ab466bf0b464bc9bd72b6a9fbd1f6bd0b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ba72ef6d-b1b3-5034-9c0d-f66396d998e5', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_this_and_these_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eb3a780fc070e0fc744a29cc33f54c55d1504eb24456524c2d338acb9b23d3ef'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f439e4a9-6276-50c5-a786-157d26ac5c8c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ba72ef6d-b1b3-5034-9c0d-f66396d998e5', 1), 'eb3a780fc070e0fc744a29cc33f54c55d1504eb24456524c2d338acb9b23d3ef',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/a1f59a507290f5090fbf16100119033ab466bf0b464bc9bd72b6a9fbd1f6bd0b.mp3', 1097, '2026-09-13 15:55:55.210000', '1b2322b298293de64f6bde45044ba4ff695788af9383cb30893e15d5528096f6', 'validated', '{"audio_key":"a1f59a507290f5090fbf16100119033ab466bf0b464bc9bd72b6a9fbd1f6bd0b","entity_key":"u_this_and_these_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1b2322b298293de64f6bde45044ba4ff695788af9383cb30893e15d5528096f6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/a1f59a507290f5090fbf16100119033ab466bf0b464bc9bd72b6a9fbd1f6bd0b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_time_and_plans_02 -> audio/generated/tr-TR/utterances/b2c34a192cfdb30aba12ba96dce7cd5f115d579018ecf0728f8ce3c59bb5e6cc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('aaa933b0-7137-5a6c-99c5-1ba8c1643d90', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_time_and_plans_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '01811b1c39b89652b83f823c9233b14cf5cb8553f5a371e36253780800739635'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('251fd129-ff43-5b11-a982-07c45e2a5937', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('aaa933b0-7137-5a6c-99c5-1ba8c1643d90', 1), '01811b1c39b89652b83f823c9233b14cf5cb8553f5a371e36253780800739635',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/b2c34a192cfdb30aba12ba96dce7cd5f115d579018ecf0728f8ce3c59bb5e6cc.mp3', 1149, '2026-09-13 15:55:56.421064', '8d8d8b1d708aed3fc1ea94f700217287892c52ddc7dd7270fa19868ab98bf9af', 'validated', '{"audio_key":"b2c34a192cfdb30aba12ba96dce7cd5f115d579018ecf0728f8ce3c59bb5e6cc","entity_key":"u_time_and_plans_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8d8d8b1d708aed3fc1ea94f700217287892c52ddc7dd7270fa19868ab98bf9af","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/b2c34a192cfdb30aba12ba96dce7cd5f115d579018ecf0728f8ce3c59bb5e6cc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_time_and_plans_01_listen -> audio/generated/tr-TR/utterances/b2c34a192cfdb30aba12ba96dce7cd5f115d579018ecf0728f8ce3c59bb5e6cc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('fee8fd8b-3d2c-5bd9-82ae-474cb9be209a', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_time_and_plans_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '01811b1c39b89652b83f823c9233b14cf5cb8553f5a371e36253780800739635'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b59cd3b3-6d51-58b2-bdeb-550abbaeefcb', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('fee8fd8b-3d2c-5bd9-82ae-474cb9be209a', 1), '01811b1c39b89652b83f823c9233b14cf5cb8553f5a371e36253780800739635',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/b2c34a192cfdb30aba12ba96dce7cd5f115d579018ecf0728f8ce3c59bb5e6cc.mp3', 1149, '2026-09-13 15:55:56.421064', '8d8d8b1d708aed3fc1ea94f700217287892c52ddc7dd7270fa19868ab98bf9af', 'validated', '{"audio_key":"b2c34a192cfdb30aba12ba96dce7cd5f115d579018ecf0728f8ce3c59bb5e6cc","entity_key":"e_time_and_plans_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8d8d8b1d708aed3fc1ea94f700217287892c52ddc7dd7270fa19868ab98bf9af","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/b2c34a192cfdb30aba12ba96dce7cd5f115d579018ecf0728f8ce3c59bb5e6cc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_getting_around_03 -> audio/generated/tr-TR/utterances/b3f67719880d3edb95dd3379eb01d87f5f5a05686a9f7e756089fab888d56665.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b3a61177-2e60-5012-b780-b70e5ce946e1', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_getting_around_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '44ec6b89ebef4da05c6e002695a34b8be511df7ae4634cc3681498e016c0662e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d3a3c0e2-9f46-5029-9f19-0b1dff83b141', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b3a61177-2e60-5012-b780-b70e5ce946e1', 1), '44ec6b89ebef4da05c6e002695a34b8be511df7ae4634cc3681498e016c0662e',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/b3f67719880d3edb95dd3379eb01d87f5f5a05686a9f7e756089fab888d56665.mp3', 1201, '2026-09-13 15:55:56.421967', '03f54c059066c9292099c12816bc146c584e42298e76a070223f45d630173d8a', 'validated', '{"audio_key":"b3f67719880d3edb95dd3379eb01d87f5f5a05686a9f7e756089fab888d56665","entity_key":"u_getting_around_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"03f54c059066c9292099c12816bc146c584e42298e76a070223f45d630173d8a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/b3f67719880d3edb95dd3379eb01d87f5f5a05686a9f7e756089fab888d56665.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_at_the_cafe_04 -> audio/generated/tr-TR/utterances/beeb0ee6cd2446e11e6495fa456e419ca7ececb5809ab25ece638de696c8bf50.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ff51f468-d9b8-5736-9a7a-708856d7eedb', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_at_the_cafe_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '580101d35023ee8abba7bf8d5ad38610cf050d25f94fb45939920cc318be428b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('81d3fef4-5210-516f-818e-1f55e614d724', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ff51f468-d9b8-5736-9a7a-708856d7eedb', 1), '580101d35023ee8abba7bf8d5ad38610cf050d25f94fb45939920cc318be428b',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/beeb0ee6cd2446e11e6495fa456e419ca7ececb5809ab25ece638de696c8bf50.mp3', 1619, '2026-09-13 15:55:57.562672', 'e66a92dae565f14bf04ebb16d1cf12a666a0947a88d6edba4f3f2a369215f30e', 'validated', '{"audio_key":"beeb0ee6cd2446e11e6495fa456e419ca7ececb5809ab25ece638de696c8bf50","entity_key":"u_at_the_cafe_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e66a92dae565f14bf04ebb16d1cf12a666a0947a88d6edba4f3f2a369215f30e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/beeb0ee6cd2446e11e6495fa456e419ca7ececb5809ab25ece638de696c8bf50.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_at_the_cafe_02_listen -> audio/generated/tr-TR/utterances/beeb0ee6cd2446e11e6495fa456e419ca7ececb5809ab25ece638de696c8bf50.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('94de61ab-5366-56d3-b415-c69534d5df17', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_at_the_cafe_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '580101d35023ee8abba7bf8d5ad38610cf050d25f94fb45939920cc318be428b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('33332831-52bc-5175-9d26-9363af774456', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('94de61ab-5366-56d3-b415-c69534d5df17', 1), '580101d35023ee8abba7bf8d5ad38610cf050d25f94fb45939920cc318be428b',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/beeb0ee6cd2446e11e6495fa456e419ca7ececb5809ab25ece638de696c8bf50.mp3', 1619, '2026-09-13 15:55:57.562672', 'e66a92dae565f14bf04ebb16d1cf12a666a0947a88d6edba4f3f2a369215f30e', 'validated', '{"audio_key":"beeb0ee6cd2446e11e6495fa456e419ca7ececb5809ab25ece638de696c8bf50","entity_key":"e_at_the_cafe_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e66a92dae565f14bf04ebb16d1cf12a666a0947a88d6edba4f3f2a369215f30e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/beeb0ee6cd2446e11e6495fa456e419ca7ececb5809ab25ece638de696c8bf50.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_at_home_04 -> audio/generated/tr-TR/utterances/c26a004d785380c2dcba0fb596fcaf2f40d3570642671ce4a562e55b737bb3b7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3f945f2e-ab5f-537b-b0cc-4f6edcbed4e1', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_at_home_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0b3b7a474110f31e02d45b21765c8b65c0db53900bf345dd2859a9a115e4d3c7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('55afcc40-c44c-51ed-a5ca-01457d7ae529', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3f945f2e-ab5f-537b-b0cc-4f6edcbed4e1', 1), '0b3b7a474110f31e02d45b21765c8b65c0db53900bf345dd2859a9a115e4d3c7',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/c26a004d785380c2dcba0fb596fcaf2f40d3570642671ce4a562e55b737bb3b7.mp3', 1515, '2026-09-13 15:55:57.487285', '2e3635165652907711aa47fd01b116d9b4744b90ba26828ddd828d00b18cc724', 'validated', '{"audio_key":"c26a004d785380c2dcba0fb596fcaf2f40d3570642671ce4a562e55b737bb3b7","entity_key":"u_at_home_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2e3635165652907711aa47fd01b116d9b4744b90ba26828ddd828d00b18cc724","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/c26a004d785380c2dcba0fb596fcaf2f40d3570642671ce4a562e55b737bb3b7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_at_home_02_listen -> audio/generated/tr-TR/utterances/c26a004d785380c2dcba0fb596fcaf2f40d3570642671ce4a562e55b737bb3b7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('0c408f06-6815-5b83-854c-cc907d44074b', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_at_home_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0b3b7a474110f31e02d45b21765c8b65c0db53900bf345dd2859a9a115e4d3c7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9c1e655b-ee99-54ed-9c3c-c0f5dce2d355', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('0c408f06-6815-5b83-854c-cc907d44074b', 1), '0b3b7a474110f31e02d45b21765c8b65c0db53900bf345dd2859a9a115e4d3c7',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/c26a004d785380c2dcba0fb596fcaf2f40d3570642671ce4a562e55b737bb3b7.mp3', 1515, '2026-09-13 15:55:57.487285', '2e3635165652907711aa47fd01b116d9b4744b90ba26828ddd828d00b18cc724', 'validated', '{"audio_key":"c26a004d785380c2dcba0fb596fcaf2f40d3570642671ce4a562e55b737bb3b7","entity_key":"e_at_home_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2e3635165652907711aa47fd01b116d9b4744b90ba26828ddd828d00b18cc724","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/c26a004d785380c2dcba0fb596fcaf2f40d3570642671ce4a562e55b737bb3b7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_getting_around_02 -> audio/generated/tr-TR/utterances/c321c605945dca498b5aa97ba3deddb5bb6bef7a02d67738a9311719d5b36677.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('52c6d4be-c271-539f-bdb8-689c46cbf544', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_getting_around_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd0edb0c71c3a0718fcca8af966272a8694a2c71a4c30d3b77b3e9fe5646d54d1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f6c6b8dc-cc94-5a84-b1a8-83d53b2518c9', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('52c6d4be-c271-539f-bdb8-689c46cbf544', 1), 'd0edb0c71c3a0718fcca8af966272a8694a2c71a4c30d3b77b3e9fe5646d54d1',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/c321c605945dca498b5aa97ba3deddb5bb6bef7a02d67738a9311719d5b36677.mp3', 1253, '2026-09-13 15:55:58.568430', '8a8972c7a193ccb6cbd7060159712d4566329e8c25e0ba50a0d72d6e41eb686c', 'validated', '{"audio_key":"c321c605945dca498b5aa97ba3deddb5bb6bef7a02d67738a9311719d5b36677","entity_key":"u_getting_around_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8a8972c7a193ccb6cbd7060159712d4566329e8c25e0ba50a0d72d6e41eb686c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/c321c605945dca498b5aa97ba3deddb5bb6bef7a02d67738a9311719d5b36677.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_getting_around_01_listen -> audio/generated/tr-TR/utterances/c321c605945dca498b5aa97ba3deddb5bb6bef7a02d67738a9311719d5b36677.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('0a5b0917-5cc3-5977-ad04-e23107b671e0', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_getting_around_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd0edb0c71c3a0718fcca8af966272a8694a2c71a4c30d3b77b3e9fe5646d54d1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1dab2f70-349e-5b66-9603-0e0b04e4088a', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('0a5b0917-5cc3-5977-ad04-e23107b671e0', 1), 'd0edb0c71c3a0718fcca8af966272a8694a2c71a4c30d3b77b3e9fe5646d54d1',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/c321c605945dca498b5aa97ba3deddb5bb6bef7a02d67738a9311719d5b36677.mp3', 1253, '2026-09-13 15:55:58.568430', '8a8972c7a193ccb6cbd7060159712d4566329e8c25e0ba50a0d72d6e41eb686c', 'validated', '{"audio_key":"c321c605945dca498b5aa97ba3deddb5bb6bef7a02d67738a9311719d5b36677","entity_key":"e_getting_around_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8a8972c7a193ccb6cbd7060159712d4566329e8c25e0ba50a0d72d6e41eb686c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/c321c605945dca498b5aa97ba3deddb5bb6bef7a02d67738a9311719d5b36677.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_shopping_basics_02 -> audio/generated/tr-TR/utterances/c9380c0c2a0e982e2ec35b19751381f1965092d0582428f0317857c6b497c31f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('795c3f84-21ca-5d7d-b76f-af42e74d6296', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_shopping_basics_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aff14dfaa0522af23a094ed4b501ff4cbabfec734af6427fccdd16fe63f1f730'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2cebb278-f441-5e44-966f-c3ac5430b4e1', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('795c3f84-21ca-5d7d-b76f-af42e74d6296', 1), 'aff14dfaa0522af23a094ed4b501ff4cbabfec734af6427fccdd16fe63f1f730',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/c9380c0c2a0e982e2ec35b19751381f1965092d0582428f0317857c6b497c31f.mp3', 1097, '2026-09-13 15:55:58.615350', '0a9fd8ca6066e2587906f4ca2b844b8f757be5934f9b1ec999d2b0402ed4746d', 'validated', '{"audio_key":"c9380c0c2a0e982e2ec35b19751381f1965092d0582428f0317857c6b497c31f","entity_key":"u_shopping_basics_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0a9fd8ca6066e2587906f4ca2b844b8f757be5934f9b1ec999d2b0402ed4746d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/c9380c0c2a0e982e2ec35b19751381f1965092d0582428f0317857c6b497c31f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_shopping_basics_01_listen -> audio/generated/tr-TR/utterances/c9380c0c2a0e982e2ec35b19751381f1965092d0582428f0317857c6b497c31f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('db7148a0-0437-5ff4-a955-664566a30912', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_shopping_basics_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aff14dfaa0522af23a094ed4b501ff4cbabfec734af6427fccdd16fe63f1f730'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('63e654ee-5c70-5c32-b56c-f46bcd5eefcf', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('db7148a0-0437-5ff4-a955-664566a30912', 1), 'aff14dfaa0522af23a094ed4b501ff4cbabfec734af6427fccdd16fe63f1f730',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/c9380c0c2a0e982e2ec35b19751381f1965092d0582428f0317857c6b497c31f.mp3', 1097, '2026-09-13 15:55:58.615350', '0a9fd8ca6066e2587906f4ca2b844b8f757be5934f9b1ec999d2b0402ed4746d', 'validated', '{"audio_key":"c9380c0c2a0e982e2ec35b19751381f1965092d0582428f0317857c6b497c31f","entity_key":"e_shopping_basics_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0a9fd8ca6066e2587906f4ca2b844b8f757be5934f9b1ec999d2b0402ed4746d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/c9380c0c2a0e982e2ec35b19751381f1965092d0582428f0317857c6b497c31f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_who_i_am_02 -> audio/generated/tr-TR/utterances/da7b87fda0cfcda0edbbb73c8300ec1dc1e541c5447b6cee0aee26854ecadabc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d323af78-806c-504d-afca-08d803cec47c', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_who_i_am_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '02257740d495b8f0ff840162fa9dfe9e7b44c2e4eb7d9edd79a2a725f2bf671c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ab96936a-6141-5c1d-bb59-77115abe537f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d323af78-806c-504d-afca-08d803cec47c', 1), '02257740d495b8f0ff840162fa9dfe9e7b44c2e4eb7d9edd79a2a725f2bf671c',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/da7b87fda0cfcda0edbbb73c8300ec1dc1e541c5447b6cee0aee26854ecadabc.mp3', 1671, '2026-09-13 15:55:59.745089', 'd93a988072166286c0e907d40f30da33eaef5a291613fdc071b83374462ba2c4', 'validated', '{"audio_key":"da7b87fda0cfcda0edbbb73c8300ec1dc1e541c5447b6cee0aee26854ecadabc","entity_key":"u_who_i_am_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d93a988072166286c0e907d40f30da33eaef5a291613fdc071b83374462ba2c4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/da7b87fda0cfcda0edbbb73c8300ec1dc1e541c5447b6cee0aee26854ecadabc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_who_i_am_01_listen -> audio/generated/tr-TR/utterances/da7b87fda0cfcda0edbbb73c8300ec1dc1e541c5447b6cee0aee26854ecadabc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('6effc91c-2c4d-5868-af50-f4d954cba5d0', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_who_i_am_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '02257740d495b8f0ff840162fa9dfe9e7b44c2e4eb7d9edd79a2a725f2bf671c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b984826c-3f88-5371-8aba-4087261de29e', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('6effc91c-2c4d-5868-af50-f4d954cba5d0', 1), '02257740d495b8f0ff840162fa9dfe9e7b44c2e4eb7d9edd79a2a725f2bf671c',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/da7b87fda0cfcda0edbbb73c8300ec1dc1e541c5447b6cee0aee26854ecadabc.mp3', 1671, '2026-09-13 15:55:59.745089', 'd93a988072166286c0e907d40f30da33eaef5a291613fdc071b83374462ba2c4', 'validated', '{"audio_key":"da7b87fda0cfcda0edbbb73c8300ec1dc1e541c5447b6cee0aee26854ecadabc","entity_key":"e_who_i_am_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d93a988072166286c0e907d40f30da33eaef5a291613fdc071b83374462ba2c4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/da7b87fda0cfcda0edbbb73c8300ec1dc1e541c5447b6cee0aee26854ecadabc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_this_and_these_03 -> audio/generated/tr-TR/utterances/ddfce4ef6322982a38cb53d4f17323908d33b8d05319a6fa1aebbda2a73fa259.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('bf699556-9b4d-50f6-ba6f-931718f14ce2', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_this_and_these_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9e19a3656626e875559e0dce8767d89ccd3104b1066b14b7efb5fb69fa517b07'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c8626ef5-3b24-5dc5-9ff2-502c58d3ba34', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('bf699556-9b4d-50f6-ba6f-931718f14ce2', 1), '9e19a3656626e875559e0dce8767d89ccd3104b1066b14b7efb5fb69fa517b07',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/ddfce4ef6322982a38cb53d4f17323908d33b8d05319a6fa1aebbda2a73fa259.mp3', 1567, '2026-09-13 15:55:59.725308', '987aaa4fc131da22cc27670a49b3f02d9e7ca166de58714060665da137ff43be', 'validated', '{"audio_key":"ddfce4ef6322982a38cb53d4f17323908d33b8d05319a6fa1aebbda2a73fa259","entity_key":"u_this_and_these_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"987aaa4fc131da22cc27670a49b3f02d9e7ca166de58714060665da137ff43be","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/ddfce4ef6322982a38cb53d4f17323908d33b8d05319a6fa1aebbda2a73fa259.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_who_i_am_01 -> audio/generated/tr-TR/utterances/f2efc4699c6ea7bd0065d741d4fdab3be920df6a262f6905bf73b414af4e35cc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a87fd5e4-252c-51d7-a565-5fa1a669f015', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_who_i_am_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b2a41acebccf74a1aa522676aceec93768a9919ac0a0ea59f0cecc588a6c31fe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9916a92b-7779-5b2d-a601-65fb600b0a2c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a87fd5e4-252c-51d7-a565-5fa1a669f015', 1), 'b2a41acebccf74a1aa522676aceec93768a9919ac0a0ea59f0cecc588a6c31fe',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/f2efc4699c6ea7bd0065d741d4fdab3be920df6a262f6905bf73b414af4e35cc.mp3', 1567, '2026-09-13 15:56:00.831721', '443c419921fad177b0263669c92f24ae6a753043f2405c479b5e694798f7fff0', 'validated', '{"audio_key":"f2efc4699c6ea7bd0065d741d4fdab3be920df6a262f6905bf73b414af4e35cc","entity_key":"u_who_i_am_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"443c419921fad177b0263669c92f24ae6a753043f2405c479b5e694798f7fff0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/f2efc4699c6ea7bd0065d741d4fdab3be920df6a262f6905bf73b414af4e35cc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_at_home_02 -> audio/generated/tr-TR/utterances/f4fd3f3181fea69eec5a3721f846c362cb0789853a5832e59d1a0a97403cd178.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('75087c6f-a26a-541c-94d1-6efe2279294f', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_at_home_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3bff75616c10502441151cb846209a33269b5cbb7df09bf49ba8000f492563f6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d476f788-a0e1-54f5-be05-b3b2a114de1d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('75087c6f-a26a-541c-94d1-6efe2279294f', 1), '3bff75616c10502441151cb846209a33269b5cbb7df09bf49ba8000f492563f6',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/f4fd3f3181fea69eec5a3721f846c362cb0789853a5832e59d1a0a97403cd178.mp3', 1280, '2026-09-13 15:56:00.813298', '2397da228be93a1f14624ac7f687ed8ab3609f8158652b7b5d3d7eef64f628d1', 'validated', '{"audio_key":"f4fd3f3181fea69eec5a3721f846c362cb0789853a5832e59d1a0a97403cd178","entity_key":"u_at_home_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2397da228be93a1f14624ac7f687ed8ab3609f8158652b7b5d3d7eef64f628d1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/f4fd3f3181fea69eec5a3721f846c362cb0789853a5832e59d1a0a97403cd178.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_at_home_01_listen -> audio/generated/tr-TR/utterances/f4fd3f3181fea69eec5a3721f846c362cb0789853a5832e59d1a0a97403cd178.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('627b5bde-a1cb-5151-b97f-23f21e556df9', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_at_home_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3bff75616c10502441151cb846209a33269b5cbb7df09bf49ba8000f492563f6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('087648ff-10c9-51bc-9969-ecee5a255950', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('627b5bde-a1cb-5151-b97f-23f21e556df9', 1), '3bff75616c10502441151cb846209a33269b5cbb7df09bf49ba8000f492563f6',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/f4fd3f3181fea69eec5a3721f846c362cb0789853a5832e59d1a0a97403cd178.mp3', 1280, '2026-09-13 15:56:00.813298', '2397da228be93a1f14624ac7f687ed8ab3609f8158652b7b5d3d7eef64f628d1', 'validated', '{"audio_key":"f4fd3f3181fea69eec5a3721f846c362cb0789853a5832e59d1a0a97403cd178","entity_key":"e_at_home_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2397da228be93a1f14624ac7f687ed8ab3609f8158652b7b5d3d7eef64f628d1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/f4fd3f3181fea69eec5a3721f846c362cb0789853a5832e59d1a0a97403cd178.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_a1_first_day_capstone_01 -> audio/generated/tr-TR/utterances/ffa31ce3ec9d3ee0db631180a36e8030dd4cf1f322697dcb04dfed3e30a77b61.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('82fa6b19-2fec-525a-af58-12e0ad7b0554', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_a1_first_day_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6108fcc7f3dfd7d09a9c10a32959165b3514f4af4bf52c03f26aa3218e5a3818'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3a39415b-015b-5792-905e-7aa73a049294', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('82fa6b19-2fec-525a-af58-12e0ad7b0554', 1), '6108fcc7f3dfd7d09a9c10a32959165b3514f4af4bf52c03f26aa3218e5a3818',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/ffa31ce3ec9d3ee0db631180a36e8030dd4cf1f322697dcb04dfed3e30a77b61.mp3', 1567, '2026-09-13 15:56:01.903295', '84e3510d7366eaed638a96f0b0039a8083293ef808107e4de9adf7b22f63f2d4', 'validated', '{"audio_key":"ffa31ce3ec9d3ee0db631180a36e8030dd4cf1f322697dcb04dfed3e30a77b61","entity_key":"u_a1_first_day_capstone_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"84e3510d7366eaed638a96f0b0039a8083293ef808107e4de9adf7b22f63f2d4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/ffa31ce3ec9d3ee0db631180a36e8030dd4cf1f322697dcb04dfed3e30a77b61.mp3"}'
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

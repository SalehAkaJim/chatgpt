-- Generated audio link import for tr-TR Pre-A1
-- Source manifest: audio/manifests/tr/Pre-A1.json
-- Generated rows: 308
-- Storage mode: relative_path
-- storage_url is intentionally portable; prepend your server/CDN base URL at runtime.
-- Run AFTER the matching level content import.
SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci;
SET time_zone = '+00:00';
SET @audio_language_id = (SELECT id FROM languages WHERE code = 'tr' LIMIT 1);
SET @audio_variant_id = (SELECT id FROM language_variants WHERE code = 'tr-TR' LIMIT 1);
START TRANSACTION;

-- d_polite_words_01:4 -> audio/generated/tr-TR/dialogues/007bbfe6af03f6bcbb414d87f2f9eb22930a17ad7d14efdc745dbf7e80234660.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9c82affa-c5ea-5b62-bd20-1d7cd09ea53d', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_polite_words_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '038fa7679f76611b069f259f6f78807a0622ae44bd4f181dabe67dc7b01048e5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ce31296b-0989-5564-9697-e7269af9a901', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9c82affa-c5ea-5b62-bd20-1d7cd09ea53d', 1), '038fa7679f76611b069f259f6f78807a0622ae44bd4f181dabe67dc7b01048e5',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/007bbfe6af03f6bcbb414d87f2f9eb22930a17ad7d14efdc745dbf7e80234660.mp3', 1097, '2026-09-13 15:16:14.398219', '383f7ed22bfa28d8268cb610418222605e9847a165a76373fa80ad7ee278bcc0', 'validated', '{"audio_key":"007bbfe6af03f6bcbb414d87f2f9eb22930a17ad7d14efdc745dbf7e80234660","entity_key":"d_polite_words_01:4","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"383f7ed22bfa28d8268cb610418222605e9847a165a76373fa80ad7ee278bcc0","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/007bbfe6af03f6bcbb414d87f2f9eb22930a17ad7d14efdc745dbf7e80234660.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_tr_ready_repair:3 -> audio/generated/tr-TR/dialogues/00bf3e6dac414d97ea8b6b366bf219d8ab789742224c800475af7d1c6c25be7b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f0830d04-5bea-5cad-8e4d-9dc69a721343', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_tr_ready_repair:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '004afb49ca4ab0db917d254a4ad828a0bdf0841f8260a1eb5f2963b42e386828'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ab4dc77e-8528-52c7-81ca-389905b085a1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f0830d04-5bea-5cad-8e4d-9dc69a721343', 1), '004afb49ca4ab0db917d254a4ad828a0bdf0841f8260a1eb5f2963b42e386828',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/00bf3e6dac414d97ea8b6b366bf219d8ab789742224c800475af7d1c6c25be7b.mp3', 1018, '2026-09-14 12:09:02.189693', 'aefb3277d538707a0bd9b6ea1bc4e1170c970c3e41f511f06ae4b9bcda65bf36', 'validated', '{"audio_key":"00bf3e6dac414d97ea8b6b366bf219d8ab789742224c800475af7d1c6c25be7b","entity_key":"d_tr_ready_repair:3","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"aefb3277d538707a0bd9b6ea1bc4e1170c970c3e41f511f06ae4b9bcda65bf36","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/00bf3e6dac414d97ea8b6b366bf219d8ab789742224c800475af7d1c6c25be7b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_numbers_0_10_02:4 -> audio/generated/tr-TR/dialogues/00eebef2dd0f97a01f6480644d61adc138336dabb8fc395828c0d7c919b645b2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('62fbd9e7-80d0-5b85-9662-2cee026579e2', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_numbers_0_10_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd6926f99f3d3f10c5c67842a0908ba36148add69cdad138b81556bce2976f76e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6c97c032-fd17-5e87-a58f-cdc6323cbe79', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('62fbd9e7-80d0-5b85-9662-2cee026579e2', 1), 'd6926f99f3d3f10c5c67842a0908ba36148add69cdad138b81556bce2976f76e',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/00eebef2dd0f97a01f6480644d61adc138336dabb8fc395828c0d7c919b645b2.mp3', 1280, '2026-09-13 15:16:16.631756', '229791723ba8a839bef64bc4bd1d89bba86c21bb3a2e9c9e7744d5fcd13dde06', 'validated', '{"audio_key":"00eebef2dd0f97a01f6480644d61adc138336dabb8fc395828c0d7c919b645b2","entity_key":"d_numbers_0_10_02:4","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"229791723ba8a839bef64bc4bd1d89bba86c21bb3a2e9c9e7744d5fcd13dde06","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/00eebef2dd0f97a01f6480644d61adc138336dabb8fc395828c0d7c919b645b2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_polite_words_01:3 -> audio/generated/tr-TR/dialogues/024311d4d3677556928fae5da33c008d5de92c49341c0433819f1c1183471bcc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fc53e490-66e2-5ea0-a587-b21143d32600', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_polite_words_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4083df5f0438bbdf883f16676b7099cbbc90d6d3b71fe1e0edf432ad8046d63e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5da7aba9-127a-5e47-97ac-64810c186f84', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fc53e490-66e2-5ea0-a587-b21143d32600', 1), '4083df5f0438bbdf883f16676b7099cbbc90d6d3b71fe1e0edf432ad8046d63e',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/024311d4d3677556928fae5da33c008d5de92c49341c0433819f1c1183471bcc.mp3', 1201, '2026-09-13 15:16:19.195806', '94f960ee4ea2da4030c2225fdea52efd8c06a290062d0513b003a7487610a78b', 'validated', '{"audio_key":"024311d4d3677556928fae5da33c008d5de92c49341c0433819f1c1183471bcc","entity_key":"d_polite_words_01:3","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"94f960ee4ea2da4030c2225fdea52efd8c06a290062d0513b003a7487610a78b","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/024311d4d3677556928fae5da33c008d5de92c49341c0433819f1c1183471bcc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_survival_words_02:3 -> audio/generated/tr-TR/dialogues/066ad0c74b29a59b1ee9c89b8bf184967a51c663a9bab55a2eff79f66753bc32.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bdcf8c11-404a-59cb-ae94-e6f9d2be1012', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_survival_words_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '01811b1c39b89652b83f823c9233b14cf5cb8553f5a371e36253780800739635'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d8db1ebc-bb8d-5ea3-8d33-990d18436d98', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bdcf8c11-404a-59cb-ae94-e6f9d2be1012', 1), '01811b1c39b89652b83f823c9233b14cf5cb8553f5a371e36253780800739635',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/066ad0c74b29a59b1ee9c89b8bf184967a51c663a9bab55a2eff79f66753bc32.mp3', 914, '2026-09-13 15:16:21.021038', 'a460b0ea6c8c8423cd1fbc78d66e753b56e6d12aa95674574a5a123a4a95e548', 'validated', '{"audio_key":"066ad0c74b29a59b1ee9c89b8bf184967a51c663a9bab55a2eff79f66753bc32","entity_key":"d_survival_words_02:3","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a460b0ea6c8c8423cd1fbc78d66e753b56e6d12aa95674574a5a123a4a95e548","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/066ad0c74b29a59b1ee9c89b8bf184967a51c663a9bab55a2eff79f66753bc32.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_survival_words_01:2 -> audio/generated/tr-TR/dialogues/0693b7ad65d906d0b9a0bdf13d5cd2baedadf12643ee4ceacde03dc8044227c1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('15ca2e43-b5dd-546e-83ea-a01c29e3c40c', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_survival_words_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3819a0dcefa97f16b39ee5a610777123c534057a3bed89208815881611125b75'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('57ed5684-9ee3-5ae5-abe7-3268356fefd3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('15ca2e43-b5dd-546e-83ea-a01c29e3c40c', 1), '3819a0dcefa97f16b39ee5a610777123c534057a3bed89208815881611125b75',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/0693b7ad65d906d0b9a0bdf13d5cd2baedadf12643ee4ceacde03dc8044227c1.mp3', 1280, '2026-09-13 15:16:20.227976', '3605d39d6e4b30783054e640b7d2f66899e07401a21d32f269d2d33ae7a2f52d', 'validated', '{"audio_key":"0693b7ad65d906d0b9a0bdf13d5cd2baedadf12643ee4ceacde03dc8044227c1","entity_key":"d_survival_words_01:2","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3605d39d6e4b30783054e640b7d2f66899e07401a21d32f269d2d33ae7a2f52d","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/0693b7ad65d906d0b9a0bdf13d5cd2baedadf12643ee4ceacde03dc8044227c1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_survival_words_01:4 -> audio/generated/tr-TR/dialogues/0c69b6647ef4b4c4732b8e016eca12b89d39f4ec08c2b3ea439970b1c5d9fc4e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8fddbe82-455b-5a36-ac3a-935e907c93b9', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_survival_words_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '32cfe82e39e1ef40d3f6a6b547e984c29d5c397d361b4dc1098236800d0b8261'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ae51b93d-62b1-5f85-876d-b75818b472bd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8fddbe82-455b-5a36-ac3a-935e907c93b9', 1), '32cfe82e39e1ef40d3f6a6b547e984c29d5c397d361b4dc1098236800d0b8261',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/0c69b6647ef4b4c4732b8e016eca12b89d39f4ec08c2b3ea439970b1c5d9fc4e.mp3', 1515, '2026-09-13 15:16:21.269098', '3dfd024385d645b96890d80e95a628111b4810e1ff4031da089d132cd78a7098', 'validated', '{"audio_key":"0c69b6647ef4b4c4732b8e016eca12b89d39f4ec08c2b3ea439970b1c5d9fc4e","entity_key":"d_survival_words_01:4","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3dfd024385d645b96890d80e95a628111b4810e1ff4031da089d132cd78a7098","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/0c69b6647ef4b4c4732b8e016eca12b89d39f4ec08c2b3ea439970b1c5d9fc4e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_my_name_02:2 -> audio/generated/tr-TR/dialogues/0c8f1864ca589403140ef9fde38c70eabe6adfe4f1521624642689837af09068.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2fad6eab-07e0-55b1-a416-4d80eeb22dcc', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_my_name_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f2cd5e5c1ac2442fda95df9477804a62be7c0fb9608ffde8c1ef98ad2a469f6e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c9f76571-f32c-520f-ae5e-4a7200605e4b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2fad6eab-07e0-55b1-a416-4d80eeb22dcc', 1), 'f2cd5e5c1ac2442fda95df9477804a62be7c0fb9608ffde8c1ef98ad2a469f6e',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/0c8f1864ca589403140ef9fde38c70eabe6adfe4f1521624642689837af09068.mp3', 1802, '2026-09-13 15:16:27.079975', 'a0a01e64ce75151408f2a59e73a3951f30d0d35e01a26d54f1e9d1e34953b4ba', 'validated', '{"audio_key":"0c8f1864ca589403140ef9fde38c70eabe6adfe4f1521624642689837af09068","entity_key":"d_my_name_02:2","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"a0a01e64ce75151408f2a59e73a3951f30d0d35e01a26d54f1e9d1e34953b4ba","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/0c8f1864ca589403140ef9fde38c70eabe6adfe4f1521624642689837af09068.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_greetings_01:3 -> audio/generated/tr-TR/dialogues/0faf8e7cfa040befe8b649323ad61f536e1917d4cae9bd68993b318ce2bd7ee9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b2f2af1c-bddb-514b-b93d-00016baff931', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_greetings_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b1726b923349fd632fa7ce8b62a06c5a3f785be1db4f6a831eef58d70c7a45cc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8e55241c-c2a3-5218-bf30-ca7fed9aeaee', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b2f2af1c-bddb-514b-b93d-00016baff931', 1), 'b1726b923349fd632fa7ce8b62a06c5a3f785be1db4f6a831eef58d70c7a45cc',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/0faf8e7cfa040befe8b649323ad61f536e1917d4cae9bd68993b318ce2bd7ee9.mp3', 1097, '2026-09-13 15:16:25.046120', 'cd20230958126204ab03305a108aa840543a20983bd4be974a7408e4c14c84fc', 'validated', '{"audio_key":"0faf8e7cfa040befe8b649323ad61f536e1917d4cae9bd68993b318ce2bd7ee9","entity_key":"d_first_greetings_01:3","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"cd20230958126204ab03305a108aa840543a20983bd4be974a7408e4c14c84fc","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/0faf8e7cfa040befe8b649323ad61f536e1917d4cae9bd68993b318ce2bd7ee9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_survival_words_01:1 -> audio/generated/tr-TR/dialogues/103ca00c354a1f6ac86e4c2b8b87df773bea8429c22358c8ca489bacf4e3d62b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8076471c-6efb-5e82-b5b4-566e1c1e00df', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_survival_words_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '74b49b9a65fe3b265a73dede7e4f085d9ea3f8d08fe7bc9aef20d61cd5fb8e23'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('063a5ceb-6b3e-520f-bfbb-bf69f04ec077', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8076471c-6efb-5e82-b5b4-566e1c1e00df', 1), '74b49b9a65fe3b265a73dede7e4f085d9ea3f8d08fe7bc9aef20d61cd5fb8e23',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/103ca00c354a1f6ac86e4c2b8b87df773bea8429c22358c8ca489bacf4e3d62b.mp3', 914, '2026-09-13 15:16:26.073967', '59079757d2776ad8a01f106ef5a63ad4d5b56c58bc77c2190a50a7ceeefe48cc', 'validated', '{"audio_key":"103ca00c354a1f6ac86e4c2b8b87df773bea8429c22358c8ca489bacf4e3d62b","entity_key":"d_survival_words_01:1","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"59079757d2776ad8a01f106ef5a63ad4d5b56c58bc77c2190a50a7ceeefe48cc","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/103ca00c354a1f6ac86e4c2b8b87df773bea8429c22358c8ca489bacf4e3d62b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_greetings_01:2 -> audio/generated/tr-TR/dialogues/11050db0fc302b04ac81934bca242ba7ea2ca7918d07e7194d094b1052486d19.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('dd32c790-46aa-5f98-b55e-f5e9ed367d01', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_greetings_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2edd6530b1fc8372b90cdc4c0c27c096ebcfc594211dbfd2a53df4a8e213c4bd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('49716c30-9360-5d09-a47b-f43699799263', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('dd32c790-46aa-5f98-b55e-f5e9ed367d01', 1), '2edd6530b1fc8372b90cdc4c0c27c096ebcfc594211dbfd2a53df4a8e213c4bd',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/11050db0fc302b04ac81934bca242ba7ea2ca7918d07e7194d094b1052486d19.mp3', 1384, '2026-09-13 15:16:27.162428', 'c1a9869f40695777bbd7aefe64e7cc0dd94f03c8b0beb317c27e4486f0b6c394', 'validated', '{"audio_key":"11050db0fc302b04ac81934bca242ba7ea2ca7918d07e7194d094b1052486d19","entity_key":"d_first_greetings_01:2","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c1a9869f40695777bbd7aefe64e7cc0dd94f03c8b0beb317c27e4486f0b6c394","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/11050db0fc302b04ac81934bca242ba7ea2ca7918d07e7194d094b1052486d19.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_my_name_01:4 -> audio/generated/tr-TR/dialogues/1183c0e94c24c8049295de706fd8894bc4cdbe7f01801172da03c301c55d8265.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4d4a0a26-b712-50fe-8421-feed7bb1d175', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_my_name_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2e8e5bee0543e566c24b469a3f88555f04b428704dee3602a57a438abd144d23'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5da607f4-3c9e-5b38-8007-b3258ef7a91a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4d4a0a26-b712-50fe-8421-feed7bb1d175', 1), '2e8e5bee0543e566c24b469a3f88555f04b428704dee3602a57a438abd144d23',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/1183c0e94c24c8049295de706fd8894bc4cdbe7f01801172da03c301c55d8265.mp3', 835, '2026-09-13 15:16:32.215915', 'f3a7654011d1459e239cc354c719fced46e86e96138ad168605322ee78baa20c', 'validated', '{"audio_key":"1183c0e94c24c8049295de706fd8894bc4cdbe7f01801172da03c301c55d8265","entity_key":"d_my_name_01:4","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f3a7654011d1459e239cc354c719fced46e86e96138ad168605322ee78baa20c","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/1183c0e94c24c8049295de706fd8894bc4cdbe7f01801172da03c301c55d8265.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_sounds_01:4 -> audio/generated/tr-TR/dialogues/1218f2458c4a4699031dd6ad59384b76666aa10da07e71001e0cac61bfd3a5d9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('53bedcb3-e79c-58f0-9dbf-0278194ee7aa', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_sounds_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a9207e5d5aac62fd064c57810a14587fa706164206308a3ba737f5d10ecc17aa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bebf275a-7705-531a-ae4f-f422bbff756d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('53bedcb3-e79c-58f0-9dbf-0278194ee7aa', 1), 'a9207e5d5aac62fd064c57810a14587fa706164206308a3ba737f5d10ecc17aa',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/1218f2458c4a4699031dd6ad59384b76666aa10da07e71001e0cac61bfd3a5d9.mp3', 1071, '2026-09-13 15:16:28.226165', '4eddd208f463de4d82462bfeb66dc2811a7cc9a95d89e330893124fab029b8a0', 'validated', '{"audio_key":"1218f2458c4a4699031dd6ad59384b76666aa10da07e71001e0cac61bfd3a5d9","entity_key":"d_first_sounds_01:4","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4eddd208f463de4d82462bfeb66dc2811a7cc9a95d89e330893124fab029b8a0","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/1218f2458c4a4699031dd6ad59384b76666aa10da07e71001e0cac61bfd3a5d9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_numbers_0_10_02:2 -> audio/generated/tr-TR/dialogues/147d42d6aaef5bec3a888aa670412b98d585ed55cbe68e98cc733fc87ee648a3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5ce44a27-5185-5275-8ddb-9940a0a2c9c4', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_numbers_0_10_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ea807185845920b51a73a24548725fb1262597fc2bd426d02be27c2ced691aa6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c0356a98-07ed-5b6b-97bc-f0a07472a6bd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5ce44a27-5185-5275-8ddb-9940a0a2c9c4', 1), 'ea807185845920b51a73a24548725fb1262597fc2bd426d02be27c2ced691aa6',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/147d42d6aaef5bec3a888aa670412b98d585ed55cbe68e98cc733fc87ee648a3.mp3', 1097, '2026-09-13 15:16:29.206178', '64b507bb54a2205008fa0443d55daf6efe6be228d5df78b027bb398bd0ee0010', 'validated', '{"audio_key":"147d42d6aaef5bec3a888aa670412b98d585ed55cbe68e98cc733fc87ee648a3","entity_key":"d_numbers_0_10_02:2","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"64b507bb54a2205008fa0443d55daf6efe6be228d5df78b027bb398bd0ee0010","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/147d42d6aaef5bec3a888aa670412b98d585ed55cbe68e98cc733fc87ee648a3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_my_name_01:2 -> audio/generated/tr-TR/dialogues/17365f72c9235b5536fa835229d0463c350fac3d301a066abde3b86718f41193.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('39a69123-666b-5229-bfd8-0f21ad5d4c94', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_my_name_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '658929876f4f85ab442bb70cd6f951caec155812356cbf3942079e2ec2427a1e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('85de24b3-2f8d-50da-ae44-962e4aad6d3b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('39a69123-666b-5229-bfd8-0f21ad5d4c94', 1), '658929876f4f85ab442bb70cd6f951caec155812356cbf3942079e2ec2427a1e',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/17365f72c9235b5536fa835229d0463c350fac3d301a066abde3b86718f41193.mp3', 1619, '2026-09-13 15:16:32.112249', '77059448c80c5ec94c3b04dbde2cd210f93c32ccc7d69c653d102319363c0934', 'validated', '{"audio_key":"17365f72c9235b5536fa835229d0463c350fac3d301a066abde3b86718f41193","entity_key":"d_my_name_01:2","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"77059448c80c5ec94c3b04dbde2cd210f93c32ccc7d69c653d102319363c0934","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/17365f72c9235b5536fa835229d0463c350fac3d301a066abde3b86718f41193.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_tr_ready_intro:2 -> audio/generated/tr-TR/dialogues/17a1ad644c3603d58de27878b333e9f776a9073ac05a832f827dac8b2eb1b77a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('02136e79-0e2f-5e36-aff9-ec11f228c2d9', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_tr_ready_intro:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1300ac6066f58dc027573ff84d468d192495c6393d4a18f8ad21fe0f36932514'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('11d76237-d010-514c-89d0-f8ac724a9dec', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('02136e79-0e2f-5e36-aff9-ec11f228c2d9', 1), '1300ac6066f58dc027573ff84d468d192495c6393d4a18f8ad21fe0f36932514',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/17a1ad644c3603d58de27878b333e9f776a9073ac05a832f827dac8b2eb1b77a.mp3', 1802, '2026-09-14 12:09:02.283883', '70e6e46b40cda1107c1dda0b19cc512839d13b822397f9c341a348c3e7d44b30', 'validated', '{"audio_key":"17a1ad644c3603d58de27878b333e9f776a9073ac05a832f827dac8b2eb1b77a","entity_key":"d_tr_ready_intro:2","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"70e6e46b40cda1107c1dda0b19cc512839d13b822397f9c341a348c3e7d44b30","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/17a1ad644c3603d58de27878b333e9f776a9073ac05a832f827dac8b2eb1b77a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_tr_meaning_help:4 -> audio/generated/tr-TR/dialogues/1b6635bc5c1e958589d1f3d8e9f62899040cd3eb93ec7d7575fb873e65494b36.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('31861741-e3c4-5ea7-bc8b-1c261d465e88', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_tr_meaning_help:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'af6f1e50c1bc0bd272101e51e2dc710f9e42ff2cf1f26ace0e7083709a38e73c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d291e483-424f-5289-9fb6-3a8fdaf6f611', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('31861741-e3c4-5ea7-bc8b-1c261d465e88', 1), 'af6f1e50c1bc0bd272101e51e2dc710f9e42ff2cf1f26ace0e7083709a38e73c',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/1b6635bc5c1e958589d1f3d8e9f62899040cd3eb93ec7d7575fb873e65494b36.mp3', 1515, '2026-09-14 12:09:03.295309', '05d0fd206789ef380782ca5f15b69c2705a306ae3cf683d458fc6aac2d04c36f', 'validated', '{"audio_key":"1b6635bc5c1e958589d1f3d8e9f62899040cd3eb93ec7d7575fb873e65494b36","entity_key":"d_tr_meaning_help:4","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"05d0fd206789ef380782ca5f15b69c2705a306ae3cf683d458fc6aac2d04c36f","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/1b6635bc5c1e958589d1f3d8e9f62899040cd3eb93ec7d7575fb873e65494b36.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_how_are_you_02:3 -> audio/generated/tr-TR/dialogues/1b79875e7b962aaacd20c354bbb61f383432eadca9d6cd0a27303e364b7484bd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('aa8755a9-725e-5b5e-bd0a-31303de7c128', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_how_are_you_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3ea36a0f9223d9d310bd04a9a65f5fd90ac3d760e8d7d55ad2b6a7acce302f15'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0312f4ca-8977-57eb-b6eb-7521fa663520', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('aa8755a9-725e-5b5e-bd0a-31303de7c128', 1), '3ea36a0f9223d9d310bd04a9a65f5fd90ac3d760e8d7d55ad2b6a7acce302f15',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/1b79875e7b962aaacd20c354bbb61f383432eadca9d6cd0a27303e364b7484bd.mp3', 862, '2026-09-13 15:16:33.247259', '561a93f24b6fdaf517be10675bb447d0ff2912fb89ea7cffdb15b14118f37ab8', 'validated', '{"audio_key":"1b79875e7b962aaacd20c354bbb61f383432eadca9d6cd0a27303e364b7484bd","entity_key":"d_how_are_you_02:3","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"561a93f24b6fdaf517be10675bb447d0ff2912fb89ea7cffdb15b14118f37ab8","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/1b79875e7b962aaacd20c354bbb61f383432eadca9d6cd0a27303e364b7484bd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_how_are_you_02:1 -> audio/generated/tr-TR/dialogues/1defa1efcf023fc3bb55dccf98e58ea9e19cfaf65993412894c90eac06f634fb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c18aa8bd-7a79-568f-a640-d00864c18090', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_how_are_you_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '374556b80bd38d619abddaa6748564a860a816fee26182be666d3fa0d2fdff13'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b52fd832-e207-523e-8402-fa57002900b9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c18aa8bd-7a79-568f-a640-d00864c18090', 1), '374556b80bd38d619abddaa6748564a860a816fee26182be666d3fa0d2fdff13',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/1defa1efcf023fc3bb55dccf98e58ea9e19cfaf65993412894c90eac06f634fb.mp3', 1384, '2026-09-13 15:16:33.253376', '8900fabc366a2daf99b89039d5a0a36816c19e37d80390a7f541dd3375b30e39', 'validated', '{"audio_key":"1defa1efcf023fc3bb55dccf98e58ea9e19cfaf65993412894c90eac06f634fb","entity_key":"d_how_are_you_02:1","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8900fabc366a2daf99b89039d5a0a36816c19e37d80390a7f541dd3375b30e39","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/1defa1efcf023fc3bb55dccf98e58ea9e19cfaf65993412894c90eac06f634fb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_conversation_02:4 -> audio/generated/tr-TR/dialogues/1fddeaed65f7cb25043ab6c69eca51f3c365d181cef69fb4a979f1f732cd4a19.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bf7047b5-e98f-5a49-b6d3-d40465a61298', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_conversation_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd332c1e23f7441076c09c0b9a0004cf76ba0d45a8478c25b9d8e4ec9fb05402b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e4813911-9339-55e8-b06f-8820e39d00d4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bf7047b5-e98f-5a49-b6d3-d40465a61298', 1), 'd332c1e23f7441076c09c0b9a0004cf76ba0d45a8478c25b9d8e4ec9fb05402b',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/1fddeaed65f7cb25043ab6c69eca51f3c365d181cef69fb4a979f1f732cd4a19.mp3', 1567, '2026-09-13 15:16:34.433590', '1f9f831a34e5bd1fcbddb9be47fcfaef180890cd33cc9a9f33dbaaaaf020708c', 'validated', '{"audio_key":"1fddeaed65f7cb25043ab6c69eca51f3c365d181cef69fb4a979f1f732cd4a19","entity_key":"d_first_conversation_02:4","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1f9f831a34e5bd1fcbddb9be47fcfaef180890cd33cc9a9f33dbaaaaf020708c","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/1fddeaed65f7cb25043ab6c69eca51f3c365d181cef69fb4a979f1f732cd4a19.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_objects_02:1 -> audio/generated/tr-TR/dialogues/22d4093b3cb346b1a9c92f7c860d100e8afc84d4601cb66764f23cb4b320274d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('895c4c97-96e9-502c-9f10-9a5a0e30a0b6', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_objects_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6c7d6050b23cde1a3e9f78d5fddd5c0541d71d981f1e1fe68e60033a3927fac6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f596d4cf-4fd6-507c-a532-e1fb65004866', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('895c4c97-96e9-502c-9f10-9a5a0e30a0b6', 1), '6c7d6050b23cde1a3e9f78d5fddd5c0541d71d981f1e1fe68e60033a3927fac6',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/22d4093b3cb346b1a9c92f7c860d100e8afc84d4601cb66764f23cb4b320274d.mp3', 1253, '2026-09-13 15:16:34.296343', 'f97d58de2a238493d162e99e1c2ceccc704dc75f34154ff1c2ea9cb41f110066', 'validated', '{"audio_key":"22d4093b3cb346b1a9c92f7c860d100e8afc84d4601cb66764f23cb4b320274d","entity_key":"d_first_objects_02:1","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f97d58de2a238493d162e99e1c2ceccc704dc75f34154ff1c2ea9cb41f110066","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/22d4093b3cb346b1a9c92f7c860d100e8afc84d4601cb66764f23cb4b320274d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_my_name_02:3 -> audio/generated/tr-TR/dialogues/27134c5dbe33d2246700e696dfc2e1e66f80f255785cc059e25601f6d49c5019.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cb718f7d-c7ca-5a62-b713-1496bd8d87db', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_my_name_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3f4f9fa7432e8ce3086aeba8a95c1ae7fb784c2a6438c5180c702ba2574a0046'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f396ad0f-e954-53fe-8915-c645fd9e279c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cb718f7d-c7ca-5a62-b713-1496bd8d87db', 1), '3f4f9fa7432e8ce3086aeba8a95c1ae7fb784c2a6438c5180c702ba2574a0046',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/27134c5dbe33d2246700e696dfc2e1e66f80f255785cc059e25601f6d49c5019.mp3', 1018, '2026-09-13 15:16:35.287827', 'fee94146417356905bc551ce5d21a3537227b6f1ce47624fd44b7b9db372a297', 'validated', '{"audio_key":"27134c5dbe33d2246700e696dfc2e1e66f80f255785cc059e25601f6d49c5019","entity_key":"d_my_name_02:3","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fee94146417356905bc551ce5d21a3537227b6f1ce47624fd44b7b9db372a297","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/27134c5dbe33d2246700e696dfc2e1e66f80f255785cc059e25601f6d49c5019.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_tr_ready_intro:1 -> audio/generated/tr-TR/dialogues/2795091e52cf7b8a8817d992891bcce2b41062b0a172b876efca8f25ee440160.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('323db210-b774-5dab-8ff9-e56f0e5ac1b6', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_tr_ready_intro:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '827077abdf5cfa16c939d7998a6c531f8ac7feaef0b2cfea3ccee4b721854a59'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b47712dd-f968-5a4a-9269-babba13e4a40', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('323db210-b774-5dab-8ff9-e56f0e5ac1b6', 1), '827077abdf5cfa16c939d7998a6c531f8ac7feaef0b2cfea3ccee4b721854a59',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/2795091e52cf7b8a8817d992891bcce2b41062b0a172b876efca8f25ee440160.mp3', 1567, '2026-09-14 12:09:03.372265', 'b868a1b5e89a224c2bdb1ea67af5732579a19ba1c628895dfcd115d73c390d6b', 'validated', '{"audio_key":"2795091e52cf7b8a8817d992891bcce2b41062b0a172b876efca8f25ee440160","entity_key":"d_tr_ready_intro:1","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b868a1b5e89a224c2bdb1ea67af5732579a19ba1c628895dfcd115d73c390d6b","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/2795091e52cf7b8a8817d992891bcce2b41062b0a172b876efca8f25ee440160.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_polite_words_02:3 -> audio/generated/tr-TR/dialogues/29475ce5699aa1886fcf01bc764951952e630e58934d5ef95bccea18994814a2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8948bfee-f8a6-54a0-aedb-cbd0848e3f3d', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_polite_words_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5cdfd57d7d37796fc7f0a4fa810fbc8715b98360c0fe2ca9cdd17a6181fbc9ef'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a82c22d9-1e4a-50b2-99cd-754eb2323d65', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8948bfee-f8a6-54a0-aedb-cbd0848e3f3d', 1), '5cdfd57d7d37796fc7f0a4fa810fbc8715b98360c0fe2ca9cdd17a6181fbc9ef',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/29475ce5699aa1886fcf01bc764951952e630e58934d5ef95bccea18994814a2.mp3', 1071, '2026-09-13 15:16:35.502679', '20e02103da287dcce7c6d0675f357a7e4190c893b657945143f1199bc1c339c8', 'validated', '{"audio_key":"29475ce5699aa1886fcf01bc764951952e630e58934d5ef95bccea18994814a2","entity_key":"d_polite_words_02:3","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"20e02103da287dcce7c6d0675f357a7e4190c893b657945143f1199bc1c339c8","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/29475ce5699aa1886fcf01bc764951952e630e58934d5ef95bccea18994814a2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_numbers_0_10_01:1 -> audio/generated/tr-TR/dialogues/2ce4bc72cb0a9bb91e0ae8fffdc1cc7712e06179983994ec0a08ead428851c3d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9dfa3b75-b25d-5b5b-aa27-c1236dedcbcf', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_numbers_0_10_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c2af9f1a7809e81ec0927f841d4e13fa1f2360cb94411d3de9665fa6dda91462'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ef817cb2-26f3-5244-9993-f70114370859', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9dfa3b75-b25d-5b5b-aa27-c1236dedcbcf', 1), 'c2af9f1a7809e81ec0927f841d4e13fa1f2360cb94411d3de9665fa6dda91462',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/2ce4bc72cb0a9bb91e0ae8fffdc1cc7712e06179983994ec0a08ead428851c3d.mp3', 862, '2026-09-13 15:16:36.245448', 'ef4dd96ef1178c3555d0592f28a3f4ca9afc7d9c91e7ea02ddd224e494e9b52d', 'validated', '{"audio_key":"2ce4bc72cb0a9bb91e0ae8fffdc1cc7712e06179983994ec0a08ead428851c3d","entity_key":"d_numbers_0_10_01:1","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ef4dd96ef1178c3555d0592f28a3f4ca9afc7d9c91e7ea02ddd224e494e9b52d","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/2ce4bc72cb0a9bb91e0ae8fffdc1cc7712e06179983994ec0a08ead428851c3d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_conversation_01:3 -> audio/generated/tr-TR/dialogues/2ed8020d6e8f12b8fb8b69daa4752865699fc52524a1700e63014023426d66e9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('aca994f7-3fcc-523f-8a05-990ef1d2b653', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_conversation_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c61da876fe80998fd8842a507639fac020ec02fa999d05536b4584f1037297aa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('803dec7e-0f74-597c-bb51-a64605946bb0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('aca994f7-3fcc-523f-8a05-990ef1d2b653', 1), 'c61da876fe80998fd8842a507639fac020ec02fa999d05536b4584f1037297aa',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/2ed8020d6e8f12b8fb8b69daa4752865699fc52524a1700e63014023426d66e9.mp3', 914, '2026-09-13 15:16:36.573555', '2cfd070a0b526f083f33926e0b1484673d6ac5e357d1e093126b81fd3536904f', 'validated', '{"audio_key":"2ed8020d6e8f12b8fb8b69daa4752865699fc52524a1700e63014023426d66e9","entity_key":"d_first_conversation_01:3","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2cfd070a0b526f083f33926e0b1484673d6ac5e357d1e093126b81fd3536904f","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/2ed8020d6e8f12b8fb8b69daa4752865699fc52524a1700e63014023426d66e9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_sounds_01:1 -> audio/generated/tr-TR/dialogues/37cbeabb9ef29ca11444cdc62d562f7af4688c9c30fae6dc34ed4f67cad43923.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('19520adf-55c4-5d20-af72-e7eaacd8ed57', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_sounds_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ef16319dceebc5e748c5b5e897caa649da5300b2ae9cf9cc7a05ca0b704a72f7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8533e01a-19a9-5f03-8a07-3b0439f079b1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('19520adf-55c4-5d20-af72-e7eaacd8ed57', 1), 'ef16319dceebc5e748c5b5e897caa649da5300b2ae9cf9cc7a05ca0b704a72f7',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/37cbeabb9ef29ca11444cdc62d562f7af4688c9c30fae6dc34ed4f67cad43923.mp3', 1201, '2026-09-13 15:16:37.224857', 'c1a00597ad5a033a8f3b0962cd8c9608cf9d7c004fb731419db3a75d4880d1d4', 'validated', '{"audio_key":"37cbeabb9ef29ca11444cdc62d562f7af4688c9c30fae6dc34ed4f67cad43923","entity_key":"d_first_sounds_01:1","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c1a00597ad5a033a8f3b0962cd8c9608cf9d7c004fb731419db3a75d4880d1d4","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/37cbeabb9ef29ca11444cdc62d562f7af4688c9c30fae6dc34ed4f67cad43923.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_objects_01:3 -> audio/generated/tr-TR/dialogues/37e01acae9b28fcc9bd01acc9ca35e196333925ad0ae876feec6d0fc073a0e69.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e5102c8d-ba79-5760-994b-4f6249dce3d4', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_objects_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '555c825ca9b1f13071e0bd1332a07748f3397ae758b4de5cb73ed3422112088e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6e396c67-f5ff-5108-be25-fb985e838140', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e5102c8d-ba79-5760-994b-4f6249dce3d4', 1), '555c825ca9b1f13071e0bd1332a07748f3397ae758b4de5cb73ed3422112088e',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/37e01acae9b28fcc9bd01acc9ca35e196333925ad0ae876feec6d0fc073a0e69.mp3', 1018, '2026-09-13 15:16:37.618789', '3d54a016965fb50078d6f1a7aa2f669e3e447211cb9d90265d1c5a65d7a6c337', 'validated', '{"audio_key":"37e01acae9b28fcc9bd01acc9ca35e196333925ad0ae876feec6d0fc073a0e69","entity_key":"d_first_objects_01:3","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3d54a016965fb50078d6f1a7aa2f669e3e447211cb9d90265d1c5a65d7a6c337","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/37e01acae9b28fcc9bd01acc9ca35e196333925ad0ae876feec6d0fc073a0e69.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_greetings_01:4 -> audio/generated/tr-TR/dialogues/3970ddb3dbe12f35d475de28d440c632b90fb1cd23b71abd41877334c4b49c86.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('daa72fce-19dc-57ac-9389-470da236b68e', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_greetings_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b1726b923349fd632fa7ce8b62a06c5a3f785be1db4f6a831eef58d70c7a45cc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('35a28fa5-28e7-5759-a1ac-58f295aabe12', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('daa72fce-19dc-57ac-9389-470da236b68e', 1), 'b1726b923349fd632fa7ce8b62a06c5a3f785be1db4f6a831eef58d70c7a45cc',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/3970ddb3dbe12f35d475de28d440c632b90fb1cd23b71abd41877334c4b49c86.mp3', 783, '2026-09-13 15:16:38.245502', 'b7f00f50ab8674af618418d63b586b67c73f7073505aa5599b26d4419527d769', 'validated', '{"audio_key":"3970ddb3dbe12f35d475de28d440c632b90fb1cd23b71abd41877334c4b49c86","entity_key":"d_first_greetings_01:4","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b7f00f50ab8674af618418d63b586b67c73f7073505aa5599b26d4419527d769","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/3970ddb3dbe12f35d475de28d440c632b90fb1cd23b71abd41877334c4b49c86.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_greetings_01:1 -> audio/generated/tr-TR/dialogues/3cd10b847e4cf25d3084dc5f0689e25f4e136d366e62857e5d401727426352de.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('48609658-a94e-5eb9-b80f-ceaf396002c6', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_greetings_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '006d07e7514f1b693f919470b34ac3f7c69a6fd369f06d7b24ed8a326e057ca9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8793fb41-f47e-5fc7-a6c3-6d9f8dc52bd6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('48609658-a94e-5eb9-b80f-ceaf396002c6', 1), '006d07e7514f1b693f919470b34ac3f7c69a6fd369f06d7b24ed8a326e057ca9',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/3cd10b847e4cf25d3084dc5f0689e25f4e136d366e62857e5d401727426352de.mp3', 1515, '2026-09-13 15:16:38.673975', '9411647a017f78cb3085f4c6e11ea5d2047c04618678a5d61adb24a5be8ccac1', 'validated', '{"audio_key":"3cd10b847e4cf25d3084dc5f0689e25f4e136d366e62857e5d401727426352de","entity_key":"d_first_greetings_01:1","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9411647a017f78cb3085f4c6e11ea5d2047c04618678a5d61adb24a5be8ccac1","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/3cd10b847e4cf25d3084dc5f0689e25f4e136d366e62857e5d401727426352de.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_tr_meaning_help:2 -> audio/generated/tr-TR/dialogues/3e22bd2dae306bb20b84941cc9e2347801bbfa6b37e7e7170fcef75a01c799fe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('48989d8d-030d-5748-831d-8c01962b57c7', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_tr_meaning_help:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6edc9758d29a357989b3099346504c21277ed4b2668f2d470033bcc45e4f4de7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fdf17b88-9fcc-5c60-830c-534cb0a6a801', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('48989d8d-030d-5748-831d-8c01962b57c7', 1), '6edc9758d29a357989b3099346504c21277ed4b2668f2d470033bcc45e4f4de7',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/3e22bd2dae306bb20b84941cc9e2347801bbfa6b37e7e7170fcef75a01c799fe.mp3', 1097, '2026-09-14 12:09:04.310376', '9c6939a04fe0d44e33a57834149675ea3b42503b7e8910c4876d715fd9de355e', 'validated', '{"audio_key":"3e22bd2dae306bb20b84941cc9e2347801bbfa6b37e7e7170fcef75a01c799fe","entity_key":"d_tr_meaning_help:2","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9c6939a04fe0d44e33a57834149675ea3b42503b7e8910c4876d715fd9de355e","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/3e22bd2dae306bb20b84941cc9e2347801bbfa6b37e7e7170fcef75a01c799fe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_numbers_0_10_02:1 -> audio/generated/tr-TR/dialogues/3ed130512f01f59f4ee5509a7a90c6ea9b48551f8eef40c640fa9b401d3f8f53.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0e487d1b-ee73-5988-9d86-da2b93f96c1c', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_numbers_0_10_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fefff901ed7f7c03138b6664176e1195ff62928c6e9f04450eaf438931a976af'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('78d211eb-fb6a-5682-b417-5333ad9a2f6e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0e487d1b-ee73-5988-9d86-da2b93f96c1c', 1), 'fefff901ed7f7c03138b6664176e1195ff62928c6e9f04450eaf438931a976af',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/3ed130512f01f59f4ee5509a7a90c6ea9b48551f8eef40c640fa9b401d3f8f53.mp3', 835, '2026-09-13 15:16:39.209538', 'd6ac710d59817d344c671eaf8d6d6293383fabd3dbd4e7ece86c9d7a914d5b83', 'validated', '{"audio_key":"3ed130512f01f59f4ee5509a7a90c6ea9b48551f8eef40c640fa9b401d3f8f53","entity_key":"d_numbers_0_10_02:1","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d6ac710d59817d344c671eaf8d6d6293383fabd3dbd4e7ece86c9d7a914d5b83","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/3ed130512f01f59f4ee5509a7a90c6ea9b48551f8eef40c640fa9b401d3f8f53.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_conversation_01:1 -> audio/generated/tr-TR/dialogues/4607845f616b9f0b9d383b127a67e6ed6a5e47adc130a21cc7b370290b5078a0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('36ad0409-5baf-5b8c-b2b6-88fe98aeb694', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_conversation_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8d80b6709dd06fffc2e99a6c8cc3f4e930c5a14967df3808f5594c7d650241f1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c2678998-3a3b-5cbe-b1cc-5632b853ed2e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('36ad0409-5baf-5b8c-b2b6-88fe98aeb694', 1), '8d80b6709dd06fffc2e99a6c8cc3f4e930c5a14967df3808f5594c7d650241f1',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/4607845f616b9f0b9d383b127a67e6ed6a5e47adc130a21cc7b370290b5078a0.mp3', 2690, '2026-09-13 15:16:39.822923', '9f176cf2639e565334bb496f0b123c0f8daff3ad0d49da084c65a9ea2159ca8f', 'validated', '{"audio_key":"4607845f616b9f0b9d383b127a67e6ed6a5e47adc130a21cc7b370290b5078a0","entity_key":"d_first_conversation_01:1","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9f176cf2639e565334bb496f0b123c0f8daff3ad0d49da084c65a9ea2159ca8f","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/4607845f616b9f0b9d383b127a67e6ed6a5e47adc130a21cc7b370290b5078a0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_sounds_01:3 -> audio/generated/tr-TR/dialogues/46ef1249e770f5073af019a92a8efe793d0e03431e2ca89591edaf23d25880a6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5849fb9b-57d0-5f28-bb3a-2e44f3cf1309', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_sounds_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a94cdcf9d57e2cedfaad23895fd8083b41170856482717425424970346b7369c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bed59f10-bb25-5c36-9e47-b536375c034d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5849fb9b-57d0-5f28-bb3a-2e44f3cf1309', 1), 'a94cdcf9d57e2cedfaad23895fd8083b41170856482717425424970346b7369c',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/46ef1249e770f5073af019a92a8efe793d0e03431e2ca89591edaf23d25880a6.mp3', 1280, '2026-09-13 15:16:40.217005', 'ba0069348bcc4ca0cbcdf2bbea44bea9d287877eb3e88381cf54e91fae3c0893', 'validated', '{"audio_key":"46ef1249e770f5073af019a92a8efe793d0e03431e2ca89591edaf23d25880a6","entity_key":"d_first_sounds_01:3","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ba0069348bcc4ca0cbcdf2bbea44bea9d287877eb3e88381cf54e91fae3c0893","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/46ef1249e770f5073af019a92a8efe793d0e03431e2ca89591edaf23d25880a6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_how_are_you_01:3 -> audio/generated/tr-TR/dialogues/4fb310ef0a27b8cb076c3a1e5edb0bd832caef0618442b159b7c66c3248310c1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('92d15b39-fde4-5fb0-9489-126ce11c9c99', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_how_are_you_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cc0ad62f75d26181e201ac0a62ce739fa9e2e9e10a6ed6adfbceea6a0992b546'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('503e6901-fe01-5f3d-be9a-e14f758c927f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('92d15b39-fde4-5fb0-9489-126ce11c9c99', 1), 'cc0ad62f75d26181e201ac0a62ce739fa9e2e9e10a6ed6adfbceea6a0992b546',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/4fb310ef0a27b8cb076c3a1e5edb0bd832caef0618442b159b7c66c3248310c1.mp3', 1280, '2026-09-13 15:16:46.788787', '42fca1b0be1284e8945246a248f4ac0e4a8820afaa45cab9fd11ec6dc29be270', 'validated', '{"audio_key":"4fb310ef0a27b8cb076c3a1e5edb0bd832caef0618442b159b7c66c3248310c1","entity_key":"d_how_are_you_01:3","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"42fca1b0be1284e8945246a248f4ac0e4a8820afaa45cab9fd11ec6dc29be270","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/4fb310ef0a27b8cb076c3a1e5edb0bd832caef0618442b159b7c66c3248310c1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_my_name_02:1 -> audio/generated/tr-TR/dialogues/548cdfe441a6f035cd32a5a91460431a6270ea3809fdec85a04acdcc4a848ea7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('479ead51-dc3f-500a-a128-596fa0b3d335', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_my_name_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'efdac8162113fe22f1776b1ff0d878396a11e9c6ed01613026393635e0cf45dc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('919f5975-4567-5ee7-8b74-646e8311fcd6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('479ead51-dc3f-500a-a128-596fa0b3d335', 1), 'efdac8162113fe22f1776b1ff0d878396a11e9c6ed01613026393635e0cf45dc',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/548cdfe441a6f035cd32a5a91460431a6270ea3809fdec85a04acdcc4a848ea7.mp3', 1619, '2026-09-13 15:16:41.285008', '954d3cf884996dd74c71bf9e65745188666c09b28c194657ad97f23752a8b876', 'validated', '{"audio_key":"548cdfe441a6f035cd32a5a91460431a6270ea3809fdec85a04acdcc4a848ea7","entity_key":"d_my_name_02:1","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"954d3cf884996dd74c71bf9e65745188666c09b28c194657ad97f23752a8b876","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/548cdfe441a6f035cd32a5a91460431a6270ea3809fdec85a04acdcc4a848ea7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_how_are_you_01:4 -> audio/generated/tr-TR/dialogues/59d1529948af2d65f7f76b3ffa4ae1cd97ff99b335b4968af129290ea9fffa11.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('caa1090e-a72a-5145-bfd8-e8bf0120ef4b', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_how_are_you_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1df7dcb42c5e5eb137054541e2ffa9d87db645a5cb414d52861eaef579dbcf77'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aacb6fbf-a241-5b80-bb22-e6f851af70e5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('caa1090e-a72a-5145-bfd8-e8bf0120ef4b', 1), '1df7dcb42c5e5eb137054541e2ffa9d87db645a5cb414d52861eaef579dbcf77',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/59d1529948af2d65f7f76b3ffa4ae1cd97ff99b335b4968af129290ea9fffa11.mp3', 966, '2026-09-13 15:16:42.312874', 'e663d88ae52952bd474c3049fea0564b9f28f2c0071fe81eb81fae7ac8070440', 'validated', '{"audio_key":"59d1529948af2d65f7f76b3ffa4ae1cd97ff99b335b4968af129290ea9fffa11","entity_key":"d_how_are_you_01:4","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"e663d88ae52952bd474c3049fea0564b9f28f2c0071fe81eb81fae7ac8070440","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/59d1529948af2d65f7f76b3ffa4ae1cd97ff99b335b4968af129290ea9fffa11.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_conversation_01:2 -> audio/generated/tr-TR/dialogues/5a29f0bd7479d7f30afd9ccf59150bfd67c95d2c528da59a63a23172413acbc4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c065ad2d-2157-51bf-a396-cb6f8bc83c71', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_conversation_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '007f94a8b84d0b5f744acaef2a9586210ade1fafb378b90134ea1e31db50c9cd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a99500ef-22cf-5850-91e8-a15fb522aedc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c065ad2d-2157-51bf-a396-cb6f8bc83c71', 1), '007f94a8b84d0b5f744acaef2a9586210ade1fafb378b90134ea1e31db50c9cd',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/5a29f0bd7479d7f30afd9ccf59150bfd67c95d2c528da59a63a23172413acbc4.mp3', 1933, '2026-09-13 15:16:46.853150', '5b62d8b252a4a9465355e9e2460632fd6e940973664cce5174e7770c35258ddb', 'validated', '{"audio_key":"5a29f0bd7479d7f30afd9ccf59150bfd67c95d2c528da59a63a23172413acbc4","entity_key":"d_first_conversation_01:2","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5b62d8b252a4a9465355e9e2460632fd6e940973664cce5174e7770c35258ddb","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/5a29f0bd7479d7f30afd9ccf59150bfd67c95d2c528da59a63a23172413acbc4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_objects_02:2 -> audio/generated/tr-TR/dialogues/5f348cb66da4ee5a2f4ad1a9dc1da2b9c7a6a09588ece5c57a74d49390b5c46b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bdf70b1e-385c-5c78-ba77-4ab790c4705d', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_objects_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '43df377fc2e6071f9d19d31171925d9c54f36d3b870b258417eb658ac9ae14a9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('deed93e5-8b0c-50ad-8b39-9ba23a27aa35', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bdf70b1e-385c-5c78-ba77-4ab790c4705d', 1), '43df377fc2e6071f9d19d31171925d9c54f36d3b870b258417eb658ac9ae14a9',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/5f348cb66da4ee5a2f4ad1a9dc1da2b9c7a6a09588ece5c57a74d49390b5c46b.mp3', 1280, '2026-09-13 15:16:47.821683', '470eb6f6ac35cf688cbb692630bd272bf30e994d97ba4a0efef7fd15bfb4a865', 'validated', '{"audio_key":"5f348cb66da4ee5a2f4ad1a9dc1da2b9c7a6a09588ece5c57a74d49390b5c46b","entity_key":"d_first_objects_02:2","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"470eb6f6ac35cf688cbb692630bd272bf30e994d97ba4a0efef7fd15bfb4a865","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/5f348cb66da4ee5a2f4ad1a9dc1da2b9c7a6a09588ece5c57a74d49390b5c46b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_numbers_0_10_01:3 -> audio/generated/tr-TR/dialogues/63b61f9169989ea5528b33f8b1bfc3e4e70dbce4289e701f98d164a9f017876f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('796a895d-595a-56fe-b450-07d04a6ad86c', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_numbers_0_10_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3d5e0ade98bf0da1c06589d2a9ce56778259b2a7702f109d0ea81f4a5102c9db'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('837323b7-b6a8-5b86-81b2-6bcfcd6f1d4a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('796a895d-595a-56fe-b450-07d04a6ad86c', 1), '3d5e0ade98bf0da1c06589d2a9ce56778259b2a7702f109d0ea81f4a5102c9db',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/63b61f9169989ea5528b33f8b1bfc3e4e70dbce4289e701f98d164a9f017876f.mp3', 835, '2026-09-13 15:16:47.885463', 'bc048baf8dcc91dab6e58e6eb7c71c103b81731c2f8ed3f5e45e296ac62cba6e', 'validated', '{"audio_key":"63b61f9169989ea5528b33f8b1bfc3e4e70dbce4289e701f98d164a9f017876f","entity_key":"d_numbers_0_10_01:3","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"bc048baf8dcc91dab6e58e6eb7c71c103b81731c2f8ed3f5e45e296ac62cba6e","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/63b61f9169989ea5528b33f8b1bfc3e4e70dbce4289e701f98d164a9f017876f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_conversation_02:2 -> audio/generated/tr-TR/dialogues/6a0b3007d24d7e2f93e1740c8d3c9d400112395744d3ca62757c812759e90a20.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('32fcd087-2b7b-5206-9bb6-5f602f86991e', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_conversation_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '43f2a32c0204582b1eb88751f0d0cb1dac22b6171807d801d533eda556e3d935'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f04f03b9-dd96-5b53-809a-175fca913dc0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('32fcd087-2b7b-5206-9bb6-5f602f86991e', 1), '43f2a32c0204582b1eb88751f0d0cb1dac22b6171807d801d533eda556e3d935',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/6a0b3007d24d7e2f93e1740c8d3c9d400112395744d3ca62757c812759e90a20.mp3', 1515, '2026-09-13 15:16:48.881370', '86f47ad8b183e5cb4bf3c9f212403e8dbb08e560c172a551187910e6a31e2aa9', 'validated', '{"audio_key":"6a0b3007d24d7e2f93e1740c8d3c9d400112395744d3ca62757c812759e90a20","entity_key":"d_first_conversation_02:2","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"86f47ad8b183e5cb4bf3c9f212403e8dbb08e560c172a551187910e6a31e2aa9","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/6a0b3007d24d7e2f93e1740c8d3c9d400112395744d3ca62757c812759e90a20.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_sounds_01:2 -> audio/generated/tr-TR/dialogues/6babd16275c6f6f55707bf745f92923a52f32757938aa70e728d310582020b65.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f5a27a3f-945f-563b-a8aa-44d62f21f325', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_sounds_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5b60845800e2d555dee22eaf2b0587460b8020f57cad2c31fbb3d4a9636f98ac'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d48e16d3-1c8d-57b8-9923-b16fa7b4cea3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f5a27a3f-945f-563b-a8aa-44d62f21f325', 1), '5b60845800e2d555dee22eaf2b0587460b8020f57cad2c31fbb3d4a9636f98ac',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/6babd16275c6f6f55707bf745f92923a52f32757938aa70e728d310582020b65.mp3', 914, '2026-09-13 15:16:48.862453', '28119330c70530a8031cfcb16c0f4204bc5b38f4971d23ef1197f4c8d2762810', 'validated', '{"audio_key":"6babd16275c6f6f55707bf745f92923a52f32757938aa70e728d310582020b65","entity_key":"d_first_sounds_01:2","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"28119330c70530a8031cfcb16c0f4204bc5b38f4971d23ef1197f4c8d2762810","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/6babd16275c6f6f55707bf745f92923a52f32757938aa70e728d310582020b65.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_greetings_02:1 -> audio/generated/tr-TR/dialogues/748da96f7670c5fcb5313d558f4912a41b4602989648c2387e1b719e54743a28.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e41fa20c-6716-552e-94df-baba450df27e', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_greetings_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7830c974d14d8bf1b205c713330108a4995c4262dc86537b00ae5dbd3107da4c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cb6e98a6-b82f-50cc-b0c0-593d50b713ba', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e41fa20c-6716-552e-94df-baba450df27e', 1), '7830c974d14d8bf1b205c713330108a4995c4262dc86537b00ae5dbd3107da4c',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/748da96f7670c5fcb5313d558f4912a41b4602989648c2387e1b719e54743a28.mp3', 1253, '2026-09-13 15:16:49.879041', '17ef422e7134389c72617ebe86584589da9410dfef4a74387935807cf275c46b', 'validated', '{"audio_key":"748da96f7670c5fcb5313d558f4912a41b4602989648c2387e1b719e54743a28","entity_key":"d_first_greetings_02:1","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"17ef422e7134389c72617ebe86584589da9410dfef4a74387935807cf275c46b","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/748da96f7670c5fcb5313d558f4912a41b4602989648c2387e1b719e54743a28.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_greetings_02:2 -> audio/generated/tr-TR/dialogues/79b5e5d0779912be8ed525234efdfdc8390a1e046cfe0c5222dd890d39ef86ab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7fcd0e03-95d6-578e-94b4-7286604f3f66', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_greetings_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7ff8a4df9f514d6c17094bd4b062a2c1fa82f29ea3d7976033ef35a19543041d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4edb0835-9d48-5520-b4b7-9e57d98551bc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7fcd0e03-95d6-578e-94b4-7286604f3f66', 1), '7ff8a4df9f514d6c17094bd4b062a2c1fa82f29ea3d7976033ef35a19543041d',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/79b5e5d0779912be8ed525234efdfdc8390a1e046cfe0c5222dd890d39ef86ab.mp3', 1280, '2026-09-13 15:16:49.897164', '4408dfe291d659fb5dec1702d6afe000cf1861a7620ce82a5dff45dfe0c3ddd7', 'validated', '{"audio_key":"79b5e5d0779912be8ed525234efdfdc8390a1e046cfe0c5222dd890d39ef86ab","entity_key":"d_first_greetings_02:2","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4408dfe291d659fb5dec1702d6afe000cf1861a7620ce82a5dff45dfe0c3ddd7","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/79b5e5d0779912be8ed525234efdfdc8390a1e046cfe0c5222dd890d39ef86ab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_conversation_02:1 -> audio/generated/tr-TR/dialogues/7b200a457de61a845cb3eb56de1dae4e03f9b7baaae6347059162df14b952336.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4571f736-9873-5374-93fa-59bf954450a9', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_conversation_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b59944c391faacef87902c426e34c67874652bea016c35d5e4a060735777c54d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('65454560-1e45-5a75-b89b-d57b6f48c15e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4571f736-9873-5374-93fa-59bf954450a9', 1), 'b59944c391faacef87902c426e34c67874652bea016c35d5e4a060735777c54d',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/7b200a457de61a845cb3eb56de1dae4e03f9b7baaae6347059162df14b952336.mp3', 1436, '2026-09-13 15:16:50.917010', '9aa9ba35ab363194b37b11aa93c14c526b7f558d5b9d53aea43fde431cba0a0e', 'validated', '{"audio_key":"7b200a457de61a845cb3eb56de1dae4e03f9b7baaae6347059162df14b952336","entity_key":"d_first_conversation_02:1","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9aa9ba35ab363194b37b11aa93c14c526b7f558d5b9d53aea43fde431cba0a0e","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/7b200a457de61a845cb3eb56de1dae4e03f9b7baaae6347059162df14b952336.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_conversation_02:3 -> audio/generated/tr-TR/dialogues/7deae49236ed8f00f612b221f6df50147ef8d1b3576c71c546cc2a3db26b814b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d96fc9e7-2077-52cd-aa2c-5fb3996162ea', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_conversation_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8d13e9968d0f6649d75c8ff265f591b14c2a16f95b6acf78f0100e8e2642b2f7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4893bbc3-1db6-59d9-8ffe-fbafcee8e505', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d96fc9e7-2077-52cd-aa2c-5fb3996162ea', 1), '8d13e9968d0f6649d75c8ff265f591b14c2a16f95b6acf78f0100e8e2642b2f7',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/7deae49236ed8f00f612b221f6df50147ef8d1b3576c71c546cc2a3db26b814b.mp3', 1097, '2026-09-13 15:16:50.943267', '968fe3ddc7a95d4474cd4de3e389dbe0f06ee56495738f2fb4aafcb1aee8dbb9', 'validated', '{"audio_key":"7deae49236ed8f00f612b221f6df50147ef8d1b3576c71c546cc2a3db26b814b","entity_key":"d_first_conversation_02:3","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"968fe3ddc7a95d4474cd4de3e389dbe0f06ee56495738f2fb4aafcb1aee8dbb9","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/7deae49236ed8f00f612b221f6df50147ef8d1b3576c71c546cc2a3db26b814b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_greetings_02:4 -> audio/generated/tr-TR/dialogues/7deae49236ed8f00f612b221f6df50147ef8d1b3576c71c546cc2a3db26b814b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a3b630e5-362f-519d-90d9-602e87a1e089', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_greetings_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8d13e9968d0f6649d75c8ff265f591b14c2a16f95b6acf78f0100e8e2642b2f7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aec9a4a0-ae65-5694-82b9-ca102967befe', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a3b630e5-362f-519d-90d9-602e87a1e089', 1), '8d13e9968d0f6649d75c8ff265f591b14c2a16f95b6acf78f0100e8e2642b2f7',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/7deae49236ed8f00f612b221f6df50147ef8d1b3576c71c546cc2a3db26b814b.mp3', 1097, '2026-09-13 15:16:50.943267', '968fe3ddc7a95d4474cd4de3e389dbe0f06ee56495738f2fb4aafcb1aee8dbb9', 'validated', '{"audio_key":"7deae49236ed8f00f612b221f6df50147ef8d1b3576c71c546cc2a3db26b814b","entity_key":"d_first_greetings_02:4","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"968fe3ddc7a95d4474cd4de3e389dbe0f06ee56495738f2fb4aafcb1aee8dbb9","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/7deae49236ed8f00f612b221f6df50147ef8d1b3576c71c546cc2a3db26b814b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_numbers_0_10_01:4 -> audio/generated/tr-TR/dialogues/82b050d5c72821106c7395f235ebd510cb70861904d1891fb08ca900ba566395.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('49faf706-3072-55df-8fde-c0b8afdd6ae8', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_numbers_0_10_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b650d34c383712c2a844fa61abe151f8e4474127fd321a68bb336ca6ecb65f74'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2d350947-9199-5d1c-ab91-a51c4fd29fe5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('49faf706-3072-55df-8fde-c0b8afdd6ae8', 1), 'b650d34c383712c2a844fa61abe151f8e4474127fd321a68bb336ca6ecb65f74',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/82b050d5c72821106c7395f235ebd510cb70861904d1891fb08ca900ba566395.mp3', 1097, '2026-09-13 15:16:51.972408', 'a00c119c7d9040e68987be4e079d168997e800ab22927671bcfde7c4c2543b47', 'validated', '{"audio_key":"82b050d5c72821106c7395f235ebd510cb70861904d1891fb08ca900ba566395","entity_key":"d_numbers_0_10_01:4","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a00c119c7d9040e68987be4e079d168997e800ab22927671bcfde7c4c2543b47","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/82b050d5c72821106c7395f235ebd510cb70861904d1891fb08ca900ba566395.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_alphabet_01:2 -> audio/generated/tr-TR/dialogues/84d6d110b79ce6dae76c1ffba786fa56e6baeb8bcf8d81de7a0598ff32066c16.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2c5a7b97-5259-578b-b164-c66420be1a59', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_alphabet_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '57a2951776318a36127946fbbd673d9bee4abe3bbde6536a9e7b2b9fd844e0a1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('023d6d26-38f2-570c-addf-5fd0edce67eb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2c5a7b97-5259-578b-b164-c66420be1a59', 1), '57a2951776318a36127946fbbd673d9bee4abe3bbde6536a9e7b2b9fd844e0a1',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/84d6d110b79ce6dae76c1ffba786fa56e6baeb8bcf8d81de7a0598ff32066c16.mp3', 1201, '2026-09-13 15:16:51.999302', '439333f3910571ace0dbdda6a267f9c43df76d93ce23e29a975ae5de754bc37a', 'validated', '{"audio_key":"84d6d110b79ce6dae76c1ffba786fa56e6baeb8bcf8d81de7a0598ff32066c16","entity_key":"d_alphabet_01:2","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"439333f3910571ace0dbdda6a267f9c43df76d93ce23e29a975ae5de754bc37a","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/84d6d110b79ce6dae76c1ffba786fa56e6baeb8bcf8d81de7a0598ff32066c16.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_how_are_you_01:1 -> audio/generated/tr-TR/dialogues/8652dc35efac218e8fca06395b19cf13d7fc659af313a765cdd5f6c30421985a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('dd0de08d-1959-51bb-b079-fd4539a56838', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_how_are_you_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '832caae3cc0e0a408d2086c3dbad78dcf5366bd0f1320e627a88310ce8a971d7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f1a0429b-e284-5ffa-88f4-16294b38aff7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('dd0de08d-1959-51bb-b079-fd4539a56838', 1), '832caae3cc0e0a408d2086c3dbad78dcf5366bd0f1320e627a88310ce8a971d7',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/8652dc35efac218e8fca06395b19cf13d7fc659af313a765cdd5f6c30421985a.mp3', 1671, '2026-09-13 15:16:53.069363', '33fe7485ca0eeaf67348fe31e511e04481be249105857e47b08dfcc3ab05cc98', 'validated', '{"audio_key":"8652dc35efac218e8fca06395b19cf13d7fc659af313a765cdd5f6c30421985a","entity_key":"d_how_are_you_01:1","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"33fe7485ca0eeaf67348fe31e511e04481be249105857e47b08dfcc3ab05cc98","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/8652dc35efac218e8fca06395b19cf13d7fc659af313a765cdd5f6c30421985a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_alphabet_02:1 -> audio/generated/tr-TR/dialogues/8713a3c2f16a0b8204e37f8f7362d7129f5f2f20582bab1b2a4ca008c0c6fe07.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('78cb30f6-c710-5932-8145-2b8e039bb9e0', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_alphabet_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0fef484b5ad7b1e67655764563ba27890f2f7ac25baa0ba62a7fdb9610c7139f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3284e928-21cf-50d2-895b-6b40153d375c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('78cb30f6-c710-5932-8145-2b8e039bb9e0', 1), '0fef484b5ad7b1e67655764563ba27890f2f7ac25baa0ba62a7fdb9610c7139f',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/8713a3c2f16a0b8204e37f8f7362d7129f5f2f20582bab1b2a4ca008c0c6fe07.mp3', 914, '2026-09-13 15:16:53.010545', 'b6c54c186fb39dac6e17fc85b73597670aa71574cddab47acd6233aa4637a844', 'validated', '{"audio_key":"8713a3c2f16a0b8204e37f8f7362d7129f5f2f20582bab1b2a4ca008c0c6fe07","entity_key":"d_alphabet_02:1","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b6c54c186fb39dac6e17fc85b73597670aa71574cddab47acd6233aa4637a844","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/8713a3c2f16a0b8204e37f8f7362d7129f5f2f20582bab1b2a4ca008c0c6fe07.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_sounds_02:2 -> audio/generated/tr-TR/dialogues/885799726200e5e4fe4653a531d236b5c8a3529ff4f86f01ea058f91e957a48a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5d53a536-09e2-53cc-b979-183de720ec32', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_sounds_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e00817aa65fc9589564b4251c584e86bfe2e173c4dca8be81ac6e28be59f3113'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('30c32b67-811f-5d66-b9dc-d3ba6866db3b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5d53a536-09e2-53cc-b979-183de720ec32', 1), 'e00817aa65fc9589564b4251c584e86bfe2e173c4dca8be81ac6e28be59f3113',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/885799726200e5e4fe4653a531d236b5c8a3529ff4f86f01ea058f91e957a48a.mp3', 1149, '2026-09-13 15:16:54.064093', '1016c1b2c98d6f61d1cdb6e072bbaa4c42b4eabcdfd688edb689e0f4bcf5446c', 'validated', '{"audio_key":"885799726200e5e4fe4653a531d236b5c8a3529ff4f86f01ea058f91e957a48a","entity_key":"d_first_sounds_02:2","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1016c1b2c98d6f61d1cdb6e072bbaa4c42b4eabcdfd688edb689e0f4bcf5446c","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/885799726200e5e4fe4653a531d236b5c8a3529ff4f86f01ea058f91e957a48a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_sounds_02:4 -> audio/generated/tr-TR/dialogues/8d11b875227b3be446539b796fbbce44d9bf17c730a4fe94d90f1b21c267f9ac.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3a9c2291-b757-57b3-b5cb-22f4b60ee8f8', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_sounds_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a9207e5d5aac62fd064c57810a14587fa706164206308a3ba737f5d10ecc17aa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('18c0f9b9-fa58-5df0-92d0-73ae87b6e846', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3a9c2291-b757-57b3-b5cb-22f4b60ee8f8', 1), 'a9207e5d5aac62fd064c57810a14587fa706164206308a3ba737f5d10ecc17aa',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/8d11b875227b3be446539b796fbbce44d9bf17c730a4fe94d90f1b21c267f9ac.mp3', 1018, '2026-09-13 15:16:54.038800', 'd5196edd6445ff6d98c39c2158514bed10b505aca2df1c739c81516962135bd7', 'validated', '{"audio_key":"8d11b875227b3be446539b796fbbce44d9bf17c730a4fe94d90f1b21c267f9ac","entity_key":"d_first_sounds_02:4","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d5196edd6445ff6d98c39c2158514bed10b505aca2df1c739c81516962135bd7","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/8d11b875227b3be446539b796fbbce44d9bf17c730a4fe94d90f1b21c267f9ac.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_sounds_02:3 -> audio/generated/tr-TR/dialogues/986ba4517ff2e9be96a650739462d6034751667b198f4a5c2cc20154e6cb2360.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('47e32288-8b6b-505d-adb0-5ff580f16a10', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_sounds_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e202bfcfeccf0716d2fe2fe12b92d6204c1d6685197e25058793b470d4f1c5c6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1d6f5957-8e48-5b1f-a2d4-97a1ff60e940', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('47e32288-8b6b-505d-adb0-5ff580f16a10', 1), 'e202bfcfeccf0716d2fe2fe12b92d6204c1d6685197e25058793b470d4f1c5c6',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/986ba4517ff2e9be96a650739462d6034751667b198f4a5c2cc20154e6cb2360.mp3', 1436, '2026-09-13 15:16:55.085062', '430cf46ca36a9664ad6a58a095e5c11a89578cf6a4c2c61f614f2ed6e2bd6faa', 'validated', '{"audio_key":"986ba4517ff2e9be96a650739462d6034751667b198f4a5c2cc20154e6cb2360","entity_key":"d_first_sounds_02:3","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"430cf46ca36a9664ad6a58a095e5c11a89578cf6a4c2c61f614f2ed6e2bd6faa","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/986ba4517ff2e9be96a650739462d6034751667b198f4a5c2cc20154e6cb2360.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_polite_words_02:1 -> audio/generated/tr-TR/dialogues/98e76de79be119da555a4006c54299dfbe5fdf104d6dba73e212b02285556e63.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bdbc0147-3da0-5246-bfc0-d36cd6643e8d', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_polite_words_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8dd8b3437251047abb2a74682dd6c8302e57a22fcaf7348d1490ad18945db4fb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f17f036f-2330-57a3-9d26-379cb033fd23', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bdbc0147-3da0-5246-bfc0-d36cd6643e8d', 1), '8dd8b3437251047abb2a74682dd6c8302e57a22fcaf7348d1490ad18945db4fb',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/98e76de79be119da555a4006c54299dfbe5fdf104d6dba73e212b02285556e63.mp3', 1201, '2026-09-13 15:16:55.071380', 'c164121ebbc85325b6f6a1b4710d27f10140eba9f23bde042c32f55775c0c73e', 'validated', '{"audio_key":"98e76de79be119da555a4006c54299dfbe5fdf104d6dba73e212b02285556e63","entity_key":"d_polite_words_02:1","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c164121ebbc85325b6f6a1b4710d27f10140eba9f23bde042c32f55775c0c73e","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/98e76de79be119da555a4006c54299dfbe5fdf104d6dba73e212b02285556e63.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_tr_ready_intro:3 -> audio/generated/tr-TR/dialogues/9aa304ea9965d3f5f3cc62c4717415aca792da5fbaa786def0e317226fea08bf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('80bd68bc-a9b6-572b-a918-9fc668a2fdde', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_tr_ready_intro:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b1bf7f849feba928a73621f0fd7bacd33cb62df438a9343e2888be274e0841a0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d95d67dd-0a57-53c4-b43d-39384d1a53f6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('80bd68bc-a9b6-572b-a918-9fc668a2fdde', 1), 'b1bf7f849feba928a73621f0fd7bacd33cb62df438a9343e2888be274e0841a0',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/9aa304ea9965d3f5f3cc62c4717415aca792da5fbaa786def0e317226fea08bf.mp3', 966, '2026-09-14 12:09:04.414867', '1754efd2aad5b620db127bb18f905363266bcf8ced3de38626a0a3abbc9124bd', 'validated', '{"audio_key":"9aa304ea9965d3f5f3cc62c4717415aca792da5fbaa786def0e317226fea08bf","entity_key":"d_tr_ready_intro:3","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1754efd2aad5b620db127bb18f905363266bcf8ced3de38626a0a3abbc9124bd","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/9aa304ea9965d3f5f3cc62c4717415aca792da5fbaa786def0e317226fea08bf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_alphabet_02:3 -> audio/generated/tr-TR/dialogues/9b2b59bc0a07048e23b1a1251c433cc28c0e593c910423d66d18b9e1bf27d655.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('582d4c2a-4b75-5cf9-ac5f-9509ffc2867e', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_alphabet_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '555c825ca9b1f13071e0bd1332a07748f3397ae758b4de5cb73ed3422112088e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('26034612-e0d2-5cc6-9fcb-935b01141e89', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('582d4c2a-4b75-5cf9-ac5f-9509ffc2867e', 1), '555c825ca9b1f13071e0bd1332a07748f3397ae758b4de5cb73ed3422112088e',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/9b2b59bc0a07048e23b1a1251c433cc28c0e593c910423d66d18b9e1bf27d655.mp3', 966, '2026-09-13 15:16:56.105488', 'ba2e72cfe3128f1fd4710b8d0f566e958bdf2b3382b99305f5d1f3705fe7f138', 'validated', '{"audio_key":"9b2b59bc0a07048e23b1a1251c433cc28c0e593c910423d66d18b9e1bf27d655","entity_key":"d_alphabet_02:3","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ba2e72cfe3128f1fd4710b8d0f566e958bdf2b3382b99305f5d1f3705fe7f138","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/9b2b59bc0a07048e23b1a1251c433cc28c0e593c910423d66d18b9e1bf27d655.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_tr_meaning_help:3 -> audio/generated/tr-TR/dialogues/a123e35a1324b7a7645df5e440b399cccd70c9dd417cf6a320fa75450e500a76.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fbbc4cd4-b285-5a31-84d1-95f18ccc9907', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_tr_meaning_help:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c8fa3bb6eec57abd331049ce04b18cdf9c3f9494dc1782e1ba6456958c0f65d6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('227caf1a-433b-58de-8123-d315bb7d5e7e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fbbc4cd4-b285-5a31-84d1-95f18ccc9907', 1), 'c8fa3bb6eec57abd331049ce04b18cdf9c3f9494dc1782e1ba6456958c0f65d6',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/a123e35a1324b7a7645df5e440b399cccd70c9dd417cf6a320fa75450e500a76.mp3', 1018, '2026-09-14 12:09:05.347533', 'd3cb42eee8c0d4d4cc5c5397bdc77343d2ec77a376b8888b5caf8e8c6c8e0998', 'validated', '{"audio_key":"a123e35a1324b7a7645df5e440b399cccd70c9dd417cf6a320fa75450e500a76","entity_key":"d_tr_meaning_help:3","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d3cb42eee8c0d4d4cc5c5397bdc77343d2ec77a376b8888b5caf8e8c6c8e0998","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/a123e35a1324b7a7645df5e440b399cccd70c9dd417cf6a320fa75450e500a76.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_tr_meaning_help:5 -> audio/generated/tr-TR/dialogues/a123e35a1324b7a7645df5e440b399cccd70c9dd417cf6a320fa75450e500a76.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('73c773d7-71ed-5296-9167-aa87cdaec61d', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_tr_meaning_help:5')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c8fa3bb6eec57abd331049ce04b18cdf9c3f9494dc1782e1ba6456958c0f65d6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dd569bac-86d4-5f31-822e-cedb7040d261', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('73c773d7-71ed-5296-9167-aa87cdaec61d', 1), 'c8fa3bb6eec57abd331049ce04b18cdf9c3f9494dc1782e1ba6456958c0f65d6',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/a123e35a1324b7a7645df5e440b399cccd70c9dd417cf6a320fa75450e500a76.mp3', 1018, '2026-09-14 12:09:05.347533', 'd3cb42eee8c0d4d4cc5c5397bdc77343d2ec77a376b8888b5caf8e8c6c8e0998', 'validated', '{"audio_key":"a123e35a1324b7a7645df5e440b399cccd70c9dd417cf6a320fa75450e500a76","entity_key":"d_tr_meaning_help:5","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d3cb42eee8c0d4d4cc5c5397bdc77343d2ec77a376b8888b5caf8e8c6c8e0998","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/a123e35a1324b7a7645df5e440b399cccd70c9dd417cf6a320fa75450e500a76.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_my_name_02:4 -> audio/generated/tr-TR/dialogues/a4659d1cbc80ab74a025624fa830728a8cb963ca8d8769d3efe3e830b55e7035.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('725f4f83-de2b-5006-8437-594dac80f6e8', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_my_name_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3f4f9fa7432e8ce3086aeba8a95c1ae7fb784c2a6438c5180c702ba2574a0046'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('330b94fa-9703-5463-8a84-2174ee038b3e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('725f4f83-de2b-5006-8437-594dac80f6e8', 1), '3f4f9fa7432e8ce3086aeba8a95c1ae7fb784c2a6438c5180c702ba2574a0046',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/a4659d1cbc80ab74a025624fa830728a8cb963ca8d8769d3efe3e830b55e7035.mp3', 1097, '2026-09-13 15:16:56.076539', 'a3c9bcd38c12e74e019ecd8e58df6b19e6ccd6d6e4beedc1a8e721fff4fd364b', 'validated', '{"audio_key":"a4659d1cbc80ab74a025624fa830728a8cb963ca8d8769d3efe3e830b55e7035","entity_key":"d_my_name_02:4","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"a3c9bcd38c12e74e019ecd8e58df6b19e6ccd6d6e4beedc1a8e721fff4fd364b","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/a4659d1cbc80ab74a025624fa830728a8cb963ca8d8769d3efe3e830b55e7035.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_alphabet_01:3 -> audio/generated/tr-TR/dialogues/a60b7ced67105d1f156374967a989873bd5d33a1359e1a102717a225c2092275.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('03745b38-030c-550e-934d-d28d9c79e224', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_alphabet_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'df2dd74d42ee7a517db57581d7501a16a553d2dda180b16b75d573343686617d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7a56efd6-56d8-5457-b422-e292e3718ad0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('03745b38-030c-550e-934d-d28d9c79e224', 1), 'df2dd74d42ee7a517db57581d7501a16a553d2dda180b16b75d573343686617d',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/a60b7ced67105d1f156374967a989873bd5d33a1359e1a102717a225c2092275.mp3', 1018, '2026-09-13 15:16:57.087400', 'a44840cdcd9b709eda833d2205f4ac0751a1097d294503df865ffb287073205b', 'validated', '{"audio_key":"a60b7ced67105d1f156374967a989873bd5d33a1359e1a102717a225c2092275","entity_key":"d_alphabet_01:3","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a44840cdcd9b709eda833d2205f4ac0751a1097d294503df865ffb287073205b","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/a60b7ced67105d1f156374967a989873bd5d33a1359e1a102717a225c2092275.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_tr_ready_repair:1 -> audio/generated/tr-TR/dialogues/a7ffc7bf5e4c72b7732469171c258c391c7de40665dc8c0b64b91dba880fd62a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2faaf482-e8e6-5430-abc3-bafd65493483', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_tr_ready_repair:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bb98eb48958f6f1ada1b500f1ebefb5f2a5823e7fccecf1cf47d13b4e63a43bf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bc4e04df-652f-5c27-8cd2-47cbfaede023', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2faaf482-e8e6-5430-abc3-bafd65493483', 1), 'bb98eb48958f6f1ada1b500f1ebefb5f2a5823e7fccecf1cf47d13b4e63a43bf',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/a7ffc7bf5e4c72b7732469171c258c391c7de40665dc8c0b64b91dba880fd62a.mp3', 1149, '2026-09-14 12:09:05.496017', '4cf77d98470b030798f2a54dd1c4f7fe91c92d49e0df0d61c86074d17f3e1dc8', 'validated', '{"audio_key":"a7ffc7bf5e4c72b7732469171c258c391c7de40665dc8c0b64b91dba880fd62a","entity_key":"d_tr_ready_repair:1","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4cf77d98470b030798f2a54dd1c4f7fe91c92d49e0df0d61c86074d17f3e1dc8","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/a7ffc7bf5e4c72b7732469171c258c391c7de40665dc8c0b64b91dba880fd62a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_tr_ready_intro:4 -> audio/generated/tr-TR/dialogues/aa0fe3b872d3939a676fd75fca67d6aab6b1a3e072764d64240f8853a0d36194.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('13e78a83-9320-5b23-ad15-8297ea10944a', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_tr_ready_intro:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a0fead211e44ae9f8eaa303827c031a2252dd6d436199937fd7d0e145d03f91d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d1fb0e21-e80d-564b-9de0-622034e1f1f1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('13e78a83-9320-5b23-ad15-8297ea10944a', 1), 'a0fead211e44ae9f8eaa303827c031a2252dd6d436199937fd7d0e145d03f91d',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/aa0fe3b872d3939a676fd75fca67d6aab6b1a3e072764d64240f8853a0d36194.mp3', 1071, '2026-09-14 12:09:06.350707', '6095082e0caf2ecc4ff9ea279d9ff07762652d4cc624aed8c07ae12b99b29e38', 'validated', '{"audio_key":"aa0fe3b872d3939a676fd75fca67d6aab6b1a3e072764d64240f8853a0d36194","entity_key":"d_tr_ready_intro:4","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6095082e0caf2ecc4ff9ea279d9ff07762652d4cc624aed8c07ae12b99b29e38","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/aa0fe3b872d3939a676fd75fca67d6aab6b1a3e072764d64240f8853a0d36194.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_objects_02:4 -> audio/generated/tr-TR/dialogues/aa2ec502af2e42ab13dbe60ab340c10704e8bc88ce66a5886ef9ceab798bdbfe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1af8762c-277e-585a-9242-42bb9a08d062', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_objects_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '54646de594af2ada7e3c391323004fb5f9cb3eeea8b18fe9e5705e9a6e304817'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8f4c46cc-ae40-533c-83d8-446e086edf26', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1af8762c-277e-585a-9242-42bb9a08d062', 1), '54646de594af2ada7e3c391323004fb5f9cb3eeea8b18fe9e5705e9a6e304817',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/aa2ec502af2e42ab13dbe60ab340c10704e8bc88ce66a5886ef9ceab798bdbfe.mp3', 1201, '2026-09-13 15:16:57.117851', 'cc1b7e26c7b1593f3dbeb0ac70542dab202ebb20fa2f8e910fef86d2d08137b9', 'validated', '{"audio_key":"aa2ec502af2e42ab13dbe60ab340c10704e8bc88ce66a5886ef9ceab798bdbfe","entity_key":"d_first_objects_02:4","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cc1b7e26c7b1593f3dbeb0ac70542dab202ebb20fa2f8e910fef86d2d08137b9","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/aa2ec502af2e42ab13dbe60ab340c10704e8bc88ce66a5886ef9ceab798bdbfe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_alphabet_02:4 -> audio/generated/tr-TR/dialogues/aa913342c210bd2dd222bd40560f6601ea34965350ae0d6fb4324bd0789d8d6f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('03d6229f-1083-540e-ae6c-0257c541f9fd', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_alphabet_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4810fc634c6bf2eba0a07347482b978be026a57d799fef75da1be96d95b6f7d0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7e856345-77e4-56f5-9d3d-305340cd00f6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('03d6229f-1083-540e-ae6c-0257c541f9fd', 1), '4810fc634c6bf2eba0a07347482b978be026a57d799fef75da1be96d95b6f7d0',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/aa913342c210bd2dd222bd40560f6601ea34965350ae0d6fb4324bd0789d8d6f.mp3', 862, '2026-09-13 15:16:58.063520', '757f80d8b2556f9f9f04ef408f6fd2a795e5e7a53e56eba94fd19ccd35316a64', 'validated', '{"audio_key":"aa913342c210bd2dd222bd40560f6601ea34965350ae0d6fb4324bd0789d8d6f","entity_key":"d_alphabet_02:4","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"757f80d8b2556f9f9f04ef408f6fd2a795e5e7a53e56eba94fd19ccd35316a64","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/aa913342c210bd2dd222bd40560f6601ea34965350ae0d6fb4324bd0789d8d6f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_objects_02:3 -> audio/generated/tr-TR/dialogues/ab64971df491f251908d94ad99516c7e4b71e005f5f0c2fff313ba50b95304a2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ce57d171-9ce6-5946-bc24-69cb21ffbb9a', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_objects_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3a7d2251868e8a638fc9251575374b124684d05a4cf2791dcc5976bd115dd296'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('34cc4b3b-1bd9-57a7-ac03-9a96f52fb56e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ce57d171-9ce6-5946-bc24-69cb21ffbb9a', 1), '3a7d2251868e8a638fc9251575374b124684d05a4cf2791dcc5976bd115dd296',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/ab64971df491f251908d94ad99516c7e4b71e005f5f0c2fff313ba50b95304a2.mp3', 1332, '2026-09-13 15:16:58.143454', '29ee4e9a993496151117c73aab80eab65d88579db4258c7b4bcc85730490c2ee', 'validated', '{"audio_key":"ab64971df491f251908d94ad99516c7e4b71e005f5f0c2fff313ba50b95304a2","entity_key":"d_first_objects_02:3","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"29ee4e9a993496151117c73aab80eab65d88579db4258c7b4bcc85730490c2ee","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/ab64971df491f251908d94ad99516c7e4b71e005f5f0c2fff313ba50b95304a2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_numbers_0_10_02:3 -> audio/generated/tr-TR/dialogues/ad4323989785fc44d40ad432b302e3e79fcd8f155fcca9696fa339ac8cd2cbca.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7700c771-0da6-5b70-8311-095f5a51787f', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_numbers_0_10_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '91f8dbb46b4411e2a39dc5646848ff145b3acc4685e6f57a951f6cff24cf0f49'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('77cacf80-1e38-5de7-ab76-208678cc8360', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7700c771-0da6-5b70-8311-095f5a51787f', 1), '91f8dbb46b4411e2a39dc5646848ff145b3acc4685e6f57a951f6cff24cf0f49',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/ad4323989785fc44d40ad432b302e3e79fcd8f155fcca9696fa339ac8cd2cbca.mp3', 731, '2026-09-13 15:16:59.047441', 'cd71510570dcbdbcd31a3403e937c66fb3dfab64f71a6194199e6322649c9d36', 'validated', '{"audio_key":"ad4323989785fc44d40ad432b302e3e79fcd8f155fcca9696fa339ac8cd2cbca","entity_key":"d_numbers_0_10_02:3","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"cd71510570dcbdbcd31a3403e937c66fb3dfab64f71a6194199e6322649c9d36","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/ad4323989785fc44d40ad432b302e3e79fcd8f155fcca9696fa339ac8cd2cbca.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_polite_words_01:2 -> audio/generated/tr-TR/dialogues/ae397dcaae598d7f6385faed4d9b50cde8e8392edc7e67de93b489f8d231efe7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c87cf05a-ba14-5d9c-9b8c-2c789fb46da1', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_polite_words_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5b60845800e2d555dee22eaf2b0587460b8020f57cad2c31fbb3d4a9636f98ac'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e1a48388-1bfd-52c6-8525-20f6e391b53b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c87cf05a-ba14-5d9c-9b8c-2c789fb46da1', 1), '5b60845800e2d555dee22eaf2b0587460b8020f57cad2c31fbb3d4a9636f98ac',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/ae397dcaae598d7f6385faed4d9b50cde8e8392edc7e67de93b489f8d231efe7.mp3', 914, '2026-09-13 15:16:59.174649', 'abad05f7403a0b556784ea1d8c2031de1f75fa7d6b4d0ca2ce3045dfdc377e7e', 'validated', '{"audio_key":"ae397dcaae598d7f6385faed4d9b50cde8e8392edc7e67de93b489f8d231efe7","entity_key":"d_polite_words_01:2","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"abad05f7403a0b556784ea1d8c2031de1f75fa7d6b4d0ca2ce3045dfdc377e7e","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/ae397dcaae598d7f6385faed4d9b50cde8e8392edc7e67de93b489f8d231efe7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_sounds_02:1 -> audio/generated/tr-TR/dialogues/b182ce60bac0d93a201833748f0b4eea3aa5964bf7f903867b0985ccde4893bc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ccd40087-e9ab-511d-ba8e-6007accd9d6b', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_sounds_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'abbaf9edc8c36b1417e8c66848f8b05df9ab10d25be897b93cdb92f9797879aa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2ad40f4b-2901-594f-9e37-cbbcdf8e63f3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ccd40087-e9ab-511d-ba8e-6007accd9d6b', 1), 'abbaf9edc8c36b1417e8c66848f8b05df9ab10d25be897b93cdb92f9797879aa',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/b182ce60bac0d93a201833748f0b4eea3aa5964bf7f903867b0985ccde4893bc.mp3', 862, '2026-09-13 15:17:00.027702', '2bbbcac77b22c55914521bf7dc39b1ff89693e8a24a06752ba7a08014cc6d4b8', 'validated', '{"audio_key":"b182ce60bac0d93a201833748f0b4eea3aa5964bf7f903867b0985ccde4893bc","entity_key":"d_first_sounds_02:1","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2bbbcac77b22c55914521bf7dc39b1ff89693e8a24a06752ba7a08014cc6d4b8","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/b182ce60bac0d93a201833748f0b4eea3aa5964bf7f903867b0985ccde4893bc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_polite_words_02:4 -> audio/generated/tr-TR/dialogues/b3c4a066855e558d21444e80cbf6ed76c67837d546d9f38017e1c041349beb02.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3e8bbbe0-f4e3-57ce-85cd-16cb9ad64cd5', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_polite_words_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cbad6a7d17230768f6f8ac67577659da88d88c9a3f07770383dc2a0748254f57'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e16e4e43-cc8e-59a7-955a-1ef546be01cf', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3e8bbbe0-f4e3-57ce-85cd-16cb9ad64cd5', 1), 'cbad6a7d17230768f6f8ac67577659da88d88c9a3f07770383dc2a0748254f57',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/b3c4a066855e558d21444e80cbf6ed76c67837d546d9f38017e1c041349beb02.mp3', 1097, '2026-09-13 15:17:00.205203', 'a5e793580b0b5ca1e260c67dc3f6eeec8660cc5c6778b5351a6d08521accc2ab', 'validated', '{"audio_key":"b3c4a066855e558d21444e80cbf6ed76c67837d546d9f38017e1c041349beb02","entity_key":"d_polite_words_02:4","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"a5e793580b0b5ca1e260c67dc3f6eeec8660cc5c6778b5351a6d08521accc2ab","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/b3c4a066855e558d21444e80cbf6ed76c67837d546d9f38017e1c041349beb02.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_how_are_you_02:4 -> audio/generated/tr-TR/dialogues/b6ddfc39f5108824f46bf3d9da6bdeec6d6402ae7a81c6203b4edbc1ded51a2d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8e90e9a8-c797-5eca-9c52-14cd0a98394e', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_how_are_you_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '766c629d8266718fe577869b0a901fbc745e6c6d7600102b3bead94a252faca2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7080f365-2614-5c63-a88c-323d696458c7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8e90e9a8-c797-5eca-9c52-14cd0a98394e', 1), '766c629d8266718fe577869b0a901fbc745e6c6d7600102b3bead94a252faca2',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/b6ddfc39f5108824f46bf3d9da6bdeec6d6402ae7a81c6203b4edbc1ded51a2d.mp3', 966, '2026-09-13 15:17:01.011681', '0b98fc9564a59e53149d729a12c17622ce8c6e6b4854b80b5033ada99ed0fd08', 'validated', '{"audio_key":"b6ddfc39f5108824f46bf3d9da6bdeec6d6402ae7a81c6203b4edbc1ded51a2d","entity_key":"d_how_are_you_02:4","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0b98fc9564a59e53149d729a12c17622ce8c6e6b4854b80b5033ada99ed0fd08","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/b6ddfc39f5108824f46bf3d9da6bdeec6d6402ae7a81c6203b4edbc1ded51a2d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_tr_meaning_help:1 -> audio/generated/tr-TR/dialogues/bae45eddd78b0a7380df582f1d67c0b950ed6e2b73eeb926cfda03334f827ef9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f5b7e3da-d706-5270-82c4-df8b04219dee', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_tr_meaning_help:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0282cbc93eb9563572bf851c994e8e43457678608ad3de6eb06a06d41582e449'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('846fe842-ab1f-59d9-8c64-ef56e5ee5f45', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f5b7e3da-d706-5270-82c4-df8b04219dee', 1), '0282cbc93eb9563572bf851c994e8e43457678608ad3de6eb06a06d41582e449',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/bae45eddd78b0a7380df582f1d67c0b950ed6e2b73eeb926cfda03334f827ef9.mp3', 1253, '2026-09-14 12:09:06.532411', '4e30cc807d7da380201d8aeb0d39f0a0fc5ef06d2af80f7393f3b736e90a05ca', 'validated', '{"audio_key":"bae45eddd78b0a7380df582f1d67c0b950ed6e2b73eeb926cfda03334f827ef9","entity_key":"d_tr_meaning_help:1","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4e30cc807d7da380201d8aeb0d39f0a0fc5ef06d2af80f7393f3b736e90a05ca","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/bae45eddd78b0a7380df582f1d67c0b950ed6e2b73eeb926cfda03334f827ef9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_survival_words_02:4 -> audio/generated/tr-TR/dialogues/bcf5ce189de8355a4bc9ff8f3e4e3f3ce7fe68eb62cdb5f6889e8815ea8a8bfa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8f1f118e-b4a9-5ad4-aa01-803950a09a66', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_survival_words_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd7007057d4932b1ec3e5c0e9a3227438c416bc699225718dcc72ce3ebcab07aa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('45224600-247e-5967-a962-48270f81f007', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8f1f118e-b4a9-5ad4-aa01-803950a09a66', 1), 'd7007057d4932b1ec3e5c0e9a3227438c416bc699225718dcc72ce3ebcab07aa',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/bcf5ce189de8355a4bc9ff8f3e4e3f3ce7fe68eb62cdb5f6889e8815ea8a8bfa.mp3', 1697, '2026-09-13 15:17:01.261959', '3fd7a9759c9dd9e0567630c9b49f03d56de67709d577ac86aa1a6927c2c614f9', 'validated', '{"audio_key":"bcf5ce189de8355a4bc9ff8f3e4e3f3ce7fe68eb62cdb5f6889e8815ea8a8bfa","entity_key":"d_survival_words_02:4","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"3fd7a9759c9dd9e0567630c9b49f03d56de67709d577ac86aa1a6927c2c614f9","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/bcf5ce189de8355a4bc9ff8f3e4e3f3ce7fe68eb62cdb5f6889e8815ea8a8bfa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_greetings_02:3 -> audio/generated/tr-TR/dialogues/bde85941450a1c626d4a0aeb6f1bfe49c5e7651df9191eebd72d411b18dc0f4f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('62a69005-8c62-5f1a-88f6-2084029aa7d3', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_greetings_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8d13e9968d0f6649d75c8ff265f591b14c2a16f95b6acf78f0100e8e2642b2f7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('caebc317-c084-5f90-b116-4613ac4708ab', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('62a69005-8c62-5f1a-88f6-2084029aa7d3', 1), '8d13e9968d0f6649d75c8ff265f591b14c2a16f95b6acf78f0100e8e2642b2f7',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/bde85941450a1c626d4a0aeb6f1bfe49c5e7651df9191eebd72d411b18dc0f4f.mp3', 862, '2026-09-13 15:17:01.985838', '88d3cee8c41ff23e61f9d0a39dc408c2a99a44d125a398f6ccc9d62933a3844c', 'validated', '{"audio_key":"bde85941450a1c626d4a0aeb6f1bfe49c5e7651df9191eebd72d411b18dc0f4f","entity_key":"d_first_greetings_02:3","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"88d3cee8c41ff23e61f9d0a39dc408c2a99a44d125a398f6ccc9d62933a3844c","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/bde85941450a1c626d4a0aeb6f1bfe49c5e7651df9191eebd72d411b18dc0f4f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_polite_words_02:2 -> audio/generated/tr-TR/dialogues/bff8e88d938fbe049ee2fa3ce1426dff85999b5dd8be289dde2a4ae8de4b440c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a5323740-dcaa-5941-80ae-9e32efa950b3', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_polite_words_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ee8357dc51dafecadd8b2b7219db9da175a6b4e7af5f1381eff6ee313024f48f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('59bccad4-090f-5f72-82d6-95fd9438b7ec', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a5323740-dcaa-5941-80ae-9e32efa950b3', 1), 'ee8357dc51dafecadd8b2b7219db9da175a6b4e7af5f1381eff6ee313024f48f',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/bff8e88d938fbe049ee2fa3ce1426dff85999b5dd8be289dde2a4ae8de4b440c.mp3', 862, '2026-09-13 15:17:02.240818', '3782c98ad8a191c50da4dc4d800cd21cfa7ab88c0dec0904276e047c7f64b8e6', 'validated', '{"audio_key":"bff8e88d938fbe049ee2fa3ce1426dff85999b5dd8be289dde2a4ae8de4b440c","entity_key":"d_polite_words_02:2","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"3782c98ad8a191c50da4dc4d800cd21cfa7ab88c0dec0904276e047c7f64b8e6","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/bff8e88d938fbe049ee2fa3ce1426dff85999b5dd8be289dde2a4ae8de4b440c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_conversation_01:4 -> audio/generated/tr-TR/dialogues/c0d1ce4371c9cf06681a90675830f355e2bac0cd232be01c258f8d37f06d3c50.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f7df153c-35e7-5f57-a689-4ac760ef5153', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_conversation_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3a59410baf74d9d777a5292e9cb38a277e51d256a5ae9caec774b4684ebc289e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('61b122a4-5a2c-5f71-8525-f0fb9f0e87fe', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f7df153c-35e7-5f57-a689-4ac760ef5153', 1), '3a59410baf74d9d777a5292e9cb38a277e51d256a5ae9caec774b4684ebc289e',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/c0d1ce4371c9cf06681a90675830f355e2bac0cd232be01c258f8d37f06d3c50.mp3', 1697, '2026-09-13 15:17:03.091246', 'b25998b60f9899b005fc08cf993c418921b25633c0c5f2df71c5dad41655f22e', 'validated', '{"audio_key":"c0d1ce4371c9cf06681a90675830f355e2bac0cd232be01c258f8d37f06d3c50","entity_key":"d_first_conversation_01:4","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b25998b60f9899b005fc08cf993c418921b25633c0c5f2df71c5dad41655f22e","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/c0d1ce4371c9cf06681a90675830f355e2bac0cd232be01c258f8d37f06d3c50.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_alphabet_01:4 -> audio/generated/tr-TR/dialogues/c4b477f21076b76ad6cf9e908a0c66390d0170207fa60d54b33f978e1363aac7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9970ba5c-65f2-5c63-adf7-311913190f77', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_alphabet_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e487f5a17f271742a18b71f5d3837f00361491398d94504d45d5e66c3f118dd7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7422fa66-0bd0-5f84-be4a-e76a882e5781', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9970ba5c-65f2-5c63-adf7-311913190f77', 1), 'e487f5a17f271742a18b71f5d3837f00361491398d94504d45d5e66c3f118dd7',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/c4b477f21076b76ad6cf9e908a0c66390d0170207fa60d54b33f978e1363aac7.mp3', 1071, '2026-09-13 15:17:03.246663', '01e927d4a7a8d801eac7cfc2d116fbac40da7f744839b139825dfbeb8b02d64b', 'validated', '{"audio_key":"c4b477f21076b76ad6cf9e908a0c66390d0170207fa60d54b33f978e1363aac7","entity_key":"d_alphabet_01:4","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"01e927d4a7a8d801eac7cfc2d116fbac40da7f744839b139825dfbeb8b02d64b","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/c4b477f21076b76ad6cf9e908a0c66390d0170207fa60d54b33f978e1363aac7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_tr_ready_repair:2 -> audio/generated/tr-TR/dialogues/c4f2cead936339fe5709c3881cca6d2a489d281b83fe02d6d4462614953340e7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ee858d76-a692-521b-ad18-1b4001b50551', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_tr_ready_repair:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6edc9758d29a357989b3099346504c21277ed4b2668f2d470033bcc45e4f4de7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('791357e1-ff70-57c2-b8d6-a186f33122f3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ee858d76-a692-521b-ad18-1b4001b50551', 1), '6edc9758d29a357989b3099346504c21277ed4b2668f2d470033bcc45e4f4de7',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/c4f2cead936339fe5709c3881cca6d2a489d281b83fe02d6d4462614953340e7.mp3', 1071, '2026-09-14 12:09:07.321490', '8f51381f93399ba11dccd42e1fe4e9ac54005ecf366a37ef406e1ed13c2c20c3', 'validated', '{"audio_key":"c4f2cead936339fe5709c3881cca6d2a489d281b83fe02d6d4462614953340e7","entity_key":"d_tr_ready_repair:2","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"8f51381f93399ba11dccd42e1fe4e9ac54005ecf366a37ef406e1ed13c2c20c3","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/c4f2cead936339fe5709c3881cca6d2a489d281b83fe02d6d4462614953340e7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_alphabet_02:2 -> audio/generated/tr-TR/dialogues/c5405cd9878b133429f448494318aed1383426e3cff73c1bfb36fd376bb318a6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c7836c06-a396-5275-801d-e0c6d456f082', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_alphabet_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '801e19f7a2b90cdc564a4a93788abd329e2739dbbeef2005aa803a16a53302a7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('95c3d825-2831-5594-978c-cddbdbad6f6e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c7836c06-a396-5275-801d-e0c6d456f082', 1), '801e19f7a2b90cdc564a4a93788abd329e2739dbbeef2005aa803a16a53302a7',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/c5405cd9878b133429f448494318aed1383426e3cff73c1bfb36fd376bb318a6.mp3', 1201, '2026-09-13 15:17:04.103181', '0d8c582e38afe1c4ef87604dd92240c87a27540c6c27cfb4016bf91ba2eb7a17', 'validated', '{"audio_key":"c5405cd9878b133429f448494318aed1383426e3cff73c1bfb36fd376bb318a6","entity_key":"d_alphabet_02:2","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"0d8c582e38afe1c4ef87604dd92240c87a27540c6c27cfb4016bf91ba2eb7a17","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/c5405cd9878b133429f448494318aed1383426e3cff73c1bfb36fd376bb318a6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_objects_01:4 -> audio/generated/tr-TR/dialogues/cb199eb38ba8a7db8ebeafc1941b963734b88c53844f1b69c75d3913c2306873.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('252b7685-7f27-582b-903b-e4d32cbd0f88', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_objects_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '947a1b656f6ee2fef363f252db51b58856f0b5e6ed7ba7065733d396914da9c3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('540ee642-2112-5dca-9d11-6da71616dc13', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('252b7685-7f27-582b-903b-e4d32cbd0f88', 1), '947a1b656f6ee2fef363f252db51b58856f0b5e6ed7ba7065733d396914da9c3',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/cb199eb38ba8a7db8ebeafc1941b963734b88c53844f1b69c75d3913c2306873.mp3', 1149, '2026-09-13 15:17:04.298628', 'b109f89474c2f1024761707f98db1053430a5b3f06da9720221dbcbd4cfde9ad', 'validated', '{"audio_key":"cb199eb38ba8a7db8ebeafc1941b963734b88c53844f1b69c75d3913c2306873","entity_key":"d_first_objects_01:4","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b109f89474c2f1024761707f98db1053430a5b3f06da9720221dbcbd4cfde9ad","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/cb199eb38ba8a7db8ebeafc1941b963734b88c53844f1b69c75d3913c2306873.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_survival_words_02:1 -> audio/generated/tr-TR/dialogues/cdcf90f381c5095710b17c25be7ca3df2a414803225f7a20fa249155d165fa52.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d4727a1d-1487-5878-ae83-93e8a92411ba', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_survival_words_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a4cf96644233ed7c50d94d4a56a557c9e0047ddcf521795f079eec94a70a4e89'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6d04e7b6-3a54-5696-846f-1ad16422724e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d4727a1d-1487-5878-ae83-93e8a92411ba', 1), 'a4cf96644233ed7c50d94d4a56a557c9e0047ddcf521795f079eec94a70a4e89',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/cdcf90f381c5095710b17c25be7ca3df2a414803225f7a20fa249155d165fa52.mp3', 1384, '2026-09-13 15:17:05.142441', '78a1b8b867bf36cd9c5a337576b88e4bb0172679a7d07783bef5b54b6de3b9ab', 'validated', '{"audio_key":"cdcf90f381c5095710b17c25be7ca3df2a414803225f7a20fa249155d165fa52","entity_key":"d_survival_words_02:1","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"78a1b8b867bf36cd9c5a337576b88e4bb0172679a7d07783bef5b54b6de3b9ab","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/cdcf90f381c5095710b17c25be7ca3df2a414803225f7a20fa249155d165fa52.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_polite_words_01:1 -> audio/generated/tr-TR/dialogues/d4353dedc7ffd04ba7b79051e6bfbfe5084460ee4b23e465aae4a30b067d887e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('917ac753-3c81-5cf8-b9c2-d8968a07611d', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_polite_words_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '72d00e5feeceaf3aa8b4aa81ec00619a15c4a4d331c6f1f7099c852383277c88'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('36462de2-d133-5462-ab64-38a648494ae5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('917ac753-3c81-5cf8-b9c2-d8968a07611d', 1), '72d00e5feeceaf3aa8b4aa81ec00619a15c4a4d331c6f1f7099c852383277c88',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/d4353dedc7ffd04ba7b79051e6bfbfe5084460ee4b23e465aae4a30b067d887e.mp3', 1436, '2026-09-13 15:17:05.340047', '8e5b528e218863f42589973efde9bc8e6659c13cc59631352bb8575a798dbac6', 'validated', '{"audio_key":"d4353dedc7ffd04ba7b79051e6bfbfe5084460ee4b23e465aae4a30b067d887e","entity_key":"d_polite_words_01:1","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8e5b528e218863f42589973efde9bc8e6659c13cc59631352bb8575a798dbac6","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/d4353dedc7ffd04ba7b79051e6bfbfe5084460ee4b23e465aae4a30b067d887e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_how_are_you_02:2 -> audio/generated/tr-TR/dialogues/ddec6d37ce47ca8e315463ae94cc8c8e5a212c1937be762d925c7a4ce4834890.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('527a2070-7af3-51f8-9f4d-c2bf2039a42f', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_how_are_you_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6f157f4f16f7af65a2f328222789f43434b00b794b72a66f059340b1d6f2f7b8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ac792ce1-7224-5d6e-9668-dec62379ee0a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('527a2070-7af3-51f8-9f4d-c2bf2039a42f', 1), '6f157f4f16f7af65a2f328222789f43434b00b794b72a66f059340b1d6f2f7b8',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/ddec6d37ce47ca8e315463ae94cc8c8e5a212c1937be762d925c7a4ce4834890.mp3', 1671, '2026-09-13 15:17:06.181846', 'fc27ccb45a23db37592110f3640f40978e7ec1ce01b6ed70ea11303d01f869c7', 'validated', '{"audio_key":"ddec6d37ce47ca8e315463ae94cc8c8e5a212c1937be762d925c7a4ce4834890","entity_key":"d_how_are_you_02:2","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fc27ccb45a23db37592110f3640f40978e7ec1ce01b6ed70ea11303d01f869c7","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/ddec6d37ce47ca8e315463ae94cc8c8e5a212c1937be762d925c7a4ce4834890.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_objects_01:2 -> audio/generated/tr-TR/dialogues/de03f2bfbba76f98f727de1fc6173c6863a80a499f065b026c32593a89a8bcc3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ac02a6a2-61b1-5ea3-b3c4-50ba29eea7aa', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_objects_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '095415ff5262da04098ef75596bd114940a6aa4ecf5ddcc9434f0d6421ffcaed'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9a0ce5a8-3e03-586b-a6de-be90bfa8fffd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ac02a6a2-61b1-5ea3-b3c4-50ba29eea7aa', 1), '095415ff5262da04098ef75596bd114940a6aa4ecf5ddcc9434f0d6421ffcaed',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/de03f2bfbba76f98f727de1fc6173c6863a80a499f065b026c32593a89a8bcc3.mp3', 1149, '2026-09-13 15:17:06.387233', 'bc795633887dc2e8eb2960cac41efc4136ab250547e90e7e1666a98582f7d3ca', 'validated', '{"audio_key":"de03f2bfbba76f98f727de1fc6173c6863a80a499f065b026c32593a89a8bcc3","entity_key":"d_first_objects_01:2","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bc795633887dc2e8eb2960cac41efc4136ab250547e90e7e1666a98582f7d3ca","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/de03f2bfbba76f98f727de1fc6173c6863a80a499f065b026c32593a89a8bcc3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_alphabet_01:1 -> audio/generated/tr-TR/dialogues/df5b3fe7fb55c6510197ab2d380e76f199186411cf403df85e1a5274fb0584e2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9de5c985-1ced-582c-bf26-51ff4ef3ce7d', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_alphabet_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c0f24f34e4db93612f989e7823b043770308eba4224603d1c858a24065198626'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('95d43b40-0745-5d4b-92cd-a4cf7f82eb01', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9de5c985-1ced-582c-bf26-51ff4ef3ce7d', 1), 'c0f24f34e4db93612f989e7823b043770308eba4224603d1c858a24065198626',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/df5b3fe7fb55c6510197ab2d380e76f199186411cf403df85e1a5274fb0584e2.mp3', 1253, '2026-09-13 15:17:07.202511', '98e71317ead73f7f5b2db94d04aaf290bbd541f1e8d659bfe7e97b358c97f01a', 'validated', '{"audio_key":"df5b3fe7fb55c6510197ab2d380e76f199186411cf403df85e1a5274fb0584e2","entity_key":"d_alphabet_01:1","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"98e71317ead73f7f5b2db94d04aaf290bbd541f1e8d659bfe7e97b358c97f01a","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/df5b3fe7fb55c6510197ab2d380e76f199186411cf403df85e1a5274fb0584e2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_my_name_01:1 -> audio/generated/tr-TR/dialogues/e2cd24790ac2d029eaacc2c02217b5b7aa33cf3aa7dd15ccb262d9320eea10ee.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('02bd4b54-f63a-5f4e-9d50-93638016e88f', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_my_name_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '28a13c9f894dacbc91f9f68460ee5c04e7aa212dea0fa6d6ad8aa7afb13872cb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('25a4f35c-f74d-5ce1-b193-f01ad98725da', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('02bd4b54-f63a-5f4e-9d50-93638016e88f', 1), '28a13c9f894dacbc91f9f68460ee5c04e7aa212dea0fa6d6ad8aa7afb13872cb',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/e2cd24790ac2d029eaacc2c02217b5b7aa33cf3aa7dd15ccb262d9320eea10ee.mp3', 1515, '2026-09-13 15:17:07.430807', '2f5e846de4331eebce9e1885f7fc1d3567e9883ddb01d9b3da3222c9c4272017', 'validated', '{"audio_key":"e2cd24790ac2d029eaacc2c02217b5b7aa33cf3aa7dd15ccb262d9320eea10ee","entity_key":"d_my_name_01:1","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2f5e846de4331eebce9e1885f7fc1d3567e9883ddb01d9b3da3222c9c4272017","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/e2cd24790ac2d029eaacc2c02217b5b7aa33cf3aa7dd15ccb262d9320eea10ee.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_how_are_you_01:2 -> audio/generated/tr-TR/dialogues/e3f040e706af63e9d83629ccd41aca47ca4797a22d69223305eb9862a7657ed8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0d775782-d178-5109-b1e6-0cf120917ce3', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_how_are_you_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e158f807b5e0e09270a137cd02da8c25037b1bd5b8443322eb6f9935f44e1003'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f9b214d8-29ca-5622-8194-c801270d5142', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0d775782-d178-5109-b1e6-0cf120917ce3', 1), 'e158f807b5e0e09270a137cd02da8c25037b1bd5b8443322eb6f9935f44e1003',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/e3f040e706af63e9d83629ccd41aca47ca4797a22d69223305eb9862a7657ed8.mp3', 1854, '2026-09-13 15:17:08.284817', 'd08161465ae0bb91b5fa230b6e40b17ab1795791a908c6edb814d876b0bc5126', 'validated', '{"audio_key":"e3f040e706af63e9d83629ccd41aca47ca4797a22d69223305eb9862a7657ed8","entity_key":"d_how_are_you_01:2","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"d08161465ae0bb91b5fa230b6e40b17ab1795791a908c6edb814d876b0bc5126","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/e3f040e706af63e9d83629ccd41aca47ca4797a22d69223305eb9862a7657ed8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_objects_01:1 -> audio/generated/tr-TR/dialogues/e6916241de23349c5a1bd93c45210303dd2eafea6e3142f7c2658af0a93f1f64.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('aeba9937-c330-50a5-a215-4c60565afc82', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_objects_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '322c2cfd79253d10098cd5856c9259e5bc4276e8fd6c81e22746596e9bf9d599'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5efe4f68-396b-5bfd-bf53-d1dfc6e7bfa8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('aeba9937-c330-50a5-a215-4c60565afc82', 1), '322c2cfd79253d10098cd5856c9259e5bc4276e8fd6c81e22746596e9bf9d599',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/e6916241de23349c5a1bd93c45210303dd2eafea6e3142f7c2658af0a93f1f64.mp3', 1018, '2026-09-13 15:17:08.402252', 'ae286074c4b430d0720a76ae17925d76c9e4dae1115297a431fd6e9ba2ea2ff9', 'validated', '{"audio_key":"e6916241de23349c5a1bd93c45210303dd2eafea6e3142f7c2658af0a93f1f64","entity_key":"d_first_objects_01:1","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ae286074c4b430d0720a76ae17925d76c9e4dae1115297a431fd6e9ba2ea2ff9","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/e6916241de23349c5a1bd93c45210303dd2eafea6e3142f7c2658af0a93f1f64.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_survival_words_01:3 -> audio/generated/tr-TR/dialogues/e97cdbee512483b7dc0c9ef2520d5c70aec279074156acf151cc1525e2410aa1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('af9215c1-ce99-5f4e-8fbd-371d1be885b1', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_survival_words_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'afe87a4c9eeaa7e1f6eb8f6e68a065a3f442fb16eae893c62f3785c9cd1b7572'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3f37304e-dd21-5980-b1de-195a12db2921', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('af9215c1-ce99-5f4e-8fbd-371d1be885b1', 1), 'afe87a4c9eeaa7e1f6eb8f6e68a065a3f442fb16eae893c62f3785c9cd1b7572',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/e97cdbee512483b7dc0c9ef2520d5c70aec279074156acf151cc1525e2410aa1.mp3', 914, '2026-09-13 15:17:09.329471', 'da1033665de2713124a4f646d79e63b53140b12760ba0cd8db9aadca2b6f0919', 'validated', '{"audio_key":"e97cdbee512483b7dc0c9ef2520d5c70aec279074156acf151cc1525e2410aa1","entity_key":"d_survival_words_01:3","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"da1033665de2713124a4f646d79e63b53140b12760ba0cd8db9aadca2b6f0919","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/e97cdbee512483b7dc0c9ef2520d5c70aec279074156acf151cc1525e2410aa1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_numbers_0_10_01:2 -> audio/generated/tr-TR/dialogues/ecdb8b7cae56ad5e06b442de04f2f39846ebdb56bb66ebf3319cefabdef9e501.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('09b4afd9-5680-5572-b174-e3a7161ef22e', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_numbers_0_10_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '72095c7d42eb7db2dc051a4d16f3d0ca392093989f9d87f47329ac33f1e98271'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b8db8617-0ba0-5555-8197-dc26df3fadb8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('09b4afd9-5680-5572-b174-e3a7161ef22e', 1), '72095c7d42eb7db2dc051a4d16f3d0ca392093989f9d87f47329ac33f1e98271',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/ecdb8b7cae56ad5e06b442de04f2f39846ebdb56bb66ebf3319cefabdef9e501.mp3', 966, '2026-09-13 15:17:09.398605', 'd4805f43ce83ceb3769ca3c6b75c46a864d3f3224a2253660ca1d5f715a74ebb', 'validated', '{"audio_key":"ecdb8b7cae56ad5e06b442de04f2f39846ebdb56bb66ebf3319cefabdef9e501","entity_key":"d_numbers_0_10_01:2","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d4805f43ce83ceb3769ca3c6b75c46a864d3f3224a2253660ca1d5f715a74ebb","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/ecdb8b7cae56ad5e06b442de04f2f39846ebdb56bb66ebf3319cefabdef9e501.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_tr_ready_repair:4 -> audio/generated/tr-TR/dialogues/f01beda584780fd631cbc43c70c0ec4c0921e6a22118164cbc08e155be001924.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cd2c7af8-c85c-55a5-85f4-774ec11a1d34', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_tr_ready_repair:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a357eb9f5c3b45c892a4fb201f02f62650da34b4cb91b3d8e5808b3cf7c46bac'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9bf88373-c36d-5896-914d-437907403780', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cd2c7af8-c85c-55a5-85f4-774ec11a1d34', 1), 'a357eb9f5c3b45c892a4fb201f02f62650da34b4cb91b3d8e5808b3cf7c46bac',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/f01beda584780fd631cbc43c70c0ec4c0921e6a22118164cbc08e155be001924.mp3', 1567, '2026-09-14 12:09:07.634475', '0d5d7db544f40be8d5705e91f36480246852453cb6e274c65aff4cb9cd383536', 'validated', '{"audio_key":"f01beda584780fd631cbc43c70c0ec4c0921e6a22118164cbc08e155be001924","entity_key":"d_tr_ready_repair:4","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"0d5d7db544f40be8d5705e91f36480246852453cb6e274c65aff4cb9cd383536","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/f01beda584780fd631cbc43c70c0ec4c0921e6a22118164cbc08e155be001924.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_survival_words_02:2 -> audio/generated/tr-TR/dialogues/f37af8b4dcfbcf464f26703aff763c50019b519d73d19f405a2090004318cdde.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f2aaa218-6493-59a5-82c2-a090ba3d5ca7', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_survival_words_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '04a450889e1933db81cb7b0e672b3e65bb5f48de1f4cdd26831669166b35d17a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d3e781a6-6f5c-557e-a91e-076f4c2fa5a9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f2aaa218-6493-59a5-82c2-a090ba3d5ca7', 1), '04a450889e1933db81cb7b0e672b3e65bb5f48de1f4cdd26831669166b35d17a',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/f37af8b4dcfbcf464f26703aff763c50019b519d73d19f405a2090004318cdde.mp3', 966, '2026-09-13 15:17:10.375521', '59b09d864aa18684de960393a5ee3dead544ac1b2ddc3511dcf4f69c577e9e86', 'validated', '{"audio_key":"f37af8b4dcfbcf464f26703aff763c50019b519d73d19f405a2090004318cdde","entity_key":"d_survival_words_02:2","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"59b09d864aa18684de960393a5ee3dead544ac1b2ddc3511dcf4f69c577e9e86","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/f37af8b4dcfbcf464f26703aff763c50019b519d73d19f405a2090004318cdde.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_my_name_01:3 -> audio/generated/tr-TR/dialogues/fd6f8676434118d523530d19172ceb877f89b407716b5bb007a05bd438f898a9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1b496fa8-bcfc-5f7f-ad00-b75c4773e470', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_my_name_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'be54cacf1a0d1b5b8fdea0ec834f611e18fb0de28690cbcc1fdfd80f91166c66'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fd3c996d-6df4-56a9-865d-f2d0055e4546', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1b496fa8-bcfc-5f7f-ad00-b75c4773e470', 1), 'be54cacf1a0d1b5b8fdea0ec834f611e18fb0de28690cbcc1fdfd80f91166c66',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/fd6f8676434118d523530d19172ceb877f89b407716b5bb007a05bd438f898a9.mp3', 1619, '2026-09-13 15:17:10.447429', 'deec68ed5f655be9eead28450979a80300225c2f6ba79c0dfb5a052c4c4c8d8c', 'validated', '{"audio_key":"fd6f8676434118d523530d19172ceb877f89b407716b5bb007a05bd438f898a9","entity_key":"d_my_name_01:3","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"deec68ed5f655be9eead28450979a80300225c2f6ba79c0dfb5a052c4c4c8d8c","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/fd6f8676434118d523530d19172ceb877f89b407716b5bb007a05bd438f898a9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_sounds_04 -> audio/generated/tr-TR/lexical/00245389453d750a007dce50214060f6a6d606abb6e1e9530535185457d7a1c8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e8399b7a-e5e9-5d63-81d7-c4733b148d84', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_sounds_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e9445500503e30e6b27ccd1c4dac5f3578cb69a0c19f0e1028c02aaef9e47545'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('07708d1f-7320-5810-b4ca-baf9d8cf79b9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e8399b7a-e5e9-5d63-81d7-c4733b148d84', 1), 'e9445500503e30e6b27ccd1c4dac5f3578cb69a0c19f0e1028c02aaef9e47545',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/00245389453d750a007dce50214060f6a6d606abb6e1e9530535185457d7a1c8.mp3', 966, '2026-09-13 15:17:14.391779', '496c81eac70daf6d0b11604176a8810bb749014c1065dced5d4c0e2328bbde4d', 'validated', '{"audio_key":"00245389453d750a007dce50214060f6a6d606abb6e1e9530535185457d7a1c8","entity_key":"lx_first_sounds_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"496c81eac70daf6d0b11604176a8810bb749014c1065dced5d4c0e2328bbde4d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/00245389453d750a007dce50214060f6a6d606abb6e1e9530535185457d7a1c8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_sounds_04 -> audio/generated/tr-TR/lexical/00245389453d750a007dce50214060f6a6d606abb6e1e9530535185457d7a1c8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('975f2e72-8d7f-52da-907a-0a0b34b9d953', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_sounds_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e9445500503e30e6b27ccd1c4dac5f3578cb69a0c19f0e1028c02aaef9e47545'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('82fb39a3-7ba5-5bcd-bc7a-ba859214ce86', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('975f2e72-8d7f-52da-907a-0a0b34b9d953', 1), 'e9445500503e30e6b27ccd1c4dac5f3578cb69a0c19f0e1028c02aaef9e47545',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/00245389453d750a007dce50214060f6a6d606abb6e1e9530535185457d7a1c8.mp3', 966, '2026-09-13 15:17:14.391779', '496c81eac70daf6d0b11604176a8810bb749014c1065dced5d4c0e2328bbde4d', 'validated', '{"audio_key":"00245389453d750a007dce50214060f6a6d606abb6e1e9530535185457d7a1c8","entity_key":"wf_first_sounds_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"496c81eac70daf6d0b11604176a8810bb749014c1065dced5d4c0e2328bbde4d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/00245389453d750a007dce50214060f6a6d606abb6e1e9530535185457d7a1c8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_alphabet_02 -> audio/generated/tr-TR/lexical/0dedd1b87b5f28148d8f7db11c457a8c6195fb97baeef525a913de010efa90f9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3420b20b-0fe8-53b0-a00f-4d3da242dcee', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_alphabet_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ef6e788bf4e810d939be09c13bd226c4e98be8045356acfaf28db8bac285917b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9d531890-1dd6-52e6-a59a-e25ad0ecb3c3', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3420b20b-0fe8-53b0-a00f-4d3da242dcee', 1), 'ef6e788bf4e810d939be09c13bd226c4e98be8045356acfaf28db8bac285917b',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/0dedd1b87b5f28148d8f7db11c457a8c6195fb97baeef525a913de010efa90f9.mp3', 835, '2026-09-13 15:17:14.531748', '01e521f76417d5ae9993e8146106c3c8da385ea4ae4b3d8ad8be5441ec6d31b1', 'validated', '{"audio_key":"0dedd1b87b5f28148d8f7db11c457a8c6195fb97baeef525a913de010efa90f9","entity_key":"lx_alphabet_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"01e521f76417d5ae9993e8146106c3c8da385ea4ae4b3d8ad8be5441ec6d31b1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/0dedd1b87b5f28148d8f7db11c457a8c6195fb97baeef525a913de010efa90f9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_alphabet_02 -> audio/generated/tr-TR/lexical/0dedd1b87b5f28148d8f7db11c457a8c6195fb97baeef525a913de010efa90f9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4592656c-4f9b-53a5-b509-0f3bdf2dc53b', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_alphabet_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ef6e788bf4e810d939be09c13bd226c4e98be8045356acfaf28db8bac285917b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a1c003bd-0d40-5f90-95fa-ba000dd25899', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4592656c-4f9b-53a5-b509-0f3bdf2dc53b', 1), 'ef6e788bf4e810d939be09c13bd226c4e98be8045356acfaf28db8bac285917b',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/0dedd1b87b5f28148d8f7db11c457a8c6195fb97baeef525a913de010efa90f9.mp3', 835, '2026-09-13 15:17:14.531748', '01e521f76417d5ae9993e8146106c3c8da385ea4ae4b3d8ad8be5441ec6d31b1', 'validated', '{"audio_key":"0dedd1b87b5f28148d8f7db11c457a8c6195fb97baeef525a913de010efa90f9","entity_key":"wf_alphabet_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"01e521f76417d5ae9993e8146106c3c8da385ea4ae4b3d8ad8be5441ec6d31b1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/0dedd1b87b5f28148d8f7db11c457a8c6195fb97baeef525a913de010efa90f9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_alphabet_01 -> audio/generated/tr-TR/lexical/0ecaa4d26fc396f8480ff4dcb5bce35694f52b1707df16a9f7a489da0da9a648.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('dbc3397c-743d-5630-b76c-7e0903656789', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_alphabet_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8bfa829b8119a6f39b91fd8decec63830b556e4d88a9da29334d7b0558829f2d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ee3a2b65-1842-54b7-8e69-2ac798c15152', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('dbc3397c-743d-5630-b76c-7e0903656789', 1), '8bfa829b8119a6f39b91fd8decec63830b556e4d88a9da29334d7b0558829f2d',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/0ecaa4d26fc396f8480ff4dcb5bce35694f52b1707df16a9f7a489da0da9a648.mp3', 862, '2026-09-13 15:17:15.381257', '4a427a81141f66a2d87e92943ff12294e4480b887fd38057e2ac8abbd5d1064a', 'validated', '{"audio_key":"0ecaa4d26fc396f8480ff4dcb5bce35694f52b1707df16a9f7a489da0da9a648","entity_key":"lx_alphabet_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4a427a81141f66a2d87e92943ff12294e4480b887fd38057e2ac8abbd5d1064a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/0ecaa4d26fc396f8480ff4dcb5bce35694f52b1707df16a9f7a489da0da9a648.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_alphabet_01 -> audio/generated/tr-TR/lexical/0ecaa4d26fc396f8480ff4dcb5bce35694f52b1707df16a9f7a489da0da9a648.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5af8d8cf-0773-540e-a985-9fadb50dfd3c', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_alphabet_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8bfa829b8119a6f39b91fd8decec63830b556e4d88a9da29334d7b0558829f2d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('452c733a-3e6b-5b50-8312-67510fde35c6', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5af8d8cf-0773-540e-a985-9fadb50dfd3c', 1), '8bfa829b8119a6f39b91fd8decec63830b556e4d88a9da29334d7b0558829f2d',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/0ecaa4d26fc396f8480ff4dcb5bce35694f52b1707df16a9f7a489da0da9a648.mp3', 862, '2026-09-13 15:17:15.381257', '4a427a81141f66a2d87e92943ff12294e4480b887fd38057e2ac8abbd5d1064a', 'validated', '{"audio_key":"0ecaa4d26fc396f8480ff4dcb5bce35694f52b1707df16a9f7a489da0da9a648","entity_key":"wf_alphabet_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4a427a81141f66a2d87e92943ff12294e4480b887fd38057e2ac8abbd5d1064a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/0ecaa4d26fc396f8480ff4dcb5bce35694f52b1707df16a9f7a489da0da9a648.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_conversation_01 -> audio/generated/tr-TR/lexical/1127e42e2c6ee04f12aea018006a3252d15422b1883e9d61d313e503666d7a1a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1402730a-f949-5f88-b0ba-40f60ffbcfa7', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_conversation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7fdc9f4717c5fe66df286c700fab969b4d6209d03aa84624c5f8f58c17c9c058'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b6c94c24-3ed7-5067-aa42-d706e88e0df6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1402730a-f949-5f88-b0ba-40f60ffbcfa7', 1), '7fdc9f4717c5fe66df286c700fab969b4d6209d03aa84624c5f8f58c17c9c058',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/1127e42e2c6ee04f12aea018006a3252d15422b1883e9d61d313e503666d7a1a.mp3', 1097, '2026-09-13 15:17:15.562127', '6396f2d0d94182f0de557b01a1e4b548426ca61b6efb784b3e68c435c6581e52', 'validated', '{"audio_key":"1127e42e2c6ee04f12aea018006a3252d15422b1883e9d61d313e503666d7a1a","entity_key":"lx_first_conversation_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6396f2d0d94182f0de557b01a1e4b548426ca61b6efb784b3e68c435c6581e52","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/1127e42e2c6ee04f12aea018006a3252d15422b1883e9d61d313e503666d7a1a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_conversation_01 -> audio/generated/tr-TR/lexical/1127e42e2c6ee04f12aea018006a3252d15422b1883e9d61d313e503666d7a1a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ecffa3e9-ea88-57f7-8830-c04b3c984b81', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_conversation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7fdc9f4717c5fe66df286c700fab969b4d6209d03aa84624c5f8f58c17c9c058'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2574b862-14d4-56af-b1c6-ad682cc69750', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ecffa3e9-ea88-57f7-8830-c04b3c984b81', 1), '7fdc9f4717c5fe66df286c700fab969b4d6209d03aa84624c5f8f58c17c9c058',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/1127e42e2c6ee04f12aea018006a3252d15422b1883e9d61d313e503666d7a1a.mp3', 1097, '2026-09-13 15:17:15.562127', '6396f2d0d94182f0de557b01a1e4b548426ca61b6efb784b3e68c435c6581e52', 'validated', '{"audio_key":"1127e42e2c6ee04f12aea018006a3252d15422b1883e9d61d313e503666d7a1a","entity_key":"wf_first_conversation_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6396f2d0d94182f0de557b01a1e4b548426ca61b6efb784b3e68c435c6581e52","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/1127e42e2c6ee04f12aea018006a3252d15422b1883e9d61d313e503666d7a1a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_greetings_01 -> audio/generated/tr-TR/lexical/1127e42e2c6ee04f12aea018006a3252d15422b1883e9d61d313e503666d7a1a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1402730a-f949-5f88-b0ba-40f60ffbcfa7', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_greetings_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7fdc9f4717c5fe66df286c700fab969b4d6209d03aa84624c5f8f58c17c9c058'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b6c94c24-3ed7-5067-aa42-d706e88e0df6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1402730a-f949-5f88-b0ba-40f60ffbcfa7', 1), '7fdc9f4717c5fe66df286c700fab969b4d6209d03aa84624c5f8f58c17c9c058',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/1127e42e2c6ee04f12aea018006a3252d15422b1883e9d61d313e503666d7a1a.mp3', 1097, '2026-09-13 15:17:15.562127', '6396f2d0d94182f0de557b01a1e4b548426ca61b6efb784b3e68c435c6581e52', 'validated', '{"audio_key":"1127e42e2c6ee04f12aea018006a3252d15422b1883e9d61d313e503666d7a1a","entity_key":"lx_first_greetings_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6396f2d0d94182f0de557b01a1e4b548426ca61b6efb784b3e68c435c6581e52","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/1127e42e2c6ee04f12aea018006a3252d15422b1883e9d61d313e503666d7a1a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_greetings_01 -> audio/generated/tr-TR/lexical/1127e42e2c6ee04f12aea018006a3252d15422b1883e9d61d313e503666d7a1a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('019bc929-dbec-58da-a379-00ca089086ea', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_greetings_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7fdc9f4717c5fe66df286c700fab969b4d6209d03aa84624c5f8f58c17c9c058'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b92c4fcf-3c9a-5300-a42b-7b44a17617c5', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('019bc929-dbec-58da-a379-00ca089086ea', 1), '7fdc9f4717c5fe66df286c700fab969b4d6209d03aa84624c5f8f58c17c9c058',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/1127e42e2c6ee04f12aea018006a3252d15422b1883e9d61d313e503666d7a1a.mp3', 1097, '2026-09-13 15:17:15.562127', '6396f2d0d94182f0de557b01a1e4b548426ca61b6efb784b3e68c435c6581e52', 'validated', '{"audio_key":"1127e42e2c6ee04f12aea018006a3252d15422b1883e9d61d313e503666d7a1a","entity_key":"wf_first_greetings_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6396f2d0d94182f0de557b01a1e4b548426ca61b6efb784b3e68c435c6581e52","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/1127e42e2c6ee04f12aea018006a3252d15422b1883e9d61d313e503666d7a1a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_survival_words_04 -> audio/generated/tr-TR/lexical/1a8844baf29b8d6a4a7cd009a8710c286090362ae9fe27fc0fc4ff2217c0158e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('269bf692-e712-5a78-af99-0985a70ab847', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_survival_words_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '915775dc7903805540c46ce56203e8749bc48ab7febcb9ed7ecff733a72afad3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0a43be7f-262b-5720-948d-e7d7ab512057', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('269bf692-e712-5a78-af99-0985a70ab847', 1), '915775dc7903805540c46ce56203e8749bc48ab7febcb9ed7ecff733a72afad3',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/1a8844baf29b8d6a4a7cd009a8710c286090362ae9fe27fc0fc4ff2217c0158e.mp3', 1097, '2026-09-13 15:17:16.385040', 'ab88967752c384ca3ea16d224d342e6b007c3bdb33296f93a95262fb7a68c605', 'validated', '{"audio_key":"1a8844baf29b8d6a4a7cd009a8710c286090362ae9fe27fc0fc4ff2217c0158e","entity_key":"lx_survival_words_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ab88967752c384ca3ea16d224d342e6b007c3bdb33296f93a95262fb7a68c605","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/1a8844baf29b8d6a4a7cd009a8710c286090362ae9fe27fc0fc4ff2217c0158e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_survival_words_04 -> audio/generated/tr-TR/lexical/1a8844baf29b8d6a4a7cd009a8710c286090362ae9fe27fc0fc4ff2217c0158e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('279dd744-b87e-5107-baae-0ad8ace1b399', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_survival_words_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '915775dc7903805540c46ce56203e8749bc48ab7febcb9ed7ecff733a72afad3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8ea4d1c8-ea93-5a13-a52d-a56c14ac8ee3', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('279dd744-b87e-5107-baae-0ad8ace1b399', 1), '915775dc7903805540c46ce56203e8749bc48ab7febcb9ed7ecff733a72afad3',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/1a8844baf29b8d6a4a7cd009a8710c286090362ae9fe27fc0fc4ff2217c0158e.mp3', 1097, '2026-09-13 15:17:16.385040', 'ab88967752c384ca3ea16d224d342e6b007c3bdb33296f93a95262fb7a68c605', 'validated', '{"audio_key":"1a8844baf29b8d6a4a7cd009a8710c286090362ae9fe27fc0fc4ff2217c0158e","entity_key":"wf_survival_words_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ab88967752c384ca3ea16d224d342e6b007c3bdb33296f93a95262fb7a68c605","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/1a8844baf29b8d6a4a7cd009a8710c286090362ae9fe27fc0fc4ff2217c0158e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_greetings_04 -> audio/generated/tr-TR/lexical/1dbe15489e0bc7c6b4123f4fe049dd7afa3d618b0af4e6bcb16d3e700ea0646b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('23a7873a-845a-5fec-8e41-44308cc0ad60', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_greetings_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f2d1c43a772adc1c299dd79603671adcdd56ce1d96c2ca8bf9bcbcb52f7b6061'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ed7e636f-f328-5163-bf2f-c573bd31674a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('23a7873a-845a-5fec-8e41-44308cc0ad60', 1), 'f2d1c43a772adc1c299dd79603671adcdd56ce1d96c2ca8bf9bcbcb52f7b6061',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/1dbe15489e0bc7c6b4123f4fe049dd7afa3d618b0af4e6bcb16d3e700ea0646b.mp3', 1253, '2026-09-13 15:17:16.606114', 'dd734f099002a53481bd2eaaf5267b7efdbb21006f84c90c5307f7d28d24c159', 'validated', '{"audio_key":"1dbe15489e0bc7c6b4123f4fe049dd7afa3d618b0af4e6bcb16d3e700ea0646b","entity_key":"lx_first_greetings_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dd734f099002a53481bd2eaaf5267b7efdbb21006f84c90c5307f7d28d24c159","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/1dbe15489e0bc7c6b4123f4fe049dd7afa3d618b0af4e6bcb16d3e700ea0646b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_greetings_04 -> audio/generated/tr-TR/lexical/1dbe15489e0bc7c6b4123f4fe049dd7afa3d618b0af4e6bcb16d3e700ea0646b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f3e3dff6-2bd9-551c-ab40-96df7b35794f', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_greetings_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f2d1c43a772adc1c299dd79603671adcdd56ce1d96c2ca8bf9bcbcb52f7b6061'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('20a1adca-029c-5e52-99b4-2561557461f4', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f3e3dff6-2bd9-551c-ab40-96df7b35794f', 1), 'f2d1c43a772adc1c299dd79603671adcdd56ce1d96c2ca8bf9bcbcb52f7b6061',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/1dbe15489e0bc7c6b4123f4fe049dd7afa3d618b0af4e6bcb16d3e700ea0646b.mp3', 1253, '2026-09-13 15:17:16.606114', 'dd734f099002a53481bd2eaaf5267b7efdbb21006f84c90c5307f7d28d24c159', 'validated', '{"audio_key":"1dbe15489e0bc7c6b4123f4fe049dd7afa3d618b0af4e6bcb16d3e700ea0646b","entity_key":"wf_first_greetings_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dd734f099002a53481bd2eaaf5267b7efdbb21006f84c90c5307f7d28d24c159","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/1dbe15489e0bc7c6b4123f4fe049dd7afa3d618b0af4e6bcb16d3e700ea0646b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_my_name_05 -> audio/generated/tr-TR/lexical/1df3dd3ac0877492ac4e049196af978a0a26324144149d59d79678a5e97097f9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e56ed250-ce21-5b96-8b10-1daa04f0f02a', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_my_name_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5c6a6991d5991be389546cf2f4a3240239042e5e608b6fa242e3175fafe7ed6e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1e9486fd-571b-5fa3-9df8-c6e3c3919cfa', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e56ed250-ce21-5b96-8b10-1daa04f0f02a', 1), '5c6a6991d5991be389546cf2f4a3240239042e5e608b6fa242e3175fafe7ed6e',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/1df3dd3ac0877492ac4e049196af978a0a26324144149d59d79678a5e97097f9.mp3', 1097, '2026-09-13 15:17:17.386980', '1dba4afced8b004d99e12d9254aa963bac3b77035bf6353fb0227a5f3fb1c855', 'validated', '{"audio_key":"1df3dd3ac0877492ac4e049196af978a0a26324144149d59d79678a5e97097f9","entity_key":"lx_my_name_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1dba4afced8b004d99e12d9254aa963bac3b77035bf6353fb0227a5f3fb1c855","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/1df3dd3ac0877492ac4e049196af978a0a26324144149d59d79678a5e97097f9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_my_name_05 -> audio/generated/tr-TR/lexical/1df3dd3ac0877492ac4e049196af978a0a26324144149d59d79678a5e97097f9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('fbe6384d-b2be-5a6e-b9bd-40326862ba21', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_my_name_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5c6a6991d5991be389546cf2f4a3240239042e5e608b6fa242e3175fafe7ed6e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cb48a499-a184-53fd-947e-80896ab54b23', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('fbe6384d-b2be-5a6e-b9bd-40326862ba21', 1), '5c6a6991d5991be389546cf2f4a3240239042e5e608b6fa242e3175fafe7ed6e',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/1df3dd3ac0877492ac4e049196af978a0a26324144149d59d79678a5e97097f9.mp3', 1097, '2026-09-13 15:17:17.386980', '1dba4afced8b004d99e12d9254aa963bac3b77035bf6353fb0227a5f3fb1c855', 'validated', '{"audio_key":"1df3dd3ac0877492ac4e049196af978a0a26324144149d59d79678a5e97097f9","entity_key":"wf_my_name_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1dba4afced8b004d99e12d9254aa963bac3b77035bf6353fb0227a5f3fb1c855","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/1df3dd3ac0877492ac4e049196af978a0a26324144149d59d79678a5e97097f9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_numbers_0_10_05 -> audio/generated/tr-TR/lexical/202717747def47bdd68d98dc4588308d4201e0e39d9ec9ae44c7ee283a9144dd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c05adb61-d458-510f-8463-1ce06d1dc220', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_numbers_0_10_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '035609cfb5b8dfd7c489865046ff6551d12558db47e828d4b23784d9a80f2e84'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5079ff12-da9e-528b-a286-9b98bf30828d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c05adb61-d458-510f-8463-1ce06d1dc220', 1), '035609cfb5b8dfd7c489865046ff6551d12558db47e828d4b23784d9a80f2e84',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/202717747def47bdd68d98dc4588308d4201e0e39d9ec9ae44c7ee283a9144dd.mp3', 914, '2026-09-13 15:17:17.589151', '0cbc2446ef0023713b83023e81e5092b8e5c8b2543cdbe3665eb0b8fb249ac45', 'validated', '{"audio_key":"202717747def47bdd68d98dc4588308d4201e0e39d9ec9ae44c7ee283a9144dd","entity_key":"lx_numbers_0_10_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0cbc2446ef0023713b83023e81e5092b8e5c8b2543cdbe3665eb0b8fb249ac45","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/202717747def47bdd68d98dc4588308d4201e0e39d9ec9ae44c7ee283a9144dd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_numbers_0_10_05 -> audio/generated/tr-TR/lexical/202717747def47bdd68d98dc4588308d4201e0e39d9ec9ae44c7ee283a9144dd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e965f1ea-9263-56a9-b215-76ad4c2f4826', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_numbers_0_10_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '035609cfb5b8dfd7c489865046ff6551d12558db47e828d4b23784d9a80f2e84'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dc97447a-5d0e-5c08-bfb2-87b338d99912', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e965f1ea-9263-56a9-b215-76ad4c2f4826', 1), '035609cfb5b8dfd7c489865046ff6551d12558db47e828d4b23784d9a80f2e84',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/202717747def47bdd68d98dc4588308d4201e0e39d9ec9ae44c7ee283a9144dd.mp3', 914, '2026-09-13 15:17:17.589151', '0cbc2446ef0023713b83023e81e5092b8e5c8b2543cdbe3665eb0b8fb249ac45', 'validated', '{"audio_key":"202717747def47bdd68d98dc4588308d4201e0e39d9ec9ae44c7ee283a9144dd","entity_key":"wf_numbers_0_10_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0cbc2446ef0023713b83023e81e5092b8e5c8b2543cdbe3665eb0b8fb249ac45","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/202717747def47bdd68d98dc4588308d4201e0e39d9ec9ae44c7ee283a9144dd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_numbers_0_10_02 -> audio/generated/tr-TR/lexical/29ebbb71954355b5fccf1cbdd6db7bb8b5f7f3efa7be92dbbd753d01068b7a92.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('836b6445-2dee-5378-b93e-e6ff448bbe7f', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_numbers_0_10_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '697fedd529224fd85551fef5935e6a6ffcdd1e1a3190b9dbfb25556196f6d7dc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('112a26fe-cdcc-5974-beb3-d6e45e2ee093', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('836b6445-2dee-5378-b93e-e6ff448bbe7f', 1), '697fedd529224fd85551fef5935e6a6ffcdd1e1a3190b9dbfb25556196f6d7dc',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/29ebbb71954355b5fccf1cbdd6db7bb8b5f7f3efa7be92dbbd753d01068b7a92.mp3', 966, '2026-09-13 15:17:18.418840', '047af61359275d6b9656eaffc4a0855d18c3bd442efe699a6c1c60f8169d7274', 'validated', '{"audio_key":"29ebbb71954355b5fccf1cbdd6db7bb8b5f7f3efa7be92dbbd753d01068b7a92","entity_key":"lx_numbers_0_10_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"047af61359275d6b9656eaffc4a0855d18c3bd442efe699a6c1c60f8169d7274","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/29ebbb71954355b5fccf1cbdd6db7bb8b5f7f3efa7be92dbbd753d01068b7a92.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_numbers_0_10_02 -> audio/generated/tr-TR/lexical/29ebbb71954355b5fccf1cbdd6db7bb8b5f7f3efa7be92dbbd753d01068b7a92.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1219bd33-99ff-5e09-aa02-707d379d6d2f', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_numbers_0_10_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '697fedd529224fd85551fef5935e6a6ffcdd1e1a3190b9dbfb25556196f6d7dc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bf60c950-78c9-52d5-997b-8c9c8e09ca18', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1219bd33-99ff-5e09-aa02-707d379d6d2f', 1), '697fedd529224fd85551fef5935e6a6ffcdd1e1a3190b9dbfb25556196f6d7dc',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/29ebbb71954355b5fccf1cbdd6db7bb8b5f7f3efa7be92dbbd753d01068b7a92.mp3', 966, '2026-09-13 15:17:18.418840', '047af61359275d6b9656eaffc4a0855d18c3bd442efe699a6c1c60f8169d7274', 'validated', '{"audio_key":"29ebbb71954355b5fccf1cbdd6db7bb8b5f7f3efa7be92dbbd753d01068b7a92","entity_key":"wf_numbers_0_10_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"047af61359275d6b9656eaffc4a0855d18c3bd442efe699a6c1c60f8169d7274","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/29ebbb71954355b5fccf1cbdd6db7bb8b5f7f3efa7be92dbbd753d01068b7a92.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_survival_words_02 -> audio/generated/tr-TR/lexical/2c4703c90b5b92a2eeef003e23b7c9ea8f71095e4487671cfaf5e2ca38bff83a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7204e075-b593-57e2-a948-10fe18d217f8', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_survival_words_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5935eed908c4f118bfb68842dc991a9d83e1607968398b952b2c150b62f80f75'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a449d36c-9650-561a-9688-6a8f412b3af8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7204e075-b593-57e2-a948-10fe18d217f8', 1), '5935eed908c4f118bfb68842dc991a9d83e1607968398b952b2c150b62f80f75',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/2c4703c90b5b92a2eeef003e23b7c9ea8f71095e4487671cfaf5e2ca38bff83a.mp3', 1149, '2026-09-13 15:17:18.600623', '85ad69b09d01df614e8a3d29113a244e67aa54edb57e1b7fb0e27f2e12154e4b', 'validated', '{"audio_key":"2c4703c90b5b92a2eeef003e23b7c9ea8f71095e4487671cfaf5e2ca38bff83a","entity_key":"lx_survival_words_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"85ad69b09d01df614e8a3d29113a244e67aa54edb57e1b7fb0e27f2e12154e4b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/2c4703c90b5b92a2eeef003e23b7c9ea8f71095e4487671cfaf5e2ca38bff83a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_survival_words_02 -> audio/generated/tr-TR/lexical/2c4703c90b5b92a2eeef003e23b7c9ea8f71095e4487671cfaf5e2ca38bff83a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a8a5764f-665e-566b-9df9-7c782aaa014b', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_survival_words_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5935eed908c4f118bfb68842dc991a9d83e1607968398b952b2c150b62f80f75'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3cda53c9-5c9d-51c8-8e1e-ef3e4b84f421', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a8a5764f-665e-566b-9df9-7c782aaa014b', 1), '5935eed908c4f118bfb68842dc991a9d83e1607968398b952b2c150b62f80f75',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/2c4703c90b5b92a2eeef003e23b7c9ea8f71095e4487671cfaf5e2ca38bff83a.mp3', 1149, '2026-09-13 15:17:18.600623', '85ad69b09d01df614e8a3d29113a244e67aa54edb57e1b7fb0e27f2e12154e4b', 'validated', '{"audio_key":"2c4703c90b5b92a2eeef003e23b7c9ea8f71095e4487671cfaf5e2ca38bff83a","entity_key":"wf_survival_words_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"85ad69b09d01df614e8a3d29113a244e67aa54edb57e1b7fb0e27f2e12154e4b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/2c4703c90b5b92a2eeef003e23b7c9ea8f71095e4487671cfaf5e2ca38bff83a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_numbers_0_10_06 -> audio/generated/tr-TR/lexical/30f81f37b4714d67816f751b75e682562158508c8cef02a8cce741fecaa6d16e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3a27f4c3-b433-5d1e-8f8d-b6dfb9f82e10', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_numbers_0_10_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b8d31e852725afb1e26d53bab6095b2bff1749c9275be13ed1c05a56ed31ec09'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('95eabc2d-98af-524f-808e-c59fb7307a9c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3a27f4c3-b433-5d1e-8f8d-b6dfb9f82e10', 1), 'b8d31e852725afb1e26d53bab6095b2bff1749c9275be13ed1c05a56ed31ec09',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/30f81f37b4714d67816f751b75e682562158508c8cef02a8cce741fecaa6d16e.mp3', 835, '2026-09-13 15:17:19.394350', '9773c8fb630d9a452711fd376cca707a4abf5b0fe8be50b4bb6e2c7dbf8c0404', 'validated', '{"audio_key":"30f81f37b4714d67816f751b75e682562158508c8cef02a8cce741fecaa6d16e","entity_key":"lx_numbers_0_10_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9773c8fb630d9a452711fd376cca707a4abf5b0fe8be50b4bb6e2c7dbf8c0404","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/30f81f37b4714d67816f751b75e682562158508c8cef02a8cce741fecaa6d16e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_numbers_0_10_06 -> audio/generated/tr-TR/lexical/30f81f37b4714d67816f751b75e682562158508c8cef02a8cce741fecaa6d16e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b06489b4-4802-50cb-a350-cfbf47683ee0', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_numbers_0_10_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b8d31e852725afb1e26d53bab6095b2bff1749c9275be13ed1c05a56ed31ec09'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a4eebc8f-8573-5bf9-84f4-f82a06045f08', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b06489b4-4802-50cb-a350-cfbf47683ee0', 1), 'b8d31e852725afb1e26d53bab6095b2bff1749c9275be13ed1c05a56ed31ec09',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/30f81f37b4714d67816f751b75e682562158508c8cef02a8cce741fecaa6d16e.mp3', 835, '2026-09-13 15:17:19.394350', '9773c8fb630d9a452711fd376cca707a4abf5b0fe8be50b4bb6e2c7dbf8c0404', 'validated', '{"audio_key":"30f81f37b4714d67816f751b75e682562158508c8cef02a8cce741fecaa6d16e","entity_key":"wf_numbers_0_10_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9773c8fb630d9a452711fd376cca707a4abf5b0fe8be50b4bb6e2c7dbf8c0404","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/30f81f37b4714d67816f751b75e682562158508c8cef02a8cce741fecaa6d16e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_how_are_you_05 -> audio/generated/tr-TR/lexical/3ef8d6f91fdbc56d7f714c883f4d3d6eb93b505ab1a4ebf4b762e7119f82869d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1683e9d5-c526-55e7-b29e-8816661e01d6', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_how_are_you_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5e9708d50aa3cef560fa6a6d47787e44aae25d19de9bb06a9f653939df82881b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('48e21f7e-a817-5365-9785-de7cd439cf99', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1683e9d5-c526-55e7-b29e-8816661e01d6', 1), '5e9708d50aa3cef560fa6a6d47787e44aae25d19de9bb06a9f653939df82881b',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/3ef8d6f91fdbc56d7f714c883f4d3d6eb93b505ab1a4ebf4b762e7119f82869d.mp3', 966, '2026-09-13 15:17:19.582735', 'a4ca2788146e7dc49959585c8ae9794378b75dc74ec09c89330d8ebff4d85cc8', 'validated', '{"audio_key":"3ef8d6f91fdbc56d7f714c883f4d3d6eb93b505ab1a4ebf4b762e7119f82869d","entity_key":"lx_how_are_you_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a4ca2788146e7dc49959585c8ae9794378b75dc74ec09c89330d8ebff4d85cc8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/3ef8d6f91fdbc56d7f714c883f4d3d6eb93b505ab1a4ebf4b762e7119f82869d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_how_are_you_05 -> audio/generated/tr-TR/lexical/3ef8d6f91fdbc56d7f714c883f4d3d6eb93b505ab1a4ebf4b762e7119f82869d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('869b5436-bb68-5036-b3d4-93ae7d318da4', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_how_are_you_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5e9708d50aa3cef560fa6a6d47787e44aae25d19de9bb06a9f653939df82881b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('52f59bab-6d46-5952-9f62-b98e6a844b82', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('869b5436-bb68-5036-b3d4-93ae7d318da4', 1), '5e9708d50aa3cef560fa6a6d47787e44aae25d19de9bb06a9f653939df82881b',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/3ef8d6f91fdbc56d7f714c883f4d3d6eb93b505ab1a4ebf4b762e7119f82869d.mp3', 966, '2026-09-13 15:17:19.582735', 'a4ca2788146e7dc49959585c8ae9794378b75dc74ec09c89330d8ebff4d85cc8', 'validated', '{"audio_key":"3ef8d6f91fdbc56d7f714c883f4d3d6eb93b505ab1a4ebf4b762e7119f82869d","entity_key":"wf_how_are_you_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a4ca2788146e7dc49959585c8ae9794378b75dc74ec09c89330d8ebff4d85cc8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/3ef8d6f91fdbc56d7f714c883f4d3d6eb93b505ab1a4ebf4b762e7119f82869d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_survival_words_03 -> audio/generated/tr-TR/lexical/437ed041ed21f653069e71f99dac302036de8b40f17af391f7a4c88f243e0246.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7fe222d0-b6d3-5d53-bf0d-afd9f897cf23', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_survival_words_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '946b8a7467b48d5a4fafc877672884a4f7659ccad78c9bc80a8daaa0c09cc1b4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eaf4442f-d631-5448-beb1-06c4709e624f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7fe222d0-b6d3-5d53-bf0d-afd9f897cf23', 1), '946b8a7467b48d5a4fafc877672884a4f7659ccad78c9bc80a8daaa0c09cc1b4',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/437ed041ed21f653069e71f99dac302036de8b40f17af391f7a4c88f243e0246.mp3', 1071, '2026-09-13 15:17:20.417735', '5bc2c255daae91caab0cdd08d4e54b465d88813aa13c12a561bc3bbad2f2a8aa', 'validated', '{"audio_key":"437ed041ed21f653069e71f99dac302036de8b40f17af391f7a4c88f243e0246","entity_key":"lx_survival_words_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5bc2c255daae91caab0cdd08d4e54b465d88813aa13c12a561bc3bbad2f2a8aa","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/437ed041ed21f653069e71f99dac302036de8b40f17af391f7a4c88f243e0246.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_survival_words_03 -> audio/generated/tr-TR/lexical/437ed041ed21f653069e71f99dac302036de8b40f17af391f7a4c88f243e0246.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8a5b2896-4f03-5fed-b722-283eab359d4b', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_survival_words_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '946b8a7467b48d5a4fafc877672884a4f7659ccad78c9bc80a8daaa0c09cc1b4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eb5560a7-6cad-54d9-b350-616ea71bb4ce', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8a5b2896-4f03-5fed-b722-283eab359d4b', 1), '946b8a7467b48d5a4fafc877672884a4f7659ccad78c9bc80a8daaa0c09cc1b4',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/437ed041ed21f653069e71f99dac302036de8b40f17af391f7a4c88f243e0246.mp3', 1071, '2026-09-13 15:17:20.417735', '5bc2c255daae91caab0cdd08d4e54b465d88813aa13c12a561bc3bbad2f2a8aa', 'validated', '{"audio_key":"437ed041ed21f653069e71f99dac302036de8b40f17af391f7a4c88f243e0246","entity_key":"wf_survival_words_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5bc2c255daae91caab0cdd08d4e54b465d88813aa13c12a561bc3bbad2f2a8aa","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/437ed041ed21f653069e71f99dac302036de8b40f17af391f7a4c88f243e0246.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_polite_words_06 -> audio/generated/tr-TR/lexical/4a79261e93f8923b018351d60b5ba947b56d1e0c92b3b7ffdc3800bfaf7fe014.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('031ed161-6746-5b83-96f6-815eb880316e', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_polite_words_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2d3d539503568d031f6356ed9ece6c8b438d594fed2bea1e13fa71e6455c1457'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f2cf7c27-549a-576e-9053-12cc23baf603', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('031ed161-6746-5b83-96f6-815eb880316e', 1), '2d3d539503568d031f6356ed9ece6c8b438d594fed2bea1e13fa71e6455c1457',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/4a79261e93f8923b018351d60b5ba947b56d1e0c92b3b7ffdc3800bfaf7fe014.mp3', 1097, '2026-09-13 15:17:20.582150', 'd107aa41fc8d0b5fe8c973cea95d9edc39dc082b09ba9f4da9647f08f247f27b', 'validated', '{"audio_key":"4a79261e93f8923b018351d60b5ba947b56d1e0c92b3b7ffdc3800bfaf7fe014","entity_key":"lx_polite_words_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d107aa41fc8d0b5fe8c973cea95d9edc39dc082b09ba9f4da9647f08f247f27b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/4a79261e93f8923b018351d60b5ba947b56d1e0c92b3b7ffdc3800bfaf7fe014.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_polite_words_06 -> audio/generated/tr-TR/lexical/4a79261e93f8923b018351d60b5ba947b56d1e0c92b3b7ffdc3800bfaf7fe014.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f84d670f-90da-55e4-b471-d270fe60d717', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_polite_words_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2d3d539503568d031f6356ed9ece6c8b438d594fed2bea1e13fa71e6455c1457'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b9d614d3-d775-5e0a-bd6e-a5bd86a37eb3', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f84d670f-90da-55e4-b471-d270fe60d717', 1), '2d3d539503568d031f6356ed9ece6c8b438d594fed2bea1e13fa71e6455c1457',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/4a79261e93f8923b018351d60b5ba947b56d1e0c92b3b7ffdc3800bfaf7fe014.mp3', 1097, '2026-09-13 15:17:20.582150', 'd107aa41fc8d0b5fe8c973cea95d9edc39dc082b09ba9f4da9647f08f247f27b', 'validated', '{"audio_key":"4a79261e93f8923b018351d60b5ba947b56d1e0c92b3b7ffdc3800bfaf7fe014","entity_key":"wf_polite_words_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d107aa41fc8d0b5fe8c973cea95d9edc39dc082b09ba9f4da9647f08f247f27b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/4a79261e93f8923b018351d60b5ba947b56d1e0c92b3b7ffdc3800bfaf7fe014.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_polite_words_04 -> audio/generated/tr-TR/lexical/4b636d80c7d7ac74a80356363904ace60844162d9e3f9d43d241d2c56cecd6db.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3e6ab2c2-cc90-5be7-ad3c-29e531558179', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_polite_words_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aae1703cc355c6d33a35ed9a38e3b5e2ac23d9084551a88a9efb8fb26f6e8224'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1c4c7d72-2ee3-58a5-b0c0-2f8311074fe6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3e6ab2c2-cc90-5be7-ad3c-29e531558179', 1), 'aae1703cc355c6d33a35ed9a38e3b5e2ac23d9084551a88a9efb8fb26f6e8224',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/4b636d80c7d7ac74a80356363904ace60844162d9e3f9d43d241d2c56cecd6db.mp3', 1253, '2026-09-13 15:17:21.425587', 'bc81e055679afecc6edfb55955e3fdb4ccbe5bf5692f6942fb732c774b8b280f', 'validated', '{"audio_key":"4b636d80c7d7ac74a80356363904ace60844162d9e3f9d43d241d2c56cecd6db","entity_key":"lx_polite_words_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bc81e055679afecc6edfb55955e3fdb4ccbe5bf5692f6942fb732c774b8b280f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/4b636d80c7d7ac74a80356363904ace60844162d9e3f9d43d241d2c56cecd6db.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_polite_words_04 -> audio/generated/tr-TR/lexical/4b636d80c7d7ac74a80356363904ace60844162d9e3f9d43d241d2c56cecd6db.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('59abd23b-aca4-5817-bfc1-45091042b7c7', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_polite_words_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aae1703cc355c6d33a35ed9a38e3b5e2ac23d9084551a88a9efb8fb26f6e8224'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('57b15c38-7d29-558f-abf6-68c27a020479', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('59abd23b-aca4-5817-bfc1-45091042b7c7', 1), 'aae1703cc355c6d33a35ed9a38e3b5e2ac23d9084551a88a9efb8fb26f6e8224',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/4b636d80c7d7ac74a80356363904ace60844162d9e3f9d43d241d2c56cecd6db.mp3', 1253, '2026-09-13 15:17:21.425587', 'bc81e055679afecc6edfb55955e3fdb4ccbe5bf5692f6942fb732c774b8b280f', 'validated', '{"audio_key":"4b636d80c7d7ac74a80356363904ace60844162d9e3f9d43d241d2c56cecd6db","entity_key":"wf_polite_words_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bc81e055679afecc6edfb55955e3fdb4ccbe5bf5692f6942fb732c774b8b280f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/4b636d80c7d7ac74a80356363904ace60844162d9e3f9d43d241d2c56cecd6db.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_polite_words_02 -> audio/generated/tr-TR/lexical/4bf6535abbebdc26cca864f18c7b96d6421a9fddfd059d4b715e360c0c1e85a4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('20af05d2-466b-5eba-b7b4-1457f3498bdb', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_polite_words_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1762aa11eccf542232948ee0c6db73dce69790f19386ebdfe3a8d9cb77e751f1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6368db3c-c698-5b5c-8897-ab041491ca00', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('20af05d2-466b-5eba-b7b4-1457f3498bdb', 1), '1762aa11eccf542232948ee0c6db73dce69790f19386ebdfe3a8d9cb77e751f1',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/4bf6535abbebdc26cca864f18c7b96d6421a9fddfd059d4b715e360c0c1e85a4.mp3', 1567, '2026-09-13 15:17:21.655005', '8da9bcfb274238051cd1ecbda2314fef3ae6b985f8c3854cb2341bb817a652a0', 'validated', '{"audio_key":"4bf6535abbebdc26cca864f18c7b96d6421a9fddfd059d4b715e360c0c1e85a4","entity_key":"lx_polite_words_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8da9bcfb274238051cd1ecbda2314fef3ae6b985f8c3854cb2341bb817a652a0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/4bf6535abbebdc26cca864f18c7b96d6421a9fddfd059d4b715e360c0c1e85a4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_polite_words_02 -> audio/generated/tr-TR/lexical/4bf6535abbebdc26cca864f18c7b96d6421a9fddfd059d4b715e360c0c1e85a4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('55adfa9e-1732-59a3-a142-55c83ca704a1', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_polite_words_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1762aa11eccf542232948ee0c6db73dce69790f19386ebdfe3a8d9cb77e751f1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aea01009-022a-5c36-b86a-61bd851d13ce', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('55adfa9e-1732-59a3-a142-55c83ca704a1', 1), '1762aa11eccf542232948ee0c6db73dce69790f19386ebdfe3a8d9cb77e751f1',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/4bf6535abbebdc26cca864f18c7b96d6421a9fddfd059d4b715e360c0c1e85a4.mp3', 1567, '2026-09-13 15:17:21.655005', '8da9bcfb274238051cd1ecbda2314fef3ae6b985f8c3854cb2341bb817a652a0', 'validated', '{"audio_key":"4bf6535abbebdc26cca864f18c7b96d6421a9fddfd059d4b715e360c0c1e85a4","entity_key":"wf_polite_words_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8da9bcfb274238051cd1ecbda2314fef3ae6b985f8c3854cb2341bb817a652a0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/4bf6535abbebdc26cca864f18c7b96d6421a9fddfd059d4b715e360c0c1e85a4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_alphabet_04 -> audio/generated/tr-TR/lexical/5f6e64167f90160095ca615beff2bbab96131a1ee3664fe048eab6ec5262515c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('39439519-6714-5efb-b91b-7f12f69dfb82', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_alphabet_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '544bc1a8b6aad8d7553a578c8602fb5ea913a8a118c13900fa2a36c80880899a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b771d181-4593-5f3b-b301-55e068fe89cc', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('39439519-6714-5efb-b91b-7f12f69dfb82', 1), '544bc1a8b6aad8d7553a578c8602fb5ea913a8a118c13900fa2a36c80880899a',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/5f6e64167f90160095ca615beff2bbab96131a1ee3664fe048eab6ec5262515c.mp3', 835, '2026-09-13 15:17:22.403839', '0053ec6f3773f03d1d27f615ad48beaf98f17b262befa25af05e89bf41d9bb87', 'validated', '{"audio_key":"5f6e64167f90160095ca615beff2bbab96131a1ee3664fe048eab6ec5262515c","entity_key":"lx_alphabet_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0053ec6f3773f03d1d27f615ad48beaf98f17b262befa25af05e89bf41d9bb87","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/5f6e64167f90160095ca615beff2bbab96131a1ee3664fe048eab6ec5262515c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_alphabet_04 -> audio/generated/tr-TR/lexical/5f6e64167f90160095ca615beff2bbab96131a1ee3664fe048eab6ec5262515c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('910df68a-f93a-5ce4-b27c-1c998db7eac2', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_alphabet_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '544bc1a8b6aad8d7553a578c8602fb5ea913a8a118c13900fa2a36c80880899a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fe32035b-6a25-5835-9e44-45e3b9dd079d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('910df68a-f93a-5ce4-b27c-1c998db7eac2', 1), '544bc1a8b6aad8d7553a578c8602fb5ea913a8a118c13900fa2a36c80880899a',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/5f6e64167f90160095ca615beff2bbab96131a1ee3664fe048eab6ec5262515c.mp3', 835, '2026-09-13 15:17:22.403839', '0053ec6f3773f03d1d27f615ad48beaf98f17b262befa25af05e89bf41d9bb87', 'validated', '{"audio_key":"5f6e64167f90160095ca615beff2bbab96131a1ee3664fe048eab6ec5262515c","entity_key":"wf_alphabet_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0053ec6f3773f03d1d27f615ad48beaf98f17b262befa25af05e89bf41d9bb87","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/5f6e64167f90160095ca615beff2bbab96131a1ee3664fe048eab6ec5262515c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_polite_words_05 -> audio/generated/tr-TR/lexical/62c0e2996f09d531c82ceb0553e4993b196c1cf116eb2bf8202852116bdd0bfa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7efa9f25-35cc-581a-b821-06dd5db5314d', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_polite_words_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '42bcb5180c46590dfca9bc36bd8fac4032f99da45004b443ebb8aab8e965bfd6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('862ece54-b4c3-574f-99b6-d7b677300506', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7efa9f25-35cc-581a-b821-06dd5db5314d', 1), '42bcb5180c46590dfca9bc36bd8fac4032f99da45004b443ebb8aab8e965bfd6',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/62c0e2996f09d531c82ceb0553e4993b196c1cf116eb2bf8202852116bdd0bfa.mp3', 1567, '2026-09-13 15:17:22.697536', 'dc0cc1fba73f3b9a469df673f6eec5d750d974c759c149301431240a189b062c', 'validated', '{"audio_key":"62c0e2996f09d531c82ceb0553e4993b196c1cf116eb2bf8202852116bdd0bfa","entity_key":"lx_polite_words_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dc0cc1fba73f3b9a469df673f6eec5d750d974c759c149301431240a189b062c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/62c0e2996f09d531c82ceb0553e4993b196c1cf116eb2bf8202852116bdd0bfa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_polite_words_05 -> audio/generated/tr-TR/lexical/62c0e2996f09d531c82ceb0553e4993b196c1cf116eb2bf8202852116bdd0bfa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5aa673f6-39f7-5803-9257-2bffd1242e45', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_polite_words_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '42bcb5180c46590dfca9bc36bd8fac4032f99da45004b443ebb8aab8e965bfd6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('17a58721-310a-5138-aad3-53492b737d80', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5aa673f6-39f7-5803-9257-2bffd1242e45', 1), '42bcb5180c46590dfca9bc36bd8fac4032f99da45004b443ebb8aab8e965bfd6',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/62c0e2996f09d531c82ceb0553e4993b196c1cf116eb2bf8202852116bdd0bfa.mp3', 1567, '2026-09-13 15:17:22.697536', 'dc0cc1fba73f3b9a469df673f6eec5d750d974c759c149301431240a189b062c', 'validated', '{"audio_key":"62c0e2996f09d531c82ceb0553e4993b196c1cf116eb2bf8202852116bdd0bfa","entity_key":"wf_polite_words_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dc0cc1fba73f3b9a469df673f6eec5d750d974c759c149301431240a189b062c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/62c0e2996f09d531c82ceb0553e4993b196c1cf116eb2bf8202852116bdd0bfa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_greetings_03 -> audio/generated/tr-TR/lexical/63f3159da0ed385f57ceb259405a1e2208d9522f0a78900204d3b8f040c47036.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6b99d600-2e86-5648-a418-7dc469f39d25', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_greetings_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7df387187c7744ab7d5be38f3d560b38a66f1564998d5b4dd921bcf6e01792b8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d01913b6-2e82-5422-b8c5-c5e0d6a4d0a2', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6b99d600-2e86-5648-a418-7dc469f39d25', 1), '7df387187c7744ab7d5be38f3d560b38a66f1564998d5b4dd921bcf6e01792b8',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/63f3159da0ed385f57ceb259405a1e2208d9522f0a78900204d3b8f040c47036.mp3', 1515, '2026-09-13 15:17:23.491808', 'c46f57fd9f6e63f2fe61bf6cb42a49392d62fc2eda0139b2d277a24fe241bc7e', 'validated', '{"audio_key":"63f3159da0ed385f57ceb259405a1e2208d9522f0a78900204d3b8f040c47036","entity_key":"lx_first_greetings_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c46f57fd9f6e63f2fe61bf6cb42a49392d62fc2eda0139b2d277a24fe241bc7e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/63f3159da0ed385f57ceb259405a1e2208d9522f0a78900204d3b8f040c47036.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_greetings_03 -> audio/generated/tr-TR/lexical/63f3159da0ed385f57ceb259405a1e2208d9522f0a78900204d3b8f040c47036.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6d2dca55-16e6-5570-b089-4b1df8e1bd07', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_greetings_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7df387187c7744ab7d5be38f3d560b38a66f1564998d5b4dd921bcf6e01792b8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('64ccc066-a7f1-50a6-951b-4b34bceebb8a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6d2dca55-16e6-5570-b089-4b1df8e1bd07', 1), '7df387187c7744ab7d5be38f3d560b38a66f1564998d5b4dd921bcf6e01792b8',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/63f3159da0ed385f57ceb259405a1e2208d9522f0a78900204d3b8f040c47036.mp3', 1515, '2026-09-13 15:17:23.491808', 'c46f57fd9f6e63f2fe61bf6cb42a49392d62fc2eda0139b2d277a24fe241bc7e', 'validated', '{"audio_key":"63f3159da0ed385f57ceb259405a1e2208d9522f0a78900204d3b8f040c47036","entity_key":"wf_first_greetings_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c46f57fd9f6e63f2fe61bf6cb42a49392d62fc2eda0139b2d277a24fe241bc7e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/63f3159da0ed385f57ceb259405a1e2208d9522f0a78900204d3b8f040c47036.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_survival_words_06 -> audio/generated/tr-TR/lexical/65c85777699e9a3561c535b2c2ee44b1225ef62abe14ceaab5dab37aa69e6b79.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b197b6d4-6d37-5ed2-81a4-a90cd5409752', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_survival_words_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a52123b61b26547a1c74932e3f728d5e86a6d98c5239c3c2a90240af6259f664'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('28414dd7-28b3-5b2f-8195-5c99f93d13d4', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b197b6d4-6d37-5ed2-81a4-a90cd5409752', 1), 'a52123b61b26547a1c74932e3f728d5e86a6d98c5239c3c2a90240af6259f664',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/65c85777699e9a3561c535b2c2ee44b1225ef62abe14ceaab5dab37aa69e6b79.mp3', 1097, '2026-09-13 15:17:23.752611', 'b891b7008a36bf2822587d7f8546303102f3487e591feefd78e0da2106f90d00', 'validated', '{"audio_key":"65c85777699e9a3561c535b2c2ee44b1225ef62abe14ceaab5dab37aa69e6b79","entity_key":"lx_survival_words_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b891b7008a36bf2822587d7f8546303102f3487e591feefd78e0da2106f90d00","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/65c85777699e9a3561c535b2c2ee44b1225ef62abe14ceaab5dab37aa69e6b79.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_survival_words_06 -> audio/generated/tr-TR/lexical/65c85777699e9a3561c535b2c2ee44b1225ef62abe14ceaab5dab37aa69e6b79.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('819e10db-400d-5349-bfd4-3ff95f460b32', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_survival_words_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a52123b61b26547a1c74932e3f728d5e86a6d98c5239c3c2a90240af6259f664'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1ff9ec04-5a20-58b0-be24-52fbd0e58285', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('819e10db-400d-5349-bfd4-3ff95f460b32', 1), 'a52123b61b26547a1c74932e3f728d5e86a6d98c5239c3c2a90240af6259f664',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/65c85777699e9a3561c535b2c2ee44b1225ef62abe14ceaab5dab37aa69e6b79.mp3', 1097, '2026-09-13 15:17:23.752611', 'b891b7008a36bf2822587d7f8546303102f3487e591feefd78e0da2106f90d00', 'validated', '{"audio_key":"65c85777699e9a3561c535b2c2ee44b1225ef62abe14ceaab5dab37aa69e6b79","entity_key":"wf_survival_words_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b891b7008a36bf2822587d7f8546303102f3487e591feefd78e0da2106f90d00","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/65c85777699e9a3561c535b2c2ee44b1225ef62abe14ceaab5dab37aa69e6b79.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_alphabet_06 -> audio/generated/tr-TR/lexical/6b9d903f4bb411a63959040dcacbef4c40fe1326ee83c2e550edf22c59c2c2b3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6a3f73a1-a324-5ba1-9477-4d1118359e19', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_alphabet_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '607474ca475a9724d7360aba71a56d5df77e61350e3f724cfa1f46e857e2d85f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('75563e88-5713-5d76-8b04-bc6e8e2de06d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6a3f73a1-a324-5ba1-9477-4d1118359e19', 1), '607474ca475a9724d7360aba71a56d5df77e61350e3f724cfa1f46e857e2d85f',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/6b9d903f4bb411a63959040dcacbef4c40fe1326ee83c2e550edf22c59c2c2b3.mp3', 731, '2026-09-13 15:17:24.482423', '93df5ff7b536196cf7681305c5c8c424606b167844071828f70cd7f53710782c', 'validated', '{"audio_key":"6b9d903f4bb411a63959040dcacbef4c40fe1326ee83c2e550edf22c59c2c2b3","entity_key":"lx_alphabet_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"93df5ff7b536196cf7681305c5c8c424606b167844071828f70cd7f53710782c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/6b9d903f4bb411a63959040dcacbef4c40fe1326ee83c2e550edf22c59c2c2b3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_alphabet_06 -> audio/generated/tr-TR/lexical/6b9d903f4bb411a63959040dcacbef4c40fe1326ee83c2e550edf22c59c2c2b3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3f983c13-7dca-50f5-9420-6cd2767f2417', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_alphabet_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '607474ca475a9724d7360aba71a56d5df77e61350e3f724cfa1f46e857e2d85f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1e7952f5-7f25-51b5-9aee-d46d5b965f5d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3f983c13-7dca-50f5-9420-6cd2767f2417', 1), '607474ca475a9724d7360aba71a56d5df77e61350e3f724cfa1f46e857e2d85f',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/6b9d903f4bb411a63959040dcacbef4c40fe1326ee83c2e550edf22c59c2c2b3.mp3', 731, '2026-09-13 15:17:24.482423', '93df5ff7b536196cf7681305c5c8c424606b167844071828f70cd7f53710782c', 'validated', '{"audio_key":"6b9d903f4bb411a63959040dcacbef4c40fe1326ee83c2e550edf22c59c2c2b3","entity_key":"wf_alphabet_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"93df5ff7b536196cf7681305c5c8c424606b167844071828f70cd7f53710782c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/6b9d903f4bb411a63959040dcacbef4c40fe1326ee83c2e550edf22c59c2c2b3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_numbers_0_10_01 -> audio/generated/tr-TR/lexical/720616da5d2b53b3432ad3c8fd7db98bb35be6b8a9bae2d193110d477d2acaa7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c1a0e261-0aff-5f29-a064-17c534d0e5e3', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_numbers_0_10_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e43cd19e9b547ce14153c08aa4b9e67b2a851e575ec507836c0df5d7079825b6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eea4ee98-d050-5d4a-905d-e52168aa9917', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c1a0e261-0aff-5f29-a064-17c534d0e5e3', 1), 'e43cd19e9b547ce14153c08aa4b9e67b2a851e575ec507836c0df5d7079825b6',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/720616da5d2b53b3432ad3c8fd7db98bb35be6b8a9bae2d193110d477d2acaa7.mp3', 1097, '2026-09-13 15:17:24.757396', '5de4587825928817b2645bd51c23fbac93d6b1e780aeb5696175f596ecdc5cfe', 'validated', '{"audio_key":"720616da5d2b53b3432ad3c8fd7db98bb35be6b8a9bae2d193110d477d2acaa7","entity_key":"lx_numbers_0_10_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5de4587825928817b2645bd51c23fbac93d6b1e780aeb5696175f596ecdc5cfe","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/720616da5d2b53b3432ad3c8fd7db98bb35be6b8a9bae2d193110d477d2acaa7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_numbers_0_10_01 -> audio/generated/tr-TR/lexical/720616da5d2b53b3432ad3c8fd7db98bb35be6b8a9bae2d193110d477d2acaa7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8d65e58d-1425-5030-b444-b8f57cf7d6ec', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_numbers_0_10_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e43cd19e9b547ce14153c08aa4b9e67b2a851e575ec507836c0df5d7079825b6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('50a34db5-e2bd-58e7-a411-96408e2edc4d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8d65e58d-1425-5030-b444-b8f57cf7d6ec', 1), 'e43cd19e9b547ce14153c08aa4b9e67b2a851e575ec507836c0df5d7079825b6',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/720616da5d2b53b3432ad3c8fd7db98bb35be6b8a9bae2d193110d477d2acaa7.mp3', 1097, '2026-09-13 15:17:24.757396', '5de4587825928817b2645bd51c23fbac93d6b1e780aeb5696175f596ecdc5cfe', 'validated', '{"audio_key":"720616da5d2b53b3432ad3c8fd7db98bb35be6b8a9bae2d193110d477d2acaa7","entity_key":"wf_numbers_0_10_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5de4587825928817b2645bd51c23fbac93d6b1e780aeb5696175f596ecdc5cfe","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/720616da5d2b53b3432ad3c8fd7db98bb35be6b8a9bae2d193110d477d2acaa7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_survival_words_01 -> audio/generated/tr-TR/lexical/7a59fbfd45962e707a6e70cf02a55abe82f80fe209cf32c0b72071305b1c52aa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('27a9dc8f-5849-5d79-b084-c3fe09f2364f', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_survival_words_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '23f31d553dea70ee0b6befd2e2e16108ca1fc8b3b279c1afb5a8ffc50dc61095'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5612d8f6-4854-5b62-b15b-bc3c03cd2d19', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('27a9dc8f-5849-5d79-b084-c3fe09f2364f', 1), '23f31d553dea70ee0b6befd2e2e16108ca1fc8b3b279c1afb5a8ffc50dc61095',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/7a59fbfd45962e707a6e70cf02a55abe82f80fe209cf32c0b72071305b1c52aa.mp3', 1097, '2026-09-13 15:17:25.459759', 'c9144cfa815f76e71d5e3e724594ba005614d616bf3e073d5c095c6fd0958445', 'validated', '{"audio_key":"7a59fbfd45962e707a6e70cf02a55abe82f80fe209cf32c0b72071305b1c52aa","entity_key":"lx_survival_words_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c9144cfa815f76e71d5e3e724594ba005614d616bf3e073d5c095c6fd0958445","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/7a59fbfd45962e707a6e70cf02a55abe82f80fe209cf32c0b72071305b1c52aa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_survival_words_01 -> audio/generated/tr-TR/lexical/7a59fbfd45962e707a6e70cf02a55abe82f80fe209cf32c0b72071305b1c52aa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c33135a3-f337-527a-a408-6cb1d3618e3d', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_survival_words_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '23f31d553dea70ee0b6befd2e2e16108ca1fc8b3b279c1afb5a8ffc50dc61095'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('38139a2e-b3f5-5b8a-878b-9eb51303e9cd', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c33135a3-f337-527a-a408-6cb1d3618e3d', 1), '23f31d553dea70ee0b6befd2e2e16108ca1fc8b3b279c1afb5a8ffc50dc61095',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/7a59fbfd45962e707a6e70cf02a55abe82f80fe209cf32c0b72071305b1c52aa.mp3', 1097, '2026-09-13 15:17:25.459759', 'c9144cfa815f76e71d5e3e724594ba005614d616bf3e073d5c095c6fd0958445', 'validated', '{"audio_key":"7a59fbfd45962e707a6e70cf02a55abe82f80fe209cf32c0b72071305b1c52aa","entity_key":"wf_survival_words_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c9144cfa815f76e71d5e3e724594ba005614d616bf3e073d5c095c6fd0958445","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/7a59fbfd45962e707a6e70cf02a55abe82f80fe209cf32c0b72071305b1c52aa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_conversation_02 -> audio/generated/tr-TR/lexical/7e978e541a5e3915a4f32206844f5f800a2887fadf94cd4ab2d66cf08aa879dc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6f63a5e0-3607-5106-9625-a1b11337d1b9', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_conversation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'db70234cc45357e121fae015b27e6dc9cbe3f568d2ec7f13f787e34c10d5c2b5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8e79ea6a-2250-5611-89e1-3c489e6f91dc', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6f63a5e0-3607-5106-9625-a1b11337d1b9', 1), 'db70234cc45357e121fae015b27e6dc9cbe3f568d2ec7f13f787e34c10d5c2b5',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/7e978e541a5e3915a4f32206844f5f800a2887fadf94cd4ab2d66cf08aa879dc.mp3', 1149, '2026-09-13 15:17:25.765564', 'd36ece829faae8905770826aa55a480d8d763a6bb419ebdc44b0f4dff101d50d', 'validated', '{"audio_key":"7e978e541a5e3915a4f32206844f5f800a2887fadf94cd4ab2d66cf08aa879dc","entity_key":"lx_first_conversation_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d36ece829faae8905770826aa55a480d8d763a6bb419ebdc44b0f4dff101d50d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/7e978e541a5e3915a4f32206844f5f800a2887fadf94cd4ab2d66cf08aa879dc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_conversation_02 -> audio/generated/tr-TR/lexical/7e978e541a5e3915a4f32206844f5f800a2887fadf94cd4ab2d66cf08aa879dc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5564332c-77d0-5137-92cd-e476fb1fd3c6', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_conversation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'db70234cc45357e121fae015b27e6dc9cbe3f568d2ec7f13f787e34c10d5c2b5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('595941e7-2eef-5546-8161-564dff775f3f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5564332c-77d0-5137-92cd-e476fb1fd3c6', 1), 'db70234cc45357e121fae015b27e6dc9cbe3f568d2ec7f13f787e34c10d5c2b5',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/7e978e541a5e3915a4f32206844f5f800a2887fadf94cd4ab2d66cf08aa879dc.mp3', 1149, '2026-09-13 15:17:25.765564', 'd36ece829faae8905770826aa55a480d8d763a6bb419ebdc44b0f4dff101d50d', 'validated', '{"audio_key":"7e978e541a5e3915a4f32206844f5f800a2887fadf94cd4ab2d66cf08aa879dc","entity_key":"wf_first_conversation_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d36ece829faae8905770826aa55a480d8d763a6bb419ebdc44b0f4dff101d50d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/7e978e541a5e3915a4f32206844f5f800a2887fadf94cd4ab2d66cf08aa879dc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_sounds_02 -> audio/generated/tr-TR/lexical/80259f794687325ace9bb9bcaf12f54e565ebfa176f1d3bbe38829d0a93a4204.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('dbb66031-180f-58c0-aef2-4cb58d38b5c1', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_sounds_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4df27cc2efa223d850f1449dfeeea6ab384c138c35f22dbef279248cf9ef236a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0364c87b-b173-5787-b801-785aa342ddb2', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('dbb66031-180f-58c0-aef2-4cb58d38b5c1', 1), '4df27cc2efa223d850f1449dfeeea6ab384c138c35f22dbef279248cf9ef236a',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/80259f794687325ace9bb9bcaf12f54e565ebfa176f1d3bbe38829d0a93a4204.mp3', 1097, '2026-09-13 15:17:26.470640', '13869571caee9f156d7fc1ed483b6d945801c2a17f609b3199da370a16b2e7f7', 'validated', '{"audio_key":"80259f794687325ace9bb9bcaf12f54e565ebfa176f1d3bbe38829d0a93a4204","entity_key":"lx_first_sounds_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"13869571caee9f156d7fc1ed483b6d945801c2a17f609b3199da370a16b2e7f7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/80259f794687325ace9bb9bcaf12f54e565ebfa176f1d3bbe38829d0a93a4204.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_sounds_02 -> audio/generated/tr-TR/lexical/80259f794687325ace9bb9bcaf12f54e565ebfa176f1d3bbe38829d0a93a4204.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b831a391-5a53-5a69-b364-c625e9ba9fcc', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_sounds_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4df27cc2efa223d850f1449dfeeea6ab384c138c35f22dbef279248cf9ef236a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('10bda0f4-de19-5cf7-8fcc-379e9248d5e1', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b831a391-5a53-5a69-b364-c625e9ba9fcc', 1), '4df27cc2efa223d850f1449dfeeea6ab384c138c35f22dbef279248cf9ef236a',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/80259f794687325ace9bb9bcaf12f54e565ebfa176f1d3bbe38829d0a93a4204.mp3', 1097, '2026-09-13 15:17:26.470640', '13869571caee9f156d7fc1ed483b6d945801c2a17f609b3199da370a16b2e7f7', 'validated', '{"audio_key":"80259f794687325ace9bb9bcaf12f54e565ebfa176f1d3bbe38829d0a93a4204","entity_key":"wf_first_sounds_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"13869571caee9f156d7fc1ed483b6d945801c2a17f609b3199da370a16b2e7f7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/80259f794687325ace9bb9bcaf12f54e565ebfa176f1d3bbe38829d0a93a4204.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_survival_words_05 -> audio/generated/tr-TR/lexical/82e43d8f48bce873c4f51e40e1159af1dbe02d8f20709b6d645e808d9dd0f77f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3a67f59b-3a21-546e-a9c1-3ee1bfa10d9c', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_survival_words_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '55780273e23dde8616f50ab6e447041b60e4c158074a1baa8714cb2081b9b1a4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7065cf94-ab1c-558a-8821-e9ae10defdd8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3a67f59b-3a21-546e-a9c1-3ee1bfa10d9c', 1), '55780273e23dde8616f50ab6e447041b60e4c158074a1baa8714cb2081b9b1a4',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/82e43d8f48bce873c4f51e40e1159af1dbe02d8f20709b6d645e808d9dd0f77f.mp3', 1671, '2026-09-13 15:17:26.837158', '9c90b09e81fae0da9acee10adb64d1941b280809b40dd2dd22ab3dee61522e3e', 'validated', '{"audio_key":"82e43d8f48bce873c4f51e40e1159af1dbe02d8f20709b6d645e808d9dd0f77f","entity_key":"lx_survival_words_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9c90b09e81fae0da9acee10adb64d1941b280809b40dd2dd22ab3dee61522e3e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/82e43d8f48bce873c4f51e40e1159af1dbe02d8f20709b6d645e808d9dd0f77f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_survival_words_05 -> audio/generated/tr-TR/lexical/82e43d8f48bce873c4f51e40e1159af1dbe02d8f20709b6d645e808d9dd0f77f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f35c202a-11d3-5527-bdec-aaa9a74db228', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_survival_words_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '55780273e23dde8616f50ab6e447041b60e4c158074a1baa8714cb2081b9b1a4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aa65d5e9-4fe4-5d75-91d4-7fb1592a881e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f35c202a-11d3-5527-bdec-aaa9a74db228', 1), '55780273e23dde8616f50ab6e447041b60e4c158074a1baa8714cb2081b9b1a4',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/82e43d8f48bce873c4f51e40e1159af1dbe02d8f20709b6d645e808d9dd0f77f.mp3', 1671, '2026-09-13 15:17:26.837158', '9c90b09e81fae0da9acee10adb64d1941b280809b40dd2dd22ab3dee61522e3e', 'validated', '{"audio_key":"82e43d8f48bce873c4f51e40e1159af1dbe02d8f20709b6d645e808d9dd0f77f","entity_key":"wf_survival_words_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9c90b09e81fae0da9acee10adb64d1941b280809b40dd2dd22ab3dee61522e3e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/82e43d8f48bce873c4f51e40e1159af1dbe02d8f20709b6d645e808d9dd0f77f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_my_name_03 -> audio/generated/tr-TR/lexical/8623bf72c1bda2bda247eec34fec309bafc85415fb0c9c0c2ea957116b49a7f1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('bc8b3528-7c93-52e8-9153-aeb15ba6286e', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_my_name_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3fda3f6344f8e18e4ec62ff970e7e09fd4d268fcfb8962df1ff28ccf4b8005bf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bb350b0e-909d-55cd-b3bb-0792372ea2e4', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('bc8b3528-7c93-52e8-9153-aeb15ba6286e', 1), '3fda3f6344f8e18e4ec62ff970e7e09fd4d268fcfb8962df1ff28ccf4b8005bf',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/8623bf72c1bda2bda247eec34fec309bafc85415fb0c9c0c2ea957116b49a7f1.mp3', 1488, '2026-09-13 15:17:27.529066', 'f4614f6cef09e9642f6e9c6710b6d1878537515a3a5e49f42c28e7a5d85a45e8', 'validated', '{"audio_key":"8623bf72c1bda2bda247eec34fec309bafc85415fb0c9c0c2ea957116b49a7f1","entity_key":"lx_my_name_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f4614f6cef09e9642f6e9c6710b6d1878537515a3a5e49f42c28e7a5d85a45e8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/8623bf72c1bda2bda247eec34fec309bafc85415fb0c9c0c2ea957116b49a7f1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_my_name_03 -> audio/generated/tr-TR/lexical/8623bf72c1bda2bda247eec34fec309bafc85415fb0c9c0c2ea957116b49a7f1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a10763a5-5b9d-5c2d-bb98-137e964db700', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_my_name_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3fda3f6344f8e18e4ec62ff970e7e09fd4d268fcfb8962df1ff28ccf4b8005bf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('acc05a23-f796-5f91-8910-2e1359bd3878', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a10763a5-5b9d-5c2d-bb98-137e964db700', 1), '3fda3f6344f8e18e4ec62ff970e7e09fd4d268fcfb8962df1ff28ccf4b8005bf',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/8623bf72c1bda2bda247eec34fec309bafc85415fb0c9c0c2ea957116b49a7f1.mp3', 1488, '2026-09-13 15:17:27.529066', 'f4614f6cef09e9642f6e9c6710b6d1878537515a3a5e49f42c28e7a5d85a45e8', 'validated', '{"audio_key":"8623bf72c1bda2bda247eec34fec309bafc85415fb0c9c0c2ea957116b49a7f1","entity_key":"wf_my_name_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f4614f6cef09e9642f6e9c6710b6d1878537515a3a5e49f42c28e7a5d85a45e8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/8623bf72c1bda2bda247eec34fec309bafc85415fb0c9c0c2ea957116b49a7f1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_greetings_02 -> audio/generated/tr-TR/lexical/881b37de5fc8651070bea2c6388daf6d452e5ea8c85e027157ea2df1b42b041d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9e5fd451-38fa-54cd-beaf-64a72109ae43', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_greetings_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cd1e0724e02a492cd42fb596a36b7b18497587372922abd2ceaef535a29270c5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('72c5cb77-bcca-5ec4-9851-f5f303ae4c46', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9e5fd451-38fa-54cd-beaf-64a72109ae43', 1), 'cd1e0724e02a492cd42fb596a36b7b18497587372922abd2ceaef535a29270c5',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/881b37de5fc8651070bea2c6388daf6d452e5ea8c85e027157ea2df1b42b041d.mp3', 1201, '2026-09-13 15:17:27.883309', '0974d524be800f6ac6d2e2c921fed86db650497f04afd9b8c76501a363e7d28f', 'validated', '{"audio_key":"881b37de5fc8651070bea2c6388daf6d452e5ea8c85e027157ea2df1b42b041d","entity_key":"lx_first_greetings_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0974d524be800f6ac6d2e2c921fed86db650497f04afd9b8c76501a363e7d28f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/881b37de5fc8651070bea2c6388daf6d452e5ea8c85e027157ea2df1b42b041d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_greetings_02 -> audio/generated/tr-TR/lexical/881b37de5fc8651070bea2c6388daf6d452e5ea8c85e027157ea2df1b42b041d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2e3f0db0-1076-55cc-8c16-4e34300762b3', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_greetings_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cd1e0724e02a492cd42fb596a36b7b18497587372922abd2ceaef535a29270c5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('be2c9dba-0c94-5a1b-b0a5-aa761b429777', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2e3f0db0-1076-55cc-8c16-4e34300762b3', 1), 'cd1e0724e02a492cd42fb596a36b7b18497587372922abd2ceaef535a29270c5',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/881b37de5fc8651070bea2c6388daf6d452e5ea8c85e027157ea2df1b42b041d.mp3', 1201, '2026-09-13 15:17:27.883309', '0974d524be800f6ac6d2e2c921fed86db650497f04afd9b8c76501a363e7d28f', 'validated', '{"audio_key":"881b37de5fc8651070bea2c6388daf6d452e5ea8c85e027157ea2df1b42b041d","entity_key":"wf_first_greetings_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0974d524be800f6ac6d2e2c921fed86db650497f04afd9b8c76501a363e7d28f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/881b37de5fc8651070bea2c6388daf6d452e5ea8c85e027157ea2df1b42b041d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_how_are_you_06 -> audio/generated/tr-TR/lexical/8b8f7cbbb93f280944aaa4e62ab9c81ea6dc2b1bf55af9c166d8019bc25485d1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e8aed6d6-c50f-5103-b12c-b500968f0c97', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_how_are_you_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '573a921d8664bf1ca65b6cc7e4dc1f6d536c0a92a85aae2b2462c4ccc6092ece'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d9d5bcda-1e6d-5a49-8054-5e7514840bc0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e8aed6d6-c50f-5103-b12c-b500968f0c97', 1), '573a921d8664bf1ca65b6cc7e4dc1f6d536c0a92a85aae2b2462c4ccc6092ece',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/8b8f7cbbb93f280944aaa4e62ab9c81ea6dc2b1bf55af9c166d8019bc25485d1.mp3', 1201, '2026-09-13 15:17:28.548497', 'd763db822072c1f1dd5458806ea108f0f461ff2f94b347749a90ec9d972729b9', 'validated', '{"audio_key":"8b8f7cbbb93f280944aaa4e62ab9c81ea6dc2b1bf55af9c166d8019bc25485d1","entity_key":"lx_how_are_you_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d763db822072c1f1dd5458806ea108f0f461ff2f94b347749a90ec9d972729b9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/8b8f7cbbb93f280944aaa4e62ab9c81ea6dc2b1bf55af9c166d8019bc25485d1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_how_are_you_06 -> audio/generated/tr-TR/lexical/8b8f7cbbb93f280944aaa4e62ab9c81ea6dc2b1bf55af9c166d8019bc25485d1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('eab1a2d5-3215-5dde-8e3c-46b6dc51caeb', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_how_are_you_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '573a921d8664bf1ca65b6cc7e4dc1f6d536c0a92a85aae2b2462c4ccc6092ece'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dcf53529-54bd-5bc6-9151-5e60afb40384', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('eab1a2d5-3215-5dde-8e3c-46b6dc51caeb', 1), '573a921d8664bf1ca65b6cc7e4dc1f6d536c0a92a85aae2b2462c4ccc6092ece',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/8b8f7cbbb93f280944aaa4e62ab9c81ea6dc2b1bf55af9c166d8019bc25485d1.mp3', 1201, '2026-09-13 15:17:28.548497', 'd763db822072c1f1dd5458806ea108f0f461ff2f94b347749a90ec9d972729b9', 'validated', '{"audio_key":"8b8f7cbbb93f280944aaa4e62ab9c81ea6dc2b1bf55af9c166d8019bc25485d1","entity_key":"wf_how_are_you_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d763db822072c1f1dd5458806ea108f0f461ff2f94b347749a90ec9d972729b9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/8b8f7cbbb93f280944aaa4e62ab9c81ea6dc2b1bf55af9c166d8019bc25485d1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_polite_words_01 -> audio/generated/tr-TR/lexical/8d897382e7b6158d2fc9ce4a263fce21168b70caec69e4b41534d2c7a0ecdc89.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b5e9c11e-fb92-57e3-bf47-06d221511386', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_polite_words_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '19093b4d3eeeaaab1386f088cf4075cdf0b27886179ae4800b01e6f4ee2277e6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('214cc5d6-5a03-5d8e-bc87-76d8372bbb15', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b5e9c11e-fb92-57e3-bf47-06d221511386', 1), '19093b4d3eeeaaab1386f088cf4075cdf0b27886179ae4800b01e6f4ee2277e6',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/8d897382e7b6158d2fc9ce4a263fce21168b70caec69e4b41534d2c7a0ecdc89.mp3', 1071, '2026-09-13 15:17:28.896862', '34ccbf5ae36ef8e44a350b6c8742b05260b6913d09de4cb4a728fc32a5328759', 'validated', '{"audio_key":"8d897382e7b6158d2fc9ce4a263fce21168b70caec69e4b41534d2c7a0ecdc89","entity_key":"lx_polite_words_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"34ccbf5ae36ef8e44a350b6c8742b05260b6913d09de4cb4a728fc32a5328759","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/8d897382e7b6158d2fc9ce4a263fce21168b70caec69e4b41534d2c7a0ecdc89.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_polite_words_01 -> audio/generated/tr-TR/lexical/8d897382e7b6158d2fc9ce4a263fce21168b70caec69e4b41534d2c7a0ecdc89.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e74a209e-0e93-5a68-85d6-12f674e8388e', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_polite_words_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '19093b4d3eeeaaab1386f088cf4075cdf0b27886179ae4800b01e6f4ee2277e6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2e9b2ad6-fd0c-5103-9d8b-2be91d9fcd61', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e74a209e-0e93-5a68-85d6-12f674e8388e', 1), '19093b4d3eeeaaab1386f088cf4075cdf0b27886179ae4800b01e6f4ee2277e6',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/8d897382e7b6158d2fc9ce4a263fce21168b70caec69e4b41534d2c7a0ecdc89.mp3', 1071, '2026-09-13 15:17:28.896862', '34ccbf5ae36ef8e44a350b6c8742b05260b6913d09de4cb4a728fc32a5328759', 'validated', '{"audio_key":"8d897382e7b6158d2fc9ce4a263fce21168b70caec69e4b41534d2c7a0ecdc89","entity_key":"wf_polite_words_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"34ccbf5ae36ef8e44a350b6c8742b05260b6913d09de4cb4a728fc32a5328759","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/8d897382e7b6158d2fc9ce4a263fce21168b70caec69e4b41534d2c7a0ecdc89.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_alphabet_03 -> audio/generated/tr-TR/lexical/8f260a2e459443a85f2fd5d43feb0a8b793f7a8386044566d14d1330d9ba1ae9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('988f0918-312e-5546-a300-d459ad570700', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_alphabet_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2faf88c3dfa54e5ab733e27dd22636156dbf37a7a0a6de97e96de6c0e22b3481'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('195d0684-7b2e-5d0d-9520-5363e11c86cc', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('988f0918-312e-5546-a300-d459ad570700', 1), '2faf88c3dfa54e5ab733e27dd22636156dbf37a7a0a6de97e96de6c0e22b3481',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/8f260a2e459443a85f2fd5d43feb0a8b793f7a8386044566d14d1330d9ba1ae9.mp3', 783, '2026-09-13 15:17:29.533752', '23c14a87c9bdf2f128e6aaa28ea0393c18af7c057f01ddc2c14512f99b38f889', 'validated', '{"audio_key":"8f260a2e459443a85f2fd5d43feb0a8b793f7a8386044566d14d1330d9ba1ae9","entity_key":"lx_alphabet_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"23c14a87c9bdf2f128e6aaa28ea0393c18af7c057f01ddc2c14512f99b38f889","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/8f260a2e459443a85f2fd5d43feb0a8b793f7a8386044566d14d1330d9ba1ae9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_alphabet_03 -> audio/generated/tr-TR/lexical/8f260a2e459443a85f2fd5d43feb0a8b793f7a8386044566d14d1330d9ba1ae9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3000f2eb-b5aa-5090-9a47-07381f433227', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_alphabet_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2faf88c3dfa54e5ab733e27dd22636156dbf37a7a0a6de97e96de6c0e22b3481'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d011be2a-3e0b-5a35-aaf4-f653b5100fbe', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3000f2eb-b5aa-5090-9a47-07381f433227', 1), '2faf88c3dfa54e5ab733e27dd22636156dbf37a7a0a6de97e96de6c0e22b3481',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/8f260a2e459443a85f2fd5d43feb0a8b793f7a8386044566d14d1330d9ba1ae9.mp3', 783, '2026-09-13 15:17:29.533752', '23c14a87c9bdf2f128e6aaa28ea0393c18af7c057f01ddc2c14512f99b38f889', 'validated', '{"audio_key":"8f260a2e459443a85f2fd5d43feb0a8b793f7a8386044566d14d1330d9ba1ae9","entity_key":"wf_alphabet_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"23c14a87c9bdf2f128e6aaa28ea0393c18af7c057f01ddc2c14512f99b38f889","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/8f260a2e459443a85f2fd5d43feb0a8b793f7a8386044566d14d1330d9ba1ae9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_conversation_04 -> audio/generated/tr-TR/lexical/94bf20df34a06d34c285af0cbc325e2c35a4641b2b3bd421a57245e33c39930c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('98b633b0-989c-5006-b551-0b0459b7c06c', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_conversation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a6dff5f05ffecadedc5c48dc367a8c84902fd6b31f620458db503f371c68810b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2517cdc8-6ad1-537a-a505-08383560eb75', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('98b633b0-989c-5006-b551-0b0459b7c06c', 1), 'a6dff5f05ffecadedc5c48dc367a8c84902fd6b31f620458db503f371c68810b',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/94bf20df34a06d34c285af0cbc325e2c35a4641b2b3bd421a57245e33c39930c.mp3', 1436, '2026-09-13 15:17:29.910617', 'd748d2a21bd0246f7dd573ccfda0bb8c0213576bce62b4faaa7c175e2e3e272e', 'validated', '{"audio_key":"94bf20df34a06d34c285af0cbc325e2c35a4641b2b3bd421a57245e33c39930c","entity_key":"lx_first_conversation_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d748d2a21bd0246f7dd573ccfda0bb8c0213576bce62b4faaa7c175e2e3e272e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/94bf20df34a06d34c285af0cbc325e2c35a4641b2b3bd421a57245e33c39930c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_conversation_04 -> audio/generated/tr-TR/lexical/94bf20df34a06d34c285af0cbc325e2c35a4641b2b3bd421a57245e33c39930c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('565bdb9c-47c0-5bc7-86e0-cf2ad8321638', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_conversation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a6dff5f05ffecadedc5c48dc367a8c84902fd6b31f620458db503f371c68810b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c4afdb60-7dce-5783-8e4b-6ecb665d21dc', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('565bdb9c-47c0-5bc7-86e0-cf2ad8321638', 1), 'a6dff5f05ffecadedc5c48dc367a8c84902fd6b31f620458db503f371c68810b',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/94bf20df34a06d34c285af0cbc325e2c35a4641b2b3bd421a57245e33c39930c.mp3', 1436, '2026-09-13 15:17:29.910617', 'd748d2a21bd0246f7dd573ccfda0bb8c0213576bce62b4faaa7c175e2e3e272e', 'validated', '{"audio_key":"94bf20df34a06d34c285af0cbc325e2c35a4641b2b3bd421a57245e33c39930c","entity_key":"wf_first_conversation_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d748d2a21bd0246f7dd573ccfda0bb8c0213576bce62b4faaa7c175e2e3e272e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/94bf20df34a06d34c285af0cbc325e2c35a4641b2b3bd421a57245e33c39930c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_my_name_04 -> audio/generated/tr-TR/lexical/94bf20df34a06d34c285af0cbc325e2c35a4641b2b3bd421a57245e33c39930c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('98b633b0-989c-5006-b551-0b0459b7c06c', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_my_name_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a6dff5f05ffecadedc5c48dc367a8c84902fd6b31f620458db503f371c68810b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2517cdc8-6ad1-537a-a505-08383560eb75', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('98b633b0-989c-5006-b551-0b0459b7c06c', 1), 'a6dff5f05ffecadedc5c48dc367a8c84902fd6b31f620458db503f371c68810b',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/94bf20df34a06d34c285af0cbc325e2c35a4641b2b3bd421a57245e33c39930c.mp3', 1436, '2026-09-13 15:17:29.910617', 'd748d2a21bd0246f7dd573ccfda0bb8c0213576bce62b4faaa7c175e2e3e272e', 'validated', '{"audio_key":"94bf20df34a06d34c285af0cbc325e2c35a4641b2b3bd421a57245e33c39930c","entity_key":"lx_my_name_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d748d2a21bd0246f7dd573ccfda0bb8c0213576bce62b4faaa7c175e2e3e272e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/94bf20df34a06d34c285af0cbc325e2c35a4641b2b3bd421a57245e33c39930c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_my_name_04 -> audio/generated/tr-TR/lexical/94bf20df34a06d34c285af0cbc325e2c35a4641b2b3bd421a57245e33c39930c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7aa50f89-5211-5965-96ff-dce4c1edd481', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_my_name_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a6dff5f05ffecadedc5c48dc367a8c84902fd6b31f620458db503f371c68810b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d3c59e31-2517-5f14-93cc-f1e51d439947', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7aa50f89-5211-5965-96ff-dce4c1edd481', 1), 'a6dff5f05ffecadedc5c48dc367a8c84902fd6b31f620458db503f371c68810b',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/94bf20df34a06d34c285af0cbc325e2c35a4641b2b3bd421a57245e33c39930c.mp3', 1436, '2026-09-13 15:17:29.910617', 'd748d2a21bd0246f7dd573ccfda0bb8c0213576bce62b4faaa7c175e2e3e272e', 'validated', '{"audio_key":"94bf20df34a06d34c285af0cbc325e2c35a4641b2b3bd421a57245e33c39930c","entity_key":"wf_my_name_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d748d2a21bd0246f7dd573ccfda0bb8c0213576bce62b4faaa7c175e2e3e272e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/94bf20df34a06d34c285af0cbc325e2c35a4641b2b3bd421a57245e33c39930c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_how_are_you_01 -> audio/generated/tr-TR/lexical/a30b59af3cf9c5bc6c5443e00c390f8f6d7d43d051340a4e5090218ba8118fd1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f78bdffd-ca56-52dc-a96f-20fef13cb906', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_how_are_you_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '112ff22b997206d042601ad203c0d577a61e0e852381ecc681df64e241e752f4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fa521e99-4d31-525c-b299-18b17b93f7a7', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f78bdffd-ca56-52dc-a96f-20fef13cb906', 1), '112ff22b997206d042601ad203c0d577a61e0e852381ecc681df64e241e752f4',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/a30b59af3cf9c5bc6c5443e00c390f8f6d7d43d051340a4e5090218ba8118fd1.mp3', 1201, '2026-09-13 15:17:30.538799', 'f5f32ef944962de8ff3b40474a2f43d4eb94a2fcc4e7c6b3b4fc3135c4a51116', 'validated', '{"audio_key":"a30b59af3cf9c5bc6c5443e00c390f8f6d7d43d051340a4e5090218ba8118fd1","entity_key":"lx_how_are_you_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f5f32ef944962de8ff3b40474a2f43d4eb94a2fcc4e7c6b3b4fc3135c4a51116","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/a30b59af3cf9c5bc6c5443e00c390f8f6d7d43d051340a4e5090218ba8118fd1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_how_are_you_01 -> audio/generated/tr-TR/lexical/a30b59af3cf9c5bc6c5443e00c390f8f6d7d43d051340a4e5090218ba8118fd1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('296ffec9-87a2-575a-bb6a-bfcac212242e', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_how_are_you_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '112ff22b997206d042601ad203c0d577a61e0e852381ecc681df64e241e752f4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ae7a38d1-72b6-5dd5-a737-e7b006f03f46', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('296ffec9-87a2-575a-bb6a-bfcac212242e', 1), '112ff22b997206d042601ad203c0d577a61e0e852381ecc681df64e241e752f4',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/a30b59af3cf9c5bc6c5443e00c390f8f6d7d43d051340a4e5090218ba8118fd1.mp3', 1201, '2026-09-13 15:17:30.538799', 'f5f32ef944962de8ff3b40474a2f43d4eb94a2fcc4e7c6b3b4fc3135c4a51116', 'validated', '{"audio_key":"a30b59af3cf9c5bc6c5443e00c390f8f6d7d43d051340a4e5090218ba8118fd1","entity_key":"wf_how_are_you_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f5f32ef944962de8ff3b40474a2f43d4eb94a2fcc4e7c6b3b4fc3135c4a51116","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/a30b59af3cf9c5bc6c5443e00c390f8f6d7d43d051340a4e5090218ba8118fd1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_conversation_06 -> audio/generated/tr-TR/lexical/a4881db8bfd1a70f265f68c27cb9809278e579e7e86dd4e31561e2f1444cba00.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1fda11ff-6e77-58cb-85ab-fa8a4b61adeb', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_conversation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '74c2860eb786104b6626bf1e372d3f9117953b9c0750dece95dbd4f0b934e937'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6effc83e-d908-53b8-b353-d97f1c3f2a91', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1fda11ff-6e77-58cb-85ab-fa8a4b61adeb', 1), '74c2860eb786104b6626bf1e372d3f9117953b9c0750dece95dbd4f0b934e937',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/a4881db8bfd1a70f265f68c27cb9809278e579e7e86dd4e31561e2f1444cba00.mp3', 1253, '2026-09-13 15:17:30.937100', 'aaa8558d4885e8baeda964ad8ff49e6ac3b1a3f02be88aa6ba97be99236e929c', 'validated', '{"audio_key":"a4881db8bfd1a70f265f68c27cb9809278e579e7e86dd4e31561e2f1444cba00","entity_key":"lx_first_conversation_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"aaa8558d4885e8baeda964ad8ff49e6ac3b1a3f02be88aa6ba97be99236e929c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/a4881db8bfd1a70f265f68c27cb9809278e579e7e86dd4e31561e2f1444cba00.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_conversation_06 -> audio/generated/tr-TR/lexical/a4881db8bfd1a70f265f68c27cb9809278e579e7e86dd4e31561e2f1444cba00.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f2849d85-f8f8-56ae-8c48-07cc0a8ff5f4', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_conversation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '74c2860eb786104b6626bf1e372d3f9117953b9c0750dece95dbd4f0b934e937'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d5562eb3-e81e-5d0c-8a8a-f302c48ba863', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f2849d85-f8f8-56ae-8c48-07cc0a8ff5f4', 1), '74c2860eb786104b6626bf1e372d3f9117953b9c0750dece95dbd4f0b934e937',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/a4881db8bfd1a70f265f68c27cb9809278e579e7e86dd4e31561e2f1444cba00.mp3', 1253, '2026-09-13 15:17:30.937100', 'aaa8558d4885e8baeda964ad8ff49e6ac3b1a3f02be88aa6ba97be99236e929c', 'validated', '{"audio_key":"a4881db8bfd1a70f265f68c27cb9809278e579e7e86dd4e31561e2f1444cba00","entity_key":"wf_first_conversation_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"aaa8558d4885e8baeda964ad8ff49e6ac3b1a3f02be88aa6ba97be99236e929c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/a4881db8bfd1a70f265f68c27cb9809278e579e7e86dd4e31561e2f1444cba00.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_greetings_06 -> audio/generated/tr-TR/lexical/a4881db8bfd1a70f265f68c27cb9809278e579e7e86dd4e31561e2f1444cba00.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1fda11ff-6e77-58cb-85ab-fa8a4b61adeb', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_greetings_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '74c2860eb786104b6626bf1e372d3f9117953b9c0750dece95dbd4f0b934e937'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6effc83e-d908-53b8-b353-d97f1c3f2a91', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1fda11ff-6e77-58cb-85ab-fa8a4b61adeb', 1), '74c2860eb786104b6626bf1e372d3f9117953b9c0750dece95dbd4f0b934e937',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/a4881db8bfd1a70f265f68c27cb9809278e579e7e86dd4e31561e2f1444cba00.mp3', 1253, '2026-09-13 15:17:30.937100', 'aaa8558d4885e8baeda964ad8ff49e6ac3b1a3f02be88aa6ba97be99236e929c', 'validated', '{"audio_key":"a4881db8bfd1a70f265f68c27cb9809278e579e7e86dd4e31561e2f1444cba00","entity_key":"lx_first_greetings_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"aaa8558d4885e8baeda964ad8ff49e6ac3b1a3f02be88aa6ba97be99236e929c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/a4881db8bfd1a70f265f68c27cb9809278e579e7e86dd4e31561e2f1444cba00.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_greetings_06 -> audio/generated/tr-TR/lexical/a4881db8bfd1a70f265f68c27cb9809278e579e7e86dd4e31561e2f1444cba00.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e5df1176-7ee9-58eb-bc95-3e7c613cfa44', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_greetings_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '74c2860eb786104b6626bf1e372d3f9117953b9c0750dece95dbd4f0b934e937'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('507c02c8-9f46-5d99-a2d8-7dbb08f30fb5', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e5df1176-7ee9-58eb-bc95-3e7c613cfa44', 1), '74c2860eb786104b6626bf1e372d3f9117953b9c0750dece95dbd4f0b934e937',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/a4881db8bfd1a70f265f68c27cb9809278e579e7e86dd4e31561e2f1444cba00.mp3', 1253, '2026-09-13 15:17:30.937100', 'aaa8558d4885e8baeda964ad8ff49e6ac3b1a3f02be88aa6ba97be99236e929c', 'validated', '{"audio_key":"a4881db8bfd1a70f265f68c27cb9809278e579e7e86dd4e31561e2f1444cba00","entity_key":"wf_first_greetings_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"aaa8558d4885e8baeda964ad8ff49e6ac3b1a3f02be88aa6ba97be99236e929c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/a4881db8bfd1a70f265f68c27cb9809278e579e7e86dd4e31561e2f1444cba00.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_sounds_05 -> audio/generated/tr-TR/lexical/a9933de9202a5a5895676a5f90d45cd80662ddfeef38980806a75abc4342b9b2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('34f37031-c887-55ef-a519-00f8e7b00940', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_sounds_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eec1600aefb9a3578c29c009f8e05c452ce9285d0b104b5e44fd11fd2cdde4b7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cd1584f4-47f7-55d7-a83d-79a1dabd4fb2', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('34f37031-c887-55ef-a519-00f8e7b00940', 1), 'eec1600aefb9a3578c29c009f8e05c452ce9285d0b104b5e44fd11fd2cdde4b7',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/a9933de9202a5a5895676a5f90d45cd80662ddfeef38980806a75abc4342b9b2.mp3', 914, '2026-09-13 15:17:31.509094', '599aff823778ebe3049123a205764fca2a6cbc0fc331cd10f8f2e250b5faaa6f', 'validated', '{"audio_key":"a9933de9202a5a5895676a5f90d45cd80662ddfeef38980806a75abc4342b9b2","entity_key":"lx_first_sounds_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"599aff823778ebe3049123a205764fca2a6cbc0fc331cd10f8f2e250b5faaa6f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/a9933de9202a5a5895676a5f90d45cd80662ddfeef38980806a75abc4342b9b2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_sounds_05 -> audio/generated/tr-TR/lexical/a9933de9202a5a5895676a5f90d45cd80662ddfeef38980806a75abc4342b9b2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0b9be4b4-bd34-53f3-a2de-3a29e61f896b', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_sounds_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eec1600aefb9a3578c29c009f8e05c452ce9285d0b104b5e44fd11fd2cdde4b7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a0b4b5a4-c144-5310-a7f7-5bed4f8f506b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0b9be4b4-bd34-53f3-a2de-3a29e61f896b', 1), 'eec1600aefb9a3578c29c009f8e05c452ce9285d0b104b5e44fd11fd2cdde4b7',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/a9933de9202a5a5895676a5f90d45cd80662ddfeef38980806a75abc4342b9b2.mp3', 914, '2026-09-13 15:17:31.509094', '599aff823778ebe3049123a205764fca2a6cbc0fc331cd10f8f2e250b5faaa6f', 'validated', '{"audio_key":"a9933de9202a5a5895676a5f90d45cd80662ddfeef38980806a75abc4342b9b2","entity_key":"wf_first_sounds_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"599aff823778ebe3049123a205764fca2a6cbc0fc331cd10f8f2e250b5faaa6f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/a9933de9202a5a5895676a5f90d45cd80662ddfeef38980806a75abc4342b9b2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_my_name_02 -> audio/generated/tr-TR/lexical/b0cfab064626562f798f33cc3c1f2fe3ccfcff5734ea7f5505dca2eb0144d074.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c909be76-17da-5cc6-a7c8-fd500e56539d', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_my_name_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c351dcf16a9f501043345fa61e296505be5b1541cacbb7ee71be2ebf7c3345cd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('39df7f55-da2d-50f9-8367-d5834034b8c7', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c909be76-17da-5cc6-a7c8-fd500e56539d', 1), 'c351dcf16a9f501043345fa61e296505be5b1541cacbb7ee71be2ebf7c3345cd',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/b0cfab064626562f798f33cc3c1f2fe3ccfcff5734ea7f5505dca2eb0144d074.mp3', 1280, '2026-09-13 15:17:31.962070', '3d7f1d06dda4badde04612f4318a628903dd56da5a4aadae1ade54676ad33fd5', 'validated', '{"audio_key":"b0cfab064626562f798f33cc3c1f2fe3ccfcff5734ea7f5505dca2eb0144d074","entity_key":"lx_my_name_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3d7f1d06dda4badde04612f4318a628903dd56da5a4aadae1ade54676ad33fd5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/b0cfab064626562f798f33cc3c1f2fe3ccfcff5734ea7f5505dca2eb0144d074.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_my_name_02 -> audio/generated/tr-TR/lexical/b0cfab064626562f798f33cc3c1f2fe3ccfcff5734ea7f5505dca2eb0144d074.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7c4bb31d-1164-5f0e-9979-ab66b23cdb9b', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_my_name_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c351dcf16a9f501043345fa61e296505be5b1541cacbb7ee71be2ebf7c3345cd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3697dc3c-d580-58c9-9f03-27b1f7345232', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7c4bb31d-1164-5f0e-9979-ab66b23cdb9b', 1), 'c351dcf16a9f501043345fa61e296505be5b1541cacbb7ee71be2ebf7c3345cd',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/b0cfab064626562f798f33cc3c1f2fe3ccfcff5734ea7f5505dca2eb0144d074.mp3', 1280, '2026-09-13 15:17:31.962070', '3d7f1d06dda4badde04612f4318a628903dd56da5a4aadae1ade54676ad33fd5', 'validated', '{"audio_key":"b0cfab064626562f798f33cc3c1f2fe3ccfcff5734ea7f5505dca2eb0144d074","entity_key":"wf_my_name_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3d7f1d06dda4badde04612f4318a628903dd56da5a4aadae1ade54676ad33fd5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/b0cfab064626562f798f33cc3c1f2fe3ccfcff5734ea7f5505dca2eb0144d074.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_objects_01 -> audio/generated/tr-TR/lexical/b1143bbf8fff6727de7b9316f8bd5ac119d4986c19f227ea49b632f8777358e9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c38b286f-d629-55ac-b9ee-696a6a249d2c', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_objects_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c35060e1a67e9fcbbfab9395e1211457d31b815b52651982ec42694be2bb7b1a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('be427d09-242d-5d25-9fa3-a112e1fbc1d1', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c38b286f-d629-55ac-b9ee-696a6a249d2c', 1), 'c35060e1a67e9fcbbfab9395e1211457d31b815b52651982ec42694be2bb7b1a',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/b1143bbf8fff6727de7b9316f8bd5ac119d4986c19f227ea49b632f8777358e9.mp3', 1018, '2026-09-13 15:17:32.557309', '507169cd7c22113feb67b932761d2e95680552319bb114bf1e240eeaddd3d514', 'validated', '{"audio_key":"b1143bbf8fff6727de7b9316f8bd5ac119d4986c19f227ea49b632f8777358e9","entity_key":"lx_first_objects_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"507169cd7c22113feb67b932761d2e95680552319bb114bf1e240eeaddd3d514","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/b1143bbf8fff6727de7b9316f8bd5ac119d4986c19f227ea49b632f8777358e9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_objects_01 -> audio/generated/tr-TR/lexical/b1143bbf8fff6727de7b9316f8bd5ac119d4986c19f227ea49b632f8777358e9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('56aac6da-ca0e-5444-921b-d0c2cf70aaf2', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_objects_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c35060e1a67e9fcbbfab9395e1211457d31b815b52651982ec42694be2bb7b1a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('41786cb7-91cc-5068-859a-404284517b73', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('56aac6da-ca0e-5444-921b-d0c2cf70aaf2', 1), 'c35060e1a67e9fcbbfab9395e1211457d31b815b52651982ec42694be2bb7b1a',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/b1143bbf8fff6727de7b9316f8bd5ac119d4986c19f227ea49b632f8777358e9.mp3', 1018, '2026-09-13 15:17:32.557309', '507169cd7c22113feb67b932761d2e95680552319bb114bf1e240eeaddd3d514', 'validated', '{"audio_key":"b1143bbf8fff6727de7b9316f8bd5ac119d4986c19f227ea49b632f8777358e9","entity_key":"wf_first_objects_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"507169cd7c22113feb67b932761d2e95680552319bb114bf1e240eeaddd3d514","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/b1143bbf8fff6727de7b9316f8bd5ac119d4986c19f227ea49b632f8777358e9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_sounds_01 -> audio/generated/tr-TR/lexical/b50319b71e09d311498bbd6c5830b0bf019b711bd1767b1d07ac43996d0b9ad7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9fa84a2e-b890-536a-8a10-be20feae5f5e', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_sounds_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '168b80f985a501c0438f1683c311865c67e69da0d2cd6c768d99b307e1f0c462'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e2da37ec-721a-5968-a36c-5f256bf0228f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9fa84a2e-b890-536a-8a10-be20feae5f5e', 1), '168b80f985a501c0438f1683c311865c67e69da0d2cd6c768d99b307e1f0c462',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/b50319b71e09d311498bbd6c5830b0bf019b711bd1767b1d07ac43996d0b9ad7.mp3', 914, '2026-09-13 15:17:32.932747', 'd074ecdeb7307378706d281a04342ea6779a0e80fd2fac48a010bf0638ab5084', 'validated', '{"audio_key":"b50319b71e09d311498bbd6c5830b0bf019b711bd1767b1d07ac43996d0b9ad7","entity_key":"lx_first_sounds_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d074ecdeb7307378706d281a04342ea6779a0e80fd2fac48a010bf0638ab5084","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/b50319b71e09d311498bbd6c5830b0bf019b711bd1767b1d07ac43996d0b9ad7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_sounds_01 -> audio/generated/tr-TR/lexical/b50319b71e09d311498bbd6c5830b0bf019b711bd1767b1d07ac43996d0b9ad7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8fbf6306-569d-5501-929e-386ee9c73ed9', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_sounds_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '168b80f985a501c0438f1683c311865c67e69da0d2cd6c768d99b307e1f0c462'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fe687858-2ba6-5d75-aed8-19bd9836a343', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8fbf6306-569d-5501-929e-386ee9c73ed9', 1), '168b80f985a501c0438f1683c311865c67e69da0d2cd6c768d99b307e1f0c462',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/b50319b71e09d311498bbd6c5830b0bf019b711bd1767b1d07ac43996d0b9ad7.mp3', 914, '2026-09-13 15:17:32.932747', 'd074ecdeb7307378706d281a04342ea6779a0e80fd2fac48a010bf0638ab5084', 'validated', '{"audio_key":"b50319b71e09d311498bbd6c5830b0bf019b711bd1767b1d07ac43996d0b9ad7","entity_key":"wf_first_sounds_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d074ecdeb7307378706d281a04342ea6779a0e80fd2fac48a010bf0638ab5084","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/b50319b71e09d311498bbd6c5830b0bf019b711bd1767b1d07ac43996d0b9ad7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_objects_02 -> audio/generated/tr-TR/lexical/b72fc166dd1dcec230c38d9d8fbfc61694570353f140c82662692c2332908321.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6006d0c6-d9e0-5f39-b614-a1cf79b747ed', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_objects_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e2c462e3e1f260a9130d09c099a7220e83762adac65536eb38b3e09b81418343'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('78e94db1-0eca-5166-ba03-700a35efe601', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6006d0c6-d9e0-5f39-b614-a1cf79b747ed', 1), 'e2c462e3e1f260a9130d09c099a7220e83762adac65536eb38b3e09b81418343',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/b72fc166dd1dcec230c38d9d8fbfc61694570353f140c82662692c2332908321.mp3', 1097, '2026-09-13 15:17:33.559042', 'ebdd9fcdcf89888df4e160981231ff4bb7c620658ef83d12d91f189a1e4b4f3a', 'validated', '{"audio_key":"b72fc166dd1dcec230c38d9d8fbfc61694570353f140c82662692c2332908321","entity_key":"lx_first_objects_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ebdd9fcdcf89888df4e160981231ff4bb7c620658ef83d12d91f189a1e4b4f3a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/b72fc166dd1dcec230c38d9d8fbfc61694570353f140c82662692c2332908321.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_objects_02 -> audio/generated/tr-TR/lexical/b72fc166dd1dcec230c38d9d8fbfc61694570353f140c82662692c2332908321.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1f84764c-9ca4-554e-84db-c8ed92310312', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_objects_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e2c462e3e1f260a9130d09c099a7220e83762adac65536eb38b3e09b81418343'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('995375bd-28d4-53cd-b2cf-3463bf4c029e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1f84764c-9ca4-554e-84db-c8ed92310312', 1), 'e2c462e3e1f260a9130d09c099a7220e83762adac65536eb38b3e09b81418343',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/b72fc166dd1dcec230c38d9d8fbfc61694570353f140c82662692c2332908321.mp3', 1097, '2026-09-13 15:17:33.559042', 'ebdd9fcdcf89888df4e160981231ff4bb7c620658ef83d12d91f189a1e4b4f3a', 'validated', '{"audio_key":"b72fc166dd1dcec230c38d9d8fbfc61694570353f140c82662692c2332908321","entity_key":"wf_first_objects_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ebdd9fcdcf89888df4e160981231ff4bb7c620658ef83d12d91f189a1e4b4f3a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/b72fc166dd1dcec230c38d9d8fbfc61694570353f140c82662692c2332908321.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_polite_words_03 -> audio/generated/tr-TR/lexical/bcbdf33ded2d7a8b4fffba340b64b5effc348a6ac11518a1c7b15d3aa05ab036.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('08c6cb83-53e4-5550-95fd-530b32cb011d', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_polite_words_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '888cd512f06185b652b587c00c550d5d266cb41a0e6a27ce257c375a177fa4af'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b5b8e011-cad7-5eb1-83a4-b3fc30ac8cc8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('08c6cb83-53e4-5550-95fd-530b32cb011d', 1), '888cd512f06185b652b587c00c550d5d266cb41a0e6a27ce257c375a177fa4af',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/bcbdf33ded2d7a8b4fffba340b64b5effc348a6ac11518a1c7b15d3aa05ab036.mp3', 1332, '2026-09-13 15:17:34.045259', 'e489953c0d514f6e4271f6cae5fe16f06993806a80ad4de3b5298692086d1c5a', 'validated', '{"audio_key":"bcbdf33ded2d7a8b4fffba340b64b5effc348a6ac11518a1c7b15d3aa05ab036","entity_key":"lx_polite_words_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e489953c0d514f6e4271f6cae5fe16f06993806a80ad4de3b5298692086d1c5a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/bcbdf33ded2d7a8b4fffba340b64b5effc348a6ac11518a1c7b15d3aa05ab036.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_polite_words_03 -> audio/generated/tr-TR/lexical/bcbdf33ded2d7a8b4fffba340b64b5effc348a6ac11518a1c7b15d3aa05ab036.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('fa02b07b-67a9-58ba-a1be-460d3123b5f6', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_polite_words_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '888cd512f06185b652b587c00c550d5d266cb41a0e6a27ce257c375a177fa4af'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('867675b3-ed7b-554d-813c-9ba55db45611', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('fa02b07b-67a9-58ba-a1be-460d3123b5f6', 1), '888cd512f06185b652b587c00c550d5d266cb41a0e6a27ce257c375a177fa4af',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/bcbdf33ded2d7a8b4fffba340b64b5effc348a6ac11518a1c7b15d3aa05ab036.mp3', 1332, '2026-09-13 15:17:34.045259', 'e489953c0d514f6e4271f6cae5fe16f06993806a80ad4de3b5298692086d1c5a', 'validated', '{"audio_key":"bcbdf33ded2d7a8b4fffba340b64b5effc348a6ac11518a1c7b15d3aa05ab036","entity_key":"wf_polite_words_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e489953c0d514f6e4271f6cae5fe16f06993806a80ad4de3b5298692086d1c5a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/bcbdf33ded2d7a8b4fffba340b64b5effc348a6ac11518a1c7b15d3aa05ab036.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_numbers_0_10_04 -> audio/generated/tr-TR/lexical/c0d01fa51e6386480ace894fbb5cc4df42d8983b1a51dbc77838326b552a63bc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b23a00f4-dd49-5b8e-8347-5ad363e0e33c', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_numbers_0_10_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '976387888434aee7f7995cfaea7a25e26ed4a1e2ccf2bdd52e66c12b46e91761'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('298715ab-7de4-5a63-987c-43da119a53c9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b23a00f4-dd49-5b8e-8347-5ad363e0e33c', 1), '976387888434aee7f7995cfaea7a25e26ed4a1e2ccf2bdd52e66c12b46e91761',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/c0d01fa51e6386480ace894fbb5cc4df42d8983b1a51dbc77838326b552a63bc.mp3', 862, '2026-09-13 15:17:34.566511', 'c54429a4e5dae0385f69d1f97ee0d35664699702e0084f782cac018aedb85744', 'validated', '{"audio_key":"c0d01fa51e6386480ace894fbb5cc4df42d8983b1a51dbc77838326b552a63bc","entity_key":"lx_numbers_0_10_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c54429a4e5dae0385f69d1f97ee0d35664699702e0084f782cac018aedb85744","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/c0d01fa51e6386480ace894fbb5cc4df42d8983b1a51dbc77838326b552a63bc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_numbers_0_10_04 -> audio/generated/tr-TR/lexical/c0d01fa51e6386480ace894fbb5cc4df42d8983b1a51dbc77838326b552a63bc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c4095d91-7bbb-561c-9de1-7c12dda02471', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_numbers_0_10_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '976387888434aee7f7995cfaea7a25e26ed4a1e2ccf2bdd52e66c12b46e91761'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1183a6c7-6092-5489-a205-dda0b9ca4403', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c4095d91-7bbb-561c-9de1-7c12dda02471', 1), '976387888434aee7f7995cfaea7a25e26ed4a1e2ccf2bdd52e66c12b46e91761',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/c0d01fa51e6386480ace894fbb5cc4df42d8983b1a51dbc77838326b552a63bc.mp3', 862, '2026-09-13 15:17:34.566511', 'c54429a4e5dae0385f69d1f97ee0d35664699702e0084f782cac018aedb85744', 'validated', '{"audio_key":"c0d01fa51e6386480ace894fbb5cc4df42d8983b1a51dbc77838326b552a63bc","entity_key":"wf_numbers_0_10_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c54429a4e5dae0385f69d1f97ee0d35664699702e0084f782cac018aedb85744","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/c0d01fa51e6386480ace894fbb5cc4df42d8983b1a51dbc77838326b552a63bc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_how_are_you_04 -> audio/generated/tr-TR/lexical/c708427b7c3b1716cdfdc308249f7e38b5af37ea57207b8f026ddc2a423bbe19.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('fdc4e01f-f351-51e3-acf0-32c9f650fb6a', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_how_are_you_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c04a95faba757e624f2e5b53e28b52b732b4073243490f3be019106cd23230c6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bfe5ff60-b4b8-5c99-99bf-c79983cde0d1', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('fdc4e01f-f351-51e3-acf0-32c9f650fb6a', 1), 'c04a95faba757e624f2e5b53e28b52b732b4073243490f3be019106cd23230c6',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/c708427b7c3b1716cdfdc308249f7e38b5af37ea57207b8f026ddc2a423bbe19.mp3', 1253, '2026-09-13 15:17:35.110113', '7b1af413b4a615df2d34e2f8df456d8dd0df0e5ca9e228ce4e020c37f5af8c78', 'validated', '{"audio_key":"c708427b7c3b1716cdfdc308249f7e38b5af37ea57207b8f026ddc2a423bbe19","entity_key":"lx_how_are_you_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7b1af413b4a615df2d34e2f8df456d8dd0df0e5ca9e228ce4e020c37f5af8c78","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/c708427b7c3b1716cdfdc308249f7e38b5af37ea57207b8f026ddc2a423bbe19.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_how_are_you_04 -> audio/generated/tr-TR/lexical/c708427b7c3b1716cdfdc308249f7e38b5af37ea57207b8f026ddc2a423bbe19.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d8e85c83-6ebc-5656-938f-a3bd16eec1b6', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_how_are_you_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c04a95faba757e624f2e5b53e28b52b732b4073243490f3be019106cd23230c6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ffb2d5f4-1b9e-57cd-9fb1-f4ec60a593e3', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d8e85c83-6ebc-5656-938f-a3bd16eec1b6', 1), 'c04a95faba757e624f2e5b53e28b52b732b4073243490f3be019106cd23230c6',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/c708427b7c3b1716cdfdc308249f7e38b5af37ea57207b8f026ddc2a423bbe19.mp3', 1253, '2026-09-13 15:17:35.110113', '7b1af413b4a615df2d34e2f8df456d8dd0df0e5ca9e228ce4e020c37f5af8c78', 'validated', '{"audio_key":"c708427b7c3b1716cdfdc308249f7e38b5af37ea57207b8f026ddc2a423bbe19","entity_key":"wf_how_are_you_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7b1af413b4a615df2d34e2f8df456d8dd0df0e5ca9e228ce4e020c37f5af8c78","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/c708427b7c3b1716cdfdc308249f7e38b5af37ea57207b8f026ddc2a423bbe19.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_my_name_06 -> audio/generated/tr-TR/lexical/c7e4d0f4e3a4e9863df4a01ae033b72cf1b62d3c60640da28c55526cba68bdc5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5e869588-9c58-5f6d-b183-fef43731e9c7', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_my_name_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '70ba33708cbfb103f1a8e34afef333ba7dc021022b2d9aaa583aabb8058d8d67'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('01d8c24d-957a-50a8-a959-b6c25c7fb30f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5e869588-9c58-5f6d-b183-fef43731e9c7', 1), '70ba33708cbfb103f1a8e34afef333ba7dc021022b2d9aaa583aabb8058d8d67',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/c7e4d0f4e3a4e9863df4a01ae033b72cf1b62d3c60640da28c55526cba68bdc5.mp3', 862, '2026-09-13 15:17:35.559489', '0952e4a0f8e51a947158387a548e44276c74ed9430d89338696b1ff0031ad091', 'validated', '{"audio_key":"c7e4d0f4e3a4e9863df4a01ae033b72cf1b62d3c60640da28c55526cba68bdc5","entity_key":"lx_my_name_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0952e4a0f8e51a947158387a548e44276c74ed9430d89338696b1ff0031ad091","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/c7e4d0f4e3a4e9863df4a01ae033b72cf1b62d3c60640da28c55526cba68bdc5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_my_name_06 -> audio/generated/tr-TR/lexical/c7e4d0f4e3a4e9863df4a01ae033b72cf1b62d3c60640da28c55526cba68bdc5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1d4c0a85-c158-5ead-9cbf-b944bf4a8d50', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_my_name_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '70ba33708cbfb103f1a8e34afef333ba7dc021022b2d9aaa583aabb8058d8d67'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e391b075-b707-546c-9188-6e48e052212f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1d4c0a85-c158-5ead-9cbf-b944bf4a8d50', 1), '70ba33708cbfb103f1a8e34afef333ba7dc021022b2d9aaa583aabb8058d8d67',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/c7e4d0f4e3a4e9863df4a01ae033b72cf1b62d3c60640da28c55526cba68bdc5.mp3', 862, '2026-09-13 15:17:35.559489', '0952e4a0f8e51a947158387a548e44276c74ed9430d89338696b1ff0031ad091', 'validated', '{"audio_key":"c7e4d0f4e3a4e9863df4a01ae033b72cf1b62d3c60640da28c55526cba68bdc5","entity_key":"wf_my_name_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0952e4a0f8e51a947158387a548e44276c74ed9430d89338696b1ff0031ad091","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/c7e4d0f4e3a4e9863df4a01ae033b72cf1b62d3c60640da28c55526cba68bdc5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_greetings_05 -> audio/generated/tr-TR/lexical/ce03e07d301d1ad515abf5463e26672bced87467d97098e360e2c3273d9c9387.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f47e2760-147d-5b02-982c-d47703474c4a', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_greetings_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f6fb902473f06d676ed42a00eb5b6fa1fb438611c608fc92fc3258fe3013cb88'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('723afc87-b5d2-5176-a534-de8e36f0d122', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f47e2760-147d-5b02-982c-d47703474c4a', 1), 'f6fb902473f06d676ed42a00eb5b6fa1fb438611c608fc92fc3258fe3013cb88',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/ce03e07d301d1ad515abf5463e26672bced87467d97098e360e2c3273d9c9387.mp3', 1149, '2026-09-13 15:17:36.222493', 'a87c8fa999e4817567f44980a26bf87e204a72a1874f833cfde809d59313a1fd', 'validated', '{"audio_key":"ce03e07d301d1ad515abf5463e26672bced87467d97098e360e2c3273d9c9387","entity_key":"lx_first_greetings_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a87c8fa999e4817567f44980a26bf87e204a72a1874f833cfde809d59313a1fd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/ce03e07d301d1ad515abf5463e26672bced87467d97098e360e2c3273d9c9387.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_greetings_05 -> audio/generated/tr-TR/lexical/ce03e07d301d1ad515abf5463e26672bced87467d97098e360e2c3273d9c9387.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e375e200-a215-58ce-84d3-44d520701df9', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_greetings_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f6fb902473f06d676ed42a00eb5b6fa1fb438611c608fc92fc3258fe3013cb88'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('42dde71f-3b3d-5d4b-950d-2e4f0636323c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e375e200-a215-58ce-84d3-44d520701df9', 1), 'f6fb902473f06d676ed42a00eb5b6fa1fb438611c608fc92fc3258fe3013cb88',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/ce03e07d301d1ad515abf5463e26672bced87467d97098e360e2c3273d9c9387.mp3', 1149, '2026-09-13 15:17:36.222493', 'a87c8fa999e4817567f44980a26bf87e204a72a1874f833cfde809d59313a1fd', 'validated', '{"audio_key":"ce03e07d301d1ad515abf5463e26672bced87467d97098e360e2c3273d9c9387","entity_key":"wf_first_greetings_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a87c8fa999e4817567f44980a26bf87e204a72a1874f833cfde809d59313a1fd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/ce03e07d301d1ad515abf5463e26672bced87467d97098e360e2c3273d9c9387.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_objects_06 -> audio/generated/tr-TR/lexical/ce1d03c9dbdbe9f70858d3342312660985f592873e6034fa8fced1200069b59f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9fa2edd0-d796-5ec4-bc9a-2676267c67a4', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_objects_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '55f10450eadfaf186e162ff9655cdd4bec8ea935fb1fa6ee69b322f49975c0ee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c647a858-5613-5208-9c08-842277f7183d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9fa2edd0-d796-5ec4-bc9a-2676267c67a4', 1), '55f10450eadfaf186e162ff9655cdd4bec8ea935fb1fa6ee69b322f49975c0ee',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/ce1d03c9dbdbe9f70858d3342312660985f592873e6034fa8fced1200069b59f.mp3', 1201, '2026-09-13 15:17:36.597841', 'e3d6134a9755a9220904981f5868486a3d6a1882489e304f4e176307fd0a06b2', 'validated', '{"audio_key":"ce1d03c9dbdbe9f70858d3342312660985f592873e6034fa8fced1200069b59f","entity_key":"lx_first_objects_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e3d6134a9755a9220904981f5868486a3d6a1882489e304f4e176307fd0a06b2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/ce1d03c9dbdbe9f70858d3342312660985f592873e6034fa8fced1200069b59f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_objects_06 -> audio/generated/tr-TR/lexical/ce1d03c9dbdbe9f70858d3342312660985f592873e6034fa8fced1200069b59f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('584b1f6e-2d19-5c86-922b-81fac41c0b1c', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_objects_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '55f10450eadfaf186e162ff9655cdd4bec8ea935fb1fa6ee69b322f49975c0ee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('945c1495-bee9-5978-b33f-ef27af64351a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('584b1f6e-2d19-5c86-922b-81fac41c0b1c', 1), '55f10450eadfaf186e162ff9655cdd4bec8ea935fb1fa6ee69b322f49975c0ee',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/ce1d03c9dbdbe9f70858d3342312660985f592873e6034fa8fced1200069b59f.mp3', 1201, '2026-09-13 15:17:36.597841', 'e3d6134a9755a9220904981f5868486a3d6a1882489e304f4e176307fd0a06b2', 'validated', '{"audio_key":"ce1d03c9dbdbe9f70858d3342312660985f592873e6034fa8fced1200069b59f","entity_key":"wf_first_objects_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e3d6134a9755a9220904981f5868486a3d6a1882489e304f4e176307fd0a06b2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/ce1d03c9dbdbe9f70858d3342312660985f592873e6034fa8fced1200069b59f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_alphabet_05 -> audio/generated/tr-TR/lexical/d3778c82706dd993e54758072ee9dd9662701433126a863f43e8efbd83710d26.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ab1e27d5-b591-5e96-8e19-727110aad933', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_alphabet_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'de7d1b721a1e0632b7cf04edf5032c8ecffa9f9a08492152b926f1a5a7e765d7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('53f6d7c7-9832-52e0-88d3-b37140a19475', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ab1e27d5-b591-5e96-8e19-727110aad933', 1), 'de7d1b721a1e0632b7cf04edf5032c8ecffa9f9a08492152b926f1a5a7e765d7',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/d3778c82706dd993e54758072ee9dd9662701433126a863f43e8efbd83710d26.mp3', 731, '2026-09-13 15:17:37.206222', 'c116754a813e8f08f9d0ec3efd2e7585dadd5111dcded6d2d71c0f03b89c3c74', 'validated', '{"audio_key":"d3778c82706dd993e54758072ee9dd9662701433126a863f43e8efbd83710d26","entity_key":"lx_alphabet_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c116754a813e8f08f9d0ec3efd2e7585dadd5111dcded6d2d71c0f03b89c3c74","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/d3778c82706dd993e54758072ee9dd9662701433126a863f43e8efbd83710d26.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_alphabet_05 -> audio/generated/tr-TR/lexical/d3778c82706dd993e54758072ee9dd9662701433126a863f43e8efbd83710d26.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3286d8dc-2f61-58c3-9e2b-26bf510c235c', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_alphabet_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'de7d1b721a1e0632b7cf04edf5032c8ecffa9f9a08492152b926f1a5a7e765d7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('07e36518-4b3c-5198-8f0d-433912e16273', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3286d8dc-2f61-58c3-9e2b-26bf510c235c', 1), 'de7d1b721a1e0632b7cf04edf5032c8ecffa9f9a08492152b926f1a5a7e765d7',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/d3778c82706dd993e54758072ee9dd9662701433126a863f43e8efbd83710d26.mp3', 731, '2026-09-13 15:17:37.206222', 'c116754a813e8f08f9d0ec3efd2e7585dadd5111dcded6d2d71c0f03b89c3c74', 'validated', '{"audio_key":"d3778c82706dd993e54758072ee9dd9662701433126a863f43e8efbd83710d26","entity_key":"wf_alphabet_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c116754a813e8f08f9d0ec3efd2e7585dadd5111dcded6d2d71c0f03b89c3c74","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/d3778c82706dd993e54758072ee9dd9662701433126a863f43e8efbd83710d26.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_objects_03 -> audio/generated/tr-TR/lexical/d37c18936199f6b112962040ea618153fa4d96590d16f6e2f1c51ca5ea721896.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6ed20cb7-9979-58c5-b07b-a00d027dba92', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_objects_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0e6a9c8a7ef32b695cf07d9180e253fe4ee604b9b6d5244c14ab089a6586936f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7bfb772b-d573-5102-9e40-c75bcadd7e0c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6ed20cb7-9979-58c5-b07b-a00d027dba92', 1), '0e6a9c8a7ef32b695cf07d9180e253fe4ee604b9b6d5244c14ab089a6586936f',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/d37c18936199f6b112962040ea618153fa4d96590d16f6e2f1c51ca5ea721896.mp3', 1201, '2026-09-13 15:17:37.651373', 'e452df369bb2e192794b9a94abe21fa5c44f2786267d97337911ded4d380ed0e', 'validated', '{"audio_key":"d37c18936199f6b112962040ea618153fa4d96590d16f6e2f1c51ca5ea721896","entity_key":"lx_first_objects_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e452df369bb2e192794b9a94abe21fa5c44f2786267d97337911ded4d380ed0e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/d37c18936199f6b112962040ea618153fa4d96590d16f6e2f1c51ca5ea721896.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_objects_03 -> audio/generated/tr-TR/lexical/d37c18936199f6b112962040ea618153fa4d96590d16f6e2f1c51ca5ea721896.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ca4c0162-36cc-5170-b215-832e5acec88a', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_objects_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0e6a9c8a7ef32b695cf07d9180e253fe4ee604b9b6d5244c14ab089a6586936f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('27530446-2bae-5117-b5a6-f2a67e490bad', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ca4c0162-36cc-5170-b215-832e5acec88a', 1), '0e6a9c8a7ef32b695cf07d9180e253fe4ee604b9b6d5244c14ab089a6586936f',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/d37c18936199f6b112962040ea618153fa4d96590d16f6e2f1c51ca5ea721896.mp3', 1201, '2026-09-13 15:17:37.651373', 'e452df369bb2e192794b9a94abe21fa5c44f2786267d97337911ded4d380ed0e', 'validated', '{"audio_key":"d37c18936199f6b112962040ea618153fa4d96590d16f6e2f1c51ca5ea721896","entity_key":"wf_first_objects_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e452df369bb2e192794b9a94abe21fa5c44f2786267d97337911ded4d380ed0e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/d37c18936199f6b112962040ea618153fa4d96590d16f6e2f1c51ca5ea721896.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_my_name_01 -> audio/generated/tr-TR/lexical/e6b3ebde5b4a431c19e8ebe760c1198e0f86a6b5a94119f6790479efe15b00a2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('75174963-2017-52d8-b99c-c43387a12047', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_my_name_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6700869c8ff7480e34a70a708b028700dbaa3a033b5652b903afe89f49a31456'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f2e9b567-ebec-5d45-951d-f00b022b5163', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('75174963-2017-52d8-b99c-c43387a12047', 1), '6700869c8ff7480e34a70a708b028700dbaa3a033b5652b903afe89f49a31456',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/e6b3ebde5b4a431c19e8ebe760c1198e0f86a6b5a94119f6790479efe15b00a2.mp3', 1071, '2026-09-13 15:17:38.254230', '31c9a4df13a68322215942067316d2e19127101971528fff6fd19c03ce482463', 'validated', '{"audio_key":"e6b3ebde5b4a431c19e8ebe760c1198e0f86a6b5a94119f6790479efe15b00a2","entity_key":"lx_my_name_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"31c9a4df13a68322215942067316d2e19127101971528fff6fd19c03ce482463","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/e6b3ebde5b4a431c19e8ebe760c1198e0f86a6b5a94119f6790479efe15b00a2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_my_name_01 -> audio/generated/tr-TR/lexical/e6b3ebde5b4a431c19e8ebe760c1198e0f86a6b5a94119f6790479efe15b00a2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f7035e07-c212-54de-93bb-306ee4e9c1b1', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_my_name_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6700869c8ff7480e34a70a708b028700dbaa3a033b5652b903afe89f49a31456'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ae38f4bf-8e76-5934-a503-6f45da573647', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f7035e07-c212-54de-93bb-306ee4e9c1b1', 1), '6700869c8ff7480e34a70a708b028700dbaa3a033b5652b903afe89f49a31456',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/e6b3ebde5b4a431c19e8ebe760c1198e0f86a6b5a94119f6790479efe15b00a2.mp3', 1071, '2026-09-13 15:17:38.254230', '31c9a4df13a68322215942067316d2e19127101971528fff6fd19c03ce482463', 'validated', '{"audio_key":"e6b3ebde5b4a431c19e8ebe760c1198e0f86a6b5a94119f6790479efe15b00a2","entity_key":"wf_my_name_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"31c9a4df13a68322215942067316d2e19127101971528fff6fd19c03ce482463","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/e6b3ebde5b4a431c19e8ebe760c1198e0f86a6b5a94119f6790479efe15b00a2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_objects_05 -> audio/generated/tr-TR/lexical/e73312e157d8178bf0bb6756ffaf583c6b57e1f2a3a23f9a264520a0acfba196.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6075ca8e-f653-546c-8ef8-cea7b757062a', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_objects_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b7367edaa7bb675764606b5a9343e09ee90242ce419eabfca14c7c7325e550f6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6adda0d9-45f5-5251-8781-65b3cef2d8e4', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6075ca8e-f653-546c-8ef8-cea7b757062a', 1), 'b7367edaa7bb675764606b5a9343e09ee90242ce419eabfca14c7c7325e550f6',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/e73312e157d8178bf0bb6756ffaf583c6b57e1f2a3a23f9a264520a0acfba196.mp3', 1253, '2026-09-13 15:17:38.664584', 'f303b4ceb07cc4ca1151aad64d44fead3352f363d0ec92f61d9197f4bea72f35', 'validated', '{"audio_key":"e73312e157d8178bf0bb6756ffaf583c6b57e1f2a3a23f9a264520a0acfba196","entity_key":"lx_first_objects_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f303b4ceb07cc4ca1151aad64d44fead3352f363d0ec92f61d9197f4bea72f35","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/e73312e157d8178bf0bb6756ffaf583c6b57e1f2a3a23f9a264520a0acfba196.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_objects_05 -> audio/generated/tr-TR/lexical/e73312e157d8178bf0bb6756ffaf583c6b57e1f2a3a23f9a264520a0acfba196.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ed00ca44-112f-5637-8aae-13449ca719ff', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_objects_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b7367edaa7bb675764606b5a9343e09ee90242ce419eabfca14c7c7325e550f6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('94fd3dca-afa4-507d-bc58-a02ece1478ca', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ed00ca44-112f-5637-8aae-13449ca719ff', 1), 'b7367edaa7bb675764606b5a9343e09ee90242ce419eabfca14c7c7325e550f6',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/e73312e157d8178bf0bb6756ffaf583c6b57e1f2a3a23f9a264520a0acfba196.mp3', 1253, '2026-09-13 15:17:38.664584', 'f303b4ceb07cc4ca1151aad64d44fead3352f363d0ec92f61d9197f4bea72f35', 'validated', '{"audio_key":"e73312e157d8178bf0bb6756ffaf583c6b57e1f2a3a23f9a264520a0acfba196","entity_key":"wf_first_objects_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f303b4ceb07cc4ca1151aad64d44fead3352f363d0ec92f61d9197f4bea72f35","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/e73312e157d8178bf0bb6756ffaf583c6b57e1f2a3a23f9a264520a0acfba196.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_conversation_05 -> audio/generated/tr-TR/lexical/eee0098a758f8ecf63b0838bb53fe11f653c17da58260aa32439ec6dd5e5e94b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7f95db75-3d1e-5258-83bf-542ed4c83bce', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_conversation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7a7b0310be31a94e19b805d1979f686874ad37dc804c26c8e578f0133961928e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('591f31cc-6cee-5d6f-bdf0-7907605e3334', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7f95db75-3d1e-5258-83bf-542ed4c83bce', 1), '7a7b0310be31a94e19b805d1979f686874ad37dc804c26c8e578f0133961928e',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/eee0098a758f8ecf63b0838bb53fe11f653c17da58260aa32439ec6dd5e5e94b.mp3', 1384, '2026-09-13 15:17:39.287447', '682bd448e361006f688802d85e3ae30d173cbfc98e27cc47da1f2f039d1fb36b', 'validated', '{"audio_key":"eee0098a758f8ecf63b0838bb53fe11f653c17da58260aa32439ec6dd5e5e94b","entity_key":"lx_first_conversation_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"682bd448e361006f688802d85e3ae30d173cbfc98e27cc47da1f2f039d1fb36b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/eee0098a758f8ecf63b0838bb53fe11f653c17da58260aa32439ec6dd5e5e94b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_conversation_05 -> audio/generated/tr-TR/lexical/eee0098a758f8ecf63b0838bb53fe11f653c17da58260aa32439ec6dd5e5e94b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('591f65dc-542f-59d7-b46d-7aab76dccd2d', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_conversation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7a7b0310be31a94e19b805d1979f686874ad37dc804c26c8e578f0133961928e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bcb9120b-4810-5368-b608-558e18404c23', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('591f65dc-542f-59d7-b46d-7aab76dccd2d', 1), '7a7b0310be31a94e19b805d1979f686874ad37dc804c26c8e578f0133961928e',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/eee0098a758f8ecf63b0838bb53fe11f653c17da58260aa32439ec6dd5e5e94b.mp3', 1384, '2026-09-13 15:17:39.287447', '682bd448e361006f688802d85e3ae30d173cbfc98e27cc47da1f2f039d1fb36b', 'validated', '{"audio_key":"eee0098a758f8ecf63b0838bb53fe11f653c17da58260aa32439ec6dd5e5e94b","entity_key":"wf_first_conversation_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"682bd448e361006f688802d85e3ae30d173cbfc98e27cc47da1f2f039d1fb36b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/eee0098a758f8ecf63b0838bb53fe11f653c17da58260aa32439ec6dd5e5e94b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_how_are_you_03 -> audio/generated/tr-TR/lexical/eee0098a758f8ecf63b0838bb53fe11f653c17da58260aa32439ec6dd5e5e94b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7f95db75-3d1e-5258-83bf-542ed4c83bce', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_how_are_you_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7a7b0310be31a94e19b805d1979f686874ad37dc804c26c8e578f0133961928e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('591f31cc-6cee-5d6f-bdf0-7907605e3334', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7f95db75-3d1e-5258-83bf-542ed4c83bce', 1), '7a7b0310be31a94e19b805d1979f686874ad37dc804c26c8e578f0133961928e',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/eee0098a758f8ecf63b0838bb53fe11f653c17da58260aa32439ec6dd5e5e94b.mp3', 1384, '2026-09-13 15:17:39.287447', '682bd448e361006f688802d85e3ae30d173cbfc98e27cc47da1f2f039d1fb36b', 'validated', '{"audio_key":"eee0098a758f8ecf63b0838bb53fe11f653c17da58260aa32439ec6dd5e5e94b","entity_key":"lx_how_are_you_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"682bd448e361006f688802d85e3ae30d173cbfc98e27cc47da1f2f039d1fb36b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/eee0098a758f8ecf63b0838bb53fe11f653c17da58260aa32439ec6dd5e5e94b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_how_are_you_03 -> audio/generated/tr-TR/lexical/eee0098a758f8ecf63b0838bb53fe11f653c17da58260aa32439ec6dd5e5e94b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('179ed63f-532a-55b9-902a-c117ecba6b7f', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_how_are_you_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7a7b0310be31a94e19b805d1979f686874ad37dc804c26c8e578f0133961928e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9412720e-83ac-5200-90b0-45eaeebfb2a0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('179ed63f-532a-55b9-902a-c117ecba6b7f', 1), '7a7b0310be31a94e19b805d1979f686874ad37dc804c26c8e578f0133961928e',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/eee0098a758f8ecf63b0838bb53fe11f653c17da58260aa32439ec6dd5e5e94b.mp3', 1384, '2026-09-13 15:17:39.287447', '682bd448e361006f688802d85e3ae30d173cbfc98e27cc47da1f2f039d1fb36b', 'validated', '{"audio_key":"eee0098a758f8ecf63b0838bb53fe11f653c17da58260aa32439ec6dd5e5e94b","entity_key":"wf_how_are_you_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"682bd448e361006f688802d85e3ae30d173cbfc98e27cc47da1f2f039d1fb36b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/eee0098a758f8ecf63b0838bb53fe11f653c17da58260aa32439ec6dd5e5e94b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_numbers_0_10_03 -> audio/generated/tr-TR/lexical/ef1751d93a7507991653a7c567c2b9ea3d6e000ea076295f70d36fd9796d7e19.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ed638d20-e10f-5c24-85fe-a6d757ad05f2', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_numbers_0_10_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ccdfbc5c4e2a9289d2389e0e96e9d0ed6e727d9e14be4c1e6442c670ee429e6c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c8803e93-4524-52af-886b-afd088109dd4', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ed638d20-e10f-5c24-85fe-a6d757ad05f2', 1), 'ccdfbc5c4e2a9289d2389e0e96e9d0ed6e727d9e14be4c1e6442c670ee429e6c',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/ef1751d93a7507991653a7c567c2b9ea3d6e000ea076295f70d36fd9796d7e19.mp3', 966, '2026-09-13 15:17:39.659336', '4565d7feb29f1c32f91c6262a31a64e2ee6892c255aaa35fcbfe1e2667600aeb', 'validated', '{"audio_key":"ef1751d93a7507991653a7c567c2b9ea3d6e000ea076295f70d36fd9796d7e19","entity_key":"lx_numbers_0_10_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4565d7feb29f1c32f91c6262a31a64e2ee6892c255aaa35fcbfe1e2667600aeb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/ef1751d93a7507991653a7c567c2b9ea3d6e000ea076295f70d36fd9796d7e19.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_numbers_0_10_03 -> audio/generated/tr-TR/lexical/ef1751d93a7507991653a7c567c2b9ea3d6e000ea076295f70d36fd9796d7e19.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('bb528a92-a678-525b-829b-db14b163a3ad', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_numbers_0_10_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ccdfbc5c4e2a9289d2389e0e96e9d0ed6e727d9e14be4c1e6442c670ee429e6c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('539829de-b503-57ff-a36f-2316c5bcd9eb', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('bb528a92-a678-525b-829b-db14b163a3ad', 1), 'ccdfbc5c4e2a9289d2389e0e96e9d0ed6e727d9e14be4c1e6442c670ee429e6c',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/ef1751d93a7507991653a7c567c2b9ea3d6e000ea076295f70d36fd9796d7e19.mp3', 966, '2026-09-13 15:17:39.659336', '4565d7feb29f1c32f91c6262a31a64e2ee6892c255aaa35fcbfe1e2667600aeb', 'validated', '{"audio_key":"ef1751d93a7507991653a7c567c2b9ea3d6e000ea076295f70d36fd9796d7e19","entity_key":"wf_numbers_0_10_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4565d7feb29f1c32f91c6262a31a64e2ee6892c255aaa35fcbfe1e2667600aeb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/ef1751d93a7507991653a7c567c2b9ea3d6e000ea076295f70d36fd9796d7e19.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_sounds_06 -> audio/generated/tr-TR/lexical/f41784c6d72bb31520d3b2e50eb4a2959fafe777cc6ee9afc782fad9b4111764.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('932dda17-459e-5616-b94e-169a2aa25133', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_sounds_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'afa1e3919581e5951126150bf0e110368b828cd2e76ebcc994373527d4a66dc7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9d7cc4e6-5d8c-5347-b040-54f06df1fb70', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('932dda17-459e-5616-b94e-169a2aa25133', 1), 'afa1e3919581e5951126150bf0e110368b828cd2e76ebcc994373527d4a66dc7',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/f41784c6d72bb31520d3b2e50eb4a2959fafe777cc6ee9afc782fad9b4111764.mp3', 914, '2026-09-13 15:17:40.256426', '45c65f4f9f5fb606b8435ad3aa6c86739d4a9ee77874c636ade86e6bd9c5005e', 'validated', '{"audio_key":"f41784c6d72bb31520d3b2e50eb4a2959fafe777cc6ee9afc782fad9b4111764","entity_key":"lx_first_sounds_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"45c65f4f9f5fb606b8435ad3aa6c86739d4a9ee77874c636ade86e6bd9c5005e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/f41784c6d72bb31520d3b2e50eb4a2959fafe777cc6ee9afc782fad9b4111764.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_sounds_06 -> audio/generated/tr-TR/lexical/f41784c6d72bb31520d3b2e50eb4a2959fafe777cc6ee9afc782fad9b4111764.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e0974771-ac8b-50cf-9c02-f970b65aade5', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_sounds_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'afa1e3919581e5951126150bf0e110368b828cd2e76ebcc994373527d4a66dc7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8edffa6f-b4b5-5d90-8dc5-84f6d4cebdf6', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e0974771-ac8b-50cf-9c02-f970b65aade5', 1), 'afa1e3919581e5951126150bf0e110368b828cd2e76ebcc994373527d4a66dc7',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/f41784c6d72bb31520d3b2e50eb4a2959fafe777cc6ee9afc782fad9b4111764.mp3', 914, '2026-09-13 15:17:40.256426', '45c65f4f9f5fb606b8435ad3aa6c86739d4a9ee77874c636ade86e6bd9c5005e', 'validated', '{"audio_key":"f41784c6d72bb31520d3b2e50eb4a2959fafe777cc6ee9afc782fad9b4111764","entity_key":"wf_first_sounds_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"45c65f4f9f5fb606b8435ad3aa6c86739d4a9ee77874c636ade86e6bd9c5005e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/f41784c6d72bb31520d3b2e50eb4a2959fafe777cc6ee9afc782fad9b4111764.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_sounds_03 -> audio/generated/tr-TR/lexical/f8a086ad49775afe97c1d4df795c62edf85bf920d0684208071ab499392d8a02.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('77f24821-c13e-5a8a-b897-87ae72947f44', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_sounds_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '707a3c64c7c00e52ae880442b769029d2d1328a29941df71c53332d153f87820'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4d58940a-bf45-5ca7-8b1e-10cf9db28883', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('77f24821-c13e-5a8a-b897-87ae72947f44', 1), '707a3c64c7c00e52ae880442b769029d2d1328a29941df71c53332d153f87820',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/f8a086ad49775afe97c1d4df795c62edf85bf920d0684208071ab499392d8a02.mp3', 862, '2026-09-13 15:17:40.649280', 'fc63f5c5a6d28abc5918dbeca06753b17951b3a23876d3d00d8d04311a0d3962', 'validated', '{"audio_key":"f8a086ad49775afe97c1d4df795c62edf85bf920d0684208071ab499392d8a02","entity_key":"lx_first_sounds_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fc63f5c5a6d28abc5918dbeca06753b17951b3a23876d3d00d8d04311a0d3962","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/f8a086ad49775afe97c1d4df795c62edf85bf920d0684208071ab499392d8a02.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_sounds_03 -> audio/generated/tr-TR/lexical/f8a086ad49775afe97c1d4df795c62edf85bf920d0684208071ab499392d8a02.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ff79eb0f-9fdd-57ed-887e-8324f86033e5', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_sounds_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '707a3c64c7c00e52ae880442b769029d2d1328a29941df71c53332d153f87820'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6fcecf21-522e-5c3d-9473-6beca952b0cb', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ff79eb0f-9fdd-57ed-887e-8324f86033e5', 1), '707a3c64c7c00e52ae880442b769029d2d1328a29941df71c53332d153f87820',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/f8a086ad49775afe97c1d4df795c62edf85bf920d0684208071ab499392d8a02.mp3', 862, '2026-09-13 15:17:40.649280', 'fc63f5c5a6d28abc5918dbeca06753b17951b3a23876d3d00d8d04311a0d3962', 'validated', '{"audio_key":"f8a086ad49775afe97c1d4df795c62edf85bf920d0684208071ab499392d8a02","entity_key":"wf_first_sounds_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fc63f5c5a6d28abc5918dbeca06753b17951b3a23876d3d00d8d04311a0d3962","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/f8a086ad49775afe97c1d4df795c62edf85bf920d0684208071ab499392d8a02.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_conversation_03 -> audio/generated/tr-TR/lexical/fa68b17a0398cfa7baa453263a8f0f8a60d1d0e33ec55b26afa9e40f6eb8e9d4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b5c9544a-d804-5b14-9fda-85dc8d290ff9', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_conversation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1ff422f40c5ab71563360a8efe3348838be24f10624798834872dd04b969ea5e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('72db9864-6715-5aaa-9789-8e1d063887e2', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b5c9544a-d804-5b14-9fda-85dc8d290ff9', 1), '1ff422f40c5ab71563360a8efe3348838be24f10624798834872dd04b969ea5e',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/fa68b17a0398cfa7baa453263a8f0f8a60d1d0e33ec55b26afa9e40f6eb8e9d4.mp3', 1097, '2026-09-13 15:17:41.310678', '51e5477aa8a668b7291204c0100dc35748ab9da8041c9a835786533721515026', 'validated', '{"audio_key":"fa68b17a0398cfa7baa453263a8f0f8a60d1d0e33ec55b26afa9e40f6eb8e9d4","entity_key":"lx_first_conversation_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"51e5477aa8a668b7291204c0100dc35748ab9da8041c9a835786533721515026","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/fa68b17a0398cfa7baa453263a8f0f8a60d1d0e33ec55b26afa9e40f6eb8e9d4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_conversation_03 -> audio/generated/tr-TR/lexical/fa68b17a0398cfa7baa453263a8f0f8a60d1d0e33ec55b26afa9e40f6eb8e9d4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b3132750-de8d-5b9c-9090-ce3d1f7f797a', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_conversation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1ff422f40c5ab71563360a8efe3348838be24f10624798834872dd04b969ea5e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e8f46ddb-ee33-5470-995e-d5f21a07ec88', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b3132750-de8d-5b9c-9090-ce3d1f7f797a', 1), '1ff422f40c5ab71563360a8efe3348838be24f10624798834872dd04b969ea5e',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/fa68b17a0398cfa7baa453263a8f0f8a60d1d0e33ec55b26afa9e40f6eb8e9d4.mp3', 1097, '2026-09-13 15:17:41.310678', '51e5477aa8a668b7291204c0100dc35748ab9da8041c9a835786533721515026', 'validated', '{"audio_key":"fa68b17a0398cfa7baa453263a8f0f8a60d1d0e33ec55b26afa9e40f6eb8e9d4","entity_key":"wf_first_conversation_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"51e5477aa8a668b7291204c0100dc35748ab9da8041c9a835786533721515026","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/fa68b17a0398cfa7baa453263a8f0f8a60d1d0e33ec55b26afa9e40f6eb8e9d4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_how_are_you_02 -> audio/generated/tr-TR/lexical/fa68b17a0398cfa7baa453263a8f0f8a60d1d0e33ec55b26afa9e40f6eb8e9d4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b5c9544a-d804-5b14-9fda-85dc8d290ff9', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_how_are_you_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1ff422f40c5ab71563360a8efe3348838be24f10624798834872dd04b969ea5e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('72db9864-6715-5aaa-9789-8e1d063887e2', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b5c9544a-d804-5b14-9fda-85dc8d290ff9', 1), '1ff422f40c5ab71563360a8efe3348838be24f10624798834872dd04b969ea5e',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/fa68b17a0398cfa7baa453263a8f0f8a60d1d0e33ec55b26afa9e40f6eb8e9d4.mp3', 1097, '2026-09-13 15:17:41.310678', '51e5477aa8a668b7291204c0100dc35748ab9da8041c9a835786533721515026', 'validated', '{"audio_key":"fa68b17a0398cfa7baa453263a8f0f8a60d1d0e33ec55b26afa9e40f6eb8e9d4","entity_key":"lx_how_are_you_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"51e5477aa8a668b7291204c0100dc35748ab9da8041c9a835786533721515026","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/fa68b17a0398cfa7baa453263a8f0f8a60d1d0e33ec55b26afa9e40f6eb8e9d4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_how_are_you_02 -> audio/generated/tr-TR/lexical/fa68b17a0398cfa7baa453263a8f0f8a60d1d0e33ec55b26afa9e40f6eb8e9d4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('80955709-3481-5122-95e3-1cd1ce58e90e', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_how_are_you_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1ff422f40c5ab71563360a8efe3348838be24f10624798834872dd04b969ea5e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aac802ce-ba84-5604-8419-61f12888c3c0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('80955709-3481-5122-95e3-1cd1ce58e90e', 1), '1ff422f40c5ab71563360a8efe3348838be24f10624798834872dd04b969ea5e',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/fa68b17a0398cfa7baa453263a8f0f8a60d1d0e33ec55b26afa9e40f6eb8e9d4.mp3', 1097, '2026-09-13 15:17:41.310678', '51e5477aa8a668b7291204c0100dc35748ab9da8041c9a835786533721515026', 'validated', '{"audio_key":"fa68b17a0398cfa7baa453263a8f0f8a60d1d0e33ec55b26afa9e40f6eb8e9d4","entity_key":"wf_how_are_you_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"51e5477aa8a668b7291204c0100dc35748ab9da8041c9a835786533721515026","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/fa68b17a0398cfa7baa453263a8f0f8a60d1d0e33ec55b26afa9e40f6eb8e9d4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_objects_04 -> audio/generated/tr-TR/lexical/fdc378fe49263d4ce7ad6b5e67e846b0ec21b4e007b93b364267bfa40eca4480.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('62257561-410b-58b7-88e3-3a9659c7f2da', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_objects_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4b2e1a4853b0cbbe88ef3a1da4ea5478598d32149fa5cea1be6be074a32020e8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f43cb2b1-a4af-5fdc-a594-a26189fd6527', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('62257561-410b-58b7-88e3-3a9659c7f2da', 1), '4b2e1a4853b0cbbe88ef3a1da4ea5478598d32149fa5cea1be6be074a32020e8',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/fdc378fe49263d4ce7ad6b5e67e846b0ec21b4e007b93b364267bfa40eca4480.mp3', 1071, '2026-09-13 15:17:41.655762', '168ec4636bdb793dda208b8a7052bb566014846afdbb1a8f0eac98925d6e7540', 'validated', '{"audio_key":"fdc378fe49263d4ce7ad6b5e67e846b0ec21b4e007b93b364267bfa40eca4480","entity_key":"lx_first_objects_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"168ec4636bdb793dda208b8a7052bb566014846afdbb1a8f0eac98925d6e7540","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/fdc378fe49263d4ce7ad6b5e67e846b0ec21b4e007b93b364267bfa40eca4480.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_objects_04 -> audio/generated/tr-TR/lexical/fdc378fe49263d4ce7ad6b5e67e846b0ec21b4e007b93b364267bfa40eca4480.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('eb5fa88c-f466-52f1-95db-d06d4cd39cd9', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_objects_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4b2e1a4853b0cbbe88ef3a1da4ea5478598d32149fa5cea1be6be074a32020e8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a37b8489-8f3e-5c9f-ba41-3e2b63b5d654', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('eb5fa88c-f466-52f1-95db-d06d4cd39cd9', 1), '4b2e1a4853b0cbbe88ef3a1da4ea5478598d32149fa5cea1be6be074a32020e8',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/fdc378fe49263d4ce7ad6b5e67e846b0ec21b4e007b93b364267bfa40eca4480.mp3', 1071, '2026-09-13 15:17:41.655762', '168ec4636bdb793dda208b8a7052bb566014846afdbb1a8f0eac98925d6e7540', 'validated', '{"audio_key":"fdc378fe49263d4ce7ad6b5e67e846b0ec21b4e007b93b364267bfa40eca4480","entity_key":"wf_first_objects_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"168ec4636bdb793dda208b8a7052bb566014846afdbb1a8f0eac98925d6e7540","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/fdc378fe49263d4ce7ad6b5e67e846b0ec21b4e007b93b364267bfa40eca4480.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_numbers_0_10_02 -> audio/generated/tr-TR/utterances/0041ae20ea41a4c8fd03302f4dd3d1a4d0b36bd09b9787f65372b231f44b1ca3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('563f4692-9e2d-5329-b3ed-7aa0532d4f21', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_numbers_0_10_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '62a75a5156c246bbf5860827593dd1c7a87857f6b7975151d8fcf695ef7f59a9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('243741e2-1104-5c60-89b0-b3f07f051517', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('563f4692-9e2d-5329-b3ed-7aa0532d4f21', 1), '62a75a5156c246bbf5860827593dd1c7a87857f6b7975151d8fcf695ef7f59a9',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/0041ae20ea41a4c8fd03302f4dd3d1a4d0b36bd09b9787f65372b231f44b1ca3.mp3', 1253, '2026-09-13 15:17:42.313847', '4b0df68bcdad3a05802f6cdb07393da43881cf4b238e961bcc6cb75b4e1296aa', 'validated', '{"audio_key":"0041ae20ea41a4c8fd03302f4dd3d1a4d0b36bd09b9787f65372b231f44b1ca3","entity_key":"u_numbers_0_10_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4b0df68bcdad3a05802f6cdb07393da43881cf4b238e961bcc6cb75b4e1296aa","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/0041ae20ea41a4c8fd03302f4dd3d1a4d0b36bd09b9787f65372b231f44b1ca3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_numbers_0_10_01_listen -> audio/generated/tr-TR/utterances/0041ae20ea41a4c8fd03302f4dd3d1a4d0b36bd09b9787f65372b231f44b1ca3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('1cdd1b9e-9acd-50de-b7f3-33cf3fffb71b', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_numbers_0_10_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '62a75a5156c246bbf5860827593dd1c7a87857f6b7975151d8fcf695ef7f59a9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ad4fefc2-3f78-52cb-ba1e-25823371f720', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('1cdd1b9e-9acd-50de-b7f3-33cf3fffb71b', 1), '62a75a5156c246bbf5860827593dd1c7a87857f6b7975151d8fcf695ef7f59a9',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/0041ae20ea41a4c8fd03302f4dd3d1a4d0b36bd09b9787f65372b231f44b1ca3.mp3', 1253, '2026-09-13 15:17:42.313847', '4b0df68bcdad3a05802f6cdb07393da43881cf4b238e961bcc6cb75b4e1296aa', 'validated', '{"audio_key":"0041ae20ea41a4c8fd03302f4dd3d1a4d0b36bd09b9787f65372b231f44b1ca3","entity_key":"e_numbers_0_10_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4b0df68bcdad3a05802f6cdb07393da43881cf4b238e961bcc6cb75b4e1296aa","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/0041ae20ea41a4c8fd03302f4dd3d1a4d0b36bd09b9787f65372b231f44b1ca3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_conversation_04 -> audio/generated/tr-TR/utterances/006a1f04a380427a576e8d85d27a59368ac5f99340a1e273876f92b3ce6cf525.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7b407e19-bdb1-59fe-9691-7499c33680d6', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_conversation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '93e1bf16df54225faec517498ab187a5f629e1429a2bdedfb60393061860bfed'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f028d736-27ca-58d9-90e2-0f61f6dd2b16', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7b407e19-bdb1-59fe-9691-7499c33680d6', 1), '93e1bf16df54225faec517498ab187a5f629e1429a2bdedfb60393061860bfed',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/006a1f04a380427a576e8d85d27a59368ac5f99340a1e273876f92b3ce6cf525.mp3', 1802, '2026-09-13 15:17:42.749602', '86aafbe2a0232e0319949cef098a9e856ec6e85d337cd2a216de42a6a8af7caf', 'validated', '{"audio_key":"006a1f04a380427a576e8d85d27a59368ac5f99340a1e273876f92b3ce6cf525","entity_key":"u_first_conversation_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"86aafbe2a0232e0319949cef098a9e856ec6e85d337cd2a216de42a6a8af7caf","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/006a1f04a380427a576e8d85d27a59368ac5f99340a1e273876f92b3ce6cf525.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_first_conversation_02_listen -> audio/generated/tr-TR/utterances/006a1f04a380427a576e8d85d27a59368ac5f99340a1e273876f92b3ce6cf525.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('80d9c74f-f1f7-5733-90fc-c54122eebd93', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_first_conversation_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '93e1bf16df54225faec517498ab187a5f629e1429a2bdedfb60393061860bfed'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bedf9b25-a967-5860-b193-de8ea974a8e2', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('80d9c74f-f1f7-5733-90fc-c54122eebd93', 1), '93e1bf16df54225faec517498ab187a5f629e1429a2bdedfb60393061860bfed',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/006a1f04a380427a576e8d85d27a59368ac5f99340a1e273876f92b3ce6cf525.mp3', 1802, '2026-09-13 15:17:42.749602', '86aafbe2a0232e0319949cef098a9e856ec6e85d337cd2a216de42a6a8af7caf', 'validated', '{"audio_key":"006a1f04a380427a576e8d85d27a59368ac5f99340a1e273876f92b3ce6cf525","entity_key":"e_first_conversation_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"86aafbe2a0232e0319949cef098a9e856ec6e85d337cd2a216de42a6a8af7caf","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/006a1f04a380427a576e8d85d27a59368ac5f99340a1e273876f92b3ce6cf525.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_alphabet_02 -> audio/generated/tr-TR/utterances/0074783bd37e35d48e3c90ef10d93f6615820e211ce8c386756a67b36e750a0c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('8ce49187-7cad-510f-86fa-5ee6af3509c2', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_alphabet_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6e7216d4e29482fcb3a5558396492be531d2f1f764d01aadfc6eea99ddf2b40f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b0d9450b-6600-50ba-a421-b2d8eace8998', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('8ce49187-7cad-510f-86fa-5ee6af3509c2', 1), '6e7216d4e29482fcb3a5558396492be531d2f1f764d01aadfc6eea99ddf2b40f',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/0074783bd37e35d48e3c90ef10d93f6615820e211ce8c386756a67b36e750a0c.mp3', 1253, '2026-09-13 15:17:43.342943', 'a239f42d56f8659b631f2add2029c6dabd17ebcba77d4c32e530c28b0d944e12', 'validated', '{"audio_key":"0074783bd37e35d48e3c90ef10d93f6615820e211ce8c386756a67b36e750a0c","entity_key":"u_alphabet_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a239f42d56f8659b631f2add2029c6dabd17ebcba77d4c32e530c28b0d944e12","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/0074783bd37e35d48e3c90ef10d93f6615820e211ce8c386756a67b36e750a0c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_alphabet_01_listen -> audio/generated/tr-TR/utterances/0074783bd37e35d48e3c90ef10d93f6615820e211ce8c386756a67b36e750a0c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('dab7d1d5-a2fe-5461-8278-e0d5ae16d88c', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_alphabet_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6e7216d4e29482fcb3a5558396492be531d2f1f764d01aadfc6eea99ddf2b40f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0b86b309-eec2-5ee2-b5f6-baedaad88cf2', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('dab7d1d5-a2fe-5461-8278-e0d5ae16d88c', 1), '6e7216d4e29482fcb3a5558396492be531d2f1f764d01aadfc6eea99ddf2b40f',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/0074783bd37e35d48e3c90ef10d93f6615820e211ce8c386756a67b36e750a0c.mp3', 1253, '2026-09-13 15:17:43.342943', 'a239f42d56f8659b631f2add2029c6dabd17ebcba77d4c32e530c28b0d944e12', 'validated', '{"audio_key":"0074783bd37e35d48e3c90ef10d93f6615820e211ce8c386756a67b36e750a0c","entity_key":"e_alphabet_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a239f42d56f8659b631f2add2029c6dabd17ebcba77d4c32e530c28b0d944e12","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/0074783bd37e35d48e3c90ef10d93f6615820e211ce8c386756a67b36e750a0c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_alphabet_01 -> audio/generated/tr-TR/utterances/079556e5fb5242fe4558454d3187cf98e4aee753f401f26ff3640ab99e54a4a0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('cd5db6ba-b96e-59fc-a439-ce068adac0d1', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_alphabet_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9bc85faed8246e18819a457bf2baed56e31018cc268bac1eeb2be45a508f9478'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e2452b31-37dd-5b87-8954-f2c73642d04c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('cd5db6ba-b96e-59fc-a439-ce068adac0d1', 1), '9bc85faed8246e18819a457bf2baed56e31018cc268bac1eeb2be45a508f9478',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/079556e5fb5242fe4558454d3187cf98e4aee753f401f26ff3640ab99e54a4a0.mp3', 1201, '2026-09-13 15:17:43.748417', 'cca3c0ff60367ccd682c9bdb505fb44fd51fa378690510480e96b629f9fe5e3c', 'validated', '{"audio_key":"079556e5fb5242fe4558454d3187cf98e4aee753f401f26ff3640ab99e54a4a0","entity_key":"u_alphabet_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cca3c0ff60367ccd682c9bdb505fb44fd51fa378690510480e96b629f9fe5e3c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/079556e5fb5242fe4558454d3187cf98e4aee753f401f26ff3640ab99e54a4a0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_tr_bridge_gun -> audio/generated/tr-TR/utterances/0ac21f06a0433f6b73eea1570d3a9def111d58092b7873cac7f65aebcbc85c8c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3b27a3f3-5ef3-5335-8bc8-56c36ec373d0', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_tr_bridge_gun')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c1fc8fefe11eab14a3631370ee2985d16766428ec66d021bcc504f4d57da6ac1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('12b423fc-44fb-5017-9343-b600c79a3b1d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3b27a3f3-5ef3-5335-8bc8-56c36ec373d0', 1), 'c1fc8fefe11eab14a3631370ee2985d16766428ec66d021bcc504f4d57da6ac1',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/0ac21f06a0433f6b73eea1570d3a9def111d58092b7873cac7f65aebcbc85c8c.mp3', 862, '2026-09-14 12:09:08.451884', '9e606924a6ec9477f705a79816260c61e7b47eda66fa7e549b521a2f91d3b862', 'validated', '{"audio_key":"0ac21f06a0433f6b73eea1570d3a9def111d58092b7873cac7f65aebcbc85c8c","entity_key":"u_tr_bridge_gun","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9e606924a6ec9477f705a79816260c61e7b47eda66fa7e549b521a2f91d3b862","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/0ac21f06a0433f6b73eea1570d3a9def111d58092b7873cac7f65aebcbc85c8c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_tr_bridge_vowels_softg:example:1 -> audio/generated/tr-TR/utterances/0efdbf2c08a240ad635cde723a6ded32d9abef408ed6e47f2101c8d5adb97db0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('ba186591-acf1-5902-9e6f-795ce807201e', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_tr_bridge_vowels_softg:example:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '171ce442416c7fa59da625cb98f05bd63a75a4811ef8860856acf157bfa63e63'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('419575e3-f079-53a7-a5a7-af7ab773a3c1', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('ba186591-acf1-5902-9e6f-795ce807201e', 1), '171ce442416c7fa59da625cb98f05bd63a75a4811ef8860856acf157bfa63e63',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/0efdbf2c08a240ad635cde723a6ded32d9abef408ed6e47f2101c8d5adb97db0.mp3', 1384, '2026-09-14 12:09:08.746748', '73f9e3bfcc9cc10c276ed4acf918292cdf30ae862b4c014a4837ba378e799caa', 'validated', '{"audio_key":"0efdbf2c08a240ad635cde723a6ded32d9abef408ed6e47f2101c8d5adb97db0","entity_key":"g_tr_bridge_vowels_softg:example:1","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"73f9e3bfcc9cc10c276ed4acf918292cdf30ae862b4c014a4837ba378e799caa","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/0efdbf2c08a240ad635cde723a6ded32d9abef408ed6e47f2101c8d5adb97db0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_tr_pre_hear_soft_g -> audio/generated/tr-TR/utterances/119442db6ce710f3f0b7cece602f6718e567d6416836965ee4a1378e15fd288f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('6b80d9cd-2bee-52b2-8c82-e3eed2a69eaa', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_tr_pre_hear_soft_g')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9ed5bdda38df4f7391b86a710c19058637e910c8d44da7f7fd1e23a0bfc6f914'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('025d1ce3-f13a-526d-958e-39ca08c05979', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('6b80d9cd-2bee-52b2-8c82-e3eed2a69eaa', 1), '9ed5bdda38df4f7391b86a710c19058637e910c8d44da7f7fd1e23a0bfc6f914',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/119442db6ce710f3f0b7cece602f6718e567d6416836965ee4a1378e15fd288f.mp3', 1280, '2026-09-14 12:09:09.490155', '70f29814a6256f1a2ee3ab894f8da493030a7bd3d68bc49f34615fa5d3f9c31b', 'validated', '{"audio_key":"119442db6ce710f3f0b7cece602f6718e567d6416836965ee4a1378e15fd288f","entity_key":"ex_tr_pre_hear_soft_g","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"70f29814a6256f1a2ee3ab894f8da493030a7bd3d68bc49f34615fa5d3f9c31b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/119442db6ce710f3f0b7cece602f6718e567d6416836965ee4a1378e15fd288f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_conversation_01 -> audio/generated/tr-TR/utterances/15ca2d5358e6bb64ae1645c45f1f8e2c724b2413d8b6f6e790d3cef046416e8c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('1511e654-6b9c-5a26-a557-f153b801efa5', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_conversation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '06db9d3a2e831ed28a4b865d31707852bc66c9f6e6feed5808c0b572ecaaf208'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6cb3cc9e-be01-5421-b0ca-25120d347ddc', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('1511e654-6b9c-5a26-a557-f153b801efa5', 1), '06db9d3a2e831ed28a4b865d31707852bc66c9f6e6feed5808c0b572ecaaf208',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/15ca2d5358e6bb64ae1645c45f1f8e2c724b2413d8b6f6e790d3cef046416e8c.mp3', 1802, '2026-09-13 15:17:44.414025', 'b1de5ab9c292321828d42f027a50b9bfe40210385ab06c33931707533cfc5e45', 'validated', '{"audio_key":"15ca2d5358e6bb64ae1645c45f1f8e2c724b2413d8b6f6e790d3cef046416e8c","entity_key":"u_first_conversation_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b1de5ab9c292321828d42f027a50b9bfe40210385ab06c33931707533cfc5e45","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/15ca2d5358e6bb64ae1645c45f1f8e2c724b2413d8b6f6e790d3cef046416e8c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_conversation_02 -> audio/generated/tr-TR/utterances/1dfa56f6effc3d88394a5cdf02d8f36a69756a18e049fb4125f0b7f41f62b8e8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9e57e4de-8e63-5dea-8531-758d2de9c811', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_conversation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '613b6a88ef727605d7e6e3bde48b825c4bbc8f7d193cd801b15226d6c7a233a3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2c981bd5-40f0-5fed-9364-4f389760c6a9', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9e57e4de-8e63-5dea-8531-758d2de9c811', 1), '613b6a88ef727605d7e6e3bde48b825c4bbc8f7d193cd801b15226d6c7a233a3',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/1dfa56f6effc3d88394a5cdf02d8f36a69756a18e049fb4125f0b7f41f62b8e8.mp3', 1567, '2026-09-13 15:17:44.998354', 'e78b43e993ece8d9582b0c254af96b04f676a12b39eccc4d2075c6061e932e8c', 'validated', '{"audio_key":"1dfa56f6effc3d88394a5cdf02d8f36a69756a18e049fb4125f0b7f41f62b8e8","entity_key":"u_first_conversation_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e78b43e993ece8d9582b0c254af96b04f676a12b39eccc4d2075c6061e932e8c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/1dfa56f6effc3d88394a5cdf02d8f36a69756a18e049fb4125f0b7f41f62b8e8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_first_conversation_01_listen -> audio/generated/tr-TR/utterances/1dfa56f6effc3d88394a5cdf02d8f36a69756a18e049fb4125f0b7f41f62b8e8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('572b382f-f206-5b93-b77d-b84d21b98600', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_first_conversation_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '613b6a88ef727605d7e6e3bde48b825c4bbc8f7d193cd801b15226d6c7a233a3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('32476ac7-bd33-56b7-a954-48b23f5f6ed3', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('572b382f-f206-5b93-b77d-b84d21b98600', 1), '613b6a88ef727605d7e6e3bde48b825c4bbc8f7d193cd801b15226d6c7a233a3',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/1dfa56f6effc3d88394a5cdf02d8f36a69756a18e049fb4125f0b7f41f62b8e8.mp3', 1567, '2026-09-13 15:17:44.998354', 'e78b43e993ece8d9582b0c254af96b04f676a12b39eccc4d2075c6061e932e8c', 'validated', '{"audio_key":"1dfa56f6effc3d88394a5cdf02d8f36a69756a18e049fb4125f0b7f41f62b8e8","entity_key":"e_first_conversation_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e78b43e993ece8d9582b0c254af96b04f676a12b39eccc4d2075c6061e932e8c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/1dfa56f6effc3d88394a5cdf02d8f36a69756a18e049fb4125f0b7f41f62b8e8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_alphabet_03 -> audio/generated/tr-TR/utterances/1ef8a86d55fa0b9e4a0363a980c70c6430fdf408a17b83baeb64fcee3f3f261b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('5c745bd3-1299-5f80-97c8-f69c396d317c', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_alphabet_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '863b1898afb9e4fea57fdbfe51449e7a5ce5cfa05770b6295b4412df1e503786'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8ba2cae4-c709-5816-82ee-881eb10e0854', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('5c745bd3-1299-5f80-97c8-f69c396d317c', 1), '863b1898afb9e4fea57fdbfe51449e7a5ce5cfa05770b6295b4412df1e503786',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/1ef8a86d55fa0b9e4a0363a980c70c6430fdf408a17b83baeb64fcee3f3f261b.mp3', 1515, '2026-09-13 15:17:45.475762', '3666caa347977325753fa5ca79ebb016def1bc71a0932a042ed2a4b415df7893', 'validated', '{"audio_key":"1ef8a86d55fa0b9e4a0363a980c70c6430fdf408a17b83baeb64fcee3f3f261b","entity_key":"u_alphabet_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3666caa347977325753fa5ca79ebb016def1bc71a0932a042ed2a4b415df7893","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/1ef8a86d55fa0b9e4a0363a980c70c6430fdf408a17b83baeb64fcee3f3f261b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_tr_pre_i_pair:example:1 -> audio/generated/tr-TR/utterances/20135eff10e546a58a83654f34fad51569ac86fb4f7662ad4884965d6e5c4d43.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('49b31965-15c6-5e14-906f-7373c00dd91e', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_tr_pre_i_pair:example:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6b58fe8936f72ae5a9597c6e82c4c3907ac8453c889c7849088a9a2edd1aceda'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('84854918-bd1d-5c64-b989-c49ac8b82aee', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('49b31965-15c6-5e14-906f-7373c00dd91e', 1), '6b58fe8936f72ae5a9597c6e82c4c3907ac8453c889c7849088a9a2edd1aceda',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/20135eff10e546a58a83654f34fad51569ac86fb4f7662ad4884965d6e5c4d43.mp3', 1201, '2026-09-14 12:09:09.854562', '65d6fd619c443c149abb4ea360a992a9410c9be8a73da7e0d0e945bf2f6f6840', 'validated', '{"audio_key":"20135eff10e546a58a83654f34fad51569ac86fb4f7662ad4884965d6e5c4d43","entity_key":"g_tr_pre_i_pair:example:1","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"65d6fd619c443c149abb4ea360a992a9410c9be8a73da7e0d0e945bf2f6f6840","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/20135eff10e546a58a83654f34fad51569ac86fb4f7662ad4884965d6e5c4d43.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_tr_ready_listen -> audio/generated/tr-TR/utterances/2282a037d3d6f80933c4e2d79e5913546de5209ac1e364f6503f208825898f17.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('0a4ce773-da00-5df0-ac16-22f39170a672', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_tr_ready_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7bf6a1276e562ecc9895b6e25277a6a421cbe21b4941a2d3a353d96fd440c236'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d6e6804f-d619-5719-b626-604b2ab80a67', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('0a4ce773-da00-5df0-ac16-22f39170a672', 1), '7bf6a1276e562ecc9895b6e25277a6a421cbe21b4941a2d3a353d96fd440c236',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/2282a037d3d6f80933c4e2d79e5913546de5209ac1e364f6503f208825898f17.mp3', 862, '2026-09-14 12:09:10.545523', 'd76c6cfcb6b96ac736447dcd10d7d1ab3d6bb0da6cc8f7d1b98e327dfce80884', 'validated', '{"audio_key":"2282a037d3d6f80933c4e2d79e5913546de5209ac1e364f6503f208825898f17","entity_key":"ex_tr_ready_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d76c6cfcb6b96ac736447dcd10d7d1ab3d6bb0da6cc8f7d1b98e327dfce80884","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/2282a037d3d6f80933c4e2d79e5913546de5209ac1e364f6503f208825898f17.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_tr_bridge_kiz -> audio/generated/tr-TR/utterances/2282a037d3d6f80933c4e2d79e5913546de5209ac1e364f6503f208825898f17.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('de4e58a7-e0dc-5fff-a60b-a0d629baf591', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_tr_bridge_kiz')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7bf6a1276e562ecc9895b6e25277a6a421cbe21b4941a2d3a353d96fd440c236'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8af45d91-ade5-5db8-ab81-33f633822be0', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('de4e58a7-e0dc-5fff-a60b-a0d629baf591', 1), '7bf6a1276e562ecc9895b6e25277a6a421cbe21b4941a2d3a353d96fd440c236',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/2282a037d3d6f80933c4e2d79e5913546de5209ac1e364f6503f208825898f17.mp3', 862, '2026-09-14 12:09:10.545523', 'd76c6cfcb6b96ac736447dcd10d7d1ab3d6bb0da6cc8f7d1b98e327dfce80884', 'validated', '{"audio_key":"2282a037d3d6f80933c4e2d79e5913546de5209ac1e364f6503f208825898f17","entity_key":"u_tr_bridge_kiz","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d76c6cfcb6b96ac736447dcd10d7d1ab3d6bb0da6cc8f7d1b98e327dfce80884","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/2282a037d3d6f80933c4e2d79e5913546de5209ac1e364f6503f208825898f17.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_tr_bridge_hear_kiz -> audio/generated/tr-TR/utterances/2282a037d3d6f80933c4e2d79e5913546de5209ac1e364f6503f208825898f17.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('7a9fcc71-7dd3-5591-a051-2a771a1b59d1', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_tr_bridge_hear_kiz')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7bf6a1276e562ecc9895b6e25277a6a421cbe21b4941a2d3a353d96fd440c236'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('00ef779c-18dd-59b3-9103-9dcb496366af', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('7a9fcc71-7dd3-5591-a051-2a771a1b59d1', 1), '7bf6a1276e562ecc9895b6e25277a6a421cbe21b4941a2d3a353d96fd440c236',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/2282a037d3d6f80933c4e2d79e5913546de5209ac1e364f6503f208825898f17.mp3', 862, '2026-09-14 12:09:10.545523', 'd76c6cfcb6b96ac736447dcd10d7d1ab3d6bb0da6cc8f7d1b98e327dfce80884', 'validated', '{"audio_key":"2282a037d3d6f80933c4e2d79e5913546de5209ac1e364f6503f208825898f17","entity_key":"ex_tr_bridge_hear_kiz","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d76c6cfcb6b96ac736447dcd10d7d1ab3d6bb0da6cc8f7d1b98e327dfce80884","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/2282a037d3d6f80933c4e2d79e5913546de5209ac1e364f6503f208825898f17.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_objects_02 -> audio/generated/tr-TR/utterances/24df7ff641b2015e354f624301b310fbdb6c21089566176e4e59c581ac5741e6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('889f4ac0-65a8-56d8-a98e-f9c4a08d92e8', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_objects_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '095415ff5262da04098ef75596bd114940a6aa4ecf5ddcc9434f0d6421ffcaed'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('33b41381-9fc9-5120-aace-de2a27688ce4', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('889f4ac0-65a8-56d8-a98e-f9c4a08d92e8', 1), '095415ff5262da04098ef75596bd114940a6aa4ecf5ddcc9434f0d6421ffcaed',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/24df7ff641b2015e354f624301b310fbdb6c21089566176e4e59c581ac5741e6.mp3', 1201, '2026-09-13 15:17:46.041573', 'a85c7da88ca92309a8a214c7eb5b48c9cab57aa67f02143eaeb6c4598bee9ca9', 'validated', '{"audio_key":"24df7ff641b2015e354f624301b310fbdb6c21089566176e4e59c581ac5741e6","entity_key":"u_first_objects_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a85c7da88ca92309a8a214c7eb5b48c9cab57aa67f02143eaeb6c4598bee9ca9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/24df7ff641b2015e354f624301b310fbdb6c21089566176e4e59c581ac5741e6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_first_objects_01_listen -> audio/generated/tr-TR/utterances/24df7ff641b2015e354f624301b310fbdb6c21089566176e4e59c581ac5741e6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('4aa33917-ee72-51cd-a394-5e3be92f07f4', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_first_objects_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '095415ff5262da04098ef75596bd114940a6aa4ecf5ddcc9434f0d6421ffcaed'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('33769bc2-ca64-5580-9d6e-62720abedbce', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('4aa33917-ee72-51cd-a394-5e3be92f07f4', 1), '095415ff5262da04098ef75596bd114940a6aa4ecf5ddcc9434f0d6421ffcaed',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/24df7ff641b2015e354f624301b310fbdb6c21089566176e4e59c581ac5741e6.mp3', 1201, '2026-09-13 15:17:46.041573', 'a85c7da88ca92309a8a214c7eb5b48c9cab57aa67f02143eaeb6c4598bee9ca9', 'validated', '{"audio_key":"24df7ff641b2015e354f624301b310fbdb6c21089566176e4e59c581ac5741e6","entity_key":"e_first_objects_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a85c7da88ca92309a8a214c7eb5b48c9cab57aa67f02143eaeb6c4598bee9ca9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/24df7ff641b2015e354f624301b310fbdb6c21089566176e4e59c581ac5741e6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_survival_words_02 -> audio/generated/tr-TR/utterances/2d0b58d1dbaac368265de232c32ee05801c4fd20443f80676fe22a17a5ffb6ba.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('8a60f8e7-7964-5722-a429-0d816fa75279', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_survival_words_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '32cfe82e39e1ef40d3f6a6b547e984c29d5c397d361b4dc1098236800d0b8261'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6ca3c9f9-ea5a-535e-94e7-2674ddc2e2ac', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('8a60f8e7-7964-5722-a429-0d816fa75279', 1), '32cfe82e39e1ef40d3f6a6b547e984c29d5c397d361b4dc1098236800d0b8261',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/2d0b58d1dbaac368265de232c32ee05801c4fd20443f80676fe22a17a5ffb6ba.mp3', 1619, '2026-09-13 15:17:46.547803', '562be47f5b2880c00005916460bf96c8bac336861fb0f5563d57042f81016aa0', 'validated', '{"audio_key":"2d0b58d1dbaac368265de232c32ee05801c4fd20443f80676fe22a17a5ffb6ba","entity_key":"u_survival_words_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"562be47f5b2880c00005916460bf96c8bac336861fb0f5563d57042f81016aa0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/2d0b58d1dbaac368265de232c32ee05801c4fd20443f80676fe22a17a5ffb6ba.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_survival_words_01_listen -> audio/generated/tr-TR/utterances/2d0b58d1dbaac368265de232c32ee05801c4fd20443f80676fe22a17a5ffb6ba.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('b95135ff-39c9-5eaf-a068-627052dbf7e9', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_survival_words_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '32cfe82e39e1ef40d3f6a6b547e984c29d5c397d361b4dc1098236800d0b8261'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('70b31745-f95b-534a-857d-02713afa2a39', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('b95135ff-39c9-5eaf-a068-627052dbf7e9', 1), '32cfe82e39e1ef40d3f6a6b547e984c29d5c397d361b4dc1098236800d0b8261',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/2d0b58d1dbaac368265de232c32ee05801c4fd20443f80676fe22a17a5ffb6ba.mp3', 1619, '2026-09-13 15:17:46.547803', '562be47f5b2880c00005916460bf96c8bac336861fb0f5563d57042f81016aa0', 'validated', '{"audio_key":"2d0b58d1dbaac368265de232c32ee05801c4fd20443f80676fe22a17a5ffb6ba","entity_key":"e_survival_words_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"562be47f5b2880c00005916460bf96c8bac336861fb0f5563d57042f81016aa0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/2d0b58d1dbaac368265de232c32ee05801c4fd20443f80676fe22a17a5ffb6ba.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_tr_meaning_slow -> audio/generated/tr-TR/utterances/345ee485926eca922085a8f5d025c4bf0742a52512a3b8f77b8f13d075ca73d1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('71562b67-b723-5346-b119-3f077638497f', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_tr_meaning_slow')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4454e05004f864387ed03185c840113f381b7a7f79ad89e3ed2d3f1f6a487d79'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8f337ef4-fc27-53af-9933-5726c5133bd5', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('71562b67-b723-5346-b119-3f077638497f', 1), '4454e05004f864387ed03185c840113f381b7a7f79ad89e3ed2d3f1f6a487d79',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/345ee485926eca922085a8f5d025c4bf0742a52512a3b8f77b8f13d075ca73d1.mp3', 1697, '2026-09-14 12:09:10.949143', '11cea619313f93d1ee787477b459e1cea742f9cb5572ac5839d282203b745d0f', 'validated', '{"audio_key":"345ee485926eca922085a8f5d025c4bf0742a52512a3b8f77b8f13d075ca73d1","entity_key":"u_tr_meaning_slow","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"11cea619313f93d1ee787477b459e1cea742f9cb5572ac5839d282203b745d0f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/345ee485926eca922085a8f5d025c4bf0742a52512a3b8f77b8f13d075ca73d1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_tr_meaning_repair:example:3 -> audio/generated/tr-TR/utterances/345ee485926eca922085a8f5d025c4bf0742a52512a3b8f77b8f13d075ca73d1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('6cb8aebb-7910-53a2-a8d4-44116276cd27', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_tr_meaning_repair:example:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4454e05004f864387ed03185c840113f381b7a7f79ad89e3ed2d3f1f6a487d79'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b94ef629-a566-5aa5-8d83-06d166ff4b5d', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('6cb8aebb-7910-53a2-a8d4-44116276cd27', 1), '4454e05004f864387ed03185c840113f381b7a7f79ad89e3ed2d3f1f6a487d79',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/345ee485926eca922085a8f5d025c4bf0742a52512a3b8f77b8f13d075ca73d1.mp3', 1697, '2026-09-14 12:09:10.949143', '11cea619313f93d1ee787477b459e1cea742f9cb5572ac5839d282203b745d0f', 'validated', '{"audio_key":"345ee485926eca922085a8f5d025c4bf0742a52512a3b8f77b8f13d075ca73d1","entity_key":"g_tr_meaning_repair:example:3","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"11cea619313f93d1ee787477b459e1cea742f9cb5572ac5839d282203b745d0f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/345ee485926eca922085a8f5d025c4bf0742a52512a3b8f77b8f13d075ca73d1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_alphabet_04 -> audio/generated/tr-TR/utterances/3774ff5304499d7ad9435bb0e4584e874b2bc4d94e72f880b9c9d31b0fea05ff.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7d16e905-abb9-514c-a112-a9fdecadcc5c', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_alphabet_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a8f29ca24a61c7ae3905ae936b2fdbaede925cb6689cd017a20a38a26dd3911c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6c7c8219-774c-587c-89b9-23d4e7c4394f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7d16e905-abb9-514c-a112-a9fdecadcc5c', 1), 'a8f29ca24a61c7ae3905ae936b2fdbaede925cb6689cd017a20a38a26dd3911c',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/3774ff5304499d7ad9435bb0e4584e874b2bc4d94e72f880b9c9d31b0fea05ff.mp3', 1515, '2026-09-13 15:17:47.108260', '365b800e8c22192babaa272084691a499a4cfb6947e08938c4a572fc8794c651', 'validated', '{"audio_key":"3774ff5304499d7ad9435bb0e4584e874b2bc4d94e72f880b9c9d31b0fea05ff","entity_key":"u_alphabet_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"365b800e8c22192babaa272084691a499a4cfb6947e08938c4a572fc8794c651","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/3774ff5304499d7ad9435bb0e4584e874b2bc4d94e72f880b9c9d31b0fea05ff.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_alphabet_02_listen -> audio/generated/tr-TR/utterances/3774ff5304499d7ad9435bb0e4584e874b2bc4d94e72f880b9c9d31b0fea05ff.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('49f1b7f6-e505-57f0-8978-91907930d973', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_alphabet_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a8f29ca24a61c7ae3905ae936b2fdbaede925cb6689cd017a20a38a26dd3911c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7cf20fa9-599b-5c99-adbf-40fb35c0306a', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('49f1b7f6-e505-57f0-8978-91907930d973', 1), 'a8f29ca24a61c7ae3905ae936b2fdbaede925cb6689cd017a20a38a26dd3911c',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/3774ff5304499d7ad9435bb0e4584e874b2bc4d94e72f880b9c9d31b0fea05ff.mp3', 1515, '2026-09-13 15:17:47.108260', '365b800e8c22192babaa272084691a499a4cfb6947e08938c4a572fc8794c651', 'validated', '{"audio_key":"3774ff5304499d7ad9435bb0e4584e874b2bc4d94e72f880b9c9d31b0fea05ff","entity_key":"e_alphabet_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"365b800e8c22192babaa272084691a499a4cfb6947e08938c4a572fc8794c651","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/3774ff5304499d7ad9435bb0e4584e874b2bc4d94e72f880b9c9d31b0fea05ff.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_tr_bridge_seker -> audio/generated/tr-TR/utterances/39b776b2af332f5fe9c426d29b8e25ea9acad454650a1cddab31822a257d46d8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('dfac74a1-5380-5eeb-b53f-01586af75e17', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_tr_bridge_seker')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4df27cc2efa223d850f1449dfeeea6ab384c138c35f22dbef279248cf9ef236a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e3237ca3-e845-54f3-b309-a9c67a7e6b55', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('dfac74a1-5380-5eeb-b53f-01586af75e17', 1), '4df27cc2efa223d850f1449dfeeea6ab384c138c35f22dbef279248cf9ef236a',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/39b776b2af332f5fe9c426d29b8e25ea9acad454650a1cddab31822a257d46d8.mp3', 1071, '2026-09-14 12:09:11.522568', 'cc2e9014afea85bd3b217e46394a379bf659a5de7746ba484fc440bfb1ad879f', 'validated', '{"audio_key":"39b776b2af332f5fe9c426d29b8e25ea9acad454650a1cddab31822a257d46d8","entity_key":"u_tr_bridge_seker","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cc2e9014afea85bd3b217e46394a379bf659a5de7746ba484fc440bfb1ad879f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/39b776b2af332f5fe9c426d29b8e25ea9acad454650a1cddab31822a257d46d8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_how_are_you_01 -> audio/generated/tr-TR/utterances/41b86b7af8320ca8e337b5ad1f936362afcbdb0d47b584c5184cbf73ee0c2dc3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('6167155e-f6d3-5f41-8830-fe3711a0cca0', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_how_are_you_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c61da876fe80998fd8842a507639fac020ec02fa999d05536b4584f1037297aa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4a51dd41-8361-522f-a54c-74705769b2a1', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('6167155e-f6d3-5f41-8830-fe3711a0cca0', 1), 'c61da876fe80998fd8842a507639fac020ec02fa999d05536b4584f1037297aa',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/41b86b7af8320ca8e337b5ad1f936362afcbdb0d47b584c5184cbf73ee0c2dc3.mp3', 1149, '2026-09-13 15:17:47.551135', 'f29d94cc84f881c703538f2bc15e03c8cbc7616b904218474bcbfa939a800ccc', 'validated', '{"audio_key":"41b86b7af8320ca8e337b5ad1f936362afcbdb0d47b584c5184cbf73ee0c2dc3","entity_key":"u_how_are_you_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f29d94cc84f881c703538f2bc15e03c8cbc7616b904218474bcbfa939a800ccc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/41b86b7af8320ca8e337b5ad1f936362afcbdb0d47b584c5184cbf73ee0c2dc3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_conversation_03 -> audio/generated/tr-TR/utterances/437a261663d804043d5a5e0de853ad232aa27fa78b0763a905b16e0138893ced.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c2b08492-af6e-5d11-b7db-6d33787565e9', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_conversation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '274f6862a7f45de4edfb83b55c7260591b9bacd4aee27b8233201410c7c12be9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('95bed78d-758c-594b-9b1d-a4fcbcd4e30b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c2b08492-af6e-5d11-b7db-6d33787565e9', 1), '274f6862a7f45de4edfb83b55c7260591b9bacd4aee27b8233201410c7c12be9',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/437a261663d804043d5a5e0de853ad232aa27fa78b0763a905b16e0138893ced.mp3', 1332, '2026-09-13 15:17:48.109333', '204769325e9f3a6a54dba6bd14ad6ed40509729088cae7985d3914188ed74412', 'validated', '{"audio_key":"437a261663d804043d5a5e0de853ad232aa27fa78b0763a905b16e0138893ced","entity_key":"u_first_conversation_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"204769325e9f3a6a54dba6bd14ad6ed40509729088cae7985d3914188ed74412","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/437a261663d804043d5a5e0de853ad232aa27fa78b0763a905b16e0138893ced.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_my_name_03 -> audio/generated/tr-TR/utterances/437a261663d804043d5a5e0de853ad232aa27fa78b0763a905b16e0138893ced.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9baebda7-c5ba-5747-9bd1-91cd4fb1276f', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_my_name_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '274f6862a7f45de4edfb83b55c7260591b9bacd4aee27b8233201410c7c12be9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bfd40aa9-5475-5590-b28c-dfbfcf45c8ab', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9baebda7-c5ba-5747-9bd1-91cd4fb1276f', 1), '274f6862a7f45de4edfb83b55c7260591b9bacd4aee27b8233201410c7c12be9',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/437a261663d804043d5a5e0de853ad232aa27fa78b0763a905b16e0138893ced.mp3', 1332, '2026-09-13 15:17:48.109333', '204769325e9f3a6a54dba6bd14ad6ed40509729088cae7985d3914188ed74412', 'validated', '{"audio_key":"437a261663d804043d5a5e0de853ad232aa27fa78b0763a905b16e0138893ced","entity_key":"u_my_name_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"204769325e9f3a6a54dba6bd14ad6ed40509729088cae7985d3914188ed74412","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/437a261663d804043d5a5e0de853ad232aa27fa78b0763a905b16e0138893ced.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_greetings_03 -> audio/generated/tr-TR/utterances/4878942f1d1c0c991e747b734b5a1efcca8db9581bd75ad6f71eb69b14f89ba6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7d89c7f9-6a59-5d47-a063-1a129ed6d9fd', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_greetings_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0c959ad7ff5979f8b4fe36bf0f837ce16377cb79e4cc32b3bd41aa407ddae8a9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b142720c-d15a-52de-b7cf-7ac6f3241acf', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7d89c7f9-6a59-5d47-a063-1a129ed6d9fd', 1), '0c959ad7ff5979f8b4fe36bf0f837ce16377cb79e4cc32b3bd41aa407ddae8a9',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/4878942f1d1c0c991e747b734b5a1efcca8db9581bd75ad6f71eb69b14f89ba6.mp3', 1253, '2026-09-13 15:17:48.692375', 'a6b8240fbd50a03e1418d11bc3cfb30db4e48cfa49047c0ab987e6bd06903910', 'validated', '{"audio_key":"4878942f1d1c0c991e747b734b5a1efcca8db9581bd75ad6f71eb69b14f89ba6","entity_key":"u_first_greetings_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a6b8240fbd50a03e1418d11bc3cfb30db4e48cfa49047c0ab987e6bd06903910","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/4878942f1d1c0c991e747b734b5a1efcca8db9581bd75ad6f71eb69b14f89ba6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_tr_bridge_su -> audio/generated/tr-TR/utterances/49b920475f0f8099b361d265f70b6df9129f2c8ac8b41c5a787350b99460edad.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('55523f35-5c66-5122-b754-dd8e1b57d1eb', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_tr_bridge_su')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0a64ce10853f25cb3dc3f7d498f62d72b406be37ba8caf5aa7671414d9696049'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c54d9be7-9358-513b-967e-cda1b8b03197', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('55523f35-5c66-5122-b754-dd8e1b57d1eb', 1), '0a64ce10853f25cb3dc3f7d498f62d72b406be37ba8caf5aa7671414d9696049',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/49b920475f0f8099b361d265f70b6df9129f2c8ac8b41c5a787350b99460edad.mp3', 835, '2026-09-14 12:09:11.955281', 'f58947b9f2770e80439384bcce299ce45bb1c6f4f06f945a3d05a783e9170eb9', 'validated', '{"audio_key":"49b920475f0f8099b361d265f70b6df9129f2c8ac8b41c5a787350b99460edad","entity_key":"u_tr_bridge_su","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f58947b9f2770e80439384bcce299ce45bb1c6f4f06f945a3d05a783e9170eb9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/49b920475f0f8099b361d265f70b6df9129f2c8ac8b41c5a787350b99460edad.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_my_name_02 -> audio/generated/tr-TR/utterances/4a3d4fa7c70db3c0f526a107c3adf06f606b7c13c8083f006bc09900a5a8556a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('33df1fa4-0077-5439-a1a3-6249f016ce52', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_my_name_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a26ccdbc668c74e594cedcda69dfeb18a016b528ffe1415fd920ef99b81ef29e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('44c90b09-65ad-52ef-a409-c7094a8f9f42', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('33df1fa4-0077-5439-a1a3-6249f016ce52', 1), 'a26ccdbc668c74e594cedcda69dfeb18a016b528ffe1415fd920ef99b81ef29e',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/4a3d4fa7c70db3c0f526a107c3adf06f606b7c13c8083f006bc09900a5a8556a.mp3', 1384, '2026-09-13 15:17:49.130405', '18430e2a47a26d37165e398568d2e46b0c26e0d2ea670d4618bfb033788a7b08', 'validated', '{"audio_key":"4a3d4fa7c70db3c0f526a107c3adf06f606b7c13c8083f006bc09900a5a8556a","entity_key":"u_my_name_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"18430e2a47a26d37165e398568d2e46b0c26e0d2ea670d4618bfb033788a7b08","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/4a3d4fa7c70db3c0f526a107c3adf06f606b7c13c8083f006bc09900a5a8556a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_my_name_01_listen -> audio/generated/tr-TR/utterances/4a3d4fa7c70db3c0f526a107c3adf06f606b7c13c8083f006bc09900a5a8556a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('0bf44916-383e-5918-abd9-949834a46f90', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_my_name_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a26ccdbc668c74e594cedcda69dfeb18a016b528ffe1415fd920ef99b81ef29e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f55d320d-a503-551f-9946-0615a16a0ef9', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('0bf44916-383e-5918-abd9-949834a46f90', 1), 'a26ccdbc668c74e594cedcda69dfeb18a016b528ffe1415fd920ef99b81ef29e',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/4a3d4fa7c70db3c0f526a107c3adf06f606b7c13c8083f006bc09900a5a8556a.mp3', 1384, '2026-09-13 15:17:49.130405', '18430e2a47a26d37165e398568d2e46b0c26e0d2ea670d4618bfb033788a7b08', 'validated', '{"audio_key":"4a3d4fa7c70db3c0f526a107c3adf06f606b7c13c8083f006bc09900a5a8556a","entity_key":"e_my_name_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"18430e2a47a26d37165e398568d2e46b0c26e0d2ea670d4618bfb033788a7b08","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/4a3d4fa7c70db3c0f526a107c3adf06f606b7c13c8083f006bc09900a5a8556a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_sounds_04 -> audio/generated/tr-TR/utterances/4cc7b88a8ac8d0048f56c93087b5fe7a6884d1b65458e07c9adfaece9d154f55.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('33924387-7a35-5f12-b237-2acb533a10ca', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_sounds_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dd207868964bd56f3a28076471c93707f5546312bcc364b08899220de56005a9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('60330a4b-dd17-5a06-aa6f-c47cb2e77182', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('33924387-7a35-5f12-b237-2acb533a10ca', 1), 'dd207868964bd56f3a28076471c93707f5546312bcc364b08899220de56005a9',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/4cc7b88a8ac8d0048f56c93087b5fe7a6884d1b65458e07c9adfaece9d154f55.mp3', 1149, '2026-09-13 15:17:49.700696', '545f9137c6c929cf4b6703da73c7ec290f1a6c13e03a172fb4cdb2bc3cf7b1d1', 'validated', '{"audio_key":"4cc7b88a8ac8d0048f56c93087b5fe7a6884d1b65458e07c9adfaece9d154f55","entity_key":"u_first_sounds_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"545f9137c6c929cf4b6703da73c7ec290f1a6c13e03a172fb4cdb2bc3cf7b1d1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/4cc7b88a8ac8d0048f56c93087b5fe7a6884d1b65458e07c9adfaece9d154f55.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_first_sounds_02_listen -> audio/generated/tr-TR/utterances/4cc7b88a8ac8d0048f56c93087b5fe7a6884d1b65458e07c9adfaece9d154f55.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('195e65ae-6f5b-5d31-b399-c36fa2345b07', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_first_sounds_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dd207868964bd56f3a28076471c93707f5546312bcc364b08899220de56005a9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1c71f20c-4160-5016-a4ab-f0c964b48557', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('195e65ae-6f5b-5d31-b399-c36fa2345b07', 1), 'dd207868964bd56f3a28076471c93707f5546312bcc364b08899220de56005a9',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/4cc7b88a8ac8d0048f56c93087b5fe7a6884d1b65458e07c9adfaece9d154f55.mp3', 1149, '2026-09-13 15:17:49.700696', '545f9137c6c929cf4b6703da73c7ec290f1a6c13e03a172fb4cdb2bc3cf7b1d1', 'validated', '{"audio_key":"4cc7b88a8ac8d0048f56c93087b5fe7a6884d1b65458e07c9adfaece9d154f55","entity_key":"e_first_sounds_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"545f9137c6c929cf4b6703da73c7ec290f1a6c13e03a172fb4cdb2bc3cf7b1d1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/4cc7b88a8ac8d0048f56c93087b5fe7a6884d1b65458e07c9adfaece9d154f55.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_polite_words_03 -> audio/generated/tr-TR/utterances/5782330242fdb8f9b6be8ac078470e041d15471a16c93cd2b692aaba482e485c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3f5f7ab4-c64d-5daf-9fde-dabc1370283d', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_polite_words_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5cdfd57d7d37796fc7f0a4fa810fbc8715b98360c0fe2ca9cdd17a6181fbc9ef'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7944b439-8e96-5164-9175-291110ce0418', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3f5f7ab4-c64d-5daf-9fde-dabc1370283d', 1), '5cdfd57d7d37796fc7f0a4fa810fbc8715b98360c0fe2ca9cdd17a6181fbc9ef',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/5782330242fdb8f9b6be8ac078470e041d15471a16c93cd2b692aaba482e485c.mp3', 1149, '2026-09-13 15:17:50.142685', 'f692e9a0b8ce5dcf70afe76db3d6c2dd653ef739ba7cebf6c99ffee5241587fb', 'validated', '{"audio_key":"5782330242fdb8f9b6be8ac078470e041d15471a16c93cd2b692aaba482e485c","entity_key":"u_polite_words_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f692e9a0b8ce5dcf70afe76db3d6c2dd653ef739ba7cebf6c99ffee5241587fb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/5782330242fdb8f9b6be8ac078470e041d15471a16c93cd2b692aaba482e485c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_tr_bridge_goz -> audio/generated/tr-TR/utterances/583060fc392c1717df3b405e1374a639878e7b92027b66938fa166f37eaf86d7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('930249d8-b22f-5961-a107-c1c08c9a29ba', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_tr_bridge_goz')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eec1600aefb9a3578c29c009f8e05c452ce9285d0b104b5e44fd11fd2cdde4b7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c22369ad-b6ce-514f-9d8e-8b6d6548f7d9', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('930249d8-b22f-5961-a107-c1c08c9a29ba', 1), 'eec1600aefb9a3578c29c009f8e05c452ce9285d0b104b5e44fd11fd2cdde4b7',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/583060fc392c1717df3b405e1374a639878e7b92027b66938fa166f37eaf86d7.mp3', 966, '2026-09-14 12:09:12.570146', '7dc562b96a7977228c53b7ec470e0351f57d142da269c44837e8dd45862540f2', 'validated', '{"audio_key":"583060fc392c1717df3b405e1374a639878e7b92027b66938fa166f37eaf86d7","entity_key":"u_tr_bridge_goz","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7dc562b96a7977228c53b7ec470e0351f57d142da269c44837e8dd45862540f2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/583060fc392c1717df3b405e1374a639878e7b92027b66938fa166f37eaf86d7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_tr_pre_special_names:example:1 -> audio/generated/tr-TR/utterances/58bc6b51352c566561951704a3eb6556f9daa7cac82317e2eebaf1f70f385d17.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('eb0613ed-0b45-5640-8193-6aa7f44ba85c', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_tr_pre_special_names:example:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e61f9ef57f9ba21220117ff75cec77ed3a3ced251f9fe336c26f7ed2e2b1adc5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eb1252fe-ad9f-5468-bbc0-85e31ec6a0a9', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('eb0613ed-0b45-5640-8193-6aa7f44ba85c', 1), 'e61f9ef57f9ba21220117ff75cec77ed3a3ced251f9fe336c26f7ed2e2b1adc5',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/58bc6b51352c566561951704a3eb6556f9daa7cac82317e2eebaf1f70f385d17.mp3', 1436, '2026-09-14 12:09:12.979974', '8d68c4e87548261c53da52822ca5cace55f1d7fc8771c5ec77711ed7d59039dc', 'validated', '{"audio_key":"58bc6b51352c566561951704a3eb6556f9daa7cac82317e2eebaf1f70f385d17","entity_key":"g_tr_pre_special_names:example:1","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8d68c4e87548261c53da52822ca5cace55f1d7fc8771c5ec77711ed7d59039dc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/58bc6b51352c566561951704a3eb6556f9daa7cac82317e2eebaf1f70f385d17.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_greetings_02 -> audio/generated/tr-TR/utterances/616b923c876bbb86c414b9de397677831ee474a4f6f497517195305e0e164f61.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d97e9067-4c7b-5844-8d7e-6bac3334fc93', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_greetings_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c189b308c306aa3e4455a4dac428f9d6ae48ff13fad2e7e571d4de69278b0619'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f5885d94-96f4-538c-9c2c-b95522a51202', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d97e9067-4c7b-5844-8d7e-6bac3334fc93', 1), 'c189b308c306aa3e4455a4dac428f9d6ae48ff13fad2e7e571d4de69278b0619',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/616b923c876bbb86c414b9de397677831ee474a4f6f497517195305e0e164f61.mp3', 1149, '2026-09-13 15:17:50.732158', '4816bdc2f94aaef591f742d7e160cdab9c947ccd501f16b5eedc0c2c90605b90', 'validated', '{"audio_key":"616b923c876bbb86c414b9de397677831ee474a4f6f497517195305e0e164f61","entity_key":"u_first_greetings_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4816bdc2f94aaef591f742d7e160cdab9c947ccd501f16b5eedc0c2c90605b90","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/616b923c876bbb86c414b9de397677831ee474a4f6f497517195305e0e164f61.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_first_greetings_01_listen -> audio/generated/tr-TR/utterances/616b923c876bbb86c414b9de397677831ee474a4f6f497517195305e0e164f61.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('c081a026-c406-524c-94bc-fb619eaa5ca0', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_first_greetings_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c189b308c306aa3e4455a4dac428f9d6ae48ff13fad2e7e571d4de69278b0619'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e1dfbeef-71b2-5eab-8593-d3fcc90c4125', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('c081a026-c406-524c-94bc-fb619eaa5ca0', 1), 'c189b308c306aa3e4455a4dac428f9d6ae48ff13fad2e7e571d4de69278b0619',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/616b923c876bbb86c414b9de397677831ee474a4f6f497517195305e0e164f61.mp3', 1149, '2026-09-13 15:17:50.732158', '4816bdc2f94aaef591f742d7e160cdab9c947ccd501f16b5eedc0c2c90605b90', 'validated', '{"audio_key":"616b923c876bbb86c414b9de397677831ee474a4f6f497517195305e0e164f61","entity_key":"e_first_greetings_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4816bdc2f94aaef591f742d7e160cdab9c947ccd501f16b5eedc0c2c90605b90","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/616b923c876bbb86c414b9de397677831ee474a4f6f497517195305e0e164f61.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_survival_words_04 -> audio/generated/tr-TR/utterances/648bb9f31ceca34e0873cab00afd144374ac51c5255f97e17934e63a659dcc59.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d74e76ae-c4fe-56e4-8f30-0fb314b3554e', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_survival_words_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c255fd1b9da0b69094b1f5cc05114edb22bddc770faaf104013e80d399cc89b9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8f68ee67-f8d4-588b-af50-5cfdebd30bf5', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d74e76ae-c4fe-56e4-8f30-0fb314b3554e', 1), 'c255fd1b9da0b69094b1f5cc05114edb22bddc770faaf104013e80d399cc89b9',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/648bb9f31ceca34e0873cab00afd144374ac51c5255f97e17934e63a659dcc59.mp3', 1488, '2026-09-13 15:17:51.180259', '2b3e0753c30f98da77d0a5db3be4e3b9ca52a860b2788da9a0fb2a3a28944d9d', 'validated', '{"audio_key":"648bb9f31ceca34e0873cab00afd144374ac51c5255f97e17934e63a659dcc59","entity_key":"u_survival_words_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2b3e0753c30f98da77d0a5db3be4e3b9ca52a860b2788da9a0fb2a3a28944d9d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/648bb9f31ceca34e0873cab00afd144374ac51c5255f97e17934e63a659dcc59.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_survival_words_02_listen -> audio/generated/tr-TR/utterances/648bb9f31ceca34e0873cab00afd144374ac51c5255f97e17934e63a659dcc59.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('17cf9afa-678b-54a6-8782-1dd30b357c86', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_survival_words_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c255fd1b9da0b69094b1f5cc05114edb22bddc770faaf104013e80d399cc89b9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2cf88988-23af-5b6c-960a-d3d597882662', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('17cf9afa-678b-54a6-8782-1dd30b357c86', 1), 'c255fd1b9da0b69094b1f5cc05114edb22bddc770faaf104013e80d399cc89b9',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/648bb9f31ceca34e0873cab00afd144374ac51c5255f97e17934e63a659dcc59.mp3', 1488, '2026-09-13 15:17:51.180259', '2b3e0753c30f98da77d0a5db3be4e3b9ca52a860b2788da9a0fb2a3a28944d9d', 'validated', '{"audio_key":"648bb9f31ceca34e0873cab00afd144374ac51c5255f97e17934e63a659dcc59","entity_key":"e_survival_words_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2b3e0753c30f98da77d0a5db3be4e3b9ca52a860b2788da9a0fb2a3a28944d9d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/648bb9f31ceca34e0873cab00afd144374ac51c5255f97e17934e63a659dcc59.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_greetings_01 -> audio/generated/tr-TR/utterances/64a5d1e7bc7a3ed4488da7851c07ec57a96b33a7cbe46c730526d813fc58ee9d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('76997e10-e1f6-5dfd-ba1f-5672f3a73ff2', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_greetings_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b1726b923349fd632fa7ce8b62a06c5a3f785be1db4f6a831eef58d70c7a45cc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('82f148f0-adbd-5a64-8175-ed49b4f68616', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('76997e10-e1f6-5dfd-ba1f-5672f3a73ff2', 1), 'b1726b923349fd632fa7ce8b62a06c5a3f785be1db4f6a831eef58d70c7a45cc',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/64a5d1e7bc7a3ed4488da7851c07ec57a96b33a7cbe46c730526d813fc58ee9d.mp3', 1071, '2026-09-13 15:17:51.763998', '3dcf43b1056ac06ed54c8903795cbfd2bcce6ac00397ba87be15189f3f961156', 'validated', '{"audio_key":"64a5d1e7bc7a3ed4488da7851c07ec57a96b33a7cbe46c730526d813fc58ee9d","entity_key":"u_first_greetings_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3dcf43b1056ac06ed54c8903795cbfd2bcce6ac00397ba87be15189f3f961156","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/64a5d1e7bc7a3ed4488da7851c07ec57a96b33a7cbe46c730526d813fc58ee9d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_survival_words_01 -> audio/generated/tr-TR/utterances/677696638e9aa650cebb865908311c144d34aca9148d308049139d0a54cef7af.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('197f1838-9849-550d-9a21-d4f622d0deea', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_survival_words_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a24baa5824e1e8cc7de5ef27d4586fefb61c5c4e7fd95f44cba42f5be20c78f9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dd4da4d1-39c6-5518-b93c-27224b4188d7', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('197f1838-9849-550d-9a21-d4f622d0deea', 1), 'a24baa5824e1e8cc7de5ef27d4586fefb61c5c4e7fd95f44cba42f5be20c78f9',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/677696638e9aa650cebb865908311c144d34aca9148d308049139d0a54cef7af.mp3', 1201, '2026-09-13 15:17:52.210132', '2d38f00b022154f6beef62b8046477e4839b84d6d9265f92ad9c10f3262e877e', 'validated', '{"audio_key":"677696638e9aa650cebb865908311c144d34aca9148d308049139d0a54cef7af","entity_key":"u_survival_words_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2d38f00b022154f6beef62b8046477e4839b84d6d9265f92ad9c10f3262e877e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/677696638e9aa650cebb865908311c144d34aca9148d308049139d0a54cef7af.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_greetings_04 -> audio/generated/tr-TR/utterances/67a307c28a1b69a9a52f3192295400f6d6e63100d3f3e72a547e5156bbef52bd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('4e528c3e-ec06-5a91-8249-487d3be726cc', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_greetings_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1767c418cc4fa7d47ecb8eeb4ac1bccfd26d3917ad1fbf12bc5e0e0c32a9e469'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2db5da51-ca2c-520c-831e-55f481646427', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('4e528c3e-ec06-5a91-8249-487d3be726cc', 1), '1767c418cc4fa7d47ecb8eeb4ac1bccfd26d3917ad1fbf12bc5e0e0c32a9e469',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/67a307c28a1b69a9a52f3192295400f6d6e63100d3f3e72a547e5156bbef52bd.mp3', 1201, '2026-09-13 15:17:52.763923', '8283a6435b3128b9f4ee05a415e8d6a93f0064520697930738a2a34214bf6472', 'validated', '{"audio_key":"67a307c28a1b69a9a52f3192295400f6d6e63100d3f3e72a547e5156bbef52bd","entity_key":"u_first_greetings_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8283a6435b3128b9f4ee05a415e8d6a93f0064520697930738a2a34214bf6472","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/67a307c28a1b69a9a52f3192295400f6d6e63100d3f3e72a547e5156bbef52bd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_first_greetings_02_listen -> audio/generated/tr-TR/utterances/67a307c28a1b69a9a52f3192295400f6d6e63100d3f3e72a547e5156bbef52bd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('2f12d999-8581-5730-8c52-2b69602f8fb8', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_first_greetings_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1767c418cc4fa7d47ecb8eeb4ac1bccfd26d3917ad1fbf12bc5e0e0c32a9e469'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d08dbc2b-fbf8-5fff-9e9c-3fd74fd21c82', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('2f12d999-8581-5730-8c52-2b69602f8fb8', 1), '1767c418cc4fa7d47ecb8eeb4ac1bccfd26d3917ad1fbf12bc5e0e0c32a9e469',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/67a307c28a1b69a9a52f3192295400f6d6e63100d3f3e72a547e5156bbef52bd.mp3', 1201, '2026-09-13 15:17:52.763923', '8283a6435b3128b9f4ee05a415e8d6a93f0064520697930738a2a34214bf6472', 'validated', '{"audio_key":"67a307c28a1b69a9a52f3192295400f6d6e63100d3f3e72a547e5156bbef52bd","entity_key":"e_first_greetings_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8283a6435b3128b9f4ee05a415e8d6a93f0064520697930738a2a34214bf6472","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/67a307c28a1b69a9a52f3192295400f6d6e63100d3f3e72a547e5156bbef52bd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_survival_words_03 -> audio/generated/tr-TR/utterances/686caf8530cd6bce1251382d8236da592ecd28ba0a2cd86f80d395a39ab9bfdb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('bd0e4ef4-5ea3-5ea9-87c5-d944c974f8cc', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_survival_words_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '04a450889e1933db81cb7b0e672b3e65bb5f48de1f4cdd26831669166b35d17a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('71600fe6-96df-5913-8a70-fe099ea36a64', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('bd0e4ef4-5ea3-5ea9-87c5-d944c974f8cc', 1), '04a450889e1933db81cb7b0e672b3e65bb5f48de1f4cdd26831669166b35d17a',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/686caf8530cd6bce1251382d8236da592ecd28ba0a2cd86f80d395a39ab9bfdb.mp3', 1097, '2026-09-13 15:17:53.230756', '6f48c4699f981425b37336303193670b627901f9b704bcfa368c18dc93628097', 'validated', '{"audio_key":"686caf8530cd6bce1251382d8236da592ecd28ba0a2cd86f80d395a39ab9bfdb","entity_key":"u_survival_words_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6f48c4699f981425b37336303193670b627901f9b704bcfa368c18dc93628097","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/686caf8530cd6bce1251382d8236da592ecd28ba0a2cd86f80d395a39ab9bfdb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_tr_bridge_cay -> audio/generated/tr-TR/utterances/6a0c72fa9a318a8ea7bd5c8bdd381460d3721a8ecb833ebca30a206085df807b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('981b5f32-f69e-582c-a4c3-b297f7e4a133', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_tr_bridge_cay')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '168b80f985a501c0438f1683c311865c67e69da0d2cd6c768d99b307e1f0c462'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d7cec74c-421f-5d7d-a3a9-3fafe36891ee', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('981b5f32-f69e-582c-a4c3-b297f7e4a133', 1), '168b80f985a501c0438f1683c311865c67e69da0d2cd6c768d99b307e1f0c462',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/6a0c72fa9a318a8ea7bd5c8bdd381460d3721a8ecb833ebca30a206085df807b.mp3', 914, '2026-09-14 12:09:13.536147', 'a1061f585044c1209e0c333b685d9e086822009be7f68b34ee173e04cfaa9ba7', 'validated', '{"audio_key":"6a0c72fa9a318a8ea7bd5c8bdd381460d3721a8ecb833ebca30a206085df807b","entity_key":"u_tr_bridge_cay","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a1061f585044c1209e0c333b685d9e086822009be7f68b34ee173e04cfaa9ba7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/6a0c72fa9a318a8ea7bd5c8bdd381460d3721a8ecb833ebca30a206085df807b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_tr_bridge_hear_cay -> audio/generated/tr-TR/utterances/6a0c72fa9a318a8ea7bd5c8bdd381460d3721a8ecb833ebca30a206085df807b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('c8161094-401a-500a-b0e8-02dc7000493c', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_tr_bridge_hear_cay')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '168b80f985a501c0438f1683c311865c67e69da0d2cd6c768d99b307e1f0c462'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('81a34c40-d891-51a0-a14a-f9e081e8cb34', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('c8161094-401a-500a-b0e8-02dc7000493c', 1), '168b80f985a501c0438f1683c311865c67e69da0d2cd6c768d99b307e1f0c462',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/6a0c72fa9a318a8ea7bd5c8bdd381460d3721a8ecb833ebca30a206085df807b.mp3', 914, '2026-09-14 12:09:13.536147', 'a1061f585044c1209e0c333b685d9e086822009be7f68b34ee173e04cfaa9ba7', 'validated', '{"audio_key":"6a0c72fa9a318a8ea7bd5c8bdd381460d3721a8ecb833ebca30a206085df807b","entity_key":"ex_tr_bridge_hear_cay","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a1061f585044c1209e0c333b685d9e086822009be7f68b34ee173e04cfaa9ba7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/6a0c72fa9a318a8ea7bd5c8bdd381460d3721a8ecb833ebca30a206085df807b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_how_are_you_02 -> audio/generated/tr-TR/utterances/6be990bf8e16e47dcf71aedfcc60d78ae11d596eadb115e4080d9422e5d62e38.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('fa48c331-9eab-5245-bdcf-3745a74e6a55', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_how_are_you_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3a59410baf74d9d777a5292e9cb38a277e51d256a5ae9caec774b4684ebc289e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bad59a18-71e9-5057-8ed2-97e0121f7854', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('fa48c331-9eab-5245-bdcf-3745a74e6a55', 1), '3a59410baf74d9d777a5292e9cb38a277e51d256a5ae9caec774b4684ebc289e',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/6be990bf8e16e47dcf71aedfcc60d78ae11d596eadb115e4080d9422e5d62e38.mp3', 1671, '2026-09-13 15:17:53.817331', '14bbdf5e476b630b99d61ee5a84a335b329e47931fa65f1470deddd89cbc101f', 'validated', '{"audio_key":"6be990bf8e16e47dcf71aedfcc60d78ae11d596eadb115e4080d9422e5d62e38","entity_key":"u_how_are_you_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"14bbdf5e476b630b99d61ee5a84a335b329e47931fa65f1470deddd89cbc101f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/6be990bf8e16e47dcf71aedfcc60d78ae11d596eadb115e4080d9422e5d62e38.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_how_are_you_01_listen -> audio/generated/tr-TR/utterances/6be990bf8e16e47dcf71aedfcc60d78ae11d596eadb115e4080d9422e5d62e38.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('2dcc655e-5d01-58d6-9b74-e81f80414671', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_how_are_you_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3a59410baf74d9d777a5292e9cb38a277e51d256a5ae9caec774b4684ebc289e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4641aef3-6e01-5086-a548-61efa1fda387', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('2dcc655e-5d01-58d6-9b74-e81f80414671', 1), '3a59410baf74d9d777a5292e9cb38a277e51d256a5ae9caec774b4684ebc289e',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/6be990bf8e16e47dcf71aedfcc60d78ae11d596eadb115e4080d9422e5d62e38.mp3', 1671, '2026-09-13 15:17:53.817331', '14bbdf5e476b630b99d61ee5a84a335b329e47931fa65f1470deddd89cbc101f', 'validated', '{"audio_key":"6be990bf8e16e47dcf71aedfcc60d78ae11d596eadb115e4080d9422e5d62e38","entity_key":"e_how_are_you_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"14bbdf5e476b630b99d61ee5a84a335b329e47931fa65f1470deddd89cbc101f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/6be990bf8e16e47dcf71aedfcc60d78ae11d596eadb115e4080d9422e5d62e38.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_tr_bridge_c_s:example:2 -> audio/generated/tr-TR/utterances/6d21c274074ad00559aca5f563e77cb174a9b35f25a48a57f5a37bc45b3a7e33.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('4f2da2da-5fbf-52db-b8dc-38911885468e', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_tr_bridge_c_s:example:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e9502837a8d912899eea7522ec0e441d1514fdf4e5dc8862c6799da65c691b53'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('50ea6385-99e1-587c-8bae-88ebd75ca712', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('4f2da2da-5fbf-52db-b8dc-38911885468e', 1), 'e9502837a8d912899eea7522ec0e441d1514fdf4e5dc8862c6799da65c691b53',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/6d21c274074ad00559aca5f563e77cb174a9b35f25a48a57f5a37bc45b3a7e33.mp3', 1436, '2026-09-14 12:09:14.058961', 'e33b8f9e49a62dd1b3a5d6f7195c55b666066ef7efefbd3a5577ea2efffd4cb1', 'validated', '{"audio_key":"6d21c274074ad00559aca5f563e77cb174a9b35f25a48a57f5a37bc45b3a7e33","entity_key":"g_tr_bridge_c_s:example:2","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e33b8f9e49a62dd1b3a5d6f7195c55b666066ef7efefbd3a5577ea2efffd4cb1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/6d21c274074ad00559aca5f563e77cb174a9b35f25a48a57f5a37bc45b3a7e33.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_polite_words_01 -> audio/generated/tr-TR/utterances/6db6a2a6465e55665cd541a2b857b4b3e1c7a3997aefb57843d046751b0abc8b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('49ea32ac-2b7e-5f26-83b4-722c088d1d7d', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_polite_words_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '72d00e5feeceaf3aa8b4aa81ec00619a15c4a4d331c6f1f7099c852383277c88'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bbeea0c0-c215-540c-83bc-0d719a9d1f90', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('49ea32ac-2b7e-5f26-83b4-722c088d1d7d', 1), '72d00e5feeceaf3aa8b4aa81ec00619a15c4a4d331c6f1f7099c852383277c88',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/6db6a2a6465e55665cd541a2b857b4b3e1c7a3997aefb57843d046751b0abc8b.mp3', 1697, '2026-09-13 15:17:54.281921', '407c0440c40859dd5968a95eaaeb2cefe648903f23fe07ec986e3c23257e4297', 'validated', '{"audio_key":"6db6a2a6465e55665cd541a2b857b4b3e1c7a3997aefb57843d046751b0abc8b","entity_key":"u_polite_words_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"407c0440c40859dd5968a95eaaeb2cefe648903f23fe07ec986e3c23257e4297","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/6db6a2a6465e55665cd541a2b857b4b3e1c7a3997aefb57843d046751b0abc8b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_my_name_01 -> audio/generated/tr-TR/utterances/7bacbd623a90152aa5e9f60c21ea5c9985369875e0e3db8552df0b93ae5de86e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('49a7ab78-a306-5e0b-b09b-ddac20ff1dd3', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_my_name_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dfc5d50aa4e4ab0c458d611978135b46374573059563cb3198ff36ebbfc93df3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8f15ed34-8e59-539c-a93f-319ddfba9481', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('49a7ab78-a306-5e0b-b09b-ddac20ff1dd3', 1), 'dfc5d50aa4e4ab0c458d611978135b46374573059563cb3198ff36ebbfc93df3',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/7bacbd623a90152aa5e9f60c21ea5c9985369875e0e3db8552df0b93ae5de86e.mp3', 1515, '2026-09-13 15:17:54.868644', '13635074d69a23540087f681d62af7022709aba8c79689a505b4dd3b9f2aca98', 'validated', '{"audio_key":"7bacbd623a90152aa5e9f60c21ea5c9985369875e0e3db8552df0b93ae5de86e","entity_key":"u_my_name_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"13635074d69a23540087f681d62af7022709aba8c79689a505b4dd3b9f2aca98","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/7bacbd623a90152aa5e9f60c21ea5c9985369875e0e3db8552df0b93ae5de86e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_tr_pre_special_names:example:2 -> audio/generated/tr-TR/utterances/81170c73fcb5269b9575fa1e13919b09bbd49fd54a3c6937c2f9f03917d6f242.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('eb0613ed-0b45-5640-8193-6aa7f44ba85c', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_tr_pre_special_names:example:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '444feb24a7612a234ffabb078dc82372924a7fc09479ce836f230343175d43e6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5dcdea96-dfbd-5010-94dd-ae932dc03ed7', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('eb0613ed-0b45-5640-8193-6aa7f44ba85c', 1), '444feb24a7612a234ffabb078dc82372924a7fc09479ce836f230343175d43e6',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/81170c73fcb5269b9575fa1e13919b09bbd49fd54a3c6937c2f9f03917d6f242.mp3', 1619, '2026-09-14 12:09:14.601377', '97350f1ea6ff0420755e32f0952b213a8d2532c98460d13298cd19d9361c8878', 'validated', '{"audio_key":"81170c73fcb5269b9575fa1e13919b09bbd49fd54a3c6937c2f9f03917d6f242","entity_key":"g_tr_pre_special_names:example:2","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"97350f1ea6ff0420755e32f0952b213a8d2532c98460d13298cd19d9361c8878","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/81170c73fcb5269b9575fa1e13919b09bbd49fd54a3c6937c2f9f03917d6f242.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_tr_pre_i_names -> audio/generated/tr-TR/utterances/8a203125a72a2d338414d37f1f98a8504738b7c3d8460f5440005e0699b4c754.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('28237705-119d-56ce-aec2-d54fe60350fd', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_tr_pre_i_names')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '707300fa12851216a692f5f69cfd1adb774daa214ed5a09f3c37e96c2608ae86'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d3192a60-6360-532b-b14a-2ddf845058f5', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('28237705-119d-56ce-aec2-d54fe60350fd', 1), '707300fa12851216a692f5f69cfd1adb774daa214ed5a09f3c37e96c2608ae86',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/8a203125a72a2d338414d37f1f98a8504738b7c3d8460f5440005e0699b4c754.mp3', 1149, '2026-09-14 12:09:15.117489', 'c8e79c751e3406d5fc5242727febf2353d8af5f3b2d8e813e80940e49e8bfbee', 'validated', '{"audio_key":"8a203125a72a2d338414d37f1f98a8504738b7c3d8460f5440005e0699b4c754","entity_key":"u_tr_pre_i_names","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c8e79c751e3406d5fc5242727febf2353d8af5f3b2d8e813e80940e49e8bfbee","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/8a203125a72a2d338414d37f1f98a8504738b7c3d8460f5440005e0699b4c754.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_tr_bridge_vowels_softg:example:2 -> audio/generated/tr-TR/utterances/8d417986ce7342462e3ada9829e65fe62eb44139815010609ac6d2c6b34a988a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('ba186591-acf1-5902-9e6f-795ce807201e', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_tr_bridge_vowels_softg:example:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5520cfba64675e9be7fd95bcfe1b252365c1b9f4f148213d435f0ce07789ee98'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a6768f9a-d15d-51b0-8157-a7771c249b55', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('ba186591-acf1-5902-9e6f-795ce807201e', 1), '5520cfba64675e9be7fd95bcfe1b252365c1b9f4f148213d435f0ce07789ee98',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/8d417986ce7342462e3ada9829e65fe62eb44139815010609ac6d2c6b34a988a.mp3', 1671, '2026-09-14 12:09:15.667293', 'bb81b7928b5b3f228308f77ea55ff6bf7ae754a31716409a380cb74dd4fc0d29', 'validated', '{"audio_key":"8d417986ce7342462e3ada9829e65fe62eb44139815010609ac6d2c6b34a988a","entity_key":"g_tr_bridge_vowels_softg:example:2","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bb81b7928b5b3f228308f77ea55ff6bf7ae754a31716409a380cb74dd4fc0d29","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/8d417986ce7342462e3ada9829e65fe62eb44139815010609ac6d2c6b34a988a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_sounds_02 -> audio/generated/tr-TR/utterances/8f19c7c4f545d8026f8ec3692c01ba42841c912d91fdfbab80393f6494950123.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('6d928a45-7bbd-55fc-8b89-e9d50f012590', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_sounds_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a94cdcf9d57e2cedfaad23895fd8083b41170856482717425424970346b7369c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ea681893-9b63-5ede-9b6c-625bcc2d4016', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('6d928a45-7bbd-55fc-8b89-e9d50f012590', 1), 'a94cdcf9d57e2cedfaad23895fd8083b41170856482717425424970346b7369c',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/8f19c7c4f545d8026f8ec3692c01ba42841c912d91fdfbab80393f6494950123.mp3', 1384, '2026-09-13 15:17:55.307223', '777b7f38db61031b192f47d108d5623c9c7602dc413991a1dd3d845d04b63ef0', 'validated', '{"audio_key":"8f19c7c4f545d8026f8ec3692c01ba42841c912d91fdfbab80393f6494950123","entity_key":"u_first_sounds_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"777b7f38db61031b192f47d108d5623c9c7602dc413991a1dd3d845d04b63ef0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/8f19c7c4f545d8026f8ec3692c01ba42841c912d91fdfbab80393f6494950123.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_first_sounds_01_listen -> audio/generated/tr-TR/utterances/8f19c7c4f545d8026f8ec3692c01ba42841c912d91fdfbab80393f6494950123.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('668421e1-3693-50ac-a35e-36415b7edf5d', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_first_sounds_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a94cdcf9d57e2cedfaad23895fd8083b41170856482717425424970346b7369c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a1c59576-d78d-59ea-b341-3075c8f5e41c', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('668421e1-3693-50ac-a35e-36415b7edf5d', 1), 'a94cdcf9d57e2cedfaad23895fd8083b41170856482717425424970346b7369c',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/8f19c7c4f545d8026f8ec3692c01ba42841c912d91fdfbab80393f6494950123.mp3', 1384, '2026-09-13 15:17:55.307223', '777b7f38db61031b192f47d108d5623c9c7602dc413991a1dd3d845d04b63ef0', 'validated', '{"audio_key":"8f19c7c4f545d8026f8ec3692c01ba42841c912d91fdfbab80393f6494950123","entity_key":"e_first_sounds_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"777b7f38db61031b192f47d108d5623c9c7602dc413991a1dd3d845d04b63ef0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/8f19c7c4f545d8026f8ec3692c01ba42841c912d91fdfbab80393f6494950123.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_objects_01 -> audio/generated/tr-TR/utterances/9059885980e0f357433d5be58049ce5e5130873372cccfa9c01ca567e8425ac1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('25a81a14-dbde-597d-9b7c-9dad35165863', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_objects_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '322c2cfd79253d10098cd5856c9259e5bc4276e8fd6c81e22746596e9bf9d599'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('108ff2f7-96f9-562d-9efd-0732d06ff75c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('25a81a14-dbde-597d-9b7c-9dad35165863', 1), '322c2cfd79253d10098cd5856c9259e5bc4276e8fd6c81e22746596e9bf9d599',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/9059885980e0f357433d5be58049ce5e5130873372cccfa9c01ca567e8425ac1.mp3', 966, '2026-09-13 15:17:55.838771', '2ced17ef36647f26f6f4487a1528a989ed38e3afba0a2d81e8333402dd50052b', 'validated', '{"audio_key":"9059885980e0f357433d5be58049ce5e5130873372cccfa9c01ca567e8425ac1","entity_key":"u_first_objects_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2ced17ef36647f26f6f4487a1528a989ed38e3afba0a2d81e8333402dd50052b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/9059885980e0f357433d5be58049ce5e5130873372cccfa9c01ca567e8425ac1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_my_name_04 -> audio/generated/tr-TR/utterances/91354ae5facd9f7d330b6cbb5aac0ebbe97bd3c62a4b8d5c2dc1505ae98ae45c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('148b4c42-9a4b-5033-b189-17a7fca85839', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_my_name_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '43f2a32c0204582b1eb88751f0d0cb1dac22b6171807d801d533eda556e3d935'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6da969ea-e1b7-5dbc-ab7c-a0992be386b8', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('148b4c42-9a4b-5033-b189-17a7fca85839', 1), '43f2a32c0204582b1eb88751f0d0cb1dac22b6171807d801d533eda556e3d935',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/91354ae5facd9f7d330b6cbb5aac0ebbe97bd3c62a4b8d5c2dc1505ae98ae45c.mp3', 1671, '2026-09-13 15:17:56.403450', '65b91257d654eac74bc203b38de3ead58489762eafbed92c73e221e81006948e', 'validated', '{"audio_key":"91354ae5facd9f7d330b6cbb5aac0ebbe97bd3c62a4b8d5c2dc1505ae98ae45c","entity_key":"u_my_name_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"65b91257d654eac74bc203b38de3ead58489762eafbed92c73e221e81006948e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/91354ae5facd9f7d330b6cbb5aac0ebbe97bd3c62a4b8d5c2dc1505ae98ae45c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_my_name_02_listen -> audio/generated/tr-TR/utterances/91354ae5facd9f7d330b6cbb5aac0ebbe97bd3c62a4b8d5c2dc1505ae98ae45c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('7a1dbbe9-2279-5793-98d3-a4d3bf0df499', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_my_name_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '43f2a32c0204582b1eb88751f0d0cb1dac22b6171807d801d533eda556e3d935'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0f371aaf-224f-51a0-8a69-e0d33a74dfbc', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('7a1dbbe9-2279-5793-98d3-a4d3bf0df499', 1), '43f2a32c0204582b1eb88751f0d0cb1dac22b6171807d801d533eda556e3d935',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/91354ae5facd9f7d330b6cbb5aac0ebbe97bd3c62a4b8d5c2dc1505ae98ae45c.mp3', 1671, '2026-09-13 15:17:56.403450', '65b91257d654eac74bc203b38de3ead58489762eafbed92c73e221e81006948e', 'validated', '{"audio_key":"91354ae5facd9f7d330b6cbb5aac0ebbe97bd3c62a4b8d5c2dc1505ae98ae45c","entity_key":"e_my_name_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"65b91257d654eac74bc203b38de3ead58489762eafbed92c73e221e81006948e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/91354ae5facd9f7d330b6cbb5aac0ebbe97bd3c62a4b8d5c2dc1505ae98ae45c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_tr_bridge_c_s:example:1 -> audio/generated/tr-TR/utterances/9139e0f93d05ecf4af57f628b10d7ad1b2357209c10cb1e02345526f04f45a9c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('4f2da2da-5fbf-52db-b8dc-38911885468e', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_tr_bridge_c_s:example:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ddf5c49a2274a8752986da1651fe0854764e7a309f7eabe884921ea95b9ef653'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('15f65c14-29fa-55af-9d1b-39902532a57f', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('4f2da2da-5fbf-52db-b8dc-38911885468e', 1), 'ddf5c49a2274a8752986da1651fe0854764e7a309f7eabe884921ea95b9ef653',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/9139e0f93d05ecf4af57f628b10d7ad1b2357209c10cb1e02345526f04f45a9c.mp3', 1488, '2026-09-14 12:09:16.166145', '8c511905b562f8c3f1881cd090c22863df04a90d39e6538fe77280320b6a61dc', 'validated', '{"audio_key":"9139e0f93d05ecf4af57f628b10d7ad1b2357209c10cb1e02345526f04f45a9c","entity_key":"g_tr_bridge_c_s:example:1","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8c511905b562f8c3f1881cd090c22863df04a90d39e6538fe77280320b6a61dc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/9139e0f93d05ecf4af57f628b10d7ad1b2357209c10cb1e02345526f04f45a9c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_how_are_you_04 -> audio/generated/tr-TR/utterances/9d1b2469e488e0113b41603c5581471ac775dd2f3e8dcbc42249d75c9338d054.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('6c01753a-f9db-572f-9728-0e998cf7b6de', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_how_are_you_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dcec3fd7e6265d300c696b32597403be955a3e5316eb68d9cd42983963b27779'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('04a91695-48a9-5100-a33c-d1c0478350a6', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('6c01753a-f9db-572f-9728-0e998cf7b6de', 1), 'dcec3fd7e6265d300c696b32597403be955a3e5316eb68d9cd42983963b27779',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/9d1b2469e488e0113b41603c5581471ac775dd2f3e8dcbc42249d75c9338d054.mp3', 1671, '2026-09-13 15:17:56.882725', 'f227aed9e263fb15cfaf1a56d2e4ff22ae071704e190746c7b670fbec7b01926', 'validated', '{"audio_key":"9d1b2469e488e0113b41603c5581471ac775dd2f3e8dcbc42249d75c9338d054","entity_key":"u_how_are_you_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f227aed9e263fb15cfaf1a56d2e4ff22ae071704e190746c7b670fbec7b01926","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/9d1b2469e488e0113b41603c5581471ac775dd2f3e8dcbc42249d75c9338d054.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_how_are_you_02_listen -> audio/generated/tr-TR/utterances/9d1b2469e488e0113b41603c5581471ac775dd2f3e8dcbc42249d75c9338d054.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('ee7826f0-e37f-5e36-bd78-32b9b0c6112d', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_how_are_you_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dcec3fd7e6265d300c696b32597403be955a3e5316eb68d9cd42983963b27779'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b2e90265-0fe9-5a19-98e6-d7e1a2d83982', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('ee7826f0-e37f-5e36-bd78-32b9b0c6112d', 1), 'dcec3fd7e6265d300c696b32597403be955a3e5316eb68d9cd42983963b27779',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/9d1b2469e488e0113b41603c5581471ac775dd2f3e8dcbc42249d75c9338d054.mp3', 1671, '2026-09-13 15:17:56.882725', 'f227aed9e263fb15cfaf1a56d2e4ff22ae071704e190746c7b670fbec7b01926', 'validated', '{"audio_key":"9d1b2469e488e0113b41603c5581471ac775dd2f3e8dcbc42249d75c9338d054","entity_key":"e_how_are_you_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f227aed9e263fb15cfaf1a56d2e4ff22ae071704e190746c7b670fbec7b01926","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/9d1b2469e488e0113b41603c5581471ac775dd2f3e8dcbc42249d75c9338d054.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_how_are_you_03 -> audio/generated/tr-TR/utterances/9f5615cb681ebbbede8ee6179d7ea64b4741660be94b42e99ed6541b76f6af17.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c18a346c-8d62-5413-8913-5b241ca08edc', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_how_are_you_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e99572ebadaa9cf6916ccb1ea8e10ebd6a9852cde809a581ad94fa45dbac9e3e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c936d54e-819e-5fb4-8995-568ea0755317', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c18a346c-8d62-5413-8913-5b241ca08edc', 1), 'e99572ebadaa9cf6916ccb1ea8e10ebd6a9852cde809a581ad94fa45dbac9e3e',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/9f5615cb681ebbbede8ee6179d7ea64b4741660be94b42e99ed6541b76f6af17.mp3', 1280, '2026-09-13 15:17:57.418456', 'e480a1dc303a17f9c11276291a5e279d12e1a2e9dfd3d8cea7b41cf7447ea600', 'validated', '{"audio_key":"9f5615cb681ebbbede8ee6179d7ea64b4741660be94b42e99ed6541b76f6af17","entity_key":"u_how_are_you_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e480a1dc303a17f9c11276291a5e279d12e1a2e9dfd3d8cea7b41cf7447ea600","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/9f5615cb681ebbbede8ee6179d7ea64b4741660be94b42e99ed6541b76f6af17.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_tr_bridge_cam -> audio/generated/tr-TR/utterances/a6c12866ba95f13ba420a16285a777d784abc2565837735e3392322dee017088.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('bd850a4c-b031-5531-b6f6-4b48f06d0d8b', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_tr_bridge_cam')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '707a3c64c7c00e52ae880442b769029d2d1328a29941df71c53332d153f87820'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a94e852e-44dc-54d2-88e5-fcf4afae3126', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('bd850a4c-b031-5531-b6f6-4b48f06d0d8b', 1), '707a3c64c7c00e52ae880442b769029d2d1328a29941df71c53332d153f87820',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/a6c12866ba95f13ba420a16285a777d784abc2565837735e3392322dee017088.mp3', 862, '2026-09-14 12:09:16.637664', '4ed947f7b772eb93e1ab0337bfca34dc551acaa1bc882d9de9ef2db59bfa5eef', 'validated', '{"audio_key":"a6c12866ba95f13ba420a16285a777d784abc2565837735e3392322dee017088","entity_key":"u_tr_bridge_cam","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4ed947f7b772eb93e1ab0337bfca34dc551acaa1bc882d9de9ef2db59bfa5eef","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/a6c12866ba95f13ba420a16285a777d784abc2565837735e3392322dee017088.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_tr_pre_i_pair:example:2 -> audio/generated/tr-TR/utterances/a99817180235e2633c65692f37588c059cf445e535cc22f73e691e2a6c69496f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('49b31965-15c6-5e14-906f-7373c00dd91e', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_tr_pre_i_pair:example:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7efa23acf4e6723291e17a5ba7b1f1890ade24dc1609a56f5db1f6dd5e027150'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9f111aec-5bc5-51ab-b485-8f24f8fe88d7', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('49b31965-15c6-5e14-906f-7373c00dd91e', 1), '7efa23acf4e6723291e17a5ba7b1f1890ade24dc1609a56f5db1f6dd5e027150',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/a99817180235e2633c65692f37588c059cf445e535cc22f73e691e2a6c69496f.mp3', 1201, '2026-09-14 12:09:17.183962', 'a8b6dc8b68160cac25a5271e363e514b1af67fc7b1044ef7c011cafa5ffe4043', 'validated', '{"audio_key":"a99817180235e2633c65692f37588c059cf445e535cc22f73e691e2a6c69496f","entity_key":"g_tr_pre_i_pair:example:2","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a8b6dc8b68160cac25a5271e363e514b1af67fc7b1044ef7c011cafa5ffe4043","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/a99817180235e2633c65692f37588c059cf445e535cc22f73e691e2a6c69496f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_objects_03 -> audio/generated/tr-TR/utterances/ab57bc57f49ebf0ad7e54aef490e8f173b97d1d56e38aa3d86d6c6ac1a274c3f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f5131e3b-c9cc-58ea-9e12-c20212e71e85', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_objects_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0dc0eb19a1ab41d85d3d2dd0b8c2ba1752227d1a6f589a7d3039f895414321f9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1cb2d41c-e480-5488-8b20-7df631208735', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f5131e3b-c9cc-58ea-9e12-c20212e71e85', 1), '0dc0eb19a1ab41d85d3d2dd0b8c2ba1752227d1a6f589a7d3039f895414321f9',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/ab57bc57f49ebf0ad7e54aef490e8f173b97d1d56e38aa3d86d6c6ac1a274c3f.mp3', 1436, '2026-09-13 15:17:58.087086', '095ffd87d83e9652030912d7abba810ed8f9faa05ce20bcc10b79c28577ce307', 'validated', '{"audio_key":"ab57bc57f49ebf0ad7e54aef490e8f173b97d1d56e38aa3d86d6c6ac1a274c3f","entity_key":"u_first_objects_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"095ffd87d83e9652030912d7abba810ed8f9faa05ce20bcc10b79c28577ce307","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/ab57bc57f49ebf0ad7e54aef490e8f173b97d1d56e38aa3d86d6c6ac1a274c3f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_tr_pre_special_names -> audio/generated/tr-TR/utterances/ae0b9bc7502729ef7402308524330149357a57bea47661a390e092c1ce880a01.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b866b518-4730-5cb9-a550-342636778bef', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_tr_pre_special_names')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1035cc5135539a083e301b658f73bb8f2aca4d938f3119f7b2dea00ae3775508'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('da7c36da-a113-5b64-9351-c81ca13326d2', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b866b518-4730-5cb9-a550-342636778bef', 1), '1035cc5135539a083e301b658f73bb8f2aca4d938f3119f7b2dea00ae3775508',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/ae0b9bc7502729ef7402308524330149357a57bea47661a390e092c1ce880a01.mp3', 1149, '2026-09-14 12:09:17.612400', 'ba472c07d86257232fcfecfb6aa9bc1cf37038a530d0377045955a7a39f98184', 'validated', '{"audio_key":"ae0b9bc7502729ef7402308524330149357a57bea47661a390e092c1ce880a01","entity_key":"u_tr_pre_special_names","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ba472c07d86257232fcfecfb6aa9bc1cf37038a530d0377045955a7a39f98184","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/ae0b9bc7502729ef7402308524330149357a57bea47661a390e092c1ce880a01.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_tr_pre_hear_dotless_i -> audio/generated/tr-TR/utterances/b080cdcc3ae0cc3efdd5feae4954d9c128dcdb45136fdc7590619dc39e231e5e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('638a9cc1-7902-588b-b98d-e450dba8e40c', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_tr_pre_hear_dotless_i')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2b0c459ac11a0fd649367e055de6c5958b5202dd9fec0a1dbff408b319caacfb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('722a8bcb-a564-50de-a6ed-ba8395a64cf3', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('638a9cc1-7902-588b-b98d-e450dba8e40c', 1), '2b0c459ac11a0fd649367e055de6c5958b5202dd9fec0a1dbff408b319caacfb',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/b080cdcc3ae0cc3efdd5feae4954d9c128dcdb45136fdc7590619dc39e231e5e.mp3', 1097, '2026-09-14 12:09:18.172532', '96bd6877a4120c823c8973a729047abab8be0a2b4f2c5f8779102fde3a01cc50', 'validated', '{"audio_key":"b080cdcc3ae0cc3efdd5feae4954d9c128dcdb45136fdc7590619dc39e231e5e","entity_key":"ex_tr_pre_hear_dotless_i","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"96bd6877a4120c823c8973a729047abab8be0a2b4f2c5f8779102fde3a01cc50","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/b080cdcc3ae0cc3efdd5feae4954d9c128dcdb45136fdc7590619dc39e231e5e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_numbers_0_10_01 -> audio/generated/tr-TR/utterances/b38ed65a6ee40809357b92e72171e022bf5857783589a5d52e2155b2a8710807.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b65391a8-d759-5874-adfe-378a2f4cb538', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_numbers_0_10_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0ee7e79cea62213aec555d4aba2d1b4d356dc4b6e0d38d81b68d68f0b8e93384'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('640648e5-5351-5b5f-8c9f-bbd7cc9ee14b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b65391a8-d759-5874-adfe-378a2f4cb538', 1), '0ee7e79cea62213aec555d4aba2d1b4d356dc4b6e0d38d81b68d68f0b8e93384',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/b38ed65a6ee40809357b92e72171e022bf5857783589a5d52e2155b2a8710807.mp3', 1619, '2026-09-13 15:17:58.679662', '6ffcdfbf0594b5526d8daf3fe9cdf88be07ad6234df8a2975181753363791a32', 'validated', '{"audio_key":"b38ed65a6ee40809357b92e72171e022bf5857783589a5d52e2155b2a8710807","entity_key":"u_numbers_0_10_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6ffcdfbf0594b5526d8daf3fe9cdf88be07ad6234df8a2975181753363791a32","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/b38ed65a6ee40809357b92e72171e022bf5857783589a5d52e2155b2a8710807.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_tr_pre_spell_mert -> audio/generated/tr-TR/utterances/b3a675c6d68d4834d9d60efb9c0a865ea332edf7bd9220c63d5ba26b0bab0884.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a887b5c5-7da3-54ac-81b1-f148a167e087', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_tr_pre_spell_mert')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '82ac0ece0cbeec9f4365af2d1817f20952de6e1c0a52f3c5f962d64912ee086c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fb0be270-b7d3-5515-8989-7284d9e484c3', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a887b5c5-7da3-54ac-81b1-f148a167e087', 1), '82ac0ece0cbeec9f4365af2d1817f20952de6e1c0a52f3c5f962d64912ee086c',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/b3a675c6d68d4834d9d60efb9c0a865ea332edf7bd9220c63d5ba26b0bab0884.mp3', 1515, '2026-09-14 12:09:18.676622', 'e1250af60e961f5e33d3a36005eae3bbff6e2e4c8c17261f9376c0b6392bcac6', 'validated', '{"audio_key":"b3a675c6d68d4834d9d60efb9c0a865ea332edf7bd9220c63d5ba26b0bab0884","entity_key":"u_tr_pre_spell_mert","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e1250af60e961f5e33d3a36005eae3bbff6e2e4c8c17261f9376c0b6392bcac6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/b3a675c6d68d4834d9d60efb9c0a865ea332edf7bd9220c63d5ba26b0bab0884.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_sounds_01 -> audio/generated/tr-TR/utterances/b43900ac7b54d2f1d7afe24fb7d98d296b49f2d90800c58a5b520823a25edcbd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2d48bba3-820f-5a1d-be4f-62e950c04420', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_sounds_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ef16319dceebc5e748c5b5e897caa649da5300b2ae9cf9cc7a05ca0b704a72f7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c1841120-bea1-5b6d-98f5-13b3ba8731ae', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2d48bba3-820f-5a1d-be4f-62e950c04420', 1), 'ef16319dceebc5e748c5b5e897caa649da5300b2ae9cf9cc7a05ca0b704a72f7',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/b43900ac7b54d2f1d7afe24fb7d98d296b49f2d90800c58a5b520823a25edcbd.mp3', 1619, '2026-09-13 15:17:59.154775', '548e88c04cdeef18a4c9b23695b46fae5e5c1bba6c9c24c2b2238b08290aac67', 'validated', '{"audio_key":"b43900ac7b54d2f1d7afe24fb7d98d296b49f2d90800c58a5b520823a25edcbd","entity_key":"u_first_sounds_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"548e88c04cdeef18a4c9b23695b46fae5e5c1bba6c9c24c2b2238b08290aac67","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/b43900ac7b54d2f1d7afe24fb7d98d296b49f2d90800c58a5b520823a25edcbd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_polite_words_02 -> audio/generated/tr-TR/utterances/b87597f088fd05a44b8a1b5d772d076c083dcc3d38f5d9ddf2a2a995d10e12e7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2bf0a6a7-5e4d-53f9-8002-87ae126910b0', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_polite_words_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4083df5f0438bbdf883f16676b7099cbbc90d6d3b71fe1e0edf432ad8046d63e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cd6af656-455d-5153-9c93-d7898458d5f4', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2bf0a6a7-5e4d-53f9-8002-87ae126910b0', 1), '4083df5f0438bbdf883f16676b7099cbbc90d6d3b71fe1e0edf432ad8046d63e',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/b87597f088fd05a44b8a1b5d772d076c083dcc3d38f5d9ddf2a2a995d10e12e7.mp3', 1515, '2026-09-13 15:17:59.801517', 'a9fdc2ca99e688053f58aec3f18b176ffa83a9861d73d5d74673e6fcc64c4be3', 'validated', '{"audio_key":"b87597f088fd05a44b8a1b5d772d076c083dcc3d38f5d9ddf2a2a995d10e12e7","entity_key":"u_polite_words_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a9fdc2ca99e688053f58aec3f18b176ffa83a9861d73d5d74673e6fcc64c4be3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/b87597f088fd05a44b8a1b5d772d076c083dcc3d38f5d9ddf2a2a995d10e12e7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_polite_words_01_listen -> audio/generated/tr-TR/utterances/b87597f088fd05a44b8a1b5d772d076c083dcc3d38f5d9ddf2a2a995d10e12e7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('3c0da046-7b46-50b4-8ca2-b80ab7d2c4c0', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_polite_words_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4083df5f0438bbdf883f16676b7099cbbc90d6d3b71fe1e0edf432ad8046d63e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1982893b-02ff-53f8-9ce6-3dcc7ddfde81', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('3c0da046-7b46-50b4-8ca2-b80ab7d2c4c0', 1), '4083df5f0438bbdf883f16676b7099cbbc90d6d3b71fe1e0edf432ad8046d63e',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/b87597f088fd05a44b8a1b5d772d076c083dcc3d38f5d9ddf2a2a995d10e12e7.mp3', 1515, '2026-09-13 15:17:59.801517', 'a9fdc2ca99e688053f58aec3f18b176ffa83a9861d73d5d74673e6fcc64c4be3', 'validated', '{"audio_key":"b87597f088fd05a44b8a1b5d772d076c083dcc3d38f5d9ddf2a2a995d10e12e7","entity_key":"e_polite_words_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a9fdc2ca99e688053f58aec3f18b176ffa83a9861d73d5d74673e6fcc64c4be3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/b87597f088fd05a44b8a1b5d772d076c083dcc3d38f5d9ddf2a2a995d10e12e7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_numbers_0_10_04 -> audio/generated/tr-TR/utterances/b9faecdab2c2d0a94f72fa341dce975bdc1bbce498b7bbc296ad0d68ee53ddcf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9bd955b7-ccd8-50e0-969f-3cab713c64cc', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_numbers_0_10_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '507cf44465f26342ca3e23034479b36d6b82d4a5bd26a98b9932fb6e4f8f21bb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('06ff21c6-a723-55be-9cb2-9392b4c030f5', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9bd955b7-ccd8-50e0-969f-3cab713c64cc', 1), '507cf44465f26342ca3e23034479b36d6b82d4a5bd26a98b9932fb6e4f8f21bb',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/b9faecdab2c2d0a94f72fa341dce975bdc1bbce498b7bbc296ad0d68ee53ddcf.mp3', 1201, '2026-09-13 15:18:00.158110', '1e0d450a27251943ae798b841aec88a4f7811f1a954de2c858342d488117b651', 'validated', '{"audio_key":"b9faecdab2c2d0a94f72fa341dce975bdc1bbce498b7bbc296ad0d68ee53ddcf","entity_key":"u_numbers_0_10_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1e0d450a27251943ae798b841aec88a4f7811f1a954de2c858342d488117b651","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/b9faecdab2c2d0a94f72fa341dce975bdc1bbce498b7bbc296ad0d68ee53ddcf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_numbers_0_10_02_listen -> audio/generated/tr-TR/utterances/b9faecdab2c2d0a94f72fa341dce975bdc1bbce498b7bbc296ad0d68ee53ddcf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('360e487a-9baa-52b3-8f51-2f39cbf19527', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_numbers_0_10_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '507cf44465f26342ca3e23034479b36d6b82d4a5bd26a98b9932fb6e4f8f21bb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a306bd3e-15d1-5f61-b75c-d2f1a1b73088', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('360e487a-9baa-52b3-8f51-2f39cbf19527', 1), '507cf44465f26342ca3e23034479b36d6b82d4a5bd26a98b9932fb6e4f8f21bb',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/b9faecdab2c2d0a94f72fa341dce975bdc1bbce498b7bbc296ad0d68ee53ddcf.mp3', 1201, '2026-09-13 15:18:00.158110', '1e0d450a27251943ae798b841aec88a4f7811f1a954de2c858342d488117b651', 'validated', '{"audio_key":"b9faecdab2c2d0a94f72fa341dce975bdc1bbce498b7bbc296ad0d68ee53ddcf","entity_key":"e_numbers_0_10_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1e0d450a27251943ae798b841aec88a4f7811f1a954de2c858342d488117b651","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/b9faecdab2c2d0a94f72fa341dce975bdc1bbce498b7bbc296ad0d68ee53ddcf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_sounds_03 -> audio/generated/tr-TR/utterances/bdd5ae3a5ea9a7789209492a03e3248bde1beb2793edf3567e894a9d5f786f37.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9449fe7d-3f69-56f4-b4f8-be9fc58b3db4', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_sounds_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b35fbc6c63274e2f8ad0ad10310d27a8d8679d08f36e260d8d3301231f00b57e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8d0d4eef-84e5-5a80-a055-5e85fc471138', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9449fe7d-3f69-56f4-b4f8-be9fc58b3db4', 1), 'b35fbc6c63274e2f8ad0ad10310d27a8d8679d08f36e260d8d3301231f00b57e',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/bdd5ae3a5ea9a7789209492a03e3248bde1beb2793edf3567e894a9d5f786f37.mp3', 1149, '2026-09-13 15:18:00.790675', '8dc9b9c9ad8b3f043f929e83fe35e70d4ea6e37710b9c2e9abbcd150b7c6c718', 'validated', '{"audio_key":"bdd5ae3a5ea9a7789209492a03e3248bde1beb2793edf3567e894a9d5f786f37","entity_key":"u_first_sounds_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8dc9b9c9ad8b3f043f929e83fe35e70d4ea6e37710b9c2e9abbcd150b7c6c718","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/bdd5ae3a5ea9a7789209492a03e3248bde1beb2793edf3567e894a9d5f786f37.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_objects_04 -> audio/generated/tr-TR/utterances/c30de8e72792ce0c156d526f2c7914b6e7e40c9cc549eeb2c05628965bed8782.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('11f29889-18c1-5360-8137-9ea494af0244', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_objects_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '43df377fc2e6071f9d19d31171925d9c54f36d3b870b258417eb658ac9ae14a9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0e7341a9-11e0-56d8-8160-92820d34f40f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('11f29889-18c1-5360-8137-9ea494af0244', 1), '43df377fc2e6071f9d19d31171925d9c54f36d3b870b258417eb658ac9ae14a9',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/c30de8e72792ce0c156d526f2c7914b6e7e40c9cc549eeb2c05628965bed8782.mp3', 1515, '2026-09-13 15:18:01.181764', '6b710081e703ae8642f06ade270d1f58e56c8e40ad7a5ad28511750c0b50f3c0', 'validated', '{"audio_key":"c30de8e72792ce0c156d526f2c7914b6e7e40c9cc549eeb2c05628965bed8782","entity_key":"u_first_objects_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6b710081e703ae8642f06ade270d1f58e56c8e40ad7a5ad28511750c0b50f3c0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/c30de8e72792ce0c156d526f2c7914b6e7e40c9cc549eeb2c05628965bed8782.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_first_objects_02_listen -> audio/generated/tr-TR/utterances/c30de8e72792ce0c156d526f2c7914b6e7e40c9cc549eeb2c05628965bed8782.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('3705b364-003d-5ab0-9c3a-e35a114c4ec8', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_first_objects_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '43df377fc2e6071f9d19d31171925d9c54f36d3b870b258417eb658ac9ae14a9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8aafcb31-4cc5-59ef-9f31-f3b183563fa1', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('3705b364-003d-5ab0-9c3a-e35a114c4ec8', 1), '43df377fc2e6071f9d19d31171925d9c54f36d3b870b258417eb658ac9ae14a9',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/c30de8e72792ce0c156d526f2c7914b6e7e40c9cc549eeb2c05628965bed8782.mp3', 1515, '2026-09-13 15:18:01.181764', '6b710081e703ae8642f06ade270d1f58e56c8e40ad7a5ad28511750c0b50f3c0', 'validated', '{"audio_key":"c30de8e72792ce0c156d526f2c7914b6e7e40c9cc549eeb2c05628965bed8782","entity_key":"e_first_objects_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6b710081e703ae8642f06ade270d1f58e56c8e40ad7a5ad28511750c0b50f3c0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/c30de8e72792ce0c156d526f2c7914b6e7e40c9cc549eeb2c05628965bed8782.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_tr_pre_alpha_ac -> audio/generated/tr-TR/utterances/cc6948417b51d6ee305166843f6c05294d2e1b1012ef5bf755f67d692cbc3a07.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9c8a4221-16a6-5219-9902-849aaecc48cb', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_tr_pre_alpha_ac')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ce0a6fd2ce9f87f079816d279b95296ba283619adc9cca489316030855f144ee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bb987247-ea1d-5b9a-977c-83c012633e90', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9c8a4221-16a6-5219-9902-849aaecc48cb', 1), 'ce0a6fd2ce9f87f079816d279b95296ba283619adc9cca489316030855f144ee',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/cc6948417b51d6ee305166843f6c05294d2e1b1012ef5bf755f67d692cbc3a07.mp3', 1280, '2026-09-14 12:09:19.231449', 'f89d73cba8cd60dfdbc87e23ac597f14fb4bd37337f674d8803e8fdf03e9327d', 'validated', '{"audio_key":"cc6948417b51d6ee305166843f6c05294d2e1b1012ef5bf755f67d692cbc3a07","entity_key":"u_tr_pre_alpha_ac","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f89d73cba8cd60dfdbc87e23ac597f14fb4bd37337f674d8803e8fdf03e9327d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/cc6948417b51d6ee305166843f6c05294d2e1b1012ef5bf755f67d692cbc3a07.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_tr_bridge_kir -> audio/generated/tr-TR/utterances/e3b7bb94deb7820ae0780a95a40d73da3abd035801dca037b32872d4459a0286.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('82378422-34bd-5dc4-a5e0-075705c54ac2', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_tr_bridge_kir')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5d51e086b4433d86b35dfe80b5fb6c636695d8a13880d10d1697c39b9438540c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8072df84-0c98-51cc-ab10-ec9a56a5cf25', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('82378422-34bd-5dc4-a5e0-075705c54ac2', 1), '5d51e086b4433d86b35dfe80b5fb6c636695d8a13880d10d1697c39b9438540c',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/e3b7bb94deb7820ae0780a95a40d73da3abd035801dca037b32872d4459a0286.mp3', 966, '2026-09-14 12:09:19.686633', 'd882edbd8430883370306e8381484fffa404ef1bff3ed1dee9c7d15cd1938596', 'validated', '{"audio_key":"e3b7bb94deb7820ae0780a95a40d73da3abd035801dca037b32872d4459a0286","entity_key":"u_tr_bridge_kir","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d882edbd8430883370306e8381484fffa404ef1bff3ed1dee9c7d15cd1938596","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/e3b7bb94deb7820ae0780a95a40d73da3abd035801dca037b32872d4459a0286.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_numbers_0_10_03 -> audio/generated/tr-TR/utterances/e454cced0e84aad41a3558f065a7132e88849e7b4d10bff94c3aff57bf12bb46.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f0c3461d-1570-5412-88ed-4dfe90e97ada', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_numbers_0_10_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ea807185845920b51a73a24548725fb1262597fc2bd426d02be27c2ced691aa6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e8357591-f8ac-5666-a9d8-c5ccb225f7d5', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f0c3461d-1570-5412-88ed-4dfe90e97ada', 1), 'ea807185845920b51a73a24548725fb1262597fc2bd426d02be27c2ced691aa6',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/e454cced0e84aad41a3558f065a7132e88849e7b4d10bff94c3aff57bf12bb46.mp3', 1097, '2026-09-13 15:18:01.814911', '789f7200cc95689336110087d9d1e8adf0005f53d55fa8ad04d596ed2fb2191e', 'validated', '{"audio_key":"e454cced0e84aad41a3558f065a7132e88849e7b4d10bff94c3aff57bf12bb46","entity_key":"u_numbers_0_10_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"789f7200cc95689336110087d9d1e8adf0005f53d55fa8ad04d596ed2fb2191e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/e454cced0e84aad41a3558f065a7132e88849e7b4d10bff94c3aff57bf12bb46.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_polite_words_04 -> audio/generated/tr-TR/utterances/ec87aba587449b297deea066e51c5b2eb0938468f134e9bbdae77ea9b40a17cc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('167e379f-adbe-5571-b13c-f854b56c89c2', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_polite_words_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '831932cd3056b33dd43757ab144ce166894197a3288eb2d13e71e37c96e850a3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4d939fc0-6ac1-5c07-88ca-7a626aaa9adb', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('167e379f-adbe-5571-b13c-f854b56c89c2', 1), '831932cd3056b33dd43757ab144ce166894197a3288eb2d13e71e37c96e850a3',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/ec87aba587449b297deea066e51c5b2eb0938468f134e9bbdae77ea9b40a17cc.mp3', 2586, '2026-09-13 15:18:02.363575', '3937ba119af7f18c649d619a31dc778c437de12a60a7c11b82b04335b44793a2', 'validated', '{"audio_key":"ec87aba587449b297deea066e51c5b2eb0938468f134e9bbdae77ea9b40a17cc","entity_key":"u_polite_words_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3937ba119af7f18c649d619a31dc778c437de12a60a7c11b82b04335b44793a2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/ec87aba587449b297deea066e51c5b2eb0938468f134e9bbdae77ea9b40a17cc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_polite_words_02_listen -> audio/generated/tr-TR/utterances/ec87aba587449b297deea066e51c5b2eb0938468f134e9bbdae77ea9b40a17cc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('95f82050-438b-51f4-95e9-4b570eb304a4', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_polite_words_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '831932cd3056b33dd43757ab144ce166894197a3288eb2d13e71e37c96e850a3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c096298b-e777-528a-818b-00dab76465a1', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('95f82050-438b-51f4-95e9-4b570eb304a4', 1), '831932cd3056b33dd43757ab144ce166894197a3288eb2d13e71e37c96e850a3',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/ec87aba587449b297deea066e51c5b2eb0938468f134e9bbdae77ea9b40a17cc.mp3', 2586, '2026-09-13 15:18:02.363575', '3937ba119af7f18c649d619a31dc778c437de12a60a7c11b82b04335b44793a2', 'validated', '{"audio_key":"ec87aba587449b297deea066e51c5b2eb0938468f134e9bbdae77ea9b40a17cc","entity_key":"e_polite_words_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3937ba119af7f18c649d619a31dc778c437de12a60a7c11b82b04335b44793a2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/ec87aba587449b297deea066e51c5b2eb0938468f134e9bbdae77ea9b40a17cc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_tr_pre_soft_g_name -> audio/generated/tr-TR/utterances/f27d8485c8bfc6d3280d3da49e028f09b626edfcf4248cf9befa1a9efd6c41ce.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('538c0f42-ae6b-52fe-8193-e8414aaa55a7', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_tr_pre_soft_g_name')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9bbe655621a585a3705760c15e5cf9bd8085fe748f08c42889682a7b7cf51b1f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2bf47314-dd37-5fc4-8599-87330c731dfd', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('538c0f42-ae6b-52fe-8193-e8414aaa55a7', 1), '9bbe655621a585a3705760c15e5cf9bd8085fe748f08c42889682a7b7cf51b1f',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/f27d8485c8bfc6d3280d3da49e028f09b626edfcf4248cf9befa1a9efd6c41ce.mp3', 1253, '2026-09-14 12:09:20.308890', '3ec0adc4f6eb7c69364f6184507590d6e077a7fb3e895254ba2058bd011add5d', 'validated', '{"audio_key":"f27d8485c8bfc6d3280d3da49e028f09b626edfcf4248cf9befa1a9efd6c41ce","entity_key":"u_tr_pre_soft_g_name","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3ec0adc4f6eb7c69364f6184507590d6e077a7fb3e895254ba2058bd011add5d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/f27d8485c8bfc6d3280d3da49e028f09b626edfcf4248cf9befa1a9efd6c41ce.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_tr_meaning_bu_ne_demek -> audio/generated/tr-TR/utterances/fd8a88c8c638863664c6c065a8281227924b4503f4b1a4f61771650905e1f483.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ab06c683-ada2-520e-8323-89768b833c73', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_tr_meaning_bu_ne_demek')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6edc9758d29a357989b3099346504c21277ed4b2668f2d470033bcc45e4f4de7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6f0eca42-a7bb-5d6c-af77-f9f8771ebc51', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ab06c683-ada2-520e-8323-89768b833c73', 1), '6edc9758d29a357989b3099346504c21277ed4b2668f2d470033bcc45e4f4de7',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/fd8a88c8c638863664c6c065a8281227924b4503f4b1a4f61771650905e1f483.mp3', 1201, '2026-09-14 12:09:20.696230', '142eef1d0da827a9a21d63eea7dd4d86e5986a30781ee9cc9c59e237788b310a', 'validated', '{"audio_key":"fd8a88c8c638863664c6c065a8281227924b4503f4b1a4f61771650905e1f483","entity_key":"u_tr_meaning_bu_ne_demek","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"142eef1d0da827a9a21d63eea7dd4d86e5986a30781ee9cc9c59e237788b310a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/fd8a88c8c638863664c6c065a8281227924b4503f4b1a4f61771650905e1f483.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_tr_meaning_repair:example:1 -> audio/generated/tr-TR/utterances/fd8a88c8c638863664c6c065a8281227924b4503f4b1a4f61771650905e1f483.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('6cb8aebb-7910-53a2-a8d4-44116276cd27', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_tr_meaning_repair:example:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6edc9758d29a357989b3099346504c21277ed4b2668f2d470033bcc45e4f4de7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c30ce318-7287-5689-8351-468eb09a78d2', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('6cb8aebb-7910-53a2-a8d4-44116276cd27', 1), '6edc9758d29a357989b3099346504c21277ed4b2668f2d470033bcc45e4f4de7',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/fd8a88c8c638863664c6c065a8281227924b4503f4b1a4f61771650905e1f483.mp3', 1201, '2026-09-14 12:09:20.696230', '142eef1d0da827a9a21d63eea7dd4d86e5986a30781ee9cc9c59e237788b310a', 'validated', '{"audio_key":"fd8a88c8c638863664c6c065a8281227924b4503f4b1a4f61771650905e1f483","entity_key":"g_tr_meaning_repair:example:1","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"142eef1d0da827a9a21d63eea7dd4d86e5986a30781ee9cc9c59e237788b310a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/fd8a88c8c638863664c6c065a8281227924b4503f4b1a4f61771650905e1f483.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_tr_ready_gate:example:2 -> audio/generated/tr-TR/utterances/fd8a88c8c638863664c6c065a8281227924b4503f4b1a4f61771650905e1f483.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('f693ae83-3681-5961-b630-7a096a87f206', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_tr_ready_gate:example:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6edc9758d29a357989b3099346504c21277ed4b2668f2d470033bcc45e4f4de7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('37c38d66-a729-53cb-a69b-e8eb61005113', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('f693ae83-3681-5961-b630-7a096a87f206', 1), '6edc9758d29a357989b3099346504c21277ed4b2668f2d470033bcc45e4f4de7',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/fd8a88c8c638863664c6c065a8281227924b4503f4b1a4f61771650905e1f483.mp3', 1201, '2026-09-14 12:09:20.696230', '142eef1d0da827a9a21d63eea7dd4d86e5986a30781ee9cc9c59e237788b310a', 'validated', '{"audio_key":"fd8a88c8c638863664c6c065a8281227924b4503f4b1a4f61771650905e1f483","entity_key":"g_tr_ready_gate:example:2","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"142eef1d0da827a9a21d63eea7dd4d86e5986a30781ee9cc9c59e237788b310a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/fd8a88c8c638863664c6c065a8281227924b4503f4b1a4f61771650905e1f483.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_tr_meaning_repeat -> audio/generated/tr-TR/utterances/ff9d9a12e043a2aefd2d29dd4a19f4e87402e90e69b01ab5d712f0b1ac1cf8b1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0a292854-a6ee-514f-89b1-5ac9f0199a50', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_tr_meaning_repeat')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'af6f1e50c1bc0bd272101e51e2dc710f9e42ff2cf1f26ace0e7083709a38e73c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7f3b87e2-7e3c-53c5-8213-49f650e67011', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0a292854-a6ee-514f-89b1-5ac9f0199a50', 1), 'af6f1e50c1bc0bd272101e51e2dc710f9e42ff2cf1f26ace0e7083709a38e73c',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/ff9d9a12e043a2aefd2d29dd4a19f4e87402e90e69b01ab5d712f0b1ac1cf8b1.mp3', 1697, '2026-09-14 12:09:21.346516', 'f656ff123d8dbe6dd7ef74e29550bb0ee1d4a31ecd6b590d82516bc5a98dee72', 'validated', '{"audio_key":"ff9d9a12e043a2aefd2d29dd4a19f4e87402e90e69b01ab5d712f0b1ac1cf8b1","entity_key":"u_tr_meaning_repeat","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f656ff123d8dbe6dd7ef74e29550bb0ee1d4a31ecd6b590d82516bc5a98dee72","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/ff9d9a12e043a2aefd2d29dd4a19f4e87402e90e69b01ab5d712f0b1ac1cf8b1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_tr_meaning_listen_repeat -> audio/generated/tr-TR/utterances/ff9d9a12e043a2aefd2d29dd4a19f4e87402e90e69b01ab5d712f0b1ac1cf8b1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('626addae-29bc-5c4f-b109-ebc52c20f828', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_tr_meaning_listen_repeat')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'af6f1e50c1bc0bd272101e51e2dc710f9e42ff2cf1f26ace0e7083709a38e73c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c2ffc918-5723-585d-ab7a-84ce3c82ceb4', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('626addae-29bc-5c4f-b109-ebc52c20f828', 1), 'af6f1e50c1bc0bd272101e51e2dc710f9e42ff2cf1f26ace0e7083709a38e73c',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/ff9d9a12e043a2aefd2d29dd4a19f4e87402e90e69b01ab5d712f0b1ac1cf8b1.mp3', 1697, '2026-09-14 12:09:21.346516', 'f656ff123d8dbe6dd7ef74e29550bb0ee1d4a31ecd6b590d82516bc5a98dee72', 'validated', '{"audio_key":"ff9d9a12e043a2aefd2d29dd4a19f4e87402e90e69b01ab5d712f0b1ac1cf8b1","entity_key":"ex_tr_meaning_listen_repeat","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f656ff123d8dbe6dd7ef74e29550bb0ee1d4a31ecd6b590d82516bc5a98dee72","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/ff9d9a12e043a2aefd2d29dd4a19f4e87402e90e69b01ab5d712f0b1ac1cf8b1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_tr_meaning_repair:example:2 -> audio/generated/tr-TR/utterances/ff9d9a12e043a2aefd2d29dd4a19f4e87402e90e69b01ab5d712f0b1ac1cf8b1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('6cb8aebb-7910-53a2-a8d4-44116276cd27', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_tr_meaning_repair:example:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'af6f1e50c1bc0bd272101e51e2dc710f9e42ff2cf1f26ace0e7083709a38e73c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('db016093-a745-5560-b993-1007b2cac8d8', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('6cb8aebb-7910-53a2-a8d4-44116276cd27', 1), 'af6f1e50c1bc0bd272101e51e2dc710f9e42ff2cf1f26ace0e7083709a38e73c',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/ff9d9a12e043a2aefd2d29dd4a19f4e87402e90e69b01ab5d712f0b1ac1cf8b1.mp3', 1697, '2026-09-14 12:09:21.346516', 'f656ff123d8dbe6dd7ef74e29550bb0ee1d4a31ecd6b590d82516bc5a98dee72', 'validated', '{"audio_key":"ff9d9a12e043a2aefd2d29dd4a19f4e87402e90e69b01ab5d712f0b1ac1cf8b1","entity_key":"g_tr_meaning_repair:example:2","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f656ff123d8dbe6dd7ef74e29550bb0ee1d4a31ecd6b590d82516bc5a98dee72","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/ff9d9a12e043a2aefd2d29dd4a19f4e87402e90e69b01ab5d712f0b1ac1cf8b1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_tr_ready_gate:example:1 -> audio/generated/tr-TR/utterances/ff9d9a12e043a2aefd2d29dd4a19f4e87402e90e69b01ab5d712f0b1ac1cf8b1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('f693ae83-3681-5961-b630-7a096a87f206', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_tr_ready_gate:example:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'af6f1e50c1bc0bd272101e51e2dc710f9e42ff2cf1f26ace0e7083709a38e73c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3f027207-fe0e-5363-b08e-067d7f51f1c0', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('f693ae83-3681-5961-b630-7a096a87f206', 1), 'af6f1e50c1bc0bd272101e51e2dc710f9e42ff2cf1f26ace0e7083709a38e73c',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/ff9d9a12e043a2aefd2d29dd4a19f4e87402e90e69b01ab5d712f0b1ac1cf8b1.mp3', 1697, '2026-09-14 12:09:21.346516', 'f656ff123d8dbe6dd7ef74e29550bb0ee1d4a31ecd6b590d82516bc5a98dee72', 'validated', '{"audio_key":"ff9d9a12e043a2aefd2d29dd4a19f4e87402e90e69b01ab5d712f0b1ac1cf8b1","entity_key":"g_tr_ready_gate:example:1","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f656ff123d8dbe6dd7ef74e29550bb0ee1d4a31ecd6b590d82516bc5a98dee72","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/ff9d9a12e043a2aefd2d29dd4a19f4e87402e90e69b01ab5d712f0b1ac1cf8b1.mp3"}'
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
